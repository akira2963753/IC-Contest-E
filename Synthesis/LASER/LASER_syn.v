/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Mon Mar 17 23:43:37 2025
/////////////////////////////////////////////////////////////


module LASER_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR2X1 U1 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LASER_DW01_inc_1 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  XOR2X1 U1 ( .A(carry[8]), .B(A[8]), .Y(SUM[8]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LASER ( CLK, RST, X, Y, C1X, C1Y, C2X, C2Y, DONE );
  input [3:0] X;
  input [3:0] Y;
  output [3:0] C1X;
  output [3:0] C1Y;
  output [3:0] C2X;
  output [3:0] C2Y;
  input CLK, RST;
  output DONE;
  wire   n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1717, n1718,
         n1719, n1720, n1721, n1722, n1723, n1724, \obj_x[0][3] ,
         \obj_x[0][2] , \obj_x[0][1] , \obj_x[0][0] , \obj_x[1][3] ,
         \obj_x[1][2] , \obj_x[1][1] , \obj_x[1][0] , \obj_x[2][3] ,
         \obj_x[2][2] , \obj_x[2][1] , \obj_x[2][0] , \obj_x[3][3] ,
         \obj_x[3][2] , \obj_x[3][1] , \obj_x[3][0] , \obj_x[4][3] ,
         \obj_x[4][2] , \obj_x[4][1] , \obj_x[4][0] , \obj_x[5][3] ,
         \obj_x[5][2] , \obj_x[5][1] , \obj_x[5][0] , \obj_x[6][3] ,
         \obj_x[6][2] , \obj_x[6][1] , \obj_x[6][0] , \obj_x[7][3] ,
         \obj_x[7][2] , \obj_x[7][1] , \obj_x[7][0] , \obj_x[8][3] ,
         \obj_x[8][2] , \obj_x[8][1] , \obj_x[8][0] , \obj_x[9][3] ,
         \obj_x[9][2] , \obj_x[9][1] , \obj_x[9][0] , \obj_x[10][3] ,
         \obj_x[10][2] , \obj_x[10][1] , \obj_x[10][0] , \obj_x[11][3] ,
         \obj_x[11][2] , \obj_x[11][1] , \obj_x[11][0] , \obj_x[12][3] ,
         \obj_x[12][2] , \obj_x[12][1] , \obj_x[12][0] , \obj_x[13][3] ,
         \obj_x[13][2] , \obj_x[13][1] , \obj_x[13][0] , \obj_x[14][3] ,
         \obj_x[14][2] , \obj_x[14][1] , \obj_x[14][0] , \obj_x[15][3] ,
         \obj_x[15][2] , \obj_x[15][1] , \obj_x[15][0] , \obj_x[16][3] ,
         \obj_x[16][2] , \obj_x[16][1] , \obj_x[16][0] , \obj_x[17][3] ,
         \obj_x[17][2] , \obj_x[17][1] , \obj_x[17][0] , \obj_x[18][3] ,
         \obj_x[18][2] , \obj_x[18][1] , \obj_x[18][0] , \obj_x[19][3] ,
         \obj_x[19][2] , \obj_x[19][1] , \obj_x[19][0] , \obj_x[20][3] ,
         \obj_x[20][2] , \obj_x[20][1] , \obj_x[20][0] , \obj_x[21][3] ,
         \obj_x[21][2] , \obj_x[21][1] , \obj_x[21][0] , \obj_x[22][3] ,
         \obj_x[22][2] , \obj_x[22][1] , \obj_x[22][0] , \obj_x[23][3] ,
         \obj_x[23][2] , \obj_x[23][1] , \obj_x[23][0] , \obj_x[24][3] ,
         \obj_x[24][2] , \obj_x[24][1] , \obj_x[24][0] , \obj_x[25][3] ,
         \obj_x[25][2] , \obj_x[25][1] , \obj_x[25][0] , \obj_x[26][3] ,
         \obj_x[26][2] , \obj_x[26][1] , \obj_x[26][0] , \obj_x[27][3] ,
         \obj_x[27][2] , \obj_x[27][1] , \obj_x[27][0] , \obj_x[28][3] ,
         \obj_x[28][2] , \obj_x[28][1] , \obj_x[28][0] , \obj_x[29][3] ,
         \obj_x[29][2] , \obj_x[29][1] , \obj_x[29][0] , \obj_x[30][3] ,
         \obj_x[30][2] , \obj_x[30][1] , \obj_x[30][0] , \obj_x[31][3] ,
         \obj_x[31][2] , \obj_x[31][1] , \obj_x[31][0] , \obj_x[32][3] ,
         \obj_x[32][2] , \obj_x[32][1] , \obj_x[32][0] , \obj_x[33][3] ,
         \obj_x[33][2] , \obj_x[33][1] , \obj_x[33][0] , \obj_x[34][3] ,
         \obj_x[34][2] , \obj_x[34][1] , \obj_x[34][0] , \obj_x[35][3] ,
         \obj_x[35][2] , \obj_x[35][1] , \obj_x[35][0] , \obj_x[36][3] ,
         \obj_x[36][2] , \obj_x[36][1] , \obj_x[36][0] , \obj_x[37][3] ,
         \obj_x[37][2] , \obj_x[37][1] , \obj_x[37][0] , \obj_x[38][3] ,
         \obj_x[38][2] , \obj_x[38][1] , \obj_x[38][0] , \obj_x[39][3] ,
         \obj_x[39][2] , \obj_x[39][1] , \obj_x[39][0] , \obj_y[0][3] ,
         \obj_y[0][2] , \obj_y[0][1] , \obj_y[0][0] , \obj_y[1][3] ,
         \obj_y[1][2] , \obj_y[1][1] , \obj_y[1][0] , \obj_y[2][3] ,
         \obj_y[2][2] , \obj_y[2][1] , \obj_y[2][0] , \obj_y[3][3] ,
         \obj_y[3][2] , \obj_y[3][1] , \obj_y[3][0] , \obj_y[4][3] ,
         \obj_y[4][2] , \obj_y[4][1] , \obj_y[4][0] , \obj_y[5][3] ,
         \obj_y[5][2] , \obj_y[5][1] , \obj_y[5][0] , \obj_y[6][3] ,
         \obj_y[6][2] , \obj_y[6][1] , \obj_y[6][0] , \obj_y[7][3] ,
         \obj_y[7][2] , \obj_y[7][1] , \obj_y[7][0] , \obj_y[8][3] ,
         \obj_y[8][2] , \obj_y[8][1] , \obj_y[8][0] , \obj_y[9][3] ,
         \obj_y[9][2] , \obj_y[9][1] , \obj_y[9][0] , \obj_y[10][3] ,
         \obj_y[10][2] , \obj_y[10][1] , \obj_y[10][0] , \obj_y[11][3] ,
         \obj_y[11][2] , \obj_y[11][1] , \obj_y[11][0] , \obj_y[12][3] ,
         \obj_y[12][2] , \obj_y[12][1] , \obj_y[12][0] , \obj_y[13][3] ,
         \obj_y[13][2] , \obj_y[13][1] , \obj_y[13][0] , \obj_y[14][3] ,
         \obj_y[14][2] , \obj_y[14][1] , \obj_y[14][0] , \obj_y[15][3] ,
         \obj_y[15][2] , \obj_y[15][1] , \obj_y[15][0] , \obj_y[16][3] ,
         \obj_y[16][2] , \obj_y[16][1] , \obj_y[16][0] , \obj_y[17][3] ,
         \obj_y[17][2] , \obj_y[17][1] , \obj_y[17][0] , \obj_y[18][3] ,
         \obj_y[18][2] , \obj_y[18][1] , \obj_y[18][0] , \obj_y[19][3] ,
         \obj_y[19][2] , \obj_y[19][1] , \obj_y[19][0] , \obj_y[20][3] ,
         \obj_y[20][2] , \obj_y[20][1] , \obj_y[20][0] , \obj_y[21][3] ,
         \obj_y[21][2] , \obj_y[21][1] , \obj_y[21][0] , \obj_y[22][3] ,
         \obj_y[22][2] , \obj_y[22][1] , \obj_y[22][0] , \obj_y[23][3] ,
         \obj_y[23][2] , \obj_y[23][1] , \obj_y[23][0] , \obj_y[24][3] ,
         \obj_y[24][2] , \obj_y[24][1] , \obj_y[24][0] , \obj_y[25][3] ,
         \obj_y[25][2] , \obj_y[25][1] , \obj_y[25][0] , \obj_y[26][3] ,
         \obj_y[26][2] , \obj_y[26][1] , \obj_y[26][0] , \obj_y[27][3] ,
         \obj_y[27][2] , \obj_y[27][1] , \obj_y[27][0] , \obj_y[28][3] ,
         \obj_y[28][2] , \obj_y[28][1] , \obj_y[28][0] , \obj_y[29][3] ,
         \obj_y[29][2] , \obj_y[29][1] , \obj_y[29][0] , \obj_y[30][3] ,
         \obj_y[30][2] , \obj_y[30][1] , \obj_y[30][0] , \obj_y[31][3] ,
         \obj_y[31][2] , \obj_y[31][1] , \obj_y[31][0] , \obj_y[32][3] ,
         \obj_y[32][2] , \obj_y[32][1] , \obj_y[32][0] , \obj_y[33][3] ,
         \obj_y[33][2] , \obj_y[33][1] , \obj_y[33][0] , \obj_y[34][3] ,
         \obj_y[34][2] , \obj_y[34][1] , \obj_y[34][0] , \obj_y[35][3] ,
         \obj_y[35][2] , \obj_y[35][1] , \obj_y[35][0] , \obj_y[36][3] ,
         \obj_y[36][2] , \obj_y[36][1] , \obj_y[36][0] , \obj_y[37][3] ,
         \obj_y[37][2] , \obj_y[37][1] , \obj_y[37][0] , \obj_y[38][3] ,
         \obj_y[38][2] , \obj_y[38][1] , \obj_y[38][0] , \obj_y[39][3] ,
         \obj_y[39][2] , \obj_y[39][1] , \obj_y[39][0] , N918, N919, N920,
         N972, N973, N974, N1211, N1212, N1213, N1214, N1215, N1216, N1271,
         N1272, N1273, N1274, N1275, N1276, N1277, N1278, N1279, N1293, N1294,
         N1295, N1296, N1297, N1298, N1299, N1300, N1301, N1327, N1334, N1546,
         N1655, N1657, N1696, N1697, N1698, N1699, N1700, N1769, n122, n123,
         n124, n140, n167, n169, n171, n173, n174, n175, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, N999, N998, N997, N996, N994, N993, N992, N991,
         N990, N989, N988, N986, N1001, N1000, N1017, N1016, N1015, N1014,
         N1013, N1012, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1002,
         \r533/SUM[0] , \r533/SUM[1] , \r533/SUM[2] , \r533/SUM[3] ,
         \r533/SUM[4] , \r533/SUM[5] , \add_40/carry[3] , \add_40/carry[4] ,
         \add_40/carry[5] , \add_40/carry[6] , \add_40/carry[7] ,
         \mult_40/n13 , \mult_40/n12 , \mult_40/n11 , \mult_40/n10 ,
         \mult_40/n9 , \mult_40/n8 , \mult_40/n7 , \mult_40/n6 , \mult_40/n5 ,
         \mult_40/n4 , \mult_40/n3 , \mult_40/n2 , \mult_40_2/n13 ,
         \mult_40_2/n12 , \mult_40_2/n11 , \mult_40_2/n10 , \mult_40_2/n9 ,
         \mult_40_2/n8 , \mult_40_2/n7 , \mult_40_2/n6 , \mult_40_2/n5 ,
         \mult_40_2/n4 , \mult_40_2/n3 , \mult_40_2/n2 , \add_39/carry[3] ,
         \add_39/carry[4] , \add_39/carry[5] , \add_39/carry[6] ,
         \add_39/carry[7] , \mult_39/n13 , \mult_39/n12 , \mult_39/n11 ,
         \mult_39/n10 , \mult_39/n9 , \mult_39/n8 , \mult_39/n7 , \mult_39/n6 ,
         \mult_39/n5 , \mult_39/n4 , \mult_39/n3 , \mult_39/n2 ,
         \mult_39_2/n13 , \mult_39_2/n12 , \mult_39_2/n11 , \mult_39_2/n10 ,
         \mult_39_2/n9 , \mult_39_2/n8 , \mult_39_2/n7 , \mult_39_2/n6 ,
         \mult_39_2/n5 , \mult_39_2/n4 , \mult_39_2/n3 , \mult_39_2/n2 , n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1283,
         n1285, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309,
         n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319,
         n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329,
         n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339,
         n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349,
         n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359,
         n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369,
         n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379,
         n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389,
         n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399,
         n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409,
         n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419,
         n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429,
         n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469,
         n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479,
         n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489,
         n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499,
         n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509,
         n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519,
         n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529,
         n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539,
         n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549,
         n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559,
         n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569,
         n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579,
         n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589,
         n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599,
         n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609,
         n1610, n1611, n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619,
         n1620, n1621, n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629,
         n1630, n1631, n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639,
         n1640, n1641, n1642, n1643, n1644, n1645, n1646, n1647, n1648, n1649,
         n1650, n1651, n1652, n1653, n1654, n1655, n1656, n1657, n1658, n1659,
         n1660, n1661, n1662, n1663, n1664, n1665, n1666, n1667, n1668, n1669,
         n1670, n1671, n1672, n1673, n1674, n1675, n1676, n1677, n1678, n1679,
         n1680, n1681, n1682, n1683, n1684, n1685, n1686, n1687, n1688, n1689,
         n1690, n1691, n1692, n1693, n1694, n1695, n1696, n1697, n1698, n1699,
         n1700, n1701, n1702, n1703, n1704, n1705, n1706, n1707, n1708;
  wire   [5:0] point_counter;
  wire   [3:0] x_diff1;
  wire   [3:0] y_diff1;
  wire   [3:0] x_diff2;
  wire   [3:0] y_diff2;
  wire   [2:0] next_state;
  wire   [8:0] distance1;
  wire   [8:0] distance2;
  wire   [2:0] state;
  wire   [5:0] counter;
  wire   [8:0] circle_counter;
  wire   [8:0] circle_counter2;
  wire   [2:0] fix_counter;
  wire   [3:0] Max_C1X;
  wire   [3:0] Max_C1Y;
  wire   [3:0] Max_C2X;
  wire   [3:0] Max_C2Y;
  wire   [5:0] coverage;
  wire   [5:0] Max_cover;
  wire   [5:2] \r536/carry ;
  wire   [5:2] \r533/carry ;
  wire   [5:2] \r519/carry ;

  DFFRX4 \state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n1650), .Q(state[1]), .QN(n123) );
  DFFTRX4 \point_counter_reg[0]  ( .D(N1211), .RN(n1344), .CK(CLK), .Q(
        point_counter[0]), .QN(n140) );
  DFFTRX4 \point_counter_reg[1]  ( .D(N1212), .RN(n1344), .CK(CLK), .Q(
        point_counter[1]), .QN(n1327) );
  DFFTRX4 \point_counter_reg[2]  ( .D(N1213), .RN(n1344), .CK(CLK), .Q(
        point_counter[2]), .QN(n1309) );
  DFFTRX4 \point_counter_reg[3]  ( .D(N1214), .RN(n1344), .CK(CLK), .Q(
        point_counter[3]), .QN(n1301) );
  DFFRX4 \state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n1650), .Q(state[2]), .QN(n122) );
  DFFRX4 \state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n1650), .Q(state[0]), .QN(n124) );
  DFFRX4 \counter_reg[1]  ( .D(n545), .CK(CLK), .RN(n1650), .Q(counter[1]), 
        .QN(n174) );
  DFFRX4 \counter_reg[2]  ( .D(n534), .CK(CLK), .RN(n1650), .Q(counter[2]), 
        .QN(n173) );
  OAI22X4 U61 ( .A0(n1670), .A1(n194), .B0(n1264), .B1(n195), .Y(y_diff2[1])
         );
  OAI22X4 U64 ( .A0(N972), .A1(n1692), .B0(n197), .B1(n184), .Y(n179) );
  OAI22X4 U79 ( .A0(n1671), .A1(n207), .B0(n1255), .B1(n208), .Y(y_diff1[2])
         );
  OAI22X4 U85 ( .A0(n1671), .A1(n214), .B0(n1255), .B1(n215), .Y(y_diff1[1])
         );
  OAI22X4 U88 ( .A0(N972), .A1(n1699), .B0(n217), .B1(n204), .Y(n199) );
  OAI22X4 U103 ( .A0(n1675), .A1(n227), .B0(n1267), .B1(n228), .Y(x_diff2[2])
         );
  OAI22X4 U109 ( .A0(n1675), .A1(n234), .B0(n1267), .B1(n235), .Y(x_diff2[1])
         );
  OAI22X4 U112 ( .A0(N918), .A1(n1688), .B0(n237), .B1(n224), .Y(n219) );
  OAI22X4 U133 ( .A0(n1676), .A1(n254), .B0(n239), .B1(n255), .Y(x_diff1[1])
         );
  OAI22X4 U136 ( .A0(N918), .A1(n1305), .B0(n257), .B1(n244), .Y(n239) );
  OAI21X4 U139 ( .A0(n1308), .A1(n1281), .B0(n250), .Y(n258) );
  OAI31X2 U201 ( .A0(n310), .A1(n313), .A2(n285), .B0(n314), .Y(n290) );
  OAI31X2 U230 ( .A0(n310), .A1(n284), .A2(n285), .B0(n314), .Y(n319) );
  AOI31X2 U300 ( .A0(n379), .A1(n380), .A2(n345), .B0(n377), .Y(n378) );
  NOR4X6 U419 ( .A(n169), .B(n344), .C(counter[0]), .D(counter[5]), .Y(n451)
         );
  LASER_DW01_inc_0 add_89_S2 ( .A(circle_counter2), .SUM({N1301, N1300, N1299, 
        N1298, N1297, N1296, N1295, N1294, N1293}) );
  LASER_DW01_inc_1 add_83_S2 ( .A(circle_counter), .SUM({N1279, N1278, N1277, 
        N1276, N1275, N1274, N1273, N1272, N1271}) );
  ADDHXL \mult_39/U6  ( .A(x_diff1[1]), .B(\mult_39/n13 ), .CO(\mult_39/n5 ), 
        .S(N988) );
  DFFQX1 \Max_C2X_reg[1]  ( .D(n479), .CK(CLK), .Q(Max_C2X[1]) );
  DFFQX1 \Max_C2X_reg[2]  ( .D(n478), .CK(CLK), .Q(Max_C2X[2]) );
  DFFQX1 \Max_C2X_reg[3]  ( .D(n477), .CK(CLK), .Q(Max_C2X[3]) );
  DFFQX1 \Max_C2Y_reg[1]  ( .D(n503), .CK(CLK), .Q(Max_C2Y[1]) );
  DFFQX1 \Max_C2Y_reg[2]  ( .D(n502), .CK(CLK), .Q(Max_C2Y[2]) );
  DFFQX1 \Max_C2Y_reg[3]  ( .D(n501), .CK(CLK), .Q(Max_C2Y[3]) );
  DFFQX1 \Max_C2Y_reg[0]  ( .D(n504), .CK(CLK), .Q(Max_C2Y[0]) );
  DFFQX1 \Max_C1X_reg[1]  ( .D(n495), .CK(CLK), .Q(Max_C1X[1]) );
  DFFQX1 \Max_C1X_reg[2]  ( .D(n494), .CK(CLK), .Q(Max_C1X[2]) );
  DFFQX1 \Max_C1X_reg[3]  ( .D(n493), .CK(CLK), .Q(Max_C1X[3]) );
  DFFQX1 \Max_C1Y_reg[1]  ( .D(n487), .CK(CLK), .Q(Max_C1Y[1]) );
  DFFQX1 \Max_C1Y_reg[2]  ( .D(n486), .CK(CLK), .Q(Max_C1Y[2]) );
  DFFQX1 \Max_C1Y_reg[3]  ( .D(n485), .CK(CLK), .Q(Max_C1Y[3]) );
  DFFQX1 \Max_C1Y_reg[0]  ( .D(n488), .CK(CLK), .Q(Max_C1Y[0]) );
  DFFQX1 \Max_C2X_reg[0]  ( .D(n480), .CK(CLK), .Q(Max_C2X[0]) );
  DFFQX1 \Max_C1X_reg[0]  ( .D(n496), .CK(CLK), .Q(Max_C1X[0]) );
  DFFQX1 \Max_cover_reg[5]  ( .D(n523), .CK(CLK), .Q(Max_cover[5]) );
  DFFQX1 \coverage_reg[5]  ( .D(n529), .CK(CLK), .Q(coverage[5]) );
  DFFQX1 \Max_cover_reg[4]  ( .D(n518), .CK(CLK), .Q(Max_cover[4]) );
  DFFQX1 \Max_cover_reg[2]  ( .D(n520), .CK(CLK), .Q(Max_cover[2]) );
  DFFQX1 \Max_cover_reg[1]  ( .D(n521), .CK(CLK), .Q(Max_cover[1]) );
  DFFQX1 \Max_cover_reg[0]  ( .D(n522), .CK(CLK), .Q(Max_cover[0]) );
  DFFQX1 \Max_cover_reg[3]  ( .D(n519), .CK(CLK), .Q(Max_cover[3]) );
  DFFQX1 \coverage_reg[3]  ( .D(n525), .CK(CLK), .Q(coverage[3]) );
  EDFFX1 \obj_x_reg[5][3]  ( .D(X[3]), .E(n1350), .CK(CLK), .Q(\obj_x[5][3] )
         );
  EDFFX1 \obj_y_reg[34][1]  ( .D(Y[1]), .E(n1385), .CK(CLK), .Q(\obj_y[34][1] ) );
  EDFFX1 \obj_y_reg[34][2]  ( .D(Y[2]), .E(n1385), .CK(CLK), .Q(\obj_y[34][2] ) );
  EDFFX1 \obj_y_reg[34][3]  ( .D(Y[3]), .E(n1385), .CK(CLK), .Q(\obj_y[34][3] ) );
  EDFFX1 \obj_x_reg[34][1]  ( .D(X[1]), .E(n1385), .CK(CLK), .Q(\obj_x[34][1] ) );
  EDFFX1 \obj_x_reg[34][2]  ( .D(X[2]), .E(n1385), .CK(CLK), .Q(\obj_x[34][2] ) );
  EDFFX1 \obj_x_reg[34][3]  ( .D(X[3]), .E(n1385), .CK(CLK), .Q(\obj_x[34][3] ) );
  EDFFX1 \obj_x_reg[34][0]  ( .D(X[0]), .E(n1385), .CK(CLK), .Q(\obj_x[34][0] ) );
  EDFFX1 \obj_y_reg[0][1]  ( .D(Y[1]), .E(n1353), .CK(CLK), .Q(\obj_y[0][1] )
         );
  EDFFX1 \obj_y_reg[0][2]  ( .D(Y[2]), .E(n1353), .CK(CLK), .Q(\obj_y[0][2] )
         );
  EDFFX1 \obj_y_reg[0][3]  ( .D(Y[3]), .E(n1353), .CK(CLK), .Q(\obj_y[0][3] )
         );
  EDFFX1 \obj_y_reg[0][0]  ( .D(Y[0]), .E(n1353), .CK(CLK), .Q(\obj_y[0][0] )
         );
  EDFFX1 \obj_x_reg[0][1]  ( .D(X[1]), .E(n1353), .CK(CLK), .Q(\obj_x[0][1] )
         );
  EDFFX1 \obj_x_reg[0][2]  ( .D(X[2]), .E(n1353), .CK(CLK), .Q(\obj_x[0][2] )
         );
  EDFFX1 \obj_x_reg[0][3]  ( .D(X[3]), .E(n1353), .CK(CLK), .Q(\obj_x[0][3] )
         );
  EDFFX1 \obj_x_reg[0][0]  ( .D(X[0]), .E(n1353), .CK(CLK), .Q(\obj_x[0][0] )
         );
  EDFFX1 \obj_y_reg[16][1]  ( .D(Y[1]), .E(n1384), .CK(CLK), .Q(\obj_y[16][1] ) );
  EDFFX1 \obj_y_reg[16][2]  ( .D(Y[2]), .E(n1384), .CK(CLK), .Q(\obj_y[16][2] ) );
  EDFFX1 \obj_y_reg[16][3]  ( .D(Y[3]), .E(n1384), .CK(CLK), .Q(\obj_y[16][3] ) );
  EDFFX1 \obj_y_reg[16][0]  ( .D(Y[0]), .E(n1384), .CK(CLK), .Q(\obj_y[16][0] ) );
  EDFFX1 \obj_x_reg[16][1]  ( .D(X[1]), .E(n1384), .CK(CLK), .Q(\obj_x[16][1] ) );
  EDFFX1 \obj_x_reg[16][2]  ( .D(X[2]), .E(n1384), .CK(CLK), .Q(\obj_x[16][2] ) );
  EDFFX1 \obj_x_reg[16][3]  ( .D(X[3]), .E(n1384), .CK(CLK), .Q(\obj_x[16][3] ) );
  EDFFX1 \obj_x_reg[16][0]  ( .D(X[0]), .E(n1384), .CK(CLK), .Q(\obj_x[16][0] ) );
  EDFFX1 \obj_y_reg[32][1]  ( .D(Y[1]), .E(n1382), .CK(CLK), .Q(\obj_y[32][1] ) );
  EDFFX1 \obj_y_reg[32][2]  ( .D(Y[2]), .E(n1382), .CK(CLK), .Q(\obj_y[32][2] ) );
  EDFFX1 \obj_y_reg[32][3]  ( .D(Y[3]), .E(n1382), .CK(CLK), .Q(\obj_y[32][3] ) );
  EDFFX1 \obj_x_reg[32][1]  ( .D(X[1]), .E(n1382), .CK(CLK), .Q(\obj_x[32][1] ) );
  EDFFX1 \obj_x_reg[32][2]  ( .D(X[2]), .E(n1382), .CK(CLK), .Q(\obj_x[32][2] ) );
  EDFFX1 \obj_x_reg[32][3]  ( .D(X[3]), .E(n1382), .CK(CLK), .Q(\obj_x[32][3] ) );
  EDFFX1 \obj_x_reg[32][0]  ( .D(X[0]), .E(n1382), .CK(CLK), .Q(\obj_x[32][0] ) );
  EDFFX1 \obj_y_reg[1][1]  ( .D(Y[1]), .E(n1352), .CK(CLK), .Q(\obj_y[1][1] )
         );
  EDFFX1 \obj_y_reg[1][2]  ( .D(Y[2]), .E(n1352), .CK(CLK), .Q(\obj_y[1][2] )
         );
  EDFFX1 \obj_y_reg[1][3]  ( .D(Y[3]), .E(n1352), .CK(CLK), .Q(\obj_y[1][3] )
         );
  EDFFX1 \obj_y_reg[1][0]  ( .D(Y[0]), .E(n1352), .CK(CLK), .Q(\obj_y[1][0] )
         );
  EDFFX1 \obj_x_reg[1][1]  ( .D(X[1]), .E(n1352), .CK(CLK), .Q(\obj_x[1][1] )
         );
  EDFFX1 \obj_x_reg[1][2]  ( .D(X[2]), .E(n1352), .CK(CLK), .Q(\obj_x[1][2] )
         );
  EDFFX1 \obj_x_reg[1][3]  ( .D(X[3]), .E(n1352), .CK(CLK), .Q(\obj_x[1][3] )
         );
  EDFFX1 \obj_x_reg[1][0]  ( .D(X[0]), .E(n1352), .CK(CLK), .Q(\obj_x[1][0] )
         );
  EDFFX1 \obj_y_reg[17][1]  ( .D(Y[1]), .E(n1381), .CK(CLK), .Q(\obj_y[17][1] ) );
  EDFFX1 \obj_y_reg[17][2]  ( .D(Y[2]), .E(n1381), .CK(CLK), .Q(\obj_y[17][2] ) );
  EDFFX1 \obj_y_reg[17][3]  ( .D(Y[3]), .E(n1381), .CK(CLK), .Q(\obj_y[17][3] ) );
  EDFFX1 \obj_x_reg[17][1]  ( .D(X[1]), .E(n1381), .CK(CLK), .Q(\obj_x[17][1] ) );
  EDFFX1 \obj_x_reg[17][2]  ( .D(X[2]), .E(n1381), .CK(CLK), .Q(\obj_x[17][2] ) );
  EDFFX1 \obj_x_reg[17][3]  ( .D(X[3]), .E(n1381), .CK(CLK), .Q(\obj_x[17][3] ) );
  EDFFX1 \obj_x_reg[17][0]  ( .D(X[0]), .E(n1381), .CK(CLK), .Q(\obj_x[17][0] ) );
  EDFFX1 \obj_y_reg[4][2]  ( .D(Y[2]), .E(n1351), .CK(CLK), .Q(\obj_y[4][2] )
         );
  EDFFX1 \obj_y_reg[4][3]  ( .D(Y[3]), .E(n1351), .CK(CLK), .Q(\obj_y[4][3] )
         );
  EDFFX1 \obj_y_reg[4][0]  ( .D(Y[0]), .E(n1351), .CK(CLK), .Q(\obj_y[4][0] )
         );
  EDFFX1 \obj_x_reg[4][1]  ( .D(X[1]), .E(n1351), .CK(CLK), .Q(\obj_x[4][1] )
         );
  EDFFX1 \obj_x_reg[4][2]  ( .D(X[2]), .E(n1351), .CK(CLK), .Q(\obj_x[4][2] )
         );
  EDFFX1 \obj_x_reg[4][3]  ( .D(X[3]), .E(n1351), .CK(CLK), .Q(\obj_x[4][3] )
         );
  EDFFX1 \obj_x_reg[4][0]  ( .D(X[0]), .E(n1351), .CK(CLK), .Q(\obj_x[4][0] )
         );
  EDFFX1 \obj_y_reg[20][1]  ( .D(Y[1]), .E(n1378), .CK(CLK), .Q(\obj_y[20][1] ) );
  EDFFX1 \obj_y_reg[20][2]  ( .D(Y[2]), .E(n1378), .CK(CLK), .Q(\obj_y[20][2] ) );
  EDFFX1 \obj_y_reg[20][3]  ( .D(Y[3]), .E(n1378), .CK(CLK), .Q(\obj_y[20][3] ) );
  EDFFX1 \obj_y_reg[20][0]  ( .D(Y[0]), .E(n1378), .CK(CLK), .Q(\obj_y[20][0] ) );
  EDFFX1 \obj_x_reg[20][1]  ( .D(X[1]), .E(n1378), .CK(CLK), .Q(\obj_x[20][1] ) );
  EDFFX1 \obj_x_reg[20][2]  ( .D(X[2]), .E(n1378), .CK(CLK), .Q(\obj_x[20][2] ) );
  EDFFX1 \obj_x_reg[20][3]  ( .D(X[3]), .E(n1378), .CK(CLK), .Q(\obj_x[20][3] ) );
  EDFFX1 \obj_x_reg[20][0]  ( .D(X[0]), .E(n1378), .CK(CLK), .Q(\obj_x[20][0] ) );
  EDFFX1 \obj_y_reg[7][1]  ( .D(Y[1]), .E(n1348), .CK(CLK), .Q(\obj_y[7][1] )
         );
  EDFFX1 \obj_y_reg[7][2]  ( .D(Y[2]), .E(n1348), .CK(CLK), .Q(\obj_y[7][2] )
         );
  EDFFX1 \obj_y_reg[7][3]  ( .D(Y[3]), .E(n1348), .CK(CLK), .Q(\obj_y[7][3] )
         );
  EDFFX1 \obj_y_reg[7][0]  ( .D(Y[0]), .E(n1348), .CK(CLK), .Q(\obj_y[7][0] )
         );
  EDFFX1 \obj_x_reg[7][1]  ( .D(X[1]), .E(n1348), .CK(CLK), .Q(\obj_x[7][1] )
         );
  EDFFX1 \obj_x_reg[7][2]  ( .D(X[2]), .E(n1348), .CK(CLK), .Q(\obj_x[7][2] )
         );
  EDFFX1 \obj_x_reg[7][3]  ( .D(X[3]), .E(n1348), .CK(CLK), .Q(\obj_x[7][3] )
         );
  EDFFX1 \obj_y_reg[23][1]  ( .D(Y[1]), .E(n1372), .CK(CLK), .Q(\obj_y[23][1] ) );
  EDFFX1 \obj_y_reg[23][2]  ( .D(Y[2]), .E(n1372), .CK(CLK), .Q(\obj_y[23][2] ) );
  EDFFX1 \obj_y_reg[23][3]  ( .D(Y[3]), .E(n1372), .CK(CLK), .Q(\obj_y[23][3] ) );
  EDFFX1 \obj_x_reg[23][1]  ( .D(X[1]), .E(n1372), .CK(CLK), .Q(\obj_x[23][1] ) );
  EDFFX1 \obj_x_reg[23][2]  ( .D(X[2]), .E(n1372), .CK(CLK), .Q(\obj_x[23][2] ) );
  EDFFX1 \obj_x_reg[23][3]  ( .D(X[3]), .E(n1372), .CK(CLK), .Q(\obj_x[23][3] ) );
  EDFFX1 \obj_x_reg[23][0]  ( .D(X[0]), .E(n1372), .CK(CLK), .Q(\obj_x[23][0] ) );
  EDFFX1 \obj_y_reg[4][1]  ( .D(Y[1]), .E(n1351), .CK(CLK), .Q(\obj_y[4][1] )
         );
  EDFFX1 \obj_x_reg[7][0]  ( .D(X[0]), .E(n1348), .CK(CLK), .Q(\obj_x[7][0] )
         );
  EDFFX1 \obj_y_reg[12][1]  ( .D(Y[1]), .E(n1359), .CK(CLK), .Q(\obj_y[12][1] ) );
  EDFFX1 \obj_x_reg[15][0]  ( .D(X[0]), .E(n1356), .CK(CLK), .Q(\obj_x[15][0] ) );
  EDFFX1 \obj_y_reg[35][1]  ( .D(Y[1]), .E(n1367), .CK(CLK), .Q(\obj_y[35][1] ) );
  EDFFX1 \obj_y_reg[35][2]  ( .D(Y[2]), .E(n1367), .CK(CLK), .Q(\obj_y[35][2] ) );
  EDFFX1 \obj_y_reg[35][3]  ( .D(Y[3]), .E(n1367), .CK(CLK), .Q(\obj_y[35][3] ) );
  EDFFX1 \obj_y_reg[35][0]  ( .D(Y[0]), .E(n1367), .CK(CLK), .Q(\obj_y[35][0] ) );
  EDFFX1 \obj_x_reg[35][1]  ( .D(X[1]), .E(n1367), .CK(CLK), .Q(\obj_x[35][1] ) );
  EDFFX1 \obj_x_reg[35][2]  ( .D(X[2]), .E(n1367), .CK(CLK), .Q(\obj_x[35][2] ) );
  EDFFX1 \obj_x_reg[35][3]  ( .D(X[3]), .E(n1367), .CK(CLK), .Q(\obj_x[35][3] ) );
  EDFFX1 \obj_x_reg[35][0]  ( .D(X[0]), .E(n1367), .CK(CLK), .Q(\obj_x[35][0] ) );
  EDFFX1 \obj_y_reg[8][1]  ( .D(Y[1]), .E(n1361), .CK(CLK), .Q(\obj_y[8][1] )
         );
  EDFFX1 \obj_y_reg[8][2]  ( .D(Y[2]), .E(n1361), .CK(CLK), .Q(\obj_y[8][2] )
         );
  EDFFX1 \obj_y_reg[8][3]  ( .D(Y[3]), .E(n1361), .CK(CLK), .Q(\obj_y[8][3] )
         );
  EDFFX1 \obj_y_reg[8][0]  ( .D(Y[0]), .E(n1361), .CK(CLK), .Q(\obj_y[8][0] )
         );
  EDFFX1 \obj_x_reg[8][1]  ( .D(X[1]), .E(n1361), .CK(CLK), .Q(\obj_x[8][1] )
         );
  EDFFX1 \obj_x_reg[8][2]  ( .D(X[2]), .E(n1361), .CK(CLK), .Q(\obj_x[8][2] )
         );
  EDFFX1 \obj_x_reg[8][3]  ( .D(X[3]), .E(n1361), .CK(CLK), .Q(\obj_x[8][3] )
         );
  EDFFX1 \obj_x_reg[8][0]  ( .D(X[0]), .E(n1361), .CK(CLK), .Q(\obj_x[8][0] )
         );
  EDFFX1 \obj_y_reg[24][1]  ( .D(Y[1]), .E(n1383), .CK(CLK), .Q(\obj_y[24][1] ) );
  EDFFX1 \obj_y_reg[24][2]  ( .D(Y[2]), .E(n1383), .CK(CLK), .Q(\obj_y[24][2] ) );
  EDFFX1 \obj_y_reg[24][3]  ( .D(Y[3]), .E(n1383), .CK(CLK), .Q(\obj_y[24][3] ) );
  EDFFX1 \obj_y_reg[24][0]  ( .D(Y[0]), .E(n1383), .CK(CLK), .Q(\obj_y[24][0] ) );
  EDFFX1 \obj_x_reg[24][1]  ( .D(X[1]), .E(n1383), .CK(CLK), .Q(\obj_x[24][1] ) );
  EDFFX1 \obj_x_reg[24][2]  ( .D(X[2]), .E(n1383), .CK(CLK), .Q(\obj_x[24][2] ) );
  EDFFX1 \obj_x_reg[24][3]  ( .D(X[3]), .E(n1383), .CK(CLK), .Q(\obj_x[24][3] ) );
  EDFFX1 \obj_x_reg[24][0]  ( .D(X[0]), .E(n1383), .CK(CLK), .Q(\obj_x[24][0] ) );
  EDFFX1 \obj_y_reg[9][1]  ( .D(Y[1]), .E(n1360), .CK(CLK), .Q(\obj_y[9][1] )
         );
  EDFFX1 \obj_y_reg[9][2]  ( .D(Y[2]), .E(n1360), .CK(CLK), .Q(\obj_y[9][2] )
         );
  EDFFX1 \obj_y_reg[9][3]  ( .D(Y[3]), .E(n1360), .CK(CLK), .Q(\obj_y[9][3] )
         );
  EDFFX1 \obj_y_reg[9][0]  ( .D(Y[0]), .E(n1360), .CK(CLK), .Q(\obj_y[9][0] )
         );
  EDFFX1 \obj_x_reg[9][1]  ( .D(X[1]), .E(n1360), .CK(CLK), .Q(\obj_x[9][1] )
         );
  EDFFX1 \obj_x_reg[9][2]  ( .D(X[2]), .E(n1360), .CK(CLK), .Q(\obj_x[9][2] )
         );
  EDFFX1 \obj_x_reg[9][3]  ( .D(X[3]), .E(n1360), .CK(CLK), .Q(\obj_x[9][3] )
         );
  EDFFX1 \obj_x_reg[9][0]  ( .D(X[0]), .E(n1360), .CK(CLK), .Q(\obj_x[9][0] )
         );
  EDFFX1 \obj_y_reg[25][1]  ( .D(Y[1]), .E(n1380), .CK(CLK), .Q(\obj_y[25][1] ) );
  EDFFX1 \obj_y_reg[25][2]  ( .D(Y[2]), .E(n1380), .CK(CLK), .Q(\obj_y[25][2] ) );
  EDFFX1 \obj_y_reg[25][3]  ( .D(Y[3]), .E(n1380), .CK(CLK), .Q(\obj_y[25][3] ) );
  EDFFX1 \obj_x_reg[25][1]  ( .D(X[1]), .E(n1380), .CK(CLK), .Q(\obj_x[25][1] ) );
  EDFFX1 \obj_x_reg[25][2]  ( .D(X[2]), .E(n1380), .CK(CLK), .Q(\obj_x[25][2] ) );
  EDFFX1 \obj_x_reg[25][3]  ( .D(X[3]), .E(n1380), .CK(CLK), .Q(\obj_x[25][3] ) );
  EDFFX1 \obj_x_reg[25][0]  ( .D(X[0]), .E(n1380), .CK(CLK), .Q(\obj_x[25][0] ) );
  EDFFX1 \obj_y_reg[33][1]  ( .D(Y[1]), .E(n1379), .CK(CLK), .Q(\obj_y[33][1] ) );
  EDFFX1 \obj_y_reg[33][2]  ( .D(Y[2]), .E(n1379), .CK(CLK), .Q(\obj_y[33][2] ) );
  EDFFX1 \obj_y_reg[33][3]  ( .D(Y[3]), .E(n1379), .CK(CLK), .Q(\obj_y[33][3] ) );
  EDFFX1 \obj_y_reg[33][0]  ( .D(Y[0]), .E(n1379), .CK(CLK), .Q(\obj_y[33][0] ) );
  EDFFX1 \obj_x_reg[33][1]  ( .D(X[1]), .E(n1379), .CK(CLK), .Q(\obj_x[33][1] ) );
  EDFFX1 \obj_x_reg[33][2]  ( .D(X[2]), .E(n1379), .CK(CLK), .Q(\obj_x[33][2] ) );
  EDFFX1 \obj_x_reg[33][3]  ( .D(X[3]), .E(n1379), .CK(CLK), .Q(\obj_x[33][3] ) );
  EDFFX1 \obj_x_reg[33][0]  ( .D(X[0]), .E(n1379), .CK(CLK), .Q(\obj_x[33][0] ) );
  EDFFX1 \obj_y_reg[12][2]  ( .D(Y[2]), .E(n1359), .CK(CLK), .Q(\obj_y[12][2] ) );
  EDFFX1 \obj_y_reg[12][3]  ( .D(Y[3]), .E(n1359), .CK(CLK), .Q(\obj_y[12][3] ) );
  EDFFX1 \obj_y_reg[12][0]  ( .D(Y[0]), .E(n1359), .CK(CLK), .Q(\obj_y[12][0] ) );
  EDFFX1 \obj_x_reg[12][1]  ( .D(X[1]), .E(n1359), .CK(CLK), .Q(\obj_x[12][1] ) );
  EDFFX1 \obj_x_reg[12][2]  ( .D(X[2]), .E(n1359), .CK(CLK), .Q(\obj_x[12][2] ) );
  EDFFX1 \obj_x_reg[12][3]  ( .D(X[3]), .E(n1359), .CK(CLK), .Q(\obj_x[12][3] ) );
  EDFFX1 \obj_x_reg[12][0]  ( .D(X[0]), .E(n1359), .CK(CLK), .Q(\obj_x[12][0] ) );
  EDFFX1 \obj_y_reg[28][1]  ( .D(Y[1]), .E(n1377), .CK(CLK), .Q(\obj_y[28][1] ) );
  EDFFX1 \obj_y_reg[28][2]  ( .D(Y[2]), .E(n1377), .CK(CLK), .Q(\obj_y[28][2] ) );
  EDFFX1 \obj_y_reg[28][3]  ( .D(Y[3]), .E(n1377), .CK(CLK), .Q(\obj_y[28][3] ) );
  EDFFX1 \obj_y_reg[28][0]  ( .D(Y[0]), .E(n1377), .CK(CLK), .Q(\obj_y[28][0] ) );
  EDFFX1 \obj_x_reg[28][1]  ( .D(X[1]), .E(n1377), .CK(CLK), .Q(\obj_x[28][1] ) );
  EDFFX1 \obj_x_reg[28][2]  ( .D(X[2]), .E(n1377), .CK(CLK), .Q(\obj_x[28][2] ) );
  EDFFX1 \obj_x_reg[28][3]  ( .D(X[3]), .E(n1377), .CK(CLK), .Q(\obj_x[28][3] ) );
  EDFFX1 \obj_x_reg[28][0]  ( .D(X[0]), .E(n1377), .CK(CLK), .Q(\obj_x[28][0] ) );
  EDFFX1 \obj_y_reg[15][1]  ( .D(Y[1]), .E(n1356), .CK(CLK), .Q(\obj_y[15][1] ) );
  EDFFX1 \obj_y_reg[15][2]  ( .D(Y[2]), .E(n1356), .CK(CLK), .Q(\obj_y[15][2] ) );
  EDFFX1 \obj_y_reg[15][3]  ( .D(Y[3]), .E(n1356), .CK(CLK), .Q(\obj_y[15][3] ) );
  EDFFX1 \obj_y_reg[15][0]  ( .D(Y[0]), .E(n1356), .CK(CLK), .Q(\obj_y[15][0] ) );
  EDFFX1 \obj_x_reg[15][1]  ( .D(X[1]), .E(n1356), .CK(CLK), .Q(\obj_x[15][1] ) );
  EDFFX1 \obj_x_reg[15][2]  ( .D(X[2]), .E(n1356), .CK(CLK), .Q(\obj_x[15][2] ) );
  EDFFX1 \obj_x_reg[15][3]  ( .D(X[3]), .E(n1356), .CK(CLK), .Q(\obj_x[15][3] ) );
  EDFFX1 \obj_y_reg[31][1]  ( .D(Y[1]), .E(n1371), .CK(CLK), .Q(\obj_y[31][1] ) );
  EDFFX1 \obj_y_reg[31][2]  ( .D(Y[2]), .E(n1371), .CK(CLK), .Q(\obj_y[31][2] ) );
  EDFFX1 \obj_y_reg[31][3]  ( .D(Y[3]), .E(n1371), .CK(CLK), .Q(\obj_y[31][3] ) );
  EDFFX1 \obj_x_reg[31][1]  ( .D(X[1]), .E(n1371), .CK(CLK), .Q(\obj_x[31][1] ) );
  EDFFX1 \obj_x_reg[31][2]  ( .D(X[2]), .E(n1371), .CK(CLK), .Q(\obj_x[31][2] ) );
  EDFFX1 \obj_x_reg[31][3]  ( .D(X[3]), .E(n1371), .CK(CLK), .Q(\obj_x[31][3] ) );
  EDFFX1 \obj_x_reg[31][0]  ( .D(X[0]), .E(n1371), .CK(CLK), .Q(\obj_x[31][0] ) );
  EDFFX1 \obj_y_reg[3][2]  ( .D(Y[2]), .E(n1355), .CK(CLK), .Q(\obj_y[3][2] )
         );
  EDFFX1 \obj_y_reg[3][3]  ( .D(Y[3]), .E(n1355), .CK(CLK), .Q(\obj_y[3][3] )
         );
  EDFFX1 \obj_x_reg[3][2]  ( .D(X[2]), .E(n1355), .CK(CLK), .Q(\obj_x[3][2] )
         );
  EDFFX1 \obj_x_reg[3][3]  ( .D(X[3]), .E(n1355), .CK(CLK), .Q(\obj_x[3][3] )
         );
  EDFFX1 \obj_y_reg[19][1]  ( .D(Y[1]), .E(n1369), .CK(CLK), .Q(\obj_y[19][1] ) );
  EDFFX1 \obj_y_reg[19][2]  ( .D(Y[2]), .E(n1369), .CK(CLK), .Q(\obj_y[19][2] ) );
  EDFFX1 \obj_y_reg[19][3]  ( .D(Y[3]), .E(n1369), .CK(CLK), .Q(\obj_y[19][3] ) );
  EDFFX1 \obj_x_reg[19][1]  ( .D(X[1]), .E(n1369), .CK(CLK), .Q(\obj_x[19][1] ) );
  EDFFX1 \obj_x_reg[19][2]  ( .D(X[2]), .E(n1369), .CK(CLK), .Q(\obj_x[19][2] ) );
  EDFFX1 \obj_x_reg[19][3]  ( .D(X[3]), .E(n1369), .CK(CLK), .Q(\obj_x[19][3] ) );
  EDFFX1 \obj_x_reg[19][0]  ( .D(X[0]), .E(n1369), .CK(CLK), .Q(\obj_x[19][0] ) );
  EDFFX1 \obj_y_reg[2][2]  ( .D(Y[2]), .E(n1354), .CK(CLK), .Q(\obj_y[2][2] )
         );
  EDFFX1 \obj_y_reg[2][3]  ( .D(Y[3]), .E(n1354), .CK(CLK), .Q(\obj_y[2][3] )
         );
  EDFFX1 \obj_x_reg[2][1]  ( .D(X[1]), .E(n1354), .CK(CLK), .Q(\obj_x[2][1] )
         );
  EDFFX1 \obj_x_reg[2][2]  ( .D(X[2]), .E(n1354), .CK(CLK), .Q(\obj_x[2][2] )
         );
  EDFFX1 \obj_x_reg[2][3]  ( .D(X[3]), .E(n1354), .CK(CLK), .Q(\obj_x[2][3] )
         );
  EDFFX1 \obj_x_reg[2][0]  ( .D(X[0]), .E(n1354), .CK(CLK), .Q(\obj_x[2][0] )
         );
  EDFFX1 \obj_y_reg[18][1]  ( .D(Y[1]), .E(n1387), .CK(CLK), .Q(\obj_y[18][1] ) );
  EDFFX1 \obj_y_reg[18][2]  ( .D(Y[2]), .E(n1387), .CK(CLK), .Q(\obj_y[18][2] ) );
  EDFFX1 \obj_y_reg[18][3]  ( .D(Y[3]), .E(n1387), .CK(CLK), .Q(\obj_y[18][3] ) );
  EDFFX1 \obj_y_reg[18][0]  ( .D(Y[0]), .E(n1387), .CK(CLK), .Q(\obj_y[18][0] ) );
  EDFFX1 \obj_x_reg[18][1]  ( .D(X[1]), .E(n1387), .CK(CLK), .Q(\obj_x[18][1] ) );
  EDFFX1 \obj_x_reg[18][2]  ( .D(X[2]), .E(n1387), .CK(CLK), .Q(\obj_x[18][2] ) );
  EDFFX1 \obj_x_reg[18][3]  ( .D(X[3]), .E(n1387), .CK(CLK), .Q(\obj_x[18][3] ) );
  EDFFX1 \obj_x_reg[18][0]  ( .D(X[0]), .E(n1387), .CK(CLK), .Q(\obj_x[18][0] ) );
  EDFFX1 \obj_y_reg[36][1]  ( .D(Y[1]), .E(n1376), .CK(CLK), .Q(\obj_y[36][1] ) );
  EDFFX1 \obj_y_reg[36][2]  ( .D(Y[2]), .E(n1376), .CK(CLK), .Q(\obj_y[36][2] ) );
  EDFFX1 \obj_y_reg[36][3]  ( .D(Y[3]), .E(n1376), .CK(CLK), .Q(\obj_y[36][3] ) );
  EDFFX1 \obj_y_reg[36][0]  ( .D(Y[0]), .E(n1376), .CK(CLK), .Q(\obj_y[36][0] ) );
  EDFFX1 \obj_x_reg[36][1]  ( .D(X[1]), .E(n1376), .CK(CLK), .Q(\obj_x[36][1] ) );
  EDFFX1 \obj_x_reg[36][2]  ( .D(X[2]), .E(n1376), .CK(CLK), .Q(\obj_x[36][2] ) );
  EDFFX1 \obj_x_reg[36][3]  ( .D(X[3]), .E(n1376), .CK(CLK), .Q(\obj_x[36][3] ) );
  EDFFX1 \obj_x_reg[36][0]  ( .D(X[0]), .E(n1376), .CK(CLK), .Q(\obj_x[36][0] ) );
  EDFFX1 \obj_y_reg[5][2]  ( .D(Y[2]), .E(n1350), .CK(CLK), .Q(\obj_y[5][2] )
         );
  EDFFX1 \obj_y_reg[5][3]  ( .D(Y[3]), .E(n1350), .CK(CLK), .Q(\obj_y[5][3] )
         );
  EDFFX1 \obj_x_reg[5][2]  ( .D(X[2]), .E(n1350), .CK(CLK), .Q(\obj_x[5][2] )
         );
  EDFFX1 \obj_y_reg[21][2]  ( .D(Y[2]), .E(n1366), .CK(CLK), .Q(\obj_y[21][2] ) );
  EDFFX1 \obj_y_reg[21][3]  ( .D(Y[3]), .E(n1366), .CK(CLK), .Q(\obj_y[21][3] ) );
  EDFFX1 \obj_x_reg[21][1]  ( .D(X[1]), .E(n1366), .CK(CLK), .Q(\obj_x[21][1] ) );
  EDFFX1 \obj_x_reg[21][2]  ( .D(X[2]), .E(n1366), .CK(CLK), .Q(\obj_x[21][2] ) );
  EDFFX1 \obj_x_reg[21][3]  ( .D(X[3]), .E(n1366), .CK(CLK), .Q(\obj_x[21][3] ) );
  EDFFX1 \obj_x_reg[21][0]  ( .D(X[0]), .E(n1366), .CK(CLK), .Q(\obj_x[21][0] ) );
  EDFFX1 \obj_y_reg[6][2]  ( .D(Y[2]), .E(n1349), .CK(CLK), .Q(\obj_y[6][2] )
         );
  EDFFX1 \obj_y_reg[6][3]  ( .D(Y[3]), .E(n1349), .CK(CLK), .Q(\obj_y[6][3] )
         );
  EDFFX1 \obj_x_reg[6][1]  ( .D(X[1]), .E(n1349), .CK(CLK), .Q(\obj_x[6][1] )
         );
  EDFFX1 \obj_x_reg[6][2]  ( .D(X[2]), .E(n1349), .CK(CLK), .Q(\obj_x[6][2] )
         );
  EDFFX1 \obj_x_reg[6][3]  ( .D(X[3]), .E(n1349), .CK(CLK), .Q(\obj_x[6][3] )
         );
  EDFFX1 \obj_x_reg[6][0]  ( .D(X[0]), .E(n1349), .CK(CLK), .Q(\obj_x[6][0] )
         );
  EDFFX1 \obj_y_reg[22][1]  ( .D(Y[1]), .E(n1375), .CK(CLK), .Q(\obj_y[22][1] ) );
  EDFFX1 \obj_y_reg[22][2]  ( .D(Y[2]), .E(n1375), .CK(CLK), .Q(\obj_y[22][2] ) );
  EDFFX1 \obj_y_reg[22][3]  ( .D(Y[3]), .E(n1375), .CK(CLK), .Q(\obj_y[22][3] ) );
  EDFFX1 \obj_y_reg[22][0]  ( .D(Y[0]), .E(n1375), .CK(CLK), .Q(\obj_y[22][0] ) );
  EDFFX1 \obj_x_reg[22][1]  ( .D(X[1]), .E(n1375), .CK(CLK), .Q(\obj_x[22][1] ) );
  EDFFX1 \obj_x_reg[22][2]  ( .D(X[2]), .E(n1375), .CK(CLK), .Q(\obj_x[22][2] ) );
  EDFFX1 \obj_x_reg[22][3]  ( .D(X[3]), .E(n1375), .CK(CLK), .Q(\obj_x[22][3] ) );
  EDFFX1 \obj_x_reg[22][0]  ( .D(X[0]), .E(n1375), .CK(CLK), .Q(\obj_x[22][0] ) );
  EDFFX1 \obj_y_reg[38][1]  ( .D(Y[1]), .E(n1373), .CK(CLK), .Q(\obj_y[38][1] ) );
  EDFFX1 \obj_y_reg[38][2]  ( .D(Y[2]), .E(n1373), .CK(CLK), .Q(\obj_y[38][2] ) );
  EDFFX1 \obj_y_reg[38][3]  ( .D(Y[3]), .E(n1373), .CK(CLK), .Q(\obj_y[38][3] ) );
  EDFFX1 \obj_y_reg[38][0]  ( .D(Y[0]), .E(n1373), .CK(CLK), .Q(\obj_y[38][0] ) );
  EDFFX1 \obj_x_reg[38][1]  ( .D(X[1]), .E(n1373), .CK(CLK), .Q(\obj_x[38][1] ) );
  EDFFX1 \obj_x_reg[38][2]  ( .D(X[2]), .E(n1373), .CK(CLK), .Q(\obj_x[38][2] ) );
  EDFFX1 \obj_x_reg[38][3]  ( .D(X[3]), .E(n1373), .CK(CLK), .Q(\obj_x[38][3] ) );
  EDFFX1 \obj_x_reg[38][0]  ( .D(X[0]), .E(n1373), .CK(CLK), .Q(\obj_x[38][0] ) );
  EDFFX1 \obj_y_reg[11][2]  ( .D(Y[2]), .E(n1363), .CK(CLK), .Q(\obj_y[11][2] ) );
  EDFFX1 \obj_y_reg[11][3]  ( .D(Y[3]), .E(n1363), .CK(CLK), .Q(\obj_y[11][3] ) );
  EDFFX1 \obj_x_reg[11][2]  ( .D(X[2]), .E(n1363), .CK(CLK), .Q(\obj_x[11][2] ) );
  EDFFX1 \obj_x_reg[11][3]  ( .D(X[3]), .E(n1363), .CK(CLK), .Q(\obj_x[11][3] ) );
  EDFFX1 \obj_y_reg[27][1]  ( .D(Y[1]), .E(n1368), .CK(CLK), .Q(\obj_y[27][1] ) );
  EDFFX1 \obj_y_reg[27][2]  ( .D(Y[2]), .E(n1368), .CK(CLK), .Q(\obj_y[27][2] ) );
  EDFFX1 \obj_y_reg[27][3]  ( .D(Y[3]), .E(n1368), .CK(CLK), .Q(\obj_y[27][3] ) );
  EDFFX1 \obj_x_reg[27][1]  ( .D(X[1]), .E(n1368), .CK(CLK), .Q(\obj_x[27][1] ) );
  EDFFX1 \obj_x_reg[27][2]  ( .D(X[2]), .E(n1368), .CK(CLK), .Q(\obj_x[27][2] ) );
  EDFFX1 \obj_x_reg[27][3]  ( .D(X[3]), .E(n1368), .CK(CLK), .Q(\obj_x[27][3] ) );
  EDFFX1 \obj_x_reg[27][0]  ( .D(X[0]), .E(n1368), .CK(CLK), .Q(\obj_x[27][0] ) );
  EDFFX1 \obj_y_reg[10][2]  ( .D(Y[2]), .E(n1362), .CK(CLK), .Q(\obj_y[10][2] ) );
  EDFFX1 \obj_y_reg[10][3]  ( .D(Y[3]), .E(n1362), .CK(CLK), .Q(\obj_y[10][3] ) );
  EDFFX1 \obj_x_reg[10][1]  ( .D(X[1]), .E(n1362), .CK(CLK), .Q(\obj_x[10][1] ) );
  EDFFX1 \obj_x_reg[10][2]  ( .D(X[2]), .E(n1362), .CK(CLK), .Q(\obj_x[10][2] ) );
  EDFFX1 \obj_x_reg[10][3]  ( .D(X[3]), .E(n1362), .CK(CLK), .Q(\obj_x[10][3] ) );
  EDFFX1 \obj_x_reg[10][0]  ( .D(X[0]), .E(n1362), .CK(CLK), .Q(\obj_x[10][0] ) );
  EDFFX1 \obj_y_reg[26][1]  ( .D(Y[1]), .E(n1386), .CK(CLK), .Q(\obj_y[26][1] ) );
  EDFFX1 \obj_y_reg[26][2]  ( .D(Y[2]), .E(n1386), .CK(CLK), .Q(\obj_y[26][2] ) );
  EDFFX1 \obj_y_reg[26][3]  ( .D(Y[3]), .E(n1386), .CK(CLK), .Q(\obj_y[26][3] ) );
  EDFFX1 \obj_y_reg[26][0]  ( .D(Y[0]), .E(n1386), .CK(CLK), .Q(\obj_y[26][0] ) );
  EDFFX1 \obj_x_reg[26][1]  ( .D(X[1]), .E(n1386), .CK(CLK), .Q(\obj_x[26][1] ) );
  EDFFX1 \obj_x_reg[26][2]  ( .D(X[2]), .E(n1386), .CK(CLK), .Q(\obj_x[26][2] ) );
  EDFFX1 \obj_x_reg[26][3]  ( .D(X[3]), .E(n1386), .CK(CLK), .Q(\obj_x[26][3] ) );
  EDFFX1 \obj_x_reg[26][0]  ( .D(X[0]), .E(n1386), .CK(CLK), .Q(\obj_x[26][0] ) );
  EDFFX1 \obj_y_reg[13][2]  ( .D(Y[2]), .E(n1358), .CK(CLK), .Q(\obj_y[13][2] ) );
  EDFFX1 \obj_y_reg[13][3]  ( .D(Y[3]), .E(n1358), .CK(CLK), .Q(\obj_y[13][3] ) );
  EDFFX1 \obj_x_reg[13][2]  ( .D(X[2]), .E(n1358), .CK(CLK), .Q(\obj_x[13][2] ) );
  EDFFX1 \obj_y_reg[29][2]  ( .D(Y[2]), .E(n1365), .CK(CLK), .Q(\obj_y[29][2] ) );
  EDFFX1 \obj_y_reg[29][3]  ( .D(Y[3]), .E(n1365), .CK(CLK), .Q(\obj_y[29][3] ) );
  EDFFX1 \obj_x_reg[29][1]  ( .D(X[1]), .E(n1365), .CK(CLK), .Q(\obj_x[29][1] ) );
  EDFFX1 \obj_x_reg[29][2]  ( .D(X[2]), .E(n1365), .CK(CLK), .Q(\obj_x[29][2] ) );
  EDFFX1 \obj_x_reg[29][3]  ( .D(X[3]), .E(n1365), .CK(CLK), .Q(\obj_x[29][3] ) );
  EDFFX1 \obj_x_reg[29][0]  ( .D(X[0]), .E(n1365), .CK(CLK), .Q(\obj_x[29][0] ) );
  EDFFX1 \obj_y_reg[37][1]  ( .D(Y[1]), .E(n1364), .CK(CLK), .Q(\obj_y[37][1] ) );
  EDFFX1 \obj_y_reg[37][2]  ( .D(Y[2]), .E(n1364), .CK(CLK), .Q(\obj_y[37][2] ) );
  EDFFX1 \obj_y_reg[37][3]  ( .D(Y[3]), .E(n1364), .CK(CLK), .Q(\obj_y[37][3] ) );
  EDFFX1 \obj_y_reg[37][0]  ( .D(Y[0]), .E(n1364), .CK(CLK), .Q(\obj_y[37][0] ) );
  EDFFX1 \obj_x_reg[37][1]  ( .D(X[1]), .E(n1364), .CK(CLK), .Q(\obj_x[37][1] ) );
  EDFFX1 \obj_x_reg[37][2]  ( .D(X[2]), .E(n1364), .CK(CLK), .Q(\obj_x[37][2] ) );
  EDFFX1 \obj_x_reg[37][3]  ( .D(X[3]), .E(n1364), .CK(CLK), .Q(\obj_x[37][3] ) );
  EDFFX1 \obj_x_reg[37][0]  ( .D(X[0]), .E(n1364), .CK(CLK), .Q(\obj_x[37][0] ) );
  EDFFX1 \obj_y_reg[14][2]  ( .D(Y[2]), .E(n1357), .CK(CLK), .Q(\obj_y[14][2] ) );
  EDFFX1 \obj_y_reg[14][3]  ( .D(Y[3]), .E(n1357), .CK(CLK), .Q(\obj_y[14][3] ) );
  EDFFX1 \obj_x_reg[14][1]  ( .D(X[1]), .E(n1357), .CK(CLK), .Q(\obj_x[14][1] ) );
  EDFFX1 \obj_x_reg[14][2]  ( .D(X[2]), .E(n1357), .CK(CLK), .Q(\obj_x[14][2] ) );
  EDFFX1 \obj_x_reg[14][3]  ( .D(X[3]), .E(n1357), .CK(CLK), .Q(\obj_x[14][3] ) );
  EDFFX1 \obj_x_reg[14][0]  ( .D(X[0]), .E(n1357), .CK(CLK), .Q(\obj_x[14][0] ) );
  EDFFX1 \obj_y_reg[30][1]  ( .D(Y[1]), .E(n1374), .CK(CLK), .Q(\obj_y[30][1] ) );
  EDFFX1 \obj_y_reg[30][2]  ( .D(Y[2]), .E(n1374), .CK(CLK), .Q(\obj_y[30][2] ) );
  EDFFX1 \obj_y_reg[30][3]  ( .D(Y[3]), .E(n1374), .CK(CLK), .Q(\obj_y[30][3] ) );
  EDFFX1 \obj_y_reg[30][0]  ( .D(Y[0]), .E(n1374), .CK(CLK), .Q(\obj_y[30][0] ) );
  EDFFX1 \obj_x_reg[30][1]  ( .D(X[1]), .E(n1374), .CK(CLK), .Q(\obj_x[30][1] ) );
  EDFFX1 \obj_x_reg[30][2]  ( .D(X[2]), .E(n1374), .CK(CLK), .Q(\obj_x[30][2] ) );
  EDFFX1 \obj_x_reg[30][3]  ( .D(X[3]), .E(n1374), .CK(CLK), .Q(\obj_x[30][3] ) );
  EDFFX1 \obj_x_reg[30][0]  ( .D(X[0]), .E(n1374), .CK(CLK), .Q(\obj_x[30][0] ) );
  EDFFX1 \obj_y_reg[39][1]  ( .D(Y[1]), .E(n1370), .CK(CLK), .Q(\obj_y[39][1] ) );
  EDFFX1 \obj_y_reg[39][2]  ( .D(Y[2]), .E(n1370), .CK(CLK), .Q(\obj_y[39][2] ) );
  EDFFX1 \obj_y_reg[39][3]  ( .D(Y[3]), .E(n1370), .CK(CLK), .Q(\obj_y[39][3] ) );
  EDFFX1 \obj_y_reg[39][0]  ( .D(Y[0]), .E(n1370), .CK(CLK), .Q(\obj_y[39][0] ) );
  EDFFX1 \obj_x_reg[39][1]  ( .D(X[1]), .E(n1370), .CK(CLK), .Q(\obj_x[39][1] ) );
  EDFFX1 \obj_x_reg[39][2]  ( .D(X[2]), .E(n1370), .CK(CLK), .Q(\obj_x[39][2] ) );
  EDFFX1 \obj_x_reg[39][3]  ( .D(X[3]), .E(n1370), .CK(CLK), .Q(\obj_x[39][3] ) );
  EDFFX1 \obj_x_reg[39][0]  ( .D(X[0]), .E(n1370), .CK(CLK), .Q(\obj_x[39][0] ) );
  EDFFX1 \obj_y_reg[11][1]  ( .D(Y[1]), .E(n1363), .CK(CLK), .Q(\obj_y[11][1] ) );
  EDFFX1 \obj_y_reg[11][0]  ( .D(Y[0]), .E(n1363), .CK(CLK), .Q(\obj_y[11][0] ) );
  EDFFX1 \obj_x_reg[11][0]  ( .D(X[0]), .E(n1363), .CK(CLK), .Q(\obj_x[11][0] ) );
  EDFFX1 \obj_y_reg[10][1]  ( .D(Y[1]), .E(n1362), .CK(CLK), .Q(\obj_y[10][1] ) );
  EDFFX1 \obj_y_reg[10][0]  ( .D(Y[0]), .E(n1362), .CK(CLK), .Q(\obj_y[10][0] ) );
  EDFFX1 \obj_y_reg[13][1]  ( .D(Y[1]), .E(n1358), .CK(CLK), .Q(\obj_y[13][1] ) );
  EDFFX1 \obj_y_reg[13][0]  ( .D(Y[0]), .E(n1358), .CK(CLK), .Q(\obj_y[13][0] ) );
  EDFFX1 \obj_x_reg[13][3]  ( .D(X[3]), .E(n1358), .CK(CLK), .Q(\obj_x[13][3] ) );
  EDFFX1 \obj_x_reg[13][0]  ( .D(X[0]), .E(n1358), .CK(CLK), .Q(\obj_x[13][0] ) );
  EDFFX1 \obj_y_reg[29][1]  ( .D(Y[1]), .E(n1365), .CK(CLK), .Q(\obj_y[29][1] ) );
  EDFFX1 \obj_y_reg[14][1]  ( .D(Y[1]), .E(n1357), .CK(CLK), .Q(\obj_y[14][1] ) );
  EDFFX1 \obj_y_reg[3][1]  ( .D(Y[1]), .E(n1355), .CK(CLK), .Q(\obj_y[3][1] )
         );
  EDFFX1 \obj_y_reg[3][0]  ( .D(Y[0]), .E(n1355), .CK(CLK), .Q(\obj_y[3][0] )
         );
  EDFFX1 \obj_x_reg[3][0]  ( .D(X[0]), .E(n1355), .CK(CLK), .Q(\obj_x[3][0] )
         );
  EDFFX1 \obj_y_reg[2][1]  ( .D(Y[1]), .E(n1354), .CK(CLK), .Q(\obj_y[2][1] )
         );
  EDFFX1 \obj_y_reg[2][0]  ( .D(Y[0]), .E(n1354), .CK(CLK), .Q(\obj_y[2][0] )
         );
  EDFFX1 \obj_y_reg[5][1]  ( .D(Y[1]), .E(n1350), .CK(CLK), .Q(\obj_y[5][1] )
         );
  EDFFX1 \obj_y_reg[5][0]  ( .D(Y[0]), .E(n1350), .CK(CLK), .Q(\obj_y[5][0] )
         );
  EDFFX1 \obj_x_reg[5][0]  ( .D(X[0]), .E(n1350), .CK(CLK), .Q(\obj_x[5][0] )
         );
  EDFFX1 \obj_y_reg[21][1]  ( .D(Y[1]), .E(n1366), .CK(CLK), .Q(\obj_y[21][1] ) );
  EDFFX1 \obj_y_reg[6][1]  ( .D(Y[1]), .E(n1349), .CK(CLK), .Q(\obj_y[6][1] )
         );
  EDFFX1 \obj_x_reg[3][1]  ( .D(X[1]), .E(n1355), .CK(CLK), .Q(\obj_x[3][1] )
         );
  EDFFX1 \obj_y_reg[6][0]  ( .D(Y[0]), .E(n1349), .CK(CLK), .Q(\obj_y[6][0] )
         );
  EDFFX1 \obj_x_reg[11][1]  ( .D(X[1]), .E(n1363), .CK(CLK), .Q(\obj_x[11][1] ) );
  EDFFX1 \obj_y_reg[14][0]  ( .D(Y[0]), .E(n1357), .CK(CLK), .Q(\obj_y[14][0] ) );
  EDFFX1 \obj_y_reg[17][0]  ( .D(Y[0]), .E(n1381), .CK(CLK), .Q(\obj_y[17][0] ) );
  EDFFX1 \obj_y_reg[23][0]  ( .D(Y[0]), .E(n1372), .CK(CLK), .Q(\obj_y[23][0] ) );
  EDFFX1 \obj_y_reg[25][0]  ( .D(Y[0]), .E(n1380), .CK(CLK), .Q(\obj_y[25][0] ) );
  EDFFX1 \obj_y_reg[31][0]  ( .D(Y[0]), .E(n1371), .CK(CLK), .Q(\obj_y[31][0] ) );
  EDFFX1 \obj_y_reg[19][0]  ( .D(Y[0]), .E(n1369), .CK(CLK), .Q(\obj_y[19][0] ) );
  EDFFX1 \obj_x_reg[5][1]  ( .D(X[1]), .E(n1350), .CK(CLK), .Q(\obj_x[5][1] )
         );
  EDFFX1 \obj_y_reg[21][0]  ( .D(Y[0]), .E(n1366), .CK(CLK), .Q(\obj_y[21][0] ) );
  EDFFX1 \obj_y_reg[27][0]  ( .D(Y[0]), .E(n1368), .CK(CLK), .Q(\obj_y[27][0] ) );
  EDFFX1 \obj_x_reg[13][1]  ( .D(X[1]), .E(n1358), .CK(CLK), .Q(\obj_x[13][1] ) );
  EDFFX1 \obj_y_reg[29][0]  ( .D(Y[0]), .E(n1365), .CK(CLK), .Q(\obj_y[29][0] ) );
  DFFQX1 \fix_counter_reg[2]  ( .D(n546), .CK(CLK), .Q(fix_counter[2]) );
  DFFQX1 \circle_counter2_reg[8]  ( .D(n509), .CK(CLK), .Q(circle_counter2[8])
         );
  DFFQX1 \circle_counter2_reg[3]  ( .D(n514), .CK(CLK), .Q(circle_counter2[3])
         );
  EDFFX1 \obj_y_reg[34][0]  ( .D(Y[0]), .E(n1385), .CK(CLK), .Q(\obj_y[34][0] ) );
  EDFFX1 \obj_y_reg[32][0]  ( .D(Y[0]), .E(n1382), .CK(CLK), .Q(\obj_y[32][0] ) );
  DFFRX2 \counter_reg[4]  ( .D(n532), .CK(CLK), .RN(n1650), .Q(counter[4]), 
        .QN(n169) );
  DFFRX2 \counter_reg[5]  ( .D(n531), .CK(CLK), .RN(n1650), .Q(counter[5]), 
        .QN(n167) );
  DFFRX2 \counter_reg[3]  ( .D(n533), .CK(CLK), .RN(n1650), .Q(counter[3]), 
        .QN(n171) );
  DFFQX1 \coverage_reg[2]  ( .D(n526), .CK(CLK), .Q(coverage[2]) );
  DFFQX1 \coverage_reg[0]  ( .D(n528), .CK(CLK), .Q(coverage[0]) );
  DFFQX1 \coverage_reg[4]  ( .D(n524), .CK(CLK), .Q(coverage[4]) );
  DFFQX1 \coverage_reg[1]  ( .D(n527), .CK(CLK), .Q(coverage[1]) );
  DFFQX1 \circle_counter2_reg[2]  ( .D(n515), .CK(CLK), .Q(circle_counter2[2])
         );
  DFFQX1 \circle_counter2_reg[1]  ( .D(n517), .CK(CLK), .Q(circle_counter2[1])
         );
  DFFQX1 \circle_counter2_reg[0]  ( .D(n516), .CK(CLK), .Q(circle_counter2[0])
         );
  DFFQX1 \circle_counter2_reg[5]  ( .D(n512), .CK(CLK), .Q(circle_counter2[5])
         );
  DFFQX1 \circle_counter2_reg[7]  ( .D(n510), .CK(CLK), .Q(circle_counter2[7])
         );
  DFFQX1 \circle_counter2_reg[6]  ( .D(n511), .CK(CLK), .Q(circle_counter2[6])
         );
  DFFQX1 \fix_counter_reg[1]  ( .D(n530), .CK(CLK), .Q(fix_counter[1]) );
  DFFQX1 \circle_counter2_reg[4]  ( .D(n513), .CK(CLK), .Q(circle_counter2[4])
         );
  DFFQX1 \circle_counter_reg[4]  ( .D(n539), .CK(CLK), .Q(circle_counter[4])
         );
  DFFQX1 \circle_counter_reg[2]  ( .D(n541), .CK(CLK), .Q(circle_counter[2])
         );
  DFFQX1 \circle_counter_reg[1]  ( .D(n543), .CK(CLK), .Q(circle_counter[1])
         );
  DFFQX1 \circle_counter_reg[3]  ( .D(n540), .CK(CLK), .Q(circle_counter[3])
         );
  DFFQX1 \circle_counter_reg[8]  ( .D(n535), .CK(CLK), .Q(circle_counter[8])
         );
  DFFQX1 \circle_counter_reg[5]  ( .D(n538), .CK(CLK), .Q(circle_counter[5])
         );
  DFFQX1 \circle_counter_reg[7]  ( .D(n536), .CK(CLK), .Q(circle_counter[7])
         );
  DFFQX1 \circle_counter_reg[6]  ( .D(n537), .CK(CLK), .Q(circle_counter[6])
         );
  DFFQX1 \circle_counter_reg[0]  ( .D(n542), .CK(CLK), .Q(circle_counter[0])
         );
  DFFTRX1 \point_counter_reg[4]  ( .D(N1215), .RN(n1344), .CK(CLK), .Q(
        point_counter[4]) );
  DFFQX2 \C1Y_reg[0]  ( .D(n492), .CK(CLK), .Q(n1716) );
  DFFQX1 \C1X_reg[0]  ( .D(n500), .CK(CLK), .Q(n1712) );
  AND2X1 \point_counter_reg[5]/U2  ( .A(N1216), .B(n1344), .Y(n1263) );
  DFFQXL \C2Y_reg[0]  ( .D(n507), .CK(CLK), .Q(n1724) );
  DFFX1 \fix_counter_reg[0]  ( .D(n547), .CK(CLK), .Q(fix_counter[0]), .QN(
        n1651) );
  DFFQX4 \point_counter_reg[5]  ( .D(n1263), .CK(CLK), .Q(point_counter[5]) );
  DFFRX2 \counter_reg[0]  ( .D(n544), .CK(CLK), .RN(n1650), .Q(counter[0]), 
        .QN(n175) );
  DFFQX1 \C1X_reg[3]  ( .D(n497), .CK(CLK), .Q(n1709) );
  DFFQX1 \C2X_reg[0]  ( .D(n483), .CK(CLK), .Q(n1720) );
  DFFQX2 \C2Y_reg[1]  ( .D(n508), .CK(CLK), .Q(n1723) );
  DFFQX1 \C2Y_reg[2]  ( .D(n506), .CK(CLK), .Q(n1722) );
  DFFQX1 \C2Y_reg[3]  ( .D(n505), .CK(CLK), .Q(n1721) );
  DFFQX2 \C1Y_reg[1]  ( .D(n491), .CK(CLK), .Q(n1715) );
  DFFQX1 \C1Y_reg[3]  ( .D(n489), .CK(CLK), .Q(n1713) );
  DFFQX2 \C1X_reg[1]  ( .D(n499), .CK(CLK), .Q(n1711) );
  DFFQX1 \C1X_reg[2]  ( .D(n498), .CK(CLK), .Q(n1710) );
  DFFQX1 \C2X_reg[1]  ( .D(n484), .CK(CLK), .Q(n1719) );
  DFFQX1 \C2X_reg[3]  ( .D(n481), .CK(CLK), .Q(n1717) );
  DFFQX1 \C2X_reg[2]  ( .D(n482), .CK(CLK), .Q(n1718) );
  DFFQX1 \C1Y_reg[2]  ( .D(n490), .CK(CLK), .Q(n1714) );
  AOI221X1 U1210 ( .A0(\obj_y[18][2] ), .A1(n1280), .B0(\obj_y[26][2] ), .B1(
        n1339), .C0(n1444), .Y(n1445) );
  AOI221X2 U1211 ( .A0(\obj_y[2][0] ), .A1(n1280), .B0(\obj_y[10][0] ), .B1(
        n1339), .C0(n1408), .Y(n1409) );
  AOI221X1 U1212 ( .A0(\obj_x[18][0] ), .A1(n1280), .B0(\obj_x[26][0] ), .B1(
        n1339), .C0(n1492), .Y(n1493) );
  AOI221X1 U1213 ( .A0(\obj_y[36][1] ), .A1(n1275), .B0(\obj_y[37][1] ), .B1(
        n1304), .C0(n1426), .Y(n1427) );
  AOI221X1 U1214 ( .A0(\obj_y[36][0] ), .A1(n1275), .B0(\obj_y[37][0] ), .B1(
        n1304), .C0(n1402), .Y(n1403) );
  AOI221X1 U1215 ( .A0(\obj_x[18][3] ), .A1(n1280), .B0(\obj_x[26][3] ), .B1(
        n1339), .C0(n1564), .Y(n1565) );
  NAND4X1 U1216 ( .A(n1460), .B(n1459), .C(n1458), .D(n1457), .Y(n1461) );
  AOI221X1 U1217 ( .A0(\obj_y[6][2] ), .A1(n1597), .B0(\obj_y[14][2] ), .B1(
        n1258), .C0(n1454), .Y(n1459) );
  AOI221X1 U1218 ( .A0(\obj_x[6][3] ), .A1(n1597), .B0(\obj_x[14][3] ), .B1(
        n1258), .C0(n1579), .Y(n1586) );
  CLKINVX1 U1219 ( .A(n246), .Y(n1317) );
  AOI22X2 U1220 ( .A0(n250), .A1(n251), .B0(n1704), .B1(N920), .Y(n246) );
  BUFX4 U1221 ( .A(N988), .Y(n1252) );
  NAND2X2 U1222 ( .A(n1719), .B(n1536), .Y(n230) );
  NAND2X4 U1223 ( .A(n1711), .B(n1536), .Y(n250) );
  OAI21X1 U1224 ( .A0(n1719), .A1(n1536), .B0(n1271), .Y(n236) );
  OAI21XL U1225 ( .A0(n1711), .A1(n1536), .B0(n250), .Y(n256) );
  INVXL U1226 ( .A(n1536), .Y(N920) );
  INVX20 U1227 ( .A(n383), .Y(n1648) );
  BUFX20 U1228 ( .A(n1575), .Y(n1279) );
  AOI22X2 U1229 ( .A0(n190), .A1(n191), .B0(n1690), .B1(N974), .Y(n186) );
  INVX1 U1230 ( .A(n1440), .Y(N974) );
  AO22X4 U1231 ( .A0(\obj_x[25][1] ), .A1(n1273), .B0(\obj_x[17][1] ), .B1(
        n1581), .Y(n1515) );
  BUFX20 U1232 ( .A(n1596), .Y(n1275) );
  CLKINVX12 U1233 ( .A(n1259), .Y(n1253) );
  INVX20 U1234 ( .A(n1253), .Y(n1254) );
  CLKAND2X12 U1235 ( .A(n1274), .B(n1395), .Y(n1259) );
  NAND2X1 U1236 ( .A(next_state[1]), .B(n1659), .Y(n338) );
  AOI221X2 U1237 ( .A0(\obj_x[36][1] ), .A1(n1275), .B0(\obj_x[37][1] ), .B1(
        n1304), .C0(n1522), .Y(n1523) );
  AO22X1 U1238 ( .A0(\obj_x[33][1] ), .A1(n1276), .B0(\obj_x[32][1] ), .B1(
        n1274), .Y(n1522) );
  AOI221X4 U1239 ( .A0(\obj_x[22][1] ), .A1(n1597), .B0(\obj_x[30][1] ), .B1(
        n1258), .C0(n1514), .Y(n1519) );
  CLKINVX16 U1240 ( .A(n1303), .Y(n1304) );
  AND2X2 U1241 ( .A(N996), .B(n1252), .Y(\add_39/carry[3] ) );
  NOR3X4 U1242 ( .A(n1313), .B(n1314), .C(n1513), .Y(n1520) );
  INVX16 U1243 ( .A(n1262), .Y(n1269) );
  CLKINVX3 U1244 ( .A(n1267), .Y(n1675) );
  ADDFHX2 U1245 ( .A(\mult_40_2/n8 ), .B(y_diff2[3]), .CI(\mult_40_2/n2 ), 
        .CO(N1017), .S(N1016) );
  INVX4 U1246 ( .A(y_diff2[3]), .Y(n1610) );
  OAI31X4 U1247 ( .A0(n1264), .A1(n180), .A2(n1674), .B0(n181), .Y(y_diff2[3])
         );
  INVX8 U1248 ( .A(x_diff2[2]), .Y(n1615) );
  AOI221X2 U1249 ( .A0(\obj_x[2][1] ), .A1(n1280), .B0(\obj_x[10][1] ), .B1(
        n1339), .C0(n1528), .Y(n1529) );
  AND2X6 U1250 ( .A(n1274), .B(n1346), .Y(n1339) );
  AOI221X4 U1251 ( .A0(\obj_y[2][2] ), .A1(n1280), .B0(\obj_y[10][2] ), .B1(
        n1339), .C0(n1456), .Y(n1457) );
  AOI221X1 U1252 ( .A0(\obj_y[3][3] ), .A1(n1336), .B0(\obj_y[11][3] ), .B1(
        n1335), .C0(n1479), .Y(n1482) );
  AOI221X1 U1253 ( .A0(\obj_x[19][3] ), .A1(n1336), .B0(\obj_x[27][3] ), .B1(
        n1335), .C0(n1563), .Y(n1566) );
  AOI221X1 U1254 ( .A0(\obj_y[19][2] ), .A1(n1336), .B0(\obj_y[27][2] ), .B1(
        n1335), .C0(n1443), .Y(n1446) );
  AOI221X2 U1255 ( .A0(\obj_y[3][1] ), .A1(n1336), .B0(\obj_y[11][1] ), .B1(
        n1335), .C0(n1431), .Y(n1434) );
  AND2X6 U1256 ( .A(n1277), .B(n1346), .Y(n1335) );
  AOI221X1 U1257 ( .A0(\obj_y[38][1] ), .A1(n1275), .B0(\obj_y[39][1] ), .B1(
        n1304), .C0(n1425), .Y(n1428) );
  AO22XL U1258 ( .A0(\obj_y[35][1] ), .A1(n1276), .B0(\obj_y[34][1] ), .B1(
        n1269), .Y(n1425) );
  NAND4X2 U1259 ( .A(n1532), .B(n1531), .C(n1530), .D(n1529), .Y(n1533) );
  OA21X2 U1260 ( .A0(n1310), .A1(n213), .B0(n210), .Y(n205) );
  NAND2BXL U1261 ( .AN(n1310), .B(n211), .Y(N994) );
  INVX4 U1262 ( .A(n1260), .Y(n1310) );
  BUFX6 U1263 ( .A(n236), .Y(n1272) );
  BUFX16 U1264 ( .A(n199), .Y(n1255) );
  INVX6 U1265 ( .A(y_diff2[2]), .Y(n1611) );
  OAI22X2 U1266 ( .A0(n1670), .A1(n187), .B0(n1264), .B1(n188), .Y(y_diff2[2])
         );
  AOI221X4 U1267 ( .A0(\obj_y[5][3] ), .A1(n1257), .B0(\obj_y[13][3] ), .B1(
        n1337), .C0(n1477), .Y(n1484) );
  ADDFHX2 U1268 ( .A(\mult_40/n8 ), .B(x_diff2[3]), .CI(\mult_40/n2 ), .CO(
        N1009), .S(N1008) );
  INVX8 U1269 ( .A(x_diff2[3]), .Y(n1614) );
  OAI31X4 U1270 ( .A0(n1267), .A1(n220), .A2(n1679), .B0(n221), .Y(x_diff2[3])
         );
  OAI31X2 U1271 ( .A0(n1255), .A1(n200), .A2(n1673), .B0(n201), .Y(y_diff1[3])
         );
  OAI211X4 U1272 ( .A0(n202), .A1(n203), .B0(n1255), .C0(n204), .Y(n201) );
  BUFX8 U1273 ( .A(n1423), .Y(n1256) );
  AOI221X4 U1274 ( .A0(\obj_y[22][1] ), .A1(n1597), .B0(\obj_y[30][1] ), .B1(
        n1258), .C0(n1418), .Y(n1423) );
  AO22X4 U1275 ( .A0(\obj_y[35][0] ), .A1(n1277), .B0(\obj_y[34][0] ), .B1(
        n1269), .Y(n1401) );
  AOI221X1 U1276 ( .A0(\obj_y[3][0] ), .A1(n1336), .B0(\obj_y[11][0] ), .B1(
        n1335), .C0(n1407), .Y(n1410) );
  NAND4X2 U1277 ( .A(n1400), .B(n1399), .C(n1398), .D(n1397), .Y(n1415) );
  AOI221X4 U1278 ( .A0(\obj_y[18][0] ), .A1(n1280), .B0(\obj_y[26][0] ), .B1(
        n1339), .C0(n1396), .Y(n1397) );
  NAND4X1 U1279 ( .A(n1412), .B(n1411), .C(n1410), .D(n1409), .Y(n1413) );
  AOI221X4 U1280 ( .A0(\obj_y[6][0] ), .A1(n1597), .B0(\obj_y[14][0] ), .B1(
        n1258), .C0(n1406), .Y(n1411) );
  AOI221X4 U1281 ( .A0(\obj_y[19][0] ), .A1(n1336), .B0(\obj_y[27][0] ), .B1(
        n1335), .C0(n1391), .Y(n1398) );
  AOI221X4 U1282 ( .A0(\obj_y[5][0] ), .A1(n1257), .B0(\obj_y[13][0] ), .B1(
        n1337), .C0(n1405), .Y(n1412) );
  OA21X2 U1283 ( .A0(n1308), .A1(n253), .B0(n250), .Y(n245) );
  NAND2X2 U1284 ( .A(n1285), .B(n1512), .Y(n231) );
  NAND3X2 U1285 ( .A(n123), .B(n122), .C(n124), .Y(n317) );
  NAND4BBXL U1286 ( .AN(circle_counter[3]), .BN(circle_counter[4]), .C(n469), 
        .D(n470), .Y(n464) );
  INVX3 U1287 ( .A(n312), .Y(n1660) );
  NOR2X6 U1288 ( .A(point_counter[3]), .B(point_counter[1]), .Y(n1395) );
  AND2X8 U1289 ( .A(n1275), .B(n1394), .Y(n1340) );
  AND2X8 U1290 ( .A(n1269), .B(n1394), .Y(n1341) );
  BUFX16 U1291 ( .A(n1571), .Y(n1277) );
  XNOR2XL U1292 ( .A(n192), .B(n1278), .Y(n194) );
  XOR2X1 U1293 ( .A(n191), .B(n1278), .Y(n195) );
  XOR2X2 U1294 ( .A(n225), .B(n229), .Y(n227) );
  XNOR2XL U1295 ( .A(n1310), .B(n1268), .Y(n214) );
  XOR2XL U1296 ( .A(n211), .B(n1268), .Y(n215) );
  XOR2X1 U1297 ( .A(N972), .B(n1713), .Y(n204) );
  INVXL U1298 ( .A(n244), .Y(n1678) );
  NOR3X4 U1299 ( .A(n1664), .B(n1660), .C(n1600), .Y(n314) );
  CLKINVX1 U1300 ( .A(n386), .Y(n1668) );
  INVX3 U1301 ( .A(n262), .Y(n1655) );
  INVX4 U1302 ( .A(n347), .Y(n1654) );
  AND4X1 U1303 ( .A(n374), .B(n169), .C(n1664), .D(n467), .Y(n466) );
  AO22X2 U1304 ( .A0(\obj_x[31][1] ), .A1(n1576), .B0(\obj_x[23][1] ), .B1(
        n1279), .Y(n1513) );
  AOI221X1 U1305 ( .A0(\obj_y[2][1] ), .A1(n1280), .B0(\obj_y[10][1] ), .B1(
        n1339), .C0(n1432), .Y(n1433) );
  NOR3X1 U1306 ( .A(n1321), .B(n1322), .C(n1430), .Y(n1435) );
  AOI221X1 U1307 ( .A0(\obj_y[21][1] ), .A1(n1257), .B0(\obj_y[29][1] ), .B1(
        n1337), .C0(n1417), .Y(n1424) );
  AOI221X1 U1308 ( .A0(\obj_y[19][1] ), .A1(n1336), .B0(\obj_y[27][1] ), .B1(
        n1335), .C0(n1419), .Y(n1422) );
  AOI221X1 U1309 ( .A0(\obj_y[18][1] ), .A1(n1280), .B0(\obj_y[26][1] ), .B1(
        n1339), .C0(n1420), .Y(n1421) );
  AOI221X1 U1310 ( .A0(\obj_x[2][3] ), .A1(n1280), .B0(\obj_x[10][3] ), .B1(
        n1339), .C0(n1583), .Y(n1584) );
  AO22X1 U1311 ( .A0(\obj_y[31][3] ), .A1(n1576), .B0(\obj_y[23][3] ), .B1(
        n1279), .Y(n1465) );
  AOI221XL U1312 ( .A0(\obj_y[19][3] ), .A1(n1336), .B0(\obj_y[27][3] ), .B1(
        n1335), .C0(n1467), .Y(n1470) );
  NAND4X1 U1313 ( .A(n1484), .B(n1483), .C(n1482), .D(n1481), .Y(n1485) );
  AOI221XL U1314 ( .A0(\obj_y[6][3] ), .A1(n1597), .B0(\obj_y[14][3] ), .B1(
        n1258), .C0(n1478), .Y(n1483) );
  AOI221XL U1315 ( .A0(\obj_y[2][3] ), .A1(n1280), .B0(\obj_y[10][3] ), .B1(
        n1339), .C0(n1480), .Y(n1481) );
  OAI21X2 U1316 ( .A0(n232), .A1(n1272), .B0(n1271), .Y(n238) );
  AOI221X1 U1317 ( .A0(\obj_x[5][0] ), .A1(n1257), .B0(\obj_x[13][0] ), .B1(
        n1337), .C0(n1501), .Y(n1508) );
  AOI221X1 U1318 ( .A0(\obj_x[3][0] ), .A1(n1336), .B0(\obj_x[11][0] ), .B1(
        n1335), .C0(n1503), .Y(n1506) );
  AOI221X1 U1319 ( .A0(\obj_x[2][0] ), .A1(n1280), .B0(\obj_x[10][0] ), .B1(
        n1339), .C0(n1504), .Y(n1505) );
  NOR3X1 U1320 ( .A(n1315), .B(n1316), .C(n1502), .Y(n1507) );
  AO22X1 U1321 ( .A0(\obj_x[35][0] ), .A1(n1277), .B0(\obj_x[34][0] ), .B1(
        n1269), .Y(n1497) );
  AOI221X1 U1322 ( .A0(\obj_y[21][0] ), .A1(n1257), .B0(\obj_y[29][0] ), .B1(
        n1337), .C0(n1389), .Y(n1400) );
  AOI221XL U1323 ( .A0(\obj_y[38][0] ), .A1(n1275), .B0(\obj_y[39][0] ), .B1(
        n1304), .C0(n1401), .Y(n1404) );
  AOI221XL U1324 ( .A0(\obj_x[19][2] ), .A1(n1336), .B0(\obj_x[27][2] ), .B1(
        n1335), .C0(n1539), .Y(n1542) );
  NOR2X4 U1325 ( .A(n1512), .B(n1720), .Y(n232) );
  XOR2X1 U1326 ( .A(n185), .B(n189), .Y(n187) );
  NOR2X1 U1327 ( .A(n1616), .B(n1615), .Y(\mult_40/n11 ) );
  CLKINVX1 U1328 ( .A(N986), .Y(n1609) );
  AOI2BB1X1 U1329 ( .A0N(n1710), .A1N(n1677), .B0(n245), .Y(n242) );
  NAND2X1 U1330 ( .A(n1306), .B(n1307), .Y(n244) );
  NOR2X2 U1331 ( .A(n1604), .B(n1603), .Y(\mult_39_2/n11 ) );
  NOR2X2 U1332 ( .A(n1612), .B(n1613), .Y(\mult_40_2/n13 ) );
  CLKBUFX8 U1333 ( .A(n252), .Y(n1308) );
  NOR2X2 U1334 ( .A(n1604), .B(n1605), .Y(\mult_39_2/n13 ) );
  INVX4 U1335 ( .A(x_diff1[2]), .Y(n1607) );
  ADDFHX2 U1336 ( .A(\mult_39/n6 ), .B(\mult_39/n9 ), .CI(\mult_39/n3 ), .CO(
        \mult_39/n2 ), .S(N991) );
  CLKBUFX3 U1337 ( .A(y_diff1[3]), .Y(n1270) );
  CLKINVX3 U1338 ( .A(y_diff1[2]), .Y(n1603) );
  INVX3 U1339 ( .A(n1270), .Y(n1602) );
  ADDFX1 U1340 ( .A(N1006), .B(N1014), .CI(\add_40/carry[4] ), .CO(
        \add_40/carry[5] ), .S(distance2[4]) );
  ADDFX2 U1341 ( .A(N990), .B(N998), .CI(\add_39/carry[4] ), .CO(
        \add_39/carry[5] ), .S(distance1[4]) );
  ADDFHX1 U1342 ( .A(N991), .B(N999), .CI(\add_39/carry[5] ), .CO(
        \add_39/carry[6] ), .S(distance1[5]) );
  NAND2X1 U1343 ( .A(n174), .B(n173), .Y(n446) );
  NAND2X1 U1344 ( .A(n1684), .B(n171), .Y(n344) );
  NOR3BX2 U1345 ( .AN(n373), .B(n317), .C(n171), .Y(n442) );
  NOR3BX2 U1346 ( .AN(n373), .B(n317), .C(counter[3]), .Y(n434) );
  OR3X4 U1347 ( .A(distance1[7]), .B(distance1[8]), .C(n1261), .Y(n1649) );
  CLKINVX1 U1348 ( .A(n1712), .Y(n1701) );
  CLKINVX1 U1349 ( .A(n1719), .Y(n1686) );
  INVX3 U1350 ( .A(n319), .Y(n1652) );
  CLKINVX1 U1351 ( .A(n1711), .Y(n1704) );
  CLKBUFX3 U1352 ( .A(n293), .Y(n1600) );
  NAND4X1 U1353 ( .A(n341), .B(next_state[2]), .C(n1659), .D(n1657), .Y(n340)
         );
  INVX3 U1354 ( .A(n290), .Y(n1653) );
  CLKINVX1 U1355 ( .A(n1715), .Y(n1695) );
  CLKINVX1 U1356 ( .A(n1723), .Y(n1690) );
  NOR2X1 U1357 ( .A(n123), .B(n124), .Y(n468) );
  BUFX8 U1358 ( .A(point_counter[2]), .Y(n1265) );
  INVX8 U1359 ( .A(n140), .Y(n1302) );
  NAND3X1 U1360 ( .A(state[1]), .B(n124), .C(state[2]), .Y(n386) );
  OAI22XL U1361 ( .A0(n1655), .A1(n277), .B0(n1283), .B1(n262), .Y(n483) );
  OAI22XL U1362 ( .A0(n1689), .A1(n347), .B0(n1654), .B1(n363), .Y(n507) );
  OAI22XL U1363 ( .A0(n1653), .A1(n311), .B0(n1693), .B1(n290), .Y(n492) );
  AOI222XL U1364 ( .A0(Max_C1Y[0]), .A1(n1600), .B0(n1658), .B1(n1693), .C0(
        circle_counter[4]), .C1(n297), .Y(n311) );
  NAND4X2 U1365 ( .A(n458), .B(n459), .C(n460), .D(n456), .Y(next_state[0]) );
  NAND2X1 U1366 ( .A(n1663), .B(n1682), .Y(n459) );
  OAI221X1 U1367 ( .A0(n1682), .A1(n387), .B0(n451), .B1(n386), .C0(n458), .Y(
        next_state[1]) );
  CLKINVX1 U1368 ( .A(n1720), .Y(n1283) );
  XNOR2X1 U1369 ( .A(n232), .B(n1272), .Y(n234) );
  NAND2X1 U1370 ( .A(n1712), .B(n1512), .Y(n251) );
  AND2X4 U1371 ( .A(n1395), .B(n1343), .Y(n1257) );
  CLKAND2X8 U1372 ( .A(n1275), .B(n1346), .Y(n1258) );
  OR2X1 U1373 ( .A(n1416), .B(n1716), .Y(n1260) );
  OR2X4 U1374 ( .A(distance1[6]), .B(n1619), .Y(n1261) );
  OR2X6 U1375 ( .A(point_counter[0]), .B(n1265), .Y(n1262) );
  INVX6 U1376 ( .A(n1593), .Y(N918) );
  INVX3 U1377 ( .A(n1264), .Y(n1670) );
  NOR2X2 U1378 ( .A(n1416), .B(C2Y[0]), .Y(n192) );
  AND2X2 U1379 ( .A(n1392), .B(n1343), .Y(n1575) );
  AO22X4 U1380 ( .A0(\obj_x[9][1] ), .A1(n1273), .B0(\obj_x[1][1] ), .B1(n1581), .Y(n1527) );
  AOI221X4 U1381 ( .A0(\obj_x[38][1] ), .A1(n1275), .B0(\obj_x[39][1] ), .B1(
        n1304), .C0(n1521), .Y(n1524) );
  INVX8 U1382 ( .A(n219), .Y(n1266) );
  NAND4X4 U1383 ( .A(n1520), .B(n1519), .C(n1518), .D(n1517), .Y(n1535) );
  AOI221X2 U1384 ( .A0(\obj_x[19][1] ), .A1(n1336), .B0(\obj_x[27][1] ), .B1(
        n1335), .C0(n1515), .Y(n1518) );
  AO22X4 U1385 ( .A0(\obj_x[8][1] ), .A1(n1341), .B0(\obj_x[0][1] ), .B1(n1254), .Y(n1528) );
  AO22X2 U1386 ( .A0(\obj_x[24][1] ), .A1(n1341), .B0(\obj_x[16][1] ), .B1(
        n1254), .Y(n1516) );
  AO22X1 U1387 ( .A0(\obj_y[8][0] ), .A1(n1341), .B0(\obj_y[0][0] ), .B1(n1254), .Y(n1408) );
  ADDFX1 U1388 ( .A(N989), .B(N997), .CI(\add_39/carry[3] ), .CO(
        \add_39/carry[4] ), .S(distance1[3]) );
  ADDHX1 U1389 ( .A(\mult_39/n12 ), .B(\mult_39/n5 ), .CO(\mult_39/n4 ), .S(
        N989) );
  OAI211XL U1390 ( .A0(n337), .A1(n338), .B0(n339), .C0(n340), .Y(n293) );
  OA21X2 U1391 ( .A0(n369), .A1(n337), .B0(n339), .Y(n1347) );
  NAND2X2 U1392 ( .A(n341), .B(n283), .Y(n337) );
  AO22X4 U1393 ( .A0(coverage[0]), .A1(n1648), .B0(\r533/SUM[0] ), .B1(n381), 
        .Y(n528) );
  AO22X4 U1394 ( .A0(coverage[1]), .A1(n1648), .B0(\r533/SUM[1] ), .B1(n381), 
        .Y(n527) );
  AO22X4 U1395 ( .A0(coverage[2]), .A1(n1648), .B0(\r533/SUM[2] ), .B1(n381), 
        .Y(n526) );
  AO22X4 U1396 ( .A0(coverage[3]), .A1(n1648), .B0(\r533/SUM[3] ), .B1(n381), 
        .Y(n525) );
  AO22X4 U1397 ( .A0(coverage[4]), .A1(n1648), .B0(\r533/SUM[4] ), .B1(n381), 
        .Y(n524) );
  AO22X4 U1398 ( .A0(coverage[5]), .A1(n1648), .B0(\r533/SUM[5] ), .B1(n381), 
        .Y(n529) );
  NOR2X8 U1399 ( .A(n1648), .B(n382), .Y(n381) );
  AOI2BB1X4 U1400 ( .A0N(n1718), .A1N(n1677), .B0(n225), .Y(n222) );
  OA21XL U1401 ( .A0(n232), .A1(n233), .B0(n1271), .Y(n225) );
  XOR2X1 U1402 ( .A(n186), .B(n189), .Y(n188) );
  AND2X1 U1403 ( .A(\obj_x[29][1] ), .B(n1337), .Y(n1314) );
  AND2X1 U1404 ( .A(\obj_x[21][1] ), .B(n1257), .Y(n1313) );
  OAI211X1 U1405 ( .A0(n182), .A1(n183), .B0(n1264), .C0(n184), .Y(n181) );
  AOI2BB1X1 U1406 ( .A0N(n1722), .A1N(n1672), .B0(n185), .Y(n182) );
  AOI221X2 U1407 ( .A0(\obj_x[5][1] ), .A1(n1257), .B0(\obj_x[13][1] ), .B1(
        n1337), .C0(n1525), .Y(n1532) );
  AO22X1 U1408 ( .A0(\obj_x[12][1] ), .A1(n1340), .B0(\obj_x[4][1] ), .B1(
        n1578), .Y(n1526) );
  BUFX16 U1409 ( .A(n179), .Y(n1264) );
  AOI221X2 U1410 ( .A0(\obj_x[3][1] ), .A1(n1336), .B0(\obj_x[11][1] ), .B1(
        n1335), .C0(n1527), .Y(n1530) );
  NOR2X2 U1411 ( .A(n1612), .B(n1611), .Y(\mult_40_2/n11 ) );
  OAI211X4 U1412 ( .A0(n382), .A1(n1649), .B0(n379), .C0(n384), .Y(n383) );
  CLKXOR2X2 U1413 ( .A(N972), .B(n1721), .Y(n184) );
  INVX12 U1414 ( .A(n1266), .Y(n1267) );
  CMPR32X2 U1415 ( .A(\mult_39/n8 ), .B(x_diff1[3]), .C(\mult_39/n2 ), .CO(
        N993), .S(N992) );
  AO22X2 U1416 ( .A0(\obj_y[15][1] ), .A1(n1576), .B0(\obj_y[7][1] ), .B1(
        n1279), .Y(n1429) );
  NAND4X2 U1417 ( .A(n1472), .B(n1471), .C(n1470), .D(n1469), .Y(n1487) );
  XOR2X1 U1418 ( .A(n231), .B(n1272), .Y(n235) );
  OAI211X1 U1419 ( .A0(n222), .A1(n223), .B0(n1267), .C0(n224), .Y(n221) );
  CLKXOR2X2 U1420 ( .A(N918), .B(n1717), .Y(n224) );
  AO22X4 U1421 ( .A0(\obj_y[9][0] ), .A1(n1273), .B0(\obj_y[1][0] ), .B1(n1581), .Y(n1407) );
  NAND2BX1 U1422 ( .AN(n232), .B(n231), .Y(N1002) );
  OAI21X4 U1423 ( .A0(n1723), .A1(n1440), .B0(n190), .Y(n196) );
  NAND2X6 U1424 ( .A(n1723), .B(n1440), .Y(n190) );
  BUFX8 U1425 ( .A(n216), .Y(n1268) );
  NAND4X2 U1426 ( .A(n1556), .B(n1555), .C(n1554), .D(n1553), .Y(n1557) );
  AOI221X4 U1427 ( .A0(\obj_x[2][2] ), .A1(n1280), .B0(\obj_x[10][2] ), .B1(
        n1339), .C0(n1552), .Y(n1553) );
  NAND4X2 U1428 ( .A(n1587), .B(n1586), .C(n1585), .D(n1584), .Y(n1588) );
  AOI221X4 U1429 ( .A0(\obj_x[3][2] ), .A1(n1336), .B0(\obj_x[11][2] ), .B1(
        n1335), .C0(n1551), .Y(n1554) );
  AOI221X1 U1430 ( .A0(\obj_x[3][3] ), .A1(n1336), .B0(\obj_x[11][3] ), .B1(
        n1335), .C0(n1582), .Y(n1585) );
  AO22XL U1431 ( .A0(\obj_x[9][3] ), .A1(n1273), .B0(\obj_x[1][3] ), .B1(n1581), .Y(n1582) );
  AOI221X1 U1432 ( .A0(\obj_x[21][3] ), .A1(n1257), .B0(\obj_x[29][3] ), .B1(
        n1337), .C0(n1561), .Y(n1568) );
  AO22XL U1433 ( .A0(\obj_x[31][3] ), .A1(n1576), .B0(\obj_x[23][3] ), .B1(
        n1279), .Y(n1561) );
  OAI22X4 U1434 ( .A0(n1676), .A1(n247), .B0(n239), .B1(n248), .Y(x_diff1[2])
         );
  NAND4X4 U1435 ( .A(n1424), .B(n1256), .C(n1422), .D(n1421), .Y(n1439) );
  AOI221X1 U1436 ( .A0(\obj_x[21][2] ), .A1(n1257), .B0(\obj_x[29][2] ), .B1(
        n1337), .C0(n1537), .Y(n1544) );
  AO22XL U1437 ( .A0(\obj_x[31][2] ), .A1(n1576), .B0(\obj_x[23][2] ), .B1(
        n1279), .Y(n1537) );
  NAND2X1 U1438 ( .A(n1716), .B(n1416), .Y(n211) );
  XOR2XL U1439 ( .A(n245), .B(n249), .Y(n247) );
  AOI221X1 U1440 ( .A0(\obj_x[19][0] ), .A1(n1336), .B0(\obj_x[27][0] ), .B1(
        n1335), .C0(n1491), .Y(n1494) );
  AO22XL U1441 ( .A0(\obj_x[25][0] ), .A1(n1273), .B0(\obj_x[17][0] ), .B1(
        n1581), .Y(n1491) );
  INVX4 U1442 ( .A(n1255), .Y(n1671) );
  XOR2X2 U1443 ( .A(n226), .B(n229), .Y(n228) );
  AOI221X1 U1444 ( .A0(\obj_x[5][3] ), .A1(n1257), .B0(\obj_x[13][3] ), .B1(
        n1337), .C0(n1577), .Y(n1587) );
  AO22XL U1445 ( .A0(\obj_x[15][3] ), .A1(n1576), .B0(\obj_x[7][3] ), .B1(
        n1279), .Y(n1577) );
  XOR2X2 U1446 ( .A(n206), .B(n209), .Y(n208) );
  AO22XL U1447 ( .A0(\obj_y[15][3] ), .A1(n1576), .B0(\obj_y[7][3] ), .B1(
        n1279), .Y(n1477) );
  NOR2X1 U1448 ( .A(n1512), .B(n1712), .Y(n252) );
  BUFX6 U1449 ( .A(n230), .Y(n1271) );
  OA21X2 U1450 ( .A0(n192), .A1(n193), .B0(n190), .Y(n185) );
  AOI2BB2X1 U1451 ( .B0(N973), .B1(n1697), .A0N(n203), .A1N(n206), .Y(n200) );
  AOI21X4 U1452 ( .A0(n249), .A1(n258), .B0(n243), .Y(n257) );
  BUFX20 U1453 ( .A(n1342), .Y(n1273) );
  BUFX20 U1454 ( .A(n1570), .Y(n1274) );
  NOR2X4 U1455 ( .A(n1594), .B(n1301), .Y(n1346) );
  AO22X4 U1456 ( .A0(\obj_x[35][1] ), .A1(n1277), .B0(\obj_x[34][1] ), .B1(
        n1269), .Y(n1521) );
  AND2X2 U1457 ( .A(n1269), .B(n1392), .Y(n1338) );
  AOI221X1 U1458 ( .A0(\obj_y[3][2] ), .A1(n1336), .B0(\obj_y[11][2] ), .B1(
        n1335), .C0(n1455), .Y(n1458) );
  AND2X8 U1459 ( .A(n1277), .B(n1392), .Y(n1336) );
  BUFX20 U1460 ( .A(n1598), .Y(n1276) );
  NOR2X2 U1461 ( .A(n1595), .B(n1265), .Y(n1571) );
  OAI22X1 U1462 ( .A0(n1594), .A1(n1524), .B0(n1328), .B1(n1523), .Y(n1534) );
  AOI221X4 U1463 ( .A0(\obj_x[18][1] ), .A1(n1280), .B0(\obj_x[26][1] ), .B1(
        n1339), .C0(n1516), .Y(n1517) );
  OAI21X2 U1464 ( .A0(n1715), .A1(n1440), .B0(n210), .Y(n216) );
  NAND2X2 U1465 ( .A(n1715), .B(n1440), .Y(n210) );
  BUFX8 U1466 ( .A(n196), .Y(n1278) );
  AO22X4 U1467 ( .A0(\obj_x[15][1] ), .A1(n1576), .B0(\obj_x[7][1] ), .B1(
        n1279), .Y(n1525) );
  AO22X4 U1468 ( .A0(\obj_y[31][2] ), .A1(n1576), .B0(\obj_y[23][2] ), .B1(
        n1279), .Y(n1441) );
  AO22X4 U1469 ( .A0(\obj_y[15][0] ), .A1(n1576), .B0(\obj_y[7][0] ), .B1(
        n1279), .Y(n1405) );
  AND2X4 U1470 ( .A(n1343), .B(n1393), .Y(n1576) );
  NAND2X4 U1471 ( .A(C2Y[0]), .B(n1416), .Y(n191) );
  NOR2X2 U1472 ( .A(n1594), .B(n1301), .Y(n1393) );
  NOR2X8 U1473 ( .A(n1309), .B(n1595), .Y(n1343) );
  AOI21X4 U1474 ( .A0(n1687), .A1(N919), .B0(n223), .Y(n229) );
  AOI21X4 U1475 ( .A0(n229), .A1(n238), .B0(n223), .Y(n237) );
  AOI2BB2X1 U1476 ( .B0(N919), .B1(n1687), .A0N(n223), .A1N(n226), .Y(n220) );
  NOR2X6 U1477 ( .A(n1687), .B(N919), .Y(n223) );
  BUFX20 U1478 ( .A(n1338), .Y(n1280) );
  BUFX6 U1479 ( .A(n256), .Y(n1281) );
  BUFX16 U1480 ( .A(n1724), .Y(C2Y[0]) );
  NOR2X1 U1481 ( .A(n1723), .B(C2Y[0]), .Y(n358) );
  INVX12 U1482 ( .A(n1283), .Y(C2X[0]) );
  CLKINVX1 U1483 ( .A(n1283), .Y(n1285) );
  INVX12 U1484 ( .A(n1701), .Y(C1X[0]) );
  BUFX12 U1485 ( .A(n1716), .Y(C1Y[0]) );
  INVX12 U1486 ( .A(n1305), .Y(C1X[3]) );
  INVX3 U1487 ( .A(n1709), .Y(n1305) );
  INVX12 U1488 ( .A(n1697), .Y(C1Y[2]) );
  AOI2BB1XL U1489 ( .A0N(n1714), .A1N(n1672), .B0(n205), .Y(n202) );
  INVX3 U1490 ( .A(n1714), .Y(n1697) );
  OAI31X4 U1491 ( .A0(n283), .A1(n284), .A2(n285), .B0(n286), .Y(n262) );
  OAI31X4 U1492 ( .A0(n283), .A1(n313), .A2(n285), .B0(n286), .Y(n347) );
  NAND4BX1 U1493 ( .AN(n1328), .B(n140), .C(n1668), .D(n371), .Y(n283) );
  INVX12 U1494 ( .A(n1692), .Y(C2Y[3]) );
  INVX3 U1495 ( .A(n1721), .Y(n1692) );
  INVX12 U1496 ( .A(n1699), .Y(C1Y[3]) );
  INVX3 U1497 ( .A(n1713), .Y(n1699) );
  BUFX12 U1498 ( .A(n1718), .Y(C2X[2]) );
  BUFX12 U1499 ( .A(n1710), .Y(C1X[2]) );
  INVX12 U1500 ( .A(n1688), .Y(C2X[3]) );
  INVX3 U1501 ( .A(n1717), .Y(n1688) );
  INVX12 U1502 ( .A(n1691), .Y(C2Y[2]) );
  BUFX12 U1503 ( .A(N1769), .Y(DONE) );
  NAND2BXL U1504 ( .AN(n337), .B(DONE), .Y(n339) );
  NOR3BXL U1505 ( .AN(next_state[2]), .B(n1657), .C(n1659), .Y(N1769) );
  INVX12 U1506 ( .A(n1690), .Y(C2Y[1]) );
  INVX16 U1507 ( .A(n1686), .Y(C2X[1]) );
  NOR2XL U1508 ( .A(C2X[1]), .B(n1285), .Y(n272) );
  INVX12 U1509 ( .A(n1704), .Y(C1X[1]) );
  NOR2XL U1510 ( .A(n1711), .B(n1712), .Y(n328) );
  INVX12 U1511 ( .A(n1695), .Y(C1Y[1]) );
  NOR2XL U1512 ( .A(n1715), .B(n1716), .Y(n301) );
  AOI21X4 U1513 ( .A0(n1691), .A1(N973), .B0(n183), .Y(n189) );
  AOI21X4 U1514 ( .A0(n189), .A1(n198), .B0(n183), .Y(n197) );
  NOR2X6 U1515 ( .A(n1691), .B(N973), .Y(n183) );
  AO21X2 U1516 ( .A0(distance1[4]), .A1(n1618), .B0(distance1[5]), .Y(n1619)
         );
  ADDFHX4 U1517 ( .A(N993), .B(N1001), .CI(\add_39/carry[7] ), .CO(
        distance1[8]), .S(distance1[7]) );
  ADDFHX2 U1518 ( .A(N992), .B(N1000), .CI(\add_39/carry[6] ), .CO(
        \add_39/carry[7] ), .S(distance1[6]) );
  INVX6 U1519 ( .A(n1343), .Y(n1303) );
  NAND2X1 U1520 ( .A(N918), .B(n1305), .Y(n1306) );
  NAND2XL U1521 ( .A(n1593), .B(n1709), .Y(n1307) );
  OAI211XL U1522 ( .A0(n242), .A1(n243), .B0(n239), .C0(n244), .Y(n241) );
  CLKAND2X12 U1523 ( .A(n1596), .B(n1395), .Y(n1578) );
  AOI2BB2X1 U1524 ( .B0(N919), .B1(n1706), .A0N(n243), .A1N(n246), .Y(n240) );
  AOI21X4 U1525 ( .A0(n1706), .A1(N919), .B0(n243), .Y(n249) );
  NOR2X4 U1526 ( .A(n1706), .B(N919), .Y(n243) );
  AND2XL U1527 ( .A(\obj_x[5][2] ), .B(n1257), .Y(n1311) );
  AND2XL U1528 ( .A(\obj_x[13][2] ), .B(n1337), .Y(n1312) );
  NOR3X1 U1529 ( .A(n1311), .B(n1312), .C(n1549), .Y(n1556) );
  AND2X8 U1530 ( .A(n1394), .B(n1304), .Y(n1337) );
  ADDFX2 U1531 ( .A(\mult_39_2/n7 ), .B(\mult_39_2/n10 ), .CI(\mult_39_2/n4 ), 
        .CO(\mult_39_2/n3 ), .S(N998) );
  ADDFX2 U1532 ( .A(\mult_40_2/n7 ), .B(\mult_40_2/n10 ), .CI(\mult_40_2/n4 ), 
        .CO(\mult_40_2/n3 ), .S(N1014) );
  INVX8 U1533 ( .A(y_diff2[1]), .Y(n1612) );
  NOR2X4 U1534 ( .A(n1697), .B(N973), .Y(n203) );
  OAI21X2 U1535 ( .A0(n1310), .A1(n1268), .B0(n210), .Y(n218) );
  AOI21X4 U1536 ( .A0(n209), .A1(n218), .B0(n203), .Y(n217) );
  AND2XL U1537 ( .A(n1695), .B(N974), .Y(n1332) );
  NAND2X4 U1538 ( .A(n1319), .B(n1320), .Y(n248) );
  AND2X1 U1539 ( .A(\obj_x[6][0] ), .B(n1597), .Y(n1315) );
  NOR2BX4 U1540 ( .AN(point_counter[4]), .B(point_counter[5]), .Y(n1592) );
  NOR2X2 U1541 ( .A(point_counter[4]), .B(point_counter[5]), .Y(n1589) );
  AOI221X1 U1542 ( .A0(\obj_x[21][0] ), .A1(n1257), .B0(\obj_x[29][0] ), .B1(
        n1337), .C0(n1489), .Y(n1496) );
  AO22XL U1543 ( .A0(\obj_x[31][0] ), .A1(n1576), .B0(\obj_x[23][0] ), .B1(
        n1279), .Y(n1489) );
  AND2XL U1544 ( .A(\obj_x[14][0] ), .B(n1258), .Y(n1316) );
  AO22XL U1545 ( .A0(\obj_x[12][0] ), .A1(n1340), .B0(\obj_x[4][0] ), .B1(
        n1578), .Y(n1502) );
  NAND4X2 U1546 ( .A(n1508), .B(n1507), .C(n1506), .D(n1505), .Y(n1509) );
  NAND2XL U1547 ( .A(n246), .B(n1318), .Y(n1319) );
  NAND2X2 U1548 ( .A(n1317), .B(n249), .Y(n1320) );
  INVXL U1549 ( .A(n249), .Y(n1318) );
  AND2XL U1550 ( .A(n210), .B(n211), .Y(n1331) );
  NOR2X2 U1551 ( .A(n1331), .B(n1332), .Y(n206) );
  AND2X1 U1552 ( .A(\obj_y[6][1] ), .B(n1597), .Y(n1321) );
  AND2XL U1553 ( .A(\obj_y[14][1] ), .B(n1258), .Y(n1322) );
  NAND4X2 U1554 ( .A(n1436), .B(n1435), .C(n1434), .D(n1433), .Y(n1437) );
  INVX3 U1555 ( .A(next_state[1]), .Y(n1657) );
  XOR2XL U1556 ( .A(n205), .B(n209), .Y(n207) );
  AND2X1 U1557 ( .A(\obj_x[6][1] ), .B(n1597), .Y(n1323) );
  AND2X1 U1558 ( .A(\obj_x[14][1] ), .B(n1258), .Y(n1324) );
  NOR3X2 U1559 ( .A(n1323), .B(n1324), .C(n1526), .Y(n1531) );
  INVX3 U1560 ( .A(n239), .Y(n1676) );
  AND2X4 U1561 ( .A(n1276), .B(n1394), .Y(n1342) );
  AND2XL U1562 ( .A(\obj_y[5][2] ), .B(n1257), .Y(n1325) );
  AND2XL U1563 ( .A(\obj_y[13][2] ), .B(n1337), .Y(n1326) );
  NOR3X1 U1564 ( .A(n1325), .B(n1326), .C(n1453), .Y(n1460) );
  INVX1 U1565 ( .A(n203), .Y(n1334) );
  CMPR32X2 U1566 ( .A(\mult_39/n7 ), .B(\mult_39/n10 ), .C(\mult_39/n4 ), .CO(
        \mult_39/n3 ), .S(N990) );
  INVX8 U1567 ( .A(y_diff1[1]), .Y(n1604) );
  NOR2X1 U1568 ( .A(n1658), .B(n1656), .Y(n341) );
  INVX12 U1569 ( .A(n1327), .Y(n1328) );
  AND2XL U1570 ( .A(\obj_y[22][0] ), .B(n1597), .Y(n1329) );
  AND2XL U1571 ( .A(\obj_y[30][0] ), .B(n1258), .Y(n1330) );
  NOR3X1 U1572 ( .A(n1329), .B(n1330), .C(n1390), .Y(n1399) );
  BUFX20 U1573 ( .A(n1580), .Y(n1597) );
  AO22XL U1574 ( .A0(\obj_y[28][0] ), .A1(n1340), .B0(\obj_y[20][0] ), .B1(
        n1578), .Y(n1390) );
  AND2X4 U1575 ( .A(n1333), .B(n1334), .Y(n209) );
  OR4X1 U1576 ( .A(distance1[1]), .B(distance1[0]), .C(distance1[3]), .D(
        distance1[2]), .Y(n1618) );
  CLKINVX3 U1577 ( .A(n317), .Y(n1664) );
  AOI221X1 U1578 ( .A0(\obj_y[5][1] ), .A1(n1257), .B0(\obj_y[13][1] ), .B1(
        n1337), .C0(n1429), .Y(n1436) );
  NAND4X1 U1579 ( .A(n1448), .B(n1447), .C(n1446), .D(n1445), .Y(n1463) );
  NAND4X1 U1580 ( .A(n1544), .B(n1543), .C(n1542), .D(n1541), .Y(n1559) );
  NAND4X1 U1581 ( .A(circle_counter2[8]), .B(n372), .C(n461), .D(n462), .Y(
        n460) );
  NOR3X1 U1582 ( .A(circle_counter2[0]), .B(circle_counter2[2]), .C(
        circle_counter2[1]), .Y(n461) );
  NOR2X1 U1583 ( .A(n1602), .B(n1605), .Y(\mult_39_2/n10 ) );
  NAND2XL U1584 ( .A(n1697), .B(N973), .Y(n1333) );
  NOR2X8 U1585 ( .A(n1309), .B(n1302), .Y(n1596) );
  CMPR32X2 U1586 ( .A(\mult_39_2/n6 ), .B(\mult_39_2/n9 ), .C(\mult_39_2/n3 ), 
        .CO(\mult_39_2/n2 ), .S(N999) );
  CMPR32X2 U1587 ( .A(\mult_40_2/n6 ), .B(\mult_40_2/n9 ), .C(\mult_40_2/n3 ), 
        .CO(\mult_40_2/n2 ), .S(N1015) );
  INVX8 U1588 ( .A(x_diff2[1]), .Y(n1616) );
  INVX4 U1589 ( .A(x_diff1[3]), .Y(n1606) );
  INVX6 U1590 ( .A(x_diff1[1]), .Y(n1608) );
  INVX3 U1591 ( .A(N1010), .Y(n1613) );
  CLKINVX12 U1592 ( .A(n1347), .Y(n263) );
  XOR2XL U1593 ( .A(N994), .B(N986), .Y(distance1[0]) );
  INVX1 U1594 ( .A(n367), .Y(n1656) );
  AND2XL U1595 ( .A(N986), .B(N994), .Y(distance1[1]) );
  XOR2XL U1596 ( .A(n251), .B(n1281), .Y(n255) );
  XNOR2XL U1597 ( .A(n1308), .B(n1281), .Y(n254) );
  AOI2BB2XL U1598 ( .B0(N973), .B1(n1691), .A0N(n183), .A1N(n186), .Y(n180) );
  INVXL U1599 ( .A(n184), .Y(n1674) );
  INVXL U1600 ( .A(n224), .Y(n1679) );
  NAND2XL U1601 ( .A(next_state[0]), .B(n1657), .Y(n369) );
  INVXL U1602 ( .A(n451), .Y(n1682) );
  NAND2XL U1603 ( .A(n1658), .B(n282), .Y(n322) );
  NAND2XL U1604 ( .A(n1658), .B(n281), .Y(n324) );
  NAND2XL U1605 ( .A(n1658), .B(n309), .Y(n296) );
  NAND2XL U1606 ( .A(n316), .B(n317), .Y(n287) );
  XOR2XL U1607 ( .A(n1687), .B(n272), .Y(n275) );
  XOR2XL U1608 ( .A(n1706), .B(n328), .Y(n331) );
  NOR2XL U1609 ( .A(n1687), .B(n270), .Y(n269) );
  NOR2XL U1610 ( .A(n1706), .B(n326), .Y(n325) );
  NOR2XL U1611 ( .A(n1697), .B(n299), .Y(n298) );
  NOR2XL U1612 ( .A(n1691), .B(n356), .Y(n355) );
  NAND2XL U1613 ( .A(n301), .B(n1697), .Y(n300) );
  NAND2XL U1614 ( .A(n358), .B(n1691), .Y(n357) );
  AOI2BB1XL U1615 ( .A0N(n1662), .A1N(n454), .B0(n1664), .Y(n453) );
  AOI32XL U1616 ( .A0(n1668), .A1(n345), .A2(n1669), .B0(n1669), .B1(n1663), 
        .Y(n454) );
  NAND2X1 U1617 ( .A(n472), .B(n473), .Y(n1344) );
  AOI211XL U1618 ( .A0(n386), .A1(n387), .B0(n388), .C0(n389), .Y(n385) );
  NAND2XL U1619 ( .A(n456), .B(n317), .Y(n457) );
  NOR2X1 U1620 ( .A(n446), .B(counter[0]), .Y(n433) );
  NOR2X4 U1621 ( .A(n1594), .B(point_counter[3]), .Y(n1392) );
  INVX8 U1622 ( .A(n1464), .Y(N973) );
  INVX8 U1623 ( .A(n1560), .Y(N919) );
  INVX6 U1624 ( .A(n1488), .Y(N972) );
  XOR2XL U1625 ( .A(n1688), .B(n269), .Y(n267) );
  XOR2XL U1626 ( .A(n1305), .B(n325), .Y(n323) );
  XOR2XL U1627 ( .A(n1699), .B(n300), .Y(n292) );
  INVX1 U1628 ( .A(fix_counter[2]), .Y(n1681) );
  NOR3XL U1629 ( .A(n140), .B(point_counter[4]), .C(point_counter[3]), .Y(n474) );
  NAND2XL U1630 ( .A(n328), .B(n1706), .Y(n327) );
  NAND2XL U1631 ( .A(n272), .B(n1687), .Y(n271) );
  OR2XL U1632 ( .A(circle_counter2[5]), .B(circle_counter2[4]), .Y(n1647) );
  NAND2XL U1633 ( .A(n1716), .B(n1715), .Y(n299) );
  NAND2XL U1634 ( .A(C2Y[0]), .B(n1723), .Y(n356) );
  NAND2XL U1635 ( .A(C1X[0]), .B(n1711), .Y(n326) );
  NAND2XL U1636 ( .A(C2X[0]), .B(C2X[1]), .Y(n270) );
  INVXL U1637 ( .A(C2Y[0]), .Y(n1689) );
  XOR2XL U1638 ( .A(n356), .B(n1722), .Y(n362) );
  XOR2XL U1639 ( .A(n299), .B(n1714), .Y(n305) );
  AO21XL U1640 ( .A0(n1684), .A1(counter[3]), .B0(n374), .Y(n309) );
  NAND2XL U1641 ( .A(n1663), .B(n175), .Y(n380) );
  AO22XL U1642 ( .A0(circle_counter[8]), .A1(n449), .B0(N1279), .B1(n1599), 
        .Y(n535) );
  AO22XL U1643 ( .A0(circle_counter2[8]), .A1(n376), .B0(N1301), .B1(n1665), 
        .Y(n509) );
  AO22XL U1644 ( .A0(circle_counter2[7]), .A1(n376), .B0(N1300), .B1(n1665), 
        .Y(n510) );
  AO22XL U1645 ( .A0(circle_counter2[6]), .A1(n376), .B0(N1299), .B1(n1665), 
        .Y(n511) );
  AO22XL U1646 ( .A0(circle_counter2[5]), .A1(n376), .B0(N1298), .B1(n1665), 
        .Y(n512) );
  AO22XL U1647 ( .A0(circle_counter2[4]), .A1(n376), .B0(N1297), .B1(n1665), 
        .Y(n513) );
  AO22XL U1648 ( .A0(circle_counter2[3]), .A1(n376), .B0(N1296), .B1(n1665), 
        .Y(n514) );
  AO22XL U1649 ( .A0(circle_counter2[2]), .A1(n376), .B0(N1295), .B1(n1665), 
        .Y(n515) );
  AO22XL U1650 ( .A0(circle_counter2[0]), .A1(n376), .B0(N1293), .B1(n1665), 
        .Y(n516) );
  AO22XL U1651 ( .A0(circle_counter2[1]), .A1(n376), .B0(N1294), .B1(n1665), 
        .Y(n517) );
  AO22XL U1652 ( .A0(circle_counter[7]), .A1(n449), .B0(N1278), .B1(n1599), 
        .Y(n536) );
  AO22XL U1653 ( .A0(circle_counter[6]), .A1(n449), .B0(N1277), .B1(n1599), 
        .Y(n537) );
  AO22XL U1654 ( .A0(circle_counter[5]), .A1(n449), .B0(N1276), .B1(n1599), 
        .Y(n538) );
  AO22XL U1655 ( .A0(circle_counter[4]), .A1(n449), .B0(N1275), .B1(n1599), 
        .Y(n539) );
  AO22XL U1656 ( .A0(circle_counter[3]), .A1(n449), .B0(N1274), .B1(n1599), 
        .Y(n540) );
  AO22XL U1657 ( .A0(circle_counter[2]), .A1(n449), .B0(N1273), .B1(n1599), 
        .Y(n541) );
  AO22XL U1658 ( .A0(circle_counter[0]), .A1(n449), .B0(N1271), .B1(n1599), 
        .Y(n542) );
  AO22XL U1659 ( .A0(circle_counter[1]), .A1(n449), .B0(N1272), .B1(n1599), 
        .Y(n543) );
  OAI2BB1XL U1660 ( .A0N(n1345), .A1N(counter[3]), .B0(n344), .Y(n282) );
  XNOR2XL U1661 ( .A(n174), .B(counter[2]), .Y(n1345) );
  XNOR2XL U1662 ( .A(counter[2]), .B(counter[1]), .Y(n1388) );
  NAND4XL U1663 ( .A(point_counter[5]), .B(n140), .C(point_counter[3]), .D(
        n476), .Y(n475) );
  OAI21XL U1664 ( .A0(n375), .A1(n171), .B0(n344), .Y(n368) );
  OR2XL U1665 ( .A(circle_counter[5]), .B(circle_counter[4]), .Y(n1646) );
  OAI32XL U1666 ( .A0(n1680), .A1(fix_counter[2]), .A2(n391), .B0(n455), .B1(
        n1681), .Y(n546) );
  INVXL U1667 ( .A(fix_counter[1]), .Y(n1680) );
  AOI2BB1XL U1668 ( .A0N(n456), .A1N(fix_counter[1]), .B0(n392), .Y(n455) );
  NAND2BXL U1669 ( .AN(n456), .B(fix_counter[0]), .Y(n391) );
  NOR2X1 U1670 ( .A(n175), .B(n375), .Y(n441) );
  NOR2X1 U1671 ( .A(n446), .B(n175), .Y(n435) );
  XOR2XL U1672 ( .A(\r519/carry [5]), .B(point_counter[5]), .Y(N1216) );
  CLKINVX12 U1673 ( .A(n1328), .Y(n1594) );
  ADDFX2 U1674 ( .A(N1007), .B(N1015), .CI(\add_40/carry[5] ), .CO(
        \add_40/carry[6] ), .S(distance2[5]) );
  ADDFX2 U1675 ( .A(\mult_40/n7 ), .B(\mult_40/n10 ), .CI(\mult_40/n4 ), .CO(
        \mult_40/n3 ), .S(N1006) );
  ADDHX1 U1676 ( .A(\mult_40/n12 ), .B(\mult_40/n5 ), .CO(\mult_40/n4 ), .S(
        N1005) );
  ADDHX1 U1677 ( .A(\mult_40_2/n12 ), .B(\mult_40_2/n5 ), .CO(\mult_40_2/n4 ), 
        .S(N1013) );
  NOR4X4 U1678 ( .A(n1621), .B(distance2[6]), .C(distance2[8]), .D(
        distance2[7]), .Y(N1546) );
  ADDFHX2 U1679 ( .A(N1009), .B(N1017), .CI(\add_40/carry[7] ), .CO(
        distance2[8]), .S(distance2[7]) );
  ADDFHX2 U1680 ( .A(N1008), .B(N1016), .CI(\add_40/carry[6] ), .CO(
        \add_40/carry[7] ), .S(distance2[6]) );
  NOR2X1 U1681 ( .A(n1606), .B(n1609), .Y(\mult_39/n10 ) );
  ADDFX2 U1682 ( .A(\mult_40/n6 ), .B(\mult_40/n9 ), .CI(\mult_40/n3 ), .CO(
        \mult_40/n2 ), .S(N1007) );
  ADDHX1 U1683 ( .A(\mult_39_2/n12 ), .B(\mult_39_2/n5 ), .CO(\mult_39_2/n4 ), 
        .S(N997) );
  NOR2X1 U1684 ( .A(n1603), .B(n1605), .Y(\mult_39_2/n12 ) );
  ADDFX1 U1685 ( .A(N1005), .B(N1013), .CI(\add_40/carry[3] ), .CO(
        \add_40/carry[4] ), .S(distance2[3]) );
  ADDHX1 U1686 ( .A(y_diff1[2]), .B(\mult_39_2/n11 ), .CO(\mult_39_2/n6 ), .S(
        \mult_39_2/n7 ) );
  NOR3X1 U1687 ( .A(n1664), .B(n1656), .C(n263), .Y(n286) );
  ADDHX1 U1688 ( .A(y_diff1[1]), .B(\mult_39_2/n13 ), .CO(\mult_39_2/n5 ), .S(
        N996) );
  CLKINVX1 U1689 ( .A(N994), .Y(n1605) );
  CLKINVX1 U1690 ( .A(N1002), .Y(n1617) );
  OAI21X2 U1691 ( .A0(n1662), .A1(n1599), .B0(n1601), .Y(n288) );
  AOI21X1 U1692 ( .A0(n1660), .A1(n379), .B0(n1661), .Y(n382) );
  NOR2X1 U1693 ( .A(n1599), .B(n1665), .Y(n379) );
  AND2X2 U1694 ( .A(n316), .B(n260), .Y(n377) );
  INVX3 U1695 ( .A(n346), .Y(n1665) );
  NAND2X1 U1696 ( .A(n452), .B(n453), .Y(n447) );
  NOR2X2 U1697 ( .A(n1665), .B(n1664), .Y(n376) );
  NOR2X2 U1698 ( .A(n1599), .B(n1664), .Y(n449) );
  NOR2X1 U1699 ( .A(n1667), .B(n1662), .Y(n452) );
  OAI21X2 U1700 ( .A0(n192), .A1(n1278), .B0(n190), .Y(n198) );
  CLKINVX1 U1701 ( .A(n204), .Y(n1673) );
  NAND2X1 U1702 ( .A(n451), .B(n1668), .Y(n456) );
  NAND2BX1 U1703 ( .AN(n1308), .B(n251), .Y(N986) );
  CLKINVX1 U1704 ( .A(next_state[0]), .Y(n1659) );
  CLKINVX1 U1705 ( .A(n446), .Y(n1684) );
  AND2X2 U1706 ( .A(n1275), .B(n1392), .Y(n1580) );
  CLKINVX1 U1707 ( .A(N973), .Y(n1672) );
  CLKINVX1 U1708 ( .A(N919), .Y(n1677) );
  CLKINVX1 U1709 ( .A(n387), .Y(n1663) );
  INVX3 U1710 ( .A(n310), .Y(n1658) );
  NAND2X1 U1711 ( .A(n372), .B(n369), .Y(n367) );
  INVX1 U1712 ( .A(n283), .Y(n1666) );
  AO21X2 U1713 ( .A0(n345), .A1(n346), .B0(n260), .Y(n259) );
  NOR2X1 U1714 ( .A(n283), .B(n1683), .Y(n349) );
  CLKINVX1 U1715 ( .A(n450), .Y(n1669) );
  AOI22X1 U1716 ( .A0(N1655), .A1(n1599), .B0(N1657), .B1(n1662), .Y(n316) );
  NAND2X1 U1717 ( .A(n1666), .B(n309), .Y(n353) );
  NAND2X1 U1718 ( .A(n281), .B(n1666), .Y(n268) );
  NAND2X1 U1719 ( .A(n1666), .B(n282), .Y(n266) );
  XOR2X1 U1720 ( .A(n1692), .B(n355), .Y(n352) );
  XOR2X1 U1721 ( .A(n1699), .B(n298), .Y(n295) );
  NAND2X1 U1722 ( .A(n1669), .B(n372), .Y(n346) );
  CLKINVX1 U1723 ( .A(n390), .Y(n1661) );
  OAI31XL U1724 ( .A0(n372), .A1(n388), .A2(n389), .B0(n379), .Y(n390) );
  CLKBUFX3 U1725 ( .A(n315), .Y(n1599) );
  NOR2XL U1726 ( .A(n450), .B(n312), .Y(n315) );
  CLKBUFX3 U1727 ( .A(n287), .Y(n1601) );
  OAI21X2 U1728 ( .A0(n451), .A1(n452), .B0(n453), .Y(n448) );
  NAND2BX1 U1729 ( .AN(n272), .B(n270), .Y(n280) );
  NAND2BX1 U1730 ( .AN(n328), .B(n326), .Y(n335) );
  NOR2X1 U1731 ( .A(n310), .B(n1683), .Y(n291) );
  NOR2X1 U1732 ( .A(n368), .B(n309), .Y(n313) );
  NOR2X1 U1733 ( .A(n375), .B(counter[0]), .Y(n440) );
  AND2X2 U1734 ( .A(n441), .B(n434), .Y(n1348) );
  AND2X2 U1735 ( .A(n440), .B(n434), .Y(n1349) );
  AND2X2 U1736 ( .A(n439), .B(n434), .Y(n1350) );
  AND2X2 U1737 ( .A(n438), .B(n434), .Y(n1351) );
  AND2X2 U1738 ( .A(n435), .B(n434), .Y(n1352) );
  AND2X2 U1739 ( .A(n433), .B(n434), .Y(n1353) );
  AND2X2 U1740 ( .A(n436), .B(n434), .Y(n1354) );
  AND2X2 U1741 ( .A(n437), .B(n434), .Y(n1355) );
  AND2X2 U1742 ( .A(n442), .B(n441), .Y(n1356) );
  AND2X2 U1743 ( .A(n442), .B(n440), .Y(n1357) );
  AND2X2 U1744 ( .A(n442), .B(n439), .Y(n1358) );
  AND2X2 U1745 ( .A(n442), .B(n438), .Y(n1359) );
  AND2X2 U1746 ( .A(n442), .B(n435), .Y(n1360) );
  AND2X2 U1747 ( .A(n442), .B(n433), .Y(n1361) );
  AND2X2 U1748 ( .A(n442), .B(n436), .Y(n1362) );
  AND2X2 U1749 ( .A(n442), .B(n437), .Y(n1363) );
  AND2X2 U1750 ( .A(n445), .B(n439), .Y(n1364) );
  AND2X2 U1751 ( .A(n444), .B(n439), .Y(n1365) );
  AND2X2 U1752 ( .A(n443), .B(n439), .Y(n1366) );
  AND2X2 U1753 ( .A(n445), .B(n437), .Y(n1367) );
  AND2X2 U1754 ( .A(n444), .B(n437), .Y(n1368) );
  AND2X2 U1755 ( .A(n443), .B(n437), .Y(n1369) );
  AND2X2 U1756 ( .A(n445), .B(n441), .Y(n1370) );
  AND2X2 U1757 ( .A(n444), .B(n441), .Y(n1371) );
  AND2X2 U1758 ( .A(n443), .B(n441), .Y(n1372) );
  AND2X2 U1759 ( .A(n445), .B(n440), .Y(n1373) );
  AND2X2 U1760 ( .A(n444), .B(n440), .Y(n1374) );
  AND2X2 U1761 ( .A(n443), .B(n440), .Y(n1375) );
  AND2X2 U1762 ( .A(n445), .B(n438), .Y(n1376) );
  AND2X2 U1763 ( .A(n444), .B(n438), .Y(n1377) );
  AND2X2 U1764 ( .A(n443), .B(n438), .Y(n1378) );
  AND2X2 U1765 ( .A(n445), .B(n435), .Y(n1379) );
  AND2X2 U1766 ( .A(n444), .B(n435), .Y(n1380) );
  AND2X2 U1767 ( .A(n443), .B(n435), .Y(n1381) );
  AND2X2 U1768 ( .A(n445), .B(n433), .Y(n1382) );
  AND2X2 U1769 ( .A(n444), .B(n433), .Y(n1383) );
  AND2X2 U1770 ( .A(n443), .B(n433), .Y(n1384) );
  AND2X2 U1771 ( .A(n445), .B(n436), .Y(n1385) );
  AND2X2 U1772 ( .A(n444), .B(n436), .Y(n1386) );
  AND2X2 U1773 ( .A(n443), .B(n436), .Y(n1387) );
  CLKINVX1 U1774 ( .A(n380), .Y(n1662) );
  OAI21XL U1775 ( .A0(n372), .A1(n1660), .B0(n475), .Y(n472) );
  OAI21XL U1776 ( .A0(n389), .A1(n388), .B0(n450), .Y(n473) );
  NOR2X1 U1777 ( .A(n282), .B(n281), .Y(n284) );
  CLKINVX1 U1778 ( .A(n368), .Y(n1683) );
  CLKINVX1 U1779 ( .A(n345), .Y(n1667) );
  NOR2XL U1780 ( .A(n1723), .B(n1440), .Y(n193) );
  NOR2XL U1781 ( .A(n1719), .B(n1536), .Y(n233) );
  CLKINVX2 U1782 ( .A(n1718), .Y(n1687) );
  CLKINVX2 U1783 ( .A(n1710), .Y(n1706) );
  CLKINVX2 U1784 ( .A(n1722), .Y(n1691) );
  AOI211X1 U1785 ( .A0(n464), .A1(n1660), .B0(n465), .C0(n466), .Y(n458) );
  NOR4X1 U1786 ( .A(n1681), .B(n386), .C(fix_counter[0]), .D(fix_counter[1]), 
        .Y(n465) );
  NOR2X1 U1787 ( .A(n175), .B(n167), .Y(n467) );
  NOR3X2 U1788 ( .A(state[0]), .B(state[1]), .C(n122), .Y(n372) );
  NAND2X1 U1789 ( .A(n468), .B(n122), .Y(n312) );
  NAND2X1 U1790 ( .A(counter[2]), .B(counter[1]), .Y(n375) );
  OAI22XL U1791 ( .A0(n1655), .A1(n273), .B0(n1687), .B1(n262), .Y(n482) );
  AOI221XL U1792 ( .A0(Max_C2X[2]), .A1(n263), .B0(circle_counter2[2]), .B1(
        n1656), .C0(n274), .Y(n273) );
  OAI22XL U1793 ( .A0(n275), .A1(n266), .B0(n276), .B1(n268), .Y(n274) );
  XOR2XL U1794 ( .A(n270), .B(n1718), .Y(n276) );
  OAI22XL U1795 ( .A0(n1652), .A1(n329), .B0(n1706), .B1(n319), .Y(n498) );
  AOI221XL U1796 ( .A0(Max_C1X[2]), .A1(n1600), .B0(circle_counter[2]), .B1(
        n1660), .C0(n330), .Y(n329) );
  OAI22XL U1797 ( .A0(n331), .A1(n322), .B0(n332), .B1(n324), .Y(n330) );
  XOR2XL U1798 ( .A(n326), .B(n1710), .Y(n332) );
  OAI22XL U1799 ( .A0(n1653), .A1(n302), .B0(n1697), .B1(n290), .Y(n490) );
  AOI221XL U1800 ( .A0(n291), .A1(n303), .B0(Max_C1Y[2]), .B1(n1600), .C0(n304), .Y(n302) );
  XOR2XL U1801 ( .A(n1714), .B(n301), .Y(n303) );
  OAI2BB2XL U1802 ( .B0(n305), .B1(n296), .A0N(n297), .A1N(circle_counter[6]), 
        .Y(n304) );
  OAI22XL U1803 ( .A0(n1691), .A1(n347), .B0(n1654), .B1(n359), .Y(n506) );
  AOI221XL U1804 ( .A0(n349), .A1(n360), .B0(Max_C2Y[2]), .B1(n263), .C0(n361), 
        .Y(n359) );
  XOR2XL U1805 ( .A(n1722), .B(n358), .Y(n360) );
  OAI2BB2XL U1806 ( .B0(n362), .B1(n353), .A0N(n354), .A1N(circle_counter2[6]), 
        .Y(n361) );
  OAI22XL U1807 ( .A0(n289), .A1(n1653), .B0(n1699), .B1(n290), .Y(n489) );
  AOI221XL U1808 ( .A0(n291), .A1(n292), .B0(Max_C1Y[3]), .B1(n1600), .C0(n294), .Y(n289) );
  OAI2BB2XL U1809 ( .B0(n295), .B1(n296), .A0N(n297), .A1N(circle_counter[7]), 
        .Y(n294) );
  OAI22XL U1810 ( .A0(n261), .A1(n1655), .B0(n1688), .B1(n262), .Y(n481) );
  AOI221XL U1811 ( .A0(Max_C2X[3]), .A1(n263), .B0(circle_counter2[3]), .B1(
        n1656), .C0(n264), .Y(n261) );
  OAI22XL U1812 ( .A0(n265), .A1(n266), .B0(n267), .B1(n268), .Y(n264) );
  OAI22XL U1813 ( .A0(n318), .A1(n1652), .B0(n1305), .B1(n319), .Y(n497) );
  AOI221XL U1814 ( .A0(Max_C1X[3]), .A1(n1600), .B0(circle_counter[3]), .B1(
        n1660), .C0(n320), .Y(n318) );
  OAI22XL U1815 ( .A0(n321), .A1(n322), .B0(n323), .B1(n324), .Y(n320) );
  OAI22XL U1816 ( .A0(n1653), .A1(n306), .B0(n1695), .B1(n290), .Y(n491) );
  AOI221XL U1817 ( .A0(n291), .A1(n307), .B0(Max_C1Y[1]), .B1(n1600), .C0(n308), .Y(n306) );
  OAI2BB2XL U1818 ( .B0(n296), .B1(n307), .A0N(n297), .A1N(circle_counter[5]), 
        .Y(n308) );
  NAND2BX1 U1819 ( .AN(n301), .B(n299), .Y(n307) );
  OAI22XL U1820 ( .A0(n1692), .A1(n347), .B0(n1654), .B1(n348), .Y(n505) );
  AOI221XL U1821 ( .A0(n349), .A1(n350), .B0(Max_C2Y[3]), .B1(n263), .C0(n351), 
        .Y(n348) );
  XOR2X1 U1822 ( .A(n1692), .B(n357), .Y(n350) );
  OAI2BB2XL U1823 ( .B0(n352), .B1(n353), .A0N(n354), .A1N(circle_counter2[7]), 
        .Y(n351) );
  OAI22XL U1824 ( .A0(n1655), .A1(n278), .B0(n1686), .B1(n262), .Y(n484) );
  AOI221XL U1825 ( .A0(Max_C2X[1]), .A1(n263), .B0(circle_counter2[1]), .B1(
        n1656), .C0(n279), .Y(n278) );
  OAI22XL U1826 ( .A0(n1685), .A1(n266), .B0(n268), .B1(n280), .Y(n279) );
  CLKINVX1 U1827 ( .A(n280), .Y(n1685) );
  AOI222XL U1828 ( .A0(circle_counter2[0]), .A1(n1656), .B0(n1666), .B1(n1283), 
        .C0(Max_C2X[0]), .C1(n263), .Y(n277) );
  OAI22XL U1829 ( .A0(n1652), .A1(n336), .B0(n1701), .B1(n319), .Y(n500) );
  AOI222XL U1830 ( .A0(circle_counter[0]), .A1(n1660), .B0(n1658), .B1(n1701), 
        .C0(Max_C1X[0]), .C1(n1600), .Y(n336) );
  OAI22XL U1831 ( .A0(n1652), .A1(n333), .B0(n1704), .B1(n319), .Y(n499) );
  AOI221XL U1832 ( .A0(Max_C1X[1]), .A1(n1600), .B0(circle_counter[1]), .B1(
        n1660), .C0(n334), .Y(n333) );
  OAI22XL U1833 ( .A0(n1702), .A1(n322), .B0(n324), .B1(n335), .Y(n334) );
  CLKINVX1 U1834 ( .A(n335), .Y(n1702) );
  OAI22XL U1835 ( .A0(n1690), .A1(n347), .B0(n1654), .B1(n364), .Y(n508) );
  AOI221XL U1836 ( .A0(n349), .A1(n365), .B0(Max_C2Y[1]), .B1(n263), .C0(n366), 
        .Y(n364) );
  OAI2BB2XL U1837 ( .B0(n353), .B1(n365), .A0N(n354), .A1N(circle_counter2[5]), 
        .Y(n366) );
  NAND2BX1 U1838 ( .AN(n358), .B(n356), .Y(n365) );
  AOI222XL U1839 ( .A0(Max_C2Y[0]), .A1(n263), .B0(n1666), .B1(n1689), .C0(
        circle_counter2[4]), .C1(n354), .Y(n363) );
  NAND3X1 U1840 ( .A(state[0]), .B(n123), .C(state[2]), .Y(n387) );
  NOR3X1 U1841 ( .A(circle_counter[5]), .B(circle_counter[7]), .C(
        circle_counter[6]), .Y(n469) );
  NOR4BX1 U1842 ( .AN(circle_counter[8]), .B(circle_counter[2]), .C(
        circle_counter[1]), .D(circle_counter[0]), .Y(n470) );
  NOR2X1 U1843 ( .A(n375), .B(counter[3]), .Y(n374) );
  NOR2XL U1844 ( .A(n1711), .B(n1536), .Y(n253) );
  NOR2XL U1845 ( .A(n1715), .B(n1440), .Y(n213) );
  AO22X1 U1846 ( .A0(\obj_y[25][0] ), .A1(n1273), .B0(\obj_y[17][0] ), .B1(
        n1581), .Y(n1391) );
  AO22X1 U1847 ( .A0(\obj_y[31][0] ), .A1(n1576), .B0(\obj_y[23][0] ), .B1(
        n1279), .Y(n1389) );
  OAI22X1 U1848 ( .A0(n312), .A1(n464), .B0(n468), .B1(n122), .Y(next_state[2]) );
  NOR4X1 U1849 ( .A(n463), .B(circle_counter2[5]), .C(circle_counter2[7]), .D(
        circle_counter2[6]), .Y(n462) );
  OR2X1 U1850 ( .A(circle_counter2[3]), .B(circle_counter2[4]), .Y(n463) );
  NAND4X1 U1851 ( .A(n1663), .B(n338), .C(n370), .D(n371), .Y(n310) );
  OAI22XL U1852 ( .A0(n1601), .A1(n1707), .B0(n1706), .B1(n288), .Y(n494) );
  CLKINVX1 U1853 ( .A(Max_C1X[2]), .Y(n1707) );
  OAI22XL U1854 ( .A0(n1601), .A1(n1698), .B0(n1697), .B1(n288), .Y(n486) );
  CLKINVX1 U1855 ( .A(Max_C1Y[2]), .Y(n1698) );
  OAI22XL U1856 ( .A0(n1601), .A1(n1700), .B0(n1699), .B1(n288), .Y(n485) );
  CLKINVX1 U1857 ( .A(Max_C1Y[3]), .Y(n1700) );
  OAI22XL U1858 ( .A0(n1601), .A1(n1708), .B0(n1305), .B1(n288), .Y(n493) );
  CLKINVX1 U1859 ( .A(Max_C1X[3]), .Y(n1708) );
  OAI22XL U1860 ( .A0(n1601), .A1(n1696), .B0(n1695), .B1(n288), .Y(n487) );
  CLKINVX1 U1861 ( .A(Max_C1Y[1]), .Y(n1696) );
  OAI22XL U1862 ( .A0(n1601), .A1(n1694), .B0(n1693), .B1(n288), .Y(n488) );
  CLKINVX1 U1863 ( .A(Max_C1Y[0]), .Y(n1694) );
  OAI22XL U1864 ( .A0(n1601), .A1(n1703), .B0(n1701), .B1(n288), .Y(n496) );
  CLKINVX1 U1865 ( .A(Max_C1X[0]), .Y(n1703) );
  OAI22XL U1866 ( .A0(n1601), .A1(n1705), .B0(n1704), .B1(n288), .Y(n495) );
  CLKINVX1 U1867 ( .A(Max_C1X[1]), .Y(n1705) );
  OAI2BB2XL U1868 ( .B0(n1687), .B1(n259), .A0N(n260), .A1N(Max_C2X[2]), .Y(
        n478) );
  OAI2BB2XL U1869 ( .B0(n1691), .B1(n259), .A0N(n260), .A1N(Max_C2Y[2]), .Y(
        n502) );
  OAI2BB2XL U1870 ( .B0(n1692), .B1(n259), .A0N(n260), .A1N(Max_C2Y[3]), .Y(
        n501) );
  XOR2XL U1871 ( .A(n271), .B(n1717), .Y(n265) );
  XOR2XL U1872 ( .A(n327), .B(n1709), .Y(n321) );
  OAI2BB2XL U1873 ( .B0(n1688), .B1(n259), .A0N(n260), .A1N(Max_C2X[3]), .Y(
        n477) );
  OAI2BB2XL U1874 ( .B0(n1690), .B1(n259), .A0N(n260), .A1N(Max_C2Y[1]), .Y(
        n503) );
  OAI2BB2XL U1875 ( .B0(n1689), .B1(n259), .A0N(n260), .A1N(Max_C2Y[0]), .Y(
        n504) );
  OAI2BB2XL U1876 ( .B0(n1283), .B1(n259), .A0N(n260), .A1N(Max_C2X[0]), .Y(
        n480) );
  OAI2BB2XL U1877 ( .B0(n1686), .B1(n259), .A0N(n260), .A1N(Max_C2X[1]), .Y(
        n479) );
  CLKINVX1 U1878 ( .A(coverage[3]), .Y(n1643) );
  CLKINVX1 U1879 ( .A(Max_cover[4]), .Y(n1641) );
  AO22X1 U1880 ( .A0(Max_cover[0]), .A1(n377), .B0(coverage[0]), .B1(n378), 
        .Y(n522) );
  AO22X1 U1881 ( .A0(Max_cover[1]), .A1(n377), .B0(coverage[1]), .B1(n378), 
        .Y(n521) );
  AO22X1 U1882 ( .A0(Max_cover[2]), .A1(n377), .B0(coverage[2]), .B1(n378), 
        .Y(n520) );
  AO22X1 U1883 ( .A0(Max_cover[3]), .A1(n377), .B0(coverage[3]), .B1(n378), 
        .Y(n519) );
  AO22X1 U1884 ( .A0(Max_cover[4]), .A1(n377), .B0(coverage[4]), .B1(n378), 
        .Y(n518) );
  AO22X1 U1885 ( .A0(Max_cover[5]), .A1(n377), .B0(coverage[5]), .B1(n378), 
        .Y(n523) );
  CLKINVX1 U1886 ( .A(Max_cover[2]), .Y(n1640) );
  CLKINVX1 U1887 ( .A(n1635), .Y(n1642) );
  INVX1 U1888 ( .A(n1716), .Y(n1693) );
  CLKINVX1 U1889 ( .A(coverage[1]), .Y(n1644) );
  NOR2X1 U1890 ( .A(N1334), .B(n367), .Y(n354) );
  OAI2BB2XL U1891 ( .B0(n175), .B1(n447), .A0N(n175), .A1N(n448), .Y(n544) );
  OAI2BB2XL U1892 ( .B0(n167), .B1(n447), .A0N(N1700), .A1N(n448), .Y(n531) );
  OAI2BB2XL U1893 ( .B0(n169), .B1(n447), .A0N(N1699), .A1N(n448), .Y(n532) );
  OAI2BB2XL U1894 ( .B0(n171), .B1(n447), .A0N(N1698), .A1N(n448), .Y(n533) );
  OAI2BB2XL U1895 ( .B0(n173), .B1(n447), .A0N(N1697), .A1N(n448), .Y(n534) );
  OAI2BB2XL U1896 ( .B0(n174), .B1(n447), .A0N(N1696), .A1N(n448), .Y(n545) );
  CLKINVX1 U1897 ( .A(coverage[5]), .Y(n1645) );
  NOR4X4 U1898 ( .A(n167), .B(n317), .C(counter[3]), .D(counter[4]), .Y(n445)
         );
  NOR4X4 U1899 ( .A(n169), .B(n317), .C(counter[3]), .D(counter[5]), .Y(n443)
         );
  NOR4X4 U1900 ( .A(n171), .B(n169), .C(n317), .D(counter[5]), .Y(n444) );
  ADDHXL U1901 ( .A(n1265), .B(\r519/carry [2]), .CO(\r519/carry [3]), .S(
        N1213) );
  NAND2X1 U1902 ( .A(n373), .B(n175), .Y(n285) );
  NAND2X1 U1903 ( .A(n1668), .B(n175), .Y(n345) );
  NOR2X1 U1904 ( .A(n386), .B(n175), .Y(n389) );
  NOR2X1 U1905 ( .A(n387), .B(n175), .Y(n388) );
  OAI21XL U1906 ( .A0(fix_counter[0]), .A1(n456), .B0(n457), .Y(n392) );
  NOR2X1 U1907 ( .A(N1327), .B(n312), .Y(n297) );
  OAI22XL U1908 ( .A0(n1651), .A1(n457), .B0(fix_counter[0]), .B1(n456), .Y(
        n547) );
  NOR2X1 U1909 ( .A(counter[4]), .B(counter[5]), .Y(n373) );
  OAI2BB2XL U1910 ( .B0(fix_counter[1]), .B1(n391), .A0N(n392), .A1N(
        fix_counter[1]), .Y(n530) );
  NOR2X1 U1911 ( .A(n1388), .B(counter[3]), .Y(n281) );
  ADDHXL U1912 ( .A(point_counter[3]), .B(\r519/carry [3]), .CO(
        \r519/carry [4]), .S(N1214) );
  ADDHXL U1913 ( .A(counter[3]), .B(\r536/carry [3]), .CO(\r536/carry [4]), 
        .S(N1698) );
  ADDHXL U1914 ( .A(counter[2]), .B(\r536/carry [2]), .CO(\r536/carry [3]), 
        .S(N1697) );
  ADDHXL U1915 ( .A(counter[1]), .B(counter[0]), .CO(\r536/carry [2]), .S(
        N1696) );
  ADDHXL U1916 ( .A(point_counter[4]), .B(\r519/carry [4]), .CO(
        \r519/carry [5]), .S(N1215) );
  ADDHXL U1917 ( .A(counter[4]), .B(\r536/carry [4]), .CO(\r536/carry [5]), 
        .S(N1699) );
  NOR3X2 U1918 ( .A(n173), .B(counter[1]), .C(n175), .Y(n439) );
  NOR3X2 U1919 ( .A(n174), .B(counter[2]), .C(n175), .Y(n437) );
  NOR3X2 U1920 ( .A(counter[0]), .B(counter[2]), .C(n174), .Y(n436) );
  NOR3X2 U1921 ( .A(counter[0]), .B(counter[1]), .C(n173), .Y(n438) );
  ADDHXL U1922 ( .A(coverage[1]), .B(coverage[0]), .CO(\r533/carry [2]), .S(
        \r533/SUM[1] ) );
  ADDHXL U1923 ( .A(coverage[2]), .B(\r533/carry [2]), .CO(\r533/carry [3]), 
        .S(\r533/SUM[2] ) );
  ADDHXL U1924 ( .A(coverage[3]), .B(\r533/carry [3]), .CO(\r533/carry [4]), 
        .S(\r533/SUM[3] ) );
  ADDHXL U1925 ( .A(coverage[4]), .B(\r533/carry [4]), .CO(\r533/carry [5]), 
        .S(\r533/SUM[4] ) );
  INVX3 U1926 ( .A(RST), .Y(n1650) );
  AO22X1 U1927 ( .A0(\obj_y[24][0] ), .A1(n1341), .B0(\obj_y[16][0] ), .B1(
        n1254), .Y(n1396) );
  AO22X1 U1928 ( .A0(\obj_y[33][0] ), .A1(n1276), .B0(\obj_y[32][0] ), .B1(
        n1274), .Y(n1402) );
  OAI22XL U1929 ( .A0(n1594), .A1(n1404), .B0(n1328), .B1(n1403), .Y(n1414) );
  AO22X1 U1930 ( .A0(\obj_y[12][0] ), .A1(n1340), .B0(\obj_y[4][0] ), .B1(
        n1578), .Y(n1406) );
  AO22X1 U1931 ( .A0(\obj_y[31][1] ), .A1(n1576), .B0(\obj_y[23][1] ), .B1(
        n1279), .Y(n1417) );
  AO22X1 U1932 ( .A0(\obj_y[28][1] ), .A1(n1340), .B0(\obj_y[20][1] ), .B1(
        n1578), .Y(n1418) );
  AO22X1 U1933 ( .A0(\obj_y[25][1] ), .A1(n1273), .B0(\obj_y[17][1] ), .B1(
        n1581), .Y(n1419) );
  AO22X1 U1934 ( .A0(\obj_y[24][1] ), .A1(n1341), .B0(\obj_y[16][1] ), .B1(
        n1254), .Y(n1420) );
  AO22X1 U1935 ( .A0(\obj_y[33][1] ), .A1(n1276), .B0(\obj_y[32][1] ), .B1(
        n1274), .Y(n1426) );
  OAI22XL U1936 ( .A0(n1594), .A1(n1428), .B0(n1328), .B1(n1427), .Y(n1438) );
  AO22X1 U1937 ( .A0(\obj_y[9][1] ), .A1(n1273), .B0(\obj_y[1][1] ), .B1(n1581), .Y(n1431) );
  AO22X1 U1938 ( .A0(\obj_y[8][1] ), .A1(n1341), .B0(\obj_y[0][1] ), .B1(n1254), .Y(n1432) );
  AOI221XL U1939 ( .A0(\obj_y[21][2] ), .A1(n1257), .B0(\obj_y[29][2] ), .B1(
        n1337), .C0(n1441), .Y(n1448) );
  AO22X1 U1940 ( .A0(\obj_y[28][2] ), .A1(n1340), .B0(\obj_y[20][2] ), .B1(
        n1578), .Y(n1442) );
  AOI221XL U1941 ( .A0(\obj_y[22][2] ), .A1(n1597), .B0(\obj_y[30][2] ), .B1(
        n1258), .C0(n1442), .Y(n1447) );
  AO22X1 U1942 ( .A0(\obj_y[25][2] ), .A1(n1273), .B0(\obj_y[17][2] ), .B1(
        n1581), .Y(n1443) );
  AO22X1 U1943 ( .A0(\obj_y[24][2] ), .A1(n1341), .B0(\obj_y[16][2] ), .B1(
        n1254), .Y(n1444) );
  AO22X1 U1944 ( .A0(\obj_y[35][2] ), .A1(n1276), .B0(\obj_y[34][2] ), .B1(
        n1269), .Y(n1449) );
  AOI221XL U1945 ( .A0(\obj_y[38][2] ), .A1(n1275), .B0(\obj_y[39][2] ), .B1(
        n1304), .C0(n1449), .Y(n1452) );
  AO22X1 U1946 ( .A0(\obj_y[33][2] ), .A1(n1277), .B0(\obj_y[32][2] ), .B1(
        n1274), .Y(n1450) );
  AOI221XL U1947 ( .A0(\obj_y[36][2] ), .A1(n1275), .B0(\obj_y[37][2] ), .B1(
        n1304), .C0(n1450), .Y(n1451) );
  OAI22XL U1948 ( .A0(n1594), .A1(n1452), .B0(n1328), .B1(n1451), .Y(n1462) );
  AO22X1 U1949 ( .A0(\obj_y[15][2] ), .A1(n1576), .B0(\obj_y[7][2] ), .B1(
        n1279), .Y(n1453) );
  AO22X1 U1950 ( .A0(\obj_y[12][2] ), .A1(n1340), .B0(\obj_y[4][2] ), .B1(
        n1578), .Y(n1454) );
  AO22X1 U1951 ( .A0(\obj_y[9][2] ), .A1(n1273), .B0(\obj_y[1][2] ), .B1(n1581), .Y(n1455) );
  AO22X1 U1952 ( .A0(\obj_y[8][2] ), .A1(n1341), .B0(\obj_y[0][2] ), .B1(n1254), .Y(n1456) );
  AOI221XL U1953 ( .A0(\obj_y[21][3] ), .A1(n1257), .B0(\obj_y[29][3] ), .B1(
        n1337), .C0(n1465), .Y(n1472) );
  AO22X1 U1954 ( .A0(\obj_y[28][3] ), .A1(n1340), .B0(\obj_y[20][3] ), .B1(
        n1578), .Y(n1466) );
  AOI221XL U1955 ( .A0(\obj_y[22][3] ), .A1(n1597), .B0(\obj_y[30][3] ), .B1(
        n1258), .C0(n1466), .Y(n1471) );
  AO22X1 U1956 ( .A0(\obj_y[25][3] ), .A1(n1273), .B0(\obj_y[17][3] ), .B1(
        n1581), .Y(n1467) );
  AO22X1 U1957 ( .A0(\obj_y[24][3] ), .A1(n1341), .B0(\obj_y[16][3] ), .B1(
        n1254), .Y(n1468) );
  AOI221XL U1958 ( .A0(\obj_y[18][3] ), .A1(n1280), .B0(\obj_y[26][3] ), .B1(
        n1339), .C0(n1468), .Y(n1469) );
  AO22X1 U1959 ( .A0(\obj_y[35][3] ), .A1(n1277), .B0(\obj_y[34][3] ), .B1(
        n1269), .Y(n1473) );
  AOI221XL U1960 ( .A0(\obj_y[38][3] ), .A1(n1275), .B0(\obj_y[39][3] ), .B1(
        n1304), .C0(n1473), .Y(n1476) );
  AO22X1 U1961 ( .A0(\obj_y[33][3] ), .A1(n1277), .B0(\obj_y[32][3] ), .B1(
        n1274), .Y(n1474) );
  AOI221XL U1962 ( .A0(\obj_y[36][3] ), .A1(n1275), .B0(\obj_y[37][3] ), .B1(
        n1304), .C0(n1474), .Y(n1475) );
  OAI22XL U1963 ( .A0(n1594), .A1(n1476), .B0(n1328), .B1(n1475), .Y(n1486) );
  AO22X1 U1964 ( .A0(\obj_y[12][3] ), .A1(n1340), .B0(\obj_y[4][3] ), .B1(
        n1578), .Y(n1478) );
  AO22X1 U1965 ( .A0(\obj_y[9][3] ), .A1(n1273), .B0(\obj_y[1][3] ), .B1(n1581), .Y(n1479) );
  AO22X1 U1966 ( .A0(\obj_y[8][3] ), .A1(n1341), .B0(\obj_y[0][3] ), .B1(n1254), .Y(n1480) );
  AO22X1 U1967 ( .A0(\obj_x[28][0] ), .A1(n1340), .B0(\obj_x[20][0] ), .B1(
        n1578), .Y(n1490) );
  AOI221XL U1968 ( .A0(\obj_x[22][0] ), .A1(n1597), .B0(\obj_x[30][0] ), .B1(
        n1258), .C0(n1490), .Y(n1495) );
  AO22X1 U1969 ( .A0(\obj_x[24][0] ), .A1(n1341), .B0(\obj_x[16][0] ), .B1(
        n1254), .Y(n1492) );
  NAND4X1 U1970 ( .A(n1496), .B(n1495), .C(n1494), .D(n1493), .Y(n1511) );
  AOI221XL U1971 ( .A0(\obj_x[38][0] ), .A1(n1275), .B0(\obj_x[39][0] ), .B1(
        n1304), .C0(n1497), .Y(n1500) );
  AO22X1 U1972 ( .A0(\obj_x[33][0] ), .A1(n1276), .B0(\obj_x[32][0] ), .B1(
        n1274), .Y(n1498) );
  AOI221XL U1973 ( .A0(\obj_x[36][0] ), .A1(n1275), .B0(\obj_x[37][0] ), .B1(
        n1304), .C0(n1498), .Y(n1499) );
  OAI22XL U1974 ( .A0(n1594), .A1(n1500), .B0(n1328), .B1(n1499), .Y(n1510) );
  AO22X1 U1975 ( .A0(\obj_x[9][0] ), .A1(n1273), .B0(\obj_x[1][0] ), .B1(n1581), .Y(n1503) );
  AO22X1 U1976 ( .A0(\obj_x[8][0] ), .A1(n1341), .B0(\obj_x[0][0] ), .B1(n1254), .Y(n1504) );
  AO22X1 U1977 ( .A0(\obj_x[28][1] ), .A1(n1340), .B0(\obj_x[20][1] ), .B1(
        n1578), .Y(n1514) );
  AO22X1 U1978 ( .A0(\obj_x[28][2] ), .A1(n1340), .B0(\obj_x[20][2] ), .B1(
        n1578), .Y(n1538) );
  AOI221XL U1979 ( .A0(\obj_x[22][2] ), .A1(n1597), .B0(\obj_x[30][2] ), .B1(
        n1258), .C0(n1538), .Y(n1543) );
  AO22X1 U1980 ( .A0(\obj_x[25][2] ), .A1(n1273), .B0(\obj_x[17][2] ), .B1(
        n1581), .Y(n1539) );
  AO22X1 U1981 ( .A0(\obj_x[24][2] ), .A1(n1341), .B0(\obj_x[16][2] ), .B1(
        n1254), .Y(n1540) );
  AOI221XL U1982 ( .A0(\obj_x[18][2] ), .A1(n1280), .B0(\obj_x[26][2] ), .B1(
        n1339), .C0(n1540), .Y(n1541) );
  AO22X1 U1983 ( .A0(\obj_x[35][2] ), .A1(n1276), .B0(\obj_x[34][2] ), .B1(
        n1269), .Y(n1545) );
  AOI221XL U1984 ( .A0(\obj_x[38][2] ), .A1(n1275), .B0(\obj_x[39][2] ), .B1(
        n1304), .C0(n1545), .Y(n1548) );
  AO22X1 U1985 ( .A0(\obj_x[33][2] ), .A1(n1277), .B0(\obj_x[32][2] ), .B1(
        n1274), .Y(n1546) );
  AOI221XL U1986 ( .A0(\obj_x[36][2] ), .A1(n1275), .B0(\obj_x[37][2] ), .B1(
        n1304), .C0(n1546), .Y(n1547) );
  OAI22XL U1987 ( .A0(n1594), .A1(n1548), .B0(n1328), .B1(n1547), .Y(n1558) );
  AO22X1 U1988 ( .A0(\obj_x[15][2] ), .A1(n1576), .B0(\obj_x[7][2] ), .B1(
        n1279), .Y(n1549) );
  AO22X1 U1989 ( .A0(\obj_x[12][2] ), .A1(n1340), .B0(\obj_x[4][2] ), .B1(
        n1578), .Y(n1550) );
  AOI221XL U1990 ( .A0(\obj_x[6][2] ), .A1(n1597), .B0(\obj_x[14][2] ), .B1(
        n1258), .C0(n1550), .Y(n1555) );
  AO22X1 U1991 ( .A0(\obj_x[9][2] ), .A1(n1273), .B0(\obj_x[1][2] ), .B1(n1581), .Y(n1551) );
  AO22X1 U1992 ( .A0(\obj_x[8][2] ), .A1(n1341), .B0(\obj_x[0][2] ), .B1(n1254), .Y(n1552) );
  AO22X1 U1993 ( .A0(\obj_x[28][3] ), .A1(n1340), .B0(\obj_x[20][3] ), .B1(
        n1578), .Y(n1562) );
  AOI221XL U1994 ( .A0(\obj_x[22][3] ), .A1(n1597), .B0(\obj_x[30][3] ), .B1(
        n1258), .C0(n1562), .Y(n1567) );
  AO22X1 U1995 ( .A0(\obj_x[25][3] ), .A1(n1273), .B0(\obj_x[17][3] ), .B1(
        n1581), .Y(n1563) );
  AO22X1 U1996 ( .A0(\obj_x[24][3] ), .A1(n1341), .B0(\obj_x[16][3] ), .B1(
        n1254), .Y(n1564) );
  NAND4X1 U1997 ( .A(n1568), .B(n1567), .C(n1566), .D(n1565), .Y(n1591) );
  AO22X1 U1998 ( .A0(\obj_x[35][3] ), .A1(n1276), .B0(\obj_x[34][3] ), .B1(
        n1269), .Y(n1569) );
  AOI221XL U1999 ( .A0(\obj_x[38][3] ), .A1(n1275), .B0(\obj_x[39][3] ), .B1(
        n1304), .C0(n1569), .Y(n1574) );
  AO22X1 U2000 ( .A0(\obj_x[33][3] ), .A1(n1277), .B0(\obj_x[32][3] ), .B1(
        n1274), .Y(n1572) );
  AOI221XL U2001 ( .A0(\obj_x[36][3] ), .A1(n1275), .B0(\obj_x[37][3] ), .B1(
        n1304), .C0(n1572), .Y(n1573) );
  OAI22XL U2002 ( .A0(n1594), .A1(n1574), .B0(n1328), .B1(n1573), .Y(n1590) );
  AO22X1 U2003 ( .A0(\obj_x[12][3] ), .A1(n1340), .B0(\obj_x[4][3] ), .B1(
        n1578), .Y(n1579) );
  AO22X1 U2004 ( .A0(\obj_x[8][3] ), .A1(n1341), .B0(\obj_x[0][3] ), .B1(n1254), .Y(n1583) );
  CLKINVX6 U2005 ( .A(point_counter[0]), .Y(n1595) );
  AND2X8 U2006 ( .A(n1276), .B(n1395), .Y(n1581) );
  AOI222X4 U2007 ( .A0(n1463), .A1(n1592), .B0(n1462), .B1(point_counter[5]), 
        .C0(n1461), .C1(n1589), .Y(n1464) );
  AOI222X4 U2008 ( .A0(n1559), .A1(n1592), .B0(n1558), .B1(point_counter[5]), 
        .C0(n1557), .C1(n1589), .Y(n1560) );
  AOI222X4 U2009 ( .A0(n1439), .A1(n1592), .B0(n1438), .B1(point_counter[5]), 
        .C0(n1437), .C1(n1589), .Y(n1440) );
  AOI222X4 U2010 ( .A0(n1487), .A1(n1592), .B0(n1486), .B1(point_counter[5]), 
        .C0(n1485), .C1(n1589), .Y(n1488) );
  AOI222X4 U2011 ( .A0(n1535), .A1(n1592), .B0(n1534), .B1(point_counter[5]), 
        .C0(n1533), .C1(n1589), .Y(n1536) );
  AOI222X4 U2012 ( .A0(n1415), .A1(n1592), .B0(n1414), .B1(point_counter[5]), 
        .C0(n1413), .C1(n1589), .Y(n1416) );
  NOR2X4 U2013 ( .A(n1301), .B(n1328), .Y(n1394) );
  AOI222X4 U2014 ( .A0(n1511), .A1(n1592), .B0(n1510), .B1(point_counter[5]), 
        .C0(n1509), .C1(n1589), .Y(n1512) );
  NOR2X4 U2015 ( .A(n1302), .B(n1265), .Y(n1570) );
  NOR2X4 U2016 ( .A(n1595), .B(n1265), .Y(n1598) );
  AOI222X4 U2017 ( .A0(n1592), .A1(n1591), .B0(point_counter[5]), .B1(n1590), 
        .C0(n1589), .C1(n1588), .Y(n1593) );
  AO22XL U2018 ( .A0(\obj_x[15][0] ), .A1(n1576), .B0(\obj_x[7][0] ), .B1(
        n1279), .Y(n1501) );
  AO22XL U2019 ( .A0(\obj_y[12][1] ), .A1(n1340), .B0(\obj_y[4][1] ), .B1(
        n1578), .Y(n1430) );
  NOR4X1 U2020 ( .A(point_counter[5]), .B(point_counter[4]), .C(
        point_counter[3]), .D(n1265), .Y(n371) );
  NOR2X2 U2021 ( .A(n1616), .B(n1617), .Y(\mult_40/n13 ) );
  ADDHX1 U2022 ( .A(x_diff2[2]), .B(\mult_40/n11 ), .CO(\mult_40/n6 ), .S(
        \mult_40/n7 ) );
  OAI31X4 U2023 ( .A0(n239), .A1(n240), .A2(n1678), .B0(n241), .Y(x_diff1[3])
         );
  NOR2X4 U2024 ( .A(n1608), .B(n1609), .Y(\mult_39/n13 ) );
  ADDHX1 U2025 ( .A(y_diff2[2]), .B(\mult_40_2/n11 ), .CO(\mult_40_2/n6 ), .S(
        \mult_40_2/n7 ) );
  ADDHX1 U2026 ( .A(x_diff1[2]), .B(\mult_39/n11 ), .CO(\mult_39/n6 ), .S(
        \mult_39/n7 ) );
  ADDHX1 U2027 ( .A(y_diff2[1]), .B(\mult_40_2/n13 ), .CO(\mult_40_2/n5 ), .S(
        N1012) );
  AOI22X1 U2028 ( .A0(n1271), .A1(n231), .B0(n1686), .B1(N920), .Y(n226) );
  ADDFX2 U2029 ( .A(\mult_39_2/n8 ), .B(n1270), .CI(\mult_39_2/n2 ), .CO(N1001), .S(N1000) );
  ADDHXL U2030 ( .A(n1328), .B(n1302), .CO(\r519/carry [2]), .S(N1212) );
  NOR2XL U2031 ( .A(n1328), .B(n1302), .Y(n370) );
  NOR3XL U2032 ( .A(n1328), .B(point_counter[4]), .C(n1265), .Y(n476) );
  NAND4XL U2033 ( .A(n1265), .B(n1328), .C(point_counter[5]), .D(n474), .Y(
        n450) );
  NAND2BXL U2034 ( .AN(n192), .B(n191), .Y(N1010) );
  ADDHX2 U2035 ( .A(x_diff2[1]), .B(\mult_40/n13 ), .CO(\mult_40/n5 ), .S(
        N1004) );
  AOI211X2 U2036 ( .A0(N1546), .A1(n1661), .B0(n1664), .C0(n385), .Y(n384) );
  AOI221X4 U2037 ( .A0(n1667), .A1(N1657), .B0(n1665), .B1(N1655), .C0(n1664), 
        .Y(n260) );
  AND2X1 U2038 ( .A(N1002), .B(N1010), .Y(distance2[1]) );
  XOR2X1 U2039 ( .A(N1010), .B(N1002), .Y(distance2[0]) );
  AND2X1 U2040 ( .A(N1012), .B(N1004), .Y(\add_40/carry[3] ) );
  XOR2X1 U2041 ( .A(N1012), .B(N1004), .Y(distance2[2]) );
  XOR2X1 U2042 ( .A(N996), .B(n1252), .Y(distance1[2]) );
  NOR2X1 U2043 ( .A(n1602), .B(n1603), .Y(\mult_39_2/n8 ) );
  NOR2X1 U2044 ( .A(n1604), .B(n1602), .Y(\mult_39_2/n9 ) );
  NOR2X1 U2045 ( .A(n1608), .B(n1607), .Y(\mult_39/n11 ) );
  NOR2X1 U2046 ( .A(n1607), .B(n1609), .Y(\mult_39/n12 ) );
  NOR2X1 U2047 ( .A(n1606), .B(n1607), .Y(\mult_39/n8 ) );
  NOR2X1 U2048 ( .A(n1608), .B(n1606), .Y(\mult_39/n9 ) );
  NOR2X1 U2049 ( .A(n1610), .B(n1613), .Y(\mult_40_2/n10 ) );
  NOR2X1 U2050 ( .A(n1611), .B(n1613), .Y(\mult_40_2/n12 ) );
  NOR2X1 U2051 ( .A(n1610), .B(n1611), .Y(\mult_40_2/n8 ) );
  NOR2X1 U2052 ( .A(n1612), .B(n1610), .Y(\mult_40_2/n9 ) );
  NOR2X1 U2053 ( .A(n1614), .B(n1617), .Y(\mult_40/n10 ) );
  NOR2X1 U2054 ( .A(n1615), .B(n1617), .Y(\mult_40/n12 ) );
  NOR2X1 U2055 ( .A(n1614), .B(n1615), .Y(\mult_40/n8 ) );
  NOR2X1 U2056 ( .A(n1616), .B(n1614), .Y(\mult_40/n9 ) );
  CLKINVX1 U2057 ( .A(n1302), .Y(N1211) );
  CLKINVX1 U2058 ( .A(coverage[0]), .Y(\r533/SUM[0] ) );
  XOR2X1 U2059 ( .A(\r533/carry [5]), .B(coverage[5]), .Y(\r533/SUM[5] ) );
  XOR2X1 U2060 ( .A(\r536/carry [5]), .B(counter[5]), .Y(N1700) );
  OR4X1 U2061 ( .A(distance2[1]), .B(distance2[0]), .C(distance2[3]), .D(
        distance2[2]), .Y(n1620) );
  AO21X1 U2062 ( .A0(distance2[4]), .A1(n1620), .B0(distance2[5]), .Y(n1621)
         );
  NAND2X1 U2063 ( .A(Max_cover[3]), .B(n1643), .Y(n1636) );
  NOR2X1 U2064 ( .A(n1640), .B(coverage[2]), .Y(n1622) );
  NOR2BX1 U2065 ( .AN(n1636), .B(n1622), .Y(n1626) );
  NOR2BX1 U2066 ( .AN(Max_cover[0]), .B(coverage[0]), .Y(n1624) );
  AO21X1 U2067 ( .A0(n1644), .A1(n1624), .B0(Max_cover[1]), .Y(n1623) );
  NAND2X1 U2068 ( .A(coverage[2]), .B(n1640), .Y(n1632) );
  NOR2BX1 U2069 ( .AN(n1632), .B(n1622), .Y(n1629) );
  OAI211X1 U2070 ( .A0(n1624), .A1(n1644), .B0(n1623), .C0(n1629), .Y(n1625)
         );
  NOR2X1 U2071 ( .A(n1641), .B(coverage[4]), .Y(n1627) );
  AOI21X1 U2072 ( .A0(n1641), .A1(coverage[4]), .B0(n1627), .Y(n1635) );
  NOR2X1 U2073 ( .A(n1643), .B(Max_cover[3]), .Y(n1634) );
  AOI211X1 U2074 ( .A0(n1626), .A1(n1625), .B0(n1642), .C0(n1634), .Y(n1628)
         );
  AND2X1 U2075 ( .A(Max_cover[5]), .B(n1645), .Y(n1639) );
  OAI32X1 U2076 ( .A0(n1628), .A1(n1639), .A2(n1627), .B0(Max_cover[5]), .B1(
        n1645), .Y(N1657) );
  NOR2BX1 U2077 ( .AN(coverage[0]), .B(Max_cover[0]), .Y(n1631) );
  OAI2BB1X1 U2078 ( .A0N(n1631), .A1N(coverage[1]), .B0(Max_cover[1]), .Y(
        n1630) );
  OAI211X1 U2079 ( .A0(coverage[1]), .A1(n1631), .B0(n1630), .C0(n1629), .Y(
        n1633) );
  NAND3BX1 U2080 ( .AN(n1634), .B(n1633), .C(n1632), .Y(n1637) );
  AOI32X1 U2081 ( .A0(n1637), .A1(n1636), .A2(n1635), .B0(coverage[4]), .B1(
        n1641), .Y(n1638) );
  OAI22XL U2082 ( .A0(Max_cover[5]), .A1(n1645), .B0(n1639), .B1(n1638), .Y(
        N1655) );
  NOR4X1 U2083 ( .A(n1646), .B(circle_counter[6]), .C(circle_counter[8]), .D(
        circle_counter[7]), .Y(N1327) );
  NOR4X1 U2084 ( .A(n1647), .B(circle_counter2[6]), .C(circle_counter2[8]), 
        .D(circle_counter2[7]), .Y(N1334) );
endmodule

