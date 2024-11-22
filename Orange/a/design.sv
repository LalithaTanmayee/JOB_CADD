module Orange_a(a, b, c, d, y);
input logic a, b, c, d;
output logic y;
wire l, m, n, o, p, q, r;

assign l = (~a & ~b & ~c & ~d);
assign m = (a & ~b & ~c);
assign n = (a & ~b & c & ~d);
assign o = (a & b & d);
assign p = (~a & ~b & c & ~d);
assign q = (b & ~c & d);
assign r = (~a);

assign y = (l | m | n | o| p | q | r);

endmodule