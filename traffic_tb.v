`include "traffic1.v"
module tb;
reg clk;
reg x;
wire [3:0] light;
traffic dut(clk,x,light);
always 	#5 clk=~clk;

initial
begin
	clk=0;
	x=1;
	#100 $finish;
end
initial begin
       	
	$monitor($time,"BRGY=%b",light);
end
endmodule

