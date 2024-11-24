module Orange_e(Din, En, Dout);
input logic [3:0]Din;
input logic En;
output logic [1:0]Dout;
            
always_comb
begin
    Dout=2'b00;
    if(En==1)
    begin
        case(Din)
            4'b0001:Dout=2'b00;
            4'b0010:Dout=2'b01;
            4'b0100:Dout=2'b10;
            4'b1000:Dout=2'b11;
            default:Dout=2'b00;
        endcase
    end
end
endmodule