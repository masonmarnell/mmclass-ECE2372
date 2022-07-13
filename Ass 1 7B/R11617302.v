module top(A, B, C, D, F);

input A, B, C, D;
output F;

// YOUR VERILOG CODE BELOW
assign F = B&D | A&B&~C | ~A&B&C | A&C&D | ~A&~B&~C&~D;

//juju on that beat ayy

endmodule