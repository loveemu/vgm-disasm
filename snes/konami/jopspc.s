0c27: dw $0c3b
0c29: dw $0c48
0c2b: dw $0c56
0c2d: dw $0c59
0c2f: dw $0cbe
0c31: dw $0cce
0c33: dw $0cd6
0c35: dw $0cde
0c37: dw $0c5c
0c39: dw $0c8c

0c3b: 8f 3f 10  mov   $10,#$3f
0c3e: 8f 00 0e  mov   $0e,#$00
0c41: 22 1f     set1  $1f
0c43: e8 05     mov   a,#$05
0c45: 5f e6 0e  jmp   $0ee6

0c48: 32 1f     clr1  $1f
0c4a: e4 0f     mov   a,$0f
0c4c: 78 96 d0  cmp   $d0,#$96
0c4f: 90 02     bcc   $0c53
0c51: 28 1f     and   a,#$1f
0c53: c4 0e     mov   $0e,a
0c55: 6f        ret

0c56: 02 1f     set0  $1f
0c58: 6f        ret

0c59: 12 1f     clr0  $1f
0c5b: 6f        ret

0c5c: 3f 96 1a  call  $1a96
0c5f: e8 00     mov   a,#$00
0c61: c4 1c     mov   $1c,a
0c63: c4 1e     mov   $1e,a
0c65: c4 04     mov   $04,a
0c67: 8f 80 05  mov   $05,#$80
0c6a: 8d 10     mov   y,#$10
0c6c: c3 1f 07  bbs6  $1f,$0c76
0c6f: f6 8f 01  mov   a,$018f+y
0c72: 28 01     and   a,#$01
0c74: d0 0c     bne   $0c82
0c76: 09 05 04  or    ($04),($05)
0c79: d6 ce 00  mov   $00ce+y,a
0c7c: d6 9f 01  mov   $019f+y,a
0c7f: d6 8e 01  mov   $018e+y,a
0c82: 4b 05     lsr   $05
0c84: dc        dec   y
0c85: fe e5     dbnz  y,$0c6c
0c87: e4 04     mov   a,$04
0c89: 5f 72 10  jmp   $1072

0c8c: e8 00     mov   a,#$00
0c8e: fd        mov   y,a
0c8f: c4 25     mov   $25,a
0c91: e8 7f     mov   a,#$7f
0c93: 8f 0c f2  mov   $f2,#$0c
0c96: c4 f3     mov   $f3,a
0c98: 8f 1c f2  mov   $f2,#$1c
0c9b: c4 f3     mov   $f3,a
0c9d: 3f 96 1a  call  $1a96
0ca0: e8 00     mov   a,#$00
0ca2: c4 1c     mov   $1c,a
0ca4: c4 1e     mov   $1e,a
0ca6: c4 27     mov   $27,a
0ca8: 38 7d 1f  and   $1f,#$7d
0cab: 8d 10     mov   y,#$10
0cad: d6 ce 00  mov   $00ce+y,a
0cb0: d6 9f 01  mov   $019f+y,a
0cb3: d6 8e 01  mov   $018e+y,a
0cb6: dc        dec   y
0cb7: fe f4     dbnz  y,$0cad
0cb9: e8 ff     mov   a,#$ff
0cbb: 5f 72 10  jmp   $1072

0cbe: c2 1f     set6  $1f
0cc0: e4 1c     mov   a,$1c
0cc2: d0 09     bne   $0ccd
0cc4: e8 01     mov   a,#$01
0cc6: c4 1e     mov   $1e,a
0cc8: c4 1d     mov   $1d,a
0cca: 8f ff 1c  mov   $1c,#$ff
0ccd: 6f        ret

0cce: e4 1c     mov   a,$1c
0cd0: d0 fb     bne   $0ccd
0cd2: e8 02     mov   a,#$02
0cd4: 2f f0     bra   $0cc6
0cd6: e4 1c     mov   a,$1c
0cd8: d0 f3     bne   $0ccd
0cda: e8 08     mov   a,#$08
0cdc: 2f e8     bra   $0cc6
0cde: e4 1c     mov   a,$1c
0ce0: d0 eb     bne   $0ccd
0ce2: e8 0d     mov   a,#$0d
0ce4: 2f e0     bra   $0cc6
0ce6: 80        setc
0ce7: a8 e6     sbc   a,#$e6
0ce9: 90 e2     bcc   $0ccd
0ceb: 1c        asl   a
0cec: 5d        mov   x,a
0ced: 1f 27 0c  jmp   ($0c27+x)

0cf0: 68 bc     cmp   a,#$bc
0cf2: b0 07     bcs   $0cfb
0cf4: 68 03     cmp   a,#$03
0cf6: 90 d5     bcc   $0ccd
0cf8: 5f e6 0e  jmp   $0ee6

0cfb: 68 f0     cmp   a,#$f0
0cfd: 90 e7     bcc   $0ce6
0cff: 68 ff     cmp   a,#$ff
0d01: d0 03     bne   $0d06
0d03: 5f 6a 0e  jmp   $0e6a

0d06: 28 0f     and   a,#$0f
0d08: 1c        asl   a
0d09: fd        mov   y,a
0d0a: f6 09 0c  mov   a,$0c09+y
0d0d: c4 2e     mov   $2e,a
0d0f: f6 0a 0c  mov   a,$0c0a+y
0d12: c4 2f     mov   $2f,a
0d14: 5f a5 0e  jmp   $0ea5

0d17: ba 2c     movw  ya,$2c
0d19: cd 43     mov   x,#$43
0d1b: 5a 28     cmpw  ya,$28
0d1d: d0 04     bne   $0d23
0d1f: e2 27     set7  $27
0d21: 2f 07     bra   $0d2a
0d23: 5a 2a     cmpw  ya,$2a
0d25: d0 51     bne   $0d78
0d27: c2 27     set6  $27
0d29: 3d        inc   x
0d2a: d8 09     mov   $09,x
0d2c: da 0c     movw  $0c,ya
0d2e: 8f 1d 06  mov   $06,#$1d
0d31: cd 0a     mov   x,#$0a
0d33: 8f 20 11  mov   $11,#$20
0d36: ad 01     cmp   y,#$01
0d38: d0 04     bne   $0d3e
0d3a: 68 2b     cmp   a,#$2b
0d3c: f0 11     beq   $0d4f
0d3e: ad 01     cmp   y,#$01
0d40: d0 04     bne   $0d46
0d42: 68 33     cmp   a,#$33
0d44: f0 09     beq   $0d4f
0d46: 7e da     cmp   y,$da
0d48: d0 05     bne   $0d4f
0d4a: 65 ab 01  cmp   a,$01ab
0d4d: f0 29     beq   $0d78
0d4f: 8f 01 07  mov   $07,#$01
0d52: 8f 01 08  mov   $08,#$01
0d55: dd        mov   a,y
0d56: 1c        asl   a
0d57: fd        mov   y,a
0d58: f6 03 0c  mov   a,$0c03+y
0d5b: c4 04     mov   $04,a
0d5d: f6 04 0c  mov   a,$0c04+y
0d60: c4 05     mov   $05,a
0d62: e4 0c     mov   a,$0c
0d64: 8d 02     mov   y,#$02
0d66: cf        mul   ya
0d67: 7a 04     addw  ya,$04
0d69: da 0a     movw  $0a,ya
0d6b: 5f 0a 10  jmp   $100a

0d6e: 28 03     and   a,#$03
0d70: bc        inc   a
0d71: c4 2d     mov   $2d,a
0d73: e2 1f     set7  $1f
0d75: 8f ff f7  mov   $f7,#$ff
0d78: 6f        ret

0d79: eb f5     mov   y,$f5
0d7b: d0 fc     bne   $0d79
0d7d: cb f5     mov   $f5,y
0d7f: fa f6 2c  mov   ($2c),($f6)
0d82: 68 ff     cmp   a,#$ff
0d84: d0 16     bne   $0d9c
0d86: c4 25     mov   $25,a
0d88: 8f 00 26  mov   $26,#$00
0d8b: 3f 5f 0c  call  $0c5f
0d8e: 8f 5c f2  mov   $f2,#$5c
0d91: c4 f3     mov   $f3,a
0d93: 8f 00 2e  mov   $2e,#$00
0d96: 8f 42 2f  mov   $2f,#$42
0d99: 5f 66 0e  jmp   $0e66

0d9c: 68 f8     cmp   a,#$f8
0d9e: b0 d8     bcs   $0d78
0da0: 5c        lsr   a
0da1: b0 cb     bcs   $0d6e
0da3: 28 03     and   a,#$03
0da5: bc        inc   a
0da6: c4 2d     mov   $2d,a
0da8: 8f 01 25  mov   $25,#$01
0dab: 78 02 2d  cmp   $2d,#$02
0dae: d0 10     bne   $0dc0
0db0: 78 19 2c  cmp   $2c,#$19
0db3: 90 0b     bcc   $0dc0
0db5: 8f 00 26  mov   $26,#$00
0db8: 8f bf 2e  mov   $2e,#$bf
0dbb: 8f bd 2f  mov   $2f,#$bd
0dbe: 2f 3f     bra   $0dff
0dc0: 42 1f     set2  $1f
0dc2: 78 01 2d  cmp   $2d,#$01
0dc5: d0 05     bne   $0dcc
0dc7: 78 2a 2c  cmp   $2c,#$2a
0dca: 90 14     bcc   $0de0
0dcc: 52 1f     clr2  $1f
0dce: 78 03 2d  cmp   $2d,#$03
0dd1: d0 05     bne   $0dd8
0dd3: 78 f7 2c  cmp   $2c,#$f7
0dd6: b0 08     bcs   $0de0
0dd8: 8f 00 2a  mov   $2a,#$00
0ddb: 8f 00 2b  mov   $2b,#$00
0dde: 2f 21     bra   $0e01
0de0: ba 2c     movw  ya,$2c
0de2: 5a 28     cmpw  ya,$28
0de4: f0 04     beq   $0dea
0de6: 5a 2a     cmpw  ya,$2a
0de8: d0 04     bne   $0dee
0dea: e2 1f     set7  $1f
0dec: 2f 08     bra   $0df6
0dee: e4 27     mov   a,$27
0df0: 1c        asl   a
0df1: 90 0e     bcc   $0e01
0df3: 1c        asl   a
0df4: 90 1e     bcc   $0e14
0df6: 8f 80 26  mov   $26,#$80
0df9: 8f fe 2e  mov   $2e,#$fe
0dfc: 8f d6 2f  mov   $2f,#$d6
0dff: 2f 65     bra   $0e66
0e01: ba 2c     movw  ya,$2c
0e03: da 28     movw  $28,ya
0e05: e2 27     set7  $27
0e07: 8f fe 2e  mov   $2e,#$fe
0e0a: 8f d6 2f  mov   $2f,#$d6
0e0d: cd 02     mov   x,#$02
0e0f: 8f d7 05  mov   $05,#$d7
0e12: 2f 11     bra   $0e25
0e14: ba 2c     movw  ya,$2c
0e16: da 2a     movw  $2a,ya
0e18: c2 27     set6  $27
0e1a: 8f fe 2e  mov   $2e,#$fe
0e1d: 8f e9 2f  mov   $2f,#$e9
0e20: cd 06     mov   x,#$06
0e22: 8f ea 05  mov   $05,#$ea
0e25: 8f 3c 06  mov   $06,#$3c
0e28: 8f 01 07  mov   $07,#$01
0e2b: 5a 06     cmpw  ya,$06
0e2d: b0 2a     bcs   $0e59
0e2f: 8f 00 04  mov   $04,#$00
0e32: dc        dec   y
0e33: cb 06     mov   $06,y
0e35: 8f 00 07  mov   $07,#$00
0e38: 9a 06     subw  ya,$06
0e3a: da 06     movw  $06,ya
0e3c: 7a 06     addw  ya,$06
0e3e: 8f 12 06  mov   $06,#$12
0e41: 8f 05 07  mov   $07,#$05
0e44: 7a 06     addw  ya,$06
0e46: da 06     movw  $06,ya
0e48: 8d 01     mov   y,#$01
0e4a: f7 06     mov   a,($06)+y
0e4c: 2d        push  a
0e4d: dc        dec   y
0e4e: f7 06     mov   a,($06)+y
0e50: ee        pop   y
0e51: 7a 04     addw  ya,$04
0e53: d5 0c 05  mov   $050c+x,a
0e56: dd        mov   a,y
0e57: 2f 07     bra   $0e60
0e59: e8 00     mov   a,#$00
0e5b: d5 0c 05  mov   $050c+x,a
0e5e: e8 d7     mov   a,#$d7
0e60: d5 0d 05  mov   $050d+x,a
0e63: 8f 06 26  mov   $26,#$06
0e66: 8f ff f7  mov   $f7,#$ff
0e69: 6f        ret

0e6a: e8 cc     mov   a,#$cc
0e6c: 64 f4     cmp   a,$f4
0e6e: d0 fa     bne   $0e6a
0e70: 2f 1f     bra   $0e91
0e72: eb f4     mov   y,$f4
0e74: d0 fc     bne   $0e72
0e76: 7e f4     cmp   y,$f4
0e78: 30 13     bmi   $0e8d
0e7a: d0 fa     bne   $0e76
0e7c: 7e f4     cmp   y,$f4
0e7e: d0 f6     bne   $0e76
0e80: e4 f5     mov   a,$f5
0e82: cb f4     mov   $f4,y
0e84: d7 04     mov   ($04)+y,a
0e86: fc        inc   y
0e87: d0 ed     bne   $0e76
0e89: ab 05     inc   $05
0e8b: 2f e9     bra   $0e76
0e8d: 7e f4     cmp   y,$f4
0e8f: 10 e5     bpl   $0e76
0e91: e4 f6     mov   a,$f6
0e93: eb f7     mov   y,$f7
0e95: da 04     movw  $04,ya
0e97: e4 f4     mov   a,$f4
0e99: eb f5     mov   y,$f5
0e9b: c4 f4     mov   $f4,a
0e9d: dd        mov   a,y
0e9e: 5d        mov   x,a
0e9f: d0 d1     bne   $0e72
0ea1: 8f 33 f1  mov   $f1,#$33
0ea4: 6f        ret

0ea5: e4 f5     mov   a,$f5
0ea7: 68 cc     cmp   a,#$cc
0ea9: d0 fa     bne   $0ea5
0eab: 64 f5     cmp   a,$f5
0ead: d0 f6     bne   $0ea5
0eaf: c4 f5     mov   $f5,a
0eb1: eb f5     mov   y,$f5
0eb3: d0 fc     bne   $0eb1
0eb5: 7e f5     cmp   y,$f5
0eb7: d0 f6     bne   $0eaf
0eb9: 2f 0a     bra   $0ec5
0ebb: 7e f5     cmp   y,$f5
0ebd: 30 18     bmi   $0ed7
0ebf: d0 fa     bne   $0ebb
0ec1: 7e f5     cmp   y,$f5
0ec3: d0 f6     bne   $0ebb
0ec5: e4 f6     mov   a,$f6
0ec7: d7 2e     mov   ($2e)+y,a
0ec9: e4 f7     mov   a,$f7
0ecb: cb f5     mov   $f5,y
0ecd: fc        inc   y
0ece: d7 2e     mov   ($2e)+y,a
0ed0: fc        inc   y
0ed1: d0 e8     bne   $0ebb
0ed3: ab 2f     inc   $2f
0ed5: 2f e4     bra   $0ebb
0ed7: 7e f5     cmp   y,$f5
0ed9: 10 e0     bpl   $0ebb
0edb: e4 f5     mov   a,$f5
0edd: c4 f5     mov   $f5,a
0edf: e4 f5     mov   a,$f5
0ee1: d0 fc     bne   $0edf
0ee3: c4 f5     mov   $f5,a
0ee5: 6f        ret

0ee6: 68 05     cmp   a,#$05
0ee8: 90 fb     bcc   $0ee5
0eea: c4 0d     mov   $0d,a
0eec: 8f 00 0c  mov   $0c,#$00
0eef: 68 8d     cmp   a,#$8d
0ef1: 90 05     bcc   $0ef8
0ef3: 72 1f     clr3  $1f
0ef5: 5f b9 0f  jmp   $0fb9

0ef8: 63 1f ea  bbs3  $1f,$0ee5
0efb: 68 3f     cmp   a,#$3f
0efd: d0 02     bne   $0f01
0eff: 62 1f     set3  $1f
0f01: 8f e9 04  mov   $04,#$e9
0f04: 8f 09 05  mov   $05,#$09
0f07: 8d 03     mov   y,#$03
0f09: cf        mul   ya
0f0a: 7a 04     addw  ya,$04
0f0c: da 04     movw  $04,ya
0f0e: 8d 00     mov   y,#$00
0f10: f7 04     mov   a,($04)+y
0f12: 9f        xcn   a
0f13: 5c        lsr   a
0f14: 28 07     and   a,#$07
0f16: 5d        mov   x,a
0f17: bc        inc   a
0f18: c4 07     mov   $07,a
0f1a: f5 85 10  mov   a,$1085+x
0f1d: c4 11     mov   $11,a
0f1f: f7 04     mov   a,($04)+y
0f21: 28 1f     and   a,#$1f
0f23: c4 06     mov   $06,a
0f25: cd 0c     mov   x,#$0c
0f27: 78 02 07  cmp   $07,#$02
0f2a: f0 5e     beq   $0f8a
0f2c: b0 77     bcs   $0fa5
0f2e: e4 0d     mov   a,$0d
0f30: 68 1d     cmp   a,#$1d
0f32: d0 08     bne   $0f3c
0f34: 64 de     cmp   a,$de
0f36: f0 51     beq   $0f89
0f38: 64 dc     cmp   a,$dc
0f3a: f0 4d     beq   $0f89
0f3c: 68 8a     cmp   a,#$8a
0f3e: d0 12     bne   $0f52
0f40: 64 de     cmp   a,$de
0f42: f0 45     beq   $0f89
0f44: 64 dc     cmp   a,$dc
0f46: f0 41     beq   $0f89
0f48: e8 1e     mov   a,#$1e
0f4a: 64 de     cmp   a,$de
0f4c: f0 3b     beq   $0f89
0f4e: 64 dc     cmp   a,$dc
0f50: f0 37     beq   $0f89
0f52: 68 1e     cmp   a,#$1e
0f54: d0 12     bne   $0f68
0f56: 64 de     cmp   a,$de
0f58: f0 12     beq   $0f6c
0f5a: 64 dc     cmp   a,$dc
0f5c: f0 14     beq   $0f72
0f5e: e8 8a     mov   a,#$8a
0f60: 64 de     cmp   a,$de
0f62: f0 08     beq   $0f6c
0f64: 64 dc     cmp   a,$dc
0f66: f0 0a     beq   $0f72
0f68: 64 de     cmp   a,$de
0f6a: d0 06     bne   $0f72
0f6c: cd 0e     mov   x,#$0e
0f6e: 0b 11     asl   $11
0f70: 2f 24     bra   $0f96
0f72: 64 dc     cmp   a,$dc
0f74: f0 20     beq   $0f96
0f76: f5 90 01  mov   a,$0190+x
0f79: 75 92 01  cmp   a,$0192+x
0f7c: 90 04     bcc   $0f82
0f7e: cd 0e     mov   x,#$0e
0f80: 0b 11     asl   $11
0f82: e4 06     mov   a,$06
0f84: 75 90 01  cmp   a,$0190+x
0f87: b0 0d     bcs   $0f96
0f89: 6f        ret

0f8a: e4 06     mov   a,$06
0f8c: 75 90 01  cmp   a,$0190+x
0f8f: 90 f8     bcc   $0f89
0f91: 75 92 01  cmp   a,$0192+x
0f94: 90 f3     bcc   $0f89
0f96: fc        inc   y
0f97: f7 04     mov   a,($04)+y
0f99: c4 0a     mov   $0a,a
0f9b: fc        inc   y
0f9c: f7 04     mov   a,($04)+y
0f9e: c4 0b     mov   $0b,a
0fa0: 8f 01 08  mov   $08,#$01
0fa3: 2f 65     bra   $100a
0fa5: e4 06     mov   a,$06
0fa7: 65 90 01  cmp   a,$0190
0faa: 90 dd     bcc   $0f89
0fac: 8f 00 1c  mov   $1c,#$00
0faf: 8f 00 1e  mov   $1e,#$00
0fb2: 3f 96 1a  call  $1a96
0fb5: cd 00     mov   x,#$00
0fb7: 2f dd     bra   $0f96
0fb9: d2 1f     clr6  $1f
0fbb: a8 8d     sbc   a,#$8d
0fbd: fd        mov   y,a
0fbe: f6 90 0b  mov   a,$0b90+y
0fc1: c5 e0 01  mov   $01e0,a
0fc4: 3f 96 1a  call  $1a96
0fc7: e4 0d     mov   a,$0d
0fc9: 68 95     cmp   a,#$95
0fcb: 90 24     bcc   $0ff1
0fcd: 68 95     cmp   a,#$95
0fcf: 90 1a     bcc   $0feb
0fd1: 68 96     cmp   a,#$96
0fd3: 90 10     bcc   $0fe5
0fd5: 68 bc     cmp   a,#$bc
0fd7: 90 06     bcc   $0fdf
0fd9: e8 04     mov   a,#$04
0fdb: 8d 0f     mov   y,#$0f
0fdd: 2f 16     bra   $0ff5
0fdf: e8 05     mov   a,#$05
0fe1: 8d 1f     mov   y,#$1f
0fe3: 2f 10     bra   $0ff5
0fe5: e8 06     mov   a,#$06
0fe7: 8d 3f     mov   y,#$3f
0fe9: 2f 0a     bra   $0ff5
0feb: e8 07     mov   a,#$07
0fed: 8d 7f     mov   y,#$7f
0fef: 2f 04     bra   $0ff5
0ff1: e8 08     mov   a,#$08
0ff3: 8d ff     mov   y,#$ff
0ff5: c4 07     mov   $07,a
0ff7: cb 11     mov   $11,y
0ff9: 8f 1e 06  mov   $06,#$1e
0ffc: 8f 00 0a  mov   $0a,#$00
0fff: 8f 42 0b  mov   $0b,#$42
1002: cd 00     mov   x,#$00
1004: d8 1c     mov   $1c,x
1006: d8 1e     mov   $1e,x
1008: d8 08     mov   $08,x
100a: 8d 00     mov   y,#$00
100c: f7 0a     mov   a,($0a)+y
100e: d4 30     mov   $30+x,a
1010: fc        inc   y
1011: f7 0a     mov   a,($0a)+y
1013: d4 31     mov   $31+x,a
1015: e8 40     mov   a,#$40
1017: d4 41     mov   $41+x,a
1019: e8 c0     mov   a,#$c0
101b: d4 40     mov   $40+x,a
101d: e8 00     mov   a,#$00
101f: d4 50     mov   $50+x,a
1021: d4 51     mov   $51+x,a
1023: d5 10 01  mov   $0110+x,a
1026: d5 11 01  mov   $0111+x,a
1029: d5 20 01  mov   $0120+x,a
102c: d5 21 01  mov   $0121+x,a
102f: d5 30 01  mov   $0130+x,a
1032: d5 31 01  mov   $0131+x,a
1035: d5 40 01  mov   $0140+x,a
1038: d5 41 01  mov   $0141+x,a
103b: d5 80 02  mov   $0280+x,a
103e: d5 81 02  mov   $0281+x,a
1041: d5 21 02  mov   $0221+x,a
1044: d4 90     mov   $90+x,a
1046: d5 20 02  mov   $0220+x,a
1049: d5 d1 01  mov   $01d1+x,a
104c: d5 c0 01  mov   $01c0+x,a
104f: d5 31 02  mov   $0231+x,a
1052: bc        inc   a
1053: d4 60     mov   $60+x,a
1055: e4 0d     mov   a,$0d
1057: d4 d0     mov   $d0+x,a
1059: e4 0c     mov   a,$0c
105b: d5 a1 01  mov   $01a1+x,a
105e: e4 08     mov   a,$08
1060: d5 91 01  mov   $0191+x,a
1063: e4 06     mov   a,$06
1065: d5 90 01  mov   $0190+x,a
1068: e4 09     mov   a,$09
106a: d5 a0 01  mov   $01a0+x,a
106d: 6e 07 0f  dbnz  $07,$107f
1070: e4 11     mov   a,$11
1072: 0e 10 00  tset1 $0010
1075: 4e 0e 00  tclr1 $000e
1078: 4e 0f 00  tclr1 $000f
107b: 0e 1b 00  tset1 $001b
107e: 6f        ret

107f: 3d        inc   x
1080: 3d        inc   x
1081: fc        inc   y
1082: 5f 0c 10  jmp   $100c

1085: 40        setp
1086: c0        di
1087: e0        clrv
1088: 0f        brk
1089: 1f 3f 7f  jmp   ($7f3f+x)

108c: ff        stop
108d: e4 fd     mov   a,$fd
108f: f0 fc     beq   $108d
1091: 03 24 16  bbs0  $24,$10aa
1094: e4 19     mov   a,$19
1096: d0 12     bne   $10aa
1098: e4 f4     mov   a,$f4
109a: 64 f4     cmp   a,$f4
109c: d0 fa     bne   $1098
109e: 68 00     cmp   a,#$00
10a0: f0 08     beq   $10aa
10a2: c4 f4     mov   $f4,a
10a4: 8f 11 f1  mov   $f1,#$11
10a7: 3f f0 0c  call  $0cf0
10aa: f3 1f 0d  bbc7  $1f,$10ba
10ad: f2 1f     clr7  $1f
10af: 3f 17 0d  call  $0d17
10b2: 53 1f 05  bbc2  $1f,$10ba
10b5: e8 10     mov   a,#$10
10b7: 3f e6 0e  call  $0ee6
10ba: 8f 5c f2  mov   $f2,#$5c
10bd: fa 10 f3  mov   ($f3),($10)
10c0: e4 25     mov   a,$25
10c2: d0 1c     bne   $10e0
10c4: 8f f7 04  mov   $04,#$f7
10c7: 8f 03 05  mov   $05,#$03
10ca: e5 ab 01  mov   a,$01ab
10cd: f0 06     beq   $10d5
10cf: eb da     mov   y,$da
10d1: 5a 04     cmpw  ya,$04
10d3: 90 0b     bcc   $10e0
10d5: e5 ad 01  mov   a,$01ad
10d8: f0 0a     beq   $10e4
10da: eb dc     mov   y,$dc
10dc: 5a 04     cmpw  ya,$04
10de: b0 04     bcs   $10e4
10e0: e8 ff     mov   a,#$ff
10e2: 2f 32     bra   $1116
10e4: e4 28     mov   a,$28
10e6: f0 12     beq   $10fa
10e8: eb da     mov   y,$da
10ea: e5 ab 01  mov   a,$01ab
10ed: 5a 28     cmpw  ya,$28
10ef: f0 0b     beq   $10fc
10f1: eb dc     mov   y,$dc
10f3: e5 ad 01  mov   a,$01ad
10f6: 5a 28     cmpw  ya,$28
10f8: f0 02     beq   $10fc
10fa: f2 27     clr7  $27
10fc: e4 2a     mov   a,$2a
10fe: f0 12     beq   $1112
1100: eb da     mov   y,$da
1102: e5 ab 01  mov   a,$01ab
1105: 5a 2a     cmpw  ya,$2a
1107: f0 0b     beq   $1114
1109: eb dc     mov   y,$dc
110b: e5 ad 01  mov   a,$01ad
110e: 5a 2a     cmpw  ya,$2a
1110: f0 02     beq   $1114
1112: d2 27     clr6  $27
1114: e4 27     mov   a,$27
1116: c4 f7     mov   $f7,a
1118: e8 10     mov   a,#$10
111a: 9c        dec   a
111b: d0 fd     bne   $111a
111d: 8f 2d f2  mov   $f2,#$2d
1120: c4 f3     mov   $f3,a
1122: 8f 3d f2  mov   $f2,#$3d
1125: c4 f3     mov   $f3,a
1127: e4 19     mov   a,$19
1129: f0 04     beq   $112f
112b: 8b 19     dec   $19
112d: 2f 20     bra   $114f
112f: 8f 6c f2  mov   $f2,#$6c
1132: fa 13 f3  mov   ($f3),($13)
1135: e4 1a     mov   a,$1a
1137: f0 16     beq   $114f
1139: 8b 1a     dec   $1a
113b: d0 12     bne   $114f
113d: 8f 2c f2  mov   $f2,#$2c
1140: fa 15 f3  mov   ($f3),($15)
1143: 8f 3c f2  mov   $f2,#$3c
1146: fa 16 f3  mov   ($f3),($16)
1149: 8f 0d f2  mov   $f2,#$0d
114c: fa 17 f3  mov   ($f3),($17)
114f: e8 00     mov   a,#$00
1151: 8f 5c f2  mov   $f2,#$5c
1154: c4 f3     mov   $f3,a
1156: c4 10     mov   $10,a
1158: 8f 4c f2  mov   $f2,#$4c
115b: fa 0e f3  mov   ($f3),($0e)
115e: c4 0e     mov   $0e,a
1160: 33 1f 07  bbc1  $1f,$116a
1163: cd 0c     mov   x,#$0c
1165: 8f 40 11  mov   $11,#$40
1168: 2f 32     bra   $119c
116a: ab 24     inc   $24
116c: e4 1c     mov   a,$1c
116e: f0 27     beq   $1197
1170: 8b 1d     dec   $1d
1172: d0 23     bne   $1197
1174: e4 1e     mov   a,$1e
1176: 28 0f     and   a,#$0f
1178: c4 1d     mov   $1d,a
117a: 8b 1c     dec   $1c
117c: f0 04     beq   $1182
117e: 8b 1c     dec   $1c
1180: d0 15     bne   $1197
1182: 78 8d d0  cmp   $d0,#$8d
1185: f0 10     beq   $1197
1187: d3 1e 02  bbc6  $1e,$118c
118a: 2f 0b     bra   $1197
118c: f3 1e 05  bbc7  $1e,$1194
118f: e8 00     mov   a,#$00
1191: c5 99 01  mov   $0199,a
1194: 3f 5c 0c  call  $0c5c
1197: 8f 01 11  mov   $11,#$01
119a: cd 00     mov   x,#$00
119c: f4 d0     mov   a,$d0+x
119e: f0 4c     beq   $11ec
11a0: e4 11     mov   a,$11
11a2: 24 1b     and   a,$1b
11a4: d0 46     bne   $11ec
11a6: f5 91 01  mov   a,$0191+x
11a9: 5c        lsr   a
11aa: b0 08     bcs   $11b4
11ac: 7d        mov   a,x
11ad: 5c        lsr   a
11ae: 44 24     eor   a,$24
11b0: 28 01     and   a,#$01
11b2: d0 38     bne   $11ec
11b4: d8 22     mov   $22,x
11b6: 7d        mov   a,x
11b7: 1c        asl   a
11b8: 1c        asl   a
11b9: 1c        asl   a
11ba: c4 23     mov   $23,a
11bc: f5 91 01  mov   a,$0191+x
11bf: c4 20     mov   $20,a
11c1: f4 40     mov   a,$40+x
11c3: 60        clrc
11c4: 94 41     adc   a,$41+x
11c6: d4 40     mov   $40+x,a
11c8: 90 1a     bcc   $11e4
11ca: 9b 60     dec   $60+x
11cc: f0 05     beq   $11d3
11ce: 3f 6d 13  call  $136d
11d1: 2f 14     bra   $11e7
11d3: 3f 12 15  call  $1512
11d6: a3 20 07  bbs5  $20,$11e0
11d9: e2 21     set7  $21
11db: 3f 2a 14  call  $142a
11de: 2f 07     bra   $11e7
11e0: b2 20     clr5  $20
11e2: 2f 03     bra   $11e7
11e4: 3f 21 13  call  $1321
11e7: e4 20     mov   a,$20
11e9: d5 91 01  mov   $0191+x,a
11ec: e4 25     mov   a,$25
11ee: f0 20     beq   $1210
11f0: e4 f5     mov   a,$f5
11f2: 68 cc     cmp   a,#$cc
11f4: d0 1a     bne   $1210
11f6: 64 f5     cmp   a,$f5
11f8: d0 16     bne   $1210
11fa: 4d        push  x
11fb: e3 25 06  bbs7  $25,$1204
11fe: 3f a1 12  call  $12a1
1201: ce        pop   x
1202: 2f 1d     bra   $1221
1204: fa 11 12  mov   ($12),($11)
1207: 3f 54 12  call  $1254
120a: fa 12 11  mov   ($11),($12)
120d: ce        pop   x
120e: 2f 11     bra   $1221
1210: e4 f5     mov   a,$f5
1212: 68 f0     cmp   a,#$f0
1214: 90 0b     bcc   $1221
1216: 64 f5     cmp   a,$f5
1218: d0 07     bne   $1221
121a: c4 f5     mov   $f5,a
121c: 4d        push  x
121d: 3f 79 0d  call  $0d79
1220: ce        pop   x
1221: 3d        inc   x
1222: 3d        inc   x
1223: 0b 11     asl   $11
1225: f0 03     beq   $122a
1227: 5f 9c 11  jmp   $119c

122a: 8f 00 1b  mov   $1b,#$00
122d: e4 25     mov   a,$25
122f: d0 03     bne   $1234
1231: 5f 8d 10  jmp   $108d

1234: e4 f5     mov   a,$f5
1236: 68 cc     cmp   a,#$cc
1238: f0 07     beq   $1241
123a: e4 fd     mov   a,$fd
123c: f0 f6     beq   $1234
123e: 5f 91 10  jmp   $1091

1241: 64 f5     cmp   a,$f5
1243: d0 ef     bne   $1234
1245: e3 25 06  bbs7  $25,$124e
1248: 3f a1 12  call  $12a1
124b: 5f 8d 10  jmp   $108d

124e: 3f 54 12  call  $1254
1251: 5f 8d 10  jmp   $108d

1254: c4 f5     mov   $f5,a
1256: eb f5     mov   y,$f5
1258: d0 fc     bne   $1256
125a: 7e f5     cmp   y,$f5
125c: d0 f6     bne   $1254
125e: 2f 0a     bra   $126a
1260: 7e f5     cmp   y,$f5
1262: 30 25     bmi   $1289
1264: d0 fa     bne   $1260
1266: 7e f5     cmp   y,$f5
1268: d0 f6     bne   $1260
126a: e4 f6     mov   a,$f6
126c: 64 f6     cmp   a,$f6
126e: d0 fa     bne   $126a
1270: d7 2e     mov   ($2e)+y,a
1272: e4 f7     mov   a,$f7
1274: 64 f7     cmp   a,$f7
1276: d0 fa     bne   $1272
1278: cb f5     mov   $f5,y
127a: fc        inc   y
127b: d7 2e     mov   ($2e)+y,a
127d: fc        inc   y
127e: d0 e0     bne   $1260
1280: ab 2f     inc   $2f
1282: e4 f5     mov   a,$f5
1284: d0 fc     bne   $1282
1286: c4 f5     mov   $f5,a
1288: 6f        ret

1289: 7e f5     cmp   y,$f5
128b: 10 d3     bpl   $1260
128d: e4 f5     mov   a,$f5
128f: c4 f5     mov   $f5,a
1291: e4 f5     mov   a,$f5
1293: d0 fc     bne   $1291
1295: c4 f5     mov   $f5,a
1297: c4 25     mov   $25,a
1299: 8f 00 f7  mov   $f7,#$00
129c: e4 2c     mov   a,$2c
129e: 5f e6 0e  jmp   $0ee6

12a1: c4 f5     mov   $f5,a
12a3: eb f4     mov   y,$f4
12a5: ad 02     cmp   y,#$02
12a7: d0 fa     bne   $12a3
12a9: 7e f4     cmp   y,$f4
12ab: d0 f4     bne   $12a1
12ad: 8f 00 f5  mov   $f5,#$00
12b0: f3 26 08  bbc7  $26,$12bb
12b3: 2f 41     bra   $12f6
12b5: 7e f4     cmp   y,$f4
12b7: 30 4c     bmi   $1305
12b9: d0 fa     bne   $12b5
12bb: e4 f5     mov   a,$f5
12bd: d7 2e     mov   ($2e)+y,a
12bf: fc        inc   y
12c0: e4 f6     mov   a,$f6
12c2: d7 2e     mov   ($2e)+y,a
12c4: e4 f7     mov   a,$f7
12c6: dc        dec   y
12c7: cb f4     mov   $f4,y
12c9: fc        inc   y
12ca: fc        inc   y
12cb: d7 2e     mov   ($2e)+y,a
12cd: fc        inc   y
12ce: 10 e5     bpl   $12b5
12d0: 60        clrc
12d1: 98 7e 2e  adc   $2e,#$7e
12d4: 98 00 2f  adc   $2f,#$00
12d7: e4 f4     mov   a,$f4
12d9: d0 fc     bne   $12d7
12db: c4 f4     mov   $f4,a
12dd: e4 26     mov   a,$26
12df: 30 0e     bmi   $12ef
12e1: f0 0c     beq   $12ef
12e3: 8b 26     dec   $26
12e5: 38 7f 26  and   $26,#$7f
12e8: d0 05     bne   $12ef
12ea: 23 1f 02  bbs1  $1f,$12ef
12ed: e2 1f     set7  $1f
12ef: 6f        ret

12f0: 7e f4     cmp   y,$f4
12f2: 30 0b     bmi   $12ff
12f4: d0 fa     bne   $12f0
12f6: cb f4     mov   $f4,y
12f8: fc        inc   y
12f9: fc        inc   y
12fa: fc        inc   y
12fb: 10 f3     bpl   $12f0
12fd: 2f d1     bra   $12d0
12ff: 7e f4     cmp   y,$f4
1301: 10 ed     bpl   $12f0
1303: 2f 04     bra   $1309
1305: 7e f4     cmp   y,$f4
1307: 10 ac     bpl   $12b5
1309: e4 f4     mov   a,$f4
130b: c4 f4     mov   $f4,a
130d: e4 f4     mov   a,$f4
130f: d0 fc     bne   $130d
1311: c4 f4     mov   $f4,a
1313: c4 25     mov   $25,a
1315: e4 26     mov   a,$26
1317: 30 07     bmi   $1320
1319: f0 05     beq   $1320
131b: 23 1f 02  bbs1  $1f,$1320
131e: e2 1f     set7  $1f
1320: 6f        ret

1321: 12 21     clr0  $21
1323: f4 80     mov   a,$80+x
1325: f0 1d     beq   $1344
1327: 93 20 05  bbc4  $20,$132f
132a: 3f 17 1c  call  $1c17
132d: 2f 13     bra   $1342
132f: f4 81     mov   a,$81+x
1331: d0 11     bne   $1344
1333: f4 e0     mov   a,$e0+x
1335: 60        clrc
1336: 95 b0 02  adc   a,$02b0+x
1339: d4 e0     mov   $e0+x,a
133b: f4 e1     mov   a,$e1+x
133d: 95 b1 02  adc   a,$02b1+x
1340: d4 e1     mov   $e1+x,a
1342: 02 21     set0  $21
1344: fb e1     mov   y,$e1+x
1346: f4 e0     mov   a,$e0+x
1348: da 0a     movw  $0a,ya
134a: f5 20 02  mov   a,$0220+x
134d: f0 07     beq   $1356
134f: f4 a0     mov   a,$a0+x
1351: d0 03     bne   $1356
1353: 3f 5d 1c  call  $1c5d
1356: f5 d1 01  mov   a,$01d1+x
1359: f0 0a     beq   $1365
135b: 60        clrc
135c: 94 d1     adc   a,$d1+x
135e: d4 d1     mov   $d1+x,a
1360: 90 03     bcc   $1365
1362: 5f a1 1c  jmp   $1ca1

1365: 13 21 b8  bbc0  $21,$1320
1368: ba 0a     movw  ya,$0a
136a: 5f af 16  jmp   $16af

136d: 8f 00 21  mov   $21,#$00
1370: f5 31 02  mov   a,$0231+x
1373: 68 7f     cmp   a,#$7f
1375: b0 2f     bcs   $13a6
1377: fd        mov   y,a
1378: f4 60     mov   a,$60+x
137a: 68 01     cmp   a,#$01
137c: f0 25     beq   $13a3
137e: ad 7d     cmp   y,#$7d
1380: b0 24     bcs   $13a6
1382: f4 61     mov   a,$61+x
1384: f0 20     beq   $13a6
1386: 9b 61     dec   $61+x
1388: d0 1c     bne   $13a6
138a: f5 c1 01  mov   a,$01c1+x
138d: 10 14     bpl   $13a3
138f: e8 05     mov   a,#$05
1391: 04 23     or    a,$23
1393: c4 f2     mov   $f2,a
1395: 8f 00 f3  mov   $f3,#$00
1398: bc        inc   a
1399: bc        inc   a
139a: c4 f2     mov   $f2,a
139c: f5 c1 01  mov   a,$01c1+x
139f: c4 f3     mov   $f3,a
13a1: 2f 03     bra   $13a6
13a3: 09 11 10  or    ($10),($11)
13a6: f4 80     mov   a,$80+x
13a8: f0 31     beq   $13db
13aa: 93 20 05  bbc4  $20,$13b2
13ad: 3f 17 1c  call  $1c17
13b0: 2f 27     bra   $13d9
13b2: f4 81     mov   a,$81+x
13b4: f0 04     beq   $13ba
13b6: 9b 81     dec   $81+x
13b8: 2f 21     bra   $13db
13ba: 9b 80     dec   $80+x
13bc: d0 0c     bne   $13ca
13be: f5 c1 02  mov   a,$02c1+x
13c1: d4 e1     mov   $e1+x,a
13c3: f5 c0 02  mov   a,$02c0+x
13c6: d4 e0     mov   $e0+x,a
13c8: 2f 0f     bra   $13d9
13ca: f4 e0     mov   a,$e0+x
13cc: 60        clrc
13cd: 95 b0 02  adc   a,$02b0+x
13d0: d4 e0     mov   $e0+x,a
13d2: f4 e1     mov   a,$e1+x
13d4: 95 b1 02  adc   a,$02b1+x
13d7: d4 e1     mov   $e1+x,a
13d9: 02 21     set0  $21
13db: fb e1     mov   y,$e1+x
13dd: f4 e0     mov   a,$e0+x
13df: da 0a     movw  $0a,ya
13e1: f5 20 02  mov   a,$0220+x
13e4: f0 2b     beq   $1411
13e6: f4 a0     mov   a,$a0+x
13e8: f0 04     beq   $13ee
13ea: 9b a0     dec   $a0+x
13ec: 2f 23     bra   $1411
13ee: f4 a1     mov   a,$a1+x
13f0: f0 1c     beq   $140e
13f2: 9b a1     dec   $a1+x
13f4: d0 05     bne   $13fb
13f6: f5 20 02  mov   a,$0220+x
13f9: 2f 10     bra   $140b
13fb: f5 d0 02  mov   a,$02d0+x
13fe: 60        clrc
13ff: 95 e0 02  adc   a,$02e0+x
1402: d5 d0 02  mov   $02d0+x,a
1405: f5 d1 02  mov   a,$02d1+x
1408: 95 e1 02  adc   a,$02e1+x
140b: d5 d1 02  mov   $02d1+x,a
140e: 3f 5d 1c  call  $1c5d
1411: f5 d1 01  mov   a,$01d1+x
1414: f0 0c     beq   $1422
1416: 60        clrc
1417: 94 d1     adc   a,$d1+x
1419: d4 d1     mov   $d1+x,a
141b: 90 05     bcc   $1422
141d: 3f a1 1c  call  $1ca1
1420: 2f 08     bra   $142a
1422: 13 21 05  bbc0  $21,$142a
1425: ba 0a     movw  ya,$0a
1427: 3f af 16  call  $16af
142a: f4 70     mov   a,$70+x
142c: f0 1e     beq   $144c
142e: e2 21     set7  $21
1430: c4 04     mov   $04,a
1432: f5 01 02  mov   a,$0201+x
1435: c4 05     mov   $05,a
1437: f5 a1 02  mov   a,$02a1+x
143a: fd        mov   y,a
143b: f5 a0 02  mov   a,$02a0+x
143e: 3f e8 1b  call  $1be8
1441: d5 a0 02  mov   $02a0+x,a
1444: dd        mov   a,y
1445: d5 a1 02  mov   $02a1+x,a
1448: e4 04     mov   a,$04
144a: d4 70     mov   $70+x,a
144c: f5 c0 01  mov   a,$01c0+x
144f: f0 19     beq   $146a
1451: c4 04     mov   $04,a
1453: f5 50 02  mov   a,$0250+x
1456: c4 05     mov   $05,a
1458: fb 41     mov   y,$41+x
145a: f5 51 02  mov   a,$0251+x
145d: 3f e8 1b  call  $1be8
1460: d5 51 02  mov   $0251+x,a
1463: db 41     mov   $41+x,y
1465: e4 04     mov   a,$04
1467: d5 c0 01  mov   $01c0+x,a
146a: f4 71     mov   a,$71+x
146c: f0 1e     beq   $148c
146e: e2 21     set7  $21
1470: c4 04     mov   $04,a
1472: f5 00 02  mov   a,$0200+x
1475: c4 05     mov   $05,a
1477: f5 91 02  mov   a,$0291+x
147a: fd        mov   y,a
147b: f5 90 02  mov   a,$0290+x
147e: 3f e8 1b  call  $1be8
1481: d5 90 02  mov   $0290+x,a
1484: dd        mov   a,y
1485: d5 91 02  mov   $0291+x,a
1488: e4 04     mov   a,$04
148a: d4 71     mov   $71+x,a
148c: e3 21 05  bbs7  $21,$1494
148f: e4 1c     mov   a,$1c
1491: d0 01     bne   $1494
1493: 6f        ret

1494: f5 b1 01  mov   a,$01b1+x
1497: f0 fa     beq   $1493
1499: f5 10 01  mov   a,$0110+x
149c: c4 08     mov   $08,a
149e: f5 11 01  mov   a,$0111+x
14a1: c4 09     mov   $09,a
14a3: f5 20 01  mov   a,$0120+x
14a6: c4 0a     mov   $0a,a
14a8: f5 21 01  mov   a,$0121+x
14ab: c4 0b     mov   $0b,a
14ad: f5 b1 01  mov   a,$01b1+x
14b0: 8d 00     mov   y,#$00
14b2: 7a 08     addw  ya,$08
14b4: 7a 0a     addw  ya,$0a
14b6: 30 21     bmi   $14d9
14b8: ad 00     cmp   y,#$00
14ba: d0 04     bne   $14c0
14bc: 08 00     or    a,#$00
14be: 10 02     bpl   $14c2
14c0: e8 7f     mov   a,#$7f
14c2: fd        mov   y,a
14c3: f5 91 02  mov   a,$0291+x
14c6: cf        mul   ya
14c7: e4 1c     mov   a,$1c
14c9: f0 07     beq   $14d2
14cb: c3 1f 03  bbs6  $1f,$14d1
14ce: 03 20 01  bbs0  $20,$14d2
14d1: cf        mul   ya
14d2: dd        mov   a,y
14d3: 80        setc
14d4: b5 b0 01  sbc   a,$01b0+x
14d7: b0 02     bcs   $14db
14d9: e8 00     mov   a,#$00
14db: fd        mov   y,a
14dc: f6 bf 1d  mov   a,$1dbf+y
14df: c4 05     mov   $05,a
14e1: e8 14     mov   a,#$14
14e3: 03 1f 09  bbs0  $1f,$14ef
14e6: f5 a1 02  mov   a,$02a1+x
14e9: 68 29     cmp   a,#$29
14eb: 90 02     bcc   $14ef
14ed: e8 28     mov   a,#$28
14ef: c4 04     mov   $04,a
14f1: fd        mov   y,a
14f2: f6 3f 1e  mov   a,$1e3f+y
14f5: eb 05     mov   y,$05
14f7: cf        mul   ya
14f8: e8 00     mov   a,#$00
14fa: 04 23     or    a,$23
14fc: c4 f2     mov   $f2,a
14fe: cb f3     mov   $f3,y
1500: bc        inc   a
1501: c4 f2     mov   $f2,a
1503: e8 28     mov   a,#$28
1505: 80        setc
1506: a4 04     sbc   a,$04
1508: fd        mov   y,a
1509: f6 3f 1e  mov   a,$1e3f+y
150c: eb 05     mov   y,$05
150e: cf        mul   ya
150f: cb f3     mov   $f3,y
1511: 6f        ret

1512: 3f 86 15  call  $1586
1515: c4 08     mov   $08,a
1517: 28 7f     and   a,#$7f
1519: 68 60     cmp   a,#$60
151b: 90 72     bcc   $158f
151d: e4 08     mov   a,$08
151f: 80        setc
1520: a8 e0     sbc   a,#$e0
1522: b0 53     bcs   $1577
1524: 68 82     cmp   a,#$82
1526: b0 09     bcs   $1531
1528: 22 20     set1  $20
152a: 5c        lsr   a
152b: 90 e5     bcc   $1512
152d: 32 20     clr1  $20
152f: 2f e1     bra   $1512
1531: d0 03     bne   $1536
1533: 5f 4d 1b  jmp   $1b4d

1536: 68 85     cmp   a,#$85
1538: b0 19     bcs   $1553
153a: 68 83     cmp   a,#$83
153c: d0 05     bne   $1543
153e: 09 11 14  or    ($14),($11)
1541: 2f 08     bra   $154b
1543: e8 ff     mov   a,#$ff
1545: 44 11     eor   a,$11
1547: 24 14     and   a,$14
1549: c4 14     mov   $14,a
154b: 8f 4d f2  mov   $f2,#$4d
154e: fa 14 f3  mov   ($f3),($14)
1551: 2f bf     bra   $1512
1553: 68 90     cmp   a,#$90
1555: 90 16     bcc   $156d
1557: 28 0f     and   a,#$0f
1559: 1c        asl   a
155a: 1c        asl   a
155b: 8d 00     mov   y,#$00
155d: 68 20     cmp   a,#$20
155f: 90 03     bcc   $1564
1561: 08 e0     or    a,#$e0
1563: dc        dec   y
1564: d5 80 02  mov   $0280+x,a
1567: dd        mov   a,y
1568: d5 81 02  mov   $0281+x,a
156b: 2f a5     bra   $1512
156d: a2 20     set5  $20
156f: 3f 9d 0c  call  $0c9d
1572: cd 00     mov   x,#$00
1574: d8 11     mov   $11,x
1576: 6f        ret

1577: 1c        asl   a
1578: fd        mov   y,a
1579: f6 ec 16  mov   a,$16ec+y
157c: 2d        push  a
157d: f6 eb 16  mov   a,$16eb+y
1580: 2d        push  a
1581: f6 2b 17  mov   a,$172b+y
1584: f0 08     beq   $158e
1586: e7 30     mov   a,($30+x)
1588: bb 30     inc   $30+x
158a: d0 02     bne   $158e
158c: bb 31     inc   $31+x
158e: 6f        ret

158f: 33 20 03  bbc1  $20,$1595
1592: 09 11 10  or    ($10),($11)
1595: f3 08 05  bbc7  $08,$159d
1598: f5 30 02  mov   a,$0230+x
159b: 2f 06     bra   $15a3
159d: 3f 86 15  call  $1586
15a0: d5 30 02  mov   $0230+x,a
15a3: d4 60     mov   $60+x,a
15a5: f5 31 02  mov   a,$0231+x
15a8: 68 7f     cmp   a,#$7f
15aa: f0 06     beq   $15b2
15ac: 09 11 0e  or    ($0e),($11)
15af: 09 11 0f  or    ($0f),($11)
15b2: 3f 86 15  call  $1586
15b5: 08 00     or    a,#$00
15b7: 30 06     bmi   $15bf
15b9: d5 31 02  mov   $0231+x,a
15bc: 3f 86 15  call  $1586
15bf: 28 7f     and   a,#$7f
15c1: d5 b1 01  mov   $01b1+x,a
15c4: d0 08     bne   $15ce
15c6: e4 11     mov   a,$11
15c8: 4e 0e 00  tclr1 $000e
15cb: 4e 0f 00  tclr1 $000f
15ce: 33 20 0a  bbc1  $20,$15db
15d1: e4 08     mov   a,$08
15d3: 28 7f     and   a,#$7f
15d5: 3f ef 17  call  $17ef
15d8: 8f 3c 08  mov   $08,#$3c
15db: f5 30 02  mov   a,$0230+x
15de: fd        mov   y,a
15df: f5 31 02  mov   a,$0231+x
15e2: 68 7f     cmp   a,#$7f
15e4: f0 06     beq   $15ec
15e6: 1c        asl   a
15e7: cf        mul   ya
15e8: dd        mov   a,y
15e9: d0 01     bne   $15ec
15eb: fc        inc   y
15ec: db 61     mov   $61+x,y
15ee: fb e1     mov   y,$e1+x
15f0: f4 e0     mov   a,$e0+x
15f2: da 0c     movw  $0c,ya
15f4: f5 31 01  mov   a,$0131+x
15f7: c4 05     mov   $05,a
15f9: f5 30 01  mov   a,$0130+x
15fc: c4 04     mov   $04,a
15fe: f5 41 01  mov   a,$0141+x
1601: c4 07     mov   $07,a
1603: f5 40 01  mov   a,$0140+x
1606: c4 06     mov   $06,a
1608: f5 81 02  mov   a,$0281+x
160b: c4 0b     mov   $0b,a
160d: f5 80 02  mov   a,$0280+x
1610: c4 0a     mov   $0a,a
1612: e4 08     mov   a,$08
1614: 60        clrc
1615: 95 21 02  adc   a,$0221+x
1618: fd        mov   y,a
1619: e8 00     mov   a,#$00
161b: 7a 04     addw  ya,$04
161d: 7a 06     addw  ya,$06
161f: 7a 0a     addw  ya,$0a
1621: d4 e0     mov   $e0+x,a
1623: dd        mov   a,y
1624: 28 7f     and   a,#$7f
1626: d4 e1     mov   $e1+x,a
1628: f5 20 02  mov   a,$0220+x
162b: f0 26     beq   $1653
162d: e8 00     mov   a,#$00
162f: d4 b0     mov   $b0+x,a
1631: d4 c1     mov   $c1+x,a
1633: f5 10 02  mov   a,$0210+x
1636: d4 a0     mov   $a0+x,a
1638: f5 11 02  mov   a,$0211+x
163b: d4 a1     mov   $a1+x,a
163d: f0 0b     beq   $164a
163f: f5 e0 02  mov   a,$02e0+x
1642: d5 d0 02  mov   $02d0+x,a
1645: f5 e1 02  mov   a,$02e1+x
1648: 2f 06     bra   $1650
164a: d5 d0 02  mov   $02d0+x,a
164d: f5 20 02  mov   a,$0220+x
1650: d5 d1 02  mov   $02d1+x,a
1653: f5 c1 01  mov   a,$01c1+x
1656: 10 18     bpl   $1670
1658: e8 05     mov   a,#$05
165a: 04 23     or    a,$23
165c: c4 f2     mov   $f2,a
165e: f5 70 02  mov   a,$0270+x
1661: c4 f3     mov   $f3,a
1663: 30 0b     bmi   $1670
1665: e8 07     mov   a,#$07
1667: 04 23     or    a,$23
1669: c4 f2     mov   $f2,a
166b: f5 71 02  mov   a,$0271+x
166e: c4 f3     mov   $f3,a
1670: f4 90     mov   a,$90+x
1672: d4 80     mov   $80+x,a
1674: f0 2c     beq   $16a2
1676: 83 20 17  bbs4  $20,$1690
1679: f4 91     mov   a,$91+x
167b: d4 81     mov   $81+x,a
167d: f4 e0     mov   a,$e0+x
167f: d5 c0 02  mov   $02c0+x,a
1682: f4 e1     mov   a,$e1+x
1684: d5 c1 02  mov   $02c1+x,a
1687: 80        setc
1688: b5 60 02  sbc   a,$0260+x
168b: d4 e1     mov   $e1+x,a
168d: fd        mov   y,a
168e: 2f 1d     bra   $16ad
1690: f4 e1     mov   a,$e1+x
1692: d5 c1 02  mov   $02c1+x,a
1695: f4 e0     mov   a,$e0+x
1697: d5 c0 02  mov   $02c0+x,a
169a: ba 0c     movw  ya,$0c
169c: db e1     mov   $e1+x,y
169e: d4 e0     mov   $e0+x,a
16a0: 2f 0d     bra   $16af
16a2: e7 30     mov   a,($30+x)
16a4: 68 f3     cmp   a,#$f3
16a6: d0 03     bne   $16ab
16a8: 3f 9a 17  call  $179a
16ab: fb e1     mov   y,$e1+x
16ad: f4 e0     mov   a,$e0+x
16af: da 04     movw  $04,ya
16b1: f5 40 02  mov   a,$0240+x
16b4: fd        mov   y,a
16b5: f5 41 02  mov   a,$0241+x
16b8: 7a 04     addw  ya,$04
16ba: c4 04     mov   $04,a
16bc: dd        mov   a,y
16bd: 1c        asl   a
16be: fd        mov   y,a
16bf: f6 00 03  mov   a,$0300+y
16c2: c4 06     mov   $06,a
16c4: f6 01 03  mov   a,$0301+y
16c7: c4 07     mov   $07,a
16c9: f6 c0 1c  mov   a,$1cc0+y
16cc: 2d        push  a
16cd: f6 bf 1c  mov   a,$1cbf+y
16d0: eb 04     mov   y,$04
16d2: cf        mul   ya
16d3: ae        pop   a
16d4: cf        mul   ya
16d5: 7a 06     addw  ya,$06
16d7: c4 04     mov   $04,a
16d9: e8 02     mov   a,#$02
16db: 04 23     or    a,$23
16dd: c4 f2     mov   $f2,a
16df: fa 04 f3  mov   ($f3),($04)
16e2: bc        inc   a
16e3: c4 f2     mov   $f2,a
16e5: dd        mov   a,y
16e6: 28 3f     and   a,#$3f
16e8: c4 f3     mov   $f3,a
16ea: 6f        ret

; vcmd dispatch table
16eb: dw $176b  ; e0
16ed: dw $177f  ; e1
16ef: dw $17c5  ; e2
16f1: dw $1856  ; e3
16f3: dw $1872  ; e4
16f5: dw $18d4  ; e5
16f7: dw $18ed  ; e6
16f9: dw $18fa  ; e7
16fb: dw $196b  ; e8
16fd: dw $1988  ; e9
17ff: dw $19e9  ; ea
1701: dw $19f3  ; eb
1703: dw $1a04  ; ec
1705: dw $1b6c  ; ed
1707: dw $1a0a  ; ee
1709: dw $1a37  ; ef
170b: dw $1a47  ; f0
170d: dw $1a4e  ; f1
170f: dw $1a6c  ; f2
1711: dw $1a87  ; f3
1713: dw $0000  ; f4
1715: dw $0000  ; f5
1717: dw $1acf  ; f6
1719: dw $1ae1  ; f7
171b: dw $1b18  ; f8
171d: dw $18b9  ; f9
171f: dw $1b28  ; fa
1721: dw $1b82  ; fb
1723: dw $1b8d  ; fc
1725: dw $1b9a  ; fd
1727: dw $1ba8  ; fe
1729: dw $1bc1  ; ff

; vcmd length table
172b: dw $0001,$0002,$0001,$0001,$0003,$0003,$0000,$0003
173b: dw $0000,$0003,$0001,$0002,$0001,$0001,$0001,$0002
174b: dw $0001,$0003,$0001,$0003,$0003,$0003,$0000,$0000
175b: dw $0002,$0001,$0003,$0001,$0001,$0002,$0002,$0000

; vcmd e0
176b: d5 30 02  mov   $0230+x,a
176e: d4 60     mov   $60+x,a
1770: 09 11 10  or    ($10),($11)
1773: e8 00     mov   a,#$00
1775: d5 31 02  mov   $0231+x,a
1778: d4 61     mov   $61+x,a
177a: d5 b1 01  mov   $01b1+x,a
177d: 2f 15     bra   $1794
; vcmd e1
177f: d5 30 02  mov   $0230+x,a
1782: d4 60     mov   $60+x,a
1784: 3f 86 15  call  $1586
1787: d5 31 02  mov   $0231+x,a
178a: 1c        asl   a
178b: fb 60     mov   y,$60+x
178d: cf        mul   ya
178e: dd        mov   a,y
178f: d0 01     bne   $1792
1791: bc        inc   a
1792: d4 61     mov   $61+x,a
1794: e7 30     mov   a,($30+x)
1796: 68 f3     cmp   a,#$f3
1798: d0 2a     bne   $17c4
179a: 92 20     clr4  $20
179c: 3f 88 15  call  $1588
179f: 3f 86 15  call  $1586
17a2: d4 81     mov   $81+x,a
17a4: 3f 86 15  call  $1586
17a7: d4 80     mov   $80+x,a
17a9: 3f 86 15  call  $1586
17ac: 60        clrc
17ad: 95 21 02  adc   a,$0221+x
17b0: d5 c1 02  mov   $02c1+x,a
17b3: e8 00     mov   a,#$00
17b5: d5 c0 02  mov   $02c0+x,a
17b8: 3f 86 15  call  $1586
17bb: d5 b0 02  mov   $02b0+x,a
17be: 3f 86 15  call  $1586
17c1: d5 b1 02  mov   $02b1+x,a
17c4: 6f        ret

; vcmd e2
17c5: 09 11 10  or    ($10),($11)
17c8: 68 24     cmp   a,#$24
17ca: b0 0c     bcs   $17d8
17cc: 8f a0 04  mov   $04,#$a0
17cf: 8f 05 05  mov   $05,#$05
17d2: 3f f5 17  call  $17f5
17d5: 5f 12 15  jmp   $1512

17d8: a8 24     sbc   a,#$24
17da: 2d        push  a
17db: ec e0 01  mov   y,$01e0
17de: f6 8a 05  mov   a,$058a+y
17e1: c4 04     mov   $04,a
17e3: f6 8b 05  mov   a,$058b+y
17e6: c4 05     mov   $05,a
17e8: ae        pop   a
17e9: 3f f5 17  call  $17f5
17ec: 5f 12 15  jmp   $1512

17ef: 8f 75 04  mov   $04,#$75
17f2: 8f 07 05  mov   $05,#$07
17f5: 8d 07     mov   y,#$07
17f7: cf        mul   ya
17f8: 7a 04     addw  ya,$04
17fa: da 04     movw  $04,ya
17fc: 8d 00     mov   y,#$00
17fe: e8 04     mov   a,#$04
1800: 04 23     or    a,$23
1802: c4 06     mov   $06,a
1804: c4 f2     mov   $f2,a
1806: f7 04     mov   a,($04)+y
1808: c4 f3     mov   $f3,a
180a: fc        inc   y
180b: f7 04     mov   a,($04)+y
180d: d5 40 02  mov   $0240+x,a
1810: fc        inc   y
1811: f7 04     mov   a,($04)+y
1813: d5 41 02  mov   $0241+x,a
1816: 10 07     bpl   $181f
1818: f5 40 02  mov   a,$0240+x
181b: 9c        dec   a
181c: d5 40 02  mov   $0240+x,a
181f: fc        inc   y
1820: ab 06     inc   $06
1822: fa 06 f2  mov   ($f2),($06)
1825: ab 06     inc   $06
1827: f7 04     mov   a,($04)+y
1829: c4 f3     mov   $f3,a
182b: d5 70 02  mov   $0270+x,a
182e: 30 02     bmi   $1832
1830: ab 06     inc   $06
1832: fc        inc   y
1833: fa 06 f2  mov   ($f2),($06)
1836: f7 04     mov   a,($04)+y
1838: c4 f3     mov   $f3,a
183a: d5 71 02  mov   $0271+x,a
183d: e8 00     mov   a,#$00
183f: d5 c1 01  mov   $01c1+x,a
1842: fc        inc   y
1843: 63 20 09  bbs3  $20,$184f
1846: f7 04     mov   a,($04)+y
1848: d5 a1 02  mov   $02a1+x,a
184b: e8 00     mov   a,#$00
184d: d4 70     mov   $70+x,a
184f: fc        inc   y
1850: f7 04     mov   a,($04)+y
1852: d5 b0 01  mov   $01b0+x,a
1855: 6f        ret

; vcmd e3
1856: 68 2a     cmp   a,#$2a
1858: f0 0e     beq   $1868
185a: 68 2c     cmp   a,#$2c
185c: f0 0f     beq   $186d
185e: d5 a1 02  mov   $02a1+x,a
1861: e8 00     mov   a,#$00
1863: d4 70     mov   $70+x,a
1865: 5f 12 15  jmp   $1512

1868: 62 20     set3  $20
186a: 5f 12 15  jmp   $1512

186d: 72 20     clr3  $20
186f: 5f 12 15  jmp   $1512

; vcmd e4
1872: 2d        push  a
1873: 3f 86 15  call  $1586
1876: 68 80     cmp   a,#$80
1878: b0 13     bcs   $188d
187a: 1c        asl   a
187b: 30 0c     bmi   $1889
187d: 1c        asl   a
187e: 30 05     bmi   $1885
1880: 1c        asl   a
1881: 8d 01     mov   y,#$01
1883: 2f 10     bra   $1895
1885: 8d 02     mov   y,#$02
1887: 2f 0c     bra   $1895
1889: 8d 04     mov   y,#$04
188b: 2f 08     bra   $1895
188d: 8d 08     mov   y,#$08
188f: 68 ff     cmp   a,#$ff
1891: d0 02     bne   $1895
1893: 8d 10     mov   y,#$10
1895: d4 b1     mov   $b1+x,a
1897: db c0     mov   $c0+x,y
1899: 3f 86 15  call  $1586
189c: d5 20 02  mov   $0220+x,a
189f: ae        pop   a
18a0: 68 c8     cmp   a,#$c8
18a2: b0 0b     bcs   $18af
18a4: d5 10 02  mov   $0210+x,a
18a7: e8 00     mov   a,#$00
18a9: d5 11 02  mov   $0211+x,a
18ac: 5f 12 15  jmp   $1512

18af: fd        mov   y,a
18b0: e8 00     mov   a,#$00
18b2: d5 10 02  mov   $0210+x,a
18b5: dd        mov   a,y
18b6: 80        setc
18b7: a8 c7     sbc   a,#$c7
; vcmd f9
18b9: d5 11 02  mov   $0211+x,a
18bc: 2d        push  a
18bd: 8d 00     mov   y,#$00
18bf: f5 20 02  mov   a,$0220+x
18c2: ce        pop   x
18c3: 9e        div   ya,x
18c4: 2d        push  a
18c5: e8 00     mov   a,#$00
18c7: 9e        div   ya,x
18c8: f8 22     mov   x,$22
18ca: d5 e0 02  mov   $02e0+x,a
18cd: ae        pop   a
18ce: d5 e1 02  mov   $02e1+x,a
18d1: 5f 12 15  jmp   $1512

; vcmd e5
18d4: d5 d1 01  mov   $01d1+x,a
18d7: 3f 86 15  call  $1586
18da: d5 f1 02  mov   $02f1+x,a
18dd: 3f 86 15  call  $1586
18e0: d5 f0 02  mov   $02f0+x,a
18e3: e8 00     mov   a,#$00
18e5: d4 d1     mov   $d1+x,a
18e7: d5 d0 01  mov   $01d0+x,a
18ea: 5f 12 15  jmp   $1512

; vcmd e6
18ed: f4 30     mov   a,$30+x
18ef: d5 50 01  mov   $0150+x,a
18f2: f4 31     mov   a,$31+x
18f4: d5 51 01  mov   $0151+x,a
18f7: 5f 12 15  jmp   $1512

; vcmd e7
18fa: 68 00     cmp   a,#$00
18fc: f0 1e     beq   $191c
18fe: bb 50     inc   $50+x
1900: de 50 19  cbne  $50+x,$191c
1903: 3f 88 15  call  $1588
1906: 3f 88 15  call  $1588
1909: e8 00     mov   a,#$00
190b: d4 50     mov   $50+x,a
190d: d5 10 01  mov   $0110+x,a
1910: d5 11 01  mov   $0111+x,a
1913: d5 30 01  mov   $0130+x,a
1916: d5 31 01  mov   $0131+x,a
1919: 5f 12 15  jmp   $1512

191c: 3f 86 15  call  $1586
191f: 8d 00     mov   y,#$00
1921: 08 00     or    a,#$00
1923: f0 15     beq   $193a
1925: 10 01     bpl   $1928
1927: dc        dec   y
1928: da 04     movw  $04,ya
192a: f5 11 01  mov   a,$0111+x
192d: fd        mov   y,a
192e: f5 10 01  mov   a,$0110+x
1931: 7a 04     addw  ya,$04
1933: d5 10 01  mov   $0110+x,a
1936: dd        mov   a,y
1937: d5 11 01  mov   $0111+x,a
193a: 3f 86 15  call  $1586
193d: 08 00     or    a,#$00
193f: f0 1d     beq   $195e
1941: 8d 00     mov   y,#$00
1943: 1c        asl   a
1944: 90 01     bcc   $1947
1946: dc        dec   y
1947: cb 04     mov   $04,y
1949: 1c        asl   a
194a: 2b 04     rol   $04
194c: 1c        asl   a
194d: 2b 04     rol   $04
194f: 60        clrc
1950: 95 30 01  adc   a,$0130+x
1953: d5 30 01  mov   $0130+x,a
1956: e4 04     mov   a,$04
1958: 95 31 01  adc   a,$0131+x
195b: d5 31 01  mov   $0131+x,a
195e: f5 50 01  mov   a,$0150+x
1961: d4 30     mov   $30+x,a
1963: f5 51 01  mov   a,$0151+x
1966: d4 31     mov   $31+x,a
1968: 5f 12 15  jmp   $1512

; vcmd e8
196b: f4 30     mov   a,$30+x
196d: d5 60 01  mov   $0160+x,a
1970: f4 31     mov   a,$31+x
1972: d5 61 01  mov   $0161+x,a
1975: e8 00     mov   a,#$00
1977: d4 51     mov   $51+x,a
1979: d5 20 01  mov   $0120+x,a
197c: d5 21 01  mov   $0121+x,a
197f: d5 40 01  mov   $0140+x,a
1982: d5 41 01  mov   $0141+x,a
1985: 5f 12 15  jmp   $1512

; vcmd e9
1988: 68 00     cmp   a,#$00
198a: f0 0e     beq   $199a
198c: bb 51     inc   $51+x
198e: de 51 09  cbne  $51+x,$199a
1991: 3f 88 15  call  $1588
1994: 3f 88 15  call  $1588
1997: 5f 12 15  jmp   $1512

199a: 3f 86 15  call  $1586
199d: 8d 00     mov   y,#$00
199f: 08 00     or    a,#$00
19a1: f0 15     beq   $19b8
19a3: 10 01     bpl   $19a6
19a5: dc        dec   y
19a6: da 04     movw  $04,ya
19a8: f5 21 01  mov   a,$0121+x
19ab: fd        mov   y,a
19ac: f5 20 01  mov   a,$0120+x
19af: 7a 04     addw  ya,$04
19b1: d5 20 01  mov   $0120+x,a
19b4: dd        mov   a,y
19b5: d5 21 01  mov   $0121+x,a
19b8: 3f 86 15  call  $1586
19bb: 08 00     or    a,#$00
19bd: f0 1d     beq   $19dc
19bf: 8d 00     mov   y,#$00
19c1: 1c        asl   a
19c2: 90 01     bcc   $19c5
19c4: dc        dec   y
19c5: cb 04     mov   $04,y
19c7: 1c        asl   a
19c8: 2b 04     rol   $04
19ca: 1c        asl   a
19cb: 2b 04     rol   $04
19cd: 60        clrc
19ce: 95 40 01  adc   a,$0140+x
19d1: d5 40 01  mov   $0140+x,a
19d4: e4 04     mov   a,$04
19d6: 95 41 01  adc   a,$0141+x
19d9: d5 41 01  mov   $0141+x,a
19dc: f5 60 01  mov   a,$0160+x
19df: d4 30     mov   $30+x,a
19e1: f5 61 01  mov   a,$0161+x
19e4: d4 31     mov   $31+x,a
19e6: 5f 12 15  jmp   $1512

; vcmd ea
19e9: d4 41     mov   $41+x,a
19eb: e8 00     mov   a,#$00
19ed: d5 c0 01  mov   $01c0+x,a
19f0: 5f 12 15  jmp   $1512

; vcmd eb
19f3: d5 50 02  mov   $0250+x,a
19f6: 3f 86 15  call  $1586
19f9: d5 c0 01  mov   $01c0+x,a
19fc: e8 00     mov   a,#$00
19fe: d5 51 02  mov   $0251+x,a
1a01: 5f 12 15  jmp   $1512

; vcmd ec
1a04: d5 21 02  mov   $0221+x,a
1a07: 5f 12 15  jmp   $1512

; vcmd ee
1a0a: d5 91 02  mov   $0291+x,a
1a0d: e8 00     mov   a,#$00
1a0f: d4 71     mov   $71+x,a
1a11: f5 a1 01  mov   a,$01a1+x
1a14: f0 f1     beq   $1a07
1a16: e8 04     mov   a,#$04
1a18: 04 23     or    a,$23
1a1a: c4 06     mov   $06,a
1a1c: c4 f2     mov   $f2,a
1a1e: f5 a0 01  mov   a,$01a0+x
1a21: c4 f3     mov   $f3,a
1a23: 8f 31 04  mov   $04,#$31
1a26: 8f 1a 05  mov   $05,#$1a
1a29: 8d 00     mov   y,#$00
1a2b: 3f 0b 18  call  $180b
1a2e: 5f 12 15  jmp   $1512

1a31: db $00,$00,$8f,$e0,$14,$00

; vcmd ef
1a37: d5 00 02  mov   $0200+x,a
1a3a: 3f 86 15  call  $1586
1a3d: d4 71     mov   $71+x,a
1a3f: e8 00     mov   a,#$00
1a41: d5 90 02  mov   $0290+x,a
1a44: 5f 12 15  jmp   $1512

; vcmd f0
1a47: d4 90     mov   $90+x,a
1a49: 82 20     set4  $20
1a4b: 5f 12 15  jmp   $1512

; vcmd f1
1a4e: 92 20     clr4  $20
1a50: d4 91     mov   $91+x,a
1a52: 3f 86 15  call  $1586
1a55: d4 90     mov   $90+x,a
1a57: 3f 86 15  call  $1586
1a5a: d5 60 02  mov   $0260+x,a
1a5d: 3f 86 15  call  $1586
1a60: d5 b0 02  mov   $02b0+x,a
1a63: 3f 86 15  call  $1586
1a66: d5 b1 02  mov   $02b1+x,a
1a69: 5f 12 15  jmp   $1512

; vcmd f2
1a6c: 1c        asl   a
1a6d: b0 08     bcs   $1a77
1a6f: 8d 00     mov   y,#$00
1a71: 1c        asl   a
1a72: 90 09     bcc   $1a7d
1a74: fc        inc   y
1a75: 2f 06     bra   $1a7d
1a77: 8d ff     mov   y,#$ff
1a79: 1c        asl   a
1a7a: b0 01     bcs   $1a7d
1a7c: dc        dec   y
1a7d: d5 80 02  mov   $0280+x,a
1a80: dd        mov   a,y
1a81: d5 81 02  mov   $0281+x,a
1a84: 5f 12 15  jmp   $1512

; vcmd f3
1a87: 3f 88 15  call  $1588
1a8a: 3f 88 15  call  $1588
1a8d: 3f 88 15  call  $1588
1a90: 3f 88 15  call  $1588
1a93: 5f 12 15  jmp   $1512

1a96: e4 14     mov   a,$14
1a98: f0 34     beq   $1ace
1a9a: e4 18     mov   a,$18
1a9c: 1c        asl   a
1a9d: 1c        asl   a
1a9e: bc        inc   a
1a9f: c4 19     mov   $19,a
1aa1: e8 00     mov   a,#$00
1aa3: 8f 2c f2  mov   $f2,#$2c
1aa6: c4 f3     mov   $f3,a
1aa8: 8f 3c f2  mov   $f2,#$3c
1aab: c4 f3     mov   $f3,a
1aad: 8f 0d f2  mov   $f2,#$0d
1ab0: c4 f3     mov   $f3,a
1ab2: a2 13     set5  $13
1ab4: 8f 6c f2  mov   $f2,#$6c
1ab7: fa 13 f3  mov   ($f3),($13)
1aba: c4 14     mov   $14,a
1abc: c4 15     mov   $15,a
1abe: c4 16     mov   $16,a
1ac0: c4 17     mov   $17,a
1ac2: c4 18     mov   $18,a
1ac4: 8f 7d f2  mov   $f2,#$7d
1ac7: c4 f3     mov   $f3,a
1ac9: 8f 6d f2  mov   $f2,#$6d
1acc: c4 f3     mov   $f3,a
1ace: 6f        ret

; vcmd f6
1acf: f4 30     mov   a,$30+x
1ad1: d5 70 01  mov   $0170+x,a
1ad4: f4 31     mov   a,$31+x
1ad6: d5 71 01  mov   $0171+x,a
1ad9: e8 c0     mov   a,#$c0
1adb: 4e 20 00  tclr1 $0020
1ade: 5f 12 15  jmp   $1512

; vcmd f7
1ae1: c3 20 08  bbs6  $20,$1aec
1ae4: e3 20 20  bbs7  $20,$1b07
1ae7: c2 20     set6  $20
1ae9: 5f 12 15  jmp   $1512

1aec: d2 20     clr6  $20
1aee: e2 20     set7  $20
1af0: f4 30     mov   a,$30+x
1af2: d5 80 01  mov   $0180+x,a
1af5: f4 31     mov   a,$31+x
1af7: d5 81 01  mov   $0181+x,a
1afa: f5 70 01  mov   a,$0170+x
1afd: d4 30     mov   $30+x,a
1aff: f5 71 01  mov   a,$0171+x
1b02: d4 31     mov   $31+x,a
1b04: 5f 12 15  jmp   $1512

1b07: c2 20     set6  $20
1b09: f2 20     clr7  $20
1b0b: f5 80 01  mov   a,$0180+x
1b0e: d4 30     mov   $30+x,a
1b10: f5 81 01  mov   a,$0181+x
1b13: d4 31     mov   $31+x,a
1b15: 5f 12 15  jmp   $1512

; vcmd f8
1b18: d5 01 02  mov   $0201+x,a
1b1b: 3f 86 15  call  $1586
1b1e: d4 70     mov   $70+x,a
1b20: e8 00     mov   a,#$00
1b22: d5 a0 02  mov   $02a0+x,a
1b25: 5f 12 15  jmp   $1512

; vcmd fa
1b28: d5 70 02  mov   $0270+x,a
1b2b: fd        mov   y,a
1b2c: e8 05     mov   a,#$05
1b2e: 04 23     or    a,$23
1b30: c4 f2     mov   $f2,a
1b32: cb f3     mov   $f3,y
1b34: bc        inc   a
1b35: ad 80     cmp   y,#$80
1b37: 90 09     bcc   $1b42
1b39: c4 f2     mov   $f2,a
1b3b: 3f 86 15  call  $1586
1b3e: c4 f3     mov   $f3,a
1b40: 2f 0b     bra   $1b4d
1b42: bc        inc   a
1b43: c4 f2     mov   $f2,a
1b45: 3f 86 15  call  $1586
1b48: c4 f3     mov   $f3,a
1b4a: d5 71 02  mov   $0271+x,a
1b4d: 3f 86 15  call  $1586
1b50: 68 c8     cmp   a,#$c8
1b52: b0 0c     bcs   $1b60
1b54: 68 64     cmp   a,#$64
1b56: 90 0e     bcc   $1b66
1b58: a8 64     sbc   a,#$64
1b5a: 28 1f     and   a,#$1f
1b5c: 08 80     or    a,#$80
1b5e: 2f 06     bra   $1b66
1b60: a8 c8     sbc   a,#$c8
1b62: 28 1f     and   a,#$1f
1b64: 08 a0     or    a,#$a0
1b66: d5 c1 01  mov   $01c1+x,a
1b69: 5f 12 15  jmp   $1512

; vcmd ed
1b6c: 2d        push  a
1b6d: f5 70 02  mov   a,$0270+x
1b70: ae        pop   a
1b71: 10 0c     bpl   $1b7f
1b73: d5 70 02  mov   $0270+x,a
1b76: fd        mov   y,a
1b77: e8 05     mov   a,#$05
1b79: 04 23     or    a,$23
1b7b: c4 f2     mov   $f2,a
1b7d: cb f3     mov   $f3,y
1b7f: 5f 12 15  jmp   $1512

; vcmd fb
1b82: 2d        push  a
1b83: f5 70 02  mov   a,$0270+x
1b86: ee        pop   y
1b87: 10 f6     bpl   $1b7f
1b89: e8 06     mov   a,#$06
1b8b: 2f ec     bra   $1b79
; vcmd fc
1b8d: d5 91 02  mov   $0291+x,a
1b90: e8 00     mov   a,#$00
1b92: d4 71     mov   $71+x,a
1b94: 3f 86 15  call  $1586
1b97: 5f c5 17  jmp   $17c5

; vcmd fd
1b9a: c4 04     mov   $04,a
1b9c: 3f 86 15  call  $1586
1b9f: d4 31     mov   $31+x,a
1ba1: e4 04     mov   a,$04
1ba3: d4 30     mov   $30+x,a
1ba5: 5f 12 15  jmp   $1512

; vcmd fe
1ba8: 2d        push  a
1ba9: 3f 86 15  call  $1586
1bac: fd        mov   y,a
1bad: f4 30     mov   a,$30+x
1baf: d5 00 01  mov   $0100+x,a
1bb2: f4 31     mov   a,$31+x
1bb4: d5 01 01  mov   $0101+x,a
1bb7: ae        pop   a
1bb8: d4 30     mov   $30+x,a
1bba: db 31     mov   $31+x,y
1bbc: 42 20     set2  $20
1bbe: 5f 12 15  jmp   $1512

; vcmd ff
1bc1: 53 20 0f  bbc2  $20,$1bd3
1bc4: 52 20     clr2  $20
1bc6: f5 00 01  mov   a,$0100+x
1bc9: d4 30     mov   $30+x,a
1bcb: f5 01 01  mov   a,$0101+x
1bce: d4 31     mov   $31+x,a
1bd0: 5f 12 15  jmp   $1512

1bd3: e8 00     mov   a,#$00
1bd5: d4 d0     mov   $d0+x,a
1bd7: d5 a1 01  mov   $01a1+x,a
1bda: d5 90 01  mov   $0190+x,a
1bdd: e4 11     mov   a,$11
1bdf: 0e 10 00  tset1 $0010
1be2: 4e 0f 00  tclr1 $000f
1be5: a2 20     set5  $20
1be7: 6f        ret

1be8: da 06     movw  $06,ya
1bea: e4 04     mov   a,$04
1bec: 9f        xcn   a
1bed: 28 f0     and   a,#$f0
1bef: 2d        push  a
1bf0: e4 04     mov   a,$04
1bf2: 30 0f     bmi   $1c03
1bf4: 9f        xcn   a
1bf5: 28 07     and   a,#$07
1bf7: fd        mov   y,a
1bf8: ae        pop   a
1bf9: 60        clrc
1bfa: 7a 06     addw  ya,$06
1bfc: b0 13     bcs   $1c11
1bfe: 7e 05     cmp   y,$05
1c00: b0 0f     bcs   $1c11
1c02: 6f        ret

1c03: 9f        xcn   a
1c04: 08 f8     or    a,#$f8
1c06: fd        mov   y,a
1c07: ae        pop   a
1c08: 60        clrc
1c09: 7a 06     addw  ya,$06
1c0b: 90 04     bcc   $1c11
1c0d: 7e 05     cmp   y,$05
1c0f: b0 05     bcs   $1c16
1c11: 8f 00 04  mov   $04,#$00
1c14: eb 05     mov   y,$05
1c16: 6f        ret

1c17: f4 e0     mov   a,$e0+x
1c19: fb e1     mov   y,$e1+x
1c1b: da 04     movw  $04,ya
1c1d: f5 c1 02  mov   a,$02c1+x
1c20: fd        mov   y,a
1c21: f5 c0 02  mov   a,$02c0+x
1c24: 9a 04     subw  ya,$04
1c26: f0 32     beq   $1c5a
1c28: da 06     movw  $06,ya
1c2a: 10 07     bpl   $1c33
1c2c: e8 00     mov   a,#$00
1c2e: fd        mov   y,a
1c2f: 9a 06     subw  ya,$06
1c31: c4 06     mov   $06,a
1c33: f4 90     mov   a,$90+x
1c35: cf        mul   ya
1c36: da 08     movw  $08,ya
1c38: eb 06     mov   y,$06
1c3a: f4 90     mov   a,$90+x
1c3c: cf        mul   ya
1c3d: dd        mov   a,y
1c3e: 8d 00     mov   y,#$00
1c40: 7a 08     addw  ya,$08
1c42: d0 01     bne   $1c45
1c44: bc        inc   a
1c45: f3 07 0b  bbc7  $07,$1c53
1c48: da 06     movw  $06,ya
1c4a: ba 04     movw  ya,$04
1c4c: 9a 06     subw  ya,$06
1c4e: d4 e0     mov   $e0+x,a
1c50: db e1     mov   $e1+x,y
1c52: 6f        ret

1c53: 7a 04     addw  ya,$04
1c55: d4 e0     mov   $e0+x,a
1c57: db e1     mov   $e1+x,y
1c59: 6f        ret

1c5a: d4 80     mov   $80+x,a
1c5c: 6f        ret

1c5d: f4 b0     mov   a,$b0+x
1c5f: 60        clrc
1c60: 94 b1     adc   a,$b1+x
1c62: d4 b0     mov   $b0+x,a
1c64: 90 3a     bcc   $1ca0
1c66: 02 21     set0  $21
1c68: f4 c1     mov   a,$c1+x
1c6a: 60        clrc
1c6b: 94 c0     adc   a,$c0+x
1c6d: 28 3f     and   a,#$3f
1c6f: c4 04     mov   $04,a
1c71: d4 c1     mov   $c1+x,a
1c73: 28 1f     and   a,#$1f
1c75: fd        mov   y,a
1c76: f6 69 1e  mov   a,$1e69+y
1c79: fd        mov   y,a
1c7a: f5 d1 02  mov   a,$02d1+x
1c7d: 30 09     bmi   $1c88
1c7f: 1c        asl   a
1c80: cf        mul   ya
1c81: cb 08     mov   $08,y
1c83: 8f 00 09  mov   $09,#$00
1c86: 2f 0a     bra   $1c92
1c88: 80        setc
1c89: a8 7e     sbc   a,#$7e
1c8b: cf        mul   ya
1c8c: da 08     movw  $08,ya
1c8e: 4b 09     lsr   $09
1c90: 6b 08     ror   $08
1c92: ba 0a     movw  ya,$0a
1c94: b3 04 05  bbc5  $04,$1c9c
1c97: 9a 08     subw  ya,$08
1c99: da 0a     movw  $0a,ya
1c9b: 6f        ret

1c9c: 7a 08     addw  ya,$08
1c9e: da 0a     movw  $0a,ya
1ca0: 6f        ret

1ca1: f5 d0 01  mov   a,$01d0+x
1ca4: fd        mov   y,a
1ca5: bc        inc   a
1ca6: 28 7f     and   a,#$7f
1ca8: d5 d0 01  mov   $01d0+x,a
1cab: f6 99 1e  mov   a,$1e99+y
1cae: 35 f0 02  and   a,$02f0+x
1cb1: 2d        push  a
1cb2: f6 9a 1e  mov   a,$1e9a+y
1cb5: 35 f1 02  and   a,$02f1+x
1cb8: fd        mov   y,a
1cb9: ae        pop   a
1cba: 7a 0a     addw  ya,$0a
1cbc: 5f af 16  jmp   $16af

1cbf: db $04,$01
1cc1: db $05,$01
1cc3: db $04,$01
1cc5: db $05,$01
1cc7: db $05,$01
1cc9: db $05,$01
1ccb: db $06,$01
1ccd: db $06,$01
1ccf: db $06,$01
1cd1: db $07,$01
1cd3: db $07,$01
1cd5: db $07,$01
1cd7: db $08,$01
1cd9: db $09,$01
1cdb: db $09,$01
1cdd: db $09,$01
1cdf: db $0a,$01
1ce1: db $0b,$01
1ce3: db $0b,$01
1ce5: db $0c,$01
1ce7: db $0d,$01
1ce9: db $0d,$01
1ceb: db $0e,$01
1ced: db $0f,$01
1cef: db $10,$01
1cf1: db $11,$01
1cf3: db $12,$01
1cf5: db $13,$01
1cf7: db $14,$01
1cf9: db $15,$01
1cfb: db $17,$01
1cfd: db $18,$01
1cff: db $19,$01
1d01: db $1b,$01
1d03: db $1c,$01
1d05: db $1e,$01
1d07: db $20,$01
1d09: db $22,$01
1d0b: db $24,$01
1d0d: db $26,$01
1d0f: db $28,$01
1d11: db $2a,$01
1d13: db $2d,$01
1d15: db $30,$01
1d17: db $33,$01
1d19: db $35,$01
1d1b: db $39,$01
1d1d: db $3c,$01
1d1f: db $40,$01
1d21: db $43,$01
1d23: db $48,$01
1d25: db $4c,$01
1d27: db $50,$01
1d29: db $55,$01
1d2b: db $5a,$01
1d2d: db $60,$01
1d2f: db $65,$01
1d31: db $6b,$01
1d33: db $71,$01
1d35: db $79,$01
1d37: db $7f,$01
1d39: db $87,$01
1d3b: db $8f,$01
1d3d: db $98,$01
1d3f: db $a0,$01
1d41: db $aa,$01
1d43: db $b5,$01
1d45: db $bf,$01
1d47: db $ca,$01
1d49: db $d6,$01
1d4b: db $e3,$01
1d4d: db $f1,$01
1d4f: db $ff,$01
1d51: db $87,$02
1d53: db $8f,$02
1d55: db $97,$02
1d57: db $a0,$02
1d59: db $aa,$02
1d5b: db $b4,$02
1d5d: db $bf,$02
1d5f: db $ca,$02
1d61: db $d6,$02
1d63: db $e3,$02
1d65: db $f0,$02
1d67: db $ff,$02
1d69: db $b4,$03
1d6b: db $be,$03
1d6d: db $ca,$03
1d6f: db $d6,$03
1d71: db $e2,$03
1d73: db $f0,$03
1d75: db $fe,$03
1d77: db $ca,$04
1d79: db $d7,$04
1d7b: db $e2,$04
1d7d: db $c9,$01

1d7f: db $01,$01,$01,$01,$01,$01,$01,$01
1d87: db $01,$01,$01,$01,$01,$01,$02,$01
1d8f: db $01,$01,$01,$01,$01,$01,$01,$01
1d97: db $02,$01,$01,$01,$02,$01,$01,$01
1d9f: db $02,$01,$02,$01,$01,$01,$02,$01
1da7: db $03,$01,$02,$01,$02,$01,$03,$01
1daf: db $02,$01,$03,$01,$03,$01,$03,$01
1db7: db $04,$01,$03,$01,$03,$01,$04,$01

1bdf: db $00,$01,$01,$01,$01,$01,$01,$01
1be7: db $01,$01,$01,$01,$01,$01,$01,$01
1bef: db $01,$01,$01,$01,$01,$01,$01,$01
1bf7: db $01,$01,$01,$01,$01,$01,$02,$02
1bff: db $02,$02,$02,$02,$02,$02,$02,$02
1c07: db $03,$03,$03,$03,$03,$03,$04,$04
1c0f: db $04,$04,$04,$04,$05,$05,$05,$05
1c17: db $06,$06,$07,$07,$07,$07,$08,$08
1c1f: db $09,$09,$0a,$0a,$0a,$0a,$0b,$0b
1c27: db $0c,$0c,$0d,$0d,$0e,$0f,$10,$10
1c2f: db $11,$12,$13,$14,$15,$15,$16,$17
1c37: db $18,$19,$1b,$1c,$1d,$1e,$20,$22
1c3f: db $23,$24,$26,$28,$2a,$2c,$2d,$2f
1c47: db $31,$33,$35,$38,$3a,$3d,$40,$43
1c4f: db $46,$49,$4c,$4f,$52,$56,$5a,$5e
1c57: db $62,$66,$6b,$6f,$73,$77,$7b,$7f

1e3f: db $00,$04,$08,$0e,$14,$1a,$20,$28
1e47: db $30,$38,$40,$48,$50,$5a,$64,$6e
1e4f: db $78,$82,$8c,$96,$a0,$a8,$b0,$b8
1e57: db $c0,$c8,$d0,$d6,$dc,$e0,$e4,$e8
1e5f: db $ec,$f0,$f4,$f6,$f8,$fa,$fc,$fe
1e67: db $fe,$fe

1e69: db $00,$20,$38,$50,$68,$80,$90,$a0
1e71: db $b0,$c0,$d0,$e0,$e8,$f0,$f0,$f8
1e79: db $ff,$f8,$f4,$f0,$e8,$e0,$d0,$c0
1e81: db $b0,$a0,$90,$80,$68,$50,$38,$20

1e89: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

1e91: db $7f,$00,$00,$00,$00,$00,$00,$00

1e99: dw $3c9f
1e9b: dw $52b2
1e9d: dw $45af
1e9f: dw $89c7
1ea1: dw $7f10
1ea3: dw $9de0
1ea5: dw $1fdc
1ea7: dw $1661
1ea9: dw $c939
1eab: dw $eb9c
1ead: dw $0857
1eaf: dw $f866
1eb1: dw $245a
1eb3: dw $0ebf
1eb5: dw $153e
1eb7: dw $db4b
1eb9: dw $f5ab
1ebb: dw $0c31
1ebd: dw $0243
1ebf: dw $de55
1ec1: dw $da41
1ec3: dw $aebd
1ec5: dw $b019
1ec7: dw $5748
1ec9: dw $a3ba
1ecb: dw $0b36
1ecd: dw $dff9
1ecf: dw $a817
1ed1: dw $0c04
1ed3: dw $91e0
1ed5: dw $5d18
1ed7: dw $d3dd
1ed9: dw $8a28
1edb: dw $11f2
1edd: dw $6f59
1edf: dw $0a06
1ee1: dw $2a34
1ee3: dw $ac79
1ee5: dw $a75e
1ee7: dw $c683
1ee9: dw $c139
1eeb: dw $3ab4
1eed: dw $fe3f
1eef: dw $ef4f
1ef1: dw $001f
1ef3: dw $9930
1ef5: dw $284c
1ef7: dw $ed83
1ef9: dw $2f8a
1efb: dw $662c
1efd: dw $d63f
1eff: dw $b76c
1f01: dw $2249
1f03: dw $65bc
1f05: dw $cffa
1f07: dw $b102
1f09: dw $f046
1f0b: dw $d79a
1f0d: dw $0fe2
1f0f: dw $c511
1f11: dw $f674
1f13: dw $2c7a
1f15: dw $fb8f
1f17: dw $6a19
1f19: dw $ffe5
1f1b: dw $feee
1f1d: dw $3430
1f1f: dw $797f
1f21: dw $2a30
1f23: dw $ffff
1f25: dw $dcee
1f27: dw $28f2
1f29: dw $3730
1f2b: dw $717f
1f2d: dw $f3fb
1f2f: dw $1430
1f31: dw $ffcd
1f33: dw $dcee
1f35: dw $2d30
1f37: dw $707f
1f39: dw $f4fb
1f3b: dw $1130
1f3d: dw $ffc9
1f3f: dw $f6ee
1f41: dw $2830
1f43: dw $787f
1f45: dw $eeff
1f47: dw $edf6
1f49: dw $fb8a
1f4b: dw $30eb
1f4d: dw $7f48
1f4f: dw $ff78
1f51: dw $f6ee
1f53: dw $7730
1f55: dw $757f
1f57: dw $eeff
1f59: dw $edf6
1f5b: dw $fb8a
1f5d: dw $36f1
1f5f: dw $7d27
1f61: dw $b67f
1f63: dw $ffd4
1f65: dw $f6ee
1f67: dw $8bed
1f69: dw $3333
1f6b: dw $7f7d
1f6d: dw $7fb3
1f6f: dw $ff54
1f71: dw $f6ee
1f73: dw $6230
1f75: dw $757f
1f77: dw $eeff
1f79: dw $30fe
1f7b: dw $7d2b
1f7d: dw $ff7b
1f7f: dw $feee
1f81: dw $96e0
1f83: dw $2b30
1f85: dw $7b7d
1f87: dw $eeff
1f89: dw $30f4
1f8b: dw $7f21
1f8d: dw $ff78
1f8f: dw $f6ee
1f91: dw $4b30
1f93: dw $757f
1f95: dw $eeff
1f97: dw $30f2
