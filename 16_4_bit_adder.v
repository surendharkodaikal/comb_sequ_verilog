//`include "4_bit_ripple_adder.v"
`include "stru_4_bit_adder.v"
module alu(x,y,z,sign,zero,carry,parity,overflow);
input [15:0]x,y;
output [15:0]z;
output sign,zero,carry,parity,overflow;
wire [2:0] c;
assign sign=z[15];
assign zero=~|z;
assign parity=~^z;
assign overflow=(x[15]&y[15]&~z[15])|(~x[15]&~y[15]&z[15]);

adder4 q0(z[3:0],c[0],x[3:0],y[3:0],1'b0);
adder4 q1(z[7:4],c[1],x[7:4],y[7:4],c[0]);
adder4 q2(z[11:8],c[2],x[11:8],y[11:8],c[1]);
adder4 q3(z[15:12],carry,x[15:12],y[15:12],c[2]);

endmodule

