module Orange_h_tb;
reg [3:0] A, B; 
wire [3:0] S;   

Orange_h dut (.A(A), .B(B), .S(S));

initial begin
A = 4'b0000; B = 4'b0000; #10; 
A = 4'b1010; B = 4'b0101; #10; 
A = 4'b1111; B = 4'b0000; #10; 
A = 4'b1100; B = 4'b0011; #10;
A = 4'b1111; B = 4'b1111; #10;

$stop;
end
endmodule