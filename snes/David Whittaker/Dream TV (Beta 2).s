0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 f0     cmp   x,#$f0
080a: d0 fb     bne   $0807
080c: 5d        mov   x,a
080d: d5 00 01  mov   $0100+x,a
0810: d5 00 02  mov   $0200+x,a
0813: d5 00 03  mov   $0300+x,a
0816: d5 00 04  mov   $0400+x,a
0819: d5 00 05  mov   $0500+x,a
081c: d5 00 06  mov   $0600+x,a
081f: d5 00 07  mov   $0700+x,a
0822: 3d        inc   x
0823: d0 e8     bne   $080d
0825: e8 df     mov   a,#$df
0827: 3f f4 0b  call  $0bf4
082a: e8 7f     mov   a,#$7f
082c: 8d 0c     mov   y,#$0c
082e: 3f da 0b  call  $0bda
0831: 8d 1c     mov   y,#$1c
0833: 3f da 0b  call  $0bda
0836: e8 20     mov   a,#$20
0838: 8d 5d     mov   y,#$5d
083a: 3f da 0b  call  $0bda
083d: e8 30     mov   a,#$30
083f: c5 f1 00  mov   $00f1,a
0842: e8 10     mov   a,#$10
0844: c5 fa 00  mov   $00fa,a
0847: e8 01     mov   a,#$01
0849: c5 f1 00  mov   $00f1,a
084c: e8 ff     mov   a,#$ff
084e: c4 82     mov   $82,a
0850: e8 80     mov   a,#$80
0852: c4 83     mov   $83,a
0854: e8 1b     mov   a,#$1b
0856: c4 84     mov   $84,a
0858: e8 34     mov   a,#$34
085a: c4 85     mov   $85,a
085c: 3f 75 09  call  $0975
085f: ec fd 00  mov   y,$00fd
0862: f0 fb     beq   $085f
0864: e5 f4 00  mov   a,$00f4
0867: f0 50     beq   $08b9
0869: c4 04     mov   $04,a
086b: e9 f5 00  mov   x,$00f5
086e: d8 05     mov   $05,x
0870: ec f6 00  mov   y,$00f6
0873: cb 88     mov   $88,y
0875: 8d 31     mov   y,#$31
0877: cc f1 00  mov   $00f1,y
087a: 68 01     cmp   a,#$01
087c: d0 05     bne   $0883
087e: 3f 17 09  call  $0917
0881: 2f 36     bra   $08b9
0883: 68 04     cmp   a,#$04
0885: d0 05     bne   $088c
0887: 3f 9a 0c  call  $0c9a
088a: 2f 2d     bra   $08b9
088c: 68 05     cmp   a,#$05
088e: d0 05     bne   $0895
0890: 3f 4e 0d  call  $0d4e
0893: 2f 24     bra   $08b9
0895: 68 02     cmp   a,#$02
0897: d0 05     bne   $089e
0899: 3f 75 09  call  $0975
089c: 2f 1b     bra   $08b9
089e: 68 03     cmp   a,#$03
08a0: d0 05     bne   $08a7
08a2: 3f 6a 09  call  $096a
08a5: 2f 12     bra   $08b9
08a7: 68 06     cmp   a,#$06
08a9: d0 05     bne   $08b0
08ab: 8f ff 86  mov   $86,#$ff
08ae: 2f 09     bra   $08b9
08b0: 68 07     cmp   a,#$07
08b2: d0 05     bne   $08b9
08b4: 8f 00 86  mov   $86,#$00
08b7: 2f 00     bra   $08b9
08b9: ab 87     inc   $87
08bb: 78 0a 87  cmp   $87,#$0a
08be: d0 9f     bne   $085f
08c0: 8f 00 87  mov   $87,#$00
08c3: e4 1f     mov   a,$1f
08c5: f0 2d     beq   $08f4
08c7: e4 86     mov   a,$86
08c9: d0 09     bne   $08d4
08cb: e4 1b     mov   a,$1b
08cd: 60        clrc
08ce: 84 1d     adc   a,$1d
08d0: c4 1d     mov   $1d,a
08d2: 90 10     bcc   $08e4
08d4: cd 00     mov   x,#$00
08d6: 8f 01 0e  mov   $0e,#$01
08d9: 3f 8a 09  call  $098a
08dc: 0b 0e     asl   $0e
08de: 3d        inc   x
08df: 3d        inc   x
08e0: c8 0a     cmp   x,#$0a
08e2: d0 f5     bne   $08d9
08e4: cd 00     mov   x,#$00
08e6: 8f 01 0e  mov   $0e,#$01
08e9: 3f d8 0a  call  $0ad8
08ec: 0b 0e     asl   $0e
08ee: 3d        inc   x
08ef: 3d        inc   x
08f0: c8 0a     cmp   x,#$0a
08f2: d0 f5     bne   $08e9
08f4: 3f 02 0e  call  $0e02
08f7: 8d 09     mov   y,#$09
08f9: ad 05     cmp   y,#$05
08fb: d0 01     bne   $08fe
08fd: dc        dec   y
08fe: f6 5c 0c  mov   a,$0c5c+y
0901: c5 f2 00  mov   $00f2,a
0904: f6 65 0c  mov   a,$0c65+y
0907: 5d        mov   x,a
0908: e6        mov   a,(x)
0909: c5 f3 00  mov   $00f3,a
090c: fe eb     dbnz  y,$08f9
090e: 8f 00 0c  mov   $0c,#$00
0911: 8f 00 0d  mov   $0d,#$00
0914: 5f 5f 08  jmp   $085f

0917: 3f 75 09  call  $0975
091a: 7d        mov   a,x
091b: 8d 0b     mov   y,#$0b
091d: cf        mul   ya
091e: fd        mov   y,a
091f: e8 00     mov   a,#$00
0921: cd 4f     mov   x,#$4f
0923: d4 20     mov   $20+x,a
0925: 1d        dec   x
0926: 10 fb     bpl   $0923
0928: f6 d5 11  mov   a,$11d5+y
092b: c4 1b     mov   $1b,a
092d: c4 1c     mov   $1c,a
092f: fc        inc   y
0930: cd 00     mov   x,#$00
0932: f6 d5 11  mov   a,$11d5+y
0935: d4 2a     mov   $2a+x,a
0937: c4 17     mov   $17,a
0939: fc        inc   y
093a: f6 d5 11  mov   a,$11d5+y
093d: d4 2b     mov   $2b+x,a
093f: c4 18     mov   $18,a
0941: fc        inc   y
0942: 6d        push  y
0943: 8d 00     mov   y,#$00
0945: f7 17     mov   a,($17)+y
0947: d4 20     mov   $20+x,a
0949: fc        inc   y
094a: f7 17     mov   a,($17)+y
094c: d4 21     mov   $21+x,a
094e: ee        pop   y
094f: e8 02     mov   a,#$02
0951: d4 34     mov   $34+x,a
0953: 9c        dec   a
0954: d4 49     mov   $49+x,a
0956: 3d        inc   x
0957: 3d        inc   x
0958: c8 0a     cmp   x,#$0a
095a: d0 d6     bne   $0932
095c: e8 00     mov   a,#$00
095e: c4 1e     mov   $1e,a
0960: c4 86     mov   $86,a
0962: 9c        dec   a
0963: c4 1d     mov   $1d,a
0965: c4 1f     mov   $1f,a
0967: c4 1a     mov   $1a,a
0969: 6f        ret

096a: e4 1f     mov   a,$1f
096c: f0 06     beq   $0974
096e: e4 1a     mov   a,$1a
0970: d0 02     bne   $0974
0972: 8b 1a     dec   $1a
0974: 6f        ret

0975: e8 00     mov   a,#$00
0977: c4 1a     mov   $1a,a
0979: c4 80     mov   $80,a
097b: c4 81     mov   $81,a
097d: c4 10     mov   $10,a
097f: c4 0c     mov   $0c,a
0981: c4 0d     mov   $0d,a
0983: e8 ff     mov   a,#$ff
0985: 8d 5c     mov   y,#$5c
0987: 5f da 0b  jmp   $0bda

098a: 78 00 1a  cmp   $1a,#$00
098d: d0 01     bne   $0990
098f: 6f        ret

0990: 9b 49     dec   $49+x
0992: f0 01     beq   $0995
0994: 6f        ret

0995: f4 20     mov   a,$20+x
0997: c4 17     mov   $17,a
0999: f4 21     mov   a,$21+x
099b: c4 18     mov   $18,a
099d: 8d 00     mov   y,#$00
099f: f7 17     mov   a,($17)+y
09a1: fd        mov   y,a
09a2: ab 17     inc   $17
09a4: d0 02     bne   $09a8
09a6: ab 18     inc   $18
09a8: dd        mov   a,y
09a9: 30 24     bmi   $09cf
09ab: 68 60     cmp   a,#$60
09ad: 90 06     bcc   $09b5
09af: 88 a0     adc   a,#$a0
09b1: d4 48     mov   $48+x,a
09b3: 2f e8     bra   $099d
09b5: c8 08     cmp   x,#$08
09b7: f0 03     beq   $09bc
09b9: 60        clrc
09ba: 84 1e     adc   a,$1e
09bc: 60        clrc
09bd: 94 66     adc   a,$66+x
09bf: 3f 48 0b  call  $0b48
09c2: e4 17     mov   a,$17
09c4: d4 20     mov   $20+x,a
09c6: e4 18     mov   a,$18
09c8: d4 21     mov   $21+x,a
09ca: f4 48     mov   a,$48+x
09cc: d4 49     mov   $49+x,a
09ce: 6f        ret

09cf: 8d 00     mov   y,#$00
09d1: 68 ff     cmp   a,#$ff
09d3: d0 3c     bne   $0a11
09d5: f4 34     mov   a,$34+x
09d7: 60        clrc
09d8: 94 2a     adc   a,$2a+x
09da: c4 17     mov   $17,a
09dc: f4 35     mov   a,$35+x
09de: 94 2b     adc   a,$2b+x
09e0: c4 18     mov   $18,a
09e2: f4 34     mov   a,$34+x
09e4: 88 02     adc   a,#$02
09e6: d4 34     mov   $34+x,a
09e8: dd        mov   a,y
09e9: 94 35     adc   a,$35+x
09eb: d4 35     mov   $35+x,a
09ed: f7 17     mov   a,($17)+y
09ef: fc        inc   y
09f0: 17 17     or    a,($17)+y
09f2: d0 10     bne   $0a04
09f4: f4 2a     mov   a,$2a+x
09f6: c4 17     mov   $17,a
09f8: f4 2b     mov   a,$2b+x
09fa: c4 18     mov   $18,a
09fc: e8 02     mov   a,#$02
09fe: d4 34     mov   $34+x,a
0a00: e8 00     mov   a,#$00
0a02: d4 35     mov   $35+x,a
0a04: f7 17     mov   a,($17)+y
0a06: 2d        push  a
0a07: dc        dec   y
0a08: f7 17     mov   a,($17)+y
0a0a: c4 17     mov   $17,a
0a0c: ae        pop   a
0a0d: c4 18     mov   $18,a
0a0f: 2f 8c     bra   $099d
0a11: 68 fa     cmp   a,#$fa
0a13: d0 0e     bne   $0a23
0a15: f7 17     mov   a,($17)+y
0a17: ab 17     inc   $17
0a19: d0 02     bne   $0a1d
0a1b: ab 18     inc   $18
0a1d: 3f 18 0b  call  $0b18
0a20: 5f 9d 09  jmp   $099d
0a23: 68 f8     cmp   a,#$f8
0a25: d0 05     bne   $0a2c
0a27: 09 0e 0d  or    ($0d),($0e)
0a2a: 2f 96     bra   $09c2
0a2c: 68 f9     cmp   a,#$f9
0a2e: d0 03     bne   $0a33
0a30: 5f c2 09  jmp   $09c2
0a33: 68 f2     cmp   a,#$f2
0a35: d0 0f     bne   $0a46
0a37: f7 17     mov   a,($17)+y
0a39: ab 17     inc   $17
0a3b: d0 02     bne   $0a3f
0a3d: ab 18     inc   $18
0a3f: d4 52     mov   $52+x,a
0a41: db 53     mov   $53+x,y
0a43: 5f 9d 09  jmp   $099d
0a46: 68 fb     cmp   a,#$fb
0a48: d0 0d     bne   $0a57
0a4a: f7 17     mov   a,($17)+y
0a4c: ab 17     inc   $17
0a4e: d0 02     bne   $0a52
0a50: ab 18     inc   $18
0a52: c4 1e     mov   $1e,a
0a54: 5f 9d 09  jmp   $099d
0a57: 68 fc     cmp   a,#$fc
0a59: d0 0d     bne   $0a68
0a5b: f7 17     mov   a,($17)+y
0a5d: ab 17     inc   $17
0a5f: d0 02     bne   $0a63
0a61: ab 18     inc   $18
0a63: d4 66     mov   $66+x,a
0a65: 5f 9d 09  jmp   $099d
0a68: 68 f5     cmp   a,#$f5
0a6a: d0 24     bne   $0a90
0a6c: f7 17     mov   a,($17)+y
0a6e: 2d        push  a
0a6f: d4 2a     mov   $2a+x,a
0a71: fc        inc   y
0a72: f7 17     mov   a,($17)+y
0a74: c4 18     mov   $18,a
0a76: d4 2b     mov   $2b+x,a
0a78: ae        pop   a
0a79: c4 17     mov   $17,a
0a7b: e8 02     mov   a,#$02
0a7d: d4 34     mov   $34+x,a
0a7f: dc        dec   y
0a80: db 35     mov   $35+x,y
0a82: f7 17     mov   a,($17)+y
0a84: 2d        push  a
0a85: fc        inc   y
0a86: f7 17     mov   a,($17)+y
0a88: c4 18     mov   $18,a
0a8a: ae        pop   a
0a8b: c4 17     mov   $17,a
0a8d: 5f 9d 09  jmp   $099d
0a90: 68 f3     cmp   a,#$f3
0a92: d0 25     bne   $0ab9
0a94: f7 17     mov   a,($17)+y
0a96: d4 3e     mov   $3e+x,a
0a98: fc        inc   y
0a99: f7 17     mov   a,($17)+y
0a9b: d4 3f     mov   $3f+x,a
0a9d: 60        clrc
0a9e: 98 02 17  adc   $17,#$02
0aa1: 90 02     bcc   $0aa5
0aa3: ab 18     inc   $18
0aa5: 7d        mov   a,x
0aa6: 9f        xcn   a
0aa7: 5c        lsr   a
0aa8: fd        mov   y,a
0aa9: f4 3e     mov   a,$3e+x
0aab: 3f da 0b  call  $0bda
0aae: fc        inc   y
0aaf: f4 3f     mov   a,$3f+x
0ab1: 3f da 0b  call  $0bda
0ab4: 8d 00     mov   y,#$00
0ab6: 5f 9d 09  jmp   $099d
0ab9: 68 f4     cmp   a,#$f4
0abb: d0 0f     bne   $0acc
0abd: f7 17     mov   a,($17)+y
0abf: ab 17     inc   $17
0ac1: d0 02     bne   $0ac5
0ac3: ab 18     inc   $18
0ac5: c4 1b     mov   $1b,a
0ac7: c4 1c     mov   $1c,a
0ac9: 5f 9d 09  jmp   $099d
0acc: 68 fe     cmp   a,#$fe
0ace: d0 06     bne   $0ad6
0ad0: 8f 00 1f  mov   $1f,#$00
0ad3: 5f 75 09  jmp   $0975
0ad6: 2f fe     bra   $0ad6

0ad8: fb 52     mov   y,$52+x
0ada: f6 87 11  mov   a,$1187+y
0add: c4 17     mov   $17,a
0adf: f6 8f 11  mov   a,$118f+y
0ae2: c4 18     mov   $18,a
0ae4: fb 53     mov   y,$53+x
0ae6: f7 17     mov   a,($17)+y
0ae8: 68 80     cmp   a,#$80
0aea: d0 06     bne   $0af2
0aec: 8d 00     mov   y,#$00
0aee: db 53     mov   $53+x,y
0af0: f7 17     mov   a,($17)+y
0af2: bb 53     inc   $53+x
0af4: c4 17     mov   $17,a
0af6: 8f 00 18  mov   $18,#$00
0af9: 28 ff     and   a,#$ff
0afb: 10 02     bpl   $0aff
0afd: 8b 18     dec   $18
0aff: f4 5c     mov   a,$5c+x
0b01: fb 5d     mov   y,$5d+x
0b03: 7a 17     addw  ya,$17
0b05: 6d        push  y
0b06: 2d        push  a
0b07: 7d        mov   a,x
0b08: 9f        xcn   a
0b09: 5c        lsr   a
0b0a: 08 02     or    a,#$02
0b0c: fd        mov   y,a
0b0d: ae        pop   a
0b0e: 3f da 0b  call  $0bda
0b11: fc        inc   y
0b12: ae        pop   a
0b13: 28 3f     and   a,#$3f
0b15: 5f da 0b  jmp   $0bda

0b18: 8d 06     mov   y,#$06
0b1a: cf        mul   ya
0b1b: da 08     movw  $08,ya
0b1d: 60        clrc
0b1e: 98 d7 08  adc   $08,#$d7
0b21: 98 18 09  adc   $09,#$18
0b24: 4d        push  x
0b25: 7d        mov   a,x
0b26: 9f        xcn   a
0b27: 5c        lsr   a
0b28: 08 04     or    a,#$04
0b2a: 5d        mov   x,a
0b2b: 8d 00     mov   y,#$00
0b2d: f7 08     mov   a,($08)+y
0b2f: c9 f2 00  mov   $00f2,x
0b32: c5 f3 00  mov   $00f3,a
0b35: 3d        inc   x
0b36: fc        inc   y
0b37: ad 04     cmp   y,#$04
0b39: d0 f2     bne   $0b2d
0b3b: ce        pop   x
0b3c: f7 08     mov   a,($08)+y
0b3e: d5 71 00  mov   $0071+x,a
0b41: fc        inc   y
0b42: f7 08     mov   a,($08)+y
0b44: d5 70 00  mov   $0070+x,a
0b47: 6f        ret

0b48: c4 07     mov   $07,a
0b4a: e8 00     mov   a,#$00
0b4c: c4 06     mov   $06,a
0b4e: 09 0e 0c  or    ($0c),($0e)
0b51: 8d 00     mov   y,#$00
0b53: e4 07     mov   a,$07
0b55: 80        setc
0b56: a8 34     sbc   a,#$34
0b58: b0 09     bcs   $0b63
0b5a: e4 07     mov   a,$07
0b5c: 80        setc
0b5d: a8 13     sbc   a,#$13
0b5f: b0 06     bcs   $0b67
0b61: dc        dec   y
0b62: 1c        asl   a
0b63: 7a 06     addw  ya,$06
0b65: da 06     movw  $06,ya
0b67: 4d        push  x
0b68: e4 07     mov   a,$07
0b6a: 1c        asl   a
0b6b: 8d 00     mov   y,#$00
0b6d: cd 18     mov   x,#$18
0b6f: 9e        div   ya,x
0b70: 5d        mov   x,a
0b71: f6 70 0c  mov   a,$0c70+y
0b74: c4 09     mov   $09,a
0b76: f6 6f 0c  mov   a,$0c6f+y
0b79: c4 08     mov   $08,a
0b7b: f6 72 0c  mov   a,$0c72+y
0b7e: 2d        push  a
0b7f: f6 71 0c  mov   a,$0c71+y
0b82: ee        pop   y
0b83: 9a 08     subw  ya,$08
0b85: eb 06     mov   y,$06
0b87: cf        mul   ya
0b88: dd        mov   a,y
0b89: 8d 00     mov   y,#$00
0b8b: 7a 08     addw  ya,$08
0b8d: cb 09     mov   $09,y
0b8f: 1c        asl   a
0b90: 2b 09     rol   $09
0b92: c4 08     mov   $08,a
0b94: 2f 04     bra   $0b9a
0b96: 4b 09     lsr   $09
0b98: 7c        ror   a
0b99: 3d        inc   x
0b9a: c8 06     cmp   x,#$06
0b9c: d0 f8     bne   $0b96
0b9e: c4 08     mov   $08,a
0ba0: ce        pop   x
0ba1: f5 70 00  mov   a,$0070+x
0ba4: eb 09     mov   y,$09
0ba6: cf        mul   ya
0ba7: da 0a     movw  $0a,ya
0ba9: f5 70 00  mov   a,$0070+x
0bac: eb 08     mov   y,$08
0bae: cf        mul   ya
0baf: 6d        push  y
0bb0: f5 71 00  mov   a,$0071+x
0bb3: eb 08     mov   y,$08
0bb5: cf        mul   ya
0bb6: 7a 0a     addw  ya,$0a
0bb8: da 0a     movw  $0a,ya
0bba: f5 71 00  mov   a,$0071+x
0bbd: eb 09     mov   y,$09
0bbf: cf        mul   ya
0bc0: fd        mov   y,a
0bc1: ae        pop   a
0bc2: 7a 0a     addw  ya,$0a
0bc4: da 0a     movw  $0a,ya
0bc6: 7d        mov   a,x
0bc7: 9f        xcn   a
0bc8: 5c        lsr   a
0bc9: 08 02     or    a,#$02
0bcb: fd        mov   y,a
0bcc: e4 0a     mov   a,$0a
0bce: d4 5c     mov   $5c+x,a
0bd0: 3f da 0b  call  $0bda
0bd3: fc        inc   y
0bd4: e4 0b     mov   a,$0b
0bd6: 28 3f     and   a,#$3f
0bd8: d4 5d     mov   $5d+x,a
0bda: cc f2 00  mov   $00f2,y
0bdd: c5 f3 00  mov   $00f3,a
0be0: 6f        ret

0be1: e8 00     mov   a,#$00
0be3: c4 15     mov   $15,a
0be5: c4 16     mov   $16,a
0be7: c4 11     mov   $11,a
0be9: c4 13     mov   $13,a
0beb: a2 0f     set5  $0f
0bed: e4 0f     mov   a,$0f
0bef: 8d 6c     mov   y,#$6c
0bf1: 5f da 0b  jmp   $0bda

0bf4: 2d        push  a
0bf5: a2 0f     set5  $0f
0bf7: e4 0f     mov   a,$0f
0bf9: 8d 6c     mov   y,#$6c
0bfb: 3f da 0b  call  $0bda
0bfe: e8 08     mov   a,#$08
0c00: c4 14     mov   $14,a
0c02: 8d 7d     mov   y,#$7d
0c04: 3f da 0b  call  $0bda
0c07: cd 00     mov   x,#$00
0c09: 8d 0f     mov   y,#$0f
0c0b: f5 3d 0c  mov   a,$0c3d+x
0c0e: 3f da 0b  call  $0bda
0c11: 3d        inc   x
0c12: dd        mov   a,y
0c13: 60        clrc
0c14: 88 10     adc   a,#$10
0c16: fd        mov   y,a
0c17: 10 f2     bpl   $0c0b
0c19: e8 1f     mov   a,#$1f
0c1b: c4 15     mov   $15,a
0c1d: c4 16     mov   $16,a
0c1f: 8f 3f 13  mov   $13,#$3f
0c22: ae        pop   a
0c23: c4 11     mov   $11,a
0c25: e4 14     mov   a,$14
0c27: 1c        asl   a
0c28: 1c        asl   a
0c29: 1c        asl   a
0c2a: 48 ff     eor   a,#$ff
0c2c: 80        setc
0c2d: 88 d0     adc   a,#$d0
0c2f: 8d 6d     mov   y,#$6d
0c31: 3f da 0b  call  $0bda
0c34: b2 0f     clr5  $0f
0c36: e4 0f     mov   a,$0f
0c38: 8d 6c     mov   y,#$6c
0c3a: 5f da 0b  jmp   $0bda

0c3d: db $7f,$00,$00,$00,$00,$00,$00,$00
0c45: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0c4d: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0c55: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0c5d: db $2c,$3c,$0d,$4d,$6c,$4c,$3d,$2d,$5c
0c66: db $15,$16,$13,$11,$0f,$0c,$10,$12,$0d

0c6f: dw $085f
0c71: dw $08de
0c73: dw $0965
0c75: dw $09f4
0c77: dw $0a8c
0c79: dw $0b2c
0c7b: dw $0bd6
0c7d: dw $0c8b
0c7f: dw $0d4a
0c81: dw $0e14
0c83: dw $0eea
0c85: dw $0fcd
0c87: dw $10be

0c89: e4 82     mov   a,$82
0c8b: 28 48     and   a,#$48
0c8d: 88 38     adc   a,#$38
0c8f: 1c        asl   a
0c90: 1c        asl   a
0c91: 2b 85     rol   $85
0c93: 2b 84     rol   $84
0c95: 2b 83     rol   $83
0c97: 2b 82     rol   $82
0c99: 6f        ret

0c9a: 8f 00 80  mov   $80,#$00
0c9d: 7d        mov   a,x
0c9e: 10 09     bpl   $0ca9
0ca0: e8 40     mov   a,#$40
0ca2: 8f 5c f2  mov   $f2,#$5c
0ca5: c5 f3 00  mov   $00f3,a
0ca8: 6f        ret

0ca9: 1c        asl   a
0caa: fd        mov   y,a
0cab: f6 a7 0f  mov   a,$0fa7+y
0cae: c4 17     mov   $17,a
0cb0: f6 a8 0f  mov   a,$0fa8+y
0cb3: c4 18     mov   $18,a
0cb5: 8d 0d     mov   y,#$0d
0cb7: f7 17     mov   a,($17)+y
0cb9: d6 00 02  mov   $0200+y,a
0cbc: dc        dec   y
0cbd: 10 f8     bpl   $0cb7
0cbf: e5 01 02  mov   a,$0201
0cc2: c5 10 02  mov   $0210,a
0cc5: e5 0d 02  mov   a,$020d
0cc8: c5 11 02  mov   $0211,a
0ccb: e5 06 02  mov   a,$0206
0cce: 28 7f     and   a,#$7f
0cd0: 8f 64 f2  mov   $f2,#$64
0cd3: c5 f3 00  mov   $00f3,a
0cd6: 38 bf 10  and   $10,#$bf
0cd9: e5 06 02  mov   a,$0206
0cdc: 10 1a     bpl   $0cf8
0cde: 18 40 10  or    $10,#$40
0ce1: e5 02 02  mov   a,$0202
0ce4: c5 0e 02  mov   $020e,a
0ce7: 28 1f     and   a,#$1f
0ce9: 38 e0 0f  and   $0f,#$e0
0cec: 04 0f     or    a,$0f
0cee: c4 0f     mov   $0f,a
0cf0: 8f 6c f2  mov   $f2,#$6c
0cf3: c5 f3 00  mov   $00f3,a
0cf6: 2f 1a     bra   $0d12
0cf8: e5 02 02  mov   a,$0202
0cfb: c5 0e 02  mov   $020e,a
0cfe: 8f 62 f2  mov   $f2,#$62
0d01: c5 f3 00  mov   $00f3,a
0d04: e5 03 02  mov   a,$0203
0d07: c5 0f 02  mov   $020f,a
0d0a: 28 3f     and   a,#$3f
0d0c: 8f 63 f2  mov   $f2,#$63
0d0f: c5 f3 00  mov   $00f3,a
0d12: e4 10     mov   a,$10
0d14: 8f 3d f2  mov   $f2,#$3d
0d17: c5 f3 00  mov   $00f3,a
0d1a: e5 0a 02  mov   a,$020a
0d1d: 8f 65 f2  mov   $f2,#$65
0d20: c5 f3 00  mov   $00f3,a
0d23: e5 0b 02  mov   a,$020b
0d26: 8f 66 f2  mov   $f2,#$66
0d29: c5 f3 00  mov   $00f3,a
0d2c: e4 88     mov   a,$88
0d2e: 28 f0     and   a,#$f0
0d30: 9f        xcn   a
0d31: 1c        asl   a
0d32: 8f 60 f2  mov   $f2,#$60
0d35: c5 f3 00  mov   $00f3,a
0d38: e4 88     mov   a,$88
0d3a: 28 0f     and   a,#$0f
0d3c: 1c        asl   a
0d3d: 8f 61 f2  mov   $f2,#$61
0d40: c5 f3 00  mov   $00f3,a
0d43: e8 40     mov   a,#$40
0d45: 8f 4c f2  mov   $f2,#$4c
0d48: c5 f3 00  mov   $00f3,a
0d4b: 8b 80     dec   $80
0d4d: 6f        ret

0d4e: 8f 00 81  mov   $81,#$00
0d51: 7d        mov   a,x
0d52: 10 09     bpl   $0d5d
0d54: e8 80     mov   a,#$80
0d56: 8f 5c f2  mov   $f2,#$5c
0d59: c5 f3 00  mov   $00f3,a
0d5c: 6f        ret

0d5d: 1c        asl   a
0d5e: fd        mov   y,a
0d5f: f6 a7 0f  mov   a,$0fa7+y
0d62: c4 17     mov   $17,a
0d64: f6 a8 0f  mov   a,$0fa8+y
0d67: c4 18     mov   $18,a
0d69: 8d 0d     mov   y,#$0d
0d6b: f7 17     mov   a,($17)+y
0d6d: d6 12 02  mov   $0212+y,a
0d70: dc        dec   y
0d71: 10 f8     bpl   $0d6b
0d73: e5 13 02  mov   a,$0213
0d76: c5 22 02  mov   $0222,a
0d79: e5 1f 02  mov   a,$021f
0d7c: c5 23 02  mov   $0223,a
0d7f: e5 18 02  mov   a,$0218
0d82: 28 7f     and   a,#$7f
0d84: 8f 74 f2  mov   $f2,#$74
0d87: c5 f3 00  mov   $00f3,a
0d8a: 38 7f 10  and   $10,#$7f
0d8d: e5 18 02  mov   a,$0218
0d90: 10 1a     bpl   $0dac
0d92: 18 80 10  or    $10,#$80
0d95: e5 14 02  mov   a,$0214
0d98: c5 20 02  mov   $0220,a
0d9b: 28 1f     and   a,#$1f
0d9d: 38 e0 0f  and   $0f,#$e0
0da0: 04 0f     or    a,$0f
0da2: c4 0f     mov   $0f,a
0da4: 8f 6c f2  mov   $f2,#$6c
0da7: c5 f3 00  mov   $00f3,a
0daa: 2f 1a     bra   $0dc6
0dac: e5 14 02  mov   a,$0214
0daf: c5 20 02  mov   $0220,a
0db2: 8f 72 f2  mov   $f2,#$72
0db5: c5 f3 00  mov   $00f3,a
0db8: e5 15 02  mov   a,$0215
0dbb: c5 21 02  mov   $0221,a
0dbe: 28 3f     and   a,#$3f
0dc0: 8f 73 f2  mov   $f2,#$73
0dc3: c5 f3 00  mov   $00f3,a
0dc6: e4 10     mov   a,$10
0dc8: 8f 3d f2  mov   $f2,#$3d
0dcb: c5 f3 00  mov   $00f3,a
0dce: e5 1c 02  mov   a,$021c
0dd1: 8f 75 f2  mov   $f2,#$75
0dd4: c5 f3 00  mov   $00f3,a
0dd7: e5 1d 02  mov   a,$021d
0dda: 8f 76 f2  mov   $f2,#$76
0ddd: c5 f3 00  mov   $00f3,a
0de0: e4 88     mov   a,$88
0de2: 28 f0     and   a,#$f0
0de4: 9f        xcn   a
0de5: 1c        asl   a
0de6: 8f 70 f2  mov   $f2,#$70
0de9: c5 f3 00  mov   $00f3,a
0dec: e4 88     mov   a,$88
0dee: 28 0f     and   a,#$0f
0df0: 1c        asl   a
0df1: 8f 71 f2  mov   $f2,#$71
0df4: c5 f3 00  mov   $00f3,a
0df7: e8 80     mov   a,#$80
0df9: 8f 4c f2  mov   $f2,#$4c
0dfc: c5 f3 00  mov   $00f3,a
0dff: 8b 81     dec   $81
0e01: 6f        ret

0e02: 3f 89 0c  call  $0c89
0e05: 3f 0b 0e  call  $0e0b
0e08: 5f d9 0e  jmp   $0ed9

0e0b: e4 80     mov   a,$80
0e0d: d0 01     bne   $0e10
0e0f: 6f        ret

0e10: e5 00 02  mov   a,$0200
0e13: d0 11     bne   $0e26
0e15: e5 0c 02  mov   a,$020c
0e18: d0 0c     bne   $0e26
0e1a: e8 40     mov   a,#$40
0e1c: 8f 5c f2  mov   $f2,#$5c
0e1f: c5 f3 00  mov   $00f3,a
0e22: 8f 00 80  mov   $80,#$00
0e25: 6f        ret

0e26: 8c 00 02  dec   $0200
0e29: e5 10 02  mov   a,$0210
0e2c: d0 38     bne   $0e66
0e2e: e5 0c 02  mov   a,$020c
0e31: d0 06     bne   $0e39
0e33: e5 09 02  mov   a,$0209
0e36: d0 01     bne   $0e39
0e38: 6f        ret

0e39: 8c 09 02  dec   $0209
0e3c: e5 01 02  mov   a,$0201
0e3f: c5 10 02  mov   $0210,a
0e42: e5 02 02  mov   a,$0202
0e45: ec 03 02  mov   y,$0203
0e48: e9 07 02  mov   x,$0207
0e4b: f0 04     beq   $0e51
0e4d: e4 82     mov   a,$82
0e4f: eb 83     mov   y,$83
0e51: c5 0e 02  mov   $020e,a
0e54: 8f 62 f2  mov   $f2,#$62
0e57: c5 f3 00  mov   $00f3,a
0e5a: dd        mov   a,y
0e5b: c5 0f 02  mov   $020f,a
0e5e: 28 3f     and   a,#$3f
0e60: 8f 63 f2  mov   $f2,#$63
0e63: c5 f3 00  mov   $00f3,a
0e66: 8c 10 02  dec   $0210
0e69: e5 0d 02  mov   a,$020d
0e6c: f0 08     beq   $0e76
0e6e: 8c 11 02  dec   $0211
0e71: d0 4e     bne   $0ec1
0e73: c5 11 02  mov   $0211,a
0e76: e5 08 02  mov   a,$0208
0e79: f0 46     beq   $0ec1
0e7b: 10 23     bpl   $0ea0
0e7d: e5 0e 02  mov   a,$020e
0e80: 80        setc
0e81: a5 04 02  sbc   a,$0204
0e84: c5 0e 02  mov   $020e,a
0e87: 8f 62 f2  mov   $f2,#$62
0e8a: c5 f3 00  mov   $00f3,a
0e8d: e5 0f 02  mov   a,$020f
0e90: a5 05 02  sbc   a,$0205
0e93: c5 0f 02  mov   $020f,a
0e96: 28 3f     and   a,#$3f
0e98: 8f 63 f2  mov   $f2,#$63
0e9b: c5 f3 00  mov   $00f3,a
0e9e: 2f 21     bra   $0ec1
0ea0: e5 0e 02  mov   a,$020e
0ea3: 60        clrc
0ea4: 85 04 02  adc   a,$0204
0ea7: c5 0e 02  mov   $020e,a
0eaa: 8f 62 f2  mov   $f2,#$62
0ead: c5 f3 00  mov   $00f3,a
0eb0: e5 0f 02  mov   a,$020f
0eb3: 85 05 02  adc   a,$0205
0eb6: c5 0f 02  mov   $020f,a
0eb9: 28 3f     and   a,#$3f
0ebb: 8f 63 f2  mov   $f2,#$63
0ebe: c5 f3 00  mov   $00f3,a
0ec1: e5 06 02  mov   a,$0206
0ec4: 10 12     bpl   $0ed8
0ec6: e5 0e 02  mov   a,$020e
0ec9: 28 1f     and   a,#$1f
0ecb: 38 e0 0f  and   $0f,#$e0
0ece: 04 0f     or    a,$0f
0ed0: c4 0f     mov   $0f,a
0ed2: 8f 6c f2  mov   $f2,#$6c
0ed5: c5 f3 00  mov   $00f3,a
0ed8: 6f        ret

0ed9: e4 81     mov   a,$81
0edb: d0 01     bne   $0ede
0edd: 6f        ret

0ede: e5 12 02  mov   a,$0212
0ee1: d0 11     bne   $0ef4
0ee3: e5 1e 02  mov   a,$021e
0ee6: d0 0c     bne   $0ef4
0ee8: e8 80     mov   a,#$80
0eea: 8f 5c f2  mov   $f2,#$5c
0eed: c5 f3 00  mov   $00f3,a
0ef0: 8f 00 81  mov   $81,#$00
0ef3: 6f        ret

0ef4: 8c 12 02  dec   $0212
0ef7: e5 22 02  mov   a,$0222
0efa: d0 38     bne   $0f34
0efc: e5 1e 02  mov   a,$021e
0eff: d0 06     bne   $0f07
0f01: e5 1b 02  mov   a,$021b
0f04: d0 01     bne   $0f07
0f06: 6f        ret

0f07: 8c 1b 02  dec   $021b
0f0a: e5 13 02  mov   a,$0213
0f0d: c5 22 02  mov   $0222,a
0f10: e5 14 02  mov   a,$0214
0f13: ec 15 02  mov   y,$0215
0f16: e9 19 02  mov   x,$0219
0f19: f0 04     beq   $0f1f
0f1b: e4 82     mov   a,$82
0f1d: eb 83     mov   y,$83
0f1f: c5 20 02  mov   $0220,a
0f22: 8f 72 f2  mov   $f2,#$72
0f25: c5 f3 00  mov   $00f3,a
0f28: dd        mov   a,y
0f29: c5 21 02  mov   $0221,a
0f2c: 28 3f     and   a,#$3f
0f2e: 8f 73 f2  mov   $f2,#$73
0f31: c5 f3 00  mov   $00f3,a
0f34: 8c 22 02  dec   $0222
0f37: e5 1f 02  mov   a,$021f
0f3a: f0 08     beq   $0f44
0f3c: 8c 23 02  dec   $0223
0f3f: d0 4e     bne   $0f8f
0f41: c5 23 02  mov   $0223,a
0f44: e5 1a 02  mov   a,$021a
0f47: f0 46     beq   $0f8f
0f49: 10 23     bpl   $0f6e
0f4b: e5 20 02  mov   a,$0220
0f4e: 80        setc
0f4f: a5 16 02  sbc   a,$0216
0f52: c5 20 02  mov   $0220,a
0f55: 8f 72 f2  mov   $f2,#$72
0f58: c5 f3 00  mov   $00f3,a
0f5b: e5 21 02  mov   a,$0221
0f5e: a5 17 02  sbc   a,$0217
0f61: c5 21 02  mov   $0221,a
0f64: 28 3f     and   a,#$3f
0f66: 8f 73 f2  mov   $f2,#$73
0f69: c5 f3 00  mov   $00f3,a
0f6c: 2f 21     bra   $0f8f
0f6e: e5 20 02  mov   a,$0220
0f71: 60        clrc
0f72: 85 16 02  adc   a,$0216
0f75: c5 20 02  mov   $0220,a
0f78: 8f 72 f2  mov   $f2,#$72
0f7b: c5 f3 00  mov   $00f3,a
0f7e: e5 21 02  mov   a,$0221
0f81: 85 17 02  adc   a,$0217
0f84: c5 21 02  mov   $0221,a
0f87: 28 3f     and   a,#$3f
0f89: 8f 73 f2  mov   $f2,#$73
0f8c: c5 f3 00  mov   $00f3,a
0f8f: e5 18 02  mov   a,$0218
0f92: 10 12     bpl   $0fa6
0f94: e5 20 02  mov   a,$0220
0f97: 28 1f     and   a,#$1f
0f99: 38 e0 0f  and   $0f,#$e0
0f9c: 04 0f     or    a,$0f
0f9e: c4 0f     mov   $0f,a
0fa0: 8f 6c f2  mov   $f2,#$6c
0fa3: c5 f3 00  mov   $00f3,a
0fa6: 6f        ret
