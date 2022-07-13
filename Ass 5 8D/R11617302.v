//Adder Subtractor
//Mason Marnell

module top(Cin, A, B, Cout, S);

input Cin;
input [7:0] A, B;

output Cout;
output [7:0] S;

wire [7:0] W;

assign W[7] = B[7] ^ Cin;
assign W[6] = B[6] ^ Cin;
assign W[5] = B[5] ^ Cin;
assign W[4] = B[4] ^ Cin;
assign W[3] = B[3] ^ Cin;
assign W[2] = B[2] ^ Cin;
assign W[1] = B[1] ^ Cin;
assign W[0] = B[0] ^ Cin;

adder u0(.A(A),.B(W),.Cin(Cin),.S(S),.Cout(Cout));

endmodule


module adder(A,B,Cin,S,Cout);

input [7:0] A, B;
input Cin;
output [7:0] S; 
output Cout;

wire w0, w1, w2, w3, w4, w5, w6;

full_adder U0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]), .Cout(w0));
full_adder U1(.A(A[1]), .B(B[1]), .Cin(w0), .S(S[1]), .Cout(w1));
full_adder U2(.A(A[2]), .B(B[2]), .Cin(w1), .S(S[2]), .Cout(w2));
full_adder U3(.A(A[3]), .B(B[3]), .Cin(w2), .S(S[3]), .Cout(w3));
full_adder U4(.A(A[4]), .B(B[4]), .Cin(w3), .S(S[4]), .Cout(w4));
full_adder U5(.A(A[5]), .B(B[5]), .Cin(w4), .S(S[5]), .Cout(w5));
full_adder U6(.A(A[6]), .B(B[6]), .Cin(w5), .S(S[6]), .Cout(w6));
full_adder U7(.A(A[7]), .B(B[7]), .Cin(w6), .S(S[7]), .Cout(Cout));

endmodule

module full_adder(A,B,Cin,,S,Cout);

input A;
input B;
input Cin;

output S;
output Cout;

assign S = A ^ B ^ Cin;
assign Cout = A&(B^Cin) | Cin & (A ^ B);

/*
assign S = A ^ B ^ Cin;
assign Cout = A&B | Cin & (A ^ B);
*/


endmodule