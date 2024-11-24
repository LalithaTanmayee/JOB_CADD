module Orange_d(A, D, P);
input logic [3:0]A;
output logic P, D;
          
always_comb
    begin           
        case(A) 4'b0000: begin
                         P=0;D=0;
                         end
                4'b0001: begin       
                         P=0;D=0;
                         end         
                4'b0010: begin       
                         P=1;D=0;
                         end             
                4'b0011: begin       
                         P=1;D=1;
                         end       
                4'b0100: begin       
                         P=0;D=0;
                         end      
                4'b0101: begin       
                         P=1;D=0;
                         end                
                4'b0110: begin
                         P=0;D=1;
                         end
                4'b0111: begin       
                         P=1;D=0;
                         end                           
                4'b1000: begin       
                         P=0;D=0;
                         end       
                4'b1001: begin       
                         P=0;D=1;
                         end       
                4'b1010: begin       
                         P=0;D=0;
                         end        
                4'b1011: begin       
                         P=1;D=0;
                         end 
        endcase
    end
endmodule               