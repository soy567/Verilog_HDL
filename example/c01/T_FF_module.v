`include "D_FF_module.v"
module T_FF(q, clk, reset);

output q;
input clk, reset;

wire d;

D_FF dff0(q, d, clk, reset);
not n1(d, q); // not은 Verilog에서 제공
endmodule