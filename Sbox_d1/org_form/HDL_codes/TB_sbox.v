`timescale 1ns / 1ps
//////////////////////////
module TB_topSBOX();

    reg [18 : 0] PRNG;
    reg [15 : 0] inp;
    reg clk;
    wire [15 : 0] SB_out;
    
    Sbox MUT (clk, PRNG, inp, SB_out);

    always #5 clk = ~clk;
    always #10  PRNG = $random;
    initial begin

        $dumpfile("sbox.vcd");
        $dumpvars(0,TB_topSBOX);

        clk = 0 ;
        PRNG = $random;
        inp = 16'hAA00;
        #10;
        inp = 16'h3333;
        #10;
        inp = 16'h7670;
        #10;
        inp = 16'h2222;
        #10;
        inp = 16'hA647;
        #10;
        inp = 16'hAAAA;
        #10;
        inp = 16'hA215;
        #100;
        $finish;
    end
    
    wire [7 : 0] OUT_unshared, Inp_unshared;
    assign OUT_unshared = SB_out[15 : 8] ^ SB_out[7 : 0];
    assign Inp_unshared = inp[15 : 8] ^ inp[7 : 0];

endmodule
