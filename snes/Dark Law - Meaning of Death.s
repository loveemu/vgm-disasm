0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: 3f d6 0b  call  $0bd6
0807: e8 01     mov   a,#$01
0809: c4 30     mov   $30,a
080b: c5 f4 00  mov   $00f4,a
080e: e8 02     mov   a,#$02
0810: c4 32     mov   $32,a
0812: c5 f5 00  mov   $00f5,a
0815: e8 03     mov   a,#$03
0817: c4 34     mov   $34,a
0819: c5 f6 00  mov   $00f6,a
081c: e8 00     mov   a,#$00
081e: 9c        dec   a
081f: d0 fd     bne   $081e
0821: e5 f7 00  mov   a,$00f7
0824: ec fd 00  mov   y,$00fd
0827: f0 fb     beq   $0824
0829: 3f 0d 0d  call  $0d0d
082c: 3f 42 08  call  $0842
082f: e5 0e 00  mov   a,$000e
0832: 28 02     and   a,#$02
0834: d0 06     bne   $083c
0836: 3f 15 0e  call  $0e15
0839: 3f 4c 1b  call  $1b4c
083c: 3f 3b 0d  call  $0d3b
083f: 5f 21 08  jmp   $0821

0842: e4 2f     mov   a,$2f
0844: 3f 48 08  call  $0848
0847: 6f        ret

0848: 28 0f     and   a,#$0f
084a: f0 13     beq   $085f
084c: 68 01     cmp   a,#$01
084e: f0 0f     beq   $085f
0850: 68 02     cmp   a,#$02
0852: f0 0b     beq   $085f
0854: 1c        asl   a
0855: 5d        mov   x,a
0856: e8 ff     mov   a,#$ff
0858: c4 30     mov   $30,a
085a: 1f 68 08  jmp   ($0868+x)

085d: e4 2f     mov   a,$2f
085f: 1c        asl   a
0860: 5d        mov   x,a
0861: e8 00     mov   a,#$00
0863: c4 30     mov   $30,a
0865: 1f 68 08  jmp   ($0868+x)

0868: 86        adc   a,(x)
0869: 08 87     or    a,#$87
086b: 08 98     or    a,#$98
086d: 0a a7 0b  or1   c,$0ba7,0
0870: 34 0b     and   a,$0b+x
0872: 3c        rol   a
0873: 0b 48     asl   $48
0875: 0b 58     asl   $58
0877: 0b 87     asl   $87
0879: 0b ab     asl   $ab
087b: 0b c0     asl   $c0
087d: 0b c7     asl   $c7
087f: 0b 68     asl   $68
0881: 0b ce     asl   $ce
0883: 0b 86     asl   $86
0885: 08 6f     or    a,#$6f
0887: 3f 3d 1a  call  $1a3d
088a: 3f 4c 1b  call  $1b4c
088d: e5 f5 00  mov   a,$00f5
0890: 65 f5 00  cmp   a,$00f5
0893: d0 f8     bne   $088d
0895: c4 0d     mov   $0d,a
0897: e5 f7 00  mov   a,$00f7
089a: 65 f7 00  cmp   a,$00f7
089d: d0 f8     bne   $0897
089f: bc        inc   a
08a0: c5 f7 00  mov   $00f7,a
08a3: bc        inc   a
08a4: c4 02     mov   $02,a
08a6: e8 02     mov   a,#$02
08a8: c5 f4 00  mov   $00f4,a
08ab: e8 03     mov   a,#$03
08ad: c5 f5 00  mov   $00f5,a
08b0: e8 04     mov   a,#$04
08b2: c5 f6 00  mov   $00f6,a
08b5: e8 00     mov   a,#$00
08b7: 9c        dec   a
08b8: d0 fd     bne   $08b7
08ba: e8 00     mov   a,#$00
08bc: c4 74     mov   $74,a
08be: c5 f6 00  mov   $00f6,a
08c1: e4 02     mov   a,$02
08c3: 9c        dec   a
08c4: c5 f4 00  mov   $00f4,a
08c7: e8 a1     mov   a,#$a1
08c9: c5 f5 00  mov   $00f5,a
08cc: 3f 69 09  call  $0969
08cf: c4 0b     mov   $0b,a
08d1: e8 a2     mov   a,#$a2
08d3: c5 f5 00  mov   $00f5,a
08d6: 3f 69 09  call  $0969
08d9: c4 09     mov   $09,a
08db: e4 0b     mov   a,$0b
08dd: d0 0c     bne   $08eb
08df: e4 09     mov   a,$09
08e1: c4 10     mov   $10,a
08e3: 8d 5d     mov   y,#$5d
08e5: cc f2 00  mov   $00f2,y
08e8: c5 f3 00  mov   $00f3,a
08eb: e8 a3     mov   a,#$a3
08ed: c5 f5 00  mov   $00f5,a
08f0: 3f 69 09  call  $0969
08f3: c4 0c     mov   $0c,a
08f5: e8 a4     mov   a,#$a4
08f7: c5 f5 00  mov   $00f5,a
08fa: 3f e9 09  call  $09e9
08fd: e8 a5     mov   a,#$a5
08ff: c5 f5 00  mov   $00f5,a
0902: 3f 96 09  call  $0996
0905: e8 a6     mov   a,#$a6
0907: c5 f5 00  mov   $00f5,a
090a: 3f 69 09  call  $0969
090d: c4 01     mov   $01,a
090f: e8 a7     mov   a,#$a7
0911: c5 f5 00  mov   $00f5,a
0914: 3f 69 09  call  $0969
0917: c4 00     mov   $00,a
0919: e8 a8     mov   a,#$a8
091b: c5 f5 00  mov   $00f5,a
091e: 3f 0a 0b  call  $0b0a
0921: e8 a9     mov   a,#$a9
0923: c5 f5 00  mov   $00f5,a
0926: 3f bc 09  call  $09bc
0929: e8 aa     mov   a,#$aa
092b: c5 f5 00  mov   $00f5,a
092e: 3f 69 09  call  $0969
0931: c4 01     mov   $01,a
0933: e8 ab     mov   a,#$ab
0935: c5 f5 00  mov   $00f5,a
0938: 3f 69 09  call  $0969
093b: c4 00     mov   $00,a
093d: e8 ac     mov   a,#$ac
093f: c5 f5 00  mov   $00f5,a
0942: 3f 0a 0b  call  $0b0a
0945: e8 ad     mov   a,#$ad
0947: c5 f5 00  mov   $00f5,a
094a: e4 74     mov   a,$74
094c: d0 15     bne   $0963
094e: e8 01     mov   a,#$01
0950: c5 f4 00  mov   $00f4,a
0953: e8 02     mov   a,#$02
0955: c5 f5 00  mov   $00f5,a
0958: e8 03     mov   a,#$03
095a: c5 f6 00  mov   $00f6,a
095d: e8 00     mov   a,#$00
095f: 9c        dec   a
0960: d0 fd     bne   $095f
0962: 6f        ret

0963: e8 ff     mov   a,#$ff
0965: c5 f6 00  mov   $00f6,a
0968: 6f        ret

0969: e4 02     mov   a,$02
096b: 9c        dec   a
096c: c5 f4 00  mov   $00f4,a
096f: e5 f4 00  mov   a,$00f4
0972: e5 f4 00  mov   a,$00f4
0975: 64 02     cmp   a,$02
0977: d0 f6     bne   $096f
0979: e5 f6 00  mov   a,$00f6
097c: e5 f6 00  mov   a,$00f6
097f: 64 02     cmp   a,$02
0981: d0 ec     bne   $096f
0983: e5 f5 00  mov   a,$00f5
0986: 65 f5 00  cmp   a,$00f5
0989: d0 f8     bne   $0983
098b: 2d        push  a
098c: e4 02     mov   a,$02
098e: c5 f4 00  mov   $00f4,a
0991: ab 02     inc   $02
0993: ae        pop   a
0994: 6f        ret

0995: 6f        ret

0996: e4 0f     mov   a,$0f
0998: 60        clrc
0999: 88 78     adc   a,#$78
099b: c4 03     mov   $03,a
099d: e4 10     mov   a,$10
099f: 88 00     adc   a,#$00
09a1: c4 04     mov   $04,a
09a3: e4 0d     mov   a,$0d
09a5: bc        inc   a
09a6: c4 08     mov   $08,a
09a8: 8b 08     dec   $08
09aa: f0 0f     beq   $09bb
09ac: e4 03     mov   a,$03
09ae: 60        clrc
09af: 88 18     adc   a,#$18
09b1: c4 03     mov   $03,a
09b3: e4 04     mov   a,$04
09b5: 88 00     adc   a,#$00
09b7: c4 04     mov   $04,a
09b9: 2f ed     bra   $09a8
09bb: 6f        ret

09bc: e4 0b     mov   a,$0b
09be: f0 1b     beq   $09db
09c0: e4 0d     mov   a,$0d
09c2: 1c        asl   a
09c3: 1c        asl   a
09c4: 60        clrc
09c5: 84 0f     adc   a,$0f
09c7: c4 09     mov   $09,a
09c9: e4 10     mov   a,$10
09cb: 88 00     adc   a,#$00
09cd: c4 0a     mov   $0a,a
09cf: 8d 00     mov   y,#$00
09d1: f7 09     mov   a,($09)+y
09d3: c4 03     mov   $03,a
09d5: fc        inc   y
09d6: f7 09     mov   a,($09)+y
09d8: c4 04     mov   $04,a
09da: 6f        ret

09db: e4 0f     mov   a,$0f
09dd: 60        clrc
09de: 88 48     adc   a,#$48
09e0: c4 03     mov   $03,a
09e2: e4 10     mov   a,$10
09e4: 88 03     adc   a,#$03
09e6: c4 04     mov   $04,a
09e8: 6f        ret

09e9: e4 74     mov   a,$74
09eb: f0 03     beq   $09f0
09ed: 5f 97 0a  jmp   $0a97

09f0: 3f bc 09  call  $09bc
09f3: e4 03     mov   a,$03
09f5: c4 05     mov   $05,a
09f7: e4 04     mov   a,$04
09f9: c4 06     mov   $06,a
09fb: e4 0c     mov   a,$0c
09fd: c4 00     mov   $00,a
09ff: e4 0d     mov   a,$0d
0a01: 1c        asl   a
0a02: 1c        asl   a
0a03: 60        clrc
0a04: 84 0f     adc   a,$0f
0a06: fd        mov   y,a
0a07: e4 10     mov   a,$10
0a09: 88 00     adc   a,#$00
0a0b: c4 04     mov   $04,a
0a0d: e8 00     mov   a,#$00
0a0f: c4 03     mov   $03,a
0a11: 3f 69 09  call  $0969
0a14: c4 07     mov   $07,a
0a16: 3f 69 09  call  $0969
0a19: 2d        push  a
0a1a: e4 74     mov   a,$74
0a1c: d0 78     bne   $0a96
0a1e: ae        pop   a
0a1f: 60        clrc
0a20: 84 05     adc   a,$05
0a22: d7 03     mov   ($03)+y,a
0a24: c4 09     mov   $09,a
0a26: e4 07     mov   a,$07
0a28: 84 06     adc   a,$06
0a2a: fc        inc   y
0a2b: d7 03     mov   ($03)+y,a
0a2d: c4 0a     mov   $0a,a
0a2f: fc        inc   y
0a30: 3f 69 09  call  $0969
0a33: c4 07     mov   $07,a
0a35: 3f 69 09  call  $0969
0a38: 2d        push  a
0a39: e4 74     mov   a,$74
0a3b: d0 59     bne   $0a96
0a3d: ae        pop   a
0a3e: 60        clrc
0a3f: 84 09     adc   a,$09
0a41: d7 03     mov   ($03)+y,a
0a43: e4 07     mov   a,$07
0a45: 84 0a     adc   a,$0a
0a47: fc        inc   y
0a48: d7 03     mov   ($03)+y,a
0a4a: fc        inc   y
0a4b: d0 02     bne   $0a4f
0a4d: ab 04     inc   $04
0a4f: 8b 00     dec   $00
0a51: d0 be     bne   $0a11
0a53: 3f 69 09  call  $0969
0a56: c4 0a     mov   $0a,a
0a58: 3f 69 09  call  $0969
0a5b: 2d        push  a
0a5c: e4 74     mov   a,$74
0a5e: d0 36     bne   $0a96
0a60: ae        pop   a
0a61: 60        clrc
0a62: 84 05     adc   a,$05
0a64: c4 09     mov   $09,a
0a66: e4 0a     mov   a,$0a
0a68: 84 06     adc   a,$06
0a6a: c4 0a     mov   $0a,a
0a6c: e8 1e     mov   a,#$1e
0a6e: 80        setc
0a6f: a4 0d     sbc   a,$0d
0a71: 80        setc
0a72: a4 0c     sbc   a,$0c
0a74: bc        inc   a
0a75: c4 00     mov   $00,a
0a77: 8b 00     dec   $00
0a79: f0 1a     beq   $0a95
0a7b: e4 09     mov   a,$09
0a7d: d7 03     mov   ($03)+y,a
0a7f: fc        inc   y
0a80: e4 0a     mov   a,$0a
0a82: d7 03     mov   ($03)+y,a
0a84: fc        inc   y
0a85: e4 09     mov   a,$09
0a87: d7 03     mov   ($03)+y,a
0a89: fc        inc   y
0a8a: e4 0a     mov   a,$0a
0a8c: d7 03     mov   ($03)+y,a
0a8e: fc        inc   y
0a8f: d0 e6     bne   $0a77
0a91: ab 04     inc   $04
0a93: 2f e2     bra   $0a77
0a95: 6f        ret

0a96: ae        pop   a
0a97: 6f        ret

0a98: 3f 3d 1a  call  $1a3d
0a9b: 3f 4c 1b  call  $1b4c
0a9e: e5 f5 00  mov   a,$00f5
0aa1: 65 f5 00  cmp   a,$00f5
0aa4: d0 f8     bne   $0a9e
0aa6: c4 00     mov   $00,a
0aa8: e5 f6 00  mov   a,$00f6
0aab: 65 f6 00  cmp   a,$00f6
0aae: d0 f8     bne   $0aa8
0ab0: c4 01     mov   $01,a
0ab2: e5 f7 00  mov   a,$00f7
0ab5: 65 f7 00  cmp   a,$00f7
0ab8: d0 f8     bne   $0ab2
0aba: bc        inc   a
0abb: c5 f7 00  mov   $00f7,a
0abe: bc        inc   a
0abf: c4 02     mov   $02,a
0ac1: e8 02     mov   a,#$02
0ac3: c5 f4 00  mov   $00f4,a
0ac6: e8 03     mov   a,#$03
0ac8: c5 f5 00  mov   $00f5,a
0acb: e8 04     mov   a,#$04
0acd: c5 f6 00  mov   $00f6,a
0ad0: e8 00     mov   a,#$00
0ad2: 9c        dec   a
0ad3: d0 fd     bne   $0ad2
0ad5: e8 00     mov   a,#$00
0ad7: c4 74     mov   $74,a
0ad9: c5 f6 00  mov   $00f6,a
0adc: e8 00     mov   a,#$00
0ade: c4 03     mov   $03,a
0ae0: e8 20     mov   a,#$20
0ae2: c4 04     mov   $04,a
0ae4: e4 02     mov   a,$02
0ae6: 9c        dec   a
0ae7: c5 f4 00  mov   $00f4,a
0aea: 3f 0a 0b  call  $0b0a
0aed: e4 74     mov   a,$74
0aef: d0 15     bne   $0b06
0af1: e8 01     mov   a,#$01
0af3: c5 f4 00  mov   $00f4,a
0af6: e8 02     mov   a,#$02
0af8: c5 f5 00  mov   $00f5,a
0afb: e8 03     mov   a,#$03
0afd: c5 f6 00  mov   $00f6,a
0b00: e8 00     mov   a,#$00
0b02: 9c        dec   a
0b03: d0 fd     bne   $0b02
0b05: 6f        ret

0b06: c5 f6 00  mov   $00f6,a
0b09: 6f        ret

0b0a: e4 74     mov   a,$74
0b0c: f0 01     beq   $0b0f
0b0e: 6f        ret

0b0f: eb 03     mov   y,$03
0b11: e8 00     mov   a,#$00
0b13: c4 03     mov   $03,a
0b15: 3f 69 09  call  $0969
0b18: d7 03     mov   ($03)+y,a
0b1a: e4 74     mov   a,$74
0b1c: d0 15     bne   $0b33
0b1e: fc        inc   y
0b1f: d0 02     bne   $0b23
0b21: ab 04     inc   $04
0b23: e4 00     mov   a,$00
0b25: d0 02     bne   $0b29
0b27: 8b 01     dec   $01
0b29: 8b 00     dec   $00
0b2b: e4 00     mov   a,$00
0b2d: d0 e6     bne   $0b15
0b2f: e4 01     mov   a,$01
0b31: d0 e2     bne   $0b15
0b33: 6f        ret

0b34: e4 31     mov   a,$31
0b36: c4 00     mov   $00,a
0b38: 3f 4b 0d  call  $0d4b
0b3b: 6f        ret

0b3c: e4 31     mov   a,$31
0b3e: c4 00     mov   $00,a
0b40: e4 33     mov   a,$33
0b42: c4 07     mov   $07,a
0b44: 3f 66 14  call  $1466
0b47: 6f        ret

0b48: e8 02     mov   a,#$02
0b4a: c4 00     mov   $00,a
0b4c: e4 31     mov   a,$31
0b4e: c4 06     mov   $06,a
0b50: e8 01     mov   a,#$01
0b52: c4 07     mov   $07,a
0b54: 3f f7 14  call  $14f7
0b57: 6f        ret

0b58: e8 02     mov   a,#$02
0b5a: c4 00     mov   $00,a
0b5c: e4 31     mov   a,$31
0b5e: c4 06     mov   $06,a
0b60: e8 01     mov   a,#$01
0b62: c4 07     mov   $07,a
0b64: 3f c2 14  call  $14c2
0b67: 6f        ret

0b68: e4 31     mov   a,$31
0b6a: c4 00     mov   $00,a
0b6c: e4 33     mov   a,$33
0b6e: c4 01     mov   $01,a
0b70: 4b 01     lsr   $01
0b72: 6b 00     ror   $00
0b74: 4b 01     lsr   $01
0b76: 6b 00     ror   $00
0b78: 4b 01     lsr   $01
0b7a: 6b 00     ror   $00
0b7c: e4 00     mov   a,$00
0b7e: c5 9c 02  mov   $029c,a
0b81: e4 01     mov   a,$01
0b83: c5 a4 02  mov   $02a4,a
0b86: 6f        ret

0b87: e4 31     mov   a,$31
0b89: 28 07     and   a,#$07
0b8b: c4 07     mov   $07,a
0b8d: e4 31     mov   a,$31
0b8f: c4 00     mov   $00,a
0b91: e4 33     mov   a,$33
0b93: c4 01     mov   $01,a
0b95: 4b 01     lsr   $01
0b97: 6b 00     ror   $00
0b99: 4b 01     lsr   $01
0b9b: 6b 00     ror   $00
0b9d: 4b 01     lsr   $01
0b9f: 6b 00     ror   $00
0ba1: e8 00     mov   a,#$00
0ba3: 3f 2c 15  call  $152c
0ba6: 6f        ret

0ba7: 3f 3d 1a  call  $1a3d
0baa: 6f        ret

0bab: e4 31     mov   a,$31
0bad: 48 ff     eor   a,#$ff
0baf: bc        inc   a
0bb0: c5 65 02  mov   $0265,a
0bb3: e5 60 02  mov   a,$0260
0bb6: c5 66 02  mov   $0266,a
0bb9: e5 62 02  mov   a,$0262
0bbc: c5 68 02  mov   $0268,a
0bbf: 6f        ret

0bc0: e4 0e     mov   a,$0e
0bc2: 08 01     or    a,#$01
0bc4: c4 0e     mov   $0e,a
0bc6: 6f        ret

0bc7: e4 0e     mov   a,$0e
0bc9: 28 fe     and   a,#$fe
0bcb: c4 0e     mov   $0e,a
0bcd: 6f        ret

0bce: e4 31     mov   a,$31
0bd0: c4 00     mov   $00,a
0bd2: 3f 68 15  call  $1568
0bd5: 6f        ret

0bd6: e8 00     mov   a,#$00
0bd8: 5d        mov   x,a
0bd9: af        mov   (x)+,a
0bda: c8 e0     cmp   x,#$e0
0bdc: d0 fb     bne   $0bd9
0bde: e8 30     mov   a,#$30
0be0: c5 f1 00  mov   $00f1,a
0be3: 8d 0c     mov   y,#$0c
0be5: cc f2 00  mov   $00f2,y
0be8: e8 7f     mov   a,#$7f
0bea: c5 f3 00  mov   $00f3,a
0bed: 8d 1c     mov   y,#$1c
0bef: cc f2 00  mov   $00f2,y
0bf2: e8 7f     mov   a,#$7f
0bf4: c5 f3 00  mov   $00f3,a
0bf7: 8d 2c     mov   y,#$2c
0bf9: cc f2 00  mov   $00f2,y
0bfc: e8 00     mov   a,#$00
0bfe: c5 f3 00  mov   $00f3,a
0c01: 8d 3c     mov   y,#$3c
0c03: cc f2 00  mov   $00f2,y
0c06: e8 00     mov   a,#$00
0c08: c5 f3 00  mov   $00f3,a
0c0b: 8d 2d     mov   y,#$2d
0c0d: cc f2 00  mov   $00f2,y
0c10: e8 00     mov   a,#$00
0c12: c5 f3 00  mov   $00f3,a
0c15: 8d 3d     mov   y,#$3d
0c17: cc f2 00  mov   $00f2,y
0c1a: e8 00     mov   a,#$00
0c1c: c5 f3 00  mov   $00f3,a
0c1f: 8d 5c     mov   y,#$5c
0c21: cc f2 00  mov   $00f2,y
0c24: e8 ff     mov   a,#$ff
0c26: c5 f3 00  mov   $00f3,a
0c29: e8 00     mov   a,#$00
0c2b: c4 0f     mov   $0f,a
0c2d: e8 60     mov   a,#$60
0c2f: c4 10     mov   $10,a
0c31: 8d 5d     mov   y,#$5d
0c33: cc f2 00  mov   $00f2,y
0c36: c5 f3 00  mov   $00f3,a
0c39: 8d 6d     mov   y,#$6d
0c3b: cc f2 00  mov   $00f2,y
0c3e: e8 c0     mov   a,#$c0
0c40: c5 f3 00  mov   $00f3,a
0c43: e8 20     mov   a,#$20
0c45: c4 17     mov   $17,a
0c47: 8d 6c     mov   y,#$6c
0c49: cc f2 00  mov   $00f2,y
0c4c: c5 f3 00  mov   $00f3,a
0c4f: e8 01     mov   a,#$01
0c51: c4 0e     mov   $0e,a
0c53: e8 00     mov   a,#$00
0c55: c4 00     mov   $00,a
0c57: 5d        mov   x,a
0c58: e4 00     mov   a,$00
0c5a: 8d 20     mov   y,#$20
0c5c: cf        mul   ya
0c5d: 60        clrc
0c5e: 88 15     adc   a,#$15
0c60: d4 49     mov   $49+x,a
0c62: dd        mov   a,y
0c63: 88 04     adc   a,#$04
0c65: d4 4a     mov   $4a+x,a
0c67: 3d        inc   x
0c68: 3d        inc   x
0c69: ab 00     inc   $00
0c6b: e4 00     mov   a,$00
0c6d: 68 08     cmp   a,#$08
0c6f: d0 e7     bne   $0c58
0c71: cd 00     mov   x,#$00
0c73: e8 00     mov   a,#$00
0c75: d4 63     mov   $63+x,a
0c77: d4 6b     mov   $6b+x,a
0c79: d5 75 03  mov   $0375+x,a
0c7c: e8 ff     mov   a,#$ff
0c7e: d5 58 02  mov   $0258+x,a
0c81: e8 80     mov   a,#$80
0c83: d5 50 02  mov   $0250+x,a
0c86: e8 00     mov   a,#$00
0c88: d5 6d 02  mov   $026d+x,a
0c8b: 3d        inc   x
0c8c: c8 08     cmp   x,#$08
0c8e: d0 e3     bne   $0c73
0c90: cd 00     mov   x,#$00
0c92: e8 00     mov   a,#$00
0c94: d5 a5 02  mov   $02a5+x,a
0c97: d5 e5 02  mov   $02e5+x,a
0c9a: d5 25 03  mov   $0325+x,a
0c9d: 3d        inc   x
0c9e: c8 08     cmp   x,#$08
0ca0: d0 f0     bne   $0c92
0ca2: e8 80     mov   a,#$80
0ca4: c5 60 02  mov   $0260,a
0ca7: c5 6b 02  mov   $026b,a
0caa: c4 00     mov   $00,a
0cac: 3f 75 18  call  $1875
0caf: e8 00     mov   a,#$00
0cb1: c5 61 02  mov   $0261,a
0cb4: e8 ff     mov   a,#$ff
0cb6: c5 62 02  mov   $0262,a
0cb9: c5 6c 02  mov   $026c,a
0cbc: e8 7f     mov   a,#$7f
0cbe: c4 13     mov   $13,a
0cc0: c4 14     mov   $14,a
0cc2: e8 00     mov   a,#$00
0cc4: c4 1c     mov   $1c,a
0cc6: c4 1d     mov   $1d,a
0cc8: e8 00     mov   a,#$00
0cca: c5 65 02  mov   $0265,a
0ccd: e8 0f     mov   a,#$0f
0ccf: c4 11     mov   $11,a
0cd1: e8 00     mov   a,#$00
0cd3: c4 12     mov   $12,a
0cd5: 3f d9 0c  call  $0cd9
0cd8: 6f        ret

0cd9: e8 00     mov   a,#$00
0cdb: c4 00     mov   $00,a
0cdd: e8 02     mov   a,#$02
0cdf: c4 01     mov   $01,a
0ce1: cd 00     mov   x,#$00
0ce3: 8d 00     mov   y,#$00
0ce5: f5 05 0d  mov   a,$0d05+x
0ce8: d7 00     mov   ($00)+y,a
0cea: fc        inc   y
0ceb: ad 08     cmp   y,#$08
0ced: d0 f6     bne   $0ce5
0cef: 3d        inc   x
0cf0: e4 00     mov   a,$00
0cf2: 60        clrc
0cf3: 88 08     adc   a,#$08
0cf5: c4 00     mov   $00,a
0cf7: e4 01     mov   a,$01
0cf9: 88 00     adc   a,#$00
0cfb: c4 01     mov   $01,a
0cfd: c8 08     cmp   x,#$08
0cff: d0 e2     bne   $0ce3
0d01: 3f f2 1b  call  $1bf2
0d04: 6f        ret

0d05: db $7f,$7f,$00,$04,$00,$00,$00,$7f

0d0d: e5 f4 00  mov   a,$00f4
0d10: 65 f4 00  cmp   a,$00f4
0d13: d0 f8     bne   $0d0d
0d15: c4 2f     mov   $2f,a
0d17: e5 f5 00  mov   a,$00f5
0d1a: 65 f5 00  cmp   a,$00f5
0d1d: d0 f8     bne   $0d17
0d1f: c4 31     mov   $31,a
0d21: e5 f6 00  mov   a,$00f6
0d24: 65 f6 00  cmp   a,$00f6
0d27: d0 f8     bne   $0d21
0d29: c4 33     mov   $33,a
0d2b: e5 f7 00  mov   a,$00f7
0d2e: 65 f7 00  cmp   a,$00f7
0d31: d0 f8     bne   $0d2b
0d33: c4 35     mov   $35,a
0d35: e4 35     mov   a,$35
0d37: c5 f7 00  mov   $00f7,a
0d3a: 6f        ret

0d3b: e4 30     mov   a,$30
0d3d: c5 f4 00  mov   $00f4,a
0d40: e4 32     mov   a,$32
0d42: c5 f5 00  mov   $00f5,a
0d45: e4 34     mov   a,$34
0d47: c5 f6 00  mov   $00f6,a
0d4a: 6f        ret

0d4b: e5 00 20  mov   a,$2000
0d4e: 60        clrc
0d4f: 88 00     adc   a,#$00
0d51: c4 01     mov   $01,a
0d53: e5 01 20  mov   a,$2001
0d56: 88 20     adc   a,#$20
0d58: c4 02     mov   $02,a
0d5a: e4 00     mov   a,$00
0d5c: 1c        asl   a
0d5d: fd        mov   y,a
0d5e: f7 01     mov   a,($01)+y
0d60: 60        clrc
0d61: 88 00     adc   a,#$00
0d63: c4 00     mov   $00,a
0d65: c4 03     mov   $03,a
0d67: fc        inc   y
0d68: f7 01     mov   a,($01)+y
0d6a: 88 20     adc   a,#$20
0d6c: c4 01     mov   $01,a
0d6e: c4 04     mov   $04,a
0d70: e8 00     mov   a,#$00
0d72: c4 07     mov   $07,a
0d74: 8d 00     mov   y,#$00
0d76: f7 00     mov   a,($00)+y
0d78: c4 05     mov   $05,a
0d7a: fc        inc   y
0d7b: f7 00     mov   a,($00)+y
0d7d: c4 06     mov   $06,a
0d7f: e4 01     mov   a,$01
0d81: 2d        push  a
0d82: e4 00     mov   a,$00
0d84: 2d        push  a
0d85: e4 03     mov   a,$03
0d87: 2d        push  a
0d88: e4 04     mov   a,$04
0d8a: 2d        push  a
0d8b: 3f a8 0d  call  $0da8
0d8e: ae        pop   a
0d8f: c4 04     mov   $04,a
0d91: ae        pop   a
0d92: c4 03     mov   $03,a
0d94: ae        pop   a
0d95: 60        clrc
0d96: 88 02     adc   a,#$02
0d98: c4 00     mov   $00,a
0d9a: ae        pop   a
0d9b: 88 00     adc   a,#$00
0d9d: c4 01     mov   $01,a
0d9f: ab 07     inc   $07
0da1: e4 07     mov   a,$07
0da3: 68 08     cmp   a,#$08
0da5: d0 cd     bne   $0d74
0da7: 6f        ret

; play song
0da8: e4 05     mov   a,$05
0daa: 68 00     cmp   a,#$00
0dac: d0 06     bne   $0db4
0dae: e4 06     mov   a,$06
0db0: 68 00     cmp   a,#$00
0db2: f0 60     beq   $0e14
0db4: f8 07     mov   x,$07
0db6: e4 05     mov   a,$05
0db8: 60        clrc
0db9: 88 00     adc   a,#$00		; base address pointer lo
0dbb: c4 05     mov   $05,a
0dbd: e4 03     mov   a,$03
0dbf: d5 0d 04  mov   $040d+x,a		; set track pointer lo to 0x040d
0dc2: e4 06     mov   a,$06
0dc4: 88 20     adc   a,#$20		; base address pointer hi
0dc6: c4 06     mov   $06,a
0dc8: e4 04     mov   a,$04
0dca: d5 05 04  mov   $0405+x,a		; set track pointer hi to 0x0405
0dcd: f8 07     mov   x,$07
0dcf: e8 00     mov   a,#$00
0dd1: d5 40 02  mov   $0240+x,a
0dd4: d4 63     mov   $63+x,a
0dd6: d4 6b     mov   $6b+x,a
0dd8: e8 ff     mov   a,#$ff
0dda: d5 58 02  mov   $0258+x,a
0ddd: e8 80     mov   a,#$80
0ddf: d5 50 02  mov   $0250+x,a
0de2: e8 00     mov   a,#$00
0de4: c5 65 02  mov   $0265,a
0de7: e8 00     mov   a,#$00
0de9: e8 08     mov   a,#$08
0deb: d5 6d 02  mov   $026d+x,a
0dee: e8 00     mov   a,#$00
0df0: d5 f5 03  mov   $03f5+x,a
0df3: e8 00     mov   a,#$00
0df5: d5 fd 03  mov   $03fd+x,a
0df8: f8 07     mov   x,$07
0dfa: e8 00     mov   a,#$00
0dfc: d4 59     mov   $59+x,a
0dfe: e4 07     mov   a,$07
0e00: 1c        asl   a
0e01: 5d        mov   x,a
0e02: e4 05     mov   a,$05
0e04: d4 39     mov   $39+x,a
0e06: e4 06     mov   a,$06
0e08: d4 3a     mov   $3a+x,a
0e0a: e4 07     mov   a,$07
0e0c: 1c        asl   a
0e0d: 1c        asl   a
0e0e: 1c        asl   a
0e0f: c4 06     mov   $06,a
0e11: 3f 5d 0e  call  $0e5d
0e14: 6f        ret

0e15: e8 00     mov   a,#$00
0e17: 2d        push  a
0e18: c4 07     mov   $07,a
0e1a: 1c        asl   a
0e1b: 1c        asl   a
0e1c: 1c        asl   a
0e1d: c4 06     mov   $06,a
0e1f: 3f 3b 0e  call  $0e3b
0e22: ae        pop   a
0e23: bc        inc   a
0e24: 68 08     cmp   a,#$08
0e26: d0 ef     bne   $0e17
0e28: 3f a2 17  call  $17a2
0e2b: 6f        ret

0e2c: 6f        ret

0e2d: f5 6d 02  mov   a,$026d+x
0e30: 28 18     and   a,#$18
0e32: d0 06     bne   $0e3a
0e34: 3f 01 12  call  $1201
0e37: 3f f3 13  call  $13f3
0e3a: 6f        ret

0e3b: f8 07     mov   x,$07
0e3d: f4 63     mov   a,$63+x
0e3f: d0 06     bne   $0e47
0e41: f4 6b     mov   a,$6b+x
0e43: d0 02     bne   $0e47
0e45: 2f e5     bra   $0e2c
0e47: f4 63     mov   a,$63+x
0e49: 80        setc
0e4a: b5 48 02  sbc   a,$0248+x
0e4d: d4 63     mov   $63+x,a
0e4f: f4 6b     mov   a,$6b+x
0e51: a8 00     sbc   a,#$00
0e53: d4 6b     mov   $6b+x,a
0e55: 30 06     bmi   $0e5d
0e57: d0 d4     bne   $0e2d
0e59: f4 63     mov   a,$63+x
0e5b: d0 d0     bne   $0e2d
0e5d: e4 07     mov   a,$07
0e5f: 1c        asl   a
0e60: 5d        mov   x,a
0e61: f4 39     mov   a,$39+x
0e63: c4 37     mov   $37,a
0e65: f4 3a     mov   a,$3a+x
0e67: c4 38     mov   $38,a
0e69: 8d 00     mov   y,#$00
0e6b: f7 37     mov   a,($37)+y
0e6d: 68 c1     cmp   a,#$c1
0e6f: f0 0d     beq   $0e7e
0e71: 68 ff     cmp   a,#$ff
0e73: f0 09     beq   $0e7e
0e75: 68 c1     cmp   a,#$c1		; dispatch vcmd
0e77: 90 0d     bcc   $0e86
0e79: 3f 7e 0e  call  $0e7e
0e7c: 2f eb     bra   $0e69
0e7e: 80        setc
0e7f: a8 c1     sbc   a,#$c1
0e81: 1c        asl   a
0e82: 5d        mov   x,a
0e83: 1f aa 0f  jmp   ($0faa+x)

0e86: 2d        push  a
0e87: f8 07     mov   x,$07
0e89: f5 6d 02  mov   a,$026d+x
0e8c: 28 f7     and   a,#$f7
0e8e: d5 6d 02  mov   $026d+x,a
0e91: ae        pop   a
0e92: c4 00     mov   $00,a
0e94: 8d 01     mov   y,#$01
0e96: f7 37     mov   a,($37)+y
0e98: c4 01     mov   $01,a
0e9a: f8 07     mov   x,$07
0e9c: f5 40 02  mov   a,$0240+x
0e9f: 60        clrc
0ea0: 84 00     adc   a,$00
0ea2: 8d 00     mov   y,#$00
0ea4: cd 0c     mov   x,#$0c
0ea6: 9e        div   ya,x
0ea7: c4 00     mov   $00,a
0ea9: dd        mov   a,y
0eaa: 1c        asl   a
0eab: c4 02     mov   $02,a
0ead: e4 01     mov   a,$01
0eaf: 9f        xcn   a
0eb0: 5c        lsr   a
0eb1: 28 07     and   a,#$07
0eb3: 60        clrc
0eb4: 84 06     adc   a,$06
0eb6: fd        mov   y,a
0eb7: f6 a5 02  mov   a,$02a5+y
0eba: 8d 18     mov   y,#$18
0ebc: cf        mul   ya
0ebd: c4 03     mov   $03,a
0ebf: cb 04     mov   $04,y
0ec1: e4 03     mov   a,$03
0ec3: 60        clrc
0ec4: 88 78     adc   a,#$78
0ec6: c4 03     mov   $03,a
0ec8: e4 04     mov   a,$04
0eca: 84 10     adc   a,$10
0ecc: c4 04     mov   $04,a
0ece: e4 03     mov   a,$03
0ed0: 60        clrc
0ed1: 84 02     adc   a,$02
0ed3: c4 03     mov   $03,a
0ed5: e4 04     mov   a,$04
0ed7: 88 00     adc   a,#$00
0ed9: c4 04     mov   $04,a
0edb: 8d 00     mov   y,#$00
0edd: f7 03     mov   a,($03)+y
0edf: c4 2a     mov   $2a,a
0ee1: fc        inc   y
0ee2: f7 03     mov   a,($03)+y
0ee4: c4 29     mov   $29,a
0ee6: e4 00     mov   a,$00
0ee8: 68 04     cmp   a,#$04
0eea: b0 0f     bcs   $0efb
0eec: 80        setc
0eed: a8 04     sbc   a,#$04
0eef: 48 ff     eor   a,#$ff
0ef1: bc        inc   a
0ef2: 4b 2a     lsr   $2a
0ef4: 6b 29     ror   $29
0ef6: 9c        dec   a
0ef7: d0 f9     bne   $0ef2
0ef9: 2f 08     bra   $0f03
0efb: 80        setc
0efc: a8 03     sbc   a,#$03
0efe: c4 27     mov   $27,a
0f00: 3f 05 1b  call  $1b05
0f03: f8 07     mov   x,$07
0f05: f5 6d 02  mov   a,$026d+x
0f08: 28 04     and   a,#$04
0f0a: d0 0a     bne   $0f16
0f0c: e4 29     mov   a,$29
0f0e: d5 75 02  mov   $0275+x,a
0f11: e4 2a     mov   a,$2a
0f13: d5 7d 02  mov   $027d+x,a
0f16: f5 6d 02  mov   a,$026d+x
0f19: 28 fb     and   a,#$fb
0f1b: d5 6d 02  mov   $026d+x,a
0f1e: e4 01     mov   a,$01
0f20: c4 00     mov   $00,a
0f22: 28 1f     and   a,#$1f
0f24: bc        inc   a
0f25: 1c        asl   a
0f26: 1c        asl   a
0f27: c4 29     mov   $29,a
0f29: e8 00     mov   a,#$00
0f2b: c4 2a     mov   $2a,a
0f2d: e8 20     mov   a,#$20
0f2f: c4 27     mov   $27,a
0f31: 3f 05 1b  call  $1b05
0f34: f4 63     mov   a,$63+x
0f36: 60        clrc
0f37: 84 29     adc   a,$29
0f39: d4 63     mov   $63+x,a
0f3b: f4 6b     mov   a,$6b+x
0f3d: 84 2a     adc   a,$2a
0f3f: d4 6b     mov   $6b+x,a
0f41: e4 00     mov   a,$00
0f43: 9f        xcn   a
0f44: 5c        lsr   a
0f45: 28 07     and   a,#$07
0f47: 60        clrc
0f48: 84 06     adc   a,$06
0f4a: fd        mov   y,a
0f4b: f6 a5 02  mov   a,$02a5+y
0f4e: d5 20 02  mov   $0220+x,a
0f51: f8 07     mov   x,$07
0f53: f5 6d 02  mov   a,$026d+x
0f56: 28 02     and   a,#$02
0f58: d0 12     bne   $0f6c
0f5a: f6 e5 02  mov   a,$02e5+y
0f5d: 6d        push  y
0f5e: c4 00     mov   $00,a
0f60: 3f f6 10  call  $10f6
0f63: ee        pop   y
0f64: f6 25 03  mov   a,$0325+y
0f67: c4 00     mov   $00,a
0f69: 3f 3a 12  call  $123a
0f6c: f8 07     mov   x,$07
0f6e: f5 6d 02  mov   a,$026d+x
0f71: 28 fd     and   a,#$fd
0f73: d5 6d 02  mov   $026d+x,a
0f76: f8 07     mov   x,$07
0f78: f5 6d 02  mov   a,$026d+x
0f7b: 28 01     and   a,#$01
0f7d: d0 0f     bne   $0f8e
0f7f: f5 f5 03  mov   a,$03f5+x
0f82: d5 fd 03  mov   $03fd+x,a
0f85: e4 07     mov   a,$07
0f87: 3f fb 1a  call  $1afb
0f8a: 04 18     or    a,$18
0f8c: c4 18     mov   $18,a
0f8e: f8 07     mov   x,$07
0f90: f5 6d 02  mov   a,$026d+x
0f93: 28 fe     and   a,#$fe
0f95: d5 6d 02  mov   $026d+x,a
0f98: e8 02     mov   a,#$02
0f9a: 3f 9d 1a  call  $1a9d
0f9d: e4 07     mov   a,$07
0f9f: 1c        asl   a
0fa0: 5d        mov   x,a
0fa1: e4 37     mov   a,$37
0fa3: d4 39     mov   $39+x,a
0fa5: e4 38     mov   a,$38
0fa7: d4 3a     mov   $3a+x,a
0fa9: 6f        ret

; vcmd dispatch table
0faa: dw $1029 ; c1 - rest
0fac: dw $15e4 ; c2 - echo delay
0fae: dw $15d8 ; c3 - echo feedback
0fb0: dw $15f8 ; c4 - echo FIR - 1
0fb2: dw $1604 ; c5 - echo FIR - 2
0fb4: dw $1610 ; c6 - echo FIR - 3
0fb6: dw $161c ; c7 - echo FIR - 4
0fb8: dw $1628 ; c8 - echo FIR - 5
0fba: dw $1634 ; c9 - echo FIR - 6
0fbc: dw $1640 ; ca - echo FIR - 7
0fbe: dw $164c ; cb - echo FIR - 8
0fc0: dw $1658 ; cc - ASDR mode
0fc2: dw $1668 ; cd - gain env mode
0fc4: dw $1a2d ; ce - tie state
0fc6: dw $1678 ; cf - noise on
0fc8: dw $1687 ; d0 - noise off
0fca: dw $170b ; d1 - set instrument - 0
0fcc: dw $170f ; d2 - set instrument - 1
0fce: dw $1713 ; d3 - set instrument - 2
0fd0: dw $1717 ; d4 - set instrument - 3
0fd2: dw $171b ; d5 - set instrument - 4
0fd4: dw $171f ; d6 - set instrument - 5
0fd6: dw $1723 ; d7 - set instrument - 6
0fd8: dw $1727 ; d8 - set instrument - 7
0fda: dw $1749 ; d9 - write to instrument table - 0
0fdc: dw $174d ; da - write to instrument table - 1
0fde: dw $1751 ; db - write to instrument table - 2
0fe0: dw $1755 ; dc - write to instrument table - 3
0fe2: dw $1759 ; dd - write to instrument table - 4
0fe4: dw $175d ; de - write to instrument table - 5
0fe6: dw $1761 ; df - write to instrument table - 6
0fe8: dw $1765 ; e0 - write to instrument table - 7
0fea: dw $18d8 ; e1 - echo volume/pan
0fec: dw $1938 ; e2 - echo volume
0fee: dw $1698 ; e3 - echo on
0ff0: dw $16b1 ; e4 - echo off
0ff2: dw $16ce ; e5 - write to instrument table (2) - 0
0ff4: dw $16d2 ; e6 - write to instrument table (2) - 1
0ff6: dw $16d6 ; e7 - write to instrument table (2) - 2
0ff8: dw $16da ; e8 - write to instrument table (2) - 3
0ffa: dw $16de ; e9 - write to instrument table (2) - 4
0ffc: dw $16e2 ; ea - write to instrument table (2) - 5
0ffe: dw $16e6 ; eb - write to instrument table (2) - 6
1000: dw $16ea ; ec - write to instrument table (2) - 7
1002: dw $1863 ; ed - master volume/pan
1004: dw $18c1 ; ee - master volume
1006: dw $194f ; ef - pan
1008: dw $19d0 ; f0 - volume
100a: dw $1a8d ; f1 - note on delay
100c: dw $1028 ; f2 - nop
100e: dw $1028 ; f3 - nop
1010: dw $1028 ; f4 - nop
1012: dw $1065 ; f5 - song loop
1014: dw $1082 ; f6 - go to song loop
1016: dw $1a6b ; f7 - slur on
1018: dw $1a7d ; f8 - slur off
101a: dw $19e9 ; f9 - transpose
101c: dw $19f9 ; fa - tempo
101e: dw $1789 ; fb - master volume fade
1020: dw $10b8 ; fc - goto macro
1022: dw $109f ; fd - jump
1024: dw $10df ; fe - return from macro
1026: dw $10ed ; ff - end of channel

; vcmd f2/f3/f4 - nop
1028: 6f        ret

; vcmd c1 - rest
1029: e4 07     mov   a,$07
102b: 3f fb 1a  call  $1afb
102e: 04 19     or    a,$19
1030: c4 19     mov   $19,a
1032: f8 07     mov   x,$07
1034: 8d 01     mov   y,#$01
1036: f7 37     mov   a,($37)+y
1038: bc        inc   a
1039: 1c        asl   a
103a: 1c        asl   a
103b: c4 29     mov   $29,a
103d: e8 00     mov   a,#$00
103f: c4 2a     mov   $2a,a
1041: e8 20     mov   a,#$20
1043: c4 27     mov   $27,a
1045: 3f 05 1b  call  $1b05
1048: f4 63     mov   a,$63+x
104a: 60        clrc
104b: 84 29     adc   a,$29
104d: d4 63     mov   $63+x,a
104f: f4 6b     mov   a,$6b+x
1051: 84 2a     adc   a,$2a
1053: d4 6b     mov   $6b+x,a
1055: f5 6d 02  mov   a,$026d+x
1058: 08 08     or    a,#$08
105a: d5 6d 02  mov   $026d+x,a
105d: e8 02     mov   a,#$02
105f: 3f 9d 1a  call  $1a9d
1062: 5f 9d 0f  jmp   $0f9d

; vcmd f5 - song loop
1065: 8d 01     mov   y,#$01
1067: f7 37     mov   a,($37)+y
1069: c4 02     mov   $02,a
106b: e4 37     mov   a,$37
106d: 60        clrc
106e: 88 02     adc   a,#$02
1070: c4 37     mov   $37,a
1072: c4 00     mov   $00,a
1074: e4 38     mov   a,$38
1076: 88 00     adc   a,#$00
1078: c4 38     mov   $38,a
107a: c4 01     mov   $01,a
107c: e8 03     mov   a,#$03
107e: 3f ad 1a  call  $1aad
1081: 6f        ret

; vcmd f6 - go to song loop
1082: e8 03     mov   a,#$03
1084: 3f d8 1a  call  $1ad8
1087: 8b 02     dec   $02
1089: f0 0e     beq   $1099
108b: e4 00     mov   a,$00
108d: c4 37     mov   $37,a
108f: e4 01     mov   a,$01
1091: c4 38     mov   $38,a
1093: e8 03     mov   a,#$03
1095: 3f ad 1a  call  $1aad
1098: 6f        ret

1099: e8 01     mov   a,#$01
109b: 3f 9d 1a  call  $1a9d
109e: 6f        ret

; vcmd fd - jump
109f: 8d 01     mov   y,#$01
10a1: f7 37     mov   a,($37)+y
10a3: c4 00     mov   $00,a
10a5: fc        inc   y
10a6: f7 37     mov   a,($37)+y
10a8: c4 01     mov   $01,a
10aa: e4 37     mov   a,$37
10ac: 60        clrc
10ad: 84 00     adc   a,$00
10af: c4 37     mov   $37,a
10b1: e4 38     mov   a,$38
10b3: 84 01     adc   a,$01
10b5: c4 38     mov   $38,a
10b7: 6f        ret

; vcmd fc - call macro
10b8: 8d 02     mov   y,#$02
10ba: f7 37     mov   a,($37)+y
10bc: 2d        push  a
10bd: dc        dec   y
10be: f7 37     mov   a,($37)+y
10c0: 2d        push  a
10c1: e4 37     mov   a,$37
10c3: 60        clrc
10c4: 88 03     adc   a,#$03
10c6: c4 00     mov   $00,a
10c8: e4 38     mov   a,$38
10ca: 88 00     adc   a,#$00
10cc: c4 01     mov   $01,a
10ce: e8 02     mov   a,#$02
10d0: 3f ad 1a  call  $1aad
10d3: ae        pop   a
10d4: 60        clrc
10d5: 84 37     adc   a,$37
10d7: c4 37     mov   $37,a
10d9: ae        pop   a
10da: 84 38     adc   a,$38
10dc: c4 38     mov   $38,a
10de: 6f        ret

; vcmd fe - return from macro
10df: e8 02     mov   a,#$02
10e1: 3f d8 1a  call  $1ad8
10e4: e4 00     mov   a,$00
10e6: c4 37     mov   $37,a
10e8: e4 01     mov   a,$01
10ea: c4 38     mov   $38,a
10ec: 6f        ret

; vcmd ff - end of channel
10ed: 3f 56 1a  call  $1a56
10f0: 3f ba 16  call  $16ba
10f3: 5f 9d 0f  jmp   $0f9d

10f6: f8 07     mov   x,$07
10f8: f5 28 02  mov   a,$0228+x
10fb: 28 80     and   a,#$80
10fd: f0 3c     beq   $113b
10ff: e4 00     mov   a,$00
1101: 1c        asl   a
1102: fd        mov   y,a
1103: e4 07     mov   a,$07
1105: 1c        asl   a
1106: 5d        mov   x,a
1107: e5 06 20  mov   a,$2006
110a: 60        clrc
110b: 88 00     adc   a,#$00
110d: c4 01     mov   $01,a
110f: e5 07 20  mov   a,$2007
1112: 88 20     adc   a,#$20
1114: c4 02     mov   $02,a
1116: f7 01     mov   a,($01)+y
1118: 60        clrc
1119: 88 00     adc   a,#$00
111b: c4 03     mov   $03,a
111d: fc        inc   y
111e: f7 01     mov   a,($01)+y
1120: 88 20     adc   a,#$20
1122: c4 04     mov   $04,a
1124: f8 07     mov   x,$07
1126: 8d 00     mov   y,#$00
1128: f7 03     mov   a,($03)+y
112a: 08 80     or    a,#$80
112c: d5 28 02  mov   $0228+x,a
112f: fc        inc   y
1130: f7 03     mov   a,($03)+y
1132: d5 30 02  mov   $0230+x,a
1135: e8 50     mov   a,#$50
1137: d5 38 02  mov   $0238+x,a
113a: 6f        ret

113b: e4 00     mov   a,$00
113d: 1c        asl   a
113e: fd        mov   y,a
113f: e4 07     mov   a,$07
1141: 1c        asl   a
1142: 5d        mov   x,a
1143: e5 02 20  mov   a,$2002
1146: 60        clrc
1147: 88 00     adc   a,#$00
1149: c4 01     mov   $01,a
114b: e5 03 20  mov   a,$2003
114e: 88 20     adc   a,#$20
1150: c4 02     mov   $02,a
1152: f7 01     mov   a,($01)+y
1154: 60        clrc
1155: 88 00     adc   a,#$00
1157: d5 65 03  mov   $0365+x,a
115a: fc        inc   y
115b: f7 01     mov   a,($01)+y
115d: 88 20     adc   a,#$20
115f: d5 66 03  mov   $0366+x,a
1162: 3f 66 11  call  $1166
1165: 6f        ret

1166: e4 07     mov   a,$07
1168: 1c        asl   a
1169: 5d        mov   x,a
116a: f5 65 03  mov   a,$0365+x
116d: c4 00     mov   $00,a
116f: f5 66 03  mov   a,$0366+x
1172: c4 01     mov   $01,a
1174: e8 00     mov   a,#$00
1176: d5 7d 03  mov   $037d+x,a
1179: 8d 00     mov   y,#$00
117b: f7 00     mov   a,($00)+y
117d: c4 04     mov   $04,a
117f: 5c        lsr   a
1180: d5 7e 03  mov   $037e+x,a
1183: f8 07     mov   x,$07
1185: d5 38 02  mov   $0238+x,a
1188: c4 02     mov   $02,a
118a: fc        inc   y
118b: f7 00     mov   a,($00)+y
118d: f0 68     beq   $11f7
118f: d5 75 03  mov   $0375+x,a
1192: c4 03     mov   $03,a
1194: e4 07     mov   a,$07
1196: 1c        asl   a
1197: 5d        mov   x,a
1198: e4 00     mov   a,$00
119a: 60        clrc
119b: 88 02     adc   a,#$02
119d: d5 65 03  mov   $0365+x,a
11a0: c4 00     mov   $00,a
11a2: e4 01     mov   a,$01
11a4: 88 00     adc   a,#$00
11a6: d5 66 03  mov   $0366+x,a
11a9: c4 01     mov   $01,a
11ab: 8d 00     mov   y,#$00
11ad: f7 00     mov   a,($00)+y
11af: 64 04     cmp   a,$04
11b1: f0 3c     beq   $11ef
11b3: 5c        lsr   a
11b4: 80        setc
11b5: a4 02     sbc   a,$02
11b7: 0d        push  psw
11b8: 10 03     bpl   $11bd
11ba: 48 ff     eor   a,#$ff
11bc: bc        inc   a
11bd: c4 02     mov   $02,a
11bf: c4 2e     mov   $2e,a
11c1: e8 00     mov   a,#$00
11c3: c4 2d     mov   $2d,a
11c5: e4 03     mov   a,$03
11c7: c4 2b     mov   $2b,a
11c9: 3f 37 1b  call  $1b37
11cc: 8e        pop   psw
11cd: 10 11     bpl   $11e0
11cf: e4 2d     mov   a,$2d
11d1: 48 ff     eor   a,#$ff
11d3: 60        clrc
11d4: 88 01     adc   a,#$01
11d6: c4 2d     mov   $2d,a
11d8: e4 2e     mov   a,$2e
11da: 48 ff     eor   a,#$ff
11dc: 88 00     adc   a,#$00
11de: c4 2e     mov   $2e,a
11e0: e4 07     mov   a,$07
11e2: 1c        asl   a
11e3: 5d        mov   x,a
11e4: e4 2d     mov   a,$2d
11e6: d5 8d 03  mov   $038d+x,a
11e9: e4 2e     mov   a,$2e
11eb: d5 8e 03  mov   $038e+x,a
11ee: 6f        ret

11ef: f8 07     mov   x,$07
11f1: e8 00     mov   a,#$00
11f3: d5 75 03  mov   $0375+x,a
11f6: 6f        ret

11f7: e4 07     mov   a,$07
11f9: 3f fb 1a  call  $1afb
11fc: 04 19     or    a,$19
11fe: c4 19     mov   $19,a
1200: 6f        ret

1201: f8 07     mov   x,$07
1203: f5 28 02  mov   a,$0228+x
1206: 28 80     and   a,#$80
1208: f0 01     beq   $120b
120a: 6f        ret

120b: f5 75 03  mov   a,$0375+x
120e: f0 29     beq   $1239
1210: f5 75 03  mov   a,$0375+x
1213: 9c        dec   a
1214: d5 75 03  mov   $0375+x,a
1217: f0 1d     beq   $1236
1219: 7d        mov   a,x
121a: 1c        asl   a
121b: 5d        mov   x,a
121c: f5 7d 03  mov   a,$037d+x
121f: 60        clrc
1220: 95 8d 03  adc   a,$038d+x
1223: d5 7d 03  mov   $037d+x,a
1226: f5 7e 03  mov   a,$037e+x
1229: 95 8e 03  adc   a,$038e+x
122c: d5 7e 03  mov   $037e+x,a
122f: f8 07     mov   x,$07
1231: d5 38 02  mov   $0238+x,a
1234: 2f 03     bra   $1239
1236: 3f 66 11  call  $1166
1239: 6f        ret

123a: f8 07     mov   x,$07
123c: f5 6d 02  mov   a,$026d+x
123f: 28 10     and   a,#$10
1241: f0 15     beq   $1258
1243: f5 75 02  mov   a,$0275+x
1246: d5 85 02  mov   $0285+x,a
1249: f5 7d 02  mov   a,$027d+x
124c: d5 8d 02  mov   $028d+x,a
124f: e8 00     mov   a,#$00
1251: d5 95 02  mov   $0295+x,a
1254: d5 9d 02  mov   $029d+x,a
1257: 6f        ret

1258: e4 05     mov   a,$05
125a: 2d        push  a
125b: e4 06     mov   a,$06
125d: 2d        push  a
125e: e4 07     mov   a,$07
1260: 2d        push  a
1261: f5 75 02  mov   a,$0275+x
1264: d5 85 02  mov   $0285+x,a
1267: d5 dd 03  mov   $03dd+x,a
126a: f5 7d 02  mov   a,$027d+x
126d: d5 8d 02  mov   $028d+x,a
1270: d5 e5 03  mov   $03e5+x,a
1273: e8 00     mov   a,#$00
1275: d5 95 02  mov   $0295+x,a
1278: d5 9d 02  mov   $029d+x,a
127b: d5 ed 03  mov   $03ed+x,a
127e: e4 00     mov   a,$00
1280: 1c        asl   a
1281: fd        mov   y,a
1282: f8 07     mov   x,$07
1284: e4 00     mov   a,$00
1286: d5 b5 03  mov   $03b5+x,a
1289: e5 08 20  mov   a,$2008
128c: 60        clrc
128d: 88 00     adc   a,#$00
128f: c4 01     mov   $01,a
1291: e5 09 20  mov   a,$2009
1294: 88 20     adc   a,#$20
1296: c4 02     mov   $02,a
1298: f7 01     mov   a,($01)+y
129a: 60        clrc
129b: 88 00     adc   a,#$00
129d: d5 9d 03  mov   $039d+x,a
12a0: fc        inc   y
12a1: f7 01     mov   a,($01)+y
12a3: 88 20     adc   a,#$20
12a5: d5 a5 03  mov   $03a5+x,a
12a8: e8 00     mov   a,#$00
12aa: d5 bd 03  mov   $03bd+x,a
12ad: f5 9d 03  mov   a,$039d+x
12b0: c4 01     mov   $01,a
12b2: f5 a5 03  mov   a,$03a5+x
12b5: c4 02     mov   $02,a
12b7: 8d 00     mov   y,#$00
12b9: f7 01     mov   a,($01)+y
12bb: d5 ad 03  mov   $03ad+x,a
12be: f0 0e     beq   $12ce
12c0: 68 ff     cmp   a,#$ff
12c2: f0 0d     beq   $12d1
12c4: fc        inc   y
12c5: f7 01     mov   a,($01)+y
12c7: 10 0b     bpl   $12d4
12c9: 3f 65 13  call  $1365
12cc: 2f 09     bra   $12d7
12ce: 5f 87 13  jmp   $1387

12d1: 5f b7 13  jmp   $13b7

12d4: 3f 44 13  call  $1344
12d7: e4 05     mov   a,$05
12d9: 75 e5 03  cmp   a,$03e5+x
12dc: f0 04     beq   $12e2
12de: 90 1b     bcc   $12fb
12e0: 2f 07     bra   $12e9
12e2: e4 06     mov   a,$06
12e4: 75 dd 03  cmp   a,$03dd+x
12e7: 90 12     bcc   $12fb
12e9: e4 06     mov   a,$06
12eb: 80        setc
12ec: b5 dd 03  sbc   a,$03dd+x
12ef: c4 2d     mov   $2d,a
12f1: e4 05     mov   a,$05
12f3: 80        setc
12f4: b5 e5 03  sbc   a,$03e5+x
12f7: c4 2e     mov   $2e,a
12f9: 2f 14     bra   $130f
12fb: e8 01     mov   a,#$01
12fd: d5 bd 03  mov   $03bd+x,a
1300: f5 dd 03  mov   a,$03dd+x
1303: 80        setc
1304: a4 06     sbc   a,$06
1306: c4 2d     mov   $2d,a
1308: f5 e5 03  mov   a,$03e5+x
130b: a4 05     sbc   a,$05
130d: c4 2e     mov   $2e,a
130f: f5 ad 03  mov   a,$03ad+x
1312: c4 2b     mov   $2b,a
1314: 4d        push  x
1315: 3f 37 1b  call  $1b37
1318: ce        pop   x
1319: e4 2e     mov   a,$2e
131b: d5 cd 03  mov   $03cd+x,a
131e: e4 2d     mov   a,$2d
1320: d5 c5 03  mov   $03c5+x,a
1323: e4 2c     mov   a,$2c
1325: c4 2e     mov   $2e,a
1327: e8 00     mov   a,#$00
1329: c4 2d     mov   $2d,a
132b: f5 ad 03  mov   a,$03ad+x
132e: c4 2b     mov   $2b,a
1330: 4d        push  x
1331: 3f 37 1b  call  $1b37
1334: ce        pop   x
1335: e4 2d     mov   a,$2d
1337: d5 d5 03  mov   $03d5+x,a
133a: ae        pop   a
133b: c4 07     mov   $07,a
133d: ae        pop   a
133e: c4 06     mov   $06,a
1340: ae        pop   a
1341: c4 05     mov   $05,a
1343: 6f        ret

1344: c4 27     mov   $27,a
1346: f5 75 02  mov   a,$0275+x
1349: 1c        asl   a
134a: c4 29     mov   $29,a
134c: f5 7d 02  mov   a,$027d+x
134f: 3c        rol   a
1350: c4 2a     mov   $2a,a
1352: 3f 1b 1b  call  $1b1b
1355: e4 06     mov   a,$06
1357: 60        clrc
1358: 95 75 02  adc   a,$0275+x
135b: c4 06     mov   $06,a
135d: e4 05     mov   a,$05
135f: 95 7d 02  adc   a,$027d+x
1362: c4 05     mov   $05,a
1364: 6f        ret

1365: 48 ff     eor   a,#$ff
1367: bc        inc   a
1368: c4 27     mov   $27,a
136a: f5 75 02  mov   a,$0275+x
136d: c4 29     mov   $29,a
136f: f5 7d 02  mov   a,$027d+x
1372: c4 2a     mov   $2a,a
1374: 3f 1b 1b  call  $1b1b
1377: f5 75 02  mov   a,$0275+x
137a: 80        setc
137b: a4 06     sbc   a,$06
137d: c4 06     mov   $06,a
137f: f5 7d 02  mov   a,$027d+x
1382: a4 05     sbc   a,$05
1384: c4 05     mov   $05,a
1386: 6f        ret

1387: fc        inc   y
1388: f7 01     mov   a,($01)+y
138a: 10 05     bpl   $1391
138c: 3f 65 13  call  $1365
138f: 2f 03     bra   $1394
1391: 3f 44 13  call  $1344
1394: e4 05     mov   a,$05
1396: d5 e5 03  mov   $03e5+x,a
1399: e4 06     mov   a,$06
139b: d5 dd 03  mov   $03dd+x,a
139e: e8 00     mov   a,#$00
13a0: d5 ed 03  mov   $03ed+x,a
13a3: f5 9d 03  mov   a,$039d+x
13a6: 60        clrc
13a7: 88 02     adc   a,#$02
13a9: d5 9d 03  mov   $039d+x,a
13ac: f5 a5 03  mov   a,$03a5+x
13af: 88 00     adc   a,#$00
13b1: d5 a5 03  mov   $03a5+x,a
13b4: 5f a8 12  jmp   $12a8
13b7: fc        inc   y
13b8: f7 01     mov   a,($01)+y
13ba: 1c        asl   a
13bb: 2d        push  a
13bc: f5 b5 03  mov   a,$03b5+x
13bf: 1c        asl   a
13c0: fd        mov   y,a
13c1: e5 08 20  mov   a,$2008
13c4: 60        clrc
13c5: 88 00     adc   a,#$00
13c7: c4 01     mov   $01,a
13c9: e5 09 20  mov   a,$2009
13cc: 88 20     adc   a,#$20
13ce: c4 02     mov   $02,a
13d0: f7 01     mov   a,($01)+y
13d2: 60        clrc
13d3: 88 00     adc   a,#$00
13d5: d5 9d 03  mov   $039d+x,a
13d8: fc        inc   y
13d9: f7 01     mov   a,($01)+y
13db: 88 20     adc   a,#$20
13dd: d5 a5 03  mov   $03a5+x,a
13e0: ae        pop   a
13e1: 60        clrc
13e2: 95 9d 03  adc   a,$039d+x
13e5: d5 9d 03  mov   $039d+x,a
13e8: f5 a5 03  mov   a,$03a5+x
13eb: 88 00     adc   a,#$00
13ed: d5 a5 03  mov   $03a5+x,a
13f0: 5f a8 12  jmp   $12a8

13f3: f8 07     mov   x,$07
13f5: f5 ad 03  mov   a,$03ad+x
13f8: 9c        dec   a
13f9: d5 ad 03  mov   $03ad+x,a
13fc: f0 4b     beq   $1449
13fe: f5 bd 03  mov   a,$03bd+x
1401: d0 23     bne   $1426
1403: f5 ed 03  mov   a,$03ed+x
1406: 60        clrc
1407: 95 d5 03  adc   a,$03d5+x
140a: d5 ed 03  mov   $03ed+x,a
140d: f5 dd 03  mov   a,$03dd+x
1410: 95 c5 03  adc   a,$03c5+x
1413: d5 dd 03  mov   $03dd+x,a
1416: d5 85 02  mov   $0285+x,a
1419: f5 e5 03  mov   a,$03e5+x
141c: 95 cd 03  adc   a,$03cd+x
141f: d5 e5 03  mov   $03e5+x,a
1422: d5 8d 02  mov   $028d+x,a
1425: 6f        ret

1426: f5 ed 03  mov   a,$03ed+x
1429: 80        setc
142a: b5 d5 03  sbc   a,$03d5+x
142d: d5 ed 03  mov   $03ed+x,a
1430: f5 dd 03  mov   a,$03dd+x
1433: b5 c5 03  sbc   a,$03c5+x
1436: d5 dd 03  mov   $03dd+x,a
1439: d5 85 02  mov   $0285+x,a
143c: f5 e5 03  mov   a,$03e5+x
143f: b5 cd 03  sbc   a,$03cd+x
1442: d5 e5 03  mov   $03e5+x,a
1445: d5 8d 02  mov   $028d+x,a
1448: 6f        ret

1449: f5 9d 03  mov   a,$039d+x
144c: 60        clrc
144d: 88 02     adc   a,#$02
144f: d5 9d 03  mov   $039d+x,a
1452: f5 a5 03  mov   a,$03a5+x
1455: 88 00     adc   a,#$00
1457: d5 a5 03  mov   $03a5+x,a
145a: e4 05     mov   a,$05
145c: 2d        push  a
145d: e4 06     mov   a,$06
145f: 2d        push  a
1460: e4 07     mov   a,$07
1462: 2d        push  a
1463: 5f a8 12  jmp   $12a8

1466: f8 07     mov   x,$07
1468: e4 00     mov   a,$00
146a: d5 20 02  mov   $0220+x,a
146d: 8d 18     mov   y,#$18
146f: cf        mul   ya
1470: c4 03     mov   $03,a
1472: cb 04     mov   $04,y
1474: e4 03     mov   a,$03
1476: 60        clrc
1477: 88 78     adc   a,#$78
1479: c4 03     mov   $03,a
147b: e4 04     mov   a,$04
147d: 84 10     adc   a,$10
147f: c4 04     mov   $04,a
1481: 8d 00     mov   y,#$00
1483: f7 03     mov   a,($03)+y
1485: d5 18 02  mov   $0218+x,a
1488: d5 8d 02  mov   $028d+x,a
148b: fc        inc   y
148c: f7 03     mov   a,($03)+y
148e: d5 10 02  mov   $0210+x,a
1491: d5 85 02  mov   $0285+x,a
1494: e8 7f     mov   a,#$7f
1496: d5 38 02  mov   $0238+x,a
1499: e8 00     mov   a,#$00
149b: d5 28 02  mov   $0228+x,a
149e: e8 00     mov   a,#$00
14a0: d5 30 02  mov   $0230+x,a
14a3: d5 95 02  mov   $0295+x,a
14a6: d5 9d 02  mov   $029d+x,a
14a9: e8 7f     mov   a,#$7f
14ab: c5 00 02  mov   $0200,a
14ae: c5 08 02  mov   $0208,a
14b1: c4 13     mov   $13,a
14b3: c4 14     mov   $14,a
14b5: e8 20     mov   a,#$20
14b7: c4 17     mov   $17,a
14b9: 7d        mov   a,x
14ba: 3f fb 1a  call  $1afb
14bd: 04 18     or    a,$18
14bf: c4 18     mov   $18,a
14c1: 6f        ret

14c2: e4 06     mov   a,$06
14c4: 8d 18     mov   y,#$18
14c6: cf        mul   ya
14c7: c4 03     mov   $03,a
14c9: cb 04     mov   $04,y
14cb: e4 03     mov   a,$03
14cd: 60        clrc
14ce: 88 78     adc   a,#$78
14d0: c4 03     mov   $03,a
14d2: e4 04     mov   a,$04
14d4: 84 10     adc   a,$10
14d6: c4 04     mov   $04,a
14d8: f8 07     mov   x,$07
14da: 8d 01     mov   y,#$01
14dc: f7 03     mov   a,($03)+y
14de: 80        setc
14df: a4 00     sbc   a,$00
14e1: d7 03     mov   ($03)+y,a
14e3: d5 10 02  mov   $0210+x,a
14e6: d5 85 02  mov   $0285+x,a
14e9: dc        dec   y
14ea: f7 03     mov   a,($03)+y
14ec: a8 00     sbc   a,#$00
14ee: d7 03     mov   ($03)+y,a
14f0: d5 18 02  mov   $0218+x,a
14f3: d5 8d 02  mov   $028d+x,a
14f6: 6f        ret

14f7: e4 06     mov   a,$06
14f9: 8d 18     mov   y,#$18
14fb: cf        mul   ya
14fc: c4 03     mov   $03,a
14fe: cb 04     mov   $04,y
1500: e4 03     mov   a,$03
1502: 60        clrc
1503: 88 78     adc   a,#$78
1505: c4 03     mov   $03,a
1507: e4 04     mov   a,$04
1509: 84 10     adc   a,$10
150b: c4 04     mov   $04,a
150d: f8 07     mov   x,$07
150f: 8d 01     mov   y,#$01
1511: f7 03     mov   a,($03)+y
1513: 60        clrc
1514: 84 00     adc   a,$00
1516: d7 03     mov   ($03)+y,a
1518: d5 10 02  mov   $0210+x,a
151b: d5 85 02  mov   $0285+x,a
151e: dc        dec   y
151f: f7 03     mov   a,($03)+y
1521: 88 00     adc   a,#$00
1523: d7 03     mov   ($03)+y,a
1525: d5 18 02  mov   $0218+x,a
1528: d5 8d 02  mov   $028d+x,a
152b: 6f        ret

152c: e8 05     mov   a,#$05
152e: c4 02     mov   $02,a
1530: 4b 07     lsr   $07
1532: 90 2b     bcc   $155f
1534: f8 02     mov   x,$02
1536: f5 20 02  mov   a,$0220+x
1539: 8d 18     mov   y,#$18
153b: cf        mul   ya
153c: c4 03     mov   $03,a
153e: cb 04     mov   $04,y
1540: e4 03     mov   a,$03
1542: 60        clrc
1543: 88 78     adc   a,#$78
1545: c4 03     mov   $03,a
1547: e4 04     mov   a,$04
1549: 84 10     adc   a,$10
154b: c4 04     mov   $04,a
154d: 8d 01     mov   y,#$01
154f: f7 03     mov   a,($03)+y
1551: 60        clrc
1552: 84 00     adc   a,$00
1554: d5 75 02  mov   $0275+x,a
1557: dc        dec   y
1558: f7 03     mov   a,($03)+y
155a: 84 01     adc   a,$01
155c: d5 7d 02  mov   $027d+x,a
155f: ab 02     inc   $02
1561: e4 02     mov   a,$02
1563: 68 07     cmp   a,#$07
1565: d0 c9     bne   $1530
1567: 6f        ret

1568: e5 00 20  mov   a,$2000
156b: 60        clrc
156c: 88 00     adc   a,#$00
156e: c4 01     mov   $01,a
1570: e5 01 20  mov   a,$2001
1573: 88 20     adc   a,#$20
1575: c4 02     mov   $02,a
1577: e4 00     mov   a,$00
1579: 1c        asl   a
157a: fd        mov   y,a
157b: f7 01     mov   a,($01)+y
157d: 60        clrc
157e: 88 00     adc   a,#$00
1580: c4 00     mov   $00,a
1582: c4 03     mov   $03,a
1584: fc        inc   y
1585: f7 01     mov   a,($01)+y
1587: 88 20     adc   a,#$20
1589: c4 01     mov   $01,a
158b: c4 04     mov   $04,a
158d: e8 00     mov   a,#$00
158f: c4 07     mov   $07,a
1591: 8d 00     mov   y,#$00
1593: f7 00     mov   a,($00)+y
1595: c4 05     mov   $05,a
1597: fc        inc   y
1598: f7 00     mov   a,($00)+y
159a: c4 06     mov   $06,a
159c: e4 01     mov   a,$01
159e: 2d        push  a
159f: e4 00     mov   a,$00
15a1: 2d        push  a
15a2: e4 03     mov   a,$03
15a4: 2d        push  a
15a5: e4 04     mov   a,$04
15a7: 2d        push  a
15a8: 3f c5 15  call  $15c5
15ab: ae        pop   a
15ac: c4 04     mov   $04,a
15ae: ae        pop   a
15af: c4 03     mov   $03,a
15b1: ae        pop   a
15b2: 60        clrc
15b3: 88 02     adc   a,#$02
15b5: c4 00     mov   $00,a
15b7: ae        pop   a
15b8: 88 00     adc   a,#$00
15ba: c4 01     mov   $01,a
15bc: ab 07     inc   $07
15be: e4 07     mov   a,$07
15c0: 68 08     cmp   a,#$08
15c2: d0 cd     bne   $1591
15c4: 6f        ret

15c5: e4 05     mov   a,$05
15c7: 68 00     cmp   a,#$00
15c9: d0 06     bne   $15d1
15cb: e4 06     mov   a,$06
15cd: 68 00     cmp   a,#$00
15cf: f0 06     beq   $15d7
15d1: 3f 56 1a  call  $1a56
15d4: 3f ba 16  call  $16ba
15d7: 6f        ret

; vcmd c3 - echo feedback
15d8: 8d 01     mov   y,#$01
15da: f7 37     mov   a,($37)+y
15dc: c4 1b     mov   $1b,a
15de: e8 02     mov   a,#$02
15e0: 3f 9d 1a  call  $1a9d
15e3: 6f        ret

; vcmd c2 - echo delay
15e4: 8d 01     mov   y,#$01
15e6: f7 37     mov   a,($37)+y
15e8: c4 1e     mov   $1e,a
15ea: e8 0f     mov   a,#$0f
15ec: c4 11     mov   $11,a
15ee: e4 1e     mov   a,$1e
15f0: c4 12     mov   $12,a
15f2: e8 02     mov   a,#$02
15f4: 3f 9d 1a  call  $1a9d
15f7: 6f        ret

; vcmd c4 - echo FIR - 1
15f8: 8d 01     mov   y,#$01
15fa: f7 37     mov   a,($37)+y
15fc: c4 1f     mov   $1f,a
15fe: e8 02     mov   a,#$02
1600: 3f 9d 1a  call  $1a9d
1603: 6f        ret

; vcmd c5 - echo FIR - 2
1604: 8d 01     mov   y,#$01
1606: f7 37     mov   a,($37)+y
1608: c4 20     mov   $20,a
160a: e8 02     mov   a,#$02
160c: 3f 9d 1a  call  $1a9d
160f: 6f        ret

; vcmd c6 - echo FIR - 3
1610: 8d 01     mov   y,#$01
1612: f7 37     mov   a,($37)+y
1614: c4 21     mov   $21,a
1616: e8 02     mov   a,#$02
1618: 3f 9d 1a  call  $1a9d
161b: 6f        ret

; vcmd c7 - echo FIR - 4
161c: 8d 01     mov   y,#$01
161e: f7 37     mov   a,($37)+y
1620: c4 22     mov   $22,a
1622: e8 02     mov   a,#$02
1624: 3f 9d 1a  call  $1a9d
1627: 6f        ret

; vcmd c8 - echo FIR - 5
1628: 8d 01     mov   y,#$01
162a: f7 37     mov   a,($37)+y
162c: c4 23     mov   $23,a
162e: e8 02     mov   a,#$02
1630: 3f 9d 1a  call  $1a9d
1633: 6f        ret

; vcmd c9 - echo FIR - 6
1634: 8d 01     mov   y,#$01
1636: f7 37     mov   a,($37)+y
1638: c4 1f     mov   $1f,a
163a: e8 02     mov   a,#$02
163c: 3f 9d 1a  call  $1a9d
163f: 6f        ret

; vcmd ca - echo FIR - 7
1640: 8d 01     mov   y,#$01
1642: f7 37     mov   a,($37)+y
1644: c4 1f     mov   $1f,a
1646: e8 02     mov   a,#$02
1648: 3f 9d 1a  call  $1a9d
164b: 6f        ret

; vcmd cb - echo FIR - 8
164c: 8d 01     mov   y,#$01
164e: f7 37     mov   a,($37)+y
1650: c4 1f     mov   $1f,a
1652: e8 02     mov   a,#$02
1654: 3f 9d 1a  call  $1a9d
1657: 6f        ret

; vcmd cc - ASDR mode
1658: f8 07     mov   x,$07
165a: f5 28 02  mov   a,$0228+x
165d: 08 80     or    a,#$80
165f: d5 28 02  mov   $0228+x,a
1662: e8 01     mov   a,#$01
1664: 3f 9d 1a  call  $1a9d
1667: 6f        ret

; vcmd cd - gain env mode
1668: f8 07     mov   x,$07
166a: f5 28 02  mov   a,$0228+x
166d: 28 7f     and   a,#$7f
166f: d5 28 02  mov   $0228+x,a
1672: e8 01     mov   a,#$01
1674: 3f 9d 1a  call  $1a9d
1677: 6f        ret

; vcmd cf - noise on
1678: e4 07     mov   a,$07
167a: 3f fb 1a  call  $1afb
167d: 04 1c     or    a,$1c
167f: c4 1c     mov   $1c,a
1681: e8 01     mov   a,#$01
1683: 3f 9d 1a  call  $1a9d
1686: 6f        ret

; vcmd d0 - noise off
1687: e4 07     mov   a,$07
1689: 3f fb 1a  call  $1afb
168c: 48 ff     eor   a,#$ff
168e: 24 1c     and   a,$1c
1690: c4 1c     mov   $1c,a
1692: e8 01     mov   a,#$01
1694: 3f 9d 1a  call  $1a9d
1697: 6f        ret

; vcmd e3 - echo on
1698: e4 07     mov   a,$07
169a: 3f fb 1a  call  $1afb
169d: 04 1d     or    a,$1d
169f: c4 1d     mov   $1d,a
16a1: e4 11     mov   a,$11
16a3: d0 06     bne   $16ab
16a5: e4 17     mov   a,$17
16a7: 28 df     and   a,#$df
16a9: c4 17     mov   $17,a
16ab: e8 01     mov   a,#$01
16ad: 3f 9d 1a  call  $1a9d
16b0: 6f        ret

; vcmd e4 - echo off
16b1: 3f ba 16  call  $16ba
16b4: e8 01     mov   a,#$01
16b6: 3f 9d 1a  call  $1a9d
16b9: 6f        ret

16ba: e4 07     mov   a,$07
16bc: 3f fb 1a  call  $1afb
16bf: 48 ff     eor   a,#$ff
16c1: 24 1d     and   a,$1d
16c3: c4 1d     mov   $1d,a
16c5: d0 06     bne   $16cd
16c7: e8 00     mov   a,#$00
16c9: c4 15     mov   $15,a
16cb: c4 16     mov   $16,a
16cd: 6f        ret

; vcmd e5 - write to instrument table (2) - 0
16ce: e8 00     mov   a,#$00
16d0: 2f 1c     bra   $16ee
; vcmd e6 - write to instrument table (2) - 1
16d2: e8 01     mov   a,#$01
16d4: 2f 18     bra   $16ee
; vcmd e7 - write to instrument table (2) - 2
16d6: e8 02     mov   a,#$02
16d8: 2f 14     bra   $16ee
; vcmd e8 - write to instrument table (2) - 3
16da: e8 03     mov   a,#$03
16dc: 2f 10     bra   $16ee
; vcmd e9 - write to instrument table (2) - 4
16de: e8 04     mov   a,#$04
16e0: 2f 0c     bra   $16ee
; vcmd ea - write to instrument table (2) - 5
16e2: e8 05     mov   a,#$05
16e4: 2f 08     bra   $16ee
; vcmd eb - write to instrument table (2) - 6
16e6: e8 06     mov   a,#$06
16e8: 2f 04     bra   $16ee
; vcmd ec - write to instrument table (2) - 7
16ea: e8 07     mov   a,#$07
16ec: 2f 00     bra   $16ee
16ee: 60        clrc
16ef: 84 06     adc   a,$06
16f1: 5d        mov   x,a
16f2: 8d 01     mov   y,#$01
16f4: f7 37     mov   a,($37)+y
16f6: d5 a5 02  mov   $02a5+x,a
16f9: fc        inc   y
16fa: f7 37     mov   a,($37)+y
16fc: d5 e5 02  mov   $02e5+x,a
16ff: fc        inc   y
1700: f7 37     mov   a,($37)+y
1702: d5 25 03  mov   $0325+x,a
1705: e8 04     mov   a,#$04
1707: 3f 9d 1a  call  $1a9d
170a: 6f        ret

; vcmd d1 - set instrument - 0
170b: e8 00     mov   a,#$00
170d: 2f 1c     bra   $172b
; vcmd d2 - set instrument - 1
170f: e8 01     mov   a,#$01
1711: 2f 18     bra   $172b
; vcmd d3 - set instrument - 2
1713: e8 02     mov   a,#$02
1715: 2f 14     bra   $172b
; vcmd d4 - set instrument - 3
1717: e8 03     mov   a,#$03
1719: 2f 10     bra   $172b
; vcmd d5 - set instrument - 4
171b: e8 04     mov   a,#$04
171d: 2f 0c     bra   $172b
; vcmd d6 - set instrument - 5
171f: e8 05     mov   a,#$05
1721: 2f 08     bra   $172b
; vcmd d7 - set instrument - 6
1723: e8 06     mov   a,#$06
1725: 2f 04     bra   $172b
; vcmd d8 - set instrument - 7
1727: e8 07     mov   a,#$07
1729: 2f 00     bra   $172b
172b: 60        clrc
172c: 84 06     adc   a,$06
172e: 5d        mov   x,a
172f: f5 a5 02  mov   a,$02a5+x
1732: c4 00     mov   $00,a
1734: f5 e5 02  mov   a,$02e5+x
1737: c4 01     mov   $01,a
1739: f5 25 03  mov   a,$0325+x
173c: c4 02     mov   $02,a
173e: e8 03     mov   a,#$03
1740: 3f ad 1a  call  $1aad
1743: e8 01     mov   a,#$01
1745: 3f 9d 1a  call  $1a9d
1748: 6f        ret

; vcmd d9 - write to instrument table - 0
1749: e8 00     mov   a,#$00
174b: 2f 1c     bra   $1769
; vcmd da - write to instrument table - 1
174d: e8 01     mov   a,#$01
174f: 2f 18     bra   $1769
; vcmd db - write to instrument table - 2
1751: e8 02     mov   a,#$02
1753: 2f 14     bra   $1769
; vcmd dc - write to instrument table - 3
1755: e8 03     mov   a,#$03
1757: 2f 10     bra   $1769
; vcmd dd - write to instrument table - 4
1759: e8 04     mov   a,#$04
175b: 2f 0c     bra   $1769
; vcmd de - write to instrument table - 5
175d: e8 05     mov   a,#$05
175f: 2f 08     bra   $1769
; vcmd df - write to instrument table - 6
1761: e8 06     mov   a,#$06
1763: 2f 04     bra   $1769
; vcmd e0 - write to instrument table - 7
1765: e8 07     mov   a,#$07
1767: 2f 00     bra   $1769
1769: 60        clrc
176a: 84 06     adc   a,$06
176c: 5d        mov   x,a
176d: 4d        push  x
176e: e8 03     mov   a,#$03
1770: 3f d8 1a  call  $1ad8
1773: ce        pop   x
1774: e4 00     mov   a,$00
1776: d5 a5 02  mov   $02a5+x,a
1779: e4 01     mov   a,$01
177b: d5 e5 02  mov   $02e5+x,a
177e: e4 02     mov   a,$02
1780: d5 25 03  mov   $0325+x,a
1783: e8 01     mov   a,#$01
1785: 3f 9d 1a  call  $1a9d
1788: 6f        ret

; vcmd fb - master volume fade
1789: 8d 01     mov   y,#$01
178b: f7 37     mov   a,($37)+y
178d: c5 65 02  mov   $0265,a
1790: e5 60 02  mov   a,$0260
1793: c5 66 02  mov   $0266,a
1796: e5 62 02  mov   a,$0262
1799: c5 68 02  mov   $0268,a
179c: e8 02     mov   a,#$02
179e: 3f 9d 1a  call  $1a9d
17a1: 6f        ret

17a2: e5 65 02  mov   a,$0265
17a5: f0 6f     beq   $1816
17a7: 1c        asl   a
17a8: 1c        asl   a
17a9: 1c        asl   a
17aa: c4 00     mov   $00,a
17ac: e5 65 02  mov   a,$0265
17af: 9f        xcn   a
17b0: 5c        lsr   a
17b1: 28 03     and   a,#$03
17b3: c4 01     mov   $01,a
17b5: e5 65 02  mov   a,$0265
17b8: 30 24     bmi   $17de
17ba: e5 67 02  mov   a,$0267
17bd: 60        clrc
17be: 84 00     adc   a,$00
17c0: c5 67 02  mov   $0267,a
17c3: e5 68 02  mov   a,$0268
17c6: 84 01     adc   a,$01
17c8: b0 05     bcs   $17cf
17ca: c5 68 02  mov   $0268,a
17cd: 2f 34     bra   $1803
17cf: e8 ff     mov   a,#$ff
17d1: c5 68 02  mov   $0268,a
17d4: e8 00     mov   a,#$00
17d6: c5 67 02  mov   $0267,a
17d9: c5 65 02  mov   $0265,a
17dc: 2f 25     bra   $1803
17de: e5 68 02  mov   a,$0268
17e1: 80        setc
17e2: a4 01     sbc   a,$01
17e4: f0 0f     beq   $17f5
17e6: 90 0d     bcc   $17f5
17e8: c5 68 02  mov   $0268,a
17eb: e5 67 02  mov   a,$0267
17ee: a4 00     sbc   a,$00
17f0: c5 67 02  mov   $0267,a
17f3: 2f 0e     bra   $1803
17f5: e8 00     mov   a,#$00
17f7: c5 68 02  mov   $0268,a
17fa: c5 67 02  mov   $0267,a
17fd: c5 65 02  mov   $0265,a
1800: 3f 3d 1a  call  $1a3d
1803: e5 66 02  mov   a,$0266
1806: c4 00     mov   $00,a
1808: 3f 21 18  call  $1821
180b: e5 69 02  mov   a,$0269
180e: c4 13     mov   $13,a
1810: e5 6a 02  mov   a,$026a
1813: c4 14     mov   $14,a
1815: 6f        ret

1816: e5 63 02  mov   a,$0263
1819: c4 13     mov   $13,a
181b: e5 64 02  mov   a,$0264
181e: c4 14     mov   $14,a
1820: 6f        ret

1821: e4 00     mov   a,$00
1823: 68 80     cmp   a,#$80
1825: f0 31     beq   $1858
1827: b0 15     bcs   $183e
1829: e5 68 02  mov   a,$0268
182c: 5c        lsr   a
182d: c5 6a 02  mov   $026a,a
1830: c4 01     mov   $01,a
1832: 3f b1 19  call  $19b1
1835: e4 2a     mov   a,$2a
1837: f8 07     mov   x,$07
1839: c5 69 02  mov   $0269,a
183c: 2f 24     bra   $1862
183e: 48 ff     eor   a,#$ff
1840: bc        inc   a
1841: c4 00     mov   $00,a
1843: e5 68 02  mov   a,$0268
1846: 5c        lsr   a
1847: c5 69 02  mov   $0269,a
184a: c4 01     mov   $01,a
184c: 3f b1 19  call  $19b1
184f: e4 2a     mov   a,$2a
1851: f8 07     mov   x,$07
1853: c5 6a 02  mov   $026a,a
1856: 2f 0a     bra   $1862
1858: e5 68 02  mov   a,$0268
185b: 5c        lsr   a
185c: c5 69 02  mov   $0269,a
185f: c5 6a 02  mov   $026a,a
1862: 6f        ret

; vcmd ed - master volume/pan
1863: 8d 01     mov   y,#$01
1865: f7 37     mov   a,($37)+y
1867: c5 60 02  mov   $0260,a
186a: c4 00     mov   $00,a
186c: 3f 75 18  call  $1875
186f: e8 02     mov   a,#$02
1871: 3f 9d 1a  call  $1a9d
1874: 6f        ret

1875: e4 0e     mov   a,$0e
1877: 28 01     and   a,#$01
1879: d0 04     bne   $187f
187b: e8 80     mov   a,#$80
187d: c4 00     mov   $00,a
187f: e4 00     mov   a,$00
1881: 68 80     cmp   a,#$80
1883: f0 31     beq   $18b6
1885: b0 15     bcs   $189c
1887: e5 62 02  mov   a,$0262
188a: 5c        lsr   a
188b: c5 64 02  mov   $0264,a
188e: c4 01     mov   $01,a
1890: 3f b1 19  call  $19b1
1893: e4 2a     mov   a,$2a
1895: f8 07     mov   x,$07
1897: c5 63 02  mov   $0263,a
189a: 2f 24     bra   $18c0
189c: 48 ff     eor   a,#$ff
189e: bc        inc   a
189f: c4 00     mov   $00,a
18a1: e5 62 02  mov   a,$0262
18a4: 5c        lsr   a
18a5: c5 63 02  mov   $0263,a
18a8: c4 01     mov   $01,a
18aa: 3f b1 19  call  $19b1
18ad: e4 2a     mov   a,$2a
18af: f8 07     mov   x,$07
18b1: c5 64 02  mov   $0264,a
18b4: 2f 0a     bra   $18c0
18b6: e5 62 02  mov   a,$0262
18b9: 5c        lsr   a
18ba: c5 63 02  mov   $0263,a
18bd: c5 64 02  mov   $0264,a
18c0: 6f        ret

; vcmd ee - master volume
18c1: 8d 01     mov   y,#$01
18c3: f7 37     mov   a,($37)+y
18c5: f8 07     mov   x,$07
18c7: c5 62 02  mov   $0262,a
18ca: e8 02     mov   a,#$02
18cc: 3f 9d 1a  call  $1a9d
18cf: e5 60 02  mov   a,$0260
18d2: c4 00     mov   $00,a
18d4: 3f 75 18  call  $1875
18d7: 6f        ret

; vcmd e1 - echo volume/pan
18d8: 8d 01     mov   y,#$01
18da: f7 37     mov   a,($37)+y
18dc: c5 6b 02  mov   $026b,a
18df: c4 00     mov   $00,a
18e1: 3f ea 18  call  $18ea
18e4: e8 02     mov   a,#$02
18e6: 3f 9d 1a  call  $1a9d
18e9: 6f        ret

18ea: e4 11     mov   a,$11
18ec: d0 49     bne   $1937
18ee: e4 12     mov   a,$12
18f0: d0 45     bne   $1937
18f2: e4 0e     mov   a,$0e
18f4: 28 01     and   a,#$01
18f6: d0 04     bne   $18fc
18f8: e8 80     mov   a,#$80
18fa: c4 00     mov   $00,a
18fc: e4 00     mov   a,$00
18fe: 68 80     cmp   a,#$80
1900: f0 2d     beq   $192f
1902: b0 13     bcs   $1917
1904: e5 6c 02  mov   a,$026c
1907: 5c        lsr   a
1908: c4 16     mov   $16,a
190a: c4 01     mov   $01,a
190c: 3f b1 19  call  $19b1
190f: e4 2a     mov   a,$2a
1911: f8 07     mov   x,$07
1913: c4 15     mov   $15,a
1915: 2f 20     bra   $1937
1917: 48 ff     eor   a,#$ff
1919: bc        inc   a
191a: c4 00     mov   $00,a
191c: e5 6c 02  mov   a,$026c
191f: 5c        lsr   a
1920: c4 15     mov   $15,a
1922: c4 01     mov   $01,a
1924: 3f b1 19  call  $19b1
1927: e4 2a     mov   a,$2a
1929: f8 07     mov   x,$07
192b: c4 16     mov   $16,a
192d: 2f 08     bra   $1937
192f: e5 6c 02  mov   a,$026c
1932: 5c        lsr   a
1933: c4 15     mov   $15,a
1935: c4 16     mov   $16,a
1937: 6f        ret

; vcmd e2 - echo volume
1938: 8d 01     mov   y,#$01
193a: f7 37     mov   a,($37)+y
193c: f8 07     mov   x,$07
193e: c5 6c 02  mov   $026c,a
1941: e8 02     mov   a,#$02
1943: 3f 9d 1a  call  $1a9d
1946: e5 6b 02  mov   a,$026b
1949: c4 00     mov   $00,a
194b: 3f ea 18  call  $18ea
194e: 6f        ret

; vcmd ef - pan
194f: 8d 01     mov   y,#$01
1951: f7 37     mov   a,($37)+y
1953: f8 07     mov   x,$07
1955: d5 50 02  mov   $0250+x,a
1958: c4 00     mov   $00,a
195a: 3f 63 19  call  $1963
195d: e8 02     mov   a,#$02
195f: 3f 9d 1a  call  $1a9d
1962: 6f        ret

1963: e4 0e     mov   a,$0e
1965: 28 01     and   a,#$01
1967: d0 04     bne   $196d
1969: e8 80     mov   a,#$80
196b: c4 00     mov   $00,a
196d: e4 00     mov   a,$00
196f: 68 80     cmp   a,#$80
1971: f0 33     beq   $19a6
1973: b0 17     bcs   $198c
1975: f8 07     mov   x,$07
1977: f5 58 02  mov   a,$0258+x
197a: 5c        lsr   a
197b: d5 08 02  mov   $0208+x,a
197e: c4 01     mov   $01,a
1980: 3f b1 19  call  $19b1
1983: e4 2a     mov   a,$2a
1985: f8 07     mov   x,$07
1987: d5 00 02  mov   $0200+x,a
198a: 2f 24     bra   $19b0
198c: 48 ff     eor   a,#$ff
198e: bc        inc   a
198f: c4 00     mov   $00,a
1991: f5 58 02  mov   a,$0258+x
1994: 5c        lsr   a
1995: d5 00 02  mov   $0200+x,a
1998: c4 01     mov   $01,a
199a: 3f b1 19  call  $19b1
199d: e4 2a     mov   a,$2a
199f: f8 07     mov   x,$07
19a1: d5 08 02  mov   $0208+x,a
19a4: 2f 0a     bra   $19b0
19a6: f5 58 02  mov   a,$0258+x
19a9: 5c        lsr   a
19aa: d5 00 02  mov   $0200+x,a
19ad: d5 08 02  mov   $0208+x,a
19b0: 6f        ret

19b1: e4 01     mov   a,$01
19b3: c4 2e     mov   $2e,a
19b5: e8 00     mov   a,#$00
19b7: c4 2d     mov   $2d,a
19b9: e8 80     mov   a,#$80
19bb: c4 2b     mov   $2b,a
19bd: 3f 37 1b  call  $1b37
19c0: e4 2d     mov   a,$2d
19c2: c4 29     mov   $29,a
19c4: e4 2e     mov   a,$2e
19c6: c4 2a     mov   $2a,a
19c8: e4 00     mov   a,$00
19ca: c4 27     mov   $27,a
19cc: 3f 05 1b  call  $1b05
19cf: 6f        ret

; vcmd f0 - volume
19d0: 8d 01     mov   y,#$01
19d2: f7 37     mov   a,($37)+y
19d4: f8 07     mov   x,$07
19d6: d5 58 02  mov   $0258+x,a
19d9: e8 02     mov   a,#$02
19db: 3f 9d 1a  call  $1a9d
19de: f8 07     mov   x,$07
19e0: f5 50 02  mov   a,$0250+x
19e3: c4 00     mov   $00,a
19e5: 3f 63 19  call  $1963
19e8: 6f        ret

; vcmd f9 - transpose
19e9: e4 07     mov   a,$07
19eb: 5d        mov   x,a
19ec: 8d 01     mov   y,#$01
19ee: f7 37     mov   a,($37)+y
19f0: d5 40 02  mov   $0240+x,a
19f3: e8 02     mov   a,#$02
19f5: 3f 9d 1a  call  $1a9d
19f8: 6f        ret

; vcmd fa - tempo
19f9: 8d 01     mov   y,#$01
19fb: f7 37     mov   a,($37)+y
19fd: c4 00     mov   $00,a
19ff: f8 07     mov   x,$07
1a01: f5 0d 04  mov   a,$040d+x
1a04: c4 01     mov   $01,a
1a06: f5 05 04  mov   a,$0405+x
1a09: c4 02     mov   $02,a
1a0b: cd 00     mov   x,#$00
1a0d: 8d 00     mov   y,#$00
1a0f: f7 01     mov   a,($01)+y
1a11: c4 03     mov   $03,a
1a13: fc        inc   y
1a14: f7 01     mov   a,($01)+y
1a16: d0 04     bne   $1a1c
1a18: e4 03     mov   a,$03
1a1a: f0 05     beq   $1a21
1a1c: e4 00     mov   a,$00
1a1e: d5 48 02  mov   $0248+x,a
1a21: fc        inc   y
1a22: 3d        inc   x
1a23: c8 08     cmp   x,#$08
1a25: d0 e8     bne   $1a0f
1a27: e8 02     mov   a,#$02
1a29: 3f 9d 1a  call  $1a9d
1a2c: 6f        ret

; vcmd ce - tie state
1a2d: f8 07     mov   x,$07
1a2f: f5 6d 02  mov   a,$026d+x
1a32: 08 07     or    a,#$07
1a34: d5 6d 02  mov   $026d+x,a
1a37: e8 01     mov   a,#$01
1a39: 3f 9d 1a  call  $1a9d
1a3c: 6f        ret

1a3d: e8 00     mov   a,#$00
1a3f: c4 07     mov   $07,a
1a41: 3f 56 1a  call  $1a56
1a44: 3f ba 16  call  $16ba
1a47: ab 07     inc   $07
1a49: e4 07     mov   a,$07
1a4b: 68 08     cmp   a,#$08
1a4d: d0 f2     bne   $1a41
1a4f: e8 00     mov   a,#$00
1a51: c4 1e     mov   $1e,a
1a53: c4 1b     mov   $1b,a
1a55: 6f        ret

1a56: f8 07     mov   x,$07
1a58: e8 00     mov   a,#$00
1a5a: d4 63     mov   $63+x,a
1a5c: d4 6b     mov   $6b+x,a
1a5e: d5 38 02  mov   $0238+x,a
1a61: e4 07     mov   a,$07
1a63: 3f fb 1a  call  $1afb
1a66: 04 19     or    a,$19
1a68: c4 19     mov   $19,a
1a6a: 6f        ret

; vcmd f7 - slur on
1a6b: f8 07     mov   x,$07
1a6d: e8 10     mov   a,#$10
1a6f: 48 ff     eor   a,#$ff
1a71: 35 6d 02  and   a,$026d+x
1a74: d5 6d 02  mov   $026d+x,a
1a77: e8 01     mov   a,#$01
1a79: 3f 9d 1a  call  $1a9d
1a7c: 6f        ret

; vcmd f8 - slur off
1a7d: f8 07     mov   x,$07
1a7f: f5 6d 02  mov   a,$026d+x
1a82: 08 10     or    a,#$10
1a84: d5 6d 02  mov   $026d+x,a
1a87: e8 01     mov   a,#$01
1a89: 3f 9d 1a  call  $1a9d
1a8c: 6f        ret

; vcmd f1 - note on delay
1a8d: e4 07     mov   a,$07
1a8f: 5d        mov   x,a
1a90: 8d 01     mov   y,#$01
1a92: f7 37     mov   a,($37)+y
1a94: d5 f5 03  mov   $03f5+x,a
1a97: e8 02     mov   a,#$02
1a99: 3f 9d 1a  call  $1a9d
1a9c: 6f        ret

1a9d: c4 00     mov   $00,a
1a9f: e4 37     mov   a,$37
1aa1: 60        clrc
1aa2: 84 00     adc   a,$00
1aa4: c4 37     mov   $37,a
1aa6: e4 38     mov   a,$38
1aa8: 88 00     adc   a,#$00
1aaa: c4 38     mov   $38,a
1aac: 6f        ret

1aad: 2d        push  a
1aae: e4 07     mov   a,$07
1ab0: 1c        asl   a
1ab1: 5d        mov   x,a
1ab2: f4 49     mov   a,$49+x
1ab4: c4 61     mov   $61,a
1ab6: f4 4a     mov   a,$4a+x
1ab8: c4 62     mov   $62,a
1aba: f8 07     mov   x,$07
1abc: fb 59     mov   y,$59+x
1abe: cd 00     mov   x,#$00
1ac0: e4 00     mov   a,$00
1ac2: d7 61     mov   ($61)+y,a
1ac4: ae        pop   a
1ac5: c4 00     mov   $00,a
1ac7: 3d        inc   x
1ac8: fc        inc   y
1ac9: 3e 00     cmp   x,$00
1acb: f0 06     beq   $1ad3
1acd: f4 00     mov   a,$00+x
1acf: d7 61     mov   ($61)+y,a
1ad1: 2f f4     bra   $1ac7
1ad3: f8 07     mov   x,$07
1ad5: db 59     mov   $59+x,y
1ad7: 6f        ret

1ad8: 2d        push  a
1ad9: e4 07     mov   a,$07
1adb: 1c        asl   a
1adc: 5d        mov   x,a
1add: f4 49     mov   a,$49+x
1adf: c4 61     mov   $61,a
1ae1: f4 4a     mov   a,$4a+x
1ae3: c4 62     mov   $62,a
1ae5: f8 07     mov   x,$07
1ae7: fb 59     mov   y,$59+x
1ae9: dc        dec   y
1aea: ce        pop   x
1aeb: f7 61     mov   a,($61)+y
1aed: d4 ff     mov   $ff+x,a
1aef: 1d        dec   x
1af0: dc        dec   y
1af1: c8 00     cmp   x,#$00
1af3: d0 f6     bne   $1aeb
1af5: fc        inc   y
1af6: f8 07     mov   x,$07
1af8: db 59     mov   $59+x,y
1afa: 6f        ret

1afb: bc        inc   a
1afc: 5d        mov   x,a
1afd: e8 00     mov   a,#$00
1aff: 80        setc
1b00: 3c        rol   a
1b01: 1d        dec   x
1b02: d0 fc     bne   $1b00
1b04: 6f        ret

1b05: e4 27     mov   a,$27
1b07: eb 29     mov   y,$29
1b09: cf        mul   ya
1b0a: c4 29     mov   $29,a
1b0c: e4 27     mov   a,$27
1b0e: 6d        push  y
1b0f: eb 2a     mov   y,$2a
1b11: cf        mul   ya
1b12: ee        pop   y
1b13: cb 2a     mov   $2a,y
1b15: 60        clrc
1b16: 84 2a     adc   a,$2a
1b18: c4 2a     mov   $2a,a
1b1a: 6f        ret

1b1b: e4 27     mov   a,$27
1b1d: eb 29     mov   y,$29
1b1f: cf        mul   ya
1b20: c4 07     mov   $07,a
1b22: cb 06     mov   $06,y
1b24: e4 27     mov   a,$27
1b26: eb 2a     mov   y,$2a
1b28: cf        mul   ya
1b29: cb 05     mov   $05,y
1b2b: 60        clrc
1b2c: 84 06     adc   a,$06
1b2e: c4 06     mov   $06,a
1b30: e4 05     mov   a,$05
1b32: 88 00     adc   a,#$00
1b34: c4 05     mov   $05,a
1b36: 6f        ret

1b37: eb 2e     mov   y,$2e
1b39: e4 2d     mov   a,$2d
1b3b: f8 2b     mov   x,$2b
1b3d: 9e        div   ya,x
1b3e: c4 2d     mov   $2d,a
1b40: cb 2c     mov   $2c,y
1b42: 8d 00     mov   y,#$00
1b44: e4 2e     mov   a,$2e
1b46: f8 2b     mov   x,$2b
1b48: 9e        div   ya,x
1b49: c4 2e     mov   $2e,a
1b4b: 6f        ret

1b4c: e4 19     mov   a,$19
1b4e: 04 18     or    a,$18
1b50: 8d 5c     mov   y,#$5c
1b52: cc f2 00  mov   $00f2,y
1b55: c5 f3 00  mov   $00f3,a
1b58: 3f bf 1d  call  $1dbf
1b5b: 3f 7d 1b  call  $1b7d
1b5e: 3f a2 1b  call  $1ba2
1b61: 3f 27 1c  call  $1c27
1b64: 3f 35 1c  call  $1c35
1b67: 3f 43 1c  call  $1c43
1b6a: 3f 51 1c  call  $1c51
1b6d: 3f 5f 1c  call  $1c5f
1b70: 3f 6d 1c  call  $1c6d
1b73: 3f 91 1c  call  $1c91
1b76: 3f 0b 1c  call  $1c0b
1b79: 3f 19 1c  call  $1c19
1b7c: 6f        ret

1b7d: e4 11     mov   a,$11
1b7f: f0 10     beq   $1b91
1b81: 8b 11     dec   $11
1b83: d0 1c     bne   $1ba1
1b85: e4 1d     mov   a,$1d
1b87: f0 18     beq   $1ba1
1b89: e4 17     mov   a,$17
1b8b: 28 df     and   a,#$df
1b8d: c4 17     mov   $17,a
1b8f: 2f 10     bra   $1ba1
1b91: e4 12     mov   a,$12
1b93: f0 0c     beq   $1ba1
1b95: 8b 12     dec   $12
1b97: d0 08     bne   $1ba1
1b99: e5 6b 02  mov   a,$026b
1b9c: c4 00     mov   $00,a
1b9e: 3f ea 18  call  $18ea
1ba1: 6f        ret

1ba2: cd 00     mov   x,#$00
1ba4: f5 95 02  mov   a,$0295+x
1ba7: c4 00     mov   $00,a
1ba9: f5 9d 02  mov   a,$029d+x
1bac: c4 01     mov   $01,a
1bae: f5 85 02  mov   a,$0285+x
1bb1: 60        clrc
1bb2: 84 00     adc   a,$00
1bb4: d5 10 02  mov   $0210+x,a
1bb7: f5 8d 02  mov   a,$028d+x
1bba: 84 01     adc   a,$01
1bbc: d5 18 02  mov   $0218+x,a
1bbf: 3d        inc   x
1bc0: c8 08     cmp   x,#$08
1bc2: d0 e0     bne   $1ba4
1bc4: 6f        ret

1bc5: e4 18     mov   a,$18
1bc7: c4 00     mov   $00,a
1bc9: cd 00     mov   x,#$00
1bcb: 8d 00     mov   y,#$00
1bcd: e4 00     mov   a,$00
1bcf: 5c        lsr   a
1bd0: c4 00     mov   $00,a
1bd2: 90 13     bcc   $1be7
1bd4: 7d        mov   a,x
1bd5: c5 f2 00  mov   $00f2,a
1bd8: e8 00     mov   a,#$00
1bda: c5 f3 00  mov   $00f3,a
1bdd: 7d        mov   a,x
1bde: bc        inc   a
1bdf: c5 f2 00  mov   $00f2,a
1be2: e8 00     mov   a,#$00
1be4: c5 f3 00  mov   $00f3,a
1be7: 7d        mov   a,x
1be8: 60        clrc
1be9: 88 10     adc   a,#$10
1beb: 5d        mov   x,a
1bec: fc        inc   y
1bed: ad 08     cmp   y,#$08
1bef: d0 dc     bne   $1bcd
1bf1: 6f        ret

1bf2: 3f 27 1c  call  $1c27
1bf5: 3f 35 1c  call  $1c35
1bf8: 3f 43 1c  call  $1c43
1bfb: 3f 51 1c  call  $1c51
1bfe: 3f 5f 1c  call  $1c5f
1c01: 3f 6d 1c  call  $1c6d
1c04: 3f 0b 1c  call  $1c0b
1c07: 3f 19 1c  call  $1c19
1c0a: 6f        ret

1c0b: e8 00     mov   a,#$00
1c0d: c4 00     mov   $00,a
1c0f: e8 02     mov   a,#$02
1c11: c4 01     mov   $01,a
1c13: cd 00     mov   x,#$00
1c15: 3f 7b 1c  call  $1c7b
1c18: 6f        ret

1c19: e8 08     mov   a,#$08
1c1b: c4 00     mov   $00,a
1c1d: e8 02     mov   a,#$02
1c1f: c4 01     mov   $01,a
1c21: cd 01     mov   x,#$01
1c23: 3f 7b 1c  call  $1c7b
1c26: 6f        ret

1c27: e8 10     mov   a,#$10
1c29: c4 00     mov   $00,a
1c2b: e8 02     mov   a,#$02
1c2d: c4 01     mov   $01,a
1c2f: cd 02     mov   x,#$02
1c31: 3f 7b 1c  call  $1c7b
1c34: 6f        ret

1c35: e8 18     mov   a,#$18
1c37: c4 00     mov   $00,a
1c39: e8 02     mov   a,#$02
1c3b: c4 01     mov   $01,a
1c3d: cd 03     mov   x,#$03
1c3f: 3f 7b 1c  call  $1c7b
1c42: 6f        ret

1c43: e8 20     mov   a,#$20
1c45: c4 00     mov   $00,a
1c47: e8 02     mov   a,#$02
1c49: c4 01     mov   $01,a
1c4b: cd 04     mov   x,#$04
1c4d: 3f 7b 1c  call  $1c7b
1c50: 6f        ret

1c51: e8 28     mov   a,#$28
1c53: c4 00     mov   $00,a
1c55: e8 02     mov   a,#$02
1c57: c4 01     mov   $01,a
1c59: cd 05     mov   x,#$05
1c5b: 3f 7b 1c  call  $1c7b
1c5e: 6f        ret

1c5f: e8 30     mov   a,#$30
1c61: c4 00     mov   $00,a
1c63: e8 02     mov   a,#$02
1c65: c4 01     mov   $01,a
1c67: cd 06     mov   x,#$06
1c69: 3f 7b 1c  call  $1c7b
1c6c: 6f        ret

1c6d: e8 38     mov   a,#$38
1c6f: c4 00     mov   $00,a
1c71: e8 02     mov   a,#$02
1c73: c4 01     mov   $01,a
1c75: cd 07     mov   x,#$07
1c77: 3f 7b 1c  call  $1c7b
1c7a: 6f        ret

1c7b: 8d 00     mov   y,#$00
1c7d: 7d        mov   a,x
1c7e: c5 f2 00  mov   $00f2,a
1c81: f7 00     mov   a,($00)+y
1c83: c5 f3 00  mov   $00f3,a
1c86: 7d        mov   a,x
1c87: 60        clrc
1c88: 88 10     adc   a,#$10
1c8a: 5d        mov   x,a
1c8b: fc        inc   y
1c8c: ad 08     cmp   y,#$08
1c8e: d0 ed     bne   $1c7d
1c90: 6f        ret

1c91: e4 13     mov   a,$13
1c93: 8d 0c     mov   y,#$0c
1c95: cc f2 00  mov   $00f2,y
1c98: c5 f3 00  mov   $00f3,a
1c9b: e4 14     mov   a,$14
1c9d: 8d 1c     mov   y,#$1c
1c9f: cc f2 00  mov   $00f2,y
1ca2: c5 f3 00  mov   $00f3,a
1ca5: e4 11     mov   a,$11
1ca7: d0 24     bne   $1ccd
1ca9: e4 12     mov   a,$12
1cab: d0 20     bne   $1ccd
1cad: e4 15     mov   a,$15
1caf: 8d 2c     mov   y,#$2c
1cb1: cc f2 00  mov   $00f2,y
1cb4: c5 f3 00  mov   $00f3,a
1cb7: e4 16     mov   a,$16
1cb9: 8d 3c     mov   y,#$3c
1cbb: cc f2 00  mov   $00f2,y
1cbe: c5 f3 00  mov   $00f3,a
1cc1: e4 1b     mov   a,$1b
1cc3: 8d 0d     mov   y,#$0d
1cc5: cc f2 00  mov   $00f2,y
1cc8: c5 f3 00  mov   $00f3,a
1ccb: 2f 1c     bra   $1ce9
1ccd: e8 00     mov   a,#$00
1ccf: 8d 2c     mov   y,#$2c
1cd1: cc f2 00  mov   $00f2,y
1cd4: c5 f3 00  mov   $00f3,a
1cd7: 8d 3c     mov   y,#$3c
1cd9: cc f2 00  mov   $00f2,y
1cdc: c5 f3 00  mov   $00f3,a
1cdf: e8 00     mov   a,#$00
1ce1: 8d 0d     mov   y,#$0d
1ce3: cc f2 00  mov   $00f2,y
1ce6: c5 f3 00  mov   $00f3,a
1ce9: e4 11     mov   a,$11
1ceb: f0 0e     beq   $1cfb
1ced: e4 17     mov   a,$17
1cef: 08 20     or    a,#$20
1cf1: 8d 6c     mov   y,#$6c
1cf3: cc f2 00  mov   $00f2,y
1cf6: c5 f3 00  mov   $00f3,a
1cf9: 2f 0a     bra   $1d05
1cfb: e4 17     mov   a,$17
1cfd: 8d 6c     mov   y,#$6c
1cff: cc f2 00  mov   $00f2,y
1d02: c5 f3 00  mov   $00f3,a
1d05: e4 1c     mov   a,$1c
1d07: 8d 3d     mov   y,#$3d
1d09: cc f2 00  mov   $00f2,y
1d0c: c5 f3 00  mov   $00f3,a
1d0f: e4 11     mov   a,$11
1d11: d0 10     bne   $1d23
1d13: e4 12     mov   a,$12
1d15: d0 0c     bne   $1d23
1d17: e4 1d     mov   a,$1d
1d19: 8d 4d     mov   y,#$4d
1d1b: cc f2 00  mov   $00f2,y
1d1e: c5 f3 00  mov   $00f3,a
1d21: 2f 0a     bra   $1d2d
1d23: e8 00     mov   a,#$00
1d25: 8d 4d     mov   y,#$4d
1d27: cc f2 00  mov   $00f2,y
1d2a: c5 f3 00  mov   $00f3,a
1d2d: e4 1e     mov   a,$1e
1d2f: 8d 7d     mov   y,#$7d
1d31: cc f2 00  mov   $00f2,y
1d34: c5 f3 00  mov   $00f3,a
1d37: e4 1f     mov   a,$1f
1d39: 8d 0f     mov   y,#$0f
1d3b: cc f2 00  mov   $00f2,y
1d3e: c5 f3 00  mov   $00f3,a
1d41: e4 20     mov   a,$20
1d43: 8d 1f     mov   y,#$1f
1d45: cc f2 00  mov   $00f2,y
1d48: c5 f3 00  mov   $00f3,a
1d4b: e4 21     mov   a,$21
1d4d: 8d 2f     mov   y,#$2f
1d4f: cc f2 00  mov   $00f2,y
1d52: c5 f3 00  mov   $00f3,a
1d55: e4 22     mov   a,$22
1d57: 8d 3f     mov   y,#$3f
1d59: cc f2 00  mov   $00f2,y
1d5c: c5 f3 00  mov   $00f3,a
1d5f: e4 23     mov   a,$23
1d61: 8d 4f     mov   y,#$4f
1d63: cc f2 00  mov   $00f2,y
1d66: c5 f3 00  mov   $00f3,a
1d69: e4 24     mov   a,$24
1d6b: 8d 5f     mov   y,#$5f
1d6d: cc f2 00  mov   $00f2,y
1d70: c5 f3 00  mov   $00f3,a
1d73: e4 25     mov   a,$25
1d75: 8d 6f     mov   y,#$6f
1d77: cc f2 00  mov   $00f2,y
1d7a: c5 f3 00  mov   $00f3,a
1d7d: e4 26     mov   a,$26
1d7f: 8d 7f     mov   y,#$7f
1d81: cc f2 00  mov   $00f2,y
1d84: c5 f3 00  mov   $00f3,a
1d87: e4 1a     mov   a,$1a
1d89: f0 14     beq   $1d9f
1d8b: e8 00     mov   a,#$00
1d8d: 8d 5c     mov   y,#$5c
1d8f: cc f2 00  mov   $00f2,y
1d92: c5 f3 00  mov   $00f3,a
1d95: e4 1a     mov   a,$1a
1d97: 8d 4c     mov   y,#$4c
1d99: cc f2 00  mov   $00f2,y
1d9c: c5 f3 00  mov   $00f3,a
1d9f: e4 1a     mov   a,$1a
1da1: 48 ff     eor   a,#$ff
1da3: 24 18     and   a,$18
1da5: c4 18     mov   $18,a
1da7: e8 00     mov   a,#$00
1da9: c4 19     mov   $19,a
1dab: 6f        ret

1dac: e4 19     mov   a,$19
1dae: 04 18     or    a,$18
1db0: f0 08     beq   $1dba
1db2: 8d 5c     mov   y,#$5c
1db4: cc f2 00  mov   $00f2,y
1db7: c5 f3 00  mov   $00f3,a
1dba: e8 00     mov   a,#$00
1dbc: c4 19     mov   $19,a
1dbe: 6f        ret

1dbf: e8 00     mov   a,#$00
1dc1: c4 1a     mov   $1a,a
1dc3: e8 01     mov   a,#$01
1dc5: c4 00     mov   $00,a
1dc7: cd 00     mov   x,#$00
1dc9: f5 fd 03  mov   a,$03fd+x
1dcc: d0 0e     bne   $1ddc
1dce: e4 18     mov   a,$18
1dd0: 24 00     and   a,$00
1dd2: f0 0f     beq   $1de3
1dd4: e4 1a     mov   a,$1a
1dd6: 04 00     or    a,$00
1dd8: c4 1a     mov   $1a,a
1dda: 2f 07     bra   $1de3
1ddc: f5 fd 03  mov   a,$03fd+x
1ddf: 9c        dec   a
1de0: d5 fd 03  mov   $03fd+x,a
1de3: 0b 00     asl   $00
1de5: 3d        inc   x
1de6: c8 08     cmp   x,#$08
1de8: d0 df     bne   $1dc9
1dea: 6f        ret

