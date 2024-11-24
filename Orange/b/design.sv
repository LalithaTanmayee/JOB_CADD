module Orange_b(A, B, C, D, E, Y);
input logic A, B, C, D, E;
output logic Y;
wire a, b, c, d, e, f, g, h, i, j;

assign a = (A & B & C);
assign b = (A & B & D);
assign c = (A & B & E);
assign d = (A & C & D);
assign e = (A & C & E);
assign f = ~(A | D | E);
assign g = (~B & ~C & D);
assign h = (~B & ~C & E);
assign i = (~B & ~D & ~E);
assign j = (~C & ~D & ~E);


assign Y = (a | b | c | d | e | f | g | h | i | j);

endmodule