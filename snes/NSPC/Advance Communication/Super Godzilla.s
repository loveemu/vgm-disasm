0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e0     cmp   x,#$e0
080a: d0 fb     bne   $0807
080c: 5d        mov   x,a
080d: d5 00 01  mov   $0100+x,a
0810: 3d        inc   x
0811: c8 10     cmp   x,#$10
0813: d0 f8     bne   $080d
0815: 5d        mov   x,a
0816: d5 00 02  mov   $0200+x,a
0819: d5 00 03  mov   $0300+x,a
081c: d5 00 04  mov   $0400+x,a
081f: d5 00 05  mov   $0500+x,a
0822: d5 00 06  mov   $0600+x,a
0825: 3d        inc   x
0826: d0 ee     bne   $0816
0828: bc        inc   a
0829: 3f 3d 0e  call  $0e3d
082c: a2 48     set5  $48
082e: e8 7f     mov   a,#$7f
0830: 3f 05 12  call  $1205
0833: e8 22     mov   a,#$22
0835: 8d 5d     mov   y,#$5d
0837: 3f 28 0a  call  $0a28
083a: e8 00     mov   a,#$00
083c: c5 00 06  mov   $0600,a
083f: e8 24     mov   a,#$24
0841: c5 01 06  mov   $0601,a
0844: e8 f0     mov   a,#$f0
0846: c5 f1 00  mov   $00f1,a
0849: e8 10     mov   a,#$10
084b: c5 fa 00  mov   $00fa,a
084e: c4 53     mov   $53,a
0850: e8 01     mov   a,#$01
0852: c5 f1 00  mov   $00f1,a
0855: 3f 04 14  call  $1404
0858: 3f d2 13  call  $13d2
085b: 3f a0 08  call  $08a0
085e: 3f 04 14  call  $1404
0861: ec fd 00  mov   y,$00fd
0864: f0 fb     beq   $0861
0866: 6d        push  y
0867: e8 20     mov   a,#$20
0869: cf        mul   ya
086a: 60        clrc
086b: 84 43     adc   a,$43
086d: c4 43     mov   $43,a
086f: 90 0a     bcc   $087b
0871: 69 4d 4c  cmp   ($4c),($4d)
0874: f0 02     beq   $0878
0876: ab 4c     inc   $4c
0878: 3f 9c 15  call  $159c
087b: 3f 04 14  call  $1404
087e: e4 53     mov   a,$53
0880: ee        pop   y
0881: cf        mul   ya
0882: 60        clrc
0883: 84 51     adc   a,$51
0885: c4 51     mov   $51,a
0887: 90 0d     bcc   $0896
0889: 3f 81 0a  call  $0a81
088c: e4 07     mov   a,$07
088e: d0 c5     bne   $0855
0890: 3f e2 08  call  $08e2
0893: 5f 55 08  jmp   $0855

0896: e4 07     mov   a,$07
0898: d0 bb     bne   $0855
089a: 3f cb 08  call  $08cb
089d: 5f 55 08  jmp   $0855

08a0: e4 07     mov   a,$07
08a2: f0 04     beq   $08a8
08a4: b2 45     clr5  $45
08a6: b2 46     clr5  $46
08a8: 8d 0a     mov   y,#$0a
08aa: ad 05     cmp   y,#$05
08ac: f0 07     beq   $08b5
08ae: b0 08     bcs   $08b8
08b0: 69 4d 4c  cmp   ($4c),($4d)
08b3: d0 0f     bne   $08c4
08b5: e3 4c 0c  bbs7  $4c,$08c4
08b8: f6 a3 13  mov   a,$13a3+y
08bb: c4 f2     mov   $f2,a
08bd: f6 ad 13  mov   a,$13ad+y
08c0: 5d        mov   x,a
08c1: e6        mov   a,(x)
08c2: c4 f3     mov   $f3,a
08c4: fe e4     dbnz  y,$08aa
08c6: cb 45     mov   $45,y
08c8: cb 46     mov   $46,y
08ca: 6f        ret

08cb: e4 04     mov   a,$04
08cd: f0 12     beq   $08e1
08cf: cd 00     mov   x,#$00
08d1: 8f 01 47  mov   $47,#$01
08d4: f4 31     mov   a,$31+x
08d6: f0 03     beq   $08db
08d8: 3f 13 11  call  $1113
08db: 3d        inc   x
08dc: 3d        inc   x
08dd: 0b 47     asl   $47
08df: d0 f3     bne   $08d4
08e1: 6f        ret

08e2: e4 04     mov   a,$04
08e4: c4 f4     mov   $f4,a
08e6: e4 f4     mov   a,$f4
08e8: 64 f4     cmp   a,$f4
08ea: d0 fa     bne   $08e6
08ec: 68 10     cmp   a,#$10
08ee: 90 04     bcc   $08f4
08f0: 68 e0     cmp   a,#$e0
08f2: 90 02     bcc   $08f6
08f4: c4 00     mov   $00,a
08f6: 6f        ret

08f7: ad ca     cmp   y,#$ca
08f9: 90 05     bcc   $0900
08fb: 3f 74 0c  call  $0c74
08fe: 8d a4     mov   y,#$a4
0900: ad c8     cmp   y,#$c8
0902: b0 f2     bcs   $08f6
0904: e4 1a     mov   a,$1a
0906: 24 47     and   a,$47
0908: d0 ec     bne   $08f6
090a: dd        mov   a,y
090b: 28 7f     and   a,#$7f
090d: 60        clrc
090e: 84 50     adc   a,$50
0910: 60        clrc
0911: 95 f0 02  adc   a,$02f0+x
0914: d5 61 03  mov   $0361+x,a
0917: f5 81 03  mov   a,$0381+x
091a: d5 60 03  mov   $0360+x,a
091d: f5 b1 02  mov   a,$02b1+x
0920: 5c        lsr   a
0921: e8 00     mov   a,#$00
0923: 7c        ror   a
0924: d5 a0 02  mov   $02a0+x,a
0927: e8 00     mov   a,#$00
0929: d4 b0     mov   $b0+x,a
092b: d5 00 01  mov   $0100+x,a
092e: d5 d0 02  mov   $02d0+x,a
0931: d4 c0     mov   $c0+x,a
0933: 09 47 5e  or    ($5e),($47)
0936: 09 47 45  or    ($45),($47)
0939: 4d        push  x
093a: 7d        mov   a,x
093b: 5c        lsr   a
093c: 5d        mov   x,a
093d: f5 45 17  mov   a,$1745+x
0940: 25 fd 05  and   a,$05fd
0943: f0 0c     beq   $0951
0945: f5 4d 17  mov   a,$174d+x
0948: 25 fd 05  and   a,$05fd
094b: c5 fd 05  mov   $05fd,a
094e: 5f 6d 09  jmp   $096d

0951: f5 45 17  mov   a,$1745+x
0954: 25 ff 05  and   a,$05ff
0957: f0 1b     beq   $0974
0959: f5 45 17  mov   a,$1745+x
095c: 25 fe 05  and   a,$05fe
095f: f0 0c     beq   $096d
0961: f5 4d 17  mov   a,$174d+x
0964: 25 fe 05  and   a,$05fe
0967: c5 fe 05  mov   $05fe,a
096a: 5f 74 09  jmp   $0974

096d: f5 4d 17  mov   a,$174d+x
0970: 24 45     and   a,$45
0972: c4 45     mov   $45,a
0974: ce        pop   x
0975: f5 80 02  mov   a,$0280+x
0978: d4 a0     mov   $a0+x,a
097a: f0 1e     beq   $099a
097c: f5 81 02  mov   a,$0281+x
097f: d4 a1     mov   $a1+x,a
0981: f5 90 02  mov   a,$0290+x
0984: d0 0a     bne   $0990
0986: f5 61 03  mov   a,$0361+x
0989: 80        setc
098a: b5 91 02  sbc   a,$0291+x
098d: d5 61 03  mov   $0361+x,a
0990: f5 91 02  mov   a,$0291+x
0993: 60        clrc
0994: 95 61 03  adc   a,$0361+x
0997: 3f bc 0e  call  $0ebc
099a: 3f d4 0e  call  $0ed4
099d: 8d 00     mov   y,#$00
099f: e4 11     mov   a,$11
09a1: 80        setc
09a2: a8 34     sbc   a,#$34
09a4: b0 09     bcs   $09af
09a6: e4 11     mov   a,$11
09a8: 80        setc
09a9: a8 13     sbc   a,#$13
09ab: b0 06     bcs   $09b3
09ad: dc        dec   y
09ae: 1c        asl   a
09af: 7a 10     addw  ya,$10
09b1: da 10     movw  $10,ya
09b3: 4d        push  x
09b4: e4 11     mov   a,$11
09b6: 1c        asl   a
09b7: 8d 00     mov   y,#$00
09b9: cd 18     mov   x,#$18
09bb: 9e        div   ya,x
09bc: 5d        mov   x,a
09bd: f6 b9 13  mov   a,$13b9+y
09c0: c4 15     mov   $15,a
09c2: f6 b8 13  mov   a,$13b8+y
09c5: c4 14     mov   $14,a
09c7: f6 bb 13  mov   a,$13bb+y
09ca: 2d        push  a
09cb: f6 ba 13  mov   a,$13ba+y
09ce: ee        pop   y
09cf: 9a 14     subw  ya,$14
09d1: eb 10     mov   y,$10
09d3: cf        mul   ya
09d4: dd        mov   a,y
09d5: 8d 00     mov   y,#$00
09d7: 7a 14     addw  ya,$14
09d9: cb 15     mov   $15,y
09db: 1c        asl   a
09dc: 2b 15     rol   $15
09de: c4 14     mov   $14,a
09e0: 2f 04     bra   $09e6
09e2: 4b 15     lsr   $15
09e4: 7c        ror   a
09e5: 3d        inc   x
09e6: c8 06     cmp   x,#$06
09e8: d0 f8     bne   $09e2
09ea: c4 14     mov   $14,a
09ec: ce        pop   x
09ed: f5 20 02  mov   a,$0220+x
09f0: eb 15     mov   y,$15
09f2: cf        mul   ya
09f3: da 16     movw  $16,ya
09f5: f5 20 02  mov   a,$0220+x
09f8: eb 14     mov   y,$14
09fa: cf        mul   ya
09fb: 6d        push  y
09fc: f5 21 02  mov   a,$0221+x
09ff: eb 14     mov   y,$14
0a01: cf        mul   ya
0a02: 7a 16     addw  ya,$16
0a04: da 16     movw  $16,ya
0a06: f5 21 02  mov   a,$0221+x
0a09: eb 15     mov   y,$15
0a0b: cf        mul   ya
0a0c: fd        mov   y,a
0a0d: ae        pop   a
0a0e: 7a 16     addw  ya,$16
0a10: da 16     movw  $16,ya
0a12: 7d        mov   a,x
0a13: 9f        xcn   a
0a14: 5c        lsr   a
0a15: 08 02     or    a,#$02
0a17: fd        mov   y,a
0a18: e4 16     mov   a,$16
0a1a: 3f 20 0a  call  $0a20
0a1d: fc        inc   y
0a1e: e4 17     mov   a,$17
0a20: 2d        push  a
0a21: e4 47     mov   a,$47
0a23: 24 1a     and   a,$1a
0a25: ae        pop   a
0a26: d0 04     bne   $0a2c
0a28: cb f2     mov   $f2,y
0a2a: c4 f3     mov   $f3,a
0a2c: 6f        ret

0a2d: 8d 00     mov   y,#$00
0a2f: f7 40     mov   a,($40)+y
0a31: 3a 40     incw  $40
0a33: 2d        push  a
0a34: f7 40     mov   a,($40)+y
0a36: 3a 40     incw  $40
0a38: fd        mov   y,a
0a39: ae        pop   a
0a3a: 6f        ret

0a3b: 3f 3f 12  call  $123f
0a3e: c4 08     mov   $08,a
0a40: c4 04     mov   $04,a
0a42: 1c        asl   a
0a43: f0 0d     beq   $0a52
0a45: 5d        mov   x,a
0a46: f5 7f e0  mov   a,$e07f+x
0a49: fd        mov   y,a
0a4a: f5 7e e0  mov   a,$e07e+x
0a4d: da 40     movw  $40,ya
0a4f: 8f 02 0c  mov   $0c,#$02
0a52: e4 1a     mov   a,$1a
0a54: 48 ff     eor   a,#$ff
0a56: 0e 46 00  tset1 $0046
0a59: 6f        ret

0a5a: cd 0e     mov   x,#$0e
0a5c: 8f 80 47  mov   $47,#$80
0a5f: 3f b6 11  call  $11b6
0a62: 1d        dec   x
0a63: 1d        dec   x
0a64: 4b 47     lsr   $47
0a66: d0 f7     bne   $0a5f
0a68: 3f de 11  call  $11de
0a6b: 6f        ret

0a6c: 80        setc
0a6d: a8 e0     sbc   a,#$e0
0a6f: 5d        mov   x,a
0a70: f5 0f 12  mov   a,$120f+x
0a73: 3f 05 12  call  $1205
0a76: 5f b9 0a  jmp   $0ab9

0a79: e8 00     mov   a,#$00
0a7b: c5 80 05  mov   $0580,a
0a7e: 5f b9 0a  jmp   $0ab9

0a81: e4 07     mov   a,$07
0a83: d0 34     bne   $0ab9
0a85: eb 08     mov   y,$08
0a87: e4 00     mov   a,$00
0a89: c4 08     mov   $08,a
0a8b: f0 2c     beq   $0ab9
0a8d: 68 e0     cmp   a,#$e0
0a8f: 90 21     bcc   $0ab2
0a91: 68 f0     cmp   a,#$f0
0a93: 90 d7     bcc   $0a6c
0a95: 68 f0     cmp   a,#$f0
0a97: f0 b9     beq   $0a52
0a99: 68 f1     cmp   a,#$f1
0a9b: f0 1c     beq   $0ab9
0a9d: 68 ff     cmp   a,#$ff
0a9f: f0 9a     beq   $0a3b
0aa1: 68 f2     cmp   a,#$f2
0aa3: f0 d6     beq   $0a7b
0aa5: 68 f3     cmp   a,#$f3
0aa7: f0 d0     beq   $0a79
0aa9: 68 f4     cmp   a,#$f4
0aab: d0 05     bne   $0ab2
0aad: e8 00     mov   a,#$00
0aaf: 5f 40 0a  jmp   $0a40

0ab2: 7e 00     cmp   y,$00
0ab4: f0 03     beq   $0ab9
0ab6: 5f 40 0a  jmp   $0a40

0ab9: e4 04     mov   a,$04
0abb: f0 ae     beq   $0a6b
0abd: e4 0c     mov   a,$0c
0abf: f0 66     beq   $0b27
0ac1: 6e 0c 96  dbnz  $0c,$0a5a
0ac4: 3f 2d 0a  call  $0a2d
0ac7: d0 25     bne   $0aee
0ac9: fd        mov   y,a
0aca: d0 03     bne   $0acf
0acc: 5f 40 0a  jmp   $0a40

0acf: 68 80     cmp   a,#$80
0ad1: f0 06     beq   $0ad9
0ad3: 68 81     cmp   a,#$81
0ad5: d0 06     bne   $0add
0ad7: e8 00     mov   a,#$00
0ad9: c4 1b     mov   $1b,a
0adb: 2f e7     bra   $0ac4
0add: 8b 42     dec   $42
0adf: 10 02     bpl   $0ae3
0ae1: c4 42     mov   $42,a
0ae3: 3f 2d 0a  call  $0a2d
0ae6: f8 42     mov   x,$42
0ae8: f0 da     beq   $0ac4
0aea: da 40     movw  $40,ya
0aec: 2f d6     bra   $0ac4
0aee: 2d        push  a
0aef: 4d        push  x
0af0: 6d        push  y
0af1: 3f 04 14  call  $1404
0af4: ee        pop   y
0af5: ce        pop   x
0af6: ae        pop   a
0af7: da 16     movw  $16,ya
0af9: 8d 0f     mov   y,#$0f
0afb: f7 16     mov   a,($16)+y
0afd: d6 30 00  mov   $0030+y,a
0b00: dc        dec   y
0b01: 10 f8     bpl   $0afb
0b03: cd 00     mov   x,#$00
0b05: 8f 01 47  mov   $47,#$01
0b08: f4 31     mov   a,$31+x
0b0a: f0 0a     beq   $0b16
0b0c: f5 11 02  mov   a,$0211+x
0b0f: d0 05     bne   $0b16
0b11: e8 00     mov   a,#$00
0b13: 3f 74 0c  call  $0c74
0b16: e8 00     mov   a,#$00
0b18: d4 80     mov   $80+x,a
0b1a: d4 90     mov   $90+x,a
0b1c: d4 91     mov   $91+x,a
0b1e: bc        inc   a
0b1f: d4 70     mov   $70+x,a
0b21: 3d        inc   x
0b22: 3d        inc   x
0b23: 0b 47     asl   $47
0b25: d0 e1     bne   $0b08
0b27: cd 00     mov   x,#$00
0b29: d8 5e     mov   $5e,x
0b2b: 8f 01 47  mov   $47,#$01
0b2e: 4d        push  x
0b2f: 3f 04 14  call  $1404
0b32: ce        pop   x
0b33: d8 44     mov   $44,x
0b35: f4 31     mov   a,$31+x
0b37: f0 75     beq   $0bae
0b39: 9b 70     dec   $70+x
0b3b: d0 67     bne   $0ba4
0b3d: 3f 19 0c  call  $0c19
0b40: d0 1a     bne   $0b5c
0b42: f4 80     mov   a,$80+x
0b44: d0 03     bne   $0b49
0b46: 5f c4 0a  jmp   $0ac4

0b49: 3f ba 0d  call  $0dba
0b4c: 9b 80     dec   $80+x
0b4e: d0 ed     bne   $0b3d
0b50: f5 30 02  mov   a,$0230+x
0b53: d4 30     mov   $30+x,a
0b55: f5 31 02  mov   a,$0231+x
0b58: d4 31     mov   $31+x,a
0b5a: 2f e1     bra   $0b3d
0b5c: 30 20     bmi   $0b7e
0b5e: d5 00 02  mov   $0200+x,a
0b61: 3f 19 0c  call  $0c19
0b64: 30 18     bmi   $0b7e
0b66: 2d        push  a
0b67: 9f        xcn   a
0b68: 28 07     and   a,#$07
0b6a: fd        mov   y,a
0b6b: f6 1f 12  mov   a,$121f+y         ;   set dur% from high nybble
0b6e: d5 01 02  mov   $0201+x,a
0b71: ae        pop   a
0b72: 28 0f     and   a,#$0f
0b74: fd        mov   y,a
0b75: f6 27 12  mov   a,$1227+y
0b78: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
0b7b: 3f 19 0c  call  $0c19
; vcmd branches 80-ff
0b7e: 68 db     cmp   a,#$db
0b80: 90 05     bcc   $0b87
0b82: 3f 07 0c  call  $0c07		; vcmds db-ff
0b85: 2f b6     bra   $0b3d
0b87: f5 00 04  mov   a,$0400+x
0b8a: 04 1b     or    a,$1b
0b8c: d0 04     bne   $0b92
0b8e: dd        mov   a,y
0b8f: 3f f7 08  call  $08f7
0b92: f5 00 02  mov   a,$0200+x
0b95: d4 70     mov   $70+x,a
0b97: fd        mov   y,a
0b98: f5 01 02  mov   a,$0201+x
0b9b: cf        mul   ya
0b9c: dd        mov   a,y
0b9d: d0 01     bne   $0ba0
0b9f: bc        inc   a
0ba0: d4 71     mov   $71+x,a
0ba2: 2f 07     bra   $0bab
0ba4: e4 1b     mov   a,$1b
0ba6: d0 06     bne   $0bae
0ba8: 3f 33 10  call  $1033
0bab: 3f 9c 0e  call  $0e9c
0bae: 3d        inc   x
0baf: 3d        inc   x
0bb0: 0b 47     asl   $47
0bb2: f0 03     beq   $0bb7
0bb4: 5f 2e 0b  jmp   $0b2e

0bb7: e4 54     mov   a,$54
0bb9: f0 0b     beq   $0bc6
0bbb: ba 56     movw  ya,$56
0bbd: 7a 52     addw  ya,$52
0bbf: 6e 54 02  dbnz  $54,$0bc4
0bc2: ba 54     movw  ya,$54
0bc4: da 52     movw  $52,ya
0bc6: e4 68     mov   a,$68
0bc8: f0 15     beq   $0bdf
0bca: ba 64     movw  ya,$64
0bcc: 7a 60     addw  ya,$60
0bce: da 60     movw  $60,ya
0bd0: ba 66     movw  ya,$66
0bd2: 7a 62     addw  ya,$62
0bd4: 6e 68 06  dbnz  $68,$0bdd
0bd7: ba 68     movw  ya,$68
0bd9: da 60     movw  $60,ya
0bdb: eb 6a     mov   y,$6a
0bdd: da 62     movw  $62,ya
0bdf: e4 5a     mov   a,$5a
0be1: f0 0e     beq   $0bf1
0be3: ba 5c     movw  ya,$5c
0be5: 7a 58     addw  ya,$58
0be7: 6e 5a 02  dbnz  $5a,$0bec
0bea: ba 5a     movw  ya,$5a
0bec: da 58     movw  $58,ya
0bee: 8f ff 5e  mov   $5e,#$ff
0bf1: 3f 04 14  call  $1404
0bf4: cd 00     mov   x,#$00
0bf6: 8f 01 47  mov   $47,#$01
0bf9: f4 31     mov   a,$31+x
0bfb: f0 03     beq   $0c00
0bfd: 3f 67 0f  call  $0f67
0c00: 3d        inc   x
0c01: 3d        inc   x
0c02: 0b 47     asl   $47
0c04: d0 f3     bne   $0bf9
0c06: 6f        ret

; dispatch vcmd in A
0c07: 1c        asl   a
0c08: fd        mov   y,a
0c09: f6 46 0e  mov   a,$0e46+y
0c0c: 2d        push  a
0c0d: f6 45 0e  mov   a,$0e45+y
0c10: 2d        push  a
0c11: dd        mov   a,y
0c12: 5c        lsr   a
0c13: fd        mov   y,a
0c14: f6 e8 0e  mov   a,$0ee8+y
0c17: f0 08     beq   $0c21
0c19: e7 30     mov   a,($30+x)
0c1b: bb 30     inc   $30+x
0c1d: d0 02     bne   $0c21
0c1f: bb 31     inc   $31+x
0c21: fd        mov   y,a
0c22: 6f        ret

; vcmd dc - set ASDR
0c23: c5 fb 05  mov   $05fb,a
0c26: 7d        mov   a,x
0c27: 9f        xcn   a
0c28: 5c        lsr   a
0c29: 08 05     or    a,#$05
0c2b: c4 f2     mov   $f2,a
0c2d: 3f 19 0c  call  $0c19
0c30: 9f        xcn   a
0c31: 05 fb 05  or    a,$05fb
0c34: 08 80     or    a,#$80
0c36: c4 f3     mov   $f3,a
0c38: 6f        ret

; vcmd dd - set ASDR envelope
0c39: 9f        xcn   a
0c3a: 1c        asl   a
0c3b: c5 fc 05  mov   $05fc,a
0c3e: 7d        mov   a,x
0c3f: 9f        xcn   a
0c40: 5c        lsr   a
0c41: 08 06     or    a,#$06
0c43: c4 f2     mov   $f2,a
0c45: 3f 19 0c  call  $0c19
0c48: 05 fc 05  or    a,$05fc
0c4b: c4 f3     mov   $f3,a
0c4d: 6f        ret

; vcmd de - set ASDR from table (1)
0c4e: 7d        mov   a,x
0c4f: 5c        lsr   a
0c50: fd        mov   y,a
0c51: f6 45 17  mov   a,$1745+y
0c54: 05 ff 05  or    a,$05ff
0c57: c5 ff 05  mov   $05ff,a
0c5a: f6 45 17  mov   a,$1745+y
0c5d: 0e fe 05  tset1 $05fe
0c60: 6f        ret

; vcmd df - set ASDR from table (2)
0c61: 7d        mov   a,x
0c62: 5c        lsr   a
0c63: fd        mov   y,a
0c64: f6 4d 17  mov   a,$174d+y
0c67: 25 ff 05  and   a,$05ff
0c6a: c5 ff 05  mov   $05ff,a
0c6d: f6 45 17  mov   a,$1745+y
0c70: 0e fd 05  tset1 $05fd
0c73: 6f        ret

; vcmd e0 - set instrument
0c74: d5 11 02  mov   $0211+x,a
0c77: fd        mov   y,a
0c78: 10 07     bpl   $0c81
0c7a: 80        setc
0c7b: a8 ca     sbc   a,#$ca
0c7d: fd        mov   y,a
0c7e: f6 a0 e0  mov   a,$e0a0+y
0c81: 8d 06     mov   y,#$06
0c83: cf        mul   ya
0c84: da 14     movw  $14,ya
0c86: 60        clrc
0c87: 98 00 14  adc   $14,#$00
0c8a: 98 20 15  adc   $15,#$20
0c8d: e4 1a     mov   a,$1a
0c8f: 24 47     and   a,$47
0c91: d0 38     bne   $0ccb
0c93: 4d        push  x
0c94: 7d        mov   a,x
0c95: 9f        xcn   a
0c96: 5c        lsr   a
0c97: 08 04     or    a,#$04
0c99: 5d        mov   x,a
0c9a: 8d 00     mov   y,#$00
0c9c: f7 14     mov   a,($14)+y
0c9e: 10 0e     bpl   $0cae
0ca0: 28 1f     and   a,#$1f
0ca2: 38 20 48  and   $48,#$20
0ca5: 0e 48 00  tset1 $0048
0ca8: 09 47 49  or    ($49),($47)
0cab: dd        mov   a,y
0cac: 2f 07     bra   $0cb5
0cae: e4 47     mov   a,$47
0cb0: 4e 49 00  tclr1 $0049
0cb3: f7 14     mov   a,($14)+y
0cb5: d8 f2     mov   $f2,x
0cb7: c4 f3     mov   $f3,a
0cb9: 3d        inc   x
0cba: fc        inc   y
0cbb: ad 04     cmp   y,#$04
0cbd: d0 f4     bne   $0cb3
0cbf: ce        pop   x
0cc0: f7 14     mov   a,($14)+y
0cc2: d5 21 02  mov   $0221+x,a
0cc5: fc        inc   y
0cc6: f7 14     mov   a,($14)+y
0cc8: d5 20 02  mov   $0220+x,a
0ccb: 6f        ret

; vcmd e1 - pan
0ccc: d5 51 03  mov   $0351+x,a
0ccf: 28 1f     and   a,#$1f
0cd1: d5 31 03  mov   $0331+x,a
0cd4: e8 00     mov   a,#$00
0cd6: d5 30 03  mov   $0330+x,a
0cd9: 6f        ret

; vcmd e2 - pan fade
0cda: d4 91     mov   $91+x,a
0cdc: 2d        push  a
0cdd: 3f 19 0c  call  $0c19
0ce0: d5 50 03  mov   $0350+x,a
0ce3: 80        setc
0ce4: b5 31 03  sbc   a,$0331+x
0ce7: ce        pop   x
0ce8: 3f df 0e  call  $0edf
0ceb: d5 40 03  mov   $0340+x,a
0cee: dd        mov   a,y
0cef: d5 41 03  mov   $0341+x,a
0cf2: 6f        ret

; vcmd e3 - vibrato on
0cf3: d5 b0 02  mov   $02b0+x,a
0cf6: 3f 19 0c  call  $0c19
0cf9: d5 a1 02  mov   $02a1+x,a
0cfc: 3f 19 0c  call  $0c19
; vcmd e4 - vibrato off
0cff: d4 b1     mov   $b1+x,a
0d01: d5 c1 02  mov   $02c1+x,a
0d04: e8 00     mov   a,#$00
0d06: d5 b1 02  mov   $02b1+x,a
0d09: 6f        ret

; vcmd f0 - vibrato fade
0d0a: d5 b1 02  mov   $02b1+x,a
0d0d: 2d        push  a
0d0e: 8d 00     mov   y,#$00
0d10: f4 b1     mov   a,$b1+x
0d12: ce        pop   x
0d13: 9e        div   ya,x
0d14: f8 44     mov   x,$44
0d16: d5 c0 02  mov   $02c0+x,a
0d19: 6f        ret

; vcmd e5 - master volume
0d1a: e8 00     mov   a,#$00
0d1c: da 58     movw  $58,ya
0d1e: 6f        ret

; vcmd e6 - master volume fade
0d1f: c4 5a     mov   $5a,a
0d21: 3f 19 0c  call  $0c19
0d24: c4 5b     mov   $5b,a
0d26: 80        setc
0d27: a4 59     sbc   a,$59
0d29: f8 5a     mov   x,$5a
0d2b: 3f df 0e  call  $0edf
0d2e: da 5c     movw  $5c,ya
0d30: 6f        ret

; vcmd e7 - tempo
0d31: e8 00     mov   a,#$00
0d33: da 52     movw  $52,ya
0d35: 6f        ret

; vcmd e8 - tempo fade
0d36: c4 54     mov   $54,a
0d38: 3f 19 0c  call  $0c19
0d3b: c4 55     mov   $55,a
0d3d: 80        setc
0d3e: a4 53     sbc   a,$53
0d40: f8 54     mov   x,$54
0d42: 3f df 0e  call  $0edf
0d45: da 56     movw  $56,ya
0d47: 6f        ret

; vcmd e9 - global transpose
0d48: c4 50     mov   $50,a
0d4a: 6f        ret

; vcmd ea - per-voice transpose
0d4b: d5 f0 02  mov   $02f0+x,a
0d4e: 6f        ret

; vcmd eb - tremolo on
0d4f: d5 e0 02  mov   $02e0+x,a
0d52: 3f 19 0c  call  $0c19
0d55: d5 d1 02  mov   $02d1+x,a
0d58: 3f 19 0c  call  $0c19
; vcmd ec - tremolo off
0d5b: d4 c1     mov   $c1+x,a
0d5d: 6f        ret

; vcmd f1 - pitch envelope (release)
0d5e: e8 01     mov   a,#$01
0d60: 2f 02     bra   $0d64
; vcmd f2 - pitch envelope (attack)
0d62: e8 00     mov   a,#$00
0d64: d5 90 02  mov   $0290+x,a
0d67: dd        mov   a,y
0d68: d5 81 02  mov   $0281+x,a
0d6b: 3f 19 0c  call  $0c19
0d6e: d5 80 02  mov   $0280+x,a
0d71: 3f 19 0c  call  $0c19
0d74: d5 91 02  mov   $0291+x,a
0d77: 6f        ret

; vcmd f3 - pitch envelope off
0d78: d5 80 02  mov   $0280+x,a
0d7b: 6f        ret

; vcmd ed - volume
0d7c: d5 01 03  mov   $0301+x,a
0d7f: e8 00     mov   a,#$00
0d81: d5 00 03  mov   $0300+x,a
0d84: 6f        ret

; vcmd ee - volume fade
0d85: d4 90     mov   $90+x,a
0d87: 2d        push  a
0d88: 3f 19 0c  call  $0c19
0d8b: d5 20 03  mov   $0320+x,a
0d8e: 80        setc
0d8f: b5 01 03  sbc   a,$0301+x
0d92: ce        pop   x
0d93: 3f df 0e  call  $0edf
0d96: d5 10 03  mov   $0310+x,a
0d99: dd        mov   a,y
0d9a: d5 11 03  mov   $0311+x,a
0d9d: 6f        ret

; vcmd f4 - tuning
0d9e: d5 81 03  mov   $0381+x,a
0da1: 6f        ret

; vcmd ef - call subroutine
0da2: d5 40 02  mov   $0240+x,a
0da5: 3f 19 0c  call  $0c19
0da8: d5 41 02  mov   $0241+x,a
0dab: 3f 19 0c  call  $0c19
0dae: d4 80     mov   $80+x,a
0db0: f4 30     mov   a,$30+x
0db2: d5 30 02  mov   $0230+x,a
0db5: f4 31     mov   a,$31+x
0db7: d5 31 02  mov   $0231+x,a
0dba: f5 40 02  mov   a,$0240+x
0dbd: d4 30     mov   $30+x,a
0dbf: f5 41 02  mov   a,$0241+x
0dc2: d4 31     mov   $31+x,a
0dc4: 6f        ret

; vcmd f5 - echo vbits/volume
0dc5: c4 4a     mov   $4a,a
0dc7: 3f 19 0c  call  $0c19
0dca: e8 00     mov   a,#$00
0dcc: da 60     movw  $60,ya
0dce: 3f 19 0c  call  $0c19
0dd1: e8 00     mov   a,#$00
0dd3: da 62     movw  $62,ya
0dd5: b2 48     clr5  $48
0dd7: 6f        ret

; vcmd f8 - echo volume fade
0dd8: c4 68     mov   $68,a
0dda: 3f 19 0c  call  $0c19
0ddd: c4 69     mov   $69,a
0ddf: 80        setc
0de0: a4 61     sbc   a,$61
0de2: f8 68     mov   x,$68
0de4: 3f df 0e  call  $0edf
0de7: da 64     movw  $64,ya
0de9: 3f 19 0c  call  $0c19
0dec: c4 6a     mov   $6a,a
0dee: 80        setc
0def: a4 63     sbc   a,$63
0df1: f8 68     mov   x,$68
0df3: 3f df 0e  call  $0edf
0df6: da 66     movw  $66,ya
0df8: 6f        ret

; vcmd f6 - disable echo
0df9: da 60     movw  $60,ya
0dfb: da 62     movw  $62,ya
0dfd: a2 48     set5  $48
0dff: 6f        ret

; vcmd f7 - set echo params
0e00: c5 1d 04  mov   $041d,a
0e03: 8d 08     mov   y,#$08
0e05: cf        mul   ya
0e06: c4 10     mov   $10,a
0e08: e8 e0     mov   a,#$e0
0e0a: 80        setc
0e0b: a4 10     sbc   a,$10
0e0d: c5 07 06  mov   $0607,a
0e10: e8 00     mov   a,#$00
0e12: c5 06 06  mov   $0606,a
0e15: e5 1d 04  mov   a,$041d
0e18: 3f 3d 0e  call  $0e3d
0e1b: 3f 19 0c  call  $0c19
0e1e: c4 4e     mov   $4e,a
0e20: 3f 19 0c  call  $0c19
0e23: c5 1e 04  mov   $041e,a
0e26: 8d 08     mov   y,#$08
0e28: cf        mul   ya
0e29: 5d        mov   x,a
0e2a: 8d 0f     mov   y,#$0f
0e2c: f5 84 13  mov   a,$1384+x
0e2f: 3f 28 0a  call  $0a28
0e32: 3d        inc   x
0e33: dd        mov   a,y
0e34: 60        clrc
0e35: 88 10     adc   a,#$10
0e37: fd        mov   y,a
0e38: 10 f2     bpl   $0e2c
0e3a: f8 44     mov   x,$44
0e3c: 6f        ret

0e3d: c4 4d     mov   $4d,a
0e3f: 8d 7d     mov   y,#$7d
0e41: cb f2     mov   $f2,y
0e43: e4 f3     mov   a,$f3
0e45: 64 4d     cmp   a,$4d
0e47: f0 29     beq   $0e72
0e49: 28 0f     and   a,#$0f
0e4b: 48 ff     eor   a,#$ff
0e4d: f3 4c 03  bbc7  $4c,$0e53
0e50: 60        clrc
0e51: 84 4c     adc   a,$4c
0e53: c4 4c     mov   $4c,a
0e55: 8d 04     mov   y,#$04
0e57: f6 a3 13  mov   a,$13a3+y
0e5a: c4 f2     mov   $f2,a
0e5c: e8 00     mov   a,#$00
0e5e: c4 f3     mov   $f3,a
0e60: fe f5     dbnz  y,$0e57
0e62: e4 48     mov   a,$48
0e64: 08 20     or    a,#$20
0e66: 8d 6c     mov   y,#$6c
0e68: 3f 28 0a  call  $0a28
0e6b: e4 4d     mov   a,$4d
0e6d: 8d 7d     mov   y,#$7d
0e6f: 3f 28 0a  call  $0a28
0e72: 1c        asl   a
0e73: 1c        asl   a
0e74: 1c        asl   a
0e75: 48 ff     eor   a,#$ff
0e77: 80        setc
0e78: 88 e0     adc   a,#$e0
0e7a: 8d 6d     mov   y,#$6d
0e7c: 5f 28 0a  jmp   $0a28

; vcmd fa - set perc patch base
0e7f: c4 5f     mov   $5f,a
0e81: 6f        ret

; vcmd fb - skip 1 byte
0e82: 3f 1b 0c  call  $0c1b
0e85: 6f        ret

; vcmd fc
0e86: bc        inc   a
0e87: d5 00 04  mov   $0400+x,a
0e8a: 6f        ret

; vcmd fd
0e8b: bc        inc   a
; vcmd fe - clear ASDR
0e8c: c4 1b     mov   $1b,a
0e8e: e8 00     mov   a,#$00
0e90: c5 fd 05  mov   $05fd,a
0e93: c5 fe 05  mov   $05fe,a
0e96: c5 ff 05  mov   $05ff,a
0e99: 5f 52 0a  jmp   $0a52

0e9c: f4 a0     mov   a,$a0+x
0e9e: d0 33     bne   $0ed3
0ea0: e7 30     mov   a,($30+x)
0ea2: 68 f9     cmp   a,#$f9
0ea4: d0 2d     bne   $0ed3
0ea6: 3f 1b 0c  call  $0c1b
0ea9: 3f 19 0c  call  $0c19
; vcmd f9 - pitch slide
0eac: d4 a1     mov   $a1+x,a
0eae: 3f 19 0c  call  $0c19
0eb1: d4 a0     mov   $a0+x,a
0eb3: 3f 19 0c  call  $0c19
0eb6: 60        clrc
0eb7: 84 50     adc   a,$50
0eb9: 95 f0 02  adc   a,$02f0+x
0ebc: 28 7f     and   a,#$7f
0ebe: d5 80 03  mov   $0380+x,a
0ec1: 80        setc
0ec2: b5 61 03  sbc   a,$0361+x
0ec5: fb a0     mov   y,$a0+x
0ec7: 6d        push  y
0ec8: ce        pop   x
0ec9: 3f df 0e  call  $0edf
0ecc: d5 70 03  mov   $0370+x,a
0ecf: dd        mov   a,y
0ed0: d5 71 03  mov   $0371+x,a
0ed3: 6f        ret

0ed4: f5 61 03  mov   a,$0361+x
0ed7: c4 11     mov   $11,a
0ed9: f5 60 03  mov   a,$0360+x
0edc: c4 10     mov   $10,a
0ede: 6f        ret

0edf: ed        notc
0ee0: 6b 12     ror   $12
0ee2: 10 03     bpl   $0ee7
0ee4: 48 ff     eor   a,#$ff
0ee6: bc        inc   a
0ee7: 8d 00     mov   y,#$00
0ee9: 9e        div   ya,x
0eea: 2d        push  a
0eeb: e8 00     mov   a,#$00
0eed: 9e        div   ya,x
0eee: ee        pop   y
0eef: f8 44     mov   x,$44
0ef1: f3 12 06  bbc7  $12,$0efa
0ef4: da 14     movw  $14,ya
0ef6: ba 0e     movw  ya,$0e
0ef8: 9a 14     subw  ya,$14
0efa: 6f        ret

; vcmd dispatch table
0efb: dw $0000 ; db - (invalid)
0efd: dw $0c23 ; dc - set ASDR
0eff: dw $0c39 ; dd - set ASDR envelope
0f01: dw $0c4e ; de - set ASDR from table (1)
0f03: dw $0c61 ; df - set ASDR from table (2)
0f05: dw $0c74 ; e0 - set instrument
0f07: dw $0ccc ; e1 - pan
0f09: dw $0cda ; e2 - pan fade
0f0b: dw $0cf3 ; e3 - vibrato on
0f0d: dw $0cff ; e4 - vibrato off
0f0f: dw $0d1a ; e5 - master volume
0f11: dw $0d1f ; e6 - master volume fade
0f13: dw $0d31 ; e7 - tempo
0f15: dw $0d36 ; e8 - tempo fade
0f17: dw $0d48 ; e9 - global transpose
0f19: dw $0d4b ; ea - per-voice transpose
0f1b: dw $0d4f ; eb - tremolo on
0f1d: dw $0d5b ; ec - tremolo off
0f1f: dw $0d7c ; ed - volume
0f21: dw $0d85 ; ee - volume fade
0f23: dw $0da2 ; ef - call subroutine
0f25: dw $0d0a ; f0 - vibrato fade
0f27: dw $0d5e ; f1 - pitch envelope (release)
0f29: dw $0d62 ; f2 - pitch envelope (attack)
0f2b: dw $0d78 ; f3 - pitch envelope off
0f2d: dw $0d9e ; f4 - tuning
0f2f: dw $0dc5 ; f5 - echo vbits/volume
0f31: dw $0df9 ; f6 - echo volume fade
0f33: dw $0e00 ; f7 - set echo params
0f35: dw $0dd8 ; f8 - echo volume fade
0f37: dw $0eac ; f9 - pitch slide
0f39: dw $0e7f ; fa - set perc patch base
0f3b: dw $0e82 ; fb - skip 1 byte
0f3d: dw $0e86 ; fc
0f3f: dw $0e8b ; fd
0f41: dw $0e8c ; fe - clear ASDR

; vcmd lengths
0f43: db $01,$02,$02,$00,$00,$01,$01,$02 ; db-e3
0f4b: db $03,$00,$01,$02,$01,$02,$01,$01 ; e4-ea
0f53: db $03,$00,$01,$02,$03,$01,$03,$03 ; eb-f3
0f5b: db $00,$01,$03,$00,$03,$03,$03,$01 ; f4-fa
0f63: db $02,$00,$00,$00		 ; fb-fe

0f67: f4 90     mov   a,$90+x
0f69: f0 09     beq   $0f74
0f6b: e8 00     mov   a,#$00
0f6d: 8d 03     mov   y,#$03
0f6f: 9b 90     dec   $90+x
0f71: 3f 0f 10  call  $100f
0f74: fb c1     mov   y,$c1+x
0f76: f0 23     beq   $0f9b
0f78: f5 e0 02  mov   a,$02e0+x
0f7b: de c0 1b  cbne  $c0+x,$0f99
0f7e: 09 47 5e  or    ($5e),($47)
0f81: f5 d0 02  mov   a,$02d0+x
0f84: 10 07     bpl   $0f8d
0f86: fc        inc   y
0f87: d0 04     bne   $0f8d
0f89: e8 80     mov   a,#$80
0f8b: 2f 04     bra   $0f91
0f8d: 60        clrc
0f8e: 95 d1 02  adc   a,$02d1+x
0f91: d5 d0 02  mov   $02d0+x,a
0f94: 3f 99 11  call  $1199
0f97: 2f 07     bra   $0fa0
0f99: bb c0     inc   $c0+x
0f9b: e8 ff     mov   a,#$ff
0f9d: 3f a4 11  call  $11a4
0fa0: f4 91     mov   a,$91+x
0fa2: f0 09     beq   $0fad
0fa4: e8 30     mov   a,#$30
0fa6: 8d 03     mov   y,#$03
0fa8: 9b 91     dec   $91+x
0faa: 3f 0f 10  call  $100f
0fad: e4 47     mov   a,$47
0faf: 24 5e     and   a,$5e
0fb1: f0 5b     beq   $100e
0fb3: f5 31 03  mov   a,$0331+x
0fb6: fd        mov   y,a
0fb7: f5 30 03  mov   a,$0330+x
0fba: da 10     movw  $10,ya
0fbc: 7d        mov   a,x
0fbd: 9f        xcn   a
0fbe: 5c        lsr   a
0fbf: c4 12     mov   $12,a
0fc1: e5 80 05  mov   a,$0580
0fc4: f0 10     beq   $0fd6
0fc6: 8d 51     mov   y,#$51
0fc8: f5 21 03  mov   a,$0321+x
0fcb: cf        mul   ya
0fcc: dd        mov   a,y
0fcd: eb 12     mov   y,$12
0fcf: 3f 20 0a  call  $0a20
0fd2: fc        inc   y
0fd3: 5f 20 0a  jmp   $0a20

0fd6: eb 11     mov   y,$11
0fd8: f6 6f 13  mov   a,$136f+y
0fdb: 80        setc
0fdc: b6 6e 13  sbc   a,$136e+y
0fdf: eb 10     mov   y,$10
0fe1: cf        mul   ya
0fe2: dd        mov   a,y
0fe3: eb 11     mov   y,$11
0fe5: 60        clrc
0fe6: 96 6e 13  adc   a,$136e+y
0fe9: fd        mov   y,a
0fea: f5 21 03  mov   a,$0321+x
0fed: cf        mul   ya
0fee: f5 51 03  mov   a,$0351+x
0ff1: 1c        asl   a
0ff2: 13 12 01  bbc0  $12,$0ff6
0ff5: 1c        asl   a
0ff6: dd        mov   a,y
0ff7: 90 03     bcc   $0ffc
0ff9: 48 ff     eor   a,#$ff
0ffb: bc        inc   a
0ffc: eb 12     mov   y,$12
0ffe: 3f 20 0a  call  $0a20
1001: 8d 14     mov   y,#$14
1003: e8 00     mov   a,#$00
1005: 9a 10     subw  ya,$10
1007: da 10     movw  $10,ya
1009: ab 12     inc   $12
100b: 33 12 c8  bbc1  $12,$0fd6
100e: 6f        ret

100f: 09 47 5e  or    ($5e),($47)
1012: da 14     movw  $14,ya
1014: da 16     movw  $16,ya
1016: 4d        push  x
1017: ee        pop   y
1018: 60        clrc
1019: d0 0a     bne   $1025
101b: 98 1f 16  adc   $16,#$1f
101e: e8 00     mov   a,#$00
1020: d7 14     mov   ($14)+y,a
1022: fc        inc   y
1023: 2f 09     bra   $102e
1025: 98 10 16  adc   $16,#$10
1028: 3f 2c 10  call  $102c
102b: fc        inc   y
102c: f7 14     mov   a,($14)+y
102e: 97 16     adc   a,($16)+y
1030: d7 14     mov   ($14)+y,a
1032: 6f        ret

1033: f4 71     mov   a,$71+x
1035: f0 6c     beq   $10a3
1037: 9b 71     dec   $71+x
1039: f0 05     beq   $1040
103b: e8 02     mov   a,#$02
103d: de 70 63  cbne  $70+x,$10a3
1040: f4 80     mov   a,$80+x
1042: c4 17     mov   $17,a
1044: f4 30     mov   a,$30+x
1046: fb 31     mov   y,$31+x
1048: da 14     movw  $14,ya
104a: 8d 00     mov   y,#$00
104c: f7 14     mov   a,($14)+y
104e: f0 1e     beq   $106e
1050: 30 07     bmi   $1059
1052: fc        inc   y
1053: 30 40     bmi   $1095
1055: f7 14     mov   a,($14)+y
1057: 10 f9     bpl   $1052
1059: 68 c8     cmp   a,#$c8
105b: f0 46     beq   $10a3
105d: 68 ef     cmp   a,#$ef
105f: f0 29     beq   $108a
1061: 68 db     cmp   a,#$db
1063: 90 30     bcc   $1095
1065: 6d        push  y
1066: fd        mov   y,a
1067: ae        pop   a
1068: 96 68 0e  adc   a,$0e68+y
106b: fd        mov   y,a
106c: 2f de     bra   $104c
106e: e4 17     mov   a,$17
1070: f0 23     beq   $1095
1072: 8b 17     dec   $17
1074: d0 0a     bne   $1080
1076: f5 31 02  mov   a,$0231+x
1079: 2d        push  a
107a: f5 30 02  mov   a,$0230+x
107d: ee        pop   y
107e: 2f c8     bra   $1048
1080: f5 41 02  mov   a,$0241+x
1083: 2d        push  a
1084: f5 40 02  mov   a,$0240+x
1087: ee        pop   y
1088: 2f be     bra   $1048
108a: fc        inc   y
108b: f7 14     mov   a,($14)+y
108d: 2d        push  a
108e: fc        inc   y
108f: f7 14     mov   a,($14)+y
1091: fd        mov   y,a
1092: ae        pop   a
1093: 2f b3     bra   $1048
1095: e4 47     mov   a,$47
1097: 25 ff 05  and   a,$05ff
109a: d0 07     bne   $10a3
109c: e4 47     mov   a,$47
109e: 8d 5c     mov   y,#$5c
10a0: 3f 20 0a  call  $0a20
10a3: f2 13     clr7  $13
10a5: f4 a0     mov   a,$a0+x
10a7: f0 13     beq   $10bc
10a9: f4 a1     mov   a,$a1+x
10ab: f0 04     beq   $10b1
10ad: 9b a1     dec   $a1+x
10af: 2f 0b     bra   $10bc
10b1: e2 13     set7  $13
10b3: e8 60     mov   a,#$60
10b5: 8d 03     mov   y,#$03
10b7: 9b a0     dec   $a0+x
10b9: 3f 12 10  call  $1012
10bc: 3f d4 0e  call  $0ed4
10bf: f4 b1     mov   a,$b1+x
10c1: f0 4c     beq   $110f
10c3: f5 b0 02  mov   a,$02b0+x
10c6: de b0 44  cbne  $b0+x,$110d
10c9: f5 00 01  mov   a,$0100+x
10cc: 75 b1 02  cmp   a,$02b1+x
10cf: d0 05     bne   $10d6
10d1: f5 c1 02  mov   a,$02c1+x
10d4: 2f 0d     bra   $10e3
10d6: 40        setp
10d7: bb 00     inc   $00+x
10d9: 20        clrp
10da: fd        mov   y,a
10db: f0 02     beq   $10df
10dd: f4 b1     mov   a,$b1+x
10df: 60        clrc
10e0: 95 c0 02  adc   a,$02c0+x
10e3: d4 b1     mov   $b1+x,a
10e5: f5 a0 02  mov   a,$02a0+x
10e8: 60        clrc
10e9: 95 a1 02  adc   a,$02a1+x
10ec: d5 a0 02  mov   $02a0+x,a
10ef: c4 12     mov   $12,a
10f1: 1c        asl   a
10f2: 1c        asl   a
10f3: 90 02     bcc   $10f7
10f5: 48 ff     eor   a,#$ff
10f7: fd        mov   y,a
10f8: f4 b1     mov   a,$b1+x
10fa: 68 f1     cmp   a,#$f1
10fc: 90 05     bcc   $1103
10fe: 28 0f     and   a,#$0f
1100: cf        mul   ya
1101: 2f 04     bra   $1107
1103: cf        mul   ya
1104: dd        mov   a,y
1105: 8d 00     mov   y,#$00
1107: 3f 84 11  call  $1184
110a: 5f 9d 09  jmp   $099d

110d: bb b0     inc   $b0+x
110f: e3 13 f8  bbs7  $13,$110a
1112: 6f        ret

1113: f2 13     clr7  $13
1115: f4 c1     mov   a,$c1+x
1117: f0 09     beq   $1122
1119: f5 e0 02  mov   a,$02e0+x
111c: de c0 03  cbne  $c0+x,$1122
111f: 3f 8c 11  call  $118c
1122: f5 31 03  mov   a,$0331+x
1125: fd        mov   y,a
1126: f5 30 03  mov   a,$0330+x
1129: da 10     movw  $10,ya
112b: f4 91     mov   a,$91+x
112d: f0 0a     beq   $1139
112f: f5 41 03  mov   a,$0341+x
1132: fd        mov   y,a
1133: f5 40 03  mov   a,$0340+x
1136: 3f 6e 11  call  $116e
1139: f3 13 03  bbc7  $13,$113f
113c: 3f bc 0f  call  $0fbc
113f: f2 13     clr7  $13
1141: 3f d4 0e  call  $0ed4
1144: f4 a0     mov   a,$a0+x
1146: f0 0e     beq   $1156
1148: f4 a1     mov   a,$a1+x
114a: d0 0a     bne   $1156
114c: f5 71 03  mov   a,$0371+x
114f: fd        mov   y,a
1150: f5 70 03  mov   a,$0370+x
1153: 3f 6e 11  call  $116e
1156: f4 b1     mov   a,$b1+x
1158: f0 b5     beq   $110f
115a: f5 b0 02  mov   a,$02b0+x
115d: de b0 af  cbne  $b0+x,$110f
1160: eb 51     mov   y,$51
1162: f5 a1 02  mov   a,$02a1+x
1165: cf        mul   ya
1166: dd        mov   a,y
1167: 60        clrc
1168: 95 a0 02  adc   a,$02a0+x
116b: 5f ef 10  jmp   $10ef

116e: e2 13     set7  $13
1170: cb 12     mov   $12,y
1172: 3f f1 0e  call  $0ef1
1175: 6d        push  y
1176: eb 51     mov   y,$51
1178: cf        mul   ya
1179: cb 14     mov   $14,y
117b: 8f 00 15  mov   $15,#$00
117e: eb 51     mov   y,$51
1180: ae        pop   a
1181: cf        mul   ya
1182: 7a 14     addw  ya,$14
1184: 3f f1 0e  call  $0ef1
1187: 7a 10     addw  ya,$10
1189: da 10     movw  $10,ya
118b: 6f        ret

118c: e2 13     set7  $13
118e: eb 51     mov   y,$51
1190: f5 d1 02  mov   a,$02d1+x
1193: cf        mul   ya
1194: dd        mov   a,y
1195: 60        clrc
1196: 95 d0 02  adc   a,$02d0+x
1199: 1c        asl   a
119a: 90 02     bcc   $119e
119c: 48 ff     eor   a,#$ff
119e: fb c1     mov   y,$c1+x
11a0: cf        mul   ya
11a1: dd        mov   a,y
11a2: 48 ff     eor   a,#$ff
11a4: eb 59     mov   y,$59
11a6: cf        mul   ya
11a7: f5 10 02  mov   a,$0210+x
11aa: cf        mul   ya
11ab: f5 01 03  mov   a,$0301+x
11ae: cf        mul   ya
11af: dd        mov   a,y
11b0: cf        mul   ya
11b1: dd        mov   a,y
11b2: d5 21 03  mov   $0321+x,a
11b5: 6f        ret

11b6: e8 ff     mov   a,#$ff
11b8: d5 01 03  mov   $0301+x,a
11bb: e8 0a     mov   a,#$0a
11bd: d5 51 03  mov   $0351+x,a
11c0: 28 1f     and   a,#$1f
11c2: d5 31 03  mov   $0331+x,a
11c5: e8 00     mov   a,#$00
11c7: d5 30 03  mov   $0330+x,a
11ca: d5 11 02  mov   $0211+x,a
11cd: d5 81 03  mov   $0381+x,a
11d0: d5 f0 02  mov   $02f0+x,a
11d3: d5 80 02  mov   $0280+x,a
11d6: d5 00 04  mov   $0400+x,a
11d9: d4 b1     mov   $b1+x,a
11db: d4 c1     mov   $c1+x,a
11dd: 6f        ret

11de: c4 5a     mov   $5a,a
11e0: c4 68     mov   $68,a
11e2: c4 54     mov   $54,a
11e4: c4 50     mov   $50,a
11e6: c4 42     mov   $42,a
11e8: c4 5f     mov   $5f,a
11ea: c5 fd 05  mov   $05fd,a
11ed: c5 fe 05  mov   $05fe,a
11f0: c5 ff 05  mov   $05ff,a
11f3: c5 fb 05  mov   $05fb,a
11f6: c5 fc 05  mov   $05fc,a
11f9: 8f ff 59  mov   $59,#$ff
11fc: 8f 20 53  mov   $53,#$20
11ff: e8 7f     mov   a,#$7f
1201: 3f 05 12  call  $1205
1204: 6f        ret

1205: 8d 0c     mov   y,#$0c
1207: 3f 28 0a  call  $0a28
120a: 8d 1c     mov   y,#$1c
120c: 5f 28 0a  jmp   $0a28

120f: db $00,$08,$11,$19,$22,$2a,$33,$3b
1217: db $44,$4c,$55,$5d,$66,$6e,$77,$7f

; note dur%'s
121f: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; note velocity values
1227: db $19,$32,$4c,$65,$72,$7f,$8c,$98
122f: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

1237: db $00,$00,$00,$00,$00,$00,$00,$00

123f: e8 aa     mov   a,#$aa
1241: c5 f4 00  mov   $00f4,a
1244: e8 bb     mov   a,#$bb
1246: c5 f5 00  mov   $00f5,a
1249: e5 f4 00  mov   a,$00f4
124c: 68 c0     cmp   a,#$c0
124e: d0 f9     bne   $1249
1250: e9 f6 00  mov   x,$00f6
1253: c9 10 06  mov   $0610,x
1256: e9 f7 00  mov   x,$00f7
1259: c9 0a 06  mov   $060a,x
125c: c5 f4 00  mov   $00f4,a
125f: e5 f4 00  mov   a,$00f4
1262: 68 cc     cmp   a,#$cc
1264: d0 f9     bne   $125f
1266: e5 f6 00  mov   a,$00f6
1269: c5 08 06  mov   $0608,a
126c: e5 f7 00  mov   a,$00f7
126f: c5 09 06  mov   $0609,a
1272: e5 10 06  mov   a,$0610
1275: d0 05     bne   $127c
1277: 3f e7 12  call  $12e7
127a: 2f 0c     bra   $1288
127c: 68 01     cmp   a,#$01
127e: d0 05     bne   $1285
1280: 3f 02 13  call  $1302
1283: 2f 03     bra   $1288
1285: 3f 15 13  call  $1315
1288: ec f4 00  mov   y,$00f4
128b: cc f4 00  mov   $00f4,y
128e: ec f4 00  mov   y,$00f4
1291: d0 fb     bne   $128e
1293: 5e f4 00  cmp   y,$00f4
1296: d0 0e     bne   $12a6
1298: e4 f5     mov   a,$f5
129a: cb f4     mov   $f4,y
129c: d7 14     mov   ($14)+y,a
129e: fc        inc   y
129f: d0 f2     bne   $1293
12a1: ab 15     inc   $15
12a3: 5f 93 12  jmp   $1293

12a6: 10 eb     bpl   $1293
12a8: 5e f4 00  cmp   y,$00f4
12ab: 10 e6     bpl   $1293
12ad: e5 f5 00  mov   a,$00f5
12b0: f0 08     beq   $12ba
12b2: 68 01     cmp   a,#$01
12b4: f0 93     beq   $1249
12b6: 68 02     cmp   a,#$02
12b8: f0 ac     beq   $1266
12ba: ec f4 00  mov   y,$00f4
12bd: cc f4 00  mov   $00f4,y
12c0: fc        inc   y
12c1: 5e f4 00  cmp   y,$00f4
12c4: d0 fb     bne   $12c1
12c6: e8 00     mov   a,#$00
12c8: c5 f4 00  mov   $00f4,a
12cb: 65 f4 00  cmp   a,$00f4
12ce: d0 fb     bne   $12cb
12d0: e8 ff     mov   a,#$ff
12d2: c5 f4 00  mov   $00f4,a
12d5: cd 0d     mov   x,#$0d
12d7: e8 ff     mov   a,#$ff
12d9: 9c        dec   a
12da: d0 fd     bne   $12d9
12dc: 1d        dec   x
12dd: d0 f8     bne   $12d7
12df: cd 31     mov   x,#$31
12e1: c9 f1 00  mov   $00f1,x
12e4: e8 00     mov   a,#$00
12e6: 6f        ret

12e7: e5 04 06  mov   a,$0604
12ea: ec 05 06  mov   y,$0605
12ed: da 14     movw  $14,ya
12ef: 3f 30 13  call  $1330
12f2: e5 09 06  mov   a,$0609
12f5: fd        mov   y,a
12f6: e5 08 06  mov   a,$0608
12f9: 7a 14     addw  ya,$14
12fb: c5 04 06  mov   $0604,a
12fe: cc 05 06  mov   $0605,y
1301: 6f        ret

1302: e5 00 06  mov   a,$0600
1305: c5 04 06  mov   $0604,a
1308: e5 01 06  mov   a,$0601
130b: c5 05 06  mov   $0605,a
130e: e8 00     mov   a,#$00
1310: 8d ec     mov   y,#$ec
1312: da 14     movw  $14,ya
1314: 6f        ret

1315: e5 00 06  mov   a,$0600
1318: ec 01 06  mov   y,$0601
131b: da 14     movw  $14,ya
131d: 3f 30 13  call  $1330
1320: e5 09 06  mov   a,$0609
1323: fd        mov   y,a
1324: e5 08 06  mov   a,$0608
1327: 7a 14     addw  ya,$14
1329: c5 00 06  mov   $0600,a
132c: cc 01 06  mov   $0601,y
132f: 6f        ret

1330: 6d        push  y
1331: 2d        push  a
1332: 6d        push  y
1333: 2d        push  a
1334: e8 00     mov   a,#$00
1336: c4 10     mov   $10,a
1338: e8 22     mov   a,#$22
133a: c4 11     mov   $11,a
133c: e5 0a 06  mov   a,$060a
133f: 1c        asl   a
1340: 5d        mov   x,a
1341: f5 40 23  mov   a,$2340+x
1344: c4 12     mov   $12,a
1346: f5 41 23  mov   a,$2341+x
1349: c4 13     mov   $13,a
134b: 8d 00     mov   y,#$00
134d: 7d        mov   a,x
134e: 1c        asl   a
134f: 90 02     bcc   $1353
1351: 8d 01     mov   y,#$01
1353: 7a 10     addw  ya,$10
1355: da 10     movw  $10,ya
1357: 8d 00     mov   y,#$00
1359: ae        pop   a
135a: d7 10     mov   ($10)+y,a
135c: fc        inc   y
135d: ae        pop   a
135e: d7 10     mov   ($10)+y,a
1360: ae        pop   a
1361: ee        pop   y
1362: 7a 12     addw  ya,$12
1364: 6d        push  y
1365: 8d 02     mov   y,#$02
1367: d7 10     mov   ($10)+y,a
1369: fc        inc   y
136a: ae        pop   a
136b: d7 10     mov   ($10)+y,a
136d: 6f        ret

; pan table
136e: db $00,$01,$03,$07,$0d,$15,$1e,$29
1376: db $34,$42,$51,$5e,$67,$6e,$73,$77
137e: db $7a,$7c,$7d,$7e,$7f,$7f

; echo FIR presets
1384: db $7f,$00,$00,$00,$00,$00,$00,$00
138c: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1394: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
139c: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
13a4: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
13ae: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
13b0: dw $085f
13b2: dw $08de
13b4: dw $0965
13b6: dw $09f4
13b8: dw $0a8c
13ba: dw $0b2c
13bc: dw $0bd6
13be: dw $0c8b
13c0: dw $0d4a
13c2: dw $0e14
13c4: dw $0eea
13c6: dw $0fcd
13c8: dw $10be

13d2: e4 07     mov   a,$07
13d4: d0 2d     bne   $1403
13d6: e4 f4     mov   a,$f4
13d8: 68 80     cmp   a,#$80
13da: d0 27     bne   $1403
13dc: e4 f5     mov   a,$f5
13de: c5 16 06  mov   $0616,a
13e1: e4 f6     mov   a,$f6
13e3: c5 17 06  mov   $0617,a
13e6: e4 f7     mov   a,$f7
13e8: 28 80     and   a,#$80
13ea: c5 13 06  mov   $0613,a
13ed: e4 f7     mov   a,$f7
13ef: 28 7f     and   a,#$7f
13f1: c5 14 06  mov   $0614,a
13f4: e8 00     mov   a,#$00
13f6: c4 18     mov   $18,a
13f8: c4 19     mov   $19,a
13fa: e8 80     mov   a,#$80
13fc: c5 15 06  mov   $0615,a
13ff: c4 07     mov   $07,a
1401: c4 f4     mov   $f4,a
1403: 6f        ret

1404: 3f 30 1a  call  $1a30
1407: e4 07     mov   a,$07
1409: f0 f8     beq   $1403
140b: e4 f4     mov   a,$f4
140d: 68 81     cmp   a,#$81
140f: f0 0b     beq   $141c
1411: 68 82     cmp   a,#$82
1413: d0 ee     bne   $1403
1415: cd 00     mov   x,#$00
1417: d8 f4     mov   $f4,x
1419: 5f 7b 14  jmp   $147b

141c: cd 00     mov   x,#$00
141e: d8 f4     mov   $f4,x
1420: e5 13 06  mov   a,$0613
1423: d0 63     bne   $1488
1425: 8d 33     mov   y,#$33
1427: e4 18     mov   a,$18
1429: 28 01     and   a,#$01
142b: d0 1e     bne   $144b
142d: 3e f4     cmp   x,$f4
142f: d0 fc     bne   $142d
1431: e4 f5     mov   a,$f5
1433: d5 00 fe  mov   $fe00+x,a
1436: 3d        inc   x
1437: e4 f6     mov   a,$f6
1439: d5 00 fe  mov   $fe00+x,a
143c: 3d        inc   x
143d: e4 f7     mov   a,$f7
143f: d5 00 fe  mov   $fe00+x,a
1442: 3d        inc   x
1443: d8 f4     mov   $f4,x
1445: dc        dec   y
1446: d0 e5     bne   $142d
1448: 5f 6e 14  jmp   $146e

144b: e5 15 06  mov   a,$0615
144e: f0 03     beq   $1453
1450: 3f 1e 15  call  $151e
1453: 3e f4     cmp   x,$f4
1455: d0 fc     bne   $1453
1457: e4 f5     mov   a,$f5
1459: d5 99 fe  mov   $fe99+x,a
145c: 3d        inc   x
145d: e4 f6     mov   a,$f6
145f: d5 99 fe  mov   $fe99+x,a
1462: 3d        inc   x
1463: e4 f7     mov   a,$f7
1465: d5 99 fe  mov   $fe99+x,a
1468: 3d        inc   x
1469: d8 f4     mov   $f4,x
146b: dc        dec   y
146c: d0 e5     bne   $1453
146e: 3a 18     incw  $18
1470: e5 16 06  mov   a,$0616
1473: ec 17 06  mov   y,$0617
1476: 5a 18     cmpw  ya,$18
1478: f0 01     beq   $147b
147a: 6f        ret

147b: e8 5c     mov   a,#$5c
147d: c4 f2     mov   $f2,a
147f: e8 20     mov   a,#$20
1481: c4 f3     mov   $f3,a
1483: e8 00     mov   a,#$00
1485: c4 07     mov   $07,a
1487: 6f        ret

1488: e4 18     mov   a,$18
148a: 28 03     and   a,#$03
148c: f0 70     beq   $14fe
148e: 68 01     cmp   a,#$01
1490: f0 4c     beq   $14de
1492: 68 02     cmp   a,#$02
1494: f0 20     beq   $14b6
1496: 8d 19     mov   y,#$19
1498: 3e f4     cmp   x,$f4
149a: d0 fc     bne   $1498
149c: e4 f5     mov   a,$f5
149e: d5 e7 fe  mov   $fee7+x,a
14a1: 3d        inc   x
14a2: e4 f6     mov   a,$f6
14a4: d5 e7 fe  mov   $fee7+x,a
14a7: 3d        inc   x
14a8: e4 f7     mov   a,$f7
14aa: d5 e7 fe  mov   $fee7+x,a
14ad: 3d        inc   x
14ae: d8 f4     mov   $f4,x
14b0: dc        dec   y
14b1: d0 e5     bne   $1498
14b3: 5f 6e 14  jmp   $146e

14b6: 8d 1a     mov   y,#$1a
14b8: e5 15 06  mov   a,$0615
14bb: f0 03     beq   $14c0
14bd: 3f 1e 15  call  $151e
14c0: 3e f4     cmp   x,$f4
14c2: d0 fc     bne   $14c0
14c4: e4 f5     mov   a,$f5
14c6: d5 99 fe  mov   $fe99+x,a
14c9: 3d        inc   x
14ca: e4 f6     mov   a,$f6
14cc: d5 99 fe  mov   $fe99+x,a
14cf: 3d        inc   x
14d0: e4 f7     mov   a,$f7
14d2: d5 99 fe  mov   $fe99+x,a
14d5: 3d        inc   x
14d6: d8 f4     mov   $f4,x
14d8: dc        dec   y
14d9: d0 e5     bne   $14c0
14db: 5f 6e 14  jmp   $146e

14de: 8d 19     mov   y,#$19
14e0: 3e f4     cmp   x,$f4
14e2: d0 fc     bne   $14e0
14e4: e4 f5     mov   a,$f5
14e6: d5 4e fe  mov   $fe4e+x,a
14e9: 3d        inc   x
14ea: e4 f6     mov   a,$f6
14ec: d5 4e fe  mov   $fe4e+x,a
14ef: 3d        inc   x
14f0: e4 f7     mov   a,$f7
14f2: d5 4e fe  mov   $fe4e+x,a
14f5: 3d        inc   x
14f6: d8 f4     mov   $f4,x
14f8: dc        dec   y
14f9: d0 e5     bne   $14e0
14fb: 5f 6e 14  jmp   $146e

14fe: 8d 1a     mov   y,#$1a
1500: 3e f4     cmp   x,$f4
1502: d0 fc     bne   $1500
1504: e4 f5     mov   a,$f5
1506: d5 00 fe  mov   $fe00+x,a
1509: 3d        inc   x
150a: e4 f6     mov   a,$f6
150c: d5 00 fe  mov   $fe00+x,a
150f: 3d        inc   x
1510: e4 f7     mov   a,$f7
1512: d5 00 fe  mov   $fe00+x,a
1515: 3d        inc   x
1516: d8 f4     mov   $f4,x
1518: dc        dec   y
1519: d0 e5     bne   $1500
151b: 5f 6e 14  jmp   $146e

151e: e8 54     mov   a,#$54
1520: c5 f2 00  mov   $00f2,a
1523: e8 4c     mov   a,#$4c
1525: c5 f3 00  mov   $00f3,a
1528: e8 55     mov   a,#$55
152a: c5 f2 00  mov   $00f2,a
152d: e8 ff     mov   a,#$ff
152f: c5 f3 00  mov   $00f3,a
1532: e8 56     mov   a,#$56
1534: c5 f2 00  mov   $00f2,a
1537: e8 e0     mov   a,#$e0
1539: c5 f3 00  mov   $00f3,a
153c: e8 57     mov   a,#$57
153e: c5 f2 00  mov   $00f2,a
1541: e8 b8     mov   a,#$b8
1543: c5 f3 00  mov   $00f3,a
1546: e8 50     mov   a,#$50
1548: c5 f2 00  mov   $00f2,a
154b: e5 14 06  mov   a,$0614
154e: c5 f3 00  mov   $00f3,a
1551: e8 51     mov   a,#$51
1553: c5 f2 00  mov   $00f2,a
1556: e5 14 06  mov   a,$0614
1559: c5 f3 00  mov   $00f3,a
155c: e5 13 06  mov   a,$0613
155f: d0 17     bne   $1578
1561: e8 52     mov   a,#$52
1563: c5 f2 00  mov   $00f2,a
1566: e8 29     mov   a,#$29
1568: c5 f3 00  mov   $00f3,a
156b: e8 53     mov   a,#$53
156d: c5 f2 00  mov   $00f2,a
1570: e8 08     mov   a,#$08
1572: c5 f3 00  mov   $00f3,a
1575: 5f 8c 15  jmp   $158c

1578: e8 52     mov   a,#$52
157a: c5 f2 00  mov   $00f2,a
157d: e8 15     mov   a,#$15
157f: c5 f3 00  mov   $00f3,a
1582: e8 53     mov   a,#$53
1584: c5 f2 00  mov   $00f2,a
1587: e8 04     mov   a,#$04
1589: c5 f3 00  mov   $00f3,a
158c: e8 4c     mov   a,#$4c
158e: c5 f2 00  mov   $00f2,a
1591: e8 20     mov   a,#$20
1593: c5 f3 00  mov   $00f3,a
1596: e8 00     mov   a,#$00
1598: c5 15 06  mov   $0615,a
159b: 6f        ret

159c: e4 1f     mov   a,$1f
159e: 68 f0     cmp   a,#$f0
15a0: f0 0b     beq   $15ad
15a2: 68 e0     cmp   a,#$e0
15a4: b0 06     bcs   $15ac
15a6: 3f 40 1a  call  $1a40
15a9: 3f b4 15  call  $15b4
15ac: 6f        ret

15ad: e8 c0     mov   a,#$c0
15af: 04 46     or    a,$46
15b1: c4 46     mov   $46,a
15b3: 6f        ret

15b4: 3f 04 14  call  $1404
15b7: e5 03 05  mov   a,$0503
15ba: f0 16     beq   $15d2
15bc: cd 06     mov   x,#$06
15be: d8 01     mov   $01,x
15c0: cd 0c     mov   x,#$0c
15c2: d8 05     mov   $05,x
15c4: 3f 03 16  call  $1603
15c7: 3f 4a 16  call  $164a
15ca: e5 03 05  mov   a,$0503
15cd: f0 03     beq   $15d2
15cf: 3f 41 16  call  $1641
15d2: 3f 04 14  call  $1404
15d5: e5 04 05  mov   a,$0504
15d8: f0 16     beq   $15f0
15da: cd 07     mov   x,#$07
15dc: d8 01     mov   $01,x
15de: cd 0e     mov   x,#$0e
15e0: d8 05     mov   $05,x
15e2: 3f 03 16  call  $1603
15e5: 3f 4a 16  call  $164a
15e8: e5 04 05  mov   a,$0504
15eb: f0 03     beq   $15f0
15ed: 3f 41 16  call  $1641
15f0: 6f        ret

15f1: 80        setc
15f2: f5 20 04  mov   a,$0420+x
15f5: a8 01     sbc   a,#$01
15f7: d5 20 04  mov   $0420+x,a
15fa: f5 21 04  mov   a,$0421+x
15fd: a8 00     sbc   a,#$00
15ff: d5 21 04  mov   $0421+x,a
1602: 6f        ret

1603: f5 20 04  mov   a,$0420+x
1606: 15 21 04  or    a,$0421+x
1609: d0 e6     bne   $15f1
160b: 3f cd 16  call  $16cd
160e: 68 80     cmp   a,#$80
1610: b0 15     bcs   $1627
1612: 2d        push  a
1613: f8 01     mov   x,$01
1615: f5 50 04  mov   a,$0450+x
1618: fd        mov   y,a
1619: ae        pop   a
161a: cf        mul   ya
161b: f8 05     mov   x,$05
161d: d5 30 04  mov   $0430+x,a
1620: dd        mov   a,y
1621: d5 31 04  mov   $0431+x,a
1624: 5f 0b 16  jmp   $160b

1627: 68 c9     cmp   a,#$c9
1629: 90 0e     bcc   $1639
162b: 3f 55 17  call  $1755
162e: e5 83 05  mov   a,$0583
1631: f0 d8     beq   $160b
1633: e8 00     mov   a,#$00
1635: c5 83 05  mov   $0583,a
1638: 6f        ret

1639: 3f d9 16  call  $16d9
163c: f8 05     mov   x,$05
163e: 5f f1 15  jmp   $15f1

1641: 3f 65 16  call  $1665
1644: 3f 93 16  call  $1693
1647: 5f aa 16  jmp   $16aa

164a: f8 01     mov   x,$01
164c: e5 92 04  mov   a,$0492
164f: 35 45 17  and   a,$1745+x
1652: f0 10     beq   $1664
1654: e5 92 04  mov   a,$0492
1657: 35 4d 17  and   a,$174d+x
165a: c5 92 04  mov   $0492,a
165d: f5 45 17  mov   a,$1745+x
1660: 04 46     or    a,$46
1662: c4 46     mov   $46,a
1664: 6f        ret

1665: eb 01     mov   y,$01
1667: e5 91 04  mov   a,$0491
166a: 36 45 17  and   a,$1745+y
166d: f0 23     beq   $1692
166f: f8 05     mov   x,$05
1671: f6 58 04  mov   a,$0458+y
1674: d5 21 03  mov   $0321+x,a
1677: f6 78 04  mov   a,$0478+y
167a: 2d        push  a
167b: 28 c0     and   a,#$c0
167d: d5 51 03  mov   $0351+x,a
1680: ae        pop   a
1681: 28 3f     and   a,#$3f
1683: c4 11     mov   $11,a
1685: 8f 00 10  mov   $10,#$00
1688: e4 47     mov   a,$47
168a: 36 4d 17  and   a,$174d+y
168d: c4 47     mov   $47,a
168f: 3f bc 0f  call  $0fbc
1692: 6f        ret

1693: f8 05     mov   x,$05
1695: f5 40 04  mov   a,$0440+x
1698: fd        mov   y,a
1699: f5 41 04  mov   a,$0441+x
169c: da 10     movw  $10,ya
169e: eb 01     mov   y,$01
16a0: f6 4d 17  mov   a,$174d+y
16a3: 24 47     and   a,$47
16a5: c4 47     mov   $47,a
16a7: 5f b3 09  jmp   $09b3

16aa: f8 01     mov   x,$01
16ac: e5 91 04  mov   a,$0491
16af: 35 45 17  and   a,$1745+x
16b2: f0 18     beq   $16cc
16b4: e5 91 04  mov   a,$0491
16b7: 35 4d 17  and   a,$174d+x
16ba: c5 91 04  mov   $0491,a
16bd: f5 45 17  mov   a,$1745+x
16c0: 25 93 04  and   a,$0493
16c3: d0 07     bne   $16cc
16c5: f5 45 17  mov   a,$1745+x
16c8: 04 45     or    a,$45
16ca: c4 45     mov   $45,a
16cc: 6f        ret

16cd: f8 05     mov   x,$05
16cf: e7 20     mov   a,($20+x)
16d1: fd        mov   y,a
16d2: bb 20     inc   $20+x
16d4: d0 02     bne   $16d8
16d6: bb 21     inc   $21+x
16d8: 6f        ret

16d9: 2d        push  a
16da: f8 05     mov   x,$05
16dc: f5 30 04  mov   a,$0430+x
16df: d5 20 04  mov   $0420+x,a
16e2: f5 31 04  mov   a,$0431+x
16e5: d5 21 04  mov   $0421+x,a
16e8: ae        pop   a
16e9: 68 c8     cmp   a,#$c8
16eb: f0 4c     beq   $1739
16ed: d5 40 04  mov   $0440+x,a
16f0: 3f cf 16  call  $16cf
16f3: d5 41 04  mov   $0441+x,a
16f6: f8 01     mov   x,$01
16f8: f5 60 04  mov   a,$0460+x
16fb: f0 09     beq   $1706
16fd: f8 05     mov   x,$05
16ff: 60        clrc
1700: 95 40 04  adc   a,$0440+x
1703: d5 40 04  mov   $0440+x,a
1706: f8 01     mov   x,$01
1708: f5 68 04  mov   a,$0468+x
170b: f0 20     beq   $172d
170d: f8 05     mov   x,$05
170f: fd        mov   y,a
1710: 30 0c     bmi   $171e
1712: 60        clrc
1713: 95 41 04  adc   a,$0441+x
1716: d5 41 04  mov   $0441+x,a
1719: e8 00     mov   a,#$00
171b: 5f 27 17  jmp   $1727

171e: 60        clrc
171f: 95 41 04  adc   a,$0441+x
1722: d5 41 04  mov   $0441+x,a
1725: e8 ff     mov   a,#$ff
1727: 95 40 04  adc   a,$0440+x
172a: d5 40 04  mov   $0440+x,a
172d: f8 01     mov   x,$01
172f: f5 45 17  mov   a,$1745+x
1732: 05 91 04  or    a,$0491
1735: c5 91 04  mov   $0491,a
1738: 6f        ret

1739: f8 01     mov   x,$01
173b: f5 45 17  mov   a,$1745+x
173e: 05 92 04  or    a,$0492
1741: c5 92 04  mov   $0492,a
1744: 6f        ret

; channel values
1745: db $01,$02,$04,$08,$10,$20,$40,$80

; ASDR envelope values
174d: db $fe,$fd,$fb,$f7,$ef,$df
1753: db $bf,$7f,$80,$a8,$e8,$90

1759: dw $1c4f
175b: dw $1f5d
175d: dw $175f
175f: dw $178f
1761: dw $17aa
1763: dw $17bf
1765: dw $17ca
1767: dw $1830
1769: dw $1863
176b: dw $1873
176d: dw $1873
176f: dw $1874
1771: dw $188d
1773: dw $1896
1775: dw $189f
1777: dw $1873
1779: dw $18ac
177b: dw $18b8
177d: dw $18c4
177f: dw $18cd
1781: dw $1902
1783: dw $192b
1785: dw $1957
1787: dw $1970
1789: dw $197d
178b: dw $1986
178d: dw $198f

178f: 3f cd 16  call  $16cd
1792: d5 d0 04  mov   $04d0+x,a
1795: 3f cf 16  call  $16cf
1798: d5 f1 04  mov   $04f1+x,a
179b: 3f cf 16  call  $16cf
179e: d5 d1 00  mov   $00d1+x,a
17a1: d5 e1 04  mov   $04e1+x,a
17a4: e8 00     mov   a,#$00
17a6: d5 d1 04  mov   $04d1+x,a
17a9: 6f        ret

17aa: f8 05     mov   x,$05
17ac: e8 00     mov   a,#$00
17ae: d4 d1     mov   $d1+x,a
17b0: d5 e1 04  mov   $04e1+x,a
17b3: d5 d1 04  mov   $04d1+x,a
17b6: 6f        ret

17b7: 3f cd 16  call  $16cd
17ba: d5 d1 04  mov   $04d1+x,a
17bd: 4d        push  x
17be: 2d        push  a
17bf: 8d 00     mov   y,#$00
17c1: f4 d1     mov   a,$d1+x
17c3: ce        pop   x
17c4: 9e        div   ya,x
17c5: ce        pop   x
17c6: d5 e0 04  mov   $04e0+x,a
17c9: 6f        ret

17ca: e8 01     mov   a,#$01
17cc: c5 1f 04  mov   $041f,a
17cf: e4 4a     mov   a,$4a
17d1: c5 16 04  mov   $0416,a
17d4: 3f cd 16  call  $16cd
17d7: dd        mov   a,y
17d8: c5 17 04  mov   $0417,a
17db: d0 14     bne   $17f1
17dd: 3f cf 16  call  $16cf
17e0: 28 c0     and   a,#$c0
17e2: c5 4a 00  mov   $004a,a
17e5: e5 16 04  mov   a,$0416
17e8: 28 3f     and   a,#$3f
17ea: 05 4a 00  or    a,$004a
17ed: c5 4a 00  mov   $004a,a
17f0: 6f        ret

17f1: 3f cf 16  call  $16cf
17f4: e5 17 04  mov   a,$0417
17f7: 68 01     cmp   a,#$01
17f9: d0 05     bne   $1800
17fb: dd        mov   a,y
17fc: 04 4a     or    a,$4a
17fe: 2f 01     bra   $1801
1800: dd        mov   a,y
1801: c4 4a     mov   $4a,a
1803: e4 61     mov   a,$61
1805: c5 19 04  mov   $0419,a
1808: e4 63     mov   a,$63
180a: c5 1b 04  mov   $041b,a
180d: e4 4e     mov   a,$4e
180f: c5 1c 04  mov   $041c,a
1812: 3f cf 16  call  $16cf
1815: 3f 3d 0e  call  $0e3d
1818: 3f cd 16  call  $16cd
181b: c4 4e     mov   $4e,a
181d: 3f cf 16  call  $16cf
1820: 3f 26 0e  call  $0e26
1823: b2 48     clr5  $48
1825: 3f cd 16  call  $16cd
1828: c4 61     mov   $61,a
182a: 3f cf 16  call  $16cf
182d: c4 63     mov   $63,a
182f: 6f        ret

1830: e5 1f 04  mov   a,$041f
1833: d0 01     bne   $1836
1835: 6f        ret

1836: e8 00     mov   a,#$00
1838: c5 1f 04  mov   $041f,a
183b: e5 17 04  mov   a,$0417
183e: f0 1d     beq   $185d
1840: e5 1d 04  mov   a,$041d
1843: 3f 3d 0e  call  $0e3d
1846: e5 1c 04  mov   a,$041c
1849: c4 4e     mov   $4e,a
184b: e5 1e 04  mov   a,$041e
184e: 3f 26 0e  call  $0e26
1851: b2 48     clr5  $48
1853: e5 19 04  mov   a,$0419
1856: c4 61     mov   $61,a
1858: e5 1b 04  mov   a,$041b
185b: c4 63     mov   $63,a
185d: e5 16 04  mov   a,$0416
1860: c4 4a     mov   $4a,a
1862: 6f        ret

1863: 3f cd 16  call  $16cd
1866: d5 50 05  mov   $0550+x,a
1869: dd        mov   a,y
186a: f0 01     beq   $186d
186c: 6f        ret

186d: f5 11 05  mov   a,$0511+x
1870: fd        mov   y,a
1871: 2f 07     bra   $187a
1873: 6f        ret

1874: 3f cd 16  call  $16cd
1877: d5 11 05  mov   $0511+x,a
187a: 8f 00 47  mov   $47,#$00
187d: f8 01     mov   x,$01
187f: f5 4d 17  mov   a,$174d+x
1882: 24 49     and   a,$49
1884: c4 49     mov   $49,a
1886: dd        mov   a,y
1887: f8 05     mov   x,$05
1889: 3f 77 0c  call  $0c77
188c: 6f        ret

188d: 3f cd 16  call  $16cd
1890: f8 01     mov   x,$01
1892: d5 58 04  mov   $0458+x,a
1895: 6f        ret

1896: 3f cd 16  call  $16cd
1899: f8 01     mov   x,$01
189b: d5 78 04  mov   $0478+x,a
189e: 6f        ret

189f: 3f cd 16  call  $16cd
18a2: f8 01     mov   x,$01
18a4: 60        clrc
18a5: 95 60 04  adc   a,$0460+x
18a8: d5 60 04  mov   $0460+x,a
18ab: 6f        ret

18ac: f8 01     mov   x,$01
18ae: f5 45 17  mov   a,$1745+x
18b1: 05 93 04  or    a,$0493
18b4: c5 93 04  mov   $0493,a
18b7: 6f        ret

18b8: f8 01     mov   x,$01
18ba: f5 4d 17  mov   a,$174d+x
18bd: 25 93 04  and   a,$0493
18c0: c5 93 04  mov   $0493,a
18c3: 6f        ret

18c4: 3f cd 16  call  $16cd
18c7: f8 01     mov   x,$01
18c9: d5 50 04  mov   $0450+x,a
18cc: 6f        ret

18cd: 3f cd 16  call  $16cd
18d0: 2d        push  a
18d1: f8 01     mov   x,$01
18d3: f5 98 04  mov   a,$0498+x
18d6: 3f f3 18  call  $18f3
18d9: ae        pop   a
18da: d6 a0 04  mov   $04a0+y,a
18dd: f8 05     mov   x,$05
18df: f4 20     mov   a,$20+x
18e1: d6 a1 04  mov   $04a1+y,a
18e4: f4 21     mov   a,$21+x
18e6: d6 a2 04  mov   $04a2+y,a
18e9: f8 01     mov   x,$01
18eb: f5 98 04  mov   a,$0498+x
18ee: bc        inc   a
18ef: d5 98 04  mov   $0498+x,a
18f2: 6f        ret

18f3: 8d 03     mov   y,#$03
18f5: cf        mul   ya
18f6: c4 10     mov   $10,a
18f8: e4 01     mov   a,$01
18fa: 8d 06     mov   y,#$06
18fc: cf        mul   ya
18fd: 60        clrc
18fe: 84 10     adc   a,$10
1900: fd        mov   y,a
1901: 6f        ret

1902: f8 01     mov   x,$01
1904: f5 98 04  mov   a,$0498+x
1907: 9c        dec   a
1908: 3f f3 18  call  $18f3
190b: f6 a0 04  mov   a,$04a0+y
190e: 9c        dec   a
190f: d6 a0 04  mov   $04a0+y,a
1912: d0 0a     bne   $191e
1914: f8 01     mov   x,$01
1916: f5 98 04  mov   a,$0498+x
1919: 9c        dec   a
191a: d5 98 04  mov   $0498+x,a
191d: 6f        ret

191e: f8 05     mov   x,$05
1920: f6 a1 04  mov   a,$04a1+y
1923: d4 20     mov   $20+x,a
1925: f6 a2 04  mov   a,$04a2+y
1928: d4 21     mov   $21+x,a
192a: 6f        ret

192b: 3f cd 16  call  $16cd
192e: 2d        push  a
192f: 3f cf 16  call  $16cf
1932: 2d        push  a
1933: f8 01     mov   x,$01
1935: f5 98 04  mov   a,$0498+x
1938: 3f f3 18  call  $18f3
193b: f8 01     mov   x,$01
193d: f5 98 04  mov   a,$0498+x
1940: bc        inc   a
1941: d5 98 04  mov   $0498+x,a
1944: f8 05     mov   x,$05
1946: f4 20     mov   a,$20+x
1948: d6 a1 04  mov   $04a1+y,a
194b: f4 21     mov   a,$21+x
194d: d6 a2 04  mov   $04a2+y,a
1950: ae        pop   a
1951: d4 21     mov   $21+x,a
1953: ae        pop   a
1954: d4 20     mov   $20+x,a
1956: 6f        ret

1957: f8 01     mov   x,$01
1959: f5 98 04  mov   a,$0498+x
195c: 9c        dec   a
195d: d5 98 04  mov   $0498+x,a
1960: 3f f3 18  call  $18f3
1963: f8 05     mov   x,$05
1965: f6 a1 04  mov   a,$04a1+y
1968: d4 20     mov   $20+x,a
196a: f6 a2 04  mov   a,$04a2+y
196d: d4 21     mov   $21+x,a
196f: 6f        ret

1970: 3f cd 16  call  $16cd
1973: 2d        push  a
1974: 3f cf 16  call  $16cf
1977: d4 21     mov   $21+x,a
1979: ae        pop   a
197a: d4 20     mov   $20+x,a
197c: 6f        ret

197d: 3f cd 16  call  $16cd
1980: f8 01     mov   x,$01
1982: d5 68 04  mov   $0468+x,a
1985: 6f        ret

1986: 3f cd 16  call  $16cd
1989: f8 01     mov   x,$01
198b: d5 60 04  mov   $0460+x,a
198e: 6f        ret

198f: f8 01     mov   x,$01
1991: c8 06     cmp   x,#$06
1993: d0 24     bne   $19b9
1995: e8 00     mov   a,#$00
1997: c5 03 05  mov   $0503,a
199a: e8 60     mov   a,#$60
199c: c5 f2 00  mov   $00f2,a
199f: e8 00     mov   a,#$00
19a1: c5 f3 00  mov   $00f3,a
19a4: e8 61     mov   a,#$61
19a6: c5 f2 00  mov   $00f2,a
19a9: e8 00     mov   a,#$00
19ab: c5 f3 00  mov   $00f3,a
19ae: 3f f9 19  call  $19f9
19b1: e8 00     mov   a,#$00
19b3: c5 00 05  mov   $0500,a
19b6: 5f da 19  jmp   $19da

19b9: e8 00     mov   a,#$00
19bb: c5 04 05  mov   $0504,a
19be: e8 70     mov   a,#$70
19c0: c5 f2 00  mov   $00f2,a
19c3: e8 00     mov   a,#$00
19c5: c5 f3 00  mov   $00f3,a
19c8: e8 71     mov   a,#$71
19ca: c5 f2 00  mov   $00f2,a
19cd: e8 00     mov   a,#$00
19cf: c5 f3 00  mov   $00f3,a
19d2: 3f f9 19  call  $19f9
19d5: e8 00     mov   a,#$00
19d7: c5 01 05  mov   $0501,a
19da: f8 01     mov   x,$01
19dc: f5 45 17  mov   a,$1745+x
19df: 05 92 04  or    a,$0492
19e2: c5 92 04  mov   $0492,a
19e5: e5 03 05  mov   a,$0503
19e8: 05 04 05  or    a,$0504
19eb: d0 06     bne   $19f3
19ed: c5 02 05  mov   $0502,a
19f0: 3f 30 18  call  $1830
19f3: e8 ff     mov   a,#$ff
19f5: c5 83 05  mov   $0583,a
19f8: 6f        ret

19f9: f8 05     mov   x,$05
19fb: f5 81 04  mov   a,$0481+x
19fe: d5 21 03  mov   $0321+x,a
1a01: f5 80 04  mov   a,$0480+x
1a04: d5 51 03  mov   $0351+x,a
1a07: f8 01     mov   x,$01
1a09: f5 4d 17  mov   a,$174d+x
1a0c: 2d        push  a
1a0d: 24 1a     and   a,$1a
1a0f: c4 1a     mov   $1a,a
1a11: f5 45 17  mov   a,$1745+x
1a14: 2d        push  a
1a15: 04 47     or    a,$47
1a17: c4 47     mov   $47,a
1a19: ae        pop   a
1a1a: 04 5e     or    a,$5e
1a1c: c4 5e     mov   $5e,a
1a1e: f8 05     mov   x,$05
1a20: 3f ad 0f  call  $0fad
1a23: ae        pop   a
1a24: 24 1a     and   a,$1a
1a26: c4 1a     mov   $1a,a
1a28: f8 05     mov   x,$05
1a2a: f5 11 02  mov   a,$0211+x
1a2d: 5f 77 0c  jmp   $0c77

1a30: e4 f4     mov   a,$f4
1a32: f0 04     beq   $1a38
1a34: 68 a0     cmp   a,#$a0
1a36: 90 02     bcc   $1a3a
1a38: c4 1f     mov   $1f,a
1a3a: 6f        ret

1a3b: e8 00     mov   a,#$00
1a3d: c4 06     mov   $06,a
1a3f: 6f        ret

1a40: e4 1f     mov   a,$1f
1a42: f0 f7     beq   $1a3b
1a44: 68 a0     cmp   a,#$a0
1a46: 90 f7     bcc   $1a3f
1a48: 80        setc
1a49: a8 a0     sbc   a,#$a0
1a4b: 64 06     cmp   a,$06
1a4d: f0 ec     beq   $1a3b
1a4f: c4 06     mov   $06,a
1a51: 5d        mov   x,a
1a52: f5 a7 e0  mov   a,$e0a7+x
1a55: 65 02 05  cmp   a,$0502
1a58: 90 e5     bcc   $1a3f
1a5a: c5 02 05  mov   $0502,a
1a5d: 7d        mov   a,x
1a5e: 1c        asl   a
1a5f: 1c        asl   a
1a60: 5d        mov   x,a
1a61: 4d        push  x
1a62: f5 e8 e0  mov   a,$e0e8+x
1a65: c4 10     mov   $10,a
1a67: f5 e9 e0  mov   a,$e0e9+x
1a6a: c4 11     mov   $11,a
1a6c: 04 10     or    a,$10
1a6e: f0 4b     beq   $1abb
1a70: e8 60     mov   a,#$60
1a72: c5 f2 00  mov   $00f2,a
1a75: e8 00     mov   a,#$00
1a77: c5 f3 00  mov   $00f3,a
1a7a: e8 61     mov   a,#$61
1a7c: c5 f2 00  mov   $00f2,a
1a7f: e8 00     mov   a,#$00
1a81: c5 f3 00  mov   $00f3,a
1a84: e8 5c     mov   a,#$5c
1a86: c4 f2     mov   $f2,a
1a88: e8 40     mov   a,#$40
1a8a: c4 f3     mov   $f3,a
1a8c: 3f 16 1b  call  $1b16
1a8f: e5 00 05  mov   a,$0500
1a92: d0 11     bne   $1aa5
1a94: e8 ff     mov   a,#$ff
1a96: c5 00 05  mov   $0500,a
1a99: e5 2d 03  mov   a,$032d
1a9c: c5 8d 04  mov   $048d,a
1a9f: e5 5d 03  mov   a,$035d
1aa2: c5 8c 04  mov   $048c,a
1aa5: e4 10     mov   a,$10
1aa7: c4 2c     mov   $2c,a
1aa9: e4 11     mov   a,$11
1aab: c4 2d     mov   $2d,a
1aad: e8 ff     mov   a,#$ff
1aaf: c5 03 05  mov   $0503,a
1ab2: cd 06     mov   x,#$06
1ab4: f5 45 17  mov   a,$1745+x
1ab7: 04 1a     or    a,$1a
1ab9: c4 1a     mov   $1a,a
1abb: ce        pop   x
1abc: f5 ea e0  mov   a,$e0ea+x
1abf: c4 10     mov   $10,a
1ac1: f5 eb e0  mov   a,$e0eb+x
1ac4: c4 11     mov   $11,a
1ac6: 04 10     or    a,$10
1ac8: f0 4b     beq   $1b15
1aca: e8 70     mov   a,#$70
1acc: c5 f2 00  mov   $00f2,a
1acf: e8 00     mov   a,#$00
1ad1: c5 f3 00  mov   $00f3,a
1ad4: e8 71     mov   a,#$71
1ad6: c5 f2 00  mov   $00f2,a
1ad9: e8 00     mov   a,#$00
1adb: c5 f3 00  mov   $00f3,a
1ade: e8 5c     mov   a,#$5c
1ae0: c4 f2     mov   $f2,a
1ae2: e8 80     mov   a,#$80
1ae4: c4 f3     mov   $f3,a
1ae6: 3f 69 1b  call  $1b69
1ae9: e5 01 05  mov   a,$0501
1aec: d0 11     bne   $1aff
1aee: e8 ff     mov   a,#$ff
1af0: c5 01 05  mov   $0501,a
1af3: e5 2f 03  mov   a,$032f
1af6: c5 8f 04  mov   $048f,a
1af9: e5 5f 03  mov   a,$035f
1afc: c5 8e 04  mov   $048e,a
1aff: e4 10     mov   a,$10
1b01: c4 2e     mov   $2e,a
1b03: e4 11     mov   a,$11
1b05: c4 2f     mov   $2f,a
1b07: e8 ff     mov   a,#$ff
1b09: c5 04 05  mov   $0504,a
1b0c: cd 07     mov   x,#$07
1b0e: f5 45 17  mov   a,$1745+x
1b11: 04 1a     or    a,$1a
1b13: c4 1a     mov   $1a,a
1b15: 6f        ret

1b16: e8 00     mov   a,#$00
1b18: c5 2c 04  mov   $042c,a
1b1b: c5 2d 04  mov   $042d,a
1b1e: c5 3c 04  mov   $043c,a
1b21: c5 3d 04  mov   $043d,a
1b24: c5 4c 04  mov   $044c,a
1b27: c5 4d 04  mov   $044d,a
1b2a: c5 56 04  mov   $0456,a
1b2d: c5 5e 04  mov   $045e,a
1b30: c5 66 04  mov   $0466,a
1b33: c5 6e 04  mov   $046e,a
1b36: c5 76 04  mov   $0476,a
1b39: c5 1d 05  mov   $051d,a
1b3c: c5 9e 04  mov   $049e,a
1b3f: c5 c4 04  mov   $04c4,a
1b42: c5 c5 04  mov   $04c5,a
1b45: c5 c6 04  mov   $04c6,a
1b48: c5 dd 00  mov   $00dd,a
1b4b: e5 91 04  mov   a,$0491
1b4e: 28 bf     and   a,#$bf
1b50: c5 91 04  mov   $0491,a
1b53: e5 92 04  mov   a,$0492
1b56: 28 bf     and   a,#$bf
1b58: c5 92 04  mov   $0492,a
1b5b: e5 93 04  mov   a,$0493
1b5e: 28 bf     and   a,#$bf
1b60: c5 93 04  mov   $0493,a
1b63: e8 0a     mov   a,#$0a
1b65: c5 7e 04  mov   $047e,a
1b68: 6f        ret

1b69: e8 00     mov   a,#$00
1b6b: c5 2e 04  mov   $042e,a
1b6e: c5 2f 04  mov   $042f,a
1b71: c5 3e 04  mov   $043e,a
1b74: c5 3f 04  mov   $043f,a
1b77: c5 4e 04  mov   $044e,a
1b7a: c5 4f 04  mov   $044f,a
1b7d: c5 57 04  mov   $0457,a
1b80: c5 5f 04  mov   $045f,a
1b83: c5 67 04  mov   $0467,a
1b86: c5 6f 04  mov   $046f,a
1b89: c5 77 04  mov   $0477,a
1b8c: c5 1f 05  mov   $051f,a
1b8f: c5 9f 04  mov   $049f,a
1b92: c5 ca 04  mov   $04ca,a
1b95: c5 cb 04  mov   $04cb,a
1b98: c5 cc 04  mov   $04cc,a
1b9b: c5 df 00  mov   $00df,a
1b9e: e5 91 04  mov   a,$0491
1ba1: 28 7f     and   a,#$7f
1ba3: c5 91 04  mov   $0491,a
1ba6: e5 92 04  mov   a,$0492
1ba9: 28 7f     and   a,#$7f
1bab: c5 92 04  mov   $0492,a
1bae: e5 93 04  mov   a,$0493
1bb1: 28 7f     and   a,#$7f
1bb3: c5 93 04  mov   $0493,a
1bb6: e8 0a     mov   a,#$0a
1bb8: c5 7f 04  mov   $047f,a

1bbb: 6f        ret
