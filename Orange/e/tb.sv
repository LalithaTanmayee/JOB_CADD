module Orange_e_tb;
reg [3:0] Din;
reg En;
wire [1:0] Dout;

Orange_e dut (.Din(Din), .En(En), .Dout(Dout));

initial begin
En = 0;
Din = 4'b0001; #5;
Din = 4'b0010; #5;

En = 1;
Din = 4'b0001; #5;
Din = 4'b0010; #5;
Din = 4'b0100; #5;
Din = 4'b1000; #5;
Din = 4'b0000; #5;
Din = 4'b1111; #5;
Din = 4'b1010; #5;
$stop; 
end
endmodule