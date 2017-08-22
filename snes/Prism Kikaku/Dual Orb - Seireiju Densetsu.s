0800: cd cf     mov   x,#$cf
0802: bd        mov   sp,x
0803: 20        clrp
0804: 8f 00 f6  mov   $f6,#$00
0807: 3f 99 15  call  $1599
080a: cd 00     mov   x,#$00
080c: e8 00     mov   a,#$00
080e: d4 00     mov   $00+x,a
0810: 3d        inc   x
0811: c8 d0     cmp   x,#$d0
0813: d0 f9     bne   $080e
0815: 3f 53 09  call  $0953
0818: 8f 00 f1  mov   $f1,#$00
081b: 8f 30 f1  mov   $f1,#$30
081e: 8f 00 f4  mov   $f4,#$00
0821: 8f 20 42  mov   $42,#$20
0824: e8 6c     mov   a,#$6c
0826: c4 f2     mov   $f2,a
0828: e8 20     mov   a,#$20
082a: c4 f3     mov   $f3,a
082c: 8f 20 42  mov   $42,#$20
082f: e8 0c     mov   a,#$0c
0831: c4 f2     mov   $f2,a
0833: e8 30     mov   a,#$30
0835: c4 f3     mov   $f3,a
0837: e8 1c     mov   a,#$1c
0839: c4 f2     mov   $f2,a
083b: e8 30     mov   a,#$30
083d: c4 f3     mov   $f3,a
083f: 8f ff 2b  mov   $2b,#$ff
0842: 8f 82 fa  mov   $fa,#$82
0845: 8f 01 f1  mov   $f1,#$01
0848: 8f 04 46  mov   $46,#$04
084b: e8 00     mov   a,#$00
084d: c4 47     mov   $47,a
084f: c4 48     mov   $48,a
0851: c4 4a     mov   $4a,a
0853: 3f fa 13  call  $13fa
0856: e8 4d     mov   a,#$4d
0858: c4 f2     mov   $f2,a
085a: e8 00     mov   a,#$00
085c: c4 f3     mov   $f3,a
085e: cd 0a     mov   x,#$0a
0860: e4 fd     mov   a,$fd
0862: f0 fc     beq   $0860
0864: 1d        dec   x
0865: d0 f9     bne   $0860
0867: 38 df 42  and   $42,#$df
086a: 8f 6c f2  mov   $f2,#$6c
086d: fa 42 f3  mov   ($f3),($42)
0870: 8f ff 12  mov   $12,#$ff
0873: 8f 00 14  mov   $14,#$00
0876: 3f 97 16  call  $1697
0879: e4 08     mov   a,$08
087b: f0 06     beq   $0883
087d: 3f 24 0a  call  $0a24
0880: 8f 00 08  mov   $08,#$00
0883: e4 32     mov   a,$32
0885: d0 ef     bne   $0876
0887: fa 2b 13  mov   ($13),($2b)
088a: fa 12 f6  mov   ($f6),($12)
088d: fa 13 f7  mov   ($f7),($13)
0890: ab 14     inc   $14
0892: e4 fd     mov   a,$fd
0894: f0 e0     beq   $0876
0896: e4 14     mov   a,$14
0898: 8b 14     dec   $14
089a: d0 00     bne   $089c
089c: e4 09     mov   a,$09
089e: f0 03     beq   $08a3
08a0: 3f 24 0a  call  $0a24
08a3: e4 0a     mov   a,$0a
08a5: f0 03     beq   $08aa
08a7: 3f 24 0a  call  $0a24
08aa: 3f 15 0b  call  $0b15
08ad: e4 45     mov   a,$45
08af: f0 07     beq   $08b8
08b1: 8b 45     dec   $45
08b3: d0 03     bne   $08b8
08b5: 3f 24 14  call  $1424
08b8: e4 4c     mov   a,$4c
08ba: f0 28     beq   $08e4
08bc: 8b 4e     dec   $4e
08be: d0 24     bne   $08e4
08c0: eb 4d     mov   y,$4d
08c2: f7 4b     mov   a,($4b)+y
08c4: fc        inc   y
08c5: 68 ff     cmp   a,#$ff
08c7: d0 05     bne   $08ce
08c9: f7 4b     mov   a,($4b)+y
08cb: fd        mov   y,a
08cc: 2f f4     bra   $08c2
08ce: c4 47     mov   $47,a
08d0: f7 4b     mov   a,($4b)+y
08d2: fc        inc   y
08d3: c4 48     mov   $48,a
08d5: f7 4b     mov   a,($4b)+y
08d7: fc        inc   y
08d8: c4 49     mov   $49,a
08da: f7 4b     mov   a,($4b)+y
08dc: fc        inc   y
08dd: c4 4e     mov   $4e,a
08df: cb 4d     mov   $4d,y
08e1: 3f 24 14  call  $1424
08e4: e4 37     mov   a,$37
08e6: d0 3f     bne   $0927
08e8: e4 2e     mov   a,$2e
08ea: 60        clrc
08eb: 84 2d     adc   a,$2d
08ed: c4 2e     mov   $2e,a
08ef: 38 0f 2e  and   $2e,#$0f
08f2: 9f        xcn   a
08f3: 28 0f     and   a,#$0f
08f5: f8 2f     mov   x,$2f
08f7: f0 13     beq   $090c
08f9: 60        clrc
08fa: 84 2b     adc   a,$2b
08fc: 90 08     bcc   $0906
08fe: 8f ff 2b  mov   $2b,#$ff
0901: 8f 00 2d  mov   $2d,#$00
0904: 2f 21     bra   $0927
0906: 64 2c     cmp   a,$2c
0908: 90 1b     bcc   $0925
090a: 2f 14     bra   $0920
090c: 80        setc
090d: c4 00     mov   $00,a
090f: e4 2b     mov   a,$2b
0911: a4 00     sbc   a,$00
0913: b0 07     bcs   $091c
0915: e8 00     mov   a,#$00
0917: 8f 00 2d  mov   $2d,#$00
091a: 2f 09     bra   $0925
091c: 64 2c     cmp   a,$2c
091e: b0 05     bcs   $0925
0920: e4 2c     mov   a,$2c
0922: 8f 00 2d  mov   $2d,#$00
0925: c4 2b     mov   $2b,a
0927: e4 2b     mov   a,$2b
0929: 80        setc
092a: a4 31     sbc   a,$31
092c: b0 02     bcs   $0930
092e: e8 00     mov   a,#$00
0930: c4 30     mov   $30,a
0932: e4 0b     mov   a,$0b
0934: f0 06     beq   $093c
0936: 3f 24 0a  call  $0a24
0939: 8f 00 0b  mov   $0b,#$00
093c: e4 0c     mov   a,$0c
093e: f0 06     beq   $0946
0940: 3f 24 0a  call  $0a24
0943: 8f 00 0c  mov   $0c,#$00
0946: e4 0d     mov   a,$0d
0948: f0 06     beq   $0950
094a: 3f 24 0a  call  $0a24
094d: 8f 00 0d  mov   $0d,#$00
0950: 5f 73 08  jmp   $0873

0953: e8 3d     mov   a,#$3d
0955: c4 f2     mov   $f2,a
0957: e8 00     mov   a,#$00
0959: c4 f3     mov   $f3,a
095b: e8 4d     mov   a,#$4d
095d: c4 f2     mov   $f2,a
095f: e8 00     mov   a,#$00
0961: c4 f3     mov   $f3,a
0963: e8 2c     mov   a,#$2c
0965: c4 f2     mov   $f2,a
0967: e8 00     mov   a,#$00
0969: c4 f3     mov   $f3,a
096b: e8 3c     mov   a,#$3c
096d: c4 f2     mov   $f2,a
096f: e8 00     mov   a,#$00
0971: c4 f3     mov   $f3,a
0973: e8 0d     mov   a,#$0d
0975: c4 f2     mov   $f2,a
0977: e8 00     mov   a,#$00
0979: c4 f3     mov   $f3,a
097b: e8 00     mov   a,#$00
097d: c4 47     mov   $47,a
097f: c4 48     mov   $48,a
0981: c4 49     mov   $49,a
0983: 3f 24 14  call  $1424
0986: cd 00     mov   x,#$00
0988: 7d        mov   a,x
0989: 9f        xcn   a
098a: 08 07     or    a,#$07
098c: c4 f2     mov   $f2,a
098e: 8f 9c f3  mov   $f3,#$9c
0991: 7d        mov   a,x
0992: 9f        xcn   a
0993: 08 05     or    a,#$05
0995: c4 f2     mov   $f2,a
0997: 8f 00 f3  mov   $f3,#$00
099a: e8 7f     mov   a,#$7f
099c: d4 17     mov   $17+x,a
099e: 3d        inc   x
099f: c8 08     cmp   x,#$08
09a1: d0 e5     bne   $0988
09a3: cd 17     mov   x,#$17
09a5: e8 00     mov   a,#$00
09a7: d5 00 02  mov   $0200+x,a
09aa: 1d        dec   x
09ab: 10 f8     bpl   $09a5
09ad: e8 00     mov   a,#$00
09af: c4 37     mov   $37,a
09b1: c4 2d     mov   $2d,a
09b3: c4 31     mov   $31,a
09b5: 8f ff 2b  mov   $2b,#$ff
09b8: 8f 00 54  mov   $54,#$00
09bb: 6f        ret

09bc: e8 4d     mov   a,#$4d
09be: c4 f2     mov   $f2,a
09c0: e8 00     mov   a,#$00
09c2: c4 f3     mov   $f3,a
09c4: e8 00     mov   a,#$00
09c6: c4 47     mov   $47,a
09c8: c4 48     mov   $48,a
09ca: c4 49     mov   $49,a
09cc: 3f 24 14  call  $1424
09cf: e8 00     mov   a,#$00
09d1: c4 09     mov   $09,a
09d3: c4 0a     mov   $0a,a
09d5: 8f ff 37  mov   $37,#$ff
09d8: cd 17     mov   x,#$17
09da: f5 00 02  mov   a,$0200+x
09dd: 10 05     bpl   $09e4
09df: 48 c0     eor   a,#$c0
09e1: d5 00 02  mov   $0200+x,a
09e4: 1d        dec   x
09e5: 10 f3     bpl   $09da
09e7: cd 00     mov   x,#$00
09e9: e8 7f     mov   a,#$7f
09eb: d4 17     mov   $17+x,a
09ed: 7d        mov   a,x
09ee: 9f        xcn   a
09ef: 08 07     or    a,#$07
09f1: fd        mov   y,a
09f2: cb f2     mov   $f2,y
09f4: 8f 9c f3  mov   $f3,#$9c
09f7: dc        dec   y
09f8: dc        dec   y
09f9: cb f2     mov   $f2,y
09fb: 8f 00 f3  mov   $f3,#$00
09fe: 3d        inc   x
09ff: c8 08     cmp   x,#$08
0a01: d0 e6     bne   $09e9
0a03: 6f        ret

0a04: e4 37     mov   a,$37
0a06: f0 19     beq   $0a21
0a08: 8f 00 37  mov   $37,#$00
0a0b: cd 17     mov   x,#$17
0a0d: f5 00 02  mov   a,$0200+x
0a10: 28 c0     and   a,#$c0
0a12: 68 40     cmp   a,#$40
0a14: d0 08     bne   $0a1e
0a16: f5 00 02  mov   a,$0200+x
0a19: 48 c0     eor   a,#$c0
0a1b: d5 00 02  mov   $0200+x,a
0a1e: 1d        dec   x
0a1f: 10 ec     bpl   $0a0d
0a21: 6f        ret

0a22: 6f        ret

0a23: 6f        ret

0a24: 68 ef     cmp   a,#$ef
0a26: f0 94     beq   $09bc
0a28: 68 ee     cmp   a,#$ee
0a2a: f0 d8     beq   $0a04
0a2c: 9c        dec   a
0a2d: 1c        asl   a
0a2e: fd        mov   y,a
0a2f: 90 0d     bcc   $0a3e
0a31: f6 00 24  mov   a,$2400+y
0a34: c4 06     mov   $06,a
0a36: fc        inc   y
0a37: f6 00 24  mov   a,$2400+y
0a3a: c4 07     mov   $07,a
0a3c: 2f 0b     bra   $0a49
0a3e: f6 00 23  mov   a,$2300+y
0a41: c4 06     mov   $06,a
0a43: fc        inc   y
0a44: f6 00 23  mov   a,$2300+y
0a47: c4 07     mov   $07,a
0a49: 8d 00     mov   y,#$00
0a4b: f7 06     mov   a,($06)+y
0a4d: 30 d4     bmi   $0a23
0a4f: c4 00     mov   $00,a
0a51: fc        inc   y
0a52: f7 06     mov   a,($06)+y
0a54: c4 01     mov   $01,a
0a56: fc        inc   y
0a57: f7 06     mov   a,($06)+y
0a59: c4 02     mov   $02,a
0a5b: fc        inc   y
0a5c: f7 06     mov   a,($06)+y
0a5e: c4 03     mov   $03,a
0a60: fc        inc   y
0a61: 8f 00 04  mov   $04,#$00
0a64: 3f 69 0a  call  $0a69
0a67: 2f e2     bra   $0a4b
0a69: f8 00     mov   x,$00
0a6b: f5 00 02  mov   a,$0200+x
0a6e: 10 25     bpl   $0a95
0a70: 28 1f     and   a,#$1f
0a72: 64 01     cmp   a,$01
0a74: f0 1f     beq   $0a95
0a76: 28 07     and   a,#$07
0a78: 5d        mov   x,a
0a79: f4 17     mov   a,$17+x
0a7b: 10 18     bpl   $0a95
0a7d: 28 7f     and   a,#$7f
0a7f: 64 00     cmp   a,$00
0a81: d0 12     bne   $0a95
0a83: d4 17     mov   $17+x,a
0a85: 7d        mov   a,x
0a86: 9f        xcn   a
0a87: 08 07     or    a,#$07
0a89: c4 f2     mov   $f2,a
0a8b: 8f 9c f3  mov   $f3,#$9c
0a8e: 9c        dec   a
0a8f: 9c        dec   a
0a90: c4 f2     mov   $f2,a
0a92: 8f 00 f3  mov   $f3,#$00
0a95: e4 01     mov   a,$01
0a97: 28 07     and   a,#$07
0a99: 5d        mov   x,a
0a9a: f4 17     mov   a,$17+x
0a9c: 28 7f     and   a,#$7f
0a9e: d4 17     mov   $17+x,a
0aa0: f8 00     mov   x,$00
0aa2: e4 01     mov   a,$01
0aa4: 08 80     or    a,#$80
0aa6: d5 00 02  mov   $0200+x,a
0aa9: e4 02     mov   a,$02
0aab: d5 30 02  mov   $0230+x,a
0aae: e4 03     mov   a,$03
0ab0: d5 48 02  mov   $0248+x,a
0ab3: e8 02     mov   a,#$02
0ab5: d5 18 02  mov   $0218+x,a
0ab8: e8 00     mov   a,#$00
0aba: d5 60 02  mov   $0260+x,a
0abd: d5 78 02  mov   $0278+x,a
0ac0: d5 50 03  mov   $0350+x,a
0ac3: d5 58 04  mov   $0458+x,a
0ac6: d5 88 04  mov   $0488+x,a
0ac9: d5 e8 04  mov   $04e8+x,a
0acc: d5 b8 04  mov   $04b8+x,a
0acf: d5 b0 03  mov   $03b0+x,a
0ad2: d5 00 05  mov   $0500+x,a
0ad5: d5 d8 02  mov   $02d8+x,a
0ad8: d5 98 06  mov   $0698+x,a
0adb: d5 b0 06  mov   $06b0+x,a
0ade: d5 c8 06  mov   $06c8+x,a
0ae1: d5 38 06  mov   $0638+x,a
0ae4: d4 9d     mov   $9d+x,a
0ae6: d5 90 05  mov   $0590+x,a
0ae9: d5 a8 02  mov   $02a8+x,a
0aec: e8 01     mov   a,#$01
0aee: d4 55     mov   $55+x,a
0af0: d5 80 03  mov   $0380+x,a
0af3: e8 9c     mov   a,#$9c
0af5: d5 98 03  mov   $0398+x,a
0af8: d5 c0 02  mov   $02c0+x,a
0afb: e8 9f     mov   a,#$9f
0afd: d5 e0 03  mov   $03e0+x,a
0b00: e4 04     mov   a,$04
0b02: d5 60 05  mov   $0560+x,a
0b05: e8 0a     mov   a,#$0a
0b07: d5 d8 05  mov   $05d8+x,a
0b0a: e8 78     mov   a,#$78
0b0c: d5 f0 05  mov   $05f0+x,a
0b0f: e8 14     mov   a,#$14
0b11: d5 08 06  mov   $0608+x,a         ; $1478
0b14: 6f        ret

0b15: 8f 17 1f  mov   $1f,#$17
0b18: f8 1f     mov   x,$1f
0b1a: f5 00 02  mov   a,$0200+x
0b1d: 10 03     bpl   $0b22
0b1f: 3f 27 0b  call  $0b27
0b22: 8b 1f     dec   $1f
0b24: 10 f2     bpl   $0b18
0b26: 6f        ret

0b27: e8 00     mov   a,#$00
0b29: c4 34     mov   $34,a
0b2b: f5 00 02  mov   a,$0200+x
0b2e: 28 07     and   a,#$07
0b30: c4 20     mov   $20,a
0b32: 9f        xcn   a
0b33: c4 38     mov   $38,a
0b35: f5 18 02  mov   a,$0218+x
0b38: c4 23     mov   $23,a
0b3a: 28 01     and   a,#$01
0b3c: f0 03     beq   $0b41
0b3e: 18 20 23  or    $23,#$20
0b41: 9b 55     dec   $55+x
0b43: f0 03     beq   $0b48
0b45: 5f 1f 0c  jmp   $0c1f

0b48: f5 30 02  mov   a,$0230+x
0b4b: c4 21     mov   $21,a
0b4d: f5 48 02  mov   a,$0248+x
0b50: c4 22     mov   $22,a
0b52: 8d 00     mov   y,#$00
0b54: f7 21     mov   a,($21)+y
0b56: 10 1f     bpl   $0b77
0b58: 3a 21     incw  $21
0b5a: 68 a0     cmp   a,#$a0
0b5c: 90 08     bcc   $0b66
0b5e: 80        setc
0b5f: a8 c0     sbc   a,#$c0
0b61: 1c        asl   a
0b62: 5d        mov   x,a
0b63: 1f da 0e  jmp   ($0eda+x)

0b66: f8 1f     mov   x,$1f
0b68: d5 a8 02  mov   $02a8+x,a
0b6b: e8 00     mov   a,#$00
0b6d: d5 90 02  mov   $0290+x,a
0b70: e8 ff     mov   a,#$ff
0b72: d5 c0 02  mov   $02c0+x,a
0b75: 2f 59     bra   $0bd0
0b77: f8 1f     mov   x,$1f
0b79: c4 00     mov   $00,a
0b7b: e4 23     mov   a,$23
0b7d: 28 08     and   a,#$08
0b7f: f0 39     beq   $0bba
0b81: e4 00     mov   a,$00
0b83: 1c        asl   a
0b84: fd        mov   y,a
0b85: f5 18 05  mov   a,$0518+x
0b88: c4 00     mov   $00,a
0b8a: f5 30 05  mov   a,$0530+x
0b8d: c4 01     mov   $01,a
0b8f: f7 00     mov   a,($00)+y
0b91: c4 02     mov   $02,a
0b93: fc        inc   y
0b94: f7 00     mov   a,($00)+y
0b96: c4 03     mov   $03,a
0b98: f5 48 05  mov   a,$0548+x
0b9b: c4 00     mov   $00,a
0b9d: f5 00 02  mov   a,$0200+x
0ba0: 28 1f     and   a,#$1f
0ba2: c4 01     mov   $01,a
0ba4: f5 60 05  mov   a,$0560+x
0ba7: c4 04     mov   $04,a
0ba9: f5 d8 05  mov   a,$05d8+x
0bac: c4 05     mov   $05,a
0bae: 3f a0 0a  call  $0aa0
0bb1: 8d 00     mov   y,#$00
0bb3: f8 1f     mov   x,$1f
0bb5: 18 20 23  or    $23,#$20
0bb8: 2f 14     bra   $0bce
0bba: e4 00     mov   a,$00
0bbc: 60        clrc
0bbd: 95 60 02  adc   a,$0260+x
0bc0: d5 a8 02  mov   $02a8+x,a
0bc3: f5 78 02  mov   a,$0278+x
0bc6: d5 90 02  mov   $0290+x,a
0bc9: e8 ff     mov   a,#$ff
0bcb: d5 c0 02  mov   $02c0+x,a
0bce: 3a 21     incw  $21
0bd0: f8 1f     mov   x,$1f
0bd2: 8d 00     mov   y,#$00
0bd4: 3f a9 13  call  $13a9
0bd7: 3f bb 13  call  $13bb
0bda: 3f d9 13  call  $13d9
0bdd: f8 1f     mov   x,$1f
0bdf: e4 21     mov   a,$21
0be1: d5 30 02  mov   $0230+x,a
0be4: e4 22     mov   a,$22
0be6: d5 48 02  mov   $0248+x,a
0be9: e4 23     mov   a,$23
0beb: 28 20     and   a,#$20
0bed: d0 30     bne   $0c1f
0bef: 18 02 23  or    $23,#$02
0bf2: f5 b0 03  mov   a,$03b0+x
0bf5: 08 80     or    a,#$80
0bf7: d5 b0 03  mov   $03b0+x,a
0bfa: e4 23     mov   a,$23
0bfc: 28 80     and   a,#$80
0bfe: f0 09     beq   $0c09
0c00: f5 40 04  mov   a,$0440+x
0c03: d5 f8 03  mov   $03f8+x,a
0c06: f5 58 04  mov   a,$0458+x
0c09: d5 10 04  mov   $0410+x,a
0c0c: e8 00     mov   a,#$00
0c0e: d5 28 04  mov   $0428+x,a
0c11: e8 01     mov   a,#$01
0c13: d4 6d     mov   $6d+x,a
0c15: e8 00     mov   a,#$00
0c17: d5 20 03  mov   $0320+x,a
0c1a: f5 38 03  mov   a,$0338+x
0c1d: d4 85     mov   $85+x,a
0c1f: e4 23     mov   a,$23
0c21: 28 02     and   a,#$02
0c23: c4 33     mov   $33,a
0c25: f8 1f     mov   x,$1f
0c27: f5 d8 05  mov   a,$05d8+x
0c2a: c4 27     mov   $27,a
0c2c: f5 f0 05  mov   a,$05f0+x
0c2f: c4 28     mov   $28,a
0c31: f5 08 06  mov   a,$0608+x
0c34: c4 29     mov   $29,a
0c36: f5 38 06  mov   a,$0638+x
0c39: f0 23     beq   $0c5e
0c3b: 9b 9d     dec   $9d+x
0c3d: d0 1f     bne   $0c5e
0c3f: fd        mov   y,a
0c40: f5 20 06  mov   a,$0620+x
0c43: da 21     movw  $21,ya
0c45: f5 50 06  mov   a,$0650+x
0c48: fd        mov   y,a
0c49: f7 21     mov   a,($21)+y
0c4b: 10 05     bpl   $0c52
0c4d: fc        inc   y
0c4e: f7 21     mov   a,($21)+y
0c50: 2f f6     bra   $0c48
0c52: c4 27     mov   $27,a
0c54: fc        inc   y
0c55: dd        mov   a,y
0c56: d5 50 06  mov   $0650+x,a
0c59: f5 68 06  mov   a,$0668+x
0c5c: d4 9d     mov   $9d+x,a
0c5e: f5 60 05  mov   a,$0560+x
0c61: c4 26     mov   $26,a
0c63: f5 90 05  mov   a,$0590+x
0c66: f0 6e     beq   $0cd6
0c68: 9b b5     dec   $b5+x
0c6a: d0 45     bne   $0cb1
0c6c: fd        mov   y,a
0c6d: f5 78 05  mov   a,$0578+x
0c70: da 21     movw  $21,ya
0c72: 8d 00     mov   y,#$00
0c74: f7 21     mov   a,($21)+y
0c76: d5 60 05  mov   $0560+x,a
0c79: c4 26     mov   $26,a
0c7b: 3a 21     incw  $21
0c7d: f7 21     mov   a,($21)+y
0c7f: 04 26     or    a,$26
0c81: d0 0d     bne   $0c90
0c83: fc        inc   y
0c84: f7 21     mov   a,($21)+y
0c86: c4 00     mov   $00,a
0c88: fc        inc   y
0c89: f7 21     mov   a,($21)+y
0c8b: fd        mov   y,a
0c8c: e4 00     mov   a,$00
0c8e: 2f e0     bra   $0c70
0c90: f7 21     mov   a,($21)+y
0c92: d5 a8 05  mov   $05a8+x,a
0c95: 3a 21     incw  $21
0c97: f7 21     mov   a,($21)+y
0c99: d4 cd     mov   $cd+x,a
0c9b: d5 c0 05  mov   $05c0+x,a
0c9e: 3a 21     incw  $21
0ca0: f7 21     mov   a,($21)+y
0ca2: d4 b5     mov   $b5+x,a
0ca4: 3a 21     incw  $21
0ca6: ba 21     movw  ya,$21
0ca8: d5 78 05  mov   $0578+x,a
0cab: dd        mov   a,y
0cac: d5 90 05  mov   $0590+x,a
0caf: 2f 25     bra   $0cd6
0cb1: 9b cd     dec   $cd+x
0cb3: d0 21     bne   $0cd6
0cb5: f5 c0 05  mov   a,$05c0+x
0cb8: d4 cd     mov   $cd+x,a
0cba: f5 a8 05  mov   a,$05a8+x
0cbd: 30 09     bmi   $0cc8
0cbf: 60        clrc
0cc0: 84 26     adc   a,$26
0cc2: 90 0d     bcc   $0cd1
0cc4: e8 ff     mov   a,#$ff
0cc6: 2f 09     bra   $0cd1
0cc8: 60        clrc
0cc9: 84 26     adc   a,$26
0ccb: 64 26     cmp   a,$26
0ccd: 90 02     bcc   $0cd1
0ccf: e8 00     mov   a,#$00
0cd1: c4 26     mov   $26,a
0cd3: d5 60 05  mov   $0560+x,a
0cd6: f8 20     mov   x,$20
0cd8: e4 1f     mov   a,$1f
0cda: 74 17     cmp   a,$17+x
0cdc: f0 12     beq   $0cf0
0cde: 08 80     or    a,#$80
0ce0: 74 17     cmp   a,$17+x
0ce2: b0 03     bcs   $0ce7
0ce4: 5f cc 0e  jmp   $0ecc

0ce7: f0 0b     beq   $0cf4
0ce9: eb 33     mov   y,$33
0ceb: f0 f7     beq   $0ce4
0ced: 8f ff 34  mov   $34,#$ff
0cf0: 08 80     or    a,#$80
0cf2: d4 17     mov   $17+x,a
0cf4: eb 20     mov   y,$20
0cf6: e4 23     mov   a,$23
0cf8: 28 40     and   a,#$40
0cfa: f0 07     beq   $0d03
0cfc: f6 91 15  mov   a,$1591+y
0cff: 04 43     or    a,$43
0d01: 2f 07     bra   $0d0a
0d03: f6 91 15  mov   a,$1591+y
0d06: 48 ff     eor   a,#$ff
0d08: 24 43     and   a,$43
0d0a: 8f 4d f2  mov   $f2,#$4d
0d0d: c4 f3     mov   $f3,a
0d0f: c4 43     mov   $43,a
0d11: f8 1f     mov   x,$1f
0d13: f5 00 02  mov   a,$0200+x
0d16: 28 10     and   a,#$10
0d18: f0 07     beq   $0d21
0d1a: eb 26     mov   y,$26
0d1c: e4 30     mov   a,$30
0d1e: cf        mul   ya
0d1f: cb 26     mov   $26,y
0d21: e4 27     mov   a,$27
0d23: d5 d8 05  mov   $05d8+x,a
0d26: 3f 4c 14  call  $144c
0d29: eb 38     mov   y,$38
0d2b: cb f2     mov   $f2,y
0d2d: fa 39 f3  mov   ($f3),($39)
0d30: fc        inc   y
0d31: cb f2     mov   $f2,y
0d33: fa 3a f3  mov   ($f3),($3a)
0d36: f8 1f     mov   x,$1f
0d38: f5 90 02  mov   a,$0290+x
0d3b: c4 24     mov   $24,a
0d3d: f5 a8 02  mov   a,$02a8+x
0d40: c4 25     mov   $25,a
0d42: f5 50 03  mov   a,$0350+x
0d45: c4 3d     mov   $3d,a
0d47: f5 c0 02  mov   a,$02c0+x
0d4a: 30 3a     bmi   $0d86
0d4c: c4 01     mov   $01,a
0d4e: f5 78 02  mov   a,$0278+x
0d51: c4 00     mov   $00,a
0d53: f4 55     mov   a,$55+x
0d55: 5d        mov   x,a
0d56: ba 00     movw  ya,$00
0d58: 9a 24     subw  ya,$24
0d5a: f0 2a     beq   $0d86
0d5c: 10 17     bpl   $0d75
0d5e: ba 24     movw  ya,$24
0d60: 9a 00     subw  ya,$00
0d62: c4 00     mov   $00,a
0d64: dd        mov   a,y
0d65: 8d 00     mov   y,#$00
0d67: 9e        div   ya,x
0d68: c4 01     mov   $01,a
0d6a: e4 00     mov   a,$00
0d6c: 9e        div   ya,x
0d6d: c4 00     mov   $00,a
0d6f: ba 24     movw  ya,$24
0d71: 9a 00     subw  ya,$00
0d73: 2f 0f     bra   $0d84
0d75: c4 00     mov   $00,a
0d77: dd        mov   a,y
0d78: 8d 00     mov   y,#$00
0d7a: 9e        div   ya,x
0d7b: c4 01     mov   $01,a
0d7d: e4 00     mov   a,$00
0d7f: 9e        div   ya,x
0d80: eb 01     mov   y,$01
0d82: 7a 24     addw  ya,$24
0d84: da 24     movw  $24,ya
0d86: f8 1f     mov   x,$1f
0d88: 8d 00     mov   y,#$00
0d8a: f5 d8 02  mov   a,$02d8+x
0d8d: 10 02     bpl   $0d91
0d8f: 8d ff     mov   y,#$ff
0d91: da 00     movw  $00,ya
0d93: ba 24     movw  ya,$24
0d95: 7a 00     addw  ya,$00
0d97: 7a 00     addw  ya,$00
0d99: da 24     movw  $24,ya
0d9b: e4 24     mov   a,$24
0d9d: d5 90 02  mov   $0290+x,a
0da0: e4 25     mov   a,$25
0da2: d5 a8 02  mov   $02a8+x,a
0da5: e4 23     mov   a,$23
0da7: 28 04     and   a,#$04
0da9: f0 33     beq   $0dde
0dab: 9b 85     dec   $85+x
0dad: d0 2f     bne   $0dde
0daf: f5 08 03  mov   a,$0308+x
0db2: c4 22     mov   $22,a
0db4: f5 f0 02  mov   a,$02f0+x
0db7: c4 21     mov   $21,a
0db9: f5 20 03  mov   a,$0320+x
0dbc: fd        mov   y,a
0dbd: f7 21     mov   a,($21)+y
0dbf: fc        inc   y
0dc0: 68 80     cmp   a,#$80
0dc2: d0 04     bne   $0dc8
0dc4: f7 21     mov   a,($21)+y
0dc6: 2f f4     bra   $0dbc
0dc8: c4 00     mov   $00,a
0dca: dd        mov   a,y
0dcb: d5 20 03  mov   $0320+x,a
0dce: e8 01     mov   a,#$01
0dd0: d4 85     mov   $85+x,a
0dd2: 8d 00     mov   y,#$00
0dd4: e4 00     mov   a,$00
0dd6: 10 02     bpl   $0dda
0dd8: 8d ff     mov   y,#$ff
0dda: 7a 24     addw  ya,$24
0ddc: da 24     movw  $24,ya
0dde: e4 25     mov   a,$25
0de0: 10 17     bpl   $0df9
0de2: 28 1f     and   a,#$1f
0de4: 38 e0 42  and   $42,#$e0
0de7: 04 42     or    a,$42
0de9: c4 42     mov   $42,a
0deb: 8f 6c f2  mov   $f2,#$6c
0dee: c4 f3     mov   $f3,a
0df0: eb 20     mov   y,$20
0df2: f6 91 15  mov   a,$1591+y
0df5: 04 44     or    a,$44
0df7: 2f 1b     bra   $0e14
0df9: 3f a2 14  call  $14a2
0dfc: e4 38     mov   a,$38
0dfe: 08 02     or    a,#$02
0e00: c4 f2     mov   $f2,a
0e02: fa 3b f3  mov   ($f3),($3b)
0e05: bc        inc   a
0e06: c4 f2     mov   $f2,a
0e08: fa 3c f3  mov   ($f3),($3c)
0e0b: eb 20     mov   y,$20
0e0d: f6 91 15  mov   a,$1591+y
0e10: 48 ff     eor   a,#$ff
0e12: 24 44     and   a,$44
0e14: c4 44     mov   $44,a
0e16: 8f 3d f2  mov   $f2,#$3d
0e19: c4 f3     mov   $f3,a
0e1b: f8 1f     mov   x,$1f
0e1d: e4 34     mov   a,$34
0e1f: f0 09     beq   $0e2a
0e21: e4 38     mov   a,$38
0e23: 08 04     or    a,#$04
0e25: c4 f2     mov   $f2,a
0e27: fa 3d f3  mov   ($f3),($3d)
0e2a: f5 b0 03  mov   a,$03b0+x
0e2d: c4 3e     mov   $3e,a
0e2f: f5 c8 03  mov   a,$03c8+x
0e32: c4 3f     mov   $3f,a
0e34: f5 e0 03  mov   a,$03e0+x
0e37: c4 40     mov   $40,a
0e39: f5 68 03  mov   a,$0368+x
0e3c: 74 55     cmp   a,$55+x
0e3e: d0 0f     bne   $0e4f
0e40: f5 98 03  mov   a,$0398+x
0e43: c4 40     mov   $40,a
0e45: 38 7f 3e  and   $3e,#$7f
0e48: e8 00     mov   a,#$00
0e4a: d5 10 04  mov   $0410+x,a
0e4d: 2f 4b     bra   $0e9a
0e4f: f5 a0 04  mov   a,$04a0+x
0e52: 74 55     cmp   a,$55+x
0e54: d0 15     bne   $0e6b
0e56: f5 70 04  mov   a,$0470+x
0e59: d5 f8 03  mov   $03f8+x,a
0e5c: f5 88 04  mov   a,$0488+x
0e5f: d5 10 04  mov   $0410+x,a
0e62: e8 00     mov   a,#$00
0e64: d5 28 04  mov   $0428+x,a
0e67: e8 01     mov   a,#$01
0e69: d4 6d     mov   $6d+x,a
0e6b: f5 10 04  mov   a,$0410+x
0e6e: f0 2a     beq   $0e9a
0e70: 9b 6d     dec   $6d+x
0e72: d0 26     bne   $0e9a
0e74: c4 22     mov   $22,a
0e76: f5 f8 03  mov   a,$03f8+x
0e79: c4 21     mov   $21,a
0e7b: f5 28 04  mov   a,$0428+x
0e7e: fd        mov   y,a
0e7f: f7 21     mov   a,($21)+y
0e81: 68 ff     cmp   a,#$ff
0e83: d0 06     bne   $0e8b
0e85: fc        inc   y
0e86: f7 21     mov   a,($21)+y
0e88: fd        mov   y,a
0e89: 2f f4     bra   $0e7f
0e8b: c4 40     mov   $40,a
0e8d: fc        inc   y
0e8e: f7 21     mov   a,($21)+y
0e90: d4 6d     mov   $6d+x,a
0e92: fc        inc   y
0e93: dd        mov   a,y
0e94: d5 28 04  mov   $0428+x,a
0e97: 38 7f 3e  and   $3e,#$7f
0e9a: e4 3e     mov   a,$3e
0e9c: d5 b0 03  mov   $03b0+x,a
0e9f: e4 3f     mov   a,$3f
0ea1: d5 c8 03  mov   $03c8+x,a
0ea4: e4 40     mov   a,$40
0ea6: d5 e0 03  mov   $03e0+x,a
0ea9: e4 38     mov   a,$38
0eab: 08 07     or    a,#$07
0ead: c4 f2     mov   $f2,a
0eaf: fa 40 f3  mov   ($f3),($40)
0eb2: 9c        dec   a
0eb3: c4 f2     mov   $f2,a
0eb5: fa 3f f3  mov   ($f3),($3f)
0eb8: 9c        dec   a
0eb9: c4 f2     mov   $f2,a
0ebb: fa 3e f3  mov   ($f3),($3e)
0ebe: e4 33     mov   a,$33
0ec0: f0 0a     beq   $0ecc
0ec2: eb 20     mov   y,$20
0ec4: f6 91 15  mov   a,$1591+y
0ec7: 8f 4c f2  mov   $f2,#$4c
0eca: c4 f3     mov   $f3,a
0ecc: f8 1f     mov   x,$1f
0ece: e4 23     mov   a,$23
0ed0: 28 df     and   a,#$df
0ed2: 28 fd     and   a,#$fd
0ed4: d5 18 02  mov   $0218+x,a
0ed7: 5f 22 0b  jmp   $0b22

; vcmd dispatch table
0eda: dw $0f5a  ; c0
0edc: dw $0f5a  ; c1
0ede: dw $0f5a  ; c2
0ee0: dw $0f5a  ; c3
0ee2: dw $0f5a  ; c4
0ee4: dw $0f5a  ; c5
0ee6: dw $0f68  ; c6
0ee8: dw $0f6e  ; c7
0eea: dw $0f7a  ; c8
0eec: dw $0f8f  ; c9
0eee: dw $0fa4  ; ca
0ef0: dw $0fc3  ; cb
0ef2: dw $0fd8  ; cc
0ef4: dw $0fe1  ; cd
0ef6: dw $0fe7  ; ce
0ef8: dw $0ff0  ; cf
0efa: dw $1007  ; d0
0efc: dw $1016  ; d1
0efe: dw $1025  ; d2
0f00: dw $102b  ; d3
0f02: dw $1030  ; d4
0f04: dw $1035  ; d5
0f06: dw $103e  ; d6
0f08: dw $1047  ; d7
0f0a: dw $1050  ; d8
0f0c: dw $1060  ; d9
0f0e: dw $1083  ; da
0f10: dw $1096  ; db
0f12: dw $109d  ; dc
0f14: dw $10a7  ; dd
0f16: dw $10b3  ; de
0f18: dw $10dc  ; df
0f1a: dw $1105  ; e0
0f1c: dw $111b  ; e1
0f1e: dw $113c  ; e2
0f20: dw $1149  ; e3
0f22: dw $1155  ; e4
0f24: dw $1161  ; e5
0f26: dw $1170  ; e6
0f28: dw $1176  ; e7
0f2a: dw $1193  ; e8
0f2c: dw $11a4  ; e9
0f2e: dw $11ce  ; ea
0f30: dw $11fa  ; eb
0f32: dw $120b  ; ec
0f34: dw $121c  ; ed
0f36: dw $1241  ; ee
0f38: dw $1264  ; ef
0f3a: dw $1277  ; f0
0f3c: dw $128c  ; f1
0f3e: dw $1292  ; f2
0f40: dw $1298  ; f3
0f42: dw $12a7  ; f4
0f44: dw $12ad  ; f5
0f46: dw $12b3  ; f6
0f48: dw $12c6  ; f7
0f4a: dw $12db  ; f8
0f4c: dw $12f6  ; f9
0f4e: dw $12fc  ; fa
0f50: dw $1302  ; fb
0f52: dw $132f  ; fc
0f54: dw $135f  ; fd
0f56: dw $1375  ; fe
0f58: dw $1394  ; ff

; vcmd c0-c5
0f5a: e4 54     mov   a,$54
0f5c: f0 03     beq   $0f61
0f5e: 5f 3c 11  jmp   $113c

0f61: 3a 21     incw  $21
0f63: 3a 21     incw  $21
0f65: 5f 52 0b  jmp   $0b52

; vcmd c6
0f68: 8f ff 54  mov   $54,#$ff
0f6b: 5f 52 0b  jmp   $0b52

; vcmd c7
0f6e: f7 21     mov   a,($21)+y
0f70: c4 2b     mov   $2b,a
0f72: 3a 21     incw  $21
0f74: 8f 00 2d  mov   $2d,#$00
0f77: 5f 52 0b  jmp   $0b52

; vcmd c8
0f7a: f7 21     mov   a,($21)+y
0f7c: c4 2c     mov   $2c,a
0f7e: 3a 21     incw  $21
0f80: f7 21     mov   a,($21)+y
0f82: c4 2d     mov   $2d,a
0f84: 3a 21     incw  $21
0f86: 8f 00 2f  mov   $2f,#$00
0f89: 8f 00 2e  mov   $2e,#$00
0f8c: 5f 52 0b  jmp   $0b52

; vcmd c9
0f8f: f7 21     mov   a,($21)+y
0f91: c4 2c     mov   $2c,a
0f93: 3a 21     incw  $21
0f95: f7 21     mov   a,($21)+y
0f97: c4 2d     mov   $2d,a
0f99: 3a 21     incw  $21
0f9b: 8f 01 2f  mov   $2f,#$01
0f9e: 8f 00 2e  mov   $2e,#$00
0fa1: 5f 52 0b  jmp   $0b52

; vcmd ca
0fa4: e4 4f     mov   a,$4f
0fa6: f0 18     beq   $0fc0
0fa8: fa 50 47  mov   ($47),($50)
0fab: fa 51 48  mov   ($48),($51)
0fae: fa 52 49  mov   ($49),($52)
0fb1: fa 53 4a  mov   ($4a),($53)
0fb4: 8f 0d f2  mov   $f2,#$0d
0fb7: fa 4a f3  mov   ($f3),($4a)
0fba: 3f 24 14  call  $1424
0fbd: 8f 00 4f  mov   $4f,#$00
0fc0: 5f 52 0b  jmp   $0b52

; vcmd cb
0fc3: e4 4f     mov   a,$4f
0fc5: d0 0e     bne   $0fd5
0fc7: fa 47 50  mov   ($50),($47)
0fca: fa 48 51  mov   ($51),($48)
0fcd: fa 49 52  mov   ($52),($49)
0fd0: fa 4a 53  mov   ($53),($4a)
0fd3: 8b 4f     dec   $4f
0fd5: 5f 52 0b  jmp   $0b52

; vcmd cc
0fd8: f7 21     mov   a,($21)+y
0fda: c4 31     mov   $31,a
0fdc: 3a 21     incw  $21
0fde: 5f 52 0b  jmp   $0b52

; vcmd cd
0fe1: 38 fe 23  and   $23,#$fe
0fe4: 5f 52 0b  jmp   $0b52

; vcmd ce
0fe7: 18 01 23  or    $23,#$01
0fea: 18 20 23  or    $23,#$20
0fed: 5f 52 0b  jmp   $0b52

; vcmd cf
0ff0: f8 1f     mov   x,$1f
0ff2: f7 21     mov   a,($21)+y
0ff4: d5 78 05  mov   $0578+x,a
0ff7: 3a 21     incw  $21
0ff9: f7 21     mov   a,($21)+y
0ffb: d5 90 05  mov   $0590+x,a
0ffe: 3a 21     incw  $21
1000: e8 01     mov   a,#$01
1002: d4 b5     mov   $b5+x,a
1004: 5f 52 0b  jmp   $0b52

; vcmd d0
1007: f8 1f     mov   x,$1f
1009: e8 8d     mov   a,#$8d
100b: d5 f0 05  mov   $05f0+x,a
100e: e8 14     mov   a,#$14
1010: d5 08 06  mov   $0608+x,a         ; $148d
1013: 5f 52 0b  jmp   $0b52

; vcmd d1
1016: f8 1f     mov   x,$1f
1018: e8 78     mov   a,#$78
101a: d5 f0 05  mov   $05f0+x,a
101d: e8 14     mov   a,#$14
101f: d5 08 06  mov   $0608+x,a         ; $1478
1022: 5f 52 0b  jmp   $0b52

; vcmd d2
1025: 38 f7 23  and   $23,#$f7
1028: 5f 52 0b  jmp   $0b52

; vcmd d3
102b: ab 13     inc   $13
102d: 5f 52 0b  jmp   $0b52

; vcmd d4
1030: ab 12     inc   $12
1032: 5f 52 0b  jmp   $0b52

; vcmd d5
1035: f7 21     mov   a,($21)+y
1037: c4 0d     mov   $0d,a
1039: 3a 21     incw  $21
103b: 5f 52 0b  jmp   $0b52

; vcmd d6
103e: f7 21     mov   a,($21)+y
1040: c4 0c     mov   $0c,a
1042: 3a 21     incw  $21
1044: 5f 52 0b  jmp   $0b52

; vcmd d7
1047: f7 21     mov   a,($21)+y
1049: c4 0b     mov   $0b,a
104b: 3a 21     incw  $21
104d: 5f 52 0b  jmp   $0b52

; vcmd d8
1050: f8 1f     mov   x,$1f
1052: f7 21     mov   a,($21)+y
1054: 60        clrc
1055: 95 60 02  adc   a,$0260+x
1058: d5 60 02  mov   $0260+x,a
105b: 3a 21     incw  $21
105d: 5f 52 0b  jmp   $0b52

; vcmd d9
1060: f8 1f     mov   x,$1f
1062: f7 21     mov   a,($21)+y
1064: d5 20 06  mov   $0620+x,a
1067: 3a 21     incw  $21
1069: f7 21     mov   a,($21)+y
106b: d5 38 06  mov   $0638+x,a
106e: 3a 21     incw  $21
1070: f7 21     mov   a,($21)+y
1072: d5 68 06  mov   $0668+x,a
1075: e8 01     mov   a,#$01
1077: d4 9d     mov   $9d+x,a
1079: e8 00     mov   a,#$00
107b: d5 50 06  mov   $0650+x,a
107e: 3a 21     incw  $21
1080: 5f 52 0b  jmp   $0b52

; vcmd da
1083: f8 1f     mov   x,$1f
1085: f7 21     mov   a,($21)+y
1087: d5 f0 05  mov   $05f0+x,a
108a: 3a 21     incw  $21
108c: f7 21     mov   a,($21)+y
108e: d5 08 06  mov   $0608+x,a
1091: 3a 21     incw  $21
1093: 5f 52 0b  jmp   $0b52

; vcmd db
1096: 3a 21     incw  $21
1098: 3a 21     incw  $21
109a: 5f 52 0b  jmp   $0b52

; vcmd dc
109d: f8 1f     mov   x,$1f
109f: e8 00     mov   a,#$00
10a1: d5 00 05  mov   $0500+x,a
10a4: 5f 52 0b  jmp   $0b52

; vcmd dd
10a7: f8 1f     mov   x,$1f
10a9: f7 21     mov   a,($21)+y
10ab: d5 00 05  mov   $0500+x,a
10ae: 3a 21     incw  $21
10b0: 5f 52 0b  jmp   $0b52

; vcmd de
10b3: f8 1f     mov   x,$1f
10b5: f5 c8 06  mov   a,$06c8+x
10b8: f0 0f     beq   $10c9
10ba: 9c        dec   a
10bb: d0 0e     bne   $10cb
10bd: d5 c8 06  mov   $06c8+x,a
10c0: 3a 21     incw  $21
10c2: 3a 21     incw  $21
10c4: 3a 21     incw  $21
10c6: 5f 52 0b  jmp   $0b52

10c9: f7 21     mov   a,($21)+y
10cb: d5 c8 06  mov   $06c8+x,a
10ce: fc        inc   y
10cf: f7 21     mov   a,($21)+y
10d1: 5d        mov   x,a
10d2: fc        inc   y
10d3: f7 21     mov   a,($21)+y
10d5: c4 22     mov   $22,a
10d7: d8 21     mov   $21,x
10d9: 5f 52 0b  jmp   $0b52

; vcmd df
10dc: f8 1f     mov   x,$1f
10de: f5 b0 06  mov   a,$06b0+x
10e1: f0 0f     beq   $10f2
10e3: 9c        dec   a
10e4: d0 0e     bne   $10f4
10e6: d5 b0 06  mov   $06b0+x,a
10e9: 3a 21     incw  $21
10eb: 3a 21     incw  $21
10ed: 3a 21     incw  $21
10ef: 5f 52 0b  jmp   $0b52

10f2: f7 21     mov   a,($21)+y
10f4: d5 b0 06  mov   $06b0+x,a
10f7: fc        inc   y
10f8: f7 21     mov   a,($21)+y
10fa: 5d        mov   x,a
10fb: fc        inc   y
10fc: f7 21     mov   a,($21)+y
10fe: c4 22     mov   $22,a
1100: d8 21     mov   $21,x
1102: 5f 52 0b  jmp   $0b52

; vcmd e0
1105: f8 1f     mov   x,$1f
1107: f5 98 06  mov   a,$0698+x
110a: f0 0c     beq   $1118
110c: c4 22     mov   $22,a
110e: f5 80 06  mov   a,$0680+x
1111: c4 21     mov   $21,a
1113: e8 00     mov   a,#$00
1115: d5 98 06  mov   $0698+x,a
1118: 5f 52 0b  jmp   $0b52

; vcmd e1
111b: f8 1f     mov   x,$1f
111d: f7 21     mov   a,($21)+y
111f: c4 00     mov   $00,a
1121: 3a 21     incw  $21
1123: f7 21     mov   a,($21)+y
1125: c4 01     mov   $01,a
1127: 3a 21     incw  $21
1129: e4 21     mov   a,$21
112b: d5 80 06  mov   $0680+x,a
112e: e4 22     mov   a,$22
1130: d5 98 06  mov   $0698+x,a
1133: fa 00 21  mov   ($21),($00)
1136: fa 01 22  mov   ($22),($01)
1139: 5f 52 0b  jmp   $0b52

; vcmd e2
113c: f7 21     mov   a,($21)+y
113e: 5d        mov   x,a
113f: fc        inc   y
1140: f7 21     mov   a,($21)+y
1142: c4 22     mov   $22,a
1144: d8 21     mov   $21,x
1146: 5f 52 0b  jmp   $0b52

; vcmd e3
1149: f8 1f     mov   x,$1f
114b: f7 21     mov   a,($21)+y
114d: d5 60 02  mov   $0260+x,a
1150: 3a 21     incw  $21
1152: 5f 52 0b  jmp   $0b52

; vcmd e4
1155: f8 1f     mov   x,$1f
1157: f7 21     mov   a,($21)+y
1159: d5 78 02  mov   $0278+x,a
115c: 3a 21     incw  $21
115e: 5f 52 0b  jmp   $0b52

; vcmd e5
1161: f8 1f     mov   x,$1f
1163: f7 21     mov   a,($21)+y
1165: d5 38 03  mov   $0338+x,a
1168: 3a 21     incw  $21
116a: 18 04 23  or    $23,#$04
116d: 5f 52 0b  jmp   $0b52

; vcmd e6
1170: 38 fb 23  and   $23,#$fb
1173: 5f 52 0b  jmp   $0b52

; vcmd e7
1176: f8 1f     mov   x,$1f
1178: f7 21     mov   a,($21)+y
117a: d5 38 03  mov   $0338+x,a
117d: 3a 21     incw  $21
117f: f7 21     mov   a,($21)+y
1181: d5 f0 02  mov   $02f0+x,a
1184: 3a 21     incw  $21
1186: f7 21     mov   a,($21)+y
1188: d5 08 03  mov   $0308+x,a
118b: 3a 21     incw  $21
118d: 18 04 23  or    $23,#$04
1190: 5f 52 0b  jmp   $0b52

; vcmd e8
1193: f8 1f     mov   x,$1f
1195: f7 21     mov   a,($21)+y
1197: 3a 21     incw  $21
1199: d5 d8 02  mov   $02d8+x,a
119c: e8 ff     mov   a,#$ff
119e: d5 c0 02  mov   $02c0+x,a
11a1: 5f 52 0b  jmp   $0b52

; vcmd e9
11a4: f8 1f     mov   x,$1f
11a6: f7 21     mov   a,($21)+y
11a8: 30 04     bmi   $11ae
11aa: 60        clrc
11ab: 95 60 02  adc   a,$0260+x
11ae: d5 a8 02  mov   $02a8+x,a
11b1: 3a 21     incw  $21
11b3: f7 21     mov   a,($21)+y
11b5: 30 04     bmi   $11bb
11b7: 60        clrc
11b8: 95 60 02  adc   a,$0260+x
11bb: d5 c0 02  mov   $02c0+x,a
11be: f5 78 02  mov   a,$0278+x
11c1: d5 90 02  mov   $0290+x,a
11c4: 3a 21     incw  $21
11c6: e8 00     mov   a,#$00
11c8: d5 d8 02  mov   $02d8+x,a
11cb: 5f d0 0b  jmp   $0bd0

; vcmd ea
11ce: f8 1f     mov   x,$1f
11d0: f7 21     mov   a,($21)+y
11d2: 10 11     bpl   $11e5
11d4: 48 ff     eor   a,#$ff
11d6: bc        inc   a
11d7: c4 00     mov   $00,a
11d9: f5 60 05  mov   a,$0560+x
11dc: 80        setc
11dd: a4 00     sbc   a,$00
11df: b0 0c     bcs   $11ed
11e1: e8 00     mov   a,#$00
11e3: 2f 08     bra   $11ed
11e5: 60        clrc
11e6: 95 60 05  adc   a,$0560+x
11e9: 90 02     bcc   $11ed
11eb: e8 ff     mov   a,#$ff
11ed: d5 60 05  mov   $0560+x,a
11f0: 3a 21     incw  $21
11f2: e8 00     mov   a,#$00
11f4: d5 90 05  mov   $0590+x,a
11f7: 5f 52 0b  jmp   $0b52

; vcmd eb
11fa: f8 1f     mov   x,$1f
11fc: f7 21     mov   a,($21)+y
11fe: d5 d8 05  mov   $05d8+x,a
1201: 3a 21     incw  $21
1203: e8 00     mov   a,#$00
1205: d5 38 06  mov   $0638+x,a
1208: 5f 52 0b  jmp   $0b52

; vcmd ec
120b: f8 1f     mov   x,$1f
120d: f7 21     mov   a,($21)+y
120f: d5 60 05  mov   $0560+x,a
1212: 3a 21     incw  $21
1214: e8 00     mov   a,#$00
1216: d5 90 05  mov   $0590+x,a
1219: 5f 52 0b  jmp   $0b52

; vcmd ed
121c: f8 1f     mov   x,$1f
121e: f7 21     mov   a,($21)+y
1220: d5 48 05  mov   $0548+x,a
1223: 3a 21     incw  $21
1225: f7 21     mov   a,($21)+y
1227: d5 18 05  mov   $0518+x,a
122a: 3a 21     incw  $21
122c: f7 21     mov   a,($21)+y
122e: d5 30 05  mov   $0530+x,a
1231: 3a 21     incw  $21
1233: 38 ef 23  and   $23,#$ef
1236: e8 00     mov   a,#$00
1238: d5 b8 04  mov   $04b8+x,a
123b: 18 08 23  or    $23,#$08
123e: 5f 52 0b  jmp   $0b52

; vcmd ee
1241: f8 1f     mov   x,$1f
1243: 3f a9 13  call  $13a9
1246: 3f d9 13  call  $13d9
1249: f5 d0 04  mov   a,$04d0+x
124c: d5 f8 03  mov   $03f8+x,a
124f: f5 e8 04  mov   a,$04e8+x
1252: d5 10 04  mov   $0410+x,a
1255: e8 00     mov   a,#$00
1257: d5 28 04  mov   $0428+x,a
125a: e8 01     mov   a,#$01
125c: d4 6d     mov   $6d+x,a
125e: 18 20 23  or    $23,#$20
1261: 5f dd 0b  jmp   $0bdd

; vcmd ef
1264: f8 1f     mov   x,$1f
1266: f7 21     mov   a,($21)+y
1268: d5 d0 04  mov   $04d0+x,a
126b: 3a 21     incw  $21
126d: f7 21     mov   a,($21)+y
126f: d5 e8 04  mov   $04e8+x,a
1272: 3a 21     incw  $21
1274: 5f 52 0b  jmp   $0b52

; vcmd f0
1277: f8 1f     mov   x,$1f
1279: f7 21     mov   a,($21)+y
127b: d5 80 03  mov   $0380+x,a
127e: 3a 21     incw  $21
1280: f7 21     mov   a,($21)+y
1282: 08 80     or    a,#$80
1284: d5 98 03  mov   $0398+x,a
1287: 3a 21     incw  $21
1289: 5f 52 0b  jmp   $0b52

; vcmd f1
128c: 38 ef 23  and   $23,#$ef
128f: 5f 52 0b  jmp   $0b52

; vcmd f2
1292: 18 10 23  or    $23,#$10
1295: 5f 52 0b  jmp   $0b52

; vcmd f3
1298: f8 1f     mov   x,$1f
129a: f7 21     mov   a,($21)+y
129c: d5 b8 04  mov   $04b8+x,a
129f: 3a 21     incw  $21
12a1: 38 ef 23  and   $23,#$ef
12a4: 5f 52 0b  jmp   $0b52

; vcmd f4
12a7: 18 20 23  or    $23,#$20
12aa: 5f d0 0b  jmp   $0bd0

; vcmd f5
12ad: 18 20 23  or    $23,#$20
12b0: 5f 52 0b  jmp   $0b52

; vcmd f6
12b3: f8 1f     mov   x,$1f
12b5: f7 21     mov   a,($21)+y
12b7: d5 70 04  mov   $0470+x,a
12ba: 3a 21     incw  $21
12bc: f7 21     mov   a,($21)+y
12be: d5 88 04  mov   $0488+x,a
12c1: 3a 21     incw  $21
12c3: 5f 52 0b  jmp   $0b52

; vcmd f7
12c6: f7 21     mov   a,($21)+y
12c8: c4 4b     mov   $4b,a
12ca: 3a 21     incw  $21
12cc: f7 21     mov   a,($21)+y
12ce: c4 4c     mov   $4c,a
12d0: 3a 21     incw  $21
12d2: 8f 01 4e  mov   $4e,#$01
12d5: 8f 00 4d  mov   $4d,#$00
12d8: 5f 52 0b  jmp   $0b52

; vcmd f8
12db: f7 21     mov   a,($21)+y
12dd: c4 47     mov   $47,a
12df: 3a 21     incw  $21
12e1: f7 21     mov   a,($21)+y
12e3: c4 48     mov   $48,a
12e5: 3a 21     incw  $21
12e7: f7 21     mov   a,($21)+y
12e9: c4 49     mov   $49,a
12eb: 3a 21     incw  $21
12ed: 3f 24 14  call  $1424
12f0: 8f 00 4c  mov   $4c,#$00
12f3: 5f 52 0b  jmp   $0b52

; vcmd f9
12f6: 38 bf 23  and   $23,#$bf
12f9: 5f 52 0b  jmp   $0b52

; vcmd fa
12fc: 18 40 23  or    $23,#$40
12ff: 5f 52 0b  jmp   $0b52

; vcmd fb
1302: 8f 04 46  mov   $46,#$04
1305: f7 21     mov   a,($21)+y
1307: c4 4a     mov   $4a,a
1309: 3a 21     incw  $21
130b: f7 21     mov   a,($21)+y
130d: c4 47     mov   $47,a
130f: 3a 21     incw  $21
1311: f7 21     mov   a,($21)+y
1313: c4 48     mov   $48,a
1315: 3a 21     incw  $21
1317: f7 21     mov   a,($21)+y
1319: c4 49     mov   $49,a
131b: 3a 21     incw  $21
131d: 3f fa 13  call  $13fa
1320: 8f 0d f2  mov   $f2,#$0d
1323: fa 4a f3  mov   ($f3),($4a)
1326: 3f 24 14  call  $1424
1329: 8f 00 4c  mov   $4c,#$00
132c: 5f 52 0b  jmp   $0b52

; vcmd fc
132f: f8 1f     mov   x,$1f
1331: f7 21     mov   a,($21)+y
1333: 10 12     bpl   $1347
1335: d5 b0 03  mov   $03b0+x,a
1338: 3a 21     incw  $21
133a: f7 21     mov   a,($21)+y
133c: d5 c8 03  mov   $03c8+x,a
133f: 3a 21     incw  $21
1341: 38 7f 23  and   $23,#$7f
1344: 5f 52 0b  jmp   $0b52

1347: 3a 21     incw  $21
1349: f5 50 03  mov   a,$0350+x
134c: fd        mov   y,a
134d: f6 00 1f  mov   a,$1f00+y
1350: d5 b0 03  mov   $03b0+x,a
1353: f6 00 20  mov   a,$2000+y
1356: d5 c8 03  mov   $03c8+x,a
1359: 38 7f 23  and   $23,#$7f
135c: 5f 52 0b  jmp   $0b52

; vcmd fd
135f: f8 1f     mov   x,$1f
1361: f7 21     mov   a,($21)+y
1363: d5 40 04  mov   $0440+x,a
1366: 3a 21     incw  $21
1368: f7 21     mov   a,($21)+y
136a: d5 58 04  mov   $0458+x,a
136d: 3a 21     incw  $21
136f: 18 80 23  or    $23,#$80
1372: 5f 52 0b  jmp   $0b52

; vcmd fe
1375: f8 1f     mov   x,$1f
1377: f7 21     mov   a,($21)+y
1379: 3a 21     incw  $21
137b: d5 50 03  mov   $0350+x,a
137e: fd        mov   y,a
137f: f6 00 1f  mov   a,$1f00+y
1382: d5 b0 03  mov   $03b0+x,a
1385: f6 00 20  mov   a,$2000+y
1388: d5 c8 03  mov   $03c8+x,a
138b: 38 7f 23  and   $23,#$7f
138e: 8f ff 34  mov   $34,#$ff
1391: 5f 52 0b  jmp   $0b52

; vcmd ff
1394: e8 00     mov   a,#$00
1396: f8 1f     mov   x,$1f
1398: d5 00 02  mov   $0200+x,a
139b: 7d        mov   a,x
139c: 08 80     or    a,#$80
139e: f8 20     mov   x,$20
13a0: 74 17     cmp   a,$17+x
13a2: d0 04     bne   $13a8
13a4: e8 7f     mov   a,#$7f
13a6: d4 17     mov   $17+x,a
13a8: 6f        ret

13a9: f5 00 05  mov   a,$0500+x
13ac: d0 04     bne   $13b2
13ae: f7 21     mov   a,($21)+y
13b0: 3a 21     incw  $21
13b2: d4 55     mov   $55+x,a
13b4: f5 80 03  mov   a,$0380+x
13b7: d5 68 03  mov   $0368+x,a
13ba: 6f        ret

13bb: e4 23     mov   a,$23
13bd: 28 10     and   a,#$10
13bf: f0 08     beq   $13c9
13c1: f7 21     mov   a,($21)+y
13c3: d5 a0 04  mov   $04a0+x,a
13c6: 3a 21     incw  $21
13c8: 6f        ret

13c9: f5 55 00  mov   a,$0055+x
13cc: 5c        lsr   a
13cd: 75 b8 04  cmp   a,$04b8+x
13d0: 90 03     bcc   $13d5
13d2: f5 b8 04  mov   a,$04b8+x
13d5: d5 a0 04  mov   $04a0+x,a
13d8: 6f        ret

13d9: e4 23     mov   a,$23
13db: 28 01     and   a,#$01
13dd: d0 12     bne   $13f1
13df: f7 21     mov   a,($21)+y
13e1: 68 ee     cmp   a,#$ee
13e3: f0 0c     beq   $13f1
13e5: 68 f4     cmp   a,#$f4
13e7: f0 08     beq   $13f1
13e9: 68 ce     cmp   a,#$ce
13eb: f0 04     beq   $13f1
13ed: 68 f5     cmp   a,#$f5
13ef: d0 08     bne   $13f9
13f1: e8 00     mov   a,#$00
13f3: d5 a0 04  mov   $04a0+x,a
13f6: d5 68 03  mov   $0368+x,a
13f9: 6f        ret

13fa: e8 00     mov   a,#$00
13fc: 8f 2c f2  mov   $f2,#$2c
13ff: c4 f3     mov   $f3,a
1401: 8f 3c f2  mov   $f2,#$3c
1404: c4 f3     mov   $f3,a
1406: eb 46     mov   y,$46
1408: dd        mov   a,y
1409: bc        inc   a
140a: bc        inc   a
140b: c4 45     mov   $45,a
140d: 8f 0d f2  mov   $f2,#$0d
1410: 8f 01 f3  mov   $f3,#$01
1413: 6f        ret

1414: db $ff,$f8,$f0,$e8,$e0,$d8,$d0,$c8
141c: db $c0,$b8,$b0,$a8,$a0,$98,$90,$88

1424: e4 45     mov   a,$45
1426: d0 23     bne   $144b
1428: 8f 0d f2  mov   $f2,#$0d
142b: fa 4a f3  mov   ($f3),($4a)
142e: e4 16     mov   a,$16
1430: d0 0d     bne   $143f
1432: 8f 2c f2  mov   $f2,#$2c
1435: fa 47 f3  mov   ($f3),($47)
1438: 8f 3c f2  mov   $f2,#$3c
143b: fa 48 f3  mov   ($f3),($48)
143e: 6f        ret

143f: e4 49     mov   a,$49
1441: 8f 2c f2  mov   $f2,#$2c
1444: c4 f3     mov   $f3,a
1446: 8f 3c f2  mov   $f2,#$3c
1449: c4 f3     mov   $f3,a
144b: 6f        ret

144c: e4 16     mov   a,$16
144e: f0 03     beq   $1453
1450: 8f 0a 27  mov   $27,#$0a
1453: e8 14     mov   a,#$14
1455: 80        setc
1456: a4 27     sbc   a,$27
1458: fd        mov   y,a
1459: f7 28     mov   a,($28)+y
145b: c4 00     mov   $00,a
145d: eb 27     mov   y,$27
145f: f7 28     mov   a,($28)+y
1461: c4 01     mov   $01,a
1463: eb 26     mov   y,$26
1465: e4 00     mov   a,$00
1467: cf        mul   ya
1468: f0 01     beq   $146b
146a: fc        inc   y
146b: cb 39     mov   $39,y
146d: eb 26     mov   y,$26
146f: e4 01     mov   a,$01
1471: cf        mul   ya
1472: f0 01     beq   $1475
1474: fc        inc   y
1475: cb 3a     mov   $3a,y
1477: 6f        ret

1478: db $00,$01,$03,$07,$0d,$15,$1e,$29
1480: db $34,$42,$51,$5e,$67,$6e,$73,$77
1488: db $7a,$7c,$7d,$7e,$7f

148d: db $1e,$28,$32,$3c,$46,$50,$5a,$64
1495: db $6e,$78,$7f,$7f,$7f,$7f,$7f,$7f
149d: db $7f,$7f,$7f,$7f,$7f

14a2: f8 3d     mov   x,$3d
14a4: f5 00 21  mov   a,$2100+x
14a7: 60        clrc
14a8: 84 25     adc   a,$25
14aa: c4 25     mov   $25,a
14ac: f5 00 22  mov   a,$2200+x
14af: 60        clrc
14b0: 84 24     adc   a,$24
14b2: c4 24     mov   $24,a
14b4: 90 02     bcc   $14b8
14b6: ab 25     inc   $25
14b8: f8 25     mov   x,$25
14ba: f5 ff 14  mov   a,$14ff+x
14bd: c4 00     mov   $00,a
14bf: 9f        xcn   a
14c0: 28 0f     and   a,#$0f
14c2: 5d        mov   x,a
14c3: f5 77 15  mov   a,$1577+x
14c6: c4 3c     mov   $3c,a
14c8: f5 84 15  mov   a,$1584+x
14cb: c4 3b     mov   $3b,a
14cd: f5 78 15  mov   a,$1578+x
14d0: fd        mov   y,a
14d1: f5 85 15  mov   a,$1585+x
14d4: 9a 3b     subw  ya,$3b
14d6: cb 01     mov   $01,y
14d8: eb 24     mov   y,$24
14da: cf        mul   ya
14db: e4 01     mov   a,$01
14dd: cb 01     mov   $01,y
14df: eb 24     mov   y,$24
14e1: cf        mul   ya
14e2: 8f 00 02  mov   $02,#$00
14e5: 7a 01     addw  ya,$01
14e7: 7a 3b     addw  ya,$3b
14e9: cb 3c     mov   $3c,y
14eb: c4 3b     mov   $3b,a
14ed: e4 00     mov   a,$00
14ef: 28 0f     and   a,#$0f
14f1: f0 09     beq   $14fc
14f3: 5d        mov   x,a
14f4: e4 3b     mov   a,$3b
14f6: 4b 3c     lsr   $3c
14f8: 7c        ror   a
14f9: 1d        dec   x
14fa: d0 fa     bne   $14f6
14fc: c4 3b     mov   $3b,a
14fe: 6f        ret

14ff: db             $39,$49,$59,$69,$79,$89,$99,$a9,$b9
1508: db $08,$18,$28,$38,$48,$58,$68,$78,$88,$98,$a8,$b8
1514: db $07,$17,$27,$37,$47,$57,$67,$77,$87,$97,$a7,$b7
1520: db $06,$16,$26,$36,$46,$56,$66,$76,$86,$96,$a6,$b6
152c: db $05,$15,$25,$35,$45,$55,$65,$75,$85,$95,$a5,$b5
1538: db $04,$14,$24,$34,$44,$54,$64,$74,$84,$94,$a4,$b4
1544: db $03,$13,$23,$33,$43,$53,$63,$73,$83,$93,$a3,$b3
1550: db $02,$12,$22,$32,$42,$52,$62,$72,$82,$92,$a2,$b2
155c: db $01,$11,$21,$31,$41,$51,$61,$71,$81,$91,$a1,$b1
1568: db $00,$10,$20,$30,$40,$50,$60,$70,$80,$90,$a0,$b0
1574: db $00,$10,$20

1577: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c,$40
1584: db $00,$e8,$ec,$0e,$52,$b8,$42,$f2,$c4,$d2,$04,$68,$00

1591: db $01,$02,$04,$08,$10,$20,$40,$80

1599: 8f 6c f2  mov   $f2,#$6c
159c: 8f ff f3  mov   $f3,#$ff
159f: 8d 15     mov   y,#$15
15a1: e8 d6     mov   a,#$d6
15a3: da 00     movw  $00,ya
15a5: 8d 03     mov   y,#$03
15a7: cd 3c     mov   x,#$3c
15a9: 3f c7 15  call  $15c7
15ac: 8d 15     mov   y,#$15
15ae: e8 da     mov   a,#$da
15b0: da 00     movw  $00,ya
15b2: 8d 07     mov   y,#$07
15b4: cd 7d     mov   x,#$7d
15b6: 3f c7 15  call  $15c7
15b9: 8d 15     mov   y,#$15
15bb: e8 e2     mov   a,#$e2
15bd: da 00     movw  $00,ya
15bf: 8d 07     mov   y,#$07
15c1: cd 7f     mov   x,#$7f
15c3: 3f c7 15  call  $15c7
15c6: 6f        ret

15c7: d8 f2     mov   $f2,x
15c9: f7 00     mov   a,($00)+y
15cb: c4 f3     mov   $f3,a
15cd: 7d        mov   a,x
15ce: 80        setc
15cf: a8 10     sbc   a,#$10
15d1: 5d        mov   x,a
15d2: dc        dec   y
15d3: 10 f2     bpl   $15c7
15d5: 6f        ret

15d6: 00
15d7: 01
15d8: 00
15d9: 00
15da: 00
15db: 00
15dc: 00
15dd: 00
15de: 00
15df: 1b e0
15e1: 04 7f
15e3: 00
15e4: 00
15e5: 00
15e6: 00
15e7: 00
15e8: 00
15e9: 00

15ea: 3f 53 09  call  $0953
15ed: e4 f4     mov   a,$f4
15ef: 64 0e     cmp   a,$0e
15f1: f0 fa     beq   $15ed
15f3: fa f6 00  mov   ($00),($f6)
15f6: f8 f7     mov   x,$f7
15f8: f0 65     beq   $165f
15fa: d8 01     mov   $01,x
15fc: c4 0e     mov   $0e,a
15fe: c4 f4     mov   $f4,a
1600: 8d 00     mov   y,#$00
1602: fa 0e 02  mov   ($02),($0e)
1605: e4 f4     mov   a,$f4
1607: 64 0e     cmp   a,$0e
1609: f0 fa     beq   $1605
160b: fa f5 0f  mov   ($0f),($f5)
160e: fa f6 10  mov   ($10),($f6)
1611: fa f7 11  mov   ($11),($f7)
1614: e4 f4     mov   a,$f4
1616: c4 0e     mov   $0e,a
1618: c4 f4     mov   $f4,a
161a: 80        setc
161b: a4 02     sbc   a,$02
161d: 9c        dec   a
161e: d0 15     bne   $1635
1620: e4 0f     mov   a,$0f
1622: d7 00     mov   ($00)+y,a
1624: 3a 00     incw  $00
1626: e4 10     mov   a,$10
1628: d7 00     mov   ($00)+y,a
162a: 3a 00     incw  $00
162c: e4 11     mov   a,$11
162e: d7 00     mov   ($00)+y,a
1630: 3a 00     incw  $00
1632: 5f 02 16  jmp   $1602

1635: 9c        dec   a
1636: d0 11     bne   $1649
1638: e4 0f     mov   a,$0f
163a: d7 00     mov   ($00)+y,a
163c: fc        inc   y
163d: e4 10     mov   a,$10
163f: d7 00     mov   ($00)+y,a
1641: fc        inc   y
1642: e4 11     mov   a,$11
1644: d7 00     mov   ($00)+y,a
1646: 5f ed 15  jmp   $15ed

1649: 9c        dec   a
164a: d0 0c     bne   $1658
164c: e4 0f     mov   a,$0f
164e: d7 00     mov   ($00)+y,a
1650: fc        inc   y
1651: e4 10     mov   a,$10
1653: d7 00     mov   ($00)+y,a
1655: 5f ed 15  jmp   $15ed

1658: e4 0f     mov   a,$0f
165a: d7 00     mov   ($00)+y,a
165c: 5f ed 15  jmp   $15ed

165f: 8f 00 f1  mov   $f1,#$00
1662: 8f 01 f1  mov   $f1,#$01
1665: c4 0e     mov   $0e,a
1667: c4 f4     mov   $f4,a
1669: 6f        ret

166a: 3f f3 16  call  $16f3
166d: fa 0f 2b  mov   ($2b),($0f)
1670: 6f        ret

1671: 3f f3 16  call  $16f3
1674: fa 0f 2c  mov   ($2c),($0f)
1677: 3f f3 16  call  $16f3
167a: fa 0f 2d  mov   ($2d),($0f)
167d: 8f 00 2f  mov   $2f,#$00
1680: 8f 00 2e  mov   $2e,#$00
1683: 6f        ret

1684: 3f f3 16  call  $16f3
1687: fa 0f 2c  mov   ($2c),($0f)
168a: 3f f3 16  call  $16f3
168d: fa 0f 2d  mov   ($2d),($0f)
1690: 8f 01 2f  mov   $2f,#$01
1693: 8f 00 2e  mov   $2e,#$00
1696: 6f        ret

1697: e4 f4     mov   a,$f4
1699: 64 0e     cmp   a,$0e
169b: f0 10     beq   $16ad
169d: fa f5 08  mov   ($08),($f5)
16a0: e4 f4     mov   a,$f4
16a2: c4 0e     mov   $0e,a
16a4: c4 f4     mov   $f4,a
16a6: e4 08     mov   a,$08
16a8: 80        setc
16a9: a8 f0     sbc   a,#$f0
16ab: b0 01     bcs   $16ae
16ad: 6f        ret

16ae: 8f 00 08  mov   $08,#$00
16b1: 1c        asl   a
16b2: 5d        mov   x,a
16b3: 1f b6 16  jmp   ($16b6+x)

16b6: dw $1671
16b8: dw $1684
16ba: dw $166a
16bc: dw $1720
16be: dw $171c
16c0: dw $1724
16c2: dw $1728
16c4: dw $1740
16c6: dw $172c
16c8: dw $1754
16ca: dw $188d
16cc: dw $187d
16ce: dw $183b
16d0: dw $0953
16d2: dw $15ea
16d4: dw $16ad

16d6: e4 f4     mov   a,$f4
16d8: 64 0e     cmp   a,$0e
16da: f0 07     beq   $16e3
16dc: e4 f5     mov   a,$f5
16de: 80        setc
16df: a8 f0     sbc   a,#$f0
16e1: b0 01     bcs   $16e4
16e3: 6f        ret

16e4: c4 00     mov   $00,a
16e6: e4 f4     mov   a,$f4
16e8: c4 0e     mov   $0e,a
16ea: c4 f4     mov   $f4,a
16ec: e4 00     mov   a,$00
16ee: 1c        asl   a
16ef: 5d        mov   x,a
16f0: 1f b6 16  jmp   ($16b6+x)

16f3: e4 f4     mov   a,$f4
16f5: 64 0e     cmp   a,$0e
16f7: f0 fa     beq   $16f3
16f9: fa f5 0f  mov   ($0f),($f5)
16fc: e4 f4     mov   a,$f4
16fe: c4 0e     mov   $0e,a
1700: c4 f4     mov   $f4,a
1702: 6f        ret

1703: e4 f4     mov   a,$f4
1705: 64 0e     cmp   a,$0e
1707: f0 fa     beq   $1703
1709: fa f5 0f  mov   ($0f),($f5)
170c: fa f6 10  mov   ($10),($f6)
170f: fa f7 11  mov   ($11),($f7)
1712: 8f 21 f1  mov   $f1,#$21
1715: e4 f4     mov   a,$f4
1717: c4 0e     mov   $0e,a
1719: c4 f4     mov   $f4,a
171b: 6f        ret

171c: 8f ff 32  mov   $32,#$ff
171f: 6f        ret

1720: 8f 00 32  mov   $32,#$00
1723: 6f        ret

1724: 8f 00 16  mov   $16,#$00
1727: 6f        ret

1728: 8f ff 16  mov   $16,#$ff
172b: 6f        ret

172c: 8f 1a fa  mov   $fa,#$1a
172f: e8 0c     mov   a,#$0c
1731: c4 f2     mov   $f2,a
1733: e8 18     mov   a,#$18
1735: c4 f3     mov   $f3,a
1737: e8 1c     mov   a,#$1c
1739: c4 f2     mov   $f2,a
173b: e8 18     mov   a,#$18
173d: c4 f3     mov   $f3,a
173f: 6f        ret

1740: 8f 82 fa  mov   $fa,#$82
1743: e8 0c     mov   a,#$0c
1745: c4 f2     mov   $f2,a
1747: e8 30     mov   a,#$30
1749: c4 f3     mov   $f3,a
174b: e8 1c     mov   a,#$1c
174d: c4 f2     mov   $f2,a
174f: e8 30     mov   a,#$30
1751: c4 f3     mov   $f3,a
1753: 6f        ret

1754: e4 f4     mov   a,$f4
1756: 64 0e     cmp   a,$0e
1758: f0 fa     beq   $1754
175a: fa f5 00  mov   ($00),($f5)
175d: 8f 00 01  mov   $01,#$00
1760: e4 00     mov   a,$00
1762: d0 3a     bne   $179e
1764: e4 01     mov   a,$01
1766: 9f        xcn   a
1767: 08 08     or    a,#$08
1769: c4 f2     mov   $f2,a
176b: e4 f3     mov   a,$f3
176d: c4 f6     mov   $f6,a
176f: c4 f7     mov   $f7,a
1771: e4 01     mov   a,$01
1773: 9f        xcn   a
1774: 08 02     or    a,#$02
1776: c4 f2     mov   $f2,a
1778: e4 f3     mov   a,$f3
177a: 28 03     and   a,#$03
177c: c4 02     mov   $02,a
177e: 1c        asl   a
177f: 1c        asl   a
1780: 04 02     or    a,$02
1782: c4 f5     mov   $f5,a
1784: e4 f4     mov   a,$f4
1786: c4 f4     mov   $f4,a
1788: c4 0e     mov   $0e,a
178a: e4 f4     mov   a,$f4
178c: 64 0e     cmp   a,$0e
178e: f0 fa     beq   $178a
1790: ab 01     inc   $01
1792: 78 08 01  cmp   $01,#$08
1795: d0 cd     bne   $1764
1797: e4 f4     mov   a,$f4
1799: c4 f4     mov   $f4,a
179b: c4 0e     mov   $0e,a
179d: 6f        ret

179e: 9c        dec   a
179f: d0 3b     bne   $17dc
17a1: e4 01     mov   a,$01
17a3: 9f        xcn   a
17a4: 5d        mov   x,a
17a5: d8 f2     mov   $f2,x
17a7: e4 f3     mov   a,$f3
17a9: c4 f6     mov   $f6,a
17ab: 9f        xcn   a
17ac: 5c        lsr   a
17ad: 28 04     and   a,#$04
17af: c4 02     mov   $02,a
17b1: 3d        inc   x
17b2: d8 f2     mov   $f2,x
17b4: e4 f3     mov   a,$f3
17b6: c4 f7     mov   $f7,a
17b8: 9f        xcn   a
17b9: 5c        lsr   a
17ba: 5c        lsr   a
17bb: 5c        lsr   a
17bc: 28 01     and   a,#$01
17be: 04 02     or    a,$02
17c0: c4 f5     mov   $f5,a
17c2: e4 f4     mov   a,$f4
17c4: c4 f4     mov   $f4,a
17c6: c4 0e     mov   $0e,a
17c8: e4 f4     mov   a,$f4
17ca: 64 0e     cmp   a,$0e
17cc: f0 fa     beq   $17c8
17ce: ab 01     inc   $01
17d0: 78 08 01  cmp   $01,#$08
17d3: d0 cc     bne   $17a1
17d5: e4 f4     mov   a,$f4
17d7: c4 f4     mov   $f4,a
17d9: c4 0e     mov   $0e,a
17db: 6f        ret

17dc: e4 01     mov   a,$01
17de: 9f        xcn   a
17df: 08 08     or    a,#$08
17e1: c4 f2     mov   $f2,a
17e3: e4 f3     mov   a,$f3
17e5: c4 03     mov   $03,a
17e7: e4 01     mov   a,$01
17e9: 9f        xcn   a
17ea: fd        mov   y,a
17eb: cb f2     mov   $f2,y
17ed: fa f3 04  mov   ($04),($f3)
17f0: fc        inc   y
17f1: cb f2     mov   $f2,y
17f3: fa f3 05  mov   ($05),($f3)
17f6: e4 04     mov   a,$04
17f8: 10 02     bpl   $17fc
17fa: 48 ff     eor   a,#$ff
17fc: 1c        asl   a
17fd: eb 03     mov   y,$03
17ff: cf        mul   ya
1800: cb f6     mov   $f6,y
1802: e4 05     mov   a,$05
1804: 10 02     bpl   $1808
1806: 48 ff     eor   a,#$ff
1808: 1c        asl   a
1809: eb 03     mov   y,$03
180b: cf        mul   ya
180c: cb f7     mov   $f7,y
180e: e4 01     mov   a,$01
1810: 9f        xcn   a
1811: 08 02     or    a,#$02
1813: c4 f2     mov   $f2,a
1815: e4 f3     mov   a,$f3
1817: 28 03     and   a,#$03
1819: c4 02     mov   $02,a
181b: 1c        asl   a
181c: 1c        asl   a
181d: 04 02     or    a,$02
181f: c4 f5     mov   $f5,a
1821: e4 f4     mov   a,$f4
1823: c4 f4     mov   $f4,a
1825: c4 0e     mov   $0e,a
1827: e4 f4     mov   a,$f4
1829: 64 0e     cmp   a,$0e
182b: f0 fa     beq   $1827
182d: ab 01     inc   $01
182f: 78 08 01  cmp   $01,#$08
1832: d0 a8     bne   $17dc
1834: e4 f4     mov   a,$f4
1836: c4 f4     mov   $f4,a
1838: c4 0e     mov   $0e,a
183a: 6f        ret

183b: 3f 03 17  call  $1703
183e: e4 0f     mov   a,$0f
1840: 2d        push  a
1841: 9f        xcn   a
1842: 2d        push  a
1843: fa 10 3d  mov   ($3d),($10)
1846: fa 11 3e  mov   ($3e),($11)
1849: 3f 03 17  call  $1703
184c: fa 0f 3f  mov   ($3f),($0f)
184f: fa 10 25  mov   ($25),($10)
1852: fa 11 24  mov   ($24),($11)
1855: 3f a2 14  call  $14a2
1858: 3f 03 17  call  $1703
185b: fa 0f 40  mov   ($40),($0f)
185e: fa 10 3a  mov   ($3a),($10)
1861: fa 11 39  mov   ($39),($11)
1864: cd 00     mov   x,#$00
1866: ee        pop   y
1867: cb f2     mov   $f2,y
1869: f4 39     mov   a,$39+x
186b: c4 f3     mov   $f3,a
186d: fc        inc   y
186e: 3d        inc   x
186f: c8 08     cmp   x,#$08
1871: d0 f4     bne   $1867
1873: ce        pop   x
1874: f5 91 15  mov   a,$1591+x
1877: 8f 4c f2  mov   $f2,#$4c
187a: c4 f3     mov   $f3,a
187c: 6f        ret

187d: 3f 03 17  call  $1703
1880: e4 0f     mov   a,$0f
1882: 5d        mov   x,a
1883: 9f        xcn   a
1884: 60        clrc
1885: 88 05     adc   a,#$05
1887: c4 f2     mov   $f2,a
1889: 8f 00 f3  mov   $f3,#$00
188c: 6f        ret

188d: e4 f4     mov   a,$f4
188f: 64 0e     cmp   a,$0e
1891: f0 fa     beq   $188d
1893: f8 f5     mov   x,$f5
1895: f5 00 1f  mov   a,$1f00+x
1898: c4 f6     mov   $f6,a
189a: f5 00 20  mov   a,$2000+x
189d: c4 f7     mov   $f7,a
189f: e4 f4     mov   a,$f4
18a1: c4 f4     mov   $f4,a
18a3: c4 0e     mov   $0e,a
18a5: 3f 03 17  call  $1703
18a8: 6f        ret
