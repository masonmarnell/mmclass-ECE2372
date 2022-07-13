`timescale 1 ns / 1 ns
`include "R11617302.v"

module testbench;

reg [4:0] A;
wire [31:0] D;

top UUT(A,D);

integer i = 0;

initial begin
    $dumpfile("testbench.vcd");
    $dumpvars(0, testbench);

   // A = 5'd; #20;

    for(i = 0;i<32; i=i+1) begin
        A = i; #20;
    
    end
    
end

endmodule