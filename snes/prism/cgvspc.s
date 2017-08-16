0800: cd cf     mov   x,#$cf
0802: bd        mov   sp,x
0803: 20        clrp
0804: 8f 00 f6  mov   $f6,#$00
0807: 3f f0 13  call  $13f0
080a: cd 00     mov   x,#$00
080c: e8 00     mov   a,#$00
080e: d4 00     mov   $00+x,a
0810: 3d        inc   x
0811: c8 d0     cmp   x,#$d0
0813: d0 f9     bne   $080e
0815: 3f 18 09  call  $0918
0818: 8f 00 f1  mov   $f1,#$00
081b: 8f 30 f1  mov   $f1,#$30
081e: 8f 00 f4  mov   $f4,#$00
0821: 8f 20 3f  mov   $3f,#$20
0824: e8 6c     mov   a,#$6c
0826: c4 f2     mov   $f2,a
0828: e8 20     mov   a,#$20
082a: c4 f3     mov   $f3,a
082c: 8f 20 3f  mov   $3f,#$20
082f: e8 0c     mov   a,#$0c
0831: c4 f2     mov   $f2,a
0833: e8 30     mov   a,#$30
0835: c4 f3     mov   $f3,a
0837: e8 1c     mov   a,#$1c
0839: c4 f2     mov   $f2,a
083b: e8 30     mov   a,#$30
083d: c4 f3     mov   $f3,a
083f: 8f 82 fa  mov   $fa,#$82
0842: 8f 01 f1  mov   $f1,#$01
0845: 8f 00 43  mov   $43,#$00
0848: e8 00     mov   a,#$00
084a: c4 44     mov   $44,a
084c: c4 45     mov   $45,a
084e: 8f 00 47  mov   $47,#$00
0851: 3f 3e 12  call  $123e
0854: e8 4d     mov   a,#$4d
0856: c4 f2     mov   $f2,a
0858: e8 00     mov   a,#$00
085a: c4 f3     mov   $f3,a
085c: 8f ff 12  mov   $12,#$ff
085f: 8f 00 14  mov   $14,#$00
0862: 3f c1 14  call  $14c1
0865: e4 08     mov   a,$08
0867: f0 06     beq   $086f
0869: 3f a4 09  call  $09a4
086c: 8f 00 08  mov   $08,#$00
086f: e4 2f     mov   a,$2f
0871: d0 ef     bne   $0862
0873: fa 16 13  mov   ($13),($16)
0876: fa 12 f6  mov   ($f6),($12)
0879: fa 13 f7  mov   ($f7),($13)
087c: ab 14     inc   $14
087e: e4 fd     mov   a,$fd
0880: f0 e0     beq   $0862
0882: e4 14     mov   a,$14
0884: 8b 14     dec   $14
0886: d0 00     bne   $0888
0888: fa f6 09  mov   ($09),($f6)
088b: fa f7 0a  mov   ($0a),($f7)
088e: 8f 21 f1  mov   $f1,#$21
0891: e4 f6     mov   a,$f6
0893: d0 f9     bne   $088e
0895: e4 f7     mov   a,$f7
0897: d0 f5     bne   $088e
0899: e4 09     mov   a,$09
089b: f0 03     beq   $08a0
089d: 3f a4 09  call  $09a4
08a0: e4 0a     mov   a,$0a
08a2: f0 03     beq   $08a7
08a4: 3f a4 09  call  $09a4
08a7: 3f 8e 0a  call  $0a8e
08aa: e4 42     mov   a,$42
08ac: f0 2f     beq   $08dd
08ae: 64 43     cmp   a,$43
08b0: d0 09     bne   $08bb
08b2: 38 df 3f  and   $3f,#$df
08b5: 8f 6c f2  mov   $f2,#$6c
08b8: fa 3f f3  mov   ($f3),($3f)
08bb: 8b 42     dec   $42
08bd: d0 1e     bne   $08dd
08bf: e4 16     mov   a,$16
08c1: d0 0e     bne   $08d1
08c3: 8f 2c f2  mov   $f2,#$2c
08c6: fa 44 f3  mov   ($f3),($44)
08c9: 8f 3c f2  mov   $f2,#$3c
08cc: fa 45 f3  mov   ($f3),($45)
08cf: 2f 0c     bra   $08dd
08d1: e4 46     mov   a,$46
08d3: 8f 2c f2  mov   $f2,#$2c
08d6: c4 f3     mov   $f3,a
08d8: 8f 3c f2  mov   $f2,#$3c
08db: c4 f3     mov   $f3,a
08dd: e4 2e     mov   a,$2e
08df: f0 16     beq   $08f7
08e1: e4 34     mov   a,$34
08e3: d0 12     bne   $08f7
08e5: 8b 2b     dec   $2b
08e7: d0 0e     bne   $08f7
08e9: fa 2a 2b  mov   ($2b),($2a)
08ec: e4 2d     mov   a,$2d
08ee: 60        clrc
08ef: 84 2c     adc   a,$2c
08f1: 90 02     bcc   $08f5
08f3: e8 ff     mov   a,#$ff
08f5: c4 2d     mov   $2d,a
08f7: e4 0b     mov   a,$0b
08f9: f0 06     beq   $0901
08fb: 3f a4 09  call  $09a4
08fe: 8f 00 0b  mov   $0b,#$00
0901: e4 0c     mov   a,$0c
0903: f0 06     beq   $090b
0905: 3f a4 09  call  $09a4
0908: 8f 00 0c  mov   $0c,#$00
090b: e4 0d     mov   a,$0d
090d: f0 06     beq   $0915
090f: 3f a4 09  call  $09a4
0912: 8f 00 0d  mov   $0d,#$00
0915: 5f 5f 08  jmp   $085f

0918: cd 00     mov   x,#$00
091a: 7d        mov   a,x
091b: 9f        xcn   a
091c: 08 07     or    a,#$07
091e: c4 f2     mov   $f2,a
0920: 8f 9c f3  mov   $f3,#$9c
0923: 7d        mov   a,x
0924: 9f        xcn   a
0925: 08 05     or    a,#$05
0927: c4 f2     mov   $f2,a
0929: 8f 00 f3  mov   $f3,#$00
092c: e8 7f     mov   a,#$7f
092e: d4 17     mov   $17+x,a
0930: 3d        inc   x
0931: c8 08     cmp   x,#$08
0933: d0 e5     bne   $091a
0935: cd 17     mov   x,#$17
0937: e8 00     mov   a,#$00
0939: d5 00 02  mov   $0200+x,a
093c: 1d        dec   x
093d: 10 f8     bpl   $0937
093f: e8 00     mov   a,#$00
0941: c4 34     mov   $34,a
0943: c4 2e     mov   $2e,a
0945: 6f        ret

0946: e8 00     mov   a,#$00
0948: c4 09     mov   $09,a
094a: c4 0a     mov   $0a,a
094c: 8f ff 34  mov   $34,#$ff
094f: cd 17     mov   x,#$17
0951: f5 00 02  mov   a,$0200+x
0954: 10 05     bpl   $095b
0956: 48 c0     eor   a,#$c0
0958: d5 00 02  mov   $0200+x,a
095b: 1d        dec   x
095c: 10 f3     bpl   $0951
095e: cd 00     mov   x,#$00
0960: e8 7f     mov   a,#$7f
0962: d4 17     mov   $17+x,a
0964: 7d        mov   a,x
0965: 9f        xcn   a
0966: 08 07     or    a,#$07
0968: fd        mov   y,a
0969: cb f2     mov   $f2,y
096b: 8f 9c f3  mov   $f3,#$9c
096e: dc        dec   y
096f: dc        dec   y
0970: cb f2     mov   $f2,y
0972: 8f 00 f3  mov   $f3,#$00
0975: 3d        inc   x
0976: c8 08     cmp   x,#$08
0978: d0 e6     bne   $0960
097a: 6f        ret

097b: e4 34     mov   a,$34
097d: f0 19     beq   $0998
097f: 8f 00 34  mov   $34,#$00
0982: cd 17     mov   x,#$17
0984: f5 00 02  mov   a,$0200+x
0987: 28 c0     and   a,#$c0
0989: 68 40     cmp   a,#$40
098b: d0 08     bne   $0995
098d: f5 00 02  mov   a,$0200+x
0990: 48 c0     eor   a,#$c0
0992: d5 00 02  mov   $0200+x,a
0995: 1d        dec   x
0996: 10 ec     bpl   $0984
0998: 6f        ret

0999: 8f ff 2e  mov   $2e,#$ff
099c: 8f 00 2d  mov   $2d,#$00
099f: fa 2a 2b  mov   ($2b),($2a)
09a2: 6f        ret

09a3: 6f        ret

09a4: 68 7f     cmp   a,#$7f
09a6: f0 9e     beq   $0946
09a8: 68 7e     cmp   a,#$7e
09aa: f0 cf     beq   $097b
09ac: 68 7d     cmp   a,#$7d
09ae: f0 e9     beq   $0999
09b0: 9c        dec   a
09b1: 1c        asl   a
09b2: fd        mov   y,a
09b3: f6 00 20  mov   a,$2000+y
09b6: c4 06     mov   $06,a
09b8: fc        inc   y
09b9: f6 00 20  mov   a,$2000+y
09bc: c4 07     mov   $07,a
09be: 8d 00     mov   y,#$00
09c0: f7 06     mov   a,($06)+y
09c2: 30 df     bmi   $09a3
09c4: c4 00     mov   $00,a
09c6: fc        inc   y
09c7: f7 06     mov   a,($06)+y
09c9: c4 01     mov   $01,a
09cb: 28 10     and   a,#$10
09cd: f0 03     beq   $09d2
09cf: 8f 00 2e  mov   $2e,#$00
09d2: fc        inc   y
09d3: f7 06     mov   a,($06)+y
09d5: c4 02     mov   $02,a
09d7: fc        inc   y
09d8: f7 06     mov   a,($06)+y
09da: c4 03     mov   $03,a
09dc: fc        inc   y
09dd: 8f 00 04  mov   $04,#$00
09e0: 8f 0a 05  mov   $05,#$0a
09e3: 3f e8 09  call  $09e8
09e6: 2f d8     bra   $09c0
09e8: f8 00     mov   x,$00
09ea: f5 00 02  mov   a,$0200+x
09ed: 10 25     bpl   $0a14
09ef: 28 1f     and   a,#$1f
09f1: 64 01     cmp   a,$01
09f3: f0 1f     beq   $0a14
09f5: 28 07     and   a,#$07
09f7: 5d        mov   x,a
09f8: f4 17     mov   a,$17+x
09fa: 10 18     bpl   $0a14
09fc: 28 7f     and   a,#$7f
09fe: 64 00     cmp   a,$00
0a00: d0 12     bne   $0a14
0a02: d4 17     mov   $17+x,a
0a04: 7d        mov   a,x
0a05: 9f        xcn   a
0a06: 08 07     or    a,#$07
0a08: c4 f2     mov   $f2,a
0a0a: 8f 9c f3  mov   $f3,#$9c
0a0d: 9c        dec   a
0a0e: 9c        dec   a
0a0f: c4 f2     mov   $f2,a
0a11: 8f 00 f3  mov   $f3,#$00
0a14: e4 01     mov   a,$01
0a16: 28 07     and   a,#$07
0a18: 5d        mov   x,a
0a19: f4 17     mov   a,$17+x
0a1b: 28 7f     and   a,#$7f
0a1d: d4 17     mov   $17+x,a
0a1f: f8 00     mov   x,$00
0a21: e4 01     mov   a,$01
0a23: 08 80     or    a,#$80
0a25: d5 00 02  mov   $0200+x,a
0a28: e4 02     mov   a,$02
0a2a: d5 30 02  mov   $0230+x,a
0a2d: e4 03     mov   a,$03
0a2f: d5 48 02  mov   $0248+x,a
0a32: e8 02     mov   a,#$02
0a34: d5 18 02  mov   $0218+x,a
0a37: e8 00     mov   a,#$00
0a39: d5 60 02  mov   $0260+x,a
0a3c: d5 78 02  mov   $0278+x,a
0a3f: d5 50 03  mov   $0350+x,a
0a42: d5 58 04  mov   $0458+x,a
0a45: d5 88 04  mov   $0488+x,a
0a48: d5 e8 04  mov   $04e8+x,a
0a4b: d5 b8 04  mov   $04b8+x,a
0a4e: d5 b0 03  mov   $03b0+x,a
0a51: d5 00 05  mov   $0500+x,a
0a54: d5 d8 02  mov   $02d8+x,a
0a57: d5 38 06  mov   $0638+x,a
0a5a: d5 50 06  mov   $0650+x,a
0a5d: d5 68 06  mov   $0668+x,a
0a60: d5 d8 05  mov   $05d8+x,a
0a63: d4 94     mov   $94+x,a
0a65: e8 01     mov   a,#$01
0a67: d4 4c     mov   $4c+x,a
0a69: d5 80 03  mov   $0380+x,a
0a6c: e8 9c     mov   a,#$9c
0a6e: d5 98 03  mov   $0398+x,a
0a71: d5 c0 02  mov   $02c0+x,a
0a74: e8 9f     mov   a,#$9f
0a76: d5 e0 03  mov   $03e0+x,a
0a79: e4 04     mov   a,$04
0a7b: d5 60 05  mov   $0560+x,a
0a7e: e4 05     mov   a,$05
0a80: d5 78 05  mov   $0578+x,a
0a83: e8 cf     mov   a,#$cf
0a85: d5 90 05  mov   $0590+x,a
0a88: e8 12     mov   a,#$12
0a8a: d5 a8 05  mov   $05a8+x,a
0a8d: 6f        ret

0a8e: 8f 17 1f  mov   $1f,#$17
0a91: f8 1f     mov   x,$1f
0a93: f5 00 02  mov   a,$0200+x
0a96: 10 03     bpl   $0a9b
0a98: 3f a0 0a  call  $0aa0
0a9b: 8b 1f     dec   $1f
0a9d: 10 f2     bpl   $0a91
0a9f: 6f        ret

0aa0: e8 00     mov   a,#$00
0aa2: c4 31     mov   $31,a
0aa4: f5 00 02  mov   a,$0200+x
0aa7: 28 07     and   a,#$07
0aa9: c4 20     mov   $20,a
0aab: 9f        xcn   a
0aac: c4 35     mov   $35,a
0aae: f5 18 02  mov   a,$0218+x
0ab1: c4 23     mov   $23,a
0ab3: 9b 4c     dec   $4c+x
0ab5: f0 03     beq   $0aba
0ab7: 5f 91 0b  jmp   $0b91

0aba: f5 30 02  mov   a,$0230+x
0abd: c4 21     mov   $21,a
0abf: f5 48 02  mov   a,$0248+x
0ac2: c4 22     mov   $22,a
0ac4: 8d 00     mov   y,#$00
0ac6: f7 21     mov   a,($21)+y
0ac8: 10 1f     bpl   $0ae9
0aca: 3a 21     incw  $21
0acc: 68 a0     cmp   a,#$a0
0ace: 90 08     bcc   $0ad8
0ad0: 80        setc
0ad1: a8 c0     sbc   a,#$c0
0ad3: 1c        asl   a
0ad4: 5d        mov   x,a
0ad5: 1f dd 0d  jmp   ($0ddd+x)

0ad8: f8 1f     mov   x,$1f
0ada: d5 a8 02  mov   $02a8+x,a
0add: e8 00     mov   a,#$00
0adf: d5 90 02  mov   $0290+x,a
0ae2: e8 ff     mov   a,#$ff
0ae4: d5 c0 02  mov   $02c0+x,a
0ae7: 2f 59     bra   $0b42
0ae9: f8 1f     mov   x,$1f
0aeb: c4 00     mov   $00,a
0aed: e4 23     mov   a,$23
0aef: 28 08     and   a,#$08
0af1: f0 39     beq   $0b2c
0af3: e4 00     mov   a,$00
0af5: 1c        asl   a
0af6: fd        mov   y,a
0af7: f5 18 05  mov   a,$0518+x
0afa: c4 00     mov   $00,a
0afc: f5 30 05  mov   a,$0530+x
0aff: c4 01     mov   $01,a
0b01: f7 00     mov   a,($00)+y
0b03: c4 02     mov   $02,a
0b05: fc        inc   y
0b06: f7 00     mov   a,($00)+y
0b08: c4 03     mov   $03,a
0b0a: f5 48 05  mov   a,$0548+x
0b0d: c4 00     mov   $00,a
0b0f: f5 00 02  mov   a,$0200+x
0b12: 28 1f     and   a,#$1f
0b14: c4 01     mov   $01,a
0b16: f5 60 05  mov   a,$0560+x
0b19: c4 04     mov   $04,a
0b1b: f5 78 05  mov   a,$0578+x
0b1e: c4 05     mov   $05,a
0b20: 3f e8 09  call  $09e8
0b23: 8d 00     mov   y,#$00
0b25: f8 1f     mov   x,$1f
0b27: 18 20 23  or    $23,#$20
0b2a: 2f 14     bra   $0b40
0b2c: e4 00     mov   a,$00
0b2e: 60        clrc
0b2f: 95 60 02  adc   a,$0260+x
0b32: d5 a8 02  mov   $02a8+x,a
0b35: f5 78 02  mov   a,$0278+x
0b38: d5 90 02  mov   $0290+x,a
0b3b: e8 ff     mov   a,#$ff
0b3d: d5 c0 02  mov   $02c0+x,a
0b40: 3a 21     incw  $21
0b42: f8 1f     mov   x,$1f
0b44: 8d 00     mov   y,#$00
0b46: 3f f7 11  call  $11f7
0b49: 3f 09 12  call  $1209
0b4c: 3f 27 12  call  $1227
0b4f: f8 1f     mov   x,$1f
0b51: e4 21     mov   a,$21
0b53: d5 30 02  mov   $0230+x,a
0b56: e4 22     mov   a,$22
0b58: d5 48 02  mov   $0248+x,a
0b5b: e4 23     mov   a,$23
0b5d: 28 20     and   a,#$20
0b5f: d0 30     bne   $0b91
0b61: 18 02 23  or    $23,#$02
0b64: f5 b0 03  mov   a,$03b0+x
0b67: 08 80     or    a,#$80
0b69: d5 b0 03  mov   $03b0+x,a
0b6c: e4 23     mov   a,$23
0b6e: 28 80     and   a,#$80
0b70: f0 09     beq   $0b7b
0b72: f5 40 04  mov   a,$0440+x
0b75: d5 f8 03  mov   $03f8+x,a
0b78: f5 58 04  mov   a,$0458+x
0b7b: d5 10 04  mov   $0410+x,a
0b7e: e8 00     mov   a,#$00
0b80: d5 28 04  mov   $0428+x,a
0b83: e8 01     mov   a,#$01
0b85: d4 64     mov   $64+x,a
0b87: e8 00     mov   a,#$00
0b89: d5 20 03  mov   $0320+x,a
0b8c: f5 38 03  mov   a,$0338+x
0b8f: d4 7c     mov   $7c+x,a
0b91: e4 23     mov   a,$23
0b93: 28 02     and   a,#$02
0b95: c4 30     mov   $30,a
0b97: f8 20     mov   x,$20
0b99: e4 1f     mov   a,$1f
0b9b: 74 17     cmp   a,$17+x
0b9d: f0 12     beq   $0bb1
0b9f: 08 80     or    a,#$80
0ba1: 74 17     cmp   a,$17+x
0ba3: b0 03     bcs   $0ba8
0ba5: 5f cf 0d  jmp   $0dcf

0ba8: f0 0b     beq   $0bb5
0baa: eb 30     mov   y,$30
0bac: f0 f7     beq   $0ba5
0bae: 8f ff 31  mov   $31,#$ff
0bb1: 08 80     or    a,#$80
0bb3: d4 17     mov   $17+x,a
0bb5: eb 20     mov   y,$20
0bb7: e4 23     mov   a,$23
0bb9: 28 40     and   a,#$40
0bbb: f0 07     beq   $0bc4
0bbd: f6 e8 13  mov   a,$13e8+y
0bc0: 04 40     or    a,$40
0bc2: 2f 07     bra   $0bcb
0bc4: f6 e8 13  mov   a,$13e8+y
0bc7: 48 ff     eor   a,#$ff
0bc9: 24 40     and   a,$40
0bcb: 8f 4d f2  mov   $f2,#$4d
0bce: c4 f3     mov   $f3,a
0bd0: c4 40     mov   $40,a
0bd2: f8 1f     mov   x,$1f
0bd4: f5 60 05  mov   a,$0560+x
0bd7: c4 26     mov   $26,a
0bd9: f5 78 05  mov   a,$0578+x
0bdc: c4 27     mov   $27,a
0bde: f5 90 05  mov   a,$0590+x
0be1: c4 28     mov   $28,a
0be3: f5 a8 05  mov   a,$05a8+x
0be6: c4 29     mov   $29,a
0be8: f5 d8 05  mov   a,$05d8+x
0beb: f0 23     beq   $0c10
0bed: 9b 94     dec   $94+x
0bef: d0 1f     bne   $0c10
0bf1: fd        mov   y,a
0bf2: f5 c0 05  mov   a,$05c0+x
0bf5: da 21     movw  $21,ya
0bf7: f5 f0 05  mov   a,$05f0+x
0bfa: fd        mov   y,a
0bfb: f7 21     mov   a,($21)+y
0bfd: 10 05     bpl   $0c04
0bff: fc        inc   y
0c00: f7 21     mov   a,($21)+y
0c02: 2f f6     bra   $0bfa
0c04: c4 27     mov   $27,a
0c06: fc        inc   y
0c07: dd        mov   a,y
0c08: d5 f0 05  mov   $05f0+x,a
0c0b: f5 08 06  mov   a,$0608+x
0c0e: d4 94     mov   $94+x,a
0c10: e4 2e     mov   a,$2e
0c12: f0 10     beq   $0c24
0c14: f5 00 02  mov   a,$0200+x
0c17: 28 10     and   a,#$10
0c19: f0 09     beq   $0c24
0c1b: eb 26     mov   y,$26
0c1d: e4 2d     mov   a,$2d
0c1f: 48 ff     eor   a,#$ff
0c21: cf        mul   ya
0c22: cb 26     mov   $26,y
0c24: e4 27     mov   a,$27
0c26: d5 78 05  mov   $0578+x,a
0c29: 3f a3 12  call  $12a3
0c2c: eb 35     mov   y,$35
0c2e: cb f2     mov   $f2,y
0c30: fa 36 f3  mov   ($f3),($36)
0c33: fc        inc   y
0c34: cb f2     mov   $f2,y
0c36: fa 37 f3  mov   ($f3),($37)
0c39: f8 1f     mov   x,$1f
0c3b: f5 90 02  mov   a,$0290+x
0c3e: c4 24     mov   $24,a
0c40: f5 a8 02  mov   a,$02a8+x
0c43: c4 25     mov   $25,a
0c45: f5 50 03  mov   a,$0350+x
0c48: c4 3a     mov   $3a,a
0c4a: f5 c0 02  mov   a,$02c0+x
0c4d: 30 3a     bmi   $0c89
0c4f: c4 01     mov   $01,a
0c51: f5 78 02  mov   a,$0278+x
0c54: c4 00     mov   $00,a
0c56: f4 4c     mov   a,$4c+x
0c58: 5d        mov   x,a
0c59: ba 00     movw  ya,$00
0c5b: 9a 24     subw  ya,$24
0c5d: f0 2a     beq   $0c89
0c5f: 10 17     bpl   $0c78
0c61: ba 24     movw  ya,$24
0c63: 9a 00     subw  ya,$00
0c65: c4 00     mov   $00,a
0c67: dd        mov   a,y
0c68: 8d 00     mov   y,#$00
0c6a: 9e        div   ya,x
0c6b: c4 01     mov   $01,a
0c6d: e4 00     mov   a,$00
0c6f: 9e        div   ya,x
0c70: c4 00     mov   $00,a
0c72: ba 24     movw  ya,$24
0c74: 9a 00     subw  ya,$00
0c76: 2f 0f     bra   $0c87
0c78: c4 00     mov   $00,a
0c7a: dd        mov   a,y
0c7b: 8d 00     mov   y,#$00
0c7d: 9e        div   ya,x
0c7e: c4 01     mov   $01,a
0c80: e4 00     mov   a,$00
0c82: 9e        div   ya,x
0c83: eb 01     mov   y,$01
0c85: 7a 24     addw  ya,$24
0c87: da 24     movw  $24,ya
0c89: f8 1f     mov   x,$1f
0c8b: 8d 00     mov   y,#$00
0c8d: f5 d8 02  mov   a,$02d8+x
0c90: 10 02     bpl   $0c94
0c92: 8d ff     mov   y,#$ff
0c94: da 00     movw  $00,ya
0c96: ba 24     movw  ya,$24
0c98: 7a 00     addw  ya,$00
0c9a: 7a 00     addw  ya,$00
0c9c: da 24     movw  $24,ya
0c9e: e4 24     mov   a,$24
0ca0: d5 90 02  mov   $0290+x,a
0ca3: e4 25     mov   a,$25
0ca5: d5 a8 02  mov   $02a8+x,a
0ca8: e4 23     mov   a,$23
0caa: 28 04     and   a,#$04
0cac: f0 33     beq   $0ce1
0cae: 9b 7c     dec   $7c+x
0cb0: d0 2f     bne   $0ce1
0cb2: f5 08 03  mov   a,$0308+x
0cb5: c4 22     mov   $22,a
0cb7: f5 f0 02  mov   a,$02f0+x
0cba: c4 21     mov   $21,a
0cbc: f5 20 03  mov   a,$0320+x
0cbf: fd        mov   y,a
0cc0: f7 21     mov   a,($21)+y
0cc2: fc        inc   y
0cc3: 68 80     cmp   a,#$80
0cc5: d0 04     bne   $0ccb
0cc7: f7 21     mov   a,($21)+y
0cc9: 2f f4     bra   $0cbf
0ccb: c4 00     mov   $00,a
0ccd: dd        mov   a,y
0cce: d5 20 03  mov   $0320+x,a
0cd1: e8 01     mov   a,#$01
0cd3: d4 7c     mov   $7c+x,a
0cd5: 8d 00     mov   y,#$00
0cd7: e4 00     mov   a,$00
0cd9: 10 02     bpl   $0cdd
0cdb: 8d ff     mov   y,#$ff
0cdd: 7a 24     addw  ya,$24
0cdf: da 24     movw  $24,ya
0ce1: 3f f9 12  call  $12f9
0ce4: e4 35     mov   a,$35
0ce6: 08 02     or    a,#$02
0ce8: c4 f2     mov   $f2,a
0cea: fa 38 f3  mov   ($f3),($38)
0ced: bc        inc   a
0cee: c4 f2     mov   $f2,a
0cf0: fa 39 f3  mov   ($f3),($39)
0cf3: f8 1f     mov   x,$1f
0cf5: e4 31     mov   a,$31
0cf7: f0 09     beq   $0d02
0cf9: e4 35     mov   a,$35
0cfb: 08 04     or    a,#$04
0cfd: c4 f2     mov   $f2,a
0cff: fa 3a f3  mov   ($f3),($3a)
0d02: f5 b0 03  mov   a,$03b0+x
0d05: c4 3b     mov   $3b,a
0d07: f5 c8 03  mov   a,$03c8+x
0d0a: c4 3c     mov   $3c,a
0d0c: f5 e0 03  mov   a,$03e0+x
0d0f: c4 3d     mov   $3d,a
0d11: f5 68 03  mov   a,$0368+x
0d14: 74 4c     cmp   a,$4c+x
0d16: d0 0f     bne   $0d27
0d18: f5 98 03  mov   a,$0398+x
0d1b: c4 3d     mov   $3d,a
0d1d: 38 7f 3b  and   $3b,#$7f
0d20: e8 00     mov   a,#$00
0d22: d5 10 04  mov   $0410+x,a
0d25: 2f 4b     bra   $0d72
0d27: f5 a0 04  mov   a,$04a0+x
0d2a: 74 4c     cmp   a,$4c+x
0d2c: d0 15     bne   $0d43
0d2e: f5 70 04  mov   a,$0470+x
0d31: d5 f8 03  mov   $03f8+x,a
0d34: f5 88 04  mov   a,$0488+x
0d37: d5 10 04  mov   $0410+x,a
0d3a: e8 00     mov   a,#$00
0d3c: d5 28 04  mov   $0428+x,a
0d3f: e8 01     mov   a,#$01
0d41: d4 64     mov   $64+x,a
0d43: f5 10 04  mov   a,$0410+x
0d46: f0 2a     beq   $0d72
0d48: 9b 64     dec   $64+x
0d4a: d0 26     bne   $0d72
0d4c: c4 22     mov   $22,a
0d4e: f5 f8 03  mov   a,$03f8+x
0d51: c4 21     mov   $21,a
0d53: f5 28 04  mov   a,$0428+x
0d56: fd        mov   y,a
0d57: f7 21     mov   a,($21)+y
0d59: 68 ff     cmp   a,#$ff
0d5b: d0 06     bne   $0d63
0d5d: fc        inc   y
0d5e: f7 21     mov   a,($21)+y
0d60: fd        mov   y,a
0d61: 2f f4     bra   $0d57
0d63: c4 3d     mov   $3d,a
0d65: fc        inc   y
0d66: f7 21     mov   a,($21)+y
0d68: d4 64     mov   $64+x,a
0d6a: fc        inc   y
0d6b: dd        mov   a,y
0d6c: d5 28 04  mov   $0428+x,a
0d6f: 38 7f 3b  and   $3b,#$7f
0d72: e4 3b     mov   a,$3b
0d74: d5 b0 03  mov   $03b0+x,a
0d77: e4 3c     mov   a,$3c
0d79: d5 c8 03  mov   $03c8+x,a
0d7c: e4 3d     mov   a,$3d
0d7e: d5 e0 03  mov   $03e0+x,a
0d81: e4 35     mov   a,$35
0d83: 08 07     or    a,#$07
0d85: c4 f2     mov   $f2,a
0d87: fa 3d f3  mov   ($f3),($3d)
0d8a: 9c        dec   a
0d8b: c4 f2     mov   $f2,a
0d8d: fa 3c f3  mov   ($f3),($3c)
0d90: 9c        dec   a
0d91: c4 f2     mov   $f2,a
0d93: fa 3b f3  mov   ($f3),($3b)
0d96: e4 30     mov   a,$30
0d98: f0 35     beq   $0dcf
0d9a: e4 25     mov   a,$25
0d9c: 10 17     bpl   $0db5
0d9e: 28 1f     and   a,#$1f
0da0: 38 e0 3f  and   $3f,#$e0
0da3: 04 3f     or    a,$3f
0da5: c4 3f     mov   $3f,a
0da7: 8f 6c f2  mov   $f2,#$6c
0daa: c4 f3     mov   $f3,a
0dac: eb 20     mov   y,$20
0dae: f6 e8 13  mov   a,$13e8+y
0db1: 04 41     or    a,$41
0db3: 2f 09     bra   $0dbe
0db5: eb 20     mov   y,$20
0db7: f6 e8 13  mov   a,$13e8+y
0dba: 48 ff     eor   a,#$ff
0dbc: 24 41     and   a,$41
0dbe: c4 41     mov   $41,a
0dc0: 8f 3d f2  mov   $f2,#$3d
0dc3: c4 f3     mov   $f3,a
0dc5: eb 20     mov   y,$20
0dc7: f6 e8 13  mov   a,$13e8+y
0dca: 8f 4c f2  mov   $f2,#$4c
0dcd: c4 f3     mov   $f3,a
0dcf: f8 1f     mov   x,$1f
0dd1: e4 23     mov   a,$23
0dd3: 28 df     and   a,#$df
0dd5: 28 fd     and   a,#$fd
0dd7: d5 18 02  mov   $0218+x,a
0dda: 5f 9b 0a  jmp   $0a9b

; vcmd dispatch table
0ddd: dw $0e5d  ; c0
0ddf: dw $0e5d  ; c1
0de1: dw $0e5d  ; c2
0de3: dw $0e5d  ; c3
0de5: dw $0e5d  ; c4
0de7: dw $0e5d  ; c5
0de9: dw $0e5d  ; c6
0deb: dw $0e5d  ; c7
0ded: dw $0e5d  ; c8
0def: dw $0e5d  ; c9
0df1: dw $0e5d  ; ca
0df3: dw $0e5d  ; cb
0df5: dw $0e5d  ; cc
0df7: dw $0e5d  ; cd
0df9: dw $0e5d  ; ce
0dfb: dw $0e5d  ; cf
0dfd: dw $0e5d  ; d0
0dff: dw $0e6c  ; d1
0e01: dw $0e7b  ; d2
0e03: dw $0e81  ; d3
0e05: dw $0e86  ; d4
0e07: dw $0e8b  ; d5
0e09: dw $0e94  ; d6
0e0b: dw $0e9d  ; d7
0e0d: dw $0ea6  ; d8
0e0f: dw $0eb6  ; d9
0e11: dw $0ed9  ; da
0e13: dw $0eec  ; db
0e15: dw $0efb  ; dc
0e17: dw $0f05  ; dd
0e19: dw $0f11  ; de
0e1b: dw $0f3a  ; df
0e1d: dw $0f63  ; e0
0e1f: dw $0f79  ; e1
0e21: dw $0f9a  ; e2
0e23: dw $0fa7  ; e3
0e25: dw $0fb3  ; e4
0e27: dw $0fbf  ; e5
0e29: dw $0fce  ; e6
0e2b: dw $0fd4  ; e7
0e2d: dw $0ff1  ; e8
0e2f: dw $1002  ; e9
0e31: dw $102c  ; ea
0e33: dw $1053  ; eb
0e35: dw $1064  ; ec
0e37: dw $1070  ; ed
0e39: dw $1095  ; ee
0e3b: dw $10b8  ; ef
0e3d: dw $10cb  ; f0
0e3f: dw $10e0  ; f1
0e41: dw $10e6  ; f2
0e43: dw $10ec  ; f3
0e45: dw $10fb  ; f4
0e47: dw $1101  ; f5
0e49: dw $1107  ; f6
0e4b: dw $111a  ; f7
0e4d: dw $112f  ; f8
0e4f: dw $114a  ; f9
0e51: dw $1150  ; fa
0e53: dw $1156  ; fb
0e55: dw $117d  ; fc
0e57: dw $11ad  ; fd
0e59: dw $11c3  ; fe
0e5b: dw $11e2  ; ff

; vcmd c0-d0
0e5d: f8 1f     mov   x,$1f
0e5f: e8 e4     mov   a,#$e4
0e61: d5 90 05  mov   $0590+x,a
0e64: e8 12     mov   a,#$12
0e66: d5 a8 05  mov   $05a8+x,a
0e69: 5f c4 0a  jmp   $0ac4

; vcmd d1
0e6c: f8 1f     mov   x,$1f
0e6e: e8 cf     mov   a,#$cf
0e70: d5 90 05  mov   $0590+x,a
0e73: e8 12     mov   a,#$12
0e75: d5 a8 05  mov   $05a8+x,a
0e78: 5f c4 0a  jmp   $0ac4

; vcmd d2
0e7b: 38 f7 23  and   $23,#$f7
0e7e: 5f c4 0a  jmp   $0ac4

; vcmd d3
0e81: ab 13     inc   $13
0e83: 5f c4 0a  jmp   $0ac4

; vcmd d4
0e86: ab 12     inc   $12
0e88: 5f c4 0a  jmp   $0ac4

; vcmd d5
0e8b: f7 21     mov   a,($21)+y
0e8d: c4 0d     mov   $0d,a
0e8f: 3a 21     incw  $21
0e91: 5f c4 0a  jmp   $0ac4

; vcmd d6
0e94: f7 21     mov   a,($21)+y
0e96: c4 0c     mov   $0c,a
0e98: 3a 21     incw  $21
0e9a: 5f c4 0a  jmp   $0ac4

; vcmd d7
0e9d: f7 21     mov   a,($21)+y
0e9f: c4 0b     mov   $0b,a
0ea1: 3a 21     incw  $21
0ea3: 5f c4 0a  jmp   $0ac4

; vcmd d8
0ea6: f8 1f     mov   x,$1f
0ea8: f7 21     mov   a,($21)+y
0eaa: 60        clrc
0eab: 95 60 02  adc   a,$0260+x
0eae: d5 60 02  mov   $0260+x,a
0eb1: 3a 21     incw  $21
0eb3: 5f c4 0a  jmp   $0ac4

; vcmd d9
0eb6: f8 1f     mov   x,$1f
0eb8: f7 21     mov   a,($21)+y
0eba: d5 c0 05  mov   $05c0+x,a
0ebd: 3a 21     incw  $21
0ebf: f7 21     mov   a,($21)+y
0ec1: d5 d8 05  mov   $05d8+x,a
0ec4: 3a 21     incw  $21
0ec6: f7 21     mov   a,($21)+y
0ec8: d5 08 06  mov   $0608+x,a
0ecb: e8 01     mov   a,#$01
0ecd: d4 94     mov   $94+x,a
0ecf: e8 00     mov   a,#$00
0ed1: d5 f0 05  mov   $05f0+x,a
0ed4: 3a 21     incw  $21
0ed6: 5f c4 0a  jmp   $0ac4

; vcmd da
0ed9: f8 1f     mov   x,$1f
0edb: f7 21     mov   a,($21)+y
0edd: d5 90 05  mov   $0590+x,a
0ee0: 3a 21     incw  $21
0ee2: f7 21     mov   a,($21)+y
0ee4: d5 a8 05  mov   $05a8+x,a
0ee7: 3a 21     incw  $21
0ee9: 5f c4 0a  jmp   $0ac4

; vcmd db
0eec: f7 21     mov   a,($21)+y
0eee: c4 2a     mov   $2a,a
0ef0: 3a 21     incw  $21
0ef2: f7 21     mov   a,($21)+y
0ef4: c4 2c     mov   $2c,a
0ef6: 3a 21     incw  $21
0ef8: 5f c4 0a  jmp   $0ac4

; vcmd dc
0efb: f8 1f     mov   x,$1f
0efd: e8 00     mov   a,#$00
0eff: d5 00 05  mov   $0500+x,a
0f02: 5f c4 0a  jmp   $0ac4

; vcmd dd
0f05: f8 1f     mov   x,$1f
0f07: f7 21     mov   a,($21)+y
0f09: d5 00 05  mov   $0500+x,a
0f0c: 3a 21     incw  $21
0f0e: 5f c4 0a  jmp   $0ac4

; vcmd de
0f11: f8 1f     mov   x,$1f
0f13: f5 68 06  mov   a,$0668+x
0f16: f0 0f     beq   $0f27
0f18: 9c        dec   a
0f19: d0 0e     bne   $0f29
0f1b: d5 68 06  mov   $0668+x,a
0f1e: 3a 21     incw  $21
0f20: 3a 21     incw  $21
0f22: 3a 21     incw  $21
0f24: 5f c4 0a  jmp   $0ac4

0f27: f7 21     mov   a,($21)+y
0f29: d5 68 06  mov   $0668+x,a
0f2c: fc        inc   y
0f2d: f7 21     mov   a,($21)+y
0f2f: 5d        mov   x,a
0f30: fc        inc   y
0f31: f7 21     mov   a,($21)+y
0f33: c4 22     mov   $22,a
0f35: d8 21     mov   $21,x
0f37: 5f c4 0a  jmp   $0ac4

; vcmd df
0f3a: f8 1f     mov   x,$1f
0f3c: f5 50 06  mov   a,$0650+x
0f3f: f0 0f     beq   $0f50
0f41: 9c        dec   a
0f42: d0 0e     bne   $0f52
0f44: d5 50 06  mov   $0650+x,a
0f47: 3a 21     incw  $21
0f49: 3a 21     incw  $21
0f4b: 3a 21     incw  $21
0f4d: 5f c4 0a  jmp   $0ac4

0f50: f7 21     mov   a,($21)+y
0f52: d5 50 06  mov   $0650+x,a
0f55: fc        inc   y
0f56: f7 21     mov   a,($21)+y
0f58: 5d        mov   x,a
0f59: fc        inc   y
0f5a: f7 21     mov   a,($21)+y
0f5c: c4 22     mov   $22,a
0f5e: d8 21     mov   $21,x
0f60: 5f c4 0a  jmp   $0ac4

; vcmd e0
0f63: f8 1f     mov   x,$1f
0f65: f5 38 06  mov   a,$0638+x
0f68: f0 0c     beq   $0f76
0f6a: c4 22     mov   $22,a
0f6c: f5 20 06  mov   a,$0620+x
0f6f: c4 21     mov   $21,a
0f71: e8 00     mov   a,#$00
0f73: d5 38 06  mov   $0638+x,a
0f76: 5f c4 0a  jmp   $0ac4

; vcmd e1
0f79: f8 1f     mov   x,$1f
0f7b: f7 21     mov   a,($21)+y
0f7d: c4 00     mov   $00,a
0f7f: 3a 21     incw  $21
0f81: f7 21     mov   a,($21)+y
0f83: c4 01     mov   $01,a
0f85: 3a 21     incw  $21
0f87: e4 21     mov   a,$21
0f89: d5 20 06  mov   $0620+x,a
0f8c: e4 22     mov   a,$22
0f8e: d5 38 06  mov   $0638+x,a
0f91: fa 00 21  mov   ($21),($00)
0f94: fa 01 22  mov   ($22),($01)
0f97: 5f c4 0a  jmp   $0ac4

; vcmd e2
0f9a: f7 21     mov   a,($21)+y
0f9c: 5d        mov   x,a
0f9d: fc        inc   y
0f9e: f7 21     mov   a,($21)+y
0fa0: c4 22     mov   $22,a
0fa2: d8 21     mov   $21,x
0fa4: 5f c4 0a  jmp   $0ac4

; vcmd e3
0fa7: f8 1f     mov   x,$1f
0fa9: f7 21     mov   a,($21)+y
0fab: d5 60 02  mov   $0260+x,a
0fae: 3a 21     incw  $21
0fb0: 5f c4 0a  jmp   $0ac4

; vcmd e4
0fb3: f8 1f     mov   x,$1f
0fb5: f7 21     mov   a,($21)+y
0fb7: d5 78 02  mov   $0278+x,a
0fba: 3a 21     incw  $21
0fbc: 5f c4 0a  jmp   $0ac4

; vcmd e5
0fbf: f8 1f     mov   x,$1f
0fc1: f7 21     mov   a,($21)+y
0fc3: d5 38 03  mov   $0338+x,a
0fc6: 3a 21     incw  $21
0fc8: 18 04 23  or    $23,#$04
0fcb: 5f c4 0a  jmp   $0ac4

; vcmd e6
0fce: 38 fb 23  and   $23,#$fb
0fd1: 5f c4 0a  jmp   $0ac4

; vcmd e7
0fd4: f8 1f     mov   x,$1f
0fd6: f7 21     mov   a,($21)+y
0fd8: d5 38 03  mov   $0338+x,a
0fdb: 3a 21     incw  $21
0fdd: f7 21     mov   a,($21)+y
0fdf: d5 f0 02  mov   $02f0+x,a
0fe2: 3a 21     incw  $21
0fe4: f7 21     mov   a,($21)+y
0fe6: d5 08 03  mov   $0308+x,a
0fe9: 3a 21     incw  $21
0feb: 18 04 23  or    $23,#$04
0fee: 5f c4 0a  jmp   $0ac4

; vcmd e8
0ff1: f8 1f     mov   x,$1f
0ff3: f7 21     mov   a,($21)+y
0ff5: 3a 21     incw  $21
0ff7: d5 d8 02  mov   $02d8+x,a
0ffa: e8 ff     mov   a,#$ff
0ffc: d5 c0 02  mov   $02c0+x,a
0fff: 5f c4 0a  jmp   $0ac4

; vcmd e9
1002: f8 1f     mov   x,$1f
1004: f7 21     mov   a,($21)+y
1006: 30 04     bmi   $100c
1008: 60        clrc
1009: 95 60 02  adc   a,$0260+x
100c: d5 a8 02  mov   $02a8+x,a
100f: 3a 21     incw  $21
1011: f7 21     mov   a,($21)+y
1013: 30 04     bmi   $1019
1015: 60        clrc
1016: 95 60 02  adc   a,$0260+x
1019: d5 c0 02  mov   $02c0+x,a
101c: f5 78 02  mov   a,$0278+x
101f: d5 90 02  mov   $0290+x,a
1022: 3a 21     incw  $21
1024: e8 00     mov   a,#$00
1026: d5 d8 02  mov   $02d8+x,a
1029: 5f 42 0b  jmp   $0b42

; vcmd ea
102c: f8 1f     mov   x,$1f
102e: f7 21     mov   a,($21)+y
1030: 10 11     bpl   $1043
1032: 48 ff     eor   a,#$ff
1034: bc        inc   a
1035: c4 00     mov   $00,a
1037: f5 60 05  mov   a,$0560+x
103a: 80        setc
103b: a4 00     sbc   a,$00
103d: b0 0c     bcs   $104b
103f: e8 00     mov   a,#$00
1041: 2f 08     bra   $104b
1043: 60        clrc
1044: 95 60 05  adc   a,$0560+x
1047: 90 02     bcc   $104b
1049: e8 ff     mov   a,#$ff
104b: d5 60 05  mov   $0560+x,a
104e: 3a 21     incw  $21
1050: 5f c4 0a  jmp   $0ac4

; vcmd ea
1053: f8 1f     mov   x,$1f
1055: f7 21     mov   a,($21)+y
1057: d5 78 05  mov   $0578+x,a
105a: 3a 21     incw  $21
105c: e8 00     mov   a,#$00
105e: d5 d8 05  mov   $05d8+x,a
1061: 5f c4 0a  jmp   $0ac4

; vcmd ec
1064: f8 1f     mov   x,$1f
1066: f7 21     mov   a,($21)+y
1068: d5 60 05  mov   $0560+x,a
106b: 3a 21     incw  $21
106d: 5f c4 0a  jmp   $0ac4

; vcmd ed
1070: f8 1f     mov   x,$1f
1072: f7 21     mov   a,($21)+y
1074: d5 48 05  mov   $0548+x,a
1077: 3a 21     incw  $21
1079: f7 21     mov   a,($21)+y
107b: d5 18 05  mov   $0518+x,a
107e: 3a 21     incw  $21
1080: f7 21     mov   a,($21)+y
1082: d5 30 05  mov   $0530+x,a
1085: 3a 21     incw  $21
1087: 38 ef 23  and   $23,#$ef
108a: e8 00     mov   a,#$00
108c: d5 b8 04  mov   $04b8+x,a
108f: 18 08 23  or    $23,#$08
1092: 5f c4 0a  jmp   $0ac4

; vcmd ee
1095: f8 1f     mov   x,$1f
1097: 3f f7 11  call  $11f7
109a: 3f 27 12  call  $1227
109d: f5 d0 04  mov   a,$04d0+x
10a0: d5 f8 03  mov   $03f8+x,a
10a3: f5 e8 04  mov   a,$04e8+x
10a6: d5 10 04  mov   $0410+x,a
10a9: e8 00     mov   a,#$00
10ab: d5 28 04  mov   $0428+x,a
10ae: e8 01     mov   a,#$01
10b0: d4 64     mov   $64+x,a
10b2: 18 20 23  or    $23,#$20
10b5: 5f 4f 0b  jmp   $0b4f

; vcmd ef
10b8: f8 1f     mov   x,$1f
10ba: f7 21     mov   a,($21)+y
10bc: d5 d0 04  mov   $04d0+x,a
10bf: 3a 21     incw  $21
10c1: f7 21     mov   a,($21)+y
10c3: d5 e8 04  mov   $04e8+x,a
10c6: 3a 21     incw  $21
10c8: 5f c4 0a  jmp   $0ac4

; vcmd f0
10cb: f8 1f     mov   x,$1f
10cd: f7 21     mov   a,($21)+y
10cf: d5 80 03  mov   $0380+x,a
10d2: 3a 21     incw  $21
10d4: f7 21     mov   a,($21)+y
10d6: 08 80     or    a,#$80
10d8: d5 98 03  mov   $0398+x,a
10db: 3a 21     incw  $21
10dd: 5f c4 0a  jmp   $0ac4

; vcmd f1
10e0: 38 ef 23  and   $23,#$ef
10e3: 5f c4 0a  jmp   $0ac4

; vcmd f2
10e6: 18 10 23  or    $23,#$10
10e9: 5f c4 0a  jmp   $0ac4

; vcmd f3
10ec: f8 1f     mov   x,$1f
10ee: f7 21     mov   a,($21)+y
10f0: d5 b8 04  mov   $04b8+x,a
10f3: 3a 21     incw  $21
10f5: 38 ef 23  and   $23,#$ef
10f8: 5f c4 0a  jmp   $0ac4

; vcmd f4
10fb: 18 20 23  or    $23,#$20
10fe: 5f 42 0b  jmp   $0b42

; vcmd f5
1101: 18 20 23  or    $23,#$20
1104: 5f c4 0a  jmp   $0ac4

; vcmd f6
1107: f8 1f     mov   x,$1f
1109: f7 21     mov   a,($21)+y
110b: d5 70 04  mov   $0470+x,a
110e: 3a 21     incw  $21
1110: f7 21     mov   a,($21)+y
1112: d5 88 04  mov   $0488+x,a
1115: 3a 21     incw  $21
1117: 5f c4 0a  jmp   $0ac4

; vcmd f7
111a: f7 21     mov   a,($21)+y
111c: c4 48     mov   $48,a
111e: 3a 21     incw  $21
1120: f7 21     mov   a,($21)+y
1122: c4 49     mov   $49,a
1124: 3a 21     incw  $21
1126: 8f 01 4b  mov   $4b,#$01
1129: 8f 00 4a  mov   $4a,#$00
112c: 5f c4 0a  jmp   $0ac4

; vcmd f8
112f: f7 21     mov   a,($21)+y
1131: c4 44     mov   $44,a
1133: 3a 21     incw  $21
1135: f7 21     mov   a,($21)+y
1137: c4 45     mov   $45,a
1139: 3a 21     incw  $21
113b: f7 21     mov   a,($21)+y
113d: c4 46     mov   $46,a
113f: 3a 21     incw  $21
1141: 3f 81 12  call  $1281
1144: 8f 00 49  mov   $49,#$00
1147: 5f c4 0a  jmp   $0ac4

; vcmd f9
114a: 38 bf 23  and   $23,#$bf
114d: 5f c4 0a  jmp   $0ac4

; vcmd fa
1150: 18 40 23  or    $23,#$40
1153: 5f c4 0a  jmp   $0ac4

; vcmd fb
1156: f7 21     mov   a,($21)+y
1158: c4 43     mov   $43,a
115a: 3a 21     incw  $21
115c: f7 21     mov   a,($21)+y
115e: c4 47     mov   $47,a
1160: 3a 21     incw  $21
1162: f7 21     mov   a,($21)+y
1164: c4 44     mov   $44,a
1166: 3a 21     incw  $21
1168: f7 21     mov   a,($21)+y
116a: c4 45     mov   $45,a
116c: 3a 21     incw  $21
116e: f7 21     mov   a,($21)+y
1170: c4 46     mov   $46,a
1172: 3a 21     incw  $21
1174: 3f 3e 12  call  $123e
1177: 8f 00 49  mov   $49,#$00
117a: 5f c4 0a  jmp   $0ac4

; vcmd fc
117d: f8 1f     mov   x,$1f
117f: f7 21     mov   a,($21)+y
1181: 10 12     bpl   $1195
1183: d5 b0 03  mov   $03b0+x,a
1186: 3a 21     incw  $21
1188: f7 21     mov   a,($21)+y
118a: d5 c8 03  mov   $03c8+x,a
118d: 3a 21     incw  $21
118f: 38 7f 23  and   $23,#$7f
1192: 5f c4 0a  jmp   $0ac4

1195: 3a 21     incw  $21
1197: f5 50 03  mov   a,$0350+x
119a: fd        mov   y,a
119b: f6 00 1c  mov   a,$1c00+y
119e: d5 b0 03  mov   $03b0+x,a
11a1: f6 00 1d  mov   a,$1d00+y
11a4: d5 c8 03  mov   $03c8+x,a
11a7: 38 7f 23  and   $23,#$7f
11aa: 5f c4 0a  jmp   $0ac4

; vcmd fd
11ad: f8 1f     mov   x,$1f
11af: f7 21     mov   a,($21)+y
11b1: d5 40 04  mov   $0440+x,a
11b4: 3a 21     incw  $21
11b6: f7 21     mov   a,($21)+y
11b8: d5 58 04  mov   $0458+x,a
11bb: 3a 21     incw  $21
11bd: 18 80 23  or    $23,#$80
11c0: 5f c4 0a  jmp   $0ac4

; vcmd fe
11c3: f8 1f     mov   x,$1f
11c5: f7 21     mov   a,($21)+y
11c7: 3a 21     incw  $21
11c9: d5 50 03  mov   $0350+x,a
11cc: fd        mov   y,a
11cd: f6 00 1c  mov   a,$1c00+y
11d0: d5 b0 03  mov   $03b0+x,a
11d3: f6 00 1d  mov   a,$1d00+y
11d6: d5 c8 03  mov   $03c8+x,a
11d9: 38 7f 23  and   $23,#$7f
11dc: 8f ff 31  mov   $31,#$ff
11df: 5f c4 0a  jmp   $0ac4

; vcmd ff
11e2: e8 00     mov   a,#$00
11e4: f8 1f     mov   x,$1f
11e6: d5 00 02  mov   $0200+x,a
11e9: 7d        mov   a,x
11ea: 08 80     or    a,#$80
11ec: f8 20     mov   x,$20
11ee: 74 17     cmp   a,$17+x
11f0: d0 04     bne   $11f6
11f2: e8 7f     mov   a,#$7f
11f4: d4 17     mov   $17+x,a
11f6: 6f        ret

11f7: f5 00 05  mov   a,$0500+x
11fa: d0 04     bne   $1200
11fc: f7 21     mov   a,($21)+y
11fe: 3a 21     incw  $21
1200: d4 4c     mov   $4c+x,a
1202: f5 80 03  mov   a,$0380+x
1205: d5 68 03  mov   $0368+x,a
1208: 6f        ret

1209: e4 23     mov   a,$23
120b: 28 10     and   a,#$10
120d: f0 08     beq   $1217
120f: f7 21     mov   a,($21)+y
1211: d5 a0 04  mov   $04a0+x,a
1214: 3a 21     incw  $21
1216: 6f        ret

1217: f5 4c 00  mov   a,$004c+x
121a: 5c        lsr   a
121b: 75 b8 04  cmp   a,$04b8+x
121e: 90 03     bcc   $1223
1220: f5 b8 04  mov   a,$04b8+x
1223: d5 a0 04  mov   $04a0+x,a
1226: 6f        ret

1227: f7 21     mov   a,($21)+y
1229: 68 ee     cmp   a,#$ee
122b: f0 08     beq   $1235
122d: 68 f4     cmp   a,#$f4
122f: f0 04     beq   $1235
1231: 68 f5     cmp   a,#$f5
1233: d0 08     bne   $123d
1235: e8 00     mov   a,#$00
1237: d5 a0 04  mov   $04a0+x,a
123a: d5 68 03  mov   $0368+x,a
123d: 6f        ret

123e: e8 00     mov   a,#$00
1240: 8f 2c f2  mov   $f2,#$2c
1243: c4 f3     mov   $f3,a
1245: 8f 3c f2  mov   $f2,#$3c
1248: c4 f3     mov   $f3,a
124a: 18 20 3f  or    $3f,#$20
124d: 8f 6c f2  mov   $f2,#$6c
1250: fa 3f f3  mov   ($f3),($3f)
1253: eb 43     mov   y,$43
1255: 8f 7d f2  mov   $f2,#$7d
1258: cb f3     mov   $f3,y
125a: f6 71 12  mov   a,$1271+y
125d: 8f 6d f2  mov   $f2,#$6d
1260: c4 f3     mov   $f3,a
1262: dd        mov   a,y
1263: 1c        asl   a
1264: bc        inc   a
1265: c4 43     mov   $43,a
1267: 1c        asl   a
1268: c4 42     mov   $42,a
126a: 8f 0d f2  mov   $f2,#$0d
126d: fa 47 f3  mov   ($f3),($47)
1270: 6f        ret

1271: db $ff,$f8,$f0,$e8,$e0,$d8,$d0,$c8
1279: db $c0,$b8,$b0,$a8,$a0,$98,$90,$88

1281: e4 42     mov   a,$42
1283: d0 1d     bne   $12a2
1285: e4 16     mov   a,$16
1287: d0 0d     bne   $1296
1289: 8f 2c f2  mov   $f2,#$2c
128c: fa 44 f3  mov   ($f3),($44)
128f: 8f 3c f2  mov   $f2,#$3c
1292: fa 45 f3  mov   ($f3),($45)
1295: 6f        ret

1296: e4 46     mov   a,$46
1298: 8f 2c f2  mov   $f2,#$2c
129b: c4 f3     mov   $f3,a
129d: 8f 3c f2  mov   $f2,#$3c
12a0: c4 f3     mov   $f3,a
12a2: 6f        ret

12a3: e4 16     mov   a,$16
12a5: f0 03     beq   $12aa
12a7: 8f 0a 27  mov   $27,#$0a
12aa: e8 14     mov   a,#$14
12ac: 80        setc
12ad: a4 27     sbc   a,$27
12af: fd        mov   y,a
12b0: f7 28     mov   a,($28)+y
12b2: c4 00     mov   $00,a
12b4: eb 27     mov   y,$27
12b6: f7 28     mov   a,($28)+y
12b8: c4 01     mov   $01,a
12ba: eb 26     mov   y,$26
12bc: e4 00     mov   a,$00
12be: cf        mul   ya
12bf: f0 01     beq   $12c2
12c1: fc        inc   y
12c2: cb 36     mov   $36,y
12c4: eb 26     mov   y,$26
12c6: e4 01     mov   a,$01
12c8: cf        mul   ya
12c9: f0 01     beq   $12cc
12cb: fc        inc   y
12cc: cb 37     mov   $37,y
12ce: 6f        ret

12cf: db $00,$01,$03,$07,$0d,$15,$1e,$29
12d7: db $34,$42,$51,$5e,$67,$6e,$73,$77
12df: db $7a,$7c,$7d,$7e,$7f

12e4: db $1e,$28,$32,$3c,$46,$50,$5a,$64
12ec: db $6e,$78,$7f,$7f,$7f,$7f,$7f,$7f
12f4: db $7f,$7f,$7f,$7f,$7f

12f9: f8 3a     mov   x,$3a
12fb: f5 00 1e  mov   a,$1e00+x
12fe: 60        clrc
12ff: 84 25     adc   a,$25
1301: c4 25     mov   $25,a
1303: f5 00 1f  mov   a,$1f00+x
1306: 60        clrc
1307: 84 24     adc   a,$24
1309: c4 24     mov   $24,a
130b: 90 02     bcc   $130f
130d: ab 25     inc   $25
130f: f8 25     mov   x,$25
1311: f5 56 13  mov   a,$1356+x
1314: c4 00     mov   $00,a
1316: 9f        xcn   a
1317: 28 0f     and   a,#$0f
1319: 5d        mov   x,a
131a: f5 ce 13  mov   a,$13ce+x
131d: c4 39     mov   $39,a
131f: f5 db 13  mov   a,$13db+x
1322: c4 38     mov   $38,a
1324: f5 cf 13  mov   a,$13cf+x
1327: fd        mov   y,a
1328: f5 dc 13  mov   a,$13dc+x
132b: 9a 38     subw  ya,$38
132d: cb 01     mov   $01,y
132f: eb 24     mov   y,$24
1331: cf        mul   ya
1332: e4 01     mov   a,$01
1334: cb 01     mov   $01,y
1336: eb 24     mov   y,$24
1338: cf        mul   ya
1339: 8f 00 02  mov   $02,#$00
133c: 7a 01     addw  ya,$01
133e: 7a 38     addw  ya,$38
1340: cb 39     mov   $39,y
1342: c4 38     mov   $38,a
1344: e4 00     mov   a,$00
1346: 28 0f     and   a,#$0f
1348: f0 09     beq   $1353
134a: 5d        mov   x,a
134b: e4 38     mov   a,$38
134d: 4b 39     lsr   $39
134f: 7c        ror   a
1350: 1d        dec   x
1351: d0 fa     bne   $134d
1353: c4 38     mov   $38,a
1355: 6f        ret

1356: db             $39,$49,$59,$69,$79,$89,$99,$a9,$b9
135f: db $08,$18,$28,$38,$48,$58,$68,$78,$88,$98,$a8,$b8
136b: db $07,$17,$27,$37,$47,$57,$67,$77,$87,$97,$a7,$b7
1377: db $06,$16,$26,$36,$46,$56,$66,$76,$86,$96,$a6,$b6
1383: db $05,$15,$25,$35,$45,$55,$65,$75,$85,$95,$a5,$b5
138f: db $04,$14,$24,$34,$44,$54,$64,$74,$84,$94,$a4,$b4
139b: db $03,$13,$23,$33,$43,$53,$63,$73,$83,$93,$a3,$b3
13a7: db $02,$12,$22,$32,$42,$52,$62,$72,$82,$92,$a2,$b2
13b3: db $01,$11,$21,$31,$41,$51,$61,$71,$81,$91,$a1,$b1
13bf: db $00,$10,$20,$30,$40,$50,$60,$70,$80,$90,$a0,$b0
13cb: db $00,$10,$20

13ce: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c,$40
13db: db $00,$e8,$ec,$0e,$52,$b8,$42,$f2,$c4,$d2,$04,$68,$00

13e7: db $01,$02,$04,$08,$10,$20,$40,$80

13f0: 8f 6c f2  mov   $f2,#$6c
13f3: 8f ff f3  mov   $f3,#$ff
13f6: 8d 14     mov   y,#$14
13f8: e8 2d     mov   a,#$2d
13fa: da 00     movw  $00,ya
13fc: 8d 03     mov   y,#$03
13fe: cd 3c     mov   x,#$3c
1400: 3f 1e 14  call  $141e
1403: 8d 14     mov   y,#$14
1405: e8 31     mov   a,#$31
1407: da 00     movw  $00,ya
1409: 8d 07     mov   y,#$07
140b: cd 7d     mov   x,#$7d
140d: 3f 1e 14  call  $141e
1410: 8d 14     mov   y,#$14
1412: e8 39     mov   a,#$39
1414: da 00     movw  $00,ya
1416: 8d 07     mov   y,#$07
1418: cd 7f     mov   x,#$7f
141a: 3f 1e 14  call  $141e
141d: 6f        ret

141e: d8 f2     mov   $f2,x
1420: f7 00     mov   a,($00)+y
1422: c4 f3     mov   $f3,a
1424: 7d        mov   a,x
1425: 80        setc
1426: a8 10     sbc   a,#$10
1428: 5d        mov   x,a
1429: dc        dec   y
142a: 10 f2     bpl   $141e
142c: 6f        ret

142d: 00
142e: 01
142f: 00
1430: 00
1431: 00
1432: 00
1433: 00
1434: 00
1435: 00
1436: 18 ff 00
1439: 7f
143a: 00
143b: 00
143c: 00
143d: 00
143e: 00
143f: 00
1440: 00

1441: 3f 18 09  call  $0918
1444: e4 f4     mov   a,$f4
1446: 64 0e     cmp   a,$0e
1448: f0 fa     beq   $1444
144a: fa f6 00  mov   ($00),($f6)
144d: f8 f7     mov   x,$f7
144f: f0 68     beq   $14b9
1451: d8 01     mov   $01,x
1453: c4 0e     mov   $0e,a
1455: c4 f4     mov   $f4,a
1457: 8d 00     mov   y,#$00
1459: fa 0e 02  mov   ($02),($0e)
145c: e4 f4     mov   a,$f4
145e: 64 0e     cmp   a,$0e
1460: f0 fa     beq   $145c
1462: fa f5 0f  mov   ($0f),($f5)
1465: fa f6 10  mov   ($10),($f6)
1468: fa f7 11  mov   ($11),($f7)
146b: 8f 21 f1  mov   $f1,#$21
146e: e4 f4     mov   a,$f4
1470: c4 0e     mov   $0e,a
1472: c4 f4     mov   $f4,a
1474: 80        setc
1475: a4 02     sbc   a,$02
1477: 9c        dec   a
1478: d0 15     bne   $148f
147a: e4 0f     mov   a,$0f
147c: d7 00     mov   ($00)+y,a
147e: 3a 00     incw  $00
1480: e4 10     mov   a,$10
1482: d7 00     mov   ($00)+y,a
1484: 3a 00     incw  $00
1486: e4 11     mov   a,$11
1488: d7 00     mov   ($00)+y,a
148a: 3a 00     incw  $00
148c: 5f 59 14  jmp   $1459

148f: 9c        dec   a
1490: d0 11     bne   $14a3
1492: e4 0f     mov   a,$0f
1494: d7 00     mov   ($00)+y,a
1496: fc        inc   y
1497: e4 10     mov   a,$10
1499: d7 00     mov   ($00)+y,a
149b: fc        inc   y
149c: e4 11     mov   a,$11
149e: d7 00     mov   ($00)+y,a
14a0: 5f 44 14  jmp   $1444

14a3: 9c        dec   a
14a4: d0 0c     bne   $14b2
14a6: e4 0f     mov   a,$0f
14a8: d7 00     mov   ($00)+y,a
14aa: fc        inc   y
14ab: e4 10     mov   a,$10
14ad: d7 00     mov   ($00)+y,a
14af: 5f 44 14  jmp   $1444

14b2: e4 0f     mov   a,$0f
14b4: d7 00     mov   ($00)+y,a
14b6: 5f 44 14  jmp   $1444

14b9: 8f 21 f1  mov   $f1,#$21
14bc: c4 0e     mov   $0e,a
14be: c4 f4     mov   $f4,a
14c0: 6f        ret

14c1: e4 f4     mov   a,$f4
14c3: 64 0e     cmp   a,$0e
14c5: f0 10     beq   $14d7
14c7: fa f5 08  mov   ($08),($f5)
14ca: e4 f4     mov   a,$f4
14cc: c4 0e     mov   $0e,a
14ce: c4 f4     mov   $f4,a
14d0: e4 08     mov   a,$08
14d2: 80        setc
14d3: a8 f0     sbc   a,#$f0
14d5: b0 01     bcs   $14d8
14d7: 6f        ret

14d8: 8f 00 08  mov   $08,#$00
14db: 1c        asl   a
14dc: 5d        mov   x,a
14dd: 1f e0 14  jmp   ($14e0+x)

14e0: d7 14     mov   ($14)+y,a
14e2: d7 14     mov   ($14)+y,a
14e4: d7 14     mov   ($14)+y,a
14e6: 3a 15     incw  $15
14e8: 36 15 3e  and   a,$3e15+y
14eb: 15 42 15  or    a,$1542+x
14ee: 5a 15     cmpw  ya,$15
14f0: 46        eor   a,(x)
14f1: 15 6e 15  or    a,$156e+x
14f4: a7 16     sbc   a,($16+x)
14f6: 97 16     adc   a,($16)+y
14f8: 55 16 18  eor   a,$1816+x
14fb: 09 41 14  or    ($14),($41)
14fe: d7 14     mov   ($14)+y,a
1500: e4 f4     mov   a,$f4
1502: 64 0e     cmp   a,$0e
1504: f0 07     beq   $150d
1506: e4 f5     mov   a,$f5
1508: 80        setc
1509: a8 f0     sbc   a,#$f0
150b: b0 01     bcs   $150e
150d: 6f        ret

150e: c4 00     mov   $00,a
1510: e4 f4     mov   a,$f4
1512: c4 0e     mov   $0e,a
1514: c4 f4     mov   $f4,a
1516: e4 00     mov   a,$00
1518: 1c        asl   a
1519: 5d        mov   x,a
151a: 1f e0 14  jmp   ($14e0+x)

151d: e4 f4     mov   a,$f4
151f: 64 0e     cmp   a,$0e
1521: f0 fa     beq   $151d
1523: fa f5 0f  mov   ($0f),($f5)
1526: fa f6 10  mov   ($10),($f6)
1529: fa f7 11  mov   ($11),($f7)
152c: 8f 21 f1  mov   $f1,#$21
152f: e4 f4     mov   a,$f4
1531: c4 0e     mov   $0e,a
1533: c4 f4     mov   $f4,a
1535: 6f        ret

1536: 8f ff 2f  mov   $2f,#$ff
1539: 6f        ret

153a: 8f 00 2f  mov   $2f,#$00
153d: 6f        ret

153e: 8f 00 16  mov   $16,#$00
1541: 6f        ret

1542: 8f ff 16  mov   $16,#$ff
1545: 6f        ret

1546: 8f 1a fa  mov   $fa,#$1a
1549: e8 0c     mov   a,#$0c
154b: c4 f2     mov   $f2,a
154d: e8 18     mov   a,#$18
154f: c4 f3     mov   $f3,a
1551: e8 1c     mov   a,#$1c
1553: c4 f2     mov   $f2,a
1555: e8 18     mov   a,#$18
1557: c4 f3     mov   $f3,a
1559: 6f        ret

155a: 8f 82 fa  mov   $fa,#$82
155d: e8 0c     mov   a,#$0c
155f: c4 f2     mov   $f2,a
1561: e8 30     mov   a,#$30
1563: c4 f3     mov   $f3,a
1565: e8 1c     mov   a,#$1c
1567: c4 f2     mov   $f2,a
1569: e8 30     mov   a,#$30
156b: c4 f3     mov   $f3,a
156d: 6f        ret

156e: e4 f4     mov   a,$f4
1570: 64 0e     cmp   a,$0e
1572: f0 fa     beq   $156e
1574: fa f5 00  mov   ($00),($f5)
1577: 8f 00 01  mov   $01,#$00
157a: e4 00     mov   a,$00
157c: d0 3a     bne   $15b8
157e: e4 01     mov   a,$01
1580: 9f        xcn   a
1581: 08 08     or    a,#$08
1583: c4 f2     mov   $f2,a
1585: e4 f3     mov   a,$f3
1587: c4 f6     mov   $f6,a
1589: c4 f7     mov   $f7,a
158b: e4 01     mov   a,$01
158d: 9f        xcn   a
158e: 08 02     or    a,#$02
1590: c4 f2     mov   $f2,a
1592: e4 f3     mov   a,$f3
1594: 28 03     and   a,#$03
1596: c4 02     mov   $02,a
1598: 1c        asl   a
1599: 1c        asl   a
159a: 04 02     or    a,$02
159c: c4 f5     mov   $f5,a
159e: e4 f4     mov   a,$f4
15a0: c4 f4     mov   $f4,a
15a2: c4 0e     mov   $0e,a
15a4: e4 f4     mov   a,$f4
15a6: 64 0e     cmp   a,$0e
15a8: f0 fa     beq   $15a4
15aa: ab 01     inc   $01
15ac: 78 08 01  cmp   $01,#$08
15af: d0 cd     bne   $157e
15b1: e4 f4     mov   a,$f4
15b3: c4 f4     mov   $f4,a
15b5: c4 0e     mov   $0e,a
15b7: 6f        ret

15b8: 9c        dec   a
15b9: d0 3b     bne   $15f6
15bb: e4 01     mov   a,$01
15bd: 9f        xcn   a
15be: 5d        mov   x,a
15bf: d8 f2     mov   $f2,x
15c1: e4 f3     mov   a,$f3
15c3: c4 f6     mov   $f6,a
15c5: 9f        xcn   a
15c6: 5c        lsr   a
15c7: 28 04     and   a,#$04
15c9: c4 02     mov   $02,a
15cb: 3d        inc   x
15cc: d8 f2     mov   $f2,x
15ce: e4 f3     mov   a,$f3
15d0: c4 f7     mov   $f7,a
15d2: 9f        xcn   a
15d3: 5c        lsr   a
15d4: 5c        lsr   a
15d5: 5c        lsr   a
15d6: 28 01     and   a,#$01
15d8: 04 02     or    a,$02
15da: c4 f5     mov   $f5,a
15dc: e4 f4     mov   a,$f4
15de: c4 f4     mov   $f4,a
15e0: c4 0e     mov   $0e,a
15e2: e4 f4     mov   a,$f4
15e4: 64 0e     cmp   a,$0e
15e6: f0 fa     beq   $15e2
15e8: ab 01     inc   $01
15ea: 78 08 01  cmp   $01,#$08
15ed: d0 cc     bne   $15bb
15ef: e4 f4     mov   a,$f4
15f1: c4 f4     mov   $f4,a
15f3: c4 0e     mov   $0e,a
15f5: 6f        ret

15f6: e4 01     mov   a,$01
15f8: 9f        xcn   a
15f9: 08 08     or    a,#$08
15fb: c4 f2     mov   $f2,a
15fd: e4 f3     mov   a,$f3
15ff: c4 03     mov   $03,a
1601: e4 01     mov   a,$01
1603: 9f        xcn   a
1604: fd        mov   y,a
1605: cb f2     mov   $f2,y
1607: fa f3 04  mov   ($04),($f3)
160a: fc        inc   y
160b: cb f2     mov   $f2,y
160d: fa f3 05  mov   ($05),($f3)
1610: e4 04     mov   a,$04
1612: 10 02     bpl   $1616
1614: 48 ff     eor   a,#$ff
1616: 1c        asl   a
1617: eb 03     mov   y,$03
1619: cf        mul   ya
161a: cb f6     mov   $f6,y
161c: e4 05     mov   a,$05
161e: 10 02     bpl   $1622
1620: 48 ff     eor   a,#$ff
1622: 1c        asl   a
1623: eb 03     mov   y,$03
1625: cf        mul   ya
1626: cb f7     mov   $f7,y
1628: e4 01     mov   a,$01
162a: 9f        xcn   a
162b: 08 02     or    a,#$02
162d: c4 f2     mov   $f2,a
162f: e4 f3     mov   a,$f3
1631: 28 03     and   a,#$03
1633: c4 02     mov   $02,a
1635: 1c        asl   a
1636: 1c        asl   a
1637: 04 02     or    a,$02
1639: c4 f5     mov   $f5,a
163b: e4 f4     mov   a,$f4
163d: c4 f4     mov   $f4,a
163f: c4 0e     mov   $0e,a
1641: e4 f4     mov   a,$f4
1643: 64 0e     cmp   a,$0e
1645: f0 fa     beq   $1641
1647: ab 01     inc   $01
1649: 78 08 01  cmp   $01,#$08
164c: d0 a8     bne   $15f6
164e: e4 f4     mov   a,$f4
1650: c4 f4     mov   $f4,a
1652: c4 0e     mov   $0e,a
1654: 6f        ret

1655: 3f 1d 15  call  $151d
1658: e4 0f     mov   a,$0f
165a: 2d        push  a
165b: 9f        xcn   a
165c: 2d        push  a
165d: fa 10 3a  mov   ($3a),($10)
1660: fa 11 3b  mov   ($3b),($11)
1663: 3f 1d 15  call  $151d
1666: fa 0f 3c  mov   ($3c),($0f)
1669: fa 10 25  mov   ($25),($10)
166c: fa 11 24  mov   ($24),($11)
166f: 3f f9 12  call  $12f9
1672: 3f 1d 15  call  $151d
1675: fa 0f 3d  mov   ($3d),($0f)
1678: fa 10 37  mov   ($37),($10)
167b: fa 11 36  mov   ($36),($11)
167e: cd 00     mov   x,#$00
1680: ee        pop   y
1681: cb f2     mov   $f2,y
1683: f4 36     mov   a,$36+x
1685: c4 f3     mov   $f3,a
1687: fc        inc   y
1688: 3d        inc   x
1689: c8 08     cmp   x,#$08
168b: d0 f4     bne   $1681
168d: ce        pop   x
168e: f5 e8 13  mov   a,$13e8+x
1691: 8f 4c f2  mov   $f2,#$4c
1694: c4 f3     mov   $f3,a
1696: 6f        ret

1697: 3f 1d 15  call  $151d
169a: e4 0f     mov   a,$0f
169c: 5d        mov   x,a
169d: 9f        xcn   a
169e: 60        clrc
169f: 88 05     adc   a,#$05
16a1: c4 f2     mov   $f2,a
16a3: 8f 00 f3  mov   $f3,#$00
16a6: 6f        ret

16a7: e4 f4     mov   a,$f4
16a9: 64 0e     cmp   a,$0e
16ab: f0 fa     beq   $16a7
16ad: f8 f5     mov   x,$f5
16af: f5 00 1c  mov   a,$1c00+x
16b2: c4 f6     mov   $f6,a
16b4: f5 00 1d  mov   a,$1d00+x
16b7: c4 f7     mov   $f7,a
16b9: e4 f4     mov   a,$f4
16bb: c4 f4     mov   $f4,a
16bd: c4 0e     mov   $0e,a
16bf: 3f 1d 15  call  $151d
16c2: 6f        ret

