0b00: 20        clrp
0b01: cd cf     mov   x,#$cf
0b03: bd        mov   sp,x
0b04: e8 00     mov   a,#$00
0b06: 5d        mov   x,a
0b07: af        mov   (x)+,a
0b08: c8 f0     cmp   x,#$f0
0b0a: d0 fb     bne   $0b07
0b0c: 8f 5c 00  mov   $00,#$5c
0b0f: 8f 04 01  mov   $01,#$04
0b12: e8 00     mov   a,#$00
0b14: fd        mov   y,a
0b15: d7 00     mov   ($00)+y,a
0b17: 78 ff 00  cmp   $00,#$ff
0b1a: d0 07     bne   $0b23
0b1c: 78 0a 01  cmp   $01,#$0a
0b1f: f0 07     beq   $0b28
0b21: ab 01     inc   $01
0b23: ab 00     inc   $00
0b25: 5f 15 0b  jmp   $0b15

0b28: cd 00     mov   x,#$00
0b2a: e8 ff     mov   a,#$ff
0b2c: d5 61 04  mov   $0461+x,a
0b2f: d5 6d 04  mov   $046d+x,a
0b32: 3d        inc   x
0b33: c8 0c     cmp   x,#$0c
0b35: 90 f5     bcc   $0b2c
0b37: 3f 75 1c  call  $1c75
0b3a: e8 00     mov   a,#$00
0b3c: bc        inc   a
0b3d: 3f 07 21  call  $2107
0b40: a2 37     set5  $37
0b42: 8f 00 ce  mov   $ce,#$00
0b45: 8f 26 cf  mov   $cf,#$26
0b48: e8 00     mov   a,#$00
0b4a: c4 d3     mov   $d3,a
0b4c: c4 d1     mov   $d1,a
0b4e: e8 45     mov   a,#$45
0b50: c4 d4     mov   $d4,a
0b52: c4 d2     mov   $d2,a
0b54: e8 7f     mov   a,#$7f
0b56: 8d 0c     mov   y,#$0c
0b58: 3f 68 10  call  $1068
0b5b: 8d 1c     mov   y,#$1c
0b5d: 3f 68 10  call  $1068
0b60: e8 43     mov   a,#$43
0b62: 8d 5d     mov   y,#$5d
0b64: 3f 68 10  call  $1068
0b67: 8f f0 f1  mov   $f1,#$f0
0b6a: e8 20     mov   a,#$20
0b6c: c4 fa     mov   $fa,a
0b6e: c4 fb     mov   $fb,a
0b70: c4 d7     mov   $d7,a
0b72: 8f 03 f1  mov   $f1,#$03
0b75: 8f 01 ee  mov   $ee,#$01
0b78: 8d 0a     mov   y,#$0a
0b7a: ad 05     cmp   y,#$05
0b7c: f0 07     beq   $0b85
0b7e: b0 08     bcs   $0b88
0b80: 69 3c 3b  cmp   ($3b),($3c)
0b83: d0 14     bne   $0b99
0b85: e3 3b 11  bbs7  $3b,$0b99
0b88: f6 63 25  mov   a,$2563+y
0b8b: c4 f2     mov   $f2,a
0b8d: f6 6d 25  mov   a,$256d+y
0b90: 5d        mov   x,a
0b91: e5 b9 0a  mov   a,$0ab9
0b94: 48 ff     eor   a,#$ff
0b96: 26        and   a,(x)
0b97: c4 f3     mov   $f3,a
0b99: fe df     dbnz  y,$0b7a
0b9b: 8d 00     mov   y,#$00
0b9d: cb 34     mov   $34,y
0b9f: cb 35     mov   $35,y
0ba1: eb fe     mov   y,$fe
0ba3: eb fd     mov   y,$fd
0ba5: f0 fc     beq   $0ba3
0ba7: 6d        push  y
0ba8: e8 20     mov   a,#$20
0baa: cf        mul   ya
0bab: 60        clrc
0bac: 84 32     adc   a,$32
0bae: c4 32     mov   $32,a
0bb0: 90 07     bcc   $0bb9
0bb2: 69 3c 3b  cmp   ($3b),($3c)
0bb5: f0 02     beq   $0bb9
0bb7: ab 3b     inc   $3b
0bb9: ee        pop   y
0bba: cc 60 04  mov   $0460,y
0bbd: e4 d7     mov   a,$d7
0bbf: cf        mul   ya
0bc0: 60        clrc
0bc1: 85 5c 04  adc   a,$045c
0bc4: c5 5c 04  mov   $045c,a
0bc7: 90 06     bcc   $0bcf
0bc9: 8f 00 cb  mov   $cb,#$00
0bcc: 3f c6 10  call  $10c6
0bcf: e4 d9     mov   a,$d9
0bd1: ec 60 04  mov   y,$0460
0bd4: cf        mul   ya
0bd5: 60        clrc
0bd6: 85 5d 04  adc   a,$045d
0bd9: c5 5d 04  mov   $045d,a
0bdc: 90 06     bcc   $0be4
0bde: 8f 01 cb  mov   $cb,#$01
0be1: 3f c6 10  call  $10c6
0be4: e4 db     mov   a,$db
0be6: ec 60 04  mov   y,$0460
0be9: cf        mul   ya
0bea: 60        clrc
0beb: 85 5e 04  adc   a,$045e
0bee: c5 5e 04  mov   $045e,a
0bf1: 90 06     bcc   $0bf9
0bf3: 8f 02 cb  mov   $cb,#$02
0bf6: 3f c6 10  call  $10c6
0bf9: e4 dd     mov   a,$dd
0bfb: ec 60 04  mov   y,$0460
0bfe: cf        mul   ya
0bff: 60        clrc
0c00: 85 5f 04  adc   a,$045f
0c03: c5 5f 04  mov   $045f,a
0c06: 90 06     bcc   $0c0e
0c08: 8f 03 cb  mov   $cb,#$03
0c0b: 3f c6 10  call  $10c6
0c0e: e8 b0     mov   a,#$b0
0c10: ec 60 04  mov   y,$0460
0c13: cf        mul   ya
0c14: 60        clrc
0c15: 85 9e 0a  adc   a,$0a9e
0c18: c5 9e 0a  mov   $0a9e,a
0c1b: 90 03     bcc   $0c20
0c1d: 3f 72 0c  call  $0c72
0c20: e4 ef     mov   a,$ef
0c22: f0 2d     beq   $0c51
0c24: 5f 51 0c  jmp   $0c51

0c27: cd 00     mov   x,#$00
0c29: 8f 01 36  mov   $36,#$01
0c2c: f4 1a     mov   a,$1a+x
0c2e: f0 03     beq   $0c33
0c30: 3f 47 24  call  $2447
0c33: 3d        inc   x
0c34: 3d        inc   x
0c35: 0b 36     asl   $36
0c37: d0 f3     bne   $0c2c
0c39: 8f 80 36  mov   $36,#$80
0c3c: f4 1a     mov   a,$1a+x
0c3e: f0 03     beq   $0c43
0c40: 3f 47 24  call  $2447
0c43: 3d        inc   x
0c44: 3d        inc   x
0c45: 4b 36     lsr   $36
0c47: e4 36     mov   a,$36
0c49: 68 08     cmp   a,#$08
0c4b: d0 ef     bne   $0c3c
0c4d: e8 00     mov   a,#$00
0c4f: c4 36     mov   $36,a
0c51: 3f da 0d  call  $0dda
0c54: 3f 92 0e  call  $0e92
0c57: e5 b7 0a  mov   a,$0ab7
0c5a: 05 b8 0a  or    a,$0ab8
0c5d: d0 10     bne   $0c6f
0c5f: 3f 32 0d  call  $0d32
0c62: e5 99 0a  mov   a,$0a99
0c65: f0 08     beq   $0c6f
0c67: 3f 39 16  call  $1639
0c6a: e8 00     mov   a,#$00
0c6c: c5 99 0a  mov   $0a99,a
0c6f: 5f 78 0b  jmp   $0b78

0c72: e5 a8 0a  mov   a,$0aa8
0c75: 48 ff     eor   a,#$ff
0c77: 25 9f 0a  and   a,$0a9f
0c7a: c5 9f 0a  mov   $0a9f,a
0c7d: f0 4a     beq   $0cc9
0c7f: 8f 00 02  mov   $02,#$00
0c82: 8d 00     mov   y,#$00
0c84: f6 a0 0a  mov   a,$0aa0+y
0c87: 60        clrc
0c88: 96 a4 0a  adc   a,$0aa4+y
0c8b: d6 a0 0a  mov   $0aa0+y,a
0c8e: b0 08     bcs   $0c98
0c90: fc        inc   y
0c91: ad 04     cmp   y,#$04
0c93: 90 ef     bcc   $0c84
0c95: 5f c9 0c  jmp   $0cc9

0c98: e8 05     mov   a,#$05
0c9a: 60        clrc
0c9b: 96 c0 0a  adc   a,$0ac0+y
0c9e: d6 c0 0a  mov   $0ac0+y,a
0ca1: 68 64     cmp   a,#$64
0ca3: 90 eb     bcc   $0c90
0ca5: e8 64     mov   a,#$64
0ca7: d6 c0 0a  mov   $0ac0+y,a
0caa: 6d        push  y
0cab: e8 fe     mov   a,#$fe
0cad: ad 00     cmp   y,#$00
0caf: f0 06     beq   $0cb7
0cb1: dc        dec   y
0cb2: 80        setc
0cb3: 1c        asl   a
0cb4: 5f ad 0c  jmp   $0cad

0cb7: 25 9f 0a  and   a,$0a9f
0cba: c5 9f 0a  mov   $0a9f,a
0cbd: ee        pop   y
0cbe: e8 00     mov   a,#$00
0cc0: d6 a0 0a  mov   $0aa0+y,a
0cc3: d6 a4 0a  mov   $0aa4+y,a
0cc6: 5f 90 0c  jmp   $0c90

0cc9: e5 a8 0a  mov   a,$0aa8
0ccc: d0 03     bne   $0cd1
0cce: 5f 29 0d  jmp   $0d29

0cd1: 8f 00 02  mov   $02,#$00
0cd4: 8d 00     mov   y,#$00
0cd6: f6 a9 0a  mov   a,$0aa9+y
0cd9: 60        clrc
0cda: 96 ad 0a  adc   a,$0aad+y
0cdd: d6 a9 0a  mov   $0aa9+y,a
0ce0: b0 08     bcs   $0cea
0ce2: fc        inc   y
0ce3: ad 04     cmp   y,#$04
0ce5: 90 ef     bcc   $0cd6
0ce7: 5f 29 0d  jmp   $0d29

0cea: f6 c0 0a  mov   a,$0ac0+y
0ced: 80        setc
0cee: a8 05     sbc   a,#$05
0cf0: b0 08     bcs   $0cfa
0cf2: e8 00     mov   a,#$00
0cf4: d6 c0 0a  mov   $0ac0+y,a
0cf7: 5f 00 0d  jmp   $0d00

0cfa: d6 c0 0a  mov   $0ac0+y,a
0cfd: 5f e2 0c  jmp   $0ce2

0d00: 6d        push  y
0d01: e8 fe     mov   a,#$fe
0d03: ad 00     cmp   y,#$00
0d05: f0 06     beq   $0d0d
0d07: dc        dec   y
0d08: 80        setc
0d09: 3c        rol   a
0d0a: 5f 03 0d  jmp   $0d03

0d0d: 2d        push  a
0d0e: 48 ff     eor   a,#$ff
0d10: 05 b1 0a  or    a,$0ab1
0d13: c5 b1 0a  mov   $0ab1,a
0d16: ae        pop   a
0d17: 25 a8 0a  and   a,$0aa8
0d1a: c5 a8 0a  mov   $0aa8,a
0d1d: ee        pop   y
0d1e: e8 00     mov   a,#$00
0d20: d6 a9 0a  mov   $0aa9+y,a
0d23: d6 ad 0a  mov   $0aad+y,a
0d26: 5f e2 0c  jmp   $0ce2

0d29: e5 b1 0a  mov   a,$0ab1
0d2c: d0 01     bne   $0d2f
0d2e: 6f        ret

0d2f: 5f 98 19  jmp   $1998

0d32: 8f 87 0b  mov   $0b,#$87
0d35: 8f 0a 0c  mov   $0c,#$0a
0d38: 8f 00 f4  mov   $f4,#$00
0d3b: 8f 00 f6  mov   $f6,#$00
0d3e: e4 f4     mov   a,$f4
0d40: 64 f4     cmp   a,$f4
0d42: d0 fa     bne   $0d3e
0d44: 68 00     cmp   a,#$00
0d46: d0 03     bne   $0d4b
0d48: 5f c8 0d  jmp   $0dc8

0d4b: 68 02     cmp   a,#$02
0d4d: b0 14     bcs   $0d63
0d4f: c5 99 0a  mov   $0a99,a
0d52: e4 f5     mov   a,$f5
0d54: c5 87 0a  mov   $0a87,a
0d57: e4 f6     mov   a,$f6
0d59: c5 88 0a  mov   $0a88,a
0d5c: e4 f7     mov   a,$f7
0d5e: c5 89 0a  mov   $0a89,a
0d61: 2f 65     bra   $0dc8
0d63: 8f 01 f5  mov   $f5,#$01
0d66: c4 f4     mov   $f4,a
0d68: c5 99 0a  mov   $0a99,a
0d6b: 5d        mov   x,a
0d6c: f5 c8 0d  mov   a,$0dc8+x
0d6f: c4 09     mov   $09,a
0d71: f0 3c     beq   $0daf
0d73: e8 00     mov   a,#$00
0d75: c4 f7     mov   $f7,a
0d77: c4 ca     mov   $ca,a
0d79: c4 08     mov   $08,a
0d7b: 8d 00     mov   y,#$00
0d7d: f8 f6     mov   x,$f6
0d7f: 3e f6     cmp   x,$f6
0d81: d0 fa     bne   $0d7d
0d83: 3e ca     cmp   x,$ca
0d85: f0 f6     beq   $0d7d
0d87: e4 f4     mov   a,$f4
0d89: 64 f4     cmp   a,$f4
0d8b: d0 fa     bne   $0d87
0d8d: d8 f6     mov   $f6,x
0d8f: d8 ca     mov   $ca,x
0d91: d7 0b     mov   ($0b)+y,a
0d93: 3a 0b     incw  $0b
0d95: 8b 09     dec   $09
0d97: d0 e4     bne   $0d7d
0d99: e5 99 0a  mov   a,$0a99
0d9c: 68 0b     cmp   a,#$0b
0d9e: d0 0f     bne   $0daf
0da0: e4 08     mov   a,$08
0da2: d0 0b     bne   $0daf
0da4: e5 88 0a  mov   a,$0a88
0da7: 1c        asl   a
0da8: c4 09     mov   $09,a
0daa: c4 08     mov   $08,a
0dac: 5f 7d 0d  jmp   $0d7d

0daf: e5 99 0a  mov   a,$0a99
0db2: 68 06     cmp   a,#$06
0db4: f0 12     beq   $0dc8
0db6: 68 0a     cmp   a,#$0a
0db8: 90 04     bcc   $0dbe
0dba: 68 0d     cmp   a,#$0d
0dbc: 90 0a     bcc   $0dc8
0dbe: 8f 00 f5  mov   $f5,#$00
0dc1: e4 f5     mov   a,$f5
0dc3: d0 fc     bne   $0dc1
0dc5: 8f 00 f4  mov   $f4,#$00
0dc8: 6f        ret

0dc9: db $02,$02,$02,$02,$02,$02,$01,$00
0dd1: db $00,$01,$02,$0A,$02,$01,$00,$00
0dd9: db $01

0dda: e5 b7 0a  mov   a,$0ab7
0ddd: f0 5a     beq   $0e39
0ddf: 3f 71 0e  call  $0e71
0de2: fa fe 02  mov   ($02),($fe)
0de5: 3f 9e 18  call  $189e
0de8: f0 50     beq   $0e3a
0dea: 8d 00     mov   y,#$00
0dec: 69 d0 02  cmp   ($02),($d0)
0def: b0 48     bcs   $0e39
0df1: e4 fe     mov   a,$fe
0df3: f0 05     beq   $0dfa
0df5: ab 02     inc   $02
0df7: 5f ec 0d  jmp   $0dec

0dfa: f8 f6     mov   x,$f6
0dfc: 3e f6     cmp   x,$f6
0dfe: d0 fa     bne   $0dfa
0e00: 3e ca     cmp   x,$ca
0e02: f0 ed     beq   $0df1
0e04: e4 f4     mov   a,$f4
0e06: d7 0b     mov   ($0b)+y,a
0e08: 3a 0b     incw  $0b
0e0a: e4 f5     mov   a,$f5
0e0c: d7 0b     mov   ($0b)+y,a
0e0e: 3a 0b     incw  $0b
0e10: d8 f6     mov   $f6,x
0e12: d8 ca     mov   $ca,x
0e14: 69 cf 0c  cmp   ($0c),($cf)
0e17: 90 d8     bcc   $0df1
0e19: d0 05     bne   $0e20
0e1b: 69 ce 0b  cmp   ($0b),($ce)
0e1e: 90 d1     bcc   $0df1
0e20: cc b7 0a  mov   $0ab7,y
0e23: 8f 03 f7  mov   $f7,#$03
0e26: 8f 03 00  mov   $00,#$03
0e29: 8f 00 f4  mov   $f4,#$00
0e2c: 8f 00 f5  mov   $f5,#$00
0e2f: f8 f7     mov   x,$f7
0e31: 3e f7     cmp   x,$f7
0e33: d0 fa     bne   $0e2f
0e35: 3e 00     cmp   x,$00
0e37: d0 f6     bne   $0e2f
0e39: 6f        ret

0e3a: 8d 00     mov   y,#$00
0e3c: f8 ca     mov   x,$ca
0e3e: 3e f6     cmp   x,$f6
0e40: f0 fc     beq   $0e3e
0e42: e4 f4     mov   a,$f4
0e44: d7 0b     mov   ($0b)+y,a
0e46: 3a 0b     incw  $0b
0e48: e4 f5     mov   a,$f5
0e4a: d7 0b     mov   ($0b)+y,a
0e4c: 3a 0b     incw  $0b
0e4e: 3d        inc   x
0e4f: d8 f6     mov   $f6,x
0e51: 69 cf 0c  cmp   ($0c),($cf)
0e54: 90 e8     bcc   $0e3e
0e56: d0 05     bne   $0e5d
0e58: 69 ce 0b  cmp   ($0b),($ce)
0e5b: 90 e1     bcc   $0e3e
0e5d: d8 ca     mov   $ca,x
0e5f: cc b7 0a  mov   $0ab7,y
0e62: 8f 03 f7  mov   $f7,#$03
0e65: 8f 03 00  mov   $00,#$03
0e68: 8f 00 f4  mov   $f4,#$00
0e6b: 8f 00 f5  mov   $f5,#$00
0e6e: 5f 2f 0e  jmp   $0e2f

0e71: f8 d7     mov   x,$d7
0e73: 3e d9     cmp   x,$d9
0e75: b0 02     bcs   $0e79
0e77: f8 d9     mov   x,$d9
0e79: 3e db     cmp   x,$db
0e7b: b0 02     bcs   $0e7f
0e7d: f8 db     mov   x,$db
0e7f: 3e dd     cmp   x,$dd
0e81: b0 02     bcs   $0e85
0e83: f8 dd     mov   x,$dd
0e85: c8 00     cmp   x,#$00
0e87: d0 01     bne   $0e8a
0e89: 3d        inc   x
0e8a: e8 ff     mov   a,#$ff
0e8c: 8d 00     mov   y,#$00
0e8e: 9e        div   ya,x
0e8f: c4 d0     mov   $d0,a
0e91: 6f        ret

0e92: e5 b8 0a  mov   a,$0ab8
0e95: f0 53     beq   $0eea
0e97: 3f 71 0e  call  $0e71
0e9a: fa fe 02  mov   ($02),($fe)
0e9d: 3f 9e 18  call  $189e
0ea0: f0 49     beq   $0eeb
0ea2: 8d 00     mov   y,#$00
0ea4: 69 d0 02  cmp   ($02),($d0)
0ea7: b0 41     bcs   $0eea
0ea9: e4 fe     mov   a,$fe
0eab: f0 05     beq   $0eb2
0ead: ab 02     inc   $02
0eaf: 5f a4 0e  jmp   $0ea4

0eb2: f8 f6     mov   x,$f6
0eb4: 3e f6     cmp   x,$f6
0eb6: d0 fa     bne   $0eb2
0eb8: 3e ca     cmp   x,$ca
0eba: f0 ed     beq   $0ea9
0ebc: e4 f4     mov   a,$f4
0ebe: d7 0b     mov   ($0b)+y,a
0ec0: 3a 0b     incw  $0b
0ec2: e4 f5     mov   a,$f5
0ec4: d7 0b     mov   ($0b)+y,a
0ec6: 3a 0b     incw  $0b
0ec8: d8 f6     mov   $f6,x
0eca: d8 ca     mov   $ca,x
0ecc: 69 d4 0c  cmp   ($0c),($d4)
0ecf: 90 d8     bcc   $0ea9
0ed1: d0 05     bne   $0ed8
0ed3: 69 d3 0b  cmp   ($0b),($d3)
0ed6: 90 d1     bcc   $0ea9
0ed8: cc b8 0a  mov   $0ab8,y
0edb: 8f 03 f7  mov   $f7,#$03
0ede: 8f 03 00  mov   $00,#$03
0ee1: 8f 00 f4  mov   $f4,#$00
0ee4: 8f 00 f5  mov   $f5,#$00
0ee7: 5f 2f 0e  jmp   $0e2f

0eea: 6f        ret

0eeb: 8d 00     mov   y,#$00
0eed: f8 ca     mov   x,$ca
0eef: 3e f6     cmp   x,$f6
0ef1: f0 fc     beq   $0eef
0ef3: e4 f4     mov   a,$f4
0ef5: d7 0b     mov   ($0b)+y,a
0ef7: 3a 0b     incw  $0b
0ef9: e4 f5     mov   a,$f5
0efb: d7 0b     mov   ($0b)+y,a
0efd: 3a 0b     incw  $0b
0eff: 3d        inc   x
0f00: d8 f6     mov   $f6,x
0f02: 69 d4 0c  cmp   ($0c),($d4)
0f05: 90 e8     bcc   $0eef
0f07: d0 05     bne   $0f0e
0f09: 69 d3 0b  cmp   ($0b),($d3)
0f0c: 90 e1     bcc   $0eef
0f0e: d8 ca     mov   $ca,x
0f10: cc b8 0a  mov   $0ab8,y
0f13: 8f 03 f7  mov   $f7,#$03
0f16: 8f 03 00  mov   $00,#$03
0f19: 8f 00 f4  mov   $f4,#$00
0f1c: 8f 00 f5  mov   $f5,#$00
0f1f: 5f 2f 0e  jmp   $0e2f

0f22: 6f        ret

0f23: ad ca     cmp   y,#$ca
0f25: 90 1c     bcc   $0f43
0f27: 2d        push  a
0f28: 7d        mov   a,x
0f29: 5c        lsr   a
0f2a: 68 04     cmp   a,#$04
0f2c: 90 10     bcc   $0f3e
0f2e: 68 08     cmp   a,#$08
0f30: b0 0c     bcs   $0f3e
0f32: 48 07     eor   a,#$07
0f34: 60        clrc
0f35: 88 04     adc   a,#$04
0f37: fd        mov   y,a
0f38: f6 61 04  mov   a,$0461+y
0f3b: ae        pop   a
0f3c: 10 03     bpl   $0f41
0f3e: 3f 63 1e  call  $1e63
0f41: 8d a4     mov   y,#$a4
0f43: ad c8     cmp   y,#$c8
0f45: b0 db     bcs   $0f22
0f47: e4 18     mov   a,$18
0f49: 24 36     and   a,$36
0f4b: d0 d5     bne   $0f22
0f4d: dd        mov   a,y
0f4e: 28 7f     and   a,#$7f
0f50: 60        clrc
0f51: 84 3e     adc   a,$3e
0f53: 60        clrc
0f54: 95 54 03  adc   a,$0354+x
0f57: d5 fd 03  mov   $03fd+x,a
0f5a: f5 2d 04  mov   a,$042d+x
0f5d: d5 fc 03  mov   $03fc+x,a
0f60: f5 f5 02  mov   a,$02f5+x
0f63: 5c        lsr   a
0f64: e8 00     mov   a,#$00
0f66: 7c        ror   a
0f67: d5 dc 02  mov   $02dc+x,a
0f6a: e8 00     mov   a,#$00
0f6c: d4 b2     mov   $b2+x,a
0f6e: d5 0c 01  mov   $010c+x,a
0f71: d5 24 03  mov   $0324+x,a
0f74: d5 44 04  mov   $0444+x,a
0f77: 09 36 45  or    ($45),($36)
0f7a: 7d        mov   a,x
0f7b: 5c        lsr   a
0f7c: 68 04     cmp   a,#$04
0f7e: 90 0f     bcc   $0f8f
0f80: 68 08     cmp   a,#$08
0f82: b0 0b     bcs   $0f8f
0f84: 80        setc
0f85: a8 04     sbc   a,#$04
0f87: 48 03     eor   a,#$03
0f89: fd        mov   y,a
0f8a: f6 69 04  mov   a,$0469+y
0f8d: 10 03     bpl   $0f92
0f8f: 09 36 34  or    ($34),($36)
0f92: f5 ac 02  mov   a,$02ac+x
0f95: d4 9a     mov   $9a+x,a
0f97: f0 1e     beq   $0fb7
0f99: f5 ad 02  mov   a,$02ad+x
0f9c: d4 9b     mov   $9b+x,a
0f9e: f5 c4 02  mov   a,$02c4+x
0fa1: d0 0a     bne   $0fad
0fa3: f5 fd 03  mov   a,$03fd+x
0fa6: 80        setc
0fa7: b5 c5 02  sbc   a,$02c5+x
0faa: d5 fd 03  mov   $03fd+x,a
0fad: f5 c5 02  mov   a,$02c5+x
0fb0: 60        clrc
0fb1: 95 fd 03  adc   a,$03fd+x
0fb4: 3f 6b 21  call  $216b
0fb7: 3f 83 21  call  $2183
0fba: 8d 00     mov   y,#$00
0fbc: e4 11     mov   a,$11
0fbe: 80        setc
0fbf: a8 34     sbc   a,#$34
0fc1: b0 09     bcs   $0fcc
0fc3: e4 11     mov   a,$11
0fc5: 80        setc
0fc6: a8 13     sbc   a,#$13
0fc8: b0 06     bcs   $0fd0
0fca: dc        dec   y
0fcb: 1c        asl   a
0fcc: 7a 10     addw  ya,$10
0fce: da 10     movw  $10,ya
0fd0: 4d        push  x
0fd1: e4 11     mov   a,$11
0fd3: 1c        asl   a
0fd4: 8d 00     mov   y,#$00
0fd6: cd 18     mov   x,#$18
0fd8: 9e        div   ya,x
0fd9: 5d        mov   x,a
0fda: f6 79 25  mov   a,$2579+y
0fdd: c4 15     mov   $15,a
0fdf: f6 78 25  mov   a,$2578+y
0fe2: c4 14     mov   $14,a
0fe4: f6 7b 25  mov   a,$257b+y
0fe7: 2d        push  a
0fe8: f6 7a 25  mov   a,$257a+y
0feb: ee        pop   y
0fec: 9a 14     subw  ya,$14
0fee: eb 10     mov   y,$10
0ff0: cf        mul   ya
0ff1: dd        mov   a,y
0ff2: 8d 00     mov   y,#$00
0ff4: 7a 14     addw  ya,$14
0ff6: cb 15     mov   $15,y
0ff8: 1c        asl   a
0ff9: 2b 15     rol   $15
0ffb: c4 14     mov   $14,a
0ffd: 5f 04 10  jmp   $1004

1000: 4b 15     lsr   $15
1002: 7c        ror   a
1003: 3d        inc   x
1004: c8 06     cmp   x,#$06
1006: d0 f8     bne   $1000
1008: c4 14     mov   $14,a
100a: ce        pop   x
100b: f5 3c 02  mov   a,$023c+x
100e: eb 15     mov   y,$15
1010: cf        mul   ya
1011: da 16     movw  $16,ya
1013: f5 3c 02  mov   a,$023c+x
1016: eb 14     mov   y,$14
1018: cf        mul   ya
1019: 6d        push  y
101a: f5 3d 02  mov   a,$023d+x
101d: eb 14     mov   y,$14
101f: cf        mul   ya
1020: 7a 16     addw  ya,$16
1022: da 16     movw  $16,ya
1024: f5 3d 02  mov   a,$023d+x
1027: eb 15     mov   y,$15
1029: cf        mul   ya
102a: fd        mov   y,a
102b: ae        pop   a
102c: 7a 16     addw  ya,$16
102e: da 16     movw  $16,ya
1030: 7d        mov   a,x
1031: 5c        lsr   a
1032: 68 08     cmp   a,#$08
1034: 90 0d     bcc   $1043
1036: 80        setc
1037: a8 08     sbc   a,#$08
1039: 48 03     eor   a,#$03
103b: 60        clrc
103c: 88 04     adc   a,#$04
103e: 1c        asl   a
103f: 5d        mov   x,a
1040: 5f 52 10  jmp   $1052

1043: 68 04     cmp   a,#$04
1045: 90 0b     bcc   $1052
1047: 80        setc
1048: a8 04     sbc   a,#$04
104a: 48 03     eor   a,#$03
104c: fd        mov   y,a
104d: f6 69 04  mov   a,$0469+y
1050: 10 1a     bpl   $106c
1052: 7d        mov   a,x
1053: 9f        xcn   a
1054: 5c        lsr   a
1055: 08 02     or    a,#$02
1057: fd        mov   y,a
1058: e4 16     mov   a,$16
105a: 3f 60 10  call  $1060
105d: fc        inc   y
105e: e4 17     mov   a,$17
1060: 2d        push  a
1061: e4 36     mov   a,$36
1063: 24 18     and   a,$18
1065: ae        pop   a
1066: d0 04     bne   $106c
1068: cb f2     mov   $f2,y
106a: c4 f3     mov   $f3,a
106c: 6f        ret

106d: cd 16     mov   x,#$16
106f: 8f 0c 36  mov   $36,#$0c
1072: e8 ff     mov   a,#$ff
1074: d5 6d 03  mov   $036d+x,a
1077: e8 0a     mov   a,#$0a
1079: 3f e1 1e  call  $1ee1
107c: d5 25 02  mov   $0225+x,a
107f: d5 2d 04  mov   $042d+x,a
1082: d5 54 03  mov   $0354+x,a
1085: d5 ac 02  mov   $02ac+x,a
1088: d4 b3     mov   $b3+x,a
108a: d5 45 04  mov   $0445+x,a
108d: 1d        dec   x
108e: 1d        dec   x
108f: 8b 36     dec   $36
1091: d0 df     bne   $1072
1093: c4 41     mov   $41,a
1095: c4 4f     mov   $4f,a
1097: c4 de     mov   $de,a
1099: c4 3e     mov   $3e,a
109b: c4 31     mov   $31,a
109d: c4 46     mov   $46,a
109f: 8f e0 40  mov   $40,#$e0
10a2: e8 20     mov   a,#$20
10a4: c4 d7     mov   $d7,a
10a6: c5 9a 0a  mov   $0a9a,a
10a9: c4 d9     mov   $d9,a
10ab: c5 9b 0a  mov   $0a9b,a
10ae: c4 db     mov   $db,a
10b0: c5 9c 0a  mov   $0a9c,a
10b3: c4 dd     mov   $dd,a
10b5: c5 9d 0a  mov   $0a9d,a
10b8: 6f        ret

10b9: c4 ef     mov   $ef,a
10bb: 8f 02 0d  mov   $0d,#$02
10be: e4 18     mov   a,$18
10c0: 48 ff     eor   a,#$ff
10c2: 0e 35 00  tset1 $0035
10c5: 6f        ret

10c6: eb 0a     mov   y,$0a
10c8: e4 ee     mov   a,$ee
10ca: c4 0a     mov   $0a,a
10cc: 7e ee     cmp   y,$ee
10ce: d0 e9     bne   $10b9
10d0: e4 0d     mov   a,$0d
10d2: f0 68     beq   $113c
10d4: 6e 0d 96  dbnz  $0d,$106d
10d7: f0 e0     beq   $10b9
10d9: cd 00     mov   x,#$00
10db: 8f 01 36  mov   $36,#$01
10de: f4 1a     mov   a,$1a+x
10e0: f0 1f     beq   $1101
10e2: f5 25 02  mov   a,$0225+x
10e5: d0 1a     bne   $1101
10e7: 7d        mov   a,x
10e8: 5c        lsr   a
10e9: 68 04     cmp   a,#$04
10eb: 90 0f     bcc   $10fc
10ed: 68 08     cmp   a,#$08
10ef: b0 0b     bcs   $10fc
10f1: 48 07     eor   a,#$07
10f3: 60        clrc
10f4: 88 04     adc   a,#$04
10f6: fd        mov   y,a
10f7: f6 61 04  mov   a,$0461+y
10fa: 10 10     bpl   $110c
10fc: e8 00     mov   a,#$00
10fe: 3f 63 1e  call  $1e63
1101: e8 00     mov   a,#$00
1103: d4 6a     mov   $6a+x,a
1105: d4 82     mov   $82+x,a
1107: d4 83     mov   $83+x,a
1109: bc        inc   a
110a: d4 52     mov   $52+x,a
110c: 3d        inc   x
110d: 3d        inc   x
110e: 0b 36     asl   $36
1110: d0 cc     bne   $10de
1112: 8f 80 36  mov   $36,#$80
1115: f4 1a     mov   a,$1a+x
1117: f0 0a     beq   $1123
1119: f5 25 02  mov   a,$0225+x
111c: d0 05     bne   $1123
111e: e8 00     mov   a,#$00
1120: 3f 63 1e  call  $1e63
1123: e8 00     mov   a,#$00
1125: d4 6a     mov   $6a+x,a
1127: d4 82     mov   $82+x,a
1129: d4 83     mov   $83+x,a
112b: bc        inc   a
112c: d4 52     mov   $52+x,a
112e: 3d        inc   x
112f: 3d        inc   x
1130: 4b 36     lsr   $36
1132: e4 36     mov   a,$36
1134: 68 08     cmp   a,#$08
1136: d0 dd     bne   $1115
1138: e8 00     mov   a,#$00
113a: c4 36     mov   $36,a
113c: cd 00     mov   x,#$00
113e: d8 45     mov   $45,x
1140: 8f 01 36  mov   $36,#$01
1143: 7d        mov   a,x
1144: 5c        lsr   a
1145: 5d        mov   x,a
1146: c8 0c     cmp   x,#$0c
1148: f0 18     beq   $1162
114a: f5 61 04  mov   a,$0461+x
114d: 64 cb     cmp   a,$cb
114f: f0 1b     beq   $116c
1151: 3d        inc   x
1152: c8 08     cmp   x,#$08
1154: f0 09     beq   $115f
1156: b0 05     bcs   $115d
1158: 0b 36     asl   $36
115a: 5f 46 11  jmp   $1146

115d: 4b 36     lsr   $36
115f: 5f 46 11  jmp   $1146
1162: e8 00     mov   a,#$00
1164: c4 36     mov   $36,a
1166: 5f 8e 13  jmp   $138e

1169: 5f 7c 13  jmp   $137c

116c: 7d        mov   a,x
116d: 1c        asl   a
116e: 5d        mov   x,a
116f: d8 33     mov   $33,x
1171: f4 1a     mov   a,$1a+x
1173: f0 f4     beq   $1169
1175: 9b 52     dec   $52+x
1177: d0 50     bne   $11c9
1179: 3f 36 14  call  $1436
117c: f0 03     beq   $1181
117e: 5f 25 13  jmp   $1325

1181: f4 6a     mov   a,$6a+x
1183: f0 03     beq   $1188
1185: 5f 11 13  jmp   $1311

1188: 4d        push  x
1189: 3f cc 11  call  $11cc
118c: ce        pop   x
118d: eb cb     mov   y,$cb
118f: fc        inc   y
1190: e8 00     mov   a,#$00
1192: 80        setc
1193: 3c        rol   a
1194: fe fd     dbnz  y,$1193
1196: 48 ff     eor   a,#$ff
1198: 2d        push  a
1199: 25 9f 0a  and   a,$0a9f
119c: c5 9f 0a  mov   $0a9f,a
119f: ae        pop   a
11a0: 25 a8 0a  and   a,$0aa8
11a3: c5 a8 0a  mov   $0aa8,a
11a6: 8d 00     mov   y,#$00
11a8: f6 61 04  mov   a,$0461+y
11ab: 64 cb     cmp   a,$cb
11ad: f0 0f     beq   $11be
11af: fc        inc   y
11b0: ad 0c     cmp   y,#$0c
11b2: 90 f4     bcc   $11a8
11b4: 4d        push  x
11b5: eb cb     mov   y,$cb
11b7: 3f ff 1b  call  $1bff
11ba: ce        pop   x
11bb: 5f 7c 13  jmp   $137c

11be: 3f 05 12  call  $1205
11c1: e8 ff     mov   a,#$ff
11c3: d6 61 04  mov   $0461+y,a
11c6: 5f af 11  jmp   $11af

11c9: 5f 76 13  jmp   $1376

11cc: eb cb     mov   y,$cb
11ce: e8 00     mov   a,#$00
11d0: d6 cb 0a  mov   $0acb+y,a
11d3: d6 cf 0a  mov   $0acf+y,a
11d6: 8d 00     mov   y,#$00
11d8: f6 69 04  mov   a,$0469+y
11db: 64 cb     cmp   a,$cb
11dd: f0 06     beq   $11e5
11df: fc        inc   y
11e0: ad 04     cmp   y,#$04
11e2: d0 f4     bne   $11d8
11e4: 6f        ret

11e5: f6 69 04  mov   a,$0469+y
11e8: 2d        push  a
11e9: e8 ff     mov   a,#$ff
11eb: d6 69 04  mov   $0469+y,a
11ee: dd        mov   a,y
11ef: 48 03     eor   a,#$03
11f1: 60        clrc
11f2: 88 04     adc   a,#$04
11f4: 1c        asl   a
11f5: 5d        mov   x,a
11f6: f5 25 02  mov   a,$0225+x
11f9: 6d        push  y
11fa: 3f 63 1e  call  $1e63
11fd: ee        pop   y
11fe: ae        pop   a
11ff: d6 69 04  mov   $0469+y,a
1202: 5f df 11  jmp   $11df

1205: 6d        push  y
1206: dd        mov   a,y
1207: 1c        asl   a
1208: fd        mov   y,a
1209: e8 00     mov   a,#$00
120b: d6 19 00  mov   $0019+y,a
120e: d6 1a 00  mov   $001a+y,a
1211: e8 01     mov   a,#$01
1213: d6 52 00  mov   $0052+y,a
1216: e8 00     mov   a,#$00
1218: d6 53 00  mov   $0053+y,a
121b: d6 0c 02  mov   $020c+y,a
121e: d6 0d 02  mov   $020d+y,a
1221: d6 24 02  mov   $0224+y,a
1224: d6 25 02  mov   $0225+y,a
1227: d6 25 02  mov   $0225+y,a
122a: d6 54 02  mov   $0254+y,a
122d: d6 55 02  mov   $0255+y,a
1230: d6 6c 02  mov   $026c+y,a
1233: d6 6d 02  mov   $026d+y,a
1236: d6 6a 00  mov   $006a+y,a
1239: d6 82 00  mov   $0082+y,a
123c: d6 6c 03  mov   $036c+y,a
123f: d6 84 03  mov   $0384+y,a
1242: d6 85 03  mov   $0385+y,a
1245: d6 9c 03  mov   $039c+y,a
1248: d6 9d 03  mov   $039d+y,a
124b: d6 b4 03  mov   $03b4+y,a
124e: d6 cc 03  mov   $03cc+y,a
1251: d6 cd 03  mov   $03cd+y,a
1254: d6 e4 03  mov   $03e4+y,a
1257: d6 e5 03  mov   $03e5+y,a
125a: d6 83 00  mov   $0083+y,a
125d: d6 9a 00  mov   $009a+y,a
1260: d6 9b 00  mov   $009b+y,a
1263: d6 fc 03  mov   $03fc+y,a
1266: d6 fd 03  mov   $03fd+y,a
1269: d6 14 04  mov   $0414+y,a
126c: d6 15 04  mov   $0415+y,a
126f: d6 2c 04  mov   $042c+y,a
1272: d6 b3 00  mov   $00b3+y,a
1275: d6 0d 03  mov   $030d+y,a
1278: d6 f5 02  mov   $02f5+y,a
127b: d6 54 03  mov   $0354+y,a
127e: d6 45 04  mov   $0445+y,a
1281: d6 2d 04  mov   $042d+y,a
1284: d6 ac 02  mov   $02ac+y,a
1287: d6 ad 02  mov   $02ad+y,a
128a: d6 c4 02  mov   $02c4+y,a
128d: d6 c5 02  mov   $02c5+y,a
1290: e8 ff     mov   a,#$ff
1292: d6 6d 03  mov   $036d+y,a
1295: e8 0a     mov   a,#$0a
1297: d6 b5 03  mov   $03b5+y,a
129a: d6 e5 03  mov   $03e5+y,a
129d: ee        pop   y
129e: e8 00     mov   a,#$00
12a0: d6 27 0a  mov   $0a27+y,a
12a3: d6 33 0a  mov   $0a33+y,a
12a6: 6d        push  y
12a7: e8 03     mov   a,#$03
12a9: cf        mul   ya
12aa: fd        mov   y,a
12ab: e8 00     mov   a,#$00
12ad: d6 03 0a  mov   $0a03+y,a
12b0: d6 04 0a  mov   $0a04+y,a
12b3: d6 05 0a  mov   $0a05+y,a
12b6: dd        mov   a,y
12b7: 1c        asl   a
12b8: fd        mov   y,a
12b9: e8 00     mov   a,#$00
12bb: d6 bb 09  mov   $09bb+y,a
12be: d6 bc 09  mov   $09bc+y,a
12c1: d6 bd 09  mov   $09bd+y,a
12c4: d6 be 09  mov   $09be+y,a
12c7: d6 bf 09  mov   $09bf+y,a
12ca: d6 c0 09  mov   $09c0+y,a
12cd: d6 3f 0a  mov   $0a3f+y,a
12d0: d6 40 0a  mov   $0a40+y,a
12d3: d6 41 0a  mov   $0a41+y,a
12d6: d6 42 0a  mov   $0a42+y,a
12d9: d6 43 0a  mov   $0a43+y,a
12dc: d6 44 0a  mov   $0a44+y,a
12df: 8f e0 40  mov   $40,#$e0
12e2: ee        pop   y
12e3: 6d        push  y
12e4: 8f 00 00  mov   $00,#$00
12e7: ad 08     cmp   y,#$08
12e9: 90 0d     bcc   $12f8
12eb: 8f 01 00  mov   $00,#$01
12ee: dd        mov   a,y
12ef: 80        setc
12f0: a8 08     sbc   a,#$08
12f2: 48 03     eor   a,#$03
12f4: 60        clrc
12f5: 88 04     adc   a,#$04
12f7: fd        mov   y,a
12f8: e8 00     mov   a,#$00
12fa: fc        inc   y
12fb: 80        setc
12fc: 3c        rol   a
12fd: fe fd     dbnz  y,$12fc
12ff: 48 ff     eor   a,#$ff
1301: 24 39     and   a,$39
1303: 78 00 00  cmp   $00,#$00
1306: f0 02     beq   $130a
1308: 04 d5     or    a,$d5
130a: c4 39     mov   $39,a
130c: ee        pop   y
130d: 6f        ret

130e: 5f 79 11  jmp   $1179

1311: 3f f4 1f  call  $1ff4
1314: 9b 6a     dec   $6a+x
1316: d0 f6     bne   $130e
1318: f5 54 02  mov   a,$0254+x
131b: d4 19     mov   $19+x,a
131d: f5 55 02  mov   a,$0255+x
1320: d4 1a     mov   $1a+x,a
1322: 5f 0e 13  jmp   $130e

1325: 30 2b     bmi   $1352
1327: 68 64     cmp   a,#$64
1329: 90 09     bcc   $1334
132b: 3f 40 14  call  $1440
132e: 5f 79 11  jmp   $1179

1331: 5f 81 11  jmp   $1181

1334: d5 0c 02  mov   $020c+x,a
1337: 3f 36 14  call  $1436
133a: f0 f5     beq   $1331
133c: 30 14     bmi   $1352
133e: 68 64     cmp   a,#$64
1340: 90 06     bcc   $1348
1342: 3f 40 14  call  $1440
1345: 5f 37 13  jmp   $1337

1348: 60        clrc
1349: 95 0c 02  adc   a,$020c+x
134c: d5 0c 02  mov   $020c+x,a
134f: 5f 37 13  jmp   $1337

1352: 68 e0     cmp   a,#$e0
1354: 90 08     bcc   $135e
1356: 4d        push  x
1357: 3f 24 14  call  $1424
135a: ce        pop   x
135b: 5f 79 11  jmp   $1179

135e: 4d        push  x
135f: 3f 23 0f  call  $0f23
1362: ce        pop   x
1363: f5 0c 02  mov   a,$020c+x
1366: d4 52     mov   $52+x,a
1368: fd        mov   y,a
1369: f5 0d 02  mov   a,$020d+x
136c: cf        mul   ya
136d: dd        mov   a,y
136e: d0 01     bne   $1371
1370: bc        inc   a
1371: d4 53     mov   $53+x,a
1373: 5f 79 13  jmp   $1379

1376: 3f 2b 23  call  $232b
1379: 3f 4b 21  call  $214b
137c: 3d        inc   x
137d: 3d        inc   x
137e: c8 10     cmp   x,#$10
1380: f0 09     beq   $138b
1382: b0 05     bcs   $1389
1384: 0b 36     asl   $36
1386: 5f 43 11  jmp   $1143

1389: 4b 36     lsr   $36
138b: 5f 43 11  jmp   $1143

138e: f8 cb     mov   x,$cb
1390: f4 de     mov   a,$de+x
1392: f0 24     beq   $13b8
1394: f4 e7     mov   a,$e7+x
1396: fd        mov   y,a
1397: f4 e6     mov   a,$e6+x
1399: 60        clrc
139a: 94 d6     adc   a,$d6+x
139c: 2d        push  a
139d: dd        mov   a,y
139e: 94 d7     adc   a,$d7+x
13a0: fd        mov   y,a
13a1: f4 de     mov   a,$de+x
13a3: c4 00     mov   $00,a
13a5: 8b 00     dec   $00
13a7: e4 00     mov   a,$00
13a9: d4 de     mov   $de+x,a
13ab: ae        pop   a
13ac: d0 05     bne   $13b3
13ae: f4 df     mov   a,$df+x
13b0: fd        mov   y,a
13b1: f4 de     mov   a,$de+x
13b3: d4 d6     mov   $d6+x,a
13b5: dd        mov   a,y
13b6: d4 d7     mov   $d7+x,a
13b8: e4 4f     mov   a,$4f
13ba: f0 15     beq   $13d1
13bc: ba 4b     movw  ya,$4b
13be: 7a 47     addw  ya,$47
13c0: da 47     movw  $47,ya
13c2: ba 4d     movw  ya,$4d
13c4: 7a 49     addw  ya,$49
13c6: 6e 4f 06  dbnz  $4f,$13cf
13c9: ba 4f     movw  ya,$4f
13cb: da 47     movw  $47,ya
13cd: eb 51     mov   y,$51
13cf: da 49     movw  $49,ya
13d1: e4 41     mov   a,$41
13d3: f0 0e     beq   $13e3
13d5: ba 43     movw  ya,$43
13d7: 7a 3f     addw  ya,$3f
13d9: 6e 41 02  dbnz  $41,$13de
13dc: ba 41     movw  ya,$41
13de: da 3f     movw  $3f,ya
13e0: 8f ff 45  mov   $45,#$ff
13e3: cd 00     mov   x,#$00
13e5: 8f 01 36  mov   $36,#$01
13e8: 7d        mov   a,x
13e9: 5c        lsr   a
13ea: fd        mov   y,a
13eb: f6 61 04  mov   a,$0461+y
13ee: 64 cb     cmp   a,$cb
13f0: d0 07     bne   $13f9
13f2: f4 1a     mov   a,$1a+x
13f4: f0 03     beq   $13f9
13f6: 3f fe 21  call  $21fe
13f9: 3d        inc   x
13fa: 3d        inc   x
13fb: 0b 36     asl   $36
13fd: d0 e9     bne   $13e8
13ff: 8f 80 36  mov   $36,#$80
1402: 7d        mov   a,x
1403: 5c        lsr   a
1404: fd        mov   y,a
1405: f6 61 04  mov   a,$0461+y
1408: 64 cb     cmp   a,$cb
140a: d0 09     bne   $1415
140c: f4 1a     mov   a,$1a+x
140e: f0 05     beq   $1415
1410: 4d        push  x
1411: 3f fe 21  call  $21fe
1414: ce        pop   x
1415: 3d        inc   x
1416: 3d        inc   x
1417: 4b 36     lsr   $36
1419: e4 36     mov   a,$36
141b: 68 08     cmp   a,#$08
141d: d0 e3     bne   $1402
141f: e8 00     mov   a,#$00
1421: c4 36     mov   $36,a
1423: 6f        ret

; dispatch vcmd in A (e0-ff)
1424: 1c        asl   a
1425: fd        mov   y,a
1426: f6 eb 20  mov   a,$20eb+y
1429: 2d        push  a
142a: f6 ea 20  mov   a,$20ea+y
142d: 2d        push  a
142e: dd        mov   a,y
142f: 5c        lsr   a
1430: fd        mov   y,a
1431: f6 82 21  mov   a,$2182+y
1434: f0 08     beq   $143e
1436: e7 19     mov   a,($19+x)
1438: bb 19     inc   $19+x
143a: d0 02     bne   $143e
143c: bb 1a     inc   $1a+x
143e: fd        mov   y,a
143f: 6f        ret

1440: 80        setc
1441: a8 64     sbc   a,#$64
1443: 1c        asl   a
1444: fd        mov   y,a
1445: f6 4f 14  mov   a,$144f+y
1448: 2d        push  a
1449: f6 4e 14  mov   a,$144e+y
144c: 2d        push  a
144d: 6f        ret

144e: dw $145a
1450: dw $1499
1452: dw $151f
1454: dw $1566
1456: dw $15c6
1458: dw $1628

; load song
145a: eb cb     mov   y,$cb
145c: f6 91 04  mov   a,$0491+y
145f: 8f 95 02  mov   $02,#$95
1462: 8f 04 03  mov   $03,#$04
1465: 8d 00     mov   y,#$00
1467: 77 02     cmp   a,($02)+y
1469: f0 0a     beq   $1475
146b: 60        clrc
146c: 98 11 02  adc   $02,#$11
146f: 98 00 03  adc   $03,#$00
1472: 5f 67 14  jmp   $1467

1475: fc        inc   y
1476: f7 02     mov   a,($02)+y
1478: c4 00     mov   $00,a
147a: fc        inc   y
147b: f7 02     mov   a,($02)+y
147d: c4 01     mov   $01,a
147f: 3f 36 14  call  $1436
1482: 60        clrc
1483: 84 00     adc   a,$00
1485: c4 00     mov   $00,a
1487: 0d        push  psw
1488: 3f 36 14  call  $1436
148b: 8e        pop   psw
148c: 84 01     adc   a,$01
148e: c4 01     mov   $01,a
1490: e4 00     mov   a,$00
1492: d4 19     mov   $19+x,a
1494: e4 01     mov   a,$01
1496: d4 1a     mov   $1a+x,a
1498: 6f        ret

1499: e8 33     mov   a,#$33
149b: c4 00     mov   $00,a
149d: e8 0a     mov   a,#$0a
149f: c4 01     mov   $01,a
14a1: 7d        mov   a,x
14a2: 5c        lsr   a
14a3: fd        mov   y,a
14a4: f7 00     mov   a,($00)+y
14a6: 68 03     cmp   a,#$03
14a8: b0 72     bcs   $151c
14aa: 2d        push  a
14ab: 60        clrc
14ac: 88 01     adc   a,#$01
14ae: d7 00     mov   ($00)+y,a
14b0: e8 03     mov   a,#$03
14b2: cf        mul   ya
14b3: c4 00     mov   $00,a
14b5: ae        pop   a
14b6: 60        clrc
14b7: 84 00     adc   a,$00
14b9: 1c        asl   a
14ba: 2d        push  a
14bb: e8 3f     mov   a,#$3f
14bd: c4 00     mov   $00,a
14bf: e8 0a     mov   a,#$0a
14c1: c4 01     mov   $01,a
14c3: ae        pop   a
14c4: 60        clrc
14c5: 84 00     adc   a,$00
14c7: c4 02     mov   $02,a
14c9: 98 00 01  adc   $01,#$00
14cc: e4 01     mov   a,$01
14ce: c4 03     mov   $03,a
14d0: eb cb     mov   y,$cb
14d2: f6 91 04  mov   a,$0491+y
14d5: 8f 95 00  mov   $00,#$95
14d8: 8f 04 01  mov   $01,#$04
14db: 8d 00     mov   y,#$00
14dd: 77 00     cmp   a,($00)+y
14df: f0 0a     beq   $14eb
14e1: 60        clrc
14e2: 98 11 00  adc   $00,#$11
14e5: 98 00 01  adc   $01,#$00
14e8: 5f dd 14  jmp   $14dd

14eb: fc        inc   y
14ec: f7 00     mov   a,($00)+y
14ee: 2d        push  a
14ef: fc        inc   y
14f0: f7 00     mov   a,($00)+y
14f2: c4 01     mov   $01,a
14f4: ae        pop   a
14f5: c4 00     mov   $00,a
14f7: 3f 36 14  call  $1436
14fa: 60        clrc
14fb: 84 00     adc   a,$00
14fd: c4 00     mov   $00,a
14ff: 0d        push  psw
1500: 3f 36 14  call  $1436
1503: 8e        pop   psw
1504: 84 01     adc   a,$01
1506: c4 01     mov   $01,a
1508: f4 19     mov   a,$19+x
150a: 8d 00     mov   y,#$00
150c: d7 02     mov   ($02)+y,a
150e: f4 1a     mov   a,$1a+x
1510: fc        inc   y
1511: d7 02     mov   ($02)+y,a
1513: e4 00     mov   a,$00
1515: d4 19     mov   $19+x,a
1517: e4 01     mov   a,$01
1519: d4 1a     mov   $1a+x,a
151b: 6f        ret

151c: 5f 1c 15  jmp   $151c

151f: e8 33     mov   a,#$33
1521: c4 02     mov   $02,a
1523: e8 0a     mov   a,#$0a
1525: c4 03     mov   $03,a
1527: 7d        mov   a,x
1528: 5c        lsr   a
1529: fd        mov   y,a
152a: f7 02     mov   a,($02)+y
152c: f0 35     beq   $1563
152e: 9c        dec   a
152f: 2d        push  a
1530: e8 03     mov   a,#$03
1532: cf        mul   ya
1533: c4 00     mov   $00,a
1535: ae        pop   a
1536: 2d        push  a
1537: 60        clrc
1538: 84 00     adc   a,$00
153a: fd        mov   y,a
153b: ae        pop   a
153c: 6d        push  y
153d: 2d        push  a
153e: 7d        mov   a,x
153f: 5c        lsr   a
1540: fd        mov   y,a
1541: ae        pop   a
1542: d7 02     mov   ($02)+y,a
1544: ee        pop   y
1545: e8 3f     mov   a,#$3f
1547: c4 00     mov   $00,a
1549: e8 0a     mov   a,#$0a
154b: c4 01     mov   $01,a
154d: dd        mov   a,y
154e: 1c        asl   a
154f: 60        clrc
1550: 84 00     adc   a,$00
1552: c4 00     mov   $00,a
1554: 98 00 01  adc   $01,#$00
1557: 8d 00     mov   y,#$00
1559: f7 00     mov   a,($00)+y
155b: d4 19     mov   $19+x,a
155d: fc        inc   y
155e: f7 00     mov   a,($00)+y
1560: d4 1a     mov   $1a+x,a
1562: 6f        ret

1563: 5f 63 15  jmp   $1563

1566: e8 27     mov   a,#$27
1568: c4 00     mov   $00,a
156a: e8 0a     mov   a,#$0a
156c: c4 01     mov   $01,a
156e: 7d        mov   a,x
156f: 5c        lsr   a
1570: fd        mov   y,a
1571: f7 00     mov   a,($00)+y
1573: 68 03     cmp   a,#$03
1575: b0 4c     bcs   $15c3
1577: 2d        push  a
1578: 60        clrc
1579: 88 01     adc   a,#$01
157b: d7 00     mov   ($00)+y,a
157d: e8 03     mov   a,#$03
157f: cf        mul   ya
1580: c4 00     mov   $00,a
1582: ae        pop   a
1583: 60        clrc
1584: 84 00     adc   a,$00
1586: fd        mov   y,a
1587: 6d        push  y
1588: 3f 36 14  call  $1436
158b: ee        pop   y
158c: 2d        push  a
158d: e8 03     mov   a,#$03
158f: c4 00     mov   $00,a
1591: e8 0a     mov   a,#$0a
1593: c4 01     mov   $01,a
1595: dd        mov   a,y
1596: 60        clrc
1597: 84 00     adc   a,$00
1599: c4 00     mov   $00,a
159b: 98 00 01  adc   $01,#$00
159e: ae        pop   a
159f: 6d        push  y
15a0: 8d 00     mov   y,#$00
15a2: d7 00     mov   ($00)+y,a
15a4: ee        pop   y
15a5: e8 bb     mov   a,#$bb
15a7: c4 00     mov   $00,a
15a9: e8 09     mov   a,#$09
15ab: c4 01     mov   $01,a
15ad: dd        mov   a,y
15ae: 1c        asl   a
15af: 60        clrc
15b0: 84 00     adc   a,$00
15b2: c4 00     mov   $00,a
15b4: 98 00 01  adc   $01,#$00
15b7: f4 19     mov   a,$19+x
15b9: 8d 00     mov   y,#$00
15bb: d7 00     mov   ($00)+y,a
15bd: f4 1a     mov   a,$1a+x
15bf: fc        inc   y
15c0: d7 00     mov   ($00)+y,a
15c2: 6f        ret

15c3: 5f c3 15  jmp   $15c3

15c6: e8 27     mov   a,#$27
15c8: c4 02     mov   $02,a
15ca: e8 0a     mov   a,#$0a
15cc: c4 03     mov   $03,a
15ce: 7d        mov   a,x
15cf: 5c        lsr   a
15d0: fd        mov   y,a
15d1: f7 02     mov   a,($02)+y
15d3: f0 50     beq   $1625
15d5: 9c        dec   a
15d6: 2d        push  a
15d7: e8 03     mov   a,#$03
15d9: cf        mul   ya
15da: c4 00     mov   $00,a
15dc: ae        pop   a
15dd: 2d        push  a
15de: 60        clrc
15df: 84 00     adc   a,$00
15e1: fd        mov   y,a
15e2: e8 03     mov   a,#$03
15e4: c4 00     mov   $00,a
15e6: e8 0a     mov   a,#$0a
15e8: c4 01     mov   $01,a
15ea: dd        mov   a,y
15eb: 60        clrc
15ec: 84 00     adc   a,$00
15ee: c4 00     mov   $00,a
15f0: 98 00 01  adc   $01,#$00
15f3: 6d        push  y
15f4: 8d 00     mov   y,#$00
15f6: f7 00     mov   a,($00)+y
15f8: 9c        dec   a
15f9: d7 00     mov   ($00)+y,a
15fb: ee        pop   y
15fc: ae        pop   a
15fd: d0 08     bne   $1607
15ff: 2d        push  a
1600: 7d        mov   a,x
1601: 5c        lsr   a
1602: fd        mov   y,a
1603: ae        pop   a
1604: d7 02     mov   ($02)+y,a
1606: 6f        ret

1607: e8 bb     mov   a,#$bb
1609: c4 00     mov   $00,a
160b: e8 09     mov   a,#$09
160d: c4 01     mov   $01,a
160f: dd        mov   a,y
1610: 1c        asl   a
1611: 60        clrc
1612: 84 00     adc   a,$00
1614: c4 00     mov   $00,a
1616: 98 00 01  adc   $01,#$00
1619: 8d 00     mov   y,#$00
161b: f7 00     mov   a,($00)+y
161d: d4 19     mov   $19+x,a
161f: fc        inc   y
1620: f7 00     mov   a,($00)+y
1622: d4 1a     mov   $1a+x,a
1624: 6f        ret

1625: 5f 25 16  jmp   $1625

1628: eb cb     mov   y,$cb
162a: f6 ba 0a  mov   a,$0aba+y
162d: f0 03     beq   $1632
162f: 5f 5c 14  jmp   $145c

1632: 3f 36 14  call  $1436
1635: 3f 36 14  call  $1436
1638: 6f        ret

1639: e5 99 0a  mov   a,$0a99
163c: 1c        asl   a
163d: 5d        mov   x,a
163e: 1f 3f 16  jmp   ($163f+x)

1641: 63 16 28  bbs3  $16,$166c
1644: 19        or    (x),(y)
1645: 8d 1a     mov   y,#$1a
1647: f2 1a     clr7  $1a
1649: 61        tcall 6
164a: 1b f2     asl   $f2+x
164c: 1b ff     asl   $ff+x
164e: 1b 32     asl   $32+x
1650: 1c        asl   a
1651: 69 1c 95  cmp   ($95),($1c)
1654: 1c        asl   a
1655: bf        mov   a,(x)+
1656: 1c        asl   a
1657: 27 1d     and   a,($1d+x)
1659: a1        tcall 10
165a: 1d        dec   x
165b: bd        mov   sp,x
165c: 1d        dec   x
165d: d8 1d     mov   $1d,x
165f: 09 1e 46  or    ($46),($1e)
1662: 1e e5 87  cmp   x,$87e5
1665: 0a 65 c9  or1   c,$0965,6
1668: 0a f0 04  or1   c,$04f0,0
166b: e8 00     mov   a,#$00
166d: 2f 0d     bra   $167c
166f: e5 88 0a  mov   a,$0a88
1672: 28 80     and   a,#$80
1674: 65 ca 0a  cmp   a,$0aca
1677: d0 03     bne   $167c
1679: 5f 61 18  jmp   $1861

167c: c5 ca 0a  mov   $0aca,a
167f: e5 87 0a  mov   a,$0a87
1682: c5 c9 0a  mov   $0ac9,a
1685: c4 00     mov   $00,a
1687: 8d 00     mov   y,#$00
1689: cd 00     mov   x,#$00
168b: 8f 95 04  mov   $04,#$95
168e: 8f 04 05  mov   $05,#$04
1691: 77 04     cmp   a,($04)+y
1693: f0 0f     beq   $16a4
1695: 60        clrc
1696: 98 11 04  adc   $04,#$11
1699: 98 00 05  adc   $05,#$00
169c: 3d        inc   x
169d: c8 46     cmp   x,#$46
169f: 90 f0     bcc   $1691
16a1: 5f 61 18  jmp   $1861

16a4: cd 00     mov   x,#$00
16a6: 8d 00     mov   y,#$00
16a8: ad 04     cmp   y,#$04
16aa: f0 0d     beq   $16b9
16ac: f6 91 04  mov   a,$0491+y
16af: fc        inc   y
16b0: 64 00     cmp   a,$00
16b2: d0 f4     bne   $16a8
16b4: 3d        inc   x
16b5: cb 02     mov   $02,y
16b7: 2f ef     bra   $16a8
16b9: e5 89 0a  mov   a,$0a89
16bc: 28 0f     and   a,#$0f
16be: c4 01     mov   $01,a
16c0: 3e 01     cmp   x,$01
16c2: 90 12     bcc   $16d6
16c4: eb 02     mov   y,$02
16c6: dc        dec   y
16c7: f6 b6 18  mov   a,$18b6+y
16ca: c5 b1 0a  mov   $0ab1,a
16cd: f8 00     mov   x,$00
16cf: 4d        push  x
16d0: 3f 98 19  call  $1998
16d3: ce        pop   x
16d4: d8 00     mov   $00,x
16d6: cd 00     mov   x,#$00
16d8: 8d 02     mov   y,#$02
16da: f7 04     mov   a,($04)+y
16dc: f0 0a     beq   $16e8
16de: 3d        inc   x
16df: c8 08     cmp   x,#$08
16e1: b0 05     bcs   $16e8
16e3: fc        inc   y
16e4: fc        inc   y
16e5: 5f da 16  jmp   $16da

16e8: d8 01     mov   $01,x
16ea: 78 29 00  cmp   $00,#$29
16ed: b0 0c     bcs   $16fb
16ef: 8d 00     mov   y,#$00
16f1: f6 6d 04  mov   a,$046d+y
16f4: 68 ff     cmp   a,#$ff
16f6: f0 23     beq   $171b
16f8: 5f 61 18  jmp   $1861

16fb: 8d 08     mov   y,#$08
16fd: cd 00     mov   x,#$00
16ff: f6 6d 04  mov   a,$046d+y
1702: 68 ff     cmp   a,#$ff
1704: d0 01     bne   $1707
1706: 3d        inc   x
1707: fc        inc   y
1708: ad 0c     cmp   y,#$0c
170a: 90 f3     bcc   $16ff
170c: 3e 01     cmp   x,$01
170e: b0 0b     bcs   $171b
1710: d8 02     mov   $02,x
1712: fa 01 03  mov   ($03),($01)
1715: 80        setc
1716: a9 02 03  sbc   ($03),($02)
1719: 2f 0f     bra   $172a
171b: 8d 00     mov   y,#$00
171d: f6 91 04  mov   a,$0491+y
1720: f0 37     beq   $1759
1722: fc        inc   y
1723: ad 04     cmp   y,#$04
1725: 90 f6     bcc   $171d
1727: 8f 00 03  mov   $03,#$00
172a: e5 89 0a  mov   a,$0a89
172d: 5c        lsr   a
172e: 5c        lsr   a
172f: 5c        lsr   a
1730: 5c        lsr   a
1731: c4 02     mov   $02,a
1733: 3f ba 18  call  $18ba
1736: b0 03     bcs   $173b
1738: 5f 61 18  jmp   $1861

173b: f8 00     mov   x,$00
173d: 4d        push  x
173e: f8 01     mov   x,$01
1740: 4d        push  x
1741: c5 b1 0a  mov   $0ab1,a
1744: 3f 98 19  call  $1998
1747: ce        pop   x
1748: d8 01     mov   $01,x
174a: ce        pop   x
174b: d8 00     mov   $00,x
174d: 8d 00     mov   y,#$00
174f: f6 91 04  mov   a,$0491+y
1752: f0 05     beq   $1759
1754: fc        inc   y
1755: ad 03     cmp   y,#$03
1757: 90 f6     bcc   $174f
1759: e5 89 0a  mov   a,$0a89
175c: 5c        lsr   a
175d: 5c        lsr   a
175e: 5c        lsr   a
175f: 5c        lsr   a
1760: c4 02     mov   $02,a
1762: e4 00     mov   a,$00
1764: d6 91 04  mov   $0491+y,a
1767: e4 02     mov   a,$02
1769: d6 cb 0a  mov   $0acb+y,a
176c: e4 01     mov   a,$01
176e: d6 cf 0a  mov   $0acf+y,a
1771: cb 02     mov   $02,y
1773: 78 29 00  cmp   $00,#$29
1776: b0 0e     bcs   $1786
1778: cd 00     mov   x,#$00
177a: dd        mov   a,y
177b: d5 6d 04  mov   $046d+x,a
177e: 3d        inc   x
177f: c8 08     cmp   x,#$08
1781: d0 f8     bne   $177b
1783: 5f 9b 17  jmp   $179b

1786: cd 08     mov   x,#$08
1788: f5 6d 04  mov   a,$046d+x
178b: 68 ff     cmp   a,#$ff
178d: d0 08     bne   $1797
178f: dd        mov   a,y
1790: d5 6d 04  mov   $046d+x,a
1793: 8b 01     dec   $01
1795: f0 04     beq   $179b
1797: 3d        inc   x
1798: 5f 88 17  jmp   $1788

179b: 78 29 00  cmp   $00,#$29
179e: b0 21     bcs   $17c1
17a0: cb 00     mov   $00,y
17a2: 8d 01     mov   y,#$01
17a4: cd 00     mov   x,#$00
17a6: e4 00     mov   a,$00
17a8: 4d        push  x
17a9: 7d        mov   a,x
17aa: 1c        asl   a
17ab: 5d        mov   x,a
17ac: f7 04     mov   a,($04)+y
17ae: d5 79 04  mov   $0479+x,a
17b1: fc        inc   y
17b2: f7 04     mov   a,($04)+y
17b4: d5 7a 04  mov   $047a+x,a
17b7: fc        inc   y
17b8: ce        pop   x
17b9: 3d        inc   x
17ba: c8 08     cmp   x,#$08
17bc: 90 e8     bcc   $17a6
17be: 5f ec 17  jmp   $17ec

17c1: cb 00     mov   $00,y
17c3: 8d 01     mov   y,#$01
17c5: cd 08     mov   x,#$08
17c7: e4 00     mov   a,$00
17c9: 75 6d 04  cmp   a,$046d+x
17cc: f0 08     beq   $17d6
17ce: 3d        inc   x
17cf: c8 0c     cmp   x,#$0c
17d1: b0 19     bcs   $17ec
17d3: 5f c7 17  jmp   $17c7

17d6: 4d        push  x
17d7: 7d        mov   a,x
17d8: 1c        asl   a
17d9: 5d        mov   x,a
17da: f7 04     mov   a,($04)+y
17dc: d5 79 04  mov   $0479+x,a
17df: fc        inc   y
17e0: f7 04     mov   a,($04)+y
17e2: d5 7a 04  mov   $047a+x,a
17e5: fc        inc   y
17e6: ce        pop   x
17e7: 3d        inc   x
17e8: c8 0c     cmp   x,#$0c
17ea: 90 db     bcc   $17c7
17ec: f8 02     mov   x,$02
17ee: e8 00     mov   a,#$00
17f0: d5 ba 0a  mov   $0aba+x,a
17f3: f5 b6 18  mov   a,$18b6+x
17f6: c4 02     mov   $02,a
17f8: 3f 9e 18  call  $189e
17fb: c5 b5 0a  mov   $0ab5,a
17fe: cd 00     mov   x,#$00
1800: e4 02     mov   a,$02
1802: 05 b5 0a  or    a,$0ab5
1805: 45 b5 0a  eor   a,$0ab5
1808: 5c        lsr   a
1809: 90 08     bcc   $1813
180b: 2d        push  a
180c: 4d        push  x
180d: 7d        mov   a,x
180e: 3f 6c 18  call  $186c
1811: ce        pop   x
1812: ae        pop   a
1813: 3d        inc   x
1814: c8 04     cmp   x,#$04
1816: 90 f0     bcc   $1808
1818: e5 88 0a  mov   a,$0a88
181b: 28 7f     and   a,#$7f
181d: f0 42     beq   $1861
181f: 5d        mov   x,a
1820: e4 02     mov   a,$02
1822: 05 b5 0a  or    a,$0ab5
1825: 45 b5 0a  eor   a,$0ab5
1828: 8d 00     mov   y,#$00
182a: c4 03     mov   $03,a
182c: e4 03     mov   a,$03
182e: 5c        lsr   a
182f: c4 03     mov   $03,a
1831: b0 17     bcs   $184a
1833: fc        inc   y
1834: ad 04     cmp   y,#$04
1836: 90 f4     bcc   $182c
1838: e5 02 00  mov   a,$0002
183b: 05 b5 0a  or    a,$0ab5
183e: 45 b5 0a  eor   a,$0ab5
1841: 05 9f 0a  or    a,$0a9f
1844: c5 9f 0a  mov   $0a9f,a
1847: 5f 61 18  jmp   $1861

184a: 8f 61 00  mov   $00,#$61
184d: 8f 18 01  mov   $01,#$18
1850: 6d        push  y
1851: 7d        mov   a,x
1852: fd        mov   y,a
1853: f7 00     mov   a,($00)+y
1855: ee        pop   y
1856: d6 a4 0a  mov   $0aa4+y,a
1859: e8 00     mov   a,#$00
185b: d6 c0 0a  mov   $0ac0+y,a
185e: 5f 33 18  jmp   $1833

1861: 6f        ret

1862: 7f        ret
i
1863: 3f 20 10  call  $1020
1866: 0c 08 06  asl   $0608
1869: 04 02     or    a,$02
186b: 01        tcall 0
186c: 5d        mov   x,a
186d: e8 64     mov   a,#$64
186f: d5 c0 0a  mov   $0ac0+x,a
1872: e8 0a     mov   a,#$0a
1874: d5 c4 0a  mov   $0ac4+x,a
1877: 7d        mov   a,x
1878: 8d 00     mov   y,#$00
187a: 76 6d 04  cmp   a,$046d+y
187d: f0 06     beq   $1885
187f: fc        inc   y
1880: ad 0c     cmp   y,#$0c
1882: 90 f6     bcc   $187a
1884: 6f        ret

1885: d6 61 04  mov   $0461+y,a
1888: 2d        push  a
1889: 6d        push  y
188a: dd        mov   a,y
188b: 1c        asl   a
188c: fd        mov   y,a
188d: f6 79 04  mov   a,$0479+y
1890: d6 19 00  mov   $0019+y,a
1893: f6 7a 04  mov   a,$047a+y
1896: d6 1a 00  mov   $001a+y,a
1899: ee        pop   y
189a: ae        pop   a
189b: 5f 7f 18  jmp   $187f

189e: cd 0b     mov   x,#$0b
18a0: 8f 00 00  mov   $00,#$00
18a3: f5 61 04  mov   a,$0461+x
18a6: 30 08     bmi   $18b0
18a8: fd        mov   y,a
18a9: f6 b6 18  mov   a,$18b6+y
18ac: 04 00     or    a,$00
18ae: c4 00     mov   $00,a
18b0: 1d        dec   x
18b1: 10 f0     bpl   $18a3
18b3: e4 00     mov   a,$00
18b5: 6f        ret


18b6: db $01,$02,$04,$08

18ba: f8 00     mov   x,$00
18bc: 4d        push  x
18bd: f8 02     mov   x,$02
18bf: 4d        push  x
18c0: f8 04     mov   x,$04
18c2: 4d        push  x
18c3: f8 05     mov   x,$05
18c5: 4d        push  x
18c6: cd 03     mov   x,#$03
18c8: f5 cb 0a  mov   a,$0acb+x
18cb: 64 02     cmp   a,$02
18cd: b0 02     bcs   $18d1
18cf: e8 00     mov   a,#$00
18d1: d4 04     mov   $04+x,a
18d3: 1d        dec   x
18d4: 10 f2     bpl   $18c8
18d6: 8f 00 00  mov   $00,#$00
18d9: cd 02     mov   x,#$02
18db: 8d 03     mov   y,#$03
18dd: e4 07     mov   a,$07
18df: 74 04     cmp   a,$04+x
18e1: f0 02     beq   $18e5
18e3: b0 04     bcs   $18e9
18e5: f4 04     mov   a,$04+x
18e7: 4d        push  x
18e8: ee        pop   y
18e9: 1d        dec   x
18ea: 10 f3     bpl   $18df
18ec: f6 cf 0a  mov   a,$0acf+y
18ef: 64 03     cmp   a,$03
18f1: b0 22     bcs   $1915
18f3: f0 20     beq   $1915
18f5: c4 02     mov   $02,a
18f7: e4 04     mov   a,$04
18f9: 04 05     or    a,$05
18fb: 04 06     or    a,$06
18fd: 04 07     or    a,$07
18ff: f0 11     beq   $1912
1901: cd 00     mov   x,#$00
1903: d9 04     mov   $04+y,x
1905: 80        setc
1906: a9 02 03  sbc   ($03),($02)
1909: e4 00     mov   a,$00
190b: 16 b6 18  or    a,$18b6+y
190e: c4 00     mov   $00,a
1910: 2f c7     bra   $18d9
1912: 60        clrc
1913: 2f 06     bra   $191b
1915: e4 00     mov   a,$00
1917: 16 b6 18  or    a,$18b6+y
191a: 80        setc
191b: ce        pop   x
191c: d8 05     mov   $05,x
191e: ce        pop   x
191f: d8 04     mov   $04,x
1921: ce        pop   x
1922: d8 02     mov   $02,x
1924: ce        pop   x
1925: d8 00     mov   $00,x
1927: 6f        ret

1928: 3f 9e 18  call  $189e
192b: 48 ff     eor   a,#$ff
192d: c5 b5 0a  mov   $0ab5,a
1930: e5 88 0a  mov   a,$0a88
1933: 5d        mov   x,a
1934: d0 18     bne   $194e
1936: e5 87 0a  mov   a,$0a87
1939: d0 08     bne   $1943
193b: e8 ff     mov   a,#$ff
193d: c5 b1 0a  mov   $0ab1,a
1940: 5f 98 19  jmp   $1998

1943: 3f 46 1a  call  $1a46
1946: 90 4f     bcc   $1997
1948: c5 b1 0a  mov   $0ab1,a
194b: 5f 98 19  jmp   $1998

194e: e5 87 0a  mov   a,$0a87
1951: d0 06     bne   $1959
1953: e8 0f     mov   a,#$0f
1955: c4 03     mov   $03,a
1957: 2f 07     bra   $1960
1959: 3f 46 1a  call  $1a46
195c: 90 39     bcc   $1997
195e: c4 03     mov   $03,a
1960: 05 b5 0a  or    a,$0ab5
1963: 45 b5 0a  eor   a,$0ab5
1966: 8d 00     mov   y,#$00
1968: c4 02     mov   $02,a
196a: e4 02     mov   a,$02
196c: 5c        lsr   a
196d: c4 02     mov   $02,a
196f: b0 14     bcs   $1985
1971: fc        inc   y
1972: ad 04     cmp   y,#$04
1974: 90 f4     bcc   $196a
1976: e4 03     mov   a,$03
1978: 05 b5 0a  or    a,$0ab5
197b: 45 b5 0a  eor   a,$0ab5
197e: 05 a8 0a  or    a,$0aa8
1981: c5 a8 0a  mov   $0aa8,a
1984: 6f        ret

1985: 8f 61 00  mov   $00,#$61
1988: 8f 18 01  mov   $01,#$18
198b: 6d        push  y
198c: 7d        mov   a,x
198d: fd        mov   y,a
198e: f7 00     mov   a,($00)+y
1990: ee        pop   y
1991: d6 ad 0a  mov   $0aad+y,a
1994: 5f 71 19  jmp   $1971

1997: 6f        ret

1998: f8 cb     mov   x,$cb
199a: 4d        push  x
199b: 8d 00     mov   y,#$00
199d: 5c        lsr   a
199e: 90 09     bcc   $19a9
19a0: 2d        push  a
19a1: 6d        push  y
19a2: cb cb     mov   $cb,y
19a4: 3f cc 11  call  $11cc
19a7: ee        pop   y
19a8: ae        pop   a
19a9: fc        inc   y
19aa: ad 04     cmp   y,#$04
19ac: 90 ef     bcc   $199d
19ae: ce        pop   x
19af: d8 cb     mov   $cb,x
19b1: cd 00     mov   x,#$00
19b3: d8 03     mov   $03,x
19b5: e5 b1 0a  mov   a,$0ab1
19b8: 48 ff     eor   a,#$ff
19ba: 25 a8 0a  and   a,$0aa8
19bd: c5 a8 0a  mov   $0aa8,a
19c0: e5 b1 0a  mov   a,$0ab1
19c3: 5c        lsr   a
19c4: 90 08     bcc   $19ce
19c6: 2d        push  a
19c7: 4d        push  x
19c8: 7d        mov   a,x
19c9: 3f dd 19  call  $19dd
19cc: ce        pop   x
19cd: ae        pop   a
19ce: 3d        inc   x
19cf: c8 04     cmp   x,#$04
19d1: 90 f0     bcc   $19c3
19d3: e4 03     mov   a,$03
19d5: c4 35     mov   $35,a
19d7: e8 00     mov   a,#$00
19d9: c5 b1 0a  mov   $0ab1,a
19dc: 6f        ret

19dd: fd        mov   y,a
19de: 3f ff 1b  call  $1bff
19e1: 8d 00     mov   y,#$00
19e3: 76 61 04  cmp   a,$0461+y
19e6: f0 06     beq   $19ee
19e8: fc        inc   y
19e9: ad 0c     cmp   y,#$0c
19eb: 90 f6     bcc   $19e3
19ed: 6f        ret

19ee: 2d        push  a
19ef: 3f 05 12  call  $1205
19f2: ae        pop   a
19f3: 3f 2a 1a  call  $1a2a
19f6: 2d        push  a
19f7: 6d        push  y
19f8: e8 ff     mov   a,#$ff
19fa: d6 61 04  mov   $0461+y,a
19fd: dd        mov   a,y
19fe: 1c        asl   a
19ff: fd        mov   y,a
1a00: e8 00     mov   a,#$00
1a02: d6 19 00  mov   $0019+y,a
1a05: d6 1a 00  mov   $001a+y,a
1a08: ee        pop   y
1a09: 6d        push  y
1a0a: dd        mov   a,y
1a0b: 68 08     cmp   a,#$08
1a0d: 90 09     bcc   $1a18
1a0f: 80        setc
1a10: a8 08     sbc   a,#$08
1a12: 48 03     eor   a,#$03
1a14: 60        clrc
1a15: 88 04     adc   a,#$04
1a17: fd        mov   y,a
1a18: fc        inc   y
1a19: 8f 00 02  mov   $02,#$00
1a1c: 80        setc
1a1d: 2b 02     rol   $02
1a1f: dc        dec   y
1a20: d0 fb     bne   $1a1d
1a22: 09 02 03  or    ($03),($02)
1a25: ee        pop   y
1a26: ae        pop   a
1a27: 5f e8 19  jmp   $19e8

1a2a: 2d        push  a
1a2b: 5d        mov   x,a
1a2c: e8 00     mov   a,#$00
1a2e: d5 a0 0a  mov   $0aa0+x,a
1a31: d5 a4 0a  mov   $0aa4+x,a
1a34: c4 02     mov   $02,a
1a36: 3d        inc   x
1a37: 80        setc
1a38: 3c        rol   a
1a39: 1d        dec   x
1a3a: d0 fc     bne   $1a38
1a3c: 48 ff     eor   a,#$ff
1a3e: 25 9f 0a  and   a,$0a9f
1a41: c5 9f 0a  mov   $0a9f,a
1a44: ae        pop   a
1a45: 6f        ret

1a46: eb 00     mov   y,$00
1a48: 6d        push  y
1a49: eb 01     mov   y,$01
1a4b: 6d        push  y
1a4c: c4 00     mov   $00,a
1a4e: 8f 00 01  mov   $01,#$00
1a51: e5 b5 0a  mov   a,$0ab5
1a54: 8d 00     mov   y,#$00
1a56: ad 04     cmp   y,#$04
1a58: f0 18     beq   $1a72
1a5a: 5c        lsr   a
1a5b: fc        inc   y
1a5c: b0 f8     bcs   $1a56
1a5e: 2d        push  a
1a5f: f6 90 04  mov   a,$0490+y
1a62: 64 00     cmp   a,$00
1a64: ae        pop   a
1a65: d0 ef     bne   $1a56
1a67: 2d        push  a
1a68: f6 b5 18  mov   a,$18b5+y
1a6b: 04 01     or    a,$01
1a6d: c4 01     mov   $01,a
1a6f: ae        pop   a
1a70: 2f e4     bra   $1a56
1a72: 60        clrc
1a73: e4 01     mov   a,$01
1a75: f0 01     beq   $1a78
1a77: 80        setc
1a78: ee        pop   y
1a79: cb 01     mov   $01,y
1a7b: ee        pop   y
1a7c: cb 00     mov   $00,y
1a7e: 6f        ret

1a7f: 6d        push  y
1a80: 8d 00     mov   y,#$00
1a82: 68 00     cmp   a,#$00
1a84: f0 04     beq   $1a8a
1a86: 5c        lsr   a
1a87: fc        inc   y
1a88: 90 fc     bcc   $1a86
1a8a: dd        mov   a,y
1a8b: ee        pop   y
1a8c: 6f        ret

1a8d: 3f 9e 18  call  $189e
1a90: 48 ff     eor   a,#$ff
1a92: c5 b5 0a  mov   $0ab5,a
1a95: e8 00     mov   a,#$00
1a97: c4 04     mov   $04,a
1a99: e5 88 0a  mov   a,$0a88
1a9c: c4 00     mov   $00,a
1a9e: e5 87 0a  mov   a,$0a87
1aa1: f0 11     beq   $1ab4
1aa3: 3f 46 1a  call  $1a46
1aa6: 90 1a     bcc   $1ac2
1aa8: 3f 7f 1a  call  $1a7f
1aab: 9c        dec   a
1aac: 5d        mov   x,a
1aad: e4 00     mov   a,$00
1aaf: d5 c0 0a  mov   $0ac0+x,a
1ab2: 7d        mov   a,x
1ab3: 6f        ret

1ab4: e4 00     mov   a,$00
1ab6: c5 c0 0a  mov   $0ac0,a
1ab9: c5 c1 0a  mov   $0ac1,a
1abc: c5 c2 0a  mov   $0ac2,a
1abf: c5 c3 0a  mov   $0ac3,a
1ac2: 6f        ret

1ac3: 4d        push  x
1ac4: 78 00 00  cmp   $00,#$00
1ac7: f0 20     beq   $1ae9
1ac9: cd 64     mov   x,#$64
1acb: 8d 00     mov   y,#$00
1acd: 9e        div   ya,x
1ace: c4 02     mov   $02,a
1ad0: e8 00     mov   a,#$00
1ad2: 9e        div   ya,x
1ad3: eb 00     mov   y,$00
1ad5: cf        mul   ya
1ad6: cb 03     mov   $03,y
1ad8: e4 02     mov   a,$02
1ada: eb 00     mov   y,$00
1adc: cf        mul   ya
1add: ad 00     cmp   y,#$00
1adf: d0 0d     bne   $1aee
1ae1: 60        clrc
1ae2: 84 03     adc   a,$03
1ae4: b0 08     bcs   $1aee
1ae6: 5f f0 1a  jmp   $1af0

1ae9: e8 00     mov   a,#$00
1aeb: 5f f0 1a  jmp   $1af0

1aee: e8 ff     mov   a,#$ff
1af0: ce        pop   x
1af1: 6f        ret

1af2: 3f 9e 18  call  $189e
1af5: 48 ff     eor   a,#$ff
1af7: c5 b5 0a  mov   $0ab5,a
1afa: e5 87 0a  mov   a,$0a87
1afd: f0 12     beq   $1b11
1aff: 3f 46 1a  call  $1a46
1b02: 90 1c     bcc   $1b20
1b04: 3f 7f 1a  call  $1a7f
1b07: fd        mov   y,a
1b08: dc        dec   y
1b09: e5 88 0a  mov   a,$0a88
1b0c: d6 c4 0a  mov   $0ac4+y,a
1b0f: 2f 0f     bra   $1b20
1b11: e5 88 0a  mov   a,$0a88
1b14: c5 c4 0a  mov   $0ac4,a
1b17: c5 c5 0a  mov   $0ac5,a
1b1a: c5 c6 0a  mov   $0ac6,a
1b1d: c5 c7 0a  mov   $0ac7,a
1b20: 6f        ret

1b21: 78 0a 00  cmp   $00,#$0a
1b24: f0 3a     beq   $1b60
1b26: 90 26     bcc   $1b4e
1b28: 2d        push  a
1b29: 80        setc
1b2a: e8 14     mov   a,#$14
1b2c: a4 00     sbc   a,$00
1b2e: c4 01     mov   $01,a
1b30: cf        mul   ya
1b31: ae        pop   a
1b32: cb 02     mov   $02,y
1b34: eb 01     mov   y,$01
1b36: cf        mul   ya
1b37: 60        clrc
1b38: 84 02     adc   a,$02
1b3a: 8d 00     mov   y,#$00
1b3c: cd 0a     mov   x,#$0a
1b3e: 9e        div   ya,x
1b3f: 2d        push  a
1b40: e4 00     mov   a,$00
1b42: 80        setc
1b43: a4 01     sbc   a,$01
1b45: c4 01     mov   $01,a
1b47: ae        pop   a
1b48: 60        clrc
1b49: 84 01     adc   a,$01
1b4b: 5f 60 1b  jmp   $1b60

1b4e: 2d        push  a
1b4f: e4 00     mov   a,$00
1b51: cf        mul   ya
1b52: ae        pop   a
1b53: cb 02     mov   $02,y
1b55: eb 00     mov   y,$00
1b57: cf        mul   ya
1b58: 60        clrc
1b59: 84 02     adc   a,$02
1b5b: 8d 00     mov   y,#$00
1b5d: cd 0a     mov   x,#$0a
1b5f: 9e        div   ya,x
1b60: 6f        ret

1b61: e5 87 0a  mov   a,$0a87
1b64: f0 51     beq   $1bb7
1b66: 3f 9e 18  call  $189e
1b69: 48 ff     eor   a,#$ff
1b6b: c5 b5 0a  mov   $0ab5,a
1b6e: e5 88 0a  mov   a,$0a88
1b71: d0 18     bne   $1b8b
1b73: e5 87 0a  mov   a,$0a87
1b76: 3f 46 1a  call  $1a46
1b79: 90 3b     bcc   $1bb6
1b7b: 3f 7f 1a  call  $1a7f
1b7e: 5d        mov   x,a
1b7f: f5 99 0a  mov   a,$0a99+x
1b82: 2d        push  a
1b83: 7d        mov   a,x
1b84: 9c        dec   a
1b85: 1c        asl   a
1b86: 5d        mov   x,a
1b87: ae        pop   a
1b88: d4 d7     mov   $d7+x,a
1b8a: 6f        ret

1b8b: e9 87 0a  mov   x,$0a87
1b8e: 2d        push  a
1b8f: 7d        mov   a,x
1b90: 3f 46 1a  call  $1a46
1b93: 90 20     bcc   $1bb5
1b95: 3f 7f 1a  call  $1a7f
1b98: 9c        dec   a
1b99: 1c        asl   a
1b9a: 5d        mov   x,a
1b9b: ae        pop   a
1b9c: c4 00     mov   $00,a
1b9e: e3 00 0a  bbs7  $00,$1bab
1ba1: 60        clrc
1ba2: 94 d7     adc   a,$d7+x
1ba4: 90 0c     bcc   $1bb2
1ba6: e8 ff     mov   a,#$ff
1ba8: 5f b2 1b  jmp   $1bb2

1bab: 60        clrc
1bac: 94 d7     adc   a,$d7+x
1bae: b0 02     bcs   $1bb2
1bb0: e8 01     mov   a,#$01
1bb2: d4 d7     mov   $d7+x,a
1bb4: 6f        ret

1bb5: ae        pop   a
1bb6: 6f        ret

1bb7: e5 88 0a  mov   a,$0a88
1bba: f0 21     beq   $1bdd
1bbc: e5 88 0a  mov   a,$0a88
1bbf: cd 00     mov   x,#$00
1bc1: 3f 9c 1b  call  $1b9c
1bc4: e5 88 0a  mov   a,$0a88
1bc7: cd 02     mov   x,#$02
1bc9: 3f 9c 1b  call  $1b9c
1bcc: e5 88 0a  mov   a,$0a88
1bcf: cd 04     mov   x,#$04
1bd1: 3f 9c 1b  call  $1b9c
1bd4: e5 88 0a  mov   a,$0a88
1bd7: cd 06     mov   x,#$06
1bd9: 3f 9c 1b  call  $1b9c
1bdc: 6f        ret

1bdd: e5 9a 0a  mov   a,$0a9a
1be0: c4 d7     mov   $d7,a
1be2: e5 9b 0a  mov   a,$0a9b
1be5: c4 d9     mov   $d9,a
1be7: e5 9c 0a  mov   a,$0a9c
1bea: c4 db     mov   $db,a
1bec: e5 9d 0a  mov   a,$0a9d
1bef: c4 dd     mov   $dd,a
1bf1: 6f        ret

1bf2: c4 f7     mov   $f7,a
1bf4: c4 00     mov   $00,a
1bf6: 8f 00 f4  mov   $f4,#$00
1bf9: 8f 00 f5  mov   $f5,#$00
1bfc: 5f 2f 0e  jmp   $0e2f

1bff: 2d        push  a
1c00: e8 00     mov   a,#$00
1c02: d6 91 04  mov   $0491+y,a
1c05: dd        mov   a,y
1c06: 1c        asl   a
1c07: 5d        mov   x,a
1c08: e8 20     mov   a,#$20
1c0a: d4 d7     mov   $d7+x,a
1c0c: e8 00     mov   a,#$00
1c0e: 3d        inc   x
1c0f: d4 d7     mov   $d7+x,a
1c11: cd 00     mov   x,#$00
1c13: dd        mov   a,y
1c14: 75 6d 04  cmp   a,$046d+x
1c17: d0 12     bne   $1c2b
1c19: e8 ff     mov   a,#$ff
1c1b: d5 6d 04  mov   $046d+x,a
1c1e: 4d        push  x
1c1f: 7d        mov   a,x
1c20: 1c        asl   a
1c21: 5d        mov   x,a
1c22: e8 00     mov   a,#$00
1c24: d5 79 04  mov   $0479+x,a
1c27: d5 7a 04  mov   $047a+x,a
1c2a: ce        pop   x
1c2b: 3d        inc   x
1c2c: c8 0c     cmp   x,#$0c
1c2e: 90 e3     bcc   $1c13
1c30: ae        pop   a
1c31: 6f        ret

1c32: cd 00     mov   x,#$00
1c34: e8 ff     mov   a,#$ff
1c36: d5 61 04  mov   $0461+x,a
1c39: d5 6d 04  mov   $046d+x,a
1c3c: 3d        inc   x
1c3d: c8 0c     cmp   x,#$0c
1c3f: 90 f5     bcc   $1c36
1c41: 8f 00 ce  mov   $ce,#$00
1c44: 8f 26 cf  mov   $cf,#$26
1c47: cd 00     mov   x,#$00
1c49: 8d 00     mov   y,#$00
1c4b: e8 00     mov   a,#$00
1c4d: 8f 95 04  mov   $04,#$95
1c50: 8f 04 05  mov   $05,#$04
1c53: d7 04     mov   ($04)+y,a
1c55: fc        inc   y
1c56: ad 11     cmp   y,#$11
1c58: 90 f9     bcc   $1c53
1c5a: 60        clrc
1c5b: 98 11 04  adc   $04,#$11
1c5e: 98 00 05  adc   $05,#$00
1c61: 8d 00     mov   y,#$00
1c63: 3d        inc   x
1c64: c8 46     cmp   x,#$46
1c66: 90 eb     bcc   $1c53
1c68: 6f        ret

1c69: e8 00     mov   a,#$00
1c6b: c4 d3     mov   $d3,a
1c6d: c4 d1     mov   $d1,a
1c6f: e8 45     mov   a,#$45
1c71: c4 d4     mov   $d4,a
1c73: c4 d2     mov   $d2,a
1c75: e8 00     mov   a,#$00
1c77: c4 00     mov   $00,a
1c79: e8 43     mov   a,#$43
1c7b: c4 01     mov   $01,a
1c7d: e8 00     mov   a,#$00
1c7f: 8d 00     mov   y,#$00
1c81: d7 00     mov   ($00)+y,a
1c83: 78 ff 00  cmp   $00,#$ff
1c86: d0 07     bne   $1c8f
1c88: 78 44 01  cmp   $01,#$44
1c8b: f0 07     beq   $1c94
1c8d: ab 01     inc   $01
1c8f: ab 00     inc   $00
1c91: 5f 81 1c  jmp   $1c81

1c94: 6f        ret

1c95: 3f 9e 18  call  $189e
1c98: 48 ff     eor   a,#$ff
1c9a: c5 b5 0a  mov   $0ab5,a
1c9d: e5 87 0a  mov   a,$0a87
1ca0: f0 1c     beq   $1cbe
1ca2: 3f 46 1a  call  $1a46
1ca5: 90 0d     bcc   $1cb4
1ca7: 3f 7f 1a  call  $1a7f
1caa: 9c        dec   a
1cab: 8d 08     mov   y,#$08
1cad: 76 60 04  cmp   a,$0460+y
1cb0: f0 07     beq   $1cb9
1cb2: fe f9     dbnz  y,$1cad
1cb4: e8 01     mov   a,#$01
1cb6: 5f f2 1b  jmp   $1bf

1cb9: e8 02     mov   a,#$02
1cbb: 5f f2 1b  jmp   $1bf2

1cbe: 6f        ret

1cbf: fa ce cc  mov   ($cc),($ce)
1cc2: fa cf cd  mov   ($cd),($cf)
1cc5: cd 00     mov   x,#$00
1cc7: 8d 00     mov   y,#$00
1cc9: 8f 95 04  mov   $04,#$95
1ccc: 8f 04 05  mov   $05,#$04
1ccf: f7 04     mov   a,($04)+y
1cd1: f0 11     beq   $1ce4
1cd3: 60        clrc
1cd4: 98 11 04  adc   $04,#$11
1cd7: 98 00 05  adc   $05,#$00
1cda: 3d        inc   x
1cdb: c8 46     cmp   x,#$46
1cdd: 90 f0     bcc   $1ccf
1cdf: e8 02     mov   a,#$02
1ce1: 5f 24 1d  jmp   $1d24

1ce4: e5 87 0a  mov   a,$0a87
1ce7: d7 04     mov   ($04)+y,a
1ce9: e9 88 0a  mov   x,$0a88
1cec: c9 b6 0a  mov   $0ab6,x
1cef: fa cc 00  mov   ($00),($cc)
1cf2: fa cd 01  mov   ($01),($cd)
1cf5: e4 00     mov   a,$00
1cf7: fc        inc   y
1cf8: d7 04     mov   ($04)+y,a
1cfa: e4 01     mov   a,$01
1cfc: fc        inc   y
1cfd: d7 04     mov   ($04)+y,a
1cff: 60        clrc
1d00: f6 87 0a  mov   a,$0a87+y
1d03: 84 00     adc   a,$00
1d05: c4 00     mov   $00,a
1d07: f6 88 0a  mov   a,$0a88+y
1d0a: 84 01     adc   a,$01
1d0c: c4 01     mov   $01,a
1d0e: 1d        dec   x
1d0f: d0 e4     bne   $1cf5
1d11: fa 00 ce  mov   ($ce),($00)
1d14: fa 01 cf  mov   ($cf),($01)
1d17: fa cc 0b  mov   ($0b),($cc)
1d1a: fa cd 0c  mov   ($0c),($cd)
1d1d: e8 01     mov   a,#$01
1d1f: c5 b7 0a  mov   $0ab7,a
1d22: e8 01     mov   a,#$01
1d24: c4 f7     mov   $f7,a
1d26: 6f        ret

1d27: e9 87 0a  mov   x,$0a87
1d2a: 7d        mov   a,x
1d2b: 8d 04     mov   y,#$04
1d2d: cf        mul   ya
1d2e: 8f 00 00  mov   $00,#$00
1d31: 8f 43 01  mov   $01,#$43
1d34: 60        clrc
1d35: 7a 00     addw  ya,$00
1d37: da 00     movw  $00,ya
1d39: 8d 01     mov   y,#$01
1d3b: f7 00     mov   a,($00)+y
1d3d: d0 5e     bne   $1d9d
1d3f: dc        dec   y
1d40: e4 d3     mov   a,$d3
1d42: d7 00     mov   ($00)+y,a
1d44: c4 d1     mov   $d1,a
1d46: e4 d4     mov   a,$d4
1d48: fc        inc   y
1d49: d7 00     mov   ($00)+y,a
1d4b: c4 d2     mov   $d2,a
1d4d: c9 bf 0a  mov   $0abf,x
1d50: 60        clrc
1d51: e4 d3     mov   a,$d3
1d53: 85 8f 0a  adc   a,$0a8f
1d56: fc        inc   y
1d57: d7 00     mov   ($00)+y,a
1d59: e4 d4     mov   a,$d4
1d5b: 85 90 0a  adc   a,$0a90
1d5e: fc        inc   y
1d5f: d7 00     mov   ($00)+y,a
1d61: 60        clrc
1d62: e5 8d 0a  mov   a,$0a8d
1d65: 84 d3     adc   a,$d3
1d67: c4 d3     mov   $d3,a
1d69: e5 8e 0a  mov   a,$0a8e
1d6c: 84 d4     adc   a,$d4
1d6e: c4 d4     mov   $d4,a
1d70: 7d        mov   a,x
1d71: 8d 06     mov   y,#$06
1d73: cf        mul   ya
1d74: 8f 00 00  mov   $00,#$00
1d77: 8f 40 01  mov   $01,#$40
1d7a: 60        clrc
1d7b: 7a 00     addw  ya,$00
1d7d: da 00     movw  $00,ya
1d7f: 8d 00     mov   y,#$00
1d81: cd 00     mov   x,#$00
1d83: f5 87 0a  mov   a,$0a87+x
1d86: d7 00     mov   ($00)+y,a
1d88: 3d        inc   x
1d89: fc        inc   y
1d8a: ad 06     cmp   y,#$06
1d8c: 90 f5     bcc   $1d83
1d8e: fa d1 0b  mov   ($0b),($d1)
1d91: fa d2 0c  mov   ($0c),($d2)
1d94: e8 01     mov   a,#$01
1d96: c5 b8 0a  mov   $0ab8,a
1d99: 8f 01 f7  mov   $f7,#$01
1d9c: 6f        ret

1d9d: 8f 02 f7  mov   $f7,#$02
1da0: 6f        ret

1da1: e8 00     mov   a,#$00
1da3: ec 87 0a  mov   y,$0a87
1da6: 80        setc
1da7: 3c        rol   a
1da8: fe fd     dbnz  y,$1da7
1daa: ec 88 0a  mov   y,$0a88
1dad: d0 05     bne   $1db4
1daf: 05 b9 0a  or    a,$0ab9
1db2: 2f 05     bra   $1db9
1db4: 48 ff     eor   a,#$ff
1db6: 25 b9 0a  and   a,$0ab9
1db9: c5 b9 0a  mov   $0ab9,a
1dbc: 6f        ret

1dbd: 3f 9e 18  call  $189e
1dc0: 48 ff     eor   a,#$ff
1dc2: c5 b5 0a  mov   $0ab5,a
1dc5: e5 87 0a  mov   a,$0a87
1dc8: 3f 46 1a  call  $1a46
1dcb: 90 0a     bcc   $1dd7
1dcd: 3f 7f 1a  call  $1a7f
1dd0: fd        mov   y,a
1dd1: dc        dec   y
1dd2: e8 01     mov   a,#$01
1dd4: d6 ba 0a  mov   $0aba+y,a
1dd7: 6f        ret

1dd8: cd 00     mov   x,#$00
1dda: 8d 00     mov   y,#$00
1ddc: 8f 95 04  mov   $04,#$95
1ddf: 8f 04 05  mov   $05,#$04
1de2: f7 04     mov   a,($04)+y
1de4: f0 0c     beq   $1df2
1de6: 60        clrc
1de7: 98 11 04  adc   $04,#$11
1dea: 98 00 05  adc   $05,#$00
1ded: 3d        inc   x
1dee: c8 46     cmp   x,#$46
1df0: 90 f0     bcc   $1de2
1df2: 80        setc
1df3: b8 11 04  sbc   $04,#$11
1df6: b8 00 05  sbc   $05,#$00
1df9: e8 00     mov   a,#$00
1dfb: 8d 10     mov   y,#$10
1dfd: d7 04     mov   ($04)+y,a
1dff: dc        dec   y
1e00: 10 fb     bpl   $1dfd
1e02: fa cc ce  mov   ($ce),($cc)
1e05: fa cd cf  mov   ($cf),($cd)
1e08: 6f        ret

1e09: fa d1 d3  mov   ($d3),($d1)
1e0c: fa d2 d4  mov   ($d4),($d2)
1e0f: e5 bf 0a  mov   a,$0abf
1e12: 8d 04     mov   y,#$04
1e14: cf        mul   ya
1e15: 8f 00 00  mov   $00,#$00
1e18: 8f 43 01  mov   $01,#$43
1e1b: 60        clrc
1e1c: 7a 00     addw  ya,$00
1e1e: da 00     movw  $00,ya
1e20: 8d 03     mov   y,#$03
1e22: e8 00     mov   a,#$00
1e24: d7 00     mov   ($00)+y,a
1e26: fe fc     dbnz  y,$1e24
1e28: d7 00     mov   ($00)+y,a
1e2a: e5 bf 0a  mov   a,$0abf
1e2d: 8d 06     mov   y,#$06
1e2f: cf        mul   ya
1e30: 8f 00 00  mov   $00,#$00
1e33: 8f 40 01  mov   $01,#$40
1e36: 60        clrc
1e37: 7a 00     addw  ya,$00
1e39: da 00     movw  $00,ya
1e3b: 8d 05     mov   y,#$05
1e3d: e8 00     mov   a,#$00
1e3f: d7 00     mov   ($00)+y,a
1e41: fe fc     dbnz  y,$1e3f
1e43: d7 00     mov   ($00)+y,a
1e45: 6f        ret

1e46: e5 87 0a  mov   a,$0a87
1e49: c5 c8 0a  mov   $0ac8,a
1e4c: 6f        ret

; vcmd fb - set quantization
1e4d: 2d        push  a
1e4e: 9f        xcn   a
1e4f: 28 07     and   a,#$07
1e51: fd        mov   y,a
1e52: f6 9d 25  mov   a,$259d+y		; note dur%'s
1e55: d5 0d 02  mov   $020d+x,a
1e58: ae        pop   a
1e59: 28 0f     and   a,#$0f
1e5b: fd        mov   y,a
1e5c: f6 a5 25  mov   a,$25a5+y		; per-note velocity values
1e5f: d5 24 02  mov   $0224+x,a
1e62: 6f        ret

; vcmd e0 - set instrument
1e63: d5 25 02  mov   $0225+x,a
1e66: fd        mov   y,a
1e67: 10 06     bpl   $1e6f
1e69: 80        setc
1e6a: a8 ca     sbc   a,#$ca
1e6c: 60        clrc
1e6d: 84 46     adc   a,$46
1e6f: 8d 06     mov   y,#$06
1e71: cf        mul   ya
1e72: da 14     movw  $14,ya
1e74: 60        clrc
1e75: 98 00 14  adc   $14,#$00
1e78: 98 40 15  adc   $15,#$40
1e7b: e4 18     mov   a,$18
1e7d: 24 36     and   a,$36
1e7f: d0 5f     bne   $1ee0
1e81: 4d        push  x
1e82: 7d        mov   a,x
1e83: 5c        lsr   a
1e84: 68 08     cmp   a,#$08
1e86: 90 0d     bcc   $1e95
1e88: 80        setc
1e89: a8 08     sbc   a,#$08
1e8b: 48 03     eor   a,#$03
1e8d: 60        clrc
1e8e: 88 04     adc   a,#$04
1e90: 1c        asl   a
1e91: 5d        mov   x,a
1e92: 5f a8 1e  jmp   $1ea8

1e95: 68 04     cmp   a,#$04
1e97: 90 0f     bcc   $1ea8
1e99: 80        setc
1e9a: a8 04     sbc   a,#$04
1e9c: 48 03     eor   a,#$03
1e9e: fd        mov   y,a
1e9f: f6 69 04  mov   a,$0469+y
1ea2: 30 04     bmi   $1ea8
1ea4: ce        pop   x
1ea5: 5f e0 1e  jmp   $1ee0

1ea8: 7d        mov   a,x
1ea9: 9f        xcn   a
1eaa: 5c        lsr   a
1eab: 08 04     or    a,#$04
1ead: 5d        mov   x,a
1eae: 8d 00     mov   y,#$00
1eb0: f7 14     mov   a,($14)+y
1eb2: 10 0f     bpl   $1ec3
1eb4: 28 1f     and   a,#$1f
1eb6: 38 20 37  and   $37,#$20
1eb9: 0e 37 00  tset1 $0037
1ebc: 09 36 38  or    ($38),($36)
1ebf: dd        mov   a,y
1ec0: 5f ca 1e  jmp   $1eca

1ec3: e4 36     mov   a,$36
1ec5: 4e 38 00  tclr1 $0038
1ec8: f7 14     mov   a,($14)+y
1eca: d8 f2     mov   $f2,x
1ecc: c4 f3     mov   $f3,a
1ece: 3d        inc   x
1ecf: fc        inc   y
1ed0: ad 04     cmp   y,#$04
1ed2: d0 f4     bne   $1ec8
1ed4: ce        pop   x
1ed5: f7 14     mov   a,($14)+y
1ed7: d5 3d 02  mov   $023d+x,a
1eda: fc        inc   y
1edb: f7 14     mov   a,($14)+y
1edd: d5 3c 02  mov   $023c+x,a
1ee0: 6f        ret

; vcmd e1 - pan
1ee1: d5 e5 03  mov   $03e5+x,a
1ee4: 28 1f     and   a,#$1f
1ee6: d5 b5 03  mov   $03b5+x,a
1ee9: e8 00     mov   a,#$00
1eeb: d5 b4 03  mov   $03b4+x,a
1eee: 6f        ret

; vcmd e2 - pan fade
1eef: d4 83     mov   $83+x,a
1ef1: 2d        push  a
1ef2: 3f 36 14  call  $1436
1ef5: d5 e4 03  mov   $03e4+x,a
1ef8: 80        setc
1ef9: b5 b5 03  sbc   a,$03b5+x
1efc: ce        pop   x
1efd: 3f 8e 21  call  $218e
1f00: d5 cc 03  mov   $03cc+x,a
1f03: dd        mov   a,y
1f04: d5 cd 03  mov   $03cd+x,a
1f07: 6f        ret

; vcmd e3 - vibrato on
1f08: d5 f4 02  mov   $02f4+x,a
1f0b: 3f 36 14  call  $1436
1f0e: d5 dd 02  mov   $02dd+x,a
1f11: 3f 36 14  call  $1436
; vcmd e4 - vibrato off
1f14: d4 b3     mov   $b3+x,a
1f16: d5 0d 03  mov   $030d+x,a
1f19: e8 00     mov   a,#$00
1f1b: d5 f5 02  mov   $02f5+x,a
1f1e: 6f        ret

; vcmd f0 - vibrato fade
1f1f: d5 f5 02  mov   $02f5+x,a
1f22: 2d        push  a
1f23: 8d 00     mov   y,#$00
1f25: f4 b3     mov   a,$b3+x
1f27: ce        pop   x
1f28: 9e        div   ya,x
1f29: f8 33     mov   x,$33
1f2b: d5 0c 03  mov   $030c+x,a
1f2e: 6f        ret

; vcmd e5 - master volume
1f2f: e8 00     mov   a,#$00
1f31: da 3f     movw  $3f,ya
1f33: 6f        ret

; vcmd e6 - master volume fade
1f34: c4 41     mov   $41,a
1f36: 3f 36 14  call  $1436
1f39: c4 42     mov   $42,a
1f3b: 80        setc
1f3c: a4 40     sbc   a,$40
1f3e: f8 41     mov   x,$41
1f40: 3f 8e 21  call  $218e
1f43: da 43     movw  $43,ya
1f45: 6f        ret

; vcmd e7 - tempo
1f46: 4d        push  x
1f47: e4 cb     mov   a,$cb
1f49: 1c        asl   a
1f4a: 5d        mov   x,a
1f4b: e8 00     mov   a,#$00
1f4d: d4 d6     mov   $d6+x,a
1f4f: dd        mov   a,y
1f50: d4 d7     mov   $d7+x,a
1f52: 7d        mov   a,x
1f53: 5c        lsr   a
1f54: 5d        mov   x,a
1f55: dd        mov   a,y
1f56: d5 9a 0a  mov   $0a9a+x,a
1f59: ce        pop   x
1f5a: 6f        ret

; vcmd e8 - tempo fade
1f5b: 2d        push  a
1f5c: e4 cb     mov   a,$cb
1f5e: 1c        asl   a
1f5f: 5d        mov   x,a
1f60: ae        pop   a
1f61: d4 de     mov   $de+x,a
1f63: 4d        push  x
1f64: 3f 36 14  call  $1436
1f67: ce        pop   x
1f68: d4 df     mov   $df+x,a
1f6a: 80        setc
1f6b: b4 d7     sbc   a,$d7+x
1f6d: f4 de     mov   a,$de+x
1f6f: 4d        push  x
1f70: 5d        mov   x,a
1f71: 3f 8e 21  call  $218e
1f74: ce        pop   x
1f75: cb 00     mov   $00,y
1f77: 2d        push  a
1f78: e4 00     mov   a,$00
1f7a: d4 e7     mov   $e7+x,a
1f7c: ae        pop   a
1f7d: d4 e6     mov   $e6+x,a
1f7f: 6f        ret

; vcmd e9 - global transpose
1f80: c4 3e     mov   $3e,a
1f82: 6f        ret

; vcmd ea - per-voice transpose
1f83: d5 54 03  mov   $0354+x,a
1f86: 6f        ret

; vcmd eb - tremolo on
1f87: d5 3c 03  mov   $033c+x,a
1f8a: 3f 36 14  call  $1436
1f8d: d5 25 03  mov   $0325+x,a
1f90: 3f 36 14  call  $1436
; vcmd ec - tremolo off
1f93: d5 45 04  mov   $0445+x,a
1f96: 6f        ret

; vcmd f1 - pitch envelope (release)
1f97: e8 01     mov   a,#$01
1f99: 5f 9e 1f  jmp   $1f9e

; vcmd f2 - pitch envelope (attack)
1f9c: e8 00     mov   a,#$00
1f9e: d5 c4 02  mov   $02c4+x,a
1fa1: dd        mov   a,y
1fa2: d5 ad 02  mov   $02ad+x,a
1fa5: 3f 36 14  call  $1436
1fa8: d5 ac 02  mov   $02ac+x,a
1fab: 3f 36 14  call  $1436
1fae: d5 c5 02  mov   $02c5+x,a
1fb1: 6f        ret

; vcmd f3 - pitch envelope off
1fb2: d5 ac 02  mov   $02ac+x,a
1fb5: 6f        ret

; vcmd ed - volume
1fb6: d5 6d 03  mov   $036d+x,a
1fb9: e8 00     mov   a,#$00
1fbb: d5 6c 03  mov   $036c+x,a
1fbe: 6f        ret

; vcmd ee - volume fade
1fbf: d4 82     mov   $82+x,a
1fc1: 2d        push  a
1fc2: 3f 36 14  call  $1436
1fc5: d5 9c 03  mov   $039c+x,a
1fc8: 80        setc
1fc9: b5 6d 03  sbc   a,$036d+x
1fcc: ce        pop   x
1fcd: 3f 8e 21  call  $218e
1fd0: d5 84 03  mov   $0384+x,a
1fd3: dd        mov   a,y
1fd4: d5 85 03  mov   $0385+x,a
1fd7: 6f        ret

; vcmd f4 - tuning
1fd8: d5 2d 04  mov   $042d+x,a
1fdb: 6f        ret

; vcmd ef - call subroutine
1fdc: d5 6c 02  mov   $026c+x,a
1fdf: 3f 36 14  call  $1436
1fe2: d5 6d 02  mov   $026d+x,a
1fe5: 3f 36 14  call  $1436
1fe8: d4 6a     mov   $6a+x,a
1fea: f4 19     mov   a,$19+x
1fec: d5 54 02  mov   $0254+x,a
1fef: f4 1a     mov   a,$1a+x
1ff1: d5 55 02  mov   $0255+x,a
1ff4: f5 6c 02  mov   a,$026c+x
1ff7: d4 19     mov   $19+x,a
1ff9: f5 6d 02  mov   a,$026d+x
1ffc: d4 1a     mov   $1a+x,a
1ffe: 6f        ret

; vcmd f5 - echo vbits/volume
1fff: c4 00     mov   $00,a
2001: 8f 00 01  mov   $01,#$00
2004: e4 cb     mov   a,$cb
2006: 8d 00     mov   y,#$00
2008: 76 61 04  cmp   a,$0461+y
200b: 60        clrc
200c: d0 02     bne   $2010
200e: 4b 00     lsr   $00
2010: 6b 01     ror   $01
2012: fc        inc   y
2013: ad 08     cmp   y,#$08
2015: 90 f1     bcc   $2008
2017: 09 01 39  or    ($39),($01)
201a: 8f 00 01  mov   $01,#$00
201d: 8f 00 02  mov   $02,#$00
2020: 76 61 04  cmp   a,$0461+y
2023: 60        clrc
2024: d0 02     bne   $2028
2026: 4b 00     lsr   $00
2028: 2b 01     rol   $01
202a: fc        inc   y
202b: ad 0c     cmp   y,#$0c
202d: 90 f1     bcc   $2020
202f: 2d        push  a
2030: e4 01     mov   a,$01
2032: 9f        xcn   a
2033: c4 01     mov   $01,a
2035: ae        pop   a
2036: 8f 00 00  mov   $00,#$00
2039: 8d 08     mov   y,#$08
203b: 76 61 04  cmp   a,$0461+y
203e: 60        clrc
203f: d0 04     bne   $2045
2041: 8f 01 02  mov   $02,#$01
2044: 80        setc
2045: 2b 00     rol   $00
2047: fc        inc   y
2048: ad 0c     cmp   y,#$0c
204a: 90 ef     bcc   $203b
204c: e4 00     mov   a,$00
204e: 9f        xcn   a
204f: 48 ff     eor   a,#$ff
2051: c4 00     mov   $00,a
2053: 29 00 39  and   ($39),($00)
2056: 09 01 39  or    ($39),($01)
2059: 78 00 02  cmp   $02,#$00
205c: f0 07     beq   $2065
205e: 3f f2 20  call  $20f2
2061: b0 16     bcs   $2079
2063: 90 03     bcc   $2068
2065: fa 39 d5  mov   ($d5),($39)
2068: 3f 36 14  call  $1436
206b: e8 00     mov   a,#$00
206d: da 47     movw  $47,ya
206f: 3f 36 14  call  $1436
2072: e8 00     mov   a,#$00
2074: da 49     movw  $49,ya
2076: b2 37     clr5  $37
2078: 6f        ret

2079: 3f 36 14  call  $1436
207c: 3f 36 14  call  $1436
207f: b2 37     clr5  $37
2081: 6f        ret

; vcmd f8 - echo volume fade
2082: c8 10     cmp   x,#$10
2084: 90 0f     bcc   $2095
2086: 2d        push  a
2087: 3f f2 20  call  $20f2
208a: 90 08     bcc   $2094
208c: ae        pop   a
208d: 3f 36 14  call  $1436
2090: 3f 36 14  call  $1436
2093: 6f        ret

2094: ae        pop   a
2095: c4 4f     mov   $4f,a
2097: 3f 36 14  call  $1436
209a: c4 50     mov   $50,a
209c: 80        setc
209d: a4 48     sbc   a,$48
209f: f8 4f     mov   x,$4f
20a1: 3f 8e 21  call  $218e
20a4: da 4b     movw  $4b,ya
20a6: 3f 36 14  call  $1436
20a9: c4 51     mov   $51,a
20ab: 80        setc
20ac: a4 4a     sbc   a,$4a
20ae: f8 4f     mov   x,$4f
20b0: 3f 8e 21  call  $218e
20b3: da 4d     movw  $4d,ya
20b5: 6f        ret

; vcmd f6 - disable echo
20b6: da 47     movw  $47,ya
20b8: da 49     movw  $49,ya
20ba: a2 37     set5  $37
20bc: 6f        ret

; vcmd f7 - set echo params
20bd: c8 10     cmp   x,#$10
20bf: 90 0f     bcc   $20d0
20c1: 2d        push  a
20c2: 3f f2 20  call  $20f2
20c5: 90 08     bcc   $20cf
20c7: ae        pop   a
20c8: 3f 36 14  call  $1436
20cb: 3f 36 14  call  $1436
20ce: 6f        ret

20cf: ae        pop   a
20d0: 3f 07 21  call  $2107
20d3: 3f 36 14  call  $1436
20d6: c4 3d     mov   $3d,a
20d8: 3f 36 14  call  $1436
20db: 8d 08     mov   y,#$08
20dd: cf        mul   ya
20de: 5d        mov   x,a
20df: 8d 0f     mov   y,#$0f
20e1: f5 44 25  mov   a,$2544+x
20e4: 3f 68 10  call  $1068
20e7: 3d        inc   x
20e8: dd        mov   a,y
20e9: 60        clrc
20ea: 88 10     adc   a,#$10
20ec: fd        mov   y,a
20ed: 10 f2     bpl   $20e1
20ef: f8 33     mov   x,$33
20f1: 6f        ret

20f2: 6d        push  y
20f3: 8d 00     mov   y,#$00
20f5: f6 61 04  mov   a,$0461+y
20f8: 68 ff     cmp   a,#$ff
20fa: d0 08     bne   $2104
20fc: fc        inc   y
20fd: ad 08     cmp   y,#$08
20ff: 90 f4     bcc   $20f5
2101: ee        pop   y
2102: 60        clrc
2103: 6f        ret

2104: ee        pop   y
2105: 80        setc
2106: 6f        ret

2107: c4 3c     mov   $3c,a
2109: 8d 7d     mov   y,#$7d
210b: cb f2     mov   $f2,y
210d: e4 f3     mov   a,$f3
210f: 64 3c     cmp   a,$3c
2111: f0 28     beq   $213b
2113: 28 0f     and   a,#$0f
2115: 48 ff     eor   a,#$ff
2117: f3 3b 03  bbc7  $3b,$211d
211a: 60        clrc
211b: 84 3b     adc   a,$3b
211d: c4 3b     mov   $3b,a
211f: 8d 04     mov   y,#$04
2121: f6 63 25  mov   a,$2563+y
2124: c4 f2     mov   $f2,a
2126: 8f 00 f3  mov   $f3,#$00
2129: fe f6     dbnz  y,$2121
212b: e4 37     mov   a,$37
212d: 08 20     or    a,#$20
212f: 8d 6c     mov   y,#$6c
2131: 3f 68 10  call  $1068
2134: e4 3c     mov   a,$3c
2136: 8d 7d     mov   y,#$7d
2138: 3f 68 10  call  $1068
213b: 1c        asl   a
213c: 1c        asl   a
213d: 1c        asl   a
213e: 48 ff     eor   a,#$ff
2140: 80        setc
2141: 88 ff     adc   a,#$ff
2143: 8d 6d     mov   y,#$6d
2145: 5f 68 10  jmp   $1068

; vcmd fa - set perc patch base
2148: c4 46     mov   $46,a
214a: 6f        ret

214b: f4 9a     mov   a,$9a+x
214d: d0 33     bne   $2182
214f: e7 19     mov   a,($19+x)
2151: 68 f9     cmp   a,#$f9
2153: d0 2d     bne   $2182
2155: 3f 38 14  call  $1438
2158: 3f 36 14  call  $1436
; vcmd f9 - pitch slide
215b: d4 9b     mov   $9b+x,a
215d: 3f 36 14  call  $1436
2160: d4 9a     mov   $9a+x,a
2162: 3f 36 14  call  $1436
2165: 60        clrc
2166: 84 3e     adc   a,$3e
2168: 95 54 03  adc   a,$0354+x
216b: 28 7f     and   a,#$7f
216d: d5 2c 04  mov   $042c+x,a
2170: 80        setc
2171: b5 fd 03  sbc   a,$03fd+x
2174: fb 9a     mov   y,$9a+x
2176: 6d        push  y
2177: ce        pop   x
2178: 3f 8e 21  call  $218e
217b: d5 14 04  mov   $0414+x,a
217e: dd        mov   a,y
217f: d5 15 04  mov   $0415+x,a
2182: 6f        ret

2183: f5 fd 03  mov   a,$03fd+x
2186: c4 11     mov   $11,a
2188: f5 fc 03  mov   a,$03fc+x
218b: c4 10     mov   $10,a
218d: 6f        ret

218e: ed        notc
218f: 6b 12     ror   $12
2191: 10 03     bpl   $2196
2193: 48 ff     eor   a,#$ff
2195: bc        inc   a
2196: 8d 00     mov   y,#$00
2198: 9e        div   ya,x
2199: 2d        push  a
219a: e8 00     mov   a,#$00
219c: 9e        div   ya,x
219d: ee        pop   y
219e: f8 33     mov   x,$33
21a0: f3 12 06  bbc7  $12,$21a9
21a3: da 14     movw  $14,ya
21a5: ba 0e     movw  ya,$0e
21a7: 9a 14     subw  ya,$14
21a9: 6f        ret

; vcmd dispatch table
21aa: dw $1e63 ; e0 - set instrument
21ac: dw $1ee1 ; e1 - pan
21ae: dw $1eef ; e2 - pan fade
21b0: dw $1f08 ; e3 - vibrato on
21b2: dw $1f14 ; e4 - vibrato off
21b4: dw $1f2f ; e5 - master volume
21b6: dw $1f34 ; e6 - master volume fade
21b8: dw $1f46 ; e7 - tempo
21ba: dw $1f5b ; e8 - tempo fade
21bc: dw $1f80 ; e9 - per-voice transpose
21be: dw $1f83 ; ea - global transpose
21c0: dw $1f87 ; eb - tremolo on
21c2: dw $1f93 ; ec - tremolo off
21c4: dw $1fb6 ; ed - volume
21c6: dw $1fbf ; ee - volume fade
21c8: dw $1fdc ; ef - call subroutine
21ca: dw $1f1f ; f0 - vibrato fade
21cc: dw $1f97 ; f1 - pitch envelope (release)
21ce: dw $1f9c ; f2 - pitch envelope (attack)
21d0: dw $1fb2 ; f3 - pitch envelope off
21d2: dw $1fd8 ; f4 - tuning
21d4: dw $1fff ; f5 - echo vbits/volume
21d6: dw $20b6 ; f6 - disable echo
21d8: dw $20bd ; f7 - set echo params
21da: dw $2082 ; f8 - echo volume fade
21dc: dw $215b ; f9 - pitch slide
21de: dw $2148 ; fa - set perc patch base
21e0: dw $1e4d ; fb - set quantization

; vcmd lengths
21e2: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
21fa: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ff
22f2: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
22fa: db $03,$03,$01,$01		 ; f8-fb

21fe: f4 82     mov   a,$82+x
2200: f0 2c     beq   $222e
2202: 09 36 45  or    ($45),($36)
2205: 9b 82     dec   $82+x
2207: d0 0b     bne   $2214
2209: e8 00     mov   a,#$00
220b: d5 6c 03  mov   $036c+x,a
220e: f5 9c 03  mov   a,$039c+x
2211: 5f 24 22  jmp   $2224

2214: 60        clrc
2215: f5 6c 03  mov   a,$036c+x
2218: 95 84 03  adc   a,$0384+x
221b: d5 6c 03  mov   $036c+x,a
221e: f5 6d 03  mov   a,$036d+x
2221: 95 85 03  adc   a,$0385+x
2224: d5 6d 03  mov   $036d+x,a
2227: 4d        push  x
2228: 2d        push  a
2229: 7d        mov   a,x
222a: 5c        lsr   a
222b: 5d        mov   x,a
222c: ae        pop   a
222d: ce        pop   x
222e: f5 45 04  mov   a,$0445+x
2231: fd        mov   y,a
2232: f0 2c     beq   $2260
2234: f5 3c 03  mov   a,$033c+x
2237: 75 44 04  cmp   a,$0444+x
223a: d0 1d     bne   $2259
223c: 09 36 45  or    ($45),($36)
223f: f5 24 03  mov   a,$0324+x
2242: 10 08     bpl   $224c
2244: fc        inc   y
2245: d0 05     bne   $224c
2247: e8 80     mov   a,#$80
2249: 5f 50 22  jmp   $2250

224c: 60        clrc
224d: 95 25 03  adc   a,$0325+x
2250: d5 24 03  mov   $0324+x,a
2253: 3f f6 24  call  $24f6
2256: 5f 65 22  jmp   $2265

2259: f5 44 04  mov   a,$0444+x
225c: bc        inc   a
225d: d5 44 04  mov   $0444+x,a
2260: e8 ff     mov   a,#$ff
2262: 3f 05 25  call  $2505
2265: f4 83     mov   a,$83+x
2267: f0 25     beq   $228e
2269: 09 36 45  or    ($45),($36)
226c: 9b 83     dec   $83+x
226e: d0 0b     bne   $227b
2270: e8 00     mov   a,#$00
2272: d5 b4 03  mov   $03b4+x,a
2275: f5 e4 03  mov   a,$03e4+x
2278: 5f 8b 22  jmp   $228b

227b: 60        clrc
227c: f5 b4 03  mov   a,$03b4+x
227f: 95 cc 03  adc   a,$03cc+x
2282: d5 b4 03  mov   $03b4+x,a
2285: f5 b5 03  mov   a,$03b5+x
2288: 95 cd 03  adc   a,$03cd+x
228b: d5 b5 03  mov   $03b5+x,a
228e: e4 36     mov   a,$36
2290: 24 45     and   a,$45
2292: d0 03     bne   $2297
2294: 5f 2a 23  jmp   $232a

2297: f5 b4 03  mov   a,$03b4+x
229a: fd        mov   y,a
229b: f5 b5 03  mov   a,$03b5+x
229e: 4d        push  x
229f: 2d        push  a
22a0: 6d        push  y
22a1: 7d        mov   a,x
22a2: 5c        lsr   a
22a3: 5d        mov   x,a
22a4: f5 61 04  mov   a,$0461+x
22a7: 5d        mov   x,a
22a8: f5 c4 0a  mov   a,$0ac4+x
22ab: c4 00     mov   $00,a
22ad: ee        pop   y
22ae: ae        pop   a
22af: 3f 21 1b  call  $1b21
22b2: ce        pop   x
22b3: 6d        push  y
22b4: fd        mov   y,a
22b5: ae        pop   a
22b6: da 10     movw  $10,ya
22b8: 4d        push  x
22b9: 7d        mov   a,x
22ba: 5c        lsr   a
22bb: 68 08     cmp   a,#$08
22bd: 90 0d     bcc   $22cc
22bf: 80        setc
22c0: a8 08     sbc   a,#$08
22c2: 48 03     eor   a,#$03
22c4: 60        clrc
22c5: 88 04     adc   a,#$04
22c7: 1c        asl   a
22c8: 5d        mov   x,a
22c9: 5f df 22  jmp   $22df

22cc: 68 04     cmp   a,#$04
22ce: 90 0f     bcc   $22df
22d0: 80        setc
22d1: a8 04     sbc   a,#$04
22d3: 48 03     eor   a,#$03
22d5: fd        mov   y,a
22d6: f6 69 04  mov   a,$0469+y
22d9: 30 04     bmi   $22df
22db: ce        pop   x
22dc: 5f 2a 23  jmp   $232a

22df: 7d        mov   a,x
22e0: ce        pop   x
22e1: 9f        xcn   a
22e2: 5c        lsr   a
22e3: c4 12     mov   $12,a
22e5: eb 11     mov   y,$11
22e7: f6 30 25  mov   a,$2530+y
22ea: 80        setc
22eb: b6 2f 25  sbc   a,$252f+y
22ee: eb 10     mov   y,$10
22f0: cf        mul   ya
22f1: e5 c8 0a  mov   a,$0ac8
22f4: d0 04     bne   $22fa
22f6: dd        mov   a,y
22f7: 5f ff 22  jmp   $22ff

22fa: e8 00     mov   a,#$00
22fc: 8f 0a 11  mov   $11,#$0a
22ff: eb 11     mov   y,$11
2301: 60        clrc
2302: 96 2f 25  adc   a,$252f+y
2305: fd        mov   y,a
2306: f5 9d 03  mov   a,$039d+x
2309: cf        mul   ya
230a: f5 e5 03  mov   a,$03e5+x
230d: 1c        asl   a
230e: 13 12 01  bbc0  $12,$2312
2311: 1c        asl   a
2312: dd        mov   a,y
2313: 90 03     bcc   $2318
2315: 48 ff     eor   a,#$ff
2317: bc        inc   a
2318: eb 12     mov   y,$12
231a: 3f 60 10  call  $1060
231d: 8d 14     mov   y,#$14
231f: e8 00     mov   a,#$00
2321: 9a 10     subw  ya,$10
2323: da 10     movw  $10,ya
2325: ab 12     inc   $12
2327: 33 12 bb  bbc1  $12,$22e5
232a: 6f        ret

232b: f4 53     mov   a,$53+x
232d: d0 03     bne   $2332
232f: 5f b7 23  jmp   $23b7

2332: 9b 53     dec   $53+x
2334: f0 05     beq   $233b
2336: e8 02     mov   a,#$02
2338: de 52 7c  cbne  $52+x,$23b7
233b: f4 6a     mov   a,$6a+x
233d: c4 17     mov   $17,a
233f: f4 19     mov   a,$19+x
2341: fb 1a     mov   y,$1a+x
2343: da 14     movw  $14,ya
2345: 8d 00     mov   y,#$00
2347: f7 14     mov   a,($14)+y
2349: f0 26     beq   $2371
234b: 30 0e     bmi   $235b
234d: 68 64     cmp   a,#$64		; 
234f: 90 04     bcc   $2355
2351: 68 6a     cmp   a,#$6a		; 
2353: 90 46     bcc   $239b
2355: fc        inc   y
2356: 30 43     bmi   $239b
2358: 5f 47 23  jmp   $2347

235b: 68 c8     cmp   a,#$c8		; rest
235d: f0 58     beq   $23b7
235f: 68 ef     cmp   a,#$ef		; call subroutine
2361: f0 2c     beq   $238f
2363: 68 e0     cmp   a,#$e0		; main vcmds
2365: 90 34     bcc   $239b
2367: 6d        push  y
2368: fd        mov   y,a
2369: ae        pop   a
236a: 96 02 21  adc   a,$2102+y
236d: fd        mov   y,a
236e: 5f 47 23  jmp   $2347

2371: e4 17     mov   a,$17
2373: f0 26     beq   $239b
2375: 8b 17     dec   $17
2377: d0 0b     bne   $2384
2379: f5 55 02  mov   a,$0255+x
237c: 2d        push  a
237d: f5 54 02  mov   a,$0254+x
2380: ee        pop   y
2381: 5f 43 23  jmp   $2343

2384: f5 6d 02  mov   a,$026d+x
2387: 2d        push  a
2388: f5 6c 02  mov   a,$026c+x
238b: ee        pop   y
238c: 5f 43 23  jmp   $2343

238f: fc        inc   y
2390: f7 14     mov   a,($14)+y
2392: 2d        push  a
2393: fc        inc   y
2394: f7 14     mov   a,($14)+y
2396: fd        mov   y,a
2397: ae        pop   a
2398: 5f 43 23  jmp   $2343

239b: 7d        mov   a,x
239c: 5c        lsr   a
239d: 68 04     cmp   a,#$04
239f: 90 0f     bcc   $23b0
23a1: 68 08     cmp   a,#$08
23a3: b0 0b     bcs   $23b0
23a5: 80        setc
23a6: a8 04     sbc   a,#$04
23a8: 48 03     eor   a,#$03
23aa: fd        mov   y,a
23ab: f6 69 04  mov   a,$0469+y
23ae: 10 07     bpl   $23b7
23b0: e4 36     mov   a,$36
23b2: 8d 5c     mov   y,#$5c
23b4: 3f 60 10  call  $1060
23b7: f2 13     clr7  $13
23b9: f4 9a     mov   a,$9a+x
23bb: f0 2e     beq   $23eb
23bd: f4 9b     mov   a,$9b+x
23bf: f0 05     beq   $23c6
23c1: 9b 9b     dec   $9b+x
23c3: 5f eb 23  jmp   $23eb

23c6: e2 13     set7  $13
23c8: 9b 9a     dec   $9a+x
23ca: d0 0c     bne   $23d8
23cc: f5 2d 04  mov   a,$042d+x
23cf: d5 fc 03  mov   $03fc+x,a
23d2: f5 2c 04  mov   a,$042c+x
23d5: 5f e8 23  jmp   $23e8

23d8: 60        clrc
23d9: f5 fc 03  mov   a,$03fc+x
23dc: 95 14 04  adc   a,$0414+x
23df: d5 fc 03  mov   $03fc+x,a
23e2: f5 fd 03  mov   a,$03fd+x
23e5: 95 15 04  adc   a,$0415+x
23e8: d5 fd 03  mov   $03fd+x,a
23eb: 3f 83 21  call  $2183
23ee: f4 b3     mov   a,$b3+x
23f0: f0 51     beq   $2443
23f2: f5 f4 02  mov   a,$02f4+x
23f5: de b2 49  cbne  $b2+x,$2441
23f8: f5 0c 01  mov   a,$010c+x
23fb: 75 f5 02  cmp   a,$02f5+x
23fe: d0 06     bne   $2406
2400: f5 0d 03  mov   a,$030d+x
2403: 5f 13 24  jmp   $2413

2406: 40        setp
2407: bb 0c     inc   $0c+x
2409: 20        clrp
240a: fd        mov   y,a
240b: f0 02     beq   $240f
240d: f4 b3     mov   a,$b3+x
240f: 60        clrc
2410: 95 0c 03  adc   a,$030c+x
2413: d4 b3     mov   $b3+x,a
2415: f5 dc 02  mov   a,$02dc+x
2418: 60        clrc
2419: 95 dd 02  adc   a,$02dd+x
241c: d5 dc 02  mov   $02dc+x,a
241f: c4 12     mov   $12,a
2421: 1c        asl   a
2422: 1c        asl   a
2423: 90 02     bcc   $2427
2425: 48 ff     eor   a,#$ff
2427: fd        mov   y,a
2428: f4 b3     mov   a,$b3+x
242a: 68 f1     cmp   a,#$f1
242c: 90 06     bcc   $2434
242e: 28 0f     and   a,#$0f
2430: cf        mul   ya
2431: 5f 38 24  jmp   $2438

2434: cf        mul   ya
2435: dd        mov   a,y
2436: 8d 00     mov   y,#$00
2438: 3f e0 24  call  $24e0
243b: 4d        push  x
243c: 3f ba 0f  call  $0fba
243f: ce        pop   x
2440: 6f        ret

2441: bb b2     inc   $b2+x
2443: e3 13 f5  bbs7  $13,$243b
2446: 6f        ret

2447: f2 13     clr7  $13
2449: f5 45 04  mov   a,$0445+x
244c: f0 0b     beq   $2459
244e: f5 3c 03  mov   a,$033c+x
2451: 75 44 04  cmp   a,$0444+x
2454: d0 03     bne   $2459
2456: 3f e8 24  call  $24e8
2459: f5 b5 03  mov   a,$03b5+x
245c: fd        mov   y,a
245d: f5 b4 03  mov   a,$03b4+x
2460: da 10     movw  $10,ya
2462: f4 83     mov   a,$83+x
2464: d0 05     bne   $246b
2466: ba 10     movw  ya,$10
2468: 5f 75 24  jmp   $2475

246b: f5 cd 03  mov   a,$03cd+x
246e: fd        mov   y,a
246f: f5 cc 03  mov   a,$03cc+x
2472: 3f c8 24  call  $24c8
2475: 6d        push  y
2476: fd        mov   y,a
2477: ae        pop   a
2478: 4d        push  x
2479: 2d        push  a
247a: 6d        push  y
247b: 7d        mov   a,x
247c: 5c        lsr   a
247d: 5d        mov   x,a
247e: f5 61 04  mov   a,$0461+x
2481: 5d        mov   x,a
2482: f5 c4 0a  mov   a,$0ac4+x
2485: c4 00     mov   $00,a
2487: ee        pop   y
2488: ae        pop   a
2489: 3f 21 1b  call  $1b21
248c: ce        pop   x
248d: 6d        push  y
248e: fd        mov   y,a
248f: ae        pop   a
2490: da 10     movw  $10,ya
2492: f3 13 03  bbc7  $13,$2498
2495: 3f b8 22  call  $22b8
2498: f2 13     clr7  $13
249a: 3f 83 21  call  $2183
249d: f4 9a     mov   a,$9a+x
249f: f0 0e     beq   $24af
24a1: f4 9b     mov   a,$9b+x
24a3: d0 0a     bne   $24af
24a5: f5 15 04  mov   a,$0415+x
24a8: fd        mov   y,a
24a9: f5 14 04  mov   a,$0414+x
24ac: 3f c8 24  call  $24c8
24af: f4 b3     mov   a,$b3+x
24b1: f0 90     beq   $2443
24b3: f5 f4 02  mov   a,$02f4+x
24b6: de b2 8a  cbne  $b2+x,$2443
24b9: ec 5c 04  mov   y,$045c
24bc: f5 dd 02  mov   a,$02dd+x
24bf: cf        mul   ya
24c0: dd        mov   a,y
24c1: 60        clrc
24c2: 95 dc 02  adc   a,$02dc+x
24c5: 5f 1f 24  jmp   $241f

24c8: e2 13     set7  $13
24ca: cb 12     mov   $12,y
24cc: 3f a0 21  call  $21a0
24cf: 6d        push  y
24d0: ec 5c 04  mov   y,$045c
24d3: cf        mul   ya
24d4: cb 14     mov   $14,y
24d6: 8f 00 15  mov   $15,#$00
24d9: ec 5c 04  mov   y,$045c
24dc: ae        pop   a
24dd: cf        mul   ya
24de: 7a 14     addw  ya,$14
24e0: 3f a0 21  call  $21a0
24e3: 7a 10     addw  ya,$10
24e5: da 10     movw  $10,ya
24e7: 6f        ret

24e8: e2 13     set7  $13
24ea: ec 5c 04  mov   y,$045c
24ed: f5 25 03  mov   a,$0325+x
24f0: cf        mul   ya
24f1: dd        mov   a,y
24f2: 60        clrc
24f3: 95 24 03  adc   a,$0324+x
24f6: 1c        asl   a
24f7: 90 02     bcc   $24fb
24f9: 48 ff     eor   a,#$ff
24fb: 2d        push  a
24fc: f5 45 04  mov   a,$0445+x
24ff: fd        mov   y,a
2500: ae        pop   a
2501: cf        mul   ya
2502: dd        mov   a,y
2503: 48 ff     eor   a,#$ff
2505: eb 40     mov   y,$40
2507: cf        mul   ya
2508: f5 24 02  mov   a,$0224+x
250b: cf        mul   ya
250c: f5 6d 03  mov   a,$036d+x
250f: 4d        push  x
2510: 6d        push  y
2511: 2d        push  a
2512: 7d        mov   a,x
2513: 5c        lsr   a
2514: 5d        mov   x,a
2515: f5 61 04  mov   a,$0461+x
2518: 5d        mov   x,a
2519: f5 c0 0a  mov   a,$0ac0+x
251c: c4 00     mov   $00,a
251e: ae        pop   a
251f: 3f c3 1a  call  $1ac3
2522: ee        pop   y
2523: ce        pop   x
2524: 09 36 45  or    ($45),($36)
2527: cf        mul   ya
2528: dd        mov   a,y
2529: cf        mul   ya
252a: dd        mov   a,y
252b: d5 9d 03  mov   $039d+x,a
252e: 6f        ret

; pan table
252f: db $00,$01,$03,$07,$0d,$15,$1e,$29
2537: db $34,$42,$51,$5e,$67,$6e,$73,$77
253f: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
2544: db $7f,$00,$00,$00,$00,$00,$00,$00
254c: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
2554: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
255c: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; dsp shadow addrs for dsp regs
2564: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d
256c: db $2d,$5c,$48,$4a,$3d,$39,$37,$34
2574: db $35,$38,$3a,$35

; pitch table
257a: dw $08de
257c: dw $0965
257e: dw $09f4
2580: dw $0a8c
2582: dw $0b2c
2584: dw $0bd6
2586: dw $0c8b
2588: dw $0d4a
258a: dw $0e14
258c: dw $0eea
258e: dw $0fcd
2590: dw $10be

2592: db "*Ver S1.20*"

; note dur%'s
259d: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
25a5: db $0a,$19,$28,$3c,$50,$64,$7d,$96

25ad: db $aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff
