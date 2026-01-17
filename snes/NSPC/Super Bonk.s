0700: 20        clrp
0701: cd cf     mov   x,#$cf
0703: bd        mov   sp,x
0704: e8 00     mov   a,#$00
0706: 5d        mov   x,a
0707: af        mov   (x)+,a
0708: c8 e9     cmp   x,#$e9
070a: d0 fb     bne   $0707
070c: e8 00     mov   a,#$00
070e: 5d        mov   x,a
070f: d5 00 01  mov   $0100+x,a
0712: 3d        inc   x
0713: c8 c1     cmp   x,#$c1
0715: d0 f8     bne   $070f
0717: e8 ff     mov   a,#$ff
0719: 3f 09 14  call  $1409
071c: e8 7f     mov   a,#$7f
071e: 65 b0 05  cmp   a,$05b0
0721: f0 03     beq   $0726
0723: c5 b0 05  mov   $05b0,a
0726: 3f db 0b  call  $0bdb
0729: e8 3a     mov   a,#$3a
072b: 8d 5d     mov   y,#$5d
072d: 3f e9 13  call  $13e9
0730: 8f 18 2d  mov   $2d,#$18
0733: 8f 00 11  mov   $11,#$00
0736: e8 f0     mov   a,#$f0
0738: c5 f1 00  mov   $00f1,a
073b: e8 10     mov   a,#$10
073d: c5 fa 00  mov   $00fa,a
0740: e8 01     mov   a,#$01
0742: c4 f1     mov   $f1,a
0744: 8f 00 34  mov   $34,#$00
0747: 8f 00 35  mov   $35,#$00
074a: e4 33     mov   a,$33
074c: 3f 09 14  call  $1409
074f: e4 2d     mov   a,$2d
0751: f0 dd     beq   $0730
0753: e4 2f     mov   a,$2f
0755: f0 05     beq   $075c
0757: e8 00     mov   a,#$00
0759: 3f 0e 14  call  $140e
075c: e4 35     mov   a,$35
075e: 3f 18 14  call  $1418
0761: e4 32     mov   a,$32
0763: 3f 04 14  call  $1404
0766: 8d 00     mov   y,#$00
0768: cb 32     mov   $32,y
076a: cb 33     mov   $33,y
076c: ec fd 00  mov   y,$00fd
076f: f0 fb     beq   $076c
0771: cb 12     mov   $12,y
0773: e8 20     mov   a,#$20
0775: cf        mul   ya
0776: 60        clrc
0777: 84 11     adc   a,$11
0779: c4 11     mov   $11,a
077b: 90 44     bcc   $07c1
077d: 8f 00 1b  mov   $1b,#$00
0780: cd 02     mov   x,#$02
0782: 8f 04 20  mov   $20,#$04
0785: 8f 08 21  mov   $21,#$08
0788: 3f 93 0c  call  $0c93
078b: 3f 3e 08  call  $083e
078e: 8f 00 1b  mov   $1b,#$00
0791: cd 01     mov   x,#$01
0793: 8f 03 20  mov   $20,#$03
0796: 8f 04 21  mov   $21,#$04
0799: 3f 93 0c  call  $0c93
079c: 3f 3e 08  call  $083e
079f: 8f 00 1b  mov   $1b,#$00
07a2: cd 02     mov   x,#$02
07a4: 8f 02 20  mov   $20,#$02
07a7: 8f 02 21  mov   $21,#$02
07aa: 3f 93 0c  call  $0c93
07ad: 3f 3e 08  call  $083e
07b0: 8f 00 1b  mov   $1b,#$00
07b3: cd 01     mov   x,#$01
07b5: 8f 01 20  mov   $20,#$01
07b8: 8f 01 21  mov   $21,#$01
07bb: 3f 93 0c  call  $0c93
07be: 3f 3e 08  call  $083e
07c1: e5 2d 00  mov   a,$002d
07c4: ec 12 00  mov   y,$0012
07c7: cf        mul   ya
07c8: 60        clrc
07c9: 84 10     adc   a,$10
07cb: c4 10     mov   $10,a
07cd: 90 63     bcc   $0832
07cf: 3f c9 0c  call  $0cc9
07d2: cd 00     mov   x,#$00
07d4: 3f 93 0c  call  $0c93
07d7: cd 03     mov   x,#$03
07d9: 3f 93 0c  call  $0c93
07dc: 64 07     cmp   a,$07
07de: f0 4f     beq   $082f
07e0: 68 e0     cmp   a,#$e0
07e2: f0 12     beq   $07f6
07e4: 68 e1     cmp   a,#$e1
07e6: f0 14     beq   $07fc
07e8: 68 e2     cmp   a,#$e2
07ea: f0 16     beq   $0802
07ec: 68 f0     cmp   a,#$f0
07ee: d0 18     bne   $0808
07f0: 3f 6d 0a  call  $0a6d
07f3: 5f 2f 08  jmp   $082f

07f6: 3f 7e 0a  call  $0a7e
07f9: 5f 2f 08  jmp   $082f

07fc: 3f 84 0a  call  $0a84
07ff: 5f 2f 08  jmp   $082f

0802: 3f 8a 0a  call  $0a8a
0805: 5f 2f 08  jmp   $082f

0808: 48 7f     eor   a,#$7f
080a: c4 f7     mov   $f7,a
080c: c5 b0 05  mov   $05b0,a
080f: 3f f0 13  call  $13f0
0812: e5 b0 05  mov   a,$05b0
0815: 68 00     cmp   a,#$00
0817: d0 0c     bne   $0825
0819: e8 00     mov   a,#$00
081b: 3f fa 13  call  $13fa
081e: e8 00     mov   a,#$00
0820: 3f ff 13  call  $13ff
0823: 2f 0a     bra   $082f
0825: e4 30     mov   a,$30
0827: 3f fa 13  call  $13fa
082a: e4 31     mov   a,$31
082c: 3f ff 13  call  $13ff
082f: fa 03 07  mov   ($07),($03)
0832: e4 00     mov   a,$00
0834: f0 05     beq   $083b
0836: cd 00     mov   x,#$00
0838: 8f 01 13  mov   $13,#$01
083b: 5f 4a 07  jmp   $074a

083e: d8 22     mov   $22,x
0840: fb 00     mov   y,$00+x
0842: f0 3a     beq   $087e
0844: dd        mov   a,y
0845: 08 80     or    a,#$80
0847: 48 80     eor   a,#$80
0849: fd        mov   y,a
084a: f4 08     mov   a,$08+x
084c: 74 00     cmp   a,$00+x
084e: f0 2e     beq   $087e
0850: f6 61 12  mov   a,$1261+y
0853: 10 0c     bpl   $0861
0855: f8 20     mov   x,$20
0857: 2d        push  a
0858: e8 ff     mov   a,#$ff
085a: d4 15     mov   $15+x,a
085c: c4 1b     mov   $1b,a
085e: f8 22     mov   x,$22
0860: ae        pop   a
0861: 08 f0     or    a,#$f0
0863: 48 f0     eor   a,#$f0
0865: d4 a4     mov   $a4+x,a
0867: 74 a6     cmp   a,$a6+x
0869: f0 06     beq   $0871
086b: 80        setc
086c: b4 a6     sbc   a,$a6+x
086e: 90 0b     bcc   $087b
0870: 60        clrc
0871: f4 a4     mov   a,$a4+x
0873: d4 a6     mov   $a6+x,a
0875: e8 01     mov   a,#$01
0877: d4 a8     mov   $a8+x,a
0879: 2f 03     bra   $087e
087b: 5f fb 08  jmp   $08fb

087e: fb 04     mov   y,$04+x
0880: f4 00     mov   a,$00+x
0882: d4 04     mov   $04+x,a
0884: f0 f5     beq   $087b
0886: dd        mov   a,y
0887: 74 00     cmp   a,$00+x
0889: d0 02     bne   $088d
088b: 2f ee     bra   $087b
088d: f4 00     mov   a,$00+x
088f: d4 08     mov   $08+x,a
0891: e4 1b     mov   a,$1b
0893: d0 34     bne   $08c9
0895: 2f 00     bra   $0897
0897: 8f 00 1b  mov   $1b,#$00
089a: f8 22     mov   x,$22
089c: 3e 20     cmp   x,$20
089e: f0 21     beq   $08c1
08a0: 60        clrc
08a1: fa 20 b6  mov   ($b6),($20)
08a4: fa 21 b7  mov   ($b7),($21)
08a7: 8b 20     dec   $20
08a9: 8b 20     dec   $20
08ab: 4b 21     lsr   $21
08ad: 4b 21     lsr   $21
08af: f4 08     mov   a,$08+x
08b1: f8 20     mov   x,$20
08b3: d4 0b     mov   $0b+x,a
08b5: 3f 05 09  call  $0905
08b8: fa b6 20  mov   ($20),($b6)
08bb: fa b7 21  mov   ($21),($b7)
08be: 2f 3b     bra   $08fb
08c0: 6f        ret

08c1: f4 08     mov   a,$08+x
08c3: f8 20     mov   x,$20
08c5: d4 0b     mov   $0b+x,a
08c7: 2f 3c     bra   $0905
08c9: 8f 00 1b  mov   $1b,#$00
08cc: f8 22     mov   x,$22
08ce: 3e 20     cmp   x,$20
08d0: d0 21     bne   $08f3
08d2: 60        clrc
08d3: fa 20 b6  mov   ($b6),($20)
08d6: fa 21 b7  mov   ($b7),($21)
08d9: ab 20     inc   $20
08db: ab 20     inc   $20
08dd: 0b 21     asl   $21
08df: 0b 21     asl   $21
08e1: f4 08     mov   a,$08+x
08e3: f8 20     mov   x,$20
08e5: d4 0b     mov   $0b+x,a
08e7: 3f 05 09  call  $0905
08ea: fa b6 20  mov   ($20),($b6)
08ed: fa b7 21  mov   ($21),($b7)
08f0: 2f 09     bra   $08fb
08f2: 6f        ret

08f3: f4 08     mov   a,$08+x
08f5: f8 20     mov   x,$20
08f7: d4 0b     mov   $0b+x,a
08f9: 2f 0a     bra   $0905
08fb: f8 20     mov   x,$20
08fd: f4 0b     mov   a,$0b+x
08ff: d0 44     bne   $0945
0901: 6f        ret

0902: 5f fe 09  jmp   $09fe

0905: 8f 01 b5  mov   $b5,#$01
0908: 3f 37 0e  call  $0e37
090b: e8 00     mov   a,#$00
090d: d4 1b     mov   $1b+x,a
090f: f4 0b     mov   a,$0b+x
0911: c8 02     cmp   x,#$02
0913: f0 11     beq   $0926
0915: c8 04     cmp   x,#$04
0917: f0 0d     beq   $0926
0919: 1c        asl   a
091a: f0 e5     beq   $0901
091c: 5d        mov   x,a
091d: f5 ff 14  mov   a,$14ff+x
0920: fd        mov   y,a
0921: f5 fe 14  mov   a,$14fe+x
0924: 2f 0b     bra   $0931
0926: 1c        asl   a
0927: f0 d8     beq   $0901
0929: 5d        mov   x,a
092a: f5 ff 21  mov   a,$21ff+x
092d: fd        mov   y,a
092e: f5 fe 21  mov   a,$21fe+x
0931: fa 20 b1  mov   ($b1),($20)
0934: 0b b1     asl   $b1
0936: 0b b1     asl   $b1
0938: f8 b1     mov   x,$b1
093a: db 91     mov   $91+x,y
093c: d4 90     mov   $90+x,a
093e: f8 20     mov   x,$20
0940: e8 01     mov   a,#$01
0942: d5 90 05  mov   $0590+x,a
0945: f5 90 05  mov   a,$0590+x
0948: f0 b8     beq   $0902
094a: e8 00     mov   a,#$00
094c: d5 90 05  mov   $0590+x,a
094f: 8d 07     mov   y,#$07
0951: c8 01     cmp   x,#$01
0953: f0 11     beq   $0966
0955: c8 02     cmp   x,#$02
0957: f0 12     beq   $096b
0959: c8 03     cmp   x,#$03
095b: f0 13     beq   $0970
095d: c8 04     cmp   x,#$04
095f: f0 14     beq   $0975
0961: 8f bb ba  mov   $ba,#$bb
0964: 2f 12     bra   $0978
0966: 3f 41 0a  call  $0a41
0969: 2f 0d     bra   $0978
096b: 3f 4c 0a  call  $0a4c
096e: 2f 08     bra   $0978
0970: 3f 57 0a  call  $0a57
0973: 2f 03     bra   $0978
0975: 3f 62 0a  call  $0a62
0978: 8f 04 15  mov   $15,#$04
097b: 8f 10 13  mov   $13,#$10
097e: eb 15     mov   y,$15
0980: f4 41     mov   a,$41+x
0982: f0 67     beq   $09eb
0984: 09 13 33  or    ($33),($13)
0987: 3f 4d 0c  call  $0c4d
098a: 60        clrc
098b: e8 02     mov   a,#$02
098d: eb 15     mov   y,$15
098f: cf        mul   ya
0990: fd        mov   y,a
0991: f6 00 01  mov   a,$0100+y
0994: f0 50     beq   $09e6
0996: d8 b1     mov   $b1,x
0998: 3f 1d 0a  call  $0a1d
099b: d8 b0     mov   $b0,x
099d: dd        mov   a,y
099e: 48 08     eor   a,#$08
09a0: 60        clrc
09a1: 84 b0     adc   a,$b0
09a3: 5d        mov   x,a
09a4: e8 00     mov   a,#$00
09a6: d4 40     mov   $40+x,a
09a8: d4 41     mov   $41+x,a
09aa: d5 00 05  mov   $0500+x,a
09ad: cb b0     mov   $b0,y
09af: f8 b0     mov   x,$b0
09b1: 8f 01 b5  mov   $b5,#$01
09b4: 3f 9c 0e  call  $0e9c
09b7: eb b0     mov   y,$b0
09b9: eb b0     mov   y,$b0
09bb: cd 01     mov   x,#$01
09bd: f6 00 01  mov   a,$0100+y
09c0: 68 01     cmp   a,#$01
09c2: f0 12     beq   $09d6
09c4: 3d        inc   x
09c5: 68 02     cmp   a,#$02
09c7: f0 0d     beq   $09d6
09c9: 3d        inc   x
09ca: 68 04     cmp   a,#$04
09cc: f0 08     beq   $09d6
09ce: 3d        inc   x
09cf: 68 08     cmp   a,#$08
09d1: f0 03     beq   $09d6
09d3: 8f ee ba  mov   $ba,#$ee
09d6: d4 1b     mov   $1b+x,a
09d8: f4 15     mov   a,$15+x
09da: 10 04     bpl   $09e0
09dc: e8 7f     mov   a,#$7f
09de: 2f 02     bra   $09e2
09e0: e8 00     mov   a,#$00
09e2: d4 15     mov   $15+x,a
09e4: f8 b1     mov   x,$b1
09e6: e4 21     mov   a,$21
09e8: d6 00 01  mov   $0100+y,a
09eb: e8 02     mov   a,#$02
09ed: d5 61 01  mov   $0161+x,a
09f0: e8 00     mov   a,#$00
09f2: d5 91 01  mov   $0191+x,a
09f5: 3d        inc   x
09f6: 3d        inc   x
09f7: ab 15     inc   $15
09f9: 0b 13     asl   $13
09fb: d0 81     bne   $097e
09fd: 6f        ret

09fe: f4 1b     mov   a,$1b+x
0a00: 68 af     cmp   a,#$af
0a02: f0 0e     beq   $0a12
0a04: e4 21     mov   a,$21
0a06: 3f 1d 0a  call  $0a1d
0a09: 8f 10 13  mov   $13,#$10
0a0c: 8f 04 15  mov   $15,#$04
0a0f: 5f 45 0d  jmp   $0d45

0a12: 6f        ret

0a13: 2d        push  a
0a14: f5 00 01  mov   a,$0100+x
0a17: c4 b2     mov   $b2,a
0a19: d8 b3     mov   $b3,x
0a1b: ae        pop   a
0a1c: 6f        ret

0a1d: 68 01     cmp   a,#$01
0a1f: f0 0f     beq   $0a30
0a21: 68 02     cmp   a,#$02
0a23: f0 0f     beq   $0a34
0a25: 68 04     cmp   a,#$04
0a27: f0 0f     beq   $0a38
0a29: 68 08     cmp   a,#$08
0a2b: f0 0f     beq   $0a3c
0a2d: 8f ab ba  mov   $ba,#$ab
0a30: cd 10     mov   x,#$10
0a32: 2f 0c     bra   $0a40
0a34: cd 18     mov   x,#$18
0a36: 2f 08     bra   $0a40
0a38: cd 20     mov   x,#$20
0a3a: 2f 04     bra   $0a40
0a3c: cd 28     mov   x,#$28
0a3e: 2f 00     bra   $0a40
0a40: 6f        ret

0a41: f7 94     mov   a,($94)+y
0a43: d6 50 00  mov   $0050+y,a
0a46: dc        dec   y
0a47: 10 f8     bpl   $0a41
0a49: cd 10     mov   x,#$10
0a4b: 6f        ret

0a4c: f7 98     mov   a,($98)+y
0a4e: d6 58 00  mov   $0058+y,a
0a51: dc        dec   y
0a52: 10 f8     bpl   $0a4c
0a54: cd 18     mov   x,#$18
0a56: 6f        ret

0a57: f7 9c     mov   a,($9c)+y
0a59: d6 60 00  mov   $0060+y,a
0a5c: dc        dec   y
0a5d: 10 f8     bpl   $0a57
0a5f: cd 20     mov   x,#$20
0a61: 6f        ret

0a62: f7 a0     mov   a,($a0)+y
0a64: d6 68 00  mov   $0068+y,a
0a67: dc        dec   y
0a68: 10 f8     bpl   $0a62
0a6a: cd 28     mov   x,#$28
0a6c: 6f        ret

0a6d: e8 40     mov   a,#$40
0a6f: 3f 0e 14  call  $140e
0a72: e4 f7     mov   a,$f7
0a74: 68 00     cmp   a,#$00
0a76: d0 fa     bne   $0a72
0a78: e8 00     mov   a,#$00
0a7a: 3f 0e 14  call  $140e
0a7d: 6f        ret

0a7e: e8 bb     mov   a,#$bb
0a80: c5 a0 05  mov   $05a0,a
0a83: 6f        ret

0a84: e8 00     mov   a,#$00
0a86: c5 a0 05  mov   $05a0,a
0a89: 6f        ret

0a8a: e5 a0 05  mov   a,$05a0
0a8d: c5 f7 00  mov   $00f7,a
0a90: e4 f7     mov   a,$f7
0a92: 68 00     cmp   a,#$00
0a94: d0 fa     bne   $0a90
0a96: 6f        ret

0a97: f2 2a     clr7  $2a
0a99: f4 c0     mov   a,$c0+x
0a9b: f0 34     beq   $0ad1
0a9d: f5 01 03  mov   a,$0301+x
0aa0: f0 09     beq   $0aab
0aa2: f5 01 03  mov   a,$0301+x
0aa5: 9c        dec   a
0aa6: d5 01 03  mov   $0301+x,a
0aa9: 2f 26     bra   $0ad1
0aab: e2 2a     set7  $2a
0aad: 9b c0     dec   $c0+x
0aaf: d0 0b     bne   $0abc
0ab1: f5 91 03  mov   a,$0391+x
0ab4: d5 31 03  mov   $0331+x,a
0ab7: f5 90 03  mov   a,$0390+x
0aba: 2f 10     bra   $0acc
0abc: 60        clrc
0abd: f5 31 03  mov   a,$0331+x
0ac0: 95 61 03  adc   a,$0361+x
0ac3: d5 31 03  mov   $0331+x,a
0ac6: f5 30 03  mov   a,$0330+x
0ac9: 95 60 03  adc   a,$0360+x
0acc: d5 30 03  mov   $0330+x,a
0acf: 2f 00     bra   $0ad1
0ad1: 3f 23 11  call  $1123
0ad4: f5 00 04  mov   a,$0400+x
0ad7: f0 4f     beq   $0b28
0ad9: f5 31 04  mov   a,$0431+x
0adc: de c1 47  cbne  $c1+x,$0b26
0adf: f5 c0 04  mov   a,$04c0+x
0ae2: 75 90 04  cmp   a,$0490+x
0ae5: d0 05     bne   $0aec
0ae7: f5 60 04  mov   a,$0460+x
0aea: 2f 0e     bra   $0afa
0aec: 40        setp
0aed: bb c0     inc   $c0+x
0aef: 20        clrp
0af0: fd        mov   y,a
0af1: f0 03     beq   $0af6
0af3: f5 00 04  mov   a,$0400+x
0af6: 60        clrc
0af7: 95 91 04  adc   a,$0491+x
0afa: d5 00 04  mov   $0400+x,a
0afd: f5 30 04  mov   a,$0430+x
0b00: 60        clrc
0b01: 95 61 04  adc   a,$0461+x
0b04: d5 30 04  mov   $0430+x,a
0b07: c4 29     mov   $29,a
0b09: 1c        asl   a
0b0a: 1c        asl   a
0b0b: 90 02     bcc   $0b0f
0b0d: 48 ff     eor   a,#$ff
0b0f: fd        mov   y,a
0b10: f5 00 04  mov   a,$0400+x
0b13: 68 f1     cmp   a,#$f1
0b15: 90 05     bcc   $0b1c
0b17: 28 0f     and   a,#$0f
0b19: cf        mul   ya
0b1a: 2f 04     bra   $0b20
0b1c: cf        mul   ya
0b1d: dd        mov   a,y
0b1e: 8d 00     mov   y,#$00
0b20: 3f d3 0b  call  $0bd3
0b23: 5f 54 0f  jmp   $0f54

0b26: bb c1     inc   $c1+x
0b28: e3 2a f8  bbs7  $2a,$0b23
0b2b: 6f        ret

0b2c: f4 41     mov   a,$41+x
0b2e: f0 03     beq   $0b33
0b30: 3f 3a 0b  call  $0b3a
0b33: 3d        inc   x
0b34: 3d        inc   x
0b35: 0b 13     asl   $13
0b37: d0 f3     bne   $0b2c
0b39: 6f        ret

0b3a: f5 00 04  mov   a,$0400+x
0b3d: f0 e9     beq   $0b28
0b3f: f5 31 04  mov   a,$0431+x
0b42: de c1 e3  cbne  $c1+x,$0b28
0b45: eb 2d     mov   y,$2d
0b47: f5 61 04  mov   a,$0461+x
0b4a: cf        mul   ya
0b4b: dd        mov   a,y
0b4c: 60        clrc
0b4d: 85 30 04  adc   a,$0430
0b50: 5f 07 0b  jmp   $0b07

0b53: f5 00 03  mov   a,$0300+x
0b56: fd        mov   y,a
0b57: e5 a0 05  mov   a,$05a0
0b5a: d0 06     bne   $0b62
0b5c: f6 d4 13  mov   a,$13d4+y
0b5f: 5f 65 0b  jmp   $0b65

0b62: f6 aa 13  mov   a,$13aa+y
0b65: fd        mov   y,a
0b66: f5 60 02  mov   a,$0260+x
0b69: cf        mul   ya
0b6a: f5 90 02  mov   a,$0290+x
0b6d: cf        mul   ya
0b6e: dd        mov   a,y
0b6f: cf        mul   ya
0b70: dd        mov   a,y
0b71: d5 30 02  mov   $0230+x,a
0b74: eb 15     mov   y,$15
0b76: 3f 3d 14  call  $143d
0b79: f5 00 03  mov   a,$0300+x
0b7c: fd        mov   y,a
0b7d: e5 a0 05  mov   a,$05a0
0b80: d0 06     bne   $0b88
0b82: f6 d4 13  mov   a,$13d4+y
0b85: 5f 8b 0b  jmp   $0b8b

0b88: f6 bf 13  mov   a,$13bf+y
0b8b: fd        mov   y,a
0b8c: f5 61 02  mov   a,$0261+x
0b8f: 60        clrc
0b90: cf        mul   ya
0b91: f5 91 02  mov   a,$0291+x
0b94: cf        mul   ya
0b95: dd        mov   a,y
0b96: cf        mul   ya
0b97: dd        mov   a,y
0b98: d5 31 02  mov   $0231+x,a
0b9b: eb 15     mov   y,$15
0b9d: 3f 49 14  call  $1449
0ba0: 6f        ret

0ba1: ed        notc
0ba2: 6b 29     ror   $29
0ba4: 10 03     bpl   $0ba9
0ba6: 48 ff     eor   a,#$ff
0ba8: bc        inc   a
0ba9: 8d 00     mov   y,#$00
0bab: 9e        div   ya,x
0bac: 2d        push  a
0bad: e8 00     mov   a,#$00
0baf: 9e        div   ya,x
0bb0: ee        pop   y
0bb1: f8 14     mov   x,$14
0bb3: f3 29 06  bbc7  $29,$0bbc
0bb6: da 23     movw  $23,ya
0bb8: ba 2b     movw  ya,$2b
0bba: 9a 23     subw  ya,$23
0bbc: 6f        ret

0bbd: e2 2a     set7  $2a
0bbf: cb 29     mov   $29,y
0bc1: 3f b3 0b  call  $0bb3
0bc4: 6d        push  y
0bc5: eb 10     mov   y,$10
0bc7: cf        mul   ya
0bc8: cb 23     mov   $23,y
0bca: 8f 00 24  mov   $24,#$00
0bcd: eb 10     mov   y,$10
0bcf: ae        pop   a
0bd0: cf        mul   ya
0bd1: 7a 23     addw  ya,$23
0bd3: 3f b3 0b  call  $0bb3
0bd6: 7a 27     addw  ya,$27
0bd8: da 27     movw  $27,ya
0bda: 6f        ret

0bdb: e8 bf     mov   a,#$bf
0bdd: cd 01     mov   x,#$01
0bdf: d4 1b     mov   $1b+x,a
0be1: 3d        inc   x
0be2: d4 1b     mov   $1b+x,a
0be4: 3d        inc   x
0be5: d4 1b     mov   $1b+x,a
0be7: 3d        inc   x
0be8: d4 1b     mov   $1b+x,a
0bea: e8 00     mov   a,#$00
0bec: 3f 22 14  call  $1422
0bef: e8 00     mov   a,#$00
0bf1: 3f 13 14  call  $1413
0bf4: e8 00     mov   a,#$00
0bf6: 3f fa 13  call  $13fa
0bf9: e8 00     mov   a,#$00
0bfb: 3f ff 13  call  $13ff
0bfe: e8 20     mov   a,#$20
0c00: 3f 0e 14  call  $140e
0c03: e5 b0 05  mov   a,$05b0
0c06: 3f f0 13  call  $13f0
0c09: e8 00     mov   a,#$00
0c0b: 3f 1d 14  call  $141d
0c0e: e8 04     mov   a,#$04
0c10: 3f 2c 14  call  $142c
0c13: e8 dd     mov   a,#$dd
0c15: 8d 6d     mov   y,#$6d
0c17: cb f2     mov   $f2,y
0c19: c4 f3     mov   $f3,a
0c1b: 8d 00     mov   y,#$00
0c1d: e8 7f     mov   a,#$7f
0c1f: 3f 31 14  call  $1431
0c22: fc        inc   y
0c23: e8 00     mov   a,#$00
0c25: 3f 31 14  call  $1431
0c28: fc        inc   y
0c29: e8 00     mov   a,#$00
0c2b: 3f 31 14  call  $1431
0c2e: fc        inc   y
0c2f: e8 00     mov   a,#$00
0c31: 3f 31 14  call  $1431
0c34: fc        inc   y
0c35: e8 00     mov   a,#$00
0c37: 3f 31 14  call  $1431
0c3a: fc        inc   y
0c3b: e8 00     mov   a,#$00
0c3d: 3f 31 14  call  $1431
0c40: fc        inc   y
0c41: e8 00     mov   a,#$00
0c43: 3f 31 14  call  $1431
0c46: fc        inc   y
0c47: e8 00     mov   a,#$00
0c49: 3f 31 14  call  $1431
0c4c: 6f        ret

0c4d: e8 00     mov   a,#$00
0c4f: d5 90 02  mov   $0290+x,a
0c52: d5 91 02  mov   $0291+x,a
0c55: d5 30 02  mov   $0230+x,a
0c58: d5 31 02  mov   $0231+x,a
0c5b: e8 00     mov   a,#$00
0c5d: d5 01 02  mov   $0201+x,a
0c60: d5 91 03  mov   $0391+x,a
0c63: d5 c0 00  mov   $00c0+x,a
0c66: d5 01 03  mov   $0301+x,a
0c69: d5 00 04  mov   $0400+x,a
0c6c: d5 c1 00  mov   $00c1+x,a
0c6f: d5 30 04  mov   $0430+x,a
0c72: d5 31 04  mov   $0431+x,a
0c75: d5 60 04  mov   $0460+x,a
0c78: d5 61 04  mov   $0461+x,a
0c7b: d5 c0 04  mov   $04c0+x,a
0c7e: d5 90 04  mov   $0490+x,a
0c81: d5 91 04  mov   $0491+x,a
0c84: d5 30 05  mov   $0530+x,a
0c87: d5 00 05  mov   $0500+x,a
0c8a: d5 01 05  mov   $0501+x,a
0c8d: e8 0a     mov   a,#$0a
0c8f: d5 00 03  mov   $0300+x,a
0c92: 6f        ret

0c93: f4 00     mov   a,$00+x
0c95: d5 f4 00  mov   $00f4+x,a
0c98: f5 f4 00  mov   a,$00f4+x
0c9b: 75 f4 00  cmp   a,$00f4+x
0c9e: d0 f8     bne   $0c98
0ca0: d4 00     mov   $00+x,a
0ca2: 6f        ret

0ca3: c4 08     mov   $08,a
0ca5: 1c        asl   a
0ca6: f0 17     beq   $0cbf
0ca8: 5d        mov   x,a
0ca9: f5 ff 22  mov   a,$22ff+x
0cac: fd        mov   y,a
0cad: f5 fe 22  mov   a,$22fe+x
0cb0: da 90     movw  $90,ya
0cb2: e8 01     mov   a,#$01
0cb4: c5 90 05  mov   $0590,a
0cb7: 8f ff 2f  mov   $2f,#$ff
0cba: e8 00     mov   a,#$00
0cbc: 3f 0e 14  call  $140e
0cbf: 6f        ret

0cc0: 5f 7a 14  jmp   $147a

0cc3: 5f 87 14  jmp   $1487

0cc6: 5f 9b 14  jmp   $149b

0cc9: eb 04     mov   y,$04
0ccb: e4 00     mov   a,$00
0ccd: c4 04     mov   $04,a
0ccf: f0 18     beq   $0ce9
0cd1: 68 ff     cmp   a,#$ff
0cd3: f0 eb     beq   $0cc0
0cd5: 68 ee     cmp   a,#$ee
0cd7: f0 ea     beq   $0cc3
0cd9: 68 d1     cmp   a,#$d1
0cdb: f0 e9     beq   $0cc6
0cdd: 08 80     or    a,#$80
0cdf: 48 80     eor   a,#$80
0ce1: 68 0c     cmp   a,#$0c
0ce3: b0 04     bcs   $0ce9
0ce5: 7e 00     cmp   y,$00
0ce7: d0 ba     bne   $0ca3
0ce9: e4 08     mov   a,$08
0ceb: f0 d2     beq   $0cbf
0ced: e5 90 05  mov   a,$0590
0cf0: f0 44     beq   $0d36
0cf2: e8 00     mov   a,#$00
0cf4: c5 90 05  mov   $0590,a
0cf7: 8d 0f     mov   y,#$0f
0cf9: f7 90     mov   a,($90)+y
0cfb: f0 08     beq   $0d05
0cfd: d6 70 00  mov   $0070+y,a
0d00: d6 40 00  mov   $0040+y,a
0d03: 2f 08     bra   $0d0d
0d05: e8 00     mov   a,#$00
0d07: d6 70 00  mov   $0070+y,a
0d0a: d6 40 00  mov   $0040+y,a
0d0d: dc        dec   y
0d0e: 10 e9     bpl   $0cf9
0d10: 8f 00 36  mov   $36,#$00
0d13: 8f 18 2d  mov   $2d,#$18
0d16: 8f 00 15  mov   $15,#$00
0d19: cd 00     mov   x,#$00
0d1b: 8f 01 13  mov   $13,#$01
0d1e: d8 14     mov   $14,x
0d20: eb 15     mov   y,$15
0d22: e8 00     mov   a,#$00
0d24: 3f 4d 0c  call  $0c4d
0d27: e8 01     mov   a,#$01
0d29: d5 61 01  mov   $0161+x,a
0d2c: d4 80     mov   $80+x,a
0d2e: 3d        inc   x
0d2f: 3d        inc   x
0d30: ab 15     inc   $15
0d32: 0b 13     asl   $13
0d34: d0 e8     bne   $0d1e
0d36: cd 00     mov   x,#$00
0d38: 8d 00     mov   y,#$00
0d3a: 8f 01 13  mov   $13,#$01
0d3d: d8 15     mov   $15,x
0d3f: 8f 00 20  mov   $20,#$00
0d42: 8f 00 21  mov   $21,#$00
0d45: d8 14     mov   $14,x
0d47: f4 41     mov   a,$41+x
0d49: f0 0b     beq   $0d56
0d4b: f5 61 01  mov   a,$0161+x
0d4e: 9c        dec   a
0d4f: d5 61 01  mov   $0161+x,a
0d52: d0 67     bne   $0dbb
0d54: 2f 03     bra   $0d59
0d56: 5f eb 0d  jmp   $0deb

0d59: 3f 24 10  call  $1024
0d5c: 30 0d     bmi   $0d6b
0d5e: d5 60 01  mov   $0160+x,a
0d61: f0 22     beq   $0d85
0d63: 3f 24 10  call  $1024
0d66: 30 20     bmi   $0d88
0d68: 3f f0 0f  call  $0ff0
0d6b: 68 d5     cmp   a,#$d5		; set instrument
0d6d: 90 19     bcc   $0d88
0d6f: 68 d6     cmp   a,#$d6		; call subroutine
0d71: f0 09     beq   $0d7c
0d73: 68 fe     cmp   a,#$fe
0d75: f0 08     beq   $0d7f
0d77: 3f 12 10  call  $1012
0d7a: 2f dd     bra   $0d59
0d7c: 5f b7 0e  jmp   $0eb7
0d7f: 3f 25 0e  call  $0e25
0d82: 5f eb 0d  jmp   $0deb

0d85: 5f e6 0e  jmp   $0ee6

0d88: 3f 13 0a  call  $0a13
0d8b: d0 24     bne   $0db1
0d8d: ad ca     cmp   y,#$ca
0d8f: 90 06     bcc   $0d97
0d91: 3f 2e 10  call  $102e
0d94: 8d a4     mov   y,#$a4
0d96: dd        mov   a,y
0d97: ad c8     cmp   y,#$c8
0d99: f0 16     beq   $0db1
0d9b: ad c9     cmp   y,#$c9
0d9d: f0 06     beq   $0da5
0d9f: 60        clrc
0da0: 3f 28 0f  call  $0f28
0da3: 2f 09     bra   $0dae
0da5: ad c9     cmp   y,#$c9
0da7: 90 08     bcc   $0db1
0da9: 09 13 33  or    ($33),($13)
0dac: 2f 03     bra   $0db1
0dae: 09 13 32  or    ($32),($13)
0db1: f5 60 01  mov   a,$0160+x
0db4: d5 61 01  mov   $0161+x,a
0db7: fd        mov   y,a
0db8: 5f e2 0f  jmp   $0fe2

0dbb: f5 91 01  mov   a,$0191+x
0dbe: f0 25     beq   $0de5
0dc0: 9c        dec   a
0dc1: d5 91 01  mov   $0191+x,a
0dc4: d0 1f     bne   $0de5
0dc6: e7 40     mov   a,($40+x)
0dc8: 68 c8     cmp   a,#$c8
0dca: f0 19     beq   $0de5
0dcc: bb 40     inc   $40+x
0dce: e7 40     mov   a,($40+x)
0dd0: 9b 40     dec   $40+x
0dd2: 68 c8     cmp   a,#$c8
0dd4: f0 0f     beq   $0de5
0dd6: f5 30 05  mov   a,$0530+x
0dd9: 68 01     cmp   a,#$01
0ddb: f0 08     beq   $0de5
0ddd: 3f 13 0a  call  $0a13
0de0: d0 03     bne   $0de5
0de2: 09 13 33  or    ($33),($13)
0de5: 3f ea 10  call  $10ea
0de8: 3f 97 0a  call  $0a97
0deb: 3d        inc   x
0dec: 3d        inc   x
0ded: ab 15     inc   $15
0def: 0b 13     asl   $13
0df1: d0 02     bne   $0df5
0df3: 2f 03     bra   $0df8
0df5: 5f 45 0d  jmp   $0d45

0df8: cd cf     mov   x,#$cf
0dfa: bd        mov   sp,x
0dfb: e5 20 00  mov   a,$0020
0dfe: d0 03     bne   $0e03
0e00: 5f d2 07  jmp   $07d2

0e03: 8c 20 00  dec   $0020
0e06: e4 20     mov   a,$20
0e08: f0 18     beq   $0e22
0e0a: 78 03 20  cmp   $20,#$03
0e0d: f0 0a     beq   $0e19
0e0f: 78 02 20  cmp   $20,#$02
0e12: f0 08     beq   $0e1c
0e14: 78 01 20  cmp   $20,#$01
0e17: f0 06     beq   $0e1f
0e19: 5f 8e 07  jmp   $078e

0e1c: 5f 9f 07  jmp   $079f

0e1f: 5f b0 07  jmp   $07b0

0e22: 5f c1 07  jmp   $07c1

0e25: 8f 00 b5  mov   $b5,#$00
0e28: e4 20     mov   a,$20
0e2a: d0 0b     bne   $0e37
0e2c: e8 00     mov   a,#$00
0e2e: d4 40     mov   $40+x,a
0e30: d4 41     mov   $41+x,a
0e32: d4 70     mov   $70+x,a
0e34: d4 71     mov   $71+x,a
0e36: 6f        ret

0e37: fa 15 b4  mov   ($b4),($15)
0e3a: cd 0e     mov   x,#$0e
0e3c: 8f 07 15  mov   $15,#$07
0e3f: 8f 80 13  mov   $13,#$80
0e42: f5 00 01  mov   a,$0100+x
0e45: d0 40     bne   $0e87
0e47: 4c 13 00  lsr   $0013
0e4a: 8c 15 00  dec   $0015
0e4d: 1d        dec   x
0e4e: 1d        dec   x
0e4f: c8 06     cmp   x,#$06
0e51: d0 ef     bne   $0e42
0e53: e8 af     mov   a,#$af
0e55: f8 20     mov   x,$20
0e57: d4 1b     mov   $1b+x,a
0e59: f4 15     mov   a,$15+x
0e5b: 10 04     bpl   $0e61
0e5d: e8 7f     mov   a,#$7f
0e5f: 2f 02     bra   $0e63
0e61: e8 00     mov   a,#$00
0e63: d4 15     mov   $15+x,a
0e65: f8 22     mov   x,$22
0e67: f4 a8     mov   a,$a8+x
0e69: d0 0c     bne   $0e77
0e6b: e8 00     mov   a,#$00
0e6d: d4 a4     mov   $a4+x,a
0e6f: d4 a6     mov   $a6+x,a
0e71: f4 00     mov   a,$00+x
0e73: d4 04     mov   $04+x,a
0e75: d4 08     mov   $08+x,a
0e77: e8 00     mov   a,#$00
0e79: d4 a8     mov   $a8+x,a
0e7b: 8f 80 13  mov   $13,#$80
0e7e: fa b4 15  mov   ($15),($b4)
0e81: 8f 00 b5  mov   $b5,#$00
0e84: f8 20     mov   x,$20
0e86: 6f        ret

0e87: e4 b5     mov   a,$b5
0e89: f0 00     beq   $0e8b
0e8b: f5 00 01  mov   a,$0100+x
0e8e: 04 21     or    a,$21
0e90: 44 21     eor   a,$21
0e92: d5 00 01  mov   $0100+x,a
0e95: d0 b0     bne   $0e47
0e97: 3f 9c 0e  call  $0e9c
0e9a: 2f ab     bra   $0e47
0e9c: e8 00     mov   a,#$00
0e9e: d5 01 02  mov   $0201+x,a
0ea1: d5 91 03  mov   $0391+x,a
0ea4: d4 c0     mov   $c0+x,a
0ea6: d5 01 03  mov   $0301+x,a
0ea9: 09 13 33  or    ($33),($13)
0eac: f5 00 02  mov   a,$0200+x
0eaf: 3f 39 10  call  $1039
0eb2: 3f 53 0b  call  $0b53
0eb5: 6f        ret

0eb6: 6f        ret

0eb7: f4 41     mov   a,$41+x
0eb9: fd        mov   y,a
0eba: f4 40     mov   a,$40+x
0ebc: db 71     mov   $71+x,y
0ebe: d4 70     mov   $70+x,a
0ec0: bb 70     inc   $70+x
0ec2: d0 02     bne   $0ec6
0ec4: bb 71     inc   $71+x
0ec6: bb 70     inc   $70+x
0ec8: d0 02     bne   $0ecc
0eca: bb 71     inc   $71+x
0ecc: e7 70     mov   a,($70+x)
0ece: d4 80     mov   $80+x,a
0ed0: 9b 70     dec   $70+x
0ed2: f4 70     mov   a,$70+x
0ed4: 68 ff     cmp   a,#$ff
0ed6: d0 02     bne   $0eda
0ed8: 9b 71     dec   $71+x
0eda: 9b 70     dec   $70+x
0edc: f4 70     mov   a,$70+x
0ede: 68 ff     cmp   a,#$ff
0ee0: d0 02     bne   $0ee4
0ee2: 9b 71     dec   $71+x
0ee4: 2f 06     bra   $0eec
0ee6: 9b 80     dec   $80+x
0ee8: f4 80     mov   a,$80+x
0eea: f0 1c     beq   $0f08
0eec: e7 70     mov   a,($70+x)
0eee: d5 40 00  mov   $0040+x,a
0ef1: bb 70     inc   $70+x
0ef3: d0 02     bne   $0ef7
0ef5: bb 71     inc   $71+x
0ef7: e7 70     mov   a,($70+x)
0ef9: d5 41 00  mov   $0041+x,a
0efc: 9b 70     dec   $70+x
0efe: f4 70     mov   a,$70+x
0f00: 68 ff     cmp   a,#$ff
0f02: d0 02     bne   $0f06
0f04: 9b 71     dec   $71+x
0f06: 2f 1b     bra   $0f23
0f08: bb 70     inc   $70+x
0f0a: d0 02     bne   $0f0e
0f0c: bb 71     inc   $71+x
0f0e: bb 70     inc   $70+x
0f10: d0 02     bne   $0f14
0f12: bb 71     inc   $71+x
0f14: bb 70     inc   $70+x
0f16: d0 02     bne   $0f1a
0f18: bb 71     inc   $71+x
0f1a: f4 71     mov   a,$71+x
0f1c: fd        mov   y,a
0f1d: f4 70     mov   a,$70+x
0f1f: db 41     mov   $41+x,y
0f21: d4 40     mov   $40+x,a
0f23: eb 15     mov   y,$15
0f25: 5f 59 0d  jmp   $0d59

0f28: dd        mov   a,y
0f29: 28 7f     and   a,#$7f
0f2b: 60        clrc
0f2c: 84 36     adc   a,$36
0f2e: 60        clrc
0f2f: 95 01 02  adc   a,$0201+x
0f32: d5 30 03  mov   $0330+x,a
0f35: f5 91 03  mov   a,$0391+x
0f38: d5 31 03  mov   $0331+x,a
0f3b: f5 90 04  mov   a,$0490+x
0f3e: 5c        lsr   a
0f3f: e8 00     mov   a,#$00
0f41: 7c        ror   a
0f42: d5 30 04  mov   $0430+x,a
0f45: e8 00     mov   a,#$00
0f47: d4 c1     mov   $c1+x,a
0f49: d5 c0 04  mov   $04c0+x,a
0f4c: 3f 23 11  call  $1123
0f4f: 2f 03     bra   $0f54
0f51: 5f e1 0f  jmp   $0fe1

; dispatch vcmd
0f54: 3f 13 0a  call  $0a13
0f57: d0 f8     bne   $0f51
0f59: 8d 00     mov   y,#$00
0f5b: e4 28     mov   a,$28
0f5d: 80        setc
0f5e: a8 34     sbc   a,#$34
0f60: b0 09     bcs   $0f6b
0f62: e4 28     mov   a,$28
0f64: 80        setc
0f65: a8 13     sbc   a,#$13
0f67: b0 06     bcs   $0f6f
0f69: dc        dec   y
0f6a: 1c        asl   a
0f6b: 7a 27     addw  ya,$27
0f6d: da 27     movw  $27,ya
0f6f: e4 28     mov   a,$28
0f71: 1c        asl   a
0f72: 8d 00     mov   y,#$00
0f74: cd 18     mov   x,#$18
0f76: 9e        div   ya,x
0f77: 5d        mov   x,a
0f78: f6 e2 12  mov   a,$12e2+y
0f7b: c4 24     mov   $24,a
0f7d: f6 e1 12  mov   a,$12e1+y
0f80: c4 23     mov   $23,a
0f82: f6 e4 12  mov   a,$12e4+y
0f85: 2d        push  a
0f86: f6 e3 12  mov   a,$12e3+y
0f89: ee        pop   y
0f8a: 9a 23     subw  ya,$23
0f8c: eb 27     mov   y,$27
0f8e: cf        mul   ya
0f8f: dd        mov   a,y
0f90: 8d 00     mov   y,#$00
0f92: 7a 23     addw  ya,$23
0f94: cb 24     mov   $24,y
0f96: 1c        asl   a
0f97: 2b 24     rol   $24
0f99: c4 23     mov   $23,a
0f9b: 2f 04     bra   $0fa1
0f9d: 4b 24     lsr   $24
0f9f: 7c        ror   a
0fa0: 3d        inc   x
0fa1: c8 06     cmp   x,#$06
0fa3: d0 f8     bne   $0f9d
0fa5: c4 23     mov   $23,a
0fa7: f8 14     mov   x,$14
0fa9: f5 c0 02  mov   a,$02c0+x
0fac: eb 24     mov   y,$24
0fae: cf        mul   ya
0faf: da 25     movw  $25,ya
0fb1: f5 c0 02  mov   a,$02c0+x
0fb4: eb 23     mov   y,$23
0fb6: cf        mul   ya
0fb7: 6d        push  y
0fb8: f5 c1 02  mov   a,$02c1+x
0fbb: eb 23     mov   y,$23
0fbd: cf        mul   ya
0fbe: 7a 25     addw  ya,$25
0fc0: da 25     movw  $25,ya
0fc2: f5 c1 02  mov   a,$02c1+x
0fc5: eb 24     mov   y,$24
0fc7: cf        mul   ya
0fc8: fd        mov   y,a
0fc9: ae        pop   a
0fca: 7a 25     addw  ya,$25
0fcc: da 25     movw  $25,ya
0fce: e4 26     mov   a,$26
0fd0: d5 31 01  mov   $0131+x,a
0fd3: 2d        push  a
0fd4: e4 25     mov   a,$25
0fd6: d5 30 01  mov   $0130+x,a
0fd9: ce        pop   x
0fda: eb 15     mov   y,$15
0fdc: 3f 55 14  call  $1455
0fdf: f8 14     mov   x,$14
0fe1: 6f        ret

0fe2: f5 90 01  mov   a,$0190+x
0fe5: cf        mul   ya
0fe6: dd        mov   a,y
0fe7: d0 01     bne   $0fea
0fe9: bc        inc   a
0fea: d5 91 01  mov   $0191+x,a
0fed: 5f e5 0d  jmp   $0de5

0ff0: 2d        push  a
0ff1: 9f        xcn   a
0ff2: 28 07     and   a,#$07
0ff4: fd        mov   y,a
0ff5: f6 00 3b  mov   a,$3b00+y
0ff8: d5 90 01  mov   $0190+x,a         ;   set dur% from high nybble
0ffb: ae        pop   a
0ffc: 28 0f     and   a,#$0f
0ffe: fd        mov   y,a
0fff: f6 08 3b  mov   a,$3b08+y         ;   set per-note vol from low nybble
1002: d5 60 02  mov   $0260+x,a
1005: d5 61 02  mov   $0261+x,a
1008: 3f 13 0a  call  $0a13
100b: d0 03     bne   $1010
100d: 3f 53 0b  call  $0b53
1010: 2f 12     bra   $1024
1012: 1c        asl   a
1013: fd        mov   y,a
1014: f6 89 12  mov   a,$1289+y
1017: 2d        push  a
1018: f6 88 12  mov   a,$1288+y
101b: 2d        push  a
101c: dd        mov   a,y
101d: 5c        lsr   a
101e: fd        mov   y,a
101f: f6 2d 13  mov   a,$132d+y
1022: f0 08     beq   $102c
1024: e7 40     mov   a,($40+x)
1026: bb 40     inc   $40+x
1028: d0 02     bne   $102c
102a: bb 41     inc   $41+x
102c: fd        mov   y,a
102d: 6f        ret

; vcmd d5 - set instrument
102e: d5 00 02  mov   $0200+x,a
1031: 3f 13 0a  call  $0a13
1034: d0 3b     bne   $1071
1036: f5 00 02  mov   a,$0200+x
1039: fd        mov   y,a
103a: 10 06     bpl   $1042
103c: 80        setc
103d: a8 ca     sbc   a,#$ca
103f: 60        clrc
1040: 88 14     adc   a,#$14
1042: 8d 06     mov   y,#$06
1044: cf        mul   ya
1045: da 23     movw  $23,ya
1047: 60        clrc
1048: 98 00 23  adc   $23,#$00
104b: 98 3c 24  adc   $24,#$3c
104e: 4d        push  x
104f: e4 15     mov   a,$15
1051: 9f        xcn   a
1052: 08 04     or    a,#$04
1054: 5d        mov   x,a
1055: 8d 00     mov   y,#$00
1057: f7 23     mov   a,($23)+y
1059: c9 f2 00  mov   $00f2,x
105c: c5 f3 00  mov   $00f3,a
105f: 3d        inc   x
1060: fc        inc   y
1061: ad 04     cmp   y,#$04
1063: d0 f2     bne   $1057
1065: ce        pop   x
1066: f7 23     mov   a,($23)+y
1068: d5 c1 02  mov   $02c1+x,a
106b: fc        inc   y
106c: f7 23     mov   a,($23)+y
106e: d5 c0 02  mov   $02c0+x,a
1071: eb 15     mov   y,$15
1073: 6f        ret

; vcmd d6 - call subroutine
1074: 8f 11 b9  mov   $b9,#$11
1077: 6f        ret

; vcmd d7 - volume
1078: d5 90 02  mov   $0290+x,a
107b: d5 91 02  mov   $0291+x,a
107e: 3f 13 0a  call  $0a13
1081: d0 03     bne   $1086
1083: 3f 53 0b  call  $0b53
1086: eb 15     mov   y,$15
1088: 6f        ret

; vcmd d8 - set ASDR
1089: 2d        push  a
108a: e4 15     mov   a,$15
108c: 9f        xcn   a
108d: 08 05     or    a,#$05
108f: fd        mov   y,a
1090: ae        pop   a
1091: 3f e9 13  call  $13e9
1094: 3f 24 10  call  $1024
1097: 2d        push  a
1098: e4 15     mov   a,$15
109a: 9f        xcn   a
109b: 08 06     or    a,#$06
109d: fd        mov   y,a
109e: ae        pop   a
109f: 3f e9 13  call  $13e9
10a2: 6f        ret

; vcmd d9 - set FIR (1)
10a3: d5 00 03  mov   $0300+x,a
10a6: 3f 13 0a  call  $0a13
10a9: d0 03     bne   $10ae
10ab: 3f 53 0b  call  $0b53
10ae: 6f        ret

; vcmd da - set FIR (2)
10af: d5 90 02  mov   $0290+x,a
10b2: 3f 24 10  call  $1024
10b5: d5 91 02  mov   $0291+x,a
10b8: 3f 13 0a  call  $0a13
10bb: d0 03     bne   $10c0
10bd: 3f 53 0b  call  $0b53
10c0: 6f        ret

; vcmd db - global transpose
10c1: c4 36     mov   $36,a
10c3: 6f        ret

; vcmd dc - per-voice transpose
10c4: d5 01 02  mov   $0201+x,a
10c7: 6f        ret

; vcmd dd - loop start
10c8: f4 41     mov   a,$41+x
10ca: fd        mov   y,a
10cb: f4 40     mov   a,$40+x
10cd: d5 00 05  mov   $0500+x,a
10d0: dd        mov   a,y
10d1: d5 01 05  mov   $0501+x,a
10d4: 2f 0b     bra   $10e1
; vcmd de - loop end
10d6: f5 01 05  mov   a,$0501+x
10d9: fd        mov   y,a
10da: f5 00 05  mov   a,$0500+x
10dd: db 41     mov   $41+x,y
10df: d4 40     mov   $40+x,a
10e1: ec 15 00  mov   y,$0015
10e4: 5f 59 0d  jmp   $0d59

; vcmd df - tempo
10e7: c4 2d     mov   $2d,a
10e9: 6f        ret

10ea: f4 c0     mov   a,$c0+x
10ec: d0 34     bne   $1122
10ee: e7 40     mov   a,($40+x)
10f0: 68 e0     cmp   a,#$e0
10f2: d0 2e     bne   $1122
10f4: 3f 26 10  call  $1026
10f7: 3f 24 10  call  $1024
; vcmd e0 - pitch slide
10fa: d5 01 03  mov   $0301+x,a
10fd: 3f 24 10  call  $1024
1100: d4 c0     mov   $c0+x,a
1102: 3f 24 10  call  $1024
1105: 60        clrc
1106: 84 36     adc   a,$36
1108: 95 01 02  adc   a,$0201+x
110b: 28 7f     and   a,#$7f
110d: d5 90 03  mov   $0390+x,a
1110: 80        setc
1111: b5 30 03  sbc   a,$0330+x
1114: fb c0     mov   y,$c0+x
1116: 6d        push  y
1117: ce        pop   x
1118: 3f a1 0b  call  $0ba1
111b: d5 61 03  mov   $0361+x,a
111e: dd        mov   a,y
111f: d5 60 03  mov   $0360+x,a
1122: 6f        ret

1123: f5 30 03  mov   a,$0330+x
1126: c4 28     mov   $28,a
1128: f5 31 03  mov   a,$0331+x
112b: c4 27     mov   $27,a
112d: 6f        ret

; vcmd e1 - vibrato on
112e: d5 31 04  mov   $0431+x,a
1131: 3f 24 10  call  $1024
1134: d5 61 04  mov   $0461+x,a
1137: 3f 24 10  call  $1024
; vcmd e2 - vibrato off
113a: d5 00 04  mov   $0400+x,a
113d: d5 60 04  mov   $0460+x,a
1140: e8 00     mov   a,#$00
1142: d5 90 04  mov   $0490+x,a
1145: 6f        ret

; vcmd e3 - vibrato fade
1146: d5 90 04  mov   $0490+x,a
1149: 2d        push  a
114a: 8d 00     mov   y,#$00
114c: f5 00 04  mov   a,$0400+x
114f: ce        pop   x
1150: 9e        div   ya,x
1151: f8 14     mov   x,$14
1153: d5 91 04  mov   $0491+x,a
1156: 6f        ret

; vcmd e4 - master volume
1157: c5 b0 05  mov   $05b0,a
115a: 03 b0 05  bbs0  $b0,$1162
115d: 4c b0 05  lsr   $05b0
1160: 2f 08     bra   $116a
1162: 4c b0 05  lsr   $05b0
1165: c5 b0 05  mov   $05b0,a
1168: 48 ff     eor   a,#$ff
116a: c5 b0 05  mov   $05b0,a
116d: 3f f0 13  call  $13f0
1170: 6f        ret

; vcmd e5 - tuning
1171: d5 91 03  mov   $0391+x,a
1174: 6f        ret

1175: 6f        ret

1176: f6 08 3b  mov   a,$3b08+y
1179: d5 60 02  mov   $0260+x,a
117c: d5 61 02  mov   $0261+x,a
117f: 3f 13 0a  call  $0a13
1182: d0 f1     bne   $1175
1184: 5f 53 0b  jmp   $0b53

; vcmd e6 - set velocity
1187: 8d 00     mov   y,#$00
1189: 2f eb     bra   $1176
; vcmd e7 - set velocity
118b: 8d 01     mov   y,#$01
118d: 2f e7     bra   $1176
; vcmd e8 - set velocity
118f: 8d 02     mov   y,#$02
1191: 2f e3     bra   $1176
; vcmd e9 - set velocity
1193: 8d 03     mov   y,#$03
1195: 2f df     bra   $1176
; vcmd ea - set velocity
1197: 8d 04     mov   y,#$04
1199: 2f db     bra   $1176
; vcmd eb - set velocity
119b: 8d 05     mov   y,#$05
119d: 2f d7     bra   $1176
; vcmd ec - set velocity
119f: 8d 06     mov   y,#$06
11a1: 2f d3     bra   $1176
; vcmd ed - set velocity
11a3: 8d 07     mov   y,#$07
11a5: 2f cf     bra   $1176
; vcmd ee - set velocity
11a7: 8d 08     mov   y,#$08
11a9: 2f cb     bra   $1176
; vcmd ef - set velocity
11ab: 8d 09     mov   y,#$09
11ad: 2f c7     bra   $1176
; vcmd f0 - set velocity
11af: 8d 0a     mov   y,#$0a
11b1: 2f c3     bra   $1176
; vcmd f1 - set velocity
11b3: 8d 0b     mov   y,#$0b
11b5: 2f bf     bra   $1176
; vcmd f2 - set velocity
11b7: 8d 0c     mov   y,#$0c
11b9: 2f bb     bra   $1176
; vcmd f3 - set velocity
11bb: 8d 0d     mov   y,#$0d
11bd: 2f b7     bra   $1176
; vcmd f4 - set velocity
11bf: 8d 0e     mov   y,#$0e
11c1: 2f b3     bra   $1176
; vcmd f5 - set velocity
11c3: 8d 0f     mov   y,#$0f
11c5: 2f af     bra   $1176
; vcmd f6 - echo vbits/volume
11c7: c4 38     mov   $38,a
11c9: 3f 24 10  call  $1024
11cc: c4 30     mov   $30,a
11ce: 3f 24 10  call  $1024
11d1: c4 31     mov   $31,a
11d3: 6f        ret

; vcmd f7 - disable echo
11d4: e8 00     mov   a,#$00
11d6: 3f fa 13  call  $13fa
11d9: e8 00     mov   a,#$00
11db: 5f ff 13  jmp   $13ff

; vcmd f8 - set echo params
11de: c4 39     mov   $39,a
11e0: 3f 24 10  call  $1024
11e3: c4 3a     mov   $3a,a
11e5: 3f 24 10  call  $1024
11e8: c4 3b     mov   $3b,a
11ea: 3f ea 0b  call  $0bea
11ed: e8 20     mov   a,#$20
11ef: 3f 0e 14  call  $140e
11f2: e4 39     mov   a,$39
11f4: 3f 2c 14  call  $142c
11f7: 1c        asl   a
11f8: 1c        asl   a
11f9: 1c        asl   a
11fa: 48 ff     eor   a,#$ff
11fc: 80        setc
11fd: 88 fe     adc   a,#$fe
11ff: 8d 6d     mov   y,#$6d
1201: cb f2     mov   $f2,y
1203: c4 f3     mov   $f3,a
1205: e4 30     mov   a,$30
1207: 3f fa 13  call  $13fa
120a: e4 31     mov   a,$31
120c: 3f ff 13  call  $13ff
120f: e4 38     mov   a,$38
1211: 3f 22 14  call  $1422
1214: e4 3a     mov   a,$3a
1216: 3f 13 14  call  $1413
1219: 3f 1b 0c  call  $0c1b
121c: 6f        ret

; vcmd f9 - echo on
121d: e4 13     mov   a,$13
121f: 04 38     or    a,$38
1221: c4 38     mov   $38,a
1223: 3f 22 14  call  $1422
1226: 6f        ret

; vcmd fa - echo off
1227: e4 13     mov   a,$13
1229: 04 38     or    a,$38
122b: 44 13     eor   a,$13
122d: c4 38     mov   $38,a
122f: 3f 22 14  call  $1422
1232: 6f        ret

; vcmd fb - set FIR filter
1233: c4 b0     mov   $b0,a
1235: 3f 24 10  call  $1024
1238: eb b0     mov   y,$b0
123a: 3f 31 14  call  $1431
123d: 6f        ret

; vcmd fc
123e: c4 b0     mov   $b0,a
1240: 68 01     cmp   a,#$01
1242: d0 07     bne   $124b
1244: e8 01     mov   a,#$01
1246: d5 30 05  mov   $0530+x,a
1249: 2f 05     bra   $1250
124b: e8 00     mov   a,#$00
124d: d5 30 05  mov   $0530+x,a
1250: 6f        ret

1251: db $00,$10,$20,$30,$40,$50,$60,$70

1259: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

1261: db $01,$0f,$0f,$01,$01,$01,$01,$01
1269: db $01,$01,$f1,$f1,$f1,$01,$01,$05
1271: db $05,$05,$f1,$01,$01,$01,$05,$05
1279: db $01,$01,$01,$01,$01,$01,$01,$01
1281: db $01,$01,$01,$01,$01,$01,$01
1288: db $f1,$f1,$f1,$01,$01,$01,$01,$01,$01
1291: db $01,$01,$01,$01,$01,$01,$01,$01
1299: db $01,$01,$01,$01,$01,$01,$01,$01
12a1: db $01,$01,$01,$01,$01,$01,$01,$01
12a9: db $01,$01,$01,$01,$01,$01,$01,$01
12b1: db $01,$01,$01,$01,$01,$01,$01,$01
12b9: db $01,$01,$01,$01,$01,$01,$01,$01
12c1: db $01,$01,$01,$01,$01,$01,$01,$01
12c9: db $01,$01,$01,$01,$01,$01,$01,$01
12d1: db $01,$01,$01,$01,$01,$01,$01,$01
12d9: db $01,$01,$01,$01,$01,$01,$01,$01

; pitch table
12e1: dw $085f
12e3: dw $08de
12e5: dw $0965
12e7: dw $09f4
12e9: dw $0a8c
12eb: dw $0b2c
12ed: dw $0bd6
12ef: dw $0c8b
12f1: dw $0d4a
12f3: dw $0e14
12f5: dw $0eea
12f7: dw $0fcd
12f9: dw $10be
12fb: dw $11bd
12fd: dw $12cb
12ff: dw $13e9
1301: dw $1518
1303: dw $1659
1305: dw $17ad
1307: dw $1916
1309: dw $1a94
130b: dw $1c28
130d: dw $1dd5
130f: dw $1f9b

; version string
1311: db "== Ver1.32 Copyright K.Suemura =="

; vcmd dispatch table
1332: dw $102e ; d5 - set instrument
1334: dw $1074 ; d6 - call subroutine
1336: dw $1078 ; d7 - volume
1338: dw $1089 ; d8 - set ASDR
133a: dw $10a3 ; d9 - set FIR (1)
133c: dw $10af ; da - set FIR (2)
113e: dw $10c1 ; db - global transpose
1140: dw $10c4 ; dc - per-voice transpose
1142: dw $10c8 ; dd - loop start
1144: dw $10d6 ; de - loop end
1146: dw $10e7 ; df - tempo
1148: dw $10fa ; e0 - pitch slide
134a: dw $112e ; e1 - vibrato on
134c: dw $113a ; e2 - vibrato off
134e: dw $1146 ; e3 - vibrato fade
1350: dw $1157 ; e4 - master volume
1352: dw $1171 ; e5 - tuning
1354: dw $1187 ; e6 - set velocity
1356: dw $118b ; e7 - set velocity
1358: dw $118f ; e8 - set velocity
135a: dw $1193 ; e9 - set velocity
135c: dw $1197 ; ea - set velocity
135e: dw $119b ; eb - set velocity
1360: dw $119f ; ec - set velocity
1362: dw $11a3 ; ed - set velocity
1364: dw $11a7 ; ee - set velocity
1366: dw $11ab ; ef - set velocity
1368: dw $11af ; f0 - set velocity
136a: dw $11b3 ; f1 - set velocity
136c: dw $11b7 ; f2 - set velocity
136e: dw $11bb ; f3 - set velocity
1370: dw $11bf ; f4 - set velocity
1372: dw $11c3 ; f5 - set velocity
1374: dw $11c7 ; f6 - echo vbits/volume
1376: dw $11d4 ; f7 - disable echo
1378: dw $11de ; f8 - echo volume fade
137a: dw $121d ; f9 - echo on
137c: dw $1227 ; fa - echo off
137e: dw $1233 ; fb - set FIR filter
1380: dw $123e ; fc

; vcmd lengths
1382: db $01,$00,$01,$02,$01,$02,$01,$01 ; d5-d9
138a: db $00,$00,$01,$03,$03,$00,$01,$01 ; da-e4
1392: db $01,$00,$00,$00,$00,$00,$00,$00 ; e5-e9
139a: db $00,$00,$00,$00,$00,$00,$00,$00 ; ea-f4
13a2: db $00,$03,$00,$03,$00,$00,$02,$01 ; f5-f9

13aa: db $00,$0c,$18,$24,$30,$3c,$48,$54
13b2: db $60,$6c,$78,$85,$8d,$94,$98,$9b
13ba: db $9e,$9f,$a0,$a1,$b4,$a2,$a1,$a0
13c2: db $9f,$9e,$9b,$98,$94,$8d,$85,$78
13ca: db $6c,$60,$54,$48,$3c,$30,$24,$18
13d2: db $0c,$b4

13d4: db $78,$78,$78,$78,$78,$78,$78,$78
13dc: db $78,$78,$78,$78,$78,$78,$78,$78
13e4: db $78,$78,$78,$78,$b4

13e9: cb f2     mov   $f2,y
13eb: c4 f3     mov   $f3,a
13ed: eb 15     mov   y,$15
13ef: 6f        ret

13f0: 8d 0c     mov   y,#$0c
13f2: 3f e9 13  call  $13e9
13f5: 8d 1c     mov   y,#$1c
13f7: 5f e9 13  jmp   $13e9

13fa: 8d 2c     mov   y,#$2c
13fc: 5f e9 13  jmp   $13e9

13ff: 8d 3c     mov   y,#$3c
1401: 5f e9 13  jmp   $13e9

1404: 8d 4c     mov   y,#$4c
1406: 5f e9 13  jmp   $13e9

1409: 8d 5c     mov   y,#$5c
140b: 5f e9 13  jmp   $13e9

140e: 8d 6c     mov   y,#$6c
1410: 5f e9 13  jmp   $13e9

1413: 8d 0d     mov   y,#$0d
1415: 5f e9 13  jmp   $13e9

1418: 8d 2d     mov   y,#$2d
141a: 5f e9 13  jmp   $13e9

141d: 8d 3d     mov   y,#$3d
141f: 5f e9 13  jmp   $13e9

1422: 8d 4d     mov   y,#$4d
1424: 5f e9 13  jmp   $13e9

1427: 8d 6d     mov   y,#$6d
1429: 5f e9 13  jmp   $13e9

142c: 8d 7d     mov   y,#$7d
142e: 5f e9 13  jmp   $13e9

1431: 6d        push  y
1432: 2d        push  a
1433: f6 59 12  mov   a,$1259+y
1436: fd        mov   y,a
1437: ae        pop   a
1438: 3f e9 13  call  $13e9
143b: ee        pop   y
143c: 6f        ret

143d: 2d        push  a
143e: f6 51 12  mov   a,$1251+y
1441: 60        clrc
1442: 88 00     adc   a,#$00
1444: fd        mov   y,a
1445: ae        pop   a
1446: 5f e9 13  jmp   $13e9
1449: 2d        push  a
144a: f6 51 12  mov   a,$1251+y
144d: 60        clrc
144e: 88 01     adc   a,#$01
1450: fd        mov   y,a
1451: ae        pop   a
1452: 5f e9 13  jmp   $13e9
1455: 6d        push  y
1456: 2d        push  a
1457: f6 51 12  mov   a,$1251+y
145a: 60        clrc
145b: 88 02     adc   a,#$02
145d: fd        mov   y,a
145e: ae        pop   a
145f: 3f e9 13  call  $13e9
1462: ee        pop   y
1463: f6 51 12  mov   a,$1251+y
1466: 60        clrc
1467: 88 03     adc   a,#$03
1469: fd        mov   y,a
146a: 7d        mov   a,x
146b: 5f e9 13  jmp   $13e9
146e: 2d        push  a
146f: f6 51 12  mov   a,$1251+y
1472: 60        clrc
1473: 88 04     adc   a,#$04
1475: fd        mov   y,a
1476: ae        pop   a
1477: 5f e9 13  jmp   $13e9
147a: e8 ee     mov   a,#$ee
147c: c5 f4 00  mov   $00f4,a
147f: cd ff     mov   x,#$ff
1481: c9 f1 00  mov   $00f1,x
1484: 5f c0 ff  jmp   $ffc0
1487: e8 ca     mov   a,#$ca
1489: c5 f4 00  mov   $00f4,a
148c: e5 f4 00  mov   a,$00f4
148f: 68 00     cmp   a,#$00
1491: d0 f9     bne   $148c
1493: cd 30     mov   x,#$30
1495: c9 f1 00  mov   $00f1,x
1498: 5f 00 07  jmp   $0700
149b: e8 20     mov   a,#$20
149d: 3f 0e 14  call  $140e
14a0: 5f dd 0c  jmp   $0cdd

; note dur%'s
3b00: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

; per-note velocity values
3b08: db $0a,$19,$28,$3c,$50,$64,$7d,$96
3b10: db $aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff