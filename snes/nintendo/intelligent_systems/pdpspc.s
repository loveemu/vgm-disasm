0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 f0     cmp   x,#$f0
080a: d0 fb     bne   $0807
080c: 5d        mov   x,a
080d: d5 00 07  mov   $0700+x,a
0810: d5 00 06  mov   $0600+x,a
0813: d5 00 05  mov   $0500+x,a
0816: d5 00 04  mov   $0400+x,a
0819: d5 00 03  mov   $0300+x,a
081c: d5 00 02  mov   $0200+x,a
081f: d5 00 01  mov   $0100+x,a
0822: 3d        inc   x
0823: d0 e8     bne   $080d
0825: bc        inc   a
0826: 3f 68 0f  call  $0f68
0829: a2 17     set5  $17
082b: e8 60     mov   a,#$60
082d: 8d 0c     mov   y,#$0c
082f: 3f 89 09  call  $0989
0832: 8d 1c     mov   y,#$1c
0834: 3f 89 09  call  $0989
0837: e8 1f     mov   a,#$1f
0839: 8d 5d     mov   y,#$5d
083b: 3f 89 09  call  $0989
083e: e8 b0     mov   a,#$b0
0840: c5 f1 00  mov   $00f1,a
0843: e8 10     mov   a,#$10
0845: c5 fa 00  mov   $00fa,a
0848: c4 3f     mov   $3f,a
084a: e8 81     mov   a,#$81
084c: c5 f1 00  mov   $00f1,a
084f: 8d 0a     mov   y,#$0a
0851: ad 05     cmp   y,#$05
0853: f0 07     beq   $085c
0855: b0 08     bcs   $085f
0857: 69 1c 1b  cmp   ($1b),($1c)
085a: d0 0f     bne   $086b
085c: e3 1b 0c  bbs7  $1b,$086b
085f: f6 bd 08  mov   a,$08bd+y
0862: c4 f2     mov   $f2,a
0864: f6 c7 08  mov   a,$08c7+y
0867: 5d        mov   x,a
0868: e6        mov   a,(x)
0869: c4 f3     mov   $f3,a
086b: fe e4     dbnz  y,$0851
086d: cb 1e     mov   $1e,y
086f: cb 1f     mov   $1f,y
0871: e4 12     mov   a,$12
0873: 44 13     eor   a,$13
0875: 5c        lsr   a
0876: 5c        lsr   a
0877: ed        notc
0878: 6b 12     ror   $12
087a: 6b 13     ror   $13
087c: ec fd 00  mov   y,$00fd
087f: f0 fb     beq   $087c
0881: 6d        push  y
0882: e8 20     mov   a,#$20
0884: cf        mul   ya
0885: 60        clrc
0886: 84 27     adc   a,$27
0888: c4 27     mov   $27,a
088a: 90 0a     bcc   $0896
088c: 3f 15 13  call  $1315
088f: 69 1c 1b  cmp   ($1b),($1c)
0892: f0 02     beq   $0896
0894: ab 1b     inc   $1b
0896: ee        pop   y
0897: e4 3f     mov   a,$3f
0899: cf        mul   ya
089a: 60        clrc
089b: 84 3d     adc   a,$3d
089d: c4 3d     mov   $3d,a
089f: 90 05     bcc   $08a6
08a1: 3f 82 0a  call  $0a82
08a4: 2f a9     bra   $084f
08a6: e4 26     mov   a,$26
08a8: f0 fa     beq   $08a4
08aa: cd 00     mov   x,#$00
08ac: 8f 01 15  mov   $15,#$01
08af: f4 2c     mov   a,$2c+x
08b1: f0 03     beq   $08b6
08b3: 3f 2b 12  call  $122b
08b6: 3d        inc   x
08b7: 3d        inc   x
08b8: 0b 15     asl   $15
08ba: d0 f3     bne   $08af
08bc: 2f e6     bra   $08a4
08be: 2c 3c 0d  rol   $0d3c
08c1: 4d        push  x
08c2: 6c 4c 5c  ror   $5c4c
08c5: 3d        inc   x
08c6: 2d        push  a
08c7: 5c        lsr   a
08c8: 4b 4d     lsr   $4d
08ca: 1d        dec   x
08cb: 19        or    (x),(y)
08cc: 17 1e     or    a,($1e)+y
08ce: 08 18     or    a,#$18
08d0: 1a 1f     decw  $1f
08d2: 6f        ret

08d3: ad ca     cmp   y,#$ca
08d5: 90 2e     bcc   $0905
08d7: d3 c8 26  bbc6  $c8,$0900
08da: f6 a6 00  mov   a,$00a6+y
08dd: c4 0b     mov   $0b,a
08df: f6 b6 00  mov   a,$00b6+y
08e2: 2d        push  a
08e3: f6 c6 00  mov   a,$00c6+y
08e6: 30 03     bmi   $08eb
08e8: 3f 07 0e  call  $0e07
08eb: d3 0b 05  bbc6  $0b,$08f3
08ee: 3f 20 0d  call  $0d20
08f1: 2f 03     bra   $08f6
08f3: 3f 2e 0d  call  $0d2e
08f6: e4 0b     mov   a,$0b
08f8: 28 bf     and   a,#$bf
08fa: 3f a8 0d  call  $0da8
08fd: ee        pop   y
08fe: 2f 09     bra   $0909
0900: 3f a8 0d  call  $0da8
0903: 8d a4     mov   y,#$a4
0905: ad c8     cmp   y,#$c8
0907: b0 c9     bcs   $08d2
0909: e4 14     mov   a,$14
090b: 24 15     and   a,$15
090d: d0 c3     bne   $08d2
090f: dd        mov   a,y
0910: 28 7f     and   a,#$7f
0912: 60        clrc
0913: 84 3c     adc   a,$3c
0915: 60        clrc
0916: 95 41 03  adc   a,$0341+x
0919: d5 b1 02  mov   $02b1+x,a
091c: f5 d1 02  mov   a,$02d1+x
091f: d5 b0 02  mov   $02b0+x,a
0922: f5 11 03  mov   a,$0311+x
0925: 5c        lsr   a
0926: e8 00     mov   a,#$00
0928: 7c        ror   a
0929: d5 00 03  mov   $0300+x,a
092c: e8 00     mov   a,#$00
092e: d4 95     mov   $95+x,a
0930: d5 66 00  mov   $0066+x,a
0933: d5 30 03  mov   $0330+x,a
0936: d4 a5     mov   $a5+x,a
0938: 09 15 3b  or    ($3b),($15)
093b: 09 15 1e  or    ($1e),($15)
093e: f5 e0 02  mov   a,$02e0+x
0941: d4 85     mov   $85+x,a
0943: f0 1e     beq   $0963
0945: f5 e1 02  mov   a,$02e1+x
0948: d4 86     mov   $86+x,a
094a: f5 f0 02  mov   a,$02f0+x
094d: d0 0a     bne   $0959
094f: f5 b1 02  mov   a,$02b1+x
0952: 80        setc
0953: b5 f1 02  sbc   a,$02f1+x
0956: d5 b1 02  mov   $02b1+x,a
0959: f5 f1 02  mov   a,$02f1+x
095c: 60        clrc
095d: 95 b1 02  adc   a,$02b1+x
0960: 3f d0 0f  call  $0fd0
0963: f5 b1 02  mov   a,$02b1+x
0966: c4 0b     mov   $0b,a
0968: f5 b0 02  mov   a,$02b0+x
096b: c4 0a     mov   $0a,a
096d: 3f 8e 09  call  $098e
0970: 7d        mov   a,x
0971: 9f        xcn   a
0972: 5c        lsr   a
0973: 08 02     or    a,#$02
0975: c4 f2     mov   $f2,a
0977: cb f3     mov   $f3,y
0979: bc        inc   a
097a: eb 10     mov   y,$10
097c: c4 f2     mov   $f2,a
097e: cb f3     mov   $f3,y
0980: 6f        ret

0981: 2d        push  a
0982: e4 15     mov   a,$15
0984: 24 14     and   a,$14
0986: ae        pop   a
0987: d0 04     bne   $098d
0989: cb f2     mov   $f2,y
098b: c4 f3     mov   $f3,a
098d: 6f        ret

098e: 8d 00     mov   y,#$00
0990: e4 0b     mov   a,$0b
0992: 80        setc
0993: a8 34     sbc   a,#$34
0995: b0 09     bcs   $09a0
0997: e4 0b     mov   a,$0b
0999: 80        setc
099a: a8 13     sbc   a,#$13
099c: b0 06     bcs   $09a4
099e: dc        dec   y
099f: 1c        asl   a
09a0: 7a 0a     addw  ya,$0a
09a2: da 0a     movw  $0a,ya
09a4: 4d        push  x
09a5: e4 0b     mov   a,$0b
09a7: 1c        asl   a
09a8: 8d 00     mov   y,#$00
09aa: cd 18     mov   x,#$18
09ac: 9e        div   ya,x
09ad: 5d        mov   x,a
09ae: f6 06 0a  mov   a,$0a06+y
09b1: c4 0f     mov   $0f,a
09b3: f6 05 0a  mov   a,$0a05+y
09b6: c4 0e     mov   $0e,a
09b8: f6 08 0a  mov   a,$0a08+y
09bb: 2d        push  a
09bc: f6 07 0a  mov   a,$0a07+y
09bf: ee        pop   y
09c0: 9a 0e     subw  ya,$0e
09c2: eb 0a     mov   y,$0a
09c4: cf        mul   ya
09c5: dd        mov   a,y
09c6: 8d 00     mov   y,#$00
09c8: 7a 0e     addw  ya,$0e
09ca: cb 0f     mov   $0f,y
09cc: 1c        asl   a
09cd: 2b 0f     rol   $0f
09cf: c4 0e     mov   $0e,a
09d1: 2f 04     bra   $09d7
09d3: 4b 0f     lsr   $0f
09d5: 7c        ror   a
09d6: 3d        inc   x
09d7: c8 06     cmp   x,#$06
09d9: d0 f8     bne   $09d3
09db: c4 0e     mov   $0e,a
09dd: ce        pop   x
09de: f5 00 02  mov   a,$0200+x
09e1: eb 0f     mov   y,$0f
09e3: cf        mul   ya
09e4: da 10     movw  $10,ya
09e6: f5 00 02  mov   a,$0200+x
09e9: eb 0e     mov   y,$0e
09eb: cf        mul   ya
09ec: 6d        push  y
09ed: f5 01 02  mov   a,$0201+x
09f0: eb 0e     mov   y,$0e
09f2: cf        mul   ya
09f3: 7a 10     addw  ya,$10
09f5: da 10     movw  $10,ya
09f7: f5 01 02  mov   a,$0201+x
09fa: eb 0f     mov   y,$0f
09fc: cf        mul   ya
09fd: fd        mov   y,a
09fe: ae        pop   a
09ff: 7a 10     addw  ya,$10
0a01: cb 10     mov   $10,y
0a03: fd        mov   y,a
0a04: 6f        ret

0a05: dw $085f
0a07: dw $08de
0a09: dw $0965
0a0b: dw $09f4
0a0d: dw $0a8c
0a0f: dw $0b2c
0a11: dw $0bd6
0a13: dw $0c8b
0a15: dw $0d4a
0a17: dw $0e14
0a19: dw $0eea
0a1b: dw $0fcd
0a1d: dw $10be

0a1f: 8d 00     mov   y,#$00
0a21: f7 28     mov   a,($28)+y
0a23: 3a 28     incw  $28
0a25: 2d        push  a
0a26: f7 28     mov   a,($28)+y
0a28: 3a 28     incw  $28
0a2a: fd        mov   y,a
0a2b: ae        pop   a
0a2c: 6f        ret

0a2d: 1c        asl   a
0a2e: f0 0d     beq   $0a3d
0a30: 5d        mov   x,a
0a31: f5 3f 1d  mov   a,$1d3f+x
0a34: fd        mov   y,a
0a35: f5 3e 1d  mov   a,$1d3e+x
0a38: da 28     movw  $28,ya
0a3a: 8f 02 24  mov   $24,#$02
0a3d: e4 14     mov   a,$14
0a3f: 48 ff     eor   a,#$ff
0a41: 0e 1f 00  tset1 $001f
0a44: 6f        ret

0a45: cd 0e     mov   x,#$0e
0a47: 8f 80 15  mov   $15,#$80
0a4a: e8 ff     mov   a,#$ff
0a4c: d5 51 02  mov   $0251+x,a
0a4f: e8 0a     mov   a,#$0a
0a51: 3f 07 0e  call  $0e07
0a54: d5 21 02  mov   $0221+x,a
0a57: d5 d1 02  mov   $02d1+x,a
0a5a: d5 41 03  mov   $0341+x,a
0a5d: d5 e0 02  mov   $02e0+x,a
0a60: d4 96     mov   $96+x,a
0a62: d4 a6     mov   $a6+x,a
0a64: d4 b5     mov   $b5+x,a
0a66: 1d        dec   x
0a67: 1d        dec   x
0a68: 4b 15     lsr   $15
0a6a: d0 de     bne   $0a4a
0a6c: c4 46     mov   $46,a
0a6e: c4 52     mov   $52,a
0a70: c4 40     mov   $40,a
0a72: c4 3c     mov   $3c,a
0a74: c4 2a     mov   $2a,a
0a76: c5 50 03  mov   $0350,a
0a79: c4 c8     mov   $c8,a
0a7b: 8f c0 45  mov   $45,#$c0
0a7e: 8f 20 3f  mov   $3f,#$20
0a81: 6f        ret

0a82: eb 20     mov   y,$20
0a84: e4 26     mov   a,$26
0a86: c4 20     mov   $20,a
0a88: 7e 26     cmp   y,$26
0a8a: d0 a1     bne   $0a2d
0a8c: e4 26     mov   a,$26
0a8e: f0 f1     beq   $0a81
0a90: e4 24     mov   a,$24
0a92: f0 55     beq   $0ae9
0a94: 6e 24 ae  dbnz  $24,$0a45
0a97: 3f 1f 0a  call  $0a1f
0a9a: d0 1d     bne   $0ab9
0a9c: fd        mov   y,a
0a9d: d0 09     bne   $0aa8
0a9f: c4 26     mov   $26,a
0aa1: c4 20     mov   $20,a
0aa3: c5 65 03  mov   $0365,a
0aa6: 2f 85     bra   $0a2d
0aa8: 8b 2a     dec   $2a
0aaa: 10 02     bpl   $0aae
0aac: c4 2a     mov   $2a,a
0aae: 3f 1f 0a  call  $0a1f
0ab1: f8 2a     mov   x,$2a
0ab3: f0 e2     beq   $0a97
0ab5: da 28     movw  $28,ya
0ab7: 2f de     bra   $0a97
0ab9: da 10     movw  $10,ya
0abb: 8d 0f     mov   y,#$0f
0abd: f7 10     mov   a,($10)+y
0abf: d6 2b 00  mov   $002b+y,a
0ac2: dc        dec   y
0ac3: 10 f8     bpl   $0abd
0ac5: cd 00     mov   x,#$00
0ac7: 8f 01 15  mov   $15,#$01
0aca: f4 2c     mov   a,$2c+x
0acc: f0 0a     beq   $0ad8
0ace: f5 21 02  mov   a,$0221+x
0ad1: d0 05     bne   $0ad8
0ad3: e8 00     mov   a,#$00
0ad5: 3f a8 0d  call  $0da8
0ad8: e8 00     mov   a,#$00
0ada: d4 65     mov   $65+x,a
0adc: d4 75     mov   $75+x,a
0ade: d4 76     mov   $76+x,a
0ae0: bc        inc   a
0ae1: d4 55     mov   $55+x,a
0ae3: 3d        inc   x
0ae4: 3d        inc   x
0ae5: 0b 15     asl   $15
0ae7: d0 e1     bne   $0aca
0ae9: cd 00     mov   x,#$00
0aeb: d8 3b     mov   $3b,x
0aed: 8f 01 15  mov   $15,#$01
0af0: d8 16     mov   $16,x
0af2: f4 2c     mov   a,$2c+x
0af4: f0 72     beq   $0b68
0af6: 9b 55     dec   $55+x
0af8: d0 68     bne   $0b62
0afa: 3f 54 0c  call  $0c54
0afd: d0 17     bne   $0b16
0aff: f4 65     mov   a,$65+x
0b01: f0 94     beq   $0a97
0b03: 3f f5 0e  call  $0ef5
0b06: 9b 65     dec   $65+x
0b08: d0 f0     bne   $0afa
0b0a: f5 30 02  mov   a,$0230+x
0b0d: d4 2b     mov   $2b+x,a
0b0f: f5 31 02  mov   a,$0231+x
0b12: d4 2c     mov   $2c+x,a
0b14: 2f e4     bra   $0afa
; vcmd branches
0b16: 30 21     bmi   $0b39             ; vcmds 01-7f - note info:
0b18: d5 10 02  mov   $0210+x,a         ;   set cmd as duration
0b1b: 3f 54 0c  call  $0c54             ;   read next byte
0b1e: 30 19     bmi   $0b39             ;   if note note then
0b20: eb c8     mov   y,$c8
0b22: 10 4d     bpl   $0b71             ; traditional note param if ($c8 & 0x80) is not set
0b24: 68 40     cmp   a,#$40
0b26: 28 3f     and   a,#$3f
0b28: fd        mov   y,a
0b29: f6 00 ff  mov   a,$ff00+y
0b2c: b0 05     bcs   $0b33
0b2e: d5 11 02  mov   $0211+x,a         ;   00-3f - set dur%
0b31: 2f e8     bra   $0b1b             ;   check more bytes
0b33: d5 20 02  mov   $0220+x,a         ;   40-7f - set vel
0b36: 3f 54 0c  call  $0c54             ;   read next byte
0b39: 68 da     cmp   a,#$da
0b3b: 90 05     bcc   $0b42
0b3d: 3f 42 0c  call  $0c42
0b40: 2f b8     bra   $0afa
0b42: 3f d3 08  call  $08d3
0b45: f5 10 02  mov   a,$0210+x
0b48: d4 55     mov   $55+x,a
0b4a: fd        mov   y,a
0b4b: 6d        push  y
0b4c: f5 11 02  mov   a,$0211+x
0b4f: cf        mul   ya
0b50: dd        mov   a,y
0b51: d0 01     bne   $0b54
0b53: bc        inc   a
0b54: d4 56     mov   $56+x,a
0b56: ee        pop   y
0b57: f4 b5     mov   a,$b5+x
0b59: cf        mul   ya
0b5a: dd        mov   a,y
0b5b: d0 01     bne   $0b5e
0b5d: bc        inc   a
0b5e: d4 b6     mov   $b6+x,a
0b60: 2f 03     bra   $0b65
0b62: 3f f3 10  call  $10f3
0b65: 3f b0 0f  call  $0fb0
0b68: 3d        inc   x
0b69: 3d        inc   x
0b6a: 0b 15     asl   $15
0b6c: f0 17     beq   $0b85
0b6e: 5f f0 0a  jmp   $0af0

0b71: 2d        push  a
0b72: 9f        xcn   a
0b73: 28 07     and   a,#$07
0b75: fd        mov   y,a
0b76: f6 fd 12  mov   a,$12fd+y
0b79: d5 11 02  mov   $0211+x,a
0b7c: ae        pop   a
0b7d: 28 0f     and   a,#$0f
0b7f: fd        mov   y,a
0b80: f6 05 13  mov   a,$1305+y
0b83: 2f ae     bra   $0b33
0b85: e4 40     mov   a,$40
0b87: f0 0b     beq   $0b94
0b89: ba 42     movw  ya,$42
0b8b: 7a 3e     addw  ya,$3e
0b8d: 6e 40 02  dbnz  $40,$0b92
0b90: ba 40     movw  ya,$40
0b92: da 3e     movw  $3e,ya
0b94: e4 52     mov   a,$52
0b96: f0 15     beq   $0bad
0b98: ba 4e     movw  ya,$4e
0b9a: 7a 4a     addw  ya,$4a
0b9c: da 4a     movw  $4a,ya
0b9e: ba 50     movw  ya,$50
0ba0: 7a 4c     addw  ya,$4c
0ba2: 6e 52 06  dbnz  $52,$0bab
0ba5: ba 52     movw  ya,$52
0ba7: da 4a     movw  $4a,ya
0ba9: eb 54     mov   y,$54
0bab: da 4c     movw  $4c,ya
0bad: e4 c9     mov   a,$c9
0baf: d0 0f     bne   $0bc0
0bb1: e4 46     mov   a,$46
0bb3: f0 0e     beq   $0bc3
0bb5: ba 48     movw  ya,$48
0bb7: 7a 44     addw  ya,$44
0bb9: 6e 46 02  dbnz  $46,$0bbe
0bbc: ba 46     movw  ya,$46
0bbe: da 44     movw  $44,ya
0bc0: 8f ff 3b  mov   $3b,#$ff
0bc3: cd 00     mov   x,#$00
0bc5: 8f 01 15  mov   $15,#$01
0bc8: f4 2c     mov   a,$2c+x
0bca: f0 03     beq   $0bcf
0bcc: 3f 0f 10  call  $100f
0bcf: 3d        inc   x
0bd0: 3d        inc   x
0bd1: 0b 15     asl   $15
0bd3: d0 f3     bne   $0bc8
0bd5: 6f        ret

; vcmd dispatch table ($0b22)
0bd6: dw $0da8  ; da - set instrument
0bd8: dw $0e07  ; db - pan
0bda: dw $0e15  ; dc - pan fade
0bdc: dw $0e2e  ; dd - vibrato on
0bde: dw $0e3a  ; de - vibrato off
0be0: dw $0e55  ; df - master volume
0be2: dw $0e5a  ; e0 - master volume fade
0be4: dw $0e6c  ; e1 - tempo
0be6: dw $0e71  ; e2 - tempo fade
0be8: dw $0e83  ; e3 - global transpose
0bea: dw $0e86  ; e4 - per-voice transpose
0bec: dw $0e8a  ; e5 - tremolo on
0bee: dw $0e96  ; e6 - tremolo off
0bf0: dw $0eb7  ; e7 - volume
0bf2: dw $0ec0  ; e8 - volume fade
0bf4: dw $0edd  ; e9 - call subroutine
0bf6: dw $0e45  ; ea - vibrato fade
0bf8: dw $0e99  ; eb - pitch envelope (release)
0bfa: dw $0e9d  ; ec - pitch envelope (attack)
0bfc: dw $0eb3  ; ed - pitch envelope off
0bfe: dw $0ed9  ; ee - tuning
0c00: dw $0f00  ; ef - echo vbits/volume
0c02: dw $0f3f  ; f0 - disable echo
0c04: dw $0f46  ; f1 - set echo params
0c06: dw $0f1e  ; f2 - echo volume fade
0c08: dw $0fc0  ; f3 - pitch slide
0c0a: dw $0faa  ; f4 - set perc patch base
0c0c: dw $0d20  ; f5 - echo on
0c0e: dw $0d2e  ; f6 - echo off
0c10: dw $0d3e  ; f7 - set ADSR
0c12: dw $0d56  ; f8 - set duration rate and GAIN
0c14: dw $0d68  ; f9 - set duration rate
0c16: dw $0c81  ; fa - define voice params
0c18: dw $0d6b  ; fb - set voice params
0c1a: dw $0c98  ; fc - unknown (copy bytes to unused area?)
0c1c: dw $0ce8  ; fd - sub-command
                ; fe-ff undefined

; vcmd lengths ($0bc4)
0c1e: db         $01,$01,$02,$03,$00,$01 ; da-df
0c24: db $02,$01,$02,$01,$01,$03,$00,$01 ; e0-e7
0c2c: db $02,$03,$01,$03,$03,$00,$01,$03 ; e8-ef
0c34: db $00,$03,$03,$03,$01,$00,$00,$02 ; f0-f7
0c3c: db $02,$00,$01,$01,$01,$01         ; f8-fd

; dispatch vcmd in A (da-ff)
0c42: 1c        asl   a
0c43: fd        mov   y,a
0c44: f6 23 0b  mov   a,$0b23+y
0c47: 2d        push  a
0c48: f6 22 0b  mov   a,$0b22+y
0c4b: 2d        push  a
0c4c: dd        mov   a,y
0c4d: 5c        lsr   a
0c4e: fd        mov   y,a
0c4f: f6 c4 0b  mov   a,$0bc4+y
0c52: f0 06     beq   $0c5a
0c54: e7 2b     mov   a,($2b+x)
0c56: bb 2b     inc   $2b+x
0c58: f0 02     beq   $0c5c
0c5a: fd        mov   y,a
0c5b: 6f        ret

0c5c: bb 2c     inc   $2c+x
0c5e: fd        mov   y,a
0c5f: 6f        ret

; overwrite instrument table by sequence
0c60: 28 3f     and   a,#$3f
0c62: 8d 06     mov   y,#$06
0c64: cf        mul   ya                ; index: (arg1 & 0x3f) * 6
0c65: da 0e     movw  $0e,ya
0c67: 60        clrc
0c68: 98 80 0e  adc   $0e,#$80
0c6b: 98 1d 0f  adc   $0f,#$1d          ; instrument table $1d80
0c6e: fb 2c     mov   y,$2c+x
0c70: f4 2b     mov   a,$2b+x
0c72: da 0a     movw  $0a,ya
0c74: 8d 05     mov   y,#$05
0c76: f7 0a     mov   a,($0a)+y
0c78: d7 0e     mov   ($0e)+y,a
0c7a: dc        dec   y
0c7b: 10 f9     bpl   $0c76             ; overwrite instrument definition (6 bytes)
0c7d: e8 06     mov   a,#$06
0c7f: 2f 0d     bra   $0c8e             ; skip 6 byte arguments
; vcmd fa - define voice params
0c81: 30 dd     bmi   $0c60             ; overwrite instrument table if arg1 < 0
0c83: f4 2b     mov   a,$2b+x
0c85: c4 c5     mov   $c5,a
0c87: f4 2c     mov   a,$2c+x
0c89: c4 c6     mov   $c6,a             ; save current address into $c6/7 (predefined voice param table, see vcmd fb)
0c8b: e8 04     mov   a,#$04
0c8d: cf        mul   ya                ; skip arg1 (number of items) * 4 bytes
; add A to reading ptr
0c8e: 60        clrc
0c8f: 94 2b     adc   a,$2b+x
0c91: d4 2b     mov   $2b+x,a
0c93: 90 02     bcc   $0c97
0c95: bb 2c     inc   $2c+x
0c97: 6f        ret

; vcmd fc
0c98: c2 c8     set6  $c8
0c9a: fb 2c     mov   y,$2c+x
0c9c: cb 0f     mov   $0f,y
0c9e: fb 2b     mov   y,$2b+x
0ca0: cb 0e     mov   $0e,y
0ca2: 2d        push  a
0ca3: 8d 03     mov   y,#$03
0ca5: cf        mul   ya
0ca6: 6d        push  y
0ca7: ce        pop   x
0ca8: ae        pop   a
0ca9: 28 0f     and   a,#$0f
0cab: bc        inc   a
0cac: c4 0b     mov   $0b,a
0cae: 8d 03     mov   y,#$03
0cb0: cf        mul   ya
0cb1: 2d        push  a
0cb2: f7 0e     mov   a,($0e)+y
0cb4: d5 70 01  mov   $0170+x,a
0cb7: fc        inc   y
0cb8: f7 0e     mov   a,($0e)+y
0cba: d5 80 01  mov   $0180+x,a
0cbd: fc        inc   y
0cbe: f7 0e     mov   a,($0e)+y
0cc0: d5 90 01  mov   $0190+x,a
0cc3: fc        inc   y
0cc4: 3d        inc   x
0cc5: 6e 0b ea  dbnz  $0b,$0cb2
0cc8: f8 16     mov   x,$16
0cca: ae        pop   a
0ccb: 2f c1     bra   $0c8e

; subcmd 00
0ccd: 3f 54 0c  call  $0c54
0cd0: c4 10     mov   $10,a
0cd2: 3f 54 0c  call  $0c54
0cd5: c4 11     mov   $11,a
0cd7: 3f 54 0c  call  $0c54
0cda: fd        mov   y,a
0cdb: 28 07     and   a,#$07
0cdd: 1c        asl   a
0cde: c4 0b     mov   $0b,a
0ce0: dd        mov   a,y
0ce1: 28 f8     and   a,#$f8
0ce3: c4 0a     mov   $0a,a
0ce5: 5f 18 14  jmp   $1418

; vcmd fd - sub-command
0ce8: 68 00     cmp   a,#$00
0cea: f0 e1     beq   $0ccd
0cec: 68 01     cmp   a,#$01
0cee: f0 1b     beq   $0d0b
0cf0: 68 02     cmp   a,#$02
0cf2: f0 1e     beq   $0d12
0cf4: 68 03     cmp   a,#$03
0cf6: f0 09     beq   $0d01
0cf8: 68 04     cmp   a,#$04
0cfa: f0 09     beq   $0d05
0cfc: 68 05     cmp   a,#$05
0cfe: f0 19     beq   $0d19
0d00: 6f        ret
; subcmd 03 - legato on
0d01: 09 15 c7  or    ($c7),($15)
0d04: 6f        ret
; subcmd 04 - legato off
0d05: e4 15     mov   a,$15
0d07: 4e c7 00  tclr1 $00c7
0d0a: 6f        ret
; subcmd 01 - tset1 $c8
0d0b: 3f 54 0c  call  $0c54
0d0e: 0e c8 00  tset1 $00c8
0d11: 6f        ret
; subcmd 02 - tclr1 $c8
0d12: 3f 54 0c  call  $0c54
0d15: 4e c8 00  tclr1 $00c8
0d18: 6f        ret
; subcmd 05 - unknown
0d19: 3f 54 0c  call  $0c54
0d1c: cc 64 03  mov   $0364,y
0d1f: 6f        ret

; vcmd f5 - echo on
0d20: e4 14     mov   a,$14
0d22: 24 15     and   a,$15
0d24: f0 04     beq   $0d2a
0d26: 0e 6d 03  tset1 $036d
0d29: 6f        ret

0d2a: 09 15 19  or    ($19),($15)
0d2d: 6f        ret

; vcmd f6 - echo off
0d2e: e4 14     mov   a,$14
0d30: 24 15     and   a,$15
0d32: f0 04     beq   $0d38
0d34: 4e 6d 03  tclr1 $036d
0d37: 6f        ret

0d38: e4 15     mov   a,$15
0d3a: 4e 19 00  tclr1 $0019
0d3d: 6f        ret

; vcmd f7 - set ADSR
0d3e: d5 52 03  mov   $0352+x,a
0d41: 7d        mov   a,x
0d42: 9f        xcn   a
0d43: 5c        lsr   a
0d44: 08 05     or    a,#$05
0d46: fd        mov   y,a
0d47: f5 52 03  mov   a,$0352+x
0d4a: 3f 81 09  call  $0981
0d4d: 6d        push  y
0d4e: 3f 54 0c  call  $0c54
0d51: ee        pop   y
0d52: fc        inc   y
0d53: 5f 81 09  jmp   $0981

; vcmd f8 - set duration rate and GAIN
0d56: d4 b5     mov   $b5+x,a
0d58: 7d        mov   a,x
0d59: 9f        xcn   a
0d5a: 5c        lsr   a
0d5b: 08 07     or    a,#$07
0d5d: 2d        push  a
0d5e: 3f 54 0c  call  $0c54
0d61: d5 51 03  mov   $0351+x,a
0d64: ee        pop   y
0d65: 5f 81 09  jmp   $0981

; vcmd f9 - set duration rate
0d68: db b5     mov   $b5+x,y
0d6a: 6f        ret

; vcmd fb - set voice params
0d6b: c4 0b     mov   $0b,a
0d6d: 1c        asl   a
0d6e: 1c        asl   a
0d6f: fd        mov   y,a
0d70: f7 c5     mov   a,($c5)+y
0d72: 2d        push  a
0d73: fc        inc   y
0d74: f7 c5     mov   a,($c5)+y
0d76: d5 51 02  mov   $0251+x,a
0d79: fc        inc   y
0d7a: f7 c5     mov   a,($c5)+y
0d7c: 2d        push  a
0d7d: 28 1f     and   a,#$1f
0d7f: d5 a1 02  mov   $02a1+x,a
0d82: d5 81 02  mov   $0281+x,a
0d85: fc        inc   y
0d86: f7 c5     mov   a,($c5)+y
0d88: d5 41 03  mov   $0341+x,a
0d8b: ae        pop   a
0d8c: 28 e0     and   a,#$e0
0d8e: 9f        xcn   a
0d8f: 5c        lsr   a
0d90: 8d 05     mov   y,#$05
0d92: cf        mul   ya
0d93: d5 d1 02  mov   $02d1+x,a
0d96: dd        mov   a,y
0d97: d5 80 02  mov   $0280+x,a
0d9a: d5 50 02  mov   $0250+x,a
0d9d: d4 b5     mov   $b5+x,a
0d9f: aa 0b e0  mov1  c,$000b,7
0da2: 90 03     bcc   $0da7
0da4: 3f 3a 0e  call  $0e3a
0da7: ae        pop   a
; vcmd da - set instrument
0da8: d5 21 02  mov   $0221+x,a
0dab: fd        mov   y,a
0dac: 10 07     bpl   $0db5
0dae: 80        setc
0daf: a8 ca     sbc   a,#$ca
0db1: 60        clrc
0db2: 85 50 03  adc   a,$0350
0db5: 8d 06     mov   y,#$06
0db7: cf        mul   ya
0db8: da 0e     movw  $0e,ya
0dba: 60        clrc
0dbb: 98 80 0e  adc   $0e,#$80
0dbe: 98 1d 0f  adc   $0f,#$1d
0dc1: e4 14     mov   a,$14
0dc3: 24 15     and   a,$15
0dc5: d0 3f     bne   $0e06
0dc7: 4d        push  x
0dc8: 7d        mov   a,x
0dc9: 9f        xcn   a
0dca: 5c        lsr   a
0dcb: 08 04     or    a,#$04
0dcd: 5d        mov   x,a
0dce: 8d 00     mov   y,#$00
0dd0: f7 0e     mov   a,($0e)+y
0dd2: 10 0e     bpl   $0de2
0dd4: 28 1f     and   a,#$1f
0dd6: 38 20 17  and   $17,#$20
0dd9: 0e 17 00  tset1 $0017
0ddc: 09 15 18  or    ($18),($15)
0ddf: dd        mov   a,y
0de0: 2f 07     bra   $0de9
0de2: e4 15     mov   a,$15
0de4: 4e 18 00  tclr1 $0018
0de7: f7 0e     mov   a,($0e)+y
0de9: d8 f2     mov   $f2,x
0deb: c4 f3     mov   $f3,a
0ded: 3d        inc   x
0dee: fc        inc   y
0def: ad 04     cmp   y,#$04
0df1: d0 f4     bne   $0de7
0df3: ce        pop   x
0df4: f7 0e     mov   a,($0e)+y
0df6: d5 01 02  mov   $0201+x,a
0df9: fc        inc   y
0dfa: f7 0e     mov   a,($0e)+y
0dfc: d5 00 02  mov   $0200+x,a
0dff: 8d 01     mov   y,#$01
0e01: f7 0e     mov   a,($0e)+y
0e03: d5 52 03  mov   $0352+x,a
0e06: 6f        ret

; vcmd db - pan
0e07: d5 a1 02  mov   $02a1+x,a
0e0a: 28 1f     and   a,#$1f
0e0c: d5 81 02  mov   $0281+x,a
0e0f: e8 00     mov   a,#$00
0e11: d5 80 02  mov   $0280+x,a
0e14: 6f        ret

; vcmd dc - pan fade
0e15: d4 76     mov   $76+x,a
0e17: 2d        push  a
0e18: 3f 54 0c  call  $0c54
0e1b: d5 a0 02  mov   $02a0+x,a
0e1e: 80        setc
0e1f: b5 81 02  sbc   a,$0281+x
0e22: ce        pop   x
0e23: 3f f3 0f  call  $0ff3
0e26: d5 90 02  mov   $0290+x,a
0e29: dd        mov   a,y
0e2a: d5 91 02  mov   $0291+x,a
0e2d: 6f        ret

; vcmd dd - vibrato on
0e2e: d5 10 03  mov   $0310+x,a
0e31: 3f 54 0c  call  $0c54
0e34: d5 01 03  mov   $0301+x,a
0e37: 3f 54 0c  call  $0c54
; vcmd de - vibrato off
0e3a: d4 96     mov   $96+x,a
0e3c: d5 21 03  mov   $0321+x,a
0e3f: e8 00     mov   a,#$00
0e41: d5 11 03  mov   $0311+x,a
0e44: 6f        ret

; vcmd ea - vibrato fade
0e45: d5 11 03  mov   $0311+x,a
0e48: 2d        push  a
0e49: 8d 00     mov   y,#$00
0e4b: f4 96     mov   a,$96+x
0e4d: ce        pop   x
0e4e: 9e        div   ya,x
0e4f: f8 16     mov   x,$16
0e51: d5 20 03  mov   $0320+x,a
0e54: 6f        ret

; vcmd df - master volume
0e55: e8 00     mov   a,#$00
0e57: da 44     movw  $44,ya
0e59: 6f        ret

; vcmd e0 - master volume fade
0e5a: c4 46     mov   $46,a
0e5c: 3f 54 0c  call  $0c54
0e5f: c4 47     mov   $47,a
0e61: 80        setc
0e62: a4 45     sbc   a,$45
0e64: f8 46     mov   x,$46
0e66: 3f f3 0f  call  $0ff3
0e69: da 48     movw  $48,ya
0e6b: 6f        ret

; vcmd e1 - tempo
0e6c: e8 00     mov   a,#$00
0e6e: da 3e     movw  $3e,ya
0e70: 6f        ret

; vcmd e2 - tempo fade
0e71: c4 40     mov   $40,a
0e73: 3f 54 0c  call  $0c54
0e76: c4 41     mov   $41,a
0e78: 80        setc
0e79: a4 3f     sbc   a,$3f
0e7b: f8 40     mov   x,$40
0e7d: 3f f3 0f  call  $0ff3
0e80: da 42     movw  $42,ya
0e82: 6f        ret

; vcmd e3 - global transpose
0e83: c4 3c     mov   $3c,a
0e85: 6f        ret

; vcmd e4 - per-voice transpose
0e86: d5 41 03  mov   $0341+x,a
0e89: 6f        ret

; vcmd e5 - tremolo on
0e8a: d5 40 03  mov   $0340+x,a
0e8d: 3f 54 0c  call  $0c54
0e90: d5 31 03  mov   $0331+x,a
0e93: 3f 54 0c  call  $0c54
; vcmd e6 - tremolo off
0e96: d4 a6     mov   $a6+x,a
0e98: 6f        ret

; vcmd eb - pitch envelope (release)
0e99: e8 01     mov   a,#$01
0e9b: 2f 02     bra   $0e9f
; vcmd ec - pitch envelope (attack)
0e9d: e8 00     mov   a,#$00
0e9f: d5 f0 02  mov   $02f0+x,a
0ea2: dd        mov   a,y
0ea3: d5 e1 02  mov   $02e1+x,a
0ea6: 3f 54 0c  call  $0c54
0ea9: d5 e0 02  mov   $02e0+x,a
0eac: 3f 54 0c  call  $0c54
0eaf: d5 f1 02  mov   $02f1+x,a
0eb2: 6f        ret

; vcmd ed - pitch envelope off
0eb3: d5 e0 02  mov   $02e0+x,a
0eb6: 6f        ret

; vcmd e7 - volume
0eb7: d5 51 02  mov   $0251+x,a
0eba: e8 00     mov   a,#$00
0ebc: d5 50 02  mov   $0250+x,a
0ebf: 6f        ret

; vcmd e8 - volume fade
0ec0: d4 75     mov   $75+x,a
0ec2: 2d        push  a
0ec3: 3f 54 0c  call  $0c54
0ec6: d5 70 02  mov   $0270+x,a
0ec9: 80        setc
0eca: b5 51 02  sbc   a,$0251+x
0ecd: ce        pop   x
0ece: 3f f3 0f  call  $0ff3
0ed1: d5 60 02  mov   $0260+x,a
0ed4: dd        mov   a,y
0ed5: d5 61 02  mov   $0261+x,a
0ed8: 6f        ret

; vcmd ee - tuning
0ed9: d5 d1 02  mov   $02d1+x,a
0edc: 6f        ret

; vcmd e9 - call subroutine
0edd: d5 40 02  mov   $0240+x,a
0ee0: 3f 54 0c  call  $0c54
0ee3: d5 41 02  mov   $0241+x,a
0ee6: 3f 54 0c  call  $0c54
0ee9: d4 65     mov   $65+x,a
0eeb: f4 2b     mov   a,$2b+x
0eed: d5 30 02  mov   $0230+x,a
0ef0: f4 2c     mov   a,$2c+x
0ef2: d5 31 02  mov   $0231+x,a
0ef5: f5 40 02  mov   a,$0240+x
0ef8: d4 2b     mov   $2b+x,a
0efa: f5 41 02  mov   a,$0241+x
0efd: d4 2c     mov   $2c+x,a
0eff: 6f        ret

; vcmd ef - echo vbits/volume
0f00: c4 0a     mov   $0a,a
0f02: c5 6d 03  mov   $036d,a
0f05: e4 14     mov   a,$14
0f07: 48 ff     eor   a,#$ff
0f09: 24 0a     and   a,$0a
0f0b: c4 19     mov   $19,a
0f0d: 3f 54 0c  call  $0c54
0f10: e8 00     mov   a,#$00
0f12: da 4a     movw  $4a,ya
0f14: 3f 54 0c  call  $0c54
0f17: e8 00     mov   a,#$00
0f19: da 4c     movw  $4c,ya
0f1b: b2 17     clr5  $17
0f1d: 6f        ret

; vcmd f2 - echo volume fade
0f1e: c4 52     mov   $52,a
0f20: 3f 54 0c  call  $0c54
0f23: c4 53     mov   $53,a
0f25: 80        setc
0f26: a4 4b     sbc   a,$4b
0f28: f8 52     mov   x,$52
0f2a: 3f f3 0f  call  $0ff3
0f2d: da 4e     movw  $4e,ya
0f2f: 3f 54 0c  call  $0c54
0f32: c4 54     mov   $54,a
0f34: 80        setc
0f35: a4 4d     sbc   a,$4d
0f37: f8 52     mov   x,$52
0f39: 3f f3 0f  call  $0ff3
0f3c: da 50     movw  $50,ya
0f3e: 6f        ret

; vcmd f0 - disable echo
0f3f: da 4a     movw  $4a,ya
0f41: da 4c     movw  $4c,ya
0f43: a2 17     set5  $17
0f45: 6f        ret

; vcmd f1 - set echo params
0f46: 3f 68 0f  call  $0f68
0f49: 3f 54 0c  call  $0c54
0f4c: c4 1d     mov   $1d,a
0f4e: 3f 54 0c  call  $0c54
0f51: 8d 08     mov   y,#$08
0f53: cf        mul   ya
0f54: 5d        mov   x,a
0f55: 8d 0f     mov   y,#$0f
0f57: f5 dd 12  mov   a,$12dd+x
0f5a: 3f 89 09  call  $0989
0f5d: 3d        inc   x
0f5e: dd        mov   a,y
0f5f: 60        clrc
0f60: 88 10     adc   a,#$10
0f62: fd        mov   y,a
0f63: 10 f2     bpl   $0f57
0f65: f8 16     mov   x,$16
0f67: 6f        ret

0f68: c4 1c     mov   $1c,a
0f6a: 8d 7d     mov   y,#$7d
0f6c: cb f2     mov   $f2,y
0f6e: e4 f3     mov   a,$f3
0f70: 64 1c     cmp   a,$1c
0f72: f0 29     beq   $0f9d
0f74: 28 0f     and   a,#$0f
0f76: 48 ff     eor   a,#$ff
0f78: f3 1b 03  bbc7  $1b,$0f7e
0f7b: 60        clrc
0f7c: 84 1b     adc   a,$1b
0f7e: c4 1b     mov   $1b,a
0f80: 8d 04     mov   y,#$04
0f82: f6 bd 08  mov   a,$08bd+y
0f85: c4 f2     mov   $f2,a
0f87: e8 00     mov   a,#$00
0f89: c4 f3     mov   $f3,a
0f8b: fe f5     dbnz  y,$0f82
0f8d: e4 17     mov   a,$17
0f8f: 08 20     or    a,#$20
0f91: 8d 6c     mov   y,#$6c
0f93: 3f 89 09  call  $0989
0f96: e4 1c     mov   a,$1c
0f98: 8d 7d     mov   y,#$7d
0f9a: 3f 89 09  call  $0989
0f9d: 1c        asl   a
0f9e: 1c        asl   a
0f9f: 1c        asl   a
0fa0: 48 ff     eor   a,#$ff
0fa2: 80        setc
0fa3: 88 ff     adc   a,#$ff
0fa5: 8d 6d     mov   y,#$6d
0fa7: 5f 89 09  jmp   $0989

; vcmd f4 - set perc patch base
0faa: c5 50 03  mov   $0350,a
0fad: d2 c8     clr6  $c8
0faf: 6f        ret

0fb0: f4 85     mov   a,$85+x
0fb2: d0 33     bne   $0fe7
0fb4: e7 2b     mov   a,($2b+x)
0fb6: 68 f3     cmp   a,#$f3
0fb8: d0 2d     bne   $0fe7
0fba: 3f 56 0c  call  $0c56
0fbd: 3f 54 0c  call  $0c54
; vcmd f3 - pitch slide
0fc0: d4 86     mov   $86+x,a
0fc2: 3f 54 0c  call  $0c54
0fc5: d4 85     mov   $85+x,a
0fc7: 3f 54 0c  call  $0c54
0fca: 60        clrc
0fcb: 84 3c     adc   a,$3c
0fcd: 95 41 03  adc   a,$0341+x
0fd0: 28 7f     and   a,#$7f
0fd2: d5 d0 02  mov   $02d0+x,a
0fd5: 80        setc
0fd6: b5 b1 02  sbc   a,$02b1+x
0fd9: fb 85     mov   y,$85+x
0fdb: 6d        push  y
0fdc: ce        pop   x
0fdd: 3f f3 0f  call  $0ff3
0fe0: d5 c0 02  mov   $02c0+x,a
0fe3: dd        mov   a,y
0fe4: d5 c1 02  mov   $02c1+x,a
0fe7: 6f        ret

0fe8: f5 b1 02  mov   a,$02b1+x
0feb: c4 0b     mov   $0b,a
0fed: f5 b0 02  mov   a,$02b0+x
0ff0: c4 0a     mov   $0a,a
0ff2: 6f        ret

0ff3: ed        notc
0ff4: 6b 0c     ror   $0c
0ff6: 10 03     bpl   $0ffb
0ff8: 48 ff     eor   a,#$ff
0ffa: bc        inc   a
0ffb: 8d 00     mov   y,#$00
0ffd: 9e        div   ya,x
0ffe: 2d        push  a
0fff: e8 00     mov   a,#$00
1001: 9e        div   ya,x
1002: ee        pop   y
1003: f8 16     mov   x,$16
1005: f3 0c 06  bbc7  $0c,$100e
1008: da 0e     movw  $0e,ya
100a: ba 08     movw  ya,$08
100c: 9a 0e     subw  ya,$0e
100e: 6f        ret

100f: f4 75     mov   a,$75+x
1011: f0 24     beq   $1037
1013: 09 15 3b  or    ($3b),($15)
1016: 9b 75     dec   $75+x
1018: d0 0a     bne   $1024
101a: e8 00     mov   a,#$00
101c: d5 50 02  mov   $0250+x,a
101f: f5 70 02  mov   a,$0270+x
1022: 2f 10     bra   $1034
1024: 60        clrc
1025: f5 50 02  mov   a,$0250+x
1028: 95 60 02  adc   a,$0260+x
102b: d5 50 02  mov   $0250+x,a
102e: f5 51 02  mov   a,$0251+x
1031: 95 61 02  adc   a,$0261+x
1034: d5 51 02  mov   $0251+x,a
1037: fb a6     mov   y,$a6+x
1039: f0 23     beq   $105e
103b: f5 40 03  mov   a,$0340+x
103e: de a5 1b  cbne  $a5+x,$105c
1041: 09 15 3b  or    ($3b),($15)
1044: f5 30 03  mov   a,$0330+x
1047: 10 07     bpl   $1050
1049: fc        inc   y
104a: d0 04     bne   $1050
104c: e8 80     mov   a,#$80
104e: 2f 04     bra   $1054
1050: 60        clrc
1051: 95 31 03  adc   a,$0331+x
1054: d5 30 03  mov   $0330+x,a
1057: 3f b1 12  call  $12b1
105a: 2f 07     bra   $1063
105c: bb a5     inc   $a5+x
105e: e8 ff     mov   a,#$ff
1060: 3f bc 12  call  $12bc
1063: f4 76     mov   a,$76+x
1065: f0 24     beq   $108b
1067: 09 15 3b  or    ($3b),($15)
106a: 9b 76     dec   $76+x
106c: d0 0a     bne   $1078
106e: e8 00     mov   a,#$00
1070: d5 80 02  mov   $0280+x,a
1073: f5 a0 02  mov   a,$02a0+x
1076: 2f 10     bra   $1088
1078: 60        clrc
1079: f5 80 02  mov   a,$0280+x
107c: 95 90 02  adc   a,$0290+x
107f: d5 80 02  mov   $0280+x,a
1082: f5 81 02  mov   a,$0281+x
1085: 95 91 02  adc   a,$0291+x
1088: d5 81 02  mov   $0281+x,a
108b: e4 15     mov   a,$15
108d: 24 3b     and   a,$3b
108f: f0 4c     beq   $10dd
1091: f5 81 02  mov   a,$0281+x
1094: fd        mov   y,a
1095: f5 80 02  mov   a,$0280+x
1098: da 0a     movw  $0a,ya
109a: e4 15     mov   a,$15
109c: 24 14     and   a,$14
109e: d0 3d     bne   $10dd
10a0: 7d        mov   a,x
10a1: 9f        xcn   a
10a2: 5c        lsr   a
10a3: c4 0c     mov   $0c,a
10a5: eb 0b     mov   y,$0b
10a7: f6 df 10  mov   a,$10df+y
10aa: 80        setc
10ab: b6 de 10  sbc   a,$10de+y
10ae: eb 0a     mov   y,$0a
10b0: cf        mul   ya
10b1: dd        mov   a,y
10b2: eb 0b     mov   y,$0b
10b4: 60        clrc
10b5: 96 de 10  adc   a,$10de+y
10b8: fd        mov   y,a
10b9: f5 71 02  mov   a,$0271+x
10bc: cf        mul   ya
10bd: f5 a1 02  mov   a,$02a1+x
10c0: 1c        asl   a
10c1: 13 0c 01  bbc0  $0c,$10c5
10c4: 1c        asl   a
10c5: dd        mov   a,y
10c6: 90 03     bcc   $10cb
10c8: 48 ff     eor   a,#$ff
10ca: bc        inc   a
10cb: eb 0c     mov   y,$0c
10cd: 3f 81 09  call  $0981
10d0: 8d 14     mov   y,#$14
10d2: e8 00     mov   a,#$00
10d4: 9a 0a     subw  ya,$0a
10d6: da 0a     movw  $0a,ya
10d8: ab 0c     inc   $0c
10da: 33 0c c8  bbc1  $0c,$10a5
10dd: 6f        ret

10de: db $00,$01,$03,$07,$0d,$15,$1e,$29
10e6: db $34,$42,$51,$5e,$67,$6e,$73,$77
10ee: db $7a,$7c,$7d,$7e,$7f

10f3: f4 56     mov   a,$56+x
10f5: d0 03     bne   $10fa
10f7: 5f 89 11  jmp   $1189

10fa: 9b 56     dec   $56+x
10fc: f0 1b     beq   $1119
10fe: f4 b5     mov   a,$b5+x
1100: f0 12     beq   $1114
1102: 9b b6     dec   $b6+x
1104: d0 0e     bne   $1114
1106: 7d        mov   a,x
1107: 9f        xcn   a
1108: 5c        lsr   a
1109: 08 05     or    a,#$05
110b: fd        mov   y,a
110c: f5 52 03  mov   a,$0352+x
110f: 28 7f     and   a,#$7f
1111: 3f 81 09  call  $0981
1114: e8 02     mov   a,#$02
1116: de 55 70  cbne  $55+x,$1189
1119: f4 65     mov   a,$65+x
111b: c4 11     mov   $11,a
111d: f4 2b     mov   a,$2b+x
111f: fb 2c     mov   y,$2c+x
1121: da 0e     movw  $0e,ya
1123: 8d 00     mov   y,#$00
1125: f7 0e     mov   a,($0e)+y
1127: f0 1c     beq   $1145
1129: 30 05     bmi   $1130
112b: fc        inc   y
112c: f7 0e     mov   a,($0e)+y
112e: 10 fb     bpl   $112b
1130: 68 c8     cmp   a,#$c8
1132: f0 55     beq   $1189
1134: 68 e9     cmp   a,#$e9
1136: f0 29     beq   $1161
1138: 68 da     cmp   a,#$da
113a: 90 30     bcc   $116c
113c: 6d        push  y
113d: fd        mov   y,a
113e: ae        pop   a
113f: 96 44 0b  adc   a,$0b44+y
1142: fd        mov   y,a
1143: 2f e0     bra   $1125
1145: e4 11     mov   a,$11
1147: f0 23     beq   $116c
1149: 8b 11     dec   $11
114b: d0 0a     bne   $1157
114d: f5 31 02  mov   a,$0231+x
1150: 2d        push  a
1151: f5 30 02  mov   a,$0230+x
1154: ee        pop   y
1155: 2f ca     bra   $1121
1157: f5 41 02  mov   a,$0241+x
115a: 2d        push  a
115b: f5 40 02  mov   a,$0240+x
115e: ee        pop   y
115f: 2f c0     bra   $1121
1161: fc        inc   y
1162: f7 0e     mov   a,($0e)+y
1164: 2d        push  a
1165: fc        inc   y
1166: f7 0e     mov   a,($0e)+y
1168: fd        mov   y,a
1169: ae        pop   a
116a: 2f b5     bra   $1121
116c: e4 c7     mov   a,$c7
116e: 24 15     and   a,$15
1170: d0 17     bne   $1189
1172: e4 15     mov   a,$15
1174: 8d 5c     mov   y,#$5c
1176: 3f 81 09  call  $0981
1179: f4 b5     mov   a,$b5+x
117b: f0 0c     beq   $1189
117d: 7d        mov   a,x
117e: 9f        xcn   a
117f: 5c        lsr   a
1180: 08 05     or    a,#$05
1182: fd        mov   y,a
1183: f5 52 03  mov   a,$0352+x
1186: 3f 81 09  call  $0981
1189: f2 0d     clr7  $0d
118b: f4 85     mov   a,$85+x
118d: f0 2c     beq   $11bb
118f: f4 86     mov   a,$86+x
1191: f0 04     beq   $1197
1193: 9b 86     dec   $86+x
1195: 2f 24     bra   $11bb
1197: e2 0d     set7  $0d
1199: 9b 85     dec   $85+x
119b: d0 0b     bne   $11a8
119d: f5 d1 02  mov   a,$02d1+x
11a0: d5 b0 02  mov   $02b0+x,a
11a3: f5 d0 02  mov   a,$02d0+x
11a6: 2f 10     bra   $11b8
11a8: 60        clrc
11a9: f5 b0 02  mov   a,$02b0+x
11ac: 95 c0 02  adc   a,$02c0+x
11af: d5 b0 02  mov   $02b0+x,a
11b2: f5 b1 02  mov   a,$02b1+x
11b5: 95 c1 02  adc   a,$02c1+x
11b8: d5 b1 02  mov   $02b1+x,a
11bb: 3f e8 0f  call  $0fe8
11be: f4 96     mov   a,$96+x
11c0: f0 65     beq   $1227
11c2: f5 10 03  mov   a,$0310+x
11c5: de 95 5d  cbne  $95+x,$1225
11c8: f5 66 00  mov   a,$0066+x
11cb: 75 11 03  cmp   a,$0311+x
11ce: d0 05     bne   $11d5
11d0: f5 21 03  mov   a,$0321+x
11d3: 2f 0b     bra   $11e0
11d5: bb 66     inc   $66+x
11d7: fd        mov   y,a
11d8: f0 02     beq   $11dc
11da: f4 96     mov   a,$96+x
11dc: 60        clrc
11dd: 95 20 03  adc   a,$0320+x
11e0: d4 96     mov   $96+x,a
11e2: f5 00 03  mov   a,$0300+x
11e5: 60        clrc
11e6: 95 01 03  adc   a,$0301+x
11e9: d5 00 03  mov   $0300+x,a
11ec: c4 0c     mov   $0c,a
11ee: 1c        asl   a
11ef: 1c        asl   a
11f0: 90 02     bcc   $11f4
11f2: 48 ff     eor   a,#$ff
11f4: fd        mov   y,a
11f5: f4 96     mov   a,$96+x
11f7: 68 f1     cmp   a,#$f1
11f9: 90 05     bcc   $1200
11fb: 28 0f     and   a,#$0f
11fd: cf        mul   ya
11fe: 2f 04     bra   $1204
1200: cf        mul   ya
1201: dd        mov   a,y
1202: 8d 00     mov   y,#$00
1204: f3 0c 06  bbc7  $0c,$120d
1207: da 0e     movw  $0e,ya
1209: ba 08     movw  ya,$08
120b: 9a 0e     subw  ya,$0e
120d: 7a 0a     addw  ya,$0a
120f: da 0a     movw  $0a,ya
1211: 7d        mov   a,x
1212: 9f        xcn   a
1213: 5c        lsr   a
1214: 08 08     or    a,#$08
1216: c4 f2     mov   $f2,a
1218: e4 f3     mov   a,$f3
121a: f0 0e     beq   $122a
121c: e4 15     mov   a,$15
121e: 24 14     and   a,$14
1220: d0 08     bne   $122a
1222: 5f 6d 09  jmp   $096d

1225: bb 95     inc   $95+x
1227: e3 0d e7  bbs7  $0d,$1211
122a: 6f        ret

122b: f2 0d     clr7  $0d
122d: f4 a6     mov   a,$a6+x
122f: f0 09     beq   $123a
1231: f5 40 03  mov   a,$0340+x
1234: de a5 03  cbne  $a5+x,$123a
1237: 3f a4 12  call  $12a4
123a: f5 81 02  mov   a,$0281+x
123d: fd        mov   y,a
123e: f5 80 02  mov   a,$0280+x
1241: da 0a     movw  $0a,ya
1243: f4 76     mov   a,$76+x
1245: f0 0a     beq   $1251
1247: f5 91 02  mov   a,$0291+x
124a: fd        mov   y,a
124b: f5 90 02  mov   a,$0290+x
124e: 3f 86 12  call  $1286
1251: f3 0d 03  bbc7  $0d,$1257
1254: 3f a0 10  call  $10a0
1257: f2 0d     clr7  $0d
1259: 3f e8 0f  call  $0fe8
125c: f4 85     mov   a,$85+x
125e: f0 0e     beq   $126e
1260: f4 86     mov   a,$86+x
1262: d0 0a     bne   $126e
1264: f5 c1 02  mov   a,$02c1+x
1267: fd        mov   y,a
1268: f5 c0 02  mov   a,$02c0+x
126b: 3f 86 12  call  $1286
126e: f4 96     mov   a,$96+x
1270: f0 b5     beq   $1227
1272: f5 10 03  mov   a,$0310+x
1275: de 95 af  cbne  $95+x,$1227
1278: eb 3d     mov   y,$3d
127a: f5 01 03  mov   a,$0301+x
127d: cf        mul   ya
127e: dd        mov   a,y
127f: 60        clrc
1280: 95 00 03  adc   a,$0300+x
1283: 5f ec 11  jmp   $11ec

1286: e2 0d     set7  $0d
1288: cb 0c     mov   $0c,y
128a: 3f 05 10  call  $1005
128d: 6d        push  y
128e: eb 3d     mov   y,$3d
1290: cf        mul   ya
1291: cb 0e     mov   $0e,y
1293: 8f 00 0f  mov   $0f,#$00
1296: eb 3d     mov   y,$3d
1298: ae        pop   a
1299: cf        mul   ya
129a: 7a 0e     addw  ya,$0e
129c: 3f 05 10  call  $1005
129f: 7a 0a     addw  ya,$0a
12a1: da 0a     movw  $0a,ya
12a3: 6f        ret

12a4: e2 0d     set7  $0d
12a6: eb 3d     mov   y,$3d
12a8: f5 31 03  mov   a,$0331+x
12ab: cf        mul   ya
12ac: dd        mov   a,y
12ad: 60        clrc
12ae: 95 30 03  adc   a,$0330+x
12b1: 1c        asl   a
12b2: 90 02     bcc   $12b6
12b4: 48 ff     eor   a,#$ff
12b6: fb a6     mov   y,$a6+x
12b8: cf        mul   ya
12b9: dd        mov   a,y
12ba: 48 ff     eor   a,#$ff
12bc: eb 45     mov   y,$45
12be: cf        mul   ya
12bf: f5 20 02  mov   a,$0220+x
12c2: cf        mul   ya
12c3: f5 51 02  mov   a,$0251+x
12c6: cf        mul   ya
12c7: da 0a     movw  $0a,ya
12c9: cf        mul   ya
12ca: e8 02     mov   a,#$02
12cc: cf        mul   ya
12cd: da 0e     movw  $0e,ya
12cf: e4 0b     mov   a,$0b
12d1: fd        mov   y,a
12d2: cf        mul   ya
12d3: 7a 0e     addw  ya,$0e
12d5: e4 cb     mov   a,$cb
12d7: cf        mul   ya
12d8: dd        mov   a,y
12d9: d5 71 02  mov   $0271+x,a
12dc: 6f        ret

12dd: db $7f,$00,$00,$00,$00,$00,$00,$00
12e5: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
12ed: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
12f5: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

12fd: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

1305: db $19,$32,$4c,$65,$72,$7f,$8c,$98
130d: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

1315: e8 ff     mov   a,#$ff
1317: c5 68 03  mov   $0368,a
131a: 3f e5 13  call  $13e5
131d: 3f d9 14  call  $14d9
1320: e4 00     mov   a,$00
1322: 3f e9 19  call  $19e9
1325: cd 01     mov   x,#$01
1327: f4 00     mov   a,$00+x
1329: f0 11     beq   $133c
132b: 74 04     cmp   a,$04+x
132d: f0 0d     beq   $133c
132f: c4 0a     mov   $0a,a
1331: 8f 00 0b  mov   $0b,#$00
1334: 4d        push  x
1335: 3f f6 13  call  $13f6
1338: 3f 18 14  call  $1418
133b: ce        pop   x
133c: d4 04     mov   $04+x,a
133e: cd 02     mov   x,#$02
1340: f4 00     mov   a,$00+x
1342: f0 11     beq   $1355
1344: 74 04     cmp   a,$04+x
1346: f0 0d     beq   $1355
1348: c4 0a     mov   $0a,a
134a: 8f 02 0b  mov   $0b,#$02
134d: 4d        push  x
134e: 3f f6 13  call  $13f6
1351: 3f 18 14  call  $1418
1354: ce        pop   x
1355: d4 04     mov   $04+x,a
1357: cd 03     mov   x,#$03
1359: f4 00     mov   a,$00+x
135b: f0 11     beq   $136e
135d: 74 04     cmp   a,$04+x
135f: f0 0d     beq   $136e
1361: c4 0a     mov   $0a,a
1363: 8f 04 0b  mov   $0b,#$04
1366: 4d        push  x
1367: 3f f6 13  call  $13f6
136a: 3f 18 14  call  $1418
136d: ce        pop   x
136e: d4 04     mov   $04+x,a
1370: cd 00     mov   x,#$00
1372: f5 c0 04  mov   a,$04c0+x
1375: f0 32     beq   $13a9
1377: 4d        push  x
1378: fd        mov   y,a
1379: f5 bf 04  mov   a,$04bf+x
137c: da cd     movw  $cd,ya
137e: f5 c7 04  mov   a,$04c7+x
1381: c4 0a     mov   $0a,a
1383: f5 c8 04  mov   a,$04c8+x
1386: c4 16     mov   $16,a
1388: 9f        xcn   a
1389: 5c        lsr   a
138a: c5 66 03  mov   $0366,a
138d: 9f        xcn   a
138e: 5d        mov   x,a
138f: f5 dd 13  mov   a,$13dd+x
1392: c4 15     mov   $15,a
1394: 3f 58 14  call  $1458
1397: ce        pop   x
1398: e8 00     mov   a,#$00
139a: d5 c0 04  mov   $04c0+x,a
139d: d5 c7 04  mov   $04c7+x,a
13a0: d5 c8 04  mov   $04c8+x,a
13a3: 3d        inc   x
13a4: 3d        inc   x
13a5: c8 08     cmp   x,#$08
13a7: 90 c9     bcc   $1372
13a9: fa 00 04  mov   ($04),($00)
13ac: cd 03     mov   x,#$03
13ae: f4 04     mov   a,$04+x
13b0: d4 f4     mov   $f4+x,a
13b2: 1d        dec   x
13b3: 10 f9     bpl   $13ae
13b5: 3f 19 15  call  $1519
13b8: e4 c9     mov   a,$c9
13ba: f0 20     beq   $13dc
13bc: e5 61 03  mov   a,$0361
13bf: ec 62 03  mov   y,$0362
13c2: 7a ca     addw  ya,$ca
13c4: da ca     movw  $ca,ya
13c6: 6e c9 13  dbnz  $c9,$13dc
13c9: e5 63 03  mov   a,$0363
13cc: c4 cb     mov   $cb,a
13ce: e4 ef     mov   a,$ef
13d0: 28 20     and   a,#$20
13d2: d0 03     bne   $13d7
13d4: 8f 00 26  mov   $26,#$00
13d7: e8 30     mov   a,#$30
13d9: 4e ef 00  tclr1 $00ef
13dc: 6f        ret

13dd: db $01,$02,$04,$08,$10,$20,$40,$80

13e5: ba f4     movw  ya,$f4
13e7: 5a f4     cmpw  ya,$f4
13e9: d0 fa     bne   $13e5
13eb: da 00     movw  $00,ya
13ed: ba f6     movw  ya,$f6
13ef: 5a f6     cmpw  ya,$f6
13f1: d0 fa     bne   $13ed
13f3: da 02     movw  $02,ya
13f5: 6f        ret

13f6: e4 0a     mov   a,$0a
13f8: 9c        dec   a
13f9: 9f        xcn   a
13fa: 28 0f     and   a,#$0f
13fc: 1c        asl   a
13fd: 5d        mov   x,a
13fe: f5 01 c4  mov   a,$c401+x
1401: fd        mov   y,a
1402: f5 00 c4  mov   a,$c400+x
1405: da 0e     movw  $0e,ya
1407: e4 0a     mov   a,$0a
1409: 9c        dec   a
140a: 28 0f     and   a,#$0f
140c: 1c        asl   a
140d: fd        mov   y,a
140e: f7 0e     mov   a,($0e)+y
1410: c4 10     mov   $10,a
1412: fc        inc   y
1413: f7 0e     mov   a,($0e)+y
1415: c4 11     mov   $11,a
1417: 6f        ret

1418: e4 0b     mov   a,$0b
141a: cd 00     mov   x,#$00
141c: 8d 04     mov   y,#$04
141e: 75 c8 04  cmp   a,$04c8+x
1421: f0 06     beq   $1429
1423: 3d        inc   x
1424: 3d        inc   x
1425: fe f7     dbnz  y,$141e
1427: 2f 1d     bra   $1446
1429: e4 0a     mov   a,$0a
142b: 75 c7 04  cmp   a,$04c7+x
142e: 90 23     bcc   $1453
1430: ba 10     movw  ya,$10
1432: d5 bf 04  mov   $04bf+x,a
1435: dd        mov   a,y
1436: d5 c0 04  mov   $04c0+x,a
1439: e4 0b     mov   a,$0b
143b: d5 c8 04  mov   $04c8+x,a
143e: e4 0a     mov   a,$0a
1440: d5 c7 04  mov   $04c7+x,a
1443: f8 16     mov   x,$16
1445: 6f        ret

1446: cd 00     mov   x,#$00
1448: 8d 04     mov   y,#$04
144a: f5 c0 04  mov   a,$04c0+x
144d: f0 e1     beq   $1430
144f: 3d        inc   x
1450: 3d        inc   x
1451: fe f7     dbnz  y,$144a
1453: f8 16     mov   x,$16
1455: e8 00     mov   a,#$00
1457: 6f        ret

1458: f8 16     mov   x,$16
145a: f5 00 04  mov   a,$0400+x
145d: d0 17     bne   $1476
145f: e4 15     mov   a,$15
1461: 0e 14 00  tset1 $0014
1464: 4e 6d 03  tclr1 $036d
1467: 4e 6e 03  tclr1 $036e
146a: 24 19     and   a,$19
146c: 0e 6d 03  tset1 $036d
146f: e4 15     mov   a,$15
1471: 24 18     and   a,$18
1473: 0e 6e 03  tset1 $036e
1476: e4 0a     mov   a,$0a
1478: 75 00 04  cmp   a,$0400+x
147b: b0 01     bcs   $147e
147d: 6f        ret

147e: d5 00 04  mov   $0400+x,a
1481: e8 ff     mov   a,#$ff
1483: d5 ef 03  mov   $03ef+x,a
1486: bc        inc   a
1487: fd        mov   y,a
1488: d4 d0     mov   $d0+x,a
148a: d5 ff 03  mov   $03ff+x,a
148d: d5 f0 03  mov   $03f0+x,a
1490: d5 0f 04  mov   $040f+x,a
1493: d5 10 04  mov   $0410+x,a
1496: d5 b0 04  mov   $04b0+x,a
1499: bc        inc   a
149a: d4 cf     mov   $cf+x,a
149c: e4 15     mov   a,$15
149e: 4e 69 03  tclr1 $0369
14a1: 0e 67 03  tset1 $0367
14a4: 8f 5c f2  mov   $f2,#$5c
14a7: c4 f3     mov   $f3,a
14a9: e5 66 03  mov   a,$0366
14ac: 08 05     or    a,#$05
14ae: c4 f2     mov   $f2,a
14b0: cb f3     mov   $f3,y
14b2: f7 cd     mov   a,($cd)+y
14b4: 3f 7a 17  call  $177a
14b7: f7 cd     mov   a,($cd)+y
14b9: 3f 9a 17  call  $179a
14bc: f7 cd     mov   a,($cd)+y
14be: 3f fb 17  call  $17fb
14c1: ba cd     movw  ya,$cd
14c3: d5 1f 04  mov   $041f+x,a
14c6: dd        mov   a,y
14c7: d5 20 04  mov   $0420+x,a
14ca: 6f        ret

14cb: 40        setp
14cc: e9 cc 00  mov   x,$00cc
14cf: af        mov   (x)+,a
14d0: dd        mov   a,y
14d1: af        mov   (x)+,a
14d2: c9 cc 00  mov   $00cc,x
14d5: 20        clrp
14d6: f8 16     mov   x,$16
14d8: 6f        ret

14d9: 40        setp
14da: e8 ff     mov   a,#$ff
14dc: e9 cc 00  mov   x,$00cc
14df: c6        mov   (x),a
14e0: cd 00     mov   x,#$00
14e2: bf        mov   a,(x)+
14e3: 30 09     bmi   $14ee
14e5: c5 f2 00  mov   $00f2,a
14e8: bf        mov   a,(x)+
14e9: c5 f3 00  mov   $00f3,a
14ec: 2f f4     bra   $14e2
14ee: 20        clrp
14ef: e5 69 03  mov   a,$0369
14f2: c4 18     mov   $18,a
14f4: e4 17     mov   a,$17
14f6: 28 e0     and   a,#$e0
14f8: 05 6c 03  or    a,$036c
14fb: c4 17     mov   $17,a
14fd: 8d 03     mov   y,#$03
14ff: f6 15 15  mov   a,$1515+y
1502: c5 f2 00  mov   $00f2,a
1505: f6 68 03  mov   a,$0368+y
1508: c5 f3 00  mov   $00f3,a
150b: fe f2     dbnz  y,$14ff
150d: cb cc     mov   $cc,y
150f: cc 6b 03  mov   $036b,y
1512: cc 6a 03  mov   $036a,y
1515: 6f        ret

1516: 3d        inc   x
1517: 5c        lsr   a
1518: 4c 8f 01  lsr   $018f
151b: 15 cd 00  or    a,$00cd+x
151e: e4 cc     mov   a,$cc
1520: 68 68     cmp   a,#$68
1522: b0 fa     bcs   $151e
1524: d8 16     mov   $16,x
1526: f5 00 04  mov   a,$0400+x
1529: f0 63     beq   $158e
152b: f5 20 04  mov   a,$0420+x
152e: c4 ce     mov   $ce,a
1530: f5 1f 04  mov   a,$041f+x
1533: c4 cd     mov   $cd,a
1535: 7d        mov   a,x
1536: 9f        xcn   a
1537: 5c        lsr   a
1538: c5 66 03  mov   $0366,a
153b: 8f 00 0d  mov   $0d,#$00
153e: 9b cf     dec   $cf+x
1540: d0 46     bne   $1588
1542: e4 15     mov   a,$15
1544: 25 67 03  and   a,$0367
1547: f0 06     beq   $154f
1549: 4e 67 03  tclr1 $0367
154c: 8f 01 0d  mov   $0d,#$01
154f: 3f c2 16  call  $16c2
1552: fd        mov   y,a
1553: d0 33     bne   $1588
1555: d5 00 04  mov   $0400+x,a
1558: e4 15     mov   a,$15
155a: 4e 19 00  tclr1 $0019
155d: 4e 18 00  tclr1 $0018
1560: 4e 69 03  tclr1 $0369
1563: 4e 14 00  tclr1 $0014
1566: 25 6d 03  and   a,$036d
1569: 0e 19 00  tset1 $0019
156c: e4 15     mov   a,$15
156e: 25 6e 03  and   a,$036e
1571: 0e 18 00  tset1 $0018
1574: f5 21 02  mov   a,$0221+x
1577: 3f a8 0d  call  $0da8
157a: e5 66 03  mov   a,$0366
157d: 08 07     or    a,#$07
157f: fd        mov   y,a
1580: f5 51 03  mov   a,$0351+x
1583: 3f 81 09  call  $0981
1586: 2f 06     bra   $158e
1588: 3f 95 15  call  $1595
158b: 3f c1 14  call  $14c1
158e: 3d        inc   x
158f: 3d        inc   x
1590: 0b 15     asl   $15
1592: d0 8a     bne   $151e
1594: 6f        ret

1595: f4 d0     mov   a,$d0+x
1597: f0 24     beq   $15bd
1599: f5 bf 03  mov   a,$03bf+x
159c: 60        clrc
159d: 95 cf 03  adc   a,$03cf+x
15a0: d5 bf 03  mov   $03bf+x,a
15a3: f5 c0 03  mov   a,$03c0+x
15a6: 95 d0 03  adc   a,$03d0+x
15a9: d5 c0 03  mov   $03c0+x,a
15ac: 9b d0     dec   $d0+x
15ae: d0 12     bne   $15c2
15b0: e8 00     mov   a,#$00
15b2: d5 bf 03  mov   $03bf+x,a
15b5: f5 df 03  mov   a,$03df+x
15b8: d5 c0 03  mov   $03c0+x,a
15bb: 2f 05     bra   $15c2
15bd: aa 0d 20  mov1  c,$000d,1
15c0: 90 4c     bcc   $160e
15c2: f5 bf 03  mov   a,$03bf+x
15c5: 60        clrc
15c6: 95 ff 03  adc   a,$03ff+x
15c9: c4 0a     mov   $0a,a
15cb: f5 c0 03  mov   a,$03c0+x
15ce: 95 f0 03  adc   a,$03f0+x
15d1: 28 7f     and   a,#$7f
15d3: c4 0b     mov   $0b,a
15d5: e5 69 03  mov   a,$0369
15d8: 24 15     and   a,$15
15da: d0 2b     bne   $1607
15dc: f5 0f 04  mov   a,$040f+x
15df: f0 0f     beq   $15f0
15e1: 0b 12     asl   $12
15e3: eb 12     mov   y,$12
15e5: cf        mul   ya
15e6: dd        mov   a,y
15e7: 60        clrc
15e8: 84 0a     adc   a,$0a
15ea: c4 0a     mov   $0a,a
15ec: 90 02     bcc   $15f0
15ee: ab 0b     inc   $0b
15f0: 3f 8e 09  call  $098e
15f3: e5 66 03  mov   a,$0366
15f6: 08 02     or    a,#$02
15f8: 3f cb 14  call  $14cb
15fb: eb 10     mov   y,$10
15fd: e5 66 03  mov   a,$0366
1600: 08 03     or    a,#$03
1602: 3f cb 14  call  $14cb
1605: 2f 07     bra   $160e
1607: e4 0b     mov   a,$0b
1609: 28 1f     and   a,#$1f
160b: c5 6c 03  mov   $036c,a
160e: f4 df     mov   a,$df+x
1610: f0 22     beq   $1634
1612: f5 9f 03  mov   a,$039f+x
1615: 60        clrc
1616: 95 af 03  adc   a,$03af+x
1619: d5 9f 03  mov   $039f+x,a
161c: f5 a0 03  mov   a,$03a0+x
161f: 95 b0 03  adc   a,$03b0+x
1622: d5 a0 03  mov   $03a0+x,a
1625: 02 0d     set0  $0d
1627: 9b df     dec   $df+x
1629: d0 09     bne   $1634
162b: d5 9f 03  mov   $039f+x,a
162e: f5 90 03  mov   a,$0390+x
1631: d5 a0 03  mov   $03a0+x,a
1634: f4 e0     mov   a,$e0+x
1636: f0 22     beq   $165a
1638: f5 6f 03  mov   a,$036f+x
163b: 60        clrc
163c: 95 7f 03  adc   a,$037f+x
163f: d5 6f 03  mov   $036f+x,a
1642: f5 70 03  mov   a,$0370+x
1645: 95 80 03  adc   a,$0380+x
1648: d5 70 03  mov   $0370+x,a
164b: 02 0d     set0  $0d
164d: 9b e0     dec   $e0+x
164f: d0 09     bne   $165a
1651: d5 6f 03  mov   $036f+x,a
1654: f5 8f 03  mov   a,$038f+x
1657: d5 70 03  mov   $0370+x,a
165a: aa 0d 00  mov1  c,$000d,0
165d: 90 43     bcc   $16a2
165f: ec 68 03  mov   y,$0368
1662: f5 a0 03  mov   a,$03a0+x
1665: cf        mul   ya
1666: f5 ef 03  mov   a,$03ef+x
1669: cf        mul   ya
166a: cb 0e     mov   $0e,y
166c: e5 66 03  mov   a,$0366
166f: c4 0d     mov   $0d,a
1671: f5 70 03  mov   a,$0370+x
1674: fd        mov   y,a
1675: f5 6f 03  mov   a,$036f+x
1678: da 0a     movw  $0a,ya
167a: f6 a4 16  mov   a,$16a4+y
167d: 80        setc
167e: b6 a3 16  sbc   a,$16a3+y
1681: eb 0a     mov   y,$0a
1683: cf        mul   ya
1684: dd        mov   a,y
1685: eb 0b     mov   y,$0b
1687: 60        clrc
1688: 96 a3 16  adc   a,$16a3+y
168b: eb 0e     mov   y,$0e
168d: cf        mul   ya
168e: e4 0d     mov   a,$0d
1690: 3f cb 14  call  $14cb
1693: 03 0d 0c  bbs0  $0d,$16a2
1696: ab 0d     inc   $0d
1698: 8d 1e     mov   y,#$1e
169a: e8 00     mov   a,#$00
169c: 9a 0a     subw  ya,$0a
169e: da 0a     movw  $0a,ya
16a0: 2f d8     bra   $167a
16a2: 6f        ret

16a3: db $00,$02,$05,$09,$0f,$15,$1b,$22
16ab: db $29,$2f,$35,$3c,$42,$48,$4c,$51
16b3: db $55,$59,$5e,$62,$66,$6a,$6e,$71
16bb: db $74,$77,$7a,$7c,$7d,$7e,$7f

16c2: e8 16     mov   a,#$16
16c4: 2d        push  a
16c5: e8 c2     mov   a,#$c2
16c7: 2d        push  a
16c8: 8d 00     mov   y,#$00
16ca: f7 cd     mov   a,($cd)+y
16cc: f0 27     beq   $16f5
16ce: 30 0a     bmi   $16da
16d0: 68 40     cmp   a,#$40
16d2: 90 03     bcc   $16d7
16d4: 5f 7b 18  jmp   $187b

16d7: 5f 64 17  jmp   $1764

16da: 68 c8     cmp   a,#$c8
16dc: b0 03     bcs   $16e1
16de: 5f a3 18  jmp   $18a3

16e1: 80        setc
16e2: a8 c8     sbc   a,#$c8
16e4: 1c        asl   a
16e5: fd        mov   y,a
16e6: f6 f9 16  mov   a,$16f9+y
16e9: 2d        push  a
16ea: f6 f8 16  mov   a,$16f8+y
16ed: 2d        push  a
16ee: 8d 00     mov   y,#$00
16f0: 3a cd     incw  $cd
16f2: f7 cd     mov   a,($cd)+y
16f4: 6f        ret

16f5: ee        pop   y
16f6: ee        pop   y
16f7: 6f        ret

16f8: dw $177a
16fa: dw $17fb
16fc: dw $1852
16fe: dw $1888
1700: dw $1836
1702: dw $184c
1704: dw $1764
1706: dw $17b3
1708: dw $17c3
170a: dw $17df
170c: dw $18dd
170e: dw $197a
1710: dw $1992
1712: dw $18f9
1714: dw $18ff
1716: dw $1906
1718: dw $191d
171a: dw $192b
171c: dw $193a
171e: dw $1770
1720: dw $1768
1722: dw $1893
1724: dw $1898
1726: dw $189d
1728: dw $186c
172a: dw $1871
172c: dw $1876
172e: dw $19a0
1730: dw $199c
1732: dw $1776
1734: dw $19a6
1736: dw $19ac
1738: dw $178c
173a: dw $1788
173c: dw $1794
173e: dw $1957
1740: dw $1970
1742: dw $1748
1744: dw $1754
1748: dw $183c

1748: e5 66 03  mov   a,$0366
174b: 08 08     or    a,#$08
174d: c4 f2     mov   $f2,a
174f: e4 f3     mov   a,$f3
1751: d0 0b     bne   $175e
1753: 6f        ret

1754: 8f 7c f2  mov   $f2,#$7c
1757: e4 f3     mov   a,$f3
1759: 24 15     and   a,$15
175b: f0 01     beq   $175e
175d: 6f        ret

175e: 1a cd     decw  $cd
1760: e8 01     mov   a,#$01
1762: 2f 07     bra   $176b
1764: 3a cd     incw  $cd
1766: 2f 03     bra   $176b
1768: f5 10 04  mov   a,$0410+x
176b: d4 cf     mov   $cf+x,a
176d: ae        pop   a
176e: ae        pop   a
176f: 6f        ret

1770: d5 10 04  mov   $0410+x,a
1773: 3a cd     incw  $cd
1775: 6f        ret

1776: 60        clrc
1777: 95 a0 03  adc   a,$03a0+x
177a: d5 a0 03  mov   $03a0+x,a
177d: dd        mov   a,y
177e: d5 9f 03  mov   $039f+x,a
1781: d4 df     mov   $df+x,a
1783: 3a cd     incw  $cd
1785: 02 0d     set0  $0d
1787: 6f        ret

1788: 60        clrc
1789: 95 ff 03  adc   a,$03ff+x
178c: d5 ff 03  mov   $03ff+x,a
178f: 3a cd     incw  $cd
1791: 22 0d     set1  $0d
1793: 6f        ret

1794: d5 00 04  mov   $0400+x,a
1797: 3a cd     incw  $cd
1799: 6f        ret

179a: c4 0a     mov   $0a,a
179c: e4 15     mov   a,$15
179e: e3 0a 0d  bbs7  $0a,$17ae
17a1: aa ef c0  mov1  c,$00ef,6
17a4: b0 03     bcs   $17a9
17a6: b3 0a 05  bbc5  $0a,$17ae
17a9: 0e 19 00  tset1 $0019
17ac: 2f 03     bra   $17b1
17ae: 4e 19 00  tclr1 $0019
17b1: e4 0a     mov   a,$0a
17b3: 28 1f     and   a,#$1f
17b5: d5 70 03  mov   $0370+x,a
17b8: dd        mov   a,y
17b9: d5 6f 03  mov   $036f+x,a
17bc: d4 e0     mov   $e0+x,a
17be: 3a cd     incw  $cd
17c0: 02 0d     set0  $0d
17c2: 6f        ret

17c3: d4 df     mov   $df+x,a
17c5: 2d        push  a
17c6: 3a cd     incw  $cd
17c8: f7 cd     mov   a,($cd)+y
17ca: 3a cd     incw  $cd
17cc: d5 90 03  mov   $0390+x,a
17cf: 80        setc
17d0: b5 a0 03  sbc   a,$03a0+x
17d3: ce        pop   x
17d4: 3f f3 0f  call  $0ff3
17d7: d5 af 03  mov   $03af+x,a
17da: dd        mov   a,y
17db: d5 b0 03  mov   $03b0+x,a
17de: 6f        ret

17df: d4 e0     mov   $e0+x,a
17e1: 2d        push  a
17e2: 3a cd     incw  $cd
17e4: f7 cd     mov   a,($cd)+y
17e6: 3a cd     incw  $cd
17e8: d5 8f 03  mov   $038f+x,a
17eb: 80        setc
17ec: b5 70 03  sbc   a,$0370+x
17ef: ce        pop   x
17f0: 3f f3 0f  call  $0ff3
17f3: d5 7f 03  mov   $037f+x,a
17f6: dd        mov   a,y
17f7: d5 80 03  mov   $0380+x,a
17fa: 6f        ret

17fb: c4 0a     mov   $0a,a
17fd: d3 0a 03  bbc6  $0a,$1803
1800: 3f 36 18  call  $1836
1803: e4 0a     mov   a,$0a
1805: f3 0a 05  bbc7  $0a,$180d
1808: e4 15     mov   a,$15
180a: 0e 69 03  tset1 $0369
180d: e4 0a     mov   a,$0a
180f: 28 3f     and   a,#$3f
1811: 2d        push  a
1812: 8d 06     mov   y,#$06
1814: cf        mul   ya
1815: da 0e     movw  $0e,ya
1817: 60        clrc
1818: 98 80 0e  adc   $0e,#$80
181b: 98 1d 0f  adc   $0f,#$1d
181e: 8d 04     mov   y,#$04
1820: f7 0e     mov   a,($0e)+y
1822: d5 01 02  mov   $0201+x,a
1825: fc        inc   y
1826: f7 0e     mov   a,($0e)+y
1828: d5 00 02  mov   $0200+x,a
182b: e5 66 03  mov   a,$0366
182e: 08 04     or    a,#$04
1830: ee        pop   y
1831: 3a cd     incw  $cd
1833: 5f cb 14  jmp   $14cb

1836: e4 15     mov   a,$15
1838: 0e 6b 03  tset1 $036b
183b: 6f        ret

183c: e8 e8     mov   a,#$e8
183e: 8d 19     mov   y,#$19
1840: da cd     movw  $cd,ya
1842: e8 01     mov   a,#$01
1844: d5 00 04  mov   $0400+x,a
1847: bc        inc   a
1848: d4 cf     mov   $cf+x,a
184a: ae        pop   a
184b: ae        pop   a
184c: e4 15     mov   a,$15
184e: 0e 6a 03  tset1 $036a
1851: 6f        ret

1852: fd        mov   y,a
1853: e5 66 03  mov   a,$0366
1856: 08 05     or    a,#$05
1858: 3f cb 14  call  $14cb
185b: 3a cd     incw  $cd
185d: 8d 00     mov   y,#$00
185f: f7 cd     mov   a,($cd)+y
1861: fd        mov   y,a
1862: e5 66 03  mov   a,$0366
1865: 08 06     or    a,#$06
1867: 3a cd     incw  $cd
1869: 5f cb 14  jmp   $14cb

186c: f5 2f 04  mov   a,$042f+x
186f: 2f 19     bra   $188a
1871: f5 30 04  mov   a,$0430+x
1874: 2f 14     bra   $188a
1876: f5 3f 04  mov   a,$043f+x
1879: 2f 0f     bra   $188a
187b: fd        mov   y,a
187c: 28 0f     and   a,#$0f
187e: c4 0a     mov   $0a,a
1880: dd        mov   a,y
1881: 28 70     and   a,#$70
1883: 1c        asl   a
1884: 04 0a     or    a,$0a
1886: 08 10     or    a,#$10
1888: 3a cd     incw  $cd
188a: fd        mov   y,a
188b: e5 66 03  mov   a,$0366
188e: 08 07     or    a,#$07
1890: 5f cb 14  jmp   $14cb

1893: d5 2f 04  mov   $042f+x,a
1896: 2f 08     bra   $18a0
1898: d5 30 04  mov   $0430+x,a
189b: 2f 03     bra   $18a0
189d: d5 3f 04  mov   $043f+x,a
18a0: 3a cd     incw  $cd
18a2: 6f        ret

18a3: d5 c0 03  mov   $03c0+x,a
18a6: dd        mov   a,y
18a7: d5 bf 03  mov   $03bf+x,a
18aa: d4 d0     mov   $d0+x,a
18ac: 3a cd     incw  $cd
18ae: f5 b0 04  mov   a,$04b0+x
18b1: f0 12     beq   $18c5
18b3: c4 0e     mov   $0e,a
18b5: ba cd     movw  ya,$cd
18b7: d5 9f 04  mov   $049f+x,a
18ba: dd        mov   a,y
18bb: d5 a0 04  mov   $04a0+x,a
18be: eb 0e     mov   y,$0e
18c0: f5 af 04  mov   a,$04af+x
18c3: da cd     movw  $cd,ya
18c5: e5 69 03  mov   a,$0369
18c8: 24 15     and   a,$15
18ca: f0 0e     beq   $18da
18cc: f5 c0 03  mov   a,$03c0+x
18cf: 68 a0     cmp   a,#$a0
18d1: 90 07     bcc   $18da
18d3: e4 15     mov   a,$15
18d5: 4e 69 03  tclr1 $0369
18d8: 2f 02     bra   $18dc
18da: 22 0d     set1  $0d
18dc: 6f        ret

18dd: d4 d0     mov   $d0+x,a
18df: 2d        push  a
18e0: 3a cd     incw  $cd
18e2: f7 cd     mov   a,($cd)+y
18e4: 3a cd     incw  $cd
18e6: d5 df 03  mov   $03df+x,a
18e9: 80        setc
18ea: b5 c0 03  sbc   a,$03c0+x
18ed: ce        pop   x
18ee: 3f f3 0f  call  $0ff3
18f1: d5 cf 03  mov   $03cf+x,a
18f4: dd        mov   a,y
18f5: d5 d0 03  mov   $03d0+x,a
18f8: 6f        ret

18f9: d5 40 04  mov   $0440+x,a
18fc: dd        mov   a,y
18fd: 2f 0c     bra   $190b
18ff: d5 4f 04  mov   $044f+x,a
1902: e8 10     mov   a,#$10
1904: 2f 05     bra   $190b
1906: d5 50 04  mov   $0450+x,a
1909: e8 20     mov   a,#$20
190b: 60        clrc
190c: 84 16     adc   a,$16
190e: 5d        mov   x,a
190f: 3a cd     incw  $cd
1911: ba cd     movw  ya,$cd
1913: d5 5f 04  mov   $045f+x,a
1916: dd        mov   a,y
1917: d5 60 04  mov   $0460+x,a
191a: f8 16     mov   x,$16
191c: 6f        ret

191d: f5 40 04  mov   a,$0440+x
1920: f0 06     beq   $1928
1922: 9c        dec   a
1923: d5 40 04  mov   $0440+x,a
1926: f0 2e     beq   $1956
1928: dd        mov   a,y
1929: 2f 1c     bra   $1947
192b: f5 4f 04  mov   a,$044f+x
192e: f0 06     beq   $1936
1930: 9c        dec   a
1931: d5 4f 04  mov   $044f+x,a
1934: f0 20     beq   $1956
1936: e8 10     mov   a,#$10
1938: 2f 0d     bra   $1947
193a: f5 50 04  mov   a,$0450+x
193d: f0 06     beq   $1945
193f: 9c        dec   a
1940: d5 50 04  mov   $0450+x,a
1943: f0 11     beq   $1956
1945: e8 20     mov   a,#$20
1947: 60        clrc
1948: 84 16     adc   a,$16
194a: 5d        mov   x,a
194b: f5 60 04  mov   a,$0460+x
194e: fd        mov   y,a
194f: f5 5f 04  mov   a,$045f+x
1952: da cd     movw  $cd,ya
1954: f8 16     mov   x,$16
1956: 6f        ret

1957: f0 11     beq   $196a
1959: 9c        dec   a
195a: 1c        asl   a
195b: fd        mov   y,a
195c: f6 20 c4  mov   a,$c420+y
195f: d5 af 04  mov   $04af+x,a
1962: f6 21 c4  mov   a,$c421+y
1965: d5 b0 04  mov   $04b0+x,a
1968: 2f 03     bra   $196d
196a: d5 b0 04  mov   $04b0+x,a
196d: 3a cd     incw  $cd
196f: 6f        ret

1970: f5 a0 04  mov   a,$04a0+x
1973: fd        mov   y,a
1974: f5 9f 04  mov   a,$049f+x
1977: da cd     movw  $cd,ya
1979: 6f        ret

197a: c4 0e     mov   $0e,a
197c: 3a cd     incw  $cd
197e: f7 cd     mov   a,($cd)+y
1980: c4 0f     mov   $0f,a
1982: 3a cd     incw  $cd
1984: ba cd     movw  ya,$cd
1986: d5 8f 04  mov   $048f+x,a
1989: dd        mov   a,y
198a: d5 90 04  mov   $0490+x,a
198d: ba 0e     movw  ya,$0e
198f: da cd     movw  $cd,ya
1991: 6f        ret

1992: f5 90 04  mov   a,$0490+x
1995: fd        mov   y,a
1996: f5 8f 04  mov   a,$048f+x
1999: da cd     movw  $cd,ya
199b: 6f        ret

199c: 60        clrc
199d: 95 f0 03  adc   a,$03f0+x
19a0: d5 f0 03  mov   $03f0+x,a
19a3: 3a cd     incw  $cd
19a5: 6f        ret

19a6: d5 0f 04  mov   $040f+x,a
19a9: 3a cd     incw  $cd
19ab: 6f        ret

19ac: c4 10     mov   $10,a
19ae: 3a cd     incw  $cd
19b0: f7 cd     mov   a,($cd)+y
19b2: 3a cd     incw  $cd
19b4: c4 11     mov   $11,a
19b6: f7 cd     mov   a,($cd)+y
19b8: 3a cd     incw  $cd
19ba: fd        mov   y,a
19bb: 28 07     and   a,#$07
19bd: 1c        asl   a
19be: c4 0b     mov   $0b,a
19c0: dd        mov   a,y
19c1: 28 f8     and   a,#$f8
19c3: c4 0a     mov   $0a,a
19c5: 5f 18 14  jmp   $1418

19c8: 8d 01     mov   y,#$01
19ca: cd 00     mov   x,#$00
19cc: 2f 04     bra   $19d2
19ce: 8d 08     mov   y,#$08
19d0: cd 00     mov   x,#$00
19d2: e8 01     mov   a,#$01
19d4: d4 cf     mov   $cf+x,a
19d6: e8 e7     mov   a,#$e7
19d8: d5 1f 04  mov   $041f+x,a
19db: e8 19     mov   a,#$19
19dd: d5 20 04  mov   $0420+x,a
19e0: 3d        inc   x
19e1: 3d        inc   x
19e2: fe ee     dbnz  y,$19d2
19e4: f8 16     mov   x,$16
19e6: 6f        ret

19e7: ef        sleep
19e8: 00        nop

19e9: 64 04     cmp   a,$04
19eb: f0 08     beq   $19f5
19ed: 68 e0     cmp   a,#$e0
19ef: b0 1f     bcs   $1a10
19f1: 68 c0     cmp   a,#$c0
19f3: b0 01     bcs   $19f6
19f5: 6f        ret

19f6: 28 1f     and   a,#$1f
19f8: 64 26     cmp   a,$26
19fa: f0 13     beq   $1a0f
19fc: c4 26     mov   $26,a
19fe: e8 00     mov   a,#$00
1a00: c5 65 03  mov   $0365,a
1a03: c4 c9     mov   $c9,a
1a05: c4 c7     mov   $c7,a
1a07: 9c        dec   a
1a08: c4 cb     mov   $cb,a
1a0a: e8 32     mov   a,#$32
1a0c: 4e ef 00  tclr1 $00ef
1a0f: 6f        ret

1a10: 28 1f     and   a,#$1f
1a12: fd        mov   y,a
1a13: 1c        asl   a
1a14: 5d        mov   x,a
1a15: 1f 18 1a  jmp   ($1a18+x)

1a18: dw $1a67
1a1a: dw $1a67
1a1c: dw $1a67
1a1e: dw $1a67
1a20: dw $1a67
1a22: dw $1a67
1a24: dw $1a67
1a26: dw $1a67
1a28: dw $1a59
1a2a: dw $1a59
1a2c: dw $1a59
1a2e: dw $1a59
1a30: dw $1a59
1a32: dw $1a59
1a34: dw $1a59
1a36: dw $1a59
1a38: dw $1a89
1a3a: dw $1ab8
1a3c: dw $1a58
1a3e: dw $1a58
1a40: dw $1a58
1a42: dw $1a58
1a44: dw $1a58
1a46: dw $1a58
1a48: dw $1a58
1a4a: dw $1a58
1a4c: dw $19c8
1a4e: dw $19ce
1a50: dw $ff93
1a52: dw $ff49
1a54: dw $ff40
1a56: dw $0800

1a58: 6f        ret

1a59: 92 ef     clr4  $ef
1a5b: a2 ef     set5  $ef
1a5d: fc        inc   y
1a5e: e8 20     mov   a,#$20
1a60: cf        mul   ya
1a61: 9c        dec   a
1a62: 5d        mov   x,a
1a63: e8 ff     mov   a,#$ff
1a65: 2f 0c     bra   $1a73
1a67: b2 ef     clr5  $ef
1a69: 82 ef     set4  $ef
1a6b: fc        inc   y
1a6c: e8 20     mov   a,#$20
1a6e: cf        mul   ya
1a6f: 9c        dec   a
1a70: 5d        mov   x,a
1a71: e8 0a     mov   a,#$0a
1a73: d8 c9     mov   $c9,x
1a75: c5 63 03  mov   $0363,a
1a78: 8f 00 ca  mov   $ca,#$00
1a7b: 80        setc
1a7c: a4 cb     sbc   a,$cb
1a7e: 3f f3 0f  call  $0ff3
1a81: c5 61 03  mov   $0361,a
1a84: dd        mov   a,y
1a85: c5 62 03  mov   $0362,a
1a88: 6f        ret

1a89: 3f 37 1b  call  $1b37
1a8c: 3f a6 1a  call  $1aa6
1a8f: 3f 46 1b  call  $1b46
1a92: 3f a6 1a  call  $1aa6
1a95: 3f 4f 1b  call  $1b4f
1a98: 3f a6 1a  call  $1aa6
1a9b: 3f 58 1b  call  $1b58
1a9e: e8 01     mov   a,#$01
1aa0: c5 cf 04  mov   $04cf,a
1aa3: 9c        dec   a
1aa4: c4 26     mov   $26,a
1aa6: 8d 00     mov   y,#$00
1aa8: f7 10     mov   a,($10)+y
1aaa: d7 0e     mov   ($0e)+y,a
1aac: fc        inc   y
1aad: 1d        dec   x
1aae: d0 f8     bne   $1aa8
1ab0: dd        mov   a,y
1ab1: 8d 00     mov   y,#$00
1ab3: 7a 0e     addw  ya,$0e
1ab5: da 0e     movw  $0e,ya
1ab7: 6f        ret

1ab8: e5 cf 04  mov   a,$04cf
1abb: f0 79     beq   $1b36
1abd: 3f 37 1b  call  $1b37
1ac0: 3f 25 1b  call  $1b25
1ac3: 3f 46 1b  call  $1b46
1ac6: 3f 25 1b  call  $1b25
1ac9: 3f 4f 1b  call  $1b4f
1acc: 3f 25 1b  call  $1b25
1acf: 3f 58 1b  call  $1b58
1ad2: 3f 25 1b  call  $1b25
1ad5: 8f 00 15  mov   $15,#$00
1ad8: cd 0e     mov   x,#$0e
1ada: f5 00 04  mov   a,$0400+x
1add: d0 12     bne   $1af1
1adf: f5 21 02  mov   a,$0221+x
1ae2: 3f a8 0d  call  $0da8
1ae5: e5 66 03  mov   a,$0366
1ae8: 08 07     or    a,#$07
1aea: fd        mov   y,a
1aeb: f5 51 03  mov   a,$0351+x
1aee: 3f 81 09  call  $0981
1af1: 1d        dec   x
1af2: 1d        dec   x
1af3: 10 e5     bpl   $1ada
1af5: e8 5c     mov   a,#$5c
1af7: c5 f2 00  mov   $00f2,a
1afa: e4 14     mov   a,$14
1afc: 48 ff     eor   a,#$ff
1afe: c5 f3 00  mov   $00f3,a
1b01: 4e 19 00  tclr1 $0019
1b04: 4e 18 00  tclr1 $0018
1b07: 4e 69 03  tclr1 $0369
1b0a: c4 0a     mov   $0a,a
1b0c: 25 6d 03  and   a,$036d
1b0f: 0e 19 00  tset1 $0019
1b12: e4 0a     mov   a,$0a
1b14: 25 6e 03  and   a,$036e
1b17: 0e 18 00  tset1 $0018
1b1a: e8 00     mov   a,#$00
1b1c: c4 cb     mov   $cb,a
1b1e: c5 cf 04  mov   $04cf,a
1b21: fd        mov   y,a
1b22: 5f 59 1a  jmp   $1a59

1b25: 8d 00     mov   y,#$00
1b27: f7 0e     mov   a,($0e)+y
1b29: d7 10     mov   ($10)+y,a
1b2b: fc        inc   y
1b2c: 1d        dec   x
1b2d: d0 f8     bne   $1b27
1b2f: dd        mov   a,y
1b30: 8d 00     mov   y,#$00
1b32: 7a 0e     addw  ya,$0e
1b34: da 0e     movw  $0e,ya
1b36: 6f        ret

1b37: 8f d0 0e  mov   $0e,#$d0
1b3a: 8f 04 0f  mov   $0f,#$04
1b3d: 8f 20 10  mov   $10,#$20
1b40: 8f 00 11  mov   $11,#$00
1b43: cd a9     mov   x,#$a9
1b45: 6f        ret

1b46: 8f 70 10  mov   $10,#$70
1b49: 8f 01 11  mov   $11,#$01
1b4c: cd 30     mov   x,#$30
1b4e: 6f        ret

1b4f: 8f 10 10  mov   $10,#$10
1b52: 8f 02 11  mov   $11,#$02
1b55: cd d0     mov   x,#$d0
1b57: 6f        ret

1b58: 8f e0 10  mov   $10,#$e0
1b5b: 8f 02 11  mov   $11,#$02
1b5e: cd 86     mov   x,#$86
