`include "xor.v"
module tb;
parameter N=16;
reg [N-1:0] a,b;
wire [N-1:0] out;
xor_bitwise A(out,a,b);
initial begin
	$monitor($time,"a=%b,b=%b,out=%b",a,b,out);
	a=16'haaaa; b=16'h00ff;
	#10 a=16'h0f0f; b=16'h333;
	#20 $finish;
end
endmodule
