0800: 20        clrp
0801: cd 4f     mov   x,#$4f
0803: bd        mov   sp,x
0804: e8 30     mov   a,#$30
0806: c4 f1     mov   $f1,a
0808: e8 00     mov   a,#$00
080a: 5d        mov   x,a
080b: af        mov   (x)+,a
080c: c8 f0     cmp   x,#$f0
080e: d0 fb     bne   $080b
0810: 40        setp
0811: e8 00     mov   a,#$00
0813: 5d        mov   x,a
0814: af        mov   (x)+,a
0815: c8 ff     cmp   x,#$ff
0817: d0 fb     bne   $0814
0819: 20        clrp
081a: e8 00     mov   a,#$00
081c: 8d 02     mov   y,#$02
081e: da c2     movw  $c2,ya
0820: e8 00     mov   a,#$00
0822: fd        mov   y,a
0823: d7 c2     mov   ($c2)+y,a
0825: fc        inc   y
0826: d0 fb     bne   $0823
0828: ab c3     inc   $c3
082a: 78 04 c3  cmp   $c3,#$04
082d: d0 f4     bne   $0823
082f: 8f 01 cf  mov   $cf,#$01
0832: 8f ff 10  mov   $10,#$ff
0835: e8 00     mov   a,#$00
0837: 8d 0c     mov   y,#$0c
0839: 3f 7a 16  call  $167a             ; set MVOL(L)
083c: 8d 1c     mov   y,#$1c
083e: 3f 7a 16  call  $167a             ; set MVOL(R)
0841: 8d 2c     mov   y,#$2c
0843: 3f 7a 16  call  $167a             ; set EVOL(L)
0846: 8d 3c     mov   y,#$3c
0848: 3f 7a 16  call  $167a             ; set EVOL(R)
084b: 8d 2d     mov   y,#$2d
084d: 3f 7a 16  call  $167a             ; set PMON
0850: 8d 3d     mov   y,#$3d
0852: 3f 7a 16  call  $167a             ; set NON
0855: 8d 4d     mov   y,#$4d
0857: 3f 7a 16  call  $167a             ; set EON
085a: e8 19     mov   a,#$19
085c: 8d 5d     mov   y,#$5d
085e: 3f 7a 16  call  $167a             ; set DIR
0861: e8 ff     mov   a,#$ff
0863: c4 0d     mov   $0d,a
0865: e8 64     mov   a,#$64
0867: c4 d8     mov   $d8,a
0869: e8 7f     mov   a,#$7f
086b: 8d 0c     mov   y,#$0c
086d: 3f 7a 16  call  $167a             ; set MVOL(L)
0870: 8d 1c     mov   y,#$1c
0872: 3f 7a 16  call  $167a             ; set MVOL(R)
0875: e8 ff     mov   a,#$ff
0877: 8d 5c     mov   y,#$5c
0879: 3f 7a 16  call  $167a             ; set KOF
087c: e8 24     mov   a,#$24
087e: c4 fa     mov   $fa,a
0880: e8 01     mov   a,#$01
0882: c4 f1     mov   $f1,a
0884: e8 06     mov   a,#$06
0886: c4 07     mov   $07,a
0888: 3f f3 16  call  $16f3
088b: ab ce     inc   $ce
088d: e4 ce     mov   a,$ce
088f: c4 f6     mov   $f6,a
0891: 03 d0 04  bbs0  $d0,$0898
0894: eb fd     mov   y,$fd
0896: f0 f3     beq   $088b
0898: 12 d0     clr0  $d0
089a: 3f 51 17  call  $1751
089d: 08 00     or    a,#$00
089f: f0 09     beq   $08aa
08a1: c4 f7     mov   $f7,a
08a3: 3f 98 12  call  $1298
08a6: e8 31     mov   a,#$31
08a8: c4 f1     mov   $f1,a
08aa: e8 ef     mov   a,#$ef
08ac: c4 f7     mov   $f7,a
08ae: e4 cd     mov   a,$cd
08b0: 04 00     or    a,$00
08b2: d0 08     bne   $08bc
08b4: e8 00     mov   a,#$00
08b6: c4 02     mov   $02,a
08b8: c4 eb     mov   $eb,a
08ba: 2f cf     bra   $088b
08bc: 8d 05     mov   y,#$05
08be: f6 ce 17  mov   a,$17ce+y
08c1: c4 f2     mov   $f2,a
08c3: f6 d3 17  mov   a,$17d3+y
08c6: 5d        mov   x,a
08c7: e6        mov   a,(x)
08c8: c4 f3     mov   $f3,a
08ca: fe f2     dbnz  y,$08be
08cc: 8d 04     mov   y,#$04
08ce: f6 ca 17  mov   a,$17ca+y
08d1: c4 f2     mov   $f2,a
08d3: f6 d8 17  mov   a,$17d8+y
08d6: 5d        mov   x,a
08d7: e6        mov   a,(x)
08d8: c4 f3     mov   $f3,a
08da: fe f2     dbnz  y,$08ce
08dc: cb 16     mov   $16,y
08de: cb 17     mov   $17,y
08e0: e4 d8     mov   a,$d8
08e2: 60        clrc
08e3: 84 d9     adc   a,$d9
08e5: c4 d9     mov   $d9,a
08e7: b0 05     bcs   $08ee
08e9: 3f c1 09  call  $09c1
08ec: 2f 21     bra   $090f
08ee: cd 10     mov   x,#$10
08f0: 3f e4 09  call  $09e4
08f3: d8 12     mov   $12,x
08f5: f4 cc     mov   a,$cc+x
08f7: f0 0e     beq   $0907
08f9: c4 15     mov   $15,a
08fb: 3f 7f 16  call  $167f
08fe: 3f 6f 16  call  $166f
0901: 3f 84 0a  call  $0a84
0904: 3f d9 15  call  $15d9
0907: f8 12     mov   x,$12
0909: 3d        inc   x
090a: 3d        inc   x
090b: c8 18     cmp   x,#$18
090d: d0 e4     bne   $08f3
090f: e4 0d     mov   a,$0d
0911: 60        clrc
0912: 84 0e     adc   a,$0e
0914: c4 0e     mov   $0e,a
0916: b0 05     bcs   $091d
0918: 3f 99 09  call  $0999
091b: 2f 2f     bra   $094c
091d: 3f 05 0a  call  $0a05
0920: cd 00     mov   x,#$00
0922: 8f 01 15  mov   $15,#$01
0925: d8 12     mov   $12,x
0927: e4 00     mov   a,$00
0929: 24 15     and   a,$15
092b: f0 17     beq   $0944
092d: 7d        mov   a,x
092e: 9f        xcn   a
092f: 5c        lsr   a
0930: c4 13     mov   $13,a
0932: 3f 6f 16  call  $166f
0935: 3f 84 0a  call  $0a84
0938: e4 cd     mov   a,$cd
093a: 24 15     and   a,$15
093c: d0 03     bne   $0941
093e: 3f d9 15  call  $15d9
0941: 3f 3e 16  call  $163e
0944: 3d        inc   x
0945: 3d        inc   x
0946: 0b 15     asl   $15
0948: d0 db     bne   $0925
094a: 32 cf     clr1  $cf
094c: 3f 5c 09  call  $095c
094f: e4 00     mov   a,$00
0951: d0 06     bne   $0959
0953: e8 00     mov   a,#$00
0955: c4 03     mov   $03,a
0957: c4 04     mov   $04,a
0959: 5f 8b 08  jmp   $088b

095c: e4 d3     mov   a,$d3
095e: f0 38     beq   $0998
0960: 8b d3     dec   $d3
0962: d0 13     bne   $0977
0964: e4 d7     mov   a,$d7
0966: c4 10     mov   $10,a
0968: d2 cf     clr6  $cf
096a: 53 d0 2b  bbc2  $d0,$0998
096d: 52 d0     clr2  $d0
096f: e4 05     mov   a,$05
0971: c4 03     mov   $03,a
0973: c4 04     mov   $04,a
0975: 2f 21     bra   $0998
0977: 60        clrc
0978: e4 d5     mov   a,$d5
097a: 84 d6     adc   a,$d6
097c: c4 d6     mov   $d6,a
097e: e4 10     mov   a,$10
0980: 84 d4     adc   a,$d4
0982: c4 10     mov   $10,a
0984: 53 d0 11  bbc2  $d0,$0998
0987: 60        clrc
0988: e4 ed     mov   a,$ed
098a: 84 ee     adc   a,$ee
098c: c4 ee     mov   $ee,a
098e: e4 ef     mov   a,$ef
0990: 84 ec     adc   a,$ec
0992: c4 ef     mov   $ef,a
0994: c4 03     mov   $03,a
0996: c4 04     mov   $04,a
0998: 6f        ret

0999: cd 00     mov   x,#$00
099b: 8f 01 15  mov   $15,#$01
099e: d8 12     mov   $12,x
09a0: e4 00     mov   a,$00
09a2: 24 15     and   a,$15
09a4: f0 12     beq   $09b8
09a6: 7d        mov   a,x
09a7: 9f        xcn   a
09a8: 5c        lsr   a
09a9: c4 13     mov   $13,a
09ab: 3f 6f 16  call  $166f
09ae: e4 0e     mov   a,$0e
09b0: c4 da     mov   $da,a
09b2: 3f 21 0a  call  $0a21
09b5: 3f 3e 16  call  $163e
09b8: f8 12     mov   x,$12
09ba: 3d        inc   x
09bb: 3d        inc   x
09bc: 0b 15     asl   $15
09be: d0 de     bne   $099e
09c0: 6f        ret

09c1: cd 10     mov   x,#$10
09c3: d8 12     mov   $12,x
09c5: f4 cc     mov   a,$cc+x
09c7: f0 12     beq   $09db
09c9: c4 15     mov   $15,a
09cb: 3f 7f 16  call  $167f
09ce: 3f 6f 16  call  $166f
09d1: e4 d9     mov   a,$d9
09d3: c4 da     mov   $da,a
09d5: 3f 21 0a  call  $0a21
09d8: 3f 3e 16  call  $163e
09db: f8 12     mov   x,$12
09dd: 3d        inc   x
09de: 3d        inc   x
09df: c8 18     cmp   x,#$18
09e1: d0 e0     bne   $09c3
09e3: 6f        ret

09e4: e4 e4     mov   a,$e4
09e6: f0 1c     beq   $0a04
09e8: 8b e4     dec   $e4
09ea: d0 04     bne   $09f0
09ec: e4 e8     mov   a,$e8
09ee: 2f 0b     bra   $09fb
09f0: 60        clrc
09f1: e4 e6     mov   a,$e6
09f3: 84 e7     adc   a,$e7
09f5: c4 e7     mov   $e7,a
09f7: e4 e9     mov   a,$e9
09f9: 84 e5     adc   a,$e5
09fb: c4 e9     mov   $e9,a
09fd: 38 20 01  and   $01,#$20
0a00: 04 01     or    a,$01
0a02: c4 01     mov   $01,a
0a04: 6f        ret

0a05: e4 08     mov   a,$08
0a07: f0 17     beq   $0a20
0a09: 8b 08     dec   $08
0a0b: d0 06     bne   $0a13
0a0d: e4 0c     mov   a,$0c
0a0f: c4 0d     mov   $0d,a
0a11: 2f 0d     bra   $0a20
0a13: 60        clrc
0a14: e4 0a     mov   a,$0a
0a16: 84 0b     adc   a,$0b
0a18: c4 0b     mov   $0b,a
0a1a: e4 0d     mov   a,$0d
0a1c: 84 09     adc   a,$09
0a1e: c4 0d     mov   $0d,a
0a20: 6f        ret

0a21: f4 79     mov   a,$79+x
0a23: f0 10     beq   $0a35
0a25: f5 d0 02  mov   a,$02d0+x
0a28: 75 d1 02  cmp   a,$02d1+x
0a2b: d0 08     bne   $0a35
0a2d: 3f b6 15  call  $15b6
0a30: 43 d1 02  bbs2  $d1,$0a35
0a33: 22 d1     set1  $d1
0a35: 3f e8 16  call  $16e8
0a38: f2 ca     clr7  $ca
0a3a: f4 49     mov   a,$49+x
0a3c: f0 2b     beq   $0a69
0a3e: f5 71 02  mov   a,$0271+x
0a41: d0 26     bne   $0a69
0a43: e2 ca     set7  $ca
0a45: f5 41 02  mov   a,$0241+x
0a48: fd        mov   y,a
0a49: c4 c2     mov   $c2,a
0a4b: f5 58 02  mov   a,$0258+x
0a4e: 3f de 16  call  $16de
0a51: cb c7     mov   $c7,y
0a53: eb da     mov   y,$da
0a55: cf        mul   ya
0a56: cb c8     mov   $c8,y
0a58: 8f 00 c9  mov   $c9,#$00
0a5b: eb da     mov   y,$da
0a5d: e4 c7     mov   a,$c7
0a5f: cf        mul   ya
0a60: 7a c8     addw  ya,$c8
0a62: 3f de 16  call  $16de
0a65: 7a cb     addw  ya,$cb
0a67: da cb     movw  $cb,ya
0a69: f4 60     mov   a,$60+x
0a6b: f0 07     beq   $0a74
0a6d: f5 89 02  mov   a,$0289+x
0a70: 74 78     cmp   a,$78+x
0a72: f0 03     beq   $0a77
0a74: 5f 5a 0c  jmp   $0c5a

0a77: eb da     mov   y,$da
0a79: f5 a0 02  mov   a,$02a0+x
0a7c: cf        mul   ya
0a7d: dd        mov   a,y
0a7e: 60        clrc
0a7f: 94 61     adc   a,$61+x
0a81: 5f 1e 0c  jmp   $0c1e

0a84: f4 18     mov   a,$18+x
0a86: f0 3b     beq   $0ac3
0a88: 9b 18     dec   $18+x
0a8a: f4 19     mov   a,$19+x
0a8c: f0 35     beq   $0ac3
0a8e: 9b 19     dec   $19+x
0a90: d0 31     bne   $0ac3
0a92: 63 d1 2e  bbs3  $d1,$0ac3
0a95: 43 d1 15  bbs2  $d1,$0aad
0a98: f3 d1 12  bbc7  $d1,$0aad
0a9b: e4 cd     mov   a,$cd
0a9d: 24 15     and   a,$15
0a9f: d0 22     bne   $0ac3
0aa1: e4 13     mov   a,$13
0aa3: 3f a8 16  call  $16a8
0aa6: 93 d1 1a  bbc4  $d1,$0ac3
0aa9: b2 d1     clr5  $d1
0aab: 2f 16     bra   $0ac3
0aad: 93 d1 04  bbc4  $d1,$0ab4
0ab0: a2 d1     set5  $d1
0ab2: 2f 0f     bra   $0ac3
0ab4: c8 10     cmp   x,#$10
0ab6: b0 06     bcs   $0abe
0ab8: e4 cd     mov   a,$cd
0aba: 24 15     and   a,$15
0abc: d0 05     bne   $0ac3
0abe: b2 d1     clr5  $d1
0ac0: 09 15 17  or    ($17),($15)
0ac3: 3f c9 0a  call  $0ac9
0ac6: 5f f4 0c  jmp   $0cf4

0ac9: f4 48     mov   a,$48+x
0acb: f0 28     beq   $0af5
0acd: 9b 48     dec   $48+x
0acf: d0 0a     bne   $0adb
0ad1: f5 f9 01  mov   a,$01f9+x
0ad4: d5 10 02  mov   $0210+x,a
0ad7: 22 d1     set1  $d1
0ad9: 2f 1a     bra   $0af5
0adb: 60        clrc
0adc: f5 e1 01  mov   a,$01e1+x
0adf: 95 f8 01  adc   a,$01f8+x
0ae2: d5 f8 01  mov   $01f8+x,a
0ae5: f5 10 02  mov   a,$0210+x
0ae8: 95 e0 01  adc   a,$01e0+x
0aeb: 75 10 02  cmp   a,$0210+x
0aee: f0 05     beq   $0af5
0af0: d5 10 02  mov   $0210+x,a
0af3: 22 d1     set1  $d1
0af5: f4 31     mov   a,$31+x
0af7: f0 24     beq   $0b1d
0af9: 9b 31     dec   $31+x
0afb: d0 09     bne   $0b06
0afd: f5 40 02  mov   a,$0240+x
0b00: d4 30     mov   $30+x,a
0b02: 22 d1     set1  $d1
0b04: 2f 17     bra   $0b1d
0b06: 60        clrc
0b07: f5 28 02  mov   a,$0228+x
0b0a: 95 29 02  adc   a,$0229+x
0b0d: d5 29 02  mov   $0229+x,a
0b10: f4 30     mov   a,$30+x
0b12: 95 11 02  adc   a,$0211+x
0b15: 74 30     cmp   a,$30+x
0b17: f0 04     beq   $0b1d
0b19: d4 30     mov   $30+x,a
0b1b: 22 d1     set1  $d1
0b1d: fb 79     mov   y,$79+x
0b1f: f0 2c     beq   $0b4d
0b21: f5 d0 02  mov   a,$02d0+x
0b24: 75 d1 02  cmp   a,$02d1+x
0b27: d0 1d     bne   $0b46
0b29: f5 e8 02  mov   a,$02e8+x
0b2c: 10 07     bpl   $0b35
0b2e: fc        inc   y
0b2f: d0 04     bne   $0b35
0b31: e8 80     mov   a,#$80
0b33: 2f 04     bra   $0b39
0b35: 60        clrc
0b36: 95 e9 02  adc   a,$02e9+x
0b39: d5 e8 02  mov   $02e8+x,a
0b3c: 3f c1 15  call  $15c1
0b3f: 43 d1 0b  bbs2  $d1,$0b4d
0b42: 22 d1     set1  $d1
0b44: 2f 07     bra   $0b4d
0b46: f5 d1 02  mov   a,$02d1+x
0b49: bc        inc   a
0b4a: d5 d1 02  mov   $02d1+x,a
0b4d: d3 d1 61  bbc6  $d1,$0bb1
0b50: f5 18 03  mov   a,$0318+x
0b53: c4 c2     mov   $c2,a
0b55: f5 01 03  mov   a,$0301+x
0b58: 30 24     bmi   $0b7e
0b5a: c4 c3     mov   $c3,a
0b5c: 60        clrc
0b5d: f5 30 03  mov   a,$0330+x
0b60: fd        mov   y,a
0b61: f5 19 03  mov   a,$0319+x
0b64: 7a c2     addw  ya,$c2
0b66: c4 c2     mov   $c2,a
0b68: dd        mov   a,y
0b69: 75 31 03  cmp   a,$0331+x
0b6c: 90 36     bcc   $0ba4
0b6e: f5 01 03  mov   a,$0301+x
0b71: 08 80     or    a,#$80
0b73: d5 01 03  mov   $0301+x,a
0b76: 8f 00 c2  mov   $c2,#$00
0b79: f5 31 03  mov   a,$0331+x
0b7c: 2f 26     bra   $0ba4
0b7e: 28 7f     and   a,#$7f
0b80: c4 c3     mov   $c3,a
0b82: f5 30 03  mov   a,$0330+x
0b85: fd        mov   y,a
0b86: f5 19 03  mov   a,$0319+x
0b89: 80        setc
0b8a: 9a c2     subw  ya,$c2
0b8c: c4 c2     mov   $c2,a
0b8e: dd        mov   a,y
0b8f: 30 13     bmi   $0ba4
0b91: 75 48 03  cmp   a,$0348+x
0b94: b0 0e     bcs   $0ba4
0b96: f5 01 03  mov   a,$0301+x
0b99: 28 7f     and   a,#$7f
0b9b: d5 01 03  mov   $0301+x,a
0b9e: 8f 00 c2  mov   $c2,#$00
0ba1: f5 48 03  mov   a,$0348+x
0ba4: d5 30 03  mov   $0330+x,a
0ba7: d5 10 02  mov   $0210+x,a
0baa: 22 d1     set1  $d1
0bac: e4 c2     mov   a,$c2
0bae: d5 19 03  mov   $0319+x,a
0bb1: f2 ca     clr7  $ca
0bb3: f4 49     mov   a,$49+x
0bb5: f0 31     beq   $0be8
0bb7: f5 71 02  mov   a,$0271+x
0bba: f0 06     beq   $0bc2
0bbc: 9c        dec   a
0bbd: d5 71 02  mov   $0271+x,a
0bc0: 2f 26     bra   $0be8
0bc2: 9b 49     dec   $49+x
0bc4: d0 0d     bne   $0bd3
0bc6: f5 70 02  mov   a,$0270+x
0bc9: d5 88 02  mov   $0288+x,a
0bcc: e8 00     mov   a,#$00
0bce: d5 59 02  mov   $0259+x,a
0bd1: 2f 15     bra   $0be8
0bd3: e2 ca     set7  $ca
0bd5: 60        clrc
0bd6: f5 58 02  mov   a,$0258+x
0bd9: 95 59 02  adc   a,$0259+x
0bdc: d5 59 02  mov   $0259+x,a
0bdf: f5 88 02  mov   a,$0288+x
0be2: 95 41 02  adc   a,$0241+x
0be5: d5 88 02  mov   $0288+x,a
0be8: 3f e8 16  call  $16e8
0beb: f4 60     mov   a,$60+x
0bed: f0 6b     beq   $0c5a
0bef: f5 89 02  mov   a,$0289+x
0bf2: 74 78     cmp   a,$78+x
0bf4: f0 04     beq   $0bfa
0bf6: bb 78     inc   $78+x
0bf8: 2f 60     bra   $0c5a
0bfa: f5 50 01  mov   a,$0150+x
0bfd: 75 a1 02  cmp   a,$02a1+x
0c00: d0 05     bne   $0c07
0c02: f5 b8 02  mov   a,$02b8+x
0c05: 2f 0d     bra   $0c14
0c07: 40        setp
0c08: bb 50     inc   $50+x
0c0a: 20        clrp
0c0b: fd        mov   y,a
0c0c: f0 02     beq   $0c10
0c0e: f4 60     mov   a,$60+x
0c10: 60        clrc
0c11: 95 b9 02  adc   a,$02b9+x
0c14: d4 60     mov   $60+x,a
0c16: f4 61     mov   a,$61+x
0c18: 60        clrc
0c19: 95 a0 02  adc   a,$02a0+x
0c1c: d4 61     mov   $61+x,a
0c1e: c4 c2     mov   $c2,a
0c20: 1c        asl   a
0c21: 1c        asl   a
0c22: 90 02     bcc   $0c26
0c24: 48 ff     eor   a,#$ff
0c26: fd        mov   y,a
0c27: f4 60     mov   a,$60+x
0c29: 68 f1     cmp   a,#$f1
0c2b: 90 05     bcc   $0c32
0c2d: 28 0f     and   a,#$0f
0c2f: cf        mul   ya
0c30: 2f 18     bra   $0c4a
0c32: cf        mul   ya
0c33: dd        mov   a,y
0c34: f0 27     beq   $0c5d
0c36: 75 91 03  cmp   a,$0391+x
0c39: f0 22     beq   $0c5d
0c3b: d5 91 03  mov   $0391+x,a
0c3e: 8d 00     mov   y,#$00
0c40: f3 c2 07  bbc7  $c2,$0c4a
0c43: da c8     movw  $c8,ya
0c45: e8 00     mov   a,#$00
0c47: fd        mov   y,a
0c48: 9a c8     subw  ya,$c8
0c4a: 7a cb     addw  ya,$cb
0c4c: da cb     movw  $cb,ya
0c4e: c8 10     cmp   x,#$10
0c50: b0 0c     bcs   $0c5e
0c52: e4 cd     mov   a,$cd
0c54: 24 15     and   a,$15
0c56: d0 05     bne   $0c5d
0c58: 2f 04     bra   $0c5e
0c5a: e3 ca f1  bbs7  $ca,$0c4e
0c5d: 6f        ret

0c5e: 43 d1 fc  bbs2  $d1,$0c5d
0c61: f2 ca     clr7  $ca
0c63: e4 cc     mov   a,$cc
0c65: 1c        asl   a
0c66: 8d 00     mov   y,#$00
0c68: cd 18     mov   x,#$18
0c6a: 9e        div   ya,x
0c6b: 5d        mov   x,a
0c6c: f6 de 17  mov   a,$17de+y
0c6f: c4 c7     mov   $c7,a
0c71: f6 dd 17  mov   a,$17dd+y
0c74: c4 c6     mov   $c6,a
0c76: f6 e0 17  mov   a,$17e0+y
0c79: c4 c2     mov   $c2,a
0c7b: f6 df 17  mov   a,$17df+y
0c7e: eb c2     mov   y,$c2
0c80: 9a c6     subw  ya,$c6
0c82: eb cb     mov   y,$cb
0c84: cf        mul   ya
0c85: dd        mov   a,y
0c86: 8d 00     mov   y,#$00
0c88: 7a c6     addw  ya,$c6
0c8a: cb c7     mov   $c7,y
0c8c: 1c        asl   a
0c8d: 2b c7     rol   $c7
0c8f: c4 c6     mov   $c6,a
0c91: 2f 04     bra   $0c97
0c93: 4b c7     lsr   $c7
0c95: 7c        ror   a
0c96: 3d        inc   x
0c97: c8 06     cmp   x,#$06
0c99: d0 f8     bne   $0c93
0c9b: c4 c6     mov   $c6,a
0c9d: f8 12     mov   x,$12
0c9f: f5 b0 01  mov   a,$01b0+x
0ca2: eb c7     mov   y,$c7
0ca4: cf        mul   ya
0ca5: da c8     movw  $c8,ya
0ca7: f5 b0 01  mov   a,$01b0+x
0caa: eb c6     mov   y,$c6
0cac: cf        mul   ya
0cad: cb c2     mov   $c2,y
0caf: f5 b1 01  mov   a,$01b1+x
0cb2: eb c6     mov   y,$c6
0cb4: cf        mul   ya
0cb5: 7a c8     addw  ya,$c8
0cb7: da c8     movw  $c8,ya
0cb9: f5 b1 01  mov   a,$01b1+x
0cbc: eb c7     mov   y,$c7
0cbe: cf        mul   ya
0cbf: fd        mov   y,a
0cc0: e4 c2     mov   a,$c2
0cc2: 7a c8     addw  ya,$c8
0cc4: da c8     movw  $c8,ya
0cc6: 8d 00     mov   y,#$00
0cc8: f5 81 01  mov   a,$0181+x
0ccb: d0 12     bne   $0cdf
0ccd: ba c8     movw  ya,$c8
0ccf: 2f 10     bra   $0ce1
0cd1: 8d 00     mov   y,#$00
0cd3: 28 7f     and   a,#$7f
0cd5: 10 08     bpl   $0cdf
0cd7: da c6     movw  $c6,ya
0cd9: ba c8     movw  ya,$c8
0cdb: 9a c6     subw  ya,$c6
0cdd: 2f 00     bra   $0cdf
0cdf: 7a c8     addw  ya,$c8
0ce1: da c8     movw  $c8,ya
0ce3: e4 13     mov   a,$13
0ce5: 08 02     or    a,#$02
0ce7: fd        mov   y,a
0ce8: e4 c8     mov   a,$c8
0cea: cb f2     mov   $f2,y
0cec: c4 f3     mov   $f3,a             ; set P(L)
0cee: fc        inc   y
0cef: e4 c9     mov   a,$c9
0cf1: 5f 7a 16  jmp   $167a             ; set P(H)

0cf4: f4 18     mov   a,$18+x
0cf6: f0 01     beq   $0cf9
0cf8: 6f        ret

0cf9: 3f 64 16  call  $1664             ; read vcmd
0cfc: fd        mov   y,a
0cfd: d0 60     bne   $0d5f
0cff: e4 15     mov   a,$15
0d01: c8 10     cmp   x,#$10
0d03: b0 05     bcs   $0d0a
0d05: 4e 00 00  tclr1 $0000
0d08: 2f 3b     bra   $0d45
0d0a: 4e cd 00  tclr1 $00cd
0d0d: 24 00     and   a,$00
0d0f: f0 2e     beq   $0d3f
0d11: 8f 01 c3  mov   $c3,#$01
0d14: cd 00     mov   x,#$00
0d16: 64 c3     cmp   a,$c3
0d18: f0 06     beq   $0d20
0d1a: 3d        inc   x
0d1b: 3d        inc   x
0d1c: 0b c3     asl   $c3
0d1e: d0 f6     bne   $0d16
0d20: f5 61 03  mov   a,$0361+x
0d23: c4 c5     mov   $c5,a
0d25: 3f f3 0e  call  $0ef3
0d28: 3f 93 16  call  $1693
0d2b: f5 c8 01  mov   a,$01c8+x
0d2e: 08 02     or    a,#$02
0d30: d5 c8 01  mov   $01c8+x,a
0d33: e4 eb     mov   a,$eb
0d35: eb cd     mov   y,$cd
0d37: f0 02     beq   $0d3b
0d39: 24 02     and   a,$02
0d3b: c4 02     mov   $02,a
0d3d: f8 12     mov   x,$12
0d3f: e8 00     mov   a,#$00
0d41: d4 cb     mov   $cb+x,a
0d43: d4 cc     mov   $cc+x,a
0d45: e4 15     mov   a,$15
0d47: 4e ea 00  tclr1 $00ea
0d4a: 4e e3 00  tclr1 $00e3
0d4d: 8d 5c     mov   y,#$5c
0d4f: 3f 7a 16  call  $167a             ; set KOF
0d52: e8 00     mov   a,#$00
0d54: 8d 2d     mov   y,#$2d
0d56: 3f 7a 16  call  $167a             ; set PMON
0d59: 8d 3d     mov   y,#$3d
0d5b: 3f 7a 16  call  $167a             ; set NON
0d5e: 6f        ret

0d5f: fd        mov   y,a
0d60: 10 41     bpl   $0da3
0d62: 68 c8     cmp   a,#$c8
0d64: f0 1f     beq   $0d85
0d66: 68 c9     cmp   a,#$c9
0d68: f0 10     beq   $0d7a
0d6a: 68 ca     cmp   a,#$ca
0d6c: f0 07     beq   $0d75
0d6e: 68 d0     cmp   a,#$d0
0d70: 90 31     bcc   $0da3
0d72: 5f 63 0e  jmp   $0e63

; vcmd ea
0d75: 42 d1     set2  $d1
0d77: 5f 0b 0e  jmp   $0e0b

; vcmd c9
0d7a: 3f 66 16  call  $1666
0d7d: d5 51 01  mov   $0151+x,a
0d80: 72 d1     clr3  $d1
0d82: 5f 0b 0e  jmp   $0e0b

; vcmd c8
0d85: 3f 64 16  call  $1664             ; read byte from voice ptr
0d88: fd        mov   y,a
0d89: 3f 8f 0d  call  $0d8f
0d8c: 5f f9 0c  jmp   $0cf9

0d8f: d5 51 01  mov   $0151+x,a
0d92: d4 18     mov   $18+x,a
0d94: f5 69 01  mov   a,$0169+x
0d97: cf        mul   ya
0d98: dd        mov   a,y
0d99: d0 02     bne   $0d9d
0d9b: e8 01     mov   a,#$01
0d9d: d4 19     mov   $19+x,a
0d9f: d5 68 01  mov   $0168+x,a
0da2: 6f        ret

; vcmd 00-7f,cb-cf
0da3: 52 d1     clr2  $d1
0da5: 68 10     cmp   a,#$10
0da7: b0 07     bcs   $0db0
0da9: c4 11     mov   $11,a
0dab: 3f cb 0e  call  $0ecb
0dae: e8 a4     mov   a,#$a4
0db0: 28 7f     and   a,#$7f
0db2: 60        clrc
0db3: c8 10     cmp   x,#$10
0db5: b0 03     bcs   $0dba
0db7: 60        clrc
0db8: 84 0f     adc   a,$0f
0dba: 60        clrc
0dbb: 95 80 01  adc   a,$0180+x
0dbe: d5 88 02  mov   $0288+x,a
0dc1: c4 cc     mov   $cc,a
0dc3: 8f 00 cb  mov   $cb,#$00
0dc6: f5 a1 02  mov   a,$02a1+x
0dc9: 5c        lsr   a
0dca: e8 00     mov   a,#$00
0dcc: 7c        ror   a
0dcd: d4 61     mov   $61+x,a
0dcf: e8 00     mov   a,#$00
0dd1: d4 78     mov   $78+x,a
0dd3: d5 50 01  mov   $0150+x,a
0dd6: d5 59 02  mov   $0259+x,a
0dd9: d5 e8 02  mov   $02e8+x,a
0ddc: d5 d1 02  mov   $02d1+x,a
0ddf: c8 10     cmp   x,#$10
0de1: b0 06     bcs   $0de9
0de3: e4 15     mov   a,$15
0de5: 24 cd     and   a,$cd
0de7: d0 19     bne   $0e02
0de9: f3 d1 0d  bbc7  $d1,$0df9
0dec: e4 15     mov   a,$15
0dee: 8d 5c     mov   y,#$5c
0df0: 3f 7a 16  call  $167a             ; set KOF
0df3: 3f bb 16  call  $16bb
0df6: 3f 93 16  call  $1693
0df9: 3f 63 0c  call  $0c63
0dfc: a3 d1 03  bbs5  $d1,$0e02
0dff: 09 15 16  or    ($16),($15)
0e02: e7 90     mov   a,($90+x)
0e04: 68 e7     cmp   a,#$e7
0e06: d0 05     bne   $0e0d
0e08: 3f 2e 0e  call  $0e2e
0e0b: e7 90     mov   a,($90+x)
0e0d: 68 c9     cmp   a,#$c9
0e0f: d0 07     bne   $0e18
0e11: 62 d1     set3  $d1
0e13: 93 d1 02  bbc4  $d1,$0e18
0e16: a2 d1     set5  $d1
0e18: 43 d1 08  bbs2  $d1,$0e23
0e1b: f5 51 01  mov   a,$0151+x
0e1e: fd        mov   y,a
0e1f: 3f 92 0d  call  $0d92
0e22: 6f        ret

0e23: f5 51 01  mov   a,$0151+x
0e26: d4 18     mov   $18+x,a
0e28: f5 68 01  mov   a,$0168+x
0e2b: d4 19     mov   $19+x,a
0e2d: 6f        ret

0e2e: 3f 5e 16  call  $165e
0e31: d5 71 02  mov   $0271+x,a
0e34: 3f 64 16  call  $1664             ; read byte from voice ptr
0e37: d4 49     mov   $49+x,a
0e39: 3f 64 16  call  $1664             ; read byte from voice ptr
0e3c: c8 10     cmp   x,#$10
0e3e: b0 03     bcs   $0e43
0e40: 60        clrc
0e41: 84 0f     adc   a,$0f
0e43: 60        clrc
0e44: 95 80 01  adc   a,$0180+x
0e47: 28 7f     and   a,#$7f
0e49: d5 70 02  mov   $0270+x,a
0e4c: 8d 00     mov   y,#$00
0e4e: cb c2     mov   $c2,y
0e50: 80        setc
0e51: b5 88 02  sbc   a,$0288+x
0e54: fb 49     mov   y,$49+x
0e56: 6d        push  y
0e57: ce        pop   x
0e58: 3f cc 16  call  $16cc
0e5b: d5 58 02  mov   $0258+x,a
0e5e: dd        mov   a,y
0e5f: d5 41 02  mov   $0241+x,a
0e62: 6f        ret

; dispatch vcmd
0e63: 80        setc
0e64: a8 d0     sbc   a,#$d0
0e66: 1c        asl   a
0e67: 5d        mov   x,a
0e68: f5 77 0e  mov   a,$0e77+x
0e6b: c4 c2     mov   $c2,a
0e6d: f5 78 0e  mov   a,$0e78+x
0e70: c4 c3     mov   $c3,a
0e72: cd 00     mov   x,#$00
0e74: 1f c2 00  jmp   ($00c2+x)

; vcmd dispatch table
0e77: dw $0ed3  ; d0
0e79: dw $0ffb  ; d1
0e7b: dw $0f1d  ; d2
0e7d: dw $0f3e  ; d3
0e7f: dw $0f5d  ; d4
0e81: dw $0f6c  ; d5
0e83: dw $0f9f  ; d6
0e85: dw $0f83  ; d7
0e87: dw $1003  ; d8
0e89: dw $0fc2  ; d9
0e8b: dw $102b  ; da
0e8d: dw $0fca  ; db
0e8f: dw $0fd4  ; dc
0e91: dw $104d  ; dd
0e93: dw $106a  ; de
0e95: dw $10a8  ; df
0e97: dw $105e  ; e0
0e99: dw $10af  ; e1
0e9b: dw $10b7  ; e2
0e9d: dw $10c0  ; e3
0e9f: dw $10c9  ; e4
0ea1: dw $10da  ; e5
0ea3: dw $10eb  ; e6
0ea5: dw $10f9  ; e7
0ea7: dw $10fe  ; e8
0ea9: dw $1105  ; e9
0eab: dw $110c  ; ea
0ead: dw $1117  ; eb
0eaf: dw $111f  ; ec
0eb1: dw $115a  ; ed
0eb3: dw $116d  ; ee
0eb5: dw $1186  ; ef
0eb7: dw $119f  ; f0
0eb9: dw $11d1  ; f1
0ebb: dw $11f9  ; f2
0ebd: dw $1202  ; f3
0ebf: dw $120a  ; f4
0ec1: dw $1212  ; f5 - goto
0ec3: dw $121e  ; f6 - call subroutine
0ec5: dw $123f  ; f7 - end subroutine
0ec7: dw $1259  ; f8
0ec9: dw $1271  ; f9

0ecb: 80        setc
0ecc: a8 10     sbc   a,#$10
0ece: 8f 80 11  mov   $11,#$80
0ed1: 2f 03     bra   $0ed6
; vcmd d0
0ed3: 3f 64 16  call  $1664             ; read byte from voice ptr
0ed6: c4 c5     mov   $c5,a
0ed8: c8 10     cmp   x,#$10
0eda: b0 09     bcs   $0ee5
0edc: d5 61 03  mov   $0361+x,a
0edf: e4 cd     mov   a,$cd
0ee1: 24 15     and   a,$15
0ee3: d0 03     bne   $0ee8
0ee5: 3f f3 0e  call  $0ef3
0ee8: e4 11     mov   a,$11
0eea: 30 03     bmi   $0eef
0eec: 5f f9 0c  jmp   $0cf9

0eef: 8f 00 11  mov   $11,#$00
0ef2: 6f        ret

0ef3: e4 13     mov   a,$13
0ef5: 08 04     or    a,#$04
0ef7: c4 14     mov   $14,a
0ef9: 8f 00 c2  mov   $c2,#$00
0efc: 8f 18 c3  mov   $c3,#$18
0eff: e4 c5     mov   a,$c5
0f01: eb 14     mov   y,$14
0f03: cb f2     mov   $f2,y
0f05: c4 f3     mov   $f3,a             ; set SRCN
0f07: 8d 00     mov   y,#$00
0f09: e4 c5     mov   a,$c5
0f0b: f0 04     beq   $0f11
0f0d: 8d 02     mov   y,#$02
0f0f: cf        mul   ya
0f10: fd        mov   y,a
0f11: f7 c2     mov   a,($c2)+y
0f13: d5 b1 01  mov   $01b1+x,a
0f16: fc        inc   y
0f17: f7 c2     mov   a,($c2)+y
0f19: d5 b0 01  mov   $01b0+x,a
0f1c: 6f        ret

; vcmd d2
0f1d: 3f 64 16  call  $1664             ; read byte from voice ptr
0f20: 08 80     or    a,#$80
0f22: c4 c2     mov   $c2,a
0f24: c8 10     cmp   x,#$10
0f26: b0 09     bcs   $0f31
0f28: d5 49 03  mov   $0349+x,a
0f2b: e4 cd     mov   a,$cd
0f2d: 24 15     and   a,$15
0f2f: d0 0a     bne   $0f3b
0f31: e4 13     mov   a,$13
0f33: 08 05     or    a,#$05
0f35: fd        mov   y,a
0f36: e4 c2     mov   a,$c2
0f38: 3f 7a 16  call  $167a             ; set ADSR(1)
0f3b: 5f f9 0c  jmp   $0cf9

; vcmd d3
0f3e: 3f 64 16  call  $1664             ; read byte from voice ptr
0f41: c4 c2     mov   $c2,a
0f43: c8 10     cmp   x,#$10
0f45: b0 09     bcs   $0f50
0f47: d5 60 03  mov   $0360+x,a
0f4a: e4 cd     mov   a,$cd
0f4c: 24 15     and   a,$15
0f4e: d0 0a     bne   $0f5a
0f50: e4 13     mov   a,$13
0f52: 08 06     or    a,#$06
0f54: fd        mov   y,a
0f55: e4 c2     mov   a,$c2
0f57: 3f 7a 16  call  $167a             ; set ADSR(2)
0f5a: 5f f9 0c  jmp   $0cf9

; vcmd d4
0f5d: 3f 64 16  call  $1664             ; read byte from voice ptr
0f60: 28 1f     and   a,#$1f
0f62: 08 a0     or    a,#$a0
0f64: d5 99 01  mov   $0199+x,a
0f67: e2 d1     set7  $d1
0f69: 5f f9 0c  jmp   $0cf9

; vcmd d5
0f6c: f8 12     mov   x,$12
0f6e: f2 d1     clr7  $d1
0f70: c8 10     cmp   x,#$10
0f72: b0 06     bcs   $0f7a
0f74: e4 cd     mov   a,$cd
0f76: 24 15     and   a,$15
0f78: d0 06     bne   $0f80
0f7a: 3f bb 16  call  $16bb
0f7d: 3f 93 16  call  $1693
0f80: 5f f9 0c  jmp   $0cf9

; vcmd d7
0f83: 3f 64 16  call  $1664             ; read byte from voice ptr
0f86: c4 c2     mov   $c2,a
0f88: 38 3f d2  and   $d2,#$3f
0f8b: e8 c0     mov   a,#$c0
0f8d: 24 c2     and   a,$c2
0f8f: 04 d2     or    a,$d2
0f91: c4 d2     mov   $d2,a
0f93: e4 c2     mov   a,$c2
0f95: 28 1f     and   a,#$1f
0f97: d5 10 02  mov   $0210+x,a
0f9a: 22 d1     set1  $d1
0f9c: 5f f9 0c  jmp   $0cf9

; vcmd d6
0f9f: 3f 64 16  call  $1664             ; read byte from voice ptr
0fa2: c4 c2     mov   $c2,a
0fa4: 28 70     and   a,#$70
0fa6: 9f        xcn   a
0fa7: 5d        mov   x,a
0fa8: f5 b3 17  mov   a,$17b3+x
0fab: f8 12     mov   x,$12
0fad: d5 69 01  mov   $0169+x,a
0fb0: e4 c2     mov   a,$c2
0fb2: 28 0f     and   a,#$0f
0fb4: 5d        mov   x,a
0fb5: f5 bb 17  mov   a,$17bb+x
0fb8: f8 12     mov   x,$12
0fba: d5 98 01  mov   $0198+x,a
0fbd: 22 d1     set1  $d1
0fbf: 5f f9 0c  jmp   $0cf9

; vcmd d9
0fc2: 3f 64 16  call  $1664             ; read byte from voice ptr
0fc5: c4 0d     mov   $0d,a
0fc7: 5f f9 0c  jmp   $0cf9

; vcmd db
0fca: 3f 64 16  call  $1664             ; read byte from voice ptr
0fcd: d4 30     mov   $30+x,a
0fcf: 22 d1     set1  $d1
0fd1: 5f f9 0c  jmp   $0cf9

; vcmd dc
0fd4: 3f 58 16  call  $1658             ; read word from voice ptr
0fd7: eb c2     mov   y,$c2
0fd9: db 31     mov   $31+x,y
0fdb: d5 40 02  mov   $0240+x,a
0fde: 8d 00     mov   y,#$00
0fe0: cb c2     mov   $c2,y
0fe2: 80        setc
0fe3: b4 30     sbc   a,$30+x
0fe5: fb 31     mov   y,$31+x
0fe7: 6d        push  y
0fe8: ce        pop   x
0fe9: 3f cc 16  call  $16cc
0fec: d5 28 02  mov   $0228+x,a
0fef: dd        mov   a,y
0ff0: d5 11 02  mov   $0211+x,a
0ff3: e8 00     mov   a,#$00
0ff5: d5 29 02  mov   $0229+x,a
0ff8: 5f f9 0c  jmp   $0cf9

; vcmd d1
0ffb: 3f 64 16  call  $1664             ; read byte from voice ptr
0ffe: c4 10     mov   $10,a
1000: 5f f9 0c  jmp   $0cf9

; vcmd d8
1003: 3f 58 16  call  $1658             ; read word from voice ptr
1006: eb c2     mov   y,$c2
1008: db 48     mov   $48+x,y
100a: d5 f9 01  mov   $01f9+x,a
100d: 8d 00     mov   y,#$00
100f: cb c2     mov   $c2,y
1011: 80        setc
1012: b5 10 02  sbc   a,$0210+x
1015: fb 48     mov   y,$48+x
1017: 6d        push  y
1018: ce        pop   x
1019: 3f cc 16  call  $16cc
101c: d5 e1 01  mov   $01e1+x,a
101f: dd        mov   a,y
1020: d5 e0 01  mov   $01e0+x,a
1023: e8 00     mov   a,#$00
1025: d5 f8 01  mov   $01f8+x,a
1028: 5f f9 0c  jmp   $0cf9

; vcmd da
102b: 3f 58 16  call  $1658             ; read word from voice ptr
102e: eb c2     mov   y,$c2
1030: cb 08     mov   $08,y
1032: c4 0c     mov   $0c,a
1034: 8d 00     mov   y,#$00
1036: cb c2     mov   $c2,y
1038: 80        setc
1039: a4 0d     sbc   a,$0d
103b: eb 08     mov   y,$08
103d: 6d        push  y
103e: ce        pop   x
103f: 3f cc 16  call  $16cc
1042: c4 0a     mov   $0a,a
1044: dd        mov   a,y
1045: c4 09     mov   $09,a
1047: 8f 00 0b  mov   $0b,#$00
104a: 5f f9 0c  jmp   $0cf9

; vcmd dd
104d: 3f 64 16  call  $1664             ; read byte from voice ptr
1050: d5 d0 02  mov   $02d0+x,a
1053: 3f 64 16  call  $1664             ; read byte from voice ptr
1056: d5 e9 02  mov   $02e9+x,a
1059: 3f 64 16  call  $1664             ; read byte from voice ptr
105c: 2f 07     bra   $1065
; vcmd e0
105e: f8 12     mov   x,$12
1060: e8 00     mov   a,#$00
1062: d5 00 03  mov   $0300+x,a
1065: d4 79     mov   $79+x,a
1067: 5f f9 0c  jmp   $0cf9

; vcmd de
106a: c2 d1     set6  $d1
106c: 3f 58 16  call  $1658             ; read word from voice ptr
106f: c4 c3     mov   $c3,a
1071: 60        clrc
1072: 95 10 02  adc   a,$0210+x
1075: 68 15     cmp   a,#$15
1077: 90 02     bcc   $107b
1079: e8 14     mov   a,#$14
107b: d5 31 03  mov   $0331+x,a
107e: 80        setc
107f: f5 10 02  mov   a,$0210+x
1082: d5 30 03  mov   $0330+x,a
1085: a4 c3     sbc   a,$c3
1087: 10 02     bpl   $108b
1089: e8 00     mov   a,#$00
108b: d5 48 03  mov   $0348+x,a
108e: e8 00     mov   a,#$00
1090: d5 19 03  mov   $0319+x,a
1093: f8 c2     mov   x,$c2
1095: e4 c3     mov   a,$c3
1097: 1c        asl   a
1098: 8f 00 c2  mov   $c2,#$00
109b: 3f d4 16  call  $16d4
109e: d5 18 03  mov   $0318+x,a
10a1: dd        mov   a,y
10a2: d5 01 03  mov   $0301+x,a
10a5: 5f f9 0c  jmp   $0cf9

; vcmd df
10a8: f8 12     mov   x,$12
10aa: d2 d1     clr6  $d1
10ac: 5f f9 0c  jmp   $0cf9

; vcmd e1
10af: 3f 64 16  call  $1664             ; read byte from voice ptr
10b2: c4 0f     mov   $0f,a
10b4: 5f f9 0c  jmp   $0cf9

; vcmd e2
10b7: 3f 64 16  call  $1664             ; read byte from voice ptr
10ba: d5 80 01  mov   $0180+x,a
10bd: 5f f9 0c  jmp   $0cf9

; vcmd e3
10c0: 3f 64 16  call  $1664             ; read byte from voice ptr
10c3: d5 81 01  mov   $0181+x,a
10c6: 5f f9 0c  jmp   $0cf9

; vcmd e4
10c9: 3f 64 16  call  $1664             ; read byte from voice ptr
10cc: d5 89 02  mov   $0289+x,a
10cf: 3f 66 16  call  $1666
10d2: d5 a0 02  mov   $02a0+x,a
10d5: 3f 66 16  call  $1666
10d8: 2f 04     bra   $10de
; vcmd e5
10da: f8 12     mov   x,$12
10dc: e8 00     mov   a,#$00
10de: d4 60     mov   $60+x,a
10e0: d5 b8 02  mov   $02b8+x,a
10e3: e8 00     mov   a,#$00
10e5: d5 a1 02  mov   $02a1+x,a
10e8: 5f f9 0c  jmp   $0cf9

; vcmd e6
10eb: 3f 58 16  call  $1658             ; read word from voice ptr
10ee: d5 b0 01  mov   $01b0+x,a
10f1: e4 c2     mov   a,$c2
10f3: d5 b1 01  mov   $01b1+x,a
10f6: 5f f9 0c  jmp   $0cf9

; vcmd e7
10f9: f8 12     mov   x,$12
10fb: 5f f9 0c  jmp   $0cf9

; vcmd e8
10fe: f8 12     mov   x,$12
1100: 82 d1     set4  $d1
1102: 5f f9 0c  jmp   $0cf9

; vcmd e9
1105: f8 12     mov   x,$12
1107: 92 d1     clr4  $d1
1109: 5f f9 0c  jmp   $0cf9

; vcmd ea
110c: 3f 64 16  call  $1664             ; read byte from voice ptr
110f: c4 07     mov   $07,a
1111: 3f f3 16  call  $16f3
1114: 5f f9 0c  jmp   $0cf9

; vcmd eb
1117: 3f 64 16  call  $1664             ; read byte from voice ptr
111a: c4 06     mov   $06,a
111c: 5f f9 0c  jmp   $0cf9

; vcmd ec
111f: 3f 64 16  call  $1664             ; read byte from voice ptr
1122: 8f 00 c2  mov   $c2,#$00
1125: 8f 3a c3  mov   $c3,#$3a
1128: c4 c7     mov   $c7,a
112a: 8d 00     mov   y,#$00
112c: f7 c2     mov   a,($c2)+y
112e: c4 c4     mov   $c4,a
1130: fc        inc   y
1131: f7 c2     mov   a,($c2)+y
1133: c4 c5     mov   $c5,a
1135: dc        dec   y
1136: f7 c4     mov   a,($c4)+y
1138: c4 c8     mov   $c8,a
113a: fc        inc   y
113b: f7 c4     mov   a,($c4)+y
113d: c4 c9     mov   $c9,a
113f: e4 c7     mov   a,$c7
1141: 8d 08     mov   y,#$08
1143: cf        mul   ya
1144: fd        mov   y,a
1145: cd 0f     mov   x,#$0f
1147: f7 c8     mov   a,($c8)+y
1149: d8 f2     mov   $f2,x
114b: c4 f3     mov   $f3,a             ; set FIR C0-C7
114d: fc        inc   y
114e: 7d        mov   a,x
114f: 60        clrc
1150: 88 10     adc   a,#$10
1152: 5d        mov   x,a
1153: 10 f2     bpl   $1147
1155: f8 12     mov   x,$12
1157: 5f f9 0c  jmp   $0cf9

; vcmd ed
115a: 3f 64 16  call  $1664             ; read byte from voice ptr
115d: 43 d0 0a  bbs2  $d0,$116a
1160: 28 7f     and   a,#$7f
1162: c4 05     mov   $05,a
1164: c4 03     mov   $03,a
1166: c4 04     mov   $04,a
1168: b2 01     clr5  $01
116a: 5f f9 0c  jmp   $0cf9

; vcmd ee
116d: f8 12     mov   x,$12
116f: e4 15     mov   a,$15
1171: c8 10     cmp   x,#$10
1173: b0 0b     bcs   $1180
1175: e4 cd     mov   a,$cd
1177: 24 15     and   a,$15
1179: d0 08     bne   $1183
117b: e4 15     mov   a,$15
117d: 0e eb 00  tset1 $00eb
1180: 0e 02 00  tset1 $0002
1183: 5f f9 0c  jmp   $0cf9

; vcmd ef
1186: f8 12     mov   x,$12
1188: e4 15     mov   a,$15
118a: c8 10     cmp   x,#$10
118c: b0 0b     bcs   $1199
118e: e4 cd     mov   a,$cd
1190: 24 15     and   a,$15
1192: d0 08     bne   $119c
1194: e4 15     mov   a,$15
1196: 4e eb 00  tclr1 $00eb
1199: 4e 02 00  tclr1 $0002
119c: 5f f9 0c  jmp   $0cf9

; vcmd f0
119f: f8 12     mov   x,$12
11a1: e8 20     mov   a,#$20
11a3: 24 01     and   a,$01
11a5: c4 01     mov   $01,a
11a7: 3f 66 16  call  $1666
11aa: 28 1f     and   a,#$1f
11ac: c4 e9     mov   $e9,a
11ae: 04 01     or    a,$01
11b0: c4 01     mov   $01,a
11b2: fa 15 e3  mov   ($e3),($15)
11b5: 09 15 16  or    ($16),($15)
11b8: 52 d1     clr2  $d1
11ba: e7 90     mov   a,($90+x)
11bc: 68 f1     cmp   a,#$f1
11be: f0 07     beq   $11c7
11c0: f5 51 01  mov   a,$0151+x
11c3: fd        mov   y,a
11c4: 5f 92 0d  jmp   $0d92

11c7: 3f 5e 16  call  $165e
11ca: c4 c2     mov   $c2,a
11cc: 3f 64 16  call  $1664             ; read byte from voice ptr
11cf: 2f 03     bra   $11d4
; vcmd f1
11d1: 3f 58 16  call  $1658             ; read word from voice ptr
11d4: c8 10     cmp   x,#$10
11d6: 90 ef     bcc   $11c7
11d8: eb c2     mov   y,$c2
11da: cb e4     mov   $e4,y
11dc: c4 e8     mov   $e8,a
11de: 8d 00     mov   y,#$00
11e0: 8f 00 c2  mov   $c2,#$00
11e3: 80        setc
11e4: a4 e9     sbc   a,$e9
11e6: eb e4     mov   y,$e4
11e8: 6d        push  y
11e9: ce        pop   x
11ea: 3f cc 16  call  $16cc
11ed: c4 e6     mov   $e6,a
11ef: dd        mov   a,y
11f0: c4 e5     mov   $e5,a
11f2: e4 e4     mov   a,$e4
11f4: fd        mov   y,a
11f5: 3f 8f 0d  call  $0d8f
11f8: 6f        ret

; vcmd f2
11f9: f8 12     mov   x,$12
11fb: e8 00     mov   a,#$00
11fd: c4 e3     mov   $e3,a
11ff: 5f f9 0c  jmp   $0cf9

; vcmd f3
1202: f8 12     mov   x,$12
1204: 09 15 ea  or    ($ea),($15)
1207: 5f f9 0c  jmp   $0cf9

; vcmd f4
120a: f8 12     mov   x,$12
120c: 8f 00 ea  mov   $ea,#$00
120f: 5f f9 0c  jmp   $0cf9

; vcmd f5 - goto
1212: 3f 58 16  call  $1658             ; read word from voice ptr
1215: d4 91     mov   $91+x,a
1217: e4 c2     mov   a,$c2
1219: d4 90     mov   $90+x,a           ; jump to the destination address
121b: 5f f9 0c  jmp   $0cf9

; vcmd f6 - call subroutine
121e: 3f 58 16  call  $1658             ; read word from voice ptr
1221: fd        mov   y,a
1222: f4 90     mov   a,$90+x
1224: c7 a8     mov   ($a8+x),a
1226: f4 91     mov   a,$91+x
1228: bb a8     inc   $a8+x
122a: c7 a8     mov   ($a8+x),a         ; push return address
122c: bb a8     inc   $a8+x
122e: e4 c2     mov   a,$c2
1230: d4 90     mov   $90+x,a
1232: dd        mov   a,y
1233: d4 91     mov   $91+x,a           ; jump to the destination address
1235: f5 78 03  mov   a,$0378+x
1238: bc        inc   a
1239: d5 78 03  mov   $0378+x,a         ; increment subroutine nest level
123c: 5f f9 0c  jmp   $0cf9

; vcmd f7 - end subroutine
123f: f8 12     mov   x,$12
1241: f5 78 03  mov   a,$0378+x
1244: f0 10     beq   $1256             ; skip if subroutine nest level == 0
1246: 9c        dec   a
1247: d5 78 03  mov   $0378+x,a         ; decrease nest level
124a: 9b a8     dec   $a8+x
124c: e7 a8     mov   a,($a8+x)
124e: d4 91     mov   $91+x,a
1250: 9b a8     dec   $a8+x
1252: e7 a8     mov   a,($a8+x)
1254: d4 90     mov   $90+x,a           ; back to the return address
1256: 5f f9 0c  jmp   $0cf9

; vcmd f8 - repeat start
1259: 3f 64 16  call  $1664             ; arg1: repeat count
125c: fd        mov   y,a
125d: f4 90     mov   a,$90+x
125f: c7 a8     mov   ($a8+x),a
1261: bb a8     inc   $a8+x
1263: f4 91     mov   a,$91+x
1265: c7 a8     mov   ($a8+x),a         ; push the repeat start address to stack
1267: bb a8     inc   $a8+x
1269: dd        mov   a,y
126a: c7 a8     mov   ($a8+x),a         ; push repeat count
126c: bb a8     inc   $a8+x
126e: 5f f9 0c  jmp   $0cf9

; vcmd f9 - repeat end
1271: f8 12     mov   x,$12
1273: 9b a8     dec   $a8+x
1275: e7 a8     mov   a,($a8+x)         ; pop repeat count
1277: 9c        dec   a
1278: d0 07     bne   $1281             ; repeat again if non-zero
; repeat over
127a: 9b a8     dec   $a8+x
127c: 9b a8     dec   $a8+x
127e: 5f f9 0c  jmp   $0cf9
; repeat again
1281: c7 a8     mov   ($a8+x),a         ; update the repeat count
1283: 9b a8     dec   $a8+x
1285: e7 a8     mov   a,($a8+x)
1287: d4 91     mov   $91+x,a
1289: 9b a8     dec   $a8+x
128b: e7 a8     mov   a,($a8+x)
128d: d4 90     mov   $90+x,a           ; back to the repeat start address
128f: bb a8     inc   $a8+x
1291: bb a8     inc   $a8+x
1293: bb a8     inc   $a8+x             ; restore the stack pointer
1295: 5f f9 0c  jmp   $0cf9

; dispatch cpucmd
1298: 68 f0     cmp   a,#$f0
129a: 90 15     bcc   $12b1
129c: 28 0f     and   a,#$0f
129e: 1c        asl   a
129f: d8 c2     mov   $c2,x
12a1: 5d        mov   x,a
12a2: f5 fd 13  mov   a,$13fd+x
12a5: c4 c4     mov   $c4,a
12a7: f5 fe 13  mov   a,$13fe+x
12aa: c4 c5     mov   $c5,a
12ac: cd 00     mov   x,#$00
12ae: 1f c4 00  jmp   ($00c4+x)

; load song A
12b1: 68 b6     cmp   a,#$b6
12b3: b0 5f     bcs   $1314             ; skip if a >= 0xb6
12b5: 68 10     cmp   a,#$10
12b7: 90 0b     bcc   $12c4
; a >= 0x10
12b9: 80        setc
12ba: a8 10     sbc   a,#$10
12bc: 8f 00 c2  mov   $c2,#$00
12bf: 8f 1a c3  mov   $c3,#$1a          ; sfx list ptr $1a00?
12c2: 2f 18     bra   $12dc
; a < 0x10
12c4: 8f 00 c2  mov   $c2,#$00
12c7: 8f 3a c3  mov   $c3,#$3a          ; song list ptr $3a00
12ca: cd 00     mov   x,#$00
12cc: d8 02     mov   $02,x
12ce: d8 06     mov   $06,x
12d0: d8 03     mov   $03,x
12d2: d8 04     mov   $04,x
12d4: d8 0f     mov   $0f,x
12d6: 23 d0 03  bbs1  $d0,$12dc
12d9: 8f ff 10  mov   $10,#$ff
;
12dc: 8d 00     mov   y,#$00
12de: c4 c7     mov   $c7,a
12e0: f7 c2     mov   a,($c2)+y
12e2: c4 c4     mov   $c4,a
12e4: fc        inc   y
12e5: f7 c2     mov   a,($c2)+y
12e7: c4 c5     mov   $c5,a             ; $c4/5 = pointer to song table
12e9: e4 c7     mov   a,$c7
12eb: 8f 00 c6  mov   $c6,#$00
12ee: 1c        asl   a
12ef: 2b c6     rol   $c6
12f1: eb c6     mov   y,$c6
12f3: 7a c4     addw  ya,$c4
12f5: da c4     movw  $c4,ya            ; $c4/5 += song number * 2
12f7: 8d 00     mov   y,#$00
12f9: f7 c4     mov   a,($c4)+y
12fb: c4 c8     mov   $c8,a
12fd: fc        inc   y
12fe: f7 c4     mov   a,($c4)+y         ; read song header address from $c4/5
1300: c4 c9     mov   $c9,a             ; then set it to $c8/9
1302: dc        dec   y
; start reading track header
1303: f7 c8     mov   a,($c8)+y         ; header +00h - track index 0,2,4... (i.e. load destination)
1305: 3a c8     incw  $c8
1307: c4 c2     mov   $c2,a
1309: 28 1f     and   a,#$1f
130b: c4 12     mov   $12,a
130d: f7 c8     mov   a,($c8)+y         ; header +01h - track mask 01,02,04... (0: end of header)
130f: 3a c8     incw  $c8
1311: fd        mov   y,a
1312: d0 01     bne   $1315
; zero indicates the end of header, so quit now
1314: 6f        ret
; load track
1315: c4 c3     mov   $c3,a
1317: f8 12     mov   x,$12
1319: c8 10     cmp   x,#$10
131b: b0 06     bcs   $1323
131d: 24 cd     and   a,$cd
131f: f0 3b     beq   $135c
1321: 2f 1c     bra   $133f
1323: e4 c2     mov   a,$c2
1325: 28 e0     and   a,#$e0
1327: 9f        xcn   a
1328: 5c        lsr   a
1329: c4 c2     mov   $c2,a
132b: cd 16     mov   x,#$16
132d: f4 cc     mov   a,$cc+x
132f: f0 17     beq   $1348
1331: e4 c3     mov   a,$c3
1333: 74 cc     cmp   a,$cc+x
1335: d0 11     bne   $1348
1337: f4 cb     mov   a,$cb+x
1339: 64 c2     cmp   a,$c2
133b: f0 0b     beq   $1348
133d: 90 09     bcc   $1348
133f: 20        clrp
1340: 3a c8     incw  $c8
1342: 3a c8     incw  $c8
1344: 8d 00     mov   y,#$00
1346: 2f bb     bra   $1303
1348: 1d        dec   x
1349: 1d        dec   x
134a: c8 0e     cmp   x,#$0e
134c: d0 df     bne   $132d
134e: f8 12     mov   x,$12
1350: e4 c2     mov   a,$c2
1352: d4 cb     mov   $cb+x,a
1354: f4 cc     mov   a,$cc+x
1356: c4 c6     mov   $c6,a
1358: e4 c3     mov   a,$c3
135a: d4 cc     mov   $cc+x,a
135c: e8 00     mov   a,#$00
135e: d5 c9 01  mov   $01c9+x,a
1361: d5 c8 01  mov   $01c8+x,a
1364: d5 78 03  mov   $0378+x,a
1367: d5 80 01  mov   $0180+x,a
136a: d4 18     mov   $18+x,a
136c: d5 48 00  mov   $0048+x,a
136f: d5 31 00  mov   $0031+x,a
1372: d5 49 00  mov   $0049+x,a
1375: d5 81 01  mov   $0181+x,a
1378: d4 60     mov   $60+x,a
137a: d4 79     mov   $79+x,a
137c: d5 00 03  mov   $0300+x,a
137f: d4 30     mov   $30+x,a
1381: e8 ff     mov   a,#$ff
1383: d4 30     mov   $30+x,a
1385: e8 0a     mov   a,#$0a
1387: d5 10 02  mov   $0210+x,a
138a: e8 fc     mov   a,#$fc
138c: d5 69 01  mov   $0169+x,a
138f: e8 ff     mov   a,#$ff
1391: d5 98 01  mov   $0198+x,a
1394: 8f 04 c7  mov   $c7,#$04
1397: 7d        mov   a,x
1398: 5c        lsr   a
1399: c4 c5     mov   $c5,a
139b: f0 10     beq   $13ad
139d: e8 00     mov   a,#$00
139f: 8f 14 c2  mov   $c2,#$14
13a2: 60        clrc
13a3: 84 c2     adc   a,$c2
13a5: 90 02     bcc   $13a9
13a7: ab c7     inc   $c7
13a9: 8b c5     dec   $c5
13ab: d0 f5     bne   $13a2
13ad: d4 a8     mov   $a8+x,a           ; voice ptr stack pointer (lo)
13af: e4 c7     mov   a,$c7
13b1: d4 a9     mov   $a9+x,a           ; voice ptr stack pointer (hi)
13b3: 8d 00     mov   y,#$00
13b5: f7 c8     mov   a,($c8)+y
13b7: d4 90     mov   $90+x,a           ; header +02h - voice address (lo)
13b9: 3a c8     incw  $c8
13bb: f7 c8     mov   a,($c8)+y
13bd: 3a c8     incw  $c8
13bf: d4 91     mov   $91+x,a           ; header +03h - voice address (hi)
13c1: c8 10     cmp   x,#$10
13c3: 90 19     bcc   $13de
13c5: e4 c3     mov   a,$c3
13c7: 4e 16 00  tclr1 $0016
13ca: 09 c3 cd  or    ($cd),($c3)
13cd: 09 c6 c3  or    ($c3),($c6)
13d0: e8 64     mov   a,#$64
13d2: c4 d8     mov   $d8,a
13d4: 48 ff     eor   a,#$ff
13d6: bc        inc   a
13d7: c4 d9     mov   $d9,a
13d9: 8f 00 e4  mov   $e4,#$00
13dc: 2f 11     bra   $13ef
13de: 09 c3 00  or    ($00),($c3)
13e1: 8f ff 0d  mov   $0d,#$ff
13e4: ab 0e     inc   $0e
13e6: 8f 00 08  mov   $08,#$00
13e9: e4 cd     mov   a,$cd
13eb: 24 c3     and   a,$c3
13ed: d0 0b     bne   $13fa
13ef: 09 c3 17  or    ($17),($c3)
13f2: e4 c3     mov   a,$c3
13f4: 4e e3 00  tclr1 $00e3
13f7: 4e ea 00  tclr1 $00ea
13fa: 5f 03 13  jmp   $1303

; cpucmd dispatch table
13fd: dw $1480  ; f0
13ff: dw $1484  ; f1
1401: dw $1422  ; f2
1403: dw $1427  ; f3
1405: dw $142c  ; f4
1407: dw $1431  ; f5
1409: dw $1436  ; f6
140b: dw $1437  ; f7
140d: dw $1459  ; f8
140f: dw $1421  ; f9
1411: dw $148c  ; fa
1413: dw $1485  ; fb
1415: dw $14e3  ; fc
1417: dw $15b3  ; fd
1419: dw $141b  ; fe

141b: cd 02     mov   x,#$02
141d: e8 ff     mov   a,#$ff
141f: d4 30     mov   $30+x,a
1421: 6f        ret

1422: 62 cf     set3  $cf
1424: c2 01     set6  $01
1426: 6f        ret

1427: 72 cf     clr3  $cf
1429: d2 01     clr6  $01
142b: 6f        ret

142c: 02 cf     set0  $cf
142e: 22 cf     set1  $cf
1430: 6f        ret

1431: 12 cf     clr0  $cf
1433: 22 cf     set1  $cf
1435: 6f        ret

1436: 6f        ret

1437: c3 cf 45  bbs6  $cf,$147f
143a: 42 d0     set2  $d0
143c: cd 96     mov   x,#$96
143e: e4 05     mov   a,$05
1440: 3f d4 16  call  $16d4
1443: c4 ed     mov   $ed,a
1445: dd        mov   a,y
1446: c4 ec     mov   $ec,a
1448: 8f 00 ee  mov   $ee,#$00
144b: e8 00     mov   a,#$00
144d: c4 ef     mov   $ef,a
144f: c4 03     mov   $03,a
1451: c4 04     mov   $04,a
1453: c4 10     mov   $10,a
1455: 48 ff     eor   a,#$ff
1457: 2f 05     bra   $145e
1459: c3 cf 23  bbs6  $cf,$147f
145c: e8 00     mov   a,#$00
145e: 8d 96     mov   y,#$96
1460: cb c2     mov   $c2,y
1462: cb d3     mov   $d3,y
1464: c4 d7     mov   $d7,a
1466: 8d 00     mov   y,#$00
1468: 8f 00 c2  mov   $c2,#$00
146b: 80        setc
146c: a4 10     sbc   a,$10
146e: eb d3     mov   y,$d3
1470: 6d        push  y
1471: ce        pop   x
1472: 3f cc 16  call  $16cc
1475: c4 d5     mov   $d5,a
1477: dd        mov   a,y
1478: c4 d4     mov   $d4,a
147a: 8f 00 d6  mov   $d6,#$00
147d: c2 cf     set6  $cf
147f: 6f        ret

1480: 8f ff 10  mov   $10,#$ff
1483: 6f        ret

1484: 6f        ret

1485: e2 cf     set7  $cf
1487: 3f 1b 15  call  $151b
148a: 2f 06     bra   $1492
148c: f3 cf 03  bbc7  $cf,$1492
148f: 8f 00 10  mov   $10,#$00
1492: e2 ca     set7  $ca
1494: e8 00     mov   a,#$00
1496: c4 ea     mov   $ea,a
1498: c4 e3     mov   $e3,a
149a: c4 00     mov   $00,a
149c: c4 cd     mov   $cd,a
149e: c4 17     mov   $17,a
14a0: c4 16     mov   $16,a
14a2: c4 03     mov   $03,a
14a4: c4 04     mov   $04,a
14a6: 8d 3c     mov   y,#$3c
14a8: 3f 7a 16  call  $167a             ; set EVOL(R)
14ab: 8d 2c     mov   y,#$2c
14ad: 3f 7a 16  call  $167a             ; set EVOL(L)
14b0: cd db     mov   x,#$db
14b2: e8 00     mov   a,#$00
14b4: af        mov   (x)+,a
14b5: c8 e3     cmp   x,#$e3
14b7: d0 fb     bne   $14b4
14b9: e8 ff     mov   a,#$ff
14bb: 8d 5c     mov   y,#$5c
14bd: 3f 7a 16  call  $167a             ; set KOF
14c0: f3 ca 15  bbc7  $ca,$14d8
14c3: 8d 04     mov   y,#$04
14c5: f6 ce 17  mov   a,$17ce+y
14c8: c4 f2     mov   $f2,a
14ca: f6 d3 17  mov   a,$17d3+y
14cd: 5d        mov   x,a
14ce: e8 00     mov   a,#$00
14d0: c6        mov   (x),a
14d1: c4 f3     mov   $f3,a
14d3: fe f0     dbnz  y,$14c5
14d5: 3f 48 17  call  $1748
14d8: d2 cf     clr6  $cf
14da: 52 d0     clr2  $d0
14dc: e8 00     mov   a,#$00
14de: c4 d3     mov   $d3,a
14e0: c4 ca     mov   $ca,a
14e2: 6f        ret

14e3: f2 cf     clr7  $cf
14e5: e5 02 05  mov   a,$0502
14e8: c4 eb     mov   $eb,a
14ea: 3f 1b 15  call  $151b
14ed: cd 00     mov   x,#$00
14ef: 8f 01 15  mov   $15,#$01
14f2: e4 00     mov   a,$00
14f4: 24 15     and   a,$15
14f6: f0 12     beq   $150a
14f8: 7d        mov   a,x
14f9: 9f        xcn   a
14fa: 5c        lsr   a
14fb: c4 13     mov   $13,a
14fd: f5 61 03  mov   a,$0361+x
1500: c4 c5     mov   $c5,a
1502: 3f f3 0e  call  $0ef3
1505: 3f 93 16  call  $1693
1508: 22 d1     set1  $d1
150a: 3d        inc   x
150b: 3d        inc   x
150c: 0b 15     asl   $15
150e: d0 e2     bne   $14f2
1510: e4 07     mov   a,$07
1512: 3f f3 16  call  $16f3
1515: b2 01     clr5  $01
1517: 3f 37 14  call  $1437
151a: 6f        ret

151b: e8 00     mov   a,#$00
151d: 5d        mov   x,a
151e: 8d 05     mov   y,#$05
1520: da c2     movw  $c2,ya
1522: 8d 00     mov   y,#$00
1524: 8f 10 c7  mov   $c7,#$10
1527: f3 cf 09  bbc7  $cf,$1533
152a: bf        mov   a,(x)+
152b: d7 c2     mov   ($c2)+y,a
152d: fc        inc   y
152e: 6e c7 f6  dbnz  $c7,$1527
1531: 2f 07     bra   $153a
1533: f7 c2     mov   a,($c2)+y
1535: fc        inc   y
1536: af        mov   (x)+,a
1537: 6e c7 f9  dbnz  $c7,$1533
153a: 8f 10 c7  mov   $c7,#$10
153d: 7d        mov   a,x
153e: 60        clrc
153f: 88 08     adc   a,#$08
1541: 5d        mov   x,a
1542: c8 c0     cmp   x,#$c0
1544: d0 e1     bne   $1527
1546: e8 50     mov   a,#$50
1548: c4 c4     mov   $c4,a
154a: e8 01     mov   a,#$01
154c: c4 c5     mov   $c5,a
154e: cd 00     mov   x,#$00
1550: f3 cf 10  bbc7  $cf,$1563
1553: e7 c4     mov   a,($c4+x)
1555: 3a c4     incw  $c4
1557: d7 c2     mov   ($c2)+y,a
1559: fc        inc   y
155a: d0 02     bne   $155e
155c: ab c3     inc   $c3
155e: 6e c7 ef  dbnz  $c7,$1550
1561: 2f 0e     bra   $1571
1563: f7 c2     mov   a,($c2)+y
1565: fc        inc   y
1566: d0 02     bne   $156a
1568: ab c3     inc   $c3
156a: c7 c4     mov   ($c4+x),a
156c: 3a c4     incw  $c4
156e: 6e c7 f2  dbnz  $c7,$1563
1571: cb c6     mov   $c6,y
1573: e8 08     mov   a,#$08
1575: 8d 00     mov   y,#$00
1577: 7a c4     addw  ya,$c4
1579: da c4     movw  $c4,ya
157b: eb c6     mov   y,$c6
157d: 8f 10 c7  mov   $c7,#$10
1580: 78 90 c4  cmp   $c4,#$90
1583: d0 cb     bne   $1550
1585: 78 03 c5  cmp   $c5,#$03
1588: d0 c6     bne   $1550
158a: e8 00     mov   a,#$00
158c: c4 c4     mov   $c4,a
158e: e8 04     mov   a,#$04
1590: c4 c5     mov   $c5,a
1592: f3 cf 0d  bbc7  $cf,$15a2
1595: e7 c4     mov   a,($c4+x)
1597: 3a c4     incw  $c4
1599: d7 c2     mov   ($c2)+y,a
159b: fc        inc   y
159c: d0 02     bne   $15a0
159e: ab c3     inc   $c3
15a0: 2f 0b     bra   $15ad
15a2: f7 c2     mov   a,($c2)+y
15a4: fc        inc   y
15a5: d0 02     bne   $15a9
15a7: ab c3     inc   $c3
15a9: c7 c4     mov   ($c4+x),a
15ab: 3a c4     incw  $c4
15ad: 78 a0 c4  cmp   $c4,#$a0
15b0: d0 e0     bne   $1592
15b2: 6f        ret

15b3: 02 d0     set0  $d0
15b5: 6f        ret

15b6: eb da     mov   y,$da
15b8: f5 e9 02  mov   a,$02e9+x
15bb: cf        mul   ya
15bc: dd        mov   a,y
15bd: 60        clrc
15be: 95 e8 02  adc   a,$02e8+x
15c1: 1c        asl   a
15c2: 90 02     bcc   $15c6
15c4: 48 ff     eor   a,#$ff
15c6: fb 79     mov   y,$79+x
15c8: cf        mul   ya
15c9: dd        mov   a,y
15ca: 48 ff     eor   a,#$ff
15cc: bc        inc   a
15cd: 75 79 03  cmp   a,$0379+x
15d0: f0 06     beq   $15d8
15d2: d5 00 03  mov   $0300+x,a
15d5: d5 79 03  mov   $0379+x,a
15d8: 6f        ret

15d9: 23 cf 09  bbs1  $cf,$15e5
15dc: c3 cf 06  bbs6  $cf,$15e5
15df: 43 d1 5c  bbs2  $d1,$163e
15e2: 33 d1 59  bbc1  $d1,$163e
15e5: 32 d1     clr1  $d1
15e7: e4 13     mov   a,$13
15e9: 08 00     or    a,#$00
15eb: c4 14     mov   $14,a
15ed: 8f 00 ca  mov   $ca,#$00
15f0: f5 00 03  mov   a,$0300+x
15f3: d0 02     bne   $15f7
15f5: e8 ff     mov   a,#$ff
15f7: eb 10     mov   y,$10
15f9: cf        mul   ya
15fa: f5 98 01  mov   a,$0198+x
15fd: cf        mul   ya
15fe: f4 30     mov   a,$30+x
1600: cf        mul   ya
1601: dd        mov   a,y
1602: cf        mul   ya
1603: cb c2     mov   $c2,y
1605: 03 cf 05  bbs0  $cf,$160d
1608: 8f 0a cc  mov   $cc,#$0a
160b: 2f 05     bra   $1612
160d: f5 10 02  mov   a,$0210+x
1610: c4 cc     mov   $cc,a
1612: eb cc     mov   y,$cc
1614: f6 9e 17  mov   a,$179e+y
1617: fd        mov   y,a
1618: e4 c2     mov   a,$c2
161a: cf        mul   ya
161b: e4 cc     mov   a,$cc
161d: 1c        asl   a
161e: 13 14 01  bbc0  $14,$1622
1621: 1c        asl   a
1622: dd        mov   a,y
1623: 90 03     bcc   $1628
1625: 48 ff     eor   a,#$ff
1627: bc        inc   a
1628: 3f 49 16  call  $1649
162b: eb 14     mov   y,$14
162d: 3f 7a 16  call  $167a             ; set VOL(L),VOL(R)
1630: e8 14     mov   a,#$14
1632: 80        setc
1633: a4 cc     sbc   a,$cc
1635: c4 cc     mov   $cc,a
1637: ab 14     inc   $14
1639: ab ca     inc   $ca
163b: 33 14 d4  bbc1  $14,$1612
163e: e4 d2     mov   a,$d2
1640: d5 c9 01  mov   $01c9+x,a
1643: e4 d1     mov   a,$d1
1645: d5 c8 01  mov   $01c8+x,a
1648: 6f        ret

1649: eb ca     mov   y,$ca
164b: d0 04     bne   $1651
164d: e3 d2 04  bbs7  $d2,$1654
1650: 6f        ret

1651: d3 d2 03  bbc6  $d2,$1657
1654: 48 ff     eor   a,#$ff
1656: bc        inc   a
1657: 6f        ret

; read voice word -> $c2, a
1658: f8 12     mov   x,$12
165a: e7 90     mov   a,($90+x)
165c: c4 c2     mov   $c2,a
165e: bb 90     inc   $90+x
1660: d0 04     bne   $1666
1662: bb 91     inc   $91+x
; read voice byte -> a
1664: f8 12     mov   x,$12
1666: e7 90     mov   a,($90+x)
1668: bb 90     inc   $90+x
166a: d0 02     bne   $166e
166c: bb 91     inc   $91+x
166e: 6f        ret

166f: f5 c9 01  mov   a,$01c9+x
1672: c4 d2     mov   $d2,a
1674: f5 c8 01  mov   a,$01c8+x
1677: c4 d1     mov   $d1,a
1679: 6f        ret

; set A to dsp register Y
167a: cb f2     mov   $f2,y
167c: c4 f3     mov   $f3,a
167e: 6f        ret

167f: 8f 00 c2  mov   $c2,#$00
1682: 68 01     cmp   a,#$01
1684: f0 07     beq   $168d
1686: ab c2     inc   $c2
1688: 5c        lsr   a
1689: 68 01     cmp   a,#$01
168b: d0 f9     bne   $1686
168d: e4 c2     mov   a,$c2
168f: 9f        xcn   a
1690: c4 13     mov   $13,a
1692: 6f        ret

1693: e4 13     mov   a,$13
1695: 08 05     or    a,#$05
1697: fd        mov   y,a
1698: f5 49 03  mov   a,$0349+x
169b: cb f2     mov   $f2,y
169d: c4 f3     mov   $f3,a             ; set ADSR(1)
169f: fc        inc   y
16a0: f5 60 03  mov   a,$0360+x
16a3: cb f2     mov   $f2,y
16a5: c4 f3     mov   $f3,a             ; set ADSR(2)
16a7: 6f        ret

16a8: 08 05     or    a,#$05
16aa: fd        mov   y,a
16ab: f5 49 03  mov   a,$0349+x
16ae: 28 7f     and   a,#$7f
16b0: 3f 7a 16  call  $167a             ; set ADSR(1)
16b3: fc        inc   y
16b4: fc        inc   y
16b5: f5 99 01  mov   a,$0199+x
16b8: 5f 7a 16  jmp   $167a             ; set GAIN

16bb: e4 13     mov   a,$13
16bd: 08 05     or    a,#$05
16bf: fd        mov   y,a
16c0: e8 00     mov   a,#$00
16c2: 3f 7a 16  call  $167a             ; set ADSR(1)
16c5: fc        inc   y
16c6: fc        inc   y
16c7: e8 bf     mov   a,#$bf
16c9: 5f 7a 16  jmp   $167a             ; set GAIN

16cc: ed        notc
16cd: 6b c2     ror   $c2
16cf: 10 03     bpl   $16d4
16d1: 48 ff     eor   a,#$ff
16d3: bc        inc   a
16d4: 8d 00     mov   y,#$00
16d6: 9e        div   ya,x
16d7: 2d        push  a
16d8: e8 00     mov   a,#$00
16da: 9e        div   ya,x
16db: ee        pop   y
16dc: f8 12     mov   x,$12
16de: f3 c2 06  bbc7  $c2,$16e7
16e1: da c8     movw  $c8,ya
16e3: ba c0     movw  ya,$c0
16e5: 9a c8     subw  ya,$c8
16e7: 6f        ret

16e8: f5 88 02  mov   a,$0288+x
16eb: c4 cc     mov   $cc,a
16ed: f5 59 02  mov   a,$0259+x
16f0: c4 cb     mov   $cb,a
16f2: 6f        ret

16f3: 1c        asl   a
16f4: 1c        asl   a
16f5: 1c        asl   a
16f6: 48 ff     eor   a,#$ff
16f8: bc        inc   a
16f9: c4 c2     mov   $c2,a
16fb: a2 01     set5  $01
16fd: e4 01     mov   a,$01
16ff: 8d 6c     mov   y,#$6c
1701: cb f2     mov   $f2,y
1703: c4 f3     mov   $f3,a             ; set FLG
1705: e4 07     mov   a,$07
1707: 8d 7d     mov   y,#$7d
1709: cb f2     mov   $f2,y
170b: c4 f3     mov   $f3,a             ; set EDL
170d: e4 c2     mov   a,$c2
170f: 8d 6d     mov   y,#$6d
1711: cb f2     mov   $f2,y
1713: c4 f3     mov   $f3,a             ; set ESA
1715: e8 80     mov   a,#$80
1717: c4 fb     mov   $fb,a
1719: e8 03     mov   a,#$03
171b: c4 f1     mov   $f1,a
171d: e4 07     mov   a,$07
171f: c4 c6     mov   $c6,a
1721: eb fd     mov   y,$fd
1723: f0 fc     beq   $1721
1725: 6e c6 f9  dbnz  $c6,$1721
1728: eb c2     mov   y,$c2
172a: e8 00     mov   a,#$00
172c: da c2     movw  $c2,ya
172e: e8 00     mov   a,#$00
1730: fd        mov   y,a
1731: d7 c2     mov   ($c2)+y,a
1733: fc        inc   y
1734: d0 fb     bne   $1731
1736: ab c3     inc   $c3
1738: 78 00 c3  cmp   $c3,#$00
173b: d0 f4     bne   $1731
173d: 6f        ret

173e: 1c        asl   a
173f: 1c        asl   a
1740: 1c        asl   a
1741: 48 ff     eor   a,#$ff
1743: bc        inc   a
1744: fd        mov   y,a
1745: 5f 2a 17  jmp   $172a

1748: e8 20     mov   a,#$20
174a: c4 01     mov   $01,a
174c: 8d 6c     mov   y,#$6c
174e: 5f 7a 16  jmp   $167a             ; set FLG

1751: e4 f4     mov   a,$f4
1753: 68 ef     cmp   a,#$ef
1755: f0 01     beq   $1758
1757: 6f        ret

1758: e8 aa     mov   a,#$aa
175a: c4 f4     mov   $f4,a
175c: e8 bb     mov   a,#$bb
175e: c4 f5     mov   $f5,a
1760: e8 cc     mov   a,#$cc
1762: 64 f4     cmp   a,$f4
1764: d0 fc     bne   $1762
1766: 3f 48 17  call  $1748
1769: e4 f6     mov   a,$f6
176b: eb f7     mov   y,$f7
176d: da c2     movw  $c2,ya
176f: 8d 00     mov   y,#$00
1771: e8 00     mov   a,#$00
1773: c4 f4     mov   $f4,a
1775: e4 f4     mov   a,$f4
1777: 68 11     cmp   a,#$11
1779: d0 fa     bne   $1775
177b: e4 f6     mov   a,$f6
177d: d7 c2     mov   ($c2)+y,a
177f: fc        inc   y
1780: e4 f7     mov   a,$f7
1782: d7 c2     mov   ($c2)+y,a
1784: fc        inc   y
1785: e8 22     mov   a,#$22
1787: c4 f4     mov   $f4,a
1789: e4 f4     mov   a,$f4
178b: 68 dd     cmp   a,#$dd
178d: f0 e2     beq   $1771
178f: 68 ee     cmp   a,#$ee
1791: d0 f6     bne   $1789
1793: e8 ee     mov   a,#$ee
1795: c4 f4     mov   $f4,a
1797: cd 33     mov   x,#$33
1799: d8 f1     mov   $f1,x
179b: e8 00     mov   a,#$00
179d: 6f        ret

179e: db $7f,$7e,$7d,$7c,$7a,$77,$73,$6e
17a6: db $67,$5e,$51,$42,$34,$35,$1e,$15
17ae: db $0d,$07,$03,$01

17b2: db $00,$32,$65,$7f,$98,$b2,$cb,$e5
17ba: db $fc,$0a,$19,$28,$3c,$50,$64,$7d
17c2: db $96,$aa,$b9,$c8,$d4,$e1,$eb,$f5
17ca: db $ff

; dsp reg shadows
; KON,KOF,PMON,NON,EON,EFB,EVOL(L),EVOL(R),FLG
17cb: db $4c,$5c,$2d,$3d,$4d,$0d,$2c,$3c,$6c
17d4: db $02,$06,$03,$04,$01,$16,$17,$ea,$e3

; pitch table
17dd: dw $085f
17df: dw $08de
17e1: dw $0965
17e3: dw $09f4
17e5: dw $0a8c
17e7: dw $0b2c
17e9: dw $0bd6
17eb: dw $0c8b
17ed: dw $0d4a
17ef: dw $0e14
17f1: dw $0eea
17f3: dw $0fcd
17f5: dw $10be
17f7: dw $10be
17f9: dw $10be
17fb: dw $10be
