/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12
// Date      : Mon Apr  7 12:31:03 2025
/////////////////////////////////////////////////////////////


module Register_N1_0 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_66 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_65 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_64 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_63 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_62 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_61 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_60 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_59 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_58 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_57 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_56 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_55 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_0 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:1] DFFout;

  Register_N1_63 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_62 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_61 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_60 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_59 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_58 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_57 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_56 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_55 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  XNOR2_X1 U2 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n1) );
  XNOR2_X1 U3 ( .A(n1), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U4 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n2) );
  XNOR2_X1 U5 ( .A(n2), .B(DFFout[8]), .ZN(z[2]) );
  XNOR2_X1 U6 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n3) );
  XNOR2_X1 U7 ( .A(n3), .B(DFFout[2]), .ZN(z[0]) );
  NAND2_X1 U8 ( .A1(x[0]), .A2(y[1]), .ZN(n4) );
  XNOR2_X1 U9 ( .A(n4), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U10 ( .A1(y[2]), .A2(x[0]), .ZN(n5) );
  XNOR2_X1 U11 ( .A(n5), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U12 ( .A1(y[0]), .A2(x[1]), .ZN(n6) );
  XNOR2_X1 U13 ( .A(n6), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U14 ( .A1(x[2]), .A2(y[0]), .ZN(n7) );
  XNOR2_X1 U15 ( .A(n7), .B(r[1]), .ZN(r1XORAND7) );
  NAND2_X1 U16 ( .A1(x[1]), .A2(y[2]), .ZN(n8) );
  XNOR2_X1 U17 ( .A(n8), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U18 ( .A1(x[2]), .A2(y[1]), .ZN(n9) );
  XNOR2_X1 U19 ( .A(n9), .B(r[2]), .ZN(r2XORAND8) );
  AND2_X1 U20 ( .A1(y[1]), .A2(x[1]), .ZN(AND5) );
  AND2_X1 U21 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
endmodule


module Register_N1_54 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_53 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_52 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_51 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_50 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_49 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_48 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_47 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_46 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_6 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:1] DFFout;

  Register_N1_54 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_53 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_52 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_51 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_50 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_49 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_48 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_47 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_46 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  XNOR2_X1 U2 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n19) );
  XNOR2_X1 U3 ( .A(n19), .B(DFFout[8]), .ZN(z[2]) );
  XNOR2_X1 U4 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n20) );
  XNOR2_X1 U5 ( .A(n20), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U6 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n21) );
  XNOR2_X1 U7 ( .A(n21), .B(DFFout[2]), .ZN(z[0]) );
  NAND2_X1 U8 ( .A1(x[0]), .A2(y[1]), .ZN(n22) );
  XNOR2_X1 U9 ( .A(n22), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U10 ( .A1(y[2]), .A2(x[0]), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n23), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U12 ( .A1(y[0]), .A2(x[1]), .ZN(n24) );
  XNOR2_X1 U13 ( .A(n24), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U14 ( .A1(x[2]), .A2(y[0]), .ZN(n25) );
  XNOR2_X1 U15 ( .A(n25), .B(r[1]), .ZN(r1XORAND7) );
  NAND2_X1 U16 ( .A1(x[1]), .A2(y[2]), .ZN(n26) );
  XNOR2_X1 U17 ( .A(n26), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U18 ( .A1(x[2]), .A2(y[1]), .ZN(n27) );
  XNOR2_X1 U19 ( .A(n27), .B(r[2]), .ZN(r2XORAND8) );
  AND2_X1 U20 ( .A1(y[1]), .A2(x[1]), .ZN(AND5) );
  AND2_X1 U21 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
endmodule


module Register_N1_45 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_44 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_43 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_42 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_41 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_40 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_39 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_38 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_37 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_5 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:1] DFFout;

  Register_N1_45 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_44 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_43 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_42 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_41 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_40 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_39 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_38 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_37 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  XNOR2_X1 U2 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n19) );
  XNOR2_X1 U3 ( .A(n19), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U4 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n20) );
  XNOR2_X1 U5 ( .A(n20), .B(DFFout[8]), .ZN(z[2]) );
  XNOR2_X1 U6 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n21) );
  XNOR2_X1 U7 ( .A(n21), .B(DFFout[2]), .ZN(z[0]) );
  NAND2_X1 U8 ( .A1(x[0]), .A2(y[1]), .ZN(n22) );
  XNOR2_X1 U9 ( .A(n22), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U10 ( .A1(y[2]), .A2(x[0]), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n23), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U12 ( .A1(y[0]), .A2(x[1]), .ZN(n24) );
  XNOR2_X1 U13 ( .A(n24), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U14 ( .A1(x[2]), .A2(y[0]), .ZN(n25) );
  XNOR2_X1 U15 ( .A(n25), .B(r[1]), .ZN(r1XORAND7) );
  NAND2_X1 U16 ( .A1(x[1]), .A2(y[2]), .ZN(n26) );
  XNOR2_X1 U17 ( .A(n26), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U18 ( .A1(x[2]), .A2(y[1]), .ZN(n27) );
  XNOR2_X1 U19 ( .A(n27), .B(r[2]), .ZN(r2XORAND8) );
  AND2_X1 U20 ( .A1(y[1]), .A2(x[1]), .ZN(AND5) );
  AND2_X1 U21 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
endmodule


module Register_N1_36 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_35 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_34 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_33 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_32 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_31 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_30 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_29 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_28 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_4 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:1] DFFout;

  Register_N1_36 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_35 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_34 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_33 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_32 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_31 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_30 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_29 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_28 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  XNOR2_X1 U2 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n19) );
  XNOR2_X1 U3 ( .A(n19), .B(DFFout[8]), .ZN(z[2]) );
  XNOR2_X1 U4 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n20) );
  XNOR2_X1 U5 ( .A(n20), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U6 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n21) );
  XNOR2_X1 U7 ( .A(n21), .B(DFFout[2]), .ZN(z[0]) );
  NAND2_X1 U8 ( .A1(x[0]), .A2(y[1]), .ZN(n22) );
  XNOR2_X1 U9 ( .A(n22), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U10 ( .A1(y[2]), .A2(x[0]), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n23), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U12 ( .A1(y[0]), .A2(x[1]), .ZN(n24) );
  XNOR2_X1 U13 ( .A(n24), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U14 ( .A1(x[2]), .A2(y[0]), .ZN(n25) );
  XNOR2_X1 U15 ( .A(n25), .B(r[1]), .ZN(r1XORAND7) );
  NAND2_X1 U16 ( .A1(x[1]), .A2(y[2]), .ZN(n26) );
  XNOR2_X1 U17 ( .A(n26), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U18 ( .A1(x[2]), .A2(y[1]), .ZN(n27) );
  XNOR2_X1 U19 ( .A(n27), .B(r[2]), .ZN(r2XORAND8) );
  AND2_X1 U20 ( .A1(y[1]), .A2(x[1]), .ZN(AND5) );
  AND2_X1 U21 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
endmodule


module Register_N1_27 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_26 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_25 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_24 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_23 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_22 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_21 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_20 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_19 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_3 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:1] DFFout;

  Register_N1_27 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_26 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_25 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_24 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_23 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_22 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_21 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_20 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_19 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
  AND2_X1 U2 ( .A1(x[1]), .A2(y[1]), .ZN(AND5) );
  AND2_X1 U3 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  XNOR2_X1 U4 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n19) );
  XNOR2_X1 U5 ( .A(n19), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U6 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n20) );
  XNOR2_X1 U7 ( .A(n20), .B(DFFout[8]), .ZN(z[2]) );
  XNOR2_X1 U8 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n21) );
  XNOR2_X1 U9 ( .A(n21), .B(DFFout[2]), .ZN(z[0]) );
  NAND2_X1 U10 ( .A1(y[2]), .A2(x[1]), .ZN(n22) );
  XNOR2_X1 U11 ( .A(n22), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U12 ( .A1(y[1]), .A2(x[2]), .ZN(n23) );
  XNOR2_X1 U13 ( .A(n23), .B(r[2]), .ZN(r2XORAND8) );
  NAND2_X1 U14 ( .A1(x[0]), .A2(y[1]), .ZN(n24) );
  XNOR2_X1 U15 ( .A(n24), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U16 ( .A1(x[0]), .A2(y[2]), .ZN(n25) );
  XNOR2_X1 U17 ( .A(n25), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U18 ( .A1(y[0]), .A2(x[1]), .ZN(n26) );
  XNOR2_X1 U19 ( .A(n26), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U20 ( .A1(y[0]), .A2(x[2]), .ZN(n27) );
  XNOR2_X1 U21 ( .A(n27), .B(r[1]), .ZN(r1XORAND7) );
endmodule


module Register_N1_18 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_17 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_16 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_15 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_14 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_13 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_12 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_11 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_10 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_2 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:1] DFFout;

  Register_N1_18 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_17 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_16 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_15 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_14 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_13 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_12 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_11 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_10 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
  AND2_X1 U2 ( .A1(x[1]), .A2(y[1]), .ZN(AND5) );
  AND2_X1 U3 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  XNOR2_X1 U4 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n19) );
  XNOR2_X1 U5 ( .A(n19), .B(DFFout[8]), .ZN(z[2]) );
  XNOR2_X1 U6 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n20) );
  XNOR2_X1 U7 ( .A(n20), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U8 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n21) );
  XNOR2_X1 U9 ( .A(n21), .B(DFFout[2]), .ZN(z[0]) );
  NAND2_X1 U10 ( .A1(y[2]), .A2(x[1]), .ZN(n22) );
  XNOR2_X1 U11 ( .A(n22), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U12 ( .A1(y[1]), .A2(x[2]), .ZN(n23) );
  XNOR2_X1 U13 ( .A(n23), .B(r[2]), .ZN(r2XORAND8) );
  NAND2_X1 U14 ( .A1(x[0]), .A2(y[1]), .ZN(n24) );
  XNOR2_X1 U15 ( .A(n24), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U16 ( .A1(x[0]), .A2(y[2]), .ZN(n25) );
  XNOR2_X1 U17 ( .A(n25), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U18 ( .A1(y[0]), .A2(x[1]), .ZN(n26) );
  XNOR2_X1 U19 ( .A(n26), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U20 ( .A1(y[0]), .A2(x[2]), .ZN(n27) );
  XNOR2_X1 U21 ( .A(n27), .B(r[1]), .ZN(r1XORAND7) );
endmodule


module Register_N1_9 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_8 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_7 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_6 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_5 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_4 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_3 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_2 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module Register_N1_1 ( in, clk, out );
  input [0:0] in;
  output [0:0] out;
  input clk;


  DFF_X1 out_reg_0_ ( .D(in[0]), .CK(clk), .Q(out[0]), .QN() );
endmodule


module and_dom_indep_d2_1 ( clk, x, y, r, z );
  input [2:0] x;
  input [2:0] y;
  input [2:0] r;
  output [2:0] z;
  input clk;
  wire   AND1, r0XORAND2, r1XORAND3, AND5, r0XORAND4, r2XORAND6, AND9,
         r1XORAND7, r2XORAND8, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  wire   [9:1] DFFout;

  Register_N1_9 D1 ( .in(AND1), .clk(clk), .out(DFFout[1]) );
  Register_N1_8 D2 ( .in(r0XORAND2), .clk(clk), .out(DFFout[2]) );
  Register_N1_7 D3 ( .in(r1XORAND3), .clk(clk), .out(DFFout[3]) );
  Register_N1_6 D4 ( .in(r0XORAND4), .clk(clk), .out(DFFout[4]) );
  Register_N1_5 D5 ( .in(AND5), .clk(clk), .out(DFFout[5]) );
  Register_N1_4 D6 ( .in(r2XORAND6), .clk(clk), .out(DFFout[6]) );
  Register_N1_3 D7 ( .in(r1XORAND7), .clk(clk), .out(DFFout[7]) );
  Register_N1_2 D8 ( .in(r2XORAND8), .clk(clk), .out(DFFout[8]) );
  Register_N1_1 D9 ( .in(AND9), .clk(clk), .out(DFFout[9]) );
  AND2_X1 U1 ( .A1(y[2]), .A2(x[2]), .ZN(AND9) );
  AND2_X1 U2 ( .A1(y[1]), .A2(x[1]), .ZN(AND5) );
  AND2_X1 U3 ( .A1(x[0]), .A2(y[0]), .ZN(AND1) );
  NAND2_X1 U4 ( .A1(x[0]), .A2(y[1]), .ZN(n19) );
  XNOR2_X1 U5 ( .A(n19), .B(r[0]), .ZN(r0XORAND2) );
  NAND2_X1 U6 ( .A1(y[2]), .A2(x[0]), .ZN(n20) );
  XNOR2_X1 U7 ( .A(n20), .B(r[1]), .ZN(r1XORAND3) );
  NAND2_X1 U8 ( .A1(y[0]), .A2(x[1]), .ZN(n21) );
  XNOR2_X1 U9 ( .A(n21), .B(r[0]), .ZN(r0XORAND4) );
  NAND2_X1 U10 ( .A1(x[2]), .A2(y[0]), .ZN(n22) );
  XNOR2_X1 U11 ( .A(n22), .B(r[1]), .ZN(r1XORAND7) );
  NAND2_X1 U12 ( .A1(x[1]), .A2(y[2]), .ZN(n23) );
  XNOR2_X1 U13 ( .A(n23), .B(r[2]), .ZN(r2XORAND6) );
  NAND2_X1 U14 ( .A1(x[2]), .A2(y[1]), .ZN(n24) );
  XNOR2_X1 U15 ( .A(n24), .B(r[2]), .ZN(r2XORAND8) );
  XNOR2_X1 U16 ( .A(DFFout[3]), .B(DFFout[1]), .ZN(n25) );
  XNOR2_X1 U17 ( .A(n25), .B(DFFout[2]), .ZN(z[0]) );
  XNOR2_X1 U18 ( .A(DFFout[6]), .B(DFFout[4]), .ZN(n26) );
  XNOR2_X1 U19 ( .A(n26), .B(DFFout[5]), .ZN(z[1]) );
  XNOR2_X1 U20 ( .A(DFFout[9]), .B(DFFout[7]), .ZN(n27) );
  XNOR2_X1 U21 ( .A(n27), .B(DFFout[8]), .ZN(z[2]) );
endmodule


module circuit ( clk, shared_inp, PRNG, out );
  input [23:0] shared_inp;
  input [12:0] PRNG;
  output [2:0] out;
  input clk;
  wire   r5_2_, r6_2_, n_0_net_, n_1_net_, n_2_net_, n_3_net_, n9, n10, n11,
         n12, n13, n14, n15, n16;
  wire   [1:0] r7;
  wire   [2:0] w1;
  wire   [2:0] w2;
  wire   [2:0] w3;
  wire   [2:0] w4;
  wire   [2:0] w5;
  wire   [2:0] w6;

  Register_N1_0 for_r52 ( .in(n_0_net_), .clk(clk), .out(r5_2_) );
  Register_N1_66 for_r62 ( .in(n_1_net_), .clk(clk), .out(r6_2_) );
  Register_N1_65 for_r70 ( .in(n_2_net_), .clk(clk), .out(r7[1]) );
  Register_N1_64 for_r71 ( .in(n_3_net_), .clk(clk), .out(r7[0]) );
  and_dom_indep_d2_0 G1 ( .clk(clk), .x({shared_inp[0], shared_inp[8], n16}), 
        .y({shared_inp[1], shared_inp[9], n15}), .r(PRNG[2:0]), .z(w1) );
  and_dom_indep_d2_6 G2 ( .clk(clk), .x({shared_inp[2], shared_inp[10], n14}), 
        .y({shared_inp[3], shared_inp[11], n13}), .r(PRNG[5:3]), .z(w2) );
  and_dom_indep_d2_5 G3 ( .clk(clk), .x({shared_inp[4], shared_inp[12], n12}), 
        .y({shared_inp[5], shared_inp[13], n11}), .r(PRNG[8:6]), .z(w3) );
  and_dom_indep_d2_4 G4 ( .clk(clk), .x({shared_inp[6], shared_inp[14], n10}), 
        .y({shared_inp[7], shared_inp[15], n9}), .r(PRNG[11:9]), .z(w4) );
  and_dom_indep_d2_3 G5 ( .clk(clk), .x(w1), .y(w2), .r({r5_2_, PRNG[10], 
        PRNG[6]}), .z(w5) );
  and_dom_indep_d2_2 G6 ( .clk(clk), .x(w3), .y(w4), .r({r6_2_, PRNG[4], 
        PRNG[0]}), .z(w6) );
  and_dom_indep_d2_1 G7 ( .clk(clk), .x(w5), .y(w6), .r({PRNG[12], r7}), .z(
        out) );
  INV_X1 U25 ( .A(shared_inp[23]), .ZN(n9) );
  INV_X1 U26 ( .A(shared_inp[22]), .ZN(n10) );
  INV_X1 U27 ( .A(shared_inp[21]), .ZN(n11) );
  INV_X1 U28 ( .A(shared_inp[20]), .ZN(n12) );
  INV_X1 U29 ( .A(shared_inp[19]), .ZN(n13) );
  INV_X1 U30 ( .A(shared_inp[18]), .ZN(n14) );
  INV_X1 U31 ( .A(shared_inp[17]), .ZN(n15) );
  INV_X1 U32 ( .A(shared_inp[16]), .ZN(n16) );
  XOR2_X1 U33 ( .A(PRNG[2]), .B(PRNG[5]), .Z(n_1_net_) );
  XOR2_X1 U34 ( .A(PRNG[3]), .B(PRNG[9]), .Z(n_2_net_) );
  XOR2_X1 U35 ( .A(PRNG[1]), .B(PRNG[7]), .Z(n_3_net_) );
  XOR2_X1 U36 ( .A(PRNG[11]), .B(PRNG[8]), .Z(n_0_net_) );
endmodule

