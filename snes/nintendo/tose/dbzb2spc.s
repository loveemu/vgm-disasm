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
082b: e8 5f     mov   a,#$5f
082d: c4 30     mov   $30,a
082f: e8 ff     mov   a,#$ff
0831: c4 31     mov   $31,a
0833: e8 ff     mov   a,#$ff
0835: c4 38     mov   $38,a
0837: e8 00     mov   a,#$00
0839: c5 f4 00  mov   $00f4,a
083c: c5 f5 00  mov   $00f5,a
083f: c5 f6 00  mov   $00f6,a
0842: c5 f7 00  mov   $00f7,a
0845: e8 30     mov   a,#$30
0847: c5 f1 00  mov   $00f1,a
084a: e8 10     mov   a,#$10
084c: c5 fa 00  mov   $00fa,a
084f: e8 01     mov   a,#$01
0851: c5 f1 00  mov   $00f1,a
0854: c4 18     mov   $18,a
0856: 8f 40 3f  mov   $3f,#$40
0859: 8d 6c     mov   y,#$6c
085b: e8 a0     mov   a,#$a0
085d: 3f 54 11  call  $1154
0860: e8 20     mov   a,#$20
0862: 3f 54 11  call  $1154
0865: 3f 70 10  call  $1070
0868: 8d 5c     mov   y,#$5c
086a: e8 ff     mov   a,#$ff
086c: 3f 54 11  call  $1154
086f: 8d 3d     mov   y,#$3d
0871: e8 00     mov   a,#$00
0873: 3f 54 11  call  $1154
0876: 8d 2d     mov   y,#$2d
0878: 3f 54 11  call  $1154
087b: 8d 5d     mov   y,#$5d
087d: e8 1b     mov   a,#$1b
087f: c4 46     mov   $46,a
0881: 3f 54 11  call  $1154
0884: 8f 00 47  mov   $47,#$00
0887: 8f 1c 48  mov   $48,#$1c
088a: 8f 00 49  mov   $49,#$00
088d: 8f 1e 4a  mov   $4a,#$1e          ; song list = $1e00
0890: 8f 10 4b  mov   $4b,#$10
0893: 8f 1e 4c  mov   $4c,#$1e
0896: e8 00     mov   a,#$00
0898: 3f 05 11  call  $1105
089b: e5 fd 00  mov   a,$00fd
089e: d0 05     bne   $08a5
08a0: 3f 94 17  call  $1794
08a3: 2f f6     bra   $089b
08a5: c4 19     mov   $19,a
08a7: e4 1b     mov   a,$1b
08a9: f0 2f     beq   $08da
08ab: 80        setc
08ac: a4 19     sbc   a,$19
08ae: c4 1b     mov   $1b,a
08b0: f0 05     beq   $08b7
08b2: b0 26     bcs   $08da
08b4: 8f 00 1b  mov   $1b,#$00
08b7: 8d 6c     mov   y,#$6c
08b9: 3f 5b 11  call  $115b
08bc: 28 df     and   a,#$df
08be: 3f 54 11  call  $1154
08c1: 8d 0d     mov   y,#$0d
08c3: e4 25     mov   a,$25
08c5: 3f 54 11  call  $1154
08c8: 8d 4d     mov   y,#$4d
08ca: e4 26     mov   a,$26
08cc: 3f 54 11  call  $1154
08cf: 8d 7d     mov   y,#$7d
08d1: 3f 5b 11  call  $115b
08d4: 1c        asl   a
08d5: 1c        asl   a
08d6: 1c        asl   a
08d7: bc        inc   a
08d8: c4 1c     mov   $1c,a
08da: e4 1c     mov   a,$1c
08dc: f0 1a     beq   $08f8
08de: 80        setc
08df: a4 19     sbc   a,$19
08e1: c4 1c     mov   $1c,a
08e3: f0 05     beq   $08ea
08e5: b0 11     bcs   $08f8
08e7: 8f 00 1c  mov   $1c,#$00
08ea: 8d 2c     mov   y,#$2c
08ec: e4 1e     mov   a,$1e
08ee: 3f 54 11  call  $1154
08f1: 8d 3c     mov   y,#$3c
08f3: e4 20     mov   a,$20
08f5: 3f 54 11  call  $1154
08f8: 8f 00 44  mov   $44,#$00
08fb: 8f 00 2b  mov   $2b,#$00
08fe: 8f 00 2c  mov   $2c,#$00
0901: 8f 00 42  mov   $42,#$00
0904: 8f 00 43  mov   $43,#$00
0907: cd 00     mov   x,#$00
0909: f5 00 02  mov   a,$0200+x
090c: f0 34     beq   $0942
090e: c8 08     cmp   x,#$08
0910: b0 18     bcs   $092a
0912: e4 40     mov   a,$40
0914: 04 3d     or    a,$3d
0916: f0 24     beq   $093c
0918: 7d        mov   a,x
0919: 08 08     or    a,#$08
091b: fd        mov   y,a
091c: f6 00 02  mov   a,$0200+y
091f: d0 21     bne   $0942
0921: f5 dc 0b  mov   a,$0bdc+x
0924: 04 43     or    a,$43
0926: c4 43     mov   $43,a
0928: 2f 18     bra   $0942
092a: f5 dc 0b  mov   a,$0bdc+x
092d: 04 44     or    a,$44
092f: c4 44     mov   $44,a
0931: f5 c0 06  mov   a,$06c0+x
0934: f0 06     beq   $093c
0936: 9c        dec   a
0937: d5 c0 06  mov   $06c0+x,a
093a: 2f 06     bra   $0942
093c: 3f 94 09  call  $0994
093f: 3f 08 0f  call  $0f08
0942: c8 08     cmp   x,#$08
0944: 90 10     bcc   $0956
0946: f5 dc 0b  mov   a,$0bdc+x
0949: 24 41     and   a,$41
094b: f0 09     beq   $0956
094d: f5 dc 0b  mov   a,$0bdc+x
0950: 04 43     or    a,$43
0952: c4 43     mov   $43,a
0954: 2f 16     bra   $096c
0956: e4 40     mov   a,$40
0958: 04 3d     or    a,$3d
095a: f0 10     beq   $096c
095c: 7d        mov   a,x
095d: 08 08     or    a,#$08
095f: fd        mov   y,a
0960: f6 00 02  mov   a,$0200+y
0963: d0 07     bne   $096c
0965: f5 dc 0b  mov   a,$0bdc+x
0968: 04 43     or    a,$43
096a: c4 43     mov   $43,a
096c: ab 2b     inc   $2b
096e: 60        clrc
096f: 98 10 2c  adc   $2c,#$10
0972: 3d        inc   x
0973: c8 10     cmp   x,#$10
0975: b0 03     bcs   $097a
0977: 5f 09 09  jmp   $0909

097a: e4 43     mov   a,$43
097c: 8d 5c     mov   y,#$5c
097e: 3f 54 11  call  $1154
0981: e4 42     mov   a,$42
0983: 8d 4c     mov   y,#$4c
0985: 3f 54 11  call  $1154
0988: 8f 00 41  mov   $41,#$00
098b: 8f 00 40  mov   $40,#$00
098e: 3f 66 0e  call  $0e66
0991: 5f a0 08  jmp   $08a0

0994: f5 e0 05  mov   a,$05e0+x
0997: eb 19     mov   y,$19
0999: cf        mul   ya
099a: da 00     movw  $00,ya
099c: f5 f0 05  mov   a,$05f0+x
099f: 60        clrc
09a0: 84 00     adc   a,$00
09a2: d5 f0 05  mov   $05f0+x,a
09a5: e8 00     mov   a,#$00
09a7: 84 01     adc   a,$01
09a9: f0 06     beq   $09b1
09ab: 3f b5 09  call  $09b5
09ae: 3f e0 0c  call  $0ce0
09b1: 3f f0 0e  call  $0ef0
09b4: 6f        ret

09b5: c4 1a     mov   $1a,a
09b7: f5 50 06  mov   a,$0650+x
09ba: f0 2e     beq   $09ea
09bc: 80        setc
09bd: a4 1a     sbc   a,$1a
09bf: d5 50 06  mov   $0650+x,a
09c2: f0 26     beq   $09ea
09c4: 90 24     bcc   $09ea
09c6: f5 70 06  mov   a,$0670+x
09c9: f0 e9     beq   $09b4
09cb: 80        setc
09cc: a4 1a     sbc   a,$1a
09ce: d5 70 06  mov   $0670+x,a
09d1: d0 e1     bne   $09b4
09d3: c8 08     cmp   x,#$08
09d5: b0 06     bcs   $09dd
09d7: f5 08 02  mov   a,$0208+x
09da: f0 01     beq   $09dd
09dc: 6f        ret

09dd: f5 90 06  mov   a,$0690+x
09e0: d0 07     bne   $09e9
09e2: f5 dc 0b  mov   a,$0bdc+x
09e5: 04 43     or    a,$43
09e7: c4 43     mov   $43,a
09e9: 6f        ret

09ea: c4 1a     mov   $1a,a
09ec: f5 90 02  mov   a,$0290+x
09ef: c4 2d     mov   $2d,a
09f1: f5 a0 02  mov   a,$02a0+x
09f4: c4 2e     mov   $2e,a             ; set vcmd pointer to $2d/e
09f6: 3f c0 0c  call  $0cc0
09f9: c4 e4     mov   $e4,a
09fb: 68 00     cmp   a,#$00
09fd: f0 1f     beq   $0a1e
09ff: 68 80     cmp   a,#$80
0a01: 90 46     bcc   $0a49
0a03: 68 e0     cmp   a,#$e0
0a05: 90 6a     bcc   $0a71
0a07: 3f 89 11  call  $1189             ; vcmds e0-ff
0a0a: 90 ea     bcc   $09f6
0a0c: e4 2d     mov   a,$2d
0a0e: d5 90 02  mov   $0290+x,a
0a11: e4 2e     mov   a,$2e
0a13: d5 a0 02  mov   $02a0+x,a
0a16: cd 08     mov   x,#$08
0a18: d8 2b     mov   $2b,x
0a1a: 8f 80 2c  mov   $2c,#$80
0a1d: 6f        ret

; vcmd 00 - end repeat/return
0a1e: f5 d4 00  mov   a,$00d4+x
0a21: d0 15     bne   $0a38             ; do loop if repeat count is left
; end of block
0a23: d5 00 02  mov   $0200+x,a
0a26: c8 08     cmp   x,#$08
0a28: b0 03     bcs   $0a2d
0a2a: 5f f8 15  jmp   $15f8

0a2d: d5 70 03  mov   $0370+x,a
0a30: e8 01     mov   a,#$01
0a32: d5 80 06  mov   $0680+x,a
0a35: 5f e2 09  jmp   $09e2

; repeat / return from subroutine
0a38: bc        inc   a
0a39: f0 04     beq   $0a3f
0a3b: 9b d4     dec   $d4+x
0a3d: f0 05     beq   $0a44
0a3f: 3f f7 13  call  $13f7
0a42: 2f b2     bra   $09f6
0a44: 3f cf 13  call  $13cf
0a47: 2f ad     bra   $09f6
; vcmd 01-7f - note info
0a49: 60        clrc
0a4a: 84 1a     adc   a,$1a
0a4c: d5 40 06  mov   $0640+x,a         ; save delta-time
0a4f: 3f c0 0c  call  $0cc0             ; read arg1
0a52: c4 e4     mov   $e4,a
0a54: 68 80     cmp   a,#$80
0a56: b0 a3     bcs   $09fb             ; quit if arg1 >= 0x80 (not a parameter)
0a58: 2d        push  a
0a59: 28 0f     and   a,#$0f            ; extract lower 4 bits (velocity)
0a5b: fd        mov   y,a
0a5c: f6 26 0c  mov   a,$0c26+y         ; read note volume table
0a5f: d5 a0 03  mov   $03a0+x,a         ; save note volume
0a62: ae        pop   a
0a63: 5c        lsr   a
0a64: 5c        lsr   a
0a65: 5c        lsr   a
0a66: 5c        lsr   a
0a67: fd        mov   y,a               ; extract higher 3 bits (bit7 is always 0)
0a68: f6 80 1d  mov   a,$1d80+y         ; read duration rate table
0a6b: d5 60 06  mov   $0660+x,a         ; save duration rate
0a6e: 5f f6 09  jmp   $09f6

0a71: 68 ca     cmp   a,#$ca
0a73: 90 0f     bcc   $0a84
; vcmd ca-df - percussion note
0a75: 80        setc
0a76: a8 ca     sbc   a,#$ca
0a78: 60        clrc
0a79: 85 b0 06  adc   a,$06b0           ; add percussion patch base
0a7c: 3f dc 11  call  $11dc             ; set sample
0a7f: e8 a4     mov   a,#$a4
0a81: 5f 8c 0a  jmp   $0a8c

; vcmd 80-c9 - note
0a84: 2d        push  a
0a85: f5 a0 06  mov   a,$06a0+x
0a88: 3f dc 11  call  $11dc             ; set sample
0a8b: ae        pop   a
0a8c: 68 c8     cmp   a,#$c8
0a8e: d0 12     bne   $0aa2
0a90: 8d 00     mov   y,#$00
0a92: f7 2d     mov   a,($2d)+y
0a94: 68 f9     cmp   a,#$f9
0a96: d0 07     bne   $0a9f
0a98: 3a 2d     incw  $2d
0a9a: 3f 19 15  call  $1519
0a9d: 2f 30     bra   $0acf
0a9f: 5f 25 0b  jmp   $0b25

0aa2: 68 c9     cmp   a,#$c9
0aa4: d0 06     bne   $0aac

; vcmd c8 - tie
0aa6: d5 50 03  mov   $0350+x,a
0aa9: 5f 6c 0b  jmp   $0b6c

; vcmd c9 - rest
0aac: 28 7f     and   a,#$7f
0aae: c8 08     cmp   x,#$08
0ab0: b0 03     bcs   $0ab5
0ab2: 60        clrc
0ab3: 84 3b     adc   a,$3b
0ab5: 60        clrc
0ab6: 95 60 03  adc   a,$0360+x
0ab9: d5 50 03  mov   $0350+x,a
0abc: f5 70 03  mov   a,$0370+x
0abf: d5 40 03  mov   $0340+x,a
0ac2: 8d 00     mov   y,#$00
0ac4: f7 2d     mov   a,($2d)+y
0ac6: 68 f9     cmp   a,#$f9
0ac8: d0 05     bne   $0acf
0aca: 3a 2d     incw  $2d
0acc: 3f 19 15  call  $1519
0acf: f5 10 05  mov   a,$0510+x
0ad2: f0 51     beq   $0b25
0ad4: f5 60 05  mov   a,$0560+x
0ad7: d4 a4     mov   $a4+x,a
0ad9: f5 20 05  mov   a,$0520+x
0adc: d5 50 05  mov   $0550+x,a
0adf: f5 10 05  mov   a,$0510+x
0ae2: 68 03     cmp   a,#$03
0ae4: d0 20     bne   $0b06
0ae6: f5 20 05  mov   a,$0520+x
0ae9: d0 07     bne   $0af2
0aeb: e8 00     mov   a,#$00
0aed: d5 10 05  mov   $0510+x,a
0af0: f0 33     beq   $0b25
0af2: f5 40 05  mov   a,$0540+x
0af5: 80        setc
0af6: b5 50 03  sbc   a,$0350+x
0af9: d5 40 05  mov   $0540+x,a
0afc: 3f cc 0c  call  $0ccc
0aff: e8 00     mov   a,#$00
0b01: d5 20 05  mov   $0520+x,a
0b04: 2f 1f     bra   $0b25
0b06: 68 01     cmp   a,#$01
0b08: f0 15     beq   $0b1f
0b0a: f5 50 03  mov   a,$0350+x
0b0d: 60        clrc
0b0e: 95 40 05  adc   a,$0540+x
0b11: d5 50 03  mov   $0350+x,a
0b14: e8 00     mov   a,#$00
0b16: 80        setc
0b17: b5 40 05  sbc   a,$0540+x
0b1a: 3f cc 0c  call  $0ccc
0b1d: 2f 06     bra   $0b25
0b1f: f5 40 05  mov   a,$0540+x
0b22: 3f cc 0c  call  $0ccc
0b25: e8 00     mov   a,#$00
0b27: d5 90 06  mov   $0690+x,a
0b2a: 8d 00     mov   y,#$00
0b2c: f7 2d     mov   a,($2d)+y
0b2e: f0 27     beq   $0b57
0b30: 10 1a     bpl   $0b4c
0b32: 68 c8     cmp   a,#$c8
0b34: 90 21     bcc   $0b57
0b36: f0 18     beq   $0b50
0b38: 68 e0     cmp   a,#$e0
0b3a: 90 1b     bcc   $0b57
0b3c: 80        setc
0b3d: a8 e0     sbc   a,#$e0
0b3f: cb 00     mov   $00,y
0b41: fd        mov   y,a
0b42: f6 06 0c  mov   a,$0c06+y
0b45: 60        clrc
0b46: 84 00     adc   a,$00
0b48: fd        mov   y,a
0b49: 5f 2c 0b  jmp   $0b2c

0b4c: fc        inc   y
0b4d: 5f 2c 0b  jmp   $0b2c

0b50: e8 01     mov   a,#$01
0b52: d5 90 06  mov   $0690+x,a
0b55: 2f 08     bra   $0b5f
0b57: e8 00     mov   a,#$00
0b59: d5 74 00  mov   $0074+x,a
0b5c: d5 00 04  mov   $0400+x,a
0b5f: f5 40 03  mov   a,$0340+x
0b62: c4 0c     mov   $0c,a
0b64: f5 50 03  mov   a,$0350+x
0b67: c4 0d     mov   $0d,a
0b69: 3f 36 0c  call  $0c36
0b6c: f5 40 06  mov   a,$0640+x
0b6f: d5 50 06  mov   $0650+x,a
0b72: fd        mov   y,a
0b73: f5 60 06  mov   a,$0660+x
0b76: cf        mul   ya                ; apply duration rate
0b77: dd        mov   a,y
0b78: d0 01     bne   $0b7b
0b7a: bc        inc   a                 ; minimum length = 1
0b7b: d5 70 06  mov   $0670+x,a
0b7e: f5 50 03  mov   a,$0350+x
0b81: 68 c9     cmp   a,#$c9
0b83: f0 4c     beq   $0bd1
0b85: e4 e4     mov   a,$e4
0b87: 68 c8     cmp   a,#$c8
0b89: f0 46     beq   $0bd1
0b8b: c8 08     cmp   x,#$08
0b8d: b0 05     bcs   $0b94
0b8f: f5 08 02  mov   a,$0208+x
0b92: d0 3d     bne   $0bd1
0b94: 3f 7c 10  call  $107c
0b97: fc        inc   y
0b98: f5 80 03  mov   a,$0380+x
0b9b: 3f 54 11  call  $1154
0b9e: fc        inc   y
0b9f: f5 90 03  mov   a,$0390+x
0ba2: 3f 54 11  call  $1154
0ba5: fc        inc   y
0ba6: f5 30 02  mov   a,$0230+x
0ba9: 3f 54 11  call  $1154
0bac: fc        inc   y
0bad: f5 40 02  mov   a,$0240+x
0bb0: 3f 54 11  call  $1154
0bb3: fc        inc   y
0bb4: f5 50 02  mov   a,$0250+x
0bb7: 3f 54 11  call  $1154
0bba: fc        inc   y
0bbb: f5 60 02  mov   a,$0260+x
0bbe: 3f 54 11  call  $1154
0bc1: f5 dc 0b  mov   a,$0bdc+x
0bc4: 04 42     or    a,$42
0bc6: c4 42     mov   $42,a
0bc8: c8 08     cmp   x,#$08
0bca: b0 05     bcs   $0bd1
0bcc: e8 00     mov   a,#$00
0bce: d5 88 06  mov   $0688+x,a
0bd1: e4 2d     mov   a,$2d
0bd3: d5 90 02  mov   $0290+x,a
0bd6: e4 2e     mov   a,$2e
0bd8: d5 a0 02  mov   $02a0+x,a
0bdb: 6f        ret

0bdc: db $01,$02,$04,$08,$10,$20,$40,$80
0be4: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
0bec: dw $085f
0bee: dw $08de
0bf0: dw $0965
0bf2: dw $09f4
0bf4: dw $0a8c
0bf6: dw $0b2c
0bf8: dw $0bd6
0bfa: dw $0c8b
0bfc: dw $0d4a
0bfe: dw $0e14
0c00: dw $0eea
0c02: dw $0fcd
0c04: dw $1095

; vcmd lengths (includes opcode itself)
0c06: db $02,$02,$03,$04,$01,$02,$03,$02
0c0e: db $03,$02,$02,$04,$01,$02,$03,$04
0c16: db $02,$04,$04,$01,$02,$04,$01,$04
0c1e: db $04,$04,$02,$01,$01,$01,$01,$01

; note volume
0c26: db $10,$20,$30,$40,$50,$60,$70,$80
0c2e: db $90,$a0,$b0,$c0,$d0,$e0,$f0,$ff

0c36: f5 e2 06  mov   a,$06e2+x
0c39: f0 18     beq   $0c53
0c3b: e5 0c 00  mov   a,$000c
0c3e: 60        clrc
0c3f: 85 e0 06  adc   a,$06e0
0c42: c5 0c 00  mov   $000c,a
0c45: e5 0d 00  mov   a,$000d
0c48: 85 e1 06  adc   a,$06e1
0c4b: c5 0d 00  mov   $000d,a
0c4e: e8 00     mov   a,#$00
0c50: d5 e2 06  mov   $06e2+x,a
0c53: 4d        push  x
0c54: e4 0d     mov   a,$0d
0c56: 1c        asl   a
0c57: 8d 00     mov   y,#$00
0c59: cd 18     mov   x,#$18
0c5b: 9e        div   ya,x
0c5c: 5d        mov   x,a
0c5d: f6 ec 0b  mov   a,$0bec+y
0c60: c4 00     mov   $00,a
0c62: f6 ed 0b  mov   a,$0bed+y
0c65: c4 01     mov   $01,a
0c67: f6 ef 0b  mov   a,$0bef+y
0c6a: 2d        push  a
0c6b: f6 ee 0b  mov   a,$0bee+y
0c6e: ee        pop   y
0c6f: 9a 00     subw  ya,$00
0c71: da 04     movw  $04,ya
0c73: eb 0c     mov   y,$0c
0c75: cf        mul   ya
0c76: da 06     movw  $06,ya
0c78: e4 05     mov   a,$05
0c7a: eb 0c     mov   y,$0c
0c7c: cf        mul   ya
0c7d: da 04     movw  $04,ya
0c7f: e4 07     mov   a,$07
0c81: 8d 00     mov   y,#$00
0c83: 7a 04     addw  ya,$04
0c85: 7a 00     addw  ya,$00
0c87: da 00     movw  $00,ya
0c89: c8 05     cmp   x,#$05
0c8b: b0 07     bcs   $0c94
0c8d: 4b 01     lsr   $01
0c8f: 6b 00     ror   $00
0c91: 3d        inc   x
0c92: 2f f5     bra   $0c89
0c94: ce        pop   x
0c95: f5 70 02  mov   a,$0270+x
0c98: eb 01     mov   y,$01
0c9a: cf        mul   ya
0c9b: da 02     movw  $02,ya
0c9d: f5 80 02  mov   a,$0280+x
0ca0: eb 00     mov   y,$00
0ca2: cf        mul   ya
0ca3: 7a 02     addw  ya,$02
0ca5: da 02     movw  $02,ya
0ca7: f5 70 02  mov   a,$0270+x
0caa: eb 00     mov   y,$00
0cac: cf        mul   ya
0cad: 6d        push  y
0cae: f5 80 02  mov   a,$0280+x
0cb1: eb 01     mov   y,$01
0cb3: cf        mul   ya
0cb4: fd        mov   y,a
0cb5: ae        pop   a
0cb6: 7a 02     addw  ya,$02
0cb8: d5 80 03  mov   $0380+x,a
0cbb: dd        mov   a,y
0cbc: d5 90 03  mov   $0390+x,a
0cbf: 6f        ret

; read voice byte, advance pointer
0cc0: 8d 00     mov   y,#$00
0cc2: f7 2d     mov   a,($2d)+y
0cc4: 3a 2d     incw  $2d
0cc6: 6f        ret

; read voice byte
0cc7: 8d 00     mov   y,#$00
0cc9: f7 2d     mov   a,($2d)+y
0ccb: 6f        ret

0ccc: 68 80     cmp   a,#$80
0cce: ed        notc
0ccf: 2d        push  a
0cd0: f5 20 05  mov   a,$0520+x
0cd3: 5d        mov   x,a
0cd4: ae        pop   a
0cd5: 3f 62 11  call  $1162
0cd8: d5 f0 04  mov   $04f0+x,a
0cdb: dd        mov   a,y
0cdc: d5 00 05  mov   $0500+x,a
0cdf: 6f        ret

0ce0: f4 c4     mov   a,$c4+x
0ce2: f0 1d     beq   $0d01
0ce4: f5 20 06  mov   a,$0620+x
0ce7: 60        clrc
0ce8: 95 d0 05  adc   a,$05d0+x
0ceb: d5 d0 05  mov   $05d0+x,a
0cee: f5 30 06  mov   a,$0630+x
0cf1: 95 e0 05  adc   a,$05e0+x
0cf4: d5 e0 05  mov   $05e0+x,a
0cf7: 9b c4     dec   $c4+x
0cf9: d0 06     bne   $0d01
0cfb: f5 10 06  mov   a,$0610+x
0cfe: d5 e0 05  mov   $05e0+x,a
0d01: f2 14     clr7  $14
0d03: f4 64     mov   a,$64+x
0d05: f0 1f     beq   $0d26
0d07: e2 14     set7  $14
0d09: f5 b0 03  mov   a,$03b0+x
0d0c: 60        clrc
0d0d: 95 e0 03  adc   a,$03e0+x
0d10: d5 b0 03  mov   $03b0+x,a
0d13: f5 c0 03  mov   a,$03c0+x
0d16: 95 f0 03  adc   a,$03f0+x
0d19: d5 c0 03  mov   $03c0+x,a
0d1c: 9b 64     dec   $64+x
0d1e: d0 06     bne   $0d26
0d20: f5 d0 03  mov   a,$03d0+x
0d23: d5 c0 03  mov   $03c0+x,a
0d26: f5 b0 04  mov   a,$04b0+x
0d29: f0 1f     beq   $0d4a
0d2b: f5 a0 04  mov   a,$04a0+x
0d2e: de 94 17  cbne  $94+x,$0d48
0d31: e2 14     set7  $14
0d33: f5 e0 04  mov   a,$04e0+x
0d36: 10 07     bpl   $0d3f
0d38: fc        inc   y
0d39: d0 04     bne   $0d3f
0d3b: e8 80     mov   a,#$80
0d3d: 2f 04     bra   $0d43
0d3f: 60        clrc
0d40: 95 b0 04  adc   a,$04b0+x
0d43: d5 e0 04  mov   $04e0+x,a
0d46: 2f 07     bra   $0d4f
0d48: bb 94     inc   $94+x
0d4a: e8 ff     mov   a,#$ff
0d4c: 3f 6c 10  call  $106c
0d4f: f4 b4     mov   a,$b4+x
0d51: f0 26     beq   $0d79
0d53: e2 14     set7  $14
0d55: 9b b4     dec   $b4+x
0d57: d0 0d     bne   $0d66
0d59: f5 a0 05  mov   a,$05a0+x
0d5c: d5 90 05  mov   $0590+x,a
0d5f: e8 00     mov   a,#$00
0d61: d5 80 05  mov   $0580+x,a
0d64: 2f 13     bra   $0d79
0d66: f5 80 05  mov   a,$0580+x
0d69: 60        clrc
0d6a: 95 b0 05  adc   a,$05b0+x
0d6d: d5 80 05  mov   $0580+x,a
0d70: f5 90 05  mov   a,$0590+x
0d73: 95 c0 05  adc   a,$05c0+x
0d76: d5 90 05  mov   $0590+x,a
0d79: f3 14 0c  bbc7  $14,$0d88
0d7c: c8 08     cmp   x,#$08
0d7e: b0 05     bcs   $0d85
0d80: f5 08 02  mov   a,$0208+x
0d83: d0 03     bne   $0d88
0d85: 3f 7c 10  call  $107c
0d88: f2 14     clr7  $14
0d8a: f5 10 05  mov   a,$0510+x
0d8d: f0 29     beq   $0db8
0d8f: f4 a4     mov   a,$a4+x
0d91: f0 04     beq   $0d97
0d93: 9b a4     dec   $a4+x
0d95: 2f 21     bra   $0db8
0d97: e2 14     set7  $14
0d99: f5 50 05  mov   a,$0550+x
0d9c: f0 1a     beq   $0db8
0d9e: f5 50 05  mov   a,$0550+x
0da1: 9c        dec   a
0da2: d5 50 05  mov   $0550+x,a
0da5: f5 40 03  mov   a,$0340+x
0da8: 60        clrc
0da9: 95 f0 04  adc   a,$04f0+x
0dac: d5 40 03  mov   $0340+x,a
0daf: f5 50 03  mov   a,$0350+x
0db2: 95 00 05  adc   a,$0500+x
0db5: d5 50 03  mov   $0350+x,a
0db8: f5 20 04  mov   a,$0420+x
0dbb: f0 5b     beq   $0e18
0dbd: f5 74 00  mov   a,$0074+x
0dc0: 75 10 04  cmp   a,$0410+x
0dc3: d0 50     bne   $0e15
0dc5: f5 50 03  mov   a,$0350+x
0dc8: fd        mov   y,a
0dc9: f5 40 03  mov   a,$0340+x
0dcc: da 0c     movw  $0c,ya
0dce: f4 54     mov   a,$54+x
0dd0: 74 84     cmp   a,$84+x
0dd2: d0 08     bne   $0ddc
0dd4: f5 50 04  mov   a,$0450+x
0dd7: d5 40 04  mov   $0440+x,a
0dda: 2f 15     bra   $0df1
0ddc: bb 54     inc   $54+x
0dde: f5 30 04  mov   a,$0430+x
0de1: 60        clrc
0de2: 95 60 04  adc   a,$0460+x
0de5: d5 30 04  mov   $0430+x,a
0de8: f5 40 04  mov   a,$0440+x
0deb: 95 70 04  adc   a,$0470+x
0dee: d5 40 04  mov   $0440+x,a
0df1: f5 00 04  mov   a,$0400+x
0df4: 60        clrc
0df5: 95 20 04  adc   a,$0420+x
0df8: d5 00 04  mov   $0400+x,a
0dfb: c4 15     mov   $15,a
0dfd: 1c        asl   a
0dfe: 1c        asl   a
0dff: 90 02     bcc   $0e03
0e01: 48 ff     eor   a,#$ff
0e03: fd        mov   y,a
0e04: f5 40 04  mov   a,$0440+x
0e07: cf        mul   ya
0e08: dd        mov   a,y
0e09: 8d 00     mov   y,#$00
0e0b: 3f 7e 11  call  $117e
0e0e: 7a 0c     addw  ya,$0c
0e10: da 0c     movw  $0c,ya
0e12: 5f 25 0e  jmp   $0e25

0e15: bc        inc   a
0e16: d4 74     mov   $74+x,a
0e18: f3 14 4a  bbc7  $14,$0e65
0e1b: f5 40 03  mov   a,$0340+x
0e1e: c4 0c     mov   $0c,a
0e20: f5 50 03  mov   a,$0350+x
0e23: c4 0d     mov   $0d,a
0e25: 3f 36 0c  call  $0c36
0e28: c8 08     cmp   x,#$08
0e2a: b0 08     bcs   $0e34
0e2c: f5 08 02  mov   a,$0208+x
0e2f: 15 88 06  or    a,$0688+x
0e32: d0 31     bne   $0e65
0e34: e4 2c     mov   a,$2c
0e36: 28 7f     and   a,#$7f
0e38: 60        clrc
0e39: 88 02     adc   a,#$02
0e3b: fd        mov   y,a
0e3c: f5 80 03  mov   a,$0380+x
0e3f: 3f 54 11  call  $1154
0e42: fc        inc   y
0e43: f5 90 03  mov   a,$0390+x
0e46: 3f 54 11  call  $1154
0e49: fc        inc   y
0e4a: f5 30 02  mov   a,$0230+x
0e4d: 3f 54 11  call  $1154
0e50: fc        inc   y
0e51: f5 40 02  mov   a,$0240+x
0e54: 3f 54 11  call  $1154
0e57: fc        inc   y
0e58: f5 50 02  mov   a,$0250+x
0e5b: 3f 54 11  call  $1154
0e5e: fc        inc   y
0e5f: f5 60 02  mov   a,$0260+x
0e62: 3f 54 11  call  $1154
0e65: 6f        ret

0e66: e8 20     mov   a,#$20
0e68: eb 19     mov   y,$19
0e6a: cf        mul   ya
0e6b: da 00     movw  $00,ya
0e6d: e4 36     mov   a,$36
0e6f: 60        clrc
0e70: 84 00     adc   a,$00
0e72: c4 36     mov   $36,a
0e74: e8 00     mov   a,#$00
0e76: 84 01     adc   a,$01
0e78: f0 06     beq   $0e80
0e7a: 3f 81 0e  call  $0e81
0e7d: 3f b8 0e  call  $0eb8
0e80: 6f        ret

0e81: e4 23     mov   a,$23
0e83: f0 1e     beq   $0ea3
0e85: e4 1c     mov   a,$1c
0e87: d0 1a     bne   $0ea3
0e89: 8f 01 1c  mov   $1c,#$01
0e8c: ba 27     movw  ya,$27
0e8e: 7a 1d     addw  ya,$1d
0e90: da 1d     movw  $1d,ya
0e92: ba 29     movw  ya,$29
0e94: 7a 1f     addw  ya,$1f
0e96: da 1f     movw  $1f,ya
0e98: 6e 23 08  dbnz  $23,$0ea3
0e9b: e4 21     mov   a,$21
0e9d: c4 1e     mov   $1e,a
0e9f: e4 22     mov   a,$22
0ea1: c4 20     mov   $20,a
0ea3: e4 32     mov   a,$32
0ea5: f0 10     beq   $0eb7
0ea7: ba 34     movw  ya,$34
0ea9: 7a 2f     addw  ya,$2f
0eab: da 2f     movw  $2f,ya
0ead: 6e 32 04  dbnz  $32,$0eb4
0eb0: e4 33     mov   a,$33
0eb2: c4 30     mov   $30,a
0eb4: 8f 04 39  mov   $39,#$04
0eb7: 6f        ret

0eb8: e4 39     mov   a,$39
0eba: f0 16     beq   $0ed2
0ebc: 68 04     cmp   a,#$04
0ebe: f0 12     beq   $0ed2
0ec0: 68 01     cmp   a,#$01
0ec2: d0 0f     bne   $0ed3
0ec4: ab 38     inc   $38
0ec6: e4 38     mov   a,$38
0ec8: 68 fc     cmp   a,#$fc
0eca: 90 06     bcc   $0ed2
0ecc: 8f ff 38  mov   $38,#$ff
0ecf: 8f 00 39  mov   $39,#$00
0ed2: 6f        ret

0ed3: 8b 38     dec   $38
0ed5: d0 fb     bne   $0ed2
0ed7: 68 02     cmp   a,#$02
0ed9: d0 0c     bne   $0ee7
0edb: e8 80     mov   a,#$80
0edd: c5 10 02  mov   $0210,a
0ee0: 8f 00 39  mov   $39,#$00
0ee3: 3f 16 19  call  $1916
0ee6: 6f        ret

0ee7: e8 80     mov   a,#$80
0ee9: c5 10 02  mov   $0210,a
0eec: 8f 00 39  mov   $39,#$00
0eef: 6f        ret

0ef0: c8 08     cmp   x,#$08
0ef2: b0 13     bcs   $0f07
0ef4: f5 08 02  mov   a,$0208+x
0ef7: d0 0e     bne   $0f07
0ef9: e4 39     mov   a,$39
0efb: f0 0a     beq   $0f07
0efd: 68 04     cmp   a,#$04
0eff: d0 03     bne   $0f04
0f01: 8f 00 39  mov   $39,#$00
0f04: 3f 7c 10  call  $107c
0f07: 6f        ret

0f08: f2 14     clr7  $14
0f0a: f5 c0 03  mov   a,$03c0+x
0f0d: fd        mov   y,a
0f0e: f5 b0 03  mov   a,$03b0+x
0f11: da 0e     movw  $0e,ya
0f13: f4 64     mov   a,$64+x
0f15: f0 0a     beq   $0f21
0f17: f5 f0 03  mov   a,$03f0+x
0f1a: fd        mov   y,a
0f1b: f5 e0 03  mov   a,$03e0+x
0f1e: 3f 2e 10  call  $102e
0f21: f5 b0 04  mov   a,$04b0+x
0f24: f0 0a     beq   $0f30
0f26: f5 a0 04  mov   a,$04a0+x
0f29: 74 94     cmp   a,$94+x
0f2b: d0 03     bne   $0f30
0f2d: 3f 50 10  call  $1050
0f30: f5 90 05  mov   a,$0590+x
0f33: fd        mov   y,a
0f34: f5 80 05  mov   a,$0580+x
0f37: da 0c     movw  $0c,ya
0f39: f4 b4     mov   a,$b4+x
0f3b: f0 0a     beq   $0f47
0f3d: f5 c0 05  mov   a,$05c0+x
0f40: fd        mov   y,a
0f41: f5 b0 05  mov   a,$05b0+x
0f44: 3f da 0f  call  $0fda
0f47: f3 14 3e  bbc7  $14,$0f88
0f4a: c8 08     cmp   x,#$08
0f4c: b0 05     bcs   $0f53
0f4e: f5 08 02  mov   a,$0208+x
0f51: d0 35     bne   $0f88
0f53: f5 90 05  mov   a,$0590+x
0f56: 2d        push  a
0f57: f5 80 05  mov   a,$0580+x
0f5a: 2d        push  a
0f5b: f5 c0 03  mov   a,$03c0+x
0f5e: 2d        push  a
0f5f: f5 b0 03  mov   a,$03b0+x
0f62: 2d        push  a
0f63: ba 0e     movw  ya,$0e
0f65: d5 b0 03  mov   $03b0+x,a
0f68: dd        mov   a,y
0f69: d5 c0 03  mov   $03c0+x,a
0f6c: ba 0c     movw  ya,$0c
0f6e: d5 80 05  mov   $0580+x,a
0f71: dd        mov   a,y
0f72: d5 90 05  mov   $0590+x,a
0f75: 3f 7c 10  call  $107c
0f78: ae        pop   a
0f79: d5 b0 03  mov   $03b0+x,a
0f7c: ae        pop   a
0f7d: d5 c0 03  mov   $03c0+x,a
0f80: ae        pop   a
0f81: d5 80 05  mov   $0580+x,a
0f84: ae        pop   a
0f85: d5 90 05  mov   $0590+x,a
0f88: f2 14     clr7  $14
0f8a: f5 e2 06  mov   a,$06e2+x
0f8d: f0 07     beq   $0f96
0f8f: f5 d0 06  mov   a,$06d0+x
0f92: f0 02     beq   $0f96
0f94: e2 14     set7  $14
0f96: f5 50 03  mov   a,$0350+x
0f99: fd        mov   y,a
0f9a: f5 40 03  mov   a,$0340+x
0f9d: da 0c     movw  $0c,ya
0f9f: f5 10 05  mov   a,$0510+x
0fa2: f0 13     beq   $0fb7
0fa4: f4 a4     mov   a,$a4+x
0fa6: d0 0f     bne   $0fb7
0fa8: f5 50 05  mov   a,$0550+x
0fab: f0 0a     beq   $0fb7
0fad: f5 00 05  mov   a,$0500+x
0fb0: fd        mov   y,a
0fb1: f5 f0 04  mov   a,$04f0+x
0fb4: 3f fc 0f  call  $0ffc
0fb7: f5 20 04  mov   a,$0420+x
0fba: f0 17     beq   $0fd3
0fbc: f5 10 04  mov   a,$0410+x
0fbf: 74 74     cmp   a,$74+x
0fc1: d0 10     bne   $0fd3
0fc3: f5 f0 05  mov   a,$05f0+x
0fc6: fd        mov   y,a
0fc7: f5 20 04  mov   a,$0420+x
0fca: cf        mul   ya
0fcb: dd        mov   a,y
0fcc: 60        clrc
0fcd: 95 00 04  adc   a,$0400+x
0fd0: 5f fb 0d  jmp   $0dfb

0fd3: f3 14 03  bbc7  $14,$0fd9
0fd6: 5f 25 0e  jmp   $0e25

0fd9: 6f        ret

0fda: e2 14     set7  $14
0fdc: cb 15     mov   $15,y
0fde: 3f 7e 11  call  $117e
0fe1: 6d        push  y
0fe2: fd        mov   y,a
0fe3: f5 f0 05  mov   a,$05f0+x
0fe6: cf        mul   ya
0fe7: cb 00     mov   $00,y
0fe9: 8f 00 01  mov   $01,#$00
0fec: f5 f0 05  mov   a,$05f0+x
0fef: fd        mov   y,a
0ff0: ae        pop   a
0ff1: cf        mul   ya
0ff2: 7a 00     addw  ya,$00
0ff4: 3f 7e 11  call  $117e
0ff7: 7a 0c     addw  ya,$0c
0ff9: da 0c     movw  $0c,ya
0ffb: 6f        ret

0ffc: e2 14     set7  $14
0ffe: cb 15     mov   $15,y
1000: 3f 7e 11  call  $117e
1003: 6d        push  y
1004: fd        mov   y,a
1005: f5 f0 05  mov   a,$05f0+x
1008: cf        mul   ya
1009: cb 00     mov   $00,y
100b: 8f 00 01  mov   $01,#$00
100e: f5 f0 05  mov   a,$05f0+x
1011: ee        pop   y
1012: cf        mul   ya
1013: 7a 00     addw  ya,$00
1015: 3f 7e 11  call  $117e
1018: 2d        push  a
1019: f5 40 05  mov   a,$0540+x
101c: 30 06     bmi   $1024
101e: ae        pop   a
101f: 7a 0c     addw  ya,$0c
1021: da 0c     movw  $0c,ya
1023: 6f        ret

1024: ae        pop   a
1025: da 0a     movw  $0a,ya
1027: ba 0c     movw  ya,$0c
1029: 9a 0a     subw  ya,$0a
102b: da 0c     movw  $0c,ya
102d: 6f        ret

102e: e2 14     set7  $14
1030: cb 15     mov   $15,y
1032: 3f 7e 11  call  $117e
1035: 6d        push  y
1036: fd        mov   y,a
1037: f5 f0 05  mov   a,$05f0+x
103a: cf        mul   ya
103b: cb 00     mov   $00,y
103d: 8f 00 01  mov   $01,#$00
1040: f5 f0 05  mov   a,$05f0+x
1043: fd        mov   y,a
1044: ae        pop   a
1045: cf        mul   ya
1046: 7a 00     addw  ya,$00
1048: 3f 7e 11  call  $117e
104b: 7a 0e     addw  ya,$0e
104d: da 0e     movw  $0e,ya
104f: 6f        ret

1050: e2 14     set7  $14
1052: f5 f0 05  mov   a,$05f0+x
1055: fd        mov   y,a
1056: f5 b0 04  mov   a,$04b0+x
1059: cf        mul   ya
105a: dd        mov   a,y
105b: 60        clrc
105c: 95 e0 04  adc   a,$04e0+x
105f: 1c        asl   a
1060: 90 02     bcc   $1064
1062: 48 ff     eor   a,#$ff
1064: fd        mov   y,a
1065: f5 c0 04  mov   a,$04c0+x
1068: cf        mul   ya
1069: dd        mov   a,y
106a: 48 ff     eor   a,#$ff
106c: d5 90 04  mov   $0490+x,a
106f: 6f        ret

1070: e8 7f     mov   a,#$7f
1072: 8d 0c     mov   y,#$0c
1074: 3f 54 11  call  $1154
1077: 8d 1c     mov   y,#$1c
1079: 5f 54 11  jmp   $1154

107c: f5 c0 03  mov   a,$03c0+x
107f: fd        mov   y,a
1080: c8 08     cmp   x,#$08
1082: b0 16     bcs   $109a
1084: e8 5f     mov   a,#$5f
1086: cf        mul   ya
1087: e4 30     mov   a,$30
1089: cf        mul   ya
108a: e4 38     mov   a,$38
108c: 68 ff     cmp   a,#$ff
108e: f0 01     beq   $1091
1090: cf        mul   ya
1091: e4 31     mov   a,$31
1093: 68 ff     cmp   a,#$ff
1095: f0 0a     beq   $10a1
1097: cf        mul   ya
1098: 2f 07     bra   $10a1
109a: e8 ff     mov   a,#$ff
109c: 68 ff     cmp   a,#$ff
109e: f0 01     beq   $10a1
10a0: cf        mul   ya
10a1: f5 a0 03  mov   a,$03a0+x
10a4: 68 ff     cmp   a,#$ff
10a6: f0 01     beq   $10a9
10a8: cf        mul   ya                ; apply note volume
10a9: f5 90 04  mov   a,$0490+x
10ac: 68 ff     cmp   a,#$ff
10ae: f0 01     beq   $10b1
10b0: cf        mul   ya
10b1: dd        mov   a,y
10b2: 5c        lsr   a
10b3: 8d 80     mov   y,#$80
10b5: cf        mul   ya
10b6: cb 00     mov   $00,y
10b8: cb 02     mov   $02,y
10ba: cb 03     mov   $03,y
10bc: e4 3c     mov   a,$3c
10be: d0 28     bne   $10e8
10c0: e8 0a     mov   a,#$0a
10c2: 80        setc
10c3: b5 90 05  sbc   a,$0590+x
10c6: b0 02     bcs   $10ca
10c8: e8 00     mov   a,#$00
10ca: 8d 19     mov   y,#$19
10cc: cf        mul   ya
10cd: 48 ff     eor   a,#$ff
10cf: eb 00     mov   y,$00
10d1: cf        mul   ya
10d2: cb 02     mov   $02,y
10d4: f5 90 05  mov   a,$0590+x
10d7: 80        setc
10d8: a8 0a     sbc   a,#$0a
10da: b0 02     bcs   $10de
10dc: e8 00     mov   a,#$00
10de: 8d 19     mov   y,#$19
10e0: cf        mul   ya
10e1: 48 ff     eor   a,#$ff
10e3: eb 00     mov   y,$00
10e5: cf        mul   ya
10e6: cb 03     mov   $03,y
10e8: c8 08     cmp   x,#$08
10ea: b0 06     bcs   $10f2
10ec: f5 08 02  mov   a,$0208+x
10ef: f0 01     beq   $10f2
10f1: 6f        ret

10f2: e4 2c     mov   a,$2c
10f4: 28 7f     and   a,#$7f
10f6: 60        clrc
10f7: 88 00     adc   a,#$00
10f9: fd        mov   y,a
10fa: e4 02     mov   a,$02
10fc: 3f 54 11  call  $1154
10ff: fc        inc   y
1100: e4 03     mov   a,$03
1102: 5f 54 11  jmp   $1154

1105: c4 00     mov   $00,a
1107: 8d 7d     mov   y,#$7d
1109: cc f2 00  mov   $00f2,y
110c: e5 f3 00  mov   a,$00f3
110f: 28 0f     and   a,#$0f
1111: 64 00     cmp   a,$00
1113: f0 2c     beq   $1141
1115: 1c        asl   a
1116: 1c        asl   a
1117: 1c        asl   a
1118: 80        setc
1119: 84 1b     adc   a,$1b
111b: c4 1b     mov   $1b,a
111d: e8 00     mov   a,#$00
111f: c4 1c     mov   $1c,a
1121: 8d 04     mov   y,#$04
1123: cd 00     mov   x,#$00
1125: f6 4f 11  mov   a,$114f+y
1128: c5 f2 00  mov   $00f2,a
112b: c9 f3 00  mov   $00f3,x
112e: fe f5     dbnz  y,$1125
1130: 8d 6c     mov   y,#$6c
1132: 3f 5b 11  call  $115b
1135: 08 20     or    a,#$20
1137: 3f 54 11  call  $1154
113a: 8d 7d     mov   y,#$7d
113c: e4 00     mov   a,$00
113e: 3f 54 11  call  $1154
1141: 1c        asl   a
1142: 1c        asl   a
1143: 1c        asl   a
1144: d0 01     bne   $1147
1146: bc        inc   a
1147: 48 ff     eor   a,#$ff
1149: 80        setc
114a: 88 ff     adc   a,#$ff
114c: 8d 6d     mov   y,#$6d
114e: 2f 04     bra   $1154
1150: 2c 3c 0d  rol   $0d3c
1153: 4d        push  x
1154: cc f2 00  mov   $00f2,y
1157: c5 f3 00  mov   $00f3,a
115a: 6f        ret

115b: cc f2 00  mov   $00f2,y
115e: e5 f3 00  mov   a,$00f3
1161: 6f        ret

1162: 6b 00     ror   $00
1164: 30 03     bmi   $1169
1166: 48 ff     eor   a,#$ff
1168: bc        inc   a
1169: 8d 00     mov   y,#$00
116b: 9e        div   ya,x
116c: 2d        push  a
116d: e8 00     mov   a,#$00
116f: 9e        div   ya,x
1170: ee        pop   y
1171: e3 00 07  bbs7  $00,$117b
1174: da 00     movw  $00,ya
1176: e8 00     mov   a,#$00
1178: fd        mov   y,a
1179: 9a 00     subw  ya,$00
117b: f8 2b     mov   x,$2b
117d: 6f        ret

117e: f3 15 07  bbc7  $15,$1188
1181: da 00     movw  $00,ya
1183: e8 00     mov   a,#$00
1185: fd        mov   y,a
1186: 9a 00     subw  ya,$00
1188: 6f        ret

; dispatch vcmd in A (e0-ff)
1189: 28 1f     and   a,#$1f            ; e0-ff => 00-1f
118b: 1c        asl   a
118c: fd        mov   y,a
118d: f6 97 11  mov   a,$1197+y
1190: 2d        push  a
1191: f6 96 11  mov   a,$1196+y
1194: 2d        push  a                 ; push jump address from table
1195: 6f        ret

; vcmd dispatch table
1196: dw $11d6  ; e0 - set instrument
1198: dw $1218  ; e1 - pan
119a: dw $122a  ; e2 - pan fade
119c: dw $1247  ; e3 - vibrato on
119e: dw $1264  ; e4 - vibrato off
11a0: dw $126e  ; e5 - master volume
11a2: dw $1278  ; e6 - master volume fade
11a4: dw $1293  ; e7 - tempo
11a6: dw $12c1  ; e8 - tempo fade
11a8: dw $1325  ; e9 - global transpose
11aa: dw $132c  ; ea - per-voice transpose
11ac: dw $1334  ; eb - tremolo on
11ae: dw $1348  ; ec - tremolo off
11b0: dw $1354  ; ed - volume
11b2: dw $135c  ; ee - volume fade
11b4: dw $1379  ; ef - call subroutine
11b6: dw $1424  ; f0 - vibrato fade
11b8: dw $1445  ; f1 - pitch envelope (release)
11ba: dw $145e  ; f2 - pitch envelope (attack)
11bc: dw $1477  ; f3 - pitch envelope off
11be: dw $147e  ; f4 - tuning
11c0: dw $1486  ; f5 - echo vbits/volume
11c2: dw $1497  ; f6 - disable echo
11c4: dw $14a8  ; f7 - set echo params
11c6: dw $14f2  ; f8 - echo volume fade
11c8: dw $1519  ; f9 - pitch slide
11ca: dw $1535  ; fa - set perc patch base
11cc: dw $1542  ; fb
11ce: dw $1549  ; fc - nop
11d0: dw $1549  ; fd - nop
11d2: dw $1549  ; fe - nop
11d4: dw $1549  ; ff - nop

; vcmd e0 - set instrument
11d6: 3f c0 0c  call  $0cc0
11d9: d5 a0 06  mov   $06a0+x,a
; set sample
11dc: c8 08     cmp   x,#$08
11de: b0 07     bcs   $11e7
11e0: 2d        push  a
11e1: f5 08 02  mov   a,$0208+x
11e4: d0 2f     bne   $1215
11e6: ae        pop   a
11e7: 8d 06     mov   y,#$06
11e9: cf        mul   ya
11ea: 7a 47     addw  ya,$47
11ec: da 00     movw  $00,ya
11ee: 8d 00     mov   y,#$00
11f0: f7 00     mov   a,($00)+y
11f2: d5 30 02  mov   $0230+x,a
11f5: fc        inc   y
11f6: f7 00     mov   a,($00)+y
11f8: d5 40 02  mov   $0240+x,a
11fb: fc        inc   y
11fc: f7 00     mov   a,($00)+y
11fe: d5 50 02  mov   $0250+x,a
1201: fc        inc   y
1202: f7 00     mov   a,($00)+y
1204: d5 60 02  mov   $0260+x,a
1207: fc        inc   y
1208: f7 00     mov   a,($00)+y
120a: d5 80 02  mov   $0280+x,a
120d: fc        inc   y
120e: f7 00     mov   a,($00)+y
1210: d5 70 02  mov   $0270+x,a
1213: 60        clrc
1214: 6f        ret

1215: ae        pop   a
1216: 60        clrc
1217: 6f        ret

; vcmd e1 - pan
1218: f5 70 05  mov   a,$0570+x
121b: f0 05     beq   $1222
121d: 3f c0 0c  call  $0cc0
1220: 60        clrc
1221: 6f        ret

1222: 3f c0 0c  call  $0cc0
1225: d5 90 05  mov   $0590+x,a
1228: 60        clrc
1229: 6f        ret

; vcmd e2 - pan fade
122a: 3f c0 0c  call  $0cc0
122d: d4 b4     mov   $b4+x,a
122f: 2d        push  a
1230: 3f c0 0c  call  $0cc0
1233: d5 a0 05  mov   $05a0+x,a
1236: 80        setc
1237: b5 90 05  sbc   a,$0590+x
123a: ce        pop   x
123b: 3f 62 11  call  $1162
123e: d5 b0 05  mov   $05b0+x,a
1241: dd        mov   a,y
1242: d5 c0 05  mov   $05c0+x,a
1245: 60        clrc
1246: 6f        ret

; vcmd e3 - vibrato on
1247: 3f c0 0c  call  $0cc0
124a: d5 10 04  mov   $0410+x,a
124d: 3f c0 0c  call  $0cc0
1250: d5 20 04  mov   $0420+x,a
1253: 3f c0 0c  call  $0cc0
1256: d5 40 04  mov   $0440+x,a
1259: d5 50 04  mov   $0450+x,a
125c: e8 00     mov   a,#$00
125e: d4 84     mov   $84+x,a
1260: d4 54     mov   $54+x,a
1262: 60        clrc
1263: 6f        ret

; vcmd e4 - vibrato off
1264: e8 00     mov   a,#$00
1266: d5 00 04  mov   $0400+x,a
1269: d5 20 04  mov   $0420+x,a
126c: 60        clrc
126d: 6f        ret

; vcmd e5 - master volume
126e: 3f c0 0c  call  $0cc0
1271: c4 30     mov   $30,a
1273: 8f 04 39  mov   $39,#$04
1276: 60        clrc
1277: 6f        ret

; vcmd e6 - master volume fade
1278: 3f c0 0c  call  $0cc0
127b: c4 32     mov   $32,a
127d: 3f c0 0c  call  $0cc0
1280: c4 33     mov   $33,a
1282: 80        setc
1283: a4 30     sbc   a,$30
1285: f8 32     mov   x,$32
1287: 3f 62 11  call  $1162
128a: c5 34 00  mov   $0034,a
128d: dd        mov   a,y
128e: c5 35 00  mov   $0035,a
1291: 60        clrc
1292: 6f        ret

; vcmd e7 - tempo
1293: 3f c0 0c  call  $0cc0
1296: c8 08     cmp   x,#$08
1298: 90 08     bcc   $12a2
129a: d5 e0 05  mov   $05e0+x,a
129d: d5 00 06  mov   $0600+x,a
12a0: 60        clrc
12a1: 6f        ret

12a2: c4 00     mov   $00,a
12a4: 4d        push  x
12a5: cd 07     mov   x,#$07
12a7: e4 00     mov   a,$00
12a9: d5 e0 05  mov   $05e0+x,a
12ac: d5 00 06  mov   $0600+x,a
12af: e8 00     mov   a,#$00
12b1: d5 f0 05  mov   $05f0+x,a
12b4: 1d        dec   x
12b5: 10 f0     bpl   $12a7
12b7: e4 3e     mov   a,$3e
12b9: f0 03     beq   $12be
12bb: 3f 9c 18  call  $189c
12be: ce        pop   x
12bf: 80        setc
12c0: 6f        ret

; vcmd e8 - tempo fade
12c1: c8 08     cmp   x,#$08
12c3: 90 1d     bcc   $12e2
12c5: 3f c0 0c  call  $0cc0
12c8: d4 c4     mov   $c4+x,a
12ca: 2d        push  a
12cb: 3f c0 0c  call  $0cc0
12ce: d5 10 06  mov   $0610+x,a
12d1: 80        setc
12d2: b5 e0 05  sbc   a,$05e0+x
12d5: ce        pop   x
12d6: 3f 62 11  call  $1162
12d9: c5 20 06  mov   $0620,a
12dc: dd        mov   a,y
12dd: c5 31 06  mov   $0631,a
12e0: 60        clrc
12e1: 6f        ret

12e2: 3f c0 0c  call  $0cc0
12e5: c4 04     mov   $04,a
12e7: 3f c0 0c  call  $0cc0
12ea: c4 06     mov   $06,a
12ec: f5 e0 05  mov   a,$05e0+x
12ef: c4 08     mov   $08,a
12f1: e4 3e     mov   a,$3e
12f3: f0 03     beq   $12f8
12f5: 3f c2 18  call  $18c2
12f8: e4 06     mov   a,$06
12fa: 80        setc
12fb: a4 08     sbc   a,$08
12fd: f8 04     mov   x,$04
12ff: 3f 62 11  call  $1162
1302: c5 08 00  mov   $0008,a
1305: dd        mov   a,y
1306: c5 0a 00  mov   $000a,a
1309: 4d        push  x
130a: cd 07     mov   x,#$07
130c: e4 04     mov   a,$04
130e: d4 c4     mov   $c4+x,a
1310: e4 06     mov   a,$06
1312: d5 10 06  mov   $0610+x,a
1315: e4 08     mov   a,$08
1317: d5 20 06  mov   $0620+x,a
131a: e4 0a     mov   a,$0a
131c: d5 30 06  mov   $0630+x,a
131f: 1d        dec   x
1320: 10 ea     bpl   $130c
1322: ce        pop   x
1323: 60        clrc
1324: 6f        ret

; vcmd e9 - global transpose
1325: 3f c0 0c  call  $0cc0
1328: c4 3b     mov   $3b,a
132a: 60        clrc
132b: 6f        ret

; vcmd ea - per-voice transpose
132c: 3f c0 0c  call  $0cc0
132f: d5 60 03  mov   $0360+x,a
1332: 60        clrc
1333: 6f        ret

; vcmd eb - tremolo on
1334: 3f c0 0c  call  $0cc0
1337: d5 a0 04  mov   $04a0+x,a
133a: 3f c0 0c  call  $0cc0
133d: d5 b0 04  mov   $04b0+x,a
1340: 3f c0 0c  call  $0cc0
1343: d5 c0 04  mov   $04c0+x,a
1346: 60        clrc
1347: 6f        ret

; vcmd ec - tremolo off
1348: e8 ff     mov   a,#$ff
134a: d5 90 04  mov   $0490+x,a
134d: e8 00     mov   a,#$00
134f: d5 b0 04  mov   $04b0+x,a
1352: 60        clrc
1353: 6f        ret

; vcmd ed - volume
1354: 3f c0 0c  call  $0cc0
1357: d5 c0 03  mov   $03c0+x,a
135a: 60        clrc
135b: 6f        ret

; vcmd ee - volume fade
135c: 3f c0 0c  call  $0cc0
135f: d4 64     mov   $64+x,a
1361: 2d        push  a
1362: 3f c0 0c  call  $0cc0
1365: d5 d0 03  mov   $03d0+x,a
1368: 80        setc
1369: b5 c0 03  sbc   a,$03c0+x
136c: ce        pop   x
136d: 3f 62 11  call  $1162
1370: d5 e0 03  mov   $03e0+x,a
1373: dd        mov   a,y
1374: d5 f0 03  mov   $03f0+x,a
1377: 60        clrc
1378: 6f        ret

; vcmd ef - call subroutine
1379: 3f c0 0c  call  $0cc0
137c: c4 00     mov   $00,a
137e: 3f c0 0c  call  $0cc0
1381: c4 01     mov   $01,a
1383: 3f c0 0c  call  $0cc0
1386: c4 02     mov   $02,a
1388: f4 d4     mov   a,$d4+x
138a: d0 20     bne   $13ac
138c: e4 02     mov   a,$02
138e: d4 d4     mov   $d4+x,a
1390: e4 00     mov   a,$00
1392: d5 d0 02  mov   $02d0+x,a
1395: d5 90 02  mov   $0290+x,a
1398: e4 01     mov   a,$01
139a: d5 e0 02  mov   $02e0+x,a
139d: d5 a0 02  mov   $02a0+x,a
13a0: e4 2d     mov   a,$2d
13a2: d5 b0 02  mov   $02b0+x,a
13a5: e4 2e     mov   a,$2e
13a7: d5 c0 02  mov   $02c0+x,a
13aa: 2f 6c     bra   $1418
13ac: d5 30 03  mov   $0330+x,a
13af: e4 02     mov   a,$02
13b1: d4 d4     mov   $d4+x,a
13b3: e4 00     mov   a,$00
13b5: d5 f0 02  mov   $02f0+x,a
13b8: d5 90 02  mov   $0290+x,a
13bb: e4 01     mov   a,$01
13bd: d5 00 03  mov   $0300+x,a
13c0: d5 a0 02  mov   $02a0+x,a
13c3: e4 2d     mov   a,$2d
13c5: d5 10 03  mov   $0310+x,a
13c8: e4 2e     mov   a,$2e
13ca: d5 20 03  mov   $0320+x,a
13cd: 2f 49     bra   $1418
13cf: f5 30 03  mov   a,$0330+x
13d2: d0 0e     bne   $13e2
13d4: f5 b0 02  mov   a,$02b0+x
13d7: d5 90 02  mov   $0290+x,a
13da: f5 c0 02  mov   a,$02c0+x
13dd: d5 a0 02  mov   $02a0+x,a
13e0: 2f 36     bra   $1418
13e2: d4 d4     mov   $d4+x,a
13e4: e8 00     mov   a,#$00
13e6: d5 30 03  mov   $0330+x,a
13e9: f5 10 03  mov   a,$0310+x
13ec: d5 90 02  mov   $0290+x,a
13ef: f5 20 03  mov   a,$0320+x
13f2: d5 a0 02  mov   $02a0+x,a
13f5: 2f 21     bra   $1418
13f7: f5 30 03  mov   a,$0330+x
13fa: d0 0e     bne   $140a
13fc: f5 d0 02  mov   a,$02d0+x
13ff: d5 90 02  mov   $0290+x,a
1402: f5 e0 02  mov   a,$02e0+x
1405: d5 a0 02  mov   $02a0+x,a
1408: 2f 0e     bra   $1418
140a: f5 f0 02  mov   a,$02f0+x
140d: d5 90 02  mov   $0290+x,a
1410: f5 00 03  mov   a,$0300+x
1413: d5 a0 02  mov   $02a0+x,a
1416: 2f 00     bra   $1418
1418: f5 90 02  mov   a,$0290+x
141b: c4 2d     mov   $2d,a
141d: f5 a0 02  mov   a,$02a0+x
1420: c4 2e     mov   $2e,a
1422: 60        clrc
1423: 6f        ret

; vcmd f0 - vibrato fade
1424: 3f c0 0c  call  $0cc0
1427: d4 84     mov   $84+x,a
1429: 2d        push  a
142a: f5 50 04  mov   a,$0450+x
142d: ce        pop   x
142e: 80        setc
142f: 3f 62 11  call  $1162
1432: d5 60 04  mov   $0460+x,a
1435: dd        mov   a,y
1436: d5 70 04  mov   $0470+x,a
1439: e8 00     mov   a,#$00
143b: d4 54     mov   $54+x,a
143d: d5 40 04  mov   $0440+x,a
1440: d5 30 04  mov   $0430+x,a
1443: 60        clrc
1444: 6f        ret

; vcmd f1 - pitch envelope (release)
1445: 3f c0 0c  call  $0cc0
1448: d5 60 05  mov   $0560+x,a
144b: 3f c0 0c  call  $0cc0
144e: d5 20 05  mov   $0520+x,a
1451: 3f c0 0c  call  $0cc0
1454: d5 40 05  mov   $0540+x,a
1457: e8 01     mov   a,#$01
1459: d5 10 05  mov   $0510+x,a
145c: 60        clrc
145d: 6f        ret

; vcmd f2 - pitch envelope (attack)
145e: 3f c0 0c  call  $0cc0
1461: d5 60 05  mov   $0560+x,a
1464: 3f c0 0c  call  $0cc0
1467: d5 20 05  mov   $0520+x,a
146a: 3f c0 0c  call  $0cc0
146d: d5 40 05  mov   $0540+x,a
1470: e8 02     mov   a,#$02
1472: d5 10 05  mov   $0510+x,a
1475: 60        clrc
1476: 6f        ret

; vcmd f3 - pitch envelope off
1477: e8 00     mov   a,#$00
1479: d5 10 05  mov   $0510+x,a
147c: 60        clrc
147d: 6f        ret

; vcmd f4 - tuning
147e: 3f c0 0c  call  $0cc0
1481: d5 70 03  mov   $0370+x,a
1484: 60        clrc
1485: 6f        ret

; vcmd f5 - echo vbits/volume
1486: 3f c0 0c  call  $0cc0
1489: c4 26     mov   $26,a
148b: 3f c0 0c  call  $0cc0
148e: c4 1e     mov   $1e,a
1490: 3f c0 0c  call  $0cc0
1493: c4 20     mov   $20,a
1495: 60        clrc
1496: 6f        ret

; vcmd f6 - disable echo
1497: e8 00     mov   a,#$00
1499: c4 24     mov   $24,a
149b: c4 26     mov   $26,a
149d: c4 1e     mov   $1e,a
149f: c4 20     mov   $20,a
14a1: 3f 05 11  call  $1105
14a4: f8 2b     mov   x,$2b
14a6: 60        clrc
14a7: 6f        ret

; vcmd f7 - set echo params
14a8: 3f c0 0c  call  $0cc0
14ab: c4 24     mov   $24,a
14ad: 3f 05 11  call  $1105
14b0: f8 2b     mov   x,$2b
14b2: 3f c0 0c  call  $0cc0
14b5: c4 25     mov   $25,a
14b7: 3f c0 0c  call  $0cc0
14ba: 8d 08     mov   y,#$08
14bc: cf        mul   ya
14bd: 5d        mov   x,a
14be: 8d 0f     mov   y,#$0f
14c0: f5 d2 14  mov   a,$14d2+x
14c3: 3f 54 11  call  $1154
14c6: 3d        inc   x
14c7: dd        mov   a,y
14c8: 60        clrc
14c9: 88 10     adc   a,#$10
14cb: fd        mov   y,a
14cc: 10 f2     bpl   $14c0
14ce: f8 2b     mov   x,$2b
14d0: 60        clrc
14d1: 6f        ret

; echo FIR presets
14d2: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
14da: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
14e2: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
14ea: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; vcmd f8 - echo volume fade
14f2: 3f c0 0c  call  $0cc0
14f5: c4 23     mov   $23,a
14f7: 3f c0 0c  call  $0cc0
14fa: c4 21     mov   $21,a
14fc: 80        setc
14fd: a4 1e     sbc   a,$1e
14ff: f8 23     mov   x,$23
1501: 3f 62 11  call  $1162
1504: da 27     movw  $27,ya
1506: 3f c0 0c  call  $0cc0
1509: c4 22     mov   $22,a
150b: 80        setc
150c: a4 20     sbc   a,$20
150e: f8 23     mov   x,$23
1510: 3f 62 11  call  $1162
1513: da 29     movw  $29,ya
1515: f8 2b     mov   x,$2b
1517: 60        clrc
1518: 6f        ret

; vcmd f9 - pitch slide
1519: 3f c0 0c  call  $0cc0
151c: d5 60 05  mov   $0560+x,a
151f: 3f c0 0c  call  $0cc0
1522: d5 20 05  mov   $0520+x,a
1525: 3f c0 0c  call  $0cc0
1528: 80        setc
1529: a8 80     sbc   a,#$80
152b: d5 40 05  mov   $0540+x,a
152e: e8 03     mov   a,#$03
1530: d5 10 05  mov   $0510+x,a
1533: 60        clrc
1534: 6f        ret

; vcmd fa - set perc patch base
1535: 3f c0 0c  call  $0cc0
1538: c5 b0 06  mov   $06b0,a
153b: e8 00     mov   a,#$00
153d: d5 a0 06  mov   $06a0+x,a
1540: 60        clrc
1541: 6f        ret

; vcmd fb
1542: 3f c0 0c  call  $0cc0
1545: c4 45     mov   $45,a
1547: 60        clrc
1548: 6f        ret

; nop
1549: 60        clrc
154a: 6f        ret

; play song in A
154b: 9c        dec   a
154c: 1c        asl   a
154d: fd        mov   y,a
154e: f7 49     mov   a,($49)+y
1550: c4 4d     mov   $4d,a
1552: fc        inc   y
1553: f7 49     mov   a,($49)+y
1555: c4 4e     mov   $4e,a             ; load section list address to $4e/e
1557: 8f 00 51  mov   $51,#$00
155a: 8f 00 53  mov   $53,#$00
155d: cd 00     mov   x,#$00
155f: 3f 7a 16  call  $167a
1562: f5 08 02  mov   a,$0208+x
1565: d0 07     bne   $156e
1567: f5 dc 0b  mov   a,$0bdc+x
156a: 04 43     or    a,$43
156c: c4 43     mov   $43,a
156e: 3d        inc   x
156f: c8 08     cmp   x,#$08
1571: 90 ec     bcc   $155f
; section list main loop
1573: 8d 00     mov   y,#$00
1575: f7 4d     mov   a,($4d)+y
1577: c4 00     mov   $00,a
1579: c4 4f     mov   $4f,a
157b: 3a 4d     incw  $4d
157d: f7 4d     mov   a,($4d)+y
157f: c4 01     mov   $01,a
1581: c4 50     mov   $50,a
1583: 3a 4d     incw  $4d               ; read a word in section list into $00/1 and $4f/50
1585: 68 00     cmp   a,#$00
1587: d0 28     bne   $15b1             ; $xxxx: load section $xxxx
1589: e4 00     mov   a,$00
158b: f0 47     beq   $15d4             ; $0000: section list end
158d: eb 51     mov   y,$51             ; $00NN $xxxx: repeat section $xxxx in NN times
158f: f0 0e     beq   $159f             ; branch if first repeat
1591: ad ff     cmp   y,#$ff
1593: f0 0c     beq   $15a1             ; do infinite loop if 0xff (standard N-SPC do repeat when the count is negative, so it's slightly different)
1595: 8b 51     dec   $51               ; decrease repeat count
1597: d0 08     bne   $15a1             ; branch if need to repeat
1599: 3a 4d     incw  $4d
159b: 3a 4d     incw  $4d               ; otherwise just skip the next word
159d: 2f d4     bra   $1573
159f: c4 51     mov   $51,a             ; set repeat count
15a1: 8d 00     mov   y,#$00
15a3: f7 4d     mov   a,($4d)+y
15a5: 2d        push  a
15a6: 3a 4d     incw  $4d
15a8: f7 4d     mov   a,($4d)+y
15aa: c4 4e     mov   $4e,a             ; read next word
15ac: ae        pop   a
15ad: c4 4d     mov   $4d,a
15af: 2f c2     bra   $1573
; load section ($00: section header address)
15b1: cd 00     mov   x,#$00
15b3: 8d 00     mov   y,#$00
15b5: e8 00     mov   a,#$00
15b7: d5 00 02  mov   $0200+x,a
15ba: f7 00     mov   a,($00)+y
15bc: c4 02     mov   $02,a
15be: fc        inc   y
15bf: f7 00     mov   a,($00)+y
15c1: c4 03     mov   $03,a
15c3: fc        inc   y
15c4: 04 02     or    a,$02
15c6: f0 03     beq   $15cb             ; skip if null address
15c8: 3f 60 16  call  $1660             ; set $02/3 to vcmd pointer of track X
15cb: 3d        inc   x
15cc: c8 08     cmp   x,#$08
15ce: 90 e5     bcc   $15b5             ; repeat for all 8 tracks
15d0: 8f 01 53  mov   $53,#$01
15d3: 6f        ret

; song end (section list end)
15d4: c5 00 02  mov   $0200,a
15d7: c5 01 02  mov   $0201,a
15da: c5 02 02  mov   $0202,a
15dd: c5 03 02  mov   $0203,a
15e0: c5 04 02  mov   $0204,a
15e3: c5 05 02  mov   $0205,a
15e6: c5 06 02  mov   $0206,a
15e9: c5 07 02  mov   $0207,a
15ec: 8f ff 43  mov   $43,#$ff
15ef: e8 00     mov   a,#$00
15f1: c5 10 02  mov   $0210,a
15f4: 8f 01 40  mov   $40,#$01
15f7: 6f        ret

15f8: 3f 73 15  call  $1573
15fb: e5 00 02  mov   a,$0200
15fe: f0 05     beq   $1605
1600: cd 00     mov   x,#$00
1602: 5f ec 09  jmp   $09ec

1605: 6f        ret

1606: 28 7f     and   a,#$7f
1608: 9c        dec   a
1609: 1c        asl   a
160a: fd        mov   y,a
160b: f7 4b     mov   a,($4b)+y
160d: c4 00     mov   $00,a
160f: fc        inc   y
1610: f7 4b     mov   a,($4b)+y
1612: c4 01     mov   $01,a
1614: cd 0f     mov   x,#$0f
1616: 8d 00     mov   y,#$00
1618: f7 00     mov   a,($00)+y
161a: c4 02     mov   $02,a
161c: fc        inc   y
161d: f7 00     mov   a,($00)+y
161f: c4 03     mov   $03,a
1621: fc        inc   y
1622: 04 02     or    a,$02
1624: f0 1c     beq   $1642
1626: e4 11     mov   a,$11
1628: 28 7f     and   a,#$7f
162a: d5 10 02  mov   $0210+x,a
162d: d5 20 02  mov   $0220+x,a
1630: 3f 60 16  call  $1660
1633: 3f 48 16  call  $1648
1636: f5 dc 0b  mov   a,$0bdc+x
1639: 04 41     or    a,$41
163b: c4 41     mov   $41,a
163d: e8 01     mov   a,#$01
163f: d5 c0 06  mov   $06c0+x,a
1642: 1d        dec   x
1643: c8 08     cmp   x,#$08
1645: b0 d1     bcs   $1618
1647: 6f        ret

1648: e4 11     mov   a,$11
164a: 68 80     cmp   a,#$80
164c: b0 00     bcs   $164e
164e: 6f        ret

164f: e4 13     mov   a,$13
1651: d5 90 05  mov   $0590+x,a
1654: e8 01     mov   a,#$01
1656: d5 70 05  mov   $0570+x,a
1659: 6f        ret

165a: e8 01     mov   a,#$01
165c: d5 d0 06  mov   $06d0+x,a
165f: 6f        ret

; set $02/3 to vcmd pointer of track X
1660: e4 02     mov   a,$02
1662: d5 90 02  mov   $0290+x,a
1665: e4 03     mov   a,$03
1667: d5 a0 02  mov   $02a0+x,a
166a: e8 01     mov   a,#$01
166c: d5 00 02  mov   $0200+x,a
166f: c8 08     cmp   x,#$08
1671: b0 29     bcs   $169c
1673: e4 53     mov   a,$53
1675: f0 03     beq   $167a
1677: 5f d3 16  jmp   $16d3

167a: e8 00     mov   a,#$00
167c: c5 b0 06  mov   $06b0,a
167f: c5 3b 00  mov   $003b,a
1682: 8f ff 38  mov   $38,#$ff
1685: 8f 00 39  mov   $39,#$00
1688: 8f 00 3d  mov   $3d,#$00
168b: 8f 00 3e  mov   $3e,#$00
168e: 8f 01 40  mov   $40,#$01
1691: 8f 00 45  mov   $45,#$00
1694: e4 10     mov   a,$10
1696: d5 10 02  mov   $0210+x,a
1699: d5 20 02  mov   $0220+x,a
169c: e8 20     mov   a,#$20
169e: d5 e0 05  mov   $05e0+x,a
16a1: d5 00 06  mov   $0600+x,a
16a4: e8 00     mov   a,#$00
16a6: d5 d0 06  mov   $06d0+x,a
16a9: c5 e0 06  mov   $06e0,a
16ac: c5 e1 06  mov   $06e1,a
16af: d5 b0 03  mov   $03b0+x,a
16b2: d5 c0 03  mov   $03c0+x,a
16b5: d5 70 03  mov   $0370+x,a
16b8: d5 60 03  mov   $0360+x,a
16bb: d5 a0 06  mov   $06a0+x,a
16be: d5 30 02  mov   $0230+x,a
16c1: d5 40 02  mov   $0240+x,a
16c4: d5 50 02  mov   $0250+x,a
16c7: d5 60 02  mov   $0260+x,a
16ca: d5 70 02  mov   $0270+x,a
16cd: d5 80 02  mov   $0280+x,a
16d0: d5 70 05  mov   $0570+x,a
16d3: e8 00     mov   a,#$00
16d5: d5 f0 05  mov   $05f0+x,a
16d8: d5 40 06  mov   $0640+x,a
16db: d5 50 06  mov   $0650+x,a
16de: d5 60 06  mov   $0660+x,a
16e1: d5 70 06  mov   $0670+x,a
16e4: d5 40 03  mov   $0340+x,a
16e7: d5 50 03  mov   $0350+x,a
16ea: d5 80 03  mov   $0380+x,a
16ed: d5 90 03  mov   $0390+x,a
16f0: d5 a0 03  mov   $03a0+x,a
16f3: d5 d0 03  mov   $03d0+x,a
16f6: d5 e0 03  mov   $03e0+x,a
16f9: d5 f0 03  mov   $03f0+x,a
16fc: d4 c4     mov   $c4+x,a
16fe: d4 d4     mov   $d4+x,a
1700: d5 00 04  mov   $0400+x,a
1703: d5 20 04  mov   $0420+x,a
1706: d5 b0 04  mov   $04b0+x,a
1709: d4 54     mov   $54+x,a
170b: d4 64     mov   $64+x,a
170d: d4 74     mov   $74+x,a
170f: d4 84     mov   $84+x,a
1711: d4 94     mov   $94+x,a
1713: d4 a4     mov   $a4+x,a
1715: d5 50 05  mov   $0550+x,a
1718: d4 b4     mov   $b4+x,a
171a: d5 b0 02  mov   $02b0+x,a
171d: d5 c0 02  mov   $02c0+x,a
1720: d5 d0 02  mov   $02d0+x,a
1723: d5 e0 02  mov   $02e0+x,a
1726: d5 f0 02  mov   $02f0+x,a
1729: d5 00 03  mov   $0300+x,a
172c: d5 10 03  mov   $0310+x,a
172f: d5 20 03  mov   $0320+x,a
1732: d5 30 03  mov   $0330+x,a
1735: d5 10 04  mov   $0410+x,a
1738: d5 30 04  mov   $0430+x,a
173b: d5 40 04  mov   $0440+x,a
173e: d5 50 04  mov   $0450+x,a
1741: d5 60 04  mov   $0460+x,a
1744: d5 70 04  mov   $0470+x,a
1747: d5 80 04  mov   $0480+x,a
174a: d5 a0 04  mov   $04a0+x,a
174d: d5 c0 04  mov   $04c0+x,a
1750: d5 d0 04  mov   $04d0+x,a
1753: d5 e0 04  mov   $04e0+x,a
1756: d5 f0 04  mov   $04f0+x,a
1759: d5 00 05  mov   $0500+x,a
175c: d5 10 05  mov   $0510+x,a
175f: d5 20 05  mov   $0520+x,a
1762: d5 30 05  mov   $0530+x,a
1765: d5 40 05  mov   $0540+x,a
1768: d5 60 05  mov   $0560+x,a
176b: d5 80 05  mov   $0580+x,a
176e: d5 a0 05  mov   $05a0+x,a
1771: d5 b0 05  mov   $05b0+x,a
1774: d5 c0 05  mov   $05c0+x,a
1777: d5 d0 05  mov   $05d0+x,a
177a: d5 10 06  mov   $0610+x,a
177d: d5 20 06  mov   $0620+x,a
1780: d5 30 06  mov   $0630+x,a
1783: d5 90 06  mov   $0690+x,a
1786: e8 0a     mov   a,#$0a
1788: d5 90 05  mov   $0590+x,a
178b: d5 80 06  mov   $0680+x,a
178e: e8 ff     mov   a,#$ff
1790: d5 90 04  mov   $0490+x,a
1793: 6f        ret

1794: e5 f4 00  mov   a,$00f4
1797: 05 f5 00  or    a,$00f5
179a: f0 4d     beq   $17e9
179c: e8 01     mov   a,#$01
179e: c5 f7 00  mov   $00f7,a
17a1: e4 18     mov   a,$18
17a3: 08 10     or    a,#$10
17a5: e9 f4 00  mov   x,$00f4
17a8: ec f5 00  mov   y,$00f5
17ab: c5 f1 00  mov   $00f1,a
17ae: d8 10     mov   $10,x
17b0: cb 11     mov   $11,y
17b2: e8 00     mov   a,#$00
17b4: c5 f7 00  mov   $00f7,a
17b7: e5 f6 00  mov   a,$00f6
17ba: c4 12     mov   $12,a
17bc: e5 f7 00  mov   a,$00f7
17bf: c4 13     mov   $13,a
17c1: e4 10     mov   a,$10
17c3: f0 12     beq   $17d7
17c5: c5 f5 06  mov   $06f5,a
17c8: 68 80     cmp   a,#$80
17ca: b0 30     bcs   $17fc
17cc: 68 40     cmp   a,#$40
17ce: b0 4a     bcs   $181a
17d0: 68 20     cmp   a,#$20
17d2: b0 4b     bcs   $181f
17d4: 3f 4b 15  call  $154b
17d7: e4 11     mov   a,$11
17d9: f0 0a     beq   $17e5
17db: c5 f2 06  mov   $06f2,a
17de: 68 ff     cmp   a,#$ff
17e0: f0 03     beq   $17e5
17e2: 3f 24 18  call  $1824
17e5: 3f e9 17  call  $17e9
17e8: 6f        ret

17e9: e5 10 02  mov   a,$0210
17ec: c5 f4 00  mov   $00f4,a
17ef: e5 f2 06  mov   a,$06f2
17f2: c5 f5 00  mov   $00f5,a
17f5: e5 f5 06  mov   a,$06f5
17f8: c5 f6 00  mov   $00f6,a
17fb: 6f        ret

17fc: 68 ff     cmp   a,#$ff
17fe: d0 0c     bne   $180c
1800: 3f 9d 19  call  $199d
1803: e4 18     mov   a,$18
1805: 08 30     or    a,#$30
1807: c5 f1 00  mov   $00f1,a
180a: 2f dc     bra   $17e8
180c: 68 98     cmp   a,#$98
180e: 90 05     bcc   $1815
1810: 3f f2 19  call  $19f2
1813: 2f c2     bra   $17d7
1815: 3f ce 18  call  $18ce
1818: 2f bd     bra   $17d7
181a: 3f 92 18  call  $1892
181d: 2f b8     bra   $17d7
181f: 3f 84 18  call  $1884
1822: 2f b3     bra   $17d7
1824: 68 80     cmp   a,#$80
1826: f0 08     beq   $1830
1828: b0 0b     bcs   $1835
182a: 3f 06 16  call  $1606
182d: 5f e5 17  jmp   $17e5

1830: 3f 3a 18  call  $183a
1833: 2f b0     bra   $17e5
1835: 3f 58 18  call  $1858
1838: 2f ab     bra   $17e5
183a: cd 00     mov   x,#$00
183c: f5 08 02  mov   a,$0208+x
183f: f0 11     beq   $1852
1841: e8 00     mov   a,#$00
1843: d5 08 02  mov   $0208+x,a
1846: e8 01     mov   a,#$01
1848: d5 88 06  mov   $0688+x,a
184b: f5 dc 0b  mov   a,$0bdc+x
184e: 04 41     or    a,$41
1850: c4 41     mov   $41,a
1852: 3d        inc   x
1853: c8 08     cmp   x,#$08
1855: 90 e5     bcc   $183c
1857: 6f        ret

1858: e4 11     mov   a,$11
185a: 28 7f     and   a,#$7f
185c: c4 00     mov   $00,a
185e: 8f 00 41  mov   $41,#$00
1861: cd 00     mov   x,#$00
1863: f5 18 02  mov   a,$0218+x
1866: 64 00     cmp   a,$00
1868: d0 14     bne   $187e
186a: e8 00     mov   a,#$00
186c: d5 08 02  mov   $0208+x,a
186f: d5 18 02  mov   $0218+x,a
1872: f5 dc 0b  mov   a,$0bdc+x
1875: 04 41     or    a,$41
1877: c4 41     mov   $41,a
1879: e8 01     mov   a,#$01
187b: d5 88 06  mov   $0688+x,a
187e: 3d        inc   x
187f: c8 08     cmp   x,#$08
1881: 90 e0     bcc   $1863
1883: 6f        ret

1884: e4 10     mov   a,$10
1886: 28 1f     and   a,#$1f
1888: 3f 4b 15  call  $154b
188b: 8f 00 38  mov   $38,#$00
188e: 8f 01 39  mov   $39,#$01
1891: 6f        ret

1892: 80        setc
1893: a8 40     sbc   a,#$40
1895: 1c        asl   a
1896: c4 3f     mov   $3f,a
1898: 3f 9c 18  call  $189c
189b: 6f        ret

189c: 8f 01 3e  mov   $3e,#$01
189f: e4 3f     mov   a,$3f
18a1: fd        mov   y,a
18a2: e5 00 06  mov   a,$0600
18a5: cf        mul   ya
18a6: cd 40     mov   x,#$40
18a8: 9e        div   ya,x
18a9: c5 e0 05  mov   $05e0,a
18ac: c5 e1 05  mov   $05e1,a
18af: c5 e2 05  mov   $05e2,a
18b2: c5 e3 05  mov   $05e3,a
18b5: c5 e4 05  mov   $05e4,a
18b8: c5 e5 05  mov   $05e5,a
18bb: c5 e6 05  mov   $05e6,a
18be: c5 e7 05  mov   $05e7,a
18c1: 6f        ret

18c2: e4 3f     mov   a,$3f
18c4: fd        mov   y,a
18c5: e4 06     mov   a,$06
18c7: cf        mul   ya
18c8: cd 40     mov   x,#$40
18ca: 9e        div   ya,x
18cb: c4 06     mov   $06,a
18cd: 6f        ret

18ce: 28 7f     and   a,#$7f
18d0: 1c        asl   a
18d1: fd        mov   y,a
18d2: f6 dc 18  mov   a,$18dc+y
18d5: 2d        push  a
18d6: f6 db 18  mov   a,$18db+y
18d9: 2d        push  a
18da: 6f        ret

18db: dw $1901  ; 
18dd: dw $1916  ; 
18df: dw $191b  ; 
18e1: dw $1923  ; 
18e3: dw $1927  ; 
18e5: dw $192b  ; 
18e7: dw $193c  ; 
18e9: dw $1940  ; 
18eb: dw $1944  ; 
18ed: dw $195c  ; 
18ef: dw $1965  ; 
18f1: dw $1970  ; 
18f3: dw $197b  ; 
18f5: dw $1986  ; 
18f7: dw $1991  ; 
18f9: dw $199c  ; 
18fb: dw $199c  ; 
18fd: dw $199c  ; 
18ff: dw $199c  ; 

1901: cd 00     mov   x,#$00
1903: e8 00     mov   a,#$00
1905: d5 00 02  mov   $0200+x,a
1908: 3d        inc   x
1909: c8 08     cmp   x,#$08
190b: 90 f6     bcc   $1903
190d: e8 00     mov   a,#$00
190f: c5 10 02  mov   $0210,a
1912: 8f 01 40  mov   $40,#$01
1915: 6f        ret

1916: e8 01     mov   a,#$01
1918: c4 3d     mov   $3d,a
191a: 6f        ret

191b: 8f 00 3d  mov   $3d,#$00
191e: e8 ff     mov   a,#$ff
1920: c4 38     mov   $38,a
1922: 6f        ret

1923: 8f 02 39  mov   $39,#$02
1926: 6f        ret

1927: 8f 03 39  mov   $39,#$03
192a: 6f        ret

192b: e5 20 02  mov   a,$0220
192e: c5 10 02  mov   $0210,a
1931: 8f 01 39  mov   $39,#$01
1934: 8f 00 3d  mov   $3d,#$00
1937: e8 00     mov   a,#$00
1939: c4 38     mov   $38,a
193b: 6f        ret

193c: 8f 00 3c  mov   $3c,#$00
193f: 6f        ret

1940: 8f 01 3c  mov   $3c,#$01
1943: 6f        ret

1944: e4 12     mov   a,$12
1946: c5 e0 06  mov   $06e0,a
1949: e4 13     mov   a,$13
194b: c5 e1 06  mov   $06e1,a
194e: cd 08     mov   x,#$08
1950: f5 d0 06  mov   a,$06d0+x
1953: d5 e2 06  mov   $06e2+x,a
1956: 3d        inc   x
1957: c8 10     cmp   x,#$10
1959: 90 f5     bcc   $1950
195b: 6f        ret

195c: e5 f6 00  mov   a,$00f6
195f: c4 31     mov   $31,a
1961: 8f 04 39  mov   $39,#$04
1964: 6f        ret

1965: e5 f7 00  mov   a,$00f7
1968: c4 46     mov   $46,a
196a: 8d 5d     mov   y,#$5d
196c: 3f 54 11  call  $1154
196f: 6f        ret

1970: e5 f6 00  mov   a,$00f6
1973: c4 47     mov   $47,a
1975: e5 f7 00  mov   a,$00f7
1978: c4 48     mov   $48,a
197a: 6f        ret

197b: e5 f6 00  mov   a,$00f6
197e: c4 49     mov   $49,a
1980: e5 f7 00  mov   a,$00f7
1983: c4 4a     mov   $4a,a
1985: 6f        ret

1986: e5 f6 00  mov   a,$00f6
1989: c4 4b     mov   $4b,a
198b: e5 f7 00  mov   a,$00f7
198e: c4 4c     mov   $4c,a
1990: 6f        ret

1991: e4 12     mov   a,$12
1993: c5 f3 06  mov   $06f3,a
1996: e4 13     mov   a,$13
1998: c5 f4 06  mov   $06f4,a
199b: 6f        ret

199c: 6f        ret

199d: e8 aa     mov   a,#$aa
199f: c5 f4 00  mov   $00f4,a
19a2: e8 bb     mov   a,#$bb
19a4: c5 f5 00  mov   $00f5,a
19a7: e5 f4 00  mov   a,$00f4
19aa: 68 cc     cmp   a,#$cc
19ac: d0 f9     bne   $19a7
19ae: 2f 20     bra   $19d0
19b0: ec f4 00  mov   y,$00f4
19b3: d0 fb     bne   $19b0
19b5: 5e f4 00  cmp   y,$00f4
19b8: d0 0f     bne   $19c9
19ba: e5 f5 00  mov   a,$00f5
19bd: cc f4 00  mov   $00f4,y
19c0: d7 00     mov   ($00)+y,a
19c2: fc        inc   y
19c3: d0 f0     bne   $19b5
19c5: ab 01     inc   $01
19c7: 2f ec     bra   $19b5
19c9: 10 ea     bpl   $19b5
19cb: 5e f4 00  cmp   y,$00f4
19ce: 10 e5     bpl   $19b5
19d0: 8d 00     mov   y,#$00
19d2: dc        dec   y
19d3: d0 fd     bne   $19d2
19d5: e5 f6 00  mov   a,$00f6
19d8: 60        clrc
19d9: 85 f3 06  adc   a,$06f3
19dc: c4 00     mov   $00,a
19de: e5 f7 00  mov   a,$00f7
19e1: 85 f4 06  adc   a,$06f4
19e4: c4 01     mov   $01,a
19e6: ec f4 00  mov   y,$00f4
19e9: e5 f5 00  mov   a,$00f5
19ec: cc f4 00  mov   $00f4,y
19ef: d0 bf     bne   $19b0
19f1: 6f        ret

19f2: e4 10     mov   a,$10
19f4: 80        setc
19f5: a8 98     sbc   a,#$98
19f7: 5d        mov   x,a
19f8: e4 12     mov   a,$12
19fa: c4 00     mov   $00,a
19fc: e4 13     mov   a,$13
19fe: c4 01     mov   $01,a
1a00: 8d 00     mov   y,#$00
1a02: c9 f6 00  mov   $00f6,x
1a05: 1e f4 00  cmp   x,$00f4
1a08: d0 fb     bne   $1a05
1a0a: e5 f6 00  mov   a,$00f6
1a0d: d7 00     mov   ($00)+y,a
1a0f: fc        inc   y
1a10: e5 f7 00  mov   a,$00f7
1a13: d7 00     mov   ($00)+y,a
1a15: fc        inc   y
1a16: 1d        dec   x
1a17: d0 e9     bne   $1a02
1a19: c9 f6 00  mov   $00f6,x
1a1c: 1e f4 00  cmp   x,$00f4
1a1f: d0 fb     bne   $1a1c
1a21: 6f        ret

; note duration rate
1d80: db $08,$90,$e0,$6f,$e4,$10,$28,$1f
