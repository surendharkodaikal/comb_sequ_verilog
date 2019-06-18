`include "add_fsm.v"
module tb;
reg a,b,clk;
wire reg z;
add dut(a,b,clk,z)
initial begin 
	clk=1'b0;
	forever #5 clk=~clk;
end
initial begin
	#2 a=0; b=0;
	#10 a=1; b=1;
	#10 a=0; b=0;
	#10 a=1: b=0;
	#10 $finish;
end
endmodule
