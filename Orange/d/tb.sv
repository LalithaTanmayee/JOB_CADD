module Orange_d_tb;
reg [3:0] A;
wire P, D;

Orange_d DUT1 (.A(A), .P(P), .D(D));

initial begin
    for (int i = 0; i < 16; i++) begin
        A = i; 
        #5;    
    end
    $stop; 
end
endmodule