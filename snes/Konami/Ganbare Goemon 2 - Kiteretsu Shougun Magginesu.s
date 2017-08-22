; Ganbare Goemon 2

0c5f: e4 2c     mov   a,$2c
0c61: d0 06     bne   $0c69
0c63: 8f 04 2c  mov   $2c,#$04
0c66: 8f 08 2d  mov   $2d,#$08
0c69: 6f        ret

0c6a: 8f ff 2d  mov   $2d,#$ff
0c6d: 6f        ret

0c6e: 8f 3f 10  mov   $10,#$3f
0c71: 8f 00 0e  mov   $0e,#$00
0c74: 22 1f     set1  $1f
0c76: e8 96     mov   a,#$96
0c78: 5f 2b 0e  jmp   $0e2b

0c7b: 32 1f     clr1  $1f
0c7d: e4 0f     mov   a,$0f
0c7f: 78 d6 d1  cmp   $d1,#$d6
0c82: b0 02     bcs   $0c86
0c84: 28 3f     and   a,#$3f
0c86: c4 0e     mov   $0e,a
0c88: 6f        ret

0c89: 02 1f     set0  $1f
0c8b: 6f        ret

0c8c: 12 1f     clr0  $1f
0c8e: 6f        ret

0c8f: e8 00     mov   a,#$00
0c91: 8d 0c     mov   y,#$0c
0c93: cd 3f     mov   x,#$3f
0c95: 2f 20     bra   $0cb7
0c97: 8f 00 26  mov   $26,#$00
0c9a: 8f 00 f1  mov   $f1,#$00
0c9d: 8f 20 fa  mov   $fa,#$20
0ca0: 8f 01 f1  mov   $f1,#$01
0ca3: e8 7f     mov   a,#$7f
0ca5: 8f 0c f2  mov   $f2,#$0c
0ca8: c4 f3     mov   $f3,a             ; MVOL(L)
0caa: 8f 1c f2  mov   $f2,#$1c
0cad: c4 f3     mov   $f3,a             ; MVOL(R)
0caf: e8 00     mov   a,#$00
0cb1: 8d 10     mov   y,#$10
0cb3: cd ff     mov   x,#$ff
0cb5: c4 2a     mov   $2a,a
0cb7: 32 1f     clr1  $1f
0cb9: d6 cf 00  mov   $00cf+y,a
0cbc: d6 6f 02  mov   $026f+y,a
0cbf: d6 be 01  mov   $01be+y,a
0cc2: dc        dec   y
0cc3: fe f4     dbnz  y,$0cb9
0cc5: c4 1c     mov   $1c,a
0cc7: 3f c5 19  call  $19c5
0cca: 7d        mov   a,x
0ccb: 5f 52 0f  jmp   $0f52

0cce: e4 1c     mov   a,$1c
0cd0: d0 0f     bne   $0ce1
0cd2: dd        mov   a,y
0cd3: 80        setc
0cd4: a8 eb     sbc   a,#$eb
0cd6: 5d        mov   x,a
0cd7: f5 28 0c  mov   a,$0c28+x
0cda: c4 1e     mov   $1e,a
0cdc: c4 1d     mov   $1d,a
0cde: 8f ff 1c  mov   $1c,#$ff
0ce1: 6f        ret

0ce2: fd        mov   y,a
0ce3: 80        setc
0ce4: a8 e5     sbc   a,#$e5
0ce6: 90 f9     bcc   $0ce1
0ce8: 1c        asl   a
0ce9: 5d        mov   x,a
0cea: 1f 49 0c  jmp   ($0c49+x)

0ced: 68 e4     cmp   a,#$e4
0cef: b0 03     bcs   $0cf4
0cf1: 5f 2b 0e  jmp   $0e2b

0cf4: 68 f0     cmp   a,#$f0
0cf6: 90 ea     bcc   $0ce2
0cf8: 68 ff     cmp   a,#$ff
0cfa: d0 03     bne   $0cff
0cfc: 5f af 0d  jmp   $0daf

0cff: 28 0f     and   a,#$0f
0d01: 1c        asl   a
0d02: fd        mov   y,a
0d03: f6 2b 0c  mov   a,$0c2b+y
0d06: c4 2e     mov   $2e,a
0d08: f6 2c 0c  mov   a,$0c2c+y
0d0b: c4 2f     mov   $2f,a
0d0d: 5f ea 0d  jmp   $0dea

0d10: fa f6 2b  mov   ($2b),($f6)
0d13: e2 1f     set7  $1f
0d15: 8f ff f7  mov   $f7,#$ff
0d18: 6f        ret

0d19: 64 27     cmp   a,$27
0d1b: d0 c4     bne   $0ce1
0d1d: fd        mov   y,a
0d1e: f6 9e 06  mov   a,$069e+y
0d21: c4 2a     mov   $2a,a
0d23: dd        mov   a,y
0d24: c4 0d     mov   $0d,a
0d26: 8f 01 0c  mov   $0c,#$01
0d29: 8f bc 04  mov   $04,#$bc
0d2c: 8f 09 05  mov   $05,#$09
0d2f: 5f 3d 0e  jmp   $0e3d

0d32: eb f5     mov   y,$f5
0d34: d0 fc     bne   $0d32
0d36: cb f5     mov   $f5,y
0d38: 68 fd     cmp   a,#$fd
0d3a: f0 d4     beq   $0d10
0d3c: 68 ff     cmp   a,#$ff
0d3e: f0 1f     beq   $0d5f
0d40: 8f 01 26  mov   $26,#$01
0d43: eb f6     mov   y,$f6
0d45: cb 2b     mov   $2b,y
0d47: 8f 00 2e  mov   $2e,#$00
0d4a: 8f 46 2f  mov   $2f,#$46
0d4d: e4 2a     mov   a,$2a
0d4f: d0 06     bne   $0d57
0d51: c4 29     mov   $29,a
0d53: cb 27     mov   $27,y
0d55: 2f 4b     bra   $0da2
0d57: 8f ff 26  mov   $26,#$ff
0d5a: 8f ff 29  mov   $29,#$ff
0d5d: 2f 43     bra   $0da2
0d5f: c4 26     mov   $26,a
0d61: 8d 3f     mov   y,#$3f
0d63: e8 00     mov   a,#$00
0d65: c4 1c     mov   $1c,a
0d67: c4 29     mov   $29,a
0d69: c4 d1     mov   $d1,a
0d6b: c4 d3     mov   $d3,a
0d6d: c4 d5     mov   $d5,a
0d6f: c4 d7     mov   $d7,a
0d71: c4 d9     mov   $d9,a
0d73: c4 db     mov   $db,a
0d75: e5 cd 01  mov   a,$01cd
0d78: 28 01     and   a,#$01
0d7a: d0 0a     bne   $0d86
0d7c: 8d 7f     mov   y,#$7f
0d7e: c4 dd     mov   $dd,a
0d80: c5 7d 02  mov   $027d,a
0d83: c5 cc 01  mov   $01cc,a
0d86: e5 cf 01  mov   a,$01cf
0d89: 28 01     and   a,#$01
0d8b: d0 0a     bne   $0d97
0d8d: 8d ff     mov   y,#$ff
0d8f: c4 df     mov   $df,a
0d91: c5 7f 02  mov   $027f,a
0d94: c5 ce 01  mov   $01ce,a
0d97: 8f 5c f2  mov   $f2,#$5c
0d9a: cb f3     mov   $f3,y             ; KOF
0d9c: 8f a0 2e  mov   $2e,#$a0
0d9f: 8f 3a 2f  mov   $2f,#$3a
0da2: 8f ff f7  mov   $f7,#$ff
0da5: 8f 00 f1  mov   $f1,#$00
0da8: 8f 1c fa  mov   $fa,#$1c
0dab: 8f 01 f1  mov   $f1,#$01
0dae: 6f        ret

0daf: e8 cc     mov   a,#$cc
0db1: 64 f4     cmp   a,$f4
0db3: d0 fa     bne   $0daf
0db5: 2f 1f     bra   $0dd6
0db7: eb f4     mov   y,$f4
0db9: d0 fc     bne   $0db7
0dbb: 7e f4     cmp   y,$f4
0dbd: 30 13     bmi   $0dd2
0dbf: d0 fa     bne   $0dbb
0dc1: 7e f4     cmp   y,$f4
0dc3: d0 f6     bne   $0dbb
0dc5: e4 f5     mov   a,$f5
0dc7: cb f4     mov   $f4,y
0dc9: d7 04     mov   ($04)+y,a
0dcb: fc        inc   y
0dcc: d0 ed     bne   $0dbb
0dce: ab 05     inc   $05
0dd0: 2f e9     bra   $0dbb
0dd2: 7e f4     cmp   y,$f4
0dd4: 10 e5     bpl   $0dbb
0dd6: e4 f6     mov   a,$f6
0dd8: eb f7     mov   y,$f7
0dda: da 04     movw  $04,ya
0ddc: e4 f4     mov   a,$f4
0dde: eb f5     mov   y,$f5
0de0: c4 f4     mov   $f4,a
0de2: dd        mov   a,y
0de3: 5d        mov   x,a
0de4: d0 d1     bne   $0db7
0de6: 8f 33 f1  mov   $f1,#$33
0de9: 6f        ret

0dea: e4 f5     mov   a,$f5
0dec: 68 cc     cmp   a,#$cc
0dee: d0 fa     bne   $0dea
0df0: 64 f5     cmp   a,$f5
0df2: d0 f6     bne   $0dea
0df4: c4 f5     mov   $f5,a
0df6: eb f5     mov   y,$f5
0df8: d0 fc     bne   $0df6
0dfa: 7e f5     cmp   y,$f5
0dfc: d0 f6     bne   $0df4
0dfe: 2f 0a     bra   $0e0a
0e00: 7e f5     cmp   y,$f5
0e02: 30 18     bmi   $0e1c
0e04: d0 fa     bne   $0e00
0e06: 7e f5     cmp   y,$f5
0e08: d0 f6     bne   $0e00
0e0a: e4 f6     mov   a,$f6
0e0c: d7 2e     mov   ($2e)+y,a
0e0e: e4 f7     mov   a,$f7
0e10: cb f5     mov   $f5,y
0e12: fc        inc   y
0e13: d7 2e     mov   ($2e)+y,a
0e15: fc        inc   y
0e16: d0 e8     bne   $0e00
0e18: ab 2f     inc   $2f
0e1a: 2f e4     bra   $0e00
0e1c: 7e f5     cmp   y,$f5
0e1e: 10 e0     bpl   $0e00
0e20: e4 f5     mov   a,$f5
0e22: c4 f5     mov   $f5,a
0e24: e4 f5     mov   a,$f5
0e26: d0 fc     bne   $0e24
0e28: c4 f5     mov   $f5,a
0e2a: 6f        ret

0e2b: c4 0c     mov   $0c,a
0e2d: 8f 00 0d  mov   $0d,#$00
0e30: 68 97     cmp   a,#$97
0e32: 90 03     bcc   $0e37
0e34: 5f bb 0e  jmp   $0ebb

0e37: 8f 16 04  mov   $04,#$16
0e3a: 8f 0a 05  mov   $05,#$0a
0e3d: 8d 03     mov   y,#$03
0e3f: cf        mul   ya
0e40: 7a 04     addw  ya,$04
0e42: da 04     movw  $04,ya
0e44: 8d 00     mov   y,#$00
0e46: f7 04     mov   a,($04)+y
0e48: 9f        xcn   a
0e49: 5c        lsr   a
0e4a: 28 07     and   a,#$07
0e4c: 5d        mov   x,a
0e4d: bc        inc   a
0e4e: c4 07     mov   $07,a
0e50: f5 65 0f  mov   a,$0f65+x
0e53: c4 11     mov   $11,a
0e55: f7 04     mov   a,($04)+y
0e57: 28 1f     and   a,#$1f
0e59: c4 06     mov   $06,a
0e5b: cd 0c     mov   x,#$0c
0e5d: 78 02 07  cmp   $07,#$02
0e60: f0 3e     beq   $0ea0
0e62: b0 53     bcs   $0eb7
0e64: e4 0c     mov   a,$0c
0e66: 68 01     cmp   a,#$01
0e68: d0 14     bne   $0e7e
0e6a: e4 0d     mov   a,$0d
0e6c: 65 7f 02  cmp   a,$027f
0e6f: d0 06     bne   $0e77
0e71: cd 0e     mov   x,#$0e
0e73: 0b 11     asl   $11
0e75: 2f 31     bra   $0ea8
0e77: 65 7d 02  cmp   a,$027d
0e7a: f0 2c     beq   $0ea8
0e7c: 2f 16     bra   $0e94
0e7e: 68 91     cmp   a,#$91
0e80: 90 04     bcc   $0e86
0e82: 68 95     cmp   a,#$95
0e84: 90 16     bcc   $0e9c
0e86: 64 df     cmp   a,$df
0e88: d0 06     bne   $0e90
0e8a: cd 0e     mov   x,#$0e
0e8c: 0b 11     asl   $11
0e8e: 2f 18     bra   $0ea8
0e90: 64 dd     cmp   a,$dd
0e92: f0 14     beq   $0ea8
0e94: f5 c2 01  mov   a,$01c2+x
0e97: 75 c0 01  cmp   a,$01c0+x
0e9a: b0 04     bcs   $0ea0
0e9c: cd 0e     mov   x,#$0e
0e9e: 0b 11     asl   $11
0ea0: e4 06     mov   a,$06
0ea2: 75 c0 01  cmp   a,$01c0+x
0ea5: b0 01     bcs   $0ea8
0ea7: 6f        ret

0ea8: fc        inc   y
0ea9: f7 04     mov   a,($04)+y
0eab: c4 0a     mov   $0a,a
0ead: fc        inc   y
0eae: f7 04     mov   a,($04)+y
0eb0: c4 0b     mov   $0b,a
0eb2: 8f 01 08  mov   $08,#$01
0eb5: 2f 33     bra   $0eea
0eb7: cd 00     mov   x,#$00
0eb9: 2f ed     bra   $0ea8
0ebb: a8 97     sbc   a,#$97
0ebd: fd        mov   y,a
0ebe: f6 db 0b  mov   a,$0bdb+y
0ec1: c4 25     mov   $25,a
0ec3: 3f c5 19  call  $19c5
0ec6: e8 08     mov   a,#$08
0ec8: 8d ff     mov   y,#$ff
0eca: 78 d6 0c  cmp   $0c,#$d6
0ecd: b0 04     bcs   $0ed3
0ecf: e8 06     mov   a,#$06
0ed1: 8d 3f     mov   y,#$3f
0ed3: c4 07     mov   $07,a
0ed5: cb 11     mov   $11,y
0ed7: 8f 1e 06  mov   $06,#$1e
0eda: 8f a0 0a  mov   $0a,#$a0
0edd: 8f 3a 0b  mov   $0b,#$3a
0ee0: cd 00     mov   x,#$00
0ee2: d8 1c     mov   $1c,x
0ee4: d8 08     mov   $08,x
0ee6: d8 2c     mov   $2c,x
0ee8: d8 2d     mov   $2d,x
0eea: 8d 00     mov   y,#$00
0eec: f7 0a     mov   a,($0a)+y
0eee: d4 30     mov   $30+x,a
0ef0: fc        inc   y
0ef1: f7 0a     mov   a,($0a)+y
0ef3: d4 31     mov   $31+x,a
0ef5: e8 ff     mov   a,#$ff
0ef7: d5 b1 01  mov   $01b1+x,a
0efa: bc        inc   a
0efb: d4 40     mov   $40+x,a
0efd: d4 50     mov   $50+x,a
0eff: d4 60     mov   $60+x,a
0f01: d5 30 01  mov   $0130+x,a
0f04: d5 31 01  mov   $0131+x,a
0f07: d5 40 01  mov   $0140+x,a
0f0a: d5 41 01  mov   $0141+x,a
0f0d: d5 50 01  mov   $0150+x,a
0f10: d5 51 01  mov   $0151+x,a
0f13: d5 60 01  mov   $0160+x,a
0f16: d5 61 01  mov   $0161+x,a
0f19: d5 20 03  mov   $0320+x,a
0f1c: d5 21 03  mov   $0321+x,a
0f1f: d5 31 02  mov   $0231+x,a
0f22: d4 90     mov   $90+x,a
0f24: d5 30 02  mov   $0230+x,a
0f27: d5 d1 01  mov   $01d1+x,a
0f2a: d4 71     mov   $71+x,a
0f2c: d4 70     mov   $70+x,a
0f2e: d5 41 02  mov   $0241+x,a
0f31: d5 60 02  mov   $0260+x,a
0f34: bc        inc   a
0f35: d4 d0     mov   $d0+x,a
0f37: d5 b0 01  mov   $01b0+x,a
0f3a: e4 0c     mov   a,$0c
0f3c: d4 d1     mov   $d1+x,a
0f3e: e4 0d     mov   a,$0d
0f40: d5 71 02  mov   $0271+x,a
0f43: e4 08     mov   a,$08
0f45: d5 c1 01  mov   $01c1+x,a
0f48: e4 06     mov   a,$06
0f4a: d5 c0 01  mov   $01c0+x,a
0f4d: 6e 07 0f  dbnz  $07,$0f5f
0f50: e4 11     mov   a,$11
0f52: 0e 10 00  tset1 $0010
0f55: 4e 0e 00  tclr1 $000e
0f58: 4e 0f 00  tclr1 $000f
0f5b: 0e 1b 00  tset1 $001b
0f5e: 6f        ret

0f5f: 3d        inc   x
0f60: 3d        inc   x
0f61: fc        inc   y
0f62: 5f ec 0e  jmp   $0eec

0f65: 40        setp
0f66: c0        di
0f67: 07 0f     or    a,($0f+x)
0f69: 1f 3f 7f  jmp   ($7f3f+x)

0f6c: ff        stop
0f6d: e4 fd     mov   a,$fd
0f6f: f0 fc     beq   $0f6d
0f71: 03 24 12  bbs0  $24,$0f86
0f74: e4 f4     mov   a,$f4
0f76: 64 f4     cmp   a,$f4
0f78: d0 fa     bne   $0f74
0f7a: 68 00     cmp   a,#$00
0f7c: f0 08     beq   $0f86
0f7e: c4 f4     mov   $f4,a
0f80: 8f 11 f1  mov   $f1,#$11
0f83: 3f ed 0c  call  $0ced
0f86: f3 1f 07  bbc7  $1f,$0f90
0f89: f2 1f     clr7  $1f
0f8b: e4 2b     mov   a,$2b
0f8d: 3f 19 0d  call  $0d19
0f90: 8f 5c f2  mov   $f2,#$5c
0f93: fa 10 f3  mov   ($f3),($10)       ; KOF
0f96: e4 26     mov   a,$26
0f98: d0 1a     bne   $0fb4
0f9a: e4 2a     mov   a,$2a
0f9c: f0 18     beq   $0fb6
0f9e: e4 27     mov   a,$27
0fa0: f0 0a     beq   $0fac
0fa2: 65 7d 02  cmp   a,$027d
0fa5: f0 0b     beq   $0fb2
0fa7: 65 7f 02  cmp   a,$027f
0faa: f0 06     beq   $0fb2
0fac: e8 00     mov   a,#$00
0fae: c4 2a     mov   $2a,a
0fb0: 2f 04     bra   $0fb6
0fb2: 8b 2a     dec   $2a
0fb4: e8 ff     mov   a,#$ff
0fb6: c4 f7     mov   $f7,a
0fb8: 8f 2d f2  mov   $f2,#$2d
0fbb: 8f 00 f3  mov   $f3,#$00          ; PMON
0fbe: 8f 3d f2  mov   $f2,#$3d
0fc1: 8f 00 f3  mov   $f3,#$00          ; NON
0fc4: e8 10     mov   a,#$10
0fc6: 9c        dec   a
0fc7: d0 fd     bne   $0fc6
0fc9: e4 19     mov   a,$19
0fcb: f0 04     beq   $0fd1
0fcd: 8b 19     dec   $19
0fcf: 2f 06     bra   $0fd7
0fd1: 8f 6c f2  mov   $f2,#$6c
0fd4: fa 13 f3  mov   ($f3),($13)       ; set FLG
0fd7: e4 1a     mov   a,$1a
0fd9: f0 10     beq   $0feb
0fdb: 8b 1a     dec   $1a
0fdd: d0 0c     bne   $0feb
0fdf: 8f 3c f2  mov   $f2,#$3c
0fe2: fa 15 f3  mov   ($f3),($15)       ; EVOL(R)
0fe5: 8f 2c f2  mov   $f2,#$2c
0fe8: fa 16 f3  mov   ($f3),($16)       ; EVOL(L)
0feb: e8 00     mov   a,#$00
0fed: 8f 5c f2  mov   $f2,#$5c
0ff0: c4 f3     mov   $f3,a             ; KOF
0ff2: c4 10     mov   $10,a
0ff4: 8f 4c f2  mov   $f2,#$4c
0ff7: fa 0e f3  mov   ($f3),($0e)       ; KON
0ffa: c4 0e     mov   $0e,a
0ffc: 33 1f 07  bbc1  $1f,$1006
0fff: cd 0c     mov   x,#$0c
1001: 8f 40 11  mov   $11,#$40
1004: 2f 48     bra   $104e
1006: e4 2d     mov   a,$2d
1008: f0 1b     beq   $1025
100a: 68 ff     cmp   a,#$ff
100c: d0 09     bne   $1017
100e: 8b 2c     dec   $2c
1010: d0 13     bne   $1025
1012: 8f 00 2d  mov   $2d,#$00
1015: 2f 0e     bra   $1025
1017: 8b 2d     dec   $2d
1019: d0 0a     bne   $1025
101b: ab 2c     inc   $2c
101d: 78 20 2c  cmp   $2c,#$20
1020: b0 03     bcs   $1025
1022: 8f 08 2d  mov   $2d,#$08
1025: ab 24     inc   $24
1027: e4 1c     mov   a,$1c
1029: f0 1e     beq   $1049
102b: 8b 1d     dec   $1d
102d: d0 1a     bne   $1049
102f: fa 1e 1d  mov   ($1d),($1e)
1032: 8b 1c     dec   $1c
1034: d0 13     bne   $1049
1036: 78 d6 d1  cmp   $d1,#$d6
1039: b0 05     bcs   $1040
103b: 3f 8f 0c  call  $0c8f
103e: 2f 03     bra   $1043
1040: 3f af 0c  call  $0caf
1043: 0e 10 00  tset1 $0010
1046: 4e 0f 00  tclr1 $000f
1049: 8f 01 11  mov   $11,#$01
104c: cd 00     mov   x,#$00
104e: f4 d1     mov   a,$d1+x
1050: f0 5f     beq   $10b1
1052: e4 11     mov   a,$11
1054: 24 1b     and   a,$1b
1056: d0 59     bne   $10b1
1058: f5 c1 01  mov   a,$01c1+x
105b: 5c        lsr   a
105c: b0 08     bcs   $1066
105e: 7d        mov   a,x
105f: 5c        lsr   a
1060: 44 24     eor   a,$24
1062: 28 01     and   a,#$01
1064: d0 4b     bne   $10b1
1066: d8 22     mov   $22,x
1068: f5 b0 03  mov   a,$03b0+x
106b: c4 23     mov   $23,a
106d: f5 c1 01  mov   a,$01c1+x
1070: c4 20     mov   $20,a
1072: f5 b0 01  mov   a,$01b0+x
1075: 03 20 0e  bbs0  $20,$1086
1078: 60        clrc
1079: 84 2c     adc   a,$2c
107b: 90 09     bcc   $1086
107d: 60        clrc
107e: 95 b1 01  adc   a,$01b1+x
1081: d5 b0 01  mov   $01b0+x,a
1084: 2f 09     bra   $108f
1086: 60        clrc
1087: 95 b1 01  adc   a,$01b1+x
108a: d5 b0 01  mov   $01b0+x,a
108d: 90 1a     bcc   $10a9
108f: 9b d0     dec   $d0+x
1091: f0 05     beq   $1098
1093: 3f d6 11  call  $11d6
1096: 2f 14     bra   $10ac
1098: 3f 9b 13  call  $139b
109b: a3 20 07  bbs5  $20,$10a5
109e: e2 21     set7  $21
10a0: 3f cc 12  call  $12cc
10a3: 2f 07     bra   $10ac
10a5: b2 20     clr5  $20
10a7: 2f 03     bra   $10ac
10a9: 3f 71 11  call  $1171
10ac: e4 20     mov   a,$20
10ae: d5 c1 01  mov   $01c1+x,a
10b1: e4 26     mov   a,$26
10b3: f0 17     beq   $10cc
10b5: e4 f5     mov   a,$f5
10b7: 68 cc     cmp   a,#$cc
10b9: d0 11     bne   $10cc
10bb: 64 f5     cmp   a,$f5
10bd: d0 0d     bne   $10cc
10bf: fa 11 12  mov   ($12),($11)
10c2: 4d        push  x
10c3: 3f 0d 11  call  $110d
10c6: ce        pop   x
10c7: fa 12 11  mov   ($11),($12)
10ca: 2f 17     bra   $10e3
10cc: e4 f5     mov   a,$f5
10ce: 68 fd     cmp   a,#$fd
10d0: 90 11     bcc   $10e3
10d2: 64 f5     cmp   a,$f5
10d4: d0 0d     bne   $10e3
10d6: c4 f5     mov   $f5,a
10d8: fa 11 12  mov   ($12),($11)
10db: 4d        push  x
10dc: 3f 32 0d  call  $0d32
10df: ce        pop   x
10e0: fa 12 11  mov   ($11),($12)
10e3: 3d        inc   x
10e4: 3d        inc   x
10e5: 0b 11     asl   $11
10e7: f0 03     beq   $10ec
10e9: 5f 4e 10  jmp   $104e

10ec: 8f 00 1b  mov   $1b,#$00
10ef: e4 26     mov   a,$26
10f1: d0 03     bne   $10f6
10f3: 5f 6d 0f  jmp   $0f6d

10f6: e4 f5     mov   a,$f5
10f8: 68 cc     cmp   a,#$cc
10fa: f0 07     beq   $1103
10fc: e4 fd     mov   a,$fd
10fe: f0 f6     beq   $10f6
1100: 5f 71 0f  jmp   $0f71

1103: 64 f5     cmp   a,$f5
1105: d0 ef     bne   $10f6
1107: 3f 0d 11  call  $110d
110a: 5f 71 0f  jmp   $0f71

110d: c4 f5     mov   $f5,a
110f: eb f5     mov   y,$f5
1111: d0 fc     bne   $110f
1113: 7e f5     cmp   y,$f5
1115: d0 f6     bne   $110d
1117: 13 29 08  bbc0  $29,$1122
111a: 2f 23     bra   $113f
111c: 7e f5     cmp   y,$f5
111e: 30 2d     bmi   $114d
1120: d0 fa     bne   $111c
1122: e4 f6     mov   a,$f6
1124: d7 2e     mov   ($2e)+y,a
1126: e4 f7     mov   a,$f7
1128: cb f5     mov   $f5,y
112a: fc        inc   y
112b: d7 2e     mov   ($2e)+y,a
112d: fc        inc   y
112e: d0 ec     bne   $111c
1130: ab 2f     inc   $2f
1132: e4 f5     mov   a,$f5
1134: d0 fc     bne   $1132
1136: c4 f5     mov   $f5,a
1138: 6f        ret

1139: 7e f5     cmp   y,$f5
113b: 30 0a     bmi   $1147
113d: d0 fa     bne   $1139
113f: cb f5     mov   $f5,y
1141: fc        inc   y
1142: fc        inc   y
1143: d0 f4     bne   $1139
1145: 2f e9     bra   $1130
1147: 7e f5     cmp   y,$f5
1149: 10 ee     bpl   $1139
114b: 2f 04     bra   $1151
114d: 7e f5     cmp   y,$f5
114f: 10 cb     bpl   $111c
1151: e4 f5     mov   a,$f5
1153: c4 f5     mov   $f5,a
1155: eb 26     mov   y,$26
1157: 8f 00 f1  mov   $f1,#$00
115a: 8f 20 fa  mov   $fa,#$20
115d: 8f 01 f1  mov   $f1,#$01
1160: e4 f5     mov   a,$f5
1162: d0 fc     bne   $1160
1164: c4 f5     mov   $f5,a
1166: c4 26     mov   $26,a
1168: dd        mov   a,y
1169: 30 cd     bmi   $1138
116b: 23 1f ca  bbs1  $1f,$1138
116e: e2 1f     set7  $1f
1170: 6f        ret

1171: 12 21     clr0  $21
1173: f4 80     mov   a,$80+x
1175: f0 1d     beq   $1194
1177: 93 20 05  bbc4  $20,$117f
117a: 3f 19 1b  call  $1b19
117d: 2f 13     bra   $1192
117f: f4 81     mov   a,$81+x
1181: d0 11     bne   $1194
1183: f4 e0     mov   a,$e0+x
1185: 60        clrc
1186: 95 d0 02  adc   a,$02d0+x
1189: d4 e0     mov   $e0+x,a
118b: f4 e1     mov   a,$e1+x
118d: 95 d1 02  adc   a,$02d1+x
1190: d4 e1     mov   $e1+x,a
1192: 02 21     set0  $21
1194: fb e1     mov   y,$e1+x
1196: f4 e0     mov   a,$e0+x
1198: da 0a     movw  $0a,ya
119a: f5 30 02  mov   a,$0230+x
119d: f0 18     beq   $11b7
119f: f4 a0     mov   a,$a0+x
11a1: d0 14     bne   $11b7
11a3: f4 b0     mov   a,$b0+x
11a5: 60        clrc
11a6: 94 b1     adc   a,$b1+x
11a8: d4 b0     mov   $b0+x,a
11aa: 90 0b     bcc   $11b7
11ac: 3f 5f 1b  call  $1b5f
11af: ba 08     movw  ya,$08
11b1: 7a 0a     addw  ya,$0a
11b3: da 0a     movw  $0a,ya
11b5: 02 21     set0  $21
11b7: f5 d1 01  mov   a,$01d1+x
11ba: f0 11     beq   $11cd
11bc: 60        clrc
11bd: 94 61     adc   a,$61+x
11bf: d4 61     mov   $61+x,a
11c1: 90 0a     bcc   $11cd
11c3: 3f 94 1b  call  $1b94
11c6: ba 0a     movw  ya,$0a
11c8: 7a 04     addw  ya,$04
11ca: 5f fb 14  jmp   $14fb

11cd: 13 21 05  bbc0  $21,$11d5
11d0: ba 0a     movw  ya,$0a
11d2: 5f fb 14  jmp   $14fb

11d5: 6f        ret

11d6: 8f 00 21  mov   $21,#$00
11d9: f5 41 02  mov   a,$0241+x
11dc: 68 7f     cmp   a,#$7f
11de: b0 2a     bcs   $120a
11e0: f4 d0     mov   a,$d0+x
11e2: 68 01     cmp   a,#$01
11e4: f0 21     beq   $1207
11e6: f4 51     mov   a,$51+x
11e8: f0 20     beq   $120a
11ea: 9b 51     dec   $51+x
11ec: d0 1c     bne   $120a
11ee: f5 d0 01  mov   a,$01d0+x
11f1: 10 14     bpl   $1207
11f3: e8 05     mov   a,#$05
11f5: 04 23     or    a,$23
11f7: c4 f2     mov   $f2,a
11f9: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
11fc: bc        inc   a
11fd: bc        inc   a
11fe: c4 f2     mov   $f2,a
1200: f5 d0 01  mov   a,$01d0+x
1203: c4 f3     mov   $f3,a             ; set GAIN
1205: 2f 03     bra   $120a
1207: 09 11 10  or    ($10),($11)
120a: f4 80     mov   a,$80+x
120c: f0 31     beq   $123f
120e: 93 20 05  bbc4  $20,$1216
1211: 3f 19 1b  call  $1b19
1214: 2f 27     bra   $123d
1216: f4 81     mov   a,$81+x
1218: f0 04     beq   $121e
121a: 9b 81     dec   $81+x
121c: 2f 21     bra   $123f
121e: 9b 80     dec   $80+x
1220: d0 0c     bne   $122e
1222: f5 e1 02  mov   a,$02e1+x
1225: d4 e1     mov   $e1+x,a
1227: f5 e0 02  mov   a,$02e0+x
122a: d4 e0     mov   $e0+x,a
122c: 2f 0f     bra   $123d
122e: f4 e0     mov   a,$e0+x
1230: 60        clrc
1231: 95 d0 02  adc   a,$02d0+x
1234: d4 e0     mov   $e0+x,a
1236: f4 e1     mov   a,$e1+x
1238: 95 d1 02  adc   a,$02d1+x
123b: d4 e1     mov   $e1+x,a
123d: 02 21     set0  $21
123f: e8 00     mov   a,#$00
1241: fd        mov   y,a
1242: da 08     movw  $08,ya
1244: f5 30 02  mov   a,$0230+x
1247: f0 36     beq   $127f
1249: f4 a0     mov   a,$a0+x
124b: f0 04     beq   $1251
124d: 9b a0     dec   $a0+x
124f: 2f 2e     bra   $127f
1251: f4 a1     mov   a,$a1+x
1253: f0 1c     beq   $1271
1255: 9b a1     dec   $a1+x
1257: d0 05     bne   $125e
1259: f5 30 02  mov   a,$0230+x
125c: 2f 10     bra   $126e
125e: f5 f0 02  mov   a,$02f0+x
1261: 60        clrc
1262: 95 00 03  adc   a,$0300+x
1265: d5 f0 02  mov   $02f0+x,a
1268: f5 f1 02  mov   a,$02f1+x
126b: 95 01 03  adc   a,$0301+x
126e: d5 f1 02  mov   $02f1+x,a
1271: f4 b0     mov   a,$b0+x
1273: 60        clrc
1274: 94 b1     adc   a,$b1+x
1276: d4 b0     mov   $b0+x,a
1278: 90 05     bcc   $127f
127a: 3f 5f 1b  call  $1b5f
127d: 02 21     set0  $21
127f: f5 d1 01  mov   a,$01d1+x
1282: f0 12     beq   $1296
1284: 60        clrc
1285: 94 61     adc   a,$61+x
1287: d4 61     mov   $61+x,a
1289: 90 0b     bcc   $1296
128b: 3f 94 1b  call  $1b94
128e: fb e1     mov   y,$e1+x
1290: f4 e0     mov   a,$e0+x
1292: 7a 04     addw  ya,$04
1294: 2f 07     bra   $129d
1296: 13 21 09  bbc0  $21,$12a2
1299: fb e1     mov   y,$e1+x
129b: f4 e0     mov   a,$e0+x
129d: 7a 08     addw  ya,$08
129f: 3f fb 14  call  $14fb
12a2: f4 70     mov   a,$70+x
12a4: f0 26     beq   $12cc
12a6: e2 21     set7  $21
12a8: 9b 70     dec   $70+x
12aa: f0 15     beq   $12c1
12ac: f5 b0 02  mov   a,$02b0+x
12af: 60        clrc
12b0: 95 c0 02  adc   a,$02c0+x
12b3: d5 b0 02  mov   $02b0+x,a
12b6: f5 b1 02  mov   a,$02b1+x
12b9: 95 c1 02  adc   a,$02c1+x
12bc: d5 b1 02  mov   $02b1+x,a
12bf: 2f 0b     bra   $12cc
12c1: f5 11 02  mov   a,$0211+x
12c4: d5 b1 02  mov   $02b1+x,a
12c7: e8 00     mov   a,#$00
12c9: d5 b0 02  mov   $02b0+x,a
12cc: f4 40     mov   a,$40+x
12ce: f0 1e     beq   $12ee
12d0: 9b 40     dec   $40+x
12d2: d0 04     bne   $12d8
12d4: f4 41     mov   a,$41+x
12d6: 2f 10     bra   $12e8
12d8: f5 10 01  mov   a,$0110+x
12db: 60        clrc
12dc: 95 00 01  adc   a,$0100+x
12df: d5 10 01  mov   $0110+x,a
12e2: f5 11 01  mov   a,$0111+x
12e5: 95 01 01  adc   a,$0101+x
12e8: d5 11 01  mov   $0111+x,a
12eb: d5 b1 01  mov   $01b1+x,a
12ee: f4 71     mov   a,$71+x
12f0: f0 26     beq   $1318
12f2: e2 21     set7  $21
12f4: 9b 71     dec   $71+x
12f6: d0 0d     bne   $1305
12f8: f5 00 02  mov   a,$0200+x
12fb: d5 91 02  mov   $0291+x,a
12fe: e8 00     mov   a,#$00
1300: d5 90 02  mov   $0290+x,a
1303: 2f 13     bra   $1318
1305: f5 90 02  mov   a,$0290+x
1308: 60        clrc
1309: 95 a0 02  adc   a,$02a0+x
130c: d5 90 02  mov   $0290+x,a
130f: f5 91 02  mov   a,$0291+x
1312: 95 a1 02  adc   a,$02a1+x
1315: d5 91 02  mov   $0291+x,a
1318: e3 21 05  bbs7  $21,$1320
131b: e4 1c     mov   a,$1c
131d: d0 01     bne   $1320
131f: 6f        ret

1320: f5 01 02  mov   a,$0201+x
1323: f0 fa     beq   $131f
1325: f5 30 01  mov   a,$0130+x
1328: c4 08     mov   $08,a
132a: f5 31 01  mov   a,$0131+x
132d: c4 09     mov   $09,a
132f: f5 40 01  mov   a,$0140+x
1332: c4 0a     mov   $0a,a
1334: f5 41 01  mov   a,$0141+x
1337: c4 0b     mov   $0b,a
1339: f5 01 02  mov   a,$0201+x
133c: 8d 00     mov   y,#$00
133e: 7a 08     addw  ya,$08
1340: 7a 0a     addw  ya,$0a
1342: 30 1e     bmi   $1362
1344: ad 00     cmp   y,#$00
1346: d0 04     bne   $134c
1348: 08 00     or    a,#$00
134a: 10 02     bpl   $134e
134c: e8 7f     mov   a,#$7f
134e: fd        mov   y,a
134f: f5 91 02  mov   a,$0291+x
1352: cf        mul   ya
1353: e4 1c     mov   a,$1c
1355: f0 04     beq   $135b
1357: 03 20 01  bbs0  $20,$135b
135a: cf        mul   ya
135b: dd        mov   a,y
135c: 80        setc
135d: b5 60 02  sbc   a,$0260+x
1360: b0 02     bcs   $1364
1362: e8 00     mov   a,#$00
1364: fd        mov   y,a
1365: f6 30 03  mov   a,$0330+y
1368: c4 05     mov   $05,a
136a: e8 14     mov   a,#$14
136c: 03 1f 09  bbs0  $1f,$1378
136f: f5 b1 02  mov   a,$02b1+x
1372: 68 29     cmp   a,#$29
1374: 90 02     bcc   $1378
1376: e8 28     mov   a,#$28
1378: c4 04     mov   $04,a
137a: fd        mov   y,a
137b: f6 ad 1d  mov   a,$1dad+y
137e: eb 05     mov   y,$05
1380: cf        mul   ya
1381: e8 00     mov   a,#$00
1383: 04 23     or    a,$23
1385: c4 f2     mov   $f2,a
1387: cb f3     mov   $f3,y             ; set VOL(L)
1389: bc        inc   a
138a: c4 f2     mov   $f2,a
138c: e8 28     mov   a,#$28
138e: 80        setc
138f: a4 04     sbc   a,$04
1391: fd        mov   y,a
1392: f6 ad 1d  mov   a,$1dad+y
1395: eb 05     mov   y,$05
1397: cf        mul   ya
1398: cb f3     mov   $f3,y             ; set VOL(R)
139a: 6f        ret

139b: 3f d2 13  call  $13d2
139e: c4 08     mov   $08,a
13a0: 28 7f     and   a,#$7f
13a2: 68 60     cmp   a,#$60
13a4: 90 35     bcc   $13db
13a6: e4 08     mov   a,$08
13a8: 80        setc
13a9: a8 e0     sbc   a,#$e0
13ab: b0 16     bcs   $13c3
13ad: 22 20     set1  $20
13af: 68 80     cmp   a,#$80
13b1: f0 e8     beq   $139b
13b3: 32 20     clr1  $20
13b5: 68 81     cmp   a,#$81
13b7: f0 e2     beq   $139b
13b9: a2 20     set5  $20
13bb: 3f af 0c  call  $0caf
13be: cd 00     mov   x,#$00
13c0: d8 11     mov   $11,x
13c2: 6f        ret

; dispatch vcmd
13c3: 1c        asl   a
13c4: fd        mov   y,a
13c5: f6 38 15  mov   a,$1538+y
13c8: 2d        push  a
13c9: f6 37 15  mov   a,$1537+y
13cc: 2d        push  a
13cd: f6 77 15  mov   a,$1577+y
13d0: f0 08     beq   $13da
; read a byte from voice stream
13d2: e7 30     mov   a,($30+x)
13d4: bb 30     inc   $30+x
13d6: d0 02     bne   $13da
13d8: bb 31     inc   $31+x
13da: 6f        ret

; vcmd 00-5f - note
; vcmd 80-df - note without length
; $08 = vcmd (note number + flag bit for length)
13db: 33 20 03  bbc1  $20,$13e1
13de: 09 11 10  or    ($10),($11)
13e1: f3 08 05  bbc7  $08,$13e9         ; if vcmd >= $80
13e4: f5 40 02  mov   a,$0240+x         ;   reuse last length, skip arg1
13e7: 2f 06     bra   $13ef
13e9: 3f d2 13  call  $13d2             ; get arg1 (length in ticks)
13ec: d5 40 02  mov   $0240+x,a         ; save note length
13ef: d4 d0     mov   $d0+x,a
13f1: f5 41 02  mov   a,$0241+x
13f4: 68 7f     cmp   a,#$7f
13f6: f0 06     beq   $13fe
13f8: 09 11 0e  or    ($0e),($11)
13fb: 09 11 0f  or    ($0f),($11)
13fe: 3f d2 13  call  $13d2             ; get arg2 (00-7f: note duration, 80-ff: note volume)
1401: 08 00     or    a,#$00
1403: 30 06     bmi   $140b
1405: d5 41 02  mov   $0241+x,a         ; save note duration
1408: 3f d2 13  call  $13d2             ; get arg3 (note volume) (only available if arg2 < 0x80)
140b: 28 7f     and   a,#$7f
140d: d5 01 02  mov   $0201+x,a         ; save note volume
1410: d0 08     bne   $141a
1412: e4 11     mov   a,$11
1414: 4e 0e 00  tclr1 $000e
1417: 4e 0f 00  tclr1 $000f
141a: 33 20 0a  bbc1  $20,$1427         ; skip instrument loading for rhythm channel
; rhythm channel: load sample
141d: e4 08     mov   a,$08
141f: 28 7f     and   a,#$7f
1421: 3f 6a 16  call  $166a             ; load instrument
1424: 8f 3c 08  mov   $08,#$3c          ; note number = 60
; calc actual note length
1427: f5 40 02  mov   a,$0240+x         ; note length
142a: fd        mov   y,a
142b: f5 41 02  mov   a,$0241+x         ; note duration
142e: 68 7f     cmp   a,#$7f
1430: f0 06     beq   $1438             ; duration $7f means full length
1432: 1c        asl   a
1433: cf        mul   ya                ; actual length = (length * (duration << 1)) >> 8
1434: dd        mov   a,y
1435: d0 01     bne   $1438
1437: fc        inc   y                 ; actual length = 1 if it was zero
1438: db 51     mov   $51+x,y           ; save actual note length
143a: fb e1     mov   y,$e1+x
143c: f4 e0     mov   a,$e0+x
143e: da 0c     movw  $0c,ya
1440: f5 51 01  mov   a,$0151+x
1443: c4 05     mov   $05,a
1445: f5 50 01  mov   a,$0150+x
1448: c4 04     mov   $04,a             ; $04/5 = repeat-triggered tuning #1
144a: f5 61 01  mov   a,$0161+x
144d: c4 07     mov   $07,a
144f: f5 60 01  mov   a,$0160+x
1452: c4 06     mov   $06,a             ; $06/7 = repeat-triggered tuning #2
1454: f5 21 03  mov   a,$0321+x
1457: c4 0b     mov   $0b,a
1459: f5 20 03  mov   a,$0320+x
145c: c4 0a     mov   $0a,a             ; $0a/b = tuning
145e: e4 08     mov   a,$08             ; note number
1460: 60        clrc
1461: 95 31 02  adc   a,$0231+x         ; per-voice transpose
1464: fd        mov   y,a
1465: e8 00     mov   a,#$00
1467: 7a 04     addw  ya,$04            ; add repeat-triggered tuning #1
1469: 7a 06     addw  ya,$06            ; add repeat-triggered tuning #2
146b: 7a 0a     addw  ya,$0a            ; add tuning
146d: d4 e0     mov   $e0+x,a           ; save intermediate note number (fraction)
146f: dd        mov   a,y
1470: 28 7f     and   a,#$7f            ; note number &= 0x7f
1472: d4 e1     mov   $e1+x,a           ; save intermediate note number (integer)
1474: f5 30 02  mov   a,$0230+x
1477: f0 26     beq   $149f
1479: e8 00     mov   a,#$00
147b: d4 b0     mov   $b0+x,a
147d: d4 c1     mov   $c1+x,a
147f: f5 20 02  mov   a,$0220+x
1482: d4 a0     mov   $a0+x,a
1484: f5 21 02  mov   a,$0221+x
1487: d4 a1     mov   $a1+x,a
1489: f0 0b     beq   $1496
148b: f5 00 03  mov   a,$0300+x
148e: d5 f0 02  mov   $02f0+x,a
1491: f5 01 03  mov   a,$0301+x
1494: 2f 06     bra   $149c
1496: d5 f0 02  mov   $02f0+x,a
1499: f5 30 02  mov   a,$0230+x
149c: d5 f1 02  mov   $02f1+x,a
149f: f5 d0 01  mov   a,$01d0+x
14a2: 10 18     bpl   $14bc
14a4: e8 05     mov   a,#$05
14a6: 04 23     or    a,$23
14a8: c4 f2     mov   $f2,a
14aa: f5 80 02  mov   a,$0280+x
14ad: c4 f3     mov   $f3,a             ; set ADSR(1)
14af: d0 0b     bne   $14bc
14b1: e8 07     mov   a,#$07
14b3: 04 23     or    a,$23
14b5: c4 f2     mov   $f2,a
14b7: f5 81 02  mov   a,$0281+x
14ba: c4 f3     mov   $f3,a             ; set GAIN
14bc: f4 90     mov   a,$90+x
14be: d4 80     mov   $80+x,a
14c0: f0 2c     beq   $14ee
14c2: 83 20 17  bbs4  $20,$14dc
14c5: f4 91     mov   a,$91+x
14c7: d4 81     mov   $81+x,a
14c9: f4 e0     mov   a,$e0+x
14cb: d5 e0 02  mov   $02e0+x,a
14ce: f4 e1     mov   a,$e1+x
14d0: d5 e1 02  mov   $02e1+x,a
14d3: 80        setc
14d4: b5 10 02  sbc   a,$0210+x
14d7: d4 e1     mov   $e1+x,a
14d9: fd        mov   y,a
14da: 2f 1d     bra   $14f9
14dc: f4 e1     mov   a,$e1+x
14de: d5 e1 02  mov   $02e1+x,a
14e1: f4 e0     mov   a,$e0+x
14e3: d5 e0 02  mov   $02e0+x,a
14e6: ba 0c     movw  ya,$0c
14e8: db e1     mov   $e1+x,y
14ea: d4 e0     mov   $e0+x,a
14ec: 2f 0d     bra   $14fb
; if the next is vcmd f3, handle it here somehow
14ee: e7 30     mov   a,($30+x)
14f0: 68 f3     cmp   a,#$f3
14f2: d0 03     bne   $14f7
14f4: 3f e6 15  call  $15e6             ; dispatch vcmd f3
;
14f7: fb e1     mov   y,$e1+x
14f9: f4 e0     mov   a,$e0+x
14fb: da 04     movw  $04,ya
14fd: f5 50 02  mov   a,$0250+x
1500: fd        mov   y,a
1501: f5 51 02  mov   a,$0251+x
1504: 7a 04     addw  ya,$04            ; add per-instrument tuning
1506: c4 04     mov   $04,a
1508: dd        mov   a,y
1509: 1c        asl   a                 ; ?
150a: fd        mov   y,a
150b: f6 ad 1b  mov   a,$1bad+y         ; pitch table
150e: c4 06     mov   $06,a
1510: f6 ae 1b  mov   a,$1bae+y
1513: c4 07     mov   $07,a
1515: f6 ae 1c  mov   a,$1cae+y         ; pitch scale (multiplier)
1518: 2d        push  a
1519: f6 ad 1c  mov   a,$1cad+y         ; pitch scale (fraction)
151c: eb 04     mov   y,$04
151e: cf        mul   ya
151f: ae        pop   a
1520: cf        mul   ya
1521: 7a 06     addw  ya,$06            ; ?, ya = final pitch value
1523: c4 04     mov   $04,a
1525: e8 02     mov   a,#$02
1527: 04 23     or    a,$23
1529: c4 f2     mov   $f2,a
152b: fa 04 f3  mov   ($f3),($04)       ; set P(L)
152e: bc        inc   a
152f: c4 f2     mov   $f2,a
1531: dd        mov   a,y
1532: 28 3f     and   a,#$3f
1534: c4 f3     mov   $f3,a             ; set P(H)
1536: 6f        ret

; vcmd dispatch table (e0-ff)
1537: dw $15b7  ; e0
1539: dw $15cb  ; e1
153b: dw $1616  ; e2 - set instrument
153d: dw $16d6  ; e3
153f: dw $16f6  ; e4
1541: dw $1758  ; e5
1543: dw $1771  ; e6 - start loop
1545: dw $177e  ; e7 - end loop
1547: dw $17ef  ; e8 - start loop #2
1549: dw $180c  ; e9 - end loop #2
154b: dw $186d  ; ea - set tempo (per track)
154d: dw $1877  ; eb
154f: dw $189c  ; ec - per-voice transpose
1551: dw $18a2  ; ed
1553: dw $18ab  ; ee - set volume
1555: dw $18b9  ; ef
1557: dw $18ec  ; f0
1559: dw $18f3  ; f1
155b: dw $1905  ; f2 - tuning
155d: dw $1920  ; f3
155f: dw $1929  ; f4
1561: dw $194f  ; f5 - set echo params
1563: dw $19f7  ; f6 - start complexed loop
1565: dw $1a09  ; f7 - end complexed loop
1567: dw $1a40  ; f8
1569: dw $173d  ; f9
156b: dw $1a5b  ; fa
156d: dw $1a9f  ; fb
156f: dw $1a9f  ; fc
1571: dw $1aab  ; fd - goto
1573: dw $1ab9  ; fe - call subroutine
1575: dw $1ad2  ; ff - end of track / end subroutine

; vcmd length table (e0-ff)
; this table only suggests which vcmd will not take any parameters.
; therefore, the table content is somewhat wrong. do not trust.
1577: dw $0001,$0002,$0001,$0001,$0003,$0003,$0000,$0003
1587: dw $0000,$0003,$0001,$0002,$0001,$0003,$0001,$0002
1597: dw $0001,$0003,$0001,$0003,$0003,$0003,$0000,$0000
15a7: dw $0002,$0001,$0003,$0001,$0001,$0002,$0002,$0000

; vcmd e0
15b7: d5 40 02  mov   $0240+x,a
15ba: d4 d0     mov   $d0+x,a
15bc: 09 11 10  or    ($10),($11)
15bf: e8 00     mov   a,#$00
15c1: d5 41 02  mov   $0241+x,a
15c4: d4 51     mov   $51+x,a
15c6: d5 01 02  mov   $0201+x,a
15c9: 2f 15     bra   $15e0

; vcmd e1
15cb: d5 40 02  mov   $0240+x,a
15ce: d4 d0     mov   $d0+x,a
15d0: 3f d2 13  call  $13d2
15d3: d5 41 02  mov   $0241+x,a
15d6: 1c        asl   a
15d7: fb d0     mov   y,$d0+x
15d9: cf        mul   ya
15da: dd        mov   a,y
15db: d0 01     bne   $15de
15dd: bc        inc   a
15de: d4 51     mov   $51+x,a
15e0: e7 30     mov   a,($30+x)
15e2: 68 f3     cmp   a,#$f3
15e4: d0 2f     bne   $1615
15e6: 3f d4 13  call  $13d4
15e9: 3f d2 13  call  $13d2
15ec: d4 81     mov   $81+x,a
15ee: 3f d2 13  call  $13d2
15f1: d4 80     mov   $80+x,a
15f3: 3f d2 13  call  $13d2
15f6: 60        clrc
15f7: 95 31 02  adc   a,$0231+x
15fa: d5 e1 02  mov   $02e1+x,a
15fd: e8 00     mov   a,#$00
15ff: d5 e0 02  mov   $02e0+x,a
1602: f4 80     mov   a,$80+x
1604: f0 0f     beq   $1615
1606: 3f d4 13  call  $13d4
1609: 3f d2 13  call  $13d2
160c: d5 d0 02  mov   $02d0+x,a
160f: 3f d2 13  call  $13d2
1612: d5 d1 02  mov   $02d1+x,a
1615: 6f        ret

; vcmd e2 - set instrument
1616: 09 11 10  or    ($10),($11)
1619: fd        mov   y,a
161a: f5 71 02  mov   a,$0271+x
161d: d0 27     bne   $1646
161f: dd        mov   a,y
1620: 68 27     cmp   a,#$27
1622: b0 0c     bcs   $1630             ; branch if arg1 (patch) >= 0x27
1624: 8f e0 04  mov   $04,#$e0
1627: 8f 06 05  mov   $05,#$06          ; $04 = #$06e0
162a: 3f 70 16  call  $1670
162d: 5f 9b 13  jmp   $139b
; when patch >= 0x27:
1630: a8 27     sbc   a,#$27            ; patch -= 0x27
1632: 2d        push  a
1633: eb 25     mov   y,$25
1635: f6 be 06  mov   a,$06be+y
1638: c4 04     mov   $04,a
163a: f6 bf 06  mov   a,$06bf+y
163d: c4 05     mov   $05,a             ; $04 = *(u16)($06be + $25 * 2)
163f: ae        pop   a
1640: 3f 70 16  call  $1670
1643: 5f 9b 13  jmp   $139b

1646: fd        mov   y,a
1647: e8 04     mov   a,#$04
1649: 04 23     or    a,$23
164b: c4 06     mov   $06,a
164d: c4 f2     mov   $f2,a
164f: dd        mov   a,y
1650: 60        clrc
1651: 88 59     adc   a,#$59
1653: c4 f3     mov   $f3,a             ; set SRCN
1655: 8f de 04  mov   $04,#$de
1658: 8f 05 05  mov   $05,#$05          ; $04 = #$05de
165b: e8 06     mov   a,#$06
165d: cf        mul   ya
165e: 7a 04     addw  ya,$04
1660: da 04     movw  $04,ya
1662: 8d 00     mov   y,#$00
1664: 3f 86 16  call  $1686
1667: 5f 9b 13  jmp   $139b

; load instrument for percussive note
166a: 8f 56 04  mov   $04,#$56
166d: 8f 09 05  mov   $05,#$09          ; $04 = #$0956

; load instrument attributes from instrument table
; a = patch number, $04 = instrument table address
1670: 8d 07     mov   y,#$07
1672: cf        mul   ya
1673: 7a 04     addw  ya,$04
1675: da 04     movw  $04,ya            ; load address by index `$04 += (patch * 7)`
1677: 8d 00     mov   y,#$00
1679: e8 04     mov   a,#$04
167b: 04 23     or    a,$23
167d: c4 06     mov   $06,a
167f: c4 f2     mov   $f2,a
1681: f7 04     mov   a,($04)+y
1683: c4 f3     mov   $f3,a             ; [0] set SRCN
1685: fc        inc   y
1686: f7 04     mov   a,($04)+y
1688: d5 50 02  mov   $0250+x,a         ; [1] tuning in semitones (signed)
168b: fc        inc   y
168c: f7 04     mov   a,($04)+y
168e: d5 51 02  mov   $0251+x,a         ; [2] tuning in semitones/256 (signed)
1691: 10 07     bpl   $169a
1693: f5 50 02  mov   a,$0250+x
1696: 9c        dec   a
1697: d5 50 02  mov   $0250+x,a
169a: fc        inc   y
169b: ab 06     inc   $06
169d: fa 06 f2  mov   ($f2),($06)
16a0: ab 06     inc   $06
16a2: f7 04     mov   a,($04)+y
16a4: c4 f3     mov   $f3,a             ; [3] set ADSR(1)
16a6: 10 0a     bpl   $16b2
16a8: fc        inc   y
16a9: fa 06 f2  mov   ($f2),($06)
16ac: f7 04     mov   a,($04)+y
16ae: c4 f3     mov   $f3,a             ; [4] set ADSR(2)
16b0: 2f 0a     bra   $16bc
16b2: fc        inc   y
16b3: ab 06     inc   $06
16b5: fa 06 f2  mov   ($f2),($06)
16b8: f7 04     mov   a,($04)+y
16ba: c4 f3     mov   $f3,a             ; [4] set GAIN
16bc: e8 00     mov   a,#$00
16be: d5 d0 01  mov   $01d0+x,a
16c1: fc        inc   y
16c2: 63 20 0a  bbs3  $20,$16cf
16c5: f7 04     mov   a,($04)+y
16c7: d5 b1 02  mov   $02b1+x,a         ; [5] ?
16ca: e8 00     mov   a,#$00
16cc: d5 b0 02  mov   $02b0+x,a
16cf: fc        inc   y
16d0: f7 04     mov   a,($04)+y
16d2: d5 60 02  mov   $0260+x,a         ; [6] ?
16d5: 6f        ret

; vcmd e3
16d6: 68 2a     cmp   a,#$2a
16d8: f0 12     beq   $16ec
16da: 68 2c     cmp   a,#$2c
16dc: f0 13     beq   $16f1
16de: d5 b1 02  mov   $02b1+x,a
16e1: e8 00     mov   a,#$00
16e3: d5 b0 02  mov   $02b0+x,a
16e6: d5 70 00  mov   $0070+x,a
16e9: 5f 9b 13  jmp   $139b

16ec: 62 20     set3  $20
16ee: 5f 9b 13  jmp   $139b

16f1: 72 20     clr3  $20
16f3: 5f 9b 13  jmp   $139b

; vcmd e4
16f6: 2d        push  a
16f7: 3f d2 13  call  $13d2
16fa: 68 80     cmp   a,#$80
16fc: b0 13     bcs   $1711
16fe: 1c        asl   a
16ff: 30 0c     bmi   $170d
1701: 1c        asl   a
1702: 30 05     bmi   $1709
1704: 1c        asl   a
1705: 8d 01     mov   y,#$01
1707: 2f 10     bra   $1719
1709: 8d 02     mov   y,#$02
170b: 2f 0c     bra   $1719
170d: 8d 04     mov   y,#$04
170f: 2f 08     bra   $1719
1711: 8d 08     mov   y,#$08
1713: 68 ff     cmp   a,#$ff
1715: d0 02     bne   $1719
1717: 8d 10     mov   y,#$10
1719: d4 b1     mov   $b1+x,a
171b: db c0     mov   $c0+x,y
171d: 3f d2 13  call  $13d2
1720: d5 30 02  mov   $0230+x,a
1723: ae        pop   a
1724: 68 c8     cmp   a,#$c8
1726: b0 0b     bcs   $1733
1728: d5 20 02  mov   $0220+x,a
172b: e8 00     mov   a,#$00
172d: d5 21 02  mov   $0221+x,a
1730: 5f 9b 13  jmp   $139b

1733: fd        mov   y,a
1734: e8 00     mov   a,#$00
1736: d5 20 02  mov   $0220+x,a
1739: dd        mov   a,y
173a: 80        setc
173b: a8 c7     sbc   a,#$c7

; vcmd f9
173d: d5 21 02  mov   $0221+x,a
1740: 2d        push  a
1741: 8d 00     mov   y,#$00
1743: f5 30 02  mov   a,$0230+x
1746: ce        pop   x
1747: 9e        div   ya,x
1748: 2d        push  a
1749: e8 00     mov   a,#$00
174b: 9e        div   ya,x
174c: f8 22     mov   x,$22
174e: d5 00 03  mov   $0300+x,a
1751: ae        pop   a
1752: d5 01 03  mov   $0301+x,a
1755: 5f 9b 13  jmp   $139b

; vcmd e5
1758: d5 d1 01  mov   $01d1+x,a
175b: 3f d2 13  call  $13d2
175e: d5 11 03  mov   $0311+x,a
1761: 3f d2 13  call  $13d2
1764: d5 10 03  mov   $0310+x,a
1767: e8 00     mov   a,#$00
1769: d4 61     mov   $61+x,a
176b: d5 61 02  mov   $0261+x,a
176e: 5f 9b 13  jmp   $139b

; vcmd e6 - start loop
1771: f4 30     mov   a,$30+x
1773: d5 70 01  mov   $0170+x,a
1776: f4 31     mov   a,$31+x
1778: d5 71 01  mov   $0171+x,a         ; save return address
177b: 5f 9b 13  jmp   $139b

; vcmd e7 - end loop
177e: 68 00     cmp   a,#$00            ; arg1: repeat count
1780: f0 1e     beq   $17a0             ; 0 => infinite loop
1782: bb 50     inc   $50+x             ; increment repeat counter
1784: de 50 19  cbne  $50+x,$17a0
; repeat end
1787: 3f d4 13  call  $13d4
178a: 3f d4 13  call  $13d4
178d: e8 00     mov   a,#$00
178f: d4 50     mov   $50+x,a
1791: d5 30 01  mov   $0130+x,a
1794: d5 31 01  mov   $0131+x,a
1797: d5 50 01  mov   $0150+x,a
179a: d5 51 01  mov   $0151+x,a
179d: 5f 9b 13  jmp   $139b
; repeat again
17a0: 3f d2 13  call  $13d2
17a3: 8d 00     mov   y,#$00
17a5: 08 00     or    a,#$00
17a7: f0 15     beq   $17be
17a9: 10 01     bpl   $17ac
17ab: dc        dec   y
17ac: da 04     movw  $04,ya
17ae: f5 31 01  mov   a,$0131+x
17b1: fd        mov   y,a
17b2: f5 30 01  mov   a,$0130+x
17b5: 7a 04     addw  ya,$04
17b7: d5 30 01  mov   $0130+x,a
17ba: dd        mov   a,y
17bb: d5 31 01  mov   $0131+x,a         ; add arg2 to $0130/1
; adjust pitch by repeat count
17be: 3f d2 13  call  $13d2             ; get arg3 (delta pitch, signed)
17c1: 08 00     or    a,#$00
17c3: f0 1d     beq   $17e2             ; do nothing if arg3 == 0
17c5: 8d 00     mov   y,#$00
17c7: 1c        asl   a
17c8: 90 01     bcc   $17cb
17ca: dc        dec   y
17cb: cb 04     mov   $04,y
17cd: 1c        asl   a
17ce: 2b 04     rol   $04
17d0: 1c        asl   a
17d1: 2b 04     rol   $04
17d3: 60        clrc
17d4: 95 50 01  adc   a,$0150+x
17d7: d5 50 01  mov   $0150+x,a
17da: e4 04     mov   a,$04
17dc: 95 51 01  adc   a,$0151+x
17df: d5 51 01  mov   $0151+x,a         ; add (arg3 * 8) to $0150/1+x
17e2: f5 70 01  mov   a,$0170+x
17e5: d4 30     mov   $30+x,a
17e7: f5 71 01  mov   a,$0171+x
17ea: d4 31     mov   $31+x,a           ; back to return address
17ec: 5f 9b 13  jmp   $139b

; vcmd e8 - start loop #2
17ef: f4 30     mov   a,$30+x
17f1: d5 80 01  mov   $0180+x,a
17f4: f4 31     mov   a,$31+x
17f6: d5 81 01  mov   $0181+x,a         ; save return address
17f9: e8 00     mov   a,#$00
17fb: d4 60     mov   $60+x,a
17fd: d5 40 01  mov   $0140+x,a
1800: d5 41 01  mov   $0141+x,a
1803: d5 60 01  mov   $0160+x,a
1806: d5 61 01  mov   $0161+x,a
1809: 5f 9b 13  jmp   $139b

; vcmd e9 - end loop #2
180c: 68 00     cmp   a,#$00
180e: f0 0e     beq   $181e
1810: bb 60     inc   $60+x
1812: de 60 09  cbne  $60+x,$181e
; repeat end
1815: 3f d4 13  call  $13d4
1818: 3f d4 13  call  $13d4
181b: 5f 9b 13  jmp   $139b
; repeat again
181e: 3f d2 13  call  $13d2
1821: 8d 00     mov   y,#$00
1823: 08 00     or    a,#$00
1825: f0 15     beq   $183c
1827: 10 01     bpl   $182a
1829: dc        dec   y
182a: da 04     movw  $04,ya
182c: f5 41 01  mov   a,$0141+x
182f: fd        mov   y,a
1830: f5 40 01  mov   a,$0140+x
1833: 7a 04     addw  ya,$04
1835: d5 40 01  mov   $0140+x,a
1838: dd        mov   a,y
1839: d5 41 01  mov   $0141+x,a         ; add arg2 to $0140/1
; adjust pitch by repeat count
183c: 3f d2 13  call  $13d2             ; get arg3 (delta pitch, signed)
183f: 08 00     or    a,#$00
1841: f0 1d     beq   $1860             ; do nothing if arg3 == 0
1843: 8d 00     mov   y,#$00
1845: 1c        asl   a
1846: 90 01     bcc   $1849
1848: dc        dec   y
1849: cb 04     mov   $04,y
184b: 1c        asl   a
184c: 2b 04     rol   $04
184e: 1c        asl   a
184f: 2b 04     rol   $04
1851: 60        clrc
1852: 95 60 01  adc   a,$0160+x
1855: d5 60 01  mov   $0160+x,a
1858: e4 04     mov   a,$04
185a: 95 61 01  adc   a,$0161+x
185d: d5 61 01  mov   $0161+x,a         ; add (arg3 * 8) to $0160/1+x
1860: f5 80 01  mov   a,$0180+x
1863: d4 30     mov   $30+x,a
1865: f5 81 01  mov   a,$0181+x
1868: d4 31     mov   $31+x,a           ; back to return address
186a: 5f 9b 13  jmp   $139b

; vcmd ea - set tempo (per track)
186d: d5 b1 01  mov   $01b1+x,a
1870: e8 00     mov   a,#$00
1872: d4 40     mov   $40+x,a
1874: 5f 9b 13  jmp   $139b

; vcmd eb
1877: d4 40     mov   $40+x,a
1879: 2d        push  a
187a: 3f d2 13  call  $13d2
187d: d4 41     mov   $41+x,a
187f: 80        setc
1880: b5 b1 01  sbc   a,$01b1+x
1883: ce        pop   x
1884: 3f fc 1a  call  $1afc
1887: d5 00 01  mov   $0100+x,a
188a: dd        mov   a,y
188b: d5 01 01  mov   $0101+x,a
188e: f5 b1 01  mov   a,$01b1+x
1891: d5 11 01  mov   $0111+x,a
1894: e8 00     mov   a,#$00
1896: d5 10 01  mov   $0110+x,a
1899: 5f 9b 13  jmp   $139b

; vcmd ec - per-voice transpose
189c: d5 31 02  mov   $0231+x,a
189f: 5f 9b 13  jmp   $139b

; vcmd ed
18a2: 3f d4 13  call  $13d4
18a5: 3f d4 13  call  $13d4
18a8: 5f 9b 13  jmp   $139b

; vcmd ee - set volume
18ab: d5 91 02  mov   $0291+x,a
18ae: e8 00     mov   a,#$00
18b0: d5 90 02  mov   $0290+x,a
18b3: d5 71 00  mov   $0071+x,a
18b6: 5f 9b 13  jmp   $139b

; vcmd ef
18b9: d4 71     mov   $71+x,a
18bb: 2d        push  a
18bc: 3f d2 13  call  $13d2
18bf: d5 00 02  mov   $0200+x,a
18c2: 80        setc
18c3: b5 91 02  sbc   a,$0291+x
18c6: b0 03     bcs   $18cb
18c8: 48 ff     eor   a,#$ff
18ca: bc        inc   a
18cb: 2b 04     rol   $04
18cd: ce        pop   x
18ce: 8d 00     mov   y,#$00
18d0: 9e        div   ya,x
18d1: 2d        push  a
18d2: e8 00     mov   a,#$00
18d4: 9e        div   ya,x
18d5: ee        pop   y
18d6: f8 22     mov   x,$22
18d8: 03 04 07  bbs0  $04,$18e2
18db: da 04     movw  $04,ya
18dd: e8 00     mov   a,#$00
18df: fd        mov   y,a
18e0: 9a 04     subw  ya,$04
18e2: d5 a0 02  mov   $02a0+x,a
18e5: dd        mov   a,y
18e6: d5 a1 02  mov   $02a1+x,a
18e9: 5f 9b 13  jmp   $139b

; vcmd f0
18ec: d4 90     mov   $90+x,a
18ee: 82 20     set4  $20
18f0: 5f 9b 13  jmp   $139b

; vcmd f1
18f3: d4 91     mov   $91+x,a
18f5: 3f d2 13  call  $13d2
18f8: d4 90     mov   $90+x,a
18fa: 3f d2 13  call  $13d2
18fd: d5 10 02  mov   $0210+x,a
1900: 92 20     clr4  $20
1902: 5f 9b 13  jmp   $139b

; vcmd f2 - tuning
1905: 1c        asl   a                 ; arg1: tuning (signed)
1906: b0 08     bcs   $1910
; when arg1 >= 0
1908: 8d 00     mov   y,#$00
190a: 1c        asl   a
190b: 90 09     bcc   $1916
190d: fc        inc   y
190e: 2f 06     bra   $1916
; when arg1 < 0
1910: 8d ff     mov   y,#$ff
1912: 1c        asl   a
1913: b0 01     bcs   $1916
1915: dc        dec   y
1916: d5 20 03  mov   $0320+x,a
1919: dd        mov   a,y
191a: d5 21 03  mov   $0321+x,a         ; $0320/1+x = arg1 * 4
191d: 5f 9b 13  jmp   $139b

; vcmd f3
1920: 3f d4 13  call  $13d4
1923: 3f d4 13  call  $13d4
1926: 5f 9b 13  jmp   $139b

; vcmd f4
1929: 08 00     or    a,#$00
192b: f0 16     beq   $1943
192d: b2 13     clr5  $13
192f: c4 14     mov   $14,a
1931: 8f 4d f2  mov   $f2,#$4d
1934: c4 f3     mov   $f3,a             ; set EON
1936: 3f d2 13  call  $13d2
1939: c4 15     mov   $15,a
193b: 3f d2 13  call  $13d2
193e: c4 16     mov   $16,a
1940: 5f 9b 13  jmp   $139b

1943: 3f c5 19  call  $19c5
1946: 3f d4 13  call  $13d4
1949: 3f d4 13  call  $13d4
194c: 5f 9b 13  jmp   $139b

; vcmd f5 - set echo params
194f: 78 00 14  cmp   $14,#$00
1952: f0 f2     beq   $1946
1954: 28 0f     and   a,#$0f
1956: 64 18     cmp   a,$18
1958: f0 2e     beq   $1988
195a: eb 18     mov   y,$18
195c: c4 18     mov   $18,a
195e: dd        mov   a,y
195f: bc        inc   a
1960: 1c        asl   a
1961: 1c        asl   a
1962: 60        clrc
1963: 84 19     adc   a,$19
1965: c4 19     mov   $19,a
1967: 8f 6c f2  mov   $f2,#$6c
196a: e4 13     mov   a,$13
196c: 08 20     or    a,#$20
196e: c4 f3     mov   $f3,a             ; set FLG
1970: 8f 7d f2  mov   $f2,#$7d
1973: fa 18 f3  mov   ($f3),($18)       ; set EDL
1976: e4 18     mov   a,$18
1978: f0 09     beq   $1983
197a: 1c        asl   a
197b: 1c        asl   a
197c: 1c        asl   a
197d: 48 ff     eor   a,#$ff
197f: bc        inc   a
1980: 60        clrc
1981: 88 00     adc   a,#$00
1983: 8f 6d f2  mov   $f2,#$6d
1986: c4 f3     mov   $f3,a             ; set ESA
1988: e4 18     mov   a,$18
198a: bc        inc   a
198b: 1c        asl   a
198c: 1c        asl   a
198d: 1c        asl   a
198e: 1c        asl   a
198f: 1c        asl   a
1990: 60        clrc
1991: 84 19     adc   a,$19
1993: c4 1a     mov   $1a,a
1995: 3f d2 13  call  $13d2
1998: c4 17     mov   $17,a
199a: 8f 0d f2  mov   $f2,#$0d
199d: c4 f3     mov   $f3,a             ; set EFB
199f: 3f d2 13  call  $13d2
19a2: 1c        asl   a
19a3: 1c        asl   a
19a4: 1c        asl   a
19a5: c4 04     mov   $04,a
19a7: 8f 00 05  mov   $05,#$00
19aa: e8 e0     mov   a,#$e0
19ac: 8d 03     mov   y,#$03
19ae: 7a 04     addw  ya,$04
19b0: da 04     movw  $04,ya
19b2: 8d 00     mov   y,#$00
19b4: f6 d7 1d  mov   a,$1dd7+y
19b7: c4 f2     mov   $f2,a
19b9: f7 04     mov   a,($04)+y
19bb: c4 f3     mov   $f3,a             ; set FIR
19bd: fc        inc   y
19be: ad 08     cmp   y,#$08
19c0: d0 f2     bne   $19b4
19c2: 5f 9b 13  jmp   $139b

19c5: e4 14     mov   a,$14
19c7: f0 2d     beq   $19f6
19c9: e4 18     mov   a,$18
19cb: 1c        asl   a
19cc: 1c        asl   a
19cd: bc        inc   a
19ce: c4 19     mov   $19,a
19d0: e8 00     mov   a,#$00
19d2: 8f 3c f2  mov   $f2,#$3c
19d5: c4 f3     mov   $f3,a             ; set EVOL(R)
19d7: 8f 2c f2  mov   $f2,#$2c
19da: c4 f3     mov   $f3,a             ; set EVOL(L)
19dc: a2 13     set5  $13
19de: 8f 6c f2  mov   $f2,#$6c
19e1: fa 13 f3  mov   ($f3),($13)       ; set FLG
19e4: c4 14     mov   $14,a
19e6: c4 15     mov   $15,a
19e8: c4 16     mov   $16,a
19ea: c4 18     mov   $18,a
19ec: 8f 7d f2  mov   $f2,#$7d
19ef: c4 f3     mov   $f3,a             ; set EDL
19f1: 8f 6d f2  mov   $f2,#$6d
19f4: c4 f3     mov   $f3,a             ; set ESA
19f6: 6f        ret

; vcmd f6
19f7: f4 30     mov   a,$30+x
19f9: d5 90 01  mov   $0190+x,a
19fc: f4 31     mov   a,$31+x
19fe: d5 91 01  mov   $0191+x,a         ; save current address to $0190/1
1a01: e8 c0     mov   a,#$c0
1a03: 4e 20 00  tclr1 $0020             ; reset "visited" flags
1a06: 5f 9b 13  jmp   $139b

; vcmd f7 - end complexed loop
1a09: c3 20 08  bbs6  $20,$1a14
1a0c: e3 20 20  bbs7  $20,$1a2f
; first time, do nothing
1a0f: c2 20     set6  $20
1a11: 5f 9b 13  jmp   $139b
; second time
1a14: d2 20     clr6  $20
1a16: e2 20     set7  $20
1a18: f4 30     mov   a,$30+x
1a1a: d5 a0 01  mov   $01a0+x,a
1a1d: f4 31     mov   a,$31+x
1a1f: d5 a1 01  mov   $01a1+x,a         ; save current address to $01a0/1
1a22: f5 90 01  mov   a,$0190+x
1a25: d4 30     mov   $30+x,a
1a27: f5 91 01  mov   a,$0191+x
1a2a: d4 31     mov   $31+x,a           ; back to $0190/1
1a2c: 5f 9b 13  jmp   $139b
; third time
1a2f: c2 20     set6  $20
1a31: f2 20     clr7  $20
1a33: f5 a0 01  mov   a,$01a0+x
1a36: d4 30     mov   $30+x,a
1a38: f5 a1 01  mov   a,$01a1+x
1a3b: d4 31     mov   $31+x,a           ; back to $01a0/1
1a3d: 5f 9b 13  jmp   $139b

; vcmd f8
1a40: d4 70     mov   $70+x,a
1a42: 2d        push  a
1a43: 3f d2 13  call  $13d2
1a46: d5 11 02  mov   $0211+x,a
1a49: 80        setc
1a4a: b5 b1 02  sbc   a,$02b1+x
1a4d: ce        pop   x
1a4e: 3f fc 1a  call  $1afc
1a51: d5 c0 02  mov   $02c0+x,a
1a54: dd        mov   a,y
1a55: d5 c1 02  mov   $02c1+x,a
1a58: 5f 9b 13  jmp   $139b

; vcmd fa
1a5b: d5 80 02  mov   $0280+x,a
1a5e: fd        mov   y,a
1a5f: e8 05     mov   a,#$05
1a61: 04 23     or    a,$23
1a63: c4 f2     mov   $f2,a
1a65: cb f3     mov   $f3,y             ; set ADSR(1)
1a67: bc        inc   a
1a68: ad 80     cmp   y,#$80
1a6a: 90 09     bcc   $1a75
1a6c: c4 f2     mov   $f2,a
1a6e: 3f d2 13  call  $13d2
1a71: c4 f3     mov   $f3,a             ; set ADSR(2)
1a73: 2f 0b     bra   $1a80
1a75: bc        inc   a
1a76: c4 f2     mov   $f2,a
1a78: 3f d2 13  call  $13d2
1a7b: c4 f3     mov   $f3,a             ; set GAIN
1a7d: d5 81 02  mov   $0281+x,a
; vcmd 62
1a80: 3f d2 13  call  $13d2
1a83: 68 c8     cmp   a,#$c8
1a85: b0 0c     bcs   $1a93
1a87: 68 64     cmp   a,#$64
1a89: 90 0e     bcc   $1a99
1a8b: a8 64     sbc   a,#$64
1a8d: 28 1f     and   a,#$1f
1a8f: 08 80     or    a,#$80
1a91: 2f 06     bra   $1a99
1a93: a8 c8     sbc   a,#$c8
1a95: 28 1f     and   a,#$1f
1a97: 08 a0     or    a,#$a0
1a99: d5 d0 01  mov   $01d0+x,a
1a9c: 5f 9b 13  jmp   $139b

; vcmd fb-fc
1a9f: d5 d0 02  mov   $02d0+x,a
1aa2: 3f d2 13  call  $13d2
1aa5: d5 d1 02  mov   $02d1+x,a
1aa8: 5f 9b 13  jmp   $139b

; vcmd fd - goto
1aab: c4 04     mov   $04,a
1aad: 3f d2 13  call  $13d2
1ab0: d4 31     mov   $31+x,a
1ab2: e4 04     mov   a,$04
1ab4: d4 30     mov   $30+x,a
1ab6: 5f 9b 13  jmp   $139b

; vcmd fe - call subroutine
1ab9: 2d        push  a
1aba: 3f d2 13  call  $13d2
1abd: fd        mov   y,a
1abe: f4 30     mov   a,$30+x
1ac0: d5 20 01  mov   $0120+x,a
1ac3: f4 31     mov   a,$31+x
1ac5: d5 21 01  mov   $0121+x,a
1ac8: ae        pop   a
1ac9: d4 30     mov   $30+x,a
1acb: db 31     mov   $31+x,y
1acd: 42 20     set2  $20
1acf: 5f 9b 13  jmp   $139b

; vcmd ff - end of track / end subroutine
1ad2: 53 20 0f  bbc2  $20,$1ae4
; end subroutine
1ad5: 52 20     clr2  $20
1ad7: f5 20 01  mov   a,$0120+x
1ada: d4 30     mov   $30+x,a
1adc: f5 21 01  mov   a,$0121+x
1adf: d4 31     mov   $31+x,a
1ae1: 5f 9b 13  jmp   $139b
; end of track
1ae4: e8 00     mov   a,#$00
1ae6: d5 b0 01  mov   $01b0+x,a
1ae9: d4 d1     mov   $d1+x,a
1aeb: d5 71 02  mov   $0271+x,a
1aee: d5 c0 01  mov   $01c0+x,a
1af1: e4 11     mov   a,$11
1af3: 0e 10 00  tset1 $0010
1af6: 4e 0f 00  tclr1 $000f
1af9: a2 20     set5  $20
1afb: 6f        ret

1afc: c4 04     mov   $04,a
1afe: fd        mov   y,a
1aff: 10 03     bpl   $1b04
1b01: 48 ff     eor   a,#$ff
1b03: bc        inc   a
1b04: 8d 00     mov   y,#$00
1b06: 9e        div   ya,x
1b07: 2d        push  a
1b08: e8 00     mov   a,#$00
1b0a: 9e        div   ya,x
1b0b: ee        pop   y
1b0c: f8 22     mov   x,$22
1b0e: f3 04 07  bbc7  $04,$1b18
1b11: da 04     movw  $04,ya
1b13: e8 00     mov   a,#$00
1b15: fd        mov   y,a
1b16: 9a 04     subw  ya,$04
1b18: 6f        ret

1b19: f4 e0     mov   a,$e0+x
1b1b: fb e1     mov   y,$e1+x
1b1d: da 04     movw  $04,ya
1b1f: f5 e1 02  mov   a,$02e1+x
1b22: fd        mov   y,a
1b23: f5 e0 02  mov   a,$02e0+x
1b26: 9a 04     subw  ya,$04
1b28: f0 32     beq   $1b5c
1b2a: da 06     movw  $06,ya
1b2c: 10 07     bpl   $1b35
1b2e: e8 00     mov   a,#$00
1b30: fd        mov   y,a
1b31: 9a 06     subw  ya,$06
1b33: c4 06     mov   $06,a
1b35: f4 90     mov   a,$90+x
1b37: cf        mul   ya
1b38: da 08     movw  $08,ya
1b3a: eb 06     mov   y,$06
1b3c: f4 90     mov   a,$90+x
1b3e: cf        mul   ya
1b3f: dd        mov   a,y
1b40: 8d 00     mov   y,#$00
1b42: 7a 08     addw  ya,$08
1b44: d0 01     bne   $1b47
1b46: bc        inc   a
1b47: f3 07 0b  bbc7  $07,$1b55
1b4a: da 06     movw  $06,ya
1b4c: ba 04     movw  ya,$04
1b4e: 9a 06     subw  ya,$06
1b50: d4 e0     mov   $e0+x,a
1b52: db e1     mov   $e1+x,y
1b54: 6f        ret

1b55: 7a 04     addw  ya,$04
1b57: d4 e0     mov   $e0+x,a
1b59: db e1     mov   $e1+x,y
1b5b: 6f        ret

1b5c: d4 80     mov   $80+x,a
1b5e: 6f        ret

1b5f: f4 c1     mov   a,$c1+x
1b61: 60        clrc
1b62: 94 c0     adc   a,$c0+x
1b64: 28 3f     and   a,#$3f
1b66: c4 04     mov   $04,a
1b68: d4 c1     mov   $c1+x,a
1b6a: 28 1f     and   a,#$1f
1b6c: fd        mov   y,a
1b6d: f6 c0 03  mov   a,$03c0+y
1b70: fd        mov   y,a
1b71: f5 f1 02  mov   a,$02f1+x
1b74: 30 09     bmi   $1b7f
1b76: 1c        asl   a
1b77: cf        mul   ya
1b78: cb 08     mov   $08,y
1b7a: 8f 00 09  mov   $09,#$00
1b7d: 2f 0a     bra   $1b89
1b7f: 80        setc
1b80: a8 7e     sbc   a,#$7e
1b82: cf        mul   ya
1b83: da 08     movw  $08,ya
1b85: 4b 09     lsr   $09
1b87: 6b 08     ror   $08
1b89: b3 04 07  bbc5  $04,$1b93
1b8c: e8 00     mov   a,#$00
1b8e: fd        mov   y,a
1b8f: 9a 08     subw  ya,$08
1b91: da 08     movw  $08,ya
1b93: 6f        ret

1b94: f5 61 02  mov   a,$0261+x
1b97: fd        mov   y,a
1b98: bc        inc   a
1b99: d5 61 02  mov   $0261+x,a
1b9c: f6 df 1d  mov   a,$1ddf+y
1b9f: 35 10 03  and   a,$0310+x
1ba2: c4 04     mov   $04,a
1ba4: f6 e0 1d  mov   a,$1de0+y
1ba7: 35 11 03  and   a,$0311+x
1baa: c4 05     mov   $05,a
1bac: 6f        ret
