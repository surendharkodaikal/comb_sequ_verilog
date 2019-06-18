`include "mux2to1.v"
module mux4(in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;
wire[1:0]t;
mux2to1 M0(.in(in[1:0]),.out(t[0]),.sel(sel[0]));
mux2to1 M1(.in(in[3:2]),.out(t[1]),.sel(sel[0]));
mux2to1 M2(.in(t),.out(out),.sel(sel[1]));

endmodule
