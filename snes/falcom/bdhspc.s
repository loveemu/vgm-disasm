081c: cd ff     mov   x,#$ff
081e: bd        mov   sp,x
081f: e8 00     mov   a,#$00
0821: 5d        mov   x,a
0822: af        mov   (x)+,a
0823: c8 e0     cmp   x,#$e0
0825: d0 fb     bne   $0822
0827: e8 00     mov   a,#$00
0829: 5d        mov   x,a
082a: d5 00 01  mov   $0100+x,a
082d: d5 00 02  mov   $0200+x,a
0830: d5 00 03  mov   $0300+x,a
0833: d5 00 04  mov   $0400+x,a
0836: d5 00 05  mov   $0500+x,a
0839: d5 00 06  mov   $0600+x,a
083c: d5 00 07  mov   $0700+x,a
083f: 3d        inc   x
0840: d0 e8     bne   $082a
0842: 3f 3c 19  call  $193c
0845: 3f 90 19  call  $1990
0848: 3f 3b 09  call  $093b
084b: 8f 68 f6  mov   $f6,#$68
084e: 8f 09 f7  mov   $f7,#$09
0851: 3f 60 08  call  $0860
0854: 3f 93 08  call  $0893
0857: 3f fb 0e  call  $0efb
085a: 3f 59 0a  call  $0a59
085d: 5f 51 08  jmp   $0851

0860: e4 f4     mov   a,$f4
0862: 64 f4     cmp   a,$f4
0864: d0 fa     bne   $0860
0866: 44 19     eor   a,$19
0868: 10 0f     bpl   $0879
086a: e4 f4     mov   a,$f4
086c: 64 f4     cmp   a,$f4
086e: d0 fa     bne   $086a
0870: c4 19     mov   $19,a
0872: c4 f4     mov   $f4,a
0874: 08 80     or    a,#$80
0876: c5 00 02  mov   $0200,a
0879: e4 f5     mov   a,$f5
087b: 64 f5     cmp   a,$f5
087d: d0 fa     bne   $0879
087f: 44 1a     eor   a,$1a
0881: 10 0f     bpl   $0892
0883: e4 f5     mov   a,$f5
0885: 64 f5     cmp   a,$f5
0887: d0 fa     bne   $0883
0889: c4 1a     mov   $1a,a
088b: c4 f5     mov   $f5,a
088d: 08 80     or    a,#$80
088f: c5 02 02  mov   $0202,a
0892: 6f        ret

0893: e5 00 02  mov   a,$0200
0896: 30 01     bmi   $0899
0898: 6f        ret

0899: 28 7f     and   a,#$7f
089b: c5 00 02  mov   $0200,a
089e: 28 3f     and   a,#$3f
08a0: 68 37     cmp   a,#$37
08a2: 90 19     bcc   $08bd
08a4: a8 37     sbc   a,#$37
08a6: 1c        asl   a
08a7: 5d        mov   x,a
08a8: 1f ab 08  jmp   ($08ab+x)

08ab: dw $08e5
08ad: dw $08fd
08af: dw $08fc
08b1: dw $08fb
08b3: dw $08fa
08b5: dw $1b30
08b7: dw $1b30
08b9: dw $090a
08bb: dw $093b

08bd: 3f e0 08  call  $08e0
08c0: 68 ff     cmp   a,#$ff
08c2: d0 01     bne   $08c5
08c4: 6f        ret

08c5: 8f 00 17  mov   $17,#$00
08c8: 2d        push  a
08c9: c5 01 02  mov   $0201,a
08cc: e5 00 02  mov   a,$0200
08cf: 28 40     and   a,#$40
08d1: ae        pop   a
08d2: f0 03     beq   $08d7
08d4: 8f ff 17  mov   $17,#$ff
08d7: 65 e5 6a  cmp   a,$6ae5
08da: b0 03     bcs   $08df
08dc: 5f b4 09  jmp   $09b4

08df: 6f        ret

08e0: fd        mov   y,a
08e1: f6 0a 87  mov   a,$870a+y
08e4: 6f        ret

08e5: 3f 3b 09  call  $093b
08e8: 8f f0 f1  mov   $f1,#$f0
08eb: 8f 00 f4  mov   $f4,#$00
08ee: 8f 00 f5  mov   $f5,#$00
08f1: 8f 00 f6  mov   $f6,#$00
08f4: 8f 00 f7  mov   $f7,#$00
08f7: 5f c0 ff  jmp   $ffc0

08fa: 6f        ret

08fb: 6f        ret

08fc: 6f        ret

08fd: 6f        ret

08fe: e8 00     mov   a,#$00
0900: c5 10 08  mov   $0810,a
0903: 6f        ret

0904: e8 ff     mov   a,#$ff
0906: c5 10 08  mov   $0810,a
0909: 6f        ret

090a: 3f 6e 1a  call  $1a6e
090d: 3f 9c 09  call  $099c
0910: e8 1d     mov   a,#$1d
0912: c5 e1 05  mov   $05e1,a
0915: 3f 30 1b  call  $1b30
0918: e5 e1 05  mov   a,$05e1
091b: c5 e0 05  mov   $05e0,a
091e: 20        clrp
091f: e8 00     mov   a,#$00
0921: 5d        mov   x,a
0922: af        mov   (x)+,a
0923: c8 e0     cmp   x,#$e0
0925: d0 fb     bne   $0922
0927: cd ff     mov   x,#$ff
0929: bd        mov   sp,x
092a: 3f 3c 19  call  $193c
092d: 3f 67 09  call  $0967
0930: 8f 68 f6  mov   $f6,#$68
0933: 8f 09 f7  mov   $f7,#$09
0936: 42 a1     set2  $a1
0938: 5f 51 08  jmp   $0851

093b: 3f 6e 1a  call  $1a6e
093e: e8 00     mov   a,#$00
0940: c5 01 02  mov   $0201,a
0943: c5 00 02  mov   $0200,a
0946: c4 17     mov   $17,a
0948: e8 00     mov   a,#$00
094a: c4 65     mov   $65,a
094c: c4 66     mov   $66,a
094e: c4 67     mov   $67,a
0950: c4 68     mov   $68,a
0952: c5 12 08  mov   $0812,a
0955: c5 13 08  mov   $0813,a
0958: c5 14 08  mov   $0814,a
095b: c5 15 08  mov   $0815,a
095e: c4 a2     mov   $a2,a
0960: c4 a1     mov   $a1,a
0962: e8 1d     mov   a,#$1d
0964: c5 e1 05  mov   $05e1,a
0967: e8 80     mov   a,#$80
0969: c5 03 02  mov   $0203,a
096c: e8 ff     mov   a,#$ff
096e: c4 3f     mov   $3f,a
0970: c5 04 02  mov   $0204,a
0973: bc        inc   a
0974: c4 34     mov   $34,a
0976: c4 30     mov   $30,a
0978: c4 20     mov   $20,a
097a: c4 21     mov   $21,a
097c: c4 22     mov   $22,a
097e: c4 23     mov   $23,a
0980: c4 24     mov   $24,a
0982: c4 25     mov   $25,a
0984: c4 26     mov   $26,a
0986: c4 27     mov   $27,a
0988: c4 3c     mov   $3c,a
098a: c4 3d     mov   $3d,a
098c: c4 9d     mov   $9d,a
098e: c4 9e     mov   $9e,a
0990: c4 9f     mov   $9f,a
0992: c4 a0     mov   $a0,a
0994: cd 0f     mov   x,#$0f
0996: d5 15 02  mov   $0215+x,a
0999: 1d        dec   x
099a: 10 fa     bpl   $0996
099c: cd 07     mov   x,#$07
099e: 7d        mov   a,x
099f: 9f        xcn   a
09a0: 2d        push  a
09a1: 08 07     or    a,#$07
09a3: c4 f2     mov   $f2,a
09a5: 8f 9e f3  mov   $f3,#$9e
09a8: ae        pop   a
09a9: 08 05     or    a,#$05
09ab: c4 f2     mov   $f2,a
09ad: 8f 00 f3  mov   $f3,#$00
09b0: 1d        dec   x
09b1: 10 eb     bpl   $099e
09b3: 6f        ret

09b4: 2d        push  a
09b5: 3f 67 09  call  $0967
09b8: 3f 5e 19  call  $195e
09bb: 3f 6e 1a  call  $1a6e
09be: e8 00     mov   a,#$00
09c0: c5 a5 02  mov   $02a5,a
09c3: c5 a6 02  mov   $02a6,a
09c6: c5 a7 02  mov   $02a7,a
09c9: c5 a8 02  mov   $02a8,a
09cc: c5 a9 02  mov   $02a9,a
09cf: c5 ab 02  mov   $02ab,a
09d2: c5 aa 02  mov   $02aa,a
09d5: 9c        dec   a
09d6: c4 3f     mov   $3f,a
09d8: bc        inc   a
09d9: c4 3c     mov   $3c,a
09db: c4 3d     mov   $3d,a
09dd: ae        pop   a
09de: 1c        asl   a
09df: 5d        mov   x,a
09e0: f5 e6 6a  mov   a,$6ae6+x
09e3: c4 02     mov   $02,a
09e5: f5 e7 6a  mov   a,$6ae7+x
09e8: c4 03     mov   $03,a
09ea: 8d 00     mov   y,#$00
09ec: cd 00     mov   x,#$00
09ee: 8d 00     mov   y,#$00
09f0: f7 02     mov   a,($02)+y
09f2: c4 04     mov   $04,a
09f4: 3a 02     incw  $02
09f6: f7 02     mov   a,($02)+y
09f8: 68 ff     cmp   a,#$ff
09fa: f0 3c     beq   $0a38
09fc: c4 05     mov   $05,a
09fe: 3a 02     incw  $02
0a00: e4 03     mov   a,$03
0a02: fd        mov   y,a
0a03: d5 15 02  mov   $0215+x,a
0a06: e4 02     mov   a,$02
0a08: d5 05 02  mov   $0205+x,a
0a0b: 7a 04     addw  ya,$04
0a0d: da 02     movw  $02,ya
0a0f: 40        setp
0a10: e8 00     mov   a,#$00
0a12: d4 06     mov   $06+x,a
0a14: d4 16     mov   $16+x,a
0a16: d4 26     mov   $26+x,a
0a18: d4 36     mov   $36+x,a
0a1a: 20        clrp
0a1b: d5 45 02  mov   $0245+x,a
0a1e: d5 35 02  mov   $0235+x,a
0a21: d5 55 02  mov   $0255+x,a
0a24: d5 25 02  mov   $0225+x,a
0a27: d5 75 02  mov   $0275+x,a
0a2a: d5 85 02  mov   $0285+x,a
0a2d: d5 95 02  mov   $0295+x,a
0a30: 3d        inc   x
0a31: c8 10     cmp   x,#$10
0a33: d0 b9     bne   $09ee
0a35: 5f 4a 0a  jmp   $0a4a

0a38: e8 00     mov   a,#$00
0a3a: d5 15 02  mov   $0215+x,a
0a3d: d5 05 02  mov   $0205+x,a
0a40: 9c        dec   a
0a41: d5 35 02  mov   $0235+x,a
0a44: bc        inc   a
0a45: 3d        inc   x
0a46: c8 10     cmp   x,#$10
0a48: d0 ee     bne   $0a38
0a4a: e8 00     mov   a,#$00
0a4c: c5 ac 02  mov   $02ac,a
0a4f: 9c        dec   a
0a50: c5 04 02  mov   $0204,a
0a53: c5 03 02  mov   $0203,a
0a56: 02 a1     set0  $a1
0a58: 6f        ret

0a59: 60        clrc
0a5a: e4 fe     mov   a,$fe
0a5c: 28 0f     and   a,#$0f
0a5e: c4 6a     mov   $6a,a
0a60: d0 04     bne   $0a66
0a62: 3f 32 0b  call  $0b32
0a65: 6f        ret

0a66: ab 63     inc   $63
0a68: 13 a1 2f  bbc0  $a1,$0a9a
0a6b: 60        clrc
0a6c: e5 13 08  mov   a,$0813
0a6f: 28 80     and   a,#$80
0a71: d0 12     bne   $0a85
0a73: e5 12 08  mov   a,$0812
0a76: 84 65     adc   a,$65
0a78: c4 65     mov   $65,a
0a7a: e5 13 08  mov   a,$0813
0a7d: 84 66     adc   a,$66
0a7f: 90 17     bcc   $0a98
0a81: e8 ff     mov   a,#$ff
0a83: 2f 13     bra   $0a98
0a85: e5 12 08  mov   a,$0812
0a88: 84 65     adc   a,$65
0a8a: c4 65     mov   $65,a
0a8c: e5 13 08  mov   a,$0813
0a8f: 84 66     adc   a,$66
0a91: b0 05     bcs   $0a98
0a93: e8 00     mov   a,#$00
0a95: 3f 3b 09  call  $093b
0a98: c4 66     mov   $66,a
0a9a: e5 03 02  mov   a,$0203
0a9d: 60        clrc
0a9e: 85 04 02  adc   a,$0204
0aa1: c5 04 02  mov   $0204,a
0aa4: 90 57     bcc   $0afd
0aa6: e8 00     mov   a,#$00
0aa8: c4 16     mov   $16,a
0aaa: c4 6c     mov   $6c,a
0aac: cd 0f     mov   x,#$0f
0aae: f5 15 02  mov   a,$0215+x
0ab1: f0 0b     beq   $0abe
0ab3: 3f 07 0b  call  $0b07
0ab6: f5 15 02  mov   a,$0215+x
0ab9: f0 03     beq   $0abe
0abb: 8f ff 16  mov   $16,#$ff
0abe: 1d        dec   x
0abf: 10 ed     bpl   $0aae
0ac1: 3f d8 17  call  $17d8
0ac4: 60        clrc
0ac5: e8 01     mov   a,#$01
0ac7: 84 9d     adc   a,$9d
0ac9: c4 9d     mov   $9d,a
0acb: e4 9e     mov   a,$9e
0acd: 88 00     adc   a,#$00
0acf: c4 9e     mov   $9e,a
0ad1: e4 9f     mov   a,$9f
0ad3: 88 00     adc   a,#$00
0ad5: c4 9f     mov   $9f,a
0ad7: e4 a0     mov   a,$a0
0ad9: 88 00     adc   a,#$00
0adb: c4 a0     mov   $a0,a
0add: e4 18     mov   a,$18
0adf: 10 07     bpl   $0ae8
0ae1: 28 7f     and   a,#$7f
0ae3: c4 18     mov   $18,a
0ae5: 5f f9 0a  jmp   $0af9

0ae8: e4 16     mov   a,$16
0aea: d0 11     bne   $0afd
0aec: 12 a1     clr0  $a1
0aee: e4 17     mov   a,$17
0af0: f0 0b     beq   $0afd
0af2: 02 a1     set0  $a1
0af4: e5 01 02  mov   a,$0201
0af7: 28 3f     and   a,#$3f
0af9: 3f de 09  call  $09de
0afc: 6f        ret

0afd: 3f 91 0f  call  $0f91
0b00: 3f 96 19  call  $1996
0b03: 3f 32 0b  call  $0b32
0b06: 6f        ret

0b07: f5 25 02  mov   a,$0225+x
0b0a: f0 06     beq   $0b12
0b0c: 9c        dec   a
0b0d: d5 25 02  mov   $0225+x,a
0b10: d0 0f     bne   $0b21
0b12: 4d        push  x
0b13: 3f d0 13  call  $13d0
0b16: ce        pop   x
0b17: f5 15 02  mov   a,$0215+x
0b1a: f0 05     beq   $0b21
0b1c: f5 25 02  mov   a,$0225+x
0b1f: f0 f1     beq   $0b12
0b21: 6f        ret

0b22: e4 00     mov   a,$00
0b24: 68 a0     cmp   a,#$a0
0b26: 90 01     bcc   $0b29
0b28: 6f        ret

0b29: 28 0f     and   a,#$0f
0b2b: 5d        mov   x,a
0b2c: e4 02     mov   a,$02
0b2e: 3f b2 0e  call  $0eb2
0b31: 6f        ret

0b32: 3f 3b 0e  call  $0e3b
0b35: e4 3f     mov   a,$3f
0b37: 48 ff     eor   a,#$ff
0b39: 24 3d     and   a,$3d
0b3b: c4 12     mov   $12,a
0b3d: e4 30     mov   a,$30
0b3f: 04 40     or    a,$40
0b41: c4 13     mov   $13,a
0b43: cd 07     mov   x,#$07
0b45: e4 3c     mov   a,$3c
0b47: d8 15     mov   $15,x
0b49: 0b 13     asl   $13
0b4b: 90 05     bcc   $0b52
0b4d: 1c        asl   a
0b4e: 2d        push  a
0b4f: 5f 6d 0b  jmp   $0b6d

0b52: 1c        asl   a
0b53: 2d        push  a
0b54: b0 0c     bcs   $0b62
0b56: 7d        mov   a,x
0b57: 9f        xcn   a
0b58: 08 08     or    a,#$08
0b5a: c4 f2     mov   $f2,a
0b5c: e4 f3     mov   a,$f3
0b5e: 68 02     cmp   a,#$02
0b60: 90 0b     bcc   $0b6d
0b62: 3f 92 0b  call  $0b92
0b65: 3f e6 0c  call  $0ce6
0b68: 3f c4 0b  call  $0bc4
0b6b: f8 15     mov   x,$15
0b6d: f4 41     mov   a,$41+x
0b6f: 28 0f     and   a,#$0f
0b71: fd        mov   y,a
0b72: f6 2f 03  mov   a,$032f+y
0b75: 68 01     cmp   a,#$01
0b77: 2b 33     rol   $33
0b79: ae        pop   a
0b7a: 0b 14     asl   $14
0b7c: 0b 12     asl   $12
0b7e: 1d        dec   x
0b7f: 10 c6     bpl   $0b47
0b81: 29 30 34  and   ($34),($30)
0b84: e4 30     mov   a,$30
0b86: 48 ff     eor   a,#$ff
0b88: 24 33     and   a,$33
0b8a: 04 34     or    a,$34
0b8c: c4 33     mov   $33,a
0b8e: 3f 62 0e  call  $0e62
0b91: 6f        ret

0b92: f4 51     mov   a,$51+x
0b94: c4 61     mov   $61,a
0b96: f4 59     mov   a,$59+x
0b98: c4 62     mov   $62,a
0b9a: 8d 0d     mov   y,#$0d
0b9c: f7 61     mov   a,($61)+y
0b9e: c4 0e     mov   $0e,a
0ba0: 8d 0e     mov   y,#$0e
0ba2: f7 61     mov   a,($61)+y
0ba4: c4 0f     mov   $0f,a
0ba6: e4 12     mov   a,$12
0ba8: 10 01     bpl   $0bab
0baa: 6f        ret

0bab: 8d 01     mov   y,#$01
0bad: f7 61     mov   a,($61)+y
0baf: c4 0c     mov   $0c,a
0bb1: 8d 00     mov   y,#$00
0bb3: f7 61     mov   a,($61)+y
0bb5: c4 0d     mov   $0d,a
0bb7: 8d 08     mov   y,#$08
0bb9: f7 61     mov   a,($61)+y
0bbb: c4 10     mov   $10,a
0bbd: 8d 07     mov   y,#$07
0bbf: f7 61     mov   a,($61)+y
0bc1: c4 11     mov   $11,a
0bc3: 6f        ret

0bc4: 3f 68 0c  call  $0c68
0bc7: f5 67 1d  mov   a,$1d67+x
0bca: 2d        push  a
0bcb: f4 41     mov   a,$41+x
0bcd: 5d        mov   x,a
0bce: 28 70     and   a,#$70
0bd0: 9f        xcn   a
0bd1: fd        mov   y,a
0bd2: fc        inc   y
0bd3: f6 5f 0c  mov   a,$0c5f+y
0bd6: fd        mov   y,a
0bd7: e4 66     mov   a,$66
0bd9: cf        mul   ya
0bda: 7d        mov   a,x
0bdb: 28 0f     and   a,#$0f
0bdd: 5d        mov   x,a
0bde: 60        clrc
0bdf: f5 ef 02  mov   a,$02ef+x
0be2: 95 ff 03  adc   a,$03ff+x
0be5: cf        mul   ya
0be6: cb 0c     mov   $0c,y
0be8: d8 0d     mov   $0d,x
0bea: f5 1f 03  mov   a,$031f+x
0bed: 2d        push  a
0bee: 48 ff     eor   a,#$ff
0bf0: 28 7f     and   a,#$7f
0bf2: 68 40     cmp   a,#$40
0bf4: 90 02     bcc   $0bf8
0bf6: e8 3f     mov   a,#$3f
0bf8: 1c        asl   a
0bf9: c4 04     mov   $04,a
0bfb: ae        pop   a
0bfc: 68 40     cmp   a,#$40
0bfe: 90 02     bcc   $0c02
0c00: e8 3f     mov   a,#$3f
0c02: 1c        asl   a
0c03: c4 05     mov   $05,a
0c05: e5 10 08  mov   a,$0810
0c08: f0 0a     beq   $0c14
0c0a: 60        clrc
0c0b: e4 04     mov   a,$04
0c0d: 84 05     adc   a,$05
0c0f: 5c        lsr   a
0c10: c4 04     mov   $04,a
0c12: c4 05     mov   $05,a
0c14: e4 04     mov   a,$04
0c16: cf        mul   ya
0c17: e8 00     mov   a,#$00
0c19: 04 02     or    a,$02
0c1b: da f2     movw  $f2,ya
0c1d: e4 05     mov   a,$05
0c1f: eb 0c     mov   y,$0c
0c21: cf        mul   ya
0c22: ab f2     inc   $f2
0c24: cb f3     mov   $f3,y
0c26: f8 0d     mov   x,$0d
0c28: ab f2     inc   $f2
0c2a: fa 00 f3  mov   ($f3),($00)
0c2d: ab f2     inc   $f2
0c2f: fa 01 f3  mov   ($f3),($01)
0c32: ae        pop   a
0c33: 24 3c     and   a,$3c
0c35: d0 01     bne   $0c38
0c37: 6f        ret

0c38: ab f2     inc   $f2
0c3a: 8d 0c     mov   y,#$0c
0c3c: f7 61     mov   a,($61)+y
0c3e: 5d        mov   x,a
0c3f: f5 8a 88  mov   a,$888a+x
0c42: c4 f3     mov   $f3,a
0c44: f8 0d     mov   x,$0d
0c46: ab f2     inc   $f2
0c48: 8d 05     mov   y,#$05
0c4a: f7 61     mov   a,($61)+y
0c4c: c4 f3     mov   $f3,a
0c4e: ab f2     inc   $f2
0c50: 8d 04     mov   y,#$04
0c52: f7 61     mov   a,($61)+y
0c54: c4 f3     mov   $f3,a
0c56: ab f2     inc   $f2
0c58: 8d 06     mov   y,#$06
0c5a: f7 61     mov   a,($61)+y
0c5c: c4 f3     mov   $f3,a
0c5e: 6f        ret

0c5f: 00        nop
0c60: 40        setp
0c61: 62 84     set3  $84
0c63: a6        sbc   a,(x)
0c64: b8 ca ec  sbc   $ec,#$ca
0c67: ff        stop
0c68: 4d        push  x
0c69: f4 49     mov   a,$49+x
0c6b: c4 00     mov   $00,a
0c6d: 7d        mov   a,x
0c6e: fd        mov   y,a
0c6f: 9f        xcn   a
0c70: c4 02     mov   $02,a
0c72: f4 41     mov   a,$41+x
0c74: 28 0f     and   a,#$0f
0c76: 5d        mov   x,a
0c77: 60        clrc
0c78: e4 0e     mov   a,$0e
0c7a: 96 df 03  adc   a,$03df+y
0c7d: c4 0e     mov   $0e,a
0c7f: e4 0f     mov   a,$0f
0c81: 96 ef 03  adc   a,$03ef+y
0c84: c4 0f     mov   $0f,a
0c86: 80        setc
0c87: f5 cf 02  mov   a,$02cf+x
0c8a: a8 40     sbc   a,#$40
0c8c: c4 04     mov   $04,a
0c8e: 68 80     cmp   a,#$80
0c90: a4 04     sbc   a,$04
0c92: 48 ff     eor   a,#$ff
0c94: c4 05     mov   $05,a
0c96: f5 cf 03  mov   a,$03cf+x
0c99: fd        mov   y,a
0c9a: f5 bf 03  mov   a,$03bf+x
0c9d: 7a 0e     addw  ya,$0e
0c9f: 7a 04     addw  ya,$04
0ca1: c4 04     mov   $04,a
0ca3: dd        mov   a,y
0ca4: 60        clrc
0ca5: 84 00     adc   a,$00
0ca7: 8d 00     mov   y,#$00
0ca9: cd 0c     mov   x,#$0c
0cab: 9e        div   ya,x
0cac: 2d        push  a
0cad: dd        mov   a,y
0cae: 5d        mov   x,a
0caf: f5 7b 1d  mov   a,$1d7b+x
0cb2: eb 04     mov   y,$04
0cb4: cf        mul   ya
0cb5: cb 0c     mov   $0c,y
0cb7: 8f 00 0d  mov   $0d,#$00
0cba: f5 6f 1d  mov   a,$1d6f+x
0cbd: eb 04     mov   y,$04
0cbf: cf        mul   ya
0cc0: 7a 0c     addw  ya,$0c
0cc2: 60        clrc
0cc3: 95 93 1d  adc   a,$1d93+x
0cc6: c4 00     mov   $00,a
0cc8: dd        mov   a,y
0cc9: 95 87 1d  adc   a,$1d87+x
0ccc: c4 01     mov   $01,a
0cce: ae        pop   a
0ccf: 48 ff     eor   a,#$ff
0cd1: 80        setc
0cd2: 88 06     adc   a,#$06
0cd4: f0 0e     beq   $0ce4
0cd6: 68 06     cmp   a,#$06
0cd8: b0 0a     bcs   $0ce4
0cda: fd        mov   y,a
0cdb: e4 01     mov   a,$01
0cdd: 5c        lsr   a
0cde: 6b 00     ror   $00
0ce0: fe fb     dbnz  y,$0cdd
0ce2: c4 01     mov   $01,a
0ce4: ce        pop   x
0ce5: 6f        ret

0ce6: e4 12     mov   a,$12
0ce8: 10 01     bpl   $0ceb
0cea: 6f        ret

0ceb: 7d        mov   a,x
0cec: fd        mov   y,a
0ced: f4 41     mov   a,$41+x
0cef: 28 0f     and   a,#$0f
0cf1: 5d        mov   x,a
0cf2: 6d        push  y
0cf3: 3f c4 0d  call  $0dc4
0cf6: ee        pop   y
0cf7: 3f 2d 0d  call  $0d2d
0cfa: 3f 00 0d  call  $0d00
0cfd: f8 15     mov   x,$15
0cff: 6f        ret

0d00: f5 bf 02  mov   a,$02bf+x
0d03: bc        inc   a
0d04: 1c        asl   a
0d05: fd        mov   y,a
0d06: f5 6f 03  mov   a,$036f+x
0d09: 10 21     bpl   $0d2c
0d0b: 28 7f     and   a,#$7f
0d0d: d5 6f 03  mov   $036f+x,a
0d10: 80        setc
0d11: a8 40     sbc   a,#$40
0d13: 1c        asl   a
0d14: 10 0e     bpl   $0d24
0d16: 48 ff     eor   a,#$ff
0d18: bc        inc   a
0d19: cf        mul   ya
0d1a: da 04     movw  $04,ya
0d1c: e8 00     mov   a,#$00
0d1e: fd        mov   y,a
0d1f: 9a 04     subw  ya,$04
0d21: 5f 25 0d  jmp   $0d25

0d24: cf        mul   ya
0d25: d5 bf 03  mov   $03bf+x,a
0d28: dd        mov   a,y
0d29: d5 cf 03  mov   $03cf+x,a
0d2c: 6f        ret

0d2d: e4 0c     mov   a,$0c
0d2f: d0 03     bne   $0d34
0d31: 5f b7 0d  jmp   $0db7

0d34: e4 6a     mov   a,$6a
0d36: d0 03     bne   $0d3b
0d38: 5f b6 0d  jmp   $0db6

0d3b: e4 63     mov   a,$63
0d3d: 28 01     and   a,#$01
0d3f: d0 03     bne   $0d44
0d41: 5f b6 0d  jmp   $0db6

0d44: f5 af 02  mov   a,$02af+x
0d47: d0 2d     bne   $0d76
0d49: f6 17 04  mov   a,$0417+y
0d4c: f0 07     beq   $0d55
0d4e: 9c        dec   a
0d4f: d6 17 04  mov   $0417+y,a
0d52: 5f b7 0d  jmp   $0db7

0d55: f6 1f 04  mov   a,$041f+y
0d58: f0 1c     beq   $0d76
0d5a: 60        clrc
0d5b: f6 47 04  mov   a,$0447+y
0d5e: 96 2f 04  adc   a,$042f+y
0d61: d6 47 04  mov   $0447+y,a
0d64: f6 3f 04  mov   a,$043f+y
0d67: 96 27 04  adc   a,$0427+y
0d6a: d6 3f 04  mov   $043f+y,a
0d6d: f6 1f 04  mov   a,$041f+y
0d70: 9c        dec   a
0d71: d6 1f 04  mov   $041f+y,a
0d74: d0 05     bne   $0d7b
0d76: e4 0c     mov   a,$0c
0d78: d6 3f 04  mov   $043f+y,a
0d7b: 60        clrc
0d7c: f6 0f 04  mov   a,$040f+y
0d7f: 84 0d     adc   a,$0d
0d81: d6 0f 04  mov   $040f+y,a
0d84: c4 06     mov   $06,a
0d86: 1c        asl   a
0d87: 1c        asl   a
0d88: 90 02     bcc   $0d8c
0d8a: 48 ff     eor   a,#$ff
0d8c: 2d        push  a
0d8d: f6 3f 04  mov   a,$043f+y
0d90: ee        pop   y
0d91: 68 f1     cmp   a,#$f1
0d93: 90 06     bcc   $0d9b
0d95: 28 0f     and   a,#$0f
0d97: cf        mul   ya
0d98: 5f 9f 0d  jmp   $0d9f

0d9b: cf        mul   ya
0d9c: dd        mov   a,y
0d9d: 8d 00     mov   y,#$00
0d9f: aa 06 e0  mov1  c,$0006,7
0da2: 90 07     bcc   $0dab
0da4: da 06     movw  $06,ya
0da6: 8d 00     mov   y,#$00
0da8: dd        mov   a,y
0da9: 9a 06     subw  ya,$06
0dab: 4d        push  x
0dac: f8 15     mov   x,$15
0dae: d5 df 03  mov   $03df+x,a
0db1: dd        mov   a,y
0db2: d5 ef 03  mov   $03ef+x,a
0db5: ce        pop   x
0db6: 6f        ret

0db7: 4d        push  x
0db8: f8 15     mov   x,$15
0dba: e8 00     mov   a,#$00
0dbc: d5 df 03  mov   $03df+x,a
0dbf: d5 ef 03  mov   $03ef+x,a
0dc2: ce        pop   x
0dc3: 6f        ret

0dc4: e4 10     mov   a,$10
0dc6: f0 69     beq   $0e31
0dc8: e4 6a     mov   a,$6a
0dca: f0 65     beq   $0e31
0dcc: e4 63     mov   a,$63
0dce: 28 01     and   a,#$01
0dd0: d0 5f     bne   $0e31
0dd2: f5 af 02  mov   a,$02af+x
0dd5: d0 2d     bne   $0e04
0dd7: f6 57 04  mov   a,$0457+y
0dda: f0 07     beq   $0de3
0ddc: 9c        dec   a
0ddd: d6 57 04  mov   $0457+y,a
0de0: 5f 31 0e  jmp   $0e31

0de3: f6 5f 04  mov   a,$045f+y
0de6: f0 1c     beq   $0e04
0de8: 60        clrc
0de9: f6 87 04  mov   a,$0487+y
0dec: 96 6f 04  adc   a,$046f+y
0def: d6 87 04  mov   $0487+y,a
0df2: f6 7f 04  mov   a,$047f+y
0df5: 96 67 04  adc   a,$0467+y
0df8: d6 7f 04  mov   $047f+y,a
0dfb: f6 5f 04  mov   a,$045f+y
0dfe: 9c        dec   a
0dff: d6 5f 04  mov   $045f+y,a
0e02: d0 05     bne   $0e09
0e04: e4 10     mov   a,$10
0e06: d6 7f 04  mov   $047f+y,a
0e09: 60        clrc
0e0a: f6 4f 04  mov   a,$044f+y
0e0d: 84 11     adc   a,$11
0e0f: d6 4f 04  mov   $044f+y,a
0e12: c4 06     mov   $06,a
0e14: 1c        asl   a
0e15: 1c        asl   a
0e16: 90 02     bcc   $0e1a
0e18: 48 ff     eor   a,#$ff
0e1a: 2d        push  a
0e1b: f6 7f 04  mov   a,$047f+y
0e1e: ee        pop   y
0e1f: cf        mul   ya
0e20: dd        mov   a,y
0e21: aa 06 e0  mov1  c,$0006,7
0e24: 90 03     bcc   $0e29
0e26: 48 ff     eor   a,#$ff
0e28: bc        inc   a
0e29: 4d        push  x
0e2a: f8 15     mov   x,$15
0e2c: d5 ff 03  mov   $03ff+x,a
0e2f: ce        pop   x
0e30: 6f        ret

0e31: 4d        push  x
0e32: f8 15     mov   x,$15
0e34: e8 00     mov   a,#$00
0e36: d5 ff 03  mov   $03ff+x,a
0e39: ce        pop   x
0e3a: 6f        ret

0e3b: e4 30     mov   a,$30
0e3d: 48 ff     eor   a,#$ff
0e3f: 2d        push  a
0e40: 24 3d     and   a,$3d
0e42: 04 31     or    a,$31
0e44: c4 3e     mov   $3e,a
0e46: ae        pop   a
0e47: 24 3f     and   a,$3f
0e49: 04 32     or    a,$32
0e4b: c4 40     mov   $40,a
0e4d: c4 12     mov   $12,a
0e4f: cd 07     mov   x,#$07
0e51: 0b 12     asl   $12
0e53: 90 09     bcc   $0e5e
0e55: 7d        mov   a,x
0e56: 9f        xcn   a
0e57: 08 07     or    a,#$07
0e59: c4 f2     mov   $f2,a
0e5b: 8f 9e f3  mov   $f3,#$9e
0e5e: 1d        dec   x
0e5f: 10 f0     bpl   $0e51
0e61: 6f        ret

0e62: 8f 4d f2  mov   $f2,#$4d
0e65: fa 33 f3  mov   ($f3),($33)
0e68: e4 40     mov   a,$40
0e6a: 48 ff     eor   a,#$ff
0e6c: 24 3e     and   a,$3e
0e6e: 8d 4c     mov   y,#$4c
0e70: 3f 08 1b  call  $1b08
0e73: e4 3f     mov   a,$3f
0e75: 48 ff     eor   a,#$ff
0e77: 24 3d     and   a,$3d
0e79: 4e 3d 00  tclr1 $003d
0e7c: e4 32     mov   a,$32
0e7e: 48 ff     eor   a,#$ff
0e80: 24 31     and   a,$31
0e82: 4e 31 00  tclr1 $0031
0e85: 8f 00 3f  mov   $3f,#$00
0e88: 8f 00 32  mov   $32,#$00
0e8b: 6f        ret

0e8c: 28 7f     and   a,#$7f
0e8e: 3f 9c 0e  call  $0e9c
0e91: e4 12     mov   a,$12
0e93: d5 9f 03  mov   $039f+x,a
0e96: e4 13     mov   a,$13
0e98: d5 af 03  mov   $03af+x,a
0e9b: 6f        ret

0e9c: fd        mov   y,a
0e9d: f6 0a 88  mov   a,$880a+y
0ea0: 68 ff     cmp   a,#$ff
0ea2: d0 01     bne   $0ea5
0ea4: bc        inc   a
0ea5: 1c        asl   a
0ea6: fd        mov   y,a
0ea7: f6 a6 1d  mov   a,$1da6+y
0eaa: c4 12     mov   $12,a
0eac: f6 a7 1d  mov   a,$1da7+y
0eaf: c4 13     mov   $13,a
0eb1: 6f        ret

0eb2: 2d        push  a
0eb3: f5 9f 03  mov   a,$039f+x
0eb6: c4 0e     mov   $0e,a
0eb8: f5 af 03  mov   a,$03af+x
0ebb: c4 0f     mov   $0f,a
0ebd: ae        pop   a
0ebe: 8d 0f     mov   y,#$0f
0ec0: 77 0e     cmp   a,($0e)+y
0ec2: 90 26     bcc   $0eea
0ec4: 8d 1f     mov   y,#$1f
0ec6: 77 0e     cmp   a,($0e)+y
0ec8: 90 20     bcc   $0eea
0eca: 8d 2f     mov   y,#$2f
0ecc: 77 0e     cmp   a,($0e)+y
0ece: 90 1a     bcc   $0eea
0ed0: 8d 3f     mov   y,#$3f
0ed2: 77 0e     cmp   a,($0e)+y
0ed4: 90 14     bcc   $0eea
0ed6: 8d 4f     mov   y,#$4f
0ed8: 77 0e     cmp   a,($0e)+y
0eda: 90 0e     bcc   $0eea
0edc: 8d 5f     mov   y,#$5f
0ede: 77 0e     cmp   a,($0e)+y
0ee0: 90 08     bcc   $0eea
0ee2: 8d 6f     mov   y,#$6f
0ee4: 77 0e     cmp   a,($0e)+y
0ee6: 90 02     bcc   $0eea
0ee8: 8d 7f     mov   y,#$7f
0eea: dd        mov   a,y
0eeb: 28 f0     and   a,#$f0
0eed: 60        clrc
0eee: 84 0e     adc   a,$0e
0ef0: d5 7f 03  mov   $037f+x,a
0ef3: e8 00     mov   a,#$00
0ef5: 84 0f     adc   a,$0f
0ef7: d5 8f 03  mov   $038f+x,a
0efa: 6f        ret

0efb: e8 ff     mov   a,#$ff
0efd: c4 06     mov   $06,a
0eff: e5 02 02  mov   a,$0202
0f02: 30 01     bmi   $0f05
0f04: 6f        ret

0f05: 28 7f     and   a,#$7f
0f07: c5 02 02  mov   $0202,a
0f0a: fd        mov   y,a
0f0b: f6 8a 87  mov   a,$878a+y
0f0e: 68 ff     cmp   a,#$ff
0f10: d0 01     bne   $0f13
0f12: 6f        ret

0f13: 65 d1 5b  cmp   a,$5bd1
0f16: 90 01     bcc   $0f19
0f18: 6f        ret

0f19: 1c        asl   a
0f1a: fd        mov   y,a
0f1b: f6 d2 5b  mov   a,$5bd2+y
0f1e: c4 04     mov   $04,a
0f20: f6 d3 5b  mov   a,$5bd3+y
0f23: c4 05     mov   $05,a
0f25: 8d 00     mov   y,#$00
0f27: f7 04     mov   a,($04)+y
0f29: c4 07     mov   $07,a
0f2b: fc        inc   y
0f2c: f7 04     mov   a,($04)+y
0f2e: 68 08     cmp   a,#$08
0f30: 90 02     bcc   $0f34
0f32: e8 07     mov   a,#$07
0f34: e5 02 02  mov   a,$0202
0f37: 08 80     or    a,#$80
0f39: cd 00     mov   x,#$00
0f3b: 74 28     cmp   a,$28+x
0f3d: f0 17     beq   $0f56
0f3f: 3d        inc   x
0f40: c8 08     cmp   x,#$08
0f42: d0 f7     bne   $0f3b
0f44: 8d 00     mov   y,#$00
0f46: cd 07     mov   x,#$07
0f48: e8 ff     mov   a,#$ff
0f4a: 3e 06     cmp   x,$06
0f4c: f0 04     beq   $0f52
0f4e: f4 20     mov   a,$20+x
0f50: f0 04     beq   $0f56
0f52: 1d        dec   x
0f53: 10 f5     bpl   $0f4a
0f55: 3d        inc   x
0f56: e4 07     mov   a,$07
0f58: d4 20     mov   $20+x,a
0f5a: e5 02 02  mov   a,$0202
0f5d: 08 80     or    a,#$80
0f5f: d4 28     mov   $28+x,a
0f61: 60        clrc
0f62: e4 04     mov   a,$04
0f64: 88 02     adc   a,#$02
0f66: d5 8f 04  mov   $048f+x,a
0f69: e4 05     mov   a,$05
0f6b: 88 00     adc   a,#$00
0f6d: d5 97 04  mov   $0497+x,a
0f70: f5 67 1d  mov   a,$1d67+x
0f73: 2d        push  a
0f74: 04 30     or    a,$30
0f76: c4 30     mov   $30,a
0f78: ae        pop   a
0f79: 48 ff     eor   a,#$ff
0f7b: 24 34     and   a,$34
0f7d: c4 34     mov   $34,a
0f7f: e8 00     mov   a,#$00
0f81: d5 67 05  mov   $0567+x,a
0f84: d5 5f 05  mov   $055f+x,a
0f87: c4 67     mov   $67,a
0f89: c4 68     mov   $68,a
0f8b: 22 a1     set1  $a1
0f8d: 3f 66 13  call  $1366
0f90: 6f        ret

0f91: 33 a1 2f  bbc1  $a1,$0fc3
0f94: 60        clrc
0f95: e5 15 08  mov   a,$0815
0f98: 28 80     and   a,#$80
0f9a: d0 12     bne   $0fae
0f9c: e5 14 08  mov   a,$0814
0f9f: 84 67     adc   a,$67
0fa1: c4 67     mov   $67,a
0fa3: e5 15 08  mov   a,$0815
0fa6: 84 68     adc   a,$68
0fa8: 90 17     bcc   $0fc1
0faa: e8 ff     mov   a,#$ff
0fac: 2f 13     bra   $0fc1
0fae: e5 14 08  mov   a,$0814
0fb1: 84 67     adc   a,$67
0fb3: c4 67     mov   $67,a
0fb5: e5 15 08  mov   a,$0815
0fb8: 84 68     adc   a,$68
0fba: b0 05     bcs   $0fc1
0fbc: 3f d7 0f  call  $0fd7
0fbf: e8 00     mov   a,#$00
0fc1: c4 68     mov   $68,a
0fc3: 3f 7c 13  call  $137c
0fc6: e4 30     mov   a,$30
0fc8: cd 07     mov   x,#$07
0fca: 1c        asl   a
0fcb: 90 06     bcc   $0fd3
0fcd: 3f 04 10  call  $1004
0fd0: 3f ee 0f  call  $0fee
0fd3: 1d        dec   x
0fd4: 10 f4     bpl   $0fca
0fd6: 6f        ret

0fd7: e4 30     mov   a,$30
0fd9: cd 07     mov   x,#$07
0fdb: 1c        asl   a
0fdc: 90 0c     bcc   $0fea
0fde: 2d        push  a
0fdf: e8 9f     mov   a,#$9f
0fe1: d5 8f 04  mov   $048f+x,a
0fe4: e8 1d     mov   a,#$1d
0fe6: d5 97 04  mov   $0497+x,a
0fe9: ae        pop   a
0fea: 1d        dec   x
0feb: 10 ee     bpl   $0fdb
0fed: 6f        ret

0fee: 2d        push  a
0fef: 4d        push  x
0ff0: 7d        mov   a,x
0ff1: 9f        xcn   a
0ff2: c4 00     mov   $00,a
0ff4: f5 cf 04  mov   a,$04cf+x
0ff7: c4 06     mov   $06,a
0ff9: f5 d7 04  mov   a,$04d7+x
0ffc: c4 07     mov   $07,a
0ffe: 3f 92 13  call  $1392
1001: ce        pop   x
1002: ae        pop   a
1003: 6f        ret

1004: 2d        push  a
1005: 4d        push  x
1006: 8f 09 f2  mov   $f2,#$09
1009: e4 6b     mov   a,$6b
100b: 84 f3     adc   a,$f3
100d: c4 6b     mov   $6b,a
100f: 7d        mov   a,x
1010: 9f        xcn   a
1011: c4 00     mov   $00,a
1013: 7d        mov   a,x
1014: c4 12     mov   $12,a
1016: 1c        asl   a
1017: 1c        asl   a
1018: 1c        asl   a
1019: 84 12     adc   a,$12
101b: c4 12     mov   $12,a
101d: f5 8f 04  mov   a,$048f+x
1020: c4 02     mov   $02,a
1022: f5 97 04  mov   a,$0497+x
1025: c4 03     mov   $03,a
1027: 8d 00     mov   y,#$00
1029: dd        mov   a,y
102a: 8d 00     mov   y,#$00
102c: 7a 02     addw  ya,$02
102e: da 02     movw  $02,ya
1030: 8d 00     mov   y,#$00
1032: 4d        push  x
1033: f7 02     mov   a,($02)+y
1035: fc        inc   y
1036: 28 7f     and   a,#$7f
1038: 1c        asl   a
1039: 5d        mov   x,a
103a: 1f 3d 10  jmp   ($103d+x)

103d: dw $1132
103f: dw $1154
1041: dw $117f
1043: dw $11a4
1045: dw $11d4
1047: dw $1216
1049: dw $1216
104b: dw $1233
104d: dw $1258
104f: dw $1279
1051: dw $128f
1053: dw $129e
1055: dw $12c0
1057: dw $12ce
1059: dw $12df
105b: dw $12f3
105d: dw $12f3
105f: dw $12f3
1061: dw $1336
1063: dw $1318
1065: dw $1336
1067: dw $1336
1069: dw $1336
106b: dw $1336
106d: dw $1336
106f: dw $1336
1071: dw $1336
1073: dw $1336
1075: dw $1336
1077: dw $1336
1079: dw $1336
107b: dw $1336
107d: dw $1336
107f: dw $1336
1081: dw $1336
1083: dw $1336
1085: dw $1336
1087: dw $1336
1089: dw $1336
108b: dw $1336
108d: dw $1336
108f: dw $1336
1091: dw $1336
1093: dw $1336
1095: dw $1336
1097: dw $1336
1099: dw $1336
109b: dw $1336
109d: dw $1336
109f: dw $1122
10a1: dw $1122
10a3: dw $10f7
10a5: dw $10f7
10a7: dw $10f7
10a9: dw $10f7
10ab: dw $10f7
10ad: dw $10f7
10af: dw $10f7
10b1: dw $10f7
10b3: dw $10f7
10b5: dw $10e5
10b7: dw $10e5
10b9: dw $10e5
10bb: dw $10e5
10bd: dw $1326
10bf: dw $10f7
10c1: dw $10e5
10c3: dw $10e5
10c5: dw $10e5
10c7: dw $10e5
10c9: dw $10cd
10cb: dw $10d8

10cd: ce        pop   x
10ce: f5 67 1d  mov   a,$1d67+x
10d1: 04 34     or    a,$34
10d3: c4 34     mov   $34,a
10d5: 5f 29 10  jmp   $1029

10d8: ce        pop   x
10d9: f5 67 1d  mov   a,$1d67+x
10dc: 48 ff     eor   a,#$ff
10de: 24 34     and   a,$34
10e0: c4 34     mov   $34,a
10e2: 5f 29 10  jmp   $1029

10e5: ce        pop   x
10e6: d8 06     mov   $06,x
10e8: f7 02     mov   a,($02)+y
10ea: fc        inc   y
10eb: 28 7f     and   a,#$7f
10ed: 4d        push  x
10ee: 6d        push  y
10ef: 3f 07 0f  call  $0f07
10f2: ee        pop   y
10f3: ce        pop   x
10f4: 5f 29 10  jmp   $1029

10f7: ce        pop   x
10f8: f5 67 05  mov   a,$0567+x
10fb: d0 16     bne   $1113
10fd: 4d        push  x
10fe: f7 02     mov   a,($02)+y
1100: 60        clrc
1101: 84 12     adc   a,$12
1103: 5d        mov   x,a
1104: f5 77 05  mov   a,$0577+x
1107: d0 02     bne   $110b
1109: e8 01     mov   a,#$01
110b: ce        pop   x
110c: d5 67 05  mov   $0567+x,a
110f: dc        dec   y
1110: 5f 55 13  jmp   $1355

1113: dc        dec   y
1114: 9c        dec   a
1115: d5 67 05  mov   $0567+x,a
1118: f0 03     beq   $111d
111a: 5f 55 13  jmp   $1355

111d: fc        inc   y
111e: fc        inc   y
111f: 5f 29 10  jmp   $1029

1122: ce        pop   x
1123: 8f 6c f2  mov   $f2,#$6c
1126: e4 f3     mov   a,$f3
1128: 28 e0     and   a,#$e0
112a: 17 02     or    a,($02)+y
112c: fc        inc   y
112d: c4 f3     mov   $f3,a
112f: 5f 29 10  jmp   $1029

1132: ce        pop   x
1133: e8 02     mov   a,#$02
1135: 04 00     or    a,$00
1137: c4 f2     mov   $f2,a
1139: f7 02     mov   a,($02)+y
113b: fc        inc   y
113c: d5 9f 04  mov   $049f+x,a
113f: d5 af 04  mov   $04af+x,a
1142: c4 f3     mov   $f3,a
1144: ab f2     inc   $f2
1146: f7 02     mov   a,($02)+y
1148: fc        inc   y
1149: d5 a7 04  mov   $04a7+x,a
114c: d5 b7 04  mov   $04b7+x,a
114f: c4 f3     mov   $f3,a
1151: 5f 29 10  jmp   $1029

1154: ce        pop   x
1155: e8 03     mov   a,#$03
1157: 04 00     or    a,$00
1159: c4 f2     mov   $f2,a
115b: f7 02     mov   a,($02)+y
115d: fc        inc   y
115e: 60        clrc
115f: 95 9f 04  adc   a,$049f+x
1162: d5 9f 04  mov   $049f+x,a
1165: d5 af 04  mov   $04af+x,a
1168: 2d        push  a
1169: f7 02     mov   a,($02)+y
116b: 95 a7 04  adc   a,$04a7+x
116e: d5 a7 04  mov   $04a7+x,a
1171: d5 b7 04  mov   $04b7+x,a
1174: fc        inc   y
1175: c4 f3     mov   $f3,a
1177: 8b f2     dec   $f2
1179: ae        pop   a
117a: c4 f3     mov   $f3,a
117c: 5f 29 10  jmp   $1029

117f: ce        pop   x
1180: e8 03     mov   a,#$03
1182: 04 00     or    a,$00
1184: c4 f2     mov   $f2,a
1186: f7 02     mov   a,($02)+y
1188: fc        inc   y
1189: 60        clrc
118a: 95 af 04  adc   a,$04af+x
118d: d5 af 04  mov   $04af+x,a
1190: 2d        push  a
1191: f7 02     mov   a,($02)+y
1193: 95 b7 04  adc   a,$04b7+x
1196: d5 b7 04  mov   $04b7+x,a
1199: c4 f3     mov   $f3,a
119b: fc        inc   y
119c: ae        pop   a
119d: 8b f2     dec   $f2
119f: c4 f3     mov   $f3,a
11a1: 5f 29 10  jmp   $1029

11a4: ce        pop   x
11a5: f5 5f 05  mov   a,$055f+x
11a8: bc        inc   a
11a9: d5 5f 05  mov   $055f+x,a
11ac: 4d        push  x
11ad: d8 01     mov   $01,x
11af: 9c        dec   a
11b0: 1c        asl   a
11b1: 1c        asl   a
11b2: 1c        asl   a
11b3: 04 01     or    a,$01
11b5: 5d        mov   x,a
11b6: f7 02     mov   a,($02)+y
11b8: fc        inc   y
11b9: d5 1f 05  mov   $051f+x,a
11bc: f7 02     mov   a,($02)+y
11be: fc        inc   y
11bf: d5 3f 05  mov   $053f+x,a
11c2: dd        mov   a,y
11c3: 60        clrc
11c4: 84 02     adc   a,$02
11c6: d5 df 04  mov   $04df+x,a
11c9: e8 00     mov   a,#$00
11cb: 84 03     adc   a,$03
11cd: d5 ff 04  mov   $04ff+x,a
11d0: ce        pop   x
11d1: 5f 29 10  jmp   $1029

11d4: ce        pop   x
11d5: 4d        push  x
11d6: f5 5f 05  mov   a,$055f+x
11d9: 9c        dec   a
11da: d8 01     mov   $01,x
11dc: 1c        asl   a
11dd: 1c        asl   a
11de: 1c        asl   a
11df: 04 01     or    a,$01
11e1: 5d        mov   x,a
11e2: f5 1f 05  mov   a,$051f+x
11e5: 15 3f 05  or    a,$053f+x
11e8: f0 21     beq   $120b
11ea: 80        setc
11eb: f5 1f 05  mov   a,$051f+x
11ee: a8 01     sbc   a,#$01
11f0: d5 1f 05  mov   $051f+x,a
11f3: f5 3f 05  mov   a,$053f+x
11f6: a8 00     sbc   a,#$00
11f8: d5 3f 05  mov   $053f+x,a
11fb: f5 df 04  mov   a,$04df+x
11fe: c4 02     mov   $02,a
1200: f5 ff 04  mov   a,$04ff+x
1203: c4 03     mov   $03,a
1205: 8d 00     mov   y,#$00
1207: ce        pop   x
1208: 5f 55 13  jmp   $1355

120b: ce        pop   x
120c: f5 5f 05  mov   a,$055f+x
120f: 9c        dec   a
1210: d5 5f 05  mov   $055f+x,a
1213: 5f 55 13  jmp   $1355

1216: ce        pop   x
1217: f7 02     mov   a,($02)+y
1219: fc        inc   y
121a: d5 bf 04  mov   $04bf+x,a
121d: d5 cf 04  mov   $04cf+x,a
1220: c4 06     mov   $06,a
1222: f7 02     mov   a,($02)+y
1224: fc        inc   y
1225: d5 c7 04  mov   $04c7+x,a
1228: d5 d7 04  mov   $04d7+x,a
122b: c4 07     mov   $07,a
122d: 3f 92 13  call  $1392
1230: 5f 29 10  jmp   $1029

1233: ce        pop   x
1234: f7 02     mov   a,($02)+y
1236: fc        inc   y
1237: 60        clrc
1238: 95 bf 04  adc   a,$04bf+x
123b: d5 bf 04  mov   $04bf+x,a
123e: d5 cf 04  mov   $04cf+x,a
1241: c4 06     mov   $06,a
1243: f7 02     mov   a,($02)+y
1245: fc        inc   y
1246: 60        clrc
1247: 95 c7 04  adc   a,$04c7+x
124a: d5 c7 04  mov   $04c7+x,a
124d: d5 d7 04  mov   $04d7+x,a
1250: c4 07     mov   $07,a
1252: 3f 92 13  call  $1392
1255: 5f 29 10  jmp   $1029

1258: ce        pop   x
1259: f7 02     mov   a,($02)+y
125b: fc        inc   y
125c: 60        clrc
125d: 95 cf 04  adc   a,$04cf+x
1260: d5 cf 04  mov   $04cf+x,a
1263: c4 06     mov   $06,a
1265: ab f2     inc   $f2
1267: f7 02     mov   a,($02)+y
1269: fc        inc   y
126a: 60        clrc
126b: 95 d7 04  adc   a,$04d7+x
126e: d5 d7 04  mov   $04d7+x,a
1271: c4 07     mov   $07,a
1273: 3f 92 13  call  $1392
1276: 5f 29 10  jmp   $1029

1279: ce        pop   x
127a: e8 06     mov   a,#$06
127c: 04 00     or    a,$00
127e: c4 f2     mov   $f2,a
1280: f7 02     mov   a,($02)+y
1282: fc        inc   y
1283: c4 f3     mov   $f3,a
1285: 8b f2     dec   $f2
1287: f7 02     mov   a,($02)+y
1289: fc        inc   y
128a: c4 f3     mov   $f3,a
128c: 5f 29 10  jmp   $1029

128f: ce        pop   x
1290: e8 07     mov   a,#$07
1292: 04 00     or    a,$00
1294: c4 f2     mov   $f2,a
1296: f7 02     mov   a,($02)+y
1298: fc        inc   y
1299: c4 f3     mov   $f3,a
129b: 5f 29 10  jmp   $1029

129e: ce        pop   x
129f: e8 04     mov   a,#$04
12a1: 04 00     or    a,$00
12a3: c4 f2     mov   $f2,a
12a5: e4 12     mov   a,$12
12a7: 2d        push  a
12a8: f7 02     mov   a,($02)+y
12aa: fc        inc   y
12ab: 6d        push  y
12ac: 3f 9c 0e  call  $0e9c
12af: 8d 0c     mov   y,#$0c
12b1: f7 12     mov   a,($12)+y
12b3: fd        mov   y,a
12b4: f6 8a 88  mov   a,$888a+y
12b7: c4 f3     mov   $f3,a
12b9: ee        pop   y
12ba: ae        pop   a
12bb: c4 12     mov   $12,a
12bd: 5f 29 10  jmp   $1029

12c0: ce        pop   x
12c1: 8f 2d f2  mov   $f2,#$2d
12c4: f5 67 1d  mov   a,$1d67+x
12c7: 04 f3     or    a,$f3
12c9: c4 f3     mov   $f3,a
12cb: 5f 29 10  jmp   $1029

12ce: ce        pop   x
12cf: f5 67 1d  mov   a,$1d67+x
12d2: 2d        push  a
12d3: 04 31     or    a,$31
12d5: c4 31     mov   $31,a
12d7: ae        pop   a
12d8: 04 32     or    a,$32
12da: c4 32     mov   $32,a
12dc: 5f 29 10  jmp   $1029

12df: ce        pop   x
12e0: f5 67 1d  mov   a,$1d67+x
12e3: 04 32     or    a,$32
12e5: c4 32     mov   $32,a
12e7: 7d        mov   a,x
12e8: 9f        xcn   a
12e9: 08 05     or    a,#$05
12eb: c4 f2     mov   $f2,a
12ed: 8f 00 f3  mov   $f3,#$00
12f0: 5f 29 10  jmp   $1029

12f3: ce        pop   x
12f4: f5 67 05  mov   a,$0567+x
12f7: f0 03     beq   $12fc
12f9: 5f 09 13  jmp   $1309

12fc: f7 02     mov   a,($02)+y
12fe: d0 02     bne   $1302
1300: e8 01     mov   a,#$01
1302: d5 67 05  mov   $0567+x,a
1305: dc        dec   y
1306: 5f 55 13  jmp   $1355

1309: dc        dec   y
130a: 9c        dec   a
130b: d5 67 05  mov   $0567+x,a
130e: f0 03     beq   $1313
1310: 5f 55 13  jmp   $1355

1313: fc        inc   y
1314: fc        inc   y
1315: 5f 29 10  jmp   $1029

1318: ce        pop   x
1319: 8f 3d f2  mov   $f2,#$3d
131c: f5 67 1d  mov   a,$1d67+x
131f: 04 f3     or    a,$f3
1321: c4 f3     mov   $f3,a
1323: 5f 29 10  jmp   $1029

1326: ce        pop   x
1327: 8f 3d f2  mov   $f2,#$3d
132a: f5 67 1d  mov   a,$1d67+x
132d: 48 ff     eor   a,#$ff
132f: 24 f3     and   a,$f3
1331: c4 f3     mov   $f3,a
1333: 5f 29 10  jmp   $1029

1336: ce        pop   x
1337: 3f 66 13  call  $1366
133a: f5 67 1d  mov   a,$1d67+x
133d: 48 ff     eor   a,#$ff
133f: 2d        push  a
1340: 24 30     and   a,$30
1342: c4 30     mov   $30,a
1344: e4 30     mov   a,$30
1346: d0 02     bne   $134a
1348: 32 a1     clr1  $a1
134a: ae        pop   a
134b: 24 34     and   a,$34
134d: c4 34     mov   $34,a
134f: e8 00     mov   a,#$00
1351: d4 20     mov   $20+x,a
1353: d4 28     mov   $28+x,a
1355: dd        mov   a,y
1356: 8d 00     mov   y,#$00
1358: 7a 02     addw  ya,$02
135a: da 02     movw  $02,ya
135c: d5 8f 04  mov   $048f+x,a
135f: dd        mov   a,y
1360: d5 97 04  mov   $0497+x,a
1363: ce        pop   x
1364: ae        pop   a
1365: 6f        ret

1366: 8f 2d f2  mov   $f2,#$2d
1369: f5 67 1d  mov   a,$1d67+x
136c: 48 ff     eor   a,#$ff
136e: 2d        push  a
136f: 24 f3     and   a,$f3
1371: c4 f3     mov   $f3,a
1373: ae        pop   a
1374: 8f 3d f2  mov   $f2,#$3d
1377: 24 f3     and   a,$f3
1379: c4 f3     mov   $f3,a
137b: 6f        ret

137c: ba f6     movw  ya,$f6
137e: da 00     movw  $00,ya
1380: dd        mov   a,y
1381: 44 1c     eor   a,$1c
1383: 10 0c     bpl   $1391
1385: ba 00     movw  ya,$00
1387: da 1b     movw  $1b,ya
1389: da f6     movw  $f6,ya
138b: da 1d     movw  $1d,ya
138d: 18 80 1e  or    $1e,#$80
1390: 6f        ret

1391: 6f        ret

1392: 6d        push  y
1393: e5 10 08  mov   a,$0810
1396: f0 1a     beq   $13b2
1398: e4 06     mov   a,$06
139a: 10 03     bpl   $139f
139c: 48 ff     eor   a,#$ff
139e: bc        inc   a
139f: c4 06     mov   $06,a
13a1: e4 07     mov   a,$07
13a3: 10 03     bpl   $13a8
13a5: 48 ff     eor   a,#$ff
13a7: bc        inc   a
13a8: c4 07     mov   $07,a
13aa: 60        clrc
13ab: 84 06     adc   a,$06
13ad: 5c        lsr   a
13ae: c4 06     mov   $06,a
13b0: c4 07     mov   $07,a
13b2: eb 68     mov   y,$68
13b4: e4 06     mov   a,$06
13b6: cf        mul   ya
13b7: cb 06     mov   $06,y
13b9: eb 68     mov   y,$68
13bb: e4 07     mov   a,$07
13bd: cf        mul   ya
13be: cb 07     mov   $07,y
13c0: e8 00     mov   a,#$00
13c2: 04 00     or    a,$00
13c4: c4 f2     mov   $f2,a
13c6: fa 06 f3  mov   ($f3),($06)
13c9: ab f2     inc   $f2
13cb: fa 07 f3  mov   ($f3),($07)
13ce: ee        pop   y
13cf: 6f        ret

13d0: f5 55 02  mov   a,$0255+x
13d3: f0 0c     beq   $13e1
13d5: c4 00     mov   $00,a
13d7: e8 00     mov   a,#$00
13d9: d5 55 02  mov   $0255+x,a
13dc: e4 00     mov   a,$00
13de: 5f e6 13  jmp   $13e6

13e1: 3f b4 16  call  $16b4
13e4: c4 00     mov   $00,a
13e6: 5c        lsr   a
13e7: 9f        xcn   a
13e8: 28 07     and   a,#$07
13ea: 1c        asl   a
13eb: 4d        push  x
13ec: 5d        mov   x,a
13ed: 1f f0 13  jmp   ($13f0+x)

13f0: dw $1400
13f2: dw $1427
13f4: dw $1444
13f6: dw $1451
13f8: dw $1460
13fa: dw $1482
13fc: dw $14a2
13fe: dw $1471

1400: ce        pop   x
1401: e4 00     mov   a,$00
1403: 28 1f     and   a,#$1f
1405: 68 10     cmp   a,#$10
1407: 90 02     bcc   $140b
1409: 08 e0     or    a,#$e0
140b: 60        clrc
140c: 95 85 02  adc   a,$0285+x
140f: d5 85 02  mov   $0285+x,a
1412: c4 02     mov   $02,a
1414: f5 35 02  mov   a,$0235+x
1417: c4 00     mov   $00,a
1419: 4d        push  x
141a: 3f 29 0b  call  $0b29
141d: ce        pop   x
141e: f5 65 02  mov   a,$0265+x
1421: c4 04     mov   $04,a
1423: 3f c2 17  call  $17c2
1426: 6f        ret

1427: ce        pop   x
1428: e4 00     mov   a,$00
142a: 28 1f     and   a,#$1f
142c: 68 10     cmp   a,#$10
142e: 90 02     bcc   $1432
1430: 08 e0     or    a,#$e0
1432: 60        clrc
1433: 95 85 02  adc   a,$0285+x
1436: d5 85 02  mov   $0285+x,a
1439: c4 02     mov   $02,a
143b: f5 35 02  mov   a,$0235+x
143e: c4 00     mov   $00,a
1440: 3f b3 18  call  $18b3
1443: 6f        ret

1444: ce        pop   x
1445: e4 00     mov   a,$00
1447: 28 1f     and   a,#$1f
1449: bc        inc   a
144a: d5 25 02  mov   $0225+x,a
144d: d5 75 02  mov   $0275+x,a
1450: 6f        ret

1451: ce        pop   x
1452: e4 00     mov   a,$00
1454: 28 1f     and   a,#$1f
1456: bc        inc   a
1457: d5 25 02  mov   $0225+x,a
145a: e8 20     mov   a,#$20
145c: d5 55 02  mov   $0255+x,a
145f: 6f        ret

1460: ce        pop   x
1461: f5 75 02  mov   a,$0275+x
1464: d5 25 02  mov   $0225+x,a
1467: e4 00     mov   a,$00
1469: 28 1f     and   a,#$1f
146b: 08 20     or    a,#$20
146d: d5 55 02  mov   $0255+x,a
1470: 6f        ret

1471: ce        pop   x
1472: f5 75 02  mov   a,$0275+x
1475: d5 25 02  mov   $0225+x,a
1478: e4 00     mov   a,$00
147a: 28 1f     and   a,#$1f
147c: 08 a0     or    a,#$a0
147e: d5 55 02  mov   $0255+x,a
1481: 6f        ret

1482: ce        pop   x
1483: e4 00     mov   a,$00
1485: 28 1f     and   a,#$1f
1487: 68 10     cmp   a,#$10
1489: 90 02     bcc   $148d
148b: 08 e0     or    a,#$e0
148d: 60        clrc
148e: 95 95 02  adc   a,$0295+x
1491: d5 95 02  mov   $0295+x,a
1494: 08 80     or    a,#$80
1496: c4 04     mov   $04,a
1498: f5 35 02  mov   a,$0235+x
149b: 5d        mov   x,a
149c: e4 04     mov   a,$04
149e: d5 6f 03  mov   $036f+x,a
14a1: 6f        ret

14a2: e4 00     mov   a,$00
14a4: 28 1f     and   a,#$1f
14a6: 68 18     cmp   a,#$18
14a8: 90 03     bcc   $14ad
14aa: 5f ad 16  jmp   $16ad

14ad: 1c        asl   a
14ae: 5d        mov   x,a
14af: 1f b2 14  jmp   ($14b2+x)

14b2: dw $14e4
14b4: dw $14f4
14b6: dw $1544
14b8: dw $1554
14ba: dw $1564
14bc: dw $1574
14be: dw $159a
14c0: dw $159a
14c2: dw $15aa
14c4: dw $15c8
14c6: dw $1611
14c8: dw $1621
14ca: dw $1629
14cc: dw $162b
14ce: dw $162b
14d0: dw $1635
14d2: dw $163d
14d4: dw $1659
14d6: dw $14e2
14d8: dw $166b
14da: dw $167e
14dc: dw $1691
14de: dw $1693
14e0: dw $16a6

14e2: ce        pop   x
14e3: 6f        ret

14e4: ce        pop   x
14e5: 3f b4 16  call  $16b4
14e8: c4 04     mov   $04,a
14ea: f5 35 02  mov   a,$0235+x
14ed: 5d        mov   x,a
14ee: e4 04     mov   a,$04
14f0: d5 af 02  mov   $02af+x,a
14f3: 6f        ret

14f4: ce        pop   x
14f5: 3f b4 16  call  $16b4
14f8: c4 04     mov   $04,a
14fa: f5 35 02  mov   a,$0235+x
14fd: 5d        mov   x,a
14fe: f5 df 02  mov   a,$02df+x
1501: f0 35     beq   $1538
1503: 68 07     cmp   a,#$07
1505: f0 37     beq   $153e
1507: 9c        dec   a
1508: 28 07     and   a,#$07
150a: fd        mov   y,a
150b: e4 04     mov   a,$04
150d: ad 03     cmp   y,#$03
150f: d0 0d     bne   $151e
1511: 2d        push  a
1512: 80        setc
1513: a5 aa 02  sbc   a,$02aa
1516: 28 7f     and   a,#$7f
1518: ae        pop   a
1519: d0 01     bne   $151c
151b: 6f        ret

151c: 08 80     or    a,#$80
151e: d6 a7 02  mov   $02a7+y,a
1521: ad 05     cmp   y,#$05
1523: f0 01     beq   $1526
1525: 6f        ret

1526: e5 ac 02  mov   a,$02ac
1529: 28 7f     and   a,#$7f
152b: 3f e0 08  call  $08e0
152e: 68 ff     cmp   a,#$ff
1530: d0 01     bne   $1533
1532: 6f        ret

1533: 08 80     or    a,#$80
1535: c4 18     mov   $18,a
1537: 6f        ret

1538: e4 04     mov   a,$04
153a: d5 bf 02  mov   $02bf+x,a
153d: 6f        ret

153e: e4 04     mov   a,$04
1540: d5 cf 02  mov   $02cf+x,a
1543: 6f        ret

1544: ce        pop   x
1545: 3f b4 16  call  $16b4
1548: c4 04     mov   $04,a
154a: f5 35 02  mov   a,$0235+x
154d: 5d        mov   x,a
154e: e4 04     mov   a,$04
1550: d5 ef 02  mov   $02ef+x,a
1553: 6f        ret

1554: ce        pop   x
1555: 3f b4 16  call  $16b4
1558: c4 04     mov   $04,a
155a: f5 35 02  mov   a,$0235+x
155d: 5d        mov   x,a
155e: e4 04     mov   a,$04
1560: d5 1f 03  mov   $031f+x,a
1563: 6f        ret

1564: ce        pop   x
1565: 3f b4 16  call  $16b4
1568: c4 04     mov   $04,a
156a: f5 35 02  mov   a,$0235+x
156d: 5d        mov   x,a
156e: e4 04     mov   a,$04
1570: d5 2f 03  mov   $032f+x,a
1573: 6f        ret

1574: ce        pop   x
1575: 3f b4 16  call  $16b4
1578: c4 04     mov   $04,a
157a: f5 35 02  mov   a,$0235+x
157d: 5d        mov   x,a
157e: e4 04     mov   a,$04
1580: d5 3f 03  mov   $033f+x,a
1583: 28 40     and   a,#$40
1585: f0 01     beq   $1588
1587: 6f        ret

1588: f5 4f 03  mov   a,$034f+x
158b: 3f 19 19  call  $1919
158e: 4e 3c 00  tclr1 $003c
1591: 4e 3d 00  tclr1 $003d
1594: e8 00     mov   a,#$00
1596: d5 4f 03  mov   $034f+x,a
1599: 6f        ret

159a: ce        pop   x
159b: 3f b4 16  call  $16b4
159e: c4 04     mov   $04,a
15a0: f5 35 02  mov   a,$0235+x
15a3: 5d        mov   x,a
15a4: e4 04     mov   a,$04
15a6: d5 df 02  mov   $02df+x,a
15a9: 6f        ret

15aa: ce        pop   x
15ab: f5 35 02  mov   a,$0235+x
15ae: 5d        mov   x,a
15af: e8 00     mov   a,#$00
15b1: d5 3f 03  mov   $033f+x,a
15b4: d5 2f 03  mov   $032f+x,a
15b7: d5 ef 02  mov   $02ef+x,a
15ba: d5 af 02  mov   $02af+x,a
15bd: e8 c0     mov   a,#$c0
15bf: d5 6f 03  mov   $036f+x,a
15c2: e8 40     mov   a,#$40
15c4: d5 cf 02  mov   $02cf+x,a
15c7: 6f        ret

15c8: ce        pop   x
15c9: e4 3c     mov   a,$3c
15cb: c4 08     mov   $08,a
15cd: f5 35 02  mov   a,$0235+x
15d0: c4 00     mov   $00,a
15d2: cd 07     mov   x,#$07
15d4: 8d 00     mov   y,#$00
15d6: 0b 08     asl   $08
15d8: 90 0e     bcc   $15e8
15da: f4 41     mov   a,$41+x
15dc: 28 0f     and   a,#$0f
15de: 64 00     cmp   a,$00
15e0: d0 06     bne   $15e8
15e2: 80        setc
15e3: 2b 06     rol   $06
15e5: 5f eb 15  jmp   $15eb

15e8: 60        clrc
15e9: 2b 06     rol   $06
15eb: 1d        dec   x
15ec: 10 e8     bpl   $15d6
15ee: f8 00     mov   x,$00
15f0: f5 3f 03  mov   a,$033f+x
15f3: 28 40     and   a,#$40
15f5: d0 14     bne   $160b
15f7: e4 06     mov   a,$06
15f9: 15 4f 03  or    a,$034f+x
15fc: 3f 19 19  call  $1919
15ff: 4e 3d 00  tclr1 $003d
1602: 4e 3c 00  tclr1 $003c
1605: e8 00     mov   a,#$00
1607: d5 4f 03  mov   $034f+x,a
160a: 6f        ret

160b: e4 06     mov   a,$06
160d: d5 4f 03  mov   $034f+x,a
1610: 6f        ret

1611: ce        pop   x
1612: 3f b4 16  call  $16b4
1615: c4 02     mov   $02,a
1617: f5 35 02  mov   a,$0235+x
161a: 5d        mov   x,a
161b: e4 02     mov   a,$02
161d: 3f 8c 0e  call  $0e8c
1620: 6f        ret

1621: ce        pop   x
1622: 3f b4 16  call  $16b4
1625: c5 03 02  mov   $0203,a
1628: 6f        ret

1629: ce        pop   x
162a: 6f        ret

162b: ce        pop   x
162c: e8 00     mov   a,#$00
162e: d5 15 02  mov   $0215+x,a
1631: d5 05 02  mov   $0205+x,a
1634: 6f        ret

1635: ce        pop   x
1636: 3f b4 16  call  $16b4
1639: d5 35 02  mov   $0235+x,a
163c: 6f        ret

163d: ce        pop   x
163e: 3f b4 16  call  $16b4
1641: d5 85 02  mov   $0285+x,a
1644: c4 02     mov   $02,a
1646: f5 35 02  mov   a,$0235+x
1649: c4 00     mov   $00,a
164b: 4d        push  x
164c: 3f 29 0b  call  $0b29
164f: ce        pop   x
1650: f5 65 02  mov   a,$0265+x
1653: c4 04     mov   $04,a
1655: 3f c2 17  call  $17c2
1658: 6f        ret

1659: ce        pop   x
165a: 3f b4 16  call  $16b4
165d: d5 85 02  mov   $0285+x,a
1660: c4 02     mov   $02,a
1662: f5 35 02  mov   a,$0235+x
1665: c4 00     mov   $00,a
1667: 3f b3 18  call  $18b3
166a: 6f        ret

166b: ce        pop   x
166c: 3f b4 16  call  $16b4
166f: d5 85 02  mov   $0285+x,a
1672: f5 75 02  mov   a,$0275+x
1675: d5 25 02  mov   $0225+x,a
1678: e8 20     mov   a,#$20
167a: d5 55 02  mov   $0255+x,a
167d: 6f        ret

167e: ce        pop   x
167f: 3f b4 16  call  $16b4
1682: d5 95 02  mov   $0295+x,a
1685: f5 75 02  mov   a,$0275+x
1688: d5 25 02  mov   $0225+x,a
168b: e8 a0     mov   a,#$a0
168d: d5 55 02  mov   $0255+x,a
1690: 6f        ret

1691: ce        pop   x
1692: 6f        ret

1693: ce        pop   x
1694: 3f b4 16  call  $16b4
1697: d5 95 02  mov   $0295+x,a
169a: 08 80     or    a,#$80
169c: 2d        push  a
169d: f5 35 02  mov   a,$0235+x
16a0: 5d        mov   x,a
16a1: ae        pop   a
16a2: d5 6f 03  mov   $036f+x,a
16a5: 6f        ret

16a6: ce        pop   x
16a7: e8 ff     mov   a,#$ff
16a9: d5 25 02  mov   $0225+x,a
16ac: 6f        ret

16ad: ce        pop   x
16ae: 28 07     and   a,#$07
16b0: d5 65 02  mov   $0265+x,a
16b3: 6f        ret

16b4: 40        setp
16b5: f4 06     mov   a,$06+x
16b7: 4d        push  x
16b8: 1c        asl   a
16b9: 5d        mov   x,a
16ba: 1f bd 16  jmp   ($16bd+x)

16bd: dw $16c7
16bf: dw $16ce
16c1: dw $16d5
16c3: dw $16dc
16c5: dw $16e3

16c7: ce        pop   x
16c8: 3f e9 16  call  $16e9
16cb: 5f b4 16  jmp   $16b4

16ce: ce        pop   x
16cf: 3f 08 17  call  $1708
16d2: 5f e7 16  jmp   $16e7

16d5: ce        pop   x
16d6: 3f 14 17  call  $1714
16d9: 5f b4 16  jmp   $16b4

16dc: ce        pop   x
16dd: 3f 38 17  call  $1738
16e0: 5f e7 16  jmp   $16e7

16e3: ce        pop   x
16e4: 3f 83 17  call  $1783
16e7: 20        clrp
16e8: 6f        ret

16e9: 3f a6 17  call  $17a6
16ec: f7 00     mov   a,($00)+y
16ee: fc        inc   y
16ef: 17 00     or    a,($00)+y
16f1: f0 0c     beq   $16ff
16f3: fc        inc   y
16f4: e8 02     mov   a,#$02
16f6: d4 06     mov   $06+x,a
16f8: e8 00     mov   a,#$00
16fa: d4 56     mov   $56+x,a
16fc: 5f 04 17  jmp   $1704

16ff: fc        inc   y
1700: e8 01     mov   a,#$01
1702: d4 06     mov   $06+x,a
1704: 3f b3 17  call  $17b3
1707: 6f        ret

1708: 3f a6 17  call  $17a6
170b: f7 00     mov   a,($00)+y
170d: fc        inc   y
170e: 2d        push  a
170f: 3f b3 17  call  $17b3
1712: ae        pop   a
1713: 6f        ret

1714: 3f a6 17  call  $17a6
1717: f4 16     mov   a,$16+x
1719: d0 0e     bne   $1729
171b: f7 00     mov   a,($00)+y
171d: fc        inc   y
171e: 48 ff     eor   a,#$ff
1720: d4 36     mov   $36+x,a
1722: e8 08     mov   a,#$08
1724: d4 16     mov   $16+x,a
1726: 3f b3 17  call  $17b3
1729: 1b 36     asl   $36+x
172b: e8 00     mov   a,#$00
172d: 88 03     adc   a,#$03
172f: d4 06     mov   $06+x,a
1731: e8 ff     mov   a,#$ff
1733: d4 26     mov   $26+x,a
1735: 9b 16     dec   $16+x
1737: 6f        ret

1738: 3f a6 17  call  $17a6
173b: f4 26     mov   a,$26+x
173d: 10 18     bpl   $1757
173f: f7 00     mov   a,($00)+y
1741: fc        inc   y
1742: c4 02     mov   $02,a
1744: 9f        xcn   a
1745: 5c        lsr   a
1746: 28 07     and   a,#$07
1748: 60        clrc
1749: 88 02     adc   a,#$02
174b: d4 26     mov   $26+x,a
174d: 38 1f 02  and   $02,#$1f
1750: f4 56     mov   a,$56+x
1752: 60        clrc
1753: a4 02     sbc   a,$02
1755: d4 46     mov   $46+x,a
1757: 3f b3 17  call  $17b3
175a: f4 66     mov   a,$66+x
175c: c4 02     mov   $02,a
175e: f4 76     mov   a,$76+x
1760: c4 03     mov   $03,a
1762: f4 46     mov   a,$46+x
1764: bb 46     inc   $46+x
1766: 28 1f     and   a,#$1f
1768: fd        mov   y,a
1769: f7 02     mov   a,($02)+y
176b: c4 04     mov   $04,a
176d: f4 56     mov   a,$56+x
176f: bb 56     inc   $56+x
1771: 28 1f     and   a,#$1f
1773: fd        mov   y,a
1774: e4 04     mov   a,$04
1776: d7 02     mov   ($02)+y,a
1778: 9b 26     dec   $26+x
177a: 10 04     bpl   $1780
177c: e8 02     mov   a,#$02
177e: d4 06     mov   $06+x,a
1780: e4 04     mov   a,$04
1782: 6f        ret

1783: 3f a6 17  call  $17a6
1786: e8 02     mov   a,#$02
1788: d4 06     mov   $06+x,a
178a: f4 66     mov   a,$66+x
178c: c4 02     mov   $02,a
178e: f4 76     mov   a,$76+x
1790: c4 03     mov   $03,a
1792: f7 00     mov   a,($00)+y
1794: fc        inc   y
1795: c4 04     mov   $04,a
1797: 3f b3 17  call  $17b3
179a: f4 56     mov   a,$56+x
179c: bb 56     inc   $56+x
179e: 28 1f     and   a,#$1f
17a0: fd        mov   y,a
17a1: e4 04     mov   a,$04
17a3: d7 02     mov   ($02)+y,a
17a5: 6f        ret

17a6: f5 05 02  mov   a,$0205+x
17a9: c4 00     mov   $00,a
17ab: f5 15 02  mov   a,$0215+x
17ae: c4 01     mov   $01,a
17b0: 8d 00     mov   y,#$00
17b2: 6f        ret

17b3: 60        clrc
17b4: dd        mov   a,y
17b5: 84 00     adc   a,$00
17b7: d5 05 02  mov   $0205+x,a
17ba: e8 00     mov   a,#$00
17bc: 84 01     adc   a,$01
17be: d5 15 02  mov   $0215+x,a
17c1: 6f        ret

17c2: f8 6c     mov   x,$6c
17c4: e4 00     mov   a,$00
17c6: 28 0f     and   a,#$0f
17c8: d4 6d     mov   $6d+x,a
17ca: e4 02     mov   a,$02
17cc: d4 6e     mov   $6e+x,a
17ce: e4 04     mov   a,$04
17d0: d4 6f     mov   $6f+x,a
17d2: 3d        inc   x
17d3: 3d        inc   x
17d4: 3d        inc   x
17d5: d8 6c     mov   $6c,x
17d7: 6f        ret

17d8: f8 6c     mov   x,$6c
17da: f0 1e     beq   $17fa
17dc: cd 00     mov   x,#$00
17de: f4 6d     mov   a,$6d+x
17e0: c4 00     mov   $00,a
17e2: f4 6e     mov   a,$6e+x
17e4: c4 02     mov   $02,a
17e6: f4 6f     mov   a,$6f+x
17e8: c4 04     mov   $04,a
17ea: 68 ff     cmp   a,#$ff
17ec: f0 05     beq   $17f3
17ee: 4d        push  x
17ef: 3f fb 17  call  $17fb
17f2: ce        pop   x
17f3: 3d        inc   x
17f4: 3d        inc   x
17f5: 3d        inc   x
17f6: 3e 6c     cmp   x,$6c
17f8: d0 e4     bne   $17de
17fa: 6f        ret

17fb: 38 0f 00  and   $00,#$0f
17fe: cd 07     mov   x,#$07
1800: f5 36 02  mov   a,$0236+x
1803: 64 00     cmp   a,$00
1805: f0 04     beq   $180b
1807: 1d        dec   x
1808: 10 f6     bpl   $1800
180a: 6f        ret

180b: f5 67 1d  mov   a,$1d67+x
180e: 0e 3d 00  tset1 $003d
1811: 0e 3c 00  tset1 $003c
1814: 0e 3f 00  tset1 $003f
1817: e4 04     mov   a,$04
1819: 9f        xcn   a
181a: 04 00     or    a,$00
181c: d4 41     mov   $41+x,a
181e: e4 02     mov   a,$02
1820: d4 49     mov   $49+x,a
1822: eb 00     mov   y,$00
1824: f6 7f 03  mov   a,$037f+y
1827: d4 51     mov   $51+x,a
1829: c4 61     mov   $61,a
182b: f6 8f 03  mov   a,$038f+y
182e: d4 59     mov   $59+x,a
1830: c4 62     mov   $62,a
1832: e8 00     mov   a,#$00
1834: d5 0f 04  mov   $040f+x,a
1837: 8d 01     mov   y,#$01
1839: f7 61     mov   a,($61)+y
183b: f0 35     beq   $1872
183d: c4 0e     mov   $0e,a
183f: 8d 02     mov   y,#$02
1841: f7 61     mov   a,($61)+y
1843: d5 17 04  mov   $0417+x,a
1846: 8d 03     mov   y,#$03
1848: f7 61     mov   a,($61)+y
184a: d5 1f 04  mov   $041f+x,a
184d: f0 23     beq   $1872
184f: d8 00     mov   $00,x
1851: 5d        mov   x,a
1852: e4 0e     mov   a,$0e
1854: 8d 00     mov   y,#$00
1856: 9e        div   ya,x
1857: c4 01     mov   $01,a
1859: dd        mov   a,y
185a: 5d        mov   x,a
185b: 8d 01     mov   y,#$01
185d: e8 00     mov   a,#$00
185f: 9e        div   ya,x
1860: f8 00     mov   x,$00
1862: d5 2f 04  mov   $042f+x,a
1865: e4 01     mov   a,$01
1867: d5 27 04  mov   $0427+x,a
186a: e8 00     mov   a,#$00
186c: d5 47 04  mov   $0447+x,a
186f: d5 3f 04  mov   $043f+x,a
1872: e8 00     mov   a,#$00
1874: d5 4f 04  mov   $044f+x,a
1877: 8d 08     mov   y,#$08
1879: f7 61     mov   a,($61)+y
187b: f0 35     beq   $18b2
187d: c4 0e     mov   $0e,a
187f: 8d 09     mov   y,#$09
1881: f7 61     mov   a,($61)+y
1883: d5 57 04  mov   $0457+x,a
1886: 8d 0a     mov   y,#$0a
1888: f7 61     mov   a,($61)+y
188a: d5 5f 04  mov   $045f+x,a
188d: f0 23     beq   $18b2
188f: d8 00     mov   $00,x
1891: 5d        mov   x,a
1892: e4 0e     mov   a,$0e
1894: 8d 00     mov   y,#$00
1896: 9e        div   ya,x
1897: c4 01     mov   $01,a
1899: dd        mov   a,y
189a: 5d        mov   x,a
189b: 8d 01     mov   y,#$01
189d: e8 00     mov   a,#$00
189f: 9e        div   ya,x
18a0: f8 00     mov   x,$00
18a2: d5 6f 04  mov   $046f+x,a
18a5: e4 01     mov   a,$01
18a7: d5 67 04  mov   $0467+x,a
18aa: e8 00     mov   a,#$00
18ac: d5 87 04  mov   $0487+x,a
18af: d5 7f 04  mov   $047f+x,a
18b2: 6f        ret

18b3: 38 0f 00  and   $00,#$0f
18b6: f8 6c     mov   x,$6c
18b8: f0 18     beq   $18d2
18ba: e4 00     mov   a,$00
18bc: 74 6d     cmp   a,$6d+x
18be: d0 0d     bne   $18cd
18c0: e4 02     mov   a,$02
18c2: 74 6e     cmp   a,$6e+x
18c4: d0 07     bne   $18cd
18c6: e8 ff     mov   a,#$ff
18c8: d4 6f     mov   $6f+x,a
18ca: 5f d2 18  jmp   $18d2

18cd: 1d        dec   x
18ce: 1d        dec   x
18cf: 1d        dec   x
18d0: 10 e8     bpl   $18ba
18d2: fa 3c 06  mov   ($06),($3c)
18d5: 8f 80 08  mov   $08,#$80
18d8: eb 02     mov   y,$02
18da: cd 07     mov   x,#$07
18dc: 0b 06     asl   $06
18de: 90 0d     bcc   $18ed
18e0: f4 41     mov   a,$41+x
18e2: 28 0f     and   a,#$0f
18e4: 64 00     cmp   a,$00
18e6: d0 05     bne   $18ed
18e8: dd        mov   a,y
18e9: 74 49     cmp   a,$49+x
18eb: f0 06     beq   $18f3
18ed: 4b 08     lsr   $08
18ef: 1d        dec   x
18f0: 10 ea     bpl   $18dc
18f2: 6f        ret

18f3: f4 41     mov   a,$41+x
18f5: 28 0f     and   a,#$0f
18f7: fd        mov   y,a
18f8: f6 3f 03  mov   a,$033f+y
18fb: 28 40     and   a,#$40
18fd: d0 11     bne   $1910
18ff: e4 08     mov   a,$08
1901: 3f 19 19  call  $1919
1904: 4e 3c 00  tclr1 $003c
1907: 4e 3d 00  tclr1 $003d
190a: e8 00     mov   a,#$00
190c: d6 4f 03  mov   $034f+y,a
190f: 6f        ret

1910: e4 08     mov   a,$08
1912: 16 4f 03  or    a,$034f+y
1915: d6 4f 03  mov   $034f+y,a
1918: 6f        ret

1919: 2d        push  a
191a: c4 08     mov   $08,a
191c: fa 30 09  mov   ($09),($30)
191f: cd 07     mov   x,#$07
1921: 0b 09     asl   $09
1923: 90 05     bcc   $192a
1925: 0b 08     asl   $08
1927: 5f 37 19  jmp   $1937

192a: 0b 08     asl   $08
192c: 90 09     bcc   $1937
192e: 7d        mov   a,x
192f: 9f        xcn   a
1930: 08 05     or    a,#$05
1932: c4 f2     mov   $f2,a
1934: 8f 00 f3  mov   $f3,#$00
1937: 1d        dec   x
1938: 10 e7     bpl   $1921
193a: ae        pop   a
193b: 6f        ret

193c: 3f c0 1a  call  $1ac0
193f: 3f 9b 1a  call  $1a9b
1942: 3f 5e 19  call  $195e
1945: 3f 49 19  call  $1949
1948: 6f        ret

1949: 40        setp
194a: cd 0f     mov   x,#$0f
194c: 7d        mov   a,x
194d: 9f        xcn   a
194e: 1c        asl   a
194f: d4 66     mov   $66+x,a
1951: 3c        rol   a
1952: 28 01     and   a,#$01
1954: 60        clrc
1955: 88 06     adc   a,#$06
1957: d4 76     mov   $76+x,a
1959: 1d        dec   x
195a: 10 f0     bpl   $194c
195c: 20        clrp
195d: 6f        ret

195e: 8f 00 33  mov   $33,#$00
1961: cd 0f     mov   x,#$0f
1963: e8 40     mov   a,#$40
1965: d5 1f 03  mov   $031f+x,a
1968: e8 7f     mov   a,#$7f
196a: d5 ef 02  mov   $02ef+x,a
196d: e8 c0     mov   a,#$c0
196f: d5 6f 03  mov   $036f+x,a
1972: e8 40     mov   a,#$40
1974: d5 cf 02  mov   $02cf+x,a
1977: e8 00     mov   a,#$00
1979: d5 2f 03  mov   $032f+x,a
197c: d5 af 02  mov   $02af+x,a
197f: d5 3f 03  mov   $033f+x,a
1982: e8 0b     mov   a,#$0b
1984: d5 bf 02  mov   $02bf+x,a
1987: e8 00     mov   a,#$00
1989: 3f 8c 0e  call  $0e8c
198c: 1d        dec   x
198d: 10 d4     bpl   $1963
198f: 6f        ret

1990: e8 1d     mov   a,#$1d
1992: c5 e0 05  mov   $05e0,a
1995: 6f        ret

1996: e5 aa 02  mov   a,$02aa
1999: 30 03     bmi   $199e
199b: 5f 2a 1a  jmp   $1a2a

199e: e5 a5 02  mov   a,$02a5
19a1: d0 47     bne   $19ea
19a3: ac a5 02  inc   $02a5
19a6: 8f 7d f2  mov   $f2,#$7d
19a9: e4 f3     mov   a,$f3
19ab: 5c        lsr   a
19ac: 60        clrc
19ad: 84 f3     adc   a,$f3
19af: 28 1f     and   a,#$1f
19b1: 48 ff     eor   a,#$ff
19b3: c5 a6 02  mov   $02a6,a
19b6: e8 00     mov   a,#$00
19b8: 8f 2c f2  mov   $f2,#$2c
19bb: c4 f3     mov   $f3,a
19bd: 8f 3c f2  mov   $f2,#$3c
19c0: c4 f3     mov   $f3,a
19c2: 8f 4d f2  mov   $f2,#$4d
19c5: c4 f3     mov   $f3,a
19c7: 8f 0d f2  mov   $f2,#$0d
19ca: c4 f3     mov   $f3,a
19cc: 8f 6c f2  mov   $f2,#$6c
19cf: 8f 20 f3  mov   $f3,#$20
19d2: 8f 7d f2  mov   $f2,#$7d
19d5: e5 aa 02  mov   a,$02aa
19d8: 28 0f     and   a,#$0f
19da: c4 f3     mov   $f3,a
19dc: 1c        asl   a
19dd: 1c        asl   a
19de: 1c        asl   a
19df: 48 ff     eor   a,#$ff
19e1: 80        setc
19e2: 88 f8     adc   a,#$f8
19e4: 8f 6d f2  mov   $f2,#$6d
19e7: c4 f3     mov   $f3,a
19e9: 6f        ret

19ea: 68 01     cmp   a,#$01
19ec: d0 21     bne   $1a0f
19ee: ac a6 02  inc   $02a6
19f1: 30 36     bmi   $1a29
19f3: ac a5 02  inc   $02a5
19f6: 3f 53 1a  call  $1a53
19f9: 8f 6c f2  mov   $f2,#$6c
19fc: 8f 00 f3  mov   $f3,#$00
19ff: e5 aa 02  mov   a,$02aa
1a02: 5c        lsr   a
1a03: 60        clrc
1a04: 85 aa 02  adc   a,$02aa
1a07: 28 1f     and   a,#$1f
1a09: 48 ff     eor   a,#$ff
1a0b: c5 a6 02  mov   $02a6,a
1a0e: 6f        ret

1a0f: ac a6 02  inc   $02a6
1a12: 30 15     bmi   $1a29
1a14: e5 aa 02  mov   a,$02aa
1a17: 28 7f     and   a,#$7f
1a19: c5 aa 02  mov   $02aa,a
1a1c: e5 a7 02  mov   a,$02a7
1a1f: 08 80     or    a,#$80
1a21: c5 a7 02  mov   $02a7,a
1a24: e8 00     mov   a,#$00
1a26: c5 a5 02  mov   $02a5,a
1a29: 6f        ret

1a2a: e5 a7 02  mov   a,$02a7
1a2d: 10 23     bpl   $1a52
1a2f: 28 7f     and   a,#$7f
1a31: c5 a7 02  mov   $02a7,a
1a34: 8f 2c f2  mov   $f2,#$2c
1a37: c5 a7 02  mov   $02a7,a
1a3a: c4 f3     mov   $f3,a
1a3c: 8f 3c f2  mov   $f2,#$3c
1a3f: e5 a8 02  mov   a,$02a8
1a42: 28 7f     and   a,#$7f
1a44: c5 a8 02  mov   $02a8,a
1a47: c4 f3     mov   $f3,a
1a49: 8f 0d f2  mov   $f2,#$0d
1a4c: e5 a9 02  mov   a,$02a9
1a4f: 1c        asl   a
1a50: c4 f3     mov   $f3,a
1a52: 6f        ret

1a53: e5 ab 02  mov   a,$02ab
1a56: 1c        asl   a
1a57: 1c        asl   a
1a58: 1c        asl   a
1a59: 08 07     or    a,#$07
1a5b: fd        mov   y,a
1a5c: cd 07     mov   x,#$07
1a5e: 7d        mov   a,x
1a5f: 9f        xcn   a
1a60: 08 0f     or    a,#$0f
1a62: c4 f2     mov   $f2,a
1a64: f6 47 1d  mov   a,$1d47+y
1a67: c4 f3     mov   $f3,a
1a69: dc        dec   y
1a6a: 1d        dec   x
1a6b: 10 f1     bpl   $1a5e
1a6d: 6f        ret

1a6e: e8 00     mov   a,#$00
1a70: 8f 2c f2  mov   $f2,#$2c
1a73: c4 f3     mov   $f3,a
1a75: 8f 3c f2  mov   $f2,#$3c
1a78: c4 f3     mov   $f3,a
1a7a: 8f 6c f2  mov   $f2,#$6c
1a7d: 8f 20 f3  mov   $f3,#$20
1a80: 8f 7d f2  mov   $f2,#$7d
1a83: c4 f3     mov   $f3,a
1a85: 8f 6d f2  mov   $f2,#$6d
1a88: 8f f8 f3  mov   $f3,#$f8
1a8b: 8f 4d f2  mov   $f2,#$4d
1a8e: c4 f3     mov   $f3,a
1a90: 8f 2d f2  mov   $f2,#$2d
1a93: c4 f3     mov   $f3,a
1a95: 8f 3d f2  mov   $f2,#$3d
1a98: c4 f3     mov   $f3,a
1a9a: 6f        ret

1a9b: 8f 00 f1  mov   $f1,#$00
1a9e: 8f 66 fa  mov   $fa,#$66
1aa1: 8f 60 fb  mov   $fb,#$60
1aa4: 8f 33 f1  mov   $f1,#$33
1aa7: 8f 00 f4  mov   $f4,#$00
1aaa: 8f 00 f5  mov   $f5,#$00
1aad: 8f 00 f6  mov   $f6,#$00
1ab0: 8f 00 f7  mov   $f7,#$00
1ab3: 8f 00 19  mov   $19,#$00
1ab6: 8f 00 1a  mov   $1a,#$00
1ab9: 8f 00 1b  mov   $1b,#$00
1abc: 8f 00 1c  mov   $1c,#$00
1abf: 6f        ret

1ac0: 8f 6c f2  mov   $f2,#$6c
1ac3: 8f 60 f3  mov   $f3,#$60
1ac6: 8f 5d f2  mov   $f2,#$5d
1ac9: e8 1f     mov   a,#$1f
1acb: c4 f3     mov   $f3,a
1acd: cd 28     mov   x,#$28
1acf: f5 de 1a  mov   a,$1ade+x
1ad2: fd        mov   y,a
1ad3: f5 df 1a  mov   a,$1adf+x
1ad6: 3f 08 1b  call  $1b08
1ad9: 1d        dec   x
1ada: 1d        dec   x
1adb: 10 f2     bpl   $1acf
1add: 6f        ret

1ade: 6c 20 2d  
1ae1: 00        
1ae2: 3d        
1ae3: 00        
1ae4: 0c 60 1c  
1ae7: 60        
1ae8: 7d        
1ae9: 00        
1aea: 0d        
1aeb: 00        
1aec: 4d        
1aed: 00        
1aee: 2c 00 3c  
1af1: 00        
1af2: 6d        
1af3: f8 5c     
1af5: 00        
1af6: 4c 00 0f  
1af9: 7f        
1afa: 1f 00 2f  
1afd: 00        
1afe: 3f 00 4f  
1b01: 00        
1b02: 5f 00 6f  
1b05: 00        
1b06: 7f        
1b07: 00        

1b08: cb f2     mov   $f2,y
1b0a: c4 f3     mov   $f3,a
1b0c: 6f        ret

1b0d: cb f2     mov   $f2,y
1b0f: e4 f3     mov   a,$f3
1b11: 6f        ret

1b12: dw $1b93
1b14: dw $1bb1
1b16: dw $1bbd
1b18: dw $1bcc
1b1a: dw $1beb
1b1c: dw $1cae
1b1e: dw $1ce1
1b20: dw $1b4d
1b22: dw $1b77
1b24: dw $1b87
1b26: dw $1b62
1b28: dw $1cf4
1b2a: dw $1d19
1b2c: dw $1d37
1b2e: dw $1d40

1b30: e8 00     mov   a,#$00
1b32: c4 00     mov   $00,a
1b34: e4 f4     mov   a,$f4
1b36: 64 f4     cmp   a,$f4
1b38: d0 fa     bne   $1b34
1b3a: 44 19     eor   a,$19
1b3c: 10 f6     bpl   $1b34
1b3e: e4 f4     mov   a,$f4
1b40: 64 f4     cmp   a,$f4
1b42: d0 fa     bne   $1b3e
1b44: c4 19     mov   $19,a
1b46: 28 7f     and   a,#$7f
1b48: 1c        asl   a
1b49: 5d        mov   x,a
1b4a: 1f 12 1b  jmp   ($1b12+x)

1b4d: e4 f5     mov   a,$f5
1b4f: d7 00     mov   ($00)+y,a
1b51: dc        dec   y
1b52: e4 f6     mov   a,$f6
1b54: d7 00     mov   ($00)+y,a
1b56: dc        dec   y
1b57: e4 f7     mov   a,$f7
1b59: d7 00     mov   ($00)+y,a
1b5b: e4 19     mov   a,$19
1b5d: c4 f4     mov   $f4,a
1b5f: dc        dec   y
1b60: 2f d2     bra   $1b34
1b62: f7 00     mov   a,($00)+y
1b64: c4 f5     mov   $f5,a
1b66: dc        dec   y
1b67: f7 00     mov   a,($00)+y
1b69: c4 f6     mov   $f6,a
1b6b: dc        dec   y
1b6c: f7 00     mov   a,($00)+y
1b6e: c4 f7     mov   $f7,a
1b70: e4 19     mov   a,$19
1b72: c4 f4     mov   $f4,a
1b74: dc        dec   y
1b75: 2f bd     bra   $1b34
1b77: e4 f5     mov   a,$f5
1b79: d7 00     mov   ($00)+y,a
1b7b: e4 19     mov   a,$19
1b7d: c4 f4     mov   $f4,a
1b7f: dd        mov   a,y
1b80: d0 02     bne   $1b84
1b82: 8b 01     dec   $01
1b84: dc        dec   y
1b85: 2f ad     bra   $1b34
1b87: e4 f7     mov   a,$f7
1b89: c4 01     mov   $01,a
1b8b: eb f6     mov   y,$f6
1b8d: e4 19     mov   a,$19
1b8f: c4 f4     mov   $f4,a
1b91: 2f a1     bra   $1b34
1b93: e4 f6     mov   a,$f6
1b95: d7 00     mov   ($00)+y,a
1b97: fc        inc   y
1b98: e4 f7     mov   a,$f7
1b9a: d7 00     mov   ($00)+y,a
1b9c: e4 19     mov   a,$19
1b9e: c4 f4     mov   $f4,a
1ba0: fc        inc   y
1ba1: d0 91     bne   $1b34
1ba3: ab 01     inc   $01
1ba5: e4 01     mov   a,$01
1ba7: 65 e1 05  cmp   a,$05e1
1baa: 90 88     bcc   $1b34
1bac: c5 e1 05  mov   $05e1,a
1baf: 2f 83     bra   $1b34
1bb1: e4 f7     mov   a,$f7
1bb3: c4 01     mov   $01,a
1bb5: eb f6     mov   y,$f6
1bb7: e4 19     mov   a,$19
1bb9: c4 f4     mov   $f4,a
1bbb: 2f e8     bra   $1ba5
1bbd: e4 a1     mov   a,$a1
1bbf: c4 f6     mov   $f6,a
1bc1: e8 00     mov   a,#$00
1bc3: c4 f7     mov   $f7,a
1bc5: e4 19     mov   a,$19
1bc7: c4 f4     mov   $f4,a
1bc9: 5f 34 1b  jmp   $1b34

1bcc: e8 65     mov   a,#$65
1bce: c4 f6     mov   $f6,a
1bd0: e4 19     mov   a,$19
1bd2: c4 f4     mov   $f4,a
1bd4: e4 f6     mov   a,$f6
1bd6: 68 00     cmp   a,#$00
1bd8: d0 fa     bne   $1bd4
1bda: c4 f6     mov   $f6,a
1bdc: c4 1b     mov   $1b,a
1bde: c4 f7     mov   $f7,a
1be0: c4 1c     mov   $1c,a
1be2: c4 f4     mov   $f4,a
1be4: c4 19     mov   $19,a
1be6: c4 f5     mov   $f5,a
1be8: c4 1a     mov   $1a,a
1bea: 6f        ret

1beb: 3f cc 1b  call  $1bcc
1bee: 60        clrc
1bef: e5 04 08  mov   a,$0804
1bf2: 88 01     adc   a,#$01
1bf4: c5 14 0f  mov   $0f14,a
1bf7: e5 05 08  mov   a,$0805
1bfa: 88 00     adc   a,#$00
1bfc: c5 15 0f  mov   $0f15,a
1bff: 60        clrc
1c00: e5 04 08  mov   a,$0804
1c03: 88 02     adc   a,#$02
1c05: c5 1c 0f  mov   $0f1c,a
1c08: e5 05 08  mov   a,$0805
1c0b: 88 00     adc   a,#$00
1c0d: c5 1d 0f  mov   $0f1d,a
1c10: 60        clrc
1c11: e5 04 08  mov   a,$0804
1c14: 88 03     adc   a,#$03
1c16: c5 21 0f  mov   $0f21,a
1c19: e5 05 08  mov   a,$0805
1c1c: 88 00     adc   a,#$00
1c1e: c5 22 0f  mov   $0f22,a
1c21: 60        clrc
1c22: e5 06 08  mov   a,$0806
1c25: 88 01     adc   a,#$01
1c27: c5 d8 08  mov   $08d8,a
1c2a: e5 07 08  mov   a,$0807
1c2d: 88 00     adc   a,#$00
1c2f: c5 d9 08  mov   $08d9,a
1c32: 60        clrc
1c33: e5 06 08  mov   a,$0806
1c36: 88 02     adc   a,#$02
1c38: c5 e1 09  mov   $09e1,a
1c3b: e5 07 08  mov   a,$0807
1c3e: 88 00     adc   a,#$00
1c40: c5 e2 09  mov   $09e2,a
1c43: 60        clrc
1c44: e5 06 08  mov   a,$0806
1c47: 88 03     adc   a,#$03
1c49: c5 e6 09  mov   $09e6,a
1c4c: e5 07 08  mov   a,$0807
1c4f: 88 00     adc   a,#$00
1c51: c5 e7 09  mov   $09e7,a
1c54: e5 00 08  mov   a,$0800
1c57: c5 a8 0e  mov   $0ea8,a
1c5a: e5 01 08  mov   a,$0801
1c5d: c5 a9 0e  mov   $0ea9,a
1c60: 60        clrc
1c61: e5 00 08  mov   a,$0800
1c64: 88 01     adc   a,#$01
1c66: c5 ad 0e  mov   $0ead,a
1c69: e5 01 08  mov   a,$0801
1c6c: 88 00     adc   a,#$00
1c6e: c5 ae 0e  mov   $0eae,a
1c71: e5 03 08  mov   a,$0803
1c74: c5 ca 1a  mov   $1aca,a
1c77: e5 08 08  mov   a,$0808
1c7a: c5 e2 08  mov   $08e2,a
1c7d: e5 09 08  mov   a,$0809
1c80: c5 e3 08  mov   $08e3,a
1c83: e5 0a 08  mov   a,$080a
1c86: c5 0c 0f  mov   $0f0c,a
1c89: e5 0b 08  mov   a,$080b
1c8c: c5 0d 0f  mov   $0f0d,a
1c8f: e5 0c 08  mov   a,$080c
1c92: c5 9e 0e  mov   $0e9e,a
1c95: e5 0d 08  mov   a,$080d
1c98: c5 9f 0e  mov   $0e9f,a
1c9b: e5 0e 08  mov   a,$080e
1c9e: c5 b5 12  mov   $12b5,a
1ca1: c5 40 0c  mov   $0c40,a
1ca4: e5 0f 08  mov   a,$080f
1ca7: c5 b6 12  mov   $12b6,a
1caa: c5 41 0c  mov   $0c41,a
1cad: 6f        ret

1cae: e4 9d     mov   a,$9d
1cb0: c4 f6     mov   $f6,a
1cb2: e4 9e     mov   a,$9e
1cb4: c4 f7     mov   $f7,a
1cb6: e4 19     mov   a,$19
1cb8: c4 f4     mov   $f4,a
1cba: e4 f4     mov   a,$f4
1cbc: 64 f4     cmp   a,$f4
1cbe: d0 fa     bne   $1cba
1cc0: 44 19     eor   a,$19
1cc2: 10 f6     bpl   $1cba
1cc4: e4 f4     mov   a,$f4
1cc6: c4 19     mov   $19,a
1cc8: e4 9f     mov   a,$9f
1cca: c4 f6     mov   $f6,a
1ccc: e4 a0     mov   a,$a0
1cce: c4 f7     mov   $f7,a
1cd0: e4 19     mov   a,$19
1cd2: c4 f4     mov   $f4,a
1cd4: e8 00     mov   a,#$00
1cd6: c4 9d     mov   $9d,a
1cd8: c4 9e     mov   $9e,a
1cda: c4 9f     mov   $9f,a
1cdc: c4 a0     mov   $a0,a
1cde: 5f 34 1b  jmp   $1b34

1ce1: 8f 6d f2  mov   $f2,#$6d
1ce4: e4 f3     mov   a,$f3
1ce6: c4 f7     mov   $f7,a
1ce8: e5 e0 05  mov   a,$05e0
1ceb: c4 f6     mov   $f6,a
1ced: e4 19     mov   a,$19
1cef: c4 f4     mov   $f4,a
1cf1: 5f 34 1b  jmp   $1b34

1cf4: e4 f6     mov   a,$f6
1cf6: 2d        push  a
1cf7: e4 19     mov   a,$19
1cf9: c4 f4     mov   $f4,a
1cfb: 8f 6c f2  mov   $f2,#$6c
1cfe: ae        pop   a
1cff: 28 ff     and   a,#$ff
1d01: d0 0e     bne   $1d11
1d03: e4 f3     mov   a,$f3
1d05: c5 e2 05  mov   $05e2,a
1d08: 28 df     and   a,#$df
1d0a: 08 20     or    a,#$20
1d0c: c4 f3     mov   $f3,a
1d0e: 5f 34 1b  jmp   $1b34

1d11: e5 e2 05  mov   a,$05e2
1d14: c4 f3     mov   $f3,a
1d16: 5f 34 1b  jmp   $1b34

1d19: e4 19     mov   a,$19
1d1b: c4 f4     mov   $f4,a
1d1d: e4 a1     mov   a,$a1
1d1f: 28 03     and   a,#$03
1d21: f0 11     beq   $1d34
1d23: e4 00     mov   a,$00
1d25: 2d        push  a
1d26: e4 01     mov   a,$01
1d28: 2d        push  a
1d29: 6d        push  y
1d2a: 3f 59 0a  call  $0a59
1d2d: ee        pop   y
1d2e: ae        pop   a
1d2f: c4 01     mov   $01,a
1d31: ae        pop   a
1d32: c4 00     mov   $00,a
1d34: 5f 34 1b  jmp   $1b34

1d37: e4 19     mov   a,$19
1d39: c4 f4     mov   $f4,a
1d3b: e4 fd     mov   a,$fd
1d3d: 5f 34 1b  jmp   $1b34

1d40: e4 19     mov   a,$19
1d42: c4 f4     mov   $f4,a
1d44: 5f 34 1b  jmp   $1b34
