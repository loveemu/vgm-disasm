0978: dw $098e
097a: dw $0992
097c: dw $099f
097e: dw $09ac
0980: dw $09ba
0982: dw $09bd
0984: dw $0a1e
0986: dw $0a1e
0988: dw $0a1e
098a: dw $09c0
098c: dw $09e8

098e: 8f 10 2d  mov   $2d,#$10
0991: 6f        ret

0992: e4 2c     mov   a,$2c
0994: f0 fb     beq   $0991
0996: 78 ff 2d  cmp   $2d,#$ff
0999: f0 f6     beq   $0991
099b: 8f ff 2d  mov   $2d,#$ff
099e: 6f        ret

099f: 8f 3f 10  mov   $10,#$3f
09a2: 8f 00 0e  mov   $0e,#$00
09a5: 22 1f     set1  $1f
09a7: e8 68     mov   a,#$68
09a9: 5f b1 0b  jmp   $0bb1

09ac: 32 1f     clr1  $1f
09ae: e4 0f     mov   a,$0f
09b0: 78 91 c0  cmp   $c0,#$91
09b3: b0 02     bcs   $09b7
09b5: 28 3f     and   a,#$3f
09b7: c4 0e     mov   $0e,a
09b9: 6f        ret

09ba: 02 1f     set0  $1f
09bc: 6f        ret

09bd: 12 1f     clr0  $1f
09bf: 6f        ret

09c0: 3f 16 17  call  $1716
09c3: 8f 00 1c  mov   $1c,#$00
09c6: 8f 00 04  mov   $04,#$00
09c9: 8f 80 05  mov   $05,#$80
09cc: 8d 10     mov   y,#$10
09ce: f6 8f 01  mov   a,$018f+y
09d1: 28 01     and   a,#$01
09d3: d0 09     bne   $09de
09d5: 09 05 04  or    ($04),($05)
09d8: d6 be 00  mov   $00be+y,a
09db: d6 8e 01  mov   $018e+y,a
09de: 4b 05     lsr   $05
09e0: dc        dec   y
09e1: fe eb     dbnz  y,$09ce
09e3: e4 04     mov   a,$04
09e5: 5f 05 0d  jmp   $0d05

09e8: 8f 00 26  mov   $26,#$00
09eb: 38 1f 1f  and   $1f,#$1f
09ee: 8f 00 f1  mov   $f1,#$00
09f1: 8f 20 fa  mov   $fa,#$20
09f4: 8f 01 f1  mov   $f1,#$01
09f7: e8 7f     mov   a,#$7f
09f9: 8f 0c f2  mov   $f2,#$0c
09fc: c4 f3     mov   $f3,a
09fe: 8f 1c f2  mov   $f2,#$1c
0a01: c4 f3     mov   $f3,a
0a03: 3f 16 17  call  $1716
0a06: e8 00     mov   a,#$00
0a08: c4 1c     mov   $1c,a
0a0a: c4 2a     mov   $2a,a
0a0c: 32 1f     clr1  $1f
0a0e: 8d 10     mov   y,#$10
0a10: d6 be 00  mov   $00be+y,a
0a13: d6 8e 01  mov   $018e+y,a
0a16: dc        dec   y
0a17: fe f7     dbnz  y,$0a10
0a19: e8 ff     mov   a,#$ff
0a1b: 5f 05 0d  jmp   $0d05

0a1e: e4 1c     mov   a,$1c
0a20: d0 0f     bne   $0a31
0a22: dd        mov   a,y
0a23: 80        setc
0a24: a8 eb     sbc   a,#$eb
0a26: 5d        mov   x,a
0a27: f5 57 09  mov   a,$0957+x
0a2a: c4 1e     mov   $1e,a
0a2c: c4 1d     mov   $1d,a
0a2e: 8f ff 1c  mov   $1c,#$ff
0a31: 6f        ret

0a32: fd        mov   y,a
0a33: 80        setc
0a34: a8 e5     sbc   a,#$e5
0a36: 90 f9     bcc   $0a31
0a38: 1c        asl   a
0a39: 5d        mov   x,a
0a3a: 1f 78 09  jmp   ($0978+x)

0a3d: 68 98     cmp   a,#$98
0a3f: b0 07     bcs   $0a48
0a41: 68 02     cmp   a,#$02
0a43: 90 ec     bcc   $0a31
0a45: 5f b1 0b  jmp   $0bb1

0a48: 68 f0     cmp   a,#$f0
0a4a: 90 e6     bcc   $0a32
0a4c: 68 ff     cmp   a,#$ff
0a4e: d0 03     bne   $0a53
0a50: 5f 35 0b  jmp   $0b35

0a53: 28 0f     and   a,#$0f
0a55: 1c        asl   a
0a56: fd        mov   y,a
0a57: f6 5a 09  mov   a,$095a+y
0a5a: c4 2e     mov   $2e,a
0a5c: f6 5b 09  mov   a,$095b+y
0a5f: c4 2f     mov   $2f,a
0a61: 5f 70 0b  jmp   $0b70

0a64: e2 1f     set7  $1f
0a66: 8f ff f7  mov   $f7,#$ff
0a69: ad 29     cmp   y,#$29
0a6b: b0 c4     bcs   $0a31
0a6d: c2 1f     set6  $1f
0a6f: 6f        ret

0a70: 68 3b     cmp   a,#$3b
0a72: b0 bd     bcs   $0a31
0a74: 8d 37     mov   y,#$37
0a76: 64 27     cmp   a,$27
0a78: d0 05     bne   $0a7f
0a7a: 18 01 2a  or    $2a,#$01
0a7d: 2f 08     bra   $0a87
0a7f: 64 28     cmp   a,$28
0a81: d0 ae     bne   $0a31
0a83: 18 02 2a  or    $2a,#$02
0a86: fc        inc   y
0a87: cb 09     mov   $09,y
0a89: 8f 01 0c  mov   $0c,#$01
0a8c: c4 0d     mov   $0d,a
0a8e: 8f 28 04  mov   $04,#$28
0a91: 8f 07 05  mov   $05,#$07
0a94: 5f c3 0b  jmp   $0bc3

0a97: eb f5     mov   y,$f5
0a99: d0 fc     bne   $0a97
0a9b: cb f5     mov   $f5,y
0a9d: eb f6     mov   y,$f6
0a9f: cb 2b     mov   $2b,y
0aa1: 68 f2     cmp   a,#$f2
0aa3: f0 bf     beq   $0a64
0aa5: 68 ff     cmp   a,#$ff
0aa7: f0 73     beq   $0b1c
0aa9: 68 f0     cmp   a,#$f0
0aab: d0 c2     bne   $0a6f
0aad: ad 29     cmp   y,#$29
0aaf: b0 02     bcs   $0ab3
0ab1: c2 1f     set6  $1f
0ab3: 8f 01 26  mov   $26,#$01
0ab6: ad 3b     cmp   y,#$3b
0ab8: b0 4d     bcs   $0b07
0aba: e4 2a     mov   a,$2a
0abc: 5c        lsr   a
0abd: 90 0f     bcc   $0ace
0abf: 5c        lsr   a
0ac0: 90 1e     bcc   $0ae0
0ac2: 8f 80 29  mov   $29,#$80
0ac5: 8f fe 2e  mov   $2e,#$fe
0ac8: 8f 44 2f  mov   $2f,#$44
0acb: 5f 31 0b  jmp   $0b31

0ace: cb 27     mov   $27,y
0ad0: 18 01 2a  or    $2a,#$01
0ad3: 8f fe 2e  mov   $2e,#$fe
0ad6: 8f 44 2f  mov   $2f,#$44
0ad9: cd 02     mov   x,#$02
0adb: 8f 45 04  mov   $04,#$45
0ade: 2f 10     bra   $0af0
0ae0: cb 28     mov   $28,y
0ae2: 18 02 2a  or    $2a,#$02
0ae5: 8f fe 2e  mov   $2e,#$fe
0ae8: 8f 54 2f  mov   $2f,#$54
0aeb: cd 06     mov   x,#$06
0aed: 8f 55 04  mov   $04,#$55
0af0: dd        mov   a,y
0af1: 1c        asl   a
0af2: fd        mov   y,a
0af3: f6 e2 04  mov   a,$04e2+y
0af6: d5 dc 04  mov   $04dc+x,a
0af9: f6 e3 04  mov   a,$04e3+y
0afc: 60        clrc
0afd: 84 04     adc   a,$04
0aff: d5 dd 04  mov   $04dd+x,a
0b02: 8f 08 29  mov   $29,#$08
0b05: 2f 2a     bra   $0b31
0b07: 3f 16 17  call  $1716
0b0a: e4 1c     mov   a,$1c
0b0c: f0 03     beq   $0b11
0b0e: 3f c3 09  call  $09c3
0b11: 8f 00 29  mov   $29,#$00
0b14: 8f c6 2e  mov   $2e,#$c6
0b17: 8f e2 2f  mov   $2f,#$e2
0b1a: 2f 15     bra   $0b31
0b1c: c4 26     mov   $26,a
0b1e: 8f 00 29  mov   $29,#$00
0b21: b2 1f     clr5  $1f
0b23: 3f c3 09  call  $09c3
0b26: 8f 5c f2  mov   $f2,#$5c
0b29: c4 f3     mov   $f3,a
0b2b: 8f 00 2e  mov   $2e,#$00
0b2e: 8f 34 2f  mov   $2f,#$34
0b31: 8f ff f7  mov   $f7,#$ff
0b34: 6f        ret

0b35: e8 cc     mov   a,#$cc
0b37: 64 f4     cmp   a,$f4
0b39: d0 fa     bne   $0b35
0b3b: 2f 1f     bra   $0b5c
0b3d: eb f4     mov   y,$f4
0b3f: d0 fc     bne   $0b3d
0b41: 7e f4     cmp   y,$f4
0b43: 30 13     bmi   $0b58
0b45: d0 fa     bne   $0b41
0b47: 7e f4     cmp   y,$f4
0b49: d0 f6     bne   $0b41
0b4b: e4 f5     mov   a,$f5
0b4d: cb f4     mov   $f4,y
0b4f: d7 04     mov   ($04)+y,a
0b51: fc        inc   y
0b52: d0 ed     bne   $0b41
0b54: ab 05     inc   $05
0b56: 2f e9     bra   $0b41
0b58: 7e f4     cmp   y,$f4
0b5a: 10 e5     bpl   $0b41
0b5c: e4 f6     mov   a,$f6
0b5e: eb f7     mov   y,$f7
0b60: da 04     movw  $04,ya
0b62: e4 f4     mov   a,$f4
0b64: eb f5     mov   y,$f5
0b66: c4 f4     mov   $f4,a
0b68: dd        mov   a,y
0b69: 5d        mov   x,a
0b6a: d0 d1     bne   $0b3d
0b6c: 8f 33 f1  mov   $f1,#$33
0b6f: 6f        ret

0b70: e4 f5     mov   a,$f5
0b72: 68 cc     cmp   a,#$cc
0b74: d0 fa     bne   $0b70
0b76: 64 f5     cmp   a,$f5
0b78: d0 f6     bne   $0b70
0b7a: c4 f5     mov   $f5,a
0b7c: eb f5     mov   y,$f5
0b7e: d0 fc     bne   $0b7c
0b80: 7e f5     cmp   y,$f5
0b82: d0 f6     bne   $0b7a
0b84: 2f 0a     bra   $0b90
0b86: 7e f5     cmp   y,$f5
0b88: 30 18     bmi   $0ba2
0b8a: d0 fa     bne   $0b86
0b8c: 7e f5     cmp   y,$f5
0b8e: d0 f6     bne   $0b86
0b90: e4 f6     mov   a,$f6
0b92: d7 2e     mov   ($2e)+y,a
0b94: e4 f7     mov   a,$f7
0b96: cb f5     mov   $f5,y
0b98: fc        inc   y
0b99: d7 2e     mov   ($2e)+y,a
0b9b: fc        inc   y
0b9c: d0 e8     bne   $0b86
0b9e: ab 2f     inc   $2f
0ba0: 2f e4     bra   $0b86
0ba2: 7e f5     cmp   y,$f5
0ba4: 10 e0     bpl   $0b86
0ba6: e4 f5     mov   a,$f5
0ba8: c4 f5     mov   $f5,a
0baa: e4 f5     mov   a,$f5
0bac: d0 fc     bne   $0baa
0bae: c4 f5     mov   $f5,a
0bb0: 6f        ret

0bb1: c4 0c     mov   $0c,a
0bb3: 8f 00 0d  mov   $0d,#$00
0bb6: 68 6a     cmp   a,#$6a
0bb8: 90 03     bcc   $0bbd
0bba: 5f 63 0c  jmp   $0c63

0bbd: 8f eb 04  mov   $04,#$eb
0bc0: 8f 07 05  mov   $05,#$07
0bc3: a3 1f ea  bbs5  $1f,$0bb0
0bc6: 8d 03     mov   y,#$03
0bc8: cf        mul   ya
0bc9: 7a 04     addw  ya,$04
0bcb: da 04     movw  $04,ya
0bcd: 8d 00     mov   y,#$00
0bcf: f7 04     mov   a,($04)+y
0bd1: 9f        xcn   a
0bd2: 5c        lsr   a
0bd3: 28 07     and   a,#$07
0bd5: 5d        mov   x,a
0bd6: bc        inc   a
0bd7: c4 07     mov   $07,a
0bd9: f5 18 0d  mov   a,$0d18+x
0bdc: c4 11     mov   $11,a
0bde: f7 04     mov   a,($04)+y
0be0: 28 1f     and   a,#$1f
0be2: c4 06     mov   $06,a
0be4: cd 0c     mov   x,#$0c
0be6: 78 02 07  cmp   $07,#$02
0be9: f0 56     beq   $0c41
0beb: b0 6b     bcs   $0c58
0bed: e4 0c     mov   a,$0c
0bef: 68 01     cmp   a,#$01
0bf1: d0 26     bne   $0c19
0bf3: e4 0d     mov   a,$0d
0bf5: 64 df     cmp   a,$df
0bf7: f0 10     beq   $0c09
0bf9: 64 dd     cmp   a,$dd
0bfb: f0 4c     beq   $0c49
0bfd: 68 29     cmp   a,#$29
0bff: b0 34     bcs   $0c35
0c01: e4 df     mov   a,$df
0c03: f0 0a     beq   $0c0f
0c05: 68 29     cmp   a,#$29
0c07: b0 06     bcs   $0c0f
0c09: cd 0e     mov   x,#$0e
0c0b: 0b 11     asl   $11
0c0d: 2f 3a     bra   $0c49
0c0f: e4 dd     mov   a,$dd
0c11: f0 22     beq   $0c35
0c13: 68 29     cmp   a,#$29
0c15: 90 32     bcc   $0c49
0c17: 2f 1c     bra   $0c35
0c19: 68 0b     cmp   a,#$0b
0c1b: d0 0a     bne   $0c27
0c1d: 64 cc     cmp   a,$cc
0c1f: f0 27     beq   $0c48
0c21: 64 ce     cmp   a,$ce
0c23: f0 23     beq   $0c48
0c25: 2f 0e     bra   $0c35
0c27: 64 ce     cmp   a,$ce
0c29: d0 06     bne   $0c31
0c2b: cd 0e     mov   x,#$0e
0c2d: 0b 11     asl   $11
0c2f: 2f 18     bra   $0c49
0c31: 64 cc     cmp   a,$cc
0c33: f0 14     beq   $0c49
0c35: f5 92 01  mov   a,$0192+x
0c38: 75 90 01  cmp   a,$0190+x
0c3b: b0 04     bcs   $0c41
0c3d: cd 0e     mov   x,#$0e
0c3f: 0b 11     asl   $11
0c41: e4 06     mov   a,$06
0c43: 75 90 01  cmp   a,$0190+x
0c46: b0 01     bcs   $0c49
0c48: 6f        ret

0c49: fc        inc   y
0c4a: f7 04     mov   a,($04)+y
0c4c: c4 0a     mov   $0a,a
0c4e: fc        inc   y
0c4f: f7 04     mov   a,($04)+y
0c51: c4 0b     mov   $0b,a
0c53: 8f 01 08  mov   $08,#$01
0c56: 2f 46     bra   $0c9e
0c58: 78 20 0c  cmp   $0c,#$20
0c5b: d0 02     bne   $0c5f
0c5d: a2 1f     set5  $1f
0c5f: cd 0a     mov   x,#$0a
0c61: 2f e6     bra   $0c49
0c63: 68 8e     cmp   a,#$8e
0c65: b0 06     bcs   $0c6d
0c67: 78 20 ca  cmp   $ca,#$20
0c6a: f0 dc     beq   $0c48
0c6c: 80        setc
0c6d: a8 6a     sbc   a,#$6a
0c6f: fd        mov   y,a
0c70: f6 29 09  mov   a,$0929+y
0c73: c4 25     mov   $25,a
0c75: b2 1f     clr5  $1f
0c77: 3f 16 17  call  $1716
0c7a: e8 08     mov   a,#$08
0c7c: 8d ff     mov   y,#$ff
0c7e: 78 91 0c  cmp   $0c,#$91
0c81: b0 04     bcs   $0c87
0c83: e8 06     mov   a,#$06
0c85: 8d 3f     mov   y,#$3f
0c87: c4 07     mov   $07,a
0c89: cb 11     mov   $11,y
0c8b: 8f 1e 06  mov   $06,#$1e
0c8e: 8f 00 0a  mov   $0a,#$00
0c91: 8f 34 0b  mov   $0b,#$34
0c94: cd 00     mov   x,#$00
0c96: d8 1c     mov   $1c,x
0c98: d8 08     mov   $08,x
0c9a: d8 2c     mov   $2c,x
0c9c: d8 2d     mov   $2d,x
0c9e: 8d 00     mov   y,#$00
0ca0: f7 0a     mov   a,($0a)+y
0ca2: d4 30     mov   $30+x,a
0ca4: fc        inc   y
0ca5: f7 0a     mov   a,($0a)+y
0ca7: d4 31     mov   $31+x,a
0ca9: e8 40     mov   a,#$40
0cab: d4 41     mov   $41+x,a
0cad: e8 c0     mov   a,#$c0
0caf: d4 40     mov   $40+x,a
0cb1: e8 00     mov   a,#$00
0cb3: d4 50     mov   $50+x,a
0cb5: d4 51     mov   $51+x,a
0cb7: d5 10 01  mov   $0110+x,a
0cba: d5 11 01  mov   $0111+x,a
0cbd: d5 20 01  mov   $0120+x,a
0cc0: d5 21 01  mov   $0121+x,a
0cc3: d5 30 01  mov   $0130+x,a
0cc6: d5 31 01  mov   $0131+x,a
0cc9: d5 40 01  mov   $0140+x,a
0ccc: d5 41 01  mov   $0141+x,a
0ccf: d5 50 02  mov   $0250+x,a
0cd2: d5 51 02  mov   $0251+x,a
0cd5: d5 11 02  mov   $0211+x,a
0cd8: d4 80     mov   $80+x,a
0cda: d5 10 02  mov   $0210+x,a
0cdd: d5 c1 01  mov   $01c1+x,a
0ce0: d5 a1 01  mov   $01a1+x,a
0ce3: d5 b0 01  mov   $01b0+x,a
0ce6: bc        inc   a
0ce7: d4 60     mov   $60+x,a
0ce9: e4 0c     mov   a,$0c
0ceb: d4 c0     mov   $c0+x,a
0ced: e4 0d     mov   a,$0d
0cef: d4 d1     mov   $d1+x,a
0cf1: e4 08     mov   a,$08
0cf3: d5 91 01  mov   $0191+x,a
0cf6: e4 06     mov   a,$06
0cf8: d5 90 01  mov   $0190+x,a
0cfb: e4 09     mov   a,$09
0cfd: d5 d0 01  mov   $01d0+x,a
0d00: 6e 07 0f  dbnz  $07,$0d12
0d03: e4 11     mov   a,$11
0d05: 0e 10 00  tset1 $0010
0d08: 4e 0e 00  tclr1 $000e
0d0b: 4e 0f 00  tclr1 $000f
0d0e: 0e 1b 00  tset1 $001b
0d11: 6f        ret

0d12: 3d        inc   x
0d13: 3d        inc   x
0d14: fc        inc   y
0d15: 5f a0 0c  jmp   $0ca0

0d18: 40        setp
0d19: c0        di
0d1a: e0        clrv
0d1b: f0 1f     beq   $0d3c
0d1d: 3f 7f ff  call  $ff7f
0d20: e4 fd     mov   a,$fd
0d22: f0 fc     beq   $0d20
0d24: 03 24 16  bbs0  $24,$0d3d
0d27: e4 19     mov   a,$19
0d29: d0 12     bne   $0d3d
0d2b: e4 f4     mov   a,$f4
0d2d: 64 f4     cmp   a,$f4
0d2f: d0 fa     bne   $0d2b
0d31: 68 00     cmp   a,#$00
0d33: f0 08     beq   $0d3d
0d35: c4 f4     mov   $f4,a
0d37: 8f 11 f1  mov   $f1,#$11
0d3a: 3f 3d 0a  call  $0a3d
0d3d: f3 1f 09  bbc7  $1f,$0d49
0d40: f2 1f     clr7  $1f
0d42: e4 2b     mov   a,$2b
0d44: f0 03     beq   $0d49
0d46: 3f 70 0a  call  $0a70
0d49: d3 1f 07  bbc6  $1f,$0d53
0d4c: d2 1f     clr6  $1f
0d4e: e8 18     mov   a,#$18
0d50: 3f b1 0b  call  $0bb1
0d53: 8f 5c f2  mov   $f2,#$5c
0d56: fa 10 f3  mov   ($f3),($10)
0d59: e8 ff     mov   a,#$ff
0d5b: 78 00 26  cmp   $26,#$00
0d5e: d0 26     bne   $0d86
0d60: e4 27     mov   a,$27
0d62: f0 08     beq   $0d6c
0d64: 64 dd     cmp   a,$dd
0d66: f0 07     beq   $0d6f
0d68: 64 df     cmp   a,$df
0d6a: f0 03     beq   $0d6f
0d6c: 38 02 2a  and   $2a,#$02
0d6f: e4 28     mov   a,$28
0d71: f0 08     beq   $0d7b
0d73: 64 dd     cmp   a,$dd
0d75: f0 07     beq   $0d7e
0d77: 64 df     cmp   a,$df
0d79: f0 03     beq   $0d7e
0d7b: 38 01 2a  and   $2a,#$01
0d7e: e8 00     mov   a,#$00
0d80: 78 03 2a  cmp   $2a,#$03
0d83: 90 01     bcc   $0d86
0d85: 9c        dec   a
0d86: c4 f7     mov   $f7,a
0d88: e8 10     mov   a,#$10
0d8a: 9c        dec   a
0d8b: d0 fd     bne   $0d8a
0d8d: 8f 2d f2  mov   $f2,#$2d
0d90: c4 f3     mov   $f3,a
0d92: 8f 3d f2  mov   $f2,#$3d
0d95: c4 f3     mov   $f3,a
0d97: e4 19     mov   a,$19
0d99: f0 04     beq   $0d9f
0d9b: 8b 19     dec   $19
0d9d: 2f 20     bra   $0dbf
0d9f: 8f 6c f2  mov   $f2,#$6c
0da2: fa 13 f3  mov   ($f3),($13)
0da5: e4 1a     mov   a,$1a
0da7: f0 16     beq   $0dbf
0da9: 8b 1a     dec   $1a
0dab: d0 12     bne   $0dbf
0dad: 8f 2c f2  mov   $f2,#$2c
0db0: fa 15 f3  mov   ($f3),($15)
0db3: 8f 3c f2  mov   $f2,#$3c
0db6: fa 16 f3  mov   ($f3),($16)
0db9: 8f 0d f2  mov   $f2,#$0d
0dbc: fa 17 f3  mov   ($f3),($17)
0dbf: e8 00     mov   a,#$00
0dc1: 8f 5c f2  mov   $f2,#$5c
0dc4: c4 f3     mov   $f3,a
0dc6: c4 10     mov   $10,a
0dc8: 8f 4c f2  mov   $f2,#$4c
0dcb: fa 0e f3  mov   ($f3),($0e)
0dce: c4 0e     mov   $0e,a
0dd0: 33 1f 07  bbc1  $1f,$0dda
0dd3: cd 0c     mov   x,#$0c
0dd5: 8f 40 11  mov   $11,#$40
0dd8: 2f 35     bra   $0e0f
0dda: e4 2d     mov   a,$2d
0ddc: f0 14     beq   $0df2
0dde: 68 ff     cmp   a,#$ff
0de0: d0 09     bne   $0deb
0de2: 8b 2c     dec   $2c
0de4: d0 0c     bne   $0df2
0de6: 8f 00 2d  mov   $2d,#$00
0de9: 2f 07     bra   $0df2
0deb: 8b 2d     dec   $2d
0ded: 13 2d 02  bbc0  $2d,$0df2
0df0: ab 2c     inc   $2c
0df2: ab 24     inc   $24
0df4: e4 1c     mov   a,$1c
0df6: f0 12     beq   $0e0a
0df8: 8b 1d     dec   $1d
0dfa: d0 0e     bne   $0e0a
0dfc: fa 1e 1d  mov   ($1d),($1e)
0dff: 8b 1c     dec   $1c
0e01: f0 04     beq   $0e07
0e03: 8b 1c     dec   $1c
0e05: d0 03     bne   $0e0a
0e07: 3f c0 09  call  $09c0
0e0a: 8f 01 11  mov   $11,#$01
0e0d: cd 00     mov   x,#$00
0e0f: f4 c0     mov   a,$c0+x
0e11: f0 5b     beq   $0e6e
0e13: e4 11     mov   a,$11
0e15: 24 1b     and   a,$1b
0e17: d0 55     bne   $0e6e
0e19: f5 91 01  mov   a,$0191+x
0e1c: 5c        lsr   a
0e1d: b0 08     bcs   $0e27
0e1f: 7d        mov   a,x
0e20: 5c        lsr   a
0e21: 44 24     eor   a,$24
0e23: 28 01     and   a,#$01
0e25: d0 47     bne   $0e6e
0e27: d8 22     mov   $22,x
0e29: 7d        mov   a,x
0e2a: 1c        asl   a
0e2b: 1c        asl   a
0e2c: 1c        asl   a
0e2d: c4 23     mov   $23,a
0e2f: f5 91 01  mov   a,$0191+x
0e32: c4 20     mov   $20,a
0e34: f4 40     mov   a,$40+x
0e36: 03 20 0c  bbs0  $20,$0e45
0e39: 60        clrc
0e3a: 84 2c     adc   a,$2c
0e3c: 90 07     bcc   $0e45
0e3e: 60        clrc
0e3f: 94 41     adc   a,$41+x
0e41: d4 40     mov   $40+x,a
0e43: 2f 07     bra   $0e4c
0e45: 60        clrc
0e46: 94 41     adc   a,$41+x
0e48: d4 40     mov   $40+x,a
0e4a: 90 1a     bcc   $0e66
0e4c: 9b 60     dec   $60+x
0e4e: f0 05     beq   $0e55
0e50: 3f e3 0f  call  $0fe3
0e53: 2f 14     bra   $0e69
0e55: 3f 45 11  call  $1145
0e58: a3 20 07  bbs5  $20,$0e62
0e5b: e2 21     set7  $21
0e5d: 3f a0 10  call  $10a0
0e60: 2f 07     bra   $0e69
0e62: b2 20     clr5  $20
0e64: 2f 03     bra   $0e69
0e66: 3f 97 0f  call  $0f97
0e69: e4 20     mov   a,$20
0e6b: d5 91 01  mov   $0191+x,a
0e6e: e4 26     mov   a,$26
0e70: f0 20     beq   $0e92
0e72: e4 f5     mov   a,$f5
0e74: 68 cc     cmp   a,#$cc
0e76: d0 1a     bne   $0e92
0e78: 64 f5     cmp   a,$f5
0e7a: d0 16     bne   $0e92
0e7c: 4d        push  x
0e7d: e3 26 06  bbs7  $26,$0e86
0e80: 3f 17 0f  call  $0f17
0e83: ce        pop   x
0e84: 2f 1d     bra   $0ea3
0e86: fa 11 12  mov   ($12),($11)
0e89: 3f d6 0e  call  $0ed6
0e8c: fa 12 11  mov   ($11),($12)
0e8f: ce        pop   x
0e90: 2f 11     bra   $0ea3
0e92: e4 f5     mov   a,$f5
0e94: 68 f0     cmp   a,#$f0
0e96: 90 0b     bcc   $0ea3
0e98: 64 f5     cmp   a,$f5
0e9a: d0 07     bne   $0ea3
0e9c: c4 f5     mov   $f5,a
0e9e: 4d        push  x
0e9f: 3f 97 0a  call  $0a97
0ea2: ce        pop   x
0ea3: 3d        inc   x
0ea4: 3d        inc   x
0ea5: 0b 11     asl   $11
0ea7: f0 03     beq   $0eac
0ea9: 5f 0f 0e  jmp   $0e0f

0eac: 8f 00 1b  mov   $1b,#$00
0eaf: e4 26     mov   a,$26
0eb1: d0 03     bne   $0eb6
0eb3: 5f 20 0d  jmp   $0d20

0eb6: e4 f5     mov   a,$f5
0eb8: 68 cc     cmp   a,#$cc
0eba: f0 07     beq   $0ec3
0ebc: e4 fd     mov   a,$fd
0ebe: f0 f6     beq   $0eb6
0ec0: 5f 24 0d  jmp   $0d24

0ec3: 64 f5     cmp   a,$f5
0ec5: d0 ef     bne   $0eb6
0ec7: e3 26 06  bbs7  $26,$0ed0
0eca: 3f 17 0f  call  $0f17
0ecd: 5f 20 0d  jmp   $0d20

0ed0: 3f d6 0e  call  $0ed6
0ed3: 5f 20 0d  jmp   $0d20

0ed6: c4 f5     mov   $f5,a
0ed8: eb f5     mov   y,$f5
0eda: d0 fc     bne   $0ed8
0edc: 7e f5     cmp   y,$f5
0ede: d0 f6     bne   $0ed6
0ee0: 2f 06     bra   $0ee8
0ee2: 7e f5     cmp   y,$f5
0ee4: 30 19     bmi   $0eff
0ee6: d0 fa     bne   $0ee2
0ee8: e4 f6     mov   a,$f6
0eea: d7 2e     mov   ($2e)+y,a
0eec: e4 f7     mov   a,$f7
0eee: cb f5     mov   $f5,y
0ef0: fc        inc   y
0ef1: d7 2e     mov   ($2e)+y,a
0ef3: fc        inc   y
0ef4: d0 ec     bne   $0ee2
0ef6: ab 2f     inc   $2f
0ef8: e4 f5     mov   a,$f5
0efa: d0 fc     bne   $0ef8
0efc: c4 f5     mov   $f5,a
0efe: 6f        ret

0eff: 7e f5     cmp   y,$f5
0f01: 10 df     bpl   $0ee2
0f03: e4 f5     mov   a,$f5
0f05: c4 f5     mov   $f5,a
0f07: e4 f5     mov   a,$f5
0f09: d0 fc     bne   $0f07
0f0b: c4 f5     mov   $f5,a
0f0d: c4 26     mov   $26,a
0f0f: 8f 00 f7  mov   $f7,#$00
0f12: e4 2b     mov   a,$2b
0f14: 5f b1 0b  jmp   $0bb1

0f17: c4 f5     mov   $f5,a
0f19: eb f4     mov   y,$f4
0f1b: ad 02     cmp   y,#$02
0f1d: d0 fa     bne   $0f19
0f1f: 7e f4     cmp   y,$f4
0f21: d0 f4     bne   $0f17
0f23: 8f 00 f5  mov   $f5,#$00
0f26: f3 29 08  bbc7  $29,$0f31
0f29: 2f 41     bra   $0f6c
0f2b: 7e f4     cmp   y,$f4
0f2d: 30 4c     bmi   $0f7b
0f2f: d0 fa     bne   $0f2b
0f31: e4 f5     mov   a,$f5
0f33: d7 2e     mov   ($2e)+y,a
0f35: fc        inc   y
0f36: e4 f6     mov   a,$f6
0f38: d7 2e     mov   ($2e)+y,a
0f3a: e4 f7     mov   a,$f7
0f3c: dc        dec   y
0f3d: cb f4     mov   $f4,y
0f3f: fc        inc   y
0f40: fc        inc   y
0f41: d7 2e     mov   ($2e)+y,a
0f43: fc        inc   y
0f44: 10 e5     bpl   $0f2b
0f46: 60        clrc
0f47: 98 7e 2e  adc   $2e,#$7e
0f4a: 98 00 2f  adc   $2f,#$00
0f4d: e4 f4     mov   a,$f4
0f4f: d0 fc     bne   $0f4d
0f51: c4 f4     mov   $f4,a
0f53: e4 29     mov   a,$29
0f55: 30 0e     bmi   $0f65
0f57: f0 0c     beq   $0f65
0f59: 8b 29     dec   $29
0f5b: 38 7f 29  and   $29,#$7f
0f5e: d0 05     bne   $0f65
0f60: 23 1f 02  bbs1  $1f,$0f65
0f63: e2 1f     set7  $1f
0f65: 6f        ret

0f66: 7e f4     cmp   y,$f4
0f68: 30 0b     bmi   $0f75
0f6a: d0 fa     bne   $0f66
0f6c: cb f4     mov   $f4,y
0f6e: fc        inc   y
0f6f: fc        inc   y
0f70: fc        inc   y
0f71: 10 f3     bpl   $0f66
0f73: 2f d1     bra   $0f46
0f75: 7e f4     cmp   y,$f4
0f77: 10 ed     bpl   $0f66
0f79: 2f 04     bra   $0f7f
0f7b: 7e f4     cmp   y,$f4
0f7d: 10 ac     bpl   $0f2b
0f7f: e4 f4     mov   a,$f4
0f81: c4 f4     mov   $f4,a
0f83: e4 f4     mov   a,$f4
0f85: d0 fc     bne   $0f83
0f87: c4 f4     mov   $f4,a
0f89: c4 26     mov   $26,a
0f8b: e4 29     mov   a,$29
0f8d: 30 07     bmi   $0f96
0f8f: f0 05     beq   $0f96
0f91: 23 1f 02  bbs1  $1f,$0f96
0f94: e2 1f     set7  $1f
0f96: 6f        ret

0f97: 12 21     clr0  $21
0f99: f4 70     mov   a,$70+x
0f9b: f0 1d     beq   $0fba
0f9d: 93 20 05  bbc4  $20,$0fa5
0fa0: 3f 9b 18  call  $189b
0fa3: 2f 13     bra   $0fb8
0fa5: f4 71     mov   a,$71+x
0fa7: d0 11     bne   $0fba
0fa9: f4 e0     mov   a,$e0+x
0fab: 60        clrc
0fac: 95 80 02  adc   a,$0280+x
0faf: d4 e0     mov   $e0+x,a
0fb1: f4 e1     mov   a,$e1+x
0fb3: 95 81 02  adc   a,$0281+x
0fb6: d4 e1     mov   $e1+x,a
0fb8: 02 21     set0  $21
0fba: fb e1     mov   y,$e1+x
0fbc: f4 e0     mov   a,$e0+x
0fbe: da 0a     movw  $0a,ya
0fc0: f5 10 02  mov   a,$0210+x
0fc3: f0 07     beq   $0fcc
0fc5: f4 90     mov   a,$90+x
0fc7: d0 03     bne   $0fcc
0fc9: 3f e1 18  call  $18e1
0fcc: f5 c1 01  mov   a,$01c1+x
0fcf: f0 0a     beq   $0fdb
0fd1: 60        clrc
0fd2: 94 c1     adc   a,$c1+x
0fd4: d4 c1     mov   $c1+x,a
0fd6: 90 03     bcc   $0fdb
0fd8: 5f 25 19  jmp   $1925

0fdb: 13 21 b8  bbc0  $21,$0f96
0fde: ba 0a     movw  ya,$0a
0fe0: 5f c5 12  jmp   $12c5

0fe3: 8f 00 21  mov   $21,#$00
0fe6: f5 a1 01  mov   a,$01a1+x
0fe9: 68 7f     cmp   a,#$7f
0feb: b0 2f     bcs   $101c
0fed: fd        mov   y,a
0fee: f4 60     mov   a,$60+x
0ff0: 68 01     cmp   a,#$01
0ff2: f0 25     beq   $1019
0ff4: ad 7d     cmp   y,#$7d
0ff6: b0 24     bcs   $101c
0ff8: f4 61     mov   a,$61+x
0ffa: f0 20     beq   $101c
0ffc: 9b 61     dec   $61+x
0ffe: d0 1c     bne   $101c
1000: f5 d1 01  mov   a,$01d1+x
1003: 10 14     bpl   $1019
1005: e8 05     mov   a,#$05
1007: 04 23     or    a,$23
1009: c4 f2     mov   $f2,a
100b: 8f 00 f3  mov   $f3,#$00
100e: bc        inc   a
100f: bc        inc   a
1010: c4 f2     mov   $f2,a
1012: f5 d1 01  mov   a,$01d1+x
1015: c4 f3     mov   $f3,a
1017: 2f 03     bra   $101c
1019: 09 11 10  or    ($10),($11)
101c: f4 70     mov   a,$70+x
101e: f0 31     beq   $1051
1020: 93 20 05  bbc4  $20,$1028
1023: 3f 9b 18  call  $189b
1026: 2f 27     bra   $104f
1028: f4 71     mov   a,$71+x
102a: f0 04     beq   $1030
102c: 9b 71     dec   $71+x
102e: 2f 21     bra   $1051
1030: 9b 70     dec   $70+x
1032: d0 0c     bne   $1040
1034: f5 91 02  mov   a,$0291+x
1037: d4 e1     mov   $e1+x,a
1039: f5 90 02  mov   a,$0290+x
103c: d4 e0     mov   $e0+x,a
103e: 2f 0f     bra   $104f
1040: f4 e0     mov   a,$e0+x
1042: 60        clrc
1043: 95 80 02  adc   a,$0280+x
1046: d4 e0     mov   $e0+x,a
1048: f4 e1     mov   a,$e1+x
104a: 95 81 02  adc   a,$0281+x
104d: d4 e1     mov   $e1+x,a
104f: 02 21     set0  $21
1051: fb e1     mov   y,$e1+x
1053: f4 e0     mov   a,$e0+x
1055: da 0a     movw  $0a,ya
1057: f5 10 02  mov   a,$0210+x
105a: f0 2b     beq   $1087
105c: f4 90     mov   a,$90+x
105e: f0 04     beq   $1064
1060: 9b 90     dec   $90+x
1062: 2f 23     bra   $1087
1064: f4 91     mov   a,$91+x
1066: f0 1c     beq   $1084
1068: 9b 91     dec   $91+x
106a: d0 05     bne   $1071
106c: f5 10 02  mov   a,$0210+x
106f: 2f 10     bra   $1081
1071: f5 a0 02  mov   a,$02a0+x
1074: 60        clrc
1075: 95 b0 02  adc   a,$02b0+x
1078: d5 a0 02  mov   $02a0+x,a
107b: f5 a1 02  mov   a,$02a1+x
107e: 95 b1 02  adc   a,$02b1+x
1081: d5 a1 02  mov   $02a1+x,a
1084: 3f e1 18  call  $18e1
1087: f5 c1 01  mov   a,$01c1+x
108a: f0 0c     beq   $1098
108c: 60        clrc
108d: 94 c1     adc   a,$c1+x
108f: d4 c1     mov   $c1+x,a
1091: 90 05     bcc   $1098
1093: 3f 25 19  call  $1925
1096: 2f 08     bra   $10a0
1098: 13 21 05  bbc0  $21,$10a0
109b: ba 0a     movw  ya,$0a
109d: 3f c5 12  call  $12c5
10a0: f4 d0     mov   a,$d0+x
10a2: f0 1e     beq   $10c2
10a4: e2 21     set7  $21
10a6: c4 04     mov   $04,a
10a8: f5 31 02  mov   a,$0231+x
10ab: c4 05     mov   $05,a
10ad: f5 71 02  mov   a,$0271+x
10b0: fd        mov   y,a
10b1: f5 70 02  mov   a,$0270+x
10b4: 3f 6c 18  call  $186c
10b7: d5 70 02  mov   $0270+x,a
10ba: dd        mov   a,y
10bb: d5 71 02  mov   $0271+x,a
10be: e4 04     mov   a,$04
10c0: d4 d0     mov   $d0+x,a
10c2: e3 21 05  bbs7  $21,$10ca
10c5: e4 1c     mov   a,$1c
10c7: d0 01     bne   $10ca
10c9: 6f        ret

10ca: f5 b1 01  mov   a,$01b1+x
10cd: f0 fa     beq   $10c9
10cf: f5 10 01  mov   a,$0110+x
10d2: c4 08     mov   $08,a
10d4: f5 11 01  mov   a,$0111+x
10d7: c4 09     mov   $09,a
10d9: f5 20 01  mov   a,$0120+x
10dc: c4 0a     mov   $0a,a
10de: f5 21 01  mov   a,$0121+x
10e1: c4 0b     mov   $0b,a
10e3: f5 b1 01  mov   a,$01b1+x
10e6: 8d 00     mov   y,#$00
10e8: 7a 08     addw  ya,$08
10ea: 7a 0a     addw  ya,$0a
10ec: 30 1e     bmi   $110c
10ee: ad 00     cmp   y,#$00
10f0: d0 04     bne   $10f6
10f2: 08 00     or    a,#$00
10f4: 10 02     bpl   $10f8
10f6: e8 7f     mov   a,#$7f
10f8: fd        mov   y,a
10f9: f5 61 02  mov   a,$0261+x
10fc: cf        mul   ya
10fd: e4 1c     mov   a,$1c
10ff: f0 04     beq   $1105
1101: 03 20 01  bbs0  $20,$1105
1104: cf        mul   ya
1105: dd        mov   a,y
1106: 80        setc
1107: b5 b0 01  sbc   a,$01b0+x
110a: b0 02     bcs   $110e
110c: e8 00     mov   a,#$00
110e: fd        mov   y,a
110f: f6 43 1a  mov   a,$1a43+y
1112: c4 05     mov   $05,a
1114: e8 14     mov   a,#$14
1116: 03 1f 09  bbs0  $1f,$1122
1119: f5 71 02  mov   a,$0271+x
111c: 68 29     cmp   a,#$29
111e: 90 02     bcc   $1122
1120: e8 28     mov   a,#$28
1122: c4 04     mov   $04,a
1124: fd        mov   y,a
1125: f6 c3 1a  mov   a,$1ac3+y
1128: eb 05     mov   y,$05
112a: cf        mul   ya
112b: e8 00     mov   a,#$00
112d: 04 23     or    a,$23
112f: c4 f2     mov   $f2,a
1131: cb f3     mov   $f3,y
1133: bc        inc   a
1134: c4 f2     mov   $f2,a
1136: e8 28     mov   a,#$28
1138: 80        setc
1139: a4 04     sbc   a,$04
113b: fd        mov   y,a
113c: f6 c3 1a  mov   a,$1ac3+y
113f: eb 05     mov   y,$05
1141: cf        mul   ya
1142: cb f3     mov   $f3,y
1144: 6f        ret

1145: 3f 9c 11  call  $119c
1148: c4 08     mov   $08,a
114a: 28 7f     and   a,#$7f
114c: 68 60     cmp   a,#$60
114e: 90 55     bcc   $11a5
1150: e4 08     mov   a,$08
1152: 80        setc
1153: a8 e0     sbc   a,#$e0
1155: b0 36     bcs   $118d
1157: 68 82     cmp   a,#$82
1159: b0 09     bcs   $1164
115b: 22 20     set1  $20
115d: 5c        lsr   a
115e: 90 e5     bcc   $1145
1160: 32 20     clr1  $20
1162: 2f e1     bra   $1145
1164: d0 03     bne   $1169
1166: 5f cd 17  jmp   $17cd

1169: 68 90     cmp   a,#$90
116b: 90 16     bcc   $1183
116d: 28 0f     and   a,#$0f
116f: 1c        asl   a
1170: 1c        asl   a
1171: 8d 00     mov   y,#$00
1173: 68 20     cmp   a,#$20
1175: 90 03     bcc   $117a
1177: 08 e0     or    a,#$e0
1179: dc        dec   y
117a: d5 50 02  mov   $0250+x,a
117d: dd        mov   a,y
117e: d5 51 02  mov   $0251+x,a
1181: 2f c2     bra   $1145
1183: a2 20     set5  $20
1185: 3f 03 0a  call  $0a03
1188: cd 00     mov   x,#$00
118a: d8 11     mov   $11,x
118c: 6f        ret

118d: 1c        asl   a
118e: fd        mov   y,a
118f: f6 02 13  mov   a,$1302+y
1192: 2d        push  a
1193: f6 01 13  mov   a,$1301+y
1196: 2d        push  a
1197: f6 41 13  mov   a,$1341+y
119a: f0 08     beq   $11a4
119c: e7 30     mov   a,($30+x)
119e: bb 30     inc   $30+x
11a0: d0 02     bne   $11a4
11a2: bb 31     inc   $31+x
11a4: 6f        ret

11a5: 33 20 03  bbc1  $20,$11ab
11a8: 09 11 10  or    ($10),($11)
11ab: f3 08 05  bbc7  $08,$11b3
11ae: f5 a0 01  mov   a,$01a0+x
11b1: 2f 06     bra   $11b9
11b3: 3f 9c 11  call  $119c
11b6: d5 a0 01  mov   $01a0+x,a
11b9: d4 60     mov   $60+x,a
11bb: f5 a1 01  mov   a,$01a1+x
11be: 68 7f     cmp   a,#$7f
11c0: f0 06     beq   $11c8
11c2: 09 11 0e  or    ($0e),($11)
11c5: 09 11 0f  or    ($0f),($11)
11c8: 3f 9c 11  call  $119c
11cb: 08 00     or    a,#$00
11cd: 30 06     bmi   $11d5
11cf: d5 a1 01  mov   $01a1+x,a
11d2: 3f 9c 11  call  $119c
11d5: 28 7f     and   a,#$7f
11d7: d5 b1 01  mov   $01b1+x,a
11da: d0 08     bne   $11e4
11dc: e4 11     mov   a,$11
11de: 4e 0e 00  tclr1 $000e
11e1: 4e 0f 00  tclr1 $000f
11e4: 33 20 0a  bbc1  $20,$11f1
11e7: e4 08     mov   a,$08
11e9: 28 7f     and   a,#$7f
11eb: 3f 2b 14  call  $142b
11ee: 8f 3c 08  mov   $08,#$3c
11f1: f5 a0 01  mov   a,$01a0+x
11f4: fd        mov   y,a
11f5: f5 a1 01  mov   a,$01a1+x
11f8: 68 7f     cmp   a,#$7f
11fa: f0 06     beq   $1202
11fc: 1c        asl   a
11fd: cf        mul   ya
11fe: dd        mov   a,y
11ff: d0 01     bne   $1202
1201: fc        inc   y
1202: db 61     mov   $61+x,y
1204: fb e1     mov   y,$e1+x
1206: f4 e0     mov   a,$e0+x
1208: da 0c     movw  $0c,ya
120a: f5 31 01  mov   a,$0131+x
120d: c4 05     mov   $05,a
120f: f5 30 01  mov   a,$0130+x
1212: c4 04     mov   $04,a
1214: f5 41 01  mov   a,$0141+x
1217: c4 07     mov   $07,a
1219: f5 40 01  mov   a,$0140+x
121c: c4 06     mov   $06,a
121e: f5 51 02  mov   a,$0251+x
1221: c4 0b     mov   $0b,a
1223: f5 50 02  mov   a,$0250+x
1226: c4 0a     mov   $0a,a
1228: e4 08     mov   a,$08
122a: 60        clrc
122b: 95 11 02  adc   a,$0211+x
122e: fd        mov   y,a
122f: e8 00     mov   a,#$00
1231: 7a 04     addw  ya,$04
1233: 7a 06     addw  ya,$06
1235: 7a 0a     addw  ya,$0a
1237: d4 e0     mov   $e0+x,a
1239: dd        mov   a,y
123a: 28 7f     and   a,#$7f
123c: d4 e1     mov   $e1+x,a
123e: f5 10 02  mov   a,$0210+x
1241: f0 26     beq   $1269
1243: e8 00     mov   a,#$00
1245: d4 a0     mov   $a0+x,a
1247: d4 b1     mov   $b1+x,a
1249: f5 00 02  mov   a,$0200+x
124c: d4 90     mov   $90+x,a
124e: f5 01 02  mov   a,$0201+x
1251: d4 91     mov   $91+x,a
1253: f0 0b     beq   $1260
1255: f5 b0 02  mov   a,$02b0+x
1258: d5 a0 02  mov   $02a0+x,a
125b: f5 b1 02  mov   a,$02b1+x
125e: 2f 06     bra   $1266
1260: d5 a0 02  mov   $02a0+x,a
1263: f5 10 02  mov   a,$0210+x
1266: d5 a1 02  mov   $02a1+x,a
1269: f5 d1 01  mov   a,$01d1+x
126c: 10 18     bpl   $1286
126e: e8 05     mov   a,#$05
1270: 04 23     or    a,$23
1272: c4 f2     mov   $f2,a
1274: f5 40 02  mov   a,$0240+x
1277: c4 f3     mov   $f3,a
1279: 30 0b     bmi   $1286
127b: e8 07     mov   a,#$07
127d: 04 23     or    a,$23
127f: c4 f2     mov   $f2,a
1281: f5 41 02  mov   a,$0241+x
1284: c4 f3     mov   $f3,a
1286: f4 80     mov   a,$80+x
1288: d4 70     mov   $70+x,a
128a: f0 2c     beq   $12b8
128c: 83 20 17  bbs4  $20,$12a6
128f: f4 81     mov   a,$81+x
1291: d4 71     mov   $71+x,a
1293: f4 e0     mov   a,$e0+x
1295: d5 90 02  mov   $0290+x,a
1298: f4 e1     mov   a,$e1+x
129a: d5 91 02  mov   $0291+x,a
129d: 80        setc
129e: b5 30 02  sbc   a,$0230+x
12a1: d4 e1     mov   $e1+x,a
12a3: fd        mov   y,a
12a4: 2f 1d     bra   $12c3
12a6: f4 e1     mov   a,$e1+x
12a8: d5 91 02  mov   $0291+x,a
12ab: f4 e0     mov   a,$e0+x
12ad: d5 90 02  mov   $0290+x,a
12b0: ba 0c     movw  ya,$0c
12b2: db e1     mov   $e1+x,y
12b4: d4 e0     mov   $e0+x,a
12b6: 2f 0d     bra   $12c5
12b8: e7 30     mov   a,($30+x)
12ba: 68 f3     cmp   a,#$f3
12bc: d0 03     bne   $12c1
12be: 3f b0 13  call  $13b0
12c1: fb e1     mov   y,$e1+x
12c3: f4 e0     mov   a,$e0+x
12c5: da 04     movw  $04,ya
12c7: f5 20 02  mov   a,$0220+x
12ca: fd        mov   y,a
12cb: f5 21 02  mov   a,$0221+x
12ce: 7a 04     addw  ya,$04
12d0: c4 04     mov   $04,a
12d2: dd        mov   a,y
12d3: 1c        asl   a
12d4: fd        mov   y,a
12d5: f6 d0 02  mov   a,$02d0+y
12d8: c4 06     mov   $06,a
12da: f6 d1 02  mov   a,$02d1+y
12dd: c4 07     mov   $07,a
12df: f6 44 19  mov   a,$1944+y
12e2: 2d        push  a
12e3: f6 43 19  mov   a,$1943+y
12e6: eb 04     mov   y,$04
12e8: cf        mul   ya
12e9: ae        pop   a
12ea: cf        mul   ya
12eb: 7a 06     addw  ya,$06
12ed: c4 04     mov   $04,a
12ef: e8 02     mov   a,#$02
12f1: 04 23     or    a,$23
12f3: c4 f2     mov   $f2,a
12f5: fa 04 f3  mov   ($f3),($04)
12f8: bc        inc   a
12f9: c4 f2     mov   $f2,a
12fb: dd        mov   a,y
12fc: 28 3f     and   a,#$3f
12fe: c4 f3     mov   $f3,a
1300: 6f        ret

; vcmd dispatch table
1301: dw $1381  ; e0
1303: dw $1395  ; e1
1305: dw $13db  ; e2
1307: dw $1492  ; e3
1309: dw $14ae  ; e4
130b: dw $1510  ; e5
130d: dw $1529  ; e6
130f: dw $1536  ; e7
1311: dw $15a7  ; e8
1313: dw $15c4  ; e9
1315: dw $1625  ; ea
1317: dw $162a  ; eb
1319: dw $162a  ; ec
131b: dw $17ec  ; ed
131d: dw $1630  ; ee
131f: dw $163f  ; ef
1321: dw $163f  ; f0
1323: dw $1646  ; f1
1325: dw $1664  ; f2
1327: dw $167f  ; f3
1329: dw $168e  ; f4
132b: dw $16b4  ; f5
132d: dw $174f  ; f6
132f: dw $1761  ; f7
1331: dw $1798  ; f8
1333: dw $14f5  ; f9
1335: dw $17a8  ; fa
1337: dw $1802  ; fb
1339: dw $180d  ; fc
133b: dw $181f  ; fd
133d: dw $182d  ; fe
133f: dw $1846  ; ff

; vcmd length table
1341: dw $0001,$0002,$0001,$0001,$0003,$0003,$0000,$0003
1351: dw $0000,$0003,$0001,$0002,$0001,$0001,$0001,$0002
1361: dw $0001,$0003,$0001,$0003,$0003,$0003,$0000,$0000
1371: dw $0002,$0001,$0003,$0001,$0001,$0002,$0002,$0000

; vcmd e0
1381: d5 a0 01  mov   $01a0+x,a
1384: d4 60     mov   $60+x,a
1386: 09 11 10  or    ($10),($11)
1389: e8 00     mov   a,#$00
138b: d5 a1 01  mov   $01a1+x,a
138e: d4 61     mov   $61+x,a
1390: d5 b1 01  mov   $01b1+x,a
1393: 2f 15     bra   $13aa
; vcmd e1
1395: d5 a0 01  mov   $01a0+x,a
1398: d4 60     mov   $60+x,a
139a: 3f 9c 11  call  $119c
139d: d5 a1 01  mov   $01a1+x,a
13a0: 1c        asl   a
13a1: fb 60     mov   y,$60+x
13a3: cf        mul   ya
13a4: dd        mov   a,y
13a5: d0 01     bne   $13a8
13a7: bc        inc   a
13a8: d4 61     mov   $61+x,a
13aa: e7 30     mov   a,($30+x)
13ac: 68 f3     cmp   a,#$f3
13ae: d0 2a     bne   $13da
13b0: 92 20     clr4  $20
13b2: 3f 9e 11  call  $119e
13b5: 3f 9c 11  call  $119c
13b8: d4 71     mov   $71+x,a
13ba: 3f 9c 11  call  $119c
13bd: d4 70     mov   $70+x,a
13bf: 3f 9c 11  call  $119c
13c2: 60        clrc
13c3: 95 11 02  adc   a,$0211+x
13c6: d5 91 02  mov   $0291+x,a
13c9: e8 00     mov   a,#$00
13cb: d5 90 02  mov   $0290+x,a
13ce: 3f 9c 11  call  $119c
13d1: d5 80 02  mov   $0280+x,a
13d4: 3f 9c 11  call  $119c
13d7: d5 81 02  mov   $0281+x,a
13da: 6f        ret

; vcmd e2
13db: 09 11 10  or    ($10),($11)
13de: fd        mov   y,a
13df: f4 d1     mov   a,$d1+x
13e1: d0 2d     bne   $1410
13e3: dd        mov   a,y
13e4: 68 1f     cmp   a,#$1f
13e6: b0 0c     bcs   $13f4
13e8: 8f 68 04  mov   $04,#$68
13eb: 8f 05 05  mov   $05,#$05
13ee: 3f 31 14  call  $1431
13f1: 5f 45 11  jmp   $1145

13f4: a8 1f     sbc   a,#$1f
13f6: 2d        push  a
13f7: eb 25     mov   y,$25
13f9: f6 58 05  mov   a,$0558+y
13fc: c4 04     mov   $04,a
13fe: f6 59 05  mov   a,$0559+y
1401: c4 05     mov   $05,a
1403: ae        pop   a
1404: 3f 31 14  call  $1431
1407: 5f 45 11  jmp   $1145

140a: db $00,$00,$8f,$e0,$14,$00

1410: e8 04     mov   a,#$04
1412: 04 23     or    a,$23
1414: c4 06     mov   $06,a
1416: c4 f2     mov   $f2,a
1418: f5 d0 01  mov   a,$01d0+x
141b: c4 f3     mov   $f3,a
141d: 8f 0a 04  mov   $04,#$0a
1420: 8f 14 05  mov   $05,#$14
1423: 8d 00     mov   y,#$00
1425: 3f 47 14  call  $1447
1428: 5f 45 11  jmp   $1145

142b: 8f e9 04  mov   $04,#$e9
142e: 8f 06 05  mov   $05,#$06
1431: 8d 07     mov   y,#$07
1433: cf        mul   ya
1434: 7a 04     addw  ya,$04
1436: da 04     movw  $04,ya
1438: 8d 00     mov   y,#$00
143a: e8 04     mov   a,#$04
143c: 04 23     or    a,$23
143e: c4 06     mov   $06,a
1440: c4 f2     mov   $f2,a
1442: f7 04     mov   a,($04)+y
1444: c4 f3     mov   $f3,a
1446: fc        inc   y
1447: f7 04     mov   a,($04)+y
1449: d5 20 02  mov   $0220+x,a
144c: fc        inc   y
144d: f7 04     mov   a,($04)+y
144f: d5 21 02  mov   $0221+x,a
1452: 10 07     bpl   $145b
1454: f5 20 02  mov   a,$0220+x
1457: 9c        dec   a
1458: d5 20 02  mov   $0220+x,a
145b: fc        inc   y
145c: ab 06     inc   $06
145e: fa 06 f2  mov   ($f2),($06)
1461: ab 06     inc   $06
1463: f7 04     mov   a,($04)+y
1465: c4 f3     mov   $f3,a
1467: d5 40 02  mov   $0240+x,a
146a: 30 02     bmi   $146e
146c: ab 06     inc   $06
146e: fc        inc   y
146f: fa 06 f2  mov   ($f2),($06)
1472: f7 04     mov   a,($04)+y
1474: c4 f3     mov   $f3,a
1476: d5 41 02  mov   $0241+x,a
1479: e8 00     mov   a,#$00
147b: d5 d1 01  mov   $01d1+x,a
147e: fc        inc   y
147f: 63 20 09  bbs3  $20,$148b
1482: f7 04     mov   a,($04)+y
1484: d5 71 02  mov   $0271+x,a
1487: e8 00     mov   a,#$00
1489: d4 d0     mov   $d0+x,a
148b: fc        inc   y
148c: f7 04     mov   a,($04)+y
148e: d5 b0 01  mov   $01b0+x,a
1491: 6f        ret

; vcmd e3
1492: 68 2a     cmp   a,#$2a
1494: f0 0e     beq   $14a4
1496: 68 2c     cmp   a,#$2c
1498: f0 0f     beq   $14a9
149a: d5 71 02  mov   $0271+x,a
149d: e8 00     mov   a,#$00
149f: d4 d0     mov   $d0+x,a
14a1: 5f 45 11  jmp   $1145

14a4: 62 20     set3  $20
14a6: 5f 45 11  jmp   $1145

14a9: 72 20     clr3  $20
14ab: 5f 45 11  jmp   $1145

; vcmd e4
14ae: 2d        push  a
14af: 3f 9c 11  call  $119c
14b2: 68 80     cmp   a,#$80
14b4: b0 13     bcs   $14c9
14b6: 1c        asl   a
14b7: 30 0c     bmi   $14c5
14b9: 1c        asl   a
14ba: 30 05     bmi   $14c1
14bc: 1c        asl   a
14bd: 8d 01     mov   y,#$01
14bf: 2f 10     bra   $14d1
14c1: 8d 02     mov   y,#$02
14c3: 2f 0c     bra   $14d1
14c5: 8d 04     mov   y,#$04
14c7: 2f 08     bra   $14d1
14c9: 8d 08     mov   y,#$08
14cb: 68 ff     cmp   a,#$ff
14cd: d0 02     bne   $14d1
14cf: 8d 10     mov   y,#$10
14d1: d4 a1     mov   $a1+x,a
14d3: db b0     mov   $b0+x,y
14d5: 3f 9c 11  call  $119c
14d8: d5 10 02  mov   $0210+x,a
14db: ae        pop   a
14dc: 68 c8     cmp   a,#$c8
14de: b0 0b     bcs   $14eb
14e0: d5 00 02  mov   $0200+x,a
14e3: e8 00     mov   a,#$00
14e5: d5 01 02  mov   $0201+x,a
14e8: 5f 45 11  jmp   $1145

14eb: fd        mov   y,a
14ec: e8 00     mov   a,#$00
14ee: d5 00 02  mov   $0200+x,a
14f1: dd        mov   a,y
14f2: 80        setc
14f3: a8 c7     sbc   a,#$c7
; vcmd f9
14f5: d5 01 02  mov   $0201+x,a
14f8: 2d        push  a
14f9: 8d 00     mov   y,#$00
14fb: f5 10 02  mov   a,$0210+x
14fe: ce        pop   x
14ff: 9e        div   ya,x
1500: 2d        push  a
1501: e8 00     mov   a,#$00
1503: 9e        div   ya,x
1504: f8 22     mov   x,$22
1506: d5 b0 02  mov   $02b0+x,a
1509: ae        pop   a
150a: d5 b1 02  mov   $02b1+x,a
150d: 5f 45 11  jmp   $1145

; vcmd e5
1510: d5 c1 01  mov   $01c1+x,a
1513: 3f 9c 11  call  $119c
1516: d5 c1 02  mov   $02c1+x,a
1519: 3f 9c 11  call  $119c
151c: d5 c0 02  mov   $02c0+x,a
151f: e8 00     mov   a,#$00
1521: d4 c1     mov   $c1+x,a
1523: d5 c0 01  mov   $01c0+x,a
1526: 5f 45 11  jmp   $1145

; vcmd e6
1529: f4 30     mov   a,$30+x
152b: d5 50 01  mov   $0150+x,a
152e: f4 31     mov   a,$31+x
1530: d5 51 01  mov   $0151+x,a
1533: 5f 45 11  jmp   $1145

; vcmd e7
1536: 68 00     cmp   a,#$00
1538: f0 1e     beq   $1558
153a: bb 50     inc   $50+x
153c: de 50 19  cbne  $50+x,$1558
153f: 3f 9e 11  call  $119e
1542: 3f 9e 11  call  $119e
1545: e8 00     mov   a,#$00
1547: d4 50     mov   $50+x,a
1549: d5 10 01  mov   $0110+x,a
154c: d5 11 01  mov   $0111+x,a
154f: d5 30 01  mov   $0130+x,a
1552: d5 31 01  mov   $0131+x,a
1555: 5f 45 11  jmp   $1145

1558: 3f 9c 11  call  $119c
155b: 8d 00     mov   y,#$00
155d: 08 00     or    a,#$00
155f: f0 15     beq   $1576
1561: 10 01     bpl   $1564
1563: dc        dec   y
1564: da 04     movw  $04,ya
1566: f5 11 01  mov   a,$0111+x
1569: fd        mov   y,a
156a: f5 10 01  mov   a,$0110+x
156d: 7a 04     addw  ya,$04
156f: d5 10 01  mov   $0110+x,a
1572: dd        mov   a,y
1573: d5 11 01  mov   $0111+x,a
1576: 3f 9c 11  call  $119c
1579: 08 00     or    a,#$00
157b: f0 1d     beq   $159a
157d: 8d 00     mov   y,#$00
157f: 1c        asl   a
1580: 90 01     bcc   $1583
1582: dc        dec   y
1583: cb 04     mov   $04,y
1585: 1c        asl   a
1586: 2b 04     rol   $04
1588: 1c        asl   a
1589: 2b 04     rol   $04
158b: 60        clrc
158c: 95 30 01  adc   a,$0130+x
158f: d5 30 01  mov   $0130+x,a
1592: e4 04     mov   a,$04
1594: 95 31 01  adc   a,$0131+x
1597: d5 31 01  mov   $0131+x,a
159a: f5 50 01  mov   a,$0150+x
159d: d4 30     mov   $30+x,a
159f: f5 51 01  mov   a,$0151+x
15a2: d4 31     mov   $31+x,a
15a4: 5f 45 11  jmp   $1145

; vcmd e8
15a7: f4 30     mov   a,$30+x
15a9: d5 60 01  mov   $0160+x,a
15ac: f4 31     mov   a,$31+x
15ae: d5 61 01  mov   $0161+x,a
15b1: e8 00     mov   a,#$00
15b3: d4 51     mov   $51+x,a
15b5: d5 20 01  mov   $0120+x,a
15b8: d5 21 01  mov   $0121+x,a
15bb: d5 40 01  mov   $0140+x,a
15be: d5 41 01  mov   $0141+x,a
15c1: 5f 45 11  jmp   $1145

; vcmd e9
15c4: 68 00     cmp   a,#$00
15c6: f0 0e     beq   $15d6
15c8: bb 51     inc   $51+x
15ca: de 51 09  cbne  $51+x,$15d6
15cd: 3f 9e 11  call  $119e
15d0: 3f 9e 11  call  $119e
15d3: 5f 45 11  jmp   $1145

15d6: 3f 9c 11  call  $119c
15d9: 8d 00     mov   y,#$00
15db: 08 00     or    a,#$00
15dd: f0 15     beq   $15f4
15df: 10 01     bpl   $15e2
15e1: dc        dec   y
15e2: da 04     movw  $04,ya
15e4: f5 21 01  mov   a,$0121+x
15e7: fd        mov   y,a
15e8: f5 20 01  mov   a,$0120+x
15eb: 7a 04     addw  ya,$04
15ed: d5 20 01  mov   $0120+x,a
15f0: dd        mov   a,y
15f1: d5 21 01  mov   $0121+x,a
15f4: 3f 9c 11  call  $119c
15f7: 08 00     or    a,#$00
15f9: f0 1d     beq   $1618
15fb: 8d 00     mov   y,#$00
15fd: 1c        asl   a
15fe: 90 01     bcc   $1601
1600: dc        dec   y
1601: cb 04     mov   $04,y
1603: 1c        asl   a
1604: 2b 04     rol   $04
1606: 1c        asl   a
1607: 2b 04     rol   $04
1609: 60        clrc
160a: 95 40 01  adc   a,$0140+x
160d: d5 40 01  mov   $0140+x,a
1610: e4 04     mov   a,$04
1612: 95 41 01  adc   a,$0141+x
1615: d5 41 01  mov   $0141+x,a
1618: f5 60 01  mov   a,$0160+x
161b: d4 30     mov   $30+x,a
161d: f5 61 01  mov   a,$0161+x
1620: d4 31     mov   $31+x,a
1622: 5f 45 11  jmp   $1145

; vcmd ea
1625: d4 41     mov   $41+x,a
1627: 5f 45 11  jmp   $1145

; vcmd eb-ec
162a: d5 11 02  mov   $0211+x,a
162d: 5f 45 11  jmp   $1145

; vcmd ee
1630: bc        inc   a
1631: 03 20 05  bbs0  $20,$1639
1634: 68 ff     cmp   a,#$ff
1636: b0 01     bcs   $1639
1638: bc        inc   a
1639: d5 61 02  mov   $0261+x,a
163c: 5f 45 11  jmp   $1145

; vcmd ef-f0
163f: d4 80     mov   $80+x,a
1641: 82 20     set4  $20
1643: 5f 45 11  jmp   $1145

; vcmd f1
1646: 92 20     clr4  $20
1648: d4 81     mov   $81+x,a
164a: 3f 9c 11  call  $119c
164d: d4 80     mov   $80+x,a
164f: 3f 9c 11  call  $119c
1652: d5 30 02  mov   $0230+x,a
1655: 3f 9c 11  call  $119c
1658: d5 80 02  mov   $0280+x,a
165b: 3f 9c 11  call  $119c
165e: d5 81 02  mov   $0281+x,a
1661: 5f 45 11  jmp   $1145

; vcmd f2
1664: 1c        asl   a
1665: b0 08     bcs   $166f
1667: 8d 00     mov   y,#$00
1669: 1c        asl   a
166a: 90 09     bcc   $1675
166c: fc        inc   y
166d: 2f 06     bra   $1675
166f: 8d ff     mov   y,#$ff
1671: 1c        asl   a
1672: b0 01     bcs   $1675
1674: dc        dec   y
1675: d5 50 02  mov   $0250+x,a
1678: dd        mov   a,y
1679: d5 51 02  mov   $0251+x,a
167c: 5f 45 11  jmp   $1145

; vcmd f3
167f: 3f 9e 11  call  $119e
1682: 3f 9e 11  call  $119e
1685: 3f 9e 11  call  $119e
1688: 3f 9e 11  call  $119e
168b: 5f 45 11  jmp   $1145

; vcmd f4
168e: 08 00     or    a,#$00
1690: f0 16     beq   $16a8
1692: b2 13     clr5  $13
1694: c4 14     mov   $14,a
1696: 8f 4d f2  mov   $f2,#$4d
1699: c4 f3     mov   $f3,a
169b: 3f 9c 11  call  $119c
169e: c4 15     mov   $15,a
16a0: 3f 9c 11  call  $119c
16a3: c4 16     mov   $16,a
16a5: 5f 45 11  jmp   $1145

16a8: 3f 16 17  call  $1716
16ab: 3f 9e 11  call  $119e
16ae: 3f 9e 11  call  $119e
16b1: 5f 45 11  jmp   $1145

; vcmd f5
16b4: 78 00 14  cmp   $14,#$00
16b7: f0 f2     beq   $16ab
16b9: 28 0f     and   a,#$0f
16bb: 64 18     cmp   a,$18
16bd: f0 31     beq   $16f0
16bf: eb 18     mov   y,$18
16c1: c4 18     mov   $18,a
16c3: dd        mov   a,y
16c4: 1c        asl   a
16c5: 1c        asl   a
16c6: 1c        asl   a
16c7: 1c        asl   a
16c8: 08 0f     or    a,#$0f
16ca: 60        clrc
16cb: 84 19     adc   a,$19
16cd: c4 19     mov   $19,a
16cf: 8f 6c f2  mov   $f2,#$6c
16d2: e4 13     mov   a,$13
16d4: 08 20     or    a,#$20
16d6: c4 f3     mov   $f3,a
16d8: 8f 7d f2  mov   $f2,#$7d
16db: fa 18 f3  mov   ($f3),($18)
16de: e4 18     mov   a,$18
16e0: f0 09     beq   $16eb
16e2: 1c        asl   a
16e3: 1c        asl   a
16e4: 1c        asl   a
16e5: 48 ff     eor   a,#$ff
16e7: bc        inc   a
16e8: 60        clrc
16e9: 88 00     adc   a,#$00
16eb: 8f 6d f2  mov   $f2,#$6d
16ee: c4 f3     mov   $f3,a
16f0: e4 18     mov   a,$18
16f2: 1c        asl   a
16f3: 1c        asl   a
16f4: 1c        asl   a
16f5: 1c        asl   a
16f6: 08 0f     or    a,#$0f
16f8: c4 1a     mov   $1a,a
16fa: 3f 9c 11  call  $119c
16fd: c4 17     mov   $17,a
16ff: 3f 9e 11  call  $119e
1702: 8d 00     mov   y,#$00
1704: f6 f0 03  mov   a,$03f0+y
1707: c4 f2     mov   $f2,a
1709: f6 f8 03  mov   a,$03f8+y
170c: c4 f3     mov   $f3,a
170e: fc        inc   y
170f: ad 08     cmp   y,#$08
1711: d0 f1     bne   $1704
1713: 5f 45 11  jmp   $1145

1716: e4 14     mov   a,$14
1718: f0 34     beq   $174e
171a: e4 18     mov   a,$18
171c: 1c        asl   a
171d: 1c        asl   a
171e: bc        inc   a
171f: c4 19     mov   $19,a
1721: e8 00     mov   a,#$00
1723: 8f 2c f2  mov   $f2,#$2c
1726: c4 f3     mov   $f3,a
1728: 8f 3c f2  mov   $f2,#$3c
172b: c4 f3     mov   $f3,a
172d: 8f 0d f2  mov   $f2,#$0d
1730: c4 f3     mov   $f3,a
1732: a2 13     set5  $13
1734: 8f 6c f2  mov   $f2,#$6c
1737: fa 13 f3  mov   ($f3),($13)
173a: c4 14     mov   $14,a
173c: c4 15     mov   $15,a
173e: c4 16     mov   $16,a
1740: c4 17     mov   $17,a
1742: c4 18     mov   $18,a
1744: 8f 7d f2  mov   $f2,#$7d
1747: c4 f3     mov   $f3,a
1749: 8f 6d f2  mov   $f2,#$6d
174c: c4 f3     mov   $f3,a
174e: 6f        ret

; vcmd f6
174f: f4 30     mov   a,$30+x
1751: d5 70 01  mov   $0170+x,a
1754: f4 31     mov   a,$31+x
1756: d5 71 01  mov   $0171+x,a
1759: e8 c0     mov   a,#$c0
175b: 4e 20 00  tclr1 $0020
175e: 5f 45 11  jmp   $1145

; vcmd f7
1761: c3 20 08  bbs6  $20,$176c
1764: e3 20 20  bbs7  $20,$1787
1767: c2 20     set6  $20
1769: 5f 45 11  jmp   $1145

176c: d2 20     clr6  $20
176e: e2 20     set7  $20
1770: f4 30     mov   a,$30+x
1772: d5 80 01  mov   $0180+x,a
1775: f4 31     mov   a,$31+x
1777: d5 81 01  mov   $0181+x,a
177a: f5 70 01  mov   a,$0170+x
177d: d4 30     mov   $30+x,a
177f: f5 71 01  mov   a,$0171+x
1782: d4 31     mov   $31+x,a
1784: 5f 45 11  jmp   $1145

1787: c2 20     set6  $20
1789: f2 20     clr7  $20
178b: f5 80 01  mov   a,$0180+x
178e: d4 30     mov   $30+x,a
1790: f5 81 01  mov   a,$0181+x
1793: d4 31     mov   $31+x,a
1795: 5f 45 11  jmp   $1145

; vcmd f8
1798: d5 31 02  mov   $0231+x,a
179b: 3f 9c 11  call  $119c
179e: d4 d0     mov   $d0+x,a
17a0: e8 00     mov   a,#$00
17a2: d5 70 02  mov   $0270+x,a
17a5: 5f 45 11  jmp   $1145

; vcmd fa
17a8: d5 40 02  mov   $0240+x,a
17ab: fd        mov   y,a
17ac: e8 05     mov   a,#$05
17ae: 04 23     or    a,$23
17b0: c4 f2     mov   $f2,a
17b2: cb f3     mov   $f3,y
17b4: bc        inc   a
17b5: ad 80     cmp   y,#$80
17b7: 90 09     bcc   $17c2
17b9: c4 f2     mov   $f2,a
17bb: 3f 9c 11  call  $119c
17be: c4 f3     mov   $f3,a
17c0: 2f 0b     bra   $17cd
17c2: bc        inc   a
17c3: c4 f2     mov   $f2,a
17c5: 3f 9c 11  call  $119c
17c8: c4 f3     mov   $f3,a
17ca: d5 41 02  mov   $0241+x,a
17cd: 3f 9c 11  call  $119c
17d0: 68 c8     cmp   a,#$c8
17d2: b0 0c     bcs   $17e0
17d4: 68 64     cmp   a,#$64
17d6: 90 0e     bcc   $17e6
17d8: a8 64     sbc   a,#$64
17da: 28 1f     and   a,#$1f
17dc: 08 80     or    a,#$80
17de: 2f 06     bra   $17e6
17e0: a8 c8     sbc   a,#$c8
17e2: 28 1f     and   a,#$1f
17e4: 08 a0     or    a,#$a0
17e6: d5 d1 01  mov   $01d1+x,a
17e9: 5f 45 11  jmp   $1145

; vcmd ed
17ec: 2d        push  a
17ed: f5 40 02  mov   a,$0240+x
17f0: ae        pop   a
17f1: 10 0c     bpl   $17ff
17f3: d5 40 02  mov   $0240+x,a
17f6: fd        mov   y,a
17f7: e8 05     mov   a,#$05
17f9: 04 23     or    a,$23
17fb: c4 f2     mov   $f2,a
17fd: cb f3     mov   $f3,y
17ff: 5f 45 11  jmp   $1145

; vcmd fb
1802: 2d        push  a
1803: f5 40 02  mov   a,$0240+x
1806: ee        pop   y
1807: 10 f6     bpl   $17ff
1809: e8 06     mov   a,#$06
180b: 2f ec     bra   $17f9
; vcmd fc
180d: bc        inc   a
180e: 03 20 05  bbs0  $20,$1816
1811: 68 ff     cmp   a,#$ff
1813: b0 01     bcs   $1816
1815: bc        inc   a
1816: d5 61 02  mov   $0261+x,a
1819: 3f 9c 11  call  $119c
181c: 5f db 13  jmp   $13db

; vcmd fd
181f: c4 04     mov   $04,a
1821: 3f 9c 11  call  $119c
1824: d4 31     mov   $31+x,a
1826: e4 04     mov   a,$04
1828: d4 30     mov   $30+x,a
182a: 5f 45 11  jmp   $1145

; vcmd fe
182d: 2d        push  a
182e: 3f 9c 11  call  $119c
1831: fd        mov   y,a
1832: f4 30     mov   a,$30+x
1834: d5 00 01  mov   $0100+x,a
1837: f4 31     mov   a,$31+x
1839: d5 01 01  mov   $0101+x,a
183c: ae        pop   a
183d: d4 30     mov   $30+x,a
183f: db 31     mov   $31+x,y
1841: 42 20     set2  $20
1843: 5f 45 11  jmp   $1145

; vcmd ff
1846: 53 20 0f  bbc2  $20,$1858
1849: 52 20     clr2  $20
184b: f5 00 01  mov   a,$0100+x
184e: d4 30     mov   $30+x,a
1850: f5 01 01  mov   a,$0101+x
1853: d4 31     mov   $31+x,a
1855: 5f 45 11  jmp   $1145

1858: e8 00     mov   a,#$00
185a: d4 c0     mov   $c0+x,a
185c: d4 d1     mov   $d1+x,a
185e: d5 90 01  mov   $0190+x,a
1861: e4 11     mov   a,$11
1863: 0e 10 00  tset1 $0010
1866: 4e 0f 00  tclr1 $000f
1869: a2 20     set5  $20
186b: 6f        ret

186c: da 06     movw  $06,ya
186e: e4 04     mov   a,$04
1870: 9f        xcn   a
1871: 28 f0     and   a,#$f0
1873: 2d        push  a
1874: e4 04     mov   a,$04
1876: 30 0f     bmi   $1887
1878: 9f        xcn   a
1879: 28 07     and   a,#$07
187b: fd        mov   y,a
187c: ae        pop   a
187d: 60        clrc
187e: 7a 06     addw  ya,$06
1880: b0 13     bcs   $1895
1882: 7e 05     cmp   y,$05
1884: b0 0f     bcs   $1895
1886: 6f        ret

1887: 9f        xcn   a
1888: 08 f8     or    a,#$f8
188a: fd        mov   y,a
188b: ae        pop   a
188c: 60        clrc
188d: 7a 06     addw  ya,$06
188f: 90 04     bcc   $1895
1891: 7e 05     cmp   y,$05
1893: b0 05     bcs   $189a
1895: 8f 00 04  mov   $04,#$00
1898: eb 05     mov   y,$05
189a: 6f        ret

189b: f4 e0     mov   a,$e0+x
189d: fb e1     mov   y,$e1+x
189f: da 04     movw  $04,ya
18a1: f5 91 02  mov   a,$0291+x
18a4: fd        mov   y,a
18a5: f5 90 02  mov   a,$0290+x
18a8: 9a 04     subw  ya,$04
18aa: f0 32     beq   $18de
18ac: da 06     movw  $06,ya
18ae: 10 07     bpl   $18b7
18b0: e8 00     mov   a,#$00
18b2: fd        mov   y,a
18b3: 9a 06     subw  ya,$06
18b5: c4 06     mov   $06,a
18b7: f4 80     mov   a,$80+x
18b9: cf        mul   ya
18ba: da 08     movw  $08,ya
18bc: eb 06     mov   y,$06
18be: f4 80     mov   a,$80+x
18c0: cf        mul   ya
18c1: dd        mov   a,y
18c2: 8d 00     mov   y,#$00
18c4: 7a 08     addw  ya,$08
18c6: d0 01     bne   $18c9
18c8: bc        inc   a
18c9: f3 07 0b  bbc7  $07,$18d7
18cc: da 06     movw  $06,ya
18ce: ba 04     movw  ya,$04
18d0: 9a 06     subw  ya,$06
18d2: d4 e0     mov   $e0+x,a
18d4: db e1     mov   $e1+x,y
18d6: 6f        ret

18d7: 7a 04     addw  ya,$04
18d9: d4 e0     mov   $e0+x,a
18db: db e1     mov   $e1+x,y
18dd: 6f        ret

18de: d4 70     mov   $70+x,a
18e0: 6f        ret

18e1: f4 a0     mov   a,$a0+x
18e3: 60        clrc
18e4: 94 a1     adc   a,$a1+x
18e6: d4 a0     mov   $a0+x,a
18e8: 90 3a     bcc   $1924
18ea: 02 21     set0  $21
18ec: f4 b1     mov   a,$b1+x
18ee: 60        clrc
18ef: 94 b0     adc   a,$b0+x
18f1: 28 3f     and   a,#$3f
18f3: c4 04     mov   $04,a
18f5: d4 b1     mov   $b1+x,a
18f7: 28 1f     and   a,#$1f
18f9: fd        mov   y,a
18fa: f6 d0 03  mov   a,$03d0+y
18fd: fd        mov   y,a
18fe: f5 a1 02  mov   a,$02a1+x
1901: 30 09     bmi   $190c
1903: 1c        asl   a
1904: cf        mul   ya
1905: cb 08     mov   $08,y
1907: 8f 00 09  mov   $09,#$00
190a: 2f 0a     bra   $1916
190c: 80        setc
190d: a8 7e     sbc   a,#$7e
190f: cf        mul   ya
1910: da 08     movw  $08,ya
1912: 4b 09     lsr   $09
1914: 6b 08     ror   $08
1916: ba 0a     movw  ya,$0a
1918: b3 04 05  bbc5  $04,$1920
191b: 9a 08     subw  ya,$08
191d: da 0a     movw  $0a,ya
191f: 6f        ret

1920: 7a 08     addw  ya,$08
1922: da 0a     movw  $0a,ya
1924: 6f        ret

1925: f5 c0 01  mov   a,$01c0+x
1928: fd        mov   y,a
1929: bc        inc   a
192a: 28 7f     and   a,#$7f
192c: d5 c0 01  mov   $01c0+x,a
192f: f6 ed 1a  mov   a,$1aed+y
1932: 35 c0 02  and   a,$02c0+x
1935: 2d        push  a
1936: f6 ee 1a  mov   a,$1aee+y
1939: 35 c1 02  and   a,$02c1+x
193c: fd        mov   y,a
193d: ae        pop   a
193e: 7a 0a     addw  ya,$0a
1940: 5f c5 12  jmp   $12c5

; pitch scale table (fraction, multiplier) (96 elements)
1943: db $04,$01      ; $0004
1945: db $05,$01      ; $0005
1947: db $04,$01      ; $0004
1949: db $05,$01      ; $0005
194b: db $05,$01      ; $0005
194d: db $05,$01      ; $0005
194f: db $06,$01      ; $0006
1951: db $06,$01      ; $0006
1953: db $06,$01      ; $0006
1955: db $07,$01      ; $0007
1957: db $07,$01      ; $0007
1959: db $07,$01      ; $0007
195b: db $08,$01      ; $0008
195d: db $09,$01      ; $0009
195f: db $09,$01      ; $0009
1961: db $09,$01      ; $0009
1963: db $0a,$01      ; $000a
1965: db $0b,$01      ; $000b
1967: db $0b,$01      ; $000b
1969: db $0c,$01      ; $000c
196b: db $0d,$01      ; $000d
196d: db $0d,$01      ; $000d
196f: db $0e,$01      ; $000e
1971: db $0f,$01      ; $000f
1973: db $10,$01      ; $0010
1975: db $11,$01      ; $0011
1977: db $12,$01      ; $0012
1979: db $13,$01      ; $0013
197b: db $14,$01      ; $0014
197d: db $15,$01      ; $0015
197f: db $17,$01      ; $0017
1981: db $18,$01      ; $0018
1983: db $19,$01      ; $0019
1985: db $1b,$01      ; $001b
1987: db $1c,$01      ; $001c
1989: db $1e,$01      ; $001e
198b: db $20,$01      ; $0020
198d: db $22,$01      ; $0022
198f: db $24,$01      ; $0024
1991: db $26,$01      ; $0026
1993: db $28,$01      ; $0028
1995: db $2a,$01      ; $002a
1997: db $2d,$01      ; $002d
1999: db $30,$01      ; $0030
199b: db $33,$01      ; $0033
199d: db $35,$01      ; $0035
199f: db $39,$01      ; $0039
19a1: db $3c,$01      ; $003c
19a3: db $40,$01      ; $0040
19a5: db $43,$01      ; $0043
19a7: db $48,$01      ; $0048
19a9: db $4c,$01      ; $004c
19ab: db $50,$01      ; $0050
19ad: db $55,$01      ; $0055
19af: db $5a,$01      ; $005a
19b1: db $60,$01      ; $0060
19b3: db $65,$01      ; $0065
19b5: db $6b,$01      ; $006b
19b7: db $71,$01      ; $0071
19b9: db $79,$01      ; $0079
19bb: db $7f,$01      ; $007f
19bd: db $87,$01      ; $0087
19bf: db $8f,$01      ; $008f
19c1: db $98,$01      ; $0098
19c3: db $a0,$01      ; $00a0
19c5: db $aa,$01      ; $00aa
19c7: db $b5,$01      ; $00b5
19c9: db $bf,$01      ; $00bf
19cb: db $ca,$01      ; $00ca
19cd: db $d6,$01      ; $00d6
19cf: db $e3,$01      ; $00e3
19d1: db $f1,$01      ; $00f1
19d3: db $ff,$01      ; $00ff
19d5: db $87,$02      ; $010e
19d7: db $8f,$02      ; $011e
19d9: db $97,$02      ; $012e
19db: db $a0,$02      ; $0140
19dd: db $aa,$02      ; $0154
19df: db $b4,$02      ; $0168
19e1: db $bf,$02      ; $017e
19e3: db $ca,$02      ; $0194
19e5: db $d6,$02      ; $01ac
19e7: db $e3,$02      ; $01c6
19e9: db $f0,$02      ; $01e0
19eb: db $ff,$02      ; $01fe
19ed: db $b4,$03      ; $021c
19ef: db $be,$03      ; $023a
19f1: db $ca,$03      ; $025e
19f3: db $d6,$03      ; $0282
19f5: db $e2,$03      ; $02a6
19f7: db $f0,$03      ; $02d0
19f9: db $fe,$03      ; $02fa
19fb: db $ca,$04      ; $0328
19fd: db $d7,$04      ; $035c
19ff: db $e2,$04      ; $0388
1a01: db $c9,$01      ; $00c9

1a03: db $01,$01,$01,$01,$01,$01,$01,$01
1a0b: db $01,$01,$01,$01,$01,$01,$02,$01
1a13: db $01,$01,$01,$01,$01,$01,$01,$01
1a1b: db $02,$01,$01,$01,$02,$01,$01,$01
1a23: db $02,$01,$02,$01,$01,$01,$02,$01
1a2b: db $03,$01,$02,$01,$02,$01,$03,$01
1a33: db $02,$01,$03,$01,$03,$01,$03,$01
1a3b: db $04,$01,$03,$01,$03,$01,$04,$01

1a43: db $00,$01,$01,$01,$01,$01,$01,$01
1a4b: db $01,$01,$01,$01,$01,$01,$01,$01
1a53: db $01,$01,$01,$01,$01,$01,$01,$01
1a5b: db $01,$01,$01,$01,$01,$01,$02,$02
1a63: db $02,$02,$02,$02,$02,$02,$02,$02
1a6b: db $03,$03,$03,$03,$03,$03,$04,$04
1a73: db $04,$04,$04,$04,$05,$05,$05,$05
1a7b: db $06,$06,$07,$07,$07,$07,$08,$08
1a83: db $09,$09,$0a,$0a,$0a,$0a,$0b,$0b
1a8b: db $0c,$0c,$0d,$0d,$0e,$0f,$10,$10
1a93: db $11,$12,$13,$14,$15,$15,$16,$17
1a9b: db $18,$19,$1b,$1c,$1d,$1e,$20,$22
1aa3: db $23,$24,$26,$28,$2a,$2c,$2d,$2f
1aab: db $31,$33,$35,$38,$3a,$3d,$40,$43
1ab3: db $46,$49,$4c,$4f,$52,$56,$5a,$5e
1abb: db $62,$66,$6b,$6f,$73,$77,$7b,$7f

1ac3: db $00,$04,$08,$0e,$14,$1a,$20,$28
1acb: db $30,$38,$40,$48,$50,$5a,$64,$6e
1ad3: db $78,$82,$8c,$96,$a0,$a8,$b0,$b8
1adb: db $c0,$c8,$d0,$d6,$dc,$e0,$e4,$e8
1ae3: db $ec,$f0,$f4,$f6,$f8,$fa,$fc,$fe
1aeb: db $fe,$fe

1aed: dw $3c9f
1aef: dw $52b2
1af1: dw $45af
1af3: dw $89c7
1af5: dw $7f10
1af7: dw $9de0
1af9: dw $1fdc
1afb: dw $1661
1afd: dw $c939
1aff: dw $eb9c
1b01: dw $0857
1b03: dw $f866
1b05: dw $245a
1b07: dw $0ebf
1b09: dw $153e
1b0b: dw $db4b
1b0d: dw $f5ab
1b0f: dw $0c31
1b11: dw $0243
1b13: dw $de55
1b15: dw $da41
1b17: dw $aebd
1b19: dw $b019
1b1b: dw $5748
1b1d: dw $a3ba
1b1f: dw $0b36
1b21: dw $dff9
1b23: dw $a817
1b25: dw $0c04
1b27: dw $91e0
1b29: dw $5d18
1b2b: dw $d3dd
1b2d: dw $8a28
1b2f: dw $11f2
1b31: dw $6f59
1b33: dw $0a06
1b35: dw $2a34
1b37: dw $ac79
1b39: dw $a75e
1b3b: dw $c683
1b3d: dw $c139
1b3f: dw $3ab4
1b41: dw $fe3f
1b43: dw $ef4f
1b45: dw $001f
1b47: dw $9930
1b49: dw $284c
1b4b: dw $ed83
1b4d: dw $2f8a
1b4f: dw $662c
1b51: dw $d63f
1b53: dw $b76c
1b55: dw $2249
1b57: dw $65bc
1b59: dw $cffa
1b5b: dw $b102
1b5d: dw $f046
1b5f: dw $d79a
1b61: dw $0fe2
1b63: dw $c511
1b65: dw $f674
1b67: dw $2c7a
1b69: dw $fb8f
1b6b: dw $6a19
1b6d: dw $70e5
1b6f: dw $fc1b
1b71: dw $0af6
1b73: dw $18f2
1b75: dw $1a30
1b77: dw $7f7f
1b79: dw $1b30
1b7b: dw $787d
1b7d: dw $3230
1b7f: dw $4b7f
1b81: dw $84ff
1b83: dw $fc1b
1b85: dw $09fe
1b87: dw $0f35
1b89: dw $7f7f
1b8b: dw $1235
1b8d: dw $7d7d
1b8f: dw $2035
1b91: dw $4b7f
1b93: dw $96ff
1b95: dw $fc1b
1b97: dw $07f6
1b99: dw $1631
1b9b: dw $7f7f
1b9d: dw $1531
1b9f: dw $787d
1ba1: dw $2a31
1ba3: dw $4b7f
1ba5: dw $a8ff
1ba7: dw $fc1b
1ba9: dw $08ee
1bab: dw $14f2
1bad: dw $2d34
1baf: dw $7f7d
1bb1: dw $2b34
1bb3: dw $4b7f
1bb5: dw $b8ff
1bb7: dw $fc1b
1bb9: dw $06e4
1bbb: dw $3730
1bbd: dw $7f7d
1bbf: dw $3430
1bc1: dw $4b7f
1bc3: dw $c6ff
1bc5: dw $fc1b
1bc7: dw $0be4
1bc9: dw $def2
1bcb: dw $2734
1bcd: dw $7f7d
1bcf: dw $2334
1bd1: dw $4b7f
1bd3: dw $d6ff
1bd5: dw $fc1b
1bd7: dw $0dec
1bd9: dw $1e30
1bdb: dw $7d7f
1bdd: dw $0af2
1bdf: dw $1130
1be1: dw $30fd
1be3: dw $ec10
1be5: dw $6b62
1be7: dw $2030
1be9: dw $4e01
1beb: dw $eeff
