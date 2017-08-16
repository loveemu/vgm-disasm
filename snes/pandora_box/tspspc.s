f000: cd 3f     mov   x,#$3f
f002: bd        mov   sp,x
f003: e8 4a     mov   a,#$4a
f005: c5 c2 ff  mov   $ffc2,a
f008: e8 fa     mov   a,#$fa
f00a: c5 c3 ff  mov   $ffc3,a
f00d: 3f bb fa  call  $fabb
f010: 5f af f0  jmp   $f0af

; pitch table
f013: dw $0983  ; c
f015: dw $0a14  ; c#
f017: dw $0aad  ; d
f019: dw $0b50  ; d#
f01b: dw $0bfc  ; e
f01d: dw $0cb3  ; f
f01f: dw $0d74  ; f#
f021: dw $0e41  ; g
f023: dw $0f1a  ; g#
f025: dw $1000  ; a
f027: dw $10f3  ; a#
f029: dw $11f6  ; b

f02b: dw $f1a9
f02d: dw $f0d3
f02f: dw $f0dd
f031: dw $f1a9
f033: dw $f0f1
f035: dw $f10e
f037: dw $f118
f039: dw $f12e
f03b: dw $f13d
f03d: dw $f156
f03f: dw $f165
f041: dw $f174
f043: dw $f1a9
f045: dw $f1a9
f047: dw $f1a9
f049: dw $f1a9
f04b: dw $f1aa
f04d: dw $f1bb
f04f: dw $f1c8
f051: dw $f1d5
f053: dw $f1f7
f055: dw $f1f7
f057: dw $f1f7
f059: dw $f1f7
f05b: dw $f1f8
f05d: dw $f20d
f05f: dw $f21a
f061: dw $f227
f063: dw $f248
f065: dw $f248
f067: dw $f248
f069: dw $f248

f06b: db $01,$02,$04,$08,$10,$20,$40,$80

f073: db $00,$04,$08,$0c,$10,$14,$18,$1c
f07b: db $20,$24,$28,$2c,$30,$34,$38,$3c

f083: db $14,$2d,$46,$5f,$78,$91,$aa,$c3

f08b: db $a0,$77,$77,$77,$77,$77,$77,$77,$77
f094: db $a0,$77,$77,$77,$77,$77,$77,$77,$77
f09d: db $a0,$99,$99,$99,$99,$99,$99,$99,$99
f0a6: db $a3,$99,$99,$99,$99,$99,$99,$99,$99

f0af: 3f bf f2  call  $f2bf
f0b2: 3f cc f2  call  $f2cc
f0b5: e4 12     mov   a,$12
f0b7: c4 f6     mov   $f6,a
f0b9: 01        tcall 0
f0ba: f0 f3     beq   $f0af
f0bc: 11        tcall 1
f0bd: e5 e2 ff  mov   a,$ffe2
f0c0: 1c        asl   a
f0c1: 5d        mov   x,a
f0c2: f5 2b f0  mov   a,$f02b+x
f0c5: c5 cf f0  mov   $f0cf,a
f0c8: f5 2c f0  mov   a,$f02c+x
f0cb: c5 d0 f0  mov   $f0d0,a
f0ce: 3f f1 f0  call  $f0f1
f0d1: 2f dc     bra   $f0af
f0d3: e5 e3 ff  mov   a,$ffe3
f0d6: c5 9b 01  mov   $019b,a
f0d9: 3f 77 fa  call  $fa77
f0dc: 6f        ret

f0dd: e5 e3 ff  mov   a,$ffe3
f0e0: c5 9a 01  mov   $019a,a
f0e3: e8 03     mov   a,#$03
f0e5: c5 a8 01  mov   $01a8,a
f0e8: 3f dd f2  call  $f2dd
f0eb: 8c a8 01  dec   $01a8
f0ee: 10 f8     bpl   $f0e8
f0f0: 6f        ret

f0f1: e5 e4 ff  mov   a,$ffe4
f0f4: 1c        asl   a
f0f5: 5d        mov   x,a
f0f6: e5 e3 ff  mov   a,$ffe3
f0f9: c5 a8 01  mov   $01a8,a
f0fc: 1c        asl   a
f0fd: fd        mov   y,a
f0fe: f5 7e fb  mov   a,$fb7e+x
f101: d6 c6 01  mov   $01c6+y,a
f104: f5 7f fb  mov   a,$fb7f+x
f107: d6 c7 01  mov   $01c7+y,a
f10a: 3f 49 f2  call  $f249
f10d: 6f        ret

f10e: e5 e3 ff  mov   a,$ffe3
f111: c5 a8 01  mov   $01a8,a
f114: 3f 8b f2  call  $f28b
f117: 6f        ret

f118: ec e3 ff  mov   y,$ffe3
f11b: cc a8 01  mov   $01a8,y
f11e: e5 e4 ff  mov   a,$ffe4
f121: d6 c2 01  mov   $01c2+y,a
f124: e5 e5 ff  mov   a,$ffe5
f127: d6 be 01  mov   $01be+y,a
f12a: 3f dd f2  call  $f2dd
f12d: 6f        ret

f12e: ec e3 ff  mov   y,$ffe3
f131: e5 e4 ff  mov   a,$ffe4
f134: d6 b2 01  mov   $01b2+y,a
f137: e8 00     mov   a,#$00
f139: d6 b6 01  mov   $01b6+y,a
f13c: 6f        ret

f13d: e8 f0     mov   a,#$f0
f13f: 80        setc
f140: a5 9b 01  sbc   a,$019b
f143: c4 0b     mov   $0b,a
f145: c5 81 01  mov   $0181,a
f148: e8 00     mov   a,#$00
f14a: c4 0a     mov   $0a,a
f14c: c5 80 01  mov   $0180,a
f14f: c5 83 01  mov   $0183,a
f152: c5 82 01  mov   $0182,a
f155: 6f        ret

f156: ba 0a     movw  ya,$0a
f158: c5 80 01  mov   $0180,a
f15b: cc 81 01  mov   $0181,y
f15e: e5 83 01  mov   a,$0183
f161: c5 82 01  mov   $0182,a
f164: 6f        ret

f165: e5 80 01  mov   a,$0180
f168: ec 81 01  mov   y,$0181
f16b: da 0a     movw  $0a,ya
f16d: e5 82 01  mov   a,$0182
f170: c5 83 01  mov   $0183,a
f173: 6f        ret

f174: 3f a8 f2  call  $f2a8
f177: ba 0a     movw  ya,$0a
f179: 9a 00     subw  ya,$00
f17b: da 0a     movw  $0a,ya
f17d: da ec     movw  $ec,ya
f17f: 31        tcall 3
f180: ec 83 01  mov   y,$0183
f183: e5 e6 ff  mov   a,$ffe6
f186: d6 40 01  mov   $0140+y,a
f189: dd        mov   a,y
f18a: 1c        asl   a
f18b: 1c        asl   a
f18c: 5d        mov   x,a
f18d: ac 83 01  inc   $0183
f190: ba 0a     movw  ya,$0a
f192: d5 00 fc  mov   $fc00+x,a
f195: dd        mov   a,y
f196: d5 01 fc  mov   $fc01+x,a
f199: e5 e8 ff  mov   a,$ffe8
f19c: ec e9 ff  mov   y,$ffe9
f19f: 7a 0a     addw  ya,$0a
f1a1: d5 02 fc  mov   $fc02+x,a
f1a4: dd        mov   a,y
f1a5: d5 03 fc  mov   $fc03+x,a
f1a8: 6f        ret

f1a9: 6f        ret

f1aa: e8 f0     mov   a,#$f0
f1ac: c5 85 01  mov   $0185,a
f1af: c5 87 01  mov   $0187,a
f1b2: e8 00     mov   a,#$00
f1b4: c5 84 01  mov   $0184,a
f1b7: c5 86 01  mov   $0186,a
f1ba: 6f        ret

f1bb: e5 84 01  mov   a,$0184
f1be: c5 86 01  mov   $0186,a
f1c1: e5 85 01  mov   a,$0185
f1c4: c5 87 01  mov   $0187,a
f1c7: 6f        ret

f1c8: e5 86 01  mov   a,$0186
f1cb: c5 84 01  mov   $0184,a
f1ce: e5 87 01  mov   a,$0187
f1d1: c5 85 01  mov   $0185,a
f1d4: 6f        ret

f1d5: 3f a8 f2  call  $f2a8
f1d8: e5 e6 ff  mov   a,$ffe6
f1db: 1c        asl   a
f1dc: 5d        mov   x,a
f1dd: e5 85 01  mov   a,$0185
f1e0: fd        mov   y,a
f1e1: e5 84 01  mov   a,$0184
f1e4: 9a 00     subw  ya,$00
f1e6: da ec     movw  $ec,ya
f1e8: c5 84 01  mov   $0184,a
f1eb: cc 85 01  mov   $0185,y
f1ee: d5 7e fb  mov   $fb7e+x,a
f1f1: dd        mov   a,y
f1f2: d5 7f fb  mov   $fb7f+x,a
f1f5: 31        tcall 3
f1f6: 6f        ret

f1f7: 6f        ret

f1f8: e8 f0     mov   a,#$f0
f1fa: 80        setc
f1fb: a5 9b 01  sbc   a,$019b
f1fe: c5 89 01  mov   $0189,a
f201: c5 8b 01  mov   $018b,a
f204: e8 00     mov   a,#$00
f206: c5 88 01  mov   $0188,a
f209: c5 8a 01  mov   $018a,a
f20c: 6f        ret

f20d: e5 88 01  mov   a,$0188
f210: c5 8a 01  mov   $018a,a
f213: e5 89 01  mov   a,$0189
f216: c5 8b 01  mov   $018b,a
f219: 6f        ret

f21a: e5 8a 01  mov   a,$018a
f21d: c5 88 01  mov   $0188,a
f220: e5 8b 01  mov   a,$018b
f223: c5 89 01  mov   $0189,a
f226: 6f        ret

f227: 3f a8 f2  call  $f2a8
f22a: e5 e6 ff  mov   a,$ffe6
f22d: 1c        asl   a
f22e: 5d        mov   x,a
f22f: e5 89 01  mov   a,$0189
f232: d5 7f fb  mov   $fb7f+x,a
f235: fd        mov   y,a
f236: e5 88 01  mov   a,$0188
f239: d5 7e fb  mov   $fb7e+x,a
f23c: da ec     movw  $ec,ya
f23e: 7a 00     addw  ya,$00
f240: c5 88 01  mov   $0188,a
f243: cc 89 01  mov   $0189,y
f246: 31        tcall 3
f247: 6f        ret

f248: 6f        ret

f249: ec a8 01  mov   y,$01a8
f24c: f6 6b f0  mov   a,$f06b+y
f24f: 24 12     and   a,$12
f251: f0 03     beq   $f256
f253: 3f 8b f2  call  $f28b
f256: e5 a8 01  mov   a,$01a8
f259: 1c        asl   a
f25a: fd        mov   y,a
f25b: f6 c6 01  mov   a,$01c6+y
f25e: c4 08     mov   $08,a
f260: f6 c7 01  mov   a,$01c7+y
f263: c4 09     mov   $09,a
f265: 3f 44 f9  call  $f944
f268: e5 a8 01  mov   a,$01a8
f26b: d0 06     bne   $f273
f26d: 3f 1f fa  call  $fa1f
f270: 3f cc f9  call  $f9cc
f273: ec a8 01  mov   y,$01a8
f276: e8 ff     mov   a,#$ff
f278: d6 ba 01  mov   $01ba+y,a
f27b: e8 00     mov   a,#$00
f27d: d6 b2 01  mov   $01b2+y,a
f280: d6 b6 01  mov   $01b6+y,a
f283: f6 6b f0  mov   a,$f06b+y
f286: 04 12     or    a,$12
f288: c4 12     mov   $12,a
f28a: 6f        ret

f28b: ec a8 01  mov   y,$01a8
f28e: f6 ae 01  mov   a,$01ae+y
f291: f0 06     beq   $f299
f293: 5d        mov   x,a
f294: 6d        push  y
f295: 3f ff f2  call  $f2ff
f298: ee        pop   y
f299: e8 00     mov   a,#$00
f29b: d6 ae 01  mov   $01ae+y,a
f29e: f6 6b f0  mov   a,$f06b+y
f2a1: 48 ff     eor   a,#$ff
f2a3: 24 12     and   a,$12
f2a5: c4 12     mov   $12,a
f2a7: 6f        ret

f2a8: e5 e3 ff  mov   a,$ffe3
f2ab: ec e4 ff  mov   y,$ffe4
f2ae: cf        mul   ya
f2af: da 00     movw  $00,ya
f2b1: e5 e5 ff  mov   a,$ffe5
f2b4: 8d 00     mov   y,#$00
f2b6: 7a 00     addw  ya,$00
f2b8: da 00     movw  $00,ya
f2ba: 0b 00     asl   $00
f2bc: 2b 01     rol   $01
f2be: 6f        ret

f2bf: e4 fd     mov   a,$fd
f2c1: f0 08     beq   $f2cb
f2c3: e8 00     mov   a,#$00
f2c5: c5 a8 01  mov   $01a8,a
f2c8: 3f 1e f3  call  $f31e
f2cb: 6f        ret

f2cc: e4 fe     mov   a,$fe
f2ce: f0 0c     beq   $f2dc
f2d0: 8d 03     mov   y,#$03
f2d2: 6d        push  y
f2d3: cc a8 01  mov   $01a8,y
f2d6: 3f 1e f3  call  $f31e
f2d9: ee        pop   y
f2da: fe f6     dbnz  y,$f2d2
f2dc: 6f        ret

f2dd: ec a8 01  mov   y,$01a8
f2e0: f6 ae 01  mov   a,$01ae+y
f2e3: d0 01     bne   $f2e6
f2e5: 6f        ret

f2e6: 8d 08     mov   y,#$08
f2e8: 8f 00 11  mov   $11,#$00
f2eb: 5c        lsr   a
f2ec: 90 0c     bcc   $f2fa
f2ee: 2d        push  a
f2ef: 6d        push  y
f2f0: e4 11     mov   a,$11
f2f2: 3f 06 f9  call  $f906
f2f5: 3f 08 f8  call  $f808
f2f8: ee        pop   y
f2f9: ae        pop   a
f2fa: ab 11     inc   $11
f2fc: fe ed     dbnz  y,$f2eb
f2fe: 6f        ret

f2ff: 7d        mov   a,x
f300: f0 1b     beq   $f31d
f302: 8d 5c     mov   y,#$5c
f304: 61        tcall 6
f305: 7d        mov   a,x
f306: 48 ff     eor   a,#$ff
f308: 25 8c 01  and   a,$018c
f30b: c5 8c 01  mov   $018c,a
f30e: 8d 3d     mov   y,#$3d
f310: 61        tcall 6
f311: 7d        mov   a,x
f312: 48 ff     eor   a,#$ff
f314: 25 8d 01  and   a,$018d
f317: c5 8d 01  mov   $018d,a
f31a: 8d 4d     mov   y,#$4d
f31c: 61        tcall 6
f31d: 6f        ret

f31e: e9 a8 01  mov   x,$01a8
f321: f5 ae 01  mov   a,$01ae+x
f324: d0 01     bne   $f327
f326: 6f        ret

f327: 7d        mov   a,x
f328: 1c        asl   a
f329: fd        mov   y,a
f32a: f6 c6 01  mov   a,$01c6+y
f32d: c4 08     mov   $08,a
f32f: f6 c7 01  mov   a,$01c7+y
f332: c4 09     mov   $09,a
f334: e8 00     mov   a,#$00
f336: c5 a7 01  mov   $01a7,a
f339: f5 b2 01  mov   a,$01b2+x
f33c: f0 24     beq   $f362
f33e: 8d 08     mov   y,#$08
f340: cf        mul   ya
f341: da 0e     movw  $0e,ya
f343: f5 ba 01  mov   a,$01ba+x
f346: fd        mov   y,a
f347: f5 b6 01  mov   a,$01b6+x
f34a: 9a 0e     subw  ya,$0e
f34c: b0 03     bcs   $f351
f34e: e8 00     mov   a,#$00
f350: fd        mov   y,a
f351: d5 b6 01  mov   $01b6+x,a
f354: dd        mov   a,y
f355: 75 ba 01  cmp   a,$01ba+x
f358: f0 08     beq   $f362
f35a: d5 ba 01  mov   $01ba+x,a
f35d: e8 ff     mov   a,#$ff
f35f: c5 a7 01  mov   $01a7,a
f362: f5 ae 01  mov   a,$01ae+x
f365: 8f 00 11  mov   $11,#$00
f368: 8d 08     mov   y,#$08
f36a: 5c        lsr   a
f36b: 90 35     bcc   $f3a2
f36d: 2d        push  a
f36e: 6d        push  y
f36f: e4 11     mov   a,$11
f371: 3f 06 f9  call  $f906
f374: e8 80     mov   a,#$80
f376: 34 08     and   a,$08+x
f378: d0 26     bne   $f3a0
f37a: e8 bf     mov   a,#$bf
f37c: 34 08     and   a,$08+x
f37e: d4 08     mov   $08+x,a
f380: f4 02     mov   a,$02+x
f382: fb 03     mov   y,$03+x
f384: da 0c     movw  $0c,ya
f386: 3f 53 f4  call  $f453
f389: ba 0c     movw  ya,$0c
f38b: d4 02     mov   $02+x,a
f38d: db 03     mov   $03+x,y
f38f: 3f f0 f3  call  $f3f0
f392: e5 a7 01  mov   a,$01a7
f395: f0 09     beq   $f3a0
f397: e8 40     mov   a,#$40
f399: 34 08     and   a,$08+x
f39b: d0 03     bne   $f3a0
f39d: 3f 08 f8  call  $f808
f3a0: ee        pop   y
f3a1: ae        pop   a
f3a2: ab 11     inc   $11
f3a4: fe c4     dbnz  y,$f36a
f3a6: e5 a7 01  mov   a,$01a7
f3a9: f0 0d     beq   $f3b8
f3ab: e9 a8 01  mov   x,$01a8
f3ae: f5 ba 01  mov   a,$01ba+x
f3b1: d0 05     bne   $f3b8
f3b3: 3f 8b f2  call  $f28b
f3b6: 2f 03     bra   $f3bb
f3b8: 3f bc f3  call  $f3bc
f3bb: 6f        ret

f3bc: e8 00     mov   a,#$00
f3be: c5 9d 01  mov   $019d,a
f3c1: ec a8 01  mov   y,$01a8
f3c4: f6 ae 01  mov   a,$01ae+y
f3c7: f0 26     beq   $f3ef
f3c9: 8d 08     mov   y,#$08
f3cb: 8f 00 11  mov   $11,#$00
f3ce: 5c        lsr   a
f3cf: 90 12     bcc   $f3e3
f3d1: 2d        push  a
f3d2: 6d        push  y
f3d3: e4 11     mov   a,$11
f3d5: 3f 06 f9  call  $f906
f3d8: e8 80     mov   a,#$80
f3da: 34 08     and   a,$08+x
f3dc: d0 03     bne   $f3e1
f3de: ac 9d 01  inc   $019d
f3e1: ee        pop   y
f3e2: ae        pop   a
f3e3: ab 11     inc   $11
f3e5: fe e7     dbnz  y,$f3ce
f3e7: e5 9d 01  mov   a,$019d
f3ea: d0 03     bne   $f3ef
f3ec: 3f 8b f2  call  $f28b
f3ef: 6f        ret

f3f0: e8 08     mov   a,#$08
f3f2: 34 08     and   a,$08+x
f3f4: d0 01     bne   $f3f7
f3f6: 6f        ret

f3f7: f4 17     mov   a,$17+x
f3f9: f0 04     beq   $f3ff
f3fb: 9c        dec   a
f3fc: d4 17     mov   $17+x,a
f3fe: 6f        ret

f3ff: f4 15     mov   a,$15+x
f401: 9c        dec   a
f402: f0 03     beq   $f407
f404: d4 15     mov   $15+x,a
f406: 6f        ret

f407: f4 16     mov   a,$16+x
f409: d4 15     mov   $15+x,a
f40b: f4 13     mov   a,$13+x
f40d: 9c        dec   a
f40e: d4 13     mov   $13+x,a
f410: d0 0a     bne   $f41c
f412: f4 14     mov   a,$14+x
f414: d4 13     mov   $13+x,a
f416: f4 08     mov   a,$08+x
f418: 48 20     eor   a,#$20
f41a: d4 08     mov   $08+x,a
f41c: f4 06     mov   a,$06+x
f41e: c4 0e     mov   $0e,a
f420: f4 07     mov   a,$07+x
f422: c4 0f     mov   $0f,a
f424: e8 20     mov   a,#$20
f426: 34 08     and   a,$08+x
f428: f0 0e     beq   $f438
f42a: e4 0e     mov   a,$0e
f42c: 48 ff     eor   a,#$ff
f42e: c4 0e     mov   $0e,a
f430: e4 0f     mov   a,$0f
f432: 48 ff     eor   a,#$ff
f434: c4 0f     mov   $0f,a
f436: 3a 0e     incw  $0e
f438: f4 04     mov   a,$04+x
f43a: 60        clrc
f43b: 84 0e     adc   a,$0e
f43d: d4 04     mov   $04+x,a
f43f: f4 05     mov   a,$05+x
f441: 84 0f     adc   a,$0f
f443: d4 05     mov   $05+x,a
f445: e4 11     mov   a,$11
f447: 9f        xcn   a
f448: bc        inc   a
f449: bc        inc   a
f44a: fd        mov   y,a
f44b: f4 04     mov   a,$04+x
f44d: 61        tcall 6
f44e: fc        inc   y
f44f: f4 05     mov   a,$05+x
f451: 61        tcall 6
f452: 6f        ret

f453: f4 09     mov   a,$09+x
f455: 74 0a     cmp   a,$0a+x
f457: d0 09     bne   $f462
f459: e8 01     mov   a,#$01
f45b: 34 08     and   a,$08+x
f45d: f0 03     beq   $f462
f45f: 3f 74 f7  call  $f774
f462: f4 09     mov   a,$09+x
f464: f0 05     beq   $f46b
f466: 9b 09     dec   $09+x
f468: f0 01     beq   $f46b
f46a: 6f        ret

f46b: 3f 5e f7  call  $f75e
f46e: f4 00     mov   a,$00+x
f470: 14 01     or    a,$01+x
f472: f0 1b     beq   $f48f
f474: e1        tcall 14
f475: c5 9c 01  mov   $019c,a
f478: 68 e0     cmp   a,#$e0
f47a: b0 34     bcs   $f4b0
f47c: 68 60     cmp   a,#$60
f47e: b0 18     bcs   $f498
f480: 68 50     cmp   a,#$50
f482: b0 0c     bcs   $f490
f484: 68 48     cmp   a,#$48
f486: b0 20     bcs   $f4a8
f488: 68 40     cmp   a,#$40
f48a: b0 14     bcs   $f4a0
f48c: 3f f5 f6  call  $f6f5
f48f: 6f        ret

f490: 80        setc
f491: a8 50     sbc   a,#$50
f493: 3f 78 f5  call  $f578
f496: 2f d6     bra   $f46e
f498: 80        setc
f499: a8 60     sbc   a,#$60
f49b: 3f a6 f6  call  $f6a6
f49e: 2f ce     bra   $f46e
f4a0: 80        setc
f4a1: a8 40     sbc   a,#$40
f4a3: 3f cb f6  call  $f6cb
f4a6: 2f c6     bra   $f46e
f4a8: 80        setc
f4a9: a8 48     sbc   a,#$48
f4ab: 3f d2 f6  call  $f6d2
f4ae: 2f be     bra   $f46e
f4b0: 3f c0 f4  call  $f4c0
f4b3: 2f b9     bra   $f46e
f4b5: e4 12     mov   a,$12
f4b7: 08 80     or    a,#$80
f4b9: c4 f5     mov   $f5,a
f4bb: fa 00 f4  mov   ($f4),($00)
f4be: 2f fe     bra   $f4be
f4c0: 80        setc
f4c1: a8 e0     sbc   a,#$e0
f4c3: 1c        asl   a
f4c4: fd        mov   y,a
f4c5: f6 d4 f4  mov   a,$f4d4+y
f4c8: c5 d2 f4  mov   $f4d2,a
f4cb: f6 d5 f4  mov   a,$f4d5+y
f4ce: c5 d3 f4  mov   $f4d3,a
f4d1: 5f 6a f5  jmp   $f56a

; vcmd dispatch table
f4d4: dw $f560  ; e0
f4d6: dw $f5bc  ; e1
f4d8: dw $f581  ; e2
f4da: dw $f56a  ; e3
f4dc: dw $f585  ; e4
f4de: dw $f58c  ; e5
f4e0: dw $f532  ; e6
f4e2: dw $f53f  ; e7
f4e4: dw $f593  ; e8
f4e6: dw $f5a9  ; e9
f4e8: dw $f6e4  ; ea
f4ea: dw $f6d5  ; eb
f4ec: dw $f61c  ; ec
f4ee: dw $f64b  ; ed
f4f0: dw $f675  ; ee
f4f2: dw $f613  ; ef
f4f4: dw $f614  ; f0
f4f6: dw $f615  ; f1
f4f8: dw $f502  ; f2
f4fa: dw $f5c0  ; f3
f4fc: dw $f61a  ; f4
f4fe: dw $f690  ; f5
f500: dw $f571  ; f6

f502: e1        tcall 14
f503: c4 0e     mov   $0e,a
f505: 28 03     and   a,#$03
f507: f0 1d     beq   $f526
f509: 9c        dec   a
f50a: d0 0c     bne   $f518
f50c: eb 11     mov   y,$11
f50e: f6 6b f0  mov   a,$f06b+y
f511: 48 ff     eor   a,#$ff
f513: 25 8c 01  and   a,$018c
f516: 2f 08     bra   $f520
f518: eb 11     mov   y,$11
f51a: f6 6b f0  mov   a,$f06b+y
f51d: 05 8c 01  or    a,$018c
f520: c5 8c 01  mov   $018c,a
f523: 8d 3d     mov   y,#$3d
f525: 61        tcall 6
f526: e4 0e     mov   a,$0e
f528: 30 07     bmi   $f531
f52a: 5c        lsr   a
f52b: 5c        lsr   a
f52c: 28 1f     and   a,#$1f
f52e: 8d 6c     mov   y,#$6c
f530: 61        tcall 6
f531: 6f        ret

f532: f4 0e     mov   a,$0e+x
f534: 68 ff     cmp   a,#$ff
f536: f0 06     beq   $f53e
f538: bc        inc   a
f539: d4 0e     mov   $0e+x,a
f53b: 3f 08 f8  call  $f808
f53e: 6f        ret

f53f: f4 0e     mov   a,$0e+x
f541: 68 f0     cmp   a,#$f0
f543: f0 06     beq   $f54b
f545: 9c        dec   a
f546: d4 0e     mov   $0e+x,a
f548: 3f 08 f8  call  $f808
f54b: 6f        ret

f54c: c4 05     mov   $05,a
f54e: 8d 07     mov   y,#$07
f550: f7 08     mov   a,($08)+y
f552: c4 06     mov   $06,a
f554: 3f c1 f8  call  $f8c1
f557: 8f ce f1  mov   $f1,#$ce
f55a: c4 fa     mov   $fa,a
f55c: 8f 07 f1  mov   $f1,#$07
f55f: 6f        ret

f560: e1        tcall 14
f561: ec a8 01  mov   y,$01a8
f564: d0 03     bne   $f569
f566: 3f 4c f5  call  $f54c
f569: 6f        ret

f56a: e1        tcall 14
f56b: d4 0f     mov   $0f+x,a
f56d: 3f 08 f8  call  $f808
f570: 6f        ret

f571: e1        tcall 14
f572: d4 0e     mov   $0e+x,a
f574: 3f 08 f8  call  $f808
f577: 6f        ret

f578: 60        clrc
f579: 88 f0     adc   a,#$f0
f57b: d4 0e     mov   $0e+x,a
f57d: 3f 08 f8  call  $f808
f580: 6f        ret

f581: e1        tcall 14
f582: d4 12     mov   $12+x,a
f584: 6f        ret

f585: bb 0d     inc   $0d+x
f587: e8 ff     mov   a,#$ff
f589: d4 11     mov   $11+x,a
f58b: 6f        ret

f58c: 9b 0d     dec   $0d+x
f58e: e8 ff     mov   a,#$ff
f590: d4 11     mov   $11+x,a
f592: 6f        ret

f593: e1        tcall 14
f594: d4 18     mov   $18+x,a
f596: e1        tcall 14
f597: d4 16     mov   $16+x,a
f599: e1        tcall 14
f59a: d4 06     mov   $06+x,a
f59c: e1        tcall 14
f59d: d4 07     mov   $07+x,a
f59f: e1        tcall 14
f5a0: d4 14     mov   $14+x,a
f5a2: e8 08     mov   a,#$08
f5a4: 14 08     or    a,$08+x
f5a6: d4 08     mov   $08+x,a
f5a8: 6f        ret

f5a9: e1        tcall 14
f5aa: 08 00     or    a,#$00
f5ac: f0 07     beq   $f5b5
f5ae: e8 08     mov   a,#$08
f5b0: 14 08     or    a,$08+x
f5b2: d4 08     mov   $08+x,a
f5b4: 6f        ret

f5b5: e8 f7     mov   a,#$f7
f5b7: 34 08     and   a,$08+x
f5b9: d4 08     mov   $08+x,a
f5bb: 6f        ret

f5bc: e1        tcall 14
f5bd: d4 10     mov   $10+x,a
f5bf: 6f        ret

f5c0: 8f 80 0e  mov   $0e,#$80
f5c3: 8f 00 0f  mov   $0f,#$00
f5c6: e1        tcall 14
f5c7: 8d 0f     mov   y,#$0f
f5c9: cf        mul   ya
f5ca: 4d        push  x
f5cb: cd 7f     mov   x,#$7f
f5cd: 9e        div   ya,x
f5ce: ce        pop   x
f5cf: 04 0e     or    a,$0e
f5d1: c4 0e     mov   $0e,a
f5d3: e1        tcall 14
f5d4: 8d 07     mov   y,#$07
f5d6: cf        mul   ya
f5d7: 4d        push  x
f5d8: cd 7f     mov   x,#$7f
f5da: 9e        div   ya,x
f5db: ce        pop   x
f5dc: 9f        xcn   a
f5dd: 28 f0     and   a,#$f0
f5df: 04 0e     or    a,$0e
f5e1: c4 0e     mov   $0e,a
f5e3: e1        tcall 14
f5e4: 8d 1f     mov   y,#$1f
f5e6: cf        mul   ya
f5e7: 4d        push  x
f5e8: cd 7f     mov   x,#$7f
f5ea: 9e        div   ya,x
f5eb: ce        pop   x
f5ec: 04 0f     or    a,$0f
f5ee: c4 0f     mov   $0f,a
f5f0: e1        tcall 14
f5f1: 8d 07     mov   y,#$07
f5f3: cf        mul   ya
f5f4: 4d        push  x
f5f5: cd 7f     mov   x,#$7f
f5f7: 9e        div   ya,x
f5f8: ce        pop   x
f5f9: 48 ff     eor   a,#$ff
f5fb: 1c        asl   a
f5fc: 1c        asl   a
f5fd: 1c        asl   a
f5fe: 1c        asl   a
f5ff: 1c        asl   a
f600: 04 0f     or    a,$0f
f602: c4 0f     mov   $0f,a
f604: e1        tcall 14
f605: e4 11     mov   a,$11
f607: 9f        xcn   a
f608: 08 05     or    a,#$05
f60a: fd        mov   y,a
f60b: e4 0e     mov   a,$0e
f60d: 61        tcall 6
f60e: fc        inc   y
f60f: e4 0f     mov   a,$0f
f611: 61        tcall 6
f612: 6f        ret

f613: 6f        ret

f614: 6f        ret

f615: e1        tcall 14
f616: fd        mov   y,a
f617: e1        tcall 14
f618: 61        tcall 6
f619: 6f        ret

f61a: e1        tcall 14
f61b: 6f        ret

f61c: e1        tcall 14
f61d: 8d 04     mov   y,#$04
f61f: d7 0c     mov   ($0c)+y,a
f621: 8d 00     mov   y,#$00
f623: f4 00     mov   a,$00+x
f625: d7 0c     mov   ($0c)+y,a
f627: fc        inc   y
f628: f4 01     mov   a,$01+x
f62a: d7 0c     mov   ($0c)+y,a
f62c: 8d 02     mov   y,#$02
f62e: e8 00     mov   a,#$00
f630: d7 0c     mov   ($0c)+y,a
f632: fc        inc   y
f633: d7 0c     mov   ($0c)+y,a
f635: 3f 39 f6  call  $f639
f638: 6f        ret

f639: e8 05     mov   a,#$05
f63b: 8d 00     mov   y,#$00
f63d: 7a 0c     addw  ya,$0c
f63f: da 0c     movw  $0c,ya
f641: 6f        ret

f642: e8 fb     mov   a,#$fb
f644: 8d ff     mov   y,#$ff
f646: 7a 0c     addw  ya,$0c
f648: da 0c     movw  $0c,ya
f64a: 6f        ret

f64b: 3f 42 f6  call  $f642
f64e: 8d 04     mov   y,#$04
f650: f7 0c     mov   a,($0c)+y
f652: 68 ff     cmp   a,#$ff
f654: f0 05     beq   $f65b
f656: 9c        dec   a
f657: f0 1b     beq   $f674
f659: d7 0c     mov   ($0c)+y,a
f65b: 8d 02     mov   y,#$02
f65d: f4 00     mov   a,$00+x
f65f: d7 0c     mov   ($0c)+y,a
f661: fc        inc   y
f662: f4 01     mov   a,$01+x
f664: d7 0c     mov   ($0c)+y,a
f666: 8d 00     mov   y,#$00
f668: f7 0c     mov   a,($0c)+y
f66a: d4 00     mov   $00+x,a
f66c: fc        inc   y
f66d: f7 0c     mov   a,($0c)+y
f66f: d4 01     mov   $01+x,a
f671: 3f 39 f6  call  $f639
f674: 6f        ret

f675: 3f 42 f6  call  $f642
f678: 8d 04     mov   y,#$04
f67a: f7 0c     mov   a,($0c)+y
f67c: 68 01     cmp   a,#$01
f67e: f0 04     beq   $f684
f680: 3f 39 f6  call  $f639
f683: 6f        ret

f684: 8d 02     mov   y,#$02
f686: f7 0c     mov   a,($0c)+y
f688: d4 00     mov   $00+x,a
f68a: fc        inc   y
f68b: f7 0c     mov   a,($0c)+y
f68d: d4 01     mov   $01+x,a
f68f: 6f        ret

f690: e8 80     mov   a,#$80
f692: 14 08     or    a,$08+x
f694: d4 08     mov   $08+x,a
f696: e8 fd     mov   a,#$fd
f698: 34 08     and   a,$08+x
f69a: d4 08     mov   $08+x,a
f69c: 3f 74 f7  call  $f774
f69f: e8 00     mov   a,#$00
f6a1: d4 00     mov   $00+x,a
f6a3: d4 01     mov   $01+x,a
f6a5: 6f        ret

f6a6: 8d 0c     mov   y,#$0c
f6a8: 60        clrc
f6a9: 97 08     adc   a,($08)+y
f6ab: fd        mov   y,a
f6ac: f7 08     mov   a,($08)+y
f6ae: ec 83 01  mov   y,$0183
f6b1: f0 07     beq   $f6ba
f6b3: 76 3f 01  cmp   a,$013f+y
f6b6: f0 04     beq   $f6bc
f6b8: fe f9     dbnz  y,$f6b3
f6ba: 8d 40     mov   y,#$40
f6bc: dc        dec   y
f6bd: 6d        push  y
f6be: e4 11     mov   a,$11
f6c0: 9f        xcn   a
f6c1: 08 04     or    a,#$04
f6c3: fd        mov   y,a
f6c4: ae        pop   a
f6c5: 61        tcall 6
f6c6: e8 ff     mov   a,#$ff
f6c8: d4 11     mov   $11+x,a
f6ca: 6f        ret

f6cb: d4 0d     mov   $0d+x,a
f6cd: e8 ff     mov   a,#$ff
f6cf: d4 11     mov   $11+x,a
f6d1: 6f        ret

f6d2: d4 0c     mov   $0c+x,a
f6d4: 6f        ret

f6d5: eb 11     mov   y,$11
f6d7: f6 6b f0  mov   a,$f06b+y
f6da: 05 8d 01  or    a,$018d
f6dd: c5 8d 01  mov   $018d,a
f6e0: 3f 83 f7  call  $f783
f6e3: 6f        ret

f6e4: eb 11     mov   y,$11
f6e6: f6 6b f0  mov   a,$f06b+y
f6e9: 48 ff     eor   a,#$ff
f6eb: 25 8d 01  and   a,$018d
f6ee: c5 8d 01  mov   $018d,a
f6f1: 3f 83 f7  call  $f783
f6f4: 6f        ret

f6f5: e8 10     mov   a,#$10
f6f7: 25 9c 01  and   a,$019c
f6fa: f0 06     beq   $f702
f6fc: e8 02     mov   a,#$02
f6fe: 14 08     or    a,$08+x
f700: d4 08     mov   $08+x,a
f702: e8 20     mov   a,#$20
f704: 25 9c 01  and   a,$019c
f707: d0 03     bne   $f70c
f709: e1        tcall 14
f70a: d4 0b     mov   $0b+x,a
f70c: 3f 8a f7  call  $f78a
f70f: e5 9c 01  mov   a,$019c
f712: 28 0f     and   a,#$0f
f714: d0 01     bne   $f717
f716: 6f        ret

f717: 9c        dec   a
f718: c4 0e     mov   $0e,a
f71a: e8 01     mov   a,#$01
f71c: 34 08     and   a,$08+x
f71e: f0 07     beq   $f727
f720: e4 0e     mov   a,$0e
f722: 74 11     cmp   a,$11+x
f724: d0 01     bne   $f727
f726: 6f        ret

f727: e4 0e     mov   a,$0e
f729: d4 11     mov   $11+x,a
f72b: 3f a6 f7  call  $f7a6
f72e: 3f c9 f7  call  $f7c9
f731: e4 0e     mov   a,$0e
f733: d4 04     mov   $04+x,a
f735: e4 0f     mov   a,$0f
f737: d4 05     mov   $05+x,a
f739: 3f 83 f8  call  $f883
f73c: e8 01     mov   a,#$01
f73e: 34 08     and   a,$08+x
f740: f0 01     beq   $f743
f742: 6f        ret

f743: 3f 50 f7  call  $f750
f746: e8 01     mov   a,#$01
f748: 14 08     or    a,$08+x
f74a: d4 08     mov   $08+x,a
f74c: 3f 93 f8  call  $f893
f74f: 6f        ret

f750: e8 00     mov   a,#$00
f752: 8d 5c     mov   y,#$5c
f754: 61        tcall 6
f755: eb 11     mov   y,$11
f757: f6 6b f0  mov   a,$f06b+y
f75a: 8d 4c     mov   y,#$4c
f75c: 61        tcall 6
f75d: 6f        ret

f75e: e8 01     mov   a,#$01
f760: 34 08     and   a,$08+x
f762: f0 09     beq   $f76d
f764: e8 02     mov   a,#$02
f766: 34 08     and   a,$08+x
f768: d0 03     bne   $f76d
f76a: 3f 74 f7  call  $f774
f76d: e8 fd     mov   a,#$fd
f76f: 34 08     and   a,$08+x
f771: d4 08     mov   $08+x,a
f773: 6f        ret

f774: e8 fe     mov   a,#$fe
f776: 34 08     and   a,$08+x
f778: d4 08     mov   $08+x,a
f77a: eb 11     mov   y,$11
f77c: f6 6b f0  mov   a,$f06b+y
f77f: 8d 5c     mov   y,#$5c
f781: 61        tcall 6
f782: 6f        ret

f783: e5 8d 01  mov   a,$018d
f786: 8d 4d     mov   y,#$4d
f788: 61        tcall 6
f789: 6f        ret

f78a: f4 0b     mov   a,$0b+x
f78c: d4 09     mov   $09+x,a
f78e: fb 0c     mov   y,$0c+x
f790: d0 05     bne   $f797
f792: e8 00     mov   a,#$00
f794: d4 0a     mov   $0a+x,a
f796: 6f        ret

f797: cf        mul   ya
f798: 4d        push  x
f799: cd 08     mov   x,#$08
f79b: 9e        div   ya,x
f79c: ce        pop   x
f79d: 48 ff     eor   a,#$ff
f79f: bc        inc   a
f7a0: 60        clrc
f7a1: 94 09     adc   a,$09+x
f7a3: d4 0a     mov   $0a+x,a
f7a5: 6f        ret

f7a6: 8f 00 10  mov   $10,#$00
f7a9: fb 12     mov   y,$12+x
f7ab: 30 0e     bmi   $f7bb
f7ad: 60        clrc
f7ae: 94 12     adc   a,$12+x
f7b0: 68 0c     cmp   a,#$0c
f7b2: 90 14     bcc   $f7c8
f7b4: 8f 01 10  mov   $10,#$01
f7b7: 80        setc
f7b8: a8 0c     sbc   a,#$0c
f7ba: 6f        ret

f7bb: 60        clrc
f7bc: 94 12     adc   a,$12+x
f7be: 68 0c     cmp   a,#$0c
f7c0: 90 06     bcc   $f7c8
f7c2: 8f ff 10  mov   $10,#$ff
f7c5: 60        clrc
f7c6: 88 0c     adc   a,#$0c
f7c8: 6f        ret

f7c9: 6d        push  y
f7ca: 1c        asl   a
f7cb: fd        mov   y,a
f7cc: f6 13 f0  mov   a,$f013+y
f7cf: c4 0e     mov   $0e,a
f7d1: f6 14 f0  mov   a,$f014+y
f7d4: c4 0f     mov   $0f,a
f7d6: 8d 00     mov   y,#$00
f7d8: f4 10     mov   a,$10+x
f7da: 10 01     bpl   $f7dd
f7dc: dc        dec   y
f7dd: 60        clrc
f7de: 84 0e     adc   a,$0e
f7e0: c4 0e     mov   $0e,a
f7e2: dd        mov   a,y
f7e3: 84 0f     adc   a,$0f
f7e5: c4 0f     mov   $0f,a
f7e7: f4 0d     mov   a,$0d+x
f7e9: 80        setc
f7ea: a8 03     sbc   a,#$03
f7ec: 60        clrc
f7ed: 84 10     adc   a,$10
f7ef: f0 15     beq   $f806
f7f1: 30 09     bmi   $f7fc
f7f3: 0b 0e     asl   $0e
f7f5: 2b 0f     rol   $0f
f7f7: 9c        dec   a
f7f8: d0 f9     bne   $f7f3
f7fa: 2f 0a     bra   $f806
f7fc: 48 ff     eor   a,#$ff
f7fe: bc        inc   a
f7ff: 4b 0f     lsr   $0f
f801: 6b 0e     ror   $0e
f803: 9c        dec   a
f804: d0 f9     bne   $f7ff
f806: ee        pop   y
f807: 6f        ret

f808: f4 0e     mov   a,$0e+x
f80a: 68 f0     cmp   a,#$f0
f80c: 90 07     bcc   $f815
f80e: 80        setc
f80f: a8 f0     sbc   a,#$f0
f811: fd        mov   y,a
f812: f6 73 f0  mov   a,$f073+y
f815: c4 0e     mov   $0e,a
f817: c4 0f     mov   $0f,a
f819: e8 80     mov   a,#$80
f81b: 80        setc
f81c: b4 0f     sbc   a,$0f+x
f81e: eb 0e     mov   y,$0e
f820: cf        mul   ya
f821: cb 0e     mov   $0e,y
f823: 1c        asl   a
f824: 2b 0e     rol   $0e
f826: ec a8 01  mov   y,$01a8
f829: f6 c2 01  mov   a,$01c2+y
f82c: eb 0e     mov   y,$0e
f82e: cf        mul   ya
f82f: cb 0e     mov   $0e,y
f831: 1c        asl   a
f832: 2b 0e     rol   $0e
f834: ec a8 01  mov   y,$01a8
f837: f6 ba 01  mov   a,$01ba+y
f83a: eb 0e     mov   y,$0e
f83c: cf        mul   ya
f83d: cb 0e     mov   $0e,y
f83f: f4 0f     mov   a,$0f+x
f841: eb 0f     mov   y,$0f
f843: cf        mul   ya
f844: cb 0f     mov   $0f,y
f846: 1c        asl   a
f847: 2b 0f     rol   $0f
f849: ec a8 01  mov   y,$01a8
f84c: f6 be 01  mov   a,$01be+y
f84f: eb 0f     mov   y,$0f
f851: cf        mul   ya
f852: cb 0f     mov   $0f,y
f854: 1c        asl   a
f855: 2b 0f     rol   $0f
f857: ec a8 01  mov   y,$01a8
f85a: f6 ba 01  mov   a,$01ba+y
f85d: eb 0f     mov   y,$0f
f85f: cf        mul   ya
f860: cb 0f     mov   $0f,y
f862: e5 9a 01  mov   a,$019a
f865: d0 0a     bne   $f871
f867: e4 0e     mov   a,$0e
f869: 60        clrc
f86a: 84 0f     adc   a,$0f
f86c: 5c        lsr   a
f86d: c4 0e     mov   $0e,a
f86f: c4 0f     mov   $0f,a
f871: e4 11     mov   a,$11
f873: 9f        xcn   a
f874: fd        mov   y,a
f875: e4 0e     mov   a,$0e
f877: 61        tcall 6
f878: fc        inc   y
f879: e4 0f     mov   a,$0f
f87b: 61        tcall 6
f87c: e8 40     mov   a,#$40
f87e: 14 08     or    a,$08+x
f880: d4 08     mov   $08+x,a
f882: 6f        ret

f883: 6d        push  y
f884: e4 11     mov   a,$11
f886: 9f        xcn   a
f887: 08 02     or    a,#$02
f889: fd        mov   y,a
f88a: f4 04     mov   a,$04+x
f88c: 61        tcall 6
f88d: fc        inc   y
f88e: f4 05     mov   a,$05+x
f890: 61        tcall 6
f891: ee        pop   y
f892: 6f        ret

f893: f4 18     mov   a,$18+x
f895: d4 17     mov   $17+x,a
f897: f4 16     mov   a,$16+x
f899: d4 15     mov   $15+x,a
f89b: f4 14     mov   a,$14+x
f89d: 5c        lsr   a
f89e: d4 13     mov   $13+x,a
f8a0: e8 df     mov   a,#$df
f8a2: 34 08     and   a,$08+x
f8a4: d4 08     mov   $08+x,a
f8a6: 6f        ret

f8a7: 4d        push  x
f8a8: 6d        push  y
f8a9: 8d 19     mov   y,#$19
f8ab: e8 00     mov   a,#$00
f8ad: d4 00     mov   $00+x,a
f8af: 3d        inc   x
f8b0: fe fb     dbnz  y,$f8ad
f8b2: ee        pop   y
f8b3: ce        pop   x
f8b4: e8 03     mov   a,#$03
f8b6: d4 0d     mov   $0d+x,a
f8b8: e8 ff     mov   a,#$ff
f8ba: d4 11     mov   $11+x,a
f8bc: e8 ff     mov   a,#$ff
f8be: d4 0a     mov   $0a+x,a
f8c0: 6f        ret

f8c1: ba 05     movw  ya,$05
f8c3: cf        mul   ya
f8c4: da 05     movw  $05,ya
f8c6: e8 00     mov   a,#$00
f8c8: c4 00     mov   $00,a
f8ca: 8f 4c 01  mov   $01,#$4c
f8cd: 8f 1d 02  mov   $02,#$1d
f8d0: c4 03     mov   $03,a
f8d2: c4 04     mov   $04,a
f8d4: c4 05     mov   $05,a
f8d6: 3f dc f8  call  $f8dc
f8d9: e4 00     mov   a,$00
f8db: 6f        ret

f8dc: 8d 18     mov   y,#$18
f8de: 2b 00     rol   $00
f8e0: 2b 01     rol   $01
f8e2: 2b 02     rol   $02
f8e4: 2b 03     rol   $03
f8e6: 2b 04     rol   $04
f8e8: e4 03     mov   a,$03
f8ea: 80        setc
f8eb: a4 05     sbc   a,$05
f8ed: e4 04     mov   a,$04
f8ef: a4 06     sbc   a,$06
f8f1: 90 0a     bcc   $f8fd
f8f3: c4 04     mov   $04,a
f8f5: e4 03     mov   a,$03
f8f7: 80        setc
f8f8: a4 05     sbc   a,$05
f8fa: c4 03     mov   $03,a
f8fc: 80        setc
f8fd: fe df     dbnz  y,$f8de
f8ff: 2b 00     rol   $00
f901: 2b 01     rol   $01
f903: 2b 02     rol   $02
f905: 6f        ret

f906: 5d        mov   x,a
f907: f5 83 f0  mov   a,$f083+x
f90a: 5d        mov   x,a
f90b: 6f        ret

f90c: 8d 06     mov   y,#$06
f90e: f7 08     mov   a,($08)+y
f910: 3f 4c f5  call  $f54c
f913: 8d 20     mov   y,#$20
f915: f7 08     mov   a,($08)+y
f917: 68 ff     cmp   a,#$ff
f919: d0 05     bne   $f920
f91b: 3f 54 fa  call  $fa54
f91e: 2f 23     bra   $f943
f920: c5 8e 01  mov   $018e,a
f923: fc        inc   y
f924: f7 08     mov   a,($08)+y
f926: c5 8f 01  mov   $018f,a
f929: fc        inc   y
f92a: f7 08     mov   a,($08)+y
f92c: c5 90 01  mov   $0190,a
f92f: fc        inc   y
f930: f7 08     mov   a,($08)+y
f932: c5 91 01  mov   $0191,a
f935: fc        inc   y
f936: cd 00     mov   x,#$00
f938: f7 08     mov   a,($08)+y
f93a: d5 92 01  mov   $0192+x,a
f93d: fc        inc   y
f93e: 3d        inc   x
f93f: c8 08     cmp   x,#$08
f941: d0 f5     bne   $f938
f943: 6f        ret

f944: e5 a8 01  mov   a,$01a8
f947: d0 03     bne   $f94c
f949: 3f 0c f9  call  $f90c
f94c: 8d 04     mov   y,#$04
f94e: e8 00     mov   a,#$00
f950: 16 ad 01  or    a,$01ad+y
f953: fe fb     dbnz  y,$f950
f955: cd 00     mov   x,#$00
f957: 8d 08     mov   y,#$08
f959: 1c        asl   a
f95a: b0 08     bcs   $f964
f95c: 2d        push  a
f95d: dd        mov   a,y
f95e: 9c        dec   a
f95f: d5 9f 01  mov   $019f+x,a
f962: ae        pop   a
f963: 3d        inc   x
f964: fe f3     dbnz  y,$f959
f966: c9 9e 01  mov   $019e,x
f969: 8f 00 05  mov   $05,#$00
f96c: 8f 08 07  mov   $07,#$08
f96f: 8d 10     mov   y,#$10
f971: 7d        mov   a,x
f972: f0 45     beq   $f9b9
f974: 6d        push  y
f975: f7 08     mov   a,($08)+y
f977: fc        inc   y
f978: c4 00     mov   $00,a
f97a: f7 08     mov   a,($08)+y
f97c: fc        inc   y
f97d: c4 01     mov   $01,a
f97f: bc        inc   a
f980: f0 31     beq   $f9b3
f982: f5 9e 01  mov   a,$019e+x
f985: 1d        dec   x
f986: c4 11     mov   $11,a
f988: 4d        push  x
f989: e4 11     mov   a,$11
f98b: 3f 06 f9  call  $f906
f98e: 3f a7 f8  call  $f8a7
f991: ba 08     movw  ya,$08
f993: 7a 00     addw  ya,$00
f995: d4 00     mov   $00+x,a
f997: dd        mov   a,y
f998: d4 01     mov   $01+x,a
f99a: e4 11     mov   a,$11
f99c: 8d 28     mov   y,#$28
f99e: cf        mul   ya
f99f: 60        clrc
f9a0: 88 00     adc   a,#$00
f9a2: d4 02     mov   $02+x,a
f9a4: dd        mov   a,y
f9a5: 88 fd     adc   a,#$fd
f9a7: d4 03     mov   $03+x,a
f9a9: eb 11     mov   y,$11
f9ab: f6 6b f0  mov   a,$f06b+y
f9ae: 04 05     or    a,$05
f9b0: c4 05     mov   $05,a
f9b2: ce        pop   x
f9b3: ee        pop   y
f9b4: fc        inc   y
f9b5: fc        inc   y
f9b6: 6e 07 b8  dbnz  $07,$f971
f9b9: e9 a8 01  mov   x,$01a8
f9bc: e4 05     mov   a,$05
f9be: d5 ae 01  mov   $01ae+x,a
f9c1: 6f        ret

f9c2: e8 fc     mov   a,#$fc
f9c4: 8d 5d     mov   y,#$5d
f9c6: 61        tcall 6
f9c7: e8 00     mov   a,#$00
f9c9: 8d 2d     mov   y,#$2d
f9cb: 61        tcall 6
f9cc: e8 02     mov   a,#$02
f9ce: 8d 6d     mov   y,#$6d
f9d0: 61        tcall 6
f9d1: e5 90 01  mov   a,$0190
f9d4: 8d 7d     mov   y,#$7d
f9d6: 61        tcall 6
f9d7: e5 8e 01  mov   a,$018e
f9da: 8d 0c     mov   y,#$0c
f9dc: 61        tcall 6
f9dd: 8d 1c     mov   y,#$1c
f9df: 61        tcall 6
f9e0: e5 8f 01  mov   a,$018f
f9e3: 8d 2c     mov   y,#$2c
f9e5: 61        tcall 6
f9e6: 8d 3c     mov   y,#$3c
f9e8: 61        tcall 6
f9e9: e5 91 01  mov   a,$0191
f9ec: 8d 0d     mov   y,#$0d
f9ee: 61        tcall 6
f9ef: 4d        push  x
f9f0: 8d 7f     mov   y,#$7f
f9f2: cd 07     mov   x,#$07
f9f4: f5 92 01  mov   a,$0192+x
f9f7: 61        tcall 6
f9f8: dd        mov   a,y
f9f9: 80        setc
f9fa: a8 10     sbc   a,#$10
f9fc: fd        mov   y,a
f9fd: 1d        dec   x
f9fe: 10 f4     bpl   $f9f4
fa00: ce        pop   x
fa01: 6f        ret

fa02: 8f 08 07  mov   $07,#$08
fa05: 8d 04     mov   y,#$04
fa07: 3f 0e fa  call  $fa0e
fa0a: 6e 07 fa  dbnz  $07,$fa07
fa0d: 6f        ret

fa0e: e8 00     mov   a,#$00
fa10: 61        tcall 6
fa11: fc        inc   y
fa12: e8 ff     mov   a,#$ff
fa14: 61        tcall 6
fa15: fc        inc   y
fa16: e8 e0     mov   a,#$e0
fa18: 61        tcall 6
fa19: dd        mov   a,y
fa1a: 60        clrc
fa1b: 88 0e     adc   a,#$0e
fa1d: fd        mov   y,a
fa1e: 6f        ret

fa1f: e8 00     mov   a,#$00
fa21: c5 00 02  mov   $0200,a
fa24: c5 01 02  mov   $0201,a
fa27: c5 02 02  mov   $0202,a
fa2a: c5 03 02  mov   $0203,a
fa2d: e5 90 01  mov   a,$0190
fa30: f0 17     beq   $fa49
fa32: 1c        asl   a
fa33: 1c        asl   a
fa34: 1c        asl   a
fa35: c4 07     mov   $07,a
fa37: 8f 00 0e  mov   $0e,#$00
fa3a: 8f 02 0f  mov   $0f,#$02
fa3d: e8 00     mov   a,#$00
fa3f: fd        mov   y,a
fa40: d7 0e     mov   ($0e)+y,a
fa42: fe fc     dbnz  y,$fa40
fa44: ab 0f     inc   $0f
fa46: 6e 07 f7  dbnz  $07,$fa40
fa49: 6f        ret

fa4a: e7 00     mov   a,($00+x)
fa4c: bb 00     inc   $00+x
fa4e: f0 01     beq   $fa51
fa50: 6f        ret

fa51: bb 01     inc   $01+x
fa53: 6f        ret

fa54: e8 60     mov   a,#$60
fa56: c5 8e 01  mov   $018e,a
fa59: e8 30     mov   a,#$30
fa5b: c5 8f 01  mov   $018f,a
fa5e: e8 00     mov   a,#$00
fa60: c5 90 01  mov   $0190,a
fa63: e8 a0     mov   a,#$a0
fa65: c5 91 01  mov   $0191,a
fa68: 8d 07     mov   y,#$07
fa6a: e8 00     mov   a,#$00
fa6c: d6 92 01  mov   $0192+y,a
fa6f: fe fb     dbnz  y,$fa6c
fa71: e8 7f     mov   a,#$7f
fa73: c5 92 01  mov   $0192,a
fa76: 6f        ret

fa77: 8d 40     mov   y,#$40
fa79: e8 ff     mov   a,#$ff
fa7b: d6 3f 01  mov   $013f+y,a
fa7e: fe fb     dbnz  y,$fa7b
fa80: 8d 40     mov   y,#$40
fa82: cd 00     mov   x,#$00
fa84: e8 8b     mov   a,#$8b
fa86: d5 00 fc  mov   $fc00+x,a
fa89: d5 02 fc  mov   $fc02+x,a
fa8c: e8 f0     mov   a,#$f0
fa8e: d5 01 fc  mov   $fc01+x,a
fa91: d5 03 fc  mov   $fc03+x,a
fa94: 3d        inc   x
fa95: 3d        inc   x
fa96: 3d        inc   x
fa97: 3d        inc   x
fa98: fe ea     dbnz  y,$fa84
fa9a: e8 00     mov   a,#$00
fa9c: c5 84 01  mov   $0184,a
fa9f: e8 f0     mov   a,#$f0
faa1: c5 85 01  mov   $0185,a
faa4: e8 00     mov   a,#$00
faa6: c5 88 01  mov   $0188,a
faa9: e8 f0     mov   a,#$f0
faab: 80        setc
faac: a5 9b 01  sbc   a,$019b
faaf: c5 89 01  mov   $0189,a
fab2: fd        mov   y,a
fab3: e8 00     mov   a,#$00
fab5: da 0a     movw  $0a,ya
fab7: c5 83 01  mov   $0183,a
faba: 6f        ret

fabb: 8d 04     mov   y,#$04
fabd: e8 80     mov   a,#$80
fabf: d6 c1 01  mov   $01c1+y,a
fac2: d6 bd 01  mov   $01bd+y,a
fac5: e8 ff     mov   a,#$ff
fac7: d6 b9 01  mov   $01b9+y,a
faca: e8 00     mov   a,#$00
facc: d6 ad 01  mov   $01ad+y,a
facf: d6 b5 01  mov   $01b5+y,a
fad2: d6 b1 01  mov   $01b1+y,a
fad5: fe e6     dbnz  y,$fabd
fad7: e8 01     mov   a,#$01
fad9: c5 9a 01  mov   $019a,a
fadc: e8 14     mov   a,#$14
fade: c5 9b 01  mov   $019b,a
fae1: e8 00     mov   a,#$00
fae3: c5 8d 01  mov   $018d,a
fae6: c5 8c 01  mov   $018c,a
fae9: c4 12     mov   $12,a
faeb: 3f 54 fa  call  $fa54
faee: 3f 77 fa  call  $fa77
faf1: 3f c2 f9  call  $f9c2
faf4: e8 00     mov   a,#$00
faf6: 8d 6c     mov   y,#$6c
faf8: 61        tcall 6
faf9: 8f 96 05  mov   $05,#$96
fafc: 8f c0 06  mov   $06,#$c0
faff: 3f c1 f8  call  $f8c1
fb02: 8f cd f1  mov   $f1,#$cd
fb05: c4 fb     mov   $fb,a
fb07: 8f 07 f1  mov   $f1,#$07
fb0a: 6f        ret

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

ffbc: db $00,$00,$00,$00

ffc0: dw $fe82
ffc2: dw $fa4a
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
