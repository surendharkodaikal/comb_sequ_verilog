`include "mux4.v"
module mux16to1(in,sel,out);
input [15:0]in;
input [3:0]sel;
wire [3:0] t;
output out;
mux4 M0(.in(in[3:0]),.out(t[0]),.sel(sel[1:0]));
mux4 M1(.in(in[7:4]),.out(t[1]),.sel(sel[1:0]));
mux4 M2(.in(in[11:8]),.out(t[2]),.sel(sel[1:0]));
mux4 M3(.in(in[15:12]),.out(t[3]),.sel(sel[1:0]));
mux4 M4(.in(t),.out(out),.sel(sel[3:2]));

endmodule


