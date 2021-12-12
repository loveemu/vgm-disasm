0800: db $00,$22,$00,$24,$10,$94,$ca,$94
0808: db $9c,$98,$1c,$99,$9c,$99,$1c,$9a
0810: db $00,$00

0812: c0        di
0813: 20        clrp
0814: cd ff     mov   x,#$ff
0816: bd        mov   sp,x
0817: e8 00     mov   a,#$00
0819: 5d        mov   x,a
081a: af        mov   (x)+,a
081b: c8 e0     cmp   x,#$e0
081d: d0 fb     bne   $081a
081f: e8 00     mov   a,#$00
0821: 5d        mov   x,a
0822: d5 00 01  mov   $0100+x,a
0825: d5 00 02  mov   $0200+x,a
0828: d5 00 03  mov   $0300+x,a
082b: d5 00 04  mov   $0400+x,a
082e: d5 00 05  mov   $0500+x,a
0831: d5 00 06  mov   $0600+x,a
0834: d5 00 07  mov   $0700+x,a
0837: 3d        inc   x
0838: d0 e8     bne   $0822
083a: 3f 2e 1e  call  $1e2e
083d: 3f 00 09  call  $0900
0840: 8f 68 f6  mov   $f6,#$68
0843: 8f 09 f7  mov   $f7,#$09
0846: 3f 55 08  call  $0855
0849: 3f 78 08  call  $0878
084c: 3f 60 0e  call  $0e60
084f: 3f 01 0a  call  $0a01
0852: 5f 46 08  jmp   $0846

0855: e4 f4     mov   a,$f4
0857: 44 19     eor   a,$19
0859: 10 0b     bpl   $0866
085b: e4 f4     mov   a,$f4
085d: c4 19     mov   $19,a
085f: c4 f4     mov   $f4,a
0861: 08 80     or    a,#$80
0863: c5 00 02  mov   $0200,a
0866: e4 f5     mov   a,$f5
0868: 44 1a     eor   a,$1a
086a: 10 0b     bpl   $0877
086c: e4 f5     mov   a,$f5
086e: c4 1a     mov   $1a,a
0870: c4 f5     mov   $f5,a
0872: 08 80     or    a,#$80
0874: c5 02 02  mov   $0202,a
0877: 6f        ret

0878: e5 00 02  mov   a,$0200
087b: 30 01     bmi   $087e
087d: 6f        ret

087e: 28 7f     and   a,#$7f
0880: c5 00 02  mov   $0200,a
0883: 28 3f     and   a,#$3f
0885: 68 37     cmp   a,#$37
0887: 90 19     bcc   $08a2
0889: a8 37     sbc   a,#$37
088b: 1c        asl   a
088c: 5d        mov   x,a
088d: 1f 90 08  jmp   ($0890+x)

0890: dw $08ca
0892: dw $08eb
0894: dw $08e7
0896: dw $08e3
0898: dw $08df
089a: dw $08f3
089c: dw $08ef
089e: dw $08f7
08a0: dw $0900

08a2: 3f c5 08  call  $08c5
08a5: 68 ff     cmp   a,#$ff
08a7: d0 01     bne   $08aa
08a9: 6f        ret

08aa: 8f 00 17  mov   $17,#$00
08ad: 2d        push  a
08ae: c5 01 02  mov   $0201,a
08b1: e5 00 02  mov   a,$0200
08b4: 28 40     and   a,#$40
08b6: ae        pop   a
08b7: f0 03     beq   $08bc
08b9: 8f ff 17  mov   $17,#$ff
08bc: 65 cb 94  cmp   a,$94cb
08bf: b0 03     bcs   $08c4
08c1: 5f 63 09  jmp   $0963

08c4: 6f        ret

08c5: fd        mov   y,a
08c6: f6 9c 98  mov   a,$989c+y
08c9: 6f        ret

08ca: 3f 00 09  call  $0900
08cd: 8f f0 f1  mov   $f1,#$f0
08d0: 8f 00 f4  mov   $f4,#$00
08d3: 8f 00 f5  mov   $f5,#$00
08d6: 8f 00 f6  mov   $f6,#$00
08d9: 8f 00 f7  mov   $f7,#$00
08dc: 5f c0 ff  jmp   $ffc0

08df: 8f fe 66  mov   $66,#$fe
08e2: 6f        ret

08e3: 8f 02 66  mov   $66,#$02
08e6: 6f        ret

08e7: 8f f0 68  mov   $68,#$f0
08ea: 6f        ret

08eb: 8f 03 68  mov   $68,#$03
08ee: 6f        ret

08ef: 8f 00 65  mov   $65,#$00
08f2: 6f        ret

08f3: 8f ff 65  mov   $65,#$ff
08f6: 6f        ret

08f7: 3f 00 09  call  $0900
08fa: 3f f2 1f  call  $1ff2
08fd: 5f 12 08  jmp   $0812

0900: 3f 5a 1f  call  $1f5a
0903: e8 00     mov   a,#$00
0905: c5 01 02  mov   $0201,a
0908: c5 00 02  mov   $0200,a
090b: c4 17     mov   $17,a
090d: e8 80     mov   a,#$80
090f: c5 03 02  mov   $0203,a
0912: e8 ff     mov   a,#$ff
0914: c4 67     mov   $67,a
0916: c4 69     mov   $69,a
0918: c4 3f     mov   $3f,a
091a: c5 04 02  mov   $0204,a
091d: e5 10 08  mov   a,$0810
0920: 05 11 08  or    a,$0811
0923: c4 65     mov   $65,a
0925: e8 00     mov   a,#$00
0927: c4 66     mov   $66,a
0929: c4 68     mov   $68,a
092b: c4 34     mov   $34,a
092d: c4 30     mov   $30,a
092f: c4 20     mov   $20,a
0931: c4 21     mov   $21,a
0933: c4 22     mov   $22,a
0935: c4 23     mov   $23,a
0937: c4 24     mov   $24,a
0939: c4 25     mov   $25,a
093b: c4 26     mov   $26,a
093d: c4 27     mov   $27,a
093f: c4 3c     mov   $3c,a
0941: c4 3d     mov   $3d,a
0943: cd 0f     mov   x,#$0f
0945: d5 15 02  mov   $0215+x,a
0948: 1d        dec   x
0949: 10 fa     bpl   $0945
094b: cd 07     mov   x,#$07
094d: 7d        mov   a,x
094e: 9f        xcn   a
094f: 2d        push  a
0950: 08 07     or    a,#$07
0952: c4 f2     mov   $f2,a
0954: 8f 9e f3  mov   $f3,#$9e
0957: ae        pop   a
0958: 08 05     or    a,#$05
095a: c4 f2     mov   $f2,a
095c: 8f 00 f3  mov   $f3,#$00
095f: 1d        dec   x
0960: 10 eb     bpl   $094d
0962: 6f        ret

0963: 2d        push  a
0964: 3f 0d 09  call  $090d
0967: 3f 50 1e  call  $1e50
096a: 3f 5a 1f  call  $1f5a
096d: e8 00     mov   a,#$00
096f: c5 a5 02  mov   $02a5,a
0972: c5 a6 02  mov   $02a6,a
0975: c5 a7 02  mov   $02a7,a
0978: c5 a8 02  mov   $02a8,a
097b: c5 a9 02  mov   $02a9,a
097e: c5 ab 02  mov   $02ab,a
0981: c5 aa 02  mov   $02aa,a
0984: 9c        dec   a
0985: c4 3f     mov   $3f,a
0987: bc        inc   a
0988: c4 3c     mov   $3c,a
098a: c4 3d     mov   $3d,a
098c: ae        pop   a
098d: 1c        asl   a
098e: 5d        mov   x,a
098f: f5 cc 94  mov   a,$94cc+x
0992: c4 02     mov   $02,a
0994: f5 cd 94  mov   a,$94cd+x
0997: c4 03     mov   $03,a
0999: 8d 00     mov   y,#$00
099b: cd 00     mov   x,#$00
099d: 8d 00     mov   y,#$00
099f: f7 02     mov   a,($02)+y
09a1: c4 04     mov   $04,a
09a3: 3a 02     incw  $02
09a5: f7 02     mov   a,($02)+y
09a7: 68 ff     cmp   a,#$ff
09a9: f0 3c     beq   $09e7
09ab: c4 05     mov   $05,a
09ad: 3a 02     incw  $02
09af: e4 03     mov   a,$03
09b1: fd        mov   y,a
09b2: d5 15 02  mov   $0215+x,a
09b5: e4 02     mov   a,$02
09b7: d5 05 02  mov   $0205+x,a
09ba: 7a 04     addw  ya,$04
09bc: da 02     movw  $02,ya
09be: 40        setp
09bf: e8 00     mov   a,#$00
09c1: d4 06     mov   $06+x,a
09c3: d4 16     mov   $16+x,a
09c5: d4 26     mov   $26+x,a
09c7: d4 36     mov   $36+x,a
09c9: 20        clrp
09ca: d5 45 02  mov   $0245+x,a
09cd: d5 35 02  mov   $0235+x,a
09d0: d5 55 02  mov   $0255+x,a
09d3: d5 25 02  mov   $0225+x,a
09d6: d5 75 02  mov   $0275+x,a
09d9: d5 85 02  mov   $0285+x,a
09dc: d5 95 02  mov   $0295+x,a
09df: 3d        inc   x
09e0: c8 10     cmp   x,#$10
09e2: d0 b9     bne   $099d
09e4: 5f f4 09  jmp   $09f4

09e7: e8 00     mov   a,#$00
09e9: d5 15 02  mov   $0215+x,a
09ec: d5 05 02  mov   $0205+x,a
09ef: 3d        inc   x
09f0: c8 10     cmp   x,#$10
09f2: d0 f3     bne   $09e7
09f4: e8 00     mov   a,#$00
09f6: c5 ac 02  mov   $02ac,a
09f9: 9c        dec   a
09fa: c5 04 02  mov   $0204,a
09fd: c5 03 02  mov   $0203,a
0a00: 6f        ret

0a01: fa fe 6b  mov   ($6b),($fe)
0a04: e4 fd     mov   a,$fd
0a06: f0 61     beq   $0a69
0a08: ab 63     inc   $63
0a0a: 60        clrc
0a0b: e4 66     mov   a,$66
0a0d: 30 08     bmi   $0a17
0a0f: 84 67     adc   a,$67
0a11: 90 0a     bcc   $0a1d
0a13: e8 ff     mov   a,#$ff
0a15: 2f 06     bra   $0a1d
0a17: 84 67     adc   a,$67
0a19: b0 02     bcs   $0a1d
0a1b: e8 00     mov   a,#$00
0a1d: e5 03 02  mov   a,$0203
0a20: 60        clrc
0a21: 85 04 02  adc   a,$0204
0a24: c5 04 02  mov   $0204,a
0a27: 90 3a     bcc   $0a63
0a29: e8 00     mov   a,#$00
0a2b: c4 16     mov   $16,a
0a2d: c4 6d     mov   $6d,a
0a2f: cd 0f     mov   x,#$0f
0a31: f5 15 02  mov   a,$0215+x
0a34: f0 0b     beq   $0a41
0a36: 3f 6d 0a  call  $0a6d
0a39: f5 15 02  mov   a,$0215+x
0a3c: f0 03     beq   $0a41
0a3e: 8f ff 16  mov   $16,#$ff
0a41: 1d        dec   x
0a42: 10 ed     bpl   $0a31
0a44: 3f b2 1c  call  $1cb2
0a47: e4 18     mov   a,$18
0a49: 10 07     bpl   $0a52
0a4b: 28 7f     and   a,#$7f
0a4d: c4 18     mov   $18,a
0a4f: 5f 5f 0a  jmp   $0a5f

0a52: e4 16     mov   a,$16
0a54: d0 0d     bne   $0a63
0a56: e4 17     mov   a,$17
0a58: f0 09     beq   $0a63
0a5a: e5 01 02  mov   a,$0201
0a5d: 28 3f     and   a,#$3f
0a5f: 3f 8d 09  call  $098d
0a62: 6f        ret

0a63: 3f ff 0e  call  $0eff
0a66: 3f 82 1e  call  $1e82
0a69: 3f 98 0a  call  $0a98
0a6c: 6f        ret

0a6d: f5 25 02  mov   a,$0225+x
0a70: f0 06     beq   $0a78
0a72: 9c        dec   a
0a73: d5 25 02  mov   $0225+x,a
0a76: d0 0f     bne   $0a87
0a78: 4d        push  x
0a79: 3f a8 18  call  $18a8
0a7c: ce        pop   x
0a7d: f5 15 02  mov   a,$0215+x
0a80: f0 05     beq   $0a87
0a82: f5 25 02  mov   a,$0225+x
0a85: f0 f1     beq   $0a78
0a87: 6f        ret

0a88: e4 00     mov   a,$00
0a8a: 68 a0     cmp   a,#$a0
0a8c: 90 01     bcc   $0a8f
0a8e: 6f        ret

0a8f: 28 0f     and   a,#$0f
0a91: 5d        mov   x,a
0a92: e4 02     mov   a,$02
0a94: 3f 17 0e  call  $0e17
0a97: 6f        ret

0a98: 3f a0 0d  call  $0da0
0a9b: e4 3f     mov   a,$3f
0a9d: 48 ff     eor   a,#$ff
0a9f: 24 3d     and   a,$3d
0aa1: c4 12     mov   $12,a
0aa3: e4 30     mov   a,$30
0aa5: 04 40     or    a,$40
0aa7: c4 13     mov   $13,a
0aa9: cd 07     mov   x,#$07
0aab: e4 3c     mov   a,$3c
0aad: d8 15     mov   $15,x
0aaf: 0b 13     asl   $13
0ab1: 90 05     bcc   $0ab8
0ab3: 1c        asl   a
0ab4: 2d        push  a
0ab5: 5f d3 0a  jmp   $0ad3

0ab8: 1c        asl   a
0ab9: 2d        push  a
0aba: b0 0c     bcs   $0ac8
0abc: 7d        mov   a,x
0abd: 9f        xcn   a
0abe: 08 08     or    a,#$08
0ac0: c4 f2     mov   $f2,a
0ac2: e4 f3     mov   a,$f3
0ac4: 68 02     cmp   a,#$02
0ac6: 90 0b     bcc   $0ad3
0ac8: 3f f8 0a  call  $0af8
0acb: 3f 4b 0c  call  $0c4b
0ace: 3f 2a 0b  call  $0b2a
0ad1: f8 15     mov   x,$15
0ad3: f4 41     mov   a,$41+x
0ad5: 28 0f     and   a,#$0f
0ad7: fd        mov   y,a
0ad8: f6 2f 03  mov   a,$032f+y
0adb: 68 01     cmp   a,#$01
0add: 2b 33     rol   $33
0adf: ae        pop   a
0ae0: 0b 14     asl   $14
0ae2: 0b 12     asl   $12
0ae4: 1d        dec   x
0ae5: 10 c6     bpl   $0aad
0ae7: 29 30 34  and   ($34),($30)
0aea: e4 30     mov   a,$30
0aec: 48 ff     eor   a,#$ff
0aee: 24 33     and   a,$33
0af0: 04 34     or    a,$34
0af2: c4 33     mov   $33,a
0af4: 3f c7 0d  call  $0dc7
0af7: 6f        ret

0af8: f4 51     mov   a,$51+x
0afa: c4 61     mov   $61,a
0afc: f4 59     mov   a,$59+x
0afe: c4 62     mov   $62,a
0b00: 8d 0d     mov   y,#$0d
0b02: f7 61     mov   a,($61)+y
0b04: c4 0e     mov   $0e,a
0b06: 8d 0e     mov   y,#$0e
0b08: f7 61     mov   a,($61)+y
0b0a: c4 0f     mov   $0f,a
0b0c: e4 12     mov   a,$12
0b0e: 10 01     bpl   $0b11
0b10: 6f        ret

0b11: 8d 01     mov   y,#$01
0b13: f7 61     mov   a,($61)+y
0b15: c4 0c     mov   $0c,a
0b17: 8d 00     mov   y,#$00
0b19: f7 61     mov   a,($61)+y
0b1b: c4 0d     mov   $0d,a
0b1d: 8d 08     mov   y,#$08
0b1f: f7 61     mov   a,($61)+y
0b21: c4 10     mov   $10,a
0b23: 8d 07     mov   y,#$07
0b25: f7 61     mov   a,($61)+y
0b27: c4 11     mov   $11,a
0b29: 6f        ret

0b2a: 3f cd 0b  call  $0bcd
0b2d: f5 35 21  mov   a,$2135+x
0b30: 2d        push  a
0b31: f4 41     mov   a,$41+x
0b33: 5d        mov   x,a
0b34: 28 70     and   a,#$70
0b36: 9f        xcn   a
0b37: fd        mov   y,a
0b38: fc        inc   y
0b39: f6 c4 0b  mov   a,$0bc4+y
0b3c: fd        mov   y,a
0b3d: e4 67     mov   a,$67
0b3f: cf        mul   ya
0b40: 7d        mov   a,x
0b41: 28 0f     and   a,#$0f
0b43: 5d        mov   x,a
0b44: 60        clrc
0b45: f5 ef 02  mov   a,$02ef+x
0b48: 95 ff 03  adc   a,$03ff+x
0b4b: cf        mul   ya
0b4c: cb 0c     mov   $0c,y
0b4e: d8 0d     mov   $0d,x
0b50: f5 1f 03  mov   a,$031f+x
0b53: 2d        push  a
0b54: 48 ff     eor   a,#$ff
0b56: 28 7f     and   a,#$7f
0b58: 68 40     cmp   a,#$40
0b5a: 90 02     bcc   $0b5e
0b5c: e8 3f     mov   a,#$3f
0b5e: 1c        asl   a
0b5f: c4 04     mov   $04,a
0b61: ae        pop   a
0b62: 68 40     cmp   a,#$40
0b64: 90 02     bcc   $0b68
0b66: e8 3f     mov   a,#$3f
0b68: 1c        asl   a
0b69: c4 05     mov   $05,a
0b6b: e4 65     mov   a,$65
0b6d: f0 0a     beq   $0b79
0b6f: 60        clrc
0b70: e4 04     mov   a,$04
0b72: 84 05     adc   a,$05
0b74: 5c        lsr   a
0b75: c4 04     mov   $04,a
0b77: c4 05     mov   $05,a
0b79: e4 04     mov   a,$04
0b7b: cf        mul   ya
0b7c: e8 00     mov   a,#$00
0b7e: 04 02     or    a,$02
0b80: da f2     movw  $f2,ya
0b82: e4 05     mov   a,$05
0b84: eb 0c     mov   y,$0c
0b86: cf        mul   ya
0b87: ab f2     inc   $f2
0b89: cb f3     mov   $f3,y
0b8b: f8 0d     mov   x,$0d
0b8d: ab f2     inc   $f2
0b8f: fa 00 f3  mov   ($f3),($00)
0b92: ab f2     inc   $f2
0b94: fa 01 f3  mov   ($f3),($01)
0b97: ae        pop   a
0b98: 24 3c     and   a,$3c
0b9a: d0 01     bne   $0b9d
0b9c: 6f        ret

0b9d: ab f2     inc   $f2
0b9f: 8d 0c     mov   y,#$0c
0ba1: f7 61     mov   a,($61)+y
0ba3: 5d        mov   x,a
0ba4: f5 1c 9a  mov   a,$9a1c+x
0ba7: c4 f3     mov   $f3,a
0ba9: f8 0d     mov   x,$0d
0bab: ab f2     inc   $f2
0bad: 8d 05     mov   y,#$05
0baf: f7 61     mov   a,($61)+y
0bb1: c4 f3     mov   $f3,a
0bb3: ab f2     inc   $f2
0bb5: 8d 04     mov   y,#$04
0bb7: f7 61     mov   a,($61)+y
0bb9: c4 f3     mov   $f3,a
0bbb: ab f2     inc   $f2
0bbd: 8d 06     mov   y,#$06
0bbf: f7 61     mov   a,($61)+y
0bc1: c4 f3     mov   $f3,a
0bc3: 6f        ret

0bc4: db $00,$40,$62,$84,$a6,$b8,$ca,$ec,$ff

0bcd: 4d        push  x
0bce: f4 49     mov   a,$49+x
0bd0: c4 00     mov   $00,a
0bd2: 7d        mov   a,x
0bd3: fd        mov   y,a
0bd4: 9f        xcn   a
0bd5: c4 02     mov   $02,a
0bd7: f4 41     mov   a,$41+x
0bd9: 28 0f     and   a,#$0f
0bdb: 5d        mov   x,a
0bdc: 60        clrc
0bdd: e4 0e     mov   a,$0e
0bdf: 96 df 03  adc   a,$03df+y
0be2: c4 0e     mov   $0e,a
0be4: e4 0f     mov   a,$0f
0be6: 96 ef 03  adc   a,$03ef+y
0be9: c4 0f     mov   $0f,a
0beb: 80        setc
0bec: f5 cf 02  mov   a,$02cf+x
0bef: a8 40     sbc   a,#$40
0bf1: c4 04     mov   $04,a
0bf3: 68 80     cmp   a,#$80
0bf5: a4 04     sbc   a,$04
0bf7: 48 ff     eor   a,#$ff
0bf9: c4 05     mov   $05,a
0bfb: f5 cf 03  mov   a,$03cf+x
0bfe: fd        mov   y,a
0bff: f5 bf 03  mov   a,$03bf+x
0c02: 7a 0e     addw  ya,$0e
0c04: 7a 04     addw  ya,$04
0c06: c4 04     mov   $04,a
0c08: dd        mov   a,y
0c09: 60        clrc
0c0a: 84 00     adc   a,$00
0c0c: 8d 00     mov   y,#$00
0c0e: cd 0c     mov   x,#$0c
0c10: 9e        div   ya,x
0c11: 2d        push  a
0c12: dd        mov   a,y
0c13: 5d        mov   x,a
0c14: f5 49 21  mov   a,$2149+x
0c17: eb 04     mov   y,$04
0c19: cf        mul   ya
0c1a: cb 0c     mov   $0c,y
0c1c: 8f 00 0d  mov   $0d,#$00
0c1f: f5 3d 21  mov   a,$213d+x
0c22: eb 04     mov   y,$04
0c24: cf        mul   ya
0c25: 7a 0c     addw  ya,$0c
0c27: 60        clrc
0c28: 95 61 21  adc   a,$2161+x
0c2b: c4 00     mov   $00,a
0c2d: dd        mov   a,y
0c2e: 95 55 21  adc   a,$2155+x
0c31: c4 01     mov   $01,a
0c33: ae        pop   a
0c34: 48 ff     eor   a,#$ff
0c36: 80        setc
0c37: 88 06     adc   a,#$06
0c39: f0 0e     beq   $0c49
0c3b: 68 06     cmp   a,#$06
0c3d: b0 0a     bcs   $0c49
0c3f: fd        mov   y,a
0c40: e4 01     mov   a,$01
0c42: 5c        lsr   a
0c43: 6b 00     ror   $00
0c45: fe fb     dbnz  y,$0c42
0c47: c4 01     mov   $01,a
0c49: ce        pop   x
0c4a: 6f        ret

0c4b: e4 12     mov   a,$12
0c4d: 10 01     bpl   $0c50
0c4f: 6f        ret

0c50: 7d        mov   a,x
0c51: fd        mov   y,a
0c52: f4 41     mov   a,$41+x
0c54: 28 0f     and   a,#$0f
0c56: 5d        mov   x,a
0c57: 6d        push  y
0c58: 3f 29 0d  call  $0d29
0c5b: ee        pop   y
0c5c: 3f 92 0c  call  $0c92
0c5f: 3f 65 0c  call  $0c65
0c62: f8 15     mov   x,$15
0c64: 6f        ret

0c65: f5 bf 02  mov   a,$02bf+x
0c68: bc        inc   a
0c69: 1c        asl   a
0c6a: fd        mov   y,a
0c6b: f5 6f 03  mov   a,$036f+x
0c6e: 10 21     bpl   $0c91
0c70: 28 7f     and   a,#$7f
0c72: d5 6f 03  mov   $036f+x,a
0c75: 80        setc
0c76: a8 40     sbc   a,#$40
0c78: 1c        asl   a
0c79: 10 0e     bpl   $0c89
0c7b: 48 ff     eor   a,#$ff
0c7d: bc        inc   a
0c7e: cf        mul   ya
0c7f: da 04     movw  $04,ya
0c81: e8 00     mov   a,#$00
0c83: fd        mov   y,a
0c84: 9a 04     subw  ya,$04
0c86: 5f 8a 0c  jmp   $0c8a

0c89: cf        mul   ya
0c8a: d5 bf 03  mov   $03bf+x,a
0c8d: dd        mov   a,y
0c8e: d5 cf 03  mov   $03cf+x,a
0c91: 6f        ret

0c92: e4 0c     mov   a,$0c
0c94: d0 03     bne   $0c99
0c96: 5f 1c 0d  jmp   $0d1c

0c99: e4 6b     mov   a,$6b
0c9b: d0 03     bne   $0ca0
0c9d: 5f 1b 0d  jmp   $0d1b

0ca0: e4 63     mov   a,$63
0ca2: 28 01     and   a,#$01
0ca4: d0 03     bne   $0ca9
0ca6: 5f 1b 0d  jmp   $0d1b

0ca9: f5 af 02  mov   a,$02af+x
0cac: d0 2d     bne   $0cdb
0cae: f6 17 04  mov   a,$0417+y
0cb1: f0 07     beq   $0cba
0cb3: 9c        dec   a
0cb4: d6 17 04  mov   $0417+y,a
0cb7: 5f 1c 0d  jmp   $0d1c

0cba: f6 1f 04  mov   a,$041f+y
0cbd: f0 1c     beq   $0cdb
0cbf: 60        clrc
0cc0: f6 47 04  mov   a,$0447+y
0cc3: 96 2f 04  adc   a,$042f+y
0cc6: d6 47 04  mov   $0447+y,a
0cc9: f6 3f 04  mov   a,$043f+y
0ccc: 96 27 04  adc   a,$0427+y
0ccf: d6 3f 04  mov   $043f+y,a
0cd2: f6 1f 04  mov   a,$041f+y
0cd5: 9c        dec   a
0cd6: d6 1f 04  mov   $041f+y,a
0cd9: d0 05     bne   $0ce0
0cdb: e4 0c     mov   a,$0c
0cdd: d6 3f 04  mov   $043f+y,a
0ce0: 60        clrc
0ce1: f6 0f 04  mov   a,$040f+y
0ce4: 84 0d     adc   a,$0d
0ce6: d6 0f 04  mov   $040f+y,a
0ce9: c4 06     mov   $06,a
0ceb: 1c        asl   a
0cec: 1c        asl   a
0ced: 90 02     bcc   $0cf1
0cef: 48 ff     eor   a,#$ff
0cf1: 2d        push  a
0cf2: f6 3f 04  mov   a,$043f+y
0cf5: ee        pop   y
0cf6: 68 f1     cmp   a,#$f1
0cf8: 90 06     bcc   $0d00
0cfa: 28 0f     and   a,#$0f
0cfc: cf        mul   ya
0cfd: 5f 04 0d  jmp   $0d04

0d00: cf        mul   ya
0d01: dd        mov   a,y
0d02: 8d 00     mov   y,#$00
0d04: aa 06 e0  mov1  c,$0006,7
0d07: 90 07     bcc   $0d10
0d09: da 06     movw  $06,ya
0d0b: 8d 00     mov   y,#$00
0d0d: dd        mov   a,y
0d0e: 9a 06     subw  ya,$06
0d10: 4d        push  x
0d11: f8 15     mov   x,$15
0d13: d5 df 03  mov   $03df+x,a
0d16: dd        mov   a,y
0d17: d5 ef 03  mov   $03ef+x,a
0d1a: ce        pop   x
0d1b: 6f        ret

0d1c: 4d        push  x
0d1d: f8 15     mov   x,$15
0d1f: e8 00     mov   a,#$00
0d21: d5 df 03  mov   $03df+x,a
0d24: d5 ef 03  mov   $03ef+x,a
0d27: ce        pop   x
0d28: 6f        ret

0d29: e4 10     mov   a,$10
0d2b: f0 69     beq   $0d96
0d2d: e4 6b     mov   a,$6b
0d2f: f0 65     beq   $0d96
0d31: e4 63     mov   a,$63
0d33: 28 01     and   a,#$01
0d35: d0 5f     bne   $0d96
0d37: f5 af 02  mov   a,$02af+x
0d3a: d0 2d     bne   $0d69
0d3c: f6 57 04  mov   a,$0457+y
0d3f: f0 07     beq   $0d48
0d41: 9c        dec   a
0d42: d6 57 04  mov   $0457+y,a
0d45: 5f 96 0d  jmp   $0d96

0d48: f6 5f 04  mov   a,$045f+y
0d4b: f0 1c     beq   $0d69
0d4d: 60        clrc
0d4e: f6 87 04  mov   a,$0487+y
0d51: 96 6f 04  adc   a,$046f+y
0d54: d6 87 04  mov   $0487+y,a
0d57: f6 7f 04  mov   a,$047f+y
0d5a: 96 67 04  adc   a,$0467+y
0d5d: d6 7f 04  mov   $047f+y,a
0d60: f6 5f 04  mov   a,$045f+y
0d63: 9c        dec   a
0d64: d6 5f 04  mov   $045f+y,a
0d67: d0 05     bne   $0d6e
0d69: e4 10     mov   a,$10
0d6b: d6 7f 04  mov   $047f+y,a
0d6e: 60        clrc
0d6f: f6 4f 04  mov   a,$044f+y
0d72: 84 11     adc   a,$11
0d74: d6 4f 04  mov   $044f+y,a
0d77: c4 06     mov   $06,a
0d79: 1c        asl   a
0d7a: 1c        asl   a
0d7b: 90 02     bcc   $0d7f
0d7d: 48 ff     eor   a,#$ff
0d7f: 2d        push  a
0d80: f6 7f 04  mov   a,$047f+y
0d83: ee        pop   y
0d84: cf        mul   ya
0d85: dd        mov   a,y
0d86: aa 06 e0  mov1  c,$0006,7
0d89: 90 03     bcc   $0d8e
0d8b: 48 ff     eor   a,#$ff
0d8d: bc        inc   a
0d8e: 4d        push  x
0d8f: f8 15     mov   x,$15
0d91: d5 ff 03  mov   $03ff+x,a
0d94: ce        pop   x
0d95: 6f        ret

0d96: 4d        push  x
0d97: f8 15     mov   x,$15
0d99: e8 00     mov   a,#$00
0d9b: d5 ff 03  mov   $03ff+x,a
0d9e: ce        pop   x
0d9f: 6f        ret

0da0: e4 30     mov   a,$30
0da2: 48 ff     eor   a,#$ff
0da4: 2d        push  a
0da5: 24 3d     and   a,$3d
0da7: 04 31     or    a,$31
0da9: c4 3e     mov   $3e,a
0dab: ae        pop   a
0dac: 24 3f     and   a,$3f
0dae: 04 32     or    a,$32
0db0: c4 40     mov   $40,a
0db2: c4 12     mov   $12,a
0db4: cd 07     mov   x,#$07
0db6: 0b 12     asl   $12
0db8: 90 09     bcc   $0dc3
0dba: 7d        mov   a,x
0dbb: 9f        xcn   a
0dbc: 08 07     or    a,#$07
0dbe: c4 f2     mov   $f2,a
0dc0: 8f 9e f3  mov   $f3,#$9e
0dc3: 1d        dec   x
0dc4: 10 f0     bpl   $0db6
0dc6: 6f        ret

0dc7: 8f 4d f2  mov   $f2,#$4d
0dca: fa 33 f3  mov   ($f3),($33)
0dcd: e4 40     mov   a,$40
0dcf: 48 ff     eor   a,#$ff
0dd1: 24 3e     and   a,$3e
0dd3: 8d 4c     mov   y,#$4c
0dd5: 3f e8 1f  call  $1fe8
0dd8: e4 3f     mov   a,$3f
0dda: 48 ff     eor   a,#$ff
0ddc: 24 3d     and   a,$3d
0dde: 4e 3d 00  tclr1 $003d
0de1: e4 32     mov   a,$32
0de3: 48 ff     eor   a,#$ff
0de5: 24 31     and   a,$31
0de7: 4e 31 00  tclr1 $0031
0dea: 8f 00 3f  mov   $3f,#$00
0ded: 8f 00 32  mov   $32,#$00
0df0: 6f        ret

0df1: 28 7f     and   a,#$7f
0df3: 3f 01 0e  call  $0e01
0df6: e4 12     mov   a,$12
0df8: d5 9f 03  mov   $039f+x,a
0dfb: e4 13     mov   a,$13
0dfd: d5 af 03  mov   $03af+x,a
0e00: 6f        ret

0e01: fd        mov   y,a
0e02: f6 9c 99  mov   a,$999c+y
0e05: 68 ff     cmp   a,#$ff
0e07: d0 01     bne   $0e0a
0e09: bc        inc   a
0e0a: 1c        asl   a
0e0b: fd        mov   y,a
0e0c: f6 00 22  mov   a,$2200+y
0e0f: c4 12     mov   $12,a
0e11: f6 01 22  mov   a,$2201+y
0e14: c4 13     mov   $13,a
0e16: 6f        ret

0e17: 2d        push  a
0e18: f5 9f 03  mov   a,$039f+x
0e1b: c4 0e     mov   $0e,a
0e1d: f5 af 03  mov   a,$03af+x
0e20: c4 0f     mov   $0f,a
0e22: ae        pop   a
0e23: 8d 0f     mov   y,#$0f
0e25: 77 0e     cmp   a,($0e)+y
0e27: 90 26     bcc   $0e4f
0e29: 8d 1f     mov   y,#$1f
0e2b: 77 0e     cmp   a,($0e)+y
0e2d: 90 20     bcc   $0e4f
0e2f: 8d 2f     mov   y,#$2f
0e31: 77 0e     cmp   a,($0e)+y
0e33: 90 1a     bcc   $0e4f
0e35: 8d 3f     mov   y,#$3f
0e37: 77 0e     cmp   a,($0e)+y
0e39: 90 14     bcc   $0e4f
0e3b: 8d 4f     mov   y,#$4f
0e3d: 77 0e     cmp   a,($0e)+y
0e3f: 90 0e     bcc   $0e4f
0e41: 8d 5f     mov   y,#$5f
0e43: 77 0e     cmp   a,($0e)+y
0e45: 90 08     bcc   $0e4f
0e47: 8d 6f     mov   y,#$6f
0e49: 77 0e     cmp   a,($0e)+y
0e4b: 90 02     bcc   $0e4f
0e4d: 8d 7f     mov   y,#$7f
0e4f: dd        mov   a,y
0e50: 28 f0     and   a,#$f0
0e52: 60        clrc
0e53: 84 0e     adc   a,$0e
0e55: d5 7f 03  mov   $037f+x,a
0e58: e8 00     mov   a,#$00
0e5a: 84 0f     adc   a,$0f
0e5c: d5 8f 03  mov   $038f+x,a
0e5f: 6f        ret

0e60: e8 ff     mov   a,#$ff
0e62: c4 06     mov   $06,a
0e64: e5 02 02  mov   a,$0202
0e67: 30 01     bmi   $0e6a
0e69: 6f        ret

0e6a: 28 7f     and   a,#$7f
0e6c: c5 02 02  mov   $0202,a
0e6f: fd        mov   y,a
0e70: f6 1c 99  mov   a,$991c+y
0e73: 68 ff     cmp   a,#$ff
0e75: d0 01     bne   $0e78
0e77: 6f        ret

0e78: 65 11 94  cmp   a,$9411
0e7b: 90 01     bcc   $0e7e
0e7d: 6f        ret

0e7e: 1c        asl   a
0e7f: fd        mov   y,a
0e80: f6 12 94  mov   a,$9412+y
0e83: c4 04     mov   $04,a
0e85: f6 13 94  mov   a,$9413+y
0e88: c4 05     mov   $05,a
0e8a: 8d 00     mov   y,#$00
0e8c: f7 04     mov   a,($04)+y
0e8e: c4 07     mov   $07,a
0e90: fc        inc   y
0e91: f7 04     mov   a,($04)+y
0e93: 68 08     cmp   a,#$08
0e95: 90 02     bcc   $0e99
0e97: e8 07     mov   a,#$07
0e99: c5 af 0e  mov   $0eaf,a
0e9c: e5 02 02  mov   a,$0202
0e9f: 08 80     or    a,#$80
0ea1: cd 00     mov   x,#$00
0ea3: 74 28     cmp   a,$28+x
0ea5: f0 23     beq   $0eca
0ea7: 3d        inc   x
0ea8: c8 08     cmp   x,#$08
0eaa: d0 f7     bne   $0ea3
0eac: 8d 00     mov   y,#$00
0eae: cd 00     mov   x,#$00
0eb0: e8 ff     mov   a,#$ff
0eb2: 3e 06     cmp   x,$06
0eb4: f0 08     beq   $0ebe
0eb6: 74 20     cmp   a,$20+x
0eb8: 90 04     bcc   $0ebe
0eba: 7d        mov   a,x
0ebb: fd        mov   y,a
0ebc: f4 20     mov   a,$20+x
0ebe: 1d        dec   x
0ebf: 10 f1     bpl   $0eb2
0ec1: 64 07     cmp   a,$07
0ec3: f0 03     beq   $0ec8
0ec5: 90 01     bcc   $0ec8
0ec7: 6f        ret

0ec8: dd        mov   a,y
0ec9: 5d        mov   x,a
0eca: e4 07     mov   a,$07
0ecc: d4 20     mov   $20+x,a
0ece: e5 02 02  mov   a,$0202
0ed1: 08 80     or    a,#$80
0ed3: d4 28     mov   $28+x,a
0ed5: 60        clrc
0ed6: e4 04     mov   a,$04
0ed8: 88 02     adc   a,#$02
0eda: d5 8f 04  mov   $048f+x,a
0edd: e4 05     mov   a,$05
0edf: 88 00     adc   a,#$00
0ee1: d5 97 04  mov   $0497+x,a
0ee4: f5 35 21  mov   a,$2135+x
0ee7: 2d        push  a
0ee8: 04 30     or    a,$30
0eea: c4 30     mov   $30,a
0eec: ae        pop   a
0eed: 48 ff     eor   a,#$ff
0eef: 24 34     and   a,$34
0ef1: c4 34     mov   $34,a
0ef3: e8 00     mov   a,#$00
0ef5: d5 67 05  mov   $0567+x,a
0ef8: d5 5f 05  mov   $055f+x,a
0efb: 3f 3f 18  call  $183f
0efe: 6f        ret

0eff: 60        clrc
0f00: e4 68     mov   a,$68
0f02: 30 08     bmi   $0f0c
0f04: 84 69     adc   a,$69
0f06: 90 0a     bcc   $0f12
0f08: e8 ff     mov   a,#$ff
0f0a: 2f 06     bra   $0f12
0f0c: 84 69     adc   a,$69
0f0e: b0 02     bcs   $0f12
0f10: e8 00     mov   a,#$00
0f12: c4 69     mov   $69,a
0f14: 3f 55 18  call  $1855
0f17: e4 30     mov   a,$30
0f19: cd 07     mov   x,#$07
0f1b: 1c        asl   a
0f1c: 90 03     bcc   $0f21
0f1e: 3f 25 0f  call  $0f25
0f21: 1d        dec   x
0f22: 10 f7     bpl   $0f1b
0f24: 6f        ret

0f25: 2d        push  a
0f26: 4d        push  x
0f27: 8f 09 f2  mov   $f2,#$09
0f2a: e4 6c     mov   a,$6c
0f2c: 84 f3     adc   a,$f3
0f2e: c4 6c     mov   $6c,a
0f30: 7d        mov   a,x
0f31: 9f        xcn   a
0f32: c4 00     mov   $00,a
0f34: 7d        mov   a,x
0f35: c4 12     mov   $12,a
0f37: 1c        asl   a
0f38: 1c        asl   a
0f39: 1c        asl   a
0f3a: 84 12     adc   a,$12
0f3c: c4 12     mov   $12,a
0f3e: f5 8f 04  mov   a,$048f+x
0f41: c4 02     mov   $02,a
0f43: f5 97 04  mov   a,$0497+x
0f46: c4 03     mov   $03,a
0f48: 8d 00     mov   y,#$00
0f4a: dd        mov   a,y
0f4b: 8d 00     mov   y,#$00
0f4d: 7a 02     addw  ya,$02
0f4f: da 02     movw  $02,ya
0f51: 8d 00     mov   y,#$00
0f53: 4d        push  x
0f54: f7 02     mov   a,($02)+y
0f56: fc        inc   y
0f57: 28 7f     and   a,#$7f
0f59: 1c        asl   a
0f5a: 5d        mov   x,a
0f5b: 1f 5e 0f  jmp   ($0f5e+x)

0f5e: dw $128e
0f60: dw $12b0
0f62: dw $12db
0f64: dw $1300
0f66: dw $1330
0f68: dw $1372
0f6a: dw $1394
0f6c: dw $13b1
0f6e: dw $13d6
0f70: dw $13f7
0f72: dw $140d
0f74: dw $141c
0f76: dw $143e
0f78: dw $144c
0f7a: dw $145d
0f7c: dw $1471
0f7e: dw $147f
0f80: dw $1490
0f82: dw $1815
0f84: dw $14b5
0f86: dw $14d3
0f88: dw $14ee
0f8a: dw $1513
0f8c: dw $1538
0f8e: dw $1556
0f90: dw $158b
0f92: dw $15a0
0f94: dw $15b6
0f96: dw $15cc
0f98: dw $15e2
0f9a: dw $15f6
0f9c: dw $160a
0f9e: dw $1620
0fa0: dw $1650
0fa2: dw $1680
0fa4: dw $16a9
0fa6: dw $16e7
0fa8: dw $170c
0faa: dw $1731
0fac: dw $1756
0fae: dw $1769
0fb0: dw $1785
0fb2: dw $1795
0fb4: dw $17a5
0fb6: dw $17b5
0fb8: dw $17c5
0fba: dw $17d5
0fbc: dw $17e5
0fbe: dw $17f8
0fc0: dw $127e
0fc2: dw $1261
0fc4: dw $1121
0fc6: dw $114e
0fc8: dw $1184
0fca: dw $11b4
0fcc: dw $11dc
0fce: dw $120c
0fd0: dw $1236
0fd2: dw $10e3
0fd4: dw $10f7
0fd6: dw $10d1
0fd8: dw $10b8
0fda: dw $109e
0fdc: dw $1084
0fde: dw $14c3
0fe0: dw $110b
0fe2: dw $1063
0fe4: dw $1048
0fe6: dw $102d
0fe8: dw $1006
0fea: dw $0fee
0fec: dw $0ff9

0fee: ce        pop   x
0fef: f5 35 21  mov   a,$2135+x
0ff2: 04 34     or    a,$34
0ff4: c4 34     mov   $34,a
0ff6: 5f 4a 0f  jmp   $0f4a

0ff9: ce        pop   x
0ffa: f5 35 21  mov   a,$2135+x
0ffd: 48 ff     eor   a,#$ff
0fff: 24 34     and   a,$34
1001: c4 34     mov   $34,a
1003: 5f 4a 0f  jmp   $0f4a

1006: f7 02     mov   a,($02)+y
1008: fc        inc   y
1009: 60        clrc
100a: 84 12     adc   a,$12
100c: 5d        mov   x,a
100d: e4 6c     mov   a,$6c
100f: 1c        asl   a
1010: 1c        asl   a
1011: 80        setc
1012: 84 6c     adc   a,$6c
1014: c4 6c     mov   $6c,a
1016: 0d        push  psw
1017: d5 77 05  mov   $0577+x,a
101a: ae        pop   a
101b: ce        pop   x
101c: 28 83     and   a,#$83
101e: c4 04     mov   $04,a
1020: f5 6f 05  mov   a,$056f+x
1023: 28 7c     and   a,#$7c
1025: 04 04     or    a,$04
1027: d5 6f 05  mov   $056f+x,a
102a: 5f 4a 0f  jmp   $0f4a

102d: ce        pop   x
102e: 4d        push  x
102f: f5 6f 05  mov   a,$056f+x
1032: 2d        push  a
1033: f7 02     mov   a,($02)+y
1035: fc        inc   y
1036: 60        clrc
1037: 84 12     adc   a,$12
1039: 5d        mov   x,a
103a: f5 77 05  mov   a,$0577+x
103d: 8e        pop   psw
103e: 3c        rol   a
103f: 0d        push  psw
1040: d5 77 05  mov   $0577+x,a
1043: ae        pop   a
1044: ce        pop   x
1045: 5f 1c 10  jmp   $101c

1048: ce        pop   x
1049: 4d        push  x
104a: f5 6f 05  mov   a,$056f+x
104d: 2d        push  a
104e: f7 02     mov   a,($02)+y
1050: fc        inc   y
1051: 60        clrc
1052: 84 12     adc   a,$12
1054: 5d        mov   x,a
1055: f5 77 05  mov   a,$0577+x
1058: 8e        pop   psw
1059: 7c        ror   a
105a: 0d        push  psw
105b: d5 77 05  mov   $0577+x,a
105e: ae        pop   a
105f: ce        pop   x
1060: 5f 1c 10  jmp   $101c

1063: f7 02     mov   a,($02)+y
1065: fc        inc   y
1066: 60        clrc
1067: 84 12     adc   a,$12
1069: 5d        mov   x,a
106a: f5 77 05  mov   a,$0577+x
106d: 37 02     and   a,($02)+y
106f: 0d        push  psw
1070: fc        inc   y
1071: ae        pop   a
1072: ce        pop   x
1073: 28 82     and   a,#$82
1075: c4 04     mov   $04,a
1077: f5 6f 05  mov   a,$056f+x
107a: 28 7d     and   a,#$7d
107c: 04 04     or    a,$04
107e: d5 6f 05  mov   $056f+x,a
1081: 5f 4a 0f  jmp   $0f4a

1084: f7 02     mov   a,($02)+y
1086: fc        inc   y
1087: c4 04     mov   $04,a
1089: f7 02     mov   a,($02)+y
108b: fc        inc   y
108c: 60        clrc
108d: 84 12     adc   a,$12
108f: 5d        mov   x,a
1090: f5 77 05  mov   a,$0577+x
1093: 0d        push  psw
1094: f8 04     mov   x,$04
1096: d5 bf 05  mov   $05bf+x,a
1099: ae        pop   a
109a: ce        pop   x
109b: 5f 73 10  jmp   $1073

109e: f7 02     mov   a,($02)+y
10a0: fc        inc   y
10a1: 60        clrc
10a2: 84 12     adc   a,$12
10a4: c4 04     mov   $04,a
10a6: f7 02     mov   a,($02)+y
10a8: fc        inc   y
10a9: 5d        mov   x,a
10aa: f5 bf 05  mov   a,$05bf+x
10ad: 0d        push  psw
10ae: f8 04     mov   x,$04
10b0: d5 77 05  mov   $0577+x,a
10b3: ae        pop   a
10b4: ce        pop   x
10b5: 5f 73 10  jmp   $1073

10b8: f7 02     mov   a,($02)+y
10ba: fc        inc   y
10bb: 60        clrc
10bc: 5d        mov   x,a
10bd: e4 1d     mov   a,$1d
10bf: 0d        push  psw
10c0: d5 bf 05  mov   $05bf+x,a
10c3: e4 1e     mov   a,$1e
10c5: d5 c0 05  mov   $05c0+x,a
10c8: 28 7f     and   a,#$7f
10ca: c4 1e     mov   $1e,a
10cc: ae        pop   a
10cd: ce        pop   x
10ce: 5f 73 10  jmp   $1073

10d1: ce        pop   x
10d2: d8 06     mov   $06,x
10d4: f7 02     mov   a,($02)+y
10d6: fc        inc   y
10d7: 28 7f     and   a,#$7f
10d9: 4d        push  x
10da: 6d        push  y
10db: 3f 6c 0e  call  $0e6c
10de: ee        pop   y
10df: ce        pop   x
10e0: 5f 4a 0f  jmp   $0f4a

10e3: f7 02     mov   a,($02)+y
10e5: fc        inc   y
10e6: 60        clrc
10e7: 84 12     adc   a,$12
10e9: 5d        mov   x,a
10ea: f5 77 05  mov   a,$0577+x
10ed: 1c        asl   a
10ee: 0d        push  psw
10ef: d5 77 05  mov   $0577+x,a
10f2: ae        pop   a
10f3: ce        pop   x
10f4: 5f 1c 10  jmp   $101c

10f7: f7 02     mov   a,($02)+y
10f9: fc        inc   y
10fa: 60        clrc
10fb: 84 12     adc   a,$12
10fd: 5d        mov   x,a
10fe: f5 77 05  mov   a,$0577+x
1101: 5c        lsr   a
1102: 0d        push  psw
1103: d5 77 05  mov   $0577+x,a
1106: ae        pop   a
1107: ce        pop   x
1108: 5f 1c 10  jmp   $101c

110b: f7 02     mov   a,($02)+y
110d: fc        inc   y
110e: 60        clrc
110f: 84 12     adc   a,$12
1111: 5d        mov   x,a
1112: f5 77 05  mov   a,$0577+x
1115: 68 80     cmp   a,#$80
1117: 7c        ror   a
1118: 0d        push  psw
1119: d5 77 05  mov   $0577+x,a
111c: ae        pop   a
111d: ce        pop   x
111e: 5f 1c 10  jmp   $101c

1121: e8 02     mov   a,#$02
1123: 04 00     or    a,$00
1125: c4 f2     mov   $f2,a
1127: f7 02     mov   a,($02)+y
1129: fc        inc   y
112a: 60        clrc
112b: 84 12     adc   a,$12
112d: 5d        mov   x,a
112e: f5 78 05  mov   a,$0578+x
1131: c4 04     mov   $04,a
1133: f5 77 05  mov   a,$0577+x
1136: ce        pop   x
1137: d5 9f 04  mov   $049f+x,a
113a: d5 af 04  mov   $04af+x,a
113d: c4 f3     mov   $f3,a
113f: ab f2     inc   $f2
1141: e4 04     mov   a,$04
1143: d5 a7 04  mov   $04a7+x,a
1146: d5 b7 04  mov   $04b7+x,a
1149: c4 f3     mov   $f3,a
114b: 5f 4a 0f  jmp   $0f4a

114e: e8 03     mov   a,#$03
1150: 04 00     or    a,$00
1152: c4 f2     mov   $f2,a
1154: f7 02     mov   a,($02)+y
1156: fc        inc   y
1157: 60        clrc
1158: 84 12     adc   a,$12
115a: 5d        mov   x,a
115b: f5 78 05  mov   a,$0578+x
115e: c4 04     mov   $04,a
1160: f5 77 05  mov   a,$0577+x
1163: ce        pop   x
1164: 60        clrc
1165: 95 9f 04  adc   a,$049f+x
1168: d5 9f 04  mov   $049f+x,a
116b: d5 af 04  mov   $04af+x,a
116e: 2d        push  a
116f: e4 04     mov   a,$04
1171: 95 a7 04  adc   a,$04a7+x
1174: d5 a7 04  mov   $04a7+x,a
1177: d5 b7 04  mov   $04b7+x,a
117a: c4 f3     mov   $f3,a
117c: 8b f2     dec   $f2
117e: ae        pop   a
117f: c4 f3     mov   $f3,a
1181: 5f 4a 0f  jmp   $0f4a

1184: e8 03     mov   a,#$03
1186: 04 00     or    a,$00
1188: c4 f2     mov   $f2,a
118a: f7 02     mov   a,($02)+y
118c: fc        inc   y
118d: 60        clrc
118e: 84 12     adc   a,$12
1190: 5d        mov   x,a
1191: f5 78 05  mov   a,$0578+x
1194: c4 04     mov   $04,a
1196: f5 77 05  mov   a,$0577+x
1199: ce        pop   x
119a: 60        clrc
119b: 95 af 04  adc   a,$04af+x
119e: d5 af 04  mov   $04af+x,a
11a1: 2d        push  a
11a2: e4 04     mov   a,$04
11a4: 95 b7 04  adc   a,$04b7+x
11a7: d5 b7 04  mov   $04b7+x,a
11aa: c4 f3     mov   $f3,a
11ac: ae        pop   a
11ad: 8b f2     dec   $f2
11af: c4 f3     mov   $f3,a
11b1: 5f 4a 0f  jmp   $0f4a

11b4: f7 02     mov   a,($02)+y
11b6: fc        inc   y
11b7: 60        clrc
11b8: 84 12     adc   a,$12
11ba: 5d        mov   x,a
11bb: f5 78 05  mov   a,$0578+x
11be: c4 04     mov   $04,a
11c0: f5 77 05  mov   a,$0577+x
11c3: ce        pop   x
11c4: d5 bf 04  mov   $04bf+x,a
11c7: d5 cf 04  mov   $04cf+x,a
11ca: c4 06     mov   $06,a
11cc: e4 04     mov   a,$04
11ce: d5 c7 04  mov   $04c7+x,a
11d1: d5 d7 04  mov   $04d7+x,a
11d4: c4 07     mov   $07,a
11d6: 3f 6b 18  call  $186b
11d9: 5f 4a 0f  jmp   $0f4a

11dc: f7 02     mov   a,($02)+y
11de: fc        inc   y
11df: 60        clrc
11e0: 84 12     adc   a,$12
11e2: 5d        mov   x,a
11e3: f5 78 05  mov   a,$0578+x
11e6: c4 04     mov   $04,a
11e8: f5 77 05  mov   a,$0577+x
11eb: ce        pop   x
11ec: 60        clrc
11ed: 95 bf 04  adc   a,$04bf+x
11f0: d5 bf 04  mov   $04bf+x,a
11f3: d5 cf 04  mov   $04cf+x,a
11f6: c4 06     mov   $06,a
11f8: e4 04     mov   a,$04
11fa: 60        clrc
11fb: 95 c7 04  adc   a,$04c7+x
11fe: d5 c7 04  mov   $04c7+x,a
1201: d5 d7 04  mov   $04d7+x,a
1204: c4 07     mov   $07,a
1206: 3f 6b 18  call  $186b
1209: 5f 4a 0f  jmp   $0f4a

120c: f7 02     mov   a,($02)+y
120e: fc        inc   y
120f: 60        clrc
1210: 84 12     adc   a,$12
1212: 5d        mov   x,a
1213: f5 78 05  mov   a,$0578+x
1216: c4 04     mov   $04,a
1218: f5 77 05  mov   a,$0577+x
121b: ce        pop   x
121c: 60        clrc
121d: 95 cf 04  adc   a,$04cf+x
1220: d5 cf 04  mov   $04cf+x,a
1223: c4 06     mov   $06,a
1225: e4 04     mov   a,$04
1227: 60        clrc
1228: 95 d7 04  adc   a,$04d7+x
122b: d5 d7 04  mov   $04d7+x,a
122e: c4 07     mov   $07,a
1230: 3f 6b 18  call  $186b
1233: 5f 4a 0f  jmp   $0f4a

1236: ce        pop   x
1237: f5 67 05  mov   a,$0567+x
123a: d0 16     bne   $1252
123c: 4d        push  x
123d: f7 02     mov   a,($02)+y
123f: 60        clrc
1240: 84 12     adc   a,$12
1242: 5d        mov   x,a
1243: f5 77 05  mov   a,$0577+x
1246: d0 02     bne   $124a
1248: e8 01     mov   a,#$01
124a: ce        pop   x
124b: d5 67 05  mov   $0567+x,a
124e: dc        dec   y
124f: 5f 2e 18  jmp   $182e

1252: dc        dec   y
1253: 9c        dec   a
1254: d5 67 05  mov   $0567+x,a
1257: f0 03     beq   $125c
1259: 5f 2e 18  jmp   $182e

125c: fc        inc   y
125d: fc        inc   y
125e: 5f 4a 0f  jmp   $0f4a

1261: f7 02     mov   a,($02)+y
1263: fc        inc   y
1264: 60        clrc
1265: 84 12     adc   a,$12
1267: 5d        mov   x,a
1268: 8f 6c f2  mov   $f2,#$6c
126b: e4 f3     mov   a,$f3
126d: 28 e0     and   a,#$e0
126f: c4 04     mov   $04,a
1271: f5 77 05  mov   a,$0577+x
1274: 28 1f     and   a,#$1f
1276: 04 04     or    a,$04
1278: c4 f3     mov   $f3,a
127a: ce        pop   x
127b: 5f 4a 0f  jmp   $0f4a

127e: ce        pop   x
127f: 8f 6c f2  mov   $f2,#$6c
1282: e4 f3     mov   a,$f3
1284: 28 e0     and   a,#$e0
1286: 17 02     or    a,($02)+y
1288: fc        inc   y
1289: c4 f3     mov   $f3,a
128b: 5f 4a 0f  jmp   $0f4a

128e: ce        pop   x
128f: e8 02     mov   a,#$02
1291: 04 00     or    a,$00
1293: c4 f2     mov   $f2,a
1295: f7 02     mov   a,($02)+y
1297: fc        inc   y
1298: d5 9f 04  mov   $049f+x,a
129b: d5 af 04  mov   $04af+x,a
129e: c4 f3     mov   $f3,a
12a0: ab f2     inc   $f2
12a2: f7 02     mov   a,($02)+y
12a4: fc        inc   y
12a5: d5 a7 04  mov   $04a7+x,a
12a8: d5 b7 04  mov   $04b7+x,a
12ab: c4 f3     mov   $f3,a
12ad: 5f 4a 0f  jmp   $0f4a

12b0: ce        pop   x
12b1: e8 03     mov   a,#$03
12b3: 04 00     or    a,$00
12b5: c4 f2     mov   $f2,a
12b7: f7 02     mov   a,($02)+y
12b9: fc        inc   y
12ba: 60        clrc
12bb: 95 9f 04  adc   a,$049f+x
12be: d5 9f 04  mov   $049f+x,a
12c1: d5 af 04  mov   $04af+x,a
12c4: 2d        push  a
12c5: f7 02     mov   a,($02)+y
12c7: 95 a7 04  adc   a,$04a7+x
12ca: d5 a7 04  mov   $04a7+x,a
12cd: d5 b7 04  mov   $04b7+x,a
12d0: fc        inc   y
12d1: c4 f3     mov   $f3,a
12d3: 8b f2     dec   $f2
12d5: ae        pop   a
12d6: c4 f3     mov   $f3,a
12d8: 5f 4a 0f  jmp   $0f4a

12db: ce        pop   x
12dc: e8 03     mov   a,#$03
12de: 04 00     or    a,$00
12e0: c4 f2     mov   $f2,a
12e2: f7 02     mov   a,($02)+y
12e4: fc        inc   y
12e5: 60        clrc
12e6: 95 af 04  adc   a,$04af+x
12e9: d5 af 04  mov   $04af+x,a
12ec: 2d        push  a
12ed: f7 02     mov   a,($02)+y
12ef: 95 b7 04  adc   a,$04b7+x
12f2: d5 b7 04  mov   $04b7+x,a
12f5: c4 f3     mov   $f3,a
12f7: fc        inc   y
12f8: ae        pop   a
12f9: 8b f2     dec   $f2
12fb: c4 f3     mov   $f3,a
12fd: 5f 4a 0f  jmp   $0f4a

1300: ce        pop   x
1301: f5 5f 05  mov   a,$055f+x
1304: bc        inc   a
1305: d5 5f 05  mov   $055f+x,a
1308: 4d        push  x
1309: d8 01     mov   $01,x
130b: 9c        dec   a
130c: 1c        asl   a
130d: 1c        asl   a
130e: 1c        asl   a
130f: 04 01     or    a,$01
1311: 5d        mov   x,a
1312: f7 02     mov   a,($02)+y
1314: fc        inc   y
1315: d5 1f 05  mov   $051f+x,a
1318: f7 02     mov   a,($02)+y
131a: fc        inc   y
131b: d5 3f 05  mov   $053f+x,a
131e: dd        mov   a,y
131f: 60        clrc
1320: 84 02     adc   a,$02
1322: d5 df 04  mov   $04df+x,a
1325: e8 00     mov   a,#$00
1327: 84 03     adc   a,$03
1329: d5 ff 04  mov   $04ff+x,a
132c: ce        pop   x
132d: 5f 4a 0f  jmp   $0f4a

1330: ce        pop   x
1331: 4d        push  x
1332: f5 5f 05  mov   a,$055f+x
1335: 9c        dec   a
1336: d8 01     mov   $01,x
1338: 1c        asl   a
1339: 1c        asl   a
133a: 1c        asl   a
133b: 04 01     or    a,$01
133d: 5d        mov   x,a
133e: f5 1f 05  mov   a,$051f+x
1341: 15 3f 05  or    a,$053f+x
1344: f0 21     beq   $1367
1346: 80        setc
1347: f5 1f 05  mov   a,$051f+x
134a: a8 01     sbc   a,#$01
134c: d5 1f 05  mov   $051f+x,a
134f: f5 3f 05  mov   a,$053f+x
1352: a8 00     sbc   a,#$00
1354: d5 3f 05  mov   $053f+x,a
1357: f5 df 04  mov   a,$04df+x
135a: c4 02     mov   $02,a
135c: f5 ff 04  mov   a,$04ff+x
135f: c4 03     mov   $03,a
1361: 8d 00     mov   y,#$00
1363: ce        pop   x
1364: 5f 2e 18  jmp   $182e

1367: ce        pop   x
1368: f5 5f 05  mov   a,$055f+x
136b: 9c        dec   a
136c: d5 5f 05  mov   $055f+x,a
136f: 5f 2e 18  jmp   $182e

1372: ce        pop   x
1373: f7 02     mov   a,($02)+y
1375: fc        inc   y
1376: c4 04     mov   $04,a
1378: f7 02     mov   a,($02)+y
137a: c4 05     mov   $05,a
137c: 6d        push  y
137d: ba 02     movw  ya,$02
137f: 7a 04     addw  ya,$04
1381: da 04     movw  $04,ya
1383: ae        pop   a
1384: 80        setc
1385: 84 04     adc   a,$04
1387: c4 02     mov   $02,a
1389: e8 00     mov   a,#$00
138b: 84 05     adc   a,$05
138d: c4 03     mov   $03,a
138f: 8d 00     mov   y,#$00
1391: 5f 4a 0f  jmp   $0f4a

1394: ce        pop   x
1395: f7 02     mov   a,($02)+y
1397: fc        inc   y
1398: d5 bf 04  mov   $04bf+x,a
139b: d5 cf 04  mov   $04cf+x,a
139e: c4 06     mov   $06,a
13a0: f7 02     mov   a,($02)+y
13a2: fc        inc   y
13a3: d5 c7 04  mov   $04c7+x,a
13a6: d5 d7 04  mov   $04d7+x,a
13a9: c4 07     mov   $07,a
13ab: 3f 6b 18  call  $186b
13ae: 5f 4a 0f  jmp   $0f4a

13b1: ce        pop   x
13b2: f7 02     mov   a,($02)+y
13b4: fc        inc   y
13b5: 60        clrc
13b6: 95 bf 04  adc   a,$04bf+x
13b9: d5 bf 04  mov   $04bf+x,a
13bc: d5 cf 04  mov   $04cf+x,a
13bf: c4 06     mov   $06,a
13c1: f7 02     mov   a,($02)+y
13c3: fc        inc   y
13c4: 60        clrc
13c5: 95 c7 04  adc   a,$04c7+x
13c8: d5 c7 04  mov   $04c7+x,a
13cb: d5 d7 04  mov   $04d7+x,a
13ce: c4 07     mov   $07,a
13d0: 3f 6b 18  call  $186b
13d3: 5f 4a 0f  jmp   $0f4a

13d6: ce        pop   x
13d7: f7 02     mov   a,($02)+y
13d9: fc        inc   y
13da: 60        clrc
13db: 95 cf 04  adc   a,$04cf+x
13de: d5 cf 04  mov   $04cf+x,a
13e1: c4 06     mov   $06,a
13e3: ab f2     inc   $f2
13e5: f7 02     mov   a,($02)+y
13e7: fc        inc   y
13e8: 60        clrc
13e9: 95 d7 04  adc   a,$04d7+x
13ec: d5 d7 04  mov   $04d7+x,a
13ef: c4 07     mov   $07,a
13f1: 3f 6b 18  call  $186b
13f4: 5f 4a 0f  jmp   $0f4a

13f7: ce        pop   x
13f8: e8 06     mov   a,#$06
13fa: 04 00     or    a,$00
13fc: c4 f2     mov   $f2,a
13fe: f7 02     mov   a,($02)+y
1400: fc        inc   y
1401: c4 f3     mov   $f3,a
1403: 8b f2     dec   $f2
1405: f7 02     mov   a,($02)+y
1407: fc        inc   y
1408: c4 f3     mov   $f3,a
140a: 5f 4a 0f  jmp   $0f4a

140d: ce        pop   x
140e: e8 07     mov   a,#$07
1410: 04 00     or    a,$00
1412: c4 f2     mov   $f2,a
1414: f7 02     mov   a,($02)+y
1416: fc        inc   y
1417: c4 f3     mov   $f3,a
1419: 5f 4a 0f  jmp   $0f4a

141c: ce        pop   x
141d: e8 04     mov   a,#$04
141f: 04 00     or    a,$00
1421: c4 f2     mov   $f2,a
1423: e4 12     mov   a,$12
1425: 2d        push  a
1426: f7 02     mov   a,($02)+y
1428: fc        inc   y
1429: 6d        push  y
142a: 3f 01 0e  call  $0e01
142d: 8d 0c     mov   y,#$0c
142f: f7 12     mov   a,($12)+y
1431: fd        mov   y,a
1432: f6 1c 9a  mov   a,$9a1c+y
1435: c4 f3     mov   $f3,a
1437: ee        pop   y
1438: ae        pop   a
1439: c4 12     mov   $12,a
143b: 5f 4a 0f  jmp   $0f4a

143e: ce        pop   x
143f: 8f 2d f2  mov   $f2,#$2d
1442: f5 35 21  mov   a,$2135+x
1445: 04 f3     or    a,$f3
1447: c4 f3     mov   $f3,a
1449: 5f 4a 0f  jmp   $0f4a

144c: ce        pop   x
144d: f5 35 21  mov   a,$2135+x
1450: 2d        push  a
1451: 04 31     or    a,$31
1453: c4 31     mov   $31,a
1455: ae        pop   a
1456: 04 32     or    a,$32
1458: c4 32     mov   $32,a
145a: 5f 4a 0f  jmp   $0f4a

145d: ce        pop   x
145e: f5 35 21  mov   a,$2135+x
1461: 04 32     or    a,$32
1463: c4 32     mov   $32,a
1465: 7d        mov   a,x
1466: 9f        xcn   a
1467: 08 05     or    a,#$05
1469: c4 f2     mov   $f2,a
146b: 8f 00 f3  mov   $f3,#$00
146e: 5f 4a 0f  jmp   $0f4a

1471: ce        pop   x
1472: f7 02     mov   a,($02)+y
1474: fc        inc   y
1475: c4 f2     mov   $f2,a
1477: f7 02     mov   a,($02)+y
1479: fc        inc   y
147a: c4 f3     mov   $f3,a
147c: 5f 4a 0f  jmp   $0f4a

147f: ce        pop   x
1480: f7 02     mov   a,($02)+y
1482: fc        inc   y
1483: c4 f2     mov   $f2,a
1485: f7 02     mov   a,($02)+y
1487: fc        inc   y
1488: 60        clrc
1489: 84 f3     adc   a,$f3
148b: c4 f3     mov   $f3,a
148d: 5f 4a 0f  jmp   $0f4a

1490: ce        pop   x
1491: f5 67 05  mov   a,$0567+x
1494: f0 03     beq   $1499
1496: 5f a6 14  jmp   $14a6

1499: f7 02     mov   a,($02)+y
149b: d0 02     bne   $149f
149d: e8 01     mov   a,#$01
149f: d5 67 05  mov   $0567+x,a
14a2: dc        dec   y
14a3: 5f 2e 18  jmp   $182e

14a6: dc        dec   y
14a7: 9c        dec   a
14a8: d5 67 05  mov   $0567+x,a
14ab: f0 03     beq   $14b0
14ad: 5f 2e 18  jmp   $182e

14b0: fc        inc   y
14b1: fc        inc   y
14b2: 5f 4a 0f  jmp   $0f4a

14b5: ce        pop   x
14b6: 8f 3d f2  mov   $f2,#$3d
14b9: f5 35 21  mov   a,$2135+x
14bc: 04 f3     or    a,$f3
14be: c4 f3     mov   $f3,a
14c0: 5f 4a 0f  jmp   $0f4a

14c3: ce        pop   x
14c4: 8f 3d f2  mov   $f2,#$3d
14c7: f5 35 21  mov   a,$2135+x
14ca: 48 ff     eor   a,#$ff
14cc: 24 f3     and   a,$f3
14ce: c4 f3     mov   $f3,a
14d0: 5f 4a 0f  jmp   $0f4a

14d3: f7 02     mov   a,($02)+y
14d5: fc        inc   y
14d6: 60        clrc
14d7: 84 12     adc   a,$12
14d9: 5d        mov   x,a
14da: e4 1d     mov   a,$1d
14dc: 0d        push  psw
14dd: d5 77 05  mov   $0577+x,a
14e0: e4 1e     mov   a,$1e
14e2: d5 78 05  mov   $0578+x,a
14e5: 28 7f     and   a,#$7f
14e7: c4 1e     mov   $1e,a
14e9: ae        pop   a
14ea: ce        pop   x
14eb: 5f 73 10  jmp   $1073

14ee: f7 02     mov   a,($02)+y
14f0: fc        inc   y
14f1: 60        clrc
14f2: 84 12     adc   a,$12
14f4: 5d        mov   x,a
14f5: f7 02     mov   a,($02)+y
14f7: fc        inc   y
14f8: 60        clrc
14f9: 95 77 05  adc   a,$0577+x
14fc: 0d        push  psw
14fd: d5 77 05  mov   $0577+x,a
1500: ae        pop   a
1501: ce        pop   x
1502: 28 cb     and   a,#$cb
1504: c4 04     mov   $04,a
1506: f5 6f 05  mov   a,$056f+x
1509: 28 34     and   a,#$34
150b: 04 04     or    a,$04
150d: d5 6f 05  mov   $056f+x,a
1510: 5f 4a 0f  jmp   $0f4a

1513: f7 02     mov   a,($02)+y
1515: fc        inc   y
1516: 60        clrc
1517: 84 12     adc   a,$12
1519: 5d        mov   x,a
151a: 80        setc
151b: f5 77 05  mov   a,$0577+x
151e: b7 02     sbc   a,($02)+y
1520: 0d        push  psw
1521: fc        inc   y
1522: d5 77 05  mov   $0577+x,a
1525: ae        pop   a
1526: ce        pop   x
1527: 28 cb     and   a,#$cb
1529: c4 04     mov   $04,a
152b: f5 6f 05  mov   a,$056f+x
152e: 28 34     and   a,#$34
1530: 04 04     or    a,$04
1532: d5 6f 05  mov   $056f+x,a
1535: 5f 4a 0f  jmp   $0f4a

1538: f7 02     mov   a,($02)+y
153a: fc        inc   y
153b: 60        clrc
153c: 84 12     adc   a,$12
153e: 5d        mov   x,a
153f: f7 02     mov   a,($02)+y
1541: fc        inc   y
1542: 6d        push  y
1543: fd        mov   y,a
1544: f5 77 05  mov   a,$0577+x
1547: cf        mul   ya
1548: 0d        push  psw
1549: d5 77 05  mov   $0577+x,a
154c: dd        mov   a,y
154d: d5 78 05  mov   $0578+x,a
1550: ae        pop   a
1551: ee        pop   y
1552: ce        pop   x
1553: 5f 73 10  jmp   $1073

1556: f7 02     mov   a,($02)+y
1558: fc        inc   y
1559: 60        clrc
155a: 84 12     adc   a,$12
155c: 5d        mov   x,a
155d: f7 02     mov   a,($02)+y
155f: fc        inc   y
1560: 6d        push  y
1561: 2d        push  a
1562: f5 78 05  mov   a,$0578+x
1565: fd        mov   y,a
1566: f5 77 05  mov   a,$0577+x
1569: d8 04     mov   $04,x
156b: ce        pop   x
156c: 9e        div   ya,x
156d: 0d        push  psw
156e: f8 04     mov   x,$04
1570: d5 77 05  mov   $0577+x,a
1573: dd        mov   a,y
1574: d5 78 05  mov   $0578+x,a
1577: ae        pop   a
1578: ee        pop   y
1579: ce        pop   x
157a: 28 ca     and   a,#$ca
157c: c4 04     mov   $04,a
157e: f5 6f 05  mov   a,$056f+x
1581: 28 35     and   a,#$35
1583: 04 04     or    a,$04
1585: d5 6f 05  mov   $056f+x,a
1588: 5f 4a 0f  jmp   $0f4a

158b: f7 02     mov   a,($02)+y
158d: fc        inc   y
158e: 60        clrc
158f: 84 12     adc   a,$12
1591: 5d        mov   x,a
1592: f5 77 05  mov   a,$0577+x
1595: 48 ff     eor   a,#$ff
1597: 0d        push  psw
1598: d5 77 05  mov   $0577+x,a
159b: ae        pop   a
159c: ce        pop   x
159d: 5f 73 10  jmp   $1073

15a0: f7 02     mov   a,($02)+y
15a2: fc        inc   y
15a3: 60        clrc
15a4: 84 12     adc   a,$12
15a6: 5d        mov   x,a
15a7: f5 77 05  mov   a,$0577+x
15aa: 37 02     and   a,($02)+y
15ac: 0d        push  psw
15ad: fc        inc   y
15ae: d5 77 05  mov   $0577+x,a
15b1: ae        pop   a
15b2: ce        pop   x
15b3: 5f 73 10  jmp   $1073

15b6: f7 02     mov   a,($02)+y
15b8: fc        inc   y
15b9: 60        clrc
15ba: 84 12     adc   a,$12
15bc: 5d        mov   x,a
15bd: f5 77 05  mov   a,$0577+x
15c0: 17 02     or    a,($02)+y
15c2: 0d        push  psw
15c3: fc        inc   y
15c4: d5 77 05  mov   $0577+x,a
15c7: ae        pop   a
15c8: ce        pop   x
15c9: 5f 73 10  jmp   $1073

15cc: f7 02     mov   a,($02)+y
15ce: fc        inc   y
15cf: 60        clrc
15d0: 84 12     adc   a,$12
15d2: 5d        mov   x,a
15d3: f5 77 05  mov   a,$0577+x
15d6: 57 02     eor   a,($02)+y
15d8: 0d        push  psw
15d9: fc        inc   y
15da: d5 77 05  mov   $0577+x,a
15dd: ae        pop   a
15de: ce        pop   x
15df: 5f 73 10  jmp   $1073

15e2: f7 02     mov   a,($02)+y
15e4: fc        inc   y
15e5: 60        clrc
15e6: 84 12     adc   a,$12
15e8: 5d        mov   x,a
15e9: f5 77 05  mov   a,$0577+x
15ec: bc        inc   a
15ed: 0d        push  psw
15ee: d5 77 05  mov   $0577+x,a
15f1: ae        pop   a
15f2: ce        pop   x
15f3: 5f 73 10  jmp   $1073

15f6: f7 02     mov   a,($02)+y
15f8: fc        inc   y
15f9: 60        clrc
15fa: 84 12     adc   a,$12
15fc: 5d        mov   x,a
15fd: f5 77 05  mov   a,$0577+x
1600: 9c        dec   a
1601: 0d        push  psw
1602: d5 77 05  mov   $0577+x,a
1605: ae        pop   a
1606: ce        pop   x
1607: 5f 73 10  jmp   $1073

160a: f7 02     mov   a,($02)+y
160c: fc        inc   y
160d: 60        clrc
160e: 84 12     adc   a,$12
1610: 5d        mov   x,a
1611: f5 77 05  mov   a,$0577+x
1614: 48 ff     eor   a,#$ff
1616: bc        inc   a
1617: 0d        push  psw
1618: d5 77 05  mov   $0577+x,a
161b: ae        pop   a
161c: ce        pop   x
161d: 5f 73 10  jmp   $1073

1620: f7 02     mov   a,($02)+y
1622: fc        inc   y
1623: 60        clrc
1624: 84 12     adc   a,$12
1626: 5d        mov   x,a
1627: f5 77 05  mov   a,$0577+x
162a: c4 04     mov   $04,a
162c: f7 02     mov   a,($02)+y
162e: fc        inc   y
162f: 60        clrc
1630: 84 12     adc   a,$12
1632: 5d        mov   x,a
1633: 60        clrc
1634: f5 77 05  mov   a,$0577+x
1637: 84 04     adc   a,$04
1639: 0d        push  psw
163a: d5 77 05  mov   $0577+x,a
163d: ae        pop   a
163e: ce        pop   x
163f: 28 cb     and   a,#$cb
1641: c4 04     mov   $04,a
1643: f5 6f 05  mov   a,$056f+x
1646: 28 34     and   a,#$34
1648: 04 04     or    a,$04
164a: d5 6f 05  mov   $056f+x,a
164d: 5f 4a 0f  jmp   $0f4a

1650: f7 02     mov   a,($02)+y
1652: fc        inc   y
1653: 60        clrc
1654: 84 12     adc   a,$12
1656: 5d        mov   x,a
1657: f5 77 05  mov   a,$0577+x
165a: c4 04     mov   $04,a
165c: f7 02     mov   a,($02)+y
165e: fc        inc   y
165f: 60        clrc
1660: 84 12     adc   a,$12
1662: 5d        mov   x,a
1663: 80        setc
1664: f5 77 05  mov   a,$0577+x
1667: a4 04     sbc   a,$04
1669: 0d        push  psw
166a: d5 77 05  mov   $0577+x,a
166d: ae        pop   a
166e: ce        pop   x
166f: 28 cb     and   a,#$cb
1671: c4 04     mov   $04,a
1673: f5 6f 05  mov   a,$056f+x
1676: 28 34     and   a,#$34
1678: 04 04     or    a,$04
167a: d5 6f 05  mov   $056f+x,a
167d: 5f 4a 0f  jmp   $0f4a

1680: f7 02     mov   a,($02)+y
1682: fc        inc   y
1683: 60        clrc
1684: 84 12     adc   a,$12
1686: 5d        mov   x,a
1687: f5 77 05  mov   a,$0577+x
168a: c4 04     mov   $04,a
168c: f7 02     mov   a,($02)+y
168e: fc        inc   y
168f: 60        clrc
1690: 84 12     adc   a,$12
1692: 5d        mov   x,a
1693: f5 77 05  mov   a,$0577+x
1696: 6d        push  y
1697: fd        mov   y,a
1698: e4 04     mov   a,$04
169a: cf        mul   ya
169b: 0d        push  psw
169c: d5 77 05  mov   $0577+x,a
169f: dd        mov   a,y
16a0: d5 78 05  mov   $0578+x,a
16a3: ae        pop   a
16a4: ee        pop   y
16a5: ce        pop   x
16a6: 5f 73 10  jmp   $1073

16a9: f7 02     mov   a,($02)+y
16ab: fc        inc   y
16ac: 60        clrc
16ad: 84 12     adc   a,$12
16af: 5d        mov   x,a
16b0: f7 02     mov   a,($02)+y
16b2: fc        inc   y
16b3: 6d        push  y
16b4: 60        clrc
16b5: 84 12     adc   a,$12
16b7: 2d        push  a
16b8: f5 78 05  mov   a,$0578+x
16bb: fd        mov   y,a
16bc: f5 77 05  mov   a,$0577+x
16bf: d8 04     mov   $04,x
16c1: ce        pop   x
16c2: 2d        push  a
16c3: f5 77 05  mov   a,$0577+x
16c6: 5d        mov   x,a
16c7: ae        pop   a
16c8: 9e        div   ya,x
16c9: 0d        push  psw
16ca: f8 04     mov   x,$04
16cc: d5 77 05  mov   $0577+x,a
16cf: dd        mov   a,y
16d0: d5 78 05  mov   $0578+x,a
16d3: ae        pop   a
16d4: ee        pop   y
16d5: ce        pop   x
16d6: 28 ca     and   a,#$ca
16d8: c4 04     mov   $04,a
16da: f5 6f 05  mov   a,$056f+x
16dd: 28 35     and   a,#$35
16df: 04 04     or    a,$04
16e1: d5 6f 05  mov   $056f+x,a
16e4: 5f 4a 0f  jmp   $0f4a

16e7: f7 02     mov   a,($02)+y
16e9: fc        inc   y
16ea: 60        clrc
16eb: 84 12     adc   a,$12
16ed: 5d        mov   x,a
16ee: f5 77 05  mov   a,$0577+x
16f1: d8 05     mov   $05,x
16f3: c4 04     mov   $04,a
16f5: f7 02     mov   a,($02)+y
16f7: fc        inc   y
16f8: 60        clrc
16f9: 84 12     adc   a,$12
16fb: 5d        mov   x,a
16fc: f5 77 05  mov   a,$0577+x
16ff: 24 04     and   a,$04
1701: 0d        push  psw
1702: f8 05     mov   x,$05
1704: d5 77 05  mov   $0577+x,a
1707: ae        pop   a
1708: ce        pop   x
1709: 5f 73 10  jmp   $1073

170c: f7 02     mov   a,($02)+y
170e: fc        inc   y
170f: 60        clrc
1710: 84 12     adc   a,$12
1712: 5d        mov   x,a
1713: f5 77 05  mov   a,$0577+x
1716: d8 05     mov   $05,x
1718: c4 04     mov   $04,a
171a: f7 02     mov   a,($02)+y
171c: fc        inc   y
171d: 60        clrc
171e: 84 12     adc   a,$12
1720: 5d        mov   x,a
1721: f5 77 05  mov   a,$0577+x
1724: 04 04     or    a,$04
1726: 0d        push  psw
1727: f8 05     mov   x,$05
1729: d5 77 05  mov   $0577+x,a
172c: ae        pop   a
172d: ce        pop   x
172e: 5f 73 10  jmp   $1073

1731: f7 02     mov   a,($02)+y
1733: fc        inc   y
1734: 60        clrc
1735: 84 12     adc   a,$12
1737: 5d        mov   x,a
1738: f5 77 05  mov   a,$0577+x
173b: d8 05     mov   $05,x
173d: c4 04     mov   $04,a
173f: f7 02     mov   a,($02)+y
1741: fc        inc   y
1742: 60        clrc
1743: 84 12     adc   a,$12
1745: 5d        mov   x,a
1746: f5 77 05  mov   a,$0577+x
1749: 44 04     eor   a,$04
174b: 0d        push  psw
174c: f8 05     mov   x,$05
174e: d5 77 05  mov   $0577+x,a
1751: ae        pop   a
1752: ce        pop   x
1753: 5f 73 10  jmp   $1073

1756: f7 02     mov   a,($02)+y
1758: fc        inc   y
1759: 60        clrc
175a: 84 12     adc   a,$12
175c: 5d        mov   x,a
175d: f5 77 05  mov   a,$0577+x
1760: 77 02     cmp   a,($02)+y
1762: 0d        push  psw
1763: fc        inc   y
1764: ae        pop   a
1765: ce        pop   x
1766: 5f 1c 10  jmp   $101c

1769: f7 02     mov   a,($02)+y
176b: fc        inc   y
176c: 60        clrc
176d: 84 12     adc   a,$12
176f: 5d        mov   x,a
1770: f5 77 05  mov   a,$0577+x
1773: 2d        push  a
1774: f7 02     mov   a,($02)+y
1776: fc        inc   y
1777: 60        clrc
1778: 84 12     adc   a,$12
177a: 5d        mov   x,a
177b: ae        pop   a
177c: 75 77 05  cmp   a,$0577+x
177f: 0d        push  psw
1780: ae        pop   a
1781: ce        pop   x
1782: 5f 1c 10  jmp   $101c

1785: ce        pop   x
1786: f5 6f 05  mov   a,$056f+x
1789: 2d        push  a
178a: 8e        pop   psw
178b: d0 03     bne   $1790
178d: 5f 73 13  jmp   $1373

1790: fc        inc   y
1791: fc        inc   y
1792: 5f 4a 0f  jmp   $0f4a

1795: ce        pop   x
1796: f5 6f 05  mov   a,$056f+x
1799: 2d        push  a
179a: 8e        pop   psw
179b: f0 03     beq   $17a0
179d: 5f 73 13  jmp   $1373

17a0: fc        inc   y
17a1: fc        inc   y
17a2: 5f 4a 0f  jmp   $0f4a

17a5: ce        pop   x
17a6: f5 6f 05  mov   a,$056f+x
17a9: 2d        push  a
17aa: 8e        pop   psw
17ab: 30 03     bmi   $17b0
17ad: 5f 73 13  jmp   $1373

17b0: fc        inc   y
17b1: fc        inc   y
17b2: 5f 4a 0f  jmp   $0f4a

17b5: ce        pop   x
17b6: f5 6f 05  mov   a,$056f+x
17b9: 2d        push  a
17ba: 8e        pop   psw
17bb: 10 03     bpl   $17c0
17bd: 5f 73 13  jmp   $1373

17c0: fc        inc   y
17c1: fc        inc   y
17c2: 5f 4a 0f  jmp   $0f4a

17c5: ce        pop   x
17c6: f5 6f 05  mov   a,$056f+x
17c9: 2d        push  a
17ca: 8e        pop   psw
17cb: b0 03     bcs   $17d0
17cd: 5f 73 13  jmp   $1373

17d0: fc        inc   y
17d1: fc        inc   y
17d2: 5f 4a 0f  jmp   $0f4a

17d5: ce        pop   x
17d6: f5 6f 05  mov   a,$056f+x
17d9: 2d        push  a
17da: 8e        pop   psw
17db: 90 03     bcc   $17e0
17dd: 5f 73 13  jmp   $1373

17e0: fc        inc   y
17e1: fc        inc   y
17e2: 5f 4a 0f  jmp   $0f4a

17e5: f7 02     mov   a,($02)+y
17e7: fc        inc   y
17e8: 60        clrc
17e9: 84 12     adc   a,$12
17eb: 5d        mov   x,a
17ec: f7 02     mov   a,($02)+y
17ee: 0d        push  psw
17ef: d5 77 05  mov   $0577+x,a
17f2: fc        inc   y
17f3: ae        pop   a
17f4: ce        pop   x
17f5: 5f 73 10  jmp   $1073

17f8: f7 02     mov   a,($02)+y
17fa: fc        inc   y
17fb: 60        clrc
17fc: 84 12     adc   a,$12
17fe: c4 04     mov   $04,a
1800: f7 02     mov   a,($02)+y
1802: fc        inc   y
1803: 60        clrc
1804: 84 12     adc   a,$12
1806: 5d        mov   x,a
1807: f5 77 05  mov   a,$0577+x
180a: 0d        push  psw
180b: f8 04     mov   x,$04
180d: d5 77 05  mov   $0577+x,a
1810: ae        pop   a
1811: ce        pop   x
1812: 5f 73 10  jmp   $1073

1815: ce        pop   x
1816: 3f 3f 18  call  $183f
1819: f5 35 21  mov   a,$2135+x
181c: 48 ff     eor   a,#$ff
181e: 2d        push  a
181f: 24 30     and   a,$30
1821: c4 30     mov   $30,a
1823: ae        pop   a
1824: 24 34     and   a,$34
1826: c4 34     mov   $34,a
1828: e8 00     mov   a,#$00
182a: d4 20     mov   $20+x,a
182c: d4 28     mov   $28+x,a
182e: dd        mov   a,y
182f: 8d 00     mov   y,#$00
1831: 7a 02     addw  ya,$02
1833: da 02     movw  $02,ya
1835: d5 8f 04  mov   $048f+x,a
1838: dd        mov   a,y
1839: d5 97 04  mov   $0497+x,a
183c: ce        pop   x
183d: ae        pop   a
183e: 6f        ret

183f: 8f 2d f2  mov   $f2,#$2d
1842: f5 35 21  mov   a,$2135+x
1845: 48 ff     eor   a,#$ff
1847: 2d        push  a
1848: 24 f3     and   a,$f3
184a: c4 f3     mov   $f3,a
184c: ae        pop   a
184d: 8f 3d f2  mov   $f2,#$3d
1850: 24 f3     and   a,$f3
1852: c4 f3     mov   $f3,a
1854: 6f        ret

1855: ba f6     movw  ya,$f6
1857: da 00     movw  $00,ya
1859: dd        mov   a,y
185a: 44 1c     eor   a,$1c
185c: 10 0c     bpl   $186a
185e: ba 00     movw  ya,$00
1860: da 1b     movw  $1b,ya
1862: da f6     movw  $f6,ya
1864: da 1d     movw  $1d,ya
1866: 18 80 1e  or    $1e,#$80
1869: 6f        ret

186a: 6f        ret

186b: 6d        push  y
186c: e4 65     mov   a,$65
186e: f0 1a     beq   $188a
1870: e4 06     mov   a,$06
1872: 10 03     bpl   $1877
1874: 48 ff     eor   a,#$ff
1876: bc        inc   a
1877: c4 06     mov   $06,a
1879: e4 07     mov   a,$07
187b: 10 03     bpl   $1880
187d: 48 ff     eor   a,#$ff
187f: bc        inc   a
1880: c4 07     mov   $07,a
1882: 60        clrc
1883: 84 06     adc   a,$06
1885: 5c        lsr   a
1886: c4 06     mov   $06,a
1888: c4 07     mov   $07,a
188a: eb 69     mov   y,$69
188c: e4 06     mov   a,$06
188e: cf        mul   ya
188f: cb 06     mov   $06,y
1891: eb 69     mov   y,$69
1893: e4 07     mov   a,$07
1895: cf        mul   ya
1896: cb 07     mov   $07,y
1898: e8 00     mov   a,#$00
189a: 04 00     or    a,$00
189c: c4 f2     mov   $f2,a
189e: fa 06 f3  mov   ($f3),($06)
18a1: ab f2     inc   $f2
18a3: fa 07 f3  mov   ($f3),($07)
18a6: ee        pop   y
18a7: 6f        ret

18a8: f5 55 02  mov   a,$0255+x
18ab: f0 0c     beq   $18b9
18ad: c4 00     mov   $00,a
18af: e8 00     mov   a,#$00
18b1: d5 55 02  mov   $0255+x,a
18b4: e4 00     mov   a,$00
18b6: 5f be 18  jmp   $18be

18b9: 3f 8e 1b  call  $1b8e
18bc: c4 00     mov   $00,a
18be: 5c        lsr   a
18bf: 9f        xcn   a
18c0: 28 07     and   a,#$07
18c2: 1c        asl   a
18c3: 4d        push  x
18c4: 5d        mov   x,a
18c5: 1f c8 18  jmp   ($18c8+x)

18c8: dw $18d8
18ca: dw $18ff
18cc: dw $191c
18ce: dw $1929
18c0: dw $1938
18c2: dw $195a
18c4: dw $197a
18c6: dw $1949

18d8: ce        pop   x
18d9: e4 00     mov   a,$00
18db: 28 1f     and   a,#$1f
18dd: 68 10     cmp   a,#$10
18df: 90 02     bcc   $18e3
18e1: 08 e0     or    a,#$e0
18e3: 60        clrc
18e4: 95 85 02  adc   a,$0285+x
18e7: d5 85 02  mov   $0285+x,a
18ea: c4 02     mov   $02,a
18ec: f5 35 02  mov   a,$0235+x
18ef: c4 00     mov   $00,a
18f1: 4d        push  x
18f2: 3f 8f 0a  call  $0a8f
18f5: ce        pop   x
18f6: f5 65 02  mov   a,$0265+x
18f9: c4 04     mov   $04,a
18fb: 3f 9c 1c  call  $1c9c
18fe: 6f        ret

18ff: ce        pop   x
1900: e4 00     mov   a,$00
1902: 28 1f     and   a,#$1f
1904: 68 10     cmp   a,#$10
1906: 90 02     bcc   $190a
1908: 08 e0     or    a,#$e0
190a: 60        clrc
190b: 95 85 02  adc   a,$0285+x
190e: d5 85 02  mov   $0285+x,a
1911: c4 02     mov   $02,a
1913: f5 35 02  mov   a,$0235+x
1916: c4 00     mov   $00,a
1918: 3f a5 1d  call  $1da5
191b: 6f        ret

191c: ce        pop   x
191d: e4 00     mov   a,$00
191f: 28 1f     and   a,#$1f
1921: bc        inc   a
1922: d5 25 02  mov   $0225+x,a
1925: d5 75 02  mov   $0275+x,a
1928: 6f        ret

1929: ce        pop   x
192a: e4 00     mov   a,$00
192c: 28 1f     and   a,#$1f
192e: bc        inc   a
192f: d5 25 02  mov   $0225+x,a
1932: e8 20     mov   a,#$20
1934: d5 55 02  mov   $0255+x,a
1937: 6f        ret

1938: ce        pop   x
1939: f5 75 02  mov   a,$0275+x
193c: d5 25 02  mov   $0225+x,a
193f: e4 00     mov   a,$00
1941: 28 1f     and   a,#$1f
1943: 08 20     or    a,#$20
1945: d5 55 02  mov   $0255+x,a
1948: 6f        ret

1949: ce        pop   x
194a: f5 75 02  mov   a,$0275+x
194d: d5 25 02  mov   $0225+x,a
1950: e4 00     mov   a,$00
1952: 28 1f     and   a,#$1f
1954: 08 a0     or    a,#$a0
1956: d5 55 02  mov   $0255+x,a
1959: 6f        ret

195a: ce        pop   x
195b: e4 00     mov   a,$00
195d: 28 1f     and   a,#$1f
195f: 68 10     cmp   a,#$10
1961: 90 02     bcc   $1965
1963: 08 e0     or    a,#$e0
1965: 60        clrc
1966: 95 95 02  adc   a,$0295+x
1969: d5 95 02  mov   $0295+x,a
196c: 08 80     or    a,#$80
196e: c4 04     mov   $04,a
1970: f5 35 02  mov   a,$0235+x
1973: 5d        mov   x,a
1974: e4 04     mov   a,$04
1976: d5 6f 03  mov   $036f+x,a
1979: 6f        ret

197a: e4 00     mov   a,$00
197c: 28 1f     and   a,#$1f
197e: 68 18     cmp   a,#$18
1980: 90 03     bcc   $1985
1982: 5f 87 1b  jmp   $1b87

1985: 1c        asl   a
1986: 5d        mov   x,a
1987: 1f 8a 19  jmp   ($198a+x)

198a: dw $19bc
198c: dw $19cc
198e: dw $1a1c
1990: dw $1a2c
1992: dw $1a3c
1994: dw $1a4c
1996: dw $1a72
1998: dw $1a72
199a: dw $1a82
199c: dw $1aa2
199e: dw $1aeb
19a0: dw $1afb
19a2: dw $1b03
19a4: dw $1b05
19a6: dw $1b05
19a8: dw $1b0f
19aa: dw $1b17
19ac: dw $1b33
19ae: dw $19ba
19b0: dw $1b45
19b2: dw $1b58
19b4: dw $1b6b
19b6: dw $1b6d
19b8: dw $1b80

19ba: ce        pop   x
19bb: 6f        ret

19bc: ce        pop   x
19bd: 3f 8e 1b  call  $1b8e
19c0: c4 04     mov   $04,a
19c2: f5 35 02  mov   a,$0235+x
19c5: 5d        mov   x,a
19c6: e4 04     mov   a,$04
19c8: d5 af 02  mov   $02af+x,a
19cb: 6f        ret

19cc: ce        pop   x
19cd: 3f 8e 1b  call  $1b8e
19d0: c4 04     mov   $04,a
19d2: f5 35 02  mov   a,$0235+x
19d5: 5d        mov   x,a
19d6: f5 df 02  mov   a,$02df+x
19d9: f0 35     beq   $1a10
19db: 68 07     cmp   a,#$07
19dd: f0 37     beq   $1a16
19df: 9c        dec   a
19e0: 28 07     and   a,#$07
19e2: fd        mov   y,a
19e3: e4 04     mov   a,$04
19e5: ad 03     cmp   y,#$03
19e7: d0 0d     bne   $19f6
19e9: 2d        push  a
19ea: 80        setc
19eb: a5 aa 02  sbc   a,$02aa
19ee: 28 7f     and   a,#$7f
19f0: ae        pop   a
19f1: d0 01     bne   $19f4
19f3: 6f        ret

19f4: 08 80     or    a,#$80
19f6: d6 a7 02  mov   $02a7+y,a
19f9: ad 05     cmp   y,#$05
19fb: f0 01     beq   $19fe
19fd: 6f        ret

19fe: e5 ac 02  mov   a,$02ac
1a01: 28 7f     and   a,#$7f
1a03: 3f c5 08  call  $08c5
1a06: 68 ff     cmp   a,#$ff
1a08: d0 01     bne   $1a0b
1a0a: 6f        ret

1a0b: 08 80     or    a,#$80
1a0d: c4 18     mov   $18,a
1a0f: 6f        ret

1a10: e4 04     mov   a,$04
1a12: d5 bf 02  mov   $02bf+x,a
1a15: 6f        ret

1a16: e4 04     mov   a,$04
1a18: d5 cf 02  mov   $02cf+x,a
1a1b: 6f        ret

1a1c: ce        pop   x
1a1d: 3f 8e 1b  call  $1b8e
1a20: c4 04     mov   $04,a
1a22: f5 35 02  mov   a,$0235+x
1a25: 5d        mov   x,a
1a26: e4 04     mov   a,$04
1a28: d5 ef 02  mov   $02ef+x,a
1a2b: 6f        ret

1a2c: ce        pop   x
1a2d: 3f 8e 1b  call  $1b8e
1a30: c4 04     mov   $04,a
1a32: f5 35 02  mov   a,$0235+x
1a35: 5d        mov   x,a
1a36: e4 04     mov   a,$04
1a38: d5 1f 03  mov   $031f+x,a
1a3b: 6f        ret

1a3c: ce        pop   x
1a3d: 3f 8e 1b  call  $1b8e
1a40: c4 04     mov   $04,a
1a42: f5 35 02  mov   a,$0235+x
1a45: 5d        mov   x,a
1a46: e4 04     mov   a,$04
1a48: d5 2f 03  mov   $032f+x,a
1a4b: 6f        ret

1a4c: ce        pop   x
1a4d: 3f 8e 1b  call  $1b8e
1a50: c4 04     mov   $04,a
1a52: f5 35 02  mov   a,$0235+x
1a55: 5d        mov   x,a
1a56: e4 04     mov   a,$04
1a58: d5 3f 03  mov   $033f+x,a
1a5b: 28 40     and   a,#$40
1a5d: f0 01     beq   $1a60
1a5f: 6f        ret

1a60: f5 4f 03  mov   a,$034f+x
1a63: 3f 0b 1e  call  $1e0b
1a66: 4e 3c 00  tclr1 $003c
1a69: 4e 3d 00  tclr1 $003d
1a6c: e8 00     mov   a,#$00
1a6e: d5 4f 03  mov   $034f+x,a
1a71: 6f        ret

1a72: ce        pop   x
1a73: 3f 8e 1b  call  $1b8e
1a76: c4 04     mov   $04,a
1a78: f5 35 02  mov   a,$0235+x
1a7b: 5d        mov   x,a
1a7c: e4 04     mov   a,$04
1a7e: d5 df 02  mov   $02df+x,a
1a81: 6f        ret

1a82: ce        pop   x
1a83: f5 35 02  mov   a,$0235+x
1a86: 5d        mov   x,a
1a87: e8 00     mov   a,#$00
1a89: d5 3f 03  mov   $033f+x,a
1a8c: e8 00     mov   a,#$00
1a8e: d5 2f 03  mov   $032f+x,a
1a91: d5 ef 02  mov   $02ef+x,a
1a94: d5 af 02  mov   $02af+x,a
1a97: e8 c0     mov   a,#$c0
1a99: d5 6f 03  mov   $036f+x,a
1a9c: e8 40     mov   a,#$40
1a9e: d5 cf 02  mov   $02cf+x,a
1aa1: 6f        ret

1aa2: ce        pop   x
1aa3: e4 3c     mov   a,$3c
1aa5: c4 08     mov   $08,a
1aa7: f5 35 02  mov   a,$0235+x
1aaa: c4 00     mov   $00,a
1aac: cd 07     mov   x,#$07
1aae: 8d 00     mov   y,#$00
1ab0: 0b 08     asl   $08
1ab2: 90 0e     bcc   $1ac2
1ab4: f4 41     mov   a,$41+x
1ab6: 28 0f     and   a,#$0f
1ab8: 64 00     cmp   a,$00
1aba: d0 06     bne   $1ac2
1abc: 80        setc
1abd: 2b 06     rol   $06
1abf: 5f c5 1a  jmp   $1ac5

1ac2: 60        clrc
1ac3: 2b 06     rol   $06
1ac5: 1d        dec   x
1ac6: 10 e8     bpl   $1ab0
1ac8: f8 00     mov   x,$00
1aca: f5 3f 03  mov   a,$033f+x
1acd: 28 40     and   a,#$40
1acf: d0 14     bne   $1ae5
1ad1: e4 06     mov   a,$06
1ad3: 15 4f 03  or    a,$034f+x
1ad6: 3f 0b 1e  call  $1e0b
1ad9: 4e 3d 00  tclr1 $003d
1adc: 4e 3c 00  tclr1 $003c
1adf: e8 00     mov   a,#$00
1ae1: d5 4f 03  mov   $034f+x,a
1ae4: 6f        ret

1ae5: e4 06     mov   a,$06
1ae7: d5 4f 03  mov   $034f+x,a
1aea: 6f        ret

1aeb: ce        pop   x
1aec: 3f 8e 1b  call  $1b8e
1aef: c4 02     mov   $02,a
1af1: f5 35 02  mov   a,$0235+x
1af4: 5d        mov   x,a
1af5: e4 02     mov   a,$02
1af7: 3f f1 0d  call  $0df1
1afa: 6f        ret

1afb: ce        pop   x
1afc: 3f 8e 1b  call  $1b8e
1aff: c5 03 02  mov   $0203,a
1b02: 6f        ret

1b03: ce        pop   x
1b04: 6f        ret

1b05: ce        pop   x
1b06: e8 00     mov   a,#$00
1b08: d5 15 02  mov   $0215+x,a
1b0b: d5 05 02  mov   $0205+x,a
1b0e: 6f        ret

1b0f: ce        pop   x
1b10: 3f 8e 1b  call  $1b8e
1b13: d5 35 02  mov   $0235+x,a
1b16: 6f        ret

1b17: ce        pop   x
1b18: 3f 8e 1b  call  $1b8e
1b1b: d5 85 02  mov   $0285+x,a
1b1e: c4 02     mov   $02,a
1b20: f5 35 02  mov   a,$0235+x
1b23: c4 00     mov   $00,a
1b25: 4d        push  x
1b26: 3f 8f 0a  call  $0a8f
1b29: ce        pop   x
1b2a: f5 65 02  mov   a,$0265+x
1b2d: c4 04     mov   $04,a
1b2f: 3f 9c 1c  call  $1c9c
1b32: 6f        ret

1b33: ce        pop   x
1b34: 3f 8e 1b  call  $1b8e
1b37: d5 85 02  mov   $0285+x,a
1b3a: c4 02     mov   $02,a
1b3c: f5 35 02  mov   a,$0235+x
1b3f: c4 00     mov   $00,a
1b41: 3f a5 1d  call  $1da5
1b44: 6f        ret

1b45: ce        pop   x
1b46: 3f 8e 1b  call  $1b8e
1b49: d5 85 02  mov   $0285+x,a
1b4c: f5 75 02  mov   a,$0275+x
1b4f: d5 25 02  mov   $0225+x,a
1b52: e8 20     mov   a,#$20
1b54: d5 55 02  mov   $0255+x,a
1b57: 6f        ret

1b58: ce        pop   x
1b59: 3f 8e 1b  call  $1b8e
1b5c: d5 95 02  mov   $0295+x,a
1b5f: f5 75 02  mov   a,$0275+x
1b62: d5 25 02  mov   $0225+x,a
1b65: e8 a0     mov   a,#$a0
1b67: d5 55 02  mov   $0255+x,a
1b6a: 6f        ret

1b6b: ce        pop   x
1b6c: 6f        ret

1b6d: ce        pop   x
1b6e: 3f 8e 1b  call  $1b8e
1b71: d5 95 02  mov   $0295+x,a
1b74: 08 80     or    a,#$80
1b76: 2d        push  a
1b77: f5 35 02  mov   a,$0235+x
1b7a: 5d        mov   x,a
1b7b: ae        pop   a
1b7c: d5 6f 03  mov   $036f+x,a
1b7f: 6f        ret

1b80: ce        pop   x
1b81: e8 ff     mov   a,#$ff
1b83: d5 25 02  mov   $0225+x,a
1b86: 6f        ret

1b87: ce        pop   x
1b88: 28 07     and   a,#$07
1b8a: d5 65 02  mov   $0265+x,a
1b8d: 6f        ret

1b8e: 40        setp
1b8f: f4 06     mov   a,$06+x
1b91: 4d        push  x
1b92: 1c        asl   a
1b93: 5d        mov   x,a
1b94: 1f 97 1b  jmp   ($1b97+x)

1b97: dw $1ba1
1b99: dw $1ba8
1b9b: dw $1baf
1b9d: dw $1bb6
1b9f: dw $1bbd

1ba1: ce        pop   x
1ba2: 3f c3 1b  call  $1bc3
1ba5: 5f 8e 1b  jmp   $1b8e

1ba8: ce        pop   x
1ba9: 3f e2 1b  call  $1be2
1bac: 5f c1 1b  jmp   $1bc1

1baf: ce        pop   x
1bb0: 3f ee 1b  call  $1bee
1bb3: 5f 8e 1b  jmp   $1b8e

1bb6: ce        pop   x
1bb7: 3f 12 1c  call  $1c12
1bba: 5f c1 1b  jmp   $1bc1

1bbd: ce        pop   x
1bbe: 3f 5d 1c  call  $1c5d
1bc1: 20        clrp
1bc2: 6f        ret

1bc3: 3f 80 1c  call  $1c80
1bc6: f7 00     mov   a,($00)+y
1bc8: fc        inc   y
1bc9: 17 00     or    a,($00)+y
1bcb: f0 0c     beq   $1bd9
1bcd: fc        inc   y
1bce: e8 02     mov   a,#$02
1bd0: d4 06     mov   $06+x,a
1bd2: e8 00     mov   a,#$00
1bd4: d4 56     mov   $56+x,a
1bd6: 5f de 1b  jmp   $1bde

1bd9: fc        inc   y
1bda: e8 01     mov   a,#$01
1bdc: d4 06     mov   $06+x,a
1bde: 3f 8d 1c  call  $1c8d
1be1: 6f        ret

1be2: 3f 80 1c  call  $1c80
1be5: f7 00     mov   a,($00)+y
1be7: fc        inc   y
1be8: 2d        push  a
1be9: 3f 8d 1c  call  $1c8d
1bec: ae        pop   a
1bed: 6f        ret

1bee: 3f 80 1c  call  $1c80
1bf1: f4 16     mov   a,$16+x
1bf3: d0 0e     bne   $1c03
1bf5: f7 00     mov   a,($00)+y
1bf7: fc        inc   y
1bf8: 48 ff     eor   a,#$ff
1bfa: d4 36     mov   $36+x,a
1bfc: e8 08     mov   a,#$08
1bfe: d4 16     mov   $16+x,a
1c00: 3f 8d 1c  call  $1c8d
1c03: 1b 36     asl   $36+x
1c05: e8 00     mov   a,#$00
1c07: 88 03     adc   a,#$03
1c09: d4 06     mov   $06+x,a
1c0b: e8 ff     mov   a,#$ff
1c0d: d4 26     mov   $26+x,a
1c0f: 9b 16     dec   $16+x
1c11: 6f        ret

1c12: 3f 80 1c  call  $1c80
1c15: f4 26     mov   a,$26+x
1c17: 10 18     bpl   $1c31
1c19: f7 00     mov   a,($00)+y
1c1b: fc        inc   y
1c1c: c4 02     mov   $02,a
1c1e: 9f        xcn   a
1c1f: 5c        lsr   a
1c20: 28 07     and   a,#$07
1c22: 60        clrc
1c23: 88 02     adc   a,#$02
1c25: d4 26     mov   $26+x,a
1c27: 38 1f 02  and   $02,#$1f
1c2a: f4 56     mov   a,$56+x
1c2c: 60        clrc
1c2d: a4 02     sbc   a,$02
1c2f: d4 46     mov   $46+x,a
1c31: 3f 8d 1c  call  $1c8d
1c34: f4 66     mov   a,$66+x
1c36: c4 02     mov   $02,a
1c38: f4 76     mov   a,$76+x
1c3a: c4 03     mov   $03,a
1c3c: f4 46     mov   a,$46+x
1c3e: bb 46     inc   $46+x
1c40: 28 1f     and   a,#$1f
1c42: fd        mov   y,a
1c43: f7 02     mov   a,($02)+y
1c45: c4 04     mov   $04,a
1c47: f4 56     mov   a,$56+x
1c49: bb 56     inc   $56+x
1c4b: 28 1f     and   a,#$1f
1c4d: fd        mov   y,a
1c4e: e4 04     mov   a,$04
1c50: d7 02     mov   ($02)+y,a
1c52: 9b 26     dec   $26+x
1c54: 10 04     bpl   $1c5a
1c56: e8 02     mov   a,#$02
1c58: d4 06     mov   $06+x,a
1c5a: e4 04     mov   a,$04
1c5c: 6f        ret

1c5d: 3f 80 1c  call  $1c80
1c60: e8 02     mov   a,#$02
1c62: d4 06     mov   $06+x,a
1c64: f4 66     mov   a,$66+x
1c66: c4 02     mov   $02,a
1c68: f4 76     mov   a,$76+x
1c6a: c4 03     mov   $03,a
1c6c: f7 00     mov   a,($00)+y
1c6e: fc        inc   y
1c6f: c4 04     mov   $04,a
1c71: 3f 8d 1c  call  $1c8d
1c74: f4 56     mov   a,$56+x
1c76: bb 56     inc   $56+x
1c78: 28 1f     and   a,#$1f
1c7a: fd        mov   y,a
1c7b: e4 04     mov   a,$04
1c7d: d7 02     mov   ($02)+y,a
1c7f: 6f        ret

1c80: f5 05 02  mov   a,$0205+x
1c83: c4 00     mov   $00,a
1c85: f5 15 02  mov   a,$0215+x
1c88: c4 01     mov   $01,a
1c8a: 8d 00     mov   y,#$00
1c8c: 6f        ret

1c8d: 60        clrc
1c8e: dd        mov   a,y
1c8f: 84 00     adc   a,$00
1c91: d5 05 02  mov   $0205+x,a
1c94: e8 00     mov   a,#$00
1c96: 84 01     adc   a,$01
1c98: d5 15 02  mov   $0215+x,a
1c9b: 6f        ret

1c9c: f8 6d     mov   x,$6d
1c9e: e4 00     mov   a,$00
1ca0: 28 0f     and   a,#$0f
1ca2: d4 6e     mov   $6e+x,a
1ca4: e4 02     mov   a,$02
1ca6: d4 6f     mov   $6f+x,a
1ca8: e4 04     mov   a,$04
1caa: d4 70     mov   $70+x,a
1cac: 3d        inc   x
1cad: 3d        inc   x
1cae: 3d        inc   x
1caf: d8 6d     mov   $6d,x
1cb1: 6f        ret

1cb2: f8 6d     mov   x,$6d
1cb4: f0 1e     beq   $1cd4
1cb6: cd 00     mov   x,#$00
1cb8: f4 6e     mov   a,$6e+x
1cba: c4 00     mov   $00,a
1cbc: f4 6f     mov   a,$6f+x
1cbe: c4 02     mov   $02,a
1cc0: f4 70     mov   a,$70+x
1cc2: c4 04     mov   $04,a
1cc4: 68 ff     cmp   a,#$ff
1cc6: f0 05     beq   $1ccd
1cc8: 4d        push  x
1cc9: 3f d5 1c  call  $1cd5
1ccc: ce        pop   x
1ccd: 3d        inc   x
1cce: 3d        inc   x
1ccf: 3d        inc   x
1cd0: 3e 6d     cmp   x,$6d
1cd2: d0 e4     bne   $1cb8
1cd4: 6f        ret

1cd5: 38 0f 00  and   $00,#$0f
1cd8: cd 07     mov   x,#$07
1cda: fa 3c 06  mov   ($06),($3c)
1cdd: 0b 06     asl   $06
1cdf: 90 0e     bcc   $1cef
1ce1: f4 41     mov   a,$41+x
1ce3: 28 0f     and   a,#$0f
1ce5: 64 00     cmp   a,$00
1ce7: d0 06     bne   $1cef
1ce9: f4 49     mov   a,$49+x
1ceb: 64 02     cmp   a,$02
1ced: f0 0e     beq   $1cfd
1cef: 1d        dec   x
1cf0: 10 eb     bpl   $1cdd
1cf2: cd 07     mov   x,#$07
1cf4: e4 3c     mov   a,$3c
1cf6: 1c        asl   a
1cf7: 90 04     bcc   $1cfd
1cf9: 1d        dec   x
1cfa: 10 fa     bpl   $1cf6
1cfc: 6f        ret

1cfd: f5 35 21  mov   a,$2135+x
1d00: 0e 3d 00  tset1 $003d
1d03: 0e 3c 00  tset1 $003c
1d06: 0e 3f 00  tset1 $003f
1d09: e4 04     mov   a,$04
1d0b: 9f        xcn   a
1d0c: 04 00     or    a,$00
1d0e: d4 41     mov   $41+x,a
1d10: e4 02     mov   a,$02
1d12: d4 49     mov   $49+x,a
1d14: eb 00     mov   y,$00
1d16: f6 7f 03  mov   a,$037f+y
1d19: d4 51     mov   $51+x,a
1d1b: c4 61     mov   $61,a
1d1d: f6 8f 03  mov   a,$038f+y
1d20: d4 59     mov   $59+x,a
1d22: c4 62     mov   $62,a
1d24: e8 00     mov   a,#$00
1d26: d5 0f 04  mov   $040f+x,a
1d29: 8d 01     mov   y,#$01
1d2b: f7 61     mov   a,($61)+y
1d2d: f0 35     beq   $1d64
1d2f: c4 0e     mov   $0e,a
1d31: 8d 02     mov   y,#$02
1d33: f7 61     mov   a,($61)+y
1d35: d5 17 04  mov   $0417+x,a
1d38: 8d 03     mov   y,#$03
1d3a: f7 61     mov   a,($61)+y
1d3c: d5 1f 04  mov   $041f+x,a
1d3f: f0 23     beq   $1d64
1d41: d8 00     mov   $00,x
1d43: 5d        mov   x,a
1d44: e4 0e     mov   a,$0e
1d46: 8d 00     mov   y,#$00
1d48: 9e        div   ya,x
1d49: c4 01     mov   $01,a
1d4b: dd        mov   a,y
1d4c: 5d        mov   x,a
1d4d: 8d 01     mov   y,#$01
1d4f: e8 00     mov   a,#$00
1d51: 9e        div   ya,x
1d52: f8 00     mov   x,$00
1d54: d5 2f 04  mov   $042f+x,a
1d57: e4 01     mov   a,$01
1d59: d5 27 04  mov   $0427+x,a
1d5c: e8 00     mov   a,#$00
1d5e: d5 47 04  mov   $0447+x,a
1d61: d5 3f 04  mov   $043f+x,a
1d64: e8 00     mov   a,#$00
1d66: d5 4f 04  mov   $044f+x,a
1d69: 8d 08     mov   y,#$08
1d6b: f7 61     mov   a,($61)+y
1d6d: f0 35     beq   $1da4
1d6f: c4 0e     mov   $0e,a
1d71: 8d 09     mov   y,#$09
1d73: f7 61     mov   a,($61)+y
1d75: d5 57 04  mov   $0457+x,a
1d78: 8d 0a     mov   y,#$0a
1d7a: f7 61     mov   a,($61)+y
1d7c: d5 5f 04  mov   $045f+x,a
1d7f: f0 23     beq   $1da4
1d81: d8 00     mov   $00,x
1d83: 5d        mov   x,a
1d84: e4 0e     mov   a,$0e
1d86: 8d 00     mov   y,#$00
1d88: 9e        div   ya,x
1d89: c4 01     mov   $01,a
1d8b: dd        mov   a,y
1d8c: 5d        mov   x,a
1d8d: 8d 01     mov   y,#$01
1d8f: e8 00     mov   a,#$00
1d91: 9e        div   ya,x
1d92: f8 00     mov   x,$00
1d94: d5 6f 04  mov   $046f+x,a
1d97: e4 01     mov   a,$01
1d99: d5 67 04  mov   $0467+x,a
1d9c: e8 00     mov   a,#$00
1d9e: d5 87 04  mov   $0487+x,a
1da1: d5 7f 04  mov   $047f+x,a
1da4: 6f        ret

1da5: 38 0f 00  and   $00,#$0f
1da8: f8 6d     mov   x,$6d
1daa: f0 18     beq   $1dc4
1dac: e4 00     mov   a,$00
1dae: 74 6e     cmp   a,$6e+x
1db0: d0 0d     bne   $1dbf
1db2: e4 02     mov   a,$02
1db4: 74 6f     cmp   a,$6f+x
1db6: d0 07     bne   $1dbf
1db8: e8 ff     mov   a,#$ff
1dba: d4 70     mov   $70+x,a
1dbc: 5f c4 1d  jmp   $1dc4

1dbf: 1d        dec   x
1dc0: 1d        dec   x
1dc1: 1d        dec   x
1dc2: 10 e8     bpl   $1dac
1dc4: fa 3c 06  mov   ($06),($3c)
1dc7: 8f 80 08  mov   $08,#$80
1dca: eb 02     mov   y,$02
1dcc: cd 07     mov   x,#$07
1dce: 0b 06     asl   $06
1dd0: 90 0d     bcc   $1ddf
1dd2: f4 41     mov   a,$41+x
1dd4: 28 0f     and   a,#$0f
1dd6: 64 00     cmp   a,$00
1dd8: d0 05     bne   $1ddf
1dda: dd        mov   a,y
1ddb: 74 49     cmp   a,$49+x
1ddd: f0 06     beq   $1de5
1ddf: 4b 08     lsr   $08
1de1: 1d        dec   x
1de2: 10 ea     bpl   $1dce
1de4: 6f        ret

1de5: f4 41     mov   a,$41+x
1de7: 28 0f     and   a,#$0f
1de9: fd        mov   y,a
1dea: f6 3f 03  mov   a,$033f+y
1ded: 28 40     and   a,#$40
1def: d0 11     bne   $1e02
1df1: e4 08     mov   a,$08
1df3: 3f 0b 1e  call  $1e0b
1df6: 4e 3c 00  tclr1 $003c
1df9: 4e 3d 00  tclr1 $003d
1dfc: e8 00     mov   a,#$00
1dfe: d6 4f 03  mov   $034f+y,a
1e01: 6f        ret

1e02: e4 08     mov   a,$08
1e04: 16 4f 03  or    a,$034f+y
1e07: d6 4f 03  mov   $034f+y,a
1e0a: 6f        ret

1e0b: 2d        push  a
1e0c: c4 08     mov   $08,a
1e0e: fa 30 09  mov   ($09),($30)
1e11: cd 07     mov   x,#$07
1e13: 0b 09     asl   $09
1e15: 90 05     bcc   $1e1c
1e17: 0b 08     asl   $08
1e19: 5f 29 1e  jmp   $1e29

1e1c: 0b 08     asl   $08
1e1e: 90 09     bcc   $1e29
1e20: 7d        mov   a,x
1e21: 9f        xcn   a
1e22: 08 05     or    a,#$05
1e24: c4 f2     mov   $f2,a
1e26: 8f 00 f3  mov   $f3,#$00
1e29: 1d        dec   x
1e2a: 10 e7     bpl   $1e13
1e2c: ae        pop   a
1e2d: 6f        ret

1e2e: 3f a0 1f  call  $1fa0
1e31: 3f 87 1f  call  $1f87
1e34: 3f 50 1e  call  $1e50
1e37: 3f 3b 1e  call  $1e3b
1e3a: 6f        ret

1e3b: 40        setp
1e3c: cd 0f     mov   x,#$0f
1e3e: 7d        mov   a,x
1e3f: 9f        xcn   a
1e40: 1c        asl   a
1e41: d4 66     mov   $66+x,a
1e43: 3c        rol   a
1e44: 28 01     and   a,#$01
1e46: 60        clrc
1e47: 88 06     adc   a,#$06
1e49: d4 76     mov   $76+x,a
1e4b: 1d        dec   x
1e4c: 10 f0     bpl   $1e3e
1e4e: 20        clrp
1e4f: 6f        ret

1e50: 8f 00 33  mov   $33,#$00
1e53: cd 0f     mov   x,#$0f
1e55: e8 40     mov   a,#$40
1e57: d5 1f 03  mov   $031f+x,a
1e5a: e8 7f     mov   a,#$7f
1e5c: d5 ef 02  mov   $02ef+x,a
1e5f: e8 c0     mov   a,#$c0
1e61: d5 6f 03  mov   $036f+x,a
1e64: e8 40     mov   a,#$40
1e66: d5 cf 02  mov   $02cf+x,a
1e69: e8 00     mov   a,#$00
1e6b: d5 2f 03  mov   $032f+x,a
1e6e: d5 af 02  mov   $02af+x,a
1e71: d5 3f 03  mov   $033f+x,a
1e74: e8 0b     mov   a,#$0b
1e76: d5 bf 02  mov   $02bf+x,a
1e79: e8 00     mov   a,#$00
1e7b: 3f f1 0d  call  $0df1
1e7e: 1d        dec   x
1e7f: 10 d4     bpl   $1e55
1e81: 6f        ret

1e82: e5 aa 02  mov   a,$02aa
1e85: 30 03     bmi   $1e8a
1e87: 5f 16 1f  jmp   $1f16

1e8a: e5 a5 02  mov   a,$02a5
1e8d: d0 47     bne   $1ed6
1e8f: ac a5 02  inc   $02a5
1e92: 8f 7d f2  mov   $f2,#$7d
1e95: e4 f3     mov   a,$f3
1e97: 5c        lsr   a
1e98: 60        clrc
1e99: 84 f3     adc   a,$f3
1e9b: 28 1f     and   a,#$1f
1e9d: 48 ff     eor   a,#$ff
1e9f: c5 a6 02  mov   $02a6,a
1ea2: e8 00     mov   a,#$00
1ea4: 8f 2c f2  mov   $f2,#$2c
1ea7: c4 f3     mov   $f3,a
1ea9: 8f 3c f2  mov   $f2,#$3c
1eac: c4 f3     mov   $f3,a
1eae: 8f 4d f2  mov   $f2,#$4d
1eb1: c4 f3     mov   $f3,a
1eb3: 8f 0d f2  mov   $f2,#$0d
1eb6: c4 f3     mov   $f3,a
1eb8: 8f 6c f2  mov   $f2,#$6c
1ebb: 8f 20 f3  mov   $f3,#$20
1ebe: 8f 7d f2  mov   $f2,#$7d
1ec1: e5 aa 02  mov   a,$02aa
1ec4: 28 0f     and   a,#$0f
1ec6: c4 f3     mov   $f3,a
1ec8: 1c        asl   a
1ec9: 1c        asl   a
1eca: 1c        asl   a
1ecb: 48 ff     eor   a,#$ff
1ecd: 80        setc
1ece: 88 f8     adc   a,#$f8
1ed0: 8f 6d f2  mov   $f2,#$6d
1ed3: c4 f3     mov   $f3,a
1ed5: 6f        ret

1ed6: 68 01     cmp   a,#$01
1ed8: d0 21     bne   $1efb
1eda: ac a6 02  inc   $02a6
1edd: 30 36     bmi   $1f15
1edf: ac a5 02  inc   $02a5
1ee2: 3f 3f 1f  call  $1f3f
1ee5: 8f 6c f2  mov   $f2,#$6c
1ee8: 8f 00 f3  mov   $f3,#$00
1eeb: e5 aa 02  mov   a,$02aa
1eee: 5c        lsr   a
1eef: 60        clrc
1ef0: 85 aa 02  adc   a,$02aa
1ef3: 28 1f     and   a,#$1f
1ef5: 48 ff     eor   a,#$ff
1ef7: c5 a6 02  mov   $02a6,a
1efa: 6f        ret

1efb: ac a6 02  inc   $02a6
1efe: 30 15     bmi   $1f15
1f00: e5 aa 02  mov   a,$02aa
1f03: 28 7f     and   a,#$7f
1f05: c5 aa 02  mov   $02aa,a
1f08: e5 a7 02  mov   a,$02a7
1f0b: 08 80     or    a,#$80
1f0d: c5 a7 02  mov   $02a7,a
1f10: e8 00     mov   a,#$00
1f12: c5 a5 02  mov   $02a5,a
1f15: 6f        ret

1f16: e5 a7 02  mov   a,$02a7
1f19: 10 23     bpl   $1f3e
1f1b: 28 7f     and   a,#$7f
1f1d: c5 a7 02  mov   $02a7,a
1f20: 8f 2c f2  mov   $f2,#$2c
1f23: c5 a7 02  mov   $02a7,a
1f26: c4 f3     mov   $f3,a
1f28: 8f 3c f2  mov   $f2,#$3c
1f2b: e5 a8 02  mov   a,$02a8
1f2e: 28 7f     and   a,#$7f
1f30: c5 a8 02  mov   $02a8,a
1f33: c4 f3     mov   $f3,a
1f35: 8f 0d f2  mov   $f2,#$0d
1f38: e5 a9 02  mov   a,$02a9
1f3b: 1c        asl   a
1f3c: c4 f3     mov   $f3,a
1f3e: 6f        ret

1f3f: e5 ab 02  mov   a,$02ab
1f42: 1c        asl   a
1f43: 1c        asl   a
1f44: 1c        asl   a
1f45: 08 07     or    a,#$07
1f47: fd        mov   y,a
1f48: cd 07     mov   x,#$07
1f4a: 7d        mov   a,x
1f4b: 9f        xcn   a
1f4c: 08 0f     or    a,#$0f
1f4e: c4 f2     mov   $f2,a
1f50: f6 15 21  mov   a,$2115+y
1f53: c4 f3     mov   $f3,a
1f55: dc        dec   y
1f56: 1d        dec   x
1f57: 10 f1     bpl   $1f4a
1f59: 6f        ret

1f5a: e8 00     mov   a,#$00
1f5c: 8f 2c f2  mov   $f2,#$2c
1f5f: c4 f3     mov   $f3,a
1f61: 8f 3c f2  mov   $f2,#$3c
1f64: c4 f3     mov   $f3,a
1f66: 8f 6c f2  mov   $f2,#$6c
1f69: 8f 20 f3  mov   $f3,#$20
1f6c: 8f 7d f2  mov   $f2,#$7d
1f6f: c4 f3     mov   $f3,a
1f71: 8f 6d f2  mov   $f2,#$6d
1f74: 8f f8 f3  mov   $f3,#$f8
1f77: 8f 4d f2  mov   $f2,#$4d
1f7a: c4 f3     mov   $f3,a
1f7c: 8f 2d f2  mov   $f2,#$2d
1f7f: c4 f3     mov   $f3,a
1f81: 8f 3d f2  mov   $f2,#$3d
1f84: c4 f3     mov   $f3,a
1f86: 6f        ret

1f87: 8f 00 f1  mov   $f1,#$00
1f8a: 8f 60 fa  mov   $fa,#$60
1f8d: 8f 60 fb  mov   $fb,#$60
1f90: 8f 33 f1  mov   $f1,#$33
1f93: 8f 00 f4  mov   $f4,#$00
1f96: 8f 00 f5  mov   $f5,#$00
1f99: 8f 00 f6  mov   $f6,#$00
1f9c: 8f 00 f7  mov   $f7,#$00
1f9f: 6f        ret

1fa0: 8f 6c f2  mov   $f2,#$6c
1fa3: 8f 60 f3  mov   $f3,#$60
1fa6: 8f 5d f2  mov   $f2,#$5d
1fa9: e8 24     mov   a,#$24
1fab: c4 f3     mov   $f3,a
1fad: cd 28     mov   x,#$28
1faf: f5 be 1f  mov   a,$1fbe+x
1fb2: fd        mov   y,a
1fb3: f5 bf 1f  mov   a,$1fbf+x
1fb6: 3f e8 1f  call  $1fe8
1fb9: 1d        dec   x
1fba: 1d        dec   x
1fbb: 10 f2     bpl   $1faf
1fbd: 6f        ret

1fbe: db $6c,$20
1fc0: db $2d,$00
1fc2: db $3d,$00
1fc4: db $0c,$60
1fc6: db $1c,$60
1fc8: db $7d,$00
1fca: db $0d,$00
1fcc: db $4d,$00
1fce: db $2c,$00
1fd0: db $3c,$00
1fd2: db $6d,$f8
1fd4: db $5c,$00
1fd6: db $4c,$00
1fd8: db $0f,$7f
1fda: db $1f,$00
1fdc: db $2f,$00
1fde: db $3f,$00
1fe0: db $4f,$00
1fe2: db $5f,$00
1fe4: db $6f,$00
1fe6: db $7f,$00

1fe8: cb f2     mov   $f2,y
1fea: c4 f3     mov   $f3,a
1fec: 6f        ret

1fed: cb f2     mov   $f2,y
1fef: e4 f3     mov   a,$f3
1ff1: 6f        ret

1ff2: e8 00     mov   a,#$00
1ff4: c4 f4     mov   $f4,a
1ff6: c4 02     mov   $02,a
1ff8: c4 00     mov   $00,a
1ffa: 8f 65 f6  mov   $f6,#$65
1ffd: 8f 02 f7  mov   $f7,#$02
2000: 78 65 f6  cmp   $f6,#$65
2003: d0 fb     bne   $2000
2005: 78 02 f7  cmp   $f7,#$02
2008: d0 f6     bne   $2000
200a: e4 02     mov   a,$02
200c: 64 f4     cmp   a,$f4
200e: f0 fc     beq   $200c
2010: e4 f4     mov   a,$f4
2012: c4 02     mov   $02,a
2014: 28 41     and   a,#$41
2016: d0 13     bne   $202b
2018: e4 f6     mov   a,$f6
201a: d7 00     mov   ($00)+y,a
201c: fc        inc   y
201d: e4 f7     mov   a,$f7
201f: d7 00     mov   ($00)+y,a
2021: fa 02 f4  mov   ($f4),($02)
2024: fc        inc   y
2025: d0 e3     bne   $200a
2027: ab 01     inc   $01
2029: 2f df     bra   $200a
202b: 28 01     and   a,#$01
202d: d0 0b     bne   $203a
202f: e4 f7     mov   a,$f7
2031: c4 01     mov   $01,a
2033: eb f6     mov   y,$f6
2035: fa 02 f4  mov   ($f4),($02)
2038: 2f d0     bra   $200a
203a: 8f 33 f1  mov   $f1,#$33
203d: 8f 00 19  mov   $19,#$00
2040: 8f 00 1a  mov   $1a,#$00
2043: 8f 00 1b  mov   $1b,#$00
2046: 8f 00 1c  mov   $1c,#$00
2049: 8f 00 f4  mov   $f4,#$00
204c: 8f 00 f5  mov   $f5,#$00
204f: 8f 00 f6  mov   $f6,#$00
2052: 8f 00 f7  mov   $f7,#$00
2055: 60        clrc
2056: e5 04 08  mov   a,$0804
2059: 88 01     adc   a,#$01
205b: c5 79 0e  mov   $0e79,a
205e: e5 05 08  mov   a,$0805
2061: 88 00     adc   a,#$00
2063: c5 7a 0e  mov   $0e7a,a
2066: 60        clrc
2067: e5 04 08  mov   a,$0804
206a: 88 02     adc   a,#$02
206c: c5 81 0e  mov   $0e81,a
206f: e5 05 08  mov   a,$0805
2072: 88 00     adc   a,#$00
2074: c5 82 0e  mov   $0e82,a
2077: 60        clrc
2078: e5 04 08  mov   a,$0804
207b: 88 03     adc   a,#$03
207d: c5 86 0e  mov   $0e86,a
2080: e5 05 08  mov   a,$0805
2083: 88 00     adc   a,#$00
2085: c5 87 0e  mov   $0e87,a
2088: 60        clrc
2089: e5 06 08  mov   a,$0806
208c: 88 01     adc   a,#$01
208e: c5 bd 08  mov   $08bd,a
2091: e5 07 08  mov   a,$0807
2094: 88 00     adc   a,#$00
2096: c5 be 08  mov   $08be,a
2099: 60        clrc
209a: e5 06 08  mov   a,$0806
209d: 88 02     adc   a,#$02
209f: c5 90 09  mov   $0990,a
20a2: e5 07 08  mov   a,$0807
20a5: 88 00     adc   a,#$00
20a7: c5 91 09  mov   $0991,a
20aa: 60        clrc
20ab: e5 06 08  mov   a,$0806
20ae: 88 03     adc   a,#$03
20b0: c5 95 09  mov   $0995,a
20b3: e5 07 08  mov   a,$0807
20b6: 88 00     adc   a,#$00
20b8: c5 96 09  mov   $0996,a
20bb: e5 00 08  mov   a,$0800
20be: c5 0d 0e  mov   $0e0d,a
20c1: e5 01 08  mov   a,$0801
20c4: c5 0e 0e  mov   $0e0e,a
20c7: 60        clrc
20c8: e5 00 08  mov   a,$0800
20cb: 88 01     adc   a,#$01
20cd: c5 12 0e  mov   $0e12,a
20d0: e5 01 08  mov   a,$0801
20d3: 88 00     adc   a,#$00
20d5: c5 13 0e  mov   $0e13,a
20d8: e5 03 08  mov   a,$0803
20db: c5 aa 1f  mov   $1faa,a
20de: e5 08 08  mov   a,$0808
20e1: c5 c7 08  mov   $08c7,a
20e4: e5 09 08  mov   a,$0809
20e7: c5 c8 08  mov   $08c8,a
20ea: e5 0a 08  mov   a,$080a
20ed: c5 71 0e  mov   $0e71,a
20f0: e5 0b 08  mov   a,$080b
20f3: c5 72 0e  mov   $0e72,a
20f6: e5 0c 08  mov   a,$080c
20f9: c5 03 0e  mov   $0e03,a
20fc: e5 0d 08  mov   a,$080d
20ff: c5 04 0e  mov   $0e04,a
2102: e5 0e 08  mov   a,$080e
2105: c5 33 14  mov   $1433,a
2108: c5 a5 0b  mov   $0ba5,a
210b: e5 0f 08  mov   a,$080f
210e: c5 34 14  mov   $1434,a
2111: c5 a6 0b  mov   $0ba6,a
2114: 6f        ret

2115: db $7f,$00,$00,$00,$00,$00,$00,$00
211d: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
2125: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
212d: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

2135: db $01,$02,$04,$08,$10,$20,$40,$80

213d: db $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03
2149: db $e9,$06,$25,$45,$68,$8d,$b4,$dd,$08,$36,$67,$9c

2155: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c
2161: db $00,$e7,$eb,$0e,$51,$b7,$41,$f2,$cc,$d1,$04,$68
