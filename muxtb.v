`include "mux.v"
module tb;
reg [15:0]in;
reg [3:0] sel;
wire out;
mux dut(in,sel,out);

initial 
begin
$monitor($time," in=%h, sel=%h, out=%b",in,sel,out);
#5 in=16'h78fe; sel=4'h9;
#5 sel=4'h2;
#5 sel=4'hf;
#5 $finish;
end
endmodule
