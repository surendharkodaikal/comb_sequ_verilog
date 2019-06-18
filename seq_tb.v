`include "seq.v"
module tb;
reg x,clk,reset;
wire z;
seq dut(x,clk,reset,z);

initial begin 
	clk=1'b0;
	reset=1'b1;
	#15 reset=1'b0;
	$monitor($time,"clk=%b,x=%b,reset=%b,z=%b",clk,x,reset,z);
	
end

always  #5 clk=~clk;

initial begin
	#12 x=0; #10 x=0 ; #10 x=1; #10 x=1;
	#10 x=0; #10 x=1; #10 x=1; #10 x=0;
	#10 x=0;
#10 $finish;
end
endmodule

