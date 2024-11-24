module Orange_j(clk, reset, gray_code);
input logic clk;
input logic reset;
output logic [2:0] gray_code;
logic [2:0] binary_count;

always_ff @(posedge clk or posedge reset) 
begin
    if (reset) 
    binary_count <= 3'b000; 
    else 
    binary_count <= binary_count + 1'b1; 
end

always_comb 
begin
    gray_code = binary_count ^ (binary_count >> 1);
end
endmodule