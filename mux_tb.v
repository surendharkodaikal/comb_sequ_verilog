`include "mux16.v"
module muxtest;
reg [15:0]A;
reg [3:0]S;
wire out;
mux16to1 DUT(.sel(S),.in(A),.out(out));
initial 
begin
       $monitor($time,"A=%h,S=%h,out=%b",A,S,out);
#5 A=16'h3f0a; S=4'h0;
#5 S=4'h1;
#5 S=4'h6;
#5 S=4'he;
#5 $finish;
end
endmodule

