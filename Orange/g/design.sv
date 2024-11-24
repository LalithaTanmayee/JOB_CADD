module Orange_g(Din, En, Dout);
input logic [2:0]Din;
input logic En;
output logic [7:0]Dout;
            
always_comb
    if(En==1)
    begin
        Dout=8'b00000000;
        case(Din) 3'b000:Dout=8'b00000001;
                  3'b001:Dout=8'b00000010;
                  3'b010:Dout=8'b00000100;
                  3'b011:Dout=8'b00001000;
                  3'b100:Dout=8'b00010000;
                  3'b101:Dout=8'b00100000;
                  3'b110:Dout=8'b01000000;
                  3'b111:Dout=8'b10000000;
                  default:Dout=8'bxxxxxxxx;
        endcase
    end
endmodule