`timescale 1 ns / 1ns
`include "R11617302.v"

module adderSub_tb;

reg [7:0] A = 0, B = 0;
reg Cin = 0;

wire [7:0] S;
wire Cout;

top uut(Cin,A,B,Cout,S);

initial begin
    A = 8'd10; #20;
    B = 8'd7; #20;
    Cin = 0; #20;
    $display("%d + %d = %d", A, B, S); #20;
    //$display("%d + %d + %d = %d", A, B, Cin, {Cout, S});

    A = 8'd10; #20;
    B = 8'd7; #20;
    Cin = 1; #20;
    $display("%d - %d = %d", A, B, S);
    //$display("%d + %d + %d = %d", A, B, Cin, {Cout, S});
end

endmodule

//in powershell type    iverilog -o adder.vvp adder_tb.v
//  then                vvp adder.vvp