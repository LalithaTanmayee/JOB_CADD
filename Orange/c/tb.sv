module Orange_c_tb();
reg a, b, c, d;
wire y, z;

Orange_c DUT0 (.a(A), .b(B), .c(C), .d(C), .y(Y), .z(Z));

initial begin
    a=1'b0; b=1'b0; c=1'b0; d=1'b0; #10;
    a=1'b0; b=1'b0; c=1'b0; d=1'b1; #10;
    a=1'b0; b=1'b0; c=1'b1; d=1'b0; #10;
    a=1'b0; b=1'b0; c=1'b1; d=1'b1; #10;
    a=1'b0; b=1'b1; c=1'b0; d=1'b0; #10;
    a=1'b0; b=1'b1; c=1'b0; d=1'b1; #10;
    a=1'b0; b=1'b1; c=1'b1; d=1'b0; #10;
    a=1'b0; b=1'b1; c=1'b1; d=1'b1; #10;
    a=1'b1; b=1'b0; c=1'b0; d=1'b0; #10;
    a=1'b1; b=1'b0; c=1'b0; d=1'b1; #10;
    a=1'b1; b=1'b0; c=1'b1; d=1'b0; #10;
    a=1'b1; b=1'b0; c=1'b1; d=1'b1; #10;
    a=1'b1; b=1'b1; c=1'b0; d=1'b0; #10;
    a=1'b1; b=1'b1; c=1'b0; d=1'b1; #10;
    a=1'b1; b=1'b1; c=1'b1; d=1'b0; #10;
    a=1'b1; b=1'b1; c=1'b1; d=1'b1; #10;
end
endmodule