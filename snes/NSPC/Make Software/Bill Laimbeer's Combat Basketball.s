0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 f0     cmp   x,#$f0
080a: d0 fb     bne   $0807
080c: 40        setp
080d: e8 00     mov   a,#$00
080f: 5d        mov   x,a
0810: af        mov   (x)+,a
0811: c8 d0     cmp   x,#$d0
0813: d0 fb     bne   $0810
0815: 20        clrp
0816: e8 02     mov   a,#$02
0818: c4 15     mov   $15,a
081a: e8 00     mov   a,#$00
081c: c4 14     mov   $14,a
081e: 6d        push  y
081f: d7 14     mov   ($14)+y,a
0821: ab 14     inc   $14
0823: d0 fa     bne   $081f
0825: ab 15     inc   $15
0827: 2d        push  a
0828: e4 15     mov   a,$15
082a: 68 08     cmp   a,#$08
082c: ae        pop   a
082d: d0 f0     bne   $081f
082f: ee        pop   y
0830: e8 01     mov   a,#$01
0832: 3f f4 0d  call  $0df4
0835: a2 48     set5  $48
0837: e8 60     mov   a,#$60
0839: 8d 0c     mov   y,#$0c
083b: 3f 54 0a  call  $0a54
083e: 8d 1c     mov   y,#$1c
0840: 3f 54 0a  call  $0a54
0843: e8 4c     mov   a,#$4c
0845: 8d 5d     mov   y,#$5d
0847: 3f 54 0a  call  $0a54
084a: e8 f0     mov   a,#$f0
084c: c5 f1 00  mov   $00f1,a
084f: e8 10     mov   a,#$10
0851: c5 fa 00  mov   $00fa,a
0854: c4 53     mov   $53,a
0856: e8 01     mov   a,#$01
0858: c5 f1 00  mov   $00f1,a
085b: e8 00     mov   a,#$00
085d: 8d 07     mov   y,#$07
085f: d6 00 05  mov   $0500+y,a
0862: dc        dec   y
0863: 10 fa     bpl   $085f
0865: e4 1b     mov   a,$1b
0867: d0 54     bne   $08bd
0869: 8d 0a     mov   y,#$0a
086b: ad 05     cmp   y,#$05
086d: f0 07     beq   $0876
086f: b0 08     bcs   $0879
0871: 69 4d 4c  cmp   ($4c),($4d)
0874: d0 11     bne   $0887
0876: e3 4c 0e  bbs7  $4c,$0887
0879: f6 b9 12  mov   a,$12b9+y
087c: c5 f2 00  mov   $00f2,a
087f: f6 c3 12  mov   a,$12c3+y
0882: 5d        mov   x,a
0883: e6        mov   a,(x)
0884: c5 f3 00  mov   $00f3,a
0887: fe e2     dbnz  y,$086b
0889: cb 45     mov   $45,y
088b: cb 46     mov   $46,y
088d: e4 18     mov   a,$18
088f: 44 19     eor   a,$19
0891: 5c        lsr   a
0892: 5c        lsr   a
0893: ed        notc
0894: 6b 18     ror   $18
0896: 6b 19     ror   $19
0898: ec fd 00  mov   y,$00fd
089b: f0 fb     beq   $0898
089d: 6d        push  y
089e: e8 20     mov   a,#$20
08a0: cf        mul   ya
08a1: 60        clrc
08a2: 84 43     adc   a,$43
08a4: c4 43     mov   $43,a
08a6: 90 07     bcc   $08af
08a8: 69 4d 4c  cmp   ($4c),($4d)
08ab: f0 02     beq   $08af
08ad: ab 4c     inc   $4c
08af: 3f 7f 13  call  $137f
08b2: e4 53     mov   a,$53
08b4: ee        pop   y
08b5: cf        mul   ya
08b6: 60        clrc
08b7: 84 51     adc   a,$51
08b9: c4 51     mov   $51,a
08bb: 90 10     bcc   $08cd
08bd: 3f 35 13  call  $1335
08c0: 3f c6 0a  call  $0ac6
08c3: 3f 64 13  call  $1364
08c6: cd 00     mov   x,#$00
08c8: 3f e6 08  call  $08e6
08cb: 2f 98     bra   $0865
08cd: e4 04     mov   a,$04
08cf: f0 12     beq   $08e3
08d1: cd 00     mov   x,#$00
08d3: 8f 01 47  mov   $47,#$01
08d6: f4 31     mov   a,$31+x
08d8: f0 03     beq   $08dd
08da: 3f e2 11  call  $11e2
08dd: 3d        inc   x
08de: 3d        inc   x
08df: 0b 47     asl   $47
08e1: d0 f3     bne   $08d6
08e3: 5f 65 08  jmp   $0865

08e6: f4 04     mov   a,$04+x
08e8: d5 f4 00  mov   $00f4+x,a
08eb: f5 f4 00  mov   a,$00f4+x
08ee: 75 f4 00  cmp   a,$00f4+x
08f1: d0 f8     bne   $08eb
08f3: d4 00     mov   $00+x,a
08f5: 6f        ret

08f6: ad ca     cmp   y,#$ca
08f8: 90 05     bcc   $08ff
08fa: 3f 45 0c  call  $0c45
08fd: 8d a4     mov   y,#$a4
08ff: ad c8     cmp   y,#$c8
0901: b0 f2     bcs   $08f5
0903: e4 1a     mov   a,$1a
0905: 24 47     and   a,$47
0907: d0 ec     bne   $08f5
0909: dd        mov   a,y
090a: 28 7f     and   a,#$7f
090c: 60        clrc
090d: 84 50     adc   a,$50
090f: 60        clrc
0910: 95 f0 02  adc   a,$02f0+x
0913: d5 61 03  mov   $0361+x,a
0916: f5 81 03  mov   a,$0381+x
0919: d5 60 03  mov   $0360+x,a
091c: f5 b1 02  mov   a,$02b1+x
091f: 5c        lsr   a
0920: e8 00     mov   a,#$00
0922: 7c        ror   a
0923: d5 a0 02  mov   $02a0+x,a
0926: e8 00     mov   a,#$00
0928: d4 b0     mov   $b0+x,a
092a: d5 00 01  mov   $0100+x,a
092d: d5 d0 02  mov   $02d0+x,a
0930: d4 c0     mov   $c0+x,a
0932: 09 47 5e  or    ($5e),($47)
0935: 09 47 45  or    ($45),($47)
0938: f5 80 02  mov   a,$0280+x
093b: d4 a0     mov   $a0+x,a
093d: f0 1e     beq   $095d
093f: f5 81 02  mov   a,$0281+x
0942: d4 a1     mov   $a1+x,a
0944: f5 90 02  mov   a,$0290+x
0947: d0 0a     bne   $0953
0949: f5 61 03  mov   a,$0361+x
094c: 80        setc
094d: b5 91 02  sbc   a,$0291+x
0950: d5 61 03  mov   $0361+x,a
0953: f5 91 02  mov   a,$0291+x
0956: 60        clrc
0957: 95 61 03  adc   a,$0361+x
095a: 3f 6c 0e  call  $0e6c
095d: 3f 84 0e  call  $0e84
0960: 8d 00     mov   y,#$00
0962: e4 11     mov   a,$11
0964: 80        setc
0965: a8 34     sbc   a,#$34
0967: b0 09     bcs   $0972
0969: e4 11     mov   a,$11
096b: 80        setc
096c: a8 13     sbc   a,#$13
096e: b0 06     bcs   $0976
0970: dc        dec   y
0971: 1c        asl   a
0972: 7a 10     addw  ya,$10
0974: da 10     movw  $10,ya
0976: 4d        push  x
0977: e4 11     mov   a,$11
0979: 1c        asl   a
097a: 8d 00     mov   y,#$00
097c: cd 18     mov   x,#$18
097e: 9e        div   ya,x
097f: 5d        mov   x,a
0980: f6 d1 12  mov   a,$12d1+y
0983: c4 15     mov   $15,a
0985: f6 d0 12  mov   a,$12d0+y
0988: c4 14     mov   $14,a
098a: f6 d3 12  mov   a,$12d3+y
098d: 2d        push  a
098e: f6 d2 12  mov   a,$12d2+y
0991: ee        pop   y
0992: 9a 14     subw  ya,$14
0994: eb 10     mov   y,$10
0996: cf        mul   ya
0997: dd        mov   a,y
0998: 8d 00     mov   y,#$00
099a: 7a 14     addw  ya,$14
099c: cb 15     mov   $15,y
099e: c4 14     mov   $14,a
09a0: d8 2c     mov   $2c,x
09a2: ce        pop   x
09a3: 4d        push  x
09a4: f5 11 02  mov   a,$0211+x
09a7: 30 57     bmi   $0a00
09a9: 5d        mov   x,a
09aa: f5 80 50  mov   a,$5080+x
09ad: f0 51     beq   $0a00
09af: c4 2d     mov   $2d,a
09b1: e4 11     mov   a,$11
09b3: 1c        asl   a
09b4: 8d 00     mov   y,#$00
09b6: cd 18     mov   x,#$18
09b8: 9e        div   ya,x
09b9: e4 2d     mov   a,$2d
09bb: 30 1c     bmi   $09d9
09bd: f6 d1 12  mov   a,$12d1+y
09c0: c4 17     mov   $17,a
09c2: f6 d0 12  mov   a,$12d0+y
09c5: c4 16     mov   $16,a
09c7: f6 d3 12  mov   a,$12d3+y
09ca: 2d        push  a
09cb: f6 d2 12  mov   a,$12d2+y
09ce: ee        pop   y
09cf: 9a 16     subw  ya,$16
09d1: eb 2d     mov   y,$2d
09d3: cf        mul   ya
09d4: dd        mov   a,y
09d5: 8d 00     mov   y,#$00
09d7: 2f 21     bra   $09fa
09d9: f6 cf 12  mov   a,$12cf+y
09dc: c4 17     mov   $17,a
09de: f6 ce 12  mov   a,$12ce+y
09e1: c4 16     mov   $16,a
09e3: f6 d1 12  mov   a,$12d1+y
09e6: 2d        push  a
09e7: f6 d0 12  mov   a,$12d0+y
09ea: ee        pop   y
09eb: 9a 16     subw  ya,$16
09ed: fd        mov   y,a
09ee: e4 2d     mov   a,$2d
09f0: 48 ff     eor   a,#$ff
09f2: bc        inc   a
09f3: cf        mul   ya
09f4: dd        mov   a,y
09f5: 48 ff     eor   a,#$ff
09f7: bc        inc   a
09f8: 8d ff     mov   y,#$ff
09fa: 7a 14     addw  ya,$14
09fc: cb 15     mov   $15,y
09fe: c4 14     mov   $14,a
0a00: f8 2c     mov   x,$2c
0a02: e4 14     mov   a,$14
0a04: 5f 07 0a  jmp   $0a07

0a07: 1c        asl   a
0a08: 2b 15     rol   $15
0a0a: c4 14     mov   $14,a
0a0c: 2f 04     bra   $0a12
0a0e: 4b 15     lsr   $15
0a10: 7c        ror   a
0a11: 3d        inc   x
0a12: c8 06     cmp   x,#$06
0a14: d0 f8     bne   $0a0e
0a16: c4 14     mov   $14,a
0a18: ce        pop   x
0a19: f5 20 02  mov   a,$0220+x
0a1c: eb 15     mov   y,$15
0a1e: cf        mul   ya
0a1f: da 16     movw  $16,ya
0a21: f5 20 02  mov   a,$0220+x
0a24: eb 14     mov   y,$14
0a26: cf        mul   ya
0a27: 6d        push  y
0a28: f5 21 02  mov   a,$0221+x
0a2b: eb 14     mov   y,$14
0a2d: cf        mul   ya
0a2e: 7a 16     addw  ya,$16
0a30: da 16     movw  $16,ya
0a32: f5 21 02  mov   a,$0221+x
0a35: eb 15     mov   y,$15
0a37: cf        mul   ya
0a38: fd        mov   y,a
0a39: ae        pop   a
0a3a: 7a 16     addw  ya,$16
0a3c: da 16     movw  $16,ya
0a3e: 7d        mov   a,x
0a3f: 9f        xcn   a
0a40: 5c        lsr   a
0a41: 08 02     or    a,#$02
0a43: fd        mov   y,a
0a44: e4 16     mov   a,$16
0a46: 3f 4c 0a  call  $0a4c
0a49: fc        inc   y
0a4a: e4 17     mov   a,$17
0a4c: 2d        push  a
0a4d: e4 47     mov   a,$47
0a4f: 24 1a     and   a,$1a
0a51: ae        pop   a
0a52: d0 06     bne   $0a5a
0a54: cc f2 00  mov   $00f2,y
0a57: c5 f3 00  mov   $00f3,a
0a5a: 6f        ret

0a5b: 3a 40     incw  $40
0a5d: e4 40     mov   a,$40
0a5f: 2d        push  a
0a60: e4 41     mov   a,$41
0a62: fd        mov   y,a
0a63: ae        pop   a
0a64: 1a 40     decw  $40
0a66: 6f        ret

0a67: 3f b8 13  call  $13b8
0a6a: 3f ea 12  call  $12ea
0a6d: c4 08     mov   $08,a
0a6f: c4 04     mov   $04,a
0a71: 1c        asl   a
0a72: d0 03     bne   $0a77
0a74: 5f 5a 0b  jmp   $0b5a

; play song in A
0a77: 5d        mov   x,a
0a78: f5 ff 13  mov   a,$13ff+x
0a7b: fd        mov   y,a
0a7c: f5 fe 13  mov   a,$13fe+x
0a7f: da 40     movw  $40,ya
0a81: 8f 02 0c  mov   $0c,#$02
0a84: 8d 00     mov   y,#$00
0a86: f7 40     mov   a,($40)+y
0a88: c4 16     mov   $16,a
0a8a: e4 1a     mov   a,$1a
0a8c: 48 ff     eor   a,#$ff
0a8e: 24 16     and   a,$16
0a90: 0e 46 00  tset1 $0046
0a93: e4 16     mov   a,$16
0a95: 8d 00     mov   y,#$00
0a97: 5c        lsr   a
0a98: 90 07     bcc   $0aa1
0a9a: 2d        push  a
0a9b: e8 00     mov   a,#$00
0a9d: d6 19 05  mov   $0519+y,a
0aa0: ae        pop   a
0aa1: fc        inc   y
0aa2: fc        inc   y
0aa3: ad 10     cmp   y,#$10
0aa5: 90 f0     bcc   $0a97
0aa7: cd 0e     mov   x,#$0e
0aa9: 8f 80 47  mov   $47,#$80
0aac: 6d        push  y
0aad: 8d 00     mov   y,#$00
0aaf: f7 40     mov   a,($40)+y
0ab1: ee        pop   y
0ab2: 24 47     and   a,$47
0ab4: f0 03     beq   $0ab9
0ab6: 3f 00 f8  call  $f800
0ab9: 1d        dec   x
0aba: 1d        dec   x
0abb: 4b 47     lsr   $47
0abd: d0 ed     bne   $0aac
0abf: 3f 2d f8  call  $f82d
0ac2: 5f fa 0a  jmp   $0afa

0ac5: 6f        ret

0ac6: eb 08     mov   y,$08
0ac8: e4 00     mov   a,$00
0aca: c4 08     mov   $08,a
0acc: d0 07     bne   $0ad5
0ace: 7e 00     cmp   y,$00
0ad0: f0 03     beq   $0ad5
0ad2: 5f b2 13  jmp   $13b2

0ad5: 68 ff     cmp   a,#$ff
0ad7: f0 8e     beq   $0a67
0ad9: 68 f0     cmp   a,#$f0
0adb: d0 06     bne   $0ae3
0add: e8 ff     mov   a,#$ff
0adf: c4 16     mov   $16,a
0ae1: 2f a7     bra   $0a8a
0ae3: 68 f1     cmp   a,#$f1
0ae5: f0 0c     beq   $0af3
0ae7: 65 ff 13  cmp   a,$13ff
0aea: b0 07     bcs   $0af3
0aec: 7e 00     cmp   y,$00
0aee: f0 03     beq   $0af3
0af0: 5f 6f 0a  jmp   $0a6f

0af3: e4 04     mov   a,$04
0af5: f0 ce     beq   $0ac5
0af7: 5f 5a 0b  jmp   $0b5a

0afa: 3f 5b 0a  call  $0a5b
0afd: da 16     movw  $16,ya
0aff: 8d 0f     mov   y,#$0f
0b01: 8f 80 47  mov   $47,#$80
0b04: 6d        push  y
0b05: 8d 00     mov   y,#$00
0b07: f7 40     mov   a,($40)+y
0b09: ee        pop   y
0b0a: 24 47     and   a,$47
0b0c: d0 08     bne   $0b16
0b0e: 4b 47     lsr   $47
0b10: dc        dec   y
0b11: dc        dec   y
0b12: 10 f0     bpl   $0b04
0b14: 2f 16     bra   $0b2c
0b16: f7 16     mov   a,($16)+y
0b18: d6 30 00  mov   $0030+y,a
0b1b: d6 08 05  mov   $0508+y,a
0b1e: dc        dec   y
0b1f: f7 16     mov   a,($16)+y
0b21: d6 30 00  mov   $0030+y,a
0b24: d6 08 05  mov   $0508+y,a
0b27: 4b 47     lsr   $47
0b29: dc        dec   y
0b2a: 10 d8     bpl   $0b04
0b2c: cd 00     mov   x,#$00
0b2e: 8f 01 47  mov   $47,#$01
0b31: 6d        push  y
0b32: 8d 00     mov   y,#$00
0b34: f7 40     mov   a,($40)+y
0b36: ee        pop   y
0b37: 24 47     and   a,$47
0b39: f0 19     beq   $0b54
0b3b: f4 31     mov   a,$31+x
0b3d: f0 0a     beq   $0b49
0b3f: f5 11 02  mov   a,$0211+x
0b42: d0 05     bne   $0b49
0b44: e8 00     mov   a,#$00
0b46: 3f 45 0c  call  $0c45
0b49: e8 00     mov   a,#$00
0b4b: d4 80     mov   $80+x,a
0b4d: d4 90     mov   $90+x,a
0b4f: d4 91     mov   $91+x,a
0b51: bc        inc   a
0b52: d4 70     mov   $70+x,a
0b54: 3d        inc   x
0b55: 3d        inc   x
0b56: 0b 47     asl   $47
0b58: d0 d7     bne   $0b31
0b5a: cd 00     mov   x,#$00
0b5c: d8 5e     mov   $5e,x
0b5e: 8f 01 47  mov   $47,#$01
0b61: d8 44     mov   $44,x
0b63: f4 31     mov   a,$31+x
0b65: f0 6f     beq   $0bd6
0b67: 9b 70     dec   $70+x
0b69: d0 61     bne   $0bcc
0b6b: 3f 3b 0c  call  $0c3b
0b6e: d0 0d     bne   $0b7d
0b70: e8 00     mov   a,#$00
0b72: d4 31     mov   $31+x,a
0b74: e4 47     mov   a,$47
0b76: 8d 5c     mov   y,#$5c
0b78: 3f 54 0a  call  $0a54
0b7b: 2f 59     bra   $0bd6
; vcmd branches
0b7d: 30 20     bmi   $0b9f
0b7f: d5 00 02  mov   $0200+x,a
0b82: 3f 3b 0c  call  $0c3b
0b85: 30 18     bmi   $0b9f
0b87: 2d        push  a
0b88: 9f        xcn   a
0b89: 28 07     and   a,#$07
0b8b: fd        mov   y,a
0b8c: f6 00 50  mov   a,$5000+y
0b8f: d5 01 02  mov   $0201+x,a
0b92: ae        pop   a
0b93: 28 0f     and   a,#$0f
0b95: fd        mov   y,a
0b96: f6 08 50  mov   a,$5008+y
0b99: d5 10 02  mov   $0210+x,a
0b9c: 3f 3b 0c  call  $0c3b
; vcmd branches 80-ff
0b9f: 68 de     cmp   a,#$de
0ba1: 90 05     bcc   $0ba8
0ba3: 3f 29 0c  call  $0c29
0ba6: 2f c3     bra   $0b6b
; vcmds 80-dd - note
0ba8: f5 00 04  mov   a,$0400+x
0bab: 04 1b     or    a,$1b
0bad: d0 04     bne   $0bb3
0baf: dd        mov   a,y
0bb0: 3f f6 08  call  $08f6
0bb3: f5 00 02  mov   a,$0200+x
0bb6: d4 70     mov   $70+x,a
0bb8: fd        mov   y,a
0bb9: 2d        push  a
0bba: f5 19 05  mov   a,$0519+x
0bbd: ae        pop   a
0bbe: d0 08     bne   $0bc8
0bc0: f5 01 02  mov   a,$0201+x
0bc3: cf        mul   ya
0bc4: dd        mov   a,y
0bc5: d0 01     bne   $0bc8
0bc7: bc        inc   a
0bc8: d4 71     mov   $71+x,a
0bca: 2f 07     bra   $0bd3
0bcc: e4 1b     mov   a,$1b
0bce: d0 06     bne   $0bd6
0bd0: 3f e6 10  call  $10e6
0bd3: 3f 4c 0e  call  $0e4c
0bd6: 3d        inc   x
0bd7: 3d        inc   x
0bd8: 0b 47     asl   $47
0bda: d0 85     bne   $0b61
0bdc: e4 54     mov   a,$54
0bde: f0 0b     beq   $0beb
0be0: ba 56     movw  ya,$56
0be2: 7a 52     addw  ya,$52
0be4: 6e 54 02  dbnz  $54,$0be9
0be7: ba 54     movw  ya,$54
0be9: da 52     movw  $52,ya
0beb: e4 68     mov   a,$68
0bed: f0 15     beq   $0c04
0bef: ba 64     movw  ya,$64
0bf1: 7a 60     addw  ya,$60
0bf3: da 60     movw  $60,ya
0bf5: ba 66     movw  ya,$66
0bf7: 7a 62     addw  ya,$62
0bf9: 6e 68 06  dbnz  $68,$0c02
0bfc: ba 68     movw  ya,$68
0bfe: da 60     movw  $60,ya
0c00: eb 6a     mov   y,$6a
0c02: da 62     movw  $62,ya
0c04: e4 5a     mov   a,$5a
0c06: f0 0e     beq   $0c16
0c08: ba 5c     movw  ya,$5c
0c0a: 7a 58     addw  ya,$58
0c0c: 6e 5a 02  dbnz  $5a,$0c11
0c0f: ba 5a     movw  ya,$5a
0c11: da 58     movw  $58,ya
0c13: 8f ff 5e  mov   $5e,#$ff
0c16: cd 00     mov   x,#$00
0c18: 8f 01 47  mov   $47,#$01
0c1b: f4 31     mov   a,$31+x
0c1d: f0 03     beq   $0c22
0c1f: 3f 2f 10  call  $102f
0c22: 3d        inc   x
0c23: 3d        inc   x
0c24: 0b 47     asl   $47
0c26: d0 f3     bne   $0c1b
0c28: 6f        ret

; dispatch vcmd in A (de-ff)
0c29: 1c        asl   a
0c2a: fd        mov   y,a
0c2b: f6 f0 0d  mov   a,$0df0+y
0c2e: 2d        push  a
0c2f: f6 ef 0d  mov   a,$0def+y
0c32: 2d        push  a
0c33: dd        mov   a,y
0c34: 5c        lsr   a
0c35: fd        mov   y,a
0c36: f6 8f 0e  mov   a,$0e8f+y
0c39: f0 08     beq   $0c43
; read new argument to A and Y
0c3b: e7 30     mov   a,($30+x)
; advance reading pointer
0c3d: bb 30     inc   $30+x
0c3f: d0 02     bne   $0c43
0c41: bb 31     inc   $31+x
0c43: fd        mov   y,a
0c44: 6f        ret

; vcmd e0 - set instrument
0c45: d5 11 02  mov   $0211+x,a
0c48: fd        mov   y,a
0c49: 10 06     bpl   $0c51
0c4b: 80        setc
0c4c: a8 ca     sbc   a,#$ca
0c4e: 60        clrc
0c4f: 84 5f     adc   a,$5f
0c51: 8d 06     mov   y,#$06
0c53: cf        mul   ya
0c54: da 14     movw  $14,ya
0c56: 60        clrc
0c57: 98 00 14  adc   $14,#$00
0c5a: 98 4e 15  adc   $15,#$4e
0c5d: e4 1a     mov   a,$1a
0c5f: 24 47     and   a,$47
0c61: d0 3a     bne   $0c9d
0c63: 4d        push  x
0c64: 7d        mov   a,x
0c65: 9f        xcn   a
0c66: 5c        lsr   a
0c67: 08 04     or    a,#$04
0c69: 5d        mov   x,a
0c6a: 8d 00     mov   y,#$00
0c6c: f7 14     mov   a,($14)+y
0c6e: 10 0e     bpl   $0c7e
0c70: 28 1f     and   a,#$1f
0c72: 38 20 48  and   $48,#$20
0c75: 0e 48 00  tset1 $0048
0c78: 09 47 49  or    ($49),($47)
0c7b: dd        mov   a,y
0c7c: 2f 07     bra   $0c85
0c7e: e4 47     mov   a,$47
0c80: 4e 49 00  tclr1 $0049
0c83: f7 14     mov   a,($14)+y
0c85: c9 f2 00  mov   $00f2,x
0c88: c5 f3 00  mov   $00f3,a
0c8b: 3d        inc   x
0c8c: fc        inc   y
0c8d: ad 04     cmp   y,#$04
0c8f: d0 f2     bne   $0c83
0c91: ce        pop   x
0c92: f7 14     mov   a,($14)+y
0c94: d5 21 02  mov   $0221+x,a
0c97: fc        inc   y
0c98: f7 14     mov   a,($14)+y
0c9a: d5 20 02  mov   $0220+x,a
0c9d: 6f        ret

; vcmd e1 - pan
0c9e: d5 51 03  mov   $0351+x,a
0ca1: 28 1f     and   a,#$1f
0ca3: d5 31 03  mov   $0331+x,a
0ca6: e8 00     mov   a,#$00
0ca8: d5 30 03  mov   $0330+x,a
0cab: 6f        ret

; vcmd e2 - pan fade
0cac: d4 91     mov   $91+x,a
0cae: 2d        push  a
0caf: 3f 3b 0c  call  $0c3b
0cb2: d5 50 03  mov   $0350+x,a
0cb5: 80        setc
0cb6: b5 31 03  sbc   a,$0331+x
0cb9: ce        pop   x
0cba: 3f 8f 0e  call  $0e8f
0cbd: d5 40 03  mov   $0340+x,a
0cc0: dd        mov   a,y
0cc1: d5 41 03  mov   $0341+x,a
0cc4: 6f        ret

; vcmd e3 - vibrato on
0cc5: d5 b0 02  mov   $02b0+x,a
0cc8: 3f 3b 0c  call  $0c3b
0ccb: d5 a1 02  mov   $02a1+x,a
0cce: 3f 3b 0c  call  $0c3b
; vcmd e4 - vibrato off
0cd1: d4 b1     mov   $b1+x,a
0cd3: d5 c1 02  mov   $02c1+x,a
0cd6: e8 00     mov   a,#$00
0cd8: d5 b1 02  mov   $02b1+x,a
0cdb: 6f        ret

; vcmd f0 - vibrato fade
0cdc: d5 b1 02  mov   $02b1+x,a
0cdf: 2d        push  a
0ce0: 8d 00     mov   y,#$00
0ce2: f4 b1     mov   a,$b1+x
0ce4: ce        pop   x
0ce5: 9e        div   ya,x
0ce6: f8 44     mov   x,$44
0ce8: d5 c0 02  mov   $02c0+x,a
0ceb: 6f        ret

; vcmd e5 - master volume
0cec: e8 00     mov   a,#$00
0cee: da 58     movw  $58,ya
0cf0: 6f        ret

; vcmd e6 - master volume fade
0cf1: c4 5a     mov   $5a,a
0cf3: 3f 3b 0c  call  $0c3b
0cf6: c4 5b     mov   $5b,a
0cf8: 80        setc
0cf9: a4 59     sbc   a,$59
0cfb: f8 5a     mov   x,$5a
0cfd: 3f 8f 0e  call  $0e8f
0d00: da 5c     movw  $5c,ya
0d02: 6f        ret

; vcmd e7 - tempo
0d03: e8 00     mov   a,#$00
0d05: da 52     movw  $52,ya
0d07: 6f        ret

; vcmd e8 - tempo fade
0d08: c4 54     mov   $54,a
0d0a: 3f 3b 0c  call  $0c3b
0d0d: c4 55     mov   $55,a
0d0f: 80        setc
0d10: a4 53     sbc   a,$53
0d12: f8 54     mov   x,$54
0d14: 3f 8f 0e  call  $0e8f
0d17: da 56     movw  $56,ya
0d19: 6f        ret

; vcmd e9 - global transpose
0d1a: c4 50     mov   $50,a
0d1c: 6f        ret

; vcmd ea - per-voice transpose
0d1d: d5 f0 02  mov   $02f0+x,a
0d20: 6f        ret

; vcmd eb - tremolo on
0d21: d5 e0 02  mov   $02e0+x,a
0d24: 3f 3b 0c  call  $0c3b
0d27: d5 d1 02  mov   $02d1+x,a
0d2a: 3f 3b 0c  call  $0c3b
; vcmd ec - tremolo off
0d2d: d4 c1     mov   $c1+x,a
0d2f: 6f        ret

; vcmd f1 - pitch envelope (release)
0d30: e8 01     mov   a,#$01
0d32: 2f 02     bra   $0d36
; vcmd f2 - pitch envelope (attack)
0d34: e8 00     mov   a,#$00
0d36: d5 90 02  mov   $0290+x,a
0d39: dd        mov   a,y
0d3a: d5 81 02  mov   $0281+x,a
0d3d: 3f 3b 0c  call  $0c3b
0d40: d5 80 02  mov   $0280+x,a
0d43: 3f 3b 0c  call  $0c3b
0d46: d5 91 02  mov   $0291+x,a
0d49: 6f        ret

; vcmd f3 - pitch envelope off
0d4a: d5 80 02  mov   $0280+x,a
0d4d: 6f        ret

; vcmd ed - volume
0d4e: d5 01 03  mov   $0301+x,a
0d51: e8 00     mov   a,#$00
0d53: d5 00 03  mov   $0300+x,a
0d56: 6f        ret

; vcmd ee - volume fade
0d57: d4 90     mov   $90+x,a
0d59: 2d        push  a
0d5a: 3f 3b 0c  call  $0c3b
0d5d: d5 20 03  mov   $0320+x,a
0d60: 80        setc
0d61: b5 01 03  sbc   a,$0301+x
0d64: ce        pop   x
0d65: 3f 8f 0e  call  $0e8f
0d68: d5 10 03  mov   $0310+x,a
0d6b: dd        mov   a,y
0d6c: d5 11 03  mov   $0311+x,a
0d6f: 6f        ret

; vcmd f4 - tuning
0d70: d5 81 03  mov   $0381+x,a
0d73: 6f        ret

; vcmd ef - call subroutine
0d74: d5 40 02  mov   $0240+x,a
0d77: 3f 3b 0c  call  $0c3b
0d7a: d5 41 02  mov   $0241+x,a
0d7d: 3f 3b 0c  call  $0c3b
0d80: d4 80     mov   $80+x,a
0d82: f4 30     mov   a,$30+x
0d84: d5 30 02  mov   $0230+x,a
0d87: f4 31     mov   a,$31+x
0d89: d5 31 02  mov   $0231+x,a
0d8c: f5 40 02  mov   a,$0240+x
0d8f: d4 30     mov   $30+x,a
0d91: f5 41 02  mov   a,$0241+x
0d94: d4 31     mov   $31+x,a
0d96: 6f        ret

; vcmd f5 - echo vbits/volume
0d97: c4 4a     mov   $4a,a
0d99: 3f 3b 0c  call  $0c3b
0d9c: e8 00     mov   a,#$00
0d9e: da 60     movw  $60,ya
0da0: 3f 3b 0c  call  $0c3b
0da3: e8 00     mov   a,#$00
0da5: da 62     movw  $62,ya
0da7: b2 48     clr5  $48
0da9: 6f        ret

; vcmd f8 - echo volume fade
0daa: c4 68     mov   $68,a
0dac: 3f 3b 0c  call  $0c3b
0daf: c4 69     mov   $69,a
0db1: 80        setc
0db2: a4 61     sbc   a,$61
0db4: f8 68     mov   x,$68
0db6: 3f 8f 0e  call  $0e8f
0db9: da 64     movw  $64,ya
0dbb: 3f 3b 0c  call  $0c3b
0dbe: c4 6a     mov   $6a,a
0dc0: 80        setc
0dc1: a4 63     sbc   a,$63
0dc3: f8 68     mov   x,$68
0dc5: 3f 8f 0e  call  $0e8f
0dc8: da 66     movw  $66,ya
0dca: 6f        ret

; vcmd f6 - disable echo
0dcb: da 60     movw  $60,ya
0dcd: da 62     movw  $62,ya
0dcf: a2 48     set5  $48
0dd1: 6f        ret

; vcmd f7 - set echo params
0dd2: 3f f4 0d  call  $0df4
0dd5: 3f 3b 0c  call  $0c3b
0dd8: c4 4e     mov   $4e,a
0dda: 3f 3b 0c  call  $0c3b
0ddd: 8d 08     mov   y,#$08
0ddf: cf        mul   ya
0de0: 5d        mov   x,a
0de1: 8d 0f     mov   y,#$0f
0de3: f5 9a 12  mov   a,$129a+x
0de6: 3f 54 0a  call  $0a54
0de9: 3d        inc   x
0dea: dd        mov   a,y
0deb: 60        clrc
0dec: 88 10     adc   a,#$10
0dee: fd        mov   y,a
0def: 10 f2     bpl   $0de3
0df1: f8 44     mov   x,$44
0df3: 6f        ret

0df4: c4 4d     mov   $4d,a
0df6: 8d 7d     mov   y,#$7d
0df8: cc f2 00  mov   $00f2,y
0dfb: e5 f3 00  mov   a,$00f3
0dfe: 64 4d     cmp   a,$4d
0e00: f0 2b     beq   $0e2d
0e02: 28 0f     and   a,#$0f
0e04: 48 ff     eor   a,#$ff
0e06: f3 4c 03  bbc7  $4c,$0e0c
0e09: 60        clrc
0e0a: 84 4c     adc   a,$4c
0e0c: c4 4c     mov   $4c,a
0e0e: 8d 04     mov   y,#$04
0e10: f6 b9 12  mov   a,$12b9+y
0e13: c5 f2 00  mov   $00f2,a
0e16: e8 00     mov   a,#$00
0e18: c5 f3 00  mov   $00f3,a
0e1b: fe f3     dbnz  y,$0e10
0e1d: e4 48     mov   a,$48
0e1f: 08 20     or    a,#$20
0e21: 8d 6c     mov   y,#$6c
0e23: 3f 54 0a  call  $0a54
0e26: e4 4d     mov   a,$4d
0e28: 8d 7d     mov   y,#$7d
0e2a: 3f 54 0a  call  $0a54
0e2d: 1c        asl   a
0e2e: 1c        asl   a
0e2f: 1c        asl   a
0e30: 48 ff     eor   a,#$ff
0e32: 80        setc
0e33: 88 f0     adc   a,#$f0
0e35: 8d 6d     mov   y,#$6d
0e37: 5f 54 0a  jmp   $0a54

; vcmd fa - set perc patch base
0e3a: c4 5f     mov   $5f,a
0e3c: 6f        ret

0e3d: 3f 3d 0c  call  $0c3d
0e40: 6f        ret

0e41: bc        inc   a
0e42: d5 00 04  mov   $0400+x,a
0e45: 6f        ret

0e46: bc        inc   a
0e47: c4 1b     mov   $1b,a
0e49: 5f 8a 0a  jmp   $0a8a

0e4c: f4 a0     mov   a,$a0+x
0e4e: d0 33     bne   $0e83
0e50: e7 30     mov   a,($30+x)
0e52: 68 f9     cmp   a,#$f9
0e54: d0 2d     bne   $0e83
0e56: 3f 3d 0c  call  $0c3d
0e59: 3f 3b 0c  call  $0c3b
; vcmd f9 - pitch slide
0e5c: d4 a1     mov   $a1+x,a
0e5e: 3f 3b 0c  call  $0c3b
0e61: d4 a0     mov   $a0+x,a
0e63: 3f 3b 0c  call  $0c3b
0e66: 60        clrc
0e67: 84 50     adc   a,$50
0e69: 95 f0 02  adc   a,$02f0+x
0e6c: 28 7f     and   a,#$7f
0e6e: d5 80 03  mov   $0380+x,a
0e71: 80        setc
0e72: b5 61 03  sbc   a,$0361+x
0e75: fb a0     mov   y,$a0+x
0e77: 6d        push  y
0e78: ce        pop   x
0e79: 3f 8f 0e  call  $0e8f
0e7c: d5 70 03  mov   $0370+x,a
0e7f: dd        mov   a,y
0e80: d5 71 03  mov   $0371+x,a
0e83: 6f        ret

0e84: f5 61 03  mov   a,$0361+x
0e87: c4 11     mov   $11,a
0e89: f5 60 03  mov   a,$0360+x
0e8c: c4 10     mov   $10,a
0e8e: 6f        ret

0e8f: ed        notc
0e90: 6b 12     ror   $12
0e92: 10 03     bpl   $0e97
0e94: 48 ff     eor   a,#$ff
0e96: bc        inc   a
0e97: 8d 00     mov   y,#$00
0e99: 9e        div   ya,x
0e9a: 2d        push  a
0e9b: e8 00     mov   a,#$00
0e9d: 9e        div   ya,x
0e9e: ee        pop   y
0e9f: f8 44     mov   x,$44
0ea1: f3 12 06  bbc7  $12,$0eaa
0ea4: da 14     movw  $14,ya
0ea6: ba 0e     movw  ya,$0e
0ea8: 9a 14     subw  ya,$14
0eaa: 6f        ret

; vcmd dispatch table
0eab: dw $0f0e ; de - repeat start
0ead: dw $0f2c ; df - repeat end
0eaf: dw $0c45 ; e0 - set instrument
0eb1: dw $0c9e ; e1 - pan
0eb3: dw $0cac ; e2 - pan fade
0eb5: dw $0cc5 ; e3 - vibrato on
0eb7: dw $0cd1 ; e4 - vibrato off
0eb9: dw $0cec ; e5 - master volume
0ebb: dw $0cf1 ; e6 - master volume fade
0ebd: dw $0d03 ; e7 - tempo
0ebf: dw $0d08 ; e8 - tempo fade
0ec1: dw $0d1a ; e9 - global transpose
0ec3: dw $0d1d ; ea - per-voice transposes
0ec5: dw $0d21 ; eb - tremolo on
0ec7: dw $0d2d ; ec - tremolo off
0ec9: dw $0d4e ; ed - volume
0ecb: dw $0d57 ; ee - volume fade
0ecd: dw $0d74 ; ef - call subroutine
0ecf: dw $0cdc ; f0 - vibrato fade
0ed1: dw $0d30 ; f1 - pitch envelope (release)
0ed3: dw $0d34 ; f2 - pitch envelope (attack)
0ed5: dw $0d4a ; f3 - pitch envelope off
0ed7: dw $0d70 ; f4 - tuning
0ed9: dw $0d97 ; f5 - echo vbits/volume
0edb: dw $0dcb ; f6 - disable echo
0edd: dw $0dd2 ; f7 - set echo params
0edf: dw $0daa ; f8 - echo volume fade
0ee1: dw $0e5c ; f9 - pitch slide
0ee3: dw $0e3a ; fa - set perc patch base
0ee5: dw $0f50 ; fb - call subroutine (2)
0ee7: dw $0f72 ; fc - return from subroutine (2)
0ee9: dw $0f89 ; fd - song loop marker
0eeb: dw $0f9f ; fe - subcmd

; vcmd lengths
0eed: db $01,$00,$01,$01,$02,$03,$00,$01 ; de-e5
0ef5: db $02,$01,$02,$01,$01,$03,$00,$01 ; e6-ed
0efd: db $02,$03,$01,$03,$03,$00,$01,$03 ; ee-f5
0f05: db $00,$03,$03,$03,$01,$02,$00,$00 ; f6-fd
0f0d: db $02				 ; fe

; vcmd de - repeat start
0f0e: 2d        push  a
0f0f: 3f 0b 10  call  $100b
0f12: f5 30 00  mov   a,$0030+x
0f15: d7 2c     mov   ($2c)+y,a
0f17: fc        inc   y
0f18: f5 31 00  mov   a,$0031+x
0f1b: d7 2c     mov   ($2c)+y,a
0f1d: fc        inc   y
0f1e: ae        pop   a
0f1f: d7 2c     mov   ($2c)+y,a
0f21: fc        inc   y
0f22: 4d        push  x
0f23: 7d        mov   a,x
0f24: 5c        lsr   a
0f25: 5d        mov   x,a
0f26: dd        mov   a,y
0f27: d5 00 05  mov   $0500+x,a
0f2a: ce        pop   x
0f2b: 6f        ret

; vcmd df - repeat end
0f2c: 3f 0b 10  call  $100b
0f2f: dc        dec   y
0f30: f7 2c     mov   a,($2c)+y
0f32: 9c        dec   a
0f33: f0 0f     beq   $0f44
0f35: d7 2c     mov   ($2c)+y,a
0f37: dc        dec   y
0f38: f7 2c     mov   a,($2c)+y
0f3a: d5 31 00  mov   $0031+x,a
0f3d: dc        dec   y
0f3e: f7 2c     mov   a,($2c)+y
0f40: d5 30 00  mov   $0030+x,a
0f43: 6f        ret

0f44: dc        dec   y
0f45: dc        dec   y
0f46: 4d        push  x
0f47: 7d        mov   a,x
0f48: 5c        lsr   a
0f49: 5d        mov   x,a
0f4a: dd        mov   a,y
0f4b: d5 00 05  mov   $0500+x,a
0f4e: ce        pop   x
0f4f: 6f        ret

; vcmd fb - call subroutine (2)
0f50: 2d        push  a
0f51: 3f 3b 0c  call  $0c3b
0f54: 2d        push  a
0f55: 3f 0b 10  call  $100b
0f58: f4 30     mov   a,$30+x
0f5a: d7 2c     mov   ($2c)+y,a
0f5c: fc        inc   y
0f5d: f4 31     mov   a,$31+x
0f5f: d7 2c     mov   ($2c)+y,a
0f61: fc        inc   y
0f62: ae        pop   a
0f63: d4 31     mov   $31+x,a
0f65: ae        pop   a
0f66: d4 30     mov   $30+x,a
0f68: 4d        push  x
0f69: 7d        mov   a,x
0f6a: 5c        lsr   a
0f6b: 5d        mov   x,a
0f6c: dd        mov   a,y
0f6d: d5 00 05  mov   $0500+x,a
0f70: ce        pop   x
0f71: 6f        ret

; vcmd fc - return from subroutine (2)
0f72: 3f 0b 10  call  $100b
0f75: dc        dec   y
0f76: f7 2c     mov   a,($2c)+y
0f78: d4 31     mov   $31+x,a
0f7a: dc        dec   y
0f7b: f7 2c     mov   a,($2c)+y
0f7d: d4 30     mov   $30+x,a
0f7f: 4d        push  x
0f80: 7d        mov   a,x
0f81: 5c        lsr   a
0f82: 5d        mov   x,a
0f83: dd        mov   a,y
0f84: d5 00 05  mov   $0500+x,a
0f87: ce        pop   x
0f88: 6f        ret

; vcmd fd - song loop marker
0f89: f4 30     mov   a,$30+x
0f8b: d5 08 05  mov   $0508+x,a
0f8e: f4 31     mov   a,$31+x
0f90: d5 09 05  mov   $0509+x,a
0f93: 6f        ret

; subcmd 00 - go to song loop
0f94: f5 08 05  mov   a,$0508+x
0f97: d4 30     mov   $30+x,a
0f99: f5 09 05  mov   a,$0509+x
0f9c: d4 31     mov   $31+x,a
0f9e: 6f        ret

; vcmd fe - subcmd
0f9f: 1c        asl   a
0fa0: fd        mov   y,a
0fa1: f6 ae 0f  mov   a,$0fae+y
0fa4: 2d        push  a
0fa5: f6 ad 0f  mov   a,$0fad+y
0fa8: 2d        push  a
0fa9: 3f 3b 0c  call  $0c3b
0fac: 6f        ret

; subcmd dispatch table
0fad: dw $0f94 ; 00 - go to song loop
0faf: dw $0fb7 ; 01
0fb1: dw $0fd4 ; 02
0fb3: dw $0fff ; 03
0fb5: dw $1005 ; 04

; subcmd 01
0fb7: fd        mov   y,a
0fb8: 30 0c     bmi   $0fc6
0fba: 60        clrc
0fbb: 95 f0 02  adc   a,$02f0+x
0fbe: 68 19     cmp   a,#$19
0fc0: 90 0e     bcc   $0fd0
0fc2: e8 18     mov   a,#$18
0fc4: 2f 0a     bra   $0fd0
0fc6: 60        clrc
0fc7: 95 f0 02  adc   a,$02f0+x
0fca: 68 e8     cmp   a,#$e8
0fcc: b0 02     bcs   $0fd0
0fce: e8 18     mov   a,#$18
0fd0: d5 f0 02  mov   $02f0+x,a
0fd3: 6f        ret

; subcmd 02
0fd4: fd        mov   y,a
0fd5: 30 0a     bmi   $0fe1
0fd7: 60        clrc
0fd8: 95 01 03  adc   a,$0301+x
0fdb: 90 19     bcc   $0ff6
0fdd: e8 ff     mov   a,#$ff
0fdf: 2f 15     bra   $0ff6
0fe1: 48 ff     eor   a,#$ff
0fe3: bc        inc   a
0fe4: 2d        push  a
0fe5: f5 01 03  mov   a,$0301+x
0fe8: fd        mov   y,a
0fe9: ae        pop   a
0fea: d5 01 03  mov   $0301+x,a
0fed: dd        mov   a,y
0fee: 80        setc
0fef: b5 01 03  sbc   a,$0301+x
0ff2: b0 02     bcs   $0ff6
0ff4: e8 00     mov   a,#$00
0ff6: d5 01 03  mov   $0301+x,a
0ff9: e8 00     mov   a,#$00
0ffb: d5 00 03  mov   $0300+x,a
0ffe: 6f        ret

; subcmd 03
0fff: e8 01     mov   a,#$01
1001: d5 19 05  mov   $0519+x,a
1004: 6f        ret

; subcmd 04
1005: e8 00     mov   a,#$00
1007: d5 19 05  mov   $0519+x,a
100a: 6f        ret

100b: 4d        push  x
100c: 7d        mov   a,x
100d: 5c        lsr   a
100e: 5d        mov   x,a
100f: f5 1f 10  mov   a,$101f+x
1012: c4 2c     mov   $2c,a
1014: f5 27 10  mov   a,$1027+x
1017: c4 2d     mov   $2d,a
1019: f5 00 05  mov   a,$0500+x
101c: fd        mov   y,a
101d: ce        pop   x
101e: 6f        ret

101f: 80        setc
1020: 90 a0     bcc   $0fc2
1022: b0 c0     bcs   $0fe4
1024: d0 e0     bne   $1006
1026: f0 04     beq   $102c
1028: 04 04     or    a,$04
102a: 04 04     or    a,$04
102c: 04 04     or    a,$04
102e: 04 f4     or    a,$f4
1030: 90 f0     bcc   $1022
1032: 09 e8 00  or    ($00),($e8)
1035: 8d 03     mov   y,#$03
1037: 9b 90     dec   $90+x
1039: 3f c2 10  call  $10c2
103c: fb c1     mov   y,$c1+x
103e: f0 23     beq   $1063
1040: f5 e0 02  mov   a,$02e0+x
1043: de c0 1b  cbne  $c0+x,$1061
1046: 09 47 5e  or    ($5e),($47)
1049: f5 d0 02  mov   a,$02d0+x
104c: 10 07     bpl   $1055
104e: fc        inc   y
104f: d0 04     bne   $1055
1051: e8 80     mov   a,#$80
1053: 2f 04     bra   $1059
1055: 60        clrc
1056: 95 d1 02  adc   a,$02d1+x
1059: d5 d0 02  mov   $02d0+x,a
105c: 3f 68 12  call  $1268
105f: 2f 07     bra   $1068
1061: bb c0     inc   $c0+x
1063: e8 ff     mov   a,#$ff
1065: 3f 73 12  call  $1273
1068: f4 91     mov   a,$91+x
106a: f0 09     beq   $1075
106c: e8 30     mov   a,#$30
106e: 8d 03     mov   y,#$03
1070: 9b 91     dec   $91+x
1072: 3f c2 10  call  $10c2
1075: e4 47     mov   a,$47
1077: 24 5e     and   a,$5e
1079: f0 46     beq   $10c1
107b: f5 31 03  mov   a,$0331+x
107e: fd        mov   y,a
107f: f5 30 03  mov   a,$0330+x
1082: da 10     movw  $10,ya
1084: 7d        mov   a,x
1085: 9f        xcn   a
1086: 5c        lsr   a
1087: c4 12     mov   $12,a
1089: eb 11     mov   y,$11
108b: f6 86 12  mov   a,$1286+y
108e: 80        setc
108f: b6 85 12  sbc   a,$1285+y
1092: eb 10     mov   y,$10
1094: cf        mul   ya
1095: dd        mov   a,y
1096: eb 11     mov   y,$11
1098: 60        clrc
1099: 96 85 12  adc   a,$1285+y
109c: fd        mov   y,a
109d: f5 21 03  mov   a,$0321+x
10a0: cf        mul   ya
10a1: f5 51 03  mov   a,$0351+x
10a4: 1c        asl   a
10a5: 13 12 01  bbc0  $12,$10a9
10a8: 1c        asl   a
10a9: dd        mov   a,y
10aa: 90 03     bcc   $10af
10ac: 48 ff     eor   a,#$ff
10ae: bc        inc   a
10af: eb 12     mov   y,$12
10b1: 3f 4c 0a  call  $0a4c
10b4: 8d 14     mov   y,#$14
10b6: e8 00     mov   a,#$00
10b8: 9a 10     subw  ya,$10
10ba: da 10     movw  $10,ya
10bc: ab 12     inc   $12
10be: 33 12 c8  bbc1  $12,$1089
10c1: 6f        ret

10c2: 09 47 5e  or    ($5e),($47)
10c5: da 14     movw  $14,ya
10c7: da 16     movw  $16,ya
10c9: 4d        push  x
10ca: ee        pop   y
10cb: 60        clrc
10cc: d0 0a     bne   $10d8
10ce: 98 1f 16  adc   $16,#$1f
10d1: e8 00     mov   a,#$00
10d3: d7 14     mov   ($14)+y,a
10d5: fc        inc   y
10d6: 2f 09     bra   $10e1
10d8: 98 10 16  adc   $16,#$10
10db: 3f df 10  call  $10df
10de: fc        inc   y
10df: f7 14     mov   a,($14)+y
10e1: 97 16     adc   a,($16)+y
10e3: d7 14     mov   ($14)+y,a
10e5: 6f        ret

10e6: f4 71     mov   a,$71+x
10e8: d0 03     bne   $10ed
10ea: 5f 72 11  jmp   $1172

10ed: 9b 71     dec   $71+x
10ef: f0 05     beq   $10f6
10f1: e8 02     mov   a,#$02
10f3: de 70 7c  cbne  $70+x,$1172
10f6: f4 80     mov   a,$80+x
10f8: c4 17     mov   $17,a
10fa: f4 30     mov   a,$30+x
10fc: fb 31     mov   y,$31+x
10fe: da 14     movw  $14,ya
1100: 8d 00     mov   y,#$00
1102: f7 14     mov   a,($14)+y
1104: f0 2c     beq   $1132
1106: 30 05     bmi   $110d
1108: fc        inc   y
1109: f7 14     mov   a,($14)+y
110b: 10 fb     bpl   $1108
110d: 68 c8     cmp   a,#$c8
110f: f0 61     beq   $1172
1111: 68 ef     cmp   a,#$ef
1113: f0 34     beq   $1149
1115: 68 fb     cmp   a,#$fb
1117: f0 4d     beq   $1166
1119: 68 fc     cmp   a,#$fc
111b: f0 49     beq   $1166
111d: 68 df     cmp   a,#$df
111f: f0 45     beq   $1166
1121: 68 fe     cmp   a,#$fe
1123: f0 41     beq   $1166
1125: 68 de     cmp   a,#$de
1127: 90 3d     bcc   $1166
1129: 6d        push  y
112a: fd        mov   y,a
112b: ae        pop   a
112c: 96 0f 0e  adc   a,$0e0f+y
112f: fd        mov   y,a
1130: 2f d0     bra   $1102
1132: e4 17     mov   a,$17
1134: f0 30     beq   $1166
1136: 8b 17     dec   $17
1138: d0 0a     bne   $1144
113a: f5 31 02  mov   a,$0231+x
113d: 2d        push  a
113e: f5 30 02  mov   a,$0230+x
1141: ee        pop   y
1142: 2f ba     bra   $10fe
1144: 3f 48 f8  call  $f848
1147: 2f b5     bra   $10fe
1149: 3f 51 f8  call  $f851
114c: 2f b0     bra   $10fe
114e: fc        inc   y
114f: f7 14     mov   a,($14)+y
1151: d0 05     bne   $1158
1153: 3f 5b f8  call  $f85b
1156: 2f a6     bra   $10fe
1158: fc        inc   y
1159: fc        inc   y
115a: 2f a6     bra   $1102
115c: 3f 65 f8  call  $f865
115f: 2f 9d     bra   $10fe
1161: 3f 71 f8  call  $f871
1164: 2f 98     bra   $10fe
1166: f5 19 05  mov   a,$0519+x
1169: d0 07     bne   $1172
116b: e4 47     mov   a,$47
116d: 8d 5c     mov   y,#$5c
116f: 3f 4c 0a  call  $0a4c
1172: f2 13     clr7  $13
1174: f4 a0     mov   a,$a0+x
1176: f0 13     beq   $118b
1178: f4 a1     mov   a,$a1+x
117a: f0 04     beq   $1180
117c: 9b a1     dec   $a1+x
117e: 2f 0b     bra   $118b
1180: e2 13     set7  $13
1182: e8 60     mov   a,#$60
1184: 8d 03     mov   y,#$03
1186: 9b a0     dec   $a0+x
1188: 3f c5 10  call  $10c5
118b: 3f 84 0e  call  $0e84
118e: f4 b1     mov   a,$b1+x
1190: f0 4c     beq   $11de
1192: f5 b0 02  mov   a,$02b0+x
1195: de b0 44  cbne  $b0+x,$11dc
1198: f5 00 01  mov   a,$0100+x
119b: 75 b1 02  cmp   a,$02b1+x
119e: d0 05     bne   $11a5
11a0: f5 c1 02  mov   a,$02c1+x
11a3: 2f 0d     bra   $11b2
11a5: 40        setp
11a6: bb 00     inc   $00+x
11a8: 20        clrp
11a9: fd        mov   y,a
11aa: f0 02     beq   $11ae
11ac: f4 b1     mov   a,$b1+x
11ae: 60        clrc
11af: 95 c0 02  adc   a,$02c0+x
11b2: d4 b1     mov   $b1+x,a
11b4: f5 a0 02  mov   a,$02a0+x
11b7: 60        clrc
11b8: 95 a1 02  adc   a,$02a1+x
11bb: d5 a0 02  mov   $02a0+x,a
11be: c4 12     mov   $12,a
11c0: 1c        asl   a
11c1: 1c        asl   a
11c2: 90 02     bcc   $11c6
11c4: 48 ff     eor   a,#$ff
11c6: fd        mov   y,a
11c7: f4 b1     mov   a,$b1+x
11c9: 68 f1     cmp   a,#$f1
11cb: 90 05     bcc   $11d2
11cd: 28 0f     and   a,#$0f
11cf: cf        mul   ya
11d0: 2f 04     bra   $11d6
11d2: cf        mul   ya
11d3: dd        mov   a,y
11d4: 8d 00     mov   y,#$00
11d6: 3f 53 12  call  $1253
11d9: 5f 60 09  jmp   $0960

11dc: bb b0     inc   $b0+x
11de: e3 13 f8  bbs7  $13,$11d9
11e1: 6f        ret

11e2: f2 13     clr7  $13
11e4: f4 c1     mov   a,$c1+x
11e6: f0 09     beq   $11f1
11e8: f5 e0 02  mov   a,$02e0+x
11eb: de c0 03  cbne  $c0+x,$11f1
11ee: 3f 5b 12  call  $125b
11f1: f5 31 03  mov   a,$0331+x
11f4: fd        mov   y,a
11f5: f5 30 03  mov   a,$0330+x
11f8: da 10     movw  $10,ya
11fa: f4 91     mov   a,$91+x
11fc: f0 0a     beq   $1208
11fe: f5 41 03  mov   a,$0341+x
1201: fd        mov   y,a
1202: f5 40 03  mov   a,$0340+x
1205: 3f 3d 12  call  $123d
1208: f3 13 03  bbc7  $13,$120e
120b: 3f 84 10  call  $1084
120e: f2 13     clr7  $13
1210: 3f 84 0e  call  $0e84
1213: f4 a0     mov   a,$a0+x
1215: f0 0e     beq   $1225
1217: f4 a1     mov   a,$a1+x
1219: d0 0a     bne   $1225
121b: f5 71 03  mov   a,$0371+x
121e: fd        mov   y,a
121f: f5 70 03  mov   a,$0370+x
1222: 3f 3d 12  call  $123d
1225: f4 b1     mov   a,$b1+x
1227: f0 b5     beq   $11de
1229: f5 b0 02  mov   a,$02b0+x
122c: de b0 af  cbne  $b0+x,$11de
122f: eb 51     mov   y,$51
1231: f5 a1 02  mov   a,$02a1+x
1234: cf        mul   ya
1235: dd        mov   a,y
1236: 60        clrc
1237: 95 a0 02  adc   a,$02a0+x
123a: 5f be 11  jmp   $11be

123d: e2 13     set7  $13
123f: cb 12     mov   $12,y
1241: 3f a1 0e  call  $0ea1
1244: 6d        push  y
1245: eb 51     mov   y,$51
1247: cf        mul   ya
1248: cb 14     mov   $14,y
124a: 8f 00 15  mov   $15,#$00
124d: eb 51     mov   y,$51
124f: ae        pop   a
1250: cf        mul   ya
1251: 7a 14     addw  ya,$14
1253: 3f a1 0e  call  $0ea1
1256: 7a 10     addw  ya,$10
1258: da 10     movw  $10,ya
125a: 6f        ret

125b: e2 13     set7  $13
125d: eb 51     mov   y,$51
125f: f5 d1 02  mov   a,$02d1+x
1262: cf        mul   ya
1263: dd        mov   a,y
1264: 60        clrc
1265: 95 d0 02  adc   a,$02d0+x
1268: 1c        asl   a
1269: 90 02     bcc   $126d
126b: 48 ff     eor   a,#$ff
126d: fb c1     mov   y,$c1+x
126f: cf        mul   ya
1270: dd        mov   a,y
1271: 48 ff     eor   a,#$ff
1273: eb 59     mov   y,$59
1275: cf        mul   ya
1276: f5 10 02  mov   a,$0210+x
1279: cf        mul   ya
127a: f5 01 03  mov   a,$0301+x
127d: cf        mul   ya
127e: dd        mov   a,y
127f: cf        mul   ya
1280: dd        mov   a,y
1281: d5 21 03  mov   $0321+x,a
1284: 6f        ret

; pan table
1285: db $00,$01,$03,$07,$0d,$15,$1e,$29
128d: db $34,$42,$51,$5e,$67,$6e,$73,$77
1295: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
129a: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
12a2: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
12aa: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
12b2: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp rgs
12ba: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
12c4: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
12ce: dw $0756
12d0: dw $085f
12d2: dw $08de
12d4: dw $0965
12d6: dw $09f4
12d8: dw $0a8c
12da: dw $0b2c
12dc: dw $0bd6
12de: dw $0c8b
12e0: dw $0d4a
12e2: dw $0e14
12e4: dw $0eea
12e6: dw $0fcd
12e8: dw $10be
12ea: dw $0fcd

12ec: e8 00     mov   a,#$00
12ee: d5 30 00  mov   $0030+x,a
12f1: 1d        dec   x
12f2: 10 fa     bpl   $12ee
12f4: 3f b8 13  call  $13b8
12f7: e8 aa     mov   a,#$aa
12f9: c4 f4     mov   $f4,a
12fb: e8 bb     mov   a,#$bb
12fd: c4 f5     mov   $f5,a
12ff: e4 f4     mov   a,$f4
1301: 68 cc     cmp   a,#$cc
1303: d0 fa     bne   $12ff
1305: 2f 1b     bra   $1322
1307: eb f4     mov   y,$f4
1309: d0 fc     bne   $1307
130b: 7e f4     cmp   y,$f4
130d: d0 0d     bne   $131c
130f: e4 f5     mov   a,$f5
1311: cb f4     mov   $f4,y
1313: d7 14     mov   ($14)+y,a
1315: fc        inc   y
1316: d0 f3     bne   $130b
1318: ab 15     inc   $15
131a: 2f ef     bra   $130b
131c: 10 ed     bpl   $130b
131e: 7e f4     cmp   y,$f4
1320: 10 e9     bpl   $130b
1322: e4 f6     mov   a,$f6
1324: eb f7     mov   y,$f7
1326: da 14     movw  $14,ya
1328: eb f4     mov   y,$f4
132a: e4 f5     mov   a,$f5
132c: cb f4     mov   $f4,y
132e: d0 d7     bne   $1307
1330: cd 31     mov   x,#$31
1332: d8 f1     mov   $f1,x
1334: 6f        ret

1335: e4 00     mov   a,$00
1337: 64 08     cmp   a,$08
1339: f0 0d     beq   $1348
133b: e8 fe     mov   a,#$fe
133d: 64 00     cmp   a,$00
133f: d0 07     bne   $1348
1341: e4 00     mov   a,$00
1343: c4 08     mov   $08,a
1345: 3f 49 13  call  $1349
1348: 6f        ret

1349: cd 01     mov   x,#$01
134b: 3f e6 08  call  $08e6
134e: c4 5a     mov   $5a,a
1350: e8 00     mov   a,#$00
1352: c4 5b     mov   $5b,a
1354: 80        setc
1355: a4 59     sbc   a,$59
1357: f8 5a     mov   x,$5a
1359: 3f 8f 0e  call  $0e8f
135c: da 5c     movw  $5c,ya
135e: e8 01     mov   a,#$01
1360: c5 18 05  mov   $0518,a
1363: 6f        ret

1364: e5 18 05  mov   a,$0518
1367: f0 15     beq   $137e
1369: e4 5a     mov   a,$5a
136b: d0 11     bne   $137e
136d: e8 00     mov   a,#$00
136f: c5 18 05  mov   $0518,a
1372: 3f b8 13  call  $13b8
1375: e8 00     mov   a,#$00
1377: cd 0f     mov   x,#$0f
1379: d4 30     mov   $30+x,a
137b: 1d        dec   x
137c: 10 fb     bpl   $1379
137e: 6f        ret

137f: 8d 0f     mov   y,#$0f
1381: 8f 80 47  mov   $47,#$80
1384: e8 00     mov   a,#$00
1386: 2d        push  a
1387: f6 30 00  mov   a,$0030+y
138a: ae        pop   a
138b: f0 02     beq   $138f
138d: 04 47     or    a,$47
138f: 4b 47     lsr   $47
1391: dc        dec   y
1392: dc        dec   y
1393: 10 f1     bpl   $1386
1395: 8d 00     mov   y,#$00
1397: 2d        push  a
1398: 28 2f     and   a,#$2f
139a: ae        pop   a
139b: f0 01     beq   $139e
139d: fc        inc   y
139e: cc 29 05  mov   $0529,y
13a1: cc f6 00  mov   $00f6,y
13a4: 8d 00     mov   y,#$00
13a6: 28 c0     and   a,#$c0
13a8: f0 01     beq   $13ab
13aa: fc        inc   y
13ab: cc 2a 05  mov   $052a,y
13ae: cc f7 00  mov   $00f7,y
13b1: 6f        ret

13b2: 3f b8 13  call  $13b8
13b5: 5f 7e f8  jmp   $f87e

13b8: e8 ff     mov   a,#$ff
13ba: 8d 5c     mov   y,#$5c
13bc: 3f 54 0a  call  $0a54
13bf: 8d 09     mov   y,#$09
13c1: 2d        push  a
13c2: ae        pop   a
13c3: fe fc     dbnz  y,$13c1
13c5: e8 00     mov   a,#$00
13c7: 8d 5c     mov   y,#$5c
13c9: 3f 54 0a  call  $0a54
13cc: 6f        ret

; note dur%'s
5000: db $23,$42,$61,$80,$9f,$be,$dd,$ff
; per-note velocity values
5008: db $0c,$1c,$2c,$3c,$4c,$5c,$6c,$7c
5010: db $8c,$9c,$ac,$bc,$cc,$dc,$ec,$fc