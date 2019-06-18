`include "demux.v"
module tb;
reg in;
reg [0:1] sel;
wire [0:3] out;
demux dut(in,sel,out);

initial 
begin
$monitor($time," in=%b, sel=%b, out=%h",in,sel,out);
#5 in=1'b0; sel=2'b10;
#5 sel=2'b11; in=1'b1;
#5 $finish;
end
endmodule

