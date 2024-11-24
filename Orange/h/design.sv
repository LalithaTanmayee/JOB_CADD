module Orange_h(A, B, S);
input logic [3:0]A,B;
output logic [3:0]S;
            
fulladder1 fa1(A[0],B[0],S[0]);
fulladder1 fa2(A[1],B[1],S[1]);
fulladder1 fa3(A[2],B[2],S[2]);
fulladder1 fa4(A[3],B[3],S[3]);
endmodule

module fulladder1(A, B, Y);
input logic A,B;
output logic Y;
                
assign Y=A^B;

endmodule