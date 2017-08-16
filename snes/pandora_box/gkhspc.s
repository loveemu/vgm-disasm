f000: cd 3f     mov   x,#$3f
f002: bd        mov   sp,x
f003: e8 5f     mov   a,#$5f
f005: c5 c2 ff  mov   $ffc2,a
f008: e8 fa     mov   a,#$fa
f00a: c5 c3 ff  mov   $ffc3,a
f00d: 3f 69 fa  call  $fa69
f010: 8f 01 00  mov   $00,#$01
f013: 8f 23 01  mov   $01,#$23
f016: 8f 45 02  mov   $02,#$45
f019: 8f 67 03  mov   $03,#$67
f01c: 5f 78 f0  jmp   $f078

f01f: 6f        ret

; pitch table
f020: dw $0983  ; c
f022: dw $0a14  ; c#
f024: dw $0aad  ; d
f026: dw $0b50  ; d#
f028: dw $0bfc  ; e
f02a: dw $0cb3  ; f
f02c: dw $0d74  ; f#
f02e: dw $0e41  ; g
f030: dw $0f1a  ; g#
f032: dw $1000  ; a
f033: dw $10f3  ; a#
f035: dw $11f6  ; b

f038: dw $f0bd
f03a: dw $f0d1
f03c: dw $f0d8
f03e: dw $f110
f040: dw $f111
f042: dw $f13f
f044: dw $f153
f046: dw $f167
f048: dw $f16b
f04a: dw $f190
f04c: dw $f19f
f04e: dw $f1ae
f050: dw $f1d9
f052: dw $f1ec
f054: dw $f1fb
f056: dw $f21c

f058: db $01,$02,$04,$08,$10,$20,$40,$80

; volume table
f060: db $00,$04,$08,$0c,$10,$14,$18,$1c
f068: db $20,$24,$28,$2c,$30,$34,$38,$3c

; track offset table
f070: db $08,$21,$3a,$53,$6c,$85,$9e,$b7

f078: 3f ad f2  call  $f2ad
f07b: 3f 1c f3  call  $f31c
f07e: e4 e6     mov   a,$e6
f080: c4 f6     mov   $f6,a
f082: 01        tcall 0
f083: f0 f3     beq   $f078
f085: e5 e1 ff  mov   a,$ffe1
f088: f0 1f     beq   $f0a9
f08a: 1c        asl   a
f08b: 5d        mov   x,a
f08c: f4 ec     mov   a,$ec+x
f08e: fb ed     mov   y,$ed+x
f090: da ec     movw  $ec,ya
f092: e5 e0 ff  mov   a,$ffe0
f095: 8d 00     mov   y,#$00
f097: 1c        asl   a
f098: 90 01     bcc   $f09b
f09a: fc        inc   y
f09b: 7a ec     addw  ya,$ec
f09d: d4 ec     mov   $ec+x,a
f09f: db ed     mov   $ed+x,y
f0a1: 8d 00     mov   y,#$00
f0a3: e9 e0 ff  mov   x,$ffe0
f0a6: 21        tcall 2
f0a7: 2f cf     bra   $f078
f0a9: 11        tcall 1
f0aa: 3f af f0  call  $f0af
f0ad: 2f c9     bra   $f078
;
f0af: e5 e2 ff  mov   a,$ffe2
f0b2: 1c        asl   a
f0b3: 5d        mov   x,a
f0b4: f5 39 f0  mov   a,$f039+x
f0b7: 2d        push  a
f0b8: f5 38 f0  mov   a,$f038+x
f0bb: 2d        push  a
f0bc: 6f        ret

f0bd: e5 e3 ff  mov   a,$ffe3
f0c0: c5 c6 01  mov   $01c6,a
f0c3: e5 e4 ff  mov   a,$ffe4
f0c6: c5 cb 01  mov   $01cb,a
f0c9: e5 e5 ff  mov   a,$ffe5
f0cc: c5 ce 01  mov   $01ce,a
f0cf: 2f 00     bra   $f0d1
f0d1: 3f d2 f9  call  $f9d2
f0d4: 3f cd fa  call  $facd
f0d7: 6f        ret

f0d8: 3f d2 f9  call  $f9d2
f0db: 3f 3d f2  call  $f23d
f0de: ba dd     movw  ya,$dd
f0e0: 9a d0     subw  ya,$d0
f0e2: da dd     movw  $dd,ya
f0e4: da ec     movw  $ec,ya
f0e6: 31        tcall 3
f0e7: ec e7 ff  mov   y,$ffe7
f0ea: e5 e6 ff  mov   a,$ffe6
f0ed: d6 40 01  mov   $0140+y,a
f0f0: dd        mov   a,y
f0f1: 1c        asl   a
f0f2: 1c        asl   a
f0f3: 5d        mov   x,a
f0f4: ac c3 01  inc   $01c3
f0f7: ba dd     movw  ya,$dd
f0f9: d5 00 fb  mov   $fb00+x,a
f0fc: dd        mov   a,y
f0fd: d5 01 fb  mov   $fb01+x,a
f100: e5 e8 ff  mov   a,$ffe8
f103: ec e9 ff  mov   y,$ffe9
f106: 7a dd     addw  ya,$dd
f108: d5 02 fb  mov   $fb02+x,a
f10b: dd        mov   a,y
f10c: d5 03 fb  mov   $fb03+x,a
f10f: 6f        ret

f110: 6f        ret

f111: e5 c8 01  mov   a,$01c8
f114: 05 cd 01  or    a,$01cd
f117: f0 03     beq   $f11c
f119: 3f d2 f9  call  $f9d2
f11c: ba d9     movw  ya,$d9
f11e: da ec     movw  $ec,ya
f120: 31        tcall 3
f121: 3f d5 f8  call  $f8d5
f124: 3f d8 f9  call  $f9d8
f127: 3f 34 fa  call  $fa34
f12a: cd ff     mov   x,#$ff
f12c: 3f b3 f9  call  $f9b3
f12f: e8 00     mov   a,#$00
f131: c5 cc 01  mov   $01cc,a
f134: c5 cd 01  mov   $01cd,a
f137: 02 e6     set0  $e6
f139: e8 00     mov   a,#$00
f13b: 8d 6c     mov   y,#$6c
f13d: 61        tcall 6                 ; write dsp FLG
f13e: 6f        ret

f13f: 3f d2 f9  call  $f9d2
f142: e8 00     mov   a,#$00
f144: c5 c7 01  mov   $01c7,a
f147: c5 c8 01  mov   $01c8,a
f14a: c5 cc 01  mov   $01cc,a
f14d: c5 cd 01  mov   $01cd,a
f150: 12 e6     clr0  $e6
f152: 6f        ret

f153: 3f 54 f2  call  $f254
f156: ba db     movw  ya,$db
f158: da ec     movw  $ec,ya
f15a: 31        tcall 3
f15b: 3f 5c f9  call  $f95c
f15e: e9 cd 01  mov   x,$01cd
f161: 3f b3 f9  call  $f9b3
f164: 22 e6     set1  $e6
f166: 6f        ret

f167: 3f 54 f2  call  $f254
f16a: 6f        ret

f16b: e5 e3 ff  mov   a,$ffe3
f16e: c5 d7 01  mov   $01d7,a
f171: e5 e4 ff  mov   a,$ffe4
f174: c5 d6 01  mov   $01d6,a
f177: e5 e5 ff  mov   a,$ffe5
f17a: c5 d9 01  mov   $01d9,a
f17d: e5 e6 ff  mov   a,$ffe6
f180: c5 d8 01  mov   $01d8,a
f183: e5 e7 ff  mov   a,$ffe7
f186: c5 da 01  mov   $01da,a
f189: 3f 91 f2  call  $f291
f18c: 3f 75 f2  call  $f275
f18f: 6f        ret

f190: ba dd     movw  ya,$dd
f192: c5 c0 01  mov   $01c0,a
f195: cc c1 01  mov   $01c1,y
f198: e5 c3 01  mov   a,$01c3
f19b: c5 c2 01  mov   $01c2,a
f19e: 6f        ret

f19f: e5 c0 01  mov   a,$01c0
f1a2: ec c1 01  mov   y,$01c1
f1a5: da dd     movw  $dd,ya
f1a7: e5 c2 01  mov   a,$01c2
f1aa: c5 c3 01  mov   $01c3,a
f1ad: 6f        ret

f1ae: e5 e4 ff  mov   a,$ffe4
f1b1: 1c        asl   a
f1b2: 5d        mov   x,a
f1b3: f5 81 01  mov   a,$0181+x
f1b6: fd        mov   y,a
f1b7: f5 80 01  mov   a,$0180+x
f1ba: e9 e3 ff  mov   x,$ffe3
f1bd: d0 11     bne   $f1d0
f1bf: da d9     movw  $d9,ya            ; $d9/a = $d700 (when y=0)
f1c1: e5 c8 01  mov   a,$01c8
f1c4: 05 cd 01  or    a,$01cd
f1c7: f0 03     beq   $f1cc
f1c9: 3f d2 f9  call  $f9d2
f1cc: 3f 21 f1  call  $f121
f1cf: 6f        ret

f1d0: da db     movw  $db,ya
f1d2: 3f 54 f2  call  $f254
f1d5: 3f 5b f1  call  $f15b
f1d8: 6f        ret

f1d9: e8 f0     mov   a,#$f0
f1db: 80        setc
f1dc: a5 cb 01  sbc   a,$01cb
f1df: 80        setc
f1e0: a5 c6 01  sbc   a,$01c6
f1e3: c5 c5 01  mov   $01c5,a
f1e6: e8 00     mov   a,#$00
f1e8: c5 c4 01  mov   $01c4,a
f1eb: 6f        ret

f1ec: e8 f0     mov   a,#$f0
f1ee: 80        setc
f1ef: a5 cb 01  sbc   a,$01cb
f1f2: c5 ca 01  mov   $01ca,a
f1f5: e8 00     mov   a,#$00
f1f7: c5 c9 01  mov   $01c9,a
f1fa: 6f        ret

f1fb: 3f 3d f2  call  $f23d
f1fe: e5 e6 ff  mov   a,$ffe6
f201: 1c        asl   a
f202: 5d        mov   x,a
f203: e5 c5 01  mov   a,$01c5
f206: d5 81 01  mov   $0181+x,a
f209: fd        mov   y,a
f20a: e5 c4 01  mov   a,$01c4
f20d: d5 80 01  mov   $0180+x,a
f210: da ec     movw  $ec,ya
f212: 7a d0     addw  ya,$d0
f214: c5 c4 01  mov   $01c4,a
f217: cc c5 01  mov   $01c5,y
f21a: 31        tcall 3
f21b: 6f        ret

f21c: 3f 3d f2  call  $f23d
f21f: e5 e6 ff  mov   a,$ffe6
f222: 1c        asl   a
f223: 5d        mov   x,a
f224: e5 ca 01  mov   a,$01ca
f227: d5 81 01  mov   $0181+x,a
f22a: fd        mov   y,a
f22b: e5 c9 01  mov   a,$01c9
f22e: d5 80 01  mov   $0180+x,a
f231: da ec     movw  $ec,ya
f233: 7a d0     addw  ya,$d0
f235: c5 c9 01  mov   $01c9,a
f238: cc ca 01  mov   $01ca,y
f23b: 31        tcall 3
f23c: 6f        ret

f23d: e5 e3 ff  mov   a,$ffe3
f240: ec e4 ff  mov   y,$ffe4
f243: cf        mul   ya
f244: da d0     movw  $d0,ya
f246: e5 e5 ff  mov   a,$ffe5
f249: 8d 00     mov   y,#$00
f24b: 7a d0     addw  ya,$d0
f24d: da d0     movw  $d0,ya
f24f: 0b d0     asl   $d0
f251: 2b d1     rol   $d1
f253: 6f        ret

f254: e5 cd 01  mov   a,$01cd
f257: f0 19     beq   $f272
f259: 8d 5c     mov   y,#$5c
f25b: 61        tcall 6                 ; write dsp KOF
f25c: 8d 70     mov   y,#$70
f25e: e8 00     mov   a,#$00
f260: 61        tcall 6                 ; write dsp VOL(L) of ch#7
f261: fc        inc   y
f262: 61        tcall 6                 ; write dsp VOL(R) of ch#7
f263: dd        mov   a,y
f264: 80        setc
f265: a8 11     sbc   a,#$11
f267: fd        mov   y,a
f268: 8c cc 01  dec   $01cc
f26b: d0 f1     bne   $f25e
f26d: e8 00     mov   a,#$00
f26f: c5 cd 01  mov   $01cd,a
f272: 32 e6     clr1  $e6
f274: 6f        ret

f275: ec cc 01  mov   y,$01cc
f278: f0 16     beq   $f290
f27a: e8 01     mov   a,#$01
f27c: c5 cf 01  mov   $01cf,a
f27f: 8f 07 e5  mov   $e5,#$07
f282: 6d        push  y
f283: e4 e5     mov   a,$e5
f285: 3f cf f8  call  $f8cf
f288: 3f c5 f7  call  $f7c5
f28b: ee        pop   y
f28c: 8b e5     dec   $e5
f28e: fe f2     dbnz  y,$f282
f290: 6f        ret

f291: ec c7 01  mov   y,$01c7
f294: f0 16     beq   $f2ac
f296: e8 00     mov   a,#$00
f298: c5 cf 01  mov   $01cf,a
f29b: 8f 00 e5  mov   $e5,#$00
f29e: 6d        push  y
f29f: e4 e5     mov   a,$e5
f2a1: 3f cf f8  call  $f8cf
f2a4: 3f c5 f7  call  $f7c5
f2a7: ee        pop   y
f2a8: ab e5     inc   $e5
f2aa: fe f2     dbnz  y,$f29e
f2ac: 6f        ret

f2ad: e5 c7 01  mov   a,$01c7
f2b0: d0 01     bne   $f2b3
f2b2: 6f        ret

f2b3: e4 fd     mov   a,$fd
f2b5: d0 01     bne   $f2b8
f2b7: 6f        ret

f2b8: e8 00     mov   a,#$00
f2ba: c5 cf 01  mov   $01cf,a
f2bd: 8f 00 e5  mov   $e5,#$00
f2c0: ec c7 01  mov   y,$01c7
f2c3: e4 e5     mov   a,$e5
f2c5: 3f cf f8  call  $f8cf
f2c8: f4 00     mov   a,$00+x
f2ca: 14 01     or    a,$01+x
f2cc: f0 14     beq   $f2e2
f2ce: 6d        push  y
f2cf: f4 02     mov   a,$02+x
f2d1: fb 03     mov   y,$03+x
f2d3: da df     movw  $df,ya
f2d5: 3f e5 f3  call  $f3e5
f2d8: ba df     movw  ya,$df
f2da: d4 02     mov   $02+x,a
f2dc: db 03     mov   $03+x,y
f2de: 3f 82 f3  call  $f382
f2e1: ee        pop   y
f2e2: ab e5     inc   $e5
f2e4: fe dd     dbnz  y,$f2c3
f2e6: 3f f3 f2  call  $f2f3
f2e9: b0 07     bcs   $f2f2
f2eb: e8 00     mov   a,#$00
f2ed: c5 c7 01  mov   $01c7,a
f2f0: 12 e6     clr0  $e6
f2f2: 6f        ret

f2f3: 8f 00 e5  mov   $e5,#$00
f2f6: ec c7 01  mov   y,$01c7
f2f9: e4 e5     mov   a,$e5
f2fb: 3f cf f8  call  $f8cf
f2fe: e8 80     mov   a,#$80
f300: 34 08     and   a,$08+x
f302: f0 16     beq   $f31a
f304: ab e5     inc   $e5
f306: fe f1     dbnz  y,$f2f9
f308: e9 c8 01  mov   x,$01c8
f30b: 3f b3 f9  call  $f9b3
f30e: e8 00     mov   a,#$00
f310: c5 c7 01  mov   $01c7,a
f313: c5 c8 01  mov   $01c8,a
f316: 12 e6     clr0  $e6
f318: 60        clrc
f319: 6f        ret

f31a: 80        setc
f31b: 6f        ret

f31c: e5 cc 01  mov   a,$01cc
f31f: d0 01     bne   $f322
f321: 6f        ret

f322: e4 fe     mov   a,$fe
f324: d0 01     bne   $f327
f326: 6f        ret

f327: e8 01     mov   a,#$01
f329: c5 cf 01  mov   $01cf,a
f32c: 8f 07 e5  mov   $e5,#$07
f32f: ec cc 01  mov   y,$01cc
f332: e4 e5     mov   a,$e5
f334: 3f cf f8  call  $f8cf
f337: f4 00     mov   a,$00+x
f339: 14 01     or    a,$01+x
f33b: f0 14     beq   $f351
f33d: 6d        push  y
f33e: f4 02     mov   a,$02+x
f340: fb 03     mov   y,$03+x
f342: da df     movw  $df,ya
f344: 3f e5 f3  call  $f3e5
f347: ba df     movw  ya,$df
f349: d4 02     mov   $02+x,a
f34b: db 03     mov   $03+x,y
f34d: 3f 82 f3  call  $f382
f350: ee        pop   y
f351: 8b e5     dec   $e5
f353: fe dd     dbnz  y,$f332
f355: 3f 59 f3  call  $f359
f358: 6f        ret

f359: 8f 07 e5  mov   $e5,#$07
f35c: ec cc 01  mov   y,$01cc
f35f: e4 e5     mov   a,$e5
f361: 3f cf f8  call  $f8cf
f364: e8 80     mov   a,#$80
f366: 34 08     and   a,$08+x
f368: f0 16     beq   $f380
f36a: 8b e5     dec   $e5
f36c: fe f1     dbnz  y,$f35f
f36e: e9 cd 01  mov   x,$01cd
f371: 3f b3 f9  call  $f9b3
f374: e8 00     mov   a,#$00
f376: c5 cc 01  mov   $01cc,a
f379: c5 cd 01  mov   $01cd,a
f37c: 32 e6     clr1  $e6
f37e: 60        clrc
f37f: 6f        ret

f380: 80        setc
f381: 6f        ret

f382: e8 08     mov   a,#$08
f384: 34 08     and   a,$08+x
f386: d0 01     bne   $f389
f388: 6f        ret

f389: f4 17     mov   a,$17+x
f38b: f0 04     beq   $f391
f38d: 9c        dec   a
f38e: d4 17     mov   $17+x,a
f390: 6f        ret

f391: f4 15     mov   a,$15+x
f393: 9c        dec   a
f394: f0 03     beq   $f399
f396: d4 15     mov   $15+x,a
f398: 6f        ret

f399: f4 16     mov   a,$16+x
f39b: d4 15     mov   $15+x,a
f39d: f4 13     mov   a,$13+x
f39f: 9c        dec   a
f3a0: d4 13     mov   $13+x,a
f3a2: d0 0a     bne   $f3ae
f3a4: f4 14     mov   a,$14+x
f3a6: d4 13     mov   $13+x,a
f3a8: f4 08     mov   a,$08+x
f3aa: 48 20     eor   a,#$20
f3ac: d4 08     mov   $08+x,a
f3ae: f4 06     mov   a,$06+x
f3b0: c4 e1     mov   $e1,a
f3b2: f4 07     mov   a,$07+x
f3b4: c4 e2     mov   $e2,a
f3b6: e8 20     mov   a,#$20
f3b8: 34 08     and   a,$08+x
f3ba: f0 0e     beq   $f3ca
f3bc: e4 e1     mov   a,$e1
f3be: 48 ff     eor   a,#$ff
f3c0: c4 e1     mov   $e1,a
f3c2: e4 e2     mov   a,$e2
f3c4: 48 ff     eor   a,#$ff
f3c6: c4 e2     mov   $e2,a
f3c8: 3a e1     incw  $e1
f3ca: f4 04     mov   a,$04+x
f3cc: 60        clrc
f3cd: 84 e1     adc   a,$e1
f3cf: d4 04     mov   $04+x,a
f3d1: f4 05     mov   a,$05+x
f3d3: 84 e2     adc   a,$e2
f3d5: d4 05     mov   $05+x,a
f3d7: e4 e5     mov   a,$e5
f3d9: 9f        xcn   a
f3da: bc        inc   a
f3db: bc        inc   a
f3dc: fd        mov   y,a
f3dd: f4 04     mov   a,$04+x
f3df: 61        tcall 6                 ; write dsp P(L)
f3e0: fc        inc   y
f3e1: f4 05     mov   a,$05+x
f3e3: 61        tcall 6                 ; write dsp P(H)
f3e4: 6f        ret

f3e5: f4 09     mov   a,$09+x
f3e7: 74 0a     cmp   a,$0a+x
f3e9: d0 09     bne   $f3f4
; note off
f3eb: e8 01     mov   a,#$01
f3ed: 34 08     and   a,$08+x
f3ef: f0 03     beq   $f3f4
f3f1: 3f 31 f7  call  $f731
;
f3f4: f4 09     mov   a,$09+x
f3f6: f0 05     beq   $f3fd
f3f8: 9b 09     dec   $09+x             ; wait for tick
f3fa: f0 01     beq   $f3fd             ; tick
f3fc: 6f        ret

f3fd: 3f 1b f7  call  $f71b
f400: f4 00     mov   a,$00+x
f402: 14 01     or    a,$01+x
f404: f0 1b     beq   $f421             ; null (0) means inactive
f406: e1        tcall 14                ; read voice byte
f407: c5 d1 01  mov   $01d1,a
f40a: 68 e0     cmp   a,#$e0
f40c: b0 34     bcs   $f442
f40e: 68 60     cmp   a,#$60
f410: b0 18     bcs   $f42a
f412: 68 50     cmp   a,#$50
f414: b0 0c     bcs   $f422
f416: 68 48     cmp   a,#$48
f418: b0 20     bcs   $f43a
f41a: 68 40     cmp   a,#$40
f41c: b0 14     bcs   $f432
f41e: 3f b2 f6  call  $f6b2
f421: 6f        ret

; 50-5f - set volume index
f422: 80        setc
f423: a8 50     sbc   a,#$50
f425: 3f 21 f5  call  $f521             ; set volume index
f428: 2f d6     bra   $f400

; 60-df - set instrument
f42a: 80        setc
f42b: a8 60     sbc   a,#$60
f42d: 3f 55 f6  call  $f655             ; set instrument
f430: 2f ce     bra   $f400

; 40-47 - set octave
f432: 80        setc
f433: a8 40     sbc   a,#$40
f435: 3f 88 f6  call  $f688             ; set octave
f438: 2f c6     bra   $f400

; 48-4f - set quantize (duration rate)
f43a: 80        setc
f43b: a8 48     sbc   a,#$48
f43d: 3f 8f f6  call  $f68f             ; set quantize
f440: 2f be     bra   $f400

; e0-ff - vcmds
f442: 3f 52 f4  call  $f452
f445: 2f b9     bra   $f400

f447: e4 e6     mov   a,$e6
f449: 08 80     or    a,#$80
f44b: c4 f5     mov   $f5,a
f44d: fa 00 f4  mov   ($f4),($00)
f450: 2f fe     bra   $f450

; dispatch vcmd
f452: 80        setc
f453: a8 e0     sbc   a,#$e0
f455: 1c        asl   a
f456: fd        mov   y,a
f457: f6 66 f4  mov   a,$f466+y
f45a: c5 64 f4  mov   $f464,a
f45d: f6 67 f4  mov   a,$f467+y
f460: c5 65 f4  mov   $f465,a
f463: 5f 13 f5  jmp   $f513

; vcmd dispatch table
f466: dw $f504  ; e0 - set tempo
f468: dw $f568  ; e1 - set tuning
f46a: dw $f52d  ; e2 - set transpose
f46c: dw $f513  ; e3 - set panpot
f46e: dw $f531  ; e4 - increase octave
f470: dw $f538  ; e5 - decrease octave
f472: dw $f4c4  ; e6 - increase volume index
f474: dw $f4d1  ; e7 - decrease volume index
f476: dw $f53f  ; e8 - unknown.5
f478: dw $f555  ; e9 - unknown.1
f47a: dw $f6a1  ; ea - echo off
f47c: dw $f692  ; eb - echo on
f47e: dw $f5cb  ; ec - repeat start
f480: dw $f5fa  ; ed - repeat end
f482: dw $f624  ; ee - repeat break
f484: dw $f5bf  ; ef - nop
f486: dw $f5c0  ; f0 - nop
f488: dw $f5c1  ; f1 - write dsp reg
f48a: dw $f494  ; f2 - set noise params
f48c: dw $f56c  ; f3 - set ADSR
f48e: dw $f5c6  ; f4 - unknown.1
f490: dw $f63f  ; f5 - end of track
f492: dw $f520  ; f6 - set volume

; vcmd f2 - set noise params
;  bit 0-1: channel? (0 to keep the current state)
;  bit 2-6: noise frequency
;  bit 7: set 1 not to change noise frequency
f494: e1        tcall 14                ; read voice byte
f495: c4 e1     mov   $e1,a
f497: 28 03     and   a,#$03
f499: f0 1d     beq   $f4b8
f49b: 9c        dec   a
f49c: d0 0c     bne   $f4aa
f49e: eb e5     mov   y,$e5
f4a0: f6 58 f0  mov   a,$f058+y
f4a3: 48 ff     eor   a,#$ff
f4a5: 25 d4 01  and   a,$01d4
f4a8: 2f 08     bra   $f4b2
f4aa: eb e5     mov   y,$e5
f4ac: f6 58 f0  mov   a,$f058+y
f4af: 05 d4 01  or    a,$01d4
f4b2: c5 d4 01  mov   $01d4,a
f4b5: 8d 3d     mov   y,#$3d
f4b7: 61        tcall 6                 ; write dsp NON
f4b8: e4 e1     mov   a,$e1
f4ba: 30 07     bmi   $f4c3
f4bc: 5c        lsr   a
f4bd: 5c        lsr   a
f4be: 28 1f     and   a,#$1f
f4c0: 8d 6c     mov   y,#$6c
f4c2: 61        tcall 6                 ; write DSP FLG
f4c3: 6f        ret

; vcmd e6 - increase volume index
f4c4: f4 0e     mov   a,$0e+x
f4c6: 68 0f     cmp   a,#$0f
f4c8: f0 06     beq   $f4d0
f4ca: bc        inc   a
f4cb: d4 0e     mov   $0e+x,a
f4cd: 3f c5 f7  call  $f7c5
f4d0: 6f        ret

; vcmd e7 - decrease volume index
f4d1: f4 0e     mov   a,$0e+x
f4d3: f0 06     beq   $f4db
f4d5: 9c        dec   a
f4d6: d4 0e     mov   $0e+x,a
f4d8: 3f c5 f7  call  $f7c5
f4db: 6f        ret

; set timer 0 frequency
f4dc: c4 d5     mov   $d5,a
f4de: 8d 07     mov   y,#$07
f4e0: f7 d9     mov   a,($d9)+y
f4e2: c4 d6     mov   $d6,a
f4e4: 3f 8a f8  call  $f88a
f4e7: 8f ce f1  mov   $f1,#$ce
f4ea: c4 fa     mov   $fa,a
f4ec: 8f 07 f1  mov   $f1,#$07
f4ef: 6f        ret

; set timer 1 frequency
f4f0: c4 d5     mov   $d5,a
f4f2: 8d 07     mov   y,#$07
f4f4: f7 db     mov   a,($db)+y
f4f6: c4 d6     mov   $d6,a
f4f8: 3f 8a f8  call  $f88a
f4fb: 8f cd f1  mov   $f1,#$cd
f4fe: c4 fb     mov   $fb,a
f500: 8f 07 f1  mov   $f1,#$07
f503: 6f        ret

; vcmd e0 - set tempo
f504: e5 cf 01  mov   a,$01cf
f507: d0 05     bne   $f50e
f509: e1        tcall 14                ; read voice byte
f50a: 3f dc f4  call  $f4dc             ; set timer 0 frequency
f50d: 6f        ret
f50e: e1        tcall 14                ; read voice byte
f50f: 3f f0 f4  call  $f4f0             ; set timer 1 frequency
f512: 6f        ret

; vcmd e3 - set panpot
f513: e1        tcall 14                ; read voice byte
f514: d4 0f     mov   $0f+x,a           ; panpot ($40 = center)
f516: e5 d2 01  mov   a,$01d2
f519: f0 01     beq   $f51c
f51b: 6f        ret
f51c: 3f c5 f7  call  $f7c5
f51f: 6f        ret

; vcmd f6 - set volume
f520: e1        tcall 14                ; read voice byte
f521: d4 0e     mov   $0e+x,a           ; set volume index (or volume value, if >= $10)
f523: e5 d2 01  mov   a,$01d2
f526: f0 01     beq   $f529
f528: 6f        ret
f529: 3f c5 f7  call  $f7c5
f52c: 6f        ret

; vcmd e2 - set transpose
f52d: e1        tcall 14                ; read voice byte
f52e: d4 12     mov   $12+x,a           ; transpose (signed)
f530: 6f        ret

; vcmd e4 - increase octave
f531: bb 0d     inc   $0d+x             ; increase octave
f533: e8 ff     mov   a,#$ff
f535: d4 11     mov   $11+x,a           ; invalidate last note
f537: 6f        ret

; vcmd e5 - decrease octave
f538: 9b 0d     dec   $0d+x             ; decrease octave
f53a: e8 ff     mov   a,#$ff
f53c: d4 11     mov   $11+x,a           ; invalidate last note
f53e: 6f        ret

; vcmd e8
f53f: e1        tcall 14                ; read voice byte
f540: d4 18     mov   $18+x,a
f542: e1        tcall 14                ; read voice byte
f543: d4 16     mov   $16+x,a
f545: e1        tcall 14                ; read voice byte
f546: d4 06     mov   $06+x,a
f548: e1        tcall 14                ; read voice byte
f549: d4 07     mov   $07+x,a
f54b: e1        tcall 14                ; read voice byte
f54c: d4 14     mov   $14+x,a
f54e: e8 08     mov   a,#$08
f550: 14 08     or    a,$08+x
f552: d4 08     mov   $08+x,a
f554: 6f        ret

; vcmd e9
f555: e1        tcall 14                ; read voice byte
f556: 08 00     or    a,#$00
f558: f0 07     beq   $f561
f55a: e8 08     mov   a,#$08
f55c: 14 08     or    a,$08+x
f55e: d4 08     mov   $08+x,a
f560: 6f        ret
f561: e8 f7     mov   a,#$f7
f563: 34 08     and   a,$08+x
f565: d4 08     mov   $08+x,a
f567: 6f        ret

; vcmd e1 - set tuning
f568: e1        tcall 14                ; read voice byte
f569: d4 10     mov   $10+x,a           ; set tuning (signed)
f56b: 6f        ret

; vcmd f3 - set ADSR
f56c: 8f 80 e1  mov   $e1,#$80
f56f: 8f 00 e2  mov   $e2,#$00
f572: e1        tcall 14                ; arg1 - AR ($00-7f)
f573: 8d 0f     mov   y,#$0f
f575: cf        mul   ya
f576: 4d        push  x
f577: cd 7f     mov   x,#$7f
f579: 9e        div   ya,x
f57a: ce        pop   x
f57b: 04 e1     or    a,$e1
f57d: c4 e1     mov   $e1,a
f57f: e1        tcall 14                ; arg2 - DR ($00-7f)
f580: 8d 07     mov   y,#$07
f582: cf        mul   ya
f583: 4d        push  x
f584: cd 7f     mov   x,#$7f
f586: 9e        div   ya,x
f587: ce        pop   x
f588: 9f        xcn   a
f589: 28 f0     and   a,#$f0
f58b: 04 e1     or    a,$e1
f58d: c4 e1     mov   $e1,a
f58f: e1        tcall 14                ; arg3 - SR ($00-7f)
f590: 8d 1f     mov   y,#$1f
f592: cf        mul   ya
f593: 4d        push  x
f594: cd 7f     mov   x,#$7f
f596: 9e        div   ya,x
f597: ce        pop   x
f598: 04 e2     or    a,$e2
f59a: c4 e2     mov   $e2,a
f59c: e1        tcall 14                ; arg4 - SL ($00-7f)
f59d: 8d 07     mov   y,#$07
f59f: cf        mul   ya
f5a0: 4d        push  x
f5a1: cd 7f     mov   x,#$7f
f5a3: 9e        div   ya,x
f5a4: ce        pop   x
f5a5: 48 ff     eor   a,#$ff
f5a7: 1c        asl   a
f5a8: 1c        asl   a
f5a9: 1c        asl   a
f5aa: 1c        asl   a
f5ab: 1c        asl   a
f5ac: 04 e2     or    a,$e2
f5ae: c4 e2     mov   $e2,a
f5b0: e1        tcall 14                ; arg5 - ignored
f5b1: e4 e5     mov   a,$e5
f5b3: 9f        xcn   a
f5b4: 08 05     or    a,#$05
f5b6: fd        mov   y,a
f5b7: e4 e1     mov   a,$e1
f5b9: 61        tcall 6                 ; write dsp ADSR(1)
f5ba: fc        inc   y
f5bb: e4 e2     mov   a,$e2
f5bd: 61        tcall 6                 ; write dsp ADSR(2)
f5be: 6f        ret

; vcmd ef - nop
f5bf: 6f        ret

; vcmd f0 - nop
f5c0: 6f        ret

; vcmd f1 - write dsp reg
f5c1: e1        tcall 14                ; read voice byte
f5c2: fd        mov   y,a
f5c3: e1        tcall 14                ; read voice byte
f5c4: 61        tcall 6                 ; write dsp (arg1) to (arg2)
f5c5: 6f        ret

; vcmd f4
f5c6: e1        tcall 14                ; read voice byte
f5c7: c5 d0 01  mov   $01d0,a           ; unused parameter?
f5ca: 6f        ret

; vcmd ec - repeat start
f5cb: e1        tcall 14                ; read voice byte
f5cc: 8d 04     mov   y,#$04
f5ce: d7 df     mov   ($df)+y,a         ; push repeat count
f5d0: 8d 00     mov   y,#$00
f5d2: f4 00     mov   a,$00+x
f5d4: d7 df     mov   ($df)+y,a
f5d6: fc        inc   y
f5d7: f4 01     mov   a,$01+x
f5d9: d7 df     mov   ($df)+y,a         ; push repeat start address
f5db: 8d 02     mov   y,#$02
f5dd: e8 00     mov   a,#$00
f5df: d7 df     mov   ($df)+y,a
f5e1: fc        inc   y
f5e2: d7 df     mov   ($df)+y,a         ; zero repeat end address
f5e4: 3f e8 f5  call  $f5e8             ; add stack ptr
f5e7: 6f        ret

; add repeat stack ptr
f5e8: e8 05     mov   a,#$05
f5ea: 8d 00     mov   y,#$00
f5ec: 7a df     addw  ya,$df
f5ee: da df     movw  $df,ya
f5f0: 6f        ret

; sub repeat stack ptr
f5f1: e8 fb     mov   a,#$fb
f5f3: 8d ff     mov   y,#$ff
f5f5: 7a df     addw  ya,$df
f5f7: da df     movw  $df,ya
f5f9: 6f        ret

; vcmd ed - repeat end
f5fa: 3f f1 f5  call  $f5f1             ; set stack ptr to last entry
f5fd: 8d 04     mov   y,#$04
f5ff: f7 df     mov   a,($df)+y         ; read remaining repeat count
f601: 68 ff     cmp   a,#$ff
f603: f0 05     beq   $f60a             ; $ff = infinite loop
f605: 9c        dec   a
f606: f0 1b     beq   $f623             ; repeat done, do not jump
f608: d7 df     mov   ($df)+y,a         ; update remaining repeat count
f60a: 8d 02     mov   y,#$02
f60c: f4 00     mov   a,$00+x
f60e: d7 df     mov   ($df)+y,a
f610: fc        inc   y
f611: f4 01     mov   a,$01+x
f613: d7 df     mov   ($df)+y,a         ; set repeat end address
f615: 8d 00     mov   y,#$00
f617: f7 df     mov   a,($df)+y
f619: d4 00     mov   $00+x,a
f61b: fc        inc   y
f61c: f7 df     mov   a,($df)+y
f61e: d4 01     mov   $01+x,a           ; jump to repeat start address
f620: 3f e8 f5  call  $f5e8             ; restore stack ptr
f623: 6f        ret

; vcmd ee - repeat break
f624: 3f f1 f5  call  $f5f1             ; set stack ptr to last entry
f627: 8d 04     mov   y,#$04
f629: f7 df     mov   a,($df)+y         ; read remaining repeat count
f62b: 68 01     cmp   a,#$01
f62d: f0 04     beq   $f633             ; jump to end address, if last
f62f: 3f e8 f5  call  $f5e8             ; restore stack ptr, otherwise
f632: 6f        ret
; jump to repeat end
f633: 8d 02     mov   y,#$02
f635: f7 df     mov   a,($df)+y
f637: d4 00     mov   $00+x,a
f639: fc        inc   y
f63a: f7 df     mov   a,($df)+y
f63c: d4 01     mov   $01+x,a           ; jump to repeat end
f63e: 6f        ret

; vcmd f5 - end of track
f63f: e8 80     mov   a,#$80
f641: 14 08     or    a,$08+x
f643: d4 08     mov   $08+x,a
f645: e8 fd     mov   a,#$fd
f647: 34 08     and   a,$08+x
f649: d4 08     mov   $08+x,a
f64b: 3f 31 f7  call  $f731
f64e: e8 00     mov   a,#$00
f650: d4 00     mov   $00+x,a
f652: d4 01     mov   $01+x,a
f654: 6f        ret

; set instrument (set SRCN from table)
f655: ec cf 01  mov   y,$01cf
f658: f0 0a     beq   $f664
;
f65a: 8d 0c     mov   y,#$0c
f65c: 60        clrc
f65d: 97 db     adc   a,($db)+y
f65f: fd        mov   y,a
f660: f7 db     mov   a,($db)+y
f662: 2f 08     bra   $f66c
;
f664: 8d 0c     mov   y,#$0c
f666: 60        clrc
f667: 97 d9     adc   a,($d9)+y         ; add offset to instrument #
f669: fd        mov   y,a               ; use it for index
f66a: f7 d9     mov   a,($d9)+y         ; get global instrument number
;
f66c: ec c3 01  mov   y,$01c3
f66f: f0 07     beq   $f678
f671: 76 3f 01  cmp   a,$013f+y         ; search for global instrument number
f674: f0 03     beq   $f679
f676: fe f9     dbnz  y,$f671
f678: fc        inc   y
f679: dc        dec   y                 ; SRCN is index of the global instrument number (0 if not found)
f67a: 6d        push  y                 ; push SRCN
f67b: e4 e5     mov   a,$e5
f67d: 9f        xcn   a
f67e: 08 04     or    a,#$04
f680: fd        mov   y,a
f681: ae        pop   a
f682: 61        tcall 6                 ; write dsp SRCN
f683: e8 ff     mov   a,#$ff
f685: d4 11     mov   $11+x,a           ; invalidate last note
f687: 6f        ret

; set octave (0-7)
f688: d4 0d     mov   $0d+x,a           ; set octave
f68a: e8 ff     mov   a,#$ff
f68c: d4 11     mov   $11+x,a           ; invalidate last note
f68e: 6f        ret

; set quantize (0-7)
f68f: d4 0c     mov   $0c+x,a
f691: 6f        ret

; vcmd eb - echo on
f692: eb e5     mov   y,$e5
f694: f6 58 f0  mov   a,$f058+y
f697: 05 d5 01  or    a,$01d5
f69a: c5 d5 01  mov   $01d5,a
f69d: 3f 40 f7  call  $f740
f6a0: 6f        ret

; vcmd ea - echo off
f6a1: eb e5     mov   y,$e5
f6a3: f6 58 f0  mov   a,$f058+y
f6a6: 48 ff     eor   a,#$ff
f6a8: 25 d5 01  and   a,$01d5
f6ab: c5 d5 01  mov   $01d5,a
f6ae: 3f 40 f7  call  $f740
f6b1: 6f        ret

; 00-3f - note
f6b2: e8 10     mov   a,#$10
f6b4: 25 d1 01  and   a,$01d1
f6b7: f0 06     beq   $f6bf
; bit 4 (0x10): tie/slur
f6b9: e8 02     mov   a,#$02
f6bb: 14 08     or    a,$08+x
f6bd: d4 08     mov   $08+x,a
; bit 5 (0x20): takes length byte if 0
f6bf: e8 20     mov   a,#$20
f6c1: 25 d1 01  and   a,$01d1
f6c4: d0 03     bne   $f6c9
; update note length, if necessary
f6c6: e1        tcall 14                ; read voice byte
f6c7: d4 0b     mov   $0b+x,a           ; update note length
; apply new note
f6c9: 3f 47 f7  call  $f747             ; set wait amount
f6cc: e5 d1 01  mov   a,$01d1
f6cf: 28 0f     and   a,#$0f            ; key from low-nybble
f6d1: d0 01     bne   $f6d4             ; 0 = rest, otherwise...
f6d3: 6f        ret

f6d4: 9c        dec   a
f6d5: c4 e1     mov   $e1,a
f6d7: e8 01     mov   a,#$01
f6d9: 34 08     and   a,$08+x
f6db: f0 07     beq   $f6e4
f6dd: e4 e1     mov   a,$e1
f6df: 74 11     cmp   a,$11+x           ; key of note changed?
f6e1: d0 01     bne   $f6e4             ; calculate/update pitch, then
f6e3: 6f        ret

; calculate/update pitch
f6e4: e4 e1     mov   a,$e1
f6e6: d4 11     mov   $11+x,a           ; save key of note (no octaves)
f6e8: 3f 63 f7  call  $f763             ; transpose, octave correction
f6eb: 3f 86 f7  call  $f786             ; calculate pitch
f6ee: e4 e1     mov   a,$e1
f6f0: d4 04     mov   $04+x,a
f6f2: e4 e2     mov   a,$e2
f6f4: d4 05     mov   $05+x,a
f6f6: 3f 4c f8  call  $f84c             ; update pitch regs
f6f9: e8 01     mov   a,#$01
f6fb: 34 08     and   a,$08+x
f6fd: f0 01     beq   $f700
f6ff: 6f        ret

f700: 3f 0d f7  call  $f70d
f703: e8 01     mov   a,#$01
f705: 14 08     or    a,$08+x
f707: d4 08     mov   $08+x,a
f709: 3f 5c f8  call  $f85c
f70c: 6f        ret

f70d: e8 00     mov   a,#$00
f70f: 8d 5c     mov   y,#$5c
f711: 61        tcall 6                 ; write dsp KOF
f712: eb e5     mov   y,$e5
f714: f6 58 f0  mov   a,$f058+y
f717: 8d 4c     mov   y,#$4c
f719: 61        tcall 6                 ; write dsp KON
f71a: 6f        ret

f71b: e8 01     mov   a,#$01
f71d: 34 08     and   a,$08+x
f71f: f0 09     beq   $f72a
f721: e8 02     mov   a,#$02
f723: 34 08     and   a,$08+x
f725: d0 03     bne   $f72a
f727: 3f 31 f7  call  $f731
f72a: e8 fd     mov   a,#$fd
f72c: 34 08     and   a,$08+x
f72e: d4 08     mov   $08+x,a
f730: 6f        ret

f731: e8 fe     mov   a,#$fe
f733: 34 08     and   a,$08+x
f735: d4 08     mov   $08+x,a
f737: eb e5     mov   y,$e5
f739: f6 58 f0  mov   a,$f058+y
f73c: 8d 5c     mov   y,#$5c
f73e: 61        tcall 6                 ; write dsp KOF
f73f: 6f        ret

f740: e5 d5 01  mov   a,$01d5
f743: 8d 4d     mov   y,#$4d
f745: 61        tcall 6                 ; write dsp EON
f746: 6f        ret

f747: f4 0b     mov   a,$0b+x           ; note length
f749: d4 09     mov   $09+x,a           ; wait amount (ticks)
f74b: fb 0c     mov   y,$0c+x           ; quantize
f74d: d0 05     bne   $f754
f74f: e8 00     mov   a,#$00
f751: d4 0a     mov   $0a+x,a           ; full length
f753: 6f        ret

; quantization (a=1-7)
f754: cf        mul   ya
f755: 4d        push  x
f756: cd 08     mov   x,#$08
f758: 9e        div   ya,x              ; ticks * q / 8
f759: ce        pop   x
f75a: 48 ff     eor   a,#$ff
f75c: bc        inc   a
f75d: 60        clrc
f75e: 94 09     adc   a,$09+x           ; decrease from full length
f760: d4 0a     mov   $0a+x,a           ; set length of silence
f762: 6f        ret

; transpose, octave correction
f763: 8f 00 e4  mov   $e4,#$00
f766: fb 12     mov   y,$12+x           ; transpose (signed)
f768: 30 0e     bmi   $f778
f76a: 60        clrc
f76b: 94 12     adc   a,$12+x
f76d: 68 0c     cmp   a,#$0c
f76f: 90 14     bcc   $f785
f771: 8f 01 e4  mov   $e4,#$01
f774: 80        setc
f775: a8 0c     sbc   a,#$0c
f777: 6f        ret

f778: 60        clrc
f779: 94 12     adc   a,$12+x
f77b: 68 0c     cmp   a,#$0c
f77d: 90 06     bcc   $f785
f77f: 8f ff e4  mov   $e4,#$ff
f782: 60        clrc
f783: 88 0c     adc   a,#$0c
f785: 6f        ret

; calculate pitch
f786: 6d        push  y
f787: 1c        asl   a
f788: fd        mov   y,a
f789: f6 20 f0  mov   a,$f020+y
f78c: c4 e1     mov   $e1,a
f78e: f6 21 f0  mov   a,$f021+y
f791: c4 e2     mov   $e2,a             ; read pitch table to $e1/2
f793: 8d 00     mov   y,#$00
f795: f4 10     mov   a,$10+x           ; tuning (signed)
f797: 10 01     bpl   $f79a
f799: dc        dec   y
f79a: 60        clrc
f79b: 84 e1     adc   a,$e1
f79d: c4 e1     mov   $e1,a
f79f: dd        mov   a,y
f7a0: 84 e2     adc   a,$e2
f7a2: c4 e2     mov   $e2,a             ; add tuning value to pitch value directly
f7a4: f4 0d     mov   a,$0d+x           ; octave
f7a6: 80        setc
f7a7: a8 03     sbc   a,#$03
f7a9: 60        clrc
f7aa: 84 e4     adc   a,$e4
f7ac: f0 15     beq   $f7c3
f7ae: 30 09     bmi   $f7b9
; adjust octave (up)
f7b0: 0b e1     asl   $e1
f7b2: 2b e2     rol   $e2
f7b4: 9c        dec   a
f7b5: d0 f9     bne   $f7b0
f7b7: 2f 0a     bra   $f7c3
; adjust octave (down)
f7b9: 48 ff     eor   a,#$ff
f7bb: bc        inc   a
f7bc: 4b e2     lsr   $e2
f7be: 6b e1     ror   $e1
f7c0: 9c        dec   a
f7c1: d0 f9     bne   $f7bc
; finish
f7c3: ee        pop   y
f7c4: 6f        ret

f7c5: fb 0e     mov   y,$0e+x
f7c7: f6 60 f0  mov   a,$f060+y         ; volume <  0x10: read from table
f7ca: ad 10     cmp   y,#$10
f7cc: 90 01     bcc   $f7cf
f7ce: dd        mov   a,y               ; volume >= 0x10: direct
f7cf: ec d6 01  mov   y,$01d6           ; master volume (unsigned)
f7d2: ac cf 01  inc   $01cf
f7d5: 8c cf 01  dec   $01cf
f7d8: f0 03     beq   $f7dd
f7da: ec d8 01  mov   y,$01d8
f7dd: cf        mul   ya
f7de: 4d        push  x
f7df: cd ff     mov   x,#$ff
f7e1: 9e        div   ya,x
f7e2: ce        pop   x
f7e3: c4 e1     mov   $e1,a             ; left volume
f7e5: c4 e2     mov   $e2,a             ; right volume
f7e7: f4 0f     mov   a,$0f+x           ; panpot
f7e9: 2d        push  a                 ; save panpot (will be loaded at last)
f7ea: e5 d7 01  mov   a,$01d7           ; master panpot
f7ed: ac cf 01  inc   $01cf
f7f0: 8c cf 01  dec   $01cf
f7f3: f0 03     beq   $f7f8
f7f5: e5 d9 01  mov   a,$01d9
f7f8: 80        setc
f7f9: a8 40     sbc   a,#$40            ; convert to signed value
f7fb: b0 0b     bcs   $f808
f7fd: 60        clrc
f7fe: 94 0f     adc   a,$0f+x           ; add master panpot (negative)
f800: 68 40     cmp   a,#$40            ; wrong clipping?
f802: 90 0d     bcc   $f811
f804: e8 00     mov   a,#$00            ; minimum value
f806: 2f 09     bra   $f811
f808: 60        clrc
f809: 94 0f     adc   a,$0f+x           ; add master panpot
f80b: 68 81     cmp   a,#$81
f80d: 90 02     bcc   $f811
f80f: e8 80     mov   a,#$80            ; maximum value
; left volume (linear panpot)
f811: d4 0f     mov   $0f+x,a           ; save adjusted panpot
f813: e8 80     mov   a,#$80
f815: 80        setc
f816: b4 0f     sbc   a,$0f+x
f818: eb e1     mov   y,$e1
f81a: cf        mul   ya
f81b: 4d        push  x
f81c: cd 80     mov   x,#$80
f81e: 9e        div   ya,x
f81f: ce        pop   x
f820: c4 e1     mov   $e1,a
; right volume (linear panpot)
f822: f4 0f     mov   a,$0f+x
f824: eb e2     mov   y,$e2
f826: cf        mul   ya
f827: 4d        push  x
f828: cd 80     mov   x,#$80
f82a: 9e        div   ya,x
f82b: ce        pop   x
f82c: c4 e2     mov   $e2,a
; update volume regs
f82e: ae        pop   a
f82f: d4 0f     mov   $0f+x,a           ; restore the panpot at last
f831: e5 da 01  mov   a,$01da
f834: d0 0a     bne   $f840
f836: e4 e1     mov   a,$e1
f838: 60        clrc
f839: 84 e2     adc   a,$e2
f83b: 5c        lsr   a
f83c: c4 e1     mov   $e1,a
f83e: c4 e2     mov   $e2,a
f840: e4 e5     mov   a,$e5
f842: 9f        xcn   a
f843: fd        mov   y,a
f844: e4 e1     mov   a,$e1
f846: 61        tcall 6                 ; write dsp VOL(L)
f847: fc        inc   y
f848: e4 e2     mov   a,$e2
f84a: 61        tcall 6                 ; write dsp VOL(R)
f84b: 6f        ret

; update pitch regs
f84c: 6d        push  y
f84d: e4 e5     mov   a,$e5
f84f: 9f        xcn   a
f850: 08 02     or    a,#$02
f852: fd        mov   y,a
f853: f4 04     mov   a,$04+x
f855: 61        tcall 6                 ; write dsp P(L)
f856: fc        inc   y
f857: f4 05     mov   a,$05+x
f859: 61        tcall 6                 ; write dsp P(H)
f85a: ee        pop   y
f85b: 6f        ret

f85c: f4 18     mov   a,$18+x
f85e: d4 17     mov   $17+x,a
f860: f4 16     mov   a,$16+x
f862: d4 15     mov   $15+x,a
f864: f4 14     mov   a,$14+x
f866: 5c        lsr   a
f867: d4 13     mov   $13+x,a
f869: e8 df     mov   a,#$df
f86b: 34 08     and   a,$08+x
f86d: d4 08     mov   $08+x,a
f86f: 6f        ret

; initialize track
f870: 4d        push  x
f871: 6d        push  y
f872: 8d 19     mov   y,#$19            ; memset size
f874: e8 00     mov   a,#$00            ; memset value
f876: d4 00     mov   $00+x,a
f878: 3d        inc   x
f879: fe fb     dbnz  y,$f876
f87b: ee        pop   y
f87c: ce        pop   x
f87d: e8 03     mov   a,#$03
f87f: d4 0d     mov   $0d+x,a
f881: e8 ff     mov   a,#$ff
f883: d4 11     mov   $11+x,a           ; invalidate last note
f885: e8 ff     mov   a,#$ff
f887: d4 0a     mov   $0a+x,a           ; invalidate quantize of last note
f889: 6f        ret

f88a: ba d5     movw  ya,$d5
f88c: cf        mul   ya
f88d: da d5     movw  $d5,ya
f88f: e8 00     mov   a,#$00
f891: c4 d0     mov   $d0,a
f893: 8f 4c d1  mov   $d1,#$4c
f896: 8f 1d d2  mov   $d2,#$1d
f899: c4 d3     mov   $d3,a
f89b: c4 d4     mov   $d4,a
f89d: c4 d5     mov   $d5,a
f89f: 3f a5 f8  call  $f8a5
f8a2: e4 d0     mov   a,$d0
f8a4: 6f        ret

f8a5: 8d 18     mov   y,#$18
f8a7: 2b d0     rol   $d0
f8a9: 2b d1     rol   $d1
f8ab: 2b d2     rol   $d2
f8ad: 2b d3     rol   $d3
f8af: 2b d4     rol   $d4
f8b1: e4 d3     mov   a,$d3
f8b3: 80        setc
f8b4: a4 d5     sbc   a,$d5
f8b6: e4 d4     mov   a,$d4
f8b8: a4 d6     sbc   a,$d6
f8ba: 90 0a     bcc   $f8c6
f8bc: c4 d4     mov   $d4,a
f8be: e4 d3     mov   a,$d3
f8c0: 80        setc
f8c1: a4 d5     sbc   a,$d5
f8c3: c4 d3     mov   $d3,a
f8c5: 80        setc
f8c6: fe df     dbnz  y,$f8a7
f8c8: 2b d0     rol   $d0
f8ca: 2b d1     rol   $d1
f8cc: 2b d2     rol   $d2
f8ce: 6f        ret

; set track offset
f8cf: 5d        mov   x,a
f8d0: f5 70 f0  mov   a,$f070+x
f8d3: 5d        mov   x,a
f8d4: 6f        ret

f8d5: 8d 20     mov   y,#$20
f8d7: f7 d9     mov   a,($d9)+y         ; +$20
f8d9: 68 ff     cmp   a,#$ff
f8db: d0 05     bne   $f8e2
f8dd: 3f aa fa  call  $faaa
f8e0: 2f 23     bra   $f905
f8e2: c5 db 01  mov   $01db,a
f8e5: fc        inc   y
f8e6: f7 d9     mov   a,($d9)+y         ; +$21
f8e8: c5 dc 01  mov   $01dc,a
f8eb: fc        inc   y
f8ec: f7 d9     mov   a,($d9)+y         ; +$22
f8ee: c5 dd 01  mov   $01dd,a
f8f1: fc        inc   y
f8f2: f7 d9     mov   a,($d9)+y         ; +$23
f8f4: c5 de 01  mov   $01de,a
f8f7: fc        inc   y
f8f8: cd 00     mov   x,#$00
f8fa: f7 d9     mov   a,($d9)+y         ; +$24-2b
f8fc: d5 df 01  mov   $01df+x,a
f8ff: fc        inc   y
f900: 3d        inc   x
f901: c8 08     cmp   x,#$08
f903: d0 f5     bne   $f8fa
f905: 8d 06     mov   y,#$06
f907: f7 d9     mov   a,($d9)+y         ; +$06 - initial tempo
f909: 3f dc f4  call  $f4dc             ; set timer frequency
f90c: e8 00     mov   a,#$00
f90e: c5 c7 01  mov   $01c7,a
f911: c5 c8 01  mov   $01c8,a
f914: 8f 00 e5  mov   $e5,#$00          ; zero track index
f917: 8f 08 e3  mov   $e3,#$08          ; number of tracks
f91a: 8d 10     mov   y,#$10
; for each tracks
f91c: fc        inc   y
f91d: f7 d9     mov   a,($d9)+y
f91f: dc        dec   y
f920: 37 d9     and   a,($d9)+y
f922: 68 ff     cmp   a,#$ff
f924: f0 30     beq   $f956             ; skip if score offset = 0
f926: 6d        push  y
f927: e4 e5     mov   a,$e5             ; read track index
f929: 3f cf f8  call  $f8cf             ; set track offset
f92c: 3f 70 f8  call  $f870             ; initialize track
f92f: f7 d9     mov   a,($d9)+y
f931: fc        inc   y
f932: 60        clrc
f933: 84 d9     adc   a,$d9             ; offset to address
f935: d4 00     mov   $00+x,a
f937: f7 d9     mov   a,($d9)+y
f939: 84 da     adc   a,$da
f93b: d4 01     mov   $01+x,a           ; set voice ptr
f93d: e4 e5     mov   a,$e5
f93f: 8d 28     mov   y,#$28            ; stack size (maximum nests = 8)
f941: cf        mul   ya
f942: 60        clrc
f943: 88 00     adc   a,#$00
f945: d4 02     mov   $02+x,a
f947: dd        mov   a,y
f948: 88 fc     adc   a,#$fc
f94a: d4 03     mov   $03+x,a           ; set repeat stack address = $fc00 + (0x28 * channel)
f94c: ee        pop   y
f94d: ab e5     inc   $e5
f94f: ac c7 01  inc   $01c7
f952: 80        setc
f953: 2c c8 01  rol   $01c8
f956: fc        inc   y
f957: fc        inc   y
f958: 6e e3 c1  dbnz  $e3,$f91c
f95b: 6f        ret

f95c: 8d 06     mov   y,#$06
f95e: f7 db     mov   a,($db)+y
f960: 3f f0 f4  call  $f4f0
f963: e8 00     mov   a,#$00
f965: c5 cc 01  mov   $01cc,a
f968: c5 cd 01  mov   $01cd,a
f96b: 8f 07 e5  mov   $e5,#$07
f96e: 8f 08 e3  mov   $e3,#$08
f971: 8d 10     mov   y,#$10
f973: fc        inc   y
f974: f7 db     mov   a,($db)+y
f976: dc        dec   y
f977: 37 db     and   a,($db)+y
f979: 68 ff     cmp   a,#$ff
f97b: f0 30     beq   $f9ad
f97d: 6d        push  y
f97e: e4 e5     mov   a,$e5
f980: 3f cf f8  call  $f8cf
f983: 3f 70 f8  call  $f870
f986: f7 db     mov   a,($db)+y
f988: fc        inc   y
f989: 60        clrc
f98a: 84 db     adc   a,$db
f98c: d4 00     mov   $00+x,a
f98e: f7 db     mov   a,($db)+y
f990: 84 dc     adc   a,$dc
f992: d4 01     mov   $01+x,a
f994: e4 e5     mov   a,$e5
f996: 8d 28     mov   y,#$28
f998: cf        mul   ya
f999: 60        clrc
f99a: 88 00     adc   a,#$00
f99c: d4 02     mov   $02+x,a
f99e: dd        mov   a,y
f99f: 88 fc     adc   a,#$fc
f9a1: d4 03     mov   $03+x,a
f9a3: ee        pop   y
f9a4: 8b e5     dec   $e5
f9a6: ac cc 01  inc   $01cc
f9a9: 80        setc
f9aa: 6c cd 01  ror   $01cd
f9ad: fc        inc   y
f9ae: fc        inc   y
f9af: 6e e3 c1  dbnz  $e3,$f973
f9b2: 6f        ret

f9b3: 7d        mov   a,x
f9b4: f0 1b     beq   $f9d1
f9b6: 8d 5c     mov   y,#$5c
f9b8: 61        tcall 6                 ; write dsp KOF
f9b9: 7d        mov   a,x
f9ba: 48 ff     eor   a,#$ff
f9bc: 25 d4 01  and   a,$01d4
f9bf: c5 d4 01  mov   $01d4,a
f9c2: 8d 3d     mov   y,#$3d
f9c4: 61        tcall 6                 ; write dsp NON
f9c5: 7d        mov   a,x
f9c6: 48 ff     eor   a,#$ff
f9c8: 25 d5 01  and   a,$01d5
f9cb: c5 d5 01  mov   $01d5,a
f9ce: 8d 4d     mov   y,#$4d
f9d0: 61        tcall 6                 ; write dsp KON
f9d1: 6f        ret

f9d2: e8 e0     mov   a,#$e0
f9d4: 8d 6c     mov   y,#$6c
f9d6: 61        tcall 6                 ; write dsp FLG
f9d7: 6f        ret

f9d8: e8 fb     mov   a,#$fb
f9da: 8d 5d     mov   y,#$5d
f9dc: 61        tcall 6                 ; write dsp DIR
f9dd: e8 02     mov   a,#$02
f9df: 8d 6d     mov   y,#$6d
f9e1: 61        tcall 6                 ; write dsp ESA
f9e2: e5 dd 01  mov   a,$01dd
f9e5: 8d 7d     mov   y,#$7d
f9e7: 61        tcall 6                 ; write dsp EDL
f9e8: e8 00     mov   a,#$00
f9ea: 8d 2d     mov   y,#$2d
f9ec: 61        tcall 6                 ; write dsp PMON
f9ed: e5 db 01  mov   a,$01db
f9f0: 8d 0c     mov   y,#$0c
f9f2: 61        tcall 6                 ; write dsp MVOL(L)
f9f3: 8d 1c     mov   y,#$1c
f9f5: 61        tcall 6                 ; write dsp MVOL(R)
f9f6: e5 dc 01  mov   a,$01dc
f9f9: 8d 2c     mov   y,#$2c
f9fb: 61        tcall 6                 ; write dsp EVOL(L)
f9fc: 8d 3c     mov   y,#$3c
f9fe: 61        tcall 6                 ; write dsp EVOL(R)
f9ff: e5 de 01  mov   a,$01de
fa02: 8d 0d     mov   y,#$0d
fa04: 61        tcall 6                 ; write dsp EFB
fa05: 4d        push  x
fa06: 8d 7f     mov   y,#$7f
fa08: cd 07     mov   x,#$07
fa0a: f5 df 01  mov   a,$01df+x
fa0d: 61        tcall 6                 ; write dsp GAIN
fa0e: dd        mov   a,y
fa0f: 80        setc
fa10: a8 10     sbc   a,#$10
fa12: fd        mov   y,a
fa13: 1d        dec   x
fa14: 10 f4     bpl   $fa0a
fa16: ce        pop   x
fa17: 8f 08 e3  mov   $e3,#$08
fa1a: 8d 04     mov   y,#$04
fa1c: 3f 23 fa  call  $fa23
fa1f: 6e e3 fa  dbnz  $e3,$fa1c
fa22: 6f        ret

fa23: e8 00     mov   a,#$00
fa25: 61        tcall 6                 ; write dsp SRCN
fa26: fc        inc   y
fa27: e8 ff     mov   a,#$ff
fa29: 61        tcall 6                 ; write dsp ADSR(1)
fa2a: fc        inc   y
fa2b: e8 e0     mov   a,#$e0
fa2d: 61        tcall 6                 ; write dsp ADSR(2)
fa2e: dd        mov   a,y
fa2f: 60        clrc
fa30: 88 0e     adc   a,#$0e
fa32: fd        mov   y,a
fa33: 6f        ret

fa34: e8 00     mov   a,#$00
fa36: c5 00 02  mov   $0200,a
fa39: c5 01 02  mov   $0201,a
fa3c: c5 02 02  mov   $0202,a
fa3f: c5 03 02  mov   $0203,a
fa42: e5 dd 01  mov   a,$01dd
fa45: f0 17     beq   $fa5e
fa47: 1c        asl   a
fa48: 1c        asl   a
fa49: 1c        asl   a
fa4a: c4 e3     mov   $e3,a
fa4c: 8f 00 e1  mov   $e1,#$00
fa4f: 8f 02 e2  mov   $e2,#$02
fa52: e8 00     mov   a,#$00
fa54: fd        mov   y,a
fa55: d7 e1     mov   ($e1)+y,a
fa57: fe fc     dbnz  y,$fa55
fa59: ab e2     inc   $e2
fa5b: 6e e3 f7  dbnz  $e3,$fa55
fa5e: 6f        ret

; read voice byte, increment ptr (x = 0x19 * N + 8)
fa5f: e7 00     mov   a,($00+x)
fa61: bb 00     inc   $00+x
fa63: f0 01     beq   $fa66
fa65: 6f        ret
fa66: bb 01     inc   $01+x
fa68: 6f        ret

fa69: e8 ff     mov   a,#$ff
fa6b: c5 d6 01  mov   $01d6,a
fa6e: c5 d8 01  mov   $01d8,a
fa71: e8 40     mov   a,#$40
fa73: c5 d7 01  mov   $01d7,a
fa76: c5 d9 01  mov   $01d9,a
fa79: e8 00     mov   a,#$00
fa7b: c5 c7 01  mov   $01c7,a
fa7e: c5 cc 01  mov   $01cc,a
fa81: c5 c8 01  mov   $01c8,a
fa84: c5 cd 01  mov   $01cd,a
fa87: e8 01     mov   a,#$01
fa89: c5 da 01  mov   $01da,a
fa8c: e8 10     mov   a,#$10
fa8e: c5 c6 01  mov   $01c6,a
fa91: e8 04     mov   a,#$04
fa93: c5 cb 01  mov   $01cb,a
fa96: e8 a0     mov   a,#$a0
fa98: c5 ce 01  mov   $01ce,a
fa9b: e8 00     mov   a,#$00
fa9d: c5 d2 01  mov   $01d2,a
faa0: c5 d4 01  mov   $01d4,a
faa3: c5 d5 01  mov   $01d5,a
faa6: 8f 00 e6  mov   $e6,#$00
faa9: 6f        ret

faaa: e8 60     mov   a,#$60
faac: c5 db 01  mov   $01db,a
faaf: e8 30     mov   a,#$30
fab1: c5 dc 01  mov   $01dc,a
fab4: e8 00     mov   a,#$00
fab6: c5 dd 01  mov   $01dd,a
fab9: e8 a0     mov   a,#$a0
fabb: c5 de 01  mov   $01de,a
fabe: 8d 07     mov   y,#$07
fac0: e8 00     mov   a,#$00
fac2: d6 df 01  mov   $01df+y,a
fac5: fe fb     dbnz  y,$fac2
fac7: e8 7f     mov   a,#$7f
fac9: c5 df 01  mov   $01df,a
facc: 6f        ret

facd: 8d 40     mov   y,#$40
facf: e8 ff     mov   a,#$ff
fad1: d6 3f 01  mov   $013f+y,a
fad4: fe fb     dbnz  y,$fad1
fad6: e8 f0     mov   a,#$f0
fad8: 80        setc
fad9: a5 cb 01  sbc   a,$01cb
fadc: c4 dc     mov   $dc,a
fade: 8f 00 db  mov   $db,#$00
fae1: 80        setc
fae2: a5 c6 01  sbc   a,$01c6
fae5: c4 da     mov   $da,a
fae7: 8f 00 d9  mov   $d9,#$00
faea: fd        mov   y,a
faeb: e8 00     mov   a,#$00
faed: da dd     movw  $dd,ya
faef: c5 c3 01  mov   $01c3,a
faf2: 6f        ret

fe80: 2f 2a     bra   $feac

; tcall 5 etc - halt
fe82: 2f fe     bra   $fe82

; tcall address table
fe84: dw $ff5c  ; 0
fe86: dw $ff75  ; 1
fe88: dw $ff98  ; 2
fe8a: dw $ff43  ; 3
fe8c: dw $ff67  ; 4
fe8e: dw $fe82  ; 5
fe90: dw $ff39  ; 6
fe92: dw $ff3e  ; 7
fe94: dw $fe82  ; 8
fe96: dw $fe82  ; 9
fe98: dw $fe82  ; 10
fe9a: dw $fe82  ; 11
fe9c: dw $fe82  ; 12
fe9e: dw $fe82  ; 13
fea0: dw $fe82  ; 14
fea2: dw $fe82  ; 15

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
fee1: 61        tcall 6                 ; write dsp FLG
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

; write A to DSP reg Y
ff39: cb f2     mov   $f2,y
ff3b: c4 f3     mov   $f3,a
ff3d: 6f        ret

; read dsp reg Y to A
ff3e: cb f2     mov   $f2,y
ff40: e4 f3     mov   a,$f3
ff42: 6f        ret

; tcall 3
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

; tcall 0 - read port 0/1
ff5c: e4 f5     mov   a,$f5
ff5e: c5 e1 ff  mov   $ffe1,a
ff61: e4 f4     mov   a,$f4
ff63: c5 e0 ff  mov   $ffe0,a
ff66: 6f        ret

; tcall 4
ff67: e5 e2 ff  mov   a,$ffe2
ff6a: 1c        asl   a
ff6b: 5d        mov   x,a
ff6c: f5 a5 fe  mov   a,$fea5+x
ff6f: 2d        push  a
ff70: f5 a4 fe  mov   a,$fea4+x
ff73: 2d        push  a
ff74: 6f        ret

; tcall 1
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

; tcall 2
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

; tcall table
ffc0: dw $fe82  ; tcall 15 - halt
ffc2: dw $fa5f  ; tcall 14 - read voice byte
ffc4: dw $fe82  ; tcall 13 - halt
ffc6: dw $fe82  ; tcall 12 - halt
ffc8: dw $fe82  ; tcall 11 - halt
ffca: dw $fe82  ; tcall 10 - halt
ffcc: dw $fe82  ; tcall 9 - halt
ffce: dw $fe82  ; tcall 8 - halt
ffd0: dw $ff3e  ; tcall 7 - read dsp reg Y -> A
ffd2: dw $ff39  ; tcall 6 - write dsp reg Y <- A
ffd4: dw $fe82  ; tcall 5 - halt
ffd6: dw $ff67  ; tcall 4
ffd8: dw $ff43  ; tcall 3
ffda: dw $ff98  ; tcall 2
ffdc: dw $ff75  ; tcall 1
ffde: dw $ff5c  ; tcall 0 - read port 0/1
