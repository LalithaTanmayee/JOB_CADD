module prefix_adder_tb;
reg [31:0] A;
reg [31:0] B;
reg Cin;
wire [31:0] Sum;
wire Cout;

prefix_adder uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
A = 32'h0; B = 32'h0; Cin = 0;

#10 A = 32'h00000001; B = 32'h00000001; Cin = 0; 
#10 A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 0; 
#10 A = 32'h0000FFFF; B = 32'h00000001; Cin = 1; 
#10 A = 32'h12345678; B = 32'h87654321; Cin = 0; 
#10 A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 0; 
#10 A = 32'hFFFFFFFF; B = 32'hFFFFFFFF; Cin = 1; 
#10 $finish;
end
endmodule