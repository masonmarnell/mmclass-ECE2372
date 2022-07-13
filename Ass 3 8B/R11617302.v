
// Mason Marnell
// 32to1 Mux

/*
The videos are really helping me understand
(unless i did this wrong). Keep up the good work!
*/

module top(S,I,Y);

input [4:0] S;
input [31:0] I;
output Y;

mux32to1 U0(S,I,Y);


// Its good practice to only link
// other modules to "top" module.

endmodule

module mux32to1(S,I,Y);

input [31:0] I;
input [4:0] S;
output Y;

wire [31:0] W;

d5to32 u0(.A(S), .D(W));


//you could just do assign Y = W[31] & I[31] | W[30] & I[30] .....

assign Y = | (W & I); //more concise

endmodule


module d5to32(A, D);

input [4:0] A;
output [31:0] D;

wire [11:0] W;

//Module instantiations
d3to8 u0(.A(A[4:2]), .D(W[11:4]));
d2to4 u1(.A(A[1:0]), .D(W[3:0]));

//AND gates
assign D[31] = W[11] & W[3];
assign D[30] = W[11] & W[2];
assign D[29] = W[11] & W[1];
assign D[28] = W[11] & W[0];

assign D[27] = W[10] & W[3];
assign D[26] = W[10] & W[2];
assign D[25] = W[10] & W[1];
assign D[24] = W[10] & W[0];

assign D[23] = W[9] & W[3];
assign D[22] = W[9] & W[2];
assign D[21] = W[9] & W[1];
assign D[20] = W[9] & W[0];

assign D[19] = W[8] & W[3];
assign D[18] = W[8] & W[2];
assign D[17] = W[8] & W[1];
assign D[16] = W[8] & W[0];

assign D[15] = W[7] & W[3];
assign D[14] = W[7] & W[2];
assign D[13] = W[7] & W[1];
assign D[12] = W[7] & W[0];

assign D[11] = W[6] & W[3];
assign D[10] = W[6] & W[2];
assign D[9] = W[6] & W[1];
assign D[8] = W[6] & W[0];

assign D[7] = W[5] & W[3];
assign D[6] = W[5] & W[2];
assign D[5] = W[5] & W[1];
assign D[4] = W[5] & W[0];

assign D[3] = W[4] & W[3];
assign D[2] = W[4] & W[2];
assign D[1] = W[4] & W[1];
assign D[0] = W[4] & W[0];

endmodule


module d3to8(A, D);

input [2:0] A;
output [7:0] D;

wire [5:0] W;

//Module Instantiations
d2to4 u0(.A(A[2:1]),    .D(W[5:2]));
d1to2 u1(.A(A[0]),      .D(W[1:0]));

//AND gates
assign D[7] = W[5] & W[1];
assign D[6] = W[5] & W[0];
assign D[5] = W[4] & W[1];
assign D[4] = W[4] & W[0];
assign D[3] = W[3] & W[1];
assign D[2] = W[3] & W[0];
assign D[1] = W[2] & W[1];
assign D[0] = W[2] & W[0];

endmodule

module d2to4(A, D);

input [1:0] A;
output [3:0] D;

wire [3:0] W;

//Module Instantiations
d1to2 u0(.A(A[1]), .D(W[3:2]));
d1to2 u1(.A(A[0]), .D(W[1:0]));

//.__ is the lower level decoder
//...( is being assigned to different
//                  higher end indexes(?)


//AND gates
assign D[3] = W[3] & W[1];
assign D[2] = W[3] & W[0];
assign D[1] = W[2] & W[1];
assign D[0] = W[2] & W[0];

endmodule

module d1to2(A,D);

input A;
output [1:0] D;

assign D[1] = ~A;
assign D[0] = A;

endmodule