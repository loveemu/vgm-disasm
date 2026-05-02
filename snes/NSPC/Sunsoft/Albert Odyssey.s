0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 e0     mov   a,#$e0
0806: 8d 6c     mov   y,#$6c
0808: 3f 2e 0c  call  $0c2e
080b: e8 00     mov   a,#$00
080d: 5d        mov   x,a
080e: af        mov   (x)+,a
080f: c8 e0     cmp   x,#$e0
0811: d0 fb     bne   $080e
0813: fd        mov   y,a
0814: c4 14     mov   $14,a
0816: 8f 02 15  mov   $15,#$02
0819: d7 14     mov   ($14)+y,a
081b: 3a 14     incw  $14
081d: 78 06 15  cmp   $15,#$06
0820: d0 f7     bne   $0819
0822: 3f f3 09  call  $09f3
0825: e8 03     mov   a,#$03
0827: c5 00 04  mov   $0400,a
082a: e8 f0     mov   a,#$f0
082c: c5 f1 00  mov   $00f1,a
082f: e8 10     mov   a,#$10
0831: c5 fa 00  mov   $00fa,a
0834: c4 53     mov   $53,a
0836: e8 01     mov   a,#$01
0838: c5 f1 00  mov   $00f1,a
083b: e8 00     mov   a,#$00
083d: c4 f4     mov   $f4,a
083f: c4 f5     mov   $f5,a
0841: c4 f6     mov   $f6,a
0843: c4 f7     mov   $f7,a
0845: e5 d1 03  mov   a,$03d1
0848: f0 23     beq   $086d
084a: e5 d4 03  mov   a,$03d4
084d: 04 46     or    a,$46
084f: c5 d4 03  mov   $03d4,a
0852: e5 d2 03  mov   a,$03d2
0855: 04 45     or    a,$45
0857: c4 45     mov   $45,a
0859: 48 ff     eor   a,#$ff
085b: fd        mov   y,a
085c: 25 d4 03  and   a,$03d4
085f: c4 46     mov   $46,a
0861: dd        mov   a,y
0862: 25 d3 03  and   a,$03d3
0865: c5 d4 03  mov   $03d4,a
0868: e8 00     mov   a,#$00
086a: c5 d1 03  mov   $03d1,a
086d: 8d 0a     mov   y,#$0a
086f: ad 05     cmp   y,#$05
0871: f0 07     beq   $087a
0873: b0 08     bcs   $087d
0875: 69 4d 4c  cmp   ($4c),($4d)
0878: d0 11     bne   $088b
087a: e3 4c 0e  bbs7  $4c,$088b
087d: f6 71 1e  mov   a,$1e71+y
0880: c5 f2 00  mov   $00f2,a
0883: f6 7b 1e  mov   a,$1e7b+y
0886: 5d        mov   x,a
0887: e6        mov   a,(x)
0888: c5 f3 00  mov   $00f3,a
088b: fe e2     dbnz  y,$086f
088d: cb 45     mov   $45,y
088f: cb 46     mov   $46,y
0891: e4 18     mov   a,$18
0893: 44 19     eor   a,$19
0895: 5c        lsr   a
0896: 5c        lsr   a
0897: ed        notc
0898: 6b 18     ror   $18
089a: 6b 19     ror   $19
089c: ec fd 00  mov   y,$00fd
089f: f0 fb     beq   $089c
08a1: 6d        push  y
08a2: e8 20     mov   a,#$20
08a4: cf        mul   ya
08a5: 60        clrc
08a6: 84 43     adc   a,$43
08a8: c4 43     mov   $43,a
08aa: 90 07     bcc   $08b3
08ac: 69 4d 4c  cmp   ($4c),($4d)
08af: f0 02     beq   $08b3
08b1: ab 4c     inc   $4c
08b3: e4 53     mov   a,$53
08b5: ee        pop   y
08b6: cf        mul   ya
08b7: 60        clrc
08b8: 84 51     adc   a,$51
08ba: c4 51     mov   $51,a
08bc: 90 56     bcc   $0914
08be: e5 00 04  mov   a,$0400
08c1: f0 06     beq   $08c9
08c3: 8c 00 04  dec   $0400
08c6: 5f 45 08  jmp   $0845

08c9: e8 ff     mov   a,#$ff
08cb: c5 d1 03  mov   $03d1,a
08ce: e8 00     mov   a,#$00
08d0: c5 d2 03  mov   $03d2,a
08d3: c5 d3 03  mov   $03d3,a
08d6: 3f 6f 09  call  $096f
08d9: 3f 2c 1d  call  $1d2c
08dc: 3f 73 15  call  $1573
08df: e4 05     mov   a,$05
08e1: 04 06     or    a,$06
08e3: f0 03     beq   $08e8
08e5: 3f 95 16  call  $1695
08e8: e4 5e     mov   a,$5e
08ea: c5 05 04  mov   $0405,a
08ed: 3f a1 0c  call  $0ca1
08f0: e4 5e     mov   a,$5e
08f2: c5 c0 03  mov   $03c0,a
08f5: cd 00     mov   x,#$00
08f7: 3f 58 09  call  $0958
08fa: cd 01     mov   x,#$01
08fc: 3f 58 09  call  $0958
08ff: cd 02     mov   x,#$02
0901: 3f 58 09  call  $0958
0904: cd 03     mov   x,#$03
0906: 3f 58 09  call  $0958
0909: ac 4f 00  inc   $004f
090c: e5 4f 00  mov   a,$004f
090f: c4 07     mov   $07,a
0911: 5f 45 08  jmp   $0845

0914: e5 05 04  mov   a,$0405
0917: c4 5e     mov   $5e,a
0919: cd 00     mov   x,#$00
091b: e4 05     mov   a,$05
091d: f0 01     beq   $0920
091f: 3d        inc   x
0920: e4 06     mov   a,$06
0922: f0 01     beq   $0925
0924: 3d        inc   x
0925: 7d        mov   a,x
0926: f0 12     beq   $093a
0928: cd 00     mov   x,#$00
092a: 8f 01 47  mov   $47,#$01
092d: f4 21     mov   a,$21+x
092f: f0 03     beq   $0934
0931: 3f 41 1b  call  $1b41
0934: 3d        inc   x
0935: 3d        inc   x
0936: 0b 47     asl   $47
0938: d0 f3     bne   $092d
093a: e5 c0 03  mov   a,$03c0
093d: c4 5e     mov   $5e,a
093f: e4 04     mov   a,$04
0941: f0 12     beq   $0955
0943: cd 00     mov   x,#$00
0945: 8f 01 47  mov   $47,#$01
0948: f4 31     mov   a,$31+x
094a: f0 03     beq   $094f
094c: 3f 99 12  call  $1299
094f: 3d        inc   x
0950: 3d        inc   x
0951: 0b 47     asl   $47
0953: d0 f3     bne   $0948
0955: 5f 45 08  jmp   $0845

0958: f5 b0 03  mov   a,$03b0+x
095b: d5 b4 03  mov   $03b4+x,a
095e: f4 04     mov   a,$04+x
0960: d5 f4 00  mov   $00f4+x,a
0963: f5 f4 00  mov   a,$00f4+x
0966: 75 f4 00  cmp   a,$00f4+x
0969: d0 f8     bne   $0963
096b: d5 b0 03  mov   $03b0+x,a
096e: 6f        ret

096f: e5 d5 03  mov   a,$03d5
0972: f0 12     beq   $0986
0974: 9c        dec   a
0975: 68 01     cmp   a,#$01
0977: f0 05     beq   $097e
0979: c5 d5 03  mov   $03d5,a
097c: 2f 08     bra   $0986
097e: 3f c1 0a  call  $0ac1
0981: e8 00     mov   a,#$00
0983: c5 d5 03  mov   $03d5,a
0986: e5 b0 03  mov   a,$03b0
0989: 65 b4 03  cmp   a,$03b4
098c: f0 08     beq   $0996
098e: 28 7f     and   a,#$7f
0990: c4 00     mov   $00,a
0992: e8 ff     mov   a,#$ff
0994: c4 08     mov   $08,a
0996: e5 b1 03  mov   a,$03b1
0999: 65 b5 03  cmp   a,$03b5
099c: f0 0b     beq   $09a9
099e: 28 7f     and   a,#$7f
09a0: 68 6f     cmp   a,#$6f
09a2: b0 07     bcs   $09ab
09a4: c4 01     mov   $01,a
09a6: 8f ff 09  mov   $09,#$ff
09a9: 2f 03     bra   $09ae
09ab: 3f c6 09  call  $09c6
09ae: e5 b2 03  mov   a,$03b2
09b1: 65 b6 03  cmp   a,$03b6
09b4: f0 0b     beq   $09c1
09b6: 28 7f     and   a,#$7f
09b8: 68 6f     cmp   a,#$6f
09ba: b0 06     bcs   $09c2
09bc: c4 02     mov   $02,a
09be: 8f ff 0a  mov   $0a,#$ff
09c1: 6f        ret

09c2: 3f c6 09  call  $09c6
09c5: 6f        ret

09c6: 28 0f     and   a,#$0f
09c8: 1c        asl   a
09c9: 5d        mov   x,a
09ca: f5 d4 09  mov   a,$09d4+x
09cd: 2d        push  a
09ce: f5 d3 09  mov   a,$09d3+x
09d1: 2d        push  a
09d2: 6f        ret

09d3: f3 09 84  bbc7  $09,$095a
09d6: 0a 8b 0a  or1   c,$0a8b,0
09d9: 99        adc   (x),(y)
09da: 0a 9f 0a  or1   c,$0a9f,0
09dd: a5 0a b1  sbc   a,$b10a
09e0: 0a b7 0a  or1   c,$0ab7,0
09e3: dc        dec   y
09e4: 0a e2 0a  or1   c,$0ae2,0
09e7: f6 0a 14  mov   a,$140a+y
09ea: 0b 32     asl   $32
09ec: 0b 32     asl   $32
09ee: 0b 32     asl   $32
09f0: 0b 14     asl   $14
09f2: 0a e8 e0  or1   c,$00e8,7
09f5: 8d 6c     mov   y,#$6c
09f7: 3f 2e 0c  call  $0c2e
09fa: e8 00     mov   a,#$00
09fc: 3f b2 0f  call  $0fb2
09ff: a2 48     set5  $48
0a01: e8 7f     mov   a,#$7f
0a03: 8d 0c     mov   y,#$0c
0a05: 3f 2e 0c  call  $0c2e
0a08: 8d 1c     mov   y,#$1c
0a0a: 3f 2e 0c  call  $0c2e
0a0d: e8 20     mov   a,#$20
0a0f: 8d 5d     mov   y,#$5d
0a11: 3f 2e 0c  call  $0c2e
0a14: e8 c0     mov   a,#$c0
0a16: c4 59     mov   $59,a
0a18: c5 bb 03  mov   $03bb,a
0a1b: e8 b4     mov   a,#$b4
0a1d: c5 ba 03  mov   $03ba,a
0a20: 8f 20 53  mov   $53,#$20
0a23: e8 00     mov   a,#$00
0a25: c5 b8 03  mov   $03b8,a
0a28: c4 00     mov   $00,a
0a2a: c4 01     mov   $01,a
0a2c: c4 02     mov   $02,a
0a2e: c4 03     mov   $03,a
0a30: c5 b0 03  mov   $03b0,a
0a33: c5 b1 03  mov   $03b1,a
0a36: c5 b2 03  mov   $03b2,a
0a39: c5 b3 03  mov   $03b3,a
0a3c: c5 b4 03  mov   $03b4,a
0a3f: c5 b5 03  mov   $03b5,a
0a42: c5 b6 03  mov   $03b6,a
0a45: c5 b7 03  mov   $03b7,a
0a48: c4 5a     mov   $5a,a
0a4a: c4 68     mov   $68,a
0a4c: c4 54     mov   $54,a
0a4e: c4 50     mov   $50,a
0a50: c5 03 04  mov   $0403,a
0a53: c4 42     mov   $42,a
0a55: c5 02 04  mov   $0402,a
0a58: c5 e0 05  mov   $05e0,a
0a5b: c4 5f     mov   $5f,a
0a5d: c5 bc 03  mov   $03bc,a
0a60: c5 bd 03  mov   $03bd,a
0a63: c5 be 03  mov   $03be,a
0a66: c5 bf 03  mov   $03bf,a
0a69: c5 d5 03  mov   $03d5,a
0a6c: e8 0a     mov   a,#$0a
0a6e: c5 06 04  mov   $0406,a
0a71: c5 e3 05  mov   $05e3,a
0a74: e8 ff     mov   a,#$ff
0a76: c5 b9 03  mov   $03b9,a
0a79: e8 c0     mov   a,#$c0
0a7b: c5 04 04  mov   $0404,a
0a7e: e8 f1     mov   a,#$f1
0a80: c5 f1 00  mov   $00f1,a
0a83: 6f        ret

0a84: e5 b3 03  mov   a,$03b3
0a87: 3f cf 0e  call  $0ecf
0a8a: 6f        ret

0a8b: ec b3 03  mov   y,$03b3
0a8e: dd        mov   a,y
0a8f: 3f a1 0e  call  $0ea1
0a92: e5 b3 03  mov   a,$03b3
0a95: c5 bb 03  mov   $03bb,a
0a98: 6f        ret

0a99: e8 00     mov   a,#$00
0a9b: c5 b8 03  mov   $03b8,a
0a9e: 6f        ret

0a9f: e8 ff     mov   a,#$ff
0aa1: c5 b8 03  mov   $03b8,a
0aa4: 6f        ret

0aa5: e8 ff     mov   a,#$ff
0aa7: c5 b9 03  mov   $03b9,a
0aaa: e5 b3 03  mov   a,$03b3
0aad: c5 04 04  mov   $0404,a
0ab0: 6f        ret

0ab1: e8 00     mov   a,#$00
0ab3: c5 b9 03  mov   $03b9,a
0ab6: 6f        ret

0ab7: e5 b3 03  mov   a,$03b3
0aba: d0 01     bne   $0abd
0abc: bc        inc   a
0abd: c5 ba 03  mov   $03ba,a
0ac0: 6f        ret

0ac1: 8d 00     mov   y,#$00
0ac3: dd        mov   a,y
0ac4: 3f a1 0e  call  $0ea1
0ac7: e5 ba 03  mov   a,$03ba
0aca: c4 5a     mov   $5a,a
0acc: e5 bb 03  mov   a,$03bb
0acf: c4 5b     mov   $5b,a
0ad1: 80        setc
0ad2: a4 59     sbc   a,$59
0ad4: f8 5a     mov   x,$5a
0ad6: 3f 42 10  call  $1042
0ad9: da 5c     movw  $5c,ya
0adb: 6f        ret

0adc: e8 03     mov   a,#$03
0ade: c5 d5 03  mov   $03d5,a
0ae1: 6f        ret

0ae2: e5 ba 03  mov   a,$03ba
0ae5: c4 5a     mov   $5a,a
0ae7: e8 00     mov   a,#$00
0ae9: c4 5b     mov   $5b,a
0aeb: 80        setc
0aec: a4 59     sbc   a,$59
0aee: f8 5a     mov   x,$5a
0af0: 3f 42 10  call  $1042
0af3: da 5c     movw  $5c,ya
0af5: 6f        ret

0af6: e5 b3 03  mov   a,$03b3
0af9: c5 06 04  mov   $0406,a
0afc: cd 00     mov   x,#$00
0afe: 8f 01 47  mov   $47,#$01
0b01: e4 47     mov   a,$47
0b03: 24 1b     and   a,$1b
0b05: f0 06     beq   $0b0d
0b07: e5 e3 05  mov   a,$05e3
0b0a: 3f 18 17  call  $1718
0b0d: 3d        inc   x
0b0e: 3d        inc   x
0b0f: 0b 47     asl   $47
0b11: d0 ee     bne   $0b01
0b13: 6f        ret

0b14: e5 b3 03  mov   a,$03b3
0b17: c5 e3 05  mov   $05e3,a
0b1a: cd 00     mov   x,#$00
0b1c: 8f 01 47  mov   $47,#$01
0b1f: e4 47     mov   a,$47
0b21: 24 6d     and   a,$6d
0b23: f0 06     beq   $0b2b
0b25: e5 e3 05  mov   a,$05e3
0b28: 3f 18 17  call  $1718
0b2b: 3d        inc   x
0b2c: 3d        inc   x
0b2d: 0b 47     asl   $47
0b2f: d0 ee     bne   $0b1f
0b31: 6f        ret

0b32: 6f        ret

0b33: 6f        ret

; handle a note vcmd (80-df) (music)
0b34: ad ca     cmp   y,#$ca
0b36: 90 05     bcc   $0b3d
0b38: 3f fa 0d  call  $0dfa
0b3b: 8d a4     mov   y,#$a4
0b3d: ad c8     cmp   y,#$c8
0b3f: b0 f2     bcs   $0b33
0b41: e4 1a     mov   a,$1a
0b43: 24 47     and   a,$47
0b45: d0 ec     bne   $0b33
0b47: dd        mov   a,y
0b48: 28 7f     and   a,#$7f
0b4a: 60        clrc
0b4b: 84 50     adc   a,$50
0b4d: 60        clrc
0b4e: 95 e1 02  adc   a,$02e1+x
0b51: d5 61 03  mov   $0361+x,a
0b54: f5 81 03  mov   a,$0381+x
0b57: d5 60 03  mov   $0360+x,a
0b5a: f5 b1 02  mov   a,$02b1+x
0b5d: 5c        lsr   a
0b5e: e8 00     mov   a,#$00
0b60: 7c        ror   a
0b61: d5 a0 02  mov   $02a0+x,a
0b64: e8 00     mov   a,#$00
0b66: d4 b0     mov   $b0+x,a
0b68: d5 00 01  mov   $0100+x,a
0b6b: d5 d0 02  mov   $02d0+x,a
0b6e: d4 c0     mov   $c0+x,a
0b70: 09 47 5e  or    ($5e),($47)
0b73: e5 d2 03  mov   a,$03d2
0b76: 04 47     or    a,$47
0b78: c5 d2 03  mov   $03d2,a
0b7b: f5 80 02  mov   a,$0280+x
0b7e: d4 a0     mov   $a0+x,a
0b80: f0 1e     beq   $0ba0
0b82: f5 81 02  mov   a,$0281+x
0b85: d4 a1     mov   $a1+x,a
0b87: f5 90 02  mov   a,$0290+x
0b8a: d0 0a     bne   $0b96
0b8c: f5 61 03  mov   a,$0361+x
0b8f: 80        setc
0b90: b5 91 02  sbc   a,$0291+x
0b93: d5 61 03  mov   $0361+x,a
0b96: f5 91 02  mov   a,$0291+x
0b99: 60        clrc
0b9a: 95 61 03  adc   a,$0361+x
0b9d: 3f 1f 10  call  $101f
0ba0: 3f 37 10  call  $1037
0ba3: 8d 00     mov   y,#$00
0ba5: e4 11     mov   a,$11
0ba7: 80        setc
0ba8: a8 34     sbc   a,#$34
0baa: b0 09     bcs   $0bb5
0bac: e4 11     mov   a,$11
0bae: 80        setc
0baf: a8 13     sbc   a,#$13
0bb1: b0 06     bcs   $0bb9
0bb3: dc        dec   y
0bb4: 1c        asl   a
0bb5: 7a 10     addw  ya,$10
0bb7: da 10     movw  $10,ya
0bb9: 4d        push  x
0bba: e4 11     mov   a,$11
0bbc: 1c        asl   a
0bbd: 8d 00     mov   y,#$00
0bbf: cd 18     mov   x,#$18
0bc1: 9e        div   ya,x
0bc2: 5d        mov   x,a
0bc3: f6 87 1e  mov   a,$1e87+y
0bc6: c4 15     mov   $15,a
0bc8: f6 86 1e  mov   a,$1e86+y
0bcb: c4 14     mov   $14,a
0bcd: f6 89 1e  mov   a,$1e89+y
0bd0: 2d        push  a
0bd1: f6 88 1e  mov   a,$1e88+y
0bd4: ee        pop   y
0bd5: 9a 14     subw  ya,$14
0bd7: eb 10     mov   y,$10
0bd9: cf        mul   ya
0bda: dd        mov   a,y
0bdb: 8d 00     mov   y,#$00
0bdd: 7a 14     addw  ya,$14
0bdf: cb 15     mov   $15,y
0be1: 1c        asl   a
0be2: 2b 15     rol   $15
0be4: c4 14     mov   $14,a
0be6: 2f 04     bra   $0bec
0be8: 4b 15     lsr   $15
0bea: 7c        ror   a
0beb: 3d        inc   x
0bec: c8 06     cmp   x,#$06
0bee: d0 f8     bne   $0be8
0bf0: c4 14     mov   $14,a
0bf2: ce        pop   x
0bf3: f5 20 02  mov   a,$0220+x
0bf6: eb 15     mov   y,$15
0bf8: cf        mul   ya
0bf9: da 16     movw  $16,ya
0bfb: f5 20 02  mov   a,$0220+x
0bfe: eb 14     mov   y,$14
0c00: cf        mul   ya
0c01: 6d        push  y
0c02: f5 21 02  mov   a,$0221+x
0c05: eb 14     mov   y,$14
0c07: cf        mul   ya
0c08: 7a 16     addw  ya,$16
0c0a: da 16     movw  $16,ya
0c0c: f5 21 02  mov   a,$0221+x
0c0f: eb 15     mov   y,$15
0c11: cf        mul   ya
0c12: fd        mov   y,a
0c13: ae        pop   a
0c14: 7a 16     addw  ya,$16
0c16: da 16     movw  $16,ya
0c18: 7d        mov   a,x
0c19: 9f        xcn   a
0c1a: 5c        lsr   a
0c1b: 08 02     or    a,#$02
0c1d: fd        mov   y,a
0c1e: e4 16     mov   a,$16
0c20: 3f 26 0c  call  $0c26
0c23: fc        inc   y
0c24: e4 17     mov   a,$17
0c26: 2d        push  a
0c27: e4 47     mov   a,$47
0c29: 24 1a     and   a,$1a
0c2b: ae        pop   a
0c2c: d0 06     bne   $0c34
0c2e: cc f2 00  mov   $00f2,y
0c31: c5 f3 00  mov   $00f3,a
0c34: 6f        ret

; read $40/1 into YA with advancing the ptr
0c35: 8d 00     mov   y,#$00
0c37: f7 40     mov   a,($40)+y
0c39: 3a 40     incw  $40
0c3b: 2d        push  a
0c3c: f7 40     mov   a,($40)+y
0c3e: 3a 40     incw  $40
0c40: fd        mov   y,a
0c41: ae        pop   a
0c42: 6f        ret

; play song in A
0c43: e8 ff     mov   a,#$ff
0c45: 8d 5c     mov   y,#$5c
0c47: cc f2 00  mov   $00f2,y
0c4a: c5 f3 00  mov   $00f3,a
0c4d: 3f ab 1e  call  $1eab
0c50: 3f 14 0a  call  $0a14
0c53: e8 00     mov   a,#$00
0c55: c4 08     mov   $08,a
0c57: c4 04     mov   $04,a
0c59: 1c        asl   a
0c5a: f0 0d     beq   $0c69
0c5c: 5d        mov   x,a
0c5d: f5 ff 9f  mov   a,$9fff+x
0c60: fd        mov   y,a
0c61: f5 fe 9f  mov   a,$9ffe+x
0c64: da 40     movw  $40,ya
0c66: 8f 02 0c  mov   $0c,#$02
0c69: e4 1a     mov   a,$1a
0c6b: 48 ff     eor   a,#$ff
0c6d: 0e 46 00  tset1 $0046
0c70: 6f        ret

; reset song params
0c71: cd 0e     mov   x,#$0e
0c73: 8f 80 47  mov   $47,#$80
0c76: e8 ff     mov   a,#$ff
0c78: d5 91 03  mov   $0391+x,a
0c7b: e8 0a     mov   a,#$0a
0c7d: 3f 53 0e  call  $0e53
0c80: d5 11 02  mov   $0211+x,a
0c83: d5 81 03  mov   $0381+x,a
0c86: d5 e1 02  mov   $02e1+x,a
0c89: d5 80 02  mov   $0280+x,a
0c8c: d4 b1     mov   $b1+x,a
0c8e: d4 c1     mov   $c1+x,a
0c90: 1d        dec   x
0c91: 1d        dec   x
0c92: 4b 47     lsr   $47
0c94: d0 e0     bne   $0c76
0c96: c4 5a     mov   $5a,a
0c98: c4 68     mov   $68,a
0c9a: c4 54     mov   $54,a
0c9c: c4 42     mov   $42,a
0c9e: c4 5f     mov   $5f,a
0ca0: 6f        ret

0ca1: eb 08     mov   y,$08
0ca3: e4 00     mov   a,$00
0ca5: c4 08     mov   $08,a
0ca7: 68 7d     cmp   a,#$7d
0ca9: f0 be     beq   $0c69
0cab: 68 7e     cmp   a,#$7e
0cad: f0 08     beq   $0cb7
0caf: 68 7f     cmp   a,#$7f
0cb1: f0 90     beq   $0c43
0cb3: 7e 00     cmp   y,$00
0cb5: d0 a0     bne   $0c57
0cb7: e4 04     mov   a,$04
0cb9: f0 e5     beq   $0ca0
0cbb: e4 0c     mov   a,$0c
0cbd: f0 4e     beq   $0d0d
0cbf: 6e 0c af  dbnz  $0c,$0c71
0cc2: 3f 35 0c  call  $0c35
0cc5: d0 14     bne   $0cdb
0cc7: fd        mov   y,a
0cc8: f0 8d     beq   $0c57
0cca: 8b 42     dec   $42
0ccc: 10 02     bpl   $0cd0
0cce: c4 42     mov   $42,a
0cd0: 3f 35 0c  call  $0c35
0cd3: f8 42     mov   x,$42
0cd5: f0 eb     beq   $0cc2
0cd7: da 40     movw  $40,ya
0cd9: 2f e7     bra   $0cc2
0cdb: da 16     movw  $16,ya
0cdd: 8d 0f     mov   y,#$0f
0cdf: f7 16     mov   a,($16)+y
0ce1: d6 30 00  mov   $0030+y,a
0ce4: dc        dec   y
0ce5: 10 f8     bpl   $0cdf
0ce7: cd 00     mov   x,#$00
0ce9: 8f 01 47  mov   $47,#$01
0cec: f4 31     mov   a,$31+x
0cee: f0 0a     beq   $0cfa
0cf0: f5 11 02  mov   a,$0211+x
0cf3: d0 05     bne   $0cfa
0cf5: e8 00     mov   a,#$00
0cf7: 3f fa 0d  call  $0dfa
0cfa: e8 00     mov   a,#$00
0cfc: d5 60 02  mov   $0260+x,a
0cff: d4 90     mov   $90+x,a
0d01: d4 91     mov   $91+x,a
0d03: bc        inc   a
0d04: d5 50 02  mov   $0250+x,a
0d07: 3d        inc   x
0d08: 3d        inc   x
0d09: 0b 47     asl   $47
0d0b: d0 df     bne   $0cec
0d0d: cd 00     mov   x,#$00
0d0f: d8 5e     mov   $5e,x
0d11: 8f 01 47  mov   $47,#$01
0d14: d8 44     mov   $44,x
0d16: f4 31     mov   a,$31+x
0d18: f0 71     beq   $0d8b
0d1a: f5 50 02  mov   a,$0250+x
0d1d: 9c        dec   a
0d1e: d5 50 02  mov   $0250+x,a
0d21: d0 62     bne   $0d85
0d23: 3f f0 0d  call  $0df0
0d26: d0 1d     bne   $0d45
0d28: f5 60 02  mov   a,$0260+x
0d2b: f0 95     beq   $0cc2
0d2d: 3f 42 0f  call  $0f42
0d30: f5 60 02  mov   a,$0260+x
0d33: 9c        dec   a
0d34: d5 60 02  mov   $0260+x,a
0d37: d0 ea     bne   $0d23
0d39: f5 30 02  mov   a,$0230+x
0d3c: d4 30     mov   $30+x,a
0d3e: f5 31 02  mov   a,$0231+x
0d41: d4 31     mov   $31+x,a
0d43: 2f de     bra   $0d23
0d45: 30 20     bmi   $0d67
0d47: d5 00 02  mov   $0200+x,a
0d4a: 3f f0 0d  call  $0df0
0d4d: 30 18     bmi   $0d67
0d4f: 2d        push  a
0d50: 9f        xcn   a
0d51: 28 07     and   a,#$07
0d53: fd        mov   y,a
0d54: f6 18 a0  mov   a,$a018+y
0d57: d5 01 02  mov   $0201+x,a
0d5a: ae        pop   a
0d5b: 28 0f     and   a,#$0f
0d5d: fd        mov   y,a
0d5e: f6 20 a0  mov   a,$a020+y
0d61: d5 10 02  mov   $0210+x,a
0d64: 3f f0 0d  call  $0df0
0d67: 68 e0     cmp   a,#$e0
0d69: 90 05     bcc   $0d70
0d6b: 3f de 0d  call  $0dde
0d6e: 2f b3     bra   $0d23
0d70: 3f 34 0b  call  $0b34
0d73: f5 00 02  mov   a,$0200+x
0d76: d5 50 02  mov   $0250+x,a
0d79: fd        mov   y,a
0d7a: f5 01 02  mov   a,$0201+x
0d7d: cf        mul   ya
0d7e: dd        mov   a,y
0d7f: bc        inc   a
0d80: d5 51 02  mov   $0251+x,a
0d83: 2f 03     bra   $0d88
0d85: 3f 9a 11  call  $119a
0d88: 3f ff 0f  call  $0fff
0d8b: 3d        inc   x
0d8c: 3d        inc   x
0d8d: 0b 47     asl   $47
0d8f: d0 83     bne   $0d14
0d91: e4 54     mov   a,$54
0d93: f0 0b     beq   $0da0
0d95: ba 56     movw  ya,$56
0d97: 7a 52     addw  ya,$52
0d99: 6e 54 02  dbnz  $54,$0d9e
0d9c: ba 54     movw  ya,$54
0d9e: da 52     movw  $52,ya
0da0: e4 68     mov   a,$68
0da2: f0 15     beq   $0db9
0da4: ba 64     movw  ya,$64
0da6: 7a 60     addw  ya,$60
0da8: da 60     movw  $60,ya
0daa: ba 66     movw  ya,$66
0dac: 7a 62     addw  ya,$62
0dae: 6e 68 06  dbnz  $68,$0db7
0db1: ba 68     movw  ya,$68
0db3: da 60     movw  $60,ya
0db5: eb 6a     mov   y,$6a
0db7: da 62     movw  $62,ya
0db9: e4 5a     mov   a,$5a
0dbb: f0 0e     beq   $0dcb
0dbd: ba 5c     movw  ya,$5c
0dbf: 7a 58     addw  ya,$58
0dc1: 6e 5a 02  dbnz  $5a,$0dc6
0dc4: ba 5a     movw  ya,$5a
0dc6: da 58     movw  $58,ya
0dc8: 8f ff 5e  mov   $5e,#$ff
0dcb: cd 00     mov   x,#$00
0dcd: 8f 01 47  mov   $47,#$01
0dd0: f4 31     mov   a,$31+x
0dd2: f0 03     beq   $0dd7
0dd4: 3f bb 10  call  $10bb
0dd7: 3d        inc   x
0dd8: 3d        inc   x
0dd9: 0b 47     asl   $47
0ddb: d0 f3     bne   $0dd0
0ddd: 6f        ret

; dispatch vcmd in A (e0-ff)
0dde: 1c        asl   a
0ddf: fd        mov   y,a
0de0: f6 9f 0f  mov   a,$0f9f+y
0de3: 2d        push  a
0de4: f6 9e 0f  mov   a,$0f9e+y
0de7: 2d        push  a
0de8: dd        mov   a,y
0de9: 5c        lsr   a
0dea: fd        mov   y,a
0deb: f6 3c 10  mov   a,$103c+y
0dee: f0 08     beq   $0df8
0df0: e7 30     mov   a,($30+x)
0df2: bb 30     inc   $30+x
0df4: d0 02     bne   $0df8
0df6: bb 31     inc   $31+x
0df8: fd        mov   y,a
0df9: 6f        ret

; vcmd e0 - set instrument
0dfa: d5 11 02  mov   $0211+x,a
0dfd: fd        mov   y,a
0dfe: 10 06     bpl   $0e06
0e00: 80        setc
0e01: a8 ca     sbc   a,#$ca
0e03: 60        clrc
0e04: 84 5f     adc   a,$5f
0e06: 8d 06     mov   y,#$06
0e08: cf        mul   ya
0e09: da 14     movw  $14,ya
0e0b: 60        clrc
0e0c: 98 00 14  adc   $14,#$00
0e0f: 98 1f 15  adc   $15,#$1f
0e12: e4 1a     mov   a,$1a
0e14: 24 47     and   a,$47
0e16: d0 3a     bne   $0e52
0e18: 4d        push  x
0e19: 7d        mov   a,x
0e1a: 9f        xcn   a
0e1b: 5c        lsr   a
0e1c: 08 04     or    a,#$04
0e1e: 5d        mov   x,a
0e1f: 8d 00     mov   y,#$00
0e21: f7 14     mov   a,($14)+y
0e23: 10 0e     bpl   $0e33
0e25: 28 1f     and   a,#$1f
0e27: 38 20 48  and   $48,#$20
0e2a: 0e 48 00  tset1 $0048
0e2d: 09 47 49  or    ($49),($47)
0e30: dd        mov   a,y
0e31: 2f 07     bra   $0e3a
0e33: e4 47     mov   a,$47
0e35: 4e 49 00  tclr1 $0049
0e38: f7 14     mov   a,($14)+y
0e3a: c9 f2 00  mov   $00f2,x
0e3d: c5 f3 00  mov   $00f3,a
0e40: 3d        inc   x
0e41: fc        inc   y
0e42: ad 04     cmp   y,#$04
0e44: d0 f2     bne   $0e38
0e46: ce        pop   x
0e47: f7 14     mov   a,($14)+y
0e49: d5 21 02  mov   $0221+x,a
0e4c: fc        inc   y
0e4d: f7 14     mov   a,($14)+y
0e4f: d5 20 02  mov   $0220+x,a
0e52: 6f        ret

; vcmd e1 - pan
0e53: d5 51 03  mov   $0351+x,a
0e56: 28 1f     and   a,#$1f
0e58: d5 31 03  mov   $0331+x,a
0e5b: e8 00     mov   a,#$00
0e5d: d5 30 03  mov   $0330+x,a
0e60: 6f        ret

; vcmd e2 - pan fade
0e61: d4 91     mov   $91+x,a
0e63: 2d        push  a
0e64: 3f f0 0d  call  $0df0
0e67: d5 50 03  mov   $0350+x,a
0e6a: 80        setc
0e6b: b5 31 03  sbc   a,$0331+x
0e6e: ce        pop   x
0e6f: 3f 42 10  call  $1042
0e72: d5 40 03  mov   $0340+x,a
0e75: dd        mov   a,y
0e76: d5 41 03  mov   $0341+x,a
0e79: 6f        ret

; vcmd e3 - vibrato on
0e7a: d5 b0 02  mov   $02b0+x,a
0e7d: 3f f0 0d  call  $0df0
0e80: d5 a1 02  mov   $02a1+x,a
0e83: 3f f0 0d  call  $0df0
; vcmd e4 - vibrato off
0e86: d4 b1     mov   $b1+x,a
0e88: d5 c1 02  mov   $02c1+x,a
0e8b: e8 00     mov   a,#$00
0e8d: d5 b1 02  mov   $02b1+x,a
0e90: 6f        ret

; vcmd f0 - vibrato fade
0e91: d5 b1 02  mov   $02b1+x,a
0e94: 2d        push  a
0e95: 8d 00     mov   y,#$00
0e97: f4 b1     mov   a,$b1+x
0e99: ce        pop   x
0e9a: 9e        div   ya,x
0e9b: f8 44     mov   x,$44
0e9d: d5 c0 02  mov   $02c0+x,a
0ea0: 6f        ret

; vcmd e5 - master volume
0ea1: e8 00     mov   a,#$00
0ea3: da 58     movw  $58,ya
0ea5: 6f        ret

; vcmd e6 - master volume fade
0ea6: c4 5a     mov   $5a,a
0ea8: 3f f0 0d  call  $0df0
0eab: c4 5b     mov   $5b,a
0ead: 80        setc
0eae: a4 59     sbc   a,$59
0eb0: f8 5a     mov   x,$5a
0eb2: 3f 42 10  call  $1042
0eb5: da 5c     movw  $5c,ya
0eb7: 6f        ret

; vcmd e7 - tempo
0eb8: e8 00     mov   a,#$00
0eba: da 52     movw  $52,ya
0ebc: 6f        ret

; vcmd e8 - tempo fade
0ebd: c4 54     mov   $54,a
0ebf: 3f f0 0d  call  $0df0
0ec2: c4 55     mov   $55,a
0ec4: 80        setc
0ec5: a4 53     sbc   a,$53
0ec7: f8 54     mov   x,$54
0ec9: 3f 42 10  call  $1042
0ecc: da 56     movw  $56,ya
0ece: 6f        ret

; vcmd e9 - global transpose
0ecf: c4 50     mov   $50,a
0ed1: 6f        ret

; vcmd ea - per-voice transpose
0ed2: d5 e1 02  mov   $02e1+x,a
0ed5: 6f        ret

; vcmd eb - tremolo on
0ed6: d5 e0 02  mov   $02e0+x,a
0ed9: 3f f0 0d  call  $0df0
0edc: d5 d1 02  mov   $02d1+x,a
0edf: 3f f0 0d  call  $0df0
; vcmd ec - tremolo off
0ee2: d4 c1     mov   $c1+x,a
0ee4: 6f        ret

; vcmd f1 - pitch envelope (release)
0ee5: e8 01     mov   a,#$01
0ee7: 2f 02     bra   $0eeb
; vcmd f2 - pitch envelope (attack)
0ee9: e8 00     mov   a,#$00
0eeb: d5 90 02  mov   $0290+x,a
0eee: dd        mov   a,y
0eef: d5 81 02  mov   $0281+x,a
0ef2: 3f f0 0d  call  $0df0
0ef5: d5 80 02  mov   $0280+x,a
0ef8: 3f f0 0d  call  $0df0
0efb: d5 91 02  mov   $0291+x,a
0efe: 6f        ret

; vcmd f3 - pitch envelope off
0eff: d5 80 02  mov   $0280+x,a
0f02: 6f        ret

; vcmd ed - volume
0f03: d5 91 03  mov   $0391+x,a
0f06: e8 00     mov   a,#$00
0f08: d5 90 03  mov   $0390+x,a
0f0b: 6f        ret

; vcmd ee - volume fade
0f0c: d4 90     mov   $90+x,a
0f0e: 2d        push  a
0f0f: 3f f0 0d  call  $0df0
0f12: d5 20 03  mov   $0320+x,a
0f15: 80        setc
0f16: b5 91 03  sbc   a,$0391+x
0f19: ce        pop   x
0f1a: 3f 42 10  call  $1042
0f1d: d5 10 03  mov   $0310+x,a
0f20: dd        mov   a,y
0f21: d5 11 03  mov   $0311+x,a
0f24: 6f        ret

; vcmd f4 - tuning
0f25: d5 81 03  mov   $0381+x,a
0f28: 6f        ret

; vcmd ef - call subroutine
0f29: d5 40 02  mov   $0240+x,a
0f2c: 3f f0 0d  call  $0df0
0f2f: d5 41 02  mov   $0241+x,a
0f32: 3f f0 0d  call  $0df0
0f35: d5 60 02  mov   $0260+x,a
0f38: f4 30     mov   a,$30+x
0f3a: d5 30 02  mov   $0230+x,a
0f3d: f4 31     mov   a,$31+x
0f3f: d5 31 02  mov   $0231+x,a
0f42: f5 40 02  mov   a,$0240+x
0f45: d4 30     mov   $30+x,a
0f47: f5 41 02  mov   a,$0241+x
0f4a: d4 31     mov   $31+x,a
0f4c: 6f        ret

; vcmd f5 - echo vbits/volume
0f4d: c4 4a     mov   $4a,a
0f4f: c5 bc 03  mov   $03bc,a
0f52: 48 ff     eor   a,#$ff
0f54: c5 be 03  mov   $03be,a
0f57: 3f f0 0d  call  $0df0
0f5a: e8 00     mov   a,#$00
0f5c: da 60     movw  $60,ya
0f5e: 3f f0 0d  call  $0df0
0f61: e8 00     mov   a,#$00
0f63: da 62     movw  $62,ya
0f65: b2 48     clr5  $48
0f67: 6f        ret

; vcmd f8 - echo volume fade
0f68: c4 68     mov   $68,a
0f6a: 3f f0 0d  call  $0df0
0f6d: c4 69     mov   $69,a
0f6f: 80        setc
0f70: a4 61     sbc   a,$61
0f72: f8 68     mov   x,$68
0f74: 3f 42 10  call  $1042
0f77: da 64     movw  $64,ya
0f79: 3f f0 0d  call  $0df0
0f7c: c4 6a     mov   $6a,a
0f7e: 80        setc
0f7f: a4 63     sbc   a,$63
0f81: f8 68     mov   x,$68
0f83: 3f 42 10  call  $1042
0f86: da 66     movw  $66,ya
0f88: 6f        ret

; vcmd f6 - disable echo
0f89: da 60     movw  $60,ya
0f8b: da 62     movw  $62,ya
0f8d: a2 48     set5  $48
0f8f: 6f        ret

; vcmd f7 - set echo params
0f90: 3f b2 0f  call  $0fb2
0f93: 3f f0 0d  call  $0df0
0f96: c4 4e     mov   $4e,a
0f98: 3f f0 0d  call  $0df0
0f9b: 8d 08     mov   y,#$08
0f9d: cf        mul   ya
0f9e: 5d        mov   x,a
0f9f: 8d 0f     mov   y,#$0f
0fa1: f5 52 1e  mov   a,$1e52+x
0fa4: 3f 2e 0c  call  $0c2e
0fa7: 3d        inc   x
0fa8: dd        mov   a,y
0fa9: 60        clrc
0faa: 88 10     adc   a,#$10
0fac: fd        mov   y,a
0fad: 10 f2     bpl   $0fa1
0faf: f8 44     mov   x,$44
0fb1: 6f        ret

0fb2: c4 4d     mov   $4d,a
0fb4: 8d 7d     mov   y,#$7d
0fb6: cc f2 00  mov   $00f2,y
0fb9: e5 f3 00  mov   a,$00f3
0fbc: 64 4d     cmp   a,$4d
0fbe: f0 2b     beq   $0feb
0fc0: 28 0f     and   a,#$0f
0fc2: 48 ff     eor   a,#$ff
0fc4: f3 4c 03  bbc7  $4c,$0fca
0fc7: 60        clrc
0fc8: 84 4c     adc   a,$4c
0fca: c4 4c     mov   $4c,a
0fcc: 8d 04     mov   y,#$04
0fce: f6 71 1e  mov   a,$1e71+y
0fd1: c5 f2 00  mov   $00f2,a
0fd4: e8 00     mov   a,#$00
0fd6: c5 f3 00  mov   $00f3,a
0fd9: fe f3     dbnz  y,$0fce
0fdb: e4 48     mov   a,$48
0fdd: 08 20     or    a,#$20
0fdf: 8d 6c     mov   y,#$6c
0fe1: 3f 2e 0c  call  $0c2e
0fe4: e4 4d     mov   a,$4d
0fe6: 8d 7d     mov   y,#$7d
0fe8: 3f 2e 0c  call  $0c2e
0feb: 1c        asl   a
0fec: 1c        asl   a
0fed: 1c        asl   a
0fee: 48 ff     eor   a,#$ff
0ff0: 80        setc
0ff1: 88 ff     adc   a,#$ff
0ff3: 8d 6d     mov   y,#$6d
0ff5: 5f 2e 0c  jmp   $0c2e

; vcmd fa - set perc patch base
0ff8: c4 5f     mov   $5f,a
0ffa: 6f        ret

; vcmd fe - skip 2 bytes
0ffb: 3f f2 0d  call  $0df2
0ffe: 6f        ret

0fff: f4 a0     mov   a,$a0+x
1001: d0 33     bne   $1036
1003: e7 30     mov   a,($30+x)
1005: 68 f9     cmp   a,#$f9
1007: d0 2d     bne   $1036
1009: 3f f2 0d  call  $0df2
100c: 3f f0 0d  call  $0df0
; vcmd f9 - pitch slide
100f: d4 a1     mov   $a1+x,a
1011: 3f f0 0d  call  $0df0
1014: d4 a0     mov   $a0+x,a
1016: 3f f0 0d  call  $0df0
1019: 60        clrc
101a: 84 50     adc   a,$50
101c: 95 e1 02  adc   a,$02e1+x
101f: 28 7f     and   a,#$7f
1021: d5 80 03  mov   $0380+x,a
1024: 80        setc
1025: b5 61 03  sbc   a,$0361+x
1028: fb a0     mov   y,$a0+x
102a: 6d        push  y
102b: ce        pop   x
102c: 3f 42 10  call  $1042
102f: d5 70 03  mov   $0370+x,a
1032: dd        mov   a,y
1033: d5 71 03  mov   $0371+x,a
1036: 6f        ret

1037: f5 61 03  mov   a,$0361+x
103a: c4 11     mov   $11,a
103c: f5 60 03  mov   a,$0360+x
103f: c4 10     mov   $10,a
1041: 6f        ret

1042: ed        notc
1043: 6b 12     ror   $12
1045: 10 03     bpl   $104a
1047: 48 ff     eor   a,#$ff
1049: bc        inc   a
104a: 8d 00     mov   y,#$00
104c: 9e        div   ya,x
104d: 2d        push  a
104e: e8 00     mov   a,#$00
1050: 9e        div   ya,x
1051: ee        pop   y
1052: f8 44     mov   x,$44
1054: f3 12 06  bbc7  $12,$105d
1057: da 14     movw  $14,ya
1059: ba 0e     movw  ya,$0e
105b: 9a 14     subw  ya,$14
105d: 6f        ret

; vcmd dispatch table (music)
105e: dw $0dfa  ; e0 - set instrument
1060: dw $0e53  ; e1 - pan
1062: dw $0e61  ; e2 - pan fade
1064: dw $0e7a  ; e3 - vibrato on
1066: dw $0e86  ; e4 - vibrato off
1068: dw $0ea1  ; e5 - master volume
106a: dw $0ea6  ; e6 - master volume fade
106c: dw $0eb8  ; e7 - tempo
106e: dw $0ebd  ; e8 - tempo fade
1070: dw $0ecf  ; e9 - global transpose
1072: dw $0ed2  ; ea - per-voice transpose
1074: dw $0ed6  ; eb - tremolo on
1076: dw $0ee2  ; ec - tremolo off
1078: dw $0f03  ; ed - volume
107a: dw $0f0c  ; ee - volume fade
107c: dw $0f29  ; ef - call subroutine
107e: dw $0e91  ; f0 - vibrato fade
1080: dw $0ee5  ; f1 - pitch envelope (release)
1082: dw $0ee9  ; f2 - pitch envelope (attack)
1084: dw $0eff  ; f3 - pitch envelope off
1086: dw $0f25  ; f4 - tuning
1088: dw $0f4d  ; f5 - echo vbits/volume
108a: dw $0f89  ; f6 - disable echo
108c: dw $0f90  ; f7 - set echo params
108e: dw $0f68  ; f8 - echo volume fade
1090: dw $100f  ; f9 - pitch slide
1092: dw $0ff8  ; fa - set perc patch base
1094: dw $1354  ; fb - echo on
1096: dw $1368  ; fc - echo off
1098: dw $133c  ; fd - set ASDR
109a: dw $0ffb  ; fe - skip 2 bytes

; vcmd lengths (music)
109c: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
10a4: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
10ac: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
10b4: db $03,$03,$01,$00,$00,$02,$02	 ; f8-fe

10bb: f4 90     mov   a,$90+x
10bd: f0 24     beq   $10e3
10bf: 09 47 5e  or    ($5e),($47)
10c2: 9b 90     dec   $90+x
10c4: d0 0a     bne   $10d0
10c6: e8 00     mov   a,#$00
10c8: d5 90 03  mov   $0390+x,a
10cb: f5 20 03  mov   a,$0320+x
10ce: 2f 10     bra   $10e0
10d0: 60        clrc
10d1: f5 90 03  mov   a,$0390+x
10d4: 95 10 03  adc   a,$0310+x
10d7: d5 90 03  mov   $0390+x,a
10da: f5 91 03  mov   a,$0391+x
10dd: 95 11 03  adc   a,$0311+x
10e0: d5 91 03  mov   $0391+x,a
10e3: fb c1     mov   y,$c1+x
10e5: f0 23     beq   $110a
10e7: f5 e0 02  mov   a,$02e0+x
10ea: de c0 1b  cbne  $c0+x,$1108
10ed: 09 47 5e  or    ($5e),($47)
10f0: f5 d0 02  mov   a,$02d0+x
10f3: 10 07     bpl   $10fc
10f5: fc        inc   y
10f6: d0 04     bne   $10fc
10f8: e8 80     mov   a,#$80
10fa: 2f 04     bra   $1100
10fc: 60        clrc
10fd: 95 d1 02  adc   a,$02d1+x
1100: d5 d0 02  mov   $02d0+x,a
1103: 3f 1f 13  call  $131f
1106: 2f 07     bra   $110f
1108: bb c0     inc   $c0+x
110a: e8 ff     mov   a,#$ff
110c: 3f 2a 13  call  $132a
110f: f4 91     mov   a,$91+x
1111: f0 24     beq   $1137
1113: 09 47 5e  or    ($5e),($47)
1116: 9b 91     dec   $91+x
1118: d0 0a     bne   $1124
111a: e8 00     mov   a,#$00
111c: d5 30 03  mov   $0330+x,a
111f: f5 50 03  mov   a,$0350+x
1122: 2f 10     bra   $1134
1124: 60        clrc
1125: f5 30 03  mov   a,$0330+x
1128: 95 40 03  adc   a,$0340+x
112b: d5 30 03  mov   $0330+x,a
112e: f5 31 03  mov   a,$0331+x
1131: 95 41 03  adc   a,$0341+x
1134: d5 31 03  mov   $0331+x,a
1137: e4 47     mov   a,$47
1139: 24 5e     and   a,$5e
113b: f0 5c     beq   $1199
113d: f5 31 03  mov   a,$0331+x
1140: fd        mov   y,a
1141: f5 30 03  mov   a,$0330+x
1144: da 10     movw  $10,ya
1146: 7d        mov   a,x
1147: 9f        xcn   a
1148: 5c        lsr   a
1149: c4 12     mov   $12,a
114b: eb 11     mov   y,$11
114d: e5 b8 03  mov   a,$03b8
1150: f0 11     beq   $1163
1152: e8 51     mov   a,#$51
1154: 80        setc
1155: a8 51     sbc   a,#$51
1157: eb 10     mov   y,$10
1159: cf        mul   ya
115a: dd        mov   a,y
115b: eb 11     mov   y,$11
115d: 60        clrc
115e: 88 51     adc   a,#$51
1160: fd        mov   y,a
1161: 2f 12     bra   $1175
1163: f6 3e 1e  mov   a,$1e3e+y
1166: 80        setc
1167: b6 3d 1e  sbc   a,$1e3d+y
116a: eb 10     mov   y,$10
116c: cf        mul   ya
116d: dd        mov   a,y
116e: eb 11     mov   y,$11
1170: 60        clrc
1171: 96 3d 1e  adc   a,$1e3d+y
1174: fd        mov   y,a
1175: f5 21 03  mov   a,$0321+x
1178: cf        mul   ya
1179: f5 51 03  mov   a,$0351+x
117c: 1c        asl   a
117d: 13 12 01  bbc0  $12,$1181
1180: 1c        asl   a
1181: dd        mov   a,y
1182: 90 03     bcc   $1187
1184: 48 ff     eor   a,#$ff
1186: bc        inc   a
1187: eb 12     mov   y,$12
1189: 3f 26 0c  call  $0c26
118c: 8d 14     mov   y,#$14
118e: e8 00     mov   a,#$00
1190: 9a 10     subw  ya,$10
1192: da 10     movw  $10,ya
1194: ab 12     inc   $12
1196: 33 12 b2  bbc1  $12,$114b
1199: 6f        ret

119a: f5 51 02  mov   a,$0251+x
119d: f0 71     beq   $1210
119f: 9c        dec   a
11a0: d5 51 02  mov   $0251+x,a
11a3: f0 07     beq   $11ac
11a5: e8 02     mov   a,#$02
11a7: 75 50 02  cmp   a,$0250+x
11aa: d0 64     bne   $1210
11ac: f5 60 02  mov   a,$0260+x
11af: c4 17     mov   $17,a
11b1: f4 30     mov   a,$30+x
11b3: fb 31     mov   y,$31+x
11b5: da 14     movw  $14,ya
11b7: 8d 00     mov   y,#$00
11b9: f7 14     mov   a,($14)+y
11bb: f0 1e     beq   $11db
11bd: 30 07     bmi   $11c6
11bf: fc        inc   y
11c0: 30 40     bmi   $1202
11c2: f7 14     mov   a,($14)+y
11c4: 10 f9     bpl   $11bf
11c6: 68 c8     cmp   a,#$c8
11c8: f0 46     beq   $1210
11ca: 68 ef     cmp   a,#$ef
11cc: f0 29     beq   $11f7
11ce: 68 e0     cmp   a,#$e0
11d0: 90 30     bcc   $1202
11d2: 6d        push  y
11d3: fd        mov   y,a
11d4: ae        pop   a
11d5: 96 bc 0f  adc   a,$0fbc+y
11d8: fd        mov   y,a
11d9: 2f de     bra   $11b9
11db: e4 17     mov   a,$17
11dd: f0 23     beq   $1202
11df: 8b 17     dec   $17
11e1: d0 0a     bne   $11ed
11e3: f5 31 02  mov   a,$0231+x
11e6: 2d        push  a
11e7: f5 30 02  mov   a,$0230+x
11ea: ee        pop   y
11eb: 2f c8     bra   $11b5
11ed: f5 41 02  mov   a,$0241+x
11f0: 2d        push  a
11f1: f5 40 02  mov   a,$0240+x
11f4: ee        pop   y
11f5: 2f be     bra   $11b5
11f7: fc        inc   y
11f8: f7 14     mov   a,($14)+y
11fa: 2d        push  a
11fb: fc        inc   y
11fc: f7 14     mov   a,($14)+y
11fe: fd        mov   y,a
11ff: ae        pop   a
1200: 2f b3     bra   $11b5
1202: e4 47     mov   a,$47
1204: 24 1a     and   a,$1a
1206: d0 08     bne   $1210
1208: e4 47     mov   a,$47
120a: 05 d3 03  or    a,$03d3
120d: c5 d3 03  mov   $03d3,a
1210: f2 13     clr7  $13
1212: f4 a0     mov   a,$a0+x
1214: f0 2c     beq   $1242
1216: f4 a1     mov   a,$a1+x
1218: f0 04     beq   $121e
121a: 9b a1     dec   $a1+x
121c: 2f 24     bra   $1242
121e: e2 13     set7  $13
1220: 9b a0     dec   $a0+x
1222: d0 0b     bne   $122f
1224: f5 81 03  mov   a,$0381+x
1227: d5 60 03  mov   $0360+x,a
122a: f5 80 03  mov   a,$0380+x
122d: 2f 10     bra   $123f
122f: 60        clrc
1230: f5 60 03  mov   a,$0360+x
1233: 95 70 03  adc   a,$0370+x
1236: d5 60 03  mov   $0360+x,a
1239: f5 61 03  mov   a,$0361+x
123c: 95 71 03  adc   a,$0371+x
123f: d5 61 03  mov   $0361+x,a
1242: 3f 37 10  call  $1037
1245: f4 b1     mov   a,$b1+x
1247: f0 4c     beq   $1295
1249: f5 b0 02  mov   a,$02b0+x
124c: de b0 44  cbne  $b0+x,$1293
124f: f5 00 01  mov   a,$0100+x
1252: 75 b1 02  cmp   a,$02b1+x
1255: d0 05     bne   $125c
1257: f5 c1 02  mov   a,$02c1+x
125a: 2f 0d     bra   $1269
125c: 40        setp
125d: bb 00     inc   $00+x
125f: 20        clrp
1260: fd        mov   y,a
1261: f0 02     beq   $1265
1263: f4 b1     mov   a,$b1+x
1265: 60        clrc
1266: 95 c0 02  adc   a,$02c0+x
1269: d4 b1     mov   $b1+x,a
126b: f5 a0 02  mov   a,$02a0+x
126e: 60        clrc
126f: 95 a1 02  adc   a,$02a1+x
1272: d5 a0 02  mov   $02a0+x,a
1275: c4 12     mov   $12,a
1277: 1c        asl   a
1278: 1c        asl   a
1279: 90 02     bcc   $127d
127b: 48 ff     eor   a,#$ff
127d: fd        mov   y,a
127e: f4 b1     mov   a,$b1+x
1280: 68 f1     cmp   a,#$f1
1282: 90 05     bcc   $1289
1284: 28 0f     and   a,#$0f
1286: cf        mul   ya
1287: 2f 04     bra   $128d
1289: cf        mul   ya
128a: dd        mov   a,y
128b: 8d 00     mov   y,#$00
128d: 3f 0a 13  call  $130a
1290: 5f a3 0b  jmp   $0ba3

1293: bb b0     inc   $b0+x
1295: e3 13 f8  bbs7  $13,$1290
1298: 6f        ret

1299: f2 13     clr7  $13
129b: f4 c1     mov   a,$c1+x
129d: f0 09     beq   $12a8
129f: f5 e0 02  mov   a,$02e0+x
12a2: de c0 03  cbne  $c0+x,$12a8
12a5: 3f 12 13  call  $1312
12a8: f5 31 03  mov   a,$0331+x
12ab: fd        mov   y,a
12ac: f5 30 03  mov   a,$0330+x
12af: da 10     movw  $10,ya
12b1: f4 91     mov   a,$91+x
12b3: f0 0a     beq   $12bf
12b5: f5 41 03  mov   a,$0341+x
12b8: fd        mov   y,a
12b9: f5 40 03  mov   a,$0340+x
12bc: 3f f4 12  call  $12f4
12bf: f3 13 03  bbc7  $13,$12c5
12c2: 3f 46 11  call  $1146
12c5: f2 13     clr7  $13
12c7: 3f 37 10  call  $1037
12ca: f4 a0     mov   a,$a0+x
12cc: f0 0e     beq   $12dc
12ce: f4 a1     mov   a,$a1+x
12d0: d0 0a     bne   $12dc
12d2: f5 71 03  mov   a,$0371+x
12d5: fd        mov   y,a
12d6: f5 70 03  mov   a,$0370+x
12d9: 3f f4 12  call  $12f4
12dc: f4 b1     mov   a,$b1+x
12de: f0 b5     beq   $1295
12e0: f5 b0 02  mov   a,$02b0+x
12e3: de b0 af  cbne  $b0+x,$1295
12e6: eb 51     mov   y,$51
12e8: f5 a1 02  mov   a,$02a1+x
12eb: cf        mul   ya
12ec: dd        mov   a,y
12ed: 60        clrc
12ee: 95 a0 02  adc   a,$02a0+x
12f1: 5f 75 12  jmp   $1275

12f4: e2 13     set7  $13
12f6: cb 12     mov   $12,y
12f8: 3f 54 10  call  $1054
12fb: 6d        push  y
12fc: eb 51     mov   y,$51
12fe: cf        mul   ya
12ff: cb 14     mov   $14,y
1301: 8f 00 15  mov   $15,#$00
1304: eb 51     mov   y,$51
1306: ae        pop   a
1307: cf        mul   ya
1308: 7a 14     addw  ya,$14
130a: 3f 54 10  call  $1054
130d: 7a 10     addw  ya,$10
130f: da 10     movw  $10,ya
1311: 6f        ret

1312: e2 13     set7  $13
1314: eb 51     mov   y,$51
1316: f5 d1 02  mov   a,$02d1+x
1319: cf        mul   ya
131a: dd        mov   a,y
131b: 60        clrc
131c: 95 d0 02  adc   a,$02d0+x
131f: 1c        asl   a
1320: 90 02     bcc   $1324
1322: 48 ff     eor   a,#$ff
1324: fb c1     mov   y,$c1+x
1326: cf        mul   ya
1327: dd        mov   a,y
1328: 48 ff     eor   a,#$ff
132a: eb 59     mov   y,$59
132c: cf        mul   ya
132d: f5 10 02  mov   a,$0210+x
1330: cf        mul   ya
1331: f5 91 03  mov   a,$0391+x
1334: cf        mul   ya
1335: dd        mov   a,y
1336: cf        mul   ya
1337: dd        mov   a,y
1338: d5 21 03  mov   $0321+x,a
133b: 6f        ret

; vcmd fd - set ASDR
133c: 7d        mov   a,x
133d: 9f        xcn   a
133e: 5c        lsr   a
133f: 08 05     or    a,#$05
1341: c4 14     mov   $14,a
1343: dd        mov   a,y
1344: eb 14     mov   y,$14
1346: 3f 26 0c  call  $0c26
1349: 3f f0 0d  call  $0df0
134c: ab 14     inc   $14
134e: eb 14     mov   y,$14
1350: 3f 26 0c  call  $0c26
1353: 6f        ret

; vcmd fb - echo on
1354: e5 bc 03  mov   a,$03bc
1357: 04 47     or    a,$47
1359: c5 bc 03  mov   $03bc,a
135c: e4 47     mov   a,$47
135e: 48 ff     eor   a,#$ff
1360: 25 be 03  and   a,$03be
1363: c5 be 03  mov   $03be,a
1366: 2f 12     bra   $137a
; vcmd fc - echo off
1368: e5 be 03  mov   a,$03be
136b: 04 47     or    a,$47
136d: c5 be 03  mov   $03be,a
1370: e4 47     mov   a,$47
1372: 48 ff     eor   a,#$ff
1374: 25 bc 03  and   a,$03bc
1377: c5 bc 03  mov   $03bc,a
137a: e5 bc 03  mov   a,$03bc
137d: c5 d0 03  mov   $03d0,a
1380: e5 be 03  mov   a,$03be
1383: 48 ff     eor   a,#$ff
1385: 25 d0 03  and   a,$03d0
1388: 05 bd 03  or    a,$03bd
138b: c5 d0 03  mov   $03d0,a
138e: e5 bf 03  mov   a,$03bf
1391: 48 ff     eor   a,#$ff
1393: 25 d0 03  and   a,$03d0
1396: c4 4a     mov   $4a,a
1398: 6f        ret

; handle a note vcmd (80-df) (sfx)
1399: ad ca     cmp   y,#$ca
139b: 90 05     bcc   $13a2
139d: 3f c4 16  call  $16c4
13a0: 8d a4     mov   y,#$a4
13a2: ad c8     cmp   y,#$c8
13a4: b0 f2     bcs   $1398
13a6: dd        mov   a,y
13a7: 28 7f     and   a,#$7f
13a9: 60        clrc
13aa: 85 03 04  adc   a,$0403
13ad: 60        clrc
13ae: 95 91 05  adc   a,$0591+x
13b1: d5 f1 04  mov   $04f1+x,a
13b4: f5 11 05  mov   a,$0511+x
13b7: d5 f0 04  mov   $04f0+x,a
13ba: f5 51 05  mov   a,$0551+x
13bd: 5c        lsr   a
13be: e8 00     mov   a,#$00
13c0: 7c        ror   a
13c1: d5 40 05  mov   $0540+x,a
13c4: e8 00     mov   a,#$00
13c6: d5 d0 00  mov   $00d0+x,a
13c9: d5 60 05  mov   $0560+x,a
13cc: d5 80 05  mov   $0580+x,a
13cf: d4 e0     mov   $e0+x,a
13d1: 09 47 5e  or    ($5e),($47)
13d4: e5 d2 03  mov   a,$03d2
13d7: 04 47     or    a,$47
13d9: c5 d2 03  mov   $03d2,a
13dc: f5 20 05  mov   a,$0520+x
13df: d4 80     mov   $80+x,a
13e1: f0 1e     beq   $1401
13e3: f5 21 05  mov   a,$0521+x
13e6: d4 81     mov   $81+x,a
13e8: f5 30 05  mov   a,$0530+x
13eb: d0 0a     bne   $13f7
13ed: f5 f1 04  mov   a,$04f1+x
13f0: 80        setc
13f1: b5 31 05  sbc   a,$0531+x
13f4: d5 f1 04  mov   $04f1+x,a
13f7: f5 31 05  mov   a,$0531+x
13fa: 60        clrc
13fb: 95 f1 04  adc   a,$04f1+x
13fe: 3f cd 18  call  $18cd
1401: 3f e5 18  call  $18e5
1404: 8d 00     mov   y,#$00
1406: e4 11     mov   a,$11
1408: 80        setc
1409: a8 34     sbc   a,#$34
140b: b0 09     bcs   $1416
140d: e4 11     mov   a,$11
140f: 80        setc
1410: a8 13     sbc   a,#$13
1412: b0 06     bcs   $141a
1414: dc        dec   y
1415: 1c        asl   a
1416: 7a 10     addw  ya,$10
1418: da 10     movw  $10,ya
141a: 4d        push  x
141b: e4 11     mov   a,$11
141d: 1c        asl   a
141e: 8d 00     mov   y,#$00
1420: cd 18     mov   x,#$18
1422: 9e        div   ya,x
1423: 5d        mov   x,a
1424: f6 87 1e  mov   a,$1e87+y
1427: c4 15     mov   $15,a
1429: f6 86 1e  mov   a,$1e86+y
142c: c4 14     mov   $14,a
142e: f6 89 1e  mov   a,$1e89+y
1431: 2d        push  a
1432: f6 88 1e  mov   a,$1e88+y
1435: ee        pop   y
1436: 9a 14     subw  ya,$14
1438: eb 10     mov   y,$10
143a: cf        mul   ya
143b: dd        mov   a,y
143c: 8d 00     mov   y,#$00
143e: 7a 14     addw  ya,$14
1440: cb 15     mov   $15,y
1442: 1c        asl   a
1443: 2b 15     rol   $15
1445: c4 14     mov   $14,a
1447: 2f 04     bra   $144d
1449: 4b 15     lsr   $15
144b: 7c        ror   a
144c: 3d        inc   x
144d: c8 06     cmp   x,#$06
144f: d0 f8     bne   $1449
1451: c4 14     mov   $14,a
1453: ce        pop   x
1454: f5 50 04  mov   a,$0450+x
1457: eb 15     mov   y,$15
1459: cf        mul   ya
145a: da 16     movw  $16,ya
145c: f5 50 04  mov   a,$0450+x
145f: eb 14     mov   y,$14
1461: cf        mul   ya
1462: 6d        push  y
1463: f5 51 04  mov   a,$0451+x
1466: eb 14     mov   y,$14
1468: cf        mul   ya
1469: 7a 16     addw  ya,$16
146b: da 16     movw  $16,ya
146d: f5 51 04  mov   a,$0451+x
1470: eb 15     mov   y,$15
1472: cf        mul   ya
1473: fd        mov   y,a
1474: ae        pop   a
1475: 7a 16     addw  ya,$16
1477: da 16     movw  $16,ya
1479: 7d        mov   a,x
147a: 9f        xcn   a
147b: 5c        lsr   a
147c: 08 02     or    a,#$02
147e: fd        mov   y,a
147f: e4 16     mov   a,$16
1481: 3f 87 14  call  $1487
1484: fc        inc   y
1485: e4 17     mov   a,$17
1487: cc f2 00  mov   $00f2,y
148a: c5 f3 00  mov   $00f3,a
148d: 6f        ret

; read $1c/1 into YA with advancing the ptr
148e: 8d 00     mov   y,#$00
1490: f7 1c     mov   a,($1c)+y
1492: 3a 1c     incw  $1c
1494: 2d        push  a
1495: f7 1c     mov   a,($1c)+y
1497: 3a 1c     incw  $1c
1499: fd        mov   y,a
149a: ae        pop   a
149b: 6f        ret

; play sound effect in A
149c: c4 05     mov   $05,a
149e: 1c        asl   a
149f: 5d        mov   x,a
14a0: f5 ff bf  mov   a,$bfff+x
14a3: fd        mov   y,a
14a4: f5 fe bf  mov   a,$bffe+x
14a7: da 1c     movw  $1c,ya
14a9: 8f 02 1e  mov   $1e,#$02
14ac: 2f 02     bra   $14b0
14ae: c4 05     mov   $05,a
14b0: e4 1b     mov   a,$1b
14b2: 0e 46 00  tset1 $0046
14b5: e8 a5     mov   a,#$a5
14b7: c5 07 04  mov   $0407,a
14ba: 6f        ret

14bb: e4 1b     mov   a,$1b
14bd: 0e 46 00  tset1 $0046
14c0: e8 00     mov   a,#$00
14c2: c5 07 04  mov   $0407,a
14c5: cd 00     mov   x,#$00
14c7: 8f 01 47  mov   $47,#$01
14ca: e4 47     mov   a,$47
14cc: 24 1b     and   a,$1b
14ce: f0 14     beq   $14e4
14d0: e4 47     mov   a,$47
14d2: 48 ff     eor   a,#$ff
14d4: 24 1a     and   a,$1a
14d6: c4 1a     mov   $1a,a
14d8: f5 11 02  mov   a,$0211+x
14db: 3f fd 0d  call  $0dfd
14de: e8 00     mov   a,#$00
14e0: d4 20     mov   $20+x,a
14e2: d4 21     mov   $21+x,a
14e4: 3d        inc   x
14e5: 3d        inc   x
14e6: 0b 47     asl   $47
14e8: d0 e0     bne   $14ca
14ea: e8 00     mov   a,#$00
14ec: c4 1b     mov   $1b,a
14ee: 6f        ret

14ef: 8f 00 1b  mov   $1b,#$00
14f2: cd 00     mov   x,#$00
14f4: 8f 01 47  mov   $47,#$01
14f7: e4 47     mov   a,$47
14f9: 24 6d     and   a,$6d
14fb: d0 15     bne   $1512
14fd: f5 d1 05  mov   a,$05d1+x
1500: d4 21     mov   $21+x,a
1502: f5 d0 05  mov   a,$05d0+x
1505: d4 20     mov   $20+x,a
1507: f5 d1 05  mov   a,$05d1+x
150a: f0 06     beq   $1512
150c: 09 47 1a  or    ($1a),($47)
150f: 09 47 1b  or    ($1b),($47)
1512: 3d        inc   x
1513: 3d        inc   x
1514: 0b 47     asl   $47
1516: d0 df     bne   $14f7
1518: e4 1b     mov   a,$1b
151a: 0e 46 00  tset1 $0046
151d: e8 00     mov   a,#$00
151f: c5 07 04  mov   $0407,a
1522: 6f        ret

1523: 3f 8e 14  call  $148e
1526: 1a 1c     decw  $1c
1528: 1a 1c     decw  $1c
152a: da 16     movw  $16,ya
152c: 8d 0f     mov   y,#$0f
152e: f7 16     mov   a,($16)+y
1530: d6 d0 05  mov   $05d0+y,a
1533: dc        dec   y
1534: 10 f8     bpl   $152e
1536: 3f ef 14  call  $14ef
1539: cd 0e     mov   x,#$0e
153b: 8f 80 47  mov   $47,#$80
153e: e4 47     mov   a,$47
1540: 24 6d     and   a,$6d
1542: d0 1f     bne   $1563
1544: e8 ff     mov   a,#$ff
1546: d5 91 04  mov   $0491+x,a
1549: e5 06 04  mov   a,$0406
154c: 3f 18 17  call  $1718
154f: e8 00     mov   a,#$00
1551: d5 c1 05  mov   $05c1+x,a
1554: d5 11 05  mov   $0511+x,a
1557: d5 20 05  mov   $0520+x,a
155a: d4 d1     mov   $d1+x,a
155c: d4 e1     mov   $e1+x,a
155e: c4 70     mov   $70,a
1560: d5 91 05  mov   $0591+x,a
1563: 1d        dec   x
1564: 1d        dec   x
1565: 4b 47     lsr   $47
1567: d0 d5     bne   $153e
1569: c5 03 04  mov   $0403,a
156c: c5 e0 05  mov   $05e0,a
156f: c5 10 04  mov   $0410,a
1572: 6f        ret

1573: e5 07 04  mov   a,$0407
1576: f0 03     beq   $157b
1578: 5f c0 14  jmp   $14c0

157b: eb 09     mov   y,$09
157d: e4 01     mov   a,$01
157f: c4 09     mov   $09,a
1581: 7e 01     cmp   y,$01
1583: f0 03     beq   $1588
1585: 5f 9c 14  jmp   $149c

1588: e4 05     mov   a,$05
158a: f0 e6     beq   $1572
158c: e4 1e     mov   a,$1e
158e: d0 03     bne   $1593
1590: 5f ef 15  jmp   $15ef

1593: 6e 1e 8d  dbnz  $1e,$1523
1596: 3f 8e 14  call  $148e
1599: d0 1a     bne   $15b5
159b: fd        mov   y,a
159c: d0 03     bne   $15a1
159e: 5f ae 14  jmp   $14ae

15a1: 8c 02 04  dec   $0402
15a4: 10 03     bpl   $15a9
15a6: c5 02 04  mov   $0402,a
15a9: 3f 8e 14  call  $148e
15ac: e9 02 04  mov   x,$0402
15af: f0 e5     beq   $1596
15b1: da 1c     movw  $1c,ya
15b3: 2f e1     bra   $1596
15b5: da 16     movw  $16,ya
15b7: 8d 0f     mov   y,#$0f
15b9: f7 16     mov   a,($16)+y
15bb: d6 d0 05  mov   $05d0+y,a
15be: dc        dec   y
15bf: 10 f8     bpl   $15b9
15c1: 3f bb 14  call  $14bb
15c4: 3f ef 14  call  $14ef
15c7: cd 00     mov   x,#$00
15c9: 8f 01 47  mov   $47,#$01
15cc: e4 47     mov   a,$47
15ce: 24 6d     and   a,$6d
15d0: d0 17     bne   $15e9
15d2: f4 21     mov   a,$21+x
15d4: f0 06     beq   $15dc
15d6: f5 c1 05  mov   a,$05c1+x
15d9: 3f c4 16  call  $16c4
15dc: e8 00     mov   a,#$00
15de: d5 80 04  mov   $0480+x,a
15e1: d4 70     mov   $70+x,a
15e3: d4 71     mov   $71+x,a
15e5: bc        inc   a
15e6: d5 20 04  mov   $0420+x,a
15e9: 3d        inc   x
15ea: 3d        inc   x
15eb: 0b 47     asl   $47
15ed: d0 dd     bne   $15cc
15ef: cd 00     mov   x,#$00
15f1: e4 1b     mov   a,$1b
15f3: 24 5e     and   a,$5e
15f5: c4 5e     mov   $5e,a
15f7: 8f 01 47  mov   $47,#$01
15fa: c9 01 04  mov   $0401,x
15fd: d8 44     mov   $44,x
15ff: e4 47     mov   a,$47
1601: 24 1b     and   a,$1b
1603: d0 03     bne   $1608
1605: 5f 83 16  jmp   $1683

1608: f4 21     mov   a,$21+x
160a: f0 77     beq   $1683
160c: ac 01 04  inc   $0401
160f: f5 20 04  mov   a,$0420+x
1612: 9c        dec   a
1613: d5 20 04  mov   $0420+x,a
1616: d0 65     bne   $167d
1618: 3f ba 16  call  $16ba
161b: d0 20     bne   $163d
161d: f5 80 04  mov   a,$0480+x
1620: d0 03     bne   $1625
1622: 5f 96 15  jmp   $1596

1625: 3f ee 17  call  $17ee
1628: f5 80 04  mov   a,$0480+x
162b: 9c        dec   a
162c: d5 80 04  mov   $0480+x,a
162f: d0 e7     bne   $1618
1631: f5 60 04  mov   a,$0460+x
1634: d4 20     mov   $20+x,a
1636: f5 61 04  mov   a,$0461+x
1639: d4 21     mov   $21+x,a
163b: 2f db     bra   $1618
163d: 30 20     bmi   $165f
163f: d5 30 04  mov   $0430+x,a
1642: 3f ba 16  call  $16ba
1645: 30 18     bmi   $165f
1647: 2d        push  a
1648: 9f        xcn   a
1649: 28 07     and   a,#$07
164b: fd        mov   y,a
164c: f6 18 a0  mov   a,$a018+y
164f: d5 31 04  mov   $0431+x,a
1652: ae        pop   a
1653: 28 0f     and   a,#$0f
1655: fd        mov   y,a
1656: f6 20 a0  mov   a,$a020+y
1659: d5 c0 05  mov   $05c0+x,a
165c: 3f ba 16  call  $16ba
165f: 68 e0     cmp   a,#$e0
1661: 90 05     bcc   $1668
1663: 3f a8 16  call  $16a8
1666: 2f b0     bra   $1618
1668: 3f 99 13  call  $1399
166b: f5 30 04  mov   a,$0430+x
166e: d5 20 04  mov   $0420+x,a
1671: fd        mov   y,a
1672: f5 31 04  mov   a,$0431+x
1675: cf        mul   ya
1676: dd        mov   a,y
1677: bc        inc   a
1678: d5 21 04  mov   $0421+x,a
167b: 2f 03     bra   $1680
167d: 3f 48 1a  call  $1a48
1680: 3f ac 18  call  $18ac
1683: 3d        inc   x
1684: 3d        inc   x
1685: 0b 47     asl   $47
1687: f0 03     beq   $168c
1689: 5f fd 15  jmp   $15fd

168c: e5 01 04  mov   a,$0401
168f: d0 03     bne   $1694
1691: 5f ae 14  jmp   $14ae

1694: 6f        ret

1695: cd 00     mov   x,#$00
1697: 8f 01 47  mov   $47,#$01
169a: f4 21     mov   a,$21+x
169c: f0 03     beq   $16a1
169e: 3f 69 19  call  $1969
16a1: 3d        inc   x
16a2: 3d        inc   x
16a3: 0b 47     asl   $47
16a5: d0 f3     bne   $169a
16a7: 6f        ret

16a8: 1c        asl   a
16a9: fd        mov   y,a
16aa: f6 4d 18  mov   a,$184d+y
16ad: 2d        push  a
16ae: f6 4c 18  mov   a,$184c+y
16b1: 2d        push  a
16b2: dd        mov   a,y
16b3: 5c        lsr   a
16b4: fd        mov   y,a
16b5: f6 ea 18  mov   a,$18ea+y
16b8: f0 08     beq   $16c2
16ba: e7 20     mov   a,($20+x)
16bc: bb 20     inc   $20+x
16be: d0 02     bne   $16c2
16c0: bb 21     inc   $21+x
16c2: fd        mov   y,a
16c3: 6f        ret

; vcmd e0 - set instrument
16c4: d5 c1 05  mov   $05c1+x,a
16c7: fd        mov   y,a
16c8: 10 07     bpl   $16d1
16ca: 80        setc
16cb: a8 ca     sbc   a,#$ca
16cd: 60        clrc
16ce: 85 10 04  adc   a,$0410
16d1: 8d 06     mov   y,#$06
16d3: cf        mul   ya
16d4: da 14     movw  $14,ya
16d6: 60        clrc
16d7: 98 00 14  adc   $14,#$00
16da: 98 1f 15  adc   $15,#$1f
16dd: 4d        push  x
16de: 7d        mov   a,x
16df: 9f        xcn   a
16e0: 5c        lsr   a
16e1: 08 04     or    a,#$04
16e3: 5d        mov   x,a
16e4: 8d 00     mov   y,#$00
16e6: f7 14     mov   a,($14)+y
16e8: 10 0e     bpl   $16f8
16ea: 28 1f     and   a,#$1f
16ec: 38 20 48  and   $48,#$20
16ef: 0e 48 00  tset1 $0048
16f2: 09 47 49  or    ($49),($47)
16f5: dd        mov   a,y
16f6: 2f 07     bra   $16ff
16f8: e4 47     mov   a,$47
16fa: 4e 49 00  tclr1 $0049
16fd: f7 14     mov   a,($14)+y
16ff: c9 f2 00  mov   $00f2,x
1702: c5 f3 00  mov   $00f3,a
1705: 3d        inc   x
1706: fc        inc   y
1707: ad 04     cmp   y,#$04
1709: d0 f2     bne   $16fd
170b: ce        pop   x
170c: f7 14     mov   a,($14)+y
170e: d5 51 04  mov   $0451+x,a
1711: fc        inc   y
1712: f7 14     mov   a,($14)+y
1714: d5 50 04  mov   $0450+x,a
1717: 6f        ret

; vcmd e1 - pan
1718: d5 e1 04  mov   $04e1+x,a
171b: 28 1f     and   a,#$1f
171d: d5 c1 04  mov   $04c1+x,a
1720: e8 00     mov   a,#$00
1722: d5 c0 04  mov   $04c0+x,a
1725: 6f        ret

; vcmd e2 - pan fade
1726: d4 71     mov   $71+x,a
1728: 2d        push  a
1729: 3f ba 16  call  $16ba
172c: d5 e0 04  mov   $04e0+x,a
172f: 80        setc
1730: b5 c1 04  sbc   a,$04c1+x
1733: ce        pop   x
1734: 3f f0 18  call  $18f0
1737: d5 d0 04  mov   $04d0+x,a
173a: dd        mov   a,y
173b: d5 d1 04  mov   $04d1+x,a
173e: 6f        ret

; vcmd e3 - vibrato on
173f: d5 50 05  mov   $0550+x,a
1742: 3f ba 16  call  $16ba
1745: d5 41 05  mov   $0541+x,a
1748: 3f ba 16  call  $16ba
; vcmd e4 - vibrato off
174b: d4 d1     mov   $d1+x,a
174d: d5 71 05  mov   $0571+x,a
1750: e8 00     mov   a,#$00
1752: d5 51 05  mov   $0551+x,a
1755: 6f        ret

; vcmd f0 - vibrato fade
1756: d5 51 05  mov   $0551+x,a
1759: 2d        push  a
175a: 8d 00     mov   y,#$00
175c: f4 d1     mov   a,$d1+x
175e: ce        pop   x
175f: 9e        div   ya,x
1760: f8 44     mov   x,$44
1762: d5 70 05  mov   $0570+x,a
1765: 6f        ret

; vcmd e5
1766: e8 00     mov   a,#$00
1768: da 58     movw  $58,ya
176a: 6f        ret

; vcmd e6
176b: 3f ba 16  call  $16ba
176e: 6f        ret

; vcmd e7 - tempo
176f: e8 00     mov   a,#$00
1771: da 52     movw  $52,ya
1773: 6f        ret

; vcmd e8
1774: 3f ba 16  call  $16ba
1777: 6f        ret

; vcmd e9
1778: c5 03 04  mov   $0403,a
177b: 6f        ret

; vcmd ea - per-voice transpose
177c: d5 91 05  mov   $0591+x,a
177f: 6f        ret

; vcmd eb - tremolo on
1780: d5 90 05  mov   $0590+x,a
1783: 3f ba 16  call  $16ba
1786: d5 81 05  mov   $0581+x,a
1789: 3f ba 16  call  $16ba
; vcmd ec - tremolo off
178c: e8 00     mov   a,#$00
178e: d4 e1     mov   $e1+x,a
1790: 6f        ret

; vcmd f1 - pitch envelope (release)
1791: e8 01     mov   a,#$01
1793: 2f 02     bra   $1797
; vcmd f2 - pitch envelope (attack)
1795: e8 00     mov   a,#$00
1797: d5 30 05  mov   $0530+x,a
179a: dd        mov   a,y
179b: d5 21 05  mov   $0521+x,a
179e: 3f ba 16  call  $16ba
17a1: d5 20 05  mov   $0520+x,a
17a4: 3f ba 16  call  $16ba
17a7: d5 31 05  mov   $0531+x,a
17aa: 6f        ret

; vcmd f3 - pitch envelope off
17ab: d5 20 05  mov   $0520+x,a
17ae: 6f        ret

; vcmd ed - volume
17af: d5 91 04  mov   $0491+x,a
17b2: e8 00     mov   a,#$00
17b4: d5 90 04  mov   $0490+x,a
17b7: 6f        ret

; vcmd ee - volume fade
17b8: d4 70     mov   $70+x,a
17ba: 2d        push  a
17bb: 3f ba 16  call  $16ba
17be: d5 b0 04  mov   $04b0+x,a
17c1: 80        setc
17c2: b5 91 04  sbc   a,$0491+x
17c5: ce        pop   x
17c6: 3f f0 18  call  $18f0
17c9: d5 a0 04  mov   $04a0+x,a
17cc: dd        mov   a,y
17cd: d5 a1 04  mov   $04a1+x,a
17d0: 6f        ret

; vcmd f4 - tuning
17d1: d5 11 05  mov   $0511+x,a
17d4: 6f        ret

; vcmd ef - call subroutine
17d5: d5 70 04  mov   $0470+x,a
17d8: 3f ba 16  call  $16ba
17db: d5 71 04  mov   $0471+x,a
17de: 3f ba 16  call  $16ba
17e1: d5 80 04  mov   $0480+x,a
17e4: f4 20     mov   a,$20+x
17e6: d5 60 04  mov   $0460+x,a
17e9: f4 21     mov   a,$21+x
17eb: d5 61 04  mov   $0461+x,a
17ee: f5 70 04  mov   a,$0470+x
17f1: d4 20     mov   $20+x,a
17f3: f5 71 04  mov   a,$0471+x
17f6: d4 21     mov   $21+x,a
17f8: 6f        ret

; vcmd f5 - echo v-bits/volume
17f9: c4 4a     mov   $4a,a
17fb: c5 bd 03  mov   $03bd,a
17fe: 48 ff     eor   a,#$ff
1800: c5 bf 03  mov   $03bf,a
1803: 3f ba 16  call  $16ba
1806: e8 00     mov   a,#$00
1808: da 60     movw  $60,ya
180a: 3f ba 16  call  $16ba
180d: e8 00     mov   a,#$00
180f: da 62     movw  $62,ya
1811: b2 48     clr5  $48
1813: 6f        ret

; vcmd f8 - echo volume fade
1814: c4 68     mov   $68,a
1816: 3f ba 16  call  $16ba
1819: c4 69     mov   $69,a
181b: 80        setc
181c: a4 61     sbc   a,$61
181e: f8 68     mov   x,$68
1820: 3f f0 18  call  $18f0
1823: da 64     movw  $64,ya
1825: 3f ba 16  call  $16ba
1828: c4 6a     mov   $6a,a
182a: 80        setc
182b: a4 63     sbc   a,$63
182d: f8 68     mov   x,$68
182f: 3f f0 18  call  $18f0
1832: da 66     movw  $66,ya
1834: 6f        ret

; vcmd f6 - disable echo
1835: da 60     movw  $60,ya
1837: da 62     movw  $62,ya
1839: a2 48     set5  $48
183b: 6f        ret

; vcmd f7 - set echo params
183c: 3f 5e 18  call  $185e
183f: 3f ba 16  call  $16ba
1842: c4 4e     mov   $4e,a
1844: 3f ba 16  call  $16ba
1847: 8d 08     mov   y,#$08
1849: cf        mul   ya
184a: 5d        mov   x,a
184b: 8d 0f     mov   y,#$0f
184d: f5 52 1e  mov   a,$1e52+x
1850: 3f 87 14  call  $1487
1853: 3d        inc   x
1854: dd        mov   a,y
1855: 60        clrc
1856: 88 10     adc   a,#$10
1858: fd        mov   y,a
1859: 10 f2     bpl   $184d
185b: f8 44     mov   x,$44
185d: 6f        ret

185e: c4 4d     mov   $4d,a
1860: 8d 7d     mov   y,#$7d
1862: cc f2 00  mov   $00f2,y
1865: e5 f3 00  mov   a,$00f3
1868: 64 4d     cmp   a,$4d
186a: f0 2b     beq   $1897
186c: 28 0f     and   a,#$0f
186e: 48 ff     eor   a,#$ff
1870: f3 4c 03  bbc7  $4c,$1876
1873: 60        clrc
1874: 84 4c     adc   a,$4c
1876: c4 4c     mov   $4c,a
1878: 8d 04     mov   y,#$04
187a: f6 71 1e  mov   a,$1e71+y
187d: c5 f2 00  mov   $00f2,a
1880: e8 00     mov   a,#$00
1882: c5 f3 00  mov   $00f3,a
1885: fe f3     dbnz  y,$187a
1887: e4 48     mov   a,$48
1889: 08 20     or    a,#$20
188b: 8d 6c     mov   y,#$6c
188d: 3f 87 14  call  $1487
1890: e4 4d     mov   a,$4d
1892: 8d 7d     mov   y,#$7d
1894: 3f 87 14  call  $1487
1897: 1c        asl   a
1898: 1c        asl   a
1899: 1c        asl   a
189a: 48 ff     eor   a,#$ff
189c: 80        setc
189d: 88 ff     adc   a,#$ff
189f: 8d 6d     mov   y,#$6d
18a1: 5f 87 14  jmp   $1487

; vcmd fa
18a4: c5 10 04  mov   $0410,a
18a7: 6f        ret

18a8: 3f bc 16  call  $16bc
18ab: 6f        ret

18ac: f4 80     mov   a,$80+x
; vcmd fe
18ae: d0 34     bne   $18e4
18b0: e7 20     mov   a,($20+x)
18b2: 68 f9     cmp   a,#$f9
18b4: d0 2e     bne   $18e4
18b6: 3f bc 16  call  $16bc
18b9: 3f ba 16  call  $16ba
; vcmd f9 - pitch slide
18bc: d4 81     mov   $81+x,a
18be: 3f ba 16  call  $16ba
18c1: d4 80     mov   $80+x,a
18c3: 3f ba 16  call  $16ba
18c6: 60        clrc
18c7: 85 03 04  adc   a,$0403
18ca: 95 91 05  adc   a,$0591+x
18cd: 28 7f     and   a,#$7f
18cf: d5 10 05  mov   $0510+x,a
18d2: 80        setc
18d3: b5 f1 04  sbc   a,$04f1+x
18d6: fb 80     mov   y,$80+x
18d8: 6d        push  y
18d9: ce        pop   x
18da: 3f f0 18  call  $18f0
18dd: d5 00 05  mov   $0500+x,a
18e0: dd        mov   a,y
18e1: d5 01 05  mov   $0501+x,a
18e4: 6f        ret

18e5: f5 f1 04  mov   a,$04f1+x
18e8: c4 11     mov   $11,a
18ea: f5 f0 04  mov   a,$04f0+x
18ed: c4 10     mov   $10,a
18ef: 6f        ret

18f0: ed        notc
18f1: 6b 12     ror   $12
18f3: 10 03     bpl   $18f8
18f5: 48 ff     eor   a,#$ff
18f7: bc        inc   a
18f8: 8d 00     mov   y,#$00
18fa: 9e        div   ya,x
18fb: 2d        push  a
18fc: e8 00     mov   a,#$00
18fe: 9e        div   ya,x
18ff: ee        pop   y
1900: f8 44     mov   x,$44
1902: f3 12 06  bbc7  $12,$190b
1905: da 14     movw  $14,ya
1907: ba 0e     movw  ya,$0e
1909: 9a 14     subw  ya,$14
190b: 6f        ret

; vcmd dispatch table (sfx)
190c: dw $16c4	; e0 - set instrument
190e: dw $1718  ; e1 - pan
1910: dw $1726	; e2 - pan fade
1912: dw $173f	; e3 - vibrato on
1914: dw $174b	; e4 - vibrato off
1916: dw $1766	; e5
1918: dw $176b	; e6
191a: dw $176f	; e7 - tempo
191c: dw $1774	; e8
191e: dw $1778	; e9
1920: dw $177c	; ea - per-voice transpose
1922: dw $1780	; eb - tremolo on
1924: dw $178c	; ec - tremolo off
1926: dw $17af	; ed - volume
1928: dw $17b8	; ee - volume fade
192a: dw $17d5	; ef - call subroutine
192c: dw $1756	; f0 - vibrato fade
192e: dw $1791	; f1 - pitch envelope (release)
1930: dw $1795	; f2 - pitch envelope (attack)
1932: dw $17ab	; f3 - pitch envelope off
1934: dw $17d1	; f4 - tuning
1936: dw $17f9	; f5 - echo vbits/volume
1938: dw $1835	; f6 - disable echo
193a: dw $183c	; f7 - set echo params
193c: dw $1814	; f8 - echo volume fade
193e: dw $18bc	; f9 - set pitch slide
1940: dw $18a4	; fa
1942: dw $1c06	; fb - echo on
1944: dw $1c1b	; fc - echo off
1946: dw $1bee	; fd
1948: dw $18a8	; fe

; vcmd lengths (sfx)
194a: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
1952: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
195a: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
1962: db $03,$03,$01,$00,$00,$02,$02	 ; f8-fe

1969: f4 70     mov   a,$70+x
196b: f0 24     beq   $1991
196d: 09 47 5e  or    ($5e),($47)
1970: 9b 70     dec   $70+x
1972: d0 0a     bne   $197e
1974: e8 00     mov   a,#$00
1976: d5 90 04  mov   $0490+x,a
1979: f5 b0 04  mov   a,$04b0+x
197c: 2f 10     bra   $198e
197e: 60        clrc
197f: f5 90 04  mov   a,$0490+x
1982: 95 a0 04  adc   a,$04a0+x
1985: d5 90 04  mov   $0490+x,a
1988: f5 91 04  mov   a,$0491+x
198b: 95 a1 04  adc   a,$04a1+x
198e: d5 91 04  mov   $0491+x,a
1991: fb e1     mov   y,$e1+x
1993: f0 23     beq   $19b8
1995: f5 90 05  mov   a,$0590+x
1998: de e0 1b  cbne  $e0+x,$19b6
199b: 09 47 5e  or    ($5e),($47)
199e: f5 80 05  mov   a,$0580+x
19a1: 10 07     bpl   $19aa
19a3: fc        inc   y
19a4: d0 04     bne   $19aa
19a6: e8 80     mov   a,#$80
19a8: 2f 04     bra   $19ae
19aa: 60        clrc
19ab: 95 81 05  adc   a,$0581+x
19ae: d5 80 05  mov   $0580+x,a
19b1: 3f c7 1b  call  $1bc7
19b4: 2f 07     bra   $19bd
19b6: bb e0     inc   $e0+x
19b8: e8 ff     mov   a,#$ff
19ba: 3f d2 1b  call  $1bd2
19bd: f4 71     mov   a,$71+x
19bf: f0 24     beq   $19e5
19c1: 09 47 5e  or    ($5e),($47)
19c4: 9b 71     dec   $71+x
19c6: d0 0a     bne   $19d2
19c8: e8 00     mov   a,#$00
19ca: d5 c0 04  mov   $04c0+x,a
19cd: f5 e0 04  mov   a,$04e0+x
19d0: 2f 10     bra   $19e2
19d2: 60        clrc
19d3: f5 c0 04  mov   a,$04c0+x
19d6: 95 d0 04  adc   a,$04d0+x
19d9: d5 c0 04  mov   $04c0+x,a
19dc: f5 c1 04  mov   a,$04c1+x
19df: 95 d1 04  adc   a,$04d1+x
19e2: d5 c1 04  mov   $04c1+x,a
19e5: e4 47     mov   a,$47
19e7: 24 5e     and   a,$5e
19e9: f0 5c     beq   $1a47
19eb: f5 c1 04  mov   a,$04c1+x
19ee: fd        mov   y,a
19ef: f5 c0 04  mov   a,$04c0+x
19f2: da 10     movw  $10,ya
19f4: 7d        mov   a,x
19f5: 9f        xcn   a
19f6: 5c        lsr   a
19f7: c4 12     mov   $12,a
19f9: eb 11     mov   y,$11
19fb: e5 b8 03  mov   a,$03b8
19fe: f0 11     beq   $1a11
1a00: e8 51     mov   a,#$51
1a02: 80        setc
1a03: a8 51     sbc   a,#$51
1a05: eb 10     mov   y,$10
1a07: cf        mul   ya
1a08: dd        mov   a,y
1a09: eb 11     mov   y,$11
1a0b: 60        clrc
1a0c: 88 51     adc   a,#$51
1a0e: fd        mov   y,a
1a0f: 2f 12     bra   $1a23
1a11: f6 3e 1e  mov   a,$1e3e+y
1a14: 80        setc
1a15: b6 3d 1e  sbc   a,$1e3d+y
1a18: eb 10     mov   y,$10
1a1a: cf        mul   ya
1a1b: dd        mov   a,y
1a1c: eb 11     mov   y,$11
1a1e: 60        clrc
1a1f: 96 3d 1e  adc   a,$1e3d+y
1a22: fd        mov   y,a
1a23: f5 b1 04  mov   a,$04b1+x
1a26: cf        mul   ya
1a27: f5 e1 04  mov   a,$04e1+x
1a2a: 1c        asl   a
1a2b: 13 12 01  bbc0  $12,$1a2f
1a2e: 1c        asl   a
1a2f: dd        mov   a,y
1a30: 90 03     bcc   $1a35
1a32: 48 ff     eor   a,#$ff
1a34: bc        inc   a
1a35: eb 12     mov   y,$12
1a37: 3f 87 14  call  $1487
1a3a: 8d 14     mov   y,#$14
1a3c: e8 00     mov   a,#$00
1a3e: 9a 10     subw  ya,$10
1a40: da 10     movw  $10,ya
1a42: ab 12     inc   $12
1a44: 33 12 b2  bbc1  $12,$19f9
1a47: 6f        ret

1a48: f5 21 04  mov   a,$0421+x
1a4b: f0 6b     beq   $1ab8
1a4d: 9c        dec   a
1a4e: d5 21 04  mov   $0421+x,a
1a51: f0 07     beq   $1a5a
1a53: e8 02     mov   a,#$02
1a55: 75 20 04  cmp   a,$0420+x
1a58: d0 5e     bne   $1ab8
1a5a: f5 80 04  mov   a,$0480+x
1a5d: c4 17     mov   $17,a
1a5f: f4 20     mov   a,$20+x
1a61: fb 21     mov   y,$21+x
1a63: da 14     movw  $14,ya
1a65: 8d 00     mov   y,#$00
1a67: f7 14     mov   a,($14)+y
1a69: f0 1e     beq   $1a89
1a6b: 30 07     bmi   $1a74
1a6d: fc        inc   y
1a6e: 30 40     bmi   $1ab0
1a70: f7 14     mov   a,($14)+y
1a72: 10 f9     bpl   $1a6d
1a74: 68 c8     cmp   a,#$c8
1a76: f0 40     beq   $1ab8
1a78: 68 ef     cmp   a,#$ef
1a7a: f0 29     beq   $1aa5
1a7c: 68 e0     cmp   a,#$e0
1a7e: 90 30     bcc   $1ab0
1a80: 6d        push  y
1a81: fd        mov   y,a
1a82: ae        pop   a
1a83: 96 6a 18  adc   a,$186a+y
1a86: fd        mov   y,a
1a87: 2f de     bra   $1a67
1a89: e4 17     mov   a,$17
1a8b: f0 23     beq   $1ab0
1a8d: 8b 17     dec   $17
1a8f: d0 0a     bne   $1a9b
1a91: f5 61 04  mov   a,$0461+x
1a94: 2d        push  a
1a95: f5 60 04  mov   a,$0460+x
1a98: ee        pop   y
1a99: 2f c8     bra   $1a63
1a9b: f5 71 04  mov   a,$0471+x
1a9e: 2d        push  a
1a9f: f5 70 04  mov   a,$0470+x
1aa2: ee        pop   y
1aa3: 2f be     bra   $1a63
1aa5: fc        inc   y
1aa6: f7 14     mov   a,($14)+y
1aa8: 2d        push  a
1aa9: fc        inc   y
1aaa: f7 14     mov   a,($14)+y
1aac: fd        mov   y,a
1aad: ae        pop   a
1aae: 2f b3     bra   $1a63
1ab0: e4 47     mov   a,$47
1ab2: 05 d3 03  or    a,$03d3
1ab5: c5 d3 03  mov   $03d3,a
1ab8: f2 13     clr7  $13
1aba: f4 80     mov   a,$80+x
1abc: f0 2c     beq   $1aea
1abe: f4 81     mov   a,$81+x
1ac0: f0 04     beq   $1ac6
1ac2: 9b 81     dec   $81+x
1ac4: 2f 24     bra   $1aea
1ac6: e2 13     set7  $13
1ac8: 9b 80     dec   $80+x
1aca: d0 0b     bne   $1ad7
1acc: f5 11 05  mov   a,$0511+x
1acf: d5 f0 04  mov   $04f0+x,a
1ad2: f5 10 05  mov   a,$0510+x
1ad5: 2f 10     bra   $1ae7
1ad7: 60        clrc
1ad8: f5 f0 04  mov   a,$04f0+x
1adb: 95 00 05  adc   a,$0500+x
1ade: d5 f0 04  mov   $04f0+x,a
1ae1: f5 f1 04  mov   a,$04f1+x
1ae4: 95 01 05  adc   a,$0501+x
1ae7: d5 f1 04  mov   $04f1+x,a
1aea: 3f e5 18  call  $18e5
1aed: f4 d1     mov   a,$d1+x
1aef: f0 4c     beq   $1b3d
1af1: f5 50 05  mov   a,$0550+x
1af4: de d0 44  cbne  $d0+x,$1b3b
1af7: f5 60 05  mov   a,$0560+x
1afa: 75 51 05  cmp   a,$0551+x
1afd: d0 05     bne   $1b04
1aff: f5 71 05  mov   a,$0571+x
1b02: 2f 0d     bra   $1b11
1b04: 40        setp
1b05: bb 60     inc   $60+x
1b07: 20        clrp
1b08: fd        mov   y,a
1b09: f0 02     beq   $1b0d
1b0b: f4 d1     mov   a,$d1+x
1b0d: 60        clrc
1b0e: 95 70 05  adc   a,$0570+x
1b11: d4 d1     mov   $d1+x,a
1b13: f5 40 05  mov   a,$0540+x
1b16: 60        clrc
1b17: 95 41 05  adc   a,$0541+x
1b1a: d5 40 05  mov   $0540+x,a
1b1d: c4 12     mov   $12,a
1b1f: 1c        asl   a
1b20: 1c        asl   a
1b21: 90 02     bcc   $1b25
1b23: 48 ff     eor   a,#$ff
1b25: fd        mov   y,a
1b26: f4 d1     mov   a,$d1+x
1b28: 68 f1     cmp   a,#$f1
1b2a: 90 05     bcc   $1b31
1b2c: 28 0f     and   a,#$0f
1b2e: cf        mul   ya
1b2f: 2f 04     bra   $1b35
1b31: cf        mul   ya
1b32: dd        mov   a,y
1b33: 8d 00     mov   y,#$00
1b35: 3f b2 1b  call  $1bb2
1b38: 5f 04 14  jmp   $1404

1b3b: bb d0     inc   $d0+x
1b3d: e3 13 f8  bbs7  $13,$1b38
1b40: 6f        ret

1b41: f2 13     clr7  $13
1b43: f4 e1     mov   a,$e1+x
1b45: f0 09     beq   $1b50
1b47: f5 90 05  mov   a,$0590+x
1b4a: de e0 03  cbne  $e0+x,$1b50
1b4d: 3f ba 1b  call  $1bba
1b50: f5 c1 04  mov   a,$04c1+x
1b53: fd        mov   y,a
1b54: f5 c0 04  mov   a,$04c0+x
1b57: da 10     movw  $10,ya
1b59: f4 71     mov   a,$71+x
1b5b: f0 0a     beq   $1b67
1b5d: f5 d1 04  mov   a,$04d1+x
1b60: fd        mov   y,a
1b61: f5 d0 04  mov   a,$04d0+x
1b64: 3f 9c 1b  call  $1b9c
1b67: f3 13 03  bbc7  $13,$1b6d
1b6a: 3f f4 19  call  $19f4
1b6d: f2 13     clr7  $13
1b6f: 3f e5 18  call  $18e5
1b72: f4 80     mov   a,$80+x
1b74: f0 0e     beq   $1b84
1b76: f4 81     mov   a,$81+x
1b78: d0 0a     bne   $1b84
1b7a: f5 01 05  mov   a,$0501+x
1b7d: fd        mov   y,a
1b7e: f5 00 05  mov   a,$0500+x
1b81: 3f 9c 1b  call  $1b9c
1b84: f4 d1     mov   a,$d1+x
1b86: f0 b5     beq   $1b3d
1b88: f5 50 05  mov   a,$0550+x
1b8b: de d0 af  cbne  $d0+x,$1b3d
1b8e: eb 51     mov   y,$51
1b90: f5 41 05  mov   a,$0541+x
1b93: cf        mul   ya
1b94: dd        mov   a,y
1b95: 60        clrc
1b96: 95 40 05  adc   a,$0540+x
1b99: 5f 1d 1b  jmp   $1b1d

1b9c: e2 13     set7  $13
1b9e: cb 12     mov   $12,y
1ba0: 3f 02 19  call  $1902
1ba3: 6d        push  y
1ba4: eb 51     mov   y,$51
1ba6: cf        mul   ya
1ba7: cb 14     mov   $14,y
1ba9: 8f 00 15  mov   $15,#$00
1bac: eb 51     mov   y,$51
1bae: ae        pop   a
1baf: cf        mul   ya
1bb0: 7a 14     addw  ya,$14
1bb2: 3f 02 19  call  $1902
1bb5: 7a 10     addw  ya,$10
1bb7: da 10     movw  $10,ya
1bb9: 6f        ret

1bba: e2 13     set7  $13
1bbc: eb 51     mov   y,$51
1bbe: f5 81 05  mov   a,$0581+x
1bc1: cf        mul   ya
1bc2: dd        mov   a,y
1bc3: 60        clrc
1bc4: 95 80 05  adc   a,$0580+x
1bc7: 1c        asl   a
1bc8: 90 02     bcc   $1bcc
1bca: 48 ff     eor   a,#$ff
1bcc: fb e1     mov   y,$e1+x
1bce: cf        mul   ya
1bcf: dd        mov   a,y
1bd0: 48 ff     eor   a,#$ff
1bd2: ec b9 03  mov   y,$03b9
1bd5: f0 05     beq   $1bdc
1bd7: ec 04 04  mov   y,$0404
1bda: 2f 02     bra   $1bde
1bdc: eb 59     mov   y,$59
1bde: cf        mul   ya
1bdf: f5 c0 05  mov   a,$05c0+x
1be2: cf        mul   ya
1be3: f5 91 04  mov   a,$0491+x
1be6: cf        mul   ya
1be7: dd        mov   a,y
1be8: cf        mul   ya
1be9: dd        mov   a,y
1bea: d5 b1 04  mov   $04b1+x,a
1bed: 6f        ret

; vcmd fd
1bee: 7d        mov   a,x
1bef: 9f        xcn   a
1bf0: 5c        lsr   a
1bf1: 08 05     or    a,#$05
1bf3: c4 14     mov   $14,a
1bf5: dd        mov   a,y
1bf6: eb 14     mov   y,$14
1bf8: 3f 87 14  call  $1487
1bfb: 3f ba 16  call  $16ba
1bfe: ab 14     inc   $14
1c00: eb 14     mov   y,$14
1c02: 3f 87 14  call  $1487
1c05: 6f        ret

; vcmd fb - echo on
1c06: e5 bd 03  mov   a,$03bd
1c09: 04 47     or    a,$47
1c0b: c5 bd 03  mov   $03bd,a
1c0e: e4 47     mov   a,$47
1c10: 48 ff     eor   a,#$ff
1c12: 25 bf 03  and   a,$03bf
1c15: c5 bf 03  mov   $03bf,a
1c18: 5f 7a 13  jmp   $137a

; vcmd fc - echo off
1c1b: e5 bf 03  mov   a,$03bf
1c1e: 04 47     or    a,$47
1c20: c5 bf 03  mov   $03bf,a
1c23: e4 47     mov   a,$47
1c25: 48 ff     eor   a,#$ff
1c27: 25 bd 03  and   a,$03bd
1c2a: c5 bd 03  mov   $03bd,a
1c2d: 5f 7a 13  jmp   $137a

1c30: 8d 00     mov   y,#$00
1c32: f7 6e     mov   a,($6e)+y
1c34: 3a 6e     incw  $6e
1c36: 2d        push  a
1c37: f7 6e     mov   a,($6e)+y
1c39: 3a 6e     incw  $6e
1c3b: fd        mov   y,a
1c3c: ae        pop   a
1c3d: 6f        ret

1c3e: c4 06     mov   $06,a
1c40: 1c        asl   a
1c41: 5d        mov   x,a
1c42: f5 ff bf  mov   a,$bfff+x
1c45: fd        mov   y,a
1c46: f5 fe bf  mov   a,$bffe+x
1c49: da 6e     movw  $6e,ya
1c4b: 8f 02 1f  mov   $1f,#$02
1c4e: 2f 02     bra   $1c52
1c50: c4 06     mov   $06,a
1c52: e4 6d     mov   a,$6d
1c54: 0e 46 00  tset1 $0046
1c57: e8 a5     mov   a,#$a5
1c59: c5 e4 05  mov   $05e4,a
1c5c: 6f        ret

1c5d: e4 6d     mov   a,$6d
1c5f: 0e 46 00  tset1 $0046
1c62: e8 00     mov   a,#$00
1c64: c5 e4 05  mov   $05e4,a
1c67: cd 00     mov   x,#$00
1c69: 8f 01 47  mov   $47,#$01
1c6c: e4 6d     mov   a,$6d
1c6e: 24 47     and   a,$47
1c70: f0 14     beq   $1c86
1c72: e4 47     mov   a,$47
1c74: 48 ff     eor   a,#$ff
1c76: 24 1a     and   a,$1a
1c78: c4 1a     mov   $1a,a
1c7a: f5 11 02  mov   a,$0211+x
1c7d: 3f fd 0d  call  $0dfd
1c80: e8 00     mov   a,#$00
1c82: d4 21     mov   $21+x,a
1c84: d4 20     mov   $20+x,a
1c86: 3d        inc   x
1c87: 3d        inc   x
1c88: 0b 47     asl   $47
1c8a: d0 e0     bne   $1c6c
1c8c: e8 00     mov   a,#$00
1c8e: c4 6d     mov   $6d,a
1c90: 6f        ret

1c91: cd 0e     mov   x,#$0e
1c93: 8f 80 47  mov   $47,#$80
1c96: e4 47     mov   a,$47
1c98: 24 6d     and   a,$6d
1c9a: f0 06     beq   $1ca2
1c9c: e8 00     mov   a,#$00
1c9e: d4 20     mov   $20+x,a
1ca0: d4 1f     mov   $1f+x,a
1ca2: 1d        dec   x
1ca3: 1d        dec   x
1ca4: 4b 47     lsr   $47
1ca6: d0 ee     bne   $1c96
1ca8: e8 00     mov   a,#$00
1caa: c4 6d     mov   $6d,a
1cac: cd 00     mov   x,#$00
1cae: 8f 01 47  mov   $47,#$01
1cb1: f5 f1 05  mov   a,$05f1+x
1cb4: f0 15     beq   $1ccb
1cb6: d4 21     mov   $21+x,a
1cb8: f5 f0 05  mov   a,$05f0+x
1cbb: d4 20     mov   $20+x,a
1cbd: 09 47 1a  or    ($1a),($47)
1cc0: 09 47 6d  or    ($6d),($47)
1cc3: e4 47     mov   a,$47
1cc5: 48 ff     eor   a,#$ff
1cc7: 24 1b     and   a,$1b
1cc9: c4 1b     mov   $1b,a
1ccb: 3d        inc   x
1ccc: 3d        inc   x
1ccd: 0b 47     asl   $47
1ccf: d0 e0     bne   $1cb1
1cd1: e4 6d     mov   a,$6d
1cd3: 0e 46 00  tset1 $0046
1cd6: e8 00     mov   a,#$00
1cd8: c5 e4 05  mov   $05e4,a
1cdb: 6f        ret

1cdc: 3f 30 1c  call  $1c30
1cdf: 1a 6e     decw  $6e
1ce1: 1a 6e     decw  $6e
1ce3: da 16     movw  $16,ya
1ce5: 8d 0f     mov   y,#$0f
1ce7: f7 16     mov   a,($16)+y
1ce9: d6 f0 05  mov   $05f0+y,a
1cec: dc        dec   y
1ced: 10 f8     bpl   $1ce7
1cef: 3f 91 1c  call  $1c91
1cf2: cd 0e     mov   x,#$0e
1cf4: 8f 80 47  mov   $47,#$80
1cf7: e4 47     mov   a,$47
1cf9: 24 6d     and   a,$6d
1cfb: f0 1d     beq   $1d1a
1cfd: e8 ff     mov   a,#$ff
1cff: d5 91 04  mov   $0491+x,a
1d02: e5 e3 05  mov   a,$05e3
1d05: 3f 18 17  call  $1718
1d08: e8 00     mov   a,#$00
1d0a: d5 c1 05  mov   $05c1+x,a
1d0d: d5 11 05  mov   $0511+x,a
1d10: d5 91 05  mov   $0591+x,a
1d13: d5 20 05  mov   $0520+x,a
1d16: d4 d1     mov   $d1+x,a
1d18: d4 e1     mov   $e1+x,a
1d1a: 1d        dec   x
1d1b: 1d        dec   x
1d1c: 4b 47     lsr   $47
1d1e: d0 d7     bne   $1cf7
1d20: c5 03 04  mov   $0403,a
1d23: c5 e0 05  mov   $05e0,a
1d26: c5 10 04  mov   $0410,a
1d29: c4 70     mov   $70,a
1d2b: 6f        ret

1d2c: e5 e4 05  mov   a,$05e4
1d2f: f0 03     beq   $1d34
1d31: 5f 62 1c  jmp   $1c62

1d34: eb 0a     mov   y,$0a
1d36: e4 02     mov   a,$02
1d38: c4 0a     mov   $0a,a
1d3a: 7e 02     cmp   y,$02
1d3c: f0 03     beq   $1d41
1d3e: 5f 3e 1c  jmp   $1c3e

1d41: e4 06     mov   a,$06
1d43: f0 e6     beq   $1d2b
1d45: e4 1f     mov   a,$1f
1d47: d0 03     bne   $1d4c
1d49: 5f a8 1d  jmp   $1da8

1d4c: 6e 1f 8d  dbnz  $1f,$1cdc
1d4f: 3f 30 1c  call  $1c30
1d52: d0 1a     bne   $1d6e
1d54: fd        mov   y,a
1d55: d0 03     bne   $1d5a
1d57: 5f 50 1c  jmp   $1c50

1d5a: 8c e0 05  dec   $05e0
1d5d: 10 03     bpl   $1d62
1d5f: c5 e0 05  mov   $05e0,a
1d62: 3f 30 1c  call  $1c30
1d65: e9 e0 05  mov   x,$05e0
1d68: f0 e5     beq   $1d4f
1d6a: da 6e     movw  $6e,ya
1d6c: 2f e1     bra   $1d4f
1d6e: da 16     movw  $16,ya
1d70: 8d 0f     mov   y,#$0f
1d72: f7 16     mov   a,($16)+y
1d74: d6 f0 05  mov   $05f0+y,a
1d77: dc        dec   y
1d78: 10 f8     bpl   $1d72
1d7a: 3f 5d 1c  call  $1c5d
1d7d: 3f 91 1c  call  $1c91
1d80: cd 00     mov   x,#$00
1d82: 8f 01 47  mov   $47,#$01
1d85: e4 47     mov   a,$47
1d87: 24 6d     and   a,$6d
1d89: f0 17     beq   $1da2
1d8b: f4 21     mov   a,$21+x
1d8d: f0 06     beq   $1d95
1d8f: f5 c1 05  mov   a,$05c1+x
1d92: 3f c4 16  call  $16c4
1d95: e8 00     mov   a,#$00
1d97: d5 80 04  mov   $0480+x,a
1d9a: d4 70     mov   $70+x,a
1d9c: d4 71     mov   $71+x,a
1d9e: bc        inc   a
1d9f: d5 20 04  mov   $0420+x,a
1da2: 3d        inc   x
1da3: 3d        inc   x
1da4: 0b 47     asl   $47
1da6: d0 dd     bne   $1d85
1da8: cd 00     mov   x,#$00
1daa: e4 6d     mov   a,$6d
1dac: 24 5e     and   a,$5e
1dae: c4 5e     mov   $5e,a
1db0: 8f 01 47  mov   $47,#$01
1db3: d8 44     mov   $44,x
1db5: e4 47     mov   a,$47
1db7: 24 6d     and   a,$6d
1db9: f0 78     beq   $1e33
1dbb: f4 21     mov   a,$21+x
1dbd: f0 74     beq   $1e33
1dbf: f5 20 04  mov   a,$0420+x
1dc2: 9c        dec   a
1dc3: d5 20 04  mov   $0420+x,a
1dc6: d0 65     bne   $1e2d
1dc8: 3f ba 16  call  $16ba
1dcb: d0 20     bne   $1ded
1dcd: f5 80 04  mov   a,$0480+x
1dd0: d0 03     bne   $1dd5
1dd2: 5f 4f 1d  jmp   $1d4f

1dd5: 3f ee 17  call  $17ee
1dd8: f5 80 04  mov   a,$0480+x
1ddb: 9c        dec   a
1ddc: d5 80 04  mov   $0480+x,a
1ddf: d0 e7     bne   $1dc8
1de1: f5 60 04  mov   a,$0460+x
1de4: d4 20     mov   $20+x,a
1de6: f5 61 04  mov   a,$0461+x
1de9: d4 21     mov   $21+x,a
1deb: 2f db     bra   $1dc8
1ded: 30 20     bmi   $1e0f
1def: d5 30 04  mov   $0430+x,a
1df2: 3f ba 16  call  $16ba
1df5: 30 18     bmi   $1e0f
1df7: 2d        push  a
1df8: 9f        xcn   a
1df9: 28 07     and   a,#$07
1dfb: fd        mov   y,a
1dfc: f6 18 a0  mov   a,$a018+y
1dff: d5 31 04  mov   $0431+x,a
1e02: ae        pop   a
1e03: 28 0f     and   a,#$0f
1e05: fd        mov   y,a
1e06: f6 20 a0  mov   a,$a020+y
1e09: d5 c0 05  mov   $05c0+x,a
1e0c: 3f ba 16  call  $16ba
1e0f: 68 e0     cmp   a,#$e0
1e11: 90 05     bcc   $1e18
1e13: 3f a8 16  call  $16a8
1e16: 2f b0     bra   $1dc8
1e18: 3f 99 13  call  $1399
1e1b: f5 30 04  mov   a,$0430+x
1e1e: d5 20 04  mov   $0420+x,a
1e21: fd        mov   y,a
1e22: f5 31 04  mov   a,$0431+x
1e25: cf        mul   ya
1e26: dd        mov   a,y
1e27: bc        inc   a
1e28: d5 21 04  mov   $0421+x,a
1e2b: 2f 03     bra   $1e30
1e2d: 3f 48 1a  call  $1a48
1e30: 3f ac 18  call  $18ac
1e33: 3d        inc   x
1e34: 3d        inc   x
1e35: 0b 47     asl   $47
1e37: f0 03     beq   $1e3c
1e39: 5f b3 1d  jmp   $1db3

1e3c: 6f        ret

; pan table
1e3d: db $00,$01,$03,$07,$0d,$15,$1e,$29
1e45: db $34,$42,$51,$5e,$67,$6e,$73,$77
1e4d: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
1e52: db $7f,$00,$00,$00,$00,$00,$00,$00
1e5a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1e62: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1e6a: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
1e72: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1e7c: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1e86: dw $085f
1e88: dw $08de
1e8a: dw $0965
1e8c: dw $09f4
1e8e: dw $0a8c
1e90: dw $0b2c
1e92: dw $0bd6
1e94: dw $0c8b
1e96: dw $0d4a
1e98: dw $0e14
1e9a: dw $0eea
1e9c: dw $0fcd
1e9e: dw $10be

1ea0: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

1eab: e8 aa     mov   a,#$aa
1ead: c5 f4 00  mov   $00f4,a
1eb0: e8 bb     mov   a,#$bb
1eb2: c5 f5 00  mov   $00f5,a
1eb5: e5 f4 00  mov   a,$00f4
1eb8: 68 cc     cmp   a,#$cc
1eba: d0 f9     bne   $1eb5
1ebc: 2f 20     bra   $1ede
1ebe: ec f4 00  mov   y,$00f4
1ec1: d0 fb     bne   $1ebe
1ec3: 5e f4 00  cmp   y,$00f4
1ec6: d0 0f     bne   $1ed7
1ec8: e5 f5 00  mov   a,$00f5
1ecb: cc f4 00  mov   $00f4,y
1ece: d7 14     mov   ($14)+y,a
1ed0: fc        inc   y
1ed1: d0 f0     bne   $1ec3
1ed3: ab 15     inc   $15
1ed5: 2f ec     bra   $1ec3
1ed7: 10 ea     bpl   $1ec3
1ed9: 5e f4 00  cmp   y,$00f4
1edc: 10 e5     bpl   $1ec3
1ede: e5 f6 00  mov   a,$00f6
1ee1: ec f7 00  mov   y,$00f7
1ee4: da 14     movw  $14,ya
1ee6: ec f4 00  mov   y,$00f4
1ee9: e5 f5 00  mov   a,$00f5
1eec: cc f4 00  mov   $00f4,y
1eef: d0 cd     bne   $1ebe
1ef1: cd 31     mov   x,#$31
1ef3: c9 f1 00  mov   $00f1,x
1ef6: 6f        ret

; note dur%'s
a018: db $32,$65,$7f,$98,$b2,$cb,$e5,$ff
; per-note velocity values
a020: db $0a,$19,$28,$3c,$50,$64,$7d,$96
a028: db $aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff