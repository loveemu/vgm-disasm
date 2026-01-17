0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: 3f 24 12  call  $1224
0807: 3f db 09  call  $09db
080a: e4 1b     mov   a,$1b
080c: d0 63     bne   $0871
080e: 8d 0a     mov   y,#$0a
0810: ad 05     cmp   y,#$05
0812: f0 07     beq   $081b
0814: b0 08     bcs   $081e
0816: 69 4d 4c  cmp   ($4c),($4d)
0819: d0 11     bne   $082c
081b: e3 4c 0e  bbs7  $4c,$082c
081e: f6 97 17  mov   a,$1797+y
0821: c5 f2 00  mov   $00f2,a
0824: f6 a1 17  mov   a,$17a1+y
0827: 5d        mov   x,a
0828: e6        mov   a,(x)
0829: c5 f3 00  mov   $00f3,a
082c: fe e2     dbnz  y,$0810
082e: cb 45     mov   $45,y
0830: cb 46     mov   $46,y
0832: d2 48     clr6  $48
0834: ec fd 00  mov   y,$00fd
0837: f0 fb     beq   $0834
0839: e8 00     mov   a,#$00
083b: c4 1d     mov   $1d,a
083d: c4 5e     mov   $5e,a
083f: c4 1e     mov   $1e,a
0841: e4 1c     mov   a,$1c
0843: f0 0c     beq   $0851
0845: 6d        push  y
0846: c4 1f     mov   $1f,a
0848: 3f 1c 09  call  $091c
084b: ee        pop   y
084c: e4 1c     mov   a,$1c
084e: c5 f7 00  mov   $00f7,a
0851: 6d        push  y
0852: e8 20     mov   a,#$20
0854: cf        mul   ya
0855: 60        clrc
0856: 84 43     adc   a,$43
0858: c4 43     mov   $43,a
085a: 90 07     bcc   $0863
085c: 69 4d 4c  cmp   ($4c),($4d)
085f: f0 02     beq   $0863
0861: ab 4c     inc   $4c
0863: 3f 64 09  call  $0964
0866: e4 53     mov   a,$53
0868: ee        pop   y
0869: cf        mul   ya
086a: 60        clrc
086b: 84 51     adc   a,$51
086d: c4 51     mov   $51,a
086f: 90 0d     bcc   $087e
0871: 3f 69 0b  call  $0b69
0874: fa 1a 1f  mov   ($1f),($1a)
0877: 3f a3 08  call  $08a3
087a: e4 21     mov   a,$21
087c: d0 1f     bne   $089d
087e: e4 1a     mov   a,$1a
0880: 04 1c     or    a,$1c
0882: f0 16     beq   $089a
0884: c4 1f     mov   $1f,a
0886: cd 00     mov   x,#$00
0888: e8 01     mov   a,#$01
088a: c4 47     mov   $47,a
088c: 24 1f     and   a,$1f
088e: f0 03     beq   $0893
0890: 3f 70 0c  call  $0c70
0893: 3d        inc   x
0894: 3d        inc   x
0895: e4 47     mov   a,$47
0897: 1c        asl   a
0898: d0 f0     bne   $088a
089a: 5f 0a 08  jmp   $080a

089d: 3f 33 0a  call  $0a33
08a0: 5f 0a 08  jmp   $080a

08a3: 8d 00     mov   y,#$00
08a5: cb 21     mov   $21,y
08a7: cd 00     mov   x,#$00
08a9: e8 01     mov   a,#$01
08ab: 8f 00 23  mov   $23,#$00
08ae: d8 44     mov   $44,x
08b0: c4 47     mov   $47,a
08b2: 24 1f     and   a,$1f
08b4: f0 21     beq   $08d7
08b6: 9b 70     dec   $70+x
08b8: f0 11     beq   $08cb
08ba: e4 1b     mov   a,$1b
08bc: d0 19     bne   $08d7
08be: f4 71     mov   a,$71+x
08c0: f0 0f     beq   $08d1
08c2: 9b 71     dec   $71+x
08c4: d0 0b     bne   $08d1
08c6: 3f a4 0b  call  $0ba4
08c9: 2f 06     bra   $08d1
08cb: 3f a8 0a  call  $0aa8
08ce: 3f 14 0b  call  $0b14
08d1: 3f 09 0c  call  $0c09
08d4: 3f 4b 0d  call  $0d4b
08d7: 3d        inc   x
08d8: 3d        inc   x
08d9: e4 47     mov   a,$47
08db: 1c        asl   a
08dc: f0 3a     beq   $0918
08de: 2d        push  a
08df: 24 1c     and   a,$1c
08e1: 24 1a     and   a,$1a
08e3: ae        pop   a
08e4: f0 c5     beq   $08ab
08e6: 8f 01 23  mov   $23,#$01
08e9: d8 44     mov   $44,x
08eb: c4 47     mov   $47,a
08ed: 3f 29 15  call  $1529
08f0: 3f 5b 14  call  $145b
08f3: 9b 70     dec   $70+x
08f5: f0 0d     beq   $0904
08f7: f4 71     mov   a,$71+x
08f9: f0 0f     beq   $090a
08fb: 9b 71     dec   $71+x
08fd: d0 0b     bne   $090a
08ff: 3f a4 0b  call  $0ba4
0902: 2f 06     bra   $090a
0904: 3f a8 0a  call  $0aa8
0907: 3f 14 0b  call  $0b14
090a: 3f 09 0c  call  $0c09
090d: 3f 4b 0d  call  $0d4b
0910: 3f 8d 13  call  $138d
0913: 3f f7 15  call  $15f7
0916: 2f bf     bra   $08d7
0918: 8f 00 23  mov   $23,#$00
091b: 6f        ret

091c: 8d 00     mov   y,#$00
091e: cb 21     mov   $21,y
0920: 8f 00 23  mov   $23,#$00
0923: cd 0c     mov   x,#$0c
0925: e8 40     mov   a,#$40
0927: d8 44     mov   $44,x
0929: c4 47     mov   $47,a
092b: 24 1f     and   a,$1f
092d: f0 2d     beq   $095c
092f: f5 90 03  mov   a,$0390+x
0932: 60        clrc
0933: 95 91 03  adc   a,$0391+x
0936: d5 91 03  mov   $0391+x,a
0939: 90 21     bcc   $095c
093b: 9b 70     dec   $70+x
093d: f0 11     beq   $0950
093f: e4 1b     mov   a,$1b
0941: d0 19     bne   $095c
0943: f4 71     mov   a,$71+x
0945: f0 0f     beq   $0956
0947: 9b 71     dec   $71+x
0949: d0 0b     bne   $0956
094b: 3f a4 0b  call  $0ba4
094e: 2f 06     bra   $0956
0950: 3f a8 0a  call  $0aa8
0953: 3f 14 0b  call  $0b14
0956: 3f 09 0c  call  $0c09
0959: 3f 4b 0d  call  $0d4b
095c: 3d        inc   x
095d: 3d        inc   x
095e: e4 47     mov   a,$47
0960: 1c        asl   a
0961: d0 c4     bne   $0927
0963: 6f        ret

; load song
0964: cd 00     mov   x,#$00
0966: 3f 96 10  call  $1096
0969: eb 04     mov   y,$04
096b: c4 04     mov   $04,a
096d: 68 f0     cmp   a,#$f0
096f: f0 35     beq   $09a6
0971: 68 f2     cmp   a,#$f2
0973: f0 4c     beq   $09c1
0975: 68 fc     cmp   a,#$fc
0977: f0 4e     beq   $09c7
0979: 68 fe     cmp   a,#$fe
097b: f0 47     beq   $09c4
097d: 68 ff     cmp   a,#$ff
097f: f0 4d     beq   $09ce
0981: 68 09     cmp   a,#$09
0983: b0 3b     bcs   $09c0
0985: 7e 00     cmp   y,$00
0987: f0 37     beq   $09c0
0989: c4 08     mov   $08,a
098b: c5 f4 00  mov   $00f4,a
098e: 1c        asl   a
098f: f0 15     beq   $09a6
0991: 5d        mov   x,a
0992: f5 eb 1a  mov   a,$1aeb+x
0995: fd        mov   y,a
0996: f5 ea 1a  mov   a,$1aea+x
0999: da 40     movw  $40,ya
099b: 3f db 09  call  $09db
099e: 3f 33 0a  call  $0a33
09a1: e8 ff     mov   a,#$ff
09a3: c4 46     mov   $46,a
09a5: 6f        ret

09a6: e4 1a     mov   a,$1a
09a8: 04 1c     or    a,$1c
09aa: 0e 46 00  tset1 $0046
09ad: e8 00     mov   a,#$00
09af: c4 1a     mov   $1a,a
09b1: c4 1c     mov   $1c,a
09b3: c4 4a     mov   $4a,a
09b5: fd        mov   y,a
09b6: da 60     movw  $60,ya
09b8: da 62     movw  $62,ya
09ba: e8 60     mov   a,#$60
09bc: 04 48     or    a,$48
09be: c4 48     mov   $48,a
09c0: 6f        ret

09c1: 5f 3e 13  jmp   $133e

09c4: 5f 62 12  jmp   $1262

09c7: e5 f6 00  mov   a,$00f6
09ca: c5 64 07  mov   $0764,a
09cd: 6f        ret

09ce: 3f d8 11  call  $11d8
09d1: c4 04     mov   $04,a
09d3: c5 f5 00  mov   $00f5,a
09d6: c5 f6 00  mov   $00f6,a
09d9: 2f ae     bra   $0989
09db: cd 0e     mov   x,#$0e
09dd: 8f 80 47  mov   $47,#$80
09e0: 3f 07 0a  call  $0a07
09e3: 1d        dec   x
09e4: 1d        dec   x
09e5: 4b 47     lsr   $47
09e7: d0 f7     bne   $09e0
09e9: e8 00     mov   a,#$00
09eb: c4 5a     mov   $5a,a
09ed: c4 68     mov   $68,a
09ef: c4 54     mov   $54,a
09f1: c4 50     mov   $50,a
09f3: c4 42     mov   $42,a
09f5: c4 5f     mov   $5f,a
09f7: c5 63 07  mov   $0763,a
09fa: c4 46     mov   $46,a
09fc: c4 4a     mov   $4a,a
09fe: fd        mov   y,a
09ff: da 60     movw  $60,ya
0a01: da 62     movw  $62,ya
0a03: 8f 20 53  mov   $53,#$20
0a06: 6f        ret

0a07: e8 ff     mov   a,#$ff
0a09: d5 01 03  mov   $0301+x,a
0a0c: d5 10 02  mov   $0210+x,a
0a0f: e8 0a     mov   a,#$0a
0a11: 3f 00 0f  call  $0f00
0a14: e8 00     mov   a,#$00
0a16: d5 00 03  mov   $0300+x,a
0a19: d5 d0 00  mov   $00d0+x,a
0a1c: d5 81 03  mov   $0381+x,a
0a1f: d5 f0 02  mov   $02f0+x,a
0a22: d5 80 02  mov   $0280+x,a
0a25: d5 a0 03  mov   $03a0+x,a
0a28: d4 b1     mov   $b1+x,a
0a2a: d4 c1     mov   $c1+x,a
0a2c: d5 01 02  mov   $0201+x,a
0a2f: d5 90 00  mov   $0090+x,a
0a32: 6f        ret

0a33: 3f 18 0e  call  $0e18
0a36: d0 25     bne   $0a5d
0a38: fd        mov   y,a
0a39: d0 03     bne   $0a3e
0a3b: 5f 89 09  jmp   $0989

0a3e: 68 80     cmp   a,#$80
0a40: f0 06     beq   $0a48
0a42: 68 81     cmp   a,#$81
0a44: d0 06     bne   $0a4c
0a46: e8 00     mov   a,#$00
0a48: c4 1b     mov   $1b,a
0a4a: 2f e7     bra   $0a33
0a4c: 8b 42     dec   $42
0a4e: 10 02     bpl   $0a52
0a50: c4 42     mov   $42,a
0a52: 3f 18 0e  call  $0e18
0a55: f8 42     mov   x,$42
0a57: f0 da     beq   $0a33
0a59: da 40     movw  $40,ya
0a5b: 2f d6     bra   $0a33
0a5d: da 16     movw  $16,ya
0a5f: 8d 00     mov   y,#$00
0a61: cb 1a     mov   $1a,y
0a63: e8 01     mov   a,#$01
0a65: c4 47     mov   $47,a
0a67: f7 16     mov   a,($16)+y
0a69: d6 30 00  mov   $0030+y,a
0a6c: fc        inc   y
0a6d: f7 16     mov   a,($16)+y
0a6f: d6 30 00  mov   $0030+y,a
0a72: dc        dec   y
0a73: 5d        mov   x,a
0a74: f0 15     beq   $0a8b
0a76: 09 47 1a  or    ($1a),($47)
0a79: 09 47 46  or    ($46),($47)
0a7c: f6 d0 00  mov   a,$00d0+y
0a7f: 5d        mov   x,a
0a80: d0 09     bne   $0a8b
0a82: 6d        push  y
0a83: dd        mov   a,y
0a84: 5d        mov   x,a
0a85: e8 00     mov   a,#$00
0a87: 3f a7 0e  call  $0ea7
0a8a: ee        pop   y
0a8b: cd 00     mov   x,#$00
0a8d: d9 80     mov   $80+y,x
0a8f: d9 90     mov   $90+y,x
0a91: d9 91     mov   $91+y,x
0a93: 3d        inc   x
0a94: d9 70     mov   $70+y,x
0a96: fc        inc   y
0a97: fc        inc   y
0a98: e4 47     mov   a,$47
0a9a: 1c        asl   a
0a9b: f0 06     beq   $0aa3
0a9d: 2d        push  a
0a9e: 24 1c     and   a,$1c
0aa0: ae        pop   a
0aa1: f0 c2     beq   $0a65
0aa3: 6f        ret

0aa4: 09 47 21  or    ($21),($47)
0aa7: 6f        ret

0aa8: 3f 3c 0e  call  $0e3c
0aab: d0 17     bne   $0ac4
0aad: f4 80     mov   a,$80+x
0aaf: f0 f3     beq   $0aa4
0ab1: 3f 1b 10  call  $101b
0ab4: 9b 80     dec   $80+x
0ab6: d0 f0     bne   $0aa8
0ab8: f5 30 02  mov   a,$0230+x
0abb: d4 30     mov   $30+x,a
0abd: f5 31 02  mov   a,$0231+x
0ac0: d4 31     mov   $31+x,a
0ac2: 2f e4     bra   $0aa8
0ac4: 30 20     bmi   $0ae6
0ac6: d5 00 02  mov   $0200+x,a
0ac9: 3f 3c 0e  call  $0e3c
0acc: 30 18     bmi   $0ae6
0ace: 2d        push  a
0acf: 9f        xcn   a
0ad0: 28 07     and   a,#$07
0ad2: fd        mov   y,a
0ad3: f6 00 6f  mov   a,$6f00+y
0ad6: d5 01 02  mov   $0201+x,a
0ad9: ae        pop   a
0ada: 28 0f     and   a,#$0f
0adc: fd        mov   y,a
0add: f6 08 6f  mov   a,$6f08+y
0ae0: d5 10 02  mov   $0210+x,a
0ae3: 3f 3c 0e  call  $0e3c
0ae6: 68 e0     cmp   a,#$e0
0ae8: 90 0c     bcc   $0af6
0aea: 68 fb     cmp   a,#$fb
0aec: f0 05     beq   $0af3
0aee: 3f 26 0e  call  $0e26
0af1: 2f b5     bra   $0aa8
0af3: 5f 10 13  jmp   $1310

0af6: f5 a0 03  mov   a,$03a0+x
0af9: 04 1b     or    a,$1b
0afb: d0 08     bne   $0b05
0afd: e4 23     mov   a,$23
0aff: d0 04     bne   $0b05
0b01: dd        mov   a,y
0b02: 3f a7 10  call  $10a7
0b05: f5 00 02  mov   a,$0200+x
0b08: d4 70     mov   $70+x,a
0b0a: fd        mov   y,a
0b0b: f5 01 02  mov   a,$0201+x
0b0e: bc        inc   a
0b0f: cf        mul   ya
0b10: dd        mov   a,y
0b11: d4 71     mov   $71+x,a
0b13: 6f        ret

0b14: f4 a0     mov   a,$a0+x
0b16: d0 33     bne   $0b4b
0b18: e7 30     mov   a,($30+x)
0b1a: 68 f9     cmp   a,#$f9
0b1c: d0 2d     bne   $0b4b
0b1e: 3f 3e 0e  call  $0e3e
0b21: 3f 3c 0e  call  $0e3c

; vcmd f9 - pitch slide
0b24: d4 a1     mov   $a1+x,a
0b26: 3f 3c 0e  call  $0e3c
0b29: d4 a0     mov   $a0+x,a
0b2b: 3f 3c 0e  call  $0e3c
0b2e: 60        clrc
0b2f: 84 50     adc   a,$50
0b31: 95 f0 02  adc   a,$02f0+x
0b34: 28 7f     and   a,#$7f
0b36: d5 80 03  mov   $0380+x,a
0b39: 80        setc
0b3a: b5 61 03  sbc   a,$0361+x
0b3d: fb a0     mov   y,$a0+x
0b3f: 6d        push  y
0b40: ce        pop   x
0b41: 3f 4c 0b  call  $0b4c
0b44: d5 70 03  mov   $0370+x,a
0b47: dd        mov   a,y
0b48: d5 71 03  mov   $0371+x,a
0b4b: 6f        ret

0b4c: ed        notc
0b4d: 6b 12     ror   $12
0b4f: 10 03     bpl   $0b54
0b51: 48 ff     eor   a,#$ff
0b53: bc        inc   a
0b54: 8d 00     mov   y,#$00
0b56: 9e        div   ya,x
0b57: 2d        push  a
0b58: e8 00     mov   a,#$00
0b5a: 9e        div   ya,x
0b5b: ee        pop   y
0b5c: f8 44     mov   x,$44
0b5e: f3 12 07  bbc7  $12,$0b68
0b61: da 14     movw  $14,ya
0b63: e8 00     mov   a,#$00
0b65: fd        mov   y,a
0b66: 9a 14     subw  ya,$14
0b68: 6f        ret

0b69: e4 54     mov   a,$54
0b6b: f0 0b     beq   $0b78
0b6d: ba 56     movw  ya,$56
0b6f: 7a 52     addw  ya,$52
0b71: 6e 54 02  dbnz  $54,$0b76
0b74: ba 54     movw  ya,$54
0b76: da 52     movw  $52,ya
0b78: e4 68     mov   a,$68
0b7a: f0 15     beq   $0b91
0b7c: ba 64     movw  ya,$64
0b7e: 7a 60     addw  ya,$60
0b80: da 60     movw  $60,ya
0b82: ba 66     movw  ya,$66
0b84: 7a 62     addw  ya,$62
0b86: 6e 68 06  dbnz  $68,$0b8f
0b89: ba 68     movw  ya,$68
0b8b: da 60     movw  $60,ya
0b8d: eb 6a     mov   y,$6a
0b8f: da 62     movw  $62,ya
0b91: e4 5a     mov   a,$5a
0b93: f0 0e     beq   $0ba3
0b95: ba 5c     movw  ya,$5c
0b97: 7a 58     addw  ya,$58
0b99: 6e 5a 02  dbnz  $5a,$0b9e
0b9c: ba 5a     movw  ya,$5a
0b9e: da 58     movw  $58,ya
0ba0: 8f ff 5e  mov   $5e,#$ff
0ba3: 6f        ret

0ba4: f4 30     mov   a,$30+x
0ba6: fb 31     mov   y,$31+x
0ba8: da 14     movw  $14,ya
0baa: 8d 00     mov   y,#$00
0bac: f7 14     mov   a,($14)+y
0bae: f0 26     beq   $0bd6
0bb0: 30 07     bmi   $0bb9
0bb2: fc        inc   y
0bb3: 30 45     bmi   $0bfa
0bb5: f7 14     mov   a,($14)+y
0bb7: 10 f9     bpl   $0bb2
0bb9: 68 c8     cmp   a,#$c8
0bbb: f0 4b     beq   $0c08
0bbd: 68 ef     cmp   a,#$ef
0bbf: f0 2e     beq   $0bef
0bc1: 68 e0     cmp   a,#$e0
0bc3: 90 35     bcc   $0bfa
0bc5: 6d        push  y
0bc6: a8 e0     sbc   a,#$e0
0bc8: c4 16     mov   $16,a
0bca: 1c        asl   a
0bcb: 84 16     adc   a,$16
0bcd: fd        mov   y,a
0bce: ae        pop   a
0bcf: 80        setc
0bd0: 96 48 0e  adc   a,$0e48+y
0bd3: fd        mov   y,a
0bd4: 2f d6     bra   $0bac
0bd6: f4 80     mov   a,$80+x
0bd8: f0 20     beq   $0bfa
0bda: 9c        dec   a
0bdb: d0 09     bne   $0be6
0bdd: f5 31 02  mov   a,$0231+x
0be0: fd        mov   y,a
0be1: f5 30 02  mov   a,$0230+x
0be4: 2f c2     bra   $0ba8
0be6: f5 41 02  mov   a,$0241+x
0be9: fd        mov   y,a
0bea: f5 40 02  mov   a,$0240+x
0bed: 2f b9     bra   $0ba8
0bef: fc        inc   y
0bf0: f7 14     mov   a,($14)+y
0bf2: 2d        push  a
0bf3: fc        inc   y
0bf4: f7 14     mov   a,($14)+y
0bf6: fd        mov   y,a
0bf7: ae        pop   a
0bf8: 2f ae     bra   $0ba8
0bfa: e4 23     mov   a,$23
0bfc: d0 0a     bne   $0c08
0bfe: e4 47     mov   a,$47
0c00: 8d 5c     mov   y,#$5c
0c02: 09 47 46  or    ($46),($47)
0c05: 5f 83 11  jmp   $1183

0c08: 6f        ret

0c09: f4 a0     mov   a,$a0+x
0c0b: f0 2c     beq   $0c39
0c0d: f4 a1     mov   a,$a1+x
0c0f: f0 04     beq   $0c15
0c11: 9b a1     dec   $a1+x
0c13: 2f 24     bra   $0c39
0c15: 09 47 1e  or    ($1e),($47)
0c18: 9b a0     dec   $a0+x
0c1a: d0 0a     bne   $0c26
0c1c: e8 00     mov   a,#$00
0c1e: d5 60 03  mov   $0360+x,a
0c21: f5 80 03  mov   a,$0380+x
0c24: 2f 10     bra   $0c36
0c26: 60        clrc
0c27: f5 60 03  mov   a,$0360+x
0c2a: 95 70 03  adc   a,$0370+x
0c2d: d5 60 03  mov   $0360+x,a
0c30: f5 61 03  mov   a,$0361+x
0c33: 95 71 03  adc   a,$0371+x
0c36: d5 61 03  mov   $0361+x,a
0c39: f4 b1     mov   a,$b1+x
0c3b: f0 32     beq   $0c6f
0c3d: f5 b0 02  mov   a,$02b0+x
0c40: de b0 2a  cbne  $b0+x,$0c6d
0c43: f5 00 01  mov   a,$0100+x
0c46: 75 b1 02  cmp   a,$02b1+x
0c49: d0 05     bne   $0c50
0c4b: f5 c1 02  mov   a,$02c1+x
0c4e: 2f 0d     bra   $0c5d
0c50: bc        inc   a
0c51: d5 00 01  mov   $0100+x,a
0c54: 9c        dec   a
0c55: f0 02     beq   $0c59
0c57: f4 b1     mov   a,$b1+x
0c59: 60        clrc
0c5a: 95 c0 02  adc   a,$02c0+x
0c5d: d4 b1     mov   $b1+x,a
0c5f: f5 a0 02  mov   a,$02a0+x
0c62: 60        clrc
0c63: 95 a1 02  adc   a,$02a1+x
0c66: d5 a0 02  mov   $02a0+x,a
0c69: 09 47 1e  or    ($1e),($47)
0c6c: 6f        ret

0c6d: bb b0     inc   $b0+x
0c6f: 6f        ret

0c70: f4 c1     mov   a,$c1+x
0c72: f0 09     beq   $0c7d
0c74: f5 e0 02  mov   a,$02e0+x
0c77: de c0 03  cbne  $c0+x,$0c7d
0c7a: 3f f6 0c  call  $0cf6
0c7d: f5 31 03  mov   a,$0331+x
0c80: fd        mov   y,a
0c81: f5 30 03  mov   a,$0330+x
0c84: da 10     movw  $10,ya
0c86: f4 91     mov   a,$91+x
0c88: f0 0a     beq   $0c94
0c8a: f5 41 03  mov   a,$0341+x
0c8d: fd        mov   y,a
0c8e: f5 40 03  mov   a,$0340+x
0c91: 3f 21 0d  call  $0d21
0c94: e4 47     mov   a,$47
0c96: 24 5e     and   a,$5e
0c98: f0 03     beq   $0c9d
0c9a: 3f c5 0d  call  $0dc5
0c9d: f5 61 03  mov   a,$0361+x
0ca0: c4 11     mov   $11,a
0ca2: f5 60 03  mov   a,$0360+x
0ca5: c4 10     mov   $10,a
0ca7: f4 a0     mov   a,$a0+x
0ca9: f0 11     beq   $0cbc
0cab: f4 a1     mov   a,$a1+x
0cad: d0 0d     bne   $0cbc
0caf: f5 71 03  mov   a,$0371+x
0cb2: fd        mov   y,a
0cb3: f5 70 03  mov   a,$0370+x
0cb6: 3f 21 0d  call  $0d21
0cb9: 09 47 1e  or    ($1e),($47)
0cbc: f4 b1     mov   a,$b1+x
0cbe: f0 2f     beq   $0cef
0cc0: f5 b0 02  mov   a,$02b0+x
0cc3: de b0 29  cbne  $b0+x,$0cef
0cc6: eb 51     mov   y,$51
0cc8: f5 a1 02  mov   a,$02a1+x
0ccb: cf        mul   ya
0ccc: dd        mov   a,y
0ccd: 60        clrc
0cce: 95 a0 02  adc   a,$02a0+x
0cd1: c4 12     mov   $12,a
0cd3: 1c        asl   a
0cd4: 1c        asl   a
0cd5: 90 02     bcc   $0cd9
0cd7: 48 ff     eor   a,#$ff
0cd9: fd        mov   y,a
0cda: f4 b1     mov   a,$b1+x
0cdc: 68 f1     cmp   a,#$f1
0cde: 90 05     bcc   $0ce5
0ce0: 28 0f     and   a,#$0f
0ce2: cf        mul   ya
0ce3: 2f 04     bra   $0ce9
0ce5: cf        mul   ya
0ce6: dd        mov   a,y
0ce7: 8d 00     mov   y,#$00
0ce9: 3f 3d 0d  call  $0d3d
0cec: 5f 18 11  jmp   $1118

0cef: e4 47     mov   a,$47
0cf1: 24 1e     and   a,$1e
0cf3: d0 f7     bne   $0cec
0cf5: 6f        ret

0cf6: eb 51     mov   y,$51
0cf8: f5 d1 02  mov   a,$02d1+x
0cfb: cf        mul   ya
0cfc: dd        mov   a,y
0cfd: 60        clrc
0cfe: 95 d0 02  adc   a,$02d0+x
0d01: 1c        asl   a
0d02: 90 02     bcc   $0d06
0d04: 48 ff     eor   a,#$ff
0d06: fb c1     mov   y,$c1+x
0d08: cf        mul   ya
0d09: dd        mov   a,y
0d0a: 48 ff     eor   a,#$ff
0d0c: 09 47 5e  or    ($5e),($47)
0d0f: eb 59     mov   y,$59
0d11: cf        mul   ya
0d12: f5 10 02  mov   a,$0210+x
0d15: cf        mul   ya
0d16: f5 01 03  mov   a,$0301+x
0d19: cf        mul   ya
0d1a: dd        mov   a,y
0d1b: cf        mul   ya
0d1c: dd        mov   a,y
0d1d: d5 21 03  mov   $0321+x,a
0d20: 6f        ret

0d21: e2 13     set7  $13
0d23: cb 12     mov   $12,y
0d25: f3 12 06  bbc7  $12,$0d2e
0d28: da 14     movw  $14,ya
0d2a: ba 0e     movw  ya,$0e
0d2c: 9a 14     subw  ya,$14
0d2e: 6d        push  y
0d2f: eb 51     mov   y,$51
0d31: cf        mul   ya
0d32: cb 14     mov   $14,y
0d34: 8f 00 15  mov   $15,#$00
0d37: eb 51     mov   y,$51
0d39: ae        pop   a
0d3a: cf        mul   ya
0d3b: 7a 14     addw  ya,$14
0d3d: f3 12 06  bbc7  $12,$0d46
0d40: da 14     movw  $14,ya
0d42: ba 0e     movw  ya,$0e
0d44: 9a 14     subw  ya,$14
0d46: 7a 10     addw  ya,$10
0d48: da 10     movw  $10,ya
0d4a: 6f        ret

0d4b: f4 90     mov   a,$90+x
0d4d: f0 21     beq   $0d70
0d4f: 9b 90     dec   $90+x
0d51: d0 0a     bne   $0d5d
0d53: e8 00     mov   a,#$00
0d55: d5 00 03  mov   $0300+x,a
0d58: f5 20 03  mov   a,$0320+x
0d5b: 2f 10     bra   $0d6d
0d5d: 60        clrc
0d5e: f5 00 03  mov   a,$0300+x
0d61: 95 10 03  adc   a,$0310+x
0d64: d5 00 03  mov   $0300+x,a
0d67: f5 01 03  mov   a,$0301+x
0d6a: 95 11 03  adc   a,$0311+x
0d6d: d5 01 03  mov   $0301+x,a
0d70: fb c1     mov   y,$c1+x
0d72: f0 20     beq   $0d94
0d74: f5 e0 02  mov   a,$02e0+x
0d77: de c0 18  cbne  $c0+x,$0d92
0d7a: f5 d0 02  mov   a,$02d0+x
0d7d: 10 07     bpl   $0d86
0d7f: fc        inc   y
0d80: d0 04     bne   $0d86
0d82: e8 80     mov   a,#$80
0d84: 2f 04     bra   $0d8a
0d86: 60        clrc
0d87: 95 d1 02  adc   a,$02d1+x
0d8a: d5 d0 02  mov   $02d0+x,a
0d8d: 3f 01 0d  call  $0d01
0d90: 2f 07     bra   $0d99
0d92: bb c0     inc   $c0+x
0d94: e8 ff     mov   a,#$ff
0d96: 3f 0c 0d  call  $0d0c
0d99: f4 91     mov   a,$91+x
0d9b: f0 27     beq   $0dc4
0d9d: 09 47 5e  or    ($5e),($47)
0da0: 9b 91     dec   $91+x
0da2: d0 0d     bne   $0db1
0da4: e8 00     mov   a,#$00
0da6: d5 30 03  mov   $0330+x,a
0da9: f5 50 03  mov   a,$0350+x
0dac: d5 31 03  mov   $0331+x,a
0daf: 2f 10     bra   $0dc1
0db1: 60        clrc
0db2: f5 40 03  mov   a,$0340+x
0db5: 95 30 03  adc   a,$0330+x
0db8: d5 30 03  mov   $0330+x,a
0dbb: f5 41 03  mov   a,$0341+x
0dbe: 95 31 03  adc   a,$0331+x
0dc1: d5 31 03  mov   $0331+x,a
0dc4: 6f        ret

0dc5: 7d        mov   a,x
0dc6: 9f        xcn   a
0dc7: 5c        lsr   a
0dc8: c4 12     mov   $12,a
0dca: eb 11     mov   y,$11
0dcc: f6 04 0e  mov   a,$0e04+y
0dcf: 80        setc
0dd0: b6 03 0e  sbc   a,$0e03+y
0dd3: eb 10     mov   y,$10
0dd5: cf        mul   ya
0dd6: dd        mov   a,y
0dd7: eb 11     mov   y,$11
0dd9: 60        clrc
0dda: 96 03 0e  adc   a,$0e03+y
0ddd: fd        mov   y,a
0dde: f5 21 03  mov   a,$0321+x
0de1: cf        mul   ya
0de2: f5 51 03  mov   a,$0351+x
0de5: 1c        asl   a
0de6: 13 12 01  bbc0  $12,$0dea
0de9: 1c        asl   a
0dea: dd        mov   a,y
0deb: 90 03     bcc   $0df0
0ded: 48 ff     eor   a,#$ff
0def: bc        inc   a
0df0: eb 12     mov   y,$12
0df2: 3f 83 11  call  $1183
0df5: 8d 14     mov   y,#$14
0df7: e8 00     mov   a,#$00
0df9: 9a 10     subw  ya,$10
0dfb: da 10     movw  $10,ya
0dfd: ab 12     inc   $12
0dff: 33 12 c8  bbc1  $12,$0dca
0e02: 6f        ret

0e03: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e0b: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e13: db $7a,$7c,$7d,$7e,$7f

; increment section pointer
0e18: 8d 00     mov   y,#$00
0e1a: f7 40     mov   a,($40)+y
0e1c: 3a 40     incw  $40
0e1e: 2d        push  a
0e1f: f7 40     mov   a,($40)+y
0e21: 3a 40     incw  $40
0e23: fd        mov   y,a
0e24: ae        pop   a
0e25: 6f        ret

; dispatch vcmd
0e26: 80        setc
0e27: a8 e0     sbc   a,#$e0
0e29: c4 14     mov   $14,a
0e2b: 1c        asl   a
0e2c: 84 14     adc   a,$14
0e2e: fd        mov   y,a
0e2f: f6 47 0e  mov   a,$0e47+y
0e32: 2d        push  a
0e33: f6 46 0e  mov   a,$0e46+y
0e36: 2d        push  a
0e37: f6 48 0e  mov   a,$0e48+y
0e3a: f0 08     beq   $0e44
0e3c: e7 30     mov   a,($30+x)
0e3e: bb 30     inc   $30+x
0e40: d0 02     bne   $0e44
0e42: bb 31     inc   $31+x
0e44: fd        mov   y,a
0e45: 6f        ret

; vcmd dispatch table
0e46: db $a7,$0e,$01                    ; $0ea7> e0 - set instrument
0e49: db $00,$0f,$01                    ; $0f00> e1 - pan
0e4c: db $19,$0f,$02                    ; $0f19> e2 - pan fade
0e4f: db $3d,$0f,$03                    ; $0f3d> e3 - vibrato on
0e52: db $49,$0f,$00                    ; $0f49> e4 - vibrato off
0e55: db $64,$0f,$01                    ; $0f64> e5 - master volume
0e58: db $73,$0f,$02                    ; $0f73> e6 - master volume fade
0e5b: db $85,$0f,$01                    ; $0f85> e7 - tempo
0e5e: db $8a,$0f,$02                    ; $0f8a> e8 - tempo fade
0e61: db $9c,$0f,$01                    ; $0f9c> e9 - global transpose
0e64: db $9f,$0f,$01                    ; $0f9f> ea - per-voice transpose
0e67: db $a3,$0f,$03                    ; $0fa3> eb - tremolo on
0e6a: db $af,$0f,$00                    ; $0faf> ec - tremolo off
0e6d: db $d0,$0f,$01                    ; $0fd0> ed - volume
0e70: db $e6,$0f,$02			; $0fe6> ee - volume fade
0e73: db $03,$10,$03                    ; $1003> ef - call subroutine
0e76: db $54,$0f,$01                    ; $0f54> f0 - vibrato fade
0e79: db $b2,$0f,$03                    ; $0fb2> f1 - pitch envelope (release)
0e7c: db $b6,$0f,$03                    ; $0fb6> f2 - pitch envelope (attack)
0e7f: db $cc,$0f,$00                    ; $0fcc> f3 - pitch envelope off
0e82: db $ff,$0f,$01                    ; $0fff> f4 - tuning
0e85: db $26,$10,$03                    ; $1026> f5 - echo vbits/volume
0e88: db $5a,$10,$00                    ; $105a> f6 - disable echo
0e8b: db $61,$10,$03                    ; $1061> f7 - echo params
0e8e: db $39,$10,$03                    ; $1039> f8 - echo volume fade
0e91: db $24,$0b,$03                    ; $0b24> f9 - pitch slide
0e94: db $83,$10,$01                    ; $1083> fa - set perc patch base
0e97: db $10,$13,$00                    ; $1310> fb
0e9a: db $8a,$10,$00                    ; $108a> fc
0e9d: db $8f,$10,$00                    ; $108f> fd
0ea0: db $90,$10,$00                    ; $1090> fe
0ea3: db $07,$13,$01			; $1307> ff
0ea6: db $00

; vcmd e0 - set instrument
0ea7: d5 d0 00  mov   $00d0+x,a
0eaa: fd        mov   y,a
0eab: 10 06     bpl   $0eb3
0ead: 80        setc
0eae: a8 ca     sbc   a,#$ca
0eb0: 60        clrc
0eb1: 84 5f     adc   a,$5f
0eb3: 8d 06     mov   y,#$06
0eb5: cf        mul   ya
0eb6: da 14     movw  $14,ya
0eb8: 60        clrc
0eb9: 98 00 14  adc   $14,#$00
0ebc: 98 6e 15  adc   $15,#$6e
0ebf: e4 1f     mov   a,$1f
0ec1: 24 47     and   a,$47
0ec3: f0 3a     beq   $0eff
0ec5: 4d        push  x
0ec6: 7d        mov   a,x
0ec7: 9f        xcn   a
0ec8: 5c        lsr   a
0ec9: 08 04     or    a,#$04
0ecb: 5d        mov   x,a
0ecc: 8d 00     mov   y,#$00
0ece: f7 14     mov   a,($14)+y
0ed0: 10 0e     bpl   $0ee0
0ed2: 28 1f     and   a,#$1f
0ed4: 38 20 48  and   $48,#$20
0ed7: 0e 48 00  tset1 $0048
0eda: 09 47 49  or    ($49),($47)
0edd: dd        mov   a,y
0ede: 2f 07     bra   $0ee7
0ee0: e4 47     mov   a,$47
0ee2: 4e 49 00  tclr1 $0049
0ee5: f7 14     mov   a,($14)+y
0ee7: c9 f2 00  mov   $00f2,x
0eea: c5 f3 00  mov   $00f3,a
0eed: 3d        inc   x
0eee: fc        inc   y
0eef: ad 04     cmp   y,#$04
0ef1: d0 f2     bne   $0ee5
0ef3: ce        pop   x
0ef4: f7 14     mov   a,($14)+y
0ef6: d5 21 02  mov   $0221+x,a
0ef9: fc        inc   y
0efa: f7 14     mov   a,($14)+y
0efc: d5 20 02  mov   $0220+x,a
0eff: 6f        ret

; vcmd e1 - pan
0f00: 2d        push  a
0f01: e5 64 07  mov   a,$0764
0f04: 68 00     cmp   a,#$00
0f06: ae        pop   a
0f07: f0 02     beq   $0f0b
0f09: e8 0a     mov   a,#$0a
0f0b: d5 51 03  mov   $0351+x,a
0f0e: 28 1f     and   a,#$1f
0f10: d5 31 03  mov   $0331+x,a
0f13: e8 00     mov   a,#$00
0f15: d5 30 03  mov   $0330+x,a
0f18: 6f        ret

; vcmd e2 - pan fade
0f19: 2d        push  a
0f1a: e5 64 07  mov   a,$0764
0f1d: 68 00     cmp   a,#$00
0f1f: ae        pop   a
0f20: f0 02     beq   $0f24
0f22: e8 0a     mov   a,#$0a
0f24: d4 91     mov   $91+x,a
0f26: 2d        push  a
0f27: 3f 3c 0e  call  $0e3c
0f2a: d5 50 03  mov   $0350+x,a
0f2d: 80        setc
0f2e: b5 31 03  sbc   a,$0331+x
0f31: ce        pop   x
0f32: 3f 4c 0b  call  $0b4c
0f35: d5 40 03  mov   $0340+x,a
0f38: dd        mov   a,y
0f39: d5 41 03  mov   $0341+x,a
0f3c: 6f        ret

; vcmd e3 - vibrato on
0f3d: d5 b0 02  mov   $02b0+x,a
0f40: 3f 3c 0e  call  $0e3c
0f43: d5 a1 02  mov   $02a1+x,a
0f46: 3f 3c 0e  call  $0e3c
; vcmd e4 - vibrato off
0f49: d4 b1     mov   $b1+x,a
0f4b: d5 c1 02  mov   $02c1+x,a
0f4e: e8 00     mov   a,#$00
0f50: d5 b1 02  mov   $02b1+x,a
0f53: 6f        ret

; vcmd f0 - vibrato fade
0f54: d5 b1 02  mov   $02b1+x,a
0f57: 2d        push  a
0f58: 8d 00     mov   y,#$00
0f5a: f4 b1     mov   a,$b1+x
0f5c: ce        pop   x
0f5d: 9e        div   ya,x
0f5e: f8 44     mov   x,$44
0f60: d5 c0 02  mov   $02c0+x,a
0f63: 6f        ret

; vcmd e5 - master volume
0f64: e5 63 07  mov   a,$0763
0f67: 68 00     cmp   a,#$00
0f69: d0 07     bne   $0f72
0f6b: e8 00     mov   a,#$00
0f6d: c5 f4 00  mov   $00f4,a
0f70: da 58     movw  $58,ya
0f72: 6f        ret

; vcmd e6 - master volume fade
0f73: c4 5a     mov   $5a,a
0f75: 3f 3c 0e  call  $0e3c
0f78: c4 5b     mov   $5b,a
0f7a: 80        setc
0f7b: a4 59     sbc   a,$59
0f7d: f8 5a     mov   x,$5a
0f7f: 3f 4c 0b  call  $0b4c
0f82: da 5c     movw  $5c,ya
0f84: 6f        ret

; vcmd e7 - tempo
0f85: e8 00     mov   a,#$00
0f87: da 52     movw  $52,ya
0f89: 6f        ret

; vcmd e8 - tempo fade
0f8a: c4 54     mov   $54,a
0f8c: 3f 3c 0e  call  $0e3c
0f8f: c4 55     mov   $55,a
0f91: 80        setc
0f92: a4 53     sbc   a,$53
0f94: f8 54     mov   x,$54
0f96: 3f 4c 0b  call  $0b4c
0f99: da 56     movw  $56,ya
0f9b: 6f        ret

; vcmd e9 - global transpose
0f9c: c4 50     mov   $50,a
0f9e: 6f        ret

; vcmd ea - per-voice transpose
0f9f: d5 f0 02  mov   $02f0+x,a
0fa2: 6f        ret

; vcmd eb - tremolo on
0fa3: d5 e0 02  mov   $02e0+x,a
0fa6: 3f 3c 0e  call  $0e3c
0fa9: d5 d1 02  mov   $02d1+x,a
0fac: 3f 3c 0e  call  $0e3c
; vcmd ec - tremolo off
0faf: d4 c1     mov   $c1+x,a
0fb1: 6f        ret

; vcmd f1 - pitch envelope (release)
0fb2: e8 01     mov   a,#$01
0fb4: 2f 02     bra   $0fb8
; vcmd f2 - pitch envelope (attack)
0fb6: e8 00     mov   a,#$00
0fb8: d5 90 02  mov   $0290+x,a
0fbb: dd        mov   a,y
0fbc: d5 81 02  mov   $0281+x,a
0fbf: 3f 3c 0e  call  $0e3c
0fc2: d5 80 02  mov   $0280+x,a
0fc5: 3f 3c 0e  call  $0e3c
0fc8: d5 91 02  mov   $0291+x,a
0fcb: 6f        ret

; vcmd f3 - pitch envelope off
0fcc: d5 80 02  mov   $0280+x,a
0fcf: 6f        ret

; vcmd ed - volume
0fd0: 2d        push  a
0fd1: 7d        mov   a,x
0fd2: 68 0b     cmp   a,#$0b
0fd4: ae        pop   a
0fd5: b0 06     bcs   $0fdd
0fd7: 6d        push  y
0fd8: 8d d0     mov   y,#$d0
0fda: cf        mul   ya
0fdb: dd        mov   a,y
0fdc: ee        pop   y
0fdd: d5 01 03  mov   $0301+x,a
0fe0: e8 00     mov   a,#$00
0fe2: d5 00 03  mov   $0300+x,a
0fe5: 6f        ret

; vcmd ee - volume fade
0fe6: d4 90     mov   $90+x,a
0fe8: 2d        push  a
0fe9: 3f 3c 0e  call  $0e3c
0fec: d5 20 03  mov   $0320+x,a
0fef: 80        setc
0ff0: b5 01 03  sbc   a,$0301+x
0ff3: ce        pop   x
0ff4: 3f 4c 0b  call  $0b4c
0ff7: d5 10 03  mov   $0310+x,a
0ffa: dd        mov   a,y
0ffb: d5 11 03  mov   $0311+x,a
0ffe: 6f        ret

; vcmd f4 - tuning
0fff: d5 81 03  mov   $0381+x,a
1002: 6f        ret

; vcmd ef - call subroutine
1003: d5 40 02  mov   $0240+x,a
1006: 3f 3c 0e  call  $0e3c
1009: d5 41 02  mov   $0241+x,a
100c: 3f 3c 0e  call  $0e3c
100f: d4 80     mov   $80+x,a
1011: f4 30     mov   a,$30+x
1013: d5 30 02  mov   $0230+x,a
1016: f4 31     mov   a,$31+x
1018: d5 31 02  mov   $0231+x,a
101b: f5 40 02  mov   a,$0240+x
101e: d4 30     mov   $30+x,a
1020: f5 41 02  mov   a,$0241+x
1023: d4 31     mov   $31+x,a
1025: 6f        ret

; vcmd f5 - echo vbits/volume
1026: c4 4a     mov   $4a,a
1028: 3f 3c 0e  call  $0e3c
102b: e8 00     mov   a,#$00
102d: da 60     movw  $60,ya
102f: 3f 3c 0e  call  $0e3c
1032: e8 00     mov   a,#$00
1034: da 62     movw  $62,ya
1036: b2 48     clr5  $48
1038: 6f        ret

; vcmd f8 - echo volume fade
1039: c4 68     mov   $68,a
103b: 3f 3c 0e  call  $0e3c
103e: c4 69     mov   $69,a
1040: 80        setc
1041: a4 61     sbc   a,$61
1043: f8 68     mov   x,$68
1045: 3f 4c 0b  call  $0b4c
1048: da 64     movw  $64,ya
104a: 3f 3c 0e  call  $0e3c
104d: c4 6a     mov   $6a,a
104f: 80        setc
1050: a4 62     sbc   a,$62
1052: f8 68     mov   x,$68
1054: 3f 4c 0b  call  $0b4c
1057: da 66     movw  $66,ya
1059: 6f        ret

; vcmd f6 - disable echo
105a: da 60     movw  $60,ya
105c: da 62     movw  $62,ya
105e: a2 48     set5  $48
1060: 6f        ret

; vcmd f7 - set echo params
1061: 3f 92 11  call  $1192
1064: 3f 3c 0e  call  $0e3c
1067: c4 4e     mov   $4e,a
1069: 3f 3c 0e  call  $0e3c
106c: 8d 08     mov   y,#$08
106e: cf        mul   ya
106f: 5d        mov   x,a
1070: 8d 0f     mov   y,#$0f
1072: f5 78 17  mov   a,$1778+x
1075: 3f 8b 11  call  $118b
1078: 3d        inc   x
1079: dd        mov   a,y
107a: 60        clrc
107b: 88 10     adc   a,#$10
107d: fd        mov   y,a
107e: 10 f2     bpl   $1072
1080: f8 44     mov   x,$44
1082: 6f        ret

; vcmd fa - set perc patch base
1083: c4 5f     mov   $5f,a
1085: 6f        ret

1086: 3f 3e 0e  call  $0e3e
1089: 6f        ret

; vcmd fc
108a: bc        inc   a
108b: d5 a0 03  mov   $03a0+x,a
108e: 6f        ret

; vcmd fd
108f: bc        inc   a
; vcmd fe
1090: 0f        brk
1091: c4 1b     mov   $1b,a
1093: 5f a6 09  jmp   $09a6

1096: f5 f4 00  mov   a,$00f4+x
1099: 75 f4 00  cmp   a,$00f4+x
109c: d0 f8     bne   $1096
109e: d4 00     mov   $00+x,a
10a0: 6f        ret

10a1: f0 03     beq   $10a6
10a3: 09 47 46  or    ($46),($47)
10a6: 6f        ret

10a7: ad ca     cmp   y,#$ca
10a9: 90 05     bcc   $10b0
10ab: 3f a7 0e  call  $0ea7
10ae: 8d a4     mov   y,#$a4
10b0: ad c8     cmp   y,#$c8
10b2: b0 ed     bcs   $10a1
10b4: e4 1f     mov   a,$1f
10b6: 24 47     and   a,$47
10b8: f0 e6     beq   $10a0
10ba: dd        mov   a,y
10bb: 28 7f     and   a,#$7f
10bd: 60        clrc
10be: 84 50     adc   a,$50
10c0: 60        clrc
10c1: 95 f0 02  adc   a,$02f0+x
10c4: d5 61 03  mov   $0361+x,a
10c7: f5 81 03  mov   a,$0381+x
10ca: d5 60 03  mov   $0360+x,a
10cd: f5 b1 02  mov   a,$02b1+x
10d0: 5c        lsr   a
10d1: e8 00     mov   a,#$00
10d3: 7c        ror   a
10d4: d5 a0 02  mov   $02a0+x,a
10d7: e8 00     mov   a,#$00
10d9: d4 b0     mov   $b0+x,a
10db: d5 00 01  mov   $0100+x,a
10de: d5 d0 02  mov   $02d0+x,a
10e1: d4 c0     mov   $c0+x,a
10e3: 09 47 5e  or    ($5e),($47)
10e6: 09 47 45  or    ($45),($47)
10e9: f5 80 02  mov   a,$0280+x
10ec: d4 a0     mov   $a0+x,a
10ee: f0 1e     beq   $110e
10f0: f5 81 02  mov   a,$0281+x
10f3: d4 a1     mov   $a1+x,a
10f5: f5 90 02  mov   a,$0290+x
10f8: d0 0a     bne   $1104
10fa: f5 61 03  mov   a,$0361+x
10fd: 80        setc
10fe: b5 91 02  sbc   a,$0291+x
1101: d5 61 03  mov   $0361+x,a
1104: f5 91 02  mov   a,$0291+x
1107: 60        clrc
1108: 95 61 03  adc   a,$0361+x
110b: 3f 34 0b  call  $0b34
110e: f5 61 03  mov   a,$0361+x
1111: c4 11     mov   $11,a
1113: f5 60 03  mov   a,$0360+x
1116: c4 10     mov   $10,a
1118: 8d 00     mov   y,#$00
111a: e4 11     mov   a,$11
111c: 80        setc
111d: a8 34     sbc   a,#$34
111f: b0 09     bcs   $112a
1121: e4 11     mov   a,$11
1123: 80        setc
1124: a8 13     sbc   a,#$13
1126: b0 06     bcs   $112e
1128: dc        dec   y
1129: 1c        asl   a
112a: 7a 10     addw  ya,$10
112c: da 10     movw  $10,ya
112e: e4 11     mov   a,$11
1130: 1c        asl   a
1131: fd        mov   y,a
1132: f6 c6 16  mov   a,$16c6+y
1135: c4 15     mov   $15,a
1137: f6 c5 16  mov   a,$16c5+y
113a: c4 14     mov   $14,a
113c: f6 c8 16  mov   a,$16c8+y
113f: 2d        push  a
1140: f6 c7 16  mov   a,$16c7+y
1143: ee        pop   y
1144: 9a 14     subw  ya,$14
1146: eb 10     mov   y,$10
1148: cf        mul   ya
1149: dd        mov   a,y
114a: 8d 00     mov   y,#$00
114c: 7a 14     addw  ya,$14
114e: da 14     movw  $14,ya
1150: f5 20 02  mov   a,$0220+x
1153: eb 15     mov   y,$15
1155: cf        mul   ya
1156: da 16     movw  $16,ya
1158: f5 20 02  mov   a,$0220+x
115b: eb 14     mov   y,$14
115d: cf        mul   ya
115e: 6d        push  y
115f: f5 21 02  mov   a,$0221+x
1162: eb 14     mov   y,$14
1164: cf        mul   ya
1165: 7a 16     addw  ya,$16
1167: da 16     movw  $16,ya
1169: f5 21 02  mov   a,$0221+x
116c: eb 15     mov   y,$15
116e: cf        mul   ya
116f: fd        mov   y,a
1170: ae        pop   a
1171: 7a 16     addw  ya,$16
1173: da 16     movw  $16,ya
1175: 7d        mov   a,x
1176: 9f        xcn   a
1177: 5c        lsr   a
1178: 08 02     or    a,#$02
117a: fd        mov   y,a
117b: e4 16     mov   a,$16
117d: 3f 83 11  call  $1183
1180: fc        inc   y
1181: e4 17     mov   a,$17
1183: 2d        push  a
1184: e4 47     mov   a,$47
1186: 24 1f     and   a,$1f
1188: ae        pop   a
1189: f0 06     beq   $1191
118b: cc f2 00  mov   $00f2,y
118e: c5 f3 00  mov   $00f3,a
1191: 6f        ret

1192: c4 4d     mov   $4d,a
1194: 8d 7d     mov   y,#$7d
1196: cc f2 00  mov   $00f2,y
1199: e5 f3 00  mov   a,$00f3
119c: 64 4d     cmp   a,$4d
119e: f0 2b     beq   $11cb
11a0: 28 0f     and   a,#$0f
11a2: 48 ff     eor   a,#$ff
11a4: f3 4c 03  bbc7  $4c,$11aa
11a7: 60        clrc
11a8: 84 4c     adc   a,$4c
11aa: c4 4c     mov   $4c,a
11ac: 8d 04     mov   y,#$04
11ae: f6 97 17  mov   a,$1797+y
11b1: c5 f2 00  mov   $00f2,a
11b4: e8 00     mov   a,#$00
11b6: c5 f3 00  mov   $00f3,a
11b9: fe f3     dbnz  y,$11ae
11bb: e4 48     mov   a,$48
11bd: 08 20     or    a,#$20
11bf: 8d 6c     mov   y,#$6c
11c1: 3f 8b 11  call  $118b
11c4: e4 4d     mov   a,$4d
11c6: 8d 7d     mov   y,#$7d
11c8: 3f 8b 11  call  $118b
11cb: 1c        asl   a
11cc: 1c        asl   a
11cd: 1c        asl   a
11ce: 48 ff     eor   a,#$ff
11d0: 80        setc
11d1: 88 ff     adc   a,#$ff
11d3: 8d 6d     mov   y,#$6d
11d5: 5f 8b 11  jmp   $118b

11d8: e8 aa     mov   a,#$aa
11da: c5 f4 00  mov   $00f4,a
11dd: e8 bb     mov   a,#$bb
11df: c5 f5 00  mov   $00f5,a
11e2: e5 f4 00  mov   a,$00f4
11e5: 68 cc     cmp   a,#$cc
11e7: d0 f9     bne   $11e2
11e9: 2f 20     bra   $120b
11eb: ec f4 00  mov   y,$00f4
11ee: d0 fb     bne   $11eb
11f0: 5e f4 00  cmp   y,$00f4
11f3: d0 0f     bne   $1204
11f5: e5 f5 00  mov   a,$00f5
11f8: cc f4 00  mov   $00f4,y
11fb: d7 14     mov   ($14)+y,a
11fd: fc        inc   y
11fe: d0 f0     bne   $11f0
1200: ab 15     inc   $15
1202: 2f ec     bra   $11f0
1204: 10 ea     bpl   $11f0
1206: 5e f4 00  cmp   y,$00f4
1209: 10 e5     bpl   $11f0
120b: e5 f6 00  mov   a,$00f6
120e: ec f7 00  mov   y,$00f7
1211: da 14     movw  $14,ya
1213: ec f4 00  mov   y,$00f4
1216: e5 f5 00  mov   a,$00f5
1219: cc f4 00  mov   $00f4,y
121c: d0 cd     bne   $11eb
121e: cd 31     mov   x,#$31
1220: c9 f1 00  mov   $00f1,x
1223: 6f        ret

1224: e8 f0     mov   a,#$f0
1226: c5 f1 00  mov   $00f1,a
1229: e8 00     mov   a,#$00
122b: 5d        mov   x,a
122c: af        mov   (x)+,a
122d: c8 e8     cmp   x,#$e8
122f: d0 fb     bne   $122c
1231: bc        inc   a
1232: 3f 92 11  call  $1192
1235: a2 48     set5  $48
1237: e8 7f     mov   a,#$7f
1239: 8d 0c     mov   y,#$0c
123b: 3f 8b 11  call  $118b
123e: 8d 1c     mov   y,#$1c
1240: 3f 8b 11  call  $118b
1243: e8 6c     mov   a,#$6c
1245: 8d 5d     mov   y,#$5d
1247: 3f 8b 11  call  $118b
124a: e8 10     mov   a,#$10
124c: c5 fa 00  mov   $00fa,a
124f: c4 53     mov   $53,a
1251: e8 01     mov   a,#$01
1253: c5 f1 00  mov   $00f1,a
1256: 9c        dec   a
1257: c5 f5 00  mov   $00f5,a
125a: c5 f6 00  mov   $00f6,a
125d: c5 f7 00  mov   $00f7,a
1260: 6f        ret

1261: 00        nop
1262: 4d        push  x
1263: 8f 00 22  mov   $22,#$00
1266: e8 00     mov   a,#$00
1268: c5 62 07  mov   $0762,a
126b: cd 02     mov   x,#$02
126d: 3f 96 10  call  $1096
1270: ce        pop   x
1271: e4 02     mov   a,$02
1273: f0 08     beq   $127d
1275: 65 61 12  cmp   a,$1261
1278: d0 03     bne   $127d
127a: 5f 00 13  jmp   $1300

127d: c5 61 12  mov   $1261,a
1280: 28 fe     and   a,#$fe
1282: f0 7d     beq   $1301
1284: c4 24     mov   $24,a
1286: 5c        lsr   a
1287: 60        clrc
1288: 84 24     adc   a,$24
128a: 5d        mov   x,a
128b: f5 ac 17  mov   a,$17ac+x
128e: fd        mov   y,a
128f: f5 ad 17  mov   a,$17ad+x
1292: 2d        push  a
1293: e4 1c     mov   a,$1c
1295: 3c        rol   a
1296: 90 19     bcc   $12b1
1298: 3c        rol   a
1299: 90 23     bcc   $12be
129b: c5 62 07  mov   $0762,a
129e: f5 ae 17  mov   a,$17ae+x
12a1: 9f        xcn   a
12a2: 28 0f     and   a,#$0f
12a4: 65 61 07  cmp   a,$0761
12a7: b0 08     bcs   $12b1
12a9: 65 60 07  cmp   a,$0760
12ac: b0 10     bcs   $12be
12ae: ae        pop   a
12af: 2f 4f     bra   $1300
12b1: 8f 01 22  mov   $22,#$01
12b4: f5 ae 17  mov   a,$17ae+x
12b7: 28 0f     and   a,#$0f
12b9: c5 61 07  mov   $0761,a
12bc: 2f 08     bra   $12c6
12be: f5 ae 17  mov   a,$17ae+x
12c1: 28 0f     and   a,#$0f
12c3: c5 60 07  mov   $0760,a
12c6: ae        pop   a
12c7: 2d        push  a
12c8: e4 22     mov   a,$22
12ca: 28 01     and   a,#$01
12cc: 5d        mov   x,a
12cd: 60        clrc
12ce: bc        inc   a
12cf: 7c        ror   a
12d0: 7c        ror   a
12d1: 7c        ror   a
12d2: 04 1c     or    a,$1c
12d4: c4 1c     mov   $1c,a
12d6: e5 61 12  mov   a,$1261
12d9: c5 f5 00  mov   $00f5,a
12dc: 7d        mov   a,x
12dd: 60        clrc
12de: 88 06     adc   a,#$06
12e0: 1c        asl   a
12e1: 5d        mov   x,a
12e2: e5 62 07  mov   a,$0762
12e5: d0 03     bne   $12ea
12e7: 3f 8d 13  call  $138d
12ea: ae        pop   a
12eb: d4 31     mov   $31+x,a
12ed: dd        mov   a,y
12ee: d4 30     mov   $30+x,a
12f0: e8 01     mov   a,#$01
12f2: d5 70 00  mov   $0070+x,a
12f5: e8 ff     mov   a,#$ff
12f7: d5 90 03  mov   $0390+x,a
12fa: d5 91 03  mov   $0391+x,a
12fd: 5f 07 0a  jmp   $0a07

1300: 6f        ret

1301: e4 1c     mov   a,$1c
1303: f0 fb     beq   $1300
1305: 2f 47     bra   $134e
; vcmd ff
1307: d5 90 03  mov   $0390+x,a
130a: e8 00     mov   a,#$00
130c: d5 91 03  mov   $0391+x,a
130f: 6f        ret

; vcmd fb
1310: e5 0f 18  mov   a,$180f
1313: d4 30     mov   $30+x,a
1315: e5 10 18  mov   a,$1810
1318: d4 31     mov   $31+x,a
131a: 4d        push  x
131b: 7d        mov   a,x
131c: 5c        lsr   a
131d: 80        setc
131e: a8 06     sbc   a,#$06
1320: 5d        mov   x,a
1321: e8 00     mov   a,#$00
1323: c5 f5 00  mov   $00f5,a
1326: ce        pop   x
1327: e4 47     mov   a,$47
1329: 48 ff     eor   a,#$ff
132b: 24 1c     and   a,$1c
132d: c4 1c     mov   $1c,a
132f: 09 47 46  or    ($46),($47)
1332: 3f 07 0a  call  $0a07
1335: 3f 5b 14  call  $145b
1338: f4 d0     mov   a,$d0+x
133a: 3f a7 0e  call  $0ea7
133d: 6f        ret

133e: e8 01     mov   a,#$01
1340: c5 63 07  mov   $0763,a
1343: e5 f5 00  mov   a,$00f5
1346: c4 5a     mov   $5a,a
1348: e5 f6 00  mov   a,$00f6
134b: 5f 78 0f  jmp   $0f78

134e: cd 0c     mov   x,#$0c
1350: e8 40     mov   a,#$40
1352: c4 47     mov   $47,a
1354: 24 1c     and   a,$1c
1356: f0 2d     beq   $1385
1358: e5 0f 18  mov   a,$180f
135b: d4 30     mov   $30+x,a
135d: e5 10 18  mov   a,$1810
1360: d4 31     mov   $31+x,a
1362: 4d        push  x
1363: 7d        mov   a,x
1364: 5c        lsr   a
1365: 80        setc
1366: a8 06     sbc   a,#$06
1368: 5d        mov   x,a
1369: e8 00     mov   a,#$00
136b: c5 f5 00  mov   $00f5,a
136e: ce        pop   x
136f: e4 47     mov   a,$47
1371: 48 ff     eor   a,#$ff
1373: 24 1c     and   a,$1c
1375: c4 1c     mov   $1c,a
1377: 09 47 46  or    ($46),($47)
137a: 3f 07 0a  call  $0a07
137d: 3f 5b 14  call  $145b
1380: f4 d0     mov   a,$d0+x
1382: 3f a7 0e  call  $0ea7
1385: 3d        inc   x
1386: 3d        inc   x
1387: e4 47     mov   a,$47
1389: 1c        asl   a
138a: d0 c6     bne   $1352
138c: 6f        ret

138d: 3f 96 13  call  $1396
1390: 3d        inc   x
1391: 3f 96 13  call  $1396
1394: 1d        dec   x
1395: 6f        ret

1396: f4 70     mov   a,$70+x
1398: d5 20 01  mov   $0120+x,a
139b: f4 80     mov   a,$80+x
139d: d5 30 01  mov   $0130+x,a
13a0: f4 90     mov   a,$90+x
13a2: d5 40 01  mov   $0140+x,a
13a5: f4 a0     mov   a,$a0+x
13a7: d5 50 01  mov   $0150+x,a
13aa: f4 b0     mov   a,$b0+x
13ac: d5 60 01  mov   $0160+x,a
13af: f4 c0     mov   a,$c0+x
13b1: d5 70 01  mov   $0170+x,a
13b4: f4 d0     mov   a,$d0+x
13b6: d5 80 01  mov   $0180+x,a
13b9: f5 00 01  mov   a,$0100+x
13bc: d5 90 01  mov   $0190+x,a
13bf: f5 10 01  mov   a,$0110+x
13c2: d5 a0 01  mov   $01a0+x,a
13c5: f4 30     mov   a,$30+x
13c7: d5 b0 03  mov   $03b0+x,a
13ca: f5 00 02  mov   a,$0200+x
13cd: d5 c0 03  mov   $03c0+x,a
13d0: f5 10 02  mov   a,$0210+x
13d3: d5 d0 03  mov   $03d0+x,a
13d6: f5 20 02  mov   a,$0220+x
13d9: d5 e0 03  mov   $03e0+x,a
13dc: f5 30 02  mov   a,$0230+x
13df: d5 f0 03  mov   $03f0+x,a
13e2: f5 40 02  mov   a,$0240+x
13e5: d5 00 04  mov   $0400+x,a
13e8: f5 80 02  mov   a,$0280+x
13eb: d5 10 04  mov   $0410+x,a
13ee: f5 90 02  mov   a,$0290+x
13f1: d5 20 04  mov   $0420+x,a
13f4: f5 a0 02  mov   a,$02a0+x
13f7: d5 30 04  mov   $0430+x,a
13fa: f5 b0 02  mov   a,$02b0+x
13fd: d5 40 04  mov   $0440+x,a
1400: f5 c0 02  mov   a,$02c0+x
1403: d5 50 04  mov   $0450+x,a
1406: f5 d0 02  mov   a,$02d0+x
1409: d5 60 04  mov   $0460+x,a
140c: f5 e0 02  mov   a,$02e0+x
140f: d5 70 04  mov   $0470+x,a
1412: f5 f0 02  mov   a,$02f0+x
1415: d5 80 04  mov   $0480+x,a
1418: f5 00 03  mov   a,$0300+x
141b: d5 90 04  mov   $0490+x,a
141e: f5 10 03  mov   a,$0310+x
1421: d5 a0 04  mov   $04a0+x,a
1424: f5 20 03  mov   a,$0320+x
1427: d5 b0 04  mov   $04b0+x,a
142a: f5 30 03  mov   a,$0330+x
142d: d5 c0 04  mov   $04c0+x,a
1430: f5 40 03  mov   a,$0340+x
1433: d5 d0 04  mov   $04d0+x,a
1436: f5 50 03  mov   a,$0350+x
1439: d5 e0 04  mov   $04e0+x,a
143c: f5 60 03  mov   a,$0360+x
143f: d5 f0 04  mov   $04f0+x,a
1442: f5 70 03  mov   a,$0370+x
1445: d5 00 05  mov   $0500+x,a
1448: f5 80 03  mov   a,$0380+x
144b: d5 10 05  mov   $0510+x,a
144e: f5 90 03  mov   a,$0390+x
1451: d5 20 05  mov   $0520+x,a
1454: f5 a0 03  mov   a,$03a0+x
1457: d5 30 05  mov   $0530+x,a
145a: 6f        ret

145b: 3f 64 14  call  $1464
145e: 3d        inc   x
145f: 3f 64 14  call  $1464
1462: 1d        dec   x
1463: 6f        ret

1464: f5 20 01  mov   a,$0120+x
1467: d4 70     mov   $70+x,a
1469: f5 30 01  mov   a,$0130+x
146c: d4 80     mov   $80+x,a
146e: f5 40 01  mov   a,$0140+x
1471: d4 90     mov   $90+x,a
1473: f5 50 01  mov   a,$0150+x
1476: d4 a0     mov   $a0+x,a
1478: f5 60 01  mov   a,$0160+x
147b: d4 b0     mov   $b0+x,a
147d: f5 70 01  mov   a,$0170+x
1480: d4 c0     mov   $c0+x,a
1482: f5 80 01  mov   a,$0180+x
1485: d4 d0     mov   $d0+x,a
1487: f5 90 01  mov   a,$0190+x
148a: d5 00 01  mov   $0100+x,a
148d: f5 a0 01  mov   a,$01a0+x
1490: d5 10 01  mov   $0110+x,a
1493: f5 b0 03  mov   a,$03b0+x
1496: d4 30     mov   $30+x,a
1498: f5 c0 03  mov   a,$03c0+x
149b: d5 00 02  mov   $0200+x,a
149e: f5 d0 03  mov   a,$03d0+x
14a1: d5 10 02  mov   $0210+x,a
14a4: f5 e0 03  mov   a,$03e0+x
14a7: d5 20 02  mov   $0220+x,a
14aa: f5 f0 03  mov   a,$03f0+x
14ad: d5 30 02  mov   $0230+x,a
14b0: f5 00 04  mov   a,$0400+x
14b3: d5 40 02  mov   $0240+x,a
14b6: f5 10 04  mov   a,$0410+x
14b9: d5 80 02  mov   $0280+x,a
14bc: f5 20 04  mov   a,$0420+x
14bf: d5 90 02  mov   $0290+x,a
14c2: f5 30 04  mov   a,$0430+x
14c5: d5 a0 02  mov   $02a0+x,a
14c8: f5 40 04  mov   a,$0440+x
14cb: d5 b0 02  mov   $02b0+x,a
14ce: f5 50 04  mov   a,$0450+x
14d1: d5 c0 02  mov   $02c0+x,a
14d4: f5 60 04  mov   a,$0460+x
14d7: d5 d0 02  mov   $02d0+x,a
14da: f5 70 04  mov   a,$0470+x
14dd: d5 e0 02  mov   $02e0+x,a
14e0: f5 80 04  mov   a,$0480+x
14e3: d5 f0 02  mov   $02f0+x,a
14e6: f5 90 04  mov   a,$0490+x
14e9: d5 00 03  mov   $0300+x,a
14ec: f5 a0 04  mov   a,$04a0+x
14ef: d5 10 03  mov   $0310+x,a
14f2: f5 b0 04  mov   a,$04b0+x
14f5: d5 20 03  mov   $0320+x,a
14f8: f5 c0 04  mov   a,$04c0+x
14fb: d5 30 03  mov   $0330+x,a
14fe: f5 d0 04  mov   a,$04d0+x
1501: d5 40 03  mov   $0340+x,a
1504: f5 e0 04  mov   a,$04e0+x
1507: d5 50 03  mov   $0350+x,a
150a: f5 f0 04  mov   a,$04f0+x
150d: d5 60 03  mov   $0360+x,a
1510: f5 00 05  mov   a,$0500+x
1513: d5 70 03  mov   $0370+x,a
1516: f5 10 05  mov   a,$0510+x
1519: d5 80 03  mov   $0380+x,a
151c: f5 20 05  mov   a,$0520+x
151f: d5 90 03  mov   $0390+x,a
1522: f5 30 05  mov   a,$0530+x
1525: d5 a0 03  mov   $03a0+x,a
1528: 6f        ret

1529: 3f 32 15  call  $1532
152c: 3d        inc   x
152d: 3f 32 15  call  $1532
1530: 1d        dec   x
1531: 6f        ret

1532: f4 70     mov   a,$70+x
1534: d5 40 05  mov   $0540+x,a
1537: f4 80     mov   a,$80+x
1539: d5 50 05  mov   $0550+x,a
153c: f4 90     mov   a,$90+x
153e: d5 60 05  mov   $0560+x,a
1541: f4 a0     mov   a,$a0+x
1543: d5 70 05  mov   $0570+x,a
1546: f4 b0     mov   a,$b0+x
1548: d5 80 05  mov   $0580+x,a
154b: f4 c0     mov   a,$c0+x
154d: d5 90 05  mov   $0590+x,a
1550: f4 d0     mov   a,$d0+x
1552: d5 a0 05  mov   $05a0+x,a
1555: f5 00 01  mov   a,$0100+x
1558: d5 b0 05  mov   $05b0+x,a
155b: f5 10 01  mov   a,$0110+x
155e: d5 c0 05  mov   $05c0+x,a
1561: f4 30     mov   a,$30+x
1563: d5 d0 05  mov   $05d0+x,a
1566: f5 00 02  mov   a,$0200+x
1569: d5 e0 05  mov   $05e0+x,a
156c: f5 10 02  mov   a,$0210+x
156f: d5 f0 05  mov   $05f0+x,a
1572: f5 20 02  mov   a,$0220+x
1575: d5 00 06  mov   $0600+x,a
1578: f5 30 02  mov   a,$0230+x
157b: d5 10 06  mov   $0610+x,a
157e: f5 40 02  mov   a,$0240+x
1581: d5 20 06  mov   $0620+x,a
1584: f5 80 02  mov   a,$0280+x
1587: d5 30 06  mov   $0630+x,a
158a: f5 90 02  mov   a,$0290+x
158d: d5 40 06  mov   $0640+x,a
1590: f5 a0 02  mov   a,$02a0+x
1593: d5 50 06  mov   $0650+x,a
1596: f5 b0 02  mov   a,$02b0+x
1599: d5 60 06  mov   $0660+x,a
159c: f5 c0 02  mov   a,$02c0+x
159f: d5 70 06  mov   $0670+x,a
15a2: f5 d0 02  mov   a,$02d0+x
15a5: d5 80 06  mov   $0680+x,a
15a8: f5 e0 02  mov   a,$02e0+x
15ab: d5 90 06  mov   $0690+x,a
15ae: f5 f0 02  mov   a,$02f0+x
15b1: d5 a0 06  mov   $06a0+x,a
15b4: f5 00 03  mov   a,$0300+x
15b7: d5 b0 06  mov   $06b0+x,a
15ba: f5 10 03  mov   a,$0310+x
15bd: d5 c0 06  mov   $06c0+x,a
15c0: f5 20 03  mov   a,$0320+x
15c3: d5 d0 06  mov   $06d0+x,a
15c6: f5 30 03  mov   a,$0330+x
15c9: d5 e0 06  mov   $06e0+x,a
15cc: f5 40 03  mov   a,$0340+x
15cf: d5 f0 06  mov   $06f0+x,a
15d2: f5 50 03  mov   a,$0350+x
15d5: d5 00 07  mov   $0700+x,a
15d8: f5 60 03  mov   a,$0360+x
15db: d5 10 07  mov   $0710+x,a
15de: f5 70 03  mov   a,$0370+x
15e1: d5 20 07  mov   $0720+x,a
15e4: f5 80 03  mov   a,$0380+x
15e7: d5 30 07  mov   $0730+x,a
15ea: f5 90 03  mov   a,$0390+x
15ed: d5 40 07  mov   $0740+x,a
15f0: f5 a0 03  mov   a,$03a0+x
15f3: d5 50 07  mov   $0750+x,a
15f6: 6f        ret

15f7: 3f 00 16  call  $1600
15fa: 3d        inc   x
15fb: 3f 00 16  call  $1600
15fe: 1d        dec   x
15ff: 6f        ret

1600: f5 40 05  mov   a,$0540+x
1603: d4 70     mov   $70+x,a
1605: f5 50 05  mov   a,$0550+x
1608: d4 80     mov   $80+x,a
160a: f5 60 05  mov   a,$0560+x
160d: d4 90     mov   $90+x,a
160f: f5 70 05  mov   a,$0570+x
1612: d4 a0     mov   $a0+x,a
1614: f5 80 05  mov   a,$0580+x
1617: d4 b0     mov   $b0+x,a
1619: f5 90 05  mov   a,$0590+x
161c: d4 c0     mov   $c0+x,a
161e: f5 a0 05  mov   a,$05a0+x
1621: d4 d0     mov   $d0+x,a
1623: f5 b0 05  mov   a,$05b0+x
1626: d5 00 01  mov   $0100+x,a
1629: f5 c0 05  mov   a,$05c0+x
162c: d5 10 01  mov   $0110+x,a
162f: f5 d0 05  mov   a,$05d0+x
1632: d4 30     mov   $30+x,a
1634: f5 e0 05  mov   a,$05e0+x
1637: d5 00 02  mov   $0200+x,a
163a: f5 f0 05  mov   a,$05f0+x
163d: d5 10 02  mov   $0210+x,a
1640: f5 00 06  mov   a,$0600+x
1643: d5 20 02  mov   $0220+x,a
1646: f5 10 06  mov   a,$0610+x
1649: d5 30 02  mov   $0230+x,a
164c: f5 20 06  mov   a,$0620+x
164f: d5 40 02  mov   $0240+x,a
1652: f5 30 06  mov   a,$0630+x
1655: d5 80 02  mov   $0280+x,a
1658: f5 40 06  mov   a,$0640+x
165b: d5 90 02  mov   $0290+x,a
165e: f5 50 06  mov   a,$0650+x
1661: d5 a0 02  mov   $02a0+x,a
1664: f5 60 06  mov   a,$0660+x
1667: d5 b0 02  mov   $02b0+x,a
166a: f5 70 06  mov   a,$0670+x
166d: d5 c0 02  mov   $02c0+x,a
1670: f5 80 06  mov   a,$0680+x
1673: d5 d0 02  mov   $02d0+x,a
1676: f5 90 06  mov   a,$0690+x
1679: d5 e0 02  mov   $02e0+x,a
167c: f5 a0 06  mov   a,$06a0+x
167f: d5 f0 02  mov   $02f0+x,a
1682: f5 b0 06  mov   a,$06b0+x
1685: d5 00 03  mov   $0300+x,a
1688: f5 c0 06  mov   a,$06c0+x
168b: d5 10 03  mov   $0310+x,a
168e: f5 d0 06  mov   a,$06d0+x
1691: d5 20 03  mov   $0320+x,a
1694: f5 e0 06  mov   a,$06e0+x
1697: d5 30 03  mov   $0330+x,a
169a: f5 f0 06  mov   a,$06f0+x
169d: d5 40 03  mov   $0340+x,a
16a0: f5 00 07  mov   a,$0700+x
16a3: d5 50 03  mov   $0350+x,a
16a6: f5 10 07  mov   a,$0710+x
16a9: d5 60 03  mov   $0360+x,a
16ac: f5 20 07  mov   a,$0720+x
16af: d5 70 03  mov   $0370+x,a
16b2: f5 30 07  mov   a,$0730+x
16b5: d5 80 03  mov   $0380+x,a
16b8: f5 40 07  mov   a,$0740+x
16bb: d5 90 03  mov   $0390+x,a
16be: f5 50 07  mov   a,$0750+x
16c1: d5 a0 03  mov   $03a0+x,a
16c4: 6f        ret

16c5: dw $42,$00,$46,$00
16c9: db $4b,$00,$4f,$00
16cd: db $54,$00,$59,$00
16d1: db $5e,$00,$64,$00
16d5: db $6a,$00,$70,$00
16d9: db $77,$00,$7e,$00
16dd: db $85,$00,$8d,$00
16e1: db $96,$00,$9f,$00
16e5: db $a8,$00,$b2,$00
16e9: db $bd,$00,$c8,$00
16ed: db $d4,$00,$e1,$00
16f1: db $ee,$00,$fc,$00
16f5: db $0b,$01,$1b,$01
16f9: db $2c,$01,$3e,$01
16fd: db $51,$01,$65,$01
1701: db $7a,$01,$91,$01
1705: db $a9,$01,$c2,$01
1709: db $dd,$01,$f9,$01
170d: db $17,$02,$37,$02
1711: db $59,$02,$7d,$02
1715: db $a3,$02,$cb,$02
1719: db $f5,$02,$22,$03
171d: db $52,$03,$85,$03
1721: db $ba,$03,$f3,$03
1725: db $2f,$04,$6f,$04
1729: db $b2,$04,$fa,$04
172d: db $46,$05,$96,$05
1731: db $eb,$05,$45,$06
1735: db $a5,$06,$0a,$07
1739: db $75,$07,$e6,$07
173d: db $5f,$08,$de,$08
1741: db $65,$09,$f4,$09
1745: db $8c,$0a,$2c,$0b
1749: db $d6,$0b,$8b,$0c
174d: db $4a,$0d,$14,$0e
1751: db $ea,$0e,$cd,$0f
1755: db $be,$10,$bd,$11
1759: db $cb,$12,$e9,$13
175d: db $18,$15,$59,$16
1761: db $ad,$17,$16,$19
1765: db $94,$1a,$28,$1c
1769: db $d5,$1d,$9b,$1f

176d: db "*Ver S1.20*"