03d8: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
03e0: db $7f,$00,$00,$00,$00,$00,$00,$00
03e8: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
03f0: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
03f8: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0980: dw $0992
0982: dw $099c
0984: dw $09aa
0986: dw $09ad
0988: dw $09f4
098a: dw $09f4
098c: dw $09f4
098e: dw $09b0
0990: dw $09b8

0992: 8f 3f 11  mov   $11,#$3f
0995: 22 1f     set1  $1f
0997: e8 40     mov   a,#$40

0999: 5f bd 0a  jmp   $0abd

099c: 32 1f     clr1  $1f
099e: e4 19     mov   a,$19
09a0: 78 53 d1  cmp   $d1,#$53
09a3: b0 02     bcs   $09a7
09a5: 28 3f     and   a,#$3f
09a7: c4 10     mov   $10,a
09a9: 6f        ret

09aa: 02 1f     set0  $1f
09ac: 6f        ret

09ad: 12 1f     clr0  $1f
09af: 6f        ret

09b0: e8 00     mov   a,#$00
09b2: 8d 0c     mov   y,#$0c
09b4: cd 3f     mov   x,#$3f
09b6: 2f 20     bra   $09d8
09b8: 8f ff 25  mov   $25,#$ff
09bb: 8f 00 f1  mov   $f1,#$00
09be: 8f 20 fa  mov   $fa,#$20
09c1: 8f 01 f1  mov   $f1,#$01
09c4: e8 70     mov   a,#$70
09c6: 8f 0c f2  mov   $f2,#$0c
09c9: c4 f3     mov   $f3,a             ; MVOL(L)
09cb: 8f 1c f2  mov   $f2,#$1c
09ce: c4 f3     mov   $f3,a             ; MVOL(R)
;
09d0: e8 00     mov   a,#$00
09d2: 8d 10     mov   y,#$10
09d4: cd ff     mov   x,#$ff
09d6: c4 27     mov   $27,a
09d8: 32 1f     clr1  $1f
09da: d6 cf 00  mov   $00cf+y,a
09dd: d6 12 02  mov   $0212+y,a
09e0: dc        dec   y
09e1: fe f7     dbnz  y,$09da
09e3: c4 1c     mov   $1c,a
09e5: c4 13     mov   $13,a
09e7: c4 16     mov   $16,a
09e9: c4 0e     mov   $0e,a
09eb: c4 0f     mov   $0f,a
09ed: 3f 26 16  call  $1626
09f0: 7d        mov   a,x
09f1: 5f d5 0b  jmp   $0bd5

09f4: e4 1c     mov   a,$1c
09f6: d0 0f     bne   $0a07
09f8: dd        mov   a,y
09f9: 80        setc
09fa: a8 63     sbc   a,#$63
09fc: 5d        mov   x,a
09fd: f5 f1 06  mov   a,$06f1+x
0a00: c4 1e     mov   $1e,a
0a02: c4 1d     mov   $1d,a
0a04: 8f ff 1c  mov   $1c,#$ff
0a07: 6f        ret

0a08: e8 cc     mov   a,#$cc
0a0a: 64 f4     cmp   a,$f4
0a0c: d0 fa     bne   $0a08
0a0e: 2f 1f     bra   $0a2f
0a10: eb f4     mov   y,$f4
0a12: d0 fc     bne   $0a10
0a14: 7e f4     cmp   y,$f4
0a16: 30 13     bmi   $0a2b
0a18: d0 fa     bne   $0a14
0a1a: 7e f4     cmp   y,$f4
0a1c: d0 f6     bne   $0a14
0a1e: e4 f5     mov   a,$f5
0a20: cb f4     mov   $f4,y
0a22: d7 04     mov   ($04)+y,a
0a24: fc        inc   y
0a25: d0 ed     bne   $0a14
0a27: ab 05     inc   $05
0a29: 2f e9     bra   $0a14
0a2b: 7e f4     cmp   y,$f4
0a2d: 10 e5     bpl   $0a14
0a2f: e4 f6     mov   a,$f6
0a31: eb f7     mov   y,$f7
0a33: da 04     movw  $04,ya
0a35: e4 f4     mov   a,$f4
0a37: eb f5     mov   y,$f5
0a39: c4 f4     mov   $f4,a
0a3b: dd        mov   a,y
0a3c: 5d        mov   x,a
0a3d: d0 d1     bne   $0a10
0a3f: 8f 33 f1  mov   $f1,#$33
0a42: 6f        ret

0a43: c4 25     mov   $25,a
0a45: 8d 3f     mov   y,#$3f
0a47: e8 00     mov   a,#$00
0a49: c4 1c     mov   $1c,a
0a4b: c4 26     mov   $26,a
0a4d: c4 d1     mov   $d1,a
0a4f: c4 d3     mov   $d3,a
0a51: c4 d5     mov   $d5,a
0a53: c4 d7     mov   $d7,a
0a55: c4 d9     mov   $d9,a
0a57: c4 db     mov   $db,a
0a59: e5 80 02  mov   a,$0280
0a5c: 28 01     and   a,#$01
0a5e: d0 04     bne   $0a64
0a60: 8d 7f     mov   y,#$7f
0a62: c4 dd     mov   $dd,a
0a64: e5 82 02  mov   a,$0282
0a67: 28 01     and   a,#$01
0a69: d0 04     bne   $0a6f
0a6b: 8d ff     mov   y,#$ff
0a6d: c4 df     mov   $df,a
0a6f: 8f 5c f2  mov   $f2,#$5c
0a72: cb f3     mov   $f3,y             ; KOF
0a74: 8f 80 2a  mov   $2a,#$80
0a77: 8f 28 2b  mov   $2b,#$28          ; $2a/b = #$2880
0a7a: 2f 21     bra   $0a9d
0a7c: 68 ff     cmp   a,#$ff
0a7e: f0 88     beq   $0a08
0a80: eb f4     mov   y,$f4
0a82: d0 fc     bne   $0a80
0a84: 68 fe     cmp   a,#$fe
0a86: f0 bb     beq   $0a43
0a88: 28 1f     and   a,#$1f
0a8a: c4 25     mov   $25,a
0a8c: 8d 00     mov   y,#$00
0a8e: e4 27     mov   a,$27
0a90: f0 03     beq   $0a95
0a92: dc        dec   y
0a93: cb 25     mov   $25,y
0a95: cb 26     mov   $26,y
0a97: 8f 00 2a  mov   $2a,#$00
0a9a: 8f 3a 2b  mov   $2b,#$3a
0a9d: 8f 00 f1  mov   $f1,#$00
0aa0: 8f 1c fa  mov   $fa,#$1c
0aa3: 8f 01 f1  mov   $f1,#$01
0aa6: 6f        ret

0aa7: 68 5e     cmp   a,#$5e
0aa9: 90 12     bcc   $0abd
0aab: 68 e0     cmp   a,#$e0
0aad: b0 cd     bcs   $0a7c
0aaf: 68 68     cmp   a,#$68
0ab1: b0 09     bcs   $0abc
0ab3: fd        mov   y,a
0ab4: 80        setc
0ab5: a8 5f     sbc   a,#$5f
0ab7: 1c        asl   a
0ab8: 5d        mov   x,a
0ab9: 1f 80 09  jmp   ($0980+x)

0abc: 6f        ret

0abd: c4 0c     mov   $0c,a
0abf: 8f 1b 04  mov   $04,#$1b
0ac2: 8f 05 05  mov   $05,#$05
0ac5: 8d 05     mov   y,#$05
0ac7: cf        mul   ya
0ac8: 7a 04     addw  ya,$04            ; $04/5 = 0x051b + (a * 5)
0aca: da 04     movw  $04,ya
0acc: 8d 00     mov   y,#$00
0ace: cd 00     mov   x,#$00
0ad0: f7 04     mov   a,($04)+y         ; [0x00]
0ad2: c4 1a     mov   $1a,a
0ad4: fc        inc   y
0ad5: f7 04     mov   a,($04)+y         ; [0x01]
0ad7: c4 06     mov   $06,a
0ad9: e4 0c     mov   a,$0c
0adb: 68 41     cmp   a,#$41
0add: b0 3b     bcs   $0b1a
0adf: cd 0c     mov   x,#$0c
0ae1: 68 35     cmp   a,#$35
0ae3: b0 2e     bcs   $0b13
0ae5: 68 22     cmp   a,#$22
0ae7: f0 04     beq   $0aed
0ae9: 68 25     cmp   a,#$25
0aeb: d0 0a     bne   $0af7
0aed: 74 d1     cmp   a,$d1+x
0aef: f0 cb     beq   $0abc
0af1: 74 d3     cmp   a,$d3+x
0af3: f0 c7     beq   $0abc
0af5: 2f 0e     bra   $0b05
0af7: 74 d3     cmp   a,$d3+x
0af9: d0 06     bne   $0b01
0afb: 3d        inc   x
0afc: 3d        inc   x
0afd: 0b 1a     asl   $1a
0aff: 2f 19     bra   $0b1a
0b01: 74 d1     cmp   a,$d1+x
0b03: f0 15     beq   $0b1a
0b05: f5 14 02  mov   a,$0214+x
0b08: 75 16 02  cmp   a,$0216+x
0b0b: f0 06     beq   $0b13
0b0d: 90 04     bcc   $0b13
0b0f: 3d        inc   x
0b10: 3d        inc   x
0b11: 0b 1a     asl   $1a
0b13: e4 06     mov   a,$06
0b15: 75 14 02  cmp   a,$0214+x
0b18: 90 a2     bcc   $0abc
0b1a: fc        inc   y
0b1b: f7 04     mov   a,($04)+y         ; [0x02]
0b1d: 28 0f     and   a,#$0f
0b1f: c4 07     mov   $07,a
0b21: f7 04     mov   a,($04)+y         ; [0x02]
0b23: 9f        xcn   a
0b24: 28 0f     and   a,#$0f
0b26: f0 04     beq   $0b2c
0b28: 9c        dec   a
0b29: 1c        asl   a
0b2a: c4 24     mov   $24,a
0b2c: fc        inc   y
0b2d: f7 04     mov   a,($04)+y         ; [0x03] song header (score pointers) address (lower)
0b2f: c4 0a     mov   $0a,a
0b31: fc        inc   y
0b32: f7 04     mov   a,($04)+y         ; [0x04] song header (score pointers) address (higher)
0b34: c4 0b     mov   $0b,a
0b36: 8f 00 14  mov   $14,#$00
0b39: 78 41 0c  cmp   $0c,#$41
0b3c: 90 22     bcc   $0b60
0b3e: e8 00     mov   a,#$00
0b40: c4 1c     mov   $1c,a
0b42: c4 13     mov   $13,a
0b44: c4 16     mov   $16,a
0b46: c4 0e     mov   $0e,a
0b48: c4 0f     mov   $0f,a
0b4a: a2 12     set5  $12
0b4c: 3f 26 16  call  $1626
0b4f: 8f 00 08  mov   $08,#$00
0b52: e4 0c     mov   a,$0c
0b54: 68 51     cmp   a,#$51
0b56: 90 0b     bcc   $0b63
0b58: 68 53     cmp   a,#$53
0b5a: 90 04     bcc   $0b60
0b5c: 68 5c     cmp   a,#$5c
0b5e: 90 03     bcc   $0b63
0b60: 8f 01 08  mov   $08,#$01
0b63: 8d 00     mov   y,#$00
; repeat for ($07) times
0b65: f7 0a     mov   a,($0a)+y
0b67: d4 30     mov   $30+x,a
0b69: fc        inc   y
0b6a: f7 0a     mov   a,($0a)+y
0b6c: d4 31     mov   $31+x,a           ; set vcmd ptr to $30/1+x
0b6e: e8 ff     mov   a,#$ff
0b70: d5 b1 01  mov   $01b1+x,a
0b73: e8 7f     mov   a,#$7f
0b75: d5 a4 02  mov   $02a4+x,a
0b78: d5 05 02  mov   $0205+x,a
0b7b: e8 00     mov   a,#$00
0b7d: d5 a5 02  mov   $02a5+x,a
0b80: d4 40     mov   $40+x,a
0b82: d4 50     mov   $50+x,a
0b84: d4 60     mov   $60+x,a
0b86: d5 30 01  mov   $0130+x,a
0b89: d5 31 01  mov   $0131+x,a
0b8c: d5 40 01  mov   $0140+x,a
0b8f: d5 41 01  mov   $0141+x,a
0b92: d5 50 01  mov   $0150+x,a
0b95: d5 51 01  mov   $0151+x,a
0b98: d5 60 01  mov   $0160+x,a
0b9b: d5 61 01  mov   $0161+x,a
0b9e: d5 44 03  mov   $0344+x,a
0ba1: d5 45 03  mov   $0345+x,a
0ba4: d5 35 02  mov   $0235+x,a
0ba7: d4 90     mov   $90+x,a
0ba9: d5 34 02  mov   $0234+x,a
0bac: d5 c1 01  mov   $01c1+x,a
0baf: d4 71     mov   $71+x,a
0bb1: d4 70     mov   $70+x,a
0bb3: d5 95 02  mov   $0295+x,a
0bb6: d5 45 02  mov   $0245+x,a
0bb9: d5 64 02  mov   $0264+x,a
0bbc: bc        inc   a
0bbd: d4 d0     mov   $d0+x,a
0bbf: d5 b0 01  mov   $01b0+x,a
0bc2: e4 0c     mov   a,$0c
0bc4: d4 d1     mov   $d1+x,a
0bc6: e4 08     mov   a,$08
0bc8: d5 74 02  mov   $0274+x,a
0bcb: e4 06     mov   a,$06
0bcd: d5 14 02  mov   $0214+x,a
0bd0: 6e 07 0c  dbnz  $07,$0bdf
0bd3: e4 1a     mov   a,$1a
0bd5: 0e 11 00  tset1 $0011
0bd8: 4e 19 00  tclr1 $0019
0bdb: 0e 1b 00  tset1 $001b
0bde: 6f        ret
; repeat continue
0bdf: 3d        inc   x
0be0: 3d        inc   x
0be1: fc        inc   y
0be2: 5f 65 0b  jmp   $0b65

0be5: 20        clrp
0be6: cd ff     mov   x,#$ff
0be8: bd        mov   sp,x
0be9: 8f 30 f1  mov   $f1,#$30
0bec: e8 00     mov   a,#$00
0bee: 5d        mov   x,a
0bef: af        mov   (x)+,a
0bf0: c8 f0     cmp   x,#$f0
0bf2: d0 fb     bne   $0bef
0bf4: 8d 00     mov   y,#$00
0bf6: 8f 00 04  mov   $04,#$00
0bf9: 8f 01 05  mov   $05,#$01
0bfc: d7 04     mov   ($04)+y,a
0bfe: fc        inc   y
0bff: ad d0     cmp   y,#$d0
0c01: d0 f9     bne   $0bfc
0c03: 8d 03     mov   y,#$03
0c05: 8f 00 04  mov   $04,#$00
0c08: 8f 02 05  mov   $05,#$02
0c0b: d7 04     mov   ($04)+y,a
0c0d: fc        inc   y
0c0e: d0 02     bne   $0c12
0c10: ab 05     inc   $05
0c12: ad 54     cmp   y,#$54
0c14: d0 f5     bne   $0c0b
0c16: 78 03 05  cmp   $05,#$03
0c19: d0 f0     bne   $0c0b
0c1b: 3f 26 16  call  $1626
0c1e: a2 12     set5  $12
0c20: 8d 71     mov   y,#$71
0c22: e8 00     mov   a,#$00
0c24: cb f2     mov   $f2,y
0c26: 8f 00 f3  mov   $f3,#$00          ; VOL(R)
0c29: dc        dec   y
0c2a: cb f2     mov   $f2,y
0c2c: 8f 00 f3  mov   $f3,#$00          ; VOL(L)
0c2f: dd        mov   a,y
0c30: 80        setc
0c31: a8 0f     sbc   a,#$0f
0c33: fd        mov   y,a
0c34: 10 ec     bpl   $0c22
0c36: 8f 5c f2  mov   $f2,#$5c
0c39: 8f ff f3  mov   $f3,#$ff          ; KOF
0c3c: e8 70     mov   a,#$70
0c3e: 8f 0c f2  mov   $f2,#$0c
0c41: c4 f3     mov   $f3,a             ; MVOL(L)
0c43: 8f 1c f2  mov   $f2,#$1c
0c46: c4 f3     mov   $f3,a             ; MVOL(R)
0c48: 8f 5d f2  mov   $f2,#$5d
0c4b: 8f 04 f3  mov   $f3,#$04          ; DIR
0c4e: 8f 20 fa  mov   $fa,#$20          ; timer 0 frequency = 4 ms
0c51: 8f 01 f1  mov   $f1,#$01
0c54: e4 fd     mov   a,$fd
0c56: f0 fc     beq   $0c54
0c58: 8f 5c f2  mov   $f2,#$5c
0c5b: fa 11 f3  mov   ($f3),($11)       ; KOF
0c5e: e4 27     mov   a,$27
0c60: f0 1b     beq   $0c7d
0c62: e4 dd     mov   a,$dd
0c64: f0 04     beq   $0c6a
0c66: 68 13     cmp   a,#$13
0c68: 90 0a     bcc   $0c74
0c6a: e4 df     mov   a,$df
0c6c: f0 0d     beq   $0c7b
0c6e: 68 13     cmp   a,#$13
0c70: e8 00     mov   a,#$00
0c72: b0 07     bcs   $0c7b
0c74: 8b 27     dec   $27
0c76: 8f ff f7  mov   $f7,#$ff
0c79: 2f 04     bra   $0c7f
0c7b: c4 27     mov   $27,a
0c7d: c4 f7     mov   $f7,a
0c7f: 8f 2d f2  mov   $f2,#$2d
0c82: fa 14 f3  mov   ($f3),($14)       ; PMON
0c85: 8f 3d f2  mov   $f2,#$3d
0c88: fa 15 f3  mov   ($f3),($15)       ; NON
0c8b: e3 17 23  bbs7  $17,$0cb1
0c8e: 8f 6c f2  mov   $f2,#$6c
0c91: fa 12 f3  mov   ($f3),($12)       ; FLG
0c94: 69 18 17  cmp   ($17),($18)
0c97: d0 18     bne   $0cb1
0c99: 8f 4d f2  mov   $f2,#$4d
0c9c: fa 16 f3  mov   ($f3),($16)       ; EON
0c9f: 8f 0d f2  mov   $f2,#$0d
0ca2: fa 13 f3  mov   ($f3),($13)       ; EFB
0ca5: 8f 3c f2  mov   $f2,#$3c
0ca8: fa 0f f3  mov   ($f3),($0f)       ; EVOL(R)
0cab: 8f 2c f2  mov   $f2,#$2c
0cae: fa 0e f3  mov   ($f3),($0e)       ; EVOL(L)
0cb1: 38 07 23  and   $23,#$07
0cb4: d0 07     bne   $0cbd
0cb6: 69 18 17  cmp   ($17),($18)
0cb9: f0 02     beq   $0cbd
0cbb: ab 17     inc   $17
0cbd: e8 00     mov   a,#$00
0cbf: c4 1b     mov   $1b,a
0cc1: 8f 5c f2  mov   $f2,#$5c
0cc4: c4 f3     mov   $f3,a             ; KOF
0cc6: c4 11     mov   $11,a
0cc8: 8f 4c f2  mov   $f2,#$4c
0ccb: fa 10 f3  mov   ($f3),($10)       ; KON
0cce: c4 10     mov   $10,a
0cd0: 03 23 12  bbs0  $23,$0ce5
0cd3: e4 f4     mov   a,$f4
0cd5: 64 f4     cmp   a,$f4
0cd7: d0 f7     bne   $0cd0
0cd9: 68 00     cmp   a,#$00
0cdb: f0 08     beq   $0ce5
0cdd: c4 f4     mov   $f4,a
0cdf: 8f 11 f1  mov   $f1,#$11
0ce2: 3f a7 0a  call  $0aa7
0ce5: 33 1f 07  bbc1  $1f,$0cef
0ce8: cd 0c     mov   x,#$0c
0cea: 8f 40 1a  mov   $1a,#$40
0ced: 2f 29     bra   $0d18
0cef: ab 23     inc   $23
0cf1: e4 1c     mov   a,$1c
0cf3: f0 1e     beq   $0d13
0cf5: 8b 1d     dec   $1d
0cf7: d0 1a     bne   $0d13
0cf9: fa 1e 1d  mov   ($1d),($1e)
0cfc: 8b 1c     dec   $1c
0cfe: d0 13     bne   $0d13
0d00: 78 53 d1  cmp   $d1,#$53
0d03: b0 05     bcs   $0d0a
0d05: 3f b0 09  call  $09b0
0d08: 2f 03     bra   $0d0d
0d0a: 3f d0 09  call  $09d0
0d0d: 0e 11 00  tset1 $0011
0d10: 4e 19 00  tclr1 $0019
0d13: 8f 01 1a  mov   $1a,#$01
0d16: cd 00     mov   x,#$00
0d18: f4 d1     mov   a,$d1+x
0d1a: f0 4e     beq   $0d6a
0d1c: e4 1a     mov   a,$1a
0d1e: 24 1b     and   a,$1b
0d20: d0 48     bne   $0d6a
0d22: f5 74 02  mov   a,$0274+x
0d25: 5c        lsr   a
0d26: b0 08     bcs   $0d30
0d28: 7d        mov   a,x
0d29: 5c        lsr   a
0d2a: 44 23     eor   a,$23
0d2c: 28 01     and   a,#$01
0d2e: d0 3a     bne   $0d6a
0d30: d8 21     mov   $21,x
0d32: f5 9b 18  mov   a,$189b+x
0d35: c4 22     mov   $22,a
0d37: f5 74 02  mov   a,$0274+x
0d3a: c4 20     mov   $20,a
0d3c: f5 b0 01  mov   a,$01b0+x
0d3f: 60        clrc
0d40: 95 b1 01  adc   a,$01b1+x
0d43: d5 b0 01  mov   $01b0+x,a
0d46: 90 1a     bcc   $0d62
0d48: 9b d0     dec   $d0+x
0d4a: f0 05     beq   $0d51
0d4c: 3f 64 0e  call  $0e64
0d4f: 2f 14     bra   $0d65
0d51: 3f 61 10  call  $1061
0d54: a3 20 07  bbs5  $20,$0d5e
0d57: e2 28     set7  $28
0d59: 3f 82 0f  call  $0f82
0d5c: 2f 07     bra   $0d65
0d5e: b2 20     clr5  $20
0d60: 2f 03     bra   $0d65
0d62: 3f ff 0d  call  $0dff
0d65: e4 20     mov   a,$20
0d67: d5 74 02  mov   $0274+x,a
0d6a: 3d        inc   x
0d6b: 3d        inc   x
0d6c: 0b 1a     asl   $1a
0d6e: d0 a8     bne   $0d18
0d70: e4 25     mov   a,$25
0d72: f0 45     beq   $0db9
0d74: e4 f6     mov   a,$f6
0d76: 68 cc     cmp   a,#$cc
0d78: f0 07     beq   $0d81
0d7a: e4 fd     mov   a,$fd
0d7c: f0 f6     beq   $0d74
0d7e: 5f 58 0c  jmp   $0c58

0d81: 64 f6     cmp   a,$f6
0d83: d0 ef     bne   $0d74
0d85: c4 f6     mov   $f6,a
0d87: eb f6     mov   y,$f6
0d89: d0 fc     bne   $0d87
0d8b: 7e f6     cmp   y,$f6
0d8d: d0 f6     bne   $0d85
0d8f: 2f 0a     bra   $0d9b
0d91: 7e f6     cmp   y,$f6
0d93: 30 27     bmi   $0dbc
0d95: d0 fa     bne   $0d91
0d97: 7e f6     cmp   y,$f6
0d99: d0 f6     bne   $0d91
0d9b: e4 f7     mov   a,$f7
0d9d: cb f6     mov   $f6,y
0d9f: 13 26 05  bbc0  $26,$0da7
0da2: e3 25 02  bbs7  $25,$0da7
0da5: 2f 02     bra   $0da9
0da7: d7 2a     mov   ($2a)+y,a
0da9: fc        inc   y
0daa: 10 e5     bpl   $0d91
0dac: 60        clrc
0dad: 98 80 2a  adc   $2a,#$80
0db0: 98 00 2b  adc   $2b,#$00
0db3: e4 f6     mov   a,$f6
0db5: d0 fc     bne   $0db3
0db7: c4 f6     mov   $f6,a
0db9: 5f 54 0c  jmp   $0c54

0dbc: 7e f6     cmp   y,$f6
0dbe: 10 d1     bpl   $0d91
0dc0: e4 f6     mov   a,$f6
0dc2: c4 f6     mov   $f6,a
0dc4: eb 25     mov   y,$25
0dc6: 8f 00 f1  mov   $f1,#$00
0dc9: 8f 20 fa  mov   $fa,#$20
0dcc: 8f 01 f1  mov   $f1,#$01
0dcf: e4 f6     mov   a,$f6
0dd1: d0 fc     bne   $0dcf
0dd3: c4 f6     mov   $f6,a
0dd5: c4 25     mov   $25,a
0dd7: dd        mov   a,y
0dd8: 30 0f     bmi   $0de9
0dda: 23 1f 0c  bbs1  $1f,$0de9
0ddd: f6 ec 0d  mov   a,$0dec+y
0de0: c4 27     mov   $27,a
0de2: 8f ff f7  mov   $f7,#$ff
0de5: dd        mov   a,y
0de6: 3f bd 0a  call  $0abd
0de9: 5f 58 0c  jmp   $0c58

0dec: 00 10 20 3c 48 34 48 40
0df4: 0c 18 3c 0c 84 34 5c 48
0dfc: a0 0c c0 12
0e00: 28 f4     and   a,#$f4
0e02: 80        setc
0e03: f0 1d     beq   $0e22
0e05: 93 20 05  bbc4  $20,$0e0d
0e08: 3f e6 17  call  $17e6
0e0b: 2f 13     bra   $0e20
0e0d: f4 81     mov   a,$81+x
0e0f: d0 11     bne   $0e22
0e11: f4 e0     mov   a,$e0+x
0e13: 60        clrc
0e14: 95 e4 02  adc   a,$02e4+x
0e17: d4 e0     mov   $e0+x,a
0e19: f4 e1     mov   a,$e1+x
0e1b: 95 e5 02  adc   a,$02e5+x
0e1e: d4 e1     mov   $e1+x,a
0e20: 02 28     set0  $28
0e22: fb e1     mov   y,$e1+x
0e24: f4 e0     mov   a,$e0+x
0e26: da 0a     movw  $0a,ya
0e28: f5 34 02  mov   a,$0234+x
0e2b: f0 18     beq   $0e45
0e2d: f4 a0     mov   a,$a0+x
0e2f: d0 14     bne   $0e45
0e31: f4 b0     mov   a,$b0+x
0e33: 60        clrc
0e34: 94 b1     adc   a,$b1+x
0e36: d4 b0     mov   $b0+x,a
0e38: 90 0b     bcc   $0e45
0e3a: 3f 2c 18  call  $182c
0e3d: ba 08     movw  ya,$08
0e3f: 7a 0a     addw  ya,$0a
0e41: da 0a     movw  $0a,ya
0e43: 02 28     set0  $28
0e45: f5 c1 01  mov   a,$01c1+x
0e48: f0 11     beq   $0e5b
0e4a: 60        clrc
0e4b: 94 61     adc   a,$61+x
0e4d: d4 61     mov   $61+x,a
0e4f: 90 0a     bcc   $0e5b
0e51: 3f 61 18  call  $1861
0e54: ba 0a     movw  ya,$0a
0e56: 7a 04     addw  ya,$04
0e58: 5f d0 11  jmp   $11d0

0e5b: 13 28 05  bbc0  $28,$0e63
0e5e: ba 0a     movw  ya,$0a
0e60: 5f d0 11  jmp   $11d0

0e63: 6f        ret

0e64: 8f 00 28  mov   $28,#$00
0e67: f5 45 02  mov   a,$0245+x
0e6a: 68 7f     cmp   a,#$7f
0e6c: b0 29     bcs   $0e97
0e6e: f4 d0     mov   a,$d0+x
0e70: 68 01     cmp   a,#$01
0e72: f0 49     beq   $0ebd
0e74: f4 51     mov   a,$51+x
0e76: f0 1f     beq   $0e97
0e78: 9b 51     dec   $51+x
0e7a: d0 44     bne   $0ec0
0e7c: f5 75 02  mov   a,$0275+x
0e7f: f0 3c     beq   $0ebd
0e81: 10 1b     bpl   $0e9e
0e83: e8 05     mov   a,#$05
0e85: 04 22     or    a,$22
0e87: c4 f2     mov   $f2,a
0e89: 8f 00 f3  mov   $f3,#$00          ; ADSR(1)
0e8c: bc        inc   a
0e8d: bc        inc   a
0e8e: c4 f2     mov   $f2,a
0e90: f5 75 02  mov   a,$0275+x
0e93: c4 f3     mov   $f3,a             ; GAIN
0e95: 2f 29     bra   $0ec0
0e97: f5 75 02  mov   a,$0275+x
0e9a: f0 24     beq   $0ec0
0e9c: 30 22     bmi   $0ec0
0e9e: f5 95 02  mov   a,$0295+x
0ea1: 75 05 02  cmp   a,$0205+x
0ea4: b0 17     bcs   $0ebd
0ea6: f5 94 02  mov   a,$0294+x
0ea9: 60        clrc
0eaa: 95 84 02  adc   a,$0284+x
0ead: d5 94 02  mov   $0294+x,a
0eb0: f5 95 02  mov   a,$0295+x
0eb3: 95 85 02  adc   a,$0285+x
0eb6: d5 95 02  mov   $0295+x,a
0eb9: e2 28     set7  $28
0ebb: 2f 03     bra   $0ec0
0ebd: 09 1a 11  or    ($11),($1a)
0ec0: f4 80     mov   a,$80+x
0ec2: f0 31     beq   $0ef5
0ec4: 93 20 05  bbc4  $20,$0ecc
0ec7: 3f e6 17  call  $17e6
0eca: 2f 27     bra   $0ef3
0ecc: f4 81     mov   a,$81+x
0ece: f0 04     beq   $0ed4
0ed0: 9b 81     dec   $81+x
0ed2: 2f 21     bra   $0ef5
0ed4: 9b 80     dec   $80+x
0ed6: d0 0c     bne   $0ee4
0ed8: f5 f5 02  mov   a,$02f5+x
0edb: d4 e1     mov   $e1+x,a
0edd: f5 f4 02  mov   a,$02f4+x
0ee0: d4 e0     mov   $e0+x,a
0ee2: 2f 0f     bra   $0ef3
0ee4: f4 e0     mov   a,$e0+x
0ee6: 60        clrc
0ee7: 95 e4 02  adc   a,$02e4+x
0eea: d4 e0     mov   $e0+x,a
0eec: f4 e1     mov   a,$e1+x
0eee: 95 e5 02  adc   a,$02e5+x
0ef1: d4 e1     mov   $e1+x,a
0ef3: 02 28     set0  $28
0ef5: e8 00     mov   a,#$00
0ef7: fd        mov   y,a
0ef8: da 08     movw  $08,ya
0efa: f5 34 02  mov   a,$0234+x
0efd: f0 36     beq   $0f35
0eff: f4 a0     mov   a,$a0+x
0f01: f0 04     beq   $0f07
0f03: 9b a0     dec   $a0+x
0f05: 2f 2e     bra   $0f35
0f07: f4 a1     mov   a,$a1+x
0f09: f0 1c     beq   $0f27
0f0b: 9b a1     dec   $a1+x
0f0d: d0 05     bne   $0f14
0f0f: f5 34 02  mov   a,$0234+x
0f12: 2f 10     bra   $0f24
0f14: f5 04 03  mov   a,$0304+x
0f17: 60        clrc
0f18: 95 14 03  adc   a,$0314+x
0f1b: d5 04 03  mov   $0304+x,a
0f1e: f5 05 03  mov   a,$0305+x
0f21: 95 15 03  adc   a,$0315+x
0f24: d5 05 03  mov   $0305+x,a
0f27: f4 b0     mov   a,$b0+x
0f29: 60        clrc
0f2a: 94 b1     adc   a,$b1+x
0f2c: d4 b0     mov   $b0+x,a
0f2e: 90 05     bcc   $0f35
0f30: 3f 2c 18  call  $182c
0f33: 02 28     set0  $28
0f35: f5 c1 01  mov   a,$01c1+x
0f38: f0 12     beq   $0f4c
0f3a: 60        clrc
0f3b: 94 61     adc   a,$61+x
0f3d: d4 61     mov   $61+x,a
0f3f: 90 0b     bcc   $0f4c
0f41: 3f 61 18  call  $1861
0f44: fb e1     mov   y,$e1+x
0f46: f4 e0     mov   a,$e0+x
0f48: 7a 04     addw  ya,$04
0f4a: 2f 07     bra   $0f53
0f4c: 13 28 09  bbc0  $28,$0f58
0f4f: fb e1     mov   y,$e1+x
0f51: f4 e0     mov   a,$e0+x
0f53: 7a 08     addw  ya,$08
0f55: 3f d0 11  call  $11d0
0f58: f4 70     mov   a,$70+x
0f5a: f0 26     beq   $0f82
0f5c: e2 28     set7  $28
0f5e: 9b 70     dec   $70+x
0f60: f0 15     beq   $0f77
0f62: f5 c4 02  mov   a,$02c4+x
0f65: 60        clrc
0f66: 95 d4 02  adc   a,$02d4+x
0f69: d5 c4 02  mov   $02c4+x,a
0f6c: f5 c5 02  mov   a,$02c5+x
0f6f: 95 d5 02  adc   a,$02d5+x
0f72: d5 c5 02  mov   $02c5+x,a
0f75: 2f 0b     bra   $0f82
0f77: f5 15 02  mov   a,$0215+x
0f7a: d5 c5 02  mov   $02c5+x,a
0f7d: e8 00     mov   a,#$00
0f7f: d5 c4 02  mov   $02c4+x,a
0f82: f4 40     mov   a,$40+x
0f84: f0 1e     beq   $0fa4
0f86: 9b 40     dec   $40+x
0f88: d0 04     bne   $0f8e
0f8a: f4 41     mov   a,$41+x
0f8c: 2f 10     bra   $0f9e
0f8e: f5 10 01  mov   a,$0110+x
0f91: 60        clrc
0f92: 95 00 01  adc   a,$0100+x
0f95: d5 10 01  mov   $0110+x,a
0f98: f5 11 01  mov   a,$0111+x
0f9b: 95 01 01  adc   a,$0101+x
0f9e: d5 11 01  mov   $0111+x,a
0fa1: d5 b1 01  mov   $01b1+x,a
0fa4: f4 71     mov   a,$71+x
0fa6: f0 26     beq   $0fce
0fa8: e2 28     set7  $28
0faa: 9b 71     dec   $71+x
0fac: d0 0d     bne   $0fbb
0fae: f5 04 02  mov   a,$0204+x
0fb1: d5 a5 02  mov   $02a5+x,a
0fb4: e8 00     mov   a,#$00
0fb6: d5 a4 02  mov   $02a4+x,a
0fb9: 2f 13     bra   $0fce
0fbb: f5 a4 02  mov   a,$02a4+x
0fbe: 60        clrc
0fbf: 95 b4 02  adc   a,$02b4+x
0fc2: d5 a4 02  mov   $02a4+x,a
0fc5: f5 a5 02  mov   a,$02a5+x
0fc8: 95 b5 02  adc   a,$02b5+x
0fcb: d5 a5 02  mov   $02a5+x,a
0fce: e3 28 05  bbs7  $28,$0fd6
0fd1: e4 1c     mov   a,$1c
0fd3: d0 01     bne   $0fd6
0fd5: 6f        ret

0fd6: f5 05 02  mov   a,$0205+x
0fd9: f0 fa     beq   $0fd5
0fdb: f5 95 02  mov   a,$0295+x
0fde: c4 06     mov   $06,a
0fe0: 8f 00 07  mov   $07,#$00
0fe3: f5 30 01  mov   a,$0130+x
0fe6: c4 08     mov   $08,a
0fe8: f5 31 01  mov   a,$0131+x
0feb: c4 09     mov   $09,a
0fed: f5 40 01  mov   a,$0140+x
0ff0: c4 0a     mov   $0a,a
0ff2: f5 41 01  mov   a,$0141+x
0ff5: c4 0b     mov   $0b,a
0ff7: f5 05 02  mov   a,$0205+x
0ffa: 8d 00     mov   y,#$00
0ffc: 9a 06     subw  ya,$06
0ffe: 7a 08     addw  ya,$08
1000: 7a 0a     addw  ya,$0a
1002: ad 80     cmp   y,#$80
1004: b0 22     bcs   $1028
1006: ad 00     cmp   y,#$00
1008: d0 04     bne   $100e
100a: 08 00     or    a,#$00
100c: 10 02     bpl   $1010
100e: e8 7f     mov   a,#$7f
1010: fd        mov   y,a
1011: f5 a5 02  mov   a,$02a5+x
1014: cf        mul   ya
1015: dd        mov   a,y
1016: 78 00 1c  cmp   $1c,#$00
1019: f0 07     beq   $1022
101b: 03 20 04  bbs0  $20,$1022
101e: eb 1c     mov   y,$1c
1020: cf        mul   ya
1021: dd        mov   a,y
1022: 80        setc
1023: b5 64 02  sbc   a,$0264+x
1026: b0 02     bcs   $102a
1028: e8 00     mov   a,#$00
102a: fd        mov   y,a
102b: f6 58 03  mov   a,$0358+y
102e: c4 05     mov   $05,a
1030: e8 14     mov   a,#$14
1032: 03 1f 09  bbs0  $1f,$103e
1035: f5 c5 02  mov   a,$02c5+x
1038: 68 29     cmp   a,#$29
103a: 90 02     bcc   $103e
103c: e8 28     mov   a,#$28
103e: c4 04     mov   $04,a
1040: fd        mov   y,a
1041: f6 ab 1a  mov   a,$1aab+y
1044: eb 05     mov   y,$05
1046: cf        mul   ya
1047: e8 00     mov   a,#$00
1049: 04 22     or    a,$22
104b: c4 f2     mov   $f2,a
104d: cb f3     mov   $f3,y             ; VOL(L)
104f: bc        inc   a
1050: c4 f2     mov   $f2,a
1052: e8 28     mov   a,#$28
1054: 80        setc
1055: a4 04     sbc   a,$04
1057: fd        mov   y,a
1058: f6 ab 1a  mov   a,$1aab+y
105b: eb 05     mov   y,$05
105d: cf        mul   ya
105e: cb f3     mov   $f3,y             ; VOL(R)
1060: 6f        ret

1061: 3f 93 10  call  $1093             ; read a byte
1064: c4 08     mov   $08,a
1066: 28 7f     and   a,#$7f
1068: 68 60     cmp   a,#$60
106a: 90 30     bcc   $109c             ; 00-5f, 80-df
106c: e4 08     mov   a,$08
106e: 80        setc
106f: a8 e0     sbc   a,#$e0
1071: b0 11     bcs   $1084             ; e0-ff - vcmd
; vcmd 60,61
1073: 22 20     set1  $20               ; rhythm channel
1075: 68 80     cmp   a,#$80
1077: f0 e8     beq   $1061             ; 60
1079: 32 20     clr1  $20
107b: 68 81     cmp   a,#$81
107d: f0 e2     beq   $1061             ; 61
107f: a2 20     set5  $20
;
1081: 5f d0 09  jmp   $09d0             ; 62-7f

; dispatch vcmd (e0-ff)
1084: 1c        asl   a
1085: fd        mov   y,a
1086: f6 0d 12  mov   a,$120d+y
1089: 2d        push  a
108a: f6 0c 12  mov   a,$120c+y
108d: 2d        push  a                 ; push vcmd func address, as a return address
108e: f6 4c 12  mov   a,$124c+y
1091: f0 08     beq   $109b
; read next byte (vcmd/arg)
1093: e7 30     mov   a,($30+x)
1095: bb 30     inc   $30+x
1097: d0 02     bne   $109b
1099: bb 31     inc   $31+x
109b: 6f        ret

; vcmd 00-5f - note
; vcmd 80-df - note without length
; $08 = vcmd (note number + flag bit for length)
109c: 33 20 03  bbc1  $20,$10a2
109f: 09 1a 11  or    ($11),($1a)
10a2: f3 08 05  bbc7  $08,$10aa         ; if vcmd >= $80
10a5: f5 44 02  mov   a,$0244+x         ;   reuse last length, skip arg1
10a8: 2f 06     bra   $10b0
10aa: 3f 93 10  call  $1093             ; get arg1 (length in ticks)
10ad: d5 44 02  mov   $0244+x,a         ; save note length
10b0: d4 d0     mov   $d0+x,a
10b2: f5 45 02  mov   a,$0245+x
10b5: 68 7f     cmp   a,#$7f
10b7: f0 06     beq   $10bf
10b9: 09 1a 10  or    ($10),($1a)
10bc: 09 1a 19  or    ($19),($1a)
10bf: 3f 93 10  call  $1093             ; get arg2 (00-7f: note duration, 80-ff: note volume)
10c2: fd        mov   y,a
10c3: 10 03     bpl   $10c8
10c5: f5 45 02  mov   a,$0245+x
10c8: d5 45 02  mov   $0245+x,a         ; save note duration
10cb: dd        mov   a,y
10cc: 30 03     bmi   $10d1
10ce: 3f 93 10  call  $1093             ; get arg3 (note volume) (only available if arg2 < 0x80)
10d1: 28 7f     and   a,#$7f
10d3: d5 65 02  mov   $0265+x,a         ; save note volume
10d6: d5 05 02  mov   $0205+x,a
10d9: d0 08     bne   $10e3
10db: e4 1a     mov   a,$1a
10dd: 4e 10 00  tclr1 $0010
10e0: 4e 19 00  tclr1 $0019
10e3: 33 20 0a  bbc1  $20,$10f0         ; skip instrument loading for rhythm channel
; rhythm channel: load sample
10e6: e4 08     mov   a,$08
10e8: 28 7f     and   a,#$7f
10ea: 3f 38 13  call  $1338             ; load instrument
10ed: 8f 3c 08  mov   $08,#$3c          ; note number = 60
; calc actual note length
10f0: f5 44 02  mov   a,$0244+x         ; note length
10f3: fd        mov   y,a
10f4: f5 45 02  mov   a,$0245+x         ; note duration
10f7: 68 7f     cmp   a,#$7f
10f9: f0 06     beq   $1101             ; duration $7f means full length
10fb: 1c        asl   a
10fc: cf        mul   ya                ; actual length = (length * (duration << 1)) >> 8
10fd: dd        mov   a,y
10fe: d0 01     bne   $1101
1100: fc        inc   y                 ; actual length = 1 if it was zero
1101: db 51     mov   $51+x,y           ; save actual note length
1103: fb e1     mov   y,$e1+x
1105: f4 e0     mov   a,$e0+x
1107: da 0c     movw  $0c,ya
1109: f5 51 01  mov   a,$0151+x
110c: c4 05     mov   $05,a
110e: f5 50 01  mov   a,$0150+x
1111: c4 04     mov   $04,a             ; $04/5 = repeat-triggered tuning #1
1113: f5 61 01  mov   a,$0161+x
1116: c4 07     mov   $07,a
1118: f5 60 01  mov   a,$0160+x
111b: c4 06     mov   $06,a             ; $06/7 = repeat-triggered tuning #2
111d: f5 45 03  mov   a,$0345+x
1120: c4 0b     mov   $0b,a
1122: f5 44 03  mov   a,$0344+x
1125: c4 0a     mov   $0a,a             ; $0a/b = tuning
1127: e4 08     mov   a,$08             ; note number
1129: 60        clrc
112a: 95 35 02  adc   a,$0235+x         ; per-voice transpose
112d: fd        mov   y,a
112e: e8 00     mov   a,#$00
1130: 7a 04     addw  ya,$04            ; add repeat-triggered tuning #1
1132: 7a 06     addw  ya,$06            ; add repeat-triggered tuning #2
1134: 7a 0a     addw  ya,$0a            ; add tuning
1136: d4 e0     mov   $e0+x,a           ; save intermediate note number (fraction)
1138: dd        mov   a,y
1139: 28 7f     and   a,#$7f            ; note number &= 0x7f
113b: d4 e1     mov   $e1+x,a           ; save intermediate note number (integer)
113d: f5 34 02  mov   a,$0234+x
1140: f0 26     beq   $1168
1142: e8 00     mov   a,#$00
1144: d4 b0     mov   $b0+x,a
1146: d4 c1     mov   $c1+x,a
1148: f5 24 02  mov   a,$0224+x
114b: d4 a0     mov   $a0+x,a
114d: f5 25 02  mov   a,$0225+x
1150: d4 a1     mov   $a1+x,a
1152: f0 0b     beq   $115f
1154: f5 14 03  mov   a,$0314+x
1157: d5 04 03  mov   $0304+x,a
115a: f5 15 03  mov   a,$0315+x
115d: 2f 06     bra   $1165
115f: d5 04 03  mov   $0304+x,a
1162: f5 34 02  mov   a,$0234+x
1165: d5 05 03  mov   $0305+x,a
1168: f5 75 02  mov   a,$0275+x
116b: f0 24     beq   $1191
116d: 30 0a     bmi   $1179
116f: e8 00     mov   a,#$00
1171: d5 95 02  mov   $0295+x,a
1174: d5 94 02  mov   $0294+x,a
1177: 2f 18     bra   $1191
1179: e8 05     mov   a,#$05
117b: 04 22     or    a,$22
117d: c4 f2     mov   $f2,a
117f: f5 84 02  mov   a,$0284+x
1182: c4 f3     mov   $f3,a             ; ADSR(1)
1184: d0 0b     bne   $1191
1186: e8 07     mov   a,#$07
1188: 04 22     or    a,$22
118a: c4 f2     mov   $f2,a
118c: f5 85 02  mov   a,$0285+x
118f: c4 f3     mov   $f3,a             ; GAIN
1191: f4 90     mov   a,$90+x
1193: d4 80     mov   $80+x,a
1195: f0 2c     beq   $11c3
1197: 83 20 17  bbs4  $20,$11b1
119a: f4 91     mov   a,$91+x
119c: d4 81     mov   $81+x,a
119e: f4 e0     mov   a,$e0+x
11a0: d5 f4 02  mov   $02f4+x,a
11a3: f4 e1     mov   a,$e1+x
11a5: d5 f5 02  mov   $02f5+x,a
11a8: 80        setc
11a9: b5 c0 01  sbc   a,$01c0+x
11ac: d4 e1     mov   $e1+x,a
11ae: fd        mov   y,a
11af: 2f 1d     bra   $11ce
11b1: f4 e1     mov   a,$e1+x
11b3: d5 f5 02  mov   $02f5+x,a
11b6: f4 e0     mov   a,$e0+x
11b8: d5 f4 02  mov   $02f4+x,a
11bb: ba 0c     movw  ya,$0c
11bd: db e1     mov   $e1+x,y
11bf: d4 e0     mov   $e0+x,a
11c1: 2f 0d     bra   $11d0
; if the next is vcmd f3, handle it here somehow
11c3: e7 30     mov   a,($30+x)
11c5: 68 f3     cmp   a,#$f3
11c7: d0 03     bne   $11cc
11c9: 3f bc 12  call  $12bc             ; dispatch vcmd f3
;
11cc: fb e1     mov   y,$e1+x
11ce: f4 e0     mov   a,$e0+x
11d0: da 04     movw  $04,ya
11d2: f5 54 02  mov   a,$0254+x
11d5: fd        mov   y,a
11d6: f5 55 02  mov   a,$0255+x
11d9: 7a 04     addw  ya,$04            ; add per-instrument tuning
11db: c4 04     mov   $04,a
11dd: dd        mov   a,y
11de: 1c        asl   a                 ; ?
11df: fd        mov   y,a
11e0: f6 ab 18  mov   a,$18ab+y         ; pitch table
11e3: c4 06     mov   $06,a
11e5: f6 ac 18  mov   a,$18ac+y
11e8: c4 07     mov   $07,a
11ea: f6 ac 19  mov   a,$19ac+y         ; pitch scale (multiplier)
11ed: 2d        push  a
11ee: f6 ab 19  mov   a,$19ab+y         ; pitch scale (fraction)
11f1: eb 04     mov   y,$04
11f3: cf        mul   ya
11f4: ae        pop   a
11f5: cf        mul   ya
11f6: 7a 06     addw  ya,$06            ; ?, ya = final pitch value
11f8: c4 04     mov   $04,a
11fa: e8 02     mov   a,#$02
11fc: 04 22     or    a,$22
11fe: c4 f2     mov   $f2,a
1200: fa 04 f3  mov   ($f3),($04)       ; P(L)
1203: bc        inc   a
1204: c4 f2     mov   $f2,a
1206: dd        mov   a,y
1207: 28 3f     and   a,#$3f
1209: c4 f3     mov   $f3,a             ; P(H)
120b: 6f        ret

; vcmd dispatch table
120c: dw $128c  ; e0
120e: dw $12a0  ; e1
1210: dw $130b  ; e2 - set instrument
1212: dw $13a2  ; e3
1214: dw $13c2  ; e4
1216: dw $1424  ; e5
1218: dw $1440  ; e6
121a: dw $144d  ; e7
121c: dw $14be  ; e8
121e: dw $14db  ; e9
1220: dw $153c  ; ea
1222: dw $1546  ; eb
1224: dw $156b  ; ec
1226: dw $1571  ; ed
1228: dw $157a  ; ee
122a: dw $1588  ; ef
122c: dw $15a3  ; f0
122e: dw $15aa  ; f1
1230: dw $15bc  ; f2
1232: dw $15d7  ; f3
1234: dw $15e0  ; f4
1236: dw $1602  ; f5
1238: dw $1676  ; f6
123a: dw $1688  ; f7
123c: dw $16bf  ; f8
123e: dw $1409  ; f9
1240: dw $16da  ; fa
1242: dw $176a  ; fb
1244: dw $176f  ; fc
1246: dw $177b  ; fd
1248: dw $1789  ; fe
124a: dw $17a2  ; ff

; vcmd length table (e0-ff) (only lower 8 bit is used)
; this table only suggests which vcmd will not take any parameters.
; therefore, the table content may be wrong. do not trust it too much.
124c: dw $0001,$0002,$0001,$0001,$0003,$0003,$0000,$0003 ; e0-e7
125c: dw $0000,$0003,$0001,$0002,$0001,$0003,$0001,$0002 ; e8-ef
126c: dw $0001,$0003,$0001,$0003,$0003,$0003,$0000,$0000 ; f0-f7
127c: dw $0002,$0001,$0003,$0001,$0001,$0002,$0002,$0000 ; f8-ff

; vcmd e0
128c: d5 44 02  mov   $0244+x,a
128f: d4 d0     mov   $d0+x,a
1291: 09 1a 11  or    ($11),($1a)
1294: e8 00     mov   a,#$00
1296: d5 45 02  mov   $0245+x,a
1299: d4 51     mov   $51+x,a
129b: d5 05 02  mov   $0205+x,a
129e: 2f 16     bra   $12b6

; vcmd e1
12a0: d5 44 02  mov   $0244+x,a
12a3: d4 d0     mov   $d0+x,a
12a5: 3f 93 10  call  $1093
12a8: d5 45 02  mov   $0245+x,a
12ab: 1c        asl   a
12ac: fd        mov   y,a
12ad: f4 d0     mov   a,$d0+x
12af: cf        mul   ya
12b0: dd        mov   a,y
12b1: d0 01     bne   $12b4
12b3: bc        inc   a
12b4: d4 51     mov   $51+x,a
12b6: e7 30     mov   a,($30+x)
12b8: 68 f3     cmp   a,#$f3
12ba: d0 2f     bne   $12eb
12bc: 3f 95 10  call  $1095
12bf: 3f 93 10  call  $1093
12c2: d4 81     mov   $81+x,a
12c4: 3f 93 10  call  $1093
12c7: d4 80     mov   $80+x,a
12c9: 3f 93 10  call  $1093
12cc: 60        clrc
12cd: 95 35 02  adc   a,$0235+x
12d0: d5 f5 02  mov   $02f5+x,a
12d3: e8 00     mov   a,#$00
12d5: d5 f4 02  mov   $02f4+x,a
12d8: f4 80     mov   a,$80+x
12da: f0 0f     beq   $12eb
12dc: 3f 95 10  call  $1095
12df: 3f 93 10  call  $1093
12e2: d5 e4 02  mov   $02e4+x,a
12e5: 3f 93 10  call  $1093
12e8: d5 e5 02  mov   $02e5+x,a
12eb: 6f        ret

12ec: e8 04     mov   a,#$04
12ee: 04 22     or    a,$22
12f0: c4 f2     mov   $f2,a
12f2: 8f 47 f3  mov   $f3,#$47          ; SRCN
12f5: e8 00     mov   a,#$00
12f7: d5 54 02  mov   $0254+x,a
12fa: d5 55 02  mov   $0255+x,a
12fd: d5 64 02  mov   $0264+x,a
1300: d5 c4 02  mov   $02c4+x,a
1303: e8 14     mov   a,#$14
1305: d5 c5 02  mov   $02c5+x,a
1308: 5f 61 10  jmp   $1061

; vcmd e2 - set instrument
130b: 09 1a 11  or    ($11),($1a)
130e: 68 f0     cmp   a,#$f0
1310: b0 da     bcs   $12ec
1312: 68 1d     cmp   a,#$1d
1314: b0 0c     bcs   $1322
1316: 8f 00 04  mov   $04,#$00
1319: 8f 07 05  mov   $05,#$07
131c: 3f 3e 13  call  $133e
131f: 5f 61 10  jmp   $1061

1322: a8 1d     sbc   a,#$1d
1324: 2d        push  a
1325: eb 24     mov   y,$24
1327: f6 f4 06  mov   a,$06f4+y
132a: c4 04     mov   $04,a
132c: f6 f5 06  mov   a,$06f5+y
132f: c4 05     mov   $05,a
1331: ae        pop   a
1332: 3f 3e 13  call  $133e
1335: 5f 61 10  jmp   $1061

1338: 8f e8 04  mov   $04,#$e8
133b: 8f 07 05  mov   $05,#$07
133e: 1c        asl   a
133f: 1c        asl   a
1340: 1c        asl   a
1341: 8d 00     mov   y,#$00
1343: 7a 04     addw  ya,$04
1345: da 04     movw  $04,ya
1347: 8d 00     mov   y,#$00
1349: e8 04     mov   a,#$04
134b: 04 22     or    a,$22
134d: c4 06     mov   $06,a
134f: c4 f2     mov   $f2,a
1351: f7 04     mov   a,($04)+y
1353: c4 f3     mov   $f3,a             ; SRCN
1355: fc        inc   y
1356: f7 04     mov   a,($04)+y
1358: d5 54 02  mov   $0254+x,a
135b: fc        inc   y
135c: f7 04     mov   a,($04)+y
135e: d5 55 02  mov   $0255+x,a
1361: 10 07     bpl   $136a
1363: f5 54 02  mov   a,$0254+x
1366: 9c        dec   a
1367: d5 54 02  mov   $0254+x,a
136a: fc        inc   y
136b: ab 06     inc   $06
136d: fa 06 f2  mov   ($f2),($06)
1370: f7 04     mov   a,($04)+y
1372: c4 f3     mov   $f3,a             ; ADSR(1)
1374: fc        inc   y
1375: ab 06     inc   $06
1377: fa 06 f2  mov   ($f2),($06)
137a: f7 04     mov   a,($04)+y
137c: c4 f3     mov   $f3,a             ; ADSR(2)
137e: fc        inc   y
137f: ab 06     inc   $06
1381: fa 06 f2  mov   ($f2),($06)
1384: f7 04     mov   a,($04)+y
1386: c4 f3     mov   $f3,a             ; GAIN
1388: e8 00     mov   a,#$00
138a: d5 75 02  mov   $0275+x,a
138d: fc        inc   y
138e: 63 20 0a  bbs3  $20,$139b
1391: f7 04     mov   a,($04)+y
1393: d5 c5 02  mov   $02c5+x,a
1396: e8 00     mov   a,#$00
1398: d5 c4 02  mov   $02c4+x,a
139b: fc        inc   y
139c: f7 04     mov   a,($04)+y
139e: d5 64 02  mov   $0264+x,a
13a1: 6f        ret

; vcmd e3
13a2: 68 2a     cmp   a,#$2a
13a4: f0 12     beq   $13b8
13a6: 68 2c     cmp   a,#$2c
13a8: f0 13     beq   $13bd
13aa: d5 c5 02  mov   $02c5+x,a
13ad: e8 00     mov   a,#$00
13af: d5 c4 02  mov   $02c4+x,a
13b2: d5 70 00  mov   $0070+x,a
13b5: 5f 61 10  jmp   $1061

13b8: 62 20     set3  $20
13ba: 5f 61 10  jmp   $1061

13bd: 72 20     clr3  $20
13bf: 5f 61 10  jmp   $1061

; vcmd e4
13c2: 2d        push  a
13c3: 3f 93 10  call  $1093
13c6: 68 80     cmp   a,#$80
13c8: b0 13     bcs   $13dd
13ca: 1c        asl   a
13cb: 30 0c     bmi   $13d9
13cd: 1c        asl   a
13ce: 30 05     bmi   $13d5
13d0: 1c        asl   a
13d1: 8d 01     mov   y,#$01
13d3: 2f 10     bra   $13e5
13d5: 8d 02     mov   y,#$02
13d7: 2f 0c     bra   $13e5
13d9: 8d 04     mov   y,#$04
13db: 2f 08     bra   $13e5
13dd: 8d 08     mov   y,#$08
13df: 68 ff     cmp   a,#$ff
13e1: d0 02     bne   $13e5
13e3: 8d 10     mov   y,#$10
13e5: d4 b1     mov   $b1+x,a
13e7: db c0     mov   $c0+x,y
13e9: 3f 93 10  call  $1093
13ec: d5 34 02  mov   $0234+x,a
13ef: ae        pop   a
13f0: 68 c8     cmp   a,#$c8
13f2: b0 0b     bcs   $13ff
13f4: d5 24 02  mov   $0224+x,a
13f7: e8 00     mov   a,#$00
13f9: d5 25 02  mov   $0225+x,a
13fc: 5f 61 10  jmp   $1061

13ff: fd        mov   y,a
1400: e8 00     mov   a,#$00
1402: d5 24 02  mov   $0224+x,a
1405: dd        mov   a,y
1406: 80        setc
1407: a8 c7     sbc   a,#$c7
; vcmd f9
1409: d5 25 02  mov   $0225+x,a
140c: 2d        push  a
140d: 8d 00     mov   y,#$00
140f: f5 34 02  mov   a,$0234+x
1412: ce        pop   x
1413: 9e        div   ya,x
1414: 2d        push  a
1415: e8 00     mov   a,#$00
1417: 9e        div   ya,x
1418: f8 21     mov   x,$21
141a: d5 14 03  mov   $0314+x,a
141d: ae        pop   a
141e: d5 15 03  mov   $0315+x,a
1421: 5f 61 10  jmp   $1061

; vcmd e5
1424: d5 c1 01  mov   $01c1+x,a
1427: 3f 93 10  call  $1093
142a: d5 35 03  mov   $0335+x,a
142d: 3f 93 10  call  $1093
1430: d5 34 03  mov   $0334+x,a
1433: e8 00     mov   a,#$00
1435: d4 61     mov   $61+x,a
1437: d5 24 03  mov   $0324+x,a
143a: d5 25 03  mov   $0325+x,a
143d: 5f 61 10  jmp   $1061

; vcmd e6
1440: f4 30     mov   a,$30+x
1442: d5 70 01  mov   $0170+x,a
1445: f4 31     mov   a,$31+x
1447: d5 71 01  mov   $0171+x,a
144a: 5f 61 10  jmp   $1061

; vcmd e7
144d: 68 00     cmp   a,#$00
144f: f0 1e     beq   $146f
1451: bb 50     inc   $50+x
1453: de 50 19  cbne  $50+x,$146f
1456: 3f 95 10  call  $1095
1459: 3f 95 10  call  $1095
145c: e8 00     mov   a,#$00
145e: d4 50     mov   $50+x,a
1460: d5 30 01  mov   $0130+x,a
1463: d5 31 01  mov   $0131+x,a
1466: d5 50 01  mov   $0150+x,a
1469: d5 51 01  mov   $0151+x,a
146c: 5f 61 10  jmp   $1061

146f: 3f 93 10  call  $1093
1472: 8d 00     mov   y,#$00
1474: 08 00     or    a,#$00
1476: f0 15     beq   $148d
1478: 10 01     bpl   $147b
147a: dc        dec   y
147b: da 04     movw  $04,ya
147d: f5 31 01  mov   a,$0131+x
1480: fd        mov   y,a
1481: f5 30 01  mov   a,$0130+x
1484: 7a 04     addw  ya,$04
1486: d5 30 01  mov   $0130+x,a
1489: dd        mov   a,y
148a: d5 31 01  mov   $0131+x,a
148d: 3f 93 10  call  $1093
1490: 08 00     or    a,#$00
1492: f0 1d     beq   $14b1
1494: 8d 00     mov   y,#$00
1496: 1c        asl   a
1497: 90 01     bcc   $149a
1499: dc        dec   y
149a: cb 04     mov   $04,y
149c: 1c        asl   a
149d: 2b 04     rol   $04
149f: 1c        asl   a
14a0: 2b 04     rol   $04
14a2: 60        clrc
14a3: 95 50 01  adc   a,$0150+x
14a6: d5 50 01  mov   $0150+x,a
14a9: e4 04     mov   a,$04
14ab: 95 51 01  adc   a,$0151+x
14ae: d5 51 01  mov   $0151+x,a
14b1: f5 70 01  mov   a,$0170+x
14b4: d4 30     mov   $30+x,a
14b6: f5 71 01  mov   a,$0171+x
14b9: d4 31     mov   $31+x,a
14bb: 5f 61 10  jmp   $1061

; vcmd e8
14be: f4 30     mov   a,$30+x
14c0: d5 80 01  mov   $0180+x,a
14c3: f4 31     mov   a,$31+x
14c5: d5 81 01  mov   $0181+x,a
14c8: e8 00     mov   a,#$00
14ca: d4 60     mov   $60+x,a
14cc: d5 40 01  mov   $0140+x,a
14cf: d5 41 01  mov   $0141+x,a
14d2: d5 60 01  mov   $0160+x,a
14d5: d5 61 01  mov   $0161+x,a
14d8: 5f 61 10  jmp   $1061

; vcmd e9
14db: 68 00     cmp   a,#$00
14dd: f0 0e     beq   $14ed
14df: bb 60     inc   $60+x
14e1: de 60 09  cbne  $60+x,$14ed
14e4: 3f 95 10  call  $1095
14e7: 3f 95 10  call  $1095
14ea: 5f 61 10  jmp   $1061

14ed: 3f 93 10  call  $1093
14f0: 8d 00     mov   y,#$00
14f2: 08 00     or    a,#$00
14f4: f0 15     beq   $150b
14f6: 10 01     bpl   $14f9
14f8: dc        dec   y
14f9: da 04     movw  $04,ya
14fb: f5 41 01  mov   a,$0141+x
14fe: fd        mov   y,a
14ff: f5 40 01  mov   a,$0140+x
1502: 7a 04     addw  ya,$04
1504: d5 40 01  mov   $0140+x,a
1507: dd        mov   a,y
1508: d5 41 01  mov   $0141+x,a
150b: 3f 93 10  call  $1093
150e: 08 00     or    a,#$00
1510: f0 1d     beq   $152f
1512: 8d 00     mov   y,#$00
1514: 1c        asl   a
1515: 90 01     bcc   $1518
1517: dc        dec   y
1518: cb 04     mov   $04,y
151a: 1c        asl   a
151b: 2b 04     rol   $04
151d: 1c        asl   a
151e: 2b 04     rol   $04
1520: 60        clrc
1521: 95 60 01  adc   a,$0160+x
1524: d5 60 01  mov   $0160+x,a
1527: e4 04     mov   a,$04
1529: 95 61 01  adc   a,$0161+x
152c: d5 61 01  mov   $0161+x,a
152f: f5 80 01  mov   a,$0180+x
1532: d4 30     mov   $30+x,a
1534: f5 81 01  mov   a,$0181+x
1537: d4 31     mov   $31+x,a
1539: 5f 61 10  jmp   $1061

; vcmd ea
153c: d5 b1 01  mov   $01b1+x,a
153f: e8 00     mov   a,#$00
1541: d4 40     mov   $40+x,a
1543: 5f 61 10  jmp   $1061

; vcmd eb
1546: d4 40     mov   $40+x,a
1548: 2d        push  a
1549: 3f 93 10  call  $1093
154c: d4 41     mov   $41+x,a
154e: 80        setc
154f: b5 b1 01  sbc   a,$01b1+x
1552: ce        pop   x
1553: 3f c9 17  call  $17c9
1556: d5 00 01  mov   $0100+x,a
1559: dd        mov   a,y
155a: d5 01 01  mov   $0101+x,a
155d: f5 b1 01  mov   a,$01b1+x
1560: d5 11 01  mov   $0111+x,a
1563: e8 00     mov   a,#$00
1565: d5 10 01  mov   $0110+x,a
1568: 5f 61 10  jmp   $1061

; vcmd ec
156b: d5 35 02  mov   $0235+x,a
156e: 5f 61 10  jmp   $1061

; vcmd ed
1571: 3f 95 10  call  $1095
1574: 3f 95 10  call  $1095
1577: 5f 61 10  jmp   $1061

; vcmd ee
157a: d5 a5 02  mov   $02a5+x,a
157d: e8 00     mov   a,#$00
157f: d5 a4 02  mov   $02a4+x,a
1582: d5 71 00  mov   $0071+x,a
1585: 5f 61 10  jmp   $1061

; vcmd ef
1588: d4 71     mov   $71+x,a
158a: 2d        push  a
158b: 3f 93 10  call  $1093
158e: d5 04 02  mov   $0204+x,a
1591: 80        setc
1592: b5 a5 02  sbc   a,$02a5+x
1595: ce        pop   x
1596: 3f c9 17  call  $17c9
1599: d5 b4 02  mov   $02b4+x,a
159c: dd        mov   a,y
159d: d5 b5 02  mov   $02b5+x,a
15a0: 5f 61 10  jmp   $1061

; vcmd f0
15a3: d4 90     mov   $90+x,a
15a5: 82 20     set4  $20
15a7: 5f 61 10  jmp   $1061

; vcmd f1
15aa: d4 91     mov   $91+x,a
15ac: 3f 93 10  call  $1093
15af: d4 90     mov   $90+x,a
15b1: 3f 93 10  call  $1093
15b4: d5 c0 01  mov   $01c0+x,a
15b7: 92 20     clr4  $20
15b9: 5f 61 10  jmp   $1061

; vcmd f2
15bc: 1c        asl   a
15bd: b0 08     bcs   $15c7
15bf: 8d 00     mov   y,#$00
15c1: 1c        asl   a
15c2: 90 09     bcc   $15cd
15c4: fc        inc   y
15c5: 2f 06     bra   $15cd
15c7: 8d ff     mov   y,#$ff
15c9: 1c        asl   a
15ca: b0 01     bcs   $15cd
15cc: dc        dec   y
15cd: d5 44 03  mov   $0344+x,a
15d0: dd        mov   a,y
15d1: d5 45 03  mov   $0345+x,a
15d4: 5f 61 10  jmp   $1061

; vcmd f3
15d7: 3f 95 10  call  $1095
15da: 3f 95 10  call  $1095
15dd: 5f 61 10  jmp   $1061

; vcmd f4
15e0: c4 16     mov   $16,a
15e2: f0 0f     beq   $15f3
15e4: 3f 93 10  call  $1093
15e7: c4 0e     mov   $0e,a
15e9: 3f 93 10  call  $1093
15ec: c4 0f     mov   $0f,a
15ee: b2 12     clr5  $12
15f0: 5f 61 10  jmp   $1061

15f3: c4 0e     mov   $0e,a
15f5: c4 0f     mov   $0f,a
15f7: a2 12     set5  $12
15f9: 3f 95 10  call  $1095
15fc: 3f 95 10  call  $1095
15ff: 5f 61 10  jmp   $1061

; vcmd f5
1602: 3f 26 16  call  $1626
1605: 3f 93 10  call  $1093
1608: c4 13     mov   $13,a
160a: 3f 93 10  call  $1093
160d: bc        inc   a
160e: 1c        asl   a
160f: 1c        asl   a
1610: 1c        asl   a
1611: 5d        mov   x,a
1612: 8d 08     mov   y,#$08
1614: f6 d7 03  mov   a,$03d7+y         ; FIR regs
1617: c4 f2     mov   $f2,a
1619: f5 df 03  mov   a,$03df+x         ; FIR values
161c: c4 f3     mov   $f3,a
161e: 1d        dec   x
161f: fe f3     dbnz  y,$1614
1621: f8 21     mov   x,$21
1623: 5f 61 10  jmp   $1061

1626: c4 18     mov   $18,a
1628: 8f 7d f2  mov   $f2,#$7d
162b: e4 f3     mov   a,$f3             ; EDL
162d: 64 18     cmp   a,$18
162f: f0 32     beq   $1663
1631: 28 0f     and   a,#$0f
1633: 48 ff     eor   a,#$ff
1635: f3 17 03  bbc7  $17,$163b
1638: 60        clrc
1639: 84 17     adc   a,$17
163b: c4 17     mov   $17,a
163d: e8 00     mov   a,#$00
163f: 8f 4d f2  mov   $f2,#$4d
1642: c4 f3     mov   $f3,a             ; EON
1644: 8f 0d f2  mov   $f2,#$0d
1647: c4 f3     mov   $f3,a             ; EFB
1649: 8f 3c f2  mov   $f2,#$3c
164c: c4 f3     mov   $f3,a             ; EVOL(R)
164e: 8f 2c f2  mov   $f2,#$2c
1651: c4 f3     mov   $f3,a             ; EVOL(L)
1653: 8f 6c f2  mov   $f2,#$6c
1656: e4 12     mov   a,$12
1658: 08 20     or    a,#$20
165a: c4 f3     mov   $f3,a             ; FLG
165c: e4 18     mov   a,$18
165e: 8f 7d f2  mov   $f2,#$7d
1661: c4 f3     mov   $f3,a             ; EDL
1663: 68 00     cmp   a,#$00
1665: f0 09     beq   $1670
1667: 1c        asl   a
1668: 1c        asl   a
1669: 1c        asl   a
166a: 48 ff     eor   a,#$ff
166c: bc        inc   a
166d: 60        clrc
166e: 88 00     adc   a,#$00
1670: 8f 6d f2  mov   $f2,#$6d
1673: c4 f3     mov   $f3,a             ; ESA
1675: 6f        ret

; vcmd f6
1676: f4 30     mov   a,$30+x
1678: d5 90 01  mov   $0190+x,a
167b: f4 31     mov   a,$31+x
167d: d5 91 01  mov   $0191+x,a
1680: e8 c0     mov   a,#$c0
1682: 4e 20 00  tclr1 $0020
1685: 5f 61 10  jmp   $1061

; vcmd f7
1688: c3 20 08  bbs6  $20,$1693
168b: e3 20 20  bbs7  $20,$16ae
168e: c2 20     set6  $20
1690: 5f 61 10  jmp   $1061

1693: d2 20     clr6  $20
1695: e2 20     set7  $20
1697: f4 30     mov   a,$30+x
1699: d5 a0 01  mov   $01a0+x,a
169c: f4 31     mov   a,$31+x
169e: d5 a1 01  mov   $01a1+x,a
16a1: f5 90 01  mov   a,$0190+x
16a4: d4 30     mov   $30+x,a
16a6: f5 91 01  mov   a,$0191+x
16a9: d4 31     mov   $31+x,a
16ab: 5f 61 10  jmp   $1061

16ae: c2 20     set6  $20
16b0: f2 20     clr7  $20
16b2: f5 a0 01  mov   a,$01a0+x
16b5: d4 30     mov   $30+x,a
16b7: f5 a1 01  mov   a,$01a1+x
16ba: d4 31     mov   $31+x,a
16bc: 5f 61 10  jmp   $1061

; vcmd f8
16bf: d4 70     mov   $70+x,a
16c1: 2d        push  a
16c2: 3f 93 10  call  $1093
16c5: d5 15 02  mov   $0215+x,a
16c8: 80        setc
16c9: b5 c5 02  sbc   a,$02c5+x
16cc: ce        pop   x
16cd: 3f c9 17  call  $17c9
16d0: d5 d4 02  mov   $02d4+x,a
16d3: dd        mov   a,y
16d4: d5 d5 02  mov   $02d5+x,a
16d7: 5f 61 10  jmp   $1061

; vcmd fa
16da: 8d 00     mov   y,#$00
16dc: 68 a0     cmp   a,#$a0
16de: b0 35     bcs   $1715
16e0: cd 0a     mov   x,#$0a
16e2: 9e        div   ya,x
16e3: c4 04     mov   $04,a
16e5: dd        mov   a,y
16e6: 28 07     and   a,#$07
16e8: 9f        xcn   a
16e9: 04 04     or    a,$04
16eb: 08 80     or    a,#$80
16ed: fd        mov   y,a
16ee: e8 05     mov   a,#$05
16f0: 04 22     or    a,$22
16f2: c4 f2     mov   $f2,a
16f4: cb f3     mov   $f3,y             ; ADSR(1)
16f6: bc        inc   a
16f7: c4 f2     mov   $f2,a
16f9: f8 21     mov   x,$21
16fb: dd        mov   a,y
16fc: d5 84 02  mov   $0284+x,a
16ff: 3f 93 10  call  $1093
1702: 8d 00     mov   y,#$00
1704: cd 1e     mov   x,#$1e
1706: 9e        div   ya,x
1707: fc        inc   y
1708: fc        inc   y
1709: cb 04     mov   $04,y
170b: 9f        xcn   a
170c: 1c        asl   a
170d: 04 04     or    a,$04
170f: c4 f3     mov   $f3,a             ; ADSR(2)
1711: f8 21     mov   x,$21
1713: 2f 18     bra   $172d
1715: e8 05     mov   a,#$05
1717: 04 22     or    a,$22
1719: c4 f2     mov   $f2,a
171b: cb f3     mov   $f3,y             ; ADSR(1)
171d: bc        inc   a
171e: bc        inc   a
171f: c4 f2     mov   $f2,a
1721: dd        mov   a,y
1722: d5 84 02  mov   $0284+x,a
1725: 3f 93 10  call  $1093
1728: c4 f3     mov   $f3,a             ; ADSR(2)
172a: d5 85 02  mov   $0285+x,a
172d: 3f 93 10  call  $1093
1730: 68 c8     cmp   a,#$c8
1732: b0 22     bcs   $1756
1734: 68 64     cmp   a,#$64
1736: b0 16     bcs   $174e
1738: 68 00     cmp   a,#$00
173a: f0 20     beq   $175c
173c: 8d 10     mov   y,#$10
173e: cf        mul   ya
173f: d5 84 02  mov   $0284+x,a
1742: dd        mov   a,y
1743: d5 85 02  mov   $0285+x,a
1746: e8 01     mov   a,#$01
1748: d5 75 02  mov   $0275+x,a
174b: 5f 61 10  jmp   $1061

174e: a8 64     sbc   a,#$64
1750: 28 1f     and   a,#$1f
1752: 08 80     or    a,#$80
1754: 2f 06     bra   $175c
1756: a8 c8     sbc   a,#$c8
1758: 28 1f     and   a,#$1f
175a: 08 a0     or    a,#$a0
175c: d5 75 02  mov   $0275+x,a
175f: e8 00     mov   a,#$00
1761: d5 94 02  mov   $0294+x,a
1764: d5 95 02  mov   $0295+x,a
1767: 5f 61 10  jmp   $1061

; vcmd fb
176a: c4 14     mov   $14,a
176c: 5f 61 10  jmp   $1061

; vcmd fc
176f: d5 e4 02  mov   $02e4+x,a
1772: 3f 93 10  call  $1093
1775: d5 e5 02  mov   $02e5+x,a
1778: 5f 61 10  jmp   $1061

; vcmd fd
177b: c4 04     mov   $04,a
177d: 3f 93 10  call  $1093
1780: d4 31     mov   $31+x,a
1782: e4 04     mov   a,$04
1784: d4 30     mov   $30+x,a
1786: 5f 61 10  jmp   $1061

; vcmd fe
1789: 2d        push  a
178a: 3f 93 10  call  $1093
178d: fd        mov   y,a
178e: f4 30     mov   a,$30+x
1790: d5 20 01  mov   $0120+x,a
1793: f4 31     mov   a,$31+x
1795: d5 21 01  mov   $0121+x,a
1798: ae        pop   a
1799: d4 30     mov   $30+x,a
179b: db 31     mov   $31+x,y
179d: 42 20     set2  $20
179f: 5f 61 10  jmp   $1061

; vcmd ff
17a2: 53 20 0f  bbc2  $20,$17b4
17a5: 52 20     clr2  $20
17a7: f5 20 01  mov   a,$0120+x
17aa: d4 30     mov   $30+x,a
17ac: f5 21 01  mov   a,$0121+x
17af: d4 31     mov   $31+x,a
17b1: 5f 61 10  jmp   $1061

17b4: e8 00     mov   a,#$00
17b6: d5 b0 01  mov   $01b0+x,a
17b9: d4 d1     mov   $d1+x,a
17bb: d5 14 02  mov   $0214+x,a
17be: e4 1a     mov   a,$1a
17c0: 0e 11 00  tset1 $0011
17c3: 4e 19 00  tclr1 $0019
17c6: a2 20     set5  $20
17c8: 6f        ret

17c9: c4 04     mov   $04,a
17cb: fd        mov   y,a
17cc: 10 03     bpl   $17d1
17ce: 48 ff     eor   a,#$ff
17d0: bc        inc   a
17d1: 8d 00     mov   y,#$00
17d3: 9e        div   ya,x
17d4: 2d        push  a
17d5: e8 00     mov   a,#$00
17d7: 9e        div   ya,x
17d8: ee        pop   y
17d9: f8 21     mov   x,$21
17db: f3 04 07  bbc7  $04,$17e5
17de: da 04     movw  $04,ya
17e0: e8 00     mov   a,#$00
17e2: fd        mov   y,a
17e3: 9a 04     subw  ya,$04
17e5: 6f        ret

17e6: f4 e0     mov   a,$e0+x
17e8: fb e1     mov   y,$e1+x
17ea: da 04     movw  $04,ya
17ec: f5 f5 02  mov   a,$02f5+x
17ef: fd        mov   y,a
17f0: f5 f4 02  mov   a,$02f4+x
17f3: 9a 04     subw  ya,$04
17f5: f0 32     beq   $1829
17f7: da 06     movw  $06,ya
17f9: 10 07     bpl   $1802
17fb: e8 00     mov   a,#$00
17fd: fd        mov   y,a
17fe: 9a 06     subw  ya,$06
1800: c4 06     mov   $06,a
1802: f4 90     mov   a,$90+x
1804: cf        mul   ya
1805: da 08     movw  $08,ya
1807: eb 06     mov   y,$06
1809: f4 90     mov   a,$90+x
180b: cf        mul   ya
180c: dd        mov   a,y
180d: 8d 00     mov   y,#$00
180f: 7a 08     addw  ya,$08
1811: d0 01     bne   $1814
1813: bc        inc   a
1814: f3 07 0b  bbc7  $07,$1822
1817: da 06     movw  $06,ya
1819: ba 04     movw  ya,$04
181b: 9a 06     subw  ya,$06
181d: d4 e0     mov   $e0+x,a
181f: db e1     mov   $e1+x,y
1821: 6f        ret

1822: 7a 04     addw  ya,$04
1824: d4 e0     mov   $e0+x,a
1826: db e1     mov   $e1+x,y
1828: 6f        ret

1829: d4 80     mov   $80+x,a
182b: 6f        ret

182c: f4 c1     mov   a,$c1+x
182e: 60        clrc
182f: 94 c0     adc   a,$c0+x
1831: 28 3f     and   a,#$3f
1833: c4 04     mov   $04,a
1835: d4 c1     mov   $c1+x,a
1837: 28 1f     and   a,#$1f
1839: fd        mov   y,a
183a: f6 d5 1a  mov   a,$1ad5+y
183d: fd        mov   y,a
183e: f5 05 03  mov   a,$0305+x
1841: 30 09     bmi   $184c
1843: 1c        asl   a
1844: cf        mul   ya
1845: cb 08     mov   $08,y
1847: 8f 00 09  mov   $09,#$00
184a: 2f 0a     bra   $1856
184c: 80        setc
184d: a8 7e     sbc   a,#$7e
184f: cf        mul   ya
1850: da 08     movw  $08,ya
1852: 4b 09     lsr   $09
1854: 6b 08     ror   $08
1856: b3 04 07  bbc5  $04,$1860
1859: e8 00     mov   a,#$00
185b: fd        mov   y,a
185c: 9a 08     subw  ya,$08
185e: da 08     movw  $08,ya
1860: 6f        ret

1861: f5 25 03  mov   a,$0325+x
1864: c4 04     mov   $04,a
1866: f5 24 03  mov   a,$0324+x
1869: fd        mov   y,a
186a: bc        inc   a
186b: d5 24 03  mov   $0324+x,a
186e: d0 06     bne   $1876
1870: e4 04     mov   a,$04
1872: bc        inc   a
1873: d5 25 03  mov   $0325+x,a
1876: 13 04 11  bbc0  $04,$188a
1879: f6 f5 1b  mov   a,$1bf5+y
187c: 35 34 03  and   a,$0334+x
187f: c4 04     mov   $04,a
1881: f6 f6 1b  mov   a,$1bf6+y
1884: 35 35 03  and   a,$0335+x
1887: c4 05     mov   $05,a
1889: 6f        ret

188a: f6 f5 1a  mov   a,$1af5+y
188d: 35 34 03  and   a,$0334+x
1890: c4 04     mov   $04,a
1892: f6 f6 1a  mov   a,$1af6+y
1895: 35 35 03  and   a,$0335+x
1898: c4 05     mov   $05,a
189a: 6f        ret

189b: dw $0000
189d: dw $0010
189f: dw $0020
18a1: dw $0030
18a3: dw $0040
18a5: dw $0050
18a7: dw $0060
18a9: dw $0070

; pitch table
18ab: dw $0042
18ad: dw $0046
18af: dw $004b
18b1: dw $004f
18b3: dw $0054
18b5: dw $0059
18b7: dw $005e
18b9: dw $0064
18bb: dw $006a
18bd: dw $0070
18bf: dw $0077
18c1: dw $007e
18c3: dw $0085
18c5: dw $008d
18c7: dw $0096
18c9: dw $009f
18cb: dw $00a8
18cd: dw $00b2
18cf: dw $00bd
18d1: dw $00c8
18d3: dw $00d4
18d5: dw $00e1
18d7: dw $00ee
18d9: dw $00fc
18db: dw $010b
18dd: dw $011b
18df: dw $012c
18e1: dw $013e
18e3: dw $0151
18e5: dw $0165
18e7: dw $017a
18e9: dw $0191
18eb: dw $01a9
18ed: dw $01c2
18ef: dw $01dd
18f1: dw $01f9
18f3: dw $0217
18f5: dw $0237
18f7: dw $0259
18f9: dw $027d
18fb: dw $02a3
18fd: dw $02cb
18ff: dw $02f5
1901: dw $0322
1903: dw $0352
1905: dw $0385
1907: dw $03ba
1909: dw $03f3
190b: dw $042f
190d: dw $046f
190f: dw $04b2
1911: dw $04fa
1913: dw $0546
1915: dw $0596
1917: dw $05eb
1919: dw $0645
191b: dw $06a5
191d: dw $070a
191f: dw $0775
1921: dw $07e6
1923: dw $085f
1925: dw $08de
1927: dw $0965
1929: dw $09f4
192b: dw $0a8c
192d: dw $0b2c
192f: dw $0bd6
1931: dw $0c8b
1933: dw $0d4a
1935: dw $0e14
1937: dw $0eea
1939: dw $0fcd
193b: dw $10be
193d: dw $11bd
193f: dw $12cb
1941: dw $13e9
1943: dw $1518
1945: dw $1659
1947: dw $17ad
1949: dw $1916
194b: dw $1a94
194d: dw $1c28
194f: dw $1dd5
1951: dw $1f9b
1953: dw $217c
1955: dw $237a
1957: dw $2596
1959: dw $27d2
195b: dw $2a30
195d: dw $2cb2
195f: dw $2f5a
1961: dw $322c
1963: dw $3528
1965: dw $3850
1967: dw $3bac
1969: dw $3f36

196b: dw $000b
196d: dw $000c
196f: dw $000d
1971: dw $000e
1973: dw $000e
1975: dw $000f
1977: dw $0010
1979: dw $0010
197b: dw $0012
197d: dw $0013
197f: dw $0014
1981: dw $0015
1983: dw $0016
1985: dw $0018
1987: dw $0019
1989: dw $001b
198b: dw $001c
198d: dw $001e
198f: dw $0020
1991: dw $0021
1993: dw $0023
1995: dw $0026
1997: dw $0028
1999: dw $002a
199b: dw $002d
199d: dw $002f
199f: dw $0032
19a1: dw $0035
19a3: dw $0038
19a5: dw $003c
19a7: dw $003f
19a9: dw $0042

; pitch scale table (fraction, multiplier) (96 elements)
19ab: db $04,$01      ; $0004
19ad: db $05,$01      ; $0005
19af: db $04,$01      ; $0004
19b1: db $05,$01      ; $0005
19b3: db $05,$01      ; $0005
19b5: db $05,$01      ; $0005
19b7: db $06,$01      ; $0006
19b9: db $06,$01      ; $0006
19bb: db $06,$01      ; $0006
19bd: db $07,$01      ; $0007
19bf: db $07,$01      ; $0007
19c1: db $07,$01      ; $0007
19c3: db $08,$01      ; $0008
19c5: db $09,$01      ; $0009
19c7: db $09,$01      ; $0009
19c9: db $09,$01      ; $0009
19cb: db $0a,$01      ; $000a
19cd: db $0b,$01      ; $000b
19cf: db $0b,$01      ; $000b
19d1: db $0c,$01      ; $000c
19d3: db $0d,$01      ; $000d
19d5: db $0d,$01      ; $000d
19d7: db $0e,$01      ; $000e
19d9: db $0f,$01      ; $000f
19db: db $10,$01      ; $0010
19dd: db $11,$01      ; $0011
19df: db $12,$01      ; $0012
19e1: db $13,$01      ; $0013
19e3: db $14,$01      ; $0014
19e5: db $15,$01      ; $0015
19e7: db $17,$01      ; $0017
19e9: db $18,$01      ; $0018
19eb: db $19,$01      ; $0019
19ed: db $1b,$01      ; $001b
19ef: db $1c,$01      ; $001c
19f1: db $1e,$01      ; $001e
19f3: db $20,$01      ; $0020
19f5: db $22,$01      ; $0022
19f7: db $24,$01      ; $0024
19f9: db $26,$01      ; $0026
19fb: db $28,$01      ; $0028
19fd: db $2a,$01      ; $002a
19ff: db $2d,$01      ; $002d
1a01: db $30,$01      ; $0030
1a03: db $33,$01      ; $0033
1a05: db $35,$01      ; $0035
1a07: db $39,$01      ; $0039
1a09: db $3c,$01      ; $003c
1a0b: db $40,$01      ; $0040
1a0d: db $43,$01      ; $0043
1a0f: db $48,$01      ; $0048
1a11: db $4c,$01      ; $004c
1a13: db $50,$01      ; $0050
1a15: db $55,$01      ; $0055
1a17: db $5a,$01      ; $005a
1a19: db $60,$01      ; $0060
1a1b: db $65,$01      ; $0065
1a1d: db $6b,$01      ; $006b
1a1f: db $71,$01      ; $0071
1a21: db $79,$01      ; $0079
1a23: db $7f,$01      ; $007f
1a25: db $87,$01      ; $0087
1a27: db $8f,$01      ; $008f
1a29: db $98,$01      ; $0098
1a2b: db $a0,$01      ; $00a0
1a2d: db $aa,$01      ; $00aa
1a2f: db $b5,$01      ; $00b5
1a31: db $bf,$01      ; $00bf
1a33: db $ca,$01      ; $00ca
1a35: db $d6,$01      ; $00d6
1a37: db $e3,$01      ; $00e3
1a39: db $f1,$01      ; $00f1
1a3b: db $ff,$01      ; $00ff
1a3d: db $87,$02      ; $010e
1a3f: db $8f,$02      ; $011e
1a41: db $97,$02      ; $012e
1a43: db $a0,$02      ; $0140
1a45: db $aa,$02      ; $0154
1a47: db $b4,$02      ; $0168
1a49: db $bf,$02      ; $017e
1a4b: db $ca,$02      ; $0194
1a4d: db $d6,$02      ; $01ac
1a4f: db $e3,$02      ; $01c6
1a51: db $f0,$02      ; $01e0
1a53: db $ff,$02      ; $01fe
1a55: db $b4,$03      ; $021c
1a57: db $be,$03      ; $023a
1a59: db $ca,$03      ; $025e
1a5b: db $d6,$03      ; $0282
1a5d: db $e2,$03      ; $02a6
1a5f: db $f0,$03      ; $02d0
1a61: db $fe,$03      ; $02fa
1a63: db $ca,$04      ; $0328
1a65: db $d7,$04      ; $035c
1a67: db $e2,$04      ; $0388
1a69: db $c9,$01      ; $00c9
