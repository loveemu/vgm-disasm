; Ganbare Goemon 3

0cb8: e4 2c     mov   a,$2c
0cba: d0 06     bne   $0cc2
0cbc: 8f 04 2c  mov   $2c,#$04
0cbf: 8f 08 2d  mov   $2d,#$08
0cc2: 6f        ret

0cc3: e4 2c     mov   a,$2c
0cc5: f0 fb     beq   $0cc2
0cc7: 78 ff 2d  cmp   $2d,#$ff
0cca: f0 f6     beq   $0cc2
0ccc: 8f ff 2d  mov   $2d,#$ff
0ccf: 6f        ret

0cd0: 8f 3f 10  mov   $10,#$3f
0cd3: 8f 00 0e  mov   $0e,#$00
0cd6: 22 1f     set1  $1f
0cd8: e8 4c     mov   a,#$4c
0cda: 5f d7 0e  jmp   $0ed7

0cdd: 32 1f     clr1  $1f
0cdf: e4 0f     mov   a,$0f
0ce1: 78 95 d0  cmp   $d0,#$95
0ce4: b0 02     bcs   $0ce8
0ce6: 28 3f     and   a,#$3f
0ce8: c4 0e     mov   $0e,a
0cea: 6f        ret

0ceb: 02 1f     set0  $1f
0ced: 6f        ret

0cee: 12 1f     clr0  $1f
0cf0: 6f        ret

0cf1: 3f d1 1a  call  $1ad1
0cf4: 8f 00 1c  mov   $1c,#$00
0cf7: 52 1f     clr2  $1f
0cf9: 8f 00 04  mov   $04,#$00
0cfc: 8f 80 05  mov   $05,#$80
0cff: 8d 10     mov   y,#$10
0d01: f6 8f 01  mov   a,$018f+y
0d04: 28 01     and   a,#$01
0d06: d0 09     bne   $0d11
0d08: 09 05 04  or    ($04),($05)
0d0b: d6 ce 00  mov   $00ce+y,a
0d0e: d6 8e 01  mov   $018e+y,a
0d11: 4b 05     lsr   $05
0d13: dc        dec   y
0d14: fe eb     dbnz  y,$0d01
0d16: e4 04     mov   a,$04
0d18: 5f 0d 10  jmp   $100d

0d1b: 8f 00 26  mov   $26,#$00
0d1e: f2 1f     clr7  $1f
0d20: 8f 00 f1  mov   $f1,#$00
0d23: 8f 20 fa  mov   $fa,#$20
0d26: 8f 01 f1  mov   $f1,#$01
0d29: e8 7f     mov   a,#$7f
0d2b: 8f 0c f2  mov   $f2,#$0c
0d2e: c4 f3     mov   $f3,a             ; MVOL(L)
0d30: 8f 1c f2  mov   $f2,#$1c
0d33: c4 f3     mov   $f3,a             ; MVOL(R)
0d35: 3f d1 1a  call  $1ad1
0d38: e8 00     mov   a,#$00
0d3a: c4 1c     mov   $1c,a
0d3c: c4 2a     mov   $2a,a
0d3e: 52 1f     clr2  $1f
0d40: 32 1f     clr1  $1f
0d42: 8d 10     mov   y,#$10
0d44: d6 ce 00  mov   $00ce+y,a
0d47: d6 9f 01  mov   $019f+y,a
0d4a: d6 8e 01  mov   $018e+y,a
0d4d: dc        dec   y
0d4e: fe f4     dbnz  y,$0d44
0d50: e8 ff     mov   a,#$ff
0d52: 5f 0d 10  jmp   $100d

0d55: e4 1c     mov   a,$1c
0d57: d0 0f     bne   $0d68
0d59: dd        mov   a,y
0d5a: 80        setc
0d5b: a8 eb     sbc   a,#$eb
0d5d: 5d        mov   x,a
0d5e: f5 81 0c  mov   a,$0c81+x
0d61: c4 1e     mov   $1e,a
0d63: c4 1d     mov   $1d,a
0d65: 8f ff 1c  mov   $1c,#$ff
0d68: 6f        ret

0d69: fd        mov   y,a
0d6a: 80        setc
0d6b: a8 e5     sbc   a,#$e5
0d6d: 90 f9     bcc   $0d68
0d6f: 1c        asl   a
0d70: 5d        mov   x,a
0d71: 1f a2 0c  jmp   ($0ca2+x)

0d74: 68 9d     cmp   a,#$9d
0d76: b0 07     bcs   $0d7f
0d78: 68 02     cmp   a,#$02
0d7a: 90 ec     bcc   $0d68
0d7c: 5f d7 0e  jmp   $0ed7

0d7f: 68 f0     cmp   a,#$f0
0d81: 90 e6     bcc   $0d69
0d83: 68 ff     cmp   a,#$ff
0d85: d0 03     bne   $0d8a
0d87: 5f 5b 0e  jmp   $0e5b

0d8a: 28 0f     and   a,#$0f
0d8c: 1c        asl   a
0d8d: fd        mov   y,a
0d8e: f6 84 0c  mov   a,$0c84+y
0d91: c4 2e     mov   $2e,a
0d93: f6 85 0c  mov   a,$0c85+y
0d96: c4 2f     mov   $2f,a
0d98: 5f 96 0e  jmp   $0e96

0d9b: e2 1f     set7  $1f
0d9d: 8f ff f7  mov   $f7,#$ff
0da0: 6f        ret

0da1: 68 4a     cmp   a,#$4a
0da3: b0 fb     bcs   $0da0
0da5: 8d 5b     mov   y,#$5b
0da7: 64 27     cmp   a,$27
0da9: d0 04     bne   $0daf
0dab: e2 2a     set7  $2a
0dad: 2f 07     bra   $0db6
0daf: 64 28     cmp   a,$28
0db1: d0 b5     bne   $0d68
0db3: c2 2a     set6  $2a
0db5: fc        inc   y
0db6: cb 09     mov   $09,y
0db8: 8f 01 0c  mov   $0c,#$01
0dbb: c4 0d     mov   $0d,a
0dbd: 8f 72 04  mov   $04,#$72
0dc0: 8f 0a 05  mov   $05,#$0a
0dc3: 5f 03 0f  jmp   $0f03

0dc6: eb f5     mov   y,$f5
0dc8: d0 fc     bne   $0dc6
0dca: cb f5     mov   $f5,y
0dcc: eb f6     mov   y,$f6
0dce: cb 2b     mov   $2b,y
0dd0: 68 fd     cmp   a,#$fd
0dd2: f0 c7     beq   $0d9b
0dd4: 68 ff     cmp   a,#$ff
0dd6: f0 63     beq   $0e3b
0dd8: 8f 01 26  mov   $26,#$01
0ddb: ad 09     cmp   y,#$09
0ddd: b0 05     bcs   $0de4
0ddf: 8f 00 28  mov   $28,#$00
0de2: 2f 20     bra   $0e04
0de4: 7e 27     cmp   y,$27
0de6: f0 04     beq   $0dec
0de8: 7e 28     cmp   y,$28
0dea: d0 04     bne   $0df0
0dec: e2 1f     set7  $1f
0dee: 2f 08     bra   $0df8
0df0: e4 2a     mov   a,$2a
0df2: 1c        asl   a
0df3: 90 0f     bcc   $0e04
0df5: 1c        asl   a
0df6: 90 1d     bcc   $0e15
0df8: 8f 80 29  mov   $29,#$80
0dfb: 8f ff 2e  mov   $2e,#$ff
0dfe: 8f 3e 2f  mov   $2f,#$3e
0e01: 5f 4e 0e  jmp   $0e4e

0e04: cb 27     mov   $27,y
0e06: e2 2a     set7  $2a
0e08: 8f ff 2e  mov   $2e,#$ff
0e0b: 8f 3e 2f  mov   $2f,#$3e
0e0e: cd 02     mov   x,#$02
0e10: 8f 3f 04  mov   $04,#$3f
0e13: 2f 0f     bra   $0e24
0e15: cb 28     mov   $28,y
0e17: c2 2a     set6  $2a
0e19: 8f ff 2e  mov   $2e,#$ff
0e1c: 8f 48 2f  mov   $2f,#$48
0e1f: cd 06     mov   x,#$06
0e21: 8f 49 04  mov   $04,#$49
0e24: dd        mov   a,y
0e25: 1c        asl   a
0e26: fd        mov   y,a
0e27: f6 72 05  mov   a,$0572+y
0e2a: d5 6c 05  mov   $056c+x,a
0e2d: f6 73 05  mov   a,$0573+y
0e30: 60        clrc
0e31: 84 04     adc   a,$04
0e33: d5 6d 05  mov   $056d+x,a
0e36: 8f 08 29  mov   $29,#$08
0e39: 2f 13     bra   $0e4e
0e3b: c4 26     mov   $26,a
0e3d: 8f 00 29  mov   $29,#$00
0e40: 3f f4 0c  call  $0cf4
0e43: 8f 5c f2  mov   $f2,#$5c
0e46: c4 f3     mov   $f3,a             ; KOF
0e48: 8f 00 2e  mov   $2e,#$00
0e4b: 8f 35 2f  mov   $2f,#$35
0e4e: 8f ff f7  mov   $f7,#$ff
0e51: 8f 00 f1  mov   $f1,#$00
0e54: 8f 1f fa  mov   $fa,#$1f
0e57: 8f 01 f1  mov   $f1,#$01
0e5a: 6f        ret

0e5b: e8 cc     mov   a,#$cc
0e5d: 64 f4     cmp   a,$f4
0e5f: d0 fa     bne   $0e5b
0e61: 2f 1f     bra   $0e82
0e63: eb f4     mov   y,$f4
0e65: d0 fc     bne   $0e63
0e67: 7e f4     cmp   y,$f4
0e69: 30 13     bmi   $0e7e
0e6b: d0 fa     bne   $0e67
0e6d: 7e f4     cmp   y,$f4
0e6f: d0 f6     bne   $0e67
0e71: e4 f5     mov   a,$f5
0e73: cb f4     mov   $f4,y
0e75: d7 04     mov   ($04)+y,a
0e77: fc        inc   y
0e78: d0 ed     bne   $0e67
0e7a: ab 05     inc   $05
0e7c: 2f e9     bra   $0e67
0e7e: 7e f4     cmp   y,$f4
0e80: 10 e5     bpl   $0e67
0e82: e4 f6     mov   a,$f6
0e84: eb f7     mov   y,$f7
0e86: da 04     movw  $04,ya
0e88: e4 f4     mov   a,$f4
0e8a: eb f5     mov   y,$f5
0e8c: c4 f4     mov   $f4,a
0e8e: dd        mov   a,y
0e8f: 5d        mov   x,a
0e90: d0 d1     bne   $0e63
0e92: 8f 33 f1  mov   $f1,#$33
0e95: 6f        ret

0e96: e4 f5     mov   a,$f5
0e98: 68 cc     cmp   a,#$cc
0e9a: d0 fa     bne   $0e96
0e9c: 64 f5     cmp   a,$f5
0e9e: d0 f6     bne   $0e96
0ea0: c4 f5     mov   $f5,a
0ea2: eb f5     mov   y,$f5
0ea4: d0 fc     bne   $0ea2
0ea6: 7e f5     cmp   y,$f5
0ea8: d0 f6     bne   $0ea0
0eaa: 2f 0a     bra   $0eb6
0eac: 7e f5     cmp   y,$f5
0eae: 30 18     bmi   $0ec8
0eb0: d0 fa     bne   $0eac
0eb2: 7e f5     cmp   y,$f5
0eb4: d0 f6     bne   $0eac
0eb6: e4 f6     mov   a,$f6
0eb8: d7 2e     mov   ($2e)+y,a
0eba: e4 f7     mov   a,$f7
0ebc: cb f5     mov   $f5,y
0ebe: fc        inc   y
0ebf: d7 2e     mov   ($2e)+y,a
0ec1: fc        inc   y
0ec2: d0 e8     bne   $0eac
0ec4: ab 2f     inc   $2f
0ec6: 2f e4     bra   $0eac
0ec8: 7e f5     cmp   y,$f5
0eca: 10 e0     bpl   $0eac
0ecc: e4 f5     mov   a,$f5
0ece: c4 f5     mov   $f5,a
0ed0: e4 f5     mov   a,$f5
0ed2: d0 fc     bne   $0ed0
0ed4: c4 f5     mov   $f5,a
0ed6: 6f        ret

0ed7: c4 0c     mov   $0c,a
0ed9: 68 4a     cmp   a,#$4a
0edb: d0 0e     bne   $0eeb
0edd: 42 1f     set2  $1f
0edf: e8 ff     mov   a,#$ff
0ee1: c5 61 02  mov   $0261,a
0ee4: e8 02     mov   a,#$02
0ee6: c5 63 02  mov   $0263,a
0ee9: 2f eb     bra   $0ed6
0eeb: 68 4b     cmp   a,#$4b
0eed: d0 04     bne   $0ef3
0eef: 52 1f     clr2  $1f
0ef1: 2f e3     bra   $0ed6
0ef3: 8f 00 0d  mov   $0d,#$00
0ef6: 68 4d     cmp   a,#$4d
0ef8: 90 03     bcc   $0efd
0efa: 5f 79 0f  jmp   $0f79

0efd: 8f 4a 04  mov   $04,#$4a
0f00: 8f 0b 05  mov   $05,#$0b
0f03: 8d 03     mov   y,#$03
0f05: cf        mul   ya
0f06: 7a 04     addw  ya,$04
0f08: da 04     movw  $04,ya
0f0a: 8d 00     mov   y,#$00
0f0c: f7 04     mov   a,($04)+y
0f0e: 9f        xcn   a
0f0f: 5c        lsr   a
0f10: 28 07     and   a,#$07
0f12: 5d        mov   x,a
0f13: bc        inc   a
0f14: c4 07     mov   $07,a
0f16: f5 20 10  mov   a,$1020+x
0f19: c4 11     mov   $11,a
0f1b: f7 04     mov   a,($04)+y
0f1d: 28 1f     and   a,#$1f
0f1f: c4 06     mov   $06,a
0f21: cd 0c     mov   x,#$0c
0f23: 78 02 07  cmp   $07,#$02
0f26: f0 36     beq   $0f5e
0f28: b0 4b     bcs   $0f75
0f2a: e4 0c     mov   a,$0c
0f2c: 68 01     cmp   a,#$01
0f2e: d0 14     bne   $0f44
0f30: e4 0d     mov   a,$0d
0f32: 65 af 01  cmp   a,$01af
0f35: d0 06     bne   $0f3d
0f37: cd 0e     mov   x,#$0e
0f39: 0b 11     asl   $11
0f3b: 2f 29     bra   $0f66
0f3d: 65 ad 01  cmp   a,$01ad
0f40: f0 24     beq   $0f66
0f42: 2f 0e     bra   $0f52
0f44: 64 de     cmp   a,$de
0f46: d0 06     bne   $0f4e
0f48: cd 0e     mov   x,#$0e
0f4a: 0b 11     asl   $11
0f4c: 2f 18     bra   $0f66
0f4e: 64 dc     cmp   a,$dc
0f50: f0 14     beq   $0f66
0f52: f5 92 01  mov   a,$0192+x
0f55: 75 90 01  cmp   a,$0190+x
0f58: b0 04     bcs   $0f5e
0f5a: cd 0e     mov   x,#$0e
0f5c: 0b 11     asl   $11
0f5e: e4 06     mov   a,$06
0f60: 75 90 01  cmp   a,$0190+x
0f63: b0 01     bcs   $0f66
0f65: 6f        ret

0f66: fc        inc   y
0f67: f7 04     mov   a,($04)+y
0f69: c4 0a     mov   $0a,a
0f6b: fc        inc   y
0f6c: f7 04     mov   a,($04)+y
0f6e: c4 0b     mov   $0b,a
0f70: 8f 01 08  mov   $08,#$01
0f73: 2f 33     bra   $0fa8
0f75: cd 00     mov   x,#$00
0f77: 2f ed     bra   $0f66
0f79: a8 4d     sbc   a,#$4d
0f7b: fd        mov   y,a
0f7c: f6 31 0c  mov   a,$0c31+y
0f7f: c4 25     mov   $25,a
0f81: 3f d1 1a  call  $1ad1
0f84: e8 08     mov   a,#$08
0f86: 8d ff     mov   y,#$ff
0f88: 78 95 0c  cmp   $0c,#$95
0f8b: b0 04     bcs   $0f91
0f8d: e8 06     mov   a,#$06
0f8f: 8d 3f     mov   y,#$3f
0f91: c4 07     mov   $07,a
0f93: cb 11     mov   $11,y
0f95: 8f 1e 06  mov   $06,#$1e
0f98: 8f 00 0a  mov   $0a,#$00
0f9b: 8f 35 0b  mov   $0b,#$35
0f9e: cd 00     mov   x,#$00
0fa0: d8 1c     mov   $1c,x
0fa2: d8 08     mov   $08,x
0fa4: d8 2c     mov   $2c,x
0fa6: d8 2d     mov   $2d,x
0fa8: 8d 00     mov   y,#$00
0faa: f7 0a     mov   a,($0a)+y
0fac: d4 30     mov   $30+x,a
0fae: fc        inc   y
0faf: f7 0a     mov   a,($0a)+y
0fb1: d4 31     mov   $31+x,a
0fb3: e8 ff     mov   a,#$ff
0fb5: d4 41     mov   $41+x,a
0fb7: bc        inc   a
0fb8: d4 50     mov   $50+x,a
0fba: d4 51     mov   $51+x,a
0fbc: d5 10 01  mov   $0110+x,a
0fbf: d5 11 01  mov   $0111+x,a
0fc2: d5 20 01  mov   $0120+x,a
0fc5: d5 21 01  mov   $0121+x,a
0fc8: d5 30 01  mov   $0130+x,a
0fcb: d5 31 01  mov   $0131+x,a
0fce: d5 40 01  mov   $0140+x,a
0fd1: d5 41 01  mov   $0141+x,a
0fd4: d5 80 02  mov   $0280+x,a
0fd7: d5 81 02  mov   $0281+x,a
0fda: d5 21 02  mov   $0221+x,a
0fdd: d4 90     mov   $90+x,a
0fdf: d5 20 02  mov   $0220+x,a
0fe2: d5 d1 01  mov   $01d1+x,a
0fe5: d5 31 02  mov   $0231+x,a
0fe8: d5 b0 01  mov   $01b0+x,a
0feb: bc        inc   a
0fec: d4 60     mov   $60+x,a
0fee: d4 40     mov   $40+x,a
0ff0: e4 0c     mov   a,$0c
0ff2: d4 d0     mov   $d0+x,a
0ff4: e4 0d     mov   a,$0d
0ff6: d5 a1 01  mov   $01a1+x,a
0ff9: e4 08     mov   a,$08
0ffb: d5 91 01  mov   $0191+x,a
0ffe: e4 06     mov   a,$06
1000: d5 90 01  mov   $0190+x,a
1003: e4 09     mov   a,$09
1005: d5 a0 01  mov   $01a0+x,a
1008: 6e 07 0f  dbnz  $07,$101a
100b: e4 11     mov   a,$11
100d: 0e 10 00  tset1 $0010
1010: 4e 0e 00  tclr1 $000e
1013: 4e 0f 00  tclr1 $000f
1016: 0e 1b 00  tset1 $001b
1019: 6f        ret

101a: 3d        inc   x
101b: 3d        inc   x
101c: fc        inc   y
101d: 5f aa 0f  jmp   $0faa

1020: 40        setp
1021: c0        di
1022: 70 f0     bvs   $1014
1024: 1f 3f 7f  jmp   ($7f3f+x)

1027: ff        stop
1028: e4 fd     mov   a,$fd
102a: f0 fc     beq   $1028
102c: 03 24 12  bbs0  $24,$1041
102f: e4 f4     mov   a,$f4
1031: 64 f4     cmp   a,$f4
1033: d0 fa     bne   $102f
1035: 68 00     cmp   a,#$00
1037: f0 08     beq   $1041
1039: c4 f4     mov   $f4,a
103b: 8f 11 f1  mov   $f1,#$11
103e: 3f 74 0d  call  $0d74
1041: f3 1f 07  bbc7  $1f,$104b
1044: f2 1f     clr7  $1f
1046: e4 2b     mov   a,$2b
1048: 3f a1 0d  call  $0da1
104b: 8f 5c f2  mov   $f2,#$5c
104e: fa 10 f3  mov   ($f3),($10)       ; KOF
1051: 8d ff     mov   y,#$ff
1053: 78 00 26  cmp   $26,#$00
1056: d0 34     bne   $108c
1058: e5 ad 01  mov   a,$01ad
105b: f0 04     beq   $1061
105d: 68 09     cmp   a,#$09
105f: 90 2b     bcc   $108c
1061: e5 af 01  mov   a,$01af
1064: f0 04     beq   $106a
1066: 68 09     cmp   a,#$09
1068: 90 22     bcc   $108c
106a: e4 27     mov   a,$27
106c: f0 0a     beq   $1078
106e: 65 ad 01  cmp   a,$01ad
1071: f0 07     beq   $107a
1073: 65 af 01  cmp   a,$01af
1076: f0 02     beq   $107a
1078: f2 2a     clr7  $2a
107a: e4 28     mov   a,$28
107c: f0 0a     beq   $1088
107e: 65 ad 01  cmp   a,$01ad
1081: f0 07     beq   $108a
1083: 65 af 01  cmp   a,$01af
1086: f0 02     beq   $108a
1088: d2 2a     clr6  $2a
108a: eb 2a     mov   y,$2a
108c: cb f7     mov   $f7,y
108e: e8 10     mov   a,#$10
1090: 9c        dec   a
1091: d0 fd     bne   $1090
1093: 8f 2d f2  mov   $f2,#$2d
1096: c4 f3     mov   $f3,a             ; PMON
1098: 8f 3d f2  mov   $f2,#$3d
109b: c4 f3     mov   $f3,a             ; NON
109d: e4 19     mov   a,$19
109f: f0 04     beq   $10a5
10a1: 8b 19     dec   $19
10a3: 2f 20     bra   $10c5
10a5: 8f 6c f2  mov   $f2,#$6c
10a8: fa 13 f3  mov   ($f3),($13)       ; set FLG
10ab: e4 1a     mov   a,$1a
10ad: f0 16     beq   $10c5
10af: 8b 1a     dec   $1a
10b1: d0 12     bne   $10c5
10b3: 8f 2c f2  mov   $f2,#$2c
10b6: fa 15 f3  mov   ($f3),($15)       ; EVOL(L)
10b9: 8f 3c f2  mov   $f2,#$3c   
10bc: fa 16 f3  mov   ($f3),($16)       ; EVOL(R)
10bf: 8f 0d f2  mov   $f2,#$0d
10c2: fa 17 f3  mov   ($f3),($17)
10c5: e8 00     mov   a,#$00
10c7: 8f 5c f2  mov   $f2,#$5c
10ca: c4 f3     mov   $f3,a             ; KOF
10cc: c4 10     mov   $10,a
10ce: 8f 4c f2  mov   $f2,#$4c
10d1: fa 0e f3  mov   ($f3),($0e)       ; KON
10d4: c4 0e     mov   $0e,a
10d6: 33 1f 07  bbc1  $1f,$10e0
10d9: cd 0c     mov   x,#$0c
10db: 8f 40 11  mov   $11,#$40
10de: 2f 5a     bra   $113a
10e0: 53 1f 1b  bbc2  $1f,$10fe
10e3: e5 63 02  mov   a,$0263
10e6: 9c        dec   a
10e7: d0 12     bne   $10fb
10e9: e8 02     mov   a,#$02
10eb: c5 63 02  mov   $0263,a
10ee: e5 61 02  mov   a,$0261
10f1: 68 e0     cmp   a,#$e0
10f3: 90 09     bcc   $10fe
10f5: 9c        dec   a
10f6: c5 61 02  mov   $0261,a
10f9: 2f 03     bra   $10fe
10fb: c5 63 02  mov   $0263,a
10fe: e4 2d     mov   a,$2d
1100: f0 1b     beq   $111d
1102: 68 ff     cmp   a,#$ff
1104: d0 09     bne   $110f
1106: 8b 2c     dec   $2c
1108: d0 13     bne   $111d
110a: 8f 00 2d  mov   $2d,#$00
110d: 2f 0e     bra   $111d
110f: 8b 2d     dec   $2d
1111: d0 0a     bne   $111d
1113: ab 2c     inc   $2c
1115: 78 28 2c  cmp   $2c,#$28
1118: b0 03     bcs   $111d
111a: 8f 08 2d  mov   $2d,#$08
111d: ab 24     inc   $24
111f: e4 1c     mov   a,$1c
1121: f0 12     beq   $1135
1123: 8b 1d     dec   $1d
1125: d0 0e     bne   $1135
1127: fa 1e 1d  mov   ($1d),($1e)
112a: 8b 1c     dec   $1c
112c: f0 04     beq   $1132
112e: 8b 1c     dec   $1c
1130: d0 03     bne   $1135
1132: 3f f1 0c  call  $0cf1
1135: 8f 01 11  mov   $11,#$01
1138: cd 00     mov   x,#$00
113a: f4 d0     mov   a,$d0+x
113c: f0 5b     beq   $1199
113e: e4 11     mov   a,$11
1140: 24 1b     and   a,$1b
1142: d0 55     bne   $1199
1144: f5 91 01  mov   a,$0191+x
1147: 5c        lsr   a
1148: b0 08     bcs   $1152
114a: 7d        mov   a,x
114b: 5c        lsr   a
114c: 44 24     eor   a,$24
114e: 28 01     and   a,#$01
1150: d0 47     bne   $1199
1152: d8 22     mov   $22,x
1154: 7d        mov   a,x
1155: 1c        asl   a
1156: 1c        asl   a
1157: 1c        asl   a
1158: c4 23     mov   $23,a
115a: f5 91 01  mov   a,$0191+x
115d: c4 20     mov   $20,a
115f: f4 40     mov   a,$40+x
1161: 03 20 0c  bbs0  $20,$1170
1164: 60        clrc
1165: 84 2c     adc   a,$2c
1167: 90 07     bcc   $1170
1169: 60        clrc
116a: 94 41     adc   a,$41+x
116c: d4 40     mov   $40+x,a
116e: 2f 07     bra   $1177
1170: 60        clrc
1171: 94 41     adc   a,$41+x
1173: d4 40     mov   $40+x,a
1175: 90 1a     bcc   $1191
1177: 9b 60     dec   $60+x
1179: f0 05     beq   $1180
117b: 3f 29 13  call  $1329
117e: 2f 14     bra   $1194
1180: 3f dc 14  call  $14dc
1183: a3 20 07  bbs5  $20,$118d
1186: e2 21     set7  $21
1188: 3f e6 13  call  $13e6
118b: 2f 07     bra   $1194
118d: b2 20     clr5  $20
118f: 2f 03     bra   $1194
1191: 3f dd 12  call  $12dd
1194: e4 20     mov   a,$20
1196: d5 91 01  mov   $0191+x,a
1199: e4 26     mov   a,$26
119b: f0 20     beq   $11bd
119d: e4 f5     mov   a,$f5
119f: 68 cc     cmp   a,#$cc
11a1: d0 1a     bne   $11bd
11a3: 64 f5     cmp   a,$f5
11a5: d0 16     bne   $11bd
11a7: 4d        push  x
11a8: e3 26 06  bbs7  $26,$11b1
11ab: 3f 57 12  call  $1257
11ae: ce        pop   x
11af: 2f 1d     bra   $11ce
11b1: fa 11 12  mov   ($12),($11)
11b4: 3f 01 12  call  $1201
11b7: fa 12 11  mov   ($11),($12)
11ba: ce        pop   x
11bb: 2f 11     bra   $11ce
11bd: e4 f5     mov   a,$f5
11bf: 68 fd     cmp   a,#$fd
11c1: 90 0b     bcc   $11ce
11c3: 64 f5     cmp   a,$f5
11c5: d0 07     bne   $11ce
11c7: c4 f5     mov   $f5,a
11c9: 4d        push  x
11ca: 3f c6 0d  call  $0dc6
11cd: ce        pop   x
11ce: 3d        inc   x
11cf: 3d        inc   x
11d0: 0b 11     asl   $11
11d2: f0 03     beq   $11d7
11d4: 5f 3a 11  jmp   $113a

11d7: 8f 00 1b  mov   $1b,#$00
11da: e4 26     mov   a,$26
11dc: d0 03     bne   $11e1
11de: 5f 28 10  jmp   $1028

11e1: e4 f5     mov   a,$f5
11e3: 68 cc     cmp   a,#$cc
11e5: f0 07     beq   $11ee
11e7: e4 fd     mov   a,$fd
11e9: f0 f6     beq   $11e1
11eb: 5f 2c 10  jmp   $102c

11ee: 64 f5     cmp   a,$f5
11f0: d0 ef     bne   $11e1
11f2: e3 26 06  bbs7  $26,$11fb
11f5: 3f 57 12  call  $1257
11f8: 5f 28 10  jmp   $1028

11fb: 3f 01 12  call  $1201
11fe: 5f 28 10  jmp   $1028

1201: c4 f5     mov   $f5,a
1203: eb f5     mov   y,$f5
1205: d0 fc     bne   $1203
1207: 7e f5     cmp   y,$f5
1209: d0 f6     bne   $1201
120b: 2f 0a     bra   $1217
120d: 7e f5     cmp   y,$f5
120f: 30 25     bmi   $1236
1211: d0 fa     bne   $120d
1213: 7e f5     cmp   y,$f5
1215: d0 f6     bne   $120d
1217: e4 f6     mov   a,$f6
1219: 64 f6     cmp   a,$f6
121b: d0 fa     bne   $1217
121d: d7 2e     mov   ($2e)+y,a
121f: e4 f7     mov   a,$f7
1221: 64 f7     cmp   a,$f7
1223: d0 fa     bne   $121f
1225: cb f5     mov   $f5,y
1227: fc        inc   y
1228: d7 2e     mov   ($2e)+y,a
122a: fc        inc   y
122b: d0 e0     bne   $120d
122d: ab 2f     inc   $2f
122f: e4 f5     mov   a,$f5
1231: d0 fc     bne   $122f
1233: c4 f5     mov   $f5,a
1235: 6f        ret

1236: 7e f5     cmp   y,$f5
1238: 10 d3     bpl   $120d
123a: e4 f5     mov   a,$f5
123c: c4 f5     mov   $f5,a
123e: 8f 00 f1  mov   $f1,#$00
1241: 8f 20 fa  mov   $fa,#$20
1244: 8f 01 f1  mov   $f1,#$01
1247: e4 f5     mov   a,$f5
1249: d0 fc     bne   $1247
124b: c4 f5     mov   $f5,a
124d: c4 26     mov   $26,a
124f: 8f 00 f7  mov   $f7,#$00
1252: e4 2b     mov   a,$2b
1254: 5f d7 0e  jmp   $0ed7

1257: c4 f5     mov   $f5,a
1259: eb f4     mov   y,$f4
125b: ad 01     cmp   y,#$01
125d: d0 fa     bne   $1259
125f: 7e f4     cmp   y,$f4
1261: d0 f4     bne   $1257
1263: 8f 00 f5  mov   $f5,#$00
1266: f3 29 08  bbc7  $29,$1271
1269: 2f 3e     bra   $12a9
126b: 7e f4     cmp   y,$f4
126d: 30 49     bmi   $12b8
126f: d0 fa     bne   $126b
1271: e4 f5     mov   a,$f5
1273: d7 2e     mov   ($2e)+y,a
1275: fc        inc   y
1276: e4 f6     mov   a,$f6
1278: d7 2e     mov   ($2e)+y,a
127a: e4 f7     mov   a,$f7
127c: dc        dec   y
127d: cb f4     mov   $f4,y
127f: fc        inc   y
1280: fc        inc   y
1281: d7 2e     mov   ($2e)+y,a
1283: fc        inc   y
1284: d0 e5     bne   $126b
1286: 60        clrc
1287: 98 ff 2e  adc   $2e,#$ff
128a: 98 00 2f  adc   $2f,#$00
128d: e4 f4     mov   a,$f4
128f: d0 fc     bne   $128d
1291: c4 f4     mov   $f4,a
1293: e4 29     mov   a,$29
1295: 30 0b     bmi   $12a2
1297: f0 09     beq   $12a2
1299: 8b 29     dec   $29
129b: d0 05     bne   $12a2
129d: 23 1f 02  bbs1  $1f,$12a2
12a0: e2 1f     set7  $1f
12a2: 6f        ret

12a3: 7e f4     cmp   y,$f4
12a5: 30 0b     bmi   $12b2
12a7: d0 fa     bne   $12a3
12a9: cb f4     mov   $f4,y
12ab: fc        inc   y
12ac: fc        inc   y
12ad: fc        inc   y
12ae: d0 f3     bne   $12a3
12b0: 2f d4     bra   $1286
12b2: 7e f4     cmp   y,$f4
12b4: 10 ed     bpl   $12a3
12b6: 2f 04     bra   $12bc
12b8: 7e f4     cmp   y,$f4
12ba: 10 af     bpl   $126b
12bc: e4 f4     mov   a,$f4
12be: c4 f4     mov   $f4,a
12c0: 8f 00 f1  mov   $f1,#$00
12c3: 8f 20 fa  mov   $fa,#$20
12c6: 8f 01 f1  mov   $f1,#$01
12c9: e4 f4     mov   a,$f4
12cb: d0 fc     bne   $12c9
12cd: c4 f4     mov   $f4,a
12cf: c4 26     mov   $26,a
12d1: e4 29     mov   a,$29
12d3: 30 07     bmi   $12dc
12d5: f0 05     beq   $12dc
12d7: 23 1f 02  bbs1  $1f,$12dc
12da: e2 1f     set7  $1f
12dc: 6f        ret

12dd: 12 21     clr0  $21
12df: f4 80     mov   a,$80+x
12e1: f0 1d     beq   $1300
12e3: 93 20 05  bbc4  $20,$12eb
12e6: 3f 52 1c  call  $1c52
12e9: 2f 13     bra   $12fe
12eb: f4 81     mov   a,$81+x
12ed: d0 11     bne   $1300
12ef: f4 e0     mov   a,$e0+x
12f1: 60        clrc
12f2: 95 b0 02  adc   a,$02b0+x
12f5: d4 e0     mov   $e0+x,a
12f7: f4 e1     mov   a,$e1+x
12f9: 95 b1 02  adc   a,$02b1+x
12fc: d4 e1     mov   $e1+x,a
12fe: 02 21     set0  $21
1300: fb e1     mov   y,$e1+x
1302: f4 e0     mov   a,$e0+x
1304: da 0a     movw  $0a,ya
1306: f5 20 02  mov   a,$0220+x
1309: f0 07     beq   $1312
130b: f4 a0     mov   a,$a0+x
130d: d0 03     bne   $1312
130f: 3f 98 1c  call  $1c98
1312: f5 d1 01  mov   a,$01d1+x
1315: f0 0a     beq   $1321
1317: 60        clrc
1318: 94 d1     adc   a,$d1+x
131a: d4 d1     mov   $d1+x,a
131c: 90 03     bcc   $1321
131e: 5f dc 1c  jmp   $1cdc

1321: 13 21 b8  bbc0  $21,$12dc
1324: ba 0a     movw  ya,$0a
1326: 5f 5c 16  jmp   $165c

1329: 8f 00 21  mov   $21,#$00
132c: f5 31 02  mov   a,$0231+x
132f: 68 7f     cmp   a,#$7f
1331: b0 2f     bcs   $1362
1333: fd        mov   y,a
1334: f4 60     mov   a,$60+x
1336: 68 01     cmp   a,#$01
1338: f0 25     beq   $135f
133a: ad 7d     cmp   y,#$7d
133c: b0 24     bcs   $1362
133e: f4 61     mov   a,$61+x
1340: f0 20     beq   $1362
1342: 9b 61     dec   $61+x
1344: d0 1c     bne   $1362
1346: f5 c1 01  mov   a,$01c1+x
1349: 10 14     bpl   $135f
134b: e8 05     mov   a,#$05
134d: 04 23     or    a,$23
134f: c4 f2     mov   $f2,a
1351: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
1354: bc        inc   a
1355: bc        inc   a
1356: c4 f2     mov   $f2,a
1358: f5 c1 01  mov   a,$01c1+x
135b: c4 f3     mov   $f3,a             ; set GAIN
135d: 2f 03     bra   $1362
135f: 09 11 10  or    ($10),($11)
1362: f4 80     mov   a,$80+x
1364: f0 31     beq   $1397
1366: 93 20 05  bbc4  $20,$136e
1369: 3f 52 1c  call  $1c52
136c: 2f 27     bra   $1395
136e: f4 81     mov   a,$81+x
1370: f0 04     beq   $1376
1372: 9b 81     dec   $81+x
1374: 2f 21     bra   $1397
1376: 9b 80     dec   $80+x
1378: d0 0c     bne   $1386
137a: f5 c1 02  mov   a,$02c1+x
137d: d4 e1     mov   $e1+x,a
137f: f5 c0 02  mov   a,$02c0+x
1382: d4 e0     mov   $e0+x,a
1384: 2f 0f     bra   $1395
1386: f4 e0     mov   a,$e0+x
1388: 60        clrc
1389: 95 b0 02  adc   a,$02b0+x
138c: d4 e0     mov   $e0+x,a
138e: f4 e1     mov   a,$e1+x
1390: 95 b1 02  adc   a,$02b1+x
1393: d4 e1     mov   $e1+x,a
1395: 02 21     set0  $21
1397: fb e1     mov   y,$e1+x
1399: f4 e0     mov   a,$e0+x
139b: da 0a     movw  $0a,ya
139d: f5 20 02  mov   a,$0220+x
13a0: f0 2b     beq   $13cd
13a2: f4 a0     mov   a,$a0+x
13a4: f0 04     beq   $13aa
13a6: 9b a0     dec   $a0+x
13a8: 2f 23     bra   $13cd
13aa: f4 a1     mov   a,$a1+x
13ac: f0 1c     beq   $13ca
13ae: 9b a1     dec   $a1+x
13b0: d0 05     bne   $13b7
13b2: f5 20 02  mov   a,$0220+x
13b5: 2f 10     bra   $13c7
13b7: f5 d0 02  mov   a,$02d0+x
13ba: 60        clrc
13bb: 95 e0 02  adc   a,$02e0+x
13be: d5 d0 02  mov   $02d0+x,a
13c1: f5 d1 02  mov   a,$02d1+x
13c4: 95 e1 02  adc   a,$02e1+x
13c7: d5 d1 02  mov   $02d1+x,a
13ca: 3f 98 1c  call  $1c98
13cd: f5 d1 01  mov   a,$01d1+x
13d0: f0 0c     beq   $13de
13d2: 60        clrc
13d3: 94 d1     adc   a,$d1+x
13d5: d4 d1     mov   $d1+x,a
13d7: 90 05     bcc   $13de
13d9: 3f dc 1c  call  $1cdc
13dc: 2f 08     bra   $13e6
13de: 13 21 05  bbc0  $21,$13e6
13e1: ba 0a     movw  ya,$0a
13e3: 3f 5c 16  call  $165c
13e6: f4 70     mov   a,$70+x
13e8: f0 1e     beq   $1408
13ea: e2 21     set7  $21
13ec: c4 04     mov   $04,a
13ee: f5 01 02  mov   a,$0201+x
13f1: c4 05     mov   $05,a
13f3: f5 a1 02  mov   a,$02a1+x
13f6: fd        mov   y,a
13f7: f5 a0 02  mov   a,$02a0+x
13fa: 3f 23 1c  call  $1c23
13fd: d5 a0 02  mov   $02a0+x,a
1400: dd        mov   a,y
1401: d5 a1 02  mov   $02a1+x,a
1404: e4 04     mov   a,$04
1406: d4 70     mov   $70+x,a
1408: f5 c0 01  mov   a,$01c0+x
140b: f0 19     beq   $1426
140d: c4 04     mov   $04,a
140f: f5 50 02  mov   a,$0250+x
1412: c4 05     mov   $05,a
1414: fb 41     mov   y,$41+x
1416: f5 51 02  mov   a,$0251+x
1419: 3f 23 1c  call  $1c23
141c: d5 51 02  mov   $0251+x,a
141f: db 41     mov   $41+x,y
1421: e4 04     mov   a,$04
1423: d5 c0 01  mov   $01c0+x,a
1426: f4 71     mov   a,$71+x
1428: f0 1e     beq   $1448
142a: e2 21     set7  $21
142c: c4 04     mov   $04,a
142e: f5 00 02  mov   a,$0200+x
1431: c4 05     mov   $05,a
1433: f5 91 02  mov   a,$0291+x
1436: fd        mov   y,a
1437: f5 90 02  mov   a,$0290+x
143a: 3f 23 1c  call  $1c23
143d: d5 90 02  mov   $0290+x,a
1440: dd        mov   a,y
1441: d5 91 02  mov   $0291+x,a
1444: e4 04     mov   a,$04
1446: d4 71     mov   $71+x,a
1448: e3 21 05  bbs7  $21,$1450
144b: e4 1c     mov   a,$1c
144d: d0 01     bne   $1450
144f: 6f        ret

1450: f5 b1 01  mov   a,$01b1+x
1453: f0 fa     beq   $144f
1455: f5 10 01  mov   a,$0110+x
1458: c4 08     mov   $08,a
145a: f5 11 01  mov   a,$0111+x
145d: c4 09     mov   $09,a
145f: f5 20 01  mov   a,$0120+x
1462: c4 0a     mov   $0a,a
1464: f5 21 01  mov   a,$0121+x
1467: c4 0b     mov   $0b,a
1469: f5 b1 01  mov   a,$01b1+x
146c: 8d 00     mov   y,#$00
146e: 7a 08     addw  ya,$08
1470: 7a 0a     addw  ya,$0a
1472: 30 2f     bmi   $14a3
1474: ad 00     cmp   y,#$00
1476: d0 04     bne   $147c
1478: 08 00     or    a,#$00
147a: 10 02     bpl   $147e
147c: e8 7f     mov   a,#$7f
147e: fd        mov   y,a
147f: f5 91 02  mov   a,$0291+x
1482: cf        mul   ya
1483: e4 1c     mov   a,$1c
1485: f0 04     beq   $148b
1487: 03 20 12  bbs0  $20,$149c
148a: cf        mul   ya
148b: 53 1f 0e  bbc2  $1f,$149c
148e: c8 0c     cmp   x,#$0c
1490: f0 0a     beq   $149c
1492: c8 0e     cmp   x,#$0e
1494: f0 06     beq   $149c
1496: e5 61 02  mov   a,$0261
1499: f0 01     beq   $149c
149b: cf        mul   ya
149c: dd        mov   a,y
149d: 80        setc
149e: b5 b0 01  sbc   a,$01b0+x
14a1: b0 02     bcs   $14a5
14a3: e8 00     mov   a,#$00
14a5: fd        mov   y,a
14a6: f6 fa 1d  mov   a,$1dfa+y
14a9: c4 05     mov   $05,a
14ab: e8 14     mov   a,#$14
14ad: 03 1f 09  bbs0  $1f,$14b9
14b0: f5 a1 02  mov   a,$02a1+x
14b3: 68 29     cmp   a,#$29
14b5: 90 02     bcc   $14b9
14b7: e8 28     mov   a,#$28
14b9: c4 04     mov   $04,a
14bb: fd        mov   y,a
14bc: f6 9a 1e  mov   a,$1e9a+y
14bf: eb 05     mov   y,$05
14c1: cf        mul   ya
14c2: e8 00     mov   a,#$00
14c4: 04 23     or    a,$23
14c6: c4 f2     mov   $f2,a
14c8: cb f3     mov   $f3,y             ; set VOL(L)
14ca: bc        inc   a
14cb: c4 f2     mov   $f2,a
14cd: e8 28     mov   a,#$28
14cf: 80        setc
14d0: a4 04     sbc   a,$04
14d2: fd        mov   y,a
14d3: f6 9a 1e  mov   a,$1e9a+y
14d6: eb 05     mov   y,$05
14d8: cf        mul   ya
14d9: cb f3     mov   $f3,y             ; set VOL(R)
14db: 6f        ret

14dc: 3f 33 15  call  $1533
14df: c4 08     mov   $08,a
14e1: 28 7f     and   a,#$7f
14e3: 68 60     cmp   a,#$60
14e5: 90 55     bcc   $153c
14e7: e4 08     mov   a,$08
14e9: 80        setc
14ea: a8 e0     sbc   a,#$e0
14ec: b0 36     bcs   $1524
14ee: 68 82     cmp   a,#$82
14f0: b0 09     bcs   $14fb
14f2: 22 20     set1  $20
14f4: 5c        lsr   a
14f5: 90 e5     bcc   $14dc
14f7: 32 20     clr1  $20
14f9: 2f e1     bra   $14dc
14fb: d0 03     bne   $1500
14fd: 5f 88 1b  jmp   $1b88

1500: 68 90     cmp   a,#$90
1502: 90 16     bcc   $151a
1504: 28 0f     and   a,#$0f
1506: 1c        asl   a
1507: 1c        asl   a
1508: 8d 00     mov   y,#$00
150a: 68 20     cmp   a,#$20
150c: 90 03     bcc   $1511
150e: 08 e0     or    a,#$e0
1510: dc        dec   y
1511: d5 80 02  mov   $0280+x,a
1514: dd        mov   a,y
1515: d5 81 02  mov   $0281+x,a
1518: 2f c2     bra   $14dc
151a: a2 20     set5  $20
151c: 3f 35 0d  call  $0d35
151f: cd 00     mov   x,#$00
1521: d8 11     mov   $11,x
1523: 6f        ret

; dispatch vcmd
1524: 1c        asl   a
1525: fd        mov   y,a
1526: f6 99 16  mov   a,$1699+y
1529: 2d        push  a
152a: f6 98 16  mov   a,$1698+y
152d: 2d        push  a
152e: f6 d8 16  mov   a,$16d8+y
1531: f0 08     beq   $153b
; read a byte from voice stream
1533: e7 30     mov   a,($30+x)
1535: bb 30     inc   $30+x
1537: d0 02     bne   $153b
1539: bb 31     inc   $31+x
153b: 6f        ret

; vcmd 00-5f - note
; vcmd 80-df - note without length
; $08 = vcmd (note number + flag bit for length)
153c: 33 20 03  bbc1  $20,$1542
153f: 09 11 10  or    ($10),($11)
1542: f3 08 05  bbc7  $08,$154a         ; if vcmd >= $80
1545: f5 30 02  mov   a,$0230+x         ;   reuse last length, skip arg1
1548: 2f 06     bra   $1550
154a: 3f 33 15  call  $1533             ; get arg1 (length in ticks)
154d: d5 30 02  mov   $0230+x,a         ; save note length
1550: d4 60     mov   $60+x,a
1552: f5 31 02  mov   a,$0231+x
1555: 68 7f     cmp   a,#$7f
1557: f0 06     beq   $155f
1559: 09 11 0e  or    ($0e),($11)
155c: 09 11 0f  or    ($0f),($11)
155f: 3f 33 15  call  $1533             ; get arg2 (00-7f: note duration, 80-ff: note volume)
1562: 08 00     or    a,#$00
1564: 30 06     bmi   $156c
1566: d5 31 02  mov   $0231+x,a         ; save note duration
1569: 3f 33 15  call  $1533             ; get arg3 (note volume) (only available if arg2 < 0x80)
156c: 28 7f     and   a,#$7f
156e: d5 b1 01  mov   $01b1+x,a         ; save note volume
1571: d0 08     bne   $157b
1573: e4 11     mov   a,$11
1575: 4e 0e 00  tclr1 $000e
1578: 4e 0f 00  tclr1 $000f
157b: 33 20 0a  bbc1  $20,$1588         ; skip instrument loading for rhythm channel
; rhythm channel: load sample
157e: e4 08     mov   a,$08
1580: 28 7f     and   a,#$7f
1582: 3f c5 17  call  $17c5             ; load instrument
1585: 8f 3c 08  mov   $08,#$3c          ; note number = 60
; calc actual note length
1588: f5 30 02  mov   a,$0230+x         ; note length
158b: fd        mov   y,a
158c: f5 31 02  mov   a,$0231+x         ; note duration
158f: 68 7f     cmp   a,#$7f
1591: f0 06     beq   $1599             ; duration $7f means full length
1593: 1c        asl   a
1594: cf        mul   ya                ; actual length = (length * (duration << 1)) >> 8
1595: dd        mov   a,y
1596: d0 01     bne   $1599
1598: fc        inc   y                 ; actual length = 1 if it was zero
1599: db 61     mov   $61+x,y           ; save actual note length
159b: fb e1     mov   y,$e1+x
159d: f4 e0     mov   a,$e0+x
159f: da 0c     movw  $0c,ya
15a1: f5 31 01  mov   a,$0131+x
15a4: c4 05     mov   $05,a
15a6: f5 30 01  mov   a,$0130+x
15a9: c4 04     mov   $04,a             ; $04/5 = repeat-triggered tuning #1
15ab: f5 41 01  mov   a,$0141+x
15ae: c4 07     mov   $07,a
15b0: f5 40 01  mov   a,$0140+x
15b3: c4 06     mov   $06,a             ; $06/7 = repeat-triggered tuning #2
15b5: f5 81 02  mov   a,$0281+x
15b8: c4 0b     mov   $0b,a
15ba: f5 80 02  mov   a,$0280+x
15bd: c4 0a     mov   $0a,a             ; $0a/b = tuning
15bf: e4 08     mov   a,$08             ; note number
15c1: 60        clrc
15c2: 95 21 02  adc   a,$0221+x         ; per-voice transpose
15c5: fd        mov   y,a
15c6: e8 00     mov   a,#$00
15c8: 7a 04     addw  ya,$04            ; add repeat-triggered tuning #1
15ca: 7a 06     addw  ya,$06            ; add repeat-triggered tuning #2
15cc: 7a 0a     addw  ya,$0a            ; add tuning
15ce: d4 e0     mov   $e0+x,a           ; save intermediate note number (fraction)
15d0: dd        mov   a,y
15d1: 28 7f     and   a,#$7f            ; note number &= 0x7f
15d3: d4 e1     mov   $e1+x,a           ; save intermediate note number (integer)
15d5: f5 20 02  mov   a,$0220+x
15d8: f0 26     beq   $1600
15da: e8 00     mov   a,#$00
15dc: d4 b0     mov   $b0+x,a
15de: d4 c1     mov   $c1+x,a
15e0: f5 10 02  mov   a,$0210+x
15e3: d4 a0     mov   $a0+x,a
15e5: f5 11 02  mov   a,$0211+x
15e8: d4 a1     mov   $a1+x,a
15ea: f0 0b     beq   $15f7
15ec: f5 e0 02  mov   a,$02e0+x
15ef: d5 d0 02  mov   $02d0+x,a
15f2: f5 e1 02  mov   a,$02e1+x
15f5: 2f 06     bra   $15fd
15f7: d5 d0 02  mov   $02d0+x,a
15fa: f5 20 02  mov   a,$0220+x
15fd: d5 d1 02  mov   $02d1+x,a
1600: f5 c1 01  mov   a,$01c1+x
1603: 10 18     bpl   $161d
1605: e8 05     mov   a,#$05
1607: 04 23     or    a,$23
1609: c4 f2     mov   $f2,a
160b: f5 70 02  mov   a,$0270+x
160e: c4 f3     mov   $f3,a             ; set ADSR(1)
1610: 30 0b     bmi   $161d
1612: e8 07     mov   a,#$07
1614: 04 23     or    a,$23
1616: c4 f2     mov   $f2,a
1618: f5 71 02  mov   a,$0271+x
161b: c4 f3     mov   $f3,a             ; set GAIN
161d: f4 90     mov   a,$90+x
161f: d4 80     mov   $80+x,a
1621: f0 2c     beq   $164f
1623: 83 20 17  bbs4  $20,$163d
1626: f4 91     mov   a,$91+x
1628: d4 81     mov   $81+x,a
162a: f4 e0     mov   a,$e0+x
162c: d5 c0 02  mov   $02c0+x,a
162f: f4 e1     mov   a,$e1+x
1631: d5 c1 02  mov   $02c1+x,a
1634: 80        setc
1635: b5 60 02  sbc   a,$0260+x
1638: d4 e1     mov   $e1+x,a
163a: fd        mov   y,a
163b: 2f 1d     bra   $165a
163d: f4 e1     mov   a,$e1+x
163f: d5 c1 02  mov   $02c1+x,a
1642: f4 e0     mov   a,$e0+x
1644: d5 c0 02  mov   $02c0+x,a
1647: ba 0c     movw  ya,$0c
1649: db e1     mov   $e1+x,y
164b: d4 e0     mov   $e0+x,a
164d: 2f 0d     bra   $165c
; if the next is vcmd f3, handle it here somehow
164f: e7 30     mov   a,($30+x)
1651: 68 f3     cmp   a,#$f3
1653: d0 03     bne   $1658
1655: 3f 47 17  call  $1747             ; dispatch vcmd f3
;
1658: fb e1     mov   y,$e1+x
165a: f4 e0     mov   a,$e0+x
165c: da 04     movw  $04,ya
165e: f5 40 02  mov   a,$0240+x
1661: fd        mov   y,a
1662: f5 41 02  mov   a,$0241+x
1665: 7a 04     addw  ya,$04            ; add per-instrument tuning
1667: c4 04     mov   $04,a
1669: dd        mov   a,y
166a: 1c        asl   a                 ; ?
166b: fd        mov   y,a
166c: f6 00 03  mov   a,$0300+y         ; pitch table
166f: c4 06     mov   $06,a
1671: f6 01 03  mov   a,$0301+y
1674: c4 07     mov   $07,a
1676: f6 fb 1c  mov   a,$1cfb+y         ; pitch scale (multiplier)
1679: 2d        push  a
167a: f6 fa 1c  mov   a,$1cfa+y         ; pitch scale (fraction)
167d: eb 04     mov   y,$04
167f: cf        mul   ya
1680: ae        pop   a
1681: cf        mul   ya
1682: 7a 06     addw  ya,$06            ; ?, ya = final pitch value
1684: c4 04     mov   $04,a
1686: e8 02     mov   a,#$02
1688: 04 23     or    a,$23
168a: c4 f2     mov   $f2,a
168c: fa 04 f3  mov   ($f3),($04)       ; set P(L)
168f: bc        inc   a
1690: c4 f2     mov   $f2,a
1692: dd        mov   a,y
1693: 28 3f     and   a,#$3f
1695: c4 f3     mov   $f3,a             ; set P(H)
1697: 6f        ret

; vcmd dispatch table (e0-ff)
1698: dw $1718  ; e0
169a: dw $172c  ; e1
169c: dw $1772  ; e2 - set instrument
169e: dw $182c  ; e3
16a0: dw $1848  ; e4
16a2: dw $18aa  ; e5
16a4: dw $18c3  ; e6 - start loop
16a6: dw $18d0  ; e7 - end loop
16a8: dw $1941  ; e8 - start loop #2
16aa: dw $195e  ; e9 - end loop #2
16ac: dw $19bf  ; ea - set tempo (per track)
16ae: dw $19c9  ; eb
16b0: dw $19da  ; ec - per-voice transpose
16b2: dw $1ba7  ; ed
16b4: dw $19e0  ; ee - set volume
16b6: dw $19ea  ; ef
16b8: dw $19fa  ; f0
16ba: dw $1a01  ; f1
16bc: dw $1a1f  ; f2 - tuning
16be: dw $1a3a  ; f3
16b0: dw $1a49  ; f4
16c2: dw $1a6f  ; f5 - set echo params
16c4: dw $1b0a  ; f6 - start complexed loop
16c6: dw $1b1c  ; f7 - end complexed loop
16c8: dw $1b53  ; f8
16ca: dw $188f  ; f9
16cc: dw $1b63  ; fa
16ce: dw $1bbd  ; fb
16d0: dw $1bc8  ; fc - set volume and instrument
16d2: dw $1bd5  ; fd - goto
16d4: dw $1be3  ; fe - call subroutine
16d6: dw $1bfc  ; ff - end of track / end subroutine

; vcmd length table (e0-ff)
; this table only suggests which vcmd will not take any parameters.
; therefore, the table content is somewhat wrong. do not trust.
16d8: dw $0001,$0002,$0001,$0001,$0003,$0003,$0000,$0003
16e8: dw $0000,$0003,$0001,$0002,$0001,$0001,$0001,$0002
16f8: dw $0001,$0003,$0001,$0003,$0003,$0003,$0000,$0000
1708: dw $0002,$0001,$0003,$0001,$0001,$0002,$0002,$0000

; vcmd e0
1718: d5 30 02  mov   $0230+x,a
171b: d4 60     mov   $60+x,a
171d: 09 11 10  or    ($10),($11)
1720: e8 00     mov   a,#$00
1722: d5 31 02  mov   $0231+x,a
1725: d4 61     mov   $61+x,a
1727: d5 b1 01  mov   $01b1+x,a
172a: 2f 15     bra   $1741

; vcmd e1
172c: d5 30 02  mov   $0230+x,a
172f: d4 60     mov   $60+x,a
1731: 3f 33 15  call  $1533
1734: d5 31 02  mov   $0231+x,a
1737: 1c        asl   a
1738: fb 60     mov   y,$60+x
173a: cf        mul   ya
173b: dd        mov   a,y
173c: d0 01     bne   $173f
173e: bc        inc   a
173f: d4 61     mov   $61+x,a
1741: e7 30     mov   a,($30+x)
1743: 68 f3     cmp   a,#$f3
1745: d0 2a     bne   $1771
1747: 92 20     clr4  $20
1749: 3f 35 15  call  $1535
174c: 3f 33 15  call  $1533
174f: d4 81     mov   $81+x,a
1751: 3f 33 15  call  $1533
1754: d4 80     mov   $80+x,a
1756: 3f 33 15  call  $1533
1759: 60        clrc
175a: 95 21 02  adc   a,$0221+x
175d: d5 c1 02  mov   $02c1+x,a
1760: e8 00     mov   a,#$00
1762: d5 c0 02  mov   $02c0+x,a
1765: 3f 33 15  call  $1533
1768: d5 b0 02  mov   $02b0+x,a
176b: 3f 33 15  call  $1533
176e: d5 b1 02  mov   $02b1+x,a
1771: 6f        ret

; vcmd e2 - set instrument
1772: 09 11 10  or    ($10),($11)
1775: fd        mov   y,a
1776: f5 a1 01  mov   a,$01a1+x
1779: d0 27     bne   $17a2
177b: dd        mov   a,y
177c: 68 28     cmp   a,#$28
177e: b0 0c     bcs   $178c             ; branch if arg1 (patch) >= 0x28
1780: 8f ce 04  mov   $04,#$ce
1783: 8f 07 05  mov   $05,#$07          ; $04 = #$07ce
1786: 3f cb 17  call  $17cb
1789: 5f dc 14  jmp   $14dc
; when patch >= 0x28:
178c: a8 28     sbc   a,#$28            ; patch -= 0x28
178e: 2d        push  a
178f: eb 25     mov   y,$25
1791: f6 bc 07  mov   a,$07bc+y
1794: c4 04     mov   $04,a
1796: f6 bd 07  mov   a,$07bd+y
1799: c4 05     mov   $05,a             ; $04 = *(u16)($07bc + $25 * 2)
179b: ae        pop   a
179c: 3f cb 17  call  $17cb
179f: 5f dc 14  jmp   $14dc

17a2: fd        mov   y,a
17a3: e8 04     mov   a,#$04
17a5: 04 23     or    a,$23
17a7: c4 06     mov   $06,a
17a9: c4 f2     mov   $f2,a
17ab: f5 a0 01  mov   a,$01a0+x
17ae: c4 f3     mov   $f3,a             ; set SRCN
17b0: 8f 00 04  mov   $04,#$00
17b3: 8f 06 05  mov   $05,#$06          ; $04 = #$0600
17b6: e8 06     mov   a,#$06
17b8: cf        mul   ya
17b9: 7a 04     addw  ya,$04
17bb: da 04     movw  $04,ya
17bd: 8d 00     mov   y,#$00
17bf: 3f e1 17  call  $17e1
17c2: 5f dc 14  jmp   $14dc

; load instrument for percussive note
17c5: 8f 4b 04  mov   $04,#$4b
17c8: 8f 0a 05  mov   $05,#$0a          ; $04 = #$0a4b

; load instrument attributes from instrument table
; a = patch number, $04 = instrument table address
17cb: 8d 07     mov   y,#$07
17cd: cf        mul   ya
17ce: 7a 04     addw  ya,$04
17d0: da 04     movw  $04,ya            ; load address by index `$04 += (patch * 7)`
17d2: 8d 00     mov   y,#$00
17d4: e8 04     mov   a,#$04
17d6: 04 23     or    a,$23
17d8: c4 06     mov   $06,a
17da: c4 f2     mov   $f2,a
17dc: f7 04     mov   a,($04)+y
17de: c4 f3     mov   $f3,a             ; [0] set SRCN
17e0: fc        inc   y
17e1: f7 04     mov   a,($04)+y
17e3: d5 40 02  mov   $0240+x,a         ; [1] tuning in semitones (signed)
17e6: fc        inc   y
17e7: f7 04     mov   a,($04)+y
17e9: d5 41 02  mov   $0241+x,a         ; [2] tuning in semitones/256 (signed)
17ec: 10 07     bpl   $17f5
17ee: f5 40 02  mov   a,$0240+x
17f1: 9c        dec   a
17f2: d5 40 02  mov   $0240+x,a
17f5: fc        inc   y
17f6: ab 06     inc   $06
17f8: fa 06 f2  mov   ($f2),($06)
17fb: ab 06     inc   $06
17fd: f7 04     mov   a,($04)+y
17ff: c4 f3     mov   $f3,a             ; [3] set ADSR(1)
1801: d5 70 02  mov   $0270+x,a
1804: 30 02     bmi   $1808
1806: ab 06     inc   $06
1808: fc        inc   y
1809: fa 06 f2  mov   ($f2),($06)
180c: f7 04     mov   a,($04)+y
180e: c4 f3     mov   $f3,a             ; [4] set ADSR(2) or GAIN
1810: d5 71 02  mov   $0271+x,a
1813: e8 00     mov   a,#$00
1815: d5 c1 01  mov   $01c1+x,a
1818: fc        inc   y
1819: 63 20 09  bbs3  $20,$1825
181c: f7 04     mov   a,($04)+y
181e: d5 a1 02  mov   $02a1+x,a         ; [5] ?
1821: e8 00     mov   a,#$00
1823: d4 70     mov   $70+x,a
1825: fc        inc   y
1826: f7 04     mov   a,($04)+y
1828: d5 b0 01  mov   $01b0+x,a         ; [6] ?
182b: 6f        ret

; vcmd e3
182c: 68 2a     cmp   a,#$2a
182e: f0 0e     beq   $183e
1830: 68 2c     cmp   a,#$2c
1832: f0 0f     beq   $1843
1834: d5 a1 02  mov   $02a1+x,a
1837: e8 00     mov   a,#$00
1839: d4 70     mov   $70+x,a
183b: 5f dc 14  jmp   $14dc

183e: 62 20     set3  $20
1840: 5f dc 14  jmp   $14dc

1843: 72 20     clr3  $20
1845: 5f dc 14  jmp   $14dc

; vcmd e4
1848: 2d        push  a
1849: 3f 33 15  call  $1533
184c: 68 80     cmp   a,#$80
184e: b0 13     bcs   $1863
1850: 1c        asl   a
1851: 30 0c     bmi   $185f
1853: 1c        asl   a
1854: 30 05     bmi   $185b
1856: 1c        asl   a
1857: 8d 01     mov   y,#$01
1859: 2f 10     bra   $186b
185b: 8d 02     mov   y,#$02
185d: 2f 0c     bra   $186b
185f: 8d 04     mov   y,#$04
1861: 2f 08     bra   $186b
1863: 8d 08     mov   y,#$08
1865: 68 ff     cmp   a,#$ff
1867: d0 02     bne   $186b
1869: 8d 10     mov   y,#$10
186b: d4 b1     mov   $b1+x,a
186d: db c0     mov   $c0+x,y
186f: 3f 33 15  call  $1533
1872: d5 20 02  mov   $0220+x,a
1875: ae        pop   a
1876: 68 c8     cmp   a,#$c8
1878: b0 0b     bcs   $1885
187a: d5 10 02  mov   $0210+x,a
187d: e8 00     mov   a,#$00
187f: d5 11 02  mov   $0211+x,a
1882: 5f dc 14  jmp   $14dc

1885: fd        mov   y,a
1886: e8 00     mov   a,#$00
1888: d5 10 02  mov   $0210+x,a
188b: dd        mov   a,y
188c: 80        setc
188d: a8 c7     sbc   a,#$c7
; vcmd f9
188f: d5 11 02  mov   $0211+x,a
1892: 2d        push  a
1893: 8d 00     mov   y,#$00
1895: f5 20 02  mov   a,$0220+x
1898: ce        pop   x
1899: 9e        div   ya,x
189a: 2d        push  a
189b: e8 00     mov   a,#$00
189d: 9e        div   ya,x
189e: f8 22     mov   x,$22
18a0: d5 e0 02  mov   $02e0+x,a
18a3: ae        pop   a
18a4: d5 e1 02  mov   $02e1+x,a
18a7: 5f dc 14  jmp   $14dc

; vcmd e5
18aa: d5 d1 01  mov   $01d1+x,a
18ad: 3f 33 15  call  $1533
18b0: d5 f1 02  mov   $02f1+x,a
18b3: 3f 33 15  call  $1533
18b6: d5 f0 02  mov   $02f0+x,a
18b9: e8 00     mov   a,#$00
18bb: d4 d1     mov   $d1+x,a
18bd: d5 d0 01  mov   $01d0+x,a
18c0: 5f dc 14  jmp   $14dc

; vcmd e6 - start loop
18c3: f4 30     mov   a,$30+x
18c5: d5 50 01  mov   $0150+x,a
18c8: f4 31     mov   a,$31+x
18ca: d5 51 01  mov   $0151+x,a         ; save return address
18cd: 5f dc 14  jmp   $14dc

; vcmd e7 - end loop
18d0: 68 00     cmp   a,#$00            ; arg1: repeat count
18d2: f0 1e     beq   $18f2             ; 0 => infinite loop
18d4: bb 50     inc   $50+x             ; increment repeat counter
18d6: de 50 19  cbne  $50+x,$18f2
; repeat end
18d9: 3f 35 15  call  $1535
18dc: 3f 35 15  call  $1535
18df: e8 00     mov   a,#$00
18e1: d4 50     mov   $50+x,a
18e3: d5 10 01  mov   $0110+x,a
18e6: d5 11 01  mov   $0111+x,a
18e9: d5 30 01  mov   $0130+x,a
18ec: d5 31 01  mov   $0131+x,a
18ef: 5f dc 14  jmp   $14dc
; repeat again
18f2: 3f 33 15  call  $1533
18f5: 8d 00     mov   y,#$00
18f7: 08 00     or    a,#$00
18f9: f0 15     beq   $1910
18fb: 10 01     bpl   $18fe
18fd: dc        dec   y
18fe: da 04     movw  $04,ya
1900: f5 11 01  mov   a,$0111+x
1903: fd        mov   y,a
1904: f5 10 01  mov   a,$0110+x
1907: 7a 04     addw  ya,$04
1909: d5 10 01  mov   $0110+x,a
190c: dd        mov   a,y
190d: d5 11 01  mov   $0111+x,a         ; add arg2 to $0110/1
; adjust pitch by repeat count
1910: 3f 33 15  call  $1533             ; get arg3 (delta pitch, signed)
1913: 08 00     or    a,#$00
1915: f0 1d     beq   $1934             ; do nothing if arg3 == 0
1917: 8d 00     mov   y,#$00
1919: 1c        asl   a
191a: 90 01     bcc   $191d
191c: dc        dec   y
191d: cb 04     mov   $04,y
191f: 1c        asl   a
1920: 2b 04     rol   $04
1922: 1c        asl   a
1923: 2b 04     rol   $04
1925: 60        clrc
1926: 95 30 01  adc   a,$0130+x
1929: d5 30 01  mov   $0130+x,a
192c: e4 04     mov   a,$04
192e: 95 31 01  adc   a,$0131+x
1931: d5 31 01  mov   $0131+x,a         ; add (arg3 * 8) to $0130/1+x
1934: f5 50 01  mov   a,$0150+x
1937: d4 30     mov   $30+x,a
1939: f5 51 01  mov   a,$0151+x
193c: d4 31     mov   $31+x,a           ; back to return address
193e: 5f dc 14  jmp   $14dc

; vcmd e8 - start loop #2
1941: f4 30     mov   a,$30+x
1943: d5 60 01  mov   $0160+x,a
1946: f4 31     mov   a,$31+x
1948: d5 61 01  mov   $0161+x,a         ; save return address
194b: e8 00     mov   a,#$00
194d: d4 51     mov   $51+x,a
194f: d5 20 01  mov   $0120+x,a
1952: d5 21 01  mov   $0121+x,a
1955: d5 40 01  mov   $0140+x,a
1958: d5 41 01  mov   $0141+x,a
195b: 5f dc 14  jmp   $14dc

; vcmd e9 - end loop #2
195e: 68 00     cmp   a,#$00
1960: f0 0e     beq   $1970
1962: bb 51     inc   $51+x
1964: de 51 09  cbne  $51+x,$1970
; repeat end
1967: 3f 35 15  call  $1535
196a: 3f 35 15  call  $1535
196d: 5f dc 14  jmp   $14dc
; repeat again
1970: 3f 33 15  call  $1533
1973: 8d 00     mov   y,#$00
1975: 08 00     or    a,#$00
1977: f0 15     beq   $198e
1979: 10 01     bpl   $197c
197b: dc        dec   y
197c: da 04     movw  $04,ya
197e: f5 21 01  mov   a,$0121+x
1981: fd        mov   y,a
1982: f5 20 01  mov   a,$0120+x
1985: 7a 04     addw  ya,$04
1987: d5 20 01  mov   $0120+x,a
198a: dd        mov   a,y
198b: d5 21 01  mov   $0121+x,a         ; add arg2 to $0120/1
; adjust pitch by repeat count
198e: 3f 33 15  call  $1533             ; get arg3 (delta pitch, signed)
1991: 08 00     or    a,#$00
1993: f0 1d     beq   $19b2             ; do nothing if arg3 == 0
1995: 8d 00     mov   y,#$00
1997: 1c        asl   a
1998: 90 01     bcc   $199b
199a: dc        dec   y
199b: cb 04     mov   $04,y
199d: 1c        asl   a
199e: 2b 04     rol   $04
19a0: 1c        asl   a
19a1: 2b 04     rol   $04
19a3: 60        clrc
19a4: 95 40 01  adc   a,$0140+x
19a7: d5 40 01  mov   $0140+x,a
19aa: e4 04     mov   a,$04
19ac: 95 41 01  adc   a,$0141+x
19af: d5 41 01  mov   $0141+x,a         ; add (arg3 * 8) to $0140/1+x
19b2: f5 60 01  mov   a,$0160+x
19b5: d4 30     mov   $30+x,a
19b7: f5 61 01  mov   a,$0161+x
19ba: d4 31     mov   $31+x,a           ; back to return address
19bc: 5f dc 14  jmp   $14dc

; vcmd ea - set tempo (per track)
19bf: d4 41     mov   $41+x,a
19c1: e8 00     mov   a,#$00
19c3: d5 c0 01  mov   $01c0+x,a
19c6: 5f dc 14  jmp   $14dc

; vcmd eb
19c9: d5 50 02  mov   $0250+x,a
19cc: 3f 33 15  call  $1533
19cf: d5 c0 01  mov   $01c0+x,a
19d2: e8 00     mov   a,#$00
19d4: d5 51 02  mov   $0251+x,a
19d7: 5f dc 14  jmp   $14dc

; vcmd ec - per-voice transpose
19da: d5 21 02  mov   $0221+x,a
19dd: 5f dc 14  jmp   $14dc

; vcmd ee - set volume
19e0: d5 91 02  mov   $0291+x,a
19e3: e8 00     mov   a,#$00
19e5: d4 71     mov   $71+x,a
19e7: 5f dc 14  jmp   $14dc

; vcmd ef
19ea: d5 00 02  mov   $0200+x,a
19ed: 3f 33 15  call  $1533
19f0: d4 71     mov   $71+x,a
19f2: e8 00     mov   a,#$00
19f4: d5 90 02  mov   $0290+x,a
19f7: 5f dc 14  jmp   $14dc

; vcmd f0
19fa: d4 90     mov   $90+x,a
19fc: 82 20     set4  $20
19fe: 5f dc 14  jmp   $14dc

; vcmd f1
1a01: 92 20     clr4  $20
1a03: d4 91     mov   $91+x,a
1a05: 3f 33 15  call  $1533
1a08: d4 90     mov   $90+x,a
1a0a: 3f 33 15  call  $1533
1a0d: d5 60 02  mov   $0260+x,a
1a10: 3f 33 15  call  $1533
1a13: d5 b0 02  mov   $02b0+x,a
1a16: 3f 33 15  call  $1533
1a19: d5 b1 02  mov   $02b1+x,a
1a1c: 5f dc 14  jmp   $14dc

; vcmd f2 - tuning
1a1f: 1c        asl   a                 ; arg1: tuning (signed)
1a20: b0 08     bcs   $1a2a
; when arg1 >= 0
1a22: 8d 00     mov   y,#$00
1a24: 1c        asl   a
1a25: 90 09     bcc   $1a30
1a27: fc        inc   y
1a28: 2f 06     bra   $1a30
; when arg1 < 0
1a2a: 8d ff     mov   y,#$ff
1a2c: 1c        asl   a
1a2d: b0 01     bcs   $1a30
1a2f: dc        dec   y
1a30: d5 80 02  mov   $0280+x,a
1a33: dd        mov   a,y
1a34: d5 81 02  mov   $0281+x,a         ; $0280/1+x = arg1 * 4
1a37: 5f dc 14  jmp   $14dc

; vcmd f3
1a3a: 3f 35 15  call  $1535
1a3d: 3f 35 15  call  $1535
1a40: 3f 35 15  call  $1535
1a43: 3f 35 15  call  $1535
1a46: 5f dc 14  jmp   $14dc

; vcmd f4
1a49: 08 00     or    a,#$00
1a4b: f0 16     beq   $1a63
1a4d: b2 13     clr5  $13
1a4f: c4 14     mov   $14,a
1a51: 8f 4d f2  mov   $f2,#$4d
1a54: c4 f3     mov   $f3,a             ; set EON
1a56: 3f 33 15  call  $1533
1a59: c4 15     mov   $15,a
1a5b: 3f 33 15  call  $1533
1a5e: c4 16     mov   $16,a
1a60: 5f dc 14  jmp   $14dc

1a63: 3f d1 1a  call  $1ad1
1a66: 3f 35 15  call  $1535
1a69: 3f 35 15  call  $1535
1a6c: 5f dc 14  jmp   $14dc

; vcmd f5 - set echo params
1a6f: 78 00 14  cmp   $14,#$00
1a72: f0 f2     beq   $1a66
1a74: 28 0f     and   a,#$0f
1a76: 64 18     cmp   a,$18
1a78: f0 31     beq   $1aab
1a7a: eb 18     mov   y,$18
1a7c: c4 18     mov   $18,a
1a7e: dd        mov   a,y
1a7f: 1c        asl   a
1a80: 1c        asl   a
1a81: 1c        asl   a
1a82: 1c        asl   a
1a83: 08 0f     or    a,#$0f
1a85: 60        clrc
1a86: 84 19     adc   a,$19
1a88: c4 19     mov   $19,a
1a8a: 8f 6c f2  mov   $f2,#$6c
1a8d: e4 13     mov   a,$13
1a8f: 08 20     or    a,#$20
1a91: c4 f3     mov   $f3,a             ; set FLG
1a93: 8f 7d f2  mov   $f2,#$7d
1a96: fa 18 f3  mov   ($f3),($18)       ; set EDL
1a99: e4 18     mov   a,$18
1a9b: f0 09     beq   $1aa6
1a9d: 1c        asl   a
1a9e: 1c        asl   a
1a9f: 1c        asl   a
1aa0: 48 ff     eor   a,#$ff
1aa2: bc        inc   a
1aa3: 60        clrc
1aa4: 88 00     adc   a,#$00
1aa6: 8f 6d f2  mov   $f2,#$6d
1aa9: c4 f3     mov   $f3,a             ; set ESA
1aab: e4 18     mov   a,$18
1aad: 1c        asl   a
1aae: 1c        asl   a
1aaf: 1c        asl   a
1ab0: 1c        asl   a
1ab1: 08 0f     or    a,#$0f
1ab3: c4 1a     mov   $1a,a
1ab5: 3f 33 15  call  $1533
1ab8: c4 17     mov   $17,a
1aba: 3f 35 15  call  $1535
1abd: 8d 00     mov   y,#$00
1abf: f6 c4 1e  mov   a,$1ec4+y
1ac2: c4 f2     mov   $f2,a
1ac4: f6 cc 1e  mov   a,$1ecc+y
1ac7: c4 f3     mov   $f3,a             ; set FIR
1ac9: fc        inc   y
1aca: ad 08     cmp   y,#$08
1acc: d0 f1     bne   $1abf
1ace: 5f dc 14  jmp   $14dc

1ad1: e4 14     mov   a,$14
1ad3: f0 34     beq   $1b09
1ad5: e4 18     mov   a,$18
1ad7: 1c        asl   a
1ad8: 1c        asl   a
1ad9: bc        inc   a
1ada: c4 19     mov   $19,a
1adc: e8 00     mov   a,#$00
1ade: 8f 2c f2  mov   $f2,#$2c
1ae1: c4 f3     mov   $f3,a             ; set EVOL(L)
1ae3: 8f 3c f2  mov   $f2,#$3c
1ae6: c4 f3     mov   $f3,a             ; set EVOL(R)
1ae8: 8f 0d f2  mov   $f2,#$0d
1aeb: c4 f3     mov   $f3,a             ; set EFB
1aed: a2 13     set5  $13
1aef: 8f 6c f2  mov   $f2,#$6c
1af2: fa 13 f3  mov   ($f3),($13)       ; set FLG
1af5: c4 14     mov   $14,a
1af7: c4 15     mov   $15,a
1af9: c4 16     mov   $16,a
1afb: c4 17     mov   $17,a
1afd: c4 18     mov   $18,a
1aff: 8f 7d f2  mov   $f2,#$7d
1b02: c4 f3     mov   $f3,a             ; set EDL
1b04: 8f 6d f2  mov   $f2,#$6d
1b07: c4 f3     mov   $f3,a             ; set ESA
1b09: 6f        ret

; vcmd f6
1b0a: f4 30     mov   a,$30+x
1b0c: d5 70 01  mov   $0170+x,a
1b0f: f4 31     mov   a,$31+x
1b11: d5 71 01  mov   $0171+x,a         ; save current address to $0170/1
1b14: e8 c0     mov   a,#$c0
1b16: 4e 20 00  tclr1 $0020             ; reset "visited" flags
1b19: 5f dc 14  jmp   $14dc

; vcmd f7 - end complexed loop
1b1c: c3 20 08  bbs6  $20,$1b27
1b1f: e3 20 20  bbs7  $20,$1b42
; first time, do nothing
1b22: c2 20     set6  $20
1b24: 5f dc 14  jmp   $14dc
; second time
1b27: d2 20     clr6  $20
1b29: e2 20     set7  $20
1b2b: f4 30     mov   a,$30+x
1b2d: d5 80 01  mov   $0180+x,a
1b30: f4 31     mov   a,$31+x
1b32: d5 81 01  mov   $0181+x,a         ; save current address to $0180/1
1b35: f5 70 01  mov   a,$0170+x
1b38: d4 30     mov   $30+x,a
1b3a: f5 71 01  mov   a,$0171+x
1b3d: d4 31     mov   $31+x,a           ; back to $0170/1
1b3f: 5f dc 14  jmp   $14dc
; third time
1b42: c2 20     set6  $20
1b44: f2 20     clr7  $20
1b46: f5 80 01  mov   a,$0180+x
1b49: d4 30     mov   $30+x,a
1b4b: f5 81 01  mov   a,$0181+x
1b4e: d4 31     mov   $31+x,a           ; back to $0180/1
1b50: 5f dc 14  jmp   $14dc

; vcmd f8
1b53: d5 01 02  mov   $0201+x,a
1b56: 3f 33 15  call  $1533
1b59: d4 70     mov   $70+x,a
1b5b: e8 00     mov   a,#$00
1b5d: d5 a0 02  mov   $02a0+x,a
1b60: 5f dc 14  jmp   $14dc

; vcmd fa
1b63: d5 70 02  mov   $0270+x,a
1b66: fd        mov   y,a
1b67: e8 05     mov   a,#$05
1b69: 04 23     or    a,$23
1b6b: c4 f2     mov   $f2,a
1b6d: cb f3     mov   $f3,y             ; set ADSR(1)
1b6f: bc        inc   a
1b70: ad 80     cmp   y,#$80
1b72: 90 09     bcc   $1b7d
1b74: c4 f2     mov   $f2,a
1b76: 3f 33 15  call  $1533
1b79: c4 f3     mov   $f3,a             ; set ADSR(2)
1b7b: 2f 0b     bra   $1b88
1b7d: bc        inc   a
1b7e: c4 f2     mov   $f2,a
1b80: 3f 33 15  call  $1533
1b83: c4 f3     mov   $f3,a             ; set GAIN
1b85: d5 71 02  mov   $0271+x,a
; vcmd 62
1b88: 3f 33 15  call  $1533
1b8b: 68 c8     cmp   a,#$c8
1b8d: b0 0c     bcs   $1b9b
1b8f: 68 64     cmp   a,#$64
1b91: 90 0e     bcc   $1ba1
1b93: a8 64     sbc   a,#$64
1b95: 28 1f     and   a,#$1f
1b97: 08 80     or    a,#$80
1b99: 2f 06     bra   $1ba1
1b9b: a8 c8     sbc   a,#$c8
1b9d: 28 1f     and   a,#$1f
1b9f: 08 a0     or    a,#$a0
1ba1: d5 c1 01  mov   $01c1+x,a
1ba4: 5f dc 14  jmp   $14dc

; vcmd ed
1ba7: 2d        push  a
1ba8: f5 70 02  mov   a,$0270+x
1bab: ae        pop   a
1bac: 10 0c     bpl   $1bba
1bae: d5 70 02  mov   $0270+x,a
1bb1: fd        mov   y,a
1bb2: e8 05     mov   a,#$05
1bb4: 04 23     or    a,$23
1bb6: c4 f2     mov   $f2,a
1bb8: cb f3     mov   $f3,y             ; set ADSR(1)
1bba: 5f dc 14  jmp   $14dc

; vcmd fb
1bbd: 2d        push  a
1bbe: f5 70 02  mov   a,$0270+x
1bc1: ee        pop   y
1bc2: 10 f6     bpl   $1bba
1bc4: e8 06     mov   a,#$06
1bc6: 2f ec     bra   $1bb4
; vcmd fc - set volume and instrument
1bc8: d5 91 02  mov   $0291+x,a
1bcb: e8 00     mov   a,#$00
1bcd: d4 71     mov   $71+x,a
1bcf: 3f 33 15  call  $1533
1bd2: 5f 72 17  jmp   $1772             ; redirect to vcmd e2

; vcmd fd - goto
1bd5: c4 04     mov   $04,a
1bd7: 3f 33 15  call  $1533
1bda: d4 31     mov   $31+x,a
1bdc: e4 04     mov   a,$04
1bde: d4 30     mov   $30+x,a
1be0: 5f dc 14  jmp   $14dc

; vcmd fe - call subroutine
1be3: 2d        push  a
1be4: 3f 33 15  call  $1533
1be7: fd        mov   y,a
1be8: f4 30     mov   a,$30+x
1bea: d5 00 01  mov   $0100+x,a
1bed: f4 31     mov   a,$31+x
1bef: d5 01 01  mov   $0101+x,a
1bf2: ae        pop   a
1bf3: d4 30     mov   $30+x,a
1bf5: db 31     mov   $31+x,y
1bf7: 42 20     set2  $20
1bf9: 5f dc 14  jmp   $14dc

; vcmd ff - end of track / end subroutine
1bfc: 53 20 0f  bbc2  $20,$1c0e
; end subroutine
1bff: 52 20     clr2  $20
1c01: f5 00 01  mov   a,$0100+x
1c04: d4 30     mov   $30+x,a
1c06: f5 01 01  mov   a,$0101+x
1c09: d4 31     mov   $31+x,a
1c0b: 5f dc 14  jmp   $14dc
; end of track
1c0e: e8 00     mov   a,#$00
1c10: d4 d0     mov   $d0+x,a
1c12: d5 a1 01  mov   $01a1+x,a
1c15: d5 90 01  mov   $0190+x,a
1c18: e4 11     mov   a,$11
1c1a: 0e 10 00  tset1 $0010
1c1d: 4e 0f 00  tclr1 $000f
1c20: a2 20     set5  $20
1c22: 6f        ret

1c23: da 06     movw  $06,ya
1c25: e4 04     mov   a,$04
1c27: 9f        xcn   a
1c28: 28 f0     and   a,#$f0
1c2a: 2d        push  a
1c2b: e4 04     mov   a,$04
1c2d: 30 0f     bmi   $1c3e
1c2f: 9f        xcn   a
1c30: 28 07     and   a,#$07
1c32: fd        mov   y,a
1c33: ae        pop   a
1c34: 60        clrc
1c35: 7a 06     addw  ya,$06
1c37: b0 13     bcs   $1c4c
1c39: 7e 05     cmp   y,$05
1c3b: b0 0f     bcs   $1c4c
1c3d: 6f        ret

1c3e: 9f        xcn   a
1c3f: 08 f8     or    a,#$f8
1c41: fd        mov   y,a
1c42: ae        pop   a
1c43: 60        clrc
1c44: 7a 06     addw  ya,$06
1c46: 90 04     bcc   $1c4c
1c48: 7e 05     cmp   y,$05
1c4a: b0 05     bcs   $1c51
1c4c: 8f 00 04  mov   $04,#$00
1c4f: eb 05     mov   y,$05
1c51: 6f        ret

1c52: f4 e0     mov   a,$e0+x
1c54: fb e1     mov   y,$e1+x
1c56: da 04     movw  $04,ya
1c58: f5 c1 02  mov   a,$02c1+x
1c5b: fd        mov   y,a
1c5c: f5 c0 02  mov   a,$02c0+x
1c5f: 9a 04     subw  ya,$04
1c61: f0 32     beq   $1c95
1c63: da 06     movw  $06,ya
1c65: 10 07     bpl   $1c6e
1c67: e8 00     mov   a,#$00
1c69: fd        mov   y,a
1c6a: 9a 06     subw  ya,$06
1c6c: c4 06     mov   $06,a
1c6e: f4 90     mov   a,$90+x
1c70: cf        mul   ya
1c71: da 08     movw  $08,ya
1c73: eb 06     mov   y,$06
1c75: f4 90     mov   a,$90+x
1c77: cf        mul   ya
1c78: dd        mov   a,y
1c79: 8d 00     mov   y,#$00
1c7b: 7a 08     addw  ya,$08
1c7d: d0 01     bne   $1c80
1c7f: bc        inc   a
1c80: f3 07 0b  bbc7  $07,$1c8e
1c83: da 06     movw  $06,ya
1c85: ba 04     movw  ya,$04
1c87: 9a 06     subw  ya,$06
1c89: d4 e0     mov   $e0+x,a
1c8b: db e1     mov   $e1+x,y
1c8d: 6f        ret

1c8e: 7a 04     addw  ya,$04
1c90: d4 e0     mov   $e0+x,a
1c92: db e1     mov   $e1+x,y
1c94: 6f        ret

1c95: d4 80     mov   $80+x,a
1c97: 6f        ret

1c98: f4 b0     mov   a,$b0+x
1c9a: 60        clrc
1c9b: 94 b1     adc   a,$b1+x
1c9d: d4 b0     mov   $b0+x,a
1c9f: 90 3a     bcc   $1cdb
1ca1: 02 21     set0  $21
1ca3: f4 c1     mov   a,$c1+x
1ca5: 60        clrc
1ca6: 94 c0     adc   a,$c0+x
1ca8: 28 3f     and   a,#$3f
1caa: c4 04     mov   $04,a
1cac: d4 c1     mov   $c1+x,a
1cae: 28 1f     and   a,#$1f
1cb0: fd        mov   y,a
1cb1: f6 7a 1e  mov   a,$1e7a+y
1cb4: fd        mov   y,a
1cb5: f5 d1 02  mov   a,$02d1+x
1cb8: 30 09     bmi   $1cc3
1cba: 1c        asl   a
1cbb: cf        mul   ya
1cbc: cb 08     mov   $08,y
1cbe: 8f 00 09  mov   $09,#$00
1cc1: 2f 0a     bra   $1ccd
1cc3: 80        setc
1cc4: a8 7e     sbc   a,#$7e
1cc6: cf        mul   ya
1cc7: da 08     movw  $08,ya
1cc9: 4b 09     lsr   $09
1ccb: 6b 08     ror   $08
1ccd: ba 0a     movw  ya,$0a
1ccf: b3 04 05  bbc5  $04,$1cd7
1cd2: 9a 08     subw  ya,$08
1cd4: da 0a     movw  $0a,ya
1cd6: 6f        ret

1cd7: 7a 08     addw  ya,$08
1cd9: da 0a     movw  $0a,ya
1cdb: 6f        ret

1cdc: f5 d0 01  mov   a,$01d0+x
1cdf: fd        mov   y,a
1ce0: bc        inc   a
1ce1: 28 7f     and   a,#$7f
1ce3: d5 d0 01  mov   $01d0+x,a
1ce6: f6 d4 1e  mov   a,$1ed4+y
1ce9: 35 f0 02  and   a,$02f0+x
1cec: 2d        push  a
1ced: f6 d5 1e  mov   a,$1ed5+y
1cf0: 35 f1 02  and   a,$02f1+x
1cf3: fd        mov   y,a
1cf4: ae        pop   a
1cf5: 7a 0a     addw  ya,$0a
1cf7: 5f 5c 16  jmp   $165c
