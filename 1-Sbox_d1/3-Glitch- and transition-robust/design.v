/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12
// Date      : Mon Apr  7 14:17:48 2025
/////////////////////////////////////////////////////////////


module mux_2to1 ( a, b, sel, y );
  input [7:0] a;
  input [7:0] b;
  output [7:0] y;
  input sel;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;

  NAND2_X1 U1 ( .A1(sel), .A2(b[3]), .ZN(n2) );
  INV_X1 U2 ( .A(sel), .ZN(n14) );
  NAND2_X1 U3 ( .A1(a[3]), .A2(n14), .ZN(n1) );
  NAND2_X1 U4 ( .A1(n2), .A2(n1), .ZN(y[3]) );
  NAND2_X1 U5 ( .A1(sel), .A2(b[7]), .ZN(n4) );
  NAND2_X1 U6 ( .A1(a[7]), .A2(n14), .ZN(n3) );
  NAND2_X1 U7 ( .A1(n4), .A2(n3), .ZN(y[7]) );
  NAND2_X1 U8 ( .A1(sel), .A2(b[0]), .ZN(n6) );
  NAND2_X1 U9 ( .A1(a[0]), .A2(n14), .ZN(n5) );
  NAND2_X1 U10 ( .A1(n6), .A2(n5), .ZN(y[0]) );
  NAND2_X1 U11 ( .A1(sel), .A2(b[1]), .ZN(n8) );
  NAND2_X1 U12 ( .A1(a[1]), .A2(n14), .ZN(n7) );
  NAND2_X1 U13 ( .A1(n8), .A2(n7), .ZN(y[1]) );
  NAND2_X1 U14 ( .A1(sel), .A2(b[4]), .ZN(n10) );
  NAND2_X1 U15 ( .A1(a[4]), .A2(n14), .ZN(n9) );
  NAND2_X1 U16 ( .A1(n10), .A2(n9), .ZN(y[4]) );
  NAND2_X1 U17 ( .A1(sel), .A2(b[5]), .ZN(n12) );
  NAND2_X1 U18 ( .A1(a[5]), .A2(n14), .ZN(n11) );
  NAND2_X1 U19 ( .A1(n12), .A2(n11), .ZN(y[5]) );
  OR2_X1 U20 ( .A1(a[0]), .A2(n14), .ZN(n16) );
  NAND2_X1 U21 ( .A1(a[2]), .A2(n14), .ZN(n13) );
  NAND2_X1 U22 ( .A1(n16), .A2(n13), .ZN(y[2]) );
  NAND2_X1 U23 ( .A1(a[6]), .A2(n14), .ZN(n15) );
  NAND2_X1 U24 ( .A1(n16), .A2(n15), .ZN(y[6]) );
endmodule


module register_N8_1 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module r0_mapper ( clk, r0_in, r0_out );
  input [7:0] r0_in;
  output [7:0] r0_out;
  input clk;
  wire   mapped_val_4_, mapped_val_1, mapped_val_0, n9, n7, n1, n2, n3, n4, n5,
         n6;
  wire   [7:0] mux_out;

  mux_2to1 mux_inst ( .a(r0_in), .b({r0_out[7], 1'b0, n7, mapped_val_4_, 
        r0_out[3], 1'b0, mapped_val_1, mapped_val_0}), .sel(n9), .y(mux_out)
         );
  register_N8_1 inst_reg0 ( .in(mux_out), .clk(clk), .out(r0_out) );
  NOR2_X1 U1 ( .A1(r0_in[5]), .A2(r0_in[4]), .ZN(n2) );
  NOR2_X1 U2 ( .A1(r0_in[3]), .A2(r0_in[2]), .ZN(n1) );
  NAND2_X1 U3 ( .A1(n2), .A2(n1), .ZN(n6) );
  NOR2_X1 U4 ( .A1(r0_in[0]), .A2(r0_in[7]), .ZN(n4) );
  NOR2_X1 U5 ( .A1(r0_in[6]), .A2(r0_in[1]), .ZN(n3) );
  NAND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(n5) );
  NOR2_X1 U7 ( .A1(n6), .A2(n5), .ZN(n9) );
  XOR2_X1 U10 ( .A(r0_out[0]), .B(r0_out[2]), .Z(mapped_val_0) );
  XNOR2_X1 U11 ( .A(r0_out[1]), .B(r0_out[7]), .ZN(mapped_val_1) );
  XOR2_X1 U12 ( .A(r0_out[4]), .B(r0_out[6]), .Z(mapped_val_4_) );
  INV_X1 U13 ( .A(r0_out[5]), .ZN(n7) );
endmodule


module register_N8_0 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N16_0 ( in, clk, out );
  input [15:0] in;
  output [15:0] out;
  input clk;


  DFF_X1 r_out_reg_15_ ( .D(in[15]), .CK(clk), .Q(out[15]), .QN() );
  DFF_X1 r_out_reg_14_ ( .D(in[14]), .CK(clk), .Q(out[14]), .QN() );
  DFF_X1 r_out_reg_13_ ( .D(in[13]), .CK(clk), .Q(out[13]), .QN() );
  DFF_X1 r_out_reg_12_ ( .D(in[12]), .CK(clk), .Q(out[12]), .QN() );
  DFF_X1 r_out_reg_11_ ( .D(in[11]), .CK(clk), .Q(out[11]), .QN() );
  DFF_X1 r_out_reg_10_ ( .D(in[10]), .CK(clk), .Q(out[10]), .QN() );
  DFF_X1 r_out_reg_9_ ( .D(in[9]), .CK(clk), .Q(out[9]), .QN() );
  DFF_X1 r_out_reg_8_ ( .D(in[8]), .CK(clk), .Q(out[8]), .QN() );
  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_0 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_27 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_26 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_25 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_0 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n1, n2;

  register_N1_0 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_27 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_26 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_25 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U2 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  XOR2_X1 U3 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  NAND2_X1 U4 ( .A1(bx[0]), .A2(by[1]), .ZN(n1) );
  XNOR2_X1 U5 ( .A(n1), .B(r), .ZN(xorout0) );
  NAND2_X1 U6 ( .A1(by[0]), .A2(bx[1]), .ZN(n2) );
  XNOR2_X1 U7 ( .A(n2), .B(r), .ZN(xorout1) );
  AND2_X1 U8 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
endmodule


module register_N1_24 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_23 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_22 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_21 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_6 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n5, n6;

  register_N1_24 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_23 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_22 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_21 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U2 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  XOR2_X1 U3 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  NAND2_X1 U4 ( .A1(bx[0]), .A2(by[1]), .ZN(n5) );
  XNOR2_X1 U5 ( .A(n5), .B(r), .ZN(xorout0) );
  NAND2_X1 U6 ( .A1(by[0]), .A2(bx[1]), .ZN(n6) );
  XNOR2_X1 U7 ( .A(n6), .B(r), .ZN(xorout1) );
  AND2_X1 U8 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
endmodule


module register_N1_20 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_19 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_18 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_17 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_5 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n5, n6;

  register_N1_20 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_19 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_18 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_17 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U2 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  XOR2_X1 U3 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  NAND2_X1 U4 ( .A1(bx[0]), .A2(by[1]), .ZN(n5) );
  XNOR2_X1 U5 ( .A(n5), .B(r), .ZN(xorout0) );
  NAND2_X1 U6 ( .A1(by[0]), .A2(bx[1]), .ZN(n6) );
  XNOR2_X1 U7 ( .A(n6), .B(r), .ZN(xorout1) );
  AND2_X1 U8 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
endmodule


module register_N1_16 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_15 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_14 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_13 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_4 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n5, n6;

  register_N1_16 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_15 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_14 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_13 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U2 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  XOR2_X1 U3 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  NAND2_X1 U4 ( .A1(bx[0]), .A2(by[1]), .ZN(n5) );
  XNOR2_X1 U5 ( .A(n5), .B(r), .ZN(xorout0) );
  NAND2_X1 U6 ( .A1(by[0]), .A2(bx[1]), .ZN(n6) );
  XNOR2_X1 U7 ( .A(n6), .B(r), .ZN(xorout1) );
  AND2_X1 U8 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
endmodule


module register_N1_12 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_11 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_10 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_9 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_3 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n5, n6;

  register_N1_12 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_11 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_10 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_9 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
  AND2_X1 U2 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U3 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  XOR2_X1 U4 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  NAND2_X1 U5 ( .A1(bx[0]), .A2(by[1]), .ZN(n5) );
  XNOR2_X1 U6 ( .A(n5), .B(r), .ZN(xorout0) );
  NAND2_X1 U7 ( .A1(by[0]), .A2(bx[1]), .ZN(n6) );
  XNOR2_X1 U8 ( .A(n6), .B(r), .ZN(xorout1) );
endmodule


module register_N1_8 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_7 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_6 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_5 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_2 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n5, n6;

  register_N1_8 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_7 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_6 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_5 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
  AND2_X1 U2 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U3 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  XOR2_X1 U4 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  NAND2_X1 U5 ( .A1(bx[0]), .A2(by[1]), .ZN(n5) );
  XNOR2_X1 U6 ( .A(n5), .B(r), .ZN(xorout0) );
  NAND2_X1 U7 ( .A1(by[0]), .A2(bx[1]), .ZN(n6) );
  XNOR2_X1 U8 ( .A(n6), .B(r), .ZN(xorout1) );
endmodule


module register_N1_4 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_3 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_2 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N1_1 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module And_DOM_indep_d1_1 ( bx, by, r, clk, bz );
  input [1:0] bx;
  input [1:0] by;
  output [1:0] bz;
  input r, clk;
  wire   AND0, AND3, xorout0, xorout1, reg_out0, reg_out1, reg_out2, reg_out3,
         n5, n6;

  register_N1_4 DFF0 ( .in(xorout0), .clk(clk), .out(reg_out0) );
  register_N1_3 DFF1 ( .in(xorout1), .clk(clk), .out(reg_out1) );
  register_N1_2 DFF2 ( .in(AND0), .clk(clk), .out(reg_out2) );
  register_N1_1 DFF3 ( .in(AND3), .clk(clk), .out(reg_out3) );
  AND2_X1 U1 ( .A1(by[1]), .A2(bx[1]), .ZN(AND3) );
  AND2_X1 U2 ( .A1(bx[0]), .A2(by[0]), .ZN(AND0) );
  XOR2_X1 U3 ( .A(reg_out0), .B(reg_out2), .Z(bz[0]) );
  XOR2_X1 U4 ( .A(reg_out1), .B(reg_out3), .Z(bz[1]) );
  NAND2_X1 U5 ( .A1(bx[0]), .A2(by[1]), .ZN(n5) );
  XNOR2_X1 U6 ( .A(n5), .B(r), .ZN(xorout0) );
  NAND2_X1 U7 ( .A1(by[0]), .A2(bx[1]), .ZN(n6) );
  XNOR2_X1 U8 ( .A(n6), .B(r), .ZN(xorout1) );
endmodule


module kronecker ( clk, inp, rand, Z );
  input [15:0] inp;
  input [5:0] rand;
  output [1:0] Z;
  input clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [1:0] w1;
  wire   [1:0] w2;
  wire   [1:0] w3;
  wire   [1:0] w4;
  wire   [1:0] w5;
  wire   [1:0] w6;

  And_DOM_indep_d1_0 G1 ( .bx({inp[0], n8}), .by({inp[1], n7}), .r(rand[0]), 
        .clk(clk), .bz(w1) );
  And_DOM_indep_d1_6 G2 ( .bx({inp[2], n6}), .by({inp[3], n5}), .r(rand[1]), 
        .clk(clk), .bz(w2) );
  And_DOM_indep_d1_5 G3 ( .bx({inp[4], n4}), .by({inp[5], n3}), .r(rand[2]), 
        .clk(clk), .bz(w3) );
  And_DOM_indep_d1_4 G4 ( .bx({inp[6], n2}), .by({inp[7], n1}), .r(rand[3]), 
        .clk(clk), .bz(w4) );
  And_DOM_indep_d1_3 G5 ( .bx(w1), .by(w2), .r(rand[4]), .clk(clk), .bz(w5) );
  And_DOM_indep_d1_2 G6 ( .bx(w3), .by(w4), .r(rand[5]), .clk(clk), .bz(w6) );
  And_DOM_indep_d1_1 G7 ( .bx(w5), .by(w6), .r(rand[0]), .clk(clk), .bz(Z) );
  INV_X1 U1 ( .A(inp[15]), .ZN(n1) );
  INV_X1 U2 ( .A(inp[14]), .ZN(n2) );
  INV_X1 U3 ( .A(inp[13]), .ZN(n3) );
  INV_X1 U4 ( .A(inp[12]), .ZN(n4) );
  INV_X1 U5 ( .A(inp[11]), .ZN(n5) );
  INV_X1 U6 ( .A(inp[10]), .ZN(n6) );
  INV_X1 U7 ( .A(inp[9]), .ZN(n7) );
  INV_X1 U8 ( .A(inp[8]), .ZN(n8) );
endmodule


module register_N16_3 ( in, clk, out );
  input [15:0] in;
  output [15:0] out;
  input clk;


  DFF_X1 r_out_reg_15_ ( .D(in[15]), .CK(clk), .Q(out[15]), .QN() );
  DFF_X1 r_out_reg_14_ ( .D(in[14]), .CK(clk), .Q(out[14]), .QN() );
  DFF_X1 r_out_reg_13_ ( .D(in[13]), .CK(clk), .Q(out[13]), .QN() );
  DFF_X1 r_out_reg_12_ ( .D(in[12]), .CK(clk), .Q(out[12]), .QN() );
  DFF_X1 r_out_reg_11_ ( .D(in[11]), .CK(clk), .Q(out[11]), .QN() );
  DFF_X1 r_out_reg_10_ ( .D(in[10]), .CK(clk), .Q(out[10]), .QN() );
  DFF_X1 r_out_reg_9_ ( .D(in[9]), .CK(clk), .Q(out[9]), .QN() );
  DFF_X1 r_out_reg_8_ ( .D(in[8]), .CK(clk), .Q(out[8]), .QN() );
  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N16_2 ( in, clk, out );
  input [15:0] in;
  output [15:0] out;
  input clk;


  DFF_X1 r_out_reg_15_ ( .D(in[15]), .CK(clk), .Q(out[15]), .QN() );
  DFF_X1 r_out_reg_14_ ( .D(in[14]), .CK(clk), .Q(out[14]), .QN() );
  DFF_X1 r_out_reg_13_ ( .D(in[13]), .CK(clk), .Q(out[13]), .QN() );
  DFF_X1 r_out_reg_12_ ( .D(in[12]), .CK(clk), .Q(out[12]), .QN() );
  DFF_X1 r_out_reg_11_ ( .D(in[11]), .CK(clk), .Q(out[11]), .QN() );
  DFF_X1 r_out_reg_10_ ( .D(in[10]), .CK(clk), .Q(out[10]), .QN() );
  DFF_X1 r_out_reg_9_ ( .D(in[9]), .CK(clk), .Q(out[9]), .QN() );
  DFF_X1 r_out_reg_8_ ( .D(in[8]), .CK(clk), .Q(out[8]), .QN() );
  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N16_1 ( in, clk, out );
  input [15:0] in;
  output [15:0] out;
  input clk;


  DFF_X1 r_out_reg_15_ ( .D(in[15]), .CK(clk), .Q(out[15]), .QN() );
  DFF_X1 r_out_reg_14_ ( .D(in[14]), .CK(clk), .Q(out[14]), .QN() );
  DFF_X1 r_out_reg_13_ ( .D(in[13]), .CK(clk), .Q(out[13]), .QN() );
  DFF_X1 r_out_reg_12_ ( .D(in[12]), .CK(clk), .Q(out[12]), .QN() );
  DFF_X1 r_out_reg_11_ ( .D(in[11]), .CK(clk), .Q(out[11]), .QN() );
  DFF_X1 r_out_reg_10_ ( .D(in[10]), .CK(clk), .Q(out[10]), .QN() );
  DFF_X1 r_out_reg_9_ ( .D(in[9]), .CK(clk), .Q(out[9]), .QN() );
  DFF_X1 r_out_reg_8_ ( .D(in[8]), .CK(clk), .Q(out[8]), .QN() );
  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module gf256_multiplier_0 ( a, b, result );
  input [7:0] a;
  input [7:0] b;
  output [7:0] result;
  wire   n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230;

  NAND2_X1 U2 ( .A1(a[7]), .A2(b[6]), .ZN(n104) );
  NAND2_X1 U3 ( .A1(b[7]), .A2(a[6]), .ZN(n103) );
  XOR2_X1 U4 ( .A(n104), .B(n103), .Z(n145) );
  NAND2_X1 U5 ( .A1(b[5]), .A2(a[7]), .ZN(n106) );
  NAND2_X1 U6 ( .A1(a[5]), .A2(b[7]), .ZN(n105) );
  XOR2_X1 U7 ( .A(n106), .B(n105), .Z(n108) );
  NAND2_X1 U8 ( .A1(a[6]), .A2(b[6]), .ZN(n107) );
  XNOR2_X1 U9 ( .A(n108), .B(n107), .ZN(n203) );
  NAND2_X1 U10 ( .A1(b[4]), .A2(a[4]), .ZN(n110) );
  NAND2_X1 U11 ( .A1(a[1]), .A2(b[7]), .ZN(n109) );
  XOR2_X1 U12 ( .A(n110), .B(n109), .Z(n120) );
  NAND2_X1 U13 ( .A1(a[5]), .A2(b[3]), .ZN(n112) );
  NAND2_X1 U14 ( .A1(a[2]), .A2(b[6]), .ZN(n111) );
  XOR2_X1 U15 ( .A(n112), .B(n111), .Z(n116) );
  NAND2_X1 U16 ( .A1(b[5]), .A2(a[3]), .ZN(n114) );
  NAND2_X1 U17 ( .A1(b[2]), .A2(a[6]), .ZN(n113) );
  XOR2_X1 U18 ( .A(n114), .B(n113), .Z(n115) );
  XOR2_X1 U19 ( .A(n116), .B(n115), .Z(n118) );
  NAND2_X1 U20 ( .A1(b[1]), .A2(a[7]), .ZN(n117) );
  XNOR2_X1 U21 ( .A(n118), .B(n117), .ZN(n119) );
  XNOR2_X1 U22 ( .A(n120), .B(n119), .ZN(n195) );
  XNOR2_X1 U23 ( .A(n203), .B(n195), .ZN(n177) );
  XOR2_X1 U24 ( .A(n145), .B(n177), .Z(n122) );
  NAND2_X1 U25 ( .A1(a[0]), .A2(b[0]), .ZN(n121) );
  XNOR2_X1 U26 ( .A(n122), .B(n121), .ZN(result[0]) );
  NAND2_X1 U27 ( .A1(a[2]), .A2(b[1]), .ZN(n124) );
  NAND2_X1 U28 ( .A1(b[0]), .A2(a[3]), .ZN(n123) );
  XOR2_X1 U29 ( .A(n124), .B(n123), .Z(n128) );
  NAND2_X1 U30 ( .A1(b[2]), .A2(a[1]), .ZN(n126) );
  NAND2_X1 U31 ( .A1(a[0]), .A2(b[3]), .ZN(n125) );
  XOR2_X1 U32 ( .A(n126), .B(n125), .Z(n127) );
  XOR2_X1 U33 ( .A(n128), .B(n127), .Z(n136) );
  NAND2_X1 U34 ( .A1(b[4]), .A2(a[7]), .ZN(n130) );
  NAND2_X1 U35 ( .A1(a[4]), .A2(b[7]), .ZN(n129) );
  XOR2_X1 U36 ( .A(n130), .B(n129), .Z(n134) );
  NAND2_X1 U37 ( .A1(b[6]), .A2(a[5]), .ZN(n132) );
  NAND2_X1 U38 ( .A1(b[5]), .A2(a[6]), .ZN(n131) );
  XNOR2_X1 U39 ( .A(n132), .B(n131), .ZN(n133) );
  XNOR2_X1 U40 ( .A(n134), .B(n133), .ZN(n220) );
  NAND2_X1 U41 ( .A1(b[7]), .A2(a[7]), .ZN(n173) );
  XNOR2_X1 U42 ( .A(n220), .B(n173), .ZN(n198) );
  XNOR2_X1 U43 ( .A(n198), .B(n177), .ZN(n135) );
  XNOR2_X1 U44 ( .A(n136), .B(n135), .ZN(n146) );
  NAND2_X1 U45 ( .A1(b[5]), .A2(a[5]), .ZN(n138) );
  NAND2_X1 U46 ( .A1(b[4]), .A2(a[6]), .ZN(n137) );
  XOR2_X1 U47 ( .A(n138), .B(n137), .Z(n142) );
  NAND2_X1 U48 ( .A1(a[4]), .A2(b[6]), .ZN(n140) );
  NAND2_X1 U49 ( .A1(a[3]), .A2(b[7]), .ZN(n139) );
  XOR2_X1 U50 ( .A(n140), .B(n139), .Z(n141) );
  XOR2_X1 U51 ( .A(n142), .B(n141), .Z(n144) );
  NAND2_X1 U52 ( .A1(b[3]), .A2(a[7]), .ZN(n143) );
  XNOR2_X1 U53 ( .A(n144), .B(n143), .ZN(n200) );
  XNOR2_X1 U54 ( .A(n145), .B(n200), .ZN(n228) );
  XNOR2_X1 U55 ( .A(n146), .B(n228), .ZN(result[3]) );
  XNOR2_X1 U56 ( .A(n198), .B(n203), .ZN(n162) );
  NAND2_X1 U57 ( .A1(b[0]), .A2(a[7]), .ZN(n148) );
  NAND2_X1 U58 ( .A1(b[1]), .A2(a[6]), .ZN(n147) );
  XOR2_X1 U59 ( .A(n148), .B(n147), .Z(n152) );
  NAND2_X1 U60 ( .A1(b[2]), .A2(a[5]), .ZN(n150) );
  NAND2_X1 U61 ( .A1(a[4]), .A2(b[3]), .ZN(n149) );
  XOR2_X1 U62 ( .A(n150), .B(n149), .Z(n151) );
  XOR2_X1 U63 ( .A(n152), .B(n151), .Z(n160) );
  NAND2_X1 U64 ( .A1(a[2]), .A2(b[5]), .ZN(n154) );
  NAND2_X1 U65 ( .A1(b[4]), .A2(a[3]), .ZN(n153) );
  XOR2_X1 U66 ( .A(n154), .B(n153), .Z(n158) );
  NAND2_X1 U67 ( .A1(a[1]), .A2(b[6]), .ZN(n156) );
  NAND2_X1 U68 ( .A1(a[0]), .A2(b[7]), .ZN(n155) );
  XOR2_X1 U69 ( .A(n156), .B(n155), .Z(n157) );
  XNOR2_X1 U70 ( .A(n158), .B(n157), .ZN(n159) );
  XNOR2_X1 U71 ( .A(n160), .B(n159), .ZN(n161) );
  XNOR2_X1 U72 ( .A(n162), .B(n161), .ZN(result[7]) );
  NAND2_X1 U73 ( .A1(a[3]), .A2(b[6]), .ZN(n172) );
  NAND2_X1 U74 ( .A1(b[5]), .A2(a[4]), .ZN(n164) );
  NAND2_X1 U75 ( .A1(a[2]), .A2(b[7]), .ZN(n163) );
  XOR2_X1 U76 ( .A(n164), .B(n163), .Z(n168) );
  NAND2_X1 U77 ( .A1(b[2]), .A2(a[7]), .ZN(n166) );
  NAND2_X1 U78 ( .A1(b[3]), .A2(a[6]), .ZN(n165) );
  XOR2_X1 U79 ( .A(n166), .B(n165), .Z(n167) );
  XOR2_X1 U80 ( .A(n168), .B(n167), .Z(n170) );
  NAND2_X1 U81 ( .A1(b[4]), .A2(a[5]), .ZN(n169) );
  XNOR2_X1 U82 ( .A(n170), .B(n169), .ZN(n171) );
  XNOR2_X1 U83 ( .A(n172), .B(n171), .ZN(n199) );
  XNOR2_X1 U84 ( .A(n173), .B(n199), .ZN(n175) );
  NAND2_X1 U85 ( .A1(a[1]), .A2(b[0]), .ZN(n174) );
  XNOR2_X1 U86 ( .A(n175), .B(n174), .ZN(n176) );
  XOR2_X1 U87 ( .A(n177), .B(n176), .Z(n179) );
  NAND2_X1 U88 ( .A1(a[0]), .A2(b[1]), .ZN(n178) );
  XNOR2_X1 U89 ( .A(n179), .B(n178), .ZN(result[1]) );
  NAND2_X1 U90 ( .A1(b[0]), .A2(a[2]), .ZN(n181) );
  NAND2_X1 U91 ( .A1(b[1]), .A2(a[1]), .ZN(n180) );
  XOR2_X1 U92 ( .A(n181), .B(n180), .Z(n182) );
  XOR2_X1 U93 ( .A(n199), .B(n182), .Z(n184) );
  NAND2_X1 U94 ( .A1(a[0]), .A2(b[2]), .ZN(n183) );
  XNOR2_X1 U95 ( .A(n184), .B(n183), .ZN(n185) );
  XNOR2_X1 U96 ( .A(n185), .B(n228), .ZN(result[2]) );
  NAND2_X1 U97 ( .A1(b[0]), .A2(a[4]), .ZN(n187) );
  NAND2_X1 U98 ( .A1(a[1]), .A2(b[3]), .ZN(n186) );
  XOR2_X1 U99 ( .A(n187), .B(n186), .Z(n191) );
  NAND2_X1 U100 ( .A1(b[2]), .A2(a[2]), .ZN(n189) );
  NAND2_X1 U101 ( .A1(b[1]), .A2(a[3]), .ZN(n188) );
  XOR2_X1 U102 ( .A(n189), .B(n188), .Z(n190) );
  XOR2_X1 U103 ( .A(n191), .B(n190), .Z(n193) );
  NAND2_X1 U104 ( .A1(a[0]), .A2(b[4]), .ZN(n192) );
  XNOR2_X1 U105 ( .A(n193), .B(n192), .ZN(n194) );
  XNOR2_X1 U106 ( .A(n199), .B(n194), .ZN(n196) );
  XNOR2_X1 U107 ( .A(n196), .B(n195), .ZN(n197) );
  XNOR2_X1 U108 ( .A(n198), .B(n197), .ZN(result[4]) );
  XNOR2_X1 U109 ( .A(n200), .B(n199), .ZN(n214) );
  NAND2_X1 U110 ( .A1(b[0]), .A2(a[5]), .ZN(n202) );
  NAND2_X1 U111 ( .A1(b[1]), .A2(a[4]), .ZN(n201) );
  XOR2_X1 U112 ( .A(n202), .B(n201), .Z(n206) );
  NAND2_X1 U113 ( .A1(a[0]), .A2(b[5]), .ZN(n204) );
  XNOR2_X1 U114 ( .A(n204), .B(n203), .ZN(n205) );
  XNOR2_X1 U115 ( .A(n206), .B(n205), .ZN(n212) );
  NAND2_X1 U116 ( .A1(b[4]), .A2(a[1]), .ZN(n210) );
  NAND2_X1 U117 ( .A1(b[2]), .A2(a[3]), .ZN(n208) );
  NAND2_X1 U118 ( .A1(a[2]), .A2(b[3]), .ZN(n207) );
  XOR2_X1 U119 ( .A(n208), .B(n207), .Z(n209) );
  XNOR2_X1 U120 ( .A(n210), .B(n209), .ZN(n211) );
  XNOR2_X1 U121 ( .A(n212), .B(n211), .ZN(n213) );
  XNOR2_X1 U122 ( .A(n214), .B(n213), .ZN(result[5]) );
  NAND2_X1 U123 ( .A1(a[2]), .A2(b[4]), .ZN(n216) );
  NAND2_X1 U124 ( .A1(b[1]), .A2(a[5]), .ZN(n215) );
  XOR2_X1 U125 ( .A(n216), .B(n215), .Z(n224) );
  NAND2_X1 U126 ( .A1(a[3]), .A2(b[3]), .ZN(n218) );
  NAND2_X1 U127 ( .A1(a[0]), .A2(b[6]), .ZN(n217) );
  XOR2_X1 U128 ( .A(n218), .B(n217), .Z(n219) );
  XOR2_X1 U129 ( .A(n220), .B(n219), .Z(n222) );
  NAND2_X1 U130 ( .A1(b[0]), .A2(a[6]), .ZN(n221) );
  XNOR2_X1 U131 ( .A(n222), .B(n221), .ZN(n223) );
  XNOR2_X1 U132 ( .A(n224), .B(n223), .ZN(n230) );
  NAND2_X1 U133 ( .A1(a[1]), .A2(b[5]), .ZN(n226) );
  NAND2_X1 U134 ( .A1(b[2]), .A2(a[4]), .ZN(n225) );
  XOR2_X1 U135 ( .A(n226), .B(n225), .Z(n227) );
  XNOR2_X1 U136 ( .A(n228), .B(n227), .ZN(n229) );
  XNOR2_X1 U137 ( .A(n230), .B(n229), .ZN(result[6]) );
endmodule


module gf256_multiplier_3 ( a, b, result );
  input [7:0] a;
  input [7:0] b;
  output [7:0] result;
  wire   n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391;

  NAND2_X1 U2 ( .A1(a[7]), .A2(b[6]), .ZN(n265) );
  NAND2_X1 U3 ( .A1(b[7]), .A2(a[6]), .ZN(n264) );
  XOR2_X1 U4 ( .A(n265), .B(n264), .Z(n307) );
  NAND2_X1 U5 ( .A1(b[0]), .A2(a[0]), .ZN(n283) );
  NAND2_X1 U6 ( .A1(a[5]), .A2(b[3]), .ZN(n267) );
  NAND2_X1 U7 ( .A1(b[1]), .A2(a[7]), .ZN(n266) );
  XOR2_X1 U8 ( .A(n267), .B(n266), .Z(n271) );
  NAND2_X1 U9 ( .A1(b[4]), .A2(a[4]), .ZN(n269) );
  NAND2_X1 U10 ( .A1(b[5]), .A2(a[3]), .ZN(n268) );
  XOR2_X1 U11 ( .A(n269), .B(n268), .Z(n270) );
  XOR2_X1 U12 ( .A(n271), .B(n270), .Z(n273) );
  NAND2_X1 U13 ( .A1(a[1]), .A2(b[7]), .ZN(n272) );
  XNOR2_X1 U14 ( .A(n273), .B(n272), .ZN(n277) );
  NAND2_X1 U15 ( .A1(b[6]), .A2(a[2]), .ZN(n275) );
  NAND2_X1 U16 ( .A1(b[2]), .A2(a[6]), .ZN(n274) );
  XNOR2_X1 U17 ( .A(n275), .B(n274), .ZN(n276) );
  XNOR2_X1 U18 ( .A(n277), .B(n276), .ZN(n335) );
  NAND2_X1 U19 ( .A1(b[5]), .A2(a[7]), .ZN(n281) );
  NAND2_X1 U20 ( .A1(a[5]), .A2(b[7]), .ZN(n279) );
  NAND2_X1 U21 ( .A1(b[6]), .A2(a[6]), .ZN(n278) );
  XNOR2_X1 U22 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U23 ( .A(n281), .B(n280), .ZN(n375) );
  XOR2_X1 U24 ( .A(n335), .B(n375), .Z(n282) );
  XNOR2_X1 U25 ( .A(n283), .B(n282), .ZN(n284) );
  XNOR2_X1 U26 ( .A(n307), .B(n284), .ZN(result[0]) );
  NAND2_X1 U27 ( .A1(b[1]), .A2(a[2]), .ZN(n286) );
  NAND2_X1 U28 ( .A1(b[0]), .A2(a[3]), .ZN(n285) );
  XOR2_X1 U29 ( .A(n286), .B(n285), .Z(n290) );
  NAND2_X1 U30 ( .A1(b[2]), .A2(a[1]), .ZN(n288) );
  NAND2_X1 U31 ( .A1(a[0]), .A2(b[3]), .ZN(n287) );
  XOR2_X1 U32 ( .A(n288), .B(n287), .Z(n289) );
  XOR2_X1 U33 ( .A(n290), .B(n289), .Z(n298) );
  NAND2_X1 U34 ( .A1(a[5]), .A2(b[6]), .ZN(n292) );
  NAND2_X1 U35 ( .A1(a[4]), .A2(b[7]), .ZN(n291) );
  XOR2_X1 U36 ( .A(n292), .B(n291), .Z(n296) );
  NAND2_X1 U37 ( .A1(b[4]), .A2(a[7]), .ZN(n294) );
  NAND2_X1 U38 ( .A1(b[5]), .A2(a[6]), .ZN(n293) );
  XNOR2_X1 U39 ( .A(n294), .B(n293), .ZN(n295) );
  XNOR2_X1 U40 ( .A(n296), .B(n295), .ZN(n381) );
  NAND2_X1 U41 ( .A1(b[7]), .A2(a[7]), .ZN(n350) );
  XNOR2_X1 U42 ( .A(n350), .B(n375), .ZN(n336) );
  XNOR2_X1 U43 ( .A(n381), .B(n336), .ZN(n324) );
  XNOR2_X1 U44 ( .A(n335), .B(n324), .ZN(n297) );
  XNOR2_X1 U45 ( .A(n298), .B(n297), .ZN(n308) );
  NAND2_X1 U46 ( .A1(b[3]), .A2(a[7]), .ZN(n306) );
  NAND2_X1 U47 ( .A1(b[6]), .A2(a[4]), .ZN(n302) );
  NAND2_X1 U48 ( .A1(b[5]), .A2(a[5]), .ZN(n300) );
  NAND2_X1 U49 ( .A1(a[3]), .A2(b[7]), .ZN(n299) );
  XOR2_X1 U50 ( .A(n300), .B(n299), .Z(n301) );
  XNOR2_X1 U51 ( .A(n302), .B(n301), .ZN(n304) );
  NAND2_X1 U52 ( .A1(a[6]), .A2(b[4]), .ZN(n303) );
  XNOR2_X1 U53 ( .A(n304), .B(n303), .ZN(n305) );
  XNOR2_X1 U54 ( .A(n306), .B(n305), .ZN(n373) );
  XNOR2_X1 U55 ( .A(n307), .B(n373), .ZN(n389) );
  XNOR2_X1 U56 ( .A(n308), .B(n389), .ZN(result[3]) );
  NAND2_X1 U57 ( .A1(b[2]), .A2(a[5]), .ZN(n310) );
  NAND2_X1 U58 ( .A1(b[0]), .A2(a[7]), .ZN(n309) );
  XOR2_X1 U59 ( .A(n310), .B(n309), .Z(n314) );
  NAND2_X1 U60 ( .A1(a[4]), .A2(b[3]), .ZN(n312) );
  NAND2_X1 U61 ( .A1(b[1]), .A2(a[6]), .ZN(n311) );
  XOR2_X1 U62 ( .A(n312), .B(n311), .Z(n313) );
  XOR2_X1 U63 ( .A(n314), .B(n313), .Z(n322) );
  NAND2_X1 U64 ( .A1(a[2]), .A2(b[5]), .ZN(n316) );
  NAND2_X1 U65 ( .A1(b[4]), .A2(a[3]), .ZN(n315) );
  XOR2_X1 U66 ( .A(n316), .B(n315), .Z(n320) );
  NAND2_X1 U67 ( .A1(a[1]), .A2(b[6]), .ZN(n318) );
  NAND2_X1 U68 ( .A1(a[0]), .A2(b[7]), .ZN(n317) );
  XOR2_X1 U69 ( .A(n318), .B(n317), .Z(n319) );
  XNOR2_X1 U70 ( .A(n320), .B(n319), .ZN(n321) );
  XNOR2_X1 U71 ( .A(n322), .B(n321), .ZN(n323) );
  XOR2_X1 U72 ( .A(n324), .B(n323), .Z(result[7]) );
  NAND2_X1 U73 ( .A1(a[4]), .A2(b[5]), .ZN(n326) );
  NAND2_X1 U74 ( .A1(b[2]), .A2(a[7]), .ZN(n325) );
  XOR2_X1 U75 ( .A(n326), .B(n325), .Z(n330) );
  NAND2_X1 U76 ( .A1(a[3]), .A2(b[6]), .ZN(n328) );
  NAND2_X1 U77 ( .A1(b[3]), .A2(a[6]), .ZN(n327) );
  XOR2_X1 U78 ( .A(n328), .B(n327), .Z(n329) );
  XNOR2_X1 U79 ( .A(n330), .B(n329), .ZN(n334) );
  NAND2_X1 U80 ( .A1(a[5]), .A2(b[4]), .ZN(n332) );
  NAND2_X1 U81 ( .A1(a[2]), .A2(b[7]), .ZN(n331) );
  XNOR2_X1 U82 ( .A(n332), .B(n331), .ZN(n333) );
  XNOR2_X1 U83 ( .A(n334), .B(n333), .ZN(n369) );
  XNOR2_X1 U84 ( .A(n335), .B(n369), .ZN(n354) );
  XNOR2_X1 U85 ( .A(n354), .B(n336), .ZN(n340) );
  NAND2_X1 U86 ( .A1(a[0]), .A2(b[1]), .ZN(n338) );
  NAND2_X1 U87 ( .A1(b[0]), .A2(a[1]), .ZN(n337) );
  XNOR2_X1 U88 ( .A(n338), .B(n337), .ZN(n339) );
  XNOR2_X1 U89 ( .A(n340), .B(n339), .ZN(result[1]) );
  NAND2_X1 U90 ( .A1(a[1]), .A2(b[1]), .ZN(n343) );
  NAND2_X1 U91 ( .A1(a[0]), .A2(b[2]), .ZN(n341) );
  XOR2_X1 U92 ( .A(n369), .B(n341), .Z(n342) );
  XNOR2_X1 U93 ( .A(n343), .B(n342), .ZN(n345) );
  NAND2_X1 U94 ( .A1(b[0]), .A2(a[2]), .ZN(n344) );
  XNOR2_X1 U95 ( .A(n345), .B(n344), .ZN(n346) );
  XNOR2_X1 U96 ( .A(n346), .B(n389), .ZN(result[2]) );
  NAND2_X1 U97 ( .A1(b[2]), .A2(a[2]), .ZN(n348) );
  NAND2_X1 U98 ( .A1(b[1]), .A2(a[3]), .ZN(n347) );
  XOR2_X1 U99 ( .A(n348), .B(n347), .Z(n349) );
  XNOR2_X1 U100 ( .A(n350), .B(n349), .ZN(n352) );
  NAND2_X1 U101 ( .A1(b[3]), .A2(a[1]), .ZN(n351) );
  XNOR2_X1 U102 ( .A(n352), .B(n351), .ZN(n353) );
  XNOR2_X1 U103 ( .A(n354), .B(n353), .ZN(n358) );
  NAND2_X1 U104 ( .A1(a[0]), .A2(b[4]), .ZN(n356) );
  NAND2_X1 U105 ( .A1(b[0]), .A2(a[4]), .ZN(n355) );
  XNOR2_X1 U106 ( .A(n356), .B(n355), .ZN(n357) );
  XNOR2_X1 U107 ( .A(n358), .B(n357), .ZN(n359) );
  XNOR2_X1 U108 ( .A(n381), .B(n359), .ZN(result[4]) );
  NAND2_X1 U109 ( .A1(b[2]), .A2(a[3]), .ZN(n361) );
  NAND2_X1 U110 ( .A1(a[2]), .A2(b[3]), .ZN(n360) );
  XOR2_X1 U111 ( .A(n361), .B(n360), .Z(n365) );
  NAND2_X1 U112 ( .A1(b[1]), .A2(a[4]), .ZN(n363) );
  NAND2_X1 U113 ( .A1(b[0]), .A2(a[5]), .ZN(n362) );
  XOR2_X1 U114 ( .A(n363), .B(n362), .Z(n364) );
  XOR2_X1 U115 ( .A(n365), .B(n364), .Z(n367) );
  NAND2_X1 U116 ( .A1(a[1]), .A2(b[4]), .ZN(n366) );
  XNOR2_X1 U117 ( .A(n367), .B(n366), .ZN(n368) );
  XNOR2_X1 U118 ( .A(n369), .B(n368), .ZN(n371) );
  NAND2_X1 U119 ( .A1(a[0]), .A2(b[5]), .ZN(n370) );
  XNOR2_X1 U120 ( .A(n371), .B(n370), .ZN(n372) );
  XOR2_X1 U121 ( .A(n373), .B(n372), .Z(n374) );
  XNOR2_X1 U122 ( .A(n375), .B(n374), .ZN(result[5]) );
  NAND2_X1 U123 ( .A1(a[2]), .A2(b[4]), .ZN(n377) );
  NAND2_X1 U124 ( .A1(a[0]), .A2(b[6]), .ZN(n376) );
  XOR2_X1 U125 ( .A(n377), .B(n376), .Z(n385) );
  NAND2_X1 U126 ( .A1(b[1]), .A2(a[5]), .ZN(n379) );
  NAND2_X1 U127 ( .A1(a[3]), .A2(b[3]), .ZN(n378) );
  XOR2_X1 U128 ( .A(n379), .B(n378), .Z(n380) );
  XOR2_X1 U129 ( .A(n381), .B(n380), .Z(n383) );
  NAND2_X1 U130 ( .A1(b[0]), .A2(a[6]), .ZN(n382) );
  XNOR2_X1 U131 ( .A(n383), .B(n382), .ZN(n384) );
  XNOR2_X1 U132 ( .A(n385), .B(n384), .ZN(n391) );
  NAND2_X1 U133 ( .A1(b[2]), .A2(a[4]), .ZN(n387) );
  NAND2_X1 U134 ( .A1(a[1]), .A2(b[5]), .ZN(n386) );
  XOR2_X1 U135 ( .A(n387), .B(n386), .Z(n388) );
  XNOR2_X1 U136 ( .A(n389), .B(n388), .ZN(n390) );
  XNOR2_X1 U137 ( .A(n391), .B(n390), .ZN(result[6]) );
endmodule


module register_N8_7 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N8_6 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N8_5 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module inversion ( X, Out );
  input [0:7] X;
  output [7:0] Out;
  wire   n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255;

  INV_X1 U1 ( .A(X[5]), .ZN(n103) );
  XNOR2_X1 U2 ( .A(n103), .B(X[0]), .ZN(n152) );
  XNOR2_X1 U3 ( .A(X[2]), .B(X[0]), .ZN(n151) );
  XOR2_X1 U4 ( .A(X[3]), .B(X[1]), .Z(n112) );
  XNOR2_X1 U5 ( .A(X[2]), .B(n112), .ZN(n98) );
  XNOR2_X1 U6 ( .A(n98), .B(X[7]), .ZN(n154) );
  NAND2_X1 U7 ( .A1(X[7]), .A2(n154), .ZN(n149) );
  XOR2_X1 U8 ( .A(X[4]), .B(X[6]), .Z(n113) );
  XOR2_X1 U9 ( .A(n103), .B(n113), .Z(n209) );
  XOR2_X1 U10 ( .A(X[0]), .B(X[3]), .Z(n190) );
  INV_X1 U11 ( .A(n209), .ZN(n117) );
  XOR2_X1 U12 ( .A(X[1]), .B(n117), .Z(n189) );
  NAND2_X1 U13 ( .A1(n190), .A2(n189), .ZN(n106) );
  XOR2_X1 U14 ( .A(n209), .B(n106), .Z(n115) );
  XNOR2_X1 U15 ( .A(n113), .B(n190), .ZN(n206) );
  XOR2_X1 U16 ( .A(n103), .B(X[6]), .Z(n99) );
  XOR2_X1 U17 ( .A(n99), .B(n190), .Z(n158) );
  NOR2_X1 U18 ( .A1(n206), .A2(n158), .ZN(n100) );
  XOR2_X1 U19 ( .A(n100), .B(n112), .Z(n172) );
  XOR2_X1 U20 ( .A(n115), .B(n172), .Z(n125) );
  XOR2_X1 U21 ( .A(X[0]), .B(n125), .Z(n168) );
  INV_X1 U22 ( .A(n151), .ZN(n118) );
  XOR2_X1 U23 ( .A(n103), .B(X[3]), .Z(n180) );
  NOR2_X1 U24 ( .A1(n118), .A2(n180), .ZN(n169) );
  XOR2_X1 U25 ( .A(n103), .B(n151), .Z(n194) );
  XNOR2_X1 U26 ( .A(X[6]), .B(n194), .ZN(n101) );
  XOR2_X1 U27 ( .A(X[1]), .B(X[7]), .Z(n116) );
  XOR2_X1 U28 ( .A(n101), .B(n116), .Z(n214) );
  XOR2_X1 U29 ( .A(n206), .B(X[7]), .Z(n201) );
  NOR2_X1 U30 ( .A1(n214), .A2(n201), .ZN(n139) );
  XOR2_X1 U31 ( .A(n169), .B(n139), .Z(n133) );
  INV_X1 U32 ( .A(n133), .ZN(n102) );
  XOR2_X1 U33 ( .A(n168), .B(n102), .Z(n111) );
  NOR2_X1 U34 ( .A1(X[3]), .A2(n118), .ZN(n105) );
  NOR2_X1 U35 ( .A1(n103), .A2(n151), .ZN(n104) );
  NOR2_X1 U36 ( .A1(n105), .A2(n104), .ZN(n107) );
  XNOR2_X1 U37 ( .A(n107), .B(n106), .ZN(n108) );
  XOR2_X1 U38 ( .A(X[4]), .B(n108), .Z(n157) );
  XOR2_X1 U39 ( .A(X[2]), .B(n209), .Z(n171) );
  XNOR2_X1 U40 ( .A(X[6]), .B(X[0]), .ZN(n182) );
  NOR2_X1 U41 ( .A1(n171), .A2(n182), .ZN(n156) );
  XOR2_X1 U42 ( .A(n157), .B(n156), .Z(n109) );
  INV_X1 U43 ( .A(n116), .ZN(n208) );
  XOR2_X1 U44 ( .A(X[2]), .B(n208), .Z(n186) );
  NOR2_X1 U45 ( .A1(X[6]), .A2(n186), .ZN(n143) );
  XNOR2_X1 U46 ( .A(n109), .B(n143), .ZN(n110) );
  OR2_X1 U47 ( .A1(n111), .A2(n110), .ZN(n141) );
  XNOR2_X1 U48 ( .A(n113), .B(n112), .ZN(n114) );
  XOR2_X1 U49 ( .A(n114), .B(n151), .Z(n203) );
  NAND2_X1 U50 ( .A1(n203), .A2(n152), .ZN(n126) );
  XOR2_X1 U51 ( .A(n151), .B(n126), .Z(n132) );
  XNOR2_X1 U52 ( .A(n115), .B(n132), .ZN(n121) );
  NAND2_X1 U53 ( .A1(n116), .A2(n151), .ZN(n230) );
  NOR2_X1 U54 ( .A1(n117), .A2(n230), .ZN(n120) );
  NAND2_X1 U55 ( .A1(n118), .A2(n208), .ZN(n231) );
  NOR2_X1 U56 ( .A1(n231), .A2(n209), .ZN(n119) );
  NOR2_X1 U57 ( .A1(n120), .A2(n119), .ZN(n145) );
  XOR2_X1 U58 ( .A(n145), .B(n156), .Z(n159) );
  XOR2_X1 U59 ( .A(n121), .B(n159), .Z(n153) );
  INV_X1 U60 ( .A(n186), .ZN(n122) );
  NOR2_X1 U61 ( .A1(n122), .A2(X[6]), .ZN(n123) );
  XNOR2_X1 U62 ( .A(n169), .B(n126), .ZN(n200) );
  XNOR2_X1 U63 ( .A(n123), .B(n200), .ZN(n124) );
  XNOR2_X1 U64 ( .A(n145), .B(n124), .ZN(n130) );
  XOR2_X1 U65 ( .A(n141), .B(n149), .Z(n128) );
  XNOR2_X1 U66 ( .A(X[2]), .B(n125), .ZN(n127) );
  XOR2_X1 U67 ( .A(n127), .B(n126), .Z(n137) );
  XOR2_X1 U68 ( .A(n128), .B(n137), .Z(n129) );
  NAND2_X1 U69 ( .A1(n130), .A2(n129), .ZN(n164) );
  NAND2_X1 U70 ( .A1(n153), .A2(n164), .ZN(n131) );
  NAND2_X1 U71 ( .A1(n141), .A2(n131), .ZN(n138) );
  XOR2_X1 U72 ( .A(n141), .B(n153), .Z(n135) );
  XNOR2_X1 U73 ( .A(n132), .B(n149), .ZN(n185) );
  XNOR2_X1 U74 ( .A(n133), .B(n185), .ZN(n134) );
  NOR2_X1 U75 ( .A1(n135), .A2(n134), .ZN(n167) );
  XOR2_X1 U76 ( .A(n149), .B(n167), .Z(n160) );
  INV_X1 U77 ( .A(n160), .ZN(n136) );
  XOR2_X1 U78 ( .A(n137), .B(n136), .Z(n232) );
  NAND2_X1 U79 ( .A1(n138), .A2(n232), .ZN(n140) );
  XNOR2_X1 U80 ( .A(n140), .B(n139), .ZN(n173) );
  NAND2_X1 U81 ( .A1(n141), .A2(n164), .ZN(n142) );
  NAND2_X1 U82 ( .A1(n142), .A2(n153), .ZN(n144) );
  XNOR2_X1 U83 ( .A(n144), .B(n143), .ZN(n155) );
  XNOR2_X1 U84 ( .A(n155), .B(n164), .ZN(n147) );
  XNOR2_X1 U85 ( .A(X[6]), .B(n145), .ZN(n146) );
  XNOR2_X1 U86 ( .A(n147), .B(n146), .ZN(n199) );
  XOR2_X1 U87 ( .A(n173), .B(n199), .Z(n148) );
  XNOR2_X1 U88 ( .A(n149), .B(n148), .ZN(n150) );
  XOR2_X1 U89 ( .A(n151), .B(n150), .Z(n202) );
  NAND2_X1 U90 ( .A1(n152), .A2(n202), .ZN(n249) );
  XNOR2_X1 U91 ( .A(n153), .B(n164), .ZN(n213) );
  NAND2_X1 U92 ( .A1(n154), .A2(n213), .ZN(n239) );
  XOR2_X1 U93 ( .A(n249), .B(n239), .Z(n219) );
  XNOR2_X1 U94 ( .A(n156), .B(n155), .ZN(n178) );
  XOR2_X1 U95 ( .A(n157), .B(n178), .Z(n205) );
  NOR2_X1 U96 ( .A1(n158), .A2(n205), .ZN(n246) );
  XOR2_X1 U97 ( .A(n219), .B(n246), .Z(n166) );
  XNOR2_X1 U98 ( .A(n160), .B(n159), .ZN(n162) );
  XNOR2_X1 U99 ( .A(X[0]), .B(n172), .ZN(n161) );
  XNOR2_X1 U100 ( .A(n162), .B(n161), .ZN(n163) );
  XOR2_X1 U101 ( .A(n164), .B(n163), .Z(n191) );
  NAND2_X1 U102 ( .A1(n190), .A2(n191), .ZN(n165) );
  XNOR2_X1 U103 ( .A(n166), .B(n165), .ZN(Out[0]) );
  INV_X1 U104 ( .A(n167), .ZN(n177) );
  XOR2_X1 U105 ( .A(n168), .B(n177), .Z(n170) );
  XOR2_X1 U106 ( .A(n169), .B(n173), .Z(n184) );
  XOR2_X1 U107 ( .A(n170), .B(n184), .Z(n181) );
  NOR2_X1 U108 ( .A1(n171), .A2(n181), .ZN(n245) );
  XOR2_X1 U109 ( .A(n173), .B(n172), .Z(n175) );
  XNOR2_X1 U110 ( .A(X[2]), .B(X[6]), .ZN(n174) );
  XNOR2_X1 U111 ( .A(n175), .B(n174), .ZN(n176) );
  XOR2_X1 U112 ( .A(n177), .B(n176), .Z(n179) );
  XNOR2_X1 U113 ( .A(n179), .B(n178), .ZN(n196) );
  NOR2_X1 U114 ( .A1(n180), .A2(n196), .ZN(n183) );
  NOR2_X1 U115 ( .A1(n182), .A2(n181), .ZN(n222) );
  XNOR2_X1 U116 ( .A(n183), .B(n222), .ZN(n207) );
  XNOR2_X1 U117 ( .A(n245), .B(n207), .ZN(n253) );
  XNOR2_X1 U118 ( .A(n185), .B(n184), .ZN(n187) );
  NOR2_X1 U119 ( .A1(n186), .A2(n187), .ZN(n218) );
  XNOR2_X1 U120 ( .A(n253), .B(n218), .ZN(n198) );
  XOR2_X1 U121 ( .A(n186), .B(X[6]), .Z(n188) );
  NOR2_X1 U122 ( .A1(n188), .A2(n187), .ZN(n193) );
  XOR2_X1 U123 ( .A(n190), .B(n189), .Z(n192) );
  NAND2_X1 U124 ( .A1(n192), .A2(n191), .ZN(n236) );
  XNOR2_X1 U125 ( .A(n193), .B(n236), .ZN(n204) );
  XNOR2_X1 U126 ( .A(n194), .B(X[3]), .ZN(n195) );
  NOR2_X1 U127 ( .A1(n196), .A2(n195), .ZN(n197) );
  XOR2_X1 U128 ( .A(n204), .B(n197), .Z(n221) );
  XNOR2_X1 U129 ( .A(n198), .B(n221), .ZN(Out[1]) );
  XOR2_X1 U130 ( .A(n200), .B(n199), .Z(n215) );
  NOR2_X1 U131 ( .A1(n215), .A2(n201), .ZN(n237) );
  NAND2_X1 U132 ( .A1(n203), .A2(n202), .ZN(n241) );
  XOR2_X1 U133 ( .A(n204), .B(n241), .Z(n254) );
  XNOR2_X1 U134 ( .A(n237), .B(n254), .ZN(n244) );
  NOR2_X1 U135 ( .A1(n206), .A2(n205), .ZN(n220) );
  XNOR2_X1 U136 ( .A(n220), .B(n207), .ZN(n227) );
  XNOR2_X1 U137 ( .A(n244), .B(n227), .ZN(n211) );
  XOR2_X1 U138 ( .A(n209), .B(n208), .Z(n210) );
  NAND2_X1 U139 ( .A1(n210), .A2(n232), .ZN(n252) );
  XNOR2_X1 U140 ( .A(n211), .B(n252), .ZN(n212) );
  XNOR2_X1 U141 ( .A(n218), .B(n212), .ZN(Out[2]) );
  NAND2_X1 U142 ( .A1(X[7]), .A2(n213), .ZN(n228) );
  NOR2_X1 U143 ( .A1(n215), .A2(n214), .ZN(n216) );
  XOR2_X1 U144 ( .A(n228), .B(n216), .Z(n217) );
  XNOR2_X1 U145 ( .A(n218), .B(n217), .ZN(n234) );
  XNOR2_X1 U146 ( .A(n234), .B(n219), .ZN(n226) );
  XNOR2_X1 U147 ( .A(n252), .B(n220), .ZN(n224) );
  XNOR2_X1 U148 ( .A(n222), .B(n221), .ZN(n223) );
  XNOR2_X1 U149 ( .A(n224), .B(n223), .ZN(n225) );
  XNOR2_X1 U150 ( .A(n226), .B(n225), .ZN(Out[3]) );
  XNOR2_X1 U151 ( .A(n227), .B(n254), .ZN(n229) );
  XNOR2_X1 U152 ( .A(n229), .B(n228), .ZN(Out[4]) );
  NAND2_X1 U153 ( .A1(n231), .A2(n230), .ZN(n233) );
  NAND2_X1 U154 ( .A1(n233), .A2(n232), .ZN(n235) );
  XNOR2_X1 U155 ( .A(n235), .B(n234), .ZN(n247) );
  XOR2_X1 U156 ( .A(n237), .B(n236), .Z(n238) );
  XNOR2_X1 U157 ( .A(n239), .B(n238), .ZN(n240) );
  XOR2_X1 U158 ( .A(n241), .B(n240), .Z(n242) );
  XNOR2_X1 U159 ( .A(n247), .B(n242), .ZN(n243) );
  XNOR2_X1 U160 ( .A(n253), .B(n243), .ZN(Out[5]) );
  XNOR2_X1 U161 ( .A(n245), .B(n244), .ZN(n251) );
  XOR2_X1 U162 ( .A(n247), .B(n246), .Z(n248) );
  XNOR2_X1 U163 ( .A(n249), .B(n248), .ZN(n250) );
  XNOR2_X1 U164 ( .A(n251), .B(n250), .ZN(Out[6]) );
  XNOR2_X1 U165 ( .A(n253), .B(n252), .ZN(n255) );
  XNOR2_X1 U166 ( .A(n255), .B(n254), .ZN(Out[7]) );
endmodule


module register_N8_4 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N8_3 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N8_2 ( in, clk, out );
  input [7:0] in;
  output [7:0] out;
  input clk;


  DFF_X1 r_out_reg_7_ ( .D(in[7]), .CK(clk), .Q(out[7]), .QN() );
  DFF_X1 r_out_reg_6_ ( .D(in[6]), .CK(clk), .Q(out[6]), .QN() );
  DFF_X1 r_out_reg_5_ ( .D(in[5]), .CK(clk), .Q(out[5]), .QN() );
  DFF_X1 r_out_reg_4_ ( .D(in[4]), .CK(clk), .Q(out[4]), .QN() );
  DFF_X1 r_out_reg_3_ ( .D(in[3]), .CK(clk), .Q(out[3]), .QN() );
  DFF_X1 r_out_reg_2_ ( .D(in[2]), .CK(clk), .Q(out[2]), .QN() );
  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module gf256_multiplier_2 ( a, b, result );
  input [7:0] a;
  input [7:0] b;
  output [7:0] result;
  wire   n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391;

  NAND2_X1 U2 ( .A1(a[7]), .A2(b[6]), .ZN(n265) );
  NAND2_X1 U3 ( .A1(b[7]), .A2(a[6]), .ZN(n264) );
  XOR2_X1 U4 ( .A(n265), .B(n264), .Z(n307) );
  NAND2_X1 U5 ( .A1(b[0]), .A2(a[0]), .ZN(n283) );
  NAND2_X1 U6 ( .A1(a[5]), .A2(b[3]), .ZN(n267) );
  NAND2_X1 U7 ( .A1(b[1]), .A2(a[7]), .ZN(n266) );
  XOR2_X1 U8 ( .A(n267), .B(n266), .Z(n271) );
  NAND2_X1 U9 ( .A1(b[4]), .A2(a[4]), .ZN(n269) );
  NAND2_X1 U10 ( .A1(b[5]), .A2(a[3]), .ZN(n268) );
  XOR2_X1 U11 ( .A(n269), .B(n268), .Z(n270) );
  XOR2_X1 U12 ( .A(n271), .B(n270), .Z(n273) );
  NAND2_X1 U13 ( .A1(a[1]), .A2(b[7]), .ZN(n272) );
  XNOR2_X1 U14 ( .A(n273), .B(n272), .ZN(n277) );
  NAND2_X1 U15 ( .A1(b[6]), .A2(a[2]), .ZN(n275) );
  NAND2_X1 U16 ( .A1(b[2]), .A2(a[6]), .ZN(n274) );
  XNOR2_X1 U17 ( .A(n275), .B(n274), .ZN(n276) );
  XNOR2_X1 U18 ( .A(n277), .B(n276), .ZN(n335) );
  NAND2_X1 U19 ( .A1(b[5]), .A2(a[7]), .ZN(n281) );
  NAND2_X1 U20 ( .A1(a[5]), .A2(b[7]), .ZN(n279) );
  NAND2_X1 U21 ( .A1(b[6]), .A2(a[6]), .ZN(n278) );
  XNOR2_X1 U22 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U23 ( .A(n281), .B(n280), .ZN(n375) );
  XOR2_X1 U24 ( .A(n335), .B(n375), .Z(n282) );
  XNOR2_X1 U25 ( .A(n283), .B(n282), .ZN(n284) );
  XNOR2_X1 U26 ( .A(n307), .B(n284), .ZN(result[0]) );
  NAND2_X1 U27 ( .A1(b[1]), .A2(a[2]), .ZN(n286) );
  NAND2_X1 U28 ( .A1(b[0]), .A2(a[3]), .ZN(n285) );
  XOR2_X1 U29 ( .A(n286), .B(n285), .Z(n290) );
  NAND2_X1 U30 ( .A1(b[2]), .A2(a[1]), .ZN(n288) );
  NAND2_X1 U31 ( .A1(a[0]), .A2(b[3]), .ZN(n287) );
  XOR2_X1 U32 ( .A(n288), .B(n287), .Z(n289) );
  XOR2_X1 U33 ( .A(n290), .B(n289), .Z(n298) );
  NAND2_X1 U34 ( .A1(a[5]), .A2(b[6]), .ZN(n292) );
  NAND2_X1 U35 ( .A1(a[4]), .A2(b[7]), .ZN(n291) );
  XOR2_X1 U36 ( .A(n292), .B(n291), .Z(n296) );
  NAND2_X1 U37 ( .A1(b[4]), .A2(a[7]), .ZN(n294) );
  NAND2_X1 U38 ( .A1(b[5]), .A2(a[6]), .ZN(n293) );
  XNOR2_X1 U39 ( .A(n294), .B(n293), .ZN(n295) );
  XNOR2_X1 U40 ( .A(n296), .B(n295), .ZN(n381) );
  NAND2_X1 U41 ( .A1(b[7]), .A2(a[7]), .ZN(n350) );
  XNOR2_X1 U42 ( .A(n350), .B(n375), .ZN(n336) );
  XNOR2_X1 U43 ( .A(n381), .B(n336), .ZN(n324) );
  XNOR2_X1 U44 ( .A(n335), .B(n324), .ZN(n297) );
  XNOR2_X1 U45 ( .A(n298), .B(n297), .ZN(n308) );
  NAND2_X1 U46 ( .A1(b[3]), .A2(a[7]), .ZN(n306) );
  NAND2_X1 U47 ( .A1(b[6]), .A2(a[4]), .ZN(n302) );
  NAND2_X1 U48 ( .A1(b[5]), .A2(a[5]), .ZN(n300) );
  NAND2_X1 U49 ( .A1(a[3]), .A2(b[7]), .ZN(n299) );
  XOR2_X1 U50 ( .A(n300), .B(n299), .Z(n301) );
  XNOR2_X1 U51 ( .A(n302), .B(n301), .ZN(n304) );
  NAND2_X1 U52 ( .A1(a[6]), .A2(b[4]), .ZN(n303) );
  XNOR2_X1 U53 ( .A(n304), .B(n303), .ZN(n305) );
  XNOR2_X1 U54 ( .A(n306), .B(n305), .ZN(n373) );
  XNOR2_X1 U55 ( .A(n307), .B(n373), .ZN(n389) );
  XNOR2_X1 U56 ( .A(n308), .B(n389), .ZN(result[3]) );
  NAND2_X1 U57 ( .A1(b[2]), .A2(a[5]), .ZN(n310) );
  NAND2_X1 U58 ( .A1(b[0]), .A2(a[7]), .ZN(n309) );
  XOR2_X1 U59 ( .A(n310), .B(n309), .Z(n314) );
  NAND2_X1 U60 ( .A1(a[4]), .A2(b[3]), .ZN(n312) );
  NAND2_X1 U61 ( .A1(b[1]), .A2(a[6]), .ZN(n311) );
  XOR2_X1 U62 ( .A(n312), .B(n311), .Z(n313) );
  XOR2_X1 U63 ( .A(n314), .B(n313), .Z(n322) );
  NAND2_X1 U64 ( .A1(a[2]), .A2(b[5]), .ZN(n316) );
  NAND2_X1 U65 ( .A1(b[4]), .A2(a[3]), .ZN(n315) );
  XOR2_X1 U66 ( .A(n316), .B(n315), .Z(n320) );
  NAND2_X1 U67 ( .A1(a[1]), .A2(b[6]), .ZN(n318) );
  NAND2_X1 U68 ( .A1(a[0]), .A2(b[7]), .ZN(n317) );
  XOR2_X1 U69 ( .A(n318), .B(n317), .Z(n319) );
  XNOR2_X1 U70 ( .A(n320), .B(n319), .ZN(n321) );
  XNOR2_X1 U71 ( .A(n322), .B(n321), .ZN(n323) );
  XOR2_X1 U72 ( .A(n324), .B(n323), .Z(result[7]) );
  NAND2_X1 U73 ( .A1(a[4]), .A2(b[5]), .ZN(n326) );
  NAND2_X1 U74 ( .A1(b[2]), .A2(a[7]), .ZN(n325) );
  XOR2_X1 U75 ( .A(n326), .B(n325), .Z(n330) );
  NAND2_X1 U76 ( .A1(a[3]), .A2(b[6]), .ZN(n328) );
  NAND2_X1 U77 ( .A1(b[3]), .A2(a[6]), .ZN(n327) );
  XOR2_X1 U78 ( .A(n328), .B(n327), .Z(n329) );
  XNOR2_X1 U79 ( .A(n330), .B(n329), .ZN(n334) );
  NAND2_X1 U80 ( .A1(a[5]), .A2(b[4]), .ZN(n332) );
  NAND2_X1 U81 ( .A1(a[2]), .A2(b[7]), .ZN(n331) );
  XNOR2_X1 U82 ( .A(n332), .B(n331), .ZN(n333) );
  XNOR2_X1 U83 ( .A(n334), .B(n333), .ZN(n369) );
  XNOR2_X1 U84 ( .A(n335), .B(n369), .ZN(n354) );
  XNOR2_X1 U85 ( .A(n354), .B(n336), .ZN(n340) );
  NAND2_X1 U86 ( .A1(a[0]), .A2(b[1]), .ZN(n338) );
  NAND2_X1 U87 ( .A1(b[0]), .A2(a[1]), .ZN(n337) );
  XNOR2_X1 U88 ( .A(n338), .B(n337), .ZN(n339) );
  XNOR2_X1 U89 ( .A(n340), .B(n339), .ZN(result[1]) );
  NAND2_X1 U90 ( .A1(a[1]), .A2(b[1]), .ZN(n343) );
  NAND2_X1 U91 ( .A1(a[0]), .A2(b[2]), .ZN(n341) );
  XOR2_X1 U92 ( .A(n369), .B(n341), .Z(n342) );
  XNOR2_X1 U93 ( .A(n343), .B(n342), .ZN(n345) );
  NAND2_X1 U94 ( .A1(b[0]), .A2(a[2]), .ZN(n344) );
  XNOR2_X1 U95 ( .A(n345), .B(n344), .ZN(n346) );
  XNOR2_X1 U96 ( .A(n346), .B(n389), .ZN(result[2]) );
  NAND2_X1 U97 ( .A1(b[2]), .A2(a[2]), .ZN(n348) );
  NAND2_X1 U98 ( .A1(b[1]), .A2(a[3]), .ZN(n347) );
  XOR2_X1 U99 ( .A(n348), .B(n347), .Z(n349) );
  XNOR2_X1 U100 ( .A(n350), .B(n349), .ZN(n352) );
  NAND2_X1 U101 ( .A1(b[3]), .A2(a[1]), .ZN(n351) );
  XNOR2_X1 U102 ( .A(n352), .B(n351), .ZN(n353) );
  XNOR2_X1 U103 ( .A(n354), .B(n353), .ZN(n358) );
  NAND2_X1 U104 ( .A1(a[0]), .A2(b[4]), .ZN(n356) );
  NAND2_X1 U105 ( .A1(b[0]), .A2(a[4]), .ZN(n355) );
  XNOR2_X1 U106 ( .A(n356), .B(n355), .ZN(n357) );
  XNOR2_X1 U107 ( .A(n358), .B(n357), .ZN(n359) );
  XNOR2_X1 U108 ( .A(n381), .B(n359), .ZN(result[4]) );
  NAND2_X1 U109 ( .A1(b[2]), .A2(a[3]), .ZN(n361) );
  NAND2_X1 U110 ( .A1(a[2]), .A2(b[3]), .ZN(n360) );
  XOR2_X1 U111 ( .A(n361), .B(n360), .Z(n365) );
  NAND2_X1 U112 ( .A1(b[1]), .A2(a[4]), .ZN(n363) );
  NAND2_X1 U113 ( .A1(b[0]), .A2(a[5]), .ZN(n362) );
  XOR2_X1 U114 ( .A(n363), .B(n362), .Z(n364) );
  XOR2_X1 U115 ( .A(n365), .B(n364), .Z(n367) );
  NAND2_X1 U116 ( .A1(a[1]), .A2(b[4]), .ZN(n366) );
  XNOR2_X1 U117 ( .A(n367), .B(n366), .ZN(n368) );
  XNOR2_X1 U118 ( .A(n369), .B(n368), .ZN(n371) );
  NAND2_X1 U119 ( .A1(a[0]), .A2(b[5]), .ZN(n370) );
  XNOR2_X1 U120 ( .A(n371), .B(n370), .ZN(n372) );
  XOR2_X1 U121 ( .A(n373), .B(n372), .Z(n374) );
  XNOR2_X1 U122 ( .A(n375), .B(n374), .ZN(result[5]) );
  NAND2_X1 U123 ( .A1(a[2]), .A2(b[4]), .ZN(n377) );
  NAND2_X1 U124 ( .A1(a[0]), .A2(b[6]), .ZN(n376) );
  XOR2_X1 U125 ( .A(n377), .B(n376), .Z(n385) );
  NAND2_X1 U126 ( .A1(b[1]), .A2(a[5]), .ZN(n379) );
  NAND2_X1 U127 ( .A1(a[3]), .A2(b[3]), .ZN(n378) );
  XOR2_X1 U128 ( .A(n379), .B(n378), .Z(n380) );
  XOR2_X1 U129 ( .A(n381), .B(n380), .Z(n383) );
  NAND2_X1 U130 ( .A1(b[0]), .A2(a[6]), .ZN(n382) );
  XNOR2_X1 U131 ( .A(n383), .B(n382), .ZN(n384) );
  XNOR2_X1 U132 ( .A(n385), .B(n384), .ZN(n391) );
  NAND2_X1 U133 ( .A1(b[2]), .A2(a[4]), .ZN(n387) );
  NAND2_X1 U134 ( .A1(a[1]), .A2(b[5]), .ZN(n386) );
  XOR2_X1 U135 ( .A(n387), .B(n386), .Z(n388) );
  XNOR2_X1 U136 ( .A(n389), .B(n388), .ZN(n390) );
  XNOR2_X1 U137 ( .A(n391), .B(n390), .ZN(result[6]) );
endmodule


module gf256_multiplier_1 ( a, b, result );
  input [7:0] a;
  input [7:0] b;
  output [7:0] result;
  wire   n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391;

  NAND2_X1 U2 ( .A1(a[7]), .A2(b[6]), .ZN(n265) );
  NAND2_X1 U3 ( .A1(b[7]), .A2(a[6]), .ZN(n264) );
  XOR2_X1 U4 ( .A(n265), .B(n264), .Z(n307) );
  NAND2_X1 U5 ( .A1(b[0]), .A2(a[0]), .ZN(n283) );
  NAND2_X1 U6 ( .A1(a[5]), .A2(b[3]), .ZN(n267) );
  NAND2_X1 U7 ( .A1(b[1]), .A2(a[7]), .ZN(n266) );
  XOR2_X1 U8 ( .A(n267), .B(n266), .Z(n271) );
  NAND2_X1 U9 ( .A1(b[4]), .A2(a[4]), .ZN(n269) );
  NAND2_X1 U10 ( .A1(b[5]), .A2(a[3]), .ZN(n268) );
  XOR2_X1 U11 ( .A(n269), .B(n268), .Z(n270) );
  XOR2_X1 U12 ( .A(n271), .B(n270), .Z(n273) );
  NAND2_X1 U13 ( .A1(a[1]), .A2(b[7]), .ZN(n272) );
  XNOR2_X1 U14 ( .A(n273), .B(n272), .ZN(n277) );
  NAND2_X1 U15 ( .A1(b[6]), .A2(a[2]), .ZN(n275) );
  NAND2_X1 U16 ( .A1(b[2]), .A2(a[6]), .ZN(n274) );
  XNOR2_X1 U17 ( .A(n275), .B(n274), .ZN(n276) );
  XNOR2_X1 U18 ( .A(n277), .B(n276), .ZN(n335) );
  NAND2_X1 U19 ( .A1(b[5]), .A2(a[7]), .ZN(n281) );
  NAND2_X1 U20 ( .A1(a[5]), .A2(b[7]), .ZN(n279) );
  NAND2_X1 U21 ( .A1(b[6]), .A2(a[6]), .ZN(n278) );
  XNOR2_X1 U22 ( .A(n279), .B(n278), .ZN(n280) );
  XNOR2_X1 U23 ( .A(n281), .B(n280), .ZN(n375) );
  XOR2_X1 U24 ( .A(n335), .B(n375), .Z(n282) );
  XNOR2_X1 U25 ( .A(n283), .B(n282), .ZN(n284) );
  XNOR2_X1 U26 ( .A(n307), .B(n284), .ZN(result[0]) );
  NAND2_X1 U27 ( .A1(b[1]), .A2(a[2]), .ZN(n286) );
  NAND2_X1 U28 ( .A1(b[0]), .A2(a[3]), .ZN(n285) );
  XOR2_X1 U29 ( .A(n286), .B(n285), .Z(n290) );
  NAND2_X1 U30 ( .A1(b[2]), .A2(a[1]), .ZN(n288) );
  NAND2_X1 U31 ( .A1(a[0]), .A2(b[3]), .ZN(n287) );
  XOR2_X1 U32 ( .A(n288), .B(n287), .Z(n289) );
  XOR2_X1 U33 ( .A(n290), .B(n289), .Z(n298) );
  NAND2_X1 U34 ( .A1(a[5]), .A2(b[6]), .ZN(n292) );
  NAND2_X1 U35 ( .A1(a[4]), .A2(b[7]), .ZN(n291) );
  XOR2_X1 U36 ( .A(n292), .B(n291), .Z(n296) );
  NAND2_X1 U37 ( .A1(b[4]), .A2(a[7]), .ZN(n294) );
  NAND2_X1 U38 ( .A1(b[5]), .A2(a[6]), .ZN(n293) );
  XNOR2_X1 U39 ( .A(n294), .B(n293), .ZN(n295) );
  XNOR2_X1 U40 ( .A(n296), .B(n295), .ZN(n381) );
  NAND2_X1 U41 ( .A1(b[7]), .A2(a[7]), .ZN(n350) );
  XNOR2_X1 U42 ( .A(n350), .B(n375), .ZN(n336) );
  XNOR2_X1 U43 ( .A(n381), .B(n336), .ZN(n324) );
  XNOR2_X1 U44 ( .A(n335), .B(n324), .ZN(n297) );
  XNOR2_X1 U45 ( .A(n298), .B(n297), .ZN(n308) );
  NAND2_X1 U46 ( .A1(b[3]), .A2(a[7]), .ZN(n306) );
  NAND2_X1 U47 ( .A1(b[6]), .A2(a[4]), .ZN(n302) );
  NAND2_X1 U48 ( .A1(b[5]), .A2(a[5]), .ZN(n300) );
  NAND2_X1 U49 ( .A1(a[3]), .A2(b[7]), .ZN(n299) );
  XOR2_X1 U50 ( .A(n300), .B(n299), .Z(n301) );
  XNOR2_X1 U51 ( .A(n302), .B(n301), .ZN(n304) );
  NAND2_X1 U52 ( .A1(a[6]), .A2(b[4]), .ZN(n303) );
  XNOR2_X1 U53 ( .A(n304), .B(n303), .ZN(n305) );
  XNOR2_X1 U54 ( .A(n306), .B(n305), .ZN(n373) );
  XNOR2_X1 U55 ( .A(n307), .B(n373), .ZN(n389) );
  XNOR2_X1 U56 ( .A(n308), .B(n389), .ZN(result[3]) );
  NAND2_X1 U57 ( .A1(b[2]), .A2(a[5]), .ZN(n310) );
  NAND2_X1 U58 ( .A1(b[0]), .A2(a[7]), .ZN(n309) );
  XOR2_X1 U59 ( .A(n310), .B(n309), .Z(n314) );
  NAND2_X1 U60 ( .A1(a[4]), .A2(b[3]), .ZN(n312) );
  NAND2_X1 U61 ( .A1(b[1]), .A2(a[6]), .ZN(n311) );
  XOR2_X1 U62 ( .A(n312), .B(n311), .Z(n313) );
  XOR2_X1 U63 ( .A(n314), .B(n313), .Z(n322) );
  NAND2_X1 U64 ( .A1(a[2]), .A2(b[5]), .ZN(n316) );
  NAND2_X1 U65 ( .A1(b[4]), .A2(a[3]), .ZN(n315) );
  XOR2_X1 U66 ( .A(n316), .B(n315), .Z(n320) );
  NAND2_X1 U67 ( .A1(a[1]), .A2(b[6]), .ZN(n318) );
  NAND2_X1 U68 ( .A1(a[0]), .A2(b[7]), .ZN(n317) );
  XOR2_X1 U69 ( .A(n318), .B(n317), .Z(n319) );
  XNOR2_X1 U70 ( .A(n320), .B(n319), .ZN(n321) );
  XNOR2_X1 U71 ( .A(n322), .B(n321), .ZN(n323) );
  XOR2_X1 U72 ( .A(n324), .B(n323), .Z(result[7]) );
  NAND2_X1 U73 ( .A1(a[4]), .A2(b[5]), .ZN(n326) );
  NAND2_X1 U74 ( .A1(b[2]), .A2(a[7]), .ZN(n325) );
  XOR2_X1 U75 ( .A(n326), .B(n325), .Z(n330) );
  NAND2_X1 U76 ( .A1(a[3]), .A2(b[6]), .ZN(n328) );
  NAND2_X1 U77 ( .A1(b[3]), .A2(a[6]), .ZN(n327) );
  XOR2_X1 U78 ( .A(n328), .B(n327), .Z(n329) );
  XNOR2_X1 U79 ( .A(n330), .B(n329), .ZN(n334) );
  NAND2_X1 U80 ( .A1(a[5]), .A2(b[4]), .ZN(n332) );
  NAND2_X1 U81 ( .A1(a[2]), .A2(b[7]), .ZN(n331) );
  XNOR2_X1 U82 ( .A(n332), .B(n331), .ZN(n333) );
  XNOR2_X1 U83 ( .A(n334), .B(n333), .ZN(n369) );
  XNOR2_X1 U84 ( .A(n335), .B(n369), .ZN(n354) );
  XNOR2_X1 U85 ( .A(n354), .B(n336), .ZN(n340) );
  NAND2_X1 U86 ( .A1(a[0]), .A2(b[1]), .ZN(n338) );
  NAND2_X1 U87 ( .A1(b[0]), .A2(a[1]), .ZN(n337) );
  XNOR2_X1 U88 ( .A(n338), .B(n337), .ZN(n339) );
  XNOR2_X1 U89 ( .A(n340), .B(n339), .ZN(result[1]) );
  NAND2_X1 U90 ( .A1(a[1]), .A2(b[1]), .ZN(n343) );
  NAND2_X1 U91 ( .A1(a[0]), .A2(b[2]), .ZN(n341) );
  XOR2_X1 U92 ( .A(n369), .B(n341), .Z(n342) );
  XNOR2_X1 U93 ( .A(n343), .B(n342), .ZN(n345) );
  NAND2_X1 U94 ( .A1(b[0]), .A2(a[2]), .ZN(n344) );
  XNOR2_X1 U95 ( .A(n345), .B(n344), .ZN(n346) );
  XNOR2_X1 U96 ( .A(n346), .B(n389), .ZN(result[2]) );
  NAND2_X1 U97 ( .A1(b[2]), .A2(a[2]), .ZN(n348) );
  NAND2_X1 U98 ( .A1(b[1]), .A2(a[3]), .ZN(n347) );
  XOR2_X1 U99 ( .A(n348), .B(n347), .Z(n349) );
  XNOR2_X1 U100 ( .A(n350), .B(n349), .ZN(n352) );
  NAND2_X1 U101 ( .A1(b[3]), .A2(a[1]), .ZN(n351) );
  XNOR2_X1 U102 ( .A(n352), .B(n351), .ZN(n353) );
  XNOR2_X1 U103 ( .A(n354), .B(n353), .ZN(n358) );
  NAND2_X1 U104 ( .A1(a[0]), .A2(b[4]), .ZN(n356) );
  NAND2_X1 U105 ( .A1(b[0]), .A2(a[4]), .ZN(n355) );
  XNOR2_X1 U106 ( .A(n356), .B(n355), .ZN(n357) );
  XNOR2_X1 U107 ( .A(n358), .B(n357), .ZN(n359) );
  XNOR2_X1 U108 ( .A(n381), .B(n359), .ZN(result[4]) );
  NAND2_X1 U109 ( .A1(b[2]), .A2(a[3]), .ZN(n361) );
  NAND2_X1 U110 ( .A1(a[2]), .A2(b[3]), .ZN(n360) );
  XOR2_X1 U111 ( .A(n361), .B(n360), .Z(n365) );
  NAND2_X1 U112 ( .A1(b[1]), .A2(a[4]), .ZN(n363) );
  NAND2_X1 U113 ( .A1(b[0]), .A2(a[5]), .ZN(n362) );
  XOR2_X1 U114 ( .A(n363), .B(n362), .Z(n364) );
  XOR2_X1 U115 ( .A(n365), .B(n364), .Z(n367) );
  NAND2_X1 U116 ( .A1(a[1]), .A2(b[4]), .ZN(n366) );
  XNOR2_X1 U117 ( .A(n367), .B(n366), .ZN(n368) );
  XNOR2_X1 U118 ( .A(n369), .B(n368), .ZN(n371) );
  NAND2_X1 U119 ( .A1(a[0]), .A2(b[5]), .ZN(n370) );
  XNOR2_X1 U120 ( .A(n371), .B(n370), .ZN(n372) );
  XOR2_X1 U121 ( .A(n373), .B(n372), .Z(n374) );
  XNOR2_X1 U122 ( .A(n375), .B(n374), .ZN(result[5]) );
  NAND2_X1 U123 ( .A1(a[2]), .A2(b[4]), .ZN(n377) );
  NAND2_X1 U124 ( .A1(a[0]), .A2(b[6]), .ZN(n376) );
  XOR2_X1 U125 ( .A(n377), .B(n376), .Z(n385) );
  NAND2_X1 U126 ( .A1(b[1]), .A2(a[5]), .ZN(n379) );
  NAND2_X1 U127 ( .A1(a[3]), .A2(b[3]), .ZN(n378) );
  XOR2_X1 U128 ( .A(n379), .B(n378), .Z(n380) );
  XOR2_X1 U129 ( .A(n381), .B(n380), .Z(n383) );
  NAND2_X1 U130 ( .A1(b[0]), .A2(a[6]), .ZN(n382) );
  XNOR2_X1 U131 ( .A(n383), .B(n382), .ZN(n384) );
  XNOR2_X1 U132 ( .A(n385), .B(n384), .ZN(n391) );
  NAND2_X1 U133 ( .A1(b[2]), .A2(a[4]), .ZN(n387) );
  NAND2_X1 U134 ( .A1(a[1]), .A2(b[5]), .ZN(n386) );
  XOR2_X1 U135 ( .A(n387), .B(n386), .Z(n388) );
  XNOR2_X1 U136 ( .A(n389), .B(n388), .ZN(n390) );
  XNOR2_X1 U137 ( .A(n391), .B(n390), .ZN(result[6]) );
endmodule


module register_N2_0 ( in, clk, out );
  input [1:0] in;
  output [1:0] out;
  input clk;


  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module register_N2_1 ( in, clk, out );
  input [1:0] in;
  output [1:0] out;
  input clk;


  DFF_X1 r_out_reg_1_ ( .D(in[1]), .CK(clk), .Q(out[1]), .QN() );
  DFF_X1 r_out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module linear_mapping_0 ( b, out );
  input [7:0] b;
  output [7:0] out;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XNOR2_X1 U1 ( .A(b[3]), .B(b[4]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(b[2]), .B(n8), .ZN(n7) );
  XNOR2_X1 U3 ( .A(b[5]), .B(n7), .ZN(n1) );
  XNOR2_X1 U4 ( .A(b[1]), .B(n1), .ZN(out[5]) );
  XNOR2_X1 U5 ( .A(b[0]), .B(b[1]), .ZN(n5) );
  XNOR2_X1 U6 ( .A(b[2]), .B(n5), .ZN(n3) );
  XNOR2_X1 U7 ( .A(b[7]), .B(n3), .ZN(n2) );
  XNOR2_X1 U8 ( .A(b[6]), .B(n2), .ZN(out[2]) );
  XNOR2_X1 U9 ( .A(b[3]), .B(n2), .ZN(out[3]) );
  XNOR2_X1 U10 ( .A(n3), .B(n8), .ZN(out[4]) );
  XNOR2_X1 U11 ( .A(b[0]), .B(b[4]), .ZN(n4) );
  XNOR2_X1 U12 ( .A(b[6]), .B(b[5]), .ZN(n6) );
  XNOR2_X1 U13 ( .A(b[7]), .B(n6), .ZN(n9) );
  XNOR2_X1 U14 ( .A(n4), .B(n9), .ZN(out[0]) );
  XNOR2_X1 U15 ( .A(n9), .B(n5), .ZN(out[1]) );
  XNOR2_X1 U16 ( .A(n7), .B(n6), .ZN(out[6]) );
  XNOR2_X1 U17 ( .A(n9), .B(n8), .ZN(out[7]) );
endmodule


module linear_mapping_1 ( b, out );
  input [7:0] b;
  output [7:0] out;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26;

  XNOR2_X1 U1 ( .A(b[3]), .B(b[4]), .ZN(n25) );
  XNOR2_X1 U2 ( .A(b[2]), .B(n25), .ZN(n24) );
  XNOR2_X1 U3 ( .A(b[5]), .B(n24), .ZN(n18) );
  XNOR2_X1 U4 ( .A(b[1]), .B(n18), .ZN(out[5]) );
  XNOR2_X1 U5 ( .A(b[0]), .B(b[1]), .ZN(n22) );
  XNOR2_X1 U6 ( .A(b[2]), .B(n22), .ZN(n20) );
  XNOR2_X1 U7 ( .A(b[7]), .B(n20), .ZN(n19) );
  XNOR2_X1 U8 ( .A(b[6]), .B(n19), .ZN(out[2]) );
  XNOR2_X1 U9 ( .A(b[3]), .B(n19), .ZN(out[3]) );
  XNOR2_X1 U10 ( .A(n20), .B(n25), .ZN(out[4]) );
  XNOR2_X1 U11 ( .A(b[0]), .B(b[4]), .ZN(n21) );
  XNOR2_X1 U12 ( .A(b[6]), .B(b[5]), .ZN(n23) );
  XNOR2_X1 U13 ( .A(b[7]), .B(n23), .ZN(n26) );
  XNOR2_X1 U14 ( .A(n21), .B(n26), .ZN(out[0]) );
  XNOR2_X1 U15 ( .A(n26), .B(n22), .ZN(out[1]) );
  XNOR2_X1 U16 ( .A(n24), .B(n23), .ZN(out[6]) );
  XNOR2_X1 U17 ( .A(n26), .B(n25), .ZN(out[7]) );
endmodule


module circuit ( clk, PRNG, inp, SB_out );
  input [21:0] PRNG;
  input [15:0] inp;
  output [15:0] SB_out;
  input clk;
  wire   b1_0_, b0_0_, b1_prim_to_affine_0_, b0_prim_to_affine_0_, to_const_1,
         to_const_0;
  wire   [7:0] r0;
  wire   [7:0] r1;
  wire   [15:0] kron_in_reg;
  wire   [1:0] kron_out;
  wire   [15:0] tmp1;
  wire   [15:0] tmp2;
  wire   [15:0] SBin_reg;
  wire   [7:0] b0Xr0;
  wire   [7:0] b1Xr0;
  wire   [7:0] p0;
  wire   [7:0] reg_b0Xr0;
  wire   [7:0] reg_b1Xr0;
  wire   [7:0] p1;
  wire   [7:0] p1_inv;
  wire   [7:0] reg_r1;
  wire   [7:0] p1_invXORr1;
  wire   [7:0] reg_p1_invXORr1;
  wire   [7:0] reg_q0;
  wire   [7:0] b1_prim;
  wire   [7:0] b0_prim;
  wire   [1:0] intermed_reg_delta;
  wire   [1:0] reg_kron_out;
  wire   [6:5] to_const;

  r0_mapper inst_r0_zero_mapper ( .clk(clk), .r0_in(PRNG[7:0]), .r0_out(r0) );
  register_N8_0 pip_B4r1 ( .in(PRNG[15:8]), .clk(clk), .out(r1) );
  register_N16_0 pip_B4_Kronin ( .in(inp), .clk(clk), .out(kron_in_reg) );
  kronecker inst_kronecker ( .clk(clk), .inp(kron_in_reg), .rand(PRNG[21:16]), 
        .Z(kron_out) );
  register_N16_3 pip1_B4_SBin ( .in(kron_in_reg), .clk(clk), .out(tmp1) );
  register_N16_2 pip2_B4_SBin ( .in(tmp1), .clk(clk), .out(tmp2) );
  register_N16_1 pip3_B4_SBin ( .in(tmp2), .clk(clk), .out(SBin_reg) );
  gf256_multiplier_0 inst_mult0 ( .a(r0), .b({SBin_reg[7:1], b0_0_}), .result(
        b0Xr0) );
  gf256_multiplier_3 inst_mult1 ( .a(r0), .b({SBin_reg[15:9], b1_0_}), 
        .result(b1Xr0) );
  register_N8_7 inst_reg0_B2M0 ( .in(r0), .clk(clk), .out(p0) );
  register_N8_6 inst_reg1_B2M0 ( .in(b0Xr0), .clk(clk), .out(reg_b0Xr0) );
  register_N8_5 inst_reg2_B2M0 ( .in(b1Xr0), .clk(clk), .out(reg_b1Xr0) );
  inversion inst_inv ( .X(p1), .Out(p1_inv) );
  register_N8_4 inst_reg0_M2B0 ( .in(r1), .clk(clk), .out(reg_r1) );
  register_N8_3 inst_reg1_M2B0 ( .in(p1_invXORr1), .clk(clk), .out(
        reg_p1_invXORr1) );
  register_N8_2 inst_reg2_M2B0 ( .in(p0), .clk(clk), .out(reg_q0) );
  gf256_multiplier_2 inst_mult2 ( .a(reg_q0), .b(reg_p1_invXORr1), .result(
        b1_prim) );
  gf256_multiplier_1 inst_mult3 ( .a(reg_q0), .b(reg_r1), .result(b0_prim) );
  register_N2_0 inst_reg_delta0 ( .in(kron_out), .clk(clk), .out(
        intermed_reg_delta) );
  register_N2_1 inst_reg_delta1 ( .in(intermed_reg_delta), .clk(clk), .out(
        reg_kron_out) );
  linear_mapping_0 inst_LM0 ( .b({b0_prim[7:1], b0_prim_to_affine_0_}), .out(
        SB_out[7:0]) );
  linear_mapping_1 inst_LM1 ( .b({b1_prim[7:1], b1_prim_to_affine_0_}), .out({
        SB_out[15], to_const, SB_out[12:10], to_const_1, to_const_0}) );
  XOR2_X2 U49 ( .A(reg_b0Xr0[1]), .B(reg_b1Xr0[1]), .Z(p1[1]) );
  XOR2_X1 U50 ( .A(reg_b0Xr0[7]), .B(reg_b1Xr0[7]), .Z(p1[7]) );
  XOR2_X1 U51 ( .A(reg_b0Xr0[2]), .B(reg_b1Xr0[2]), .Z(p1[2]) );
  XOR2_X1 U52 ( .A(reg_b0Xr0[5]), .B(reg_b1Xr0[5]), .Z(p1[5]) );
  XOR2_X1 U53 ( .A(reg_b0Xr0[0]), .B(reg_b1Xr0[0]), .Z(p1[0]) );
  XOR2_X1 U54 ( .A(reg_b0Xr0[6]), .B(reg_b1Xr0[6]), .Z(p1[6]) );
  XOR2_X1 U55 ( .A(reg_b0Xr0[3]), .B(reg_b1Xr0[3]), .Z(p1[3]) );
  XOR2_X1 U56 ( .A(reg_b0Xr0[4]), .B(reg_b1Xr0[4]), .Z(p1[4]) );
  XOR2_X1 U57 ( .A(p1_inv[5]), .B(r1[5]), .Z(p1_invXORr1[5]) );
  XOR2_X1 U58 ( .A(p1_inv[7]), .B(r1[7]), .Z(p1_invXORr1[7]) );
  XOR2_X1 U59 ( .A(p1_inv[0]), .B(r1[0]), .Z(p1_invXORr1[0]) );
  XOR2_X1 U60 ( .A(p1_inv[1]), .B(r1[1]), .Z(p1_invXORr1[1]) );
  XOR2_X1 U61 ( .A(p1_inv[2]), .B(r1[2]), .Z(p1_invXORr1[2]) );
  XOR2_X1 U62 ( .A(p1_inv[3]), .B(r1[3]), .Z(p1_invXORr1[3]) );
  XOR2_X1 U63 ( .A(p1_inv[4]), .B(r1[4]), .Z(p1_invXORr1[4]) );
  XOR2_X1 U64 ( .A(p1_inv[6]), .B(r1[6]), .Z(p1_invXORr1[6]) );
  XOR2_X1 U65 ( .A(SBin_reg[0]), .B(kron_out[0]), .Z(b0_0_) );
  XOR2_X1 U66 ( .A(SBin_reg[8]), .B(kron_out[1]), .Z(b1_0_) );
  XOR2_X1 U67 ( .A(b1_prim[0]), .B(reg_kron_out[1]), .Z(b1_prim_to_affine_0_)
         );
  XOR2_X1 U68 ( .A(b0_prim[0]), .B(reg_kron_out[0]), .Z(b0_prim_to_affine_0_)
         );
  INV_X1 U69 ( .A(to_const[6]), .ZN(SB_out[14]) );
  INV_X1 U70 ( .A(to_const[5]), .ZN(SB_out[13]) );
  INV_X1 U71 ( .A(to_const_1), .ZN(SB_out[9]) );
  INV_X1 U72 ( .A(to_const_0), .ZN(SB_out[8]) );
endmodule

