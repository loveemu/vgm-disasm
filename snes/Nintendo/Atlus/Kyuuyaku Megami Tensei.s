0700: 2f 20     bra   $0722

0702: db $00,$00,$00,$00,$00,$00,$00,$00
070a: db $0b,$21,$28,$28,$18,$fc,$fb,$f7
0712: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
071a: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0722: 20        clrp
0723: cd ff     mov   x,#$ff
0725: bd        mov   sp,x
0726: e8 00     mov   a,#$00
0728: 5d        mov   x,a
0729: af        mov   (x)+,a
072a: c8 e0     cmp   x,#$e0
072c: d0 fb     bne   $0729
072e: cd ff     mov   x,#$ff
0730: d5 00 02  mov   $0200+x,a
0733: d5 00 03  mov   $0300+x,a
0736: d5 00 04  mov   $0400+x,a
0739: d5 00 05  mov   $0500+x,a
073c: d5 00 06  mov   $0600+x,a
073f: 1d        dec   x
0740: c8 ff     cmp   x,#$ff
0742: d0 ec     bne   $0730
0744: cd 3f     mov   x,#$3f
0746: d5 00 01  mov   $0100+x,a
0749: 1d        dec   x
074a: c8 ff     cmp   x,#$ff
074c: d0 f8     bne   $0746
074e: bc        inc   a
074f: 3f a6 0d  call  $0da6
0752: a2 2c     set5  $2c
0754: 8f c0 50  mov   $50,#$c0
0757: 8f 20 bf  mov   $bf,#$20
075a: 8f 20 e9  mov   $e9,#$20
075d: e8 00     mov   a,#$00
075f: c5 81 06  mov   $0681,a
0762: e8 60     mov   a,#$60
0764: c5 7c 06  mov   $067c,a
0767: c5 7d 06  mov   $067d,a
076a: 8d 0c     mov   y,#$0c
076c: 3f 19 09  call  $0919
076f: 8d 1c     mov   y,#$1c
0771: 3f 19 09  call  $0919
0774: e8 50     mov   a,#$50
0776: 8d 5d     mov   y,#$5d
0778: 3f 19 09  call  $0919
077b: e8 f0     mov   a,#$f0
077d: c5 f1 00  mov   $00f1,a
0780: e8 10     mov   a,#$10
0782: c5 fa 00  mov   $00fa,a
0785: c4 54     mov   $54,a
0787: e8 01     mov   a,#$01
0789: c5 f1 00  mov   $00f1,a
078c: 3f 41 09  call  $0941
078f: 8d 0a     mov   y,#$0a
0791: ad 05     cmp   y,#$05
0793: f0 07     beq   $079c
0795: b0 08     bcs   $079f
0797: 69 31 30  cmp   ($30),($31)
079a: d0 11     bne   $07ad
079c: e3 30 0e  bbs7  $30,$07ad
079f: f6 e3 10  mov   a,$10e3+y
07a2: c5 f2 00  mov   $00f2,a
07a5: f6 ed 10  mov   a,$10ed+y
07a8: 5d        mov   x,a
07a9: e6        mov   a,(x)
07aa: c5 f3 00  mov   $00f3,a
07ad: fe e2     dbnz  y,$0791
07af: cb 29     mov   $29,y
07b1: cb 2a     mov   $2a,y
07b3: e4 11     mov   a,$11
07b5: 44 12     eor   a,$12
07b7: 5c        lsr   a
07b8: 5c        lsr   a
07b9: ed        notc
07ba: 6b 11     ror   $11
07bc: 6b 12     ror   $12
07be: 3f 40 01  call  $0140
07c1: ec fd 00  mov   y,$00fd
07c4: f0 f8     beq   $07be
07c6: 6d        push  y
07c7: e8 20     mov   a,#$20
07c9: cf        mul   ya
07ca: 60        clrc
07cb: 84 27     adc   a,$27
07cd: c4 27     mov   $27,a
07cf: 90 07     bcc   $07d8
07d1: 69 31 30  cmp   ($30),($31)
07d4: f0 02     beq   $07d8
07d6: ab 30     inc   $30
07d8: ee        pop   y
07d9: 3f d0 14  call  $14d0
07dc: 3f 50 01  call  $0150
07df: 3f 33 19  call  $1933
07e2: 3f 50 01  call  $0150
07e5: 3f e0 09  call  $09e0
07e8: 3f 50 01  call  $0150
07eb: 3f 3a 1f  call  $1f3a
07ee: 3f 50 01  call  $0150
07f1: cd 00     mov   x,#$00
07f3: 3f 59 01  call  $0159
07f6: e5 48 06  mov   a,$0648
07f9: c5 49 06  mov   $0649,a
07fc: 3f 40 01  call  $0140
07ff: 2f 8e     bra   $078f
0801: 2d        push  a
0802: e8 01     mov   a,#$01
0804: d5 d0 03  mov   $03d0+x,a
0807: ae        pop   a
0808: 6f        ret

0809: 2d        push  a
080a: e8 00     mov   a,#$00
080c: d5 d0 03  mov   $03d0+x,a
080f: ae        pop   a
0810: 6f        ret

0811: 10 0d     bpl   $0820
0813: 0a 07 3f  or1   c,$1f07,1
0816: 09 08 ad  or    ($ad),($08)
0819: ca 90 05  mov1  $0590,0,c
081c: 3f 88 0b  call  $0b88
081f: 8d a4     mov   y,#$a4
0821: ad c8     cmp   y,#$c8
0823: 90 05     bcc   $082a
0825: ad c9     cmp   y,#$c9
0827: f0 d8     beq   $0801
0829: 6f        ret

082a: 2d        push  a
082b: 6d        push  y
082c: 3f 1b 15  call  $151b
082f: ee        pop   y
0830: ae        pop   a
0831: e4 13     mov   a,$13
0833: 24 2b     and   a,$2b
0835: d0 d9     bne   $0810
0837: dd        mov   a,y
0838: 28 7f     and   a,#$7f
083a: 60        clrc
083b: 84 33     adc   a,$33
083d: 60        clrc
083e: 95 b0 02  adc   a,$02b0+x
0841: d5 51 03  mov   $0351+x,a
0844: f5 71 03  mov   a,$0371+x
0847: d5 50 03  mov   $0350+x,a
084a: f5 71 02  mov   a,$0271+x
084d: 5c        lsr   a
084e: e8 00     mov   a,#$00
0850: 7c        ror   a
0851: d5 60 02  mov   $0260+x,a
0854: e8 00     mov   a,#$00
0856: d4 8c     mov   $8c+x,a
0858: d5 00 01  mov   $0100+x,a
085b: d5 90 02  mov   $0290+x,a
085e: d4 9c     mov   $9c+x,a
0860: 09 2b 06  or    ($06),($2b)
0863: 09 2b 29  or    ($29),($2b)
0866: f5 40 02  mov   a,$0240+x
0869: d4 7c     mov   $7c+x,a
086b: f0 1e     beq   $088b
086d: f5 41 02  mov   a,$0241+x
0870: d4 7d     mov   $7d+x,a
0872: f5 50 02  mov   a,$0250+x
0875: d0 0a     bne   $0881
0877: f5 51 03  mov   a,$0351+x
087a: 80        setc
087b: b5 51 02  sbc   a,$0251+x
087e: d5 51 03  mov   $0351+x,a
0881: f5 51 02  mov   a,$0251+x
0884: 60        clrc
0885: 95 51 03  adc   a,$0351+x
0888: 3f 1c 0e  call  $0e1c
088b: 3f 34 0e  call  $0e34
088e: 8d 00     mov   y,#$00
0890: e4 08     mov   a,$08
0892: 80        setc
0893: a8 34     sbc   a,#$34
0895: b0 09     bcs   $08a0
0897: e4 08     mov   a,$08
0899: 80        setc
089a: a8 13     sbc   a,#$13
089c: b0 06     bcs   $08a4
089e: dc        dec   y
089f: 1c        asl   a
08a0: 7a 07     addw  ya,$07
08a2: da 07     movw  $07,ya
08a4: 4d        push  x
08a5: e4 08     mov   a,$08
08a7: 1c        asl   a
08a8: 8d 00     mov   y,#$00
08aa: cd 18     mov   x,#$18
08ac: 9e        div   ya,x
08ad: 5d        mov   x,a
08ae: f6 4a 11  mov   a,$114a+y
08b1: c4 0c     mov   $0c,a
08b3: f6 49 11  mov   a,$1149+y
08b6: c4 0b     mov   $0b,a
08b8: f6 4c 11  mov   a,$114c+y
08bb: 2d        push  a
08bc: f6 4b 11  mov   a,$114b+y
08bf: ee        pop   y
08c0: 9a 0b     subw  ya,$0b
08c2: eb 07     mov   y,$07
08c4: cf        mul   ya
08c5: dd        mov   a,y
08c6: 8d 00     mov   y,#$00
08c8: 7a 0b     addw  ya,$0b
08ca: cb 0c     mov   $0c,y
08cc: 1c        asl   a
08cd: 2b 0c     rol   $0c
08cf: c4 0b     mov   $0b,a
08d1: 2f 04     bra   $08d7
08d3: 4b 0c     lsr   $0c
08d5: 7c        ror   a
08d6: 3d        inc   x
08d7: c8 06     cmp   x,#$06
08d9: d0 f8     bne   $08d3
08db: c4 0b     mov   $0b,a
08dd: ce        pop   x
08de: f5 20 02  mov   a,$0220+x
08e1: eb 0c     mov   y,$0c
08e3: cf        mul   ya
08e4: da 0d     movw  $0d,ya
08e6: f5 20 02  mov   a,$0220+x
08e9: eb 0b     mov   y,$0b
08eb: cf        mul   ya
08ec: 6d        push  y
08ed: f5 21 02  mov   a,$0221+x
08f0: eb 0b     mov   y,$0b
08f2: cf        mul   ya
08f3: 7a 0d     addw  ya,$0d
08f5: da 0d     movw  $0d,ya
08f7: f5 21 02  mov   a,$0221+x
08fa: eb 0c     mov   y,$0c
08fc: cf        mul   ya
08fd: fd        mov   y,a
08fe: ae        pop   a
08ff: 7a 0d     addw  ya,$0d
0901: da 0d     movw  $0d,ya
0903: 7d        mov   a,x
0904: 9f        xcn   a
0905: 5c        lsr   a
0906: 08 02     or    a,#$02
0908: fd        mov   y,a
0909: e4 0d     mov   a,$0d
090b: 3f 11 09  call  $0911
090e: fc        inc   y
090f: e4 0e     mov   a,$0e
0911: 2d        push  a
0912: e4 2b     mov   a,$2b
0914: 24 13     and   a,$13
0916: ae        pop   a
0917: d0 06     bne   $091f
0919: cc f2 00  mov   $00f2,y
091c: c5 f3 00  mov   $00f3,a
091f: 6f        ret

; read a word from section ptr
0920: 8d 00     mov   y,#$00
0922: f7 24     mov   a,($24)+y
0924: 3a 24     incw  $24
0926: 2d        push  a
0927: f7 24     mov   a,($24)+y
0929: 3a 24     incw  $24
092b: fd        mov   y,a
092c: ae        pop   a
092d: 6f        ret

092e: e8 00     mov   a,#$00
0930: cd 00     mov   x,#$00
0932: d5 00 04  mov   $0400+x,a
0935: d5 14 00  mov   $0014+x,a
0938: d5 5c 00  mov   $005c+x,a
093b: 3d        inc   x
093c: c8 10     cmp   x,#$10
093e: d0 f2     bne   $0932
0940: 6f        ret

0941: e4 13     mov   a,$13
0943: 48 ff     eor   a,#$ff
0945: 0e 2a 00  tset1 $002a
0948: a2 2c     set5  $2c
094a: e4 2c     mov   a,$2c
094c: 8d 6c     mov   y,#$6c
094e: 3f 19 09  call  $0919
0951: e8 00     mov   a,#$00
0953: c5 34 00  mov   $0034,a
0956: c5 35 00  mov   $0035,a
0959: c5 36 00  mov   $0036,a
095c: c5 37 00  mov   $0037,a
095f: c5 ea 00  mov   $00ea,a
0962: c5 eb 00  mov   $00eb,a
0965: c5 ec 00  mov   $00ec,a
0968: c5 ed 00  mov   $00ed,a
096b: 8d 4d     mov   y,#$4d
096d: 3f 19 09  call  $0919
0970: 8d 2c     mov   y,#$2c
0972: 3f 19 09  call  $0919
0975: 8d 3c     mov   y,#$3c
0977: 3f 19 09  call  $0919
097a: 3f 2e 09  call  $092e
097d: 6f        ret

097e: c5 e4 02  mov   $02e4,a
0981: 28 0f     and   a,#$0f
0983: 1c        asl   a
0984: f0 0f     beq   $0995
0986: 5d        mov   x,a
0987: f5 17 20  mov   a,$2017+x
098a: fd        mov   y,a
098b: f5 16 20  mov   a,$2016+x
098e: da 24     movw  $24,ya            ; initialize section ptr
0990: 8f 02 00  mov   $00,#$02
0993: 2f ac     bra   $0941
0995: 3f 61 14  call  $1461
0998: 8f c0 50  mov   $50,#$c0
099b: 2f f6     bra   $0993
099d: cd 0e     mov   x,#$0e
099f: 8f 80 2b  mov   $2b,#$80
09a2: e8 ff     mov   a,#$ff
09a4: d5 d1 02  mov   $02d1+x,a
09a7: e8 0a     mov   a,#$0a
09a9: 3f e6 0b  call  $0be6
09ac: d5 11 02  mov   $0211+x,a
09af: d5 71 03  mov   $0371+x,a
09b2: d5 b0 02  mov   $02b0+x,a
09b5: d5 40 02  mov   $0240+x,a
09b8: d4 8d     mov   $8d+x,a
09ba: d4 9d     mov   $9d+x,a
09bc: 1d        dec   x
09bd: 1d        dec   x
09be: 4b 2b     lsr   $2b
09c0: d0 e0     bne   $09a2
09c2: c4 58     mov   $58,a
09c4: c4 3c     mov   $3c,a
09c6: c4 5a     mov   $5a,a
09c8: c4 33     mov   $33,a
09ca: c4 26     mov   $26,a
09cc: c4 57     mov   $57,a
09ce: 8f c0 50  mov   $50,#$c0
09d1: 8f 20 54  mov   $54,#$20
09d4: e8 00     mov   a,#$00
09d6: c5 4a 06  mov   $064a,a
09d9: 6f        ret

09da: e5 29 01  mov   a,$0129
09dd: d0 26     bne   $0a05
09df: 6f        ret

09e0: ec e8 02  mov   y,$02e8
09e3: e5 e0 02  mov   a,$02e0
09e6: c5 e8 02  mov   $02e8,a
09e9: 5e e0 02  cmp   y,$02e0
09ec: f0 12     beq   $0a00
09ee: 2d        push  a
09ef: dd        mov   a,y
09f0: 28 0f     and   a,#$0f
09f2: c5 2c 01  mov   $012c,a
09f5: ae        pop   a
09f6: 28 0f     and   a,#$0f
09f8: 65 2c 01  cmp   a,$012c
09fb: f0 03     beq   $0a00
09fd: 5f 7e 09  jmp   $097e

0a00: e5 e4 02  mov   a,$02e4
0a03: f0 d5     beq   $09da
0a05: e4 00     mov   a,$00
0a07: f0 4d     beq   $0a56
0a09: 6e 00 91  dbnz  $00,$099d
0a0c: 3f 20 09  call  $0920             ; read next word from section ptr
0a0f: d0 17     bne   $0a28
0a11: fd        mov   y,a
0a12: d0 03     bne   $0a17
0a14: 5f 7e 09  jmp   $097e

0a17: 8b 26     dec   $26
0a19: 10 02     bpl   $0a1d
0a1b: c4 26     mov   $26,a
0a1d: 3f 20 09  call  $0920             ; read next word from section ptr
0a20: f8 26     mov   x,$26
0a22: f0 e8     beq   $0a0c
0a24: da 24     movw  $24,ya
0a26: 2f e4     bra   $0a0c
0a28: da 0d     movw  $0d,ya
0a2a: 8d 0f     mov   y,#$0f
0a2c: f7 0d     mov   a,($0d)+y
0a2e: d6 14 00  mov   $0014+y,a
0a31: dc        dec   y
0a32: 10 f8     bpl   $0a2c
0a34: cd 00     mov   x,#$00
0a36: 8f 01 2b  mov   $2b,#$01
0a39: f4 15     mov   a,$15+x
0a3b: f0 0a     beq   $0a47
0a3d: f5 11 02  mov   a,$0211+x
0a40: d0 05     bne   $0a47
0a42: e8 00     mov   a,#$00
0a44: 3f 88 0b  call  $0b88
0a47: e8 00     mov   a,#$00
0a49: d4 6c     mov   $6c+x,a
0a4b: d4 6d     mov   $6d+x,a
0a4d: bc        inc   a
0a4e: d4 3f     mov   $3f+x,a
0a50: 3d        inc   x
0a51: 3d        inc   x
0a52: 0b 2b     asl   $2b
0a54: d0 e3     bne   $0a39
0a56: cd 00     mov   x,#$00
0a58: d8 06     mov   $06,x
0a5a: 8f 01 2b  mov   $2b,#$01
0a5d: d8 28     mov   $28,x
0a5f: f4 15     mov   a,$15+x
0a61: d0 03     bne   $0a66
0a63: 5f 88 0a  jmp   $0a88

0a66: f5 00 04  mov   a,$0400+x
0a69: d0 07     bne   $0a72
0a6b: e5 42 06  mov   a,$0642
0a6e: f0 18     beq   $0a88
0a70: 2f 10     bra   $0a82
0a72: 68 02     cmp   a,#$02
0a74: f0 07     beq   $0a7d
0a76: e5 43 06  mov   a,$0643
0a79: f0 0d     beq   $0a88
0a7b: 2f 05     bra   $0a82
0a7d: e5 44 06  mov   a,$0644
0a80: f0 06     beq   $0a88
0a82: 3f 06 19  call  $1906
0a85: 3f 6e 11  call  $116e
0a88: 4d        push  x
0a89: 3f 50 01  call  $0150
0a8c: ce        pop   x
0a8d: 3d        inc   x
0a8e: 3d        inc   x
0a8f: 0b 2b     asl   $2b
0a91: d0 ca     bne   $0a5d
0a93: e5 85 06  mov   a,$0685
0a96: f0 11     beq   $0aa9
0a98: ba ee     movw  ya,$ee
0a9a: 7a be     addw  ya,$be
0a9c: 8c 85 06  dec   $0685
0a9f: d0 06     bne   $0aa7
0aa1: ec 86 06  mov   y,$0686
0aa4: e5 85 06  mov   a,$0685
0aa7: da be     movw  $be,ya
0aa9: e5 87 06  mov   a,$0687
0aac: f0 11     beq   $0abf
0aae: ba f0     movw  ya,$f0
0ab0: 7a e8     addw  ya,$e8
0ab2: 8c 87 06  dec   $0687
0ab5: d0 06     bne   $0abd
0ab7: ec 88 06  mov   y,$0688
0aba: e5 87 06  mov   a,$0687
0abd: da e8     movw  $e8,ya
0abf: e4 5a     mov   a,$5a
0ac1: f0 0b     beq   $0ace
0ac3: ba 55     movw  ya,$55
0ac5: 7a 53     addw  ya,$53
0ac7: 6e 5a 02  dbnz  $5a,$0acc
0aca: ba 5a     movw  ya,$5a
0acc: da 53     movw  $53,ya
0ace: e4 3c     mov   a,$3c
0ad0: f0 15     beq   $0ae7
0ad2: ba 38     movw  ya,$38
0ad4: 7a 34     addw  ya,$34
0ad6: da 34     movw  $34,ya
0ad8: ba 3a     movw  ya,$3a
0ada: 7a 36     addw  ya,$36
0adc: 6e 3c 06  dbnz  $3c,$0ae5
0adf: ba 3c     movw  ya,$3c
0ae1: da 34     movw  $34,ya
0ae3: eb 3e     mov   y,$3e
0ae5: da 36     movw  $36,ya
0ae7: e4 58     mov   a,$58
0ae9: f0 0e     beq   $0af9
0aeb: ba 51     movw  ya,$51
0aed: 7a 4f     addw  ya,$4f
0aef: 6e 58 02  dbnz  $58,$0af4
0af2: ba 58     movw  ya,$58
0af4: da 4f     movw  $4f,ya
0af6: 8f ff 06  mov   $06,#$ff
0af9: cd 00     mov   x,#$00
0afb: 8f 01 2b  mov   $2b,#$01
0afe: f4 15     mov   a,$15+x
0b00: f0 08     beq   $0b0a
0b02: 3f 5b 0e  call  $0e5b
0b05: 4d        push  x
0b06: 3f 11 0b  call  $0b11
0b09: ce        pop   x
0b0a: 3d        inc   x
0b0b: 3d        inc   x
0b0c: 0b 2b     asl   $2b
0b0e: d0 ee     bne   $0afe
0b10: 6f        ret

0b11: e5 81 06  mov   a,$0681
0b14: d0 0d     bne   $0b23
0b16: f5 5c 06  mov   a,$065c+x
0b19: f0 08     beq   $0b23
0b1b: f5 4c 06  mov   a,$064c+x
0b1e: 48 ff     eor   a,#$ff
0b20: bc        inc   a
0b21: 2f 03     bra   $0b26
0b23: f5 4c 06  mov   a,$064c+x
0b26: c5 2c 01  mov   $012c,a
0b29: 7d        mov   a,x
0b2a: 1c        asl   a
0b2b: 1c        asl   a
0b2c: 1c        asl   a
0b2d: fd        mov   y,a
0b2e: e5 2c 01  mov   a,$012c
0b31: 3f 11 09  call  $0911
0b34: e5 81 06  mov   a,$0681
0b37: d0 0d     bne   $0b46
0b39: f5 5d 06  mov   a,$065d+x
0b3c: f0 08     beq   $0b46
0b3e: f5 4d 06  mov   a,$064d+x
0b41: 48 ff     eor   a,#$ff
0b43: bc        inc   a
0b44: 2f 03     bra   $0b49
0b46: f5 4d 06  mov   a,$064d+x
0b49: c5 2c 01  mov   $012c,a
0b4c: 7d        mov   a,x
0b4d: 1c        asl   a
0b4e: 1c        asl   a
0b4f: 1c        asl   a
0b50: bc        inc   a
0b51: fd        mov   y,a
0b52: e5 2c 01  mov   a,$012c
0b55: 3f 11 09  call  $0911
0b58: 6f        ret

0b59: 3f 7e 0b  call  $0b7e
0b5c: 1c        asl   a
0b5d: fd        mov   y,a
0b5e: f6 e1 11  mov   a,$11e1+y
0b61: 2d        push  a
0b62: f6 e0 11  mov   a,$11e0+y
0b65: 2d        push  a
0b66: 2f 16     bra   $0b7e
0b68: 68 ff     cmp   a,#$ff
0b6a: f0 ed     beq   $0b59
0b6c: 1c        asl   a
0b6d: fd        mov   y,a
0b6e: f6 39 10  mov   a,$1039+y
0b71: 2d        push  a
0b72: f6 38 10  mov   a,$1038+y         ; read vcmd dispatch table ($10f8)
0b75: 2d        push  a
0b76: dd        mov   a,y
0b77: 5c        lsr   a
0b78: fd        mov   y,a
0b79: f6 ce 10  mov   a,$10ce+y         ; read vcmd length table ($112e)
0b7c: f0 08     beq   $0b86
0b7e: e7 14     mov   a,($14+x)
0b80: bb 14     inc   $14+x
0b82: d0 02     bne   $0b86
0b84: bb 15     inc   $15+x
0b86: fd        mov   y,a
0b87: 6f        ret

; vcmd e0
0b88: d5 11 02  mov   $0211+x,a
0b8b: fd        mov   y,a
0b8c: 10 08     bpl   $0b96
0b8e: 80        setc
0b8f: a8 ca     sbc   a,#$ca
0b91: 60        clrc
0b92: 84 57     adc   a,$57
0b94: 2f 03     bra   $0b99
0b96: 3f db 12  call  $12db
0b99: 8d 06     mov   y,#$06
0b9b: cf        mul   ya
0b9c: da 0b     movw  $0b,ya
0b9e: 60        clrc
0b9f: 98 00 0b  adc   $0b,#$00
0ba2: 98 21 0c  adc   $0c,#$21
0ba5: e4 13     mov   a,$13
0ba7: 24 2b     and   a,$2b
0ba9: d0 3a     bne   $0be5
0bab: 4d        push  x
0bac: 7d        mov   a,x
0bad: 9f        xcn   a
0bae: 5c        lsr   a
0baf: 08 04     or    a,#$04
0bb1: 5d        mov   x,a
0bb2: 8d 00     mov   y,#$00
0bb4: f7 0b     mov   a,($0b)+y
0bb6: 10 0e     bpl   $0bc6
0bb8: 28 1f     and   a,#$1f
0bba: 38 20 2c  and   $2c,#$20
0bbd: 0e 2c 00  tset1 $002c
0bc0: 09 2b 2d  or    ($2d),($2b)
0bc3: dd        mov   a,y
0bc4: 2f 07     bra   $0bcd
0bc6: e4 2b     mov   a,$2b
0bc8: 4e 2d 00  tclr1 $002d
0bcb: f7 0b     mov   a,($0b)+y
0bcd: c9 f2 00  mov   $00f2,x
0bd0: c5 f3 00  mov   $00f3,a
0bd3: 3d        inc   x
0bd4: fc        inc   y
0bd5: ad 04     cmp   y,#$04
0bd7: d0 f2     bne   $0bcb
0bd9: ce        pop   x
0bda: f7 0b     mov   a,($0b)+y
0bdc: d5 21 02  mov   $0221+x,a
0bdf: fc        inc   y
0be0: f7 0b     mov   a,($0b)+y
0be2: d5 20 02  mov   $0220+x,a
0be5: 6f        ret

; vcmd e1
0be6: 2d        push  a
0be7: f5 00 04  mov   a,$0400+x
0bea: 68 01     cmp   a,#$01
0bec: d0 0d     bne   $0bfb
0bee: e5 8b 06  mov   a,$068b
0bf1: 68 15     cmp   a,#$15
0bf3: f0 06     beq   $0bfb
0bf5: ae        pop   a
0bf6: e5 8b 06  mov   a,$068b
0bf9: 2f 01     bra   $0bfc
0bfb: ae        pop   a
0bfc: d5 41 03  mov   $0341+x,a
0bff: 28 1f     and   a,#$1f
0c01: d5 21 03  mov   $0321+x,a
0c04: e8 00     mov   a,#$00
0c06: d5 20 03  mov   $0320+x,a
0c09: 6f        ret

; vcmd e2
0c0a: d4 6d     mov   $6d+x,a
0c0c: 2d        push  a
0c0d: 3f 7e 0b  call  $0b7e
0c10: d5 40 03  mov   $0340+x,a
0c13: 80        setc
0c14: b5 21 03  sbc   a,$0321+x
0c17: ce        pop   x
0c18: 3f 3f 0e  call  $0e3f
0c1b: d5 30 03  mov   $0330+x,a
0c1e: dd        mov   a,y
0c1f: d5 31 03  mov   $0331+x,a
0c22: 6f        ret

; vcmd e3
0c23: d5 70 02  mov   $0270+x,a
0c26: 3f 7e 0b  call  $0b7e
0c29: d5 61 02  mov   $0261+x,a
0c2c: 3f 7e 0b  call  $0b7e
; vcmd e4
0c2f: d4 8d     mov   $8d+x,a
0c31: d5 81 02  mov   $0281+x,a
0c34: e8 00     mov   a,#$00
0c36: d5 71 02  mov   $0271+x,a
0c39: 6f        ret

; vcmd f0
0c3a: d5 71 02  mov   $0271+x,a
0c3d: 2d        push  a
0c3e: 8d 00     mov   y,#$00
0c40: f4 8d     mov   a,$8d+x
0c42: ce        pop   x
0c43: 9e        div   ya,x
0c44: f8 28     mov   x,$28
0c46: d5 80 02  mov   $0280+x,a
0c49: 6f        ret

; vcmd e5
0c4a: e8 00     mov   a,#$00
0c4c: da 4f     movw  $4f,ya
0c4e: 6f        ret

; vcmd e6
0c4f: c4 58     mov   $58,a
0c51: 3f 7e 0b  call  $0b7e
0c54: c4 59     mov   $59,a
0c56: 80        setc
0c57: a4 50     sbc   a,$50
0c59: f8 58     mov   x,$58
0c5b: 3f 3f 0e  call  $0e3f
0c5e: da 51     movw  $51,ya
0c60: 6f        ret

; vcmd e7
0c61: f5 00 04  mov   a,$0400+x
0c64: d0 05     bne   $0c6b
0c66: e8 00     mov   a,#$00
0c68: da 53     movw  $53,ya
0c6a: 6f        ret

0c6b: 68 02     cmp   a,#$02
0c6d: f0 05     beq   $0c74
0c6f: e8 00     mov   a,#$00
0c71: da be     movw  $be,ya
0c73: 6f        ret

0c74: e8 00     mov   a,#$00
0c76: da e8     movw  $e8,ya
0c78: 6f        ret

0c79: c4 5a     mov   $5a,a
0c7b: 3f f7 1a  call  $1af7
0c7e: 2f 0c     bra   $0c8c
; vcmd e8
0c80: 2d        push  a
0c81: f5 00 04  mov   a,$0400+x
0c84: d0 15     bne   $0c9b
0c86: ae        pop   a
0c87: c4 5a     mov   $5a,a
0c89: 3f 7e 0b  call  $0b7e
0c8c: c4 5b     mov   $5b,a
0c8e: 80        setc
0c8f: a4 54     sbc   a,$54
0c91: 4d        push  x
0c92: f8 5a     mov   x,$5a
0c94: 3f 3f 0e  call  $0e3f
0c97: da 55     movw  $55,ya
0c99: ce        pop   x
0c9a: 6f        ret

0c9b: 68 02     cmp   a,#$02
0c9d: f0 18     beq   $0cb7
0c9f: ae        pop   a
0ca0: c5 85 06  mov   $0685,a
0ca3: 3f 7e 0b  call  $0b7e
0ca6: c5 86 06  mov   $0686,a
0ca9: 80        setc
0caa: a4 bf     sbc   a,$bf
0cac: 4d        push  x
0cad: e9 85 06  mov   x,$0685
0cb0: 3f 3f 0e  call  $0e3f
0cb3: da ee     movw  $ee,ya
0cb5: ce        pop   x
0cb6: 6f        ret

0cb7: ae        pop   a
0cb8: c5 87 06  mov   $0687,a
0cbb: 3f 7e 0b  call  $0b7e
0cbe: c5 88 06  mov   $0688,a
0cc1: 80        setc
0cc2: a4 e9     sbc   a,$e9
0cc4: 4d        push  x
0cc5: e9 87 06  mov   x,$0687
0cc8: 3f 3f 0e  call  $0e3f
0ccb: da f0     movw  $f0,ya
0ccd: ce        pop   x
0cce: 6f        ret

; vcmd e9
0ccf: c4 33     mov   $33,a
0cd1: 6f        ret

; vcmd ea
0cd2: d5 b0 02  mov   $02b0+x,a
0cd5: 6f        ret

; vcmd eb
0cd6: d5 a0 02  mov   $02a0+x,a
0cd9: 3f 7e 0b  call  $0b7e
0cdc: d5 91 02  mov   $0291+x,a
0cdf: 3f 7e 0b  call  $0b7e
; vcmd ec
0ce2: d4 9d     mov   $9d+x,a
0ce4: 6f        ret

; vcmd f1
0ce5: e8 01     mov   a,#$01
0ce7: 2f 02     bra   $0ceb
; vcmd f2
0ce9: e8 00     mov   a,#$00
0ceb: d5 50 02  mov   $0250+x,a
0cee: dd        mov   a,y
0cef: d5 41 02  mov   $0241+x,a
0cf2: 3f 7e 0b  call  $0b7e
0cf5: d5 40 02  mov   $0240+x,a
0cf8: 3f 7e 0b  call  $0b7e
0cfb: d5 51 02  mov   $0251+x,a
0cfe: 6f        ret

; vcmd f3
0cff: d5 40 02  mov   $0240+x,a
0d02: 6f        ret

; vcmd ed
0d03: d5 d1 02  mov   $02d1+x,a
0d06: d5 21 06  mov   $0621+x,a
0d09: 3f 89 14  call  $1489
0d0c: e8 00     mov   a,#$00
0d0e: d5 d0 02  mov   $02d0+x,a
0d11: d5 20 06  mov   $0620+x,a
0d14: 6f        ret

; vcmd ee
0d15: d4 6c     mov   $6c+x,a
0d17: 2d        push  a
0d18: 3f 7e 0b  call  $0b7e
0d1b: d5 10 03  mov   $0310+x,a
0d1e: 80        setc
0d1f: b5 d1 02  sbc   a,$02d1+x
0d22: ce        pop   x
0d23: 3f 3f 0e  call  $0e3f
0d26: d5 00 03  mov   $0300+x,a
0d29: dd        mov   a,y
0d2a: d5 01 03  mov   $0301+x,a
0d2d: 6f        ret

; vcmd f4
0d2e: d5 71 03  mov   $0371+x,a
; vcmd ef
0d31: 6f        ret

; vcmd f5
0d32: 2d        push  a
0d33: f5 00 04  mov   a,$0400+x
0d36: d0 1b     bne   $0d53
0d38: ae        pop   a
0d39: c4 2e     mov   $2e,a
0d3b: c5 30 06  mov   $0630,a
0d3e: 3f 7e 0b  call  $0b7e
0d41: e8 00     mov   a,#$00
0d43: da 34     movw  $34,ya
0d45: da ea     movw  $ea,ya
0d47: 3f 7e 0b  call  $0b7e
0d4a: e8 00     mov   a,#$00
0d4c: da 36     movw  $36,ya
0d4e: da ec     movw  $ec,ya
0d50: b2 2c     clr5  $2c
0d52: 6f        ret

0d53: ae        pop   a
0d54: 05 2e 00  or    a,$002e
0d57: c5 2e 00  mov   $002e,a
0d5a: 2f e2     bra   $0d3e
; vcmd f8
0d5c: c4 3c     mov   $3c,a
0d5e: 3f 7e 0b  call  $0b7e
0d61: c4 3d     mov   $3d,a
0d63: 80        setc
0d64: a4 35     sbc   a,$35
0d66: f8 3c     mov   x,$3c
0d68: 3f 3f 0e  call  $0e3f
0d6b: da 38     movw  $38,ya
0d6d: 3f 7e 0b  call  $0b7e
0d70: c4 3e     mov   $3e,a
0d72: 80        setc
0d73: a4 37     sbc   a,$37
0d75: f8 3c     mov   x,$3c
0d77: 3f 3f 0e  call  $0e3f
0d7a: da 3a     movw  $3a,ya
0d7c: 6f        ret

; vcmd f6
0d7d: da 34     movw  $34,ya
0d7f: da 36     movw  $36,ya
0d81: a2 2c     set5  $2c
0d83: 6f        ret

; vcmd f7
0d84: 3f a6 0d  call  $0da6
0d87: 3f 7e 0b  call  $0b7e
0d8a: c4 32     mov   $32,a
0d8c: 3f 7e 0b  call  $0b7e
0d8f: 8d 08     mov   y,#$08
0d91: cf        mul   ya
0d92: 5d        mov   x,a
0d93: 8d 0f     mov   y,#$0f
0d95: f5 02 07  mov   a,$0702+x
0d98: 3f 19 09  call  $0919
0d9b: 3d        inc   x
0d9c: dd        mov   a,y
0d9d: 60        clrc
0d9e: 88 10     adc   a,#$10
0da0: fd        mov   y,a
0da1: 10 f2     bpl   $0d95
0da3: f8 28     mov   x,$28
0da5: 6f        ret

0da6: c4 31     mov   $31,a
0da8: 8d 7d     mov   y,#$7d
0daa: cc f2 00  mov   $00f2,y
0dad: e5 f3 00  mov   a,$00f3
0db0: 64 31     cmp   a,$31
0db2: f0 2b     beq   $0ddf
0db4: 28 0f     and   a,#$0f
0db6: 48 ff     eor   a,#$ff
0db8: f3 30 03  bbc7  $30,$0dbe
0dbb: 60        clrc
0dbc: 84 30     adc   a,$30
0dbe: c4 30     mov   $30,a
0dc0: 8d 04     mov   y,#$04
0dc2: f6 e3 10  mov   a,$10e3+y
0dc5: c5 f2 00  mov   $00f2,a
0dc8: e8 00     mov   a,#$00
0dca: c5 f3 00  mov   $00f3,a
0dcd: fe f3     dbnz  y,$0dc2
0dcf: e4 2c     mov   a,$2c
0dd1: 08 20     or    a,#$20
0dd3: 8d 6c     mov   y,#$6c
0dd5: 3f 19 09  call  $0919
0dd8: e4 31     mov   a,$31
0dda: 8d 7d     mov   y,#$7d
0ddc: 3f 19 09  call  $0919
0ddf: 1c        asl   a
0de0: 1c        asl   a
0de1: 1c        asl   a
0de2: 48 ff     eor   a,#$ff
0de4: 80        setc
0de5: 88 ff     adc   a,#$ff
0de7: 68 87     cmp   a,#$87
0de9: b0 06     bcs   $0df1
0deb: e5 31 00  mov   a,$0031
0dee: 9c        dec   a
0def: 2f b5     bra   $0da6
0df1: c5 4b 06  mov   $064b,a
0df4: 8d 6d     mov   y,#$6d
0df6: 5f 19 09  jmp   $0919

; vcmd fa
0df9: c4 57     mov   $57,a
0dfb: 6f        ret

0dfc: f4 7c     mov   a,$7c+x
0dfe: d0 33     bne   $0e33
0e00: e7 14     mov   a,($14+x)
0e02: 68 f9     cmp   a,#$f9
0e04: d0 2d     bne   $0e33
0e06: 3f 80 0b  call  $0b80
0e09: 3f 7e 0b  call  $0b7e
; vcmd f9
0e0c: d4 7d     mov   $7d+x,a
0e0e: 3f 7e 0b  call  $0b7e
0e11: d4 7c     mov   $7c+x,a
0e13: 3f 7e 0b  call  $0b7e
0e16: 60        clrc
0e17: 84 33     adc   a,$33
0e19: 95 b0 02  adc   a,$02b0+x
0e1c: 28 7f     and   a,#$7f
0e1e: d5 70 03  mov   $0370+x,a
0e21: 80        setc
0e22: b5 51 03  sbc   a,$0351+x
0e25: fb 7c     mov   y,$7c+x
0e27: 6d        push  y
0e28: ce        pop   x
0e29: 3f 3f 0e  call  $0e3f
0e2c: d5 60 03  mov   $0360+x,a
0e2f: dd        mov   a,y
0e30: d5 61 03  mov   $0361+x,a
0e33: 6f        ret

0e34: f5 51 03  mov   a,$0351+x
0e37: c4 08     mov   $08,a
0e39: f5 50 03  mov   a,$0350+x
0e3c: c4 07     mov   $07,a
0e3e: 6f        ret

0e3f: ed        notc
0e40: 6b 09     ror   $09
0e42: 10 03     bpl   $0e47
0e44: 48 ff     eor   a,#$ff
0e46: bc        inc   a
0e47: 8d 00     mov   y,#$00
0e49: 9e        div   ya,x
0e4a: 2d        push  a
0e4b: e8 00     mov   a,#$00
0e4d: 9e        div   ya,x
0e4e: ee        pop   y
0e4f: f8 28     mov   x,$28
0e51: f3 09 06  bbc7  $09,$0e5a
0e54: da 0b     movw  $0b,ya
0e56: ba 04     movw  ya,$04
0e58: 9a 0b     subw  ya,$0b
0e5a: 6f        ret

0e5b: f4 6c     mov   a,$6c+x
0e5d: f0 24     beq   $0e83
0e5f: 09 2b 06  or    ($06),($2b)
0e62: 9b 6c     dec   $6c+x
0e64: d0 0a     bne   $0e70
0e66: e8 00     mov   a,#$00
0e68: d5 d0 02  mov   $02d0+x,a
0e6b: f5 10 03  mov   a,$0310+x
0e6e: 2f 10     bra   $0e80
0e70: 60        clrc
0e71: f5 d0 02  mov   a,$02d0+x
0e74: 95 00 03  adc   a,$0300+x
0e77: d5 d0 02  mov   $02d0+x,a
0e7a: f5 d1 02  mov   a,$02d1+x
0e7d: 95 01 03  adc   a,$0301+x
0e80: d5 d1 02  mov   $02d1+x,a
0e83: fb 9d     mov   y,$9d+x
0e85: f0 23     beq   $0eaa
0e87: f5 a0 02  mov   a,$02a0+x
0e8a: de 9c 1b  cbne  $9c+x,$0ea8
0e8d: 09 2b 06  or    ($06),($2b)
0e90: f5 90 02  mov   a,$0290+x
0e93: 10 07     bpl   $0e9c
0e95: fc        inc   y
0e96: d0 04     bne   $0e9c
0e98: e8 80     mov   a,#$80
0e9a: 2f 04     bra   $0ea0
0e9c: 60        clrc
0e9d: 95 91 02  adc   a,$0291+x
0ea0: d5 90 02  mov   $0290+x,a
0ea3: 3f b2 10  call  $10b2
0ea6: 2f 07     bra   $0eaf
0ea8: bb 9c     inc   $9c+x
0eaa: e8 ff     mov   a,#$ff
0eac: 3f bd 10  call  $10bd
0eaf: f4 6d     mov   a,$6d+x
0eb1: f0 24     beq   $0ed7
0eb3: 09 2b 06  or    ($06),($2b)
0eb6: 9b 6d     dec   $6d+x
0eb8: d0 0a     bne   $0ec4
0eba: e8 00     mov   a,#$00
0ebc: d5 20 03  mov   $0320+x,a
0ebf: f5 40 03  mov   a,$0340+x
0ec2: 2f 10     bra   $0ed4
0ec4: 60        clrc
0ec5: f5 20 03  mov   a,$0320+x
0ec8: 95 30 03  adc   a,$0330+x
0ecb: d5 20 03  mov   $0320+x,a
0ece: f5 21 03  mov   a,$0321+x
0ed1: 95 31 03  adc   a,$0331+x
0ed4: d5 21 03  mov   $0321+x,a
0ed7: e4 2b     mov   a,$2b
0ed9: 24 06     and   a,$06
0edb: f0 46     beq   $0f23
0edd: f5 21 03  mov   a,$0321+x
0ee0: fd        mov   y,a
0ee1: f5 20 03  mov   a,$0320+x
0ee4: da 07     movw  $07,ya
0ee6: 7d        mov   a,x
0ee7: 9f        xcn   a
0ee8: 5c        lsr   a
0ee9: c4 09     mov   $09,a
0eeb: eb 08     mov   y,$08
0eed: f6 d0 10  mov   a,$10d0+y
0ef0: 80        setc
0ef1: b6 cf 10  sbc   a,$10cf+y
0ef4: eb 07     mov   y,$07
0ef6: cf        mul   ya
0ef7: dd        mov   a,y
0ef8: eb 08     mov   y,$08
0efa: 60        clrc
0efb: 96 cf 10  adc   a,$10cf+y
0efe: fd        mov   y,a
0eff: f5 11 03  mov   a,$0311+x
0f02: cf        mul   ya
0f03: f5 41 03  mov   a,$0341+x
0f06: 1c        asl   a
0f07: 13 09 01  bbc0  $09,$0f0b
0f0a: 1c        asl   a
0f0b: dd        mov   a,y
0f0c: 90 03     bcc   $0f11
0f0e: 48 ff     eor   a,#$ff
0f10: bc        inc   a
0f11: eb 09     mov   y,$09
0f13: 3f 24 0f  call  $0f24
0f16: 8d 14     mov   y,#$14
0f18: e8 00     mov   a,#$00
0f1a: 9a 07     subw  ya,$07
0f1c: da 07     movw  $07,ya
0f1e: ab 09     inc   $09
0f20: 33 09 c8  bbc1  $09,$0eeb
0f23: 6f        ret

0f24: 4d        push  x
0f25: 6d        push  y
0f26: 2d        push  a
0f27: dd        mov   a,y
0f28: 28 01     and   a,#$01
0f2a: c5 2c 01  mov   $012c,a
0f2d: 7d        mov   a,x
0f2e: 60        clrc
0f2f: 85 2c 01  adc   a,$012c
0f32: 5d        mov   x,a
0f33: ae        pop   a
0f34: d5 4c 06  mov   $064c+x,a
0f37: ee        pop   y
0f38: ce        pop   x
0f39: 6f        ret

0f3a: f4 40     mov   a,$40+x
0f3c: f0 61     beq   $0f9f
0f3e: 9b 40     dec   $40+x
0f40: f0 05     beq   $0f47
0f42: e8 02     mov   a,#$02
0f44: de 3f 58  cbne  $3f+x,$0f9f
0f47: e8 00     mov   a,#$00
0f49: c4 0e     mov   $0e,a
0f4b: f4 14     mov   a,$14+x
0f4d: fb 15     mov   y,$15+x
0f4f: da 0b     movw  $0b,ya
0f51: 8d 00     mov   y,#$00
0f53: f7 0b     mov   a,($0b)+y
0f55: f0 1e     beq   $0f75
0f57: 30 07     bmi   $0f60
0f59: fc        inc   y
0f5a: 30 40     bmi   $0f9c
0f5c: f7 0b     mov   a,($0b)+y
0f5e: 10 f9     bpl   $0f59
0f60: 68 c8     cmp   a,#$c8
0f62: f0 3b     beq   $0f9f
0f64: 68 ef     cmp   a,#$ef
0f66: f0 29     beq   $0f91
0f68: 68 e0     cmp   a,#$e0
0f6a: 90 30     bcc   $0f9c
0f6c: 6d        push  y
0f6d: fd        mov   y,a
0f6e: ae        pop   a
0f6f: 96 4e 10  adc   a,$104e+y
0f72: fd        mov   y,a
0f73: 2f de     bra   $0f53
0f75: e4 0e     mov   a,$0e
0f77: f0 23     beq   $0f9c
0f79: 8b 0e     dec   $0e
0f7b: d0 0a     bne   $0f87
0f7d: f5 31 02  mov   a,$0231+x
0f80: 2d        push  a
0f81: f5 30 02  mov   a,$0230+x
0f84: ee        pop   y
0f85: 2f c8     bra   $0f4f
0f87: f5 c1 02  mov   a,$02c1+x
0f8a: 2d        push  a
0f8b: f5 c0 02  mov   a,$02c0+x
0f8e: ee        pop   y
0f8f: 2f be     bra   $0f4f
0f91: fc        inc   y
0f92: f7 0b     mov   a,($0b)+y
0f94: 2d        push  a
0f95: fc        inc   y
0f96: f7 0b     mov   a,($0b)+y
0f98: fd        mov   y,a
0f99: ae        pop   a
0f9a: 2f b3     bra   $0f4f
0f9c: 3f 44 13  call  $1344
0f9f: f2 0a     clr7  $0a
0fa1: f4 7c     mov   a,$7c+x
0fa3: f0 2c     beq   $0fd1
0fa5: f4 7d     mov   a,$7d+x
0fa7: f0 04     beq   $0fad
0fa9: 9b 7d     dec   $7d+x
0fab: 2f 24     bra   $0fd1
0fad: e2 0a     set7  $0a
0faf: 9b 7c     dec   $7c+x
0fb1: d0 0b     bne   $0fbe
0fb3: f5 71 03  mov   a,$0371+x
0fb6: d5 50 03  mov   $0350+x,a
0fb9: f5 70 03  mov   a,$0370+x
0fbc: 2f 10     bra   $0fce
0fbe: 60        clrc
0fbf: f5 50 03  mov   a,$0350+x
0fc2: 95 60 03  adc   a,$0360+x
0fc5: d5 50 03  mov   $0350+x,a
0fc8: f5 51 03  mov   a,$0351+x
0fcb: 95 61 03  adc   a,$0361+x
0fce: d5 51 03  mov   $0351+x,a
0fd1: 3f 34 0e  call  $0e34
0fd4: f4 8d     mov   a,$8d+x
0fd6: f0 4c     beq   $1024
0fd8: f5 70 02  mov   a,$0270+x
0fdb: de 8c 44  cbne  $8c+x,$1022
0fde: f5 00 01  mov   a,$0100+x
0fe1: 75 71 02  cmp   a,$0271+x
0fe4: d0 05     bne   $0feb
0fe6: f5 81 02  mov   a,$0281+x
0fe9: 2f 0d     bra   $0ff8
0feb: 40        setp
0fec: bb 00     inc   $00+x
0fee: 20        clrp
0fef: fd        mov   y,a
0ff0: f0 02     beq   $0ff4
0ff2: f4 8d     mov   a,$8d+x
0ff4: 60        clrc
0ff5: 95 80 02  adc   a,$0280+x
0ff8: d4 8d     mov   $8d+x,a
0ffa: f5 60 02  mov   a,$0260+x
0ffd: 60        clrc
0ffe: 95 61 02  adc   a,$0261+x
1001: d5 60 02  mov   $0260+x,a
1004: c4 09     mov   $09,a
1006: 1c        asl   a
1007: 1c        asl   a
1008: 90 02     bcc   $100c
100a: 48 ff     eor   a,#$ff
100c: fd        mov   y,a
100d: f4 8d     mov   a,$8d+x
100f: 68 f1     cmp   a,#$f1
1011: 90 05     bcc   $1018
1013: 28 0f     and   a,#$0f
1015: cf        mul   ya
1016: 2f 04     bra   $101c
1018: cf        mul   ya
1019: dd        mov   a,y
101a: 8d 00     mov   y,#$00
101c: 3f 9c 10  call  $109c
101f: 5f 8e 08  jmp   $088e

1022: bb 8c     inc   $8c+x
1024: e3 0a f8  bbs7  $0a,$101f
1027: 6f        ret

1028: f2 0a     clr7  $0a
102a: f4 9d     mov   a,$9d+x
102c: f0 09     beq   $1037
102e: f5 a0 02  mov   a,$02a0+x
1031: de 9c 03  cbne  $9c+x,$1037
1034: 3f a4 10  call  $10a4
1037: f5 21 03  mov   a,$0321+x
103a: fd        mov   y,a
103b: f5 20 03  mov   a,$0320+x
103e: da 07     movw  $07,ya
1040: f4 6d     mov   a,$6d+x
1042: f0 0a     beq   $104e
1044: f5 31 03  mov   a,$0331+x
1047: fd        mov   y,a
1048: f5 30 03  mov   a,$0330+x
104b: 3f 84 10  call  $1084
104e: f3 0a 03  bbc7  $0a,$1054
1051: 3f e6 0e  call  $0ee6
1054: f2 0a     clr7  $0a
1056: 3f 34 0e  call  $0e34
1059: f4 7c     mov   a,$7c+x
105b: f0 0e     beq   $106b
105d: f4 7d     mov   a,$7d+x
105f: d0 0a     bne   $106b
1061: f5 61 03  mov   a,$0361+x
1064: fd        mov   y,a
1065: f5 60 03  mov   a,$0360+x
1068: 3f 84 10  call  $1084
106b: f4 8d     mov   a,$8d+x
106d: f0 b5     beq   $1024
106f: f5 70 02  mov   a,$0270+x
1072: de 8c af  cbne  $8c+x,$1024
1075: ec 3f 06  mov   y,$063f
1078: f5 61 02  mov   a,$0261+x
107b: cf        mul   ya
107c: dd        mov   a,y
107d: 60        clrc
107e: 95 60 02  adc   a,$0260+x
1081: 5f 04 10  jmp   $1004

1084: e2 0a     set7  $0a
1086: cb 09     mov   $09,y
1088: 3f 51 0e  call  $0e51
108b: 6d        push  y
108c: ec 3f 06  mov   y,$063f
108f: cf        mul   ya
1090: cb 0b     mov   $0b,y
1092: 8f 00 0c  mov   $0c,#$00
1095: ec 3f 06  mov   y,$063f
1098: ae        pop   a
1099: cf        mul   ya
109a: 7a 0b     addw  ya,$0b
109c: 3f 51 0e  call  $0e51
109f: 7a 07     addw  ya,$07
10a1: da 07     movw  $07,ya
10a3: 6f        ret

10a4: e2 0a     set7  $0a
10a6: ec 3f 06  mov   y,$063f
10a9: f5 91 02  mov   a,$0291+x
10ac: cf        mul   ya
10ad: dd        mov   a,y
10ae: 60        clrc
10af: 95 90 02  adc   a,$0290+x
10b2: 1c        asl   a
10b3: 90 02     bcc   $10b7
10b5: 48 ff     eor   a,#$ff
10b7: fb 9d     mov   y,$9d+x
10b9: cf        mul   ya
10ba: dd        mov   a,y
10bb: 48 ff     eor   a,#$ff
10bd: eb 50     mov   y,$50
10bf: cf        mul   ya
10c0: f5 10 02  mov   a,$0210+x
10c3: cf        mul   ya
10c4: f5 d1 02  mov   a,$02d1+x
10c7: cf        mul   ya
10c8: dd        mov   a,y
10c9: cf        mul   ya
10ca: dd        mov   a,y
10cb: d5 11 03  mov   $0311+x,a
10ce: 6f        ret

; pan volume balance table
10cf: db $00,$01,$03,$07,$0d,$15,$1e,$29
10d7: db $34,$42,$51,$5e,$67,$6e,$73,$77
10df: db $7a,$7c,$7d,$7e,$7f

; dsp register shadows
10e4: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
10ee: db $35,$37,$32,$2e,$2c,$29,$04,$2d,$2f,$2a

; vcmd dispatch table
10f8: dw $0b88  ; e0
10fa: dw $0be6  ; e1
10fc: dw $0c0a  ; e2
10fe: dw $0c23  ; e3
1100: dw $0c2f  ; e4
1102: dw $0c4a  ; e5
1104: dw $0c4f  ; e6
1106: dw $0c61  ; e7
1108: dw $0c80  ; e8
110a: dw $0ccf  ; e9
110c: dw $0cd2  ; ea
110e: dw $0cd6  ; eb
1110: dw $0ce2  ; ec
1112: dw $0d03  ; ed
1114: dw $0d15  ; ee
1116: dw $0d31  ; ef
1118: dw $0c3a  ; f0
111a: dw $0ce5  ; f1
111c: dw $0ce9  ; f2
111e: dw $0cff  ; f3
1120: dw $0d2e  ; f4
1122: dw $0d32  ; f5
1124: dw $0d7d  ; f6
1126: dw $0d84  ; f7
1128: dw $0d5c  ; f8
112a: dw $0e0c  ; f9
112c: dw $0df9  ; fa

; vcmd length table
112e: db $01,$01,$02,$03,$00,$01,$02,$01
1136: db $02,$01,$01,$03,$00,$01,$02,$03
113e: db $01,$03,$03,$00,$01,$03,$00,$03
1146: db $03,$03,$01

; pitch table
1149: dw $085f
114b: dw $08de
114d: dw $0965
114f: dw $09f4
1151: dw $0a8c
1153: dw $0b2c
1155: dw $0bd6
1157: dw $0c8b
1159: dw $0d4a
115b: dw $0e14
115d: dw $0eea
115f: dw $0fcd
1161: dw $10be

1163: db "*Ver S0.90*"

116e: f5 00 04  mov   a,$0400+x
1171: d0 0a     bne   $117d
1173: e5 49 06  mov   a,$0649
1176: f0 05     beq   $117d
1178: 3f 1b 15  call  $151b
117b: 2f 5d     bra   $11da
117d: 3f 89 14  call  $1489
1180: 9b 3f     dec   $3f+x
1182: d0 56     bne   $11da
1184: 3f 7e 0b  call  $0b7e
1187: d0 0e     bne   $1197
1189: f5 00 04  mov   a,$0400+x
118c: f0 06     beq   $1194
118e: 4d        push  x
118f: 3f 4f 15  call  $154f
1192: ce        pop   x
1193: 6f        ret

1194: 5f 0c 0a  jmp   $0a0c

1197: 30 20     bmi   $11b9
1199: d5 00 02  mov   $0200+x,a
119c: 3f 7e 0b  call  $0b7e
119f: 30 18     bmi   $11b9
11a1: 2d        push  a
11a2: 9f        xcn   a
11a3: 28 07     and   a,#$07
11a5: fd        mov   y,a
11a6: f6 00 20  mov   a,$2000+y
11a9: d5 01 02  mov   $0201+x,a
11ac: ae        pop   a
11ad: 28 0f     and   a,#$0f
11af: fd        mov   y,a
11b0: f6 08 20  mov   a,$2008+y
11b3: d5 10 02  mov   $0210+x,a
11b6: 3f 7e 0b  call  $0b7e
11b9: 68 e0     cmp   a,#$e0
11bb: 90 05     bcc   $11c2
11bd: 3f 68 0b  call  $0b68
11c0: 2f c2     bra   $1184
11c2: 3f 15 08  call  $0815
11c5: 3f 12 13  call  $1312
11c8: f5 00 02  mov   a,$0200+x
11cb: d4 3f     mov   $3f+x,a
11cd: fd        mov   y,a
11ce: f5 01 02  mov   a,$0201+x
11d1: cf        mul   ya
11d2: dd        mov   a,y
11d3: d0 01     bne   $11d6
11d5: bc        inc   a
11d6: d4 40     mov   $40+x,a
11d8: 2f 03     bra   $11dd
11da: 3f 3a 0f  call  $0f3a
11dd: 5f fc 0d  jmp   $0dfc

11e0: dw $12b1
11e2: dw $12b7
11e4: dw $12c4
11e6: dw $12cf
11e8: dw $12d5
11ea: dw $1290
11ec: dw $12a6
11ee: dw $1286
11f0: dw $1273
11f2: dw $1277
11f4: dw $126d
11f6: dw $1244
11f8: dw $124e
11fa: dw $1258
11fc: dw $120a
11fe: dw $1200

1200: d5 5c 06  mov   $065c+x,a
1203: 3f 7e 0b  call  $0b7e
1206: d5 5d 06  mov   $065d+x,a
1209: 6f        ret

120a: 2d        push  a
120b: e5 81 06  mov   a,$0681
120e: f0 1f     beq   $122f
1210: ae        pop   a
1211: 30 03     bmi   $1216
1213: 48 ff     eor   a,#$ff
1215: bc        inc   a
1216: c5 7c 06  mov   $067c,a
1219: 8d 0c     mov   y,#$0c
121b: 3f 19 09  call  $0919
121e: 3f 7e 0b  call  $0b7e
1221: 30 03     bmi   $1226
1223: 48 ff     eor   a,#$ff
1225: bc        inc   a
1226: c5 7d 06  mov   $067d,a
1229: 8d 1c     mov   y,#$1c
122b: 3f 19 09  call  $0919
122e: 6f        ret

122f: ae        pop   a
1230: c5 7c 06  mov   $067c,a
1233: 8d 0c     mov   y,#$0c
1235: 3f 19 09  call  $0919
1238: 3f 7e 0b  call  $0b7e
123b: c5 7d 06  mov   $067d,a
123e: 8d 1c     mov   y,#$1c
1240: 3f 19 09  call  $0919
1243: 6f        ret

1244: f5 40 15  mov   a,$1540+x
1247: 05 2d 00  or    a,$002d
124a: c5 2d 00  mov   $002d,a
124d: 6f        ret

124e: e5 2d 00  mov   a,$002d
1251: 35 3f 15  and   a,$153f+x
1254: c5 2d 00  mov   $002d,a
1257: 6f        ret

1258: c5 89 06  mov   $0689,a
125b: 2d        push  a
125c: e5 2c 00  mov   a,$002c
125f: 28 e0     and   a,#$e0
1261: c5 2c 01  mov   $012c,a
1264: ae        pop   a
1265: 60        clrc
1266: 85 2c 01  adc   a,$012c
1269: c5 2c 00  mov   $002c,a
126c: 6f        ret

126d: e8 01     mov   a,#$01
126f: c5 4a 06  mov   $064a,a
1272: 6f        ret

1273: d5 f0 03  mov   $03f0+x,a
1276: 6f        ret

1277: 2d        push  a
1278: f5 f0 03  mov   a,$03f0+x
127b: 9c        dec   a
127c: d5 f0 03  mov   $03f0+x,a
127f: d0 04     bne   $1285
1281: ae        pop   a
1282: 5f 7e 0b  jmp   $0b7e

1285: ae        pop   a
1286: 2d        push  a
1287: 3f 7e 0b  call  $0b7e
128a: d4 15     mov   $15+x,a
128c: ae        pop   a
128d: d4 14     mov   $14+x,a
128f: 6f        ret

1290: 2d        push  a
1291: 3f 7e 0b  call  $0b7e
1294: 2d        push  a
1295: f4 14     mov   a,$14+x
1297: d5 e0 03  mov   $03e0+x,a
129a: f4 15     mov   a,$15+x
129c: d5 e1 03  mov   $03e1+x,a
129f: ae        pop   a
12a0: d4 15     mov   $15+x,a
12a2: ae        pop   a
12a3: d4 14     mov   $14+x,a
12a5: 6f        ret

12a6: f5 e0 03  mov   a,$03e0+x
12a9: d4 14     mov   $14+x,a
12ab: f5 e1 03  mov   a,$03e1+x
12ae: d4 15     mov   $15+x,a
12b0: 6f        ret

12b1: 28 0f     and   a,#$0f
12b3: d5 80 03  mov   $0380+x,a
12b6: 6f        ret

12b7: 1c        asl   a
12b8: 1c        asl   a
12b9: 1c        asl   a
12ba: 1c        asl   a
12bb: 28 70     and   a,#$70
12bd: 60        clrc
12be: 88 80     adc   a,#$80
12c0: d5 90 03  mov   $0390+x,a
12c3: 6f        ret

12c4: 1c        asl   a
12c5: 1c        asl   a
12c6: 1c        asl   a
12c7: 1c        asl   a
12c8: 1c        asl   a
12c9: 28 e0     and   a,#$e0
12cb: d5 a0 03  mov   $03a0+x,a
12ce: 6f        ret

12cf: 28 1f     and   a,#$1f
12d1: d5 b0 03  mov   $03b0+x,a
12d4: 6f        ret

12d5: 28 1f     and   a,#$1f
12d7: d5 c0 03  mov   $03c0+x,a
12da: 6f        ret

12db: 2d        push  a
12dc: 4d        push  x
12dd: 6d        push  y
12de: f5 11 02  mov   a,$0211+x
12e1: 8d 06     mov   y,#$06
12e3: cf        mul   ya
12e4: 60        clrc
12e5: 88 01     adc   a,#$01
12e7: fd        mov   y,a
12e8: f6 00 21  mov   a,$2100+y
12eb: 28 0f     and   a,#$0f
12ed: d5 80 03  mov   $0380+x,a
12f0: f6 00 21  mov   a,$2100+y
12f3: 28 f0     and   a,#$f0
12f5: d5 90 03  mov   $0390+x,a
12f8: f6 01 21  mov   a,$2101+y
12fb: 28 1f     and   a,#$1f
12fd: d5 a0 03  mov   $03a0+x,a
1300: f6 01 21  mov   a,$2101+y
1303: 28 e0     and   a,#$e0
1305: d5 b0 03  mov   $03b0+x,a
1308: d5 c0 03  mov   $03c0+x,a
130b: 3f 12 13  call  $1312
130e: ee        pop   y
130f: ce        pop   x
1310: ae        pop   a
1311: 6f        ret

1312: f5 d0 03  mov   a,$03d0+x
1315: 68 01     cmp   a,#$01
1317: f0 f8     beq   $1311
1319: f5 80 03  mov   a,$0380+x
131c: 60        clrc
131d: 95 90 03  adc   a,$0390+x
1320: fd        mov   y,a
1321: 7d        mov   a,x
1322: 1c        asl   a
1323: 1c        asl   a
1324: 1c        asl   a
1325: 60        clrc
1326: 88 05     adc   a,#$05
1328: c5 f2 00  mov   $00f2,a
132b: cc f3 00  mov   $00f3,y
132e: f5 a0 03  mov   a,$03a0+x
1331: 60        clrc
1332: 95 b0 03  adc   a,$03b0+x
1335: fd        mov   y,a
1336: 7d        mov   a,x
1337: 1c        asl   a
1338: 1c        asl   a
1339: 1c        asl   a
133a: 60        clrc
133b: 88 06     adc   a,#$06
133d: c5 f2 00  mov   $00f2,a
1340: cc f3 00  mov   $00f3,y
1343: 6f        ret

1344: f5 d0 03  mov   a,$03d0+x
1347: 68 01     cmp   a,#$01
1349: f0 f8     beq   $1343
134b: f5 80 03  mov   a,$0380+x
134e: 60        clrc
134f: 95 90 03  adc   a,$0390+x
1352: fd        mov   y,a
1353: 7d        mov   a,x
1354: 1c        asl   a
1355: 1c        asl   a
1356: 1c        asl   a
1357: 60        clrc
1358: 88 05     adc   a,#$05
135a: c5 f2 00  mov   $00f2,a
135d: cc f3 00  mov   $00f3,y
1360: 7d        mov   a,x
1361: 1c        asl   a
1362: 1c        asl   a
1363: 1c        asl   a
1364: 60        clrc
1365: 88 06     adc   a,#$06
1367: c5 f2 00  mov   $00f2,a
136a: e5 f3 00  mov   a,$00f3
136d: 28 e0     and   a,#$e0
136f: 60        clrc
1370: 95 c0 03  adc   a,$03c0+x
1373: fd        mov   y,a
1374: 7d        mov   a,x
1375: 1c        asl   a
1376: 1c        asl   a
1377: 1c        asl   a
1378: 60        clrc
1379: 88 06     adc   a,#$06
137b: c5 f2 00  mov   $00f2,a
137e: cc f3 00  mov   $00f3,y
1381: 6f        ret

1382: 2d        push  a
1383: 4d        push  x
1384: 6d        push  y
1385: e5 e3 02  mov   a,$02e3
1388: c5 e7 02  mov   $02e7,a
138b: e5 e3 02  mov   a,$02e3
138e: 28 80     and   a,#$80
1390: f0 05     beq   $1397
1392: 3f 1a 14  call  $141a
1395: 2f 73     bra   $140a
1397: e5 e3 02  mov   a,$02e3
139a: 28 40     and   a,#$40
139c: f0 19     beq   $13b7
139e: e8 01     mov   a,#$01
13a0: c5 45 06  mov   $0645,a
13a3: e5 e3 02  mov   a,$02e3
13a6: 28 03     and   a,#$03
13a8: fd        mov   y,a
13a9: f6 12 14  mov   a,$1412+y
13ac: c5 46 06  mov   $0646,a
13af: f6 16 14  mov   a,$1416+y
13b2: c5 47 06  mov   $0647,a
13b5: 2f 03     bra   $13ba
13b7: c5 45 06  mov   $0645,a
13ba: e5 e3 02  mov   a,$02e3
13bd: 28 10     and   a,#$10
13bf: f0 07     beq   $13c8
13c1: e8 01     mov   a,#$01
13c3: c5 48 06  mov   $0648,a
13c6: 2f 05     bra   $13cd
13c8: e8 00     mov   a,#$00
13ca: c5 48 06  mov   $0648,a
13cd: e5 4a 06  mov   a,$064a
13d0: f0 13     beq   $13e5
13d2: e8 20     mov   a,#$20
13d4: 05 e7 02  or    a,$02e7
13d7: c5 e7 02  mov   $02e7,a
13da: c5 f7 00  mov   $00f7,a
13dd: c5 e3 02  mov   $02e3,a
13e0: 65 e7 02  cmp   a,$02e7
13e3: d0 f2     bne   $13d7
13e5: e5 e3 02  mov   a,$02e3
13e8: 28 04     and   a,#$04
13ea: f0 02     beq   $13ee
13ec: e8 01     mov   a,#$01
13ee: c5 81 06  mov   $0681,a
13f1: e5 e3 02  mov   a,$02e3
13f4: 28 03     and   a,#$03
13f6: fd        mov   y,a
13f7: f6 0e 14  mov   a,$140e+y
13fa: fd        mov   y,a
13fb: e5 e3 02  mov   a,$02e3
13fe: 28 08     and   a,#$08
1400: f0 02     beq   $1404
1402: e8 01     mov   a,#$01
1404: c5 82 06  mov   $0682,a
1407: cc 83 06  mov   $0683,y
140a: ee        pop   y
140b: ce        pop   x
140c: ae        pop   a
140d: 6f        ret

140e: 01        tcall 0
140f: 02 04     set0  $04
1411: 00        nop
1412: 09 08 06  or    ($06),($08)
1415: 04 09     or    a,$09
1417: 08 06     or    a,#$06
1419: 04 e8     or    a,$e8
141b: aa c5 f4  mov1  c,$14c5,7
141e: 00        nop
141f: e8 bb     mov   a,#$bb
1421: c5 f5 00  mov   $00f5,a
1424: e5 f4 00  mov   a,$00f4
1427: 68 cc     cmp   a,#$cc
1429: d0 f9     bne   $1424
142b: 2f 20     bra   $144d
142d: ec f4 00  mov   y,$00f4
1430: d0 fb     bne   $142d
1432: 5e f4 00  cmp   y,$00f4
1435: d0 0f     bne   $1446
1437: e5 f5 00  mov   a,$00f5
143a: cc f4 00  mov   $00f4,y
143d: d7 0f     mov   ($0f)+y,a
143f: fc        inc   y
1440: d0 f0     bne   $1432
1442: ab 10     inc   $10
1444: 2f ec     bra   $1432
1446: 10 ea     bpl   $1432
1448: 5e f4 00  cmp   y,$00f4
144b: 10 e5     bpl   $1432
144d: e5 f6 00  mov   a,$00f6
1450: ec f7 00  mov   y,$00f7
1453: da 0f     movw  $0f,ya
1455: ec f4 00  mov   y,$00f4
1458: e5 f5 00  mov   a,$00f5
145b: cc f4 00  mov   $00f4,y
145e: d0 cd     bne   $142d
1460: 6f        ret

1461: e8 01     mov   a,#$01
1463: c5 4a 06  mov   $064a,a
1466: cd 00     mov   x,#$00
1468: f5 00 04  mov   a,$0400+x
146b: d0 0d     bne   $147a
146d: e8 00     mov   a,#$00
146f: d5 14 00  mov   $0014+x,a
1472: d5 15 00  mov   $0015+x,a
1475: 3f 1b 15  call  $151b
1478: 2f 08     bra   $1482
147a: e8 00     mov   a,#$00
147c: d5 5c 00  mov   $005c+x,a
147f: d5 5d 00  mov   $005d+x,a
1482: 3d        inc   x
1483: 3d        inc   x
1484: c8 10     cmp   x,#$10
1486: d0 e0     bne   $1468
1488: 6f        ret

1489: e5 45 06  mov   a,$0645
148c: f0 33     beq   $14c1
148e: f5 00 04  mov   a,$0400+x
1491: d0 2e     bne   $14c1
1493: f5 21 06  mov   a,$0621+x
1496: 8d 00     mov   y,#$00
1498: 4d        push  x
1499: cd 0a     mov   x,#$0a
149b: 9e        div   ya,x
149c: ec 46 06  mov   y,$0646
149f: cf        mul   ya
14a0: ce        pop   x
14a1: d5 d1 02  mov   $02d1+x,a
14a4: e4 eb     mov   a,$eb
14a6: 8d 00     mov   y,#$00
14a8: 4d        push  x
14a9: cd 0a     mov   x,#$0a
14ab: 9e        div   ya,x
14ac: ec 47 06  mov   y,$0647
14af: cf        mul   ya
14b0: ce        pop   x
14b1: c4 35     mov   $35,a
14b3: e4 ed     mov   a,$ed
14b5: 4d        push  x
14b6: cd 0a     mov   x,#$0a
14b8: 9e        div   ya,x
14b9: ec 47 06  mov   y,$0647
14bc: cf        mul   ya
14bd: ce        pop   x
14be: c4 37     mov   $37,a
14c0: 6f        ret

14c1: f5 21 06  mov   a,$0621+x
14c4: d5 d1 02  mov   $02d1+x,a
14c7: ba ea     movw  ya,$ea
14c9: da 34     movw  $34,ya
14cb: ba ec     movw  ya,$ec
14cd: da 36     movw  $36,ya
14cf: 6f        ret

14d0: cc 2c 01  mov   $012c,y
14d3: e8 00     mov   a,#$00
14d5: c5 42 06  mov   $0642,a
14d8: c5 43 06  mov   $0643,a
14db: c5 44 06  mov   $0644,a
14de: e4 54     mov   a,$54
14e0: ec 2c 01  mov   y,$012c
14e3: cf        mul   ya
14e4: 60        clrc
14e5: 85 3f 06  adc   a,$063f
14e8: c5 3f 06  mov   $063f,a
14eb: 90 05     bcc   $14f2
14ed: e8 01     mov   a,#$01
14ef: c5 42 06  mov   $0642,a
14f2: e4 bf     mov   a,$bf
14f4: ec 2c 01  mov   y,$012c
14f7: cf        mul   ya
14f8: 60        clrc
14f9: 85 40 06  adc   a,$0640
14fc: c5 40 06  mov   $0640,a
14ff: 90 05     bcc   $1506
1501: e8 01     mov   a,#$01
1503: c5 43 06  mov   $0643,a
1506: e4 e9     mov   a,$e9
1508: ec 2c 01  mov   y,$012c
150b: cf        mul   ya
150c: 60        clrc
150d: 85 41 06  adc   a,$0641
1510: c5 41 06  mov   $0641,a
1513: 90 05     bcc   $151a
1515: e8 01     mov   a,#$01
1517: c5 44 06  mov   $0644,a
151a: 6f        ret

151b: 7d        mov   a,x
151c: 1c        asl   a
151d: 1c        asl   a
151e: 1c        asl   a
151f: fd        mov   y,a
1520: e8 00     mov   a,#$00
1522: 3f 19 09  call  $0919
1525: 7d        mov   a,x
1526: 1c        asl   a
1527: 1c        asl   a
1528: 1c        asl   a
1529: bc        inc   a
152a: fd        mov   y,a
152b: e8 00     mov   a,#$00
152d: 3f 19 09  call  $0919
1530: 8d 5c     mov   y,#$5c
1532: cc f2 00  mov   $00f2,y
1535: e5 f3 00  mov   a,$00f3
1538: 15 40 15  or    a,$1540+x
153b: 3f 19 09  call  $0919
153e: 6f        ret

153f: db $fe,$01,$fd,$02,$fb,$04,$f7,$08
1547: db $ef,$10,$df,$20,$bf,$40,$7f,$80

154f: 3f 30 15  call  $1530
1552: f5 5c 00  mov   a,$005c+x
1555: d5 14 00  mov   $0014+x,a
1558: f5 5d 00  mov   a,$005d+x
155b: d5 15 00  mov   $0015+x,a
155e: e8 00     mov   a,#$00
1560: d5 00 04  mov   $0400+x,a
1563: d5 5c 00  mov   $005c+x,a
1566: d5 5d 00  mov   $005d+x,a
1569: 3f 2d 17  call  $172d
156c: 3f db 18  call  $18db
156f: 6f        ret

1570: f5 e0 03  mov   a,$03e0+x
1573: d5 60 05  mov   $0560+x,a
1576: f5 e1 03  mov   a,$03e1+x
1579: d5 61 05  mov   $0561+x,a
157c: f5 f0 03  mov   a,$03f0+x
157f: d5 70 05  mov   $0570+x,a
1582: f5 f1 03  mov   a,$03f1+x
1585: d5 71 05  mov   $0571+x,a
1588: e4 2d     mov   a,$2d
158a: c5 80 06  mov   $0680,a
158d: e5 89 06  mov   a,$0689
1590: c5 8a 06  mov   $068a,a
1593: e5 7c 06  mov   a,$067c
1596: c5 7e 06  mov   $067e,a
1599: e5 7d 06  mov   a,$067d
159c: c5 7f 06  mov   $067f,a
159f: f5 5c 06  mov   a,$065c+x
15a2: d5 6c 06  mov   $066c+x,a
15a5: f5 5d 06  mov   a,$065d+x
15a8: d5 6d 06  mov   $066d+x,a
15ab: f5 80 03  mov   a,$0380+x
15ae: d5 d0 05  mov   $05d0+x,a
15b1: f5 90 03  mov   a,$0390+x
15b4: d5 e0 05  mov   $05e0+x,a
15b7: f5 a0 03  mov   a,$03a0+x
15ba: d5 f0 05  mov   $05f0+x,a
15bd: f5 b0 03  mov   a,$03b0+x
15c0: d5 00 06  mov   $0600+x,a
15c3: f5 c0 03  mov   a,$03c0+x
15c6: d5 10 06  mov   $0610+x,a
15c9: f5 7c 00  mov   a,$007c+x
15cc: d5 c8 00  mov   $00c8+x,a
15cf: f5 3f 00  mov   a,$003f+x
15d2: d5 d8 00  mov   $00d8+x,a
15d5: f5 00 02  mov   a,$0200+x
15d8: d5 10 04  mov   $0410+x,a
15db: f5 10 02  mov   a,$0210+x
15de: d5 20 04  mov   $0420+x,a
15e1: f5 50 03  mov   a,$0350+x
15e4: d5 30 04  mov   $0430+x,a
15e7: f5 70 03  mov   a,$0370+x
15ea: d5 40 04  mov   $0440+x,a
15ed: f5 70 02  mov   a,$0270+x
15f0: d5 50 04  mov   $0450+x,a
15f3: f5 90 02  mov   a,$0290+x
15f6: d5 60 04  mov   $0460+x,a
15f9: f5 50 02  mov   a,$0250+x
15fc: d5 70 04  mov   $0470+x,a
15ff: f5 40 02  mov   a,$0240+x
1602: d5 80 04  mov   $0480+x,a
1605: f5 60 02  mov   a,$0260+x
1608: d5 90 04  mov   $0490+x,a
160b: f5 8c 00  mov   a,$008c+x
160e: d5 a0 04  mov   $04a0+x,a
1611: f5 9c 00  mov   a,$009c+x
1614: d5 b0 04  mov   $04b0+x,a
1617: f5 60 03  mov   a,$0360+x
161a: d5 c0 04  mov   $04c0+x,a
161d: f5 20 03  mov   a,$0320+x
1620: d5 d0 04  mov   $04d0+x,a
1623: f5 30 03  mov   a,$0330+x
1626: d5 e0 04  mov   $04e0+x,a
1629: f5 40 03  mov   a,$0340+x
162c: d5 f0 04  mov   $04f0+x,a
162f: f5 20 06  mov   a,$0620+x
1632: d5 00 05  mov   $0500+x,a
1635: f5 00 03  mov   a,$0300+x
1638: d5 10 05  mov   $0510+x,a
163b: f5 10 03  mov   a,$0310+x
163e: d5 20 05  mov   $0520+x,a
1641: f5 6c 00  mov   a,$006c+x
1644: d5 30 05  mov   $0530+x,a
1647: f5 80 02  mov   a,$0280+x
164a: d5 40 05  mov   $0540+x,a
164d: f5 a0 02  mov   a,$02a0+x
1650: d5 50 05  mov   $0550+x,a
1653: f5 20 02  mov   a,$0220+x
1656: d5 80 05  mov   $0580+x,a
1659: f5 00 01  mov   a,$0100+x
165c: d5 90 05  mov   $0590+x,a
165f: f5 b0 02  mov   a,$02b0+x
1662: d5 a0 05  mov   $05a0+x,a
1665: f5 7d 00  mov   a,$007d+x
1668: d5 c9 00  mov   $00c9+x,a
166b: f5 40 00  mov   a,$0040+x
166e: d5 d9 00  mov   $00d9+x,a
1671: f5 01 02  mov   a,$0201+x
1674: d5 11 04  mov   $0411+x,a
1677: f5 11 02  mov   a,$0211+x
167a: d5 21 04  mov   $0421+x,a
167d: f5 51 03  mov   a,$0351+x
1680: d5 31 04  mov   $0431+x,a
1683: f5 71 03  mov   a,$0371+x
1686: d5 41 04  mov   $0441+x,a
1689: f5 71 02  mov   a,$0271+x
168c: d5 51 04  mov   $0451+x,a
168f: f5 91 02  mov   a,$0291+x
1692: d5 61 04  mov   $0461+x,a
1695: f5 51 02  mov   a,$0251+x
1698: d5 71 04  mov   $0471+x,a
169b: f5 41 02  mov   a,$0241+x
169e: d5 81 04  mov   $0481+x,a
16a1: f5 61 02  mov   a,$0261+x
16a4: d5 91 04  mov   $0491+x,a
16a7: f5 8d 00  mov   a,$008d+x
16aa: d5 a1 04  mov   $04a1+x,a
16ad: f5 9d 00  mov   a,$009d+x
16b0: d5 b1 04  mov   $04b1+x,a
16b3: f5 61 03  mov   a,$0361+x
16b6: d5 c1 04  mov   $04c1+x,a
16b9: f5 21 03  mov   a,$0321+x
16bc: d5 d1 04  mov   $04d1+x,a
16bf: f5 31 03  mov   a,$0331+x
16c2: d5 e1 04  mov   $04e1+x,a
16c5: f5 41 03  mov   a,$0341+x
16c8: d5 f1 04  mov   $04f1+x,a
16cb: f5 21 06  mov   a,$0621+x
16ce: d5 01 05  mov   $0501+x,a
16d1: f5 01 03  mov   a,$0301+x
16d4: d5 11 05  mov   $0511+x,a
16d7: f5 11 03  mov   a,$0311+x
16da: d5 21 05  mov   $0521+x,a
16dd: f5 6d 00  mov   a,$006d+x
16e0: d5 31 05  mov   $0531+x,a
16e3: f5 81 02  mov   a,$0281+x
16e6: d5 41 05  mov   $0541+x,a
16e9: f5 a1 02  mov   a,$02a1+x
16ec: d5 51 05  mov   $0551+x,a
16ef: f5 21 02  mov   a,$0221+x
16f2: d5 81 05  mov   $0581+x,a
16f5: f5 01 01  mov   a,$0101+x
16f8: d5 91 05  mov   $0591+x,a
16fb: f5 b1 02  mov   a,$02b1+x
16fe: d5 a1 05  mov   $05a1+x,a
1701: 6f        ret

1702: 6d        push  y
1703: e8 0a     mov   a,#$0a
1705: 3f e6 0b  call  $0be6
1708: e8 00     mov   a,#$00
170a: d5 71 03  mov   $0371+x,a
170d: d5 b0 02  mov   $02b0+x,a
1710: d5 5c 06  mov   $065c+x,a
1713: d5 5d 06  mov   $065d+x,a
1716: 3f 2f 0c  call  $0c2f
1719: 3f e2 0c  call  $0ce2
171c: 3f ff 0c  call  $0cff
171f: 3f 1b 15  call  $151b
1722: f5 3f 15  mov   a,$153f+x
1725: 25 2e 00  and   a,$002e
1728: c5 2e 00  mov   $002e,a
172b: ee        pop   y
172c: 6f        ret

172d: f5 60 05  mov   a,$0560+x
1730: d5 e0 03  mov   $03e0+x,a
1733: f5 61 05  mov   a,$0561+x
1736: d5 e1 03  mov   $03e1+x,a
1739: f5 70 05  mov   a,$0570+x
173c: d5 f0 03  mov   $03f0+x,a
173f: f5 71 05  mov   a,$0571+x
1742: d5 f1 03  mov   $03f1+x,a
1745: e5 80 06  mov   a,$0680
1748: c4 2d     mov   $2d,a
174a: e5 8a 06  mov   a,$068a
174d: 3f 58 12  call  $1258
1750: e5 7e 06  mov   a,$067e
1753: c5 7c 06  mov   $067c,a
1756: 8d 0c     mov   y,#$0c
1758: 3f 19 09  call  $0919
175b: e5 7f 06  mov   a,$067f
175e: c5 7d 06  mov   $067d,a
1761: 8d 1c     mov   y,#$1c
1763: 3f 19 09  call  $0919
1766: f5 6c 06  mov   a,$066c+x
1769: d5 5c 06  mov   $065c+x,a
176c: f5 6d 06  mov   a,$066d+x
176f: d5 5d 06  mov   $065d+x,a
1772: 3f 09 08  call  $0809
1775: f5 21 04  mov   a,$0421+x
1778: 3f 88 0b  call  $0b88
177b: f5 d0 05  mov   a,$05d0+x
177e: d5 80 03  mov   $0380+x,a
1781: f5 e0 05  mov   a,$05e0+x
1784: d5 90 03  mov   $0390+x,a
1787: f5 f0 05  mov   a,$05f0+x
178a: d5 a0 03  mov   $03a0+x,a
178d: f5 00 06  mov   a,$0600+x
1790: d5 b0 03  mov   $03b0+x,a
1793: f5 10 06  mov   a,$0610+x
1796: d5 c0 03  mov   $03c0+x,a
1799: 3f 19 13  call  $1319
179c: f5 c8 00  mov   a,$00c8+x
179f: d5 7c 00  mov   $007c+x,a
17a2: f5 d8 00  mov   a,$00d8+x
17a5: d5 3f 00  mov   $003f+x,a
17a8: f5 10 04  mov   a,$0410+x
17ab: d5 00 02  mov   $0200+x,a
17ae: f5 20 04  mov   a,$0420+x
17b1: d5 10 02  mov   $0210+x,a
17b4: f5 30 04  mov   a,$0430+x
17b7: d5 50 03  mov   $0350+x,a
17ba: f5 40 04  mov   a,$0440+x
17bd: d5 70 03  mov   $0370+x,a
17c0: f5 50 04  mov   a,$0450+x
17c3: d5 70 02  mov   $0270+x,a
17c6: f5 60 04  mov   a,$0460+x
17c9: d5 90 02  mov   $0290+x,a
17cc: f5 70 04  mov   a,$0470+x
17cf: d5 50 02  mov   $0250+x,a
17d2: f5 80 04  mov   a,$0480+x
17d5: d5 40 02  mov   $0240+x,a
17d8: f5 90 04  mov   a,$0490+x
17db: d5 60 02  mov   $0260+x,a
17de: f5 a0 04  mov   a,$04a0+x
17e1: d5 8c 00  mov   $008c+x,a
17e4: f5 b0 04  mov   a,$04b0+x
17e7: d5 9c 00  mov   $009c+x,a
17ea: f5 c0 04  mov   a,$04c0+x
17ed: d5 60 03  mov   $0360+x,a
17f0: f5 d0 04  mov   a,$04d0+x
17f3: d5 20 03  mov   $0320+x,a
17f6: f5 e0 04  mov   a,$04e0+x
17f9: d5 30 03  mov   $0330+x,a
17fc: f5 f0 04  mov   a,$04f0+x
17ff: d5 40 03  mov   $0340+x,a
1802: f5 00 05  mov   a,$0500+x
1805: d5 d0 02  mov   $02d0+x,a
1808: d5 20 06  mov   $0620+x,a
180b: f5 10 05  mov   a,$0510+x
180e: d5 00 03  mov   $0300+x,a
1811: f5 20 05  mov   a,$0520+x
1814: d5 10 03  mov   $0310+x,a
1817: f5 30 05  mov   a,$0530+x
181a: d5 6c 00  mov   $006c+x,a
181d: f5 40 05  mov   a,$0540+x
1820: d5 80 02  mov   $0280+x,a
1823: f5 50 05  mov   a,$0550+x
1826: d5 a0 02  mov   $02a0+x,a
1829: f5 90 05  mov   a,$0590+x
182c: d5 00 01  mov   $0100+x,a
182f: f5 a0 05  mov   a,$05a0+x
1832: d5 b0 02  mov   $02b0+x,a
1835: f5 c9 00  mov   a,$00c9+x
1838: d5 7d 00  mov   $007d+x,a
183b: f5 d9 00  mov   a,$00d9+x
183e: d5 40 00  mov   $0040+x,a
1841: f5 11 04  mov   a,$0411+x
1844: d5 01 02  mov   $0201+x,a
1847: f5 21 04  mov   a,$0421+x
184a: d5 11 02  mov   $0211+x,a
184d: f5 31 04  mov   a,$0431+x
1850: d5 51 03  mov   $0351+x,a
1853: f5 41 04  mov   a,$0441+x
1856: d5 71 03  mov   $0371+x,a
1859: f5 51 04  mov   a,$0451+x
185c: d5 71 02  mov   $0271+x,a
185f: f5 61 04  mov   a,$0461+x
1862: d5 91 02  mov   $0291+x,a
1865: f5 71 04  mov   a,$0471+x
1868: d5 51 02  mov   $0251+x,a
186b: f5 81 04  mov   a,$0481+x
186e: d5 41 02  mov   $0241+x,a
1871: f5 91 04  mov   a,$0491+x
1874: d5 61 02  mov   $0261+x,a
1877: f5 a1 04  mov   a,$04a1+x
187a: d5 8d 00  mov   $008d+x,a
187d: f5 b1 04  mov   a,$04b1+x
1880: d5 9d 00  mov   $009d+x,a
1883: f5 c1 04  mov   a,$04c1+x
1886: d5 61 03  mov   $0361+x,a
1889: f5 d1 04  mov   a,$04d1+x
188c: d5 21 03  mov   $0321+x,a
188f: f5 e1 04  mov   a,$04e1+x
1892: d5 31 03  mov   $0331+x,a
1895: f5 f1 04  mov   a,$04f1+x
1898: d5 41 03  mov   $0341+x,a
189b: f5 01 05  mov   a,$0501+x
189e: d5 d1 02  mov   $02d1+x,a
18a1: d5 21 06  mov   $0621+x,a
18a4: f5 11 05  mov   a,$0511+x
18a7: d5 01 03  mov   $0301+x,a
18aa: f5 21 05  mov   a,$0521+x
18ad: d5 11 03  mov   $0311+x,a
18b0: f5 31 05  mov   a,$0531+x
18b3: d5 6d 00  mov   $006d+x,a
18b6: f5 41 05  mov   a,$0541+x
18b9: d5 81 02  mov   $0281+x,a
18bc: f5 51 05  mov   a,$0551+x
18bf: d5 a1 02  mov   $02a1+x,a
18c2: f5 91 05  mov   a,$0591+x
18c5: d5 01 01  mov   $0101+x,a
18c8: f5 a1 05  mov   a,$05a1+x
18cb: d5 b1 02  mov   $02b1+x,a
18ce: e5 30 06  mov   a,$0630
18d1: c5 2e 00  mov   $002e,a
18d4: 6f        ret

18d5: e5 30 06  mov   a,$0630
18d8: c5 2e 00  mov   $002e,a
18db: e5 2e 00  mov   a,$002e
18de: c5 30 06  mov   $0630,a
18e1: 8d 00     mov   y,#$00
18e3: f6 00 04  mov   a,$0400+y
18e6: f0 07     beq   $18ef
18e8: f6 3f 15  mov   a,$153f+y
18eb: 24 2e     and   a,$2e
18ed: c4 2e     mov   $2e,a
18ef: fc        inc   y
18f0: fc        inc   y
18f1: ad 10     cmp   y,#$10
18f3: d0 ee     bne   $18e3
18f5: 6f        ret

18f6: db $15,$00,$01,$02,$04,$05,$07,$08
18fe: db $0a,$0c,$0d,$0f,$10,$12,$13,$14

1905: e5 e0 02  mov   a,$02e0
1909: 9f        xcn   a
190a: 28 0f     and   a,#$0f
190c: fd        mov   y,a
190d: f6 f6 18  mov   a,$18f6+y
1910: c5 8b 06  mov   $068b,a
1913: 68 15     cmp   a,#$15
1915: d0 01     bne   $1918
1917: 6f        ret

1918: f5 00 04  mov   a,$0400+x
191b: 68 01     cmp   a,#$01
191d: d0 f8     bne   $1917
191f: e5 8b 06  mov   a,$068b
1922: 5f fc 0b  jmp   $0bfc

1925: 8d 00     mov   y,#$00
1927: f7 c2     mov   a,($c2)+y
1929: 3a c2     incw  $c2
192b: 2d        push  a
192c: f7 c2     mov   a,($c2)+y
192e: 3a c2     incw  $c2
1930: fd        mov   y,a
1931: ae        pop   a
1932: 6f        ret

1933: e5 49 06  mov   a,$0649
1936: d0 26     bne   $195e
1938: e5 42 06  mov   a,$0642
193b: f0 21     beq   $195e
193d: e5 29 01  mov   a,$0129
1940: f0 1c     beq   $195e
1942: cd 00     mov   x,#$00
1944: d8 06     mov   $06,x
1946: 8f 01 2b  mov   $2b,#$01
1949: c9 3b 06  mov   $063b,x
194c: f4 5d     mov   a,$5d+x
194e: f0 03     beq   $1953
1950: 3f 5f 19  call  $195f
1953: 4d        push  x
1954: 3f 50 01  call  $0150
1957: ce        pop   x
1958: 3d        inc   x
1959: 3d        inc   x
195a: 0b 2b     asl   $2b
195c: d0 eb     bne   $1949
195e: 6f        ret

195f: 9b d8     dec   $d8+x
1961: d0 48     bne   $19ab
1963: 3f f7 1a  call  $1af7
1966: d0 03     bne   $196b
1968: 5f 0c 0a  jmp   $0a0c

196b: 30 20     bmi   $198d
196d: d5 10 04  mov   $0410+x,a
1970: 3f f7 1a  call  $1af7
1973: 30 18     bmi   $198d
1975: 2d        push  a
1976: 9f        xcn   a
1977: 28 07     and   a,#$07
1979: fd        mov   y,a
197a: f6 00 20  mov   a,$2000+y
197d: d5 11 04  mov   $0411+x,a
1980: ae        pop   a
1981: 28 0f     and   a,#$0f
1983: fd        mov   y,a
1984: f6 08 20  mov   a,$2008+y
1987: d5 20 04  mov   $0420+x,a
198a: 3f f7 1a  call  $1af7
198d: 68 e0     cmp   a,#$e0
198f: 90 05     bcc   $1996
1991: 3f e1 1a  call  $1ae1
1994: 2f cd     bra   $1963
1996: 3f 01 1b  call  $1b01
1999: f5 10 04  mov   a,$0410+x
199c: d4 d8     mov   $d8+x,a
199e: fd        mov   y,a
199f: f5 11 04  mov   a,$0411+x
19a2: cf        mul   ya
19a3: dd        mov   a,y
19a4: d0 01     bne   $19a7
19a6: bc        inc   a
19a7: d4 d9     mov   $d9+x,a
19a9: 2f 03     bra   $19ae
19ab: 3f 8d 1e  call  $1e8d
19ae: 5f e5 1b  jmp   $1be5

19b1: dw $1c68  ; e0
19b3: dw $1c28  ; e1
19b5: dw $1c36  ; e2
19b7: dw $1c50  ; e3
19b9: dw $1c5c  ; e4
19bb: dw $0c4a  ; e5
19bd: dw $0c4f  ; e6
19bf: dw $0c66  ; e7
19c1: dw $0c79  ; e8
19c3: dw $0ccf  ; e9
19c5: dw $1c7f  ; ea
19c7: dw $1c83  ; eb
19c9: dw $1c8f  ; ec
19cb: dw $1c93  ; ed
19cd: dw $1c9c  ; ee
19cf: dw $1cb5  ; ef
19d1: dw $1cb6  ; f0
19d3: dw $1cc8  ; f1
19d5: dw $1ccc  ; f2
19d7: dw $1ce2  ; f3
19d9: dw $1ce6  ; f4
19db: dw $1cea  ; f5
19dd: dw $0d7d  ; f6
19df: dw $0d84  ; f7
19e1: dw $0d5c  ; f8
19e3: dw $1bf5  ; f9
19e5: dw $1cfe  ; fa

19e7: db $01,$01,$02,$03,$00,$01,$02,$01
19ef: db $02,$01,$01,$03,$00,$01,$02,$03
19f7: db $01,$03,$03,$00,$01,$03,$00,$03
19ff: db $03,$03,$01

1a02: dw $1aa8
1a04: dw $1aae
1a06: dw $1abb
1a08: dw $1ac6
1a0a: dw $1acc
1a0c: dw $1a6a
1a0e: dw $1a80
1a10: dw $1a9a
1a12: dw $1aa4
1a14: dw $1a8b
1a16: dw $126d
1a18: dw $1a2c
1a1a: dw $1a36
1a1c: dw $1a40
1a1e: dw $1a44
1a20: dw $1a22

1a22: d5 6c 06  mov   $066c+x,a
1a25: 3f 7e 0b  call  $0b7e
1a28: d5 6d 06  mov   $066d+x,a
1a2b: 6f        ret

1a2c: f5 40 15  mov   a,$1540+x
1a2f: 05 80 06  or    a,$0680
1a32: c5 80 06  mov   $0680,a
1a35: 6f        ret

1a36: e5 80 06  mov   a,$0680
1a39: 35 3f 15  and   a,$153f+x
1a3c: c5 80 06  mov   $0680,a
1a3f: 6f        ret

1a40: c5 8a 06  mov   $068a,a
1a43: 6f        ret

1a44: 2d        push  a
1a45: e5 81 06  mov   a,$0681
1a48: f0 15     beq   $1a5f
1a4a: ae        pop   a
1a4b: 30 03     bmi   $1a50
1a4d: 48 ff     eor   a,#$ff
1a4f: bc        inc   a
1a50: c5 7e 06  mov   $067e,a
1a53: 3f 7e 0b  call  $0b7e
1a56: 30 03     bmi   $1a5b
1a58: 48 ff     eor   a,#$ff
1a5a: bc        inc   a
1a5b: c5 7f 06  mov   $067f,a
1a5e: 6f        ret

1a5f: ae        pop   a
1a60: c5 7e 06  mov   $067e,a
1a63: 3f 7e 0b  call  $0b7e
1a66: c5 7f 06  mov   $067f,a
1a69: 6f        ret

1a6a: 2d        push  a
1a6b: 3f f7 1a  call  $1af7
1a6e: 2d        push  a
1a6f: f4 5c     mov   a,$5c+x
1a71: d5 60 05  mov   $0560+x,a
1a74: f4 5d     mov   a,$5d+x
1a76: d5 61 05  mov   $0561+x,a
1a79: ae        pop   a
1a7a: d4 5d     mov   $5d+x,a
1a7c: ae        pop   a
1a7d: d4 5c     mov   $5c+x,a
1a7f: 6f        ret

1a80: f5 60 05  mov   a,$0560+x
1a83: d4 5c     mov   $5c+x,a
1a85: f5 61 05  mov   a,$0561+x
1a88: d4 5d     mov   $5d+x,a
1a8a: 6f        ret

1a8b: 2d        push  a
1a8c: f5 70 05  mov   a,$0570+x
1a8f: 9c        dec   a
1a90: d5 70 05  mov   $0570+x,a
1a93: d0 04     bne   $1a99
1a95: ae        pop   a
1a96: 5f f7 1a  jmp   $1af7

1a99: ae        pop   a
1a9a: 2d        push  a
1a9b: 3f f7 1a  call  $1af7
1a9e: d4 5d     mov   $5d+x,a
1aa0: ae        pop   a
1aa1: d4 5c     mov   $5c+x,a
1aa3: 6f        ret

1aa4: d5 70 05  mov   $0570+x,a
1aa7: 6f        ret

1aa8: 28 0f     and   a,#$0f
1aaa: d5 d0 05  mov   $05d0+x,a
1aad: 6f        ret

1aae: 1c        asl   a
1aaf: 1c        asl   a
1ab0: 1c        asl   a
1ab1: 1c        asl   a
1ab2: 28 70     and   a,#$70
1ab4: 60        clrc
1ab5: 88 80     adc   a,#$80
1ab7: d5 e0 05  mov   $05e0+x,a
1aba: 6f        ret

1abb: 1c        asl   a
1abc: 1c        asl   a
1abd: 1c        asl   a
1abe: 1c        asl   a
1abf: 1c        asl   a
1ac0: 28 e0     and   a,#$e0
1ac2: d5 f0 05  mov   $05f0+x,a
1ac5: 6f        ret

1ac6: 28 1f     and   a,#$1f
1ac8: d5 00 06  mov   $0600+x,a
1acb: 6f        ret

1acc: 28 1f     and   a,#$1f
1ace: d5 10 06  mov   $0610+x,a
1ad1: 6f        ret

1ad2: 3f f7 1a  call  $1af7
1ad5: 1c        asl   a
1ad6: fd        mov   y,a
1ad7: f6 03 1a  mov   a,$1a03+y
1ada: 2d        push  a
1adb: f6 02 1a  mov   a,$1a02+y
1ade: 2d        push  a
1adf: 2f 16     bra   $1af7
;
1ae1: 68 ff     cmp   a,#$ff
1ae3: f0 ed     beq   $1ad2
1ae5: 1c        asl   a
1ae6: fd        mov   y,a
1ae7: f6 f2 18  mov   a,$18f2+y
1aea: 2d        push  a
1aeb: f6 f1 18  mov   a,$18f1+y         ; read address table ($19b1)
1aee: 2d        push  a
1aef: dd        mov   a,y
1af0: 5c        lsr   a
1af1: fd        mov   y,a
1af2: f6 87 19  mov   a,$1987+y         ; read length table ($19e7)
1af5: f0 08     beq   $1aff
1af7: e7 5c     mov   a,($5c+x)         ; read the first argument to A if available
1af9: bb 5c     inc   $5c+x
1afb: d0 02     bne   $1aff
1afd: bb 5d     inc   $5d+x
1aff: fd        mov   y,a
1b00: 6f        ret

1b01: ad ca     cmp   y,#$ca
1b03: 90 05     bcc   $1b0a
1b05: 3f 68 1c  call  $1c68
1b08: 8d a4     mov   y,#$a4
1b0a: ad c8     cmp   y,#$c8
1b0c: b0 f2     bcs   $1b00
1b0e: e5 31 06  mov   a,$0631
1b11: 24 2b     and   a,$2b
1b13: d0 eb     bne   $1b00
1b15: dd        mov   a,y
1b16: 28 7f     and   a,#$7f
1b18: 60        clrc
1b19: 85 32 06  adc   a,$0632
1b1c: 60        clrc
1b1d: 95 a0 05  adc   a,$05a0+x
1b20: d5 31 04  mov   $0431+x,a
1b23: f5 41 04  mov   a,$0441+x
1b26: d5 30 04  mov   $0430+x,a
1b29: f5 51 04  mov   a,$0451+x
1b2c: 5c        lsr   a
1b2d: e8 00     mov   a,#$00
1b2f: 7c        ror   a
1b30: d5 90 04  mov   $0490+x,a
1b33: e8 00     mov   a,#$00
1b35: d5 a0 04  mov   $04a0+x,a
1b38: d5 90 05  mov   $0590+x,a
1b3b: d5 60 04  mov   $0460+x,a
1b3e: d5 b0 04  mov   $04b0+x,a
1b41: 09 2b ac  or    ($ac),($2b)
1b44: 09 2b b1  or    ($b1),($2b)
1b47: f5 80 04  mov   a,$0480+x
1b4a: d4 c8     mov   $c8+x,a
1b4c: f0 1e     beq   $1b6c
1b4e: f5 81 04  mov   a,$0481+x
1b51: d4 c9     mov   $c9+x,a
1b53: f5 70 04  mov   a,$0470+x
1b56: d0 0a     bne   $1b62
1b58: f5 31 04  mov   a,$0431+x
1b5b: 80        setc
1b5c: b5 71 04  sbc   a,$0471+x
1b5f: d5 31 04  mov   $0431+x,a
1b62: f5 71 04  mov   a,$0471+x
1b65: 60        clrc
1b66: 95 31 04  adc   a,$0431+x
1b69: 3f 05 1c  call  $1c05
1b6c: 3f 1d 1c  call  $1c1d
1b6f: 8d 00     mov   y,#$00
1b71: e4 ae     mov   a,$ae
1b73: 80        setc
1b74: a8 34     sbc   a,#$34
1b76: b0 09     bcs   $1b81
1b78: e4 ae     mov   a,$ae
1b7a: 80        setc
1b7b: a8 13     sbc   a,#$13
1b7d: b0 06     bcs   $1b85
1b7f: dc        dec   y
1b80: 1c        asl   a
1b81: 7a ad     addw  ya,$ad
1b83: da ad     movw  $ad,ya
1b85: 4d        push  x
1b86: e4 ae     mov   a,$ae
1b88: 1c        asl   a
1b89: 8d 00     mov   y,#$00
1b8b: cd 18     mov   x,#$18
1b8d: 9e        div   ya,x
1b8e: 5d        mov   x,a
1b8f: f6 4a 11  mov   a,$114a+y
1b92: c4 c5     mov   $c5,a
1b94: f6 49 11  mov   a,$1149+y
1b97: c4 c4     mov   $c4,a
1b99: f6 4c 11  mov   a,$114c+y
1b9c: 2d        push  a
1b9d: f6 4b 11  mov   a,$114b+y
1ba0: ee        pop   y
1ba1: 9a c4     subw  ya,$c4
1ba3: eb ad     mov   y,$ad
1ba5: cf        mul   ya
1ba6: dd        mov   a,y
1ba7: 8d 00     mov   y,#$00
1ba9: 7a c4     addw  ya,$c4
1bab: cb c5     mov   $c5,y
1bad: 1c        asl   a
1bae: 2b c5     rol   $c5
1bb0: c4 c4     mov   $c4,a
1bb2: 2f 04     bra   $1bb8
1bb4: 4b c5     lsr   $c5
1bb6: 7c        ror   a
1bb7: 3d        inc   x
1bb8: c8 06     cmp   x,#$06
1bba: d0 f8     bne   $1bb4
1bbc: c4 c4     mov   $c4,a
1bbe: ce        pop   x
1bbf: f5 80 05  mov   a,$0580+x
1bc2: eb c5     mov   y,$c5
1bc4: cf        mul   ya
1bc5: da c6     movw  $c6,ya
1bc7: f5 80 05  mov   a,$0580+x
1bca: eb c4     mov   y,$c4
1bcc: cf        mul   ya
1bcd: 6d        push  y
1bce: f5 81 05  mov   a,$0581+x
1bd1: eb c4     mov   y,$c4
1bd3: cf        mul   ya
1bd4: 7a c6     addw  ya,$c6
1bd6: da c6     movw  $c6,ya
1bd8: f5 81 05  mov   a,$0581+x
1bdb: eb c5     mov   y,$c5
1bdd: cf        mul   ya
1bde: fd        mov   y,a
1bdf: ae        pop   a
1be0: 7a c6     addw  ya,$c6
1be2: da c6     movw  $c6,ya
1be4: 6f        ret

1be5: f4 c8     mov   a,$c8+x
1be7: d0 33     bne   $1c1c
1be9: e7 5c     mov   a,($5c+x)
1beb: 68 f9     cmp   a,#$f9
1bed: d0 2d     bne   $1c1c
1bef: 3f f9 1a  call  $1af9
1bf2: 3f f7 1a  call  $1af7
1bf5: d4 c9     mov   $c9+x,a
1bf7: 3f f7 1a  call  $1af7
1bfa: d4 c8     mov   $c8+x,a
1bfc: 3f f7 1a  call  $1af7
1bff: 60        clrc
1c00: 84 33     adc   a,$33
1c02: 95 a0 05  adc   a,$05a0+x
1c05: 28 7f     and   a,#$7f
1c07: d5 40 04  mov   $0440+x,a
1c0a: 80        setc
1c0b: b5 31 04  sbc   a,$0431+x
1c0e: fb c8     mov   y,$c8+x
1c10: 6d        push  y
1c11: ce        pop   x
1c12: 3f 02 1d  call  $1d02
1c15: d5 c0 04  mov   $04c0+x,a
1c18: dd        mov   a,y
1c19: d5 c1 04  mov   $04c1+x,a
1c1c: 6f        ret

1c1d: f5 31 04  mov   a,$0431+x
1c20: c4 ae     mov   $ae,a
1c22: f5 30 04  mov   a,$0430+x
1c25: c4 ad     mov   $ad,a
1c27: 6f        ret

1c28: d5 f1 04  mov   $04f1+x,a
1c2b: 28 1f     and   a,#$1f
1c2d: d5 d1 04  mov   $04d1+x,a
1c30: e8 00     mov   a,#$00
1c32: d5 d0 04  mov   $04d0+x,a
1c35: 6f        ret

1c36: d5 31 05  mov   $0531+x,a
1c39: 2d        push  a
1c3a: 3f f7 1a  call  $1af7
1c3d: d5 f0 04  mov   $04f0+x,a
1c40: 80        setc
1c41: b5 d1 04  sbc   a,$04d1+x
1c44: ce        pop   x
1c45: 3f 02 1d  call  $1d02
1c48: d5 e0 04  mov   $04e0+x,a
1c4b: dd        mov   a,y
1c4c: d5 e1 04  mov   $04e1+x,a
1c4f: 6f        ret

1c50: d5 50 04  mov   $0450+x,a
1c53: 3f f7 1a  call  $1af7
1c56: d5 91 04  mov   $0491+x,a
1c59: 3f f7 1a  call  $1af7
1c5c: d5 a1 04  mov   $04a1+x,a
1c5f: d5 41 05  mov   $0541+x,a
1c62: e8 00     mov   a,#$00
1c64: d5 51 04  mov   $0451+x,a
1c67: 6f        ret

1c68: d5 21 04  mov   $0421+x,a
1c6b: 8d 06     mov   y,#$06
1c6d: cf        mul   ya
1c6e: 60        clrc
1c6f: 88 05     adc   a,#$05
1c71: fd        mov   y,a
1c72: f6 00 21  mov   a,$2100+y
1c75: d5 81 05  mov   $0581+x,a
1c78: f6 01 21  mov   a,$2101+y
1c7b: d5 80 05  mov   $0580+x,a
1c7e: 6f        ret

1c7f: d5 a0 05  mov   $05a0+x,a
1c82: 6f        ret

1c83: d5 50 05  mov   $0550+x,a
1c86: 3f f7 1a  call  $1af7
1c89: d5 61 04  mov   $0461+x,a
1c8c: 3f f7 1a  call  $1af7
1c8f: d5 b1 04  mov   $04b1+x,a
1c92: 6f        ret

1c93: d5 01 05  mov   $0501+x,a
1c96: e8 00     mov   a,#$00
1c98: d5 00 05  mov   $0500+x,a
1c9b: 6f        ret

1c9c: d5 30 05  mov   $0530+x,a
1c9f: 2d        push  a
1ca0: 3f f7 1a  call  $1af7
1ca3: d5 20 05  mov   $0520+x,a
1ca6: 80        setc
1ca7: b5 01 05  sbc   a,$0501+x
1caa: ce        pop   x
1cab: 3f 02 1d  call  $1d02
1cae: d5 10 05  mov   $0510+x,a
1cb1: dd        mov   a,y
1cb2: d5 11 05  mov   $0511+x,a
1cb5: 6f        ret

1cb6: d5 51 04  mov   $0451+x,a
1cb9: 2d        push  a
1cba: 8d 00     mov   y,#$00
1cbc: f5 a1 04  mov   a,$04a1+x
1cbf: ce        pop   x
1cc0: 9e        div   ya,x
1cc1: e9 3b 06  mov   x,$063b
1cc4: d5 40 05  mov   $0540+x,a
1cc7: 6f        ret

1cc8: e8 01     mov   a,#$01
1cca: 2f 02     bra   $1cce
1ccc: e8 00     mov   a,#$00
1cce: d5 70 04  mov   $0470+x,a
1cd1: dd        mov   a,y
1cd2: d5 81 04  mov   $0481+x,a
1cd5: 3f f7 1a  call  $1af7
1cd8: d5 80 04  mov   $0480+x,a
1cdb: 3f f7 1a  call  $1af7
1cde: d5 71 04  mov   $0471+x,a
1ce1: 6f        ret

1ce2: d5 80 04  mov   $0480+x,a
1ce5: 6f        ret

1ce6: d5 41 04  mov   $0441+x,a
1ce9: 6f        ret

1cea: c5 30 06  mov   $0630,a
1ced: 3f f7 1a  call  $1af7
1cf0: e8 00     mov   a,#$00
1cf2: da b6     movw  $b6,ya
1cf4: 3f f7 1a  call  $1af7
1cf7: e8 00     mov   a,#$00
1cf9: da b8     movw  $b8,ya
1cfb: b2 3c     clr5  $3c
1cfd: 6f        ret

1cfe: c5 36 06  mov   $0636,a
1d01: 6f        ret

1d02: ed        notc
1d03: 6b af     ror   $af
1d05: 10 03     bpl   $1d0a
1d07: 48 ff     eor   a,#$ff
1d09: bc        inc   a
1d0a: 8d 00     mov   y,#$00
1d0c: 9e        div   ya,x
1d0d: 2d        push  a
1d0e: e8 00     mov   a,#$00
1d10: 9e        div   ya,x
1d11: ee        pop   y
1d12: e9 3b 06  mov   x,$063b
1d15: f3 09 06  bbc7  $09,$1d1e
1d18: da c4     movw  $c4,ya
1d1a: ba 04     movw  ya,$04
1d1c: 9a c4     subw  ya,$c4
1d1e: 6f        ret

1d1f: ec ea 02  mov   y,$02ea
1d22: e5 e2 02  mov   a,$02e2
1d25: c5 ea 02  mov   $02ea,a
1d28: 5e e2 02  cmp   y,$02e2
1d2b: f0 0a     beq   $1d37
1d2d: 2d        push  a
1d2e: e8 02     mov   a,#$02
1d30: c5 34 01  mov   $0134,a
1d33: ae        pop   a
1d34: 3f ff 1d  call  $1dff
1d37: e4 02     mov   a,$02
1d39: f0 19     beq   $1d54
1d3b: 8b 02     dec   $02
1d3d: 8b 02     dec   $02
1d3f: 3f 25 19  call  $1925
1d42: d0 06     bne   $1d4a
1d44: fd        mov   y,a
1d45: d0 03     bne   $1d4a
1d47: 3f ff 1d  call  $1dff
1d4a: da 0d     movw  $0d,ya
1d4c: e8 02     mov   a,#$02
1d4e: 3f 60 1e  call  $1e60
1d51: 5f 87 1d  jmp   $1d87

1d54: 6f        ret

1d55: ec e9 02  mov   y,$02e9
1d58: e5 e1 02  mov   a,$02e1
1d5b: c5 e9 02  mov   $02e9,a
1d5e: 5e e1 02  cmp   y,$02e1
1d61: f0 0a     beq   $1d6d
1d63: 2d        push  a
1d64: e8 01     mov   a,#$01
1d66: c5 34 01  mov   $0134,a
1d69: ae        pop   a
1d6a: 3f ff 1d  call  $1dff
1d6d: e4 01     mov   a,$01
1d6f: f0 e3     beq   $1d54
1d71: 8b 01     dec   $01
1d73: 8b 01     dec   $01
1d75: 3f 25 19  call  $1925
1d78: d0 06     bne   $1d80
1d7a: fd        mov   y,a
1d7b: d0 03     bne   $1d80
1d7d: 3f ff 1d  call  $1dff
1d80: da 0d     movw  $0d,ya
1d82: e8 01     mov   a,#$01
1d84: 3f 60 1e  call  $1e60
1d87: 8d 0f     mov   y,#$0f
1d89: f6 ff 03  mov   a,$03ff+y
1d8c: f0 3b     beq   $1dc9
1d8e: 25 34 01  and   a,$0134
1d91: 65 34 01  cmp   a,$0134
1d94: d0 33     bne   $1dc9
1d96: f6 ff 03  mov   a,$03ff+y
1d99: 65 34 01  cmp   a,$0134
1d9c: d0 16     bne   $1db4
1d9e: f6 14 00  mov   a,$0014+y
1da1: d6 5c 00  mov   $005c+y,a
1da4: dc        dec   y
1da5: f6 14 00  mov   a,$0014+y
1da8: d6 5c 00  mov   $005c+y,a
1dab: 6d        push  y
1dac: ce        pop   x
1dad: 3f 70 15  call  $1570
1db0: 3f 02 17  call  $1702
1db3: fc        inc   y
1db4: f6 ff 03  mov   a,$03ff+y
1db7: 25 34 01  and   a,$0134
1dba: d6 ff 03  mov   $03ff+y,a
1dbd: f7 0d     mov   a,($0d)+y
1dbf: d6 14 00  mov   $0014+y,a
1dc2: dc        dec   y
1dc3: f7 0d     mov   a,($0d)+y
1dc5: d6 14 00  mov   $0014+y,a
1dc8: fc        inc   y
1dc9: dc        dec   y
1dca: dc        dec   y
1dcb: ad ff     cmp   y,#$ff
1dcd: d0 ba     bne   $1d89
1dcf: cd 00     mov   x,#$00
1dd1: 8f 01 2b  mov   $2b,#$01
1dd4: f5 00 04  mov   a,$0400+x
1dd7: f0 0f     beq   $1de8
1dd9: e8 00     mov   a,#$00
1ddb: d4 6c     mov   $6c+x,a
1ddd: d4 6d     mov   $6d+x,a
1ddf: bc        inc   a
1de0: d4 3f     mov   $3f+x,a
1de2: 3f 4e 12  call  $124e
1de5: 3f 1b 15  call  $151b
1de8: 3d        inc   x
1de9: 3d        inc   x
1dea: 0b 2b     asl   $2b
1dec: d0 e6     bne   $1dd4
1dee: e5 2e 00  mov   a,$002e
1df1: 8d 4d     mov   y,#$4d
1df3: 3f 19 09  call  $0919
1df6: 3f d5 18  call  $18d5
1df9: e8 01     mov   a,#$01
1dfb: c5 29 01  mov   $0129,a
1dfe: 6f        ret

1dff: 2d        push  a
1e00: 68 00     cmp   a,#$00
1e02: d0 0e     bne   $1e12
1e04: e5 34 01  mov   a,$0134
1e07: 68 01     cmp   a,#$01
1e09: d0 07     bne   $1e12
1e0b: ae        pop   a
1e0c: c5 e5 02  mov   $02e5,a
1e0f: ae        pop   a
1e10: ae        pop   a
1e11: 6f        ret

1e12: e5 34 01  mov   a,$0134
1e15: 3f 49 1e  call  $1e49
1e18: e5 34 01  mov   a,$0134
1e1b: 68 01     cmp   a,#$01
1e1d: f0 06     beq   $1e25
1e1f: ae        pop   a
1e20: c5 e6 02  mov   $02e6,a
1e23: 2f 04     bra   $1e29
1e25: ae        pop   a
1e26: c5 e5 02  mov   $02e5,a
1e29: 1c        asl   a
1e2a: f0 1a     beq   $1e46
1e2c: 5d        mov   x,a
1e2d: f5 35 20  mov   a,$2035+x
1e30: fd        mov   y,a
1e31: f5 34 20  mov   a,$2034+x
1e34: da c2     movw  $c2,ya
1e36: e5 34 01  mov   a,$0134
1e39: 68 01     cmp   a,#$01
1e3b: f0 05     beq   $1e42
1e3d: 8f 02 02  mov   $02,#$02
1e40: 2f 03     bra   $1e45
1e42: 8f 02 01  mov   $01,#$02
1e45: 6f        ret

1e46: 5f 79 1e  jmp   $1e79

1e49: c5 8c 06  mov   $068c,a
1e4c: cd 00     mov   x,#$00
1e4e: f5 00 04  mov   a,$0400+x
1e51: 65 8c 06  cmp   a,$068c
1e54: d0 03     bne   $1e59
1e56: 3f 4f 15  call  $154f
1e59: 3d        inc   x
1e5a: 3d        inc   x
1e5b: c8 10     cmp   x,#$10
1e5d: d0 ef     bne   $1e4e
1e5f: 6f        ret

1e60: c5 2c 01  mov   $012c,a
1e63: 8d 0f     mov   y,#$0f
1e65: f7 0d     mov   a,($0d)+y
1e67: f0 09     beq   $1e72
1e69: f6 ff 03  mov   a,$03ff+y
1e6c: 05 2c 01  or    a,$012c
1e6f: d6 ff 03  mov   $03ff+y,a
1e72: dc        dec   y
1e73: dc        dec   y
1e74: ad ff     cmp   y,#$ff
1e76: d0 ed     bne   $1e65
1e78: 6f        ret

1e79: cd 00     mov   x,#$00
1e7b: f5 00 04  mov   a,$0400+x
1e7e: 65 34 01  cmp   a,$0134
1e81: d0 03     bne   $1e86
1e83: 3f 4f 15  call  $154f
1e86: 3d        inc   x
1e87: 3d        inc   x
1e88: c8 10     cmp   x,#$10
1e8a: d0 ef     bne   $1e7b
1e8c: 6f        ret

1e8d: f4 d9     mov   a,$d9+x
1e8f: f0 09     beq   $1e9a
1e91: 9b d9     dec   $d9+x
1e93: f0 05     beq   $1e9a
1e95: e8 02     mov   a,#$02
1e97: de d8 00  cbne  $d8+x,$1e9a
1e9a: f2 0a     clr7  $0a
1e9c: f4 c8     mov   a,$c8+x
1e9e: f0 2c     beq   $1ecc
1ea0: f4 c9     mov   a,$c9+x
1ea2: f0 04     beq   $1ea8
1ea4: 9b c9     dec   $c9+x
1ea6: 2f 24     bra   $1ecc
1ea8: e2 0a     set7  $0a
1eaa: 9b c8     dec   $c8+x
1eac: d0 0b     bne   $1eb9
1eae: f5 41 04  mov   a,$0441+x
1eb1: d5 30 04  mov   $0430+x,a
1eb4: f5 40 04  mov   a,$0440+x
1eb7: 2f 10     bra   $1ec9
1eb9: 60        clrc
1eba: f5 30 04  mov   a,$0430+x
1ebd: 95 c0 04  adc   a,$04c0+x
1ec0: d5 30 04  mov   $0430+x,a
1ec3: f5 31 04  mov   a,$0431+x
1ec6: 95 c1 04  adc   a,$04c1+x
1ec9: d5 31 04  mov   $0431+x,a
1ecc: 3f 1d 1c  call  $1c1d
1ecf: f5 a1 04  mov   a,$04a1+x
1ed2: f0 57     beq   $1f2b
1ed4: f5 50 04  mov   a,$0450+x
1ed7: 80        setc
1ed8: b5 a0 04  sbc   a,$04a0+x
1edb: d0 47     bne   $1f24
1edd: f5 90 05  mov   a,$0590+x
1ee0: 75 51 04  cmp   a,$0451+x
1ee3: d0 05     bne   $1eea
1ee5: f5 41 05  mov   a,$0541+x
1ee8: 2f 0e     bra   $1ef8
1eea: 40        setp
1eeb: bb 90     inc   $90+x
1eed: 20        clrp
1eee: fd        mov   y,a
1eef: f0 03     beq   $1ef4
1ef1: f5 a1 04  mov   a,$04a1+x
1ef4: 60        clrc
1ef5: 95 40 05  adc   a,$0540+x
1ef8: d5 a1 04  mov   $04a1+x,a
1efb: f5 90 04  mov   a,$0490+x
1efe: 60        clrc
1eff: 95 91 04  adc   a,$0491+x
1f02: d5 90 04  mov   $0490+x,a
1f05: c4 09     mov   $09,a
1f07: 1c        asl   a
1f08: 1c        asl   a
1f09: 90 02     bcc   $1f0d
1f0b: 48 ff     eor   a,#$ff
1f0d: fd        mov   y,a
1f0e: f5 a1 04  mov   a,$04a1+x
1f11: 68 f1     cmp   a,#$f1
1f13: 90 05     bcc   $1f1a
1f15: 28 0f     and   a,#$0f
1f17: cf        mul   ya
1f18: 2f 04     bra   $1f1e
1f1a: cf        mul   ya
1f1b: dd        mov   a,y
1f1c: 8d 00     mov   y,#$00
1f1e: 3f 2f 1f  call  $1f2f
1f21: 5f 6f 1b  jmp   $1b6f

1f24: f5 a0 04  mov   a,$04a0+x
1f27: bc        inc   a
1f28: d5 a0 04  mov   $04a0+x,a
1f2b: e3 0a f3  bbs7  $0a,$1f21
1f2e: 6f        ret

1f2f: 3f 15 1d  call  $1d15
1f32: 7a 07     addw  ya,$07
1f34: da 07     movw  $07,ya
1f36: 6f        ret

1f37: ee        pop   y
1f38: ae        pop   a
1f39: 6f        ret

1f3a: 2d        push  a
1f3b: 6d        push  y
1f3c: e5 82 06  mov   a,$0682
1f3f: f0 f6     beq   $1f37
1f41: e5 83 06  mov   a,$0683
1f44: f0 4f     beq   $1f95
1f46: e5 84 06  mov   a,$0684
1f49: bc        inc   a
1f4a: c5 84 06  mov   $0684,a
1f4d: 65 83 06  cmp   a,$0683
1f50: 90 e5     bcc   $1f37
1f52: e8 00     mov   a,#$00
1f54: c5 84 06  mov   $0684,a
1f57: e8 01     mov   a,#$01
1f59: c5 4a 06  mov   $064a,a
1f5c: 8d 0c     mov   y,#$0c
1f5e: 3f ca 1f  call  $1fca             ; decrease MVOL(L)
1f61: 8d 1c     mov   y,#$1c
1f63: 3f ca 1f  call  $1fca             ; decrease MVOL(R)
1f66: e5 50 00  mov   a,$0050
1f69: f0 06     beq   $1f71
1f6b: 9c        dec   a
1f6c: c5 50 00  mov   $0050,a
1f6f: 2f 03     bra   $1f74
1f71: 8c 4a 06  dec   $064a
1f74: e5 35 00  mov   a,$0035
1f77: f0 04     beq   $1f7d
1f79: 9c        dec   a
1f7a: c5 35 00  mov   $0035,a
1f7d: e5 37 00  mov   a,$0037
1f80: f0 04     beq   $1f86
1f82: 9c        dec   a
1f83: c5 37 00  mov   $0037,a
1f86: e5 4a 06  mov   a,$064a
1f89: 30 0a     bmi   $1f95
1f8b: f0 08     beq   $1f95
1f8d: e8 00     mov   a,#$00
1f8f: c5 4a 06  mov   $064a,a
1f92: 5f c7 1f  jmp   $1fc7

1f95: 3f 41 09  call  $0941
1f98: 3f 61 14  call  $1461
1f9b: e8 60     mov   a,#$60
1f9d: c5 7c 06  mov   $067c,a
1fa0: c5 7d 06  mov   $067d,a
1fa3: 8d 0c     mov   y,#$0c
1fa5: 3f 19 09  call  $0919
1fa8: 8d 1c     mov   y,#$1c
1faa: 3f 19 09  call  $0919
1fad: e8 00     mov   a,#$00
1faf: c5 82 06  mov   $0682,a
1fb2: e8 01     mov   a,#$01
1fb4: c5 4a 06  mov   $064a,a
1fb7: e8 20     mov   a,#$20
1fb9: c5 e7 02  mov   $02e7,a
1fbc: c5 f7 00  mov   $00f7,a
1fbf: c5 e3 02  mov   $02e3,a
1fc2: 65 e3 02  cmp   a,$02e3
1fc5: d0 f0     bne   $1fb7
1fc7: ee        pop   y
1fc8: ae        pop   a
1fc9: 6f        ret

; decrease dsp register Y until 0
1fca: cc f2 00  mov   $00f2,y
1fcd: e5 f3 00  mov   a,$00f3
1fd0: f0 08     beq   $1fda
1fd2: 9c        dec   a
1fd3: cc f2 00  mov   $00f2,y
1fd6: c5 f3 00  mov   $00f3,a
1fd9: 6f        ret

1fda: 8c 4a 06  dec   $064a
1fdd: 6f        ret
