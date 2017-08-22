; Dragon Quest 6 SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Dragon Quest 6 (1995)
; * Dragon Quest 3 (1996)

0b00: 20        clrp
0b01: cd cf     mov   x,#$cf
0b03: bd        mov   sp,x
0b04: 3f ec 12  call  $12ec
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
0b31: 3f 21 13  call  $1321
0b34: 3f 4d 14  call  $144d
0b37: 8f 00 1d  mov   $1d,#$00
0b3a: 8f 00 1e  mov   $1e,#$00
0b3d: 8f 00 2b  mov   $2b,#$00
0b40: 3f 2c 19  call  $192c
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
0b66: 3f 48 14  call  $1448
0b69: e4 28     mov   a,$28
0b6b: 8d 0c     mov   y,#$0c
0b6d: 3f 48 14  call  $1448
0b70: e4 29     mov   a,$29
0b72: 8d 1c     mov   y,#$1c
0b74: 3f 48 14  call  $1448
0b77: e4 22     mov   a,$22
0b79: 8d 2d     mov   y,#$2d
0b7b: 3f 48 14  call  $1448
0b7e: e4 20     mov   a,$20
0b80: 8d 3d     mov   y,#$3d
0b82: 3f 48 14  call  $1448
0b85: e8 00     mov   a,#$00
0b87: 8d 5c     mov   y,#$5c
0b89: 3f 48 14  call  $1448
0b8c: e4 1d     mov   a,$1d
0b8e: 8d 4c     mov   y,#$4c
0b90: 3f 48 14  call  $1448
0b93: e3 2c 27  bbs7  $2c,$0bbd
0b96: 8f 6c f2  mov   $f2,#$6c
0b99: fa 23 f3  mov   ($f3),($23)
0b9c: 69 2d 2c  cmp   ($2c),($2d)
0b9f: d0 1c     bne   $0bbd
0ba1: 8d 4d     mov   y,#$4d
0ba3: e4 1f     mov   a,$1f
0ba5: 3f 48 14  call  $1448
0ba8: 8d 0d     mov   y,#$0d
0baa: e4 21     mov   a,$21
0bac: 3f 48 14  call  $1448
0baf: 8d 3c     mov   y,#$3c
0bb1: e4 27     mov   a,$27
0bb3: 3f 48 14  call  $1448
0bb6: 8d 2c     mov   y,#$2c
0bb8: e4 25     mov   a,$25
0bba: 3f 48 14  call  $1448
0bbd: 6f        ret
;
0bbe: 8f 00 36  mov   $36,#$00
0bc1: f8 36     mov   x,$36
0bc3: f5 e0 08  mov   a,$08e0+x
0bc6: 30 09     bmi   $0bd1
0bc8: f5 e7 08  mov   a,$08e7+x
0bcb: f0 07     beq   $0bd4
0bcd: 9c        dec   a
0bce: d5 e7 08  mov   $08e7+x,a
0bd1: 5f 4a 0c  jmp   $0c4a
0bd4: f5 e0 08  mov   a,$08e0+x
0bd7: 28 0f     and   a,#$0f
0bd9: fd        mov   y,a
0bda: f6 0d 0a  mov   a,$0a0d+y
0bdd: c4 3b     mov   $3b,a
0bdf: f6 19 0a  mov   a,$0a19+y
0be2: c4 3c     mov   $3c,a
0be4: 8f 00 3a  mov   $3a,#$00
0be7: b2 1a     clr5  $1a
0be9: f5 96 09  mov   a,$0996+x         ; tempo value
0bec: 04 2b     or    a,$2b
0bee: eb 2f     mov   y,$2f
0bf0: cf        mul   ya
0bf1: 60        clrc
0bf2: 95 9d 09  adc   a,$099d+x         ; add tempo value
0bf5: d5 9d 09  mov   $099d+x,a
0bf8: c4 19     mov   $19,a
0bfa: 90 02     bcc   $0bfe             ; jump if not tick
0bfc: a2 1a     set5  $1a
0bfe: 92 1a     clr4  $1a
0c00: 3f 52 0f  call  $0f52
0c03: 3f 80 0f  call  $0f80
0c06: 3f d6 0f  call  $0fd6
0c09: f5 d5 09  mov   a,$09d5+x
0c0c: 3f 75 0c  call  $0c75
0c0f: ab 3a     inc   $3a
0c11: f5 dc 09  mov   a,$09dc+x
0c14: 3f 75 0c  call  $0c75
0c17: ab 3a     inc   $3a
0c19: f5 e3 09  mov   a,$09e3+x
0c1c: 3f 75 0c  call  $0c75
0c1f: ab 3a     inc   $3a
0c21: f5 ea 09  mov   a,$09ea+x
0c24: 3f 75 0c  call  $0c75
0c27: ab 3a     inc   $3a
0c29: f5 f1 09  mov   a,$09f1+x
0c2c: 3f 75 0c  call  $0c75
0c2f: ab 3a     inc   $3a
0c31: f5 f8 09  mov   a,$09f8+x
0c34: 3f 75 0c  call  $0c75
0c37: ab 3a     inc   $3a
0c39: f5 ff 09  mov   a,$09ff+x
0c3c: 3f 75 0c  call  $0c75
0c3f: ab 3a     inc   $3a
0c41: f5 06 0a  mov   a,$0a06+x
0c44: 3f 75 0c  call  $0c75
0c47: 3f 55 0c  call  $0c55
0c4a: ab 36     inc   $36
0c4c: 78 07 36  cmp   $36,#$07
0c4f: b0 03     bcs   $0c54
0c51: 5f c1 0b  jmp   $0bc1
0c54: 6f        ret
;
0c55: f5 d5 09  mov   a,$09d5+x
0c58: 35 dc 09  and   a,$09dc+x
0c5b: 35 e3 09  and   a,$09e3+x
0c5e: 35 ea 09  and   a,$09ea+x
0c61: 35 f1 09  and   a,$09f1+x
0c64: 35 f8 09  and   a,$09f8+x
0c67: 35 ff 09  and   a,$09ff+x
0c6a: 35 06 0a  and   a,$0a06+x
0c6d: 68 ff     cmp   a,#$ff
0c6f: d0 03     bne   $0c74
0c71: d5 e0 08  mov   $08e0+x,a
0c74: 6f        ret
;
0c75: 4d        push  x
0c76: c4 37     mov   $37,a
0c78: 68 ff     cmp   a,#$ff
0c7a: d0 03     bne   $0c7f
0c7c: 5f 24 0d  jmp   $0d24
0c7f: f8 37     mov   x,$37
0c81: 3f c6 13  call  $13c6
0c84: f2 1a     clr7  $1a
0c86: d2 1a     clr6  $1a
0c88: 93 1a 02  bbc4  $1a,$0c8d
0c8b: c2 1a     set6  $1a
0c8d: 3f d4 12  call  $12d4
0c90: f5 48 03  mov   a,$0348+x
0c93: 68 ff     cmp   a,#$ff
0c95: f0 e5     beq   $0c7c
0c97: 3f 56 12  call  $1256
0c9a: b3 1a 72  bbc5  $1a,$0d0f
0c9d: f5 c8 04  mov   a,$04c8+x
0ca0: 9c        dec   a
0ca1: d5 c8 04  mov   $04c8+x,a
0ca4: d0 54     bne   $0cfa
0ca6: 4d        push  x
0ca7: f8 36     mov   x,$36
0ca9: f5 81 09  mov   a,$0981+x
0cac: ce        pop   x
0cad: f0 07     beq   $0cb6
0caf: 3f c3 12  call  $12c3             ; read first byte
0cb2: c4 15     mov   $15,a
0cb4: d0 07     bne   $0cbd
; vcmd 00 - halt
0cb6: e4 3a     mov   a,$3a
0cb8: 3f 49 1e  call  $1e49
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
0cce: 3f af 11  call  $11af
0cd1: 3f 9c 11  call  $119c
0cd4: 3f 23 0e  call  $0e23
0cd7: 2f 24     bra   $0cfd
; vcmds 01-7f - set note param
0cd9: d5 e0 04  mov   $04e0+x,a         ; vcmd byte itself = note length
0cdc: 3f cb 12  call  $12cb             ; read next byte (without ptr advance)
0cdf: 30 c5     bmi   $0ca6
0ce1: 3f 23 18  call  $1823             ; 00-7f: dur/vel / same as vcmd f1
0ce4: 2f c0     bra   $0ca6
; vcmds d2-ff
0ce6: 3f 58 14  call  $1458             ; dispatch vcmd
0ce9: f8 37     mov   x,$37
0ceb: 2f b9     bra   $0ca6
; vcmd d1 - rest
0ced: f5 a8 03  mov   a,$03a8+x
0cf0: 08 40     or    a,#$40
0cf2: d5 a8 03  mov   $03a8+x,a
; vcmd d0 - tie
0cf5: 3f 9c 11  call  $119c
;
0cf8: 2f 03     bra   $0cfd
0cfa: 3f c8 11  call  $11c8
0cfd: 3f c2 0d  call  $0dc2
0d00: 3f 15 0f  call  $0f15
0d03: 3f e3 0f  call  $0fe3
0d06: 3f 50 0e  call  $0e50
0d09: 3f 56 12  call  $1256
0d0c: 3f 97 0e  call  $0e97
0d0f: 3f 7d 0e  call  $0e7d
0d12: 3f da 10  call  $10da
0d15: 3f 61 12  call  $1261
0d18: 3f f4 0d  call  $0df4
0d1b: 3f 40 0f  call  $0f40
0d1e: 3f 0e 10  call  $100e
0d21: 3f e0 12  call  $12e0
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
0d3b: 3f 37 14  call  $1437
0d3e: 8d 01     mov   y,#$01
0d40: 3f 37 14  call  $1437
0d43: e4 1c     mov   a,$1c
0d45: 8d 5c     mov   y,#$5c
0d47: 3f 48 14  call  $1448
0d4a: ae        pop   a
0d4b: f8 36     mov   x,$36
0d4d: 60        clrc
0d4e: 95 ce 09  adc   a,$09ce+x
0d51: 60        clrc
0d52: f8 37     mov   x,$37
0d54: 95 b8 08  adc   a,$08b8+x
0d57: d5 b0 04  mov   $04b0+x,a
0d5a: f5 28 05  mov   a,$0528+x
0d5d: d5 98 04  mov   $0498+x,a
0d60: f5 50 07  mov   a,$0750+x
0d63: 5c        lsr   a
0d64: e8 00     mov   a,#$00
0d66: 7c        ror   a
0d67: d5 80 07  mov   $0780+x,a
0d6a: e8 ff     mov   a,#$ff
0d6c: d5 a0 08  mov   $08a0+x,a
0d6f: e8 00     mov   a,#$00
0d71: d5 c8 07  mov   $07c8+x,a
0d74: d5 68 07  mov   $0768+x,a
0d77: d5 28 08  mov   $0828+x,a
0d7a: d5 70 08  mov   $0870+x,a
0d7d: f5 78 06  mov   a,$0678+x
0d80: d5 90 06  mov   $0690+x,a
0d83: f0 1f     beq   $0da4
0d85: f5 a8 06  mov   a,$06a8+x
0d88: d5 c0 06  mov   $06c0+x,a
0d8b: f5 d8 06  mov   a,$06d8+x
0d8e: d0 0a     bne   $0d9a
0d90: f5 b0 04  mov   a,$04b0+x
0d93: 80        setc
0d94: b5 f0 06  sbc   a,$06f0+x
0d97: d5 b0 04  mov   $04b0+x,a
0d9a: f5 b0 04  mov   a,$04b0+x
0d9d: 60        clrc
0d9e: 95 f0 06  adc   a,$06f0+x
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
0dbe: 3f 8e 11  call  $118e
0dc1: 6f        ret
;
0dc2: f5 88 08  mov   a,$0888+x
0dc5: fd        mov   y,a
0dc6: f0 26     beq   $0dee
0dc8: f5 70 08  mov   a,$0870+x
0dcb: 75 58 08  cmp   a,$0858+x
0dce: b0 06     bcs   $0dd6
0dd0: bc        inc   a
0dd1: d5 70 08  mov   $0870+x,a
0dd4: 2f 18     bra   $0dee
0dd6: f5 28 08  mov   a,$0828+x
0dd9: 10 07     bpl   $0de2
0ddb: fc        inc   y
0ddc: d0 04     bne   $0de2
0dde: e8 80     mov   a,#$80
0de0: 2f 04     bra   $0de6
0de2: 60        clrc
0de3: 95 40 08  adc   a,$0840+x
0de6: d5 28 08  mov   $0828+x,a
0de9: 3f 10 0e  call  $0e10
0dec: 2f 05     bra   $0df3
0dee: e8 ff     mov   a,#$ff
0df0: d5 a0 08  mov   $08a0+x,a
0df3: 6f        ret
;
0df4: f5 88 08  mov   a,$0888+x
0df7: f0 16     beq   $0e0f
0df9: f5 70 08  mov   a,$0870+x
0dfc: 75 58 08  cmp   a,$0858+x
0dff: 90 0e     bcc   $0e0f
0e01: eb 19     mov   y,$19
0e03: f5 40 08  mov   a,$0840+x
0e06: cf        mul   ya
0e07: dd        mov   a,y
0e08: 60        clrc
0e09: 95 28 08  adc   a,$0828+x
0e0c: 3f 10 0e  call  $0e10
0e0f: 6f        ret
;
0e10: 1c        asl   a
0e11: 90 02     bcc   $0e15
0e13: 48 ff     eor   a,#$ff
0e15: fd        mov   y,a
0e16: f5 88 08  mov   a,$0888+x
0e19: cf        mul   ya
0e1a: dd        mov   a,y
0e1b: 48 ff     eor   a,#$ff
0e1d: d5 a0 08  mov   $08a0+x,a
0e20: c2 1a     set6  $1a
0e22: 6f        ret
;
0e23: f5 90 06  mov   a,$0690+x
0e26: d0 0d     bne   $0e35
0e28: 3f cb 12  call  $12cb
0e2b: 68 e5     cmp   a,#$e5
0e2d: d0 06     bne   $0e35
0e2f: 3f d1 12  call  $12d1
0e32: 3f 65 16  call  $1665
0e35: 6f        ret
;
0e36: 28 7f     and   a,#$7f
0e38: d5 38 07  mov   $0738+x,a
0e3b: 80        setc
0e3c: b5 b0 04  sbc   a,$04b0+x
0e3f: 2d        push  a
0e40: f5 90 06  mov   a,$0690+x
0e43: fd        mov   y,a
0e44: ae        pop   a
0e45: 3f 9d 12  call  $129d
0e48: d5 08 07  mov   $0708+x,a
0e4b: dd        mov   a,y
0e4c: d5 20 07  mov   $0720+x,a
0e4f: 6f        ret
;
0e50: f5 90 06  mov   a,$0690+x
0e53: f0 27     beq   $0e7c
0e55: f5 c0 06  mov   a,$06c0+x
0e58: f0 06     beq   $0e60
0e5a: 9c        dec   a
0e5b: d5 c0 06  mov   $06c0+x,a
0e5e: 2f 1c     bra   $0e7c
0e60: e2 1a     set7  $1a
0e62: f5 90 06  mov   a,$0690+x
0e65: 9c        dec   a
0e66: d5 90 06  mov   $0690+x,a
0e69: 60        clrc
0e6a: f5 98 04  mov   a,$0498+x
0e6d: 95 08 07  adc   a,$0708+x
0e70: d5 98 04  mov   $0498+x,a
0e73: f5 b0 04  mov   a,$04b0+x
0e76: 95 20 07  adc   a,$0720+x
0e79: d5 b0 04  mov   $04b0+x,a
0e7c: 6f        ret
;
0e7d: f5 90 06  mov   a,$0690+x
0e80: f0 14     beq   $0e96
0e82: f5 c0 06  mov   a,$06c0+x
0e85: 75 a8 06  cmp   a,$06a8+x
0e88: 90 0c     bcc   $0e96
0e8a: f5 20 07  mov   a,$0720+x
0e8d: fd        mov   y,a
0e8e: f5 08 07  mov   a,$0708+x
0e91: 3f b8 10  call  $10b8
0e94: e2 1a     set7  $1a
0e96: 6f        ret
;
0e97: f5 f8 07  mov   a,$07f8+x
0e9a: f0 5c     beq   $0ef8
0e9c: f5 c8 07  mov   a,$07c8+x
0e9f: 75 b0 07  cmp   a,$07b0+x
0ea2: b0 06     bcs   $0eaa
0ea4: bc        inc   a
0ea5: d5 c8 07  mov   $07c8+x,a
0ea8: 2f 4e     bra   $0ef8
0eaa: f5 68 07  mov   a,$0768+x
0ead: 75 50 07  cmp   a,$0750+x
0eb0: d0 05     bne   $0eb7
0eb2: f5 e0 07  mov   a,$07e0+x
0eb5: 2f 0f     bra   $0ec6
0eb7: fd        mov   y,a
0eb8: bc        inc   a
0eb9: d5 68 07  mov   $0768+x,a
0ebc: dd        mov   a,y
0ebd: f0 03     beq   $0ec2
0ebf: f5 f8 07  mov   a,$07f8+x
0ec2: 60        clrc
0ec3: 95 10 08  adc   a,$0810+x
0ec6: d5 f8 07  mov   $07f8+x,a
0ec9: f5 80 07  mov   a,$0780+x
0ecc: 60        clrc
0ecd: 95 98 07  adc   a,$0798+x
0ed0: d5 80 07  mov   $0780+x,a
;
0ed3: c4 00     mov   $00,a
0ed5: 1c        asl   a
0ed6: 1c        asl   a
0ed7: 90 02     bcc   $0edb
0ed9: 48 ff     eor   a,#$ff
0edb: fd        mov   y,a
0edc: f5 f8 07  mov   a,$07f8+x
0edf: 68 f1     cmp   a,#$f1
0ee1: 90 05     bcc   $0ee8
0ee3: 28 0f     and   a,#$0f
0ee5: cf        mul   ya
0ee6: 2f 04     bra   $0eec
0ee8: cf        mul   ya
0ee9: dd        mov   a,y
0eea: 8d 00     mov   y,#$00
0eec: f3 00 03  bbc7  $00,$0ef2
0eef: 3f bc 12  call  $12bc
0ef2: 7a 16     addw  ya,$16
0ef4: da 16     movw  $16,ya
0ef6: e2 1a     set7  $1a
0ef8: 6f        ret
0ef9: f5 f8 07  mov   a,$07f8+x
0efc: f0 16     beq   $0f14
0efe: f5 c8 07  mov   a,$07c8+x
0f01: 75 b0 07  cmp   a,$07b0+x
0f04: 90 0e     bcc   $0f14
0f06: eb 19     mov   y,$19
0f08: f5 98 07  mov   a,$0798+x
0f0b: cf        mul   ya
0f0c: dd        mov   a,y
0f0d: 60        clrc
0f0e: 95 80 07  adc   a,$0780+x
0f11: 3f d3 0e  call  $0ed3
0f14: 6f        ret
;
0f15: f5 60 06  mov   a,$0660+x
0f18: f0 25     beq   $0f3f
0f1a: c2 1a     set6  $1a
0f1c: 9c        dec   a
0f1d: d5 60 06  mov   $0660+x,a
0f20: d0 0a     bne   $0f2c
0f22: e8 00     mov   a,#$00
0f24: d5 e8 05  mov   $05e8+x,a
0f27: f5 18 06  mov   a,$0618+x
0f2a: 2f 10     bra   $0f3c
0f2c: 60        clrc
0f2d: f5 e8 05  mov   a,$05e8+x
0f30: 95 30 06  adc   a,$0630+x
0f33: d5 e8 05  mov   $05e8+x,a
0f36: f5 00 06  mov   a,$0600+x
0f39: 95 48 06  adc   a,$0648+x
0f3c: d5 00 06  mov   $0600+x,a
0f3f: 6f        ret
;
0f40: f5 60 06  mov   a,$0660+x
0f43: f0 0c     beq   $0f51
0f45: f5 48 06  mov   a,$0648+x
0f48: fd        mov   y,a
0f49: f5 30 06  mov   a,$0630+x
0f4c: 3f b8 10  call  $10b8
0f4f: c2 1a     set6  $1a
0f51: 6f        ret
;
0f52: b3 1a 2a  bbc5  $1a,$0f7f
0f55: f5 ee 08  mov   a,$08ee+x
0f58: f0 25     beq   $0f7f
0f5a: 82 1a     set4  $1a
0f5c: 9c        dec   a
0f5d: d5 ee 08  mov   $08ee+x,a
0f60: d0 0a     bne   $0f6c
0f62: e8 00     mov   a,#$00
0f64: d5 03 09  mov   $0903+x,a
0f67: f5 11 09  mov   a,$0911+x
0f6a: 2f 10     bra   $0f7c
0f6c: 60        clrc
0f6d: f5 03 09  mov   a,$0903+x
0f70: 95 f5 08  adc   a,$08f5+x
0f73: d5 03 09  mov   $0903+x,a
0f76: f5 0a 09  mov   a,$090a+x
0f79: 95 fc 08  adc   a,$08fc+x
0f7c: d5 0a 09  mov   $090a+x,a
0f7f: 6f        ret
;
0f80: f5 8f 09  mov   a,$098f+x
0f83: 15 88 09  or    a,$0988+x
0f86: d0 01     bne   $0f89
0f88: 6f        ret
0f89: f5 8f 09  mov   a,$098f+x
0f8c: 30 22     bmi   $0fb0
0f8e: f5 88 09  mov   a,$0988+x
0f91: 60        clrc
0f92: 95 7a 09  adc   a,$097a+x
0f95: d5 7a 09  mov   $097a+x,a
0f98: f5 8f 09  mov   a,$098f+x
0f9b: 95 81 09  adc   a,$0981+x
0f9e: 90 0d     bcc   $0fad
0fa0: e8 00     mov   a,#$00
0fa2: d5 88 09  mov   $0988+x,a
0fa5: d5 8f 09  mov   $098f+x,a
0fa8: e8 ff     mov   a,#$ff
0faa: d5 7a 09  mov   $097a+x,a
0fad: 5f d0 0f  jmp   $0fd0
0fb0: 28 7f     and   a,#$7f
0fb2: c4 00     mov   $00,a
0fb4: f5 7a 09  mov   a,$097a+x
0fb7: 80        setc
0fb8: b5 88 09  sbc   a,$0988+x
0fbb: d5 7a 09  mov   $097a+x,a
0fbe: f5 81 09  mov   a,$0981+x
0fc1: a4 00     sbc   a,$00
0fc3: b0 0b     bcs   $0fd0
0fc5: e8 00     mov   a,#$00
0fc7: d5 88 09  mov   $0988+x,a
0fca: d5 8f 09  mov   $098f+x,a
0fcd: d5 7a 09  mov   $097a+x,a
0fd0: d5 81 09  mov   $0981+x,a
0fd3: 82 1a     set4  $1a
0fd5: 6f        ret
;
0fd6: f5 73 09  mov   a,$0973+x
0fd9: f0 07     beq   $0fe2
0fdb: e8 00     mov   a,#$00
0fdd: d5 73 09  mov   $0973+x,a
0fe0: 82 1a     set4  $1a
0fe2: 6f        ret
;
0fe3: f5 58 05  mov   a,$0558+x
0fe6: f0 25     beq   $100d
0fe8: c2 1a     set6  $1a
0fea: 9c        dec   a
0feb: d5 58 05  mov   $0558+x,a
0fee: d0 0a     bne   $0ffa
0ff0: e8 00     mov   a,#$00
0ff2: d5 b8 05  mov   $05b8+x,a
0ff5: f5 a0 05  mov   a,$05a0+x
0ff8: 2f 10     bra   $100a
0ffa: 60        clrc
0ffb: f5 b8 05  mov   a,$05b8+x
0ffe: 95 70 05  adc   a,$0570+x
1001: d5 b8 05  mov   $05b8+x,a
1004: f5 d0 05  mov   a,$05d0+x
1007: 95 88 05  adc   a,$0588+x
100a: d5 d0 05  mov   $05d0+x,a
100d: 6f        ret
;
100e: d3 1a 3e  bbc6  $1a,$104f
1011: f8 36     mov   x,$36
1013: f5 0a 09  mov   a,$090a+x
1016: fd        mov   y,a
1017: f5 6c 09  mov   a,$096c+x
101a: cf        mul   ya
101b: f5 81 09  mov   a,$0981+x
101e: cf        mul   ya
101f: f8 37     mov   x,$37
1021: f5 a0 08  mov   a,$08a0+x
1024: cf        mul   ya
1025: f5 d0 05  mov   a,$05d0+x
1028: cf        mul   ya
1029: f5 40 05  mov   a,$0540+x
102c: cf        mul   ya
102d: dd        mov   a,y
102e: cf        mul   ya
102f: cb 18     mov   $18,y
1031: f5 00 06  mov   a,$0600+x
1034: fd        mov   y,a
1035: f5 e8 05  mov   a,$05e8+x
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
1064: 3f 37 14  call  $1437
1067: e4 35     mov   a,$35
1069: d0 0c     bne   $1077
106b: f5 a8 03  mov   a,$03a8+x
106e: 28 02     and   a,#$02
1070: f0 05     beq   $1077
1072: 58 ff 34  eor   $34,#$ff
1075: ab 34     inc   $34
1077: 8d 01     mov   y,#$01
1079: e4 34     mov   a,$34
107b: 3f 37 14  call  $1437
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
10bd: 3f bc 12  call  $12bc
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
10d2: 3f bc 12  call  $12bc
10d5: 7a 16     addw  ya,$16
10d7: da 16     movw  $16,ya
10d9: 6f        ret
;
10da: e3 1a 01  bbs7  $1a,$10de
10dd: 6f        ret
10de: f5 a8 03  mov   a,$03a8+x
10e1: 28 10     and   a,#$10
10e3: d0 0e     bne   $10f3
10e5: f5 a8 03  mov   a,$03a8+x
10e8: 28 08     and   a,#$08
10ea: f0 1a     beq   $1106
10ec: e4 17     mov   a,$17
10ee: 28 1f     and   a,#$1f
10f0: d5 c0 03  mov   $03c0+x,a
10f3: 38 e0 23  and   $23,#$e0
10f6: f5 c0 03  mov   a,$03c0+x
10f9: 28 1f     and   a,#$1f
10fb: 04 23     or    a,$23
10fd: c4 23     mov   $23,a
10ff: e4 20     mov   a,$20
1101: 04 1c     or    a,$1c
1103: c4 20     mov   $20,a
1105: 6f        ret
1106: e4 1c     mov   a,$1c
1108: 48 ff     eor   a,#$ff
110a: 24 20     and   a,$20
110c: c4 20     mov   $20,a
110e: 4d        push  x
110f: 8d 00     mov   y,#$00
1111: e4 17     mov   a,$17
1113: 80        setc
1114: a8 34     sbc   a,#$34
1116: b0 09     bcs   $1121
1118: e4 17     mov   a,$17
111a: 80        setc
111b: a8 13     sbc   a,#$13
111d: b0 06     bcs   $1125
111f: dc        dec   y
1120: 1c        asl   a
1121: 7a 16     addw  ya,$16
1123: da 16     movw  $16,ya
1125: e4 17     mov   a,$17
1127: 1c        asl   a
1128: 8d 00     mov   y,#$00
112a: cd 18     mov   x,#$18
112c: 9e        div   ya,x
112d: 5d        mov   x,a
112e: f6 84 12  mov   a,$1284+y
1131: c4 09     mov   $09,a
1133: f6 83 12  mov   a,$1283+y
1136: c4 08     mov   $08,a
1138: f6 86 12  mov   a,$1286+y
113b: 2d        push  a
113c: f6 85 12  mov   a,$1285+y
113f: ee        pop   y
1140: 9a 08     subw  ya,$08
1142: eb 16     mov   y,$16
1144: cf        mul   ya
1145: dd        mov   a,y
1146: 8d 00     mov   y,#$00
1148: 7a 08     addw  ya,$08
114a: cb 09     mov   $09,y
114c: 1c        asl   a
114d: 2b 09     rol   $09
114f: c4 08     mov   $08,a
1151: 2f 04     bra   $1157
1153: 4b 09     lsr   $09
1155: 7c        ror   a
1156: 3d        inc   x
1157: c8 06     cmp   x,#$06
1159: d0 f8     bne   $1153
115b: c4 08     mov   $08,a
115d: ce        pop   x
115e: f5 68 04  mov   a,$0468+x
1161: eb 09     mov   y,$09
1163: cf        mul   ya
1164: da 0a     movw  $0a,ya
1166: f5 68 04  mov   a,$0468+x
1169: eb 08     mov   y,$08
116b: cf        mul   ya
116c: 6d        push  y
116d: f5 80 04  mov   a,$0480+x
1170: eb 08     mov   y,$08
1172: cf        mul   ya
1173: 7a 0a     addw  ya,$0a
1175: da 0a     movw  $0a,ya
1177: f5 80 04  mov   a,$0480+x
117a: eb 09     mov   y,$09
117c: cf        mul   ya
117d: fd        mov   y,a
117e: ae        pop   a
117f: 7a 0a     addw  ya,$0a
1181: 6d        push  y
1182: 8d 02     mov   y,#$02
1184: 3f 37 14  call  $1437
1187: ae        pop   a
1188: 8d 03     mov   y,#$03
118a: 3f 37 14  call  $1437
118d: 6f        ret
;
118e: e4 1d     mov   a,$1d
1190: 04 1c     or    a,$1c
1192: c4 1d     mov   $1d,a
1194: 6f        ret
1195: e4 1e     mov   a,$1e
1197: 04 1c     or    a,$1c
1199: c4 1e     mov   $1e,a
119b: 6f        ret
; calc actual duration
119c: f5 e0 04  mov   a,$04e0+x
119f: d5 c8 04  mov   $04c8+x,a
11a2: fd        mov   y,a
11a3: f5 f8 04  mov   a,$04f8+x
11a6: cf        mul   ya
11a7: dd        mov   a,y
11a8: d0 01     bne   $11ab
11aa: bc        inc   a
11ab: d5 10 05  mov   $0510+x,a
11ae: 6f        ret
;
11af: f5 f0 03  mov   a,$03f0+x
11b2: 15 08 04  or    a,$0408+x
11b5: 08 80     or    a,#$80
11b7: 8d 05     mov   y,#$05
11b9: 3f 37 14  call  $1437
11bc: f5 20 04  mov   a,$0420+x
11bf: 15 38 04  or    a,$0438+x
11c2: 8d 06     mov   y,#$06
11c4: 3f 37 14  call  $1437
11c7: 6f        ret
;
11c8: f5 10 05  mov   a,$0510+x
11cb: f0 3a     beq   $1207
11cd: 9c        dec   a
11ce: d5 10 05  mov   $0510+x,a
11d1: f0 07     beq   $11da
11d3: f5 c8 04  mov   a,$04c8+x
11d6: 68 02     cmp   a,#$02
11d8: d0 2d     bne   $1207
11da: f5 a8 03  mov   a,$03a8+x
11dd: 28 40     and   a,#$40
11df: d0 27     bne   $1208
11e1: f5 a8 03  mov   a,$03a8+x
11e4: 28 80     and   a,#$80
11e6: d0 1f     bne   $1207
11e8: 3f 11 12  call  $1211
11eb: b0 1a     bcs   $1207
11ed: f5 f0 03  mov   a,$03f0+x
11f0: 15 08 04  or    a,$0408+x
11f3: 08 80     or    a,#$80
11f5: 8d 05     mov   y,#$05
11f7: 3f 37 14  call  $1437
11fa: f5 20 04  mov   a,$0420+x
11fd: 28 e0     and   a,#$e0
11ff: 15 50 04  or    a,$0450+x
1202: 8d 06     mov   y,#$06
1204: 3f 37 14  call  $1437
1207: 6f        ret
1208: f5 a8 03  mov   a,$03a8+x
120b: 28 bf     and   a,#$bf
120d: d5 a8 03  mov   $03a8+x,a
1210: 6f        ret
;
1211: 8f d0 00  mov   $00,#$d0
1214: ba 38     movw  ya,$38
1216: da 08     movw  $08,ya
1218: 8f 00 01  mov   $01,#$00
121b: eb 01     mov   y,$01
121d: f7 08     mov   a,($08)+y
121f: f0 11     beq   $1232
1221: ab 01     inc   $01
1223: f0 0d     beq   $1232
1225: fd        mov   y,a
1226: f0 0a     beq   $1232
1228: 10 f1     bpl   $121b
122a: 68 d2     cmp   a,#$d2
122c: b0 08     bcs   $1236
122e: 64 00     cmp   a,$00
1230: f0 02     beq   $1234
1232: 60        clrc
1233: 6f        ret
1234: 80        setc
1235: 6f        ret
1236: 68 f2     cmp   a,#$f2
1238: f0 f8     beq   $1232
123a: 68 f3     cmp   a,#$f3
123c: f0 f4     beq   $1232
123e: 68 f4     cmp   a,#$f4
1240: f0 f0     beq   $1232
1242: 68 f9     cmp   a,#$f9
1244: f0 ec     beq   $1232
1246: 80        setc
1247: a8 d2     sbc   a,#$d2
1249: fd        mov   y,a
124a: f6 b2 14  mov   a,$14b2+y
124d: 60        clrc
124e: 84 01     adc   a,$01
1250: c4 01     mov   $01,a
1252: b0 de     bcs   $1232
1254: 2f c5     bra   $121b
;
1256: f5 98 04  mov   a,$0498+x
1259: c4 16     mov   $16,a
125b: f5 b0 04  mov   a,$04b0+x
125e: c4 17     mov   $17,a
1260: 6f        ret
;
1261: f5 00 06  mov   a,$0600+x
1264: fd        mov   y,a
1265: f5 e8 05  mov   a,$05e8+x
1268: da 16     movw  $16,ya
126a: 6f        ret
; duration table
126b: db $23,$46,$69,$8c,$af,$d2,$f5,$ff
; velocity table
1273: db $19,$28,$37,$46,$55,$64,$73,$82
127b: db $91,$a0,$b0,$be,$cd,$dc,$eb,$ff
;
1283: dw $085f
1285: dw $08de
1287: dw $0965
1289: dw $09f4
128b: dw $0a8c
128d: dw $0b2c
128f: dw $0bd6
1291: dw $0c8b
1293: dw $0d4a
1295: dw $0e14
1297: dw $0eea
1299: dw $0fcd
129b: dw $10be
;
129d: 4d        push  x
129e: 6d        push  y
129f: ce        pop   x
12a0: 90 0a     bcc   $12ac
12a2: 8d 00     mov   y,#$00
12a4: 9e        div   ya,x
12a5: 2d        push  a
12a6: e8 00     mov   a,#$00
12a8: 9e        div   ya,x
12a9: ee        pop   y
12aa: ce        pop   x
12ab: 6f        ret
12ac: 48 ff     eor   a,#$ff
12ae: bc        inc   a
12af: 8d 00     mov   y,#$00
12b1: 9e        div   ya,x
12b2: 2d        push  a
12b3: e8 00     mov   a,#$00
12b5: 9e        div   ya,x
12b6: ee        pop   y
12b7: 3f bc 12  call  $12bc
12ba: ce        pop   x
12bb: 6f        ret
;
12bc: da 08     movw  $08,ya
12be: ba 13     movw  ya,$13
12c0: 9a 08     subw  ya,$08
12c2: 6f        ret
; read new argument to A, advance reading ptr
12c3: 8d 00     mov   y,#$00
12c5: f7 38     mov   a,($38)+y
12c7: 3a 38     incw  $38
12c9: fd        mov   y,a
12ca: 6f        ret
; read new argument to A
12cb: 8d 00     mov   y,#$00
12cd: f7 38     mov   a,($38)+y
12cf: fd        mov   y,a
12d0: 6f        ret
; advance reading ptr
12d1: 3a 38     incw  $38
12d3: 6f        ret
; offset to ARAM address
12d4: f5 48 03  mov   a,$0348+x
12d7: fd        mov   y,a
12d8: f5 30 03  mov   a,$0330+x
12db: 7a 3b     addw  ya,$3b
12dd: da 38     movw  $38,ya
12df: 6f        ret
; ARAM address to offset
12e0: ba 38     movw  ya,$38
12e2: 9a 3b     subw  ya,$3b
12e4: d5 30 03  mov   $0330+x,a
12e7: dd        mov   a,y
12e8: d5 48 03  mov   $0348+x,a
12eb: 6f        ret
;
12ec: 8f f0 f1  mov   $f1,#$f0
12ef: 8f 10 fa  mov   $fa,#$10          ; set timer0 latch to #$10 (500 Hz, 2ms)
12f2: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to #$80 (62.5 Hz, 16ms)
12f5: 8f f3 f1  mov   $f1,#$f3
12f8: 8f 6c f2  mov   $f2,#$6c
12fb: 8f e0 f3  mov   $f3,#$e0
12fe: 8f 7d f2  mov   $f2,#$7d
1301: e4 f3     mov   a,$f3
1303: 28 0f     and   a,#$0f
1305: c4 2d     mov   $2d,a
1307: f0 08     beq   $1311
1309: e4 fe     mov   a,$fe
130b: f0 fc     beq   $1309
130d: 8b 2d     dec   $2d
130f: d0 f8     bne   $1309
1311: 8f 7d f2  mov   $f2,#$7d
1314: 8f 00 f3  mov   $f3,#$00
1317: 8f 6d f2  mov   $f2,#$6d
131a: 8f ff f3  mov   $f3,#$ff
131d: 8f 00 2a  mov   $2a,#$00
1320: 6f        ret
;
1321: e8 00     mov   a,#$00
1323: c4 23     mov   $23,a
1325: c4 24     mov   $24,a
1327: c4 25     mov   $25,a
1329: c4 26     mov   $26,a
132b: c4 27     mov   $27,a
132d: c4 21     mov   $21,a
132f: c4 1f     mov   $1f,a
1331: c4 2d     mov   $2d,a
1333: c4 2c     mov   $2c,a
1335: c4 2e     mov   $2e,a
1337: c4 35     mov   $35,a
1339: c4 20     mov   $20,a
133b: c4 22     mov   $22,a
133d: e8 78     mov   a,#$78
133f: c4 28     mov   $28,a
1341: c4 29     mov   $29,a
1343: e8 02     mov   a,#$02
1345: 8d 5d     mov   y,#$5d
1347: 3f 48 14  call  $1448
134a: e8 00     mov   a,#$00
134c: 3f 72 13  call  $1372
134f: a2 23     set5  $23
1351: e8 ff     mov   a,#$ff
1353: cd 00     mov   x,#$00
1355: d5 e0 08  mov   $08e0+x,a
1358: 3d        inc   x
1359: c8 07     cmp   x,#$07
135b: 90 f8     bcc   $1355
135d: cd 00     mov   x,#$00
135f: d5 d0 08  mov   $08d0+x,a
1362: 3d        inc   x
1363: c8 08     cmp   x,#$08
1365: 90 f8     bcc   $135f
1367: cd 00     mov   x,#$00
1369: d5 48 03  mov   $0348+x,a
136c: 3d        inc   x
136d: c8 18     cmp   x,#$18
136f: 90 f8     bcc   $1369
1371: 6f        ret
;
1372: c4 2d     mov   $2d,a
1374: 69 2d 2a  cmp   ($2a),($2d)
1377: b0 03     bcs   $137c
1379: fa 2a 2d  mov   ($2d),($2a)
137c: 8d 7d     mov   y,#$7d
137e: cb f2     mov   $f2,y
1380: e4 f3     mov   a,$f3
1382: 64 2d     cmp   a,$2d
1384: f0 32     beq   $13b8
1386: 28 0f     and   a,#$0f
1388: 48 ff     eor   a,#$ff
138a: f3 2c 03  bbc7  $2c,$1390
138d: 60        clrc
138e: 84 2c     adc   a,$2c
1390: c4 2c     mov   $2c,a
1392: e8 00     mov   a,#$00
1394: 8d 3c     mov   y,#$3c
1396: 3f 48 14  call  $1448
1399: 8d 2c     mov   y,#$2c
139b: 3f 48 14  call  $1448
139e: 8d 0d     mov   y,#$0d
13a0: 3f 48 14  call  $1448
13a3: 8d 4d     mov   y,#$4d
13a5: 3f 48 14  call  $1448
13a8: e4 23     mov   a,$23
13aa: 08 20     or    a,#$20
13ac: 8d 6c     mov   y,#$6c
13ae: 3f 48 14  call  $1448
13b1: 8d 7d     mov   y,#$7d
13b3: e4 2d     mov   a,$2d
13b5: 3f 48 14  call  $1448
13b8: 1c        asl   a
13b9: 1c        asl   a
13ba: 1c        asl   a
13bb: 48 ff     eor   a,#$ff
13bd: 8d 6d     mov   y,#$6d
13bf: 3f 48 14  call  $1448
13c2: 8f 00 2e  mov   $2e,#$00
13c5: 6f        ret
;
13c6: 8f 80 1b  mov   $1b,#$80
13c9: 8f 00 1c  mov   $1c,#$00
13cc: d8 01     mov   $01,x
13ce: f5 00 03  mov   a,$0300+x
13d1: 28 07     and   a,#$07
13d3: c4 00     mov   $00,a
13d5: fd        mov   y,a
13d6: f6 d0 08  mov   a,$08d0+y
13d9: 68 ff     cmp   a,#$ff
13db: d0 30     bne   $140d
13dd: 3f 15 14  call  $1415
13e0: e4 1c     mov   a,$1c
13e2: 48 ff     eor   a,#$ff
13e4: 24 1f     and   a,$1f
13e6: c4 1f     mov   $1f,a
13e8: f5 a8 03  mov   a,$03a8+x
13eb: 28 01     and   a,#$01
13ed: f0 03     beq   $13f2
13ef: 09 1c 1f  or    ($1f),($1c)
13f2: 09 1c 1e  or    ($1e),($1c)
13f5: eb 36     mov   y,$36
13f7: f6 e0 08  mov   a,$08e0+y
13fa: 28 0f     and   a,#$0f
13fc: 8d 10     mov   y,#$10
13fe: cf        mul   ya
13ff: 60        clrc
1400: 95 d8 03  adc   a,$03d8+x
1403: fd        mov   y,a
1404: f6 25 0a  mov   a,$0a25+y
1407: 8d 04     mov   y,#$04
1409: 3f 37 14  call  $1437
140c: 6f        ret
140d: 64 01     cmp   a,$01
140f: d0 03     bne   $1414
1411: 3f 15 14  call  $1415
1414: 6f        ret
;
1415: e4 01     mov   a,$01
1417: d6 d0 08  mov   $08d0+y,a
141a: e4 00     mov   a,$00
141c: 9f        xcn   a
141d: c4 1b     mov   $1b,a
141f: eb 00     mov   y,$00
1421: f6 27 14  mov   a,$1427+y
1424: c4 1c     mov   $1c,a
1426: 6f        ret
;
1427: db $01,$02,$04,$08,$10,$20,$40,$80
142f: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f
;
1437: 2d        push  a
1438: c4 00     mov   $00,a
143a: e4 1b     mov   a,$1b
143c: 30 08     bmi   $1446
143e: dd        mov   a,y
143f: 04 1b     or    a,$1b
1441: c4 f2     mov   $f2,a
1443: fa 00 f3  mov   ($f3),($00)
1446: ae        pop   a
1447: 6f        ret
; set DSP register Y to A
1448: cb f2     mov   $f2,y
144a: c4 f3     mov   $f3,a
144c: 6f        ret
;
144d: 8f 65 f5  mov   $f5,#$65
1450: 8f 61 f6  mov   $f6,#$61
1453: 8f 74 f7  mov   $f7,#$74
1456: 6f        ret
1457: 6f        ret
; dispatch vcmd A
1458: 80        setc
1459: a8 d2     sbc   a,#$d2
145b: 1c        asl   a
145c: 5d        mov   x,a
145d: e4 37     mov   a,$37
145f: 1f 62 14  jmp   ($1462+x)
; vcmd dispatch table
1462: dw $14da  ; d2 - portamento on
1464: dw $14ec  ; d3 - portamento off
1466: dw $14f6  ; d4 - set patch
1468: dw $1566  ; d5
146a: dw $1568  ; d6 - pan
146c: dw $1577  ; d7 - pan fade 
146e: dw $1595  ; d8 - vibrato on
1470: dw $15b1  ; d9 - vibrato fade
1472: dw $15c6  ; da - vibrato off
1474: dw $15d4  ; db - master volume
1476: dw $15e2  ; dc - master volume fade
1478: dw $1601  ; dd - tempo
147a: dw $160a  ; de - nop?
147c: dw $160d  ; df - global transpose
147e: dw $1616  ; e0 - per-voice transpose
1480: dw $161e  ; e1 - tremolo on
1482: dw $1632  ; e2 - tremolo off
1484: dw $163a  ; e3 - volume
1486: dw $1647  ; e4 - volume fade
1488: dw $1665  ; e5
148a: dw $1685  ; e6 - pitch envelope (to)
148c: dw $169e  ; e7 - pitch envelope (from)
148e: dw $16b7  ; e8 - pitch envelope off
1490: dw $16c2  ; e9 - tuning
1492: dw $16ca  ; ea - set echo level
1494: dw $16e5  ; eb - set echo param
1496: dw $1780  ; ec - nop?
1498: dw $1781  ; ed - echo off
149a: dw $1794  ; ee - echo on
149c: dw $17a1  ; ef - set echo FIR
149e: dw $17fc  ; f0 - set ADSR
14a0: dw $1823  ; f1 - set duration/velocity
14a2: dw $183e  ; f2 - jump
14a4: dw $184e  ; f3 - call subroutine
14a6: dw $186b  ; f4 - return from subroutine
14a8: dw $18a5  ; f5 - noise on
14aa: dw $18af  ; f6 - noise off
14ac: dw $18bb  ; f7 - set noise clock
14ae: dw $18c5  ; f8
14b0: dw $1e96  ; f9 - do subcmd
                ; fa-ff - crash
; vcmd lengths
14b2: db         $00,$00,$01,$07,$01,$02 ; d2-d7
14b8: db $03,$01,$00,$01,$02,$01,$02,$01 ; d8-df
14c0: db $01,$03,$00,$01,$02,$03,$03,$03 ; e0-e7
14c8: db $00,$01,$02,$03,$03,$00,$00,$08 ; e8-ef
14d0: db $02,$01,$02,$02,$00,$00,$00,$01 ; f0-f7
14d8: db $00,$01                         ; f8-f9
; vcmd d2 - portamento on
14da: 5d        mov   x,a
14db: f5 a8 03  mov   a,$03a8+x
14de: 08 80     or    a,#$80
14e0: d5 a8 03  mov   $03a8+x,a
14e3: f5 a8 03  mov   a,$03a8+x
14e6: 28 df     and   a,#$df
14e8: d5 a8 03  mov   $03a8+x,a
14eb: 6f        ret
; vcmd d3 - portamento off
14ec: 5d        mov   x,a
14ed: f5 a8 03  mov   a,$03a8+x
14f0: 28 7f     and   a,#$7f
14f2: d5 a8 03  mov   $03a8+x,a
14f5: 6f        ret
; vcmd d4 - set patch
14f6: f8 36     mov   x,$36
14f8: f5 c7 09  mov   a,$09c7+x
14fb: fd        mov   y,a
14fc: f5 c0 09  mov   a,$09c0+x         ; load instrument table offset in YA
14ff: 7a 3b     addw  ya,$3b            ; relative offset to address (add sequence start address
1501: da 08     movw  $08,ya
1503: f8 37     mov   x,$37
1505: 3f c3 12  call  $12c3             ; read arg1: set patch
1508: 8d 06     mov   y,#$06
150a: cf        mul   ya                ; offset = patch * 6
150b: fd        mov   y,a               ; use lower 8 bits
150c: 6d        push  y
150d: f7 08     mov   a,($08)+y         ; offset +0: sample index
150f: d5 d8 03  mov   $03d8+x,a
1512: eb 36     mov   y,$36
1514: f6 e0 08  mov   a,$08e0+y
1517: 28 0f     and   a,#$0f
1519: 8d 10     mov   y,#$10
151b: cf        mul   ya
151c: ee        pop   y
151d: 60        clrc
151e: 97 08     adc   a,($08)+y         ; offset +0: sample index + (n * 0x10)
1520: fc        inc   y
1521: 6d        push  y
1522: fd        mov   y,a
1523: f6 25 0a  mov   a,$0a25+y         ; read actual SRCN
1526: 8d 04     mov   y,#$04
1528: 3f 37 14  call  $1437             ; set SRCN
152b: ee        pop   y
152c: f7 08     mov   a,($08)+y         ; offset +1: ADSR(1)
152e: fc        inc   y
152f: 2d        push  a
1530: 28 0f     and   a,#$0f
1532: d5 f0 03  mov   $03f0+x,a         ; AR
1535: ae        pop   a
1536: 28 70     and   a,#$70
1538: d5 08 04  mov   $0408+x,a         ; DR
153b: f7 08     mov   a,($08)+y         ; offset +2: ADSR(2)
153d: fc        inc   y
153e: 2d        push  a
153f: 28 1f     and   a,#$1f
1541: d5 38 04  mov   $0438+x,a         ; SR
1544: d5 50 04  mov   $0450+x,a         ; SR
1547: ae        pop   a
1548: 28 e0     and   a,#$e0
154a: d5 20 04  mov   $0420+x,a         ; SL
154d: f7 08     mov   a,($08)+y         ; offset +3: 
154f: fc        inc   y
1550: 6d        push  y
1551: 8d 07     mov   y,#$07
1553: 3f 37 14  call  $1437             ; set GAIN
1556: ee        pop   y
1557: f7 08     mov   a,($08)+y         ; offset +4: pitch multiplier (fraction)
1559: fc        inc   y
155a: d5 80 04  mov   $0480+x,a
155d: f7 08     mov   a,($08)+y         ; offset +5: pitch multiplier (integer)
155f: d5 68 04  mov   $0468+x,a
1562: 3f af 11  call  $11af
1565: 6f        ret
; vcmd d5
1566: 5d        mov   x,a
1567: 6f        ret
; vcmd d6 - pan
1568: 5d        mov   x,a
1569: 3f c3 12  call  $12c3
156c: 28 1f     and   a,#$1f
156e: d5 00 06  mov   $0600+x,a
1571: e8 00     mov   a,#$00
1573: d5 e8 05  mov   $05e8+x,a
1576: 6f        ret
; vcmd d7 - pan fade
1577: 5d        mov   x,a
1578: 3f c3 12  call  $12c3
157b: d5 60 06  mov   $0660+x,a
157e: 2d        push  a
157f: 3f c3 12  call  $12c3
1582: d5 18 06  mov   $0618+x,a
1585: 80        setc
1586: b5 00 06  sbc   a,$0600+x
1589: ee        pop   y
158a: 3f 9d 12  call  $129d
158d: d5 30 06  mov   $0630+x,a
1590: dd        mov   a,y
1591: d5 48 06  mov   $0648+x,a
1594: 6f        ret
; vcmd d8 - vibrato on
1595: 5d        mov   x,a
1596: 3f c3 12  call  $12c3
1599: d5 b0 07  mov   $07b0+x,a
159c: 3f c3 12  call  $12c3
159f: d5 98 07  mov   $0798+x,a
15a2: 3f c3 12  call  $12c3
15a5: d5 f8 07  mov   $07f8+x,a
15a8: d5 e0 07  mov   $07e0+x,a
15ab: e8 00     mov   a,#$00
15ad: d5 50 07  mov   $0750+x,a
15b0: 6f        ret
; vcmd d9 - vibrato fade
15b1: 5d        mov   x,a
15b2: 3f c3 12  call  $12c3
15b5: d5 50 07  mov   $0750+x,a
15b8: 2d        push  a
15b9: 8d 00     mov   y,#$00
15bb: f5 f8 07  mov   a,$07f8+x
15be: ce        pop   x
15bf: 9e        div   ya,x
15c0: f8 37     mov   x,$37
15c2: d5 10 08  mov   $0810+x,a
15c5: 6f        ret
; vcmd da - vibrato off
15c6: f8 37     mov   x,$37
15c8: e8 00     mov   a,#$00
15ca: d5 f8 07  mov   $07f8+x,a
15cd: d5 e0 07  mov   $07e0+x,a
15d0: d5 50 07  mov   $0750+x,a
15d3: 6f        ret
; vcmd db - master volume
15d4: f8 36     mov   x,$36
15d6: e8 00     mov   a,#$00
15d8: d5 03 09  mov   $0903+x,a
15db: 3f c3 12  call  $12c3
15de: d5 0a 09  mov   $090a+x,a
15e1: 6f        ret
; vcmd dc - master volume fade
15e2: f8 36     mov   x,$36
15e4: 3f c3 12  call  $12c3
15e7: d5 ee 08  mov   $08ee+x,a
15ea: 2d        push  a
15eb: 3f c3 12  call  $12c3
15ee: d5 11 09  mov   $0911+x,a
15f1: 80        setc
15f2: b5 0a 09  sbc   a,$090a+x
15f5: ee        pop   y
15f6: 3f 9d 12  call  $129d
15f9: d5 f5 08  mov   $08f5+x,a
15fc: dd        mov   a,y
15fd: d5 fc 08  mov   $08fc+x,a
1600: 6f        ret
; vcmd dd - tempo
1601: f8 36     mov   x,$36
1603: 3f c3 12  call  $12c3
1606: d5 96 09  mov   $0996+x,a
1609: 6f        ret
; vcmd de - nop
160a: f8 36     mov   x,$36
160c: 6f        ret
; vcmd df - global transpose
160d: f8 36     mov   x,$36
160f: 3f c3 12  call  $12c3
1612: d5 ce 09  mov   $09ce+x,a
1615: 6f        ret
; vcmd e0 - per-voice transpose
1616: 5d        mov   x,a
1617: 3f c3 12  call  $12c3
161a: d5 b8 08  mov   $08b8+x,a
161d: 6f        ret
; vcmd e1 - tremolo on
161e: 5d        mov   x,a
161f: 3f c3 12  call  $12c3
1622: d5 58 08  mov   $0858+x,a
1625: 3f c3 12  call  $12c3
1628: d5 40 08  mov   $0840+x,a
162b: 3f c3 12  call  $12c3
162e: d5 88 08  mov   $0888+x,a
1631: 6f        ret
; vcmd e2 - tremolo off
1632: f8 37     mov   x,$37
1634: e8 00     mov   a,#$00
1636: d5 88 08  mov   $0888+x,a
1639: 6f        ret
; vcmd e3 - volume
163a: 5d        mov   x,a
163b: 3f c3 12  call  $12c3
163e: d5 d0 05  mov   $05d0+x,a
1641: e8 00     mov   a,#$00
1643: d5 b8 05  mov   $05b8+x,a
1646: 6f        ret
; vcmd e4 - volume fade
1647: 5d        mov   x,a
1648: 3f c3 12  call  $12c3
164b: d5 58 05  mov   $0558+x,a
164e: 2d        push  a
164f: 3f c3 12  call  $12c3
1652: d5 a0 05  mov   $05a0+x,a
1655: 80        setc
1656: b5 d0 05  sbc   a,$05d0+x
1659: ee        pop   y
165a: 3f 9d 12  call  $129d
165d: d5 70 05  mov   $0570+x,a
1660: dd        mov   a,y
1661: d5 88 05  mov   $0588+x,a
1664: 6f        ret
; vcmd e5
1665: f8 37     mov   x,$37
1667: 3f c3 12  call  $12c3
166a: d5 c0 06  mov   $06c0+x,a
166d: 3f c3 12  call  $12c3
1670: d5 90 06  mov   $0690+x,a
1673: 3f c3 12  call  $12c3
1676: f8 36     mov   x,$36
1678: 60        clrc
1679: 95 ce 09  adc   a,$09ce+x
167c: f8 37     mov   x,$37
167e: 95 b8 08  adc   a,$08b8+x
1681: 3f 36 0e  call  $0e36
1684: 6f        ret
; vcmd e6 - pitch envelope (to)
1685: 5d        mov   x,a
1686: e8 01     mov   a,#$01
1688: d5 d8 06  mov   $06d8+x,a
168b: 3f c3 12  call  $12c3
168e: d5 a8 06  mov   $06a8+x,a
1691: 3f c3 12  call  $12c3
1694: d5 78 06  mov   $0678+x,a
1697: 3f c3 12  call  $12c3
169a: d5 f0 06  mov   $06f0+x,a
169d: 6f        ret
; vcmd e7 - pitch envelope (from)
169e: 5d        mov   x,a
169f: e8 00     mov   a,#$00
16a1: d5 d8 06  mov   $06d8+x,a
16a4: 3f c3 12  call  $12c3
16a7: d5 a8 06  mov   $06a8+x,a
16aa: 3f c3 12  call  $12c3
16ad: d5 78 06  mov   $0678+x,a
16b0: 3f c3 12  call  $12c3
16b3: d5 f0 06  mov   $06f0+x,a
16b6: 6f        ret
; vcmd e8 - pitch envelope off
16b7: f8 37     mov   x,$37
16b9: e8 00     mov   a,#$00
16bb: d5 78 06  mov   $0678+x,a
16be: d5 90 06  mov   $0690+x,a
16c1: 6f        ret
; vcmd e9 - tuning
16c2: 5d        mov   x,a
16c3: 3f c3 12  call  $12c3
16c6: d5 28 05  mov   $0528+x,a
16c9: 6f        ret
; vcmd ea - set echo level
16ca: f8 36     mov   x,$36
16cc: 3f c3 12  call  $12c3             ; echo vol L
16cf: e8 00     mov   a,#$00
16d1: da 24     movw  $24,ya
16d3: dd        mov   a,y
16d4: d5 26 09  mov   $0926+x,a
16d7: 3f c3 12  call  $12c3             ; echo vol R
16da: e8 00     mov   a,#$00
16dc: da 26     movw  $26,ya
16de: dd        mov   a,y
16df: d5 2d 09  mov   $092d+x,a
16e2: b2 23     clr5  $23
16e4: 6f        ret
; vcmd eb - set echo param
16e5: f8 36     mov   x,$36
16e7: 3f c3 12  call  $12c3             ; echo delay
16ea: 28 0f     and   a,#$0f
16ec: d5 18 09  mov   $0918+x,a
16ef: 3f 72 13  call  $1372
16f2: f8 36     mov   x,$36
16f4: 3f c3 12  call  $12c3             ; echo feedback
16f7: d5 1f 09  mov   $091f+x,a
16fa: c4 21     mov   $21,a
16fc: 3f c3 12  call  $12c3             ; FIR preset #
16ff: 1c        asl   a
1700: 1c        asl   a
1701: 1c        asl   a
1702: 5d        mov   x,a
1703: eb 36     mov   y,$36
1705: 8f 0f f2  mov   $f2,#$0f
1708: f5 60 17  mov   a,$1760+x
170b: d6 34 09  mov   $0934+y,a
170e: c4 f3     mov   $f3,a
1710: 8f 1f f2  mov   $f2,#$1f
1713: f5 61 17  mov   a,$1761+x
1716: d6 3b 09  mov   $093b+y,a
1719: c4 f3     mov   $f3,a
171b: 8f 2f f2  mov   $f2,#$2f
171e: f5 62 17  mov   a,$1762+x
1721: d6 42 09  mov   $0942+y,a
1724: c4 f3     mov   $f3,a
1726: 8f 3f f2  mov   $f2,#$3f
1729: f5 63 17  mov   a,$1763+x
172c: d6 49 09  mov   $0949+y,a
172f: c4 f3     mov   $f3,a
1731: 8f 4f f2  mov   $f2,#$4f
1734: f5 64 17  mov   a,$1764+x
1737: d6 50 09  mov   $0950+y,a
173a: c4 f3     mov   $f3,a
173c: 8f 5f f2  mov   $f2,#$5f
173f: f5 65 17  mov   a,$1765+x
1742: d6 57 09  mov   $0957+y,a
1745: c4 f3     mov   $f3,a
1747: 8f 6f f2  mov   $f2,#$6f
174a: f5 66 17  mov   a,$1766+x
174d: d6 5e 09  mov   $095e+y,a
1750: c4 f3     mov   $f3,a
1752: 8f 7f f2  mov   $f2,#$7f
1755: f5 67 17  mov   a,$1767+x
1758: d6 65 09  mov   $0965+y,a
175b: c4 f3     mov   $f3,a
175d: b2 23     clr5  $23
175f: 6f        ret
; echo FIR preset
1760: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1768: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
1770: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1778: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03
; vcmd ec - nop?
1780: 6f        ret
; vcmd ed - echo off
1781: 5d        mov   x,a
1782: f5 a8 03  mov   a,$03a8+x
1785: 28 fe     and   a,#$fe
1787: d5 a8 03  mov   $03a8+x,a
178a: fa 1c 00  mov   ($00),($1c)
178d: 58 ff 00  eor   $00,#$ff
1790: 29 00 1f  and   ($1f),($00)
1793: 6f        ret
; vcmd ee - echo on
1794: 5d        mov   x,a
1795: f5 a8 03  mov   a,$03a8+x
1798: 08 01     or    a,#$01
179a: d5 a8 03  mov   $03a8+x,a
179d: 09 1c 1f  or    ($1f),($1c)
17a0: 6f        ret
; vcmd ef - set echo FIR
17a1: f8 36     mov   x,$36
17a3: 3f c3 12  call  $12c3
17a6: 8f 0f f2  mov   $f2,#$0f
17a9: d5 34 09  mov   $0934+x,a
17ac: c4 f3     mov   $f3,a
17ae: 3f c3 12  call  $12c3
17b1: 8f 1f f2  mov   $f2,#$1f
17b4: d5 3b 09  mov   $093b+x,a
17b7: c4 f3     mov   $f3,a
17b9: 3f c3 12  call  $12c3
17bc: 8f 2f f2  mov   $f2,#$2f
17bf: d5 42 09  mov   $0942+x,a
17c2: c4 f3     mov   $f3,a
17c4: 3f c3 12  call  $12c3
17c7: 8f 3f f2  mov   $f2,#$3f
17ca: d5 49 09  mov   $0949+x,a
17cd: c4 f3     mov   $f3,a
17cf: 3f c3 12  call  $12c3
17d2: 8f 4f f2  mov   $f2,#$4f
17d5: d5 50 09  mov   $0950+x,a
17d8: c4 f3     mov   $f3,a
17da: 3f c3 12  call  $12c3
17dd: 8f 5f f2  mov   $f2,#$5f
17e0: d5 57 09  mov   $0957+x,a
17e3: c4 f3     mov   $f3,a
17e5: 3f c3 12  call  $12c3
17e8: 8f 6f f2  mov   $f2,#$6f
17eb: d5 5e 09  mov   $095e+x,a
17ee: c4 f3     mov   $f3,a
17f0: 3f c3 12  call  $12c3
17f3: 8f 7f f2  mov   $f2,#$7f
17f6: d5 65 09  mov   $0965+x,a
17f9: c4 f3     mov   $f3,a
17fb: 6f        ret
; vcmd f0 - set ADSR
17fc: f8 37     mov   x,$37
17fe: 3f c3 12  call  $12c3
1801: 2d        push  a
1802: 28 0f     and   a,#$0f
1804: d5 f0 03  mov   $03f0+x,a
1807: ae        pop   a
1808: 28 70     and   a,#$70
180a: d5 08 04  mov   $0408+x,a
180d: 3f c3 12  call  $12c3
1810: 2d        push  a
1811: 28 1f     and   a,#$1f
1813: d5 38 04  mov   $0438+x,a
1816: d5 50 04  mov   $0450+x,a
1819: ae        pop   a
181a: 28 e0     and   a,#$e0
181c: d5 20 04  mov   $0420+x,a
181f: 3f af 11  call  $11af
1822: 6f        ret
; vcmd f1 - set duration/velocity
1823: f8 37     mov   x,$37
1825: 3f c3 12  call  $12c3
1828: 2d        push  a
1829: 9f        xcn   a
182a: 28 0f     and   a,#$0f            ; upper 4 bit
182c: fd        mov   y,a
182d: f6 6b 12  mov   a,$126b+y         ; set duration from table
1830: d5 f8 04  mov   $04f8+x,a
1833: ae        pop   a
1834: 28 0f     and   a,#$0f            ; lower 4 bit
1836: fd        mov   y,a
1837: f6 73 12  mov   a,$1273+y         ; set velocity from table
183a: d5 40 05  mov   $0540+x,a
183d: 6f        ret
; vcmd f2 - jump
183e: 5d        mov   x,a
183f: 3f c3 12  call  $12c3
1842: 2d        push  a
1843: 3f c3 12  call  $12c3
1846: c4 39     mov   $39,a
1848: ae        pop   a
1849: c4 38     mov   $38,a             ; set arg1/2 (new offset) to $38/9
184b: 5f 9b 18  jmp   $189b             ; convert offset to address
; vcmd f3 - call subroutine
184e: 5d        mov   x,a
184f: 3f c3 12  call  $12c3
1852: 2d        push  a
1853: 3f c3 12  call  $12c3
1856: 2d        push  a
1857: ba 38     movw  ya,$38
1859: 9a 3b     subw  ya,$3b            ; set current offset to YA
185b: d5 60 03  mov   $0360+x,a
185e: dd        mov   a,y
185f: d5 78 03  mov   $0378+x,a
1862: ae        pop   a
1863: c4 39     mov   $39,a
1865: ae        pop   a
1866: c4 38     mov   $38,a             ; set arg1/2 (new offset) to $38/9
1868: 5f 9b 18  jmp   $189b             ; convert offset to address
; vcmd f4 - return from subroutine
186b: 5d        mov   x,a
186c: f5 60 03  mov   a,$0360+x
186f: c4 38     mov   $38,a
1871: f5 78 03  mov   a,$0378+x
1874: c4 39     mov   $39,a
1876: 5f 9b 18  jmp   $189b
; f9 subcmd 00 - set repeat count
1879: 5d        mov   x,a
187a: 3f c3 12  call  $12c3
187d: d5 90 03  mov   $0390+x,a
1880: 6f        ret
; f9 subcmd 01 - conditional loop
1881: 5d        mov   x,a
1882: 3f c3 12  call  $12c3
1885: 2d        push  a
1886: 3f c3 12  call  $12c3
1889: 2d        push  a
188a: f5 90 03  mov   a,$0390+x
188d: f0 13     beq   $18a2
188f: 9c        dec   a
1890: d5 90 03  mov   $0390+x,a
1893: f0 0d     beq   $18a2             ; jump if the counter > 0
1895: ae        pop   a
1896: c4 39     mov   $39,a
1898: ae        pop   a
1899: c4 38     mov   $38,a
; convert offset in $38/9 to address
189b: ba 3b     movw  ya,$3b
189d: 7a 38     addw  ya,$38
189f: da 38     movw  $38,ya
18a1: 6f        ret
; clean up arg1/2 on stack
18a2: ae        pop   a
18a3: ae        pop   a
18a4: 6f        ret
; vcmd f5 - noise on
18a5: 5d        mov   x,a
18a6: f5 a8 03  mov   a,$03a8+x
18a9: 08 10     or    a,#$10
18ab: d5 a8 03  mov   $03a8+x,a
18ae: 6f        ret
; vcmd f6 - noise off
18af: 5d        mov   x,a
18b0: f5 a8 03  mov   a,$03a8+x
18b3: 28 f7     and   a,#$f7
18b5: 28 ef     and   a,#$ef
18b7: d5 a8 03  mov   $03a8+x,a
18ba: 6f        ret
; vcmd f7 - set noise clock
18bb: 5d        mov   x,a
18bc: 3f c3 12  call  $12c3
18bf: 28 1f     and   a,#$1f
18c1: d5 c0 03  mov   $03c0+x,a
18c4: 6f        ret
; vcmd f8
18c5: 5d        mov   x,a
18c6: f5 a8 03  mov   a,$03a8+x
18c9: 08 08     or    a,#$08
18cb: d5 a8 03  mov   $03a8+x,a
18ce: 6f        ret
; f9 subcmd 02 - nop
18cf: 5d        mov   x,a
18d0: 6f        ret
; f9 subcmd 03 - set attack rate
18d1: 5d        mov   x,a
18d2: 3f c3 12  call  $12c3
18d5: 28 0f     and   a,#$0f
18d7: d5 f0 03  mov   $03f0+x,a
18da: 6f        ret
; f9 subcmd 04 - set decay rate
18db: 5d        mov   x,a
18dc: 3f c3 12  call  $12c3
18df: 1c        asl   a
18e0: 1c        asl   a
18e1: 1c        asl   a
18e2: 1c        asl   a
18e3: 28 70     and   a,#$70
18e5: d5 08 04  mov   $0408+x,a
18e8: 6f        ret
; f9 subcmd 05 - set sustain level
18e9: 5d        mov   x,a
18ea: 3f c3 12  call  $12c3
18ed: 1c        asl   a
18ee: 1c        asl   a
18ef: 1c        asl   a
18f0: 1c        asl   a
18f1: 1c        asl   a
18f2: 28 e0     and   a,#$e0
18f4: d5 20 04  mov   $0420+x,a
18f7: 6f        ret
; f9 subcmd 06 - set release rate
18f8: 5d        mov   x,a
18f9: 3f c3 12  call  $12c3
18fc: 28 1f     and   a,#$1f
18fe: d5 38 04  mov   $0438+x,a
1901: 6f        ret
; f9 subcmd 07 - set sustain rate
1902: 5d        mov   x,a
1903: 3f c3 12  call  $12c3
1906: 28 1f     and   a,#$1f
1908: d5 50 04  mov   $0450+x,a
190b: 6f        ret
; f9 subcmd 09 - surround effect
190c: 5d        mov   x,a
190d: f5 a8 03  mov   a,$03a8+x
1910: 28 fb     and   a,#$fb
1912: 28 fd     and   a,#$fd
1914: c4 00     mov   $00,a
1916: 3f c3 12  call  $12c3
1919: f0 03     beq   $191e
191b: 18 04 00  or    $00,#$04
191e: 3f c3 12  call  $12c3
1921: f0 03     beq   $1926
1923: 18 02 00  or    $00,#$02
1926: e4 00     mov   a,$00
1928: d5 a8 03  mov   $03a8+x,a
192b: 6f        ret
;
192c: fa 30 f4  mov   ($f4),($30)
192f: e4 f4     mov   a,$f4
1931: 64 f4     cmp   a,$f4
1933: d0 f7     bne   $192c
1935: 64 30     cmp   a,$30
1937: f0 14     beq   $194d
1939: ab 30     inc   $30
193b: e4 f5     mov   a,$f5
193d: 64 f5     cmp   a,$f5
193f: d0 fa     bne   $193b
1941: fa f6 31  mov   ($31),($f6)
1944: fa f7 32  mov   ($32),($f7)
1947: 3f 54 19  call  $1954
194a: 5f 2c 19  jmp   $192c
194d: eb fd     mov   y,$fd
194f: f0 db     beq   $192c
1951: cb 2f     mov   $2f,y
1953: 6f        ret
;
1954: 68 0f     cmp   a,#$0f
1956: b0 05     bcs   $195d
1958: 1c        asl   a
1959: 5d        mov   x,a
195a: 1f 61 19  jmp   ($1961+x)
; cpu cmd 00
195d: fa 30 f4  mov   ($f4),($30)
1960: 6f        ret
; cpu cmd dispatch table
1961: dw $195d  ; 00
1963: dw $197f  ; 01
1965: dw $19ae  ; 02
1967: dw $1ac5  ; 03
1969: dw $1ad7  ; 04
196b: dw $1ae2  ; 05
196d: dw $1afd  ; 06
196f: dw $1b21  ; 07
1971: dw $1b3c  ; 08
1973: dw $1b4c  ; 09
1975: dw $1b53  ; 0a
1977: dw $198e  ; 0b
1979: dw $19bd  ; 0c
197b: dw $19e9  ; 0d
197d: dw $1ace  ; 0e
; cpu cmd 01
197f: 3f 8e 19  call  $198e
1982: 3f b3 1a  call  $1ab3
1985: da 0e     movw  $0e,ya
1987: 3f 94 1a  call  $1a94
198a: 3f fc 19  call  $19fc
198d: 6f        ret
; cpu cmd 0b
198e: fa 30 f4  mov   ($f4),($30)
1991: 3f b3 1a  call  $1ab3
1994: 1c        asl   a
1995: 1c        asl   a
1996: 5d        mov   x,a
1997: 3f b3 1a  call  $1ab3
199a: da 0c     movw  $0c,ya
199c: d5 00 02  mov   $0200+x,a
199f: dd        mov   a,y
19a0: d5 01 02  mov   $0201+x,a
19a3: 3f b3 1a  call  $1ab3
19a6: d5 02 02  mov   $0202+x,a
19a9: dd        mov   a,y
19aa: d5 03 02  mov   $0203+x,a
19ad: 6f        ret
; cpu cmd 02
19ae: 3f bd 19  call  $19bd
19b1: 3f b3 1a  call  $1ab3
19b4: da 0e     movw  $0e,ya
19b6: 3f 94 1a  call  $1a94
19b9: 3f fc 19  call  $19fc
19bc: 6f        ret
; cpu cmd 0c
19bd: fa 30 f4  mov   ($f4),($30)
19c0: 3f b3 1a  call  $1ab3
19c3: 2d        push  a
19c4: 8d 10     mov   y,#$10
19c6: cf        mul   ya
19c7: 5d        mov   x,a
19c8: 8f 08 00  mov   $00,#$08
19cb: 3f b3 1a  call  $1ab3
19ce: d5 25 0a  mov   $0a25+x,a
19d1: dd        mov   a,y
19d2: d5 26 0a  mov   $0a26+x,a
19d5: 3d        inc   x
19d6: 3d        inc   x
19d7: 8b 00     dec   $00
19d9: d0 f0     bne   $19cb
19db: ce        pop   x
19dc: 3f b3 1a  call  $1ab3
19df: da 0c     movw  $0c,ya
19e1: d5 0d 0a  mov   $0a0d+x,a
19e4: dd        mov   a,y
19e5: d5 19 0a  mov   $0a19+x,a
19e8: 6f        ret
; cpu cmd 0d
19e9: fa 30 f4  mov   ($f4),($30)
19ec: ba 31     movw  ya,$31
19ee: da 0c     movw  $0c,ya
19f0: 3f b3 1a  call  $1ab3
19f3: da 0e     movw  $0e,ya
19f5: 3f 94 1a  call  $1a94
19f8: 3f fc 19  call  $19fc
19fb: 6f        ret
;
19fc: e4 0c     mov   a,$0c
19fe: c5 4e 1a  mov   $1a4e,a
1a01: c5 56 1a  mov   $1a56,a
1a04: c5 63 1a  mov   $1a63,a
1a07: e4 0d     mov   a,$0d
1a09: c5 4f 1a  mov   $1a4f,a
1a0c: c5 57 1a  mov   $1a57,a
1a0f: c5 64 1a  mov   $1a64,a
1a12: 8f 55 12  mov   $12,#$55
1a15: ba 0e     movw  ya,$0e
1a17: f0 56     beq   $1a6f
1a19: ba 13     movw  ya,$13
1a1b: 9a 0e     subw  ya,$0e
1a1d: cb 0f     mov   $0f,y
1a1f: 5d        mov   x,a
1a20: 8d 00     mov   y,#$00
1a22: 8b 12     dec   $12
1a24: d0 1b     bne   $1a41
1a26: 8f 55 12  mov   $12,#$55
1a29: 4d        push  x
1a2a: 6d        push  y
1a2b: eb fd     mov   y,$fd
1a2d: f0 0e     beq   $1a3d
1a2f: cb 2f     mov   $2f,y
1a31: 8f 00 1d  mov   $1d,#$00
1a34: 8f 00 1e  mov   $1e,#$00
1a37: 3f 4b 0b  call  $0b4b
1a3a: 3f 62 0b  call  $0b62
1a3d: ee        pop   y
1a3e: ce        pop   x
1a3f: 2f e1     bra   $1a22
1a41: e4 f4     mov   a,$f4
1a43: 64 30     cmp   a,$30
1a45: f0 db     beq   $1a22
1a47: 64 f4     cmp   a,$f4
1a49: d0 d7     bne   $1a22
1a4b: e4 f5     mov   a,$f5
1a4d: d6 b6 c0  mov   $c0b6+y,a
1a50: fc        inc   y
1a51: f0 1d     beq   $1a70
1a53: e4 f6     mov   a,$f6
1a55: d6 b6 c0  mov   $c0b6+y,a
1a58: fc        inc   y
1a59: f0 21     beq   $1a7c
1a5b: e4 f7     mov   a,$f7
1a5d: ab 30     inc   $30
1a5f: fa 30 f4  mov   ($f4),($30)
1a62: d6 b6 c0  mov   $c0b6+y,a
1a65: fc        inc   y
1a66: f0 20     beq   $1a88
1a68: 3d        inc   x
1a69: d0 b7     bne   $1a22
1a6b: ab 0f     inc   $0f
1a6d: d0 b3     bne   $1a22
1a6f: 6f        ret
1a70: ac 4f 1a  inc   $1a4f
1a73: ac 57 1a  inc   $1a57
1a76: ac 64 1a  inc   $1a64
1a79: 5f 53 1a  jmp   $1a53
1a7c: ac 4f 1a  inc   $1a4f
1a7f: ac 57 1a  inc   $1a57
1a82: ac 64 1a  inc   $1a64
1a85: 5f 5b 1a  jmp   $1a5b
1a88: ac 4f 1a  inc   $1a4f
1a8b: ac 57 1a  inc   $1a57
1a8e: ac 64 1a  inc   $1a64
1a91: 5f 68 1a  jmp   $1a68
;
1a94: 8f 23 11  mov   $11,#$23
1a97: 8f 00 10  mov   $10,#$00
1a9a: ba 0e     movw  ya,$0e
1a9c: 7a 0e     addw  ya,$0e
1a9e: 7a 0e     addw  ya,$0e
1aa0: 7a 0c     addw  ya,$0c
1aa2: 5a 10     cmpw  ya,$10
1aa4: 90 0c     bcc   $1ab2
1aa6: cb 10     mov   $10,y
1aa8: e8 ff     mov   a,#$ff
1aaa: 60        clrc
1aab: a4 10     sbc   a,$10
1aad: 5c        lsr   a
1aae: 5c        lsr   a
1aaf: 5c        lsr   a
1ab0: c4 2a     mov   $2a,a
1ab2: 6f        ret
;
1ab3: e4 f4     mov   a,$f4
1ab5: 64 30     cmp   a,$30
1ab7: f0 fa     beq   $1ab3
1ab9: 64 f4     cmp   a,$f4
1abb: d0 f6     bne   $1ab3
1abd: ab 30     inc   $30
1abf: ba f6     movw  ya,$f6
1ac1: fa 30 f4  mov   ($f4),($30)
1ac4: 6f        ret
; cpu cmd 03
1ac5: fa 30 f4  mov   ($f4),($30)
1ac8: ba 31     movw  ya,$31
1aca: 3f 5b 1b  call  $1b5b
1acd: 6f        ret
; cpu cmd 0e
1ace: fa 30 f4  mov   ($f4),($30)
1ad1: ba 31     movw  ya,$31
1ad3: 3f 1b 1c  call  $1c1b
1ad6: 6f        ret
; cpu cmd 04
1ad7: fa 30 f4  mov   ($f4),($30)
1ada: e4 31     mov   a,$31
1adc: c4 36     mov   $36,a
1ade: 3f bd 1d  call  $1dbd
1ae1: 6f        ret
; cpu cmd 05
1ae2: f8 31     mov   x,$31
1ae4: c8 07     cmp   x,#$07
1ae6: b0 0e     bcs   $1af6
1ae8: f5 e0 08  mov   a,$08e0+x
1aeb: 68 ff     cmp   a,#$ff
1aed: f0 07     beq   $1af6
1aef: 8f 00 f5  mov   $f5,#$00
1af2: fa 30 f4  mov   ($f4),($30)
1af5: 6f        ret
1af6: 8f ff f5  mov   $f5,#$ff
1af9: fa 30 f4  mov   ($f4),($30)
1afc: 6f        ret
; cpu cmd 06
1afd: fa 30 f4  mov   ($f4),($30)
1b00: ba 31     movw  ya,$31
1b02: 3f 5b 1b  call  $1b5b
1b05: 3f b3 1a  call  $1ab3
1b08: f8 36     mov   x,$36
1b0a: 8f 00 00  mov   $00,#$00
1b0d: 1c        asl   a
1b0e: 2b 00     rol   $00
1b10: 1c        asl   a
1b11: 2b 00     rol   $00
1b13: d5 88 09  mov   $0988+x,a
1b16: e4 00     mov   a,$00
1b18: d5 8f 09  mov   $098f+x,a
1b1b: e8 01     mov   a,#$01
1b1d: d5 81 09  mov   $0981+x,a
1b20: 6f        ret
; cpu cmd 07
1b21: fa 30 f4  mov   ($f4),($30)
1b24: f8 31     mov   x,$31
1b26: e4 32     mov   a,$32
1b28: 8f 00 00  mov   $00,#$00
1b2b: 1c        asl   a
1b2c: 2b 00     rol   $00
1b2e: 1c        asl   a
1b2f: 2b 00     rol   $00
1b31: d5 88 09  mov   $0988+x,a
1b34: e4 00     mov   a,$00
1b36: 08 80     or    a,#$80
1b38: d5 8f 09  mov   $098f+x,a
1b3b: 6f        ret
; cpu cmd 08
1b3c: fa 30 f4  mov   ($f4),($30)
1b3f: f8 31     mov   x,$31
1b41: e4 32     mov   a,$32
1b43: d5 6c 09  mov   $096c+x,a
1b46: e8 01     mov   a,#$01
1b48: d5 73 09  mov   $0973+x,a
1b4b: 6f        ret
; cpu cmd 09
1b4c: fa 30 f4  mov   ($f4),($30)
1b4f: 8f ff 2b  mov   $2b,#$ff
1b52: 6f        ret
; cpu cmd 0a
1b53: fa 30 f4  mov   ($f4),($30)
1b56: e4 31     mov   a,$31
1b58: c4 35     mov   $35,a
1b5a: 6f        ret
;
1b5b: 6d        push  y
1b5c: c4 36     mov   $36,a
1b5e: 3f d9 1d  call  $1dd9
1b61: f8 36     mov   x,$36
1b63: e8 00     mov   a,#$00
1b65: d5 88 09  mov   $0988+x,a
1b68: d5 8f 09  mov   $098f+x,a
1b6b: d5 73 09  mov   $0973+x,a
1b6e: d5 03 09  mov   $0903+x,a
1b71: e8 c0     mov   a,#$c0
1b73: d5 0a 09  mov   $090a+x,a
1b76: e8 00     mov   a,#$00
1b78: d5 ee 08  mov   $08ee+x,a
1b7b: d5 ce 09  mov   $09ce+x,a
1b7e: d5 9d 09  mov   $099d+x,a
1b81: d5 18 09  mov   $0918+x,a
1b84: d5 1f 09  mov   $091f+x,a
1b87: e8 10     mov   a,#$10
1b89: d5 96 09  mov   $0996+x,a
1b8c: e8 ff     mov   a,#$ff
1b8e: d5 6c 09  mov   $096c+x,a
1b91: d5 7a 09  mov   $097a+x,a
1b94: d5 81 09  mov   $0981+x,a
1b97: e8 03     mov   a,#$03
1b99: d5 e7 08  mov   $08e7+x,a
1b9c: ee        pop   y
1b9d: f6 0d 0a  mov   a,$0a0d+y
1ba0: c4 08     mov   $08,a
1ba2: f6 19 0a  mov   a,$0a19+y
1ba5: c4 09     mov   $09,a             ; set $0A0D/0A19+Y to $08/9
1ba7: f8 36     mov   x,$36
1ba9: dd        mov   a,y
1baa: d5 e0 08  mov   $08e0+x,a
1bad: 8d 00     mov   y,#$00            ; zero offset
1baf: f7 08     mov   a,($08)+y         ; offset 0
1bb1: d5 c0 09  mov   $09c0+x,a
1bb4: fc        inc   y
1bb5: f7 08     mov   a,($08)+y         ; offset 1
1bb7: d5 c7 09  mov   $09c7+x,a
1bba: e8 00     mov   a,#$00
1bbc: c4 00     mov   $00,a
1bbe: c5 d8 08  mov   $08d8,a
1bc1: c5 d9 08  mov   $08d9,a
1bc4: c5 da 08  mov   $08da,a
1bc7: c5 db 08  mov   $08db,a
1bca: c5 dc 08  mov   $08dc,a
1bcd: c5 dd 08  mov   $08dd,a
1bd0: c5 de 08  mov   $08de,a
1bd3: c5 df 08  mov   $08df,a
1bd6: 8f 64 3d  mov   $3d,#$64
1bd9: 3f ab 1d  call  $1dab
1bdc: 90 3c     bcc   $1c1a
1bde: d8 37     mov   $37,x
1be0: e4 00     mov   a,$00
1be2: 1c        asl   a
1be3: fd        mov   y,a
1be4: fc        inc   y
1be5: fc        inc   y
1be6: f7 08     mov   a,($08)+y         ; offset $00*2 + 2
1be8: c4 01     mov   $01,a
1bea: fc        inc   y
1beb: d5 30 03  mov   $0330+x,a
1bee: f7 08     mov   a,($08)+y         ; offset ($00*2 + 2) + 1
1bf0: 04 01     or    a,$01
1bf2: f0 26     beq   $1c1a
1bf4: f7 08     mov   a,($08)+y
1bf6: d5 48 03  mov   $0348+x,a
1bf9: e4 00     mov   a,$00
1bfb: 8d 07     mov   y,#$07
1bfd: cf        mul   ya
1bfe: 60        clrc
1bff: 84 36     adc   a,$36
1c01: fd        mov   y,a
1c02: 7d        mov   a,x
1c03: d6 d5 09  mov   $09d5+y,a
1c06: e8 00     mov   a,#$00
1c08: d5 a8 03  mov   $03a8+x,a
1c0b: 3f fe 1c  call  $1cfe
1c0e: 3f 63 1d  call  $1d63
1c11: 8b 3d     dec   $3d
1c13: ab 00     inc   $00
1c15: 78 08 00  cmp   $00,#$08
1c18: 90 bf     bcc   $1bd9
1c1a: 6f        ret
;
1c1b: 6d        push  y
1c1c: c4 36     mov   $36,a
1c1e: 68 00     cmp   a,#$00
1c20: f0 02     beq   $1c24
1c22: ee        pop   y
1c23: 6f        ret
1c24: 3f bd 1d  call  $1dbd
1c27: f8 36     mov   x,$36
1c29: e8 03     mov   a,#$03
1c2b: d5 e7 08  mov   $08e7+x,a
1c2e: e8 00     mov   a,#$00
1c30: d5 88 09  mov   $0988+x,a
1c33: e8 02     mov   a,#$02
1c35: d5 8f 09  mov   $098f+x,a
1c38: e8 01     mov   a,#$01
1c3a: d5 81 09  mov   $0981+x,a
1c3d: f5 18 09  mov   a,$0918+x
1c40: 3f 72 13  call  $1372
1c43: b2 23     clr5  $23
1c45: f5 1f 09  mov   a,$091f+x
1c48: c4 21     mov   $21,a
1c4a: e8 00     mov   a,#$00
1c4c: c4 24     mov   $24,a
1c4e: c4 26     mov   $26,a
1c50: f5 26 09  mov   a,$0926+x
1c53: c4 25     mov   $25,a
1c55: f5 2d 09  mov   a,$092d+x
1c58: c4 27     mov   $27,a
1c5a: 8f 0f f2  mov   $f2,#$0f
1c5d: f5 34 09  mov   a,$0934+x
1c60: c4 f3     mov   $f3,a
1c62: 8f 1f f2  mov   $f2,#$1f
1c65: f5 3b 09  mov   a,$093b+x
1c68: c4 f3     mov   $f3,a
1c6a: 8f 2f f2  mov   $f2,#$2f
1c6d: f5 42 09  mov   a,$0942+x
1c70: c4 f3     mov   $f3,a
1c72: 8f 3f f2  mov   $f2,#$3f
1c75: f5 49 09  mov   a,$0949+x
1c78: c4 f3     mov   $f3,a
1c7a: 8f 4f f2  mov   $f2,#$4f
1c7d: f5 50 09  mov   a,$0950+x
1c80: c4 f3     mov   $f3,a
1c82: 8f 5f f2  mov   $f2,#$5f
1c85: f5 57 09  mov   a,$0957+x
1c88: c4 f3     mov   $f3,a
1c8a: 8f 6f f2  mov   $f2,#$6f
1c8d: f5 5e 09  mov   a,$095e+x
1c90: c4 f3     mov   $f3,a
1c92: 8f 7f f2  mov   $f2,#$7f
1c95: f5 65 09  mov   a,$0965+x
1c98: c4 f3     mov   $f3,a
1c9a: ee        pop   y
1c9b: f8 36     mov   x,$36
1c9d: dd        mov   a,y
1c9e: d5 e0 08  mov   $08e0+x,a
1ca1: e8 00     mov   a,#$00
1ca3: c4 03     mov   $03,a
1ca5: c5 d8 08  mov   $08d8,a
1ca8: c5 d9 08  mov   $08d9,a
1cab: c5 da 08  mov   $08da,a
1cae: c5 db 08  mov   $08db,a
1cb1: c5 dc 08  mov   $08dc,a
1cb4: c5 dd 08  mov   $08dd,a
1cb7: c5 de 08  mov   $08de,a
1cba: c5 df 08  mov   $08df,a
1cbd: 8f 64 3d  mov   $3d,#$64
1cc0: e4 03     mov   a,$03
1cc2: 8d 07     mov   y,#$07
1cc4: cf        mul   ya
1cc5: 60        clrc
1cc6: 84 36     adc   a,$36
1cc8: fd        mov   y,a
1cc9: f6 d5 09  mov   a,$09d5+y
1ccc: 5d        mov   x,a
1ccd: d8 37     mov   $37,x
1ccf: 3f fe 1c  call  $1cfe
1cd2: 90 1b     bcc   $1cef
1cd4: dd        mov   a,y
1cd5: 9f        xcn   a
1cd6: c4 1b     mov   $1b,a
1cd8: eb 36     mov   y,$36
1cda: f6 e0 08  mov   a,$08e0+y
1cdd: 28 0f     and   a,#$0f
1cdf: 8d 10     mov   y,#$10
1ce1: cf        mul   ya
1ce2: 60        clrc
1ce3: 95 d8 03  adc   a,$03d8+x
1ce6: fd        mov   y,a
1ce7: f6 25 0a  mov   a,$0a25+y
1cea: 8d 04     mov   y,#$04
1cec: 3f 37 14  call  $1437
1cef: e4 3d     mov   a,$3d
1cf1: d5 18 03  mov   $0318+x,a
1cf4: 8b 3d     dec   $3d
1cf6: ab 03     inc   $03
1cf8: 78 08 03  cmp   $03,#$08
1cfb: 90 c3     bcc   $1cc0
1cfd: 6f        ret
;
1cfe: 4d        push  x
1cff: 8f ff 01  mov   $01,#$ff
1d02: 8f 00 02  mov   $02,#$00
1d05: 8d 00     mov   y,#$00
1d07: f6 d8 08  mov   a,$08d8+y
1d0a: d0 13     bne   $1d1f
1d0c: f6 d0 08  mov   a,$08d0+y
1d0f: 68 ff     cmp   a,#$ff
1d11: f0 18     beq   $1d2b
1d13: 5d        mov   x,a
1d14: f5 18 03  mov   a,$0318+x
1d17: 64 01     cmp   a,$01
1d19: b0 04     bcs   $1d1f
1d1b: c4 01     mov   $01,a
1d1d: cb 02     mov   $02,y
1d1f: fc        inc   y
1d20: ad 08     cmp   y,#$08
1d22: 90 e3     bcc   $1d07
1d24: eb 02     mov   y,$02
1d26: 69 3d 01  cmp   ($01),($3d)
1d29: b0 2c     bcs   $1d57
1d2b: ce        pop   x
1d2c: dd        mov   a,y
1d2d: d5 00 03  mov   $0300+x,a
1d30: 7d        mov   a,x
1d31: d6 d0 08  mov   $08d0+y,a
1d34: e8 01     mov   a,#$01
1d36: d6 d8 08  mov   $08d8+y,a
1d39: f6 2f 14  mov   a,$142f+y
1d3c: 24 1f     and   a,$1f
1d3e: c4 1f     mov   $1f,a
1d40: f5 a8 03  mov   a,$03a8+x
1d43: 28 01     and   a,#$01
1d45: f0 07     beq   $1d4e
1d47: f6 27 14  mov   a,$1427+y
1d4a: 04 1f     or    a,$1f
1d4c: c4 1f     mov   $1f,a
1d4e: f6 27 14  mov   a,$1427+y
1d51: 04 1e     or    a,$1e
1d53: c4 1e     mov   $1e,a
1d55: 80        setc
1d56: 6f        ret
1d57: ce        pop   x
1d58: dd        mov   a,y
1d59: d5 00 03  mov   $0300+x,a
1d5c: e8 01     mov   a,#$01
1d5e: d6 d8 08  mov   $08d8+y,a
1d61: 60        clrc
1d62: 6f        ret
;
1d63: e8 00     mov   a,#$00
1d65: d5 b8 05  mov   $05b8+x,a
1d68: d5 b8 08  mov   $08b8+x,a
1d6b: d5 58 05  mov   $0558+x,a
1d6e: d5 28 05  mov   $0528+x,a
1d71: d5 60 06  mov   $0660+x,a
1d74: d5 e8 05  mov   $05e8+x,a
1d77: d5 a8 03  mov   $03a8+x,a
1d7a: d5 c0 03  mov   $03c0+x,a
1d7d: d5 d8 03  mov   $03d8+x,a
1d80: e8 10     mov   a,#$10
1d82: d5 e0 04  mov   $04e0+x,a
1d85: e8 af     mov   a,#$af
1d87: d5 f8 04  mov   $04f8+x,a
1d8a: d5 10 05  mov   $0510+x,a
1d8d: e4 3d     mov   a,$3d
1d8f: d5 18 03  mov   $0318+x,a
1d92: e8 ff     mov   a,#$ff
1d94: d5 d0 05  mov   $05d0+x,a
1d97: e8 01     mov   a,#$01
1d99: d5 c8 04  mov   $04c8+x,a
1d9c: e8 0a     mov   a,#$0a
1d9e: d5 00 06  mov   $0600+x,a
1da1: 3f 32 16  call  $1632
1da4: 3f b7 16  call  $16b7
1da7: 3f c6 15  call  $15c6
1daa: 6f        ret
;
1dab: cd 00     mov   x,#$00
1dad: f5 48 03  mov   a,$0348+x
1db0: 68 ff     cmp   a,#$ff
1db2: f0 07     beq   $1dbb
1db4: 3d        inc   x
1db5: c8 18     cmp   x,#$18
1db7: 90 f4     bcc   $1dad
1db9: 60        clrc
1dba: 6f        ret
1dbb: 80        setc
1dbc: 6f        ret
;
1dbd: eb 36     mov   y,$36
1dbf: ad 00     cmp   y,#$00
1dc1: d0 04     bne   $1dc7
1dc3: 3f fd 1d  call  $1dfd
1dc6: 6f        ret
1dc7: f6 e0 08  mov   a,$08e0+y
1dca: 68 ff     cmp   a,#$ff
1dcc: d0 07     bne   $1dd5
1dce: 3f e0 1d  call  $1de0
1dd1: 3f 23 1e  call  $1e23
1dd4: 6f        ret
1dd5: 3f 10 1e  call  $1e10
1dd8: 6f        ret
;
1dd9: 3f 10 1e  call  $1e10
1ddc: 3f e0 1d  call  $1de0
1ddf: 6f        ret
;
1de0: eb 36     mov   y,$36
1de2: e8 ff     mov   a,#$ff
1de4: d6 d5 09  mov   $09d5+y,a
1de7: d6 dc 09  mov   $09dc+y,a
1dea: d6 e3 09  mov   $09e3+y,a
1ded: d6 ea 09  mov   $09ea+y,a
1df0: d6 f1 09  mov   $09f1+y,a
1df3: d6 f8 09  mov   $09f8+y,a
1df6: d6 ff 09  mov   $09ff+y,a
1df9: d6 06 0a  mov   $0a06+y,a
1dfc: 6f        ret
;
1dfd: 8f 00 00  mov   $00,#$00
1e00: e4 00     mov   a,$00
1e02: 3f 66 1e  call  $1e66
1e05: ab 00     inc   $00
1e07: 78 08 00  cmp   $00,#$08
1e0a: 90 f4     bcc   $1e00
1e0c: 3f 23 1e  call  $1e23
1e0f: 6f        ret
;
1e10: 8f 00 00  mov   $00,#$00
1e13: e4 00     mov   a,$00
1e15: 3f 49 1e  call  $1e49
1e18: ab 00     inc   $00
1e1a: 78 08 00  cmp   $00,#$08
1e1d: 90 f4     bcc   $1e13
1e1f: 3f 23 1e  call  $1e23
1e22: 6f        ret
;
1e23: eb 36     mov   y,$36
1e25: e8 ff     mov   a,#$ff
1e27: d6 e0 08  mov   $08e0+y,a
1e2a: f6 18 09  mov   a,$0918+y
1e2d: f0 19     beq   $1e48
1e2f: 4d        push  x
1e30: 6d        push  y
1e31: e8 00     mov   a,#$00
1e33: 3f 72 13  call  $1372
1e36: a2 23     set5  $23
1e38: e8 00     mov   a,#$00
1e3a: c4 24     mov   $24,a
1e3c: c4 25     mov   $25,a
1e3e: c4 26     mov   $26,a
1e40: c4 27     mov   $27,a
1e42: c4 21     mov   $21,a
1e44: c4 1f     mov   $1f,a
1e46: ee        pop   y
1e47: ce        pop   x
1e48: 6f        ret
;
1e49: 8d 07     mov   y,#$07
1e4b: cf        mul   ya
1e4c: 60        clrc
1e4d: 84 36     adc   a,$36
1e4f: fd        mov   y,a
1e50: f6 d5 09  mov   a,$09d5+y
1e53: 68 ff     cmp   a,#$ff
1e55: f0 0e     beq   $1e65
1e57: 5d        mov   x,a
1e58: e8 ff     mov   a,#$ff
1e5a: d5 48 03  mov   $0348+x,a
1e5d: 3f 79 1e  call  $1e79
1e60: e8 ff     mov   a,#$ff
1e62: d6 d5 09  mov   $09d5+y,a
1e65: 6f        ret
;
1e66: 8d 07     mov   y,#$07
1e68: cf        mul   ya
1e69: 60        clrc
1e6a: 84 36     adc   a,$36
1e6c: fd        mov   y,a
1e6d: f6 d5 09  mov   a,$09d5+y
1e70: 68 ff     cmp   a,#$ff
1e72: f0 04     beq   $1e78
1e74: 5d        mov   x,a
1e75: 3f 79 1e  call  $1e79
1e78: 6f        ret
;
1e79: d8 01     mov   $01,x
1e7b: f5 00 03  mov   a,$0300+x
1e7e: 28 07     and   a,#$07
1e80: 5d        mov   x,a
1e81: f5 d0 08  mov   a,$08d0+x
1e84: 64 01     cmp   a,$01
1e86: d0 0d     bne   $1e95
1e88: e8 ff     mov   a,#$ff
1e8a: d5 d0 08  mov   $08d0+x,a
1e8d: f5 27 14  mov   a,$1427+x
1e90: 8f 5c f2  mov   $f2,#$5c
1e93: c4 f3     mov   $f3,a
1e95: 6f        ret
; vcmd f9 - do subcmd
1e96: 3f c3 12  call  $12c3
1e99: 68 0b     cmp   a,#$0b
1e9b: b0 07     bcs   $1ea4
1e9d: 1c        asl   a
1e9e: 5d        mov   x,a
1e9f: e4 37     mov   a,$37
1ea1: 1f a5 1e  jmp   ($1ea5+x)
1ea4: 6f        ret
; vcmd f9 subcmd dispatch table
1ea5: dw $1879  ; 00 - set repeat count
1ea7: dw $1881  ; 01 - conditional loop
1ea9: dw $18cf  ; 02 - nop
1eab: dw $18d1  ; 03 - set attack rate
1ead: dw $18db  ; 04 - set decay rate
1eaf: dw $18e9  ; 05 - set sustain level
1eb1: dw $18f8  ; 06 - set release rate
1eb3: dw $1902  ; 07 - set sustain rate
1eb5: dw $0000  ; 08 - crash
1eb7: dw $190c  ; 09 - surround effect
1eb9: dw $0000  ; 0a - crash
