0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 e0     mov   a,#$e0
0806: 8d 6c     mov   y,#$6c
0808: 3f 35 0c  call  $0c35
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
087d: f6 79 1e  mov   a,$1e79+y
0880: c5 f2 00  mov   $00f2,a
0883: f6 83 1e  mov   a,$1e83+y
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
08d9: 3f 34 1d  call  $1d34
08dc: 3f 82 15  call  $1582
08df: e4 05     mov   a,$05
08e1: 04 06     or    a,$06
08e3: f0 03     beq   $08e8
08e5: 3f a4 16  call  $16a4
08e8: e4 5e     mov   a,$5e
08ea: c5 05 04  mov   $0405,a
08ed: 3f a8 0c  call  $0ca8
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
0931: 3f 49 1b  call  $1b49
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
094c: 3f a4 12  call  $12a4
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
097e: 3f c8 0a  call  $0ac8
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

09d3: f3 09 8b  bbc7  $09,$0961
09d6: 0a 92 0a  or1   c,$0a92,0
09d9: a0        ei
09da: 0a a6 0a  or1   c,$0aa6,0
09dd: ac 0a b8  inc   $b80a
09e0: 0a be 0a  or1   c,$0abe,0
09e3: e3 0a e9  bbs7  $0a,$09cf
09e6: 0a fd 0a  or1   c,$0afd,0
09e9: 1b 0b     asl   $0b+x
09eb: 39        and   (x),(y)
09ec: 0b 39     asl   $39
09ee: 0b 39     asl   $39
09f0: 0b 14     asl   $14
09f2: 0a e8 e0  or1   c,$00e8,7
09f5: 8d 6c     mov   y,#$6c
09f7: 3f 35 0c  call  $0c35
09fa: e8 00     mov   a,#$00
09fc: 3f bd 0f  call  $0fbd
09ff: a2 48     set5  $48
0a01: e8 70     mov   a,#$70
0a03: 8d 0c     mov   y,#$0c
0a05: 3f 35 0c  call  $0c35
0a08: 8d 1c     mov   y,#$1c
0a0a: 3f 35 0c  call  $0c35
0a0d: e8 20     mov   a,#$20
0a0f: 8d 5d     mov   y,#$5d
0a11: 3f 35 0c  call  $0c35
0a14: e8 00     mov   a,#$00
0a16: c5 b8 03  mov   $03b8,a
0a19: e8 b0     mov   a,#$b0
0a1b: c4 59     mov   $59,a
0a1d: c5 bb 03  mov   $03bb,a
0a20: e8 ff     mov   a,#$ff
0a22: c5 d7 03  mov   $03d7,a
0a25: e8 b4     mov   a,#$b4
0a27: c5 ba 03  mov   $03ba,a
0a2a: e8 ff     mov   a,#$ff
0a2c: c5 b9 03  mov   $03b9,a
0a2f: e8 e0     mov   a,#$e0
0a31: c5 04 04  mov   $0404,a
0a34: 8f 20 53  mov   $53,#$20
0a37: e8 00     mov   a,#$00
0a39: c4 00     mov   $00,a
0a3b: c4 01     mov   $01,a
0a3d: c4 02     mov   $02,a
0a3f: c4 03     mov   $03,a
0a41: c5 b0 03  mov   $03b0,a
0a44: c5 b1 03  mov   $03b1,a
0a47: c5 b2 03  mov   $03b2,a
0a4a: c5 b3 03  mov   $03b3,a
0a4d: c5 b4 03  mov   $03b4,a
0a50: c5 b5 03  mov   $03b5,a
0a53: c5 b6 03  mov   $03b6,a
0a56: c5 b7 03  mov   $03b7,a
0a59: c4 5a     mov   $5a,a
0a5b: c4 68     mov   $68,a
0a5d: c4 54     mov   $54,a
0a5f: c4 50     mov   $50,a
0a61: c5 03 04  mov   $0403,a
0a64: c4 42     mov   $42,a
0a66: c5 02 04  mov   $0402,a
0a69: c5 e0 05  mov   $05e0,a
0a6c: c4 5f     mov   $5f,a
0a6e: c5 bc 03  mov   $03bc,a
0a71: c5 bd 03  mov   $03bd,a
0a74: c5 be 03  mov   $03be,a
0a77: c5 bf 03  mov   $03bf,a
0a7a: c5 d5 03  mov   $03d5,a
0a7d: e8 0a     mov   a,#$0a
0a7f: c5 06 04  mov   $0406,a
0a82: c5 e3 05  mov   $05e3,a
0a85: e8 f1     mov   a,#$f1
0a87: c5 f1 00  mov   $00f1,a
0a8a: 6f        ret

0a8b: e5 b3 03  mov   a,$03b3
0a8e: 3f d6 0e  call  $0ed6
0a91: 6f        ret

0a92: ec b3 03  mov   y,$03b3
0a95: dd        mov   a,y
0a96: 3f a8 0e  call  $0ea8
0a99: e5 b3 03  mov   a,$03b3
0a9c: c5 bb 03  mov   $03bb,a
0a9f: 6f        ret

0aa0: e8 00     mov   a,#$00
0aa2: c5 b8 03  mov   $03b8,a
0aa5: 6f        ret

0aa6: e8 ff     mov   a,#$ff
0aa8: c5 b8 03  mov   $03b8,a
0aab: 6f        ret

0aac: e8 ff     mov   a,#$ff
0aae: c5 b9 03  mov   $03b9,a
0ab1: e5 b3 03  mov   a,$03b3
0ab4: c5 04 04  mov   $0404,a
0ab7: 6f        ret

0ab8: e8 00     mov   a,#$00
0aba: c5 b9 03  mov   $03b9,a
0abd: 6f        ret

0abe: e5 b3 03  mov   a,$03b3
0ac1: d0 01     bne   $0ac4
0ac3: bc        inc   a
0ac4: c5 ba 03  mov   $03ba,a
0ac7: 6f        ret

0ac8: 8d 00     mov   y,#$00
0aca: dd        mov   a,y
0acb: 3f a8 0e  call  $0ea8
0ace: e5 ba 03  mov   a,$03ba
0ad1: c4 5a     mov   $5a,a
0ad3: e5 bb 03  mov   a,$03bb
0ad6: c4 5b     mov   $5b,a
0ad8: 80        setc
0ad9: a4 59     sbc   a,$59
0adb: f8 5a     mov   x,$5a
0add: 3f 4d 10  call  $104d
0ae0: da 5c     movw  $5c,ya
0ae2: 6f        ret

0ae3: e8 03     mov   a,#$03
0ae5: c5 d5 03  mov   $03d5,a
0ae8: 6f        ret

0ae9: e5 ba 03  mov   a,$03ba
0aec: c4 5a     mov   $5a,a
0aee: e8 00     mov   a,#$00
0af0: c4 5b     mov   $5b,a
0af2: 80        setc
0af3: a4 59     sbc   a,$59
0af5: f8 5a     mov   x,$5a
0af7: 3f 4d 10  call  $104d
0afa: da 5c     movw  $5c,ya
0afc: 6f        ret

0afd: e5 b3 03  mov   a,$03b3
0b00: c5 06 04  mov   $0406,a
0b03: cd 00     mov   x,#$00
0b05: 8f 01 47  mov   $47,#$01
0b08: e4 47     mov   a,$47
0b0a: 24 1b     and   a,$1b
0b0c: f0 06     beq   $0b14
0b0e: e5 e3 05  mov   a,$05e3
0b11: 3f 27 17  call  $1727
0b14: 3d        inc   x
0b15: 3d        inc   x
0b16: 0b 47     asl   $47
0b18: d0 ee     bne   $0b08
0b1a: 6f        ret

0b1b: e5 b3 03  mov   a,$03b3
0b1e: c5 e3 05  mov   $05e3,a
0b21: cd 00     mov   x,#$00
0b23: 8f 01 47  mov   $47,#$01
0b26: e4 47     mov   a,$47
0b28: 24 6d     and   a,$6d
0b2a: f0 06     beq   $0b32
0b2c: e5 e3 05  mov   a,$05e3
0b2f: 3f 27 17  call  $1727
0b32: 3d        inc   x
0b33: 3d        inc   x
0b34: 0b 47     asl   $47
0b36: d0 ee     bne   $0b26
0b38: 6f        ret

0b39: 6f        ret

0b3a: 6f        ret

; handle a note vcmd (80-df) (music)
0b3b: ad ca     cmp   y,#$ca
0b3d: 90 05     bcc   $0b44
0b3f: 3f 01 0e  call  $0e01
0b42: 8d a4     mov   y,#$a4
0b44: ad c8     cmp   y,#$c8
0b46: b0 f2     bcs   $0b3a
0b48: e4 1a     mov   a,$1a
0b4a: 24 47     and   a,$47
0b4c: d0 ec     bne   $0b3a
0b4e: dd        mov   a,y
0b4f: 28 7f     and   a,#$7f
0b51: 60        clrc
0b52: 84 50     adc   a,$50
0b54: 60        clrc
0b55: 95 e1 02  adc   a,$02e1+x
0b58: d5 61 03  mov   $0361+x,a
0b5b: f5 81 03  mov   a,$0381+x
0b5e: d5 60 03  mov   $0360+x,a
0b61: f5 b1 02  mov   a,$02b1+x
0b64: 5c        lsr   a
0b65: e8 00     mov   a,#$00
0b67: 7c        ror   a
0b68: d5 a0 02  mov   $02a0+x,a
0b6b: e8 00     mov   a,#$00
0b6d: d4 b0     mov   $b0+x,a
0b6f: d5 00 01  mov   $0100+x,a
0b72: d5 d0 02  mov   $02d0+x,a
0b75: d4 c0     mov   $c0+x,a
0b77: 09 47 5e  or    ($5e),($47)
0b7a: e5 d2 03  mov   a,$03d2
0b7d: 04 47     or    a,$47
0b7f: c5 d2 03  mov   $03d2,a
0b82: f5 80 02  mov   a,$0280+x
0b85: d4 a0     mov   $a0+x,a
0b87: f0 1e     beq   $0ba7
0b89: f5 81 02  mov   a,$0281+x
0b8c: d4 a1     mov   $a1+x,a
0b8e: f5 90 02  mov   a,$0290+x
0b91: d0 0a     bne   $0b9d
0b93: f5 61 03  mov   a,$0361+x
0b96: 80        setc
0b97: b5 91 02  sbc   a,$0291+x
0b9a: d5 61 03  mov   $0361+x,a
0b9d: f5 91 02  mov   a,$0291+x
0ba0: 60        clrc
0ba1: 95 61 03  adc   a,$0361+x
0ba4: 3f 2a 10  call  $102a
0ba7: 3f 42 10  call  $1042
0baa: 8d 00     mov   y,#$00
0bac: e4 11     mov   a,$11
0bae: 80        setc
0baf: a8 34     sbc   a,#$34
0bb1: b0 09     bcs   $0bbc
0bb3: e4 11     mov   a,$11
0bb5: 80        setc
0bb6: a8 13     sbc   a,#$13
0bb8: b0 06     bcs   $0bc0
0bba: dc        dec   y
0bbb: 1c        asl   a
0bbc: 7a 10     addw  ya,$10
0bbe: da 10     movw  $10,ya
0bc0: 4d        push  x
0bc1: e4 11     mov   a,$11
0bc3: 1c        asl   a
0bc4: 8d 00     mov   y,#$00
0bc6: cd 18     mov   x,#$18
0bc8: 9e        div   ya,x
0bc9: 5d        mov   x,a
0bca: f6 8f 1e  mov   a,$1e8f+y
0bcd: c4 15     mov   $15,a
0bcf: f6 8e 1e  mov   a,$1e8e+y
0bd2: c4 14     mov   $14,a
0bd4: f6 91 1e  mov   a,$1e91+y
0bd7: 2d        push  a
0bd8: f6 90 1e  mov   a,$1e90+y
0bdb: ee        pop   y
0bdc: 9a 14     subw  ya,$14
0bde: eb 10     mov   y,$10
0be0: cf        mul   ya
0be1: dd        mov   a,y
0be2: 8d 00     mov   y,#$00
0be4: 7a 14     addw  ya,$14
0be6: cb 15     mov   $15,y
0be8: 1c        asl   a
0be9: 2b 15     rol   $15
0beb: c4 14     mov   $14,a
0bed: 2f 04     bra   $0bf3
0bef: 4b 15     lsr   $15
0bf1: 7c        ror   a
0bf2: 3d        inc   x
0bf3: c8 06     cmp   x,#$06
0bf5: d0 f8     bne   $0bef
0bf7: c4 14     mov   $14,a
0bf9: ce        pop   x
0bfa: f5 20 02  mov   a,$0220+x
0bfd: eb 15     mov   y,$15
0bff: cf        mul   ya
0c00: da 16     movw  $16,ya
0c02: f5 20 02  mov   a,$0220+x
0c05: eb 14     mov   y,$14
0c07: cf        mul   ya
0c08: 6d        push  y
0c09: f5 21 02  mov   a,$0221+x
0c0c: eb 14     mov   y,$14
0c0e: cf        mul   ya
0c0f: 7a 16     addw  ya,$16
0c11: da 16     movw  $16,ya
0c13: f5 21 02  mov   a,$0221+x
0c16: eb 15     mov   y,$15
0c18: cf        mul   ya
0c19: fd        mov   y,a
0c1a: ae        pop   a
0c1b: 7a 16     addw  ya,$16
0c1d: da 16     movw  $16,ya
0c1f: 7d        mov   a,x
0c20: 9f        xcn   a
0c21: 5c        lsr   a
0c22: 08 02     or    a,#$02
0c24: fd        mov   y,a
0c25: e4 16     mov   a,$16
0c27: 3f 2d 0c  call  $0c2d
0c2a: fc        inc   y
0c2b: e4 17     mov   a,$17
0c2d: 2d        push  a
0c2e: e4 47     mov   a,$47
0c30: 24 1a     and   a,$1a
0c32: ae        pop   a
0c33: d0 06     bne   $0c3b
0c35: cc f2 00  mov   $00f2,y
0c38: c5 f3 00  mov   $00f3,a
0c3b: 6f        ret

; read $40/1 into YA with advancing the ptr
0c3c: 8d 00     mov   y,#$00
0c3e: f7 40     mov   a,($40)+y
0c40: 3a 40     incw  $40
0c42: 2d        push  a
0c43: f7 40     mov   a,($40)+y
0c45: 3a 40     incw  $40
0c47: fd        mov   y,a
0c48: ae        pop   a
0c49: 6f        ret

; play song in A
0c4a: e8 ff     mov   a,#$ff
0c4c: 8d 5c     mov   y,#$5c
0c4e: cc f2 00  mov   $00f2,y
0c51: c5 f3 00  mov   $00f3,a
0c54: 3f c0 1e  call  $1ec0
0c57: 3f 19 0a  call  $0a19
0c5a: e8 00     mov   a,#$00
0c5c: c4 08     mov   $08,a
0c5e: c4 04     mov   $04,a
0c60: 1c        asl   a
0c61: f0 0d     beq   $0c70
0c63: 5d        mov   x,a
0c64: f5 ff 9f  mov   a,$9fff+x
0c67: fd        mov   y,a
0c68: f5 fe 9f  mov   a,$9ffe+x
0c6b: da 40     movw  $40,ya
0c6d: 8f 02 0c  mov   $0c,#$02
0c70: e4 1a     mov   a,$1a
0c72: 48 ff     eor   a,#$ff
0c74: 0e 46 00  tset1 $0046
0c77: 6f        ret

; reset song params
0c78: cd 0e     mov   x,#$0e
0c7a: 8f 80 47  mov   $47,#$80
0c7d: e8 ff     mov   a,#$ff
0c7f: d5 91 03  mov   $0391+x,a
0c82: e8 0a     mov   a,#$0a
0c84: 3f 5a 0e  call  $0e5a
0c87: d5 11 02  mov   $0211+x,a
0c8a: d5 81 03  mov   $0381+x,a
0c8d: d5 e1 02  mov   $02e1+x,a
0c90: d5 80 02  mov   $0280+x,a
0c93: d4 b1     mov   $b1+x,a
0c95: d4 c1     mov   $c1+x,a
0c97: 1d        dec   x
0c98: 1d        dec   x
0c99: 4b 47     lsr   $47
0c9b: d0 e0     bne   $0c7d
0c9d: c4 5a     mov   $5a,a
0c9f: c4 68     mov   $68,a
0ca1: c4 54     mov   $54,a
0ca3: c4 42     mov   $42,a
0ca5: c4 5f     mov   $5f,a
0ca7: 6f        ret

0ca8: eb 08     mov   y,$08
0caa: e4 00     mov   a,$00
0cac: c4 08     mov   $08,a
0cae: 68 7d     cmp   a,#$7d
0cb0: f0 be     beq   $0c70
0cb2: 68 7e     cmp   a,#$7e
0cb4: f0 08     beq   $0cbe
0cb6: 68 7f     cmp   a,#$7f
0cb8: f0 90     beq   $0c4a
0cba: 7e 00     cmp   y,$00
0cbc: d0 a0     bne   $0c5e
0cbe: e4 04     mov   a,$04
0cc0: f0 e5     beq   $0ca7
0cc2: e4 0c     mov   a,$0c
0cc4: f0 4e     beq   $0d14
0cc6: 6e 0c af  dbnz  $0c,$0c78
0cc9: 3f 3c 0c  call  $0c3c
0ccc: d0 14     bne   $0ce2
0cce: fd        mov   y,a
0ccf: f0 8d     beq   $0c5e
0cd1: 8b 42     dec   $42
0cd3: 10 02     bpl   $0cd7
0cd5: c4 42     mov   $42,a
0cd7: 3f 3c 0c  call  $0c3c
0cda: f8 42     mov   x,$42
0cdc: f0 eb     beq   $0cc9
0cde: da 40     movw  $40,ya
0ce0: 2f e7     bra   $0cc9
0ce2: da 16     movw  $16,ya
0ce4: 8d 0f     mov   y,#$0f
0ce6: f7 16     mov   a,($16)+y
0ce8: d6 30 00  mov   $0030+y,a
0ceb: dc        dec   y
0cec: 10 f8     bpl   $0ce6
0cee: cd 00     mov   x,#$00
0cf0: 8f 01 47  mov   $47,#$01
0cf3: f4 31     mov   a,$31+x
0cf5: f0 0a     beq   $0d01
0cf7: f5 11 02  mov   a,$0211+x
0cfa: d0 05     bne   $0d01
0cfc: e8 00     mov   a,#$00
0cfe: 3f 01 0e  call  $0e01
0d01: e8 00     mov   a,#$00
0d03: d5 60 02  mov   $0260+x,a
0d06: d4 90     mov   $90+x,a
0d08: d4 91     mov   $91+x,a
0d0a: bc        inc   a
0d0b: d5 50 02  mov   $0250+x,a
0d0e: 3d        inc   x
0d0f: 3d        inc   x
0d10: 0b 47     asl   $47
0d12: d0 df     bne   $0cf3
0d14: cd 00     mov   x,#$00
0d16: d8 5e     mov   $5e,x
0d18: 8f 01 47  mov   $47,#$01
0d1b: d8 44     mov   $44,x
0d1d: f4 31     mov   a,$31+x
0d1f: f0 71     beq   $0d92
0d21: f5 50 02  mov   a,$0250+x
0d24: 9c        dec   a
0d25: d5 50 02  mov   $0250+x,a
0d28: d0 62     bne   $0d8c
0d2a: 3f f7 0d  call  $0df7
0d2d: d0 1d     bne   $0d4c
0d2f: f5 60 02  mov   a,$0260+x
0d32: f0 95     beq   $0cc9
0d34: 3f 4d 0f  call  $0f4d
0d37: f5 60 02  mov   a,$0260+x
0d3a: 9c        dec   a
0d3b: d5 60 02  mov   $0260+x,a
0d3e: d0 ea     bne   $0d2a
0d40: f5 30 02  mov   a,$0230+x
0d43: d4 30     mov   $30+x,a
0d45: f5 31 02  mov   a,$0231+x
0d48: d4 31     mov   $31+x,a
0d4a: 2f de     bra   $0d2a
0d4c: 30 20     bmi   $0d6e
0d4e: d5 00 02  mov   $0200+x,a
0d51: 3f f7 0d  call  $0df7
0d54: 30 18     bmi   $0d6e
0d56: 2d        push  a
0d57: 9f        xcn   a
0d58: 28 07     and   a,#$07
0d5a: fd        mov   y,a
0d5b: f6 a8 1e  mov   a,$1ea8+y
0d5e: d5 01 02  mov   $0201+x,a
0d61: ae        pop   a
0d62: 28 0f     and   a,#$0f
0d64: fd        mov   y,a
0d65: f6 b0 1e  mov   a,$1eb0+y
0d68: d5 10 02  mov   $0210+x,a
0d6b: 3f f7 0d  call  $0df7
0d6e: 68 e0     cmp   a,#$e0
0d70: 90 05     bcc   $0d77
0d72: 3f e5 0d  call  $0de5
0d75: 2f b3     bra   $0d2a
0d77: 3f 3b 0b  call  $0b3b
0d7a: f5 00 02  mov   a,$0200+x
0d7d: d5 50 02  mov   $0250+x,a
0d80: fd        mov   y,a
0d81: f5 01 02  mov   a,$0201+x
0d84: cf        mul   ya
0d85: dd        mov   a,y
0d86: bc        inc   a
0d87: d5 51 02  mov   $0251+x,a
0d8a: 2f 03     bra   $0d8f
0d8c: 3f a5 11  call  $11a5
0d8f: 3f 0a 10  call  $100a
0d92: 3d        inc   x
0d93: 3d        inc   x
0d94: 0b 47     asl   $47
0d96: d0 83     bne   $0d1b
0d98: e4 54     mov   a,$54
0d9a: f0 0b     beq   $0da7
0d9c: ba 56     movw  ya,$56
0d9e: 7a 52     addw  ya,$52
0da0: 6e 54 02  dbnz  $54,$0da5
0da3: ba 54     movw  ya,$54
0da5: da 52     movw  $52,ya
0da7: e4 68     mov   a,$68
0da9: f0 15     beq   $0dc0
0dab: ba 64     movw  ya,$64
0dad: 7a 60     addw  ya,$60
0daf: da 60     movw  $60,ya
0db1: ba 66     movw  ya,$66
0db3: 7a 62     addw  ya,$62
0db5: 6e 68 06  dbnz  $68,$0dbe
0db8: ba 68     movw  ya,$68
0dba: da 60     movw  $60,ya
0dbc: eb 6a     mov   y,$6a
0dbe: da 62     movw  $62,ya
0dc0: e4 5a     mov   a,$5a
0dc2: f0 0e     beq   $0dd2
0dc4: ba 5c     movw  ya,$5c
0dc6: 7a 58     addw  ya,$58
0dc8: 6e 5a 02  dbnz  $5a,$0dcd
0dcb: ba 5a     movw  ya,$5a
0dcd: da 58     movw  $58,ya
0dcf: 8f ff 5e  mov   $5e,#$ff
0dd2: cd 00     mov   x,#$00
0dd4: 8f 01 47  mov   $47,#$01
0dd7: f4 31     mov   a,$31+x
0dd9: f0 03     beq   $0dde
0ddb: 3f c6 10  call  $10c6
0dde: 3d        inc   x
0ddf: 3d        inc   x
0de0: 0b 47     asl   $47
0de2: d0 f3     bne   $0dd7
0de4: 6f        ret

0de5: 1c        asl   a
0de6: fd        mov   y,a
0de7: f6 aa 0f  mov   a,$0faa+y
0dea: 2d        push  a
0deb: f6 a9 0f  mov   a,$0fa9+y
0dee: 2d        push  a
0def: dd        mov   a,y
0df0: 5c        lsr   a
0df1: fd        mov   y,a
0df2: f6 47 10  mov   a,$1047+y
0df5: f0 08     beq   $0dff
0df7: e7 30     mov   a,($30+x)
0df9: bb 30     inc   $30+x
0dfb: d0 02     bne   $0dff
0dfd: bb 31     inc   $31+x
0dff: fd        mov   y,a
0e00: 6f        ret

; vcmd e0 - set instrument
0e01: d5 11 02  mov   $0211+x,a
0e04: fd        mov   y,a
0e05: 10 06     bpl   $0e0d
0e07: 80        setc
0e08: a8 ca     sbc   a,#$ca
0e0a: 60        clrc
0e0b: 84 5f     adc   a,$5f
0e0d: 8d 06     mov   y,#$06
0e0f: cf        mul   ya
0e10: da 14     movw  $14,ya
0e12: 60        clrc
0e13: 98 10 14  adc   $14,#$10
0e16: 98 1f 15  adc   $15,#$1f
0e19: e4 1a     mov   a,$1a
0e1b: 24 47     and   a,$47
0e1d: d0 3a     bne   $0e59
0e1f: 4d        push  x
0e20: 7d        mov   a,x
0e21: 9f        xcn   a
0e22: 5c        lsr   a
0e23: 08 04     or    a,#$04
0e25: 5d        mov   x,a
0e26: 8d 00     mov   y,#$00
0e28: f7 14     mov   a,($14)+y
0e2a: 10 0e     bpl   $0e3a
0e2c: 28 1f     and   a,#$1f
0e2e: 38 20 48  and   $48,#$20
0e31: 0e 48 00  tset1 $0048
0e34: 09 47 49  or    ($49),($47)
0e37: dd        mov   a,y
0e38: 2f 07     bra   $0e41
0e3a: e4 47     mov   a,$47
0e3c: 4e 49 00  tclr1 $0049
0e3f: f7 14     mov   a,($14)+y
0e41: c9 f2 00  mov   $00f2,x
0e44: c5 f3 00  mov   $00f3,a
0e47: 3d        inc   x
0e48: fc        inc   y
0e49: ad 04     cmp   y,#$04
0e4b: d0 f2     bne   $0e3f
0e4d: ce        pop   x
0e4e: f7 14     mov   a,($14)+y
0e50: d5 21 02  mov   $0221+x,a
0e53: fc        inc   y
0e54: f7 14     mov   a,($14)+y
0e56: d5 20 02  mov   $0220+x,a
0e59: 6f        ret

; vcmd e1 - pan
0e5a: d5 51 03  mov   $0351+x,a
0e5d: 28 1f     and   a,#$1f
0e5f: d5 31 03  mov   $0331+x,a
0e62: e8 00     mov   a,#$00
0e64: d5 30 03  mov   $0330+x,a
0e67: 6f        ret

; vcmd e2 - pan fade
0e68: d4 91     mov   $91+x,a
0e6a: 2d        push  a
0e6b: 3f f7 0d  call  $0df7
0e6e: d5 50 03  mov   $0350+x,a
0e71: 80        setc
0e72: b5 31 03  sbc   a,$0331+x
0e75: ce        pop   x
0e76: 3f 4d 10  call  $104d
0e79: d5 40 03  mov   $0340+x,a
0e7c: dd        mov   a,y
0e7d: d5 41 03  mov   $0341+x,a
0e80: 6f        ret

; vcmd e3 - vibrato on
0e81: d5 b0 02  mov   $02b0+x,a
0e84: 3f f7 0d  call  $0df7
0e87: d5 a1 02  mov   $02a1+x,a
0e8a: 3f f7 0d  call  $0df7
; vcmd e4 - vibrato off
0e8d: d4 b1     mov   $b1+x,a
0e8f: d5 c1 02  mov   $02c1+x,a
0e92: e8 00     mov   a,#$00
0e94: d5 b1 02  mov   $02b1+x,a
0e97: 6f        ret

; vcmd f0 - vibrato fade
0e98: d5 b1 02  mov   $02b1+x,a
0e9b: 2d        push  a
0e9c: 8d 00     mov   y,#$00
0e9e: f4 b1     mov   a,$b1+x
0ea0: ce        pop   x
0ea1: 9e        div   ya,x
0ea2: f8 44     mov   x,$44
0ea4: d5 c0 02  mov   $02c0+x,a
0ea7: 6f        ret

; vcmd e5 - master volume
0ea8: e8 00     mov   a,#$00
0eaa: da 58     movw  $58,ya
0eac: 6f        ret

; vcmd e6 - master volume fade
0ead: c4 5a     mov   $5a,a
0eaf: 3f f7 0d  call  $0df7
0eb2: c4 5b     mov   $5b,a
0eb4: 80        setc
0eb5: a4 59     sbc   a,$59
0eb7: f8 5a     mov   x,$5a
0eb9: 3f 4d 10  call  $104d
0ebc: da 5c     movw  $5c,ya
0ebe: 6f        ret

; vcmd e7 - tempo
0ebf: e8 00     mov   a,#$00
0ec1: da 52     movw  $52,ya
0ec3: 6f        ret

; vcmd e8 - tempo fade
0ec4: c4 54     mov   $54,a
0ec6: 3f f7 0d  call  $0df7
0ec9: c4 55     mov   $55,a
0ecb: 80        setc
0ecc: a4 53     sbc   a,$53
0ece: f8 54     mov   x,$54
0ed0: 3f 4d 10  call  $104d
0ed3: da 56     movw  $56,ya
0ed5: 6f        ret

; vcmd e9 - global transpose
0ed6: c4 50     mov   $50,a
0ed8: 6f        ret

; vcmd ea - per-voice transpose
0ed9: d5 e1 02  mov   $02e1+x,a
0edc: 6f        ret

; vcmd eb - tremolo on
0edd: d5 e0 02  mov   $02e0+x,a
0ee0: 3f f7 0d  call  $0df7
0ee3: d5 d1 02  mov   $02d1+x,a
0ee6: 3f f7 0d  call  $0df7
; vcmd ec - tremolo off
0ee9: d4 c1     mov   $c1+x,a
0eeb: 6f        ret

; vcmd f1 - pitch envelope (release)
0eec: e8 01     mov   a,#$01
0eee: 2f 02     bra   $0ef2
; vcmd f2 - pitch envelope (attack)
0ef0: e8 00     mov   a,#$00
0ef2: d5 90 02  mov   $0290+x,a
0ef5: dd        mov   a,y
0ef6: d5 81 02  mov   $0281+x,a
0ef9: 3f f7 0d  call  $0df7
0efc: d5 80 02  mov   $0280+x,a
0eff: 3f f7 0d  call  $0df7
0f02: d5 91 02  mov   $0291+x,a
0f05: 6f        ret

; vcmd f3 - pitch envelope off
0f06: d5 80 02  mov   $0280+x,a
0f09: 6f        ret

; vcmd fe - global song volume
0f0a: c5 d7 03  mov   $03d7,a
0f0d: 6f        ret

; vcmd ed - volume
0f0e: d5 91 03  mov   $0391+x,a
0f11: e8 00     mov   a,#$00
0f13: d5 90 03  mov   $0390+x,a
0f16: 6f        ret

; vcmd ee - volume fade
0f17: d4 90     mov   $90+x,a
0f19: 2d        push  a
0f1a: 3f f7 0d  call  $0df7
0f1d: d5 20 03  mov   $0320+x,a
0f20: 80        setc
0f21: b5 91 03  sbc   a,$0391+x
0f24: ce        pop   x
0f25: 3f 4d 10  call  $104d
0f28: d5 10 03  mov   $0310+x,a
0f2b: dd        mov   a,y
0f2c: d5 11 03  mov   $0311+x,a
0f2f: 6f        ret

; vcmd f4 - tuning
0f30: d5 81 03  mov   $0381+x,a
0f33: 6f        ret

; vcmd ef - call subroutine
0f34: d5 40 02  mov   $0240+x,a
0f37: 3f f7 0d  call  $0df7
0f3a: d5 41 02  mov   $0241+x,a
0f3d: 3f f7 0d  call  $0df7
0f40: d5 60 02  mov   $0260+x,a
0f43: f4 30     mov   a,$30+x
0f45: d5 30 02  mov   $0230+x,a
0f48: f4 31     mov   a,$31+x
0f4a: d5 31 02  mov   $0231+x,a
0f4d: f5 40 02  mov   a,$0240+x
0f50: d4 30     mov   $30+x,a
0f52: f5 41 02  mov   a,$0241+x
0f55: d4 31     mov   $31+x,a
0f57: 6f        ret

; vcmd f5 - echo vbits/volume
0f58: c4 4a     mov   $4a,a
0f5a: c5 bc 03  mov   $03bc,a
0f5d: 48 ff     eor   a,#$ff
0f5f: c5 be 03  mov   $03be,a
0f62: 3f f7 0d  call  $0df7
0f65: e8 00     mov   a,#$00
0f67: da 60     movw  $60,ya
0f69: 3f f7 0d  call  $0df7
0f6c: e8 00     mov   a,#$00
0f6e: da 62     movw  $62,ya
0f70: b2 48     clr5  $48
0f72: 6f        ret

; vcmd f8 - echo volume fade
0f73: c4 68     mov   $68,a
0f75: 3f f7 0d  call  $0df7
0f78: c4 69     mov   $69,a
0f7a: 80        setc
0f7b: a4 61     sbc   a,$61
0f7d: f8 68     mov   x,$68
0f7f: 3f 4d 10  call  $104d
0f82: da 64     movw  $64,ya
0f84: 3f f7 0d  call  $0df7
0f87: c4 6a     mov   $6a,a
0f89: 80        setc
0f8a: a4 63     sbc   a,$63
0f8c: f8 68     mov   x,$68
0f8e: 3f 4d 10  call  $104d
0f91: da 66     movw  $66,ya
0f93: 6f        ret

; vcmd f6 - disable echo
0f94: da 60     movw  $60,ya
0f96: da 62     movw  $62,ya
0f98: a2 48     set5  $48
0f9a: 6f        ret

; vcmd f7 - set echo params
0f9b: 3f bd 0f  call  $0fbd
0f9e: 3f f7 0d  call  $0df7
0fa1: c4 4e     mov   $4e,a
0fa3: 3f f7 0d  call  $0df7
0fa6: 8d 08     mov   y,#$08
0fa8: cf        mul   ya
0fa9: 5d        mov   x,a
0faa: 8d 0f     mov   y,#$0f
0fac: f5 5a 1e  mov   a,$1e5a+x
0faf: 3f 35 0c  call  $0c35
0fb2: 3d        inc   x
0fb3: dd        mov   a,y
0fb4: 60        clrc
0fb5: 88 10     adc   a,#$10
0fb7: fd        mov   y,a
0fb8: 10 f2     bpl   $0fac
0fba: f8 44     mov   x,$44
0fbc: 6f        ret

0fbd: c4 4d     mov   $4d,a
0fbf: 8d 7d     mov   y,#$7d
0fc1: cc f2 00  mov   $00f2,y
0fc4: e5 f3 00  mov   a,$00f3
0fc7: 64 4d     cmp   a,$4d
0fc9: f0 2b     beq   $0ff6
0fcb: 28 0f     and   a,#$0f
0fcd: 48 ff     eor   a,#$ff
0fcf: f3 4c 03  bbc7  $4c,$0fd5
0fd2: 60        clrc
0fd3: 84 4c     adc   a,$4c
0fd5: c4 4c     mov   $4c,a
0fd7: 8d 04     mov   y,#$04
0fd9: f6 79 1e  mov   a,$1e79+y
0fdc: c5 f2 00  mov   $00f2,a
0fdf: e8 00     mov   a,#$00
0fe1: c5 f3 00  mov   $00f3,a
0fe4: fe f3     dbnz  y,$0fd9
0fe6: e4 48     mov   a,$48
0fe8: 08 20     or    a,#$20
0fea: 8d 6c     mov   y,#$6c
0fec: 3f 35 0c  call  $0c35
0fef: e4 4d     mov   a,$4d
0ff1: 8d 7d     mov   y,#$7d
0ff3: 3f 35 0c  call  $0c35
0ff6: 1c        asl   a
0ff7: 1c        asl   a
0ff8: 1c        asl   a
0ff9: 48 ff     eor   a,#$ff
0ffb: 80        setc
0ffc: 88 ff     adc   a,#$ff
0ffe: 8d 6d     mov   y,#$6d
1000: 5f 35 0c  jmp   $0c35

; vcmd fa - set perc patch base
1003: c4 5f     mov   $5f,a
1005: 6f        ret

1006: 3f f9 0d  call  $0df9
1009: 6f        ret

100a: f4 a0     mov   a,$a0+x
100c: d0 33     bne   $1041
100e: e7 30     mov   a,($30+x)
1010: 68 f9     cmp   a,#$f9
1012: d0 2d     bne   $1041
1014: 3f f9 0d  call  $0df9
1017: 3f f7 0d  call  $0df7
; vcmd f9 - pitch slide
101a: d4 a1     mov   $a1+x,a
101c: 3f f7 0d  call  $0df7
101f: d4 a0     mov   $a0+x,a
1021: 3f f7 0d  call  $0df7
1024: 60        clrc
1025: 84 50     adc   a,$50
1027: 95 e1 02  adc   a,$02e1+x
102a: 28 7f     and   a,#$7f
102c: d5 80 03  mov   $0380+x,a
102f: 80        setc
1030: b5 61 03  sbc   a,$0361+x
1033: fb a0     mov   y,$a0+x
1035: 6d        push  y
1036: ce        pop   x
1037: 3f 4d 10  call  $104d
103a: d5 70 03  mov   $0370+x,a
103d: dd        mov   a,y
103e: d5 71 03  mov   $0371+x,a
1041: 6f        ret

1042: f5 61 03  mov   a,$0361+x
1045: c4 11     mov   $11,a
1047: f5 60 03  mov   a,$0360+x
104a: c4 10     mov   $10,a
104c: 6f        ret

104d: ed        notc
104e: 6b 12     ror   $12
1050: 10 03     bpl   $1055
1052: 48 ff     eor   a,#$ff
1054: bc        inc   a
1055: 8d 00     mov   y,#$00
1057: 9e        div   ya,x
1058: 2d        push  a
1059: e8 00     mov   a,#$00
105b: 9e        div   ya,x
105c: ee        pop   y
105d: f8 44     mov   x,$44
105f: f3 12 06  bbc7  $12,$1068
1062: da 14     movw  $14,ya
1064: ba 0e     movw  ya,$0e
1066: 9a 14     subw  ya,$14
1068: 6f        ret

; vcmd dispatch table (music)
1069: dw $0e01	; e0 - set instrument
106b: dw $0e5a	; e1 - pan
106d: dw $0e68	; e2 - pan fade
106f: dw $0e81	; e3 - vibrato on
1071: dw $0e8d	; e4 - vibrato off
1073: dw $0ea8	; e5 - master volume
1075: dw $0ead	; e6 - master volume fade
1077: dw $0ebf	; e7 - tempo
1079: dw $0ec4	; e8 - tempo fade
107b: dw $0ed6	; e9 - global transpose
107d: dw $0ed9	; ea - per-voice transpose
107f: dw $0edd	; eb - tremolo on
1081: dw $0ee9	; ec - tremolo off
1083: dw $0f0e	; ed - volume
1085: dw $0f17	; ee - volume fade
1087: dw $0f34	; ef - call subroutine
1089: dw $0e98	; f0 - vibrato fade
108b: dw $0eec	; f1 - pitch envelope (release)
108d: dw $0ef0	; f2 - pitch envelope (attack)
108f: dw $0f06	; f3 - pitch envelope off
1091: dw $0f30	; f4 - tuning
1093: dw $0f58	; f5 - echo vbits/volume
1095: dw $0f94	; f6 - disable echo
1097: dw $0f9b	; f7 - set echo params
1099: dw $0f73	; f8 - echo volume fade
109b: dw $101a	; f9 - pitch slide
109d: dw $1003	; fa - set perc patch base
109f: dw $1363	; fb - echo on
10a1: dw $1377	; fc - echo off
10a3: dw $134b	; fd - set ASDR
10a5: dw $0f0a	; fe - global song volume

; vcmd lengths (music)
10a7: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
10af: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
10b7: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
10bf: db $03,$03,$01,$00,$00,$02,$01	 ; f8-fe

10c6: f4 90     mov   a,$90+x
10c8: f0 24     beq   $10ee
10ca: 09 47 5e  or    ($5e),($47)
10cd: 9b 90     dec   $90+x
10cf: d0 0a     bne   $10db
10d1: e8 00     mov   a,#$00
10d3: d5 90 03  mov   $0390+x,a
10d6: f5 20 03  mov   a,$0320+x
10d9: 2f 10     bra   $10eb
10db: 60        clrc
10dc: f5 90 03  mov   a,$0390+x
10df: 95 10 03  adc   a,$0310+x
10e2: d5 90 03  mov   $0390+x,a
10e5: f5 91 03  mov   a,$0391+x
10e8: 95 11 03  adc   a,$0311+x
10eb: d5 91 03  mov   $0391+x,a
10ee: fb c1     mov   y,$c1+x
10f0: f0 23     beq   $1115
10f2: f5 e0 02  mov   a,$02e0+x
10f5: de c0 1b  cbne  $c0+x,$1113
10f8: 09 47 5e  or    ($5e),($47)
10fb: f5 d0 02  mov   a,$02d0+x
10fe: 10 07     bpl   $1107
1100: fc        inc   y
1101: d0 04     bne   $1107
1103: e8 80     mov   a,#$80
1105: 2f 04     bra   $110b
1107: 60        clrc
1108: 95 d1 02  adc   a,$02d1+x
110b: d5 d0 02  mov   $02d0+x,a
110e: 3f 2a 13  call  $132a
1111: 2f 07     bra   $111a
1113: bb c0     inc   $c0+x
1115: e8 ff     mov   a,#$ff
1117: 3f 35 13  call  $1335
111a: f4 91     mov   a,$91+x
111c: f0 24     beq   $1142
111e: 09 47 5e  or    ($5e),($47)
1121: 9b 91     dec   $91+x
1123: d0 0a     bne   $112f
1125: e8 00     mov   a,#$00
1127: d5 30 03  mov   $0330+x,a
112a: f5 50 03  mov   a,$0350+x
112d: 2f 10     bra   $113f
112f: 60        clrc
1130: f5 30 03  mov   a,$0330+x
1133: 95 40 03  adc   a,$0340+x
1136: d5 30 03  mov   $0330+x,a
1139: f5 31 03  mov   a,$0331+x
113c: 95 41 03  adc   a,$0341+x
113f: d5 31 03  mov   $0331+x,a
1142: e4 47     mov   a,$47
1144: 24 5e     and   a,$5e
1146: f0 5c     beq   $11a4
1148: f5 31 03  mov   a,$0331+x
114b: fd        mov   y,a
114c: f5 30 03  mov   a,$0330+x
114f: da 10     movw  $10,ya
1151: 7d        mov   a,x
1152: 9f        xcn   a
1153: 5c        lsr   a
1154: c4 12     mov   $12,a
1156: eb 11     mov   y,$11
1158: e5 b8 03  mov   a,$03b8
115b: f0 11     beq   $116e
115d: e8 51     mov   a,#$51
115f: 80        setc
1160: a8 51     sbc   a,#$51
1162: eb 10     mov   y,$10
1164: cf        mul   ya
1165: dd        mov   a,y
1166: eb 11     mov   y,$11
1168: 60        clrc
1169: 88 51     adc   a,#$51
116b: fd        mov   y,a
116c: 2f 12     bra   $1180
116e: f6 46 1e  mov   a,$1e46+y
1171: 80        setc
1172: b6 45 1e  sbc   a,$1e45+y
1175: eb 10     mov   y,$10
1177: cf        mul   ya
1178: dd        mov   a,y
1179: eb 11     mov   y,$11
117b: 60        clrc
117c: 96 45 1e  adc   a,$1e45+y
117f: fd        mov   y,a
1180: f5 21 03  mov   a,$0321+x
1183: cf        mul   ya
1184: f5 51 03  mov   a,$0351+x
1187: 1c        asl   a
1188: 13 12 01  bbc0  $12,$118c
118b: 1c        asl   a
118c: dd        mov   a,y
118d: 90 03     bcc   $1192
118f: 48 ff     eor   a,#$ff
1191: bc        inc   a
1192: eb 12     mov   y,$12
1194: 3f 2d 0c  call  $0c2d
1197: 8d 14     mov   y,#$14
1199: e8 00     mov   a,#$00
119b: 9a 10     subw  ya,$10
119d: da 10     movw  $10,ya
119f: ab 12     inc   $12
11a1: 33 12 b2  bbc1  $12,$1156
11a4: 6f        ret

11a5: f5 51 02  mov   a,$0251+x
11a8: f0 71     beq   $121b
11aa: 9c        dec   a
11ab: d5 51 02  mov   $0251+x,a
11ae: f0 07     beq   $11b7
11b0: e8 02     mov   a,#$02
11b2: 75 50 02  cmp   a,$0250+x
11b5: d0 64     bne   $121b
11b7: f5 60 02  mov   a,$0260+x
11ba: c4 17     mov   $17,a
11bc: f4 30     mov   a,$30+x
11be: fb 31     mov   y,$31+x
11c0: da 14     movw  $14,ya
11c2: 8d 00     mov   y,#$00
11c4: f7 14     mov   a,($14)+y
11c6: f0 1e     beq   $11e6
11c8: 30 07     bmi   $11d1
11ca: fc        inc   y
11cb: 30 40     bmi   $120d
11cd: f7 14     mov   a,($14)+y
11cf: 10 f9     bpl   $11ca
11d1: 68 c8     cmp   a,#$c8
11d3: f0 46     beq   $121b
11d5: 68 ef     cmp   a,#$ef
11d7: f0 29     beq   $1202
11d9: 68 e0     cmp   a,#$e0
11db: 90 30     bcc   $120d
11dd: 6d        push  y
11de: fd        mov   y,a
11df: ae        pop   a
11e0: 96 c7 0f  adc   a,$0fc7+y
11e3: fd        mov   y,a
11e4: 2f de     bra   $11c4
11e6: e4 17     mov   a,$17
11e8: f0 23     beq   $120d
11ea: 8b 17     dec   $17
11ec: d0 0a     bne   $11f8
11ee: f5 31 02  mov   a,$0231+x
11f1: 2d        push  a
11f2: f5 30 02  mov   a,$0230+x
11f5: ee        pop   y
11f6: 2f c8     bra   $11c0
11f8: f5 41 02  mov   a,$0241+x
11fb: 2d        push  a
11fc: f5 40 02  mov   a,$0240+x
11ff: ee        pop   y
1200: 2f be     bra   $11c0
1202: fc        inc   y
1203: f7 14     mov   a,($14)+y
1205: 2d        push  a
1206: fc        inc   y
1207: f7 14     mov   a,($14)+y
1209: fd        mov   y,a
120a: ae        pop   a
120b: 2f b3     bra   $11c0
120d: e4 47     mov   a,$47
120f: 24 1a     and   a,$1a
1211: d0 08     bne   $121b
1213: e4 47     mov   a,$47
1215: 05 d3 03  or    a,$03d3
1218: c5 d3 03  mov   $03d3,a
121b: f2 13     clr7  $13
121d: f4 a0     mov   a,$a0+x
121f: f0 2c     beq   $124d
1221: f4 a1     mov   a,$a1+x
1223: f0 04     beq   $1229
1225: 9b a1     dec   $a1+x
1227: 2f 24     bra   $124d
1229: e2 13     set7  $13
122b: 9b a0     dec   $a0+x
122d: d0 0b     bne   $123a
122f: f5 81 03  mov   a,$0381+x
1232: d5 60 03  mov   $0360+x,a
1235: f5 80 03  mov   a,$0380+x
1238: 2f 10     bra   $124a
123a: 60        clrc
123b: f5 60 03  mov   a,$0360+x
123e: 95 70 03  adc   a,$0370+x
1241: d5 60 03  mov   $0360+x,a
1244: f5 61 03  mov   a,$0361+x
1247: 95 71 03  adc   a,$0371+x
124a: d5 61 03  mov   $0361+x,a
124d: 3f 42 10  call  $1042
1250: f4 b1     mov   a,$b1+x
1252: f0 4c     beq   $12a0
1254: f5 b0 02  mov   a,$02b0+x
1257: de b0 44  cbne  $b0+x,$129e
125a: f5 00 01  mov   a,$0100+x
125d: 75 b1 02  cmp   a,$02b1+x
1260: d0 05     bne   $1267
1262: f5 c1 02  mov   a,$02c1+x
1265: 2f 0d     bra   $1274
1267: 40        setp
1268: bb 00     inc   $00+x
126a: 20        clrp
126b: fd        mov   y,a
126c: f0 02     beq   $1270
126e: f4 b1     mov   a,$b1+x
1270: 60        clrc
1271: 95 c0 02  adc   a,$02c0+x
1274: d4 b1     mov   $b1+x,a
1276: f5 a0 02  mov   a,$02a0+x
1279: 60        clrc
127a: 95 a1 02  adc   a,$02a1+x
127d: d5 a0 02  mov   $02a0+x,a
1280: c4 12     mov   $12,a
1282: 1c        asl   a
1283: 1c        asl   a
1284: 90 02     bcc   $1288
1286: 48 ff     eor   a,#$ff
1288: fd        mov   y,a
1289: f4 b1     mov   a,$b1+x
128b: 68 f1     cmp   a,#$f1
128d: 90 05     bcc   $1294
128f: 28 0f     and   a,#$0f
1291: cf        mul   ya
1292: 2f 04     bra   $1298
1294: cf        mul   ya
1295: dd        mov   a,y
1296: 8d 00     mov   y,#$00
1298: 3f 15 13  call  $1315

129b: 5f aa 0b  jmp   $0baa
129e: bb b0     inc   $b0+x
12a0: e3 13 f8  bbs7  $13,$129b
12a3: 6f        ret

12a4: f2 13     clr7  $13
12a6: f4 c1     mov   a,$c1+x
12a8: f0 09     beq   $12b3
12aa: f5 e0 02  mov   a,$02e0+x
12ad: de c0 03  cbne  $c0+x,$12b3
12b0: 3f 1d 13  call  $131d
12b3: f5 31 03  mov   a,$0331+x
12b6: fd        mov   y,a
12b7: f5 30 03  mov   a,$0330+x
12ba: da 10     movw  $10,ya
12bc: f4 91     mov   a,$91+x
12be: f0 0a     beq   $12ca
12c0: f5 41 03  mov   a,$0341+x
12c3: fd        mov   y,a
12c4: f5 40 03  mov   a,$0340+x
12c7: 3f ff 12  call  $12ff
12ca: f3 13 03  bbc7  $13,$12d0
12cd: 3f 51 11  call  $1151
12d0: f2 13     clr7  $13
12d2: 3f 42 10  call  $1042
12d5: f4 a0     mov   a,$a0+x
12d7: f0 0e     beq   $12e7
12d9: f4 a1     mov   a,$a1+x
12db: d0 0a     bne   $12e7
12dd: f5 71 03  mov   a,$0371+x
12e0: fd        mov   y,a
12e1: f5 70 03  mov   a,$0370+x
12e4: 3f ff 12  call  $12ff
12e7: f4 b1     mov   a,$b1+x
12e9: f0 b5     beq   $12a0
12eb: f5 b0 02  mov   a,$02b0+x
12ee: de b0 af  cbne  $b0+x,$12a0
12f1: eb 51     mov   y,$51
12f3: f5 a1 02  mov   a,$02a1+x
12f6: cf        mul   ya
12f7: dd        mov   a,y
12f8: 60        clrc
12f9: 95 a0 02  adc   a,$02a0+x
12fc: 5f 80 12  jmp   $1280

12ff: e2 13     set7  $13
1301: cb 12     mov   $12,y
1303: 3f 5f 10  call  $105f
1306: 6d        push  y
1307: eb 51     mov   y,$51
1309: cf        mul   ya
130a: cb 14     mov   $14,y
130c: 8f 00 15  mov   $15,#$00
130f: eb 51     mov   y,$51
1311: ae        pop   a
1312: cf        mul   ya
1313: 7a 14     addw  ya,$14
1315: 3f 5f 10  call  $105f
1318: 7a 10     addw  ya,$10
131a: da 10     movw  $10,ya
131c: 6f        ret

131d: e2 13     set7  $13
131f: eb 51     mov   y,$51
1321: f5 d1 02  mov   a,$02d1+x
1324: cf        mul   ya
1325: dd        mov   a,y
1326: 60        clrc
1327: 95 d0 02  adc   a,$02d0+x
132a: 1c        asl   a
132b: 90 02     bcc   $132f
132d: 48 ff     eor   a,#$ff
132f: fb c1     mov   y,$c1+x
1331: cf        mul   ya
1332: dd        mov   a,y
1333: 48 ff     eor   a,#$ff
1335: eb 59     mov   y,$59
1337: cf        mul   ya
1338: f5 10 02  mov   a,$0210+x
133b: cf        mul   ya
133c: f5 91 03  mov   a,$0391+x
133f: cf        mul   ya
1340: e5 d7 03  mov   a,$03d7
1343: cf        mul   ya
1344: dd        mov   a,y
1345: cf        mul   ya
1346: dd        mov   a,y
1347: d5 21 03  mov   $0321+x,a
134a: 6f        ret

; vcmd fd - set ASDR
134b: 7d        mov   a,x
134c: 9f        xcn   a
134d: 5c        lsr   a
134e: 08 05     or    a,#$05
1350: c4 14     mov   $14,a
1352: dd        mov   a,y
1353: eb 14     mov   y,$14
1355: 3f 2d 0c  call  $0c2d
1358: 3f f7 0d  call  $0df7
135b: ab 14     inc   $14
135d: eb 14     mov   y,$14
135f: 3f 2d 0c  call  $0c2d
1362: 6f        ret

; vcmd fb - echo on
1363: e5 bc 03  mov   a,$03bc
1366: 04 47     or    a,$47
1368: c5 bc 03  mov   $03bc,a
136b: e4 47     mov   a,$47
136d: 48 ff     eor   a,#$ff
136f: 25 be 03  and   a,$03be
1372: c5 be 03  mov   $03be,a
1375: 2f 12     bra   $1389
; vcmd fc - echo off
1377: e5 be 03  mov   a,$03be
137a: 04 47     or    a,$47
137c: c5 be 03  mov   $03be,a
137f: e4 47     mov   a,$47
1381: 48 ff     eor   a,#$ff
1383: 25 bc 03  and   a,$03bc
1386: c5 bc 03  mov   $03bc,a
1389: e5 bc 03  mov   a,$03bc
138c: c5 d0 03  mov   $03d0,a
138f: e5 be 03  mov   a,$03be
1392: 48 ff     eor   a,#$ff
1394: 25 d0 03  and   a,$03d0
1397: 05 bd 03  or    a,$03bd
139a: c5 d0 03  mov   $03d0,a
139d: e5 bf 03  mov   a,$03bf
13a0: 48 ff     eor   a,#$ff
13a2: 25 d0 03  and   a,$03d0
13a5: c4 4a     mov   $4a,a
13a7: 6f        ret

; handle a note vcmd (80-df) (sfx)
13a8: ad ca     cmp   y,#$ca
13aa: 90 05     bcc   $13b1
13ac: 3f d3 16  call  $16d3
13af: 8d a4     mov   y,#$a4
13b1: ad c8     cmp   y,#$c8
13b3: b0 f2     bcs   $13a7
13b5: dd        mov   a,y
13b6: 28 7f     and   a,#$7f
13b8: 60        clrc
13b9: 85 03 04  adc   a,$0403
13bc: 60        clrc
13bd: 95 91 05  adc   a,$0591+x
13c0: d5 f1 04  mov   $04f1+x,a
13c3: f5 11 05  mov   a,$0511+x
13c6: d5 f0 04  mov   $04f0+x,a
13c9: f5 51 05  mov   a,$0551+x
13cc: 5c        lsr   a
13cd: e8 00     mov   a,#$00
13cf: 7c        ror   a
13d0: d5 40 05  mov   $0540+x,a
13d3: e8 00     mov   a,#$00
13d5: d5 d0 00  mov   $00d0+x,a
13d8: d5 60 05  mov   $0560+x,a
13db: d5 80 05  mov   $0580+x,a
13de: d4 e0     mov   $e0+x,a
13e0: 09 47 5e  or    ($5e),($47)
13e3: e5 d2 03  mov   a,$03d2
13e6: 04 47     or    a,$47
13e8: c5 d2 03  mov   $03d2,a
13eb: f5 20 05  mov   a,$0520+x
13ee: d4 80     mov   $80+x,a
13f0: f0 1e     beq   $1410
13f2: f5 21 05  mov   a,$0521+x
13f5: d4 81     mov   $81+x,a
13f7: f5 30 05  mov   a,$0530+x
13fa: d0 0a     bne   $1406
13fc: f5 f1 04  mov   a,$04f1+x
13ff: 80        setc
1400: b5 31 05  sbc   a,$0531+x
1403: d5 f1 04  mov   $04f1+x,a
1406: f5 31 05  mov   a,$0531+x
1409: 60        clrc
140a: 95 f1 04  adc   a,$04f1+x
140d: 3f d8 18  call  $18d8
1410: 3f f0 18  call  $18f0
1413: 8d 00     mov   y,#$00
1415: e4 11     mov   a,$11
1417: 80        setc
1418: a8 34     sbc   a,#$34
141a: b0 09     bcs   $1425
141c: e4 11     mov   a,$11
141e: 80        setc
141f: a8 13     sbc   a,#$13
1421: b0 06     bcs   $1429
1423: dc        dec   y
1424: 1c        asl   a
1425: 7a 10     addw  ya,$10
1427: da 10     movw  $10,ya
1429: 4d        push  x
142a: e4 11     mov   a,$11
142c: 1c        asl   a
142d: 8d 00     mov   y,#$00
142f: cd 18     mov   x,#$18
1431: 9e        div   ya,x
1432: 5d        mov   x,a
1433: f6 8f 1e  mov   a,$1e8f+y
1436: c4 15     mov   $15,a
1438: f6 8e 1e  mov   a,$1e8e+y
143b: c4 14     mov   $14,a
143d: f6 91 1e  mov   a,$1e91+y
1440: 2d        push  a
1441: f6 90 1e  mov   a,$1e90+y
1444: ee        pop   y
1445: 9a 14     subw  ya,$14
1447: eb 10     mov   y,$10
1449: cf        mul   ya
144a: dd        mov   a,y
144b: 8d 00     mov   y,#$00
144d: 7a 14     addw  ya,$14
144f: cb 15     mov   $15,y
1451: 1c        asl   a
1452: 2b 15     rol   $15
1454: c4 14     mov   $14,a
1456: 2f 04     bra   $145c
1458: 4b 15     lsr   $15
145a: 7c        ror   a
145b: 3d        inc   x
145c: c8 06     cmp   x,#$06
145e: d0 f8     bne   $1458
1460: c4 14     mov   $14,a
1462: ce        pop   x
1463: f5 50 04  mov   a,$0450+x
1466: eb 15     mov   y,$15
1468: cf        mul   ya
1469: da 16     movw  $16,ya
146b: f5 50 04  mov   a,$0450+x
146e: eb 14     mov   y,$14
1470: cf        mul   ya
1471: 6d        push  y
1472: f5 51 04  mov   a,$0451+x
1475: eb 14     mov   y,$14
1477: cf        mul   ya
1478: 7a 16     addw  ya,$16
147a: da 16     movw  $16,ya
147c: f5 51 04  mov   a,$0451+x
147f: eb 15     mov   y,$15
1481: cf        mul   ya
1482: fd        mov   y,a
1483: ae        pop   a
1484: 7a 16     addw  ya,$16
1486: da 16     movw  $16,ya
1488: 7d        mov   a,x
1489: 9f        xcn   a
148a: 5c        lsr   a
148b: 08 02     or    a,#$02
148d: fd        mov   y,a
148e: e4 16     mov   a,$16
1490: 3f 96 14  call  $1496
1493: fc        inc   y
1494: e4 17     mov   a,$17
1496: cc f2 00  mov   $00f2,y
1499: c5 f3 00  mov   $00f3,a
149c: 6f        ret

; read $1c/1 into YA with advancing the ptr
149d: 8d 00     mov   y,#$00
149f: f7 1c     mov   a,($1c)+y
14a1: 3a 1c     incw  $1c
14a3: 2d        push  a
14a4: f7 1c     mov   a,($1c)+y
14a6: 3a 1c     incw  $1c
14a8: fd        mov   y,a
14a9: ae        pop   a
14aa: 6f        ret

; play sound effect in A
14ab: c4 05     mov   $05,a
14ad: 1c        asl   a
14ae: 5d        mov   x,a
14af: f5 ff bf  mov   a,$bfff+x
14b2: fd        mov   y,a
14b3: f5 fe bf  mov   a,$bffe+x
14b6: da 1c     movw  $1c,ya
14b8: 8f 02 1e  mov   $1e,#$02
14bb: 2f 02     bra   $14bf
14bd: c4 05     mov   $05,a
14bf: e4 1b     mov   a,$1b
14c1: 0e 46 00  tset1 $0046
14c4: e8 a5     mov   a,#$a5
14c6: c5 07 04  mov   $0407,a
14c9: 6f        ret

14ca: e4 1b     mov   a,$1b
14cc: 0e 46 00  tset1 $0046
14cf: e8 00     mov   a,#$00
14d1: c5 07 04  mov   $0407,a
14d4: cd 00     mov   x,#$00
14d6: 8f 01 47  mov   $47,#$01
14d9: e4 47     mov   a,$47
14db: 24 1b     and   a,$1b
14dd: f0 14     beq   $14f3
14df: e4 47     mov   a,$47
14e1: 48 ff     eor   a,#$ff
14e3: 24 1a     and   a,$1a
14e5: c4 1a     mov   $1a,a
14e7: f5 11 02  mov   a,$0211+x
14ea: 3f 04 0e  call  $0e04
14ed: e8 00     mov   a,#$00
14ef: d4 20     mov   $20+x,a
14f1: d4 21     mov   $21+x,a
14f3: 3d        inc   x
14f4: 3d        inc   x
14f5: 0b 47     asl   $47
14f7: d0 e0     bne   $14d9
14f9: e8 00     mov   a,#$00
14fb: c4 1b     mov   $1b,a
14fd: 6f        ret

14fe: 8f 00 1b  mov   $1b,#$00
1501: cd 00     mov   x,#$00
1503: 8f 01 47  mov   $47,#$01
1506: e4 47     mov   a,$47
1508: 24 6d     and   a,$6d
150a: d0 15     bne   $1521
150c: f5 d1 05  mov   a,$05d1+x
150f: d4 21     mov   $21+x,a
1511: f5 d0 05  mov   a,$05d0+x
1514: d4 20     mov   $20+x,a
1516: f5 d1 05  mov   a,$05d1+x
1519: f0 06     beq   $1521
151b: 09 47 1a  or    ($1a),($47)
151e: 09 47 1b  or    ($1b),($47)
1521: 3d        inc   x
1522: 3d        inc   x
1523: 0b 47     asl   $47
1525: d0 df     bne   $1506
1527: e4 1b     mov   a,$1b
1529: 0e 46 00  tset1 $0046
152c: e8 00     mov   a,#$00
152e: c5 07 04  mov   $0407,a
1531: 6f        ret

1532: 3f 9d 14  call  $149d
1535: 1a 1c     decw  $1c
1537: 1a 1c     decw  $1c
1539: da 16     movw  $16,ya
153b: 8d 0f     mov   y,#$0f
153d: f7 16     mov   a,($16)+y
153f: d6 d0 05  mov   $05d0+y,a
1542: dc        dec   y
1543: 10 f8     bpl   $153d
1545: 3f fe 14  call  $14fe
1548: cd 0e     mov   x,#$0e
154a: 8f 80 47  mov   $47,#$80
154d: e4 47     mov   a,$47
154f: 24 6d     and   a,$6d
1551: d0 1f     bne   $1572
1553: e8 ff     mov   a,#$ff
1555: d5 91 04  mov   $0491+x,a
1558: e5 06 04  mov   a,$0406
155b: 3f 27 17  call  $1727
155e: e8 00     mov   a,#$00
1560: d5 c1 05  mov   $05c1+x,a
1563: d5 11 05  mov   $0511+x,a
1566: d5 20 05  mov   $0520+x,a
1569: d4 d1     mov   $d1+x,a
156b: d4 e1     mov   $e1+x,a
156d: c4 70     mov   $70,a
156f: d5 91 05  mov   $0591+x,a
1572: 1d        dec   x
1573: 1d        dec   x
1574: 4b 47     lsr   $47
1576: d0 d5     bne   $154d
1578: c5 03 04  mov   $0403,a
157b: c5 e0 05  mov   $05e0,a
157e: c5 10 04  mov   $0410,a
1581: 6f        ret

1582: e5 07 04  mov   a,$0407
1585: f0 03     beq   $158a
1587: 5f cf 14  jmp   $14cf

158a: eb 09     mov   y,$09
158c: e4 01     mov   a,$01
158e: c4 09     mov   $09,a
1590: 7e 01     cmp   y,$01
1592: f0 03     beq   $1597
1594: 5f ab 14  jmp   $14ab

1597: e4 05     mov   a,$05
1599: f0 e6     beq   $1581
159b: e4 1e     mov   a,$1e
159d: d0 03     bne   $15a2
159f: 5f fe 15  jmp   $15fe

15a2: 6e 1e 8d  dbnz  $1e,$1532
15a5: 3f 9d 14  call  $149d
15a8: d0 1a     bne   $15c4
15aa: fd        mov   y,a
15ab: d0 03     bne   $15b0
15ad: 5f bd 14  jmp   $14bd

15b0: 8c 02 04  dec   $0402
15b3: 10 03     bpl   $15b8
15b5: c5 02 04  mov   $0402,a
15b8: 3f 9d 14  call  $149d
15bb: e9 02 04  mov   x,$0402
15be: f0 e5     beq   $15a5
15c0: da 1c     movw  $1c,ya
15c2: 2f e1     bra   $15a5
15c4: da 16     movw  $16,ya
15c6: 8d 0f     mov   y,#$0f
15c8: f7 16     mov   a,($16)+y
15ca: d6 d0 05  mov   $05d0+y,a
15cd: dc        dec   y
15ce: 10 f8     bpl   $15c8
15d0: 3f ca 14  call  $14ca
15d3: 3f fe 14  call  $14fe
15d6: cd 00     mov   x,#$00
15d8: 8f 01 47  mov   $47,#$01
15db: e4 47     mov   a,$47
15dd: 24 6d     and   a,$6d
15df: d0 17     bne   $15f8
15e1: f4 21     mov   a,$21+x
15e3: f0 06     beq   $15eb
15e5: f5 c1 05  mov   a,$05c1+x
15e8: 3f d3 16  call  $16d3
15eb: e8 00     mov   a,#$00
15ed: d5 80 04  mov   $0480+x,a
15f0: d4 70     mov   $70+x,a
15f2: d4 71     mov   $71+x,a
15f4: bc        inc   a
15f5: d5 20 04  mov   $0420+x,a
15f8: 3d        inc   x
15f9: 3d        inc   x
15fa: 0b 47     asl   $47
15fc: d0 dd     bne   $15db
15fe: cd 00     mov   x,#$00
1600: e4 1b     mov   a,$1b
1602: 24 5e     and   a,$5e
1604: c4 5e     mov   $5e,a
1606: 8f 01 47  mov   $47,#$01
1609: c9 01 04  mov   $0401,x
160c: d8 44     mov   $44,x
160e: e4 47     mov   a,$47
1610: 24 1b     and   a,$1b
1612: d0 03     bne   $1617
1614: 5f 92 16  jmp   $1692

1617: f4 21     mov   a,$21+x
1619: f0 77     beq   $1692
161b: ac 01 04  inc   $0401
161e: f5 20 04  mov   a,$0420+x
1621: 9c        dec   a
1622: d5 20 04  mov   $0420+x,a
1625: d0 65     bne   $168c
1627: 3f c9 16  call  $16c9
162a: d0 20     bne   $164c
162c: f5 80 04  mov   a,$0480+x
162f: d0 03     bne   $1634
1631: 5f a5 15  jmp   $15a5

1634: 3f fd 17  call  $17fd
1637: f5 80 04  mov   a,$0480+x
163a: 9c        dec   a
163b: d5 80 04  mov   $0480+x,a
163e: d0 e7     bne   $1627
1640: f5 60 04  mov   a,$0460+x
1643: d4 20     mov   $20+x,a
1645: f5 61 04  mov   a,$0461+x
1648: d4 21     mov   $21+x,a
164a: 2f db     bra   $1627
164c: 30 20     bmi   $166e
164e: d5 30 04  mov   $0430+x,a
1651: 3f c9 16  call  $16c9
1654: 30 18     bmi   $166e
1656: 2d        push  a
1657: 9f        xcn   a
1658: 28 07     and   a,#$07
165a: fd        mov   y,a
165b: f6 a8 1e  mov   a,$1ea8+y
165e: d5 31 04  mov   $0431+x,a
1661: ae        pop   a
1662: 28 0f     and   a,#$0f
1664: fd        mov   y,a
1665: f6 b0 1e  mov   a,$1eb0+y
1668: d5 c0 05  mov   $05c0+x,a
166b: 3f c9 16  call  $16c9
166e: 68 e0     cmp   a,#$e0
1670: 90 05     bcc   $1677
1672: 3f b7 16  call  $16b7
1675: 2f b0     bra   $1627
1677: 3f a8 13  call  $13a8
167a: f5 30 04  mov   a,$0430+x
167d: d5 20 04  mov   $0420+x,a
1680: fd        mov   y,a
1681: f5 31 04  mov   a,$0431+x
1684: cf        mul   ya
1685: dd        mov   a,y
1686: bc        inc   a
1687: d5 21 04  mov   $0421+x,a
168a: 2f 03     bra   $168f
168c: 3f 50 1a  call  $1a50
168f: 3f b7 18  call  $18b7
1692: 3d        inc   x
1693: 3d        inc   x
1694: 0b 47     asl   $47
1696: f0 03     beq   $169b
1698: 5f 0c 16  jmp   $160c

169b: e5 01 04  mov   a,$0401
169e: d0 03     bne   $16a3
16a0: 5f bd 14  jmp   $14bd

16a3: 6f        ret

16a4: cd 00     mov   x,#$00
16a6: 8f 01 47  mov   $47,#$01
16a9: f4 21     mov   a,$21+x
16ab: f0 03     beq   $16b0
16ad: 3f 71 19  call  $1971
16b0: 3d        inc   x
16b1: 3d        inc   x
16b2: 0b 47     asl   $47
16b4: d0 f3     bne   $16a9
16b6: 6f        ret

16b7: 1c        asl   a
16b8: fd        mov   y,a
16b9: f6 58 18  mov   a,$1858+y
16bc: 2d        push  a
16bd: f6 57 18  mov   a,$1857+y
16c0: 2d        push  a
16c1: dd        mov   a,y
16c2: 5c        lsr   a
16c3: fd        mov   y,a
16c4: f6 f3 18  mov   a,$18f3+y
16c7: f0 08     beq   $16d1
16c9: e7 20     mov   a,($20+x)
16cb: bb 20     inc   $20+x
16cd: d0 02     bne   $16d1
16cf: bb 21     inc   $21+x
16d1: fd        mov   y,a
16d2: 6f        ret

; vcmd e0 - set instrument
16d3: d5 c1 05  mov   $05c1+x,a
16d6: fd        mov   y,a
16d7: 10 07     bpl   $16e0
16d9: 80        setc
16da: a8 ca     sbc   a,#$ca
16dc: 60        clrc
16dd: 85 10 04  adc   a,$0410
16e0: 8d 06     mov   y,#$06
16e2: cf        mul   ya
16e3: da 14     movw  $14,ya
16e5: 60        clrc
16e6: 98 10 14  adc   $14,#$10
16e9: 98 1f 15  adc   $15,#$1f
16ec: 4d        push  x
16ed: 7d        mov   a,x
16ee: 9f        xcn   a
16ef: 5c        lsr   a
16f0: 08 04     or    a,#$04
16f2: 5d        mov   x,a
16f3: 8d 00     mov   y,#$00
16f5: f7 14     mov   a,($14)+y
16f7: 10 0e     bpl   $1707
16f9: 28 1f     and   a,#$1f
16fb: 38 20 48  and   $48,#$20
16fe: 0e 48 00  tset1 $0048
1701: 09 47 49  or    ($49),($47)
1704: dd        mov   a,y
1705: 2f 07     bra   $170e
1707: e4 47     mov   a,$47
1709: 4e 49 00  tclr1 $0049
170c: f7 14     mov   a,($14)+y
170e: c9 f2 00  mov   $00f2,x
1711: c5 f3 00  mov   $00f3,a
1714: 3d        inc   x
1715: fc        inc   y
1716: ad 04     cmp   y,#$04
1718: d0 f2     bne   $170c
171a: ce        pop   x
171b: f7 14     mov   a,($14)+y
171d: d5 51 04  mov   $0451+x,a
1720: fc        inc   y
1721: f7 14     mov   a,($14)+y
1723: d5 50 04  mov   $0450+x,a
1726: 6f        ret

; vcmd e1 - pan
1727: d5 e1 04  mov   $04e1+x,a
172a: 28 1f     and   a,#$1f
172c: d5 c1 04  mov   $04c1+x,a
172f: e8 00     mov   a,#$00
1731: d5 c0 04  mov   $04c0+x,a
1734: 6f        ret

; vcmd e2 - pan fade
1735: d4 71     mov   $71+x,a
1737: 2d        push  a
1738: 3f c9 16  call  $16c9
173b: d5 e0 04  mov   $04e0+x,a
173e: 80        setc
173f: b5 c1 04  sbc   a,$04c1+x
1742: ce        pop   x
1743: 3f fb 18  call  $18fb
1746: d5 d0 04  mov   $04d0+x,a
1749: dd        mov   a,y
174a: d5 d1 04  mov   $04d1+x,a
174d: 6f        ret

; vcmd e3 - vibrato on
174e: d5 50 05  mov   $0550+x,a
1751: 3f c9 16  call  $16c9
1754: d5 41 05  mov   $0541+x,a
1757: 3f c9 16  call  $16c9
; vcmd e4 - vibrato off
175a: d4 d1     mov   $d1+x,a
175c: d5 71 05  mov   $0571+x,a
175f: e8 00     mov   a,#$00
1761: d5 51 05  mov   $0551+x,a
1764: 6f        ret

; vcmd f0 - vibrato fade
1765: d5 51 05  mov   $0551+x,a
1768: 2d        push  a
1769: 8d 00     mov   y,#$00
176b: f4 d1     mov   a,$d1+x
176d: ce        pop   x
176e: 9e        div   ya,x
176f: f8 44     mov   x,$44
1771: d5 70 05  mov   $0570+x,a
1774: 6f        ret

; vcmd e5
1775: e8 00     mov   a,#$00
1777: da 58     movw  $58,ya
1779: 6f        ret

; vcmd e6
177a: 3f c9 16  call  $16c9
177d: 6f        ret

; vcmd e7 - tempo
177e: e8 00     mov   a,#$00
1780: da 52     movw  $52,ya
1782: 6f        ret

; vcmd e8
1783: 3f c9 16  call  $16c9
1786: 6f        ret

; vcmd e9
1787: c5 03 04  mov   $0403,a
178a: 6f        ret

; vcmd ea - per-voice transpose
178b: d5 91 05  mov   $0591+x,a
178e: 6f        ret

; vcmd eb - tremolo on
178f: d5 90 05  mov   $0590+x,a
1792: 3f c9 16  call  $16c9
1795: d5 81 05  mov   $0581+x,a
1798: 3f c9 16  call  $16c9
; vcmd ec - tremolo off
179b: e8 00     mov   a,#$00
179d: d4 e1     mov   $e1+x,a
179f: 6f        ret

; vcmd f1 - pitch envelope (release)
17a0: e8 01     mov   a,#$01
17a2: 2f 02     bra   $17a6
; vcmd f2 - pitch envelope (attack)
17a4: e8 00     mov   a,#$00
17a6: d5 30 05  mov   $0530+x,a
17a9: dd        mov   a,y
17aa: d5 21 05  mov   $0521+x,a
17ad: 3f c9 16  call  $16c9
17b0: d5 20 05  mov   $0520+x,a
17b3: 3f c9 16  call  $16c9
17b6: d5 31 05  mov   $0531+x,a
17b9: 6f        ret

; vcmd f3 - pitch envelope off
17ba: d5 20 05  mov   $0520+x,a
17bd: 6f        ret

; vcmd ed - volume
17be: d5 91 04  mov   $0491+x,a
17c1: e8 00     mov   a,#$00
17c3: d5 90 04  mov   $0490+x,a
17c6: 6f        ret

; vcmd ee - volume fade
17c7: d4 70     mov   $70+x,a
17c9: 2d        push  a
17ca: 3f c9 16  call  $16c9
17cd: d5 b0 04  mov   $04b0+x,a
17d0: 80        setc
17d1: b5 91 04  sbc   a,$0491+x
17d4: ce        pop   x
17d5: 3f fb 18  call  $18fb
17d8: d5 a0 04  mov   $04a0+x,a
17db: dd        mov   a,y
17dc: d5 a1 04  mov   $04a1+x,a
17df: 6f        ret

; vcmd f4 - tuning
17e0: d5 11 05  mov   $0511+x,a
17e3: 6f        ret

; vcmd ef - call subroutine
17e4: d5 70 04  mov   $0470+x,a
17e7: 3f c9 16  call  $16c9
17ea: d5 71 04  mov   $0471+x,a
17ed: 3f c9 16  call  $16c9
17f0: d5 80 04  mov   $0480+x,a
17f3: f4 20     mov   a,$20+x
17f5: d5 60 04  mov   $0460+x,a
17f8: f4 21     mov   a,$21+x
17fa: d5 61 04  mov   $0461+x,a
17fd: f5 70 04  mov   a,$0470+x
1800: d4 20     mov   $20+x,a
1802: f5 71 04  mov   a,$0471+x
1805: d4 21     mov   $21+x,a
1807: 6f        ret

; vcmd f5 - echo v-bits/volume
1808: c4 4a     mov   $4a,a
180a: c5 bd 03  mov   $03bd,a
180d: 48 ff     eor   a,#$ff
180f: c5 bf 03  mov   $03bf,a
1812: 3f c9 16  call  $16c9
1815: e8 00     mov   a,#$00
1817: da 60     movw  $60,ya
1819: 3f c9 16  call  $16c9
181c: e8 00     mov   a,#$00
181e: da 62     movw  $62,ya
1820: b2 48     clr5  $48
1822: 6f        ret

; vcmd f8 - echo volume fade
1823: c4 68     mov   $68,a
1825: 3f c9 16  call  $16c9
1828: c4 69     mov   $69,a
182a: 80        setc
182b: a4 61     sbc   a,$61
182d: f8 68     mov   x,$68
182f: 3f fb 18  call  $18fb
1832: da 64     movw  $64,ya
1834: 3f c9 16  call  $16c9
1837: c4 6a     mov   $6a,a
1839: 80        setc
183a: a4 63     sbc   a,$63
183c: f8 68     mov   x,$68
183e: 3f fb 18  call  $18fb
1841: da 66     movw  $66,ya
1843: 6f        ret

; vcmd f6 - disable echo
1844: da 60     movw  $60,ya
1846: da 62     movw  $62,ya
1848: a2 48     set5  $48
184a: 6f        ret

; vcmd f7 - set echo params
184b: 3f 6d 18  call  $186d
184e: 3f c9 16  call  $16c9
1851: c4 4e     mov   $4e,a
1853: 3f c9 16  call  $16c9
1856: 8d 08     mov   y,#$08
1858: cf        mul   ya
1859: 5d        mov   x,a
185a: 8d 0f     mov   y,#$0f
185c: f5 5a 1e  mov   a,$1e5a+x
185f: 3f 96 14  call  $1496
1862: 3d        inc   x
1863: dd        mov   a,y
1864: 60        clrc
1865: 88 10     adc   a,#$10
1867: fd        mov   y,a
1868: 10 f2     bpl   $185c
186a: f8 44     mov   x,$44
186c: 6f        ret

186d: c4 4d     mov   $4d,a
186f: 8d 7d     mov   y,#$7d
1871: cc f2 00  mov   $00f2,y
1874: e5 f3 00  mov   a,$00f3
1877: 64 4d     cmp   a,$4d
1879: f0 2b     beq   $18a6
187b: 28 0f     and   a,#$0f
187d: 48 ff     eor   a,#$ff
187f: f3 4c 03  bbc7  $4c,$1885
1882: 60        clrc
1883: 84 4c     adc   a,$4c
1885: c4 4c     mov   $4c,a
1887: 8d 04     mov   y,#$04
1889: f6 79 1e  mov   a,$1e79+y
188c: c5 f2 00  mov   $00f2,a
188f: e8 00     mov   a,#$00
1891: c5 f3 00  mov   $00f3,a
1894: fe f3     dbnz  y,$1889
1896: e4 48     mov   a,$48
1898: 08 20     or    a,#$20
189a: 8d 6c     mov   y,#$6c
189c: 3f 96 14  call  $1496
189f: e4 4d     mov   a,$4d
18a1: 8d 7d     mov   y,#$7d
18a3: 3f 96 14  call  $1496
18a6: 1c        asl   a
18a7: 1c        asl   a
18a8: 1c        asl   a
18a9: 48 ff     eor   a,#$ff
18ab: 80        setc
18ac: 88 ff     adc   a,#$ff
18ae: 8d 6d     mov   y,#$6d
18b0: 5f 96 14  jmp   $1496

; vcmd fa
18b3: c5 10 04  mov   $0410,a
18b6: 6f        ret

18b7: f4 80     mov   a,$80+x
18b9: d0 34     bne   $18ef
18bb: e7 20     mov   a,($20+x)
18bd: 68 f9     cmp   a,#$f9
18bf: d0 2e     bne   $18ef
18c1: 3f cb 16  call  $16cb
18c4: 3f c9 16  call  $16c9
; vcmd f9 - pitch slide
18c7: d4 81     mov   $81+x,a
18c9: 3f c9 16  call  $16c9
18cc: d4 80     mov   $80+x,a
18ce: 3f c9 16  call  $16c9
18d1: 60        clrc
18d2: 85 03 04  adc   a,$0403
18d5: 95 91 05  adc   a,$0591+x
18d8: 28 7f     and   a,#$7f
18da: d5 10 05  mov   $0510+x,a
18dd: 80        setc
18de: b5 f1 04  sbc   a,$04f1+x
18e1: fb 80     mov   y,$80+x
18e3: 6d        push  y
18e4: ce        pop   x
18e5: 3f fb 18  call  $18fb
18e8: d5 00 05  mov   $0500+x,a
18eb: dd        mov   a,y
18ec: d5 01 05  mov   $0501+x,a
18ef: 6f        ret

18f0: f5 f1 04  mov   a,$04f1+x
18f3: c4 11     mov   $11,a
18f5: f5 f0 04  mov   a,$04f0+x
18f8: c4 10     mov   $10,a
18fa: 6f        ret

18fb: ed        notc
18fc: 6b 12     ror   $12
18fe: 10 03     bpl   $1903
1900: 48 ff     eor   a,#$ff
1902: bc        inc   a
1903: 8d 00     mov   y,#$00
1905: 9e        div   ya,x
1906: 2d        push  a
1907: e8 00     mov   a,#$00
1909: 9e        div   ya,x
190a: ee        pop   y
190b: f8 44     mov   x,$44
190d: f3 12 06  bbc7  $12,$1916
1910: da 14     movw  $14,ya
1912: ba 0e     movw  ya,$0e
1914: 9a 14     subw  ya,$14
1916: 6f        ret

; vcmd dispatch table (sfx)
1917: dw $16d3	; e0 - set instrument
1919: dw $1727	; e1 - pan
191b: dw $1735	; e2 - pan fade
191d: dw $174e	; e3 - vibrato on
191f: dw $175a	; e4 - vibrato off
1921: dw $1775	; e5
1923: dw $177a	; e6
1925: dw $177e	; e7 - tempo
1927: dw $1783	; e8
1929: dw $1787	; e9
192b: dw $178b	; ea - per-voice transpose
192d: dw $178f	; eb - tremolo on
192f: dw $179b	; ec - tremolo off
1931: dw $17be	; ed - volume
1933: dw $17c7	; ee - volume fade
1935: dw $17e4	; ef - call subroutine
1937: dw $1765	; f0 - vibrato fade
1939: dw $17a0	; f1 - pitch envelope (release)
193b: dw $17a4	; f2 - pitch envelope (attack)
193d: dw $17ba	; f3 - pitch envelope off
193f: dw $17e0	; f4 - tuning
1941: dw $1808	; f5 - echo v-bits/volume
1943: dw $1844	; f6 - disable echo
1945: dw $184b	; f7 - set echo params
1947: dw $1823	; f8 - echo volume fade
1949: dw $18c7	; f9 - pitch slide
194b: dw $18b3	; fa
194d: dw $1c0e	; fb
194f: dw $1c23	; fc
1951: dw $1bf6	; fd

; vcmd lengths (sfx)
1953: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
195b: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
1963: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
196b: db $03,$03,$01,$00,$00,$02	 ; f8-fd

1971: f4 70     mov   a,$70+x
1973: f0 24     beq   $1999
1975: 09 47 5e  or    ($5e),($47)
1978: 9b 70     dec   $70+x
197a: d0 0a     bne   $1986
197c: e8 00     mov   a,#$00
197e: d5 90 04  mov   $0490+x,a
1981: f5 b0 04  mov   a,$04b0+x
1984: 2f 10     bra   $1996
1986: 60        clrc
1987: f5 90 04  mov   a,$0490+x
198a: 95 a0 04  adc   a,$04a0+x
198d: d5 90 04  mov   $0490+x,a
1990: f5 91 04  mov   a,$0491+x
1993: 95 a1 04  adc   a,$04a1+x
1996: d5 91 04  mov   $0491+x,a
1999: fb e1     mov   y,$e1+x
199b: f0 23     beq   $19c0
199d: f5 90 05  mov   a,$0590+x
19a0: de e0 1b  cbne  $e0+x,$19be
19a3: 09 47 5e  or    ($5e),($47)
19a6: f5 80 05  mov   a,$0580+x
19a9: 10 07     bpl   $19b2
19ab: fc        inc   y
19ac: d0 04     bne   $19b2
19ae: e8 80     mov   a,#$80
19b0: 2f 04     bra   $19b6
19b2: 60        clrc
19b3: 95 81 05  adc   a,$0581+x
19b6: d5 80 05  mov   $0580+x,a
19b9: 3f cf 1b  call  $1bcf
19bc: 2f 07     bra   $19c5
19be: bb e0     inc   $e0+x
19c0: e8 ff     mov   a,#$ff
19c2: 3f da 1b  call  $1bda
19c5: f4 71     mov   a,$71+x
19c7: f0 24     beq   $19ed
19c9: 09 47 5e  or    ($5e),($47)
19cc: 9b 71     dec   $71+x
19ce: d0 0a     bne   $19da
19d0: e8 00     mov   a,#$00
19d2: d5 c0 04  mov   $04c0+x,a
19d5: f5 e0 04  mov   a,$04e0+x
19d8: 2f 10     bra   $19ea
19da: 60        clrc
19db: f5 c0 04  mov   a,$04c0+x
19de: 95 d0 04  adc   a,$04d0+x
19e1: d5 c0 04  mov   $04c0+x,a
19e4: f5 c1 04  mov   a,$04c1+x
19e7: 95 d1 04  adc   a,$04d1+x
19ea: d5 c1 04  mov   $04c1+x,a
19ed: e4 47     mov   a,$47
19ef: 24 5e     and   a,$5e
19f1: f0 5c     beq   $1a4f
19f3: f5 c1 04  mov   a,$04c1+x
19f6: fd        mov   y,a
19f7: f5 c0 04  mov   a,$04c0+x
19fa: da 10     movw  $10,ya
19fc: 7d        mov   a,x
19fd: 9f        xcn   a
19fe: 5c        lsr   a
19ff: c4 12     mov   $12,a
1a01: eb 11     mov   y,$11
1a03: e5 b8 03  mov   a,$03b8
1a06: f0 11     beq   $1a19
1a08: e8 51     mov   a,#$51
1a0a: 80        setc
1a0b: a8 51     sbc   a,#$51
1a0d: eb 10     mov   y,$10
1a0f: cf        mul   ya
1a10: dd        mov   a,y
1a11: eb 11     mov   y,$11
1a13: 60        clrc
1a14: 88 51     adc   a,#$51
1a16: fd        mov   y,a
1a17: 2f 12     bra   $1a2b
1a19: f6 46 1e  mov   a,$1e46+y
1a1c: 80        setc
1a1d: b6 45 1e  sbc   a,$1e45+y
1a20: eb 10     mov   y,$10
1a22: cf        mul   ya
1a23: dd        mov   a,y
1a24: eb 11     mov   y,$11
1a26: 60        clrc
1a27: 96 45 1e  adc   a,$1e45+y
1a2a: fd        mov   y,a
1a2b: f5 b1 04  mov   a,$04b1+x
1a2e: cf        mul   ya
1a2f: f5 e1 04  mov   a,$04e1+x
1a32: 1c        asl   a
1a33: 13 12 01  bbc0  $12,$1a37
1a36: 1c        asl   a
1a37: dd        mov   a,y
1a38: 90 03     bcc   $1a3d
1a3a: 48 ff     eor   a,#$ff
1a3c: bc        inc   a
1a3d: eb 12     mov   y,$12
1a3f: 3f 96 14  call  $1496
1a42: 8d 14     mov   y,#$14
1a44: e8 00     mov   a,#$00
1a46: 9a 10     subw  ya,$10
1a48: da 10     movw  $10,ya
1a4a: ab 12     inc   $12
1a4c: 33 12 b2  bbc1  $12,$1a01
1a4f: 6f        ret

1a50: f5 21 04  mov   a,$0421+x
1a53: f0 6b     beq   $1ac0
1a55: 9c        dec   a
1a56: d5 21 04  mov   $0421+x,a
1a59: f0 07     beq   $1a62
1a5b: e8 02     mov   a,#$02
1a5d: 75 20 04  cmp   a,$0420+x
1a60: d0 5e     bne   $1ac0
1a62: f5 80 04  mov   a,$0480+x
1a65: c4 17     mov   $17,a
1a67: f4 20     mov   a,$20+x
1a69: fb 21     mov   y,$21+x
1a6b: da 14     movw  $14,ya
1a6d: 8d 00     mov   y,#$00
1a6f: f7 14     mov   a,($14)+y
1a71: f0 1e     beq   $1a91
1a73: 30 07     bmi   $1a7c
1a75: fc        inc   y
1a76: 30 40     bmi   $1ab8
1a78: f7 14     mov   a,($14)+y
1a7a: 10 f9     bpl   $1a75
1a7c: 68 c8     cmp   a,#$c8
1a7e: f0 40     beq   $1ac0
1a80: 68 ef     cmp   a,#$ef
1a82: f0 29     beq   $1aad
1a84: 68 e0     cmp   a,#$e0
1a86: 90 30     bcc   $1ab8
1a88: 6d        push  y
1a89: fd        mov   y,a
1a8a: ae        pop   a
1a8b: 96 73 18  adc   a,$1873+y
1a8e: fd        mov   y,a
1a8f: 2f de     bra   $1a6f
1a91: e4 17     mov   a,$17
1a93: f0 23     beq   $1ab8
1a95: 8b 17     dec   $17
1a97: d0 0a     bne   $1aa3
1a99: f5 61 04  mov   a,$0461+x
1a9c: 2d        push  a
1a9d: f5 60 04  mov   a,$0460+x
1aa0: ee        pop   y
1aa1: 2f c8     bra   $1a6b
1aa3: f5 71 04  mov   a,$0471+x
1aa6: 2d        push  a
1aa7: f5 70 04  mov   a,$0470+x
1aaa: ee        pop   y
1aab: 2f be     bra   $1a6b
1aad: fc        inc   y
1aae: f7 14     mov   a,($14)+y
1ab0: 2d        push  a
1ab1: fc        inc   y
1ab2: f7 14     mov   a,($14)+y
1ab4: fd        mov   y,a
1ab5: ae        pop   a
1ab6: 2f b3     bra   $1a6b
1ab8: e4 47     mov   a,$47
1aba: 05 d3 03  or    a,$03d3
1abd: c5 d3 03  mov   $03d3,a
1ac0: f2 13     clr7  $13
1ac2: f4 80     mov   a,$80+x
1ac4: f0 2c     beq   $1af2
1ac6: f4 81     mov   a,$81+x
1ac8: f0 04     beq   $1ace
1aca: 9b 81     dec   $81+x
1acc: 2f 24     bra   $1af2
1ace: e2 13     set7  $13
1ad0: 9b 80     dec   $80+x
1ad2: d0 0b     bne   $1adf
1ad4: f5 11 05  mov   a,$0511+x
1ad7: d5 f0 04  mov   $04f0+x,a
1ada: f5 10 05  mov   a,$0510+x
1add: 2f 10     bra   $1aef
1adf: 60        clrc
1ae0: f5 f0 04  mov   a,$04f0+x
1ae3: 95 00 05  adc   a,$0500+x
1ae6: d5 f0 04  mov   $04f0+x,a
1ae9: f5 f1 04  mov   a,$04f1+x
1aec: 95 01 05  adc   a,$0501+x
1aef: d5 f1 04  mov   $04f1+x,a
1af2: 3f f0 18  call  $18f0
1af5: f4 d1     mov   a,$d1+x
1af7: f0 4c     beq   $1b45
1af9: f5 50 05  mov   a,$0550+x
1afc: de d0 44  cbne  $d0+x,$1b43
1aff: f5 60 05  mov   a,$0560+x
1b02: 75 51 05  cmp   a,$0551+x
1b05: d0 05     bne   $1b0c
1b07: f5 71 05  mov   a,$0571+x
1b0a: 2f 0d     bra   $1b19
1b0c: 40        setp
1b0d: bb 60     inc   $60+x
1b0f: 20        clrp
1b10: fd        mov   y,a
1b11: f0 02     beq   $1b15
1b13: f4 d1     mov   a,$d1+x
1b15: 60        clrc
1b16: 95 70 05  adc   a,$0570+x
1b19: d4 d1     mov   $d1+x,a
1b1b: f5 40 05  mov   a,$0540+x
1b1e: 60        clrc
1b1f: 95 41 05  adc   a,$0541+x
1b22: d5 40 05  mov   $0540+x,a
1b25: c4 12     mov   $12,a
1b27: 1c        asl   a
1b28: 1c        asl   a
1b29: 90 02     bcc   $1b2d
1b2b: 48 ff     eor   a,#$ff
1b2d: fd        mov   y,a
1b2e: f4 d1     mov   a,$d1+x
1b30: 68 f1     cmp   a,#$f1
1b32: 90 05     bcc   $1b39
1b34: 28 0f     and   a,#$0f
1b36: cf        mul   ya
1b37: 2f 04     bra   $1b3d
1b39: cf        mul   ya
1b3a: dd        mov   a,y
1b3b: 8d 00     mov   y,#$00
1b3d: 3f ba 1b  call  $1bba
1b40: 5f 13 14  jmp   $1413

1b43: bb d0     inc   $d0+x
1b45: e3 13 f8  bbs7  $13,$1b40
1b48: 6f        ret

1b49: f2 13     clr7  $13
1b4b: f4 e1     mov   a,$e1+x
1b4d: f0 09     beq   $1b58
1b4f: f5 90 05  mov   a,$0590+x
1b52: de e0 03  cbne  $e0+x,$1b58
1b55: 3f c2 1b  call  $1bc2
1b58: f5 c1 04  mov   a,$04c1+x
1b5b: fd        mov   y,a
1b5c: f5 c0 04  mov   a,$04c0+x
1b5f: da 10     movw  $10,ya
1b61: f4 71     mov   a,$71+x
1b63: f0 0a     beq   $1b6f
1b65: f5 d1 04  mov   a,$04d1+x
1b68: fd        mov   y,a
1b69: f5 d0 04  mov   a,$04d0+x
1b6c: 3f a4 1b  call  $1ba4
1b6f: f3 13 03  bbc7  $13,$1b75
1b72: 3f fc 19  call  $19fc
1b75: f2 13     clr7  $13
1b77: 3f f0 18  call  $18f0
1b7a: f4 80     mov   a,$80+x
1b7c: f0 0e     beq   $1b8c
1b7e: f4 81     mov   a,$81+x
1b80: d0 0a     bne   $1b8c
1b82: f5 01 05  mov   a,$0501+x
1b85: fd        mov   y,a
1b86: f5 00 05  mov   a,$0500+x
1b89: 3f a4 1b  call  $1ba4
1b8c: f4 d1     mov   a,$d1+x
1b8e: f0 b5     beq   $1b45
1b90: f5 50 05  mov   a,$0550+x
1b93: de d0 af  cbne  $d0+x,$1b45
1b96: eb 51     mov   y,$51
1b98: f5 41 05  mov   a,$0541+x
1b9b: cf        mul   ya
1b9c: dd        mov   a,y
1b9d: 60        clrc
1b9e: 95 40 05  adc   a,$0540+x
1ba1: 5f 25 1b  jmp   $1b25

1ba4: e2 13     set7  $13
1ba6: cb 12     mov   $12,y
1ba8: 3f 0d 19  call  $190d
1bab: 6d        push  y
1bac: eb 51     mov   y,$51
1bae: cf        mul   ya
1baf: cb 14     mov   $14,y
1bb1: 8f 00 15  mov   $15,#$00
1bb4: eb 51     mov   y,$51
1bb6: ae        pop   a
1bb7: cf        mul   ya
1bb8: 7a 14     addw  ya,$14
1bba: 3f 0d 19  call  $190d
1bbd: 7a 10     addw  ya,$10
1bbf: da 10     movw  $10,ya
1bc1: 6f        ret

1bc2: e2 13     set7  $13
1bc4: eb 51     mov   y,$51
1bc6: f5 81 05  mov   a,$0581+x
1bc9: cf        mul   ya
1bca: dd        mov   a,y
1bcb: 60        clrc
1bcc: 95 80 05  adc   a,$0580+x
1bcf: 1c        asl   a
1bd0: 90 02     bcc   $1bd4
1bd2: 48 ff     eor   a,#$ff
1bd4: fb e1     mov   y,$e1+x
1bd6: cf        mul   ya
1bd7: dd        mov   a,y
1bd8: 48 ff     eor   a,#$ff
1bda: ec b9 03  mov   y,$03b9
1bdd: f0 05     beq   $1be4
1bdf: ec 04 04  mov   y,$0404
1be2: 2f 02     bra   $1be6
1be4: eb 59     mov   y,$59
1be6: cf        mul   ya
1be7: f5 c0 05  mov   a,$05c0+x
1bea: cf        mul   ya
1beb: f5 91 04  mov   a,$0491+x
1bee: cf        mul   ya
1bef: dd        mov   a,y
1bf0: cf        mul   ya
1bf1: dd        mov   a,y
1bf2: d5 b1 04  mov   $04b1+x,a
1bf5: 6f        ret

; vcmd fd
1bf6: 7d        mov   a,x
1bf7: 9f        xcn   a
1bf8: 5c        lsr   a
1bf9: 08 05     or    a,#$05
1bfb: c4 14     mov   $14,a
1bfd: dd        mov   a,y
1bfe: eb 14     mov   y,$14
1c00: 3f 96 14  call  $1496
1c03: 3f c9 16  call  $16c9
1c06: ab 14     inc   $14
1c08: eb 14     mov   y,$14
1c0a: 3f 96 14  call  $1496
1c0d: 6f        ret

; vcmd fb - echo on
1c0e: e5 bd 03  mov   a,$03bd
1c11: 04 47     or    a,$47
1c13: c5 bd 03  mov   $03bd,a
1c16: e4 47     mov   a,$47
1c18: 48 ff     eor   a,#$ff
1c1a: 25 bf 03  and   a,$03bf
1c1d: c5 bf 03  mov   $03bf,a
1c20: 5f 89 13  jmp   $1389

; vcmd fc - echo off
1c23: e5 bf 03  mov   a,$03bf
1c26: 04 47     or    a,$47
1c28: c5 bf 03  mov   $03bf,a
1c2b: e4 47     mov   a,$47
1c2d: 48 ff     eor   a,#$ff
1c2f: 25 bd 03  and   a,$03bd
1c32: c5 bd 03  mov   $03bd,a
1c35: 5f 89 13  jmp   $1389

1c38: 8d 00     mov   y,#$00
1c3a: f7 6e     mov   a,($6e)+y
1c3c: 3a 6e     incw  $6e
1c3e: 2d        push  a
1c3f: f7 6e     mov   a,($6e)+y
1c41: 3a 6e     incw  $6e
1c43: fd        mov   y,a
1c44: ae        pop   a
1c45: 6f        ret

1c46: c4 06     mov   $06,a
1c48: 1c        asl   a
1c49: 5d        mov   x,a
1c4a: f5 ff bf  mov   a,$bfff+x
1c4d: fd        mov   y,a
1c4e: f5 fe bf  mov   a,$bffe+x
1c51: da 6e     movw  $6e,ya
1c53: 8f 02 1f  mov   $1f,#$02
1c56: 2f 02     bra   $1c5a
1c58: c4 06     mov   $06,a
1c5a: e4 6d     mov   a,$6d
1c5c: 0e 46 00  tset1 $0046
1c5f: e8 a5     mov   a,#$a5
1c61: c5 e4 05  mov   $05e4,a
1c64: 6f        ret

1c65: e4 6d     mov   a,$6d
1c67: 0e 46 00  tset1 $0046
1c6a: e8 00     mov   a,#$00
1c6c: c5 e4 05  mov   $05e4,a
1c6f: cd 00     mov   x,#$00
1c71: 8f 01 47  mov   $47,#$01
1c74: e4 6d     mov   a,$6d
1c76: 24 47     and   a,$47
1c78: f0 14     beq   $1c8e
1c7a: e4 47     mov   a,$47
1c7c: 48 ff     eor   a,#$ff
1c7e: 24 1a     and   a,$1a
1c80: c4 1a     mov   $1a,a
1c82: f5 11 02  mov   a,$0211+x
1c85: 3f 04 0e  call  $0e04
1c88: e8 00     mov   a,#$00
1c8a: d4 21     mov   $21+x,a
1c8c: d4 20     mov   $20+x,a
1c8e: 3d        inc   x
1c8f: 3d        inc   x
1c90: 0b 47     asl   $47
1c92: d0 e0     bne   $1c74
1c94: e8 00     mov   a,#$00
1c96: c4 6d     mov   $6d,a
1c98: 6f        ret

1c99: cd 0e     mov   x,#$0e
1c9b: 8f 80 47  mov   $47,#$80
1c9e: e4 47     mov   a,$47
1ca0: 24 6d     and   a,$6d
1ca2: f0 06     beq   $1caa
1ca4: e8 00     mov   a,#$00
1ca6: d4 20     mov   $20+x,a
1ca8: d4 1f     mov   $1f+x,a
1caa: 1d        dec   x
1cab: 1d        dec   x
1cac: 4b 47     lsr   $47
1cae: d0 ee     bne   $1c9e
1cb0: e8 00     mov   a,#$00
1cb2: c4 6d     mov   $6d,a
1cb4: cd 00     mov   x,#$00
1cb6: 8f 01 47  mov   $47,#$01
1cb9: f5 f1 05  mov   a,$05f1+x
1cbc: f0 15     beq   $1cd3
1cbe: d4 21     mov   $21+x,a
1cc0: f5 f0 05  mov   a,$05f0+x
1cc3: d4 20     mov   $20+x,a
1cc5: 09 47 1a  or    ($1a),($47)
1cc8: 09 47 6d  or    ($6d),($47)
1ccb: e4 47     mov   a,$47
1ccd: 48 ff     eor   a,#$ff
1ccf: 24 1b     and   a,$1b
1cd1: c4 1b     mov   $1b,a
1cd3: 3d        inc   x
1cd4: 3d        inc   x
1cd5: 0b 47     asl   $47
1cd7: d0 e0     bne   $1cb9
1cd9: e4 6d     mov   a,$6d
1cdb: 0e 46 00  tset1 $0046
1cde: e8 00     mov   a,#$00
1ce0: c5 e4 05  mov   $05e4,a
1ce3: 6f        ret

1ce4: 3f 38 1c  call  $1c38
1ce7: 1a 6e     decw  $6e
1ce9: 1a 6e     decw  $6e
1ceb: da 16     movw  $16,ya
1ced: 8d 0f     mov   y,#$0f
1cef: f7 16     mov   a,($16)+y
1cf1: d6 f0 05  mov   $05f0+y,a
1cf4: dc        dec   y
1cf5: 10 f8     bpl   $1cef
1cf7: 3f 99 1c  call  $1c99
1cfa: cd 0e     mov   x,#$0e
1cfc: 8f 80 47  mov   $47,#$80
1cff: e4 47     mov   a,$47
1d01: 24 6d     and   a,$6d
1d03: f0 1d     beq   $1d22
1d05: e8 ff     mov   a,#$ff
1d07: d5 91 04  mov   $0491+x,a
1d0a: e5 e3 05  mov   a,$05e3
1d0d: 3f 27 17  call  $1727
1d10: e8 00     mov   a,#$00
1d12: d5 c1 05  mov   $05c1+x,a
1d15: d5 11 05  mov   $0511+x,a
1d18: d5 91 05  mov   $0591+x,a
1d1b: d5 20 05  mov   $0520+x,a
1d1e: d4 d1     mov   $d1+x,a
1d20: d4 e1     mov   $e1+x,a
1d22: 1d        dec   x
1d23: 1d        dec   x
1d24: 4b 47     lsr   $47
1d26: d0 d7     bne   $1cff
1d28: c5 03 04  mov   $0403,a
1d2b: c5 e0 05  mov   $05e0,a
1d2e: c5 10 04  mov   $0410,a
1d31: c4 70     mov   $70,a
1d33: 6f        ret

1d34: e5 e4 05  mov   a,$05e4
1d37: f0 03     beq   $1d3c
1d39: 5f 6a 1c  jmp   $1c6a

1d3c: eb 0a     mov   y,$0a
1d3e: e4 02     mov   a,$02
1d40: c4 0a     mov   $0a,a
1d42: 7e 02     cmp   y,$02
1d44: f0 03     beq   $1d49
1d46: 5f 46 1c  jmp   $1c46

1d49: e4 06     mov   a,$06
1d4b: f0 e6     beq   $1d33
1d4d: e4 1f     mov   a,$1f
1d4f: d0 03     bne   $1d54
1d51: 5f b0 1d  jmp   $1db0

1d54: 6e 1f 8d  dbnz  $1f,$1ce4
1d57: 3f 38 1c  call  $1c38
1d5a: d0 1a     bne   $1d76
1d5c: fd        mov   y,a
1d5d: d0 03     bne   $1d62
1d5f: 5f 58 1c  jmp   $1c58

1d62: 8c e0 05  dec   $05e0
1d65: 10 03     bpl   $1d6a
1d67: c5 e0 05  mov   $05e0,a
1d6a: 3f 38 1c  call  $1c38
1d6d: e9 e0 05  mov   x,$05e0
1d70: f0 e5     beq   $1d57
1d72: da 6e     movw  $6e,ya
1d74: 2f e1     bra   $1d57
1d76: da 16     movw  $16,ya
1d78: 8d 0f     mov   y,#$0f
1d7a: f7 16     mov   a,($16)+y
1d7c: d6 f0 05  mov   $05f0+y,a
1d7f: dc        dec   y
1d80: 10 f8     bpl   $1d7a
1d82: 3f 65 1c  call  $1c65
1d85: 3f 99 1c  call  $1c99
1d88: cd 00     mov   x,#$00
1d8a: 8f 01 47  mov   $47,#$01
1d8d: e4 47     mov   a,$47
1d8f: 24 6d     and   a,$6d
1d91: f0 17     beq   $1daa
1d93: f4 21     mov   a,$21+x
1d95: f0 06     beq   $1d9d
1d97: f5 c1 05  mov   a,$05c1+x
1d9a: 3f d3 16  call  $16d3
1d9d: e8 00     mov   a,#$00
1d9f: d5 80 04  mov   $0480+x,a
1da2: d4 70     mov   $70+x,a
1da4: d4 71     mov   $71+x,a
1da6: bc        inc   a
1da7: d5 20 04  mov   $0420+x,a
1daa: 3d        inc   x
1dab: 3d        inc   x
1dac: 0b 47     asl   $47
1dae: d0 dd     bne   $1d8d
1db0: cd 00     mov   x,#$00
1db2: e4 6d     mov   a,$6d
1db4: 24 5e     and   a,$5e
1db6: c4 5e     mov   $5e,a
1db8: 8f 01 47  mov   $47,#$01
1dbb: d8 44     mov   $44,x
1dbd: e4 47     mov   a,$47
1dbf: 24 6d     and   a,$6d
1dc1: f0 78     beq   $1e3b
1dc3: f4 21     mov   a,$21+x
1dc5: f0 74     beq   $1e3b
1dc7: f5 20 04  mov   a,$0420+x
1dca: 9c        dec   a
1dcb: d5 20 04  mov   $0420+x,a
1dce: d0 65     bne   $1e35
1dd0: 3f c9 16  call  $16c9
1dd3: d0 20     bne   $1df5
1dd5: f5 80 04  mov   a,$0480+x
1dd8: d0 03     bne   $1ddd
1dda: 5f 57 1d  jmp   $1d57

1ddd: 3f fd 17  call  $17fd
1de0: f5 80 04  mov   a,$0480+x
1de3: 9c        dec   a
1de4: d5 80 04  mov   $0480+x,a
1de7: d0 e7     bne   $1dd0
1de9: f5 60 04  mov   a,$0460+x
1dec: d4 20     mov   $20+x,a
1dee: f5 61 04  mov   a,$0461+x
1df1: d4 21     mov   $21+x,a
1df3: 2f db     bra   $1dd0
1df5: 30 20     bmi   $1e17
1df7: d5 30 04  mov   $0430+x,a
1dfa: 3f c9 16  call  $16c9
1dfd: 30 18     bmi   $1e17
1dff: 2d        push  a
1e00: 9f        xcn   a
1e01: 28 07     and   a,#$07
1e03: fd        mov   y,a
1e04: f6 a8 1e  mov   a,$1ea8+y
1e07: d5 31 04  mov   $0431+x,a
1e0a: ae        pop   a
1e0b: 28 0f     and   a,#$0f
1e0d: fd        mov   y,a
1e0e: f6 b0 1e  mov   a,$1eb0+y
1e11: d5 c0 05  mov   $05c0+x,a
1e14: 3f c9 16  call  $16c9
1e17: 68 e0     cmp   a,#$e0
1e19: 90 05     bcc   $1e20
1e1b: 3f b7 16  call  $16b7
1e1e: 2f b0     bra   $1dd0
1e20: 3f a8 13  call  $13a8
1e23: f5 30 04  mov   a,$0430+x
1e26: d5 20 04  mov   $0420+x,a
1e29: fd        mov   y,a
1e2a: f5 31 04  mov   a,$0431+x
1e2d: cf        mul   ya
1e2e: dd        mov   a,y
1e2f: bc        inc   a
1e30: d5 21 04  mov   $0421+x,a
1e33: 2f 03     bra   $1e38
1e35: 3f 50 1a  call  $1a50
1e38: 3f b7 18  call  $18b7
1e3b: 3d        inc   x
1e3c: 3d        inc   x
1e3d: 0b 47     asl   $47
1e3f: f0 03     beq   $1e44
1e41: 5f bb 1d  jmp   $1dbb
1e44: 6f        ret

; pan table
1e45: db $00,$01,$03,$07,$0d,$15,$1e,$29
1e4d: db $34,$42,$51,$5e,$67,$6e,$73,$77
1e55: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
1e5a: db $7f,$00,$00,$00,$00,$00,$00,$00
1e62: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1e6a: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1e72: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
1e7a: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1e84: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1e8e: dw $08ef
1e90: dw $08de
1e92: dw $0965
1e94: dw $09f4
1e96: dw $0a8c
1e98: dw $0b2c
1e9a: dw $0bd6
1e9c: dw $0c8b
1e9e: dw $0d4a
1ea0: dw $0e14
1ea2: dw $0eea
1ea4: dw $0fcd
1ea6: dw $10be

; note dur%'s
1ea8: db $32,$65,$7f,$98,$b2,$cb,$e5,$ff
; per-note velocity values
1eb0: db $0a,$19,$28,$3c,$50,$64,$7d,$96
1eb8: db $aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff

1ec0: e8 aa     mov   a,#$aa
1ec2: c5 f4 00  mov   $00f4,a
1ec5: e8 bb     mov   a,#$bb
1ec7: c5 f5 00  mov   $00f5,a
1eca: e5 f4 00  mov   a,$00f4
1ecd: 68 cc     cmp   a,#$cc
1ecf: d0 f9     bne   $1eca
1ed1: 2f 20     bra   $1ef3
1ed3: ec f4 00  mov   y,$00f4
1ed6: d0 fb     bne   $1ed3
1ed8: 5e f4 00  cmp   y,$00f4
1edb: d0 0f     bne   $1eec
1edd: e5 f5 00  mov   a,$00f5
1ee0: cc f4 00  mov   $00f4,y
1ee3: d7 14     mov   ($14)+y,a
1ee5: fc        inc   y
1ee6: d0 f0     bne   $1ed8
1ee8: ab 15     inc   $15
1eea: 2f ec     bra   $1ed8
1eec: 10 ea     bpl   $1ed8
1eee: 5e f4 00  cmp   y,$00f4
1ef1: 10 e5     bpl   $1ed8
1ef3: e5 f6 00  mov   a,$00f6
1ef6: ec f7 00  mov   y,$00f7
1ef9: da 14     movw  $14,ya
1efb: ec f4 00  mov   y,$00f4
1efe: e5 f5 00  mov   a,$00f5
1f01: cc f4 00  mov   $00f4,y
1f04: d0 cd     bne   $1ed3
1f06: cd 31     mov   x,#$31
1f08: c9 f1 00  mov   $00f1,x
1f0b: 6f        ret
