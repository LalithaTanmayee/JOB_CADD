module tb_bcd_adder;
reg [7:0] A, B;
reg Cin;
wire [7:0] S;
wire Cout;

bcd_adder uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

initial begin
A = 8'b00000001; B = 8'b00000001; Cin = 1'b0; #10; 
A = 8'b00001001; B = 8'b00001001; Cin = 1'b0; #10; 
A = 8'b00000111; B = 8'b00001011; Cin = 1'b1; #10; 
A = 8'b01010101; B = 8'b01010101; Cin = 1'b0; #10; 
$stop;
end
endmodule