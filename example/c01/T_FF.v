`include "D_FF.v"
module T_FF(q, clk, reset);

output q;
input clk, reset;

wire d;

// D_FF 모델 파생하여 인스턴스 생성
D_FF dff0(q, d, clk, reset); 

// D_FF의 출력 q을 inverse 하여 d에 다시 입력하여 T_FF 으로 작동하도록 함
not n1(d, q); // not은 Verilog에서 제공

endmodule