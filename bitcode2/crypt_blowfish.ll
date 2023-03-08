; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_blowfish.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_blowfish.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.BF_ctx = type { %struct.anon.1 }
%struct.anon.1 = type { [18 x i32], [4 x [256 x i32]] }
%struct.anon = type { [30 x i8], [63 x i8] }
%struct.anon.0 = type { %union.BF_ctx, [18 x i32], %union.anon }
%union.anon = type { [6 x i32] }

@.str = private unnamed_addr constant [10 x i8] c"8b \D0\C1\D2\CF\CC\D8\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"$2a$00$abcdefghijklmnopqrstuu\00", align 1
@__crypt_blowfish.test_hash = internal constant [2 x [34 x i8]] [[34 x i8] c"VUrPmXD6q/nVSSp7pNDhCR9071IfIRe\00U\00", [34 x i8] c"i1D709vfamulimlGcq0qq3UvuUasvEa\00U\00"], align 16, !dbg !0
@.str.2 = private unnamed_addr constant [12 x i8] c"\FF\A334\FF\FF\FF\A3345\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@BF_crypt.flags_by_subtype = internal unnamed_addr constant [26 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\04\00", align 16, !dbg !25
@BF_init_state = internal constant %union.BF_ctx { %struct.anon.1 { [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565], [4 x [256 x i32]] [[256 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946], [256 x i32] [i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241], [256 x i32] [i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504], [256 x i32] [i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462]] } }, align 4, !dbg !97
@BF_magic_w = internal unnamed_addr constant [6 x i32] [i32 1332899944, i32 1700884034, i32 1701343084, i32 1684370003, i32 1668446532, i32 1869963892], align 16, !dbg !100
@BF_itoa64 = internal unnamed_addr constant [65 x i8] c"./ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 16, !dbg !104
@BF_atoi64 = internal unnamed_addr constant [96 x i8] c"@@@@@@@@@@@@@@\00\016789:;<=>?@@@@@@@\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B@@@@@@\1C\1D\1E\1F !\22#$%&'()*+,-./012345@@@@@", align 16, !dbg !109
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__crypt_blowfish(i8* nocapture readonly, i8*, i8*) local_unnamed_addr #0 !dbg !2 {
  %4 = alloca %struct.anon, align 1
  %5 = alloca [18 x i32], align 16
  %6 = alloca [18 x i32], align 16
  %7 = alloca [18 x i32], align 16
  %8 = alloca [18 x i32], align 16
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0, i64 0, !dbg !150
  call void @llvm.lifetime.start.p0i8(i64 93, i8* nonnull %9) #4, !dbg !150
  %10 = tail call fastcc i8* @BF_crypt(i8* %0, i8* %1, i8* %2, i32 16) #5, !dbg !151
  %11 = call i8* @memcpy(i8* nonnull %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 30) #6, !dbg !153
  %12 = icmp ne i8* %10, null, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %12, label %13, label %17, !dbg !156

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !157
  %15 = load i8, i8* %14, align 1, !dbg !157, !tbaa !158
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0, i64 2, !dbg !161
  store i8 %15, i8* %16, align 1, !dbg !162, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  br label %17, !dbg !161

; <label>:17:                                     ; preds = %13, %3
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1, i64 0, !dbg !163
  %19 = call i8* @memset(i8* nonnull %18, i32 85, i64 63) #6, !dbg !164
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1, i64 62, !dbg !165
  store i8 0, i8* %20, align 1, !dbg !166, !tbaa !158
  %21 = call fastcc i8* @BF_crypt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* nonnull %9, i8* nonnull %18, i32 1) #5, !dbg !167
  %22 = icmp eq i8* %21, %18, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br i1 %22, label %23, label %35, !dbg !170

; <label>:23:                                     ; preds = %17
  %24 = call i32 @memcmp(i8* nonnull %18, i8* nonnull %9, i64 29) #6, !dbg !171
  %25 = icmp eq i32 %24, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  br i1 %25, label %26, label %35, !dbg !172

; <label>:26:                                     ; preds = %23
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1, i64 29, !dbg !173
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0, i64 2, !dbg !174
  %29 = load i8, i8* %28, align 1, !dbg !174, !tbaa !158
  %30 = and i8 %29, 1, !dbg !175
  %31 = zext i8 %30 to i64, !dbg !176
  %32 = getelementptr inbounds [2 x [34 x i8]], [2 x [34 x i8]]* @__crypt_blowfish.test_hash, i64 0, i64 %31, i64 0, !dbg !176
  %33 = call i32 @memcmp(i8* nonnull %27, i8* nonnull %32, i64 34) #6, !dbg !177
  %34 = icmp eq i32 %33, 0, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %35

; <label>:35:                                     ; preds = %23, %26, %17
  %36 = phi i1 [ false, %23 ], [ false, %17 ], [ %34, %26 ], !dbg !179
  %37 = bitcast [18 x i32]* %5 to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %37) #4, !dbg !180
  %38 = bitcast [18 x i32]* %6 to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %38) #4, !dbg !180
  %39 = bitcast [18 x i32]* %7 to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %39) #4, !dbg !180
  %40 = bitcast [18 x i32]* %8 to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %40) #4, !dbg !180
  %41 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0, !dbg !185
  %42 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 0, !dbg !186
  call fastcc void @BF_set_key(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* nonnull %41, i32* nonnull %42, i8 zeroext 2) #5, !dbg !187
  %43 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 0, !dbg !188
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 0, !dbg !189
  call fastcc void @BF_set_key(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* nonnull %43, i32* nonnull %44, i8 zeroext 4) #5, !dbg !190
  %45 = load i32, i32* %42, align 16, !dbg !191, !tbaa !192
  %46 = xor i32 %45, 65536, !dbg !191
  store i32 %46, i32* %42, align 16, !dbg !191, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br i1 %36, label %47, label %59, !dbg !194

; <label>:47:                                     ; preds = %35
  %48 = icmp eq i32 %46, -610510404, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %48, label %49, label %59, !dbg !196

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 17, !dbg !197
  %51 = load i32, i32* %50, align 4, !dbg !197, !tbaa !192
  %52 = icmp eq i32 %51, 859059456, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  br i1 %52, label %53, label %59, !dbg !199

; <label>:53:                                     ; preds = %49
  %54 = call i32 @memcmp(i8* nonnull %37, i8* nonnull %39, i64 72) #6, !dbg !200
  %55 = icmp eq i32 %54, 0, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br i1 %55, label %56, label %59, !dbg !201

; <label>:56:                                     ; preds = %53
  %57 = call i32 @memcmp(i8* nonnull %38, i8* nonnull %40, i64 72) #6, !dbg !202
  %58 = icmp eq i32 %57, 0, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %59

; <label>:59:                                     ; preds = %53, %56, %49, %47, %35
  %60 = phi i1 [ false, %53 ], [ false, %49 ], [ false, %47 ], [ false, %35 ], [ %58, %56 ], !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %40) #4, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %39) #4, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %38) #4, !dbg !205
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %37) #4, !dbg !205
  %61 = and i1 %12, %60, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  %62 = select i1 %61, i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), !dbg !208
  call void @llvm.lifetime.end.p0i8(i64 93, i8* nonnull %9) #4, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  ret i8* %62, !dbg !209
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i8* @BF_crypt(i8* nocapture readonly, i8*, i8*, i32) unnamed_addr #0 !dbg !27 {
  %5 = alloca %struct.anon.0, align 16
  %6 = bitcast %struct.anon.0* %5 to i8*, !dbg !214
  call void @llvm.lifetime.start.p0i8(i64 4264, i8* nonnull %6) #4, !dbg !214
  %7 = load i8, i8* %1, align 1, !dbg !215, !tbaa !158
  %8 = icmp eq i8 %7, 36, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %8, label %9, label %942, !dbg !218

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !219
  %11 = load i8, i8* %10, align 1, !dbg !219, !tbaa !158
  %12 = icmp eq i8 %11, 50, !dbg !220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %12, label %13, label %942, !dbg !221

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !222
  %15 = load i8, i8* %14, align 1, !dbg !222, !tbaa !158
  %16 = sext i8 %15 to i32, !dbg !222
  %17 = add nsw i32 %16, -97, !dbg !223
  %18 = icmp ugt i32 %17, 25, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %18, label %942, label %19, !dbg !225

; <label>:19:                                     ; preds = %13
  %20 = sext i32 %17 to i64, !dbg !226
  %21 = lshr i64 25165825, %20, !dbg !226
  %22 = and i64 %21, 1, !dbg !226
  %23 = icmp eq i64 %22, 0, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %23, label %942, label %24, !dbg !227

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !228
  %26 = load i8, i8* %25, align 1, !dbg !228, !tbaa !158
  %27 = icmp eq i8 %26, 36, !dbg !229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  br i1 %27, label %28, label %942, !dbg !230

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !231
  %30 = load i8, i8* %29, align 1, !dbg !231, !tbaa !158
  %31 = sext i8 %30 to i32, !dbg !231
  %32 = add nsw i32 %31, -48, !dbg !232
  %33 = icmp ugt i32 %32, 1, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %33, label %942, label %34, !dbg !234

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !235
  %36 = load i8, i8* %35, align 1, !dbg !235, !tbaa !158
  %37 = sext i8 %36 to i32, !dbg !235
  %38 = add nsw i32 %37, -48, !dbg !236
  %39 = icmp ugt i32 %38, 9, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  br i1 %39, label %942, label %40, !dbg !238

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !239
  %42 = load i8, i8* %41, align 1, !dbg !239, !tbaa !158
  %43 = icmp eq i8 %42, 36, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br i1 %43, label %44, label %942, !dbg !241

; <label>:44:                                     ; preds = %40
  %45 = mul nsw i32 %32, 10, !dbg !242
  %46 = add nsw i32 %38, %45, !dbg !243
  %47 = shl i32 1, %46, !dbg !244
  %48 = icmp ult i32 %47, %3, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  br i1 %48, label %942, label %49, !dbg !248

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 0, !dbg !249
  %51 = getelementptr inbounds i8, i8* %1, i64 7, !dbg !250
  %52 = bitcast i32* %50 to i8*, !dbg !270
  %53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 4, !dbg !272
  %54 = bitcast i32* %53 to i8*, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br label %55, !dbg !275

; <label>:55:                                     ; preds = %115, %49
  %56 = phi i8* [ %51, %49 ], [ %105, %115 ], !dbg !276
  %57 = phi i8* [ %52, %49 ], [ %118, %115 ], !dbg !279
  %58 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !280
  %59 = load i8, i8* %56, align 1, !dbg !280, !tbaa !158
  %60 = zext i8 %59 to i32, !dbg !280
  %61 = add nsw i32 %60, -32, !dbg !283
  %62 = icmp ugt i32 %61, 95, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %62, label %120, label %63, !dbg !280

; <label>:63:                                     ; preds = %55
  %64 = zext i32 %61 to i64, !dbg !280
  %65 = getelementptr inbounds [96 x i8], [96 x i8]* @BF_atoi64, i64 0, i64 %64, !dbg !280
  %66 = load i8, i8* %65, align 1, !dbg !280, !tbaa !158
  %67 = icmp ugt i8 %66, 63, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %67, label %120, label %68, !dbg !280

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds i8, i8* %56, i64 2, !dbg !287
  %70 = load i8, i8* %58, align 1, !dbg !287, !tbaa !158
  %71 = zext i8 %70 to i32, !dbg !287
  %72 = add nsw i32 %71, -32, !dbg !289
  %73 = icmp ugt i32 %72, 95, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %73, label %120, label %74, !dbg !287

; <label>:74:                                     ; preds = %68
  %75 = zext i32 %72 to i64, !dbg !287
  %76 = getelementptr inbounds [96 x i8], [96 x i8]* @BF_atoi64, i64 0, i64 %75, !dbg !287
  %77 = load i8, i8* %76, align 1, !dbg !287, !tbaa !158
  %78 = icmp ugt i8 %77, 63, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %78, label %120, label %79, !dbg !287

; <label>:79:                                     ; preds = %74
  %80 = shl i8 %66, 2, !dbg !293
  %81 = lshr i8 %77, 4, !dbg !294
  %82 = and i8 %81, 3, !dbg !294
  %83 = or i8 %82, %80, !dbg !295
  %84 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !296
  store i8 %83, i8* %57, align 1, !dbg !297, !tbaa !158
  %85 = icmp ult i8* %84, %54, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %85, label %86, label %121, !dbg !300

; <label>:86:                                     ; preds = %79
  %87 = getelementptr inbounds i8, i8* %56, i64 3, !dbg !301
  %88 = load i8, i8* %69, align 1, !dbg !301, !tbaa !158
  %89 = zext i8 %88 to i32, !dbg !301
  %90 = add nsw i32 %89, -32, !dbg !303
  %91 = icmp ugt i32 %90, 95, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %91, label %120, label %92, !dbg !301

; <label>:92:                                     ; preds = %86
  %93 = zext i32 %90 to i64, !dbg !301
  %94 = getelementptr inbounds [96 x i8], [96 x i8]* @BF_atoi64, i64 0, i64 %93, !dbg !301
  %95 = load i8, i8* %94, align 1, !dbg !301, !tbaa !158
  %96 = icmp ugt i8 %95, 63, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %96, label %120, label %97, !dbg !301

; <label>:97:                                     ; preds = %92
  %98 = shl i8 %77, 4, !dbg !307
  %99 = lshr i8 %95, 2, !dbg !308
  %100 = and i8 %99, 15, !dbg !308
  %101 = or i8 %100, %98, !dbg !309
  %102 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !310
  store i8 %101, i8* %84, align 1, !dbg !311, !tbaa !158
  %103 = icmp ult i8* %102, %54, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %103, label %104, label %121, !dbg !314

; <label>:104:                                    ; preds = %97
  %105 = getelementptr inbounds i8, i8* %56, i64 4, !dbg !315
  %106 = load i8, i8* %87, align 1, !dbg !315, !tbaa !158
  %107 = zext i8 %106 to i32, !dbg !315
  %108 = add nsw i32 %107, -32, !dbg !316
  %109 = icmp ugt i32 %108, 95, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %109, label %120, label %110, !dbg !315

; <label>:110:                                    ; preds = %104
  %111 = zext i32 %108 to i64, !dbg !315
  %112 = getelementptr inbounds [96 x i8], [96 x i8]* @BF_atoi64, i64 0, i64 %111, !dbg !315
  %113 = load i8, i8* %112, align 1, !dbg !315, !tbaa !158
  %114 = icmp ugt i8 %113, 63, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %114, label %120, label %115, !dbg !315

; <label>:115:                                    ; preds = %110
  %116 = shl i8 %95, 6, !dbg !320
  %117 = or i8 %113, %116, !dbg !321
  %118 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !322
  store i8 %117, i8* %102, align 1, !dbg !323, !tbaa !158
  %119 = icmp ult i8* %118, %54, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %119, label %55, label %121, !dbg !325, !llvm.loop !326

; <label>:120:                                    ; preds = %110, %104, %92, %86, %74, %68, %63, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %942, !dbg !331

; <label>:121:                                    ; preds = %115, %97, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  %122 = load i32, i32* %50, align 16, !dbg !346, !tbaa !192
  %123 = call i32 @llvm.bswap.i32(i32 %122) #4, !dbg !348
  %124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 1, !dbg !349
  store i32 %123, i32* %50, align 16, !dbg !350, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %125 = load i32, i32* %124, align 4, !dbg !346, !tbaa !192
  %126 = call i32 @llvm.bswap.i32(i32 %125) #4, !dbg !348
  %127 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 2, !dbg !349
  store i32 %126, i32* %124, align 4, !dbg !350, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %128 = load i32, i32* %127, align 8, !dbg !346, !tbaa !192
  %129 = call i32 @llvm.bswap.i32(i32 %128) #4, !dbg !348
  %130 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 3, !dbg !349
  store i32 %129, i32* %127, align 8, !dbg !350, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %131 = load i32, i32* %130, align 4, !dbg !346, !tbaa !192
  %132 = call i32 @llvm.bswap.i32(i32 %131) #4, !dbg !348
  store i32 %132, i32* %130, align 4, !dbg !350, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  %133 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 0, !dbg !353
  %134 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !354
  %135 = load i8, i8* %14, align 1, !dbg !355, !tbaa !158
  %136 = sext i8 %135 to i64, !dbg !355
  %137 = add nsw i64 %136, -97, !dbg !356
  %138 = getelementptr inbounds [26 x i8], [26 x i8]* @BF_crypt.flags_by_subtype, i64 0, i64 %137, !dbg !357
  %139 = load i8, i8* %138, align 1, !dbg !357, !tbaa !158
  call fastcc void @BF_set_key(i8* %0, i32* nonnull %133, i32* nonnull %134, i8 zeroext %139) #5, !dbg !358
  %140 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, !dbg !359
  %141 = bitcast [256 x i32]* %140 to i8*, !dbg !359
  %142 = call i8* @memcpy(i8* nonnull %141, i8* bitcast ([256 x i32]* getelementptr inbounds (%union.BF_ctx, %union.BF_ctx* @BF_init_state, i64 0, i32 0, i32 1, i64 0) to i8*), i64 4096) #6, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %143 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 1
  %144 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 17
  %145 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 2
  %146 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 3
  br label %147, !dbg !364

; <label>:147:                                    ; preds = %303, %121
  %148 = phi i32 [ 0, %121 ], [ %242, %303 ], !dbg !365
  %149 = phi i32 [ 0, %121 ], [ %305, %303 ], !dbg !365
  %150 = phi i32* [ %134, %121 ], [ %306, %303 ], !dbg !365
  %151 = load i32, i32* %50, align 16, !dbg !367, !tbaa !158
  %152 = xor i32 %151, %148, !dbg !368
  %153 = load i32, i32* %143, align 4, !dbg !369, !tbaa !158
  %154 = xor i32 %153, %149, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br label %155, !dbg !396

; <label>:155:                                    ; preds = %161, %147
  %156 = phi i32 [ %154, %147 ], [ %222, %161 ]
  %157 = phi i32 [ %152, %147 ], [ %163, %161 ]
  %158 = phi i32* [ %150, %147 ], [ %165, %161 ], !dbg !397
  %159 = load i32, i32* %134, align 16, !dbg !398, !tbaa !158
  %160 = xor i32 %159, %157, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br label %167, !dbg !402

; <label>:161:                                    ; preds = %167
  %162 = load i32, i32* %144, align 4, !dbg !404, !tbaa !158
  %163 = xor i32 %162, %196, !dbg !405
  %164 = getelementptr inbounds i32, i32* %158, i64 1, !dbg !406
  store i32 %163, i32* %158, align 4, !dbg !407, !tbaa !192
  %165 = getelementptr inbounds i32, i32* %158, i64 2, !dbg !408
  store i32 %222, i32* %164, align 4, !dbg !409, !tbaa !192
  %166 = icmp ult i32* %165, %150, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %166, label %155, label %224, !dbg !411, !llvm.loop !412

; <label>:167:                                    ; preds = %167, %155
  %168 = phi i64 [ 0, %155 ], [ %217, %167 ]
  %169 = phi i32 [ %160, %155 ], [ %222, %167 ]
  %170 = phi i32 [ %156, %155 ], [ %196, %167 ]
  %171 = and i32 %169, 255, !dbg !415
  %172 = lshr i32 %169, 8, !dbg !415
  %173 = and i32 %172, 255, !dbg !415
  %174 = lshr i32 %169, 16, !dbg !415
  %175 = and i32 %174, 255, !dbg !415
  %176 = lshr i32 %169, 24, !dbg !415
  %177 = zext i32 %171 to i64, !dbg !415
  %178 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %177, !dbg !415
  %179 = load i32, i32* %178, align 4, !dbg !415, !tbaa !158
  %180 = zext i32 %173 to i64, !dbg !415
  %181 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %180, !dbg !415
  %182 = load i32, i32* %181, align 4, !dbg !415, !tbaa !158
  %183 = zext i32 %175 to i64, !dbg !415
  %184 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %183, !dbg !415
  %185 = load i32, i32* %184, align 4, !dbg !415, !tbaa !158
  %186 = zext i32 %176 to i64, !dbg !415
  %187 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %186, !dbg !415
  %188 = load i32, i32* %187, align 4, !dbg !415, !tbaa !158
  %189 = add i32 %188, %185, !dbg !415
  %190 = xor i32 %189, %182, !dbg !415
  %191 = or i64 %168, 1, !dbg !415
  %192 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %191, !dbg !415
  %193 = load i32, i32* %192, align 4, !dbg !415, !tbaa !158
  %194 = xor i32 %193, %170, !dbg !415
  %195 = add i32 %190, %179, !dbg !415
  %196 = xor i32 %194, %195, !dbg !415
  %197 = and i32 %196, 255, !dbg !421
  %198 = lshr i32 %196, 8, !dbg !421
  %199 = and i32 %198, 255, !dbg !421
  %200 = lshr i32 %196, 16, !dbg !421
  %201 = and i32 %200, 255, !dbg !421
  %202 = lshr i32 %196, 24, !dbg !421
  %203 = zext i32 %197 to i64, !dbg !421
  %204 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %203, !dbg !421
  %205 = load i32, i32* %204, align 4, !dbg !421, !tbaa !158
  %206 = zext i32 %199 to i64, !dbg !421
  %207 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %206, !dbg !421
  %208 = load i32, i32* %207, align 4, !dbg !421, !tbaa !158
  %209 = zext i32 %201 to i64, !dbg !421
  %210 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %209, !dbg !421
  %211 = load i32, i32* %210, align 4, !dbg !421, !tbaa !158
  %212 = zext i32 %202 to i64, !dbg !421
  %213 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %212, !dbg !421
  %214 = load i32, i32* %213, align 4, !dbg !421, !tbaa !158
  %215 = add i32 %214, %211, !dbg !421
  %216 = xor i32 %215, %208, !dbg !421
  %217 = add nuw nsw i64 %168, 2, !dbg !422
  %218 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %217, !dbg !421
  %219 = load i32, i32* %218, align 8, !dbg !421, !tbaa !158
  %220 = xor i32 %219, %169, !dbg !421
  %221 = add i32 %216, %205, !dbg !421
  %222 = xor i32 %220, %221, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  %223 = icmp ult i64 %217, 16, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br i1 %223, label %167, label %161, !dbg !402, !llvm.loop !425

; <label>:224:                                    ; preds = %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %225 = getelementptr inbounds i32, i32* %150, i64 1, !dbg !429
  %226 = load i32, i32* %225, align 4, !dbg !430, !tbaa !192
  %227 = getelementptr inbounds i32, i32* %150, i64 2, !dbg !431
  %228 = icmp ult i32* %227, %133, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %228, label %229, label %307, !dbg !434

; <label>:229:                                    ; preds = %224
  %230 = load i32, i32* %145, align 8, !dbg !435, !tbaa !158
  %231 = xor i32 %230, %163, !dbg !436
  %232 = load i32, i32* %146, align 4, !dbg !437, !tbaa !158
  %233 = xor i32 %232, %226, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %234 = load i32, i32* %134, align 16, !tbaa !158
  br label %235, !dbg !446

; <label>:235:                                    ; preds = %240, %229
  %236 = phi i32 [ %233, %229 ], [ %301, %240 ]
  %237 = phi i32 [ %231, %229 ], [ %242, %240 ]
  %238 = phi i32* [ %227, %229 ], [ %244, %240 ], !dbg !447
  %239 = xor i32 %234, %237, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %246, !dbg !451

; <label>:240:                                    ; preds = %246
  %241 = load i32, i32* %144, align 4, !dbg !453, !tbaa !158
  %242 = xor i32 %241, %275, !dbg !454
  %243 = getelementptr inbounds i32, i32* %238, i64 1, !dbg !455
  store i32 %242, i32* %238, align 4, !dbg !456, !tbaa !192
  %244 = getelementptr inbounds i32, i32* %238, i64 2, !dbg !457
  store i32 %301, i32* %243, align 4, !dbg !458, !tbaa !192
  %245 = icmp ult i32* %238, %150, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %245, label %235, label %303, !dbg !460, !llvm.loop !412

; <label>:246:                                    ; preds = %246, %235
  %247 = phi i64 [ 0, %235 ], [ %296, %246 ]
  %248 = phi i32 [ %239, %235 ], [ %301, %246 ]
  %249 = phi i32 [ %236, %235 ], [ %275, %246 ]
  %250 = and i32 %248, 255, !dbg !461
  %251 = lshr i32 %248, 8, !dbg !461
  %252 = and i32 %251, 255, !dbg !461
  %253 = lshr i32 %248, 16, !dbg !461
  %254 = and i32 %253, 255, !dbg !461
  %255 = lshr i32 %248, 24, !dbg !461
  %256 = zext i32 %250 to i64, !dbg !461
  %257 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %256, !dbg !461
  %258 = load i32, i32* %257, align 4, !dbg !461, !tbaa !158
  %259 = zext i32 %252 to i64, !dbg !461
  %260 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %259, !dbg !461
  %261 = load i32, i32* %260, align 4, !dbg !461, !tbaa !158
  %262 = zext i32 %254 to i64, !dbg !461
  %263 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %262, !dbg !461
  %264 = load i32, i32* %263, align 4, !dbg !461, !tbaa !158
  %265 = zext i32 %255 to i64, !dbg !461
  %266 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %265, !dbg !461
  %267 = load i32, i32* %266, align 4, !dbg !461, !tbaa !158
  %268 = add i32 %267, %264, !dbg !461
  %269 = xor i32 %268, %261, !dbg !461
  %270 = or i64 %247, 1, !dbg !461
  %271 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %270, !dbg !461
  %272 = load i32, i32* %271, align 4, !dbg !461, !tbaa !158
  %273 = xor i32 %272, %249, !dbg !461
  %274 = add i32 %269, %258, !dbg !461
  %275 = xor i32 %273, %274, !dbg !461
  %276 = and i32 %275, 255, !dbg !465
  %277 = lshr i32 %275, 8, !dbg !465
  %278 = and i32 %277, 255, !dbg !465
  %279 = lshr i32 %275, 16, !dbg !465
  %280 = and i32 %279, 255, !dbg !465
  %281 = lshr i32 %275, 24, !dbg !465
  %282 = zext i32 %276 to i64, !dbg !465
  %283 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %282, !dbg !465
  %284 = load i32, i32* %283, align 4, !dbg !465, !tbaa !158
  %285 = zext i32 %278 to i64, !dbg !465
  %286 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %285, !dbg !465
  %287 = load i32, i32* %286, align 4, !dbg !465, !tbaa !158
  %288 = zext i32 %280 to i64, !dbg !465
  %289 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %288, !dbg !465
  %290 = load i32, i32* %289, align 4, !dbg !465, !tbaa !158
  %291 = zext i32 %281 to i64, !dbg !465
  %292 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %291, !dbg !465
  %293 = load i32, i32* %292, align 4, !dbg !465, !tbaa !158
  %294 = add i32 %293, %290, !dbg !465
  %295 = xor i32 %294, %287, !dbg !465
  %296 = add nuw nsw i64 %247, 2, !dbg !466
  %297 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %296, !dbg !465
  %298 = load i32, i32* %297, align 8, !dbg !465, !tbaa !158
  %299 = xor i32 %298, %248, !dbg !465
  %300 = add i32 %295, %284, !dbg !465
  %301 = xor i32 %299, %300, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  %302 = icmp ult i64 %296, 16, !dbg !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %302, label %246, label %240, !dbg !451, !llvm.loop !425

; <label>:303:                                    ; preds = %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  %304 = getelementptr inbounds i32, i32* %150, i64 3, !dbg !470
  %305 = load i32, i32* %304, align 4, !dbg !471, !tbaa !192
  %306 = getelementptr inbounds i32, i32* %150, i64 4, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br label %147, !dbg !473

; <label>:307:                                    ; preds = %224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  %308 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 16
  %309 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 1
  %310 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 1
  %311 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 2
  %312 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 2
  %313 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 3
  %314 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 3
  %315 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 4
  %316 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 4
  %317 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 5
  %318 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 5
  %319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 6
  %320 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 6
  %321 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 7
  %322 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 7
  %323 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 8
  %324 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 8
  %325 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 9
  %326 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 9
  %327 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 10
  %328 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 10
  %329 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 11
  %330 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 11
  %331 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 12
  %332 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 12
  %333 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 13
  %334 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 13
  %335 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 14
  %336 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 14
  %337 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 15
  %338 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 15
  %339 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 16
  %340 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 1, i64 17
  %341 = bitcast i32* %50 to <4 x i32>*
  %342 = bitcast %struct.anon.0* %5 to <4 x i32>*
  %343 = bitcast %struct.anon.0* %5 to <4 x i32>*
  %344 = bitcast i32* %316 to <4 x i32>*
  %345 = bitcast i32* %316 to <4 x i32>*
  %346 = bitcast i32* %324 to <4 x i32>*
  %347 = bitcast i32* %324 to <4 x i32>*
  %348 = bitcast i32* %332 to <4 x i32>*
  %349 = bitcast i32* %332 to <4 x i32>*
  br label %350, !dbg !474

; <label>:350:                                    ; preds = %563, %307
  %351 = phi i32 [ %47, %307 ], [ %564, %563 ], !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %352 = load i32, i32* %133, align 8, !dbg !480, !tbaa !192
  %353 = load i32, i32* %134, align 16, !dbg !483, !tbaa !158
  %354 = xor i32 %353, %352, !dbg !483
  store i32 %354, i32* %134, align 16, !dbg !483, !tbaa !158
  %355 = load i32, i32* %309, align 4, !dbg !484, !tbaa !192
  %356 = load i32, i32* %310, align 4, !dbg !485, !tbaa !158
  %357 = xor i32 %356, %355, !dbg !485
  store i32 %357, i32* %310, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %358 = load i32, i32* %311, align 8, !dbg !480, !tbaa !192
  %359 = load i32, i32* %312, align 8, !dbg !483, !tbaa !158
  %360 = xor i32 %359, %358, !dbg !483
  store i32 %360, i32* %312, align 8, !dbg !483, !tbaa !158
  %361 = load i32, i32* %313, align 4, !dbg !484, !tbaa !192
  %362 = load i32, i32* %314, align 4, !dbg !485, !tbaa !158
  %363 = xor i32 %362, %361, !dbg !485
  store i32 %363, i32* %314, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %364 = load i32, i32* %315, align 8, !dbg !480, !tbaa !192
  %365 = load i32, i32* %316, align 16, !dbg !483, !tbaa !158
  %366 = xor i32 %365, %364, !dbg !483
  store i32 %366, i32* %316, align 16, !dbg !483, !tbaa !158
  %367 = load i32, i32* %317, align 4, !dbg !484, !tbaa !192
  %368 = load i32, i32* %318, align 4, !dbg !485, !tbaa !158
  %369 = xor i32 %368, %367, !dbg !485
  store i32 %369, i32* %318, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %370 = load i32, i32* %319, align 8, !dbg !480, !tbaa !192
  %371 = load i32, i32* %320, align 8, !dbg !483, !tbaa !158
  %372 = xor i32 %371, %370, !dbg !483
  store i32 %372, i32* %320, align 8, !dbg !483, !tbaa !158
  %373 = load i32, i32* %321, align 4, !dbg !484, !tbaa !192
  %374 = load i32, i32* %322, align 4, !dbg !485, !tbaa !158
  %375 = xor i32 %374, %373, !dbg !485
  store i32 %375, i32* %322, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %376 = load i32, i32* %323, align 8, !dbg !480, !tbaa !192
  %377 = load i32, i32* %324, align 16, !dbg !483, !tbaa !158
  %378 = xor i32 %377, %376, !dbg !483
  store i32 %378, i32* %324, align 16, !dbg !483, !tbaa !158
  %379 = load i32, i32* %325, align 4, !dbg !484, !tbaa !192
  %380 = load i32, i32* %326, align 4, !dbg !485, !tbaa !158
  %381 = xor i32 %380, %379, !dbg !485
  store i32 %381, i32* %326, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %382 = load i32, i32* %327, align 8, !dbg !480, !tbaa !192
  %383 = load i32, i32* %328, align 8, !dbg !483, !tbaa !158
  %384 = xor i32 %383, %382, !dbg !483
  store i32 %384, i32* %328, align 8, !dbg !483, !tbaa !158
  %385 = load i32, i32* %329, align 4, !dbg !484, !tbaa !192
  %386 = load i32, i32* %330, align 4, !dbg !485, !tbaa !158
  %387 = xor i32 %386, %385, !dbg !485
  store i32 %387, i32* %330, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %388 = load i32, i32* %331, align 8, !dbg !480, !tbaa !192
  %389 = load i32, i32* %332, align 16, !dbg !483, !tbaa !158
  %390 = xor i32 %389, %388, !dbg !483
  store i32 %390, i32* %332, align 16, !dbg !483, !tbaa !158
  %391 = load i32, i32* %333, align 4, !dbg !484, !tbaa !192
  %392 = load i32, i32* %334, align 4, !dbg !485, !tbaa !158
  %393 = xor i32 %392, %391, !dbg !485
  store i32 %393, i32* %334, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %394 = load i32, i32* %335, align 8, !dbg !480, !tbaa !192
  %395 = load i32, i32* %336, align 8, !dbg !483, !tbaa !158
  %396 = xor i32 %395, %394, !dbg !483
  store i32 %396, i32* %336, align 8, !dbg !483, !tbaa !158
  %397 = load i32, i32* %337, align 4, !dbg !484, !tbaa !192
  %398 = load i32, i32* %338, align 4, !dbg !485, !tbaa !158
  %399 = xor i32 %398, %397, !dbg !485
  store i32 %399, i32* %338, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  %400 = load i32, i32* %339, align 8, !dbg !480, !tbaa !192
  %401 = load i32, i32* %308, align 16, !dbg !483, !tbaa !158
  %402 = xor i32 %401, %400, !dbg !483
  store i32 %402, i32* %308, align 16, !dbg !483, !tbaa !158
  %403 = load i32, i32* %340, align 4, !dbg !484, !tbaa !192
  %404 = load i32, i32* %144, align 4, !dbg !485, !tbaa !158
  %405 = xor i32 %404, %403, !dbg !485
  store i32 %405, i32* %144, align 4, !dbg !485, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br label %406, !dbg !496

; <label>:406:                                    ; preds = %412, %350
  %407 = phi i32 [ 0, %350 ], [ %473, %412 ]
  %408 = phi i32 [ 0, %350 ], [ %414, %412 ]
  %409 = phi i32* [ %134, %350 ], [ %416, %412 ], !dbg !497
  %410 = load i32, i32* %134, align 16, !dbg !498, !tbaa !158
  %411 = xor i32 %410, %408, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br label %418, !dbg !502

; <label>:412:                                    ; preds = %418
  %413 = load i32, i32* %144, align 4, !dbg !504, !tbaa !158
  %414 = xor i32 %413, %447, !dbg !505
  %415 = getelementptr inbounds i32, i32* %409, i64 1, !dbg !506
  store i32 %414, i32* %409, align 4, !dbg !507, !tbaa !192
  %416 = getelementptr inbounds i32, i32* %409, i64 2, !dbg !508
  store i32 %473, i32* %415, align 4, !dbg !509, !tbaa !192
  %417 = icmp ult i32* %416, %133, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !511
  br i1 %417, label %406, label %475, !dbg !511, !llvm.loop !412

; <label>:418:                                    ; preds = %418, %406
  %419 = phi i64 [ 0, %406 ], [ %468, %418 ]
  %420 = phi i32 [ %411, %406 ], [ %473, %418 ]
  %421 = phi i32 [ %407, %406 ], [ %447, %418 ]
  %422 = and i32 %420, 255, !dbg !512
  %423 = lshr i32 %420, 8, !dbg !512
  %424 = and i32 %423, 255, !dbg !512
  %425 = lshr i32 %420, 16, !dbg !512
  %426 = and i32 %425, 255, !dbg !512
  %427 = lshr i32 %420, 24, !dbg !512
  %428 = zext i32 %422 to i64, !dbg !512
  %429 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %428, !dbg !512
  %430 = load i32, i32* %429, align 4, !dbg !512, !tbaa !158
  %431 = zext i32 %424 to i64, !dbg !512
  %432 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %431, !dbg !512
  %433 = load i32, i32* %432, align 4, !dbg !512, !tbaa !158
  %434 = zext i32 %426 to i64, !dbg !512
  %435 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %434, !dbg !512
  %436 = load i32, i32* %435, align 4, !dbg !512, !tbaa !158
  %437 = zext i32 %427 to i64, !dbg !512
  %438 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %437, !dbg !512
  %439 = load i32, i32* %438, align 4, !dbg !512, !tbaa !158
  %440 = add i32 %439, %436, !dbg !512
  %441 = xor i32 %440, %433, !dbg !512
  %442 = or i64 %419, 1, !dbg !512
  %443 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %442, !dbg !512
  %444 = load i32, i32* %443, align 4, !dbg !512, !tbaa !158
  %445 = xor i32 %444, %421, !dbg !512
  %446 = add i32 %441, %430, !dbg !512
  %447 = xor i32 %445, %446, !dbg !512
  %448 = and i32 %447, 255, !dbg !516
  %449 = lshr i32 %447, 8, !dbg !516
  %450 = and i32 %449, 255, !dbg !516
  %451 = lshr i32 %447, 16, !dbg !516
  %452 = and i32 %451, 255, !dbg !516
  %453 = lshr i32 %447, 24, !dbg !516
  %454 = zext i32 %448 to i64, !dbg !516
  %455 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %454, !dbg !516
  %456 = load i32, i32* %455, align 4, !dbg !516, !tbaa !158
  %457 = zext i32 %450 to i64, !dbg !516
  %458 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %457, !dbg !516
  %459 = load i32, i32* %458, align 4, !dbg !516, !tbaa !158
  %460 = zext i32 %452 to i64, !dbg !516
  %461 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %460, !dbg !516
  %462 = load i32, i32* %461, align 4, !dbg !516, !tbaa !158
  %463 = zext i32 %453 to i64, !dbg !516
  %464 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %463, !dbg !516
  %465 = load i32, i32* %464, align 4, !dbg !516, !tbaa !158
  %466 = add i32 %465, %462, !dbg !516
  %467 = xor i32 %466, %459, !dbg !516
  %468 = add nuw nsw i64 %419, 2, !dbg !517
  %469 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %468, !dbg !516
  %470 = load i32, i32* %469, align 8, !dbg !516, !tbaa !158
  %471 = xor i32 %470, %420, !dbg !516
  %472 = add i32 %467, %456, !dbg !516
  %473 = xor i32 %471, %472, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %474 = icmp ult i64 %468, 16, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  br i1 %474, label %418, label %412, !dbg !502, !llvm.loop !425

; <label>:475:                                    ; preds = %412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  %476 = load <4 x i32>, <4 x i32>* %341, align 16, !dbg !525, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %477 = load <4 x i32>, <4 x i32>* %342, align 16, !dbg !530, !tbaa !158
  %478 = xor <4 x i32> %477, %476, !dbg !530
  store <4 x i32> %478, <4 x i32>* %343, align 16, !dbg !530, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %479 = load <4 x i32>, <4 x i32>* %344, align 16, !dbg !530, !tbaa !158
  %480 = xor <4 x i32> %479, %476, !dbg !530
  store <4 x i32> %480, <4 x i32>* %345, align 16, !dbg !530, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %481 = load <4 x i32>, <4 x i32>* %346, align 16, !dbg !530, !tbaa !158
  %482 = xor <4 x i32> %481, %476, !dbg !530
  store <4 x i32> %482, <4 x i32>* %347, align 16, !dbg !530, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %483 = load <4 x i32>, <4 x i32>* %348, align 16, !dbg !530, !tbaa !158
  %484 = xor <4 x i32> %483, %476, !dbg !530
  store <4 x i32> %484, <4 x i32>* %349, align 16, !dbg !530, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %485 = load i32, i32* %308, align 16, !dbg !534, !tbaa !158
  %486 = extractelement <4 x i32> %476, i32 0, !dbg !534
  %487 = xor i32 %485, %486, !dbg !534
  store i32 %487, i32* %308, align 16, !dbg !534, !tbaa !158
  %488 = load i32, i32* %144, align 4, !dbg !535, !tbaa !158
  %489 = extractelement <4 x i32> %476, i32 1, !dbg !535
  %490 = xor i32 %488, %489, !dbg !535
  store i32 %490, i32* %144, align 4, !dbg !535, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %491 = extractelement <4 x i32> %478, i32 0, !dbg !544
  br label %492, !dbg !544

; <label>:492:                                    ; preds = %504, %475
  %493 = phi i32 [ %491, %475 ], [ %505, %504 ], !dbg !545
  %494 = phi i32 [ 0, %475 ], [ %561, %504 ]
  %495 = phi i32 [ 0, %475 ], [ %500, %504 ]
  %496 = phi i32* [ %134, %475 ], [ %502, %504 ], !dbg !546
  %497 = xor i32 %493, %495, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br label %506, !dbg !550

; <label>:498:                                    ; preds = %506
  %499 = load i32, i32* %144, align 4, !dbg !552, !tbaa !158
  %500 = xor i32 %499, %535, !dbg !553
  %501 = getelementptr inbounds i32, i32* %496, i64 1, !dbg !554
  store i32 %500, i32* %496, align 4, !dbg !555, !tbaa !192
  %502 = getelementptr inbounds i32, i32* %496, i64 2, !dbg !556
  store i32 %561, i32* %501, align 4, !dbg !557, !tbaa !192
  %503 = icmp ult i32* %502, %133, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %503, label %504, label %563, !dbg !559, !llvm.loop !412

; <label>:504:                                    ; preds = %498
  %505 = load i32, i32* %134, align 16, !dbg !545, !tbaa !158
  br label %492, !dbg !559

; <label>:506:                                    ; preds = %506, %492
  %507 = phi i64 [ 0, %492 ], [ %556, %506 ]
  %508 = phi i32 [ %497, %492 ], [ %561, %506 ]
  %509 = phi i32 [ %494, %492 ], [ %535, %506 ]
  %510 = and i32 %508, 255, !dbg !560
  %511 = lshr i32 %508, 8, !dbg !560
  %512 = and i32 %511, 255, !dbg !560
  %513 = lshr i32 %508, 16, !dbg !560
  %514 = and i32 %513, 255, !dbg !560
  %515 = lshr i32 %508, 24, !dbg !560
  %516 = zext i32 %510 to i64, !dbg !560
  %517 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %516, !dbg !560
  %518 = load i32, i32* %517, align 4, !dbg !560, !tbaa !158
  %519 = zext i32 %512 to i64, !dbg !560
  %520 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %519, !dbg !560
  %521 = load i32, i32* %520, align 4, !dbg !560, !tbaa !158
  %522 = zext i32 %514 to i64, !dbg !560
  %523 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %522, !dbg !560
  %524 = load i32, i32* %523, align 4, !dbg !560, !tbaa !158
  %525 = zext i32 %515 to i64, !dbg !560
  %526 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %525, !dbg !560
  %527 = load i32, i32* %526, align 4, !dbg !560, !tbaa !158
  %528 = add i32 %527, %524, !dbg !560
  %529 = xor i32 %528, %521, !dbg !560
  %530 = or i64 %507, 1, !dbg !560
  %531 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %530, !dbg !560
  %532 = load i32, i32* %531, align 4, !dbg !560, !tbaa !158
  %533 = xor i32 %532, %509, !dbg !560
  %534 = add i32 %529, %518, !dbg !560
  %535 = xor i32 %533, %534, !dbg !560
  %536 = and i32 %535, 255, !dbg !564
  %537 = lshr i32 %535, 8, !dbg !564
  %538 = and i32 %537, 255, !dbg !564
  %539 = lshr i32 %535, 16, !dbg !564
  %540 = and i32 %539, 255, !dbg !564
  %541 = lshr i32 %535, 24, !dbg !564
  %542 = zext i32 %536 to i64, !dbg !564
  %543 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %542, !dbg !564
  %544 = load i32, i32* %543, align 4, !dbg !564, !tbaa !158
  %545 = zext i32 %538 to i64, !dbg !564
  %546 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %545, !dbg !564
  %547 = load i32, i32* %546, align 4, !dbg !564, !tbaa !158
  %548 = zext i32 %540 to i64, !dbg !564
  %549 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %548, !dbg !564
  %550 = load i32, i32* %549, align 4, !dbg !564, !tbaa !158
  %551 = zext i32 %541 to i64, !dbg !564
  %552 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %551, !dbg !564
  %553 = load i32, i32* %552, align 4, !dbg !564, !tbaa !158
  %554 = add i32 %553, %550, !dbg !564
  %555 = xor i32 %554, %547, !dbg !564
  %556 = add nuw nsw i64 %507, 2, !dbg !565
  %557 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %556, !dbg !564
  %558 = load i32, i32* %557, align 8, !dbg !564, !tbaa !158
  %559 = xor i32 %558, %508, !dbg !564
  %560 = add i32 %555, %544, !dbg !564
  %561 = xor i32 %559, %560, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %562 = icmp ult i64 %556, 16, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %562, label %506, label %498, !dbg !550, !llvm.loop !425

; <label>:563:                                    ; preds = %498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  %564 = add i32 %351, -1, !dbg !569
  %565 = icmp eq i32 %564, 0, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %565, label %566, label %350, !dbg !570, !llvm.loop !571

; <label>:566:                                    ; preds = %563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  %567 = load i32, i32* %134, align 16, !dbg !575, !tbaa !158
  br label %568, !dbg !574

; <label>:568:                                    ; preds = %566, %642
  %569 = phi i64 [ 0, %566 ], [ %645, %642 ]
  %570 = getelementptr inbounds [6 x i32], [6 x i32]* @BF_magic_w, i64 0, i64 %569, !dbg !578
  %571 = load i32, i32* %570, align 8, !dbg !578, !tbaa !192
  %572 = or i64 %569, 1, !dbg !580
  %573 = getelementptr inbounds [6 x i32], [6 x i32]* @BF_magic_w, i64 0, i64 %572, !dbg !581
  %574 = load i32, i32* %573, align 4, !dbg !581, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %575 = load i32, i32* %144, align 4
  br label %576, !dbg !583

; <label>:576:                                    ; preds = %581, %568
  %577 = phi i32 [ %574, %568 ], [ %640, %581 ]
  %578 = phi i32 [ 64, %568 ], [ %583, %581 ], !dbg !584
  %579 = phi i32 [ %571, %568 ], [ %582, %581 ], !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  %580 = xor i32 %567, %579, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br label %585, !dbg !594

; <label>:581:                                    ; preds = %585
  %582 = xor i32 %575, %614, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %583 = add nsw i32 %578, -1, !dbg !599
  %584 = icmp eq i32 %583, 0, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  br i1 %584, label %642, label %576, !dbg !600, !llvm.loop !601

; <label>:585:                                    ; preds = %585, %576
  %586 = phi i64 [ 0, %576 ], [ %635, %585 ]
  %587 = phi i32 [ %580, %576 ], [ %640, %585 ]
  %588 = phi i32 [ %577, %576 ], [ %614, %585 ]
  %589 = and i32 %587, 255, !dbg !603
  %590 = lshr i32 %587, 8, !dbg !603
  %591 = and i32 %590, 255, !dbg !603
  %592 = lshr i32 %587, 16, !dbg !603
  %593 = and i32 %592, 255, !dbg !603
  %594 = lshr i32 %587, 24, !dbg !603
  %595 = zext i32 %589 to i64, !dbg !603
  %596 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %595, !dbg !603
  %597 = load i32, i32* %596, align 4, !dbg !603, !tbaa !158
  %598 = zext i32 %591 to i64, !dbg !603
  %599 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %598, !dbg !603
  %600 = load i32, i32* %599, align 4, !dbg !603, !tbaa !158
  %601 = zext i32 %593 to i64, !dbg !603
  %602 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %601, !dbg !603
  %603 = load i32, i32* %602, align 4, !dbg !603, !tbaa !158
  %604 = zext i32 %594 to i64, !dbg !603
  %605 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %604, !dbg !603
  %606 = load i32, i32* %605, align 4, !dbg !603, !tbaa !158
  %607 = add i32 %606, %603, !dbg !603
  %608 = xor i32 %607, %600, !dbg !603
  %609 = or i64 %586, 1, !dbg !603
  %610 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %609, !dbg !603
  %611 = load i32, i32* %610, align 4, !dbg !603, !tbaa !158
  %612 = xor i32 %611, %588, !dbg !603
  %613 = add i32 %608, %597, !dbg !603
  %614 = xor i32 %612, %613, !dbg !603
  %615 = and i32 %614, 255, !dbg !607
  %616 = lshr i32 %614, 8, !dbg !607
  %617 = and i32 %616, 255, !dbg !607
  %618 = lshr i32 %614, 16, !dbg !607
  %619 = and i32 %618, 255, !dbg !607
  %620 = lshr i32 %614, 24, !dbg !607
  %621 = zext i32 %615 to i64, !dbg !607
  %622 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 3, i64 %621, !dbg !607
  %623 = load i32, i32* %622, align 4, !dbg !607, !tbaa !158
  %624 = zext i32 %617 to i64, !dbg !607
  %625 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 2, i64 %624, !dbg !607
  %626 = load i32, i32* %625, align 4, !dbg !607, !tbaa !158
  %627 = zext i32 %619 to i64, !dbg !607
  %628 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 1, i64 %627, !dbg !607
  %629 = load i32, i32* %628, align 4, !dbg !607, !tbaa !158
  %630 = zext i32 %620 to i64, !dbg !607
  %631 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 1, i64 0, i64 %630, !dbg !607
  %632 = load i32, i32* %631, align 4, !dbg !607, !tbaa !158
  %633 = add i32 %632, %629, !dbg !607
  %634 = xor i32 %633, %626, !dbg !607
  %635 = add nuw nsw i64 %586, 2, !dbg !608
  %636 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 0, i32 0, i32 0, i64 %635, !dbg !607
  %637 = load i32, i32* %636, align 8, !dbg !607, !tbaa !158
  %638 = xor i32 %637, %587, !dbg !607
  %639 = add i32 %634, %623, !dbg !607
  %640 = xor i32 %638, %639, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %641 = icmp ult i64 %635, 16, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %641, label %585, label %581, !dbg !594, !llvm.loop !425

; <label>:642:                                    ; preds = %581
  %643 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 %569, !dbg !611
  store i32 %582, i32* %643, align 8, !dbg !612, !tbaa !158
  %644 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 %572, !dbg !613
  store i32 %640, i32* %644, align 4, !dbg !614, !tbaa !158
  %645 = add nuw nsw i64 %569, 2, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %646 = icmp ult i64 %645, 6, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %646, label %568, label %647, !dbg !574, !llvm.loop !618

; <label>:647:                                    ; preds = %642
  %648 = call i8* @memcpy(i8* %2, i8* %1, i64 28) #6, !dbg !620
  %649 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !621
  %650 = load i8, i8* %649, align 1, !dbg !621, !tbaa !158
  %651 = sext i8 %650 to i64, !dbg !621
  %652 = add nsw i64 %651, -32, !dbg !622
  %653 = getelementptr inbounds [96 x i8], [96 x i8]* @BF_atoi64, i64 0, i64 %652, !dbg !623
  %654 = load i8, i8* %653, align 1, !dbg !623, !tbaa !158
  %655 = and i8 %654, 48, !dbg !624
  %656 = zext i8 %655 to i64, !dbg !625
  %657 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %656, !dbg !625
  %658 = load i8, i8* %657, align 16, !dbg !625, !tbaa !158
  %659 = getelementptr inbounds i8, i8* %2, i64 28, !dbg !626
  store i8 %658, i8* %659, align 1, !dbg !627, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %660 = load i32, i32* %50, align 16, !dbg !632, !tbaa !192
  %661 = call i32 @llvm.bswap.i32(i32 %660) #4, !dbg !634
  store i32 %661, i32* %50, align 16, !dbg !635, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %662 = load i32, i32* %124, align 4, !dbg !632, !tbaa !192
  %663 = call i32 @llvm.bswap.i32(i32 %662) #4, !dbg !634
  store i32 %663, i32* %124, align 4, !dbg !635, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %664 = load i32, i32* %127, align 8, !dbg !632, !tbaa !192
  %665 = call i32 @llvm.bswap.i32(i32 %664) #4, !dbg !634
  store i32 %665, i32* %127, align 8, !dbg !635, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %666 = load i32, i32* %130, align 4, !dbg !632, !tbaa !192
  %667 = call i32 @llvm.bswap.i32(i32 %666) #4, !dbg !634
  %668 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 4, !dbg !637
  store i32 %667, i32* %130, align 4, !dbg !635, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %669 = load i32, i32* %668, align 16, !dbg !632, !tbaa !192
  %670 = call i32 @llvm.bswap.i32(i32 %669) #4, !dbg !634
  %671 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 5, !dbg !637
  store i32 %670, i32* %668, align 16, !dbg !635, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %672 = load i32, i32* %671, align 4, !dbg !632, !tbaa !192
  %673 = call i32 @llvm.bswap.i32(i32 %672) #4, !dbg !634
  store i32 %673, i32* %671, align 4, !dbg !635, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  %674 = getelementptr inbounds i8, i8* %2, i64 29, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  %675 = getelementptr i8, i8* %2, i64 59, !dbg !660
  %676 = load i8, i8* %52, align 16, !dbg !661, !tbaa !158
  %677 = zext i8 %676 to i32, !dbg !661
  %678 = lshr i32 %677, 2, !dbg !664
  %679 = zext i32 %678 to i64, !dbg !665
  %680 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %679, !dbg !665
  %681 = load i8, i8* %680, align 1, !dbg !665, !tbaa !158
  store i8 %681, i8* %674, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %682 = shl nuw nsw i32 %677, 4, !dbg !668
  %683 = and i32 %682, 48, !dbg !668
  %684 = getelementptr inbounds i8, i8* %2, i64 30, !dbg !669
  %685 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !657
  %686 = load i8, i8* %685, align 1, !dbg !670, !tbaa !158
  %687 = zext i8 %686 to i32, !dbg !670
  %688 = lshr i32 %687, 4, !dbg !672
  %689 = or i32 %688, %683, !dbg !673
  %690 = zext i32 %689 to i64, !dbg !674
  %691 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %690, !dbg !674
  %692 = load i8, i8* %691, align 1, !dbg !674, !tbaa !158
  store i8 %692, i8* %684, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %693 = shl nuw nsw i32 %687, 2, !dbg !677
  %694 = and i32 %693, 60, !dbg !677
  %695 = getelementptr inbounds i8, i8* %2, i64 31, !dbg !678
  %696 = getelementptr inbounds i8, i8* %52, i64 2, !dbg !657
  %697 = load i8, i8* %696, align 2, !dbg !679, !tbaa !158
  %698 = zext i8 %697 to i32, !dbg !679
  %699 = lshr i32 %698, 6, !dbg !680
  %700 = or i32 %699, %694, !dbg !681
  %701 = zext i32 %700 to i64, !dbg !682
  %702 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %701, !dbg !682
  %703 = load i8, i8* %702, align 1, !dbg !682, !tbaa !158
  %704 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !683
  store i8 %703, i8* %695, align 1, !dbg !684, !tbaa !158
  %705 = and i32 %698, 63, !dbg !685
  %706 = zext i32 %705 to i64, !dbg !686
  %707 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %706, !dbg !686
  %708 = load i8, i8* %707, align 1, !dbg !686, !tbaa !158
  %709 = getelementptr inbounds i8, i8* %2, i64 33, !dbg !687
  store i8 %708, i8* %704, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %710 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !659
  %711 = load i8, i8* %710, align 1, !dbg !661, !tbaa !158
  %712 = zext i8 %711 to i32, !dbg !661
  %713 = lshr i32 %712, 2, !dbg !664
  %714 = zext i32 %713 to i64, !dbg !665
  %715 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %714, !dbg !665
  %716 = load i8, i8* %715, align 1, !dbg !665, !tbaa !158
  store i8 %716, i8* %709, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %717 = shl nuw nsw i32 %712, 4, !dbg !668
  %718 = and i32 %717, 48, !dbg !668
  %719 = getelementptr inbounds i8, i8* %2, i64 34, !dbg !669
  %720 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 1, !dbg !657
  %721 = bitcast i32* %720 to i8*, !dbg !657
  %722 = load i8, i8* %721, align 4, !dbg !670, !tbaa !158
  %723 = zext i8 %722 to i32, !dbg !670
  %724 = lshr i32 %723, 4, !dbg !672
  %725 = or i32 %724, %718, !dbg !673
  %726 = zext i32 %725 to i64, !dbg !674
  %727 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %726, !dbg !674
  %728 = load i8, i8* %727, align 1, !dbg !674, !tbaa !158
  store i8 %728, i8* %719, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %729 = shl nuw nsw i32 %723, 2, !dbg !677
  %730 = and i32 %729, 60, !dbg !677
  %731 = getelementptr inbounds i8, i8* %2, i64 35, !dbg !678
  %732 = getelementptr inbounds i8, i8* %52, i64 5, !dbg !657
  %733 = load i8, i8* %732, align 1, !dbg !679, !tbaa !158
  %734 = zext i8 %733 to i32, !dbg !679
  %735 = lshr i32 %734, 6, !dbg !680
  %736 = or i32 %735, %730, !dbg !681
  %737 = zext i32 %736 to i64, !dbg !682
  %738 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %737, !dbg !682
  %739 = load i8, i8* %738, align 1, !dbg !682, !tbaa !158
  %740 = getelementptr inbounds i8, i8* %2, i64 36, !dbg !683
  store i8 %739, i8* %731, align 1, !dbg !684, !tbaa !158
  %741 = and i32 %734, 63, !dbg !685
  %742 = zext i32 %741 to i64, !dbg !686
  %743 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %742, !dbg !686
  %744 = load i8, i8* %743, align 1, !dbg !686, !tbaa !158
  %745 = getelementptr inbounds i8, i8* %2, i64 37, !dbg !687
  store i8 %744, i8* %740, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %746 = getelementptr inbounds i8, i8* %52, i64 6, !dbg !659
  %747 = load i8, i8* %746, align 2, !dbg !661, !tbaa !158
  %748 = zext i8 %747 to i32, !dbg !661
  %749 = lshr i32 %748, 2, !dbg !664
  %750 = zext i32 %749 to i64, !dbg !665
  %751 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %750, !dbg !665
  %752 = load i8, i8* %751, align 1, !dbg !665, !tbaa !158
  store i8 %752, i8* %745, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %753 = shl nuw nsw i32 %748, 4, !dbg !668
  %754 = and i32 %753, 48, !dbg !668
  %755 = getelementptr inbounds i8, i8* %2, i64 38, !dbg !669
  %756 = getelementptr inbounds i8, i8* %52, i64 7, !dbg !657
  %757 = load i8, i8* %756, align 1, !dbg !670, !tbaa !158
  %758 = zext i8 %757 to i32, !dbg !670
  %759 = lshr i32 %758, 4, !dbg !672
  %760 = or i32 %759, %754, !dbg !673
  %761 = zext i32 %760 to i64, !dbg !674
  %762 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %761, !dbg !674
  %763 = load i8, i8* %762, align 1, !dbg !674, !tbaa !158
  store i8 %763, i8* %755, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %764 = shl nuw nsw i32 %758, 2, !dbg !677
  %765 = and i32 %764, 60, !dbg !677
  %766 = getelementptr inbounds i8, i8* %2, i64 39, !dbg !678
  %767 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 2, !dbg !657
  %768 = bitcast i32* %767 to i8*, !dbg !657
  %769 = load i8, i8* %768, align 8, !dbg !679, !tbaa !158
  %770 = zext i8 %769 to i32, !dbg !679
  %771 = lshr i32 %770, 6, !dbg !680
  %772 = or i32 %771, %765, !dbg !681
  %773 = zext i32 %772 to i64, !dbg !682
  %774 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %773, !dbg !682
  %775 = load i8, i8* %774, align 1, !dbg !682, !tbaa !158
  %776 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !683
  store i8 %775, i8* %766, align 1, !dbg !684, !tbaa !158
  %777 = and i32 %770, 63, !dbg !685
  %778 = zext i32 %777 to i64, !dbg !686
  %779 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %778, !dbg !686
  %780 = load i8, i8* %779, align 1, !dbg !686, !tbaa !158
  %781 = getelementptr inbounds i8, i8* %2, i64 41, !dbg !687
  store i8 %780, i8* %776, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %782 = getelementptr inbounds i8, i8* %52, i64 9, !dbg !659
  %783 = load i8, i8* %782, align 1, !dbg !661, !tbaa !158
  %784 = zext i8 %783 to i32, !dbg !661
  %785 = lshr i32 %784, 2, !dbg !664
  %786 = zext i32 %785 to i64, !dbg !665
  %787 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %786, !dbg !665
  %788 = load i8, i8* %787, align 1, !dbg !665, !tbaa !158
  store i8 %788, i8* %781, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %789 = shl nuw nsw i32 %784, 4, !dbg !668
  %790 = and i32 %789, 48, !dbg !668
  %791 = getelementptr inbounds i8, i8* %2, i64 42, !dbg !669
  %792 = getelementptr inbounds i8, i8* %52, i64 10, !dbg !657
  %793 = load i8, i8* %792, align 2, !dbg !670, !tbaa !158
  %794 = zext i8 %793 to i32, !dbg !670
  %795 = lshr i32 %794, 4, !dbg !672
  %796 = or i32 %795, %790, !dbg !673
  %797 = zext i32 %796 to i64, !dbg !674
  %798 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %797, !dbg !674
  %799 = load i8, i8* %798, align 1, !dbg !674, !tbaa !158
  store i8 %799, i8* %791, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %800 = shl nuw nsw i32 %794, 2, !dbg !677
  %801 = and i32 %800, 60, !dbg !677
  %802 = getelementptr inbounds i8, i8* %2, i64 43, !dbg !678
  %803 = getelementptr inbounds i8, i8* %52, i64 11, !dbg !657
  %804 = load i8, i8* %803, align 1, !dbg !679, !tbaa !158
  %805 = zext i8 %804 to i32, !dbg !679
  %806 = lshr i32 %805, 6, !dbg !680
  %807 = or i32 %806, %801, !dbg !681
  %808 = zext i32 %807 to i64, !dbg !682
  %809 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %808, !dbg !682
  %810 = load i8, i8* %809, align 1, !dbg !682, !tbaa !158
  %811 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !683
  store i8 %810, i8* %802, align 1, !dbg !684, !tbaa !158
  %812 = and i32 %805, 63, !dbg !685
  %813 = zext i32 %812 to i64, !dbg !686
  %814 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %813, !dbg !686
  %815 = load i8, i8* %814, align 1, !dbg !686, !tbaa !158
  %816 = getelementptr inbounds i8, i8* %2, i64 45, !dbg !687
  store i8 %815, i8* %811, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %817 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 3, !dbg !659
  %818 = bitcast i32* %817 to i8*, !dbg !659
  %819 = load i8, i8* %818, align 4, !dbg !661, !tbaa !158
  %820 = zext i8 %819 to i32, !dbg !661
  %821 = lshr i32 %820, 2, !dbg !664
  %822 = zext i32 %821 to i64, !dbg !665
  %823 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %822, !dbg !665
  %824 = load i8, i8* %823, align 1, !dbg !665, !tbaa !158
  store i8 %824, i8* %816, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %825 = shl nuw nsw i32 %820, 4, !dbg !668
  %826 = and i32 %825, 48, !dbg !668
  %827 = getelementptr inbounds i8, i8* %2, i64 46, !dbg !669
  %828 = getelementptr inbounds i8, i8* %52, i64 13, !dbg !657
  %829 = load i8, i8* %828, align 1, !dbg !670, !tbaa !158
  %830 = zext i8 %829 to i32, !dbg !670
  %831 = lshr i32 %830, 4, !dbg !672
  %832 = or i32 %831, %826, !dbg !673
  %833 = zext i32 %832 to i64, !dbg !674
  %834 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %833, !dbg !674
  %835 = load i8, i8* %834, align 1, !dbg !674, !tbaa !158
  store i8 %835, i8* %827, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %836 = shl nuw nsw i32 %830, 2, !dbg !677
  %837 = and i32 %836, 60, !dbg !677
  %838 = getelementptr inbounds i8, i8* %2, i64 47, !dbg !678
  %839 = getelementptr inbounds i8, i8* %52, i64 14, !dbg !657
  %840 = load i8, i8* %839, align 2, !dbg !679, !tbaa !158
  %841 = zext i8 %840 to i32, !dbg !679
  %842 = lshr i32 %841, 6, !dbg !680
  %843 = or i32 %842, %837, !dbg !681
  %844 = zext i32 %843 to i64, !dbg !682
  %845 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %844, !dbg !682
  %846 = load i8, i8* %845, align 1, !dbg !682, !tbaa !158
  %847 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !683
  store i8 %846, i8* %838, align 1, !dbg !684, !tbaa !158
  %848 = and i32 %841, 63, !dbg !685
  %849 = zext i32 %848 to i64, !dbg !686
  %850 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %849, !dbg !686
  %851 = load i8, i8* %850, align 1, !dbg !686, !tbaa !158
  %852 = getelementptr inbounds i8, i8* %2, i64 49, !dbg !687
  store i8 %851, i8* %847, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %853 = getelementptr inbounds i8, i8* %52, i64 15, !dbg !659
  %854 = load i8, i8* %853, align 1, !dbg !661, !tbaa !158
  %855 = zext i8 %854 to i32, !dbg !661
  %856 = lshr i32 %855, 2, !dbg !664
  %857 = zext i32 %856 to i64, !dbg !665
  %858 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %857, !dbg !665
  %859 = load i8, i8* %858, align 1, !dbg !665, !tbaa !158
  store i8 %859, i8* %852, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %860 = shl nuw nsw i32 %855, 4, !dbg !668
  %861 = and i32 %860, 48, !dbg !668
  %862 = getelementptr inbounds i8, i8* %2, i64 50, !dbg !669
  %863 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i64 0, i32 2, i32 0, i64 4, !dbg !657
  %864 = bitcast i32* %863 to i8*, !dbg !657
  %865 = load i8, i8* %864, align 16, !dbg !670, !tbaa !158
  %866 = zext i8 %865 to i32, !dbg !670
  %867 = lshr i32 %866, 4, !dbg !672
  %868 = or i32 %867, %861, !dbg !673
  %869 = zext i32 %868 to i64, !dbg !674
  %870 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %869, !dbg !674
  %871 = load i8, i8* %870, align 1, !dbg !674, !tbaa !158
  store i8 %871, i8* %862, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %872 = shl nuw nsw i32 %866, 2, !dbg !677
  %873 = and i32 %872, 60, !dbg !677
  %874 = getelementptr inbounds i8, i8* %2, i64 51, !dbg !678
  %875 = getelementptr inbounds i8, i8* %52, i64 17, !dbg !657
  %876 = load i8, i8* %875, align 1, !dbg !679, !tbaa !158
  %877 = zext i8 %876 to i32, !dbg !679
  %878 = lshr i32 %877, 6, !dbg !680
  %879 = or i32 %878, %873, !dbg !681
  %880 = zext i32 %879 to i64, !dbg !682
  %881 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %880, !dbg !682
  %882 = load i8, i8* %881, align 1, !dbg !682, !tbaa !158
  %883 = getelementptr inbounds i8, i8* %2, i64 52, !dbg !683
  store i8 %882, i8* %874, align 1, !dbg !684, !tbaa !158
  %884 = and i32 %877, 63, !dbg !685
  %885 = zext i32 %884 to i64, !dbg !686
  %886 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %885, !dbg !686
  %887 = load i8, i8* %886, align 1, !dbg !686, !tbaa !158
  %888 = getelementptr inbounds i8, i8* %2, i64 53, !dbg !687
  store i8 %887, i8* %883, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %889 = getelementptr inbounds i8, i8* %52, i64 18, !dbg !659
  %890 = load i8, i8* %889, align 2, !dbg !661, !tbaa !158
  %891 = zext i8 %890 to i32, !dbg !661
  %892 = lshr i32 %891, 2, !dbg !664
  %893 = zext i32 %892 to i64, !dbg !665
  %894 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %893, !dbg !665
  %895 = load i8, i8* %894, align 1, !dbg !665, !tbaa !158
  store i8 %895, i8* %888, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %896 = shl nuw nsw i32 %891, 4, !dbg !668
  %897 = and i32 %896, 48, !dbg !668
  %898 = getelementptr inbounds i8, i8* %2, i64 54, !dbg !669
  %899 = getelementptr inbounds i8, i8* %52, i64 19, !dbg !657
  %900 = load i8, i8* %899, align 1, !dbg !670, !tbaa !158
  %901 = zext i8 %900 to i32, !dbg !670
  %902 = lshr i32 %901, 4, !dbg !672
  %903 = or i32 %902, %897, !dbg !673
  %904 = zext i32 %903 to i64, !dbg !674
  %905 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %904, !dbg !674
  %906 = load i8, i8* %905, align 1, !dbg !674, !tbaa !158
  store i8 %906, i8* %898, align 1, !dbg !675, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %907 = shl nuw nsw i32 %901, 2, !dbg !677
  %908 = and i32 %907, 60, !dbg !677
  %909 = getelementptr inbounds i8, i8* %2, i64 55, !dbg !678
  %910 = lshr i32 %673, 6, !dbg !680
  %911 = and i32 %910, 3, !dbg !680
  %912 = or i32 %911, %908, !dbg !681
  %913 = zext i32 %912 to i64, !dbg !682
  %914 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %913, !dbg !682
  %915 = load i8, i8* %914, align 1, !dbg !682, !tbaa !158
  %916 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !683
  store i8 %915, i8* %909, align 1, !dbg !684, !tbaa !158
  %917 = and i32 %673, 63, !dbg !685
  %918 = zext i32 %917 to i64, !dbg !686
  %919 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %918, !dbg !686
  %920 = load i8, i8* %919, align 1, !dbg !686, !tbaa !158
  %921 = getelementptr inbounds i8, i8* %2, i64 57, !dbg !687
  store i8 %920, i8* %916, align 1, !dbg !688, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %922 = lshr i32 %673, 10, !dbg !664
  %923 = and i32 %922, 63, !dbg !664
  %924 = zext i32 %923 to i64, !dbg !665
  %925 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %924, !dbg !665
  %926 = load i8, i8* %925, align 1, !dbg !665, !tbaa !158
  store i8 %926, i8* %921, align 1, !dbg !666, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  %927 = lshr i32 %673, 4, !dbg !668
  %928 = and i32 %927, 48, !dbg !668
  %929 = getelementptr inbounds i8, i8* %2, i64 58, !dbg !669
  %930 = lshr i32 %673, 20, !dbg !672
  %931 = and i32 %930, 15, !dbg !672
  %932 = or i32 %931, %928, !dbg !673
  %933 = zext i32 %932 to i64, !dbg !674
  %934 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %933, !dbg !674
  %935 = load i8, i8* %934, align 1, !dbg !674, !tbaa !158
  store i8 %935, i8* %929, align 1, !dbg !675, !tbaa !158
  %936 = lshr i32 %673, 14, !dbg !677
  %937 = and i32 %936, 60, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  %938 = zext i32 %937 to i64, !dbg !690
  %939 = getelementptr inbounds [65 x i8], [65 x i8]* @BF_itoa64, i64 0, i64 %938, !dbg !690
  %940 = load i8, i8* %939, align 4, !dbg !690, !tbaa !158
  store i8 %940, i8* %675, align 1, !dbg !693, !tbaa !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  %941 = getelementptr inbounds i8, i8* %2, i64 60, !dbg !696
  store i8 0, i8* %941, align 1, !dbg !697, !tbaa !158
  br label %942, !dbg !698

; <label>:942:                                    ; preds = %44, %120, %13, %28, %34, %4, %9, %19, %24, %40, %647
  %943 = phi i8* [ %2, %647 ], [ null, %40 ], [ null, %24 ], [ null, %19 ], [ null, %9 ], [ null, %4 ], [ null, %34 ], [ null, %28 ], [ null, %13 ], [ null, %120 ], [ null, %44 ], !dbg !475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 4264, i8* nonnull %6) #4, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  ret i8* %943, !dbg !701
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @BF_set_key(i8* nocapture readonly, i32* nocapture, i32* nocapture, i8 zeroext) unnamed_addr #0 !dbg !702 {
  %5 = alloca [2 x i32], align 4
  %6 = bitcast [2 x i32]* %5 to i8*, !dbg !723
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !723
  %7 = zext i8 %3 to i32, !dbg !725
  %8 = and i32 %7, 1, !dbg !726
  %9 = shl nuw nsw i32 %7, 15, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %12
  br label %14, !dbg !735

; <label>:14:                                     ; preds = %14, %4
  %15 = phi i64 [ 0, %4 ], [ %77, %14 ]
  %16 = phi i32 [ 0, %4 ], [ %70, %14 ]
  %17 = phi i32 [ 0, %4 ], [ %64, %14 ]
  %18 = phi i8* [ %0, %4 ], [ %68, %14 ]
  store i32 0, i32* %10, align 4, !dbg !736, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store i32 0, i32* %11, align 4, !dbg !743, !tbaa !192
  %19 = load i8, i8* %18, align 1, !dbg !746, !tbaa !158
  %20 = zext i8 %19 to i32, !dbg !747
  store i32 %20, i32* %11, align 4, !dbg !748, !tbaa !192
  store i32 0, i32* %10, align 4, !dbg !749, !tbaa !192
  %21 = load i8, i8* %18, align 1, !dbg !750, !tbaa !158
  %22 = sext i8 %21 to i32, !dbg !751
  store i32 %22, i32* %10, align 4, !dbg !752, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %23 = load i8, i8* %18, align 1, !dbg !754, !tbaa !158
  %24 = icmp eq i8 %23, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %25 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !757
  %26 = select i1 %24, i8* %0, i8* %25, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %27 = shl nuw nsw i32 %20, 8, !dbg !743
  store i32 %27, i32* %11, align 4, !dbg !743, !tbaa !192
  %28 = load i8, i8* %26, align 1, !dbg !746, !tbaa !158
  %29 = zext i8 %28 to i32, !dbg !747
  %30 = or i32 %27, %29, !dbg !748
  store i32 %30, i32* %11, align 4, !dbg !748, !tbaa !192
  %31 = shl nsw i32 %22, 8, !dbg !749
  store i32 %31, i32* %10, align 4, !dbg !749, !tbaa !192
  %32 = load i8, i8* %26, align 1, !dbg !750, !tbaa !158
  %33 = sext i8 %32 to i32, !dbg !751
  %34 = or i32 %31, %33, !dbg !752
  store i32 %34, i32* %10, align 4, !dbg !752, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %35 = and i32 %33, 128, !dbg !759
  %36 = or i32 %35, %17, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %37 = load i8, i8* %26, align 1, !dbg !754, !tbaa !158
  %38 = icmp eq i8 %37, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %39 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !757
  %40 = select i1 %38, i8* %0, i8* %39, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %41 = shl nuw nsw i32 %30, 8, !dbg !743
  store i32 %41, i32* %11, align 4, !dbg !743, !tbaa !192
  %42 = load i8, i8* %40, align 1, !dbg !746, !tbaa !158
  %43 = zext i8 %42 to i32, !dbg !747
  %44 = or i32 %41, %43, !dbg !748
  store i32 %44, i32* %11, align 4, !dbg !748, !tbaa !192
  %45 = shl nsw i32 %34, 8, !dbg !749
  store i32 %45, i32* %10, align 4, !dbg !749, !tbaa !192
  %46 = load i8, i8* %40, align 1, !dbg !750, !tbaa !158
  %47 = sext i8 %46 to i32, !dbg !751
  %48 = or i32 %45, %47, !dbg !752
  store i32 %48, i32* %10, align 4, !dbg !752, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %49 = and i32 %47, 128, !dbg !759
  %50 = or i32 %49, %36, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %51 = load i8, i8* %40, align 1, !dbg !754, !tbaa !158
  %52 = icmp eq i8 %51, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %53 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !757
  %54 = select i1 %52, i8* %0, i8* %53, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %55 = shl nuw i32 %44, 8, !dbg !743
  store i32 %55, i32* %11, align 4, !dbg !743, !tbaa !192
  %56 = load i8, i8* %54, align 1, !dbg !746, !tbaa !158
  %57 = zext i8 %56 to i32, !dbg !747
  %58 = or i32 %55, %57, !dbg !748
  store i32 %58, i32* %11, align 4, !dbg !748, !tbaa !192
  %59 = shl nsw i32 %48, 8, !dbg !749
  store i32 %59, i32* %10, align 4, !dbg !749, !tbaa !192
  %60 = load i8, i8* %54, align 1, !dbg !750, !tbaa !158
  %61 = sext i8 %60 to i32, !dbg !751
  %62 = or i32 %59, %61, !dbg !752
  store i32 %62, i32* %10, align 4, !dbg !752, !tbaa !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %63 = and i32 %61, 128, !dbg !759
  %64 = or i32 %63, %50, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  %65 = load i8, i8* %54, align 1, !dbg !754, !tbaa !158
  %66 = icmp eq i8 %65, 0, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %67 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !757
  %68 = select i1 %66, i8* %0, i8* %67, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %69 = xor i32 %62, %58, !dbg !763
  %70 = or i32 %69, %16, !dbg !764
  %71 = load i32, i32* %13, align 4, !dbg !765, !tbaa !192
  %72 = getelementptr inbounds i32, i32* %1, i64 %15, !dbg !766
  store i32 %71, i32* %72, align 4, !dbg !767, !tbaa !192
  %73 = getelementptr inbounds %union.BF_ctx, %union.BF_ctx* @BF_init_state, i64 0, i32 0, i32 0, i64 %15, !dbg !768
  %74 = load i32, i32* %73, align 4, !dbg !768, !tbaa !158
  %75 = xor i32 %74, %71, !dbg !769
  %76 = getelementptr inbounds i32, i32* %2, i64 %15, !dbg !770
  store i32 %75, i32* %76, align 4, !dbg !771, !tbaa !192
  %77 = add nuw nsw i64 %15, 1, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %78 = icmp eq i64 %77, 18, !dbg !774
  br i1 %78, label %79, label %14, !dbg !735, !llvm.loop !775

; <label>:79:                                     ; preds = %14
  %80 = and i32 %9, 65536, !dbg !728
  %81 = lshr i32 %70, 16, !dbg !777
  %82 = and i32 %70, 65535, !dbg !778
  %83 = or i32 %82, %81, !dbg !778
  %84 = shl i32 %64, 9, !dbg !779
  %85 = sub nsw i32 65536, %83, !dbg !780
  %86 = and i32 %80, %84, !dbg !781
  %87 = and i32 %86, %85, !dbg !782
  %88 = load i32, i32* %2, align 4, !dbg !783, !tbaa !192
  %89 = xor i32 %88, %87, !dbg !783
  store i32 %89, i32* %2, align 4, !dbg !783, !tbaa !192
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  ret void, !dbg !784
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!143, !144, !145}
!llvm.ident = !{!146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "test_hash", scope: !2, file: !3, line: 749, type: !140, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__crypt_blowfish", scope: !3, file: !3, line: 745, type: !4, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !114)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_blowfish.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !8, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !12, globals: !24)
!11 = !{}
!12 = !{!13, !19, !21, !20, !18, !23}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "BF_word", file: !3, line: 53, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 48, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 79, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!23 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!0, !25, !97, !100, !104, !109}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "flags_by_subtype", scope: !27, file: !3, line: 602, type: !94, isLocal: true, isDefinition: true)
!27 = distinct !DISubprogram(name: "BF_crypt", scope: !3, file: !3, line: 599, type: !28, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!6, !8, !8, !6, !13}
!30 = !{!31, !32, !33, !34, !35, !70, !71, !73, !75, !76, !78, !80, !83, !84, !85, !86, !90}
!31 = !DILocalVariable(name: "key", arg: 1, scope: !27, file: !3, line: 599, type: !8)
!32 = !DILocalVariable(name: "setting", arg: 2, scope: !27, file: !3, line: 599, type: !8)
!33 = !DILocalVariable(name: "output", arg: 3, scope: !27, file: !3, line: 600, type: !6)
!34 = !DILocalVariable(name: "min", arg: 4, scope: !27, file: !3, line: 600, type: !13)
!35 = !DILocalVariable(name: "data", scope: !27, file: !3, line: 612, type: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !27, file: !3, line: 605, size: 34112, elements: !37)
!37 = !{!38, !59, !60}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !36, file: !3, line: 606, baseType: !39, size: 33344)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "BF_ctx", file: !3, line: 67, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3, line: 61, size: 33344, elements: !41)
!41 = !{!42, !55}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !40, file: !3, line: 65, baseType: !43, size: 33344)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !3, line: 62, size: 33344, elements: !44)
!44 = !{!45, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !43, file: !3, line: 63, baseType: !46, size: 576)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "BF_key", file: !3, line: 59, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 576, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 18)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "S", scope: !43, file: !3, line: 64, baseType: !51, size: 32768, offset: 576)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32768, elements: !52)
!52 = !{!53, !54}
!53 = !DISubrange(count: 4)
!54 = !DISubrange(count: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "PS", scope: !40, file: !3, line: 66, baseType: !56, size: 33344)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 33344, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1042)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "expanded_key", scope: !36, file: !3, line: 607, baseType: !46, size: 576, offset: 33344)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !36, file: !3, line: 611, baseType: !61, size: 192, offset: 33920)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !3, line: 608, size: 192, elements: !62)
!62 = !{!63, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "salt", scope: !61, file: !3, line: 609, baseType: !64, size: 128)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !65)
!65 = !{!53}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !61, file: !3, line: 610, baseType: !67, size: 192)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 6)
!70 = !DILocalVariable(name: "count", scope: !27, file: !3, line: 613, type: !13)
!71 = !DILocalVariable(name: "i", scope: !27, file: !3, line: 614, type: !72)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DILocalVariable(name: "L", scope: !74, file: !3, line: 639, type: !13)
!74 = distinct !DILexicalBlock(scope: !27, file: !3, line: 638, column: 2)
!75 = !DILocalVariable(name: "R", scope: !74, file: !3, line: 639, type: !13)
!76 = !DILocalVariable(name: "ptr", scope: !74, file: !3, line: 640, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!78 = !DILocalVariable(name: "done", scope: !79, file: !3, line: 660, type: !72)
!79 = distinct !DILexicalBlock(scope: !27, file: !3, line: 659, column: 5)
!80 = !DILocalVariable(name: "tmp1", scope: !81, file: !3, line: 678, type: !13)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 677, column: 4)
!82 = distinct !DILexicalBlock(scope: !79, file: !3, line: 668, column: 6)
!83 = !DILocalVariable(name: "tmp2", scope: !81, file: !3, line: 678, type: !13)
!84 = !DILocalVariable(name: "tmp3", scope: !81, file: !3, line: 678, type: !13)
!85 = !DILocalVariable(name: "tmp4", scope: !81, file: !3, line: 678, type: !13)
!86 = !DILocalVariable(name: "L", scope: !87, file: !3, line: 697, type: !13)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 696, column: 29)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 696, column: 2)
!89 = distinct !DILexicalBlock(scope: !27, file: !3, line: 696, column: 2)
!90 = !DILocalVariable(name: "LR", scope: !87, file: !3, line: 697, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 2)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 208, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 26)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "BF_init_state", scope: !10, file: !3, line: 81, type: !99, isLocal: true, isDefinition: true)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "BF_magic_w", scope: !10, file: !3, line: 73, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 192, elements: !68)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "BF_itoa64", scope: !10, file: !3, line: 353, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 520, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 65)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "BF_atoi64", scope: !10, file: !3, line: 356, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 768, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 96)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !134, !136, !137, !138, !139}
!115 = !DILocalVariable(name: "key", arg: 1, scope: !2, file: !3, line: 745, type: !8)
!116 = !DILocalVariable(name: "setting", arg: 2, scope: !2, file: !3, line: 745, type: !8)
!117 = !DILocalVariable(name: "output", arg: 3, scope: !2, file: !3, line: 745, type: !6)
!118 = !DILocalVariable(name: "test_key", scope: !2, file: !3, line: 747, type: !8)
!119 = !DILocalVariable(name: "test_setting", scope: !2, file: !3, line: 748, type: !8)
!120 = !DILocalVariable(name: "retval", scope: !2, file: !3, line: 752, type: !6)
!121 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 753, type: !8)
!122 = !DILocalVariable(name: "ok", scope: !2, file: !3, line: 754, type: !72)
!123 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 758, type: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 755, size: 744, elements: !125)
!125 = !{!126, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !124, file: !3, line: 756, baseType: !127, size: 240)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 240, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 30)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !124, file: !3, line: 757, baseType: !131, size: 504, offset: 240)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 504, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 63)
!134 = !DILocalVariable(name: "k", scope: !135, file: !3, line: 784, type: !8)
!135 = distinct !DILexicalBlock(scope: !2, file: !3, line: 783, column: 2)
!136 = !DILocalVariable(name: "ae", scope: !135, file: !3, line: 785, type: !46)
!137 = !DILocalVariable(name: "ai", scope: !135, file: !3, line: 785, type: !46)
!138 = !DILocalVariable(name: "ye", scope: !135, file: !3, line: 785, type: !46)
!139 = !DILocalVariable(name: "yi", scope: !135, file: !3, line: 785, type: !46)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 544, elements: !141)
!141 = !{!93, !142}
!142 = !DISubrange(count: 34)
!143 = !{i32 2, !"Dwarf Version", i32 4}
!144 = !{i32 2, !"Debug Info Version", i32 3}
!145 = !{i32 1, !"wchar_size", i32 4}
!146 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!147 = !DILocation(line: 745, column: 36, scope: !2)
!148 = !DILocation(line: 745, column: 53, scope: !2)
!149 = !DILocation(line: 745, column: 68, scope: !2)
!150 = !DILocation(line: 755, column: 2, scope: !2)
!151 = !DILocation(line: 761, column: 11, scope: !2)
!152 = !DILocation(line: 752, column: 8, scope: !2)
!153 = !DILocation(line: 770, column: 2, scope: !2)
!154 = !DILocation(line: 771, column: 6, scope: !155)
!155 = distinct !DILexicalBlock(scope: !2, file: !3, line: 771, column: 6)
!156 = !DILocation(line: 771, column: 6, scope: !2)
!157 = !DILocation(line: 772, column: 14, scope: !155)
!158 = !{!159, !159, i64 0}
!159 = !{!"omnipotent char", !160, i64 0}
!160 = !{!"Simple C/C++ TBAA"}
!161 = !DILocation(line: 772, column: 3, scope: !155)
!162 = !DILocation(line: 772, column: 12, scope: !155)
!163 = !DILocation(line: 773, column: 9, scope: !2)
!164 = !DILocation(line: 773, column: 2, scope: !2)
!165 = !DILocation(line: 774, column: 2, scope: !2)
!166 = !DILocation(line: 774, column: 27, scope: !2)
!167 = !DILocation(line: 775, column: 6, scope: !2)
!168 = !DILocation(line: 753, column: 14, scope: !2)
!169 = !DILocation(line: 777, column: 10, scope: !2)
!170 = !DILocation(line: 777, column: 19, scope: !2)
!171 = !DILocation(line: 778, column: 7, scope: !2)
!172 = !DILocation(line: 778, column: 32, scope: !2)
!173 = !DILocation(line: 779, column: 16, scope: !2)
!174 = !DILocation(line: 780, column: 16, scope: !2)
!175 = !DILocation(line: 780, column: 25, scope: !2)
!176 = !DILocation(line: 780, column: 6, scope: !2)
!177 = !DILocation(line: 779, column: 7, scope: !2)
!178 = !DILocation(line: 779, column: 6, scope: !2)
!179 = !DILocation(line: 0, scope: !2)
!180 = !DILocation(line: 785, column: 3, scope: !135)
!181 = !DILocation(line: 785, column: 10, scope: !135)
!182 = !DILocation(line: 785, column: 14, scope: !135)
!183 = !DILocation(line: 785, column: 18, scope: !135)
!184 = !DILocation(line: 785, column: 22, scope: !135)
!185 = !DILocation(line: 786, column: 17, scope: !135)
!186 = !DILocation(line: 786, column: 21, scope: !135)
!187 = !DILocation(line: 786, column: 3, scope: !135)
!188 = !DILocation(line: 787, column: 17, scope: !135)
!189 = !DILocation(line: 787, column: 21, scope: !135)
!190 = !DILocation(line: 787, column: 3, scope: !135)
!191 = !DILocation(line: 788, column: 9, scope: !135)
!192 = !{!193, !193, i64 0}
!193 = !{!"int", !159, i64 0}
!194 = !DILocation(line: 789, column: 11, scope: !135)
!195 = !DILocation(line: 789, column: 20, scope: !135)
!196 = !DILocation(line: 789, column: 34, scope: !135)
!197 = !DILocation(line: 789, column: 37, scope: !135)
!198 = !DILocation(line: 789, column: 44, scope: !135)
!199 = !DILocation(line: 789, column: 58, scope: !135)
!200 = !DILocation(line: 790, column: 8, scope: !135)
!201 = !DILocation(line: 790, column: 35, scope: !135)
!202 = !DILocation(line: 791, column: 8, scope: !135)
!203 = !DILocation(line: 791, column: 7, scope: !135)
!204 = !DILocation(line: 0, scope: !135)
!205 = !DILocation(line: 792, column: 2, scope: !2)
!206 = !DILocation(line: 794, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !2, file: !3, line: 794, column: 6)
!208 = !DILocation(line: 795, column: 3, scope: !207)
!209 = !DILocation(line: 798, column: 1, scope: !2)
!210 = !DILocation(line: 599, column: 35, scope: !27)
!211 = !DILocation(line: 599, column: 52, scope: !27)
!212 = !DILocation(line: 600, column: 8, scope: !27)
!213 = !DILocation(line: 600, column: 24, scope: !27)
!214 = !DILocation(line: 605, column: 2, scope: !27)
!215 = !DILocation(line: 616, column: 6, scope: !216)
!216 = distinct !DILexicalBlock(scope: !27, file: !3, line: 616, column: 6)
!217 = !DILocation(line: 616, column: 17, scope: !216)
!218 = !DILocation(line: 616, column: 24, scope: !216)
!219 = !DILocation(line: 617, column: 6, scope: !216)
!220 = !DILocation(line: 617, column: 17, scope: !216)
!221 = !DILocation(line: 617, column: 24, scope: !216)
!222 = !DILocation(line: 618, column: 6, scope: !216)
!223 = !DILocation(line: 618, column: 17, scope: !216)
!224 = !DILocation(line: 618, column: 23, scope: !216)
!225 = !DILocation(line: 618, column: 29, scope: !216)
!226 = !DILocation(line: 619, column: 7, scope: !216)
!227 = !DILocation(line: 619, column: 42, scope: !216)
!228 = !DILocation(line: 620, column: 6, scope: !216)
!229 = !DILocation(line: 620, column: 17, scope: !216)
!230 = !DILocation(line: 620, column: 24, scope: !216)
!231 = !DILocation(line: 621, column: 6, scope: !216)
!232 = !DILocation(line: 621, column: 17, scope: !216)
!233 = !DILocation(line: 621, column: 23, scope: !216)
!234 = !DILocation(line: 621, column: 28, scope: !216)
!235 = !DILocation(line: 622, column: 6, scope: !216)
!236 = !DILocation(line: 622, column: 17, scope: !216)
!237 = !DILocation(line: 622, column: 23, scope: !216)
!238 = !DILocation(line: 622, column: 28, scope: !216)
!239 = !DILocation(line: 623, column: 6, scope: !216)
!240 = !DILocation(line: 623, column: 17, scope: !216)
!241 = !DILocation(line: 616, column: 6, scope: !27)
!242 = !DILocation(line: 627, column: 44, scope: !27)
!243 = !DILocation(line: 627, column: 49, scope: !27)
!244 = !DILocation(line: 627, column: 21, scope: !27)
!245 = !DILocation(line: 613, column: 10, scope: !27)
!246 = !DILocation(line: 628, column: 12, scope: !247)
!247 = distinct !DILexicalBlock(scope: !27, file: !3, line: 628, column: 6)
!248 = !DILocation(line: 628, column: 18, scope: !247)
!249 = !DILocation(line: 628, column: 31, scope: !247)
!250 = !DILocation(line: 628, column: 50, scope: !247)
!251 = !DILocalVariable(name: "dst", arg: 1, scope: !252, file: !3, line: 374, type: !77)
!252 = distinct !DISubprogram(name: "BF_decode", scope: !3, file: !3, line: 374, type: !253, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!72, !77, !8, !72}
!255 = !{!251, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!256 = !DILocalVariable(name: "src", arg: 2, scope: !252, file: !3, line: 374, type: !8)
!257 = !DILocalVariable(name: "size", arg: 3, scope: !252, file: !3, line: 374, type: !72)
!258 = !DILocalVariable(name: "dptr", scope: !252, file: !3, line: 376, type: !19)
!259 = !DILocalVariable(name: "end", scope: !252, file: !3, line: 377, type: !19)
!260 = !DILocalVariable(name: "sptr", scope: !252, file: !3, line: 378, type: !21)
!261 = !DILocalVariable(name: "tmp", scope: !252, file: !3, line: 379, type: !18)
!262 = !DILocalVariable(name: "c1", scope: !252, file: !3, line: 379, type: !18)
!263 = !DILocalVariable(name: "c2", scope: !252, file: !3, line: 379, type: !18)
!264 = !DILocalVariable(name: "c3", scope: !252, file: !3, line: 379, type: !18)
!265 = !DILocalVariable(name: "c4", scope: !252, file: !3, line: 379, type: !18)
!266 = !DILocation(line: 374, column: 31, scope: !252, inlinedAt: !267)
!267 = distinct !DILocation(line: 628, column: 21, scope: !247)
!268 = !DILocation(line: 374, column: 48, scope: !252, inlinedAt: !267)
!269 = !DILocation(line: 374, column: 57, scope: !252, inlinedAt: !267)
!270 = !DILocation(line: 376, column: 24, scope: !252, inlinedAt: !267)
!271 = !DILocation(line: 376, column: 17, scope: !252, inlinedAt: !267)
!272 = !DILocation(line: 377, column: 28, scope: !252, inlinedAt: !267)
!273 = !DILocation(line: 377, column: 17, scope: !252, inlinedAt: !267)
!274 = !DILocation(line: 378, column: 23, scope: !252, inlinedAt: !267)
!275 = !DILocation(line: 381, column: 2, scope: !252, inlinedAt: !267)
!276 = !DILocation(line: 0, scope: !277, inlinedAt: !267)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 391, column: 3)
!278 = distinct !DILexicalBlock(scope: !252, file: !3, line: 381, column: 5)
!279 = !DILocation(line: 0, scope: !278, inlinedAt: !267)
!280 = !DILocation(line: 382, column: 3, scope: !281, inlinedAt: !267)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 382, column: 3)
!282 = !DILocation(line: 379, column: 15, scope: !252, inlinedAt: !267)
!283 = !DILocation(line: 382, column: 3, scope: !284, inlinedAt: !267)
!284 = distinct !DILexicalBlock(scope: !281, file: !3, line: 382, column: 3)
!285 = !DILocation(line: 382, column: 3, scope: !286, inlinedAt: !267)
!286 = distinct !DILexicalBlock(scope: !281, file: !3, line: 382, column: 3)
!287 = !DILocation(line: 383, column: 3, scope: !288, inlinedAt: !267)
!288 = distinct !DILexicalBlock(scope: !278, file: !3, line: 383, column: 3)
!289 = !DILocation(line: 383, column: 3, scope: !290, inlinedAt: !267)
!290 = distinct !DILexicalBlock(scope: !288, file: !3, line: 383, column: 3)
!291 = !DILocation(line: 383, column: 3, scope: !292, inlinedAt: !267)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 383, column: 3)
!293 = !DILocation(line: 384, column: 17, scope: !278, inlinedAt: !267)
!294 = !DILocation(line: 384, column: 38, scope: !278, inlinedAt: !267)
!295 = !DILocation(line: 384, column: 23, scope: !278, inlinedAt: !267)
!296 = !DILocation(line: 384, column: 8, scope: !278, inlinedAt: !267)
!297 = !DILocation(line: 384, column: 11, scope: !278, inlinedAt: !267)
!298 = !DILocation(line: 385, column: 12, scope: !299, inlinedAt: !267)
!299 = distinct !DILexicalBlock(scope: !278, file: !3, line: 385, column: 7)
!300 = !DILocation(line: 385, column: 7, scope: !278, inlinedAt: !267)
!301 = !DILocation(line: 387, column: 3, scope: !302, inlinedAt: !267)
!302 = distinct !DILexicalBlock(scope: !278, file: !3, line: 387, column: 3)
!303 = !DILocation(line: 387, column: 3, scope: !304, inlinedAt: !267)
!304 = distinct !DILexicalBlock(scope: !302, file: !3, line: 387, column: 3)
!305 = !DILocation(line: 387, column: 3, scope: !306, inlinedAt: !267)
!306 = distinct !DILexicalBlock(scope: !302, file: !3, line: 387, column: 3)
!307 = !DILocation(line: 388, column: 26, scope: !278, inlinedAt: !267)
!308 = !DILocation(line: 388, column: 47, scope: !278, inlinedAt: !267)
!309 = !DILocation(line: 388, column: 32, scope: !278, inlinedAt: !267)
!310 = !DILocation(line: 388, column: 8, scope: !278, inlinedAt: !267)
!311 = !DILocation(line: 388, column: 11, scope: !278, inlinedAt: !267)
!312 = !DILocation(line: 389, column: 12, scope: !313, inlinedAt: !267)
!313 = distinct !DILexicalBlock(scope: !278, file: !3, line: 389, column: 7)
!314 = !DILocation(line: 389, column: 7, scope: !278, inlinedAt: !267)
!315 = !DILocation(line: 391, column: 3, scope: !277, inlinedAt: !267)
!316 = !DILocation(line: 391, column: 3, scope: !317, inlinedAt: !267)
!317 = distinct !DILexicalBlock(scope: !277, file: !3, line: 391, column: 3)
!318 = !DILocation(line: 391, column: 3, scope: !319, inlinedAt: !267)
!319 = distinct !DILexicalBlock(scope: !277, file: !3, line: 391, column: 3)
!320 = !DILocation(line: 392, column: 26, scope: !278, inlinedAt: !267)
!321 = !DILocation(line: 392, column: 32, scope: !278, inlinedAt: !267)
!322 = !DILocation(line: 392, column: 8, scope: !278, inlinedAt: !267)
!323 = !DILocation(line: 392, column: 11, scope: !278, inlinedAt: !267)
!324 = !DILocation(line: 393, column: 16, scope: !252, inlinedAt: !267)
!325 = !DILocation(line: 393, column: 2, scope: !278, inlinedAt: !267)
!326 = distinct !{!326, !327, !328}
!327 = !DILocation(line: 381, column: 2, scope: !252)
!328 = !DILocation(line: 393, column: 21, scope: !252)
!329 = !DILocation(line: 0, scope: !247)
!330 = !DILocation(line: 396, column: 1, scope: !252, inlinedAt: !267)
!331 = !DILocation(line: 628, column: 6, scope: !27)
!332 = !DILocation(line: 395, column: 2, scope: !252, inlinedAt: !267)
!333 = !DILocalVariable(name: "x", arg: 1, scope: !334, file: !3, line: 430, type: !77)
!334 = distinct !DISubprogram(name: "BF_swap", scope: !3, file: !3, line: 430, type: !335, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !77, !72}
!337 = !{!333, !338, !339}
!338 = !DILocalVariable(name: "count", arg: 2, scope: !334, file: !3, line: 430, type: !72)
!339 = !DILocalVariable(name: "tmp", scope: !340, file: !3, line: 434, type: !13)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 433, column: 5)
!341 = distinct !DILexicalBlock(scope: !334, file: !3, line: 432, column: 6)
!342 = !DILocation(line: 430, column: 30, scope: !334, inlinedAt: !343)
!343 = distinct !DILocation(line: 631, column: 2, scope: !27)
!344 = !DILocation(line: 430, column: 37, scope: !334, inlinedAt: !343)
!345 = !DILocation(line: 432, column: 6, scope: !334, inlinedAt: !343)
!346 = !DILocation(line: 434, column: 17, scope: !340, inlinedAt: !343)
!347 = !DILocation(line: 434, column: 11, scope: !340, inlinedAt: !343)
!348 = !DILocation(line: 436, column: 36, scope: !340, inlinedAt: !343)
!349 = !DILocation(line: 436, column: 5, scope: !340, inlinedAt: !343)
!350 = !DILocation(line: 436, column: 8, scope: !340, inlinedAt: !343)
!351 = !DILocation(line: 437, column: 2, scope: !340, inlinedAt: !343)
!352 = !DILocation(line: 438, column: 1, scope: !334, inlinedAt: !343)
!353 = !DILocation(line: 633, column: 18, scope: !27)
!354 = !DILocation(line: 633, column: 37, scope: !27)
!355 = !DILocation(line: 634, column: 23, scope: !27)
!356 = !DILocation(line: 634, column: 34, scope: !27)
!357 = !DILocation(line: 634, column: 6, scope: !27)
!358 = !DILocation(line: 633, column: 2, scope: !27)
!359 = !DILocation(line: 636, column: 9, scope: !27)
!360 = !DILocation(line: 636, column: 2, scope: !27)
!361 = !DILocation(line: 639, column: 11, scope: !74)
!362 = !DILocation(line: 639, column: 18, scope: !74)
!363 = !DILocation(line: 640, column: 12, scope: !74)
!364 = !DILocation(line: 641, column: 3, scope: !74)
!365 = !DILocation(line: 0, scope: !366)
!366 = distinct !DILexicalBlock(scope: !74, file: !3, line: 641, column: 6)
!367 = !DILocation(line: 643, column: 12, scope: !366)
!368 = !DILocation(line: 643, column: 10, scope: !366)
!369 = !DILocation(line: 643, column: 37, scope: !366)
!370 = !DILocation(line: 643, column: 35, scope: !366)
!371 = !DILocalVariable(name: "ctx", arg: 1, scope: !372, file: !3, line: 456, type: !375)
!372 = distinct !DISubprogram(name: "BF_encrypt", scope: !3, file: !3, line: 456, type: !373, isLocal: true, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !376)
!373 = !DISubroutineType(types: !374)
!374 = !{!13, !375, !13, !13, !77, !77}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!376 = !{!371, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!377 = !DILocalVariable(name: "L", arg: 2, scope: !372, file: !3, line: 457, type: !13)
!378 = !DILocalVariable(name: "R", arg: 3, scope: !372, file: !3, line: 457, type: !13)
!379 = !DILocalVariable(name: "start", arg: 4, scope: !372, file: !3, line: 458, type: !77)
!380 = !DILocalVariable(name: "end", arg: 5, scope: !372, file: !3, line: 458, type: !77)
!381 = !DILocalVariable(name: "tmp1", scope: !372, file: !3, line: 460, type: !13)
!382 = !DILocalVariable(name: "tmp2", scope: !372, file: !3, line: 460, type: !13)
!383 = !DILocalVariable(name: "tmp3", scope: !372, file: !3, line: 460, type: !13)
!384 = !DILocalVariable(name: "tmp4", scope: !372, file: !3, line: 460, type: !13)
!385 = !DILocalVariable(name: "ptr", scope: !372, file: !3, line: 461, type: !77)
!386 = !DILocalVariable(name: "i", scope: !387, file: !3, line: 483, type: !72)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 483, column: 3)
!388 = distinct !DILexicalBlock(scope: !372, file: !3, line: 463, column: 5)
!389 = !DILocation(line: 456, column: 35, scope: !372, inlinedAt: !390)
!390 = distinct !DILocation(line: 642, column: 8, scope: !366)
!391 = !DILocation(line: 457, column: 13, scope: !372, inlinedAt: !390)
!392 = !DILocation(line: 457, column: 24, scope: !372, inlinedAt: !390)
!393 = !DILocation(line: 458, column: 14, scope: !372, inlinedAt: !390)
!394 = !DILocation(line: 458, column: 30, scope: !372, inlinedAt: !390)
!395 = !DILocation(line: 461, column: 11, scope: !372, inlinedAt: !390)
!396 = !DILocation(line: 463, column: 2, scope: !372, inlinedAt: !390)
!397 = !DILocation(line: 0, scope: !388, inlinedAt: !390)
!398 = !DILocation(line: 464, column: 8, scope: !388, inlinedAt: !390)
!399 = !DILocation(line: 464, column: 5, scope: !388, inlinedAt: !390)
!400 = !DILocation(line: 483, column: 12, scope: !387, inlinedAt: !390)
!401 = !DILocation(line: 483, column: 8, scope: !387, inlinedAt: !390)
!402 = !DILocation(line: 483, column: 3, scope: !387, inlinedAt: !390)
!403 = !DILocation(line: 460, column: 28, scope: !372, inlinedAt: !390)
!404 = !DILocation(line: 490, column: 14, scope: !388, inlinedAt: !390)
!405 = !DILocation(line: 490, column: 12, scope: !388, inlinedAt: !390)
!406 = !DILocation(line: 491, column: 7, scope: !388, inlinedAt: !390)
!407 = !DILocation(line: 491, column: 10, scope: !388, inlinedAt: !390)
!408 = !DILocation(line: 492, column: 7, scope: !388, inlinedAt: !390)
!409 = !DILocation(line: 492, column: 10, scope: !388, inlinedAt: !390)
!410 = !DILocation(line: 493, column: 15, scope: !372, inlinedAt: !390)
!411 = !DILocation(line: 493, column: 2, scope: !388, inlinedAt: !390)
!412 = distinct !{!412, !413, !414}
!413 = !DILocation(line: 463, column: 2, scope: !372)
!414 = !DILocation(line: 493, column: 20, scope: !372)
!415 = !DILocation(line: 484, column: 4, scope: !416, inlinedAt: !390)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 483, column: 29)
!417 = distinct !DILexicalBlock(scope: !387, file: !3, line: 483, column: 3)
!418 = !DILocation(line: 460, column: 10, scope: !372, inlinedAt: !390)
!419 = !DILocation(line: 460, column: 16, scope: !372, inlinedAt: !390)
!420 = !DILocation(line: 460, column: 22, scope: !372, inlinedAt: !390)
!421 = !DILocation(line: 485, column: 4, scope: !416, inlinedAt: !390)
!422 = !DILocation(line: 483, column: 24, scope: !417, inlinedAt: !390)
!423 = !DILocation(line: 483, column: 3, scope: !417, inlinedAt: !390)
!424 = !DILocation(line: 483, column: 18, scope: !417, inlinedAt: !390)
!425 = distinct !{!425, !426, !427}
!426 = !DILocation(line: 483, column: 3, scope: !387)
!427 = !DILocation(line: 486, column: 3, scope: !387)
!428 = !DILocation(line: 495, column: 2, scope: !372, inlinedAt: !390)
!429 = !DILocation(line: 645, column: 14, scope: !366)
!430 = !DILocation(line: 645, column: 8, scope: !366)
!431 = !DILocation(line: 646, column: 8, scope: !366)
!432 = !DILocation(line: 648, column: 12, scope: !433)
!433 = distinct !DILexicalBlock(scope: !366, file: !3, line: 648, column: 8)
!434 = !DILocation(line: 648, column: 8, scope: !366)
!435 = !DILocation(line: 652, column: 12, scope: !366)
!436 = !DILocation(line: 652, column: 10, scope: !366)
!437 = !DILocation(line: 652, column: 37, scope: !366)
!438 = !DILocation(line: 652, column: 35, scope: !366)
!439 = !DILocation(line: 456, column: 35, scope: !372, inlinedAt: !440)
!440 = distinct !DILocation(line: 651, column: 8, scope: !366)
!441 = !DILocation(line: 457, column: 13, scope: !372, inlinedAt: !440)
!442 = !DILocation(line: 457, column: 24, scope: !372, inlinedAt: !440)
!443 = !DILocation(line: 458, column: 14, scope: !372, inlinedAt: !440)
!444 = !DILocation(line: 458, column: 30, scope: !372, inlinedAt: !440)
!445 = !DILocation(line: 461, column: 11, scope: !372, inlinedAt: !440)
!446 = !DILocation(line: 463, column: 2, scope: !372, inlinedAt: !440)
!447 = !DILocation(line: 0, scope: !388, inlinedAt: !440)
!448 = !DILocation(line: 464, column: 5, scope: !388, inlinedAt: !440)
!449 = !DILocation(line: 483, column: 12, scope: !387, inlinedAt: !440)
!450 = !DILocation(line: 483, column: 8, scope: !387, inlinedAt: !440)
!451 = !DILocation(line: 483, column: 3, scope: !387, inlinedAt: !440)
!452 = !DILocation(line: 460, column: 28, scope: !372, inlinedAt: !440)
!453 = !DILocation(line: 490, column: 14, scope: !388, inlinedAt: !440)
!454 = !DILocation(line: 490, column: 12, scope: !388, inlinedAt: !440)
!455 = !DILocation(line: 491, column: 7, scope: !388, inlinedAt: !440)
!456 = !DILocation(line: 491, column: 10, scope: !388, inlinedAt: !440)
!457 = !DILocation(line: 492, column: 7, scope: !388, inlinedAt: !440)
!458 = !DILocation(line: 492, column: 10, scope: !388, inlinedAt: !440)
!459 = !DILocation(line: 493, column: 15, scope: !372, inlinedAt: !440)
!460 = !DILocation(line: 493, column: 2, scope: !388, inlinedAt: !440)
!461 = !DILocation(line: 484, column: 4, scope: !416, inlinedAt: !440)
!462 = !DILocation(line: 460, column: 10, scope: !372, inlinedAt: !440)
!463 = !DILocation(line: 460, column: 16, scope: !372, inlinedAt: !440)
!464 = !DILocation(line: 460, column: 22, scope: !372, inlinedAt: !440)
!465 = !DILocation(line: 485, column: 4, scope: !416, inlinedAt: !440)
!466 = !DILocation(line: 483, column: 24, scope: !417, inlinedAt: !440)
!467 = !DILocation(line: 483, column: 3, scope: !417, inlinedAt: !440)
!468 = !DILocation(line: 483, column: 18, scope: !417, inlinedAt: !440)
!469 = !DILocation(line: 495, column: 2, scope: !372, inlinedAt: !440)
!470 = !DILocation(line: 654, column: 14, scope: !366)
!471 = !DILocation(line: 654, column: 8, scope: !366)
!472 = !DILocation(line: 655, column: 8, scope: !366)
!473 = !DILocation(line: 656, column: 3, scope: !366)
!474 = !DILocation(line: 659, column: 2, scope: !27)
!475 = !DILocation(line: 0, scope: !27)
!476 = !DILocation(line: 614, column: 6, scope: !27)
!477 = !DILocation(line: 662, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !79, file: !3, line: 662, column: 3)
!479 = !DILocation(line: 662, column: 3, scope: !478)
!480 = !DILocation(line: 663, column: 23, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 662, column: 37)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 662, column: 3)
!483 = !DILocation(line: 663, column: 20, scope: !481)
!484 = !DILocation(line: 664, column: 27, scope: !481)
!485 = !DILocation(line: 664, column: 24, scope: !481)
!486 = !DILocation(line: 662, column: 3, scope: !482)
!487 = !DILocation(line: 660, column: 7, scope: !79)
!488 = !DILocation(line: 668, column: 3, scope: !79)
!489 = !DILocation(line: 456, column: 35, scope: !372, inlinedAt: !490)
!490 = distinct !DILocation(line: 669, column: 4, scope: !82)
!491 = !DILocation(line: 457, column: 13, scope: !372, inlinedAt: !490)
!492 = !DILocation(line: 457, column: 24, scope: !372, inlinedAt: !490)
!493 = !DILocation(line: 458, column: 14, scope: !372, inlinedAt: !490)
!494 = !DILocation(line: 458, column: 30, scope: !372, inlinedAt: !490)
!495 = !DILocation(line: 461, column: 11, scope: !372, inlinedAt: !490)
!496 = !DILocation(line: 463, column: 2, scope: !372, inlinedAt: !490)
!497 = !DILocation(line: 0, scope: !388, inlinedAt: !490)
!498 = !DILocation(line: 464, column: 8, scope: !388, inlinedAt: !490)
!499 = !DILocation(line: 464, column: 5, scope: !388, inlinedAt: !490)
!500 = !DILocation(line: 483, column: 12, scope: !387, inlinedAt: !490)
!501 = !DILocation(line: 483, column: 8, scope: !387, inlinedAt: !490)
!502 = !DILocation(line: 483, column: 3, scope: !387, inlinedAt: !490)
!503 = !DILocation(line: 460, column: 28, scope: !372, inlinedAt: !490)
!504 = !DILocation(line: 490, column: 14, scope: !388, inlinedAt: !490)
!505 = !DILocation(line: 490, column: 12, scope: !388, inlinedAt: !490)
!506 = !DILocation(line: 491, column: 7, scope: !388, inlinedAt: !490)
!507 = !DILocation(line: 491, column: 10, scope: !388, inlinedAt: !490)
!508 = !DILocation(line: 492, column: 7, scope: !388, inlinedAt: !490)
!509 = !DILocation(line: 492, column: 10, scope: !388, inlinedAt: !490)
!510 = !DILocation(line: 493, column: 15, scope: !372, inlinedAt: !490)
!511 = !DILocation(line: 493, column: 2, scope: !388, inlinedAt: !490)
!512 = !DILocation(line: 484, column: 4, scope: !416, inlinedAt: !490)
!513 = !DILocation(line: 460, column: 10, scope: !372, inlinedAt: !490)
!514 = !DILocation(line: 460, column: 16, scope: !372, inlinedAt: !490)
!515 = !DILocation(line: 460, column: 22, scope: !372, inlinedAt: !490)
!516 = !DILocation(line: 485, column: 4, scope: !416, inlinedAt: !490)
!517 = !DILocation(line: 483, column: 24, scope: !417, inlinedAt: !490)
!518 = !DILocation(line: 483, column: 3, scope: !417, inlinedAt: !490)
!519 = !DILocation(line: 483, column: 18, scope: !417, inlinedAt: !490)
!520 = !DILocation(line: 495, column: 2, scope: !372, inlinedAt: !490)
!521 = !DILocation(line: 673, column: 8, scope: !82)
!522 = !DILocation(line: 678, column: 13, scope: !81)
!523 = !DILocation(line: 678, column: 19, scope: !81)
!524 = !DILocation(line: 678, column: 25, scope: !81)
!525 = !DILocation(line: 680, column: 12, scope: !81)
!526 = !DILocation(line: 678, column: 31, scope: !81)
!527 = !DILocation(line: 684, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !81, file: !3, line: 684, column: 5)
!529 = !DILocation(line: 684, column: 5, scope: !528)
!530 = !DILocation(line: 685, column: 22, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 684, column: 35)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 684, column: 5)
!533 = !DILocation(line: 684, column: 5, scope: !532)
!534 = !DILocation(line: 690, column: 22, scope: !81)
!535 = !DILocation(line: 691, column: 22, scope: !81)
!536 = !DILocation(line: 693, column: 3, scope: !82)
!537 = !DILocation(line: 456, column: 35, scope: !372, inlinedAt: !538)
!538 = distinct !DILocation(line: 669, column: 4, scope: !82)
!539 = !DILocation(line: 457, column: 13, scope: !372, inlinedAt: !538)
!540 = !DILocation(line: 457, column: 24, scope: !372, inlinedAt: !538)
!541 = !DILocation(line: 458, column: 14, scope: !372, inlinedAt: !538)
!542 = !DILocation(line: 458, column: 30, scope: !372, inlinedAt: !538)
!543 = !DILocation(line: 461, column: 11, scope: !372, inlinedAt: !538)
!544 = !DILocation(line: 463, column: 2, scope: !372, inlinedAt: !538)
!545 = !DILocation(line: 464, column: 8, scope: !388, inlinedAt: !538)
!546 = !DILocation(line: 0, scope: !388, inlinedAt: !538)
!547 = !DILocation(line: 464, column: 5, scope: !388, inlinedAt: !538)
!548 = !DILocation(line: 483, column: 12, scope: !387, inlinedAt: !538)
!549 = !DILocation(line: 483, column: 8, scope: !387, inlinedAt: !538)
!550 = !DILocation(line: 483, column: 3, scope: !387, inlinedAt: !538)
!551 = !DILocation(line: 460, column: 28, scope: !372, inlinedAt: !538)
!552 = !DILocation(line: 490, column: 14, scope: !388, inlinedAt: !538)
!553 = !DILocation(line: 490, column: 12, scope: !388, inlinedAt: !538)
!554 = !DILocation(line: 491, column: 7, scope: !388, inlinedAt: !538)
!555 = !DILocation(line: 491, column: 10, scope: !388, inlinedAt: !538)
!556 = !DILocation(line: 492, column: 7, scope: !388, inlinedAt: !538)
!557 = !DILocation(line: 492, column: 10, scope: !388, inlinedAt: !538)
!558 = !DILocation(line: 493, column: 15, scope: !372, inlinedAt: !538)
!559 = !DILocation(line: 493, column: 2, scope: !388, inlinedAt: !538)
!560 = !DILocation(line: 484, column: 4, scope: !416, inlinedAt: !538)
!561 = !DILocation(line: 460, column: 10, scope: !372, inlinedAt: !538)
!562 = !DILocation(line: 460, column: 16, scope: !372, inlinedAt: !538)
!563 = !DILocation(line: 460, column: 22, scope: !372, inlinedAt: !538)
!564 = !DILocation(line: 485, column: 4, scope: !416, inlinedAt: !538)
!565 = !DILocation(line: 483, column: 24, scope: !417, inlinedAt: !538)
!566 = !DILocation(line: 483, column: 3, scope: !417, inlinedAt: !538)
!567 = !DILocation(line: 483, column: 18, scope: !417, inlinedAt: !538)
!568 = !DILocation(line: 495, column: 2, scope: !372, inlinedAt: !538)
!569 = !DILocation(line: 694, column: 11, scope: !27)
!570 = !DILocation(line: 694, column: 2, scope: !79)
!571 = distinct !{!571, !474, !572}
!572 = !DILocation(line: 694, column: 18, scope: !27)
!573 = !DILocation(line: 696, column: 7, scope: !89)
!574 = !DILocation(line: 696, column: 2, scope: !89)
!575 = !DILocation(line: 464, column: 8, scope: !388, inlinedAt: !576)
!576 = distinct !DILocation(line: 704, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !87, file: !3, line: 703, column: 6)
!578 = !DILocation(line: 699, column: 7, scope: !87)
!579 = !DILocation(line: 697, column: 11, scope: !87)
!580 = !DILocation(line: 700, column: 24, scope: !87)
!581 = !DILocation(line: 700, column: 11, scope: !87)
!582 = !DILocation(line: 697, column: 14, scope: !87)
!583 = !DILocation(line: 703, column: 3, scope: !87)
!584 = !DILocation(line: 0, scope: !87)
!585 = !DILocation(line: 0, scope: !577)
!586 = !DILocation(line: 456, column: 35, scope: !372, inlinedAt: !576)
!587 = !DILocation(line: 457, column: 13, scope: !372, inlinedAt: !576)
!588 = !DILocation(line: 457, column: 24, scope: !372, inlinedAt: !576)
!589 = !DILocation(line: 463, column: 2, scope: !372, inlinedAt: !576)
!590 = !DILocation(line: 461, column: 11, scope: !372, inlinedAt: !576)
!591 = !DILocation(line: 464, column: 5, scope: !388, inlinedAt: !576)
!592 = !DILocation(line: 483, column: 12, scope: !387, inlinedAt: !576)
!593 = !DILocation(line: 483, column: 8, scope: !387, inlinedAt: !576)
!594 = !DILocation(line: 483, column: 3, scope: !387, inlinedAt: !576)
!595 = !DILocation(line: 460, column: 28, scope: !372, inlinedAt: !576)
!596 = !DILocation(line: 490, column: 12, scope: !388, inlinedAt: !576)
!597 = !DILocation(line: 493, column: 2, scope: !388, inlinedAt: !576)
!598 = !DILocation(line: 495, column: 2, scope: !372, inlinedAt: !576)
!599 = !DILocation(line: 706, column: 12, scope: !87)
!600 = !DILocation(line: 706, column: 3, scope: !577)
!601 = distinct !{!601, !583, !602}
!602 = !DILocation(line: 706, column: 19, scope: !87)
!603 = !DILocation(line: 484, column: 4, scope: !416, inlinedAt: !576)
!604 = !DILocation(line: 460, column: 10, scope: !372, inlinedAt: !576)
!605 = !DILocation(line: 460, column: 16, scope: !372, inlinedAt: !576)
!606 = !DILocation(line: 460, column: 22, scope: !372, inlinedAt: !576)
!607 = !DILocation(line: 485, column: 4, scope: !416, inlinedAt: !576)
!608 = !DILocation(line: 483, column: 24, scope: !417, inlinedAt: !576)
!609 = !DILocation(line: 483, column: 3, scope: !417, inlinedAt: !576)
!610 = !DILocation(line: 483, column: 18, scope: !417, inlinedAt: !576)
!611 = !DILocation(line: 708, column: 3, scope: !87)
!612 = !DILocation(line: 708, column: 25, scope: !87)
!613 = !DILocation(line: 709, column: 3, scope: !87)
!614 = !DILocation(line: 709, column: 29, scope: !87)
!615 = !DILocation(line: 696, column: 23, scope: !88)
!616 = !DILocation(line: 696, column: 2, scope: !88)
!617 = !DILocation(line: 696, column: 16, scope: !88)
!618 = distinct !{!618, !574, !619}
!619 = !DILocation(line: 710, column: 2, scope: !89)
!620 = !DILocation(line: 712, column: 2, scope: !27)
!621 = !DILocation(line: 714, column: 13, scope: !27)
!622 = !DILocation(line: 714, column: 33, scope: !27)
!623 = !DILocation(line: 714, column: 3, scope: !27)
!624 = !DILocation(line: 714, column: 41, scope: !27)
!625 = !DILocation(line: 713, column: 23, scope: !27)
!626 = !DILocation(line: 713, column: 2, scope: !27)
!627 = !DILocation(line: 713, column: 21, scope: !27)
!628 = !DILocation(line: 430, column: 30, scope: !334, inlinedAt: !629)
!629 = distinct !DILocation(line: 718, column: 2, scope: !27)
!630 = !DILocation(line: 430, column: 37, scope: !334, inlinedAt: !629)
!631 = !DILocation(line: 432, column: 6, scope: !334, inlinedAt: !629)
!632 = !DILocation(line: 434, column: 17, scope: !340, inlinedAt: !629)
!633 = !DILocation(line: 434, column: 11, scope: !340, inlinedAt: !629)
!634 = !DILocation(line: 436, column: 36, scope: !340, inlinedAt: !629)
!635 = !DILocation(line: 436, column: 8, scope: !340, inlinedAt: !629)
!636 = !DILocation(line: 437, column: 2, scope: !340, inlinedAt: !629)
!637 = !DILocation(line: 436, column: 5, scope: !340, inlinedAt: !629)
!638 = !DILocation(line: 438, column: 1, scope: !334, inlinedAt: !629)
!639 = !DILocation(line: 719, column: 13, scope: !27)
!640 = !DILocalVariable(name: "dst", arg: 1, scope: !641, file: !3, line: 398, type: !6)
!641 = distinct !DISubprogram(name: "BF_encode", scope: !3, file: !3, line: 398, type: !642, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !645)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !6, !644, !72}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!645 = !{!640, !646, !647, !648, !649, !650, !651, !652}
!646 = !DILocalVariable(name: "src", arg: 2, scope: !641, file: !3, line: 398, type: !644)
!647 = !DILocalVariable(name: "size", arg: 3, scope: !641, file: !3, line: 398, type: !72)
!648 = !DILocalVariable(name: "sptr", scope: !641, file: !3, line: 400, type: !21)
!649 = !DILocalVariable(name: "end", scope: !641, file: !3, line: 401, type: !21)
!650 = !DILocalVariable(name: "dptr", scope: !641, file: !3, line: 402, type: !19)
!651 = !DILocalVariable(name: "c1", scope: !641, file: !3, line: 403, type: !18)
!652 = !DILocalVariable(name: "c2", scope: !641, file: !3, line: 403, type: !18)
!653 = !DILocation(line: 398, column: 29, scope: !641, inlinedAt: !654)
!654 = distinct !DILocation(line: 719, column: 2, scope: !27)
!655 = !DILocation(line: 398, column: 49, scope: !641, inlinedAt: !654)
!656 = !DILocation(line: 398, column: 58, scope: !641, inlinedAt: !654)
!657 = !DILocation(line: 400, column: 23, scope: !641, inlinedAt: !654)
!658 = !DILocation(line: 401, column: 23, scope: !641, inlinedAt: !654)
!659 = !DILocation(line: 402, column: 17, scope: !641, inlinedAt: !654)
!660 = !DILocation(line: 405, column: 2, scope: !641, inlinedAt: !654)
!661 = !DILocation(line: 406, column: 8, scope: !662, inlinedAt: !654)
!662 = distinct !DILexicalBlock(scope: !641, file: !3, line: 405, column: 5)
!663 = !DILocation(line: 403, column: 15, scope: !641, inlinedAt: !654)
!664 = !DILocation(line: 407, column: 26, scope: !662, inlinedAt: !654)
!665 = !DILocation(line: 407, column: 13, scope: !662, inlinedAt: !654)
!666 = !DILocation(line: 407, column: 11, scope: !662, inlinedAt: !654)
!667 = !DILocation(line: 409, column: 7, scope: !662, inlinedAt: !654)
!668 = !DILocation(line: 408, column: 20, scope: !662, inlinedAt: !654)
!669 = !DILocation(line: 407, column: 8, scope: !662, inlinedAt: !654)
!670 = !DILocation(line: 414, column: 8, scope: !662, inlinedAt: !654)
!671 = !DILocation(line: 403, column: 19, scope: !641, inlinedAt: !654)
!672 = !DILocation(line: 415, column: 12, scope: !662, inlinedAt: !654)
!673 = !DILocation(line: 415, column: 6, scope: !662, inlinedAt: !654)
!674 = !DILocation(line: 416, column: 13, scope: !662, inlinedAt: !654)
!675 = !DILocation(line: 416, column: 11, scope: !662, inlinedAt: !654)
!676 = !DILocation(line: 418, column: 7, scope: !662, inlinedAt: !654)
!677 = !DILocation(line: 417, column: 20, scope: !662, inlinedAt: !654)
!678 = !DILocation(line: 416, column: 8, scope: !662, inlinedAt: !654)
!679 = !DILocation(line: 423, column: 8, scope: !662, inlinedAt: !654)
!680 = !DILocation(line: 424, column: 12, scope: !662, inlinedAt: !654)
!681 = !DILocation(line: 424, column: 6, scope: !662, inlinedAt: !654)
!682 = !DILocation(line: 425, column: 13, scope: !662, inlinedAt: !654)
!683 = !DILocation(line: 425, column: 8, scope: !662, inlinedAt: !654)
!684 = !DILocation(line: 425, column: 11, scope: !662, inlinedAt: !654)
!685 = !DILocation(line: 426, column: 26, scope: !662, inlinedAt: !654)
!686 = !DILocation(line: 426, column: 13, scope: !662, inlinedAt: !654)
!687 = !DILocation(line: 426, column: 8, scope: !662, inlinedAt: !654)
!688 = !DILocation(line: 426, column: 11, scope: !662, inlinedAt: !654)
!689 = !DILocation(line: 427, column: 2, scope: !662, inlinedAt: !654)
!690 = !DILocation(line: 419, column: 14, scope: !691, inlinedAt: !654)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 418, column: 20)
!692 = distinct !DILexicalBlock(scope: !662, file: !3, line: 418, column: 7)
!693 = !DILocation(line: 419, column: 12, scope: !691, inlinedAt: !654)
!694 = !DILocation(line: 420, column: 4, scope: !691, inlinedAt: !654)
!695 = !DILocation(line: 428, column: 1, scope: !641, inlinedAt: !654)
!696 = !DILocation(line: 720, column: 2, scope: !27)
!697 = !DILocation(line: 720, column: 22, scope: !27)
!698 = !DILocation(line: 722, column: 2, scope: !27)
!699 = !DILocation(line: 0, scope: !700)
!700 = distinct !DILexicalBlock(scope: !216, file: !3, line: 623, column: 25)
!701 = !DILocation(line: 723, column: 1, scope: !27)
!702 = distinct !DISubprogram(name: "BF_set_key", scope: !3, file: !3, line: 498, type: !703, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !10, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !8, !77, !77, !20}
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!706 = !DILocalVariable(name: "key", arg: 1, scope: !702, file: !3, line: 498, type: !8)
!707 = !DILocalVariable(name: "expanded", arg: 2, scope: !702, file: !3, line: 498, type: !77)
!708 = !DILocalVariable(name: "initial", arg: 3, scope: !702, file: !3, line: 498, type: !77)
!709 = !DILocalVariable(name: "flags", arg: 4, scope: !702, file: !3, line: 499, type: !20)
!710 = !DILocalVariable(name: "ptr", scope: !702, file: !3, line: 501, type: !8)
!711 = !DILocalVariable(name: "bug", scope: !702, file: !3, line: 502, type: !18)
!712 = !DILocalVariable(name: "i", scope: !702, file: !3, line: 502, type: !18)
!713 = !DILocalVariable(name: "j", scope: !702, file: !3, line: 502, type: !18)
!714 = !DILocalVariable(name: "safety", scope: !702, file: !3, line: 503, type: !13)
!715 = !DILocalVariable(name: "sign", scope: !702, file: !3, line: 503, type: !13)
!716 = !DILocalVariable(name: "diff", scope: !702, file: !3, line: 503, type: !13)
!717 = !DILocalVariable(name: "tmp", scope: !702, file: !3, line: 503, type: !91)
!718 = !DILocation(line: 498, column: 36, scope: !702)
!719 = !DILocation(line: 498, column: 48, scope: !702)
!720 = !DILocation(line: 498, column: 65, scope: !702)
!721 = !DILocation(line: 499, column: 19, scope: !702)
!722 = !DILocation(line: 501, column: 14, scope: !702)
!723 = !DILocation(line: 503, column: 2, scope: !702)
!724 = !DILocation(line: 503, column: 30, scope: !702)
!725 = !DILocation(line: 539, column: 8, scope: !702)
!726 = !DILocation(line: 539, column: 14, scope: !702)
!727 = !DILocation(line: 502, column: 15, scope: !702)
!728 = !DILocation(line: 540, column: 32, scope: !702)
!729 = !DILocation(line: 503, column: 10, scope: !702)
!730 = !DILocation(line: 503, column: 24, scope: !702)
!731 = !DILocation(line: 503, column: 18, scope: !702)
!732 = !DILocation(line: 502, column: 20, scope: !702)
!733 = !DILocation(line: 544, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !702, file: !3, line: 544, column: 2)
!735 = !DILocation(line: 544, column: 2, scope: !734)
!736 = !DILocation(line: 545, column: 19, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 544, column: 33)
!738 = distinct !DILexicalBlock(scope: !734, file: !3, line: 544, column: 2)
!739 = !DILocation(line: 502, column: 23, scope: !702)
!740 = !DILocation(line: 546, column: 8, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 546, column: 3)
!742 = !DILocation(line: 546, column: 3, scope: !741)
!743 = !DILocation(line: 547, column: 11, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 546, column: 27)
!745 = distinct !DILexicalBlock(scope: !741, file: !3, line: 546, column: 3)
!746 = !DILocation(line: 548, column: 29, scope: !744)
!747 = !DILocation(line: 548, column: 14, scope: !744)
!748 = !DILocation(line: 548, column: 11, scope: !744)
!749 = !DILocation(line: 549, column: 11, scope: !744)
!750 = !DILocation(line: 550, column: 27, scope: !744)
!751 = !DILocation(line: 550, column: 14, scope: !744)
!752 = !DILocation(line: 550, column: 11, scope: !744)
!753 = !DILocation(line: 557, column: 8, scope: !744)
!754 = !DILocation(line: 559, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !744, file: !3, line: 559, column: 8)
!756 = !DILocation(line: 559, column: 8, scope: !744)
!757 = !DILocation(line: 562, column: 8, scope: !755)
!758 = !DILocation(line: 546, column: 3, scope: !745)
!759 = !DILocation(line: 558, column: 20, scope: !760)
!760 = distinct !DILexicalBlock(scope: !744, file: !3, line: 557, column: 8)
!761 = !DILocation(line: 558, column: 10, scope: !760)
!762 = !DILocation(line: 558, column: 5, scope: !760)
!763 = !DILocation(line: 564, column: 18, scope: !737)
!764 = !DILocation(line: 564, column: 8, scope: !737)
!765 = !DILocation(line: 566, column: 17, scope: !737)
!766 = !DILocation(line: 566, column: 3, scope: !737)
!767 = !DILocation(line: 566, column: 15, scope: !737)
!768 = !DILocation(line: 567, column: 16, scope: !737)
!769 = !DILocation(line: 567, column: 37, scope: !737)
!770 = !DILocation(line: 567, column: 3, scope: !737)
!771 = !DILocation(line: 567, column: 14, scope: !737)
!772 = !DILocation(line: 544, column: 29, scope: !738)
!773 = !DILocation(line: 544, column: 2, scope: !738)
!774 = !DILocation(line: 544, column: 16, scope: !738)
!775 = distinct !{!775, !735, !776}
!776 = !DILocation(line: 568, column: 2, scope: !734)
!777 = !DILocation(line: 579, column: 15, scope: !702)
!778 = !DILocation(line: 580, column: 7, scope: !702)
!779 = !DILocation(line: 582, column: 7, scope: !702)
!780 = !DILocation(line: 583, column: 10, scope: !702)
!781 = !DILocation(line: 583, column: 16, scope: !702)
!782 = !DILocation(line: 583, column: 7, scope: !702)
!783 = !DILocation(line: 596, column: 13, scope: !702)
!784 = !DILocation(line: 597, column: 1, scope: !702)
