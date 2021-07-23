`include "ripple_carry_counter_top.v"
module stimulus;

reg clk, reset;
wire [3:0] q;

// 설계 블록의 파생
ripple_carry_counter r1(q, clk, reset);

// 설계 블록에서 나오는 clk 신호를 조절. 주기=10
initial
    clk = 1'b0; // clk를 0으로 설정

always
    #5 clk = ~clk; // 매 5 단위 시간마다 clk 값 바꿈

// 설계 블록에서 나오는 reset 신호를 조절
// reset 설계 신호는 0에서 20 그리고 200에서 220까지 참이다.
initial begin
    reset = 1'b1;
    #15 reset = 1'b0;
    #180 reset = 1'b1;
    #10 reset = 1'b0;
    #20 $finish; // 시뮬레이션 종료
end

// 결과를 출력
initial
    $monitor($time, " Output q = %d", q);

endmodule