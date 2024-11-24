module tb_fp_multiplier;
reg [31:0] A, B;
wire [31:0] Result;

fp_multiplier uut (.A(A), .B(B), .Result(Result));

initial begin
A = 32'h40400000; 
B = 32'h40000000; 
#10;

A = 32'h3F800000; 
B = 32'h3F800000; 
#10; 

A = 32'hC0000000; 
B = 32'h40000000; 
#10; 

$stop;
end
endmodule