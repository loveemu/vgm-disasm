0800: dw $2200
0802: dw $2500
0804: dw $bd14
0806: dw $cfdc
0808: dw $dccc
080a: dw $dd4c
080c: dw $ddcc
080e: dw $de4c
0810: dw $0000

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
083a: 3f 74 1e  call  $1e74
083d: 3f 00 09  call  $0900
0840: 8f 68 f6  mov   $f6,#$68
0843: 8f 09 f7  mov   $f7,#$09
0846: 3f 55 08  call  $0855
0849: 3f 78 08  call  $0878
084c: 3f 63 0e  call  $0e63
084f: 3f 02 0a  call  $0a02
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
08a1: dw $0900

08a3: 3f c5 08  call  $08c5
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
08bc: 65 dd cf  cmp   a,$cfdd
08bf: b0 03     bcs   $08c4
08c1: 5f 64 09  jmp   $0964

08c4: 6f        ret

08c5: fd        mov   y,a
08c6: f6 cc dc  mov   a,$dccc+y
08c9: 6f        ret

08ca: 3f 00 09  call  $0900
08cd: 8f f0 f1  mov   $f1,#$f0
08d0: 8f 00 f4  mov   $f4,#$00
08d3: 8f 00 f5  mov   $f5,#$00
08d6: 8f 00 f6  mov   $f6,#$00
08d9: 8f 00 f7  mov   $f7,#$00
08dc: 5f c0 ff  jmp   $ffc0

08df: 8f fe 6e  mov   $6e,#$fe
08e2: 6f        ret

08e3: 8f 02 6e  mov   $6e,#$02
08e6: 6f        ret

08e7: 8f f0 70  mov   $70,#$f0
08ea: 6f        ret

08eb: 8f 03 70  mov   $70,#$03
08ee: 6f        ret

08ef: 8f 00 6d  mov   $6d,#$00
08f2: 6f        ret

08f3: 8f ff 6d  mov   $6d,#$ff
08f6: 6f        ret

08f7: 3f 00 09  call  $0900
08fa: 3f 38 20  call  $2038
08fd: 5f 12 08  jmp   $0812

0900: 3f a0 1f  call  $1fa0
0903: e8 00     mov   a,#$00
0905: c5 01 02  mov   $0201,a
0908: c5 00 02  mov   $0200,a
090b: c4 17     mov   $17,a
090d: e8 80     mov   a,#$80
090f: c5 03 02  mov   $0203,a
0912: e8 ff     mov   a,#$ff
0914: c4 6f     mov   $6f,a
0916: c4 71     mov   $71,a
0918: c4 47     mov   $47,a
091a: c5 04 02  mov   $0204,a
091d: e5 10 08  mov   a,$0810
0920: 05 11 08  or    a,$0811
0923: c4 6d     mov   $6d,a
0925: e8 00     mov   a,#$00
0927: fd        mov   y,a
0928: c4 6e     mov   $6e,a
092a: c4 70     mov   $70,a
092c: c4 3c     mov   $3c,a
092e: c4 38     mov   $38,a
0930: da 20     movw  $20,ya
0932: da 22     movw  $22,ya
0934: da 24     movw  $24,ya
0936: da 26     movw  $26,ya
0938: da 28     movw  $28,ya
093a: da 2a     movw  $2a,ya
093c: da 2c     movw  $2c,ya
093e: da 2e     movw  $2e,ya
0940: c4 44     mov   $44,a
0942: c4 45     mov   $45,a
0944: cd 0f     mov   x,#$0f
0946: d5 15 02  mov   $0215+x,a
0949: 1d        dec   x
094a: 10 fa     bpl   $0946
094c: cd 07     mov   x,#$07
094e: 7d        mov   a,x
094f: 9f        xcn   a
0950: 2d        push  a
0951: 08 07     or    a,#$07
0953: c4 f2     mov   $f2,a
0955: 8f 9e f3  mov   $f3,#$9e
0958: ae        pop   a
0959: 08 05     or    a,#$05
095b: c4 f2     mov   $f2,a
095d: 8f 00 f3  mov   $f3,#$00
0960: 1d        dec   x
0961: 10 eb     bpl   $094e
0963: 6f        ret

0964: 2d        push  a
0965: 3f 0d 09  call  $090d
0968: 3f 96 1e  call  $1e96
096b: 3f a0 1f  call  $1fa0
096e: e8 00     mov   a,#$00
0970: c5 a5 02  mov   $02a5,a
0973: c5 a6 02  mov   $02a6,a
0976: c5 a7 02  mov   $02a7,a
0979: c5 a8 02  mov   $02a8,a
097c: c5 a9 02  mov   $02a9,a
097f: c5 ab 02  mov   $02ab,a
0982: c5 aa 02  mov   $02aa,a
0985: 9c        dec   a
0986: c4 47     mov   $47,a
0988: bc        inc   a
0989: c4 44     mov   $44,a
098b: c4 45     mov   $45,a
098d: ae        pop   a
098e: 1c        asl   a
098f: 5d        mov   x,a
0990: f5 de cf  mov   a,$cfde+x
0993: c4 02     mov   $02,a
0995: f5 df cf  mov   a,$cfdf+x
0998: c4 03     mov   $03,a
099a: 8d 00     mov   y,#$00
099c: cd 00     mov   x,#$00
099e: 8d 00     mov   y,#$00
09a0: f7 02     mov   a,($02)+y
09a2: c4 04     mov   $04,a
09a4: 3a 02     incw  $02
09a6: f7 02     mov   a,($02)+y
09a8: 68 ff     cmp   a,#$ff
09aa: f0 3c     beq   $09e8
09ac: c4 05     mov   $05,a
09ae: 3a 02     incw  $02
09b0: e4 03     mov   a,$03
09b2: fd        mov   y,a
09b3: d5 15 02  mov   $0215+x,a
09b6: e4 02     mov   a,$02
09b8: d5 05 02  mov   $0205+x,a
09bb: 7a 04     addw  ya,$04
09bd: da 02     movw  $02,ya
09bf: 40        setp
09c0: e8 00     mov   a,#$00
09c2: d4 06     mov   $06+x,a
09c4: d4 16     mov   $16+x,a
09c6: d4 26     mov   $26+x,a
09c8: d4 36     mov   $36+x,a
09ca: 20        clrp
09cb: d5 45 02  mov   $0245+x,a
09ce: d5 35 02  mov   $0235+x,a
09d1: d5 55 02  mov   $0255+x,a
09d4: d5 25 02  mov   $0225+x,a
09d7: d5 75 02  mov   $0275+x,a
09da: d5 85 02  mov   $0285+x,a
09dd: d5 95 02  mov   $0295+x,a
09e0: 3d        inc   x
09e1: c8 10     cmp   x,#$10
09e3: d0 b9     bne   $099e
09e5: 5f f5 09  jmp   $09f5

09e8: e8 00     mov   a,#$00
09ea: d5 15 02  mov   $0215+x,a
09ed: d5 05 02  mov   $0205+x,a
09f0: 3d        inc   x
09f1: c8 10     cmp   x,#$10
09f3: d0 f3     bne   $09e8
09f5: e8 00     mov   a,#$00
09f7: c5 ac 02  mov   $02ac,a
09fa: 9c        dec   a
09fb: c5 04 02  mov   $0204,a
09fe: c5 03 02  mov   $0203,a
0a01: 6f        ret

0a02: fa fe 73  mov   ($73),($fe)
0a05: e4 fd     mov   a,$fd
0a07: f0 63     beq   $0a6c
0a09: ab 6b     inc   $6b
0a0b: 60        clrc
0a0c: e4 6e     mov   a,$6e
0a0e: 30 08     bmi   $0a18
0a10: 84 6f     adc   a,$6f
0a12: 90 0a     bcc   $0a1e
0a14: e8 ff     mov   a,#$ff
0a16: 2f 06     bra   $0a1e
0a18: 84 6f     adc   a,$6f
0a1a: b0 02     bcs   $0a1e
0a1c: e8 00     mov   a,#$00
0a1e: c4 6f     mov   $6f,a
0a20: e5 03 02  mov   a,$0203
0a23: 60        clrc
0a24: 85 04 02  adc   a,$0204
0a27: c5 04 02  mov   $0204,a
0a2a: 90 3a     bcc   $0a66
0a2c: e8 00     mov   a,#$00
0a2e: c4 16     mov   $16,a
0a30: c4 75     mov   $75,a
0a32: cd 0f     mov   x,#$0f
0a34: f5 15 02  mov   a,$0215+x
0a37: f0 0b     beq   $0a44
0a39: 3f 70 0a  call  $0a70
0a3c: f5 15 02  mov   a,$0215+x
0a3f: f0 03     beq   $0a44
0a41: 8f ff 16  mov   $16,#$ff
0a44: 1d        dec   x
0a45: 10 ed     bpl   $0a34
0a47: 3f f3 1c  call  $1cf3
0a4a: e4 18     mov   a,$18
0a4c: 10 07     bpl   $0a55
0a4e: 28 7f     and   a,#$7f
0a50: c4 18     mov   $18,a
0a52: 5f 62 0a  jmp   $0a62

0a55: e4 16     mov   a,$16
0a57: d0 0d     bne   $0a66
0a59: e4 17     mov   a,$17
0a5b: f0 09     beq   $0a66
0a5d: e5 01 02  mov   a,$0201
0a60: 28 3f     and   a,#$3f
0a62: 3f 8e 09  call  $098e
0a65: 6f        ret

0a66: 3f b0 0f  call  $0fb0
0a69: 3f c8 1e  call  $1ec8
0a6c: 3f 9b 0a  call  $0a9b
0a6f: 6f        ret

0a70: f5 25 02  mov   a,$0225+x
0a73: f0 06     beq   $0a7b
0a75: 9c        dec   a
0a76: d5 25 02  mov   $0225+x,a
0a79: d0 0f     bne   $0a8a
0a7b: 4d        push  x
0a7c: 3f e9 18  call  $18e9
0a7f: ce        pop   x
0a80: f5 15 02  mov   a,$0215+x
0a83: f0 05     beq   $0a8a
0a85: f5 25 02  mov   a,$0225+x
0a88: f0 f1     beq   $0a7b
0a8a: 6f        ret

0a8b: e4 00     mov   a,$00
0a8d: 68 a0     cmp   a,#$a0
0a8f: 90 01     bcc   $0a92
0a91: 6f        ret

0a92: 28 0f     and   a,#$0f
0a94: 5d        mov   x,a
0a95: e4 02     mov   a,$02
0a97: 3f 1a 0e  call  $0e1a
0a9a: 6f        ret

0a9b: 3f a3 0d  call  $0da3
0a9e: e4 47     mov   a,$47
0aa0: 48 ff     eor   a,#$ff
0aa2: 24 45     and   a,$45
0aa4: c4 12     mov   $12,a
0aa6: e4 38     mov   a,$38
0aa8: 04 48     or    a,$48
0aaa: c4 13     mov   $13,a
0aac: cd 07     mov   x,#$07
0aae: e4 44     mov   a,$44
0ab0: d8 15     mov   $15,x
0ab2: 0b 13     asl   $13
0ab4: 90 05     bcc   $0abb
0ab6: 1c        asl   a
0ab7: 2d        push  a
0ab8: 5f d6 0a  jmp   $0ad6

0abb: 1c        asl   a
0abc: 2d        push  a
0abd: b0 0c     bcs   $0acb
0abf: 7d        mov   a,x
0ac0: 9f        xcn   a
0ac1: 08 08     or    a,#$08
0ac3: c4 f2     mov   $f2,a
0ac5: e4 f3     mov   a,$f3
0ac7: 68 02     cmp   a,#$02
0ac9: 90 0b     bcc   $0ad6
0acb: 3f fb 0a  call  $0afb
0ace: 3f 4e 0c  call  $0c4e
0ad1: 3f 2d 0b  call  $0b2d
0ad4: f8 15     mov   x,$15
0ad6: f4 49     mov   a,$49+x
0ad8: 28 0f     and   a,#$0f
0ada: fd        mov   y,a
0adb: f6 2f 03  mov   a,$032f+y
0ade: 68 01     cmp   a,#$01
0ae0: 2b 3b     rol   $3b
0ae2: ae        pop   a
0ae3: 0b 14     asl   $14
0ae5: 0b 12     asl   $12
0ae7: 1d        dec   x
0ae8: 10 c6     bpl   $0ab0
0aea: 29 38 3c  and   ($3c),($38)
0aed: e4 38     mov   a,$38
0aef: 48 ff     eor   a,#$ff
0af1: 24 3b     and   a,$3b
0af3: 04 3c     or    a,$3c
0af5: c4 3b     mov   $3b,a
0af7: 3f ca 0d  call  $0dca
0afa: 6f        ret

0afb: f4 59     mov   a,$59+x
0afd: c4 69     mov   $69,a
0aff: f4 61     mov   a,$61+x
0b01: c4 6a     mov   $6a,a
0b03: 8d 0d     mov   y,#$0d
0b05: f7 69     mov   a,($69)+y
0b07: c4 0e     mov   $0e,a
0b09: 8d 0e     mov   y,#$0e
0b0b: f7 69     mov   a,($69)+y
0b0d: c4 0f     mov   $0f,a
0b0f: e4 12     mov   a,$12
0b11: 10 01     bpl   $0b14
0b13: 6f        ret

0b14: 8d 01     mov   y,#$01
0b16: f7 69     mov   a,($69)+y
0b18: c4 0c     mov   $0c,a
0b1a: 8d 00     mov   y,#$00
0b1c: f7 69     mov   a,($69)+y
0b1e: c4 0d     mov   $0d,a
0b20: 8d 08     mov   y,#$08
0b22: f7 69     mov   a,($69)+y
0b24: c4 10     mov   $10,a
0b26: 8d 07     mov   y,#$07
0b28: f7 69     mov   a,($69)+y
0b2a: c4 11     mov   $11,a
0b2c: 6f        ret

0b2d: 3f d0 0b  call  $0bd0
0b30: f5 7b 21  mov   a,$217b+x
0b33: 2d        push  a
0b34: f4 49     mov   a,$49+x
0b36: 5d        mov   x,a
0b37: 28 70     and   a,#$70
0b39: 9f        xcn   a
0b3a: fd        mov   y,a
0b3b: fc        inc   y
0b3c: f6 c7 0b  mov   a,$0bc7+y
0b3f: fd        mov   y,a
0b40: e4 6f     mov   a,$6f
0b42: cf        mul   ya
0b43: 7d        mov   a,x
0b44: 28 0f     and   a,#$0f
0b46: 5d        mov   x,a
0b47: 60        clrc
0b48: f5 ef 02  mov   a,$02ef+x
0b4b: 95 ff 03  adc   a,$03ff+x
0b4e: cf        mul   ya
0b4f: cb 0c     mov   $0c,y
0b51: d8 0d     mov   $0d,x
0b53: f5 1f 03  mov   a,$031f+x
0b56: 2d        push  a
0b57: 48 ff     eor   a,#$ff
0b59: 28 7f     and   a,#$7f
0b5b: 68 40     cmp   a,#$40
0b5d: 90 02     bcc   $0b61
0b5f: e8 3f     mov   a,#$3f
0b61: 1c        asl   a
0b62: c4 04     mov   $04,a
0b64: ae        pop   a
0b65: 68 40     cmp   a,#$40
0b67: 90 02     bcc   $0b6b
0b69: e8 3f     mov   a,#$3f
0b6b: 1c        asl   a
0b6c: c4 05     mov   $05,a
0b6e: e4 6d     mov   a,$6d
0b70: f0 0a     beq   $0b7c
0b72: 60        clrc
0b73: e4 04     mov   a,$04
0b75: 84 05     adc   a,$05
0b77: 5c        lsr   a
0b78: c4 04     mov   $04,a
0b7a: c4 05     mov   $05,a
0b7c: e4 04     mov   a,$04
0b7e: cf        mul   ya
0b7f: e8 00     mov   a,#$00
0b81: 04 02     or    a,$02
0b83: da f2     movw  $f2,ya
0b85: e4 05     mov   a,$05
0b87: eb 0c     mov   y,$0c
0b89: cf        mul   ya
0b8a: ab f2     inc   $f2
0b8c: cb f3     mov   $f3,y
0b8e: f8 0d     mov   x,$0d
0b90: ab f2     inc   $f2
0b92: fa 00 f3  mov   ($f3),($00)
0b95: ab f2     inc   $f2
0b97: fa 01 f3  mov   ($f3),($01)
0b9a: ae        pop   a
0b9b: 24 44     and   a,$44
0b9d: d0 01     bne   $0ba0
0b9f: 6f        ret

0ba0: ab f2     inc   $f2
0ba2: 8d 0c     mov   y,#$0c
0ba4: f7 69     mov   a,($69)+y
0ba6: 5d        mov   x,a
0ba7: f5 4c de  mov   a,$de4c+x
0baa: c4 f3     mov   $f3,a
0bac: f8 0d     mov   x,$0d
0bae: ab f2     inc   $f2
0bb0: 8d 05     mov   y,#$05
0bb2: f7 69     mov   a,($69)+y
0bb4: c4 f3     mov   $f3,a
0bb6: ab f2     inc   $f2
0bb8: 8d 04     mov   y,#$04
0bba: f7 69     mov   a,($69)+y
0bbc: c4 f3     mov   $f3,a
0bbe: ab f2     inc   $f2
0bc0: 8d 06     mov   y,#$06
0bc2: f7 69     mov   a,($69)+y
0bc4: c4 f3     mov   $f3,a
0bc6: 6f        ret

0bc7: db $00,$40,$62,$84,$a6,$b8,$ca,$ec,$ff

0bd0: 4d        push  x
0bd1: f4 51     mov   a,$51+x
0bd3: c4 00     mov   $00,a
0bd5: 7d        mov   a,x
0bd6: fd        mov   y,a
0bd7: 9f        xcn   a
0bd8: c4 02     mov   $02,a
0bda: f4 49     mov   a,$49+x
0bdc: 28 0f     and   a,#$0f
0bde: 5d        mov   x,a
0bdf: 60        clrc
0be0: e4 0e     mov   a,$0e
0be2: 96 df 03  adc   a,$03df+y
0be5: c4 0e     mov   $0e,a
0be7: e4 0f     mov   a,$0f
0be9: 96 ef 03  adc   a,$03ef+y
0bec: c4 0f     mov   $0f,a
0bee: 80        setc
0bef: f5 cf 02  mov   a,$02cf+x
0bf2: a8 40     sbc   a,#$40
0bf4: c4 04     mov   $04,a
0bf6: 68 80     cmp   a,#$80
0bf8: a4 04     sbc   a,$04
0bfa: 48 ff     eor   a,#$ff
0bfc: c4 05     mov   $05,a
0bfe: f5 cf 03  mov   a,$03cf+x
0c01: fd        mov   y,a
0c02: f5 bf 03  mov   a,$03bf+x
0c05: 7a 0e     addw  ya,$0e
0c07: 7a 04     addw  ya,$04
0c09: c4 04     mov   $04,a
0c0b: dd        mov   a,y
0c0c: 60        clrc
0c0d: 84 00     adc   a,$00
0c0f: 8d 00     mov   y,#$00
0c11: cd 0c     mov   x,#$0c
0c13: 9e        div   ya,x
0c14: 2d        push  a
0c15: dd        mov   a,y
0c16: 5d        mov   x,a
0c17: f5 8f 21  mov   a,$218f+x
0c1a: eb 04     mov   y,$04
0c1c: cf        mul   ya
0c1d: cb 0c     mov   $0c,y
0c1f: 8f 00 0d  mov   $0d,#$00
0c22: f5 83 21  mov   a,$2183+x
0c25: eb 04     mov   y,$04
0c27: cf        mul   ya
0c28: 7a 0c     addw  ya,$0c
0c2a: 60        clrc
0c2b: 95 a7 21  adc   a,$21a7+x
0c2e: c4 00     mov   $00,a
0c30: dd        mov   a,y
0c31: 95 9b 21  adc   a,$219b+x
0c34: c4 01     mov   $01,a
0c36: ae        pop   a
0c37: 48 ff     eor   a,#$ff
0c39: 80        setc
0c3a: 88 06     adc   a,#$06
0c3c: f0 0e     beq   $0c4c
0c3e: 68 06     cmp   a,#$06
0c40: b0 0a     bcs   $0c4c
0c42: fd        mov   y,a
0c43: e4 01     mov   a,$01
0c45: 5c        lsr   a
0c46: 6b 00     ror   $00
0c48: fe fb     dbnz  y,$0c45
0c4a: c4 01     mov   $01,a
0c4c: ce        pop   x
0c4d: 6f        ret

0c4e: e4 12     mov   a,$12
0c50: 10 01     bpl   $0c53
0c52: 6f        ret

0c53: 7d        mov   a,x
0c54: fd        mov   y,a
0c55: f4 49     mov   a,$49+x
0c57: 28 0f     and   a,#$0f
0c59: 5d        mov   x,a
0c5a: 6d        push  y
0c5b: 3f 2c 0d  call  $0d2c
0c5e: ee        pop   y
0c5f: 3f 95 0c  call  $0c95
0c62: 3f 68 0c  call  $0c68
0c65: f8 15     mov   x,$15
0c67: 6f        ret

0c68: f5 bf 02  mov   a,$02bf+x
0c6b: bc        inc   a
0c6c: 1c        asl   a
0c6d: fd        mov   y,a
0c6e: f5 6f 03  mov   a,$036f+x
0c71: 10 21     bpl   $0c94
0c73: 28 7f     and   a,#$7f
0c75: d5 6f 03  mov   $036f+x,a
0c78: 80        setc
0c79: a8 40     sbc   a,#$40
0c7b: 1c        asl   a
0c7c: 10 0e     bpl   $0c8c
0c7e: 48 ff     eor   a,#$ff
0c80: bc        inc   a
0c81: cf        mul   ya
0c82: da 04     movw  $04,ya
0c84: e8 00     mov   a,#$00
0c86: fd        mov   y,a
0c87: 9a 04     subw  ya,$04
0c89: 5f 8d 0c  jmp   $0c8d

0c8c: cf        mul   ya
0c8d: d5 bf 03  mov   $03bf+x,a
0c90: dd        mov   a,y
0c91: d5 cf 03  mov   $03cf+x,a
0c94: 6f        ret

0c95: e4 0c     mov   a,$0c
0c97: d0 03     bne   $0c9c
0c99: 5f 1f 0d  jmp   $0d1f

0c9c: e4 73     mov   a,$73
0c9e: d0 03     bne   $0ca3
0ca0: 5f 1e 0d  jmp   $0d1e

0ca3: e4 6b     mov   a,$6b
0ca5: 28 01     and   a,#$01
0ca7: d0 03     bne   $0cac
0ca9: 5f 1e 0d  jmp   $0d1e

0cac: f5 af 02  mov   a,$02af+x
0caf: d0 2d     bne   $0cde
0cb1: f6 17 04  mov   a,$0417+y
0cb4: f0 07     beq   $0cbd
0cb6: 9c        dec   a
0cb7: d6 17 04  mov   $0417+y,a
0cba: 5f 1f 0d  jmp   $0d1f

0cbd: f6 1f 04  mov   a,$041f+y
0cc0: f0 1c     beq   $0cde
0cc2: 60        clrc
0cc3: f6 47 04  mov   a,$0447+y
0cc6: 96 2f 04  adc   a,$042f+y
0cc9: d6 47 04  mov   $0447+y,a
0ccc: f6 3f 04  mov   a,$043f+y
0ccf: 96 27 04  adc   a,$0427+y
0cd2: d6 3f 04  mov   $043f+y,a
0cd5: f6 1f 04  mov   a,$041f+y
0cd8: 9c        dec   a
0cd9: d6 1f 04  mov   $041f+y,a
0cdc: d0 05     bne   $0ce3
0cde: e4 0c     mov   a,$0c
0ce0: d6 3f 04  mov   $043f+y,a
0ce3: 60        clrc
0ce4: f6 0f 04  mov   a,$040f+y
0ce7: 84 0d     adc   a,$0d
0ce9: d6 0f 04  mov   $040f+y,a
0cec: c4 06     mov   $06,a
0cee: 1c        asl   a
0cef: 1c        asl   a
0cf0: 90 02     bcc   $0cf4
0cf2: 48 ff     eor   a,#$ff
0cf4: 2d        push  a
0cf5: f6 3f 04  mov   a,$043f+y
0cf8: ee        pop   y
0cf9: 68 f1     cmp   a,#$f1
0cfb: 90 06     bcc   $0d03
0cfd: 28 0f     and   a,#$0f
0cff: cf        mul   ya
0d00: 5f 07 0d  jmp   $0d07

0d03: cf        mul   ya
0d04: dd        mov   a,y
0d05: 8d 00     mov   y,#$00
0d07: aa 06 e0  mov1  c,$0006,7
0d0a: 90 07     bcc   $0d13
0d0c: da 06     movw  $06,ya
0d0e: 8d 00     mov   y,#$00
0d10: dd        mov   a,y
0d11: 9a 06     subw  ya,$06
0d13: 4d        push  x
0d14: f8 15     mov   x,$15
0d16: d5 df 03  mov   $03df+x,a
0d19: dd        mov   a,y
0d1a: d5 ef 03  mov   $03ef+x,a
0d1d: ce        pop   x
0d1e: 6f        ret

0d1f: 4d        push  x
0d20: f8 15     mov   x,$15
0d22: e8 00     mov   a,#$00
0d24: d5 df 03  mov   $03df+x,a
0d27: d5 ef 03  mov   $03ef+x,a
0d2a: ce        pop   x
0d2b: 6f        ret

0d2c: e4 10     mov   a,$10
0d2e: f0 69     beq   $0d99
0d30: e4 73     mov   a,$73
0d32: f0 65     beq   $0d99
0d34: e4 6b     mov   a,$6b
0d36: 28 01     and   a,#$01
0d38: d0 5f     bne   $0d99
0d3a: f5 af 02  mov   a,$02af+x
0d3d: d0 2d     bne   $0d6c
0d3f: f6 57 04  mov   a,$0457+y
0d42: f0 07     beq   $0d4b
0d44: 9c        dec   a
0d45: d6 57 04  mov   $0457+y,a
0d48: 5f 99 0d  jmp   $0d99

0d4b: f6 5f 04  mov   a,$045f+y
0d4e: f0 1c     beq   $0d6c
0d50: 60        clrc
0d51: f6 87 04  mov   a,$0487+y
0d54: 96 6f 04  adc   a,$046f+y
0d57: d6 87 04  mov   $0487+y,a
0d5a: f6 7f 04  mov   a,$047f+y
0d5d: 96 67 04  adc   a,$0467+y
0d60: d6 7f 04  mov   $047f+y,a
0d63: f6 5f 04  mov   a,$045f+y
0d66: 9c        dec   a
0d67: d6 5f 04  mov   $045f+y,a
0d6a: d0 05     bne   $0d71
0d6c: e4 10     mov   a,$10
0d6e: d6 7f 04  mov   $047f+y,a
0d71: 60        clrc
0d72: f6 4f 04  mov   a,$044f+y
0d75: 84 11     adc   a,$11
0d77: d6 4f 04  mov   $044f+y,a
0d7a: c4 06     mov   $06,a
0d7c: 1c        asl   a
0d7d: 1c        asl   a
0d7e: 90 02     bcc   $0d82
0d80: 48 ff     eor   a,#$ff
0d82: 2d        push  a
0d83: f6 7f 04  mov   a,$047f+y
0d86: ee        pop   y
0d87: cf        mul   ya
0d88: dd        mov   a,y
0d89: aa 06 e0  mov1  c,$0006,7
0d8c: 90 03     bcc   $0d91
0d8e: 48 ff     eor   a,#$ff
0d90: bc        inc   a
0d91: 4d        push  x
0d92: f8 15     mov   x,$15
0d94: d5 ff 03  mov   $03ff+x,a
0d97: ce        pop   x
0d98: 6f        ret

0d99: 4d        push  x
0d9a: f8 15     mov   x,$15
0d9c: e8 00     mov   a,#$00
0d9e: d5 ff 03  mov   $03ff+x,a
0da1: ce        pop   x
0da2: 6f        ret

0da3: e4 38     mov   a,$38
0da5: 48 ff     eor   a,#$ff
0da7: 2d        push  a
0da8: 24 45     and   a,$45
0daa: 04 39     or    a,$39
0dac: c4 46     mov   $46,a
0dae: ae        pop   a
0daf: 24 47     and   a,$47
0db1: 04 3a     or    a,$3a
0db3: c4 48     mov   $48,a
0db5: c4 12     mov   $12,a
0db7: cd 07     mov   x,#$07
0db9: 0b 12     asl   $12
0dbb: 90 09     bcc   $0dc6
0dbd: 7d        mov   a,x
0dbe: 9f        xcn   a
0dbf: 08 07     or    a,#$07
0dc1: c4 f2     mov   $f2,a
0dc3: 8f 9e f3  mov   $f3,#$9e
0dc6: 1d        dec   x
0dc7: 10 f0     bpl   $0db9
0dc9: 6f        ret

0dca: 8f 4d f2  mov   $f2,#$4d
0dcd: fa 3b f3  mov   ($f3),($3b)
0dd0: e4 48     mov   a,$48
0dd2: 48 ff     eor   a,#$ff
0dd4: 24 46     and   a,$46
0dd6: 8d 4c     mov   y,#$4c
0dd8: 3f 2e 20  call  $202e
0ddb: e4 47     mov   a,$47
0ddd: 48 ff     eor   a,#$ff
0ddf: 24 45     and   a,$45
0de1: 4e 45 00  tclr1 $0045
0de4: e4 3a     mov   a,$3a
0de6: 48 ff     eor   a,#$ff
0de8: 24 39     and   a,$39
0dea: 4e 39 00  tclr1 $0039
0ded: 8f 00 47  mov   $47,#$00
0df0: 8f 00 3a  mov   $3a,#$00
0df3: 6f        ret

0df4: 28 7f     and   a,#$7f
0df6: 3f 04 0e  call  $0e04
0df9: e4 12     mov   a,$12
0dfb: d5 9f 03  mov   $039f+x,a
0dfe: e4 13     mov   a,$13
0e00: d5 af 03  mov   $03af+x,a
0e03: 6f        ret

0e04: fd        mov   y,a
0e05: f6 cc dd  mov   a,$ddcc+y
0e08: 68 ff     cmp   a,#$ff
0e0a: d0 01     bne   $0e0d
0e0c: bc        inc   a
0e0d: 1c        asl   a
0e0e: fd        mov   y,a
0e0f: f6 00 22  mov   a,$2200+y
0e12: c4 12     mov   $12,a
0e14: f6 01 22  mov   a,$2201+y
0e17: c4 13     mov   $13,a
0e19: 6f        ret

0e1a: 2d        push  a
0e1b: f5 9f 03  mov   a,$039f+x
0e1e: c4 0e     mov   $0e,a
0e20: f5 af 03  mov   a,$03af+x
0e23: c4 0f     mov   $0f,a
0e25: ae        pop   a
0e26: 8d 0f     mov   y,#$0f
0e28: 77 0e     cmp   a,($0e)+y
0e2a: 90 26     bcc   $0e52
0e2c: 8d 1f     mov   y,#$1f
0e2e: 77 0e     cmp   a,($0e)+y
0e30: 90 20     bcc   $0e52
0e32: 8d 2f     mov   y,#$2f
0e34: 77 0e     cmp   a,($0e)+y
0e36: 90 1a     bcc   $0e52
0e38: 8d 3f     mov   y,#$3f
0e3a: 77 0e     cmp   a,($0e)+y
0e3c: 90 14     bcc   $0e52
0e3e: 8d 4f     mov   y,#$4f
0e40: 77 0e     cmp   a,($0e)+y
0e42: 90 0e     bcc   $0e52
0e44: 8d 5f     mov   y,#$5f
0e46: 77 0e     cmp   a,($0e)+y
0e48: 90 08     bcc   $0e52
0e4a: 8d 6f     mov   y,#$6f
0e4c: 77 0e     cmp   a,($0e)+y
0e4e: 90 02     bcc   $0e52
0e50: 8d 7f     mov   y,#$7f
0e52: dd        mov   a,y
0e53: 28 f0     and   a,#$f0
0e55: 60        clrc
0e56: 84 0e     adc   a,$0e
0e58: d5 7f 03  mov   $037f+x,a
0e5b: e8 00     mov   a,#$00
0e5d: 84 0f     adc   a,$0f
0e5f: d5 8f 03  mov   $038f+x,a
0e62: 6f        ret

0e63: 8f ff 06  mov   $06,#$ff
0e66: e5 02 02  mov   a,$0202
0e69: 30 01     bmi   $0e6c
0e6b: 6f        ret

0e6c: 28 7f     and   a,#$7f
0e6e: c5 02 02  mov   $0202,a
0e71: c4 0e     mov   $0e,a
0e73: 08 80     or    a,#$80
0e75: cd 07     mov   x,#$07
0e77: 74 30     cmp   a,$30+x
0e79: f0 05     beq   $0e80
0e7b: 1d        dec   x
0e7c: 10 f9     bpl   $0e77
0e7e: 2f 08     bra   $0e88
0e80: 7d        mov   a,x
0e81: 08 80     or    a,#$80
0e83: c4 07     mov   $07,a
0e85: 5f fd 0e  jmp   $0efd

0e88: 8f 00 07  mov   $07,#$00
0e8b: fa 38 02  mov   ($02),($38)
0e8e: fa 44 00  mov   ($00),($44)
0e91: cd 07     mov   x,#$07
0e93: 0b 02     asl   $02
0e95: b0 0a     bcs   $0ea1
0e97: 0b 00     asl   $00
0e99: 90 0c     bcc   $0ea7
0e9b: f4 49     mov   a,$49+x
0e9d: 28 0f     and   a,#$0f
0e9f: 2f 08     bra   $0ea9
0ea1: 0b 00     asl   $00
0ea3: e8 20     mov   a,#$20
0ea5: 2f 02     bra   $0ea9
0ea7: e8 10     mov   a,#$10
0ea9: d4 ae     mov   $ae+x,a
0eab: 1d        dec   x
0eac: 30 02     bmi   $0eb0
0eae: 2f e3     bra   $0e93
0eb0: 8f 07 ad  mov   $ad,#$07
0eb3: 8f 06 ac  mov   $ac,#$06
0eb6: 8f 05 ab  mov   $ab,#$05
0eb9: 8f 04 aa  mov   $aa,#$04
0ebc: 8f 03 a9  mov   $a9,#$03
0ebf: 8f 02 a8  mov   $a8,#$02
0ec2: 8f 01 a7  mov   $a7,#$01
0ec5: 8f 00 a6  mov   $a6,#$00
0ec8: e8 07     mov   a,#$07
0eca: c4 00     mov   $00,a
0ecc: 30 2f     bmi   $0efd
0ece: 8d ff     mov   y,#$ff
0ed0: cd 01     mov   x,#$01
0ed2: 3e 00     cmp   x,$00
0ed4: f0 02     beq   $0ed8
0ed6: 10 20     bpl   $0ef8
0ed8: f4 ae     mov   a,$ae+x
0eda: 74 ad     cmp   a,$ad+x
0edc: f0 17     beq   $0ef5
0ede: 30 15     bmi   $0ef5
0ee0: f4 ad     mov   a,$ad+x
0ee2: fd        mov   y,a
0ee3: f4 ae     mov   a,$ae+x
0ee5: d4 ad     mov   $ad+x,a
0ee7: db ae     mov   $ae+x,y
0ee9: f4 a5     mov   a,$a5+x
0eeb: fd        mov   y,a
0eec: f4 a6     mov   a,$a6+x
0eee: d4 a5     mov   $a5+x,a
0ef0: db a6     mov   $a6+x,y
0ef2: 7d        mov   a,x
0ef3: 9c        dec   a
0ef4: fd        mov   y,a
0ef5: 3d        inc   x
0ef6: 2f da     bra   $0ed2
0ef8: cb 00     mov   $00,y
0efa: dd        mov   a,y
0efb: 2f cf     bra   $0ecc
0efd: e4 0e     mov   a,$0e
0eff: fd        mov   y,a
0f00: f6 4c dd  mov   a,$dd4c+y
0f03: 68 ff     cmp   a,#$ff
0f05: d0 01     bne   $0f08
0f07: 6f        ret

0f08: 65 15 bd  cmp   a,$bd15
0f0b: 90 01     bcc   $0f0e
0f0d: 6f        ret

0f0e: 1c        asl   a
0f0f: fd        mov   y,a
0f10: f6 16 bd  mov   a,$bd16+y
0f13: c4 04     mov   $04,a
0f15: f6 17 bd  mov   a,$bd17+y
0f18: c4 05     mov   $05,a
0f1a: 8d 00     mov   y,#$00
0f1c: f7 04     mov   a,($04)+y
0f1e: 28 07     and   a,#$07
0f20: bc        inc   a
0f21: c4 08     mov   $08,a
0f23: fc        inc   y
0f24: f7 04     mov   a,($04)+y
0f26: 28 07     and   a,#$07
0f28: c4 0c     mov   $0c,a
0f2a: e4 07     mov   a,$07
0f2c: 10 06     bpl   $0f34
0f2e: 28 7f     and   a,#$7f
0f30: 5d        mov   x,a
0f31: 5f 77 0f  jmp   $0f77

0f34: 8f ff 00  mov   $00,#$ff
0f37: fa 08 02  mov   ($02),($08)
0f3a: fa 0c 12  mov   ($12),($0c)
0f3d: 8d 00     mov   y,#$00
0f3f: 7e 12     cmp   y,$12
0f41: f0 02     beq   $0f45
0f43: 10 2a     bpl   $0f6f
0f45: f9 a6     mov   x,$a6+y
0f47: 3e 06     cmp   x,$06
0f49: f0 21     beq   $0f6c
0f4b: e4 02     mov   a,$02
0f4d: 74 20     cmp   a,$20+x
0f4f: f0 08     beq   $0f59
0f51: 30 06     bmi   $0f59
0f53: d8 00     mov   $00,x
0f55: f4 20     mov   a,$20+x
0f57: c4 02     mov   $02,a
0f59: f4 30     mov   a,$30+x
0f5b: 10 0f     bpl   $0f6c
0f5d: dd        mov   a,y
0f5e: 74 28     cmp   a,$28+x
0f60: 10 0a     bpl   $0f6c
0f62: f4 28     mov   a,$28+x
0f64: 64 12     cmp   a,$12
0f66: 30 04     bmi   $0f6c
0f68: f0 02     beq   $0f6c
0f6a: c4 12     mov   $12,a
0f6c: fc        inc   y
0f6d: 2f d0     bra   $0f3f
0f6f: 78 ff 00  cmp   $00,#$ff
0f72: d0 01     bne   $0f75
0f74: 6f        ret

0f75: f8 00     mov   x,$00
0f77: e4 08     mov   a,$08
0f79: d4 20     mov   $20+x,a
0f7b: e4 0c     mov   a,$0c
0f7d: d4 28     mov   $28+x,a
0f7f: e5 02 02  mov   a,$0202
0f82: 08 80     or    a,#$80
0f84: d4 30     mov   $30+x,a
0f86: 60        clrc
0f87: e4 04     mov   a,$04
0f89: 88 02     adc   a,#$02
0f8b: d5 8f 04  mov   $048f+x,a
0f8e: e4 05     mov   a,$05
0f90: 88 00     adc   a,#$00
0f92: d5 97 04  mov   $0497+x,a
0f95: f5 7b 21  mov   a,$217b+x
0f98: 2d        push  a
0f99: 04 38     or    a,$38
0f9b: c4 38     mov   $38,a
0f9d: ae        pop   a
0f9e: 48 ff     eor   a,#$ff
0fa0: 24 3c     and   a,$3c
0fa2: c4 3c     mov   $3c,a
0fa4: e8 00     mov   a,#$00
0fa6: d5 67 05  mov   $0567+x,a
0fa9: d5 5f 05  mov   $055f+x,a
0fac: 3f 80 18  call  $1880
0faf: 6f        ret

0fb0: 60        clrc
0fb1: e4 70     mov   a,$70
0fb3: 30 08     bmi   $0fbd
0fb5: 84 71     adc   a,$71
0fb7: 90 0a     bcc   $0fc3
0fb9: e8 ff     mov   a,#$ff
0fbb: 2f 06     bra   $0fc3
0fbd: 84 71     adc   a,$71
0fbf: b0 02     bcs   $0fc3
0fc1: e8 00     mov   a,#$00
0fc3: c4 71     mov   $71,a
0fc5: 3f 96 18  call  $1896
0fc8: e4 38     mov   a,$38
0fca: cd 07     mov   x,#$07
0fcc: 1c        asl   a
0fcd: 90 03     bcc   $0fd2
0fcf: 3f d6 0f  call  $0fd6
0fd2: 1d        dec   x
0fd3: 10 f7     bpl   $0fcc
0fd5: 6f        ret

0fd6: 2d        push  a
0fd7: 4d        push  x
0fd8: 8f 09 f2  mov   $f2,#$09
0fdb: e4 74     mov   a,$74
0fdd: 84 f3     adc   a,$f3
0fdf: c4 74     mov   $74,a
0fe1: 7d        mov   a,x
0fe2: 9f        xcn   a
0fe3: c4 00     mov   $00,a
0fe5: 7d        mov   a,x
0fe6: c4 12     mov   $12,a
0fe8: 1c        asl   a
0fe9: 1c        asl   a
0fea: 1c        asl   a
0feb: 84 12     adc   a,$12
0fed: c4 12     mov   $12,a
0fef: f5 8f 04  mov   a,$048f+x
0ff2: c4 02     mov   $02,a
0ff4: f5 97 04  mov   a,$0497+x
0ff7: c4 03     mov   $03,a
0ff9: 8d 00     mov   y,#$00
0ffb: dd        mov   a,y
0ffc: 8d 00     mov   y,#$00
0ffe: 7a 02     addw  ya,$02
1000: da 02     movw  $02,ya
1002: 8d 00     mov   y,#$00
1004: 4d        push  x
1005: f7 02     mov   a,($02)+y
1007: fc        inc   y
1008: 28 7f     and   a,#$7f
100a: 1c        asl   a
100b: 5d        mov   x,a
100c: 1f 0f 10  jmp   ($100f+x)

100f: dw $1387
1011: dw $13a9
1013: dw $13d4
1015: dw $13f9
1017: dw $1429
1019: dw $146b
101b: dw $148d
101d: dw $14aa
101f: dw $14cf
1021: dw $14f0
1023: dw $1506
1025: dw $1515
1027: dw $1537
1029: dw $1545
102b: dw $1556
102d: dw $156a
102f: dw $1578
1031: dw $1589
1033: dw $1854
1035: dw $15ae
1037: dw $15cc
1039: dw $15e7
103b: dw $160c
103d: dw $1631
103f: dw $1631
1041: dw $1631
1043: dw $1646
1045: dw $165c
1047: dw $1672
1049: dw $1688
104b: dw $169c
104d: dw $16b0
104f: dw $16c6
1051: dw $16f6
1053: dw $1726
1055: dw $1726
1057: dw $1726
1059: dw $174b
105b: dw $1770
105d: dw $1795
105f: dw $17a8
1061: dw $17c4
1063: dw $17d4
1065: dw $17e4
1067: dw $17f4
1069: dw $1804
106b: dw $1814
106d: dw $1824
106f: dw $1837
1071: dw $1377
1073: dw $135a
1075: dw $121a
1077: dw $1247
1079: dw $127d
107b: dw $12ad
107d: dw $12d5
107f: dw $1305
1081: dw $132f
1083: dw $11dc
1085: dw $11f0
1087: dw $1182
1089: dw $1169
108b: dw $114f
108d: dw $1135
108f: dw $15bc
1091: dw $1204
1093: dw $1114
1095: dw $10f9
1097: dw $10de
1099: dw $10b7
109b: dw $109f
109d: dw $10aa

109f: ce        pop   x
10a0: f5 7b 21  mov   a,$217b+x
10a3: 04 3c     or    a,$3c
10a5: c4 3c     mov   $3c,a
10a7: 5f fb 0f  jmp   $0ffb

10aa: ce        pop   x
10ab: f5 7b 21  mov   a,$217b+x
10ae: 48 ff     eor   a,#$ff
10b0: 24 3c     and   a,$3c
10b2: c4 3c     mov   $3c,a
10b4: 5f fb 0f  jmp   $0ffb

10b7: f7 02     mov   a,($02)+y
10b9: fc        inc   y
10ba: 60        clrc
10bb: 84 12     adc   a,$12
10bd: 5d        mov   x,a
10be: e4 74     mov   a,$74
10c0: 1c        asl   a
10c1: 1c        asl   a
10c2: 80        setc
10c3: 84 74     adc   a,$74
10c5: c4 74     mov   $74,a
10c7: 0d        push  psw
10c8: d5 77 05  mov   $0577+x,a
10cb: ae        pop   a
10cc: ce        pop   x
10cd: 28 83     and   a,#$83
10cf: c4 04     mov   $04,a
10d1: f5 6f 05  mov   a,$056f+x
10d4: 28 7c     and   a,#$7c
10d6: 04 04     or    a,$04
10d8: d5 6f 05  mov   $056f+x,a
10db: 5f fb 0f  jmp   $0ffb

10de: ce        pop   x
10df: 4d        push  x
10e0: f5 6f 05  mov   a,$056f+x
10e3: 2d        push  a
10e4: f7 02     mov   a,($02)+y
10e6: fc        inc   y
10e7: 60        clrc
10e8: 84 12     adc   a,$12
10ea: 5d        mov   x,a
10eb: f5 77 05  mov   a,$0577+x
10ee: 8e        pop   psw
10ef: 3c        rol   a
10f0: 0d        push  psw
10f1: d5 77 05  mov   $0577+x,a
10f4: ae        pop   a
10f5: ce        pop   x
10f6: 5f cd 10  jmp   $10cd

10f9: ce        pop   x
10fa: 4d        push  x
10fb: f5 6f 05  mov   a,$056f+x
10fe: 2d        push  a
10ff: f7 02     mov   a,($02)+y
1101: fc        inc   y
1102: 60        clrc
1103: 84 12     adc   a,$12
1105: 5d        mov   x,a
1106: f5 77 05  mov   a,$0577+x
1109: 8e        pop   psw
110a: 7c        ror   a
110b: 0d        push  psw
110c: d5 77 05  mov   $0577+x,a
110f: ae        pop   a
1110: ce        pop   x
1111: 5f cd 10  jmp   $10cd

1114: f7 02     mov   a,($02)+y
1116: fc        inc   y
1117: 60        clrc
1118: 84 12     adc   a,$12
111a: 5d        mov   x,a
111b: f5 77 05  mov   a,$0577+x
111e: 37 02     and   a,($02)+y
1120: 0d        push  psw
1121: fc        inc   y
1122: ae        pop   a
1123: ce        pop   x
1124: 28 82     and   a,#$82
1126: c4 04     mov   $04,a
1128: f5 6f 05  mov   a,$056f+x
112b: 28 7d     and   a,#$7d
112d: 04 04     or    a,$04
112f: d5 6f 05  mov   $056f+x,a
1132: 5f fb 0f  jmp   $0ffb

1135: f7 02     mov   a,($02)+y
1137: fc        inc   y
1138: c4 04     mov   $04,a
113a: f7 02     mov   a,($02)+y
113c: fc        inc   y
113d: 60        clrc
113e: 84 12     adc   a,$12
1140: 5d        mov   x,a
1141: f5 77 05  mov   a,$0577+x
1144: 0d        push  psw
1145: f8 04     mov   x,$04
1147: d5 bf 05  mov   $05bf+x,a
114a: ae        pop   a
114b: ce        pop   x
114c: 5f 24 11  jmp   $1124

114f: f7 02     mov   a,($02)+y
1151: fc        inc   y
1152: 60        clrc
1153: 84 12     adc   a,$12
1155: c4 04     mov   $04,a
1157: f7 02     mov   a,($02)+y
1159: fc        inc   y
115a: 5d        mov   x,a
115b: f5 bf 05  mov   a,$05bf+x
115e: 0d        push  psw
115f: f8 04     mov   x,$04
1161: d5 77 05  mov   $0577+x,a
1164: ae        pop   a
1165: ce        pop   x
1166: 5f 24 11  jmp   $1124

1169: f7 02     mov   a,($02)+y
116b: fc        inc   y
116c: 60        clrc
116d: 5d        mov   x,a
116e: e4 1d     mov   a,$1d
1170: 0d        push  psw
1171: d5 bf 05  mov   $05bf+x,a
1174: e4 1e     mov   a,$1e
1176: d5 c0 05  mov   $05c0+x,a
1179: 28 7f     and   a,#$7f
117b: c4 1e     mov   $1e,a
117d: ae        pop   a
117e: ce        pop   x
117f: 5f 24 11  jmp   $1124

1182: ce        pop   x
1183: d8 06     mov   $06,x
1185: f7 02     mov   a,($02)+y
1187: fc        inc   y
1188: 28 7f     and   a,#$7f
118a: 4d        push  x
118b: 6d        push  y
118c: eb 00     mov   y,$00
118e: 6d        push  y
118f: eb 02     mov   y,$02
1191: 6d        push  y
1192: eb 04     mov   y,$04
1194: 6d        push  y
1195: eb 05     mov   y,$05
1197: 6d        push  y
1198: eb 06     mov   y,$06
119a: 6d        push  y
119b: eb 07     mov   y,$07
119d: 6d        push  y
119e: eb 08     mov   y,$08
11a0: 6d        push  y
11a1: eb 0a     mov   y,$0a
11a3: 6d        push  y
11a4: eb 0c     mov   y,$0c
11a6: 6d        push  y
11a7: eb 0e     mov   y,$0e
11a9: 6d        push  y
11aa: eb 10     mov   y,$10
11ac: 6d        push  y
11ad: eb 12     mov   y,$12
11af: 6d        push  y
11b0: 3f 6e 0e  call  $0e6e
11b3: ee        pop   y
11b4: cb 12     mov   $12,y
11b6: ee        pop   y
11b7: cb 10     mov   $10,y
11b9: ee        pop   y
11ba: cb 0e     mov   $0e,y
11bc: ee        pop   y
11bd: cb 0c     mov   $0c,y
11bf: ee        pop   y
11c0: cb 0a     mov   $0a,y
11c2: ee        pop   y
11c3: cb 08     mov   $08,y
11c5: ee        pop   y
11c6: cb 07     mov   $07,y
11c8: ee        pop   y
11c9: cb 06     mov   $06,y
11cb: ee        pop   y
11cc: cb 05     mov   $05,y
11ce: ee        pop   y
11cf: cb 04     mov   $04,y
11d1: ee        pop   y
11d2: cb 02     mov   $02,y
11d4: ee        pop   y
11d5: cb 00     mov   $00,y
11d7: ee        pop   y
11d8: ce        pop   x
11d9: 5f fb 0f  jmp   $0ffb

11dc: f7 02     mov   a,($02)+y
11de: fc        inc   y
11df: 60        clrc
11e0: 84 12     adc   a,$12
11e2: 5d        mov   x,a
11e3: f5 77 05  mov   a,$0577+x
11e6: 1c        asl   a
11e7: 0d        push  psw
11e8: d5 77 05  mov   $0577+x,a
11eb: ae        pop   a
11ec: ce        pop   x
11ed: 5f cd 10  jmp   $10cd

11f0: f7 02     mov   a,($02)+y
11f2: fc        inc   y
11f3: 60        clrc
11f4: 84 12     adc   a,$12
11f6: 5d        mov   x,a
11f7: f5 77 05  mov   a,$0577+x
11fa: 5c        lsr   a
11fb: 0d        push  psw
11fc: d5 77 05  mov   $0577+x,a
11ff: ae        pop   a
1200: ce        pop   x
1201: 5f cd 10  jmp   $10cd

1204: f7 02     mov   a,($02)+y
1206: fc        inc   y
1207: 60        clrc
1208: 84 12     adc   a,$12
120a: 5d        mov   x,a
120b: f5 77 05  mov   a,$0577+x
120e: 68 80     cmp   a,#$80
1210: 7c        ror   a
1211: 0d        push  psw
1212: d5 77 05  mov   $0577+x,a
1215: ae        pop   a
1216: ce        pop   x
1217: 5f cd 10  jmp   $10cd

121a: e8 02     mov   a,#$02
121c: 04 00     or    a,$00
121e: c4 f2     mov   $f2,a
1220: f7 02     mov   a,($02)+y
1222: fc        inc   y
1223: 60        clrc
1224: 84 12     adc   a,$12
1226: 5d        mov   x,a
1227: f5 78 05  mov   a,$0578+x
122a: c4 04     mov   $04,a
122c: f5 77 05  mov   a,$0577+x
122f: ce        pop   x
1230: d5 9f 04  mov   $049f+x,a
1233: d5 af 04  mov   $04af+x,a
1236: c4 f3     mov   $f3,a
1238: ab f2     inc   $f2
123a: e4 04     mov   a,$04
123c: d5 a7 04  mov   $04a7+x,a
123f: d5 b7 04  mov   $04b7+x,a
1242: c4 f3     mov   $f3,a
1244: 5f fb 0f  jmp   $0ffb

1247: e8 03     mov   a,#$03
1249: 04 00     or    a,$00
124b: c4 f2     mov   $f2,a
124d: f7 02     mov   a,($02)+y
124f: fc        inc   y
1250: 60        clrc
1251: 84 12     adc   a,$12
1253: 5d        mov   x,a
1254: f5 78 05  mov   a,$0578+x
1257: c4 04     mov   $04,a
1259: f5 77 05  mov   a,$0577+x
125c: ce        pop   x
125d: 60        clrc
125e: 95 9f 04  adc   a,$049f+x
1261: d5 9f 04  mov   $049f+x,a
1264: d5 af 04  mov   $04af+x,a
1267: 2d        push  a
1268: e4 04     mov   a,$04
126a: 95 a7 04  adc   a,$04a7+x
126d: d5 a7 04  mov   $04a7+x,a
1270: d5 b7 04  mov   $04b7+x,a
1273: c4 f3     mov   $f3,a
1275: 8b f2     dec   $f2
1277: ae        pop   a
1278: c4 f3     mov   $f3,a
127a: 5f fb 0f  jmp   $0ffb

127d: e8 03     mov   a,#$03
127f: 04 00     or    a,$00
1281: c4 f2     mov   $f2,a
1283: f7 02     mov   a,($02)+y
1285: fc        inc   y
1286: 60        clrc
1287: 84 12     adc   a,$12
1289: 5d        mov   x,a
128a: f5 78 05  mov   a,$0578+x
128d: c4 04     mov   $04,a
128f: f5 77 05  mov   a,$0577+x
1292: ce        pop   x
1293: 60        clrc
1294: 95 af 04  adc   a,$04af+x
1297: d5 af 04  mov   $04af+x,a
129a: 2d        push  a
129b: e4 04     mov   a,$04
129d: 95 b7 04  adc   a,$04b7+x
12a0: d5 b7 04  mov   $04b7+x,a
12a3: c4 f3     mov   $f3,a
12a5: ae        pop   a
12a6: 8b f2     dec   $f2
12a8: c4 f3     mov   $f3,a
12aa: 5f fb 0f  jmp   $0ffb

12ad: f7 02     mov   a,($02)+y
12af: fc        inc   y
12b0: 60        clrc
12b1: 84 12     adc   a,$12
12b3: 5d        mov   x,a
12b4: f5 78 05  mov   a,$0578+x
12b7: c4 04     mov   $04,a
12b9: f5 77 05  mov   a,$0577+x
12bc: ce        pop   x
12bd: d5 bf 04  mov   $04bf+x,a
12c0: d5 cf 04  mov   $04cf+x,a
12c3: c4 06     mov   $06,a
12c5: e4 04     mov   a,$04
12c7: d5 c7 04  mov   $04c7+x,a
12ca: d5 d7 04  mov   $04d7+x,a
12cd: c4 07     mov   $07,a
12cf: 3f ac 18  call  $18ac
12d2: 5f fb 0f  jmp   $0ffb

12d5: f7 02     mov   a,($02)+y
12d7: fc        inc   y
12d8: 60        clrc
12d9: 84 12     adc   a,$12
12db: 5d        mov   x,a
12dc: f5 78 05  mov   a,$0578+x
12df: c4 04     mov   $04,a
12e1: f5 77 05  mov   a,$0577+x
12e4: ce        pop   x
12e5: 60        clrc
12e6: 95 bf 04  adc   a,$04bf+x
12e9: d5 bf 04  mov   $04bf+x,a
12ec: d5 cf 04  mov   $04cf+x,a
12ef: c4 06     mov   $06,a
12f1: e4 04     mov   a,$04
12f3: 60        clrc
12f4: 95 c7 04  adc   a,$04c7+x
12f7: d5 c7 04  mov   $04c7+x,a
12fa: d5 d7 04  mov   $04d7+x,a
12fd: c4 07     mov   $07,a
12ff: 3f ac 18  call  $18ac
1302: 5f fb 0f  jmp   $0ffb

1305: f7 02     mov   a,($02)+y
1307: fc        inc   y
1308: 60        clrc
1309: 84 12     adc   a,$12
130b: 5d        mov   x,a
130c: f5 78 05  mov   a,$0578+x
130f: c4 04     mov   $04,a
1311: f5 77 05  mov   a,$0577+x
1314: ce        pop   x
1315: 60        clrc
1316: 95 cf 04  adc   a,$04cf+x
1319: d5 cf 04  mov   $04cf+x,a
131c: c4 06     mov   $06,a
131e: e4 04     mov   a,$04
1320: 60        clrc
1321: 95 d7 04  adc   a,$04d7+x
1324: d5 d7 04  mov   $04d7+x,a
1327: c4 07     mov   $07,a
1329: 3f ac 18  call  $18ac
132c: 5f fb 0f  jmp   $0ffb

132f: ce        pop   x
1330: f5 67 05  mov   a,$0567+x
1333: d0 16     bne   $134b
1335: 4d        push  x
1336: f7 02     mov   a,($02)+y
1338: 60        clrc
1339: 84 12     adc   a,$12
133b: 5d        mov   x,a
133c: f5 77 05  mov   a,$0577+x
133f: d0 02     bne   $1343
1341: e8 01     mov   a,#$01
1343: ce        pop   x
1344: d5 67 05  mov   $0567+x,a
1347: dc        dec   y
1348: 5f 6f 18  jmp   $186f

134b: dc        dec   y
134c: 9c        dec   a
134d: d5 67 05  mov   $0567+x,a
1350: f0 03     beq   $1355
1352: 5f 6f 18  jmp   $186f

1355: fc        inc   y
1356: fc        inc   y
1357: 5f fb 0f  jmp   $0ffb

135a: f7 02     mov   a,($02)+y
135c: fc        inc   y
135d: 60        clrc
135e: 84 12     adc   a,$12
1360: 5d        mov   x,a
1361: 8f 6c f2  mov   $f2,#$6c
1364: e4 f3     mov   a,$f3
1366: 28 e0     and   a,#$e0
1368: c4 04     mov   $04,a
136a: f5 77 05  mov   a,$0577+x
136d: 28 1f     and   a,#$1f
136f: 04 04     or    a,$04
1371: c4 f3     mov   $f3,a
1373: ce        pop   x
1374: 5f fb 0f  jmp   $0ffb

1377: ce        pop   x
1378: 8f 6c f2  mov   $f2,#$6c
137b: e4 f3     mov   a,$f3
137d: 28 e0     and   a,#$e0
137f: 17 02     or    a,($02)+y
1381: fc        inc   y
1382: c4 f3     mov   $f3,a
1384: 5f fb 0f  jmp   $0ffb

1387: ce        pop   x
1388: e8 02     mov   a,#$02
138a: 04 00     or    a,$00
138c: c4 f2     mov   $f2,a
138e: f7 02     mov   a,($02)+y
1390: fc        inc   y
1391: d5 9f 04  mov   $049f+x,a
1394: d5 af 04  mov   $04af+x,a
1397: c4 f3     mov   $f3,a
1399: ab f2     inc   $f2
139b: f7 02     mov   a,($02)+y
139d: fc        inc   y
139e: d5 a7 04  mov   $04a7+x,a
13a1: d5 b7 04  mov   $04b7+x,a
13a4: c4 f3     mov   $f3,a
13a6: 5f fb 0f  jmp   $0ffb

13a9: ce        pop   x
13aa: e8 03     mov   a,#$03
13ac: 04 00     or    a,$00
13ae: c4 f2     mov   $f2,a
13b0: f7 02     mov   a,($02)+y
13b2: fc        inc   y
13b3: 60        clrc
13b4: 95 9f 04  adc   a,$049f+x
13b7: d5 9f 04  mov   $049f+x,a
13ba: d5 af 04  mov   $04af+x,a
13bd: 2d        push  a
13be: f7 02     mov   a,($02)+y
13c0: 95 a7 04  adc   a,$04a7+x
13c3: d5 a7 04  mov   $04a7+x,a
13c6: d5 b7 04  mov   $04b7+x,a
13c9: fc        inc   y
13ca: c4 f3     mov   $f3,a
13cc: 8b f2     dec   $f2
13ce: ae        pop   a
13cf: c4 f3     mov   $f3,a
13d1: 5f fb 0f  jmp   $0ffb

13d4: ce        pop   x
13d5: e8 03     mov   a,#$03
13d7: 04 00     or    a,$00
13d9: c4 f2     mov   $f2,a
13db: f7 02     mov   a,($02)+y
13dd: fc        inc   y
13de: 60        clrc
13df: 95 af 04  adc   a,$04af+x
13e2: d5 af 04  mov   $04af+x,a
13e5: 2d        push  a
13e6: f7 02     mov   a,($02)+y
13e8: 95 b7 04  adc   a,$04b7+x
13eb: d5 b7 04  mov   $04b7+x,a
13ee: c4 f3     mov   $f3,a
13f0: fc        inc   y
13f1: ae        pop   a
13f2: 8b f2     dec   $f2
13f4: c4 f3     mov   $f3,a
13f6: 5f fb 0f  jmp   $0ffb

13f9: ce        pop   x
13fa: f5 5f 05  mov   a,$055f+x
13fd: bc        inc   a
13fe: d5 5f 05  mov   $055f+x,a
1401: 4d        push  x
1402: d8 01     mov   $01,x
1404: 9c        dec   a
1405: 1c        asl   a
1406: 1c        asl   a
1407: 1c        asl   a
1408: 04 01     or    a,$01
140a: 5d        mov   x,a
140b: f7 02     mov   a,($02)+y
140d: fc        inc   y
140e: d5 1f 05  mov   $051f+x,a
1411: f7 02     mov   a,($02)+y
1413: fc        inc   y
1414: d5 3f 05  mov   $053f+x,a
1417: dd        mov   a,y
1418: 60        clrc
1419: 84 02     adc   a,$02
141b: d5 df 04  mov   $04df+x,a
141e: e8 00     mov   a,#$00
1420: 84 03     adc   a,$03
1422: d5 ff 04  mov   $04ff+x,a
1425: ce        pop   x
1426: 5f fb 0f  jmp   $0ffb

1429: ce        pop   x
142a: 4d        push  x
142b: f5 5f 05  mov   a,$055f+x
142e: 9c        dec   a
142f: d8 01     mov   $01,x
1431: 1c        asl   a
1432: 1c        asl   a
1433: 1c        asl   a
1434: 04 01     or    a,$01
1436: 5d        mov   x,a
1437: f5 1f 05  mov   a,$051f+x
143a: 15 3f 05  or    a,$053f+x
143d: f0 21     beq   $1460
143f: 80        setc
1440: f5 1f 05  mov   a,$051f+x
1443: a8 01     sbc   a,#$01
1445: d5 1f 05  mov   $051f+x,a
1448: f5 3f 05  mov   a,$053f+x
144b: a8 00     sbc   a,#$00
144d: d5 3f 05  mov   $053f+x,a
1450: f5 df 04  mov   a,$04df+x
1453: c4 02     mov   $02,a
1455: f5 ff 04  mov   a,$04ff+x
1458: c4 03     mov   $03,a
145a: 8d 00     mov   y,#$00
145c: ce        pop   x
145d: 5f 6f 18  jmp   $186f

1460: ce        pop   x
1461: f5 5f 05  mov   a,$055f+x
1464: 9c        dec   a
1465: d5 5f 05  mov   $055f+x,a
1468: 5f 6f 18  jmp   $186f

146b: ce        pop   x
146c: f7 02     mov   a,($02)+y
146e: fc        inc   y
146f: c4 04     mov   $04,a
1471: f7 02     mov   a,($02)+y
1473: c4 05     mov   $05,a
1475: 6d        push  y
1476: ba 02     movw  ya,$02
1478: 7a 04     addw  ya,$04
147a: da 04     movw  $04,ya
147c: ae        pop   a
147d: 80        setc
147e: 84 04     adc   a,$04
1480: c4 02     mov   $02,a
1482: e8 00     mov   a,#$00
1484: 84 05     adc   a,$05
1486: c4 03     mov   $03,a
1488: 8d 00     mov   y,#$00
148a: 5f fb 0f  jmp   $0ffb

148d: ce        pop   x
148e: f7 02     mov   a,($02)+y
1490: fc        inc   y
1491: d5 bf 04  mov   $04bf+x,a
1494: d5 cf 04  mov   $04cf+x,a
1497: c4 06     mov   $06,a
1499: f7 02     mov   a,($02)+y
149b: fc        inc   y
149c: d5 c7 04  mov   $04c7+x,a
149f: d5 d7 04  mov   $04d7+x,a
14a2: c4 07     mov   $07,a
14a4: 3f ac 18  call  $18ac
14a7: 5f fb 0f  jmp   $0ffb

14aa: ce        pop   x
14ab: f7 02     mov   a,($02)+y
14ad: fc        inc   y
14ae: 60        clrc
14af: 95 bf 04  adc   a,$04bf+x
14b2: d5 bf 04  mov   $04bf+x,a
14b5: d5 cf 04  mov   $04cf+x,a
14b8: c4 06     mov   $06,a
14ba: f7 02     mov   a,($02)+y
14bc: fc        inc   y
14bd: 60        clrc
14be: 95 c7 04  adc   a,$04c7+x
14c1: d5 c7 04  mov   $04c7+x,a
14c4: d5 d7 04  mov   $04d7+x,a
14c7: c4 07     mov   $07,a
14c9: 3f ac 18  call  $18ac
14cc: 5f fb 0f  jmp   $0ffb

14cf: ce        pop   x
14d0: f7 02     mov   a,($02)+y
14d2: fc        inc   y
14d3: 60        clrc
14d4: 95 cf 04  adc   a,$04cf+x
14d7: d5 cf 04  mov   $04cf+x,a
14da: c4 06     mov   $06,a
14dc: ab f2     inc   $f2
14de: f7 02     mov   a,($02)+y
14e0: fc        inc   y
14e1: 60        clrc
14e2: 95 d7 04  adc   a,$04d7+x
14e5: d5 d7 04  mov   $04d7+x,a
14e8: c4 07     mov   $07,a
14ea: 3f ac 18  call  $18ac
14ed: 5f fb 0f  jmp   $0ffb

14f0: ce        pop   x
14f1: e8 06     mov   a,#$06
14f3: 04 00     or    a,$00
14f5: c4 f2     mov   $f2,a
14f7: f7 02     mov   a,($02)+y
14f9: fc        inc   y
14fa: c4 f3     mov   $f3,a
14fc: 8b f2     dec   $f2
14fe: f7 02     mov   a,($02)+y
1500: fc        inc   y
1501: c4 f3     mov   $f3,a
1503: 5f fb 0f  jmp   $0ffb

1506: ce        pop   x
1507: e8 07     mov   a,#$07
1509: 04 00     or    a,$00
150b: c4 f2     mov   $f2,a
150d: f7 02     mov   a,($02)+y
150f: fc        inc   y
1510: c4 f3     mov   $f3,a
1512: 5f fb 0f  jmp   $0ffb

1515: ce        pop   x
1516: e8 04     mov   a,#$04
1518: 04 00     or    a,$00
151a: c4 f2     mov   $f2,a
151c: e4 12     mov   a,$12
151e: 2d        push  a
151f: f7 02     mov   a,($02)+y
1521: fc        inc   y
1522: 6d        push  y
1523: 3f 04 0e  call  $0e04
1526: 8d 0c     mov   y,#$0c
1528: f7 12     mov   a,($12)+y
152a: fd        mov   y,a
152b: f6 4c de  mov   a,$de4c+y
152e: c4 f3     mov   $f3,a
1530: ee        pop   y
1531: ae        pop   a
1532: c4 12     mov   $12,a
1534: 5f fb 0f  jmp   $0ffb

1537: ce        pop   x
1538: 8f 2d f2  mov   $f2,#$2d
153b: f5 7b 21  mov   a,$217b+x
153e: 04 f3     or    a,$f3
1540: c4 f3     mov   $f3,a
1542: 5f fb 0f  jmp   $0ffb

1545: ce        pop   x
1546: f5 7b 21  mov   a,$217b+x
1549: 2d        push  a
154a: 04 39     or    a,$39
154c: c4 39     mov   $39,a
154e: ae        pop   a
154f: 04 3a     or    a,$3a
1551: c4 3a     mov   $3a,a
1553: 5f fb 0f  jmp   $0ffb

1556: ce        pop   x
1557: f5 7b 21  mov   a,$217b+x
155a: 04 3a     or    a,$3a
155c: c4 3a     mov   $3a,a
155e: 7d        mov   a,x
155f: 9f        xcn   a
1560: 08 05     or    a,#$05
1562: c4 f2     mov   $f2,a
1564: 8f 00 f3  mov   $f3,#$00
1567: 5f fb 0f  jmp   $0ffb

156a: ce        pop   x
156b: f7 02     mov   a,($02)+y
156d: fc        inc   y
156e: c4 f2     mov   $f2,a
1570: f7 02     mov   a,($02)+y
1572: fc        inc   y
1573: c4 f3     mov   $f3,a
1575: 5f fb 0f  jmp   $0ffb

1578: ce        pop   x
1579: f7 02     mov   a,($02)+y
157b: fc        inc   y
157c: c4 f2     mov   $f2,a
157e: f7 02     mov   a,($02)+y
1580: fc        inc   y
1581: 60        clrc
1582: 84 f3     adc   a,$f3
1584: c4 f3     mov   $f3,a
1586: 5f fb 0f  jmp   $0ffb

1589: ce        pop   x
158a: f5 67 05  mov   a,$0567+x
158d: f0 03     beq   $1592
158f: 5f 9f 15  jmp   $159f

1592: f7 02     mov   a,($02)+y
1594: d0 02     bne   $1598
1596: e8 01     mov   a,#$01
1598: d5 67 05  mov   $0567+x,a
159b: dc        dec   y
159c: 5f 6f 18  jmp   $186f

159f: dc        dec   y
15a0: 9c        dec   a
15a1: d5 67 05  mov   $0567+x,a
15a4: f0 03     beq   $15a9
15a6: 5f 6f 18  jmp   $186f

15a9: fc        inc   y
15aa: fc        inc   y
15ab: 5f fb 0f  jmp   $0ffb

15ae: ce        pop   x
15af: 8f 3d f2  mov   $f2,#$3d
15b2: f5 7b 21  mov   a,$217b+x
15b5: 04 f3     or    a,$f3
15b7: c4 f3     mov   $f3,a
15b9: 5f fb 0f  jmp   $0ffb

15bc: ce        pop   x
15bd: 8f 3d f2  mov   $f2,#$3d
15c0: f5 7b 21  mov   a,$217b+x
15c3: 48 ff     eor   a,#$ff
15c5: 24 f3     and   a,$f3
15c7: c4 f3     mov   $f3,a
15c9: 5f fb 0f  jmp   $0ffb

15cc: f7 02     mov   a,($02)+y
15ce: fc        inc   y
15cf: 60        clrc
15d0: 84 12     adc   a,$12
15d2: 5d        mov   x,a
15d3: e4 1d     mov   a,$1d
15d5: 0d        push  psw
15d6: d5 77 05  mov   $0577+x,a
15d9: e4 1e     mov   a,$1e
15db: d5 78 05  mov   $0578+x,a
15de: 28 7f     and   a,#$7f
15e0: c4 1e     mov   $1e,a
15e2: ae        pop   a
15e3: ce        pop   x
15e4: 5f 24 11  jmp   $1124

15e7: f7 02     mov   a,($02)+y
15e9: fc        inc   y
15ea: 60        clrc
15eb: 84 12     adc   a,$12
15ed: 5d        mov   x,a
15ee: f7 02     mov   a,($02)+y
15f0: fc        inc   y
15f1: 60        clrc
15f2: 95 77 05  adc   a,$0577+x
15f5: 0d        push  psw
15f6: d5 77 05  mov   $0577+x,a
15f9: ae        pop   a
15fa: ce        pop   x
15fb: 28 cb     and   a,#$cb
15fd: c4 04     mov   $04,a
15ff: f5 6f 05  mov   a,$056f+x
1602: 28 34     and   a,#$34
1604: 04 04     or    a,$04
1606: d5 6f 05  mov   $056f+x,a
1609: 5f fb 0f  jmp   $0ffb

160c: f7 02     mov   a,($02)+y
160e: fc        inc   y
160f: 60        clrc
1610: 84 12     adc   a,$12
1612: 5d        mov   x,a
1613: 80        setc
1614: f5 77 05  mov   a,$0577+x
1617: b7 02     sbc   a,($02)+y
1619: 0d        push  psw
161a: fc        inc   y
161b: d5 77 05  mov   $0577+x,a
161e: ae        pop   a
161f: ce        pop   x
1620: 28 cb     and   a,#$cb
1622: c4 04     mov   $04,a
1624: f5 6f 05  mov   a,$056f+x
1627: 28 34     and   a,#$34
1629: 04 04     or    a,$04
162b: d5 6f 05  mov   $056f+x,a
162e: 5f fb 0f  jmp   $0ffb

1631: f7 02     mov   a,($02)+y
1633: fc        inc   y
1634: 60        clrc
1635: 84 12     adc   a,$12
1637: 5d        mov   x,a
1638: f5 77 05  mov   a,$0577+x
163b: 48 ff     eor   a,#$ff
163d: 0d        push  psw
163e: d5 77 05  mov   $0577+x,a
1641: ae        pop   a
1642: ce        pop   x
1643: 5f 24 11  jmp   $1124

1646: f7 02     mov   a,($02)+y
1648: fc        inc   y
1649: 60        clrc
164a: 84 12     adc   a,$12
164c: 5d        mov   x,a
164d: f5 77 05  mov   a,$0577+x
1650: 37 02     and   a,($02)+y
1652: 0d        push  psw
1653: fc        inc   y
1654: d5 77 05  mov   $0577+x,a
1657: ae        pop   a
1658: ce        pop   x
1659: 5f 24 11  jmp   $1124

165c: f7 02     mov   a,($02)+y
165e: fc        inc   y
165f: 60        clrc
1660: 84 12     adc   a,$12
1662: 5d        mov   x,a
1663: f5 77 05  mov   a,$0577+x
1666: 17 02     or    a,($02)+y
1668: 0d        push  psw
1669: fc        inc   y
166a: d5 77 05  mov   $0577+x,a
166d: ae        pop   a
166e: ce        pop   x
166f: 5f 24 11  jmp   $1124

1672: f7 02     mov   a,($02)+y
1674: fc        inc   y
1675: 60        clrc
1676: 84 12     adc   a,$12
1678: 5d        mov   x,a
1679: f5 77 05  mov   a,$0577+x
167c: 57 02     eor   a,($02)+y
167e: 0d        push  psw
167f: fc        inc   y
1680: d5 77 05  mov   $0577+x,a
1683: ae        pop   a
1684: ce        pop   x
1685: 5f 24 11  jmp   $1124

1688: f7 02     mov   a,($02)+y
168a: fc        inc   y
168b: 60        clrc
168c: 84 12     adc   a,$12
168e: 5d        mov   x,a
168f: f5 77 05  mov   a,$0577+x
1692: bc        inc   a
1693: 0d        push  psw
1694: d5 77 05  mov   $0577+x,a
1697: ae        pop   a
1698: ce        pop   x
1699: 5f 24 11  jmp   $1124

169c: f7 02     mov   a,($02)+y
169e: fc        inc   y
169f: 60        clrc
16a0: 84 12     adc   a,$12
16a2: 5d        mov   x,a
16a3: f5 77 05  mov   a,$0577+x
16a6: 9c        dec   a
16a7: 0d        push  psw
16a8: d5 77 05  mov   $0577+x,a
16ab: ae        pop   a
16ac: ce        pop   x
16ad: 5f 24 11  jmp   $1124

16b0: f7 02     mov   a,($02)+y
16b2: fc        inc   y
16b3: 60        clrc
16b4: 84 12     adc   a,$12
16b6: 5d        mov   x,a
16b7: f5 77 05  mov   a,$0577+x
16ba: 48 ff     eor   a,#$ff
16bc: bc        inc   a
16bd: 0d        push  psw
16be: d5 77 05  mov   $0577+x,a
16c1: ae        pop   a
16c2: ce        pop   x
16c3: 5f 24 11  jmp   $1124

16c6: f7 02     mov   a,($02)+y
16c8: fc        inc   y
16c9: 60        clrc
16ca: 84 12     adc   a,$12
16cc: 5d        mov   x,a
16cd: f5 77 05  mov   a,$0577+x
16d0: c4 04     mov   $04,a
16d2: f7 02     mov   a,($02)+y
16d4: fc        inc   y
16d5: 60        clrc
16d6: 84 12     adc   a,$12
16d8: 5d        mov   x,a
16d9: 60        clrc
16da: f5 77 05  mov   a,$0577+x
16dd: 84 04     adc   a,$04
16df: 0d        push  psw
16e0: d5 77 05  mov   $0577+x,a
16e3: ae        pop   a
16e4: ce        pop   x
16e5: 28 cb     and   a,#$cb
16e7: c4 04     mov   $04,a
16e9: f5 6f 05  mov   a,$056f+x
16ec: 28 34     and   a,#$34
16ee: 04 04     or    a,$04
16f0: d5 6f 05  mov   $056f+x,a
16f3: 5f fb 0f  jmp   $0ffb

16f6: f7 02     mov   a,($02)+y
16f8: fc        inc   y
16f9: 60        clrc
16fa: 84 12     adc   a,$12
16fc: 5d        mov   x,a
16fd: f5 77 05  mov   a,$0577+x
1700: c4 04     mov   $04,a
1702: f7 02     mov   a,($02)+y
1704: fc        inc   y
1705: 60        clrc
1706: 84 12     adc   a,$12
1708: 5d        mov   x,a
1709: 80        setc
170a: f5 77 05  mov   a,$0577+x
170d: a4 04     sbc   a,$04
170f: 0d        push  psw
1710: d5 77 05  mov   $0577+x,a
1713: ae        pop   a
1714: ce        pop   x
1715: 28 cb     and   a,#$cb
1717: c4 04     mov   $04,a
1719: f5 6f 05  mov   a,$056f+x
171c: 28 34     and   a,#$34
171e: 04 04     or    a,$04
1720: d5 6f 05  mov   $056f+x,a
1723: 5f fb 0f  jmp   $0ffb

1726: f7 02     mov   a,($02)+y
1728: fc        inc   y
1729: 60        clrc
172a: 84 12     adc   a,$12
172c: 5d        mov   x,a
172d: f5 77 05  mov   a,$0577+x
1730: d8 05     mov   $05,x
1732: c4 04     mov   $04,a
1734: f7 02     mov   a,($02)+y
1736: fc        inc   y
1737: 60        clrc
1738: 84 12     adc   a,$12
173a: 5d        mov   x,a
173b: f5 77 05  mov   a,$0577+x
173e: 24 04     and   a,$04
1740: 0d        push  psw
1741: f8 05     mov   x,$05
1743: d5 77 05  mov   $0577+x,a
1746: ae        pop   a
1747: ce        pop   x
1748: 5f 24 11  jmp   $1124

174b: f7 02     mov   a,($02)+y
174d: fc        inc   y
174e: 60        clrc
174f: 84 12     adc   a,$12
1751: 5d        mov   x,a
1752: f5 77 05  mov   a,$0577+x
1755: d8 05     mov   $05,x
1757: c4 04     mov   $04,a
1759: f7 02     mov   a,($02)+y
175b: fc        inc   y
175c: 60        clrc
175d: 84 12     adc   a,$12
175f: 5d        mov   x,a
1760: f5 77 05  mov   a,$0577+x
1763: 04 04     or    a,$04
1765: 0d        push  psw
1766: f8 05     mov   x,$05
1768: d5 77 05  mov   $0577+x,a
176b: ae        pop   a
176c: ce        pop   x
176d: 5f 24 11  jmp   $1124

1770: f7 02     mov   a,($02)+y
1772: fc        inc   y
1773: 60        clrc
1774: 84 12     adc   a,$12
1776: 5d        mov   x,a
1777: f5 77 05  mov   a,$0577+x
177a: d8 05     mov   $05,x
177c: c4 04     mov   $04,a
177e: f7 02     mov   a,($02)+y
1780: fc        inc   y
1781: 60        clrc
1782: 84 12     adc   a,$12
1784: 5d        mov   x,a
1785: f5 77 05  mov   a,$0577+x
1788: 44 04     eor   a,$04
178a: 0d        push  psw
178b: f8 05     mov   x,$05
178d: d5 77 05  mov   $0577+x,a
1790: ae        pop   a
1791: ce        pop   x
1792: 5f 24 11  jmp   $1124

1795: f7 02     mov   a,($02)+y
1797: fc        inc   y
1798: 60        clrc
1799: 84 12     adc   a,$12
179b: 5d        mov   x,a
179c: f5 77 05  mov   a,$0577+x
179f: 77 02     cmp   a,($02)+y
17a1: 0d        push  psw
17a2: fc        inc   y
17a3: ae        pop   a
17a4: ce        pop   x
17a5: 5f cd 10  jmp   $10cd

17a8: f7 02     mov   a,($02)+y
17aa: fc        inc   y
17ab: 60        clrc
17ac: 84 12     adc   a,$12
17ae: 5d        mov   x,a
17af: f5 77 05  mov   a,$0577+x
17b2: 2d        push  a
17b3: f7 02     mov   a,($02)+y
17b5: fc        inc   y
17b6: 60        clrc
17b7: 84 12     adc   a,$12
17b9: 5d        mov   x,a
17ba: ae        pop   a
17bb: 75 77 05  cmp   a,$0577+x
17be: 0d        push  psw
17bf: ae        pop   a
17c0: ce        pop   x
17c1: 5f cd 10  jmp   $10cd

17c4: ce        pop   x
17c5: f5 6f 05  mov   a,$056f+x
17c8: 2d        push  a
17c9: 8e        pop   psw
17ca: d0 03     bne   $17cf
17cc: 5f 6c 14  jmp   $146c

17cf: fc        inc   y
17d0: fc        inc   y
17d1: 5f fb 0f  jmp   $0ffb

17d4: ce        pop   x
17d5: f5 6f 05  mov   a,$056f+x
17d8: 2d        push  a
17d9: 8e        pop   psw
17da: f0 03     beq   $17df
17dc: 5f 6c 14  jmp   $146c

17df: fc        inc   y
17e0: fc        inc   y
17e1: 5f fb 0f  jmp   $0ffb

17e4: ce        pop   x
17e5: f5 6f 05  mov   a,$056f+x
17e8: 2d        push  a
17e9: 8e        pop   psw
17ea: 30 03     bmi   $17ef
17ec: 5f 6c 14  jmp   $146c

17ef: fc        inc   y
17f0: fc        inc   y
17f1: 5f fb 0f  jmp   $0ffb

17f4: ce        pop   x
17f5: f5 6f 05  mov   a,$056f+x
17f8: 2d        push  a
17f9: 8e        pop   psw
17fa: 10 03     bpl   $17ff
17fc: 5f 6c 14  jmp   $146c

17ff: fc        inc   y
1800: fc        inc   y
1801: 5f fb 0f  jmp   $0ffb

1804: ce        pop   x
1805: f5 6f 05  mov   a,$056f+x
1808: 2d        push  a
1809: 8e        pop   psw
180a: b0 03     bcs   $180f
180c: 5f 6c 14  jmp   $146c

180f: fc        inc   y
1810: fc        inc   y
1811: 5f fb 0f  jmp   $0ffb

1814: ce        pop   x
1815: f5 6f 05  mov   a,$056f+x
1818: 2d        push  a
1819: 8e        pop   psw
181a: 90 03     bcc   $181f
181c: 5f 6c 14  jmp   $146c

181f: fc        inc   y
1820: fc        inc   y
1821: 5f fb 0f  jmp   $0ffb

1824: f7 02     mov   a,($02)+y
1826: fc        inc   y
1827: 60        clrc
1828: 84 12     adc   a,$12
182a: 5d        mov   x,a
182b: f7 02     mov   a,($02)+y
182d: 0d        push  psw
182e: d5 77 05  mov   $0577+x,a
1831: fc        inc   y
1832: ae        pop   a
1833: ce        pop   x
1834: 5f 24 11  jmp   $1124

1837: f7 02     mov   a,($02)+y
1839: fc        inc   y
183a: 60        clrc
183b: 84 12     adc   a,$12
183d: c4 04     mov   $04,a
183f: f7 02     mov   a,($02)+y
1841: fc        inc   y
1842: 60        clrc
1843: 84 12     adc   a,$12
1845: 5d        mov   x,a
1846: f5 77 05  mov   a,$0577+x
1849: 0d        push  psw
184a: f8 04     mov   x,$04
184c: d5 77 05  mov   $0577+x,a
184f: ae        pop   a
1850: ce        pop   x
1851: 5f 24 11  jmp   $1124

1854: ce        pop   x
1855: 3f 80 18  call  $1880
1858: f5 7b 21  mov   a,$217b+x
185b: 48 ff     eor   a,#$ff
185d: 2d        push  a
185e: 24 38     and   a,$38
1860: c4 38     mov   $38,a
1862: ae        pop   a
1863: 24 3c     and   a,$3c
1865: c4 3c     mov   $3c,a
1867: e8 00     mov   a,#$00
1869: d4 20     mov   $20+x,a
186b: d4 28     mov   $28+x,a
186d: d4 30     mov   $30+x,a
186f: dd        mov   a,y
1870: 8d 00     mov   y,#$00
1872: 7a 02     addw  ya,$02
1874: da 02     movw  $02,ya
1876: d5 8f 04  mov   $048f+x,a
1879: dd        mov   a,y
187a: d5 97 04  mov   $0497+x,a
187d: ce        pop   x
187e: ae        pop   a
187f: 6f        ret

1880: 8f 2d f2  mov   $f2,#$2d
1883: f5 7b 21  mov   a,$217b+x
1886: 48 ff     eor   a,#$ff
1888: 2d        push  a
1889: 24 f3     and   a,$f3
188b: c4 f3     mov   $f3,a
188d: ae        pop   a
188e: 8f 3d f2  mov   $f2,#$3d
1891: 24 f3     and   a,$f3
1893: c4 f3     mov   $f3,a
1895: 6f        ret

1896: ba f6     movw  ya,$f6
1898: da 00     movw  $00,ya
189a: dd        mov   a,y
189b: 44 1c     eor   a,$1c
189d: 10 0c     bpl   $18ab
189f: ba 00     movw  ya,$00
18a1: da 1b     movw  $1b,ya
18a3: da f6     movw  $f6,ya
18a5: da 1d     movw  $1d,ya
18a7: 18 80 1e  or    $1e,#$80
18aa: 6f        ret

18ab: 6f        ret

18ac: 6d        push  y
18ad: e4 6d     mov   a,$6d
18af: f0 1a     beq   $18cb
18b1: e4 06     mov   a,$06
18b3: 10 03     bpl   $18b8
18b5: 48 ff     eor   a,#$ff
18b7: bc        inc   a
18b8: c4 06     mov   $06,a
18ba: e4 07     mov   a,$07
18bc: 10 03     bpl   $18c1
18be: 48 ff     eor   a,#$ff
18c0: bc        inc   a
18c1: c4 07     mov   $07,a
18c3: 60        clrc
18c4: 84 06     adc   a,$06
18c6: 5c        lsr   a
18c7: c4 06     mov   $06,a
18c9: c4 07     mov   $07,a
18cb: eb 71     mov   y,$71
18cd: e4 06     mov   a,$06
18cf: cf        mul   ya
18d0: cb 06     mov   $06,y
18d2: eb 71     mov   y,$71
18d4: e4 07     mov   a,$07
18d6: cf        mul   ya
18d7: cb 07     mov   $07,y
18d9: e8 00     mov   a,#$00
18db: 04 00     or    a,$00
18dd: c4 f2     mov   $f2,a
18df: fa 06 f3  mov   ($f3),($06)
18e2: ab f2     inc   $f2
18e4: fa 07 f3  mov   ($f3),($07)
18e7: ee        pop   y
18e8: 6f        ret

18e9: f5 55 02  mov   a,$0255+x
18ec: f0 0c     beq   $18fa
18ee: c4 00     mov   $00,a
18f0: e8 00     mov   a,#$00
18f2: d5 55 02  mov   $0255+x,a
18f5: e4 00     mov   a,$00
18f7: 5f ff 18  jmp   $18ff

18fa: 3f cf 1b  call  $1bcf
18fd: c4 00     mov   $00,a
18ff: 5c        lsr   a
1900: 9f        xcn   a
1901: 28 07     and   a,#$07
1903: 1c        asl   a
1904: 4d        push  x
1905: 5d        mov   x,a
1906: 1f 09 19  jmp   ($1909+x)

1909: dw $1919
190b: dw $1940
190d: dw $195d
190f: dw $196a
1911: dw $1979
1913: dw $199b
1915: dw $19bb
1917: dw $198a

1919: ce        pop   x
191a: e4 00     mov   a,$00
191c: 28 1f     and   a,#$1f
191e: 68 10     cmp   a,#$10
1920: 90 02     bcc   $1924
1922: 08 e0     or    a,#$e0
1924: 60        clrc
1925: 95 85 02  adc   a,$0285+x
1928: d5 85 02  mov   $0285+x,a
192b: c4 02     mov   $02,a
192d: f5 35 02  mov   a,$0235+x
1930: c4 00     mov   $00,a
1932: 4d        push  x
1933: 3f 92 0a  call  $0a92
1936: ce        pop   x
1937: f5 65 02  mov   a,$0265+x
193a: c4 04     mov   $04,a
193c: 3f dd 1c  call  $1cdd
193f: 6f        ret

1940: ce        pop   x
1941: e4 00     mov   a,$00
1943: 28 1f     and   a,#$1f
1945: 68 10     cmp   a,#$10
1947: 90 02     bcc   $194b
1949: 08 e0     or    a,#$e0
194b: 60        clrc
194c: 95 85 02  adc   a,$0285+x
194f: d5 85 02  mov   $0285+x,a
1952: c4 02     mov   $02,a
1954: f5 35 02  mov   a,$0235+x
1957: c4 00     mov   $00,a
1959: 3f eb 1d  call  $1deb
195c: 6f        ret

195d: ce        pop   x
195e: e4 00     mov   a,$00
1960: 28 1f     and   a,#$1f
1962: bc        inc   a
1963: d5 25 02  mov   $0225+x,a
1966: d5 75 02  mov   $0275+x,a
1969: 6f        ret

196a: ce        pop   x
196b: e4 00     mov   a,$00
196d: 28 1f     and   a,#$1f
196f: bc        inc   a
1970: d5 25 02  mov   $0225+x,a
1973: e8 20     mov   a,#$20
1975: d5 55 02  mov   $0255+x,a
1978: 6f        ret

1979: ce        pop   x
197a: f5 75 02  mov   a,$0275+x
197d: d5 25 02  mov   $0225+x,a
1980: e4 00     mov   a,$00
1982: 28 1f     and   a,#$1f
1984: 08 20     or    a,#$20
1986: d5 55 02  mov   $0255+x,a
1989: 6f        ret

198a: ce        pop   x
198b: f5 75 02  mov   a,$0275+x
198e: d5 25 02  mov   $0225+x,a
1991: e4 00     mov   a,$00
1993: 28 1f     and   a,#$1f
1995: 08 a0     or    a,#$a0
1997: d5 55 02  mov   $0255+x,a
199a: 6f        ret

199b: ce        pop   x
199c: e4 00     mov   a,$00
199e: 28 1f     and   a,#$1f
19a0: 68 10     cmp   a,#$10
19a2: 90 02     bcc   $19a6
19a4: 08 e0     or    a,#$e0
19a6: 60        clrc
19a7: 95 95 02  adc   a,$0295+x
19aa: d5 95 02  mov   $0295+x,a
19ad: 08 80     or    a,#$80
19af: c4 04     mov   $04,a
19b1: f5 35 02  mov   a,$0235+x
19b4: 5d        mov   x,a
19b5: e4 04     mov   a,$04
19b7: d5 6f 03  mov   $036f+x,a
19ba: 6f        ret

19bb: e4 00     mov   a,$00
19bd: 28 1f     and   a,#$1f
19bf: 68 18     cmp   a,#$18
19c1: 90 03     bcc   $19c6
19c3: 5f c8 1b  jmp   $1bc8

19c6: 1c        asl   a
19c7: 5d        mov   x,a
19c8: 1f cb 19  jmp   ($19cb+x)

19cb: dw $19fd
19cd: dw $1a0d
19cf: dw $1a5d
19d1: dw $1a6d
19d3: dw $1a7d
19d5: dw $1a8d
19d7: dw $1ab3
19d9: dw $1ab3
19db: dw $1ac3
19dd: dw $1ae3
19df: dw $1b2c
19e1: dw $1b3c
19e3: dw $1b44
19e5: dw $1b46
19e7: dw $1b46
19e9: dw $1b50
19eb: dw $1b58
19ed: dw $1b74
19ef: dw $19fb
19f1: dw $1b86
19f3: dw $1b99
19f5: dw $1bac
19f7: dw $1bae
19f9: dw $1bc1

19fb: ce        pop   x
19fc: 6f        ret

19fd: ce        pop   x
19fe: 3f cf 1b  call  $1bcf
1a01: c4 04     mov   $04,a
1a03: f5 35 02  mov   a,$0235+x
1a06: 5d        mov   x,a
1a07: e4 04     mov   a,$04
1a09: d5 af 02  mov   $02af+x,a
1a0c: 6f        ret

1a0d: ce        pop   x
1a0e: 3f cf 1b  call  $1bcf
1a11: c4 04     mov   $04,a
1a13: f5 35 02  mov   a,$0235+x
1a16: 5d        mov   x,a
1a17: f5 df 02  mov   a,$02df+x
1a1a: f0 35     beq   $1a51
1a1c: 68 07     cmp   a,#$07
1a1e: f0 37     beq   $1a57
1a20: 9c        dec   a
1a21: 28 07     and   a,#$07
1a23: fd        mov   y,a
1a24: e4 04     mov   a,$04
1a26: ad 03     cmp   y,#$03
1a28: d0 0d     bne   $1a37
1a2a: 2d        push  a
1a2b: 80        setc
1a2c: a5 aa 02  sbc   a,$02aa
1a2f: 28 7f     and   a,#$7f
1a31: ae        pop   a
1a32: d0 01     bne   $1a35
1a34: 6f        ret

1a35: 08 80     or    a,#$80
1a37: d6 a7 02  mov   $02a7+y,a
1a3a: ad 05     cmp   y,#$05
1a3c: f0 01     beq   $1a3f
1a3e: 6f        ret

1a3f: e5 ac 02  mov   a,$02ac
1a42: 28 7f     and   a,#$7f
1a44: 3f c5 08  call  $08c5
1a47: 68 ff     cmp   a,#$ff
1a49: d0 01     bne   $1a4c
1a4b: 6f        ret

1a4c: 08 80     or    a,#$80
1a4e: c4 18     mov   $18,a
1a50: 6f        ret

1a51: e4 04     mov   a,$04
1a53: d5 bf 02  mov   $02bf+x,a
1a56: 6f        ret

1a57: e4 04     mov   a,$04
1a59: d5 cf 02  mov   $02cf+x,a
1a5c: 6f        ret

1a5d: ce        pop   x
1a5e: 3f cf 1b  call  $1bcf
1a61: c4 04     mov   $04,a
1a63: f5 35 02  mov   a,$0235+x
1a66: 5d        mov   x,a
1a67: e4 04     mov   a,$04
1a69: d5 ef 02  mov   $02ef+x,a
1a6c: 6f        ret

1a6d: ce        pop   x
1a6e: 3f cf 1b  call  $1bcf
1a71: c4 04     mov   $04,a
1a73: f5 35 02  mov   a,$0235+x
1a76: 5d        mov   x,a
1a77: e4 04     mov   a,$04
1a79: d5 1f 03  mov   $031f+x,a
1a7c: 6f        ret

1a7d: ce        pop   x
1a7e: 3f cf 1b  call  $1bcf
1a81: c4 04     mov   $04,a
1a83: f5 35 02  mov   a,$0235+x
1a86: 5d        mov   x,a
1a87: e4 04     mov   a,$04
1a89: d5 2f 03  mov   $032f+x,a
1a8c: 6f        ret

1a8d: ce        pop   x
1a8e: 3f cf 1b  call  $1bcf
1a91: c4 04     mov   $04,a
1a93: f5 35 02  mov   a,$0235+x
1a96: 5d        mov   x,a
1a97: e4 04     mov   a,$04
1a99: d5 3f 03  mov   $033f+x,a
1a9c: 28 40     and   a,#$40
1a9e: f0 01     beq   $1aa1
1aa0: 6f        ret

1aa1: f5 4f 03  mov   a,$034f+x
1aa4: 3f 51 1e  call  $1e51
1aa7: 4e 44 00  tclr1 $0044
1aaa: 4e 45 00  tclr1 $0045
1aad: e8 00     mov   a,#$00
1aaf: d5 4f 03  mov   $034f+x,a
1ab2: 6f        ret

1ab3: ce        pop   x
1ab4: 3f cf 1b  call  $1bcf
1ab7: c4 04     mov   $04,a
1ab9: f5 35 02  mov   a,$0235+x
1abc: 5d        mov   x,a
1abd: e4 04     mov   a,$04
1abf: d5 df 02  mov   $02df+x,a
1ac2: 6f        ret

1ac3: ce        pop   x
1ac4: f5 35 02  mov   a,$0235+x
1ac7: 5d        mov   x,a
1ac8: e8 00     mov   a,#$00
1aca: d5 3f 03  mov   $033f+x,a
1acd: e8 00     mov   a,#$00
1acf: d5 2f 03  mov   $032f+x,a
1ad2: d5 ef 02  mov   $02ef+x,a
1ad5: d5 af 02  mov   $02af+x,a
1ad8: e8 c0     mov   a,#$c0
1ada: d5 6f 03  mov   $036f+x,a
1add: e8 40     mov   a,#$40
1adf: d5 cf 02  mov   $02cf+x,a
1ae2: 6f        ret

1ae3: ce        pop   x
1ae4: e4 44     mov   a,$44
1ae6: c4 08     mov   $08,a
1ae8: f5 35 02  mov   a,$0235+x
1aeb: c4 00     mov   $00,a
1aed: cd 07     mov   x,#$07
1aef: 8d 00     mov   y,#$00
1af1: 0b 08     asl   $08
1af3: 90 0e     bcc   $1b03
1af5: f4 49     mov   a,$49+x
1af7: 28 0f     and   a,#$0f
1af9: 64 00     cmp   a,$00
1afb: d0 06     bne   $1b03
1afd: 80        setc
1afe: 2b 06     rol   $06
1b00: 5f 06 1b  jmp   $1b06

1b03: 60        clrc
1b04: 2b 06     rol   $06
1b06: 1d        dec   x
1b07: 10 e8     bpl   $1af1
1b09: f8 00     mov   x,$00
1b0b: f5 3f 03  mov   a,$033f+x
1b0e: 28 40     and   a,#$40
1b10: d0 14     bne   $1b26
1b12: e4 06     mov   a,$06
1b14: 15 4f 03  or    a,$034f+x
1b17: 3f 51 1e  call  $1e51
1b1a: 4e 45 00  tclr1 $0045
1b1d: 4e 44 00  tclr1 $0044
1b20: e8 00     mov   a,#$00
1b22: d5 4f 03  mov   $034f+x,a
1b25: 6f        ret

1b26: e4 06     mov   a,$06
1b28: d5 4f 03  mov   $034f+x,a
1b2b: 6f        ret

1b2c: ce        pop   x
1b2d: 3f cf 1b  call  $1bcf
1b30: c4 02     mov   $02,a
1b32: f5 35 02  mov   a,$0235+x
1b35: 5d        mov   x,a
1b36: e4 02     mov   a,$02
1b38: 3f f4 0d  call  $0df4
1b3b: 6f        ret

1b3c: ce        pop   x
1b3d: 3f cf 1b  call  $1bcf
1b40: c5 03 02  mov   $0203,a
1b43: 6f        ret

1b44: ce        pop   x
1b45: 6f        ret

1b46: ce        pop   x
1b47: e8 00     mov   a,#$00
1b49: d5 15 02  mov   $0215+x,a
1b4c: d5 05 02  mov   $0205+x,a
1b4f: 6f        ret

1b50: ce        pop   x
1b51: 3f cf 1b  call  $1bcf
1b54: d5 35 02  mov   $0235+x,a
1b57: 6f        ret

1b58: ce        pop   x
1b59: 3f cf 1b  call  $1bcf
1b5c: d5 85 02  mov   $0285+x,a
1b5f: c4 02     mov   $02,a
1b61: f5 35 02  mov   a,$0235+x
1b64: c4 00     mov   $00,a
1b66: 4d        push  x
1b67: 3f 92 0a  call  $0a92
1b6a: ce        pop   x
1b6b: f5 65 02  mov   a,$0265+x
1b6e: c4 04     mov   $04,a
1b70: 3f dd 1c  call  $1cdd
1b73: 6f        ret

1b74: ce        pop   x
1b75: 3f cf 1b  call  $1bcf
1b78: d5 85 02  mov   $0285+x,a
1b7b: c4 02     mov   $02,a
1b7d: f5 35 02  mov   a,$0235+x
1b80: c4 00     mov   $00,a
1b82: 3f eb 1d  call  $1deb
1b85: 6f        ret

1b86: ce        pop   x
1b87: 3f cf 1b  call  $1bcf
1b8a: d5 85 02  mov   $0285+x,a
1b8d: f5 75 02  mov   a,$0275+x
1b90: d5 25 02  mov   $0225+x,a
1b93: e8 20     mov   a,#$20
1b95: d5 55 02  mov   $0255+x,a
1b98: 6f        ret

1b99: ce        pop   x
1b9a: 3f cf 1b  call  $1bcf
1b9d: d5 95 02  mov   $0295+x,a
1ba0: f5 75 02  mov   a,$0275+x
1ba3: d5 25 02  mov   $0225+x,a
1ba6: e8 a0     mov   a,#$a0
1ba8: d5 55 02  mov   $0255+x,a
1bab: 6f        ret

1bac: ce        pop   x
1bad: 6f        ret

1bae: ce        pop   x
1baf: 3f cf 1b  call  $1bcf
1bb2: d5 95 02  mov   $0295+x,a
1bb5: 08 80     or    a,#$80
1bb7: 2d        push  a
1bb8: f5 35 02  mov   a,$0235+x
1bbb: 5d        mov   x,a
1bbc: ae        pop   a
1bbd: d5 6f 03  mov   $036f+x,a
1bc0: 6f        ret

1bc1: ce        pop   x
1bc2: e8 ff     mov   a,#$ff
1bc4: d5 25 02  mov   $0225+x,a
1bc7: 6f        ret

1bc8: ce        pop   x
1bc9: 28 07     and   a,#$07
1bcb: d5 65 02  mov   $0265+x,a
1bce: 6f        ret

1bcf: 40        setp
1bd0: f4 06     mov   a,$06+x
1bd2: 4d        push  x
1bd3: 1c        asl   a
1bd4: 5d        mov   x,a
1bd5: 1f d8 1b  jmp   ($1bd8+x)

1bd8: dw $1be2
1bda: dw $1be9
1bdc: dw $1bf0
1bde: dw $1bf7
1be0: dw $1bfe

1be2: ce        pop   x
1be3: 3f 04 1c  call  $1c04
1be6: 5f cf 1b  jmp   $1bcf

1be9: ce        pop   x
1bea: 3f 23 1c  call  $1c23
1bed: 5f 02 1c  jmp   $1c02

1bf0: ce        pop   x
1bf1: 3f 2f 1c  call  $1c2f
1bf4: 5f cf 1b  jmp   $1bcf

1bf7: ce        pop   x
1bf8: 3f 53 1c  call  $1c53
1bfb: 5f 02 1c  jmp   $1c02

1bfe: ce        pop   x
1bff: 3f 9e 1c  call  $1c9e
1c02: 20        clrp
1c03: 6f        ret

1c04: 3f c1 1c  call  $1cc1
1c07: f7 00     mov   a,($00)+y
1c09: fc        inc   y
1c0a: 17 00     or    a,($00)+y
1c0c: f0 0c     beq   $1c1a
1c0e: fc        inc   y
1c0f: e8 02     mov   a,#$02
1c11: d4 06     mov   $06+x,a
1c13: e8 00     mov   a,#$00
1c15: d4 56     mov   $56+x,a
1c17: 5f 1f 1c  jmp   $1c1f

1c1a: fc        inc   y
1c1b: e8 01     mov   a,#$01
1c1d: d4 06     mov   $06+x,a
1c1f: 3f ce 1c  call  $1cce
1c22: 6f        ret

1c23: 3f c1 1c  call  $1cc1
1c26: f7 00     mov   a,($00)+y
1c28: fc        inc   y
1c29: 2d        push  a
1c2a: 3f ce 1c  call  $1cce
1c2d: ae        pop   a
1c2e: 6f        ret

1c2f: 3f c1 1c  call  $1cc1
1c32: f4 16     mov   a,$16+x
1c34: d0 0e     bne   $1c44
1c36: f7 00     mov   a,($00)+y
1c38: fc        inc   y
1c39: 48 ff     eor   a,#$ff
1c3b: d4 36     mov   $36+x,a
1c3d: e8 08     mov   a,#$08
1c3f: d4 16     mov   $16+x,a
1c41: 3f ce 1c  call  $1cce
1c44: 1b 36     asl   $36+x
1c46: e8 00     mov   a,#$00
1c48: 88 03     adc   a,#$03
1c4a: d4 06     mov   $06+x,a
1c4c: e8 ff     mov   a,#$ff
1c4e: d4 26     mov   $26+x,a
1c50: 9b 16     dec   $16+x
1c52: 6f        ret

1c53: 3f c1 1c  call  $1cc1
1c56: f4 26     mov   a,$26+x
1c58: 10 18     bpl   $1c72
1c5a: f7 00     mov   a,($00)+y
1c5c: fc        inc   y
1c5d: c4 02     mov   $02,a
1c5f: 9f        xcn   a
1c60: 5c        lsr   a
1c61: 28 07     and   a,#$07
1c63: 60        clrc
1c64: 88 02     adc   a,#$02
1c66: d4 26     mov   $26+x,a
1c68: 38 1f 02  and   $02,#$1f
1c6b: f4 56     mov   a,$56+x
1c6d: 60        clrc
1c6e: a4 02     sbc   a,$02
1c70: d4 46     mov   $46+x,a
1c72: 3f ce 1c  call  $1cce
1c75: f4 66     mov   a,$66+x
1c77: c4 02     mov   $02,a
1c79: f4 76     mov   a,$76+x
1c7b: c4 03     mov   $03,a
1c7d: f4 46     mov   a,$46+x
1c7f: bb 46     inc   $46+x
1c81: 28 1f     and   a,#$1f
1c83: fd        mov   y,a
1c84: f7 02     mov   a,($02)+y
1c86: c4 04     mov   $04,a
1c88: f4 56     mov   a,$56+x
1c8a: bb 56     inc   $56+x
1c8c: 28 1f     and   a,#$1f
1c8e: fd        mov   y,a
1c8f: e4 04     mov   a,$04
1c91: d7 02     mov   ($02)+y,a
1c93: 9b 26     dec   $26+x
1c95: 10 04     bpl   $1c9b
1c97: e8 02     mov   a,#$02
1c99: d4 06     mov   $06+x,a
1c9b: e4 04     mov   a,$04
1c9d: 6f        ret

1c9e: 3f c1 1c  call  $1cc1
1ca1: e8 02     mov   a,#$02
1ca3: d4 06     mov   $06+x,a
1ca5: f4 66     mov   a,$66+x
1ca7: c4 02     mov   $02,a
1ca9: f4 76     mov   a,$76+x
1cab: c4 03     mov   $03,a
1cad: f7 00     mov   a,($00)+y
1caf: fc        inc   y
1cb0: c4 04     mov   $04,a
1cb2: 3f ce 1c  call  $1cce
1cb5: f4 56     mov   a,$56+x
1cb7: bb 56     inc   $56+x
1cb9: 28 1f     and   a,#$1f
1cbb: fd        mov   y,a
1cbc: e4 04     mov   a,$04
1cbe: d7 02     mov   ($02)+y,a
1cc0: 6f        ret

1cc1: f5 05 02  mov   a,$0205+x
1cc4: c4 00     mov   $00,a
1cc6: f5 15 02  mov   a,$0215+x
1cc9: c4 01     mov   $01,a
1ccb: 8d 00     mov   y,#$00
1ccd: 6f        ret

1cce: 60        clrc
1ccf: dd        mov   a,y
1cd0: 84 00     adc   a,$00
1cd2: d5 05 02  mov   $0205+x,a
1cd5: e8 00     mov   a,#$00
1cd7: 84 01     adc   a,$01
1cd9: d5 15 02  mov   $0215+x,a
1cdc: 6f        ret

1cdd: f8 75     mov   x,$75
1cdf: e4 00     mov   a,$00
1ce1: 28 0f     and   a,#$0f
1ce3: d4 76     mov   $76+x,a
1ce5: e4 02     mov   a,$02
1ce7: d4 77     mov   $77+x,a
1ce9: e4 04     mov   a,$04
1ceb: d4 78     mov   $78+x,a
1ced: 3d        inc   x
1cee: 3d        inc   x
1cef: 3d        inc   x
1cf0: d8 75     mov   $75,x
1cf2: 6f        ret

1cf3: f8 75     mov   x,$75
1cf5: f0 1e     beq   $1d15
1cf7: cd 00     mov   x,#$00
1cf9: f4 76     mov   a,$76+x
1cfb: c4 00     mov   $00,a
1cfd: f4 77     mov   a,$77+x
1cff: c4 02     mov   $02,a
1d01: f4 78     mov   a,$78+x
1d03: c4 04     mov   $04,a
1d05: 68 ff     cmp   a,#$ff
1d07: f0 05     beq   $1d0e
1d09: 4d        push  x
1d0a: 3f 16 1d  call  $1d16
1d0d: ce        pop   x
1d0e: 3d        inc   x
1d0f: 3d        inc   x
1d10: 3d        inc   x
1d11: 3e 75     cmp   x,$75
1d13: d0 e4     bne   $1cf9
1d15: 6f        ret

1d16: 38 0f 00  and   $00,#$0f
1d19: cd 07     mov   x,#$07
1d1b: e4 38     mov   a,$38
1d1d: 04 44     or    a,$44
1d1f: c4 06     mov   $06,a
1d21: 0b 06     asl   $06
1d23: 90 0e     bcc   $1d33
1d25: f4 49     mov   a,$49+x
1d27: 28 0f     and   a,#$0f
1d29: 64 00     cmp   a,$00
1d2b: d0 06     bne   $1d33
1d2d: f4 51     mov   a,$51+x
1d2f: 64 02     cmp   a,$02
1d31: f0 10     beq   $1d43
1d33: 1d        dec   x
1d34: 10 eb     bpl   $1d21
1d36: cd 07     mov   x,#$07
1d38: e4 38     mov   a,$38
1d3a: 04 44     or    a,$44
1d3c: 1c        asl   a
1d3d: 90 04     bcc   $1d43
1d3f: 1d        dec   x
1d40: 10 fa     bpl   $1d3c
1d42: 6f        ret

1d43: f5 7b 21  mov   a,$217b+x
1d46: 0e 45 00  tset1 $0045
1d49: 0e 44 00  tset1 $0044
1d4c: 0e 47 00  tset1 $0047
1d4f: e4 04     mov   a,$04
1d51: 9f        xcn   a
1d52: 04 00     or    a,$00
1d54: d4 49     mov   $49+x,a
1d56: e4 02     mov   a,$02
1d58: d4 51     mov   $51+x,a
1d5a: eb 00     mov   y,$00
1d5c: f6 7f 03  mov   a,$037f+y
1d5f: d4 59     mov   $59+x,a
1d61: c4 69     mov   $69,a
1d63: f6 8f 03  mov   a,$038f+y
1d66: d4 61     mov   $61+x,a
1d68: c4 6a     mov   $6a,a
1d6a: e8 00     mov   a,#$00
1d6c: d5 0f 04  mov   $040f+x,a
1d6f: 8d 01     mov   y,#$01
1d71: f7 69     mov   a,($69)+y
1d73: f0 35     beq   $1daa
1d75: c4 0e     mov   $0e,a
1d77: 8d 02     mov   y,#$02
1d79: f7 69     mov   a,($69)+y
1d7b: d5 17 04  mov   $0417+x,a
1d7e: 8d 03     mov   y,#$03
1d80: f7 69     mov   a,($69)+y
1d82: d5 1f 04  mov   $041f+x,a
1d85: f0 23     beq   $1daa
1d87: d8 00     mov   $00,x
1d89: 5d        mov   x,a
1d8a: e4 0e     mov   a,$0e
1d8c: 8d 00     mov   y,#$00
1d8e: 9e        div   ya,x
1d8f: c4 01     mov   $01,a
1d91: dd        mov   a,y
1d92: 5d        mov   x,a
1d93: 8d 01     mov   y,#$01
1d95: e8 00     mov   a,#$00
1d97: 9e        div   ya,x
1d98: f8 00     mov   x,$00
1d9a: d5 2f 04  mov   $042f+x,a
1d9d: e4 01     mov   a,$01
1d9f: d5 27 04  mov   $0427+x,a
1da2: e8 00     mov   a,#$00
1da4: d5 47 04  mov   $0447+x,a
1da7: d5 3f 04  mov   $043f+x,a
1daa: e8 00     mov   a,#$00
1dac: d5 4f 04  mov   $044f+x,a
1daf: 8d 08     mov   y,#$08
1db1: f7 69     mov   a,($69)+y
1db3: f0 35     beq   $1dea
1db5: c4 0e     mov   $0e,a
1db7: 8d 09     mov   y,#$09
1db9: f7 69     mov   a,($69)+y
1dbb: d5 57 04  mov   $0457+x,a
1dbe: 8d 0a     mov   y,#$0a
1dc0: f7 69     mov   a,($69)+y
1dc2: d5 5f 04  mov   $045f+x,a
1dc5: f0 23     beq   $1dea
1dc7: d8 00     mov   $00,x
1dc9: 5d        mov   x,a
1dca: e4 0e     mov   a,$0e
1dcc: 8d 00     mov   y,#$00
1dce: 9e        div   ya,x
1dcf: c4 01     mov   $01,a
1dd1: dd        mov   a,y
1dd2: 5d        mov   x,a
1dd3: 8d 01     mov   y,#$01
1dd5: e8 00     mov   a,#$00
1dd7: 9e        div   ya,x
1dd8: f8 00     mov   x,$00
1dda: d5 6f 04  mov   $046f+x,a
1ddd: e4 01     mov   a,$01
1ddf: d5 67 04  mov   $0467+x,a
1de2: e8 00     mov   a,#$00
1de4: d5 87 04  mov   $0487+x,a
1de7: d5 7f 04  mov   $047f+x,a
1dea: 6f        ret

1deb: 38 0f 00  and   $00,#$0f
1dee: f8 75     mov   x,$75
1df0: f0 18     beq   $1e0a
1df2: e4 00     mov   a,$00
1df4: 74 76     cmp   a,$76+x
1df6: d0 0d     bne   $1e05
1df8: e4 02     mov   a,$02
1dfa: 74 77     cmp   a,$77+x
1dfc: d0 07     bne   $1e05
1dfe: e8 ff     mov   a,#$ff
1e00: d4 78     mov   $78+x,a
1e02: 5f 0a 1e  jmp   $1e0a

1e05: 1d        dec   x
1e06: 1d        dec   x
1e07: 1d        dec   x
1e08: 10 e8     bpl   $1df2
1e0a: fa 44 06  mov   ($06),($44)
1e0d: 8f 80 08  mov   $08,#$80
1e10: eb 02     mov   y,$02
1e12: cd 07     mov   x,#$07
1e14: 0b 06     asl   $06
1e16: 90 0d     bcc   $1e25
1e18: f4 49     mov   a,$49+x
1e1a: 28 0f     and   a,#$0f
1e1c: 64 00     cmp   a,$00
1e1e: d0 05     bne   $1e25
1e20: dd        mov   a,y
1e21: 74 51     cmp   a,$51+x
1e23: f0 06     beq   $1e2b
1e25: 4b 08     lsr   $08
1e27: 1d        dec   x
1e28: 10 ea     bpl   $1e14
1e2a: 6f        ret

1e2b: f4 49     mov   a,$49+x
1e2d: 28 0f     and   a,#$0f
1e2f: fd        mov   y,a
1e30: f6 3f 03  mov   a,$033f+y
1e33: 28 40     and   a,#$40
1e35: d0 11     bne   $1e48
1e37: e4 08     mov   a,$08
1e39: 3f 51 1e  call  $1e51
1e3c: 4e 44 00  tclr1 $0044
1e3f: 4e 45 00  tclr1 $0045
1e42: e8 00     mov   a,#$00
1e44: d6 4f 03  mov   $034f+y,a
1e47: 6f        ret

1e48: e4 08     mov   a,$08
1e4a: 16 4f 03  or    a,$034f+y
1e4d: d6 4f 03  mov   $034f+y,a
1e50: 6f        ret

1e51: 2d        push  a
1e52: c4 08     mov   $08,a
1e54: fa 38 09  mov   ($09),($38)
1e57: cd 07     mov   x,#$07
1e59: 0b 09     asl   $09
1e5b: 90 05     bcc   $1e62
1e5d: 0b 08     asl   $08
1e5f: 5f 6f 1e  jmp   $1e6f

1e62: 0b 08     asl   $08
1e64: 90 09     bcc   $1e6f
1e66: 7d        mov   a,x
1e67: 9f        xcn   a
1e68: 08 05     or    a,#$05
1e6a: c4 f2     mov   $f2,a
1e6c: 8f 00 f3  mov   $f3,#$00
1e6f: 1d        dec   x
1e70: 10 e7     bpl   $1e59
1e72: ae        pop   a
1e73: 6f        ret

1e74: 3f e6 1f  call  $1fe6
1e77: 3f cd 1f  call  $1fcd
1e7a: 3f 96 1e  call  $1e96
1e7d: 3f 81 1e  call  $1e81
1e80: 6f        ret

1e81: 40        setp
1e82: cd 0f     mov   x,#$0f
1e84: 7d        mov   a,x
1e85: 9f        xcn   a
1e86: 1c        asl   a
1e87: d4 66     mov   $66+x,a
1e89: 3c        rol   a
1e8a: 28 01     and   a,#$01
1e8c: 60        clrc
1e8d: 88 06     adc   a,#$06
1e8f: d4 76     mov   $76+x,a
1e91: 1d        dec   x
1e92: 10 f0     bpl   $1e84
1e94: 20        clrp
1e95: 6f        ret

1e96: 8f 00 3b  mov   $3b,#$00
1e99: cd 0f     mov   x,#$0f
1e9b: e8 40     mov   a,#$40
1e9d: d5 1f 03  mov   $031f+x,a
1ea0: e8 7f     mov   a,#$7f
1ea2: d5 ef 02  mov   $02ef+x,a
1ea5: e8 c0     mov   a,#$c0
1ea7: d5 6f 03  mov   $036f+x,a
1eaa: e8 40     mov   a,#$40
1eac: d5 cf 02  mov   $02cf+x,a
1eaf: e8 00     mov   a,#$00
1eb1: d5 2f 03  mov   $032f+x,a
1eb4: d5 af 02  mov   $02af+x,a
1eb7: d5 3f 03  mov   $033f+x,a
1eba: e8 0b     mov   a,#$0b
1ebc: d5 bf 02  mov   $02bf+x,a
1ebf: e8 00     mov   a,#$00
1ec1: 3f f4 0d  call  $0df4
1ec4: 1d        dec   x
1ec5: 10 d4     bpl   $1e9b
1ec7: 6f        ret

1ec8: e5 aa 02  mov   a,$02aa
1ecb: 30 03     bmi   $1ed0
1ecd: 5f 5c 1f  jmp   $1f5c

1ed0: e5 a5 02  mov   a,$02a5
1ed3: d0 47     bne   $1f1c
1ed5: ac a5 02  inc   $02a5
1ed8: 8f 7d f2  mov   $f2,#$7d
1edb: e4 f3     mov   a,$f3
1edd: 5c        lsr   a
1ede: 60        clrc
1edf: 84 f3     adc   a,$f3
1ee1: 28 1f     and   a,#$1f
1ee3: 48 ff     eor   a,#$ff
1ee5: c5 a6 02  mov   $02a6,a
1ee8: e8 00     mov   a,#$00
1eea: 8f 2c f2  mov   $f2,#$2c
1eed: c4 f3     mov   $f3,a
1eef: 8f 3c f2  mov   $f2,#$3c
1ef2: c4 f3     mov   $f3,a
1ef4: 8f 4d f2  mov   $f2,#$4d
1ef7: c4 f3     mov   $f3,a
1ef9: 8f 0d f2  mov   $f2,#$0d
1efc: c4 f3     mov   $f3,a
1efe: 8f 6c f2  mov   $f2,#$6c
1f01: 8f 20 f3  mov   $f3,#$20
1f04: 8f 7d f2  mov   $f2,#$7d
1f07: e5 aa 02  mov   a,$02aa
1f0a: 28 0f     and   a,#$0f
1f0c: c4 f3     mov   $f3,a
1f0e: 1c        asl   a
1f0f: 1c        asl   a
1f10: 1c        asl   a
1f11: 48 ff     eor   a,#$ff
1f13: 80        setc
1f14: 88 f8     adc   a,#$f8
1f16: 8f 6d f2  mov   $f2,#$6d
1f19: c4 f3     mov   $f3,a
1f1b: 6f        ret

1f1c: 68 01     cmp   a,#$01
1f1e: d0 21     bne   $1f41
1f20: ac a6 02  inc   $02a6
1f23: 30 36     bmi   $1f5b
1f25: ac a5 02  inc   $02a5
1f28: 3f 85 1f  call  $1f85
1f2b: 8f 6c f2  mov   $f2,#$6c
1f2e: 8f 00 f3  mov   $f3,#$00
1f31: e5 aa 02  mov   a,$02aa
1f34: 5c        lsr   a
1f35: 60        clrc
1f36: 85 aa 02  adc   a,$02aa
1f39: 28 1f     and   a,#$1f
1f3b: 48 ff     eor   a,#$ff
1f3d: c5 a6 02  mov   $02a6,a
1f40: 6f        ret

1f41: ac a6 02  inc   $02a6
1f44: 30 15     bmi   $1f5b
1f46: e5 aa 02  mov   a,$02aa
1f49: 28 7f     and   a,#$7f
1f4b: c5 aa 02  mov   $02aa,a
1f4e: e5 a7 02  mov   a,$02a7
1f51: 08 80     or    a,#$80
1f53: c5 a7 02  mov   $02a7,a
1f56: e8 00     mov   a,#$00
1f58: c5 a5 02  mov   $02a5,a
1f5b: 6f        ret

1f5c: e5 a7 02  mov   a,$02a7
1f5f: 10 23     bpl   $1f84
1f61: 28 7f     and   a,#$7f
1f63: c5 a7 02  mov   $02a7,a
1f66: 8f 2c f2  mov   $f2,#$2c
1f69: c5 a7 02  mov   $02a7,a
1f6c: c4 f3     mov   $f3,a
1f6e: 8f 3c f2  mov   $f2,#$3c
1f71: e5 a8 02  mov   a,$02a8
1f74: 28 7f     and   a,#$7f
1f76: c5 a8 02  mov   $02a8,a
1f79: c4 f3     mov   $f3,a
1f7b: 8f 0d f2  mov   $f2,#$0d
1f7e: e5 a9 02  mov   a,$02a9
1f81: 1c        asl   a
1f82: c4 f3     mov   $f3,a
1f84: 6f        ret

1f85: e5 ab 02  mov   a,$02ab
1f88: 1c        asl   a
1f89: 1c        asl   a
1f8a: 1c        asl   a
1f8b: 08 07     or    a,#$07
1f8d: fd        mov   y,a
1f8e: cd 07     mov   x,#$07
1f90: 7d        mov   a,x
1f91: 9f        xcn   a
1f92: 08 0f     or    a,#$0f
1f94: c4 f2     mov   $f2,a
1f96: f6 5b 21  mov   a,$215b+y
1f99: c4 f3     mov   $f3,a
1f9b: dc        dec   y
1f9c: 1d        dec   x
1f9d: 10 f1     bpl   $1f90
1f9f: 6f        ret

1fa0: e8 00     mov   a,#$00
1fa2: 8f 2c f2  mov   $f2,#$2c
1fa5: c4 f3     mov   $f3,a
1fa7: 8f 3c f2  mov   $f2,#$3c
1faa: c4 f3     mov   $f3,a
1fac: 8f 6c f2  mov   $f2,#$6c
1faf: 8f 20 f3  mov   $f3,#$20
1fb2: 8f 7d f2  mov   $f2,#$7d
1fb5: c4 f3     mov   $f3,a
1fb7: 8f 6d f2  mov   $f2,#$6d
1fba: 8f f8 f3  mov   $f3,#$f8
1fbd: 8f 4d f2  mov   $f2,#$4d
1fc0: c4 f3     mov   $f3,a
1fc2: 8f 2d f2  mov   $f2,#$2d
1fc5: c4 f3     mov   $f3,a
1fc7: 8f 3d f2  mov   $f2,#$3d
1fca: c4 f3     mov   $f3,a
1fcc: 6f        ret

1fcd: 8f 00 f1  mov   $f1,#$00
1fd0: 8f 60 fa  mov   $fa,#$60
1fd3: 8f 60 fb  mov   $fb,#$60
1fd6: 8f 33 f1  mov   $f1,#$33
1fd9: 8f 00 f4  mov   $f4,#$00
1fdc: 8f 00 f5  mov   $f5,#$00
1fdf: 8f 00 f6  mov   $f6,#$00
1fe2: 8f 00 f7  mov   $f7,#$00
1fe5: 6f        ret

1fe6: 8f 6c f2  mov   $f2,#$6c
1fe9: 8f 60 f3  mov   $f3,#$60
1fec: 8f 5d f2  mov   $f2,#$5d
1fef: e8 25     mov   a,#$25
1ff1: c4 f3     mov   $f3,a
1ff3: cd 28     mov   x,#$28
1ff5: f5 04 20  mov   a,$2004+x
1ff8: fd        mov   y,a
1ff9: f5 05 20  mov   a,$2005+x
1ffc: 3f 2e 20  call  $202e
1fff: 1d        dec   x
2000: 1d        dec   x
2001: 10 f2     bpl   $1ff5
2003: 6f        ret

2004: db $6c,$20
2006: db $2d,$00
2008: db $3d,$00
200a: db $0c,$60
200c: db $1c,$60
200e: db $7d,$00
2010: db $0d,$00
2012: db $4d,$00
2014: db $2c,$00
2016: db $3c,$00
2018: db $6d,$f8
201a: db $5c,$00
201c: db $4c,$00
201e: db $0f,$7f
2020: db $1f,$00
2022: db $2f,$00
2024: db $3f,$00
2026: db $4f,$00
2028: db $5f,$00
202a: db $6f,$00
202c: db $7f,$00

202e: cb f2     mov   $f2,y
2030: c4 f3     mov   $f3,a
2032: 6f        ret

2033: cb f2     mov   $f2,y
2035: e4 f3     mov   a,$f3
2037: 6f        ret

2038: e8 00     mov   a,#$00
203a: c4 f4     mov   $f4,a
203c: c4 02     mov   $02,a
203e: c4 00     mov   $00,a
2040: 8f 65 f6  mov   $f6,#$65
2043: 8f 02 f7  mov   $f7,#$02
2046: 78 65 f6  cmp   $f6,#$65
2049: d0 fb     bne   $2046
204b: 78 02 f7  cmp   $f7,#$02
204e: d0 f6     bne   $2046
2050: e4 02     mov   a,$02
2052: 64 f4     cmp   a,$f4
2054: f0 fc     beq   $2052
2056: e4 f4     mov   a,$f4
2058: c4 02     mov   $02,a
205a: 28 41     and   a,#$41
205c: d0 13     bne   $2071
205e: e4 f6     mov   a,$f6
2060: d7 00     mov   ($00)+y,a
2062: fc        inc   y
2063: e4 f7     mov   a,$f7
2065: d7 00     mov   ($00)+y,a
2067: fa 02 f4  mov   ($f4),($02)
206a: fc        inc   y
206b: d0 e3     bne   $2050
206d: ab 01     inc   $01
206f: 2f df     bra   $2050
2071: 28 01     and   a,#$01
2073: d0 0b     bne   $2080
2075: e4 f7     mov   a,$f7
2077: c4 01     mov   $01,a
2079: eb f6     mov   y,$f6
207b: fa 02 f4  mov   ($f4),($02)
207e: 2f d0     bra   $2050
2080: 8f 33 f1  mov   $f1,#$33
2083: 8f 00 19  mov   $19,#$00
2086: 8f 00 1a  mov   $1a,#$00
2089: 8f 00 1b  mov   $1b,#$00
208c: 8f 00 1c  mov   $1c,#$00
208f: 8f 00 f4  mov   $f4,#$00
2092: 8f 00 f5  mov   $f5,#$00
2095: 8f 00 f6  mov   $f6,#$00
2098: 8f 00 f7  mov   $f7,#$00
209b: 60        clrc
209c: e5 04 08  mov   a,$0804
209f: 88 01     adc   a,#$01
20a1: c5 09 0f  mov   $0f09,a
20a4: e5 05 08  mov   a,$0805
20a7: 88 00     adc   a,#$00
20a9: c5 0a 0f  mov   $0f0a,a
20ac: 60        clrc
20ad: e5 04 08  mov   a,$0804
20b0: 88 02     adc   a,#$02
20b2: c5 11 0f  mov   $0f11,a
20b5: e5 05 08  mov   a,$0805
20b8: 88 00     adc   a,#$00
20ba: c5 12 0f  mov   $0f12,a
20bd: 60        clrc
20be: e5 04 08  mov   a,$0804
20c1: 88 03     adc   a,#$03
20c3: c5 16 0f  mov   $0f16,a
20c6: e5 05 08  mov   a,$0805
20c9: 88 00     adc   a,#$00
20cb: c5 17 0f  mov   $0f17,a
20ce: 60        clrc
20cf: e5 06 08  mov   a,$0806
20d2: 88 01     adc   a,#$01
20d4: c5 bd 08  mov   $08bd,a
20d7: e5 07 08  mov   a,$0807
20da: 88 00     adc   a,#$00
20dc: c5 be 08  mov   $08be,a
20df: 60        clrc
20e0: e5 06 08  mov   a,$0806
20e3: 88 02     adc   a,#$02
20e5: c5 91 09  mov   $0991,a
20e8: e5 07 08  mov   a,$0807
20eb: 88 00     adc   a,#$00
20ed: c5 92 09  mov   $0992,a
20f0: 60        clrc
20f1: e5 06 08  mov   a,$0806
20f4: 88 03     adc   a,#$03
20f6: c5 96 09  mov   $0996,a
20f9: e5 07 08  mov   a,$0807
20fc: 88 00     adc   a,#$00
20fe: c5 97 09  mov   $0997,a
2101: e5 00 08  mov   a,$0800
2104: c5 10 0e  mov   $0e10,a
2107: e5 01 08  mov   a,$0801
210a: c5 11 0e  mov   $0e11,a
210d: 60        clrc
210e: e5 00 08  mov   a,$0800
2111: 88 01     adc   a,#$01
2113: c5 15 0e  mov   $0e15,a
2116: e5 01 08  mov   a,$0801
2119: 88 00     adc   a,#$00
211b: c5 16 0e  mov   $0e16,a
211e: e5 03 08  mov   a,$0803
2121: c5 f0 1f  mov   $1ff0,a
2124: e5 08 08  mov   a,$0808
2127: c5 c7 08  mov   $08c7,a
212a: e5 09 08  mov   a,$0809
212d: c5 c8 08  mov   $08c8,a
2130: e5 0a 08  mov   a,$080a
2133: c5 01 0f  mov   $0f01,a
2136: e5 0b 08  mov   a,$080b
2139: c5 02 0f  mov   $0f02,a
213c: e5 0c 08  mov   a,$080c
213f: c5 06 0e  mov   $0e06,a
2142: e5 0d 08  mov   a,$080d
2145: c5 07 0e  mov   $0e07,a
2148: e5 0e 08  mov   a,$080e
214b: c5 2c 15  mov   $152c,a
214e: c5 a8 0b  mov   $0ba8,a
2151: e5 0f 08  mov   a,$080f
2154: c5 2d 15  mov   $152d,a
2157: c5 a9 0b  mov   $0ba9,a
215a: 6f        ret

215b: db $7f,$00,$00,$00,$00,$00,$00,$00
2163: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
216b: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
2173: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

217b: db $01,$02,$04,$08,$10,$20,$40,$80

;      dw $01e9
;      dw $0206
;      dw $0225
;      dw $0245
;      dw $0268
;      dw $028d
;      dw $02b4
;      dw $02dd
;      dw $0308
;      dw $0336
;      dw $0367
;      dw $039c
2183: db $01,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03
218f: db $e9,$06,$25,$45,$68,$8d,$b4,$dd,$08,$36,$67,$9c

;      dw $2000
;      dw $21e7
;      dw $23eb
;      dw $260e
;      dw $2851
;      dw $2ab7
;      dw $2d41
;      dw $2ff2
;      dw $32cc
;      dw $35d1
;      dw $3904
;      dw $3c68
219b: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c
21a7: db $00,$e7,$eb,$0e,$51,$b7,$41,$f2,$cc,$d1,$04,$68
