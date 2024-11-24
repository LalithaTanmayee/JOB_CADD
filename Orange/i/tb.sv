module Orange_i_tb;
reg clk, Reset, I1;
wire Q;

Orange_i dut (.clk(clk), .Reset(Reset), .I1(I1), .Q(Q));

always #5 clk = ~clk;

initial begin
clk = 0; 
Reset = 0;
I1 = 0;

Reset = 1; #10; 
Reset = 0; #10; 

I1 = 0; #20; 
I1 = 1; #20;
I1 = 1; #20;
I1 = 1; #20;
I1 = 1; #20;
Reset = 1; #10; 
Reset = 0; #10; 

$stop; 
end
endmodule