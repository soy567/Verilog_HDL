// 동기 리셋 가지는 module D_FF
module D_FF(q, d, clk, reset);

output q;
input d, clk, reset;
reg q;

// 새로운 구조 많이 나오지만 무시하고, top_down 형태에서 설계블록
// 어떻게 연결되는지만 이해
always @(posedge reset or negedge clk)
if (reset)
    q <= 1'b0;
else
    q <= d;

endmodule