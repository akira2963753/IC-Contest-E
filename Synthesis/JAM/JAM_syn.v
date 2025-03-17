/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sun Mar 16 23:38:34 2025
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XNOR2X1 U3 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
  NAND2X1 U4 ( .A(A[8]), .B(n2), .Y(n3) );
  AND2X2 U5 ( .A(A[7]), .B(carry[7]), .Y(n2) );
  XOR2X1 U6 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N104, N105, N106, N110,
         N111, N112, N113, N114, N115, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, change_fin, finish,
         find_fin, N150, N151, N152, N153, \n[0][2] , \n[0][1] , \n[0][0] ,
         \n[1][2] , \n[1][1] , \n[1][0] , \n[2][2] , \n[2][1] , \n[2][0] ,
         \n[3][2] , \n[3][1] , \n[3][0] , \n[4][2] , \n[4][1] , \n[4][0] ,
         \n[5][2] , \n[5][1] , \n[5][0] , \n[6][2] , \n[6][1] , \n[6][0] ,
         \n[7][2] , \n[7][1] , \n[7][0] , N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N200, N201, N223, N224, N225, N231, N232,
         N233, N234, N243, N247, N249, N256, N257, N258, N265, N266, N267,
         N272, N273, N274, N305, N306, N307, N316, N317, N318, N404, N405,
         N406, N407, N408, N409, N468, n75, n76, n77, n78, n103, n121, n122,
         n123, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n370, n371, n372, n373, n374, n375, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681;
  wire   [2:0] state;
  wire   [2:0] next_state;
  wire   [9:0] sum;
  wire   [2:0] c_counter;
  wire   [2:0] mini_max;

  JAM_DW01_add_0 add_59 ( .A(sum), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), 
        .SUM({N166, N165, N164, N163, N162, N161, N160, N159, N158, N157}) );
  DFFQX1 \mini_max_reg[0]  ( .D(n324), .CK(CLK), .Q(mini_max[0]) );
  DFFQX1 \mini_max_reg[1]  ( .D(n323), .CK(CLK), .Q(mini_max[1]) );
  DFFQX1 \mini_max_reg[2]  ( .D(n325), .CK(CLK), .Q(mini_max[2]) );
  DFFTRX1 change_fin_reg ( .D(n643), .RN(n427), .CK(CLK), .Q(change_fin) );
  EDFFTRX1 find_fin_reg ( .RN(n614), .D(1'b1), .E(n251), .CK(CLK), .Q(find_fin) );
  DFFQX1 finish_reg ( .D(N243), .CK(CLK), .Q(finish) );
  DFFQX1 \c_counter_reg[2]  ( .D(N249), .CK(CLK), .Q(c_counter[2]) );
  DFFX1 \cal_counter_reg[3]  ( .D(N153), .CK(CLK), .QN(n78) );
  DFFQX1 \p_counter_reg[1]  ( .D(N224), .CK(CLK), .Q(N96) );
  DFFQX1 \point_reg[2]  ( .D(n326), .CK(CLK), .Q(N106) );
  DFFTRX1 \sum_reg[9]  ( .D(N166), .RN(n636), .CK(CLK), .Q(sum[9]) );
  DFFQX1 \c_counter_reg[0]  ( .D(N247), .CK(CLK), .Q(c_counter[0]) );
  DFFTRX1 \sum_reg[8]  ( .D(N165), .RN(n636), .CK(CLK), .Q(sum[8]), .QN(n374)
         );
  DFFTRX1 \sum_reg[7]  ( .D(N164), .RN(n636), .CK(CLK), .Q(sum[7]) );
  DFFQX1 \point_reg[1]  ( .D(n327), .CK(CLK), .Q(N105) );
  DFFQX1 \point_reg[0]  ( .D(n328), .CK(CLK), .Q(N104) );
  EDFFX1 \n_reg[3][2]  ( .D(n619), .E(n160), .CK(CLK), .Q(\n[3][2] ), .QN(n121) );
  DFFTRX1 \sum_reg[4]  ( .D(N161), .RN(n636), .CK(CLK), .Q(sum[4]), .QN(n375)
         );
  DFFTRX1 \sum_reg[5]  ( .D(N162), .RN(n636), .CK(CLK), .Q(sum[5]), .QN(n370)
         );
  DFFTRX1 \sum_reg[3]  ( .D(N160), .RN(n636), .CK(CLK), .Q(sum[3]) );
  DFFTRX1 \sum_reg[2]  ( .D(N159), .RN(n636), .CK(CLK), .Q(sum[2]) );
  DFFTRX1 \sum_reg[6]  ( .D(N163), .RN(n636), .CK(CLK), .Q(sum[6]) );
  EDFFX1 \n_reg[4][2]  ( .D(n618), .E(n182), .CK(CLK), .Q(\n[4][2] ) );
  EDFFX1 \n_reg[3][1]  ( .D(n621), .E(n160), .CK(CLK), .Q(\n[3][1] ) );
  EDFFX1 \n_reg[3][0]  ( .D(n626), .E(n160), .CK(CLK), .Q(\n[3][0] ), .QN(n122) );
  EDFFX1 \n_reg[4][0]  ( .D(n629), .E(n182), .CK(CLK), .Q(\n[4][0] ) );
  DFFTRX1 \sum_reg[1]  ( .D(N158), .RN(n636), .CK(CLK), .Q(sum[1]), .QN(n373)
         );
  DFFTRX1 \sum_reg[0]  ( .D(N157), .RN(n636), .CK(CLK), .Q(sum[0]) );
  DFFQX1 \cal_counter_reg[1]  ( .D(N151), .CK(CLK), .Q(N93) );
  DFFQX1 \cal_counter_reg[0]  ( .D(N150), .CK(CLK), .Q(N92) );
  DFFTRX1 \c_counter_reg[1]  ( .D(n399), .RN(n427), .CK(CLK), .Q(c_counter[1]), 
        .QN(n103) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n613), .Q(state[1]), 
        .QN(n76) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n613), .Q(state[2]), 
        .QN(n75) );
  DFFQX1 \p_counter_reg[2]  ( .D(N225), .CK(CLK), .Q(N97) );
  DFFQX1 \cal_counter_reg[2]  ( .D(N152), .CK(CLK), .Q(N94) );
  DFFQX1 \MinCost_reg[1]  ( .D(n341), .CK(CLK), .Q(n694) );
  DFFQX1 \MinCost_reg[0]  ( .D(n342), .CK(CLK), .Q(n695) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n331), .CK(CLK), .Q(n685) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n329), .CK(CLK), .Q(n683) );
  DFFQX1 \MinCost_reg[4]  ( .D(n338), .CK(CLK), .Q(n691) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n330), .CK(CLK), .Q(n684) );
  DFFQX1 \MatchCount_reg[3]  ( .D(n332), .CK(CLK), .Q(n682) );
  DFFQX1 \MinCost_reg[8]  ( .D(n334), .CK(CLK), .Q(n687) );
  DFFQX1 \MinCost_reg[3]  ( .D(n339), .CK(CLK), .Q(n692) );
  DFFQX1 \MinCost_reg[5]  ( .D(n337), .CK(CLK), .Q(n690) );
  DFFQX1 \MinCost_reg[9]  ( .D(n333), .CK(CLK), .Q(n686) );
  DFFQX1 \MinCost_reg[7]  ( .D(n335), .CK(CLK), .Q(n688) );
  DFFQX1 \MinCost_reg[6]  ( .D(n336), .CK(CLK), .Q(n689) );
  DFFQX1 \MinCost_reg[2]  ( .D(n340), .CK(CLK), .Q(n693) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n613), .Q(state[0]), 
        .QN(n77) );
  DFFX2 \n_reg[6][1]  ( .D(n313), .CK(CLK), .Q(\n[6][1] ), .QN(n675) );
  DFFX2 \n_reg[7][1]  ( .D(n316), .CK(CLK), .Q(\n[7][1] ), .QN(n679) );
  DFFX2 \n_reg[7][2]  ( .D(n315), .CK(CLK), .Q(\n[7][2] ), .QN(n677) );
  DFFX2 \n_reg[5][2]  ( .D(n309), .CK(CLK), .Q(\n[5][2] ), .QN(n678) );
  DFFX2 \n_reg[5][1]  ( .D(n310), .CK(CLK), .Q(\n[5][1] ), .QN(n680) );
  DFFX2 \n_reg[5][0]  ( .D(n311), .CK(CLK), .Q(\n[5][0] ), .QN(n681) );
  DFFX2 \n_reg[6][0]  ( .D(n314), .CK(CLK), .Q(\n[6][0] ), .QN(n676) );
  DFFX2 \n_reg[6][2]  ( .D(n312), .CK(CLK), .Q(\n[6][2] ), .QN(n674) );
  DFFX2 \n_reg[1][2]  ( .D(n306), .CK(CLK), .Q(\n[1][2] ) );
  DFFX2 \n_reg[1][1]  ( .D(n307), .CK(CLK), .Q(\n[1][1] ) );
  DFFX2 \n_reg[1][0]  ( .D(n308), .CK(CLK), .Q(\n[1][0] ) );
  EDFFX2 \n_reg[2][2]  ( .D(n616), .E(n153), .CK(CLK), .Q(\n[2][2] ) );
  EDFFX2 \n_reg[2][0]  ( .D(n625), .E(n153), .CK(CLK), .Q(\n[2][0] ) );
  EDFFX2 \n_reg[2][1]  ( .D(n152), .E(n153), .CK(CLK), .Q(\n[2][1] ) );
  EDFFX2 \n_reg[7][0]  ( .D(n628), .E(n219), .CK(CLK), .Q(\n[7][0] ), .QN(n132) );
  EDFFX2 \n_reg[4][1]  ( .D(n623), .E(n182), .CK(CLK), .Q(\n[4][1] ), .QN(n123) );
  DFFX2 \n_reg[0][0]  ( .D(n317), .CK(CLK), .Q(\n[0][0] ) );
  DFFX2 \n_reg[0][2]  ( .D(n319), .CK(CLK), .Q(\n[0][2] ) );
  DFFX2 \n_reg[0][1]  ( .D(n318), .CK(CLK), .Q(\n[0][1] ) );
  DFFX2 \c_point_reg[2]  ( .D(n320), .CK(CLK), .Q(N115), .QN(n673) );
  DFFX2 \c_point_reg[0]  ( .D(n322), .CK(CLK), .Q(N113), .QN(n668) );
  DFFX2 \c_point_reg[1]  ( .D(n321), .CK(CLK), .Q(N114), .QN(n664) );
  DFFX2 \p_counter_reg[0]  ( .D(N223), .CK(CLK), .Q(N95), .QN(N98) );
  CLKINVX1 U344 ( .A(n694), .Y(n605) );
  CLKINVX1 U345 ( .A(n693), .Y(n606) );
  CLKINVX1 U346 ( .A(n692), .Y(n607) );
  CLKINVX1 U347 ( .A(n689), .Y(n608) );
  CLKINVX1 U348 ( .A(n688), .Y(n609) );
  CLKINVX1 U349 ( .A(n686), .Y(n610) );
  CLKINVX1 U350 ( .A(n685), .Y(n654) );
  CLKINVX1 U351 ( .A(n683), .Y(n655) );
  OAI211X1 U352 ( .A0(state[0]), .A1(n293), .B0(n294), .C0(n426), .Y(
        next_state[0]) );
  CLKINVX2 U353 ( .A(n237), .Y(N111) );
  OA22X1 U354 ( .A0(n653), .A1(n443), .B0(W[2]), .B1(n442), .Y(n371) );
  OA22X1 U355 ( .A0(n653), .A1(n447), .B0(W[2]), .B1(n446), .Y(n372) );
  CLKBUFX3 U356 ( .A(N104), .Y(n437) );
  NOR4BBX1 U357 ( .AN(n274), .BN(n275), .C(MinCost[0]), .D(MinCost[1]), .Y(
        n269) );
  NOR2X2 U358 ( .A(n475), .B(N95), .Y(n471) );
  NOR2X2 U359 ( .A(n664), .B(N113), .Y(n579) );
  NAND3XL U360 ( .A(N113), .B(n673), .C(N114), .Y(n164) );
  INVX12 U361 ( .A(n606), .Y(MinCost[2]) );
  INVX12 U362 ( .A(n608), .Y(MinCost[6]) );
  INVX12 U363 ( .A(n609), .Y(MinCost[7]) );
  INVX12 U364 ( .A(n610), .Y(MinCost[9]) );
  BUFX12 U365 ( .A(n690), .Y(MinCost[5]) );
  INVX12 U366 ( .A(n607), .Y(MinCost[3]) );
  OAI22X1 U367 ( .A0(n531), .A1(n521), .B0(n439), .B1(n520), .Y(N317) );
  BUFX16 U368 ( .A(n687), .Y(MinCost[8]) );
  NOR2X1 U369 ( .A(n78), .B(N94), .Y(n273) );
  OAI22X1 U370 ( .A0(n529), .A1(n531), .B0(n439), .B1(n528), .Y(N316) );
  BUFX16 U371 ( .A(n682), .Y(MatchCount[3]) );
  AO21XL U372 ( .A0(n395), .A1(MatchCount[3]), .B0(n396), .Y(n332) );
  BUFX16 U373 ( .A(n684), .Y(MatchCount[1]) );
  BUFX12 U374 ( .A(n691), .Y(MinCost[4]) );
  BUFX12 U375 ( .A(N468), .Y(Valid) );
  NOR3X1 U376 ( .A(n75), .B(state[0]), .C(n76), .Y(N468) );
  INVX12 U377 ( .A(n655), .Y(MatchCount[2]) );
  INVX12 U378 ( .A(n654), .Y(MatchCount[0]) );
  BUFX16 U379 ( .A(n695), .Y(MinCost[0]) );
  INVX16 U380 ( .A(n605), .Y(MinCost[1]) );
  INVX16 U381 ( .A(n653), .Y(W[2]) );
  INVX3 U382 ( .A(N94), .Y(n653) );
  OAI22X2 U383 ( .A0(n531), .A1(n517), .B0(n439), .B1(n516), .Y(N318) );
  AOI211X1 U384 ( .A0(n265), .A1(N201), .B0(n638), .C0(n637), .Y(n263) );
  NOR2BXL U385 ( .AN(sum[3]), .B(n692), .Y(n602) );
  NOR2XL U386 ( .A(n375), .B(n691), .Y(n601) );
  NOR2BXL U387 ( .AN(MinCost[0]), .B(sum[0]), .Y(n588) );
  NOR2XL U388 ( .A(n374), .B(MinCost[8]), .Y(n586) );
  NOR2XL U389 ( .A(n370), .B(n690), .Y(n593) );
  NOR2BXL U390 ( .AN(sum[0]), .B(MinCost[0]), .Y(n583) );
  NAND2XL U391 ( .A(MatchCount[1]), .B(n685), .Y(n259) );
  OAI21X1 U392 ( .A0(n254), .A1(n253), .B0(n426), .Y(n251) );
  CLKINVX1 U393 ( .A(N106), .Y(n649) );
  NOR3X1 U394 ( .A(n437), .B(n439), .C(n530), .Y(n159) );
  CLKINVX1 U395 ( .A(n164), .Y(n666) );
  AO21XL U396 ( .A0(n373), .A1(n588), .B0(n694), .Y(n587) );
  OA22X1 U397 ( .A0(n455), .A1(n653), .B0(W[2]), .B1(n454), .Y(n392) );
  INVXL U398 ( .A(N200), .Y(n652) );
  NOR4XL U399 ( .A(n259), .B(n655), .C(n258), .D(MatchCount[3]), .Y(n396) );
  XOR2X1 U400 ( .A(n304), .B(n305), .Y(n237) );
  NAND3X1 U401 ( .A(state[0]), .B(n76), .C(state[2]), .Y(n141) );
  NAND3X1 U402 ( .A(n77), .B(n75), .C(state[1]), .Y(n296) );
  CLKBUFX3 U403 ( .A(n170), .Y(n426) );
  XOR2X1 U404 ( .A(N97), .B(n290), .Y(N100) );
  NAND3X1 U405 ( .A(N114), .B(n668), .C(N115), .Y(n210) );
  NAND3X1 U406 ( .A(n664), .B(n673), .C(N113), .Y(n136) );
  NOR2X1 U407 ( .A(sum[9]), .B(n610), .Y(n393) );
  NOR2X1 U408 ( .A(n611), .B(n598), .Y(n394) );
  OR2X1 U409 ( .A(n393), .B(n394), .Y(N201) );
  AOI32XL U410 ( .A0(n597), .A1(n612), .A2(n596), .B0(MinCost[8]), .B1(n374), 
        .Y(n598) );
  NAND3BXL U411 ( .AN(N201), .B(n600), .C(n599), .Y(n603) );
  CLKINVX1 U412 ( .A(n191), .Y(n634) );
  NOR2BX1 U413 ( .AN(n145), .B(n640), .Y(n158) );
  INVX3 U414 ( .A(n150), .Y(n640) );
  CLKINVX1 U415 ( .A(n197), .Y(n648) );
  CLKINVX1 U416 ( .A(n171), .Y(n639) );
  NOR2X2 U417 ( .A(n268), .B(n428), .Y(n271) );
  CLKINVX1 U418 ( .A(n258), .Y(n637) );
  CLKINVX1 U419 ( .A(n142), .Y(n627) );
  NAND2X1 U420 ( .A(n427), .B(n429), .Y(n236) );
  NAND2X1 U421 ( .A(n614), .B(n251), .Y(n252) );
  OAI22XL U422 ( .A0(n649), .A1(n251), .B0(n494), .B1(n252), .Y(n326) );
  OAI22XL U423 ( .A0(n418), .A1(n251), .B0(n493), .B1(n252), .Y(n327) );
  CLKINVX1 U424 ( .A(n246), .Y(n645) );
  CLKINVX1 U425 ( .A(N111), .Y(n512) );
  CLKINVX1 U426 ( .A(n424), .Y(n511) );
  CLKINVX1 U427 ( .A(n424), .Y(n548) );
  OAI211X1 U428 ( .A0(n205), .A1(n430), .B0(n181), .C0(n206), .Y(n191) );
  NOR2X1 U429 ( .A(n207), .B(n662), .Y(n205) );
  OAI211X1 U430 ( .A0(n176), .A1(n430), .B0(n171), .C0(n158), .Y(n160) );
  NOR2X1 U431 ( .A(n647), .B(n666), .Y(n176) );
  OA21X2 U432 ( .A0(n143), .A1(n430), .B0(n145), .Y(n133) );
  NOR2X1 U433 ( .A(n146), .B(n660), .Y(n143) );
  CLKINVX1 U434 ( .A(n208), .Y(n633) );
  OAI21X1 U435 ( .A0(n157), .A1(n430), .B0(n158), .Y(n153) );
  NOR2X1 U436 ( .A(n159), .B(n667), .Y(n157) );
  CLKINVX1 U437 ( .A(n219), .Y(n632) );
  NOR3X1 U438 ( .A(n530), .B(n430), .C(n649), .Y(n217) );
  CLKINVX1 U439 ( .A(n185), .Y(n622) );
  CLKINVX1 U440 ( .A(n253), .Y(n614) );
  CLKINVX1 U441 ( .A(n169), .Y(n624) );
  CLKINVX1 U442 ( .A(n163), .Y(n617) );
  CLKINVX1 U443 ( .A(n175), .Y(n630) );
  CLKINVX1 U444 ( .A(n165), .Y(n620) );
  NOR2X1 U445 ( .A(n430), .B(n228), .Y(n229) );
  CLKINVX1 U446 ( .A(n427), .Y(n615) );
  INVX3 U447 ( .A(n430), .Y(n631) );
  NAND2X2 U448 ( .A(n146), .B(n641), .Y(n150) );
  NAND2X1 U449 ( .A(n641), .B(n648), .Y(n151) );
  NAND3X1 U450 ( .A(n418), .B(n649), .C(n651), .Y(n197) );
  NOR2BX1 U451 ( .AN(n151), .B(n638), .Y(n145) );
  NAND2X1 U452 ( .A(n614), .B(n494), .Y(N225) );
  NAND2X1 U453 ( .A(n614), .B(n493), .Y(N224) );
  NAND2X1 U454 ( .A(n159), .B(n641), .Y(n171) );
  NAND2X1 U455 ( .A(n647), .B(n641), .Y(n181) );
  CLKINVX1 U456 ( .A(n231), .Y(n663) );
  CLKINVX1 U457 ( .A(n198), .Y(n647) );
  NAND2BX1 U458 ( .AN(n207), .B(n188), .Y(n218) );
  NOR2X1 U459 ( .A(n159), .B(n647), .Y(n188) );
  CLKINVX1 U460 ( .A(n196), .Y(n650) );
  NAND2X1 U461 ( .A(N200), .B(n265), .Y(n258) );
  AOI21X1 U462 ( .A0(n259), .A1(n637), .B0(n263), .Y(n260) );
  CLKINVX1 U463 ( .A(W[1]), .Y(n456) );
  CLKBUFX3 U464 ( .A(n270), .Y(n428) );
  AOI2BB1X1 U465 ( .A0N(n272), .A1N(n268), .B0(n638), .Y(n270) );
  NOR2XL U466 ( .A(n269), .B(N201), .Y(n272) );
  CLKINVX1 U467 ( .A(n419), .Y(n457) );
  NAND2X1 U468 ( .A(N318), .B(n631), .Y(n142) );
  OAI31XL U469 ( .A0(n245), .A1(N318), .A2(n246), .B0(n247), .Y(n244) );
  OAI21XL U470 ( .A0(N257), .A1(n644), .B0(N258), .Y(n245) );
  AOI32X1 U471 ( .A0(n645), .A1(n644), .A2(N257), .B0(N256), .B1(n646), .Y(
        n247) );
  INVXL U472 ( .A(N318), .Y(n642) );
  CLKINVX1 U473 ( .A(n225), .Y(n628) );
  AOI211X1 U474 ( .A0(n630), .A1(n221), .B0(n226), .C0(n638), .Y(n225) );
  OAI2BB2XL U475 ( .B0(n221), .B1(n142), .A0N(N404), .A1N(n641), .Y(n226) );
  OAI22XL U476 ( .A0(n664), .A1(n429), .B0(n237), .B1(n236), .Y(n321) );
  OAI22XL U477 ( .A0(n673), .A1(n429), .B0(n549), .B1(n236), .Y(n320) );
  OAI22XL U478 ( .A0(n668), .A1(n429), .B0(n511), .B1(n236), .Y(n322) );
  CLKINVX1 U479 ( .A(n277), .Y(n643) );
  AOI33X1 U480 ( .A0(n278), .A1(n279), .A2(n280), .B0(n424), .B1(N111), .B2(
        n425), .Y(n277) );
  XOR2X1 U481 ( .A(n282), .B(n283), .Y(n279) );
  CLKBUFX3 U482 ( .A(n235), .Y(n429) );
  NAND2X1 U483 ( .A(n426), .B(n242), .Y(n235) );
  NAND3X1 U484 ( .A(n243), .B(n244), .C(n427), .Y(n242) );
  OAI21XL U485 ( .A0(N265), .A1(n671), .B0(n248), .Y(n243) );
  CLKINVX1 U486 ( .A(n438), .Y(n530) );
  NAND2X1 U487 ( .A(N316), .B(n631), .Y(n163) );
  INVX1 U488 ( .A(N317), .Y(n644) );
  NAND2XL U489 ( .A(N318), .B(N317), .Y(n282) );
  INVX1 U490 ( .A(N316), .Y(n646) );
  AOI2BB2XL U491 ( .B0(n255), .B1(n256), .A0N(n398), .A1N(N232), .Y(n254) );
  NAND2X1 U492 ( .A(n398), .B(N232), .Y(n255) );
  INVX3 U493 ( .A(n437), .Y(n651) );
  NOR2X1 U494 ( .A(n646), .B(N256), .Y(n246) );
  OAI2BB2XL U495 ( .B0(n249), .B1(n250), .A0N(n671), .A1N(N265), .Y(n248) );
  NOR2XL U496 ( .A(N266), .B(n669), .Y(n250) );
  AOI22X1 U497 ( .A0(N267), .A1(n670), .B0(N266), .B1(n669), .Y(n249) );
  CLKINVX1 U498 ( .A(N99), .Y(n493) );
  CLKINVX1 U499 ( .A(n439), .Y(n531) );
  CLKBUFX3 U500 ( .A(N110), .Y(n424) );
  XNOR2X1 U501 ( .A(n656), .B(n437), .Y(N110) );
  OAI211X1 U502 ( .A0(n430), .A1(n210), .B0(n158), .C0(n216), .Y(n208) );
  AOI22X1 U503 ( .A0(n217), .A1(n651), .B0(n641), .B1(n218), .Y(n216) );
  OAI211X1 U504 ( .A0(n430), .A1(n221), .B0(n206), .C0(n227), .Y(n219) );
  AOI22X1 U505 ( .A0(n217), .A1(n437), .B0(n641), .B1(n218), .Y(n227) );
  NAND2XL U506 ( .A(N317), .B(n631), .Y(n185) );
  NAND2X1 U507 ( .A(N307), .B(n631), .Y(n175) );
  NAND2X1 U508 ( .A(N305), .B(n631), .Y(n165) );
  NAND2X1 U509 ( .A(N306), .B(n631), .Y(n169) );
  INVXL U510 ( .A(N306), .Y(n658) );
  INVXL U511 ( .A(N305), .Y(n659) );
  INVXL U512 ( .A(N307), .Y(n657) );
  OAI221XL U513 ( .A0(n151), .A1(n675), .B0(n679), .B1(n150), .C0(n154), .Y(
        n152) );
  AOI221XL U514 ( .A0(n622), .A1(n667), .B0(n624), .B1(n148), .C0(n638), .Y(
        n154) );
  NAND2X1 U515 ( .A(next_state[0]), .B(next_state[1]), .Y(n253) );
  NAND3BX1 U516 ( .AN(W[1]), .B(n273), .C(N150), .Y(n268) );
  NOR2X1 U517 ( .A(n268), .B(n269), .Y(n265) );
  OAI22XL U518 ( .A0(n679), .A1(n219), .B0(n632), .B1(n223), .Y(n316) );
  AOI211X1 U519 ( .A0(n624), .A1(n221), .B0(n224), .C0(n638), .Y(n223) );
  OAI2BB2XL U520 ( .B0(n221), .B1(n185), .A0N(N405), .A1N(n641), .Y(n224) );
  OAI22XL U521 ( .A0(n677), .A1(n219), .B0(n632), .B1(n220), .Y(n315) );
  AOI211X1 U522 ( .A0(n620), .A1(n221), .B0(n222), .C0(n638), .Y(n220) );
  OAI2BB2XL U523 ( .B0(n221), .B1(n163), .A0N(N406), .A1N(n641), .Y(n222) );
  OA21X2 U524 ( .A0(n234), .A1(n430), .B0(n426), .Y(n228) );
  NOR2X1 U525 ( .A(n648), .B(n663), .Y(n234) );
  OAI211X1 U526 ( .A0(n188), .A1(n141), .B0(n189), .C0(n190), .Y(n182) );
  NOR2X1 U527 ( .A(n640), .B(n638), .Y(n190) );
  OAI21XL U528 ( .A0(n650), .A1(n661), .B0(n631), .Y(n189) );
  CLKBUFX3 U529 ( .A(n144), .Y(n430) );
  NAND2X1 U530 ( .A(next_state[0]), .B(next_state[2]), .Y(n144) );
  CLKINVX1 U531 ( .A(n147), .Y(n616) );
  AOI221XL U532 ( .A0(n620), .A1(n148), .B0(n667), .B1(n617), .C0(n149), .Y(
        n147) );
  OAI22XL U533 ( .A0(n677), .A1(n150), .B0(n151), .B1(n674), .Y(n149) );
  CLKINVX1 U534 ( .A(n166), .Y(n621) );
  AOI211X1 U535 ( .A0(n666), .A1(n622), .B0(n167), .C0(n168), .Y(n166) );
  OAI222XL U536 ( .A0(n679), .A1(n171), .B0(n151), .B1(n680), .C0(n150), .C1(
        n675), .Y(n167) );
  OAI21XL U537 ( .A0(n666), .A1(n169), .B0(n426), .Y(n168) );
  CLKINVX1 U538 ( .A(n425), .Y(n549) );
  CLKINVX1 U539 ( .A(n425), .Y(n513) );
  CLKBUFX3 U540 ( .A(n238), .Y(n427) );
  NOR3BXL U541 ( .AN(next_state[2]), .B(next_state[0]), .C(next_state[1]), .Y(
        n238) );
  CLKINVX1 U542 ( .A(N98), .Y(n492) );
  NOR3X1 U543 ( .A(n438), .B(n439), .C(n651), .Y(n146) );
  INVX3 U544 ( .A(n141), .Y(n641) );
  CLKINVX1 U545 ( .A(N100), .Y(n494) );
  OA21XL U546 ( .A0(n141), .A1(n196), .B0(n158), .Y(n206) );
  NAND3X1 U547 ( .A(n664), .B(n673), .C(n668), .Y(n231) );
  NOR3X1 U548 ( .A(n651), .B(n438), .C(n649), .Y(n207) );
  NOR2X1 U549 ( .A(n296), .B(W[0]), .Y(N150) );
  NAND3X1 U550 ( .A(n651), .B(n530), .C(n439), .Y(n196) );
  CLKINVX1 U551 ( .A(n148), .Y(n667) );
  NAND3X1 U552 ( .A(n437), .B(n649), .C(n438), .Y(n198) );
  CLKINVX1 U553 ( .A(n195), .Y(n662) );
  CLKINVX1 U554 ( .A(n136), .Y(n660) );
  CLKINVX1 U555 ( .A(n180), .Y(n661) );
  CLKINVX1 U556 ( .A(n438), .Y(n418) );
  CLKINVX1 U557 ( .A(n210), .Y(n665) );
  INVX3 U558 ( .A(n426), .Y(n638) );
  AOI2BB1X1 U559 ( .A0N(W[1]), .A1N(n296), .B0(N150), .Y(n297) );
  NAND3X1 U560 ( .A(n419), .B(n636), .C(W[1]), .Y(n299) );
  INVX3 U561 ( .A(n296), .Y(n636) );
  NOR2X1 U562 ( .A(n300), .B(n296), .Y(N151) );
  XOR2X1 U563 ( .A(n457), .B(W[1]), .Y(n300) );
  INVX12 U564 ( .A(n371), .Y(J[0]) );
  INVX12 U565 ( .A(n372), .Y(J[1]) );
  CLKINVX1 U566 ( .A(n600), .Y(n611) );
  CLKINVX1 U567 ( .A(n586), .Y(n612) );
  OAI32XL U568 ( .A0(n258), .A1(n683), .A2(n259), .B0(n260), .B1(n655), .Y(
        n329) );
  NOR2XL U569 ( .A(n258), .B(n685), .Y(n262) );
  OAI31XL U570 ( .A0(n258), .A1(MatchCount[1]), .A2(n654), .B0(n261), .Y(n330)
         );
  OAI21XL U571 ( .A0(n262), .A1(n263), .B0(MatchCount[1]), .Y(n261) );
  BUFX16 U572 ( .A(N93), .Y(W[1]) );
  BUFX16 U573 ( .A(N92), .Y(W[0]) );
  NAND3BX1 U574 ( .AN(n262), .B(n426), .C(n264), .Y(n331) );
  AOI32XL U575 ( .A0(n265), .A1(n652), .A2(N201), .B0(n263), .B1(n685), .Y(
        n264) );
  OAI21XL U576 ( .A0(n683), .A1(n258), .B0(n260), .Y(n395) );
  INVX12 U577 ( .A(n392), .Y(J[2]) );
  AO22X1 U578 ( .A0(n428), .A1(MinCost[3]), .B0(sum[3]), .B1(n271), .Y(n339)
         );
  AO22X1 U579 ( .A0(n428), .A1(MinCost[8]), .B0(sum[8]), .B1(n271), .Y(n334)
         );
  AO22X1 U580 ( .A0(n428), .A1(MinCost[1]), .B0(sum[1]), .B1(n271), .Y(n341)
         );
  AO22X1 U581 ( .A0(n428), .A1(MinCost[4]), .B0(sum[4]), .B1(n271), .Y(n338)
         );
  AO22X1 U582 ( .A0(n428), .A1(MinCost[9]), .B0(sum[9]), .B1(n271), .Y(n333)
         );
  AO22X1 U583 ( .A0(n428), .A1(MinCost[7]), .B0(sum[7]), .B1(n271), .Y(n335)
         );
  AO22X1 U584 ( .A0(n428), .A1(MinCost[2]), .B0(sum[2]), .B1(n271), .Y(n340)
         );
  AO22X1 U585 ( .A0(n428), .A1(MinCost[0]), .B0(sum[0]), .B1(n271), .Y(n342)
         );
  AO22X1 U586 ( .A0(n428), .A1(MinCost[5]), .B0(sum[5]), .B1(n271), .Y(n337)
         );
  AO22X1 U587 ( .A0(n428), .A1(MinCost[6]), .B0(sum[6]), .B1(n271), .Y(n336)
         );
  CLKBUFX3 U588 ( .A(N92), .Y(n419) );
  CLKBUFX3 U589 ( .A(\n[3][1] ), .Y(n433) );
  CLKBUFX3 U590 ( .A(\n[3][0] ), .Y(n432) );
  CLKBUFX3 U591 ( .A(\n[4][0] ), .Y(n431) );
  CLKBUFX3 U592 ( .A(\n[4][2] ), .Y(n434) );
  AOI31X1 U593 ( .A0(mini_max[2]), .A1(mini_max[1]), .A2(mini_max[0]), .B0(
        n281), .Y(n280) );
  XOR2XL U594 ( .A(n670), .B(N318), .Y(n281) );
  CLKINVX1 U595 ( .A(n186), .Y(n629) );
  AOI221XL U596 ( .A0(n639), .A1(\n[6][0] ), .B0(\n[5][0] ), .B1(n640), .C0(
        n187), .Y(n186) );
  OAI222XL U597 ( .A0(n661), .A1(n175), .B0(n132), .B1(n181), .C0(n142), .C1(
        n180), .Y(n187) );
  XOR2X1 U598 ( .A(n644), .B(n284), .Y(n278) );
  XOR2XL U599 ( .A(mini_max[1]), .B(N318), .Y(n284) );
  OAI2BB2XL U600 ( .B0(n133), .B1(n139), .A0N(\n[1][0] ), .A1N(n133), .Y(n308)
         );
  AOI211X1 U601 ( .A0(n630), .A1(n136), .B0(n140), .C0(n638), .Y(n139) );
  OAI22XL U602 ( .A0(n141), .A1(n132), .B0(n136), .B1(n142), .Y(n140) );
  OAI211X1 U603 ( .A0(n671), .A1(n429), .B0(n241), .C0(n427), .Y(n325) );
  NAND2X1 U604 ( .A(N272), .B(n429), .Y(n241) );
  OAI211X1 U605 ( .A0(n669), .A1(n429), .B0(n239), .C0(n427), .Y(n323) );
  NAND2X1 U606 ( .A(N273), .B(n429), .Y(n239) );
  OAI211X1 U607 ( .A0(n429), .A1(n670), .B0(n240), .C0(n427), .Y(n324) );
  NAND2X1 U608 ( .A(N274), .B(n429), .Y(n240) );
  OAI22XL U609 ( .A0(n681), .A1(n191), .B0(n634), .B1(n202), .Y(n311) );
  AOI221XL U610 ( .A0(n641), .A1(n203), .B0(n431), .B1(n640), .C0(n204), .Y(
        n202) );
  OAI222XL U611 ( .A0(n132), .A1(n196), .B0(n197), .B1(n122), .C0(n676), .C1(
        n198), .Y(n203) );
  OAI221XL U612 ( .A0(n662), .A1(n175), .B0(n142), .B1(n195), .C0(n426), .Y(
        n204) );
  OAI22XL U613 ( .A0(n676), .A1(n208), .B0(n633), .B1(n214), .Y(n314) );
  AOI22X1 U614 ( .A0(n631), .A1(n215), .B0(N407), .B1(n641), .Y(n214) );
  OAI22XL U615 ( .A0(n642), .A1(n210), .B0(n665), .B1(n657), .Y(n215) );
  CLKBUFX3 U616 ( .A(N105), .Y(n438) );
  CLKINVX1 U617 ( .A(n155), .Y(n625) );
  AOI221XL U618 ( .A0(n630), .A1(n148), .B0(n667), .B1(n627), .C0(n156), .Y(
        n155) );
  OAI22XL U619 ( .A0(n132), .A1(n150), .B0(n151), .B1(n676), .Y(n156) );
  CLKINVX1 U620 ( .A(n172), .Y(n626) );
  AOI211X1 U621 ( .A0(n666), .A1(n627), .B0(n173), .C0(n174), .Y(n172) );
  OAI222XL U622 ( .A0(n132), .A1(n171), .B0(n151), .B1(n681), .C0(n150), .C1(
        n676), .Y(n173) );
  OAI21XL U623 ( .A0(n666), .A1(n175), .B0(n426), .Y(n174) );
  AO22X1 U624 ( .A0(\n[0][0] ), .A1(n228), .B0(n229), .B1(n230), .Y(n317) );
  OAI22XL U625 ( .A0(n642), .A1(n231), .B0(n663), .B1(n657), .Y(n230) );
  CLKBUFX3 U626 ( .A(\n[3][2] ), .Y(n435) );
  AO21X1 U627 ( .A0(n438), .A1(c_counter[1]), .B0(n303), .Y(n304) );
  NOR2X1 U628 ( .A(n651), .B(n656), .Y(n305) );
  OAI22XL U629 ( .A0(n678), .A1(n191), .B0(n634), .B1(n192), .Y(n309) );
  AOI221XL U630 ( .A0(n641), .A1(n193), .B0(n434), .B1(n640), .C0(n194), .Y(
        n192) );
  OAI222XL U631 ( .A0(n677), .A1(n196), .B0(n197), .B1(n121), .C0(n674), .C1(
        n198), .Y(n193) );
  OAI221XL U632 ( .A0(n662), .A1(n165), .B0(n163), .B1(n195), .C0(n426), .Y(
        n194) );
  OAI2BB2XL U633 ( .B0(N233), .B1(n397), .A0N(n257), .A1N(N231), .Y(n256) );
  AOI21X1 U634 ( .A0(N233), .A1(n397), .B0(N234), .Y(n257) );
  AO21X1 U635 ( .A0(N95), .A1(N96), .B0(n290), .Y(N99) );
  OAI22XL U636 ( .A0(n651), .A1(n251), .B0(N95), .B1(n252), .Y(n328) );
  NOR2X1 U637 ( .A(N95), .B(N96), .Y(n290) );
  CLKINVX1 U638 ( .A(c_counter[0]), .Y(n656) );
  NOR2X1 U639 ( .A(n438), .B(c_counter[1]), .Y(n303) );
  CLKINVX1 U640 ( .A(n161), .Y(n619) );
  AOI221XL U641 ( .A0(n639), .A1(\n[7][2] ), .B0(n640), .B1(\n[6][2] ), .C0(
        n162), .Y(n161) );
  OAI222XL U642 ( .A0(n163), .A1(n164), .B0(n666), .B1(n165), .C0(n151), .C1(
        n678), .Y(n162) );
  OA22X1 U643 ( .A0(n474), .A1(n465), .B0(N97), .B1(n464), .Y(n397) );
  OA22X1 U644 ( .A0(n473), .A1(n474), .B0(N97), .B1(n472), .Y(n398) );
  OR3X2 U645 ( .A(finish), .B(find_fin), .C(n289), .Y(n294) );
  AOI32X1 U646 ( .A0(n273), .A1(n457), .A2(n295), .B0(change_fin), .B1(n76), 
        .Y(n293) );
  NOR2X1 U647 ( .A(state[2]), .B(W[1]), .Y(n295) );
  NOR3XL U648 ( .A(n693), .B(n691), .C(n692), .Y(n274) );
  NOR4XL U649 ( .A(n276), .B(n688), .C(n686), .D(MinCost[8]), .Y(n275) );
  OR2XL U650 ( .A(n690), .B(n689), .Y(n276) );
  XOR2XL U651 ( .A(mini_max[2]), .B(N316), .Y(n283) );
  CLKINVX1 U652 ( .A(n177), .Y(n618) );
  AOI211X1 U653 ( .A0(\n[5][2] ), .A1(n640), .B0(n178), .C0(n179), .Y(n177) );
  OAI221XL U654 ( .A0(n677), .A1(n181), .B0(n661), .B1(n165), .C0(n426), .Y(
        n178) );
  OAI22XL U655 ( .A0(n674), .A1(n171), .B0(n163), .B1(n180), .Y(n179) );
  AO22X1 U656 ( .A0(\n[0][2] ), .A1(n228), .B0(n229), .B1(n233), .Y(n319) );
  OAI22XL U657 ( .A0(n646), .A1(n231), .B0(n663), .B1(n659), .Y(n233) );
  OAI22XL U658 ( .A0(n680), .A1(n191), .B0(n634), .B1(n199), .Y(n310) );
  AOI221XL U659 ( .A0(n624), .A1(n195), .B0(n662), .B1(n622), .C0(n200), .Y(
        n199) );
  OAI22XL U660 ( .A0(n150), .A1(n123), .B0(n201), .B1(n141), .Y(n200) );
  AOI222XL U661 ( .A0(n647), .A1(\n[6][1] ), .B0(n433), .B1(n648), .C0(n650), 
        .C1(\n[7][1] ), .Y(n201) );
  OAI22XL U662 ( .A0(n675), .A1(n208), .B0(n633), .B1(n212), .Y(n313) );
  AOI211X1 U663 ( .A0(n624), .A1(n210), .B0(n213), .C0(n638), .Y(n212) );
  AO22X1 U664 ( .A0(n665), .A1(n622), .B0(N408), .B1(n641), .Y(n213) );
  OAI22XL U665 ( .A0(n674), .A1(n208), .B0(n633), .B1(n209), .Y(n312) );
  AOI211X1 U666 ( .A0(n620), .A1(n210), .B0(n211), .C0(n638), .Y(n209) );
  AO22X1 U667 ( .A0(n665), .A1(n617), .B0(N409), .B1(n641), .Y(n211) );
  NOR2X1 U668 ( .A(n615), .B(c_counter[0]), .Y(N247) );
  OAI2BB2XL U669 ( .B0(n133), .B1(n137), .A0N(\n[1][1] ), .A1N(n133), .Y(n307)
         );
  AOI22X1 U670 ( .A0(n631), .A1(n138), .B0(\n[7][1] ), .B1(n641), .Y(n137) );
  OAI22XL U671 ( .A0(n136), .A1(n644), .B0(n660), .B1(n658), .Y(n138) );
  OAI2BB2XL U672 ( .B0(n133), .B1(n134), .A0N(\n[1][2] ), .A1N(n133), .Y(n306)
         );
  AOI22X1 U673 ( .A0(n631), .A1(n135), .B0(\n[7][2] ), .B1(n641), .Y(n134) );
  OAI22XL U674 ( .A0(n136), .A1(n646), .B0(n660), .B1(n659), .Y(n135) );
  CLKINVX1 U675 ( .A(N113), .Y(n582) );
  OAI21XL U676 ( .A0(n285), .A1(n672), .B0(n286), .Y(N249) );
  NAND4X1 U677 ( .A(c_counter[1]), .B(c_counter[0]), .C(n427), .D(n672), .Y(
        n286) );
  AOI2BB1X1 U678 ( .A0N(c_counter[1]), .A1N(n615), .B0(N247), .Y(n285) );
  CLKINVX1 U679 ( .A(c_counter[2]), .Y(n672) );
  CLKINVX1 U680 ( .A(N96), .Y(n475) );
  CLKBUFX3 U681 ( .A(N112), .Y(n425) );
  XOR2X1 U682 ( .A(n301), .B(n302), .Y(N112) );
  XOR2X1 U683 ( .A(N106), .B(c_counter[2]), .Y(n302) );
  OAI32X1 U684 ( .A0(n656), .A1(n303), .A2(n651), .B0(n530), .B1(n103), .Y(
        n301) );
  CLKINVX1 U685 ( .A(n183), .Y(n623) );
  AOI221XL U686 ( .A0(n639), .A1(\n[6][1] ), .B0(\n[5][1] ), .B1(n640), .C0(
        n184), .Y(n183) );
  OAI222XL U687 ( .A0(n661), .A1(n169), .B0(n679), .B1(n181), .C0(n185), .C1(
        n180), .Y(n184) );
  AO22X1 U688 ( .A0(\n[0][1] ), .A1(n228), .B0(n229), .B1(n232), .Y(n318) );
  OAI22XL U689 ( .A0(n644), .A1(n231), .B0(n663), .B1(n658), .Y(n232) );
  OAI21XL U690 ( .A0(n297), .A1(n78), .B0(n298), .Y(N153) );
  AOI32XL U691 ( .A0(n635), .A1(n78), .A2(W[2]), .B0(n636), .B1(n273), .Y(n298) );
  CLKINVX1 U692 ( .A(n299), .Y(n635) );
  OAI22XL U693 ( .A0(n297), .A1(n653), .B0(W[2]), .B1(n299), .Y(N152) );
  NAND3X1 U694 ( .A(state[0]), .B(n75), .C(state[1]), .Y(n289) );
  NOR3BXL U695 ( .AN(n290), .B(N97), .C(n253), .Y(N243) );
  NAND2X1 U696 ( .A(n614), .B(N95), .Y(N223) );
  OAI22X1 U697 ( .A0(state[0]), .A1(n75), .B0(n288), .B1(n289), .Y(
        next_state[2]) );
  NOR2X1 U698 ( .A(find_fin), .B(finish), .Y(n288) );
  NAND3X2 U699 ( .A(N114), .B(N113), .C(N115), .Y(n221) );
  OAI21X1 U700 ( .A0(n291), .A1(n289), .B0(n292), .Y(next_state[1]) );
  NOR2BX1 U701 ( .AN(find_fin), .B(finish), .Y(n291) );
  XOR2X1 U702 ( .A(n76), .B(state[0]), .Y(n292) );
  NAND3X1 U703 ( .A(N113), .B(n664), .C(N115), .Y(n195) );
  NAND3X1 U704 ( .A(n668), .B(n673), .C(N114), .Y(n148) );
  NAND3X1 U705 ( .A(n668), .B(n664), .C(N115), .Y(n180) );
  CLKINVX1 U706 ( .A(N97), .Y(n474) );
  NAND3X1 U707 ( .A(n76), .B(n75), .C(n77), .Y(n170) );
  CLKBUFX3 U708 ( .A(N106), .Y(n439) );
  CLKINVX1 U709 ( .A(mini_max[1]), .Y(n669) );
  CLKINVX1 U710 ( .A(mini_max[0]), .Y(n670) );
  CLKINVX1 U711 ( .A(mini_max[2]), .Y(n671) );
  XOR2X1 U712 ( .A(n656), .B(n103), .Y(n399) );
  CLKINVX1 U713 ( .A(RST), .Y(n613) );
  OA22X1 U714 ( .A0(n431), .A1(n418), .B0(\n[2][0] ), .B1(n438), .Y(n405) );
  NOR2X1 U715 ( .A(n651), .B(n438), .Y(n403) );
  NOR2X1 U716 ( .A(n651), .B(n418), .Y(n402) );
  AOI222XL U717 ( .A0(n405), .A1(n651), .B0(n403), .B1(n432), .C0(n402), .C1(
        \n[5][0] ), .Y(n400) );
  OAI2BB2XL U718 ( .B0(n439), .B1(n400), .A0N(\n[7][0] ), .A1N(n439), .Y(N407)
         );
  OA22X1 U719 ( .A0(\n[4][1] ), .A1(n418), .B0(\n[2][1] ), .B1(n438), .Y(n408)
         );
  AOI222XL U720 ( .A0(n408), .A1(n651), .B0(n403), .B1(n433), .C0(n402), .C1(
        \n[5][1] ), .Y(n401) );
  OAI2BB2XL U721 ( .B0(n439), .B1(n401), .A0N(\n[7][1] ), .A1N(n439), .Y(N408)
         );
  OA22X1 U722 ( .A0(n434), .A1(n418), .B0(\n[2][2] ), .B1(n438), .Y(n413) );
  AOI222XL U723 ( .A0(n413), .A1(n651), .B0(n403), .B1(n435), .C0(n402), .C1(
        \n[5][2] ), .Y(n404) );
  OAI2BB2XL U724 ( .B0(n439), .B1(n404), .A0N(\n[7][2] ), .A1N(n439), .Y(N409)
         );
  NOR2X1 U725 ( .A(n437), .B(n438), .Y(n412) );
  NOR2X1 U726 ( .A(n418), .B(n437), .Y(n411) );
  AOI222XL U727 ( .A0(n437), .A1(n405), .B0(\n[1][0] ), .B1(n412), .C0(n432), 
        .C1(n411), .Y(n407) );
  AND2X1 U728 ( .A(n439), .B(n651), .Y(n415) );
  AND2X1 U729 ( .A(n439), .B(n437), .Y(n414) );
  AOI22X1 U730 ( .A0(\n[5][0] ), .A1(n415), .B0(\n[6][0] ), .B1(n414), .Y(n406) );
  OAI21XL U731 ( .A0(n439), .A1(n407), .B0(n406), .Y(N404) );
  AOI222XL U732 ( .A0(n437), .A1(n408), .B0(\n[1][1] ), .B1(n412), .C0(n433), 
        .C1(n411), .Y(n410) );
  AOI22X1 U733 ( .A0(\n[5][1] ), .A1(n415), .B0(\n[6][1] ), .B1(n414), .Y(n409) );
  OAI21XL U734 ( .A0(n439), .A1(n410), .B0(n409), .Y(N405) );
  AOI222XL U735 ( .A0(n437), .A1(n413), .B0(\n[1][2] ), .B1(n412), .C0(n435), 
        .C1(n411), .Y(n417) );
  AOI22X1 U736 ( .A0(\n[5][2] ), .A1(n415), .B0(\n[6][2] ), .B1(n414), .Y(n416) );
  OAI21XL U737 ( .A0(n439), .A1(n417), .B0(n416), .Y(N406) );
  NOR2X1 U738 ( .A(n456), .B(n419), .Y(n453) );
  NOR2X1 U739 ( .A(n456), .B(n457), .Y(n452) );
  NOR2X1 U740 ( .A(n457), .B(W[1]), .Y(n450) );
  NOR2X1 U741 ( .A(W[0]), .B(W[1]), .Y(n449) );
  AO22X1 U742 ( .A0(\n[5][0] ), .A1(n450), .B0(n431), .B1(n449), .Y(n440) );
  AOI221XL U743 ( .A0(\n[6][0] ), .A1(n453), .B0(\n[7][0] ), .B1(n452), .C0(
        n440), .Y(n443) );
  AO22X1 U744 ( .A0(\n[1][0] ), .A1(n450), .B0(\n[0][0] ), .B1(n449), .Y(n441)
         );
  AOI221XL U745 ( .A0(\n[2][0] ), .A1(n453), .B0(n432), .B1(n452), .C0(n441), 
        .Y(n442) );
  AO22X1 U746 ( .A0(\n[5][1] ), .A1(n450), .B0(\n[4][1] ), .B1(n449), .Y(n444)
         );
  AOI221XL U747 ( .A0(\n[6][1] ), .A1(n453), .B0(\n[7][1] ), .B1(n452), .C0(
        n444), .Y(n447) );
  AO22X1 U748 ( .A0(\n[1][1] ), .A1(n450), .B0(\n[0][1] ), .B1(n449), .Y(n445)
         );
  AOI221XL U749 ( .A0(\n[2][1] ), .A1(n453), .B0(n433), .B1(n452), .C0(n445), 
        .Y(n446) );
  AO22X1 U750 ( .A0(\n[5][2] ), .A1(n450), .B0(n434), .B1(n449), .Y(n448) );
  AOI221XL U751 ( .A0(\n[6][2] ), .A1(n453), .B0(\n[7][2] ), .B1(n452), .C0(
        n448), .Y(n455) );
  AO22X1 U752 ( .A0(\n[1][2] ), .A1(n450), .B0(\n[0][2] ), .B1(n449), .Y(n451)
         );
  AOI221XL U753 ( .A0(\n[2][2] ), .A1(n453), .B0(n435), .B1(n452), .C0(n451), 
        .Y(n454) );
  NOR2X1 U754 ( .A(n475), .B(N98), .Y(n470) );
  NOR2X1 U755 ( .A(N98), .B(N96), .Y(n468) );
  NOR2X1 U756 ( .A(N95), .B(N96), .Y(n467) );
  AO22X1 U757 ( .A0(\n[5][0] ), .A1(n468), .B0(n431), .B1(n467), .Y(n458) );
  AOI221XL U758 ( .A0(\n[6][0] ), .A1(n471), .B0(\n[7][0] ), .B1(n470), .C0(
        n458), .Y(n461) );
  AO22X1 U759 ( .A0(\n[1][0] ), .A1(n468), .B0(\n[0][0] ), .B1(n467), .Y(n459)
         );
  AOI221XL U760 ( .A0(\n[2][0] ), .A1(n471), .B0(n432), .B1(n470), .C0(n459), 
        .Y(n460) );
  OAI22XL U761 ( .A0(n474), .A1(n461), .B0(N97), .B1(n460), .Y(N231) );
  AO22X1 U762 ( .A0(\n[5][1] ), .A1(n468), .B0(\n[4][1] ), .B1(n467), .Y(n462)
         );
  AOI221XL U763 ( .A0(\n[6][1] ), .A1(n471), .B0(\n[7][1] ), .B1(n470), .C0(
        n462), .Y(n465) );
  AO22X1 U764 ( .A0(\n[1][1] ), .A1(n468), .B0(\n[0][1] ), .B1(n467), .Y(n463)
         );
  AOI221XL U765 ( .A0(\n[2][1] ), .A1(n471), .B0(n433), .B1(n470), .C0(n463), 
        .Y(n464) );
  AO22X1 U766 ( .A0(\n[5][2] ), .A1(n468), .B0(n434), .B1(n467), .Y(n466) );
  AOI221XL U767 ( .A0(\n[6][2] ), .A1(n471), .B0(\n[7][2] ), .B1(n470), .C0(
        n466), .Y(n473) );
  AO22X1 U768 ( .A0(\n[1][2] ), .A1(n468), .B0(\n[0][2] ), .B1(n467), .Y(n469)
         );
  AOI221XL U769 ( .A0(\n[2][2] ), .A1(n471), .B0(n435), .B1(n470), .C0(n469), 
        .Y(n472) );
  NOR2X1 U770 ( .A(n493), .B(N98), .Y(n489) );
  NOR2X1 U771 ( .A(n493), .B(n492), .Y(n488) );
  NOR2X1 U772 ( .A(n492), .B(N99), .Y(n486) );
  NOR2X1 U773 ( .A(N98), .B(N99), .Y(n485) );
  AO22X1 U774 ( .A0(\n[5][0] ), .A1(n486), .B0(n431), .B1(n485), .Y(n476) );
  AOI221XL U775 ( .A0(\n[6][0] ), .A1(n489), .B0(\n[7][0] ), .B1(n488), .C0(
        n476), .Y(n479) );
  AO22X1 U776 ( .A0(\n[1][0] ), .A1(n486), .B0(\n[0][0] ), .B1(n485), .Y(n477)
         );
  AOI221XL U777 ( .A0(\n[2][0] ), .A1(n489), .B0(n432), .B1(n488), .C0(n477), 
        .Y(n478) );
  OAI22XL U778 ( .A0(n494), .A1(n479), .B0(N100), .B1(n478), .Y(N234) );
  AO22X1 U779 ( .A0(\n[5][1] ), .A1(n486), .B0(\n[4][1] ), .B1(n485), .Y(n480)
         );
  AOI221XL U780 ( .A0(\n[6][1] ), .A1(n489), .B0(\n[7][1] ), .B1(n488), .C0(
        n480), .Y(n483) );
  AO22X1 U781 ( .A0(\n[1][1] ), .A1(n486), .B0(\n[0][1] ), .B1(n485), .Y(n481)
         );
  AOI221XL U782 ( .A0(\n[2][1] ), .A1(n489), .B0(n433), .B1(n488), .C0(n481), 
        .Y(n482) );
  OAI22XL U783 ( .A0(n494), .A1(n483), .B0(N100), .B1(n482), .Y(N233) );
  AO22X1 U784 ( .A0(\n[5][2] ), .A1(n486), .B0(n434), .B1(n485), .Y(n484) );
  AOI221XL U785 ( .A0(\n[6][2] ), .A1(n489), .B0(\n[7][2] ), .B1(n488), .C0(
        n484), .Y(n491) );
  AO22X1 U786 ( .A0(\n[1][2] ), .A1(n486), .B0(\n[0][2] ), .B1(n485), .Y(n487)
         );
  AOI221XL U787 ( .A0(\n[2][2] ), .A1(n489), .B0(n435), .B1(n488), .C0(n487), 
        .Y(n490) );
  OAI22XL U788 ( .A0(n491), .A1(n494), .B0(N100), .B1(n490), .Y(N232) );
  NOR2X1 U789 ( .A(n512), .B(n424), .Y(n508) );
  NOR2X1 U790 ( .A(n512), .B(n511), .Y(n507) );
  NOR2X1 U791 ( .A(n511), .B(N111), .Y(n505) );
  NOR2X1 U792 ( .A(n424), .B(N111), .Y(n504) );
  AO22X1 U793 ( .A0(\n[5][0] ), .A1(n505), .B0(n431), .B1(n504), .Y(n495) );
  AOI221XL U794 ( .A0(\n[6][0] ), .A1(n508), .B0(\n[7][0] ), .B1(n507), .C0(
        n495), .Y(n498) );
  AO22X1 U795 ( .A0(\n[1][0] ), .A1(n505), .B0(\n[0][0] ), .B1(n504), .Y(n496)
         );
  AOI221XL U796 ( .A0(\n[2][0] ), .A1(n508), .B0(n432), .B1(n507), .C0(n496), 
        .Y(n497) );
  OAI22XL U797 ( .A0(n513), .A1(n498), .B0(n425), .B1(n497), .Y(N258) );
  AO22X1 U798 ( .A0(\n[5][1] ), .A1(n505), .B0(\n[4][1] ), .B1(n504), .Y(n499)
         );
  AOI221XL U799 ( .A0(\n[6][1] ), .A1(n508), .B0(\n[7][1] ), .B1(n507), .C0(
        n499), .Y(n502) );
  AO22X1 U800 ( .A0(\n[1][1] ), .A1(n505), .B0(\n[0][1] ), .B1(n504), .Y(n500)
         );
  AOI221XL U801 ( .A0(\n[2][1] ), .A1(n508), .B0(n433), .B1(n507), .C0(n500), 
        .Y(n501) );
  OAI22XL U802 ( .A0(n513), .A1(n502), .B0(n425), .B1(n501), .Y(N257) );
  AO22X1 U803 ( .A0(\n[5][2] ), .A1(n505), .B0(n434), .B1(n504), .Y(n503) );
  AOI221XL U804 ( .A0(\n[6][2] ), .A1(n508), .B0(\n[7][2] ), .B1(n507), .C0(
        n503), .Y(n510) );
  AO22X1 U805 ( .A0(\n[1][2] ), .A1(n505), .B0(\n[0][2] ), .B1(n504), .Y(n506)
         );
  AOI221XL U806 ( .A0(\n[2][2] ), .A1(n508), .B0(n435), .B1(n507), .C0(n506), 
        .Y(n509) );
  OAI22XL U807 ( .A0(n510), .A1(n513), .B0(n425), .B1(n509), .Y(N256) );
  NOR2X1 U808 ( .A(n530), .B(n437), .Y(n527) );
  NOR2X1 U809 ( .A(n530), .B(n651), .Y(n526) );
  NOR2X1 U810 ( .A(n651), .B(n438), .Y(n524) );
  NOR2X1 U811 ( .A(n437), .B(n438), .Y(n523) );
  AO22X1 U812 ( .A0(\n[5][0] ), .A1(n524), .B0(n431), .B1(n523), .Y(n514) );
  AOI221XL U813 ( .A0(\n[6][0] ), .A1(n527), .B0(\n[7][0] ), .B1(n526), .C0(
        n514), .Y(n517) );
  AO22X1 U814 ( .A0(\n[1][0] ), .A1(n524), .B0(\n[0][0] ), .B1(n523), .Y(n515)
         );
  AOI221XL U815 ( .A0(\n[2][0] ), .A1(n527), .B0(n432), .B1(n526), .C0(n515), 
        .Y(n516) );
  AO22X1 U816 ( .A0(\n[5][1] ), .A1(n524), .B0(\n[4][1] ), .B1(n523), .Y(n518)
         );
  AOI221XL U817 ( .A0(\n[6][1] ), .A1(n527), .B0(\n[7][1] ), .B1(n526), .C0(
        n518), .Y(n521) );
  AO22X1 U818 ( .A0(\n[1][1] ), .A1(n524), .B0(\n[0][1] ), .B1(n523), .Y(n519)
         );
  AOI221XL U819 ( .A0(\n[2][1] ), .A1(n527), .B0(n433), .B1(n526), .C0(n519), 
        .Y(n520) );
  AO22X1 U820 ( .A0(\n[5][2] ), .A1(n524), .B0(n434), .B1(n523), .Y(n522) );
  AOI221XL U821 ( .A0(\n[6][2] ), .A1(n527), .B0(\n[7][2] ), .B1(n526), .C0(
        n522), .Y(n529) );
  AO22X1 U822 ( .A0(\n[1][2] ), .A1(n524), .B0(\n[0][2] ), .B1(n523), .Y(n525)
         );
  AOI221XL U823 ( .A0(\n[2][2] ), .A1(n527), .B0(n435), .B1(n526), .C0(n525), 
        .Y(n528) );
  NOR2X1 U824 ( .A(n237), .B(n424), .Y(n545) );
  NOR2X1 U825 ( .A(n237), .B(n548), .Y(n544) );
  NOR2X1 U826 ( .A(n548), .B(N111), .Y(n542) );
  NOR2X1 U827 ( .A(n424), .B(N111), .Y(n541) );
  AO22X1 U828 ( .A0(\n[5][0] ), .A1(n542), .B0(n431), .B1(n541), .Y(n532) );
  AOI221XL U829 ( .A0(\n[6][0] ), .A1(n545), .B0(\n[7][0] ), .B1(n544), .C0(
        n532), .Y(n535) );
  AO22X1 U830 ( .A0(\n[1][0] ), .A1(n542), .B0(\n[0][0] ), .B1(n541), .Y(n533)
         );
  AOI221XL U831 ( .A0(\n[2][0] ), .A1(n545), .B0(n432), .B1(n544), .C0(n533), 
        .Y(n534) );
  OAI22XL U832 ( .A0(n549), .A1(n535), .B0(n425), .B1(n534), .Y(N267) );
  AO22X1 U833 ( .A0(\n[5][1] ), .A1(n542), .B0(\n[4][1] ), .B1(n541), .Y(n536)
         );
  AOI221XL U834 ( .A0(\n[6][1] ), .A1(n545), .B0(\n[7][1] ), .B1(n544), .C0(
        n536), .Y(n539) );
  AO22X1 U835 ( .A0(\n[1][1] ), .A1(n542), .B0(\n[0][1] ), .B1(n541), .Y(n537)
         );
  AOI221XL U836 ( .A0(\n[2][1] ), .A1(n545), .B0(n433), .B1(n544), .C0(n537), 
        .Y(n538) );
  OAI22XL U837 ( .A0(n549), .A1(n539), .B0(n425), .B1(n538), .Y(N266) );
  AO22X1 U838 ( .A0(\n[5][2] ), .A1(n542), .B0(n434), .B1(n541), .Y(n540) );
  AOI221XL U839 ( .A0(\n[6][2] ), .A1(n545), .B0(\n[7][2] ), .B1(n544), .C0(
        n540), .Y(n547) );
  AO22X1 U840 ( .A0(\n[1][2] ), .A1(n542), .B0(\n[0][2] ), .B1(n541), .Y(n543)
         );
  AOI221XL U841 ( .A0(\n[2][2] ), .A1(n545), .B0(n435), .B1(n544), .C0(n543), 
        .Y(n546) );
  OAI22XL U842 ( .A0(n547), .A1(n549), .B0(n425), .B1(n546), .Y(N265) );
  NOR2X1 U843 ( .A(n512), .B(n424), .Y(n563) );
  NOR2X1 U844 ( .A(n512), .B(n548), .Y(n562) );
  NOR2X1 U845 ( .A(n511), .B(N111), .Y(n560) );
  NOR2X1 U846 ( .A(n424), .B(N111), .Y(n559) );
  AO22X1 U847 ( .A0(\n[5][0] ), .A1(n560), .B0(n431), .B1(n559), .Y(n550) );
  AOI221XL U848 ( .A0(\n[6][0] ), .A1(n563), .B0(\n[7][0] ), .B1(n562), .C0(
        n550), .Y(n553) );
  AO22X1 U849 ( .A0(\n[1][0] ), .A1(n560), .B0(\n[0][0] ), .B1(n559), .Y(n551)
         );
  AOI221XL U850 ( .A0(\n[2][0] ), .A1(n563), .B0(n432), .B1(n562), .C0(n551), 
        .Y(n552) );
  OAI22XL U851 ( .A0(n513), .A1(n553), .B0(n425), .B1(n552), .Y(N274) );
  AO22X1 U852 ( .A0(\n[5][1] ), .A1(n560), .B0(\n[4][1] ), .B1(n559), .Y(n554)
         );
  AOI221XL U853 ( .A0(\n[6][1] ), .A1(n563), .B0(\n[7][1] ), .B1(n562), .C0(
        n554), .Y(n557) );
  AO22X1 U854 ( .A0(\n[1][1] ), .A1(n560), .B0(\n[0][1] ), .B1(n559), .Y(n555)
         );
  AOI221XL U855 ( .A0(\n[2][1] ), .A1(n563), .B0(n433), .B1(n562), .C0(n555), 
        .Y(n556) );
  OAI22XL U856 ( .A0(n549), .A1(n557), .B0(n425), .B1(n556), .Y(N273) );
  AO22X1 U857 ( .A0(\n[5][2] ), .A1(n560), .B0(n434), .B1(n559), .Y(n558) );
  AOI221XL U858 ( .A0(\n[6][2] ), .A1(n563), .B0(\n[7][2] ), .B1(n562), .C0(
        n558), .Y(n565) );
  AO22X1 U859 ( .A0(\n[1][2] ), .A1(n560), .B0(\n[0][2] ), .B1(n559), .Y(n561)
         );
  AOI221XL U860 ( .A0(\n[2][2] ), .A1(n563), .B0(n435), .B1(n562), .C0(n561), 
        .Y(n564) );
  OAI22XL U861 ( .A0(n565), .A1(n513), .B0(n425), .B1(n564), .Y(N272) );
  NOR2X1 U862 ( .A(n664), .B(n582), .Y(n578) );
  NOR2X1 U863 ( .A(n582), .B(N114), .Y(n576) );
  NOR2X1 U864 ( .A(N113), .B(N114), .Y(n575) );
  AO22X1 U865 ( .A0(\n[5][0] ), .A1(n576), .B0(n431), .B1(n575), .Y(n566) );
  AOI221XL U866 ( .A0(\n[6][0] ), .A1(n579), .B0(\n[7][0] ), .B1(n578), .C0(
        n566), .Y(n569) );
  AO22X1 U867 ( .A0(\n[1][0] ), .A1(n576), .B0(\n[0][0] ), .B1(n575), .Y(n567)
         );
  AOI221XL U868 ( .A0(\n[2][0] ), .A1(n579), .B0(n432), .B1(n578), .C0(n567), 
        .Y(n568) );
  OAI22XL U869 ( .A0(n673), .A1(n569), .B0(N115), .B1(n568), .Y(N307) );
  AO22X1 U870 ( .A0(\n[5][1] ), .A1(n576), .B0(\n[4][1] ), .B1(n575), .Y(n570)
         );
  AOI221XL U871 ( .A0(\n[6][1] ), .A1(n579), .B0(\n[7][1] ), .B1(n578), .C0(
        n570), .Y(n573) );
  AO22X1 U872 ( .A0(\n[1][1] ), .A1(n576), .B0(\n[0][1] ), .B1(n575), .Y(n571)
         );
  AOI221XL U873 ( .A0(\n[2][1] ), .A1(n579), .B0(n433), .B1(n578), .C0(n571), 
        .Y(n572) );
  OAI22XL U874 ( .A0(n673), .A1(n573), .B0(N115), .B1(n572), .Y(N306) );
  AO22X1 U875 ( .A0(\n[5][2] ), .A1(n576), .B0(n434), .B1(n575), .Y(n574) );
  AOI221XL U876 ( .A0(\n[6][2] ), .A1(n579), .B0(\n[7][2] ), .B1(n578), .C0(
        n574), .Y(n581) );
  AO22X1 U877 ( .A0(\n[1][2] ), .A1(n576), .B0(\n[0][2] ), .B1(n575), .Y(n577)
         );
  AOI221XL U878 ( .A0(\n[2][2] ), .A1(n579), .B0(n435), .B1(n578), .C0(n577), 
        .Y(n580) );
  OAI22XL U879 ( .A0(n581), .A1(n673), .B0(N115), .B1(n580), .Y(N305) );
  OAI22XL U880 ( .A0(sum[1]), .A1(n583), .B0(n583), .B1(n605), .Y(n585) );
  NAND2X1 U881 ( .A(sum[7]), .B(n609), .Y(n597) );
  NAND2X1 U882 ( .A(sum[6]), .B(n608), .Y(n592) );
  NOR3BXL U883 ( .AN(n592), .B(n586), .C(n593), .Y(n584) );
  NAND3X1 U884 ( .A(n585), .B(n597), .C(n584), .Y(n604) );
  NAND2X1 U885 ( .A(sum[9]), .B(n610), .Y(n600) );
  NOR2X1 U886 ( .A(n602), .B(n601), .Y(n591) );
  NAND2X1 U887 ( .A(sum[2]), .B(n606), .Y(n599) );
  OAI211X1 U888 ( .A0(n588), .A1(n373), .B0(n587), .C0(n599), .Y(n589) );
  OAI221XL U889 ( .A0(sum[2]), .A1(n606), .B0(sum[3]), .B1(n607), .C0(n589), 
        .Y(n590) );
  AOI222XL U890 ( .A0(n690), .A1(n370), .B0(n691), .B1(n375), .C0(n591), .C1(
        n590), .Y(n595) );
  NAND2BX1 U891 ( .AN(n593), .B(n592), .Y(n594) );
  OAI222XL U892 ( .A0(n595), .A1(n594), .B0(sum[6]), .B1(n608), .C0(sum[7]), 
        .C1(n609), .Y(n596) );
  NOR4X1 U893 ( .A(n604), .B(n603), .C(n602), .D(n601), .Y(N200) );
endmodule

