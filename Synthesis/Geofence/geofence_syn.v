/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sun Mar 16 23:37:22 2025
/////////////////////////////////////////////////////////////


module geofence_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [20:0] A;
  input [20:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186;

  CLKINVX1 U57 ( .A(A[17]), .Y(n126) );
  CLKINVX1 U58 ( .A(A[14]), .Y(n127) );
  CLKINVX1 U59 ( .A(B[13]), .Y(n137) );
  CLKINVX1 U60 ( .A(B[15]), .Y(n136) );
  CLKINVX1 U61 ( .A(A[19]), .Y(n125) );
  CLKINVX1 U62 ( .A(B[18]), .Y(n135) );
  CLKINVX1 U63 ( .A(A[12]), .Y(n128) );
  CLKINVX1 U64 ( .A(B[11]), .Y(n138) );
  CLKINVX1 U65 ( .A(A[10]), .Y(n129) );
  CLKINVX1 U66 ( .A(A[8]), .Y(n131) );
  CLKINVX1 U67 ( .A(B[9]), .Y(n139) );
  CLKINVX1 U68 ( .A(A[5]), .Y(n132) );
  CLKINVX1 U69 ( .A(B[6]), .Y(n140) );
  CLKINVX1 U70 ( .A(A[20]), .Y(n124) );
  CLKINVX1 U71 ( .A(n161), .Y(n130) );
  CLKINVX1 U72 ( .A(B[4]), .Y(n141) );
  CLKINVX1 U73 ( .A(n175), .Y(n134) );
  CLKINVX1 U74 ( .A(A[3]), .Y(n133) );
  CLKINVX1 U75 ( .A(B[1]), .Y(n142) );
  NAND2X1 U76 ( .A(n143), .B(n144), .Y(GE_LT_GT_LE) );
  OAI211X1 U77 ( .A0(B[20]), .A1(n124), .B0(n145), .C0(n146), .Y(n144) );
  OAI21XL U78 ( .A0(n147), .A1(n148), .B0(n149), .Y(n146) );
  OAI222XL U79 ( .A0(A[15]), .A1(n150), .B0(n136), .B1(n150), .C0(A[15]), .C1(
        n136), .Y(n149) );
  OAI222XL U80 ( .A0(B[14]), .A1(n127), .B0(B[14]), .B1(n151), .C0(n127), .C1(
        n151), .Y(n150) );
  OAI222XL U81 ( .A0(A[13]), .A1(n152), .B0(n137), .B1(n152), .C0(A[13]), .C1(
        n137), .Y(n151) );
  OAI222XL U82 ( .A0(B[12]), .A1(n128), .B0(B[12]), .B1(n153), .C0(n128), .C1(
        n153), .Y(n152) );
  NAND2X1 U83 ( .A(A[11]), .B(n138), .Y(n153) );
  OAI21XL U84 ( .A0(A[15]), .A1(n136), .B0(n154), .Y(n148) );
  OAI22XL U85 ( .A0(n155), .A1(n127), .B0(B[14]), .B1(n155), .Y(n154) );
  OAI21XL U86 ( .A0(A[13]), .A1(n137), .B0(n156), .Y(n155) );
  OAI22XL U87 ( .A0(n157), .A1(n128), .B0(B[12]), .B1(n157), .Y(n156) );
  NOR2X1 U88 ( .A(n138), .B(A[11]), .Y(n157) );
  AOI221XL U89 ( .A0(A[10]), .A1(n130), .B0(n158), .B1(n159), .C0(n160), .Y(
        n147) );
  OAI22XL U90 ( .A0(B[10]), .A1(n129), .B0(B[10]), .B1(n161), .Y(n160) );
  OAI22XL U91 ( .A0(n129), .A1(n162), .B0(B[10]), .B1(n162), .Y(n159) );
  OAI21XL U92 ( .A0(A[9]), .A1(n139), .B0(n163), .Y(n162) );
  OAI22XL U93 ( .A0(n164), .A1(n131), .B0(B[8]), .B1(n164), .Y(n163) );
  NOR2BX1 U94 ( .AN(B[7]), .B(A[7]), .Y(n164) );
  OAI21XL U95 ( .A0(n165), .A1(n166), .B0(n167), .Y(n158) );
  OAI222XL U96 ( .A0(A[6]), .A1(n168), .B0(n140), .B1(n168), .C0(A[6]), .C1(
        n140), .Y(n167) );
  OAI222XL U97 ( .A0(B[5]), .A1(n132), .B0(B[5]), .B1(n169), .C0(n132), .C1(
        n169), .Y(n168) );
  NAND2X1 U98 ( .A(A[4]), .B(n141), .Y(n169) );
  OAI21XL U99 ( .A0(A[6]), .A1(n140), .B0(n170), .Y(n166) );
  OAI22XL U100 ( .A0(n171), .A1(n132), .B0(B[5]), .B1(n171), .Y(n170) );
  NOR2X1 U101 ( .A(n141), .B(A[4]), .Y(n171) );
  AOI221XL U102 ( .A0(A[3]), .A1(n134), .B0(n172), .B1(n173), .C0(n174), .Y(
        n165) );
  OAI22XL U103 ( .A0(B[3]), .A1(n133), .B0(B[3]), .B1(n175), .Y(n174) );
  OAI22XL U104 ( .A0(n176), .A1(n133), .B0(B[3]), .B1(n176), .Y(n173) );
  NOR2BX1 U105 ( .AN(B[2]), .B(A[2]), .Y(n176) );
  AO22X1 U106 ( .A0(n177), .A1(A[0]), .B0(A[1]), .B1(n142), .Y(n172) );
  AOI2BB1X1 U107 ( .A0N(n142), .A1N(A[1]), .B0(B[0]), .Y(n177) );
  NAND2BX1 U108 ( .AN(B[2]), .B(A[2]), .Y(n175) );
  OAI222XL U109 ( .A0(A[9]), .A1(n178), .B0(n178), .B1(n139), .C0(A[9]), .C1(
        n139), .Y(n161) );
  OAI222XL U110 ( .A0(B[8]), .A1(n131), .B0(B[8]), .B1(n179), .C0(n179), .C1(
        n131), .Y(n178) );
  NAND2BX1 U111 ( .AN(B[7]), .B(A[7]), .Y(n179) );
  OAI22XL U112 ( .A0(n180), .A1(n125), .B0(B[19]), .B1(n180), .Y(n145) );
  OAI21XL U113 ( .A0(A[18]), .A1(n135), .B0(n181), .Y(n180) );
  OAI22XL U114 ( .A0(n182), .A1(n126), .B0(B[17]), .B1(n182), .Y(n181) );
  NOR2BX1 U115 ( .AN(B[16]), .B(A[16]), .Y(n182) );
  OAI222XL U116 ( .A0(B[20]), .A1(n183), .B0(n124), .B1(n183), .C0(B[20]), 
        .C1(n124), .Y(n143) );
  OAI222XL U117 ( .A0(B[19]), .A1(n125), .B0(B[19]), .B1(n184), .C0(n125), 
        .C1(n184), .Y(n183) );
  OAI222XL U118 ( .A0(A[18]), .A1(n185), .B0(n135), .B1(n185), .C0(A[18]), 
        .C1(n135), .Y(n184) );
  OAI222XL U119 ( .A0(B[17]), .A1(n126), .B0(B[17]), .B1(n186), .C0(n126), 
        .C1(n186), .Y(n185) );
  NAND2BX1 U120 ( .AN(B[16]), .B(A[16]), .Y(n186) );
endmodule


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n10), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n7), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n2), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n3) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  XNOR2X1 U11 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n3) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n7) );
  XNOR2X1 U9 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U5 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n3) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U5 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n3) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n5) );
  XNOR2X1 U7 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n27), .B(n31), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n34), .B(n32), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n35), .B(n39), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n40), .B(n44), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n52), .B(n57), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n58), .B(n65), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n66), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n74), .B(n79), .CI(n14), .CO(n13), .S(product[10]) );
  ADDFXL U15 ( .A(n80), .B(n86), .CI(n15), .CO(n14), .S(product[9]) );
  ADDFXL U16 ( .A(n87), .B(n91), .CI(n16), .CO(n15), .S(product[8]) );
  ADDFXL U17 ( .A(n92), .B(n96), .CI(n17), .CO(n16), .S(product[7]) );
  ADDFXL U18 ( .A(n98), .B(n97), .CI(n18), .CO(n17), .S(product[6]) );
  ADDFXL U19 ( .A(n99), .B(n102), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFXL U20 ( .A(n103), .B(n104), .CI(n20), .CO(n19), .S(product[4]) );
  ADDFXL U21 ( .A(n105), .B(n110), .CI(n21), .CO(n20), .S(product[3]) );
  ADDFXL U22 ( .A(n176), .B(n166), .CI(n22), .CO(n21), .S(product[2]) );
  ADDHXL U23 ( .A(n111), .B(n177), .CO(n22), .S(product[1]) );
  ADDFXL U25 ( .A(n28), .B(n123), .CI(n113), .CO(n24), .S(n25) );
  ADDFXL U26 ( .A(n360), .B(n114), .CI(n30), .CO(n26), .S(n27) );
  CMPR42X1 U28 ( .A(n134), .B(n124), .C(n36), .D(n115), .ICI(n33), .S(n32), 
        .ICO(n30), .CO(n31) );
  CMPR42X1 U29 ( .A(n125), .B(n116), .C(n362), .D(n41), .ICI(n38), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n135), .B(n126), .C(n42), .D(n46), .ICI(n43), .S(n40), 
        .ICO(n38), .CO(n39) );
  ADDFXL U32 ( .A(n48), .B(n144), .CI(n117), .CO(n41), .S(n42) );
  CMPR42X1 U33 ( .A(n365), .B(n53), .C(n54), .D(n47), .ICI(n50), .S(n45), 
        .ICO(n43), .CO(n44) );
  ADDFXL U34 ( .A(n127), .B(n118), .CI(n136), .CO(n46), .S(n47) );
  CMPR42X1 U36 ( .A(n137), .B(n128), .C(n55), .D(n60), .ICI(n56), .S(n52), 
        .ICO(n50), .CO(n51) );
  CMPR42X1 U37 ( .A(n155), .B(n119), .C(n62), .D(n145), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U38 ( .A(n363), .B(n67), .C(n68), .D(n61), .ICI(n64), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U39 ( .A(n129), .B(n156), .C(n146), .D(n120), .ICI(n70), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n138), .B(n71), .C(n76), .D(n69), .ICI(n72), .S(n66), 
        .ICO(n64), .CO(n65) );
  CMPR42X1 U42 ( .A(n157), .B(n106), .C(n147), .D(n130), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n148), .B(n83), .C(n77), .D(n81), .ICI(n78), .S(n74), 
        .ICO(n72), .CO(n73) );
  CMPR42X1 U46 ( .A(n122), .B(n139), .C(n168), .D(n158), .ICI(n131), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U47 ( .A(n169), .B(n84), .C(n85), .D(n88), .ICI(n82), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDFXL U48 ( .A(n140), .B(n149), .CI(n159), .CO(n81), .S(n82) );
  ADDHXL U49 ( .A(n132), .B(n107), .CO(n83), .S(n84) );
  CMPR42X1 U50 ( .A(n160), .B(n141), .C(n93), .D(n90), .ICI(n89), .S(n87), 
        .ICO(n85), .CO(n86) );
  ADDFXL U51 ( .A(n150), .B(n133), .CI(n170), .CO(n88), .S(n89) );
  CMPR42X1 U52 ( .A(n171), .B(n151), .C(n161), .D(n95), .ICI(n94), .S(n92), 
        .ICO(n90), .CO(n91) );
  ADDHXL U53 ( .A(n142), .B(n108), .CO(n93), .S(n94) );
  CMPR42X1 U54 ( .A(n143), .B(n172), .C(n162), .D(n152), .ICI(n100), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U55 ( .A(n163), .B(n173), .CI(n101), .CO(n98), .S(n99) );
  ADDHXL U56 ( .A(n153), .B(n109), .CO(n100), .S(n101) );
  ADDFXL U57 ( .A(n174), .B(n154), .CI(n164), .CO(n102), .S(n103) );
  ADDHXL U58 ( .A(n175), .B(n165), .CO(n104), .S(n105) );
  CLKINVX1 U262 ( .A(n48), .Y(n365) );
  INVX3 U263 ( .A(n374), .Y(n359) );
  CLKINVX1 U264 ( .A(n62), .Y(n363) );
  CLKINVX1 U265 ( .A(n36), .Y(n362) );
  CLKBUFX3 U266 ( .A(n387), .Y(n351) );
  NAND2X1 U267 ( .A(n352), .B(n450), .Y(n387) );
  NAND2X2 U268 ( .A(a[1]), .B(n369), .Y(n378) );
  INVX3 U269 ( .A(a[5]), .Y(n366) );
  INVX3 U270 ( .A(a[3]), .Y(n367) );
  INVX3 U271 ( .A(a[1]), .Y(n368) );
  CLKBUFX3 U272 ( .A(n403), .Y(n350) );
  XNOR2X1 U273 ( .A(a[2]), .B(a[1]), .Y(n403) );
  CLKBUFX3 U274 ( .A(n384), .Y(n352) );
  XNOR2X1 U275 ( .A(a[4]), .B(a[3]), .Y(n384) );
  CLKBUFX3 U276 ( .A(n405), .Y(n349) );
  NAND2X1 U277 ( .A(n350), .B(n449), .Y(n405) );
  CLKBUFX3 U278 ( .A(n381), .Y(n353) );
  NAND2X1 U279 ( .A(n354), .B(n451), .Y(n381) );
  INVX3 U280 ( .A(a[7]), .Y(n364) );
  INVX3 U281 ( .A(a[9]), .Y(n361) );
  CLKBUFX3 U282 ( .A(n390), .Y(n356) );
  XNOR2X1 U283 ( .A(a[8]), .B(a[7]), .Y(n390) );
  CLKBUFX3 U284 ( .A(n382), .Y(n354) );
  XNOR2X1 U285 ( .A(a[6]), .B(a[5]), .Y(n382) );
  CLKBUFX3 U286 ( .A(n393), .Y(n355) );
  NAND2X1 U287 ( .A(n356), .B(n452), .Y(n393) );
  CLKINVX1 U288 ( .A(n28), .Y(n360) );
  CLKINVX1 U289 ( .A(n357), .Y(n370) );
  INVX3 U290 ( .A(a[0]), .Y(n369) );
  CLKBUFX3 U291 ( .A(a[10]), .Y(n358) );
  CLKBUFX3 U292 ( .A(b[0]), .Y(n357) );
  XOR2X1 U293 ( .A(n371), .B(n372), .Y(product[20]) );
  XOR2X1 U294 ( .A(n4), .B(n24), .Y(n372) );
  NAND2X1 U295 ( .A(n373), .B(n374), .Y(n371) );
  XOR2X1 U296 ( .A(b[10]), .B(n358), .Y(n373) );
  NOR2X1 U297 ( .A(n369), .B(n370), .Y(product[0]) );
  XOR2X1 U298 ( .A(n375), .B(n376), .Y(n71) );
  NAND2BX1 U299 ( .AN(n376), .B(n375), .Y(n70) );
  NAND2X1 U300 ( .A(n377), .B(n374), .Y(n375) );
  XOR2X1 U301 ( .A(b[1]), .B(n358), .Y(n377) );
  OAI2BB1X1 U302 ( .A0N(n369), .A1N(n378), .B0(n379), .Y(n376) );
  OAI22XL U303 ( .A0(n380), .A1(n353), .B0(n354), .B1(n383), .Y(n62) );
  OAI22XL U304 ( .A0(n352), .A1(n385), .B0(n386), .B1(n351), .Y(n48) );
  OAI22XL U305 ( .A0(n354), .A1(n388), .B0(n389), .B1(n353), .Y(n36) );
  OAI22XL U306 ( .A0(n356), .A1(n391), .B0(n392), .B1(n355), .Y(n28) );
  OAI22XL U307 ( .A0(n357), .A1(n378), .B0(n394), .B1(n369), .Y(n177) );
  OAI22XL U308 ( .A0(n394), .A1(n378), .B0(n395), .B1(n369), .Y(n176) );
  XOR2X1 U309 ( .A(b[1]), .B(n368), .Y(n394) );
  OAI22XL U310 ( .A0(n395), .A1(n378), .B0(n396), .B1(n369), .Y(n175) );
  XOR2X1 U311 ( .A(b[2]), .B(n368), .Y(n395) );
  OAI22XL U312 ( .A0(n396), .A1(n378), .B0(n397), .B1(n369), .Y(n174) );
  XOR2X1 U313 ( .A(b[3]), .B(n368), .Y(n396) );
  OAI22XL U314 ( .A0(n397), .A1(n378), .B0(n398), .B1(n369), .Y(n173) );
  XOR2X1 U315 ( .A(b[4]), .B(n368), .Y(n397) );
  OAI22XL U316 ( .A0(n398), .A1(n378), .B0(n399), .B1(n369), .Y(n172) );
  XOR2X1 U317 ( .A(b[5]), .B(n368), .Y(n398) );
  OAI22XL U318 ( .A0(n399), .A1(n378), .B0(n400), .B1(n369), .Y(n171) );
  XOR2X1 U319 ( .A(b[6]), .B(n368), .Y(n399) );
  OAI22XL U320 ( .A0(n400), .A1(n378), .B0(n401), .B1(n369), .Y(n170) );
  XOR2X1 U321 ( .A(b[7]), .B(n368), .Y(n400) );
  OAI22XL U322 ( .A0(n401), .A1(n378), .B0(n402), .B1(n369), .Y(n169) );
  XOR2X1 U323 ( .A(b[8]), .B(n368), .Y(n401) );
  OAI2BB2XL U324 ( .B0(n402), .B1(n378), .A0N(n379), .A1N(a[0]), .Y(n168) );
  XOR2X1 U325 ( .A(b[10]), .B(a[1]), .Y(n379) );
  XOR2X1 U326 ( .A(b[9]), .B(n368), .Y(n402) );
  NOR2X1 U327 ( .A(n350), .B(n370), .Y(n166) );
  OAI22XL U328 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n165) );
  XOR2X1 U329 ( .A(n367), .B(n357), .Y(n404) );
  OAI22XL U330 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n164) );
  XOR2X1 U331 ( .A(b[1]), .B(n367), .Y(n406) );
  OAI22XL U332 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n163) );
  XOR2X1 U333 ( .A(b[2]), .B(n367), .Y(n407) );
  OAI22XL U334 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n162) );
  XOR2X1 U335 ( .A(b[3]), .B(n367), .Y(n408) );
  OAI22XL U336 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n161) );
  XOR2X1 U337 ( .A(b[4]), .B(n367), .Y(n409) );
  OAI22XL U338 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n160) );
  XOR2X1 U339 ( .A(b[5]), .B(n367), .Y(n410) );
  OAI22XL U340 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n159) );
  XOR2X1 U341 ( .A(b[6]), .B(n367), .Y(n411) );
  OAI22XL U342 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n158) );
  XOR2X1 U343 ( .A(b[7]), .B(n367), .Y(n412) );
  OAI22XL U344 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n157) );
  XOR2X1 U345 ( .A(b[8]), .B(n367), .Y(n413) );
  OAI22XL U346 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n156) );
  XOR2X1 U347 ( .A(b[9]), .B(n367), .Y(n414) );
  AO21X1 U348 ( .A0(n349), .A1(n350), .B0(n415), .Y(n155) );
  XOR2X1 U349 ( .A(b[10]), .B(n367), .Y(n415) );
  NOR2X1 U350 ( .A(n352), .B(n370), .Y(n154) );
  OAI22XL U351 ( .A0(n416), .A1(n351), .B0(n352), .B1(n417), .Y(n153) );
  XOR2X1 U352 ( .A(n366), .B(n357), .Y(n416) );
  OAI22XL U353 ( .A0(n417), .A1(n351), .B0(n352), .B1(n418), .Y(n152) );
  XOR2X1 U354 ( .A(b[1]), .B(n366), .Y(n417) );
  OAI22XL U355 ( .A0(n418), .A1(n351), .B0(n352), .B1(n419), .Y(n151) );
  XOR2X1 U356 ( .A(b[2]), .B(n366), .Y(n418) );
  OAI22XL U357 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n150) );
  XOR2X1 U358 ( .A(b[3]), .B(n366), .Y(n419) );
  OAI22XL U359 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n149) );
  XOR2X1 U360 ( .A(b[4]), .B(n366), .Y(n420) );
  OAI22XL U361 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n148) );
  XOR2X1 U362 ( .A(b[5]), .B(n366), .Y(n421) );
  OAI22XL U363 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n147) );
  XOR2X1 U364 ( .A(b[6]), .B(n366), .Y(n422) );
  OAI22XL U365 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n146) );
  XOR2X1 U366 ( .A(b[7]), .B(n366), .Y(n423) );
  OAI22XL U367 ( .A0(n424), .A1(n351), .B0(n352), .B1(n386), .Y(n145) );
  XOR2X1 U368 ( .A(b[9]), .B(n366), .Y(n386) );
  XOR2X1 U369 ( .A(b[8]), .B(n366), .Y(n424) );
  AO21X1 U370 ( .A0(n351), .A1(n352), .B0(n385), .Y(n144) );
  XOR2X1 U371 ( .A(b[10]), .B(n366), .Y(n385) );
  NOR2X1 U372 ( .A(n354), .B(n370), .Y(n143) );
  OAI22XL U373 ( .A0(n425), .A1(n353), .B0(n354), .B1(n426), .Y(n142) );
  XOR2X1 U374 ( .A(n364), .B(n357), .Y(n425) );
  OAI22XL U375 ( .A0(n426), .A1(n353), .B0(n354), .B1(n427), .Y(n141) );
  XOR2X1 U376 ( .A(b[1]), .B(n364), .Y(n426) );
  OAI22XL U377 ( .A0(n427), .A1(n353), .B0(n354), .B1(n428), .Y(n140) );
  XOR2X1 U378 ( .A(b[2]), .B(n364), .Y(n427) );
  OAI22XL U379 ( .A0(n428), .A1(n353), .B0(n354), .B1(n429), .Y(n139) );
  XOR2X1 U380 ( .A(b[3]), .B(n364), .Y(n428) );
  OAI22XL U381 ( .A0(n429), .A1(n353), .B0(n354), .B1(n380), .Y(n138) );
  XOR2X1 U382 ( .A(b[5]), .B(n364), .Y(n380) );
  XOR2X1 U383 ( .A(b[4]), .B(n364), .Y(n429) );
  OAI22XL U384 ( .A0(n383), .A1(n353), .B0(n354), .B1(n430), .Y(n137) );
  XOR2X1 U385 ( .A(b[6]), .B(n364), .Y(n383) );
  OAI22XL U386 ( .A0(n430), .A1(n353), .B0(n354), .B1(n431), .Y(n136) );
  XOR2X1 U387 ( .A(b[7]), .B(n364), .Y(n430) );
  OAI22XL U388 ( .A0(n431), .A1(n353), .B0(n354), .B1(n389), .Y(n135) );
  XOR2X1 U389 ( .A(b[9]), .B(n364), .Y(n389) );
  XOR2X1 U390 ( .A(b[8]), .B(n364), .Y(n431) );
  AO21X1 U391 ( .A0(n353), .A1(n354), .B0(n388), .Y(n134) );
  XOR2X1 U392 ( .A(b[10]), .B(n364), .Y(n388) );
  NOR2X1 U393 ( .A(n356), .B(n370), .Y(n133) );
  OAI22XL U394 ( .A0(n432), .A1(n355), .B0(n356), .B1(n433), .Y(n132) );
  XOR2X1 U395 ( .A(n361), .B(n357), .Y(n432) );
  OAI22XL U396 ( .A0(n433), .A1(n355), .B0(n356), .B1(n434), .Y(n131) );
  XOR2X1 U397 ( .A(b[1]), .B(n361), .Y(n433) );
  OAI22XL U398 ( .A0(n434), .A1(n355), .B0(n356), .B1(n435), .Y(n130) );
  XOR2X1 U399 ( .A(b[2]), .B(n361), .Y(n434) );
  OAI22XL U400 ( .A0(n435), .A1(n355), .B0(n356), .B1(n436), .Y(n129) );
  XOR2X1 U401 ( .A(b[3]), .B(n361), .Y(n435) );
  OAI22XL U402 ( .A0(n436), .A1(n355), .B0(n356), .B1(n437), .Y(n128) );
  XOR2X1 U403 ( .A(b[4]), .B(n361), .Y(n436) );
  OAI22XL U404 ( .A0(n437), .A1(n355), .B0(n356), .B1(n438), .Y(n127) );
  XOR2X1 U405 ( .A(b[5]), .B(n361), .Y(n437) );
  OAI22XL U406 ( .A0(n438), .A1(n355), .B0(n356), .B1(n439), .Y(n126) );
  XOR2X1 U407 ( .A(b[6]), .B(n361), .Y(n438) );
  OAI22XL U408 ( .A0(n439), .A1(n355), .B0(n356), .B1(n440), .Y(n125) );
  XOR2X1 U409 ( .A(b[7]), .B(n361), .Y(n439) );
  OAI22XL U410 ( .A0(n440), .A1(n355), .B0(n356), .B1(n392), .Y(n124) );
  XOR2X1 U411 ( .A(b[9]), .B(n361), .Y(n392) );
  XOR2X1 U412 ( .A(b[8]), .B(n361), .Y(n440) );
  AO21X1 U413 ( .A0(n355), .A1(n356), .B0(n391), .Y(n123) );
  XOR2X1 U414 ( .A(b[10]), .B(n361), .Y(n391) );
  NOR2X1 U415 ( .A(n359), .B(n370), .Y(n122) );
  NOR2X1 U416 ( .A(n359), .B(n441), .Y(n120) );
  XNOR2X1 U417 ( .A(b[2]), .B(n358), .Y(n441) );
  NOR2X1 U418 ( .A(n359), .B(n442), .Y(n119) );
  XNOR2X1 U419 ( .A(b[3]), .B(n358), .Y(n442) );
  NOR2X1 U420 ( .A(n359), .B(n443), .Y(n118) );
  XNOR2X1 U421 ( .A(b[4]), .B(n358), .Y(n443) );
  NOR2X1 U422 ( .A(n359), .B(n444), .Y(n117) );
  XNOR2X1 U423 ( .A(b[5]), .B(n358), .Y(n444) );
  NOR2X1 U424 ( .A(n359), .B(n445), .Y(n116) );
  XNOR2X1 U425 ( .A(b[6]), .B(n358), .Y(n445) );
  NOR2X1 U426 ( .A(n359), .B(n446), .Y(n115) );
  XNOR2X1 U427 ( .A(b[7]), .B(n358), .Y(n446) );
  NOR2X1 U428 ( .A(n359), .B(n447), .Y(n114) );
  XNOR2X1 U429 ( .A(b[8]), .B(n358), .Y(n447) );
  NOR2X1 U430 ( .A(n359), .B(n448), .Y(n113) );
  XNOR2X1 U431 ( .A(b[9]), .B(n358), .Y(n448) );
  OAI21XL U432 ( .A0(n357), .A1(n368), .B0(n378), .Y(n111) );
  OAI32X1 U433 ( .A0(n367), .A1(n357), .A2(n350), .B0(n367), .B1(n349), .Y(
        n110) );
  XOR2X1 U434 ( .A(a[3]), .B(a[2]), .Y(n449) );
  OAI32X1 U435 ( .A0(n366), .A1(n357), .A2(n352), .B0(n366), .B1(n351), .Y(
        n109) );
  XOR2X1 U436 ( .A(a[5]), .B(a[4]), .Y(n450) );
  OAI32X1 U437 ( .A0(n364), .A1(n357), .A2(n354), .B0(n364), .B1(n353), .Y(
        n108) );
  XOR2X1 U438 ( .A(a[7]), .B(a[6]), .Y(n451) );
  OAI32X1 U439 ( .A0(n361), .A1(n357), .A2(n356), .B0(n361), .B1(n355), .Y(
        n107) );
  XOR2X1 U440 ( .A(a[9]), .B(a[8]), .Y(n452) );
  NOR3BXL U441 ( .AN(n358), .B(n357), .C(n359), .Y(n106) );
  XOR2X1 U442 ( .A(n358), .B(a[9]), .Y(n374) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n27), .B(n31), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n34), .B(n32), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n35), .B(n39), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n40), .B(n44), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n52), .B(n57), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n58), .B(n65), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n66), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n74), .B(n79), .CI(n14), .CO(n13), .S(product[10]) );
  ADDFXL U15 ( .A(n80), .B(n86), .CI(n15), .CO(n14), .S(product[9]) );
  ADDFXL U16 ( .A(n87), .B(n91), .CI(n16), .CO(n15), .S(product[8]) );
  ADDFXL U17 ( .A(n92), .B(n96), .CI(n17), .CO(n16), .S(product[7]) );
  ADDFXL U18 ( .A(n98), .B(n97), .CI(n18), .CO(n17), .S(product[6]) );
  ADDFXL U19 ( .A(n99), .B(n102), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFXL U20 ( .A(n103), .B(n104), .CI(n20), .CO(n19), .S(product[4]) );
  ADDFXL U21 ( .A(n105), .B(n110), .CI(n21), .CO(n20), .S(product[3]) );
  ADDFXL U22 ( .A(n176), .B(n166), .CI(n22), .CO(n21), .S(product[2]) );
  ADDHXL U23 ( .A(n111), .B(n177), .CO(n22), .S(product[1]) );
  ADDFXL U25 ( .A(n28), .B(n123), .CI(n113), .CO(n24), .S(n25) );
  ADDFXL U26 ( .A(n360), .B(n114), .CI(n30), .CO(n26), .S(n27) );
  CMPR42X1 U28 ( .A(n134), .B(n124), .C(n36), .D(n115), .ICI(n33), .S(n32), 
        .ICO(n30), .CO(n31) );
  CMPR42X1 U29 ( .A(n125), .B(n116), .C(n362), .D(n41), .ICI(n38), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n135), .B(n126), .C(n42), .D(n46), .ICI(n43), .S(n40), 
        .ICO(n38), .CO(n39) );
  ADDFXL U32 ( .A(n48), .B(n144), .CI(n117), .CO(n41), .S(n42) );
  CMPR42X1 U33 ( .A(n365), .B(n53), .C(n54), .D(n47), .ICI(n50), .S(n45), 
        .ICO(n43), .CO(n44) );
  ADDFXL U34 ( .A(n127), .B(n118), .CI(n136), .CO(n46), .S(n47) );
  CMPR42X1 U36 ( .A(n137), .B(n128), .C(n55), .D(n60), .ICI(n56), .S(n52), 
        .ICO(n50), .CO(n51) );
  CMPR42X1 U37 ( .A(n155), .B(n119), .C(n62), .D(n145), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U38 ( .A(n363), .B(n67), .C(n68), .D(n61), .ICI(n64), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U39 ( .A(n129), .B(n156), .C(n146), .D(n120), .ICI(n70), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n138), .B(n71), .C(n76), .D(n69), .ICI(n72), .S(n66), 
        .ICO(n64), .CO(n65) );
  CMPR42X1 U42 ( .A(n157), .B(n106), .C(n147), .D(n130), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n148), .B(n83), .C(n77), .D(n81), .ICI(n78), .S(n74), 
        .ICO(n72), .CO(n73) );
  CMPR42X1 U46 ( .A(n122), .B(n139), .C(n168), .D(n158), .ICI(n131), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U47 ( .A(n169), .B(n84), .C(n85), .D(n88), .ICI(n82), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDFXL U48 ( .A(n140), .B(n149), .CI(n159), .CO(n81), .S(n82) );
  ADDHXL U49 ( .A(n132), .B(n107), .CO(n83), .S(n84) );
  CMPR42X1 U50 ( .A(n160), .B(n141), .C(n93), .D(n90), .ICI(n89), .S(n87), 
        .ICO(n85), .CO(n86) );
  ADDFXL U51 ( .A(n150), .B(n133), .CI(n170), .CO(n88), .S(n89) );
  CMPR42X1 U52 ( .A(n171), .B(n151), .C(n161), .D(n95), .ICI(n94), .S(n92), 
        .ICO(n90), .CO(n91) );
  ADDHXL U53 ( .A(n142), .B(n108), .CO(n93), .S(n94) );
  CMPR42X1 U54 ( .A(n143), .B(n172), .C(n162), .D(n152), .ICI(n100), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U55 ( .A(n163), .B(n173), .CI(n101), .CO(n98), .S(n99) );
  ADDHXL U56 ( .A(n153), .B(n109), .CO(n100), .S(n101) );
  ADDFXL U57 ( .A(n174), .B(n154), .CI(n164), .CO(n102), .S(n103) );
  ADDHXL U58 ( .A(n175), .B(n165), .CO(n104), .S(n105) );
  CLKINVX1 U262 ( .A(n48), .Y(n365) );
  INVX3 U263 ( .A(n374), .Y(n359) );
  CLKINVX1 U264 ( .A(n62), .Y(n363) );
  CLKINVX1 U265 ( .A(n36), .Y(n362) );
  INVX3 U266 ( .A(a[3]), .Y(n367) );
  CLKBUFX3 U267 ( .A(n405), .Y(n349) );
  NAND2X1 U268 ( .A(n350), .B(n449), .Y(n405) );
  CLKBUFX3 U269 ( .A(n387), .Y(n351) );
  NAND2X1 U270 ( .A(n352), .B(n450), .Y(n387) );
  CLKBUFX3 U271 ( .A(n381), .Y(n353) );
  NAND2X1 U272 ( .A(n354), .B(n451), .Y(n381) );
  NAND2X2 U273 ( .A(a[1]), .B(n369), .Y(n378) );
  INVX3 U274 ( .A(a[7]), .Y(n364) );
  INVX3 U275 ( .A(a[5]), .Y(n366) );
  INVX3 U276 ( .A(a[1]), .Y(n368) );
  CLKBUFX3 U277 ( .A(n403), .Y(n350) );
  XNOR2X1 U278 ( .A(a[2]), .B(a[1]), .Y(n403) );
  CLKBUFX3 U279 ( .A(n384), .Y(n352) );
  XNOR2X1 U280 ( .A(a[4]), .B(a[3]), .Y(n384) );
  CLKBUFX3 U281 ( .A(n393), .Y(n355) );
  NAND2X1 U282 ( .A(n356), .B(n452), .Y(n393) );
  INVX3 U283 ( .A(a[9]), .Y(n361) );
  CLKBUFX3 U284 ( .A(n390), .Y(n356) );
  XNOR2X1 U285 ( .A(a[8]), .B(a[7]), .Y(n390) );
  CLKBUFX3 U286 ( .A(n382), .Y(n354) );
  XNOR2X1 U287 ( .A(a[6]), .B(a[5]), .Y(n382) );
  CLKINVX1 U288 ( .A(n28), .Y(n360) );
  INVX3 U289 ( .A(a[0]), .Y(n369) );
  CLKINVX1 U290 ( .A(n357), .Y(n370) );
  CLKBUFX3 U291 ( .A(a[10]), .Y(n358) );
  CLKBUFX3 U292 ( .A(b[0]), .Y(n357) );
  XOR2X1 U293 ( .A(n371), .B(n372), .Y(product[20]) );
  XOR2X1 U294 ( .A(n4), .B(n24), .Y(n372) );
  NAND2X1 U295 ( .A(n373), .B(n374), .Y(n371) );
  XOR2X1 U296 ( .A(b[10]), .B(n358), .Y(n373) );
  NOR2X1 U297 ( .A(n369), .B(n370), .Y(product[0]) );
  XOR2X1 U298 ( .A(n375), .B(n376), .Y(n71) );
  NAND2BX1 U299 ( .AN(n376), .B(n375), .Y(n70) );
  NAND2X1 U300 ( .A(n377), .B(n374), .Y(n375) );
  XOR2X1 U301 ( .A(b[1]), .B(n358), .Y(n377) );
  OAI2BB1X1 U302 ( .A0N(n369), .A1N(n378), .B0(n379), .Y(n376) );
  OAI22XL U303 ( .A0(n380), .A1(n353), .B0(n354), .B1(n383), .Y(n62) );
  OAI22XL U304 ( .A0(n352), .A1(n385), .B0(n386), .B1(n351), .Y(n48) );
  OAI22XL U305 ( .A0(n354), .A1(n388), .B0(n389), .B1(n353), .Y(n36) );
  OAI22XL U306 ( .A0(n356), .A1(n391), .B0(n392), .B1(n355), .Y(n28) );
  OAI22XL U307 ( .A0(n357), .A1(n378), .B0(n394), .B1(n369), .Y(n177) );
  OAI22XL U308 ( .A0(n394), .A1(n378), .B0(n395), .B1(n369), .Y(n176) );
  XOR2X1 U309 ( .A(b[1]), .B(n368), .Y(n394) );
  OAI22XL U310 ( .A0(n395), .A1(n378), .B0(n396), .B1(n369), .Y(n175) );
  XOR2X1 U311 ( .A(b[2]), .B(n368), .Y(n395) );
  OAI22XL U312 ( .A0(n396), .A1(n378), .B0(n397), .B1(n369), .Y(n174) );
  XOR2X1 U313 ( .A(b[3]), .B(n368), .Y(n396) );
  OAI22XL U314 ( .A0(n397), .A1(n378), .B0(n398), .B1(n369), .Y(n173) );
  XOR2X1 U315 ( .A(b[4]), .B(n368), .Y(n397) );
  OAI22XL U316 ( .A0(n398), .A1(n378), .B0(n399), .B1(n369), .Y(n172) );
  XOR2X1 U317 ( .A(b[5]), .B(n368), .Y(n398) );
  OAI22XL U318 ( .A0(n399), .A1(n378), .B0(n400), .B1(n369), .Y(n171) );
  XOR2X1 U319 ( .A(b[6]), .B(n368), .Y(n399) );
  OAI22XL U320 ( .A0(n400), .A1(n378), .B0(n401), .B1(n369), .Y(n170) );
  XOR2X1 U321 ( .A(b[7]), .B(n368), .Y(n400) );
  OAI22XL U322 ( .A0(n401), .A1(n378), .B0(n402), .B1(n369), .Y(n169) );
  XOR2X1 U323 ( .A(b[8]), .B(n368), .Y(n401) );
  OAI2BB2XL U324 ( .B0(n402), .B1(n378), .A0N(n379), .A1N(a[0]), .Y(n168) );
  XOR2X1 U325 ( .A(b[10]), .B(a[1]), .Y(n379) );
  XOR2X1 U326 ( .A(b[9]), .B(n368), .Y(n402) );
  NOR2X1 U327 ( .A(n350), .B(n370), .Y(n166) );
  OAI22XL U328 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n165) );
  XOR2X1 U329 ( .A(n367), .B(n357), .Y(n404) );
  OAI22XL U330 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n164) );
  XOR2X1 U331 ( .A(b[1]), .B(n367), .Y(n406) );
  OAI22XL U332 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n163) );
  XOR2X1 U333 ( .A(b[2]), .B(n367), .Y(n407) );
  OAI22XL U334 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n162) );
  XOR2X1 U335 ( .A(b[3]), .B(n367), .Y(n408) );
  OAI22XL U336 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n161) );
  XOR2X1 U337 ( .A(b[4]), .B(n367), .Y(n409) );
  OAI22XL U338 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n160) );
  XOR2X1 U339 ( .A(b[5]), .B(n367), .Y(n410) );
  OAI22XL U340 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n159) );
  XOR2X1 U341 ( .A(b[6]), .B(n367), .Y(n411) );
  OAI22XL U342 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n158) );
  XOR2X1 U343 ( .A(b[7]), .B(n367), .Y(n412) );
  OAI22XL U344 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n157) );
  XOR2X1 U345 ( .A(b[8]), .B(n367), .Y(n413) );
  OAI22XL U346 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n156) );
  XOR2X1 U347 ( .A(b[9]), .B(n367), .Y(n414) );
  AO21X1 U348 ( .A0(n349), .A1(n350), .B0(n415), .Y(n155) );
  XOR2X1 U349 ( .A(b[10]), .B(n367), .Y(n415) );
  NOR2X1 U350 ( .A(n352), .B(n370), .Y(n154) );
  OAI22XL U351 ( .A0(n416), .A1(n351), .B0(n352), .B1(n417), .Y(n153) );
  XOR2X1 U352 ( .A(n366), .B(n357), .Y(n416) );
  OAI22XL U353 ( .A0(n417), .A1(n351), .B0(n352), .B1(n418), .Y(n152) );
  XOR2X1 U354 ( .A(b[1]), .B(n366), .Y(n417) );
  OAI22XL U355 ( .A0(n418), .A1(n351), .B0(n352), .B1(n419), .Y(n151) );
  XOR2X1 U356 ( .A(b[2]), .B(n366), .Y(n418) );
  OAI22XL U357 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n150) );
  XOR2X1 U358 ( .A(b[3]), .B(n366), .Y(n419) );
  OAI22XL U359 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n149) );
  XOR2X1 U360 ( .A(b[4]), .B(n366), .Y(n420) );
  OAI22XL U361 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n148) );
  XOR2X1 U362 ( .A(b[5]), .B(n366), .Y(n421) );
  OAI22XL U363 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n147) );
  XOR2X1 U364 ( .A(b[6]), .B(n366), .Y(n422) );
  OAI22XL U365 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n146) );
  XOR2X1 U366 ( .A(b[7]), .B(n366), .Y(n423) );
  OAI22XL U367 ( .A0(n424), .A1(n351), .B0(n352), .B1(n386), .Y(n145) );
  XOR2X1 U368 ( .A(b[9]), .B(n366), .Y(n386) );
  XOR2X1 U369 ( .A(b[8]), .B(n366), .Y(n424) );
  AO21X1 U370 ( .A0(n351), .A1(n352), .B0(n385), .Y(n144) );
  XOR2X1 U371 ( .A(b[10]), .B(n366), .Y(n385) );
  NOR2X1 U372 ( .A(n354), .B(n370), .Y(n143) );
  OAI22XL U373 ( .A0(n425), .A1(n353), .B0(n354), .B1(n426), .Y(n142) );
  XOR2X1 U374 ( .A(n364), .B(n357), .Y(n425) );
  OAI22XL U375 ( .A0(n426), .A1(n353), .B0(n354), .B1(n427), .Y(n141) );
  XOR2X1 U376 ( .A(b[1]), .B(n364), .Y(n426) );
  OAI22XL U377 ( .A0(n427), .A1(n353), .B0(n354), .B1(n428), .Y(n140) );
  XOR2X1 U378 ( .A(b[2]), .B(n364), .Y(n427) );
  OAI22XL U379 ( .A0(n428), .A1(n353), .B0(n354), .B1(n429), .Y(n139) );
  XOR2X1 U380 ( .A(b[3]), .B(n364), .Y(n428) );
  OAI22XL U381 ( .A0(n429), .A1(n353), .B0(n354), .B1(n380), .Y(n138) );
  XOR2X1 U382 ( .A(b[5]), .B(n364), .Y(n380) );
  XOR2X1 U383 ( .A(b[4]), .B(n364), .Y(n429) );
  OAI22XL U384 ( .A0(n383), .A1(n353), .B0(n354), .B1(n430), .Y(n137) );
  XOR2X1 U385 ( .A(b[6]), .B(n364), .Y(n383) );
  OAI22XL U386 ( .A0(n430), .A1(n353), .B0(n354), .B1(n431), .Y(n136) );
  XOR2X1 U387 ( .A(b[7]), .B(n364), .Y(n430) );
  OAI22XL U388 ( .A0(n431), .A1(n353), .B0(n354), .B1(n389), .Y(n135) );
  XOR2X1 U389 ( .A(b[9]), .B(n364), .Y(n389) );
  XOR2X1 U390 ( .A(b[8]), .B(n364), .Y(n431) );
  AO21X1 U391 ( .A0(n353), .A1(n354), .B0(n388), .Y(n134) );
  XOR2X1 U392 ( .A(b[10]), .B(n364), .Y(n388) );
  NOR2X1 U393 ( .A(n356), .B(n370), .Y(n133) );
  OAI22XL U394 ( .A0(n432), .A1(n355), .B0(n356), .B1(n433), .Y(n132) );
  XOR2X1 U395 ( .A(n361), .B(n357), .Y(n432) );
  OAI22XL U396 ( .A0(n433), .A1(n355), .B0(n356), .B1(n434), .Y(n131) );
  XOR2X1 U397 ( .A(b[1]), .B(n361), .Y(n433) );
  OAI22XL U398 ( .A0(n434), .A1(n355), .B0(n356), .B1(n435), .Y(n130) );
  XOR2X1 U399 ( .A(b[2]), .B(n361), .Y(n434) );
  OAI22XL U400 ( .A0(n435), .A1(n355), .B0(n356), .B1(n436), .Y(n129) );
  XOR2X1 U401 ( .A(b[3]), .B(n361), .Y(n435) );
  OAI22XL U402 ( .A0(n436), .A1(n355), .B0(n356), .B1(n437), .Y(n128) );
  XOR2X1 U403 ( .A(b[4]), .B(n361), .Y(n436) );
  OAI22XL U404 ( .A0(n437), .A1(n355), .B0(n356), .B1(n438), .Y(n127) );
  XOR2X1 U405 ( .A(b[5]), .B(n361), .Y(n437) );
  OAI22XL U406 ( .A0(n438), .A1(n355), .B0(n356), .B1(n439), .Y(n126) );
  XOR2X1 U407 ( .A(b[6]), .B(n361), .Y(n438) );
  OAI22XL U408 ( .A0(n439), .A1(n355), .B0(n356), .B1(n440), .Y(n125) );
  XOR2X1 U409 ( .A(b[7]), .B(n361), .Y(n439) );
  OAI22XL U410 ( .A0(n440), .A1(n355), .B0(n356), .B1(n392), .Y(n124) );
  XOR2X1 U411 ( .A(b[9]), .B(n361), .Y(n392) );
  XOR2X1 U412 ( .A(b[8]), .B(n361), .Y(n440) );
  AO21X1 U413 ( .A0(n355), .A1(n356), .B0(n391), .Y(n123) );
  XOR2X1 U414 ( .A(b[10]), .B(n361), .Y(n391) );
  NOR2X1 U415 ( .A(n359), .B(n370), .Y(n122) );
  NOR2X1 U416 ( .A(n359), .B(n441), .Y(n120) );
  XNOR2X1 U417 ( .A(b[2]), .B(n358), .Y(n441) );
  NOR2X1 U418 ( .A(n359), .B(n442), .Y(n119) );
  XNOR2X1 U419 ( .A(b[3]), .B(n358), .Y(n442) );
  NOR2X1 U420 ( .A(n359), .B(n443), .Y(n118) );
  XNOR2X1 U421 ( .A(b[4]), .B(n358), .Y(n443) );
  NOR2X1 U422 ( .A(n359), .B(n444), .Y(n117) );
  XNOR2X1 U423 ( .A(b[5]), .B(n358), .Y(n444) );
  NOR2X1 U424 ( .A(n359), .B(n445), .Y(n116) );
  XNOR2X1 U425 ( .A(b[6]), .B(n358), .Y(n445) );
  NOR2X1 U426 ( .A(n359), .B(n446), .Y(n115) );
  XNOR2X1 U427 ( .A(b[7]), .B(n358), .Y(n446) );
  NOR2X1 U428 ( .A(n359), .B(n447), .Y(n114) );
  XNOR2X1 U429 ( .A(b[8]), .B(n358), .Y(n447) );
  NOR2X1 U430 ( .A(n359), .B(n448), .Y(n113) );
  XNOR2X1 U431 ( .A(b[9]), .B(n358), .Y(n448) );
  OAI21XL U432 ( .A0(n357), .A1(n368), .B0(n378), .Y(n111) );
  OAI32X1 U433 ( .A0(n367), .A1(n357), .A2(n350), .B0(n367), .B1(n349), .Y(
        n110) );
  XOR2X1 U434 ( .A(a[3]), .B(a[2]), .Y(n449) );
  OAI32X1 U435 ( .A0(n366), .A1(n357), .A2(n352), .B0(n366), .B1(n351), .Y(
        n109) );
  XOR2X1 U436 ( .A(a[5]), .B(a[4]), .Y(n450) );
  OAI32X1 U437 ( .A0(n364), .A1(n357), .A2(n354), .B0(n364), .B1(n353), .Y(
        n108) );
  XOR2X1 U438 ( .A(a[7]), .B(a[6]), .Y(n451) );
  OAI32X1 U439 ( .A0(n361), .A1(n357), .A2(n356), .B0(n361), .B1(n355), .Y(
        n107) );
  XOR2X1 U440 ( .A(a[9]), .B(a[8]), .Y(n452) );
  NOR3BXL U441 ( .AN(n358), .B(n357), .C(n359), .Y(n106) );
  XOR2X1 U442 ( .A(n358), .B(a[9]), .Y(n374) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   N331, N333, N348, \geofence_X[0][9] , \geofence_X[0][8] ,
         \geofence_X[0][7] , \geofence_X[0][6] , \geofence_X[0][5] ,
         \geofence_X[0][4] , \geofence_X[0][3] , \geofence_X[0][2] ,
         \geofence_X[0][1] , \geofence_X[0][0] , \geofence_X[1][9] ,
         \geofence_X[1][8] , \geofence_X[1][7] , \geofence_X[1][6] ,
         \geofence_X[1][5] , \geofence_X[1][4] , \geofence_X[1][3] ,
         \geofence_X[1][2] , \geofence_X[1][1] , \geofence_X[1][0] ,
         \geofence_X[2][9] , \geofence_X[2][8] , \geofence_X[2][7] ,
         \geofence_X[2][6] , \geofence_X[2][5] , \geofence_X[2][4] ,
         \geofence_X[2][3] , \geofence_X[2][2] , \geofence_X[2][1] ,
         \geofence_X[2][0] , \geofence_X[3][9] , \geofence_X[3][8] ,
         \geofence_X[3][7] , \geofence_X[3][6] , \geofence_X[3][5] ,
         \geofence_X[3][4] , \geofence_X[3][3] , \geofence_X[3][2] ,
         \geofence_X[3][1] , \geofence_X[3][0] , \geofence_X[4][9] ,
         \geofence_X[4][8] , \geofence_X[4][7] , \geofence_X[4][6] ,
         \geofence_X[4][5] , \geofence_X[4][4] , \geofence_X[4][3] ,
         \geofence_X[4][2] , \geofence_X[4][1] , \geofence_X[4][0] ,
         \geofence_X[5][9] , \geofence_X[5][8] , \geofence_X[5][7] ,
         \geofence_X[5][6] , \geofence_X[5][5] , \geofence_X[5][4] ,
         \geofence_X[5][3] , \geofence_X[5][2] , \geofence_X[5][1] ,
         \geofence_X[5][0] , \geofence_Y[0][9] , \geofence_Y[0][8] ,
         \geofence_Y[0][7] , \geofence_Y[0][6] , \geofence_Y[0][5] ,
         \geofence_Y[0][4] , \geofence_Y[0][3] , \geofence_Y[0][2] ,
         \geofence_Y[0][1] , \geofence_Y[0][0] , \geofence_Y[1][9] ,
         \geofence_Y[1][8] , \geofence_Y[1][7] , \geofence_Y[1][6] ,
         \geofence_Y[1][5] , \geofence_Y[1][4] , \geofence_Y[1][3] ,
         \geofence_Y[1][2] , \geofence_Y[1][1] , \geofence_Y[1][0] ,
         \geofence_Y[2][9] , \geofence_Y[2][8] , \geofence_Y[2][7] ,
         \geofence_Y[2][6] , \geofence_Y[2][5] , \geofence_Y[2][4] ,
         \geofence_Y[2][3] , \geofence_Y[2][2] , \geofence_Y[2][1] ,
         \geofence_Y[2][0] , \geofence_Y[3][9] , \geofence_Y[3][8] ,
         \geofence_Y[3][7] , \geofence_Y[3][6] , \geofence_Y[3][5] ,
         \geofence_Y[3][4] , \geofence_Y[3][3] , \geofence_Y[3][2] ,
         \geofence_Y[3][1] , \geofence_Y[3][0] , \geofence_Y[4][9] ,
         \geofence_Y[4][8] , \geofence_Y[4][7] , \geofence_Y[4][6] ,
         \geofence_Y[4][5] , \geofence_Y[4][4] , \geofence_Y[4][3] ,
         \geofence_Y[4][2] , \geofence_Y[4][1] , \geofence_Y[4][0] ,
         \geofence_Y[5][9] , \geofence_Y[5][8] , \geofence_Y[5][7] ,
         \geofence_Y[5][6] , \geofence_Y[5][5] , \geofence_Y[5][4] ,
         \geofence_Y[5][3] , \geofence_Y[5][2] , \geofence_Y[5][1] ,
         \geofence_Y[5][0] , N759, N760, N776, N777, N778, N779, N780, N781,
         N782, N783, N784, N785, N792, N793, N794, N795, N796, N797, N798,
         N799, N800, N801, N809, N810, N811, N812, N813, N814, N815, N816,
         N817, N818, N819, N820, N821, N822, N823, N824, N825, N826, N827,
         N828, N829, N836, N837, N838, N839, N840, N841, N842, N843, N844,
         N845, N846, N847, N848, N849, N850, N851, N852, N853, N854, N855,
         N856, N863, N864, N865, N866, N867, N868, N869, N870, N871, N872,
         N873, N874, N875, N876, N877, N878, N879, N880, N881, N882, N883,
         N890, N891, N892, N893, N894, N895, N896, N897, N898, N899, N900,
         N901, N902, N903, N904, N905, N906, N907, N908, N909, N910, N911,
         N912, N913, N914, N915, N916, N917, N918, N919, N920, N921, N922,
         N923, N924, N925, N926, N927, N928, N929, N930, N931, N932, N939,
         N940, N941, N942, N943, N944, N945, N946, N947, N948, N949, N950,
         N951, N952, N953, N954, N955, N956, N957, N958, N959, N966, N967,
         N968, N969, N970, N971, N972, N973, N974, N975, N976, N977, N978,
         N979, N980, N981, N982, N983, N984, N985, N986, N990, N1013, n49, n50,
         n52, n56, n59, n62, n65, n68, n71, n74, n77, n80, n83, n136, n139,
         n142, n145, n148, n151, n154, n157, n160, n163, n220, n224, n226,
         n229, n230, n231, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n265, n266, n270, n271, n273, n274, n275,
         n276, n277, n278, n279, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n292, n293, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n307, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n973, n974,
         n975, n976, n977, n978, n979, n980, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258,
         n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268,
         n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278,
         n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308,
         n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318,
         n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328,
         n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338,
         n1339, n1340, n1341, n1342, n1343, n1344;
  wire   [10:0] vectorA_x;
  wire   [10:0] vectorB_y;
  wire   [20:0] AxBy;
  wire   [10:0] vectorB_x;
  wire   [10:0] vectorA_y;
  wire   [20:0] BxAy;
  wire   [2:0] counter_A;
  wire   [2:0] counter_B;
  wire   [2:0] counter_cal_A;
  wire   [2:0] state;
  wire   [2:0] next_state;
  wire   [2:0] geofence_counter;
  wire   [1:0] outer_counter;
  wire   [9:0] object_X;
  wire   [9:0] object_Y;
  wire   [5:0] match_array;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  geofence_DW_cmp_0 r505 ( .A(AxBy), .B(BxAy), .TC(1'b1), .GE_LT(1'b0), 
        .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N348) );
  geofence_DW01_sub_0 sub_93 ( .A({1'b0, N792, N793, N794, N795, N796, N797, 
        N798, N799, N800, N801}), .B({1'b0, object_Y}), .CI(1'b0), .DIFF({N932, 
        N931, N930, N929, N928, N927, N926, N925, N924, N923, N922}) );
  geofence_DW01_sub_1 sub_87 ( .A({1'b0, \geofence_Y[0][9] , 
        \geofence_Y[0][8] , \geofence_Y[0][7] , \geofence_Y[0][6] , 
        \geofence_Y[0][5] , \geofence_Y[0][4] , \geofence_Y[0][3] , 
        \geofence_Y[0][2] , \geofence_Y[0][1] , n980}), .B({1'b0, N836, N837, 
        N838, N839, N840, N841, N842, N843, N844, N845}), .CI(1'b0), .DIFF({
        N856, N855, N854, N853, N852, N851, N850, N849, N848, N847, N846}) );
  geofence_DW01_sub_2 sub_94 ( .A({1'b0, N939, N940, N941, N942, N943, N944, 
        N945, N946, N947, N948}), .B({1'b0, N776, N777, N778, N779, N780, N781, 
        N782, N783, N784, N785}), .CI(1'b0), .DIFF({N959, N958, N957, N956, 
        N955, N954, N953, N952, N951, N950, N949}) );
  geofence_DW01_sub_3 sub_88 ( .A({1'b0, \geofence_X[0][9] , 
        \geofence_X[0][8] , \geofence_X[0][7] , \geofence_X[0][6] , 
        \geofence_X[0][5] , \geofence_X[0][4] , \geofence_X[0][3] , 
        \geofence_X[0][2] , \geofence_X[0][1] , \geofence_X[0][0] }), .B({1'b0, 
        N863, N864, N865, N866, N867, N868, N869, N870, N871, N872}), .CI(1'b0), .DIFF({N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, N873}) );
  geofence_DW01_sub_4 sub_95 ( .A({1'b0, N966, N967, N968, N969, N970, N971, 
        N972, N973, N974, N975}), .B({1'b0, N792, N793, N794, N795, N796, N797, 
        N798, N799, N800, N801}), .CI(1'b0), .DIFF({N986, N985, N984, N983, 
        N982, N981, N980, N979, N978, N977, N976}) );
  geofence_DW01_sub_5 sub_89 ( .A({1'b0, \geofence_Y[0][9] , 
        \geofence_Y[0][8] , \geofence_Y[0][7] , \geofence_Y[0][6] , 
        \geofence_Y[0][5] , \geofence_Y[0][4] , \geofence_Y[0][3] , 
        \geofence_Y[0][2] , \geofence_Y[0][1] , \geofence_Y[0][0] }), .B({1'b0, 
        N890, N891, N892, N893, N894, N895, N896, N897, N898, N899}), .CI(1'b0), .DIFF({N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, N900}) );
  geofence_DW01_sub_6 sub_92 ( .A({1'b0, N776, N777, N778, N779, N780, N781, 
        N782, N783, N784, N785}), .B({1'b0, object_X}), .CI(1'b0), .DIFF({N921, 
        N920, N919, N918, N917, N916, N915, N914, N913, N912, N911}) );
  geofence_DW01_sub_7 sub_86 ( .A({1'b0, \geofence_X[0][9] , 
        \geofence_X[0][8] , \geofence_X[0][7] , \geofence_X[0][6] , 
        \geofence_X[0][5] , \geofence_X[0][4] , \geofence_X[0][3] , 
        \geofence_X[0][2] , \geofence_X[0][1] , n979}), .B({1'b0, N809, N810, 
        N811, N812, N813, N814, N815, N816, N817, N818}), .CI(1'b0), .DIFF({
        N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819}) );
  geofence_DW_mult_tc_0 mult_21 ( .a(vectorB_x), .b(vectorA_y), .product({
        SYNOPSYS_UNCONNECTED__0, BxAy}) );
  geofence_DW_mult_tc_1 mult_20 ( .a(vectorA_x), .b(vectorB_y), .product({
        SYNOPSYS_UNCONNECTED__1, AxBy}) );
  EDFFX1 \match_array_reg[4]  ( .D(N348), .E(n993), .CK(clk), .Q(
        match_array[4]) );
  EDFFX1 \match_array_reg[3]  ( .D(N348), .E(n990), .CK(clk), .Q(
        match_array[3]) );
  EDFFX1 \match_array_reg[2]  ( .D(N348), .E(n991), .CK(clk), .QN(n229) );
  EDFFTRX1 \outer_counter_reg[0]  ( .RN(n1163), .D(counter_B[0]), .E(n1201), 
        .CK(clk), .Q(outer_counter[0]), .QN(n220) );
  DFFX1 \match_array_reg[1]  ( .D(n469), .CK(clk), .QN(n230) );
  DFFX1 \match_array_reg[0]  ( .D(n468), .CK(clk), .QN(n231) );
  EDFFX1 \object_Y_reg[9]  ( .D(Y[9]), .E(n1119), .CK(clk), .Q(object_Y[9]) );
  EDFFX1 \object_Y_reg[7]  ( .D(Y[7]), .E(n1120), .CK(clk), .Q(object_Y[7]) );
  EDFFX1 \object_Y_reg[8]  ( .D(Y[8]), .E(n1119), .CK(clk), .Q(object_Y[8]) );
  EDFFX1 \object_X_reg[8]  ( .D(X[8]), .E(n1120), .CK(clk), .Q(object_X[8]) );
  EDFFX1 \object_X_reg[9]  ( .D(X[9]), .E(n1120), .CK(clk), .Q(object_X[9]) );
  EDFFX1 \object_Y_reg[5]  ( .D(Y[5]), .E(n1119), .CK(clk), .Q(object_Y[5]) );
  EDFFX1 \object_Y_reg[6]  ( .D(Y[6]), .E(n1120), .CK(clk), .Q(object_Y[6]) );
  EDFFX1 \object_X_reg[6]  ( .D(X[6]), .E(n1119), .CK(clk), .Q(object_X[6]) );
  EDFFX1 \object_X_reg[7]  ( .D(X[7]), .E(n1119), .CK(clk), .Q(object_X[7]) );
  EDFFX1 \object_Y_reg[1]  ( .D(Y[1]), .E(n1119), .CK(clk), .Q(object_Y[1]) );
  EDFFX1 \object_Y_reg[2]  ( .D(Y[2]), .E(n1120), .CK(clk), .Q(object_Y[2]) );
  EDFFX1 \object_Y_reg[3]  ( .D(Y[3]), .E(n1120), .CK(clk), .Q(object_Y[3]) );
  EDFFX1 \object_Y_reg[4]  ( .D(Y[4]), .E(n1119), .CK(clk), .Q(object_Y[4]) );
  EDFFX1 \object_X_reg[2]  ( .D(X[2]), .E(n1119), .CK(clk), .Q(object_X[2]) );
  EDFFX1 \object_X_reg[3]  ( .D(X[3]), .E(n1119), .CK(clk), .Q(object_X[3]) );
  EDFFX1 \object_X_reg[4]  ( .D(X[4]), .E(n1120), .CK(clk), .Q(object_X[4]) );
  EDFFX1 \object_X_reg[5]  ( .D(X[5]), .E(n1120), .CK(clk), .Q(object_X[5]) );
  EDFFX1 \object_Y_reg[0]  ( .D(Y[0]), .E(n1119), .CK(clk), .Q(object_Y[0]) );
  EDFFX1 \object_X_reg[0]  ( .D(X[0]), .E(n1120), .CK(clk), .Q(object_X[0]) );
  EDFFX1 \object_X_reg[1]  ( .D(X[1]), .E(n1120), .CK(clk), .Q(object_X[1]) );
  DFFTRX1 \geofence_counter_reg[1]  ( .D(n995), .RN(n1109), .CK(clk), .Q(
        geofence_counter[1]), .QN(n52) );
  EDFFX1 \geofence_Y_reg[0][9]  ( .D(Y[9]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][9] ), .QN(n136) );
  EDFFX1 \geofence_X_reg[0][9]  ( .D(X[9]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][9] ), .QN(n56) );
  EDFFX1 \geofence_X_reg[0][8]  ( .D(X[8]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][8] ), .QN(n59) );
  EDFFX1 \geofence_Y_reg[0][8]  ( .D(Y[8]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][8] ), .QN(n139) );
  EDFFX1 \geofence_X_reg[0][7]  ( .D(X[7]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][7] ), .QN(n62) );
  EDFFX1 \geofence_X_reg[0][6]  ( .D(X[6]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][6] ), .QN(n65) );
  EDFFX1 \geofence_Y_reg[0][7]  ( .D(Y[7]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][7] ), .QN(n142) );
  EDFFX1 \geofence_Y_reg[0][6]  ( .D(Y[6]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][6] ), .QN(n145) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1167), .Q(state[2]), .QN(n49) );
  EDFFX1 \geofence_X_reg[0][5]  ( .D(X[5]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][5] ), .QN(n68) );
  EDFFX1 \geofence_X_reg[0][4]  ( .D(X[4]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][4] ), .QN(n71) );
  EDFFX1 \geofence_X_reg[0][3]  ( .D(X[3]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][3] ), .QN(n74) );
  EDFFX1 \geofence_Y_reg[0][5]  ( .D(Y[5]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][5] ), .QN(n148) );
  EDFFX1 \geofence_Y_reg[0][4]  ( .D(Y[4]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][4] ), .QN(n151) );
  EDFFX1 \geofence_Y_reg[0][3]  ( .D(Y[3]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][3] ), .QN(n154) );
  EDFFX1 \geofence_Y_reg[0][2]  ( .D(Y[2]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][2] ), .QN(n157) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n1167), .Q(state[0]), .QN(n50) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1167), .Q(state[1]) );
  EDFFX1 \geofence_X_reg[0][2]  ( .D(X[2]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][2] ), .QN(n77) );
  EDFFX1 \geofence_X_reg[0][1]  ( .D(X[1]), .E(n1160), .CK(clk), .Q(
        \geofence_X[0][1] ), .QN(n80) );
  EDFFX1 \geofence_Y_reg[0][1]  ( .D(Y[1]), .E(n1160), .CK(clk), .Q(
        \geofence_Y[0][1] ), .QN(n160) );
  DFFTRX1 \Cal_IsInside_counter_reg[1]  ( .D(n370), .RN(n1197), .CK(clk), .Q(
        counter_cal_A[1]), .QN(n226) );
  DFFRX1 is_inside_reg ( .D(N1013), .CK(clk), .RN(n1167), .QN(n977) );
  DFFRX1 valid_reg ( .D(n1191), .CK(clk), .RN(n1167), .QN(n978) );
  AND2X1 \Cal_IsInside_counter_reg[2]/U2  ( .A(n369), .B(n1197), .Y(n983) );
  DFFQXL \Cal_IsInside_counter_reg[2]  ( .D(n983), .CK(clk), .Q(
        counter_cal_A[2]) );
  EDFFX1 \geofence_Y_reg[0][0]  ( .D(Y[0]), .E(n273), .CK(clk), .Q(
        \geofence_Y[0][0] ), .QN(n163) );
  EDFFX1 \geofence_X_reg[0][0]  ( .D(X[0]), .E(n273), .CK(clk), .Q(
        \geofence_X[0][0] ), .QN(n83) );
  DFFX1 \geofence_counter_reg[0]  ( .D(N331), .CK(clk), .Q(geofence_counter[0]), .QN(n1198) );
  DFFX1 \geofence_counter_reg[2]  ( .D(N333), .CK(clk), .Q(geofence_counter[2]), .QN(n1199) );
  DFFX1 \outer_counter_reg[1]  ( .D(n571), .CK(clk), .Q(outer_counter[1]), 
        .QN(n1200) );
  DFFX1 \match_array_reg[5]  ( .D(n470), .CK(clk), .Q(match_array[5]) );
  DFFX1 \geofence_X_reg[2][9]  ( .D(n481), .CK(clk), .Q(\geofence_X[2][9] ), 
        .QN(n1285) );
  DFFX1 \geofence_X_reg[2][3]  ( .D(n487), .CK(clk), .Q(\geofence_X[2][3] ), 
        .QN(n1291) );
  DFFX1 \geofence_X_reg[2][0]  ( .D(n490), .CK(clk), .Q(\geofence_X[2][0] ), 
        .QN(n1294) );
  DFFX1 \geofence_Y_reg[2][4]  ( .D(n536), .CK(clk), .Q(\geofence_Y[2][4] ), 
        .QN(n1300) );
  DFFX1 \geofence_X_reg[2][8]  ( .D(n482), .CK(clk), .Q(\geofence_X[2][8] ), 
        .QN(n1286) );
  DFFX1 \geofence_X_reg[2][7]  ( .D(n483), .CK(clk), .Q(\geofence_X[2][7] ), 
        .QN(n1287) );
  DFFX1 \geofence_X_reg[2][5]  ( .D(n485), .CK(clk), .Q(\geofence_X[2][5] ), 
        .QN(n1289) );
  DFFX1 \geofence_X_reg[2][4]  ( .D(n486), .CK(clk), .Q(\geofence_X[2][4] ), 
        .QN(n1290) );
  DFFX1 \geofence_Y_reg[4][6]  ( .D(n554), .CK(clk), .Q(\geofence_Y[4][6] ), 
        .QN(n1318) );
  DFFX1 \geofence_Y_reg[4][5]  ( .D(n555), .CK(clk), .Q(\geofence_Y[4][5] ), 
        .QN(n1319) );
  DFFX1 \geofence_Y_reg[4][1]  ( .D(n559), .CK(clk), .Q(\geofence_Y[4][1] ), 
        .QN(n1323) );
  DFFX1 \geofence_Y_reg[4][9]  ( .D(n551), .CK(clk), .Q(\geofence_Y[4][9] ), 
        .QN(n1315) );
  DFFX1 \geofence_Y_reg[4][8]  ( .D(n552), .CK(clk), .Q(\geofence_Y[4][8] ), 
        .QN(n1316) );
  DFFX1 \geofence_Y_reg[4][4]  ( .D(n556), .CK(clk), .Q(\geofence_Y[4][4] ), 
        .QN(n1320) );
  DFFX1 \geofence_Y_reg[4][0]  ( .D(n560), .CK(clk), .Q(\geofence_Y[4][0] ), 
        .QN(n1324) );
  DFFX1 \geofence_Y_reg[2][6]  ( .D(n534), .CK(clk), .Q(\geofence_Y[2][6] ), 
        .QN(n1298) );
  DFFX1 \geofence_Y_reg[2][5]  ( .D(n535), .CK(clk), .Q(\geofence_Y[2][5] ), 
        .QN(n1299) );
  DFFX1 \geofence_Y_reg[2][1]  ( .D(n539), .CK(clk), .Q(\geofence_Y[2][1] ), 
        .QN(n1303) );
  DFFX1 \geofence_Y_reg[2][9]  ( .D(n531), .CK(clk), .Q(\geofence_Y[2][9] ), 
        .QN(n1295) );
  DFFX1 \geofence_Y_reg[2][8]  ( .D(n532), .CK(clk), .Q(\geofence_Y[2][8] ), 
        .QN(n1296) );
  DFFX1 \geofence_Y_reg[2][0]  ( .D(n540), .CK(clk), .Q(\geofence_Y[2][0] ), 
        .QN(n1304) );
  DFFX1 \geofence_X_reg[4][9]  ( .D(n501), .CK(clk), .Q(\geofence_X[4][9] ), 
        .QN(n1305) );
  DFFX1 \geofence_X_reg[4][8]  ( .D(n502), .CK(clk), .Q(\geofence_X[4][8] ), 
        .QN(n1306) );
  DFFX1 \geofence_X_reg[4][7]  ( .D(n503), .CK(clk), .Q(\geofence_X[4][7] ), 
        .QN(n1307) );
  DFFX1 \geofence_X_reg[4][5]  ( .D(n505), .CK(clk), .Q(\geofence_X[4][5] ), 
        .QN(n1309) );
  DFFX1 \geofence_X_reg[4][4]  ( .D(n506), .CK(clk), .Q(\geofence_X[4][4] ), 
        .QN(n1310) );
  DFFX1 \geofence_X_reg[4][3]  ( .D(n507), .CK(clk), .Q(\geofence_X[4][3] ), 
        .QN(n1311) );
  DFFX1 \geofence_X_reg[4][0]  ( .D(n510), .CK(clk), .Q(\geofence_X[4][0] ), 
        .QN(n1314) );
  DFFX1 \geofence_X_reg[2][6]  ( .D(n484), .CK(clk), .Q(\geofence_X[2][6] ), 
        .QN(n1288) );
  DFFX1 \geofence_X_reg[2][2]  ( .D(n488), .CK(clk), .Q(\geofence_X[2][2] ), 
        .QN(n1292) );
  DFFX1 \geofence_X_reg[2][1]  ( .D(n489), .CK(clk), .Q(\geofence_X[2][1] ), 
        .QN(n1293) );
  DFFX1 \geofence_Y_reg[2][7]  ( .D(n533), .CK(clk), .Q(\geofence_Y[2][7] ), 
        .QN(n1297) );
  DFFX1 \geofence_Y_reg[2][3]  ( .D(n537), .CK(clk), .Q(\geofence_Y[2][3] ), 
        .QN(n1301) );
  DFFX1 \geofence_Y_reg[2][2]  ( .D(n538), .CK(clk), .Q(\geofence_Y[2][2] ), 
        .QN(n1302) );
  DFFX1 \geofence_X_reg[3][6]  ( .D(n494), .CK(clk), .Q(\geofence_X[3][6] ), 
        .QN(n1268) );
  DFFX1 \geofence_X_reg[3][2]  ( .D(n498), .CK(clk), .Q(\geofence_X[3][2] ), 
        .QN(n1272) );
  DFFX1 \geofence_X_reg[3][1]  ( .D(n499), .CK(clk), .Q(\geofence_X[3][1] ), 
        .QN(n1273) );
  DFFX1 \geofence_X_reg[5][9]  ( .D(n511), .CK(clk), .Q(\geofence_X[5][9] ), 
        .QN(n1325) );
  DFFX1 \geofence_X_reg[5][8]  ( .D(n512), .CK(clk), .Q(\geofence_X[5][8] ), 
        .QN(n1326) );
  DFFX1 \geofence_X_reg[5][7]  ( .D(n513), .CK(clk), .Q(\geofence_X[5][7] ), 
        .QN(n1327) );
  DFFX1 \geofence_X_reg[5][6]  ( .D(n514), .CK(clk), .Q(\geofence_X[5][6] ), 
        .QN(n1328) );
  DFFX1 \geofence_X_reg[5][5]  ( .D(n515), .CK(clk), .Q(\geofence_X[5][5] ), 
        .QN(n1329) );
  DFFX1 \geofence_X_reg[5][4]  ( .D(n516), .CK(clk), .Q(\geofence_X[5][4] ), 
        .QN(n1330) );
  DFFX1 \geofence_X_reg[5][3]  ( .D(n517), .CK(clk), .Q(\geofence_X[5][3] ), 
        .QN(n1331) );
  DFFX1 \geofence_X_reg[5][2]  ( .D(n518), .CK(clk), .Q(\geofence_X[5][2] ), 
        .QN(n1332) );
  DFFX1 \geofence_X_reg[5][1]  ( .D(n519), .CK(clk), .Q(\geofence_X[5][1] ), 
        .QN(n1333) );
  DFFX1 \geofence_X_reg[5][0]  ( .D(n520), .CK(clk), .Q(\geofence_X[5][0] ), 
        .QN(n1334) );
  DFFX1 \geofence_Y_reg[3][7]  ( .D(n543), .CK(clk), .Q(\geofence_Y[3][7] ), 
        .QN(n1277) );
  DFFX1 \geofence_Y_reg[3][3]  ( .D(n547), .CK(clk), .Q(\geofence_Y[3][3] ), 
        .QN(n1281) );
  DFFX1 \geofence_Y_reg[3][2]  ( .D(n548), .CK(clk), .Q(\geofence_Y[3][2] ), 
        .QN(n1282) );
  DFFX1 \geofence_X_reg[4][6]  ( .D(n504), .CK(clk), .Q(\geofence_X[4][6] ), 
        .QN(n1308) );
  DFFX1 \geofence_X_reg[4][2]  ( .D(n508), .CK(clk), .Q(\geofence_X[4][2] ), 
        .QN(n1312) );
  DFFX1 \geofence_X_reg[4][1]  ( .D(n509), .CK(clk), .Q(\geofence_X[4][1] ), 
        .QN(n1313) );
  DFFX1 \geofence_Y_reg[5][9]  ( .D(n561), .CK(clk), .Q(\geofence_Y[5][9] ), 
        .QN(n1335) );
  DFFX1 \geofence_Y_reg[5][8]  ( .D(n562), .CK(clk), .Q(\geofence_Y[5][8] ), 
        .QN(n1336) );
  DFFX1 \geofence_Y_reg[5][7]  ( .D(n563), .CK(clk), .Q(\geofence_Y[5][7] ), 
        .QN(n1337) );
  DFFX1 \geofence_Y_reg[5][6]  ( .D(n564), .CK(clk), .Q(\geofence_Y[5][6] ), 
        .QN(n1338) );
  DFFX1 \geofence_Y_reg[5][5]  ( .D(n565), .CK(clk), .Q(\geofence_Y[5][5] ), 
        .QN(n1339) );
  DFFX1 \geofence_Y_reg[5][4]  ( .D(n566), .CK(clk), .Q(\geofence_Y[5][4] ), 
        .QN(n1340) );
  DFFX1 \geofence_Y_reg[5][3]  ( .D(n567), .CK(clk), .Q(\geofence_Y[5][3] ), 
        .QN(n1341) );
  DFFX1 \geofence_Y_reg[5][2]  ( .D(n568), .CK(clk), .Q(\geofence_Y[5][2] ), 
        .QN(n1342) );
  DFFX1 \geofence_Y_reg[5][1]  ( .D(n569), .CK(clk), .Q(\geofence_Y[5][1] ), 
        .QN(n1343) );
  DFFX1 \geofence_Y_reg[5][0]  ( .D(n570), .CK(clk), .Q(\geofence_Y[5][0] ), 
        .QN(n1344) );
  DFFX1 \geofence_X_reg[3][9]  ( .D(n491), .CK(clk), .Q(\geofence_X[3][9] ), 
        .QN(n1265) );
  DFFX1 \geofence_X_reg[3][5]  ( .D(n495), .CK(clk), .Q(\geofence_X[3][5] ), 
        .QN(n1269) );
  DFFX1 \geofence_X_reg[3][4]  ( .D(n496), .CK(clk), .Q(\geofence_X[3][4] ), 
        .QN(n1270) );
  DFFX1 \geofence_X_reg[3][0]  ( .D(n500), .CK(clk), .Q(\geofence_X[3][0] ), 
        .QN(n1274) );
  DFFX1 \geofence_X_reg[3][8]  ( .D(n492), .CK(clk), .Q(\geofence_X[3][8] ), 
        .QN(n1266) );
  DFFX1 \geofence_X_reg[3][7]  ( .D(n493), .CK(clk), .Q(\geofence_X[3][7] ), 
        .QN(n1267) );
  DFFX1 \geofence_X_reg[3][3]  ( .D(n497), .CK(clk), .Q(\geofence_X[3][3] ), 
        .QN(n1271) );
  DFFX1 \geofence_Y_reg[4][7]  ( .D(n553), .CK(clk), .Q(\geofence_Y[4][7] ), 
        .QN(n1317) );
  DFFX1 \geofence_Y_reg[4][3]  ( .D(n557), .CK(clk), .Q(\geofence_Y[4][3] ), 
        .QN(n1321) );
  DFFX1 \geofence_Y_reg[4][2]  ( .D(n558), .CK(clk), .Q(\geofence_Y[4][2] ), 
        .QN(n1322) );
  DFFX1 \geofence_Y_reg[3][6]  ( .D(n544), .CK(clk), .Q(\geofence_Y[3][6] ), 
        .QN(n1278) );
  DFFX1 \geofence_Y_reg[3][5]  ( .D(n545), .CK(clk), .Q(\geofence_Y[3][5] ), 
        .QN(n1279) );
  DFFX1 \geofence_Y_reg[3][1]  ( .D(n549), .CK(clk), .Q(\geofence_Y[3][1] ), 
        .QN(n1283) );
  DFFX1 \geofence_Y_reg[3][9]  ( .D(n541), .CK(clk), .Q(\geofence_Y[3][9] ), 
        .QN(n1275) );
  DFFX1 \geofence_Y_reg[3][8]  ( .D(n542), .CK(clk), .Q(\geofence_Y[3][8] ), 
        .QN(n1276) );
  DFFX1 \geofence_Y_reg[3][4]  ( .D(n546), .CK(clk), .Q(\geofence_Y[3][4] ), 
        .QN(n1280) );
  DFFX1 \geofence_Y_reg[3][0]  ( .D(n550), .CK(clk), .Q(\geofence_Y[3][0] ), 
        .QN(n1284) );
  DFFX1 \geofence_Y_reg[1][9]  ( .D(n521), .CK(clk), .Q(\geofence_Y[1][9] ), 
        .QN(n1255) );
  DFFX1 \geofence_Y_reg[1][8]  ( .D(n522), .CK(clk), .Q(\geofence_Y[1][8] ), 
        .QN(n1256) );
  DFFX1 \geofence_Y_reg[1][7]  ( .D(n523), .CK(clk), .Q(\geofence_Y[1][7] ), 
        .QN(n1257) );
  DFFX1 \geofence_Y_reg[1][6]  ( .D(n524), .CK(clk), .Q(\geofence_Y[1][6] ), 
        .QN(n1258) );
  DFFX1 \geofence_Y_reg[1][5]  ( .D(n525), .CK(clk), .Q(\geofence_Y[1][5] ), 
        .QN(n1259) );
  DFFX1 \geofence_Y_reg[1][4]  ( .D(n526), .CK(clk), .Q(\geofence_Y[1][4] ), 
        .QN(n1260) );
  DFFX1 \geofence_Y_reg[1][3]  ( .D(n527), .CK(clk), .Q(\geofence_Y[1][3] ), 
        .QN(n1261) );
  DFFX1 \geofence_Y_reg[1][2]  ( .D(n528), .CK(clk), .Q(\geofence_Y[1][2] ), 
        .QN(n1262) );
  DFFX1 \geofence_Y_reg[1][1]  ( .D(n529), .CK(clk), .Q(\geofence_Y[1][1] ), 
        .QN(n1263) );
  DFFX1 \geofence_Y_reg[1][0]  ( .D(n530), .CK(clk), .Q(\geofence_Y[1][0] ), 
        .QN(n1264) );
  DFFX1 \geofence_X_reg[1][9]  ( .D(n471), .CK(clk), .Q(\geofence_X[1][9] ), 
        .QN(n1245) );
  DFFX1 \geofence_X_reg[1][8]  ( .D(n472), .CK(clk), .Q(\geofence_X[1][8] ), 
        .QN(n1246) );
  DFFX1 \geofence_X_reg[1][7]  ( .D(n473), .CK(clk), .Q(\geofence_X[1][7] ), 
        .QN(n1247) );
  DFFX1 \geofence_X_reg[1][6]  ( .D(n474), .CK(clk), .Q(\geofence_X[1][6] ), 
        .QN(n1248) );
  DFFX1 \geofence_X_reg[1][5]  ( .D(n475), .CK(clk), .Q(\geofence_X[1][5] ), 
        .QN(n1249) );
  DFFX1 \geofence_X_reg[1][4]  ( .D(n476), .CK(clk), .Q(\geofence_X[1][4] ), 
        .QN(n1250) );
  DFFX1 \geofence_X_reg[1][3]  ( .D(n477), .CK(clk), .Q(\geofence_X[1][3] ), 
        .QN(n1251) );
  DFFX1 \geofence_X_reg[1][2]  ( .D(n478), .CK(clk), .Q(\geofence_X[1][2] ), 
        .QN(n1252) );
  DFFX1 \geofence_X_reg[1][1]  ( .D(n479), .CK(clk), .Q(\geofence_X[1][1] ), 
        .QN(n1253) );
  DFFX1 \geofence_X_reg[1][0]  ( .D(n480), .CK(clk), .Q(\geofence_X[1][0] ), 
        .QN(n1254) );
  DFFX2 \inner_counter_reg[0]  ( .D(N759), .CK(clk), .Q(counter_B[0]), .QN(
        n1243) );
  DFFX2 \Cal_IsInside_counter_reg[0]  ( .D(N990), .CK(clk), .Q(
        counter_cal_A[0]), .QN(n1190) );
  DFFX2 \inner_counter_reg[1]  ( .D(N760), .CK(clk), .Q(counter_B[2]), .QN(
        counter_B[1]) );
  NOR2X4 U1020 ( .A(n418), .B(n1190), .Y(n973) );
  NOR3X4 U1021 ( .A(n1188), .B(n1189), .C(n1190), .Y(n974) );
  NOR2X4 U1022 ( .A(n417), .B(n1190), .Y(n975) );
  OAI21X4 U1023 ( .A0(n1194), .A1(n362), .B0(n363), .Y(n976) );
  INVXL U1024 ( .A(n83), .Y(n979) );
  INVXL U1025 ( .A(n163), .Y(n980) );
  INVX3 U1026 ( .A(counter_cal_A[2]), .Y(n224) );
  NOR2XL U1027 ( .A(n224), .B(counter_cal_A[0]), .Y(n270) );
  NAND3XL U1028 ( .A(n226), .B(n224), .C(counter_cal_A[0]), .Y(n262) );
  INVX12 U1029 ( .A(n978), .Y(valid) );
  INVX12 U1030 ( .A(n977), .Y(is_inside) );
  INVX3 U1031 ( .A(n266), .Y(n1193) );
  NOR2X1 U1032 ( .A(n347), .B(n360), .Y(n336) );
  CLKINVX1 U1033 ( .A(n1124), .Y(n1125) );
  CLKINVX1 U1034 ( .A(n1124), .Y(n1123) );
  NAND2X1 U1035 ( .A(n976), .B(n1109), .Y(n984) );
  NAND2X1 U1036 ( .A(n1146), .B(n1109), .Y(n985) );
  NAND2X1 U1037 ( .A(n1136), .B(n1109), .Y(n986) );
  CLKBUFX3 U1038 ( .A(n275), .Y(n1158) );
  CLKBUFX3 U1039 ( .A(n274), .Y(n1157) );
  AO22X1 U1040 ( .A0(N874), .A1(n1162), .B0(N950), .B1(n1164), .Y(vectorB_x[1]) );
  AO22X1 U1041 ( .A0(N820), .A1(n1163), .B0(N912), .B1(n1164), .Y(vectorA_x[1]) );
  CLKINVX1 U1042 ( .A(n252), .Y(n1197) );
  CLKINVX1 U1043 ( .A(n365), .Y(n1196) );
  CLKINVX1 U1044 ( .A(N331), .Y(n1194) );
  CLKINVX1 U1045 ( .A(n334), .Y(n1244) );
  CLKBUFX3 U1046 ( .A(n378), .Y(n1116) );
  NOR2X1 U1047 ( .A(counter_B[1]), .B(counter_B[0]), .Y(n360) );
  OAI21XL U1048 ( .A0(counter_cal_A[1]), .A1(n1190), .B0(n1193), .Y(n370) );
  NOR2X1 U1049 ( .A(n1243), .B(counter_B[2]), .Y(n347) );
  NAND2BX1 U1050 ( .AN(n1190), .B(counter_cal_A[1]), .Y(n987) );
  CLKBUFX3 U1051 ( .A(n373), .Y(n1117) );
  CLKINVX1 U1052 ( .A(n1155), .Y(n1154) );
  CLKINVX1 U1053 ( .A(n1155), .Y(n1156) );
  CLKBUFX3 U1054 ( .A(n270), .Y(n1115) );
  NOR2X2 U1055 ( .A(n1190), .B(n224), .Y(n419) );
  BUFX4 U1056 ( .A(n259), .Y(n1110) );
  NOR2X1 U1057 ( .A(counter_B[0]), .B(counter_B[2]), .Y(n334) );
  INVX3 U1058 ( .A(n1159), .Y(n1160) );
  NAND2X1 U1059 ( .A(geofence_counter[2]), .B(n52), .Y(n362) );
  INVX3 U1060 ( .A(n1052), .Y(n1051) );
  CLKINVX1 U1061 ( .A(n1039), .Y(n1052) );
  NOR2BX1 U1062 ( .AN(n997), .B(counter_A[1]), .Y(n1039) );
  CLKBUFX3 U1063 ( .A(n1037), .Y(n1046) );
  AND2X2 U1064 ( .A(n997), .B(counter_A[1]), .Y(n1037) );
  NAND2X1 U1065 ( .A(N348), .B(n1164), .Y(n260) );
  INVX3 U1066 ( .A(n364), .Y(n1166) );
  NAND2X1 U1067 ( .A(n333), .B(n1244), .Y(n281) );
  NAND2X1 U1068 ( .A(n333), .B(n1244), .Y(n1150) );
  NAND2X1 U1069 ( .A(n333), .B(n1244), .Y(n1151) );
  INVX3 U1070 ( .A(n1050), .Y(n1049) );
  CLKINVX1 U1071 ( .A(n1040), .Y(n1050) );
  NOR2BX1 U1072 ( .AN(n996), .B(counter_A[1]), .Y(n1040) );
  AND2X2 U1073 ( .A(n1136), .B(n1161), .Y(n348) );
  CLKINVX1 U1074 ( .A(counter_A[2]), .Y(n1044) );
  CLKINVX1 U1075 ( .A(n336), .Y(counter_A[1]) );
  CLKINVX1 U1076 ( .A(n417), .Y(n1189) );
  CLKINVX1 U1077 ( .A(n418), .Y(n1188) );
  CLKBUFX3 U1078 ( .A(n319), .Y(n1126) );
  NAND2X1 U1079 ( .A(n1161), .B(n1125), .Y(n319) );
  AND2X2 U1080 ( .A(n976), .B(n1161), .Y(n361) );
  CLKBUFX3 U1081 ( .A(n1041), .Y(n1048) );
  AND2X2 U1082 ( .A(n996), .B(counter_A[1]), .Y(n1041) );
  CLKBUFX3 U1083 ( .A(n1038), .Y(n1045) );
  NOR2X1 U1084 ( .A(counter_B[0]), .B(n1044), .Y(n1038) );
  INVX3 U1085 ( .A(n984), .Y(n1131) );
  INVX3 U1086 ( .A(n985), .Y(n1148) );
  INVX3 U1087 ( .A(n986), .Y(n1140) );
  CLKINVX1 U1088 ( .A(n984), .Y(n1132) );
  CLKINVX1 U1089 ( .A(n985), .Y(n1149) );
  CLKINVX1 U1090 ( .A(n986), .Y(n1141) );
  CLKINVX1 U1091 ( .A(n988), .Y(n1128) );
  CLKINVX1 U1092 ( .A(n989), .Y(n1137) );
  CLKINVX1 U1093 ( .A(n988), .Y(n1129) );
  CLKINVX1 U1094 ( .A(n989), .Y(n1138) );
  CLKINVX1 U1095 ( .A(n988), .Y(n1130) );
  CLKINVX1 U1096 ( .A(n989), .Y(n1139) );
  CLKBUFX3 U1097 ( .A(n1197), .Y(n1164) );
  CLKBUFX3 U1098 ( .A(n1197), .Y(n1165) );
  CLKBUFX3 U1099 ( .A(n1196), .Y(n1161) );
  CLKBUFX3 U1100 ( .A(n1196), .Y(n1162) );
  CLKBUFX3 U1101 ( .A(n1196), .Y(n1163) );
  CLKINVX1 U1102 ( .A(n336), .Y(n1242) );
  NOR2X2 U1103 ( .A(n1243), .B(counter_B[1]), .Y(counter_A[2]) );
  NAND2X2 U1104 ( .A(n334), .B(n333), .Y(n1147) );
  NAND2X2 U1105 ( .A(n334), .B(n333), .Y(n277) );
  AO22X1 U1106 ( .A0(N822), .A1(n1163), .B0(N914), .B1(n1165), .Y(vectorA_x[3]) );
  AND2X2 U1107 ( .A(n1146), .B(n1161), .Y(n333) );
  NOR2BX1 U1108 ( .AN(N348), .B(n365), .Y(n364) );
  BUFX4 U1109 ( .A(n292), .Y(n1136) );
  OAI21XL U1110 ( .A0(n336), .A1(n1166), .B0(n349), .Y(n292) );
  INVX3 U1111 ( .A(n1143), .Y(n1144) );
  CLKINVX1 U1112 ( .A(n1142), .Y(n1143) );
  NAND2BX1 U1113 ( .AN(n347), .B(n348), .Y(n1142) );
  OAI222XL U1114 ( .A0(n1157), .A1(n1187), .B0(n1158), .B1(n1202), .C0(n276), 
        .C1(n1264), .Y(n530) );
  OAI222XL U1115 ( .A0(n1157), .A1(n1186), .B0(n1158), .B1(n1203), .C0(n1153), 
        .C1(n1263), .Y(n529) );
  OAI222XL U1116 ( .A0(n1157), .A1(n1185), .B0(n1158), .B1(n1204), .C0(n1156), 
        .C1(n1262), .Y(n528) );
  OAI222XL U1117 ( .A0(n1157), .A1(n1184), .B0(n1158), .B1(n1205), .C0(n1154), 
        .C1(n1261), .Y(n527) );
  OAI222XL U1118 ( .A0(n1157), .A1(n1183), .B0(n1158), .B1(n1206), .C0(n1154), 
        .C1(n1260), .Y(n526) );
  OAI222XL U1119 ( .A0(n1157), .A1(n1182), .B0(n1158), .B1(n1207), .C0(n276), 
        .C1(n1259), .Y(n525) );
  OAI222XL U1120 ( .A0(n1157), .A1(n1181), .B0(n1158), .B1(n1208), .C0(n1156), 
        .C1(n1258), .Y(n524) );
  OAI222XL U1121 ( .A0(n1157), .A1(n1180), .B0(n1158), .B1(n1209), .C0(n1156), 
        .C1(n1257), .Y(n523) );
  OAI222XL U1122 ( .A0(n1157), .A1(n1179), .B0(n1158), .B1(n1210), .C0(n1154), 
        .C1(n1256), .Y(n522) );
  OAI222XL U1123 ( .A0(n1157), .A1(n1178), .B0(n1158), .B1(n1211), .C0(n1153), 
        .C1(n1255), .Y(n521) );
  OAI222XL U1124 ( .A0(n1177), .A1(n1157), .B0(n1158), .B1(n1212), .C0(n1152), 
        .C1(n1254), .Y(n480) );
  OAI222XL U1125 ( .A0(n1176), .A1(n1157), .B0(n1158), .B1(n1213), .C0(n1156), 
        .C1(n1253), .Y(n479) );
  OAI222XL U1126 ( .A0(n1175), .A1(n1157), .B0(n1158), .B1(n1214), .C0(n1154), 
        .C1(n1252), .Y(n478) );
  OAI222XL U1127 ( .A0(n1174), .A1(n1157), .B0(n1158), .B1(n1215), .C0(n1154), 
        .C1(n1251), .Y(n477) );
  OAI222XL U1128 ( .A0(n1173), .A1(n1157), .B0(n1158), .B1(n1216), .C0(n1152), 
        .C1(n1250), .Y(n476) );
  OAI222XL U1129 ( .A0(n1172), .A1(n1157), .B0(n1158), .B1(n1217), .C0(n1156), 
        .C1(n1249), .Y(n475) );
  OAI222XL U1130 ( .A0(n1171), .A1(n1157), .B0(n1158), .B1(n1218), .C0(n1156), 
        .C1(n1248), .Y(n474) );
  OAI222XL U1131 ( .A0(n1170), .A1(n1157), .B0(n1158), .B1(n1219), .C0(n1154), 
        .C1(n1247), .Y(n473) );
  OAI222XL U1132 ( .A0(n1169), .A1(n1157), .B0(n1158), .B1(n1220), .C0(n1152), 
        .C1(n1246), .Y(n472) );
  OAI222XL U1133 ( .A0(n1168), .A1(n1157), .B0(n1158), .B1(n1221), .C0(n1152), 
        .C1(n1245), .Y(n471) );
  NAND2X1 U1134 ( .A(n369), .B(n271), .Y(n417) );
  NAND2X1 U1135 ( .A(n370), .B(n271), .Y(n418) );
  AO22X1 U1136 ( .A0(N826), .A1(n1163), .B0(N918), .B1(n1165), .Y(vectorA_x[7]) );
  AO22X1 U1137 ( .A0(N824), .A1(n1163), .B0(N916), .B1(n1165), .Y(vectorA_x[5]) );
  AO22X1 U1138 ( .A0(N880), .A1(n1162), .B0(N956), .B1(n1164), .Y(vectorB_x[7]) );
  AO22X1 U1139 ( .A0(N878), .A1(n1162), .B0(N954), .B1(n1164), .Y(vectorB_x[5]) );
  AO22X1 U1140 ( .A0(N876), .A1(n1162), .B0(N952), .B1(n1164), .Y(vectorB_x[3]) );
  AO22X1 U1141 ( .A0(N906), .A1(n1161), .B0(N982), .B1(n1164), .Y(vectorB_y[6]) );
  AO22X1 U1142 ( .A0(N903), .A1(n1161), .B0(N979), .B1(n1164), .Y(vectorB_y[3]) );
  AO22X1 U1143 ( .A0(N852), .A1(n1162), .B0(N928), .B1(n1165), .Y(vectorA_y[6]) );
  AO22X1 U1144 ( .A0(N849), .A1(n1163), .B0(N925), .B1(n1165), .Y(vectorA_y[3]) );
  AO22X1 U1145 ( .A0(N904), .A1(n1161), .B0(N980), .B1(n1164), .Y(vectorB_y[4]) );
  AO22X1 U1146 ( .A0(N902), .A1(n1161), .B0(N978), .B1(n1164), .Y(vectorB_y[2]) );
  AO22X1 U1147 ( .A0(N850), .A1(n1162), .B0(N926), .B1(n1165), .Y(vectorA_y[4]) );
  AO22X1 U1148 ( .A0(N848), .A1(n1163), .B0(N924), .B1(n1165), .Y(vectorA_y[2]) );
  AO22X1 U1149 ( .A0(N905), .A1(n1161), .B0(N981), .B1(n1164), .Y(vectorB_y[5]) );
  AO22X1 U1150 ( .A0(N851), .A1(n1162), .B0(N927), .B1(n1165), .Y(vectorA_y[5]) );
  AO22X1 U1151 ( .A0(N901), .A1(n1161), .B0(N977), .B1(n1164), .Y(vectorB_y[1]) );
  AO22X1 U1152 ( .A0(N847), .A1(n1163), .B0(N923), .B1(n1165), .Y(vectorA_y[1]) );
  OAI21XL U1153 ( .A0(counter_A[2]), .A1(n360), .B0(n364), .Y(n363) );
  NAND2X1 U1154 ( .A(n1109), .B(n1156), .Y(n274) );
  CLKBUFX3 U1155 ( .A(n320), .Y(n1127) );
  NAND2X1 U1156 ( .A(n1109), .B(n1123), .Y(n320) );
  NAND2X1 U1157 ( .A(n1161), .B(n1154), .Y(n275) );
  AO22X1 U1158 ( .A0(N875), .A1(n1162), .B0(N951), .B1(n1164), .Y(vectorB_x[2]) );
  AO22X1 U1159 ( .A0(N821), .A1(n1163), .B0(N913), .B1(n1165), .Y(vectorA_x[2]) );
  AO22X1 U1160 ( .A0(N877), .A1(n1162), .B0(N953), .B1(n1164), .Y(vectorB_x[4]) );
  AO22X1 U1161 ( .A0(N823), .A1(n1163), .B0(N915), .B1(n1165), .Y(vectorA_x[4]) );
  INVX3 U1162 ( .A(n1106), .Y(n1105) );
  CLKINVX1 U1163 ( .A(n1097), .Y(n1106) );
  NOR2BX1 U1164 ( .AN(n1053), .B(counter_B[1]), .Y(n1097) );
  INVX3 U1165 ( .A(n1108), .Y(n1107) );
  CLKINVX1 U1166 ( .A(n1096), .Y(n1108) );
  NOR2BX1 U1167 ( .AN(n1054), .B(counter_B[1]), .Y(n1096) );
  CLKBUFX3 U1168 ( .A(n1098), .Y(n1104) );
  AND2X2 U1169 ( .A(n1053), .B(counter_B[1]), .Y(n1098) );
  CLKBUFX3 U1170 ( .A(n1094), .Y(n1102) );
  AND2X2 U1171 ( .A(n1054), .B(counter_B[1]), .Y(n1094) );
  CLKBUFX3 U1172 ( .A(n1036), .Y(n1047) );
  NOR2X1 U1173 ( .A(n1044), .B(n1243), .Y(n1036) );
  AND2X2 U1174 ( .A(n360), .B(n361), .Y(n988) );
  AND2X2 U1175 ( .A(n347), .B(n348), .Y(n989) );
  INVX3 U1176 ( .A(n987), .Y(n1112) );
  INVX3 U1177 ( .A(n987), .Y(n1113) );
  NAND2X1 U1178 ( .A(n379), .B(n380), .Y(N974) );
  OAI32X1 U1179 ( .A0(n362), .A1(n1195), .A2(n1198), .B0(n1166), .B1(n1044), 
        .Y(n1121) );
  CLKINVX1 U1180 ( .A(n321), .Y(n1124) );
  OAI32X1 U1181 ( .A0(n362), .A1(n1195), .A2(n1198), .B0(n1166), .B1(n1044), 
        .Y(n321) );
  OAI32X1 U1182 ( .A0(n362), .A1(n1195), .A2(n1198), .B0(n1166), .B1(n1044), 
        .Y(n1122) );
  INVX3 U1183 ( .A(n1134), .Y(n1135) );
  CLKINVX1 U1184 ( .A(n1133), .Y(n1134) );
  NAND2BX1 U1185 ( .AN(n360), .B(n361), .Y(n1133) );
  NAND2X1 U1186 ( .A(n399), .B(n400), .Y(N947) );
  AO22X1 U1187 ( .A0(N907), .A1(n1161), .B0(N983), .B1(n1164), .Y(vectorB_y[7]) );
  AO22X1 U1188 ( .A0(N853), .A1(n1162), .B0(N929), .B1(n1165), .Y(vectorA_y[7]) );
  AO22X1 U1189 ( .A0(N908), .A1(n1161), .B0(N984), .B1(n1164), .Y(vectorB_y[8]) );
  AO22X1 U1190 ( .A0(N854), .A1(n1162), .B0(N930), .B1(n1165), .Y(vectorA_y[8]) );
  AO22X1 U1191 ( .A0(N909), .A1(n1162), .B0(N985), .B1(n1165), .Y(vectorB_y[9]) );
  AO22X1 U1192 ( .A0(N855), .A1(n1162), .B0(N931), .B1(n1165), .Y(vectorA_y[9]) );
  AO22X1 U1193 ( .A0(N828), .A1(n1163), .B0(N920), .B1(n1165), .Y(vectorA_x[9]) );
  AO22X1 U1194 ( .A0(N882), .A1(n1162), .B0(N958), .B1(n1164), .Y(vectorB_x[9]) );
  AO22X1 U1195 ( .A0(N856), .A1(n1163), .B0(N932), .B1(n1165), .Y(
        vectorA_y[10]) );
  AO22X1 U1196 ( .A0(N910), .A1(n1161), .B0(N986), .B1(n1164), .Y(
        vectorB_y[10]) );
  AO22X1 U1197 ( .A0(N827), .A1(n1163), .B0(N919), .B1(n1165), .Y(vectorA_x[8]) );
  AO22X1 U1198 ( .A0(N825), .A1(n1163), .B0(N917), .B1(n1165), .Y(vectorA_x[6]) );
  AO22X1 U1199 ( .A0(N881), .A1(n1162), .B0(N957), .B1(n1164), .Y(vectorB_x[8]) );
  AO22X1 U1200 ( .A0(N879), .A1(n1162), .B0(N955), .B1(n1164), .Y(vectorB_x[6]) );
  AO22X1 U1201 ( .A0(N829), .A1(n1163), .B0(N921), .B1(n1197), .Y(
        vectorA_x[10]) );
  CLKBUFX3 U1202 ( .A(n1095), .Y(n1101) );
  NOR2X1 U1203 ( .A(n1243), .B(counter_B[1]), .Y(n1095) );
  AO22X1 U1204 ( .A0(N883), .A1(n1162), .B0(N959), .B1(n1165), .Y(
        vectorB_x[10]) );
  CLKINVX1 U1205 ( .A(N845), .Y(n1222) );
  CLKINVX1 U1206 ( .A(N844), .Y(n1223) );
  CLKINVX1 U1207 ( .A(N843), .Y(n1224) );
  CLKINVX1 U1208 ( .A(N842), .Y(n1225) );
  CLKINVX1 U1209 ( .A(N841), .Y(n1226) );
  CLKINVX1 U1210 ( .A(N840), .Y(n1227) );
  CLKINVX1 U1211 ( .A(N839), .Y(n1228) );
  CLKINVX1 U1212 ( .A(N838), .Y(n1229) );
  CLKINVX1 U1213 ( .A(N837), .Y(n1230) );
  CLKINVX1 U1214 ( .A(N836), .Y(n1231) );
  CLKINVX1 U1215 ( .A(N818), .Y(n1232) );
  CLKINVX1 U1216 ( .A(N817), .Y(n1233) );
  CLKINVX1 U1217 ( .A(N816), .Y(n1234) );
  CLKINVX1 U1218 ( .A(N815), .Y(n1235) );
  CLKINVX1 U1219 ( .A(N814), .Y(n1236) );
  CLKINVX1 U1220 ( .A(N813), .Y(n1237) );
  CLKINVX1 U1221 ( .A(N812), .Y(n1238) );
  CLKINVX1 U1222 ( .A(N811), .Y(n1239) );
  CLKINVX1 U1223 ( .A(N810), .Y(n1240) );
  CLKINVX1 U1224 ( .A(N809), .Y(n1241) );
  CLKINVX1 U1225 ( .A(N899), .Y(n1202) );
  CLKINVX1 U1226 ( .A(N898), .Y(n1203) );
  CLKINVX1 U1227 ( .A(N897), .Y(n1204) );
  CLKINVX1 U1228 ( .A(N896), .Y(n1205) );
  CLKINVX1 U1229 ( .A(N895), .Y(n1206) );
  CLKINVX1 U1230 ( .A(N894), .Y(n1207) );
  CLKINVX1 U1231 ( .A(N893), .Y(n1208) );
  CLKINVX1 U1232 ( .A(N892), .Y(n1209) );
  CLKINVX1 U1233 ( .A(N891), .Y(n1210) );
  CLKINVX1 U1234 ( .A(N890), .Y(n1211) );
  CLKINVX1 U1235 ( .A(N872), .Y(n1212) );
  CLKINVX1 U1236 ( .A(N871), .Y(n1213) );
  CLKINVX1 U1237 ( .A(N870), .Y(n1214) );
  CLKINVX1 U1238 ( .A(N869), .Y(n1215) );
  CLKINVX1 U1239 ( .A(N868), .Y(n1216) );
  CLKINVX1 U1240 ( .A(N867), .Y(n1217) );
  CLKINVX1 U1241 ( .A(N866), .Y(n1218) );
  CLKINVX1 U1242 ( .A(N865), .Y(n1219) );
  CLKINVX1 U1243 ( .A(N864), .Y(n1220) );
  CLKINVX1 U1244 ( .A(N863), .Y(n1221) );
  CLKINVX1 U1245 ( .A(n1109), .Y(n1195) );
  OAI221XL U1246 ( .A0(n1195), .A1(n362), .B0(n1194), .B1(n1199), .C0(n349), 
        .Y(N333) );
  OA21XL U1247 ( .A0(n336), .A1(n1243), .B0(n1244), .Y(n335) );
  AND2X2 U1248 ( .A(n1112), .B(n265), .Y(n990) );
  NOR2X1 U1249 ( .A(n252), .B(n1192), .Y(next_state[2]) );
  CLKINVX1 U1250 ( .A(n254), .Y(n1192) );
  NOR2X1 U1251 ( .A(n336), .B(n366), .Y(N760) );
  CLKINVX1 U1252 ( .A(n460), .Y(n1201) );
  INVX3 U1253 ( .A(n994), .Y(n1119) );
  INVX3 U1254 ( .A(n994), .Y(n1120) );
  CLKINVX1 U1255 ( .A(n465), .Y(n1191) );
  AND2X2 U1256 ( .A(n265), .B(n266), .Y(n991) );
  OAI221XL U1257 ( .A0(n1147), .A1(n1222), .B0(n278), .B1(n1304), .C0(n332), 
        .Y(n540) );
  AOI2BB2X1 U1258 ( .B0(Y[0]), .B1(n1148), .A0N(n1150), .A1N(n1202), .Y(n332)
         );
  OAI221XL U1259 ( .A0(n277), .A1(n1223), .B0(n1146), .B1(n1303), .C0(n331), 
        .Y(n539) );
  AOI2BB2X1 U1260 ( .B0(Y[1]), .B1(n1148), .A0N(n281), .A1N(n1203), .Y(n331)
         );
  OAI221XL U1261 ( .A0(n1147), .A1(n1224), .B0(n278), .B1(n1302), .C0(n330), 
        .Y(n538) );
  AOI2BB2X1 U1262 ( .B0(Y[2]), .B1(n1149), .A0N(n281), .A1N(n1204), .Y(n330)
         );
  OAI221XL U1263 ( .A0(n277), .A1(n1225), .B0(n1146), .B1(n1301), .C0(n329), 
        .Y(n537) );
  AOI2BB2X1 U1264 ( .B0(Y[3]), .B1(n1149), .A0N(n1150), .A1N(n1205), .Y(n329)
         );
  OAI221XL U1265 ( .A0(n1147), .A1(n1226), .B0(n1146), .B1(n1300), .C0(n328), 
        .Y(n536) );
  AOI2BB2X1 U1266 ( .B0(Y[4]), .B1(n1148), .A0N(n1151), .A1N(n1206), .Y(n328)
         );
  OAI221XL U1267 ( .A0(n277), .A1(n1227), .B0(n1146), .B1(n1299), .C0(n327), 
        .Y(n535) );
  AOI2BB2X1 U1268 ( .B0(Y[5]), .B1(n1148), .A0N(n281), .A1N(n1207), .Y(n327)
         );
  OAI221XL U1269 ( .A0(n1147), .A1(n1228), .B0(n1146), .B1(n1298), .C0(n326), 
        .Y(n534) );
  AOI2BB2X1 U1270 ( .B0(Y[6]), .B1(n1148), .A0N(n1150), .A1N(n1208), .Y(n326)
         );
  OAI221XL U1271 ( .A0(n277), .A1(n1229), .B0(n1146), .B1(n1297), .C0(n325), 
        .Y(n533) );
  AOI2BB2X1 U1272 ( .B0(Y[7]), .B1(n1149), .A0N(n1151), .A1N(n1209), .Y(n325)
         );
  OAI221XL U1273 ( .A0(n1147), .A1(n1230), .B0(n1146), .B1(n1296), .C0(n324), 
        .Y(n532) );
  AOI2BB2X1 U1274 ( .B0(Y[8]), .B1(n1148), .A0N(n281), .A1N(n1210), .Y(n324)
         );
  OAI221XL U1275 ( .A0(n277), .A1(n1231), .B0(n1146), .B1(n1295), .C0(n323), 
        .Y(n531) );
  AOI2BB2X1 U1276 ( .B0(Y[9]), .B1(n1148), .A0N(n1150), .A1N(n1211), .Y(n323)
         );
  OAI221XL U1277 ( .A0(n1147), .A1(n1232), .B0(n1146), .B1(n1294), .C0(n290), 
        .Y(n490) );
  AOI2BB2X1 U1278 ( .B0(n1148), .B1(X[0]), .A0N(n1212), .A1N(n1151), .Y(n290)
         );
  OAI221XL U1279 ( .A0(n277), .A1(n1233), .B0(n1146), .B1(n1293), .C0(n289), 
        .Y(n489) );
  AOI2BB2X1 U1280 ( .B0(n1149), .B1(X[1]), .A0N(n1213), .A1N(n281), .Y(n289)
         );
  OAI221XL U1281 ( .A0(n1147), .A1(n1234), .B0(n1146), .B1(n1292), .C0(n288), 
        .Y(n488) );
  AOI2BB2X1 U1282 ( .B0(n1149), .B1(X[2]), .A0N(n1214), .A1N(n1150), .Y(n288)
         );
  OAI221XL U1283 ( .A0(n277), .A1(n1235), .B0(n1146), .B1(n1291), .C0(n287), 
        .Y(n487) );
  AOI2BB2X1 U1284 ( .B0(n1148), .B1(X[3]), .A0N(n1215), .A1N(n1151), .Y(n287)
         );
  OAI221XL U1285 ( .A0(n1147), .A1(n1236), .B0(n1146), .B1(n1290), .C0(n286), 
        .Y(n486) );
  AOI2BB2X1 U1286 ( .B0(n1148), .B1(X[4]), .A0N(n1216), .A1N(n281), .Y(n286)
         );
  OAI221XL U1287 ( .A0(n277), .A1(n1237), .B0(n1146), .B1(n1289), .C0(n285), 
        .Y(n485) );
  AOI2BB2X1 U1288 ( .B0(n1148), .B1(X[5]), .A0N(n1217), .A1N(n1150), .Y(n285)
         );
  OAI221XL U1289 ( .A0(n1147), .A1(n1238), .B0(n278), .B1(n1288), .C0(n284), 
        .Y(n484) );
  AOI2BB2X1 U1290 ( .B0(n1149), .B1(X[6]), .A0N(n1218), .A1N(n1151), .Y(n284)
         );
  OAI221XL U1291 ( .A0(n277), .A1(n1239), .B0(n1146), .B1(n1287), .C0(n283), 
        .Y(n483) );
  AOI2BB2X1 U1292 ( .B0(n1148), .B1(X[7]), .A0N(n1219), .A1N(n281), .Y(n283)
         );
  OAI221XL U1293 ( .A0(n1147), .A1(n1240), .B0(n1146), .B1(n1286), .C0(n282), 
        .Y(n482) );
  AOI2BB2X1 U1294 ( .B0(n1148), .B1(X[8]), .A0N(n1220), .A1N(n1150), .Y(n282)
         );
  OAI221XL U1295 ( .A0(n277), .A1(n1241), .B0(n1146), .B1(n1285), .C0(n279), 
        .Y(n481) );
  AOI2BB2X1 U1296 ( .B0(n1148), .B1(X[9]), .A0N(n1221), .A1N(n1151), .Y(n279)
         );
  OAI221XL U1297 ( .A0(n1138), .A1(n1222), .B0(n1136), .B1(n1284), .C0(n346), 
        .Y(n550) );
  AOI2BB2X1 U1298 ( .B0(Y[0]), .B1(n1140), .A0N(n1144), .A1N(n1202), .Y(n346)
         );
  OAI221XL U1299 ( .A0(n1137), .A1(n1223), .B0(n1136), .B1(n1283), .C0(n345), 
        .Y(n549) );
  AOI2BB2X1 U1300 ( .B0(Y[1]), .B1(n1140), .A0N(n1144), .A1N(n1203), .Y(n345)
         );
  OAI221XL U1301 ( .A0(n1139), .A1(n1224), .B0(n1136), .B1(n1282), .C0(n344), 
        .Y(n548) );
  AOI2BB2X1 U1302 ( .B0(Y[2]), .B1(n1141), .A0N(n1144), .A1N(n1204), .Y(n344)
         );
  OAI221XL U1303 ( .A0(n1139), .A1(n1225), .B0(n1136), .B1(n1281), .C0(n343), 
        .Y(n547) );
  AOI2BB2X1 U1304 ( .B0(Y[3]), .B1(n1141), .A0N(n1142), .A1N(n1205), .Y(n343)
         );
  OAI221XL U1305 ( .A0(n1138), .A1(n1226), .B0(n1136), .B1(n1280), .C0(n342), 
        .Y(n546) );
  AOI2BB2X1 U1306 ( .B0(Y[4]), .B1(n1140), .A0N(n1144), .A1N(n1206), .Y(n342)
         );
  OAI221XL U1307 ( .A0(n1137), .A1(n1227), .B0(n1136), .B1(n1279), .C0(n341), 
        .Y(n545) );
  AOI2BB2X1 U1308 ( .B0(Y[5]), .B1(n1140), .A0N(n1144), .A1N(n1207), .Y(n341)
         );
  OAI221XL U1309 ( .A0(n1137), .A1(n1228), .B0(n1136), .B1(n1278), .C0(n340), 
        .Y(n544) );
  AOI2BB2X1 U1310 ( .B0(Y[6]), .B1(n1140), .A0N(n1144), .A1N(n1208), .Y(n340)
         );
  OAI221XL U1311 ( .A0(n1139), .A1(n1229), .B0(n1136), .B1(n1277), .C0(n339), 
        .Y(n543) );
  AOI2BB2X1 U1312 ( .B0(Y[7]), .B1(n1141), .A0N(n1142), .A1N(n1209), .Y(n339)
         );
  OAI221XL U1313 ( .A0(n1138), .A1(n1230), .B0(n1136), .B1(n1276), .C0(n338), 
        .Y(n542) );
  AOI2BB2X1 U1314 ( .B0(Y[8]), .B1(n1140), .A0N(n1144), .A1N(n1210), .Y(n338)
         );
  OAI221XL U1315 ( .A0(n1138), .A1(n1231), .B0(n1136), .B1(n1275), .C0(n337), 
        .Y(n541) );
  AOI2BB2X1 U1316 ( .B0(Y[9]), .B1(n1140), .A0N(n1144), .A1N(n1211), .Y(n337)
         );
  OAI221XL U1317 ( .A0(n1232), .A1(n1137), .B0(n1136), .B1(n1274), .C0(n304), 
        .Y(n500) );
  AOI2BB2X1 U1318 ( .B0(n1140), .B1(X[0]), .A0N(n1212), .A1N(n1144), .Y(n304)
         );
  OAI221XL U1319 ( .A0(n1233), .A1(n1139), .B0(n1136), .B1(n1273), .C0(n303), 
        .Y(n499) );
  AOI2BB2X1 U1320 ( .B0(n1141), .B1(X[1]), .A0N(n1213), .A1N(n1142), .Y(n303)
         );
  OAI221XL U1321 ( .A0(n1234), .A1(n1139), .B0(n1136), .B1(n1272), .C0(n302), 
        .Y(n498) );
  AOI2BB2X1 U1322 ( .B0(n1141), .B1(X[2]), .A0N(n1214), .A1N(n1144), .Y(n302)
         );
  OAI221XL U1323 ( .A0(n1235), .A1(n1138), .B0(n1136), .B1(n1271), .C0(n301), 
        .Y(n497) );
  AOI2BB2X1 U1324 ( .B0(n1140), .B1(X[3]), .A0N(n1215), .A1N(n1142), .Y(n301)
         );
  OAI221XL U1325 ( .A0(n1236), .A1(n1137), .B0(n1136), .B1(n1270), .C0(n300), 
        .Y(n496) );
  AOI2BB2X1 U1326 ( .B0(n1140), .B1(X[4]), .A0N(n1216), .A1N(n1144), .Y(n300)
         );
  OAI221XL U1327 ( .A0(n1237), .A1(n1137), .B0(n1136), .B1(n1269), .C0(n299), 
        .Y(n495) );
  AOI2BB2X1 U1328 ( .B0(n1140), .B1(X[5]), .A0N(n1217), .A1N(n1142), .Y(n299)
         );
  OAI221XL U1329 ( .A0(n1238), .A1(n1139), .B0(n1136), .B1(n1268), .C0(n298), 
        .Y(n494) );
  AOI2BB2X1 U1330 ( .B0(n1141), .B1(X[6]), .A0N(n1218), .A1N(n1144), .Y(n298)
         );
  OAI221XL U1331 ( .A0(n1239), .A1(n1138), .B0(n1136), .B1(n1267), .C0(n297), 
        .Y(n493) );
  AOI2BB2X1 U1332 ( .B0(n1140), .B1(X[7]), .A0N(n1219), .A1N(n1142), .Y(n297)
         );
  OAI221XL U1333 ( .A0(n1240), .A1(n1138), .B0(n1136), .B1(n1266), .C0(n296), 
        .Y(n492) );
  AOI2BB2X1 U1334 ( .B0(n1140), .B1(X[8]), .A0N(n1220), .A1N(n1144), .Y(n296)
         );
  OAI221XL U1335 ( .A0(n1241), .A1(n1137), .B0(n1136), .B1(n1265), .C0(n293), 
        .Y(n491) );
  AOI2BB2X1 U1336 ( .B0(n1140), .B1(X[9]), .A0N(n1221), .A1N(n1144), .Y(n293)
         );
  OAI211X1 U1337 ( .A0(n1110), .A1(n83), .B0(n440), .C0(n441), .Y(N785) );
  OA22X1 U1338 ( .A0(n1294), .A1(n1193), .B0(n1111), .B1(n1254), .Y(n440) );
  AOI222XL U1339 ( .A0(\geofence_X[3][0] ), .A1(n1112), .B0(\geofence_X[5][0] ), .B1(n419), .C0(\geofence_X[4][0] ), .C1(n1115), .Y(n441) );
  OAI211X1 U1340 ( .A0(n1110), .A1(n163), .B0(n420), .C0(n421), .Y(N801) );
  OA22X1 U1341 ( .A0(n1304), .A1(n1193), .B0(n1111), .B1(n1264), .Y(n420) );
  AOI222XL U1342 ( .A0(\geofence_Y[3][0] ), .A1(n1113), .B0(\geofence_Y[5][0] ), .B1(n419), .C0(\geofence_Y[4][0] ), .C1(n1115), .Y(n421) );
  NOR2X2 U1343 ( .A(n1190), .B(n224), .Y(n1114) );
  NOR2X2 U1344 ( .A(n417), .B(counter_cal_A[0]), .Y(n374) );
  NOR2X2 U1345 ( .A(n417), .B(counter_cal_A[0]), .Y(n1118) );
  OAI222XL U1346 ( .A0(n1126), .A1(n1222), .B0(n1127), .B1(n1187), .C0(n321), 
        .C1(n1344), .Y(n570) );
  OAI222XL U1347 ( .A0(n1126), .A1(n1223), .B0(n1127), .B1(n1186), .C0(n1122), 
        .C1(n1343), .Y(n569) );
  OAI222XL U1348 ( .A0(n1126), .A1(n1224), .B0(n1127), .B1(n1185), .C0(n1125), 
        .C1(n1342), .Y(n568) );
  OAI222XL U1349 ( .A0(n1126), .A1(n1225), .B0(n1127), .B1(n1184), .C0(n1123), 
        .C1(n1341), .Y(n567) );
  OAI222XL U1350 ( .A0(n1126), .A1(n1226), .B0(n1127), .B1(n1183), .C0(n1123), 
        .C1(n1340), .Y(n566) );
  OAI222XL U1351 ( .A0(n1126), .A1(n1227), .B0(n1127), .B1(n1182), .C0(n321), 
        .C1(n1339), .Y(n565) );
  OAI222XL U1352 ( .A0(n1126), .A1(n1228), .B0(n1127), .B1(n1181), .C0(n1125), 
        .C1(n1338), .Y(n564) );
  OAI222XL U1353 ( .A0(n1126), .A1(n1229), .B0(n1127), .B1(n1180), .C0(n1125), 
        .C1(n1337), .Y(n563) );
  OAI222XL U1354 ( .A0(n1126), .A1(n1230), .B0(n1127), .B1(n1179), .C0(n1123), 
        .C1(n1336), .Y(n562) );
  OAI222XL U1355 ( .A0(n1126), .A1(n1231), .B0(n1127), .B1(n1178), .C0(n1122), 
        .C1(n1335), .Y(n561) );
  OAI222XL U1356 ( .A0(n1232), .A1(n1126), .B0(n1177), .B1(n1127), .C0(n1121), 
        .C1(n1334), .Y(n520) );
  OAI222XL U1357 ( .A0(n1233), .A1(n1126), .B0(n1176), .B1(n1127), .C0(n1125), 
        .C1(n1333), .Y(n519) );
  OAI222XL U1358 ( .A0(n1234), .A1(n1126), .B0(n1175), .B1(n1127), .C0(n1123), 
        .C1(n1332), .Y(n518) );
  OAI222XL U1359 ( .A0(n1235), .A1(n1126), .B0(n1174), .B1(n1127), .C0(n1123), 
        .C1(n1331), .Y(n517) );
  OAI222XL U1360 ( .A0(n1236), .A1(n1126), .B0(n1173), .B1(n1127), .C0(n1121), 
        .C1(n1330), .Y(n516) );
  OAI222XL U1361 ( .A0(n1237), .A1(n1126), .B0(n1172), .B1(n1127), .C0(n1125), 
        .C1(n1329), .Y(n515) );
  OAI222XL U1362 ( .A0(n1238), .A1(n1126), .B0(n1171), .B1(n1127), .C0(n1125), 
        .C1(n1328), .Y(n514) );
  OAI222XL U1363 ( .A0(n1239), .A1(n1126), .B0(n1170), .B1(n1127), .C0(n1123), 
        .C1(n1327), .Y(n513) );
  OAI222XL U1364 ( .A0(n1240), .A1(n1126), .B0(n1169), .B1(n1127), .C0(n1121), 
        .C1(n1326), .Y(n512) );
  OAI222XL U1365 ( .A0(n1241), .A1(n1126), .B0(n1168), .B1(n1127), .C0(n1121), 
        .C1(n1325), .Y(n511) );
  NAND2X1 U1366 ( .A(n397), .B(n398), .Y(N948) );
  AOI222XL U1367 ( .A0(n1117), .A1(\geofence_X[3][0] ), .B0(n374), .B1(
        \geofence_X[5][0] ), .C0(n975), .C1(\geofence_X[4][0] ), .Y(n398) );
  AOI222XL U1368 ( .A0(n974), .A1(\geofence_X[0][0] ), .B0(n973), .B1(
        \geofence_X[2][0] ), .C0(n1116), .C1(\geofence_X[1][0] ), .Y(n397) );
  AOI222XL U1369 ( .A0(n974), .A1(\geofence_X[0][1] ), .B0(n973), .B1(
        \geofence_X[2][1] ), .C0(n1116), .C1(\geofence_X[1][1] ), .Y(n399) );
  AOI222XL U1370 ( .A0(n974), .A1(\geofence_X[0][2] ), .B0(n973), .B1(
        \geofence_X[2][2] ), .C0(n1116), .C1(\geofence_X[1][2] ), .Y(n401) );
  AOI222XL U1371 ( .A0(n974), .A1(\geofence_Y[0][1] ), .B0(n973), .B1(
        \geofence_Y[2][1] ), .C0(n1116), .C1(\geofence_Y[1][1] ), .Y(n379) );
  AOI222XL U1372 ( .A0(n974), .A1(\geofence_X[0][3] ), .B0(n973), .B1(
        \geofence_X[2][3] ), .C0(n1116), .C1(\geofence_X[1][3] ), .Y(n403) );
  AOI222XL U1373 ( .A0(n974), .A1(\geofence_Y[0][2] ), .B0(n973), .B1(
        \geofence_Y[2][2] ), .C0(n1116), .C1(\geofence_Y[1][2] ), .Y(n381) );
  AOI222XL U1374 ( .A0(n974), .A1(\geofence_X[0][4] ), .B0(n973), .B1(
        \geofence_X[2][4] ), .C0(n1116), .C1(\geofence_X[1][4] ), .Y(n405) );
  AOI222XL U1375 ( .A0(n974), .A1(\geofence_Y[0][3] ), .B0(n973), .B1(
        \geofence_Y[2][3] ), .C0(n1116), .C1(\geofence_Y[1][3] ), .Y(n383) );
  NAND2X1 U1376 ( .A(n371), .B(n372), .Y(N975) );
  AOI222XL U1377 ( .A0(n1117), .A1(\geofence_Y[3][0] ), .B0(n374), .B1(
        \geofence_Y[5][0] ), .C0(n975), .C1(\geofence_Y[4][0] ), .Y(n372) );
  AOI222XL U1378 ( .A0(n974), .A1(n980), .B0(n973), .B1(\geofence_Y[2][0] ), 
        .C0(n1116), .C1(\geofence_Y[1][0] ), .Y(n371) );
  AOI222XL U1379 ( .A0(n1117), .A1(\geofence_X[3][1] ), .B0(n1118), .B1(
        \geofence_X[5][1] ), .C0(n975), .C1(\geofence_X[4][1] ), .Y(n400) );
  AOI222XL U1380 ( .A0(n1117), .A1(\geofence_Y[3][1] ), .B0(n1118), .B1(
        \geofence_Y[5][1] ), .C0(n975), .C1(\geofence_Y[4][1] ), .Y(n380) );
  XNOR2X1 U1381 ( .A(n1113), .B(n224), .Y(n369) );
  OAI221XL U1382 ( .A0(n1129), .A1(n1222), .B0(n976), .B1(n1324), .C0(n359), 
        .Y(n560) );
  AOI2BB2X1 U1383 ( .B0(Y[0]), .B1(n1131), .A0N(n1135), .A1N(n1202), .Y(n359)
         );
  OAI221XL U1384 ( .A0(n1128), .A1(n1223), .B0(n976), .B1(n1323), .C0(n358), 
        .Y(n559) );
  AOI2BB2X1 U1385 ( .B0(Y[1]), .B1(n1131), .A0N(n1135), .A1N(n1203), .Y(n358)
         );
  OAI221XL U1386 ( .A0(n1130), .A1(n1224), .B0(n976), .B1(n1322), .C0(n357), 
        .Y(n558) );
  AOI2BB2X1 U1387 ( .B0(Y[2]), .B1(n1132), .A0N(n1135), .A1N(n1204), .Y(n357)
         );
  OAI221XL U1388 ( .A0(n1130), .A1(n1225), .B0(n976), .B1(n1321), .C0(n356), 
        .Y(n557) );
  AOI2BB2X1 U1389 ( .B0(Y[3]), .B1(n1132), .A0N(n1135), .A1N(n1205), .Y(n356)
         );
  OAI221XL U1390 ( .A0(n1129), .A1(n1226), .B0(n976), .B1(n1320), .C0(n355), 
        .Y(n556) );
  AOI2BB2X1 U1391 ( .B0(Y[4]), .B1(n1131), .A0N(n1135), .A1N(n1206), .Y(n355)
         );
  OAI221XL U1392 ( .A0(n1128), .A1(n1227), .B0(n976), .B1(n1319), .C0(n354), 
        .Y(n555) );
  AOI2BB2X1 U1393 ( .B0(Y[5]), .B1(n1131), .A0N(n1135), .A1N(n1207), .Y(n354)
         );
  OAI221XL U1394 ( .A0(n1128), .A1(n1228), .B0(n976), .B1(n1318), .C0(n353), 
        .Y(n554) );
  AOI2BB2X1 U1395 ( .B0(Y[6]), .B1(n1131), .A0N(n1135), .A1N(n1208), .Y(n353)
         );
  OAI221XL U1396 ( .A0(n1130), .A1(n1229), .B0(n976), .B1(n1317), .C0(n352), 
        .Y(n553) );
  AOI2BB2X1 U1397 ( .B0(Y[7]), .B1(n1132), .A0N(n1135), .A1N(n1209), .Y(n352)
         );
  OAI221XL U1398 ( .A0(n1129), .A1(n1230), .B0(n976), .B1(n1316), .C0(n351), 
        .Y(n552) );
  AOI2BB2X1 U1399 ( .B0(Y[8]), .B1(n1131), .A0N(n1135), .A1N(n1210), .Y(n351)
         );
  OAI221XL U1400 ( .A0(n1129), .A1(n1231), .B0(n976), .B1(n1315), .C0(n350), 
        .Y(n551) );
  AOI2BB2X1 U1401 ( .B0(Y[9]), .B1(n1131), .A0N(n1133), .A1N(n1211), .Y(n350)
         );
  OAI221XL U1402 ( .A0(n1232), .A1(n1128), .B0(n976), .B1(n1314), .C0(n318), 
        .Y(n510) );
  AOI2BB2X1 U1403 ( .B0(n1131), .B1(X[0]), .A0N(n1212), .A1N(n1135), .Y(n318)
         );
  OAI221XL U1404 ( .A0(n1233), .A1(n1130), .B0(n976), .B1(n1313), .C0(n317), 
        .Y(n509) );
  AOI2BB2X1 U1405 ( .B0(n1132), .B1(X[1]), .A0N(n1213), .A1N(n1133), .Y(n317)
         );
  OAI221XL U1406 ( .A0(n1234), .A1(n1130), .B0(n976), .B1(n1312), .C0(n316), 
        .Y(n508) );
  AOI2BB2X1 U1407 ( .B0(n1132), .B1(X[2]), .A0N(n1214), .A1N(n1135), .Y(n316)
         );
  OAI221XL U1408 ( .A0(n1235), .A1(n1129), .B0(n976), .B1(n1311), .C0(n315), 
        .Y(n507) );
  AOI2BB2X1 U1409 ( .B0(n1131), .B1(X[3]), .A0N(n1215), .A1N(n1133), .Y(n315)
         );
  OAI221XL U1410 ( .A0(n1236), .A1(n1128), .B0(n976), .B1(n1310), .C0(n314), 
        .Y(n506) );
  AOI2BB2X1 U1411 ( .B0(n1131), .B1(X[4]), .A0N(n1216), .A1N(n1135), .Y(n314)
         );
  OAI221XL U1412 ( .A0(n1237), .A1(n1128), .B0(n976), .B1(n1309), .C0(n313), 
        .Y(n505) );
  AOI2BB2X1 U1413 ( .B0(n1131), .B1(X[5]), .A0N(n1217), .A1N(n1133), .Y(n313)
         );
  OAI221XL U1414 ( .A0(n1238), .A1(n1130), .B0(n976), .B1(n1308), .C0(n312), 
        .Y(n504) );
  AOI2BB2X1 U1415 ( .B0(n1132), .B1(X[6]), .A0N(n1218), .A1N(n1135), .Y(n312)
         );
  OAI221XL U1416 ( .A0(n1239), .A1(n1129), .B0(n976), .B1(n1307), .C0(n311), 
        .Y(n503) );
  AOI2BB2X1 U1417 ( .B0(n1131), .B1(X[7]), .A0N(n1219), .A1N(n1133), .Y(n311)
         );
  OAI221XL U1418 ( .A0(n1240), .A1(n1129), .B0(n976), .B1(n1306), .C0(n310), 
        .Y(n502) );
  AOI2BB2X1 U1419 ( .B0(n1131), .B1(X[8]), .A0N(n1220), .A1N(n1135), .Y(n310)
         );
  OAI221XL U1420 ( .A0(n1241), .A1(n1128), .B0(n976), .B1(n1305), .C0(n307), 
        .Y(n501) );
  AOI2BB2X1 U1421 ( .B0(n1131), .B1(X[9]), .A0N(n1221), .A1N(n1133), .Y(n307)
         );
  NAND2X1 U1422 ( .A(n1114), .B(n226), .Y(n271) );
  NOR2X1 U1423 ( .A(n226), .B(counter_cal_A[0]), .Y(n266) );
  AO22X1 U1424 ( .A0(N819), .A1(n1163), .B0(N911), .B1(n1197), .Y(vectorA_x[0]) );
  NOR2X1 U1425 ( .A(n418), .B(counter_cal_A[0]), .Y(n373) );
  NOR3X1 U1426 ( .A(n1189), .B(counter_cal_A[0]), .C(n1188), .Y(n378) );
  INVX3 U1427 ( .A(n1145), .Y(n1146) );
  CLKINVX1 U1428 ( .A(n278), .Y(n1145) );
  OAI32X1 U1429 ( .A0(n52), .A1(geofence_counter[2]), .A2(n1194), .B0(n335), 
        .B1(n1166), .Y(n278) );
  OAI32X1 U1430 ( .A0(n1166), .A1(counter_A[2]), .A2(n1242), .B0(
        geofence_counter[1]), .B1(n322), .Y(n1152) );
  CLKINVX1 U1431 ( .A(n276), .Y(n1155) );
  OAI32X1 U1432 ( .A0(n1166), .A1(counter_A[2]), .A2(n1242), .B0(
        geofence_counter[1]), .B1(n322), .Y(n276) );
  OAI32X1 U1433 ( .A0(n1166), .A1(counter_A[2]), .A2(n1242), .B0(
        geofence_counter[1]), .B1(n322), .Y(n1153) );
  AO22X1 U1434 ( .A0(N846), .A1(n1163), .B0(N922), .B1(n1165), .Y(vectorA_y[0]) );
  AO22X1 U1435 ( .A0(N900), .A1(n1162), .B0(N976), .B1(n1164), .Y(vectorB_y[0]) );
  NAND2X1 U1436 ( .A(n401), .B(n402), .Y(N946) );
  AOI222XL U1437 ( .A0(n1117), .A1(\geofence_X[3][2] ), .B0(n374), .B1(
        \geofence_X[5][2] ), .C0(n975), .C1(\geofence_X[4][2] ), .Y(n402) );
  NAND2X1 U1438 ( .A(n381), .B(n382), .Y(N973) );
  AOI222XL U1439 ( .A0(n1117), .A1(\geofence_Y[3][2] ), .B0(n374), .B1(
        \geofence_Y[5][2] ), .C0(n975), .C1(\geofence_Y[4][2] ), .Y(n382) );
  NAND2X1 U1440 ( .A(n405), .B(n406), .Y(N944) );
  AOI222XL U1441 ( .A0(n1117), .A1(\geofence_X[3][4] ), .B0(n374), .B1(
        \geofence_X[5][4] ), .C0(n975), .C1(\geofence_X[4][4] ), .Y(n406) );
  NAND2X1 U1442 ( .A(n409), .B(n410), .Y(N942) );
  AOI222XL U1443 ( .A0(n1117), .A1(\geofence_X[3][6] ), .B0(n374), .B1(
        \geofence_X[5][6] ), .C0(n975), .C1(\geofence_X[4][6] ), .Y(n410) );
  NAND2X1 U1444 ( .A(n403), .B(n404), .Y(N945) );
  AOI222XL U1445 ( .A0(n1117), .A1(\geofence_X[3][3] ), .B0(n1118), .B1(
        \geofence_X[5][3] ), .C0(n975), .C1(\geofence_X[4][3] ), .Y(n404) );
  NAND2X1 U1446 ( .A(n383), .B(n384), .Y(N972) );
  AOI222XL U1447 ( .A0(n1117), .A1(\geofence_Y[3][3] ), .B0(n1118), .B1(
        \geofence_Y[5][3] ), .C0(n975), .C1(\geofence_Y[4][3] ), .Y(n384) );
  NAND2X1 U1448 ( .A(n407), .B(n408), .Y(N943) );
  AOI222XL U1449 ( .A0(n1117), .A1(\geofence_X[3][5] ), .B0(n1118), .B1(
        \geofence_X[5][5] ), .C0(n975), .C1(\geofence_X[4][5] ), .Y(n408) );
  NAND2X1 U1450 ( .A(n385), .B(n386), .Y(N971) );
  AOI222XL U1451 ( .A0(n1117), .A1(\geofence_Y[3][4] ), .B0(n374), .B1(
        \geofence_Y[5][4] ), .C0(n975), .C1(\geofence_Y[4][4] ), .Y(n386) );
  NAND2X1 U1452 ( .A(n387), .B(n388), .Y(N970) );
  AOI222XL U1453 ( .A0(n1117), .A1(\geofence_Y[3][5] ), .B0(n1118), .B1(
        \geofence_Y[5][5] ), .C0(n975), .C1(\geofence_Y[4][5] ), .Y(n388) );
  NAND2X1 U1454 ( .A(n411), .B(n412), .Y(N941) );
  AOI222XL U1455 ( .A0(n1117), .A1(\geofence_X[3][7] ), .B0(n1118), .B1(
        \geofence_X[5][7] ), .C0(n975), .C1(\geofence_X[4][7] ), .Y(n412) );
  NAND2X1 U1456 ( .A(n389), .B(n390), .Y(N969) );
  AOI222XL U1457 ( .A0(n1117), .A1(\geofence_Y[3][6] ), .B0(n374), .B1(
        \geofence_Y[5][6] ), .C0(n975), .C1(\geofence_Y[4][6] ), .Y(n390) );
  OAI211X1 U1458 ( .A0(n1110), .A1(n80), .B0(n442), .C0(n443), .Y(N784) );
  OA22X1 U1459 ( .A0(n1293), .A1(n1193), .B0(n1111), .B1(n1253), .Y(n442) );
  AOI222XL U1460 ( .A0(\geofence_X[3][1] ), .A1(n1113), .B0(\geofence_X[5][1] ), .B1(n1114), .C0(\geofence_X[4][1] ), .C1(n1115), .Y(n443) );
  OAI211X1 U1461 ( .A0(n1110), .A1(n77), .B0(n444), .C0(n445), .Y(N783) );
  OA22X1 U1462 ( .A0(n1292), .A1(n1193), .B0(n1111), .B1(n1252), .Y(n444) );
  AOI222XL U1463 ( .A0(\geofence_X[3][2] ), .A1(n1113), .B0(\geofence_X[5][2] ), .B1(n419), .C0(\geofence_X[4][2] ), .C1(n1115), .Y(n445) );
  OAI211X1 U1464 ( .A0(n1110), .A1(n160), .B0(n422), .C0(n423), .Y(N800) );
  OA22X1 U1465 ( .A0(n1303), .A1(n1193), .B0(n1111), .B1(n1263), .Y(n422) );
  AOI222XL U1466 ( .A0(\geofence_Y[3][1] ), .A1(n1112), .B0(\geofence_Y[5][1] ), .B1(n1114), .C0(\geofence_Y[4][1] ), .C1(n1115), .Y(n423) );
  OAI211X1 U1467 ( .A0(n1110), .A1(n74), .B0(n446), .C0(n447), .Y(N782) );
  OA22X1 U1468 ( .A0(n1291), .A1(n1193), .B0(n1111), .B1(n1251), .Y(n446) );
  AOI222XL U1469 ( .A0(\geofence_X[3][3] ), .A1(n1112), .B0(\geofence_X[5][3] ), .B1(n1114), .C0(\geofence_X[4][3] ), .C1(n1115), .Y(n447) );
  OAI211X1 U1470 ( .A0(n1110), .A1(n157), .B0(n424), .C0(n425), .Y(N799) );
  OA22X1 U1471 ( .A0(n1302), .A1(n1193), .B0(n1111), .B1(n1262), .Y(n424) );
  AOI222XL U1472 ( .A0(\geofence_Y[3][2] ), .A1(n1112), .B0(\geofence_Y[5][2] ), .B1(n419), .C0(\geofence_Y[4][2] ), .C1(n1115), .Y(n425) );
  OAI211X1 U1473 ( .A0(n1110), .A1(n71), .B0(n448), .C0(n449), .Y(N781) );
  OA22X1 U1474 ( .A0(n1290), .A1(n1193), .B0(n1111), .B1(n1250), .Y(n448) );
  AOI222XL U1475 ( .A0(\geofence_X[3][4] ), .A1(n1112), .B0(\geofence_X[5][4] ), .B1(n419), .C0(\geofence_X[4][4] ), .C1(n1115), .Y(n449) );
  OAI211X1 U1476 ( .A0(n1110), .A1(n154), .B0(n426), .C0(n427), .Y(N798) );
  OA22X1 U1477 ( .A0(n1301), .A1(n1193), .B0(n1111), .B1(n1261), .Y(n426) );
  AOI222XL U1478 ( .A0(\geofence_Y[3][3] ), .A1(n1113), .B0(\geofence_Y[5][3] ), .B1(n1114), .C0(\geofence_Y[4][3] ), .C1(n1115), .Y(n427) );
  OAI211X1 U1479 ( .A0(n1110), .A1(n68), .B0(n450), .C0(n451), .Y(N780) );
  OA22X1 U1480 ( .A0(n1289), .A1(n1193), .B0(n1111), .B1(n1249), .Y(n450) );
  AOI222XL U1481 ( .A0(\geofence_X[3][5] ), .A1(n1113), .B0(\geofence_X[5][5] ), .B1(n1114), .C0(\geofence_X[4][5] ), .C1(n1115), .Y(n451) );
  OAI211X1 U1482 ( .A0(n1110), .A1(n151), .B0(n428), .C0(n429), .Y(N797) );
  OA22X1 U1483 ( .A0(n1300), .A1(n1193), .B0(n1111), .B1(n1260), .Y(n428) );
  AOI222XL U1484 ( .A0(\geofence_Y[3][4] ), .A1(n1113), .B0(\geofence_Y[5][4] ), .B1(n419), .C0(\geofence_Y[4][4] ), .C1(n1115), .Y(n429) );
  AOI222XL U1485 ( .A0(n974), .A1(\geofence_X[0][5] ), .B0(n973), .B1(
        \geofence_X[2][5] ), .C0(n1116), .C1(\geofence_X[1][5] ), .Y(n407) );
  AOI222XL U1486 ( .A0(n974), .A1(\geofence_Y[0][4] ), .B0(n973), .B1(
        \geofence_Y[2][4] ), .C0(n1116), .C1(\geofence_Y[1][4] ), .Y(n385) );
  AOI222XL U1487 ( .A0(n974), .A1(\geofence_Y[0][5] ), .B0(n973), .B1(
        \geofence_Y[2][5] ), .C0(n1116), .C1(\geofence_Y[1][5] ), .Y(n387) );
  AOI222XL U1488 ( .A0(n974), .A1(\geofence_Y[0][6] ), .B0(n973), .B1(
        \geofence_Y[2][6] ), .C0(n1116), .C1(\geofence_Y[1][6] ), .Y(n389) );
  NOR2X2 U1489 ( .A(counter_B[1]), .B(counter_B[0]), .Y(n1093) );
  NOR2X2 U1490 ( .A(counter_B[1]), .B(counter_B[0]), .Y(n1103) );
  AO22X1 U1491 ( .A0(N873), .A1(n1162), .B0(N949), .B1(n1165), .Y(vectorB_x[0]) );
  OAI2BB2XL U1492 ( .B0(n260), .B1(n271), .A0N(n992), .A1N(match_array[5]), 
        .Y(n470) );
  OR2X1 U1493 ( .A(n252), .B(n271), .Y(n992) );
  OAI22XL U1494 ( .A0(n260), .A1(n1111), .B0(n263), .B1(n230), .Y(n469) );
  NOR2X1 U1495 ( .A(n252), .B(n1111), .Y(n263) );
  OAI22XL U1496 ( .A0(n1110), .A1(n260), .B0(n261), .B1(n231), .Y(n468) );
  NOR2X1 U1497 ( .A(n252), .B(n1110), .Y(n261) );
  NAND3X1 U1498 ( .A(n226), .B(n224), .C(n1190), .Y(n259) );
  BUFX4 U1499 ( .A(n262), .Y(n1111) );
  NAND2X1 U1500 ( .A(n413), .B(n414), .Y(N940) );
  AOI222XL U1501 ( .A0(n1117), .A1(\geofence_X[3][8] ), .B0(n374), .B1(
        \geofence_X[5][8] ), .C0(n975), .C1(\geofence_X[4][8] ), .Y(n414) );
  NAND2X1 U1502 ( .A(n391), .B(n392), .Y(N968) );
  AOI222XL U1503 ( .A0(n1117), .A1(\geofence_Y[3][7] ), .B0(n1118), .B1(
        \geofence_Y[5][7] ), .C0(n975), .C1(\geofence_Y[4][7] ), .Y(n392) );
  NAND2X1 U1504 ( .A(n393), .B(n394), .Y(N967) );
  AOI222XL U1505 ( .A0(n1117), .A1(\geofence_Y[3][8] ), .B0(n374), .B1(
        \geofence_Y[5][8] ), .C0(n975), .C1(\geofence_Y[4][8] ), .Y(n394) );
  NAND2X1 U1506 ( .A(n395), .B(n396), .Y(N966) );
  AOI222XL U1507 ( .A0(n1117), .A1(\geofence_Y[3][9] ), .B0(n1118), .B1(
        \geofence_Y[5][9] ), .C0(n975), .C1(\geofence_Y[4][9] ), .Y(n396) );
  NAND2X1 U1508 ( .A(n415), .B(n416), .Y(N939) );
  AOI222XL U1509 ( .A0(n1117), .A1(\geofence_X[3][9] ), .B0(n1118), .B1(
        \geofence_X[5][9] ), .C0(n975), .C1(\geofence_X[4][9] ), .Y(n416) );
  OAI211X1 U1510 ( .A0(n1110), .A1(n65), .B0(n452), .C0(n453), .Y(N779) );
  OA22X1 U1511 ( .A0(n1288), .A1(n1193), .B0(n1111), .B1(n1248), .Y(n452) );
  AOI222XL U1512 ( .A0(\geofence_X[3][6] ), .A1(n1113), .B0(\geofence_X[5][6] ), .B1(n419), .C0(\geofence_X[4][6] ), .C1(n1115), .Y(n453) );
  OAI211X1 U1513 ( .A0(n1110), .A1(n148), .B0(n430), .C0(n431), .Y(N796) );
  OA22X1 U1514 ( .A0(n1299), .A1(n1193), .B0(n1111), .B1(n1259), .Y(n430) );
  AOI222XL U1515 ( .A0(\geofence_Y[3][5] ), .A1(n1112), .B0(\geofence_Y[5][5] ), .B1(n1114), .C0(\geofence_Y[4][5] ), .C1(n1115), .Y(n431) );
  OAI211X1 U1516 ( .A0(n1110), .A1(n145), .B0(n432), .C0(n433), .Y(N795) );
  OA22X1 U1517 ( .A0(n1298), .A1(n1193), .B0(n1111), .B1(n1258), .Y(n432) );
  AOI222XL U1518 ( .A0(\geofence_Y[3][6] ), .A1(n1112), .B0(\geofence_Y[5][6] ), .B1(n419), .C0(\geofence_Y[4][6] ), .C1(n1115), .Y(n433) );
  NAND3X2 U1519 ( .A(state[0]), .B(n49), .C(state[1]), .Y(n252) );
  AOI222XL U1520 ( .A0(n974), .A1(\geofence_X[0][6] ), .B0(n973), .B1(
        \geofence_X[2][6] ), .C0(n1116), .C1(\geofence_X[1][6] ), .Y(n409) );
  AOI222XL U1521 ( .A0(n974), .A1(\geofence_X[0][7] ), .B0(n973), .B1(
        \geofence_X[2][7] ), .C0(n1116), .C1(\geofence_X[1][7] ), .Y(n411) );
  AOI222XL U1522 ( .A0(n974), .A1(\geofence_Y[0][7] ), .B0(n973), .B1(
        \geofence_Y[2][7] ), .C0(n1116), .C1(\geofence_Y[1][7] ), .Y(n391) );
  AOI222XL U1523 ( .A0(n974), .A1(\geofence_Y[0][8] ), .B0(n973), .B1(
        \geofence_Y[2][8] ), .C0(n1116), .C1(\geofence_Y[1][8] ), .Y(n393) );
  AOI222XL U1524 ( .A0(n974), .A1(\geofence_X[0][8] ), .B0(n973), .B1(
        \geofence_X[2][8] ), .C0(n1116), .C1(\geofence_X[1][8] ), .Y(n413) );
  AOI222XL U1525 ( .A0(n974), .A1(\geofence_X[0][9] ), .B0(n973), .B1(
        \geofence_X[2][9] ), .C0(n1116), .C1(\geofence_X[1][9] ), .Y(n415) );
  NAND3X1 U1526 ( .A(n50), .B(n49), .C(state[1]), .Y(n365) );
  OAI211X1 U1527 ( .A0(n1110), .A1(n62), .B0(n454), .C0(n455), .Y(N778) );
  OA22X1 U1528 ( .A0(n1287), .A1(n1193), .B0(n1111), .B1(n1247), .Y(n454) );
  AOI222XL U1529 ( .A0(\geofence_X[3][7] ), .A1(n1112), .B0(\geofence_X[5][7] ), .B1(n1114), .C0(\geofence_X[4][7] ), .C1(n1115), .Y(n455) );
  OAI211X1 U1530 ( .A0(n1110), .A1(n142), .B0(n434), .C0(n435), .Y(N794) );
  OA22X1 U1531 ( .A0(n1297), .A1(n1193), .B0(n1111), .B1(n1257), .Y(n434) );
  AOI222XL U1532 ( .A0(\geofence_Y[3][7] ), .A1(n1113), .B0(\geofence_Y[5][7] ), .B1(n1114), .C0(\geofence_Y[4][7] ), .C1(n1115), .Y(n435) );
  OAI211X1 U1533 ( .A0(n1110), .A1(n139), .B0(n436), .C0(n437), .Y(N793) );
  OA22X1 U1534 ( .A0(n1296), .A1(n1193), .B0(n1111), .B1(n1256), .Y(n436) );
  AOI222XL U1535 ( .A0(\geofence_Y[3][8] ), .A1(n1113), .B0(\geofence_Y[5][8] ), .B1(n419), .C0(\geofence_Y[4][8] ), .C1(n1115), .Y(n437) );
  OAI211X1 U1536 ( .A0(n1110), .A1(n59), .B0(n456), .C0(n457), .Y(N777) );
  OA22X1 U1537 ( .A0(n1286), .A1(n1193), .B0(n1111), .B1(n1246), .Y(n456) );
  AOI222XL U1538 ( .A0(\geofence_X[3][8] ), .A1(n1112), .B0(\geofence_X[5][8] ), .B1(n419), .C0(\geofence_X[4][8] ), .C1(n1115), .Y(n457) );
  OAI211X1 U1539 ( .A0(n1110), .A1(n56), .B0(n458), .C0(n459), .Y(N776) );
  OA22X1 U1540 ( .A0(n1285), .A1(n1193), .B0(n1111), .B1(n1245), .Y(n458) );
  AOI222XL U1541 ( .A0(\geofence_X[3][9] ), .A1(n1113), .B0(\geofence_X[5][9] ), .B1(n419), .C0(\geofence_X[4][9] ), .C1(n1115), .Y(n459) );
  AOI222XL U1542 ( .A0(n974), .A1(\geofence_Y[0][9] ), .B0(n973), .B1(
        \geofence_Y[2][9] ), .C0(n1116), .C1(\geofence_Y[1][9] ), .Y(n395) );
  OAI211X1 U1543 ( .A0(n1110), .A1(n136), .B0(n438), .C0(n439), .Y(N792) );
  OA22X1 U1544 ( .A0(n1295), .A1(n1193), .B0(n1111), .B1(n1255), .Y(n438) );
  AOI222XL U1545 ( .A0(\geofence_Y[3][9] ), .A1(n1112), .B0(\geofence_Y[5][9] ), .B1(n1114), .C0(\geofence_Y[4][9] ), .C1(n1115), .Y(n439) );
  CLKINVX1 U1546 ( .A(Y[0]), .Y(n1187) );
  CLKINVX1 U1547 ( .A(Y[1]), .Y(n1186) );
  CLKINVX1 U1548 ( .A(Y[2]), .Y(n1185) );
  CLKINVX1 U1549 ( .A(Y[3]), .Y(n1184) );
  CLKINVX1 U1550 ( .A(Y[4]), .Y(n1183) );
  CLKINVX1 U1551 ( .A(Y[5]), .Y(n1182) );
  CLKINVX1 U1552 ( .A(Y[6]), .Y(n1181) );
  CLKINVX1 U1553 ( .A(Y[7]), .Y(n1180) );
  CLKINVX1 U1554 ( .A(Y[8]), .Y(n1179) );
  CLKINVX1 U1555 ( .A(Y[9]), .Y(n1178) );
  CLKINVX1 U1556 ( .A(X[0]), .Y(n1177) );
  CLKINVX1 U1557 ( .A(X[1]), .Y(n1176) );
  CLKINVX1 U1558 ( .A(X[2]), .Y(n1175) );
  CLKINVX1 U1559 ( .A(X[3]), .Y(n1174) );
  CLKINVX1 U1560 ( .A(X[4]), .Y(n1173) );
  CLKINVX1 U1561 ( .A(X[5]), .Y(n1172) );
  CLKINVX1 U1562 ( .A(X[6]), .Y(n1171) );
  CLKINVX1 U1563 ( .A(X[7]), .Y(n1170) );
  CLKINVX1 U1564 ( .A(X[8]), .Y(n1169) );
  CLKINVX1 U1565 ( .A(X[9]), .Y(n1168) );
  NOR2X1 U1566 ( .A(n1195), .B(geofence_counter[0]), .Y(N331) );
  CLKBUFX3 U1567 ( .A(n258), .Y(n1109) );
  NOR3X1 U1568 ( .A(state[1]), .B(state[2]), .C(n50), .Y(n258) );
  OAI21X1 U1569 ( .A0(n460), .A1(n461), .B0(n1161), .Y(n366) );
  XNOR2X1 U1570 ( .A(outer_counter[0]), .B(counter_B[0]), .Y(n461) );
  OAI31XL U1571 ( .A0(n1199), .A1(n1194), .A2(n52), .B0(n253), .Y(
        next_state[1]) );
  AOI31X1 U1572 ( .A0(n1192), .A1(n49), .A2(state[1]), .B0(n1161), .Y(n253) );
  NAND3X1 U1573 ( .A(n1109), .B(n1199), .C(geofence_counter[0]), .Y(n322) );
  NAND2BX1 U1574 ( .AN(n322), .B(geofence_counter[1]), .Y(n349) );
  OAI21XL U1575 ( .A0(n367), .A1(n1200), .B0(n368), .Y(n571) );
  NAND4X1 U1576 ( .A(outer_counter[0]), .B(n1161), .C(n366), .D(n1200), .Y(
        n368) );
  OA21XL U1577 ( .A0(outer_counter[0]), .A1(n365), .B0(n366), .Y(n367) );
  CLKINVX1 U1578 ( .A(n273), .Y(n1159) );
  NOR3X1 U1579 ( .A(geofence_counter[1]), .B(geofence_counter[2]), .C(n1194), 
        .Y(n273) );
  AND3X2 U1580 ( .A(n1164), .B(n226), .C(n1115), .Y(n993) );
  XNOR2X1 U1581 ( .A(outer_counter[1]), .B(counter_B[2]), .Y(n460) );
  OAI211X1 U1582 ( .A0(n254), .A1(n252), .B0(n255), .C0(n256), .Y(
        next_state[0]) );
  NOR2X1 U1583 ( .A(n1119), .B(n257), .Y(n256) );
  OAI31XL U1584 ( .A0(n1199), .A1(geofence_counter[0]), .A2(n52), .B0(n1109), 
        .Y(n255) );
  NOR4X1 U1585 ( .A(state[2]), .B(state[0]), .C(n220), .D(n1200), .Y(n257) );
  NOR2X1 U1586 ( .A(n252), .B(counter_cal_A[2]), .Y(n265) );
  NOR2X1 U1587 ( .A(n252), .B(counter_cal_A[0]), .Y(N990) );
  NOR2X1 U1588 ( .A(n224), .B(n1193), .Y(n254) );
  NOR3X1 U1589 ( .A(n229), .B(n231), .C(n230), .Y(n467) );
  NAND3X1 U1590 ( .A(counter_cal_A[2]), .B(counter_cal_A[1]), .C(N990), .Y(
        n465) );
  NOR2X1 U1591 ( .A(counter_B[0]), .B(n366), .Y(N759) );
  OR3X2 U1592 ( .A(state[1]), .B(state[2]), .C(state[0]), .Y(n994) );
  AOI21X1 U1593 ( .A0(n463), .A1(n464), .B0(n465), .Y(N1013) );
  NAND4X1 U1594 ( .A(n230), .B(n229), .C(n231), .D(n466), .Y(n464) );
  NAND4X1 U1595 ( .A(match_array[4]), .B(match_array[3]), .C(match_array[5]), 
        .D(n467), .Y(n463) );
  NOR3X1 U1596 ( .A(match_array[3]), .B(match_array[5]), .C(match_array[4]), 
        .Y(n466) );
  XOR2X1 U1597 ( .A(geofence_counter[0]), .B(geofence_counter[1]), .Y(n995) );
  CLKINVX1 U1598 ( .A(reset), .Y(n1167) );
  NOR2X1 U1599 ( .A(counter_B[0]), .B(counter_A[2]), .Y(n997) );
  AOI222XL U1600 ( .A0(\geofence_Y[5][0] ), .A1(n1045), .B0(\geofence_Y[3][0] ), .B1(n1046), .C0(\geofence_Y[4][0] ), .C1(n1047), .Y(n999) );
  NOR2X1 U1601 ( .A(counter_A[2]), .B(n1243), .Y(n996) );
  AOI222XL U1602 ( .A0(\geofence_Y[2][0] ), .A1(n1048), .B0(\geofence_Y[0][0] ), .B1(n1049), .C0(\geofence_Y[1][0] ), .C1(n1051), .Y(n998) );
  NAND2X1 U1603 ( .A(n999), .B(n998), .Y(N845) );
  AOI222XL U1604 ( .A0(\geofence_Y[5][1] ), .A1(n1045), .B0(\geofence_Y[3][1] ), .B1(n1046), .C0(\geofence_Y[4][1] ), .C1(n1047), .Y(n1001) );
  AOI222XL U1605 ( .A0(\geofence_Y[2][1] ), .A1(n1048), .B0(\geofence_Y[0][1] ), .B1(n1049), .C0(\geofence_Y[1][1] ), .C1(n1051), .Y(n1000) );
  NAND2X1 U1606 ( .A(n1001), .B(n1000), .Y(N844) );
  AOI222XL U1607 ( .A0(\geofence_Y[5][2] ), .A1(n1045), .B0(\geofence_Y[3][2] ), .B1(n1046), .C0(\geofence_Y[4][2] ), .C1(n1047), .Y(n1003) );
  AOI222XL U1608 ( .A0(\geofence_Y[2][2] ), .A1(n1048), .B0(\geofence_Y[0][2] ), .B1(n1049), .C0(\geofence_Y[1][2] ), .C1(n1051), .Y(n1002) );
  NAND2X1 U1609 ( .A(n1003), .B(n1002), .Y(N843) );
  AOI222XL U1610 ( .A0(\geofence_Y[5][3] ), .A1(n1045), .B0(\geofence_Y[3][3] ), .B1(n1046), .C0(\geofence_Y[4][3] ), .C1(n1047), .Y(n1005) );
  AOI222XL U1611 ( .A0(\geofence_Y[2][3] ), .A1(n1048), .B0(\geofence_Y[0][3] ), .B1(n1049), .C0(\geofence_Y[1][3] ), .C1(n1051), .Y(n1004) );
  NAND2X1 U1612 ( .A(n1005), .B(n1004), .Y(N842) );
  AOI222XL U1613 ( .A0(\geofence_Y[5][4] ), .A1(n1045), .B0(\geofence_Y[3][4] ), .B1(n1046), .C0(\geofence_Y[4][4] ), .C1(n1047), .Y(n1007) );
  AOI222XL U1614 ( .A0(\geofence_Y[2][4] ), .A1(n1048), .B0(\geofence_Y[0][4] ), .B1(n1049), .C0(\geofence_Y[1][4] ), .C1(n1051), .Y(n1006) );
  NAND2X1 U1615 ( .A(n1007), .B(n1006), .Y(N841) );
  AOI222XL U1616 ( .A0(\geofence_Y[5][5] ), .A1(n1045), .B0(\geofence_Y[3][5] ), .B1(n1046), .C0(\geofence_Y[4][5] ), .C1(n1047), .Y(n1009) );
  AOI222XL U1617 ( .A0(\geofence_Y[2][5] ), .A1(n1048), .B0(\geofence_Y[0][5] ), .B1(n1049), .C0(\geofence_Y[1][5] ), .C1(n1051), .Y(n1008) );
  NAND2X1 U1618 ( .A(n1009), .B(n1008), .Y(N840) );
  AOI222XL U1619 ( .A0(\geofence_Y[5][6] ), .A1(n1045), .B0(\geofence_Y[3][6] ), .B1(n1046), .C0(\geofence_Y[4][6] ), .C1(n1047), .Y(n1011) );
  AOI222XL U1620 ( .A0(\geofence_Y[2][6] ), .A1(n1048), .B0(\geofence_Y[0][6] ), .B1(n1049), .C0(\geofence_Y[1][6] ), .C1(n1051), .Y(n1010) );
  NAND2X1 U1621 ( .A(n1011), .B(n1010), .Y(N839) );
  AOI222XL U1622 ( .A0(\geofence_Y[5][7] ), .A1(n1045), .B0(\geofence_Y[3][7] ), .B1(n1046), .C0(\geofence_Y[4][7] ), .C1(n1047), .Y(n1013) );
  AOI222XL U1623 ( .A0(\geofence_Y[2][7] ), .A1(n1048), .B0(\geofence_Y[0][7] ), .B1(n1049), .C0(\geofence_Y[1][7] ), .C1(n1051), .Y(n1012) );
  NAND2X1 U1624 ( .A(n1013), .B(n1012), .Y(N838) );
  AOI222XL U1625 ( .A0(\geofence_Y[5][8] ), .A1(n1045), .B0(\geofence_Y[3][8] ), .B1(n1046), .C0(\geofence_Y[4][8] ), .C1(n1047), .Y(n1015) );
  AOI222XL U1626 ( .A0(\geofence_Y[2][8] ), .A1(n1048), .B0(\geofence_Y[0][8] ), .B1(n1049), .C0(\geofence_Y[1][8] ), .C1(n1051), .Y(n1014) );
  NAND2X1 U1627 ( .A(n1015), .B(n1014), .Y(N837) );
  AOI222XL U1628 ( .A0(\geofence_Y[5][9] ), .A1(n1045), .B0(\geofence_Y[3][9] ), .B1(n1046), .C0(\geofence_Y[4][9] ), .C1(n1047), .Y(n1017) );
  AOI222XL U1629 ( .A0(\geofence_Y[2][9] ), .A1(n1048), .B0(\geofence_Y[0][9] ), .B1(n1049), .C0(\geofence_Y[1][9] ), .C1(n1051), .Y(n1016) );
  NAND2X1 U1630 ( .A(n1017), .B(n1016), .Y(N836) );
  AOI222XL U1631 ( .A0(\geofence_X[5][0] ), .A1(n1045), .B0(\geofence_X[3][0] ), .B1(n1046), .C0(\geofence_X[4][0] ), .C1(n1047), .Y(n1019) );
  AOI222XL U1632 ( .A0(\geofence_X[2][0] ), .A1(n1048), .B0(n979), .B1(n1049), 
        .C0(\geofence_X[1][0] ), .C1(n1051), .Y(n1018) );
  NAND2X1 U1633 ( .A(n1019), .B(n1018), .Y(N818) );
  AOI222XL U1634 ( .A0(\geofence_X[5][1] ), .A1(n1045), .B0(\geofence_X[3][1] ), .B1(n1046), .C0(\geofence_X[4][1] ), .C1(n1047), .Y(n1021) );
  AOI222XL U1635 ( .A0(\geofence_X[2][1] ), .A1(n1048), .B0(\geofence_X[0][1] ), .B1(n1049), .C0(\geofence_X[1][1] ), .C1(n1051), .Y(n1020) );
  NAND2X1 U1636 ( .A(n1021), .B(n1020), .Y(N817) );
  AOI222XL U1637 ( .A0(\geofence_X[5][2] ), .A1(n1045), .B0(\geofence_X[3][2] ), .B1(n1046), .C0(\geofence_X[4][2] ), .C1(n1047), .Y(n1023) );
  AOI222XL U1638 ( .A0(\geofence_X[2][2] ), .A1(n1048), .B0(\geofence_X[0][2] ), .B1(n1049), .C0(\geofence_X[1][2] ), .C1(n1051), .Y(n1022) );
  NAND2X1 U1639 ( .A(n1023), .B(n1022), .Y(N816) );
  AOI222XL U1640 ( .A0(\geofence_X[5][3] ), .A1(n1045), .B0(\geofence_X[3][3] ), .B1(n1046), .C0(\geofence_X[4][3] ), .C1(n1047), .Y(n1025) );
  AOI222XL U1641 ( .A0(\geofence_X[2][3] ), .A1(n1048), .B0(\geofence_X[0][3] ), .B1(n1049), .C0(\geofence_X[1][3] ), .C1(n1051), .Y(n1024) );
  NAND2X1 U1642 ( .A(n1025), .B(n1024), .Y(N815) );
  AOI222XL U1643 ( .A0(\geofence_X[5][4] ), .A1(n1045), .B0(\geofence_X[3][4] ), .B1(n1046), .C0(\geofence_X[4][4] ), .C1(n1047), .Y(n1027) );
  AOI222XL U1644 ( .A0(\geofence_X[2][4] ), .A1(n1048), .B0(\geofence_X[0][4] ), .B1(n1049), .C0(\geofence_X[1][4] ), .C1(n1051), .Y(n1026) );
  NAND2X1 U1645 ( .A(n1027), .B(n1026), .Y(N814) );
  AOI222XL U1646 ( .A0(\geofence_X[5][5] ), .A1(n1045), .B0(\geofence_X[3][5] ), .B1(n1046), .C0(\geofence_X[4][5] ), .C1(n1047), .Y(n1029) );
  AOI222XL U1647 ( .A0(\geofence_X[2][5] ), .A1(n1048), .B0(\geofence_X[0][5] ), .B1(n1049), .C0(\geofence_X[1][5] ), .C1(n1051), .Y(n1028) );
  NAND2X1 U1648 ( .A(n1029), .B(n1028), .Y(N813) );
  AOI222XL U1649 ( .A0(\geofence_X[5][6] ), .A1(n1045), .B0(\geofence_X[3][6] ), .B1(n1046), .C0(\geofence_X[4][6] ), .C1(n1047), .Y(n1031) );
  AOI222XL U1650 ( .A0(\geofence_X[2][6] ), .A1(n1048), .B0(\geofence_X[0][6] ), .B1(n1049), .C0(\geofence_X[1][6] ), .C1(n1051), .Y(n1030) );
  NAND2X1 U1651 ( .A(n1031), .B(n1030), .Y(N812) );
  AOI222XL U1652 ( .A0(\geofence_X[5][7] ), .A1(n1045), .B0(\geofence_X[3][7] ), .B1(n1046), .C0(\geofence_X[4][7] ), .C1(n1047), .Y(n1033) );
  AOI222XL U1653 ( .A0(\geofence_X[2][7] ), .A1(n1048), .B0(\geofence_X[0][7] ), .B1(n1049), .C0(\geofence_X[1][7] ), .C1(n1051), .Y(n1032) );
  NAND2X1 U1654 ( .A(n1033), .B(n1032), .Y(N811) );
  AOI222XL U1655 ( .A0(\geofence_X[5][8] ), .A1(n1045), .B0(\geofence_X[3][8] ), .B1(n1046), .C0(\geofence_X[4][8] ), .C1(n1047), .Y(n1035) );
  AOI222XL U1656 ( .A0(\geofence_X[2][8] ), .A1(n1048), .B0(\geofence_X[0][8] ), .B1(n1049), .C0(\geofence_X[1][8] ), .C1(n1051), .Y(n1034) );
  NAND2X1 U1657 ( .A(n1035), .B(n1034), .Y(N810) );
  AOI222XL U1658 ( .A0(\geofence_X[5][9] ), .A1(n1045), .B0(\geofence_X[3][9] ), .B1(n1046), .C0(\geofence_X[4][9] ), .C1(n1047), .Y(n1043) );
  AOI222XL U1659 ( .A0(\geofence_X[2][9] ), .A1(n1048), .B0(\geofence_X[0][9] ), .B1(n1049), .C0(\geofence_X[1][9] ), .C1(n1051), .Y(n1042) );
  NAND2X1 U1660 ( .A(n1043), .B(n1042), .Y(N809) );
  NOR2X1 U1661 ( .A(n1243), .B(counter_B[2]), .Y(n1054) );
  AOI222XL U1662 ( .A0(\geofence_Y[5][0] ), .A1(n1101), .B0(\geofence_Y[3][0] ), .B1(n1102), .C0(\geofence_Y[4][0] ), .C1(n1103), .Y(n1056) );
  NOR2X1 U1663 ( .A(counter_B[2]), .B(counter_B[0]), .Y(n1053) );
  AOI222XL U1664 ( .A0(\geofence_Y[2][0] ), .A1(n1104), .B0(\geofence_Y[0][0] ), .B1(n1105), .C0(\geofence_Y[1][0] ), .C1(n1107), .Y(n1055) );
  NAND2X1 U1665 ( .A(n1056), .B(n1055), .Y(N899) );
  AOI222XL U1666 ( .A0(\geofence_Y[5][1] ), .A1(n1101), .B0(\geofence_Y[3][1] ), .B1(n1102), .C0(\geofence_Y[4][1] ), .C1(n1093), .Y(n1058) );
  AOI222XL U1667 ( .A0(\geofence_Y[2][1] ), .A1(n1104), .B0(\geofence_Y[0][1] ), .B1(n1105), .C0(\geofence_Y[1][1] ), .C1(n1107), .Y(n1057) );
  NAND2X1 U1668 ( .A(n1058), .B(n1057), .Y(N898) );
  AOI222XL U1669 ( .A0(\geofence_Y[5][2] ), .A1(n1101), .B0(\geofence_Y[3][2] ), .B1(n1102), .C0(\geofence_Y[4][2] ), .C1(n1103), .Y(n1060) );
  AOI222XL U1670 ( .A0(\geofence_Y[2][2] ), .A1(n1104), .B0(\geofence_Y[0][2] ), .B1(n1105), .C0(\geofence_Y[1][2] ), .C1(n1107), .Y(n1059) );
  NAND2X1 U1671 ( .A(n1060), .B(n1059), .Y(N897) );
  AOI222XL U1672 ( .A0(\geofence_Y[5][3] ), .A1(n1101), .B0(\geofence_Y[3][3] ), .B1(n1102), .C0(\geofence_Y[4][3] ), .C1(n1093), .Y(n1062) );
  AOI222XL U1673 ( .A0(\geofence_Y[2][3] ), .A1(n1104), .B0(\geofence_Y[0][3] ), .B1(n1105), .C0(\geofence_Y[1][3] ), .C1(n1107), .Y(n1061) );
  NAND2X1 U1674 ( .A(n1062), .B(n1061), .Y(N896) );
  AOI222XL U1675 ( .A0(\geofence_Y[5][4] ), .A1(n1101), .B0(\geofence_Y[3][4] ), .B1(n1102), .C0(\geofence_Y[4][4] ), .C1(n1103), .Y(n1064) );
  AOI222XL U1676 ( .A0(\geofence_Y[2][4] ), .A1(n1104), .B0(\geofence_Y[0][4] ), .B1(n1105), .C0(\geofence_Y[1][4] ), .C1(n1107), .Y(n1063) );
  NAND2X1 U1677 ( .A(n1064), .B(n1063), .Y(N895) );
  AOI222XL U1678 ( .A0(\geofence_Y[5][5] ), .A1(n1101), .B0(\geofence_Y[3][5] ), .B1(n1102), .C0(\geofence_Y[4][5] ), .C1(n1093), .Y(n1066) );
  AOI222XL U1679 ( .A0(\geofence_Y[2][5] ), .A1(n1104), .B0(\geofence_Y[0][5] ), .B1(n1105), .C0(\geofence_Y[1][5] ), .C1(n1107), .Y(n1065) );
  NAND2X1 U1680 ( .A(n1066), .B(n1065), .Y(N894) );
  AOI222XL U1681 ( .A0(\geofence_Y[5][6] ), .A1(n1101), .B0(\geofence_Y[3][6] ), .B1(n1102), .C0(\geofence_Y[4][6] ), .C1(n1103), .Y(n1068) );
  AOI222XL U1682 ( .A0(\geofence_Y[2][6] ), .A1(n1104), .B0(\geofence_Y[0][6] ), .B1(n1105), .C0(\geofence_Y[1][6] ), .C1(n1107), .Y(n1067) );
  NAND2X1 U1683 ( .A(n1068), .B(n1067), .Y(N893) );
  AOI222XL U1684 ( .A0(\geofence_Y[5][7] ), .A1(n1101), .B0(\geofence_Y[3][7] ), .B1(n1102), .C0(\geofence_Y[4][7] ), .C1(n1093), .Y(n1070) );
  AOI222XL U1685 ( .A0(\geofence_Y[2][7] ), .A1(n1104), .B0(\geofence_Y[0][7] ), .B1(n1105), .C0(\geofence_Y[1][7] ), .C1(n1107), .Y(n1069) );
  NAND2X1 U1686 ( .A(n1070), .B(n1069), .Y(N892) );
  AOI222XL U1687 ( .A0(\geofence_Y[5][8] ), .A1(n1101), .B0(\geofence_Y[3][8] ), .B1(n1102), .C0(\geofence_Y[4][8] ), .C1(n1103), .Y(n1072) );
  AOI222XL U1688 ( .A0(\geofence_Y[2][8] ), .A1(n1104), .B0(\geofence_Y[0][8] ), .B1(n1105), .C0(\geofence_Y[1][8] ), .C1(n1107), .Y(n1071) );
  NAND2X1 U1689 ( .A(n1072), .B(n1071), .Y(N891) );
  AOI222XL U1690 ( .A0(\geofence_Y[5][9] ), .A1(n1101), .B0(\geofence_Y[3][9] ), .B1(n1102), .C0(\geofence_Y[4][9] ), .C1(n1093), .Y(n1074) );
  AOI222XL U1691 ( .A0(\geofence_Y[2][9] ), .A1(n1104), .B0(\geofence_Y[0][9] ), .B1(n1105), .C0(\geofence_Y[1][9] ), .C1(n1107), .Y(n1073) );
  NAND2X1 U1692 ( .A(n1074), .B(n1073), .Y(N890) );
  AOI222XL U1693 ( .A0(\geofence_X[5][0] ), .A1(n1101), .B0(\geofence_X[3][0] ), .B1(n1102), .C0(\geofence_X[4][0] ), .C1(n1103), .Y(n1076) );
  AOI222XL U1694 ( .A0(\geofence_X[2][0] ), .A1(n1104), .B0(\geofence_X[0][0] ), .B1(n1105), .C0(\geofence_X[1][0] ), .C1(n1107), .Y(n1075) );
  NAND2X1 U1695 ( .A(n1076), .B(n1075), .Y(N872) );
  AOI222XL U1696 ( .A0(\geofence_X[5][1] ), .A1(n1101), .B0(\geofence_X[3][1] ), .B1(n1102), .C0(\geofence_X[4][1] ), .C1(n1093), .Y(n1078) );
  AOI222XL U1697 ( .A0(\geofence_X[2][1] ), .A1(n1104), .B0(\geofence_X[0][1] ), .B1(n1105), .C0(\geofence_X[1][1] ), .C1(n1107), .Y(n1077) );
  NAND2X1 U1698 ( .A(n1078), .B(n1077), .Y(N871) );
  AOI222XL U1699 ( .A0(\geofence_X[5][2] ), .A1(n1101), .B0(\geofence_X[3][2] ), .B1(n1102), .C0(\geofence_X[4][2] ), .C1(n1103), .Y(n1080) );
  AOI222XL U1700 ( .A0(\geofence_X[2][2] ), .A1(n1104), .B0(\geofence_X[0][2] ), .B1(n1105), .C0(\geofence_X[1][2] ), .C1(n1107), .Y(n1079) );
  NAND2X1 U1701 ( .A(n1080), .B(n1079), .Y(N870) );
  AOI222XL U1702 ( .A0(\geofence_X[5][3] ), .A1(n1101), .B0(\geofence_X[3][3] ), .B1(n1102), .C0(\geofence_X[4][3] ), .C1(n1093), .Y(n1082) );
  AOI222XL U1703 ( .A0(\geofence_X[2][3] ), .A1(n1104), .B0(\geofence_X[0][3] ), .B1(n1105), .C0(\geofence_X[1][3] ), .C1(n1107), .Y(n1081) );
  NAND2X1 U1704 ( .A(n1082), .B(n1081), .Y(N869) );
  AOI222XL U1705 ( .A0(\geofence_X[5][4] ), .A1(n1101), .B0(\geofence_X[3][4] ), .B1(n1102), .C0(\geofence_X[4][4] ), .C1(n1103), .Y(n1084) );
  AOI222XL U1706 ( .A0(\geofence_X[2][4] ), .A1(n1104), .B0(\geofence_X[0][4] ), .B1(n1105), .C0(\geofence_X[1][4] ), .C1(n1107), .Y(n1083) );
  NAND2X1 U1707 ( .A(n1084), .B(n1083), .Y(N868) );
  AOI222XL U1708 ( .A0(\geofence_X[5][5] ), .A1(n1101), .B0(\geofence_X[3][5] ), .B1(n1102), .C0(\geofence_X[4][5] ), .C1(n1093), .Y(n1086) );
  AOI222XL U1709 ( .A0(\geofence_X[2][5] ), .A1(n1104), .B0(\geofence_X[0][5] ), .B1(n1105), .C0(\geofence_X[1][5] ), .C1(n1107), .Y(n1085) );
  NAND2X1 U1710 ( .A(n1086), .B(n1085), .Y(N867) );
  AOI222XL U1711 ( .A0(\geofence_X[5][6] ), .A1(n1101), .B0(\geofence_X[3][6] ), .B1(n1102), .C0(\geofence_X[4][6] ), .C1(n1103), .Y(n1088) );
  AOI222XL U1712 ( .A0(\geofence_X[2][6] ), .A1(n1104), .B0(\geofence_X[0][6] ), .B1(n1105), .C0(\geofence_X[1][6] ), .C1(n1107), .Y(n1087) );
  NAND2X1 U1713 ( .A(n1088), .B(n1087), .Y(N866) );
  AOI222XL U1714 ( .A0(\geofence_X[5][7] ), .A1(n1101), .B0(\geofence_X[3][7] ), .B1(n1102), .C0(\geofence_X[4][7] ), .C1(n1093), .Y(n1090) );
  AOI222XL U1715 ( .A0(\geofence_X[2][7] ), .A1(n1104), .B0(\geofence_X[0][7] ), .B1(n1105), .C0(\geofence_X[1][7] ), .C1(n1107), .Y(n1089) );
  NAND2X1 U1716 ( .A(n1090), .B(n1089), .Y(N865) );
  AOI222XL U1717 ( .A0(\geofence_X[5][8] ), .A1(n1101), .B0(\geofence_X[3][8] ), .B1(n1102), .C0(\geofence_X[4][8] ), .C1(n1103), .Y(n1092) );
  AOI222XL U1718 ( .A0(\geofence_X[2][8] ), .A1(n1104), .B0(\geofence_X[0][8] ), .B1(n1105), .C0(\geofence_X[1][8] ), .C1(n1107), .Y(n1091) );
  NAND2X1 U1719 ( .A(n1092), .B(n1091), .Y(N864) );
  AOI222XL U1720 ( .A0(\geofence_X[5][9] ), .A1(n1101), .B0(\geofence_X[3][9] ), .B1(n1102), .C0(\geofence_X[4][9] ), .C1(n1093), .Y(n1100) );
  AOI222XL U1721 ( .A0(\geofence_X[2][9] ), .A1(n1104), .B0(\geofence_X[0][9] ), .B1(n1105), .C0(\geofence_X[1][9] ), .C1(n1107), .Y(n1099) );
  NAND2X1 U1722 ( .A(n1100), .B(n1099), .Y(N863) );
endmodule

