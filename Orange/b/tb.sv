module Orange_b_tb();
reg A, B, C, D, E;
wire Y;

Orange_b DUT0 (.A(A), .B(B), .C(C), .D(D), .Y(Y));

initial begin
    A=1'b0; B=1'b0; C=1'b0; D=1'b0; E=1'b0; #10;
    A=1'b0; B=1'b0; C=1'b0; D=1'b0; E=1'b1; #10;
    A=1'b0; B=1'b0; C=1'b0; D=1'b1; E=1'b0; #10;
    A=1'b0; B=1'b0; C=1'b0; D=1'b1; E=1'b1; #10;
    A=1'b0; B=1'b0; C=1'b1; D=1'b0; E=1'b0; #10;
    A=1'b0; B=1'b0; C=1'b1; D=1'b0; E=1'b1; #10;
    A=1'b0; B=1'b0; C=1'b1; D=1'b1; E=1'b0; #10;
    A=1'b0; B=1'b0; C=1'b1; D=1'b1; E=1'b1; #10;
    A=1'b0; B=1'b1; C=1'b0; D=1'b0; E=1'b0; #10;
    A=1'b0; B=1'b1; C=1'b0; D=1'b0; E=1'b1; #10;
    A=1'b0; B=1'b1; C=1'b0; D=1'b1; E=1'b0; #10;
    A=1'b0; B=1'b1; C=1'b0; D=1'b1; E=1'b1; #10;
    A=1'b0; B=1'b1; C=1'b1; D=1'b0; E=1'b0; #10;
    A=1'b0; B=1'b1; C=1'b1; D=1'b0; E=1'b1; #10;
    A=1'b0; B=1'b1; C=1'b1; D=1'b1; E=1'b0; #10;
    A=1'b0; B=1'b1; C=1'b1; D=1'b1; E=1'b1; #10;
    A=1'b1; B=1'b0; C=1'b0; D=1'b0; E=1'b0; #10;
    A=1'b1; B=1'b0; C=1'b0; D=1'b0; E=1'b1; #10;
    A=1'b1; B=1'b0; C=1'b0; D=1'b1; E=1'b0; #10;
    A=1'b1; B=1'b0; C=1'b0; D=1'b1; E=1'b1; #10;
    A=1'b1; B=1'b0; C=1'b1; D=1'b0; E=1'b0; #10;
    A=1'b1; B=1'b0; C=1'b1; D=1'b0; E=1'b1; #10;
    A=1'b1; B=1'b0; C=1'b1; D=1'b1; E=1'b0; #10;
    A=1'b1; B=1'b0; C=1'b1; D=1'b1; E=1'b1; #10;
    A=1'b1; B=1'b1; C=1'b0; D=1'b0; E=1'b0; #10;
    A=1'b1; B=1'b1; C=1'b0; D=1'b0; E=1'b1; #10;
    A=1'b1; B=1'b1; C=1'b0; D=1'b1; E=1'b0; #10;
    A=1'b1; B=1'b1; C=1'b0; D=1'b1; E=1'b1; #10;
    A=1'b1; B=1'b1; C=1'b1; D=1'b0; E=1'b0; #10;
    A=1'b1; B=1'b1; C=1'b1; D=1'b0; E=1'b1; #10;
    A=1'b1; B=1'b1; C=1'b1; D=1'b1; E=1'b0; #10;
    A=1'b1; B=1'b1; C=1'b1; D=1'b1; E=1'b1; #10;
end
endmodule