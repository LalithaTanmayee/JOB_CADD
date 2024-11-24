module Orange_i(clk, Reset, I1, Q);
input logic clk, Reset;
input logic I1;
output logic Q;
logic Ireg1; parameter S0=4'b00,
                       S1=4'b01,
                       S2=4'b10;
logic [1:0]state1,statenext;
            
always_ff@(posedge clk)
begin
    if(Reset==1)
    begin
        Ireg1<=0;
        state1<=S0;
    end
    else
    begin
        Ireg1<=I1;
        state1<=statenext;
    end
end

always_comb
begin
    if(Reset==1)
    begin
        statenext<=S0;
    end
    else
    begin
        case(state1) S0: if(Ireg1==1'b0)
                         statenext<=S0;
                         else
                         statenext<=S1;
                     S1:
                         if(Ireg1==1'b0)
                         statenext<=S1;
                         else
                         statenext<=S2;
                     S2:
                         statenext<=S0;
                         
                     default:
                         statenext<=S0;
        endcase
    end
end
                
always_ff@(state1 or Reset) 
    if(Reset==1)
    begin
        Q<=0;
    end
    else
    begin                       
    case(state1) S0:Q=0;
                 S1:Q=0;
                 S2:Q=1;
    endcase
end      
endmodule
