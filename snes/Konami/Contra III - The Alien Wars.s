0896: 20        clrp
0897: cd cf     mov   x,#$cf
0899: bd        mov   sp,x
089a: e8 30     mov   a,#$30
089c: c5 f1 00  mov   $00f1,a
089f: e8 00     mov   a,#$00
08a1: cd 00     mov   x,#$00
08a3: af        mov   (x)+,a
08a4: c8 f0     cmp   x,#$f0
08a6: d0 fb     bne   $08a3
08a8: 8d 00     mov   y,#$00
08aa: 8f 00 04  mov   $04,#$00
08ad: 8f 01 05  mov   $05,#$01
08b0: d7 04     mov   ($04)+y,a
08b2: ad 8f     cmp   y,#$8f
08b4: d0 05     bne   $08bb
08b6: 78 01 05  cmp   $05,#$01
08b9: f0 07     beq   $08c2
08bb: fc        inc   y
08bc: d0 f2     bne   $08b0
08be: ab 05     inc   $05
08c0: 2f ee     bra   $08b0
08c2: 8d 03     mov   y,#$03
08c4: 8f 00 04  mov   $04,#$00
08c7: 8f 02 05  mov   $05,#$02
08ca: d7 04     mov   ($04)+y,a
08cc: ad e5     cmp   y,#$e5
08ce: d0 05     bne   $08d5
08d0: 78 03 05  cmp   $05,#$03
08d3: f0 07     beq   $08dc
08d5: fc        inc   y
08d6: d0 f2     bne   $08ca
08d8: ab 05     inc   $05
08da: 2f ee     bra   $08ca
08dc: e8 00     mov   a,#$00
08de: 3f a1 11  call  $11a1
08e1: a2 18     set5  $18
08e3: 8d 71     mov   y,#$71
08e5: e8 00     mov   a,#$00
08e7: cc f2 00  mov   $00f2,y
08ea: c5 f3 00  mov   $00f3,a           ; VOL(R)
08ed: dc        dec   y
08ee: cc f2 00  mov   $00f2,y
08f1: c5 f3 00  mov   $00f3,a           ; VOL(L)
08f4: dd        mov   a,y
08f5: 80        setc
08f6: a8 0f     sbc   a,#$0f
08f8: fd        mov   y,a
08f9: 10 ea     bpl   $08e5
08fb: e8 ff     mov   a,#$ff
08fd: c4 17     mov   $17,a
08ff: 8d 5c     mov   y,#$5c
0901: cc f2 00  mov   $00f2,y
0904: c5 f3 00  mov   $00f3,a           ; KOF
0907: e8 7f     mov   a,#$7f
0909: 8d 0c     mov   y,#$0c
090b: cc f2 00  mov   $00f2,y
090e: c5 f3 00  mov   $00f3,a           ; MVOL(L)
0911: 8d 1c     mov   y,#$1c
0913: cc f2 00  mov   $00f2,y
0916: c5 f3 00  mov   $00f3,a           ; MVOL(R)
0919: e8 50     mov   a,#$50
091b: 8d 5d     mov   y,#$5d
091d: cc f2 00  mov   $00f2,y
0920: c5 f3 00  mov   $00f3,a           ; DIR = $5000
0923: 8f 00 10  mov   $10,#$00
0926: e8 20     mov   a,#$20
0928: c5 fa 00  mov   $00fa,a           ; timer 0 frequency 4 ms
092b: e8 01     mov   a,#$01
092d: c5 f1 00  mov   $00f1,a
0930: 8d 0a     mov   y,#$0a
0932: ad 05     cmp   y,#$05
0934: f0 07     beq   $093d
0936: b0 08     bcs   $0940
0938: 69 1e 1d  cmp   ($1d),($1e)
093b: d0 11     bne   $094e
093d: e3 1d 0e  bbs7  $1d,$094e
0940: f6 a7 15  mov   a,$15a7+y
0943: c5 f2 00  mov   $00f2,a
0946: f6 b1 15  mov   a,$15b1+y
0949: 5d        mov   x,a
094a: e6        mov   a,(x)
094b: c5 f3 00  mov   $00f3,a
094e: fe e2     dbnz  y,$0932
0950: cb 16     mov   $16,y
0952: cb 17     mov   $17,y
0954: cb 22     mov   $22,y
0956: ec fd 00  mov   y,$00fd
0959: f0 fb     beq   $0956
095b: cb 21     mov   $21,y
095d: cc f5 00  mov   $00f5,y
0960: e4 28     mov   a,$28
0962: 60        clrc
0963: 88 40     adc   a,#$40
0965: c4 28     mov   $28,a
0967: 90 07     bcc   $0970
0969: 69 1e 1d  cmp   ($1d),($1e)
096c: f0 02     beq   $0970
096e: ab 1d     inc   $1d
0970: 3f bc 18  call  $18bc
0973: f0 09     beq   $097e
0975: 0e 17 00  tset1 $0017
0978: 4e 1f 00  tclr1 $001f
097b: 0e 22 00  tset1 $0022
097e: 23 25 1e  bbs1  $25,$099f
0981: e4 23     mov   a,$23
0983: f0 1a     beq   $099f
0985: cd 3f     mov   x,#$3f
0987: ab 24     inc   $24
0989: e5 04 02  mov   a,$0204
098c: 2e 24 10  cbne  $24,$099f
098f: 8f 00 24  mov   $24,#$00
0992: 8b 23     dec   $23
0994: d0 09     bne   $099f
0996: 3f 52 19  call  $1952
0999: 0e 17 00  tset1 $0017
099c: 4e 1f 00  tclr1 $001f
099f: 8f 01 20  mov   $20,#$01
09a2: cd 00     mov   x,#$00
09a4: f4 ce     mov   a,$ce+x
09a6: f0 5c     beq   $0a04
09a8: e4 20     mov   a,$20
09aa: 24 22     and   a,$22
09ac: d0 56     bne   $0a04
09ae: d8 27     mov   $27,x
09b0: f5 6e 15  mov   a,$156e+x
09b3: c4 29     mov   $29,a
09b5: f5 c6 02  mov   a,$02c6+x
09b8: c4 26     mov   $26,a
09ba: f5 d6 02  mov   a,$02d6+x
09bd: c4 2b     mov   $2b,a
09bf: f5 d7 02  mov   a,$02d7+x
09c2: c4 2c     mov   $2c,a
09c4: eb 21     mov   y,$21
09c6: f4 bd     mov   a,$bd+x
09c8: c4 04     mov   $04,a
09ca: 8f 00 05  mov   $05,#$00
09cd: f5 06 02  mov   a,$0206+x
09d0: cf        mul   ya
09d1: 7a 04     addw  ya,$04
09d3: d4 bd     mov   $bd+x,a
09d5: ad 00     cmp   y,#$00
09d7: f0 19     beq   $09f2
09d9: dc        dec   y
09da: f0 0e     beq   $09ea
09dc: c8 0c     cmp   x,#$0c
09de: b0 0a     bcs   $09ea
09e0: f4 ce     mov   a,$ce+x
09e2: 68 1a     cmp   a,#$1a
09e4: 90 04     bcc   $09ea
09e6: 1a 2b     decw  $2b
09e8: fe fc     dbnz  y,$09e6
09ea: 3f ae 0a  call  $0aae
09ed: 3f c0 0b  call  $0bc0
09f0: 2f 03     bra   $09f5
09f2: 3f 14 0a  call  $0a14
09f5: e4 26     mov   a,$26
09f7: d5 c6 02  mov   $02c6+x,a
09fa: e4 2b     mov   a,$2b
09fc: d5 d6 02  mov   $02d6+x,a
09ff: e4 2c     mov   a,$2c
0a01: d5 d7 02  mov   $02d7+x,a
0a04: 33 25 04  bbc1  $25,$0a0b
0a07: c8 0a     cmp   x,#$0a
0a09: b0 06     bcs   $0a11
0a0b: 3d        inc   x
0a0c: 3d        inc   x
0a0d: 0b 20     asl   $20
0a0f: d0 93     bne   $09a4
0a11: 5f 30 09  jmp   $0930

0a14: 52 25     clr2  $25
0a16: f5 47 03  mov   a,$0347+x
0a19: c4 0b     mov   $0b,a
0a1b: f5 46 03  mov   a,$0346+x
0a1e: c4 0a     mov   $0a,a
0a20: f4 7d     mov   a,$7d+x
0a22: f0 4b     beq   $0a6f
0a24: f4 7e     mov   a,$7e+x
0a26: d0 47     bne   $0a6f
0a28: 42 25     set2  $25
0a2a: f5 56 03  mov   a,$0356+x
0a2d: c4 04     mov   $04,a
0a2f: f5 57 03  mov   a,$0357+x
0a32: c4 05     mov   $05,a
0a34: 30 18     bmi   $0a4e
0a36: f4 bd     mov   a,$bd+x
0a38: eb 04     mov   y,$04
0a3a: cf        mul   ya
0a3b: cb 06     mov   $06,y
0a3d: 8f 00 07  mov   $07,#$00
0a40: f4 bd     mov   a,$bd+x
0a42: eb 05     mov   y,$05
0a44: cf        mul   ya
0a45: 60        clrc
0a46: 7a 06     addw  ya,$06
0a48: 7a 0a     addw  ya,$0a
0a4a: da 0a     movw  $0a,ya
0a4c: 2f 21     bra   $0a6f
0a4e: 58 ff 04  eor   $04,#$ff
0a51: 58 ff 05  eor   $05,#$ff
0a54: 3a 04     incw  $04
0a56: f4 bd     mov   a,$bd+x
0a58: eb 04     mov   y,$04
0a5a: cf        mul   ya
0a5b: cb 06     mov   $06,y
0a5d: 8f 00 07  mov   $07,#$00
0a60: f4 bd     mov   a,$bd+x
0a62: eb 05     mov   y,$05
0a64: cf        mul   ya
0a65: 7a 06     addw  ya,$06
0a67: da 04     movw  $04,ya
0a69: ba 0a     movw  ya,$0a
0a6b: 9a 04     subw  ya,$04
0a6d: da 0a     movw  $0a,ya
0a6f: f5 77 03  mov   a,$0377+x
0a72: 15 76 03  or    a,$0376+x
0a75: f0 1e     beq   $0a95
0a77: f5 46 02  mov   a,$0246+x
0a7a: de 9d 18  cbne  $9d+x,$0a95
0a7d: f5 37 02  mov   a,$0237+x
0a80: 60        clrc
0a81: 95 36 02  adc   a,$0236+x
0a84: d5 37 02  mov   $0237+x,a
0a87: 60        clrc
0a88: 94 9e     adc   a,$9e+x
0a8a: 3f c5 13  call  $13c5
0a8d: ba 08     movw  ya,$08
0a8f: 7a 0a     addw  ya,$0a
0a91: da 0a     movw  $0a,ya
0a93: 42 25     set2  $25
0a95: f5 77 02  mov   a,$0277+x
0a98: f0 0b     beq   $0aa5
0a9a: 3f f5 13  call  $13f5
0a9d: ba 0a     movw  ya,$0a
0a9f: 7a 04     addw  ya,$04
0aa1: da 0a     movw  $0a,ya
0aa3: 42 25     set2  $25
0aa5: 53 25 05  bbc2  $25,$0aad
0aa8: ba 0a     movw  ya,$0a
0aaa: 5f 40 14  jmp   $1440

0aad: 6f        ret

0aae: 1a 2b     decw  $2b
0ab0: 30 02     bmi   $0ab4
0ab2: d0 03     bne   $0ab7
0ab4: 5f 8c 0c  jmp   $0c8c

0ab7: f4 4e     mov   a,$4e+x
0ab9: f0 0c     beq   $0ac7
0abb: 9b 4e     dec   $4e+x
0abd: d0 3f     bne   $0afe
0abf: f5 c6 03  mov   a,$03c6+x
0ac2: 15 c7 03  or    a,$03c7+x
0ac5: f0 34     beq   $0afb
0ac7: f5 d7 03  mov   a,$03d7+x
0aca: 75 17 02  cmp   a,$0217+x
0acd: b0 2c     bcs   $0afb
0acf: f5 c6 03  mov   a,$03c6+x
0ad2: 15 c7 03  or    a,$03c7+x
0ad5: f0 27     beq   $0afe
0ad7: f5 67 02  mov   a,$0267+x
0ada: 68 64     cmp   a,#$64
0adc: b0 08     bcs   $0ae6
0ade: 8d 00     mov   y,#$00
0ae0: e8 01     mov   a,#$01
0ae2: 5a 2b     cmpw  ya,$2b
0ae4: f0 15     beq   $0afb
0ae6: f5 d6 03  mov   a,$03d6+x
0ae9: 60        clrc
0aea: 95 c6 03  adc   a,$03c6+x
0aed: d5 d6 03  mov   $03d6+x,a
0af0: f5 d7 03  mov   a,$03d7+x
0af3: 95 c7 03  adc   a,$03c7+x
0af6: d5 d7 03  mov   $03d7+x,a
0af9: 2f 03     bra   $0afe
0afb: 09 20 17  or    ($17),($20)
0afe: 52 25     clr2  $25
0b00: e8 00     mov   a,#$00
0b02: fd        mov   y,a
0b03: da 08     movw  $08,ya
0b05: f4 7d     mov   a,$7d+x
0b07: f0 2f     beq   $0b38
0b09: f4 7e     mov   a,$7e+x
0b0b: f0 04     beq   $0b11
0b0d: 9b 7e     dec   $7e+x
0b0f: 2f 27     bra   $0b38
0b11: 9b 7d     dec   $7d+x
0b13: d0 0e     bne   $0b23
0b15: f5 67 03  mov   a,$0367+x
0b18: d5 47 03  mov   $0347+x,a
0b1b: f5 66 03  mov   a,$0366+x
0b1e: d5 46 03  mov   $0346+x,a
0b21: 2f 13     bra   $0b36
0b23: f5 46 03  mov   a,$0346+x
0b26: 60        clrc
0b27: 95 56 03  adc   a,$0356+x
0b2a: d5 46 03  mov   $0346+x,a
0b2d: f5 47 03  mov   a,$0347+x
0b30: 95 57 03  adc   a,$0357+x
0b33: d5 47 03  mov   $0347+x,a
0b36: 42 25     set2  $25
0b38: f5 56 02  mov   a,$0256+x
0b3b: f0 58     beq   $0b95
0b3d: f4 9d     mov   a,$9d+x
0b3f: 75 46 02  cmp   a,$0246+x
0b42: f0 04     beq   $0b48
0b44: bb 9d     inc   $9d+x
0b46: 2f 4d     bra   $0b95
0b48: f4 cd     mov   a,$cd+x
0b4a: 75 47 02  cmp   a,$0247+x
0b4d: d0 0d     bne   $0b5c
0b4f: f5 56 02  mov   a,$0256+x
0b52: d5 77 03  mov   $0377+x,a
0b55: e8 00     mov   a,#$00
0b57: d5 76 03  mov   $0376+x,a
0b5a: 2f 27     bra   $0b83
0b5c: 68 00     cmp   a,#$00
0b5e: d0 0e     bne   $0b6e
0b60: f5 87 03  mov   a,$0387+x
0b63: d5 77 03  mov   $0377+x,a
0b66: f5 86 03  mov   a,$0386+x
0b69: d5 76 03  mov   $0376+x,a
0b6c: 2f 13     bra   $0b81
0b6e: f5 76 03  mov   a,$0376+x
0b71: 60        clrc
0b72: 95 86 03  adc   a,$0386+x
0b75: d5 76 03  mov   $0376+x,a
0b78: f5 77 03  mov   a,$0377+x
0b7b: 95 87 03  adc   a,$0387+x
0b7e: d5 77 03  mov   $0377+x,a
0b81: bb cd     inc   $cd+x
0b83: e8 00     mov   a,#$00
0b85: d5 37 02  mov   $0237+x,a
0b88: f4 9e     mov   a,$9e+x
0b8a: 60        clrc
0b8b: 95 be 00  adc   a,$00be+x
0b8e: d4 9e     mov   $9e+x,a
0b90: 3f c5 13  call  $13c5
0b93: 42 25     set2  $25
0b95: f5 77 02  mov   a,$0277+x
0b98: f0 16     beq   $0bb0
0b9a: 3f f5 13  call  $13f5
0b9d: f5 46 03  mov   a,$0346+x
0ba0: c4 06     mov   $06,a
0ba2: f5 47 03  mov   a,$0347+x
0ba5: c4 07     mov   $07,a
0ba7: ba 04     movw  ya,$04
0ba9: 7a 08     addw  ya,$08
0bab: 7a 06     addw  ya,$06
0bad: 5f 40 14  jmp   $1440

0bb0: 53 25 0c  bbc2  $25,$0bbf
0bb3: f5 47 03  mov   a,$0347+x
0bb6: fd        mov   y,a
0bb7: f5 46 03  mov   a,$0346+x
0bba: 7a 08     addw  ya,$08
0bbc: 5f 40 14  jmp   $1440

0bbf: 6f        ret

0bc0: b3 26 03  bbc5  $26,$0bc6
0bc3: b2 26     clr5  $26
0bc5: 6f        ret

0bc6: f4 3d     mov   a,$3d+x
0bc8: f0 1e     beq   $0be8
0bca: 9b 3d     dec   $3d+x
0bcc: d0 04     bne   $0bd2
0bce: f4 3e     mov   a,$3e+x
0bd0: 2f 10     bra   $0be2
0bd2: f5 10 01  mov   a,$0110+x
0bd5: 60        clrc
0bd6: 95 00 01  adc   a,$0100+x
0bd9: d5 10 01  mov   $0110+x,a
0bdc: f5 11 01  mov   a,$0111+x
0bdf: 95 01 01  adc   a,$0101+x
0be2: d5 11 01  mov   $0111+x,a
0be5: d5 06 02  mov   $0206+x,a
0be8: f4 7d     mov   a,$7d+x
0bea: d0 46     bne   $0c32
0bec: e7 2d     mov   a,($2d+x)
0bee: 68 f3     cmp   a,#$f3
0bf0: d0 40     bne   $0c32
0bf2: 3f 78 0e  call  $0e78
0bf5: 3f 76 0e  call  $0e76
0bf8: d4 7e     mov   $7e+x,a
0bfa: 3f 76 0e  call  $0e76
0bfd: d4 7d     mov   $7d+x,a
0bff: f5 51 01  mov   a,$0151+x
0c02: c4 05     mov   $05,a
0c04: f5 50 01  mov   a,$0150+x
0c07: c4 04     mov   $04,a
0c09: f5 61 01  mov   a,$0161+x
0c0c: c4 07     mov   $07,a
0c0e: f5 60 01  mov   a,$0160+x
0c11: c4 06     mov   $06,a
0c13: f5 b7 03  mov   a,$03b7+x
0c16: c4 0b     mov   $0b,a
0c18: f5 b6 03  mov   a,$03b6+x
0c1b: c4 0a     mov   $0a,a
0c1d: 3f 76 0e  call  $0e76
0c20: 60        clrc
0c21: 95 57 02  adc   a,$0257+x
0c24: fd        mov   y,a
0c25: e8 00     mov   a,#$00
0c27: 7a 04     addw  ya,$04
0c29: 7a 06     addw  ya,$06
0c2b: 7a 0a     addw  ya,$0a
0c2d: da 04     movw  $04,ya
0c2f: 3f 68 13  call  $1368
0c32: f4 6e     mov   a,$6e+x
0c34: f0 24     beq   $0c5a
0c36: 9b 6e     dec   $6e+x
0c38: d0 0d     bne   $0c47
0c3a: f5 16 02  mov   a,$0216+x
0c3d: d5 07 03  mov   $0307+x,a
0c40: e8 00     mov   a,#$00
0c42: d5 06 03  mov   $0306+x,a
0c45: 2f 13     bra   $0c5a
0c47: f5 06 03  mov   a,$0306+x
0c4a: 60        clrc
0c4b: 95 16 03  adc   a,$0316+x
0c4e: d5 06 03  mov   $0306+x,a
0c51: f5 07 03  mov   a,$0307+x
0c54: 95 17 03  adc   a,$0317+x
0c57: d5 07 03  mov   $0307+x,a
0c5a: f5 17 02  mov   a,$0217+x
0c5d: f0 05     beq   $0c64
0c5f: e8 00     mov   a,#$00
0c61: 3f ab 14  call  $14ab
0c64: f4 6d     mov   a,$6d+x
0c66: f0 23     beq   $0c8b
0c68: 9b 6d     dec   $6d+x
0c6a: f0 14     beq   $0c80
0c6c: f5 26 03  mov   a,$0326+x
0c6f: 60        clrc
0c70: 95 36 03  adc   a,$0336+x
0c73: d5 26 03  mov   $0326+x,a
0c76: f5 27 03  mov   a,$0327+x
0c79: 95 37 03  adc   a,$0337+x
0c7c: d5 27 03  mov   $0327+x,a
0c7f: 6f        ret

0c80: f5 27 02  mov   a,$0227+x
0c83: d5 27 03  mov   $0327+x,a
0c86: e8 00     mov   a,#$00
0c88: d5 26 03  mov   $0326+x,a
0c8b: 6f        ret

0c8c: 3f 76 0e  call  $0e76
0c8f: c4 08     mov   $08,a
0c91: 28 7f     and   a,#$7f
0c93: 68 60     cmp   a,#$60
0c95: 90 03     bcc   $0c9a
0c97: 5f 4c 0e  jmp   $0e4c

0c9a: 33 26 03  bbc1  $26,$0ca0
0c9d: 09 20 17  or    ($17),($20)
0ca0: f3 08 05  bbc7  $08,$0ca8         ; if vcmd >= $80
0ca3: f5 66 02  mov   a,$0266+x         ;   reuse last length, skip arg1
0ca6: 2f 03     bra   $0cab
0ca8: 3f 76 0e  call  $0e76             ; get arg1 (length in ticks)
0cab: d5 66 02  mov   $0266+x,a         ; save note length
0cae: 8d 00     mov   y,#$00
0cb0: 7a 2b     addw  ya,$2b
0cb2: da 2b     movw  $2b,ya            ; wait counter
0cb4: f0 02     beq   $0cb8
0cb6: 10 1b     bpl   $0cd3
0cb8: 03 26 15  bbs0  $26,$0cd0
0cbb: 3f 76 0e  call  $0e76             ; get arg2 (00-7f: note duration, 80-ff: note volume)
0cbe: fd        mov   y,a
0cbf: 10 03     bpl   $0cc4
0cc1: f5 67 02  mov   a,$0267+x
0cc4: d5 67 02  mov   $0267+x,a         ; save note duration
0cc7: d5 76 02  mov   $0276+x,a
0cca: dd        mov   a,y
0ccb: 30 03     bmi   $0cd0
0ccd: 3f 78 0e  call  $0e78             ; skip arg3
0cd0: 5f 8c 0c  jmp   $0c8c

0cd3: 13 26 1a  bbc0  $26,$0cf0
0cd6: f5 76 02  mov   a,$0276+x
0cd9: 68 65     cmp   a,#$65
0cdb: f0 06     beq   $0ce3
0cdd: 09 20 16  or    ($16),($20)
0ce0: 09 20 1f  or    ($1f),($20)
0ce3: f5 67 02  mov   a,$0267+x
0ce6: d5 76 02  mov   $0276+x,a
0ce9: f5 b7 02  mov   a,$02b7+x
0cec: 28 7f     and   a,#$7f
0cee: 2f 27     bra   $0d17
0cf0: f5 76 02  mov   a,$0276+x
0cf3: 68 65     cmp   a,#$65
0cf5: f0 06     beq   $0cfd
0cf7: 09 20 16  or    ($16),($20)
0cfa: 09 20 1f  or    ($1f),($20)
0cfd: 3f 76 0e  call  $0e76             ; get arg2 (00-7f: note duration, 80-ff: note volume)
0d00: fd        mov   y,a
0d01: 10 03     bpl   $0d06
0d03: f5 67 02  mov   a,$0267+x
0d06: d5 67 02  mov   $0267+x,a         ; save note duration
0d09: d5 76 02  mov   $0276+x,a
0d0c: dd        mov   a,y
0d0d: 30 03     bmi   $0d12
0d0f: 3f 76 0e  call  $0e76             ; get arg3 (note volume) (only available if arg2 < 0x80)
0d12: 28 7f     and   a,#$7f
0d14: d5 b7 02  mov   $02b7+x,a         ; save note volume
0d17: d5 17 02  mov   $0217+x,a
0d1a: d0 08     bne   $0d24
0d1c: e4 20     mov   a,$20
0d1e: 4e 16 00  tclr1 $0016
0d21: 4e 1f 00  tclr1 $001f
0d24: 33 26 0d  bbc1  $26,$0d34
0d27: e4 08     mov   a,$08
0d29: 28 7f     and   a,#$7f
0d2b: d5 97 02  mov   $0297+x,a
0d2e: 3f 2b 0f  call  $0f2b
0d31: 8f 3c 08  mov   $08,#$3c
0d34: f5 66 02  mov   a,$0266+x
0d37: fd        mov   y,a
0d38: f5 67 02  mov   a,$0267+x
0d3b: cf        mul   ya
0d3c: cd 64     mov   x,#$64
0d3e: e0        clrv
0d3f: 9e        div   ya,x
0d40: f8 27     mov   x,$27
0d42: 70 06     bvs   $0d4a
0d44: 68 00     cmp   a,#$00
0d46: d0 02     bne   $0d4a
0d48: e8 01     mov   a,#$01
0d4a: d4 4e     mov   $4e+x,a
0d4c: f5 46 03  mov   a,$0346+x
0d4f: c4 0c     mov   $0c,a
0d51: f5 47 03  mov   a,$0347+x
0d54: c4 0d     mov   $0d,a
0d56: f5 51 01  mov   a,$0151+x
0d59: c4 05     mov   $05,a
0d5b: f5 50 01  mov   a,$0150+x
0d5e: c4 04     mov   $04,a
0d60: f5 61 01  mov   a,$0161+x
0d63: c4 07     mov   $07,a
0d65: f5 60 01  mov   a,$0160+x
0d68: c4 06     mov   $06,a
0d6a: f5 b7 03  mov   a,$03b7+x
0d6d: c4 0b     mov   $0b,a
0d6f: f5 b6 03  mov   a,$03b6+x
0d72: c4 0a     mov   $0a,a
0d74: e4 08     mov   a,$08
0d76: 60        clrc
0d77: 95 57 02  adc   a,$0257+x
0d7a: fd        mov   y,a
0d7b: e8 00     mov   a,#$00
0d7d: 7a 04     addw  ya,$04
0d7f: 7a 06     addw  ya,$06
0d81: 7a 0a     addw  ya,$0a
0d83: d5 46 03  mov   $0346+x,a
0d86: dd        mov   a,y
0d87: 28 7f     and   a,#$7f
0d89: d5 47 03  mov   $0347+x,a
0d8c: e8 00     mov   a,#$00
0d8e: d4 9e     mov   $9e+x,a
0d90: d4 9d     mov   $9d+x,a
0d92: d4 cd     mov   $cd+x,a
0d94: d5 76 03  mov   $0376+x,a
0d97: d5 77 03  mov   $0377+x,a
0d9a: d5 d7 03  mov   $03d7+x,a
0d9d: d5 d6 03  mov   $03d6+x,a
0da0: f4 8d     mov   a,$8d+x
0da2: d4 7d     mov   $7d+x,a
0da4: f0 2d     beq   $0dd3
0da6: f4 8e     mov   a,$8e+x
0da8: d4 7e     mov   $7e+x,a
0daa: f5 47 03  mov   a,$0347+x
0dad: c4 05     mov   $05,a
0daf: f5 46 03  mov   a,$0346+x
0db2: c4 04     mov   $04,a
0db4: 83 26 0f  bbs4  $26,$0dc6
0db7: f5 47 03  mov   a,$0347+x
0dba: 80        setc
0dbb: b5 07 02  sbc   a,$0207+x
0dbe: d5 47 03  mov   $0347+x,a
0dc1: 3f 68 13  call  $1368
0dc4: 2f 0d     bra   $0dd3
0dc6: e4 0d     mov   a,$0d
0dc8: d5 47 03  mov   $0347+x,a
0dcb: e4 0c     mov   a,$0c
0dcd: d5 46 03  mov   $0346+x,a
0dd0: 3f 68 13  call  $1368
0dd3: f5 47 03  mov   a,$0347+x
0dd6: fd        mov   y,a
0dd7: f5 46 03  mov   a,$0346+x
0dda: 5f 40 14  jmp   $1440

; vcmd dispatch table
0ddd: dw $0e7f  ; 60
0ddf: dw $0e84  ; 61
0de1: dw $0e89  ; 62
0de3: dw $0ea5  ; 63
0de5: dw $0e97  ; 64
0de7: dw $0eab  ; e0
0de9: dw $0ecf  ; e1
0deb: dw $0ef1  ; e2
0ded: dw $0f81  ; e3
0def: dw $0f9e  ; e4
0df1: dw $0fc4  ; e5
0df3: dw $0fe0  ; e6
0df5: dw $1025  ; e7
0df7: dw $0fed  ; e8
0df9: dw $100a  ; e9
0dfb: dw $10a5  ; ea
0dfd: dw $10af  ; eb
0dff: dw $10d4  ; ec
0e01: dw $10da  ; ed
0e03: dw $10e3  ; ee
0e05: dw $10ee  ; ef
0e06: dw $1109  ; f0
0e09: dw $1114  ; f1
0e0b: dw $1126  ; f2
0e0d: dw $1148  ; f3
0e0f: dw $1151  ; f4
0e11: dw $1173  ; f5
0e13: dw $11f6  ; f6
0e15: dw $1208  ; f7
0e17: dw $123f  ; f8
0e19: dw $125a  ; f9
0e1b: dw $1275  ; fa
0e1d: dw $12d9  ; fb
0e1f: dw $12de  ; fc
0e21: dw $12fb  ; fd
0e23: dw $1309  ; fe
0e25: dw $1325  ; ff

; vcmd length table
0e27: db             $00,$00,$01,$01,$02 ; 60-64
0e2c: db $01,$02,$01,$01,$03,$03,$00,$03 ; e0-e7
0e34: db $00,$03,$01,$02,$01,$03,$01,$02 ; e8-ef
0e3c: db $01,$03,$01,$03,$03,$03,$00,$00 ; f0-f7
0e44: db $02,$01,$03,$01,$01,$02,$02,$00 ; f8-ff

0e4c: e4 08     mov   a,$08
0e4e: 8f db 04  mov   $04,#$db
0e51: 68 e0     cmp   a,#$e0
0e53: b0 0c     bcs   $0e61
0e55: 68 65     cmp   a,#$65
0e57: 90 05     bcc   $0e5e
0e59: a2 26     set5  $26
0e5b: 5f 5a 19  jmp   $195a

0e5e: 8f 60 04  mov   $04,#$60
; dispatch vcmd
0e61: 80        setc
0e62: a4 04     sbc   a,$04
0e64: 1c        asl   a
0e65: fd        mov   y,a
0e66: f6 de 0d  mov   a,$0dde+y
0e69: 2d        push  a
0e6a: f6 dd 0d  mov   a,$0ddd+y
0e6d: 2d        push  a
0e6e: dd        mov   a,y
0e6f: 5c        lsr   a
0e70: fd        mov   y,a
0e71: f6 27 0e  mov   a,$0e27+y
0e74: f0 08     beq   $0e7e
; read a byte from voice stream
0e76: e7 2d     mov   a,($2d+x)
0e78: bb 2d     inc   $2d+x
0e7a: d0 02     bne   $0e7e
0e7c: bb 2e     inc   $2e+x
0e7e: 6f        ret

; vcmd 60
0e7f: 22 26     set1  $26
0e81: 5f 8c 0c  jmp   $0c8c

; vcmd 61
0e84: 32 26     clr1  $26
0e86: 5f 8c 0c  jmp   $0c8c

; vcmd 62
0e89: fd        mov   y,a
0e8a: f5 67 02  mov   a,$0267+x
0e8d: d5 76 02  mov   $0276+x,a
0e90: dd        mov   a,y
0e91: d5 67 02  mov   $0267+x,a
0e94: 5f 8c 0c  jmp   $0c8c

; vcmd 64
0e97: fd        mov   y,a
0e98: f5 67 02  mov   a,$0267+x
0e9b: d5 76 02  mov   $0276+x,a
0e9e: dd        mov   a,y
0e9f: d5 67 02  mov   $0267+x,a
0ea2: 3f 76 0e  call  $0e76
; vcmd 63
0ea5: d5 b7 02  mov   $02b7+x,a
0ea8: 5f 8c 0c  jmp   $0c8c

; vcmd e0
0eab: d5 66 02  mov   $0266+x,a
0eae: 09 20 17  or    ($17),($20)
0eb1: e8 00     mov   a,#$00
0eb3: d5 67 02  mov   $0267+x,a
0eb6: d5 76 02  mov   $0276+x,a
0eb9: d4 4e     mov   $4e+x,a
0ebb: d5 17 02  mov   $0217+x,a
0ebe: f5 66 02  mov   a,$0266+x
0ec1: 8d 00     mov   y,#$00
0ec3: 7a 2b     addw  ya,$2b
0ec5: da 2b     movw  $2b,ya
0ec7: f0 03     beq   $0ecc
0ec9: 30 01     bmi   $0ecc
0ecb: 6f        ret

0ecc: 5f 8c 0c  jmp   $0c8c

; vcmd e1
0ecf: d5 66 02  mov   $0266+x,a
0ed2: 2d        push  a
0ed3: 3f 76 0e  call  $0e76
0ed6: d5 67 02  mov   $0267+x,a
0ed9: d5 76 02  mov   $0276+x,a
0edc: ee        pop   y
0edd: cf        mul   ya
0ede: cd 64     mov   x,#$64
0ee0: e0        clrv
0ee1: 9e        div   ya,x
0ee2: f8 27     mov   x,$27
0ee4: 70 06     bvs   $0eec
0ee6: 08 00     or    a,#$00
0ee8: d0 02     bne   $0eec
0eea: e8 01     mov   a,#$01
0eec: d4 4e     mov   $4e+x,a
0eee: 5f be 0e  jmp   $0ebe

; vcmd e2
0ef1: 09 20 17  or    ($17),($20)
0ef4: d5 97 02  mov   $0297+x,a
0ef7: 68 19     cmp   a,#$19
0ef9: b0 04     bcs   $0eff
0efb: 68 14     cmp   a,#$14
0efd: b0 11     bcs   $0f10
0eff: e8 36     mov   a,#$36
0f01: c4 04     mov   $04,a
0f03: e8 06     mov   a,#$06
0f05: c4 05     mov   $05,a
0f07: f5 97 02  mov   a,$0297+x
0f0a: 3f 36 0f  call  $0f36
0f0d: 5f 8c 0c  jmp   $0c8c

0f10: e5 05 02  mov   a,$0205
0f13: 1c        asl   a
0f14: fd        mov   y,a
0f15: f6 28 06  mov   a,$0628+y
0f18: c4 04     mov   $04,a
0f1a: f6 29 06  mov   a,$0629+y
0f1d: c4 05     mov   $05,a
0f1f: f5 97 02  mov   a,$0297+x
0f22: 80        setc
0f23: a8 14     sbc   a,#$14
0f25: 3f 36 0f  call  $0f36
0f28: 5f 8c 0c  jmp   $0c8c

0f2b: e8 fe     mov   a,#$fe
0f2d: c4 04     mov   $04,a
0f2f: e8 06     mov   a,#$06
0f31: c4 05     mov   $05,a
0f33: f5 97 02  mov   a,$0297+x
0f36: 8d 08     mov   y,#$08
0f38: cf        mul   ya
0f39: 7a 04     addw  ya,$04
0f3b: da 04     movw  $04,ya
0f3d: 8d 00     mov   y,#$00
0f3f: e8 04     mov   a,#$04
0f41: 04 29     or    a,$29
0f43: c4 06     mov   $06,a
0f45: c5 f2 00  mov   $00f2,a
0f48: f7 04     mov   a,($04)+y
0f4a: c5 f3 00  mov   $00f3,a           ; SRCN
0f4d: fc        inc   y
0f4e: f7 04     mov   a,($04)+y
0f50: d5 a6 02  mov   $02a6+x,a
0f53: fc        inc   y
0f54: f7 04     mov   a,($04)+y
0f56: d5 a7 02  mov   $02a7+x,a
0f59: 8f 03 07  mov   $07,#$03
0f5c: fc        inc   y
0f5d: ab 06     inc   $06
0f5f: e4 06     mov   a,$06
0f61: c5 f2 00  mov   $00f2,a
0f64: f7 04     mov   a,($04)+y
0f66: c5 f3 00  mov   $00f3,a           ; ADSR(1),ADSR(2),GAIN
0f69: 6e 07 f0  dbnz  $07,$0f5c
0f6c: fc        inc   y
0f6d: 63 26 0a  bbs3  $26,$0f7a
0f70: f7 04     mov   a,($04)+y
0f72: d5 27 03  mov   $0327+x,a
0f75: e8 00     mov   a,#$00
0f77: d5 26 03  mov   $0326+x,a
0f7a: fc        inc   y
0f7b: f7 04     mov   a,($04)+y
0f7d: d5 b6 02  mov   $02b6+x,a
0f80: 6f        ret

; vcmd e3
0f81: 68 15     cmp   a,#$15
0f83: f0 0f     beq   $0f94
0f85: 68 16     cmp   a,#$16
0f87: f0 10     beq   $0f99
0f89: d5 27 03  mov   $0327+x,a
0f8c: e8 00     mov   a,#$00
0f8e: d5 26 03  mov   $0326+x,a
0f91: 5f 8c 0c  jmp   $0c8c

0f94: 62 26     set3  $26
0f96: 5f 8c 0c  jmp   $0c8c

0f99: 72 26     clr3  $26
0f9b: 5f 8c 0c  jmp   $0c8c

; vcmd e4
0f9e: d5 46 02  mov   $0246+x,a
0fa1: 3f 76 0e  call  $0e76
0fa4: d5 be 00  mov   $00be+x,a
0fa7: fd        mov   y,a
0fa8: f5 06 02  mov   a,$0206+x
0fab: cf        mul   ya
0fac: dd        mov   a,y
0fad: d5 36 02  mov   $0236+x,a
0fb0: 3f 76 0e  call  $0e76
0fb3: d5 77 03  mov   $0377+x,a
0fb6: d5 56 02  mov   $0256+x,a
0fb9: e8 00     mov   a,#$00
0fbb: d5 76 03  mov   $0376+x,a
0fbe: d5 47 02  mov   $0247+x,a
0fc1: 5f 8c 0c  jmp   $0c8c

; vcmd e5
0fc4: d5 77 02  mov   $0277+x,a
0fc7: 3f 76 0e  call  $0e76
0fca: d5 a7 03  mov   $03a7+x,a
0fcd: 3f 76 0e  call  $0e76
0fd0: d5 a6 03  mov   $03a6+x,a
0fd3: e8 00     mov   a,#$00
0fd5: d4 5e     mov   $5e+x,a
0fd7: d5 96 03  mov   $0396+x,a
0fda: d5 97 03  mov   $0397+x,a
0fdd: 5f 8c 0c  jmp   $0c8c

; vcmd e6
0fe0: f4 2d     mov   a,$2d+x
0fe2: d5 70 01  mov   $0170+x,a
0fe5: f4 2e     mov   a,$2e+x
0fe7: d5 71 01  mov   $0171+x,a
0fea: 5f 8c 0c  jmp   $0c8c

; vcmd e8
0fed: f4 2d     mov   a,$2d+x
0fef: d5 80 01  mov   $0180+x,a
0ff2: f4 2e     mov   a,$2e+x
0ff4: d5 81 01  mov   $0181+x,a
0ff7: e8 00     mov   a,#$00
0ff9: d4 5d     mov   $5d+x,a
0ffb: d5 40 01  mov   $0140+x,a
0ffe: d5 41 01  mov   $0141+x,a
1001: d5 60 01  mov   $0160+x,a
1004: d5 61 01  mov   $0161+x,a
1007: 5f 8c 0c  jmp   $0c8c

; vcmd e9
100a: fd        mov   y,a
100b: 7d        mov   a,x
100c: 60        clrc
100d: 88 10     adc   a,#$10
100f: 5d        mov   x,a
1010: dd        mov   a,y
1011: 68 00     cmp   a,#$00
1013: f0 32     beq   $1047
1015: bb 4d     inc   $4d+x
1017: de 4d 2d  cbne  $4d+x,$1047
101a: f8 27     mov   x,$27
101c: 3f 78 0e  call  $0e78
101f: 3f 78 0e  call  $0e78
1022: 5f 8c 0c  jmp   $0c8c

; vcmd e7
1025: 68 00     cmp   a,#$00
1027: f0 1e     beq   $1047
1029: bb 4d     inc   $4d+x
102b: de 4d 19  cbne  $4d+x,$1047
102e: 3f 78 0e  call  $0e78
1031: 3f 78 0e  call  $0e78
1034: e8 00     mov   a,#$00
1036: d4 4d     mov   $4d+x,a
1038: d5 30 01  mov   $0130+x,a
103b: d5 31 01  mov   $0131+x,a
103e: d5 50 01  mov   $0150+x,a
1041: d5 51 01  mov   $0151+x,a
1044: 5f 8c 0c  jmp   $0c8c

1047: f5 30 01  mov   a,$0130+x
104a: c4 04     mov   $04,a
104c: f5 31 01  mov   a,$0131+x
104f: c4 05     mov   $05,a
1051: 4d        push  x
1052: f8 27     mov   x,$27
1054: 3f 76 0e  call  $0e76
1057: ce        pop   x
1058: 8d 00     mov   y,#$00
105a: 08 00     or    a,#$00
105c: f0 0c     beq   $106a
105e: 10 01     bpl   $1061
1060: dc        dec   y
1061: 7a 04     addw  ya,$04
1063: d5 30 01  mov   $0130+x,a
1066: dd        mov   a,y
1067: d5 31 01  mov   $0131+x,a
106a: 4d        push  x
106b: f8 27     mov   x,$27
106d: 3f 76 0e  call  $0e76
1070: ce        pop   x
1071: 68 00     cmp   a,#$00
1073: f0 1d     beq   $1092
1075: 8d 00     mov   y,#$00
1077: 1c        asl   a
1078: 90 01     bcc   $107b
107a: dc        dec   y
107b: cb 04     mov   $04,y
107d: 1c        asl   a
107e: 2b 04     rol   $04
1080: 1c        asl   a
1081: 2b 04     rol   $04
1083: 60        clrc
1084: 95 50 01  adc   a,$0150+x
1087: d5 50 01  mov   $0150+x,a
108a: e4 04     mov   a,$04
108c: 95 51 01  adc   a,$0151+x
108f: d5 51 01  mov   $0151+x,a
1092: eb 27     mov   y,$27
1094: f5 70 01  mov   a,$0170+x
1097: d6 2d 00  mov   $002d+y,a
109a: f5 71 01  mov   a,$0171+x
109d: d6 2e 00  mov   $002e+y,a
10a0: f8 27     mov   x,$27
10a2: 5f 8c 0c  jmp   $0c8c

; vcmd ea
10a5: d5 06 02  mov   $0206+x,a
10a8: e8 00     mov   a,#$00
10aa: d4 3d     mov   $3d+x,a
10ac: 5f 8c 0c  jmp   $0c8c

; vcmd eb
10af: d4 3d     mov   $3d+x,a
10b1: 2d        push  a
10b2: 3f 76 0e  call  $0e76
10b5: d4 3e     mov   $3e+x,a
10b7: 80        setc
10b8: b5 06 02  sbc   a,$0206+x
10bb: ce        pop   x
10bc: 3f 4b 13  call  $134b
10bf: d5 00 01  mov   $0100+x,a
10c2: dd        mov   a,y
10c3: d5 01 01  mov   $0101+x,a
10c6: f5 06 02  mov   a,$0206+x
10c9: d5 11 01  mov   $0111+x,a
10cc: e8 00     mov   a,#$00
10ce: d5 10 01  mov   $0110+x,a
10d1: 5f 8c 0c  jmp   $0c8c

; vcmd ec
10d4: d5 57 02  mov   $0257+x,a
10d7: 5f 8c 0c  jmp   $0c8c

; vcmd ed
10da: 3f 78 0e  call  $0e78
10dd: 3f 78 0e  call  $0e78
10e0: 5f 8c 0c  jmp   $0c8c

; vcmd ee
10e3: d5 07 03  mov   $0307+x,a
10e6: e8 00     mov   a,#$00
10e8: d5 06 03  mov   $0306+x,a
10eb: 5f 8c 0c  jmp   $0c8c

; vcmd ef
10ee: d4 6e     mov   $6e+x,a
10f0: 2d        push  a
10f1: 3f 76 0e  call  $0e76
10f4: d5 16 02  mov   $0216+x,a
10f7: 80        setc
10f8: b5 07 03  sbc   a,$0307+x
10fb: ce        pop   x
10fc: 3f 4b 13  call  $134b
10ff: d5 16 03  mov   $0316+x,a
1102: dd        mov   a,y
1103: d5 17 03  mov   $0317+x,a
1106: 5f 8c 0c  jmp   $0c8c

; vcmd f0
1109: d4 8d     mov   $8d+x,a
110b: 82 26     set4  $26
110d: e8 00     mov   a,#$00
110f: d4 8e     mov   $8e+x,a
1111: 5f 8c 0c  jmp   $0c8c

; vcmd f1
1114: d4 8e     mov   $8e+x,a
1116: 3f 76 0e  call  $0e76
1119: d4 8d     mov   $8d+x,a
111b: 3f 76 0e  call  $0e76
111e: d5 07 02  mov   $0207+x,a
1121: 92 26     clr4  $26
1123: 5f 8c 0c  jmp   $0c8c

; vcmd f2
1126: 8f 00 04  mov   $04,#$00
1129: 08 00     or    a,#$00
112b: 30 05     bmi   $1132
112d: 8d 04     mov   y,#$04
112f: cf        mul   ya
1130: 2f 0c     bra   $113e
1132: 48 ff     eor   a,#$ff
1134: bc        inc   a
1135: 8d 04     mov   y,#$04
1137: cf        mul   ya
1138: da 04     movw  $04,ya
113a: ba 0e     movw  ya,$0e
113c: 9a 04     subw  ya,$04
113e: d5 b6 03  mov   $03b6+x,a
1141: dd        mov   a,y
1142: d5 b7 03  mov   $03b7+x,a
1145: 5f 8c 0c  jmp   $0c8c

; vcmd f3
1148: 3f 78 0e  call  $0e78
114b: 3f 78 0e  call  $0e78
114e: 5f 8c 0c  jmp   $0c8c

; vcmd f4
1151: c4 1c     mov   $1c,a
1153: f0 0f     beq   $1164
1155: 3f 76 0e  call  $0e76
1158: c4 14     mov   $14,a
115a: 3f 76 0e  call  $0e76
115d: c4 15     mov   $15,a
115f: b2 18     clr5  $18
1161: 5f 8c 0c  jmp   $0c8c

1164: c4 14     mov   $14,a
1166: c4 15     mov   $15,a
1168: a2 18     set5  $18
116a: 3f 78 0e  call  $0e78
116d: 3f 78 0e  call  $0e78
1170: 5f 8c 0c  jmp   $0c8c

; vcmd f5
1173: 3f a1 11  call  $11a1
1176: 3f 76 0e  call  $0e76
1179: c4 19     mov   $19,a
117b: 3f 78 0e  call  $0e78
117e: 8d 08     mov   y,#$08
1180: f6 90 11  mov   a,$1190+y
1183: c5 f2 00  mov   $00f2,a
1186: f6 98 11  mov   a,$1198+y
1189: c5 f3 00  mov   $00f3,a           ; FIR
118c: fe f2     dbnz  y,$1180
118e: 5f 8c 0c  jmp   $0c8c

1191: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
1199: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9

11a1: c4 1e     mov   $1e,a
11a3: 8d 7d     mov   y,#$7d
11a5: cc f2 00  mov   $00f2,y
11a8: e5 f3 00  mov   a,$00f3           ; EDL
11ab: 64 1e     cmp   a,$1e
11ad: f0 31     beq   $11e0
11af: 28 0f     and   a,#$0f
11b1: 48 ff     eor   a,#$ff
11b3: f3 1d 03  bbc7  $1d,$11b9
11b6: 60        clrc
11b7: 84 1d     adc   a,$1d
11b9: c4 1d     mov   $1d,a
11bb: 8d 04     mov   y,#$04
11bd: f6 a7 15  mov   a,$15a7+y
11c0: c5 f2 00  mov   $00f2,a
11c3: e8 00     mov   a,#$00
11c5: c5 f3 00  mov   $00f3,a           ; EVOL(L),EVOL(R),EFB,EON,FLG
11c8: fe f3     dbnz  y,$11bd
11ca: e4 18     mov   a,$18
11cc: 08 20     or    a,#$20
11ce: 8d 6c     mov   y,#$6c
11d0: cc f2 00  mov   $00f2,y
11d3: c5 f3 00  mov   $00f3,a           ; FLG
11d6: e4 1e     mov   a,$1e
11d8: 8d 7d     mov   y,#$7d
11da: cc f2 00  mov   $00f2,y
11dd: c5 f3 00  mov   $00f3,a           ; EDL
11e0: 68 00     cmp   a,#$00
11e2: f0 09     beq   $11ed
11e4: 1c        asl   a
11e5: 1c        asl   a
11e6: 1c        asl   a
11e7: 48 ff     eor   a,#$ff
11e9: bc        inc   a
11ea: 60        clrc
11eb: 88 00     adc   a,#$00
11ed: 8d 6d     mov   y,#$6d
11ef: cc f2 00  mov   $00f2,y
11f2: c5 f3 00  mov   $00f3,a           ; ESA
11f5: 6f        ret

; vcmd f6
11f6: f4 2d     mov   a,$2d+x
11f8: d5 e6 02  mov   $02e6+x,a
11fb: f4 2e     mov   a,$2e+x
11fd: d5 e7 02  mov   $02e7+x,a
1200: e8 c0     mov   a,#$c0
1202: 4e 26 00  tclr1 $0026
1205: 5f 8c 0c  jmp   $0c8c

; vcmd f7
1208: c3 26 08  bbs6  $26,$1213
120b: e3 26 20  bbs7  $26,$122e
120e: c2 26     set6  $26
1210: 5f 8c 0c  jmp   $0c8c

1213: d2 26     clr6  $26
1215: e2 26     set7  $26
1217: f4 2d     mov   a,$2d+x
1219: d5 f6 02  mov   $02f6+x,a
121c: f4 2e     mov   a,$2e+x
121e: d5 f7 02  mov   $02f7+x,a
1221: f5 e6 02  mov   a,$02e6+x
1224: d4 2d     mov   $2d+x,a
1226: f5 e7 02  mov   a,$02e7+x
1229: d4 2e     mov   $2e+x,a
122b: 5f 8c 0c  jmp   $0c8c

122e: c2 26     set6  $26
1230: f2 26     clr7  $26
1232: f5 f6 02  mov   a,$02f6+x
1235: d4 2d     mov   $2d+x,a
1237: f5 f7 02  mov   a,$02f7+x
123a: d4 2e     mov   $2e+x,a
123c: 5f 8c 0c  jmp   $0c8c

; vcmd f8
123f: d4 6d     mov   $6d+x,a
1241: 2d        push  a
1242: 3f 76 0e  call  $0e76
1245: d5 27 02  mov   $0227+x,a
1248: 80        setc
1249: b5 27 03  sbc   a,$0327+x
124c: ce        pop   x
124d: 3f 4b 13  call  $134b
1250: d5 36 03  mov   $0336+x,a
1253: dd        mov   a,y
1254: d5 37 03  mov   $0337+x,a
1257: 5f 8c 0c  jmp   $0c8c

; vcmd f9
125a: d5 47 02  mov   $0247+x,a
125d: 2d        push  a
125e: 8d 00     mov   y,#$00
1260: f5 56 02  mov   a,$0256+x
1263: ce        pop   x
1264: 9e        div   ya,x
1265: 2d        push  a
1266: e8 00     mov   a,#$00
1268: 9e        div   ya,x
1269: f8 27     mov   x,$27
126b: d5 86 03  mov   $0386+x,a
126e: ae        pop   a
126f: d5 87 03  mov   $0387+x,a
1272: 5f 8c 0c  jmp   $0c8c

; vcmd fa
1275: 8d 00     mov   y,#$00
1277: 68 a0     cmp   a,#$a0
1279: b0 34     bcs   $12af
127b: cd 0a     mov   x,#$0a
127d: 9e        div   ya,x
127e: c4 04     mov   $04,a
1280: dd        mov   a,y
1281: 28 07     and   a,#$07
1283: 9f        xcn   a
1284: 04 04     or    a,$04
1286: 08 80     or    a,#$80
1288: fd        mov   y,a
1289: e8 05     mov   a,#$05
128b: 04 29     or    a,$29
128d: 5d        mov   x,a
128e: c9 f2 00  mov   $00f2,x
1291: cc f3 00  mov   $00f3,y           ; ADSR(1)
1294: 3d        inc   x
1295: c9 f2 00  mov   $00f2,x
1298: f8 27     mov   x,$27
129a: 3f 76 0e  call  $0e76
129d: 8d 00     mov   y,#$00
129f: cd 1e     mov   x,#$1e
12a1: 9e        div   ya,x
12a2: fc        inc   y
12a3: fc        inc   y
12a4: cb 04     mov   $04,y
12a6: 9f        xcn   a
12a7: 1c        asl   a
12a8: 04 04     or    a,$04
12aa: c5 f3 00  mov   $00f3,a           ; ADSR(2)
12ad: 2f 18     bra   $12c7
12af: e8 05     mov   a,#$05
12b1: 04 29     or    a,$29
12b3: 5d        mov   x,a
12b4: c9 f2 00  mov   $00f2,x
12b7: cc f3 00  mov   $00f3,y           ; ADSR(1)
12ba: 3d        inc   x
12bb: 3d        inc   x
12bc: c9 f2 00  mov   $00f2,x           ; GAIN
12bf: f8 27     mov   x,$27
12c1: 3f 76 0e  call  $0e76
12c4: c5 f3 00  mov   $00f3,a
12c7: f8 27     mov   x,$27
12c9: 3f 76 0e  call  $0e76
12cc: 8d 10     mov   y,#$10
12ce: cf        mul   ya
12cf: d5 c6 03  mov   $03c6+x,a
12d2: dd        mov   a,y
12d3: d5 c7 03  mov   $03c7+x,a
12d6: 5f 8c 0c  jmp   $0c8c

; vcmd fb
12d9: c4 1a     mov   $1a,a
12db: 5f 8c 0c  jmp   $0c8c

; vcmd fc
12de: 13 2a 0c  bbc0  $2a,$12ed
12e1: c8 0a     cmp   x,#$0a
12e3: d0 02     bne   $12e7
12e5: 12 2a     clr0  $2a
12e7: 3f 78 0e  call  $0e78
12ea: 3f 76 0e  call  $0e76
12ed: 2d        push  a
12ee: 3f 76 0e  call  $0e76
12f1: d5 2e 00  mov   $002e+x,a
12f4: ae        pop   a
12f5: d5 2d 00  mov   $002d+x,a
12f8: 5f 8c 0c  jmp   $0c8c

; vcmd fd
12fb: c4 04     mov   $04,a
12fd: 3f 76 0e  call  $0e76
1300: d4 2e     mov   $2e+x,a
1302: e4 04     mov   a,$04
1304: d4 2d     mov   $2d+x,a
1306: 5f 8c 0c  jmp   $0c8c

; vcmd fe
1309: c4 04     mov   $04,a
130b: 3f 76 0e  call  $0e76
130e: c4 05     mov   $05,a
1310: f4 2d     mov   a,$2d+x
1312: d5 20 01  mov   $0120+x,a
1315: f4 2e     mov   a,$2e+x
1317: d5 21 01  mov   $0121+x,a
131a: ba 04     movw  ya,$04
131c: d4 2d     mov   $2d+x,a
131e: db 2e     mov   $2e+x,y
1320: 42 26     set2  $26
1322: 5f 8c 0c  jmp   $0c8c

; vcmd ff
1325: 53 26 0f  bbc2  $26,$1337
1328: 52 26     clr2  $26
132a: f5 20 01  mov   a,$0120+x
132d: d4 2d     mov   $2d+x,a
132f: f5 21 01  mov   a,$0121+x
1332: d4 2e     mov   $2e+x,a
1334: 5f 8c 0c  jmp   $0c8c

1337: e8 00     mov   a,#$00
1339: d4 bd     mov   $bd+x,a
133b: d4 ce     mov   $ce+x,a
133d: d5 26 02  mov   $0226+x,a
1340: e4 20     mov   a,$20
1342: 0e 17 00  tset1 $0017
1345: 4e 1f 00  tclr1 $001f
1348: a2 26     set5  $26
134a: 6f        ret

134b: ed        notc
134c: 6b 04     ror   $04
134e: 10 03     bpl   $1353
1350: 48 ff     eor   a,#$ff
1352: bc        inc   a
1353: 8d 00     mov   y,#$00
1355: 9e        div   ya,x
1356: 2d        push  a
1357: e8 00     mov   a,#$00
1359: 9e        div   ya,x
135a: ee        pop   y
135b: f8 27     mov   x,$27
135d: f3 04 07  bbc7  $04,$1367
1360: da 04     movw  $04,ya
1362: e8 00     mov   a,#$00
1364: fd        mov   y,a
1365: 9a 04     subw  ya,$04
1367: 6f        ret

1368: f4 7d     mov   a,$7d+x
136a: f0 58     beq   $13c4
136c: f5 47 03  mov   a,$0347+x
136f: c4 07     mov   $07,a
1371: f5 46 03  mov   a,$0346+x
1374: c4 06     mov   $06,a
1376: ba 04     movw  ya,$04
1378: ad 60     cmp   y,#$60
137a: 90 0c     bcc   $1388
137c: ad 80     cmp   y,#$80
137e: 90 04     bcc   $1384
1380: ba 0e     movw  ya,$0e
1382: 2f 04     bra   $1388
1384: 8d 5f     mov   y,#$5f
1386: e8 ff     mov   a,#$ff
1388: d5 66 03  mov   $0366+x,a
138b: 2d        push  a
138c: dd        mov   a,y
138d: d5 67 03  mov   $0367+x,a
1390: f4 7d     mov   a,$7d+x
1392: 5d        mov   x,a
1393: ae        pop   a
1394: 9a 06     subw  ya,$06
1396: da 04     movw  $04,ya
1398: ed        notc
1399: 6b 06     ror   $06
139b: 10 0a     bpl   $13a7
139d: 58 ff 04  eor   $04,#$ff
13a0: 58 ff 05  eor   $05,#$ff
13a3: 3a 04     incw  $04
13a5: ba 04     movw  ya,$04
13a7: 8d 00     mov   y,#$00
13a9: e4 05     mov   a,$05
13ab: 9e        div   ya,x
13ac: 2d        push  a
13ad: e4 04     mov   a,$04
13af: 9e        div   ya,x
13b0: ee        pop   y
13b1: f3 06 07  bbc7  $06,$13bb
13b4: da 04     movw  $04,ya
13b6: e8 00     mov   a,#$00
13b8: fd        mov   y,a
13b9: 9a 04     subw  ya,$04
13bb: f8 27     mov   x,$27
13bd: d5 56 03  mov   $0356+x,a
13c0: dd        mov   a,y
13c1: d5 57 03  mov   $0357+x,a
13c4: 6f        ret

13c5: c4 04     mov   $04,a
13c7: f3 04 03  bbc7  $04,$13cd
13ca: 48 ff     eor   a,#$ff
13cc: bc        inc   a
13cd: 1c        asl   a
13ce: 10 03     bpl   $13d3
13d0: 48 ff     eor   a,#$ff
13d2: bc        inc   a
13d3: 5c        lsr   a
13d4: 5c        lsr   a
13d5: fd        mov   y,a
13d6: f5 77 03  mov   a,$0377+x
13d9: cf        mul   ya
13da: da 08     movw  $08,ya
13dc: f5 56 02  mov   a,$0256+x
13df: 30 08     bmi   $13e9
13e1: 4b 09     lsr   $09
13e3: 6b 08     ror   $08
13e5: 4b 09     lsr   $09
13e7: 6b 08     ror   $08
13e9: f3 04 08  bbc7  $04,$13f4
13ec: 58 ff 08  eor   $08,#$ff
13ef: 58 ff 09  eor   $09,#$ff
13f2: 3a 08     incw  $08
13f4: 6f        ret

13f5: e8 00     mov   a,#$00
13f7: c4 05     mov   $05,a
13f9: c4 04     mov   $04,a
13fb: f5 77 02  mov   a,$0277+x
13fe: f0 3f     beq   $143f
1400: 60        clrc
1401: 94 5e     adc   a,$5e+x
1403: d4 5e     mov   $5e+x,a
1405: 90 38     bcc   $143f
1407: f5 97 03  mov   a,$0397+x
140a: 5c        lsr   a
140b: f5 96 03  mov   a,$0396+x
140e: 5d        mov   x,a
140f: 90 09     bcc   $141a
1411: f5 bd 17  mov   a,$17bd+x
1414: fd        mov   y,a
1415: f5 bc 17  mov   a,$17bc+x
1418: 2f 07     bra   $1421
141a: f5 bd 16  mov   a,$16bd+x
141d: fd        mov   y,a
141e: f5 bc 16  mov   a,$16bc+x
1421: f8 27     mov   x,$27
1423: 35 a6 03  and   a,$03a6+x
1426: c4 04     mov   $04,a
1428: dd        mov   a,y
1429: 35 a7 03  and   a,$03a7+x
142c: c4 05     mov   $05,a
142e: f5 96 03  mov   a,$0396+x
1431: 60        clrc
1432: 88 01     adc   a,#$01
1434: d5 96 03  mov   $0396+x,a
1437: f5 97 03  mov   a,$0397+x
143a: 88 00     adc   a,#$00
143c: d5 97 03  mov   $0397+x,a
143f: 6f        ret

1440: 2d        push  a
1441: 6d        push  y
1442: f5 a6 02  mov   a,$02a6+x
1445: c4 05     mov   $05,a
1447: f5 a7 02  mov   a,$02a7+x
144a: c4 04     mov   $04,a
144c: 30 06     bmi   $1454
144e: ee        pop   y
144f: ae        pop   a
1450: 7a 04     addw  ya,$04
1452: 2f 0c     bra   $1460
1454: ae        pop   a
1455: 60        clrc
1456: 84 05     adc   a,$05
1458: fd        mov   y,a
1459: ae        pop   a
145a: 60        clrc
145b: 84 04     adc   a,$04
145d: b0 01     bcs   $1460
145f: dc        dec   y
1460: da 04     movw  $04,ya
1462: dd        mov   a,y
1463: 28 7f     and   a,#$7f
1465: 1c        asl   a
1466: fd        mov   y,a
1467: f6 bd 15  mov   a,$15bd+y
146a: c4 07     mov   $07,a
146c: f6 bc 15  mov   a,$15bc+y
146f: c4 06     mov   $06,a
1471: f6 bf 15  mov   a,$15bf+y
1474: 2d        push  a
1475: f6 be 15  mov   a,$15be+y
1478: ee        pop   y
1479: 9a 06     subw  ya,$06
147b: b0 04     bcs   $1481
147d: 8d 00     mov   y,#$00
147f: e8 c9     mov   a,#$c9
1481: 6d        push  y
1482: eb 04     mov   y,$04
1484: cf        mul   ya
1485: 8f 00 09  mov   $09,#$00
1488: cb 08     mov   $08,y
148a: ae        pop   a
148b: eb 04     mov   y,$04
148d: cf        mul   ya
148e: 7a 08     addw  ya,$08
1490: 7a 06     addw  ya,$06
1492: 6d        push  y
1493: 2d        push  a
1494: e8 02     mov   a,#$02
1496: 04 29     or    a,$29
1498: fd        mov   y,a
1499: ae        pop   a
149a: cc f2 00  mov   $00f2,y
149d: c5 f3 00  mov   $00f3,a           ; P(L)
14a0: fc        inc   y
14a1: ae        pop   a
14a2: 28 3f     and   a,#$3f
14a4: cc f2 00  mov   $00f2,y
14a7: c5 f3 00  mov   $00f3,a           ; P(H)
14aa: 6f        ret

14ab: 8f 00 05  mov   $05,#$00
14ae: 8f 00 07  mov   $07,#$00
14b1: c4 04     mov   $04,a
14b3: 08 00     or    a,#$00
14b5: 10 02     bpl   $14b9
14b7: 8b 05     dec   $05
14b9: f5 d7 03  mov   a,$03d7+x
14bc: c4 06     mov   $06,a
14be: f5 30 01  mov   a,$0130+x
14c1: c4 08     mov   $08,a
14c3: f5 31 01  mov   a,$0131+x
14c6: c4 09     mov   $09,a
14c8: f5 40 01  mov   a,$0140+x
14cb: c4 0a     mov   $0a,a
14cd: f5 41 01  mov   a,$0141+x
14d0: c4 0b     mov   $0b,a
14d2: f5 17 02  mov   a,$0217+x
14d5: 8d 00     mov   y,#$00
14d7: 9a 04     subw  ya,$04
14d9: 9a 06     subw  ya,$06
14db: 7a 08     addw  ya,$08
14dd: 7a 0a     addw  ya,$0a
14df: ad 80     cmp   y,#$80
14e1: b0 48     bcs   $152b
14e3: ad 00     cmp   y,#$00
14e5: d0 04     bne   $14eb
14e7: 08 00     or    a,#$00
14e9: 10 02     bpl   $14ed
14eb: e8 7f     mov   a,#$7f
14ed: fd        mov   y,a
14ee: f5 07 03  mov   a,$0307+x
14f1: cf        mul   ya
14f2: 1c        asl   a
14f3: dd        mov   a,y
14f4: 3c        rol   a
14f5: 78 00 23  cmp   $23,#$00
14f8: f0 14     beq   $150e
14fa: fd        mov   y,a
14fb: c8 0c     cmp   x,#$0c
14fd: 90 09     bcc   $1508
14ff: f4 ce     mov   a,$ce+x
1501: 68 60     cmp   a,#$60
1503: b0 03     bcs   $1508
1505: dd        mov   a,y
1506: 2f 06     bra   $150e
1508: e4 23     mov   a,$23
150a: cf        mul   ya
150b: 1c        asl   a
150c: dd        mov   a,y
150d: 3c        rol   a
150e: 33 25 12  bbc1  $25,$1523
1511: c8 0c     cmp   x,#$0c
1513: b0 16     bcs   $152b
1515: c4 04     mov   $04,a
1517: f4 ce     mov   a,$ce+x
1519: 68 60     cmp   a,#$60
151b: 90 0e     bcc   $152b
151d: e4 04     mov   a,$04
151f: 8d 32     mov   y,#$32
1521: cf        mul   ya
1522: dd        mov   a,y
1523: 80        setc
1524: b5 b6 02  sbc   a,$02b6+x
1527: 90 02     bcc   $152b
1529: b0 02     bcs   $152d
152b: e8 00     mov   a,#$00
152d: c4 05     mov   $05,a
152f: e8 0a     mov   a,#$0a
1531: 03 25 09  bbs0  $25,$153d
1534: f5 27 03  mov   a,$0327+x
1537: 68 15     cmp   a,#$15
1539: 90 02     bcc   $153d
153b: e8 14     mov   a,#$14
153d: c4 04     mov   $04,a
153f: e4 29     mov   a,$29
1541: 08 00     or    a,#$00
1543: c5 f2 00  mov   $00f2,a
1546: f8 04     mov   x,$04
1548: f5 7e 15  mov   a,$157e+x
154b: eb 05     mov   y,$05
154d: cf        mul   ya
154e: cd 7f     mov   x,#$7f
1550: 9e        div   ya,x
1551: c5 f3 00  mov   $00f3,a           ; VOL(L)
1554: f8 27     mov   x,$27
1556: e4 29     mov   a,$29
1558: 08 01     or    a,#$01
155a: c5 f2 00  mov   $00f2,a
155d: f8 04     mov   x,$04
155f: f5 93 15  mov   a,$1593+x
1562: eb 05     mov   y,$05
1564: cf        mul   ya
1565: cd 7f     mov   x,#$7f
1567: 9e        div   ya,x
1568: c5 f3 00  mov   $00f3,a           ; VOL(R)
156b: f8 27     mov   x,$27
156d: 6f        ret

156e: dw $0000
1570: dw $0010
1572: dw $0020
1574: dw $0030
1576: dw $0040
1578: dw $0050
157a: dw $0060
157c: dw $0070

157e: db $00,$05,$0c,$14,$1e,$28,$32,$3c
1586: db $46,$50,$59,$62,$69,$6f,$74,$78
158e: db $7b,$7d,$7e,$7e,$7f,$7f,$7e,$7e
1596: db $7d,$7b,$78,$74,$6f,$69,$62,$59
159e: db $50,$46,$3c,$32,$28,$1e,$14,$0c
15a6: db $05,$00

; dsp reg/value initialize table ($15a7/$15b1)
; EVOL(L),EVOL(R),EFB,EON,FLG,KON,KOF,NON,PMON,KOF
15a8: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
15b2: db $14,$15,$19,$1c,$18,$16,$0e,$1b,$1a,$17

15bc: dw $0042
15be: dw $0046
15c0: dw $004b
15c2: dw $004f
15c4: dw $0054
15c6: dw $0059
15c8: dw $005e
15ca: dw $0064
15cc: dw $006a
15ce: dw $0070
15d0: dw $0077
15d2: dw $007e
15d4: dw $0085
15d6: dw $008d
15d8: dw $0096
15da: dw $009f
15dc: dw $00a8
15de: dw $00b2
15e0: dw $00bd
15e2: dw $00c8
15e4: dw $00d4
15e6: dw $00e1
15e8: dw $00ee
15ea: dw $00fc
15ec: dw $010b
15ee: dw $011b
15f0: dw $012c
15f2: dw $013e
15f4: dw $0151
15f6: dw $0165
15f8: dw $017a
15fa: dw $0191
15fc: dw $01a9
15fe: dw $01c2
1600: dw $01dd
1602: dw $01f9
1604: dw $0217
1606: dw $0237
1608: dw $0259
160a: dw $027d
160c: dw $02a3
160e: dw $02cb
1610: dw $02f5
1612: dw $0322
1614: dw $0352
1616: dw $0385
1618: dw $03ba
161a: dw $03f3
161c: dw $042f
161e: dw $046f
1620: dw $04b2
1622: dw $04fa
1624: dw $0546
1626: dw $0596
1628: dw $05eb
162a: dw $0645
162c: dw $06a5
162e: dw $070a
1630: dw $0775
1632: dw $07e6
1634: dw $085f
1636: dw $08de
1638: dw $0965
163a: dw $09f4
163c: dw $0a8c
163e: dw $0b2c
1640: dw $0bd6
1642: dw $0c8b
1644: dw $0d4a
1646: dw $0e14
1648: dw $0eea
164a: dw $0fcd
164c: dw $10be
164e: dw $11bd
1650: dw $12cb
1652: dw $13e9
1654: dw $1518
1656: dw $1659
1658: dw $17ad
165a: dw $1916
165c: dw $1a94
165e: dw $1c28
1660: dw $1dd5
1662: dw $1f9b
1664: dw $217c
1666: dw $237a
1668: dw $2596
166a: dw $27d2
166c: dw $2a30
166e: dw $2cb2
1670: dw $2f5a
1672: dw $322c
1674: dw $3528
1676: dw $3850
1678: dw $3bac
167a: dw $3f36
167c: dw $000b
167e: dw $000c
1680: dw $000d
1682: dw $000e
1684: dw $000e
1686: dw $000f
1688: dw $0010
168a: dw $0010
168c: dw $0012
168e: dw $0013
1690: dw $0014
1692: dw $0015
1694: dw $0016
1696: dw $0018
1698: dw $0019
169a: dw $001b
169c: dw $001c
169e: dw $001e
16a0: dw $0020
16a2: dw $0021
16a4: dw $0023
16a6: dw $0026
16a8: dw $0028
16aa: dw $002a
16ac: dw $002d
16ae: dw $002f
16b0: dw $0032
16b2: dw $0035
16b4: dw $0038
16b6: dw $003c
16b8: dw $003f
16ba: dw $0042

16bc: dw $3c9f
16be: dw $52b2
16c0: dw $45af
16c2: dw $89c7
16c4: dw $7f10
16c6: dw $9de0
16c8: dw $1fdc
16ca: dw $1661
16cc: dw $c939
16ce: dw $eb9c
16d0: dw $0857
16d2: dw $f866
16d4: dw $245a
16d6: dw $0ebf
16d8: dw $153e
16da: dw $db4b
16dc: dw $f5ab
16de: dw $0c31
16e0: dw $0243
16e2: dw $de55
16e4: dw $da41
16e6: dw $aebd
16e8: dw $b019
16ea: dw $5748
16ec: dw $a3ba
16ee: dw $0b36
16f0: dw $dff9
16f2: dw $a817
16f4: dw $0c04
16f6: dw $91e0
16f8: dw $5d18
16fa: dw $d3dd
16fc: dw $8a28
16fe: dw $11f2
1700: dw $6f59
1702: dw $0a06
1704: dw $2a34
1706: dw $ac79
1708: dw $a75e
170a: dw $c683
170c: dw $c139
170e: dw $3ab4
1710: dw $fe3f
1712: dw $ef4f
1714: dw $001f
1716: dw $9930
1718: dw $284c
171a: dw $ed83
171c: dw $2f8a
171e: dw $662c
1720: dw $d63f
1722: dw $b76c
1724: dw $2249
1726: dw $65bc
1728: dw $cffa
172a: dw $b102
172c: dw $f046
172e: dw $d79a
1730: dw $0fe2
1732: dw $c511
1734: dw $f674
1736: dw $2c7a
1738: dw $fb8f
173a: dw $6a19
173c: dw $75e5
173e: dw $4a51
1740: dw $b8ff
1742: dw $627f
1744: dw $4fdb
1746: dw $e814
1748: dw $d6c2
174a: dw $b962
174c: dw $adc2
174e: dw $d5a6
1750: dw $f729
1752: dw $2e14
1754: dw $186c
1756: dw $a48e
1758: dw $a0c1
175a: dw $327e
175c: dw $bea9
175e: dw $15e6
1760: dw $7db6
1762: dw $a0f8
1764: dw $12e6
1766: dw $677a
1768: dw $d247
176a: dw $5803
176c: dw $d1fd
176e: dw $319e
1770: dw $509b
1772: dw $a554
1774: dw $72ec
1776: dw $d570
1778: dw $9bb6
177a: dw $7c82
177c: dw $c5a1
177e: dw $b972
1780: dw $33a8
1782: dw $eb8b
1784: dw $9e59
1786: dw $8729
1788: dw $368e
178a: dw $86ad
178c: dw $e4ea
178e: dw $37d4
1790: dw $ae92
1792: dw $f045
1794: dw $246e
1796: dw $f3d0
1798: dw $95cb
179a: dw $e871
179c: dw $38c6
179e: dw $71ed
17a0: dw $2244
17a2: dw $602b
17a4: dw $26c0
17a6: dw $53f9
17a8: dw $c45a
17aa: dw $742d
17ac: dw $50c8
17ae: dw $f78d
17b0: dw $01ac
17b2: dw $bd79
17b4: dw $1052
17b6: dw $675e
17b8: dw $01b0
17ba: dw $ffa6
17bc: dw $ce5f
17be: dw $6454
17c0: dw $e75c
17c2: dw $32ba
17c4: dw $fc96
17c6: dw $e900
17c8: dw $77cc
17ca: dw $60dc
17cc: dw $92b5
17ce: dw $844d
17d0: dw $681c
17d2: dw $4eee
17d4: dw $abaf
17d6: dw $8707
17d8: dw $939f
17da: dw $88bf
17dc: dw $cdf1
17de: dw $d780
17e0: dw $e54a
17e2: dw $4e20
17e4: dw $4463
17e6: dw $78da
17e8: dw $078f
17ea: dw $40f3
17ec: dw $6b98
17ee: dw $a237
17f0: dw $21f4
17f2: dw $961e
17f4: dw $7e13
17f6: dw $ea09
17f8: dw $273d
17fa: dw $4d86
17fc: dw $8bbe
17fe: dw $d0cd
1800: dw $a3fb
1802: dw $971b
1804: dw $bc2a
1806: dw $8c1a
1808: dw $4c73
180a: dw $6f46
180c: dw $26de
180e: dw $b88c
1810: dw $aa33
1812: dw $bb0e
1814: dw $d821
1816: dw $3b89
1818: dw $1d97
181a: dw $23bb
181c: dw $9048
181e: dw $fa69
1820: dw $76c9
1822: dw $e7ce
1824: dw $7b1b
1826: dw $2b1a
1828: dw $c078
182a: dw $0803
182c: dw $cf6b
182e: dw $b3cc
1830: dw $a96d
1832: dw $3ab2
1834: dw $a116
1836: dw $9556
1838: dw $170b
183a: dw $12f1
183c: dw $1399
183e: dw $81d8
1840: dw $3856
1842: dw $3ef5
1844: dw $b1d1
1846: dw $e1e3
1848: dw $2eb3
184a: dw $ef84
184c: dw $045b
184e: dw $5d64
1850: dw $0ab5
1852: dw $1d5b
1854: dw $0694
1856: dw $e4d9
1858: dw $fd0d
185a: dw $a26d
185c: dw $f64b
185e: dw $a565
1860: dw $aacb
1862: dw $e35f
1864: dw $1e70
1866: dw $93f2
1868: dw $6382
186a: dw $ee27
186c: dw $1ce2
186e: dw $2398
1870: dw $0dca
1872: dw $d9ec
1874: dw $f405
1876: dw $533b
1878: dw $739d
187a: dw $c33c
187c: dw $fed4
187e: dw $dde1
1880: dw $6961
1882: dw $2d90
1884: dw $8d2f
1886: dw $c451
1888: dw $7ca4
188a: dw $8843
188c: dw $5c34
188e: dw $b485
1890: dw $257d
1892: dw $5830
1894: dw $6885
1896: dw $c735
1898: dw $2047
189a: dw $3505
189c: dw $2509
189e: dw $5580
18a0: dw $6aca
18a2: dw $fc91
18a4: dw $d3c8
18a6: dw $a70f
18a8: dw $9ac3
18aa: dw $946e
18ac: dw $429c
18ae: dw $77df
18b0: dw $4042
18b2: dw $76d2
18b4: dw $413d
18b6: dw $7581
18b8: dw $49b7
18ba: dw $7be9

18bc: e5 f4 00  mov   a,$00f4
18bf: 65 f4 00  cmp   a,$00f4
18c2: d0 f8     bne   $18bc
18c4: 68 00     cmp   a,#$00
18c6: d0 01     bne   $18c9
18c8: 6f        ret

18c9: c5 f4 00  mov   $00f4,a
18cc: 8d 11     mov   y,#$11
18ce: cc f1 00  mov   $00f1,y
18d1: c4 0c     mov   $0c,a
18d3: 68 ff     cmp   a,#$ff
18d5: d0 06     bne   $18dd
18d7: 3f f3 1a  call  $1af3
18da: e8 00     mov   a,#$00
18dc: 6f        ret

18dd: 68 85     cmp   a,#$85
18df: b0 11     bcs   $18f2
18e1: 68 7b     cmp   a,#$7b
18e3: b0 10     bcs   $18f5
18e5: 68 74     cmp   a,#$74
18e7: b0 03     bcs   $18ec
18e9: 5f 7a 19  jmp   $197a

18ec: 80        setc
18ed: a8 74     sbc   a,#$74
18ef: c5 05 02  mov   $0205,a
18f2: e8 00     mov   a,#$00
18f4: 6f        ret

18f5: 80        setc
18f6: a8 7c     sbc   a,#$7c
18f8: 1c        asl   a
18f9: 5d        mov   x,a
18fa: e8 00     mov   a,#$00
18fc: 1f ff 18  jmp   ($18ff+x)

18ff: dw $1911
1901: dw $1932
1903: dw $1935
1905: dw $1938
1907: dw $193b
1909: dw $193b
190b: dw $194f
190d: dw $1952
190f: dw $195a

1911: 22 25     set1  $25
1913: 8d 60     mov   y,#$60
1915: cc f2 00  mov   $00f2,y
1918: c5 f3 00  mov   $00f3,a
191b: fc        inc   y
191c: cc f2 00  mov   $00f2,y
191f: c5 f3 00  mov   $00f3,a
1922: 8d 70     mov   y,#$70
1924: cc f2 00  mov   $00f2,y
1927: c5 f3 00  mov   $00f3,a
192a: fc        inc   y
192b: cc f2 00  mov   $00f2,y
192e: c5 f3 00  mov   $00f3,a
1931: 6f        ret

1932: 32 25     clr1  $25
1934: 6f        ret

1935: 02 25     set0  $25
1937: 6f        ret

1938: 12 25     clr0  $25
193a: 6f        ret

193b: e4 0c     mov   a,$0c
193d: 80        setc
193e: a8 80     sbc   a,#$80
1940: 5d        mov   x,a
1941: f5 25 06  mov   a,$0625+x
1944: c5 04 02  mov   $0204,a
1947: 8f 70 23  mov   $23,#$70
194a: e8 00     mov   a,#$00
194c: c4 24     mov   $24,a
194e: 6f        ret

194f: 02 2a     set0  $2a
1951: 6f        ret

1952: e8 00     mov   a,#$00
1954: 8d 0c     mov   y,#$0c
1956: cd 3f     mov   x,#$3f
1958: 2f 06     bra   $1960
195a: e8 00     mov   a,#$00
195c: 8d 10     mov   y,#$10
195e: cd ff     mov   x,#$ff
1960: 32 25     clr1  $25
1962: d6 cc 00  mov   $00cc+y,a
1965: d6 24 02  mov   $0224+y,a
1968: dc        dec   y
1969: fe f7     dbnz  y,$1962
196b: c4 23     mov   $23,a
196d: c4 19     mov   $19,a
196f: c4 1c     mov   $1c,a
1971: c4 14     mov   $14,a
1973: c4 15     mov   $15,a
1975: 3f a1 11  call  $11a1
1978: 7d        mov   a,x
1979: 6f        ret

197a: e4 0c     mov   a,$0c
197c: 8f e6 04  mov   $04,#$e6
197f: 8f 03 05  mov   $05,#$03
1982: 9c        dec   a
1983: 8d 05     mov   y,#$05
1985: cf        mul   ya
1986: 7a 04     addw  ya,$04
1988: da 04     movw  $04,ya
198a: 8d 00     mov   y,#$00
198c: cd 00     mov   x,#$00
198e: f7 04     mov   a,($04)+y
1990: c4 20     mov   $20,a
1992: fc        inc   y
1993: f7 04     mov   a,($04)+y
1995: c4 06     mov   $06,a
1997: e4 0c     mov   a,$0c
1999: 68 60     cmp   a,#$60
199b: b0 64     bcs   $1a01
199d: 68 5c     cmp   a,#$5c
199f: 90 0a     bcc   $19ab
19a1: 80        setc
19a2: a8 5c     sbc   a,#$5c
19a4: 5d        mov   x,a
19a5: f5 ef 1a  mov   a,$1aef+x
19a8: 5d        mov   x,a
19a9: 2f 56     bra   $1a01
19ab: cd 0c     mov   x,#$0c
19ad: 68 40     cmp   a,#$40
19af: b0 46     bcs   $19f7
19b1: 68 1f     cmp   a,#$1f
19b3: d0 0e     bne   $19c3
19b5: f4 ce     mov   a,$ce+x
19b7: 68 1e     cmp   a,#$1e
19b9: f0 46     beq   $1a01
19bb: f4 d0     mov   a,$d0+x
19bd: 68 1e     cmp   a,#$1e
19bf: d0 18     bne   $19d9
19c1: 2f 10     bra   $19d3
19c3: 68 19     cmp   a,#$19
19c5: d0 14     bne   $19db
19c7: f4 ce     mov   a,$ce+x
19c9: 68 18     cmp   a,#$18
19cb: f0 34     beq   $1a01
19cd: f4 d0     mov   a,$d0+x
19cf: 68 18     cmp   a,#$18
19d1: d0 06     bne   $19d9
19d3: 3d        inc   x
19d4: 3d        inc   x
19d5: 0b 20     asl   $20
19d7: 2f 28     bra   $1a01
19d9: e4 0c     mov   a,$0c
19db: 74 d0     cmp   a,$d0+x
19dd: d0 06     bne   $19e5
19df: 3d        inc   x
19e0: 3d        inc   x
19e1: 0b 20     asl   $20
19e3: 2f 1c     bra   $1a01
19e5: 74 ce     cmp   a,$ce+x
19e7: f0 18     beq   $1a01
19e9: f5 26 02  mov   a,$0226+x
19ec: 75 28 02  cmp   a,$0228+x
19ef: f0 06     beq   $19f7
19f1: 90 04     bcc   $19f7
19f3: 3d        inc   x
19f4: 3d        inc   x
19f5: 0b 20     asl   $20
19f7: e4 06     mov   a,$06
19f9: 75 26 02  cmp   a,$0226+x
19fc: b0 03     bcs   $1a01
19fe: e8 00     mov   a,#$00
1a00: 6f        ret

1a01: fc        inc   y
1a02: f7 04     mov   a,($04)+y
1a04: 28 0f     and   a,#$0f
1a06: c4 07     mov   $07,a
1a08: f7 04     mov   a,($04)+y
1a0a: 9f        xcn   a
1a0b: 28 0f     and   a,#$0f
1a0d: c4 08     mov   $08,a
1a0f: fc        inc   y
1a10: f7 04     mov   a,($04)+y
1a12: c4 0a     mov   $0a,a
1a14: fc        inc   y
1a15: f7 04     mov   a,($04)+y
1a17: c4 0b     mov   $0b,a
1a19: 8d 00     mov   y,#$00
1a1b: 8f 00 1a  mov   $1a,#$00
1a1e: 78 60 0c  cmp   $0c,#$60
1a21: 90 17     bcc   $1a3a
1a23: 8f 00 23  mov   $23,#$00
1a26: 8f 00 2a  mov   $2a,#$00
1a29: e8 00     mov   a,#$00
1a2b: c4 19     mov   $19,a
1a2d: c4 1c     mov   $1c,a
1a2f: c4 14     mov   $14,a
1a31: c4 15     mov   $15,a
1a33: a2 18     set5  $18
1a35: 6d        push  y
1a36: 3f a1 11  call  $11a1
1a39: ee        pop   y
1a3a: f7 0a     mov   a,($0a)+y
1a3c: d4 2d     mov   $2d+x,a
1a3e: d5 70 01  mov   $0170+x,a
1a41: d5 80 01  mov   $0180+x,a
1a44: d5 e6 02  mov   $02e6+x,a
1a47: fc        inc   y
1a48: f7 0a     mov   a,($0a)+y
1a4a: d4 2e     mov   $2e+x,a
1a4c: d5 71 01  mov   $0171+x,a
1a4f: d5 81 01  mov   $0181+x,a
1a52: d5 e7 02  mov   $02e7+x,a
1a55: e8 ff     mov   a,#$ff
1a57: d4 bd     mov   $bd+x,a
1a59: d5 06 02  mov   $0206+x,a
1a5c: e8 7f     mov   a,#$7f
1a5e: d5 06 03  mov   $0306+x,a
1a61: d5 17 02  mov   $0217+x,a
1a64: e8 0a     mov   a,#$0a
1a66: d5 27 03  mov   $0327+x,a
1a69: d5 27 02  mov   $0227+x,a
1a6c: e8 00     mov   a,#$00
1a6e: d5 07 03  mov   $0307+x,a
1a71: d4 3d     mov   $3d+x,a
1a73: d5 26 03  mov   $0326+x,a
1a76: d5 c6 02  mov   $02c6+x,a
1a79: d4 4d     mov   $4d+x,a
1a7b: d4 5d     mov   $5d+x,a
1a7d: d5 30 01  mov   $0130+x,a
1a80: d5 31 01  mov   $0131+x,a
1a83: d5 40 01  mov   $0140+x,a
1a86: d5 41 01  mov   $0141+x,a
1a89: d5 50 01  mov   $0150+x,a
1a8c: d5 51 01  mov   $0151+x,a
1a8f: d5 60 01  mov   $0160+x,a
1a92: d5 61 01  mov   $0161+x,a
1a95: d5 b6 03  mov   $03b6+x,a
1a98: d5 b7 03  mov   $03b7+x,a
1a9b: d5 57 02  mov   $0257+x,a
1a9e: d4 8d     mov   $8d+x,a
1aa0: d4 7d     mov   $7d+x,a
1aa2: d5 76 03  mov   $0376+x,a
1aa5: d5 77 03  mov   $0377+x,a
1aa8: d5 56 02  mov   $0256+x,a
1aab: d5 77 02  mov   $0277+x,a
1aae: d4 6e     mov   $6e+x,a
1ab0: d4 6d     mov   $6d+x,a
1ab2: d5 c6 03  mov   $03c6+x,a
1ab5: d5 c7 03  mov   $03c7+x,a
1ab8: d5 67 02  mov   $0267+x,a
1abb: d5 76 02  mov   $0276+x,a
1abe: d5 4e 00  mov   $004e+x,a
1ac1: d5 66 02  mov   $0266+x,a
1ac4: d5 d7 02  mov   $02d7+x,a
1ac7: d5 97 02  mov   $0297+x,a
1aca: d5 b6 02  mov   $02b6+x,a
1acd: bc        inc   a
1ace: d5 d6 02  mov   $02d6+x,a
1ad1: e4 0c     mov   a,$0c
1ad3: d4 ce     mov   $ce+x,a
1ad5: e4 06     mov   a,$06
1ad7: d5 26 02  mov   $0226+x,a
1ada: e4 08     mov   a,$08
1adc: f0 05     beq   $1ae3
1ade: e8 01     mov   a,#$01
1ae0: d5 c6 02  mov   $02c6+x,a
1ae3: 6e 07 03  dbnz  $07,$1ae9
1ae6: e4 20     mov   a,$20
1ae8: 6f        ret

1ae9: 3d        inc   x
1aea: 3d        inc   x
1aeb: fc        inc   y
1aec: 5f 3a 1a  jmp   $1a3a

1aef: 00        nop
1af0: 00        nop
1af1: 04 08     or    a,$08
1af3: cd cc     mov   x,#$cc
1af5: 1e f4 00  cmp   x,$00f4
1af8: d0 f9     bne   $1af3
1afa: 2f 20     bra   $1b1c
1afc: ec f4 00  mov   y,$00f4
1aff: d0 fb     bne   $1afc
1b01: 5e f4 00  cmp   y,$00f4
1b04: d0 0f     bne   $1b15
1b06: e5 f5 00  mov   a,$00f5
1b09: cc f4 00  mov   $00f4,y
1b0c: d7 04     mov   ($04)+y,a
1b0e: fc        inc   y
1b0f: d0 f0     bne   $1b01
1b11: ab 05     inc   $05
1b13: 2f ec     bra   $1b01
1b15: 10 ea     bpl   $1b01
1b17: 5e f4 00  cmp   y,$00f4
1b1a: 10 e5     bpl   $1b01
1b1c: e5 f6 00  mov   a,$00f6
1b1f: ec f7 00  mov   y,$00f7
1b22: da 04     movw  $04,ya
1b24: e5 f4 00  mov   a,$00f4
1b27: ec f5 00  mov   y,$00f5
1b2a: c5 f4 00  mov   $00f4,a
1b2d: dd        mov   a,y
1b2e: 5d        mov   x,a
1b2f: d0 cb     bne   $1afc
1b31: e8 31     mov   a,#$31
1b33: c5 f1 00  mov   $00f1,a
1b36: 6f        ret
