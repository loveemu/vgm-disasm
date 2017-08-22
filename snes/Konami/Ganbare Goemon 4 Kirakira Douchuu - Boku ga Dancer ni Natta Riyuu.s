; Ganbare Goemon 4 (one of primary ASMs for konspc)

; pitch table
0300: dw $0042
0302: dw $0046
0304: dw $004b
0306: dw $004f
0308: dw $0054
030a: dw $0059
030c: dw $005e
030e: dw $0064
0310: dw $006a
0312: dw $0070
0314: dw $0077
0316: dw $007e
0318: dw $0085
031a: dw $008d
031c: dw $0096
031e: dw $009f
0320: dw $00a8
0322: dw $00b2
0324: dw $00bd
0326: dw $00c8
0328: dw $00d4
032a: dw $00e1
032c: dw $00ee
032e: dw $00fc
0330: dw $010b
0332: dw $011b
0334: dw $012c
0336: dw $013e
0338: dw $0151
033a: dw $0165
033c: dw $017a
033e: dw $0191
0340: dw $01a9
0342: dw $01c2
0344: dw $01dd
0346: dw $01f9
0348: dw $0217
034a: dw $0237
034c: dw $0259
034e: dw $027d
0350: dw $02a3
0352: dw $02cb
0354: dw $02f5
0356: dw $0322
0358: dw $0352
035a: dw $0385
035c: dw $03ba
035e: dw $03f3
0360: dw $042f
0362: dw $046f
0364: dw $04b2
0366: dw $04fa
0368: dw $0546
036a: dw $0596
036c: dw $05eb
036e: dw $0645
0370: dw $06a5
0372: dw $070a
0374: dw $0775
0376: dw $07e6
0378: dw $085f
037a: dw $08de
037c: dw $0965
037e: dw $09f4
0380: dw $0a8c
0382: dw $0b2c
0384: dw $0bd6
0386: dw $0c8b
0388: dw $0d4a
038a: dw $0e14
038c: dw $0eea
038e: dw $0fcd
0390: dw $10be
0392: dw $11bd
0394: dw $12cb
0396: dw $13e9
0398: dw $1518
039a: dw $1659
039c: dw $17ad
039e: dw $1916
03a0: dw $1a94
03a2: dw $1c28
03a4: dw $1dd5
03a6: dw $1f9b
03a8: dw $217c
03aa: dw $237a
03ac: dw $2596
03ae: dw $27d2
03b0: dw $2a30
03b2: dw $2cb2
03b4: dw $2f5a
03b6: dw $322c
03b8: dw $3528
03ba: dw $3850
03bc: dw $3bac
03be: dw $3f36

10cd: dw $114d  ; e2
10cf: dw $115b  ; e3
10d1: dw $10e9  ; e4
10d3: dw $10f4  ; e5
10d5: dw $1101  ; e6
10d7: dw $110e  ; e7
10d9: dw $111c  ; e8
10db: dw $111f  ; e9
10dd: dw $118a  ; ea
10df: dw $118a  ; eb
10e1: dw $118a  ; ec
10e3: dw $118a  ; ed
10e5: dw $1122  ; ee
10e7: dw $115b  ; ef

10e9: e4 2c     mov   a,$2c
10eb: d0 06     bne   $10f3
10ed: 8f 04 2c  mov   $2c,#$04
10f0: 8f 08 2d  mov   $2d,#$08
10f3: 6f        ret

10f4: e4 2c     mov   a,$2c
10f6: f0 fb     beq   $10f3
10f8: 78 ff 2d  cmp   $2d,#$ff
10fb: f0 f6     beq   $10f3
10fd: 8f ff 2d  mov   $2d,#$ff
1100: 6f        ret

1101: 8f 3f 10  mov   $10,#$3f
1104: 8f 00 0e  mov   $0e,#$00
1107: 22 1f     set1  $1f
1109: e8 46     mov   a,#$46
110b: 5f 18 13  jmp   $1318

110e: 32 1f     clr1  $1f
1110: e4 0f     mov   a,$0f
1112: 78 49 d0  cmp   $d0,#$49
1115: b0 02     bcs   $1119
1117: 28 3f     and   a,#$3f
1119: c4 0e     mov   $0e,a
111b: 6f        ret

111c: 02 1f     set0  $1f
111e: 6f        ret

111f: 12 1f     clr0  $1f
1121: 6f        ret

1122: 3f f4 1e  call  $1ef4
1125: 8f 00 1c  mov   $1c,#$00
1128: 8f 00 04  mov   $04,#$00
112b: 8f 80 05  mov   $05,#$80
112e: 8d 10     mov   y,#$10
1130: f6 8f 01  mov   a,$018f+y
1133: 28 01     and   a,#$01
1135: d0 0c     bne   $1143
1137: 09 05 04  or    ($04),($05)
113a: d6 ce 00  mov   $00ce+y,a
113d: d6 9f 01  mov   $019f+y,a
1140: d6 8e 01  mov   $018e+y,a
1143: 4b 05     lsr   $05
1145: dc        dec   y
1146: fe e8     dbnz  y,$1130
1148: e4 04     mov   a,$04
114a: 5f 4b 14  jmp   $144b

114d: e4 1c     mov   a,$1c
114f: d0 09     bne   $115a
1151: 8f ff 1c  mov   $1c,#$ff
1154: e8 20     mov   a,#$20
1156: c4 1d     mov   $1d,a
1158: c4 1e     mov   $1e,a
115a: 6f        ret

115b: 8f 00 26  mov   $26,#$00
115e: f2 1f     clr7  $1f
1160: e8 7f     mov   a,#$7f
1162: 8f 0c f2  mov   $f2,#$0c
1165: c4 f3     mov   $f3,a             ; set #$7f to MVOL(L)
1167: 8f 1c f2  mov   $f2,#$1c
116a: c4 f3     mov   $f3,a             ; set #$7f to MVOL(R)
116c: 3f f4 1e  call  $1ef4
116f: e8 00     mov   a,#$00
1171: c4 1c     mov   $1c,a
1173: c4 2a     mov   $2a,a
1175: 32 1f     clr1  $1f
1177: 8d 10     mov   y,#$10
1179: d6 ce 00  mov   $00ce+y,a
117c: d6 9f 01  mov   $019f+y,a
117f: d6 8e 01  mov   $018e+y,a
1182: dc        dec   y
1183: fe f4     dbnz  y,$1179
1185: e8 ff     mov   a,#$ff
1187: 5f 4b 14  jmp   $144b

118a: e4 1c     mov   a,$1c
118c: d0 15     bne   $11a3
118e: dd        mov   a,y
118f: 80        setc
1190: a8 ea     sbc   a,#$ea
1192: 5d        mov   x,a
1193: f5 ab 10  mov   a,$10ab+x
1196: 8f ff 1c  mov   $1c,#$ff
1199: c4 1d     mov   $1d,a
119b: ad ed     cmp   y,#$ed
119d: d0 02     bne   $11a1
119f: 08 80     or    a,#$80
11a1: c4 1e     mov   $1e,a
11a3: 6f        ret

11a4: fd        mov   y,a
11a5: 80        setc
11a6: a8 e2     sbc   a,#$e2
11a8: 90 f9     bcc   $11a3
11aa: 1c        asl   a
11ab: 5d        mov   x,a
11ac: 1f cd 10  jmp   ($10cd+x)

11af: 68 a6     cmp   a,#$a6
11b1: b0 07     bcs   $11ba
11b3: 68 02     cmp   a,#$02
11b5: 90 ec     bcc   $11a3
11b7: 5f 18 13  jmp   $1318

11ba: 68 f0     cmp   a,#$f0
11bc: 90 e6     bcc   $11a4
11be: 68 ff     cmp   a,#$ff
11c0: d0 03     bne   $11c5
11c2: 5f 9c 12  jmp   $129c

11c5: 28 0f     and   a,#$0f
11c7: 1c        asl   a
11c8: fd        mov   y,a
11c9: f6 af 10  mov   a,$10af+y
11cc: c4 2e     mov   $2e,a
11ce: f6 b0 10  mov   a,$10b0+y
11d1: c4 2f     mov   $2f,a
11d3: 5f d7 12  jmp   $12d7

11d6: 68 81     cmp   a,#$81
11d8: b0 26     bcs   $1200
11da: 8d 86     mov   y,#$86
11dc: 64 27     cmp   a,$27
11de: d0 04     bne   $11e4
11e0: e2 2a     set7  $2a
11e2: 2f 07     bra   $11eb
11e4: 64 28     cmp   a,$28
11e6: d0 18     bne   $1200
11e8: c2 2a     set6  $2a
11ea: fc        inc   y
11eb: cb 09     mov   $09,y
11ed: 8f 01 0c  mov   $0c,#$01
11f0: c4 0d     mov   $0d,a
11f2: 8f ff 04  mov   $04,#$ff
11f5: 8f 0d 05  mov   $05,#$0d
11f8: 5f 2a 13  jmp   $132a

11fb: e2 1f     set7  $1f
11fd: 8f ff f7  mov   $f7,#$ff
1200: 6f        ret

1201: eb f5     mov   y,$f5
1203: d0 fc     bne   $1201
1205: cb f5     mov   $f5,y
1207: eb f6     mov   y,$f6
1209: cb 2b     mov   $2b,y
120b: 68 f1     cmp   a,#$f1
120d: f0 ec     beq   $11fb
120f: 68 ff     cmp   a,#$ff
1211: d0 16     bne   $1229
1213: c4 26     mov   $26,a
1215: 8f 00 29  mov   $29,#$00
1218: 3f 25 11  call  $1125
121b: 8f 5c f2  mov   $f2,#$5c
121e: c4 f3     mov   $f3,a             ; set KOF
1220: 8f 00 2e  mov   $2e,#$00
1223: 8f 39 2f  mov   $2f,#$39
1226: 5f 98 12  jmp   $1298

1229: 68 f0     cmp   a,#$f0
122b: d0 d3     bne   $1200
122d: 8f 01 26  mov   $26,#$01
1230: ad 1e     cmp   y,#$1e
1232: b0 05     bcs   $1239
1234: 8f 00 28  mov   $28,#$00
1237: 2f 1f     bra   $1258
1239: 7e 27     cmp   y,$27
123b: f0 04     beq   $1241
123d: 7e 28     cmp   y,$28
123f: d0 04     bne   $1245
1241: e2 1f     set7  $1f
1243: 2f 08     bra   $124d
1245: e4 2a     mov   a,$2a
1247: 1c        asl   a
1248: 90 0e     bcc   $1258
124a: 1c        asl   a
124b: 90 1c     bcc   $1269
124d: 8f 80 29  mov   $29,#$80
1250: 8f fe 2e  mov   $2e,#$fe
1253: 8f 42 2f  mov   $2f,#$42
1256: 2f 40     bra   $1298
1258: cb 27     mov   $27,y
125a: e2 2a     set7  $2a
125c: 8f fe 2e  mov   $2e,#$fe
125f: 8f 42 2f  mov   $2f,#$42
1262: cd 02     mov   x,#$02
1264: 8f 43 04  mov   $04,#$43
1267: 2f 0f     bra   $1278
1269: cb 28     mov   $28,y
126b: c2 2a     set6  $2a
126d: 8f fe 2e  mov   $2e,#$fe
1270: 8f 51 2f  mov   $2f,#$51
1273: cd 06     mov   x,#$06
1275: 8f 52 04  mov   $04,#$52
1278: e8 02     mov   a,#$02
127a: cf        mul   ya
127b: da 06     movw  $06,ya
127d: e8 1e     mov   a,#$1e
127f: 8d 06     mov   y,#$06
1281: 7a 06     addw  ya,$06
1283: da 06     movw  $06,ya
1285: 8d 00     mov   y,#$00
1287: f7 06     mov   a,($06)+y
1289: d5 18 06  mov   $0618+x,a
128c: fc        inc   y
128d: f7 06     mov   a,($06)+y
128f: 60        clrc
1290: 84 04     adc   a,$04
1292: d5 19 06  mov   $0619+x,a
1295: 8f 05 29  mov   $29,#$05
1298: 8f ff f7  mov   $f7,#$ff
129b: 6f        ret

129c: e8 cc     mov   a,#$cc
129e: 64 f4     cmp   a,$f4
12a0: d0 fa     bne   $129c
12a2: 2f 1f     bra   $12c3
12a4: eb f4     mov   y,$f4
12a6: d0 fc     bne   $12a4
12a8: 7e f4     cmp   y,$f4
12aa: 30 13     bmi   $12bf
12ac: d0 fa     bne   $12a8
12ae: 7e f4     cmp   y,$f4
12b0: d0 f6     bne   $12a8
12b2: e4 f5     mov   a,$f5
12b4: cb f4     mov   $f4,y
12b6: d7 04     mov   ($04)+y,a
12b8: fc        inc   y
12b9: d0 ed     bne   $12a8
12bb: ab 05     inc   $05
12bd: 2f e9     bra   $12a8
12bf: 7e f4     cmp   y,$f4
12c1: 10 e5     bpl   $12a8
12c3: e4 f6     mov   a,$f6
12c5: eb f7     mov   y,$f7
12c7: da 04     movw  $04,ya
12c9: e4 f4     mov   a,$f4
12cb: eb f5     mov   y,$f5
12cd: c4 f4     mov   $f4,a
12cf: dd        mov   a,y
12d0: 5d        mov   x,a
12d1: d0 d1     bne   $12a4
12d3: 8f 33 f1  mov   $f1,#$33
12d6: 6f        ret

12d7: e4 f5     mov   a,$f5
12d9: 68 cc     cmp   a,#$cc
12db: d0 fa     bne   $12d7
12dd: 64 f5     cmp   a,$f5
12df: d0 f6     bne   $12d7
12e1: c4 f5     mov   $f5,a
12e3: eb f5     mov   y,$f5
12e5: d0 fc     bne   $12e3
12e7: 7e f5     cmp   y,$f5
12e9: d0 f6     bne   $12e1
12eb: 2f 0a     bra   $12f7
12ed: 7e f5     cmp   y,$f5
12ef: 30 18     bmi   $1309
12f1: d0 fa     bne   $12ed
12f3: 7e f5     cmp   y,$f5
12f5: d0 f6     bne   $12ed
12f7: e4 f6     mov   a,$f6
12f9: d7 2e     mov   ($2e)+y,a
12fb: e4 f7     mov   a,$f7
12fd: cb f5     mov   $f5,y
12ff: fc        inc   y
1300: d7 2e     mov   ($2e)+y,a
1302: fc        inc   y
1303: d0 e8     bne   $12ed
1305: ab 2f     inc   $2f
1307: 2f e4     bra   $12ed
1309: 7e f5     cmp   y,$f5
130b: 10 e0     bpl   $12ed
130d: e4 f5     mov   a,$f5
130f: c4 f5     mov   $f5,a
1311: e4 f5     mov   a,$f5
1313: d0 fc     bne   $1311
1315: c4 f5     mov   $f5,a
1317: 6f        ret

1318: c4 0c     mov   $0c,a
131a: 8f 00 0d  mov   $0d,#$00
131d: 68 49     cmp   a,#$49
131f: 90 03     bcc   $1324
1321: 5f a0 13  jmp   $13a0

1324: 8f 73 04  mov   $04,#$73
1327: 8f 0f 05  mov   $05,#$0f
132a: 8d 03     mov   y,#$03
132c: cf        mul   ya
132d: 7a 04     addw  ya,$04
132f: da 04     movw  $04,ya
1331: 8d 00     mov   y,#$00
1333: f7 04     mov   a,($04)+y
1335: 9f        xcn   a
1336: 5c        lsr   a
1337: 28 07     and   a,#$07
1339: 5d        mov   x,a
133a: bc        inc   a
133b: c4 07     mov   $07,a
133d: f5 5e 14  mov   a,$145e+x
1340: c4 11     mov   $11,a
1342: f7 04     mov   a,($04)+y
1344: 28 1f     and   a,#$1f
1346: c4 06     mov   $06,a
1348: cd 0c     mov   x,#$0c
134a: 78 02 07  cmp   $07,#$02
134d: f0 36     beq   $1385
134f: b0 4b     bcs   $139c
1351: e4 0c     mov   a,$0c
1353: 68 01     cmp   a,#$01
1355: d0 14     bne   $136b
1357: e4 0d     mov   a,$0d
1359: 65 af 01  cmp   a,$01af
135c: d0 06     bne   $1364
135e: cd 0e     mov   x,#$0e
1360: 0b 11     asl   $11
1362: 2f 29     bra   $138d
1364: 65 ad 01  cmp   a,$01ad
1367: f0 24     beq   $138d
1369: 2f 0e     bra   $1379
136b: 64 de     cmp   a,$de
136d: d0 06     bne   $1375
136f: cd 0e     mov   x,#$0e
1371: 0b 11     asl   $11
1373: 2f 18     bra   $138d
1375: 64 dc     cmp   a,$dc
1377: f0 14     beq   $138d
1379: f5 92 01  mov   a,$0192+x
137c: 75 90 01  cmp   a,$0190+x
137f: b0 04     bcs   $1385
1381: cd 0e     mov   x,#$0e
1383: 0b 11     asl   $11
1385: e4 06     mov   a,$06
1387: 75 90 01  cmp   a,$0190+x
138a: b0 01     bcs   $138d
138c: 6f        ret

138d: fc        inc   y
138e: f7 04     mov   a,($04)+y
1390: c4 0a     mov   $0a,a
1392: fc        inc   y
1393: f7 04     mov   a,($04)+y
1395: c4 0b     mov   $0b,a
1397: 8f 01 08  mov   $08,#$01
139a: 2f 4a     bra   $13e6
139c: cd 00     mov   x,#$00
139e: 2f ed     bra   $138d
13a0: a8 49     sbc   a,#$49
13a2: fd        mov   y,a
13a3: f6 4e 10  mov   a,$104e+y
13a6: c4 25     mov   $25,a
13a8: 3f f4 1e  call  $1ef4
13ab: e4 0c     mov   a,$0c
13ad: 68 58     cmp   a,#$58
13af: 90 1a     bcc   $13cb
13b1: 68 5a     cmp   a,#$5a
13b3: 90 10     bcc   $13c5
13b5: 68 a6     cmp   a,#$a6
13b7: 90 06     bcc   $13bf
13b9: e8 05     mov   a,#$05
13bb: 8d 1f     mov   y,#$1f
13bd: 2f 10     bra   $13cf
13bf: e8 06     mov   a,#$06
13c1: 8d 3f     mov   y,#$3f
13c3: 2f 0a     bra   $13cf
13c5: e8 07     mov   a,#$07
13c7: 8d 7f     mov   y,#$7f
13c9: 2f 04     bra   $13cf
13cb: e8 08     mov   a,#$08
13cd: 8d ff     mov   y,#$ff
13cf: c4 07     mov   $07,a
13d1: cb 11     mov   $11,y
13d3: 8f 1e 06  mov   $06,#$1e
13d6: 8f 00 0a  mov   $0a,#$00
13d9: 8f 39 0b  mov   $0b,#$39          ; set header address $3900 to $0a/b
13dc: cd 00     mov   x,#$00
13de: d8 1c     mov   $1c,x
13e0: d8 08     mov   $08,x
13e2: d8 2c     mov   $2c,x
13e4: d8 2d     mov   $2d,x
13e6: 8d 00     mov   y,#$00
; repeat for ($07) times
13e8: f7 0a     mov   a,($0a)+y
13ea: d4 30     mov   $30+x,a
13ec: fc        inc   y
13ed: f7 0a     mov   a,($0a)+y
13ef: d4 31     mov   $31+x,a           ; set vcmd ptr to $30/1+x
13f1: e8 40     mov   a,#$40
13f3: d4 41     mov   $41+x,a
13f5: e8 c0     mov   a,#$c0
13f7: d4 40     mov   $40+x,a
13f9: e8 00     mov   a,#$00
13fb: d4 50     mov   $50+x,a
13fd: d4 51     mov   $51+x,a
13ff: d5 10 01  mov   $0110+x,a
1402: d5 11 01  mov   $0111+x,a
1405: d5 20 01  mov   $0120+x,a
1408: d5 21 01  mov   $0121+x,a
140b: d5 30 01  mov   $0130+x,a
140e: d5 31 01  mov   $0131+x,a
1411: d5 40 01  mov   $0140+x,a
1414: d5 41 01  mov   $0141+x,a
1417: d5 80 02  mov   $0280+x,a
141a: d5 81 02  mov   $0281+x,a
141d: d5 21 02  mov   $0221+x,a
1420: d4 90     mov   $90+x,a
1422: d5 20 02  mov   $0220+x,a
1425: d5 d1 01  mov   $01d1+x,a
1428: d5 31 02  mov   $0231+x,a
142b: bc        inc   a
142c: d4 60     mov   $60+x,a
142e: e4 0c     mov   a,$0c
1430: d4 d0     mov   $d0+x,a
1432: e4 0d     mov   a,$0d
1434: d5 a1 01  mov   $01a1+x,a
1437: e4 08     mov   a,$08
1439: d5 91 01  mov   $0191+x,a
143c: e4 06     mov   a,$06
143e: d5 90 01  mov   $0190+x,a
1441: e4 09     mov   a,$09
1443: d5 a0 01  mov   $01a0+x,a
1446: 6e 07 0f  dbnz  $07,$1458
1449: e4 11     mov   a,$11
144b: 0e 10 00  tset1 $0010
144e: 4e 0e 00  tclr1 $000e
1451: 4e 0f 00  tclr1 $000f
1454: 0e 1b 00  tset1 $001b
1457: 6f        ret
; repeat continue
1458: 3d        inc   x
1459: 3d        inc   x
145a: fc        inc   y
145b: 5f e8 13  jmp   $13e8

145e: db $40,$c0,$70,$f0,$1f,$3f,$7f,$ff

1466: e4 fd     mov   a,$fd
1468: f0 fc     beq   $1466
146a: 03 24 16  bbs0  $24,$1483
146d: e4 19     mov   a,$19
146f: d0 12     bne   $1483
1471: e4 f4     mov   a,$f4
1473: 64 f4     cmp   a,$f4
1475: d0 fa     bne   $1471
1477: 68 00     cmp   a,#$00
1479: f0 08     beq   $1483
147b: c4 f4     mov   $f4,a
147d: 8f 11 f1  mov   $f1,#$11
1480: 3f af 11  call  $11af
1483: f3 1f 07  bbc7  $1f,$148d
1486: f2 1f     clr7  $1f
1488: e4 2b     mov   a,$2b
148a: 3f d6 11  call  $11d6
148d: 8f 5c f2  mov   $f2,#$5c
1490: fa 10 f3  mov   ($f3),($10)       ; set KOF
1493: 8d ff     mov   y,#$ff
1495: e4 26     mov   a,$26
1497: d0 34     bne   $14cd
1499: e5 ad 01  mov   a,$01ad
149c: f0 04     beq   $14a2
149e: 68 1e     cmp   a,#$1e
14a0: 90 2b     bcc   $14cd
14a2: e5 af 01  mov   a,$01af
14a5: f0 04     beq   $14ab
14a7: 68 1e     cmp   a,#$1e
14a9: 90 22     bcc   $14cd
14ab: e4 27     mov   a,$27
14ad: f0 0a     beq   $14b9
14af: 65 ad 01  cmp   a,$01ad
14b2: f0 07     beq   $14bb
14b4: 65 af 01  cmp   a,$01af
14b7: f0 02     beq   $14bb
14b9: f2 2a     clr7  $2a
14bb: e4 28     mov   a,$28
14bd: f0 0a     beq   $14c9
14bf: 65 ad 01  cmp   a,$01ad
14c2: f0 07     beq   $14cb
14c4: 65 af 01  cmp   a,$01af
14c7: f0 02     beq   $14cb
14c9: d2 2a     clr6  $2a
14cb: eb 2a     mov   y,$2a
14cd: cb f7     mov   $f7,y
14cf: e8 10     mov   a,#$10
14d1: 9c        dec   a
14d2: d0 fd     bne   $14d1
14d4: 8f 2d f2  mov   $f2,#$2d
14d7: c4 f3     mov   $f3,a             ; set PMON
14d9: 8f 3d f2  mov   $f2,#$3d
14dc: c4 f3     mov   $f3,a             ; set NON
14de: e4 19     mov   a,$19
14e0: f0 04     beq   $14e6
14e2: 8b 19     dec   $19
14e4: 2f 20     bra   $1506
14e6: 8f 6c f2  mov   $f2,#$6c
14e9: fa 13 f3  mov   ($f3),($13)       ; set FLG
14ec: e4 1a     mov   a,$1a
14ee: f0 16     beq   $1506
14f0: 8b 1a     dec   $1a
14f2: d0 12     bne   $1506
14f4: 8f 2c f2  mov   $f2,#$2c
14f7: fa 15 f3  mov   ($f3),($15)       ; set EVOL(L)
14fa: 8f 3c f2  mov   $f2,#$3c
14fd: fa 16 f3  mov   ($f3),($16)       ; set EVOL(R)
1500: 8f 0d f2  mov   $f2,#$0d
1503: fa 17 f3  mov   ($f3),($17)       ; set EFB
1506: e8 00     mov   a,#$00
1508: 8f 5c f2  mov   $f2,#$5c
150b: c4 f3     mov   $f3,a             ; set KOF
150d: c4 10     mov   $10,a
150f: 8f 4c f2  mov   $f2,#$4c
1512: fa 0e f3  mov   ($f3),($0e)       ; set KOL
1515: c4 0e     mov   $0e,a
1517: 33 1f 07  bbc1  $1f,$1521
151a: cd 0c     mov   x,#$0c
151c: 8f 40 11  mov   $11,#$40
151f: 2f 3f     bra   $1560
1521: e4 2d     mov   a,$2d
1523: f0 1b     beq   $1540
1525: 68 ff     cmp   a,#$ff
1527: d0 09     bne   $1532
1529: 8b 2c     dec   $2c
152b: d0 13     bne   $1540
152d: 8f 00 2d  mov   $2d,#$00
1530: 2f 0e     bra   $1540
1532: 8b 2d     dec   $2d
1534: d0 0a     bne   $1540
1536: ab 2c     inc   $2c
1538: 78 28 2c  cmp   $2c,#$28
153b: b0 03     bcs   $1540
153d: 8f 08 2d  mov   $2d,#$08
1540: ab 24     inc   $24
1542: e4 1c     mov   a,$1c
1544: f0 15     beq   $155b
1546: 8b 1d     dec   $1d
1548: d0 11     bne   $155b
154a: fa 1e 1d  mov   ($1d),($1e)
154d: 38 7f 1d  and   $1d,#$7f
1550: 8b 1c     dec   $1c
1552: f0 04     beq   $1558
1554: 8b 1c     dec   $1c
1556: d0 03     bne   $155b
1558: 3f 22 11  call  $1122
155b: 8f 01 11  mov   $11,#$01
155e: cd 00     mov   x,#$00
1560: f4 d0     mov   a,$d0+x
1562: f0 5b     beq   $15bf
1564: e4 11     mov   a,$11
1566: 24 1b     and   a,$1b
1568: d0 55     bne   $15bf
156a: f5 91 01  mov   a,$0191+x
156d: 5c        lsr   a
156e: b0 08     bcs   $1578
1570: 7d        mov   a,x
1571: 5c        lsr   a
1572: 44 24     eor   a,$24
1574: 28 01     and   a,#$01
1576: d0 47     bne   $15bf
1578: d8 22     mov   $22,x
157a: 7d        mov   a,x
157b: 1c        asl   a
157c: 1c        asl   a
157d: 1c        asl   a
157e: c4 23     mov   $23,a
1580: f5 91 01  mov   a,$0191+x
1583: c4 20     mov   $20,a
1585: f4 40     mov   a,$40+x
1587: 03 20 0c  bbs0  $20,$1596
158a: 60        clrc
158b: 84 2c     adc   a,$2c
158d: 90 07     bcc   $1596
158f: 60        clrc
1590: 94 41     adc   a,$41+x
1592: d4 40     mov   $40+x,a
1594: 2f 07     bra   $159d
1596: 60        clrc
1597: 94 41     adc   a,$41+x
1599: d4 40     mov   $40+x,a
159b: 90 1a     bcc   $15b7
159d: 9b 60     dec   $60+x             ; decrease wait counter (tick)
159f: f0 05     beq   $15a6
15a1: 3f 3d 17  call  $173d
15a4: 2f 14     bra   $15ba
15a6: 3f e2 18  call  $18e2
15a9: a3 20 07  bbs5  $20,$15b3
15ac: e2 21     set7  $21
15ae: 3f fa 17  call  $17fa
15b1: 2f 07     bra   $15ba
15b3: b2 20     clr5  $20
15b5: 2f 03     bra   $15ba
15b7: 3f f1 16  call  $16f1
15ba: e4 20     mov   a,$20
15bc: d5 91 01  mov   $0191+x,a
15bf: e4 26     mov   a,$26
15c1: f0 20     beq   $15e3
15c3: e4 f5     mov   a,$f5
15c5: 68 cc     cmp   a,#$cc
15c7: d0 1a     bne   $15e3
15c9: 64 f5     cmp   a,$f5
15cb: d0 16     bne   $15e3
15cd: 4d        push  x
15ce: e3 26 06  bbs7  $26,$15d7
15d1: 3f 74 16  call  $1674
15d4: ce        pop   x
15d5: 2f 1d     bra   $15f4
15d7: fa 11 12  mov   ($12),($11)
15da: 3f 27 16  call  $1627
15dd: fa 12 11  mov   ($11),($12)
15e0: ce        pop   x
15e1: 2f 11     bra   $15f4
15e3: e4 f5     mov   a,$f5
15e5: 68 f0     cmp   a,#$f0
15e7: 90 0b     bcc   $15f4
15e9: 64 f5     cmp   a,$f5
15eb: d0 07     bne   $15f4
15ed: c4 f5     mov   $f5,a
15ef: 4d        push  x
15f0: 3f 01 12  call  $1201
15f3: ce        pop   x
15f4: 3d        inc   x
15f5: 3d        inc   x
15f6: 0b 11     asl   $11
15f8: f0 03     beq   $15fd
15fa: 5f 60 15  jmp   $1560

15fd: 8f 00 1b  mov   $1b,#$00
1600: e4 26     mov   a,$26
1602: d0 03     bne   $1607
1604: 5f 66 14  jmp   $1466

1607: e4 f5     mov   a,$f5
1609: 68 cc     cmp   a,#$cc
160b: f0 07     beq   $1614
160d: e4 fd     mov   a,$fd
160f: f0 f6     beq   $1607
1611: 5f 6a 14  jmp   $146a

1614: 64 f5     cmp   a,$f5
1616: d0 ef     bne   $1607
1618: e3 26 06  bbs7  $26,$1621
161b: 3f 74 16  call  $1674
161e: 5f 66 14  jmp   $1466

1621: 3f 27 16  call  $1627
1624: 5f 66 14  jmp   $1466

1627: c4 f5     mov   $f5,a
1629: eb f5     mov   y,$f5
162b: d0 fc     bne   $1629
162d: 7e f5     cmp   y,$f5
162f: d0 f6     bne   $1627
1631: 2f 0a     bra   $163d
1633: 7e f5     cmp   y,$f5
1635: 30 25     bmi   $165c
1637: d0 fa     bne   $1633
1639: 7e f5     cmp   y,$f5
163b: d0 f6     bne   $1633
163d: e4 f6     mov   a,$f6
163f: 64 f6     cmp   a,$f6
1641: d0 fa     bne   $163d
1643: d7 2e     mov   ($2e)+y,a
1645: e4 f7     mov   a,$f7
1647: 64 f7     cmp   a,$f7
1649: d0 fa     bne   $1645
164b: cb f5     mov   $f5,y
164d: fc        inc   y
164e: d7 2e     mov   ($2e)+y,a
1650: fc        inc   y
1651: d0 e0     bne   $1633
1653: ab 2f     inc   $2f
1655: e4 f5     mov   a,$f5
1657: d0 fc     bne   $1655
1659: c4 f5     mov   $f5,a
165b: 6f        ret

165c: 7e f5     cmp   y,$f5
165e: 10 d3     bpl   $1633
1660: e4 f5     mov   a,$f5
1662: c4 f5     mov   $f5,a
1664: e4 f5     mov   a,$f5
1666: d0 fc     bne   $1664
1668: c4 f5     mov   $f5,a
166a: c4 26     mov   $26,a
166c: 8f 00 f7  mov   $f7,#$00
166f: e4 2b     mov   a,$2b
1671: 5f 18 13  jmp   $1318

1674: c4 f5     mov   $f5,a
1676: eb f4     mov   y,$f4
1678: ad 02     cmp   y,#$02
167a: d0 fa     bne   $1676
167c: 7e f4     cmp   y,$f4
167e: d0 f4     bne   $1674
1680: 8f 00 f5  mov   $f5,#$00
1683: f3 29 08  bbc7  $29,$168e
1686: 2f 3e     bra   $16c6
1688: 7e f4     cmp   y,$f4
168a: 30 49     bmi   $16d5
168c: d0 fa     bne   $1688
168e: e4 f5     mov   a,$f5
1690: d7 2e     mov   ($2e)+y,a
1692: fc        inc   y
1693: e4 f6     mov   a,$f6
1695: d7 2e     mov   ($2e)+y,a
1697: e4 f7     mov   a,$f7
1699: dc        dec   y
169a: cb f4     mov   $f4,y
169c: fc        inc   y
169d: fc        inc   y
169e: d7 2e     mov   ($2e)+y,a
16a0: fc        inc   y
16a1: 10 e5     bpl   $1688
16a3: 60        clrc
16a4: 98 7e 2e  adc   $2e,#$7e
16a7: 98 00 2f  adc   $2f,#$00
16aa: e4 f4     mov   a,$f4
16ac: d0 fc     bne   $16aa
16ae: c4 f4     mov   $f4,a
16b0: e4 29     mov   a,$29
16b2: 30 0b     bmi   $16bf
16b4: f0 09     beq   $16bf
16b6: 8b 29     dec   $29
16b8: d0 05     bne   $16bf
16ba: 23 1f 02  bbs1  $1f,$16bf
16bd: e2 1f     set7  $1f
16bf: 6f        ret

16c0: 7e f4     cmp   y,$f4
16c2: 30 0b     bmi   $16cf
16c4: d0 fa     bne   $16c0
16c6: cb f4     mov   $f4,y
16c8: fc        inc   y
16c9: fc        inc   y
16ca: fc        inc   y
16cb: 10 f3     bpl   $16c0
16cd: 2f d4     bra   $16a3
16cf: 7e f4     cmp   y,$f4
16d1: 10 ed     bpl   $16c0
16d3: 2f 04     bra   $16d9
16d5: 7e f4     cmp   y,$f4
16d7: 10 af     bpl   $1688
16d9: e4 f4     mov   a,$f4
16db: c4 f4     mov   $f4,a
16dd: e4 f4     mov   a,$f4
16df: d0 fc     bne   $16dd
16e1: c4 f4     mov   $f4,a
16e3: c4 26     mov   $26,a
16e5: e4 29     mov   a,$29
16e7: 30 07     bmi   $16f0
16e9: f0 05     beq   $16f0
16eb: 23 1f 02  bbs1  $1f,$16f0
16ee: e2 1f     set7  $1f
16f0: 6f        ret

16f1: 12 21     clr0  $21
16f3: f4 80     mov   a,$80+x
16f5: f0 1d     beq   $1714
16f7: 93 20 05  bbc4  $20,$16ff
16fa: 3f 75 20  call  $2075
16fd: 2f 13     bra   $1712
16ff: f4 81     mov   a,$81+x
1701: d0 11     bne   $1714
1703: f4 e0     mov   a,$e0+x
1705: 60        clrc
1706: 95 b0 02  adc   a,$02b0+x
1709: d4 e0     mov   $e0+x,a
170b: f4 e1     mov   a,$e1+x
170d: 95 b1 02  adc   a,$02b1+x
1710: d4 e1     mov   $e1+x,a
1712: 02 21     set0  $21
1714: fb e1     mov   y,$e1+x
1716: f4 e0     mov   a,$e0+x
1718: da 0a     movw  $0a,ya
171a: f5 20 02  mov   a,$0220+x
171d: f0 07     beq   $1726
171f: f4 a0     mov   a,$a0+x
1721: d0 03     bne   $1726
1723: 3f bb 20  call  $20bb
1726: f5 d1 01  mov   a,$01d1+x
1729: f0 0a     beq   $1735
172b: 60        clrc
172c: 94 d1     adc   a,$d1+x
172e: d4 d1     mov   $d1+x,a
1730: 90 03     bcc   $1735
1732: 5f ff 20  jmp   $20ff

1735: 13 21 b8  bbc0  $21,$16f0
1738: ba 0a     movw  ya,$0a
173a: 5f 7f 1a  jmp   $1a7f

173d: 8f 00 21  mov   $21,#$00
1740: f5 31 02  mov   a,$0231+x
1743: 68 7f     cmp   a,#$7f
1745: b0 2f     bcs   $1776
1747: fd        mov   y,a
1748: f4 60     mov   a,$60+x
174a: 68 01     cmp   a,#$01
174c: f0 25     beq   $1773
174e: ad 7d     cmp   y,#$7d
1750: b0 24     bcs   $1776
1752: f4 61     mov   a,$61+x
1754: f0 20     beq   $1776
1756: 9b 61     dec   $61+x
1758: d0 1c     bne   $1776
175a: f5 c1 01  mov   a,$01c1+x
175d: 10 14     bpl   $1773
175f: e8 05     mov   a,#$05
1761: 04 23     or    a,$23
1763: c4 f2     mov   $f2,a
1765: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
1768: bc        inc   a
1769: bc        inc   a
176a: c4 f2     mov   $f2,a
176c: f5 c1 01  mov   a,$01c1+x
176f: c4 f3     mov   $f3,a             ; set GAIN
1771: 2f 03     bra   $1776
1773: 09 11 10  or    ($10),($11)
1776: f4 80     mov   a,$80+x
1778: f0 31     beq   $17ab
177a: 93 20 05  bbc4  $20,$1782
177d: 3f 75 20  call  $2075
1780: 2f 27     bra   $17a9
1782: f4 81     mov   a,$81+x
1784: f0 04     beq   $178a
1786: 9b 81     dec   $81+x
1788: 2f 21     bra   $17ab
178a: 9b 80     dec   $80+x
178c: d0 0c     bne   $179a
178e: f5 c1 02  mov   a,$02c1+x
1791: d4 e1     mov   $e1+x,a
1793: f5 c0 02  mov   a,$02c0+x
1796: d4 e0     mov   $e0+x,a
1798: 2f 0f     bra   $17a9
179a: f4 e0     mov   a,$e0+x
179c: 60        clrc
179d: 95 b0 02  adc   a,$02b0+x
17a0: d4 e0     mov   $e0+x,a
17a2: f4 e1     mov   a,$e1+x
17a4: 95 b1 02  adc   a,$02b1+x
17a7: d4 e1     mov   $e1+x,a
17a9: 02 21     set0  $21
17ab: fb e1     mov   y,$e1+x
17ad: f4 e0     mov   a,$e0+x
17af: da 0a     movw  $0a,ya
17b1: f5 20 02  mov   a,$0220+x
17b4: f0 2b     beq   $17e1
17b6: f4 a0     mov   a,$a0+x
17b8: f0 04     beq   $17be
17ba: 9b a0     dec   $a0+x
17bc: 2f 23     bra   $17e1
17be: f4 a1     mov   a,$a1+x
17c0: f0 1c     beq   $17de
17c2: 9b a1     dec   $a1+x
17c4: d0 05     bne   $17cb
17c6: f5 20 02  mov   a,$0220+x
17c9: 2f 10     bra   $17db
17cb: f5 d0 02  mov   a,$02d0+x
17ce: 60        clrc
17cf: 95 e0 02  adc   a,$02e0+x
17d2: d5 d0 02  mov   $02d0+x,a
17d5: f5 d1 02  mov   a,$02d1+x
17d8: 95 e1 02  adc   a,$02e1+x
17db: d5 d1 02  mov   $02d1+x,a
17de: 3f bb 20  call  $20bb
17e1: f5 d1 01  mov   a,$01d1+x
17e4: f0 0c     beq   $17f2
17e6: 60        clrc
17e7: 94 d1     adc   a,$d1+x
17e9: d4 d1     mov   $d1+x,a
17eb: 90 05     bcc   $17f2
17ed: 3f ff 20  call  $20ff
17f0: 2f 08     bra   $17fa
17f2: 13 21 05  bbc0  $21,$17fa
17f5: ba 0a     movw  ya,$0a
17f7: 3f 7f 1a  call  $1a7f
17fa: f4 70     mov   a,$70+x
17fc: f0 1e     beq   $181c
17fe: e2 21     set7  $21
1800: c4 04     mov   $04,a
1802: f5 01 02  mov   a,$0201+x
1805: c4 05     mov   $05,a
1807: f5 a1 02  mov   a,$02a1+x         ; panpot
180a: fd        mov   y,a
180b: f5 a0 02  mov   a,$02a0+x
180e: 3f 46 20  call  $2046
1811: d5 a0 02  mov   $02a0+x,a
1814: dd        mov   a,y
1815: d5 a1 02  mov   $02a1+x,a         ; panpot
1818: e4 04     mov   a,$04
181a: d4 70     mov   $70+x,a
181c: f5 c0 01  mov   a,$01c0+x         ; tempo fade speed
181f: f0 19     beq   $183a
1821: c4 04     mov   $04,a
1823: f5 50 02  mov   a,$0250+x
1826: c4 05     mov   $05,a
1828: fb 41     mov   y,$41+x
182a: f5 51 02  mov   a,$0251+x
182d: 3f 46 20  call  $2046
1830: d5 51 02  mov   $0251+x,a
1833: db 41     mov   $41+x,y
1835: e4 04     mov   a,$04
1837: d5 c0 01  mov   $01c0+x,a
183a: f4 71     mov   a,$71+x
183c: f0 1e     beq   $185c
183e: e2 21     set7  $21
1840: c4 04     mov   $04,a
1842: f5 00 02  mov   a,$0200+x
1845: c4 05     mov   $05,a
1847: f5 91 02  mov   a,$0291+x
184a: fd        mov   y,a
184b: f5 90 02  mov   a,$0290+x
184e: 3f 46 20  call  $2046
1851: d5 90 02  mov   $0290+x,a
1854: dd        mov   a,y
1855: d5 91 02  mov   $0291+x,a
1858: e4 04     mov   a,$04
185a: d4 71     mov   $71+x,a
185c: e3 21 05  bbs7  $21,$1864
185f: e4 1c     mov   a,$1c
1861: d0 01     bne   $1864
1863: 6f        ret

1864: f5 b1 01  mov   a,$01b1+x
1867: f0 fa     beq   $1863
1869: f5 10 01  mov   a,$0110+x
186c: c4 08     mov   $08,a
186e: f5 11 01  mov   a,$0111+x
1871: c4 09     mov   $09,a
1873: f5 20 01  mov   a,$0120+x
1876: c4 0a     mov   $0a,a
1878: f5 21 01  mov   a,$0121+x
187b: c4 0b     mov   $0b,a
187d: f5 b1 01  mov   a,$01b1+x
1880: 8d 00     mov   y,#$00
1882: 7a 08     addw  ya,$08
1884: 7a 0a     addw  ya,$0a
1886: 30 21     bmi   $18a9
1888: ad 00     cmp   y,#$00
188a: d0 04     bne   $1890
188c: 08 00     or    a,#$00
188e: 10 02     bpl   $1892
1890: e8 7f     mov   a,#$7f
1892: fd        mov   y,a
1893: f5 91 02  mov   a,$0291+x
1896: cf        mul   ya
1897: e4 1c     mov   a,$1c
1899: f0 07     beq   $18a2
189b: e3 1e 03  bbs7  $1e,$18a1
189e: 03 20 01  bbs0  $20,$18a2
18a1: cf        mul   ya
18a2: dd        mov   a,y
18a3: 80        setc
18a4: b5 b0 01  sbc   a,$01b0+x         ; instrument-specific volume
18a7: b0 02     bcs   $18ab
18a9: e8 00     mov   a,#$00
18ab: fd        mov   y,a
18ac: f6 1d 22  mov   a,$221d+y
18af: c4 05     mov   $05,a
18b1: e8 14     mov   a,#$14
18b3: 03 1f 09  bbs0  $1f,$18bf
18b6: f5 a1 02  mov   a,$02a1+x         ; panpot
18b9: 68 29     cmp   a,#$29
18bb: 90 02     bcc   $18bf
18bd: e8 28     mov   a,#$28
18bf: c4 04     mov   $04,a
18c1: fd        mov   y,a
18c2: f6 bd 22  mov   a,$22bd+y         ; pan table
18c5: eb 05     mov   y,$05
18c7: cf        mul   ya
18c8: e8 00     mov   a,#$00
18ca: 04 23     or    a,$23
18cc: c4 f2     mov   $f2,a
18ce: cb f3     mov   $f3,y             ; set VOL(L)
18d0: bc        inc   a
18d1: c4 f2     mov   $f2,a
18d3: e8 28     mov   a,#$28
18d5: 80        setc
18d6: a4 04     sbc   a,$04
18d8: fd        mov   y,a
18d9: f6 bd 22  mov   a,$22bd+y
18dc: eb 05     mov   y,$05
18de: cf        mul   ya
18df: cb f3     mov   $f3,y             ; set VOL(R)
18e1: 6f        ret

18e2: 3f 56 19  call  $1956             ; read a byte
18e5: c4 08     mov   $08,a
18e7: 28 7f     and   a,#$7f
18e9: 68 60     cmp   a,#$60
18eb: 90 72     bcc   $195f             ; 00-5f, 80-df
18ed: e4 08     mov   a,$08
18ef: 80        setc
18f0: a8 e0     sbc   a,#$e0
18f2: b0 53     bcs   $1947             ; e0-ff - vcmd
18f4: 68 82     cmp   a,#$82
18f6: b0 09     bcs   $1901             ; 62-7f
; vcmd 60,61
18f8: 22 20     set1  $20               ; rhythm channel
18fa: 5c        lsr   a
18fb: 90 e5     bcc   $18e2
18fd: 32 20     clr1  $20
18ff: 2f e1     bra   $18e2
; (62-7f)
1901: d0 03     bne   $1906             ; 63-7f
1903: 5f ab 1f  jmp   $1fab

; (63-7f)
1906: 68 85     cmp   a,#$85
1908: b0 19     bcs   $1923
190a: 68 83     cmp   a,#$83
190c: d0 05     bne   $1913
; vcmd 63
190e: 09 11 14  or    ($14),($11)
1911: 2f 08     bra   $191b
; vcmd 64
1913: e8 ff     mov   a,#$ff
1915: 44 11     eor   a,$11
1917: 24 14     and   a,$14
1919: c4 14     mov   $14,a
191b: 8f 4d f2  mov   $f2,#$4d
191e: fa 14 f3  mov   ($f3),($14)       ; set EON
1921: 2f bf     bra   $18e2
; (65-7f)
1923: 68 90     cmp   a,#$90
1925: 90 16     bcc   $193d
; vcmd 70-7f - instant tuning
1927: 28 0f     and   a,#$0f            ; tuning amount: (-8..7) * 4 / 256 semitones
1929: 1c        asl   a
192a: 1c        asl   a
192b: 8d 00     mov   y,#$00
192d: 68 20     cmp   a,#$20
192f: 90 03     bcc   $1934
1931: 08 e0     or    a,#$e0            ; neg ya
1933: dc        dec   y
1934: d5 80 02  mov   $0280+x,a
1937: dd        mov   a,y
1938: d5 81 02  mov   $0281+x,a
193b: 2f a5     bra   $18e2
; vcmd 65-6f
193d: a2 20     set5  $20
193f: 3f 6c 11  call  $116c
1942: cd 00     mov   x,#$00
1944: d8 11     mov   $11,x
1946: 6f        ret

; dispatch vcmd (e0-ff)
1947: 1c        asl   a
1948: fd        mov   y,a
1949: f6 bc 1a  mov   a,$1abc+y
194c: 2d        push  a
194d: f6 bb 1a  mov   a,$1abb+y
1950: 2d        push  a                 ; push vcmd func address, as a return address
1951: f6 fb 1a  mov   a,$1afb+y
1954: f0 08     beq   $195e
; read next byte (vcmd/arg)
1956: e7 30     mov   a,($30+x)
1958: bb 30     inc   $30+x
195a: d0 02     bne   $195e
195c: bb 31     inc   $31+x
195e: 6f        ret

; vcmd 00-5f - note
; vcmd 80-df - note without length
; $08 = vcmd (note number + flag bit for length)
195f: 33 20 03  bbc1  $20,$1965
1962: 09 11 10  or    ($10),($11)
1965: f3 08 05  bbc7  $08,$196d         ; if vcmd >= $80
1968: f5 30 02  mov   a,$0230+x         ;   reuse last length, skip arg1
196b: 2f 06     bra   $1973
196d: 3f 56 19  call  $1956             ; get arg1 (length in ticks)
1970: d5 30 02  mov   $0230+x,a         ; save note length
1973: d4 60     mov   $60+x,a
1975: f5 31 02  mov   a,$0231+x
1978: 68 7f     cmp   a,#$7f
197a: f0 06     beq   $1982
197c: 09 11 0e  or    ($0e),($11)
197f: 09 11 0f  or    ($0f),($11)
1982: 3f 56 19  call  $1956             ; get arg2 (00-7f: note duration, 80-ff: note volume)
1985: 08 00     or    a,#$00
1987: 30 06     bmi   $198f
1989: d5 31 02  mov   $0231+x,a         ; save note duration
198c: 3f 56 19  call  $1956             ; get arg3 (note volume) (only available if arg2 < 0x80)
198f: 28 7f     and   a,#$7f
1991: d5 b1 01  mov   $01b1+x,a         ; save note volume
1994: d0 08     bne   $199e
1996: e4 11     mov   a,$11
1998: 4e 0e 00  tclr1 $000e
199b: 4e 0f 00  tclr1 $000f
199e: 33 20 0a  bbc1  $20,$19ab         ; skip instrument loading for rhythm channel
; rhythm channel: load sample
19a1: e4 08     mov   a,$08
19a3: 28 7f     and   a,#$7f
19a5: 3f e8 1b  call  $1be8             ; load instrument
19a8: 8f 3c 08  mov   $08,#$3c          ; note number = 60
; calc actual note length
19ab: f5 30 02  mov   a,$0230+x         ; note length
19ae: fd        mov   y,a
19af: f5 31 02  mov   a,$0231+x         ; note duration
19b2: 68 7f     cmp   a,#$7f
19b4: f0 06     beq   $19bc             ; duration $7f means full length
19b6: 1c        asl   a
19b7: cf        mul   ya                ; actual length = (length * (duration << 1)) >> 8
19b8: dd        mov   a,y
19b9: d0 01     bne   $19bc
19bb: fc        inc   y                 ; actual length = 1 if it was zero
19bc: db 61     mov   $61+x,y           ; save actual note length
19be: fb e1     mov   y,$e1+x
19c0: f4 e0     mov   a,$e0+x
19c2: da 0c     movw  $0c,ya
19c4: f5 31 01  mov   a,$0131+x
19c7: c4 05     mov   $05,a
19c9: f5 30 01  mov   a,$0130+x
19cc: c4 04     mov   $04,a             ; $04/5 = repeat-triggered tuning #1
19ce: f5 41 01  mov   a,$0141+x
19d1: c4 07     mov   $07,a
19d3: f5 40 01  mov   a,$0140+x
19d6: c4 06     mov   $06,a             ; $06/7 = repeat-triggered tuning #2
19d8: f5 81 02  mov   a,$0281+x
19db: c4 0b     mov   $0b,a
19dd: f5 80 02  mov   a,$0280+x
19e0: c4 0a     mov   $0a,a             ; $0a/b = tuning
19e2: e4 08     mov   a,$08             ; note number
19e4: 60        clrc
19e5: 95 21 02  adc   a,$0221+x         ; per-voice transpose
19e8: fd        mov   y,a
19e9: e8 00     mov   a,#$00
19eb: 7a 04     addw  ya,$04            ; add repeat-triggered tuning #1
19ed: 7a 06     addw  ya,$06            ; add repeat-triggered tuning #2
19ef: 7a 0a     addw  ya,$0a            ; add tuning
19f1: d4 e0     mov   $e0+x,a           ; save intermediate note number (fraction)
19f3: dd        mov   a,y
19f4: 28 7f     and   a,#$7f            ; note number &= 0x7f
19f6: d4 e1     mov   $e1+x,a           ; save intermediate note number (integer)
19f8: f5 20 02  mov   a,$0220+x
19fb: f0 26     beq   $1a23
19fd: e8 00     mov   a,#$00
19ff: d4 b0     mov   $b0+x,a
1a01: d4 c1     mov   $c1+x,a
1a03: f5 10 02  mov   a,$0210+x
1a06: d4 a0     mov   $a0+x,a
1a08: f5 11 02  mov   a,$0211+x
1a0b: d4 a1     mov   $a1+x,a
1a0d: f0 0b     beq   $1a1a
1a0f: f5 e0 02  mov   a,$02e0+x
1a12: d5 d0 02  mov   $02d0+x,a
1a15: f5 e1 02  mov   a,$02e1+x
1a18: 2f 06     bra   $1a20
1a1a: d5 d0 02  mov   $02d0+x,a
1a1d: f5 20 02  mov   a,$0220+x
1a20: d5 d1 02  mov   $02d1+x,a
1a23: f5 c1 01  mov   a,$01c1+x
1a26: 10 18     bpl   $1a40
1a28: e8 05     mov   a,#$05
1a2a: 04 23     or    a,$23
1a2c: c4 f2     mov   $f2,a
1a2e: f5 70 02  mov   a,$0270+x
1a31: c4 f3     mov   $f3,a             ; set ADSR(1)
1a33: 30 0b     bmi   $1a40
1a35: e8 07     mov   a,#$07
1a37: 04 23     or    a,$23
1a39: c4 f2     mov   $f2,a
1a3b: f5 71 02  mov   a,$0271+x
1a3e: c4 f3     mov   $f3,a             ; set GAIN
1a40: f4 90     mov   a,$90+x
1a42: d4 80     mov   $80+x,a
1a44: f0 2c     beq   $1a72
1a46: 83 20 17  bbs4  $20,$1a60
1a49: f4 91     mov   a,$91+x
1a4b: d4 81     mov   $81+x,a
1a4d: f4 e0     mov   a,$e0+x
1a4f: d5 c0 02  mov   $02c0+x,a
1a52: f4 e1     mov   a,$e1+x
1a54: d5 c1 02  mov   $02c1+x,a
1a57: 80        setc
1a58: b5 60 02  sbc   a,$0260+x
1a5b: d4 e1     mov   $e1+x,a
1a5d: fd        mov   y,a
1a5e: 2f 1d     bra   $1a7d
1a60: f4 e1     mov   a,$e1+x
1a62: d5 c1 02  mov   $02c1+x,a
1a65: f4 e0     mov   a,$e0+x
1a67: d5 c0 02  mov   $02c0+x,a
1a6a: ba 0c     movw  ya,$0c
1a6c: db e1     mov   $e1+x,y
1a6e: d4 e0     mov   $e0+x,a
1a70: 2f 0d     bra   $1a7f
; if the next is vcmd f3, handle it here somehow
1a72: e7 30     mov   a,($30+x)
1a74: 68 f3     cmp   a,#$f3
1a76: d0 03     bne   $1a7b
1a78: 3f 6a 1b  call  $1b6a             ; dispatch vcmd f3
;
1a7b: fb e1     mov   y,$e1+x
1a7d: f4 e0     mov   a,$e0+x
1a7f: da 04     movw  $04,ya
1a81: f5 40 02  mov   a,$0240+x
1a84: fd        mov   y,a
1a85: f5 41 02  mov   a,$0241+x
1a88: 7a 04     addw  ya,$04            ; add per-instrument tuning
1a8a: c4 04     mov   $04,a
1a8c: dd        mov   a,y
1a8d: 1c        asl   a                 ; ?
1a8e: fd        mov   y,a
1a8f: f6 00 03  mov   a,$0300+y         ; pitch table
1a92: c4 06     mov   $06,a
1a94: f6 01 03  mov   a,$0301+y
1a97: c4 07     mov   $07,a
1a99: f6 1e 21  mov   a,$211e+y         ; pitch scale (multiplier)
1a9c: 2d        push  a
1a9d: f6 1d 21  mov   a,$211d+y         ; pitch scale (fraction)
1aa0: eb 04     mov   y,$04
1aa2: cf        mul   ya
1aa3: ae        pop   a
1aa4: cf        mul   ya
1aa5: 7a 06     addw  ya,$06            ; ?, ya = final pitch value
1aa7: c4 04     mov   $04,a
1aa9: e8 02     mov   a,#$02
1aab: 04 23     or    a,$23
1aad: c4 f2     mov   $f2,a
1aaf: fa 04 f3  mov   ($f3),($04)       ; set P(L)
1ab2: bc        inc   a
1ab3: c4 f2     mov   $f2,a
1ab5: dd        mov   a,y
1ab6: 28 3f     and   a,#$3f
1ab8: c4 f3     mov   $f3,a             ; set P(H)
1aba: 6f        ret

; vcmd dispatch table (e0-ff)
1abb: dw $1b3b  ; e0 - rest
1abd: dw $1b4f  ; e1 - rest with duration
1abf: dw $1b95  ; e2 - set instrument
1ac1: dw $1c4f  ; e3 - set panpot
1ac3: dw $1c6b  ; e4 - vibrato
1ac5: dw $1ccd  ; e5 - random pitch envelope
1ac7: dw $1ce6  ; e6 - start loop
1ac9: dw $1cf3  ; e7 - end loop
1acb: dw $1d64  ; e8 - start loop #2
1acd: dw $1d81  ; e9 - end loop #2
1acf: dw $1de2  ; ea - tempo (per track)
1ad1: dw $1dec  ; eb - tempo fade
1ad3: dw $1dfd  ; ec - per-voice transpose
1ad5: dw $1fca  ; ed - set ADSR(1)
1ad7: dw $1e03  ; ee - volume
1ad9: dw $1e0d  ; ef - volume fade
1adb: dw $1e1d  ; f0 - portamento
1add: dw $1e24  ; f1 - pitch envelope
1adf: dw $1e42  ; f2 - tuning
1ae1: dw $1e5d  ; f3 - pitch slide
1ae3: dw $1e6c  ; f4 - echo on/off
1ae5: dw $1e92  ; f5 - echo params
1ae7: dw $1f2d  ; f6 - start complexed loop
1ae9: dw $1f3f  ; f7 - end complexed loop
1aeb: dw $1f76  ; f8 - panpot fade
1aed: dw $1cb2  ; f9 - vibrato depth fade length
1aef: dw $1f86  ; fa - set ADSR(1)/ADSR(2)/GAIN
1af1: dw $1fe0  ; fb - set ADSR(2)
1af3: dw $1feb  ; fc - set volume and instrument
1af5: dw $1ff8  ; fd - goto
1af7: dw $2006  ; fe - call subroutine
1af9: dw $201f  ; ff - end of track / end subroutine

; vcmd length table (e0-ff)
; this table only suggests which vcmd will not take any parameters.
; therefore, the table content is somewhat wrong. do not trust.
1afb: dw $0001,$0002,$0001,$0001,$0003,$0003,$0000,$0003 ; e0-e7
1b0b: dw $0000,$0003,$0001,$0002,$0001,$0001,$0001,$0002 ; e8-ef
1b1b: dw $0001,$0003,$0001,$0003,$0003,$0003,$0000,$0000 ; f0-f7
1b2b: dw $0002,$0001,$0003,$0001,$0001,$0002,$0002,$0000 ; f8-ff

; vcmd e0 - rest
1b3b: d5 30 02  mov   $0230+x,a
1b3e: d4 60     mov   $60+x,a
1b40: 09 11 10  or    ($10),($11)
1b43: e8 00     mov   a,#$00
1b45: d5 31 02  mov   $0231+x,a
1b48: d4 61     mov   $61+x,a
1b4a: d5 b1 01  mov   $01b1+x,a
1b4d: 2f 15     bra   $1b64

; vcmd e1 - rest with duration
1b4f: d5 30 02  mov   $0230+x,a
1b52: d4 60     mov   $60+x,a
1b54: 3f 56 19  call  $1956             ; arg2
1b57: d5 31 02  mov   $0231+x,a
1b5a: 1c        asl   a
1b5b: fb 60     mov   y,$60+x
1b5d: cf        mul   ya
1b5e: dd        mov   a,y
1b5f: d0 01     bne   $1b62
1b61: bc        inc   a
1b62: d4 61     mov   $61+x,a
; if the next is vcmd f3, handle it here somehow
1b64: e7 30     mov   a,($30+x)
1b66: 68 f3     cmp   a,#$f3
1b68: d0 2a     bne   $1b94
1b6a: 92 20     clr4  $20
1b6c: 3f 58 19  call  $1958             ; strip $f3
1b6f: 3f 56 19  call  $1956             ; arg1 - pitch slide delay
1b72: d4 81     mov   $81+x,a
1b74: 3f 56 19  call  $1956             ; arg2 - pitch slide length
1b77: d4 80     mov   $80+x,a
1b79: 3f 56 19  call  $1956             ; arg3 - note number after the slide
1b7c: 60        clrc
1b7d: 95 21 02  adc   a,$0221+x
1b80: d5 c1 02  mov   $02c1+x,a
1b83: e8 00     mov   a,#$00
1b85: d5 c0 02  mov   $02c0+x,a
1b88: 3f 56 19  call  $1956
1b8b: d5 b0 02  mov   $02b0+x,a         ; arg4
1b8e: 3f 56 19  call  $1956
1b91: d5 b1 02  mov   $02b1+x,a         ; arg4/arg5 - pitch delta (semitones, signed 8 bit int + fraction)
1b94: 6f        ret

; vcmd e2 - set instrument
1b95: 09 11 10  or    ($10),($11)
1b98: fd        mov   y,a
1b99: f5 a1 01  mov   a,$01a1+x
1b9c: d0 27     bne   $1bc5
1b9e: dd        mov   a,y
1b9f: 68 28     cmp   a,#$28
1ba1: b0 0c     bcs   $1baf             ; branch if arg1 (patch) >= 0x28
1ba3: 8f 3c 04  mov   $04,#$3c
1ba6: 8f 0a 05  mov   $05,#$0a          ; $04 = #$0a3c
1ba9: 3f ee 1b  call  $1bee
1bac: 5f e2 18  jmp   $18e2
; when patch >= 0x28:
1baf: a8 28     sbc   a,#$28            ; patch -= 0x28
1bb1: 2d        push  a
1bb2: eb 25     mov   y,$25
1bb4: f6 20 0a  mov   a,$0a20+y
1bb7: c4 04     mov   $04,a
1bb9: f6 21 0a  mov   a,$0a21+y
1bbc: c4 05     mov   $05,a             ; $04 = *(u16)($0a20 + $25 * 2)
1bbe: ae        pop   a
1bbf: 3f ee 1b  call  $1bee
1bc2: 5f e2 18  jmp   $18e2

1bc5: fd        mov   y,a
1bc6: e8 04     mov   a,#$04
1bc8: 04 23     or    a,$23
1bca: c4 06     mov   $06,a
1bcc: c4 f2     mov   $f2,a
1bce: f5 a0 01  mov   a,$01a0+x
1bd1: c4 f3     mov   $f3,a             ; set SRCN
1bd3: 8f 1a 04  mov   $04,#$1a
1bd6: 8f 07 05  mov   $05,#$07
1bd9: e8 06     mov   a,#$06
1bdb: cf        mul   ya
1bdc: 7a 04     addw  ya,$04
1bde: da 04     movw  $04,ya
1be0: 8d 00     mov   y,#$00
1be2: 3f 04 1c  call  $1c04
1be5: 5f e2 18  jmp   $18e2

; load instrument for percussive note
1be8: 8f e6 04  mov   $04,#$e6
1beb: 8f 0d 05  mov   $05,#$0d          ; $04 = #$0de6

; load instrument attributes from instrument table
; a = patch number, $04 = instrument table address
1bee: 8d 07     mov   y,#$07
1bf0: cf        mul   ya
1bf1: 7a 04     addw  ya,$04
1bf3: da 04     movw  $04,ya            ; load address by index `$04 += (patch * 7)`
1bf5: 8d 00     mov   y,#$00
1bf7: e8 04     mov   a,#$04
1bf9: 04 23     or    a,$23
1bfb: c4 06     mov   $06,a
1bfd: c4 f2     mov   $f2,a
1bff: f7 04     mov   a,($04)+y
1c01: c4 f3     mov   $f3,a             ; [0] set SRCN
1c03: fc        inc   y
1c04: f7 04     mov   a,($04)+y
1c06: d5 40 02  mov   $0240+x,a         ; [1] tuning in semitones (signed)
1c09: fc        inc   y
1c0a: f7 04     mov   a,($04)+y
1c0c: d5 41 02  mov   $0241+x,a         ; [2] tuning in semitones/256 (signed)
1c0f: 10 07     bpl   $1c18
1c11: f5 40 02  mov   a,$0240+x
1c14: 9c        dec   a
1c15: d5 40 02  mov   $0240+x,a
1c18: fc        inc   y
1c19: ab 06     inc   $06
1c1b: fa 06 f2  mov   ($f2),($06)
1c1e: ab 06     inc   $06
1c20: f7 04     mov   a,($04)+y
1c22: c4 f3     mov   $f3,a             ; [3] set ADSR(1)
1c24: d5 70 02  mov   $0270+x,a         ; save ADSR(1)
1c27: 30 02     bmi   $1c2b
1c29: ab 06     inc   $06
1c2b: fc        inc   y
1c2c: fa 06 f2  mov   ($f2),($06)
1c2f: f7 04     mov   a,($04)+y
1c31: c4 f3     mov   $f3,a             ; [4] set ADSR(2) or GAIN (depends on ADSR(1))
1c33: d5 71 02  mov   $0271+x,a         ; save ADSR(2)/GAIN
1c36: e8 00     mov   a,#$00
1c38: d5 c1 01  mov   $01c1+x,a
1c3b: fc        inc   y
1c3c: 63 20 09  bbs3  $20,$1c48
1c3f: f7 04     mov   a,($04)+y
1c41: d5 a1 02  mov   $02a1+x,a         ; [5] panpot
1c44: e8 00     mov   a,#$00
1c46: d4 70     mov   $70+x,a
1c48: fc        inc   y
1c49: f7 04     mov   a,($04)+y
1c4b: d5 b0 01  mov   $01b0+x,a         ; [6] volume delta (decreased)
1c4e: 6f        ret

; vcmd e3 - set panpot
1c4f: 68 2a     cmp   a,#$2a
1c51: f0 0e     beq   $1c61
1c53: 68 2c     cmp   a,#$2c
1c55: f0 0f     beq   $1c66
1c57: d5 a1 02  mov   $02a1+x,a
1c5a: e8 00     mov   a,#$00
1c5c: d4 70     mov   $70+x,a
1c5e: 5f e2 18  jmp   $18e2

1c61: 62 20     set3  $20
1c63: 5f e2 18  jmp   $18e2

1c66: 72 20     clr3  $20
1c68: 5f e2 18  jmp   $18e2

; vcmd e4 - vibrato
1c6b: 2d        push  a
1c6c: 3f 56 19  call  $1956             ; arg2 - vibrato rate
1c6f: 68 80     cmp   a,#$80
1c71: b0 13     bcs   $1c86
1c73: 1c        asl   a
1c74: 30 0c     bmi   $1c82
1c76: 1c        asl   a
1c77: 30 05     bmi   $1c7e
1c79: 1c        asl   a
1c7a: 8d 01     mov   y,#$01            ; arg2 is in 0x00..0x1f
1c7c: 2f 10     bra   $1c8e
1c7e: 8d 02     mov   y,#$02            ; arg2 is in 0x20..0x3f
1c80: 2f 0c     bra   $1c8e
1c82: 8d 04     mov   y,#$04            ; arg2 is in 0x40..0x7f
1c84: 2f 08     bra   $1c8e
1c86: 8d 08     mov   y,#$08            ; arg2 is in 0x80..0xfe
1c88: 68 ff     cmp   a,#$ff
1c8a: d0 02     bne   $1c8e
1c8c: 8d 10     mov   y,#$10            ; arg2 == 0xff
1c8e: d4 b1     mov   $b1+x,a
1c90: db c0     mov   $c0+x,y
1c92: 3f 56 19  call  $1956             ; arg3 - vibrato depth
1c95: d5 20 02  mov   $0220+x,a
1c98: ae        pop   a
1c99: 68 c8     cmp   a,#$c8            ; arg1 - vibrato delay or vibrato fade length
1c9b: b0 0b     bcs   $1ca8
; if arg1 < 200
1c9d: d5 10 02  mov   $0210+x,a         ; set vibrato delay
1ca0: e8 00     mov   a,#$00
1ca2: d5 11 02  mov   $0211+x,a         ; zero vibrato depth fade length
1ca5: 5f e2 18  jmp   $18e2
; else # arg1 >= 200
1ca8: fd        mov   y,a
1ca9: e8 00     mov   a,#$00
1cab: d5 10 02  mov   $0210+x,a         ; zero vibrato delay
1cae: dd        mov   a,y
1caf: 80        setc
1cb0: a8 c7     sbc   a,#$c7            ; vibrato depth fade length = arg1 - 199

; vcmd f9 - vibrato depth fade length
1cb2: d5 11 02  mov   $0211+x,a         ; arg1 - vibrato depth fade length
1cb5: 2d        push  a
1cb6: 8d 00     mov   y,#$00
1cb8: f5 20 02  mov   a,$0220+x         ; vibrato depth
1cbb: ce        pop   x
1cbc: 9e        div   ya,x
1cbd: 2d        push  a
1cbe: e8 00     mov   a,#$00
1cc0: 9e        div   ya,x
1cc1: f8 22     mov   x,$22
1cc3: d5 e0 02  mov   $02e0+x,a         ; ((vibrato_depth / vibrato_depth_fade_length) << 8) / vibrato_depth_fade_length
1cc6: ae        pop   a
1cc7: d5 e1 02  mov   $02e1+x,a         ; vibrato_depth / vibrato_depth_fade_length
1cca: 5f e2 18  jmp   $18e2

; vcmd e5 - random pitch envelope
1ccd: d5 d1 01  mov   $01d1+x,a         ; arg1 - envelope speed
1cd0: 3f 56 19  call  $1956
1cd3: d5 f1 02  mov   $02f1+x,a         ; arg2 - delta pitch mask bits (low)
1cd6: 3f 56 19  call  $1956
1cd9: d5 f0 02  mov   $02f0+x,a         ; arg3 - delta pitch mask bits (high)
1cdc: e8 00     mov   a,#$00
1cde: d4 d1     mov   $d1+x,a
1ce0: d5 d0 01  mov   $01d0+x,a
1ce3: 5f e2 18  jmp   $18e2

; vcmd e6 - start loop
1ce6: f4 30     mov   a,$30+x
1ce8: d5 50 01  mov   $0150+x,a
1ceb: f4 31     mov   a,$31+x
1ced: d5 51 01  mov   $0151+x,a         ; save return address
1cf0: 5f e2 18  jmp   $18e2

; vcmd e7 - end loop
1cf3: 68 00     cmp   a,#$00            ; arg1: repeat count
1cf5: f0 1e     beq   $1d15             ; 0 => infinite loop
1cf7: bb 50     inc   $50+x             ; increment repeat counter
1cf9: de 50 19  cbne  $50+x,$1d15
; repeat end
1cfc: 3f 58 19  call  $1958
1cff: 3f 58 19  call  $1958
1d02: e8 00     mov   a,#$00
1d04: d4 50     mov   $50+x,a
1d06: d5 10 01  mov   $0110+x,a
1d09: d5 11 01  mov   $0111+x,a
1d0c: d5 30 01  mov   $0130+x,a
1d0f: d5 31 01  mov   $0131+x,a
1d12: 5f e2 18  jmp   $18e2
; repeat again
; adjust volume by repeat count
1d15: 3f 56 19  call  $1956             ; get arg2 (delta volume, signed)
1d18: 8d 00     mov   y,#$00
1d1a: 08 00     or    a,#$00
1d1c: f0 15     beq   $1d33
1d1e: 10 01     bpl   $1d21
1d20: dc        dec   y
1d21: da 04     movw  $04,ya
1d23: f5 11 01  mov   a,$0111+x
1d26: fd        mov   y,a
1d27: f5 10 01  mov   a,$0110+x
1d2a: 7a 04     addw  ya,$04
1d2c: d5 10 01  mov   $0110+x,a
1d2f: dd        mov   a,y
1d30: d5 11 01  mov   $0111+x,a         ; add arg2 to $0110/1
; adjust pitch by repeat count
1d33: 3f 56 19  call  $1956             ; get arg3 (delta pitch, signed)
1d36: 08 00     or    a,#$00
1d38: f0 1d     beq   $1d57             ; do nothing if arg3 == 0
1d3a: 8d 00     mov   y,#$00
1d3c: 1c        asl   a
1d3d: 90 01     bcc   $1d40
1d3f: dc        dec   y
1d40: cb 04     mov   $04,y
1d42: 1c        asl   a
1d43: 2b 04     rol   $04
1d45: 1c        asl   a
1d46: 2b 04     rol   $04
1d48: 60        clrc
1d49: 95 30 01  adc   a,$0130+x
1d4c: d5 30 01  mov   $0130+x,a
1d4f: e4 04     mov   a,$04
1d51: 95 31 01  adc   a,$0131+x
1d54: d5 31 01  mov   $0131+x,a         ; add (arg3 * 8) to $0130/1+x
1d57: f5 50 01  mov   a,$0150+x
1d5a: d4 30     mov   $30+x,a
1d5c: f5 51 01  mov   a,$0151+x
1d5f: d4 31     mov   $31+x,a           ; back to return address
1d61: 5f e2 18  jmp   $18e2

; vcmd e8 - start loop #2
1d64: f4 30     mov   a,$30+x
1d66: d5 60 01  mov   $0160+x,a
1d69: f4 31     mov   a,$31+x
1d6b: d5 61 01  mov   $0161+x,a         ; save return address
1d6e: e8 00     mov   a,#$00
1d70: d4 51     mov   $51+x,a
1d72: d5 20 01  mov   $0120+x,a
1d75: d5 21 01  mov   $0121+x,a
1d78: d5 40 01  mov   $0140+x,a
1d7b: d5 41 01  mov   $0141+x,a
1d7e: 5f e2 18  jmp   $18e2

; vcmd e9 - end loop #2
1d81: 68 00     cmp   a,#$00
1d83: f0 0e     beq   $1d93
1d85: bb 51     inc   $51+x
1d87: de 51 09  cbne  $51+x,$1d93
; repeat end
1d8a: 3f 58 19  call  $1958
1d8d: 3f 58 19  call  $1958
1d90: 5f e2 18  jmp   $18e2
; repeat again
; adjust volume by repeat count
1d93: 3f 56 19  call  $1956             ; get arg2 (delta volume, signed)
1d96: 8d 00     mov   y,#$00
1d98: 08 00     or    a,#$00
1d9a: f0 15     beq   $1db1
1d9c: 10 01     bpl   $1d9f
1d9e: dc        dec   y
1d9f: da 04     movw  $04,ya
1da1: f5 21 01  mov   a,$0121+x
1da4: fd        mov   y,a
1da5: f5 20 01  mov   a,$0120+x
1da8: 7a 04     addw  ya,$04
1daa: d5 20 01  mov   $0120+x,a
1dad: dd        mov   a,y
1dae: d5 21 01  mov   $0121+x,a         ; add arg2 to $0120/1
; adjust pitch by repeat count
1db1: 3f 56 19  call  $1956             ; get arg3 (delta pitch, signed)
1db4: 08 00     or    a,#$00
1db6: f0 1d     beq   $1dd5             ; do nothing if arg3 == 0
1db8: 8d 00     mov   y,#$00
1dba: 1c        asl   a
1dbb: 90 01     bcc   $1dbe
1dbd: dc        dec   y
1dbe: cb 04     mov   $04,y
1dc0: 1c        asl   a
1dc1: 2b 04     rol   $04
1dc3: 1c        asl   a
1dc4: 2b 04     rol   $04
1dc6: 60        clrc
1dc7: 95 40 01  adc   a,$0140+x
1dca: d5 40 01  mov   $0140+x,a
1dcd: e4 04     mov   a,$04
1dcf: 95 41 01  adc   a,$0141+x
1dd2: d5 41 01  mov   $0141+x,a         ; add (arg3 * 8) to $0140/1+x
1dd5: f5 60 01  mov   a,$0160+x
1dd8: d4 30     mov   $30+x,a
1dda: f5 61 01  mov   a,$0161+x
1ddd: d4 31     mov   $31+x,a           ; back to return address
1ddf: 5f e2 18  jmp   $18e2

; vcmd ea - tempo (per track)
1de2: d4 41     mov   $41+x,a
1de4: e8 00     mov   a,#$00
1de6: d5 c0 01  mov   $01c0+x,a
1de9: 5f e2 18  jmp   $18e2

; vcmd eb - tempo fade
1dec: d5 50 02  mov   $0250+x,a         ; final tempo value
1def: 3f 56 19  call  $1956
1df2: d5 c0 01  mov   $01c0+x,a         ; tempo fade speed
1df5: e8 00     mov   a,#$00
1df7: d5 51 02  mov   $0251+x,a         ; tempo fade counter
1dfa: 5f e2 18  jmp   $18e2

; vcmd ec - per-voice transpose
1dfd: d5 21 02  mov   $0221+x,a
1e00: 5f e2 18  jmp   $18e2

; vcmd ee - volume
1e03: d5 91 02  mov   $0291+x,a
1e06: e8 00     mov   a,#$00
1e08: d4 71     mov   $71+x,a
1e0a: 5f e2 18  jmp   $18e2

; vcmd ef - volume fade
1e0d: d5 00 02  mov   $0200+x,a         ; final volume value
1e10: 3f 56 19  call  $1956
1e13: d4 71     mov   $71+x,a           ; volume fade speed
1e15: e8 00     mov   a,#$00
1e17: d5 90 02  mov   $0290+x,a
1e1a: 5f e2 18  jmp   $18e2

; vcmd f0 - portamento
1e1d: d4 90     mov   $90+x,a           ; portamento speed
1e1f: 82 20     set4  $20
1e21: 5f e2 18  jmp   $18e2

; vcmd f1 - pitch envelope
1e24: 92 20     clr4  $20
1e26: d4 91     mov   $91+x,a           ; arg1: envelope delay
1e28: 3f 56 19  call  $1956
1e2b: d4 90     mov   $90+x,a           ; arg2: envelope length (pitch will be restored to regular note when envelope phase gets done)
1e2d: 3f 56 19  call  $1956
1e30: d5 60 02  mov   $0260+x,a         ; arg3: initial pitch (semitones, signed), will be *negated* and added to note number
1e33: 3f 56 19  call  $1956
1e36: d5 b0 02  mov   $02b0+x,a         ; arg4: pitch delta (fraction)
1e39: 3f 56 19  call  $1956
1e3c: d5 b1 02  mov   $02b1+x,a         ; arg5: pitch delta (semitones, signed)
1e3f: 5f e2 18  jmp   $18e2

; vcmd f2 - tuning
1e42: 1c        asl   a                 ; arg1: tuning (signed)
1e43: b0 08     bcs   $1e4d
; when arg1 >= 0
1e45: 8d 00     mov   y,#$00
1e47: 1c        asl   a                 ; *= 2
1e48: 90 09     bcc   $1e53
1e4a: fc        inc   y
1e4b: 2f 06     bra   $1e53
; when arg1 < 0
1e4d: 8d ff     mov   y,#$ff
1e4f: 1c        asl   a                 ; *= 2
1e50: b0 01     bcs   $1e53
1e52: dc        dec   y
;
1e53: d5 80 02  mov   $0280+x,a
1e56: dd        mov   a,y
1e57: d5 81 02  mov   $0281+x,a         ; $0280/1+x = arg1 * 4
1e5a: 5f e2 18  jmp   $18e2

; vcmd f3 - pitch slide
1e5d: 3f 58 19  call  $1958
1e60: 3f 58 19  call  $1958
1e63: 3f 58 19  call  $1958
1e66: 3f 58 19  call  $1958
1e69: 5f e2 18  jmp   $18e2

; vcmd f4 - echo on/off
1e6c: 08 00     or    a,#$00            ; arg1 - EON
1e6e: f0 16     beq   $1e86
1e70: b2 13     clr5  $13
1e72: c4 14     mov   $14,a
1e74: 8f 4d f2  mov   $f2,#$4d
1e77: c4 f3     mov   $f3,a             ; set EON
1e79: 3f 56 19  call  $1956
1e7c: c4 15     mov   $15,a             ; arg2 - EVOL(L)
1e7e: 3f 56 19  call  $1956
1e81: c4 16     mov   $16,a             ; arg3 - EVOL(R)
1e83: 5f e2 18  jmp   $18e2

1e86: 3f f4 1e  call  $1ef4             ; disable echo
1e89: 3f 58 19  call  $1958
1e8c: 3f 58 19  call  $1958
1e8f: 5f e2 18  jmp   $18e2

; vcmd f5 - echo params
1e92: 78 00 14  cmp   $14,#$00
1e95: f0 f2     beq   $1e89
1e97: 28 0f     and   a,#$0f
1e99: 64 18     cmp   a,$18
1e9b: f0 31     beq   $1ece
1e9d: eb 18     mov   y,$18
1e9f: c4 18     mov   $18,a
1ea1: dd        mov   a,y
1ea2: 1c        asl   a
1ea3: 1c        asl   a
1ea4: 1c        asl   a
1ea5: 1c        asl   a
1ea6: 08 0f     or    a,#$0f
1ea8: 60        clrc
1ea9: 84 19     adc   a,$19
1eab: c4 19     mov   $19,a
1ead: 8f 6c f2  mov   $f2,#$6c
1eb0: e4 13     mov   a,$13
1eb2: 08 20     or    a,#$20
1eb4: c4 f3     mov   $f3,a             ; set FLG
1eb6: 8f 7d f2  mov   $f2,#$7d
1eb9: fa 18 f3  mov   ($f3),($18)       ; set EDL
1ebc: e4 18     mov   a,$18
1ebe: f0 09     beq   $1ec9
1ec0: 1c        asl   a
1ec1: 1c        asl   a
1ec2: 1c        asl   a
1ec3: 48 ff     eor   a,#$ff
1ec5: bc        inc   a
1ec6: 60        clrc
1ec7: 88 00     adc   a,#$00
1ec9: 8f 6d f2  mov   $f2,#$6d
1ecc: c4 f3     mov   $f3,a             ; set ESA
1ece: e4 18     mov   a,$18
1ed0: 1c        asl   a
1ed1: 1c        asl   a
1ed2: 1c        asl   a
1ed3: 1c        asl   a
1ed4: 08 0f     or    a,#$0f
1ed6: c4 1a     mov   $1a,a
1ed8: 3f 56 19  call  $1956
1edb: c4 17     mov   $17,a
1edd: 3f 58 19  call  $1958
1ee0: 8d 00     mov   y,#$00
1ee2: f6 e7 22  mov   a,$22e7+y
1ee5: c4 f2     mov   $f2,a
1ee7: f6 ef 22  mov   a,$22ef+y
1eea: c4 f3     mov   $f3,a             ; set FIR
1eec: fc        inc   y
1eed: ad 08     cmp   y,#$08
1eef: d0 f1     bne   $1ee2
1ef1: 5f e2 18  jmp   $18e2

1ef4: e4 14     mov   a,$14
1ef6: f0 34     beq   $1f2c
1ef8: e4 18     mov   a,$18
1efa: 1c        asl   a
1efb: 1c        asl   a
1efc: bc        inc   a
1efd: c4 19     mov   $19,a
1eff: e8 00     mov   a,#$00
1f01: 8f 2c f2  mov   $f2,#$2c
1f04: c4 f3     mov   $f3,a             ; set EVOL(L)
1f06: 8f 3c f2  mov   $f2,#$3c
1f09: c4 f3     mov   $f3,a             ; set EVOL(R)
1f0b: 8f 0d f2  mov   $f2,#$0d
1f0e: c4 f3     mov   $f3,a             ; set EFB
1f10: a2 13     set5  $13
1f12: 8f 6c f2  mov   $f2,#$6c
1f15: fa 13 f3  mov   ($f3),($13)       ; set FLG
1f18: c4 14     mov   $14,a
1f1a: c4 15     mov   $15,a
1f1c: c4 16     mov   $16,a
1f1e: c4 17     mov   $17,a
1f20: c4 18     mov   $18,a
1f22: 8f 7d f2  mov   $f2,#$7d
1f25: c4 f3     mov   $f3,a             ; set EDL
1f27: 8f 6d f2  mov   $f2,#$6d
1f2a: c4 f3     mov   $f3,a             ; set ESA
1f2c: 6f        ret

; vcmd f6 - start complexed loop
1f2d: f4 30     mov   a,$30+x
1f2f: d5 70 01  mov   $0170+x,a
1f32: f4 31     mov   a,$31+x
1f34: d5 71 01  mov   $0171+x,a         ; save current address to $0170/1
1f37: e8 c0     mov   a,#$c0
1f39: 4e 20 00  tclr1 $0020             ; reset "visited" flags
1f3c: 5f e2 18  jmp   $18e2

; vcmd f7 - end complexed loop
1f3f: c3 20 08  bbs6  $20,$1f4a
1f42: e3 20 20  bbs7  $20,$1f65
; first time, do nothing
1f45: c2 20     set6  $20
1f47: 5f e2 18  jmp   $18e2
; second time
1f4a: d2 20     clr6  $20
1f4c: e2 20     set7  $20
1f4e: f4 30     mov   a,$30+x
1f50: d5 80 01  mov   $0180+x,a
1f53: f4 31     mov   a,$31+x
1f55: d5 81 01  mov   $0181+x,a         ; save current address to $0180/1
1f58: f5 70 01  mov   a,$0170+x
1f5b: d4 30     mov   $30+x,a
1f5d: f5 71 01  mov   a,$0171+x
1f60: d4 31     mov   $31+x,a           ; back to $0170/1
1f62: 5f e2 18  jmp   $18e2
; third time
1f65: c2 20     set6  $20
1f67: f2 20     clr7  $20
1f69: f5 80 01  mov   a,$0180+x
1f6c: d4 30     mov   $30+x,a
1f6e: f5 81 01  mov   a,$0181+x
1f71: d4 31     mov   $31+x,a           ; back to $0180/1
1f73: 5f e2 18  jmp   $18e2

; vcmd f8 - panpot fade
1f76: d5 01 02  mov   $0201+x,a         ; final panpot value
1f79: 3f 56 19  call  $1956
1f7c: d4 70     mov   $70+x,a           ; panpot fade speed
1f7e: e8 00     mov   a,#$00
1f80: d5 a0 02  mov   $02a0+x,a
1f83: 5f e2 18  jmp   $18e2

; vcmd fa - set ADSR(1)/ADSR(2)/GAIN
1f86: d5 70 02  mov   $0270+x,a         ; arg1 - ADSR(1)
1f89: fd        mov   y,a
1f8a: e8 05     mov   a,#$05
1f8c: 04 23     or    a,$23
1f8e: c4 f2     mov   $f2,a
1f90: cb f3     mov   $f3,y             ; set ADSR(1)
1f92: bc        inc   a
1f93: ad 80     cmp   y,#$80
1f95: 90 09     bcc   $1fa0
; ADSR mode
1f97: c4 f2     mov   $f2,a
1f99: 3f 56 19  call  $1956             ; arg2 - ADSR(2)
1f9c: c4 f3     mov   $f3,a             ; set ADSR(2)
1f9e: 2f 0b     bra   $1fab
; GAIN mode
1fa0: bc        inc   a
1fa1: c4 f2     mov   $f2,a
1fa3: 3f 56 19  call  $1956             ; arg2 - GAIN
1fa6: c4 f3     mov   $f3,a             ; set GAIN
1fa8: d5 71 02  mov   $0271+x,a
; vcmd 62 - set GAIN
1fab: 3f 56 19  call  $1956             ; arg1 - GAIN amount
1fae: 68 c8     cmp   a,#$c8
1fb0: b0 0c     bcs   $1fbe
1fb2: 68 64     cmp   a,#$64
1fb4: 90 0e     bcc   $1fc4
; arg1 === 100..199: linear decrease
1fb6: a8 64     sbc   a,#$64
1fb8: 28 1f     and   a,#$1f
1fba: 08 80     or    a,#$80            ; linear decrease
1fbc: 2f 06     bra   $1fc4
; arg1 === 200..255: exponential decrease
1fbe: a8 c8     sbc   a,#$c8
1fc0: 28 1f     and   a,#$1f
1fc2: 08 a0     or    a,#$a0            ; exponential decrease
; otherwise, direct GAIN
1fc4: d5 c1 01  mov   $01c1+x,a
1fc7: 5f e2 18  jmp   $18e2

; vcmd ed - set ADSR(1)
1fca: 2d        push  a
1fcb: f5 70 02  mov   a,$0270+x
1fce: ae        pop   a
1fcf: 10 0c     bpl   $1fdd             ; return if saved ADSR(1) is GAIN mode
1fd1: d5 70 02  mov   $0270+x,a
1fd4: fd        mov   y,a
1fd5: e8 05     mov   a,#$05
1fd7: 04 23     or    a,$23
1fd9: c4 f2     mov   $f2,a
1fdb: cb f3     mov   $f3,y             ; set ADSR(1)
1fdd: 5f e2 18  jmp   $18e2

; vcmd fb - set ADSR(2)
1fe0: 2d        push  a
1fe1: f5 70 02  mov   a,$0270+x
1fe4: ee        pop   y
1fe5: 10 f6     bpl   $1fdd
1fe7: e8 06     mov   a,#$06
1fe9: 2f ec     bra   $1fd7             ; set ADSR(2)

; vcmd fc - set volume and instrument
1feb: d5 91 02  mov   $0291+x,a
1fee: e8 00     mov   a,#$00
1ff0: d4 71     mov   $71+x,a
1ff2: 3f 56 19  call  $1956
1ff5: 5f 95 1b  jmp   $1b95             ; redirect to vcmd e2

; vcmd fd - goto
1ff8: c4 04     mov   $04,a
1ffa: 3f 56 19  call  $1956
1ffd: d4 31     mov   $31+x,a
1fff: e4 04     mov   a,$04
2001: d4 30     mov   $30+x,a
2003: 5f e2 18  jmp   $18e2

; vcmd fe - call subroutine
2006: 2d        push  a
2007: 3f 56 19  call  $1956
200a: fd        mov   y,a
200b: f4 30     mov   a,$30+x
200d: d5 00 01  mov   $0100+x,a
2010: f4 31     mov   a,$31+x
2012: d5 01 01  mov   $0101+x,a
2015: ae        pop   a
2016: d4 30     mov   $30+x,a
2018: db 31     mov   $31+x,y
201a: 42 20     set2  $20
201c: 5f e2 18  jmp   $18e2

; vcmd ff - end of track / end subroutine
201f: 53 20 0f  bbc2  $20,$2031
; end subroutine
2022: 52 20     clr2  $20
2024: f5 00 01  mov   a,$0100+x
2027: d4 30     mov   $30+x,a
2029: f5 01 01  mov   a,$0101+x
202c: d4 31     mov   $31+x,a
202e: 5f e2 18  jmp   $18e2
; end of track
2031: e8 00     mov   a,#$00
2033: d4 d0     mov   $d0+x,a
2035: d5 a1 01  mov   $01a1+x,a
2038: d5 90 01  mov   $0190+x,a
203b: e4 11     mov   a,$11
203d: 0e 10 00  tset1 $0010
2040: 4e 0f 00  tclr1 $000f
2043: a2 20     set5  $20
2045: 6f        ret

2046: da 06     movw  $06,ya
2048: e4 04     mov   a,$04
204a: 9f        xcn   a
204b: 28 f0     and   a,#$f0
204d: 2d        push  a
204e: e4 04     mov   a,$04
2050: 30 0f     bmi   $2061
2052: 9f        xcn   a
2053: 28 07     and   a,#$07
2055: fd        mov   y,a
2056: ae        pop   a
2057: 60        clrc
2058: 7a 06     addw  ya,$06
205a: b0 13     bcs   $206f
205c: 7e 05     cmp   y,$05
205e: b0 0f     bcs   $206f
2060: 6f        ret

2061: 9f        xcn   a
2062: 08 f8     or    a,#$f8
2064: fd        mov   y,a
2065: ae        pop   a
2066: 60        clrc
2067: 7a 06     addw  ya,$06
2069: 90 04     bcc   $206f
206b: 7e 05     cmp   y,$05
206d: b0 05     bcs   $2074
206f: 8f 00 04  mov   $04,#$00
2072: eb 05     mov   y,$05
2074: 6f        ret

2075: f4 e0     mov   a,$e0+x
2077: fb e1     mov   y,$e1+x
2079: da 04     movw  $04,ya
207b: f5 c1 02  mov   a,$02c1+x
207e: fd        mov   y,a
207f: f5 c0 02  mov   a,$02c0+x
2082: 9a 04     subw  ya,$04
2084: f0 32     beq   $20b8
2086: da 06     movw  $06,ya
2088: 10 07     bpl   $2091
208a: e8 00     mov   a,#$00
208c: fd        mov   y,a
208d: 9a 06     subw  ya,$06
208f: c4 06     mov   $06,a
2091: f4 90     mov   a,$90+x
2093: cf        mul   ya
2094: da 08     movw  $08,ya
2096: eb 06     mov   y,$06
2098: f4 90     mov   a,$90+x
209a: cf        mul   ya
209b: dd        mov   a,y
209c: 8d 00     mov   y,#$00
209e: 7a 08     addw  ya,$08
20a0: d0 01     bne   $20a3
20a2: bc        inc   a
20a3: f3 07 0b  bbc7  $07,$20b1
20a6: da 06     movw  $06,ya
20a8: ba 04     movw  ya,$04
20aa: 9a 06     subw  ya,$06
20ac: d4 e0     mov   $e0+x,a
20ae: db e1     mov   $e1+x,y
20b0: 6f        ret

20b1: 7a 04     addw  ya,$04
20b3: d4 e0     mov   $e0+x,a
20b5: db e1     mov   $e1+x,y
20b7: 6f        ret

20b8: d4 80     mov   $80+x,a
20ba: 6f        ret

20bb: f4 b0     mov   a,$b0+x
20bd: 60        clrc
20be: 94 b1     adc   a,$b1+x
20c0: d4 b0     mov   $b0+x,a
20c2: 90 3a     bcc   $20fe
20c4: 02 21     set0  $21
20c6: f4 c1     mov   a,$c1+x
20c8: 60        clrc
20c9: 94 c0     adc   a,$c0+x
20cb: 28 3f     and   a,#$3f
20cd: c4 04     mov   $04,a
20cf: d4 c1     mov   $c1+x,a
20d1: 28 1f     and   a,#$1f
20d3: fd        mov   y,a
20d4: f6 9d 22  mov   a,$229d+y
20d7: fd        mov   y,a
20d8: f5 d1 02  mov   a,$02d1+x
20db: 30 09     bmi   $20e6
20dd: 1c        asl   a
20de: cf        mul   ya
20df: cb 08     mov   $08,y
20e1: 8f 00 09  mov   $09,#$00
20e4: 2f 0a     bra   $20f0
20e6: 80        setc
20e7: a8 7e     sbc   a,#$7e
20e9: cf        mul   ya
20ea: da 08     movw  $08,ya
20ec: 4b 09     lsr   $09
20ee: 6b 08     ror   $08
20f0: ba 0a     movw  ya,$0a
20f2: b3 04 05  bbc5  $04,$20fa
20f5: 9a 08     subw  ya,$08
20f7: da 0a     movw  $0a,ya
20f9: 6f        ret

20fa: 7a 08     addw  ya,$08
20fc: da 0a     movw  $0a,ya
20fe: 6f        ret

20ff: f5 d0 01  mov   a,$01d0+x
2102: fd        mov   y,a
2103: bc        inc   a
2104: 28 7f     and   a,#$7f
2106: d5 d0 01  mov   $01d0+x,a
2109: f6 f7 22  mov   a,$22f7+y
210c: 35 f0 02  and   a,$02f0+x
210f: 2d        push  a
2110: f6 f8 22  mov   a,$22f8+y
2113: 35 f1 02  and   a,$02f1+x
2116: fd        mov   y,a
2117: ae        pop   a
2118: 7a 0a     addw  ya,$0a
211a: 5f 7f 1a  jmp   $1a7f

; pitch scale table (fraction, multiplier) (96 elements)
211d: db $04,$01      ; $0004
211f: db $05,$01      ; $0005
2121: db $04,$01      ; $0004
2123: db $05,$01      ; $0005
2125: db $05,$01      ; $0005
2127: db $05,$01      ; $0005
2129: db $06,$01      ; $0006
212b: db $06,$01      ; $0006
212d: db $06,$01      ; $0006
212f: db $07,$01      ; $0007
2131: db $07,$01      ; $0007
2133: db $07,$01      ; $0007
2135: db $08,$01      ; $0008
2137: db $09,$01      ; $0009
2139: db $09,$01      ; $0009
213b: db $09,$01      ; $0009
213d: db $0a,$01      ; $000a
213f: db $0b,$01      ; $000b
2141: db $0b,$01      ; $000b
2143: db $0c,$01      ; $000c
2145: db $0d,$01      ; $000d
2147: db $0d,$01      ; $000d
2149: db $0e,$01      ; $000e
214b: db $0f,$01      ; $000f
214d: db $10,$01      ; $0010
214f: db $11,$01      ; $0011
2151: db $12,$01      ; $0012
2153: db $13,$01      ; $0013
2155: db $14,$01      ; $0014
2157: db $15,$01      ; $0015
2159: db $17,$01      ; $0017
215b: db $18,$01      ; $0018
215d: db $19,$01      ; $0019
215f: db $1b,$01      ; $001b
2161: db $1c,$01      ; $001c
2163: db $1e,$01      ; $001e
2165: db $20,$01      ; $0020
2167: db $22,$01      ; $0022
2169: db $24,$01      ; $0024
216b: db $26,$01      ; $0026
216d: db $28,$01      ; $0028
216f: db $2a,$01      ; $002a
2171: db $2d,$01      ; $002d
2173: db $30,$01      ; $0030
2175: db $33,$01      ; $0033
2177: db $35,$01      ; $0035
2179: db $39,$01      ; $0039
217b: db $3c,$01      ; $003c
217d: db $40,$01      ; $0040
217f: db $43,$01      ; $0043
2181: db $48,$01      ; $0048
2183: db $4c,$01      ; $004c
2185: db $50,$01      ; $0050
2187: db $55,$01      ; $0055
2189: db $5a,$01      ; $005a
218b: db $60,$01      ; $0060
218d: db $65,$01      ; $0065
218f: db $6b,$01      ; $006b
2191: db $71,$01      ; $0071
2193: db $79,$01      ; $0079
2195: db $7f,$01      ; $007f
2197: db $87,$01      ; $0087
2199: db $8f,$01      ; $008f
219b: db $98,$01      ; $0098
219d: db $a0,$01      ; $00a0
219f: db $aa,$01      ; $00aa
21a1: db $b5,$01      ; $00b5
21a3: db $bf,$01      ; $00bf
21a5: db $ca,$01      ; $00ca
21a7: db $d6,$01      ; $00d6
21a9: db $e3,$01      ; $00e3
21ab: db $f1,$01      ; $00f1
21ad: db $ff,$01      ; $00ff
21af: db $87,$02      ; $010e
21b1: db $8f,$02      ; $011e
21b3: db $97,$02      ; $012e
21b5: db $a0,$02      ; $0140
21b7: db $aa,$02      ; $0154
21b9: db $b4,$02      ; $0168
21bb: db $bf,$02      ; $017e
21bd: db $ca,$02      ; $0194
21bf: db $d6,$02      ; $01ac
21c1: db $e3,$02      ; $01c6
21c3: db $f0,$02      ; $01e0
21c5: db $ff,$02      ; $01fe
21c7: db $b4,$03      ; $021c
21c9: db $be,$03      ; $023a
21cb: db $ca,$03      ; $025e
21cd: db $d6,$03      ; $0282
21cf: db $e2,$03      ; $02a6
21d1: db $f0,$03      ; $02d0
21d3: db $fe,$03      ; $02fa
21d5: db $ca,$04      ; $0328
21d7: db $d7,$04      ; $035c
21d9: db $e2,$04      ; $0388
21db: db $c9,$01      ; $00c9

21dd: db $01,$01,$01,$01,$01,$01,$01,$01
21e5: db $01,$01,$01,$01,$01,$01,$02,$01
21ed: db $01,$01,$01,$01,$01,$01,$01,$01
21f5: db $02,$01,$01,$01,$02,$01,$01,$01
21fd: db $02,$01,$02,$01,$01,$01,$02,$01
2205: db $03,$01,$02,$01,$02,$01,$03,$01
220d: db $02,$01,$03,$01,$03,$01,$03,$01
2215: db $04,$01,$03,$01,$03,$01,$04,$01

221d: db $00,$01,$01,$01,$01,$01,$01,$01
2225: db $01,$01,$01,$01,$01,$01,$01,$01
222d: db $01,$01,$01,$01,$01,$01,$01,$01
2235: db $01,$01,$01,$01,$01,$01,$02,$02
223d: db $02,$02,$02,$02,$02,$02,$02,$02
2245: db $03,$03,$03,$03,$03,$03,$04,$04
224d: db $04,$04,$04,$04,$05,$05,$05,$05
2255: db $06,$06,$07,$07,$07,$07,$08,$08
225d: db $09,$09,$0a,$0a,$0a,$0a,$0b,$0b
2265: db $0c,$0c,$0d,$0d,$0e,$0f,$10,$10
226d: db $11,$12,$13,$14,$15,$15,$16,$17
2275: db $18,$19,$1b,$1c,$1d,$1e,$20,$22
227d: db $23,$24,$26,$28,$2a,$2c,$2d,$2f
2285: db $31,$33,$35,$38,$3a,$3d,$40,$43
228d: db $46,$49,$4c,$4f,$52,$56,$5a,$5e
2295: db $62,$66,$6b,$6f,$73,$77,$7b,$7f

229d: db $00,$20,$38,$50,$68,$80,$90,$a0
22a5: db $b0,$c0,$d0,$e0,$e8,$f0,$f0,$f8
22ad: db $ff,$f8,$f4,$f0,$e8,$e0,$d0,$c0
22b5: db $b0,$a0,$90,$80,$68,$50,$38,$20

; pan table
22bd: db $00,$04,$08,$0e,$14,$1a,$20,$28
22c5: db $30,$38,$40,$48,$50,$5a,$64,$6e
22cd: db $78,$82,$8c,$96,$a0,$a8,$b0,$b8
22d5: db $c0,$c8,$d0,$d6,$dc,$e0,$e4,$e8
22dd: db $ec,$f0,$f4,$f6,$f8,$fa,$fc,$fe
22e5: db $fe,$fe

22e7: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

22ef: db $7f,$00,$00,$00,$00,$00,$00,$00

22f7: dw $3c9f
22f9: dw $52b2
22fb: dw $45af
22fd: dw $89c7
22ff: dw $7f10
2301: dw $9de0
2303: dw $1fdc
2305: dw $1661
2307: dw $c939
2309: dw $eb9c
230b: dw $0857
230d: dw $f866
230f: dw $245a
2311: dw $0ebf
2313: dw $153e
2315: dw $db4b
2317: dw $f5ab
2319: dw $0c31
231b: dw $0243
231d: dw $de55
231f: dw $da41
2321: dw $aebd
2323: dw $b019
2325: dw $5748
2327: dw $a3ba
2329: dw $0b36
232b: dw $dff9
232d: dw $a817
232f: dw $0c04
2331: dw $91e0
2333: dw $5d18
2335: dw $d3dd
2337: dw $8a28
2339: dw $11f2
233b: dw $6f59
233d: dw $0a06
233f: dw $2a34
2341: dw $ac79
2343: dw $a75e
2345: dw $c683
2347: dw $c139
2349: dw $3ab4
234b: dw $fe3f
234d: dw $ef4f
234f: dw $001f
2351: dw $9930
2353: dw $284c
2355: dw $ed83
2357: dw $2f8a
2359: dw $662c
235b: dw $d63f
235d: dw $b76c
235f: dw $2249
2361: dw $65bc
2363: dw $cffa
2365: dw $b102
2367: dw $f046
2369: dw $d79a
236b: dw $0fe2
236d: dw $c511
236f: dw $f674
2371: dw $2c7a
2373: dw $fb8f
2375: dw $6a19
2377: dw $7ae5
2379: dw $fc23
237b: dw $04bc
237d: dw $1a3a
237f: dw $7f7f
2381: dw $d3fb
2383: dw $28e1
2385: dw $ff7f
2387: dw $2389
2389: dw $78ea
238b: dw $eefc
238d: dw $3a00
238f: dw $7d14
2391: dw $ed7f
2393: dw $ba86
2395: dw $baff
2397: dw $bae9
2399: dw $bad5
239b: dw $bac1
239d: dw $ffad
239f: dw $23a1
23a1: dw $78ea
23a3: dw $d6fc
23a5: dw $ed01
23a7: dw $e48b
23a9: dw $3500
23ab: dw $3d7f
23ad: dw $7d12
23af: dw $bd7f
23b1: dw $bde9
23b3: dw $bdd5
23b5: dw $bdc1
23b7: dw $ffad
23b9: dw $23bb
23bb: dw $a0ea
23bd: dw $d0fc
23bf: dw $290c
23c1: dw $7f05
23c3: dw $2f7f
23c5: dw $7d20
23c7: dw $fb7f
23c9: dw $29d2
23cb: dw $7f05
23cd: dw $2f41
23cf: dw $7d20
23d1: dw $ff41
23d3: dw $23d5
23d5: dw $c8fc
23d7: dw $3a01
23d9: dw $7d11
23db: dw $ed7f
23dd: dw $ba8a
23df: dw $ffad
23e1: dw $23e3
23e3: dw $e0fc
23e5: dw $3c0e
23e7: dw $7d11
23e9: dw $ed7f
23eb: dw $bc8a
23ed: dw $ffad
23ef: dw $23f1
23f1: dw $cefc
23f3: dw $390f
23f5: dw $7d0c
