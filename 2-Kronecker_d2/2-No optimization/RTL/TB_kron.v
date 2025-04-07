`timescale 1ns / 1ps

module TB_kronecker ();
    reg clk;
    reg [20:0] rnd;
    reg [23 : 0] shared_inp; 
    wire [2:0] out;
     
    kronecker_d2 UUT (clk, shared_inp, rnd, out);

    always #5 clk = ~clk;
    always #10 rnd = {$random, $random};
    
    reg [7:0] share0, share1, val;

    initial begin
        $dumpfile("kron.vcd");
        $dumpvars(0, TB_kronecker);
        clk = 0;
        rnd = $random;
        
        shared_inp = 24'h25A347; #10;

        share0 = $random; share1 = $random; val = 8'b0 ^ share0 ^ share1;
        shared_inp = {val, share0, share1};
        #10;
        repeat (4)  begin 
            shared_inp = $random; #10;
        end
        share0 = $random; share1 = $random; val = 8'b0 ^ share0 ^ share1;
        shared_inp = {val, share0, share1}; #10;
        repeat (5)  begin 
            shared_inp = $random; #10;
        end
        #60;
        $finish;

    end
    
    wire OUT_unshared;
    wire [7:0] INP_unshared;
    assign OUT_unshared = out[0] ^ out[1] ^ out[2];
    assign INP_unshared = shared_inp[7:0] ^ shared_inp[15:8] ^ shared_inp[23:16];

endmodule
