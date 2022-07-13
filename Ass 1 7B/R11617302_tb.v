`timescale 1ns / 1ns
`include "R11617302.v"

module R11617302_tb;

reg A, B, C, D;
wire F;

top uut(A, B, C, D, F);

initial begin

    $dumpfile("R11617302_tb.vcd");
    $dumpvars(0, R11617302_tb);

   // {A,B} = 4'b0000 for binary
   {A,B,C,D} = 4'd0; #20;
   {A,B,C,D} = 4'd1; #20;
   {A,B,C,D} = 4'd2; #20;
   {A,B,C,D} = 4'd3; #20;
   {A,B,C,D} = 4'd4; #20;
   {A,B,C,D} = 4'd5; #20;
   {A,B,C,D} = 4'd6; #20;
   {A,B,C,D} = 4'd7; #20;
   {A,B,C,D} = 4'd8; #20;
   {A,B,C,D} = 4'd9; #20;
   {A,B,C,D} = 4'd10; #20;
   {A,B,C,D} = 4'd11; #20;
   {A,B,C,D} = 4'd12; #20;
   {A,B,C,D} = 4'd13; #20;
   {A,B,C,D} = 4'd14; #20;
   {A,B,C,D} = 4'd15; #20;
   $display("Test is complete.");
end

endmodule
//iverilog -o greater_than_tb.vvp greater_than_tb.v
//vvp greater_than_tb.vvp
//gtkwave
//new tab, then open the .vcd file

//iverilog -o R11617302_tb.vvp R11617302_tb.v
//