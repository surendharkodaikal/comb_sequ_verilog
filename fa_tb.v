`include "fa.v"
module tb;
reg a,b,c;
wire s,c0;
integer i;
fa dut(s,c0,a,b,c);
initial begin
for(i=1;i<8;i=i+1)
begin
	{a,b,c}=i;
	#5
	$display("t=%2d,a=%b,b=%b,c=%b,s=%b,c0=%b",$time,a,b,c,s,c0);
end
#5 $finish;
end
endmodule
