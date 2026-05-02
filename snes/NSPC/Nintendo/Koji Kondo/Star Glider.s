0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 e0     cmp   x,#$e0
080a: d0 fb     bne   $0807
080c: cd 00     mov   x,#$00
080e: d5 00 02  mov   $0200+x,a
0811: 3d        inc   x
0812: d0 fa     bne   $080e
0814: d5 00 03  mov   $0300+x,a
0817: 3d        inc   x
0818: d0 fa     bne   $0814
081a: bc        inc   a
081b: 3f 97 0e  call  $0e97
081e: a2 48     set5  $48
0820: 3f 3b 0a  call  $0a3b
0823: e8 60     mov   a,#$60
0825: 8d 0c     mov   y,#$0c
0827: 3f 03 0a  call  $0a03
082a: 8d 1c     mov   y,#$1c
082c: 3f 03 0a  call  $0a03
082f: e8 3c     mov   a,#$3c
0831: 8d 5d     mov   y,#$5d
0833: 3f 03 0a  call  $0a03
0836: e8 f0     mov   a,#$f0
0838: c5 f1 00  mov   $00f1,a
083b: e8 10     mov   a,#$10
083d: c5 fa 00  mov   $00fa,a
0840: c4 53     mov   $53,a
0842: e8 01     mov   a,#$01
0844: c5 f1 00  mov   $00f1,a
0847: 8d 0a     mov   y,#$0a
0849: ad 05     cmp   y,#$05
084b: f0 07     beq   $0854
084d: b0 08     bcs   $0857
084f: 69 4d 4c  cmp   ($4c),($4d)
0852: d0 11     bne   $0865
0854: e3 4c 0e  bbs7  $4c,$0865
0857: f6 21 12  mov   a,$1221+y
085a: c5 f2 00  mov   $00f2,a
085d: f6 2b 12  mov   a,$122b+y
0860: 5d        mov   x,a
0861: e6        mov   a,(x)
0862: c5 f3 00  mov   $00f3,a
0865: fe e2     dbnz  y,$0849
0867: cb 45     mov   $45,y
0869: cb 46     mov   $46,y
086b: e4 18     mov   a,$18
086d: 44 19     eor   a,$19
086f: 5c        lsr   a
0870: 5c        lsr   a
0871: ed        notc
0872: 6b 18     ror   $18
0874: 6b 19     ror   $19
0876: ec fd 00  mov   y,$00fd
0879: f0 fb     beq   $0876
087b: 6d        push  y
087c: e8 38     mov   a,#$38
087e: cf        mul   ya
087f: 60        clrc
0880: 84 43     adc   a,$43
0882: c4 43     mov   $43,a
0884: 90 26     bcc   $08ac
0886: 3f 68 18  call  $1868
0889: cd 01     mov   x,#$01
088b: 3f e3 08  call  $08e3
088e: 3f d2 1a  call  $1ad2
0891: cd 02     mov   x,#$02
0893: 3f e3 08  call  $08e3
0896: 3f d3 1d  call  $1dd3
0899: 3f 5c 1d  call  $1d5c
089c: 69 4d 4c  cmp   ($4c),($4d)
089f: f0 0b     beq   $08ac
08a1: ac c7 03  inc   $03c7
08a4: e5 c7 03  mov   a,$03c7
08a7: 5c        lsr   a
08a8: b0 02     bcs   $08ac
08aa: ab 4c     inc   $4c
08ac: e4 53     mov   a,$53
08ae: ee        pop   y
08af: cf        mul   ya
08b0: 60        clrc
08b1: 84 51     adc   a,$51
08b3: c4 51     mov   $51,a
08b5: 90 10     bcc   $08c7
08b7: e5 e8 03  mov   a,$03e8
08ba: d0 03     bne   $08bf
08bc: 3f 66 0b  call  $0b66
08bf: cd 00     mov   x,#$00
08c1: 3f f4 08  call  $08f4
08c4: 5f 47 08  jmp   $0847
08c7: e4 04     mov   a,$04
08c9: f0 12     beq   $08dd
08cb: cd 00     mov   x,#$00
08cd: 8f 01 47  mov   $47,#$01
08d0: f4 31     mov   a,$31+x
08d2: f0 03     beq   $08d7
08d4: 3f 4a 11  call  $114a
08d7: 3d        inc   x
08d8: 3d        inc   x
08d9: 0b 47     asl   $47
08db: d0 f3     bne   $08d0
08dd: 3f 0a 0a  call  $0a0a
08e0: 5f 47 08  jmp   $0847
08e3: f4 04     mov   a,$04+x
08e5: d5 f4 00  mov   $00f4+x,a
08e8: f5 f4 00  mov   a,$00f4+x
08eb: 75 f4 00  cmp   a,$00f4+x
08ee: d0 f8     bne   $08e8
08f0: fd        mov   y,a
08f1: db 00     mov   $00+x,y
08f3: 6f        ret

08f4: f4 04     mov   a,$04+x
08f6: d5 f4 00  mov   $00f4+x,a
08f9: f5 f4 00  mov   a,$00f4+x
08fc: 75 f4 00  cmp   a,$00f4+x
08ff: d0 f8     bne   $08f9
0901: fd        mov   y,a
0902: f4 08     mov   a,$08+x
0904: db 08     mov   $08+x,y
0906: de 08 02  cbne  $08+x,$090b
0909: 8d 00     mov   y,#$00
090b: db 00     mov   $00+x,y
090d: 6f        ret

090e: ad ca     cmp   y,#$ca
0910: 90 05     bcc   $0917
0912: 3f db 0c  call  $0cdb
0915: 8d a4     mov   y,#$a4
0917: ad c8     cmp   y,#$c8
0919: b0 d8     bcs   $08f3
091b: e4 1a     mov   a,$1a
091d: 24 47     and   a,$47
091f: d0 d2     bne   $08f3
0921: dd        mov   a,y
0922: 28 7f     and   a,#$7f
0924: 60        clrc
0925: 84 50     adc   a,$50
0927: 60        clrc
0928: 95 f0 02  adc   a,$02f0+x
092b: d5 61 03  mov   $0361+x,a
092e: f5 81 03  mov   a,$0381+x
0931: d5 60 03  mov   $0360+x,a
0934: f5 b1 02  mov   a,$02b1+x
0937: 5c        lsr   a
0938: e8 00     mov   a,#$00
093a: 7c        ror   a
093b: d5 a0 02  mov   $02a0+x,a
093e: e8 00     mov   a,#$00
0940: d4 b0     mov   $b0+x,a
0942: d5 00 01  mov   $0100+x,a
0945: d5 d0 02  mov   $02d0+x,a
0948: d4 c0     mov   $c0+x,a
094a: 09 47 5e  or    ($5e),($47)
094d: 09 47 45  or    ($45),($47)
0950: f5 80 02  mov   a,$0280+x
0953: d4 a0     mov   $a0+x,a
0955: f0 1e     beq   $0975
0957: f5 81 02  mov   a,$0281+x
095a: d4 a1     mov   $a1+x,a
095c: f5 90 02  mov   a,$0290+x
095f: d0 0a     bne   $096b
0961: f5 61 03  mov   a,$0361+x
0964: 80        setc
0965: b5 91 02  sbc   a,$0291+x
0968: d5 61 03  mov   $0361+x,a
096b: f5 91 02  mov   a,$0291+x
096e: 60        clrc
096f: 95 61 03  adc   a,$0361+x
0972: 3f 20 0f  call  $0f20
0975: 3f 38 0f  call  $0f38
0978: 8d 00     mov   y,#$00
097a: e4 11     mov   a,$11
097c: 80        setc
097d: a8 34     sbc   a,#$34
097f: b0 09     bcs   $098a
0981: e4 11     mov   a,$11
0983: 80        setc
0984: a8 13     sbc   a,#$13
0986: b0 06     bcs   $098e
0988: dc        dec   y
0989: 1c        asl   a
098a: 7a 10     addw  ya,$10
098c: da 10     movw  $10,ya
098e: 4d        push  x
098f: e4 11     mov   a,$11
0991: 1c        asl   a
0992: 8d 00     mov   y,#$00
0994: cd 18     mov   x,#$18
0996: 9e        div   ya,x
0997: 5d        mov   x,a
0998: f6 37 12  mov   a,$1237+y
099b: c4 15     mov   $15,a
099d: f6 36 12  mov   a,$1236+y
09a0: c4 14     mov   $14,a
09a2: f6 39 12  mov   a,$1239+y
09a5: 2d        push  a
09a6: f6 38 12  mov   a,$1238+y
09a9: ee        pop   y
09aa: 9a 14     subw  ya,$14
09ac: eb 10     mov   y,$10
09ae: cf        mul   ya
09af: dd        mov   a,y
09b0: 8d 00     mov   y,#$00
09b2: 7a 14     addw  ya,$14
09b4: cb 15     mov   $15,y
09b6: 1c        asl   a
09b7: 2b 15     rol   $15
09b9: c4 14     mov   $14,a
09bb: 2f 04     bra   $09c1
09bd: 4b 15     lsr   $15
09bf: 7c        ror   a
09c0: 3d        inc   x
09c1: c8 06     cmp   x,#$06
09c3: d0 f8     bne   $09bd
09c5: c4 14     mov   $14,a
09c7: ce        pop   x
09c8: f5 20 02  mov   a,$0220+x
09cb: eb 15     mov   y,$15
09cd: cf        mul   ya
09ce: da 16     movw  $16,ya
09d0: f5 20 02  mov   a,$0220+x
09d3: eb 14     mov   y,$14
09d5: cf        mul   ya
09d6: 6d        push  y
09d7: f5 21 02  mov   a,$0221+x
09da: eb 14     mov   y,$14
09dc: cf        mul   ya
09dd: 7a 16     addw  ya,$16
09df: da 16     movw  $16,ya
09e1: f5 21 02  mov   a,$0221+x
09e4: eb 15     mov   y,$15
09e6: cf        mul   ya
09e7: fd        mov   y,a
09e8: ae        pop   a
09e9: 7a 16     addw  ya,$16
09eb: da 16     movw  $16,ya
09ed: 7d        mov   a,x
09ee: 9f        xcn   a
09ef: 5c        lsr   a
09f0: 08 02     or    a,#$02
09f2: fd        mov   y,a
09f3: e4 16     mov   a,$16
09f5: 3f fb 09  call  $09fb
09f8: fc        inc   y
09f9: e4 17     mov   a,$17
09fb: 2d        push  a
09fc: e4 47     mov   a,$47
09fe: 24 1a     and   a,$1a
0a00: ae        pop   a
0a01: d0 06     bne   $0a09
0a03: cc f2 00  mov   $00f2,y
0a06: c5 f3 00  mov   $00f3,a
0a09: 6f        ret

0a0a: 8b d0     dec   $d0
0a0c: e4 d0     mov   a,$d0
0a0e: 28 03     and   a,#$03
0a10: 8d 3f     mov   y,#$3f
0a12: cf        mul   ya
0a13: fd        mov   y,a
0a14: 8f 07 12  mov   $12,#$07
0a17: fc        inc   y
0a18: cd 04     mov   x,#$04
0a1a: aa 19 c0  mov1  c,$0019,6
0a1d: 8a 19 a0  eor1  c,$0019,5
0a20: 2b 18     rol   $18
0a22: 2b 19     rol   $19
0a24: e4 19     mov   a,$19
0a26: 08 11     or    a,#$11
0a28: d6 00 fe  mov   $fe00+y,a
0a2b: fc        inc   y
0a2c: e4 18     mov   a,$18
0a2e: 08 11     or    a,#$11
0a30: d6 00 fe  mov   $fe00+y,a
0a33: fc        inc   y
0a34: 1d        dec   x
0a35: d0 e3     bne   $0a1a
0a37: 6e 12 dd  dbnz  $12,$0a17
0a3a: 6f        ret

0a3b: 8d 00     mov   y,#$00
0a3d: cd 1b     mov   x,#$1b
0a3f: e8 96     mov   a,#$96
0a41: d6 00 fe  mov   $fe00+y,a
0a44: fc        inc   y
0a45: fc        inc   y
0a46: fc        inc   y
0a47: fc        inc   y
0a48: fc        inc   y
0a49: fc        inc   y
0a4a: fc        inc   y
0a4b: fc        inc   y
0a4c: fc        inc   y
0a4d: 1d        dec   x
0a4e: d0 f1     bne   $0a41
0a50: bc        inc   a
0a51: d6 00 fe  mov   $fe00+y,a
0a54: 8d fe     mov   y,#$fe
0a56: e8 00     mov   a,#$00
0a58: c5 80 3c  mov   $3c80,a
0a5b: cc 81 3c  mov   $3c81,y
0a5e: c5 82 3c  mov   $3c82,a
0a61: cc 83 3c  mov   $3c83,y
0a64: e4 18     mov   a,$18
0a66: 04 19     or    a,$19
0a68: d0 02     bne   $0a6c
0a6a: ab 18     inc   $18
0a6c: 6f        ret

0a6d: e8 00     mov   a,#$00
0a6f: 8d 2c     mov   y,#$2c
0a71: 3f 03 0a  call  $0a03
0a74: 8d 3c     mov   y,#$3c
0a76: 3f 03 0a  call  $0a03
0a79: e8 ff     mov   a,#$ff
0a7b: 8d 5c     mov   y,#$5c
0a7d: 3f 03 0a  call  $0a03
0a80: 3f 5b 12  call  $125b
0a83: e8 00     mov   a,#$00
0a85: c5 ca 03  mov   $03ca,a
0a88: c4 04     mov   $04,a
0a8a: c5 05 00  mov   $0005,a
0a8d: c5 06 00  mov   $0006,a
0a90: c5 07 00  mov   $0007,a
0a93: c4 1a     mov   $1a,a
0a95: 6f        ret

0a96: cd 80     mov   x,#$80
0a98: d8 5a     mov   $5a,x
0a9a: c9 ca 03  mov   $03ca,x
0a9d: e8 00     mov   a,#$00
0a9f: c4 5b     mov   $5b,a
0aa1: 80        setc
0aa2: a4 59     sbc   a,$59
0aa4: 3f 43 0f  call  $0f43
0aa7: da 5c     movw  $5c,ya
0aa9: 5f 6d 0b  jmp   $0b6d

0aac: e5 e1 03  mov   a,$03e1
0aaf: d0 1e     bne   $0acf
0ab1: e4 59     mov   a,$59
0ab3: c5 e1 03  mov   $03e1,a
0ab6: e8 70     mov   a,#$70
0ab8: c4 59     mov   $59,a
0aba: 5f 6d 0b  jmp   $0b6d

0abd: e5 e1 03  mov   a,$03e1
0ac0: f0 0d     beq   $0acf
0ac2: e5 e1 03  mov   a,$03e1
0ac5: c4 59     mov   $59,a
0ac7: e8 00     mov   a,#$00
0ac9: c5 e1 03  mov   $03e1,a
0acc: 5f 6d 0b  jmp   $0b6d
0acf: 6f        ret

0ad0: 68 ff     cmp   a,#$ff
0ad2: f0 99     beq   $0a6d
0ad4: 68 f1     cmp   a,#$f1
0ad6: f0 be     beq   $0a96
0ad8: 68 f2     cmp   a,#$f2
0ada: f0 d0     beq   $0aac
0adc: 68 f3     cmp   a,#$f3
0ade: f0 dd     beq   $0abd
0ae0: 68 f0     cmp   a,#$f0
0ae2: f0 0a     beq   $0aee
0ae4: 2f 24     bra   $0b0a

0ae6: 8c ca 03  dec   $03ca
0ae9: f0 03     beq   $0aee
0aeb: 5f 79 0b  jmp   $0b79
0aee: e4 1a     mov   a,$1a
0af0: 48 ff     eor   a,#$ff
0af2: 0e 46 00  tset1 $0046
0af5: 8f 00 04  mov   $04,#$00
0af8: 8f 00 47  mov   $47,#$00
0afb: 6f        ret

0afc: 8d 00     mov   y,#$00
0afe: f7 40     mov   a,($40)+y
0b00: 3a 40     incw  $40
0b02: 2d        push  a
0b03: f7 40     mov   a,($40)+y
0b05: 3a 40     incw  $40
0b07: fd        mov   y,a
0b08: ae        pop   a
0b09: 6f        ret

0b0a: 60        clrc
0b0b: cd 00     mov   x,#$00
0b0d: c9 ca 03  mov   $03ca,x
0b10: c9 e1 03  mov   $03e1,x
0b13: c4 04     mov   $04,a
0b15: 1c        asl   a
0b16: 5d        mov   x,a
0b17: f5 ff df  mov   a,$dfff+x
0b1a: fd        mov   y,a
0b1b: f5 fe df  mov   a,$dffe+x
0b1e: da 40     movw  $40,ya
0b20: 8f 02 0c  mov   $0c,#$02
0b23: e4 1a     mov   a,$1a
0b25: 48 ff     eor   a,#$ff
0b27: 0e 46 00  tset1 $0046
0b2a: 6f        ret

0b2b: cd 0e     mov   x,#$0e
0b2d: 8f 80 47  mov   $47,#$80
0b30: e8 ff     mov   a,#$ff
0b32: d5 01 03  mov   $0301+x,a
0b35: e8 0a     mov   a,#$0a
0b37: 3f 34 0d  call  $0d34
0b3a: d5 11 02  mov   $0211+x,a
0b3d: d5 81 03  mov   $0381+x,a
0b40: d5 f0 02  mov   $02f0+x,a
0b43: d5 80 02  mov   $0280+x,a
0b46: d5 ff 03  mov   $03ff+x,a
0b49: d4 b1     mov   $b1+x,a
0b4b: d4 c1     mov   $c1+x,a
0b4d: 1d        dec   x
0b4e: 1d        dec   x
0b4f: 4b 47     lsr   $47
0b51: d0 dd     bne   $0b30
0b53: c4 5a     mov   $5a,a
0b55: c4 68     mov   $68,a
0b57: c4 54     mov   $54,a
0b59: c4 50     mov   $50,a
0b5b: c4 42     mov   $42,a
0b5d: c4 5f     mov   $5f,a
0b5f: 8f c0 59  mov   $59,#$c0
0b62: 8f 20 53  mov   $53,#$20
0b65: 6f        ret

0b66: e4 00     mov   a,$00
0b68: f0 03     beq   $0b6d
0b6a: 5f d0 0a  jmp   $0ad0
0b6d: e4 04     mov   a,$04
0b6f: f0 f4     beq   $0b65
0b71: e5 ca 03  mov   a,$03ca
0b74: f0 03     beq   $0b79
0b76: 5f e6 0a  jmp   $0ae6
0b79: e4 0c     mov   a,$0c
0b7b: f0 65     beq   $0be2
0b7d: 6e 0c ab  dbnz  $0c,$0b2b
0b80: 3f fc 0a  call  $0afc
0b83: d0 25     bne   $0baa
0b85: fd        mov   y,a
0b86: d0 03     bne   $0b8b
0b88: 5f ee 0a  jmp   $0aee
0b8b: 68 80     cmp   a,#$80
0b8d: f0 06     beq   $0b95
0b8f: 68 81     cmp   a,#$81
0b91: d0 06     bne   $0b99
0b93: e8 00     mov   a,#$00
0b95: c4 1b     mov   $1b,a
0b97: 2f e7     bra   $0b80
0b99: 8b 42     dec   $42
0b9b: 10 02     bpl   $0b9f
0b9d: c4 42     mov   $42,a
0b9f: 3f fc 0a  call  $0afc
0ba2: f8 42     mov   x,$42
0ba4: f0 da     beq   $0b80
0ba6: da 40     movw  $40,ya
0ba8: 2f d6     bra   $0b80
0baa: da 16     movw  $16,ya
0bac: 8d 0f     mov   y,#$0f
0bae: f7 16     mov   a,($16)+y
0bb0: d6 30 00  mov   $0030+y,a
0bb3: dc        dec   y
0bb4: 10 f8     bpl   $0bae
0bb6: cd 00     mov   x,#$00
0bb8: 8f 01 47  mov   $47,#$01
0bbb: f4 31     mov   a,$31+x
0bbd: f0 0a     beq   $0bc9
0bbf: f5 11 02  mov   a,$0211+x
0bc2: d0 05     bne   $0bc9
0bc4: e8 00     mov   a,#$00
0bc6: 3f db 0c  call  $0cdb
0bc9: e8 00     mov   a,#$00
0bcb: d4 80     mov   $80+x,a
0bcd: d4 91     mov   $91+x,a
0bcf: 2d        push  a
0bd0: e4 47     mov   a,$47
0bd2: 24 1a     and   a,$1a
0bd4: ae        pop   a
0bd5: d0 02     bne   $0bd9
0bd7: d4 90     mov   $90+x,a
0bd9: bc        inc   a
0bda: d4 70     mov   $70+x,a
0bdc: 3d        inc   x
0bdd: 3d        inc   x
0bde: 0b 47     asl   $47
0be0: d0 d9     bne   $0bbb
0be2: cd 00     mov   x,#$00
0be4: d8 5e     mov   $5e,x
0be6: 8f 01 47  mov   $47,#$01
0be9: d8 44     mov   $44,x
0beb: f4 31     mov   a,$31+x
0bed: f0 7a     beq   $0c69
0bef: 9b 70     dec   $70+x
0bf1: d0 6c     bne   $0c5f
0bf3: 3f d1 0c  call  $0cd1
0bf6: d0 17     bne   $0c0f
0bf8: f4 80     mov   a,$80+x
0bfa: f0 84     beq   $0b80
0bfc: 3f 2c 0e  call  $0e2c
0bff: 9b 80     dec   $80+x
0c01: d0 f0     bne   $0bf3
0c03: f5 30 02  mov   a,$0230+x
0c06: d4 30     mov   $30+x,a
0c08: f5 31 02  mov   a,$0231+x
0c0b: d4 31     mov   $31+x,a
0c0d: 2f e4     bra   $0bf3
0c0f: 30 20     bmi   $0c31
0c11: d5 00 02  mov   $0200+x,a
0c14: 3f d1 0c  call  $0cd1
0c17: 30 18     bmi   $0c31
0c19: 2d        push  a
0c1a: 9f        xcn   a
0c1b: 28 07     and   a,#$07
0c1d: fd        mov   y,a
0c1e: f6 a8 3d  mov   a,$3da8+y
0c21: d5 01 02  mov   $0201+x,a
0c24: ae        pop   a
0c25: 28 0f     and   a,#$0f
0c27: fd        mov   y,a
0c28: f6 b0 3d  mov   a,$3db0+y
0c2b: d5 10 02  mov   $0210+x,a
0c2e: 3f d1 0c  call  $0cd1
0c31: 68 e0     cmp   a,#$e0
0c33: 90 05     bcc   $0c3a
0c35: 3f bf 0c  call  $0cbf
0c38: 2f b9     bra   $0bf3
0c3a: f5 ff 03  mov   a,$03ff+x
0c3d: 04 1b     or    a,$1b
0c3f: d0 0c     bne   $0c4d
0c41: dd        mov   a,y
0c42: 2d        push  a
0c43: e4 47     mov   a,$47
0c45: 24 1a     and   a,$1a
0c47: ae        pop   a
0c48: d0 03     bne   $0c4d
0c4a: 3f 0e 09  call  $090e
0c4d: f5 00 02  mov   a,$0200+x
0c50: d4 70     mov   $70+x,a
0c52: fd        mov   y,a
0c53: f5 01 02  mov   a,$0201+x
0c56: cf        mul   ya
0c57: dd        mov   a,y
0c58: d0 01     bne   $0c5b
0c5a: bc        inc   a
0c5b: d4 71     mov   $71+x,a
0c5d: 2f 07     bra   $0c66
0c5f: e4 1b     mov   a,$1b
0c61: d0 06     bne   $0c69
0c63: 3f 6b 10  call  $106b
0c66: 3f ef 0e  call  $0eef
0c69: 3d        inc   x
0c6a: 3d        inc   x
0c6b: 0b 47     asl   $47
0c6d: f0 03     beq   $0c72
0c6f: 5f e9 0b  jmp   $0be9
0c72: e4 54     mov   a,$54
0c74: f0 0b     beq   $0c81
0c76: ba 56     movw  ya,$56
0c78: 7a 52     addw  ya,$52
0c7a: 6e 54 02  dbnz  $54,$0c7f
0c7d: ba 54     movw  ya,$54
0c7f: da 52     movw  $52,ya
0c81: e4 68     mov   a,$68
0c83: f0 15     beq   $0c9a
0c85: ba 64     movw  ya,$64
0c87: 7a 60     addw  ya,$60
0c89: da 60     movw  $60,ya
0c8b: ba 66     movw  ya,$66
0c8d: 7a 62     addw  ya,$62
0c8f: 6e 68 06  dbnz  $68,$0c98
0c92: ba 68     movw  ya,$68
0c94: da 60     movw  $60,ya
0c96: eb 6a     mov   y,$6a
0c98: da 62     movw  $62,ya
0c9a: e4 5a     mov   a,$5a
0c9c: f0 0e     beq   $0cac
0c9e: ba 5c     movw  ya,$5c
0ca0: 7a 58     addw  ya,$58
0ca2: 6e 5a 02  dbnz  $5a,$0ca7
0ca5: ba 5a     movw  ya,$5a
0ca7: da 58     movw  $58,ya
0ca9: 8f ff 5e  mov   $5e,#$ff
0cac: cd 00     mov   x,#$00
0cae: 8f 01 47  mov   $47,#$01
0cb1: f4 31     mov   a,$31+x
0cb3: f0 03     beq   $0cb8
0cb5: 3f b4 0f  call  $0fb4
0cb8: 3d        inc   x
0cb9: 3d        inc   x
0cba: 0b 47     asl   $47
0cbc: d0 f3     bne   $0cb1
0cbe: 6f        ret

0cbf: 1c        asl   a
0cc0: fd        mov   y,a
0cc1: f6 a0 0e  mov   a,$0ea0+y
0cc4: 2d        push  a
0cc5: f6 9f 0e  mov   a,$0e9f+y
0cc8: 2d        push  a
0cc9: dd        mov   a,y
0cca: 5c        lsr   a
0ccb: fd        mov   y,a
0ccc: f6 35 0f  mov   a,$0f35+y
0ccf: f0 08     beq   $0cd9
0cd1: e7 30     mov   a,($30+x)
0cd3: bb 30     inc   $30+x
0cd5: d0 02     bne   $0cd9
0cd7: bb 31     inc   $31+x
0cd9: fd        mov   y,a
0cda: 6f        ret

;vcmd e0
0cdb: d5 11 02  mov   $0211+x,a
0cde: fd        mov   y,a
0cdf: 10 06     bpl   $0ce7
0ce1: 80        setc
0ce2: a8 ca     sbc   a,#$ca
0ce4: 60        clrc
0ce5: 84 5f     adc   a,$5f
0ce7: 8d 06     mov   y,#$06
0ce9: cf        mul   ya
0cea: da 14     movw  $14,ya
0cec: 60        clrc
0ced: 98 00 14  adc   $14,#$00
0cf0: 98 3d 15  adc   $15,#$3d
0cf3: e4 1a     mov   a,$1a
0cf5: 24 47     and   a,$47
0cf7: d0 3a     bne   $0d33
0cf9: 4d        push  x
0cfa: 7d        mov   a,x
0cfb: 9f        xcn   a
0cfc: 5c        lsr   a
0cfd: 08 04     or    a,#$04
0cff: 5d        mov   x,a
0d00: 8d 00     mov   y,#$00
0d02: f7 14     mov   a,($14)+y
0d04: 10 0e     bpl   $0d14
0d06: 28 1f     and   a,#$1f
0d08: 38 20 48  and   $48,#$20
0d0b: 0e 48 00  tset1 $0048
0d0e: 09 47 49  or    ($49),($47)
0d11: dd        mov   a,y
0d12: 2f 07     bra   $0d1b
0d14: e4 47     mov   a,$47
0d16: 4e 49 00  tclr1 $0049
0d19: f7 14     mov   a,($14)+y
0d1b: c9 f2 00  mov   $00f2,x
0d1e: c5 f3 00  mov   $00f3,a
0d21: 3d        inc   x
0d22: fc        inc   y
0d23: ad 04     cmp   y,#$04
0d25: d0 f2     bne   $0d19
0d27: ce        pop   x
0d28: f7 14     mov   a,($14)+y
0d2a: d5 21 02  mov   $0221+x,a
0d2d: fc        inc   y
0d2e: f7 14     mov   a,($14)+y
0d30: d5 20 02  mov   $0220+x,a
0d33: 6f        ret

;vcmd e1
0d34: d5 51 03  mov   $0351+x,a
0d37: 28 1f     and   a,#$1f
0d39: d5 31 03  mov   $0331+x,a
0d3c: e8 00     mov   a,#$00
0d3e: d5 30 03  mov   $0330+x,a
0d41: 6f        ret

;vcmd e2
0d42: d4 91     mov   $91+x,a
0d44: 2d        push  a
0d45: 3f d1 0c  call  $0cd1
0d48: d5 50 03  mov   $0350+x,a
0d4b: 80        setc
0d4c: b5 31 03  sbc   a,$0331+x
0d4f: ce        pop   x
0d50: 3f 43 0f  call  $0f43
0d53: d5 40 03  mov   $0340+x,a
0d56: dd        mov   a,y
0d57: d5 41 03  mov   $0341+x,a
0d5a: 6f        ret

;vcmd e3
0d5b: d5 b0 02  mov   $02b0+x,a
0d5e: 3f d1 0c  call  $0cd1
0d61: d5 a1 02  mov   $02a1+x,a
0d64: 3f d1 0c  call  $0cd1
;vcmd e4
0d67: d4 b1     mov   $b1+x,a
0d69: d5 c1 02  mov   $02c1+x,a
0d6c: e8 00     mov   a,#$00
0d6e: d5 b1 02  mov   $02b1+x,a
0d71: 6f        ret

;vcmd f0
0d72: d5 b1 02  mov   $02b1+x,a
0d75: 2d        push  a
0d76: 8d 00     mov   y,#$00
0d78: f4 b1     mov   a,$b1+x
0d7a: ce        pop   x
0d7b: 9e        div   ya,x
0d7c: f8 44     mov   x,$44
0d7e: d5 c0 02  mov   $02c0+x,a
0d81: 6f        ret

;vcmd e5
0d82: e5 ca 03  mov   a,$03ca
0d85: d0 09     bne   $0d90
0d87: e5 e1 03  mov   a,$03e1
0d8a: d0 04     bne   $0d90
0d8c: e8 00     mov   a,#$00
0d8e: da 58     movw  $58,ya
0d90: 6f        ret

;vcmd e6
0d91: c4 5a     mov   $5a,a
0d93: 3f d1 0c  call  $0cd1
0d96: c4 5b     mov   $5b,a
0d98: 80        setc
0d99: a4 59     sbc   a,$59
0d9b: f8 5a     mov   x,$5a
0d9d: 3f 43 0f  call  $0f43
0da0: da 5c     movw  $5c,ya
0da2: 6f        ret

;vcmd e7
0da3: e8 00     mov   a,#$00
0da5: da 52     movw  $52,ya
0da7: 6f        ret

;vcmd e8
0da8: c4 54     mov   $54,a
0daa: 3f d1 0c  call  $0cd1
0dad: c4 55     mov   $55,a
0daf: 80        setc
0db0: a4 53     sbc   a,$53
0db2: f8 54     mov   x,$54
0db4: 3f 43 0f  call  $0f43
0db7: da 56     movw  $56,ya
0db9: 6f        ret

;vcmd e9
0dba: c4 50     mov   $50,a
0dbc: 6f        ret

;vcmd ea
0dbd: d5 f0 02  mov   $02f0+x,a
0dc0: 6f        ret

;vcmd eb
0dc1: d5 e0 02  mov   $02e0+x,a
0dc4: 3f d1 0c  call  $0cd1
0dc7: d5 d1 02  mov   $02d1+x,a
0dca: 3f d1 0c  call  $0cd1
;vcmd ec
0dcd: d4 c1     mov   $c1+x,a
0dcf: 6f        ret

;vcmd f1
0dd0: e8 01     mov   a,#$01
0dd2: 2f 02     bra   $0dd6
;vcmd f2
0dd4: e8 00     mov   a,#$00
0dd6: d5 90 02  mov   $0290+x,a
0dd9: dd        mov   a,y
0dda: d5 81 02  mov   $0281+x,a
0ddd: 3f d1 0c  call  $0cd1
0de0: d5 80 02  mov   $0280+x,a
0de3: 3f d1 0c  call  $0cd1
0de6: d5 91 02  mov   $0291+x,a
0de9: 6f        ret

;vcmd f3
0dea: d5 80 02  mov   $0280+x,a
0ded: 6f        ret

;vcmd ed
0dee: d5 01 03  mov   $0301+x,a
0df1: e8 00     mov   a,#$00
0df3: d5 00 03  mov   $0300+x,a
0df6: 6f        ret

;vcmd ee
0df7: d4 90     mov   $90+x,a
0df9: 2d        push  a
0dfa: 3f d1 0c  call  $0cd1
0dfd: d5 20 03  mov   $0320+x,a
0e00: 80        setc
0e01: b5 01 03  sbc   a,$0301+x
0e04: ce        pop   x
0e05: 3f 43 0f  call  $0f43
0e08: d5 10 03  mov   $0310+x,a
0e0b: dd        mov   a,y
0e0c: d5 11 03  mov   $0311+x,a
0e0f: 6f        ret

;vcmd f4
0e10: d5 81 03  mov   $0381+x,a
0e13: 6f        ret

;vcmd ef
0e14: d5 40 02  mov   $0240+x,a
0e17: 3f d1 0c  call  $0cd1
0e1a: d5 41 02  mov   $0241+x,a
0e1d: 3f d1 0c  call  $0cd1
0e20: d4 80     mov   $80+x,a
0e22: f4 30     mov   a,$30+x
0e24: d5 30 02  mov   $0230+x,a
0e27: f4 31     mov   a,$31+x
0e29: d5 31 02  mov   $0231+x,a
0e2c: f5 40 02  mov   a,$0240+x
0e2f: d4 30     mov   $30+x,a
0e31: f5 41 02  mov   a,$0241+x
0e34: d4 31     mov   $31+x,a
0e36: 6f        ret

;vcmd f5
0e37: c5 c3 03  mov   $03c3,a
0e3a: c4 4a     mov   $4a,a
0e3c: 3f d1 0c  call  $0cd1
0e3f: e8 00     mov   a,#$00
0e41: da 60     movw  $60,ya
0e43: 3f d1 0c  call  $0cd1
0e46: e8 00     mov   a,#$00
0e48: da 62     movw  $62,ya
0e4a: b2 48     clr5  $48
0e4c: 6f        ret

;vcmd f8
0e4d: c4 68     mov   $68,a
0e4f: 3f d1 0c  call  $0cd1
0e52: c4 69     mov   $69,a
0e54: 80        setc
0e55: a4 61     sbc   a,$61
0e57: f8 68     mov   x,$68
0e59: 3f 43 0f  call  $0f43
0e5c: da 64     movw  $64,ya
0e5e: 3f d1 0c  call  $0cd1
0e61: c4 6a     mov   $6a,a
0e63: 80        setc
0e64: a4 63     sbc   a,$63
0e66: f8 68     mov   x,$68
0e68: 3f 43 0f  call  $0f43
0e6b: da 66     movw  $66,ya
0e6d: 6f        ret

;vcmd f6
0e6e: da 60     movw  $60,ya
0e70: da 62     movw  $62,ya
0e72: a2 48     set5  $48
0e74: 6f        ret

;vcmd f7
0e75: 3f 97 0e  call  $0e97
0e78: 3f d1 0c  call  $0cd1
0e7b: c4 4e     mov   $4e,a
0e7d: 3f d1 0c  call  $0cd1
0e80: 8d 08     mov   y,#$08
0e82: cf        mul   ya
0e83: 5d        mov   x,a
0e84: 8d 0f     mov   y,#$0f
0e86: f5 02 12  mov   a,$1202+x
0e89: 3f 03 0a  call  $0a03
0e8c: 3d        inc   x
0e8d: dd        mov   a,y
0e8e: 60        clrc
0e8f: 88 10     adc   a,#$10
0e91: fd        mov   y,a
0e92: 10 f2     bpl   $0e86
0e94: f8 44     mov   x,$44
0e96: 6f        ret

0e97: c4 4d     mov   $4d,a
0e99: 8d 7d     mov   y,#$7d
0e9b: cc f2 00  mov   $00f2,y
0e9e: e5 f3 00  mov   a,$00f3
0ea1: 64 4d     cmp   a,$4d
0ea3: f0 2b     beq   $0ed0
0ea5: 28 0f     and   a,#$0f
0ea7: 48 ff     eor   a,#$ff
0ea9: f3 4c 03  bbc7  $4c,$0eaf
0eac: 60        clrc
0ead: 84 4c     adc   a,$4c
0eaf: c4 4c     mov   $4c,a
0eb1: 8d 04     mov   y,#$04
0eb3: f6 21 12  mov   a,$1221+y
0eb6: c5 f2 00  mov   $00f2,a
0eb9: e8 00     mov   a,#$00
0ebb: c5 f3 00  mov   $00f3,a
0ebe: fe f3     dbnz  y,$0eb3
0ec0: e4 48     mov   a,$48
0ec2: 08 20     or    a,#$20
0ec4: 8d 6c     mov   y,#$6c
0ec6: 3f 03 0a  call  $0a03
0ec9: e4 4d     mov   a,$4d
0ecb: 8d 7d     mov   y,#$7d
0ecd: 3f 03 0a  call  $0a03
0ed0: 1c        asl   a
0ed1: 1c        asl   a
0ed2: 1c        asl   a
0ed3: 48 ff     eor   a,#$ff
0ed5: 80        setc
0ed6: 88 e0     adc   a,#$e0
0ed8: 8d 6d     mov   y,#$6d
0eda: 5f 03 0a  jmp   $0a03

;vcmd fa
0edd: c4 5f     mov   $5f,a
0edf: 6f        ret

;(unused vcmd fb - removed from table)
0ee0: 3f d3 0c  call  $0cd3
0ee3: 6f        ret

;(unused vcmd fc - removed from table)
0ee4: bc        inc   a
0ee5: d5 ff 03  mov   $03ff+x,a
0ee8: 6f        ret

;(unused vcmd fd - removed from table)
0ee9: bc        inc   a
;(unused vcmd fe - removed from table)
0eea: c4 1b     mov   $1b,a
0eec: 5f 23 0b  jmp   $0b23

0eef: f4 a0     mov   a,$a0+x
0ef1: d0 44     bne   $0f37
0ef3: e7 30     mov   a,($30+x)
0ef5: 68 f9     cmp   a,#$f9
0ef7: d0 3e     bne   $0f37
0ef9: e4 47     mov   a,$47
0efb: 24 1a     and   a,$1a
0efd: f0 0b     beq   $0f0a
0eff: 8f 04 10  mov   $10,#$04
0f02: 3f d3 0c  call  $0cd3
0f05: 6e 10 fa  dbnz  $10,$0f02
0f08: 2f 2d     bra   $0f37
0f0a: 3f d3 0c  call  $0cd3
0f0d: 3f d1 0c  call  $0cd1
;vcmd f9
0f10: d4 a1     mov   $a1+x,a
0f12: 3f d1 0c  call  $0cd1
0f15: d4 a0     mov   $a0+x,a
0f17: 3f d1 0c  call  $0cd1
0f1a: 60        clrc
0f1b: 84 50     adc   a,$50
0f1d: 95 f0 02  adc   a,$02f0+x
0f20: 28 7f     and   a,#$7f
0f22: d5 80 03  mov   $0380+x,a
0f25: 80        setc
0f26: b5 61 03  sbc   a,$0361+x
0f29: fb a0     mov   y,$a0+x
0f2b: 6d        push  y
0f2c: ce        pop   x
0f2d: 3f 43 0f  call  $0f43
0f30: d5 70 03  mov   $0370+x,a
0f33: dd        mov   a,y
0f34: d5 71 03  mov   $0371+x,a
0f37: 6f        ret


0f38: f5 61 03  mov   a,$0361+x
0f3b: c4 11     mov   $11,a
0f3d: f5 60 03  mov   a,$0360+x
0f40: c4 10     mov   $10,a
0f42: 6f        ret

0f43: ed        notc
0f44: 6b 12     ror   $12
0f46: 10 03     bpl   $0f4b
0f48: 48 ff     eor   a,#$ff
0f4a: bc        inc   a
0f4b: 8d 00     mov   y,#$00
0f4d: 9e        div   ya,x
0f4e: 2d        push  a
0f4f: e8 00     mov   a,#$00
0f51: 9e        div   ya,x
0f52: ee        pop   y
0f53: f8 44     mov   x,$44
0f55: f3 12 06  bbc7  $12,$0f5e
0f58: da 14     movw  $14,ya
0f5a: ba 0e     movw  ya,$0e
0f5c: 9a 14     subw  ya,$14
0f5e: 6f        ret


0f5f: dw $0cdb ;vcmd e0
0f61: dw $0d34 ;vcmd e1
0f63: dw $0d42 ;vcmd e2
0f65: dw $0d5b ;vcmd e3
0f67: dw $0d67 ;vcmd e4
0f69: dw $0d82 ;vcmd e5
0f6b: dw $0d91 ;vcmd e6
0f6d: dw $0da3 ;vcmd e7
0f6f: dw $0da8 ;vcmd e8
0f71: dw $0dba ;vcmd e9
0f73: dw $0dbd ;vcmd ea
0f75: dw $0dc1 ;vcmd eb
0f77: dw $0dcd ;vcmd ec
0f79: dw $0dee ;vcmd ed
0f7b: dw $0df7 ;vcmd ee
0f7d: dw $0e14 ;vcmd ef
0f7f: dw $0d72 ;vcmd f0
0f81: dw $0dd0 ;vcmd f1
0f83: dw $0dd4 ;vcmd f2
0f85: dw $0dea ;vcmd f3
0f87: dw $0e10 ;vcmd f4
0f89: dw $0e37 ;vcmd f5
0f8b: dw $0e6e ;vcmd f6
0f8d: dw $0e75 ;vcmd f7
0f8f: dw $0e4d ;vcmd f8
0f91: dw $0f10 ;vcmd f9
0f93: dw $0edd ;vcmd fa

0f95: db $01,$01,$02,$03,$00,$01,$02,$01
0f9d: db $02,$01,$01,$03,$00,$01,$02,$03
0fa5: db $01,$03,$03,$00,$01,$03,$00,$03
0fad: db $03,$03,$01,$02,$00,$00,$00

0fb4: f4 90     mov   a,$90+x
0fb6: f0 09     beq   $0fc1
0fb8: e8 00     mov   a,#$00
0fba: 8d 03     mov   y,#$03
0fbc: 9b 90     dec   $90+x
0fbe: 3f 47 10  call  $1047
0fc1: fb c1     mov   y,$c1+x
0fc3: f0 23     beq   $0fe8
0fc5: f5 e0 02  mov   a,$02e0+x
0fc8: de c0 1b  cbne  $c0+x,$0fe6
0fcb: 09 47 5e  or    ($5e),($47)
0fce: f5 d0 02  mov   a,$02d0+x
0fd1: 10 07     bpl   $0fda
0fd3: fc        inc   y
0fd4: d0 04     bne   $0fda
0fd6: e8 80     mov   a,#$80
0fd8: 2f 04     bra   $0fde
0fda: 60        clrc
0fdb: 95 d1 02  adc   a,$02d1+x
0fde: d5 d0 02  mov   $02d0+x,a
0fe1: 3f d0 11  call  $11d0
0fe4: 2f 07     bra   $0fed
0fe6: bb c0     inc   $c0+x
0fe8: e8 ff     mov   a,#$ff
0fea: 3f db 11  call  $11db
0fed: f4 91     mov   a,$91+x
0fef: f0 09     beq   $0ffa
0ff1: e8 30     mov   a,#$30
0ff3: 8d 03     mov   y,#$03
0ff5: 9b 91     dec   $91+x
0ff7: 3f 47 10  call  $1047
0ffa: e4 47     mov   a,$47
0ffc: 24 5e     and   a,$5e
0ffe: f0 46     beq   $1046
1000: f5 31 03  mov   a,$0331+x
1003: fd        mov   y,a
1004: f5 30 03  mov   a,$0330+x
1007: da 10     movw  $10,ya
1009: 7d        mov   a,x
100a: 9f        xcn   a
100b: 5c        lsr   a
100c: c4 12     mov   $12,a
100e: eb 11     mov   y,$11
1010: f6 ee 11  mov   a,$11ee+y
1013: 80        setc
1014: b6 ed 11  sbc   a,$11ed+y
1017: eb 10     mov   y,$10
1019: cf        mul   ya
101a: dd        mov   a,y
101b: eb 11     mov   y,$11
101d: 60        clrc
101e: 96 ed 11  adc   a,$11ed+y
1021: fd        mov   y,a
1022: f5 21 03  mov   a,$0321+x
1025: cf        mul   ya
1026: f5 51 03  mov   a,$0351+x
1029: 1c        asl   a
102a: 13 12 01  bbc0  $12,$102e
102d: 1c        asl   a
102e: dd        mov   a,y
102f: 90 03     bcc   $1034
1031: 48 ff     eor   a,#$ff
1033: bc        inc   a
1034: eb 12     mov   y,$12
1036: 3f fb 09  call  $09fb
1039: 8d 14     mov   y,#$14
103b: e8 00     mov   a,#$00
103d: 9a 10     subw  ya,$10
103f: da 10     movw  $10,ya
1041: ab 12     inc   $12
1043: 33 12 c8  bbc1  $12,$100e
1046: 6f        ret

1047: 09 47 5e  or    ($5e),($47)
104a: da 14     movw  $14,ya
104c: da 16     movw  $16,ya
104e: 4d        push  x
104f: ee        pop   y
1050: 60        clrc
1051: d0 0a     bne   $105d
1053: 98 1f 16  adc   $16,#$1f
1056: e8 00     mov   a,#$00
1058: d7 14     mov   ($14)+y,a
105a: fc        inc   y
105b: 2f 09     bra   $1066
105d: 98 10 16  adc   $16,#$10
1060: 3f 64 10  call  $1064
1063: fc        inc   y
1064: f7 14     mov   a,($14)+y
1066: 97 16     adc   a,($16)+y
1068: d7 14     mov   ($14)+y,a
106a: 6f        ret

106b: f4 71     mov   a,$71+x
106d: f0 65     beq   $10d4
106f: 9b 71     dec   $71+x
1071: f0 05     beq   $1078
1073: e8 02     mov   a,#$02
1075: de 70 5c  cbne  $70+x,$10d4
1078: f4 80     mov   a,$80+x
107a: c4 17     mov   $17,a
107c: f4 30     mov   a,$30+x
107e: fb 31     mov   y,$31+x
1080: da 14     movw  $14,ya
1082: 8d 00     mov   y,#$00
1084: f7 14     mov   a,($14)+y
1086: f0 1e     beq   $10a6
1088: 30 07     bmi   $1091
108a: fc        inc   y
108b: 30 40     bmi   $10cd
108d: f7 14     mov   a,($14)+y
108f: 10 f9     bpl   $108a
1091: 68 c8     cmp   a,#$c8
1093: f0 3f     beq   $10d4
1095: 68 ef     cmp   a,#$ef
1097: f0 29     beq   $10c2
1099: 68 e0     cmp   a,#$e0
109b: 90 30     bcc   $10cd
109d: 6d        push  y
109e: fd        mov   y,a
109f: ae        pop   a
10a0: 96 b5 0e  adc   a,$0eb5+y
10a3: fd        mov   y,a
10a4: 2f de     bra   $1084
10a6: e4 17     mov   a,$17
10a8: f0 23     beq   $10cd
10aa: 8b 17     dec   $17
10ac: d0 0a     bne   $10b8
10ae: f5 31 02  mov   a,$0231+x
10b1: 2d        push  a
10b2: f5 30 02  mov   a,$0230+x
10b5: ee        pop   y
10b6: 2f c8     bra   $1080
10b8: f5 41 02  mov   a,$0241+x
10bb: 2d        push  a
10bc: f5 40 02  mov   a,$0240+x
10bf: ee        pop   y
10c0: 2f be     bra   $1080
10c2: fc        inc   y
10c3: f7 14     mov   a,($14)+y
10c5: 2d        push  a
10c6: fc        inc   y
10c7: f7 14     mov   a,($14)+y
10c9: fd        mov   y,a
10ca: ae        pop   a
10cb: 2f b3     bra   $1080
10cd: e4 47     mov   a,$47
10cf: 8d 5c     mov   y,#$5c
10d1: 3f fb 09  call  $09fb
10d4: f2 13     clr7  $13
10d6: f4 a0     mov   a,$a0+x
10d8: f0 19     beq   $10f3
10da: f4 a1     mov   a,$a1+x
10dc: f0 04     beq   $10e2
10de: 9b a1     dec   $a1+x
10e0: 2f 11     bra   $10f3
10e2: e4 1a     mov   a,$1a
10e4: 24 47     and   a,$47
10e6: d0 0b     bne   $10f3
10e8: e2 13     set7  $13
10ea: e8 60     mov   a,#$60
10ec: 8d 03     mov   y,#$03
10ee: 9b a0     dec   $a0+x
10f0: 3f 4a 10  call  $104a
10f3: 3f 38 0f  call  $0f38
10f6: f4 b1     mov   a,$b1+x
10f8: f0 4c     beq   $1146
10fa: f5 b0 02  mov   a,$02b0+x
10fd: de b0 44  cbne  $b0+x,$1144
1100: f5 00 01  mov   a,$0100+x
1103: 75 b1 02  cmp   a,$02b1+x
1106: d0 05     bne   $110d
1108: f5 c1 02  mov   a,$02c1+x
110b: 2f 0d     bra   $111a
110d: 40        setp
110e: bb 00     inc   $00+x
1110: 20        clrp
1111: fd        mov   y,a
1112: f0 02     beq   $1116
1114: f4 b1     mov   a,$b1+x
1116: 60        clrc
1117: 95 c0 02  adc   a,$02c0+x
111a: d4 b1     mov   $b1+x,a
111c: f5 a0 02  mov   a,$02a0+x
111f: 60        clrc
1120: 95 a1 02  adc   a,$02a1+x
1123: d5 a0 02  mov   $02a0+x,a
1126: c4 12     mov   $12,a
1128: 1c        asl   a
1129: 1c        asl   a
112a: 90 02     bcc   $112e
112c: 48 ff     eor   a,#$ff
112e: fd        mov   y,a
112f: f4 b1     mov   a,$b1+x
1131: 68 f1     cmp   a,#$f1
1133: 90 05     bcc   $113a
1135: 28 0f     and   a,#$0f
1137: cf        mul   ya
1138: 2f 04     bra   $113e
113a: cf        mul   ya
113b: dd        mov   a,y
113c: 8d 00     mov   y,#$00
113e: 3f bb 11  call  $11bb
1141: 5f 78 09  jmp   $0978
1144: bb b0     inc   $b0+x
1146: e3 13 f8  bbs7  $13,$1141
1149: 6f        ret

114a: f2 13     clr7  $13
114c: f4 c1     mov   a,$c1+x
114e: f0 09     beq   $1159
1150: f5 e0 02  mov   a,$02e0+x
1153: de c0 03  cbne  $c0+x,$1159
1156: 3f c3 11  call  $11c3
1159: f5 31 03  mov   a,$0331+x
115c: fd        mov   y,a
115d: f5 30 03  mov   a,$0330+x
1160: da 10     movw  $10,ya
1162: f4 91     mov   a,$91+x
1164: f0 0a     beq   $1170
1166: f5 41 03  mov   a,$0341+x
1169: fd        mov   y,a
116a: f5 40 03  mov   a,$0340+x
116d: 3f a5 11  call  $11a5
1170: f3 13 03  bbc7  $13,$1176
1173: 3f 09 10  call  $1009
1176: f2 13     clr7  $13
1178: 3f 38 0f  call  $0f38
117b: f4 a0     mov   a,$a0+x
117d: f0 0e     beq   $118d
117f: f4 a1     mov   a,$a1+x
1181: d0 0a     bne   $118d
1183: f5 71 03  mov   a,$0371+x
1186: fd        mov   y,a
1187: f5 70 03  mov   a,$0370+x
118a: 3f a5 11  call  $11a5
118d: f4 b1     mov   a,$b1+x
118f: f0 b5     beq   $1146
1191: f5 b0 02  mov   a,$02b0+x
1194: de b0 af  cbne  $b0+x,$1146
1197: eb 51     mov   y,$51
1199: f5 a1 02  mov   a,$02a1+x
119c: cf        mul   ya
119d: dd        mov   a,y
119e: 60        clrc
119f: 95 a0 02  adc   a,$02a0+x
11a2: 5f 26 11  jmp   $1126

11a5: e2 13     set7  $13
11a7: cb 12     mov   $12,y
11a9: 3f 55 0f  call  $0f55
11ac: 6d        push  y
11ad: eb 51     mov   y,$51
11af: cf        mul   ya
11b0: cb 14     mov   $14,y
11b2: 8f 00 15  mov   $15,#$00
11b5: eb 51     mov   y,$51
11b7: ae        pop   a
11b8: cf        mul   ya
11b9: 7a 14     addw  ya,$14
11bb: 3f 55 0f  call  $0f55
11be: 7a 10     addw  ya,$10
11c0: da 10     movw  $10,ya
11c2: 6f        ret

11c3: e2 13     set7  $13
11c5: eb 51     mov   y,$51
11c7: f5 d1 02  mov   a,$02d1+x
11ca: cf        mul   ya
11cb: dd        mov   a,y
11cc: 60        clrc
11cd: 95 d0 02  adc   a,$02d0+x
11d0: 1c        asl   a
11d1: 90 02     bcc   $11d5
11d3: 48 ff     eor   a,#$ff
11d5: fb c1     mov   y,$c1+x
11d7: cf        mul   ya
11d8: dd        mov   a,y
11d9: 48 ff     eor   a,#$ff
11db: eb 59     mov   y,$59
11dd: cf        mul   ya
11de: f5 10 02  mov   a,$0210+x
11e1: cf        mul   ya
11e2: f5 01 03  mov   a,$0301+x
11e5: cf        mul   ya
11e6: dd        mov   a,y
11e7: cf        mul   ya
11e8: dd        mov   a,y
11e9: d5 21 03  mov   $0321+x,a
11ec: 6f        ret

11ed: db $00,$01,$03,$07,$0d,$15,$1e,$29
11f5: db $34,$42,$51,$5e,$67,$6e,$73,$77
11fd: db $7a,$7c,$7d,$7e,$7f

1202: db $7f,$00,$00,$00,$00,$00,$00,$00
120a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1212: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
121a: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1222: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
122c: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

1236: dw $085f
1238: dw $08de
123a: dw $0965
123c: dw $09f4
123e: dw $0a8c
1240: dw $0b2c
1242: dw $0bd6
1244: dw $0c8b
1246: dw $0d4a
1248: dw $0e14
124a: dw $0eea
124c: dw $0fcd
124e: dw $10be

1250: db "*Ver S1.20*"

125b: e8 aa     mov   a,#$aa
125d: c5 f4 00  mov   $00f4,a
1260: e8 bb     mov   a,#$bb
1262: c5 f5 00  mov   $00f5,a
1265: e5 f4 00  mov   a,$00f4
1268: 68 cc     cmp   a,#$cc
126a: d0 f9     bne   $1265
126c: 2f 20     bra   $128e
126e: ec f4 00  mov   y,$00f4
1271: d0 fb     bne   $126e
1273: 5e f4 00  cmp   y,$00f4
1276: d0 0f     bne   $1287
1278: e5 f5 00  mov   a,$00f5
127b: cc f4 00  mov   $00f4,y
127e: d7 14     mov   ($14)+y,a
1280: fc        inc   y
1281: d0 f0     bne   $1273
1283: ab 15     inc   $15
1285: 2f ec     bra   $1273
1287: 10 ea     bpl   $1273
1289: 5e f4 00  cmp   y,$00f4
128c: 10 e5     bpl   $1273
128e: e5 f6 00  mov   a,$00f6
1291: ec f7 00  mov   y,$00f7
1294: da 14     movw  $14,ya
1296: ec f4 00  mov   y,$00f4
1299: e5 f5 00  mov   a,$00f5
129c: cc f4 00  mov   $00f4,y
129f: d0 cd     bne   $126e
12a1: cd 31     mov   x,#$31
12a3: c9 f1 00  mov   $00f1,x
12a6: 6f        ret




17ef: e8 00     mov   a,#$00
17f1: c4 05     mov   $05,a
17f3: c4 d1     mov   $d1,a
17f5: c5 ec 03  mov   $03ec,a
17f8: c4 ae     mov   $ae,a
17fa: c4 9e     mov   $9e,a
17fc: c4 9f     mov   $9f,a
17fe: c5 2f 03  mov   $032f,a
1801: c5 0f 03  mov   $030f,a
1804: f2 1a     clr7  $1a
1806: cd 0e     mov   x,#$0e
1808: e5 1f 02  mov   a,$021f
180b: 3f db 0c  call  $0cdb
180e: e5 c3 03  mov   a,$03c3
1811: 28 80     and   a,#$80
1813: f0 07     beq   $181c
1815: e2 4a     set7  $4a
1817: 8d 4d     mov   y,#$4d
1819: 3f 03 0a  call  $0a03
181c: e8 80     mov   a,#$80
181e: 8d 5c     mov   y,#$5c
1820: 5f 03 0a  jmp   $0a03

1823: e9 ec 03  mov   x,$03ec
1826: d8 9e     mov   $9e,x
1828: e8 00     mov   a,#$00
182a: c5 2e 03  mov   $032e,a
182d: f8 9e     mov   x,$9e
182f: 80        setc
1830: a5 0f 03  sbc   a,$030f
1833: 3f 43 0f  call  $0f43
1836: c5 1e 03  mov   $031e,a
1839: dd        mov   a,y
183a: c5 1f 03  mov   $031f,a
183d: e4 9e     mov   a,$9e
183f: d0 01     bne   $1842
1841: 6f        ret

1842: 68 01     cmp   a,#$01
1844: f0 a9     beq   $17ef
1846: e8 00     mov   a,#$00
1848: 8d 03     mov   y,#$03
184a: cd 0e     mov   x,#$0e
184c: 8b 9e     dec   $9e
184e: 3f 4a 10  call  $104a
1851: e5 0f 03  mov   a,$030f
1854: c5 2f 03  mov   $032f,a
1857: e5 eb 03  mov   a,$03eb
185a: c5 5f 03  mov   $035f,a
185d: c4 11     mov   $11,a
185f: 8f 00 10  mov   $10,#$00
1862: cd 0e     mov   x,#$0e
1864: 3f 09 10  call  $1009
1867: 6f        ret

1868: e5 e8 03  mov   a,$03e8
186b: f0 03     beq   $1870
186d: 8f 00 01  mov   $01,#$00
1870: eb 09     mov   y,$09
1872: 7e 01     cmp   y,$01
1874: f0 26     beq   $189c
1876: e4 01     mov   a,$01
1878: c4 05     mov   $05,a
187a: c4 09     mov   $09,a
187c: 28 c0     and   a,#$c0
187e: f0 a3     beq   $1823
1880: dd        mov   a,y
1881: 44 01     eor   a,$01
1883: 28 0f     and   a,#$0f
1885: d0 11     bne   $1898
1887: e4 d1     mov   a,$d1
1889: d0 33     bne   $18be
188b: dd        mov   a,y
188c: 44 01     eor   a,$01
188e: 28 30     and   a,#$30
1890: f0 03     beq   $1895
1892: 5f 19 19  jmp   $1919
1895: 5f 53 19  jmp   $1953
1898: e4 01     mov   a,$01
189a: d0 10     bne   $18ac
189c: e4 01     mov   a,$01
189e: f0 9d     beq   $183d
18a0: e4 d1     mov   a,$d1
18a2: d0 1a     bne   $18be
18a4: e4 05     mov   a,$05
18a6: f0 03     beq   $18ab
18a8: 5f 79 19  jmp   $1979
18ab: 6f        ret

18ac: 8f 02 d1  mov   $d1,#$02
18af: e8 80     mov   a,#$80
18b1: 8d 5c     mov   y,#$5c
18b3: 3f 03 0a  call  $0a03
18b6: e2 1a     set7  $1a
18b8: e8 00     mov   a,#$00
18ba: c5 8e 02  mov   $028e,a
18bd: 6f        ret

18be: 6e d1 ea  dbnz  $d1,$18ab
18c1: e4 05     mov   a,$05
18c3: 28 0f     and   a,#$0f
18c5: 80        setc
18c6: a8 01     sbc   a,#$01
18c8: 5d        mov   x,a
18c9: f5 3b 1a  mov   a,$1a3b+x
18cc: c5 ec 03  mov   $03ec,a
18cf: f5 4a 1a  mov   a,$1a4a+x
18d2: c5 ed 03  mov   $03ed,a
18d5: 7d        mov   a,x
18d6: 3f b7 19  call  $19b7
18d9: e4 05     mov   a,$05
18db: 28 30     and   a,#$30
18dd: d0 05     bne   $18e4
18df: ec ed 03  mov   y,$03ed
18e2: d0 02     bne   $18e6
18e4: 8d ad     mov   y,#$ad
18e6: 8f 0e 44  mov   $44,#$0e
18e9: cd 0e     mov   x,#$0e
18eb: 3f 0e 09  call  $090e
18ee: e8 80     mov   a,#$80
18f0: 3f c6 1f  call  $1fc6
18f3: f2 4a     clr7  $4a
18f5: e4 4a     mov   a,$4a
18f7: 8d 4d     mov   y,#$4d
18f9: 3f 03 0a  call  $0a03
18fc: e4 05     mov   a,$05
18fe: 28 30     and   a,#$30
1900: 9f        xcn   a
1901: 5d        mov   x,a
1902: f5 37 1a  mov   a,$1a37+x
1905: c5 2f 03  mov   $032f,a
1908: c5 0f 03  mov   $030f,a
190b: e4 05     mov   a,$05
190d: 28 c0     and   a,#$c0
190f: 9f        xcn   a
1910: 5c        lsr   a
1911: 5c        lsr   a
1912: 5d        mov   x,a
1913: f5 33 1a  mov   a,$1a33+x
1916: c5 3f 03  mov   $033f,a
1919: e9 ec 03  mov   x,$03ec
191c: d8 9e     mov   $9e,x
191e: e4 05     mov   a,$05
1920: 28 30     and   a,#$30
1922: d0 05     bne   $1929
1924: e5 ed 03  mov   a,$03ed
1927: d0 02     bne   $192b
1929: e8 ad     mov   a,#$ad
192b: d8 ae     mov   $ae,x
192d: 8f 00 af  mov   $af,#$00
1930: cd 0e     mov   x,#$0e
1932: d8 44     mov   $44,x
1934: 3f 20 0f  call  $0f20
1937: e4 05     mov   a,$05
1939: 28 30     and   a,#$30
193b: 9f        xcn   a
193c: 5d        mov   x,a
193d: f5 37 1a  mov   a,$1a37+x
1940: c5 2e 03  mov   $032e,a
1943: f8 9e     mov   x,$9e
1945: 80        setc
1946: a5 0f 03  sbc   a,$030f
1949: 3f 43 0f  call  $0f43
194c: c5 1e 03  mov   $031e,a
194f: dd        mov   a,y
1950: c5 1f 03  mov   $031f,a
1953: e4 05     mov   a,$05
1955: 28 c0     and   a,#$c0
1957: 9f        xcn   a
1958: 5c        lsr   a
1959: 5c        lsr   a
195a: 5d        mov   x,a
195b: f5 33 1a  mov   a,$1a33+x
195e: c5 eb 03  mov   $03eb,a
1961: c5 5e 03  mov   $035e,a
1964: 80        setc
1965: a5 3f 03  sbc   a,$033f
1968: e9 ec 03  mov   x,$03ec
196b: d8 9f     mov   $9f,x
196d: 3f 43 0f  call  $0f43
1970: da 10     movw  $10,ya
1972: c5 4e 03  mov   $034e,a
1975: dd        mov   a,y
1976: c5 4f 03  mov   $034f,a
1979: e4 9e     mov   a,$9e
197b: f0 11     beq   $198e
197d: e8 00     mov   a,#$00
197f: 8d 03     mov   y,#$03
1981: cd 0e     mov   x,#$0e
1983: 8b 9e     dec   $9e
1985: 3f 4a 10  call  $104a
1988: e5 0f 03  mov   a,$030f
198b: c5 2f 03  mov   $032f,a
198e: f2 13     clr7  $13
1990: e4 ae     mov   a,$ae
1992: f0 05     beq   $1999
1994: cd 0e     mov   x,#$0e
1996: 3f ac 1f  call  $1fac
1999: e4 9f     mov   a,$9f
199b: f0 19     beq   $19b6
199d: e8 30     mov   a,#$30
199f: 8d 03     mov   y,#$03
19a1: cd 0e     mov   x,#$0e
19a3: 8b 9f     dec   $9f
19a5: 3f 4a 10  call  $104a
19a8: f5 31 03  mov   a,$0331+x
19ab: fd        mov   y,a
19ac: f5 30 03  mov   a,$0330+x
19af: da 10     movw  $10,ya
19b1: cd 0e     mov   x,#$0e
19b3: 3f 09 10  call  $1009
19b6: 6f        ret

19b7: 8d 06     mov   y,#$06
19b9: cf        mul   ya
19ba: 5d        mov   x,a
19bb: 8d 74     mov   y,#$74
19bd: 8f 04 12  mov   $12,#$04
19c0: f5 d9 19  mov   a,$19d9+x
19c3: 3f 03 0a  call  $0a03
19c6: 3d        inc   x
19c7: fc        inc   y
19c8: 6e 12 f5  dbnz  $12,$19c0
19cb: f5 d9 19  mov   a,$19d9+x
19ce: c5 2f 02  mov   $022f,a
19d1: 3d        inc   x
19d2: f5 d9 19  mov   a,$19d9+x
19d5: c5 2e 02  mov   $022e,a
19d8: 6f        ret

19d9: db $00,$0e,$e0,$70,$03,$00
19df: db $01,$0e,$e0,$70,$03,$00
19e5: db $02,$0e,$e0,$70,$03,$00
19eb: db $03,$0e,$e0,$70,$03,$00
19f1: db $20,$0e,$e0,$70,$03,$00
19f7: db $0c,$0e,$e0,$70,$03,$00
19fd: db $0d,$0e,$e0,$70,$03,$00
1a03: db $00,$0e,$e0,$70,$01,$00
1a09: db $01,$0e,$e0,$70,$01,$00
1a0f: db $0d,$0e,$e0,$70,$01,$00
1a15: db $02,$0e,$e0,$70,$01,$00
1a1b: db $03,$0e,$e0,$70,$01,$00
1a21: db $20,$0e,$e0,$70,$01,$00
1a27: db $0c,$0e,$e0,$70,$01,$00
1a2d: db $0d,$0e,$e0,$70,$01,$00

1a33: db $0a,$14,$0a,$00
1a37: db $ff,$b0,$70,$40
1a3b: db $40,$20,$40,$20,$40,$28,$50,$40,$20,$40,$20,$40,$28,$50,$50
1a4a: db $ad,$a9,$ad,$ad,$ad,$a9,$ad,$ad,$ad,$ad,$ad,$ad,$ad,$ad,$ad

1a59: e8 00     mov   a,#$00
1a5b: c4 06     mov   $06,a
1a5d: c4 0d     mov   $0d,a
1a5f: c5 e6 03  mov   $03e6,a
1a62: c4 ac     mov   $ac,a
1a64: c4 9c     mov   $9c,a
1a66: c4 9d     mov   $9d,a
1a68: c5 2d 03  mov   $032d,a
1a6b: c5 0d 03  mov   $030d,a
1a6e: d2 1a     clr6  $1a
1a70: cd 0c     mov   x,#$0c
1a72: e5 1d 02  mov   a,$021d
1a75: 3f db 0c  call  $0cdb
1a78: e5 c3 03  mov   a,$03c3
1a7b: 28 40     and   a,#$40
1a7d: f0 07     beq   $1a86
1a7f: c2 4a     set6  $4a
1a81: 8d 4d     mov   y,#$4d
1a83: 3f 03 0a  call  $0a03
1a86: e8 40     mov   a,#$40
1a88: 8d 5c     mov   y,#$5c
1a8a: 5f 03 0a  jmp   $0a03

1a8d: e9 e6 03  mov   x,$03e6
1a90: d8 9c     mov   $9c,x
1a92: e8 00     mov   a,#$00
1a94: c5 2c 03  mov   $032c,a
1a97: f8 9c     mov   x,$9c
1a99: 80        setc
1a9a: a5 0d 03  sbc   a,$030d
1a9d: 3f 43 0f  call  $0f43
1aa0: c5 1c 03  mov   $031c,a
1aa3: dd        mov   a,y
1aa4: c5 1d 03  mov   $031d,a
1aa7: e4 9c     mov   a,$9c
1aa9: d0 01     bne   $1aac
1aab: 6f        ret

1aac: 68 01     cmp   a,#$01
1aae: f0 a9     beq   $1a59
1ab0: e8 00     mov   a,#$00
1ab2: 8d 03     mov   y,#$03
1ab4: cd 0c     mov   x,#$0c
1ab6: 8b 9c     dec   $9c
1ab8: 3f 4a 10  call  $104a
1abb: e5 0d 03  mov   a,$030d
1abe: c5 2d 03  mov   $032d,a
1ac1: e5 eb 03  mov   a,$03eb
1ac4: c5 5d 03  mov   $035d,a
1ac7: c4 11     mov   $11,a
1ac9: 8f 00 10  mov   $10,#$00
1acc: cd 0c     mov   x,#$0c
1ace: 3f 09 10  call  $1009
1ad1: 6f        ret

1ad2: e5 e8 03  mov   a,$03e8
1ad5: f0 03     beq   $1ada
1ad7: 8f 00 02  mov   $02,#$00
1ada: eb 0a     mov   y,$0a
1adc: 7e 02     cmp   y,$02
1ade: f0 26     beq   $1b06
1ae0: e4 02     mov   a,$02
1ae2: c4 06     mov   $06,a
1ae4: c4 0a     mov   $0a,a
1ae6: 28 c0     and   a,#$c0
1ae8: f0 a3     beq   $1a8d
1aea: dd        mov   a,y
1aeb: 44 02     eor   a,$02
1aed: 28 0f     and   a,#$0f
1aef: d0 11     bne   $1b02
1af1: e4 0d     mov   a,$0d
1af3: d0 33     bne   $1b28
1af5: dd        mov   a,y
1af6: 44 02     eor   a,$02
1af8: 28 30     and   a,#$30
1afa: f0 03     beq   $1aff
1afc: 5f 83 1b  jmp   $1b83
1aff: 5f bd 1b  jmp   $1bbd
1b02: e4 02     mov   a,$02
1b04: d0 10     bne   $1b16
1b06: e4 02     mov   a,$02
1b08: f0 9d     beq   $1aa7
1b0a: e4 0d     mov   a,$0d
1b0c: d0 1a     bne   $1b28
1b0e: e4 06     mov   a,$06
1b10: f0 03     beq   $1b15
1b12: 5f e3 1b  jmp   $1be3
1b15: 6f        ret

1b16: 8f 02 0d  mov   $0d,#$02
1b19: e8 40     mov   a,#$40
1b1b: 8d 5c     mov   y,#$5c
1b1d: 3f 03 0a  call  $0a03
1b20: c2 1a     set6  $1a
1b22: e8 00     mov   a,#$00
1b24: c5 8c 02  mov   $028c,a
1b27: 6f        ret

1b28: 6e 0d ea  dbnz  $0d,$1b15
1b2b: e4 06     mov   a,$06
1b2d: 28 0f     and   a,#$0f
1b2f: 80        setc
1b30: a8 01     sbc   a,#$01
1b32: 5d        mov   x,a
1b33: f5 a5 1c  mov   a,$1ca5+x
1b36: c5 e6 03  mov   $03e6,a
1b39: f5 b4 1c  mov   a,$1cb4+x
1b3c: c5 e9 03  mov   $03e9,a
1b3f: 7d        mov   a,x
1b40: 3f 21 1c  call  $1c21
1b43: e4 06     mov   a,$06
1b45: 28 30     and   a,#$30
1b47: d0 05     bne   $1b4e
1b49: ec e9 03  mov   y,$03e9
1b4c: d0 02     bne   $1b50
1b4e: 8d ad     mov   y,#$ad
1b50: 8f 0c 44  mov   $44,#$0c
1b53: cd 0c     mov   x,#$0c
1b55: 3f 0e 09  call  $090e
1b58: e8 40     mov   a,#$40
1b5a: 3f c6 1f  call  $1fc6
1b5d: d2 4a     clr6  $4a
1b5f: e4 4a     mov   a,$4a
1b61: 8d 4d     mov   y,#$4d
1b63: 3f 03 0a  call  $0a03
1b66: e4 06     mov   a,$06
1b68: 28 30     and   a,#$30
1b6a: 9f        xcn   a
1b6b: 5d        mov   x,a
1b6c: f5 a1 1c  mov   a,$1ca1+x
1b6f: c5 2d 03  mov   $032d,a
1b72: c5 0d 03  mov   $030d,a
1b75: e4 06     mov   a,$06
1b77: 28 c0     and   a,#$c0
1b79: 9f        xcn   a
1b7a: 5c        lsr   a
1b7b: 5c        lsr   a
1b7c: 5d        mov   x,a
1b7d: f5 9d 1c  mov   a,$1c9d+x
1b80: c5 3d 03  mov   $033d,a
1b83: e9 e6 03  mov   x,$03e6
1b86: d8 9c     mov   $9c,x
1b88: e4 06     mov   a,$06
1b8a: 28 30     and   a,#$30
1b8c: d0 05     bne   $1b93
1b8e: e5 e9 03  mov   a,$03e9
1b91: d0 02     bne   $1b95
1b93: e8 ad     mov   a,#$ad
1b95: d8 ac     mov   $ac,x
1b97: 8f 00 ad  mov   $ad,#$00
1b9a: cd 0c     mov   x,#$0c
1b9c: d8 44     mov   $44,x
1b9e: 3f 20 0f  call  $0f20
1ba1: e4 06     mov   a,$06
1ba3: 28 30     and   a,#$30
1ba5: 9f        xcn   a
1ba6: 5d        mov   x,a
1ba7: f5 a1 1c  mov   a,$1ca1+x
1baa: c5 2c 03  mov   $032c,a
1bad: f8 9c     mov   x,$9c
1baf: 80        setc
1bb0: a5 0d 03  sbc   a,$030d
1bb3: 3f 43 0f  call  $0f43
1bb6: c5 1c 03  mov   $031c,a
1bb9: dd        mov   a,y
1bba: c5 1d 03  mov   $031d,a
1bbd: e4 06     mov   a,$06
1bbf: 28 c0     and   a,#$c0
1bc1: 9f        xcn   a
1bc2: 5c        lsr   a
1bc3: 5c        lsr   a
1bc4: 5d        mov   x,a
1bc5: f5 9d 1c  mov   a,$1c9d+x
1bc8: c5 eb 03  mov   $03eb,a
1bcb: c5 5c 03  mov   $035c,a
1bce: 80        setc
1bcf: a5 3d 03  sbc   a,$033d
1bd2: e9 e6 03  mov   x,$03e6
1bd5: d8 9d     mov   $9d,x
1bd7: 3f 43 0f  call  $0f43
1bda: da 10     movw  $10,ya
1bdc: c5 4c 03  mov   $034c,a
1bdf: dd        mov   a,y
1be0: c5 4d 03  mov   $034d,a
1be3: e4 9c     mov   a,$9c
1be5: f0 11     beq   $1bf8
1be7: e8 00     mov   a,#$00
1be9: 8d 03     mov   y,#$03
1beb: cd 0c     mov   x,#$0c
1bed: 8b 9c     dec   $9c
1bef: 3f 4a 10  call  $104a
1bf2: e5 0d 03  mov   a,$030d
1bf5: c5 2d 03  mov   $032d,a
1bf8: f2 13     clr7  $13
1bfa: e4 ac     mov   a,$ac
1bfc: f0 05     beq   $1c03
1bfe: cd 0c     mov   x,#$0c
1c00: 3f ac 1f  call  $1fac
1c03: e4 9d     mov   a,$9d
1c05: f0 19     beq   $1c20
1c07: e8 30     mov   a,#$30
1c09: 8d 03     mov   y,#$03
1c0b: cd 0c     mov   x,#$0c
1c0d: 8b 9d     dec   $9d
1c0f: 3f 4a 10  call  $104a
1c12: f5 31 03  mov   a,$0331+x
1c15: fd        mov   y,a
1c16: f5 30 03  mov   a,$0330+x
1c19: da 10     movw  $10,ya
1c1b: cd 0c     mov   x,#$0c
1c1d: 3f 09 10  call  $1009
1c20: 6f        ret

1c21: 8d 06     mov   y,#$06
1c23: cf        mul   ya
1c24: 5d        mov   x,a
1c25: 8d 64     mov   y,#$64
1c27: 8f 04 12  mov   $12,#$04
1c2a: f5 43 1c  mov   a,$1c43+x
1c2d: 3f 03 0a  call  $0a03
1c30: 3d        inc   x
1c31: fc        inc   y
1c32: 6e 12 f5  dbnz  $12,$1c2a
1c35: f5 43 1c  mov   a,$1c43+x
1c38: c5 2d 02  mov   $022d,a
1c3b: 3d        inc   x
1c3c: f5 43 1c  mov   a,$1c43+x
1c3f: c5 2c 02  mov   $022c,a
1c42: 6f        ret


1c43: db $03,$0e,$e0,$70,$01,$60
1c49: db $20,$0e,$e0,$50,$03,$70
1c4f: db $00,$0e,$e0,$50,$04,$10
1c55: db $01,$0e,$e0,$50,$01,$c0
1c5b: db $02,$0e,$e0,$7f,$00,$80
1c61: db $20,$0e,$e0,$20,$08,$70
1c67: db $20,$0e,$e0,$7f,$00,$70
1c6d: db $00,$0e,$e0,$50,$01,$10
1c73: db $03,$0e,$e0,$50,$04,$60
1c79: db $01,$0e,$e0,$30,$04,$c0
1c7f: db $02,$0e,$e0,$3f,$04,$80
1c85: db $00,$0e,$e0,$50,$06,$10
1c8b: db $03,$0e,$e0,$50,$06,$60
1c91: db $01,$0e,$e0,$30,$06,$c0
1c97: db $02,$0e,$e0,$3f,$07,$80

1c9d: db $0a,$14,$0a,$00
1ca1: db $ff,$b0,$70,$40
1ca5: db $40,$20,$40,$20,$40,$28,$50,$40,$20,$40,$20,$40,$28,$50,$50
1cb4: db $ad,$a9,$ad,$ad,$ad,$a9,$ad,$ad,$ad,$ad,$ad,$ad,$ad,$ad,$ad

1cc3: e4 03     mov   a,$03
1cc5: 5d        mov   x,a
1cc6: f5 05 13  mov   a,$1305+x
1cc9: c5 e2 03  mov   $03e2,a
1ccc: 8d 0a     mov   y,#$0a
1cce: cd 20     mov   x,#$20
1cd0: c9 c1 03  mov   $03c1,x
1cd3: e5 07 00  mov   a,$0007
1cd6: 25 c1 03  and   a,$03c1
1cd9: f0 07     beq   $1ce2
1cdb: f6 a0 03  mov   a,$03a0+y
1cde: 64 03     cmp   a,$03
1ce0: f0 09     beq   $1ceb
1ce2: dc        dec   y
1ce3: dc        dec   y
1ce4: 4c c1 03  lsr   $03c1
1ce7: d0 ea     bne   $1cd3
1ce9: 2f 05     bra   $1cf0
1ceb: cc c0 03  mov   $03c0,y
1cee: 2f 15     bra   $1d05
1cf0: 60        clrc
1cf1: cd 1a     mov   x,#$1a
1cf3: e8 20     mov   a,#$20
1cf5: c5 c1 03  mov   $03c1,a
1cf8: 8d 0a     mov   y,#$0a
1cfa: 26        and   a,(x)
1cfb: f0 08     beq   $1d05
1cfd: dc        dec   y
1cfe: dc        dec   y
1cff: 4c c1 03  lsr   $03c1
1d02: 5c        lsr   a
1d03: 90 f5     bcc   $1cfa
1d05: cc c0 03  mov   $03c0,y
1d08: cc c8 03  mov   $03c8,y
1d0b: e5 c1 03  mov   a,$03c1
1d0e: c5 c9 03  mov   $03c9,a
1d11: 04 1a     or    a,$1a
1d13: c4 1a     mov   $1a,a
1d15: e9 e2 03  mov   x,$03e2
1d18: f0 06     beq   $1d20
1d1a: 05 e3 03  or    a,$03e3
1d1d: c5 e3 03  mov   $03e3,a
1d20: e5 04 00  mov   a,$0004
1d23: 28 10     and   a,#$10
1d25: f0 08     beq   $1d2f
1d27: e5 c1 03  mov   a,$03c1
1d2a: 25 e3 03  and   a,$03e3
1d2d: f0 14     beq   $1d43
1d2f: e5 c1 03  mov   a,$03c1
1d32: 24 4a     and   a,$4a
1d34: f0 0d     beq   $1d43
1d36: e4 4a     mov   a,$4a
1d38: 80        setc
1d39: a5 c1 03  sbc   a,$03c1
1d3c: c4 4a     mov   $4a,a
1d3e: 8d 4d     mov   y,#$4d
1d40: 3f 03 0a  call  $0a03
1d43: 6f        ret

1d44: e9 c4 03  mov   x,$03c4
1d47: c9 c0 03  mov   $03c0,x
1d4a: ec c5 03  mov   y,$03c5
1d4d: cc c1 03  mov   $03c1,y
1d50: e5 c1 03  mov   a,$03c1
1d53: 8d 5c     mov   y,#$5c
1d55: 3f 03 0a  call  $0a03
1d58: 3f 32 1e  call  $1e32
1d5b: 6f        ret

1d5c: e5 f7 00  mov   a,$00f7
1d5f: 65 f7 00  cmp   a,$00f7
1d62: d0 f8     bne   $1d5c
1d64: c5 f7 00  mov   $00f7,a
1d67: fd        mov   y,a
1d68: e4 0b     mov   a,$0b
1d6a: cb 0b     mov   $0b,y
1d6c: 2e 0b 02  cbne  $0b,$1d71
1d6f: 8d 00     mov   y,#$00
1d71: cb 03     mov   $03,y
1d73: e4 03     mov   a,$03
1d75: d0 1b     bne   $1d92
1d77: 6f        ret

1d78: e5 e8 03  mov   a,$03e8
1d7b: f0 11     beq   $1d8e
1d7d: e8 00     mov   a,#$00
1d7f: c5 e8 03  mov   $03e8,a
1d82: 2f 0a     bra   $1d8e
1d84: e8 3f     mov   a,#$3f
1d86: c5 e8 03  mov   $03e8,a
1d89: 8d 5c     mov   y,#$5c
1d8b: 3f 03 0a  call  $0a03
1d8e: e4 03     mov   a,$03
1d90: 2f 17     bra   $1da9
1d92: e8 ff     mov   a,#$ff
1d94: 2e 1a 02  cbne  $1a,$1d99
1d97: 2f 39     bra   $1dd2
1d99: 3f c3 1c  call  $1cc3
1d9c: e9 c0 03  mov   x,$03c0
1d9f: e4 03     mov   a,$03
1da1: 68 01     cmp   a,#$01
1da3: f0 d3     beq   $1d78
1da5: 68 02     cmp   a,#$02
1da7: f0 db     beq   $1d84
1da9: d5 a0 03  mov   $03a0+x,a
1dac: e8 03     mov   a,#$03
1dae: d5 a1 03  mov   $03a1+x,a
1db1: e8 00     mov   a,#$00
1db3: d5 80 02  mov   $0280+x,a
1db6: e5 c1 03  mov   a,$03c1
1db9: 05 07 00  or    a,$0007
1dbc: c5 07 00  mov   $0007,a
1dbf: e5 c1 03  mov   a,$03c1
1dc2: 8d 5c     mov   y,#$5c
1dc4: 3f 03 0a  call  $0a03
1dc7: f5 a0 03  mov   a,$03a0+x
1dca: 5d        mov   x,a
1dcb: f5 a6 12  mov   a,$12a6+x
1dce: c4 03     mov   $03,a
1dd0: d0 c0     bne   $1d92
1dd2: 6f        ret

1dd3: e5 07 00  mov   a,$0007
1dd6: c5 ce 03  mov   $03ce,a
1dd9: f0 2f     beq   $1e0a
1ddb: cd 0a     mov   x,#$0a
1ddd: e8 20     mov   a,#$20
1ddf: c5 c1 03  mov   $03c1,a
1de2: 0c ce 03  asl   $03ce
1de5: 0c ce 03  asl   $03ce
1de8: 0c ce 03  asl   $03ce
1deb: 90 16     bcc   $1e03
1ded: c9 c0 03  mov   $03c0,x
1df0: 7d        mov   a,x
1df1: 9f        xcn   a
1df2: 5c        lsr   a
1df3: c5 c2 03  mov   $03c2,a
1df6: f5 a1 03  mov   a,$03a1+x
1df9: d0 10     bne   $1e0b
1dfb: f5 a0 03  mov   a,$03a0+x
1dfe: f0 03     beq   $1e03
1e00: 5f 81 1e  jmp   $1e81
1e03: 4c c1 03  lsr   $03c1
1e06: 1d        dec   x
1e07: 1d        dec   x
1e08: 10 de     bpl   $1de8
1e0a: 6f        ret

1e0b: c9 c0 03  mov   $03c0,x
1e0e: f5 a1 03  mov   a,$03a1+x
1e11: 9c        dec   a
1e12: d5 a1 03  mov   $03a1+x,a
1e15: f0 03     beq   $1e1a
1e17: 5f 03 1e  jmp   $1e03
1e1a: f5 a0 03  mov   a,$03a0+x
1e1d: 1c        asl   a
1e1e: fd        mov   y,a
1e1f: f6 64 13  mov   a,$1364+y
1e22: d5 91 03  mov   $0391+x,a
1e25: c4 2d     mov   $2d,a
1e27: f6 63 13  mov   a,$1363+y
1e2a: d5 90 03  mov   $0390+x,a
1e2d: c4 2c     mov   $2c,a
1e2f: 5f 9e 1e  jmp   $1e9e

1e32: e8 00     mov   a,#$00
1e34: e9 c0 03  mov   x,$03c0
1e37: d5 a0 03  mov   $03a0+x,a
1e3a: e4 1a     mov   a,$1a
1e3c: 80        setc
1e3d: a5 c1 03  sbc   a,$03c1
1e40: c4 1a     mov   $1a,a
1e42: e5 07 00  mov   a,$0007
1e45: 80        setc
1e46: a5 c1 03  sbc   a,$03c1
1e49: c5 07 00  mov   $0007,a
1e4c: d8 44     mov   $44,x
1e4e: f5 11 02  mov   a,$0211+x
1e51: 3f db 0c  call  $0cdb
1e54: e5 c1 03  mov   a,$03c1
1e57: 25 c3 03  and   a,$03c3
1e5a: f0 1b     beq   $1e77
1e5c: 24 4a     and   a,$4a
1e5e: d0 17     bne   $1e77
1e60: e4 4a     mov   a,$4a
1e62: 60        clrc
1e63: 85 c1 03  adc   a,$03c1
1e66: c4 4a     mov   $4a,a
1e68: 8d 4d     mov   y,#$4d
1e6a: 3f 03 0a  call  $0a03
1e6d: e5 e3 03  mov   a,$03e3
1e70: 80        setc
1e71: a5 c1 03  sbc   a,$03c1
1e74: c5 e3 03  mov   $03e3,a
1e77: e9 c0 03  mov   x,$03c0
1e7a: 6f        ret

1e7b: 3f 32 1e  call  $1e32
1e7e: 5f 03 1e  jmp   $1e03
1e81: 3f 20 1d  call  $1d20
1e84: c9 c0 03  mov   $03c0,x
1e87: f5 91 03  mov   a,$0391+x
1e8a: fd        mov   y,a
1e8b: f5 90 03  mov   a,$0390+x
1e8e: da 2c     movw  $2c,ya
1e90: f5 b0 03  mov   a,$03b0+x
1e93: 9c        dec   a
1e94: d5 b0 03  mov   $03b0+x,a
1e97: f0 03     beq   $1e9c
1e99: 5f 10 1f  jmp   $1f10
1e9c: 3a 2c     incw  $2c
1e9e: e5 c0 03  mov   a,$03c0
1ea1: 9f        xcn   a
1ea2: 5c        lsr   a
1ea3: c5 c2 03  mov   $03c2,a
1ea6: cd 00     mov   x,#$00
1ea8: e7 2c     mov   a,($2c+x)
1eaa: f0 cf     beq   $1e7b
1eac: 30 3d     bmi   $1eeb
1eae: ec c0 03  mov   y,$03c0
1eb1: d6 b1 03  mov   $03b1+y,a
1eb4: 3a 2c     incw  $2c
1eb6: e7 2c     mov   a,($2c+x)
1eb8: c4 10     mov   $10,a
1eba: 30 2f     bmi   $1eeb
1ebc: f0 05     beq   $1ec3
1ebe: e9 e5 03  mov   x,$03e5
1ec1: d0 24     bne   $1ee7
1ec3: c4 10     mov   $10,a
1ec5: ec c2 03  mov   y,$03c2
1ec8: 3f 03 0a  call  $0a03
1ecb: cd 00     mov   x,#$00
1ecd: 3a 2c     incw  $2c
1ecf: e7 2c     mov   a,($2c+x)
1ed1: 10 0d     bpl   $1ee0
1ed3: 5d        mov   x,a
1ed4: e4 10     mov   a,$10
1ed6: ec c2 03  mov   y,$03c2
1ed9: fc        inc   y
1eda: 3f 03 0a  call  $0a03
1edd: 7d        mov   a,x
1ede: 2f 0b     bra   $1eeb
1ee0: ec c2 03  mov   y,$03c2
1ee3: fc        inc   y
1ee4: 3f 03 0a  call  $0a03
1ee7: 3a 2c     incw  $2c
1ee9: e7 2c     mov   a,($2c+x)
1eeb: 68 e0     cmp   a,#$e0
1eed: d0 03     bne   $1ef2
1eef: 5f 7b 1f  jmp   $1f7b
1ef2: 68 f9     cmp   a,#$f9
1ef4: f0 47     beq   $1f3d
1ef6: 68 f1     cmp   a,#$f1
1ef8: f0 58     beq   $1f52
1efa: e9 c0 03  mov   x,$03c0
1efd: fd        mov   y,a
1efe: 3f 0e 09  call  $090e
1f01: e5 c1 03  mov   a,$03c1
1f04: 3f c6 1f  call  $1fc6
1f07: e9 c0 03  mov   x,$03c0
1f0a: f5 b1 03  mov   a,$03b1+x
1f0d: d5 b0 03  mov   $03b0+x,a
1f10: f2 13     clr7  $13
1f12: e9 c0 03  mov   x,$03c0
1f15: f4 a0     mov   a,$a0+x
1f17: f0 05     beq   $1f1e
1f19: 3f ac 1f  call  $1fac
1f1c: 2f 0f     bra   $1f2d
1f1e: e8 02     mov   a,#$02
1f20: 75 b0 03  cmp   a,$03b0+x
1f23: d0 08     bne   $1f2d
1f25: e5 c1 03  mov   a,$03c1
1f28: 8d 5c     mov   y,#$5c
1f2a: 3f 03 0a  call  $0a03
1f2d: e9 c0 03  mov   x,$03c0
1f30: e4 2d     mov   a,$2d
1f32: d5 91 03  mov   $0391+x,a
1f35: e4 2c     mov   a,$2c
1f37: d5 90 03  mov   $0390+x,a
1f3a: 5f 03 1e  jmp   $1e03
1f3d: cd 00     mov   x,#$00
1f3f: 3a 2c     incw  $2c
1f41: e7 2c     mov   a,($2c+x)
1f43: e9 c0 03  mov   x,$03c0
1f46: d8 44     mov   $44,x
1f48: fd        mov   y,a
1f49: 3f 0e 09  call  $090e
1f4c: e5 c1 03  mov   a,$03c1
1f4f: 3f c6 1f  call  $1fc6
1f52: cd 00     mov   x,#$00
1f54: 3a 2c     incw  $2c
1f56: e7 2c     mov   a,($2c+x)
1f58: e9 c0 03  mov   x,$03c0
1f5b: d4 a1     mov   $a1+x,a
1f5d: cd 00     mov   x,#$00
1f5f: 3a 2c     incw  $2c
1f61: e7 2c     mov   a,($2c+x)
1f63: e9 c0 03  mov   x,$03c0
1f66: d4 a0     mov   $a0+x,a
1f68: 2d        push  a
1f69: cd 00     mov   x,#$00
1f6b: 3a 2c     incw  $2c
1f6d: e7 2c     mov   a,($2c+x)
1f6f: ee        pop   y
1f70: e9 c0 03  mov   x,$03c0
1f73: d8 44     mov   $44,x
1f75: 3f 20 0f  call  $0f20
1f78: 5f 07 1f  jmp   $1f07
1f7b: cd 00     mov   x,#$00
1f7d: 3a 2c     incw  $2c
1f7f: e7 2c     mov   a,($2c+x)
1f81: 8d 06     mov   y,#$06
1f83: cf        mul   ya
1f84: 5d        mov   x,a
1f85: e5 c2 03  mov   a,$03c2
1f88: 08 04     or    a,#$04
1f8a: fd        mov   y,a
1f8b: 8f 04 12  mov   $12,#$04
1f8e: f5 6b 17  mov   a,$176b+x
1f91: 3f 03 0a  call  $0a03
1f94: 3d        inc   x
1f95: fc        inc   y
1f96: 6e 12 f5  dbnz  $12,$1f8e
1f99: f5 6b 17  mov   a,$176b+x
1f9c: ec c0 03  mov   y,$03c0
1f9f: d6 21 02  mov   $0221+y,a
1fa2: 3d        inc   x
1fa3: f5 6b 17  mov   a,$176b+x
1fa6: d6 20 02  mov   $0220+y,a
1fa9: 5f 9c 1e  jmp   $1e9c

1fac: e2 13     set7  $13
1fae: e8 60     mov   a,#$60
1fb0: 8d 03     mov   y,#$03
1fb2: 9b a0     dec   $a0+x
1fb4: 3f 4a 10  call  $104a
1fb7: f5 61 03  mov   a,$0361+x
1fba: fd        mov   y,a
1fbb: f5 60 03  mov   a,$0360+x
1fbe: da 10     movw  $10,ya
1fc0: 8f 00 47  mov   $47,#$00
1fc3: 5f 78 09  jmp   $0978

1fc6: 2d        push  a
1fc7: 8d 5c     mov   y,#$5c
1fc9: e8 00     mov   a,#$00
1fcb: 3f 03 0a  call  $0a03
1fce: ae        pop   a
1fcf: 8d 4c     mov   y,#$4c
1fd1: 5f 03 0a  jmp   $0a03