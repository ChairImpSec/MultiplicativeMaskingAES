module kronecker_d2 (clk, shared_inp, PRNG, out);
    
    input clk;
    input [12:0] PRNG;
    input [23 : 0] shared_inp;
    output [2:0] out;

    wire [2 : 0] w1, w2, w3, w4, w5, w6,
    r1, r2, r3, r4, r5, r6, r7,
    Ax0, Ax1, Ax2, Ax3,
    Ay0, Ay1, Ay2, Ay3;

    assign r1 = PRNG[2:0];
    assign r2 = PRNG[5:3];
    assign r3 = PRNG[8:6];
    assign r4 = PRNG[11:9];
    assign r5[0] = r3[0];
    assign r5[1] = r4[1];
    assign r6[0] = r1[0];
    assign r6[1] = r2[1];
    assign r7[2] = PRNG[12];  

    Register #(1) for_r52 ((r3[2] ^ r4[2]), clk, r5[2]);
    Register #(1) for_r62 ((r1[2] ^ r2[2]), clk, r6[2]);
    Register #(1) for_r70 ((r2[0] ^ r4[0]), clk, r7[1]);
    Register #(1) for_r71 ((r1[1] ^ r3[1]), clk, r7[0]);

    assign Ax0 = {shared_inp[0], shared_inp[8],  ~shared_inp[16]};
    assign Ay0 = {shared_inp[1], shared_inp[9],  ~shared_inp[17]};
    assign Ax1 = {shared_inp[2], shared_inp[10], ~shared_inp[18]};
    assign Ay1 = {shared_inp[3], shared_inp[11], ~shared_inp[19]};
    assign Ax2 = {shared_inp[4], shared_inp[12], ~shared_inp[20]};
    assign Ay2 = {shared_inp[5], shared_inp[13], ~shared_inp[21]};
    assign Ax3 = {shared_inp[6], shared_inp[14], ~shared_inp[22]};
    assign Ay3 = {shared_inp[7], shared_inp[15], ~shared_inp[23]};
    
    and_dom_indep_d2 G1 (clk, Ax0, Ay0, r1, w1);
    and_dom_indep_d2 G2 (clk, Ax1, Ay1, r2, w2);
    and_dom_indep_d2 G3 (clk, Ax2, Ay2, r3, w3);
    and_dom_indep_d2 G4 (clk, Ax3, Ay3, r4, w4);
    and_dom_indep_d2 G5 (clk, w1, w2, r5, w5);
    and_dom_indep_d2 G6 (clk, w3, w4, r6, w6);
    and_dom_indep_d2 G7 (clk, w5, w6, r7, out);

endmodule
