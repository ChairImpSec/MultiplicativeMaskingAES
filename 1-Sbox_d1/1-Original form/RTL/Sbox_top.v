
///////////////////////////////////////////////////////
module Sbox (clk, PRNG, inp, SB_out);

    input [18: 0] PRNG;
    input [15 : 0] inp;
    input clk;
    output [15 : 0] SB_out;
 
    wire [7 : 0] sb_out0, sb_out1;
    wire [7 : 0] b0, b1, r0, r1, b0Xr0, reg_b0Xr0, b1Xr0,
    reg_b1Xr0, p0, p1, p1_inv, p1_invXORr1, reg_p1_invXORr1,
    reg_r1, reg_q0, b0_prim, b0_prim_to_affine, b1_prim, to_const,
    b1_prim_to_affine;
    wire [1 : 0] kron_out;
    wire [1 : 0]  intermed_reg_delta, reg_kron_out;
    wire [15 : 0] SBin_reg, kron_in_reg, tmp1, tmp2;
    
    r0_mapper inst_r0_zero_mapper (clk, PRNG[7:0], r0);
    
    register #(8) pip_B4r1 (PRNG[15:8], clk, r1);
    
    register #(16) pip_B4_Kronin (inp, clk, kron_in_reg);
    kronecker inst_kronecker (clk, kron_in_reg, PRNG[18 : 16], kron_out);
    
    register #(16) pip1_B4_SBin (kron_in_reg, clk, tmp1);
    register #(16) pip2_B4_SBin (tmp1, clk, tmp2);
    register #(16) pip3_B4_SBin (tmp2, clk, SBin_reg);

    assign b1 = SBin_reg[15:8] ^ {7'b0, kron_out[1]};
    assign b0 = SBin_reg[7:0] ^ {7'b0, kron_out[0]};

    gf256_multiplier inst_mult0 (r0, b0, b0Xr0);
    gf256_multiplier inst_mult1 (r0, b1, b1Xr0);

    register #(8) inst_reg0_B2M0 (r0, clk, p0);

    register #(8) inst_reg1_B2M0 (b0Xr0, clk, reg_b0Xr0);

    register #(8) inst_reg2_B2M0 (b1Xr0, clk, reg_b1Xr0);

    assign p1 = reg_b1Xr0 ^ reg_b0Xr0;

    inversion inst_inv (p1, p1_inv);

    register #(8) inst_reg0_M2B0 (r1, clk, reg_r1);

    assign p1_invXORr1 = r1 ^ p1_inv;

    register #(8) inst_reg1_M2B0(p1_invXORr1, clk, reg_p1_invXORr1);

    register #(8) inst_reg2_M2B0 (p0, clk, reg_q0);

    gf256_multiplier inst_mult2 (reg_q0, reg_p1_invXORr1, b1_prim);
    gf256_multiplier inst_mult3 (reg_q0, reg_r1, b0_prim);

    register #(2) inst_reg_delta0 (kron_out, clk, intermed_reg_delta);
    register #(2) inst_reg_delta1 (intermed_reg_delta, clk, reg_kron_out);

    assign b1_prim_to_affine = b1_prim ^ {7'b0, reg_kron_out[1]};
    assign b0_prim_to_affine = b0_prim ^ {7'b0, reg_kron_out[0]};

    linear_mapping inst_LM0 (b0_prim_to_affine, sb_out0);
    linear_mapping inst_LM1 (b1_prim_to_affine, to_const);
    assign sb_out1 = to_const ^ (8'h63);

    assign SB_out = {sb_out1, sb_out0};

endmodule
