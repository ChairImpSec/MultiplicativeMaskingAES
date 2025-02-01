
module mux_2to1 (a, b, sel, y);
    input [7 : 0] a, b;
    input sel;
    output [7 : 0] y;

    assign y = (sel) ? (b) : (a);

endmodule