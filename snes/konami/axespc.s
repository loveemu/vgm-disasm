0200: 5f 95 08  jmp   $0895

0895: 20        clrp
0896: cd cf     mov   x,#$cf
0898: bd        mov   sp,x
0899: e8 30     mov   a,#$30
089b: c5 f1 00  mov   $00f1,a
089e: e8 00     mov   a,#$00
08a0: cd 00     mov   x,#$00
08a2: af        mov   (x)+,a
08a3: c8 f0     cmp   x,#$f0
08a5: d0 fb     bne   $08a2
08a7: 8d 00     mov   y,#$00
08a9: 8f 00 04  mov   $04,#$00
08ac: 8f 01 05  mov   $05,#$01
08af: d7 04     mov   ($04)+y,a
08b1: ad 8f     cmp   y,#$8f
08b3: d0 05     bne   $08ba
08b5: 78 01 05  cmp   $05,#$01
08b8: f0 07     beq   $08c1
08ba: fc        inc   y
08bb: d0 f2     bne   $08af
08bd: ab 05     inc   $05
08bf: 2f ee     bra   $08af
08c1: 8d 03     mov   y,#$03
08c3: 8f 00 04  mov   $04,#$00
08c6: 8f 02 05  mov   $05,#$02
08c9: d7 04     mov   ($04)+y,a
08cb: ad e5     cmp   y,#$e5
08cd: d0 05     bne   $08d4
08cf: 78 03 05  cmp   $05,#$03
08d2: f0 07     beq   $08db
08d4: fc        inc   y
08d5: d0 f2     bne   $08c9
08d7: ab 05     inc   $05
08d9: 2f ee     bra   $08c9
08db: e8 00     mov   a,#$00
08dd: 3f a6 11  call  $11a6
08e0: a2 18     set5  $18
08e2: 8d 71     mov   y,#$71
08e4: e8 00     mov   a,#$00
08e6: cc f2 00  mov   $00f2,y
08e9: c5 f3 00  mov   $00f3,a
08ec: dc        dec   y
08ed: cc f2 00  mov   $00f2,y
08f0: c5 f3 00  mov   $00f3,a
08f3: dd        mov   a,y
08f4: 80        setc
08f5: a8 0f     sbc   a,#$0f
08f7: fd        mov   y,a
08f8: 10 ea     bpl   $08e4
08fa: e8 ff     mov   a,#$ff
08fc: c4 17     mov   $17,a
08fe: 8d 5c     mov   y,#$5c
0900: cc f2 00  mov   $00f2,y
0903: c5 f3 00  mov   $00f3,a
0906: e8 7f     mov   a,#$7f
0908: 8d 0c     mov   y,#$0c
090a: cc f2 00  mov   $00f2,y
090d: c5 f3 00  mov   $00f3,a
0910: 8d 1c     mov   y,#$1c
0912: cc f2 00  mov   $00f2,y
0915: c5 f3 00  mov   $00f3,a
0918: e8 50     mov   a,#$50
091a: 8d 5d     mov   y,#$5d
091c: cc f2 00  mov   $00f2,y
091f: c5 f3 00  mov   $00f3,a
0922: 8f 00 10  mov   $10,#$00
0925: e8 20     mov   a,#$20
0927: c5 fa 00  mov   $00fa,a
092a: e8 01     mov   a,#$01
092c: c5 f1 00  mov   $00f1,a
092f: 8d 0a     mov   y,#$0a
0931: ad 05     cmp   y,#$05
0933: f0 07     beq   $093c
0935: b0 08     bcs   $093f
0937: 69 1e 1d  cmp   ($1d),($1e)
093a: d0 11     bne   $094d
093c: e3 1d 0e  bbs7  $1d,$094d
093f: f6 7d 15  mov   a,$157d+y
0942: c5 f2 00  mov   $00f2,a
0945: f6 87 15  mov   a,$1587+y
0948: 5d        mov   x,a
0949: e6        mov   a,(x)
094a: c5 f3 00  mov   $00f3,a
094d: fe e2     dbnz  y,$0931
094f: cb 16     mov   $16,y
0951: cb 17     mov   $17,y
0953: cb 22     mov   $22,y
0955: ec fd 00  mov   y,$00fd
0958: f0 fb     beq   $0955
095a: cb 21     mov   $21,y
095c: cc f5 00  mov   $00f5,y
095f: e4 28     mov   a,$28
0961: 60        clrc
0962: 88 40     adc   a,#$40
0964: c4 28     mov   $28,a
0966: 90 07     bcc   $096f
0968: 69 1e 1d  cmp   ($1d),($1e)
096b: f0 02     beq   $096f
096d: ab 1d     inc   $1d
096f: 3f 92 18  call  $1892
0972: f0 09     beq   $097d
0974: 0e 17 00  tset1 $0017
0977: 4e 1f 00  tclr1 $001f
097a: 0e 22 00  tset1 $0022
097d: 33 25 07  bbc1  $25,$0987
0980: cd 0c     mov   x,#$0c
0982: 8f 40 20  mov   $20,#$40
0985: 2f 2d     bra   $09b4
0987: e4 23     mov   a,$23
0989: f0 24     beq   $09af
098b: cd 3f     mov   x,#$3f
098d: ab 24     inc   $24
098f: e5 04 02  mov   a,$0204
0992: 2e 24 1a  cbne  $24,$09af
0995: 8f 00 24  mov   $24,#$00
0998: 8b 23     dec   $23
099a: d0 13     bne   $09af
099c: 78 62 da  cmp   $da,#$62
099f: 90 05     bcc   $09a6
09a1: 3f 26 19  call  $1926
09a4: 2f 03     bra   $09a9
09a6: 3f 1e 19  call  $191e
09a9: 0e 17 00  tset1 $0017
09ac: 4e 1f 00  tclr1 $001f
09af: 8f 01 20  mov   $20,#$01
09b2: cd 00     mov   x,#$00
09b4: f4 ce     mov   a,$ce+x
09b6: f0 58     beq   $0a10
09b8: e4 20     mov   a,$20
09ba: 24 22     and   a,$22
09bc: d0 52     bne   $0a10
09be: d8 27     mov   $27,x
09c0: f5 44 15  mov   a,$1544+x
09c3: c4 29     mov   $29,a
09c5: f5 c6 02  mov   a,$02c6+x
09c8: c4 26     mov   $26,a
09ca: f5 d6 02  mov   a,$02d6+x
09cd: c4 2b     mov   $2b,a
09cf: f5 d7 02  mov   a,$02d7+x
09d2: c4 2c     mov   $2c,a
09d4: eb 21     mov   y,$21
09d6: f4 bd     mov   a,$bd+x
09d8: c4 04     mov   $04,a
09da: 8f 00 05  mov   $05,#$00
09dd: f5 06 02  mov   a,$0206+x
09e0: cf        mul   ya
09e1: 7a 04     addw  ya,$04
09e3: d4 bd     mov   $bd+x,a
09e5: ad 00     cmp   y,#$00
09e7: f0 15     beq   $09fe
09e9: dc        dec   y
09ea: f0 0a     beq   $09f6
09ec: f4 ce     mov   a,$ce+x
09ee: 68 0a     cmp   a,#$0a
09f0: 90 04     bcc   $09f6
09f2: 1a 2b     decw  $2b
09f4: fe fc     dbnz  y,$09f2
09f6: 3f b3 0a  call  $0ab3
09f9: 3f c5 0b  call  $0bc5
09fc: 2f 03     bra   $0a01
09fe: 3f 19 0a  call  $0a19
0a01: e4 26     mov   a,$26
0a03: d5 c6 02  mov   $02c6+x,a
0a06: e4 2b     mov   a,$2b
0a08: d5 d6 02  mov   $02d6+x,a
0a0b: e4 2c     mov   a,$2c
0a0d: d5 d7 02  mov   $02d7+x,a
0a10: 3d        inc   x
0a11: 3d        inc   x
0a12: 0b 20     asl   $20
0a14: d0 9e     bne   $09b4
0a16: 5f 2f 09  jmp   $092f

0a19: 52 25     clr2  $25
0a1b: f5 47 03  mov   a,$0347+x
0a1e: c4 0b     mov   $0b,a
0a20: f5 46 03  mov   a,$0346+x
0a23: c4 0a     mov   $0a,a
0a25: f4 7d     mov   a,$7d+x
0a27: f0 4b     beq   $0a74
0a29: f4 7e     mov   a,$7e+x
0a2b: d0 47     bne   $0a74
0a2d: 42 25     set2  $25
0a2f: f5 56 03  mov   a,$0356+x
0a32: c4 04     mov   $04,a
0a34: f5 57 03  mov   a,$0357+x
0a37: c4 05     mov   $05,a
0a39: 30 18     bmi   $0a53
0a3b: f4 bd     mov   a,$bd+x
0a3d: eb 04     mov   y,$04
0a3f: cf        mul   ya
0a40: cb 06     mov   $06,y
0a42: 8f 00 07  mov   $07,#$00
0a45: f4 bd     mov   a,$bd+x
0a47: eb 05     mov   y,$05
0a49: cf        mul   ya
0a4a: 60        clrc
0a4b: 7a 06     addw  ya,$06
0a4d: 7a 0a     addw  ya,$0a
0a4f: da 0a     movw  $0a,ya
0a51: 2f 21     bra   $0a74
0a53: 58 ff 04  eor   $04,#$ff
0a56: 58 ff 05  eor   $05,#$ff
0a59: 3a 04     incw  $04
0a5b: f4 bd     mov   a,$bd+x
0a5d: eb 04     mov   y,$04
0a5f: cf        mul   ya
0a60: cb 06     mov   $06,y
0a62: 8f 00 07  mov   $07,#$00
0a65: f4 bd     mov   a,$bd+x
0a67: eb 05     mov   y,$05
0a69: cf        mul   ya
0a6a: 7a 06     addw  ya,$06
0a6c: da 04     movw  $04,ya
0a6e: ba 0a     movw  ya,$0a
0a70: 9a 04     subw  ya,$04
0a72: da 0a     movw  $0a,ya
0a74: f5 77 03  mov   a,$0377+x
0a77: 15 76 03  or    a,$0376+x
0a7a: f0 1e     beq   $0a9a
0a7c: f5 46 02  mov   a,$0246+x
0a7f: de 9d 18  cbne  $9d+x,$0a9a
0a82: f5 37 02  mov   a,$0237+x
0a85: 60        clrc
0a86: 95 36 02  adc   a,$0236+x
0a89: d5 37 02  mov   $0237+x,a
0a8c: 60        clrc
0a8d: 94 9e     adc   a,$9e+x
0a8f: 3f b0 13  call  $13b0
0a92: ba 08     movw  ya,$08
0a94: 7a 0a     addw  ya,$0a
0a96: da 0a     movw  $0a,ya
0a98: 42 25     set2  $25
0a9a: f5 77 02  mov   a,$0277+x
0a9d: f0 0b     beq   $0aaa
0a9f: 3f e0 13  call  $13e0
0aa2: ba 0a     movw  ya,$0a
0aa4: 7a 04     addw  ya,$04
0aa6: da 0a     movw  $0a,ya
0aa8: 42 25     set2  $25
0aaa: 53 25 05  bbc2  $25,$0ab2
0aad: ba 0a     movw  ya,$0a
0aaf: 5f 2b 14  jmp   $142b

0ab2: 6f        ret

0ab3: 1a 2b     decw  $2b
0ab5: 30 02     bmi   $0ab9
0ab7: d0 03     bne   $0abc
0ab9: 5f 91 0c  jmp   $0c91

0abc: f4 4e     mov   a,$4e+x
0abe: f0 0c     beq   $0acc
0ac0: 9b 4e     dec   $4e+x
0ac2: d0 3f     bne   $0b03
0ac4: f5 c6 03  mov   a,$03c6+x
0ac7: 15 c7 03  or    a,$03c7+x
0aca: f0 34     beq   $0b00
0acc: f5 d7 03  mov   a,$03d7+x
0acf: 75 17 02  cmp   a,$0217+x
0ad2: b0 2c     bcs   $0b00
0ad4: f5 c6 03  mov   a,$03c6+x
0ad7: 15 c7 03  or    a,$03c7+x
0ada: f0 27     beq   $0b03
0adc: f5 67 02  mov   a,$0267+x
0adf: 68 64     cmp   a,#$64
0ae1: b0 08     bcs   $0aeb
0ae3: 8d 00     mov   y,#$00
0ae5: e8 01     mov   a,#$01
0ae7: 5a 2b     cmpw  ya,$2b
0ae9: f0 15     beq   $0b00
0aeb: f5 d6 03  mov   a,$03d6+x
0aee: 60        clrc
0aef: 95 c6 03  adc   a,$03c6+x
0af2: d5 d6 03  mov   $03d6+x,a
0af5: f5 d7 03  mov   a,$03d7+x
0af8: 95 c7 03  adc   a,$03c7+x
0afb: d5 d7 03  mov   $03d7+x,a
0afe: 2f 03     bra   $0b03
0b00: 09 20 17  or    ($17),($20)
0b03: 52 25     clr2  $25
0b05: e8 00     mov   a,#$00
0b07: fd        mov   y,a
0b08: da 08     movw  $08,ya
0b0a: f4 7d     mov   a,$7d+x
0b0c: f0 2f     beq   $0b3d
0b0e: f4 7e     mov   a,$7e+x
0b10: f0 04     beq   $0b16
0b12: 9b 7e     dec   $7e+x
0b14: 2f 27     bra   $0b3d
0b16: 9b 7d     dec   $7d+x
0b18: d0 0e     bne   $0b28
0b1a: f5 67 03  mov   a,$0367+x
0b1d: d5 47 03  mov   $0347+x,a
0b20: f5 66 03  mov   a,$0366+x
0b23: d5 46 03  mov   $0346+x,a
0b26: 2f 13     bra   $0b3b
0b28: f5 46 03  mov   a,$0346+x
0b2b: 60        clrc
0b2c: 95 56 03  adc   a,$0356+x
0b2f: d5 46 03  mov   $0346+x,a
0b32: f5 47 03  mov   a,$0347+x
0b35: 95 57 03  adc   a,$0357+x
0b38: d5 47 03  mov   $0347+x,a
0b3b: 42 25     set2  $25
0b3d: f5 56 02  mov   a,$0256+x
0b40: f0 58     beq   $0b9a
0b42: f4 9d     mov   a,$9d+x
0b44: 75 46 02  cmp   a,$0246+x
0b47: f0 04     beq   $0b4d
0b49: bb 9d     inc   $9d+x
0b4b: 2f 4d     bra   $0b9a
0b4d: f4 cd     mov   a,$cd+x
0b4f: 75 47 02  cmp   a,$0247+x
0b52: d0 0d     bne   $0b61
0b54: f5 56 02  mov   a,$0256+x
0b57: d5 77 03  mov   $0377+x,a
0b5a: e8 00     mov   a,#$00
0b5c: d5 76 03  mov   $0376+x,a
0b5f: 2f 27     bra   $0b88
0b61: 68 00     cmp   a,#$00
0b63: d0 0e     bne   $0b73
0b65: f5 87 03  mov   a,$0387+x
0b68: d5 77 03  mov   $0377+x,a
0b6b: f5 86 03  mov   a,$0386+x
0b6e: d5 76 03  mov   $0376+x,a
0b71: 2f 13     bra   $0b86
0b73: f5 76 03  mov   a,$0376+x
0b76: 60        clrc
0b77: 95 86 03  adc   a,$0386+x
0b7a: d5 76 03  mov   $0376+x,a
0b7d: f5 77 03  mov   a,$0377+x
0b80: 95 87 03  adc   a,$0387+x
0b83: d5 77 03  mov   $0377+x,a
0b86: bb cd     inc   $cd+x
0b88: e8 00     mov   a,#$00
0b8a: d5 37 02  mov   $0237+x,a
0b8d: f4 9e     mov   a,$9e+x
0b8f: 60        clrc
0b90: 95 be 00  adc   a,$00be+x
0b93: d4 9e     mov   $9e+x,a
0b95: 3f b0 13  call  $13b0
0b98: 42 25     set2  $25
0b9a: f5 77 02  mov   a,$0277+x
0b9d: f0 16     beq   $0bb5
0b9f: 3f e0 13  call  $13e0
0ba2: f5 46 03  mov   a,$0346+x
0ba5: c4 06     mov   $06,a
0ba7: f5 47 03  mov   a,$0347+x
0baa: c4 07     mov   $07,a
0bac: ba 04     movw  ya,$04
0bae: 7a 08     addw  ya,$08
0bb0: 7a 06     addw  ya,$06
0bb2: 5f 2b 14  jmp   $142b

0bb5: 53 25 0c  bbc2  $25,$0bc4
0bb8: f5 47 03  mov   a,$0347+x
0bbb: fd        mov   y,a
0bbc: f5 46 03  mov   a,$0346+x
0bbf: 7a 08     addw  ya,$08
0bc1: 5f 2b 14  jmp   $142b

0bc4: 6f        ret

0bc5: b3 26 03  bbc5  $26,$0bcb
0bc8: b2 26     clr5  $26
0bca: 6f        ret

0bcb: f4 3d     mov   a,$3d+x
0bcd: f0 1e     beq   $0bed
0bcf: 9b 3d     dec   $3d+x
0bd1: d0 04     bne   $0bd7
0bd3: f4 3e     mov   a,$3e+x
0bd5: 2f 10     bra   $0be7
0bd7: f5 10 01  mov   a,$0110+x
0bda: 60        clrc
0bdb: 95 00 01  adc   a,$0100+x
0bde: d5 10 01  mov   $0110+x,a
0be1: f5 11 01  mov   a,$0111+x
0be4: 95 01 01  adc   a,$0101+x
0be7: d5 11 01  mov   $0111+x,a
0bea: d5 06 02  mov   $0206+x,a
0bed: f4 7d     mov   a,$7d+x
0bef: d0 46     bne   $0c37
0bf1: e7 2d     mov   a,($2d+x)
0bf3: 68 f3     cmp   a,#$f3
0bf5: d0 40     bne   $0c37
0bf7: 3f 7d 0e  call  $0e7d
0bfa: 3f 7b 0e  call  $0e7b
0bfd: d4 7e     mov   $7e+x,a
0bff: 3f 7b 0e  call  $0e7b
0c02: d4 7d     mov   $7d+x,a
0c04: f5 51 01  mov   a,$0151+x
0c07: c4 05     mov   $05,a
0c09: f5 50 01  mov   a,$0150+x
0c0c: c4 04     mov   $04,a
0c0e: f5 61 01  mov   a,$0161+x
0c11: c4 07     mov   $07,a
0c13: f5 60 01  mov   a,$0160+x
0c16: c4 06     mov   $06,a
0c18: f5 b7 03  mov   a,$03b7+x
0c1b: c4 0b     mov   $0b,a
0c1d: f5 b6 03  mov   a,$03b6+x
0c20: c4 0a     mov   $0a,a
0c22: 3f 7b 0e  call  $0e7b
0c25: 60        clrc
0c26: 95 57 02  adc   a,$0257+x
0c29: fd        mov   y,a
0c2a: e8 00     mov   a,#$00
0c2c: 7a 04     addw  ya,$04
0c2e: 7a 06     addw  ya,$06
0c30: 7a 0a     addw  ya,$0a
0c32: da 04     movw  $04,ya
0c34: 3f 53 13  call  $1353
0c37: f4 6e     mov   a,$6e+x
0c39: f0 24     beq   $0c5f
0c3b: 9b 6e     dec   $6e+x
0c3d: d0 0d     bne   $0c4c
0c3f: f5 16 02  mov   a,$0216+x
0c42: d5 07 03  mov   $0307+x,a
0c45: e8 00     mov   a,#$00
0c47: d5 06 03  mov   $0306+x,a
0c4a: 2f 13     bra   $0c5f
0c4c: f5 06 03  mov   a,$0306+x
0c4f: 60        clrc
0c50: 95 16 03  adc   a,$0316+x
0c53: d5 06 03  mov   $0306+x,a
0c56: f5 07 03  mov   a,$0307+x
0c59: 95 17 03  adc   a,$0317+x
0c5c: d5 07 03  mov   $0307+x,a
0c5f: f5 17 02  mov   a,$0217+x
0c62: f0 05     beq   $0c69
0c64: e8 00     mov   a,#$00
0c66: 3f 96 14  call  $1496
0c69: f4 6d     mov   a,$6d+x
0c6b: f0 23     beq   $0c90
0c6d: 9b 6d     dec   $6d+x
0c6f: f0 14     beq   $0c85
0c71: f5 26 03  mov   a,$0326+x
0c74: 60        clrc
0c75: 95 36 03  adc   a,$0336+x
0c78: d5 26 03  mov   $0326+x,a
0c7b: f5 27 03  mov   a,$0327+x
0c7e: 95 37 03  adc   a,$0337+x
0c81: d5 27 03  mov   $0327+x,a
0c84: 6f        ret

0c85: f5 27 02  mov   a,$0227+x
0c88: d5 27 03  mov   $0327+x,a
0c8b: e8 00     mov   a,#$00
0c8d: d5 26 03  mov   $0326+x,a
0c90: 6f        ret

0c91: 3f 7b 0e  call  $0e7b
0c94: c4 08     mov   $08,a
0c96: 28 7f     and   a,#$7f
0c98: 68 60     cmp   a,#$60
0c9a: 90 03     bcc   $0c9f
0c9c: 5f 51 0e  jmp   $0e51

0c9f: 33 26 03  bbc1  $26,$0ca5
0ca2: 09 20 17  or    ($17),($20)
0ca5: f3 08 05  bbc7  $08,$0cad
0ca8: f5 66 02  mov   a,$0266+x
0cab: 2f 03     bra   $0cb0
0cad: 3f 7b 0e  call  $0e7b
0cb0: d5 66 02  mov   $0266+x,a
0cb3: 8d 00     mov   y,#$00
0cb5: 7a 2b     addw  ya,$2b
0cb7: da 2b     movw  $2b,ya
0cb9: f0 02     beq   $0cbd
0cbb: 10 1b     bpl   $0cd8
0cbd: 03 26 15  bbs0  $26,$0cd5
0cc0: 3f 7b 0e  call  $0e7b
0cc3: fd        mov   y,a
0cc4: 10 03     bpl   $0cc9
0cc6: f5 67 02  mov   a,$0267+x
0cc9: d5 67 02  mov   $0267+x,a
0ccc: d5 76 02  mov   $0276+x,a
0ccf: dd        mov   a,y
0cd0: 30 03     bmi   $0cd5
0cd2: 3f 7d 0e  call  $0e7d
0cd5: 5f 91 0c  jmp   $0c91

0cd8: 13 26 1a  bbc0  $26,$0cf5
0cdb: f5 76 02  mov   a,$0276+x
0cde: 68 65     cmp   a,#$65
0ce0: f0 06     beq   $0ce8
0ce2: 09 20 16  or    ($16),($20)
0ce5: 09 20 1f  or    ($1f),($20)
0ce8: f5 67 02  mov   a,$0267+x
0ceb: d5 76 02  mov   $0276+x,a
0cee: f5 b7 02  mov   a,$02b7+x
0cf1: 28 7f     and   a,#$7f
0cf3: 2f 27     bra   $0d1c
0cf5: f5 76 02  mov   a,$0276+x
0cf8: 68 65     cmp   a,#$65
0cfa: f0 06     beq   $0d02
0cfc: 09 20 16  or    ($16),($20)
0cff: 09 20 1f  or    ($1f),($20)
0d02: 3f 7b 0e  call  $0e7b
0d05: fd        mov   y,a
0d06: 10 03     bpl   $0d0b
0d08: f5 67 02  mov   a,$0267+x
0d0b: d5 67 02  mov   $0267+x,a
0d0e: d5 76 02  mov   $0276+x,a
0d11: dd        mov   a,y
0d12: 30 03     bmi   $0d17
0d14: 3f 7b 0e  call  $0e7b
0d17: 28 7f     and   a,#$7f
0d19: d5 b7 02  mov   $02b7+x,a
0d1c: d5 17 02  mov   $0217+x,a
0d1f: d0 08     bne   $0d29
0d21: e4 20     mov   a,$20
0d23: 4e 16 00  tclr1 $0016
0d26: 4e 1f 00  tclr1 $001f
0d29: 33 26 0d  bbc1  $26,$0d39
0d2c: e4 08     mov   a,$08
0d2e: 28 7f     and   a,#$7f
0d30: d5 97 02  mov   $0297+x,a
0d33: 3f 30 0f  call  $0f30
0d36: 8f 3c 08  mov   $08,#$3c
0d39: f5 66 02  mov   a,$0266+x
0d3c: fd        mov   y,a
0d3d: f5 67 02  mov   a,$0267+x
0d40: cf        mul   ya
0d41: cd 64     mov   x,#$64
0d43: e0        clrv
0d44: 9e        div   ya,x
0d45: f8 27     mov   x,$27
0d47: 70 06     bvs   $0d4f
0d49: 68 00     cmp   a,#$00
0d4b: d0 02     bne   $0d4f
0d4d: e8 01     mov   a,#$01
0d4f: d4 4e     mov   $4e+x,a
0d51: f5 46 03  mov   a,$0346+x
0d54: c4 0c     mov   $0c,a
0d56: f5 47 03  mov   a,$0347+x
0d59: c4 0d     mov   $0d,a
0d5b: f5 51 01  mov   a,$0151+x
0d5e: c4 05     mov   $05,a
0d60: f5 50 01  mov   a,$0150+x
0d63: c4 04     mov   $04,a
0d65: f5 61 01  mov   a,$0161+x
0d68: c4 07     mov   $07,a
0d6a: f5 60 01  mov   a,$0160+x
0d6d: c4 06     mov   $06,a
0d6f: f5 b7 03  mov   a,$03b7+x
0d72: c4 0b     mov   $0b,a
0d74: f5 b6 03  mov   a,$03b6+x
0d77: c4 0a     mov   $0a,a
0d79: e4 08     mov   a,$08
0d7b: 60        clrc
0d7c: 95 57 02  adc   a,$0257+x
0d7f: fd        mov   y,a
0d80: e8 00     mov   a,#$00
0d82: 7a 04     addw  ya,$04
0d84: 7a 06     addw  ya,$06
0d86: 7a 0a     addw  ya,$0a
0d88: d5 46 03  mov   $0346+x,a
0d8b: dd        mov   a,y
0d8c: 28 7f     and   a,#$7f
0d8e: d5 47 03  mov   $0347+x,a
0d91: e8 00     mov   a,#$00
0d93: d4 9e     mov   $9e+x,a
0d95: d4 9d     mov   $9d+x,a
0d97: d4 cd     mov   $cd+x,a
0d99: d5 76 03  mov   $0376+x,a
0d9c: d5 77 03  mov   $0377+x,a
0d9f: d5 d7 03  mov   $03d7+x,a
0da2: d5 d6 03  mov   $03d6+x,a
0da5: f4 8d     mov   a,$8d+x
0da7: d4 7d     mov   $7d+x,a
0da9: f0 2d     beq   $0dd8
0dab: f4 8e     mov   a,$8e+x
0dad: d4 7e     mov   $7e+x,a
0daf: f5 47 03  mov   a,$0347+x
0db2: c4 05     mov   $05,a
0db4: f5 46 03  mov   a,$0346+x
0db7: c4 04     mov   $04,a
0db9: 83 26 0f  bbs4  $26,$0dcb
0dbc: f5 47 03  mov   a,$0347+x
0dbf: 80        setc
0dc0: b5 07 02  sbc   a,$0207+x
0dc3: d5 47 03  mov   $0347+x,a
0dc6: 3f 53 13  call  $1353
0dc9: 2f 0d     bra   $0dd8
0dcb: e4 0d     mov   a,$0d
0dcd: d5 47 03  mov   $0347+x,a
0dd0: e4 0c     mov   a,$0c
0dd2: d5 46 03  mov   $0346+x,a
0dd5: 3f 53 13  call  $1353
0dd8: f5 47 03  mov   a,$0347+x
0ddb: fd        mov   y,a
0ddc: f5 46 03  mov   a,$0346+x
0ddf: 5f 2b 14  jmp   $142b

; vcmd dispatch table
0de2: dw $0e84  ; 60
0de4: dw $0e89  ; 61
0de6: dw $0e8e  ; 62
0de8: dw $0eaa  ; 63
0dea: dw $0e9c  ; 64
0dec: dw $0eb0  ; e0
0dee: dw $0ed4  ; e1
0df0: dw $0ef6  ; e2
0df2: dw $0f86  ; e3
0df4: dw $0fa3  ; e4
0df6: dw $0fc9  ; e5
0df8: dw $0fe5  ; e6
0dfa: dw $102a  ; e7
0dfc: dw $0ff2  ; e8
0dfe: dw $100f  ; e9
0e00: dw $10aa  ; ea
0e02: dw $10b4  ; eb
0e04: dw $10d9  ; ec
0e06: dw $10df  ; ed
0e08: dw $10e8  ; ee
0e0a: dw $10f3  ; ef
0e0c: dw $110e  ; f0
0e0e: dw $1119  ; f1
0e10: dw $112b  ; f2
0e12: dw $114d  ; f3
0e14: dw $1156  ; f4
0e16: dw $1178  ; f5
0e18: dw $11fb  ; f6
0e1a: dw $120d  ; f7
0e1c: dw $1244  ; f8
0e1e: dw $125f  ; f9
0e20: dw $127a  ; fa
0e22: dw $12de  ; fb
0e24: dw $12e3  ; fc
0e26: dw $12e6  ; fd
0e28: dw $12f4  ; fe
0e2a: dw $1310  ; ff

; vcmd length table
0e2c: db $00,$00,$01,$01,$02
0e31: db $01,$02,$01,$01,$03,$03,$00,$03
0e39: db $00,$03,$01,$02,$01,$03,$01,$02
0e41: db $01,$03,$01,$03,$03,$03,$00,$00
0e49: db $02,$01,$03,$01,$01,$02,$02,$00

0e51: e4 08     mov   a,$08
0e53: 8f db 04  mov   $04,#$db
0e56: 68 e0     cmp   a,#$e0
0e58: b0 0c     bcs   $0e66
0e5a: 68 65     cmp   a,#$65
0e5c: 90 05     bcc   $0e63
0e5e: a2 26     set5  $26
0e60: 5f 26 19  jmp   $1926

0e63: 8f 60 04  mov   $04,#$60
0e66: 80        setc
0e67: a4 04     sbc   a,$04
0e69: 1c        asl   a
0e6a: fd        mov   y,a
0e6b: f6 e3 0d  mov   a,$0de3+y
0e6e: 2d        push  a
0e6f: f6 e2 0d  mov   a,$0de2+y
0e72: 2d        push  a
0e73: dd        mov   a,y
0e74: 5c        lsr   a
0e75: fd        mov   y,a
0e76: f6 2c 0e  mov   a,$0e2c+y
0e79: f0 08     beq   $0e83
0e7b: e7 2d     mov   a,($2d+x)
0e7d: bb 2d     inc   $2d+x
0e7f: d0 02     bne   $0e83
0e81: bb 2e     inc   $2e+x
0e83: 6f        ret

; vcmd 60
0e84: 22 26     set1  $26
0e86: 5f 91 0c  jmp   $0c91

; vcmd 61
0e89: 32 26     clr1  $26
0e8b: 5f 91 0c  jmp   $0c91

; vcmd 62
0e8e: fd        mov   y,a
0e8f: f5 67 02  mov   a,$0267+x
0e92: d5 76 02  mov   $0276+x,a
0e95: dd        mov   a,y
0e96: d5 67 02  mov   $0267+x,a
0e99: 5f 91 0c  jmp   $0c91

; vcmd 64
0e9c: fd        mov   y,a
0e9d: f5 67 02  mov   a,$0267+x
0ea0: d5 76 02  mov   $0276+x,a
0ea3: dd        mov   a,y
0ea4: d5 67 02  mov   $0267+x,a
0ea7: 3f 7b 0e  call  $0e7b
; vcmd 63
0eaa: d5 b7 02  mov   $02b7+x,a
0ead: 5f 91 0c  jmp   $0c91

; vcmd e0
0eb0: d5 66 02  mov   $0266+x,a
0eb3: 09 20 17  or    ($17),($20)
0eb6: e8 00     mov   a,#$00
0eb8: d5 67 02  mov   $0267+x,a
0ebb: d5 76 02  mov   $0276+x,a
0ebe: d4 4e     mov   $4e+x,a
0ec0: d5 17 02  mov   $0217+x,a
0ec3: f5 66 02  mov   a,$0266+x
0ec6: 8d 00     mov   y,#$00
0ec8: 7a 2b     addw  ya,$2b
0eca: da 2b     movw  $2b,ya
0ecc: f0 03     beq   $0ed1
0ece: 30 01     bmi   $0ed1
0ed0: 6f        ret

0ed1: 5f 91 0c  jmp   $0c91

; vcmd e1
0ed4: d5 66 02  mov   $0266+x,a
0ed7: 2d        push  a
0ed8: 3f 7b 0e  call  $0e7b
0edb: d5 67 02  mov   $0267+x,a
0ede: d5 76 02  mov   $0276+x,a
0ee1: ee        pop   y
0ee2: cf        mul   ya
0ee3: cd 64     mov   x,#$64
0ee5: e0        clrv
0ee6: 9e        div   ya,x
0ee7: f8 27     mov   x,$27
0ee9: 70 06     bvs   $0ef1
0eeb: 08 00     or    a,#$00
0eed: d0 02     bne   $0ef1
0eef: e8 01     mov   a,#$01
0ef1: d4 4e     mov   $4e+x,a
0ef3: 5f c3 0e  jmp   $0ec3

; vcmd e2
0ef6: 09 20 17  or    ($17),($20)
0ef9: d5 97 02  mov   $0297+x,a
0efc: 68 14     cmp   a,#$14
0efe: b0 04     bcs   $0f04
0f00: 68 08     cmp   a,#$08
0f02: b0 11     bcs   $0f15
0f04: e8 fd     mov   a,#$fd
0f06: c4 04     mov   $04,a
0f08: e8 05     mov   a,#$05
0f0a: c4 05     mov   $05,a
0f0c: f5 97 02  mov   a,$0297+x
0f0f: 3f 3b 0f  call  $0f3b
0f12: 5f 91 0c  jmp   $0c91

0f15: e5 05 02  mov   a,$0205
0f18: 1c        asl   a
0f19: fd        mov   y,a
0f1a: f6 f1 05  mov   a,$05f1+y
0f1d: c4 04     mov   $04,a
0f1f: f6 f2 05  mov   a,$05f2+y
0f22: c4 05     mov   $05,a
0f24: f5 97 02  mov   a,$0297+x
0f27: 80        setc
0f28: a8 08     sbc   a,#$08
0f2a: 3f 3b 0f  call  $0f3b
0f2d: 5f 91 0c  jmp   $0c91

0f30: e8 9d     mov   a,#$9d
0f32: c4 04     mov   $04,a
0f34: e8 06     mov   a,#$06
0f36: c4 05     mov   $05,a
0f38: f5 97 02  mov   a,$0297+x
0f3b: 8d 08     mov   y,#$08
0f3d: cf        mul   ya
0f3e: 7a 04     addw  ya,$04
0f40: da 04     movw  $04,ya
0f42: 8d 00     mov   y,#$00
0f44: e8 04     mov   a,#$04
0f46: 04 29     or    a,$29
0f48: c4 06     mov   $06,a
0f4a: c5 f2 00  mov   $00f2,a
0f4d: f7 04     mov   a,($04)+y
0f4f: c5 f3 00  mov   $00f3,a
0f52: fc        inc   y
0f53: f7 04     mov   a,($04)+y
0f55: d5 a6 02  mov   $02a6+x,a
0f58: fc        inc   y
0f59: f7 04     mov   a,($04)+y
0f5b: d5 a7 02  mov   $02a7+x,a
0f5e: 8f 03 07  mov   $07,#$03
0f61: fc        inc   y
0f62: ab 06     inc   $06
0f64: e4 06     mov   a,$06
0f66: c5 f2 00  mov   $00f2,a
0f69: f7 04     mov   a,($04)+y
0f6b: c5 f3 00  mov   $00f3,a
0f6e: 6e 07 f0  dbnz  $07,$0f61
0f71: fc        inc   y
0f72: 63 26 0a  bbs3  $26,$0f7f
0f75: f7 04     mov   a,($04)+y
0f77: d5 27 03  mov   $0327+x,a
0f7a: e8 00     mov   a,#$00
0f7c: d5 26 03  mov   $0326+x,a
0f7f: fc        inc   y
0f80: f7 04     mov   a,($04)+y
0f82: d5 b6 02  mov   $02b6+x,a
0f85: 6f        ret

; vcmd e3
0f86: 68 15     cmp   a,#$15
0f88: f0 0f     beq   $0f99
0f8a: 68 16     cmp   a,#$16
0f8c: f0 10     beq   $0f9e
0f8e: d5 27 03  mov   $0327+x,a
0f91: e8 00     mov   a,#$00
0f93: d5 26 03  mov   $0326+x,a
0f96: 5f 91 0c  jmp   $0c91

0f99: 62 26     set3  $26
0f9b: 5f 91 0c  jmp   $0c91

0f9e: 72 26     clr3  $26
0fa0: 5f 91 0c  jmp   $0c91

; vcmd e4
0fa3: d5 46 02  mov   $0246+x,a
0fa6: 3f 7b 0e  call  $0e7b
0fa9: d5 be 00  mov   $00be+x,a
0fac: fd        mov   y,a
0fad: f5 06 02  mov   a,$0206+x
0fb0: cf        mul   ya
0fb1: dd        mov   a,y
0fb2: d5 36 02  mov   $0236+x,a
0fb5: 3f 7b 0e  call  $0e7b
0fb8: d5 77 03  mov   $0377+x,a
0fbb: d5 56 02  mov   $0256+x,a
0fbe: e8 00     mov   a,#$00
0fc0: d5 76 03  mov   $0376+x,a
0fc3: d5 47 02  mov   $0247+x,a
0fc6: 5f 91 0c  jmp   $0c91

; vcmd e5
0fc9: d5 77 02  mov   $0277+x,a
0fcc: 3f 7b 0e  call  $0e7b
0fcf: d5 a7 03  mov   $03a7+x,a
0fd2: 3f 7b 0e  call  $0e7b
0fd5: d5 a6 03  mov   $03a6+x,a
0fd8: e8 00     mov   a,#$00
0fda: d4 5e     mov   $5e+x,a
0fdc: d5 96 03  mov   $0396+x,a
0fdf: d5 97 03  mov   $0397+x,a
0fe2: 5f 91 0c  jmp   $0c91

; vcmd e6
0fe5: f4 2d     mov   a,$2d+x
0fe7: d5 70 01  mov   $0170+x,a
0fea: f4 2e     mov   a,$2e+x
0fec: d5 71 01  mov   $0171+x,a
0fef: 5f 91 0c  jmp   $0c91

; vcmd e8
0ff2: f4 2d     mov   a,$2d+x
0ff4: d5 80 01  mov   $0180+x,a
0ff7: f4 2e     mov   a,$2e+x
0ff9: d5 81 01  mov   $0181+x,a
0ffc: e8 00     mov   a,#$00
0ffe: d4 5d     mov   $5d+x,a
1000: d5 40 01  mov   $0140+x,a
1003: d5 41 01  mov   $0141+x,a
1006: d5 60 01  mov   $0160+x,a
1009: d5 61 01  mov   $0161+x,a
100c: 5f 91 0c  jmp   $0c91

; vcmd e9
100f: fd        mov   y,a
1010: 7d        mov   a,x
1011: 60        clrc
1012: 88 10     adc   a,#$10
1014: 5d        mov   x,a
1015: dd        mov   a,y
1016: 68 00     cmp   a,#$00
1018: f0 32     beq   $104c
101a: bb 4d     inc   $4d+x
101c: de 4d 2d  cbne  $4d+x,$104c
101f: f8 27     mov   x,$27
1021: 3f 7d 0e  call  $0e7d
1024: 3f 7d 0e  call  $0e7d
1027: 5f 91 0c  jmp   $0c91

; vcmd e7
102a: 68 00     cmp   a,#$00
102c: f0 1e     beq   $104c
102e: bb 4d     inc   $4d+x
1030: de 4d 19  cbne  $4d+x,$104c
1033: 3f 7d 0e  call  $0e7d
1036: 3f 7d 0e  call  $0e7d
1039: e8 00     mov   a,#$00
103b: d4 4d     mov   $4d+x,a
103d: d5 30 01  mov   $0130+x,a
1040: d5 31 01  mov   $0131+x,a
1043: d5 50 01  mov   $0150+x,a
1046: d5 51 01  mov   $0151+x,a
1049: 5f 91 0c  jmp   $0c91

104c: f5 30 01  mov   a,$0130+x
104f: c4 04     mov   $04,a
1051: f5 31 01  mov   a,$0131+x
1054: c4 05     mov   $05,a
1056: 4d        push  x
1057: f8 27     mov   x,$27
1059: 3f 7b 0e  call  $0e7b
105c: ce        pop   x
105d: 8d 00     mov   y,#$00
105f: 08 00     or    a,#$00
1061: f0 0c     beq   $106f
1063: 10 01     bpl   $1066
1065: dc        dec   y
1066: 7a 04     addw  ya,$04
1068: d5 30 01  mov   $0130+x,a
106b: dd        mov   a,y
106c: d5 31 01  mov   $0131+x,a
106f: 4d        push  x
1070: f8 27     mov   x,$27
1072: 3f 7b 0e  call  $0e7b
1075: ce        pop   x
1076: 68 00     cmp   a,#$00
1078: f0 1d     beq   $1097
107a: 8d 00     mov   y,#$00
107c: 1c        asl   a
107d: 90 01     bcc   $1080
107f: dc        dec   y
1080: cb 04     mov   $04,y
1082: 1c        asl   a
1083: 2b 04     rol   $04
1085: 1c        asl   a
1086: 2b 04     rol   $04
1088: 60        clrc
1089: 95 50 01  adc   a,$0150+x
108c: d5 50 01  mov   $0150+x,a
108f: e4 04     mov   a,$04
1091: 95 51 01  adc   a,$0151+x
1094: d5 51 01  mov   $0151+x,a
1097: eb 27     mov   y,$27
1099: f5 70 01  mov   a,$0170+x
109c: d6 2d 00  mov   $002d+y,a
109f: f5 71 01  mov   a,$0171+x
10a2: d6 2e 00  mov   $002e+y,a
10a5: f8 27     mov   x,$27
10a7: 5f 91 0c  jmp   $0c91

; vcmd ea
10aa: d5 06 02  mov   $0206+x,a
10ad: e8 00     mov   a,#$00
10af: d4 3d     mov   $3d+x,a
10b1: 5f 91 0c  jmp   $0c91

; vcmd eb
10b4: d4 3d     mov   $3d+x,a
10b6: 2d        push  a
10b7: 3f 7b 0e  call  $0e7b
10ba: d4 3e     mov   $3e+x,a
10bc: 80        setc
10bd: b5 06 02  sbc   a,$0206+x
10c0: ce        pop   x
10c1: 3f 36 13  call  $1336
10c4: d5 00 01  mov   $0100+x,a
10c7: dd        mov   a,y
10c8: d5 01 01  mov   $0101+x,a
10cb: f5 06 02  mov   a,$0206+x
10ce: d5 11 01  mov   $0111+x,a
10d1: e8 00     mov   a,#$00
10d3: d5 10 01  mov   $0110+x,a
10d6: 5f 91 0c  jmp   $0c91

; vcmd ec
10d9: d5 57 02  mov   $0257+x,a
10dc: 5f 91 0c  jmp   $0c91

; vcmd ed
10df: 3f 7d 0e  call  $0e7d
10e2: 3f 7d 0e  call  $0e7d
10e5: 5f 91 0c  jmp   $0c91

; vcmd ee
10e8: d5 07 03  mov   $0307+x,a
10eb: e8 00     mov   a,#$00
10ed: d5 06 03  mov   $0306+x,a
10f0: 5f 91 0c  jmp   $0c91

; vcmd ef
10f3: d4 6e     mov   $6e+x,a
10f5: 2d        push  a
10f6: 3f 7b 0e  call  $0e7b
10f9: d5 16 02  mov   $0216+x,a
10fc: 80        setc
10fd: b5 07 03  sbc   a,$0307+x
1100: ce        pop   x
1101: 3f 36 13  call  $1336
1104: d5 16 03  mov   $0316+x,a
1107: dd        mov   a,y
1108: d5 17 03  mov   $0317+x,a
110b: 5f 91 0c  jmp   $0c91

; vcmd f0
110e: d4 8d     mov   $8d+x,a
1110: 82 26     set4  $26
1112: e8 00     mov   a,#$00
1114: d4 8e     mov   $8e+x,a
1116: 5f 91 0c  jmp   $0c91

; vcmd f1
1119: d4 8e     mov   $8e+x,a
111b: 3f 7b 0e  call  $0e7b
111e: d4 8d     mov   $8d+x,a
1120: 3f 7b 0e  call  $0e7b
1123: d5 07 02  mov   $0207+x,a
1126: 92 26     clr4  $26
1128: 5f 91 0c  jmp   $0c91

; vcmd f2
112b: 8f 00 04  mov   $04,#$00
112e: 08 00     or    a,#$00
1130: 30 05     bmi   $1137
1132: 8d 04     mov   y,#$04
1134: cf        mul   ya
1135: 2f 0c     bra   $1143
1137: 48 ff     eor   a,#$ff
1139: bc        inc   a
113a: 8d 04     mov   y,#$04
113c: cf        mul   ya
113d: da 04     movw  $04,ya
113f: ba 0e     movw  ya,$0e
1141: 9a 04     subw  ya,$04
1143: d5 b6 03  mov   $03b6+x,a
1146: dd        mov   a,y
1147: d5 b7 03  mov   $03b7+x,a
114a: 5f 91 0c  jmp   $0c91

; vcmd f3
114d: 3f 7d 0e  call  $0e7d
1150: 3f 7d 0e  call  $0e7d
1153: 5f 91 0c  jmp   $0c91

; vcmd f4
1156: c4 1c     mov   $1c,a
1158: f0 0f     beq   $1169
115a: 3f 7b 0e  call  $0e7b
115d: c4 14     mov   $14,a
115f: 3f 7b 0e  call  $0e7b
1162: c4 15     mov   $15,a
1164: b2 18     clr5  $18
1166: 5f 91 0c  jmp   $0c91

1169: c4 14     mov   $14,a
116b: c4 15     mov   $15,a
116d: a2 18     set5  $18
116f: 3f 7d 0e  call  $0e7d
1172: 3f 7d 0e  call  $0e7d
1175: 5f 91 0c  jmp   $0c91

; vcmd f5
1178: 3f a6 11  call  $11a6
117b: 3f 7b 0e  call  $0e7b
117e: c4 19     mov   $19,a
1180: 3f 7d 0e  call  $0e7d
1183: 8d 08     mov   y,#$08
1185: f6 95 11  mov   a,$1195+y
1188: c5 f2 00  mov   $00f2,a
118b: f6 9d 11  mov   a,$119d+y
118e: c5 f3 00  mov   $00f3,a
1191: fe f2     dbnz  y,$1185
1193: 5f 91 0c  jmp   $0c91

; echo filter regs ($1195+y)
1196: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

; echo filters ($119d+y)
119e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9

11a6: c4 1e     mov   $1e,a
11a8: 8d 7d     mov   y,#$7d
11aa: cc f2 00  mov   $00f2,y
11ad: e5 f3 00  mov   a,$00f3
11b0: 64 1e     cmp   a,$1e
11b2: f0 31     beq   $11e5
11b4: 28 0f     and   a,#$0f
11b6: 48 ff     eor   a,#$ff
11b8: f3 1d 03  bbc7  $1d,$11be
11bb: 60        clrc
11bc: 84 1d     adc   a,$1d
11be: c4 1d     mov   $1d,a
11c0: 8d 04     mov   y,#$04
11c2: f6 7d 15  mov   a,$157d+y
11c5: c5 f2 00  mov   $00f2,a
11c8: e8 00     mov   a,#$00
11ca: c5 f3 00  mov   $00f3,a
11cd: fe f3     dbnz  y,$11c2
11cf: e4 18     mov   a,$18
11d1: 08 20     or    a,#$20
11d3: 8d 6c     mov   y,#$6c
11d5: cc f2 00  mov   $00f2,y
11d8: c5 f3 00  mov   $00f3,a
11db: e4 1e     mov   a,$1e
11dd: 8d 7d     mov   y,#$7d
11df: cc f2 00  mov   $00f2,y
11e2: c5 f3 00  mov   $00f3,a
11e5: 68 00     cmp   a,#$00
11e7: f0 09     beq   $11f2
11e9: 1c        asl   a
11ea: 1c        asl   a
11eb: 1c        asl   a
11ec: 48 ff     eor   a,#$ff
11ee: bc        inc   a
11ef: 60        clrc
11f0: 88 00     adc   a,#$00
11f2: 8d 6d     mov   y,#$6d
11f4: cc f2 00  mov   $00f2,y
11f7: c5 f3 00  mov   $00f3,a
11fa: 6f        ret

; vcmd f6
11fb: f4 2d     mov   a,$2d+x
11fd: d5 e6 02  mov   $02e6+x,a
1200: f4 2e     mov   a,$2e+x
1202: d5 e7 02  mov   $02e7+x,a
1205: e8 c0     mov   a,#$c0
1207: 4e 26 00  tclr1 $0026
120a: 5f 91 0c  jmp   $0c91

; vcmd f7
120d: c3 26 08  bbs6  $26,$1218
1210: e3 26 20  bbs7  $26,$1233
1213: c2 26     set6  $26
1215: 5f 91 0c  jmp   $0c91

1218: d2 26     clr6  $26
121a: e2 26     set7  $26
121c: f4 2d     mov   a,$2d+x
121e: d5 f6 02  mov   $02f6+x,a
1221: f4 2e     mov   a,$2e+x
1223: d5 f7 02  mov   $02f7+x,a
1226: f5 e6 02  mov   a,$02e6+x
1229: d4 2d     mov   $2d+x,a
122b: f5 e7 02  mov   a,$02e7+x
122e: d4 2e     mov   $2e+x,a
1230: 5f 91 0c  jmp   $0c91

1233: c2 26     set6  $26
1235: f2 26     clr7  $26
1237: f5 f6 02  mov   a,$02f6+x
123a: d4 2d     mov   $2d+x,a
123c: f5 f7 02  mov   a,$02f7+x
123f: d4 2e     mov   $2e+x,a
1241: 5f 91 0c  jmp   $0c91

; vcmd f8
1244: d4 6d     mov   $6d+x,a
1246: 2d        push  a
1247: 3f 7b 0e  call  $0e7b
124a: d5 27 02  mov   $0227+x,a
124d: 80        setc
124e: b5 27 03  sbc   a,$0327+x
1251: ce        pop   x
1252: 3f 36 13  call  $1336
1255: d5 36 03  mov   $0336+x,a
1258: dd        mov   a,y
1259: d5 37 03  mov   $0337+x,a
125c: 5f 91 0c  jmp   $0c91

; vcmd f9
125f: d5 47 02  mov   $0247+x,a
1262: 2d        push  a
1263: 8d 00     mov   y,#$00
1265: f5 56 02  mov   a,$0256+x
1268: ce        pop   x
1269: 9e        div   ya,x
126a: 2d        push  a
126b: e8 00     mov   a,#$00
126d: 9e        div   ya,x
126e: f8 27     mov   x,$27
1270: d5 86 03  mov   $0386+x,a
1273: ae        pop   a
1274: d5 87 03  mov   $0387+x,a
1277: 5f 91 0c  jmp   $0c91

; vcmd fa
127a: 8d 00     mov   y,#$00
127c: 68 a0     cmp   a,#$a0
127e: b0 34     bcs   $12b4
1280: cd 0a     mov   x,#$0a
1282: 9e        div   ya,x
1283: c4 04     mov   $04,a
1285: dd        mov   a,y
1286: 28 07     and   a,#$07
1288: 9f        xcn   a
1289: 04 04     or    a,$04
128b: 08 80     or    a,#$80
128d: fd        mov   y,a
128e: e8 05     mov   a,#$05
1290: 04 29     or    a,$29
1292: 5d        mov   x,a
1293: c9 f2 00  mov   $00f2,x
1296: cc f3 00  mov   $00f3,y
1299: 3d        inc   x
129a: c9 f2 00  mov   $00f2,x
129d: f8 27     mov   x,$27
129f: 3f 7b 0e  call  $0e7b
12a2: 8d 00     mov   y,#$00
12a4: cd 1e     mov   x,#$1e
12a6: 9e        div   ya,x
12a7: fc        inc   y
12a8: fc        inc   y
12a9: cb 04     mov   $04,y
12ab: 9f        xcn   a
12ac: 1c        asl   a
12ad: 04 04     or    a,$04
12af: c5 f3 00  mov   $00f3,a
12b2: 2f 18     bra   $12cc
12b4: e8 05     mov   a,#$05
12b6: 04 29     or    a,$29
12b8: 5d        mov   x,a
12b9: c9 f2 00  mov   $00f2,x
12bc: cc f3 00  mov   $00f3,y
12bf: 3d        inc   x
12c0: 3d        inc   x
12c1: c9 f2 00  mov   $00f2,x
12c4: f8 27     mov   x,$27
12c6: 3f 7b 0e  call  $0e7b
12c9: c5 f3 00  mov   $00f3,a
12cc: f8 27     mov   x,$27
12ce: 3f 7b 0e  call  $0e7b
12d1: 8d 10     mov   y,#$10
12d3: cf        mul   ya
12d4: d5 c6 03  mov   $03c6+x,a
12d7: dd        mov   a,y
12d8: d5 c7 03  mov   $03c7+x,a
12db: 5f 91 0c  jmp   $0c91

; vcmd fb
12de: c4 1a     mov   $1a,a
12e0: 5f 91 0c  jmp   $0c91

; vcmd fc
12e3: 5f de 12  jmp   $12de

; vcmd fd
12e6: c4 04     mov   $04,a
12e8: 3f 7b 0e  call  $0e7b
12eb: d4 2e     mov   $2e+x,a
12ed: e4 04     mov   a,$04
12ef: d4 2d     mov   $2d+x,a
12f1: 5f 91 0c  jmp   $0c91

; vcmd fe
12f4: c4 04     mov   $04,a
12f6: 3f 7b 0e  call  $0e7b
12f9: c4 05     mov   $05,a
12fb: f4 2d     mov   a,$2d+x
12fd: d5 20 01  mov   $0120+x,a
1300: f4 2e     mov   a,$2e+x
1302: d5 21 01  mov   $0121+x,a
1305: ba 04     movw  ya,$04
1307: d4 2d     mov   $2d+x,a
1309: db 2e     mov   $2e+x,y
130b: 42 26     set2  $26
130d: 5f 91 0c  jmp   $0c91

; vcmd ff
1310: 53 26 0f  bbc2  $26,$1322
1313: 52 26     clr2  $26
1315: f5 20 01  mov   a,$0120+x
1318: d4 2d     mov   $2d+x,a
131a: f5 21 01  mov   a,$0121+x
131d: d4 2e     mov   $2e+x,a
131f: 5f 91 0c  jmp   $0c91

1322: e8 00     mov   a,#$00
1324: d4 bd     mov   $bd+x,a
1326: d4 ce     mov   $ce+x,a
1328: d5 26 02  mov   $0226+x,a
132b: e4 20     mov   a,$20
132d: 0e 17 00  tset1 $0017
1330: 4e 1f 00  tclr1 $001f
1333: a2 26     set5  $26
1335: 6f        ret

1336: ed        notc
1337: 6b 04     ror   $04
1339: 10 03     bpl   $133e
133b: 48 ff     eor   a,#$ff
133d: bc        inc   a
133e: 8d 00     mov   y,#$00
1340: 9e        div   ya,x
1341: 2d        push  a
1342: e8 00     mov   a,#$00
1344: 9e        div   ya,x
1345: ee        pop   y
1346: f8 27     mov   x,$27
1348: f3 04 07  bbc7  $04,$1352
134b: da 04     movw  $04,ya
134d: e8 00     mov   a,#$00
134f: fd        mov   y,a
1350: 9a 04     subw  ya,$04
1352: 6f        ret

1353: f4 7d     mov   a,$7d+x
1355: f0 58     beq   $13af
1357: f5 47 03  mov   a,$0347+x
135a: c4 07     mov   $07,a
135c: f5 46 03  mov   a,$0346+x
135f: c4 06     mov   $06,a
1361: ba 04     movw  ya,$04
1363: ad 60     cmp   y,#$60
1365: 90 0c     bcc   $1373
1367: ad 80     cmp   y,#$80
1369: 90 04     bcc   $136f
136b: ba 0e     movw  ya,$0e
136d: 2f 04     bra   $1373
136f: 8d 5f     mov   y,#$5f
1371: e8 ff     mov   a,#$ff
1373: d5 66 03  mov   $0366+x,a
1376: 2d        push  a
1377: dd        mov   a,y
1378: d5 67 03  mov   $0367+x,a
137b: f4 7d     mov   a,$7d+x
137d: 5d        mov   x,a
137e: ae        pop   a
137f: 9a 06     subw  ya,$06
1381: da 04     movw  $04,ya
1383: ed        notc
1384: 6b 06     ror   $06
1386: 10 0a     bpl   $1392
1388: 58 ff 04  eor   $04,#$ff
138b: 58 ff 05  eor   $05,#$ff
138e: 3a 04     incw  $04
1390: ba 04     movw  ya,$04
1392: 8d 00     mov   y,#$00
1394: e4 05     mov   a,$05
1396: 9e        div   ya,x
1397: 2d        push  a
1398: e4 04     mov   a,$04
139a: 9e        div   ya,x
139b: ee        pop   y
139c: f3 06 07  bbc7  $06,$13a6
139f: da 04     movw  $04,ya
13a1: e8 00     mov   a,#$00
13a3: fd        mov   y,a
13a4: 9a 04     subw  ya,$04
13a6: f8 27     mov   x,$27
13a8: d5 56 03  mov   $0356+x,a
13ab: dd        mov   a,y
13ac: d5 57 03  mov   $0357+x,a
13af: 6f        ret

13b0: c4 04     mov   $04,a
13b2: f3 04 03  bbc7  $04,$13b8
13b5: 48 ff     eor   a,#$ff
13b7: bc        inc   a
13b8: 1c        asl   a
13b9: 10 03     bpl   $13be
13bb: 48 ff     eor   a,#$ff
13bd: bc        inc   a
13be: 5c        lsr   a
13bf: 5c        lsr   a
13c0: fd        mov   y,a
13c1: f5 77 03  mov   a,$0377+x
13c4: cf        mul   ya
13c5: da 08     movw  $08,ya
13c7: f5 56 02  mov   a,$0256+x
13ca: 30 08     bmi   $13d4
13cc: 4b 09     lsr   $09
13ce: 6b 08     ror   $08
13d0: 4b 09     lsr   $09
13d2: 6b 08     ror   $08
13d4: f3 04 08  bbc7  $04,$13df
13d7: 58 ff 08  eor   $08,#$ff
13da: 58 ff 09  eor   $09,#$ff
13dd: 3a 08     incw  $08
13df: 6f        ret

13e0: e8 00     mov   a,#$00
13e2: c4 05     mov   $05,a
13e4: c4 04     mov   $04,a
13e6: f5 77 02  mov   a,$0277+x
13e9: f0 3f     beq   $142a
13eb: 60        clrc
13ec: 94 5e     adc   a,$5e+x
13ee: d4 5e     mov   $5e+x,a
13f0: 90 38     bcc   $142a
13f2: f5 97 03  mov   a,$0397+x
13f5: 5c        lsr   a
13f6: f5 96 03  mov   a,$0396+x
13f9: 5d        mov   x,a
13fa: 90 09     bcc   $1405
13fc: f5 93 17  mov   a,$1793+x
13ff: fd        mov   y,a
1400: f5 92 17  mov   a,$1792+x
1403: 2f 07     bra   $140c
1405: f5 93 16  mov   a,$1693+x
1408: fd        mov   y,a
1409: f5 92 16  mov   a,$1692+x
140c: f8 27     mov   x,$27
140e: 35 a6 03  and   a,$03a6+x
1411: c4 04     mov   $04,a
1413: dd        mov   a,y
1414: 35 a7 03  and   a,$03a7+x
1417: c4 05     mov   $05,a
1419: f5 96 03  mov   a,$0396+x
141c: 60        clrc
141d: 88 01     adc   a,#$01
141f: d5 96 03  mov   $0396+x,a
1422: f5 97 03  mov   a,$0397+x
1425: 88 00     adc   a,#$00
1427: d5 97 03  mov   $0397+x,a
142a: 6f        ret

142b: 2d        push  a
142c: 6d        push  y
142d: f5 a6 02  mov   a,$02a6+x
1430: c4 05     mov   $05,a
1432: f5 a7 02  mov   a,$02a7+x
1435: c4 04     mov   $04,a
1437: 30 06     bmi   $143f
1439: ee        pop   y
143a: ae        pop   a
143b: 7a 04     addw  ya,$04
143d: 2f 0c     bra   $144b
143f: ae        pop   a
1440: 60        clrc
1441: 84 05     adc   a,$05
1443: fd        mov   y,a
1444: ae        pop   a
1445: 60        clrc
1446: 84 04     adc   a,$04
1448: b0 01     bcs   $144b
144a: dc        dec   y
144b: da 04     movw  $04,ya
144d: dd        mov   a,y
144e: 28 7f     and   a,#$7f
1450: 1c        asl   a
1451: fd        mov   y,a
1452: f6 93 15  mov   a,$1593+y
1455: c4 07     mov   $07,a
1457: f6 92 15  mov   a,$1592+y
145a: c4 06     mov   $06,a
145c: f6 95 15  mov   a,$1595+y
145f: 2d        push  a
1460: f6 94 15  mov   a,$1594+y
1463: ee        pop   y
1464: 9a 06     subw  ya,$06
1466: b0 04     bcs   $146c
1468: 8d 00     mov   y,#$00
146a: e8 c9     mov   a,#$c9
146c: 6d        push  y
146d: eb 04     mov   y,$04
146f: cf        mul   ya
1470: 8f 00 09  mov   $09,#$00
1473: cb 08     mov   $08,y
1475: ae        pop   a
1476: eb 04     mov   y,$04
1478: cf        mul   ya
1479: 7a 08     addw  ya,$08
147b: 7a 06     addw  ya,$06
147d: 6d        push  y
147e: 2d        push  a
147f: e8 02     mov   a,#$02
1481: 04 29     or    a,$29
1483: fd        mov   y,a
1484: ae        pop   a
1485: cc f2 00  mov   $00f2,y
1488: c5 f3 00  mov   $00f3,a
148b: fc        inc   y
148c: ae        pop   a
148d: 28 3f     and   a,#$3f
148f: cc f2 00  mov   $00f2,y
1492: c5 f3 00  mov   $00f3,a
1495: 6f        ret

1496: 8f 00 05  mov   $05,#$00
1499: 8f 00 07  mov   $07,#$00
149c: c4 04     mov   $04,a
149e: 08 00     or    a,#$00
14a0: 10 02     bpl   $14a4
14a2: 8b 05     dec   $05
14a4: f5 d7 03  mov   a,$03d7+x
14a7: c4 06     mov   $06,a
14a9: f5 30 01  mov   a,$0130+x
14ac: c4 08     mov   $08,a
14ae: f5 31 01  mov   a,$0131+x
14b1: c4 09     mov   $09,a
14b3: f5 40 01  mov   a,$0140+x
14b6: c4 0a     mov   $0a,a
14b8: f5 41 01  mov   a,$0141+x
14bb: c4 0b     mov   $0b,a
14bd: f5 17 02  mov   a,$0217+x
14c0: 8d 00     mov   y,#$00
14c2: 9a 04     subw  ya,$04
14c4: 9a 06     subw  ya,$06
14c6: 7a 08     addw  ya,$08
14c8: 7a 0a     addw  ya,$0a
14ca: ad 80     cmp   y,#$80
14cc: b0 33     bcs   $1501
14ce: ad 00     cmp   y,#$00
14d0: d0 04     bne   $14d6
14d2: 08 00     or    a,#$00
14d4: 10 02     bpl   $14d8
14d6: e8 7f     mov   a,#$7f
14d8: fd        mov   y,a
14d9: f5 07 03  mov   a,$0307+x
14dc: cf        mul   ya
14dd: 1c        asl   a
14de: dd        mov   a,y
14df: 3c        rol   a
14e0: 78 00 23  cmp   $23,#$00
14e3: f0 14     beq   $14f9
14e5: fd        mov   y,a
14e6: c8 0c     cmp   x,#$0c
14e8: 90 09     bcc   $14f3
14ea: f4 ce     mov   a,$ce+x
14ec: 68 4d     cmp   a,#$4d
14ee: b0 03     bcs   $14f3
14f0: dd        mov   a,y
14f1: 2f 06     bra   $14f9
14f3: e4 23     mov   a,$23
14f5: cf        mul   ya
14f6: 1c        asl   a
14f7: dd        mov   a,y
14f8: 3c        rol   a
14f9: 80        setc
14fa: b5 b6 02  sbc   a,$02b6+x
14fd: 90 02     bcc   $1501
14ff: b0 02     bcs   $1503
1501: e8 00     mov   a,#$00
1503: c4 05     mov   $05,a
1505: e8 0a     mov   a,#$0a
1507: 03 25 09  bbs0  $25,$1513
150a: f5 27 03  mov   a,$0327+x
150d: 68 15     cmp   a,#$15
150f: 90 02     bcc   $1513
1511: e8 14     mov   a,#$14
1513: c4 04     mov   $04,a
1515: e4 29     mov   a,$29
1517: 08 00     or    a,#$00
1519: c5 f2 00  mov   $00f2,a
151c: f8 04     mov   x,$04
151e: f5 54 15  mov   a,$1554+x
1521: eb 05     mov   y,$05
1523: cf        mul   ya
1524: cd 7f     mov   x,#$7f
1526: 9e        div   ya,x
1527: c5 f3 00  mov   $00f3,a
152a: f8 27     mov   x,$27
152c: e4 29     mov   a,$29
152e: 08 01     or    a,#$01
1530: c5 f2 00  mov   $00f2,a
1533: f8 04     mov   x,$04
1535: f5 69 15  mov   a,$1569+x
1538: eb 05     mov   y,$05
153a: cf        mul   ya
153b: cd 7f     mov   x,#$7f
153d: 9e        div   ya,x
153e: c5 f3 00  mov   $00f3,a
1541: f8 27     mov   x,$27
1543: 6f        ret

1544: db $00,$00
1546: db $10,$00
1548: db $20,$00
154a: db $30,$00
154c: db $40,$00
154e: db $50,$00
1550: db $60,$00
1552: db $70,$00

; pan -> left volume table
1554: db $00,$05,$0c,$14,$1e,$28,$32,$3c
155c: db $46,$50,$59,$62,$69,$6f,$74,$78
1564: db $7b,$7d,$7e,$7e,$7f

; pan -> right volume table
1569: db $7f,$7e,$7e,$7d,$7b,$78,$74,$6f
1571: db $69,$62,$59,$50,$46,$3c,$32,$28
1579: db $1e,$14,$0c,$05,$00

; dsp reg shadows ($157d+x)
; EVOL(L),EVOL(R),EFB,EON,FLG,KON,KOF,NON,PMON,KOF
157e: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1588: db $14,$15,$19,$1c,$18,$16,$0e,$1b,$1a,$17

; pitch table
1592: dw $0042
1594: dw $0046
1596: dw $004b
1598: dw $004f
159a: dw $0054
159c: dw $0059
159e: dw $005e
15a0: dw $0064
15a2: dw $006a
15a4: dw $0070
15a6: dw $0077
15a8: dw $007e
15aa: dw $0085
15ac: dw $008d
15ae: dw $0096
15b0: dw $009f
15b2: dw $00a8
15b4: dw $00b2
15b6: dw $00bd
15b8: dw $00c8
15ba: dw $00d4
15bc: dw $00e1
15be: dw $00ee
15c0: dw $00fc
15c2: dw $010b
15c4: dw $011b
15c6: dw $012c
15c8: dw $013e
15ca: dw $0151
15cc: dw $0165
15ce: dw $017a
15d0: dw $0191
15d2: dw $01a9
15d4: dw $01c2
15d6: dw $01dd
15d8: dw $01f9
15da: dw $0217
15dc: dw $0237
15de: dw $0259
15e0: dw $027d
15e2: dw $02a3
15e4: dw $02cb
15e6: dw $02f5
15e8: dw $0322
15ea: dw $0352
15ec: dw $0385
15ee: dw $03ba
15f0: dw $03f3
15f2: dw $042f
15f4: dw $046f
15f6: dw $04b2
15f8: dw $04fa
15fa: dw $0546
15fc: dw $0596
15fe: dw $05eb
1600: dw $0645
1602: dw $06a5
1604: dw $070a
1606: dw $0775
1608: dw $07e6
160a: dw $085f
160c: dw $08de
160e: dw $0965
1610: dw $09f4
1612: dw $0a8c
1614: dw $0b2c
1616: dw $0bd6
1618: dw $0c8b
161a: dw $0d4a
161c: dw $0e14
161e: dw $0eea
1620: dw $0fcd
1622: dw $10be
1624: dw $11bd
1626: dw $12cb
1628: dw $13e9
162a: dw $1518
162c: dw $1659
162e: dw $17ad
1630: dw $1916
1632: dw $1a94
1634: dw $1c28
1636: dw $1dd5
1638: dw $1f9b
163a: dw $217c
163c: dw $237a
163e: dw $2596
1640: dw $27d2
1642: dw $2a30
1644: dw $2cb2
1646: dw $2f5a
1648: dw $322c
164a: dw $3528
164c: dw $3850
164e: dw $3bac
1650: dw $3f36

1652: dw $000b
1654: dw $000c
1656: dw $000d
1658: dw $000e
165a: dw $000e
165c: dw $000f
165e: dw $0010
1660: dw $0010
1662: dw $0012
1664: dw $0013
1666: dw $0014
1668: dw $0015
166a: dw $0016
166c: dw $0018
166e: dw $0019
1670: dw $001b
1672: dw $001c
1674: dw $001e
1676: dw $0020
1678: dw $0021
167a: dw $0023
167c: dw $0026
167e: dw $0028
1680: dw $002a
1682: dw $002d
1684: dw $002f
1686: dw $0032
1688: dw $0035
168a: dw $0038
168c: dw $003c
168e: dw $003f
1690: dw $0042

1692: dw $3c9f
1694: dw $52b2
1696: dw $45af
1698: dw $89c7
169a: dw $7f10
169c: dw $9de0
169e: dw $1fdc
16a0: dw $1661
16a2: dw $c939
16a4: dw $eb9c
16a6: dw $0857
16a8: dw $f866
16aa: dw $245a
16ac: dw $0ebf
16ae: dw $153e
16b0: dw $db4b
16b2: dw $f5ab
16b4: dw $0c31
16b6: dw $0243
16b8: dw $de55
16ba: dw $da41
16bc: dw $aebd
16be: dw $b019
16c0: dw $5748
16c2: dw $a3ba
16c4: dw $0b36
16c6: dw $dff9
16c8: dw $a817
16ca: dw $0c04
16cc: dw $91e0
16ce: dw $5d18
16d0: dw $d3dd
16d2: dw $8a28
16d4: dw $11f2
16d6: dw $6f59
16d8: dw $0a06
16da: dw $2a34
16dc: dw $ac79
16de: dw $a75e
16e0: dw $c683
16e2: dw $c139
16e4: dw $3ab4
16e6: dw $fe3f
16e8: dw $ef4f
16ea: dw $001f
16ec: dw $9930
16ee: dw $284c
16f0: dw $ed83
16f2: dw $2f8a
16f4: dw $662c
16f6: dw $d63f
16f8: dw $b76c
16fa: dw $2249
16fc: dw $65bc
16fe: dw $cffa
1700: dw $b102
1702: dw $f046
1704: dw $d79a
1706: dw $0fe2
1708: dw $c511
170a: dw $f674
170c: dw $2c7a
170e: dw $fb8f
1710: dw $6a19
1712: dw $75e5
1714: dw $4a51
1716: dw $b8ff
1718: dw $627f
171a: dw $4fdb
171c: dw $e814
171e: dw $d6c2
1720: dw $b962
1722: dw $adc2
1724: dw $d5a6
1726: dw $f729
1728: dw $2e14
172a: dw $186c
172c: dw $a48e
172e: dw $a0c1
1730: dw $327e
1732: dw $bea9
1734: dw $15e6
1736: dw $7db6
1738: dw $a0f8
173a: dw $12e6
173c: dw $677a
173e: dw $d247
1740: dw $5803
1742: dw $d1fd
1744: dw $319e
1746: dw $509b
1748: dw $a554
174a: dw $72ec
174c: dw $d570
174e: dw $9bb6
1750: dw $7c82
1752: dw $c5a1
1754: dw $b972
1756: dw $33a8
1758: dw $eb8b
175a: dw $9e59
175c: dw $8729
175e: dw $368e
1760: dw $86ad
1762: dw $e4ea
1764: dw $37d4
1766: dw $ae92
1768: dw $f045
176a: dw $246e
176c: dw $f3d0
176e: dw $95cb
1770: dw $e871
1772: dw $38c6
1774: dw $71ed
1776: dw $2244
1778: dw $602b
177a: dw $26c0
177c: dw $53f9
177e: dw $c45a
1780: dw $742d
1782: dw $50c8
1784: dw $f78d
1786: dw $01ac
1788: dw $bd79
178a: dw $1052
178c: dw $675e
178e: dw $01b0
1790: dw $ffa6
1792: dw $ce5f
1794: dw $6454
1796: dw $e75c
1798: dw $32ba
179a: dw $fc96
179c: dw $e900
179e: dw $77cc
17a0: dw $60dc
17a2: dw $92b5
17a4: dw $844d
17a6: dw $681c
17a8: dw $4eee
17aa: dw $abaf
17ac: dw $8707
17ae: dw $939f
17b0: dw $88bf
17b2: dw $cdf1
17b4: dw $d780
17b6: dw $e54a
17b8: dw $4e20
17ba: dw $4463
17bc: dw $78da
17be: dw $078f
17c0: dw $40f3
17c2: dw $6b98
17c4: dw $a237
17c6: dw $21f4
17c8: dw $961e
17ca: dw $7e13
17cc: dw $ea09
17ce: dw $273d
17d0: dw $4d86
17d2: dw $8bbe
17d4: dw $d0cd
17d6: dw $a3fb
17d8: dw $971b
17da: dw $bc2a
17dc: dw $8c1a
17de: dw $4c73
17e0: dw $6f46
17e2: dw $26de
17e4: dw $b88c
17e6: dw $aa33
17e8: dw $bb0e
17ea: dw $d821
17ec: dw $3b89
17ee: dw $1d97
17f0: dw $23bb
17f2: dw $9048
17f4: dw $fa69
17f6: dw $76c9
17f8: dw $e7ce
17fa: dw $7b1b
17fc: dw $2b1a
17fe: dw $c078
1800: dw $0803
1802: dw $cf6b
1804: dw $b3cc
1806: dw $a96d
1808: dw $3ab2
180a: dw $a116
180c: dw $9556
180e: dw $170b
1810: dw $12f1
1812: dw $1399
1814: dw $81d8
1816: dw $3856
1818: dw $3ef5
181a: dw $b1d1
181c: dw $e1e3
181e: dw $2eb3
1820: dw $ef84
1822: dw $045b
1824: dw $5d64
1826: dw $0ab5
1828: dw $1d5b
182a: dw $0694
182c: dw $e4d9
182e: dw $fd0d
1830: dw $a26d
1832: dw $f64b
1834: dw $a565
1836: dw $aacb
1838: dw $e35f
183a: dw $1e70
183c: dw $93f2
183e: dw $6382
1840: dw $ee27
1842: dw $1ce2
1844: dw $2398
1846: dw $0dca
1848: dw $d9ec
184a: dw $f405
184c: dw $533b
184e: dw $739d
1850: dw $c33c
1852: dw $fed4
1854: dw $dde1
1856: dw $6961
1858: dw $2d90
185a: dw $8d2f
185c: dw $c451
185e: dw $7ca4
1860: dw $8843
1862: dw $5c34
1864: dw $b485
1866: dw $257d
1868: dw $5830
186a: dw $6885
186c: dw $c735
186e: dw $2047
1870: dw $3505
1872: dw $2509
1874: dw $5580
1876: dw $6aca
1878: dw $fc91
187a: dw $d3c8
187c: dw $a70f
187e: dw $9ac3
1880: dw $946e
1882: dw $429c
1884: dw $77df
1886: dw $4042
1888: dw $76d2
188a: dw $413d
188c: dw $7581
188e: dw $49b7
1890: dw $7be9

1892: e5 f4 00  mov   a,$00f4
1895: 65 f4 00  cmp   a,$00f4
1898: d0 f8     bne   $1892
189a: 68 00     cmp   a,#$00
189c: d0 01     bne   $189f
189e: 6f        ret

189f: c5 f4 00  mov   $00f4,a
18a2: 8d 11     mov   y,#$11
18a4: cc f1 00  mov   $00f1,y
18a7: c4 0c     mov   $0c,a
18a9: 68 ff     cmp   a,#$ff
18ab: d0 06     bne   $18b3
18ad: 3f b0 1a  call  $1ab0
18b0: e8 00     mov   a,#$00
18b2: 6f        ret

18b3: 68 79     cmp   a,#$79
18b5: b0 11     bcs   $18c8
18b7: 68 6f     cmp   a,#$6f
18b9: b0 10     bcs   $18cb
18bb: 68 69     cmp   a,#$69
18bd: b0 03     bcs   $18c2
18bf: 5f 48 19  jmp   $1948

18c2: 80        setc
18c3: a8 69     sbc   a,#$69
18c5: c5 05 02  mov   $0205,a
18c8: e8 00     mov   a,#$00
18ca: 6f        ret

18cb: 80        setc
18cc: a8 70     sbc   a,#$70
18ce: 1c        asl   a
18cf: 5d        mov   x,a
18d0: e8 00     mov   a,#$00
18d2: 1f d5 18  jmp   ($18d5+x)

18d5: dw $18e7
18d7: dw $18f3
18d9: dw $1904
18db: dw $1907
18dd: dw $190a
18df: dw $190a
18e1: dw $190a
18e3: dw $191e
18e5: dw $1926

18e7: e8 3f     mov   a,#$3f
18e9: c4 17     mov   $17,a
18eb: 22 25     set1  $25
18ed: 8f 4c 0c  mov   $0c,#$4c
18f0: 2f 56     bra   $1948
18f2: 6f        ret

18f3: 32 25     clr1  $25
18f5: e4 1f     mov   a,$1f
18f7: eb ce     mov   y,$ce
18f9: ad 62     cmp   y,#$62
18fb: b0 02     bcs   $18ff
18fd: 28 3f     and   a,#$3f
18ff: c4 16     mov   $16,a
1901: e8 00     mov   a,#$00
1903: 6f        ret

1904: 02 25     set0  $25
1906: 6f        ret

1907: 12 25     clr0  $25
1909: 6f        ret

190a: e4 0c     mov   a,$0c
190c: 80        setc
190d: a8 74     sbc   a,#$74
190f: 5d        mov   x,a
1910: f5 ee 05  mov   a,$05ee+x
1913: c5 04 02  mov   $0204,a
1916: 8f 70 23  mov   $23,#$70
1919: e8 00     mov   a,#$00
191b: c4 24     mov   $24,a
191d: 6f        ret

191e: e8 00     mov   a,#$00
1920: 8d 0c     mov   y,#$0c
1922: cd 3f     mov   x,#$3f
1924: 2f 06     bra   $192c
1926: e8 00     mov   a,#$00
1928: 8d 10     mov   y,#$10
192a: cd ff     mov   x,#$ff
192c: 32 25     clr1  $25
192e: d6 cc 00  mov   $00cc+y,a
1931: d6 24 02  mov   $0224+y,a
1934: dc        dec   y
1935: fe f7     dbnz  y,$192e
1937: c4 23     mov   $23,a
1939: c4 2a     mov   $2a,a
193b: c4 19     mov   $19,a
193d: c4 1c     mov   $1c,a
193f: c4 14     mov   $14,a
1941: c4 15     mov   $15,a
1943: 3f a6 11  call  $11a6
1946: 7d        mov   a,x
1947: 6f        ret

1948: e4 0c     mov   a,$0c
194a: 8f e6 04  mov   $04,#$e6
194d: 8f 03 05  mov   $05,#$03
1950: 9c        dec   a
1951: 8d 05     mov   y,#$05
1953: cf        mul   ya
1954: 7a 04     addw  ya,$04
1956: da 04     movw  $04,ya
1958: 8d 00     mov   y,#$00
195a: cd 00     mov   x,#$00
195c: f7 04     mov   a,($04)+y
195e: c4 20     mov   $20,a
1960: fc        inc   y
1961: f7 04     mov   a,($04)+y
1963: c4 06     mov   $06,a
1965: e4 0c     mov   a,$0c
1967: 68 4d     cmp   a,#$4d
1969: b0 5a     bcs   $19c5
196b: cd 0c     mov   x,#$0c
196d: 68 41     cmp   a,#$41
196f: b0 4a     bcs   $19bb
1971: 68 1f     cmp   a,#$1f
1973: f0 04     beq   $1979
1975: 68 20     cmp   a,#$20
1977: d0 0e     bne   $1987
1979: f4 ce     mov   a,$ce+x
197b: 68 17     cmp   a,#$17
197d: f0 46     beq   $19c5
197f: f4 d0     mov   a,$d0+x
1981: 68 17     cmp   a,#$17
1983: d0 18     bne   $199d
1985: 2f 10     bra   $1997
1987: 68 12     cmp   a,#$12
1989: d0 14     bne   $199f
198b: f4 ce     mov   a,$ce+x
198d: 68 11     cmp   a,#$11
198f: f0 34     beq   $19c5
1991: f4 d0     mov   a,$d0+x
1993: 68 11     cmp   a,#$11
1995: d0 06     bne   $199d
1997: 3d        inc   x
1998: 3d        inc   x
1999: 0b 20     asl   $20
199b: 2f 28     bra   $19c5
199d: e4 0c     mov   a,$0c
199f: 74 d0     cmp   a,$d0+x
19a1: d0 06     bne   $19a9
19a3: 3d        inc   x
19a4: 3d        inc   x
19a5: 0b 20     asl   $20
19a7: 2f 1c     bra   $19c5
19a9: 74 ce     cmp   a,$ce+x
19ab: f0 18     beq   $19c5
19ad: f5 26 02  mov   a,$0226+x
19b0: 75 28 02  cmp   a,$0228+x
19b3: f0 06     beq   $19bb
19b5: 90 04     bcc   $19bb
19b7: 3d        inc   x
19b8: 3d        inc   x
19b9: 0b 20     asl   $20
19bb: e4 06     mov   a,$06
19bd: 75 26 02  cmp   a,$0226+x
19c0: b0 03     bcs   $19c5
19c2: e8 00     mov   a,#$00
19c4: 6f        ret

19c5: fc        inc   y
19c6: f7 04     mov   a,($04)+y
19c8: 28 0f     and   a,#$0f
19ca: c4 07     mov   $07,a
19cc: f7 04     mov   a,($04)+y
19ce: 9f        xcn   a
19cf: 28 0f     and   a,#$0f
19d1: c4 08     mov   $08,a
19d3: fc        inc   y
19d4: f7 04     mov   a,($04)+y
19d6: c4 0a     mov   $0a,a
19d8: fc        inc   y
19d9: f7 04     mov   a,($04)+y
19db: c4 0b     mov   $0b,a
19dd: 8d 00     mov   y,#$00
19df: 8f 00 1a  mov   $1a,#$00
19e2: 78 4d 0c  cmp   $0c,#$4d
19e5: 90 14     bcc   $19fb
19e7: 8f 00 23  mov   $23,#$00
19ea: e8 00     mov   a,#$00
19ec: c4 19     mov   $19,a
19ee: c4 1c     mov   $1c,a
19f0: c4 14     mov   $14,a
19f2: c4 15     mov   $15,a
19f4: a2 18     set5  $18
19f6: 6d        push  y
19f7: 3f a6 11  call  $11a6
19fa: ee        pop   y
19fb: f7 0a     mov   a,($0a)+y
19fd: d4 2d     mov   $2d+x,a
19ff: d5 70 01  mov   $0170+x,a
1a02: d5 80 01  mov   $0180+x,a
1a05: d5 e6 02  mov   $02e6+x,a
1a08: fc        inc   y
1a09: f7 0a     mov   a,($0a)+y
1a0b: d4 2e     mov   $2e+x,a
1a0d: d5 71 01  mov   $0171+x,a
1a10: d5 81 01  mov   $0181+x,a
1a13: d5 e7 02  mov   $02e7+x,a
1a16: e8 ff     mov   a,#$ff
1a18: d4 bd     mov   $bd+x,a
1a1a: d5 06 02  mov   $0206+x,a
1a1d: e8 7f     mov   a,#$7f
1a1f: d5 06 03  mov   $0306+x,a
1a22: d5 17 02  mov   $0217+x,a
1a25: e8 0a     mov   a,#$0a
1a27: d5 27 03  mov   $0327+x,a
1a2a: d5 27 02  mov   $0227+x,a
1a2d: e8 00     mov   a,#$00
1a2f: d5 07 03  mov   $0307+x,a
1a32: d4 3d     mov   $3d+x,a
1a34: d5 26 03  mov   $0326+x,a
1a37: d5 c6 02  mov   $02c6+x,a
1a3a: d4 4d     mov   $4d+x,a
1a3c: d4 5d     mov   $5d+x,a
1a3e: d5 30 01  mov   $0130+x,a
1a41: d5 31 01  mov   $0131+x,a
1a44: d5 40 01  mov   $0140+x,a
1a47: d5 41 01  mov   $0141+x,a
1a4a: d5 50 01  mov   $0150+x,a
1a4d: d5 51 01  mov   $0151+x,a
1a50: d5 60 01  mov   $0160+x,a
1a53: d5 61 01  mov   $0161+x,a
1a56: d5 b6 03  mov   $03b6+x,a
1a59: d5 b7 03  mov   $03b7+x,a
1a5c: d5 57 02  mov   $0257+x,a
1a5f: d4 8d     mov   $8d+x,a
1a61: d4 7d     mov   $7d+x,a
1a63: d5 76 03  mov   $0376+x,a
1a66: d5 77 03  mov   $0377+x,a
1a69: d5 56 02  mov   $0256+x,a
1a6c: d5 77 02  mov   $0277+x,a
1a6f: d4 6e     mov   $6e+x,a
1a71: d4 6d     mov   $6d+x,a
1a73: d5 c6 03  mov   $03c6+x,a
1a76: d5 c7 03  mov   $03c7+x,a
1a79: d5 67 02  mov   $0267+x,a
1a7c: d5 76 02  mov   $0276+x,a
1a7f: d5 4e 00  mov   $004e+x,a
1a82: d5 66 02  mov   $0266+x,a
1a85: d5 d7 02  mov   $02d7+x,a
1a88: d5 97 02  mov   $0297+x,a
1a8b: d5 b6 02  mov   $02b6+x,a
1a8e: bc        inc   a
1a8f: d5 d6 02  mov   $02d6+x,a
1a92: e4 0c     mov   a,$0c
1a94: d4 ce     mov   $ce+x,a
1a96: e4 06     mov   a,$06
1a98: d5 26 02  mov   $0226+x,a
1a9b: e4 08     mov   a,$08
1a9d: f0 05     beq   $1aa4
1a9f: e8 01     mov   a,#$01
1aa1: d5 c6 02  mov   $02c6+x,a
1aa4: 6e 07 03  dbnz  $07,$1aaa
1aa7: e4 20     mov   a,$20
1aa9: 6f        ret

1aaa: 3d        inc   x
1aab: 3d        inc   x
1aac: fc        inc   y
1aad: 5f fb 19  jmp   $19fb

1ab0: cd cc     mov   x,#$cc
1ab2: 1e f4 00  cmp   x,$00f4
1ab5: d0 f9     bne   $1ab0
1ab7: 2f 20     bra   $1ad9
1ab9: ec f4 00  mov   y,$00f4
1abc: d0 fb     bne   $1ab9
1abe: 5e f4 00  cmp   y,$00f4
1ac1: d0 0f     bne   $1ad2
1ac3: e5 f5 00  mov   a,$00f5
1ac6: cc f4 00  mov   $00f4,y
1ac9: d7 04     mov   ($04)+y,a
1acb: fc        inc   y
1acc: d0 f0     bne   $1abe
1ace: ab 05     inc   $05
1ad0: 2f ec     bra   $1abe
1ad2: 10 ea     bpl   $1abe
1ad4: 5e f4 00  cmp   y,$00f4
1ad7: 10 e5     bpl   $1abe
1ad9: e5 f6 00  mov   a,$00f6
1adc: ec f7 00  mov   y,$00f7
1adf: da 04     movw  $04,ya
1ae1: e5 f4 00  mov   a,$00f4
1ae4: ec f5 00  mov   y,$00f5
1ae7: c5 f4 00  mov   $00f4,a
1aea: dd        mov   a,y
1aeb: 5d        mov   x,a
1aec: d0 cb     bne   $1ab9
1aee: e8 31     mov   a,#$31
1af0: c5 f1 00  mov   $00f1,a
1af3: 6f        ret
