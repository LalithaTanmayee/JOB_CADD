module bcd_adder (A, B, Cin, S, Cout);
input logic [7:0] A;
input logic [7:0] B;
input logic Cin;
output logic [7:0] S;
output logic Cout;
logic [3:0] sum1, sum2;  
logic carry1, carry2;  

bcd_4bit_adder u1 (.A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(sum1), .Cout(carry1));
bcd_4bit_adder u2 (.A(A[7:4]), .B(B[7:4]), .Cin(carry1), .S(sum2), .Cout(carry2));

assign S = {sum2, sum1};
assign Cout = carry2;   
endmodule

module bcd_4bit_adder (A, B, Cin, S, Cout);
input logic [3:0] A;
input logic [3:0] B; 
input logic Cin; 
output logic [3:0] S; 
output logic Cout; 
logic [4:0] sum; 
logic adjust;

assign sum = A + B + Cin;
assign adjust = (sum > 9);
assign S = adjust ? (sum + 6) : sum[3:0];
assign Cout = adjust || sum[4];
endmodule