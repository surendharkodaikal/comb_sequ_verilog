module demux(in,sel,out);
input in;
input [0:1] sel;
output [0:3]out;

assign out[sel]=in;

endmodule

