f000: cd 3f     mov   x,#$3f
f002: bd        mov   sp,x
f003: e8 20     mov   a,#$20
f005: c5 c2 ff  mov   $ffc2,a
f008: e8 fa     mov   a,#$fa
f00a: c5 c3 ff  mov   $ffc3,a
f00d: 3f 4d fa  call  $fa4d
f010: 8d 6c     mov   y,#$6c
f012: e8 00     mov   a,#$00
f014: 61        tcall 6
f015: 5f 61 f0  jmp   $f061

f018: 6f        ret

f019: dw $0983
f01b: dw $0a14
f01d: dw $0aad
f01f: dw $0b50
f021: dw $0bfc
f023: dw $0cb3
f025: dw $0d74
f027: dw $0e41
f029: dw $0f1a
f02b: dw $1000
f02d: dw $10f3
f02f: dw $11f6

f031: dw $f0a8
f033: dw $f0bc
f035: dw $f0c3
f037: dw $f10b
f039: dw $f115
f03b: dw $f133
f03d: dw $f14c
f03f: dw $f160
f041: dw $f180
f043: dw $f1a5
f045: dw $f1b4
f047: dw $f018

f049: db $01,$02,$04,$08,$10,$20,$40,$80

f051: db $00,$04,$08,$0c,$10,$14,$18,$1c
f059: db $20,$24,$28,$2c,$30,$34,$38,$3c

f061: e4 e0     mov   a,$e0
f063: c4 f6     mov   $f6,a
f065: 01        tcall 0
f066: d0 08     bne   $f070
f068: 3f b5 f2  call  $f2b5
f06b: 3f fb f1  call  $f1fb
f06e: 2f f1     bra   $f061
f070: e5 e1 ff  mov   a,$ffe1
f073: f0 1f     beq   $f094
f075: 1c        asl   a
f076: 5d        mov   x,a
f077: f4 ec     mov   a,$ec+x
f079: fb ed     mov   y,$ed+x
f07b: da ec     movw  $ec,ya
f07d: e5 e0 ff  mov   a,$ffe0
f080: 8d 00     mov   y,#$00
f082: 1c        asl   a
f083: 90 01     bcc   $f086
f085: fc        inc   y
f086: 7a ec     addw  ya,$ec
f088: d4 ec     mov   $ec+x,a
f08a: db ed     mov   $ed+x,y
f08c: 8d 00     mov   y,#$00
f08e: e9 e0 ff  mov   x,$ffe0
f091: 21        tcall 2
f092: 2f cd     bra   $f061
f094: 11        tcall 1
f095: 3f 9a f0  call  $f09a
f098: 2f c7     bra   $f061
f09a: e5 e2 ff  mov   a,$ffe2
f09d: 1c        asl   a
f09e: 5d        mov   x,a
f09f: f5 32 f0  mov   a,$f032+x
f0a2: 2d        push  a
f0a3: f5 31 f0  mov   a,$f031+x
f0a6: 2d        push  a
f0a7: 6f        ret

f0a8: e5 e3 ff  mov   a,$ffe3
f0ab: c5 84 01  mov   $0184,a
f0ae: e5 e4 ff  mov   a,$ffe4
f0b1: c5 87 01  mov   $0187,a
f0b4: e5 e5 ff  mov   a,$ffe5
f0b7: c5 8a 01  mov   $018a,a
f0ba: 2f 00     bra   $f0bc
f0bc: 3f a0 f9  call  $f9a0
f0bf: 3f 8e fa  call  $fa8e
f0c2: 6f        ret

f0c3: e5 e3 ff  mov   a,$ffe3
f0c6: ec e4 ff  mov   y,$ffe4
f0c9: cf        mul   ya
f0ca: da c8     movw  $c8,ya
f0cc: e5 e5 ff  mov   a,$ffe5
f0cf: 8d 00     mov   y,#$00
f0d1: 7a c8     addw  ya,$c8
f0d3: da c8     movw  $c8,ya
f0d5: 0b c8     asl   $c8
f0d7: 2b c9     rol   $c9
f0d9: ba d5     movw  ya,$d5
f0db: 9a c8     subw  ya,$c8
f0dd: da d5     movw  $d5,ya
f0df: da ec     movw  $ec,ya
f0e1: 31        tcall 3
f0e2: ec e7 ff  mov   y,$ffe7
f0e5: e5 e6 ff  mov   a,$ffe6
f0e8: d6 40 01  mov   $0140+y,a
f0eb: dd        mov   a,y
f0ec: 1c        asl   a
f0ed: 1c        asl   a
f0ee: 5d        mov   x,a
f0ef: ac 83 01  inc   $0183
f0f2: ba d5     movw  ya,$d5
f0f4: d5 00 fb  mov   $fb00+x,a
f0f7: dd        mov   a,y
f0f8: d5 01 fb  mov   $fb01+x,a
f0fb: e5 e8 ff  mov   a,$ffe8
f0fe: ec e9 ff  mov   y,$ffe9
f101: 7a d5     addw  ya,$d5
f103: d5 02 fb  mov   $fb02+x,a
f106: dd        mov   a,y
f107: d5 03 fb  mov   $fb03+x,a
f10a: 6f        ret

f10b: 31        tcall 3
f10c: c5 8f 01  mov   $018f,a
f10f: e8 ff     mov   a,#$ff
f111: c5 8e 01  mov   $018e,a
f114: 6f        ret

f115: ba d1     movw  ya,$d1
f117: da ec     movw  $ec,ya
f119: 31        tcall 3
f11a: 3f 7e f8  call  $f87e
f11d: 3f ba f9  call  $f9ba
f120: 3f e2 f9  call  $f9e2
f123: e8 00     mov   a,#$00
f125: c5 88 01  mov   $0188,a
f128: c5 89 01  mov   $0189,a
f12b: 02 e0     set0  $e0
f12d: e8 00     mov   a,#$00
f12f: 8d 6c     mov   y,#$6c
f131: 61        tcall 6
f132: 6f        ret

f133: 3f ba f9  call  $f9ba
f136: e8 00     mov   a,#$00
f138: c5 85 01  mov   $0185,a
f13b: c5 86 01  mov   $0186,a
f13e: c5 88 01  mov   $0188,a
f141: c5 89 01  mov   $0189,a
f144: 12 e0     clr0  $e0
f146: e8 00     mov   a,#$00
f148: 8d 6c     mov   y,#$6c
f14a: 61        tcall 6
f14b: 6f        ret

f14c: 3f 64 f1  call  $f164
f14f: ba d3     movw  ya,$d3
f151: da ec     movw  $ec,ya
f153: 31        tcall 3
f154: 3f 08 f9  call  $f908
f157: e9 89 01  mov   x,$0189
f15a: 3f 5f f9  call  $f95f
f15d: 22 e0     set1  $e0
f15f: 6f        ret

f160: 3f 64 f1  call  $f164
f163: 6f        ret

f164: e5 89 01  mov   a,$0189
f167: f0 14     beq   $f17d
f169: 8d 5c     mov   y,#$5c
f16b: 61        tcall 6
f16c: 8d 70     mov   y,#$70
f16e: e8 00     mov   a,#$00
f170: 61        tcall 6
f171: fc        inc   y
f172: 61        tcall 6
f173: dd        mov   a,y
f174: 80        setc
f175: a8 11     sbc   a,#$11
f177: fd        mov   y,a
f178: 8c 88 01  dec   $0188
f17b: d0 f1     bne   $f16e
f17d: 32 e0     clr1  $e0
f17f: 6f        ret

f180: e5 e3 ff  mov   a,$ffe3
f183: c5 93 01  mov   $0193,a
f186: e5 e4 ff  mov   a,$ffe4
f189: c5 92 01  mov   $0192,a
f18c: e5 e5 ff  mov   a,$ffe5
f18f: c5 95 01  mov   $0195,a
f192: e5 e6 ff  mov   a,$ffe6
f195: c5 94 01  mov   $0194,a
f198: e5 e7 ff  mov   a,$ffe7
f19b: c5 96 01  mov   $0196,a
f19e: 3f df f1  call  $f1df
f1a1: 3f c3 f1  call  $f1c3
f1a4: 6f        ret

f1a5: ba d5     movw  ya,$d5
f1a7: c5 80 01  mov   $0180,a
f1aa: cc 81 01  mov   $0181,y
f1ad: e5 83 01  mov   a,$0183
f1b0: c5 82 01  mov   $0182,a
f1b3: 6f        ret

f1b4: e5 80 01  mov   a,$0180
f1b7: ec 81 01  mov   y,$0181
f1ba: da d5     movw  $d5,ya
f1bc: e5 82 01  mov   a,$0182
f1bf: c5 83 01  mov   $0183,a
f1c2: 6f        ret

f1c3: ec 88 01  mov   y,$0188
f1c6: f0 16     beq   $f1de
f1c8: e8 01     mov   a,#$01
f1ca: c5 8b 01  mov   $018b,a
f1cd: 8f 07 df  mov   $df,#$07
f1d0: 6d        push  y
f1d1: e4 df     mov   a,$df
f1d3: 3f 70 f8  call  $f870
f1d6: 3f 64 f7  call  $f764
f1d9: ee        pop   y
f1da: 8b df     dec   $df
f1dc: fe f2     dbnz  y,$f1d0
f1de: 6f        ret

f1df: ec 85 01  mov   y,$0185
f1e2: f0 16     beq   $f1fa
f1e4: e8 00     mov   a,#$00
f1e6: c5 8b 01  mov   $018b,a
f1e9: 8f 00 df  mov   $df,#$00
f1ec: 6d        push  y
f1ed: e4 df     mov   a,$df
f1ef: 3f 70 f8  call  $f870
f1f2: 3f 64 f7  call  $f764
f1f5: ee        pop   y
f1f6: ab df     inc   $df
f1f8: fe f2     dbnz  y,$f1ec
f1fa: 6f        ret

f1fb: e5 85 01  mov   a,$0185
f1fe: d0 01     bne   $f201
f200: 6f        ret

f201: e4 fd     mov   a,$fd
f203: d0 01     bne   $f206
f205: 6f        ret

f206: e8 00     mov   a,#$00
f208: c5 8b 01  mov   $018b,a
f20b: 8f 00 df  mov   $df,#$00
f20e: ec 85 01  mov   y,$0185
f211: e4 df     mov   a,$df
f213: 3f 70 f8  call  $f870
f216: f4 00     mov   a,$00+x
f218: 14 01     or    a,$01+x
f21a: f0 14     beq   $f230
f21c: 6d        push  y
f21d: f4 02     mov   a,$02+x
f21f: fb 03     mov   y,$03+x
f221: da d9     movw  $d9,ya
f223: 3f 7e f3  call  $f37e
f226: ba d9     movw  ya,$d9
f228: d4 02     mov   $02+x,a
f22a: db 03     mov   $03+x,y
f22c: 3f 1b f3  call  $f31b
f22f: ee        pop   y
f230: ab df     inc   $df
f232: fe dd     dbnz  y,$f211
f234: 3f 8c f2  call  $f28c
f237: b0 08     bcs   $f241
f239: e8 00     mov   a,#$00
f23b: c5 85 01  mov   $0185,a
f23e: 12 e0     clr0  $e0
f240: 6f        ret

f241: 3f 45 f2  call  $f245
f244: 6f        ret

f245: e5 92 01  mov   a,$0192
f248: d0 01     bne   $f24b
f24a: 6f        ret

f24b: e5 8e 01  mov   a,$018e
f24e: d0 01     bne   $f251
f250: 6f        ret

f251: e5 8b 01  mov   a,$018b
f254: f0 01     beq   $f257
f256: 6f        ret

f257: e5 92 01  mov   a,$0192
f25a: 80        setc
f25b: a5 8f 01  sbc   a,$018f
f25e: b0 02     bcs   $f262
f260: e8 00     mov   a,#$00
f262: c5 92 01  mov   $0192,a
f265: 8f 00 df  mov   $df,#$00
f268: ec 85 01  mov   y,$0185
f26b: 6d        push  y
f26c: e4 df     mov   a,$df
f26e: 3f 70 f8  call  $f870
f271: e8 01     mov   a,#$01
f273: 34 08     and   a,$08+x
f275: f0 03     beq   $f27a
f277: 3f 64 f7  call  $f764
f27a: ee        pop   y
f27b: ab df     inc   $df
f27d: fe ec     dbnz  y,$f26b
f27f: e5 92 01  mov   a,$0192
f282: d0 07     bne   $f28b
f284: e8 00     mov   a,#$00
f286: c5 85 01  mov   $0185,a
f289: 12 e0     clr0  $e0
f28b: 6f        ret

f28c: 8f 00 df  mov   $df,#$00
f28f: ec 85 01  mov   y,$0185
f292: e4 df     mov   a,$df
f294: 3f 70 f8  call  $f870
f297: e8 80     mov   a,#$80
f299: 34 08     and   a,$08+x
f29b: f0 16     beq   $f2b3
f29d: ab df     inc   $df
f29f: fe f1     dbnz  y,$f292
f2a1: e9 86 01  mov   x,$0186
f2a4: 3f 5f f9  call  $f95f
f2a7: e8 00     mov   a,#$00
f2a9: c5 85 01  mov   $0185,a
f2ac: c5 86 01  mov   $0186,a
f2af: 12 e0     clr0  $e0
f2b1: 60        clrc
f2b2: 6f        ret

f2b3: 80        setc
f2b4: 6f        ret

f2b5: e5 88 01  mov   a,$0188
f2b8: d0 01     bne   $f2bb
f2ba: 6f        ret

f2bb: e4 fe     mov   a,$fe
f2bd: d0 01     bne   $f2c0
f2bf: 6f        ret

f2c0: e8 01     mov   a,#$01
f2c2: c5 8b 01  mov   $018b,a
f2c5: 8f 07 df  mov   $df,#$07
f2c8: ec 88 01  mov   y,$0188
f2cb: e4 df     mov   a,$df
f2cd: 3f 70 f8  call  $f870
f2d0: f4 00     mov   a,$00+x
f2d2: 14 01     or    a,$01+x
f2d4: f0 14     beq   $f2ea
f2d6: 6d        push  y
f2d7: f4 02     mov   a,$02+x
f2d9: fb 03     mov   y,$03+x
f2db: da d9     movw  $d9,ya
f2dd: 3f 7e f3  call  $f37e
f2e0: ba d9     movw  ya,$d9
f2e2: d4 02     mov   $02+x,a
f2e4: db 03     mov   $03+x,y
f2e6: 3f 1b f3  call  $f31b
f2e9: ee        pop   y
f2ea: 8b df     dec   $df
f2ec: fe dd     dbnz  y,$f2cb
f2ee: 3f f2 f2  call  $f2f2
f2f1: 6f        ret

f2f2: 8f 07 df  mov   $df,#$07
f2f5: ec 88 01  mov   y,$0188
f2f8: e4 df     mov   a,$df
f2fa: 3f 70 f8  call  $f870
f2fd: e8 80     mov   a,#$80
f2ff: 34 08     and   a,$08+x
f301: f0 16     beq   $f319
f303: 8b df     dec   $df
f305: fe f1     dbnz  y,$f2f8
f307: e9 89 01  mov   x,$0189
f30a: 3f 5f f9  call  $f95f
f30d: e8 00     mov   a,#$00
f30f: c5 88 01  mov   $0188,a
f312: c5 89 01  mov   $0189,a
f315: 32 e0     clr1  $e0
f317: 60        clrc
f318: 6f        ret

f319: 80        setc
f31a: 6f        ret

f31b: e8 08     mov   a,#$08
f31d: 34 08     and   a,$08+x
f31f: d0 01     bne   $f322
f321: 6f        ret

f322: f4 17     mov   a,$17+x
f324: f0 04     beq   $f32a
f326: 9c        dec   a
f327: d4 17     mov   $17+x,a
f329: 6f        ret

f32a: f4 15     mov   a,$15+x
f32c: 9c        dec   a
f32d: f0 03     beq   $f332
f32f: d4 15     mov   $15+x,a
f331: 6f        ret

f332: f4 16     mov   a,$16+x
f334: d4 15     mov   $15+x,a
f336: f4 13     mov   a,$13+x
f338: 9c        dec   a
f339: d4 13     mov   $13+x,a
f33b: d0 0a     bne   $f347
f33d: f4 14     mov   a,$14+x
f33f: d4 13     mov   $13+x,a
f341: f4 08     mov   a,$08+x
f343: 48 20     eor   a,#$20
f345: d4 08     mov   $08+x,a
f347: f4 06     mov   a,$06+x
f349: c4 db     mov   $db,a
f34b: f4 07     mov   a,$07+x
f34d: c4 dc     mov   $dc,a
f34f: e8 20     mov   a,#$20
f351: 34 08     and   a,$08+x
f353: f0 0e     beq   $f363
f355: e4 db     mov   a,$db
f357: 48 ff     eor   a,#$ff
f359: c4 db     mov   $db,a
f35b: e4 dc     mov   a,$dc
f35d: 48 ff     eor   a,#$ff
f35f: c4 dc     mov   $dc,a
f361: 3a db     incw  $db
f363: f4 04     mov   a,$04+x
f365: 60        clrc
f366: 84 db     adc   a,$db
f368: d4 04     mov   $04+x,a
f36a: f4 05     mov   a,$05+x
f36c: 84 dc     adc   a,$dc
f36e: d4 05     mov   $05+x,a
f370: e4 df     mov   a,$df
f372: 9f        xcn   a
f373: bc        inc   a
f374: bc        inc   a
f375: fd        mov   y,a
f376: f4 04     mov   a,$04+x
f378: 61        tcall 6
f379: fc        inc   y
f37a: f4 05     mov   a,$05+x
f37c: 61        tcall 6
f37d: 6f        ret

f37e: f4 09     mov   a,$09+x
f380: 74 0a     cmp   a,$0a+x
f382: d0 09     bne   $f38d
f384: e8 01     mov   a,#$01
f386: 34 08     and   a,$08+x
f388: f0 03     beq   $f38d
f38a: 3f d0 f6  call  $f6d0
f38d: f4 09     mov   a,$09+x
f38f: f0 05     beq   $f396
f391: 9b 09     dec   $09+x
f393: f0 01     beq   $f396
f395: 6f        ret

f396: 3f ba f6  call  $f6ba
f399: f4 00     mov   a,$00+x
f39b: 14 01     or    a,$01+x
f39d: f0 1b     beq   $f3ba
f39f: e1        tcall 14
f3a0: c5 8d 01  mov   $018d,a
f3a3: 68 e0     cmp   a,#$e0
f3a5: b0 34     bcs   $f3db
f3a7: 68 60     cmp   a,#$60
f3a9: b0 18     bcs   $f3c3
f3ab: 68 50     cmp   a,#$50
f3ad: b0 0c     bcs   $f3bb
f3af: 68 48     cmp   a,#$48
f3b1: b0 20     bcs   $f3d3
f3b3: 68 40     cmp   a,#$40
f3b5: b0 14     bcs   $f3cb
f3b7: 3f 51 f6  call  $f651
f3ba: 6f        ret

f3bb: 80        setc
f3bc: a8 50     sbc   a,#$50
f3be: 3f b8 f4  call  $f4b8
f3c1: 2f d6     bra   $f399
f3c3: 80        setc
f3c4: a8 60     sbc   a,#$60
f3c6: 3f ef f5  call  $f5ef
f3c9: 2f ce     bra   $f399
f3cb: 80        setc
f3cc: a8 40     sbc   a,#$40
f3ce: 3f 22 f6  call  $f622
f3d1: 2f c6     bra   $f399
f3d3: 80        setc
f3d4: a8 48     sbc   a,#$48
f3d6: 3f 29 f6  call  $f629
f3d9: 2f be     bra   $f399
f3db: 3f eb f3  call  $f3eb
f3de: 2f b9     bra   $f399
f3e0: e4 e0     mov   a,$e0
f3e2: 08 80     or    a,#$80
f3e4: c4 f5     mov   $f5,a
f3e6: fa 00 f4  mov   ($f4),($00)
f3e9: 2f fe     bra   $f3e9
f3eb: 80        setc
f3ec: a8 e0     sbc   a,#$e0
f3ee: 1c        asl   a
f3ef: fd        mov   y,a
f3f0: f6 ff f3  mov   a,$f3ff+y
f3f3: c5 fd f3  mov   $f3fd,a
f3f6: f6 00 f4  mov   a,$f400+y
f3f9: c5 fe f3  mov   $f3fe,a
f3fc: 5f 62 f5  jmp   $f562

; vcmd dispatch table
f3ff: dw $f49b  ; e0
f401: dw $f4ff  ; e1
f403: dw $f4c4  ; e2
f405: dw $f4aa  ; e3
f407: dw $f4c8  ; e4
f409: dw $f4cf  ; e5
f40b: dw $f45b  ; e6
f40d: dw $f468  ; e7
f40f: dw $f4d6  ; e8
f411: dw $f4ec  ; e9
f413: dw $f640  ; ea
f415: dw $f62c  ; eb
f417: dw $f562  ; ec
f419: dw $f594  ; ed
f41b: dw $f5be  ; ee
f41d: dw $f556  ; ef
f41f: dw $f557  ; f0
f421: dw $f558  ; f1
f423: dw $f42d  ; f2
f425: dw $f503  ; f3
f427: dw $f55d  ; f4
f429: dw $f5d9  ; f5
f42b: dw $f4b7  ; f6

f42d: e1        tcall 14
f42e: c4 db     mov   $db,a
f430: 28 03     and   a,#$03
f432: f0 1d     beq   $f451
f434: 9c        dec   a
f435: d0 0c     bne   $f443
f437: eb df     mov   y,$df
f439: f6 49 f0  mov   a,$f049+y
f43c: 48 ff     eor   a,#$ff
f43e: 25 90 01  and   a,$0190
f441: 2f 08     bra   $f44b
f443: eb df     mov   y,$df
f445: f6 49 f0  mov   a,$f049+y
f448: 05 90 01  or    a,$0190
f44b: c5 90 01  mov   $0190,a
f44e: 8d 3d     mov   y,#$3d
f450: 61        tcall 6
f451: e4 db     mov   a,$db
f453: 30 05     bmi   $f45a
f455: 5c        lsr   a
f456: 5c        lsr   a
f457: 8d 6c     mov   y,#$6c
f459: 61        tcall 6
f45a: 6f        ret

f45b: f4 0e     mov   a,$0e+x
f45d: 68 0f     cmp   a,#$0f
f45f: f0 06     beq   $f467
f461: bc        inc   a
f462: d4 0e     mov   $0e+x,a
f464: 3f 64 f7  call  $f764
f467: 6f        ret

f468: f4 0e     mov   a,$0e+x
f46a: f0 06     beq   $f472
f46c: 9c        dec   a
f46d: d4 0e     mov   $0e+x,a
f46f: 3f 64 f7  call  $f764
f472: 6f        ret

f473: c4 cd     mov   $cd,a
f475: 8d 07     mov   y,#$07
f477: f7 d1     mov   a,($d1)+y
f479: c4 ce     mov   $ce,a
f47b: 3f 29 f8  call  $f829
f47e: 8f ce f1  mov   $f1,#$ce
f481: c4 fa     mov   $fa,a
f483: 8f 07 f1  mov   $f1,#$07
f486: 6f        ret

f487: c4 cd     mov   $cd,a
f489: 8d 07     mov   y,#$07
f48b: f7 d3     mov   a,($d3)+y
f48d: c4 ce     mov   $ce,a
f48f: 3f 29 f8  call  $f829
f492: 8f cd f1  mov   $f1,#$cd
f495: c4 fb     mov   $fb,a
f497: 8f 07 f1  mov   $f1,#$07
f49a: 6f        ret

f49b: e5 8b 01  mov   a,$018b
f49e: d0 05     bne   $f4a5
f4a0: e1        tcall 14
f4a1: 3f 73 f4  call  $f473
f4a4: 6f        ret

f4a5: e1        tcall 14
f4a6: 3f 87 f4  call  $f487
f4a9: 6f        ret

f4aa: e1        tcall 14
f4ab: d4 0f     mov   $0f+x,a
f4ad: e5 8e 01  mov   a,$018e
f4b0: f0 01     beq   $f4b3
f4b2: 6f        ret

f4b3: 3f 64 f7  call  $f764
f4b6: 6f        ret

f4b7: e1        tcall 14
f4b8: d4 0e     mov   $0e+x,a
f4ba: e5 8e 01  mov   a,$018e
f4bd: f0 01     beq   $f4c0
f4bf: 6f        ret

f4c0: 3f 64 f7  call  $f764
f4c3: 6f        ret

f4c4: e1        tcall 14
f4c5: d4 12     mov   $12+x,a
f4c7: 6f        ret

f4c8: bb 0d     inc   $0d+x
f4ca: e8 ff     mov   a,#$ff
f4cc: d4 11     mov   $11+x,a
f4ce: 6f        ret

f4cf: 9b 0d     dec   $0d+x
f4d1: e8 ff     mov   a,#$ff
f4d3: d4 11     mov   $11+x,a
f4d5: 6f        ret

f4d6: e1        tcall 14
f4d7: d4 18     mov   $18+x,a
f4d9: e1        tcall 14
f4da: d4 16     mov   $16+x,a
f4dc: e1        tcall 14
f4dd: d4 06     mov   $06+x,a
f4df: e1        tcall 14
f4e0: d4 07     mov   $07+x,a
f4e2: e1        tcall 14
f4e3: d4 14     mov   $14+x,a
f4e5: e8 08     mov   a,#$08
f4e7: 14 08     or    a,$08+x
f4e9: d4 08     mov   $08+x,a
f4eb: 6f        ret

f4ec: e1        tcall 14
f4ed: 08 00     or    a,#$00
f4ef: f0 07     beq   $f4f8
f4f1: e8 08     mov   a,#$08
f4f3: 14 08     or    a,$08+x
f4f5: d4 08     mov   $08+x,a
f4f7: 6f        ret

f4f8: e8 f7     mov   a,#$f7
f4fa: 34 08     and   a,$08+x
f4fc: d4 08     mov   $08+x,a
f4fe: 6f        ret

f4ff: e1        tcall 14
f500: d4 10     mov   $10+x,a
f502: 6f        ret

f503: 8f 80 db  mov   $db,#$80
f506: 8f 00 dc  mov   $dc,#$00
f509: e1        tcall 14
f50a: 8d 0f     mov   y,#$0f
f50c: cf        mul   ya
f50d: 4d        push  x
f50e: cd 7f     mov   x,#$7f
f510: 9e        div   ya,x
f511: ce        pop   x
f512: 04 db     or    a,$db
f514: c4 db     mov   $db,a
f516: e1        tcall 14
f517: 8d 07     mov   y,#$07
f519: cf        mul   ya
f51a: 4d        push  x
f51b: cd 7f     mov   x,#$7f
f51d: 9e        div   ya,x
f51e: ce        pop   x
f51f: 9f        xcn   a
f520: 28 f0     and   a,#$f0
f522: 04 db     or    a,$db
f524: c4 db     mov   $db,a
f526: e1        tcall 14
f527: 8d 1f     mov   y,#$1f
f529: cf        mul   ya
f52a: 4d        push  x
f52b: cd 7f     mov   x,#$7f
f52d: 9e        div   ya,x
f52e: ce        pop   x
f52f: 04 dc     or    a,$dc
f531: c4 dc     mov   $dc,a
f533: e1        tcall 14
f534: 8d 07     mov   y,#$07
f536: cf        mul   ya
f537: 4d        push  x
f538: cd 7f     mov   x,#$7f
f53a: 9e        div   ya,x
f53b: ce        pop   x
f53c: 48 ff     eor   a,#$ff
f53e: 1c        asl   a
f53f: 1c        asl   a
f540: 1c        asl   a
f541: 1c        asl   a
f542: 1c        asl   a
f543: 04 dc     or    a,$dc
f545: c4 dc     mov   $dc,a
f547: e1        tcall 14
f548: e4 df     mov   a,$df
f54a: 9f        xcn   a
f54b: 08 05     or    a,#$05
f54d: fd        mov   y,a
f54e: e4 db     mov   a,$db
f550: 61        tcall 6
f551: fc        inc   y
f552: e4 dc     mov   a,$dc
f554: 61        tcall 6
f555: 6f        ret

f556: 6f        ret

f557: 6f        ret

f558: e1        tcall 14
f559: fd        mov   y,a
f55a: e1        tcall 14
f55b: 61        tcall 6
f55c: 6f        ret

f55d: e1        tcall 14
f55e: c5 8c 01  mov   $018c,a
f561: 6f        ret

f562: e1        tcall 14
f563: 8d 04     mov   y,#$04
f565: d7 d9     mov   ($d9)+y,a
f567: 8d 00     mov   y,#$00
f569: f4 00     mov   a,$00+x
f56b: d7 d9     mov   ($d9)+y,a
f56d: fc        inc   y
f56e: f4 01     mov   a,$01+x
f570: d7 d9     mov   ($d9)+y,a
f572: 8d 02     mov   y,#$02
f574: e8 00     mov   a,#$00
f576: d7 d9     mov   ($d9)+y,a
f578: fc        inc   y
f579: d7 d9     mov   ($d9)+y,a
f57b: 3f 7f f5  call  $f57f
f57e: 6f        ret

f57f: e8 05     mov   a,#$05
f581: 8d 00     mov   y,#$00
f583: 7a d9     addw  ya,$d9
f585: da d9     movw  $d9,ya
f587: 6f        ret

f588: e8 05     mov   a,#$05
f58a: 48 ff     eor   a,#$ff
f58c: bc        inc   a
f58d: 8d ff     mov   y,#$ff
f58f: 7a d9     addw  ya,$d9
f591: da d9     movw  $d9,ya
f593: 6f        ret

f594: 3f 88 f5  call  $f588
f597: 8d 04     mov   y,#$04
f599: f7 d9     mov   a,($d9)+y
f59b: 68 ff     cmp   a,#$ff
f59d: f0 05     beq   $f5a4
f59f: 9c        dec   a
f5a0: f0 1b     beq   $f5bd
f5a2: d7 d9     mov   ($d9)+y,a
f5a4: 8d 02     mov   y,#$02
f5a6: f4 00     mov   a,$00+x
f5a8: d7 d9     mov   ($d9)+y,a
f5aa: fc        inc   y
f5ab: f4 01     mov   a,$01+x
f5ad: d7 d9     mov   ($d9)+y,a
f5af: 8d 00     mov   y,#$00
f5b1: f7 d9     mov   a,($d9)+y
f5b3: d4 00     mov   $00+x,a
f5b5: fc        inc   y
f5b6: f7 d9     mov   a,($d9)+y
f5b8: d4 01     mov   $01+x,a
f5ba: 3f 7f f5  call  $f57f
f5bd: 6f        ret

f5be: 3f 88 f5  call  $f588
f5c1: 8d 04     mov   y,#$04
f5c3: f7 d9     mov   a,($d9)+y
f5c5: 68 01     cmp   a,#$01
f5c7: f0 04     beq   $f5cd
f5c9: 3f 7f f5  call  $f57f
f5cc: 6f        ret

f5cd: 8d 02     mov   y,#$02
f5cf: f7 d9     mov   a,($d9)+y
f5d1: d4 00     mov   $00+x,a
f5d3: fc        inc   y
f5d4: f7 d9     mov   a,($d9)+y
f5d6: d4 01     mov   $01+x,a
f5d8: 6f        ret

f5d9: e8 80     mov   a,#$80
f5db: 14 08     or    a,$08+x
f5dd: d4 08     mov   $08+x,a
f5df: e8 fd     mov   a,#$fd
f5e1: 34 08     and   a,$08+x
f5e3: d4 08     mov   $08+x,a
f5e5: 3f d0 f6  call  $f6d0
f5e8: e8 00     mov   a,#$00
f5ea: d4 00     mov   $00+x,a
f5ec: d4 01     mov   $01+x,a
f5ee: 6f        ret

f5ef: ec 8b 01  mov   y,$018b
f5f2: f0 0a     beq   $f5fe
f5f4: 8d 0c     mov   y,#$0c
f5f6: 60        clrc
f5f7: 97 d3     adc   a,($d3)+y
f5f9: fd        mov   y,a
f5fa: f7 d3     mov   a,($d3)+y
f5fc: 2f 08     bra   $f606
f5fe: 8d 0c     mov   y,#$0c
f600: 60        clrc
f601: 97 d1     adc   a,($d1)+y
f603: fd        mov   y,a
f604: f7 d1     mov   a,($d1)+y
f606: ec 83 01  mov   y,$0183
f609: f0 07     beq   $f612
f60b: 76 3f 01  cmp   a,$013f+y
f60e: f0 03     beq   $f613
f610: fe f9     dbnz  y,$f60b
f612: fc        inc   y
f613: dc        dec   y
f614: 6d        push  y
f615: e4 df     mov   a,$df
f617: 9f        xcn   a
f618: 08 04     or    a,#$04
f61a: fd        mov   y,a
f61b: ae        pop   a
f61c: 61        tcall 6
f61d: e8 ff     mov   a,#$ff
f61f: d4 11     mov   $11+x,a
f621: 6f        ret

f622: d4 0d     mov   $0d+x,a
f624: e8 ff     mov   a,#$ff
f626: d4 11     mov   $11+x,a
f628: 6f        ret

f629: d4 0c     mov   $0c+x,a
f62b: 6f        ret

f62c: e5 99 01  mov   a,$0199
f62f: f0 0e     beq   $f63f
f631: eb df     mov   y,$df
f633: f6 49 f0  mov   a,$f049+y
f636: 05 91 01  or    a,$0191
f639: c5 91 01  mov   $0191,a
f63c: 3f df f6  call  $f6df
f63f: 6f        ret

f640: eb df     mov   y,$df
f642: f6 49 f0  mov   a,$f049+y
f645: 48 ff     eor   a,#$ff
f647: 25 91 01  and   a,$0191
f64a: c5 91 01  mov   $0191,a
f64d: 3f df f6  call  $f6df
f650: 6f        ret

f651: e8 10     mov   a,#$10
f653: 25 8d 01  and   a,$018d
f656: f0 06     beq   $f65e
f658: e8 02     mov   a,#$02
f65a: 14 08     or    a,$08+x
f65c: d4 08     mov   $08+x,a
f65e: e8 20     mov   a,#$20
f660: 25 8d 01  and   a,$018d
f663: d0 03     bne   $f668
f665: e1        tcall 14
f666: d4 0b     mov   $0b+x,a
f668: 3f e6 f6  call  $f6e6
f66b: e5 8d 01  mov   a,$018d
f66e: 28 0f     and   a,#$0f
f670: d0 01     bne   $f673
f672: 6f        ret

f673: 9c        dec   a
f674: c4 db     mov   $db,a
f676: e8 01     mov   a,#$01
f678: 34 08     and   a,$08+x
f67a: f0 07     beq   $f683
f67c: e4 db     mov   a,$db
f67e: 74 11     cmp   a,$11+x
f680: d0 01     bne   $f683
f682: 6f        ret

f683: e4 db     mov   a,$db
f685: d4 11     mov   $11+x,a
f687: 3f 02 f7  call  $f702
f68a: 3f 25 f7  call  $f725
f68d: e4 db     mov   a,$db
f68f: d4 04     mov   $04+x,a
f691: e4 dc     mov   a,$dc
f693: d4 05     mov   $05+x,a
f695: 3f eb f7  call  $f7eb
f698: e8 01     mov   a,#$01
f69a: 34 08     and   a,$08+x
f69c: f0 01     beq   $f69f
f69e: 6f        ret

f69f: 3f ac f6  call  $f6ac
f6a2: e8 01     mov   a,#$01
f6a4: 14 08     or    a,$08+x
f6a6: d4 08     mov   $08+x,a
f6a8: 3f fb f7  call  $f7fb
f6ab: 6f        ret

f6ac: e8 00     mov   a,#$00
f6ae: 8d 5c     mov   y,#$5c
f6b0: 61        tcall 6
f6b1: eb df     mov   y,$df
f6b3: f6 49 f0  mov   a,$f049+y
f6b6: 8d 4c     mov   y,#$4c
f6b8: 61        tcall 6
f6b9: 6f        ret

f6ba: e8 01     mov   a,#$01
f6bc: 34 08     and   a,$08+x
f6be: f0 09     beq   $f6c9
f6c0: e8 02     mov   a,#$02
f6c2: 34 08     and   a,$08+x
f6c4: d0 03     bne   $f6c9
f6c6: 3f d0 f6  call  $f6d0
f6c9: e8 fd     mov   a,#$fd
f6cb: 34 08     and   a,$08+x
f6cd: d4 08     mov   $08+x,a
f6cf: 6f        ret

f6d0: e8 fe     mov   a,#$fe
f6d2: 34 08     and   a,$08+x
f6d4: d4 08     mov   $08+x,a
f6d6: eb df     mov   y,$df
f6d8: f6 49 f0  mov   a,$f049+y
f6db: 8d 5c     mov   y,#$5c
f6dd: 61        tcall 6
f6de: 6f        ret

f6df: e5 91 01  mov   a,$0191
f6e2: 8d 4d     mov   y,#$4d
f6e4: 61        tcall 6
f6e5: 6f        ret

f6e6: f4 0b     mov   a,$0b+x
f6e8: d4 09     mov   $09+x,a
f6ea: fb 0c     mov   y,$0c+x
f6ec: d0 05     bne   $f6f3
f6ee: e8 00     mov   a,#$00
f6f0: d4 0a     mov   $0a+x,a
f6f2: 6f        ret

f6f3: cf        mul   ya
f6f4: 4d        push  x
f6f5: cd 08     mov   x,#$08
f6f7: 9e        div   ya,x
f6f8: ce        pop   x
f6f9: 48 ff     eor   a,#$ff
f6fb: bc        inc   a
f6fc: 60        clrc
f6fd: 94 09     adc   a,$09+x
f6ff: d4 0a     mov   $0a+x,a
f701: 6f        ret

f702: 8f 00 de  mov   $de,#$00
f705: fb 12     mov   y,$12+x
f707: 30 0e     bmi   $f717
f709: 60        clrc
f70a: 94 12     adc   a,$12+x
f70c: 68 0c     cmp   a,#$0c
f70e: 90 14     bcc   $f724
f710: 8f 01 de  mov   $de,#$01
f713: 80        setc
f714: a8 0c     sbc   a,#$0c
f716: 6f        ret

f717: 60        clrc
f718: 94 12     adc   a,$12+x
f71a: 68 0c     cmp   a,#$0c
f71c: 90 06     bcc   $f724
f71e: 8f ff de  mov   $de,#$ff
f721: 60        clrc
f722: 88 0c     adc   a,#$0c
f724: 6f        ret

f725: 6d        push  y
f726: 1c        asl   a
f727: fd        mov   y,a
f728: f6 19 f0  mov   a,$f019+y
f72b: c4 db     mov   $db,a
f72d: f6 1a f0  mov   a,$f01a+y
f730: c4 dc     mov   $dc,a
f732: 8d 00     mov   y,#$00
f734: f4 10     mov   a,$10+x
f736: 10 01     bpl   $f739
f738: dc        dec   y
f739: 60        clrc
f73a: 84 db     adc   a,$db
f73c: c4 db     mov   $db,a
f73e: dd        mov   a,y
f73f: 84 dc     adc   a,$dc
f741: c4 dc     mov   $dc,a
f743: f4 0d     mov   a,$0d+x
f745: 80        setc
f746: a8 03     sbc   a,#$03
f748: 60        clrc
f749: 84 de     adc   a,$de
f74b: f0 15     beq   $f762
f74d: 30 09     bmi   $f758
f74f: 0b db     asl   $db
f751: 2b dc     rol   $dc
f753: 9c        dec   a
f754: d0 f9     bne   $f74f
f756: 2f 0a     bra   $f762
f758: 48 ff     eor   a,#$ff
f75a: bc        inc   a
f75b: 4b dc     lsr   $dc
f75d: 6b db     ror   $db
f75f: 9c        dec   a
f760: d0 f9     bne   $f75b
f762: ee        pop   y
f763: 6f        ret

f764: fb 0e     mov   y,$0e+x
f766: f6 51 f0  mov   a,$f051+y
f769: ad 10     cmp   y,#$10
f76b: 90 01     bcc   $f76e
f76d: dd        mov   a,y
f76e: ec 92 01  mov   y,$0192
f771: ac 8b 01  inc   $018b
f774: 8c 8b 01  dec   $018b
f777: f0 03     beq   $f77c
f779: ec 94 01  mov   y,$0194
f77c: cf        mul   ya
f77d: 4d        push  x
f77e: cd ff     mov   x,#$ff
f780: 9e        div   ya,x
f781: ce        pop   x
f782: c4 db     mov   $db,a
f784: c4 dc     mov   $dc,a
f786: f4 0f     mov   a,$0f+x
f788: 2d        push  a
f789: e5 93 01  mov   a,$0193
f78c: ac 8b 01  inc   $018b
f78f: 8c 8b 01  dec   $018b
f792: f0 03     beq   $f797
f794: e5 95 01  mov   a,$0195
f797: 80        setc
f798: a8 40     sbc   a,#$40
f79a: b0 0b     bcs   $f7a7
f79c: 60        clrc
f79d: 94 0f     adc   a,$0f+x
f79f: 68 40     cmp   a,#$40
f7a1: 90 0d     bcc   $f7b0
f7a3: e8 00     mov   a,#$00
f7a5: 2f 09     bra   $f7b0
f7a7: 60        clrc
f7a8: 94 0f     adc   a,$0f+x
f7aa: 68 81     cmp   a,#$81
f7ac: 90 02     bcc   $f7b0
f7ae: e8 80     mov   a,#$80
f7b0: d4 0f     mov   $0f+x,a
f7b2: e8 80     mov   a,#$80
f7b4: 80        setc
f7b5: b4 0f     sbc   a,$0f+x
f7b7: eb db     mov   y,$db
f7b9: cf        mul   ya
f7ba: 4d        push  x
f7bb: cd 80     mov   x,#$80
f7bd: 9e        div   ya,x
f7be: ce        pop   x
f7bf: c4 db     mov   $db,a
f7c1: f4 0f     mov   a,$0f+x
f7c3: eb dc     mov   y,$dc
f7c5: cf        mul   ya
f7c6: 4d        push  x
f7c7: cd 80     mov   x,#$80
f7c9: 9e        div   ya,x
f7ca: ce        pop   x
f7cb: c4 dc     mov   $dc,a
f7cd: ae        pop   a
f7ce: d4 0f     mov   $0f+x,a
f7d0: e5 96 01  mov   a,$0196
f7d3: d0 0a     bne   $f7df
f7d5: e4 db     mov   a,$db
f7d7: 60        clrc
f7d8: 84 dc     adc   a,$dc
f7da: 5c        lsr   a
f7db: c4 db     mov   $db,a
f7dd: c4 dc     mov   $dc,a
f7df: e4 df     mov   a,$df
f7e1: 9f        xcn   a
f7e2: fd        mov   y,a
f7e3: e4 db     mov   a,$db
f7e5: 61        tcall 6
f7e6: fc        inc   y
f7e7: e4 dc     mov   a,$dc
f7e9: 61        tcall 6
f7ea: 6f        ret

f7eb: 6d        push  y
f7ec: e4 df     mov   a,$df
f7ee: 9f        xcn   a
f7ef: 08 02     or    a,#$02
f7f1: fd        mov   y,a
f7f2: f4 04     mov   a,$04+x
f7f4: 61        tcall 6
f7f5: fc        inc   y
f7f6: f4 05     mov   a,$05+x
f7f8: 61        tcall 6
f7f9: ee        pop   y
f7fa: 6f        ret

f7fb: f4 18     mov   a,$18+x
f7fd: d4 17     mov   $17+x,a
f7ff: f4 16     mov   a,$16+x
f801: d4 15     mov   $15+x,a
f803: f4 14     mov   a,$14+x
f805: 5c        lsr   a
f806: d4 13     mov   $13+x,a
f808: e8 df     mov   a,#$df
f80a: 34 08     and   a,$08+x
f80c: d4 08     mov   $08+x,a
f80e: 6f        ret

f80f: 4d        push  x
f810: 6d        push  y
f811: 8d 19     mov   y,#$19
f813: e8 00     mov   a,#$00
f815: d4 00     mov   $00+x,a
f817: 3d        inc   x
f818: fe fb     dbnz  y,$f815
f81a: ee        pop   y
f81b: ce        pop   x
f81c: e8 03     mov   a,#$03
f81e: d4 0d     mov   $0d+x,a
f820: e8 ff     mov   a,#$ff
f822: d4 11     mov   $11+x,a
f824: e8 ff     mov   a,#$ff
f826: d4 0a     mov   $0a+x,a
f828: 6f        ret

f829: ba cd     movw  ya,$cd
f82b: cf        mul   ya
f82c: da cd     movw  $cd,ya
f82e: e8 00     mov   a,#$00
f830: c4 c8     mov   $c8,a
f832: 8f 4c c9  mov   $c9,#$4c
f835: 8f 1d ca  mov   $ca,#$1d
f838: c4 cb     mov   $cb,a
f83a: c4 cc     mov   $cc,a
f83c: c4 cd     mov   $cd,a
f83e: 3f 44 f8  call  $f844
f841: e4 c8     mov   a,$c8
f843: 6f        ret

f844: 6d        push  y
f845: 8d 18     mov   y,#$18
f847: 2b c8     rol   $c8
f849: 2b c9     rol   $c9
f84b: 2b ca     rol   $ca
f84d: 2b cb     rol   $cb
f84f: 2b cc     rol   $cc
f851: e4 cb     mov   a,$cb
f853: 80        setc
f854: a4 cd     sbc   a,$cd
f856: e4 cc     mov   a,$cc
f858: a4 ce     sbc   a,$ce
f85a: 90 0a     bcc   $f866
f85c: c4 cc     mov   $cc,a
f85e: e4 cb     mov   a,$cb
f860: 80        setc
f861: a4 cd     sbc   a,$cd
f863: c4 cb     mov   $cb,a
f865: 80        setc
f866: fe df     dbnz  y,$f847
f868: 2b c8     rol   $c8
f86a: 2b c9     rol   $c9
f86c: 2b ca     rol   $ca
f86e: ee        pop   y
f86f: 6f        ret

f870: 5d        mov   x,a
f871: f5 76 f8  mov   a,$f876+x
f874: 5d        mov   x,a
f875: 6f        ret

f876: db $00,$19,$32,$4b,$64,$7d,$96,$af

f87c: 8d 20     mov   y,#$20
f880: f7 d1     mov   a,($d1)+y
f882: 68 ff     cmp   a,#$ff
f884: d0 05     bne   $f88b
f886: 3f 2a fa  call  $fa2a
f889: 2f 26     bra   $f8b1
f88b: c5 97 01  mov   $0197,a
f88e: fc        inc   y
f88f: f7 d1     mov   a,($d1)+y
f891: c5 98 01  mov   $0198,a
f894: fc        inc   y
f895: f7 d1     mov   a,($d1)+y
f897: c5 99 01  mov   $0199,a
f89a: fc        inc   y
f89b: f7 d1     mov   a,($d1)+y
f89d: c5 9a 01  mov   $019a,a
f8a0: fc        inc   y
f8a1: 8f 08 dd  mov   $dd,#$08
f8a4: cd 00     mov   x,#$00
f8a6: f7 d1     mov   a,($d1)+y
f8a8: d5 9b 01  mov   $019b+x,a
f8ab: fc        inc   y
f8ac: 3d        inc   x
f8ad: c8 08     cmp   x,#$08
f8af: d0 f5     bne   $f8a6
f8b1: 8d 06     mov   y,#$06
f8b3: f7 d1     mov   a,($d1)+y
f8b5: 3f 73 f4  call  $f473
f8b8: e8 00     mov   a,#$00
f8ba: c5 85 01  mov   $0185,a
f8bd: c5 86 01  mov   $0186,a
f8c0: 8f 00 df  mov   $df,#$00
f8c3: 8f 08 dd  mov   $dd,#$08
f8c6: 8d 10     mov   y,#$10
f8c8: fc        inc   y
f8c9: f7 d1     mov   a,($d1)+y
f8cb: dc        dec   y
f8cc: 37 d1     and   a,($d1)+y
f8ce: 68 ff     cmp   a,#$ff
f8d0: f0 30     beq   $f902
f8d2: 6d        push  y
f8d3: e4 df     mov   a,$df
f8d5: 3f 70 f8  call  $f870
f8d8: 3f 0f f8  call  $f80f
f8db: f7 d1     mov   a,($d1)+y
f8dd: fc        inc   y
f8de: 60        clrc
f8df: 84 d1     adc   a,$d1
f8e1: d4 00     mov   $00+x,a
f8e3: f7 d1     mov   a,($d1)+y
f8e5: 84 d2     adc   a,$d2
f8e7: d4 01     mov   $01+x,a
f8e9: e4 df     mov   a,$df
f8eb: 8d 28     mov   y,#$28
f8ed: cf        mul   ya
f8ee: 60        clrc
f8ef: 88 00     adc   a,#$00
f8f1: d4 02     mov   $02+x,a
f8f3: dd        mov   a,y
f8f4: 88 fc     adc   a,#$fc
f8f6: d4 03     mov   $03+x,a
f8f8: ee        pop   y
f8f9: ab df     inc   $df
f8fb: ac 85 01  inc   $0185
f8fe: 80        setc
f8ff: 2c 86 01  rol   $0186
f902: fc        inc   y
f903: fc        inc   y
f904: 6e dd c1  dbnz  $dd,$f8c8
f907: 6f        ret

f908: 8d 06     mov   y,#$06
f90a: f7 d3     mov   a,($d3)+y
f90c: 3f 87 f4  call  $f487
f90f: e8 00     mov   a,#$00
f911: c5 88 01  mov   $0188,a
f914: c5 89 01  mov   $0189,a
f917: 8f 07 df  mov   $df,#$07
f91a: 8f 08 dd  mov   $dd,#$08
f91d: 8d 10     mov   y,#$10
f91f: fc        inc   y
f920: f7 d3     mov   a,($d3)+y
f922: dc        dec   y
f923: 37 d3     and   a,($d3)+y
f925: 68 ff     cmp   a,#$ff
f927: f0 30     beq   $f959
f929: 6d        push  y
f92a: e4 df     mov   a,$df
f92c: 3f 70 f8  call  $f870
f92f: 3f 0f f8  call  $f80f
f932: f7 d3     mov   a,($d3)+y
f934: fc        inc   y
f935: 60        clrc
f936: 84 d3     adc   a,$d3
f938: d4 00     mov   $00+x,a
f93a: f7 d3     mov   a,($d3)+y
f93c: 84 d4     adc   a,$d4
f93e: d4 01     mov   $01+x,a
f940: e4 df     mov   a,$df
f942: 8d 28     mov   y,#$28
f944: cf        mul   ya
f945: 60        clrc
f946: 88 00     adc   a,#$00
f948: d4 02     mov   $02+x,a
f94a: dd        mov   a,y
f94b: 88 fc     adc   a,#$fc
f94d: d4 03     mov   $03+x,a
f94f: ee        pop   y
f950: 8b df     dec   $df
f952: ac 88 01  inc   $0188
f955: 80        setc
f956: 6c 89 01  ror   $0189
f959: fc        inc   y
f95a: fc        inc   y
f95b: 6e dd c1  dbnz  $dd,$f91f
f95e: 6f        ret

f95f: 7d        mov   a,x
f960: f0 1b     beq   $f97d
f962: 8d 5c     mov   y,#$5c
f964: 61        tcall 6
f965: 7d        mov   a,x
f966: 48 ff     eor   a,#$ff
f968: 25 90 01  and   a,$0190
f96b: c5 90 01  mov   $0190,a
f96e: 8d 3d     mov   y,#$3d
f970: 61        tcall 6
f971: 7d        mov   a,x
f972: 48 ff     eor   a,#$ff
f974: 25 91 01  and   a,$0191
f977: c5 91 01  mov   $0191,a
f97a: 8d 4d     mov   y,#$4d
f97c: 61        tcall 6
f97d: 6f        ret

f97e: e5 99 01  mov   a,$0199
f981: 8d 7d     mov   y,#$7d
f983: 61        tcall 6
f984: e5 97 01  mov   a,$0197
f987: 8d 0c     mov   y,#$0c
f989: 61        tcall 6
f98a: 8d 1c     mov   y,#$1c
f98c: 61        tcall 6
f98d: e5 98 01  mov   a,$0198
f990: 8d 2c     mov   y,#$2c
f992: 61        tcall 6
f993: 8d 3c     mov   y,#$3c
f995: 61        tcall 6
f996: e5 9a 01  mov   a,$019a
f999: 8d 0d     mov   y,#$0d
f99b: 61        tcall 6
f99c: 3f 0d fa  call  $fa0d
f99f: 6f        ret

f9a0: e8 e0     mov   a,#$e0
f9a2: 8d 6c     mov   y,#$6c
f9a4: 61        tcall 6
f9a5: e8 00     mov   a,#$00
f9a7: 8d 7d     mov   y,#$7d
f9a9: 61        tcall 6
f9aa: e8 02     mov   a,#$02
f9ac: 8d 6d     mov   y,#$6d
f9ae: 61        tcall 6
f9af: e8 00     mov   a,#$00
f9b1: 8d 2d     mov   y,#$2d
f9b3: 61        tcall 6
f9b4: e8 fb     mov   a,#$fb
f9b6: 8d 5d     mov   y,#$5d
f9b8: 61        tcall 6
f9b9: 6f        ret

f9ba: 3f a0 f9  call  $f9a0
f9bd: 3f 7e f9  call  $f97e
f9c0: cd ff     mov   x,#$ff
f9c2: 3f 5f f9  call  $f95f
f9c5: 8f 08 dd  mov   $dd,#$08
f9c8: 8d 04     mov   y,#$04
f9ca: 3f d1 f9  call  $f9d1
f9cd: 6e dd fa  dbnz  $dd,$f9ca
f9d0: 6f        ret

f9d1: e8 00     mov   a,#$00
f9d3: 61        tcall 6
f9d4: fc        inc   y
f9d5: e8 ff     mov   a,#$ff
f9d7: 61        tcall 6
f9d8: fc        inc   y
f9d9: e8 e0     mov   a,#$e0
f9db: 61        tcall 6
f9dc: dd        mov   a,y
f9dd: 60        clrc
f9de: 88 0e     adc   a,#$0e
f9e0: fd        mov   y,a
f9e1: 6f        ret

f9e2: e8 00     mov   a,#$00
f9e4: c5 00 02  mov   $0200,a
f9e7: c5 01 02  mov   $0201,a
f9ea: c5 02 02  mov   $0202,a
f9ed: c5 03 02  mov   $0203,a
f9f0: e5 99 01  mov   a,$0199
f9f3: f0 17     beq   $fa0c
f9f5: 1c        asl   a
f9f6: 1c        asl   a
f9f7: 1c        asl   a
f9f8: c4 dd     mov   $dd,a
f9fa: 8f 00 db  mov   $db,#$00
f9fd: 8f 02 dc  mov   $dc,#$02
fa00: e8 00     mov   a,#$00
fa02: fd        mov   y,a
fa03: d7 db     mov   ($db)+y,a
fa05: fe fc     dbnz  y,$fa03
fa07: ab dc     inc   $dc
fa09: 6e dd f7  dbnz  $dd,$fa03
fa0c: 6f        ret

fa0d: 4d        push  x
fa0e: 8d 7f     mov   y,#$7f
fa10: cd 07     mov   x,#$07
fa12: f5 9b 01  mov   a,$019b+x
fa15: 61        tcall 6
fa16: dd        mov   a,y
fa17: 80        setc
fa18: a8 10     sbc   a,#$10
fa1a: fd        mov   y,a
fa1b: 1d        dec   x
fa1c: 10 f4     bpl   $fa12
fa1e: ce        pop   x
fa1f: 6f        ret

fa20: e7 00     mov   a,($00+x)
fa22: bb 00     inc   $00+x
fa24: f0 01     beq   $fa27
fa26: 6f        ret

fa27: bb 01     inc   $01+x
fa29: 6f        ret

fa2a: e8 60     mov   a,#$60
fa2c: c5 97 01  mov   $0197,a
fa2f: e8 30     mov   a,#$30
fa31: c5 98 01  mov   $0198,a
fa34: e8 00     mov   a,#$00
fa36: c5 99 01  mov   $0199,a
fa39: e8 a0     mov   a,#$a0
fa3b: c5 9a 01  mov   $019a,a
fa3e: 8d 07     mov   y,#$07
fa40: e8 00     mov   a,#$00
fa42: d6 9b 01  mov   $019b+y,a
fa45: fe fb     dbnz  y,$fa42
fa47: e8 7f     mov   a,#$7f
fa49: c5 9b 01  mov   $019b,a
fa4c: 6f        ret

fa4d: e8 ff     mov   a,#$ff
fa4f: c5 92 01  mov   $0192,a
fa52: c5 94 01  mov   $0194,a
fa55: e8 40     mov   a,#$40
fa57: c5 93 01  mov   $0193,a
fa5a: c5 95 01  mov   $0195,a
fa5d: e8 00     mov   a,#$00
fa5f: c5 85 01  mov   $0185,a
fa62: c5 88 01  mov   $0188,a
fa65: c5 86 01  mov   $0186,a
fa68: c5 89 01  mov   $0189,a
fa6b: c5 8e 01  mov   $018e,a
fa6e: c5 90 01  mov   $0190,a
fa71: c5 91 01  mov   $0191,a
fa74: bc        inc   a
fa75: c5 96 01  mov   $0196,a
fa78: e8 10     mov   a,#$10
fa7a: c5 84 01  mov   $0184,a
fa7d: e8 04     mov   a,#$04
fa7f: c5 87 01  mov   $0187,a
fa82: e8 a0     mov   a,#$a0
fa84: c5 8a 01  mov   $018a,a
fa87: 3f 2a fa  call  $fa2a
fa8a: 8f 00 e0  mov   $e0,#$00
fa8d: 6f        ret

fa8e: 8d 40     mov   y,#$40
fa90: e8 ff     mov   a,#$ff
fa92: d6 3f 01  mov   $013f+y,a
fa95: fe fb     dbnz  y,$fa92
fa97: e8 f0     mov   a,#$f0
fa99: 80        setc
fa9a: a5 87 01  sbc   a,$0187
fa9d: c4 d4     mov   $d4,a
fa9f: 8f 00 d3  mov   $d3,#$00
faa2: 80        setc
faa3: a5 84 01  sbc   a,$0184
faa6: c4 d2     mov   $d2,a
faa8: 8f 00 d1  mov   $d1,#$00
faab: fd        mov   y,a
faac: e8 00     mov   a,#$00
faae: da d5     movw  $d5,ya
fab0: c5 83 01  mov   $0183,a
fab3: 6f        ret

fe80: 2f 2a     bra   $feac
fe82: 2f fe     bra   $fe82

fe84: dw $ff5c
fe86: dw $ff75
fe88: dw $ff98
fe8a: dw $ff43
fe8c: dw $ff67
fe8e: dw $fe82
fe90: dw $ff39
fe92: dw $ff3e
fe94: dw $fe82
fe96: dw $fe82
fe98: dw $fe82
fe9a: dw $fe82
fe9c: dw $fe82
fe9e: dw $fe82
fea0: dw $fe82
fea2: dw $fe82

fea4: dw $ff10
fea6: dw $ff16
fea8: dw $ff2c
feaa: dw $ff38

feac: 20        clrp
fead: 8f 00 f5  mov   $f5,#$00
feb0: 8f 6c f2  mov   $f2,#$6c
feb3: 8f e0 f3  mov   $f3,#$e0
feb6: 8f 6d f2  mov   $f2,#$6d
feb9: 8f 02 f3  mov   $f3,#$02
febc: 8f 7d f2  mov   $f2,#$7d
febf: 8f 00 f3  mov   $f3,#$00
fec2: 8f 00 f1  mov   $f1,#$00
fec5: cd 20     mov   x,#$20
fec7: 8d 00     mov   y,#$00
fec9: 1d        dec   x
feca: 1d        dec   x
fecb: f6 84 fe  mov   a,$fe84+y
fece: d5 c0 ff  mov   $ffc0+x,a
fed1: f6 85 fe  mov   a,$fe85+y
fed4: d5 c1 ff  mov   $ffc1+x,a
fed7: fc        inc   y
fed8: fc        inc   y
fed9: ad 20     cmp   y,#$20
fedb: d0 ec     bne   $fec9
fedd: 8d 6c     mov   y,#$6c
fedf: e8 c0     mov   a,#$c0
fee1: 61        tcall 6
fee2: 01        tcall 0
fee3: f0 fd     beq   $fee2
fee5: e5 e1 ff  mov   a,$ffe1
fee8: d0 06     bne   $fef0
feea: 11        tcall 1
feeb: 3f 67 ff  call  $ff67
feee: 2f f2     bra   $fee2
fef0: 1c        asl   a
fef1: 5d        mov   x,a
fef2: f4 ec     mov   a,$ec+x
fef4: fb ed     mov   y,$ed+x
fef6: da ec     movw  $ec,ya
fef8: 8d 00     mov   y,#$00
fefa: e9 e0 ff  mov   x,$ffe0
fefd: 3f 98 ff  call  $ff98
ff00: dd        mov   a,y
ff01: 8d 00     mov   y,#$00
ff03: 7a ec     addw  ya,$ec
ff05: e5 e1 ff  mov   a,$ffe1
ff08: 1c        asl   a
ff09: 5d        mov   x,a
ff0a: d4 ec     mov   $ec+x,a
ff0c: db ed     mov   $ed+x,y
ff0e: 2f d2     bra   $fee2
ff10: 8f 80 f1  mov   $f1,#$80
ff13: 5f c0 ff  jmp   $ffc0

ff16: e9 e4 ff  mov   x,$ffe4
ff19: bd        mov   sp,x
ff1a: e5 e9 ff  mov   a,$ffe9
ff1d: 2d        push  a
ff1e: e5 e8 ff  mov   a,$ffe8
ff21: 2d        push  a
ff22: e9 e7 ff  mov   x,$ffe7
ff25: ec e6 ff  mov   y,$ffe6
ff28: e5 e5 ff  mov   a,$ffe5
ff2b: 6f        ret

ff2c: e5 e6 ff  mov   a,$ffe6
ff2f: ec e7 ff  mov   y,$ffe7
ff32: da ec     movw  $ec,ya
ff34: 3f 43 ff  call  $ff43
ff37: 6f        ret

ff38: 6f        ret

ff39: cb f2     mov   $f2,y
ff3b: c4 f3     mov   $f3,a
ff3d: 6f        ret

ff3e: cb f2     mov   $f2,y
ff40: e4 f3     mov   a,$f3
ff42: 6f        ret

ff43: 8d 00     mov   y,#$00
ff45: e5 e4 ff  mov   a,$ffe4
ff48: f0 0a     beq   $ff54
ff4a: 2d        push  a
ff4b: e9 e3 ff  mov   x,$ffe3
ff4e: 4f 98     pcall $98
ff50: ae        pop   a
ff51: 9c        dec   a
ff52: d0 f6     bne   $ff4a
ff54: e9 e5 ff  mov   x,$ffe5
ff57: f0 02     beq   $ff5b
ff59: 4f 98     pcall $98
ff5b: 6f        ret

ff5c: e4 f5     mov   a,$f5
ff5e: c5 e1 ff  mov   $ffe1,a
ff61: e4 f4     mov   a,$f4
ff63: c5 e0 ff  mov   $ffe0,a
ff66: 6f        ret

ff67: e5 e2 ff  mov   a,$ffe2
ff6a: 1c        asl   a
ff6b: 5d        mov   x,a
ff6c: f5 a5 fe  mov   a,$fea5+x
ff6f: 2d        push  a
ff70: f5 a4 fe  mov   a,$fea4+x
ff73: 2d        push  a
ff74: 6f        ret

ff75: 8d 00     mov   y,#$00
ff77: e9 e0 ff  mov   x,$ffe0
ff7a: e4 f6     mov   a,$f6
ff7c: d6 e2 ff  mov   $ffe2+y,a
ff7f: e4 f7     mov   a,$f7
ff81: d6 e3 ff  mov   $ffe3+y,a
ff84: d8 f5     mov   $f5,x
ff86: 1d        dec   x
ff87: f0 08     beq   $ff91
ff89: fc        inc   y
ff8a: fc        inc   y
ff8b: 3e f4     cmp   x,$f4
ff8d: d0 fc     bne   $ff8b
ff8f: 2f e9     bra   $ff7a
ff91: e4 f4     mov   a,$f4
ff93: d0 fc     bne   $ff91
ff95: c4 f5     mov   $f5,a
ff97: 6f        ret

ff98: 3e f4     cmp   x,$f4
ff9a: d0 fc     bne   $ff98
ff9c: e4 f6     mov   a,$f6
ff9e: d7 ec     mov   ($ec)+y,a
ffa0: fc        inc   y
ffa1: e4 f7     mov   a,$f7
ffa3: d7 ec     mov   ($ec)+y,a
ffa5: d8 f5     mov   $f5,x
ffa7: fc        inc   y
ffa8: d0 02     bne   $ffac
ffaa: ab ed     inc   $ed
ffac: 1d        dec   x
ffad: f0 06     beq   $ffb5
ffaf: 3e f4     cmp   x,$f4
ffb1: d0 fc     bne   $ffaf
ffb3: 2f e7     bra   $ff9c
ffb5: e4 f4     mov   a,$f4
ffb7: d0 fc     bne   $ffb5
ffb9: c4 f5     mov   $f5,a
ffbb: 6f        ret

ffbc: db $ff,$ff,$ff,$ff

ffc0: dw $fe82
ffc2: dw $fa20
ffc4: dw $fe82
ffc6: dw $fe82
ffc8: dw $fe82
ffca: dw $fe82
ffcc: dw $fe82
ffce: dw $fe82
ffd0: dw $ff3e
ffd2: dw $ff39
ffd4: dw $fe82
ffd6: dw $ff67
ffd8: dw $ff43
ffda: dw $ff98
ffdc: dw $ff75
ffde: dw $ff5c
