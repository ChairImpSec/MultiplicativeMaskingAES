
module and_dom_indep_d2 (clk, x, y, r, z);

    input clk;
    input[2:0] x, y;
    input[2:0] r;
    output [2:0] z;

    wire AND1, AND2, AND3, 
         AND4, AND5, AND6, 
         AND7, AND8, AND9;
    wire [9:1] DFFout;
    wire r0XORAND2, r1XORAND3,
         r0XORAND4, r2XORAND6,
         r1XORAND7, r2XORAND8;

    assign AND1 = x[0] & y[0];
    assign AND2 = x[0] & y[1];
    assign AND3 = x[0] & y[2];
    assign r0XORAND2 = r[0] ^ AND2;
    assign r1XORAND3 = r[1] ^ AND3;
    Register #(1) D1 (AND1,      clk, DFFout[1]);
    Register #(1) D2 (r0XORAND2, clk, DFFout[2]);
    Register #(1) D3 (r1XORAND3, clk, DFFout[3]);
    assign z[0] = DFFout[1] ^ DFFout[2] ^ DFFout[3];

    assign AND4 = x[1] & y[0];
    assign AND5 = x[1] & y[1];
    assign AND6 = x[1] & y[2];
    assign r0XORAND4 = r[0] ^ AND4;
    assign r2XORAND6 = r[2] ^ AND6;
    Register #(1) D4 (r0XORAND4, clk, DFFout[4]);
    Register #(1) D5 (AND5,      clk, DFFout[5]);
    Register #(1) D6 (r2XORAND6, clk, DFFout[6]);
    assign z[1] = DFFout[4] ^ DFFout[5] ^ DFFout[6];

    assign AND7 = x[2] & y[0];
    assign AND8 = x[2] & y[1];
    assign AND9 = x[2] & y[2];
    assign r1XORAND7 = r[1] ^ AND7;
    assign r2XORAND8 = r[2] ^ AND8;
    Register #(1) D7 (r1XORAND7, clk, DFFout[7]);
    Register #(1) D8 (r2XORAND8, clk, DFFout[8]);
    Register #(1) D9 (AND9,      clk, DFFout[9]);
    assign z[2] = DFFout[7] ^ DFFout[8] ^ DFFout[9];

endmodule

