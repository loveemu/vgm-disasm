; Dragon Quest 3 SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Dragon Quest 6 (1995)
; * Dragon Quest 3 (1996)

0b00: 20        clrp
0b01: cd cf     mov   x,#$cf
0b03: bd        mov   sp,x
0b04: 3f 19 13  call  $1319
0b07: e8 00     mov   a,#$00
0b09: 5d        mov   x,a
0b0a: af        mov   (x)+,a
0b0b: c8 e0     cmp   x,#$e0
0b0d: 90 fb     bcc   $0b0a
0b0f: 5d        mov   x,a
0b10: d5 00 02  mov   $0200+x,a
0b13: d5 00 03  mov   $0300+x,a
0b16: d5 00 04  mov   $0400+x,a
0b19: d5 00 05  mov   $0500+x,a
0b1c: d5 00 06  mov   $0600+x,a
0b1f: d5 00 07  mov   $0700+x,a
0b22: d5 00 08  mov   $0800+x,a
0b25: d5 00 09  mov   $0900+x,a
0b28: d5 00 0a  mov   $0a00+x,a
0b2b: d5 00 23  mov   $2300+x,a
0b2e: 3d        inc   x
0b2f: d0 df     bne   $0b10
0b31: 3f 4e 13  call  $134e
0b34: 3f 7a 14  call  $147a
0b37: 8f 00 1d  mov   $1d,#$00
0b3a: 8f 00 1e  mov   $1e,#$00
0b3d: 8f 00 2b  mov   $2b,#$00
0b40: 3f 6d 19  call  $196d
0b43: 3f 4b 0b  call  $0b4b
0b46: 3f 62 0b  call  $0b62
0b49: 2f ec     bra   $0b37
;
0b4b: eb 2f     mov   y,$2f
0b4d: e8 1e     mov   a,#$1e
0b4f: cf        mul   ya
0b50: 60        clrc
0b51: 84 2e     adc   a,$2e
0b53: c4 2e     mov   $2e,a
0b55: 90 07     bcc   $0b5e
0b57: 69 2d 2c  cmp   ($2c),($2d)
0b5a: f0 02     beq   $0b5e
0b5c: ab 2c     inc   $2c
0b5e: 3f be 0b  call  $0bbe
0b61: 6f        ret
;
0b62: e4 1e     mov   a,$1e
0b64: 8d 5c     mov   y,#$5c
0b66: 3f 75 14  call  $1475
0b69: e4 28     mov   a,$28
0b6b: 8d 0c     mov   y,#$0c
0b6d: 3f 75 14  call  $1475
0b70: e4 29     mov   a,$29
0b72: 8d 1c     mov   y,#$1c
0b74: 3f 75 14  call  $1475
0b77: e4 22     mov   a,$22
0b79: 8d 2d     mov   y,#$2d
0b7b: 3f 75 14  call  $1475
0b7e: e4 20     mov   a,$20
0b80: 8d 3d     mov   y,#$3d
0b82: 3f 75 14  call  $1475
0b85: e8 00     mov   a,#$00
0b87: 8d 5c     mov   y,#$5c
0b89: 3f 75 14  call  $1475
0b8c: e4 1d     mov   a,$1d
0b8e: 8d 4c     mov   y,#$4c
0b90: 3f 75 14  call  $1475
0b93: e3 2c 27  bbs7  $2c,$0bbd
0b96: 8f 6c f2  mov   $f2,#$6c
0b99: fa 23 f3  mov   ($f3),($23)
0b9c: 69 2d 2c  cmp   ($2c),($2d)
0b9f: d0 1c     bne   $0bbd
0ba1: 8d 4d     mov   y,#$4d
0ba3: e4 1f     mov   a,$1f
0ba5: 3f 75 14  call  $1475
0ba8: 8d 0d     mov   y,#$0d
0baa: e4 21     mov   a,$21
0bac: 3f 75 14  call  $1475
0baf: 8d 3c     mov   y,#$3c
0bb1: e4 27     mov   a,$27
0bb3: 3f 75 14  call  $1475
0bb6: 8d 2c     mov   y,#$2c
0bb8: e4 25     mov   a,$25
0bba: 3f 75 14  call  $1475
0bbd: 6f        ret
;
0bbe: 8f 00 36  mov   $36,#$00
0bc1: f8 36     mov   x,$36
0bc3: f5 f8 08  mov   a,$08f8+x
0bc6: 30 09     bmi   $0bd1
0bc8: f5 ff 08  mov   a,$08ff+x
0bcb: f0 07     beq   $0bd4
0bcd: 9c        dec   a
0bce: d5 ff 08  mov   $08ff+x,a
0bd1: 5f 4a 0c  jmp   $0c4a
;
0bd4: f5 f8 08  mov   a,$08f8+x
0bd7: 28 0f     and   a,#$0f
0bd9: fd        mov   y,a
0bda: f6 25 0a  mov   a,$0a25+y
0bdd: c4 3b     mov   $3b,a
0bdf: f6 31 0a  mov   a,$0a31+y
0be2: c4 3c     mov   $3c,a
0be4: 8f 00 3a  mov   $3a,#$00
0be7: b2 1a     clr5  $1a
0be9: f5 ae 09  mov   a,$09ae+x
0bec: 04 2b     or    a,$2b
0bee: eb 2f     mov   y,$2f
0bf0: cf        mul   ya
0bf1: 60        clrc
0bf2: 95 b5 09  adc   a,$09b5+x         ; add tempo value
0bf5: d5 b5 09  mov   $09b5+x,a
0bf8: c4 19     mov   $19,a
0bfa: 90 02     bcc   $0bfe             ; jump if not tick
0bfc: a2 1a     set5  $1a
0bfe: 92 1a     clr4  $1a
0c00: 3f 52 0f  call  $0f52
0c03: 3f 80 0f  call  $0f80
0c06: 3f d6 0f  call  $0fd6
0c09: f5 ed 09  mov   a,$09ed+x
0c0c: 3f 75 0c  call  $0c75
0c0f: ab 3a     inc   $3a
0c11: f5 f4 09  mov   a,$09f4+x
0c14: 3f 75 0c  call  $0c75
0c17: ab 3a     inc   $3a
0c19: f5 fb 09  mov   a,$09fb+x
0c1c: 3f 75 0c  call  $0c75
0c1f: ab 3a     inc   $3a
0c21: f5 02 0a  mov   a,$0a02+x
0c24: 3f 75 0c  call  $0c75
0c27: ab 3a     inc   $3a
0c29: f5 09 0a  mov   a,$0a09+x
0c2c: 3f 75 0c  call  $0c75
0c2f: ab 3a     inc   $3a
0c31: f5 10 0a  mov   a,$0a10+x
0c34: 3f 75 0c  call  $0c75
0c37: ab 3a     inc   $3a
0c39: f5 17 0a  mov   a,$0a17+x
0c3c: 3f 75 0c  call  $0c75
0c3f: ab 3a     inc   $3a
0c41: f5 1e 0a  mov   a,$0a1e+x
0c44: 3f 75 0c  call  $0c75
0c47: 3f 55 0c  call  $0c55
0c4a: ab 36     inc   $36
0c4c: 78 07 36  cmp   $36,#$07
0c4f: b0 03     bcs   $0c54
0c51: 5f c1 0b  jmp   $0bc1
0c54: 6f        ret
;
0c55: f5 ed 09  mov   a,$09ed+x
0c58: 35 f4 09  and   a,$09f4+x
0c5b: 35 fb 09  and   a,$09fb+x
0c5e: 35 02 0a  and   a,$0a02+x
0c61: 35 09 0a  and   a,$0a09+x
0c64: 35 10 0a  and   a,$0a10+x
0c67: 35 17 0a  and   a,$0a17+x
0c6a: 35 1e 0a  and   a,$0a1e+x
0c6d: 68 ff     cmp   a,#$ff
0c6f: d0 03     bne   $0c74
0c71: d5 f8 08  mov   $08f8+x,a
0c74: 6f        ret
;
0c75: 4d        push  x
0c76: c4 37     mov   $37,a
0c78: 68 ff     cmp   a,#$ff
0c7a: d0 03     bne   $0c7f
0c7c: 5f 24 0d  jmp   $0d24
;
0c7f: f8 37     mov   x,$37
0c81: 3f f3 13  call  $13f3
0c84: f2 1a     clr7  $1a
0c86: d2 1a     clr6  $1a
0c88: 93 1a 02  bbc4  $1a,$0c8d
0c8b: c2 1a     set6  $1a
0c8d: 3f 01 13  call  $1301
0c90: f5 48 03  mov   a,$0348+x
0c93: 68 ff     cmp   a,#$ff
0c95: f0 e5     beq   $0c7c
0c97: 3f 6d 12  call  $126d
0c9a: b3 1a 72  bbc5  $1a,$0d0f
0c9d: f5 e0 04  mov   a,$04e0+x
0ca0: 9c        dec   a
0ca1: d5 e0 04  mov   $04e0+x,a
0ca4: d0 54     bne   $0cfa
0ca6: 4d        push  x
0ca7: f8 36     mov   x,$36
0ca9: f5 99 09  mov   a,$0999+x
0cac: ce        pop   x
0cad: f0 07     beq   $0cb6
0caf: 3f f0 12  call  $12f0             ; read first byte
0cb2: c4 15     mov   $15,a
0cb4: d0 07     bne   $0cbd
; vcmd 00 - halt
0cb6: e4 3a     mov   a,$3a
0cb8: 3f 90 1e  call  $1e90
0cbb: ce        pop   x
0cbc: 6f        ret
; vcmds 01-ff
0cbd: 10 1a     bpl   $0cd9
0cbf: 68 d2     cmp   a,#$d2
0cc1: b0 23     bcs   $0ce6
0cc3: 68 d1     cmp   a,#$d1
0cc5: f0 26     beq   $0ced
0cc7: 68 d0     cmp   a,#$d0
0cc9: f0 2a     beq   $0cf5
; vcmds 80-cf - note
0ccb: 3f 26 0d  call  $0d26
0cce: 3f c6 11  call  $11c6
0cd1: 3f b3 11  call  $11b3
0cd4: 3f 23 0e  call  $0e23
0cd7: 2f 24     bra   $0cfd
; vcmds 01-7f - set note param
0cd9: d5 f8 04  mov   $04f8+x,a         ; vcmd byte itself = note length
0cdc: 3f f8 12  call  $12f8             ; read next byte (without ptr advance)
0cdf: 30 c5     bmi   $0ca6
0ce1: 3f 64 18  call  $1864             ; 00-7f: dur/vel / same as vcmd f1
0ce4: 2f c0     bra   $0ca6
; vcmds d2-ff
0ce6: 3f 85 14  call  $1485             ; dispatch vcmd
0ce9: f8 37     mov   x,$37
0ceb: 2f b9     bra   $0ca6
; vcmd d1 - rest
0ced: f5 a8 03  mov   a,$03a8+x
0cf0: 08 40     or    a,#$40
0cf2: d5 a8 03  mov   $03a8+x,a
; vcmd d0 - tie
0cf5: 3f b3 11  call  $11b3
0cf8: 2f 03     bra   $0cfd
;
0cfa: 3f df 11  call  $11df
0cfd: 3f c2 0d  call  $0dc2
0d00: 3f 15 0f  call  $0f15
0d03: 3f e3 0f  call  $0fe3
0d06: 3f 50 0e  call  $0e50
0d09: 3f 6d 12  call  $126d
0d0c: 3f 97 0e  call  $0e97
0d0f: 3f 7d 0e  call  $0e7d
0d12: 3f da 10  call  $10da
0d15: 3f 78 12  call  $1278
0d18: 3f f4 0d  call  $0df4
0d1b: 3f 40 0f  call  $0f40
0d1e: 3f 0e 10  call  $100e
0d21: 3f 0d 13  call  $130d
0d24: ce        pop   x
0d25: 6f        ret
;
0d26: 28 7f     and   a,#$7f
0d28: 2d        push  a
0d29: f5 a8 03  mov   a,$03a8+x
0d2c: 28 80     and   a,#$80
0d2e: f0 07     beq   $0d37
0d30: f5 a8 03  mov   a,$03a8+x
0d33: 28 20     and   a,#$20
0d35: d0 13     bne   $0d4a
0d37: 8d 00     mov   y,#$00
0d39: e8 00     mov   a,#$00
0d3b: 3f 64 14  call  $1464             ; set VOL(L)
0d3e: 8d 01     mov   y,#$01
0d40: 3f 64 14  call  $1464             ; set VOL(R)
0d43: e4 1c     mov   a,$1c
0d45: 8d 5c     mov   y,#$5c
0d47: 3f 75 14  call  $1475
0d4a: ae        pop   a
0d4b: f8 36     mov   x,$36
0d4d: 60        clrc
0d4e: 95 e6 09  adc   a,$09e6+x
0d51: 60        clrc
0d52: f8 37     mov   x,$37
0d54: 95 d0 08  adc   a,$08d0+x
0d57: d5 c8 04  mov   $04c8+x,a
0d5a: f5 40 05  mov   a,$0540+x
0d5d: d5 b0 04  mov   $04b0+x,a
0d60: f5 68 07  mov   a,$0768+x
0d63: 5c        lsr   a
0d64: e8 00     mov   a,#$00
0d66: 7c        ror   a
0d67: d5 98 07  mov   $0798+x,a
0d6a: e8 ff     mov   a,#$ff
0d6c: d5 b8 08  mov   $08b8+x,a
0d6f: e8 00     mov   a,#$00
0d71: d5 e0 07  mov   $07e0+x,a
0d74: d5 80 07  mov   $0780+x,a
0d77: d5 40 08  mov   $0840+x,a
0d7a: d5 88 08  mov   $0888+x,a
0d7d: f5 90 06  mov   a,$0690+x
0d80: d5 a8 06  mov   $06a8+x,a
0d83: f0 1f     beq   $0da4
0d85: f5 c0 06  mov   a,$06c0+x
0d88: d5 d8 06  mov   $06d8+x,a
0d8b: f5 f0 06  mov   a,$06f0+x
0d8e: d0 0a     bne   $0d9a
0d90: f5 c8 04  mov   a,$04c8+x
0d93: 80        setc
0d94: b5 08 07  sbc   a,$0708+x
0d97: d5 c8 04  mov   $04c8+x,a
0d9a: f5 c8 04  mov   a,$04c8+x
0d9d: 60        clrc
0d9e: 95 08 07  adc   a,$0708+x
0da1: 3f 36 0e  call  $0e36
0da4: e2 1a     set7  $1a
0da6: c2 1a     set6  $1a
0da8: f5 a8 03  mov   a,$03a8+x
0dab: 28 80     and   a,#$80
0dad: f0 0f     beq   $0dbe
0daf: f5 a8 03  mov   a,$03a8+x
0db2: 28 20     and   a,#$20
0db4: d0 0b     bne   $0dc1
0db6: f5 a8 03  mov   a,$03a8+x
0db9: 08 20     or    a,#$20
0dbb: d5 a8 03  mov   $03a8+x,a
0dbe: 3f a5 11  call  $11a5
0dc1: 6f        ret
;
0dc2: f5 a0 08  mov   a,$08a0+x
0dc5: fd        mov   y,a
0dc6: f0 26     beq   $0dee
0dc8: f5 88 08  mov   a,$0888+x
0dcb: 75 70 08  cmp   a,$0870+x
0dce: b0 06     bcs   $0dd6
0dd0: bc        inc   a
0dd1: d5 88 08  mov   $0888+x,a
0dd4: 2f 18     bra   $0dee
0dd6: f5 40 08  mov   a,$0840+x
0dd9: 10 07     bpl   $0de2
0ddb: fc        inc   y
0ddc: d0 04     bne   $0de2
0dde: e8 80     mov   a,#$80
0de0: 2f 04     bra   $0de6
0de2: 60        clrc
0de3: 95 58 08  adc   a,$0858+x
0de6: d5 40 08  mov   $0840+x,a
0de9: 3f 10 0e  call  $0e10
0dec: 2f 05     bra   $0df3
0dee: e8 ff     mov   a,#$ff
0df0: d5 b8 08  mov   $08b8+x,a
0df3: 6f        ret
;
0df4: f5 a0 08  mov   a,$08a0+x
0df7: f0 16     beq   $0e0f
0df9: f5 88 08  mov   a,$0888+x
0dfc: 75 70 08  cmp   a,$0870+x
0dff: 90 0e     bcc   $0e0f
0e01: eb 19     mov   y,$19
0e03: f5 58 08  mov   a,$0858+x
0e06: cf        mul   ya
0e07: dd        mov   a,y
0e08: 60        clrc
0e09: 95 40 08  adc   a,$0840+x
0e0c: 3f 10 0e  call  $0e10
0e0f: 6f        ret
;
0e10: 1c        asl   a
0e11: 90 02     bcc   $0e15
0e13: 48 ff     eor   a,#$ff
0e15: fd        mov   y,a
0e16: f5 a0 08  mov   a,$08a0+x
0e19: cf        mul   ya
0e1a: dd        mov   a,y
0e1b: 48 ff     eor   a,#$ff
0e1d: d5 b8 08  mov   $08b8+x,a
0e20: c2 1a     set6  $1a
0e22: 6f        ret
;
0e23: f5 a8 06  mov   a,$06a8+x
0e26: d0 0d     bne   $0e35
0e28: 3f f8 12  call  $12f8
0e2b: 68 e5     cmp   a,#$e5
0e2d: d0 06     bne   $0e35
0e2f: 3f fe 12  call  $12fe
0e32: 3f a6 16  call  $16a6
0e35: 6f        ret
;
0e36: 28 7f     and   a,#$7f
0e38: d5 50 07  mov   $0750+x,a
0e3b: 80        setc
0e3c: b5 c8 04  sbc   a,$04c8+x
0e3f: 2d        push  a
0e40: f5 a8 06  mov   a,$06a8+x
0e43: fd        mov   y,a
0e44: ae        pop   a
0e45: 3f ca 12  call  $12ca
0e48: d5 20 07  mov   $0720+x,a
0e4b: dd        mov   a,y
0e4c: d5 38 07  mov   $0738+x,a
0e4f: 6f        ret
;
0e50: f5 a8 06  mov   a,$06a8+x
0e53: f0 27     beq   $0e7c
0e55: f5 d8 06  mov   a,$06d8+x
0e58: f0 06     beq   $0e60
0e5a: 9c        dec   a
0e5b: d5 d8 06  mov   $06d8+x,a
0e5e: 2f 1c     bra   $0e7c
0e60: e2 1a     set7  $1a
0e62: f5 a8 06  mov   a,$06a8+x
0e65: 9c        dec   a
0e66: d5 a8 06  mov   $06a8+x,a
0e69: 60        clrc
0e6a: f5 b0 04  mov   a,$04b0+x
0e6d: 95 20 07  adc   a,$0720+x
0e70: d5 b0 04  mov   $04b0+x,a
0e73: f5 c8 04  mov   a,$04c8+x
0e76: 95 38 07  adc   a,$0738+x
0e79: d5 c8 04  mov   $04c8+x,a
0e7c: 6f        ret
;
0e7d: f5 a8 06  mov   a,$06a8+x
0e80: f0 14     beq   $0e96
0e82: f5 d8 06  mov   a,$06d8+x
0e85: 75 c0 06  cmp   a,$06c0+x
0e88: 90 0c     bcc   $0e96
0e8a: f5 38 07  mov   a,$0738+x
0e8d: fd        mov   y,a
0e8e: f5 20 07  mov   a,$0720+x
0e91: 3f b8 10  call  $10b8
0e94: e2 1a     set7  $1a
0e96: 6f        ret
;
0e97: f5 10 08  mov   a,$0810+x
0e9a: f0 5c     beq   $0ef8
0e9c: f5 e0 07  mov   a,$07e0+x
0e9f: 75 c8 07  cmp   a,$07c8+x
0ea2: b0 06     bcs   $0eaa
0ea4: bc        inc   a
0ea5: d5 e0 07  mov   $07e0+x,a
0ea8: 2f 4e     bra   $0ef8
0eaa: f5 80 07  mov   a,$0780+x
0ead: 75 68 07  cmp   a,$0768+x
0eb0: d0 05     bne   $0eb7
0eb2: f5 f8 07  mov   a,$07f8+x
0eb5: 2f 0f     bra   $0ec6
0eb7: fd        mov   y,a
0eb8: bc        inc   a
0eb9: d5 80 07  mov   $0780+x,a
0ebc: dd        mov   a,y
0ebd: f0 03     beq   $0ec2
0ebf: f5 10 08  mov   a,$0810+x
0ec2: 60        clrc
0ec3: 95 28 08  adc   a,$0828+x
0ec6: d5 10 08  mov   $0810+x,a
0ec9: f5 98 07  mov   a,$0798+x
0ecc: 60        clrc
0ecd: 95 b0 07  adc   a,$07b0+x
0ed0: d5 98 07  mov   $0798+x,a
;
0ed3: c4 00     mov   $00,a
0ed5: 1c        asl   a
0ed6: 1c        asl   a
0ed7: 90 02     bcc   $0edb
0ed9: 48 ff     eor   a,#$ff
0edb: fd        mov   y,a
0edc: f5 10 08  mov   a,$0810+x
0edf: 68 f1     cmp   a,#$f1
0ee1: 90 05     bcc   $0ee8
0ee3: 28 0f     and   a,#$0f
0ee5: cf        mul   ya
0ee6: 2f 04     bra   $0eec
0ee8: cf        mul   ya
0ee9: dd        mov   a,y
0eea: 8d 00     mov   y,#$00
0eec: f3 00 03  bbc7  $00,$0ef2
0eef: 3f e9 12  call  $12e9
0ef2: 7a 16     addw  ya,$16
0ef4: da 16     movw  $16,ya
0ef6: e2 1a     set7  $1a
0ef8: 6f        ret
0ef9: f5 10 08  mov   a,$0810+x
0efc: f0 16     beq   $0f14
0efe: f5 e0 07  mov   a,$07e0+x
0f01: 75 c8 07  cmp   a,$07c8+x
0f04: 90 0e     bcc   $0f14
0f06: eb 19     mov   y,$19
0f08: f5 b0 07  mov   a,$07b0+x
0f0b: cf        mul   ya
0f0c: dd        mov   a,y
0f0d: 60        clrc
0f0e: 95 98 07  adc   a,$0798+x
0f11: 3f d3 0e  call  $0ed3
0f14: 6f        ret
;
0f15: f5 78 06  mov   a,$0678+x
0f18: f0 25     beq   $0f3f
0f1a: c2 1a     set6  $1a
0f1c: 9c        dec   a
0f1d: d5 78 06  mov   $0678+x,a
0f20: d0 0a     bne   $0f2c
0f22: e8 00     mov   a,#$00
0f24: d5 00 06  mov   $0600+x,a
0f27: f5 30 06  mov   a,$0630+x
0f2a: 2f 10     bra   $0f3c
0f2c: 60        clrc
0f2d: f5 00 06  mov   a,$0600+x
0f30: 95 48 06  adc   a,$0648+x
0f33: d5 00 06  mov   $0600+x,a
0f36: f5 18 06  mov   a,$0618+x
0f39: 95 60 06  adc   a,$0660+x
0f3c: d5 18 06  mov   $0618+x,a
0f3f: 6f        ret
;
0f40: f5 78 06  mov   a,$0678+x
0f43: f0 0c     beq   $0f51
0f45: f5 60 06  mov   a,$0660+x
0f48: fd        mov   y,a
0f49: f5 48 06  mov   a,$0648+x
0f4c: 3f b8 10  call  $10b8
0f4f: c2 1a     set6  $1a
0f51: 6f        ret
;
0f52: b3 1a 2a  bbc5  $1a,$0f7f
0f55: f5 06 09  mov   a,$0906+x
0f58: f0 25     beq   $0f7f
0f5a: 82 1a     set4  $1a
0f5c: 9c        dec   a
0f5d: d5 06 09  mov   $0906+x,a
0f60: d0 0a     bne   $0f6c
0f62: e8 00     mov   a,#$00
0f64: d5 1b 09  mov   $091b+x,a
0f67: f5 29 09  mov   a,$0929+x
0f6a: 2f 10     bra   $0f7c
0f6c: 60        clrc
0f6d: f5 1b 09  mov   a,$091b+x
0f70: 95 0d 09  adc   a,$090d+x
0f73: d5 1b 09  mov   $091b+x,a
0f76: f5 22 09  mov   a,$0922+x
0f79: 95 14 09  adc   a,$0914+x
0f7c: d5 22 09  mov   $0922+x,a
0f7f: 6f        ret
;
0f80: f5 a7 09  mov   a,$09a7+x
0f83: 15 a0 09  or    a,$09a0+x
0f86: d0 01     bne   $0f89
0f88: 6f        ret
0f89: f5 a7 09  mov   a,$09a7+x
0f8c: 30 22     bmi   $0fb0
0f8e: f5 a0 09  mov   a,$09a0+x
0f91: 60        clrc
0f92: 95 92 09  adc   a,$0992+x
0f95: d5 92 09  mov   $0992+x,a
0f98: f5 a7 09  mov   a,$09a7+x
0f9b: 95 99 09  adc   a,$0999+x
0f9e: 90 0d     bcc   $0fad
0fa0: e8 00     mov   a,#$00
0fa2: d5 a0 09  mov   $09a0+x,a
0fa5: d5 a7 09  mov   $09a7+x,a
0fa8: e8 ff     mov   a,#$ff
0faa: d5 92 09  mov   $0992+x,a
0fad: 5f d0 0f  jmp   $0fd0
;
0fb0: 28 7f     and   a,#$7f
0fb2: c4 00     mov   $00,a
0fb4: f5 92 09  mov   a,$0992+x
0fb7: 80        setc
0fb8: b5 a0 09  sbc   a,$09a0+x
0fbb: d5 92 09  mov   $0992+x,a
0fbe: f5 99 09  mov   a,$0999+x
0fc1: a4 00     sbc   a,$00
0fc3: b0 0b     bcs   $0fd0
0fc5: e8 00     mov   a,#$00
0fc7: d5 a0 09  mov   $09a0+x,a
0fca: d5 a7 09  mov   $09a7+x,a
0fcd: d5 92 09  mov   $0992+x,a
0fd0: d5 99 09  mov   $0999+x,a
0fd3: 82 1a     set4  $1a
0fd5: 6f        ret
;
0fd6: f5 8b 09  mov   a,$098b+x
0fd9: f0 07     beq   $0fe2
0fdb: e8 00     mov   a,#$00
0fdd: d5 8b 09  mov   $098b+x,a
0fe0: 82 1a     set4  $1a
0fe2: 6f        ret
;
0fe3: f5 70 05  mov   a,$0570+x
0fe6: f0 25     beq   $100d
0fe8: c2 1a     set6  $1a
0fea: 9c        dec   a
0feb: d5 70 05  mov   $0570+x,a
0fee: d0 0a     bne   $0ffa
0ff0: e8 00     mov   a,#$00
0ff2: d5 d0 05  mov   $05d0+x,a
0ff5: f5 b8 05  mov   a,$05b8+x
0ff8: 2f 10     bra   $100a
0ffa: 60        clrc
0ffb: f5 d0 05  mov   a,$05d0+x
0ffe: 95 88 05  adc   a,$0588+x
1001: d5 d0 05  mov   $05d0+x,a
1004: f5 e8 05  mov   a,$05e8+x
1007: 95 a0 05  adc   a,$05a0+x
100a: d5 e8 05  mov   $05e8+x,a
100d: 6f        ret
;
100e: d3 1a 3e  bbc6  $1a,$104f
1011: f8 36     mov   x,$36
1013: f5 22 09  mov   a,$0922+x
1016: fd        mov   y,a
1017: f5 84 09  mov   a,$0984+x
101a: cf        mul   ya
101b: f5 99 09  mov   a,$0999+x
101e: cf        mul   ya
101f: f8 37     mov   x,$37
1021: f5 b8 08  mov   a,$08b8+x
1024: cf        mul   ya
1025: f5 e8 05  mov   a,$05e8+x
1028: cf        mul   ya
1029: f5 58 05  mov   a,$0558+x
102c: cf        mul   ya
102d: dd        mov   a,y
102e: cf        mul   ya
102f: cb 18     mov   $18,y
1031: f5 18 06  mov   a,$0618+x
1034: fd        mov   y,a
1035: f5 00 06  mov   a,$0600+x
1038: da 16     movw  $16,ya
103a: 3f 7f 10  call  $107f
103d: c4 34     mov   $34,a
103f: 8d 14     mov   y,#$14
1041: e8 00     mov   a,#$00
1043: 9a 16     subw  ya,$16
1045: da 16     movw  $16,ya
1047: 3f 7f 10  call  $107f
104a: c4 33     mov   $33,a
104c: 3f 50 10  call  $1050
104f: 6f        ret
;
1050: e4 35     mov   a,$35
1052: d0 0c     bne   $1060
1054: f5 a8 03  mov   a,$03a8+x
1057: 28 04     and   a,#$04
1059: f0 05     beq   $1060
105b: 58 ff 33  eor   $33,#$ff
105e: ab 33     inc   $33
1060: 8d 00     mov   y,#$00
1062: e4 33     mov   a,$33
1064: 3f 64 14  call  $1464             ; set VOL(L)
1067: e4 35     mov   a,$35
1069: d0 0c     bne   $1077
106b: f5 a8 03  mov   a,$03a8+x
106e: 28 02     and   a,#$02
1070: f0 05     beq   $1077
1072: 58 ff 34  eor   $34,#$ff
1075: ab 34     inc   $34
1077: 8d 01     mov   y,#$01
1079: e4 34     mov   a,$34
107b: 3f 64 14  call  $1464             ; set VOL(R)
107e: 6f        ret
;
107f: e4 35     mov   a,$35
1081: f0 06     beq   $1089
1083: 8d 0a     mov   y,#$0a
1085: e8 00     mov   a,#$00
1087: da 16     movw  $16,ya
1089: eb 17     mov   y,$17
108b: f6 a3 10  mov   a,$10a3+y
108e: 80        setc
108f: b6 a2 10  sbc   a,$10a2+y
1092: eb 16     mov   y,$16
1094: cf        mul   ya
1095: dd        mov   a,y
1096: eb 17     mov   y,$17
1098: 60        clrc
1099: 96 a2 10  adc   a,$10a2+y
109c: fd        mov   y,a
109d: e4 18     mov   a,$18
109f: cf        mul   ya
10a0: dd        mov   a,y
10a1: 6f        ret
;
10a2: db $00,$01,$03,$07,$0d,$15,$1e,$29
10aa: db $34,$42,$51,$5e,$67,$6e,$73,$77
10b2: db $7a,$7c,$7d,$7e,$7f,$7f
;
10b8: cb 00     mov   $00,y
10ba: f3 00 03  bbc7  $00,$10c0
10bd: 3f e9 12  call  $12e9
10c0: 6d        push  y
10c1: eb 19     mov   y,$19
10c3: cf        mul   ya
10c4: cb 08     mov   $08,y
10c6: 8f 00 09  mov   $09,#$00
10c9: eb 19     mov   y,$19
10cb: ae        pop   a
10cc: cf        mul   ya
10cd: 7a 08     addw  ya,$08
10cf: f3 00 03  bbc7  $00,$10d5
10d2: 3f e9 12  call  $12e9
10d5: 7a 16     addw  ya,$16
10d7: da 16     movw  $16,ya
10d9: 6f        ret
;
10da: e3 1a 01  bbs7  $1a,$10de
10dd: 6f        ret
10de: f5 c0 03  mov   a,$03c0+x
10e1: 28 80     and   a,#$80
10e3: f0 08     beq   $10ed
10e5: e4 22     mov   a,$22
10e7: 04 1c     or    a,$1c
10e9: c4 22     mov   $22,a
10eb: 2f 08     bra   $10f5
10ed: e4 1c     mov   a,$1c
10ef: 48 ff     eor   a,#$ff
10f1: 24 22     and   a,$22
10f3: c4 22     mov   $22,a
10f5: f5 a8 03  mov   a,$03a8+x
10f8: 28 10     and   a,#$10
10fa: d0 0e     bne   $110a
10fc: f5 a8 03  mov   a,$03a8+x
10ff: 28 08     and   a,#$08
1101: f0 1a     beq   $111d
1103: e4 17     mov   a,$17
1105: 28 1f     and   a,#$1f
1107: d5 d8 03  mov   $03d8+x,a
110a: 38 e0 23  and   $23,#$e0
110d: f5 d8 03  mov   a,$03d8+x
1110: 28 1f     and   a,#$1f
1112: 04 23     or    a,$23
1114: c4 23     mov   $23,a
1116: e4 20     mov   a,$20
1118: 04 1c     or    a,$1c
111a: c4 20     mov   $20,a
111c: 6f        ret
111d: e4 1c     mov   a,$1c
111f: 48 ff     eor   a,#$ff
1121: 24 20     and   a,$20
1123: c4 20     mov   $20,a
1125: 4d        push  x
1126: 8d 00     mov   y,#$00
1128: e4 17     mov   a,$17
112a: 80        setc
112b: a8 34     sbc   a,#$34
112d: b0 09     bcs   $1138
112f: e4 17     mov   a,$17
1131: 80        setc
1132: a8 13     sbc   a,#$13
1134: b0 06     bcs   $113c
1136: dc        dec   y
1137: 1c        asl   a
1138: 7a 16     addw  ya,$16
113a: da 16     movw  $16,ya
113c: e4 17     mov   a,$17
113e: 1c        asl   a
113f: 8d 00     mov   y,#$00
1141: cd 18     mov   x,#$18
1143: 9e        div   ya,x
1144: 5d        mov   x,a
1145: f6 9b 12  mov   a,$129b+y
1148: c4 09     mov   $09,a
114a: f6 9a 12  mov   a,$129a+y
114d: c4 08     mov   $08,a
114f: f6 9d 12  mov   a,$129d+y
1152: 2d        push  a
1153: f6 9c 12  mov   a,$129c+y
1156: ee        pop   y
1157: 9a 08     subw  ya,$08
1159: eb 16     mov   y,$16
115b: cf        mul   ya
115c: dd        mov   a,y
115d: 8d 00     mov   y,#$00
115f: 7a 08     addw  ya,$08
1161: cb 09     mov   $09,y
1163: 1c        asl   a
1164: 2b 09     rol   $09
1166: c4 08     mov   $08,a
1168: 2f 04     bra   $116e
116a: 4b 09     lsr   $09
116c: 7c        ror   a
116d: 3d        inc   x
116e: c8 06     cmp   x,#$06
1170: d0 f8     bne   $116a
1172: c4 08     mov   $08,a
1174: ce        pop   x
1175: f5 80 04  mov   a,$0480+x
1178: eb 09     mov   y,$09
117a: cf        mul   ya
117b: da 0a     movw  $0a,ya
117d: f5 80 04  mov   a,$0480+x
1180: eb 08     mov   y,$08
1182: cf        mul   ya
1183: 6d        push  y
1184: f5 98 04  mov   a,$0498+x
1187: eb 08     mov   y,$08
1189: cf        mul   ya
118a: 7a 0a     addw  ya,$0a
118c: da 0a     movw  $0a,ya
118e: f5 98 04  mov   a,$0498+x
1191: eb 09     mov   y,$09
1193: cf        mul   ya
1194: fd        mov   y,a
1195: ae        pop   a
1196: 7a 0a     addw  ya,$0a
1198: 6d        push  y
1199: 8d 02     mov   y,#$02
119b: 3f 64 14  call  $1464             ; set P(L)
119e: ae        pop   a
119f: 8d 03     mov   y,#$03
11a1: 3f 64 14  call  $1464             ; set P(H)
11a4: 6f        ret
;
11a5: e4 1d     mov   a,$1d
11a7: 04 1c     or    a,$1c
11a9: c4 1d     mov   $1d,a
11ab: 6f        ret
11ac: e4 1e     mov   a,$1e
11ae: 04 1c     or    a,$1c
11b0: c4 1e     mov   $1e,a
11b2: 6f        ret
; calc actual duration
11b3: f5 f8 04  mov   a,$04f8+x
11b6: d5 e0 04  mov   $04e0+x,a
11b9: fd        mov   y,a
11ba: f5 10 05  mov   a,$0510+x
11bd: cf        mul   ya
11be: dd        mov   a,y
11bf: d0 01     bne   $11c2
11c1: bc        inc   a
11c2: d5 28 05  mov   $0528+x,a
11c5: 6f        ret
;
11c6: f5 08 04  mov   a,$0408+x
11c9: 15 20 04  or    a,$0420+x
11cc: 08 80     or    a,#$80
11ce: 8d 05     mov   y,#$05
11d0: 3f 64 14  call  $1464             ; set ADSR(1)
11d3: f5 38 04  mov   a,$0438+x
11d6: 15 50 04  or    a,$0450+x
11d9: 8d 06     mov   y,#$06
11db: 3f 64 14  call  $1464             ; set ADSR(2)
11de: 6f        ret
;
11df: f5 28 05  mov   a,$0528+x
11e2: f0 3a     beq   $121e
11e4: 9c        dec   a
11e5: d5 28 05  mov   $0528+x,a
11e8: f0 07     beq   $11f1
11ea: f5 e0 04  mov   a,$04e0+x
11ed: 68 02     cmp   a,#$02
11ef: d0 2d     bne   $121e
11f1: f5 a8 03  mov   a,$03a8+x
11f4: 28 40     and   a,#$40
11f6: d0 27     bne   $121f
11f8: f5 a8 03  mov   a,$03a8+x
11fb: 28 80     and   a,#$80
11fd: d0 1f     bne   $121e
11ff: 3f 28 12  call  $1228
1202: b0 1a     bcs   $121e
1204: f5 08 04  mov   a,$0408+x
1207: 15 20 04  or    a,$0420+x
120a: 08 80     or    a,#$80
120c: 8d 05     mov   y,#$05
120e: 3f 64 14  call  $1464             ; set ADSR(1)
1211: f5 38 04  mov   a,$0438+x
1214: 28 e0     and   a,#$e0
1216: 15 68 04  or    a,$0468+x
1219: 8d 06     mov   y,#$06
121b: 3f 64 14  call  $1464             ; set ADSR(2)
121e: 6f        ret
121f: f5 a8 03  mov   a,$03a8+x
1222: 28 bf     and   a,#$bf
1224: d5 a8 03  mov   $03a8+x,a
1227: 6f        ret
;
1228: 8f d0 00  mov   $00,#$d0
122b: ba 38     movw  ya,$38
122d: da 08     movw  $08,ya
122f: 8f 00 01  mov   $01,#$00
1232: eb 01     mov   y,$01
1234: f7 08     mov   a,($08)+y
1236: f0 11     beq   $1249
1238: ab 01     inc   $01
123a: f0 0d     beq   $1249
123c: fd        mov   y,a
123d: f0 0a     beq   $1249
123f: 10 f1     bpl   $1232
1241: 68 d2     cmp   a,#$d2
1243: b0 08     bcs   $124d
1245: 64 00     cmp   a,$00
1247: f0 02     beq   $124b
1249: 60        clrc
124a: 6f        ret
124b: 80        setc
124c: 6f        ret
124d: 68 f2     cmp   a,#$f2
124f: f0 f8     beq   $1249
1251: 68 f3     cmp   a,#$f3
1253: f0 f4     beq   $1249
1255: 68 f4     cmp   a,#$f4
1257: f0 f0     beq   $1249
1259: 68 f9     cmp   a,#$f9
125b: f0 ec     beq   $1249
125d: 80        setc
125e: a8 d2     sbc   a,#$d2
1260: fd        mov   y,a
1261: f6 df 14  mov   a,$14df+y
1264: 60        clrc
1265: 84 01     adc   a,$01
1267: c4 01     mov   $01,a
1269: b0 de     bcs   $1249
126b: 2f c5     bra   $1232
;
126d: f5 b0 04  mov   a,$04b0+x
1270: c4 16     mov   $16,a
1272: f5 c8 04  mov   a,$04c8+x
1275: c4 17     mov   $17,a
1277: 6f        ret
;
1278: f5 18 06  mov   a,$0618+x
127b: fd        mov   y,a
127c: f5 00 06  mov   a,$0600+x
127f: da 16     movw  $16,ya
1281: 6f        ret
; duration table
1282: $23,$46,$69,$8c,$af,$d2,$f5,$ff
; velocity table
128a: $19,$28,$37,$46,$55,$64,$73,$82
1292: $91,$a0,$b0,$be,$cd,$dc,$eb,$ff
;
129a: dw $086a
129c: dw $08ea
129e: dw $0971
12a0: dw $0a01
12a2: dw $0a99
12a4: dw $0b3b
12a6: dw $0be6
12a8: dw $0c9b
12aa: dw $0d5b
12ac: dw $0e26
12ae: dw $0efd
12b0: dw $0fe1
12b2: dw $10d3
12b4: dw $11d3
12b6: dw $12e3
12b8: dw $1402
12ba: dw $1533
12bc: dw $1675
12be: dw $17cb
12c0: dw $1936
12c2: dw $1ab5
12c4: dw $1c4c
12c6: dw $1dfb
12c8: dw $1fc3
;
12ca: 4d        push  x
12cb: 6d        push  y
12cc: ce        pop   x
12cd: 90 0a     bcc   $12d9
12cf: 8d 00     mov   y,#$00
12d1: 9e        div   ya,x
12d2: 2d        push  a
12d3: e8 00     mov   a,#$00
12d5: 9e        div   ya,x
12d6: ee        pop   y
12d7: ce        pop   x
12d8: 6f        ret
12d9: 48 ff     eor   a,#$ff
12db: bc        inc   a
12dc: 8d 00     mov   y,#$00
12de: 9e        div   ya,x
12df: 2d        push  a
12e0: e8 00     mov   a,#$00
12e2: 9e        div   ya,x
12e3: ee        pop   y
12e4: 3f e9 12  call  $12e9
12e7: ce        pop   x
12e8: 6f        ret
;
12e9: da 08     movw  $08,ya
12eb: ba 13     movw  ya,$13
12ed: 9a 08     subw  ya,$08
12ef: 6f        ret
; read new argument to A, advance reading ptr
12f0: 8d 00     mov   y,#$00
12f2: f7 38     mov   a,($38)+y
12f4: 3a 38     incw  $38               ; inc reading ptr
12f6: fd        mov   y,a               ; set argument
12f7: 6f        ret
; read new argument to A
12f8: 8d 00     mov   y,#$00
12fa: f7 38     mov   a,($38)+y
12fc: fd        mov   y,a
12fd: 6f        ret
; advance reading ptr
12fe: 3a 38     incw  $38
1300: 6f        ret
; offset to ARAM address
1301: f5 48 03  mov   a,$0348+x
1304: fd        mov   y,a
1305: f5 30 03  mov   a,$0330+x
1308: 7a 3b     addw  ya,$3b
130a: da 38     movw  $38,ya
130c: 6f        ret
; ARAM address to offset
130d: ba 38     movw  ya,$38
130f: 9a 3b     subw  ya,$3b
1311: d5 30 03  mov   $0330+x,a
1314: dd        mov   a,y
1315: d5 48 03  mov   $0348+x,a
1318: 6f        ret
;
1319: 8f f0 f1  mov   $f1,#$f0
131c: 8f 10 fa  mov   $fa,#$10        ; set timer0 latch to #$10 (500 Hz, 2ms)
131f: 8f 80 fb  mov   $fb,#$80        ; set timer1 latch to #$80 (62.5 Hz, 16ms)
1322: 8f f3 f1  mov   $f1,#$f3
1325: 8f 6c f2  mov   $f2,#$6c
1328: 8f e0 f3  mov   $f3,#$e0
132b: 8f 7d f2  mov   $f2,#$7d
132e: e4 f3     mov   a,$f3
1330: 28 0f     and   a,#$0f
1332: c4 2d     mov   $2d,a
1334: f0 08     beq   $133e
1336: e4 fe     mov   a,$fe
1338: f0 fc     beq   $1336
133a: 8b 2d     dec   $2d
133c: d0 f8     bne   $1336
133e: 8f 7d f2  mov   $f2,#$7d
1341: 8f 00 f3  mov   $f3,#$00
1344: 8f 6d f2  mov   $f2,#$6d
1347: 8f ff f3  mov   $f3,#$ff
134a: 8f 00 2a  mov   $2a,#$00
134d: 6f        ret
;
134e: e8 00     mov   a,#$00
1350: c4 23     mov   $23,a
1352: c4 24     mov   $24,a
1354: c4 25     mov   $25,a
1356: c4 26     mov   $26,a
1358: c4 27     mov   $27,a
135a: c4 21     mov   $21,a
135c: c4 1f     mov   $1f,a
135e: c4 2d     mov   $2d,a
1360: c4 2c     mov   $2c,a
1362: c4 2e     mov   $2e,a
1364: c4 35     mov   $35,a
1366: c4 20     mov   $20,a
1368: c4 22     mov   $22,a
136a: e8 78     mov   a,#$78
136c: c4 28     mov   $28,a
136e: c4 29     mov   $29,a
1370: e8 02     mov   a,#$02
1372: 8d 5d     mov   y,#$5d
1374: 3f 75 14  call  $1475
1377: e8 00     mov   a,#$00
1379: 3f 9f 13  call  $139f
137c: a2 23     set5  $23
137e: e8 ff     mov   a,#$ff
1380: cd 00     mov   x,#$00
1382: d5 f8 08  mov   $08f8+x,a
1385: 3d        inc   x
1386: c8 07     cmp   x,#$07
1388: 90 f8     bcc   $1382
138a: cd 00     mov   x,#$00
138c: d5 e8 08  mov   $08e8+x,a
138f: 3d        inc   x
1390: c8 08     cmp   x,#$08
1392: 90 f8     bcc   $138c
1394: cd 00     mov   x,#$00
1396: d5 48 03  mov   $0348+x,a
1399: 3d        inc   x
139a: c8 18     cmp   x,#$18
139c: 90 f8     bcc   $1396
139e: 6f        ret
;
139f: c4 2d     mov   $2d,a
13a1: 69 2d 2a  cmp   ($2a),($2d)
13a4: b0 03     bcs   $13a9
13a6: fa 2a 2d  mov   ($2d),($2a)
13a9: 8d 7d     mov   y,#$7d
13ab: cb f2     mov   $f2,y
13ad: e4 f3     mov   a,$f3
13af: 64 2d     cmp   a,$2d
13b1: f0 32     beq   $13e5
13b3: 28 0f     and   a,#$0f
13b5: 48 ff     eor   a,#$ff
13b7: f3 2c 03  bbc7  $2c,$13bd
13ba: 60        clrc
13bb: 84 2c     adc   a,$2c
13bd: c4 2c     mov   $2c,a
13bf: e8 00     mov   a,#$00
13c1: 8d 3c     mov   y,#$3c
13c3: 3f 75 14  call  $1475
13c6: 8d 2c     mov   y,#$2c
13c8: 3f 75 14  call  $1475
13cb: 8d 0d     mov   y,#$0d
13cd: 3f 75 14  call  $1475
13d0: 8d 4d     mov   y,#$4d
13d2: 3f 75 14  call  $1475
13d5: e4 23     mov   a,$23
13d7: 08 20     or    a,#$20
13d9: 8d 6c     mov   y,#$6c
13db: 3f 75 14  call  $1475
13de: 8d 7d     mov   y,#$7d
13e0: e4 2d     mov   a,$2d
13e2: 3f 75 14  call  $1475
13e5: 1c        asl   a
13e6: 1c        asl   a
13e7: 1c        asl   a
13e8: 48 ff     eor   a,#$ff
13ea: 8d 6d     mov   y,#$6d
13ec: 3f 75 14  call  $1475
13ef: 8f 00 2e  mov   $2e,#$00
13f2: 6f        ret
;
13f3: 8f 80 1b  mov   $1b,#$80
13f6: 8f 00 1c  mov   $1c,#$00
13f9: d8 01     mov   $01,x
13fb: f5 00 03  mov   a,$0300+x
13fe: 28 07     and   a,#$07
1400: c4 00     mov   $00,a
1402: fd        mov   y,a
1403: f6 e8 08  mov   a,$08e8+y
1406: 68 ff     cmp   a,#$ff
1408: d0 30     bne   $143a
140a: 3f 42 14  call  $1442
140d: e4 1c     mov   a,$1c
140f: 48 ff     eor   a,#$ff
1411: 24 1f     and   a,$1f
1413: c4 1f     mov   $1f,a
1415: f5 a8 03  mov   a,$03a8+x
1418: 28 01     and   a,#$01
141a: f0 03     beq   $141f
141c: 09 1c 1f  or    ($1f),($1c)
141f: 09 1c 1e  or    ($1e),($1c)
1422: eb 36     mov   y,$36
1424: f6 f8 08  mov   a,$08f8+y
1427: 28 0f     and   a,#$0f
1429: 8d 10     mov   y,#$10
142b: cf        mul   ya
142c: 60        clrc
142d: 95 f0 03  adc   a,$03f0+x
1430: fd        mov   y,a
1431: f6 3d 0a  mov   a,$0a3d+y
1434: 8d 04     mov   y,#$04
1436: 3f 64 14  call  $1464             ; set SRCN
1439: 6f        ret
143a: 64 01     cmp   a,$01
143c: d0 03     bne   $1441
143e: 3f 42 14  call  $1442
1441: 6f        ret
;
1442: e4 01     mov   a,$01
1444: d6 e8 08  mov   $08e8+y,a
1447: e4 00     mov   a,$00
1449: 9f        xcn   a
144a: c4 1b     mov   $1b,a
144c: eb 00     mov   y,$00
144e: f6 54 14  mov   a,$1454+y
1451: c4 1c     mov   $1c,a
1453: 6f        ret
;
1454: db $01,$02,$04,$08,$10,$20,$40,$80
145c: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; set Y to DSP register A of voice $1b
1464: 2d        push  a
1465: c4 00     mov   $00,a
1467: e4 1b     mov   a,$1b
1469: 30 08     bmi   $1473
;
146b: dd        mov   a,y
146c: 04 1b     or    a,$1b
146e: c4 f2     mov   $f2,a
1470: fa 00 f3  mov   ($f3),($00)
;
1473: ae        pop   a
1474: 6f        ret
; set DSP register Y to A
1475: cb f2     mov   $f2,y
1477: c4 f3     mov   $f3,a
1479: 6f        ret
;
147a: 8f 65 f5  mov   $f5,#$65
147d: 8f 61 f6  mov   $f6,#$61
1480: 8f 74 f7  mov   $f7,#$74
1483: 6f        ret
1484: 6f        ret
; dispatch vcmd A
1485: 80        setc
1486: a8 d2     sbc   a,#$d2
1488: 1c        asl   a
1489: 5d        mov   x,a
148a: e4 37     mov   a,$37
148c: 1f 8f 14  jmp   ($148f+x)
; vcmd dispatch table
148f: dw $1507  ; d2 - portamento on
1491: dw $1519  ; d3 - portamento off
1493: dw $1537  ; d4 - set patch
1495: dw $15a7  ; d5
1497: dw $15a9  ; d6 - pan
1499: dw $15b8  ; d7 - pan fade
149b: dw $15d6  ; d8 - vibrato on
149d: dw $15f2  ; d9 - vibrato fade
149f: dw $1607  ; da - vibrato off
14a1: dw $1615  ; db - master volume
14a3: dw $1623  ; dc - master volume fade
14a5: dw $1642  ; dd - tempo
14a7: dw $1523  ; de
14a9: dw $164e  ; df - global transpose
14ab: dw $1657  ; e0 - per-voice transpose
14ad: dw $165f  ; e1 - tremolo on
14af: dw $1673  ; e2 - tremolo off
14b1: dw $167b  ; e3 - volume
14b3: dw $1688  ; e4 - volume fade
14b5: dw $16a6  ; e5
14b7: dw $16c6  ; e6 - pitch envelope (to)
14b9: dw $16df  ; e7 - pitch envelope (from)
14bb: dw $16f8  ; e8 - pitch envelope off
14bd: dw $1703  ; e9 - tuning
14bf: dw $170b  ; ea - set echo level
14c1: dw $1726  ; eb - set echo param
14c3: dw $152d  ; ec
14c5: dw $17c2  ; ed - echo off
14c7: dw $17d5  ; ee - echo on
14c9: dw $17e2  ; ef - set echo FIR
14cb: dw $183d  ; f0 - set ADSR
14cd: dw $1864  ; f1 - set duration/velocity
14cf: dw $187f  ; f2 - jump
14d1: dw $188f  ; f3 - call subroutine
14d3: dw $18ac  ; f4 - return from subroutine
14d5: dw $18e6  ; f5 - noise on
14d7: dw $18f0  ; f6 - noise off
14d9: dw $18fc  ; f7 - set noise clock
14db: dw $1906  ; f8
14dd: dw $1edd  ; f9 - do subcmd
                ; fa-ff - crash
; vcmd lengths
14df: db         $00,$00,$01,$07,$01,$02 ; d2-d7
14e5: db $03,$01,$00,$01,$02,$01,$00,$01 ; d8-df
14ed: db $01,$03,$00,$01,$02,$03,$03,$03 ; e0-e7
14f5: db $00,$01,$02,$03,$00,$00,$00,$08 ; e8-ef
14fd: db $02,$01,$02,$02,$00,$00,$00,$01 ; f0-f7
1505: db $00,$01                         ; f8-f9
; vcmd d2 - portamento on
1507: 5d        mov   x,a
1508: f5 a8 03  mov   a,$03a8+x
150b: 08 80     or    a,#$80
150d: d5 a8 03  mov   $03a8+x,a
1510: f5 a8 03  mov   a,$03a8+x
1513: 28 df     and   a,#$df
1515: d5 a8 03  mov   $03a8+x,a
1518: 6f        ret
; vcmd d3 - portamento off
1519: 5d        mov   x,a
151a: f5 a8 03  mov   a,$03a8+x
151d: 28 7f     and   a,#$7f
151f: d5 a8 03  mov   $03a8+x,a
1522: 6f        ret
; vcmd de
1523: 5d        mov   x,a
1524: f5 c0 03  mov   a,$03c0+x
1527: 08 80     or    a,#$80
1529: d5 c0 03  mov   $03c0+x,a
152c: 6f        ret
; vcmd ec
152d: 5d        mov   x,a
152e: f5 c0 03  mov   a,$03c0+x
1531: 28 7f     and   a,#$7f
1533: d5 c0 03  mov   $03c0+x,a
1536: 6f        ret
; vcmd d4 - set patch
1537: f8 36     mov   x,$36
1539: f5 df 09  mov   a,$09df+x
153c: fd        mov   y,a
153d: f5 d8 09  mov   a,$09d8+x         ; load instrument table offset in YA
1540: 7a 3b     addw  ya,$3b            ; relative offset to address (add sequence start address)
1542: da 08     movw  $08,ya
1544: f8 37     mov   x,$37
1546: 3f f0 12  call  $12f0             ; read arg1: set patch
1549: 8d 06     mov   y,#$06
154b: cf        mul   ya                ; offset = patch * 6
154c: fd        mov   y,a               ; use lower 8 bits
154d: 6d        push  y
154e: f7 08     mov   a,($08)+y         ; offset +0: sample index
1550: d5 f0 03  mov   $03f0+x,a
1553: eb 36     mov   y,$36
1555: f6 f8 08  mov   a,$08f8+y
1558: 28 0f     and   a,#$0f
155a: 8d 10     mov   y,#$10
155c: cf        mul   ya
155d: ee        pop   y
155e: 60        clrc
155f: 97 08     adc   a,($08)+y         ; offset +0: sample index + (n * 0x10)
1561: fc        inc   y
1562: 6d        push  y
1563: fd        mov   y,a
1564: f6 3d 0a  mov   a,$0a3d+y         ; read actual SRCN
1567: 8d 04     mov   y,#$04
1569: 3f 64 14  call  $1464             ; set SRCN
156c: ee        pop   y
156d: f7 08     mov   a,($08)+y         ; offset +1: ADSR(1)
156f: fc        inc   y
1570: 2d        push  a
1571: 28 0f     and   a,#$0f
1573: d5 08 04  mov   $0408+x,a         ; AR
1576: ae        pop   a
1577: 28 70     and   a,#$70
1579: d5 20 04  mov   $0420+x,a         ; DR
157c: f7 08     mov   a,($08)+y         ; offset +2: ADSR(2)
157e: fc        inc   y
157f: 2d        push  a
1580: 28 1f     and   a,#$1f
1582: d5 50 04  mov   $0450+x,a         ; SR
1585: d5 68 04  mov   $0468+x,a         ; SR
1588: ae        pop   a
1589: 28 e0     and   a,#$e0
158b: d5 38 04  mov   $0438+x,a         ; SL
158e: f7 08     mov   a,($08)+y         ; offset +3: 
1590: fc        inc   y
1591: 6d        push  y
1592: 8d 07     mov   y,#$07
1594: 3f 64 14  call  $1464             ; set GAIN
1597: ee        pop   y
1598: f7 08     mov   a,($08)+y         ; offset +4: pitch multiplier (fraction)
159a: fc        inc   y
159b: d5 98 04  mov   $0498+x,a
159e: f7 08     mov   a,($08)+y         ; offset +5: pitch multiplier (integer)
15a0: d5 80 04  mov   $0480+x,a
15a3: 3f c6 11  call  $11c6
15a6: 6f        ret
; vcmd d5
15a7: 5d        mov   x,a
15a8: 6f        ret
; vcmd d6 - pan
15a9: 5d        mov   x,a
15aa: 3f f0 12  call  $12f0
15ad: 28 1f     and   a,#$1f
15af: d5 18 06  mov   $0618+x,a
15b2: e8 00     mov   a,#$00
15b4: d5 00 06  mov   $0600+x,a
15b7: 6f        ret
; vcmd d7 - pan fade
15b8: 5d        mov   x,a
15b9: 3f f0 12  call  $12f0
15bc: d5 78 06  mov   $0678+x,a
15bf: 2d        push  a
15c0: 3f f0 12  call  $12f0
15c3: d5 30 06  mov   $0630+x,a
15c6: 80        setc
15c7: b5 18 06  sbc   a,$0618+x
15ca: ee        pop   y
15cb: 3f ca 12  call  $12ca
15ce: d5 48 06  mov   $0648+x,a
15d1: dd        mov   a,y
15d2: d5 60 06  mov   $0660+x,a
15d5: 6f        ret
; vcmd d8 - vibrato on
15d6: 5d        mov   x,a
15d7: 3f f0 12  call  $12f0
15da: d5 c8 07  mov   $07c8+x,a
15dd: 3f f0 12  call  $12f0
15e0: d5 b0 07  mov   $07b0+x,a
15e3: 3f f0 12  call  $12f0
15e6: d5 10 08  mov   $0810+x,a
15e9: d5 f8 07  mov   $07f8+x,a
15ec: e8 00     mov   a,#$00
15ee: d5 68 07  mov   $0768+x,a
15f1: 6f        ret
; vcmd d9 - vibrato fade
15f2: 5d        mov   x,a
15f3: 3f f0 12  call  $12f0
15f6: d5 68 07  mov   $0768+x,a
15f9: 2d        push  a
15fa: 8d 00     mov   y,#$00
15fc: f5 10 08  mov   a,$0810+x
15ff: ce        pop   x
1600: 9e        div   ya,x
1601: f8 37     mov   x,$37
1603: d5 28 08  mov   $0828+x,a
1606: 6f        ret
; vcmd da - vibrato off
1607: f8 37     mov   x,$37
1609: e8 00     mov   a,#$00
160b: d5 10 08  mov   $0810+x,a
160e: d5 f8 07  mov   $07f8+x,a
1611: d5 68 07  mov   $0768+x,a
1614: 6f        ret
; vcmd db - master volume
1615: f8 36     mov   x,$36
1617: e8 00     mov   a,#$00
1619: d5 1b 09  mov   $091b+x,a
161c: 3f f0 12  call  $12f0
161f: d5 22 09  mov   $0922+x,a
1622: 6f        ret
; vcmd dc - master volume fade
1623: f8 36     mov   x,$36
1625: 3f f0 12  call  $12f0
1628: d5 06 09  mov   $0906+x,a
162b: 2d        push  a
162c: 3f f0 12  call  $12f0
162f: d5 29 09  mov   $0929+x,a
1632: 80        setc
1633: b5 22 09  sbc   a,$0922+x
1636: ee        pop   y
1637: 3f ca 12  call  $12ca
163a: d5 0d 09  mov   $090d+x,a
163d: dd        mov   a,y
163e: d5 14 09  mov   $0914+x,a
1641: 6f        ret
; vcmd dd - tempo
1642: f8 36     mov   x,$36
1644: 3f f0 12  call  $12f0
1647: d5 ae 09  mov   $09ae+x,a
164a: 6f        ret
;
164b: f8 36     mov   x,$36
164d: 6f        ret
; vcmd df - global transpose
164e: f8 36     mov   x,$36
1650: 3f f0 12  call  $12f0
1653: d5 e6 09  mov   $09e6+x,a
1656: 6f        ret
; vcmd e0 - per-voice transpose
1657: 5d        mov   x,a
1658: 3f f0 12  call  $12f0
165b: d5 d0 08  mov   $08d0+x,a
165e: 6f        ret
; vcmd e1 - tremolo on
165f: 5d        mov   x,a
1660: 3f f0 12  call  $12f0
1663: d5 70 08  mov   $0870+x,a
1666: 3f f0 12  call  $12f0
1669: d5 58 08  mov   $0858+x,a
166c: 3f f0 12  call  $12f0
166f: d5 a0 08  mov   $08a0+x,a
1672: 6f        ret
; vcmd e2 - tremolo off
1673: f8 37     mov   x,$37
1675: e8 00     mov   a,#$00
1677: d5 a0 08  mov   $08a0+x,a
167a: 6f        ret
; vcmd e3 - volume
167b: 5d        mov   x,a
167c: 3f f0 12  call  $12f0
167f: d5 e8 05  mov   $05e8+x,a
1682: e8 00     mov   a,#$00
1684: d5 d0 05  mov   $05d0+x,a
1687: 6f        ret
; vcmd e4 - volume fade
1688: 5d        mov   x,a
1689: 3f f0 12  call  $12f0
168c: d5 70 05  mov   $0570+x,a
168f: 2d        push  a
1690: 3f f0 12  call  $12f0
1693: d5 b8 05  mov   $05b8+x,a
1696: 80        setc
1697: b5 e8 05  sbc   a,$05e8+x
169a: ee        pop   y
169b: 3f ca 12  call  $12ca
169e: d5 88 05  mov   $0588+x,a
16a1: dd        mov   a,y
16a2: d5 a0 05  mov   $05a0+x,a
16a5: 6f        ret
; vcmd e5
16a6: f8 37     mov   x,$37
16a8: 3f f0 12  call  $12f0
16ab: d5 d8 06  mov   $06d8+x,a
16ae: 3f f0 12  call  $12f0
16b1: d5 a8 06  mov   $06a8+x,a
16b4: 3f f0 12  call  $12f0
16b7: f8 36     mov   x,$36
16b9: 60        clrc
16ba: 95 e6 09  adc   a,$09e6+x
16bd: f8 37     mov   x,$37
16bf: 95 d0 08  adc   a,$08d0+x
16c2: 3f 36 0e  call  $0e36
16c5: 6f        ret
; vcmd e6 - pitch envelope (to)
16c6: 5d        mov   x,a
16c7: e8 01     mov   a,#$01
16c9: d5 f0 06  mov   $06f0+x,a
16cc: 3f f0 12  call  $12f0
16cf: d5 c0 06  mov   $06c0+x,a
16d2: 3f f0 12  call  $12f0
16d5: d5 90 06  mov   $0690+x,a
16d8: 3f f0 12  call  $12f0
16db: d5 08 07  mov   $0708+x,a
16de: 6f        ret
; vcmd e7 - pitch envelope (from)
16df: 5d        mov   x,a
16e0: e8 00     mov   a,#$00
16e2: d5 f0 06  mov   $06f0+x,a
16e5: 3f f0 12  call  $12f0
16e8: d5 c0 06  mov   $06c0+x,a
16eb: 3f f0 12  call  $12f0
16ee: d5 90 06  mov   $0690+x,a
16f1: 3f f0 12  call  $12f0
16f4: d5 08 07  mov   $0708+x,a
16f7: 6f        ret
; vcmd e8 - pitch envelope off
16f8: f8 37     mov   x,$37
16fa: e8 00     mov   a,#$00
16fc: d5 90 06  mov   $0690+x,a
16ff: d5 a8 06  mov   $06a8+x,a
1702: 6f        ret
; vcmd e9 - tuning
1703: 5d        mov   x,a
1704: 3f f0 12  call  $12f0
1707: d5 40 05  mov   $0540+x,a
170a: 6f        ret
; vcmd ea - set echo level
170b: f8 36     mov   x,$36
170d: 3f f0 12  call  $12f0             ; echo vol L
1710: e8 00     mov   a,#$00
1712: da 24     movw  $24,ya
1714: dd        mov   a,y
1715: d5 3e 09  mov   $093e+x,a
1718: 3f f0 12  call  $12f0             ; echo vol R
171b: e8 00     mov   a,#$00
171d: da 26     movw  $26,ya
171f: dd        mov   a,y
1720: d5 45 09  mov   $0945+x,a
1723: b2 23     clr5  $23
1725: 6f        ret
; vcmd eb - set echo param
1726: f8 36     mov   x,$36
1728: 3f f0 12  call  $12f0             ; echo delay
172b: 28 0f     and   a,#$0f
172d: d5 30 09  mov   $0930+x,a
1730: 3f 9f 13  call  $139f
1733: f8 36     mov   x,$36
1735: 3f f0 12  call  $12f0             ; echo feedback
1738: d5 37 09  mov   $0937+x,a
173b: c4 21     mov   $21,a
173d: 3f f0 12  call  $12f0             ; FIR preset #
1740: 1c        asl   a
1741: 1c        asl   a
1742: 1c        asl   a
1743: 5d        mov   x,a
1744: eb 36     mov   y,$36
1746: 8f 0f f2  mov   $f2,#$0f
1749: f5 a1 17  mov   a,$17a1+x
174c: d6 4c 09  mov   $094c+y,a
174f: c4 f3     mov   $f3,a
1751: 8f 1f f2  mov   $f2,#$1f
1754: f5 a2 17  mov   a,$17a2+x
1757: d6 53 09  mov   $0953+y,a
175a: c4 f3     mov   $f3,a
175c: 8f 2f f2  mov   $f2,#$2f
175f: f5 a3 17  mov   a,$17a3+x
1762: d6 5a 09  mov   $095a+y,a
1765: c4 f3     mov   $f3,a
1767: 8f 3f f2  mov   $f2,#$3f
176a: f5 a4 17  mov   a,$17a4+x
176d: d6 61 09  mov   $0961+y,a
1770: c4 f3     mov   $f3,a
1772: 8f 4f f2  mov   $f2,#$4f
1775: f5 a5 17  mov   a,$17a5+x
1778: d6 68 09  mov   $0968+y,a
177b: c4 f3     mov   $f3,a
177d: 8f 5f f2  mov   $f2,#$5f
1780: f5 a6 17  mov   a,$17a6+x
1783: d6 6f 09  mov   $096f+y,a
1786: c4 f3     mov   $f3,a
1788: 8f 6f f2  mov   $f2,#$6f
178b: f5 a7 17  mov   a,$17a7+x
178e: d6 76 09  mov   $0976+y,a
1791: c4 f3     mov   $f3,a
1793: 8f 7f f2  mov   $f2,#$7f
1796: f5 a8 17  mov   a,$17a8+x
1799: d6 7d 09  mov   $097d+y,a
179c: c4 f3     mov   $f3,a
179e: b2 23     clr5  $23
17a0: 6f        ret
; echo FIR preset
17a1: $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
17a9: $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
17b1: $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
17b9: $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03
;
17c1: 6f        ret
; vcmd ed - echo off
17c2: 5d        mov   x,a
17c3: f5 a8 03  mov   a,$03a8+x
17c6: 28 fe     and   a,#$fe
17c8: d5 a8 03  mov   $03a8+x,a
17cb: fa 1c 00  mov   ($00),($1c)
17ce: 58 ff 00  eor   $00,#$ff
17d1: 29 00 1f  and   ($1f),($00)
17d4: 6f        ret
; vcmd ee - echo on
17d5: 5d        mov   x,a
17d6: f5 a8 03  mov   a,$03a8+x
17d9: 08 01     or    a,#$01
17db: d5 a8 03  mov   $03a8+x,a
17de: 09 1c 1f  or    ($1f),($1c)
17e1: 6f        ret
; vcmd ef - set echo FIR
17e2: f8 36     mov   x,$36
17e4: 3f f0 12  call  $12f0
17e7: 8f 0f f2  mov   $f2,#$0f
17ea: d5 4c 09  mov   $094c+x,a
17ed: c4 f3     mov   $f3,a
17ef: 3f f0 12  call  $12f0
17f2: 8f 1f f2  mov   $f2,#$1f
17f5: d5 53 09  mov   $0953+x,a
17f8: c4 f3     mov   $f3,a
17fa: 3f f0 12  call  $12f0
17fd: 8f 2f f2  mov   $f2,#$2f
1800: d5 5a 09  mov   $095a+x,a
1803: c4 f3     mov   $f3,a
1805: 3f f0 12  call  $12f0
1808: 8f 3f f2  mov   $f2,#$3f
180b: d5 61 09  mov   $0961+x,a
180e: c4 f3     mov   $f3,a
1810: 3f f0 12  call  $12f0
1813: 8f 4f f2  mov   $f2,#$4f
1816: d5 68 09  mov   $0968+x,a
1819: c4 f3     mov   $f3,a
181b: 3f f0 12  call  $12f0
181e: 8f 5f f2  mov   $f2,#$5f
1821: d5 6f 09  mov   $096f+x,a
1824: c4 f3     mov   $f3,a
1826: 3f f0 12  call  $12f0
1829: 8f 6f f2  mov   $f2,#$6f
182c: d5 76 09  mov   $0976+x,a
182f: c4 f3     mov   $f3,a
1831: 3f f0 12  call  $12f0
1834: 8f 7f f2  mov   $f2,#$7f
1837: d5 7d 09  mov   $097d+x,a
183a: c4 f3     mov   $f3,a
183c: 6f        ret
; vcmd f0 - set ADSR
183d: f8 37     mov   x,$37
183f: 3f f0 12  call  $12f0
1842: 2d        push  a
1843: 28 0f     and   a,#$0f
1845: d5 08 04  mov   $0408+x,a
1848: ae        pop   a
1849: 28 70     and   a,#$70
184b: d5 20 04  mov   $0420+x,a
184e: 3f f0 12  call  $12f0
1851: 2d        push  a
1852: 28 1f     and   a,#$1f
1854: d5 50 04  mov   $0450+x,a
1857: d5 68 04  mov   $0468+x,a
185a: ae        pop   a
185b: 28 e0     and   a,#$e0
185d: d5 38 04  mov   $0438+x,a
1860: 3f c6 11  call  $11c6
1863: 6f        ret
; vcmd f1 - set duration/velocity
1864: f8 37     mov   x,$37
1866: 3f f0 12  call  $12f0
1869: 2d        push  a
186a: 9f        xcn   a
186b: 28 0f     and   a,#$0f            ; upper 4 bit
186d: fd        mov   y,a
186e: f6 82 12  mov   a,$1282+y         ; set duration from table
1871: d5 10 05  mov   $0510+x,a
1874: ae        pop   a
1875: 28 0f     and   a,#$0f            ; lower 4 bit
1877: fd        mov   y,a
1878: f6 8a 12  mov   a,$128a+y         ; set velocity from table
187b: d5 58 05  mov   $0558+x,a
187e: 6f        ret
; vcmd f2 - jump
187f: 5d        mov   x,a
1880: 3f f0 12  call  $12f0
1883: 2d        push  a
1884: 3f f0 12  call  $12f0
1887: c4 39     mov   $39,a
1889: ae        pop   a
188a: c4 38     mov   $38,a             ; set arg1/2 (new offset) to $38/9
188c: 5f dc 18  jmp   $18dc             ; convert offset to address
; vcmd f3 - call subroutine
188f: 5d        mov   x,a
1890: 3f f0 12  call  $12f0
1893: 2d        push  a
1894: 3f f0 12  call  $12f0
1897: 2d        push  a
1898: ba 38     movw  ya,$38
189a: 9a 3b     subw  ya,$3b            ; set current offset to YA
189c: d5 60 03  mov   $0360+x,a
189f: dd        mov   a,y
18a0: d5 78 03  mov   $0378+x,a
18a3: ae        pop   a
18a4: c4 39     mov   $39,a
18a6: ae        pop   a
18a7: c4 38     mov   $38,a             ; set arg1/2 (new offset) to $38/9
18a9: 5f dc 18  jmp   $18dc             ; convert offset to address
; vcmd f4 - return from subroutine
18ac: 5d        mov   x,a
18ad: f5 60 03  mov   a,$0360+x
18b0: c4 38     mov   $38,a
18b2: f5 78 03  mov   a,$0378+x
18b5: c4 39     mov   $39,a
18b7: 5f dc 18  jmp   $18dc
; f9 subcmd 00 - set repeat count
18ba: 5d        mov   x,a
18bb: 3f f0 12  call  $12f0
18be: d5 90 03  mov   $0390+x,a
18c1: 6f        ret
; f9 subcmd 01 - conditional loop
18c2: 5d        mov   x,a
18c3: 3f f0 12  call  $12f0
18c6: 2d        push  a
18c7: 3f f0 12  call  $12f0
18ca: 2d        push  a
18cb: f5 90 03  mov   a,$0390+x
18ce: f0 13     beq   $18e3             ; jump if the counter is non-zero
18d0: 9c        dec   a
18d1: d5 90 03  mov   $0390+x,a
18d4: f0 0d     beq   $18e3
18d6: ae        pop   a
18d7: c4 39     mov   $39,a
18d9: ae        pop   a
18da: c4 38     mov   $38,a
; convert offset in $38/9 to address
18dc: ba 3b     movw  ya,$3b
18de: 7a 38     addw  ya,$38
18e0: da 38     movw  $38,ya
18e2: 6f        ret
; clean up arg1/2 on stack
18e3: ae        pop   a
18e4: ae        pop   a
18e5: 6f        ret
; vcmd f5 - noise on
18e6: 5d        mov   x,a
18e7: f5 a8 03  mov   a,$03a8+x
18ea: 08 10     or    a,#$10
18ec: d5 a8 03  mov   $03a8+x,a
18ef: 6f        ret
; vcmd f6 - noise off
18f0: 5d        mov   x,a
18f1: f5 a8 03  mov   a,$03a8+x
18f4: 28 f7     and   a,#$f7
18f6: 28 ef     and   a,#$ef
18f8: d5 a8 03  mov   $03a8+x,a
18fb: 6f        ret
; vcmd f7 - set noise clock
18fc: 5d        mov   x,a
18fd: 3f f0 12  call  $12f0
1900: 28 1f     and   a,#$1f
1902: d5 d8 03  mov   $03d8+x,a
1905: 6f        ret
; vcmd f8
1906: 5d        mov   x,a
1907: f5 a8 03  mov   a,$03a8+x
190a: 08 08     or    a,#$08
190c: d5 a8 03  mov   $03a8+x,a
190f: 6f        ret
; f9 subcmd 02 - nop
1910: 5d        mov   x,a
1911: 6f        ret
; f9 subcmd 03 - set attack rate
1912: 5d        mov   x,a
1913: 3f f0 12  call  $12f0
1916: 28 0f     and   a,#$0f
1918: d5 08 04  mov   $0408+x,a
191b: 6f        ret
; f9 subcmd 04 - set decay rate
191c: 5d        mov   x,a
191d: 3f f0 12  call  $12f0
1920: 1c        asl   a
1921: 1c        asl   a
1922: 1c        asl   a
1923: 1c        asl   a
1924: 28 70     and   a,#$70
1926: d5 20 04  mov   $0420+x,a
1929: 6f        ret
; f9 subcmd 05 - set sustain level
192a: 5d        mov   x,a
192b: 3f f0 12  call  $12f0
192e: 1c        asl   a
192f: 1c        asl   a
1930: 1c        asl   a
1931: 1c        asl   a
1932: 1c        asl   a
1933: 28 e0     and   a,#$e0
1935: d5 38 04  mov   $0438+x,a
1938: 6f        ret
; f9 subcmd 06 - set release rate
1939: 5d        mov   x,a
193a: 3f f0 12  call  $12f0
193d: 28 1f     and   a,#$1f
193f: d5 50 04  mov   $0450+x,a
1942: 6f        ret
; f9 subcmd 07 - set sustain rate
1943: 5d        mov   x,a
1944: 3f f0 12  call  $12f0
1947: 28 1f     and   a,#$1f
1949: d5 68 04  mov   $0468+x,a
194c: 6f        ret
; f9 subcmd 09 - surround effect
194d: 5d        mov   x,a
194e: f5 a8 03  mov   a,$03a8+x
1951: 28 fb     and   a,#$fb
1953: 28 fd     and   a,#$fd
1955: c4 00     mov   $00,a
1957: 3f f0 12  call  $12f0
195a: f0 03     beq   $195f
195c: 18 04 00  or    $00,#$04
195f: 3f f0 12  call  $12f0
1962: f0 03     beq   $1967
1964: 18 02 00  or    $00,#$02
1967: e4 00     mov   a,$00
1969: d5 a8 03  mov   $03a8+x,a
196c: 6f        ret
;
196d: fa 30 f4  mov   ($f4),($30)
1970: e4 f4     mov   a,$f4
1972: 64 f4     cmp   a,$f4
1974: d0 f7     bne   $196d
1976: 64 30     cmp   a,$30
1978: f0 14     beq   $198e
197a: ab 30     inc   $30
197c: e4 f5     mov   a,$f5
197e: 64 f5     cmp   a,$f5
1980: d0 fa     bne   $197c
1982: fa f6 31  mov   ($31),($f6)
1985: fa f7 32  mov   ($32),($f7)
1988: 3f 95 19  call  $1995
198b: 5f 6d 19  jmp   $196d
198e: eb fd     mov   y,$fd
1990: f0 db     beq   $196d
1992: cb 2f     mov   $2f,y
1994: 6f        ret
;
1995: 68 0f     cmp   a,#$0f
1997: b0 05     bcs   $199e
1999: 1c        asl   a
199a: 5d        mov   x,a
199b: 1f a2 19  jmp   ($19a2+x)
; cpu cmd 00
199e: fa 30 f4  mov   ($f4),($30)
19a1: 6f        ret
; cpu cmd dispatch table
19a2: dw $199e  ; 00
19a4: dw $19c0  ; 01
19a6: dw $19ef  ; 02
19a8: dw $1b06  ; 03
19aa: dw $1b18  ; 04
19ac: dw $1b23  ; 05
19ae: dw $1b3e  ; 06
19b0: dw $1b62  ; 07
19b2: dw $1b7d  ; 08
19b4: dw $1b8d  ; 09
19b6: dw $1b94  ; 0a
19b8: dw $19cf  ; 0b
19ba: dw $19fe  ; 0c
19bc: dw $1a2a  ; 0d
19be: dw $1b0f  ; 0e
; cpu cmd 01
19c0: 3f cf 19  call  $19cf
19c3: 3f f4 1a  call  $1af4
19c6: da 0e     movw  $0e,ya
19c8: 3f d5 1a  call  $1ad5
19cb: 3f 3d 1a  call  $1a3d
19ce: 6f        ret
; cpu cmd 0b
19cf: fa 30 f4  mov   ($f4),($30)
19d2: 3f f4 1a  call  $1af4
19d5: 1c        asl   a
19d6: 1c        asl   a
19d7: 5d        mov   x,a
19d8: 3f f4 1a  call  $1af4
19db: da 0c     movw  $0c,ya
19dd: d5 00 02  mov   $0200+x,a
19e0: dd        mov   a,y
19e1: d5 01 02  mov   $0201+x,a
19e4: 3f f4 1a  call  $1af4
19e7: d5 02 02  mov   $0202+x,a
19ea: dd        mov   a,y
19eb: d5 03 02  mov   $0203+x,a
19ee: 6f        ret
; cpu cmd 02
19ef: 3f fe 19  call  $19fe
19f2: 3f f4 1a  call  $1af4
19f5: da 0e     movw  $0e,ya
19f7: 3f d5 1a  call  $1ad5
19fa: 3f 3d 1a  call  $1a3d
19fd: 6f        ret
; cpu cmd 0c
19fe: fa 30 f4  mov   ($f4),($30)
1a01: 3f f4 1a  call  $1af4
1a04: 2d        push  a
1a05: 8d 10     mov   y,#$10
1a07: cf        mul   ya
1a08: 5d        mov   x,a
1a09: 8f 08 00  mov   $00,#$08
1a0c: 3f f4 1a  call  $1af4
1a0f: d5 3d 0a  mov   $0a3d+x,a
1a12: dd        mov   a,y
1a13: d5 3e 0a  mov   $0a3e+x,a
1a16: 3d        inc   x
1a17: 3d        inc   x
1a18: 8b 00     dec   $00
1a1a: d0 f0     bne   $1a0c
1a1c: ce        pop   x
1a1d: 3f f4 1a  call  $1af4
1a20: da 0c     movw  $0c,ya
1a22: d5 25 0a  mov   $0a25+x,a
1a25: dd        mov   a,y
1a26: d5 31 0a  mov   $0a31+x,a
1a29: 6f        ret
; cpu cmd 0d
1a2a: fa 30 f4  mov   ($f4),($30)
1a2d: ba 31     movw  ya,$31
1a2f: da 0c     movw  $0c,ya
1a31: 3f f4 1a  call  $1af4
1a34: da 0e     movw  $0e,ya
1a36: 3f d5 1a  call  $1ad5
1a39: 3f 3d 1a  call  $1a3d
1a3c: 6f        ret
;
1a3d: e4 0c     mov   a,$0c
1a3f: c5 8f 1a  mov   $1a8f,a
1a42: c5 97 1a  mov   $1a97,a
1a45: c5 a4 1a  mov   $1aa4,a
1a48: e4 0d     mov   a,$0d
1a4a: c5 90 1a  mov   $1a90,a
1a4d: c5 98 1a  mov   $1a98,a
1a50: c5 a5 1a  mov   $1aa5,a
1a53: 8f 55 12  mov   $12,#$55
1a56: ba 0e     movw  ya,$0e
1a58: f0 56     beq   $1ab0
1a5a: ba 13     movw  ya,$13
1a5c: 9a 0e     subw  ya,$0e
1a5e: cb 0f     mov   $0f,y
1a60: 5d        mov   x,a
1a61: 8d 00     mov   y,#$00
1a63: 8b 12     dec   $12
1a65: d0 1b     bne   $1a82
1a67: 8f 55 12  mov   $12,#$55
1a6a: 4d        push  x
1a6b: 6d        push  y
1a6c: eb fd     mov   y,$fd
1a6e: f0 0e     beq   $1a7e
1a70: cb 2f     mov   $2f,y
1a72: 8f 00 1d  mov   $1d,#$00
1a75: 8f 00 1e  mov   $1e,#$00
1a78: 3f 4b 0b  call  $0b4b
1a7b: 3f 62 0b  call  $0b62
1a7e: ee        pop   y
1a7f: ce        pop   x
1a80: 2f e1     bra   $1a63
1a82: e4 f4     mov   a,$f4
1a84: 64 30     cmp   a,$30
1a86: f0 db     beq   $1a63
1a88: 64 f4     cmp   a,$f4
1a8a: d0 d7     bne   $1a63
1a8c: e4 f5     mov   a,$f5
1a8e: d6 6c a1  mov   $a16c+y,a
1a91: fc        inc   y
1a92: f0 1d     beq   $1ab1
1a94: e4 f6     mov   a,$f6
1a96: d6 6c a1  mov   $a16c+y,a
1a99: fc        inc   y
1a9a: f0 21     beq   $1abd
1a9c: e4 f7     mov   a,$f7
1a9e: ab 30     inc   $30
1aa0: fa 30 f4  mov   ($f4),($30)
1aa3: d6 6c a1  mov   $a16c+y,a
1aa6: fc        inc   y
1aa7: f0 20     beq   $1ac9
1aa9: 3d        inc   x
1aaa: d0 b7     bne   $1a63
1aac: ab 0f     inc   $0f
1aae: d0 b3     bne   $1a63
1ab0: 6f        ret
1ab1: ac 90 1a  inc   $1a90
1ab4: ac 98 1a  inc   $1a98
1ab7: ac a5 1a  inc   $1aa5
1aba: 5f 94 1a  jmp   $1a94
1abd: ac 90 1a  inc   $1a90
1ac0: ac 98 1a  inc   $1a98
1ac3: ac a5 1a  inc   $1aa5
1ac6: 5f 9c 1a  jmp   $1a9c
1ac9: ac 90 1a  inc   $1a90
1acc: ac 98 1a  inc   $1a98
1acf: ac a5 1a  inc   $1aa5
1ad2: 5f a9 1a  jmp   $1aa9
;
1ad5: 8f 23 11  mov   $11,#$23
1ad8: 8f 00 10  mov   $10,#$00
1adb: ba 0e     movw  ya,$0e
1add: 7a 0e     addw  ya,$0e
1adf: 7a 0e     addw  ya,$0e
1ae1: 7a 0c     addw  ya,$0c
1ae3: 5a 10     cmpw  ya,$10
1ae5: 90 0c     bcc   $1af3
1ae7: cb 10     mov   $10,y
1ae9: e8 ff     mov   a,#$ff
1aeb: 60        clrc
1aec: a4 10     sbc   a,$10
1aee: 5c        lsr   a
1aef: 5c        lsr   a
1af0: 5c        lsr   a
1af1: c4 2a     mov   $2a,a
1af3: 6f        ret
;
1af4: e4 f4     mov   a,$f4
1af6: 64 30     cmp   a,$30
1af8: f0 fa     beq   $1af4
1afa: 64 f4     cmp   a,$f4
1afc: d0 f6     bne   $1af4
1afe: ab 30     inc   $30
1b00: ba f6     movw  ya,$f6
1b02: fa 30 f4  mov   ($f4),($30)
1b05: 6f        ret
; cpu cmd 03
1b06: fa 30 f4  mov   ($f4),($30)
1b09: ba 31     movw  ya,$31
1b0b: 3f 9c 1b  call  $1b9c
1b0e: 6f        ret
; cpu cmd 0e
1b0f: fa 30 f4  mov   ($f4),($30)
1b12: ba 31     movw  ya,$31
1b14: 3f 5f 1c  call  $1c5f
1b17: 6f        ret
; cpu cmd 04
1b18: fa 30 f4  mov   ($f4),($30)
1b1b: e4 31     mov   a,$31
1b1d: c4 36     mov   $36,a
1b1f: 3f 04 1e  call  $1e04
1b22: 6f        ret
; cpu cmd 05
1b23: f8 31     mov   x,$31
1b25: c8 07     cmp   x,#$07
1b27: b0 0e     bcs   $1b37
1b29: f5 f8 08  mov   a,$08f8+x
1b2c: 68 ff     cmp   a,#$ff
1b2e: f0 07     beq   $1b37
1b30: 8f 00 f5  mov   $f5,#$00
1b33: fa 30 f4  mov   ($f4),($30)
1b36: 6f        ret
1b37: 8f ff f5  mov   $f5,#$ff
1b3a: fa 30 f4  mov   ($f4),($30)
1b3d: 6f        ret
; cpu cmd 06
1b3e: fa 30 f4  mov   ($f4),($30)
1b41: ba 31     movw  ya,$31
1b43: 3f 9c 1b  call  $1b9c
1b46: 3f f4 1a  call  $1af4
1b49: f8 36     mov   x,$36
1b4b: 8f 00 00  mov   $00,#$00
1b4e: 1c        asl   a
1b4f: 2b 00     rol   $00
1b51: 1c        asl   a
1b52: 2b 00     rol   $00
1b54: d5 a0 09  mov   $09a0+x,a
1b57: e4 00     mov   a,$00
1b59: d5 a7 09  mov   $09a7+x,a
1b5c: e8 01     mov   a,#$01
1b5e: d5 99 09  mov   $0999+x,a
1b61: 6f        ret
; cpu cmd 07
1b62: fa 30 f4  mov   ($f4),($30)
1b65: f8 31     mov   x,$31
1b67: e4 32     mov   a,$32
1b69: 8f 00 00  mov   $00,#$00
1b6c: 1c        asl   a
1b6d: 2b 00     rol   $00
1b6f: 1c        asl   a
1b70: 2b 00     rol   $00
1b72: d5 a0 09  mov   $09a0+x,a
1b75: e4 00     mov   a,$00
1b77: 08 80     or    a,#$80
1b79: d5 a7 09  mov   $09a7+x,a
1b7c: 6f        ret
; cpu cmd 08
1b7d: fa 30 f4  mov   ($f4),($30)
1b80: f8 31     mov   x,$31
1b82: e4 32     mov   a,$32
1b84: d5 84 09  mov   $0984+x,a
1b87: e8 01     mov   a,#$01
1b89: d5 8b 09  mov   $098b+x,a
1b8c: 6f        ret
; cpu cmd 09
1b8d: fa 30 f4  mov   ($f4),($30)
1b90: 8f ff 2b  mov   $2b,#$ff
1b93: 6f        ret
; cpu cmd 0a
1b94: fa 30 f4  mov   ($f4),($30)
1b97: e4 31     mov   a,$31
1b99: c4 35     mov   $35,a
1b9b: 6f        ret
;
1b9c: 6d        push  y
1b9d: c4 36     mov   $36,a
1b9f: 3f 20 1e  call  $1e20
1ba2: f8 36     mov   x,$36
1ba4: e8 00     mov   a,#$00
1ba6: d5 a0 09  mov   $09a0+x,a
1ba9: d5 a7 09  mov   $09a7+x,a
1bac: d5 8b 09  mov   $098b+x,a
1baf: d5 1b 09  mov   $091b+x,a
1bb2: e8 c0     mov   a,#$c0
1bb4: d5 22 09  mov   $0922+x,a
1bb7: e8 00     mov   a,#$00
1bb9: d5 06 09  mov   $0906+x,a
1bbc: d5 e6 09  mov   $09e6+x,a
1bbf: d5 b5 09  mov   $09b5+x,a
1bc2: d5 30 09  mov   $0930+x,a
1bc5: d5 37 09  mov   $0937+x,a
1bc8: e8 10     mov   a,#$10
1bca: d5 ae 09  mov   $09ae+x,a
1bcd: e8 ff     mov   a,#$ff
1bcf: d5 84 09  mov   $0984+x,a
1bd2: d5 92 09  mov   $0992+x,a
1bd5: d5 99 09  mov   $0999+x,a
1bd8: e8 03     mov   a,#$03
1bda: d5 ff 08  mov   $08ff+x,a
1bdd: ee        pop   y
1bde: f6 25 0a  mov   a,$0a25+y
1be1: c4 08     mov   $08,a
1be3: f6 31 0a  mov   a,$0a31+y
1be6: c4 09     mov   $09,a             ; set $0A25/0A31+Y to $08/9
1be8: f8 36     mov   x,$36
1bea: dd        mov   a,y
1beb: d5 f8 08  mov   $08f8+x,a
1bee: 8d 00     mov   y,#$00            ; zero offset
1bf0: f7 08     mov   a,($08)+y         ; offset 0
1bf2: d5 d8 09  mov   $09d8+x,a
1bf5: fc        inc   y
1bf6: f7 08     mov   a,($08)+y         ; offset 1
1bf8: d5 df 09  mov   $09df+x,a
1bfb: e8 00     mov   a,#$00
1bfd: c4 00     mov   $00,a
1bff: c5 f0 08  mov   $08f0,a
1c02: c5 f1 08  mov   $08f1,a
1c05: c5 f2 08  mov   $08f2,a
1c08: c5 f3 08  mov   $08f3,a
1c0b: c5 f4 08  mov   $08f4,a
1c0e: c5 f5 08  mov   $08f5,a
1c11: c5 f6 08  mov   $08f6,a
1c14: c5 f7 08  mov   $08f7,a
1c17: 8f 64 3d  mov   $3d,#$64
1c1a: 3f f2 1d  call  $1df2
1c1d: 90 3f     bcc   $1c5e
1c1f: d8 37     mov   $37,x
1c21: e4 00     mov   a,$00
1c23: 1c        asl   a
1c24: fd        mov   y,a
1c25: fc        inc   y
1c26: fc        inc   y
1c27: f7 08     mov   a,($08)+y         ; offset $00*2 + 2
1c29: c4 01     mov   $01,a
1c2b: fc        inc   y
1c2c: d5 30 03  mov   $0330+x,a
1c2f: f7 08     mov   a,($08)+y         ; offset ($00*2 + 2) + 1
1c31: 04 01     or    a,$01
1c33: f0 29     beq   $1c5e
1c35: f7 08     mov   a,($08)+y
1c37: d5 48 03  mov   $0348+x,a
1c3a: e4 00     mov   a,$00
1c3c: 8d 07     mov   y,#$07
1c3e: cf        mul   ya
1c3f: 60        clrc
1c40: 84 36     adc   a,$36
1c42: fd        mov   y,a
1c43: 7d        mov   a,x
1c44: d6 ed 09  mov   $09ed+y,a
1c47: e8 00     mov   a,#$00
1c49: d5 a8 03  mov   $03a8+x,a
1c4c: d5 c0 03  mov   $03c0+x,a
1c4f: 3f 42 1d  call  $1d42
1c52: 3f a7 1d  call  $1da7
1c55: 8b 3d     dec   $3d
1c57: ab 00     inc   $00
1c59: 78 08 00  cmp   $00,#$08
1c5c: 90 bc     bcc   $1c1a
1c5e: 6f        ret
;
1c5f: 6d        push  y
1c60: c4 36     mov   $36,a
1c62: 68 00     cmp   a,#$00
1c64: f0 02     beq   $1c68
1c66: ee        pop   y
1c67: 6f        ret
1c68: 3f 04 1e  call  $1e04
1c6b: f8 36     mov   x,$36
1c6d: e8 03     mov   a,#$03
1c6f: d5 ff 08  mov   $08ff+x,a
1c72: e8 00     mov   a,#$00
1c74: d5 a0 09  mov   $09a0+x,a
1c77: e8 02     mov   a,#$02
1c79: d5 a7 09  mov   $09a7+x,a
1c7c: e8 01     mov   a,#$01
1c7e: d5 99 09  mov   $0999+x,a
1c81: f5 30 09  mov   a,$0930+x
1c84: 3f 9f 13  call  $139f
1c87: b2 23     clr5  $23
1c89: f5 37 09  mov   a,$0937+x
1c8c: c4 21     mov   $21,a
1c8e: e8 00     mov   a,#$00
1c90: c4 24     mov   $24,a
1c92: c4 26     mov   $26,a
1c94: f5 3e 09  mov   a,$093e+x
1c97: c4 25     mov   $25,a
1c99: f5 45 09  mov   a,$0945+x
1c9c: c4 27     mov   $27,a
1c9e: 8f 0f f2  mov   $f2,#$0f
1ca1: f5 4c 09  mov   a,$094c+x
1ca4: c4 f3     mov   $f3,a
1ca6: 8f 1f f2  mov   $f2,#$1f
1ca9: f5 53 09  mov   a,$0953+x
1cac: c4 f3     mov   $f3,a
1cae: 8f 2f f2  mov   $f2,#$2f
1cb1: f5 5a 09  mov   a,$095a+x
1cb4: c4 f3     mov   $f3,a
1cb6: 8f 3f f2  mov   $f2,#$3f
1cb9: f5 61 09  mov   a,$0961+x
1cbc: c4 f3     mov   $f3,a
1cbe: 8f 4f f2  mov   $f2,#$4f
1cc1: f5 68 09  mov   a,$0968+x
1cc4: c4 f3     mov   $f3,a
1cc6: 8f 5f f2  mov   $f2,#$5f
1cc9: f5 6f 09  mov   a,$096f+x
1ccc: c4 f3     mov   $f3,a
1cce: 8f 6f f2  mov   $f2,#$6f
1cd1: f5 76 09  mov   a,$0976+x
1cd4: c4 f3     mov   $f3,a
1cd6: 8f 7f f2  mov   $f2,#$7f
1cd9: f5 7d 09  mov   a,$097d+x
1cdc: c4 f3     mov   $f3,a
1cde: ee        pop   y
1cdf: f8 36     mov   x,$36
1ce1: dd        mov   a,y
1ce2: d5 f8 08  mov   $08f8+x,a
1ce5: e8 00     mov   a,#$00
1ce7: c4 03     mov   $03,a
1ce9: c5 f0 08  mov   $08f0,a
1cec: c5 f1 08  mov   $08f1,a
1cef: c5 f2 08  mov   $08f2,a
1cf2: c5 f3 08  mov   $08f3,a
1cf5: c5 f4 08  mov   $08f4,a
1cf8: c5 f5 08  mov   $08f5,a
1cfb: c5 f6 08  mov   $08f6,a
1cfe: c5 f7 08  mov   $08f7,a
1d01: 8f 64 3d  mov   $3d,#$64
1d04: e4 03     mov   a,$03
1d06: 8d 07     mov   y,#$07
1d08: cf        mul   ya
1d09: 60        clrc
1d0a: 84 36     adc   a,$36
1d0c: fd        mov   y,a
1d0d: f6 ed 09  mov   a,$09ed+y
1d10: 5d        mov   x,a
1d11: d8 37     mov   $37,x
1d13: 3f 42 1d  call  $1d42
1d16: 90 1b     bcc   $1d33
1d18: dd        mov   a,y
1d19: 9f        xcn   a
1d1a: c4 1b     mov   $1b,a
1d1c: eb 36     mov   y,$36
1d1e: f6 f8 08  mov   a,$08f8+y
1d21: 28 0f     and   a,#$0f
1d23: 8d 10     mov   y,#$10
1d25: cf        mul   ya
1d26: 60        clrc
1d27: 95 f0 03  adc   a,$03f0+x
1d2a: fd        mov   y,a
1d2b: f6 3d 0a  mov   a,$0a3d+y
1d2e: 8d 04     mov   y,#$04
1d30: 3f 64 14  call  $1464             ; set SRCN
1d33: e4 3d     mov   a,$3d
1d35: d5 18 03  mov   $0318+x,a
1d38: 8b 3d     dec   $3d
1d3a: ab 03     inc   $03
1d3c: 78 08 03  cmp   $03,#$08
1d3f: 90 c3     bcc   $1d04
1d41: 6f        ret
;
1d42: 4d        push  x
1d43: 8f ff 01  mov   $01,#$ff
1d46: 8f 00 02  mov   $02,#$00
1d49: 8d 00     mov   y,#$00
1d4b: f6 f0 08  mov   a,$08f0+y
1d4e: d0 13     bne   $1d63
1d50: f6 e8 08  mov   a,$08e8+y
1d53: 68 ff     cmp   a,#$ff
1d55: f0 18     beq   $1d6f
1d57: 5d        mov   x,a
1d58: f5 18 03  mov   a,$0318+x
1d5b: 64 01     cmp   a,$01
1d5d: b0 04     bcs   $1d63
1d5f: c4 01     mov   $01,a
1d61: cb 02     mov   $02,y
1d63: fc        inc   y
1d64: ad 08     cmp   y,#$08
1d66: 90 e3     bcc   $1d4b
1d68: eb 02     mov   y,$02
1d6a: 69 3d 01  cmp   ($01),($3d)
1d6d: b0 2c     bcs   $1d9b
1d6f: ce        pop   x
1d70: dd        mov   a,y
1d71: d5 00 03  mov   $0300+x,a
1d74: 7d        mov   a,x
1d75: d6 e8 08  mov   $08e8+y,a
1d78: e8 01     mov   a,#$01
1d7a: d6 f0 08  mov   $08f0+y,a
1d7d: f6 5c 14  mov   a,$145c+y
1d80: 24 1f     and   a,$1f
1d82: c4 1f     mov   $1f,a
1d84: f5 a8 03  mov   a,$03a8+x
1d87: 28 01     and   a,#$01
1d89: f0 07     beq   $1d92
1d8b: f6 54 14  mov   a,$1454+y
1d8e: 04 1f     or    a,$1f
1d90: c4 1f     mov   $1f,a
1d92: f6 54 14  mov   a,$1454+y
1d95: 04 1e     or    a,$1e
1d97: c4 1e     mov   $1e,a
1d99: 80        setc
1d9a: 6f        ret
1d9b: ce        pop   x
1d9c: dd        mov   a,y
1d9d: d5 00 03  mov   $0300+x,a
1da0: e8 01     mov   a,#$01
1da2: d6 f0 08  mov   $08f0+y,a
1da5: 60        clrc
1da6: 6f        ret
;
1da7: e8 00     mov   a,#$00
1da9: d5 d0 05  mov   $05d0+x,a
1dac: d5 d0 08  mov   $08d0+x,a
1daf: d5 70 05  mov   $0570+x,a
1db2: d5 40 05  mov   $0540+x,a
1db5: d5 78 06  mov   $0678+x,a
1db8: d5 00 06  mov   $0600+x,a
1dbb: d5 a8 03  mov   $03a8+x,a
1dbe: d5 c0 03  mov   $03c0+x,a
1dc1: d5 d8 03  mov   $03d8+x,a
1dc4: d5 f0 03  mov   $03f0+x,a
1dc7: e8 10     mov   a,#$10
1dc9: d5 f8 04  mov   $04f8+x,a
1dcc: e8 af     mov   a,#$af
1dce: d5 10 05  mov   $0510+x,a
1dd1: d5 28 05  mov   $0528+x,a
1dd4: e4 3d     mov   a,$3d
1dd6: d5 18 03  mov   $0318+x,a
1dd9: e8 ff     mov   a,#$ff
1ddb: d5 e8 05  mov   $05e8+x,a
1dde: e8 01     mov   a,#$01
1de0: d5 e0 04  mov   $04e0+x,a
1de3: e8 0a     mov   a,#$0a
1de5: d5 18 06  mov   $0618+x,a
1de8: 3f 73 16  call  $1673
1deb: 3f f8 16  call  $16f8
1dee: 3f 07 16  call  $1607
1df1: 6f        ret
;
1df2: cd 00     mov   x,#$00
1df4: f5 48 03  mov   a,$0348+x
1df7: 68 ff     cmp   a,#$ff
1df9: f0 07     beq   $1e02
1dfb: 3d        inc   x
1dfc: c8 18     cmp   x,#$18
1dfe: 90 f4     bcc   $1df4
1e00: 60        clrc
1e01: 6f        ret
1e02: 80        setc
1e03: 6f        ret
;
1e04: eb 36     mov   y,$36
1e06: ad 00     cmp   y,#$00
1e08: d0 04     bne   $1e0e
1e0a: 3f 44 1e  call  $1e44
1e0d: 6f        ret
1e0e: f6 f8 08  mov   a,$08f8+y
1e11: 68 ff     cmp   a,#$ff
1e13: d0 07     bne   $1e1c
1e15: 3f 27 1e  call  $1e27
1e18: 3f 6a 1e  call  $1e6a
1e1b: 6f        ret
;
1e1c: 3f 57 1e  call  $1e57
1e1f: 6f        ret
;
1e20: 3f 57 1e  call  $1e57
1e23: 3f 27 1e  call  $1e27
1e26: 6f        ret
;
1e27: eb 36     mov   y,$36
1e29: e8 ff     mov   a,#$ff
1e2b: d6 ed 09  mov   $09ed+y,a
1e2e: d6 f4 09  mov   $09f4+y,a
1e31: d6 fb 09  mov   $09fb+y,a
1e34: d6 02 0a  mov   $0a02+y,a
1e37: d6 09 0a  mov   $0a09+y,a
1e3a: d6 10 0a  mov   $0a10+y,a
1e3d: d6 17 0a  mov   $0a17+y,a
1e40: d6 1e 0a  mov   $0a1e+y,a
1e43: 6f        ret
;
1e44: 8f 00 00  mov   $00,#$00
1e47: e4 00     mov   a,$00
1e49: 3f ad 1e  call  $1ead
1e4c: ab 00     inc   $00
1e4e: 78 08 00  cmp   $00,#$08
1e51: 90 f4     bcc   $1e47
1e53: 3f 6a 1e  call  $1e6a
1e56: 6f        ret
;
1e57: 8f 00 00  mov   $00,#$00
1e5a: e4 00     mov   a,$00
1e5c: 3f 90 1e  call  $1e90
1e5f: ab 00     inc   $00
1e61: 78 08 00  cmp   $00,#$08
1e64: 90 f4     bcc   $1e5a
1e66: 3f 6a 1e  call  $1e6a
1e69: 6f        ret
;
1e6a: eb 36     mov   y,$36
1e6c: e8 ff     mov   a,#$ff
1e6e: d6 f8 08  mov   $08f8+y,a
1e71: f6 30 09  mov   a,$0930+y
1e74: f0 19     beq   $1e8f
1e76: 4d        push  x
1e77: 6d        push  y
1e78: e8 00     mov   a,#$00
1e7a: 3f 9f 13  call  $139f
1e7d: a2 23     set5  $23
1e7f: e8 00     mov   a,#$00
1e81: c4 24     mov   $24,a
1e83: c4 25     mov   $25,a
1e85: c4 26     mov   $26,a
1e87: c4 27     mov   $27,a
1e89: c4 21     mov   $21,a
1e8b: c4 1f     mov   $1f,a
1e8d: ee        pop   y
1e8e: ce        pop   x
1e8f: 6f        ret
;
1e90: 8d 07     mov   y,#$07
1e92: cf        mul   ya
1e93: 60        clrc
1e94: 84 36     adc   a,$36
1e96: fd        mov   y,a
1e97: f6 ed 09  mov   a,$09ed+y
1e9a: 68 ff     cmp   a,#$ff
1e9c: f0 0e     beq   $1eac
1e9e: 5d        mov   x,a
1e9f: e8 ff     mov   a,#$ff
1ea1: d5 48 03  mov   $0348+x,a
1ea4: 3f c0 1e  call  $1ec0
1ea7: e8 ff     mov   a,#$ff
1ea9: d6 ed 09  mov   $09ed+y,a
1eac: 6f        ret
;
1ead: 8d 07     mov   y,#$07
1eaf: cf        mul   ya
1eb0: 60        clrc
1eb1: 84 36     adc   a,$36
1eb3: fd        mov   y,a
1eb4: f6 ed 09  mov   a,$09ed+y
1eb7: 68 ff     cmp   a,#$ff
1eb9: f0 04     beq   $1ebf
1ebb: 5d        mov   x,a
1ebc: 3f c0 1e  call  $1ec0
1ebf: 6f        ret
;
1ec0: d8 01     mov   $01,x
1ec2: f5 00 03  mov   a,$0300+x
1ec5: 28 07     and   a,#$07
1ec7: 5d        mov   x,a
1ec8: f5 e8 08  mov   a,$08e8+x
1ecb: 64 01     cmp   a,$01
1ecd: d0 0d     bne   $1edc
1ecf: e8 ff     mov   a,#$ff
1ed1: d5 e8 08  mov   $08e8+x,a
1ed4: f5 54 14  mov   a,$1454+x
1ed7: 8f 5c f2  mov   $f2,#$5c
1eda: c4 f3     mov   $f3,a
1edc: 6f        ret
; vcmd f9 - do subcmd
1edd: 3f f0 12  call  $12f0
1ee0: 68 0b     cmp   a,#$0b
1ee2: b0 07     bcs   $1eeb
1ee4: 1c        asl   a
1ee5: 5d        mov   x,a
1ee6: e4 37     mov   a,$37
1ee8: 1f ec 1e  jmp   ($1eec+x)
1eeb: 6f        ret
; vcmd f9 subcmd dispatch table
1eec: dw $18ba  ; 00 - set repeat count
1eee: dw $18c2  ; 01 - conditional loop
1ef0: dw $1910  ; 02 - nop
1ef2: dw $1912  ; 03 - set attack rate
1ef4: dw $191c  ; 04 - set decay rate
1ef6: dw $192a  ; 05 - set sustain level
1ef8: dw $1939  ; 06 - set release rate
1efa: dw $1943  ; 07 - set sustain rate
1efc: dw $0000  ; 08 - crash
1efe: dw $194d  ; 09 - surround effect
1f00: dw $0000  ; 0a - crash
