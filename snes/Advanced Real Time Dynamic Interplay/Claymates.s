1000: 8f ff 80  mov   $80,#$ff
1003: cd ff     mov   x,#$ff
1005: bd        mov   sp,x
1006: 8f 01 93  mov   $93,#$01
1009: 3f 3e 10  call  $103e
100c: 8f ff 94  mov   $94,#$ff
100f: 3f c3 11  call  $11c3
1012: 3f d1 19  call  $19d1
1015: 8f 01 15  mov   $15,#$01
1018: 3f cc 1d  call  $1dcc
101b: 3f 3c 1e  call  $1e3c
101e: 8f 00 15  mov   $15,#$00
1021: 78 00 94  cmp   $94,#$00
1024: f0 e9     beq   $100f
1026: e4 94     mov   a,$94
1028: 80        setc
1029: a4 ff     sbc   a,$ff
102b: c4 94     mov   $94,a
102d: 90 04     bcc   $1033
102f: f0 02     beq   $1033
1031: 2f dc     bra   $100f
1033: 8f 00 94  mov   $94,#$00
1036: 8f 6c f2  mov   $f2,#$6c
1039: 8f 00 f3  mov   $f3,#$00          ; set FLG
103c: 2f d1     bra   $100f
103e: 8f 00 f4  mov   $f4,#$00
1041: 8f 00 f5  mov   $f5,#$00
1044: 8f 00 f6  mov   $f6,#$00
1047: 8f 00 f7  mov   $f7,#$00
104a: 8f 7f 7e  mov   $7e,#$7f
104d: 8f 80 7f  mov   $7f,#$80
1050: 8f 80 92  mov   $92,#$80
1053: 8f 00 91  mov   $91,#$00
1056: 8f 00 90  mov   $90,#$00
1059: 8f 01 93  mov   $93,#$01
105c: 3f 43 11  call  $1143
105f: cd 07     mov   x,#$07
1061: e8 ff     mov   a,#$ff
1063: d4 1e     mov   $1e+x,a
1065: 1d        dec   x
1066: 10 fb     bpl   $1063
1068: cd 07     mov   x,#$07
106a: e8 7f     mov   a,#$7f
106c: d4 3e     mov   $3e+x,a
106e: 1d        dec   x
106f: 10 fb     bpl   $106c
1071: 8f 77 00  mov   $00,#$77
1074: 8f 21 01  mov   $01,#$21
1077: 8f 77 02  mov   $02,#$77
107a: 8f 21 03  mov   $03,#$21
107d: 8f 00 a5  mov   $a5,#$00
1080: 8f 02 a6  mov   $a6,#$02
1083: 8d 00     mov   y,#$00
1085: cd 04     mov   x,#$04
1087: e8 ff     mov   a,#$ff
1089: d7 a5     mov   ($a5)+y,a
108b: fc        inc   y
108c: d0 fb     bne   $1089
108e: ab a6     inc   $a6
1090: 1d        dec   x
1091: d0 f6     bne   $1089
1093: 8f 00 a5  mov   $a5,#$00
1096: 8f 06 a6  mov   $a6,#$06
1099: 8d 00     mov   y,#$00
109b: cd 02     mov   x,#$02
109d: e8 00     mov   a,#$00
109f: d7 a5     mov   ($a5)+y,a
10a1: fc        inc   y
10a2: d0 fb     bne   $109f
10a4: ab a6     inc   $a6
10a6: 1d        dec   x
10a7: d0 f6     bne   $109f
10a9: 8f 00 a5  mov   $a5,#$00
10ac: 8f 08 a6  mov   $a6,#$08
10af: 8d 00     mov   y,#$00
10b1: cd 02     mov   x,#$02
10b3: e8 00     mov   a,#$00
10b5: d7 a5     mov   ($a5)+y,a
10b7: fc        inc   y
10b8: d0 fb     bne   $10b5
10ba: ab a6     inc   $a6
10bc: 1d        dec   x
10bd: d0 f6     bne   $10b5
10bf: 8f 00 a5  mov   $a5,#$00
10c2: 8f 0a a6  mov   $a6,#$0a
10c5: 8d 00     mov   y,#$00
10c7: cd 02     mov   x,#$02
10c9: e8 00     mov   a,#$00
10cb: d7 a5     mov   ($a5)+y,a
10cd: fc        inc   y
10ce: d0 fb     bne   $10cb
10d0: ab a6     inc   $a6
10d2: 1d        dec   x
10d3: d0 f6     bne   $10cb
10d5: cd 7f     mov   x,#$7f
10d7: e8 80     mov   a,#$80
10d9: d5 00 0d  mov   $0d00+x,a
10dc: 1d        dec   x
10dd: 10 fa     bpl   $10d9
10df: cd 7f     mov   x,#$7f
10e1: e8 7f     mov   a,#$7f
10e3: d5 80 0d  mov   $0d80+x,a
10e6: 1d        dec   x
10e7: 10 fa     bpl   $10e3
10e9: cd 7f     mov   x,#$7f
10eb: e8 40     mov   a,#$40
10ed: d5 00 0e  mov   $0e00+x,a
10f0: 1d        dec   x
10f1: 10 fa     bpl   $10ed
10f3: cd 7f     mov   x,#$7f
10f5: e8 00     mov   a,#$00
10f7: d5 80 0e  mov   $0e80+x,a
10fa: 1d        dec   x
10fb: 10 fa     bpl   $10f7
10fd: cd 7f     mov   x,#$7f
10ff: e8 00     mov   a,#$00
1101: d5 00 0f  mov   $0f00+x,a
1104: 1d        dec   x
1105: 10 fa     bpl   $1101
1107: cd 07     mov   x,#$07
1109: e8 7f     mov   a,#$7f
110b: d5 80 0f  mov   $0f80+x,a
110e: 1d        dec   x
110f: 10 fa     bpl   $110b
1111: cd 07     mov   x,#$07
1113: e8 40     mov   a,#$40
1115: d5 88 0f  mov   $0f88+x,a
1118: 1d        dec   x
1119: 10 fa     bpl   $1115
111b: 8f 00 99  mov   $99,#$00
111e: 8f 00 9a  mov   $9a,#$00
1121: 8f 10 87  mov   $87,#$10
1124: 8f 10 88  mov   $88,#$10
1127: 8f 10 89  mov   $89,#$10
112a: 8f 0a 8a  mov   $8a,#$0a
112d: 8f 0a 8b  mov   $8b,#$0a
1130: 8f 0a 8c  mov   $8c,#$0a
1133: 8f 00 f1  mov   $f1,#$00
1136: 8f 50 fa  mov   $fa,#$50
1139: 8f 08 fb  mov   $fb,#$08
113c: 8f a0 fc  mov   $fc,#$a0
113f: 8f 07 f1  mov   $f1,#$07
1142: 6f        ret

1143: 3f 42 19  call  $1942
1146: 8f 6c f2  mov   $f2,#$6c
1149: 8f e0 f3  mov   $f3,#$e0          ; set FLG
114c: 8f 4d f2  mov   $f2,#$4d
114f: 8f 00 f3  mov   $f3,#$00          ; set EON
1152: 8f 0d f2  mov   $f2,#$0d
1155: 8f 00 f3  mov   $f3,#$00          ; set EFB
1158: 8f 7d f2  mov   $f2,#$7d
115b: fa 93 f3  mov   ($f3),($93)       ; set EDL
115e: fa 93 a5  mov   ($a5),($93)
1161: 0b a5     asl   $a5
1163: 0b a5     asl   $a5
1165: 0b a5     asl   $a5
1167: fa a5 a7  mov   ($a7),($a5)
116a: e8 ff     mov   a,#$ff
116c: 80        setc
116d: a4 a5     sbc   a,$a5
116f: c4 05     mov   $05,a
1171: 8f 00 04  mov   $04,#$00
1174: 8f 6d f2  mov   $f2,#$6d
1177: fa 05 f3  mov   ($f3),($05)       ; set ESA
117a: 8f 2c f2  mov   $f2,#$2c
117d: 8f 00 f3  mov   $f3,#$00          ; set EVOL(L)
1180: 8f 3c f2  mov   $f2,#$3c
1183: 8f 00 f3  mov   $f3,#$00          ; set EVOL(R)
1186: 8f 01 15  mov   $15,#$01
1189: fa 04 a5  mov   ($a5),($04)
118c: fa 05 a6  mov   ($a6),($05)
118f: 8d 00     mov   y,#$00
1191: e8 00     mov   a,#$00
1193: d7 a5     mov   ($a5)+y,a
1195: fc        inc   y
1196: d0 fb     bne   $1193
1198: 3f c3 11  call  $11c3             ; dispatch APU0
119b: ab a6     inc   $a6
119d: 8b a7     dec   $a7
119f: d0 ee     bne   $118f
11a1: 8f 00 15  mov   $15,#$00
11a4: 8f 5d f2  mov   $f2,#$5d
11a7: 8f 02 f3  mov   $f3,#$02          ; set DIR
11aa: 8f 2d f2  mov   $f2,#$2d
11ad: 8f 00 f3  mov   $f3,#$00          ; set PMON
11b0: 8f 3d f2  mov   $f2,#$3d
11b3: 8f 00 f3  mov   $f3,#$00          ; set NON
11b6: 8f 3c 94  mov   $94,#$3c
11b9: 3f bf 1e  call  $1ebf
11bc: 8f 6c f2  mov   $f2,#$6c
11bf: 8f 60 f3  mov   $f3,#$60          ; set FLG
11c2: 6f        ret

11c3: e4 f4     mov   a,$f4
11c5: 64 f4     cmp   a,$f4
11c7: d0 fa     bne   $11c3             ; poll APU0
11c9: 68 00     cmp   a,#$00
11cb: f0 39     beq   $1206             ; null
11cd: 68 fd     cmp   a,#$fd
11cf: d0 03     bne   $11d4
11d1: 5f 99 12  jmp   $1299

11d4: 68 fe     cmp   a,#$fe
11d6: d0 09     bne   $11e1
; APU0 $fe
11d8: 3f ef 12  call  $12ef
11db: 3f 63 19  call  $1963
11de: 5f 03 10  jmp   $1003

11e1: 9c        dec   a
11e2: fd        mov   y,a
11e3: f6 4d 12  mov   a,$124d+y
11e6: f0 05     beq   $11ed
;
11e8: 3f 6d 12  call  $126d
11eb: 2f 19     bra   $1206
; type 0
11ed: 78 00 15  cmp   $15,#$00
11f0: d0 14     bne   $1206
11f2: e4 f4     mov   a,$f4
11f4: 9c        dec   a
11f5: 1c        asl   a
11f6: fd        mov   y,a
11f7: f6 2d 12  mov   a,$122d+y
11fa: c4 13     mov   $13,a
11fc: f6 2e 12  mov   a,$122e+y
11ff: c4 14     mov   $14,a
1201: cd 00     mov   x,#$00
1203: 1f 13 00  jmp   ($0013+x)

1206: 6f        ret

1207: e4 99     mov   a,$99
1209: 64 9a     cmp   a,$9a
120b: f0 1f     beq   $122c
120d: f8 9a     mov   x,$9a
120f: f5 00 0c  mov   a,$0c00+x
1212: ab 9a     inc   $9a
1214: 9c        dec   a
1215: 1c        asl   a
1216: fd        mov   y,a
1217: f6 2d 12  mov   a,$122d+y
121a: c5 24 12  mov   $1224,a
121d: f6 2e 12  mov   a,$122e+y
1220: c5 25 12  mov   $1225,a
1223: 3f 00 00  call  $0000             ; dynamic code
1226: 3f 3c 1e  call  $1e3c
1229: 5f 07 12  jmp   $1207

122c: 6f        ret

; APU0 command table
122d: dw $14ab  ; 01
122f: dw $14ca  ; 02
1231: dw $155b  ; 03
1233: dw $0000  ; 04
1235: dw $15f9  ; 05
1237: dw $0000  ; 06
1239: dw $1654  ; 07
123b: dw $17a8  ; 08
123d: dw $0000  ; 09
123f: dw $0000  ; 0a
1241: dw $1653  ; 0b
1243: dw $0000  ; 0c
1245: dw $0000  ; 0d
1247: dw $1963  ; 0e
1249: dw $1fbd  ; 0f
124b: dw $2038  ; 10

124d: db $ff,$ff,$00,$00,$00,$00,$ff,$ff
1255: db $00,$00,$00,$00,$00,$ff,$00,$00
125d: db $02,$02,$00,$00,$00,$00,$02,$02
1265: db $00,$00,$00,$00,$00,$00,$00,$00


126d: e4 f4     mov   a,$f4
126f: 3f ef 12  call  $12ef
1272: f8 99     mov   x,$99
1274: d5 00 0c  mov   $0c00+x,a
1277: 3d        inc   x
1278: 9c        dec   a
1279: fd        mov   y,a
127a: f6 5d 12  mov   a,$125d+y
127d: c4 14     mov   $14,a
127f: f0 15     beq   $1296
1281: 3f fb 12  call  $12fb
1284: d5 00 0c  mov   $0c00+x,a
1287: 3d        inc   x
1288: dd        mov   a,y
1289: d5 00 0c  mov   $0c00+x,a
128c: 3d        inc   x
128d: e8 02     mov   a,#$02
128f: 3f 0d 13  call  $130d
1292: 8b 14     dec   $14
1294: d0 eb     bne   $1281
1296: d8 99     mov   $99,x
1298: 6f        ret

; APU0 $fd
1299: fa f4 f4  mov   ($f4),($f4)
129c: 78 00 f4  cmp   $f4,#$00
129f: d0 fb     bne   $129c
12a1: 8f 00 f4  mov   $f4,#$00
12a4: 8d 01     mov   y,#$01
12a6: 7e f5     cmp   y,$f5
12a8: d0 fc     bne   $12a6
12aa: fa f4 9b  mov   ($9b),($f4)
12ad: cb f5     mov   $f5,y
12af: fc        inc   y
12b0: 7e f5     cmp   y,$f5
12b2: d0 fc     bne   $12b0
12b4: cb f5     mov   $f5,y
12b6: 7e f5     cmp   y,$f5
12b8: f0 fc     beq   $12b6
12ba: 8f 00 f5  mov   $f5,#$00
12bd: f8 99     mov   x,$99
12bf: 8d 01     mov   y,#$01
12c1: 7e f5     cmp   y,$f5
12c3: d0 fc     bne   $12c1
12c5: e4 f4     mov   a,$f4
12c7: d5 00 0c  mov   $0c00+x,a
12ca: 3d        inc   x
12cb: cb f5     mov   $f5,y
12cd: fc        inc   y
12ce: 7e f5     cmp   y,$f5
12d0: d0 fc     bne   $12ce
12d2: e4 f4     mov   a,$f4
12d4: d5 00 0c  mov   $0c00+x,a
12d7: 3d        inc   x
12d8: cb f5     mov   $f5,y
12da: 7e f5     cmp   y,$f5
12dc: f0 fc     beq   $12da
12de: 8f 00 f5  mov   $f5,#$00
12e1: 8b 9b     dec   $9b
12e3: f0 06     beq   $12eb
12e5: 8b 9b     dec   $9b
12e7: d0 d6     bne   $12bf
12e9: 2f 01     bra   $12ec
12eb: 1d        dec   x
12ec: d8 99     mov   $99,x
12ee: 6f        ret

12ef: fa f4 f4  mov   ($f4),($f4)
12f2: 78 00 f4  cmp   $f4,#$00
12f5: d0 fb     bne   $12f2
12f7: 8f 00 f4  mov   $f4,#$00
12fa: 6f        ret

12fb: 78 01 f5  cmp   $f5,#$01
12fe: d0 fb     bne   $12fb
1300: e4 f4     mov   a,$f4
1302: 8f 01 f5  mov   $f5,#$01
1305: 78 02 f5  cmp   $f5,#$02
1308: d0 fb     bne   $1305
130a: eb f4     mov   y,$f4
130c: 6f        ret

130d: c4 f5     mov   $f5,a
130f: 78 02 f5  cmp   $f5,#$02
1312: f0 fb     beq   $130f
1314: 8f 00 f5  mov   $f5,#$00
1317: 6f        ret

1318: c4 f4     mov   $f4,a
131a: 8f 01 f5  mov   $f5,#$01
131d: 78 01 f5  cmp   $f5,#$01
1320: d0 fb     bne   $131d
1322: cb f4     mov   $f4,y
1324: 8f 02 f5  mov   $f5,#$02
1327: 78 02 f5  cmp   $f5,#$02
132a: d0 fb     bne   $1327
132c: 8f 00 f4  mov   $f4,#$00
132f: 8f 00 f5  mov   $f5,#$00
1332: 6f        ret

1333: ba 0e     movw  ya,$0e
1335: 6d        push  y
1336: 2d        push  a
1337: 3f d9 13  call  $13d9
133a: ae        pop   a
133b: ee        pop   y
133c: da 0e     movw  $0e,ya
133e: ba 0c     movw  ya,$0c
1340: f0 03     beq   $1345
1342: 5f d8 13  jmp   $13d8

1345: ba 04     movw  ya,$04
1347: 9a 02     subw  ya,$02
1349: 5a 0e     cmpw  ya,$0e
134b: b0 09     bcs   $1356
134d: 8f ff 0c  mov   $0c,#$ff
1350: 8f ff 0d  mov   $0d,#$ff
1353: 5f d8 13  jmp   $13d8

1356: 78 00 0a  cmp   $0a,#$00
1359: d0 20     bne   $137b
135b: fa 0b 0c  mov   ($0c),($0b)
135e: 8f 00 0d  mov   $0d,#$00
1361: 0b 0c     asl   $0c
1363: 2b 0d     rol   $0d
1365: e8 00     mov   a,#$00
1367: 8d 06     mov   y,#$06
1369: 7a 0c     addw  ya,$0c
136b: da 0c     movw  $0c,ya
136d: 8d 00     mov   y,#$00
136f: e4 0e     mov   a,$0e
1371: d7 0c     mov   ($0c)+y,a
1373: fc        inc   y
1374: e4 0f     mov   a,$0f
1376: d7 0c     mov   ($0c)+y,a
1378: 5f d0 13  jmp   $13d0

137b: 78 01 0a  cmp   $0a,#$01
137e: d0 20     bne   $13a0
1380: fa 0b 0c  mov   ($0c),($0b)
1383: 8f 00 0d  mov   $0d,#$00
1386: 0b 0c     asl   $0c
1388: 2b 0d     rol   $0d
138a: e8 00     mov   a,#$00
138c: 8d 08     mov   y,#$08
138e: 7a 0c     addw  ya,$0c
1390: da 0c     movw  $0c,ya
1392: 8d 00     mov   y,#$00
1394: e4 02     mov   a,$02
1396: d7 0c     mov   ($0c)+y,a
1398: fc        inc   y
1399: e4 03     mov   a,$03
139b: d7 0c     mov   ($0c)+y,a
139d: 5f d0 13  jmp   $13d0

13a0: 78 02 0a  cmp   $0a,#$02
13a3: d0 33     bne   $13d8
13a5: fa 0b 0c  mov   ($0c),($0b)
13a8: 8f 00 0d  mov   $0d,#$00
13ab: 0b 0c     asl   $0c
13ad: 2b 0d     rol   $0d
13af: 0b 0c     asl   $0c
13b1: 2b 0d     rol   $0d
13b3: e8 00     mov   a,#$00
13b5: 8d 0a     mov   y,#$0a
13b7: 7a 0c     addw  ya,$0c
13b9: da 0c     movw  $0c,ya
13bb: 8d 00     mov   y,#$00
13bd: e4 02     mov   a,$02
13bf: d7 0c     mov   ($0c)+y,a
13c1: fc        inc   y
13c2: e4 03     mov   a,$03
13c4: d7 0c     mov   ($0c)+y,a
13c6: fc        inc   y
13c7: e4 0e     mov   a,$0e
13c9: d7 0c     mov   ($0c)+y,a
13cb: fc        inc   y
13cc: e4 0f     mov   a,$0f
13ce: d7 0c     mov   ($0c)+y,a
13d0: ba 02     movw  ya,$02
13d2: da 0c     movw  $0c,ya
13d4: 7a 0e     addw  ya,$0e
13d6: da 02     movw  $02,ya
13d8: 6f        ret

13d9: 78 00 0a  cmp   $0a,#$00
13dc: d0 50     bne   $142e
13de: fa 0b 0c  mov   ($0c),($0b)
13e1: 8f 00 0d  mov   $0d,#$00
13e4: 0b 0c     asl   $0c
13e6: 2b 0d     rol   $0d
13e8: e8 00     mov   a,#$00
13ea: 8d 06     mov   y,#$06
13ec: 7a 0c     addw  ya,$0c
13ee: da 0c     movw  $0c,ya
13f0: 8d 00     mov   y,#$00
13f2: f7 0c     mov   a,($0c)+y
13f4: fc        inc   y
13f5: 17 0c     or    a,($0c)+y
13f7: d0 03     bne   $13fc
13f9: 5f a2 14  jmp   $14a2

13fc: f7 0c     mov   a,($0c)+y
13fe: c4 0f     mov   $0f,a
1400: dc        dec   y
1401: f7 0c     mov   a,($0c)+y
1403: c4 0e     mov   $0e,a
1405: fa 0b 0c  mov   ($0c),($0b)
1408: 8f 00 0d  mov   $0d,#$00
140b: 0b 0c     asl   $0c
140d: 2b 0d     rol   $0d
140f: 0b 0c     asl   $0c
1411: 2b 0d     rol   $0d
1413: e8 00     mov   a,#$00
1415: 8d 02     mov   y,#$02
1417: 7a 0c     addw  ya,$0c
1419: da 0c     movw  $0c,ya
141b: 8d 00     mov   y,#$00
141d: f7 0c     mov   a,($0c)+y
141f: 5d        mov   x,a
1420: fc        inc   y
1421: f7 0c     mov   a,($0c)+y
1423: d8 0c     mov   $0c,x
1425: c4 0d     mov   $0d,a
1427: 1a 0c     decw  $0c
1429: 1a 0c     decw  $0c
142b: 5f aa 14  jmp   $14aa

142e: 78 01 0a  cmp   $0a,#$01
1431: d0 31     bne   $1464
1433: fa 0b 0c  mov   ($0c),($0b)
1436: 8f 00 0d  mov   $0d,#$00
1439: 0b 0c     asl   $0c
143b: 2b 0d     rol   $0d
143d: e8 00     mov   a,#$00
143f: 8d 08     mov   y,#$08
1441: 7a 0c     addw  ya,$0c
1443: da 0c     movw  $0c,ya
1445: 8d 00     mov   y,#$00
1447: f7 0c     mov   a,($0c)+y
1449: fc        inc   y
144a: 17 0c     or    a,($0c)+y
144c: d0 03     bne   $1451
144e: 5f a2 14  jmp   $14a2

1451: f7 0c     mov   a,($0c)+y
1453: 5d        mov   x,a
1454: dc        dec   y
1455: f7 0c     mov   a,($0c)+y
1457: c4 0c     mov   $0c,a
1459: d8 0d     mov   $0d,x
145b: 8f 0c 0e  mov   $0e,#$0c
145e: 8f 00 0f  mov   $0f,#$00
1461: 5f aa 14  jmp   $14aa

1464: 78 02 0a  cmp   $0a,#$02
1467: d0 39     bne   $14a2
1469: fa 0b 0c  mov   ($0c),($0b)
146c: 8f 00 0d  mov   $0d,#$00
146f: 0b 0c     asl   $0c
1471: 2b 0d     rol   $0d
1473: 0b 0c     asl   $0c
1475: 2b 0d     rol   $0d
1477: e8 00     mov   a,#$00
1479: 8d 0a     mov   y,#$0a
147b: 7a 0c     addw  ya,$0c
147d: da 0c     movw  $0c,ya
147f: 8d 02     mov   y,#$02
1481: f7 0c     mov   a,($0c)+y
1483: fc        inc   y
1484: 17 0c     or    a,($0c)+y
1486: d0 03     bne   $148b
1488: 5f a2 14  jmp   $14a2

148b: f7 0c     mov   a,($0c)+y
148d: c4 0f     mov   $0f,a
148f: dc        dec   y
1490: f7 0c     mov   a,($0c)+y
1492: c4 0e     mov   $0e,a
1494: dc        dec   y
1495: f7 0c     mov   a,($0c)+y
1497: 5d        mov   x,a
1498: dc        dec   y
1499: f7 0c     mov   a,($0c)+y
149b: c4 0c     mov   $0c,a
149d: d8 0d     mov   $0d,x
149f: 5f aa 14  jmp   $14aa

14a2: e8 00     mov   a,#$00
14a4: 8d 00     mov   y,#$00
14a6: da 0c     movw  $0c,ya
14a8: da 0e     movw  $0e,ya
14aa: 6f        ret

14ab: f8 9a     mov   x,$9a
14ad: f5 00 0c  mov   a,$0c00+x
14b0: c4 16     mov   $16,a
14b2: 3d        inc   x
14b3: f5 00 0c  mov   a,$0c00+x
14b6: c4 17     mov   $17,a
14b8: 3d        inc   x
14b9: f5 00 0c  mov   a,$0c00+x
14bc: c4 18     mov   $18,a
14be: 3d        inc   x
14bf: f5 00 0c  mov   a,$0c00+x
14c2: c4 19     mov   $19,a
14c4: 3d        inc   x
14c5: d8 9a     mov   $9a,x
14c7: 5f fd 19  jmp   $19fd

14ca: f8 9a     mov   x,$9a
14cc: f5 00 0c  mov   a,$0c00+x
14cf: c4 16     mov   $16,a
14d1: 3d        inc   x
14d2: f5 00 0c  mov   a,$0c00+x
14d5: c4 17     mov   $17,a
14d7: 3d        inc   x
14d8: f5 00 0c  mov   a,$0c00+x
14db: c4 18     mov   $18,a
14dd: 3d        inc   x
14de: f5 00 0c  mov   a,$0c00+x
14e1: c4 19     mov   $19,a
14e3: 3d        inc   x
14e4: d8 9a     mov   $9a,x
14e6: cd 07     mov   x,#$07
14e8: e4 17     mov   a,$17
14ea: de 1e 12  cbne  $1e+x,$14ff
14ed: e4 16     mov   a,$16
14ef: de 26 0d  cbne  $26+x,$14ff
14f2: e4 19     mov   a,$19
14f4: de 66 08  cbne  $66+x,$14ff
14f7: f4 5e     mov   a,$5e+x
14f9: 28 01     and   a,#$01
14fb: d0 02     bne   $14ff
14fd: 2f 06     bra   $1505
14ff: 1d        dec   x
1500: 10 e6     bpl   $14e8
1502: 5f 5a 15  jmp   $155a

1505: d8 1a     mov   $1a,x
1507: f4 1e     mov   a,$1e+x
1509: c4 0b     mov   $0b,a
150b: 8f 01 0a  mov   $0a,#$01
150e: 3f d9 13  call  $13d9
1511: 3f c3 11  call  $11c3
1514: ba 0c     movw  ya,$0c
1516: d0 03     bne   $151b
1518: 5f 5a 15  jmp   $155a

151b: da 95     movw  $95,ya
151d: f8 1a     mov   x,$1a
151f: f4 5e     mov   a,$5e+x
1521: 08 01     or    a,#$01
1523: d4 5e     mov   $5e+x,a
1525: 8d 05     mov   y,#$05
1527: f7 95     mov   a,($95)+y
1529: 28 80     and   a,#$80
152b: d0 21     bne   $154e
152d: 8d 06     mov   y,#$06
152f: f7 95     mov   a,($95)+y
1531: 28 80     and   a,#$80
1533: f0 19     beq   $154e
1535: f7 95     mov   a,($95)+y
1537: 28 7f     and   a,#$7f
1539: c4 0b     mov   $0b,a
153b: 8f 02 0a  mov   $0a,#$02
153e: 3f d9 13  call  $13d9
1541: 3f c3 11  call  $11c3
1544: ba 0c     movw  ya,$0c
1546: d0 03     bne   $154b
1548: 5f 5a 15  jmp   $155a

154b: 5f 5a 15  jmp   $155a

154e: 8f 5c f2  mov   $f2,#$5c
1551: f5 67 21  mov   a,$2167+x
1554: c4 f3     mov   $f3,a             ; set KOF
1556: e8 ff     mov   a,#$ff
1558: d4 1e     mov   $1e+x,a
155a: 6f        ret

155b: 3f ef 12  call  $12ef
155e: 3f fb 12  call  $12fb
1561: c4 0b     mov   $0b,a
1563: e8 02     mov   a,#$02
1565: 3f 0d 13  call  $130d
1568: 3f fb 12  call  $12fb
156b: da 0e     movw  $0e,ya
156d: 3f 33 13  call  $1333
1570: e8 ff     mov   a,#$ff
1572: 8d ff     mov   y,#$ff
1574: 5a 0c     cmpw  ya,$0c
1576: d0 08     bne   $1580
1578: e8 03     mov   a,#$03
157a: 3f 0d 13  call  $130d
157d: 5f f8 15  jmp   $15f8

1580: e8 02     mov   a,#$02
1582: 3f 0d 13  call  $130d
1585: ba 0c     movw  ya,$0c
1587: da a5     movw  $a5,ya
1589: 8d 00     mov   y,#$00
158b: cd 01     mov   x,#$01
158d: 3e f5     cmp   x,$f5
158f: d0 fc     bne   $158d
1591: e4 f4     mov   a,$f4
1593: d7 0c     mov   ($0c)+y,a
1595: 3a 0c     incw  $0c
1597: d8 f5     mov   $f5,x
1599: 3d        inc   x
159a: 3e f5     cmp   x,$f5
159c: d0 fc     bne   $159a
159e: e4 f4     mov   a,$f4
15a0: d7 0c     mov   ($0c)+y,a
15a2: 3a 0c     incw  $0c
15a4: d8 f5     mov   $f5,x
15a6: cd 00     mov   x,#$00
15a8: 3e f5     cmp   x,$f5
15aa: d0 fc     bne   $15a8
15ac: d8 f5     mov   $f5,x
15ae: 1a 0e     decw  $0e
15b0: 1a 0e     decw  $0e
15b2: 30 04     bmi   $15b8
15b4: f0 02     beq   $15b8
15b6: 2f d3     bra   $158b
15b8: 8d 00     mov   y,#$00
15ba: f7 a5     mov   a,($a5)+y
15bc: c4 a7     mov   $a7,a
15be: fc        inc   y
15bf: f7 a5     mov   a,($a5)+y
15c1: c4 a8     mov   $a8,a
15c3: 3a a5     incw  $a5
15c5: 3a a5     incw  $a5
15c7: ba a5     movw  ya,$a5
15c9: 7a a7     addw  ya,$a7
15cb: da a7     movw  $a7,ya
15cd: fa 0b a9  mov   ($a9),($0b)
15d0: 8f 00 aa  mov   $aa,#$00
15d3: 0b a9     asl   $a9
15d5: 2b aa     rol   $aa
15d7: 0b a9     asl   $a9
15d9: 2b aa     rol   $aa
15db: e8 00     mov   a,#$00
15dd: 8d 02     mov   y,#$02
15df: 7a a9     addw  ya,$a9
15e1: da a9     movw  $a9,ya
15e3: 8d 00     mov   y,#$00
15e5: e4 a5     mov   a,$a5
15e7: d7 a9     mov   ($a9)+y,a
15e9: fc        inc   y
15ea: e4 a6     mov   a,$a6
15ec: d7 a9     mov   ($a9)+y,a
15ee: fc        inc   y
15ef: e4 a7     mov   a,$a7
15f1: d7 a9     mov   ($a9)+y,a
15f3: fc        inc   y
15f4: e4 a8     mov   a,$a8
15f6: d7 a9     mov   ($a9)+y,a
15f8: 6f        ret

15f9: 3f ef 12  call  $12ef
15fc: 3f fb 12  call  $12fb
15ff: c4 0b     mov   $0b,a
1601: e8 02     mov   a,#$02
1603: 3f 0d 13  call  $130d
1606: 3f fb 12  call  $12fb
1609: da 0e     movw  $0e,ya
160b: 3f 33 13  call  $1333
160e: e8 ff     mov   a,#$ff
1610: 8d ff     mov   y,#$ff
1612: 5a 0c     cmpw  ya,$0c
1614: d0 08     bne   $161e
1616: e8 03     mov   a,#$03
1618: 3f 0d 13  call  $130d
161b: 5f 52 16  jmp   $1652

161e: e8 02     mov   a,#$02
1620: 3f 0d 13  call  $130d
1623: 8d 00     mov   y,#$00
1625: cd 01     mov   x,#$01
1627: 3e f5     cmp   x,$f5
1629: d0 fc     bne   $1627
162b: e4 f4     mov   a,$f4
162d: d7 0c     mov   ($0c)+y,a
162f: 3a 0c     incw  $0c
1631: d8 f5     mov   $f5,x
1633: 3d        inc   x
1634: 3e f5     cmp   x,$f5
1636: d0 fc     bne   $1634
1638: e4 f4     mov   a,$f4
163a: d7 0c     mov   ($0c)+y,a
163c: 3a 0c     incw  $0c
163e: d8 f5     mov   $f5,x
1640: cd 00     mov   x,#$00
1642: 3e f5     cmp   x,$f5
1644: d0 fc     bne   $1642
1646: d8 f5     mov   $f5,x
1648: 1a 0e     decw  $0e
164a: 1a 0e     decw  $0e
164c: 30 04     bmi   $1652
164e: f0 02     beq   $1652
1650: 2f d3     bra   $1625
1652: 6f        ret

1653: 6f        ret

1654: cd 9d     mov   x,#$9d
1656: eb 9a     mov   y,$9a
1658: f6 00 0c  mov   a,$0c00+y
165b: af        mov   (x)+,a
165c: fc        inc   y
165d: f6 00 0c  mov   a,$0c00+y
1660: af        mov   (x)+,a
1661: fc        inc   y
1662: f6 00 0c  mov   a,$0c00+y
1665: af        mov   (x)+,a
1666: fc        inc   y
1667: fc        inc   y
1668: cb 9a     mov   $9a,y
166a: e4 9e     mov   a,$9e
166c: 68 00     cmp   a,#$00
166e: d0 1f     bne   $168f
1670: fa 9f 80  mov   ($80),($9f)
1673: 78 00 80  cmp   $80,#$00
1676: d0 14     bne   $168c
1678: cd 7f     mov   x,#$7f
167a: e8 80     mov   a,#$80
167c: d5 00 0d  mov   $0d00+x,a
167f: 1d        dec   x
1680: 10 fa     bpl   $167c
1682: cd 07     mov   x,#$07
1684: e8 40     mov   a,#$40
1686: d5 88 0f  mov   $0f88+x,a
1689: 1d        dec   x
168a: 10 fa     bpl   $1686
168c: 5f a7 17  jmp   $17a7

168f: 68 10     cmp   a,#$10
1691: d0 06     bne   $1699
1693: fa 9f 7e  mov   ($7e),($9f)
1696: 5f bf 1e  jmp   $1ebf

1699: 68 11     cmp   a,#$11
169b: d0 08     bne   $16a5
169d: e4 9f     mov   a,$9f
169f: 1c        asl   a
16a0: c4 7f     mov   $7f,a
16a2: 5f bf 1e  jmp   $1ebf

16a5: 68 12     cmp   a,#$12
16a7: d0 09     bne   $16b2
16a9: fa 9f 8a  mov   ($8a),($9f)
16ac: fa 9f 87  mov   ($87),($9f)
16af: 5f a7 17  jmp   $17a7

16b2: 68 13     cmp   a,#$13
16b4: d0 09     bne   $16bf
16b6: fa 9f 8b  mov   ($8b),($9f)
16b9: fa 9f 88  mov   ($88),($9f)
16bc: 5f a7 17  jmp   $17a7

16bf: 68 14     cmp   a,#$14
16c1: d0 09     bne   $16cc
16c3: fa 9f 8c  mov   ($8c),($9f)
16c6: fa 9f 89  mov   ($89),($9f)
16c9: 5f a7 17  jmp   $17a7

16cc: 68 0c     cmp   a,#$0c
16ce: d0 06     bne   $16d6
16d0: fa 9f 91  mov   ($91),($9f)
16d3: 5f 3e 1f  jmp   $1f3e

16d6: 68 0d     cmp   a,#$0d
16d8: d0 08     bne   $16e2
16da: fa 9f 92  mov   ($92),($9f)
16dd: 0b 92     asl   $92
16df: 5f 3e 1f  jmp   $1f3e

16e2: 68 15     cmp   a,#$15
16e4: d0 0a     bne   $16f0
16e6: f8 9d     mov   x,$9d
16e8: e4 9f     mov   a,$9f
16ea: d5 00 0f  mov   $0f00+x,a
16ed: 5f a7 17  jmp   $17a7

16f0: 68 16     cmp   a,#$16
16f2: d0 09     bne   $16fd
16f4: 8f 0d f2  mov   $f2,#$0d
16f7: fa 9f f3  mov   ($f3),($9f)       ; set EFB
16fa: 5f a7 17  jmp   $17a7

16fd: 68 17     cmp   a,#$17
16ff: d0 0c     bne   $170d
1701: 4b 9f     lsr   $9f
1703: 4b 9f     lsr   $9f
1705: 4b 9f     lsr   $9f
1707: fa 9f 93  mov   ($93),($9f)
170a: 5f 43 11  jmp   $1143

170d: 68 18     cmp   a,#$18
170f: 90 15     bcc   $1726
1711: 68 20     cmp   a,#$20
1713: b0 11     bcs   $1726
1715: 80        setc
1716: a8 18     sbc   a,#$18
1718: 9f        xcn   a
1719: 60        clrc
171a: 88 0f     adc   a,#$0f
171c: c4 f2     mov   $f2,a
171e: 0b 9f     asl   $9f
1720: fa 9f f3  mov   ($f3),($9f)       ; set FIR
1723: 5f a7 17  jmp   $17a7

1726: 68 20     cmp   a,#$20
1728: d0 3a     bne   $1764
172a: f8 9d     mov   x,$9d
172c: e4 9f     mov   a,$9f
172e: d5 80 0f  mov   $0f80+x,a
1731: 8f 00 1a  mov   $1a,#$00
1734: f8 1a     mov   x,$1a
1736: f4 1e     mov   a,$1e+x
1738: 68 ff     cmp   a,#$ff
173a: f0 1e     beq   $175a
173c: f4 66     mov   a,$66+x
173e: 9f        xcn   a
173f: 28 0f     and   a,#$0f
1741: 64 9d     cmp   a,$9d
1743: d0 15     bne   $175a
1745: f4 1e     mov   a,$1e+x
1747: c4 0b     mov   $0b,a
1749: 8f 01 0a  mov   $0a,#$01
174c: 3f d9 13  call  $13d9
174f: ba 0c     movw  ya,$0c
1751: f0 07     beq   $175a
1753: da 95     movw  $95,ya
1755: e4 1a     mov   a,$1a
1757: 3f ca 1a  call  $1aca
175a: ab 1a     inc   $1a
175c: 78 08 1a  cmp   $1a,#$08
175f: d0 d3     bne   $1734
1761: 5f a7 17  jmp   $17a7

1764: 68 21     cmp   a,#$21
1766: d0 3f     bne   $17a7
1768: 78 00 80  cmp   $80,#$00
176b: d0 03     bne   $1770
176d: 5f a7 17  jmp   $17a7

1770: f8 9d     mov   x,$9d
1772: e4 9f     mov   a,$9f
1774: d5 88 0f  mov   $0f88+x,a
1777: 8f 00 1a  mov   $1a,#$00
177a: f8 1a     mov   x,$1a
177c: f4 1e     mov   a,$1e+x
177e: 68 ff     cmp   a,#$ff
1780: f0 1e     beq   $17a0
1782: f4 66     mov   a,$66+x
1784: 9f        xcn   a
1785: 28 0f     and   a,#$0f
1787: 64 9d     cmp   a,$9d
1789: d0 15     bne   $17a0
178b: f4 1e     mov   a,$1e+x
178d: c4 0b     mov   $0b,a
178f: 8f 01 0a  mov   $0a,#$01
1792: 3f d9 13  call  $13d9
1795: ba 0c     movw  ya,$0c
1797: f0 07     beq   $17a0
1799: da 95     movw  $95,ya
179b: e4 1a     mov   a,$1a
179d: 3f ca 1a  call  $1aca
17a0: ab 1a     inc   $1a
17a2: 78 08 1a  cmp   $1a,#$08
17a5: d0 d3     bne   $177a
17a7: 6f        ret

17a8: cd 9d     mov   x,#$9d
17aa: eb 9a     mov   y,$9a
17ac: f6 00 0c  mov   a,$0c00+y
17af: af        mov   (x)+,a
17b0: fc        inc   y
17b1: f6 00 0c  mov   a,$0c00+y
17b4: af        mov   (x)+,a
17b5: fc        inc   y
17b6: f6 00 0c  mov   a,$0c00+y
17b9: af        mov   (x)+,a
17ba: fc        inc   y
17bb: fc        inc   y
17bc: cb 9a     mov   $9a,y
17be: e4 9e     mov   a,$9e
17c0: 68 01     cmp   a,#$01
17c2: d0 3d     bne   $1801
17c4: eb 9d     mov   y,$9d
17c6: e4 9f     mov   a,$9f
17c8: d6 80 0e  mov   $0e80+y,a
17cb: 8f 00 1a  mov   $1a,#$00
17ce: f8 1a     mov   x,$1a
17d0: f4 1e     mov   a,$1e+x
17d2: 68 ff     cmp   a,#$ff
17d4: f0 21     beq   $17f7
17d6: f4 66     mov   a,$66+x
17d8: 64 9d     cmp   a,$9d
17da: d0 1b     bne   $17f7
17dc: f4 1e     mov   a,$1e+x
17de: c4 0b     mov   $0b,a
17e0: 8f 01 0a  mov   $0a,#$01
17e3: 3f d9 13  call  $13d9
17e6: ba 0c     movw  ya,$0c
17e8: f0 0d     beq   $17f7
17ea: da 95     movw  $95,ya
17ec: 8d 01     mov   y,#$01
17ee: f7 95     mov   a,($95)+y
17f0: 30 05     bmi   $17f7
17f2: e4 1a     mov   a,$1a
17f4: 3f 8d 1b  call  $1b8d
17f7: ab 1a     inc   $1a
17f9: 78 08 1a  cmp   $1a,#$08
17fc: d0 d0     bne   $17ce
17fe: 5f 41 19  jmp   $1941

1801: 68 07     cmp   a,#$07
1803: d0 41     bne   $1846
1805: eb 9d     mov   y,$9d
1807: e4 9f     mov   a,$9f
1809: d6 80 0d  mov   $0d80+y,a
180c: 8f 00 1a  mov   $1a,#$00
180f: f8 1a     mov   x,$1a
1811: f4 1e     mov   a,$1e+x
1813: 68 ff     cmp   a,#$ff
1815: f0 25     beq   $183c
1817: f4 66     mov   a,$66+x
1819: 64 9d     cmp   a,$9d
181b: d0 1f     bne   $183c
181d: f4 5e     mov   a,$5e+x
181f: 28 01     and   a,#$01
1821: d0 19     bne   $183c
1823: e4 9f     mov   a,$9f
1825: d4 3e     mov   $3e+x,a
1827: f4 1e     mov   a,$1e+x
1829: c4 0b     mov   $0b,a
182b: 8f 01 0a  mov   $0a,#$01
182e: 3f d9 13  call  $13d9
1831: ba 0c     movw  ya,$0c
1833: f0 07     beq   $183c
1835: da 95     movw  $95,ya
1837: e4 1a     mov   a,$1a
1839: 3f ca 1a  call  $1aca
183c: ab 1a     inc   $1a
183e: 78 08 1a  cmp   $1a,#$08
1841: d0 cc     bne   $180f
1843: 5f 41 19  jmp   $1941

1846: 68 0a     cmp   a,#$0a
1848: d0 4b     bne   $1895
184a: 78 00 80  cmp   $80,#$00
184d: d0 03     bne   $1852
184f: 5f 41 19  jmp   $1941

1852: eb 9d     mov   y,$9d
1854: e4 9f     mov   a,$9f
1856: 1c        asl   a
1857: d6 00 0d  mov   $0d00+y,a
185a: 8f 00 1a  mov   $1a,#$00
185d: f8 1a     mov   x,$1a
185f: f4 1e     mov   a,$1e+x
1861: 68 ff     cmp   a,#$ff
1863: f0 26     beq   $188b
1865: f4 66     mov   a,$66+x
1867: 64 9d     cmp   a,$9d
1869: d0 20     bne   $188b
186b: f4 5e     mov   a,$5e+x
186d: 28 01     and   a,#$01
186f: d0 1a     bne   $188b
1871: e4 9f     mov   a,$9f
1873: 1c        asl   a
1874: d4 46     mov   $46+x,a
1876: f4 1e     mov   a,$1e+x
1878: c4 0b     mov   $0b,a
187a: 8f 01 0a  mov   $0a,#$01
187d: 3f d9 13  call  $13d9
1880: ba 0c     movw  ya,$0c
1882: f0 07     beq   $188b
1884: da 95     movw  $95,ya
1886: e4 1a     mov   a,$1a
1888: 3f ca 1a  call  $1aca
188b: ab 1a     inc   $1a
188d: 78 08 1a  cmp   $1a,#$08
1890: d0 cb     bne   $185d
1892: 5f 41 19  jmp   $1941

1895: 68 e0     cmp   a,#$e0
1897: d0 3b     bne   $18d4
1899: eb 9d     mov   y,$9d
189b: e4 9f     mov   a,$9f
189d: d6 00 0e  mov   $0e00+y,a
18a0: 8f 00 1a  mov   $1a,#$00
18a3: f8 1a     mov   x,$1a
18a5: f4 66     mov   a,$66+x
18a7: 64 9d     cmp   a,$9d
18a9: d0 1f     bne   $18ca
18ab: f4 1e     mov   a,$1e+x
18ad: 68 ff     cmp   a,#$ff
18af: f0 19     beq   $18ca
18b1: c4 0b     mov   $0b,a
18b3: 8f 01 0a  mov   $0a,#$01
18b6: 3f d9 13  call  $13d9
18b9: ba 0c     movw  ya,$0c
18bb: f0 0d     beq   $18ca
18bd: da 95     movw  $95,ya
18bf: 8d 09     mov   y,#$09
18c1: f7 95     mov   a,($95)+y
18c3: f0 05     beq   $18ca
18c5: e4 1a     mov   a,$1a
18c7: 3f 8d 1b  call  $1b8d
18ca: ab 1a     inc   $1a
18cc: 78 08 1a  cmp   $1a,#$08
18cf: d0 d2     bne   $18a3
18d1: 5f 41 19  jmp   $1941

18d4: 68 00     cmp   a,#$00
18d6: d0 69     bne   $1941
18d8: eb 9d     mov   y,$9d
18da: e4 9f     mov   a,$9f
18dc: 28 01     and   a,#$01
18de: f0 05     beq   $18e5
18e0: e8 80     mov   a,#$80
18e2: d6 00 0d  mov   $0d00+y,a
18e5: e4 9f     mov   a,$9f
18e7: 28 02     and   a,#$02
18e9: f0 05     beq   $18f0
18eb: e8 7f     mov   a,#$7f
18ed: d6 80 0d  mov   $0d80+y,a
18f0: e4 9f     mov   a,$9f
18f2: 28 04     and   a,#$04
18f4: f0 05     beq   $18fb
18f6: e8 40     mov   a,#$40
18f8: d6 00 0e  mov   $0e00+y,a
18fb: e4 9f     mov   a,$9f
18fd: 28 08     and   a,#$08
18ff: f0 05     beq   $1906
1901: e8 00     mov   a,#$00
1903: d6 80 0e  mov   $0e80+y,a
1906: e4 9f     mov   a,$9f
1908: 28 10     and   a,#$10
190a: f0 05     beq   $1911
190c: e8 00     mov   a,#$00
190e: d6 00 0f  mov   $0f00+y,a
1911: 8f 00 1a  mov   $1a,#$00
1914: f8 1a     mov   x,$1a
1916: f4 66     mov   a,$66+x
1918: 64 9d     cmp   a,$9d
191a: d0 1e     bne   $193a
191c: f4 1e     mov   a,$1e+x
191e: 68 ff     cmp   a,#$ff
1920: f0 18     beq   $193a
1922: c4 0b     mov   $0b,a
1924: 8f 01 0a  mov   $0a,#$01
1927: 3f d9 13  call  $13d9
192a: ba 0c     movw  ya,$0c
192c: f0 0c     beq   $193a
192e: da 95     movw  $95,ya
1930: e4 1a     mov   a,$1a
1932: 3f 8d 1b  call  $1b8d
1935: e4 1a     mov   a,$1a
1937: 3f ca 1a  call  $1aca
193a: ab 1a     inc   $1a
193c: 78 08 1a  cmp   $1a,#$08
193f: d0 f9     bne   $193a
1941: 6f        ret

1942: 8f 5c f2  mov   $f2,#$5c
1945: 8f ff f3  mov   $f3,#$ff          ; set KOF
1948: 3f c3 11  call  $11c3
194b: cd 07     mov   x,#$07
194d: 7d        mov   a,x
194e: 9f        xcn   a
194f: 08 08     or    a,#$08
1951: c4 f2     mov   $f2,a
1953: e4 f3     mov   a,$f3             ; set ENVX
1955: 68 01     cmp   a,#$01
1957: b0 ef     bcs   $1948
1959: 1d        dec   x
195a: 10 f1     bpl   $194d
195c: 8f 4c f2  mov   $f2,#$4c
195f: 8f 00 f3  mov   $f3,#$00          ; set KON
1962: 6f        ret

1963: 3f 42 19  call  $1942
1966: cd 07     mov   x,#$07
1968: e8 ff     mov   a,#$ff
196a: d4 1e     mov   $1e+x,a
196c: 1d        dec   x
196d: 10 fb     bpl   $196a
196f: 8f 00 99  mov   $99,#$00
1972: 8f 00 9a  mov   $9a,#$00
1975: 6f        ret

1976: 8f ff 1a  mov   $1a,#$ff
1979: 8f 00 1d  mov   $1d,#$00
197c: 8d 07     mov   y,#$07
197e: f7 95     mov   a,($95)+y
1980: 28 01     and   a,#$01
1982: f0 18     beq   $199c
1984: cd 07     mov   x,#$07
1986: e4 17     mov   a,$17
1988: 74 1e     cmp   a,$1e+x
198a: f0 05     beq   $1991
198c: 1d        dec   x
198d: 10 f9     bpl   $1988
198f: 2f 0b     bra   $199c
1991: d8 1a     mov   $1a,x
1993: 8d 07     mov   y,#$07
1995: f7 95     mov   a,($95)+y
1997: c4 1d     mov   $1d,a
1999: 5f bc 19  jmp   $19bc

199c: cd 07     mov   x,#$07
199e: f4 1e     mov   a,$1e+x
19a0: 68 ff     cmp   a,#$ff
19a2: f0 05     beq   $19a9
19a4: 1d        dec   x
19a5: 10 f7     bpl   $199e
19a7: 2f 13     bra   $19bc
19a9: 7d        mov   a,x
19aa: 9f        xcn   a
19ab: 08 08     or    a,#$08
19ad: c4 f2     mov   $f2,a
19af: e4 f3     mov   a,$f3             ; set ENVX
19b1: 68 08     cmp   a,#$08
19b3: 90 02     bcc   $19b7
19b5: 2f e7     bra   $199e
19b7: d8 1a     mov   $1a,x
19b9: 5f bc 19  jmp   $19bc

19bc: 78 ff 1a  cmp   $1a,#$ff
19bf: f0 0f     beq   $19d0
19c1: 78 02 1d  cmp   $1d,#$02
19c4: b0 0a     bcs   $19d0
19c6: 8f 5c f2  mov   $f2,#$5c
19c9: f8 1a     mov   x,$1a
19cb: f5 67 21  mov   a,$2167+x
19ce: c4 f3     mov   $f3,a             ; set KOF
19d0: 6f        ret

19d1: cd 00     mov   x,#$00
19d3: f4 1e     mov   a,$1e+x
19d5: 68 ff     cmp   a,#$ff
19d7: f0 1e     beq   $19f7
19d9: f4 5e     mov   a,$5e+x
19db: 28 01     and   a,#$01
19dd: f0 18     beq   $19f7
19df: 7d        mov   a,x
19e0: 9f        xcn   a
19e1: 08 08     or    a,#$08
19e3: c4 f2     mov   $f2,a
19e5: e4 f3     mov   a,$f3             ; set ENVX
19e7: 68 01     cmp   a,#$01
19e9: b0 0c     bcs   $19f7
19eb: e8 ff     mov   a,#$ff
19ed: d4 1e     mov   $1e+x,a
19ef: 8f 5c f2  mov   $f2,#$5c
19f2: f5 67 21  mov   a,$2167+x
19f5: c4 f3     mov   $f3,a             ; set KOF
19f7: 3d        inc   x
19f8: c8 08     cmp   x,#$08
19fa: d0 d7     bne   $19d3
19fc: 6f        ret

19fd: fa 17 0b  mov   ($0b),($17)
1a00: 8f 01 0a  mov   $0a,#$01
1a03: 3f d9 13  call  $13d9
1a06: 3f c3 11  call  $11c3
1a09: ba 0c     movw  ya,$0c
1a0b: d0 03     bne   $1a10
1a0d: 5f c9 1a  jmp   $1ac9

1a10: da 95     movw  $95,ya
1a12: 8d 0b     mov   y,#$0b
1a14: f7 95     mov   a,($95)+y
1a16: c4 1b     mov   $1b,a
1a18: eb 19     mov   y,$19
1a1a: f6 00 0d  mov   a,$0d00+y
1a1d: c4 1c     mov   $1c,a
1a1f: 3f 76 19  call  $1976
1a22: 3f c3 11  call  $11c3
1a25: 78 ff 1a  cmp   $1a,#$ff
1a28: d0 03     bne   $1a2d
1a2a: 5f c9 1a  jmp   $1ac9

1a2d: f8 19     mov   x,$19
1a2f: f5 80 0d  mov   a,$0d80+x
1a32: f8 1a     mov   x,$1a
1a34: d4 3e     mov   $3e+x,a
1a36: e4 17     mov   a,$17
1a38: d4 1e     mov   $1e+x,a
1a3a: e4 16     mov   a,$16
1a3c: d4 26     mov   $26+x,a
1a3e: 78 02 1d  cmp   $1d,#$02
1a41: b0 04     bcs   $1a47
1a43: e4 18     mov   a,$18
1a45: d4 2e     mov   $2e+x,a
1a47: e4 1b     mov   a,$1b
1a49: d4 36     mov   $36+x,a
1a4b: e4 1c     mov   a,$1c
1a4d: d4 46     mov   $46+x,a
1a4f: e4 19     mov   a,$19
1a51: d4 66     mov   $66+x,a
1a53: f4 5e     mov   a,$5e+x
1a55: 28 fe     and   a,#$fe
1a57: d4 5e     mov   $5e+x,a
1a59: 78 02 1d  cmp   $1d,#$02
1a5c: 90 12     bcc   $1a70
1a5e: e4 1a     mov   a,$1a
1a60: 3f 8d 1b  call  $1b8d
1a63: 3f c3 11  call  $11c3
1a66: e4 1a     mov   a,$1a
1a68: 3f 54 1d  call  $1d54
1a6b: 3f c3 11  call  $11c3
1a6e: 2f 20     bra   $1a90
1a70: e4 1a     mov   a,$1a
1a72: 3f ca 1a  call  $1aca
1a75: 3f c3 11  call  $11c3
1a78: e4 1a     mov   a,$1a
1a7a: 3f 8d 1b  call  $1b8d
1a7d: 3f c3 11  call  $11c3
1a80: e4 1a     mov   a,$1a
1a82: 3f 41 1d  call  $1d41
1a85: 3f c3 11  call  $11c3
1a88: e4 1a     mov   a,$1a
1a8a: 3f 54 1d  call  $1d54
1a8d: 3f c3 11  call  $11c3
1a90: 8f 4d f2  mov   $f2,#$4d
1a93: f8 19     mov   x,$19
1a95: f5 00 0f  mov   a,$0f00+x
1a98: 68 40     cmp   a,#$40
1a9a: 90 0d     bcc   $1aa9
1a9c: f8 1a     mov   x,$1a
1a9e: e4 90     mov   a,$90
1aa0: 15 67 21  or    a,$2167+x
1aa3: c4 f3     mov   $f3,a             ; set EON
1aa5: c4 90     mov   $90,a
1aa7: 2f 0b     bra   $1ab4
1aa9: f8 1a     mov   x,$1a
1aab: e4 90     mov   a,$90
1aad: 35 6f 21  and   a,$216f+x
1ab0: c4 f3     mov   $f3,a
1ab2: c4 90     mov   $90,a
1ab4: 78 02 1d  cmp   $1d,#$02
1ab7: b0 10     bcs   $1ac9
1ab9: f8 1a     mov   x,$1a
1abb: 8f 5c f2  mov   $f2,#$5c
1abe: 8f 00 f3  mov   $f3,#$00          ; set KOF
1ac1: 8f 4c f2  mov   $f2,#$4c
1ac4: f5 67 21  mov   a,$2167+x
1ac7: c4 f3     mov   $f3,a             ; set KON
1ac9: 6f        ret

1aca: c4 a5     mov   $a5,a
1acc: 5d        mov   x,a
1acd: f4 46     mov   a,$46+x
1acf: c4 a6     mov   $a6,a
1ad1: f4 3e     mov   a,$3e+x
1ad3: 1c        asl   a
1ad4: c4 a7     mov   $a7,a
1ad6: f4 66     mov   a,$66+x
1ad8: 9f        xcn   a
1ad9: 28 0f     and   a,#$0f
1adb: 5d        mov   x,a
1adc: f5 88 0f  mov   a,$0f88+x
1adf: 1c        asl   a
1ae0: c4 ab     mov   $ab,a
1ae2: f5 80 0f  mov   a,$0f80+x
1ae5: 1c        asl   a
1ae6: eb a7     mov   y,$a7
1ae8: cf        mul   ya
1ae9: cb a7     mov   $a7,y
1aeb: 8d 05     mov   y,#$05
1aed: f7 95     mov   a,($95)+y
1aef: 28 80     and   a,#$80
1af1: f0 0a     beq   $1afd
1af3: f8 a5     mov   x,$a5
1af5: f4 2e     mov   a,$2e+x
1af7: 1c        asl   a
1af8: eb a7     mov   y,$a7
1afa: cf        mul   ya
1afb: cb a7     mov   $a7,y
1afd: 69 ab a6  cmp   ($a6),($ab)
1b00: d0 09     bne   $1b0b
1b02: fa a7 a8  mov   ($a8),($a7)
1b05: fa a7 a9  mov   ($a9),($a7)
1b08: 5f 64 1b  jmp   $1b64

1b0b: 69 ab a6  cmp   ($a6),($ab)
1b0e: b0 07     bcs   $1b17
1b10: e4 ab     mov   a,$ab
1b12: 80        setc
1b13: a4 a6     sbc   a,$a6
1b15: 2f 05     bra   $1b1c
1b17: e4 a6     mov   a,$a6
1b19: 80        setc
1b1a: a4 ab     sbc   a,$ab
1b1c: fd        mov   y,a
1b1d: 68 80     cmp   a,#$80
1b1f: d0 01     bne   $1b22
1b21: dc        dec   y
1b22: e8 00     mov   a,#$00
1b24: f8 ab     mov   x,$ab
1b26: 9e        div   ya,x
1b27: eb a7     mov   y,$a7
1b29: cf        mul   ya
1b2a: cb aa     mov   $aa,y
1b2c: 69 ab a6  cmp   ($a6),($ab)
1b2f: b0 1b     bcs   $1b4c
1b31: e4 a7     mov   a,$a7
1b33: 60        clrc
1b34: 84 aa     adc   a,$aa
1b36: c4 a8     mov   $a8,a
1b38: 90 03     bcc   $1b3d
1b3a: 8f ff a8  mov   $a8,#$ff
1b3d: e4 a7     mov   a,$a7
1b3f: 80        setc
1b40: a4 aa     sbc   a,$aa
1b42: c4 a9     mov   $a9,a
1b44: b0 1e     bcs   $1b64
1b46: 8f 00 a9  mov   $a9,#$00
1b49: 5f 64 1b  jmp   $1b64

1b4c: e4 a7     mov   a,$a7
1b4e: 80        setc
1b4f: a4 aa     sbc   a,$aa
1b51: c4 a8     mov   $a8,a
1b53: b0 03     bcs   $1b58
1b55: 8f 00 a8  mov   $a8,#$00
1b58: e4 a7     mov   a,$a7
1b5a: 60        clrc
1b5b: 84 aa     adc   a,$aa
1b5d: c4 a9     mov   $a9,a
1b5f: 90 03     bcc   $1b64
1b61: 8f ff a9  mov   $a9,#$ff
1b64: 4b a8     lsr   $a8
1b66: 78 80 a8  cmp   $a8,#$80
1b69: 90 03     bcc   $1b6e
1b6b: 8f 7f a8  mov   $a8,#$7f
1b6e: 4b a9     lsr   $a9
1b70: 78 80 a9  cmp   $a9,#$80
1b73: 90 03     bcc   $1b78
1b75: 8f 7f a9  mov   $a9,#$7f
1b78: e4 a5     mov   a,$a5
1b7a: 9f        xcn   a
1b7b: 08 00     or    a,#$00
1b7d: c4 f2     mov   $f2,a
1b7f: fa a8 f3  mov   ($f3),($a8)       ; set VOL(L)
1b82: e4 a5     mov   a,$a5
1b84: 9f        xcn   a
1b85: 08 01     or    a,#$01
1b87: c4 f2     mov   $f2,a
1b89: fa a9 f3  mov   ($f3),($a9)       ; set VOL(R)
1b8c: 6f        ret

1b8d: c4 a5     mov   $a5,a
1b8f: 5d        mov   x,a
1b90: 8d 04     mov   y,#$04
1b92: f4 26     mov   a,$26+x
1b94: 80        setc
1b95: b7 95     sbc   a,($95)+y
1b97: 60        clrc
1b98: 88 40     adc   a,#$40
1b9a: c4 a7     mov   $a7,a
1b9c: 8d 08     mov   y,#$08
1b9e: f7 95     mov   a,($95)+y
1ba0: 30 05     bmi   $1ba7
1ba2: 1c        asl   a
1ba3: c4 a6     mov   $a6,a
1ba5: 2f 11     bra   $1bb8
1ba7: e8 00     mov   a,#$00
1ba9: 80        setc
1baa: b7 95     sbc   a,($95)+y
1bac: 1c        asl   a
1bad: c4 a6     mov   $a6,a
1baf: e8 00     mov   a,#$00
1bb1: 80        setc
1bb2: a4 a6     sbc   a,$a6
1bb4: c4 a6     mov   $a6,a
1bb6: 8b a7     dec   $a7
1bb8: fb 66     mov   y,$66+x
1bba: f6 00 0e  mov   a,$0e00+y
1bbd: 1c        asl   a
1bbe: 10 13     bpl   $1bd3
1bc0: 80        setc
1bc1: a8 80     sbc   a,#$80
1bc3: 1c        asl   a
1bc4: c4 a8     mov   $a8,a
1bc6: 8d 09     mov   y,#$09
1bc8: f7 95     mov   a,($95)+y
1bca: eb a8     mov   y,$a8
1bcc: cf        mul   ya
1bcd: 7a a6     addw  ya,$a6
1bcf: da a6     movw  $a6,ya
1bd1: 2f 19     bra   $1bec
1bd3: c4 a8     mov   $a8,a
1bd5: e8 7f     mov   a,#$7f
1bd7: 80        setc
1bd8: a4 a8     sbc   a,$a8
1bda: 1c        asl   a
1bdb: c4 a8     mov   $a8,a
1bdd: 8d 09     mov   y,#$09
1bdf: f7 95     mov   a,($95)+y
1be1: eb a8     mov   y,$a8
1be3: cf        mul   ya
1be4: da a8     movw  $a8,ya
1be6: ba a6     movw  ya,$a6
1be8: 9a a8     subw  ya,$a8
1bea: da a6     movw  $a6,ya
1bec: fb 66     mov   y,$66+x
1bee: f6 80 0e  mov   a,$0e80+y
1bf1: f0 54     beq   $1c47
1bf3: 8d 01     mov   y,#$01
1bf5: f7 95     mov   a,($95)+y
1bf7: 30 4e     bmi   $1c47
1bf9: fd        mov   y,a
1bfa: f6 81 00  mov   a,$0081+y
1bfd: 80        setc
1bfe: a8 80     sbc   a,#$80
1c00: c4 a8     mov   $a8,a
1c02: 8d 02     mov   y,#$02
1c04: f7 95     mov   a,($95)+y
1c06: c4 a9     mov   $a9,a
1c08: e4 a8     mov   a,$a8
1c0a: 30 1c     bmi   $1c28
1c0c: 1c        asl   a
1c0d: eb a9     mov   y,$a9
1c0f: cf        mul   ya
1c10: da b5     movw  $b5,ya
1c12: fb 66     mov   y,$66+x
1c14: f6 80 0e  mov   a,$0e80+y
1c17: 1c        asl   a
1c18: c4 b7     mov   $b7,a
1c1a: 8f 00 b8  mov   $b8,#$00
1c1d: 3f 99 20  call  $2099
1c20: ba b6     movw  ya,$b6
1c22: 7a a6     addw  ya,$a6
1c24: da a6     movw  $a6,ya
1c26: 2f 1f     bra   $1c47
1c28: e8 01     mov   a,#$01
1c2a: 80        setc
1c2b: a4 a8     sbc   a,$a8
1c2d: 1c        asl   a
1c2e: eb a9     mov   y,$a9
1c30: cf        mul   ya
1c31: da b5     movw  $b5,ya
1c33: fb 66     mov   y,$66+x
1c35: f6 80 0e  mov   a,$0e80+y
1c38: 1c        asl   a
1c39: c4 b7     mov   $b7,a
1c3b: 8f 00 b8  mov   $b8,#$00
1c3e: 3f 99 20  call  $2099
1c41: ba a6     movw  ya,$a6
1c43: 9a b6     subw  ya,$b6
1c45: da a6     movw  $a6,ya
1c47: 78 58 a7  cmp   $a7,#$58
1c4a: 90 06     bcc   $1c52
1c4c: 80        setc
1c4d: b8 0c a7  sbc   $a7,#$0c
1c50: 2f f5     bra   $1c47
1c52: e4 a7     mov   a,$a7
1c54: 1c        asl   a
1c55: fd        mov   y,a
1c56: f6 8f 1c  mov   a,$1c8f+y
1c59: c4 a8     mov   $a8,a
1c5b: f6 90 1c  mov   a,$1c90+y
1c5e: c4 a9     mov   $a9,a
1c60: f6 91 1c  mov   a,$1c91+y
1c63: 80        setc
1c64: a4 a8     sbc   a,$a8
1c66: c4 b5     mov   $b5,a
1c68: f6 92 1c  mov   a,$1c92+y
1c6b: a4 a9     sbc   a,$a9
1c6d: c4 b6     mov   $b6,a
1c6f: fa a6 b7  mov   ($b7),($a6)
1c72: 8f 00 b8  mov   $b8,#$00
1c75: 3f 99 20  call  $2099
1c78: ba a8     movw  ya,$a8
1c7a: 7a b6     addw  ya,$b6
1c7c: da a8     movw  $a8,ya
1c7e: e4 a5     mov   a,$a5
1c80: 9f        xcn   a
1c81: 08 02     or    a,#$02
1c83: c4 f2     mov   $f2,a
1c85: fa a8 f3  mov   ($f3),($a8)       ; set P(L)
1c88: bc        inc   a
1c89: c4 f2     mov   $f2,a
1c8b: fa a9 f3  mov   ($f3),($a9)       ; set P(H)
1c8e: 6f        ret

1c8f: dw $0066
1c91: dw $006c
1c93: dw $0072
1c95: dw $0079
1c97: dw $0080
1c99: dw $0088
1c9b: dw $0090
1c9d: dw $0098
1c9f: dw $00a1
1ca1: dw $00ab
1ca3: dw $00b5
1ca5: dw $00c0
1ca7: dw $00cb
1ca9: dw $00d7
1cab: dw $00e4
1cad: dw $00f2
1caf: dw $0100
1cb1: dw $010f
1cb3: dw $011f
1cb5: dw $0130
1cb7: dw $0143
1cb9: dw $0156
1cbb: dw $016a
1cbd: dw $0180
1cbf: dw $0196
1cc1: dw $01af
1cc3: dw $01c8
1cc5: dw $01e3
1cc7: dw $0200
1cc9: dw $021e
1ccb: dw $023f
1ccd: dw $0261
1ccf: dw $0285
1cd1: dw $02ab
1cd3: dw $02d4
1cd5: dw $02ff
1cd7: dw $032d
1cd9: dw $035d
1cdb: dw $0390
1cdd: dw $03c7
1cdf: dw $0400
1ce1: dw $043d
1ce3: dw $047d
1ce5: dw $04c2
1ce7: dw $050a
1ce9: dw $0557
1ceb: dw $05a8
1ced: dw $05fe
1cef: dw $065a
1cf1: dw $06ba
1cf3: dw $0721
1cf5: dw $078d
1cf7: dw $0800
1cf9: dw $087a
1cfb: dw $08fb
1cfd: dw $0983
1cff: dw $0a14
1d01: dw $0aae
1d03: dw $0b50
1d05: dw $0bfd
1d07: dw $0cb3
1d09: dw $0d74
1d0b: dw $0e41
1d0d: dw $0f1a
1d0f: dw $1000
1d11: dw $10f4
1d13: dw $11f6
1d15: dw $1307
1d17: dw $1429
1d19: dw $155c
1d1b: dw $16a1
1d1d: dw $17f9
1d1f: dw $1966
1d21: dw $1ae9
1d23: dw $1c82
1d25: dw $1e34
1d27: dw $2000
1d29: dw $21e7
1d2b: dw $23eb
1d2d: dw $260e
1d2f: dw $2851
1d31: dw $2ab7
1d33: dw $2d41
1d35: dw $2ff2
1d37: dw $32cc
1d39: dw $35d1
1d3b: dw $3904
1d3d: dw $3c68
1d3f: dw $4000

1d41: c4 a5     mov   $a5,a
1d43: 8d 00     mov   y,#$00
1d45: f7 95     mov   a,($95)+y
1d47: c4 a6     mov   $a6,a
1d49: e4 a5     mov   a,$a5
1d4b: 9f        xcn   a
1d4c: 08 04     or    a,#$04
1d4e: c4 f2     mov   $f2,a
1d50: fa a6 f3  mov   ($f3),($a6)       ; set SRCN
1d53: 6f        ret

1d54: c4 a5     mov   $a5,a
1d56: 8d 05     mov   y,#$05
1d58: f7 95     mov   a,($95)+y
1d5a: c4 a6     mov   $a6,a
1d5c: fc        inc   y
1d5d: f7 95     mov   a,($95)+y
1d5f: c4 a7     mov   $a7,a
1d61: e4 a6     mov   a,$a6
1d63: 28 80     and   a,#$80
1d65: f0 1f     beq   $1d86
1d67: 78 02 1d  cmp   $1d,#$02
1d6a: 90 03     bcc   $1d6f
1d6c: 5f b2 1d  jmp   $1db2

1d6f: e4 a5     mov   a,$a5
1d71: 9f        xcn   a
1d72: 08 05     or    a,#$05
1d74: c4 f2     mov   $f2,a
1d76: fa a6 f3  mov   ($f3),($a6)       ; set ADSR(1)
1d79: e4 a5     mov   a,$a5
1d7b: 9f        xcn   a
1d7c: 08 06     or    a,#$06
1d7e: c4 f2     mov   $f2,a
1d80: fa a7 f3  mov   ($f3),($a7)       ; set ADSR(2)
1d83: 5f b2 1d  jmp   $1db2

1d86: e4 a7     mov   a,$a7
1d88: 28 80     and   a,#$80
1d8a: d0 26     bne   $1db2
1d8c: 78 02 1d  cmp   $1d,#$02
1d8f: 90 03     bcc   $1d94
1d91: 5f b2 1d  jmp   $1db2

1d94: e4 a5     mov   a,$a5
1d96: 9f        xcn   a
1d97: 08 05     or    a,#$05
1d99: c4 f2     mov   $f2,a
1d9b: fa a6 f3  mov   ($f3),($a6)       ; set ADSR(1)
1d9e: e4 a5     mov   a,$a5
1da0: 9f        xcn   a
1da1: 08 07     or    a,#$07
1da3: c4 f2     mov   $f2,a
1da5: f8 a5     mov   x,$a5
1da7: f4 2e     mov   a,$2e+x
1da9: 1c        asl   a
1daa: eb a7     mov   y,$a7
1dac: cf        mul   ya
1dad: cb f3     mov   $f3,y             ; set GAIN
1daf: 5f b2 1d  jmp   $1db2

1db2: 6f        ret

1db3: c4 a5     mov   $a5,a
1db5: 8d 05     mov   y,#$05
1db7: f7 95     mov   a,($95)+y
1db9: 28 80     and   a,#$80
1dbb: f0 03     beq   $1dc0
1dbd: 5f cb 1d  jmp   $1dcb

1dc0: 8d 06     mov   y,#$06
1dc2: f7 95     mov   a,($95)+y
1dc4: 28 80     and   a,#$80
1dc6: d0 03     bne   $1dcb
1dc8: 5f cb 1d  jmp   $1dcb

1dcb: 6f        ret

1dcc: fa fd 19  mov   ($19),($fd)
1dcf: 78 00 19  cmp   $19,#$00
1dd2: d0 03     bne   $1dd7
1dd4: 5f 3b 1e  jmp   $1e3b

1dd7: 8f 00 1a  mov   $1a,#$00
1dda: f8 1a     mov   x,$1a
1ddc: f4 1e     mov   a,$1e+x
1dde: 68 ff     cmp   a,#$ff
1de0: f0 4c     beq   $1e2e
1de2: f4 56     mov   a,$56+x
1de4: 80        setc
1de5: a4 19     sbc   a,$19
1de7: d4 56     mov   $56+x,a
1de9: 90 04     bcc   $1def
1deb: f0 02     beq   $1def
1ded: 2f 3f     bra   $1e2e
1def: f4 4e     mov   a,$4e+x
1df1: bc        inc   a
1df2: d4 4e     mov   $4e+x,a
1df4: f4 1e     mov   a,$1e+x
1df6: c4 0b     mov   $0b,a
1df8: 8f 01 0a  mov   $0a,#$01
1dfb: 3f d9 13  call  $13d9
1dfe: ba 0c     movw  ya,$0c
1e00: f0 2c     beq   $1e2e
1e02: da 95     movw  $95,ya
1e04: 8d 05     mov   y,#$05
1e06: f7 95     mov   a,($95)+y
1e08: 28 80     and   a,#$80
1e0a: d0 22     bne   $1e2e
1e0c: 8d 06     mov   y,#$06
1e0e: f7 95     mov   a,($95)+y
1e10: 28 80     and   a,#$80
1e12: f0 1a     beq   $1e2e
1e14: f7 95     mov   a,($95)+y
1e16: 28 7f     and   a,#$7f
1e18: c4 0b     mov   $0b,a
1e1a: 8f 02 0a  mov   $0a,#$02
1e1d: 3f d9 13  call  $13d9
1e20: ba 0c     movw  ya,$0c
1e22: f0 0a     beq   $1e2e
1e24: da 97     movw  $97,ya
1e26: e4 1a     mov   a,$1a
1e28: 3f b3 1d  call  $1db3
1e2b: 3f 3c 1e  call  $1e3c
1e2e: 3f c3 11  call  $11c3
1e31: ab 1a     inc   $1a
1e33: 78 08 1a  cmp   $1a,#$08
1e36: d0 a2     bne   $1dda
1e38: 5f 07 12  jmp   $1207

1e3b: 6f        ret

1e3c: fa fe 8e  mov   ($8e),($fe)
1e3f: 78 00 8e  cmp   $8e,#$00
1e42: d0 03     bne   $1e47
1e44: 5f ae 1e  jmp   $1eae

1e47: 8f 00 8d  mov   $8d,#$00
1e4a: f8 8d     mov   x,$8d
1e4c: f4 87     mov   a,$87+x
1e4e: 80        setc
1e4f: a4 8e     sbc   a,$8e
1e51: d4 87     mov   $87+x,a
1e53: f0 04     beq   $1e59
1e55: 90 02     bcc   $1e59
1e57: 2f 4b     bra   $1ea4
1e59: 60        clrc
1e5a: 94 8a     adc   a,$8a+x
1e5c: d4 87     mov   $87+x,a
1e5e: f4 84     mov   a,$84+x
1e60: bc        inc   a
1e61: 28 0f     and   a,#$0f
1e63: d4 84     mov   $84+x,a
1e65: fd        mov   y,a
1e66: f6 af 1e  mov   a,$1eaf+y
1e69: d4 81     mov   $81+x,a
1e6b: 8f 00 8f  mov   $8f,#$00
1e6e: f8 8f     mov   x,$8f
1e70: f4 1e     mov   a,$1e+x
1e72: 68 ff     cmp   a,#$ff
1e74: f0 27     beq   $1e9d
1e76: fb 66     mov   y,$66+x
1e78: f6 80 0e  mov   a,$0e80+y
1e7b: f0 20     beq   $1e9d
1e7d: f4 1e     mov   a,$1e+x
1e7f: c4 0b     mov   $0b,a
1e81: 8f 01 0a  mov   $0a,#$01
1e84: 3f d9 13  call  $13d9
1e87: ba 0c     movw  ya,$0c
1e89: f0 12     beq   $1e9d
1e8b: da 95     movw  $95,ya
1e8d: 8d 01     mov   y,#$01
1e8f: f7 95     mov   a,($95)+y
1e91: 64 8d     cmp   a,$8d
1e93: d0 08     bne   $1e9d
1e95: e4 8f     mov   a,$8f
1e97: 3f 8d 1b  call  $1b8d
1e9a: 3f c3 11  call  $11c3
1e9d: ab 8f     inc   $8f
1e9f: 78 08 8f  cmp   $8f,#$08
1ea2: d0 ca     bne   $1e6e
1ea4: ab 8d     inc   $8d
1ea6: 78 03 8d  cmp   $8d,#$03
1ea9: f0 03     beq   $1eae
1eab: 5f 4a 1e  jmp   $1e4a

1eae: 6f        ret

1eaf: db $00,$20,$40,$60,$80,$a0,$c0,$e0
1eb7: db $ff,$e0,$c0,$a0,$80,$60,$40,$20

1ebf: 78 80 7f  cmp   $7f,#$80
1ec2: d0 09     bne   $1ecd
1ec4: fa 7e a8  mov   ($a8),($7e)
1ec7: fa 7e a9  mov   ($a9),($7e)
1eca: 5f 21 1f  jmp   $1f21

1ecd: 78 80 7f  cmp   $7f,#$80
1ed0: b0 07     bcs   $1ed9
1ed2: e8 80     mov   a,#$80
1ed4: 80        setc
1ed5: a4 7f     sbc   a,$7f
1ed7: 2f 05     bra   $1ede
1ed9: e4 7f     mov   a,$7f
1edb: 80        setc
1edc: a8 80     sbc   a,#$80
1ede: fd        mov   y,a
1edf: e8 00     mov   a,#$00
1ee1: cd 80     mov   x,#$80
1ee3: 9e        div   ya,x
1ee4: eb 7e     mov   y,$7e
1ee6: cf        mul   ya
1ee7: cb aa     mov   $aa,y
1ee9: 78 80 7f  cmp   $7f,#$80
1eec: b0 1b     bcs   $1f09
1eee: e4 7e     mov   a,$7e
1ef0: 60        clrc
1ef1: 84 aa     adc   a,$aa
1ef3: c4 a8     mov   $a8,a
1ef5: 90 03     bcc   $1efa
1ef7: 8f 7f a8  mov   $a8,#$7f
1efa: e4 7e     mov   a,$7e
1efc: 80        setc
1efd: a4 aa     sbc   a,$aa
1eff: c4 a9     mov   $a9,a
1f01: b0 1e     bcs   $1f21
1f03: 8f 00 a9  mov   $a9,#$00
1f06: 5f 21 1f  jmp   $1f21

1f09: e4 7e     mov   a,$7e
1f0b: 80        setc
1f0c: a4 aa     sbc   a,$aa
1f0e: c4 a8     mov   $a8,a
1f10: b0 03     bcs   $1f15
1f12: 8f 00 a8  mov   $a8,#$00
1f15: e4 7e     mov   a,$7e
1f17: 60        clrc
1f18: 84 aa     adc   a,$aa
1f1a: c4 a9     mov   $a9,a
1f1c: 90 03     bcc   $1f21
1f1e: 8f 7f a9  mov   $a9,#$7f
1f21: 78 80 a8  cmp   $a8,#$80
1f24: 90 03     bcc   $1f29
1f26: 8f 7f a8  mov   $a8,#$7f
1f29: 78 80 a9  cmp   $a9,#$80
1f2c: 90 03     bcc   $1f31
1f2e: 8f 7f a9  mov   $a9,#$7f
1f31: 8f 0c f2  mov   $f2,#$0c
1f34: fa a8 f3  mov   ($f3),($a8)       ; set MVOL(L)
1f37: 8f 1c f2  mov   $f2,#$1c
1f3a: fa a9 f3  mov   ($f3),($a9)       ; set MVOL(R)
1f3d: 6f        ret

1f3e: 78 80 92  cmp   $92,#$80
1f41: d0 09     bne   $1f4c
1f43: fa 91 a8  mov   ($a8),($91)
1f46: fa 91 a9  mov   ($a9),($91)
1f49: 5f a0 1f  jmp   $1fa0

1f4c: 78 80 92  cmp   $92,#$80
1f4f: b0 07     bcs   $1f58
1f51: e8 80     mov   a,#$80
1f53: 80        setc
1f54: a4 92     sbc   a,$92
1f56: 2f 05     bra   $1f5d
1f58: e4 92     mov   a,$92
1f5a: 80        setc
1f5b: a8 80     sbc   a,#$80
1f5d: fd        mov   y,a
1f5e: e8 00     mov   a,#$00
1f60: cd 80     mov   x,#$80
1f62: 9e        div   ya,x
1f63: eb 91     mov   y,$91
1f65: cf        mul   ya
1f66: cb aa     mov   $aa,y
1f68: 78 80 92  cmp   $92,#$80
1f6b: b0 1b     bcs   $1f88
1f6d: e4 91     mov   a,$91
1f6f: 60        clrc
1f70: 84 aa     adc   a,$aa
1f72: c4 a8     mov   $a8,a
1f74: 90 03     bcc   $1f79
1f76: 8f 7f a8  mov   $a8,#$7f
1f79: e4 91     mov   a,$91
1f7b: 80        setc
1f7c: a4 aa     sbc   a,$aa
1f7e: c4 a9     mov   $a9,a
1f80: b0 1e     bcs   $1fa0
1f82: 8f 00 a9  mov   $a9,#$00
1f85: 5f a0 1f  jmp   $1fa0

1f88: e4 91     mov   a,$91
1f8a: 80        setc
1f8b: a4 aa     sbc   a,$aa
1f8d: c4 a8     mov   $a8,a
1f8f: b0 03     bcs   $1f94
1f91: 8f 00 a8  mov   $a8,#$00
1f94: e4 91     mov   a,$91
1f96: 60        clrc
1f97: 84 aa     adc   a,$aa
1f99: c4 a9     mov   $a9,a
1f9b: 90 03     bcc   $1fa0
1f9d: 8f 7f a9  mov   $a9,#$7f
1fa0: 78 80 a8  cmp   $a8,#$80
1fa3: 90 03     bcc   $1fa8
1fa5: 8f 7f a8  mov   $a8,#$7f
1fa8: 78 80 a9  cmp   $a9,#$80
1fab: 90 03     bcc   $1fb0
1fad: 8f 7f a9  mov   $a9,#$7f
1fb0: 8f 2c f2  mov   $f2,#$2c
1fb3: fa a8 f3  mov   ($f3),($a8)       ; set EVOL(L)
1fb6: 8f 3c f2  mov   $f2,#$3c
1fb9: fa a9 f3  mov   ($f3),($a9)       ; set EVOL(R)
1fbc: 6f        ret

1fbd: 3f ef 12  call  $12ef
1fc0: 3f fb 12  call  $12fb
1fc3: da a5     movw  $a5,ya
1fc5: e8 02     mov   a,#$02
1fc7: 3f 0d 13  call  $130d
1fca: e4 a5     mov   a,$a5
1fcc: 68 00     cmp   a,#$00
1fce: f0 02     beq   $1fd2
1fd0: 2f 19     bra   $1feb
1fd2: cd 00     mov   x,#$00
1fd4: 8d 00     mov   y,#$00
1fd6: f4 1e     mov   a,$1e+x
1fd8: 68 ff     cmp   a,#$ff
1fda: f0 01     beq   $1fdd
1fdc: fc        inc   y
1fdd: 3d        inc   x
1fde: c8 08     cmp   x,#$08
1fe0: d0 f4     bne   $1fd6
1fe2: dd        mov   a,y
1fe3: 8d 00     mov   y,#$00
1fe5: 3f 18 13  call  $1318
1fe8: 5f 37 20  jmp   $2037

1feb: 68 01     cmp   a,#$01
1fed: d0 11     bne   $2000
1fef: 8f 00 0a  mov   $0a,#$00
1ff2: fa a6 0b  mov   ($0b),($a6)
1ff5: 3f d9 13  call  $13d9
1ff8: ba 0c     movw  ya,$0c
1ffa: 3f 18 13  call  $1318
1ffd: 5f 37 20  jmp   $2037

2000: 68 02     cmp   a,#$02
2002: d0 11     bne   $2015
2004: 8f 01 0a  mov   $0a,#$01
2007: fa a6 0b  mov   ($0b),($a6)
200a: 3f d9 13  call  $13d9
200d: ba 0c     movw  ya,$0c
200f: 3f 18 13  call  $1318
2012: 5f 37 20  jmp   $2037

2015: 68 03     cmp   a,#$03
2017: d0 11     bne   $202a
2019: 8f 02 0a  mov   $0a,#$02
201c: fa a6 0b  mov   ($0b),($a6)
201f: 3f d9 13  call  $13d9
2022: ba 0c     movw  ya,$0c
2024: 3f 18 13  call  $1318
2027: 5f 37 20  jmp   $2037

202a: 68 04     cmp   a,#$04
202c: d0 09     bne   $2037
202e: e4 04     mov   a,$04
2030: eb 05     mov   y,$05
2032: 9a 02     subw  ya,$02
2034: 3f 18 13  call  $1318
2037: 6f        ret

2038: 3f ef 12  call  $12ef
203b: 3f fb 12  call  $12fb
203e: c4 0b     mov   $0b,a
2040: 8f 00 0a  mov   $0a,#$00
2043: 3f d9 13  call  $13d9
2046: ba 0c     movw  ya,$0c
2048: d0 08     bne   $2052
204a: e8 03     mov   a,#$03
204c: 3f 0d 13  call  $130d
204f: 5f 98 20  jmp   $2098

2052: e8 02     mov   a,#$02
2054: 3f 0d 13  call  $130d
2057: 3f fb 12  call  $12fb
205a: da 16     movw  $16,ya
205c: e8 02     mov   a,#$02
205e: 3f 0d 13  call  $130d
2061: fa 0b 0c  mov   ($0c),($0b)
2064: 8f 00 0d  mov   $0d,#$00
2067: 0b 0c     asl   $0c
2069: 2b 0d     rol   $0d
206b: 0b 0c     asl   $0c
206d: 2b 0d     rol   $0d
206f: e4 0c     mov   a,$0c
2071: 60        clrc
2072: 88 00     adc   a,#$00
2074: c4 0c     mov   $0c,a
2076: e4 0d     mov   a,$0d
2078: 88 02     adc   a,#$02
207a: c4 0d     mov   $0d,a
207c: 8d 00     mov   y,#$00
207e: f7 0c     mov   a,($0c)+y
2080: 60        clrc
2081: 84 16     adc   a,$16
2083: c4 16     mov   $16,a
2085: 8d 01     mov   y,#$01
2087: f7 0c     mov   a,($0c)+y
2089: 84 17     adc   a,$17
208b: c4 17     mov   $17,a
208d: 8d 02     mov   y,#$02
208f: e4 16     mov   a,$16
2091: d7 0c     mov   ($0c)+y,a
2093: fc        inc   y
2094: e4 17     mov   a,$17
2096: d7 0c     mov   ($0c)+y,a
2098: 6f        ret

2099: 8f 00 bf  mov   $bf,#$00
209c: 8f 00 c0  mov   $c0,#$00
209f: e4 b7     mov   a,$b7
20a1: eb b5     mov   y,$b5
20a3: cf        mul   ya
20a4: c4 b9     mov   $b9,a
20a6: cb bf     mov   $bf,y
20a8: e4 b7     mov   a,$b7
20aa: eb b6     mov   y,$b6
20ac: cf        mul   ya
20ad: 7a bf     addw  ya,$bf
20af: c4 ba     mov   $ba,a
20b1: cb bb     mov   $bb,y
20b3: 8f 00 bf  mov   $bf,#$00
20b6: 8f 00 c0  mov   $c0,#$00
20b9: e4 b8     mov   a,$b8
20bb: eb b5     mov   y,$b5
20bd: cf        mul   ya
20be: c4 bc     mov   $bc,a
20c0: cb bf     mov   $bf,y
20c2: e4 b8     mov   a,$b8
20c4: eb b6     mov   y,$b6
20c6: cf        mul   ya
20c7: 7a bf     addw  ya,$bf
20c9: c4 bd     mov   $bd,a
20cb: cb be     mov   $be,y
20cd: fa b9 b5  mov   ($b5),($b9)
20d0: e4 ba     mov   a,$ba
20d2: 60        clrc
20d3: 84 bc     adc   a,$bc
20d5: c4 b6     mov   $b6,a
20d7: e4 bb     mov   a,$bb
20d9: 84 bd     adc   a,$bd
20db: c4 b7     mov   $b7,a
20dd: e4 be     mov   a,$be
20df: 88 00     adc   a,#$00
20e1: c4 b8     mov   $b8,a
20e3: 6f        ret

20e4: 8f 00 c2  mov   $c2,#$00
20e7: 8f 00 c3  mov   $c3,#$00
20ea: fa b9 bb  mov   ($bb),($b9)
20ed: fa ba bc  mov   ($bc),($ba)
20f0: 8f 00 bd  mov   $bd,#$00
20f3: 8f 00 be  mov   $be,#$00
20f6: 8f 80 bf  mov   $bf,#$80
20f9: 8f 00 c0  mov   $c0,#$00
20fc: 8f 00 c1  mov   $c1,#$00
20ff: 69 be b8  cmp   ($b8),($be)
2102: 90 25     bcc   $2129
2104: d0 13     bne   $2119
2106: 69 bd b7  cmp   ($b7),($bd)
2109: 90 1e     bcc   $2129
210b: d0 0c     bne   $2119
210d: 69 bc b6  cmp   ($b6),($bc)
2110: 90 17     bcc   $2129
2112: d0 05     bne   $2119
2114: 69 bb b5  cmp   ($b5),($bb)
2117: 90 10     bcc   $2129
2119: 0b bf     asl   $bf
211b: 2b c0     rol   $c0
211d: 2b c1     rol   $c1
211f: 0b bb     asl   $bb
2121: 2b bc     rol   $bc
2123: 2b bd     rol   $bd
2125: 2b be     rol   $be
2127: 2f d6     bra   $20ff
2129: e4 c0     mov   a,$c0
212b: 04 c1     or    a,$c1
212d: f0 31     beq   $2160
212f: e4 c0     mov   a,$c0
2131: 60        clrc
2132: 84 c2     adc   a,$c2
2134: c4 c2     mov   $c2,a
2136: e4 c1     mov   a,$c1
2138: 84 c3     adc   a,$c3
213a: c4 c3     mov   $c3,a
213c: 4b be     lsr   $be
213e: 6b bd     ror   $bd
2140: 6b bc     ror   $bc
2142: 6b bb     ror   $bb
2144: e4 b5     mov   a,$b5
2146: 80        setc
2147: a4 bb     sbc   a,$bb
2149: c4 b5     mov   $b5,a
214b: e4 b6     mov   a,$b6
214d: a4 bc     sbc   a,$bc
214f: c4 b6     mov   $b6,a
2151: e4 b7     mov   a,$b7
2153: a4 bd     sbc   a,$bd
2155: c4 b7     mov   $b7,a
2157: e4 b8     mov   a,$b8
2159: a4 be     sbc   a,$be
215b: c4 b8     mov   $b8,a
215d: 5f ea 20  jmp   $20ea

2160: fa c2 b5  mov   ($b5),($c2)
2163: fa c3 b6  mov   ($b6),($c3)
2166: 6f        ret

2167: db $01,$02,$04,$08,$10,$20,$40,$80
216f: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f
