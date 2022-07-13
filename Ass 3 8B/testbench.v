`timescale 1 ns / 1ns
`include "R11617302.v"

module testbench;

reg [31:0] I;
reg [4:0] S;

wire Y;

top uut(S,I,Y);

initial begin
    $dumpfile("mux32to1.vcd");
    $dumpvars(0, testbench);


    I =  32'b01010101010101010101010101010101; #20;

    S = 5'd0;#20;
    S = 5'd1;#20;
    S = 5'd2;#20;
    S = 5'd3;#20;
    S = 5'd4;#20;
    S = 5'd5;#20;
    S = 5'd6;#20;
    S = 5'd7;#20;
    S = 5'd8;#20;
    S = 5'd9;#20;
    S = 5'd10;#20;
    S = 5'd11;#20;
    S = 5'd12;#20;
    S = 5'd13;#20;
    S = 5'd14;#20;
    S = 5'd15;#20;
    S = 5'd16;#20;
    S = 5'd17;#20;
    S = 5'd18;#20;
    S = 5'd19;#20;
    S = 5'd20;#20;
    S = 5'd21;#20;
    S = 5'd22;#20;
    S = 5'd23;#20;
    S = 5'd24;#20;
    S = 5'd25;#20;
    S = 5'd26;#20;
    S = 5'd27;#20;
    S = 5'd28;#20;
    S = 5'd29;#20;
    S = 5'd30;#20;
    S = 5'd31;#20;
    



    //the important thing is that we cycle through S
    //ie, load a value into I and exhaust S


end
endmodule