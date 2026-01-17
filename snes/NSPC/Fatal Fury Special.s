0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e0     cmp   x,#$e0
080a: d0 fb     bne   $0807
080c: bc        inc   a
080d: 3f 6e 0e  call  $0e6e
0810: a2 48     set5  $48
0812: e8 60     mov   a,#$60
0814: 8d 0c     mov   y,#$0c
0816: 3f d2 09  call  $09d2
0819: 8d 1c     mov   y,#$1c
081b: 3f d2 09  call  $09d2
081e: e8 00     mov   a,#$00
0820: 8d 2c     mov   y,#$2c
0822: 3f d2 09  call  $09d2
0825: 8d 3c     mov   y,#$3c
0827: 3f d2 09  call  $09d2
082a: 8d 4d     mov   y,#$4d
082c: 3f d2 09  call  $09d2
082f: e8 1e     mov   a,#$1e
0831: 8d 5d     mov   y,#$5d
0833: 3f d2 09  call  $09d2
0836: e8 f0     mov   a,#$f0
0838: c5 f1 00  mov   $00f1,a
083b: e8 10     mov   a,#$10
083d: c5 fa 00  mov   $00fa,a
0840: c4 53     mov   $53,a
0842: e8 01     mov   a,#$01
0844: c5 f1 00  mov   $00f1,a
0847: e8 02     mov   a,#$02
0849: c5 a1 03  mov   $03a1,a
084c: e8 00     mov   a,#$00
084e: c5 a0 03  mov   $03a0,a
0851: e4 1b     mov   a,$1b
0853: d0 54     bne   $08a9
0855: 8d 0a     mov   y,#$0a
0857: ad 05     cmp   y,#$05
0859: f0 07     beq   $0862
085b: b0 08     bcs   $0865
085d: 69 4d 4c  cmp   ($4c),($4d)
0860: d0 11     bne   $0873
0862: e3 4c 0e  bbs7  $4c,$0873
0865: f6 ff 12  mov   a,$12ff+y
0868: c5 f2 00  mov   $00f2,a
086b: f6 09 13  mov   a,$1309+y
086e: 5d        mov   x,a
086f: e6        mov   a,(x)
0870: c5 f3 00  mov   $00f3,a
0873: fe e2     dbnz  y,$0857
0875: cb 45     mov   $45,y
0877: cb 46     mov   $46,y
0879: e4 18     mov   a,$18
087b: 44 19     eor   a,$19
087d: 5c        lsr   a
087e: 5c        lsr   a
087f: ed        notc
0880: 6b 18     ror   $18
0882: 6b 19     ror   $19
0884: ec fd 00  mov   y,$00fd
0887: f0 fb     beq   $0884
0889: 6d        push  y
088a: e8 20     mov   a,#$20
088c: cf        mul   ya
088d: 60        clrc
088e: 84 43     adc   a,$43
0890: c4 43     mov   $43,a
0892: 90 0a     bcc   $089e
0894: 3f d9 09  call  $09d9
0897: 69 4d 4c  cmp   ($4c),($4d)
089a: f0 02     beq   $089e
089c: ab 4c     inc   $4c
089e: e4 53     mov   a,$53
08a0: ee        pop   y
08a1: cf        mul   ya
08a2: 60        clrc
08a3: 84 51     adc   a,$51
08a5: c4 51     mov   $51,a
08a7: 90 0b     bcc   $08b4
08a9: 3f 31 0b  call  $0b31
08ac: cd 00     mov   x,#$00
08ae: 3f cd 08  call  $08cd
08b1: 5f 51 08  jmp   $0851

08b4: e4 04     mov   a,$04
08b6: f0 12     beq   $08ca
08b8: cd 00     mov   x,#$00
08ba: 8f 01 47  mov   $47,#$01
08bd: f4 31     mov   a,$31+x
08bf: f0 03     beq   $08c4
08c1: 3f 28 12  call  $1228
08c4: 3d        inc   x
08c5: 3d        inc   x
08c6: 0b 47     asl   $47
08c8: d0 f3     bne   $08bd
08ca: 5f 51 08  jmp   $0851

08cd: f4 04     mov   a,$04+x
08cf: d5 f4 00  mov   $00f4+x,a
08d2: f5 f4 00  mov   a,$00f4+x
08d5: 75 f4 00  cmp   a,$00f4+x
08d8: d0 f8     bne   $08d2
08da: d4 00     mov   $00+x,a
08dc: 6f        ret

08dd: ad ca     cmp   y,#$ca
08df: 90 05     bcc   $08e6
08e1: 3f 98 0c  call  $0c98
08e4: 8d a4     mov   y,#$a4
08e6: ad c8     cmp   y,#$c8
08e8: b0 f2     bcs   $08dc
08ea: e4 1a     mov   a,$1a
08ec: 24 47     and   a,$47
08ee: d0 ec     bne   $08dc
08f0: dd        mov   a,y
08f1: 28 7f     and   a,#$7f
08f3: 60        clrc
08f4: 84 50     adc   a,$50
08f6: 60        clrc
08f7: 95 f0 02  adc   a,$02f0+x
08fa: d5 61 03  mov   $0361+x,a
08fd: f5 81 03  mov   a,$0381+x
0900: d5 60 03  mov   $0360+x,a
0903: f5 b1 02  mov   a,$02b1+x
0906: 5c        lsr   a
0907: e8 00     mov   a,#$00
0909: 7c        ror   a
090a: d5 a0 02  mov   $02a0+x,a
090d: e8 00     mov   a,#$00
090f: d4 b0     mov   $b0+x,a
0911: d5 00 01  mov   $0100+x,a
0914: d5 d0 02  mov   $02d0+x,a
0917: d4 c0     mov   $c0+x,a
0919: 09 47 5e  or    ($5e),($47)
091c: 09 47 45  or    ($45),($47)
091f: f5 80 02  mov   a,$0280+x
0922: d4 a0     mov   $a0+x,a
0924: f0 1e     beq   $0944
0926: f5 81 02  mov   a,$0281+x
0929: d4 a1     mov   $a1+x,a
092b: f5 90 02  mov   a,$0290+x
092e: d0 0a     bne   $093a
0930: f5 61 03  mov   a,$0361+x
0933: 80        setc
0934: b5 91 02  sbc   a,$0291+x
0937: d5 61 03  mov   $0361+x,a
093a: f5 91 02  mov   a,$0291+x
093d: 60        clrc
093e: 95 61 03  adc   a,$0361+x
0941: 3f 82 0f  call  $0f82
0944: 3f 9a 0f  call  $0f9a
0947: 8d 00     mov   y,#$00
0949: e4 11     mov   a,$11
094b: 80        setc
094c: a8 34     sbc   a,#$34
094e: b0 09     bcs   $0959
0950: e4 11     mov   a,$11
0952: 80        setc
0953: a8 13     sbc   a,#$13
0955: b0 06     bcs   $095d
0957: dc        dec   y
0958: 1c        asl   a
0959: 7a 10     addw  ya,$10
095b: da 10     movw  $10,ya
095d: 4d        push  x
095e: e4 11     mov   a,$11
0960: 1c        asl   a
0961: 8d 00     mov   y,#$00
0963: cd 18     mov   x,#$18
0965: 9e        div   ya,x
0966: 5d        mov   x,a
0967: f6 15 13  mov   a,$1315+y
096a: c4 15     mov   $15,a
096c: f6 14 13  mov   a,$1314+y
096f: c4 14     mov   $14,a
0971: f6 17 13  mov   a,$1317+y
0974: 2d        push  a
0975: f6 16 13  mov   a,$1316+y
0978: ee        pop   y
0979: 9a 14     subw  ya,$14
097b: eb 10     mov   y,$10
097d: cf        mul   ya
097e: dd        mov   a,y
097f: 8d 00     mov   y,#$00
0981: 7a 14     addw  ya,$14
0983: cb 15     mov   $15,y
0985: 1c        asl   a
0986: 2b 15     rol   $15
0988: c4 14     mov   $14,a
098a: 2f 04     bra   $0990
098c: 4b 15     lsr   $15
098e: 7c        ror   a
098f: 3d        inc   x
0990: c8 06     cmp   x,#$06
0992: d0 f8     bne   $098c
0994: c4 14     mov   $14,a
0996: ce        pop   x
0997: f5 20 02  mov   a,$0220+x
099a: eb 15     mov   y,$15
099c: cf        mul   ya
099d: da 16     movw  $16,ya
099f: f5 20 02  mov   a,$0220+x
09a2: eb 14     mov   y,$14
09a4: cf        mul   ya
09a5: 6d        push  y
09a6: f5 21 02  mov   a,$0221+x
09a9: eb 14     mov   y,$14
09ab: cf        mul   ya
09ac: 7a 16     addw  ya,$16
09ae: da 16     movw  $16,ya
09b0: f5 21 02  mov   a,$0221+x
09b3: eb 15     mov   y,$15
09b5: cf        mul   ya
09b6: fd        mov   y,a
09b7: ae        pop   a
09b8: 7a 16     addw  ya,$16
09ba: da 16     movw  $16,ya
09bc: 7d        mov   a,x
09bd: 9f        xcn   a
09be: 5c        lsr   a
09bf: 08 02     or    a,#$02
09c1: fd        mov   y,a
09c2: e4 16     mov   a,$16
09c4: 3f ca 09  call  $09ca
09c7: fc        inc   y
09c8: e4 17     mov   a,$17
09ca: 2d        push  a
09cb: e4 47     mov   a,$47
09cd: 24 1a     and   a,$1a
09cf: ae        pop   a
09d0: d0 06     bne   $09d8
09d2: cc f2 00  mov   $00f2,y
09d5: c5 f3 00  mov   $00f3,a
09d8: 6f        ret

09d9: e5 f6 00  mov   a,$00f6
09dc: 65 f6 00  cmp   a,$00f6
09df: d0 f8     bne   $09d9
09e1: 64 02     cmp   a,$02
09e3: d0 03     bne   $09e8
09e5: 5f b3 0a  jmp   $0ab3

09e8: c4 02     mov   $02,a
09ea: 68 ff     cmp   a,#$ff
09ec: d0 03     bne   $09f1
09ee: 5f b3 0a  jmp   $0ab3

09f1: e5 f7 00  mov   a,$00f7
09f4: 65 f7 00  cmp   a,$00f7
09f7: d0 f8     bne   $09f1
09f9: c4 03     mov   $03,a
09fb: e8 ff     mov   a,#$ff
09fd: c5 f6 00  mov   $00f6,a
0a00: e4 02     mov   a,$02
0a02: 28 80     and   a,#$80
0a04: d0 70     bne   $0a76
0a06: e4 02     mov   a,$02
0a08: 28 40     and   a,#$40
0a0a: 5c        lsr   a
0a0b: 5c        lsr   a
0a0c: 5d        mov   x,a
0a0d: e4 02     mov   a,$02
0a0f: 28 3f     and   a,#$3f
0a11: d5 ad 13  mov   $13ad+x,a
0a14: e4 03     mov   a,$03
0a16: 5c        lsr   a
0a17: 28 40     and   a,#$40
0a19: 60        clrc
0a1a: 88 bf     adc   a,#$bf
0a1c: d5 b4 13  mov   $13b4+x,a
0a1f: e4 03     mov   a,$03
0a21: 28 0f     and   a,#$0f
0a23: fd        mov   y,a
0a24: f6 94 13  mov   a,$1394+y
0a27: d5 b2 13  mov   $13b2+x,a
0a2a: e4 03     mov   a,$03
0a2c: 9f        xcn   a
0a2d: 28 03     and   a,#$03
0a2f: fd        mov   y,a
0a30: f6 a4 13  mov   a,$13a4+y
0a33: d5 b7 13  mov   $13b7+x,a
0a36: e4 03     mov   a,$03
0a38: 28 40     and   a,#$40
0a3a: 9f        xcn   a
0a3b: 5c        lsr   a
0a3c: 5c        lsr   a
0a3d: d5 af 13  mov   $13af+x,a
0a40: e4 02     mov   a,$02
0a42: 5c        lsr   a
0a43: 5c        lsr   a
0a44: 5c        lsr   a
0a45: 5c        lsr   a
0a46: 5c        lsr   a
0a47: 28 02     and   a,#$02
0a49: 5d        mov   x,a
0a4a: 60        clrc
0a4b: 88 0c     adc   a,#$0c
0a4d: fd        mov   y,a
0a4e: 6d        push  y
0a4f: f5 a8 13  mov   a,$13a8+x
0a52: d6 30 00  mov   $0030+y,a
0a55: f5 a9 13  mov   a,$13a9+x
0a58: d6 31 00  mov   $0031+y,a
0a5b: ce        pop   x
0a5c: e4 02     mov   a,$02
0a5e: 28 40     and   a,#$40
0a60: 88 40     adc   a,#$40
0a62: c4 47     mov   $47,a
0a64: e8 00     mov   a,#$00
0a66: 3f 98 0c  call  $0c98
0a69: e8 00     mov   a,#$00
0a6b: d4 80     mov   $80+x,a
0a6d: d4 90     mov   $90+x,a
0a6f: d4 91     mov   $91+x,a
0a71: bc        inc   a
0a72: d4 70     mov   $70+x,a
0a74: 2f 3d     bra   $0ab3
0a76: e4 02     mov   a,$02
0a78: 28 1f     and   a,#$1f
0a7a: f0 08     beq   $0a84
0a7c: 9c        dec   a
0a7d: f0 10     beq   $0a8f
0a7f: 9c        dec   a
0a80: f0 21     beq   $0aa3
0a82: 2f 2f     bra   $0ab3
0a84: e8 01     mov   a,#$01
0a86: c4 5a     mov   $5a,a
0a88: e4 03     mov   a,$03
0a8a: 3f 5e 0d  call  $0d5e
0a8d: 2f 24     bra   $0ab3
0a8f: e4 03     mov   a,$03
0a91: c5 a1 03  mov   $03a1,a
0a94: d0 05     bne   $0a9b
0a96: e8 0a     mov   a,#$0a
0a98: 3f f1 0c  call  $0cf1
0a9b: e4 03     mov   a,$03
0a9d: 5c        lsr   a
0a9e: c5 a0 03  mov   $03a0,a
0aa1: 2f 10     bra   $0ab3
0aa3: cd 00     mov   x,#$00
0aa5: 8d 02     mov   y,#$02
0aa7: f5 d0 13  mov   a,$13d0+x
0aaa: d5 18 14  mov   $1418+x,a
0aad: 3d        inc   x
0aae: dc        dec   y
0aaf: d0 f6     bne   $0aa7
0ab1: 2f 00     bra   $0ab3
0ab3: 6f        ret

0ab4: 8d 00     mov   y,#$00
0ab6: f7 40     mov   a,($40)+y
0ab8: 3a 40     incw  $40
0aba: 2d        push  a
0abb: f7 40     mov   a,($40)+y
0abd: 3a 40     incw  $40
0abf: fd        mov   y,a
0ac0: ae        pop   a
0ac1: 6f        ret

; load song
0ac2: 3f 2e 13  call  $132e
0ac5: c4 08     mov   $08,a
0ac7: c4 04     mov   $04,a
0ac9: 1c        asl   a
0aca: f0 0d     beq   $0ad9
0acc: 5d        mov   x,a
0acd: f5 17 14  mov   a,$1417+x
0ad0: fd        mov   y,a
0ad1: f5 16 14  mov   a,$1416+x
0ad4: da 40     movw  $40,ya
0ad6: 8f 02 0c  mov   $0c,#$02
0ad9: e8 00     mov   a,#$00
0adb: fd        mov   y,a
0adc: da 60     movw  $60,ya
0ade: da 62     movw  $62,ya
0ae0: 3f 6e 0e  call  $0e6e
0ae3: a2 48     set5  $48
0ae5: e4 1a     mov   a,$1a
0ae7: 48 ff     eor   a,#$ff
0ae9: 0e 46 00  tset1 $0046
0aec: 6f        ret

0aed: cd 0e     mov   x,#$0e
0aef: 8f 80 47  mov   $47,#$80
0af2: e8 a0     mov   a,#$a0
0af4: d5 01 03  mov   $0301+x,a
0af7: e8 0a     mov   a,#$0a
0af9: 3f f1 0c  call  $0cf1
0afc: d5 11 02  mov   $0211+x,a
0aff: d5 81 03  mov   $0381+x,a
0b02: d5 f0 02  mov   $02f0+x,a
0b05: d5 80 02  mov   $0280+x,a
0b08: d5 00 04  mov   $0400+x,a
0b0b: d4 b1     mov   $b1+x,a
0b0d: d4 c1     mov   $c1+x,a
0b0f: d5 90 03  mov   $0390+x,a
0b12: d5 91 03  mov   $0391+x,a
0b15: 1d        dec   x
0b16: 1d        dec   x
0b17: 4b 47     lsr   $47
0b19: d0 d7     bne   $0af2
0b1b: c4 5a     mov   $5a,a
0b1d: c4 68     mov   $68,a
0b1f: c4 54     mov   $54,a
0b21: c4 50     mov   $50,a
0b23: c4 42     mov   $42,a
0b25: c4 5f     mov   $5f,a
0b27: 8f ff 59  mov   $59,#$ff
0b2a: 8f 20 53  mov   $53,#$20
0b2d: 3f 83 13  call  $1383
0b30: 6f        ret

0b31: eb 08     mov   y,$08
0b33: e4 00     mov   a,$00
0b35: c4 08     mov   $08,a
0b37: 68 f0     cmp   a,#$f0
0b39: f0 9e     beq   $0ad9
0b3b: 68 f1     cmp   a,#$f1
0b3d: f0 0e     beq   $0b4d
0b3f: 68 ff     cmp   a,#$ff
0b41: d0 03     bne   $0b46
0b43: 5f c2 0a  jmp   $0ac2

0b46: 7e 00     cmp   y,$00
0b48: f0 03     beq   $0b4d
0b4a: 5f c7 0a  jmp   $0ac7

0b4d: e4 04     mov   a,$04
0b4f: f0 df     beq   $0b30
0b51: e4 0c     mov   a,$0c
0b53: f0 5d     beq   $0bb2
0b55: 6e 0c 95  dbnz  $0c,$0aed
0b58: 3f b4 0a  call  $0ab4
0b5b: d0 25     bne   $0b82
0b5d: fd        mov   y,a
0b5e: d0 03     bne   $0b63
0b60: 5f c7 0a  jmp   $0ac7

0b63: 68 80     cmp   a,#$80
0b65: f0 06     beq   $0b6d
0b67: 68 81     cmp   a,#$81
0b69: d0 06     bne   $0b71
0b6b: e8 00     mov   a,#$00
0b6d: c4 1b     mov   $1b,a
0b6f: 2f e7     bra   $0b58
0b71: 8b 42     dec   $42
0b73: 10 02     bpl   $0b77
0b75: c4 42     mov   $42,a
0b77: 3f b4 0a  call  $0ab4
0b7a: f8 42     mov   x,$42
0b7c: f0 da     beq   $0b58
0b7e: da 40     movw  $40,ya
0b80: 2f d6     bra   $0b58
0b82: da 16     movw  $16,ya
0b84: 8d 0f     mov   y,#$0f
0b86: f7 16     mov   a,($16)+y
0b88: d6 30 00  mov   $0030+y,a
0b8b: dc        dec   y
0b8c: 10 f8     bpl   $0b86
0b8e: cd 00     mov   x,#$00
0b90: 8f 01 47  mov   $47,#$01
0b93: f4 31     mov   a,$31+x
0b95: f0 0a     beq   $0ba1
0b97: f5 11 02  mov   a,$0211+x
0b9a: d0 05     bne   $0ba1
0b9c: e8 00     mov   a,#$00
0b9e: 3f 98 0c  call  $0c98
0ba1: e8 00     mov   a,#$00
0ba3: d4 80     mov   $80+x,a
0ba5: d4 90     mov   $90+x,a
0ba7: d4 91     mov   $91+x,a
0ba9: bc        inc   a
0baa: d4 70     mov   $70+x,a
0bac: 3d        inc   x
0bad: 3d        inc   x
0bae: 0b 47     asl   $47
0bb0: d0 e1     bne   $0b93
0bb2: cd 00     mov   x,#$00
0bb4: d8 5e     mov   $5e,x
0bb6: 8f 01 47  mov   $47,#$01
0bb9: d8 44     mov   $44,x
0bbb: f4 31     mov   a,$31+x
0bbd: f0 74     beq   $0c33
0bbf: 9b 70     dec   $70+x
0bc1: d0 66     bne   $0c29
0bc3: 3f 89 0c  call  $0c89
0bc6: d0 17     bne   $0bdf
0bc8: f4 80     mov   a,$80+x
0bca: f0 8c     beq   $0b58
0bcc: 3f ff 0d  call  $0dff
0bcf: 9b 80     dec   $80+x
0bd1: d0 f0     bne   $0bc3
0bd3: f5 30 02  mov   a,$0230+x
0bd6: d4 30     mov   $30+x,a
0bd8: f5 31 02  mov   a,$0231+x
0bdb: d4 31     mov   $31+x,a
0bdd: 2f e4     bra   $0bc3
0bdf: 30 20     bmi   $0c01
0be1: d5 00 02  mov   $0200+x,a
0be4: 3f 89 0c  call  $0c89
0be7: 30 18     bmi   $0c01
0be9: 2d        push  a
0bea: 9f        xcn   a
0beb: 28 07     and   a,#$07
0bed: fd        mov   y,a
0bee: f6 00 14  mov   a,$1400+y
0bf1: d5 01 02  mov   $0201+x,a
0bf4: ae        pop   a
0bf5: 28 0f     and   a,#$0f
0bf7: fd        mov   y,a
0bf8: f6 08 14  mov   a,$1408+y
0bfb: d5 10 02  mov   $0210+x,a
0bfe: 3f 89 0c  call  $0c89
0c01: 68 e0     cmp   a,#$e0
0c03: 90 07     bcc   $0c0c
0c05: 3f 77 0c  call  $0c77
0c08: b0 02     bcs   $0c0c
0c0a: 2f b7     bra   $0bc3
0c0c: f5 00 04  mov   a,$0400+x
0c0f: 04 1b     or    a,$1b
0c11: d0 04     bne   $0c17
0c13: dd        mov   a,y
0c14: 3f dd 08  call  $08dd
0c17: f5 00 02  mov   a,$0200+x
0c1a: d4 70     mov   $70+x,a
0c1c: fd        mov   y,a
0c1d: f5 01 02  mov   a,$0201+x
0c20: cf        mul   ya
0c21: dd        mov   a,y
0c22: d0 01     bne   $0c25
0c24: bc        inc   a
0c25: d4 71     mov   $71+x,a
0c27: 2f 07     bra   $0c30
0c29: e4 1b     mov   a,$1b
0c2b: d0 06     bne   $0c33
0c2d: 3f 36 11  call  $1136
0c30: 3f 62 0f  call  $0f62
0c33: 3d        inc   x
0c34: 3d        inc   x
0c35: 0b 47     asl   $47
0c37: d0 80     bne   $0bb9
0c39: e4 68     mov   a,$68
0c3b: f0 15     beq   $0c52
0c3d: ba 64     movw  ya,$64
0c3f: 7a 60     addw  ya,$60
0c41: da 60     movw  $60,ya
0c43: ba 66     movw  ya,$66
0c45: 7a 62     addw  ya,$62
0c47: 6e 68 06  dbnz  $68,$0c50
0c4a: ba 68     movw  ya,$68
0c4c: da 60     movw  $60,ya
0c4e: eb 6a     mov   y,$6a
0c50: da 62     movw  $62,ya
0c52: e4 5a     mov   a,$5a
0c54: f0 0e     beq   $0c64
0c56: ba 5c     movw  ya,$5c
0c58: 7a 58     addw  ya,$58
0c5a: 6e 5a 02  dbnz  $5a,$0c5f
0c5d: ba 5a     movw  ya,$5a
0c5f: da 58     movw  $58,ya
0c61: 8f ff 5e  mov   $5e,#$ff
0c64: cd 00     mov   x,#$00
0c66: 8f 01 47  mov   $47,#$01
0c69: f4 31     mov   a,$31+x
0c6b: f0 03     beq   $0c70
0c6d: 3f 1e 10  call  $101e
0c70: 3d        inc   x
0c71: 3d        inc   x
0c72: 0b 47     asl   $47
0c74: d0 f3     bne   $0c69
0c76: 6f        ret

0c77: 1c        asl   a
0c78: fd        mov   y,a
0c79: f6 02 0f  mov   a,$0f02+y
0c7c: 2d        push  a
0c7d: f6 01 0f  mov   a,$0f01+y
0c80: 2d        push  a
0c81: dd        mov   a,y
0c82: 5c        lsr   a
0c83: fd        mov   y,a
0c84: f6 9f 0f  mov   a,$0f9f+y
0c87: f0 08     beq   $0c91
0c89: e7 30     mov   a,($30+x)
0c8b: bb 30     inc   $30+x
0c8d: d0 02     bne   $0c91
0c8f: bb 31     inc   $31+x
0c91: fd        mov   y,a
0c92: 6f        ret

; vcmd e0 - set instrument
0c93: 3f 98 0c  call  $0c98
0c96: 60        clrc
0c97: 6f        ret

0c98: d5 11 02  mov   $0211+x,a
0c9b: fd        mov   y,a
0c9c: 10 06     bpl   $0ca4
0c9e: 80        setc
0c9f: a8 ca     sbc   a,#$ca
0ca1: 60        clrc
0ca2: 84 5f     adc   a,$5f
0ca4: 8d 06     mov   y,#$06
0ca6: cf        mul   ya
0ca7: da 14     movw  $14,ya
0ca9: 60        clrc
0caa: 98 00 14  adc   $14,#$00
0cad: 98 1c 15  adc   $15,#$1c
0cb0: e4 1a     mov   a,$1a
0cb2: 24 47     and   a,$47
0cb4: d0 3a     bne   $0cf0
0cb6: 4d        push  x
0cb7: 7d        mov   a,x
0cb8: 9f        xcn   a
0cb9: 5c        lsr   a
0cba: 08 04     or    a,#$04
0cbc: 5d        mov   x,a
0cbd: 8d 00     mov   y,#$00
0cbf: f7 14     mov   a,($14)+y
0cc1: 10 0e     bpl   $0cd1
0cc3: 28 1f     and   a,#$1f
0cc5: 38 20 48  and   $48,#$20
0cc8: 0e 48 00  tset1 $0048
0ccb: 09 47 49  or    ($49),($47)
0cce: dd        mov   a,y
0ccf: 2f 07     bra   $0cd8
0cd1: e4 47     mov   a,$47
0cd3: 4e 49 00  tclr1 $0049
0cd6: f7 14     mov   a,($14)+y
0cd8: c9 f2 00  mov   $00f2,x
0cdb: c5 f3 00  mov   $00f3,a
0cde: 3d        inc   x
0cdf: fc        inc   y
0ce0: ad 04     cmp   y,#$04
0ce2: d0 f2     bne   $0cd6
0ce4: ce        pop   x
0ce5: f7 14     mov   a,($14)+y
0ce7: d5 21 02  mov   $0221+x,a
0cea: fc        inc   y
0ceb: f7 14     mov   a,($14)+y
0ced: d5 20 02  mov   $0220+x,a
0cf0: 6f        ret

; vcmd e1 - pan
0cf1: ec a1 03  mov   y,$03a1
0cf4: d0 02     bne   $0cf8
0cf6: e8 0a     mov   a,#$0a
0cf8: d5 51 03  mov   $0351+x,a
0cfb: 28 1f     and   a,#$1f
0cfd: d5 31 03  mov   $0331+x,a
0d00: e8 00     mov   a,#$00
0d02: d5 30 03  mov   $0330+x,a
0d05: 60        clrc
0d06: 6f        ret

; vcmd e2 - pan fade
0d07: ec a1 03  mov   y,$03a1
0d0a: d0 02     bne   $0d0e
0d0c: e8 01     mov   a,#$01
0d0e: d4 91     mov   $91+x,a
0d10: 2d        push  a
0d11: 3f 89 0c  call  $0c89
0d14: ec a1 03  mov   y,$03a1
0d17: d0 02     bne   $0d1b
0d19: e8 0a     mov   a,#$0a
0d1b: d5 50 03  mov   $0350+x,a
0d1e: 80        setc
0d1f: b5 31 03  sbc   a,$0331+x
0d22: ce        pop   x
0d23: 3f a5 0f  call  $0fa5
0d26: d5 40 03  mov   $0340+x,a
0d29: dd        mov   a,y
0d2a: d5 41 03  mov   $0341+x,a
0d2d: 60        clrc
0d2e: 6f        ret

; vcmd e3 - pan
0d2f: d5 b0 02  mov   $02b0+x,a
0d32: 3f 89 0c  call  $0c89
0d35: d5 a1 02  mov   $02a1+x,a
0d38: 3f 89 0c  call  $0c89
; vcmd e4 - pan fade
0d3b: d4 b1     mov   $b1+x,a
0d3d: d5 c1 02  mov   $02c1+x,a
0d40: e8 00     mov   a,#$00
0d42: d5 b1 02  mov   $02b1+x,a
0d45: 60        clrc
0d46: 6f        ret

; vcmd f0 - vibrato fade
0d47: d5 b1 02  mov   $02b1+x,a
0d4a: 2d        push  a
0d4b: 8d 00     mov   y,#$00
0d4d: f4 b1     mov   a,$b1+x
0d4f: ce        pop   x
0d50: 9e        div   ya,x
0d51: f8 44     mov   x,$44
0d53: d5 c0 02  mov   $02c0+x,a
0d56: 60        clrc
0d57: 6f        ret

; vcmd e5 - master volume
0d58: e8 00     mov   a,#$00
0d5a: da 58     movw  $58,ya
0d5c: 60        clrc
0d5d: 6f        ret

; vcmd e6 - master volume fade
0d5e: c4 5b     mov   $5b,a
0d60: 80        setc
0d61: a4 59     sbc   a,$59
0d63: f8 5a     mov   x,$5a
0d65: 3f a5 0f  call  $0fa5
0d68: da 5c     movw  $5c,ya
0d6a: 60        clrc
0d6b: 6f        ret

; vcmd e7 - tempo
0d6c: e8 00     mov   a,#$00
0d6e: da 52     movw  $52,ya
0d70: 60        clrc
0d71: 6f        ret

; vcmd e8 - tempo fade
0d72: c4 54     mov   $54,a
0d74: 3f 89 0c  call  $0c89
0d77: c4 55     mov   $55,a
0d79: 80        setc
0d7a: a4 53     sbc   a,$53
0d7c: f8 54     mov   x,$54
0d7e: 3f a5 0f  call  $0fa5
0d81: da 56     movw  $56,ya
0d83: 60        clrc
0d84: 6f        ret

; vcmd e9 - global transpose
0d85: c4 50     mov   $50,a
0d87: 60        clrc
0d88: 6f        ret

; vcmd ea - per-voice transpose
0d89: d5 f0 02  mov   $02f0+x,a
0d8c: 60        clrc
0d8d: 6f        ret

; vcmd eb - tremolo on
0d8e: d5 e0 02  mov   $02e0+x,a
0d91: 3f 89 0c  call  $0c89
0d94: d5 d1 02  mov   $02d1+x,a
0d97: 3f 89 0c  call  $0c89
; vcmd ec - tremolo off
0d9a: d4 c1     mov   $c1+x,a
0d9c: 60        clrc
0d9d: 6f        ret

; vcmd f1 - pitch envelope (release)
0d9e: e8 01     mov   a,#$01
0da0: 2f 02     bra   $0da4
; vcmd f2 - pitch envelope (attack)
0da2: e8 00     mov   a,#$00
0da4: d5 90 02  mov   $0290+x,a
0da7: dd        mov   a,y
0da8: d5 81 02  mov   $0281+x,a
0dab: 3f 89 0c  call  $0c89
0dae: d5 80 02  mov   $0280+x,a
0db1: 3f 89 0c  call  $0c89
0db4: d5 91 02  mov   $0291+x,a
0db7: 60        clrc
0db8: 6f        ret

; vcmd f3 - pitch envelope off
0db9: d5 80 02  mov   $0280+x,a
0dbc: 60        clrc
0dbd: 6f        ret

; vcmd ed - volume
0dbe: d5 01 03  mov   $0301+x,a
0dc1: e8 00     mov   a,#$00
0dc3: d5 00 03  mov   $0300+x,a
0dc6: 60        clrc
0dc7: 6f        ret

; vcmd ee - volume fade
0dc8: d4 90     mov   $90+x,a
0dca: 2d        push  a
0dcb: 3f 89 0c  call  $0c89
0dce: d5 20 03  mov   $0320+x,a
0dd1: 80        setc
0dd2: b5 01 03  sbc   a,$0301+x
0dd5: ce        pop   x
0dd6: 3f a5 0f  call  $0fa5
0dd9: d5 10 03  mov   $0310+x,a
0ddc: dd        mov   a,y
0ddd: d5 11 03  mov   $0311+x,a
0de0: 60        clrc
0de1: 6f        ret

; vcmd f4 - tuning
0de2: d5 81 03  mov   $0381+x,a
0de5: 60        clrc
0de6: 6f        ret

; vcmd ef - call subroutine
0de7: d5 40 02  mov   $0240+x,a
0dea: 3f 89 0c  call  $0c89
0ded: d5 41 02  mov   $0241+x,a
0df0: 3f 89 0c  call  $0c89
0df3: d4 80     mov   $80+x,a
0df5: f4 30     mov   a,$30+x
0df7: d5 30 02  mov   $0230+x,a
0dfa: f4 31     mov   a,$31+x
0dfc: d5 31 02  mov   $0231+x,a
0dff: f5 40 02  mov   a,$0240+x
0e02: d4 30     mov   $30+x,a
0e04: f5 41 02  mov   a,$0241+x
0e07: d4 31     mov   $31+x,a
0e09: 60        clrc
0e0a: 6f        ret

; vcmd f5 - echo vbits/volume
0e0b: c4 4a     mov   $4a,a
0e0d: 3f 89 0c  call  $0c89
0e10: e8 00     mov   a,#$00
0e12: da 60     movw  $60,ya
0e14: 3f 89 0c  call  $0c89
0e17: e8 00     mov   a,#$00
0e19: da 62     movw  $62,ya
0e1b: 60        clrc
0e1c: 6f        ret

; vcmd f8 - echo volume fade
0e1d: c4 68     mov   $68,a
0e1f: 3f 89 0c  call  $0c89
0e22: c4 69     mov   $69,a
0e24: 80        setc
0e25: a4 61     sbc   a,$61
0e27: f8 68     mov   x,$68
0e29: 3f a5 0f  call  $0fa5
0e2c: da 64     movw  $64,ya
0e2e: 3f 89 0c  call  $0c89
0e31: c4 6a     mov   $6a,a
0e33: 80        setc
0e34: a4 63     sbc   a,$63
0e36: f8 68     mov   x,$68
0e38: 3f a5 0f  call  $0fa5
0e3b: da 66     movw  $66,ya
0e3d: 60        clrc
0e3e: 6f        ret

; vcmd f6 - disable echo
0e3f: da 60     movw  $60,ya
0e41: da 62     movw  $62,ya
0e43: a2 48     set5  $48
0e45: 60        clrc
0e46: 6f        ret

; vcmd fe - echo off
0e47: b2 48     clr5  $48
0e49: 60        clrc
0e4a: 6f        ret

; vcmd f7 - set echo params
0e4b: 3f 6e 0e  call  $0e6e
0e4e: 3f 89 0c  call  $0c89
0e51: c4 4e     mov   $4e,a
0e53: 3f 89 0c  call  $0c89
0e56: 8d 08     mov   y,#$08
0e58: cf        mul   ya
0e59: 5d        mov   x,a
0e5a: 8d 0f     mov   y,#$0f
0e5c: f5 e0 12  mov   a,$12e0+x
0e5f: 3f d2 09  call  $09d2
0e62: 3d        inc   x
0e63: dd        mov   a,y
0e64: 60        clrc
0e65: 88 10     adc   a,#$10
0e67: fd        mov   y,a
0e68: 10 f2     bpl   $0e5c
0e6a: f8 44     mov   x,$44
0e6c: 60        clrc
0e6d: 6f        ret

0e6e: c4 4d     mov   $4d,a
0e70: 8d 7d     mov   y,#$7d
0e72: cc f2 00  mov   $00f2,y
0e75: e5 f3 00  mov   a,$00f3
0e78: 64 4d     cmp   a,$4d
0e7a: f0 2b     beq   $0ea7
0e7c: 28 0f     and   a,#$0f
0e7e: 48 ff     eor   a,#$ff
0e80: f3 4c 03  bbc7  $4c,$0e86
0e83: 60        clrc
0e84: 84 4c     adc   a,$4c
0e86: c4 4c     mov   $4c,a
0e88: 8d 04     mov   y,#$04
0e8a: f6 ff 12  mov   a,$12ff+y
0e8d: c5 f2 00  mov   $00f2,a
0e90: e8 00     mov   a,#$00
0e92: c5 f3 00  mov   $00f3,a
0e95: fe f3     dbnz  y,$0e8a
0e97: e4 48     mov   a,$48
0e99: 08 20     or    a,#$20
0e9b: 8d 6c     mov   y,#$6c
0e9d: 3f d2 09  call  $09d2
0ea0: e4 4d     mov   a,$4d
0ea2: 8d 7d     mov   y,#$7d
0ea4: 3f d2 09  call  $09d2
0ea7: 1c        asl   a
0ea8: 1c        asl   a
0ea9: 1c        asl   a
0eaa: 48 ff     eor   a,#$ff
0eac: 80        setc
0ead: 88 ff     adc   a,#$ff
0eaf: 8d 6d     mov   y,#$6d
0eb1: 5f d2 09  jmp   $09d2

; vcmd fa - set perc patch base
0eb4: c4 5f     mov   $5f,a
0eb6: 60        clrc
0eb7: 6f        ret

; vcmd fb
0eb8: d5 90 03  mov   $0390+x,a
0ebb: 3f 89 0c  call  $0c89
0ebe: d5 91 03  mov   $0391+x,a
0ec1: e5 a1 03  mov   a,$03a1
0ec4: 68 02     cmp   a,#$02
0ec6: f0 08     beq   $0ed0
0ec8: e8 00     mov   a,#$00
0eca: d5 90 03  mov   $0390+x,a
0ecd: d5 91 03  mov   $0391+x,a
0ed0: 60        clrc
0ed1: 6f        ret

; vcmd fc - decrement position
0ed2: e8 00     mov   a,#$00
0ed4: d5 31 02  mov   $0231+x,a
0ed7: d5 41 02  mov   $0241+x,a
0eda: d4 80     mov   $80+x,a
0edc: f4 30     mov   a,$30+x
0ede: 9b 30     dec   $30+x
0ee0: 80        setc
0ee1: a8 01     sbc   a,#$01
0ee3: b0 02     bcs   $0ee7
0ee5: 9b 31     dec   $31+x
0ee7: 80        setc
0ee8: 6f        ret

; vcmd fd - set instrument parameters
0ee9: fd        mov   y,a
0eea: e4 1a     mov   a,$1a
0eec: 24 47     and   a,$47
0eee: d0 3a     bne   $0f2a
0ef0: e8 15     mov   a,#$15
0ef2: d5 11 02  mov   $0211+x,a
0ef5: 8f ca 14  mov   $14,#$ca
0ef8: 8f 13 15  mov   $15,#$13
0efb: 4d        push  x
0efc: 7d        mov   a,x
0efd: 9f        xcn   a
0efe: 5c        lsr   a
0eff: 08 04     or    a,#$04
0f01: 5d        mov   x,a
0f02: dd        mov   a,y
0f03: 28 1f     and   a,#$1f
0f05: 38 20 48  and   $48,#$20
0f08: 0e 48 00  tset1 $0048
0f0b: 09 47 49  or    ($49),($47)
0f0e: 8d 00     mov   y,#$00
0f10: f7 14     mov   a,($14)+y
0f12: c9 f2 00  mov   $00f2,x
0f15: c5 f3 00  mov   $00f3,a
0f18: 3d        inc   x
0f19: fc        inc   y
0f1a: ad 04     cmp   y,#$04
0f1c: d0 f2     bne   $0f10
0f1e: ce        pop   x
0f1f: f7 14     mov   a,($14)+y
0f21: d5 21 02  mov   $0221+x,a
0f24: fc        inc   y
0f25: f7 14     mov   a,($14)+y
0f27: d5 20 02  mov   $0220+x,a
0f2a: 60        clrc
0f2b: 6f        ret

0f2c: 4d        push  x
0f2d: 2d        push  a
0f2e: f5 11 02  mov   a,$0211+x
0f31: 8d 06     mov   y,#$06
0f33: cf        mul   ya
0f34: da 14     movw  $14,ya
0f36: 60        clrc
0f37: 98 00 14  adc   $14,#$00
0f3a: 98 1c 15  adc   $15,#$1c
0f3d: 7d        mov   a,x
0f3e: 9f        xcn   a
0f3f: 5c        lsr   a
0f40: 08 04     or    a,#$04
0f42: 5d        mov   x,a
0f43: 3d        inc   x
0f44: ae        pop   a
0f45: c9 f2 00  mov   $00f2,x
0f48: c5 f3 00  mov   $00f3,a
0f4b: 3d        inc   x
0f4c: 3f 89 0c  call  $0c89
0f4f: c9 f2 00  mov   $00f2,x
0f52: c5 f3 00  mov   $00f3,a
0f55: 3d        inc   x
0f56: 3f 89 0c  call  $0c89
0f59: c9 f2 00  mov   $00f2,x
0f5c: c5 f3 00  mov   $00f3,a
0f5f: ce        pop   x
0f60: 60        clrc
0f61: 6f        ret

0f62: f4 a0     mov   a,$a0+x
0f64: d0 33     bne   $0f99
0f66: e7 30     mov   a,($30+x)
0f68: 68 f9     cmp   a,#$f9
0f6a: d0 2d     bne   $0f99
0f6c: 3f 8b 0c  call  $0c8b
0f6f: 3f 89 0c  call  $0c89
; vcmd f9 - pitch slide
0f72: d4 a1     mov   $a1+x,a
0f74: 3f 89 0c  call  $0c89
0f77: d4 a0     mov   $a0+x,a
0f79: 3f 89 0c  call  $0c89
0f7c: 60        clrc
0f7d: 84 50     adc   a,$50
0f7f: 95 f0 02  adc   a,$02f0+x
0f82: 28 7f     and   a,#$7f
0f84: d5 80 03  mov   $0380+x,a
0f87: 80        setc
0f88: b5 61 03  sbc   a,$0361+x
0f8b: fb a0     mov   y,$a0+x
0f8d: 6d        push  y
0f8e: ce        pop   x
0f8f: 3f a5 0f  call  $0fa5
0f92: d5 70 03  mov   $0370+x,a
0f95: dd        mov   a,y
0f96: d5 71 03  mov   $0371+x,a
0f99: 6f        ret

0f9a: f5 61 03  mov   a,$0361+x
0f9d: c4 11     mov   $11,a
0f9f: f5 60 03  mov   a,$0360+x
0fa2: c4 10     mov   $10,a
0fa4: 6f        ret

0fa5: ed        notc
0fa6: 6b 12     ror   $12
0fa8: 10 03     bpl   $0fad
0faa: 48 ff     eor   a,#$ff
0fac: bc        inc   a
0fad: 8d 00     mov   y,#$00
0faf: 9e        div   ya,x
0fb0: 2d        push  a
0fb1: e8 00     mov   a,#$00
0fb3: 9e        div   ya,x
0fb4: ee        pop   y
0fb5: f8 44     mov   x,$44
0fb7: f3 12 06  bbc7  $12,$0fc0
0fba: da 14     movw  $14,ya
0fbc: ba 0e     movw  ya,$0e
0fbe: 9a 14     subw  ya,$14
0fc0: 6f        ret

; vcmd dispatch table
0fc1: dw $0c93 ; e0 - set instrument
0fc3: dw $0cf1 ; e1 - pan
0fc5: dw $0d07 ; e2 - pan fade
0fc7: dw $0d2f ; e3 - vibrato on
0fc9: dw $0d3b ; e4 - vibrato off
0fcb: dw $0d58 ; e5 - master volume
0fcd: dw $0d5e ; e6 - master volume fade
0fcf: dw $0d6c ; e7 - tempo
0fd1: dw $0d72 ; e8 - tempo fade
0fd3: dw $0d85 ; e9 - global transpose
0fd5: dw $0d89 ; ea - per-voice transpose
0fd7: dw $0d8e ; eb - tremolo on
0fd9: dw $0d9a ; ec - tremolo off
0fdb: dw $0dbe ; ed - volume
0fdd: dw $0dc8 ; ee - volume fade
0fdf: dw $0de7 ; ef - call subroutine
0fe1: dw $0d47 ; f0 - vibrato fade
0fe3: dw $0d9e ; f1 - pitch envelope (release)
0fe5: dw $0da2 ; f2 - pitch envelope (attack)
0fe7: dw $0db9 ; f3 - pitch envelope off
0fe9: dw $0de2 ; f4 - tuning
0feb: dw $0e0b ; f5 - echo vbits/volume
0fed: dw $0e3f ; f6 - disable echo
0fef: dw $0e4b ; f7 - set echo params
0ff1: dw $0e1d ; f8 - echo volume fade
0ff3: dw $0f72 ; f9 - pitch slide
0ff5: dw $0eb4 ; fa - set perc patch base
0ff7: dw $0eb8 ; fb
0ff9: dw $0ed2 ; fc - decrement position
0ffb: dw $0ee9 ; fd - set instrument parameters
0ffd: dw $0e47 ; fe - echo off

; vcmd lengths
0fff: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
1007: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
100f: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
1017: db $03,$03,$01,$02,$00,$01,$00	 ; f8-fe

101e: f4 90     mov   a,$90+x
1020: f0 24     beq   $1046
1022: 09 47 5e  or    ($5e),($47)
1025: 9b 90     dec   $90+x
1027: d0 0a     bne   $1033
1029: e8 00     mov   a,#$00
102b: d5 00 03  mov   $0300+x,a
102e: f5 20 03  mov   a,$0320+x
1031: 2f 10     bra   $1043
1033: 60        clrc
1034: f5 00 03  mov   a,$0300+x
1037: 95 10 03  adc   a,$0310+x
103a: d5 00 03  mov   $0300+x,a
103d: f5 01 03  mov   a,$0301+x
1040: 95 11 03  adc   a,$0311+x
1043: d5 01 03  mov   $0301+x,a
1046: fb c1     mov   y,$c1+x
1048: f0 23     beq   $106d
104a: f5 e0 02  mov   a,$02e0+x
104d: de c0 1b  cbne  $c0+x,$106b
1050: 09 47 5e  or    ($5e),($47)
1053: f5 d0 02  mov   a,$02d0+x
1056: 10 07     bpl   $105f
1058: fc        inc   y
1059: d0 04     bne   $105f
105b: e8 80     mov   a,#$80
105d: 2f 04     bra   $1063
105f: 60        clrc
1060: 95 d1 02  adc   a,$02d1+x
1063: d5 d0 02  mov   $02d0+x,a
1066: 3f ae 12  call  $12ae
1069: 2f 07     bra   $1072
106b: bb c0     inc   $c0+x
106d: e8 ff     mov   a,#$ff
106f: 3f b9 12  call  $12b9
1072: f4 91     mov   a,$91+x
1074: f0 24     beq   $109a
1076: 09 47 5e  or    ($5e),($47)
1079: 9b 91     dec   $91+x
107b: d0 0a     bne   $1087
107d: e8 00     mov   a,#$00
107f: d5 30 03  mov   $0330+x,a
1082: f5 50 03  mov   a,$0350+x
1085: 2f 10     bra   $1097
1087: 60        clrc
1088: f5 30 03  mov   a,$0330+x
108b: 95 40 03  adc   a,$0340+x
108e: d5 30 03  mov   $0330+x,a
1091: f5 31 03  mov   a,$0331+x
1094: 95 41 03  adc   a,$0341+x
1097: d5 31 03  mov   $0331+x,a
109a: e4 47     mov   a,$47
109c: 24 5e     and   a,$5e
109e: d0 03     bne   $10a3
10a0: 5f 35 11  jmp   $1135

10a3: f5 31 03  mov   a,$0331+x
10a6: fd        mov   y,a
10a7: f5 30 03  mov   a,$0330+x
10aa: da 10     movw  $10,ya
10ac: 7d        mov   a,x
10ad: 9f        xcn   a
10ae: 5c        lsr   a
10af: c4 12     mov   $12,a
10b1: eb 11     mov   y,$11
10b3: f6 cc 12  mov   a,$12cc+y
10b6: 80        setc
10b7: b6 cb 12  sbc   a,$12cb+y
10ba: eb 10     mov   y,$10
10bc: cf        mul   ya
10bd: dd        mov   a,y
10be: eb 11     mov   y,$11
10c0: 60        clrc
10c1: 96 cb 12  adc   a,$12cb+y
10c4: fd        mov   y,a
10c5: f5 21 03  mov   a,$0321+x
10c8: cf        mul   ya
10c9: f5 51 03  mov   a,$0351+x
10cc: 1c        asl   a
10cd: 13 12 01  bbc0  $12,$10d1
10d0: 1c        asl   a
10d1: dd        mov   a,y
10d2: 90 00     bcc   $10d4
10d4: 2d        push  a
10d5: f5 90 03  mov   a,$0390+x
10d8: 80        setc
10d9: a8 01     sbc   a,#$01
10db: ae        pop   a
10dc: b0 03     bcs   $10e1
10de: 48 ff     eor   a,#$ff
10e0: bc        inc   a
10e1: eb 12     mov   y,$12
10e3: 3f ca 09  call  $09ca
10e6: 8d 14     mov   y,#$14
10e8: e8 00     mov   a,#$00
10ea: 9a 10     subw  ya,$10
10ec: da 10     movw  $10,ya
10ee: ab 12     inc   $12
10f0: eb 11     mov   y,$11
10f2: f6 cc 12  mov   a,$12cc+y
10f5: 80        setc
10f6: b6 cb 12  sbc   a,$12cb+y
10f9: eb 10     mov   y,$10
10fb: cf        mul   ya
10fc: dd        mov   a,y
10fd: eb 11     mov   y,$11
10ff: 60        clrc
1100: 96 cb 12  adc   a,$12cb+y
1103: fd        mov   y,a
1104: f5 21 03  mov   a,$0321+x
1107: cf        mul   ya
1108: f5 51 03  mov   a,$0351+x
110b: 1c        asl   a
110c: 13 12 01  bbc0  $12,$1110
110f: 1c        asl   a
1110: dd        mov   a,y
1111: 90 00     bcc   $1113
1113: 2d        push  a
1114: f5 91 03  mov   a,$0391+x
1117: 80        setc
1118: a8 01     sbc   a,#$01
111a: ae        pop   a
111b: b0 03     bcs   $1120
111d: 48 ff     eor   a,#$ff
111f: bc        inc   a
1120: eb 12     mov   y,$12
1122: 3f ca 09  call  $09ca
1125: 8d 14     mov   y,#$14
1127: e8 00     mov   a,#$00
1129: 9a 10     subw  ya,$10
112b: da 10     movw  $10,ya
112d: ab 12     inc   $12
112f: 23 12 03  bbs1  $12,$1135
1132: 5f b1 10  jmp   $10b1

1135: 6f        ret

1136: f4 71     mov   a,$71+x
1138: f0 65     beq   $119f
113a: 9b 71     dec   $71+x
113c: f0 05     beq   $1143
113e: e8 02     mov   a,#$02
1140: de 70 5c  cbne  $70+x,$119f
1143: f4 80     mov   a,$80+x
1145: c4 17     mov   $17,a
1147: f4 30     mov   a,$30+x
1149: fb 31     mov   y,$31+x
114b: da 14     movw  $14,ya
114d: 8d 00     mov   y,#$00
114f: f7 14     mov   a,($14)+y
1151: f0 1e     beq   $1171
1153: 30 07     bmi   $115c
1155: fc        inc   y
1156: 30 40     bmi   $1198
1158: f7 14     mov   a,($14)+y
115a: 10 f9     bpl   $1155
115c: 68 c8     cmp   a,#$c8
115e: f0 3f     beq   $119f
1160: 68 ef     cmp   a,#$ef
1162: f0 29     beq   $118d
1164: 68 e0     cmp   a,#$e0
1166: 90 30     bcc   $1198
1168: 6d        push  y
1169: fd        mov   y,a
116a: ae        pop   a
116b: 96 1f 0f  adc   a,$0f1f+y
116e: fd        mov   y,a
116f: 2f de     bra   $114f
1171: e4 17     mov   a,$17
1173: f0 23     beq   $1198
1175: 8b 17     dec   $17
1177: d0 0a     bne   $1183
1179: f5 31 02  mov   a,$0231+x
117c: 2d        push  a
117d: f5 30 02  mov   a,$0230+x
1180: ee        pop   y
1181: 2f c8     bra   $114b
1183: f5 41 02  mov   a,$0241+x
1186: 2d        push  a
1187: f5 40 02  mov   a,$0240+x
118a: ee        pop   y
118b: 2f be     bra   $114b
118d: fc        inc   y
118e: f7 14     mov   a,($14)+y
1190: 2d        push  a
1191: fc        inc   y
1192: f7 14     mov   a,($14)+y
1194: fd        mov   y,a
1195: ae        pop   a
1196: 2f b3     bra   $114b
1198: e4 47     mov   a,$47
119a: 8d 5c     mov   y,#$5c
119c: 3f ca 09  call  $09ca
119f: f2 13     clr7  $13
11a1: f4 a0     mov   a,$a0+x
11a3: f0 2c     beq   $11d1
11a5: f4 a1     mov   a,$a1+x
11a7: f0 04     beq   $11ad
11a9: 9b a1     dec   $a1+x
11ab: 2f 24     bra   $11d1
11ad: e2 13     set7  $13
11af: 9b a0     dec   $a0+x
11b1: d0 0b     bne   $11be
11b3: f5 81 03  mov   a,$0381+x
11b6: d5 60 03  mov   $0360+x,a
11b9: f5 80 03  mov   a,$0380+x
11bc: 2f 10     bra   $11ce
11be: 60        clrc
11bf: f5 60 03  mov   a,$0360+x
11c2: 95 70 03  adc   a,$0370+x
11c5: d5 60 03  mov   $0360+x,a
11c8: f5 61 03  mov   a,$0361+x
11cb: 95 71 03  adc   a,$0371+x
11ce: d5 61 03  mov   $0361+x,a
11d1: 3f 9a 0f  call  $0f9a
11d4: f4 b1     mov   a,$b1+x
11d6: f0 4c     beq   $1224
11d8: f5 b0 02  mov   a,$02b0+x
11db: de b0 44  cbne  $b0+x,$1222
11de: f5 00 01  mov   a,$0100+x
11e1: 75 b1 02  cmp   a,$02b1+x
11e4: d0 05     bne   $11eb
11e6: f5 c1 02  mov   a,$02c1+x
11e9: 2f 0d     bra   $11f8
11eb: 40        setp
11ec: bb 00     inc   $00+x
11ee: 20        clrp
11ef: fd        mov   y,a
11f0: f0 02     beq   $11f4
11f2: f4 b1     mov   a,$b1+x
11f4: 60        clrc
11f5: 95 c0 02  adc   a,$02c0+x
11f8: d4 b1     mov   $b1+x,a
11fa: f5 a0 02  mov   a,$02a0+x
11fd: 60        clrc
11fe: 95 a1 02  adc   a,$02a1+x
1201: d5 a0 02  mov   $02a0+x,a
1204: c4 12     mov   $12,a
1206: 1c        asl   a
1207: 1c        asl   a
1208: 90 02     bcc   $120c
120a: 48 ff     eor   a,#$ff
120c: fd        mov   y,a
120d: f4 b1     mov   a,$b1+x
120f: 68 f1     cmp   a,#$f1
1211: 90 05     bcc   $1218
1213: 28 0f     and   a,#$0f
1215: cf        mul   ya
1216: 2f 04     bra   $121c
1218: cf        mul   ya
1219: dd        mov   a,y
121a: 8d 00     mov   y,#$00
121c: 3f 99 12  call  $1299
121f: 5f 47 09  jmp   $0947

1222: bb b0     inc   $b0+x
1224: e3 13 f8  bbs7  $13,$121f
1227: 6f        ret

1228: f2 13     clr7  $13
122a: f4 c1     mov   a,$c1+x
122c: f0 09     beq   $1237
122e: f5 e0 02  mov   a,$02e0+x
1231: de c0 03  cbne  $c0+x,$1237
1234: 3f a1 12  call  $12a1
1237: f5 31 03  mov   a,$0331+x
123a: fd        mov   y,a
123b: f5 30 03  mov   a,$0330+x
123e: da 10     movw  $10,ya
1240: f4 91     mov   a,$91+x
1242: f0 0a     beq   $124e
1244: f5 41 03  mov   a,$0341+x
1247: fd        mov   y,a
1248: f5 40 03  mov   a,$0340+x
124b: 3f 83 12  call  $1283
124e: f3 13 03  bbc7  $13,$1254
1251: 3f ac 10  call  $10ac
1254: f2 13     clr7  $13
1256: 3f 9a 0f  call  $0f9a
1259: f4 a0     mov   a,$a0+x
125b: f0 0e     beq   $126b
125d: f4 a1     mov   a,$a1+x
125f: d0 0a     bne   $126b
1261: f5 71 03  mov   a,$0371+x
1264: fd        mov   y,a
1265: f5 70 03  mov   a,$0370+x
1268: 3f 83 12  call  $1283
126b: f4 b1     mov   a,$b1+x
126d: f0 b5     beq   $1224
126f: f5 b0 02  mov   a,$02b0+x
1272: de b0 af  cbne  $b0+x,$1224
1275: eb 51     mov   y,$51
1277: f5 a1 02  mov   a,$02a1+x
127a: cf        mul   ya
127b: dd        mov   a,y
127c: 60        clrc
127d: 95 a0 02  adc   a,$02a0+x
1280: 5f 04 12  jmp   $1204

1283: e2 13     set7  $13
1285: cb 12     mov   $12,y
1287: 3f b7 0f  call  $0fb7
128a: 6d        push  y
128b: eb 51     mov   y,$51
128d: cf        mul   ya
128e: cb 14     mov   $14,y
1290: 8f 00 15  mov   $15,#$00
1293: eb 51     mov   y,$51
1295: ae        pop   a
1296: cf        mul   ya
1297: 7a 14     addw  ya,$14
1299: 3f b7 0f  call  $0fb7
129c: 7a 10     addw  ya,$10
129e: da 10     movw  $10,ya
12a0: 6f        ret

12a1: e2 13     set7  $13
12a3: eb 51     mov   y,$51
12a5: f5 d1 02  mov   a,$02d1+x
12a8: cf        mul   ya
12a9: dd        mov   a,y
12aa: 60        clrc
12ab: 95 d0 02  adc   a,$02d0+x
12ae: 1c        asl   a
12af: 90 02     bcc   $12b3
12b1: 48 ff     eor   a,#$ff
12b3: fb c1     mov   y,$c1+x
12b5: cf        mul   ya
12b6: dd        mov   a,y
12b7: 48 ff     eor   a,#$ff
12b9: eb 59     mov   y,$59
12bb: cf        mul   ya
12bc: f5 10 02  mov   a,$0210+x
12bf: cf        mul   ya
12c0: f5 01 03  mov   a,$0301+x
12c3: cf        mul   ya
12c4: dd        mov   a,y
12c5: cf        mul   ya
12c6: dd        mov   a,y
12c7: d5 21 03  mov   $0321+x,a
12ca: 6f        ret

; pan table
12cb: db $00,$01,$03,$07,$0d,$15,$1e,$29
12d3: db $34,$42,$51,$5e,$67,$6e,$73,$77
12dd: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
12e0: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
12e8: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
12f0: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
12f8: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
1300: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
130a: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1314: dw $085f
1316: dw $08de
1318: dw $0965
131a: dw $09f4
131c: dw $0a8c
131e: dw $0b2c
1320: dw $0bd6
1322: dw $0c8b
1324: dw $0d4a
1326: dw $0e14
1328: dw $0eea
132a: dw $0fcd
132c: dw $10be

132e: e8 aa     mov   a,#$aa
1330: c5 f4 00  mov   $00f4,a
1333: e8 bb     mov   a,#$bb
1335: c5 f5 00  mov   $00f5,a
1338: e5 f4 00  mov   a,$00f4
133b: 68 cc     cmp   a,#$cc
133d: d0 f9     bne   $1338
133f: 2f 20     bra   $1361
1341: ec f4 00  mov   y,$00f4
1344: d0 fb     bne   $1341
1346: 5e f4 00  cmp   y,$00f4
1349: d0 0f     bne   $135a
134b: e5 f5 00  mov   a,$00f5
134e: cc f4 00  mov   $00f4,y
1351: d7 14     mov   ($14)+y,a
1353: fc        inc   y
1354: d0 f0     bne   $1346
1356: ab 15     inc   $15
1358: 2f ec     bra   $1346
135a: 10 ea     bpl   $1346
135c: 5e f4 00  cmp   y,$00f4
135f: 10 e5     bpl   $1346
1361: e5 f6 00  mov   a,$00f6
1364: ec f7 00  mov   y,$00f7
1367: da 14     movw  $14,ya
1369: ec f4 00  mov   y,$00f4
136c: e5 f5 00  mov   a,$00f5
136f: cc f4 00  mov   $00f4,y
1372: d0 cd     bne   $1341
1374: cd 31     mov   x,#$31
1376: c9 f1 00  mov   $00f1,x
1379: e8 1e     mov   a,#$1e
137b: 8d 5d     mov   y,#$5d
137d: 3f d2 09  call  $09d2
1380: 8f ff 59  mov   $59,#$ff
1383: e8 00     mov   a,#$00
1385: fd        mov   y,a
1386: da 60     movw  $60,ya
1388: da 62     movw  $62,ya
138a: a2 48     set5  $48
138c: e4 1a     mov   a,$1a
138e: 48 ff     eor   a,#$ff
1390: 0e 46 00  tset1 $0046
1393: 6f        ret