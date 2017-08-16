; Yoshi's Safari
; It is based on N-SPC, but there are many minor differences.

0800: 20        clrp
0801: cd 7f     mov   x,#$7f
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: cd ef     mov   x,#$ef
0808: d4 00     mov   $00+x,a
080a: 1d        dec   x
080b: c8 ff     cmp   x,#$ff
080d: d0 f9     bne   $0808
080f: e8 00     mov   a,#$00
0811: cd 00     mov   x,#$00
0813: d5 00 01  mov   $0100+x,a
0816: d5 00 02  mov   $0200+x,a
0819: d5 00 03  mov   $0300+x,a
081c: d5 00 04  mov   $0400+x,a
081f: d5 00 05  mov   $0500+x,a
0822: d5 00 06  mov   $0600+x,a
0825: d5 00 07  mov   $0700+x,a
0828: 1d        dec   x
0829: d0 e8     bne   $0813
082b: e8 ff     mov   a,#$ff
082d: c4 30     mov   $30,a
082f: e8 ff     mov   a,#$ff
0831: c4 37     mov   $37,a
0833: e8 00     mov   a,#$00
0835: c5 f4 00  mov   $00f4,a
0838: c5 f5 00  mov   $00f5,a
083b: c5 f6 00  mov   $00f6,a
083e: c5 f7 00  mov   $00f7,a
0841: e8 30     mov   a,#$30
0843: c5 f1 00  mov   $00f1,a
0846: e8 10     mov   a,#$10
0848: c5 fa 00  mov   $00fa,a
084b: e8 01     mov   a,#$01
084d: c5 f1 00  mov   $00f1,a
0850: c4 18     mov   $18,a
0852: 8f 40 3e  mov   $3e,#$40
0855: 8d 6c     mov   y,#$6c
0857: e8 a0     mov   a,#$a0
0859: 3f 99 10  call  $1099
085c: e8 20     mov   a,#$20
085e: 3f 99 10  call  $1099
0861: 3f bf 0f  call  $0fbf
0864: 8d 5c     mov   y,#$5c
0866: e8 ff     mov   a,#$ff
0868: 3f 99 10  call  $1099
086b: 8d 3d     mov   y,#$3d
086d: e8 00     mov   a,#$00
086f: 3f 99 10  call  $1099
0872: 8d 2d     mov   y,#$2d
0874: 3f 99 10  call  $1099
0877: 8d 5d     mov   y,#$5d
0879: e8 1b     mov   a,#$1b
087b: c4 45     mov   $45,a
087d: 3f 99 10  call  $1099
0880: 8f 00 46  mov   $46,#$00
0883: 8f 1c 47  mov   $47,#$1c
0886: 8f 00 48  mov   $48,#$00
0889: 8f 1e 49  mov   $49,#$1e
088c: 8f 00 4a  mov   $4a,#$00
088f: 8f 1f 4b  mov   $4b,#$1f
0892: e8 00     mov   a,#$00
0894: 3f 4a 10  call  $104a
0897: e5 fd 00  mov   a,$00fd
089a: d0 05     bne   $08a1
089c: 3f 92 16  call  $1692
089f: 2f f6     bra   $0897
08a1: c4 19     mov   $19,a
08a3: e4 1b     mov   a,$1b
08a5: f0 2f     beq   $08d6
08a7: 80        setc
08a8: a4 19     sbc   a,$19
08aa: c4 1b     mov   $1b,a
08ac: f0 05     beq   $08b3
08ae: b0 26     bcs   $08d6
08b0: 8f 00 1b  mov   $1b,#$00
08b3: 8d 6c     mov   y,#$6c
08b5: 3f a0 10  call  $10a0
08b8: 28 df     and   a,#$df
08ba: 3f 99 10  call  $1099
08bd: 8d 0d     mov   y,#$0d
08bf: e4 25     mov   a,$25
08c1: 3f 99 10  call  $1099
08c4: 8d 4d     mov   y,#$4d
08c6: e4 26     mov   a,$26
08c8: 3f 99 10  call  $1099
08cb: 8d 7d     mov   y,#$7d
08cd: 3f a0 10  call  $10a0
08d0: 1c        asl   a
08d1: 1c        asl   a
08d2: 1c        asl   a
08d3: bc        inc   a
08d4: c4 1c     mov   $1c,a
08d6: e4 1c     mov   a,$1c
08d8: f0 1a     beq   $08f4
08da: 80        setc
08db: a4 19     sbc   a,$19
08dd: c4 1c     mov   $1c,a
08df: f0 05     beq   $08e6
08e1: b0 11     bcs   $08f4
08e3: 8f 00 1c  mov   $1c,#$00
08e6: 8d 2c     mov   y,#$2c
08e8: e4 1e     mov   a,$1e
08ea: 3f 99 10  call  $1099
08ed: 8d 3c     mov   y,#$3c
08ef: e4 20     mov   a,$20
08f1: 3f 99 10  call  $1099
08f4: 8f 00 43  mov   $43,#$00
08f7: 8f 00 2b  mov   $2b,#$00
08fa: 8f 00 2c  mov   $2c,#$00
08fd: 8f 00 41  mov   $41,#$00
0900: 8f 00 42  mov   $42,#$00
0903: cd 00     mov   x,#$00
0905: f5 00 02  mov   a,$0200+x
0908: f0 34     beq   $093e
090a: c8 08     cmp   x,#$08
090c: b0 18     bcs   $0926
090e: e4 3f     mov   a,$3f
0910: 04 3c     or    a,$3c
0912: f0 24     beq   $0938
0914: 7d        mov   a,x
0915: 08 08     or    a,#$08
0917: fd        mov   y,a
0918: f6 00 02  mov   a,$0200+y
091b: d0 21     bne   $093e
091d: f5 c1 0b  mov   a,$0bc1+x
0920: 04 42     or    a,$42
0922: c4 42     mov   $42,a
0924: 2f 18     bra   $093e
0926: f5 c1 0b  mov   a,$0bc1+x
0929: 04 43     or    a,$43
092b: c4 43     mov   $43,a
092d: f5 90 06  mov   a,$0690+x
0930: f0 06     beq   $0938
0932: 9c        dec   a
0933: d5 90 06  mov   $0690+x,a
0936: 2f 06     bra   $093e
0938: 3f 8d 09  call  $098d
093b: 3f b5 0e  call  $0eb5
093e: c8 08     cmp   x,#$08
0940: 90 10     bcc   $0952
0942: f5 c1 0b  mov   a,$0bc1+x
0945: 24 40     and   a,$40
0947: f0 09     beq   $0952
0949: f5 c1 0b  mov   a,$0bc1+x
094c: 04 42     or    a,$42
094e: c4 42     mov   $42,a
0950: 2f 16     bra   $0968
0952: e4 3f     mov   a,$3f
0954: 04 3c     or    a,$3c
0956: f0 10     beq   $0968
0958: 7d        mov   a,x
0959: 08 08     or    a,#$08
095b: fd        mov   y,a
095c: f6 00 02  mov   a,$0200+y
095f: d0 07     bne   $0968
0961: f5 c1 0b  mov   a,$0bc1+x
0964: 04 42     or    a,$42
0966: c4 42     mov   $42,a
0968: ab 2b     inc   $2b
096a: 60        clrc
096b: 98 10 2c  adc   $2c,#$10
096e: 3d        inc   x
096f: c8 10     cmp   x,#$10
0971: 90 92     bcc   $0905
0973: e4 42     mov   a,$42
0975: 8d 5c     mov   y,#$5c
0977: 3f 99 10  call  $1099
097a: e4 41     mov   a,$41
097c: 8d 4c     mov   y,#$4c
097e: 3f 99 10  call  $1099
0981: 8f 00 40  mov   $40,#$00
0984: 8f 00 3f  mov   $3f,#$00
0987: 3f 26 0e  call  $0e26
098a: 5f 9c 08  jmp   $089c

098d: f5 c0 05  mov   a,$05c0+x
0990: eb 19     mov   y,$19
0992: cf        mul   ya
0993: da 00     movw  $00,ya
0995: f5 d0 05  mov   a,$05d0+x
0998: 60        clrc
0999: 84 00     adc   a,$00
099b: d5 d0 05  mov   $05d0+x,a
099e: e8 00     mov   a,#$00
09a0: 84 01     adc   a,$01
09a2: f0 09     beq   $09ad
09a4: 3f ae 09  call  $09ae
09a7: 3f bf 0c  call  $0cbf
09aa: 3f a4 0e  call  $0ea4
09ad: 6f        ret

09ae: c4 1a     mov   $1a,a
09b0: f5 30 06  mov   a,$0630+x
09b3: f0 2e     beq   $09e3
09b5: 80        setc
09b6: a4 1a     sbc   a,$1a
09b8: d5 30 06  mov   $0630+x,a
09bb: f0 26     beq   $09e3
09bd: 90 24     bcc   $09e3
09bf: f5 50 06  mov   a,$0650+x
09c2: f0 e9     beq   $09ad
09c4: 80        setc
09c5: a4 1a     sbc   a,$1a
09c7: d5 50 06  mov   $0650+x,a
09ca: d0 e1     bne   $09ad
09cc: c8 08     cmp   x,#$08
09ce: b0 06     bcs   $09d6
09d0: f5 08 02  mov   a,$0208+x
09d3: f0 01     beq   $09d6
09d5: 6f        ret

09d6: f5 60 06  mov   a,$0660+x
09d9: d0 07     bne   $09e2
09db: f5 c1 0b  mov   a,$0bc1+x
09de: 04 42     or    a,$42
09e0: c4 42     mov   $42,a
09e2: 6f        ret

09e3: c4 1a     mov   $1a,a
09e5: f5 80 02  mov   a,$0280+x
09e8: c4 2d     mov   $2d,a
09ea: f5 90 02  mov   a,$0290+x
09ed: c4 2e     mov   $2e,a
;
09ef: 3f 88 0c  call  $0c88
09f2: c4 e3     mov   $e3,a
09f4: 68 00     cmp   a,#$00
09f6: f0 1f     beq   $0a17             ; end repeat/return
09f8: 68 80     cmp   a,#$80
09fa: 90 3b     bcc   $0a37             ; note params
09fc: 68 e0     cmp   a,#$e0
09fe: 90 5f     bcc   $0a5f             ; note
0a00: 3f ce 10  call  $10ce             ; dispatch vcmd
0a03: 90 ea     bcc   $09ef
0a05: e4 2d     mov   a,$2d
0a07: d5 80 02  mov   $0280+x,a
0a0a: e4 2e     mov   a,$2e
0a0c: d5 90 02  mov   $0290+x,a
0a0f: cd 08     mov   x,#$08
0a11: d8 2b     mov   $2b,x
0a13: 8f 80 2c  mov   $2c,#$80
0a16: 6f        ret

; vcmd 00 - end repeat/return
0a17: f5 d3 00  mov   a,$00d3+x
0a1a: d0 0a     bne   $0a26
0a1c: d5 00 02  mov   $0200+x,a
0a1f: c8 08     cmp   x,#$08
0a21: b0 b8     bcs   $09db
0a23: 5f 30 15  jmp   $1530

0a26: bc        inc   a
0a27: f0 04     beq   $0a2d
0a29: 9b d3     dec   $d3+x
0a2b: f0 05     beq   $0a32
0a2d: 3f 32 13  call  $1332
0a30: 2f bd     bra   $09ef
0a32: 3f 0a 13  call  $130a
0a35: 2f b8     bra   $09ef

; vcmds 01-7f - note params
0a37: 60        clrc
0a38: 84 1a     adc   a,$1a
0a3a: d5 20 06  mov   $0620+x,a         ; set duration by opcode
0a3d: 3f 88 0c  call  $0c88
0a40: c4 e3     mov   $e3,a
0a42: 68 80     cmp   a,#$80
0a44: b0 ae     bcs   $09f4             ; process next byte if < 0x80
0a46: 2d        push  a
0a47: 28 0f     and   a,#$0f
0a49: fd        mov   y,a
0a4a: f6 0b 0c  mov   a,$0c0b+y
0a4d: d5 90 03  mov   $0390+x,a         ; set per-note vol from low nybble
0a50: ae        pop   a
0a51: 5c        lsr   a
0a52: 5c        lsr   a
0a53: 5c        lsr   a
0a54: 5c        lsr   a
0a55: fd        mov   y,a
0a56: f6 80 1d  mov   a,$1d80+y
0a59: d5 40 06  mov   $0640+x,a         ; set dur% from high nybble
0a5c: 5f ef 09  jmp   $09ef

0a5f: 68 ca     cmp   a,#$ca
0a61: 90 0f     bcc   $0a72
; vcmds ca-df - percussion note
0a63: 80        setc
0a64: a8 ca     sbc   a,#$ca
0a66: 60        clrc
0a67: 85 80 06  adc   a,$0680
0a6a: 3f 21 11  call  $1121
0a6d: e8 a4     mov   a,#$a4
0a6f: 5f 7a 0a  jmp   $0a7a

0a72: 2d        push  a
0a73: f5 70 06  mov   a,$0670+x
0a76: 3f 21 11  call  $1121
0a79: ae        pop   a
0a7a: 68 c8     cmp   a,#$c8
0a7c: d0 12     bne   $0a90             ; not a tie
; vcmd c8 - tie
0a7e: 8d 00     mov   y,#$00
0a80: f7 2d     mov   a,($2d)+y
0a82: 68 f9     cmp   a,#$f9
0a84: d0 07     bne   $0a8d
0a86: 3a 2d     incw  $2d
0a88: 3f 54 14  call  $1454
0a8b: 2f 30     bra   $0abd
0a8d: 5f 13 0b  jmp   $0b13

0a90: 68 c9     cmp   a,#$c9
0a92: d0 06     bne   $0a9a
; vcmd c9 - rest
0a94: d5 40 03  mov   $0340+x,a
0a97: 5f 5a 0b  jmp   $0b5a

; vcmds 80-c7 - note (opcode in A)
0a9a: 28 7f     and   a,#$7f
0a9c: c8 08     cmp   x,#$08
0a9e: b0 03     bcs   $0aa3
0aa0: 60        clrc
0aa1: 84 3a     adc   a,$3a
0aa3: 60        clrc
0aa4: 95 50 03  adc   a,$0350+x
0aa7: d5 40 03  mov   $0340+x,a
0aaa: f5 60 03  mov   a,$0360+x
0aad: d5 30 03  mov   $0330+x,a
0ab0: 8d 00     mov   y,#$00
0ab2: f7 2d     mov   a,($2d)+y
0ab4: 68 f9     cmp   a,#$f9
0ab6: d0 05     bne   $0abd
0ab8: 3a 2d     incw  $2d
0aba: 3f 54 14  call  $1454
0abd: f5 00 05  mov   a,$0500+x
0ac0: f0 51     beq   $0b13
0ac2: f5 50 05  mov   a,$0550+x
0ac5: d4 a3     mov   $a3+x,a
0ac7: f5 10 05  mov   a,$0510+x
0aca: d5 40 05  mov   $0540+x,a
0acd: f5 00 05  mov   a,$0500+x
0ad0: 68 03     cmp   a,#$03
0ad2: d0 20     bne   $0af4
0ad4: f5 10 05  mov   a,$0510+x
0ad7: d0 07     bne   $0ae0
0ad9: e8 00     mov   a,#$00
0adb: d5 00 05  mov   $0500+x,a
0ade: f0 33     beq   $0b13
0ae0: f5 30 05  mov   a,$0530+x
0ae3: 80        setc
0ae4: b5 40 03  sbc   a,$0340+x
0ae7: d5 30 05  mov   $0530+x,a
0aea: 3f ab 0c  call  $0cab
0aed: e8 00     mov   a,#$00
0aef: d5 10 05  mov   $0510+x,a
0af2: 2f 1f     bra   $0b13
0af4: 68 01     cmp   a,#$01
0af6: f0 15     beq   $0b0d
0af8: f5 40 03  mov   a,$0340+x
0afb: 60        clrc
0afc: 95 30 05  adc   a,$0530+x
0aff: d5 40 03  mov   $0340+x,a
0b02: e8 00     mov   a,#$00
0b04: 80        setc
0b05: b5 30 05  sbc   a,$0530+x
0b08: 3f ab 0c  call  $0cab
0b0b: 2f 06     bra   $0b13
0b0d: f5 30 05  mov   a,$0530+x
0b10: 3f ab 0c  call  $0cab
0b13: e8 00     mov   a,#$00
0b15: d5 60 06  mov   $0660+x,a
0b18: 8d 00     mov   y,#$00
0b1a: f7 2d     mov   a,($2d)+y
0b1c: f0 27     beq   $0b45
0b1e: 10 1a     bpl   $0b3a
0b20: 68 c8     cmp   a,#$c8
0b22: 90 21     bcc   $0b45
0b24: f0 18     beq   $0b3e
0b26: 68 e0     cmp   a,#$e0
0b28: 90 1b     bcc   $0b45
0b2a: 80        setc
0b2b: a8 e0     sbc   a,#$e0
0b2d: cb 00     mov   $00,y
0b2f: fd        mov   y,a
0b30: f6 eb 0b  mov   a,$0beb+y
0b33: 60        clrc
0b34: 84 00     adc   a,$00
0b36: fd        mov   y,a
0b37: 5f 1a 0b  jmp   $0b1a

0b3a: fc        inc   y
0b3b: 5f 1a 0b  jmp   $0b1a

0b3e: e8 01     mov   a,#$01
0b40: d5 60 06  mov   $0660+x,a
0b43: 2f 08     bra   $0b4d
0b45: e8 00     mov   a,#$00
0b47: d5 73 00  mov   $0073+x,a
0b4a: d5 f0 03  mov   $03f0+x,a
0b4d: f5 30 03  mov   a,$0330+x
0b50: c4 0c     mov   $0c,a
0b52: f5 40 03  mov   a,$0340+x
0b55: c4 0d     mov   $0d,a
0b57: 3f 1b 0c  call  $0c1b
0b5a: f5 20 06  mov   a,$0620+x
0b5d: d5 30 06  mov   $0630+x,a
0b60: fd        mov   y,a
0b61: f5 40 06  mov   a,$0640+x
0b64: cf        mul   ya
0b65: dd        mov   a,y
0b66: d0 01     bne   $0b69
0b68: bc        inc   a
0b69: d5 50 06  mov   $0650+x,a
0b6c: f5 40 03  mov   a,$0340+x
0b6f: 68 c9     cmp   a,#$c9
0b71: f0 43     beq   $0bb6
0b73: e4 e3     mov   a,$e3
0b75: 68 c8     cmp   a,#$c8
0b77: f0 3d     beq   $0bb6
0b79: c8 08     cmp   x,#$08
0b7b: b0 05     bcs   $0b82
0b7d: f5 08 02  mov   a,$0208+x
0b80: d0 34     bne   $0bb6
0b82: 3f cb 0f  call  $0fcb
0b85: fc        inc   y
0b86: f5 70 03  mov   a,$0370+x
0b89: 3f 99 10  call  $1099
0b8c: fc        inc   y
0b8d: f5 80 03  mov   a,$0380+x
0b90: 3f 99 10  call  $1099
0b93: fc        inc   y
0b94: f5 20 02  mov   a,$0220+x
0b97: 3f 99 10  call  $1099
0b9a: fc        inc   y
0b9b: f5 30 02  mov   a,$0230+x
0b9e: 3f 99 10  call  $1099
0ba1: fc        inc   y
0ba2: f5 40 02  mov   a,$0240+x
0ba5: 3f 99 10  call  $1099
0ba8: fc        inc   y
0ba9: f5 50 02  mov   a,$0250+x
0bac: 3f 99 10  call  $1099
0baf: f5 c1 0b  mov   a,$0bc1+x
0bb2: 04 41     or    a,$41
0bb4: c4 41     mov   $41,a
0bb6: e4 2d     mov   a,$2d
0bb8: d5 80 02  mov   $0280+x,a
0bbb: e4 2e     mov   a,$2e
0bbd: d5 90 02  mov   $0290+x,a
0bc0: 6f        ret

0bc1: db $01,$02,$04,$08,$10,$20,$40,$80
0bc9: db $01,$02,$04,$08,$10,$20,$40,$80

0bd1: dw $085f
0bd3: dw $08de
0bd5: dw $0965
0bd7: dw $09f4
0bd9: dw $0a8c
0bdb: dw $0b2c
0bdd: dw $0bd6
0bdf: dw $0c8b
0be1: dw $0d4a
0be3: dw $0e14
0be5: dw $0eea
0be7: dw $0fcd
0be9: dw $1095

; vcmd length table (includes opcode itself, unlike normal N-SPC)
0beb: db $02,$02,$03,$04,$01,$02,$03,$02 ; e0-e7
0bf3: db $03,$02,$02,$04,$01,$02,$03,$04 ; e8-ef
0bfb: db $02,$04,$04,$01,$02,$04,$01,$04 ; f0-f7
0c03: db $04,$04,$02,$01,$01,$01,$01,$01 ; f8-ff

; per-note velocity values
0c0b: db $10,$20,$30,$40,$50,$60,$70,$80
0c13: db $90,$a0,$b0,$c0,$d0,$e0,$f0,$ff

0c1b: 4d        push  x
0c1c: e4 0d     mov   a,$0d
0c1e: 1c        asl   a
0c1f: 8d 00     mov   y,#$00
0c21: cd 18     mov   x,#$18
0c23: 9e        div   ya,x
0c24: 5d        mov   x,a
0c25: f6 d1 0b  mov   a,$0bd1+y
0c28: c4 00     mov   $00,a
0c2a: f6 d2 0b  mov   a,$0bd2+y
0c2d: c4 01     mov   $01,a
0c2f: f6 d4 0b  mov   a,$0bd4+y
0c32: 2d        push  a
0c33: f6 d3 0b  mov   a,$0bd3+y
0c36: ee        pop   y
0c37: 9a 00     subw  ya,$00
0c39: da 04     movw  $04,ya
0c3b: eb 0c     mov   y,$0c
0c3d: cf        mul   ya
0c3e: da 06     movw  $06,ya
0c40: e4 05     mov   a,$05
0c42: eb 0c     mov   y,$0c
0c44: cf        mul   ya
0c45: da 04     movw  $04,ya
0c47: e4 07     mov   a,$07
0c49: 8d 00     mov   y,#$00
0c4b: 7a 04     addw  ya,$04
0c4d: 7a 00     addw  ya,$00
0c4f: da 00     movw  $00,ya
0c51: c8 05     cmp   x,#$05
0c53: b0 07     bcs   $0c5c
0c55: 4b 01     lsr   $01
0c57: 6b 00     ror   $00
0c59: 3d        inc   x
0c5a: 2f f5     bra   $0c51
0c5c: ce        pop   x
0c5d: f5 60 02  mov   a,$0260+x
0c60: eb 01     mov   y,$01
0c62: cf        mul   ya
0c63: da 02     movw  $02,ya
0c65: f5 70 02  mov   a,$0270+x
0c68: eb 00     mov   y,$00
0c6a: cf        mul   ya
0c6b: 7a 02     addw  ya,$02
0c6d: da 02     movw  $02,ya
0c6f: f5 60 02  mov   a,$0260+x
0c72: eb 00     mov   y,$00
0c74: cf        mul   ya
0c75: 6d        push  y
0c76: f5 70 02  mov   a,$0270+x
0c79: eb 01     mov   y,$01
0c7b: cf        mul   ya
0c7c: fd        mov   y,a
0c7d: ae        pop   a
0c7e: 7a 02     addw  ya,$02
0c80: d5 70 03  mov   $0370+x,a
0c83: dd        mov   a,y
0c84: d5 80 03  mov   $0380+x,a
0c87: 6f        ret

; read new argument to A, advance ptr
0c88: 8d 00     mov   y,#$00
0c8a: f7 2d     mov   a,($2d)+y
0c8c: 3a 2d     incw  $2d
0c8e: 6f        ret

0c8f: 8d 00     mov   y,#$00
0c91: e4 0d     mov   a,$0d
0c93: 80        setc
0c94: a8 34     sbc   a,#$34
0c96: b0 09     bcs   $0ca1
0c98: e4 0d     mov   a,$0d
0c9a: 80        setc
0c9b: a8 13     sbc   a,#$13
0c9d: b0 06     bcs   $0ca5
0c9f: dc        dec   y
0ca0: 1c        asl   a
0ca1: 7a 0c     addw  ya,$0c
0ca3: da 0c     movw  $0c,ya
0ca5: 6f        ret

; read new argument to A
0ca6: 8d 00     mov   y,#$00
0ca8: f7 2d     mov   a,($2d)+y
0caa: 6f        ret

0cab: 68 80     cmp   a,#$80
0cad: ed        notc
0cae: 2d        push  a
0caf: f5 10 05  mov   a,$0510+x
0cb2: 5d        mov   x,a
0cb3: ae        pop   a
0cb4: 3f a7 10  call  $10a7
0cb7: d5 e0 04  mov   $04e0+x,a
0cba: dd        mov   a,y
0cbb: d5 f0 04  mov   $04f0+x,a
0cbe: 6f        ret

0cbf: f4 c3     mov   a,$c3+x
0cc1: f0 1d     beq   $0ce0
0cc3: f5 00 06  mov   a,$0600+x
0cc6: 60        clrc
0cc7: 95 b0 05  adc   a,$05b0+x
0cca: d5 b0 05  mov   $05b0+x,a
0ccd: f5 10 06  mov   a,$0610+x
0cd0: 95 c0 05  adc   a,$05c0+x
0cd3: d5 c0 05  mov   $05c0+x,a
0cd6: 9b c3     dec   $c3+x
0cd8: d0 06     bne   $0ce0
0cda: f5 f0 05  mov   a,$05f0+x
0cdd: d5 c0 05  mov   $05c0+x,a
0ce0: f2 14     clr7  $14
0ce2: f4 63     mov   a,$63+x
0ce4: f0 1f     beq   $0d05
0ce6: e2 14     set7  $14
0ce8: f5 a0 03  mov   a,$03a0+x
0ceb: 60        clrc
0cec: 95 d0 03  adc   a,$03d0+x
0cef: d5 a0 03  mov   $03a0+x,a
0cf2: f5 b0 03  mov   a,$03b0+x
0cf5: 95 e0 03  adc   a,$03e0+x
0cf8: d5 b0 03  mov   $03b0+x,a
0cfb: 9b 63     dec   $63+x
0cfd: d0 06     bne   $0d05
0cff: f5 c0 03  mov   a,$03c0+x
0d02: d5 b0 03  mov   $03b0+x,a
0d05: f5 a0 04  mov   a,$04a0+x
0d08: f0 1f     beq   $0d29
0d0a: f5 90 04  mov   a,$0490+x
0d0d: de 93 17  cbne  $93+x,$0d27
0d10: e2 14     set7  $14
0d12: f5 d0 04  mov   a,$04d0+x
0d15: 10 07     bpl   $0d1e
0d17: fc        inc   y
0d18: d0 04     bne   $0d1e
0d1a: e8 80     mov   a,#$80
0d1c: 2f 04     bra   $0d22
0d1e: 60        clrc
0d1f: 95 a0 04  adc   a,$04a0+x
0d22: d5 d0 04  mov   $04d0+x,a
0d25: 2f 07     bra   $0d2e
0d27: bb 93     inc   $93+x
0d29: e8 ff     mov   a,#$ff
0d2b: 3f bb 0f  call  $0fbb
0d2e: f4 b3     mov   a,$b3+x
0d30: f0 26     beq   $0d58
0d32: e2 14     set7  $14
0d34: 9b b3     dec   $b3+x
0d36: d0 0d     bne   $0d45
0d38: f5 80 05  mov   a,$0580+x
0d3b: d5 70 05  mov   $0570+x,a
0d3e: e8 00     mov   a,#$00
0d40: d5 60 05  mov   $0560+x,a
0d43: 2f 13     bra   $0d58
0d45: f5 60 05  mov   a,$0560+x
0d48: 60        clrc
0d49: 95 90 05  adc   a,$0590+x
0d4c: d5 60 05  mov   $0560+x,a
0d4f: f5 70 05  mov   a,$0570+x
0d52: 95 a0 05  adc   a,$05a0+x
0d55: d5 70 05  mov   $0570+x,a
0d58: f3 14 0c  bbc7  $14,$0d67
0d5b: c8 08     cmp   x,#$08
0d5d: b0 05     bcs   $0d64
0d5f: f5 08 02  mov   a,$0208+x
0d62: d0 03     bne   $0d67
0d64: 3f cb 0f  call  $0fcb
0d67: f2 14     clr7  $14
0d69: f5 00 05  mov   a,$0500+x
0d6c: f0 29     beq   $0d97
0d6e: f4 a3     mov   a,$a3+x
0d70: f0 04     beq   $0d76
0d72: 9b a3     dec   $a3+x
0d74: 2f 21     bra   $0d97
0d76: e2 14     set7  $14
0d78: f5 40 05  mov   a,$0540+x
0d7b: f0 1a     beq   $0d97
0d7d: f5 40 05  mov   a,$0540+x
0d80: 9c        dec   a
0d81: d5 40 05  mov   $0540+x,a
0d84: f5 30 03  mov   a,$0330+x
0d87: 60        clrc
0d88: 95 e0 04  adc   a,$04e0+x
0d8b: d5 30 03  mov   $0330+x,a
0d8e: f5 40 03  mov   a,$0340+x
0d91: 95 f0 04  adc   a,$04f0+x
0d94: d5 40 03  mov   $0340+x,a
0d97: f5 10 04  mov   a,$0410+x
0d9a: f0 5b     beq   $0df7
0d9c: f5 73 00  mov   a,$0073+x
0d9f: 75 00 04  cmp   a,$0400+x
0da2: d0 50     bne   $0df4
0da4: f5 40 03  mov   a,$0340+x
0da7: fd        mov   y,a
0da8: f5 30 03  mov   a,$0330+x
0dab: da 0c     movw  $0c,ya
0dad: f4 53     mov   a,$53+x
0daf: 74 83     cmp   a,$83+x
0db1: d0 08     bne   $0dbb
0db3: f5 40 04  mov   a,$0440+x
0db6: d5 30 04  mov   $0430+x,a
0db9: 2f 15     bra   $0dd0
0dbb: bb 53     inc   $53+x
0dbd: f5 20 04  mov   a,$0420+x
0dc0: 60        clrc
0dc1: 95 50 04  adc   a,$0450+x
0dc4: d5 20 04  mov   $0420+x,a
0dc7: f5 30 04  mov   a,$0430+x
0dca: 95 60 04  adc   a,$0460+x
0dcd: d5 30 04  mov   $0430+x,a
0dd0: f5 f0 03  mov   a,$03f0+x
0dd3: 60        clrc
0dd4: 95 10 04  adc   a,$0410+x
0dd7: d5 f0 03  mov   $03f0+x,a
0dda: c4 15     mov   $15,a
0ddc: 1c        asl   a
0ddd: 1c        asl   a
0dde: 90 02     bcc   $0de2
0de0: 48 ff     eor   a,#$ff
0de2: fd        mov   y,a
0de3: f5 30 04  mov   a,$0430+x
0de6: cf        mul   ya
0de7: dd        mov   a,y
0de8: 8d 00     mov   y,#$00
0dea: 3f c3 10  call  $10c3
0ded: 7a 0c     addw  ya,$0c
0def: da 0c     movw  $0c,ya
0df1: 5f 04 0e  jmp   $0e04

0df4: bc        inc   a
0df5: d4 73     mov   $73+x,a
0df7: f3 14 2b  bbc7  $14,$0e25
0dfa: f5 30 03  mov   a,$0330+x
0dfd: c4 0c     mov   $0c,a
0dff: f5 40 03  mov   a,$0340+x
0e02: c4 0d     mov   $0d,a
0e04: 3f 1b 0c  call  $0c1b
0e07: c8 08     cmp   x,#$08
0e09: b0 05     bcs   $0e10
0e0b: f5 08 02  mov   a,$0208+x
0e0e: d0 15     bne   $0e25
0e10: e4 2c     mov   a,$2c
0e12: 28 7f     and   a,#$7f
0e14: 60        clrc
0e15: 88 02     adc   a,#$02
0e17: fd        mov   y,a
0e18: f5 70 03  mov   a,$0370+x
0e1b: 3f 99 10  call  $1099
0e1e: fc        inc   y
0e1f: f5 80 03  mov   a,$0380+x
0e22: 3f 99 10  call  $1099
0e25: 6f        ret

0e26: e8 20     mov   a,#$20
0e28: eb 19     mov   y,$19
0e2a: cf        mul   ya
0e2b: da 00     movw  $00,ya
0e2d: e4 35     mov   a,$35
0e2f: 60        clrc
0e30: 84 00     adc   a,$00
0e32: c4 35     mov   $35,a
0e34: e8 00     mov   a,#$00
0e36: 84 01     adc   a,$01
0e38: f0 06     beq   $0e40
0e3a: 3f 41 0e  call  $0e41
0e3d: 3f 78 0e  call  $0e78
0e40: 6f        ret

0e41: e4 23     mov   a,$23
0e43: f0 1e     beq   $0e63
0e45: e4 1c     mov   a,$1c
0e47: d0 1a     bne   $0e63
0e49: 8f 01 1c  mov   $1c,#$01
0e4c: ba 27     movw  ya,$27
0e4e: 7a 1d     addw  ya,$1d
0e50: da 1d     movw  $1d,ya
0e52: ba 29     movw  ya,$29
0e54: 7a 1f     addw  ya,$1f
0e56: da 1f     movw  $1f,ya
0e58: 6e 23 08  dbnz  $23,$0e63
0e5b: e4 21     mov   a,$21
0e5d: c4 1e     mov   $1e,a
0e5f: e4 22     mov   a,$22
0e61: c4 20     mov   $20,a
0e63: e4 31     mov   a,$31
0e65: f0 10     beq   $0e77
0e67: ba 33     movw  ya,$33
0e69: 7a 2f     addw  ya,$2f
0e6b: da 2f     movw  $2f,ya
0e6d: 6e 31 04  dbnz  $31,$0e74
0e70: e4 32     mov   a,$32
0e72: c4 30     mov   $30,a
0e74: 5f 8e 0e  jmp   $0e8e

0e77: 6f        ret

0e78: e4 38     mov   a,$38
0e7a: f0 12     beq   $0e8e
0e7c: 68 01     cmp   a,#$01
0e7e: d0 0f     bne   $0e8f
0e80: ab 37     inc   $37
0e82: e4 37     mov   a,$37
0e84: 68 fc     cmp   a,#$fc
0e86: 90 06     bcc   $0e8e
0e88: 8f ff 37  mov   $37,#$ff
0e8b: 8f 00 38  mov   $38,#$00
0e8e: 6f        ret

0e8f: 8b 37     dec   $37
0e91: d0 fb     bne   $0e8e
0e93: 68 02     cmp   a,#$02
0e95: d0 08     bne   $0e9f
0e97: 8f 00 38  mov   $38,#$00
0e9a: 3f b5 17  call  $17b5
0e9d: 2f ef     bra   $0e8e
0e9f: 8f 00 38  mov   $38,#$00
0ea2: 2f ea     bra   $0e8e
0ea4: c8 08     cmp   x,#$08
0ea6: b0 0c     bcs   $0eb4
0ea8: f5 08 02  mov   a,$0208+x
0eab: d0 07     bne   $0eb4
0ead: e4 38     mov   a,$38
0eaf: f0 03     beq   $0eb4
0eb1: 3f cb 0f  call  $0fcb
0eb4: 6f        ret

0eb5: f2 14     clr7  $14
0eb7: f5 a0 04  mov   a,$04a0+x
0eba: f0 0a     beq   $0ec6
0ebc: f5 90 04  mov   a,$0490+x
0ebf: 74 93     cmp   a,$93+x
0ec1: d0 03     bne   $0ec6
0ec3: 3f 9f 0f  call  $0f9f
0ec6: f5 70 05  mov   a,$0570+x
0ec9: fd        mov   y,a
0eca: f5 60 05  mov   a,$0560+x
0ecd: da 0c     movw  $0c,ya
0ecf: f4 b3     mov   a,$b3+x
0ed1: f0 0a     beq   $0edd
0ed3: f5 a0 05  mov   a,$05a0+x
0ed6: fd        mov   y,a
0ed7: f5 90 05  mov   a,$0590+x
0eda: 3f 4b 0f  call  $0f4b
0edd: f3 14 25  bbc7  $14,$0f05
0ee0: c8 08     cmp   x,#$08
0ee2: b0 05     bcs   $0ee9
0ee4: f5 08 02  mov   a,$0208+x
0ee7: d0 1c     bne   $0f05
0ee9: f5 70 05  mov   a,$0570+x
0eec: 2d        push  a
0eed: f5 60 05  mov   a,$0560+x
0ef0: 2d        push  a
0ef1: ba 0c     movw  ya,$0c
0ef3: d5 60 05  mov   $0560+x,a
0ef6: dd        mov   a,y
0ef7: d5 70 05  mov   $0570+x,a
0efa: 3f cb 0f  call  $0fcb
0efd: ae        pop   a
0efe: d5 60 05  mov   $0560+x,a
0f01: ae        pop   a
0f02: d5 70 05  mov   $0570+x,a
0f05: f2 14     clr7  $14
0f07: f5 40 03  mov   a,$0340+x
0f0a: fd        mov   y,a
0f0b: f5 30 03  mov   a,$0330+x
0f0e: da 0c     movw  $0c,ya
0f10: f5 00 05  mov   a,$0500+x
0f13: f0 13     beq   $0f28
0f15: f4 a3     mov   a,$a3+x
0f17: d0 0f     bne   $0f28
0f19: f5 40 05  mov   a,$0540+x
0f1c: f0 0a     beq   $0f28
0f1e: f5 f0 04  mov   a,$04f0+x
0f21: fd        mov   y,a
0f22: f5 e0 04  mov   a,$04e0+x
0f25: 3f 6d 0f  call  $0f6d
0f28: f5 10 04  mov   a,$0410+x
0f2b: f0 17     beq   $0f44
0f2d: f5 00 04  mov   a,$0400+x
0f30: 74 73     cmp   a,$73+x
0f32: d0 10     bne   $0f44
0f34: f5 d0 05  mov   a,$05d0+x
0f37: fd        mov   y,a
0f38: f5 10 04  mov   a,$0410+x
0f3b: cf        mul   ya
0f3c: dd        mov   a,y
0f3d: 60        clrc
0f3e: 95 f0 03  adc   a,$03f0+x
0f41: 5f da 0d  jmp   $0dda

0f44: f3 14 03  bbc7  $14,$0f4a
0f47: 5f 04 0e  jmp   $0e04

0f4a: 6f        ret

0f4b: e2 14     set7  $14
0f4d: cb 15     mov   $15,y
0f4f: 3f c3 10  call  $10c3
0f52: 6d        push  y
0f53: fd        mov   y,a
0f54: f5 d0 05  mov   a,$05d0+x
0f57: cf        mul   ya
0f58: cb 00     mov   $00,y
0f5a: 8f 00 01  mov   $01,#$00
0f5d: f5 d0 05  mov   a,$05d0+x
0f60: fd        mov   y,a
0f61: ae        pop   a
0f62: cf        mul   ya
0f63: 7a 00     addw  ya,$00
0f65: 3f c3 10  call  $10c3
0f68: 7a 0c     addw  ya,$0c
0f6a: da 0c     movw  $0c,ya
0f6c: 6f        ret

0f6d: e2 14     set7  $14
0f6f: cb 15     mov   $15,y
0f71: 3f c3 10  call  $10c3
0f74: 6d        push  y
0f75: fd        mov   y,a
0f76: f5 d0 05  mov   a,$05d0+x
0f79: cf        mul   ya
0f7a: cb 00     mov   $00,y
0f7c: 8f 00 01  mov   $01,#$00
0f7f: f5 d0 05  mov   a,$05d0+x
0f82: ee        pop   y
0f83: cf        mul   ya
0f84: 7a 00     addw  ya,$00
0f86: 3f c3 10  call  $10c3
0f89: 2d        push  a
0f8a: f5 30 05  mov   a,$0530+x
0f8d: 30 06     bmi   $0f95
0f8f: ae        pop   a
0f90: 7a 0c     addw  ya,$0c
0f92: da 0c     movw  $0c,ya
0f94: 6f        ret

0f95: ae        pop   a
0f96: da 0a     movw  $0a,ya
0f98: ba 0c     movw  ya,$0c
0f9a: 9a 0a     subw  ya,$0a
0f9c: da 0c     movw  $0c,ya
0f9e: 6f        ret

0f9f: e2 14     set7  $14
0fa1: f5 d0 05  mov   a,$05d0+x
0fa4: fd        mov   y,a
0fa5: f5 a0 04  mov   a,$04a0+x
0fa8: cf        mul   ya
0fa9: dd        mov   a,y
0faa: 60        clrc
0fab: 95 d0 04  adc   a,$04d0+x
0fae: 1c        asl   a
0faf: 90 02     bcc   $0fb3
0fb1: 48 ff     eor   a,#$ff
0fb3: fd        mov   y,a
0fb4: f5 b0 04  mov   a,$04b0+x
0fb7: cf        mul   ya
0fb8: dd        mov   a,y
0fb9: 48 ff     eor   a,#$ff
0fbb: d5 80 04  mov   $0480+x,a
0fbe: 6f        ret

0fbf: e8 7f     mov   a,#$7f
0fc1: 8d 0c     mov   y,#$0c
0fc3: 3f 99 10  call  $1099
0fc6: 8d 1c     mov   y,#$1c
0fc8: 5f 99 10  jmp   $1099

0fcb: f5 b0 03  mov   a,$03b0+x         ; channel volume
0fce: fd        mov   y,a
0fcf: c8 08     cmp   x,#$08
0fd1: b0 0c     bcs   $0fdf
0fd3: e4 30     mov   a,$30             ; master volume
0fd5: cf        mul   ya
0fd6: e4 37     mov   a,$37             ; another master volume
0fd8: 68 ff     cmp   a,#$ff
0fda: f0 0a     beq   $0fe6
0fdc: cf        mul   ya
0fdd: 2f 07     bra   $0fe6
0fdf: e8 ff     mov   a,#$ff
0fe1: 68 ff     cmp   a,#$ff
0fe3: f0 01     beq   $0fe6
0fe5: cf        mul   ya
0fe6: f5 90 03  mov   a,$0390+x         ; per-note volume (velocity)
0fe9: 68 ff     cmp   a,#$ff
0feb: f0 01     beq   $0fee
0fed: cf        mul   ya
0fee: f5 80 04  mov   a,$0480+x         ; tremolo level
0ff1: 68 ff     cmp   a,#$ff
0ff3: f0 01     beq   $0ff6
0ff5: cf        mul   ya
0ff6: dd        mov   a,y
0ff7: 5c        lsr   a                 ; make it 7 bit
0ff8: 8d 80     mov   y,#$80
0ffa: cf        mul   ya                ; halve it
0ffb: cb 00     mov   $00,y             ; base volume is determined
0ffd: cb 02     mov   $02,y
0fff: cb 03     mov   $03,y
1001: e4 3b     mov   a,$3b
1003: d0 28     bne   $102d
1005: e8 0a     mov   a,#$0a
1007: 80        setc
1008: b5 70 05  sbc   a,$0570+x
100b: b0 02     bcs   $100f             ; decrease left volume if pan <= 0x0a
100d: e8 00     mov   a,#$00
100f: 8d 19     mov   y,#$19
1011: cf        mul   ya
1012: 48 ff     eor   a,#$ff
1014: eb 00     mov   y,$00
1016: cf        mul   ya                ; vol = vol * (255 - 25 * max(10 - pan, 0)) / 256
1017: cb 02     mov   $02,y             ; VOL(L)
1019: f5 70 05  mov   a,$0570+x
101c: 80        setc
101d: a8 0a     sbc   a,#$0a
101f: b0 02     bcs   $1023             ; decrease right volume if pan >= 0x0a
1021: e8 00     mov   a,#$00
1023: 8d 19     mov   y,#$19
1025: cf        mul   ya
1026: 48 ff     eor   a,#$ff
1028: eb 00     mov   y,$00
102a: cf        mul   ya                ; vol = vol * (255 - 25 * max(pan - 10, 0)) / 256
102b: cb 03     mov   $03,y             ; VOL(R)
102d: c8 08     cmp   x,#$08
102f: b0 06     bcs   $1037
1031: f5 08 02  mov   a,$0208+x
1034: f0 01     beq   $1037
1036: 6f        ret

1037: e4 2c     mov   a,$2c
1039: 28 7f     and   a,#$7f
103b: 60        clrc
103c: 88 00     adc   a,#$00
103e: fd        mov   y,a
103f: e4 02     mov   a,$02
1041: 3f 99 10  call  $1099
1044: fc        inc   y
1045: e4 03     mov   a,$03
1047: 5f 99 10  jmp   $1099

104a: c4 00     mov   $00,a
104c: 8d 7d     mov   y,#$7d
104e: cc f2 00  mov   $00f2,y
1051: e5 f3 00  mov   a,$00f3
1054: 28 0f     and   a,#$0f
1056: 64 00     cmp   a,$00
1058: f0 2c     beq   $1086
105a: 1c        asl   a
105b: 1c        asl   a
105c: 1c        asl   a
105d: 80        setc
105e: 84 1b     adc   a,$1b
1060: c4 1b     mov   $1b,a
1062: e8 00     mov   a,#$00
1064: c4 1c     mov   $1c,a
1066: 8d 04     mov   y,#$04
1068: cd 00     mov   x,#$00
106a: f6 94 10  mov   a,$1094+y
106d: c5 f2 00  mov   $00f2,a
1070: c9 f3 00  mov   $00f3,x
1073: fe f5     dbnz  y,$106a
1075: 8d 6c     mov   y,#$6c
1077: 3f a0 10  call  $10a0
107a: 08 20     or    a,#$20
107c: 3f 99 10  call  $1099
107f: 8d 7d     mov   y,#$7d
1081: e4 00     mov   a,$00
1083: 3f 99 10  call  $1099
1086: 1c        asl   a
1087: 1c        asl   a
1088: 1c        asl   a
1089: d0 01     bne   $108c
108b: bc        inc   a
108c: 48 ff     eor   a,#$ff
108e: 80        setc
108f: 88 ff     adc   a,#$ff
1091: 8d 6d     mov   y,#$6d
1093: 2f 04     bra   $1099
1095: 2c 3c 0d  rol   $0d3c
1098: 4d        push  x
1099: cc f2 00  mov   $00f2,y
109c: c5 f3 00  mov   $00f3,a
109f: 6f        ret

10a0: cc f2 00  mov   $00f2,y
10a3: e5 f3 00  mov   a,$00f3
10a6: 6f        ret

10a7: 6b 00     ror   $00
10a9: 30 03     bmi   $10ae
10ab: 48 ff     eor   a,#$ff
10ad: bc        inc   a
10ae: 8d 00     mov   y,#$00
10b0: 9e        div   ya,x
10b1: 2d        push  a
10b2: e8 00     mov   a,#$00
10b4: 9e        div   ya,x
10b5: ee        pop   y
10b6: e3 00 07  bbs7  $00,$10c0
10b9: da 00     movw  $00,ya
10bb: e8 00     mov   a,#$00
10bd: fd        mov   y,a
10be: 9a 00     subw  ya,$00
10c0: f8 2b     mov   x,$2b
10c2: 6f        ret

10c3: f3 15 07  bbc7  $15,$10cd
10c6: da 00     movw  $00,ya
10c8: e8 00     mov   a,#$00
10ca: fd        mov   y,a
10cb: 9a 00     subw  ya,$00
10cd: 6f        ret

; dispatch vcmd in A (e0-ff)
10ce: 28 1f     and   a,#$1f
10d0: 1c        asl   a
10d1: fd        mov   y,a
10d2: f6 dc 10  mov   a,$10dc+y
10d5: 2d        push  a
10d6: f6 db 10  mov   a,$10db+y
10d9: 2d        push  a
10da: 6f        ret

; vcmd dispatch table
10db: dw $111b  ; e0 - set instrument
10dd: dw $115d  ; e1 - pan
10df: dw $1165  ; e2 - pan fade
10e1: dw $1182  ; e3 - vibrato on
10e3: dw $119f  ; e4 - vibrato off
10e5: dw $11a9  ; e5 - master volume
10e7: dw $11b3  ; e6 - master volume fade
10e9: dw $11ce  ; e7 - tempo
10eb: dw $11fc  ; e8 - tempo fade
10ed: dw $1260  ; e9 - global transpose
10ef: dw $1267  ; ea - per-voice transpose
10f1: dw $126f  ; eb - tremolo on
10f3: dw $1283  ; ec - tremolo off
10f5: dw $128f  ; ed - volume
10f7: dw $1297  ; ee - volume fade
10f9: dw $12b4  ; ef - call subroutine
10fb: dw $135f  ; f0 - vibrato fade
10fd: dw $1380  ; f1 - pitch envelope (release)
10ff: dw $1399  ; f2 - pitch envelope (attack)
1101: dw $13b2  ; f3 - pitch envelope off
1103: dw $13b9  ; f4 - tuning
1105: dw $13c1  ; f5 - echo vbits/volume
1107: dw $13d2  ; f6 - disable echo
1109: dw $13e3  ; f7 - set echo params
110b: dw $142d  ; f8 - echo volume fade
110d: dw $1454  ; f9 - pitch slide
110f: dw $1470  ; fa - set perc base
1111: dw $147d  ; fb - write APU port 3
1113: dw $1484  ; fc - nop
1115: dw $1484  ; fd - nop
1117: dw $1484  ; fe - nop
1119: dw $1484  ; ff - nop

; vcmd e0 - set instrument
111b: 3f 88 0c  call  $0c88
111e: d5 70 06  mov   $0670+x,a
1121: c8 08     cmp   x,#$08
1123: b0 07     bcs   $112c
1125: 2d        push  a
1126: f5 08 02  mov   a,$0208+x
1129: d0 2f     bne   $115a
112b: ae        pop   a
112c: 8d 06     mov   y,#$06
112e: cf        mul   ya
112f: 7a 46     addw  ya,$46
1131: da 00     movw  $00,ya
1133: 8d 00     mov   y,#$00
1135: f7 00     mov   a,($00)+y
1137: d5 20 02  mov   $0220+x,a
113a: fc        inc   y
113b: f7 00     mov   a,($00)+y
113d: d5 30 02  mov   $0230+x,a
1140: fc        inc   y
1141: f7 00     mov   a,($00)+y
1143: d5 40 02  mov   $0240+x,a
1146: fc        inc   y
1147: f7 00     mov   a,($00)+y
1149: d5 50 02  mov   $0250+x,a
114c: fc        inc   y
114d: f7 00     mov   a,($00)+y
114f: d5 70 02  mov   $0270+x,a
1152: fc        inc   y
1153: f7 00     mov   a,($00)+y
1155: d5 60 02  mov   $0260+x,a
1158: 60        clrc
1159: 6f        ret

115a: ae        pop   a
115b: 60        clrc
115c: 6f        ret

; vcmd e1 - pan
; (note: reverse-phase function seems to be removed)
115d: 3f 88 0c  call  $0c88
1160: d5 70 05  mov   $0570+x,a
1163: 60        clrc
1164: 6f        ret

; vcmd e2 - pan fade
1165: 3f 88 0c  call  $0c88
1168: d4 b3     mov   $b3+x,a
116a: 2d        push  a
116b: 3f 88 0c  call  $0c88
116e: d5 80 05  mov   $0580+x,a
1171: 80        setc
1172: b5 70 05  sbc   a,$0570+x
1175: ce        pop   x
1176: 3f a7 10  call  $10a7
1179: d5 90 05  mov   $0590+x,a
117c: dd        mov   a,y
117d: d5 a0 05  mov   $05a0+x,a
1180: 60        clrc
1181: 6f        ret

; vcmd e3 - vibrato on
1182: 3f 88 0c  call  $0c88
1185: d5 00 04  mov   $0400+x,a
1188: 3f 88 0c  call  $0c88
118b: d5 10 04  mov   $0410+x,a
118e: 3f 88 0c  call  $0c88
1191: d5 30 04  mov   $0430+x,a
1194: d5 40 04  mov   $0440+x,a
1197: e8 00     mov   a,#$00
1199: d4 83     mov   $83+x,a
119b: d4 53     mov   $53+x,a
119d: 60        clrc
119e: 6f        ret

; vcmd e4 - vibrato off
119f: e8 00     mov   a,#$00
11a1: d5 f0 03  mov   $03f0+x,a
11a4: d5 10 04  mov   $0410+x,a
11a7: 60        clrc
11a8: 6f        ret

; vcmd e5 - master volume
11a9: 3f 88 0c  call  $0c88
11ac: c4 30     mov   $30,a
11ae: 3f bf 0f  call  $0fbf
11b1: 60        clrc
11b2: 6f        ret

; vcmd e6 - master volume fade
11b3: 3f 88 0c  call  $0c88
11b6: c4 31     mov   $31,a
11b8: 3f 88 0c  call  $0c88
11bb: c4 32     mov   $32,a
11bd: 80        setc
11be: a4 30     sbc   a,$30
11c0: f8 31     mov   x,$31
11c2: 3f a7 10  call  $10a7
11c5: c5 33 00  mov   $0033,a
11c8: dd        mov   a,y
11c9: c5 34 00  mov   $0034,a
11cc: 60        clrc
11cd: 6f        ret

; vcmd e7 - tempo
11ce: 3f 88 0c  call  $0c88
11d1: c8 08     cmp   x,#$08
11d3: 90 08     bcc   $11dd
11d5: d5 c0 05  mov   $05c0+x,a
11d8: d5 e0 05  mov   $05e0+x,a
11db: 60        clrc
11dc: 6f        ret

11dd: c4 00     mov   $00,a
11df: 4d        push  x
11e0: cd 07     mov   x,#$07
11e2: e4 00     mov   a,$00
11e4: d5 c0 05  mov   $05c0+x,a
11e7: d5 e0 05  mov   $05e0+x,a
11ea: e8 00     mov   a,#$00
11ec: d5 d0 05  mov   $05d0+x,a
11ef: 1d        dec   x
11f0: 10 f0     bpl   $11e2
11f2: e4 3d     mov   a,$3d
11f4: f0 03     beq   $11f9
11f6: 3f d5 17  call  $17d5
11f9: ce        pop   x
11fa: 80        setc
11fb: 6f        ret

; vcmd e8 - tempo fade
11fc: c8 08     cmp   x,#$08
11fe: 90 1d     bcc   $121d
1200: 3f 88 0c  call  $0c88
1203: d4 c3     mov   $c3+x,a
1205: 2d        push  a
1206: 3f 88 0c  call  $0c88
1209: d5 f0 05  mov   $05f0+x,a
120c: 80        setc
120d: b5 c0 05  sbc   a,$05c0+x
1210: ce        pop   x
1211: 3f a7 10  call  $10a7
1214: c5 00 06  mov   $0600,a
1217: dd        mov   a,y
1218: c5 11 06  mov   $0611,a
121b: 60        clrc
121c: 6f        ret

121d: 3f 88 0c  call  $0c88
1220: c4 04     mov   $04,a
1222: 3f 88 0c  call  $0c88
1225: c4 06     mov   $06,a
1227: f5 c0 05  mov   a,$05c0+x
122a: c4 08     mov   $08,a
122c: e4 3d     mov   a,$3d
122e: f0 03     beq   $1233
1230: 3f fb 17  call  $17fb
1233: e4 06     mov   a,$06
1235: 80        setc
1236: a4 08     sbc   a,$08
1238: f8 04     mov   x,$04
123a: 3f a7 10  call  $10a7
123d: c5 08 00  mov   $0008,a
1240: dd        mov   a,y
1241: c5 0a 00  mov   $000a,a
1244: 4d        push  x
1245: cd 07     mov   x,#$07
1247: e4 04     mov   a,$04
1249: d4 c3     mov   $c3+x,a
124b: e4 06     mov   a,$06
124d: d5 f0 05  mov   $05f0+x,a
1250: e4 08     mov   a,$08
1252: d5 00 06  mov   $0600+x,a
1255: e4 0a     mov   a,$0a
1257: d5 10 06  mov   $0610+x,a
125a: 1d        dec   x
125b: 10 ea     bpl   $1247
125d: ce        pop   x
125e: 60        clrc
125f: 6f        ret

; vcmd e9 - global transpose
1260: 3f 88 0c  call  $0c88
1263: c4 3a     mov   $3a,a
1265: 60        clrc
1266: 6f        ret

; vcmd ea - per-voice transpose
1267: 3f 88 0c  call  $0c88
126a: d5 50 03  mov   $0350+x,a
126d: 60        clrc
126e: 6f        ret

; vcmd eb - tremolo on
126f: 3f 88 0c  call  $0c88
1272: d5 90 04  mov   $0490+x,a
1275: 3f 88 0c  call  $0c88
1278: d5 a0 04  mov   $04a0+x,a
127b: 3f 88 0c  call  $0c88
127e: d5 b0 04  mov   $04b0+x,a
1281: 60        clrc
1282: 6f        ret

; vcmd ec - tremolo off
1283: e8 ff     mov   a,#$ff
1285: d5 80 04  mov   $0480+x,a
1288: e8 00     mov   a,#$00
128a: d5 a0 04  mov   $04a0+x,a
128d: 60        clrc
128e: 6f        ret

; vcmd ed - volume
128f: 3f 88 0c  call  $0c88
1292: d5 b0 03  mov   $03b0+x,a
1295: 60        clrc
1296: 6f        ret

; vcmd ee - volume fade
1297: 3f 88 0c  call  $0c88
129a: d4 63     mov   $63+x,a
129c: 2d        push  a
129d: 3f 88 0c  call  $0c88
12a0: d5 c0 03  mov   $03c0+x,a
12a3: 80        setc
12a4: b5 b0 03  sbc   a,$03b0+x
12a7: ce        pop   x
12a8: 3f a7 10  call  $10a7
12ab: d5 d0 03  mov   $03d0+x,a
12ae: dd        mov   a,y
12af: d5 e0 03  mov   $03e0+x,a
12b2: 60        clrc
12b3: 6f        ret

; vcmd ef - call subroutine
12b4: 3f 88 0c  call  $0c88
12b7: c4 00     mov   $00,a
12b9: 3f 88 0c  call  $0c88
12bc: c4 01     mov   $01,a
12be: 3f 88 0c  call  $0c88
12c1: c4 02     mov   $02,a
12c3: f4 d3     mov   a,$d3+x
12c5: d0 20     bne   $12e7
12c7: e4 02     mov   a,$02
12c9: d4 d3     mov   $d3+x,a
12cb: e4 00     mov   a,$00
12cd: d5 c0 02  mov   $02c0+x,a
12d0: d5 80 02  mov   $0280+x,a
12d3: e4 01     mov   a,$01
12d5: d5 d0 02  mov   $02d0+x,a
12d8: d5 90 02  mov   $0290+x,a
12db: e4 2d     mov   a,$2d
12dd: d5 a0 02  mov   $02a0+x,a
12e0: e4 2e     mov   a,$2e
12e2: d5 b0 02  mov   $02b0+x,a
12e5: 2f 6c     bra   $1353
12e7: d5 20 03  mov   $0320+x,a
12ea: e4 02     mov   a,$02
12ec: d4 d3     mov   $d3+x,a
12ee: e4 00     mov   a,$00
12f0: d5 e0 02  mov   $02e0+x,a
12f3: d5 80 02  mov   $0280+x,a
12f6: e4 01     mov   a,$01
12f8: d5 f0 02  mov   $02f0+x,a
12fb: d5 90 02  mov   $0290+x,a
12fe: e4 2d     mov   a,$2d
1300: d5 00 03  mov   $0300+x,a
1303: e4 2e     mov   a,$2e
1305: d5 10 03  mov   $0310+x,a
1308: 2f 49     bra   $1353
130a: f5 20 03  mov   a,$0320+x
130d: d0 0e     bne   $131d
130f: f5 a0 02  mov   a,$02a0+x
1312: d5 80 02  mov   $0280+x,a
1315: f5 b0 02  mov   a,$02b0+x
1318: d5 90 02  mov   $0290+x,a
131b: 2f 36     bra   $1353
131d: d4 d3     mov   $d3+x,a
131f: e8 00     mov   a,#$00
1321: d5 20 03  mov   $0320+x,a
1324: f5 00 03  mov   a,$0300+x
1327: d5 80 02  mov   $0280+x,a
132a: f5 10 03  mov   a,$0310+x
132d: d5 90 02  mov   $0290+x,a
1330: 2f 21     bra   $1353
1332: f5 20 03  mov   a,$0320+x
1335: d0 0e     bne   $1345
1337: f5 c0 02  mov   a,$02c0+x
133a: d5 80 02  mov   $0280+x,a
133d: f5 d0 02  mov   a,$02d0+x
1340: d5 90 02  mov   $0290+x,a
1343: 2f 0e     bra   $1353
1345: f5 e0 02  mov   a,$02e0+x
1348: d5 80 02  mov   $0280+x,a
134b: f5 f0 02  mov   a,$02f0+x
134e: d5 90 02  mov   $0290+x,a
1351: 2f 00     bra   $1353
1353: f5 80 02  mov   a,$0280+x
1356: c4 2d     mov   $2d,a
1358: f5 90 02  mov   a,$0290+x
135b: c4 2e     mov   $2e,a
135d: 60        clrc
135e: 6f        ret

; vcmd f0 - vibrato fade
135f: 3f 88 0c  call  $0c88
1362: d4 83     mov   $83+x,a
1364: 2d        push  a
1365: f5 40 04  mov   a,$0440+x
1368: ce        pop   x
1369: 80        setc
136a: 3f a7 10  call  $10a7
136d: d5 50 04  mov   $0450+x,a
1370: dd        mov   a,y
1371: d5 60 04  mov   $0460+x,a
1374: e8 00     mov   a,#$00
1376: d4 53     mov   $53+x,a
1378: d5 30 04  mov   $0430+x,a
137b: d5 20 04  mov   $0420+x,a
137e: 60        clrc
137f: 6f        ret

; vcmd f1 - pitch envelope (release)
1380: 3f 88 0c  call  $0c88
1383: d5 50 05  mov   $0550+x,a
1386: 3f 88 0c  call  $0c88
1389: d5 10 05  mov   $0510+x,a
138c: 3f 88 0c  call  $0c88
138f: d5 30 05  mov   $0530+x,a
1392: e8 01     mov   a,#$01
1394: d5 00 05  mov   $0500+x,a
1397: 60        clrc
1398: 6f        ret

; vcmd f2 - pitch envelope (attack)
1399: 3f 88 0c  call  $0c88
139c: d5 50 05  mov   $0550+x,a
139f: 3f 88 0c  call  $0c88
13a2: d5 10 05  mov   $0510+x,a
13a5: 3f 88 0c  call  $0c88
13a8: d5 30 05  mov   $0530+x,a
13ab: e8 02     mov   a,#$02
13ad: d5 00 05  mov   $0500+x,a
13b0: 60        clrc
13b1: 6f        ret

; vcmd f3 - pitch envelope off
13b2: e8 00     mov   a,#$00
13b4: d5 00 05  mov   $0500+x,a
13b7: 60        clrc
13b8: 6f        ret

; vcmd f4 - tuning
13b9: 3f 88 0c  call  $0c88
13bc: d5 60 03  mov   $0360+x,a
13bf: 60        clrc
13c0: 6f        ret

; vcmd f5 - echo vbits/volume
13c1: 3f 88 0c  call  $0c88
13c4: c4 26     mov   $26,a
13c6: 3f 88 0c  call  $0c88
13c9: c4 1e     mov   $1e,a
13cb: 3f 88 0c  call  $0c88
13ce: c4 20     mov   $20,a
13d0: 60        clrc
13d1: 6f        ret

; vcmd f6 - disable echo
13d2: e8 00     mov   a,#$00
13d4: c4 24     mov   $24,a
13d6: c4 26     mov   $26,a
13d8: c4 1e     mov   $1e,a
13da: c4 20     mov   $20,a
13dc: 3f 4a 10  call  $104a
13df: f8 2b     mov   x,$2b
13e1: 60        clrc
13e2: 6f        ret

; vcmd f7 - set echo params
13e3: 3f 88 0c  call  $0c88
13e6: c4 24     mov   $24,a
13e8: 3f 4a 10  call  $104a
13eb: f8 2b     mov   x,$2b
13ed: 3f 88 0c  call  $0c88
13f0: c4 25     mov   $25,a
13f2: 3f 88 0c  call  $0c88
13f5: 8d 08     mov   y,#$08
13f7: cf        mul   ya
13f8: 5d        mov   x,a
13f9: 8d 0f     mov   y,#$0f
13fb: f5 0d 14  mov   a,$140d+x
13fe: 3f 99 10  call  $1099
1401: 3d        inc   x
1402: dd        mov   a,y
1403: 60        clrc
1404: 88 10     adc   a,#$10
1406: fd        mov   y,a
1407: 10 f2     bpl   $13fb
1409: f8 2b     mov   x,$2b
140b: 60        clrc
140c: 6f        ret

140d: db $7f,$00,$00,$00,$00,$00,$00,$00
1415: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
141d: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1425: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; vcmd f8 - echo volume fade
142d: 3f 88 0c  call  $0c88
1430: c4 23     mov   $23,a
1432: 3f 88 0c  call  $0c88
1435: c4 21     mov   $21,a
1437: 80        setc
1438: a4 1e     sbc   a,$1e
143a: f8 23     mov   x,$23
143c: 3f a7 10  call  $10a7
143f: da 27     movw  $27,ya
1441: 3f 88 0c  call  $0c88
1444: c4 22     mov   $22,a
1446: 80        setc
1447: a4 20     sbc   a,$20
1449: f8 23     mov   x,$23
144b: 3f a7 10  call  $10a7
144e: da 29     movw  $29,ya
1450: f8 2b     mov   x,$2b
1452: 60        clrc
1453: 6f        ret

; vcmd f9 - pitch slide
1454: 3f 88 0c  call  $0c88
1457: d5 50 05  mov   $0550+x,a
145a: 3f 88 0c  call  $0c88
145d: d5 10 05  mov   $0510+x,a
1460: 3f 88 0c  call  $0c88
1463: 80        setc
1464: a8 80     sbc   a,#$80
1466: d5 30 05  mov   $0530+x,a
1469: e8 03     mov   a,#$03
146b: d5 00 05  mov   $0500+x,a
146e: 60        clrc
146f: 6f        ret

; vcmd fa - set perc base
1470: 3f 88 0c  call  $0c88
1473: c5 80 06  mov   $0680,a
1476: e8 00     mov   a,#$00
1478: d5 70 06  mov   $0670+x,a
147b: 60        clrc
147c: 6f        ret

; vcmd fb - write APU port 3
147d: 3f 88 0c  call  $0c88
1480: c4 44     mov   $44,a
1482: 60        clrc
1483: 6f        ret

; vcmds fc-ff - nop
1484: 60        clrc
1485: 6f        ret

; play song in A
1486: 9c        dec   a
1487: 1c        asl   a
1488: fd        mov   y,a
1489: f7 48     mov   a,($48)+y
148b: c4 4c     mov   $4c,a
148d: fc        inc   y
148e: f7 48     mov   a,($48)+y
1490: c4 4d     mov   $4d,a
1492: 8f 00 50  mov   $50,#$00
1495: 8f 00 52  mov   $52,#$00
1498: cd 00     mov   x,#$00
149a: 3f 92 15  call  $1592
149d: f5 08 02  mov   a,$0208+x
14a0: d0 07     bne   $14a9
14a2: f5 c1 0b  mov   a,$0bc1+x
14a5: 04 42     or    a,$42
14a7: c4 42     mov   $42,a
14a9: 3d        inc   x
14aa: c8 08     cmp   x,#$08
14ac: 90 ec     bcc   $149a
; process next section list word
14ae: 8d 00     mov   y,#$00
14b0: f7 4c     mov   a,($4c)+y
14b2: c4 00     mov   $00,a
14b4: c4 4e     mov   $4e,a
14b6: 3a 4c     incw  $4c
14b8: f7 4c     mov   a,($4c)+y
14ba: c4 01     mov   $01,a
14bc: c4 4f     mov   $4f,a
14be: 3a 4c     incw  $4c               ; read a word from section list ptr
14c0: 68 00     cmp   a,#$00
14c2: d0 28     bne   $14ec             ; >= $0100, load that section ($00/1)
14c4: e4 00     mov   a,$00
14c6: f0 4c     beq   $1514             ; == $0000, song end
14c8: eb 50     mov   y,$50             ; == $00xx, repeat section (slightly different from usual N-SPC)
14ca: f0 0e     beq   $14da             ; start new repeat if repeat count has not been set
14cc: ad ff     cmp   y,#$ff
14ce: f0 0c     beq   $14dc             ; infinite loop ($00ff xxxx)
14d0: 8b 50     dec   $50
14d2: d0 08     bne   $14dc
14d4: 3a 4c     incw  $4c
14d6: 3a 4c     incw  $4c
14d8: 2f d4     bra   $14ae
;
14da: c4 50     mov   $50,a             ; set section repeat count
14dc: 8d 00     mov   y,#$00
14de: f7 4c     mov   a,($4c)+y
14e0: 2d        push  a
14e1: 3a 4c     incw  $4c
14e3: f7 4c     mov   a,($4c)+y
14e5: c4 4d     mov   $4d,a
14e7: ae        pop   a
14e8: c4 4c     mov   $4c,a             ; repeat from $4c/d (used for backjump)
14ea: 2f c2     bra   $14ae
; load section $00/1, set vcmd ptr for each channels
14ec: cd 00     mov   x,#$00
14ee: 8d 00     mov   y,#$00
14f0: e8 00     mov   a,#$00
14f2: d5 00 02  mov   $0200+x,a         ; inactivate channel
14f5: e4 10     mov   a,$10
14f7: d5 10 02  mov   $0210+x,a
14fa: f7 00     mov   a,($00)+y
14fc: c4 02     mov   $02,a
14fe: fc        inc   y
14ff: f7 00     mov   a,($00)+y
1501: c4 03     mov   $03,a             ; read vcmd ptr to $02/3
1503: fc        inc   y
1504: 04 02     or    a,$02
1506: f0 03     beq   $150b
1508: 3f 78 15  call  $1578             ; start channel unless it is zero
150b: 3d        inc   x
150c: c8 08     cmp   x,#$08
150e: 90 e0     bcc   $14f0
1510: 8f 01 52  mov   $52,#$01
1513: 6f        ret

; song end
1514: c5 00 02  mov   $0200,a
1517: c5 01 02  mov   $0201,a
151a: c5 02 02  mov   $0202,a
151d: c5 03 02  mov   $0203,a
1520: c5 04 02  mov   $0204,a
1523: c5 05 02  mov   $0205,a
1526: c5 06 02  mov   $0206,a
1529: c5 07 02  mov   $0207,a
152c: 8f ff 42  mov   $42,#$ff
152f: 6f        ret

1530: 3f ae 14  call  $14ae
1533: e5 00 02  mov   a,$0200
1536: f0 05     beq   $153d
1538: cd 00     mov   x,#$00
153a: 5f e5 09  jmp   $09e5

153d: 6f        ret

153e: 9c        dec   a
153f: 1c        asl   a
1540: fd        mov   y,a
1541: f7 4a     mov   a,($4a)+y
1543: c4 00     mov   $00,a
1545: fc        inc   y
1546: f7 4a     mov   a,($4a)+y
1548: c4 01     mov   $01,a
154a: cd 0f     mov   x,#$0f
154c: 8d 00     mov   y,#$00
154e: f7 00     mov   a,($00)+y
1550: c4 02     mov   $02,a
1552: fc        inc   y
1553: f7 00     mov   a,($00)+y
1555: c4 03     mov   $03,a
1557: fc        inc   y
1558: 04 02     or    a,$02
155a: f0 16     beq   $1572
155c: e4 11     mov   a,$11
155e: 28 7f     and   a,#$7f
1560: d5 10 02  mov   $0210+x,a
1563: 3f 78 15  call  $1578
1566: f5 c1 0b  mov   a,$0bc1+x
1569: 04 40     or    a,$40
156b: c4 40     mov   $40,a
156d: e8 01     mov   a,#$01
156f: d5 90 06  mov   $0690+x,a
1572: 1d        dec   x
1573: c8 08     cmp   x,#$08
1575: b0 d7     bcs   $154e
1577: 6f        ret

; start channel
1578: e4 02     mov   a,$02
157a: d5 80 02  mov   $0280+x,a
157d: e4 03     mov   a,$03
157f: d5 90 02  mov   $0290+x,a         ; set vcmd ptr
1582: e8 01     mov   a,#$01
1584: d5 00 02  mov   $0200+x,a         ; activate channel
1587: c8 08     cmp   x,#$08
1589: b0 1e     bcs   $15a9
158b: e4 52     mov   a,$52
158d: f0 03     beq   $1592
158f: 5f d4 15  jmp   $15d4

1592: e8 00     mov   a,#$00
1594: c5 80 06  mov   $0680,a
1597: 8f ff 37  mov   $37,#$ff
159a: 8f 00 38  mov   $38,#$00
159d: 8f 00 3c  mov   $3c,#$00
15a0: 8f 00 3d  mov   $3d,#$00
15a3: 8f 01 3f  mov   $3f,#$01
15a6: 8f 00 44  mov   $44,#$00
15a9: e8 20     mov   a,#$20
15ab: d5 c0 05  mov   $05c0+x,a
15ae: d5 e0 05  mov   $05e0+x,a
15b1: e8 00     mov   a,#$00
15b3: d5 a0 03  mov   $03a0+x,a
15b6: d5 b0 03  mov   $03b0+x,a
15b9: d5 60 03  mov   $0360+x,a
15bc: d5 50 03  mov   $0350+x,a
15bf: d5 70 06  mov   $0670+x,a
15c2: d5 20 02  mov   $0220+x,a
15c5: d5 30 02  mov   $0230+x,a
15c8: d5 40 02  mov   $0240+x,a
15cb: d5 50 02  mov   $0250+x,a
15ce: d5 60 02  mov   $0260+x,a
15d1: d5 70 02  mov   $0270+x,a
15d4: e8 00     mov   a,#$00
15d6: d5 d0 05  mov   $05d0+x,a
15d9: d5 20 06  mov   $0620+x,a
15dc: d5 30 06  mov   $0630+x,a
15df: d5 40 06  mov   $0640+x,a
15e2: d5 50 06  mov   $0650+x,a
15e5: d5 30 03  mov   $0330+x,a
15e8: d5 40 03  mov   $0340+x,a
15eb: d5 70 03  mov   $0370+x,a
15ee: d5 80 03  mov   $0380+x,a
15f1: d5 90 03  mov   $0390+x,a
15f4: d5 c0 03  mov   $03c0+x,a
15f7: d5 d0 03  mov   $03d0+x,a
15fa: d5 e0 03  mov   $03e0+x,a
15fd: d4 c3     mov   $c3+x,a
15ff: d4 d3     mov   $d3+x,a
1601: d5 f0 03  mov   $03f0+x,a
1604: d5 10 04  mov   $0410+x,a
1607: d5 a0 04  mov   $04a0+x,a
160a: d4 53     mov   $53+x,a
160c: d4 63     mov   $63+x,a
160e: d4 73     mov   $73+x,a
1610: d4 83     mov   $83+x,a
1612: d4 93     mov   $93+x,a
1614: d4 a3     mov   $a3+x,a
1616: d5 40 05  mov   $0540+x,a
1619: d4 b3     mov   $b3+x,a
161b: d5 a0 02  mov   $02a0+x,a
161e: d5 b0 02  mov   $02b0+x,a
1621: d5 c0 02  mov   $02c0+x,a
1624: d5 d0 02  mov   $02d0+x,a
1627: d5 e0 02  mov   $02e0+x,a
162a: d5 f0 02  mov   $02f0+x,a
162d: d5 00 03  mov   $0300+x,a
1630: d5 10 03  mov   $0310+x,a
1633: d5 20 03  mov   $0320+x,a
1636: d5 00 04  mov   $0400+x,a
1639: d5 20 04  mov   $0420+x,a
163c: d5 30 04  mov   $0430+x,a
163f: d5 40 04  mov   $0440+x,a
1642: d5 50 04  mov   $0450+x,a
1645: d5 60 04  mov   $0460+x,a
1648: d5 70 04  mov   $0470+x,a
164b: d5 90 04  mov   $0490+x,a
164e: d5 b0 04  mov   $04b0+x,a
1651: d5 c0 04  mov   $04c0+x,a
1654: d5 d0 04  mov   $04d0+x,a
1657: d5 e0 04  mov   $04e0+x,a
165a: d5 f0 04  mov   $04f0+x,a
165d: d5 00 05  mov   $0500+x,a
1660: d5 10 05  mov   $0510+x,a
1663: d5 20 05  mov   $0520+x,a
1666: d5 30 05  mov   $0530+x,a
1669: d5 50 05  mov   $0550+x,a
166c: d5 60 05  mov   $0560+x,a
166f: d5 80 05  mov   $0580+x,a
1672: d5 90 05  mov   $0590+x,a
1675: d5 a0 05  mov   $05a0+x,a
1678: d5 b0 05  mov   $05b0+x,a
167b: d5 f0 05  mov   $05f0+x,a
167e: d5 00 06  mov   $0600+x,a
1681: d5 10 06  mov   $0610+x,a
1684: d5 60 06  mov   $0660+x,a
1687: e8 0a     mov   a,#$0a
1689: d5 70 05  mov   $0570+x,a
168c: e8 ff     mov   a,#$ff
168e: d5 80 04  mov   $0480+x,a
1691: 6f        ret

1692: e5 f4 00  mov   a,$00f4
1695: 05 f5 00  or    a,$00f5
1698: 05 f6 00  or    a,$00f6
169b: 05 f7 00  or    a,$00f7
169e: f0 4d     beq   $16ed
16a0: e5 f4 00  mov   a,$00f4
16a3: f0 0d     beq   $16b2
16a5: c4 10     mov   $10,a
16a7: 68 80     cmp   a,#$80
16a9: b0 59     bcs   $1704
16ab: 68 40     cmp   a,#$40
16ad: b0 6c     bcs   $171b
16af: 3f 86 14  call  $1486
16b2: e5 f5 00  mov   a,$00f5
16b5: f0 0b     beq   $16c2
16b7: c4 11     mov   $11,a
16b9: 68 80     cmp   a,#$80
16bb: f0 63     beq   $1720
16bd: b0 66     bcs   $1725
16bf: 3f 3e 15  call  $153e
16c2: e5 f6 00  mov   a,$00f6
16c5: f0 0b     beq   $16d2
16c7: c4 11     mov   $11,a
16c9: 68 80     cmp   a,#$80
16cb: f0 53     beq   $1720
16cd: b0 56     bcs   $1725
16cf: 3f 3e 15  call  $153e
16d2: e5 f7 00  mov   a,$00f7
16d5: f0 0b     beq   $16e2
16d7: c4 11     mov   $11,a
16d9: 68 80     cmp   a,#$80
16db: f0 43     beq   $1720
16dd: b0 46     bcs   $1725
16df: 3f 3e 15  call  $153e
16e2: 3f ed 16  call  $16ed
16e5: e4 18     mov   a,$18
16e7: 08 30     or    a,#$30
16e9: c5 f1 00  mov   $00f1,a
16ec: 6f        ret

16ed: e5 f4 00  mov   a,$00f4
16f0: c5 f4 00  mov   $00f4,a
16f3: e5 f5 00  mov   a,$00f5
16f6: c5 f5 00  mov   $00f5,a
16f9: e4 43     mov   a,$43
16fb: c5 f6 00  mov   $00f6,a
16fe: e4 44     mov   a,$44
1700: c5 f7 00  mov   $00f7,a
1703: 6f        ret

1704: 68 fe     cmp   a,#$fe
1706: d0 05     bne   $170d
1708: 3f 64 18  call  $1864
170b: 2f d8     bra   $16e5
170d: 68 ff     cmp   a,#$ff
170f: d0 05     bne   $1716
1711: 3f 2f 19  call  $192f
1714: 2f cf     bra   $16e5
1716: 3f 78 17  call  $1778
1719: 2f 97     bra   $16b2
171b: 3f 6a 17  call  $176a
171e: 2f 92     bra   $16b2
1720: 3f 2a 17  call  $172a
1723: 2f bd     bra   $16e2
1725: 3f 43 17  call  $1743
1728: 2f b8     bra   $16e2
172a: cd 00     mov   x,#$00
172c: f5 08 02  mov   a,$0208+x
172f: f0 0c     beq   $173d
1731: e8 00     mov   a,#$00
1733: d5 08 02  mov   $0208+x,a
1736: f5 c1 0b  mov   a,$0bc1+x
1739: 04 40     or    a,$40
173b: c4 40     mov   $40,a
173d: 3d        inc   x
173e: c8 08     cmp   x,#$08
1740: 90 ea     bcc   $172c
1742: 6f        ret

1743: e4 11     mov   a,$11
1745: 28 7f     and   a,#$7f
1747: c4 00     mov   $00,a
1749: 8f 00 40  mov   $40,#$00
174c: cd 00     mov   x,#$00
174e: f5 18 02  mov   a,$0218+x
1751: 64 00     cmp   a,$00
1753: d0 0f     bne   $1764
1755: e8 00     mov   a,#$00
1757: d5 08 02  mov   $0208+x,a
175a: d5 18 02  mov   $0218+x,a
175d: f5 c1 0b  mov   a,$0bc1+x
1760: 04 40     or    a,$40
1762: c4 40     mov   $40,a
1764: 3d        inc   x
1765: c8 08     cmp   x,#$08
1767: 90 e5     bcc   $174e
1769: 6f        ret

176a: e4 10     mov   a,$10
176c: 28 3f     and   a,#$3f
176e: 3f 86 14  call  $1486
1771: 8f 00 37  mov   $37,#$00
1774: 8f 01 38  mov   $38,#$01
1777: 6f        ret

1778: 28 7f     and   a,#$7f
177a: 1c        asl   a
177b: fd        mov   y,a
177c: f6 86 17  mov   a,$1786+y
177f: 2d        push  a
1780: f6 85 17  mov   a,$1785+y
1783: 2d        push  a
1784: 6f        ret

1785: dw $17a5
1787: dw $17b5
1789: dw $17ba
178b: dw $17be
178d: dw $17c2
178f: dw $17c6
1791: dw $17cd
1793: dw $17d1
1795: dw $17d5
1797: dw $1807
1799: dw $180b
179b: dw $181d
179d: dw $182f
179f: dw $1841
17a1: dw $1853
17a3: dw $1863

17a4: cd 00     mov   x,#$00
17a7: e8 00     mov   a,#$00
17a9: d5 00 02  mov   $0200+x,a
17ac: 3d        inc   x
17ad: c8 08     cmp   x,#$08
17af: 90 f6     bcc   $17a7
17b1: 8f 01 3f  mov   $3f,#$01
17b4: 6f        ret

17b5: e8 01     mov   a,#$01
17b7: c4 3c     mov   $3c,a
17b9: 6f        ret

17ba: 8f 00 3c  mov   $3c,#$00
17bd: 6f        ret

17be: 8f 02 38  mov   $38,#$02
17c1: 6f        ret

17c2: 8f 03 38  mov   $38,#$03
17c5: 6f        ret

17c6: 8f 01 38  mov   $38,#$01
17c9: 8f 00 3c  mov   $3c,#$00
17cc: 6f        ret

17cd: 8f 00 3b  mov   $3b,#$00
17d0: 6f        ret

17d1: 8f 01 3b  mov   $3b,#$01
17d4: 6f        ret

17d5: 8f 01 3d  mov   $3d,#$01
17d8: e4 3e     mov   a,$3e
17da: fd        mov   y,a
17db: e5 e0 05  mov   a,$05e0
17de: cf        mul   ya
17df: cd 40     mov   x,#$40
17e1: 9e        div   ya,x
17e2: c5 c0 05  mov   $05c0,a
17e5: c5 c1 05  mov   $05c1,a
17e8: c5 c2 05  mov   $05c2,a
17eb: c5 c3 05  mov   $05c3,a
17ee: c5 c4 05  mov   $05c4,a
17f1: c5 c5 05  mov   $05c5,a
17f4: c5 c6 05  mov   $05c6,a
17f7: c5 c7 05  mov   $05c7,a
17fa: 6f        ret

17fb: e4 3e     mov   a,$3e
17fd: fd        mov   y,a
17fe: e4 06     mov   a,$06
1800: cf        mul   ya
1801: cd 40     mov   x,#$40
1803: 9e        div   ya,x
1804: c4 06     mov   $06,a
1806: 6f        ret

1807: 8f 00 44  mov   $44,#$00
180a: 6f        ret

180b: e5 f5 00  mov   a,$00f5
180e: 68 ff     cmp   a,#$ff
1810: d0 f9     bne   $180b
1812: e5 f6 00  mov   a,$00f6
1815: c4 45     mov   $45,a
1817: 8d 5d     mov   y,#$5d
1819: 3f 99 10  call  $1099
181c: 6f        ret

181d: e5 f5 00  mov   a,$00f5
1820: 68 ff     cmp   a,#$ff
1822: d0 f9     bne   $181d
1824: e5 f6 00  mov   a,$00f6
1827: c4 46     mov   $46,a
1829: e5 f7 00  mov   a,$00f7
182c: c4 47     mov   $47,a
182e: 6f        ret

182f: e5 f5 00  mov   a,$00f5
1832: 68 ff     cmp   a,#$ff
1834: d0 f9     bne   $182f
1836: e5 f6 00  mov   a,$00f6
1839: c4 48     mov   $48,a
183b: e5 f7 00  mov   a,$00f7
183e: c4 49     mov   $49,a
1840: 6f        ret

1841: e5 f5 00  mov   a,$00f5
1844: 68 ff     cmp   a,#$ff
1846: d0 f9     bne   $1841
1848: e5 f6 00  mov   a,$00f6
184b: c4 4a     mov   $4a,a
184d: e5 f7 00  mov   a,$00f7
1850: c4 4b     mov   $4b,a
1852: 6f        ret

1853: e5 f5 00  mov   a,$00f5
1856: 68 ff     cmp   a,#$ff
1858: d0 f9     bne   $1853
185a: e5 f6 00  mov   a,$00f6
185d: c4 3e     mov   $3e,a
185f: 3f d5 17  call  $17d5
1862: 6f        ret

1863: 6f        ret

1864: e8 00     mov   a,#$00
1866: c5 f5 00  mov   $00f5,a
1869: c5 f6 00  mov   $00f6,a
186c: c5 f7 00  mov   $00f7,a
186f: e8 ff     mov   a,#$ff
1871: c5 f4 00  mov   $00f4,a
1874: cd 00     mov   x,#$00
1876: e8 ff     mov   a,#$ff
1878: c4 00     mov   $00,a
187a: c4 01     mov   $01,a
187c: e8 00     mov   a,#$00
187e: c4 02     mov   $02,a
1880: c4 03     mov   $03,a
1882: e8 00     mov   a,#$00
1884: c4 04     mov   $04,a
1886: c4 05     mov   $05,a
1888: c4 06     mov   $06,a
188a: c4 07     mov   $07,a
188c: e5 f4 00  mov   a,$00f4
188f: 28 f0     and   a,#$f0
1891: d0 f9     bne   $188c
1893: e5 f4 00  mov   a,$00f4
1896: 28 f0     and   a,#$f0
1898: 64 00     cmp   a,$00
189a: f0 f7     beq   $1893
189c: c4 00     mov   $00,a
189e: e5 f4 00  mov   a,$00f4
18a1: 28 0f     and   a,#$0f
18a3: c4 02     mov   $02,a
18a5: 1c        asl   a
18a6: fd        mov   y,a
18a7: f6 b1 18  mov   a,$18b1+y
18aa: 2d        push  a
18ab: f6 b0 18  mov   a,$18b0+y
18ae: 2d        push  a
18af: 6f        ret

18b0: bc        inc   a
18b1: 18 d4 18  or    $18,#$d4
18b4: de 18 ef  cbne  $18+x,$18a6
18b7: 18 07 19  or    $19,#$07
18ba: c7 18     mov   ($18+x),a
18bc: ba 06     movw  ya,$06
18be: f0 06     beq   $18c6
18c0: e4 07     mov   a,$07
18c2: 2d        push  a
18c3: e4 06     mov   a,$06
18c5: 2d        push  a
18c6: 6f        ret

18c7: e5 f5 00  mov   a,$00f5
18ca: c4 06     mov   $06,a
18cc: e5 f6 00  mov   a,$00f6
18cf: c4 07     mov   $07,a
18d1: 5f 14 19  jmp   $1914

18d4: e5 f5 00  mov   a,$00f5
18d7: c7 04     mov   ($04+x),a
18d9: 3a 04     incw  $04
18db: 5f 14 19  jmp   $1914

18de: e5 f5 00  mov   a,$00f5
18e1: c7 04     mov   ($04+x),a
18e3: 3a 04     incw  $04
18e5: e5 f6 00  mov   a,$00f6
18e8: c7 04     mov   ($04+x),a
18ea: 3a 04     incw  $04
18ec: 5f 14 19  jmp   $1914

18ef: e5 f5 00  mov   a,$00f5
18f2: c7 04     mov   ($04+x),a
18f4: 3a 04     incw  $04
18f6: e5 f6 00  mov   a,$00f6
18f9: c7 04     mov   ($04+x),a
18fb: 3a 04     incw  $04
18fd: e5 f7 00  mov   a,$00f7
1900: c7 04     mov   ($04+x),a
1902: 3a 04     incw  $04
1904: 5f 14 19  jmp   $1914

1907: e5 f5 00  mov   a,$00f5
190a: c4 04     mov   $04,a
190c: e5 f6 00  mov   a,$00f6
190f: c4 05     mov   $05,a
1911: 5f 14 19  jmp   $1914

1914: e5 f5 00  mov   a,$00f5
1917: c5 f5 00  mov   $00f5,a
191a: e5 f6 00  mov   a,$00f6
191d: c5 f6 00  mov   $00f6,a
1920: e5 f7 00  mov   a,$00f7
1923: c5 f7 00  mov   $00f7,a
1926: e5 f4 00  mov   a,$00f4
1929: c5 f4 00  mov   $00f4,a
192c: 5f 93 18  jmp   $1893

192f: e8 aa     mov   a,#$aa
1931: c5 f4 00  mov   $00f4,a
1934: e8 bb     mov   a,#$bb
1936: c5 f5 00  mov   $00f5,a
1939: e5 f4 00  mov   a,$00f4
193c: 68 cc     cmp   a,#$cc
193e: d0 f9     bne   $1939
1940: 2f 20     bra   $1962
1942: ec f4 00  mov   y,$00f4
1945: d0 fb     bne   $1942
1947: 5e f4 00  cmp   y,$00f4
194a: d0 0f     bne   $195b
194c: e5 f5 00  mov   a,$00f5
194f: cc f4 00  mov   $00f4,y
1952: d7 00     mov   ($00)+y,a
1954: fc        inc   y
1955: d0 f0     bne   $1947
1957: ab 01     inc   $01
1959: 2f ec     bra   $1947
195b: 10 ea     bpl   $1947
195d: 5e f4 00  cmp   y,$00f4
1960: 10 e5     bpl   $1947
1962: 8d 00     mov   y,#$00
1964: dc        dec   y
1965: d0 fd     bne   $1964
1967: e5 f6 00  mov   a,$00f6
196a: ec f7 00  mov   y,$00f7
196d: da 00     movw  $00,ya
196f: ec f4 00  mov   y,$00f4
1972: e5 f5 00  mov   a,$00f5
1975: cc f4 00  mov   $00f4,y
1978: d0 c8     bne   $1942
197a: 6f        ret

; note dur%'s
1d80: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
