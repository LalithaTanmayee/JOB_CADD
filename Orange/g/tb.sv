module Orange_g_tb;
reg [2:0] Din;
reg En;
wire [7:0] Dout;

Orange_g dut (.Din(Din), .En(En), .Dout(Dout));

initial begin
En = 0;
Din = 3'b000; #5;
Din = 3'b101; #5;

En = 1;
Din = 3'b000; #5;
Din = 3'b001; #5; 
Din = 3'b010; #5;
Din = 3'b011; #5; 
Din = 3'b100; #5; 
Din = 3'b101; #5; 
Din = 3'b110; #5; 
Din = 3'b111; #5; 

Din = 3'bxxx; #5; 
$stop; 
end
endmodule