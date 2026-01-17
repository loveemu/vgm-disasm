1000: 20        clrp
1001: cd cf     mov   x,#$cf
1003: bd        mov   sp,x
1004: e8 00     mov   a,#$00
1006: 5d        mov   x,a
1007: d5 00 00  mov   $0000+x,a
100a: 3d        inc   x
100b: c8 f0     cmp   x,#$f0
100d: d0 f8     bne   $1007
100f: cd 02     mov   x,#$02
1011: c9 01 00  mov   $0001,x
1014: fd        mov   y,a
1015: d7 00     mov   ($00)+y,a
1017: fc        inc   y
1018: d0 fb     bne   $1015
101a: 3d        inc   x
101b: c9 01 00  mov   $0001,x
101e: c8 0f     cmp   x,#$0f
1020: d0 f3     bne   $1015
1022: c5 01 00  mov   $0001,a
1025: fa 48 84  mov   ($84),($48)
1028: fa 49 85  mov   ($85),($49)
102b: fa 40 8e  mov   ($8e),($40)
102e: fa 41 92  mov   ($92),($41)
1031: fa 42 8f  mov   ($8f),($42)
1034: fa 43 93  mov   ($93),($43)
1037: fa 44 90  mov   ($90),($44)
103a: fa 45 94  mov   ($94),($45)
103d: fa 46 91  mov   ($91),($46)
1040: fa 47 95  mov   ($95),($47)
1043: cd 03     mov   x,#$03
1045: d4 86     mov   $86+x,a
1047: d4 8a     mov   $8a+x,a
1049: d4 a6     mov   $a6+x,a
104b: d4 aa     mov   $aa+x,a
104d: 1d        dec   x
104e: 10 f5     bpl   $1045
1050: c4 ae     mov   $ae,a
1052: c4 c1     mov   $c1,a
1054: c4 c2     mov   $c2,a
1056: c4 c3     mov   $c3,a
1058: c4 c4     mov   $c4,a
105a: c4 c5     mov   $c5,a
105c: cd 1f     mov   x,#$1f
105e: 3f 29 20  call  $2029
1061: 1d        dec   x
1062: 10 fa     bpl   $105e
1064: cd 0a     mov   x,#$0a
1066: 3f 88 20  call  $2088
1069: 3f bf 20  call  $20bf
106c: 1d        dec   x
106d: 10 f7     bpl   $1066
106f: cd 1f     mov   x,#$1f
1071: f5 c0 31  mov   a,$31c0+x
1074: d4 40     mov   $40+x,a
1076: 1d        dec   x
1077: 10 f8     bpl   $1071
1079: 8d 6c     mov   y,#$6c
107b: e8 60     mov   a,#$60
107d: c4 c8     mov   $c8,a
107f: 3f 00 21  call  $2100
1082: e8 00     mov   a,#$00
1084: c4 c6     mov   $c6,a
1086: c4 c7     mov   $c7,a
1088: c4 c9     mov   $c9,a
108a: c4 ca     mov   $ca,a
108c: c4 cb     mov   $cb,a
108e: c4 cc     mov   $cc,a
1090: c4 cd     mov   $cd,a
1092: c4 ce     mov   $ce,a
1094: 3f c8 13  call  $13c8
1097: 8d 5d     mov   y,#$5d
1099: e4 5e     mov   a,$5e
109b: 3f 00 21  call  $2100
109e: 8d 6d     mov   y,#$6d
10a0: e4 5f     mov   a,$5f
10a2: 3f 00 21  call  $2100
10a5: 8d 7d     mov   y,#$7d
10a7: e8 00     mov   a,#$00
10a9: 3f 00 21  call  $2100
10ac: 8d 2d     mov   y,#$2d
10ae: 3f 00 21  call  $2100
10b1: 8d 3d     mov   y,#$3d
10b3: 3f 00 21  call  $2100
10b6: 8d 4d     mov   y,#$4d
10b8: 3f 00 21  call  $2100
10bb: 3f 5f 21  call  $215f
10be: 8d 6c     mov   y,#$6c
10c0: e8 20     mov   a,#$20
10c2: c4 c8     mov   $c8,a
10c4: 3f 00 21  call  $2100
10c7: 3f 52 13  call  $1352
10ca: e5 fd 00  mov   a,$00fd
10cd: 28 0f     and   a,#$0f
10cf: f0 f9     beq   $10ca
10d1: c4 09     mov   $09,a
10d3: e5 f5 00  mov   a,$00f5
10d6: 64 c2     cmp   a,$c2
10d8: d0 03     bne   $10dd
10da: 5f 25 12  jmp   $1225

10dd: c4 c2     mov   $c2,a
10df: e5 f4 00  mov   a,$00f4
10e2: 5d        mov   x,a
10e3: 28 f0     and   a,#$f0
10e5: 68 f0     cmp   a,#$f0
10e7: f0 03     beq   $10ec
10e9: 5f 1c 12  jmp   $121c

10ec: 7d        mov   a,x
10ed: fd        mov   y,a
10ee: 28 0f     and   a,#$0f
10f0: 48 0f     eor   a,#$0f
10f2: 1c        asl   a
10f3: 5d        mov   x,a
10f4: dd        mov   a,y
10f5: 1f f8 10  jmp   ($10f8+x)

10f8: dw $1118
10fa: dw $1138
10fc: dw $1167
11fe: dw $1167
1100: dw $116e
1102: dw $1197
1104: dw $11be
1106: dw $11dd
1108: dw $11fc
110a: dw $11fc
110c: dw $11fc
110e: dw $11fc
1110: dw $1208
1112: dw $1208
1114: dw $1208
1116: dw $1208

1118: 8d 6c     mov   y,#$6c
111a: e8 e0     mov   a,#$e0
111c: 3f 00 21  call  $2100
111f: e8 80     mov   a,#$80
1121: c5 f1 00  mov   $00f1,a
1124: ba 50     movw  ya,$50
1126: da 10     movw  $10,ya
1128: cd 00     mov   x,#$00
112a: 8d 00     mov   y,#$00
112c: f7 10     mov   a,($10)+y
112e: c4 12     mov   $12,a
1130: fc        inc   y
1131: f7 10     mov   a,($10)+y
1133: c4 13     mov   $13,a
1135: 1f 12 00  jmp   ($0012+x)

1138: 3f af 21  call  $21af
113b: e5 f4 00  mov   a,$00f4
113e: 05 f5 00  or    a,$00f5
1141: 05 f6 00  or    a,$00f6
1144: 05 f7 00  or    a,$00f7
1147: d0 f2     bne   $113b
1149: e8 dd     mov   a,#$dd
114b: eb c2     mov   y,$c2
114d: c5 f4 00  mov   $00f4,a
1150: 65 f4 00  cmp   a,$00f4
1153: d0 fb     bne   $1150
1155: 5e f5 00  cmp   y,$00f5
1158: d0 f6     bne   $1150
115a: e8 ee     mov   a,#$ee
115c: c5 f4 00  mov   $00f4,a
115f: e5 f4 00  mov   a,$00f4
1162: d0 fb     bne   $115f
1164: 5f 25 12  jmp   $1225

1167: 28 01     and   a,#$01
1169: c4 c3     mov   $c3,a
116b: 5f 25 12  jmp   $1225

116e: ec f7 00  mov   y,$00f7
1171: e5 f6 00  mov   a,$00f6
1174: da 10     movw  $10,ya
1176: 8d 00     mov   y,#$00
1178: e4 c2     mov   a,$c2
117a: c5 f5 00  mov   $00f5,a
117d: e5 f5 00  mov   a,$00f5
1180: 64 c2     cmp   a,$c2
1182: f0 f9     beq   $117d
1184: c4 c2     mov   $c2,a
1186: e5 f4 00  mov   a,$00f4
1189: d0 03     bne   $118e
118b: 5f 25 12  jmp   $1225

118e: e5 f6 00  mov   a,$00f6
1191: d7 10     mov   ($10)+y,a
1193: 3a 10     incw  $10
1195: 2f e1     bra   $1178
1197: ec f7 00  mov   y,$00f7
119a: e5 f6 00  mov   a,$00f6
119d: da 10     movw  $10,ya
119f: 8d 00     mov   y,#$00
11a1: f7 10     mov   a,($10)+y
11a3: c5 f6 00  mov   $00f6,a
11a6: 3a 10     incw  $10
11a8: e4 c2     mov   a,$c2
11aa: c5 f5 00  mov   $00f5,a
11ad: e5 f5 00  mov   a,$00f5
11b0: 64 c2     cmp   a,$c2
11b2: f0 f9     beq   $11ad
11b4: c4 c2     mov   $c2,a
11b6: e5 f4 00  mov   a,$00f4
11b9: d0 e6     bne   $11a1
11bb: 5f 25 12  jmp   $1225

11be: ec f6 00  mov   y,$00f6
11c1: e5 f7 00  mov   a,$00f7
11c4: 3f 00 21  call  $2100
11c7: e4 c2     mov   a,$c2
11c9: c5 f5 00  mov   $00f5,a
11cc: e5 f5 00  mov   a,$00f5
11cf: 64 c2     cmp   a,$c2
11d1: f0 f9     beq   $11cc
11d3: c4 c2     mov   $c2,a
11d5: e5 f4 00  mov   a,$00f4
11d8: d0 e4     bne   $11be
11da: 5f 25 12  jmp   $1225

11dd: ec f6 00  mov   y,$00f6
11e0: 3f 07 21  call  $2107
11e3: c5 f7 00  mov   $00f7,a
11e6: e4 c2     mov   a,$c2
11e8: c5 f5 00  mov   $00f5,a
11eb: e5 f5 00  mov   a,$00f5
11ee: 64 c2     cmp   a,$c2
11f0: f0 f9     beq   $11eb
11f2: c4 c2     mov   $c2,a
11f4: e5 f4 00  mov   a,$00f4
11f7: d0 e4     bne   $11dd
11f9: 5f 25 12  jmp   $1225

11fc: e5 f6 00  mov   a,$00f6
11ff: c4 84     mov   $84,a
1201: e5 f7 00  mov   a,$00f7
1204: c4 85     mov   $85,a
1206: 2f 1d     bra   $1225
1208: 28 03     and   a,#$03
120a: 5d        mov   x,a
120b: e5 f6 00  mov   a,$00f6
120e: c4 06     mov   $06,a
1210: e5 f7 00  mov   a,$00f7
1213: c4 00     mov   $00,a
1215: c4 01     mov   $01,a
1217: 3f 39 14  call  $1439
121a: 2f 09     bra   $1225
121c: e9 f6 00  mov   x,$00f6
121f: e5 f7 00  mov   a,$00f7
1222: 3f 76 14  call  $1476
1225: ba 82     movw  ya,$82
1227: da 0a     movw  $0a,ya
1229: e4 c4     mov   a,$c4
122b: f0 07     beq   $1234
122d: cd 02     mov   x,#$02
122f: 3f c0 12  call  $12c0
1232: 2f 08     bra   $123c
1234: cd 0a     mov   x,#$0a
1236: 3f c0 12  call  $12c0
1239: 1d        dec   x
123a: 10 fa     bpl   $1236
123c: eb ca     mov   y,$ca
123e: f6 e0 0c  mov   a,$0ce0+y
1241: f0 07     beq   $124a
1243: f6 a6 0d  mov   a,$0da6+y
1246: 64 c1     cmp   a,$c1
1248: f0 02     beq   $124c
124a: c4 c1     mov   $c1,a
124c: f6 85 0d  mov   a,$0d85+y
124f: c4 cb     mov   $cb,a
1251: f6 9b 0d  mov   a,$0d9b+y
1254: c4 cc     mov   $cc,a
1256: f6 b1 0d  mov   a,$0db1+y
1259: c4 cd     mov   $cd,a
125b: f6 bc 0d  mov   a,$0dbc+y
125e: c4 ce     mov   $ce,a
1260: 3f c8 13  call  $13c8
1263: 3f b0 15  call  $15b0
1266: 3f dd 17  call  $17dd
1269: 8d 07     mov   y,#$07
126b: 0b 00     asl   $00
126d: f6 e3 0c  mov   a,$0ce3+y
1270: f0 02     beq   $1274
1272: ab 00     inc   $00
1274: dc        dec   y
1275: 10 f4     bpl   $126b
1277: e4 00     mov   a,$00
1279: c5 f7 00  mov   $00f7,a
127c: 8d 03     mov   y,#$03
127e: 0b 00     asl   $00
1280: f6 a6 00  mov   a,$00a6+y
1283: 16 aa 00  or    a,$00aa+y
1286: f0 02     beq   $128a
1288: ab 00     inc   $00
128a: dc        dec   y
128b: 10 f1     bpl   $127e
128d: 0b 00     asl   $00
128f: e4 c4     mov   a,$c4
1291: f0 02     beq   $1295
1293: ab 00     inc   $00
1295: 8d 02     mov   y,#$02
1297: 0b 00     asl   $00
1299: f6 e0 0c  mov   a,$0ce0+y
129c: f0 02     beq   $12a0
129e: ab 00     inc   $00
12a0: dc        dec   y
12a1: 10 f4     bpl   $1297
12a3: e4 00     mov   a,$00
12a5: c5 f6 00  mov   $00f6,a
12a8: e4 c5     mov   a,$c5
12aa: c5 f4 00  mov   $00f4,a
12ad: e4 c2     mov   a,$c2
12af: c5 f5 00  mov   $00f5,a
12b2: 5f c7 10  jmp   $10c7

12b5: 30 08     bmi   $12bf
12b7: 6d        push  y
12b8: 6d        push  y
12b9: fd        mov   y,a
12ba: ae        pop   a
12bb: d6 40 08  mov   $0840+y,a
12be: ee        pop   y
12bf: 6f        ret

12c0: f5 e0 0c  mov   a,$0ce0+x
12c3: f0 fa     beq   $12bf
12c5: 10 44     bpl   $130b
12c7: bc        inc   a
12c8: d5 e0 0c  mov   $0ce0+x,a
12cb: f0 33     beq   $1300
12cd: 8d ff     mov   y,#$ff
12cf: f5 1f 0e  mov   a,$0e1f+x
12d2: 3f b5 12  call  $12b5
12d5: f5 2a 0e  mov   a,$0e2a+x
12d8: 3f b5 12  call  $12b5
12db: f5 35 0e  mov   a,$0e35+x
12de: 3f b5 12  call  $12b5
12e1: f5 40 0e  mov   a,$0e40+x
12e4: 3f b5 12  call  $12b5
12e7: f5 4b 0e  mov   a,$0e4b+x
12ea: 3f b5 12  call  $12b5
12ed: f5 56 0e  mov   a,$0e56+x
12f0: 3f b5 12  call  $12b5
12f3: f5 61 0e  mov   a,$0e61+x
12f6: 3f b5 12  call  $12b5
12f9: f5 6c 0e  mov   a,$0e6c+x
12fc: 3f b5 12  call  $12b5
12ff: 6f        ret

1300: bc        inc   a
1301: d5 e0 0c  mov   $0ce0+x,a
1304: 8d 01     mov   y,#$01
1306: 3f cf 12  call  $12cf
1309: 2f 43     bra   $134e
130b: fa 09 08  mov   ($08),($09)
130e: eb 4a     mov   y,$4a
1310: f5 0c 0d  mov   a,$0d0c+x
1313: cf        mul   ya
1314: da 0c     movw  $0c,ya
1316: f5 14 0e  mov   a,$0e14+x
1319: c4 00     mov   $00,a
131b: f5 09 0e  mov   a,$0e09+x
131e: fd        mov   y,a
131f: f5 fe 0d  mov   a,$0dfe+x
1322: 7a 0c     addw  ya,$0c
1324: 5a 0a     cmpw  ya,$0a
1326: 90 0e     bcc   $1336
1328: 2d        push  a
1329: e4 00     mov   a,$00
132b: bc        inc   a
132c: 28 07     and   a,#$07
132e: d0 01     bne   $1331
1330: 9c        dec   a
1331: c4 00     mov   $00,a
1333: ae        pop   a
1334: 9a 0a     subw  ya,$0a
1336: 6e 08 e9  dbnz  $08,$1322
1339: d5 fe 0d  mov   $0dfe+x,a
133c: dd        mov   a,y
133d: d5 09 0e  mov   $0e09+x,a
1340: e4 00     mov   a,$00
1342: d5 14 0e  mov   $0e14+x,a
1345: f0 0a     beq   $1351
1347: 9c        dec   a
1348: d5 14 0e  mov   $0e14+x,a
134b: 3f 1a 18  call  $181a
134e: 3f 67 19  call  $1967
1351: 6f        ret

1352: e4 c6     mov   a,$c6
1354: f0 38     beq   $138e
1356: e5 fe 00  mov   a,$00fe
1359: 28 0f     and   a,#$0f
135b: 48 ff     eor   a,#$ff
135d: 80        setc
135e: 84 c7     adc   a,$c7
1360: 10 02     bpl   $1364
1362: e8 00     mov   a,#$00
1364: d0 26     bne   $138c
1366: 8b c6     dec   $c6
1368: d0 05     bne   $136f
136a: 9c        dec   a
136b: c4 c9     mov   $c9,a
136d: 2f 1f     bra   $138e
136f: c4 c8     mov   $c8,a
1371: 8d 6c     mov   y,#$6c
1373: 3f 07 21  call  $2107
1376: 28 df     and   a,#$df
1378: 3f 00 21  call  $2100
137b: e8 01     mov   a,#$01
137d: c5 f1 00  mov   $00f1,a
1380: e8 03     mov   a,#$03
1382: c5 f1 00  mov   $00f1,a
1385: 8d 7d     mov   y,#$7d
1387: 3f 07 21  call  $2107
138a: 28 0f     and   a,#$0f
138c: c4 c7     mov   $c7,a
138e: 6f        ret

138f: 2d        push  a
1390: e8 20     mov   a,#$20
1392: c4 c8     mov   $c8,a
1394: 8d 6c     mov   y,#$6c
1396: 3f 07 21  call  $2107
1399: 08 20     or    a,#$20
139b: 3f 00 21  call  $2100
139e: ae        pop   a
139f: 8d 7d     mov   y,#$7d
13a1: 3f 00 21  call  $2100
13a4: 9f        xcn   a
13a5: f0 16     beq   $13bd
13a7: 5c        lsr   a
13a8: 48 ff     eor   a,#$ff
13aa: 80        setc
13ab: 84 5f     adc   a,$5f
13ad: 8d 6d     mov   y,#$6d
13af: 3f 00 21  call  $2100
13b2: e8 01     mov   a,#$01
13b4: c5 f1 00  mov   $00f1,a
13b7: e8 03     mov   a,#$03
13b9: c5 f1 00  mov   $00f1,a
13bc: 9c        dec   a
13bd: c4 c6     mov   $c6,a
13bf: e8 0f     mov   a,#$0f
13c1: c4 c7     mov   $c7,a
13c3: e8 00     mov   a,#$00
13c5: c4 c9     mov   $c9,a
13c7: 6f        ret

13c8: 4d        push  x
13c9: e4 ce     mov   a,$ce
13cb: 9f        xcn   a
13cc: 28 f0     and   a,#$f0
13ce: 5c        lsr   a
13cf: fd        mov   y,a
13d0: cd 0f     mov   x,#$0f
13d2: 3f 2f 14  call  $142f
13d5: cd 1f     mov   x,#$1f
13d7: 3f 2f 14  call  $142f
13da: cd 2f     mov   x,#$2f
13dc: 3f 2f 14  call  $142f
13df: cd 3f     mov   x,#$3f
13e1: 3f 2f 14  call  $142f
13e4: cd 4f     mov   x,#$4f
13e6: 3f 2f 14  call  $142f
13e9: cd 5f     mov   x,#$5f
13eb: 3f 2f 14  call  $142f
13ee: cd 6f     mov   x,#$6f
13f0: 3f 2f 14  call  $142f
13f3: cd 7f     mov   x,#$7f
13f5: 3f 2f 14  call  $142f
13f8: ce        pop   x
13f9: e4 c9     mov   a,$c9
13fb: f0 02     beq   $13ff
13fd: e4 cd     mov   a,$cd
13ff: 8d 0d     mov   y,#$0d
1401: 3f 00 21  call  $2100
1404: e4 84     mov   a,$84
1406: 5c        lsr   a
1407: 2d        push  a
1408: 8d 0c     mov   y,#$0c
140a: 3f 00 21  call  $2100
140d: e4 c9     mov   a,$c9
140f: 24 cb     and   a,$cb
1411: ee        pop   y
1412: cf        mul   ya
1413: dd        mov   a,y
1414: 8d 2c     mov   y,#$2c
1416: 3f 00 21  call  $2100
1419: e4 85     mov   a,$85
141b: 5c        lsr   a
141c: 2d        push  a
141d: 8d 1c     mov   y,#$1c
141f: 3f 00 21  call  $2100
1422: e4 c9     mov   a,$c9
1424: 24 cc     and   a,$cc
1426: ee        pop   y
1427: cf        mul   ya
1428: dd        mov   a,y
1429: 8d 3c     mov   y,#$3c
142b: 3f 00 21  call  $2100
142e: 6f        ret

142f: f7 56     mov   a,($56)+y
1431: fc        inc   y
1432: c9 f2 00  mov   $00f2,x
1435: c5 f3 00  mov   $00f3,a
1438: 6f        ret

1439: e8 00     mov   a,#$00
143b: d4 86     mov   $86+x,a
143d: d4 8a     mov   $8a+x,a
143f: e4 06     mov   a,$06
1441: d4 a6     mov   $a6+x,a
1443: d4 aa     mov   $aa+x,a
1445: 2d        push  a
1446: e4 01     mov   a,$01
1448: 2d        push  a
1449: e4 00     mov   a,$00
144b: c4 04     mov   $04,a
144d: f4 8e     mov   a,$8e+x
144f: c4 02     mov   $02,a
1451: 4d        push  x
1452: 3f c1 1f  call  $1fc1
1455: ce        pop   x
1456: e4 07     mov   a,$07
1458: d4 9e     mov   $9e+x,a
145a: e4 06     mov   a,$06
145c: d4 96     mov   $96+x,a
145e: ee        pop   y
145f: ae        pop   a
1460: c4 06     mov   $06,a
1462: cb 04     mov   $04,y
1464: f4 92     mov   a,$92+x
1466: c4 02     mov   $02,a
1468: 4d        push  x
1469: 3f c1 1f  call  $1fc1
146c: ce        pop   x
146d: e4 07     mov   a,$07
146f: d4 a2     mov   $a2+x,a
1471: e4 06     mov   a,$06
1473: d4 9a     mov   $9a+x,a
1475: 6f        ret

1476: c8 02     cmp   x,#$02
1478: d0 0d     bne   $1487
147a: 2d        push  a
147b: 28 80     and   a,#$80
147d: c4 c4     mov   $c4,a
147f: 30 03     bmi   $1484
1481: 3f 94 14  call  $1494
1484: ae        pop   a
1485: 28 7f     and   a,#$7f
1487: 68 29     cmp   a,#$29
1489: b0 08     bcs   $1493
148b: c8 03     cmp   x,#$03
148d: 90 38     bcc   $14c7
148f: c8 0b     cmp   x,#$0b
1491: 90 10     bcc   $14a3
1493: 6f        ret

1494: 2d        push  a
1495: 4d        push  x
1496: cd 1f     mov   x,#$1f
1498: e8 ff     mov   a,#$ff
149a: d5 e0 0b  mov   $0be0+x,a
149d: 1d        dec   x
149e: 10 fa     bpl   $149a
14a0: ce        pop   x
14a1: ae        pop   a
14a2: 6f        ret

14a3: 2d        push  a
14a4: f5 e0 0c  mov   a,$0ce0+x
14a7: f0 03     beq   $14ac
14a9: 3f 76 15  call  $1576
14ac: ae        pop   a
14ad: 68 00     cmp   a,#$00
14af: d0 04     bne   $14b5
14b1: d5 e0 0c  mov   $0ce0+x,a
14b4: 6f        ret

14b5: 2d        push  a
14b6: 3f 88 20  call  $2088
14b9: 3f bf 20  call  $20bf
14bc: 3f 3f 15  call  $153f
14bf: e8 fd     mov   a,#$fd
14c1: d5 e0 0c  mov   $0ce0+x,a
14c4: ae        pop   a
14c5: 2f 15     bra   $14dc
14c7: 2d        push  a
14c8: 3f 88 20  call  $2088
14cb: 3f bf 20  call  $20bf
14ce: e8 fd     mov   a,#$fd
14d0: d5 e0 0c  mov   $0ce0+x,a
14d3: ae        pop   a
14d4: 68 00     cmp   a,#$00
14d6: d0 04     bne   $14dc
14d8: d5 e0 0c  mov   $0ce0+x,a
14db: 6f        ret

14dc: 9c        dec   a
14dd: 1c        asl   a
14de: fd        mov   y,a
14df: f7 5c     mov   a,($5c)+y
14e1: 2d        push  a
14e2: fc        inc   y
14e3: f7 5c     mov   a,($5c)+y
14e5: fd        mov   y,a
14e6: ae        pop   a
14e7: da 14     movw  $14,ya
14e9: 8d 00     mov   y,#$00
14eb: f5 1f 0e  mov   a,$0e1f+x
14ee: 3f 1c 15  call  $151c
14f1: f5 2a 0e  mov   a,$0e2a+x
14f4: 3f 1c 15  call  $151c
14f7: f5 35 0e  mov   a,$0e35+x
14fa: 3f 1c 15  call  $151c
14fd: f5 40 0e  mov   a,$0e40+x
1500: 3f 1c 15  call  $151c
1503: f5 4b 0e  mov   a,$0e4b+x
1506: 3f 1c 15  call  $151c
1509: f5 56 0e  mov   a,$0e56+x
150c: 3f 1c 15  call  $151c
150f: f5 61 0e  mov   a,$0e61+x
1512: 3f 1c 15  call  $151c
1515: f5 6c 0e  mov   a,$0e6c+x
1518: 3f 1c 15  call  $151c
151b: 6f        ret

151c: 30 20     bmi   $153e
151e: 4d        push  x
151f: 5d        mov   x,a
1520: 6d        push  y
1521: 3f 29 20  call  $2029
1524: ee        pop   y
1525: dd        mov   a,y
1526: d5 60 08  mov   $0860+x,a
1529: fc        inc   y
152a: e4 14     mov   a,$14
152c: d5 a0 08  mov   $08a0+x,a
152f: e4 15     mov   a,$15
1531: d5 c0 08  mov   $08c0+x,a
1534: e8 ff     mov   a,#$ff
1536: d5 40 08  mov   $0840+x,a
1539: ae        pop   a
153a: d5 80 08  mov   $0880+x,a
153d: 5d        mov   x,a
153e: 6f        ret

153f: 8d 07     mov   y,#$07
1541: 3f 60 15  call  $1560
1544: d5 1f 0e  mov   $0e1f+x,a
1547: 30 16     bmi   $155f
1549: 3f 60 15  call  $1560
154c: d5 2a 0e  mov   $0e2a+x,a
154f: 30 0e     bmi   $155f
1551: 3f 60 15  call  $1560
1554: d5 35 0e  mov   $0e35+x,a
1557: 30 06     bmi   $155f
1559: 3f 60 15  call  $1560
155c: d5 40 0e  mov   $0e40+x,a
155f: 6f        ret

1560: f6 58 08  mov   a,$0858+y
1563: f0 06     beq   $156b
1565: dc        dec   y
1566: 10 f8     bpl   $1560
1568: e8 80     mov   a,#$80
156a: 6f        ret

156b: e8 ff     mov   a,#$ff
156d: d6 58 08  mov   $0858+y,a
1570: dd        mov   a,y
1571: 60        clrc
1572: 88 18     adc   a,#$18
1574: dc        dec   y
1575: 6f        ret

1576: f5 1f 0e  mov   a,$0e1f+x
1579: 3f a7 15  call  $15a7
157c: f5 2a 0e  mov   a,$0e2a+x
157f: 3f a7 15  call  $15a7
1582: f5 35 0e  mov   a,$0e35+x
1585: 3f a7 15  call  $15a7
1588: f5 40 0e  mov   a,$0e40+x
158b: 3f a7 15  call  $15a7
158e: f5 4b 0e  mov   a,$0e4b+x
1591: 3f a7 15  call  $15a7
1594: f5 56 0e  mov   a,$0e56+x
1597: 3f a7 15  call  $15a7
159a: f5 61 0e  mov   a,$0e61+x
159d: 3f a7 15  call  $15a7
15a0: f5 6c 0e  mov   a,$0e6c+x
15a3: 3f a7 15  call  $15a7
15a6: 6f        ret

15a7: 30 06     bmi   $15af
15a9: fd        mov   y,a
15aa: e8 00     mov   a,#$00
15ac: d6 40 08  mov   $0840+y,a
15af: 6f        ret

15b0: e8 01     mov   a,#$01
15b2: c4 20     mov   $20,a
15b4: 9c        dec   a
15b5: c4 24     mov   $24,a
15b7: c4 26     mov   $26,a
15b9: c4 28     mov   $28,a
15bb: c4 2a     mov   $2a,a
15bd: c4 2c     mov   $2c,a
15bf: c4 22     mov   $22,a
15c1: e5 e2 0c  mov   a,$0ce2
15c4: d0 04     bne   $15ca
15c6: e4 c4     mov   a,$c4
15c8: f0 06     beq   $15d0
15ca: cd 10     mov   x,#$10
15cc: 8d 10     mov   y,#$10
15ce: 2f 13     bra   $15e3
15d0: cd 01     mov   x,#$01
15d2: f5 e0 0c  mov   a,$0ce0+x
15d5: d0 05     bne   $15dc
15d7: 1d        dec   x
15d8: 10 f8     bpl   $15d2
15da: cd 03     mov   x,#$03
15dc: 7d        mov   a,x
15dd: 1c        asl   a
15de: 1c        asl   a
15df: 1c        asl   a
15e0: 5d        mov   x,a
15e1: 8d 18     mov   y,#$18
15e3: 3f 28 16  call  $1628
15e6: 3f 28 16  call  $1628
15e9: 3f 28 16  call  $1628
15ec: 3f 28 16  call  $1628
15ef: 3f 28 16  call  $1628
15f2: 3f 28 16  call  $1628
15f5: 3f 28 16  call  $1628
15f8: 3f 28 16  call  $1628
15fb: 8d 2d     mov   y,#$2d
15fd: e4 24     mov   a,$24
15ff: 3f 00 21  call  $2100
1602: 8d 3d     mov   y,#$3d
1604: e4 2a     mov   a,$2a
1606: 3f 00 21  call  $2100
1609: 8d 4d     mov   y,#$4d
160b: e4 2c     mov   a,$2c
160d: 3f 00 21  call  $2100
1610: 8d 6c     mov   y,#$6c
1612: e4 2e     mov   a,$2e
1614: 04 c8     or    a,$c8
1616: 3f 00 21  call  $2100
1619: 8d 4c     mov   y,#$4c
161b: e4 26     mov   a,$26
161d: 3f 00 21  call  $2100
1620: 8d 5c     mov   y,#$5c
1622: e4 28     mov   a,$28
1624: 3f 00 21  call  $2100
1627: 6f        ret

1628: 6d        push  y
1629: 4d        push  x
162a: f6 40 08  mov   a,$0840+y
162d: f0 02     beq   $1631
162f: dd        mov   a,y
1630: 5d        mov   x,a
1631: e4 22     mov   a,$22
1633: 9f        xcn   a
1634: fd        mov   y,a
1635: f5 40 08  mov   a,$0840+x
1638: 30 0b     bmi   $1645
163a: d0 12     bne   $164e
163c: e4 20     mov   a,$20
163e: 04 28     or    a,$28
1640: c4 28     mov   $28,a
1642: 5f cc 17  jmp   $17cc

1645: e4 20     mov   a,$20
1647: 04 28     or    a,$28
1649: c4 28     mov   $28,a
164b: 5f cc 17  jmp   $17cc

164e: 6d        push  y
164f: f5 20 06  mov   a,$0620+x
1652: 10 02     bpl   $1656
1654: 48 ff     eor   a,#$ff
1656: bc        inc   a
1657: fd        mov   y,a
1658: f5 c0 05  mov   a,$05c0+x
165b: cf        mul   ya
165c: dd        mov   a,y
165d: 48 7f     eor   a,#$7f
165f: 1c        asl   a
1660: bc        inc   a
1661: fd        mov   y,a
1662: f5 60 06  mov   a,$0660+x
1665: cf        mul   ya
1666: f5 20 0a  mov   a,$0a20+x
1669: cf        mul   ya
166a: 4d        push  x
166b: f5 80 08  mov   a,$0880+x
166e: 5d        mov   x,a
166f: f5 43 0d  mov   a,$0d43+x
1672: cf        mul   ya
1673: ce        pop   x
1674: dd        mov   a,y
1675: cf        mul   ya
1676: cb 04     mov   $04,y
1678: 4d        push  x
1679: f5 40 03  mov   a,$0340+x
167c: 3c        rol   a
167d: 3c        rol   a
167e: c4 07     mov   $07,a
1680: e4 c3     mov   a,$c3
1682: d0 06     bne   $168a
1684: 8d 0a     mov   y,#$0a
1686: e8 00     mov   a,#$00
1688: 2f 07     bra   $1691
168a: f5 20 03  mov   a,$0320+x
168d: fd        mov   y,a
168e: f5 00 03  mov   a,$0300+x
1691: cd 01     mov   x,#$01
1693: da 02     movw  $02,ya
1695: f6 eb 20  mov   a,$20eb+y
1698: c4 06     mov   $06,a
169a: f6 ec 20  mov   a,$20ec+y
169d: 80        setc
169e: a4 06     sbc   a,$06
16a0: eb 02     mov   y,$02
16a2: cf        mul   ya
16a3: dd        mov   a,y
16a4: eb 03     mov   y,$03
16a6: 60        clrc
16a7: 84 06     adc   a,$06
16a9: 1c        asl   a
16aa: eb 04     mov   y,$04
16ac: cf        mul   ya
16ad: dd        mov   a,y
16ae: 4b 07     lsr   $07
16b0: 90 03     bcc   $16b5
16b2: 48 ff     eor   a,#$ff
16b4: bc        inc   a
16b5: d4 00     mov   $00+x,a
16b7: 8d 14     mov   y,#$14
16b9: e8 00     mov   a,#$00
16bb: 9a 02     subw  ya,$02
16bd: 1d        dec   x
16be: 10 d3     bpl   $1693
16c0: ce        pop   x
16c1: f5 80 08  mov   a,$0880+x
16c4: 68 03     cmp   a,#$03
16c6: 90 02     bcc   $16ca
16c8: e8 03     mov   a,#$03
16ca: 4d        push  x
16cb: 5d        mov   x,a
16cc: f4 8e     mov   a,$8e+x
16ce: eb 01     mov   y,$01
16d0: cf        mul   ya
16d1: cb 01     mov   $01,y
16d3: f4 92     mov   a,$92+x
16d5: eb 00     mov   y,$00
16d7: cf        mul   ya
16d8: cb 00     mov   $00,y
16da: ce        pop   x
16db: ee        pop   y
16dc: e4 01     mov   a,$01
16de: 3f 00 21  call  $2100
16e1: fc        inc   y
16e2: e4 00     mov   a,$00
16e4: 3f 00 21  call  $2100
16e7: fc        inc   y
16e8: 6d        push  y
16e9: f5 e0 06  mov   a,$06e0+x
16ec: 68 02     cmp   a,#$02
16ee: f0 05     beq   $16f5
16f0: f5 e0 0a  mov   a,$0ae0+x
16f3: 2f 07     bra   $16fc
16f5: f5 e0 0a  mov   a,$0ae0+x
16f8: 80        setc
16f9: b5 00 07  sbc   a,$0700+x
16fc: fd        mov   y,a
16fd: f5 c0 0a  mov   a,$0ac0+x
1700: da 00     movw  $00,ya
1702: f5 00 04  mov   a,$0400+x
1705: f0 32     beq   $1739
1707: f5 60 04  mov   a,$0460+x
170a: 1c        asl   a
170b: 0d        push  psw
170c: 10 02     bpl   $1710
170e: 48 ff     eor   a,#$ff
1710: bc        inc   a
1711: fd        mov   y,a
1712: f5 e0 04  mov   a,$04e0+x
1715: cf        mul   ya
1716: dd        mov   a,y
1717: 1c        asl   a
1718: fd        mov   y,a
1719: 6d        push  y
171a: f5 80 04  mov   a,$0480+x
171d: cf        mul   ya
171e: dd        mov   a,y
171f: 8d 00     mov   y,#$00
1721: da 0e     movw  $0e,ya
1723: ee        pop   y
1724: f5 a0 04  mov   a,$04a0+x
1727: cf        mul   ya
1728: 7a 0e     addw  ya,$0e
172a: da 0e     movw  $0e,ya
172c: ba 00     movw  ya,$00
172e: 8e        pop   psw
172f: b0 04     bcs   $1735
1731: 7a 0e     addw  ya,$0e
1733: 2f 02     bra   $1737
1735: 9a 0e     subw  ya,$0e
1737: da 00     movw  $00,ya
1739: ee        pop   y
173a: f5 a0 0b  mov   a,$0ba0+x
173d: c4 03     mov   $03,a
173f: f5 80 0b  mov   a,$0b80+x
1742: c4 02     mov   $02,a
1744: 6d        push  y
1745: 3f 0e 21  call  $210e
1748: da 0e     movw  $0e,ya
174a: ee        pop   y
174b: e4 0e     mov   a,$0e
174d: 3f 00 21  call  $2100
1750: fc        inc   y
1751: e4 0f     mov   a,$0f
1753: 3f 00 21  call  $2100
1756: fc        inc   y
1757: f5 00 0b  mov   a,$0b00+x
175a: 3f 00 21  call  $2100
175d: fc        inc   y
175e: f5 20 0b  mov   a,$0b20+x
1761: 3f 00 21  call  $2100
1764: fc        inc   y
1765: f5 40 0b  mov   a,$0b40+x
1768: 3f 00 21  call  $2100
176b: fc        inc   y
176c: f5 60 0b  mov   a,$0b60+x
176f: 3f 00 21  call  $2100
1772: f5 40 0c  mov   a,$0c40+x
1775: f0 0b     beq   $1782
1777: f5 c0 0b  mov   a,$0bc0+x
177a: c4 2e     mov   $2e,a
177c: e4 20     mov   a,$20
177e: 04 2a     or    a,$2a
1780: c4 2a     mov   $2a,a
1782: f5 20 0c  mov   a,$0c20+x
1785: 24 20     and   a,$20
1787: 04 24     or    a,$24
1789: c4 24     mov   $24,a
178b: f5 00 0c  mov   a,$0c00+x
178e: d0 0d     bne   $179d
1790: f5 e0 0b  mov   a,$0be0+x
1793: f0 16     beq   $17ab
1795: e4 20     mov   a,$20
1797: 04 26     or    a,$26
1799: c4 26     mov   $26,a
179b: 2f 06     bra   $17a3
179d: e4 20     mov   a,$20
179f: 04 28     or    a,$28
17a1: c4 28     mov   $28,a
17a3: e8 00     mov   a,#$00
17a5: d5 e0 0b  mov   $0be0+x,a
17a8: d5 00 0c  mov   $0c00+x,a
17ab: f5 80 08  mov   a,$0880+x
17ae: fd        mov   y,a
17af: ad 03     cmp   y,#$03
17b1: 90 10     bcc   $17c3
17b3: f5 60 08  mov   a,$0860+x
17b6: 5d        mov   x,a
17b7: f5 d5 17  mov   a,$17d5+x
17ba: 36 6f 0d  and   a,$0d6f+y
17bd: f0 0d     beq   $17cc
17bf: e4 20     mov   a,$20
17c1: 2f 05     bra   $17c8
17c3: f6 6f 0d  mov   a,$0d6f+y
17c6: 24 20     and   a,$20
17c8: 04 2c     or    a,$2c
17ca: c4 2c     mov   $2c,a
17cc: 0b 20     asl   $20
17ce: ab 22     inc   $22
17d0: ce        pop   x
17d1: ee        pop   y
17d2: 3d        inc   x
17d3: fc        inc   y
17d4: 6f        ret

17d5: 01        tcall 0
17d6: 02 04     set0  $04
17d8: 08 10     or    a,#$10
17da: 20        clrp
17db: 40        setp
17dc: 80        setc
17dd: e4 ae     mov   a,$ae
17df: bc        inc   a
17e0: 28 03     and   a,#$03
17e2: c4 ae     mov   $ae,a
17e4: 5d        mov   x,a
17e5: f4 a6     mov   a,$a6+x
17e7: f0 16     beq   $17ff
17e9: 9c        dec   a
17ea: d4 a6     mov   $a6+x,a
17ec: f4 8e     mov   a,$8e+x
17ee: fd        mov   y,a
17ef: f4 86     mov   a,$86+x
17f1: da 00     movw  $00,ya
17f3: f4 9e     mov   a,$9e+x
17f5: fd        mov   y,a
17f6: f4 96     mov   a,$96+x
17f8: 7a 00     addw  ya,$00
17fa: d4 86     mov   $86+x,a
17fc: dd        mov   a,y
17fd: d4 8e     mov   $8e+x,a
17ff: f4 aa     mov   a,$aa+x
1801: f0 16     beq   $1819
1803: 9c        dec   a
1804: d4 aa     mov   $aa+x,a
1806: f4 92     mov   a,$92+x
1808: fd        mov   y,a
1809: f4 8a     mov   a,$8a+x
180b: da 00     movw  $00,ya
180d: f4 a2     mov   a,$a2+x
180f: fd        mov   y,a
1810: f4 9a     mov   a,$9a+x
1812: 7a 00     addw  ya,$00
1814: d4 8a     mov   $8a+x,a
1816: dd        mov   a,y
1817: d4 92     mov   $92+x,a
1819: 6f        ret

181a: f5 17 0d  mov   a,$0d17+x
181d: f0 1d     beq   $183c
181f: 9c        dec   a
1820: d5 17 0d  mov   $0d17+x,a
1823: f5 0c 0d  mov   a,$0d0c+x
1826: fd        mov   y,a
1827: f5 01 0d  mov   a,$0d01+x
182a: da 00     movw  $00,ya
182c: f5 2d 0d  mov   a,$0d2d+x
182f: fd        mov   y,a
1830: f5 22 0d  mov   a,$0d22+x
1833: 7a 00     addw  ya,$00
1835: d5 01 0d  mov   $0d01+x,a
1838: dd        mov   a,y
1839: d5 0c 0d  mov   $0d0c+x,a
183c: f5 4e 0d  mov   a,$0d4e+x
183f: f0 1d     beq   $185e
1841: 9c        dec   a
1842: d5 4e 0d  mov   $0d4e+x,a
1845: f5 43 0d  mov   a,$0d43+x
1848: fd        mov   y,a
1849: f5 38 0d  mov   a,$0d38+x
184c: da 00     movw  $00,ya
184e: f5 64 0d  mov   a,$0d64+x
1851: fd        mov   y,a
1852: f5 59 0d  mov   a,$0d59+x
1855: 7a 00     addw  ya,$00
1857: d5 38 0d  mov   $0d38+x,a
185a: dd        mov   a,y
185b: d5 43 0d  mov   $0d43+x,a
185e: f5 c7 0d  mov   a,$0dc7+x
1861: f0 36     beq   $1899
1863: 9c        dec   a
1864: d5 c7 0d  mov   $0dc7+x,a
1867: f5 85 0d  mov   a,$0d85+x
186a: fd        mov   y,a
186b: f5 7a 0d  mov   a,$0d7a+x
186e: da 00     movw  $00,ya
1870: f5 dd 0d  mov   a,$0ddd+x
1873: fd        mov   y,a
1874: f5 d2 0d  mov   a,$0dd2+x
1877: 7a 00     addw  ya,$00
1879: d5 7a 0d  mov   $0d7a+x,a
187c: dd        mov   a,y
187d: d5 85 0d  mov   $0d85+x,a
1880: f5 9b 0d  mov   a,$0d9b+x
1883: fd        mov   y,a
1884: f5 90 0d  mov   a,$0d90+x
1887: da 00     movw  $00,ya
1889: f5 f3 0d  mov   a,$0df3+x
188c: fd        mov   y,a
188d: f5 e8 0d  mov   a,$0de8+x
1890: 7a 00     addw  ya,$00
1892: d5 90 0d  mov   $0d90+x,a
1895: dd        mov   a,y
1896: d5 9b 0d  mov   $0d9b+x,a
1899: 6f        ret

189a: f5 60 03  mov   a,$0360+x
189d: f0 1d     beq   $18bc
189f: 9c        dec   a
18a0: d5 60 03  mov   $0360+x,a
18a3: f5 20 03  mov   a,$0320+x
18a6: fd        mov   y,a
18a7: f5 00 03  mov   a,$0300+x
18aa: da 00     movw  $00,ya
18ac: f5 a0 03  mov   a,$03a0+x
18af: fd        mov   y,a
18b0: f5 80 03  mov   a,$0380+x
18b3: 7a 00     addw  ya,$00
18b5: d5 00 03  mov   $0300+x,a
18b8: dd        mov   a,y
18b9: d5 20 03  mov   $0320+x,a
18bc: f5 80 06  mov   a,$0680+x
18bf: f0 1d     beq   $18de
18c1: 9c        dec   a
18c2: d5 80 06  mov   $0680+x,a
18c5: f5 60 06  mov   a,$0660+x
18c8: fd        mov   y,a
18c9: f5 40 06  mov   a,$0640+x
18cc: da 00     movw  $00,ya
18ce: f5 c0 06  mov   a,$06c0+x
18d1: fd        mov   y,a
18d2: f5 a0 06  mov   a,$06a0+x
18d5: 7a 00     addw  ya,$00
18d7: d5 40 06  mov   $0640+x,a
18da: dd        mov   a,y
18db: d5 60 06  mov   $0660+x,a
18de: f5 c0 05  mov   a,$05c0+x
18e1: f0 15     beq   $18f8
18e3: f5 e0 05  mov   a,$05e0+x
18e6: f0 06     beq   $18ee
18e8: 9c        dec   a
18e9: d5 e0 05  mov   $05e0+x,a
18ec: 2f 0a     bra   $18f8
18ee: f5 a0 05  mov   a,$05a0+x
18f1: 60        clrc
18f2: 95 20 06  adc   a,$0620+x
18f5: d5 20 06  mov   $0620+x,a
18f8: f5 00 04  mov   a,$0400+x
18fb: f0 15     beq   $1912
18fd: f5 20 04  mov   a,$0420+x
1900: f0 06     beq   $1908
1902: 9c        dec   a
1903: d5 20 04  mov   $0420+x,a
1906: 2f 0a     bra   $1912
1908: f5 e0 03  mov   a,$03e0+x
190b: 60        clrc
190c: 95 60 04  adc   a,$0460+x
190f: d5 60 04  mov   $0460+x,a
1912: f5 00 05  mov   a,$0500+x
1915: f0 1d     beq   $1934
1917: 9c        dec   a
1918: d5 00 05  mov   $0500+x,a
191b: f5 e0 04  mov   a,$04e0+x
191e: fd        mov   y,a
191f: f5 c0 04  mov   a,$04c0+x
1922: da 00     movw  $00,ya
1924: f5 40 05  mov   a,$0540+x
1927: fd        mov   y,a
1928: f5 20 05  mov   a,$0520+x
192b: 7a 00     addw  ya,$00
192d: d5 c0 04  mov   $04c0+x,a
1930: dd        mov   a,y
1931: d5 e0 04  mov   $04e0+x,a
1934: f5 e0 06  mov   a,$06e0+x
1937: f0 2d     beq   $1966
1939: f5 c0 07  mov   a,$07c0+x
193c: f0 06     beq   $1944
193e: 9c        dec   a
193f: d5 c0 07  mov   $07c0+x,a
1942: 2f 22     bra   $1966
1944: f5 00 08  mov   a,$0800+x
1947: f0 1d     beq   $1966
1949: 9c        dec   a
194a: d5 00 08  mov   $0800+x,a
194d: f5 80 07  mov   a,$0780+x
1950: fd        mov   y,a
1951: f5 60 07  mov   a,$0760+x
1954: da 00     movw  $00,ya
1956: f5 e0 0a  mov   a,$0ae0+x
1959: fd        mov   y,a
195a: f5 c0 0a  mov   a,$0ac0+x
195d: 7a 00     addw  ya,$00
195f: d5 c0 0a  mov   $0ac0+x,a
1962: dd        mov   a,y
1963: d5 e0 0a  mov   $0ae0+x,a
1966: 6f        ret

1967: d8 c0     mov   $c0,x
1969: 8f 00 0e  mov   $0e,#$00
196c: f5 1f 0e  mov   a,$0e1f+x
196f: 30 06     bmi   $1977
1971: 3f cc 19  call  $19cc
1974: d5 1f 0e  mov   $0e1f+x,a
1977: f5 2a 0e  mov   a,$0e2a+x
197a: 30 06     bmi   $1982
197c: 3f cc 19  call  $19cc
197f: d5 2a 0e  mov   $0e2a+x,a
1982: f5 35 0e  mov   a,$0e35+x
1985: 30 06     bmi   $198d
1987: 3f cc 19  call  $19cc
198a: d5 35 0e  mov   $0e35+x,a
198d: f5 40 0e  mov   a,$0e40+x
1990: 30 06     bmi   $1998
1992: 3f cc 19  call  $19cc
1995: d5 40 0e  mov   $0e40+x,a
1998: f5 4b 0e  mov   a,$0e4b+x
199b: 30 06     bmi   $19a3
199d: 3f cc 19  call  $19cc
19a0: d5 4b 0e  mov   $0e4b+x,a
19a3: f5 56 0e  mov   a,$0e56+x
19a6: 30 06     bmi   $19ae
19a8: 3f cc 19  call  $19cc
19ab: d5 56 0e  mov   $0e56+x,a
19ae: f5 61 0e  mov   a,$0e61+x
19b1: 30 06     bmi   $19b9
19b3: 3f cc 19  call  $19cc
19b6: d5 61 0e  mov   $0e61+x,a
19b9: f5 6c 0e  mov   a,$0e6c+x
19bc: 30 06     bmi   $19c4
19be: 3f cc 19  call  $19cc
19c1: d5 6c 0e  mov   $0e6c+x,a
19c4: e4 0e     mov   a,$0e
19c6: d0 03     bne   $19cb
19c8: d5 e0 0c  mov   $0ce0+x,a
19cb: 6f        ret

19cc: 4d        push  x
19cd: 5d        mov   x,a
19ce: 3f 9a 18  call  $189a
19d1: f5 40 08  mov   a,$0840+x
19d4: d0 03     bne   $19d9
19d6: 7d        mov   a,x
19d7: ce        pop   x
19d8: 6f        ret

19d9: f5 c0 0c  mov   a,$0cc0+x
19dc: 9c        dec   a
19dd: d5 c0 0c  mov   $0cc0+x,a
19e0: c4 02     mov   $02,a
19e2: 8d ff     mov   y,#$ff
19e4: f5 e0 06  mov   a,$06e0+x
19e7: 10 07     bpl   $19f0
19e9: f5 c0 07  mov   a,$07c0+x
19ec: 15 00 08  or    a,$0800+x
19ef: fd        mov   y,a
19f0: cb 03     mov   $03,y
19f2: f5 80 09  mov   a,$0980+x
19f5: fd        mov   y,a
19f6: f5 60 09  mov   a,$0960+x
19f9: da 00     movw  $00,ya
19fb: 1a 00     decw  $00
19fd: f0 0d     beq   $1a0c
19ff: 30 0b     bmi   $1a0c
1a01: ba 00     movw  ya,$00
1a03: d5 60 09  mov   $0960+x,a
1a06: dd        mov   a,y
1a07: d5 80 09  mov   $0980+x,a
1a0a: 2f 22     bra   $1a2e
1a0c: f5 00 0a  mov   a,$0a00+x
1a0f: f0 2e     beq   $1a3f
1a11: d5 00 0c  mov   $0c00+x,a
1a14: e8 00     mov   a,#$00
1a16: d5 e0 0b  mov   $0be0+x,a
1a19: d5 00 0a  mov   $0a00+x,a
1a1c: f5 c0 09  mov   a,$09c0+x
1a1f: d5 60 09  mov   $0960+x,a
1a22: c4 00     mov   $00,a
1a24: f5 e0 09  mov   a,$09e0+x
1a27: d5 80 09  mov   $0980+x,a
1a2a: 04 00     or    a,$00
1a2c: f0 0e     beq   $1a3c
1a2e: e4 02     mov   a,$02
1a30: f0 0d     beq   $1a3f
1a32: e4 03     mov   a,$03
1a34: d0 03     bne   $1a39
1a36: 5f ce 1a  jmp   $1ace

1a39: 5f f5 1a  jmp   $1af5

1a3c: d5 00 0c  mov   $0c00+x,a
1a3f: 3f 78 1b  call  $1b78
1a42: 90 0e     bcc   $1a52
1a44: 3f 2b 1b  call  $1b2b
1a47: 90 f6     bcc   $1a3f
1a49: e8 00     mov   a,#$00
1a4b: d5 40 08  mov   $0840+x,a
1a4e: 9c        dec   a
1a4f: 5f f8 1a  jmp   $1af8

1a52: f5 80 05  mov   a,$0580+x
1a55: d5 e0 05  mov   $05e0+x,a
1a58: f5 c0 03  mov   a,$03c0+x
1a5b: d5 20 04  mov   $0420+x,a
1a5e: e8 00     mov   a,#$00
1a60: d5 00 06  mov   $0600+x,a
1a63: d5 20 06  mov   $0620+x,a
1a66: d5 40 04  mov   $0440+x,a
1a69: d5 60 04  mov   $0460+x,a
1a6c: f5 60 05  mov   a,$0560+x
1a6f: d5 00 05  mov   $0500+x,a
1a72: f0 02     beq   $1a76
1a74: e8 01     mov   a,#$01
1a76: 9c        dec   a
1a77: d5 c0 04  mov   $04c0+x,a
1a7a: d5 e0 04  mov   $04e0+x,a
1a7d: f5 a0 07  mov   a,$07a0+x
1a80: d5 c0 07  mov   $07c0+x,a
1a83: f5 e0 07  mov   a,$07e0+x
1a86: d5 00 08  mov   $0800+x,a
1a89: f5 20 07  mov   a,$0720+x
1a8c: d5 60 07  mov   $0760+x,a
1a8f: f5 40 07  mov   a,$0740+x
1a92: d5 80 07  mov   $0780+x,a
1a95: f5 80 0c  mov   a,$0c80+x
1a98: 10 34     bpl   $1ace
1a9a: 28 7f     and   a,#$7f
1a9c: d5 80 0c  mov   $0c80+x,a
1a9f: f5 80 09  mov   a,$0980+x
1aa2: fd        mov   y,a
1aa3: f5 60 09  mov   a,$0960+x
1aa6: da 00     movw  $00,ya
1aa8: 2d        push  a
1aa9: f5 40 0a  mov   a,$0a40+x
1aac: 2d        push  a
1aad: cf        mul   ya
1aae: da 02     movw  $02,ya
1ab0: ae        pop   a
1ab1: ee        pop   y
1ab2: cf        mul   ya
1ab3: dd        mov   a,y
1ab4: 8d 00     mov   y,#$00
1ab6: 7a 02     addw  ya,$02
1ab8: da 02     movw  $02,ya
1aba: ba 00     movw  ya,$00
1abc: 9a 02     subw  ya,$02
1abe: d5 c0 09  mov   $09c0+x,a
1ac1: dd        mov   a,y
1ac2: d5 e0 09  mov   $09e0+x,a
1ac5: ba 02     movw  ya,$02
1ac7: d5 60 09  mov   $0960+x,a
1aca: dd        mov   a,y
1acb: d5 80 09  mov   $0980+x,a
1ace: f5 e0 06  mov   a,$06e0+x
1ad1: 28 7f     and   a,#$7f
1ad3: d5 e0 06  mov   $06e0+x,a
1ad6: 3f fb 1f  call  $1ffb
1ad9: d0 0c     bne   $1ae7
1adb: 3f 2b 1b  call  $1b2b
1ade: 90 f6     bcc   $1ad6
1ae0: e8 ff     mov   a,#$ff
1ae2: d5 40 09  mov   $0940+x,a
1ae5: 2f 0e     bra   $1af5
1ae7: 68 f6     cmp   a,#$f6
1ae9: d0 05     bne   $1af0
1aeb: 3f fa 1a  call  $1afa
1aee: 2f 05     bra   $1af5
1af0: e8 ff     mov   a,#$ff
1af2: d5 40 09  mov   $0940+x,a
1af5: ab 0e     inc   $0e
1af7: 7d        mov   a,x
1af8: ce        pop   x
1af9: 6f        ret

1afa: f5 e0 06  mov   a,$06e0+x
1afd: 08 80     or    a,#$80
1aff: d5 e0 06  mov   $06e0+x,a
1b02: 3f fb 1f  call  $1ffb
1b05: d5 c0 07  mov   $07c0+x,a
1b08: 3f fb 1f  call  $1ffb
1b0b: d5 00 08  mov   $0800+x,a
1b0e: c4 06     mov   $06,a
1b10: f5 a0 0a  mov   a,$0aa0+x
1b13: c4 02     mov   $02,a
1b15: 3f fb 1f  call  $1ffb
1b18: c4 04     mov   $04,a
1b1a: d5 a0 0a  mov   $0aa0+x,a
1b1d: 3f cd 1f  call  $1fcd
1b20: e4 06     mov   a,$06
1b22: d5 60 07  mov   $0760+x,a
1b25: e4 07     mov   a,$07
1b27: d5 80 07  mov   $0780+x,a
1b2a: 6f        ret

1b2b: f5 c0 08  mov   a,$08c0+x
1b2e: fd        mov   y,a
1b2f: f5 a0 08  mov   a,$08a0+x
1b32: da 10     movw  $10,ya
1b34: 8d 00     mov   y,#$00
1b36: f7 10     mov   a,($10)+y
1b38: 3a 10     incw  $10
1b3a: 2d        push  a
1b3b: f7 10     mov   a,($10)+y
1b3d: 3a 10     incw  $10
1b3f: fd        mov   y,a
1b40: ae        pop   a
1b41: da 12     movw  $12,ya
1b43: ad 00     cmp   y,#$00
1b45: d0 11     bne   $1b58
1b47: bc        inc   a
1b48: f0 02     beq   $1b4c
1b4a: 80        setc
1b4b: 6f        ret

1b4c: 8d 00     mov   y,#$00
1b4e: f7 10     mov   a,($10)+y
1b50: 2d        push  a
1b51: fc        inc   y
1b52: f7 10     mov   a,($10)+y
1b54: fd        mov   y,a
1b55: ae        pop   a
1b56: 2f da     bra   $1b32
1b58: ba 10     movw  ya,$10
1b5a: d5 a0 08  mov   $08a0+x,a
1b5d: dd        mov   a,y
1b5e: d5 c0 08  mov   $08c0+x,a
1b61: f5 60 08  mov   a,$0860+x
1b64: 1c        asl   a
1b65: fd        mov   y,a
1b66: f7 12     mov   a,($12)+y
1b68: d5 e0 08  mov   $08e0+x,a
1b6b: fc        inc   y
1b6c: f7 12     mov   a,($12)+y
1b6e: d5 00 09  mov   $0900+x,a
1b71: 15 e0 08  or    a,$08e0+x
1b74: f0 d4     beq   $1b4a
1b76: 60        clrc
1b77: 6f        ret

; vcmds 01-7f - note info
1b78: 3f fb 1f  call  $1ffb		
1b7b: f0 25     beq   $1ba2
1b7d: 30 25     bmi   $1ba4
1b7f: d5 a0 09  mov   $09a0+x,a
1b82: 3f fb 1f  call  $1ffb
1b85: f0 1b     beq   $1ba2
1b87: 30 1b     bmi   $1ba4
1b89: 2d        push  a
1b8a: 9f        xcn   a
1b8b: 28 07     and   a,#$07
1b8d: fd        mov   y,a
1b8e: f7 5a     mov   a,($5a)+y
1b90: d5 40 0a  mov   $0a40+x,a         ;   set dur% from high nybble
1b93: ae        pop   a
1b94: 28 0f     and   a,#$0f
1b96: 60        clrc
1b97: 88 08     adc   a,#$08
1b99: fd        mov   y,a
1b9a: f7 5a     mov   a,($5a)+y
1b9c: d5 20 0a  mov   $0a20+x,a         ;   set per-note vol from low nybble
1b9f: 5f 78 1b  jmp   $1b78

1ba2: 80        setc
1ba3: 6f        ret

; handle a note vcmd (80-db)
1ba4: 68 c8     cmp   a,#$c8
1ba6: 90 21     bcc   $1bc9
1ba8: 68 dc     cmp   a,#$dc
1baa: 90 18     bcc   $1bc4
1bac: 68 e9     cmp   a,#$e9		; rest
1bae: f0 48     beq   $1bf8
1bb0: 68 ea     cmp   a,#$ea		; tie
1bb2: f0 35     beq   $1be9
1bb4: 3f ba 1b  call  $1bba
1bb7: 5f 78 1b  jmp   $1b78

1bba: 80        setc
1bbb: a8 e3     sbc   a,#$e3
1bbd: 1c        asl   a
1bbe: d8 00     mov   $00,x
1bc0: 5d        mov   x,a
1bc1: 1f ad 1c  jmp   ($1cad+x)

1bc4: 3f d4 1d  call  $1dd4
1bc7: e8 a4     mov   a,#$a4
1bc9: d5 a0 0a  mov   $0aa0+x,a
1bcc: eb c0     mov   y,$c0
1bce: 60        clrc
1bcf: 95 e0 02  adc   a,$02e0+x
1bd2: 60        clrc
1bd3: 96 f6 0c  adc   a,$0cf6+y
1bd6: d5 e0 0a  mov   $0ae0+x,a
1bd9: f5 20 08  mov   a,$0820+x
1bdc: d5 c0 0a  mov   $0ac0+x,a
1bdf: e8 ff     mov   a,#$ff
1be1: d5 00 0a  mov   $0a00+x,a
1be4: d5 e0 0b  mov   $0be0+x,a
1be7: 2f 21     bra   $1c0a
1be9: e8 00     mov   a,#$00
1beb: d5 e0 0b  mov   $0be0+x,a
1bee: e8 ff     mov   a,#$ff
1bf0: d5 00 0a  mov   $0a00+x,a
1bf3: d5 00 0c  mov   $0c00+x,a
1bf6: 2f 12     bra   $1c0a
1bf8: f5 80 0c  mov   a,$0c80+x
1bfb: f0 ec     beq   $1be9
1bfd: 9c        dec   a
1bfe: d5 80 0c  mov   $0c80+x,a
1c01: f5 a0 09  mov   a,$09a0+x
1c04: d5 c0 0c  mov   $0cc0+x,a
1c07: 5f ab 1c  jmp   $1cab

; dispatch vcmd?
1c0a: f5 a0 09  mov   a,$09a0+x
1c0d: d5 c0 0c  mov   $0cc0+x,a
1c10: d5 60 09  mov   $0960+x,a
1c13: e8 00     mov   a,#$00
1c15: d5 80 09  mov   $0980+x,a
1c18: e8 80     mov   a,#$80
1c1a: d5 80 0c  mov   $0c80+x,a
1c1d: f5 a0 09  mov   a,$09a0+x
1c20: d5 a0 0c  mov   $0ca0+x,a
1c23: f5 40 09  mov   a,$0940+x
1c26: 2d        push  a
1c27: f5 20 09  mov   a,$0920+x
1c2a: 2d        push  a
1c2b: f5 00 09  mov   a,$0900+x
1c2e: 2d        push  a
1c2f: f5 e0 08  mov   a,$08e0+x
1c32: 2d        push  a
1c33: f5 c0 08  mov   a,$08c0+x
1c36: 2d        push  a
1c37: f5 a0 08  mov   a,$08a0+x
1c3a: 2d        push  a
1c3b: 3f fb 1f  call  $1ffb
1c3e: 30 13     bmi   $1c53
1c40: f0 0a     beq   $1c4c
1c42: d5 a0 0c  mov   $0ca0+x,a
1c45: 3f fb 1f  call  $1ffb
1c48: 30 09     bmi   $1c53
1c4a: d0 ef     bne   $1c3b
1c4c: 3f 2b 1b  call  $1b2b
1c4f: 90 ea     bcc   $1c3b
1c51: 2f 40     bra   $1c93
1c53: 68 dc     cmp   a,#$dc
1c55: 90 3c     bcc   $1c93
1c57: 68 e9     cmp   a,#$e9
1c59: f0 18     beq   $1c73
1c5b: 68 ea     cmp   a,#$ea
1c5d: f0 34     beq   $1c93
1c5f: 80        setc
1c60: a8 e3     sbc   a,#$e3
1c62: fd        mov   y,a
1c63: f6 e7 1c  mov   a,$1ce7+y		; vcmd length
1c66: f0 d3     beq   $1c3b
1c68: c4 04     mov   $04,a
1c6a: 3f fb 1f  call  $1ffb
1c6d: 8b 04     dec   $04
1c6f: d0 f9     bne   $1c6a
1c71: 2f c8     bra   $1c3b
1c73: f5 80 0c  mov   a,$0c80+x
1c76: bc        inc   a
1c77: d5 80 0c  mov   $0c80+x,a
1c7a: f5 80 09  mov   a,$0980+x
1c7d: fd        mov   y,a
1c7e: f5 60 09  mov   a,$0960+x
1c81: da 00     movw  $00,ya
1c83: 8d 00     mov   y,#$00
1c85: f5 a0 0c  mov   a,$0ca0+x
1c88: 7a 00     addw  ya,$00
1c8a: d5 60 09  mov   $0960+x,a
1c8d: dd        mov   a,y
1c8e: d5 80 09  mov   $0980+x,a
1c91: 2f a8     bra   $1c3b
1c93: ae        pop   a
1c94: d5 a0 08  mov   $08a0+x,a
1c97: ae        pop   a
1c98: d5 c0 08  mov   $08c0+x,a
1c9b: ae        pop   a
1c9c: d5 e0 08  mov   $08e0+x,a
1c9f: ae        pop   a
1ca0: d5 00 09  mov   $0900+x,a
1ca3: ae        pop   a
1ca4: d5 20 09  mov   $0920+x,a
1ca7: ae        pop   a
1ca8: d5 40 09  mov   $0940+x,a
1cab: 60        clrc
1cac: 6f        ret

; vcmd dispatch table
1cae: dw $1d04	; e3
1cb0: dw $1d0e	; e4 - global transpose
1cb2: dw $1d19	; e5 - tempo
1cb4: dw $1d29	; e6 - tempo fade
1cb6: dw $1d51	; e7 - master volume
1cb8: dw $1d61	; e8 - master volume fade
1cba: dw $1d89	; e9 - rest
1cbc: dw $1d8c	; ea - tie
1cbe: dw $1d8f	; eb - per-voice transpose
1cc0: dw $1d98	; ec - pan
1cc2: dw $1dab	; ed - pan fade
1cc4: dw $1dcd	; ee - set instrument
1cc6: dw $1e27	; ef - vibrato on
1cc8: dw $1e5e	; f0 - vibrato fade
1cca: dw $1e7e	; f1 - vibrato off
1ccc: dw $1e86	; f2 - tremolo on
1cce: dw $1e9b	; f3 - tremolo off
1cd0: dw $1ea3	; f4 - volume
1cd2: dw $1eb1	; f5 - volume fade
1cd4: dw $1ed3	; f6 - skip 3 bytes
1cd6: dw $1edf	; f7 - pitch envelope (release)
1cd8: dw $1ee3	; f8 - pitch envelope (attack)
1cda: dw $1f11	; f9 - pitch envelope off
1cdc: dw $1f19	; fa - echo vbits/volume
1cde: dw $1f3e	; fb - echo volume fade
1ce0: dw $1f5b	; fc - set echo params
1ce2: dw $1fa0	; fd - disable echo
1ce4: dw $1fad	; fe - tuning
1ce6: dw $1fb6	; ff - reset instrument

; vcmd lengths
1ce7: db $01,$01,$01,$02,$01,$02,$00,$00 ; e3-ea
1cef: db $01,$01,$02,$01,$03,$01,$00,$03 ; eb-f2
1cd7: db $00,$01,$02,$03,$03,$03,$00,$03 ; f3-fa
1cdf: db $03,$03,$00,$01,$01		 ; fb-ff

; vcmd e3
1d04: f8 00     mov   x,$00
1d06: e4 c5     mov   a,$c5
1d08: bc        inc   a
1d09: 28 7f     and   a,#$7f
1d0b: c4 c5     mov   $c5,a
1d0d: 6f        ret

; vcmd e4 - global transpose
1d0e: f8 00     mov   x,$00
1d10: 3f fb 1f  call  $1ffb
1d13: eb c0     mov   y,$c0
1d15: d6 f6 0c  mov   $0cf6+y,a
1d18: 6f        ret

; vcmd e5 - tempo
1d19: f8 00     mov   x,$00
1d1b: 3f fb 1f  call  $1ffb
1d1e: eb c0     mov   y,$c0
1d20: d6 0c 0d  mov   $0d0c+y,a
1d23: e8 00     mov   a,#$00
1d25: d6 01 0d  mov   $0d01+y,a
1d28: 6f        ret

; vcmd e6 - tempo fade
1d29: f8 00     mov   x,$00
1d2b: 3f fb 1f  call  $1ffb
1d2e: c4 06     mov   $06,a
1d30: 2d        push  a
1d31: 3f fb 1f  call  $1ffb
1d34: c4 04     mov   $04,a
1d36: eb c0     mov   y,$c0
1d38: f6 0c 0d  mov   a,$0d0c+y
1d3b: c4 02     mov   $02,a
1d3d: ae        pop   a
1d3e: d6 17 0d  mov   $0d17+y,a
1d41: 3f c1 1f  call  $1fc1
1d44: eb c0     mov   y,$c0
1d46: e4 06     mov   a,$06
1d48: d6 22 0d  mov   $0d22+y,a
1d4b: e4 07     mov   a,$07
1d4d: d6 2d 0d  mov   $0d2d+y,a
1d50: 6f        ret

; vcmd e7 - master volume
1d51: f8 00     mov   x,$00
1d53: 3f fb 1f  call  $1ffb
1d56: eb c0     mov   y,$c0
1d58: d6 43 0d  mov   $0d43+y,a
1d5b: e8 00     mov   a,#$00
1d5d: d6 38 0d  mov   $0d38+y,a
1d60: 6f        ret

; vcmd e8 - master volume fade
1d61: f8 00     mov   x,$00
1d63: 3f fb 1f  call  $1ffb
1d66: c4 06     mov   $06,a
1d68: 2d        push  a
1d69: 3f fb 1f  call  $1ffb
1d6c: c4 04     mov   $04,a
1d6e: eb c0     mov   y,$c0
1d70: f6 43 0d  mov   a,$0d43+y
1d73: c4 02     mov   $02,a
1d75: ae        pop   a
1d76: d6 4e 0d  mov   $0d4e+y,a
1d79: 3f c1 1f  call  $1fc1
1d7c: eb c0     mov   y,$c0
1d7e: e4 06     mov   a,$06
1d80: d6 59 0d  mov   $0d59+y,a
1d83: e4 07     mov   a,$07
1d85: d6 64 0d  mov   $0d64+y,a
1d88: 6f        ret

; vcmd e9 - rest
1d89: f8 00     mov   x,$00
1d8b: 6f        ret

; vcmd ea - tie
1d8c: f8 00     mov   x,$00
1d8e: 6f        ret

; vcmd eb - per-voice transpose
1d8f: f8 00     mov   x,$00
1d91: 3f fb 1f  call  $1ffb
1d94: d5 e0 02  mov   $02e0+x,a
1d97: 6f        ret

; vcmd ec - pan
1d98: f8 00     mov   x,$00
1d9a: 3f fb 1f  call  $1ffb
1d9d: d5 40 03  mov   $0340+x,a
1da0: 28 1f     and   a,#$1f
1da2: d5 20 03  mov   $0320+x,a
1da5: e8 00     mov   a,#$00
1da7: d5 00 03  mov   $0300+x,a
1daa: 6f        ret

; vcmd ed - pan fade
1dab: f8 00     mov   x,$00
1dad: 3f fb 1f  call  $1ffb
1db0: c4 06     mov   $06,a
1db2: d5 60 03  mov   $0360+x,a
1db5: 3f fb 1f  call  $1ffb
1db8: c4 04     mov   $04,a
1dba: f5 20 03  mov   a,$0320+x
1dbd: c4 02     mov   $02,a
1dbf: 3f c1 1f  call  $1fc1
1dc2: e4 06     mov   a,$06
1dc4: d5 80 03  mov   $0380+x,a
1dc7: e4 07     mov   a,$07
1dc9: d5 a0 03  mov   $03a0+x,a
1dcc: 6f        ret

; vcmd ee - set instrument
1dcd: f8 00     mov   x,$00
1dcf: 3f fb 1f  call  $1ffb
1dd2: 10 09     bpl   $1ddd
1dd4: 80        setc
1dd5: a8 c8     sbc   a,#$c8
1dd7: 60        clrc
1dd8: eb c0     mov   y,$c0
1dda: 96 eb 0c  adc   a,$0ceb+y
1ddd: 8d 06     mov   y,#$06
1ddf: cf        mul   ya
1de0: da 00     movw  $00,ya
1de2: e4 58     mov   a,$58
1de4: eb 59     mov   y,$59
1de6: 7a 00     addw  ya,$00
1de8: da 00     movw  $00,ya
1dea: 8d 00     mov   y,#$00
1dec: f7 00     mov   a,($00)+y
1dee: 30 0a     bmi   $1dfa
1df0: d5 00 0b  mov   $0b00+x,a
1df3: e8 00     mov   a,#$00
1df5: d5 40 0c  mov   $0c40+x,a
1df8: 2f 0e     bra   $1e08
1dfa: 28 1f     and   a,#$1f
1dfc: d5 c0 0b  mov   $0bc0+x,a
1dff: e8 ff     mov   a,#$ff
1e01: d5 40 0c  mov   $0c40+x,a
1e04: bc        inc   a
1e05: d5 00 0b  mov   $0b00+x,a
1e08: fc        inc   y
1e09: f7 00     mov   a,($00)+y
1e0b: d5 20 0b  mov   $0b20+x,a
1e0e: fc        inc   y
1e0f: f7 00     mov   a,($00)+y
1e11: d5 40 0b  mov   $0b40+x,a
1e14: fc        inc   y
1e15: f7 00     mov   a,($00)+y
1e17: d5 60 0b  mov   $0b60+x,a
1e1a: fc        inc   y
1e1b: f7 00     mov   a,($00)+y
1e1d: d5 a0 0b  mov   $0ba0+x,a
1e20: fc        inc   y
1e21: f7 00     mov   a,($00)+y
1e23: d5 80 0b  mov   $0b80+x,a
1e26: 6f        ret

; vcmd ef - vibrato on
1e27: f8 00     mov   x,$00
1e29: 3f fb 1f  call  $1ffb
1e2c: d5 c0 03  mov   $03c0+x,a
1e2f: 3f fb 1f  call  $1ffb
1e32: d5 e0 03  mov   $03e0+x,a
1e35: 3f fb 1f  call  $1ffb
1e38: d5 00 04  mov   $0400+x,a
1e3b: f0 20     beq   $1e5d
1e3d: 10 15     bpl   $1e54
1e3f: 68 f0     cmp   a,#$f0
1e41: 90 07     bcc   $1e4a
1e43: a8 ef     sbc   a,#$ef
1e45: fd        mov   y,a
1e46: e8 00     mov   a,#$00
1e48: 2f 0c     bra   $1e56
1e4a: 80        setc
1e4b: c4 06     mov   $06,a
1e4d: 9f        xcn   a
1e4e: 28 07     and   a,#$07
1e50: bc        inc   a
1e51: 1c        asl   a
1e52: 84 06     adc   a,$06
1e54: 8d 00     mov   y,#$00
1e56: d5 80 04  mov   $0480+x,a
1e59: dd        mov   a,y
1e5a: d5 a0 04  mov   $04a0+x,a
1e5d: 6f        ret

; vcmd f0 - vibrato fade
1e5e: f8 00     mov   x,$00
1e60: 3f fb 1f  call  $1ffb
1e63: c4 06     mov   $06,a
1e65: d5 60 05  mov   $0560+x,a
1e68: e8 ff     mov   a,#$ff
1e6a: c4 04     mov   $04,a
1e6c: e8 00     mov   a,#$00
1e6e: c4 02     mov   $02,a
1e70: 3f c1 1f  call  $1fc1
1e73: e4 06     mov   a,$06
1e75: d5 20 05  mov   $0520+x,a
1e78: e4 07     mov   a,$07
1e7a: d5 40 05  mov   $0540+x,a
1e7d: 6f        ret

; vcmd f1 - vibrato off
1e7e: f8 00     mov   x,$00
1e80: e8 00     mov   a,#$00
1e82: d5 00 04  mov   $0400+x,a
1e85: 6f        ret

; vcmd f2 - tremolo on
1e86: f8 00     mov   x,$00
1e88: 3f fb 1f  call  $1ffb
1e8b: d5 80 05  mov   $0580+x,a
1e8e: 3f fb 1f  call  $1ffb
1e91: d5 a0 05  mov   $05a0+x,a
1e94: 3f fb 1f  call  $1ffb
1e97: d5 c0 05  mov   $05c0+x,a
1e9a: 6f        ret

; vcmd f3 - tremolo off
1e9b: f8 00     mov   x,$00
1e9d: e8 00     mov   a,#$00
1e9f: d5 c0 05  mov   $05c0+x,a
1ea2: 6f        ret

; vcmd f4 - volume
1ea3: f8 00     mov   x,$00
1ea5: 3f fb 1f  call  $1ffb
1ea8: d5 60 06  mov   $0660+x,a
1eab: e8 00     mov   a,#$00
1ead: d5 40 06  mov   $0640+x,a
1eb0: 6f        ret

; vcmd f5 - volume fade
1eb1: f8 00     mov   x,$00
1eb3: 3f fb 1f  call  $1ffb
1eb6: c4 06     mov   $06,a
1eb8: d5 80 06  mov   $0680+x,a
1ebb: 3f fb 1f  call  $1ffb
1ebe: c4 04     mov   $04,a
1ec0: f5 60 06  mov   a,$0660+x
1ec3: c4 02     mov   $02,a
1ec5: 3f c1 1f  call  $1fc1
1ec8: e4 06     mov   a,$06
1eca: d5 a0 06  mov   $06a0+x,a
1ecd: e4 07     mov   a,$07
1ecf: d5 c0 06  mov   $06c0+x,a
1ed2: 6f        ret

; vcmd f6 - skip 3 bytes
1ed3: f8 00     mov   x,$00
1ed5: 3f fb 1f  call  $1ffb
1ed8: 3f fb 1f  call  $1ffb
1edb: 3f fb 1f  call  $1ffb
1ede: 6f        ret

; vcmd f7 - pitch envelope (release)
1edf: e8 01     mov   a,#$01
1ee1: 2f 02     bra   $1ee5
; vcmd f8 - pitch envelope (attack)
1ee3: e8 02     mov   a,#$02
1ee5: f8 00     mov   x,$00
1ee7: d5 e0 06  mov   $06e0+x,a
1eea: 3f fb 1f  call  $1ffb
1eed: d5 a0 07  mov   $07a0+x,a
1ef0: 3f fb 1f  call  $1ffb
1ef3: d5 e0 07  mov   $07e0+x,a
1ef6: c4 06     mov   $06,a
1ef8: 3f fb 1f  call  $1ffb
1efb: d5 00 07  mov   $0700+x,a
1efe: c4 04     mov   $04,a
1f00: 8f 00 02  mov   $02,#$00
1f03: 3f cd 1f  call  $1fcd
1f06: e4 06     mov   a,$06
1f08: d5 20 07  mov   $0720+x,a
1f0b: e4 07     mov   a,$07
1f0d: d5 40 07  mov   $0740+x,a
1f10: 6f        ret

; vcmd f9 - pitch envelope off
1f11: f8 00     mov   x,$00
1f13: e8 00     mov   a,#$00
1f15: d5 e0 06  mov   $06e0+x,a
1f18: 6f        ret

; vcmd fa - echo vbits/volume
1f19: f8 00     mov   x,$00
1f1b: 3f fb 1f  call  $1ffb
1f1e: 2d        push  a
1f1f: 3f fb 1f  call  $1ffb
1f22: 2d        push  a
1f23: 3f fb 1f  call  $1ffb
1f26: eb c0     mov   y,$c0
1f28: d6 9b 0d  mov   $0d9b+y,a
1f2b: ae        pop   a
1f2c: d6 85 0d  mov   $0d85+y,a
1f2f: ae        pop   a
1f30: d6 6f 0d  mov   $0d6f+y,a
1f33: e8 00     mov   a,#$00
1f35: d6 90 0d  mov   $0d90+y,a
1f38: d6 7a 0d  mov   $0d7a+y,a
1f3b: cb ca     mov   $ca,y
1f3d: 6f        ret

; vcmd fb - echo volume fade
1f3e: f8 00     mov   x,$00
1f40: 3f fb 1f  call  $1ffb
1f43: 2d        push  a
1f44: 3f fb 1f  call  $1ffb
1f47: 2d        push  a
1f48: 3f fb 1f  call  $1ffb
1f4b: eb c0     mov   y,$c0
1f4d: d6 bc 0d  mov   $0dbc+y,a
1f50: ae        pop   a
1f51: d6 b1 0d  mov   $0db1+y,a
1f54: ae        pop   a
1f55: d6 a6 0d  mov   $0da6+y,a
1f58: cb ca     mov   $ca,y
1f5a: 6f        ret

; vcmd fc - set echo params
1f5b: f8 00     mov   x,$00
1f5d: 3f fb 1f  call  $1ffb
1f60: 2d        push  a
1f61: 2d        push  a
1f62: eb c0     mov   y,$c0
1f64: d6 c7 0d  mov   $0dc7+y,a
1f67: f6 85 0d  mov   a,$0d85+y
1f6a: c4 02     mov   $02,a
1f6c: 3f fb 1f  call  $1ffb
1f6f: c4 04     mov   $04,a
1f71: ae        pop   a
1f72: c4 06     mov   $06,a
1f74: 3f c1 1f  call  $1fc1
1f77: eb c0     mov   y,$c0
1f79: e4 06     mov   a,$06
1f7b: d6 d2 0d  mov   $0dd2+y,a
1f7e: e4 07     mov   a,$07
1f80: d6 dd 0d  mov   $0ddd+y,a
1f83: f6 9b 0d  mov   a,$0d9b+y
1f86: c4 02     mov   $02,a
1f88: 3f fb 1f  call  $1ffb
1f8b: c4 04     mov   $04,a
1f8d: ae        pop   a
1f8e: c4 06     mov   $06,a
1f90: 3f c1 1f  call  $1fc1
1f93: eb c0     mov   y,$c0
1f95: e4 06     mov   a,$06
1f97: d6 e8 0d  mov   $0de8+y,a
1f9a: e4 07     mov   a,$07
1f9c: d6 f3 0d  mov   $0df3+y,a
1f9f: 6f        ret

; vcmd fd - echo off
1fa0: f8 00     mov   x,$00
1fa2: e8 00     mov   a,#$00
1fa4: eb c0     mov   y,$c0
1fa6: d6 6f 0d  mov   $0d6f+y,a
1fa9: d6 c7 0d  mov   $0dc7+y,a
1fac: 6f        ret

; vcmd fe - tuning
1fad: f8 00     mov   x,$00
1faf: 3f fb 1f  call  $1ffb
1fb2: d5 20 08  mov   $0820+x,a
1fb5: 6f        ret

; vcmd ff
1fb6: f8 00     mov   x,$00
1fb8: 3f fb 1f  call  $1ffb
1fbb: eb c0     mov   y,$c0
1fbd: d6 eb 0c  mov   $0ceb+y,a
1fc0: 6f        ret

1fc1: e4 04     mov   a,$04
1fc3: 80        setc
1fc4: a4 02     sbc   a,$02
1fc6: b0 11     bcs   $1fd9
1fc8: 48 ff     eor   a,#$ff
1fca: bc        inc   a
1fcb: 2f 0c     bra   $1fd9
1fcd: e4 04     mov   a,$04
1fcf: 80        setc
1fd0: a4 02     sbc   a,$02
1fd2: 80        setc
1fd3: 10 04     bpl   $1fd9
1fd5: 48 ff     eor   a,#$ff
1fd7: bc        inc   a
1fd8: 60        clrc
1fd9: 6b 04     ror   $04
1fdb: 4d        push  x
1fdc: f8 06     mov   x,$06
1fde: 8d 00     mov   y,#$00
1fe0: 9e        div   ya,x
1fe1: c4 07     mov   $07,a
1fe3: e8 00     mov   a,#$00
1fe5: 9e        div   ya,x
1fe6: c4 06     mov   $06,a
1fe8: ce        pop   x
1fe9: e4 04     mov   a,$04
1feb: 30 0d     bmi   $1ffa
1fed: e4 07     mov   a,$07
1fef: 48 ff     eor   a,#$ff
1ff1: fd        mov   y,a
1ff2: e4 06     mov   a,$06
1ff4: 48 ff     eor   a,#$ff
1ff6: da 06     movw  $06,ya
1ff8: 3a 06     incw  $06
1ffa: 6f        ret

1ffb: f5 40 09  mov   a,$0940+x
1ffe: f0 09     beq   $2009
2000: e8 00     mov   a,#$00
2002: d5 40 09  mov   $0940+x,a
2005: f5 20 09  mov   a,$0920+x
2008: 6f        ret

2009: f5 00 09  mov   a,$0900+x
200c: fd        mov   y,a
200d: f5 e0 08  mov   a,$08e0+x
2010: da 10     movw  $10,ya
2012: 8d 00     mov   y,#$00
2014: f7 10     mov   a,($10)+y
2016: 2d        push  a
2017: 3a 10     incw  $10
2019: ba 10     movw  ya,$10
201b: d5 e0 08  mov   $08e0+x,a
201e: dd        mov   a,y
201f: d5 00 09  mov   $0900+x,a
2022: ae        pop   a
2023: d5 20 09  mov   $0920+x,a
2026: 68 00     cmp   a,#$00
2028: 6f        ret

2029: e8 00     mov   a,#$00
202b: d5 e0 02  mov   $02e0+x,a
202e: d5 00 03  mov   $0300+x,a
2031: d5 40 03  mov   $0340+x,a
2034: d5 60 03  mov   $0360+x,a
2037: d5 00 04  mov   $0400+x,a
203a: d5 60 05  mov   $0560+x,a
203d: d5 c0 05  mov   $05c0+x,a
2040: d5 40 06  mov   $0640+x,a
2043: d5 80 06  mov   $0680+x,a
2046: d5 e0 06  mov   $06e0+x,a
2049: d5 20 08  mov   $0820+x,a
204c: d5 40 08  mov   $0840+x,a
204f: d5 60 08  mov   $0860+x,a
2052: d5 20 09  mov   $0920+x,a
2055: d5 60 09  mov   $0960+x,a
2058: d5 80 09  mov   $0980+x,a
205b: d5 00 0a  mov   $0a00+x,a
205e: d5 20 0c  mov   $0c20+x,a
2061: d5 40 0c  mov   $0c40+x,a
2064: d5 60 0c  mov   $0c60+x,a
2067: d5 80 0c  mov   $0c80+x,a
206a: e4 4a     mov   a,$4a
206c: d5 a0 09  mov   $09a0+x,a
206f: e8 80     mov   a,#$80
2071: d5 20 0a  mov   $0a20+x,a
2074: d5 40 0a  mov   $0a40+x,a
2077: e8 ff     mov   a,#$ff
2079: d5 40 09  mov   $0940+x,a
207c: d5 e0 04  mov   $04e0+x,a
207f: d5 60 06  mov   $0660+x,a
2082: e8 0a     mov   a,#$0a
2084: d5 20 03  mov   $0320+x,a
2087: 6f        ret

2088: e8 00     mov   a,#$00
208a: d5 e0 0c  mov   $0ce0+x,a
208d: d5 eb 0c  mov   $0ceb+x,a
2090: d5 f6 0c  mov   $0cf6+x,a
2093: d5 17 0d  mov   $0d17+x,a
2096: d5 4e 0d  mov   $0d4e+x,a
2099: d5 c7 0d  mov   $0dc7+x,a
209c: d5 fe 0d  mov   $0dfe+x,a
209f: d5 09 0e  mov   $0e09+x,a
20a2: d5 14 0e  mov   $0e14+x,a
20a5: d5 6f 0d  mov   $0d6f+x,a
20a8: d5 7a 0d  mov   $0d7a+x,a
20ab: d5 85 0d  mov   $0d85+x,a
20ae: d5 90 0d  mov   $0d90+x,a
20b1: d5 9b 0d  mov   $0d9b+x,a
20b4: e8 3c     mov   a,#$3c
20b6: d5 0c 0d  mov   $0d0c+x,a
20b9: e8 c0     mov   a,#$c0
20bb: d5 43 0d  mov   $0d43+x,a
20be: 6f        ret

20bf: c8 03     cmp   x,#$03
20c1: 90 04     bcc   $20c7
20c3: e8 80     mov   a,#$80
20c5: 2f 04     bra   $20cb
20c7: 7d        mov   a,x
20c8: 1c        asl   a
20c9: 1c        asl   a
20ca: 1c        asl   a
20cb: d5 1f 0e  mov   $0e1f+x,a
20ce: bc        inc   a
20cf: d5 2a 0e  mov   $0e2a+x,a
20d2: bc        inc   a
20d3: d5 35 0e  mov   $0e35+x,a
20d6: bc        inc   a
20d7: d5 40 0e  mov   $0e40+x,a
20da: bc        inc   a
20db: d5 4b 0e  mov   $0e4b+x,a
20de: bc        inc   a
20df: d5 56 0e  mov   $0e56+x,a
20e2: bc        inc   a
20e3: d5 61 0e  mov   $0e61+x,a
20e6: bc        inc   a
20e7: d5 6c 0e  mov   $0e6c+x,a
20ea: 6f        ret


20eb: db $00,$01,$03,$07,$0d,$15,$1e,$29
20f3: db $34,$42,$51,$5e,$67,$6e,$73,$77
20fb: db $7a,$7c,$7d,$7e,$7f

2100: cc f2 00  mov   $00f2,y
2103: c5 f3 00  mov   $00f3,a
2106: 6f        ret

2107: cc f2 00  mov   $00f2,y
210a: e5 f3 00  mov   a,$00f3
210d: 6f        ret

210e: e4 54     mov   a,$54
2110: eb 55     mov   y,$55
2112: da 10     movw  $10,ya
2114: e4 01     mov   a,$01
2116: 1c        asl   a
2117: fd        mov   y,a
2118: f7 10     mov   a,($10)+y
211a: c4 04     mov   $04,a
211c: fc        inc   y
211d: f7 10     mov   a,($10)+y
211f: c4 05     mov   $05,a
2121: fc        inc   y
2122: f7 10     mov   a,($10)+y
2124: 2d        push  a
2125: fc        inc   y
2126: f7 10     mov   a,($10)+y
2128: fd        mov   y,a
2129: ae        pop   a
212a: 9a 04     subw  ya,$04
212c: 2d        push  a
212d: e4 00     mov   a,$00
212f: cf        mul   ya
2130: da 06     movw  $06,ya
2132: ee        pop   y
2133: e4 00     mov   a,$00
2135: cf        mul   ya
2136: dd        mov   a,y
2137: 8d 00     mov   y,#$00
2139: 7a 06     addw  ya,$06
213b: 7a 04     addw  ya,$04
213d: da 04     movw  $04,ya
213f: e4 02     mov   a,$02
2141: eb 05     mov   y,$05
2143: cf        mul   ya
2144: da 06     movw  $06,ya
2146: e4 02     mov   a,$02
2148: eb 04     mov   y,$04
214a: cf        mul   ya
214b: 6d        push  y
214c: e4 03     mov   a,$03
214e: eb 04     mov   y,$04
2150: cf        mul   ya
2151: 7a 06     addw  ya,$06
2153: da 06     movw  $06,ya
2155: e4 03     mov   a,$03
2157: eb 05     mov   y,$05
2159: cf        mul   ya
215a: fd        mov   y,a
215b: ae        pop   a
215c: 7a 06     addw  ya,$06
215e: 6f        ret

215f: f8 4b     mov   x,$4b
2161: 8d 00     mov   y,#$00
2163: e4 4f     mov   a,$4f
2165: 9e        div   ya,x
2166: c4 83     mov   $83,a
2168: e4 4e     mov   a,$4e
216a: 9e        div   ya,x
216b: c4 82     mov   $82,a
216d: eb 4b     mov   y,$4b
216f: e4 4d     mov   a,$4d
2171: cf        mul   ya
2172: c4 80     mov   $80,a
2174: eb 4c     mov   y,$4c
2176: e4 4d     mov   a,$4d
2178: cf        mul   ya
2179: c4 81     mov   $81,a
217b: e8 30     mov   a,#$30
217d: c5 f1 00  mov   $00f1,a
2180: e5 f4 00  mov   a,$00f4
2183: 05 f5 00  or    a,$00f5
2186: 05 f6 00  or    a,$00f6
2189: 05 f7 00  or    a,$00f7
218c: d0 ed     bne   $217b
218e: e4 80     mov   a,$80
2190: c5 fa 00  mov   $00fa,a
2193: e4 81     mov   a,$81
2195: c5 fb 00  mov   $00fb,a
2198: e8 00     mov   a,#$00
219a: c5 f1 00  mov   $00f1,a
219d: bc        inc   a
219e: c5 f1 00  mov   $00f1,a
21a1: 9c        dec   a
21a2: c5 f4 00  mov   $00f4,a
21a5: c5 f5 00  mov   $00f5,a
21a8: c5 f6 00  mov   $00f6,a
21ab: c5 f7 00  mov   $00f7,a
21ae: 6f        ret

21af: e8 aa     mov   a,#$aa
21b1: c5 f4 00  mov   $00f4,a
21b4: e8 bb     mov   a,#$bb
21b6: c5 f5 00  mov   $00f5,a
21b9: e5 f4 00  mov   a,$00f4
21bc: 68 cc     cmp   a,#$cc
21be: d0 f9     bne   $21b9
21c0: 2f 20     bra   $21e2
21c2: ec f4 00  mov   y,$00f4
21c5: d0 fb     bne   $21c2
21c7: 5e f4 00  cmp   y,$00f4
21ca: d0 0f     bne   $21db
21cc: e5 f5 00  mov   a,$00f5
21cf: cc f4 00  mov   $00f4,y
21d2: d7 00     mov   ($00)+y,a
21d4: fc        inc   y
21d5: d0 f0     bne   $21c7
21d7: ab 01     inc   $01
21d9: 2f ec     bra   $21c7
21db: 10 ea     bpl   $21c7
21dd: 5e f4 00  cmp   y,$00f4
21e0: 10 e5     bpl   $21c7
21e2: e5 f6 00  mov   a,$00f6
21e5: ec f7 00  mov   y,$00f7
21e8: da 00     movw  $00,ya
21ea: e5 f4 00  mov   a,$00f4
21ed: ec f5 00  mov   y,$00f5
21f0: c5 f4 00  mov   $00f4,a
21f3: d0 cd     bne   $21c2

; pitch table
3000: dw $0042
3002: dw $0046
3004: dw $004b
3006: dw $004f
3008: dw $0054
300a: dw $0059
300c: dw $005e
300e: dw $0064
3010: dw $006a
3012: dw $0070
3014: dw $0077
3016: dw $007e
3018: dw $0085
301a: dw $008d
301c: dw $0096
301e: dw $009f
3020: dw $00a8
3022: dw $00b2
3024: dw $00bd
3026: dw $00c8
3028: dw $00d4
302a: dw $00e1
302c: dw $00ee
302e: dw $00fc
3030: dw $010b
3032: dw $011b
3034: dw $012c
3036: dw $013e
3038: dw $0151
303a: dw $0165
303c: dw $017a
303e: dw $0191
3040: dw $01a9
3042: dw $01c2
3044: dw $01dd
3046: dw $01f9
3048: dw $0217
304a: dw $0237
304c: dw $0259
304e: dw $027d
3050: dw $02a3
3052: dw $02cb
3054: dw $02f5
3056: dw $0322
3058: dw $0352
305a: dw $0385
305c: dw $03ba
305e: dw $03f3
3060: dw $042f
3062: dw $046f
3064: dw $04b2
3066: dw $04fa
3068: dw $0546
306a: dw $0596
306c: dw $05eb
306e: dw $0645
3070: dw $06a5
3072: dw $070a
3074: dw $0775
3076: dw $07e6
3078: dw $085f
307a: dw $08de
307c: dw $0965
307e: dw $09f4
3080: dw $0a8c
3082: dw $0b2c
3084: dw $0bd6
3086: dw $0c8b
3088: dw $0d4a
308a: dw $0e14
308c: dw $0eea
308e: dw $0fcd
3090: dw $10be
3092: dw $11bd
3094: dw $12cb
3096: dw $13e9
3098: dw $1518
309a: dw $1659
309c: dw $17ad
309e: dw $1916
30a0: dw $1a94
30a2: dw $1c28
30a4: dw $1dd5
30a6: dw $1f9b

; echo FIR presets
3100: db $7f,$00,$00,$00,$00,$00,$00,$00
3108: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
3110: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
3118: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; note dur%'s
3300: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
3308: db $19,$32,$4c,$65,$72,$7f,$8c,$98
3310: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc