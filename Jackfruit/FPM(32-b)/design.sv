module fp_multiplier (A, B, Result);
input logic [31:0] A; 
input logic [31:0] B;
output logic [31:0] Result;
logic sign; 
logic [7:0] expA, expB, expResult;
logic [23:0] m_A, m_B, m_Result;
logic [47:0] m_Product;

assign sign = A[31] ^ B[31];
assign expA = A[30:23];
assign expB = B[30:23];
assign m_A = {1'b1, A[22:0]}; 
assign m_B = {1'b1, B[22:0]};
assign m_Product = m_A * m_B;
assign m_Result = m_Product[47] ? m_Product[46:24] : m_Product[45:23];
assign expResult = expA + expB - 127 + m_Product[47];
assign Result = {sign, expResult, m_Result[22:0]};
endmodule