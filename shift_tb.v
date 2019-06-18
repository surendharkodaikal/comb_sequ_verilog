`include "shift.v"
module tb;
reg clock,clear,a;
wire e;
shift dut(clock,clear,a,e);
initial begin
clock=1'b0;
#2 clear=0; #5 clear=1;
end

always #5 clock=~clock;

initial begin #2;
repeat(2)
begin
#10 a=0;
#10 a=0;
#10 a=1;
#10 a=1;
end
#200 $finish;
end

endmodule
