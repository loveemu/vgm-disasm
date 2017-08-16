0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 8d 00     mov   y,#$00
0808: d6 00 02  mov   $0200+y,a
080b: d6 00 03  mov   $0300+y,a
080e: d6 00 04  mov   $0400+y,a
0811: d6 00 05  mov   $0500+y,a
0814: d6 00 06  mov   $0600+y,a
0817: d6 00 07  mov   $0700+y,a
081a: dc        dec   y
081b: d0 eb     bne   $0808
081d: e8 00     mov   a,#$00
081f: cd 00     mov   x,#$00
0821: af        mov   (x)+,a
0822: c8 e0     cmp   x,#$e0
0824: d0 fb     bne   $0821
0826: e8 00     mov   a,#$00
0828: c5 38 06  mov   $0638,a
082b: c5 e0 05  mov   $05e0,a
082e: c5 e1 05  mov   $05e1,a
0831: c5 02 06  mov   $0602,a
0834: c5 37 06  mov   $0637,a
0837: 8d 07     mov   y,#$07
0839: d6 05 06  mov   $0605+y,a
083c: dc        dec   y
083d: 10 fa     bpl   $0839
083f: e8 29     mov   a,#$29
0841: c4 7d     mov   $7d,a
0843: e8 01     mov   a,#$01
0845: cd 1e     mov   x,#$1e
0847: d5 f0 04  mov   $04f0+x,a
084a: 1d        dec   x
084b: 1d        dec   x
084c: 10 f9     bpl   $0847
084e: e8 0a     mov   a,#$0a
0850: c5 03 06  mov   $0603,a
0853: e8 40     mov   a,#$40
0855: c5 32 06  mov   $0632,a
0858: cd 1e     mov   x,#$1e
085a: e8 0a     mov   a,#$0a
085c: d5 31 04  mov   $0431+x,a
085f: e8 00     mov   a,#$00
0861: d5 30 04  mov   $0430+x,a
0864: 1d        dec   x
0865: 1d        dec   x
0866: 10 f2     bpl   $085a
0868: e8 00     mov   a,#$00
086a: 3f 4d 10  call  $104d
086d: a2 58     set5  $58
086f: e8 7f     mov   a,#$7f
0871: 8d 0c     mov   y,#$0c
0873: 3f e6 0a  call  $0ae6
0876: 8d 1c     mov   y,#$1c
0878: 3f e6 0a  call  $0ae6
087b: e8 1b     mov   a,#$1b
087d: 8d 5d     mov   y,#$5d
087f: 3f e6 0a  call  $0ae6
0882: e8 f0     mov   a,#$f0
0884: c5 f1 00  mov   $00f1,a
0887: e8 10     mov   a,#$10
0889: c5 fa 00  mov   $00fa,a
088c: c4 63     mov   $63,a
088e: e8 01     mov   a,#$01
0890: c5 f1 00  mov   $00f1,a
0893: 8f 01 7b  mov   $7b,#$01
0896: 8f 01 00  mov   $00,#$01
0899: 3f ac 15  call  $15ac
089c: e4 1b     mov   a,$1b
089e: d0 53     bne   $08f3
08a0: 8d 0a     mov   y,#$0a
08a2: ad 05     cmp   y,#$05
08a4: f0 07     beq   $08ad
08a6: b0 08     bcs   $08b0
08a8: 69 5d 5c  cmp   ($5c),($5d)
08ab: d0 11     bne   $08be
08ad: e3 5c 0e  bbs7  $5c,$08be
08b0: f6 d6 14  mov   a,$14d6+y
08b3: c5 f2 00  mov   $00f2,a
08b6: f6 e0 14  mov   a,$14e0+y
08b9: 5d        mov   x,a
08ba: e6        mov   a,(x)
08bb: c5 f3 00  mov   $00f3,a
08be: fe e2     dbnz  y,$08a2
08c0: cb 55     mov   $55,y
08c2: cb 56     mov   $56,y
08c4: e4 18     mov   a,$18
08c6: 44 19     eor   a,$19
08c8: 5c        lsr   a
08c9: 5c        lsr   a
08ca: ed        notc
08cb: 6b 18     ror   $18
08cd: 6b 19     ror   $19
08cf: ec fd 00  mov   y,$00fd
08d2: f0 fb     beq   $08cf
08d4: 6d        push  y
08d5: cb 7e     mov   $7e,y
08d7: e8 20     mov   a,#$20
08d9: cf        mul   ya
08da: 60        clrc
08db: 84 53     adc   a,$53
08dd: c4 53     mov   $53,a
08df: 90 07     bcc   $08e8
08e1: 69 5d 5c  cmp   ($5c),($5d)
08e4: f0 02     beq   $08e8
08e6: ab 5c     inc   $5c
08e8: e4 63     mov   a,$63
08ea: ee        pop   y
08eb: cf        mul   ya
08ec: 60        clrc
08ed: 84 61     adc   a,$61
08ef: c4 61     mov   $61,a
08f1: 90 0f     bcc   $0902
08f3: e8 00     mov   a,#$00
08f5: c5 e0 05  mov   $05e0,a
08f8: 3f a6 0b  call  $0ba6
08fb: cd 00     mov   x,#$00
08fd: 3f 6c 09  call  $096c
0900: 2f 97     bra   $0899
0902: e4 7d     mov   a,$7d
0904: eb 7e     mov   y,$7e
0906: cf        mul   ya
0907: 60        clrc
0908: 84 7f     adc   a,$7f
090a: c4 7f     mov   $7f,a
090c: 90 1a     bcc   $0928
090e: e8 10     mov   a,#$10
0910: c5 e0 05  mov   $05e0,a
0913: e4 69     mov   a,$69
0915: 2d        push  a
0916: 8f ff 69  mov   $69,#$ff
0919: 3f a6 0b  call  $0ba6
091c: ae        pop   a
091d: c4 69     mov   $69,a
091f: 3f ac 15  call  $15ac
0922: 3f e4 17  call  $17e4
0925: 5f 99 08  jmp   $0899

0928: e5 02 06  mov   a,$0602
092b: f0 12     beq   $093f
092d: e5 03 06  mov   a,$0603
0930: eb 7e     mov   y,$7e
0932: cf        mul   ya
0933: 60        clrc
0934: 85 04 06  adc   a,$0604
0937: c5 04 06  mov   $0604,a
093a: 90 03     bcc   $093f
093c: 3f b9 17  call  $17b9
093f: e5 f4 00  mov   a,$00f4
0942: 68 f0     cmp   a,#$f0
0944: 90 03     bcc   $0949
0946: 3f cf 18  call  $18cf
0949: cd 00     mov   x,#$00
094b: c9 e0 05  mov   $05e0,x
094e: 8f 01 57  mov   $57,#$01
0951: f4 31     mov   a,$31+x
0953: f0 00     beq   $0955
0955: 3d        inc   x
0956: 3d        inc   x
0957: 0b 57     asl   $57
0959: d0 f6     bne   $0951
095b: e8 10     mov   a,#$10
095d: c5 e0 05  mov   $05e0,a
0960: c8 20     cmp   x,#$20
0962: d0 ea     bne   $094e
0964: e8 00     mov   a,#$00
0966: c5 e0 05  mov   $05e0,a
0969: 5f 99 08  jmp   $0899

096c: e4 7b     mov   a,$7b
096e: d0 10     bne   $0980
0970: f4 04     mov   a,$04+x
0972: d5 f4 00  mov   $00f4+x,a
0975: f5 f4 00  mov   a,$00f4+x
0978: 75 f4 00  cmp   a,$00f4+x
097b: d0 f8     bne   $0975
097d: d4 00     mov   $00+x,a
097f: 6f        ret

0980: c8 00     cmp   x,#$00
0982: d0 ec     bne   $0970
0984: e5 f4 00  mov   a,$00f4
0987: f0 05     beq   $098e
0989: 8f 00 7b  mov   $7b,#$00
098c: 2f e2     bra   $0970
098e: e4 04     mov   a,$04
0990: c5 f4 00  mov   $00f4,a
0993: e8 80     mov   a,#$80
0995: c4 00     mov   $00,a
0997: 6f        ret

0998: ad ca     cmp   y,#$ca
099a: 90 05     bcc   $09a1
099c: 3f 30 0e  call  $0e30
099f: 8d a4     mov   y,#$a4
09a1: ad c8     cmp   y,#$c8
09a3: b0 f2     bcs   $0997
09a5: e4 1a     mov   a,$1a
09a7: 24 57     and   a,$57
09a9: d0 ec     bne   $0997
09ab: dd        mov   a,y
09ac: 28 7f     and   a,#$7f
09ae: 60        clrc
09af: 84 60     adc   a,$60
09b1: 60        clrc
09b2: 95 b0 03  adc   a,$03b0+x
09b5: d5 91 04  mov   $0491+x,a
09b8: f5 d1 04  mov   a,$04d1+x
09bb: d5 90 04  mov   $0490+x,a
09be: f5 31 03  mov   a,$0331+x
09c1: 5c        lsr   a
09c2: e8 00     mov   a,#$00
09c4: 7c        ror   a
09c5: d5 10 03  mov   $0310+x,a
09c8: e8 00     mov   a,#$00
09ca: d5 70 05  mov   $0570+x,a
09cd: d5 00 01  mov   $0100+x,a
09d0: d5 70 03  mov   $0370+x,a
09d3: d5 90 05  mov   $0590+x,a
09d6: 2d        push  a
09d7: e5 e0 05  mov   a,$05e0
09da: d0 0a     bne   $09e6
09dc: e4 57     mov   a,$57
09de: 25 e1 05  and   a,$05e1
09e1: f0 03     beq   $09e6
09e3: ae        pop   a
09e4: 2f 0f     bra   $09f5
09e6: ae        pop   a
09e7: 09 57 6e  or    ($6e),($57)
09ea: 09 57 55  or    ($55),($57)
09ed: e4 57     mov   a,$57
09ef: 05 34 06  or    a,$0634
09f2: c5 34 06  mov   $0634,a
09f5: f5 d0 02  mov   a,$02d0+x
09f8: d5 50 05  mov   $0550+x,a
09fb: f0 1f     beq   $0a1c
09fd: f5 d1 02  mov   a,$02d1+x
0a00: d5 51 05  mov   $0551+x,a
0a03: f5 f0 02  mov   a,$02f0+x
0a06: d0 0a     bne   $0a12
0a08: f5 91 04  mov   a,$0491+x
0a0b: 80        setc
0a0c: b5 f1 02  sbc   a,$02f1+x
0a0f: d5 91 04  mov   $0491+x,a
0a12: f5 f1 02  mov   a,$02f1+x
0a15: 60        clrc
0a16: 95 91 04  adc   a,$0491+x
0a19: 3f cf 10  call  $10cf
0a1c: 3f eb 10  call  $10eb
0a1f: 8d 00     mov   y,#$00
0a21: 3f c8 0a  call  $0ac8
0a24: 80        setc
0a25: a8 34     sbc   a,#$34
0a27: b0 0a     bcs   $0a33
0a29: 3f c8 0a  call  $0ac8
0a2c: 80        setc
0a2d: a8 13     sbc   a,#$13
0a2f: b0 10     bcs   $0a41
0a31: dc        dec   y
0a32: 1c        asl   a
0a33: c8 10     cmp   x,#$10
0a35: 10 06     bpl   $0a3d
0a37: 7a 10     addw  ya,$10
0a39: da 10     movw  $10,ya
0a3b: 2f 04     bra   $0a41
0a3d: 7a 1c     addw  ya,$1c
0a3f: da 1c     movw  $1c,ya
0a41: 4d        push  x
0a42: 3f c8 0a  call  $0ac8
0a45: 1c        asl   a
0a46: 8d 00     mov   y,#$00
0a48: cd 18     mov   x,#$18
0a4a: 9e        div   ya,x
0a4b: 5d        mov   x,a
0a4c: f6 ec 14  mov   a,$14ec+y
0a4f: c4 15     mov   $15,a
0a51: f6 eb 14  mov   a,$14eb+y
0a54: c4 14     mov   $14,a
0a56: f6 ee 14  mov   a,$14ee+y
0a59: 2d        push  a
0a5a: f6 ed 14  mov   a,$14ed+y
0a5d: ee        pop   y
0a5e: 9a 14     subw  ya,$14
0a60: 2d        push  a
0a61: e4 54     mov   a,$54
0a63: 68 10     cmp   a,#$10
0a65: ae        pop   a
0a66: 10 04     bpl   $0a6c
0a68: eb 10     mov   y,$10
0a6a: 2f 02     bra   $0a6e
0a6c: eb 1c     mov   y,$1c
0a6e: cf        mul   ya
0a6f: dd        mov   a,y
0a70: 8d 00     mov   y,#$00
0a72: 7a 14     addw  ya,$14
0a74: cb 15     mov   $15,y
0a76: 1c        asl   a
0a77: 2b 15     rol   $15
0a79: c4 14     mov   $14,a
0a7b: 2f 04     bra   $0a81
0a7d: 4b 15     lsr   $15
0a7f: 7c        ror   a
0a80: 3d        inc   x
0a81: c8 06     cmp   x,#$06
0a83: d0 f8     bne   $0a7d
0a85: c4 14     mov   $14,a
0a87: ce        pop   x
0a88: f5 40 02  mov   a,$0240+x
0a8b: eb 15     mov   y,$15
0a8d: cf        mul   ya
0a8e: da 16     movw  $16,ya
0a90: f5 40 02  mov   a,$0240+x
0a93: eb 14     mov   y,$14
0a95: cf        mul   ya
0a96: 6d        push  y
0a97: f5 41 02  mov   a,$0241+x
0a9a: eb 14     mov   y,$14
0a9c: cf        mul   ya
0a9d: 7a 16     addw  ya,$16
0a9f: da 16     movw  $16,ya
0aa1: f5 41 02  mov   a,$0241+x
0aa4: eb 15     mov   y,$15
0aa6: cf        mul   ya
0aa7: fd        mov   y,a
0aa8: ae        pop   a
0aa9: 7a 16     addw  ya,$16
0aab: da 16     movw  $16,ya
0aad: d5 0f 06  mov   $060f+x,a
0ab0: dd        mov   a,y
0ab1: d5 10 06  mov   $0610+x,a
0ab4: 7d        mov   a,x
0ab5: 9f        xcn   a
0ab6: 5c        lsr   a
0ab7: 08 02     or    a,#$02
0ab9: fd        mov   y,a
0aba: 28 70     and   a,#$70
0abc: e4 16     mov   a,$16
0abe: 3f d2 0a  call  $0ad2
0ac1: fc        inc   y
0ac2: e4 17     mov   a,$17
0ac4: 3f d2 0a  call  $0ad2
0ac7: 6f        ret

0ac8: c8 10     cmp   x,#$10
0aca: 10 03     bpl   $0acf
0acc: e4 11     mov   a,$11
0ace: 6f        ret

0acf: e4 1d     mov   a,$1d
0ad1: 6f        ret

0ad2: 2d        push  a
0ad3: e4 57     mov   a,$57
0ad5: 24 1a     and   a,$1a
0ad7: d0 14     bne   $0aed
0ad9: e5 e0 05  mov   a,$05e0
0adc: d0 07     bne   $0ae5
0ade: e4 57     mov   a,$57
0ae0: 25 e1 05  and   a,$05e1
0ae3: d0 08     bne   $0aed
0ae5: ae        pop   a
0ae6: cc f2 00  mov   $00f2,y
0ae9: c5 f3 00  mov   $00f3,a
0aec: 6f        ret

0aed: ae        pop   a
0aee: 6f        ret

0aef: 8d 00     mov   y,#$00
0af1: f7 50     mov   a,($50)+y
0af3: 3a 50     incw  $50
0af5: 2d        push  a
0af6: f7 50     mov   a,($50)+y
0af8: 3a 50     incw  $50
0afa: fd        mov   y,a
0afb: ae        pop   a
0afc: 6f        ret

0afd: 3f 05 15  call  $1505
0b00: c4 08     mov   $08,a
0b02: 8f 01 7b  mov   $7b,#$01
0b05: 2d        push  a
0b06: e8 1b     mov   a,#$1b
0b08: 8d 5d     mov   y,#$5d
0b0a: 3f e6 0a  call  $0ae6
0b0d: ae        pop   a
0b0e: 2d        push  a
0b0f: 8d 0e     mov   y,#$0e
0b11: e8 01     mov   a,#$01
0b13: d6 f0 04  mov   $04f0+y,a
0b16: 9c        dec   a
0b17: d6 f1 04  mov   $04f1+y,a
0b1a: dc        dec   y
0b1b: dc        dec   y
0b1c: 10 f3     bpl   $0b11
0b1e: ae        pop   a
0b1f: fd        mov   y,a
0b20: 28 40     and   a,#$40
0b22: c5 37 06  mov   $0637,a
0b25: dd        mov   a,y
0b26: 28 3f     and   a,#$3f
0b28: c4 04     mov   $04,a
0b2a: c5 36 06  mov   $0636,a
0b2d: 68 80     cmp   a,#$80
0b2f: d0 06     bne   $0b37
0b31: e8 0a     mov   a,#$0a
0b33: 8d 19     mov   y,#$19
0b35: 2f 09     bra   $0b40
0b37: 1c        asl   a
0b38: 5d        mov   x,a
0b39: f5 ff 1d  mov   a,$1dff+x
0b3c: fd        mov   y,a
0b3d: f5 fe 1d  mov   a,$1dfe+x
0b40: da 50     movw  $50,ya
0b42: 8f 02 0c  mov   $0c,#$02
0b45: e8 00     mov   a,#$00
0b47: c5 02 06  mov   $0602,a
0b4a: c4 7c     mov   $7c,a
0b4c: c5 35 06  mov   $0635,a
0b4f: e8 40     mov   a,#$40
0b51: c5 32 06  mov   $0632,a
0b54: e4 1a     mov   a,$1a
0b56: 05 e1 05  or    a,$05e1
0b59: 48 ff     eor   a,#$ff
0b5b: 0e 56 00  tset1 $0056
0b5e: 6f        ret

0b5f: cd 00     mov   x,#$00
0b61: 8f 01 57  mov   $57,#$01
0b64: e8 ff     mov   a,#$ff
0b66: d5 d1 03  mov   $03d1+x,a
0b69: e8 0a     mov   a,#$0a
0b6b: 3f d6 0e  call  $0ed6
0b6e: d5 21 02  mov   $0221+x,a
0b71: d5 d1 04  mov   $04d1+x,a
0b74: d5 b0 03  mov   $03b0+x,a
0b77: d5 d0 02  mov   $02d0+x,a
0b7a: d5 c0 05  mov   $05c0+x,a
0b7d: d5 71 05  mov   $0571+x,a
0b80: d5 91 05  mov   $0591+x,a
0b83: 3d        inc   x
0b84: 3d        inc   x
0b85: 0b 57     asl   $57
0b87: d0 db     bne   $0b64
0b89: c4 6a     mov   $6a,a
0b8b: c4 78     mov   $78,a
0b8d: c4 64     mov   $64,a
0b8f: c4 60     mov   $60,a
0b91: c4 52     mov   $52,a
0b93: c4 6f     mov   $6f,a
0b95: 8f c0 69  mov   $69,#$c0
0b98: 8f 20 63  mov   $63,#$20
0b9b: e8 20     mov   a,#$20
0b9d: c5 31 06  mov   $0631,a
0ba0: e8 00     mov   a,#$00
0ba2: c5 30 06  mov   $0630,a
0ba5: 6f        ret

0ba6: e5 e0 05  mov   a,$05e0
0ba9: f0 03     beq   $0bae
0bab: 5f 74 0c  jmp   $0c74

0bae: e5 37 06  mov   a,$0637
0bb1: f0 12     beq   $0bc5
0bb3: e8 02     mov   a,#$02
0bb5: c5 02 06  mov   $0602,a
0bb8: e5 33 06  mov   a,$0633
0bbb: f0 08     beq   $0bc5
0bbd: e8 00     mov   a,#$00
0bbf: c5 37 06  mov   $0637,a
0bc2: 5f 92 17  jmp   $1792

0bc5: eb 08     mov   y,$08
0bc7: e4 00     mov   a,$00
0bc9: c4 08     mov   $08,a
0bcb: d0 03     bne   $0bd0
0bcd: 5f 74 0c  jmp   $0c74

0bd0: 68 ff     cmp   a,#$ff
0bd2: d0 03     bne   $0bd7
0bd4: 5f fd 0a  jmp   $0afd

0bd7: 68 81     cmp   a,#$81
0bd9: d0 0d     bne   $0be8
0bdb: e4 69     mov   a,$69
0bdd: c5 33 06  mov   $0633,a
0be0: e8 02     mov   a,#$02
0be2: c5 02 06  mov   $0602,a
0be5: 5f 54 0b  jmp   $0b54

0be8: 68 82     cmp   a,#$82
0bea: d0 16     bne   $0c02
0bec: e5 02 06  mov   a,$0602
0bef: d0 03     bne   $0bf4
0bf1: 5f 74 0c  jmp   $0c74

0bf4: e5 33 06  mov   a,$0633
0bf7: c4 69     mov   $69,a
0bf9: e8 00     mov   a,#$00
0bfb: c4 6a     mov   $6a,a
0bfd: c5 02 06  mov   $0602,a
0c00: 2f 72     bra   $0c74
0c02: 68 84     cmp   a,#$84
0c04: d0 0a     bne   $0c10
0c06: e5 02 06  mov   a,$0602
0c09: d0 03     bne   $0c0e
0c0b: 5f 72 17  jmp   $1772

0c0e: 2f 64     bra   $0c74
0c10: 68 87     cmp   a,#$87
0c12: d0 07     bne   $0c1b
0c14: e8 01     mov   a,#$01
0c16: c5 2f 06  mov   $062f,a
0c19: 2f 59     bra   $0c74
0c1b: 68 86     cmp   a,#$86
0c1d: d0 07     bne   $0c26
0c1f: e8 00     mov   a,#$00
0c21: c5 2f 06  mov   $062f,a
0c24: 2f 4e     bra   $0c74
0c26: 68 88     cmp   a,#$88
0c28: d0 05     bne   $0c2f
0c2a: 3f b5 18  call  $18b5
0c2d: 2f 45     bra   $0c74
0c2f: 68 83     cmp   a,#$83
0c31: d0 11     bne   $0c44
0c33: e5 02 06  mov   a,$0602
0c36: d0 03     bne   $0c3b
0c38: 5f 72 17  jmp   $1772

0c3b: 68 02     cmp   a,#$02
0c3d: d0 03     bne   $0c42
0c3f: 5f 54 0b  jmp   $0b54

0c42: 2f 30     bra   $0c74
0c44: 68 85     cmp   a,#$85
0c46: d0 10     bne   $0c58
0c48: e5 02 06  mov   a,$0602
0c4b: 68 01     cmp   a,#$01
0c4d: f0 04     beq   $0c53
0c4f: 68 02     cmp   a,#$02
0c51: d0 03     bne   $0c56
0c53: 5f 92 17  jmp   $1792

0c56: 2f 1c     bra   $0c74
0c58: 68 89     cmp   a,#$89
0c5a: d0 08     bne   $0c64
0c5c: e5 f7 00  mov   a,$00f7
0c5f: c5 38 06  mov   $0638,a
0c62: 2f 10     bra   $0c74
0c64: 68 f0     cmp   a,#$f0
0c66: 90 05     bcc   $0c6d
0c68: 3f cf 18  call  $18cf
0c6b: 2f 07     bra   $0c74
0c6d: 7e 00     cmp   y,$00
0c6f: f0 03     beq   $0c74
0c71: 5f 0e 0b  jmp   $0b0e

0c74: e4 0c     mov   a,$0c
0c76: d0 03     bne   $0c7b
0c78: 5f 09 0d  jmp   $0d09

0c7b: 8b 0c     dec   $0c
0c7d: f0 03     beq   $0c82
0c7f: 5f 5f 0b  jmp   $0b5f

0c82: 3f ef 0a  call  $0aef
0c85: d0 49     bne   $0cd0
0c87: fd        mov   y,a
0c88: d0 1e     bne   $0ca8
0c8a: e8 80     mov   a,#$80
0c8c: c4 04     mov   $04,a
0c8e: c5 f4 00  mov   $00f4,a
0c91: e8 0a     mov   a,#$0a
0c93: c4 50     mov   $50,a
0c95: e8 19     mov   a,#$19
0c97: c4 51     mov   $51,a
0c99: 3f ef 0a  call  $0aef
0c9c: 2d        push  a
0c9d: e8 80     mov   a,#$80
0c9f: c5 35 06  mov   $0635,a
0ca2: ae        pop   a
0ca3: 2f 2b     bra   $0cd0
0ca5: 5f 0e 0b  jmp   $0b0e

0ca8: 68 80     cmp   a,#$80
0caa: f0 06     beq   $0cb2
0cac: 68 81     cmp   a,#$81
0cae: d0 06     bne   $0cb6
0cb0: e8 00     mov   a,#$00
0cb2: c4 1b     mov   $1b,a
0cb4: 2f cc     bra   $0c82
0cb6: 8b 52     dec   $52
0cb8: 10 0b     bpl   $0cc5
0cba: c4 52     mov   $52,a
0cbc: 2d        push  a
0cbd: e5 35 06  mov   a,$0635
0cc0: bc        inc   a
0cc1: c5 35 06  mov   $0635,a
0cc4: ae        pop   a
0cc5: 3f ef 0a  call  $0aef
0cc8: f8 52     mov   x,$52
0cca: f0 b6     beq   $0c82
0ccc: da 50     movw  $50,ya
0cce: 2f b2     bra   $0c82
0cd0: da 16     movw  $16,ya
0cd2: 8d 0f     mov   y,#$0f
0cd4: f7 16     mov   a,($16)+y
0cd6: d6 30 00  mov   $0030+y,a
0cd9: dc        dec   y
0cda: 10 f8     bpl   $0cd4
0cdc: e9 e0 05  mov   x,$05e0
0cdf: 8f 01 57  mov   $57,#$01
0ce2: f4 31     mov   a,$31+x
0ce4: f0 0a     beq   $0cf0
0ce6: f5 21 02  mov   a,$0221+x
0ce9: d0 05     bne   $0cf0
0ceb: e8 00     mov   a,#$00
0ced: 3f 30 0e  call  $0e30
0cf0: c8 0a     cmp   x,#$0a
0cf2: 10 0f     bpl   $0d03
0cf4: e8 00     mov   a,#$00
0cf6: d5 10 05  mov   $0510+x,a
0cf9: d5 30 05  mov   $0530+x,a
0cfc: d5 31 05  mov   $0531+x,a
0cff: bc        inc   a
0d00: d5 f0 04  mov   $04f0+x,a
0d03: 3d        inc   x
0d04: 3d        inc   x
0d05: 0b 57     asl   $57
0d07: d0 d9     bne   $0ce2
0d09: 8f 00 6e  mov   $6e,#$00
0d0c: e9 e0 05  mov   x,$05e0
0d0f: 8f 01 57  mov   $57,#$01
0d12: d8 54     mov   $54,x
0d14: f4 31     mov   a,$31+x
0d16: d0 03     bne   $0d1b
0d18: 5f ab 0d  jmp   $0dab

0d1b: 2d        push  a
0d1c: f5 f0 04  mov   a,$04f0+x
0d1f: 9c        dec   a
0d20: d5 f0 04  mov   $04f0+x,a
0d23: ae        pop   a
0d24: d0 7b     bne   $0da1
0d26: 3f 26 0e  call  $0e26
0d29: d0 2c     bne   $0d57
0d2b: e5 e0 05  mov   a,$05e0
0d2e: f0 05     beq   $0d35
0d30: 3f db 16  call  $16db
0d33: 2f 76     bra   $0dab
0d35: f5 10 05  mov   a,$0510+x
0d38: d0 03     bne   $0d3d
0d3a: 5f 82 0c  jmp   $0c82

0d3d: 3f e5 0f  call  $0fe5
0d40: 2d        push  a
0d41: f5 10 05  mov   a,$0510+x
0d44: 9c        dec   a
0d45: d5 10 05  mov   $0510+x,a
0d48: ae        pop   a
0d49: d0 db     bne   $0d26
0d4b: f5 60 02  mov   a,$0260+x
0d4e: d4 30     mov   $30+x,a
0d50: f5 61 02  mov   a,$0261+x
0d53: d4 31     mov   $31+x,a
0d55: 2f cf     bra   $0d26
0d57: 30 20     bmi   $0d79
0d59: d5 00 02  mov   $0200+x,a
0d5c: 3f 26 0e  call  $0e26
0d5f: 30 18     bmi   $0d79
0d61: 2d        push  a
0d62: 9f        xcn   a
0d63: 28 07     and   a,#$07
0d65: fd        mov   y,a
0d66: f6 80 1d  mov   a,$1d80+y
0d69: d5 01 02  mov   $0201+x,a
0d6c: ae        pop   a
0d6d: 28 0f     and   a,#$0f
0d6f: fd        mov   y,a
0d70: f6 88 1d  mov   a,$1d88+y
0d73: d5 20 02  mov   $0220+x,a
0d76: 3f 26 0e  call  $0e26
0d79: 68 e0     cmp   a,#$e0
0d7b: 90 05     bcc   $0d82
0d7d: 3f 14 0e  call  $0e14
0d80: 2f a4     bra   $0d26
0d82: f5 c0 05  mov   a,$05c0+x
0d85: 04 1b     or    a,$1b
0d87: d0 04     bne   $0d8d
0d89: dd        mov   a,y
0d8a: 3f 98 09  call  $0998
0d8d: f5 00 02  mov   a,$0200+x
0d90: d5 f0 04  mov   $04f0+x,a
0d93: fd        mov   y,a
0d94: f5 01 02  mov   a,$0201+x
0d97: cf        mul   ya
0d98: dd        mov   a,y
0d99: d0 01     bne   $0d9c
0d9b: bc        inc   a
0d9c: d5 f1 04  mov   $04f1+x,a
0d9f: 2f 07     bra   $0da8
0da1: e4 1b     mov   a,$1b
0da3: d0 06     bne   $0dab
0da5: 3f 7b 12  call  $127b
0da8: 3f ac 10  call  $10ac
0dab: 3d        inc   x
0dac: 3d        inc   x
0dad: 0b 57     asl   $57
0daf: f0 03     beq   $0db4
0db1: 5f 12 0d  jmp   $0d12

0db4: e4 64     mov   a,$64
0db6: f0 18     beq   $0dd0
0db8: e5 30 06  mov   a,$0630
0dbb: ec 31 06  mov   y,$0631
0dbe: 7a 62     addw  ya,$62
0dc0: 6e 64 02  dbnz  $64,$0dc5
0dc3: ba 64     movw  ya,$64
0dc5: c5 30 06  mov   $0630,a
0dc8: cc 31 06  mov   $0631,y
0dcb: 3f 8f 18  call  $188f
0dce: da 62     movw  $62,ya
0dd0: e4 78     mov   a,$78
0dd2: f0 15     beq   $0de9
0dd4: ba 74     movw  ya,$74
0dd6: 7a 70     addw  ya,$70
0dd8: da 70     movw  $70,ya
0dda: ba 76     movw  ya,$76
0ddc: 7a 72     addw  ya,$72
0dde: 6e 78 06  dbnz  $78,$0de7
0de1: ba 78     movw  ya,$78
0de3: da 70     movw  $70,ya
0de5: eb 7a     mov   y,$7a
0de7: da 72     movw  $72,ya
0de9: e5 02 06  mov   a,$0602
0dec: d0 0f     bne   $0dfd
0dee: e4 6a     mov   a,$6a
0df0: f0 0e     beq   $0e00
0df2: ba 6c     movw  ya,$6c
0df4: 7a 68     addw  ya,$68
0df6: 6e 6a 02  dbnz  $6a,$0dfb
0df9: ba 6a     movw  ya,$6a
0dfb: da 68     movw  $68,ya
0dfd: 8f ff 6e  mov   $6e,#$ff
0e00: e9 e0 05  mov   x,$05e0
0e03: 8f 01 57  mov   $57,#$01
0e06: f4 31     mov   a,$31+x
0e08: f0 03     beq   $0e0d
0e0a: 3f 7e 11  call  $117e
0e0d: 3d        inc   x
0e0e: 3d        inc   x
0e0f: 0b 57     asl   $57
0e11: d0 f3     bne   $0e06
0e13: 6f        ret

; dispatch vcmd
0e14: 1c        asl   a
0e15: fd        mov   y,a
0e16: f6 62 10  mov   a,$1062+y
0e19: 2d        push  a
0e1a: f6 61 10  mov   a,$1061+y
0e1d: 2d        push  a
0e1e: dd        mov   a,y
0e1f: 5c        lsr   a
0e20: fd        mov   y,a
0e21: f6 ff 10  mov   a,$10ff+y
0e24: f0 08     beq   $0e2e
0e26: e7 30     mov   a,($30+x)
0e28: bb 30     inc   $30+x
0e2a: d0 02     bne   $0e2e
0e2c: bb 31     inc   $31+x
0e2e: fd        mov   y,a
0e2f: 6f        ret

; vcmd e0 - set instrument
0e30: d5 21 02  mov   $0221+x,a
0e33: fd        mov   y,a
0e34: 10 06     bpl   $0e3c             ; if percussion note:
0e36: 80        setc
0e37: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0e39: 60        clrc
0e3a: 84 6f     adc   a,$6f             ; add percussion patch base
0e3c: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
0e3e: cf        mul   ya
0e3f: da 14     movw  $14,ya
0e41: 60        clrc
0e42: 98 00 14  adc   $14,#$00
0e45: 98 1c 15  adc   $15,#$1c          ; $1c00
0e48: e4 1a     mov   a,$1a
0e4a: 24 57     and   a,$57
0e4c: f0 03     beq   $0e51
0e4e: 5f d1 0e  jmp   $0ed1

0e51: 4d        push  x
0e52: 7d        mov   a,x
0e53: 28 0f     and   a,#$0f
0e55: 9f        xcn   a
0e56: 5c        lsr   a
0e57: 08 04     or    a,#$04
0e59: 5d        mov   x,a
0e5a: 8d 00     mov   y,#$00
0e5c: f7 14     mov   a,($14)+y
0e5e: 10 2f     bpl   $0e8f
0e60: 28 1f     and   a,#$1f
0e62: 38 20 58  and   $58,#$20
0e65: 0e 58 00  tset1 $0058
0e68: e5 e0 05  mov   a,$05e0
0e6b: d0 05     bne   $0e72
0e6d: 09 57 7c  or    ($7c),($57)
0e70: 2f 03     bra   $0e75
0e72: 09 57 5f  or    ($5f),($57)
0e75: e5 e1 05  mov   a,$05e1
0e78: 48 ff     eor   a,#$ff
0e7a: 24 7c     and   a,$7c
0e7c: 04 5f     or    a,$5f
0e7e: c4 59     mov   $59,a
0e80: e5 e0 05  mov   a,$05e0
0e83: d0 07     bne   $0e8c
0e85: e4 57     mov   a,$57
0e87: 25 e1 05  and   a,$05e1
0e8a: d0 46     bne   $0ed2
0e8c: dd        mov   a,y
0e8d: 2f 2a     bra   $0eb9
0e8f: e5 e0 05  mov   a,$05e0
0e92: d0 07     bne   $0e9b
0e94: e4 57     mov   a,$57
0e96: 4e 7c 00  tclr1 $007c
0e99: 2f 05     bra   $0ea0
0e9b: e4 57     mov   a,$57
0e9d: 4e 5f 00  tclr1 $005f
0ea0: e5 e1 05  mov   a,$05e1
0ea3: 48 ff     eor   a,#$ff
0ea5: 24 7c     and   a,$7c
0ea7: 04 5f     or    a,$5f
0ea9: c4 59     mov   $59,a
0eab: e5 e0 05  mov   a,$05e0
0eae: d0 07     bne   $0eb7
0eb0: e4 57     mov   a,$57
0eb2: 25 e1 05  and   a,$05e1
0eb5: d0 1b     bne   $0ed2
0eb7: f7 14     mov   a,($14)+y
0eb9: c9 f2 00  mov   $00f2,x
0ebc: c5 f3 00  mov   $00f3,a
0ebf: 3d        inc   x
0ec0: fc        inc   y
0ec1: ad 04     cmp   y,#$04
0ec3: d0 f2     bne   $0eb7
0ec5: ce        pop   x
0ec6: f7 14     mov   a,($14)+y
0ec8: d5 41 02  mov   $0241+x,a
0ecb: fc        inc   y
0ecc: f7 14     mov   a,($14)+y
0ece: d5 40 02  mov   $0240+x,a
0ed1: 6f        ret

0ed2: 8d 04     mov   y,#$04
0ed4: 2f ef     bra   $0ec5

; vcmd e1
0ed6: d5 71 04  mov   $0471+x,a
0ed9: 28 1f     and   a,#$1f
0edb: d5 31 04  mov   $0431+x,a
0ede: e8 00     mov   a,#$00
0ee0: d5 30 04  mov   $0430+x,a
0ee3: 6f        ret

; vcmd e2
0ee4: d5 31 05  mov   $0531+x,a
0ee7: 2d        push  a
0ee8: 3f 26 0e  call  $0e26
0eeb: d5 70 04  mov   $0470+x,a
0eee: 80        setc
0eef: b5 31 04  sbc   a,$0431+x
0ef2: ce        pop   x
0ef3: 3f 05 11  call  $1105
0ef6: d5 50 04  mov   $0450+x,a
0ef9: dd        mov   a,y
0efa: d5 51 04  mov   $0451+x,a
0efd: 6f        ret

; vcmd e3
0efe: d5 30 03  mov   $0330+x,a
0f01: 3f 26 0e  call  $0e26
0f04: d5 11 03  mov   $0311+x,a
0f07: 3f 26 0e  call  $0e26
; vcmd e4
0f0a: d5 71 05  mov   $0571+x,a
0f0d: d5 51 03  mov   $0351+x,a
0f10: e8 00     mov   a,#$00
0f12: d5 31 03  mov   $0331+x,a
0f15: 6f        ret

; vcmd f0
0f16: d5 31 03  mov   $0331+x,a
0f19: 2d        push  a
0f1a: 8d 00     mov   y,#$00
0f1c: f5 71 05  mov   a,$0571+x
0f1f: ce        pop   x
0f20: 9e        div   ya,x
0f21: f8 54     mov   x,$54
0f23: d5 50 03  mov   $0350+x,a
0f26: 6f        ret

; vcmd e5
0f27: dd        mov   a,y
0f28: c5 33 06  mov   $0633,a
0f2b: e5 02 06  mov   a,$0602
0f2e: d0 04     bne   $0f34
0f30: e8 00     mov   a,#$00
0f32: da 68     movw  $68,ya
0f34: 6f        ret

; vcmd e6
0f35: e5 02 06  mov   a,$0602
0f38: d0 13     bne   $0f4d
0f3a: fd        mov   y,a
0f3b: c4 6a     mov   $6a,a
0f3d: 3f 26 0e  call  $0e26
0f40: c4 6b     mov   $6b,a
0f42: 80        setc
0f43: a4 69     sbc   a,$69
0f45: f8 6a     mov   x,$6a
0f47: 3f 05 11  call  $1105
0f4a: da 6c     movw  $6c,ya
0f4c: 6f        ret

0f4d: 5f 26 0e  jmp   $0e26

; vcmd e7
0f50: e8 00     mov   a,#$00
0f52: c5 30 06  mov   $0630,a
0f55: cc 31 06  mov   $0631,y
0f58: 3f 8f 18  call  $188f
0f5b: da 62     movw  $62,ya
0f5d: 6f        ret

; vcmd e8
0f5e: c4 64     mov   $64,a
0f60: 3f 26 0e  call  $0e26
0f63: c4 65     mov   $65,a
0f65: 80        setc
0f66: a4 63     sbc   a,$63
0f68: f8 64     mov   x,$64
0f6a: 3f 05 11  call  $1105
0f6d: da 66     movw  $66,ya
0f6f: 6f        ret

; vcmd e9
0f70: c4 60     mov   $60,a
0f72: 6f        ret

; vcmd ea
0f73: d5 b0 03  mov   $03b0+x,a
0f76: 6f        ret

; vcmd eb
0f77: d5 90 03  mov   $0390+x,a
0f7a: 3f 26 0e  call  $0e26
0f7d: d5 71 03  mov   $0371+x,a
0f80: 3f 26 0e  call  $0e26
; vcmd ec
0f83: d5 91 05  mov   $0591+x,a
0f86: 6f        ret

; vcmd f1
0f87: e8 01     mov   a,#$01
0f89: 2f 02     bra   $0f8d

; vcmd f2
0f8b: e8 00     mov   a,#$00
0f8d: d5 f0 02  mov   $02f0+x,a
0f90: dd        mov   a,y
0f91: d5 d1 02  mov   $02d1+x,a
0f94: 3f 26 0e  call  $0e26
0f97: d5 d0 02  mov   $02d0+x,a
0f9a: 3f 26 0e  call  $0e26
0f9d: d5 f1 02  mov   $02f1+x,a
0fa0: 6f        ret

; vcmd f3
0fa1: d5 d0 02  mov   $02d0+x,a
0fa4: 6f        ret

; vcmd ed
0fa5: d5 d1 03  mov   $03d1+x,a
0fa8: e8 00     mov   a,#$00
0faa: d5 d0 03  mov   $03d0+x,a
0fad: 6f        ret

; vcmd ee
0fae: d5 30 05  mov   $0530+x,a
0fb1: 2d        push  a
0fb2: 3f 26 0e  call  $0e26
0fb5: d5 10 04  mov   $0410+x,a
0fb8: 80        setc
0fb9: b5 d1 03  sbc   a,$03d1+x
0fbc: ce        pop   x
0fbd: 3f 05 11  call  $1105
0fc0: d5 f0 03  mov   $03f0+x,a
0fc3: dd        mov   a,y
0fc4: d5 f1 03  mov   $03f1+x,a
0fc7: 6f        ret

; vcmd f4
0fc8: d5 d1 04  mov   $04d1+x,a
0fcb: 6f        ret

; vcmd ef
0fcc: d5 80 02  mov   $0280+x,a
0fcf: 3f 26 0e  call  $0e26
0fd2: d5 81 02  mov   $0281+x,a
0fd5: 3f 26 0e  call  $0e26
0fd8: d5 10 05  mov   $0510+x,a
0fdb: f4 30     mov   a,$30+x
0fdd: d5 60 02  mov   $0260+x,a
0fe0: f4 31     mov   a,$31+x
0fe2: d5 61 02  mov   $0261+x,a
0fe5: f5 80 02  mov   a,$0280+x
0fe8: d4 30     mov   $30+x,a
0fea: f5 81 02  mov   a,$0281+x
0fed: d4 31     mov   $31+x,a
0fef: 6f        ret

; vcmd f5
0ff0: c4 5a     mov   $5a,a
0ff2: 3f 26 0e  call  $0e26
0ff5: e8 00     mov   a,#$00
0ff7: da 70     movw  $70,ya
0ff9: 3f 26 0e  call  $0e26
0ffc: e8 00     mov   a,#$00
0ffe: da 72     movw  $72,ya
1000: b2 58     clr5  $58
1002: 6f        ret

; vcmd f8
1003: c4 78     mov   $78,a
1005: 3f 26 0e  call  $0e26
1008: c4 79     mov   $79,a
100a: 80        setc
100b: a4 71     sbc   a,$71
100d: f8 78     mov   x,$78
100f: 3f 05 11  call  $1105
1012: da 74     movw  $74,ya
1014: 3f 26 0e  call  $0e26
1017: c4 7a     mov   $7a,a
1019: 80        setc
101a: a4 73     sbc   a,$73
101c: f8 78     mov   x,$78
101e: 3f 05 11  call  $1105
1021: da 76     movw  $76,ya
1023: 6f        ret

; vcmd f6
1024: da 70     movw  $70,ya
1026: da 72     movw  $72,ya
1028: a2 58     set5  $58
102a: 6f        ret

; vcmd f7
102b: 3f 4d 10  call  $104d
102e: 3f 26 0e  call  $0e26
1031: c4 5e     mov   $5e,a
1033: 3f 26 0e  call  $0e26
1036: 8d 08     mov   y,#$08
1038: cf        mul   ya
1039: 5d        mov   x,a
103a: 8d 0f     mov   y,#$0f
103c: f5 b7 14  mov   a,$14b7+x
103f: 3f e6 0a  call  $0ae6
1042: 3d        inc   x
1043: dd        mov   a,y
1044: 60        clrc
1045: 88 10     adc   a,#$10
1047: fd        mov   y,a
1048: 10 f2     bpl   $103c
104a: f8 54     mov   x,$54
104c: 6f        ret

104d: c4 5d     mov   $5d,a
104f: 8d 7d     mov   y,#$7d
1051: cc f2 00  mov   $00f2,y
1054: e5 f3 00  mov   a,$00f3
1057: 64 5d     cmp   a,$5d
1059: f0 2b     beq   $1086
105b: 28 0f     and   a,#$0f
105d: 48 ff     eor   a,#$ff
105f: f3 5c 03  bbc7  $5c,$1065
1062: 60        clrc
1063: 84 5c     adc   a,$5c
1065: c4 5c     mov   $5c,a
1067: 8d 04     mov   y,#$04
1069: f6 d6 14  mov   a,$14d6+y
106c: c5 f2 00  mov   $00f2,a
106f: e8 00     mov   a,#$00
1071: c5 f3 00  mov   $00f3,a
1074: fe f3     dbnz  y,$1069
1076: e4 58     mov   a,$58
1078: 08 20     or    a,#$20
107a: 8d 6c     mov   y,#$6c
107c: 3f e6 0a  call  $0ae6
107f: e4 5d     mov   a,$5d
1081: 8d 7d     mov   y,#$7d
1083: 3f e6 0a  call  $0ae6
1086: 1c        asl   a
1087: 1c        asl   a
1088: 1c        asl   a
1089: 48 ff     eor   a,#$ff
108b: 80        setc
108c: 88 e0     adc   a,#$e0
108e: 8d 6d     mov   y,#$6d
1090: 5f e6 0a  jmp   $0ae6

; vcmd fa
1093: c8 10     cmp   x,#$10
1095: 10 02     bpl   $1099
1097: c4 6f     mov   $6f,a
1099: 6f        ret

; vcmd fb
109a: c5 f7 00  mov   $00f7,a
109d: 3f 28 0e  call  $0e28
10a0: 6f        ret

; vcmd fc
10a1: bc        inc   a
10a2: d5 c0 05  mov   $05c0+x,a
10a5: 6f        ret

; vcmd fd
10a6: bc        inc   a
; vcmd fe
10a7: c4 1b     mov   $1b,a
10a9: 5f 54 0b  jmp   $0b54

10ac: f5 50 05  mov   a,$0550+x
10af: d0 39     bne   $10ea
10b1: e7 30     mov   a,($30+x)
10b3: 68 f9     cmp   a,#$f9
10b5: d0 33     bne   $10ea
10b7: 3f 28 0e  call  $0e28
10ba: 3f 26 0e  call  $0e26
; vcmd f9
10bd: d5 51 05  mov   $0551+x,a
10c0: 3f 26 0e  call  $0e26
10c3: d5 50 05  mov   $0550+x,a
10c6: 3f 26 0e  call  $0e26
10c9: 60        clrc
10ca: 84 60     adc   a,$60
10cc: 95 b0 03  adc   a,$03b0+x
10cf: 28 7f     and   a,#$7f
10d1: d5 d0 04  mov   $04d0+x,a
10d4: 80        setc
10d5: b5 91 04  sbc   a,$0491+x
10d8: 2d        push  a
10d9: f5 50 05  mov   a,$0550+x
10dc: fd        mov   y,a
10dd: ae        pop   a
10de: 6d        push  y
10df: ce        pop   x
10e0: 3f 05 11  call  $1105
10e3: d5 b0 04  mov   $04b0+x,a
10e6: dd        mov   a,y
10e7: d5 b1 04  mov   $04b1+x,a
10ea: 6f        ret

10eb: c8 10     cmp   x,#$10
10ed: 10 0b     bpl   $10fa
10ef: f5 91 04  mov   a,$0491+x
10f2: c4 11     mov   $11,a
10f4: f5 90 04  mov   a,$0490+x
10f7: c4 10     mov   $10,a
10f9: 6f        ret

10fa: f5 91 04  mov   a,$0491+x
10fd: c4 1d     mov   $1d,a
10ff: f5 90 04  mov   a,$0490+x
1102: c4 1c     mov   $1c,a
1104: 6f        ret

1105: ed        notc
1106: 6b 12     ror   $12
1108: 10 03     bpl   $110d
110a: 48 ff     eor   a,#$ff
110c: bc        inc   a
110d: 8d 00     mov   y,#$00
110f: 9e        div   ya,x
1110: 2d        push  a
1111: e8 00     mov   a,#$00
1113: 9e        div   ya,x
1114: ee        pop   y
1115: f8 54     mov   x,$54
1117: f3 12 06  bbc7  $12,$1120
111a: da 14     movw  $14,ya
111c: ba 0e     movw  ya,$0e
111e: 9a 14     subw  ya,$14
1120: 6f        ret

; vcmd dispatch table
1121: dw $0e30  ; e0
1123: dw $0ed6  ; e1
1125: dw $0ee4  ; e2
1127: dw $0efe  ; e3
1129: dw $0f0a  ; e4
112b: dw $0f27  ; e5
112d: dw $0f35  ; e6
112f: dw $0f50  ; e7
1131: dw $0f5e  ; e8
1133: dw $0f70  ; e9
1135: dw $0f73  ; ea
1137: dw $0f77  ; eb
1139: dw $0f83  ; ec
113b: dw $0fa5  ; ed
113d: dw $0fae  ; ee
113f: dw $0fcc  ; ef
1141: dw $0f16  ; f0
1143: dw $0f87  ; f1
1145: dw $0f8b  ; f2
1147: dw $0fa1  ; f3
1149: dw $0fc8  ; f4
114b: dw $0ff0  ; f5
114d: dw $1024  ; f6
114f: dw $102b  ; f7
1151: dw $1003  ; f8
1153: dw $10bd  ; f9
1155: dw $1093  ; fa
1157: dw $109a  ; fb
1159: dw $10a1  ; fc
115b: dw $10a6  ; fd
115d: dw $10a7  ; fe

; vcmd length table
1160: db $01,$01,$02,$03,$00,$01,$02,$01
1168: db $02,$01,$01,$03,$00,$01,$02,$03
1170: db $01,$03,$03,$00,$01,$03,$00,$03
1178: db $03,$03,$01,$02,$00,$00,$00

117e: f5 30 05  mov   a,$0530+x
1181: f0 10     beq   $1193
1183: e8 d0     mov   a,#$d0
1185: 8d 03     mov   y,#$03
1187: 2d        push  a
1188: f5 30 05  mov   a,$0530+x
118b: 9c        dec   a
118c: d5 30 05  mov   $0530+x,a
118f: ae        pop   a
1190: 3f 57 12  call  $1257
1193: 2d        push  a
1194: f5 91 05  mov   a,$0591+x
1197: fd        mov   y,a
1198: ae        pop   a
1199: f0 2c     beq   $11c7
119b: f5 90 03  mov   a,$0390+x
119e: 75 90 05  cmp   a,$0590+x
11a1: d0 1b     bne   $11be
11a3: 09 57 6e  or    ($6e),($57)
11a6: f5 70 03  mov   a,$0370+x
11a9: 10 07     bpl   $11b2
11ab: fc        inc   y
11ac: d0 04     bne   $11b2
11ae: e8 80     mov   a,#$80
11b0: 2f 04     bra   $11b6
11b2: 60        clrc
11b3: 95 71 03  adc   a,$0371+x
11b6: d5 70 03  mov   $0370+x,a
11b9: 3f 78 14  call  $1478
11bc: 2f 0e     bra   $11cc
11be: 2d        push  a
11bf: f5 90 05  mov   a,$0590+x
11c2: bc        inc   a
11c3: d5 90 05  mov   $0590+x,a
11c6: ae        pop   a
11c7: e8 ff     mov   a,#$ff
11c9: 3f 87 14  call  $1487
11cc: f5 31 05  mov   a,$0531+x
11cf: f0 10     beq   $11e1
11d1: e8 30     mov   a,#$30
11d3: 8d 04     mov   y,#$04
11d5: 2d        push  a
11d6: f5 31 05  mov   a,$0531+x
11d9: 9c        dec   a
11da: d5 31 05  mov   $0531+x,a
11dd: ae        pop   a
11de: 3f 57 12  call  $1257
11e1: e4 57     mov   a,$57
11e3: 24 6e     and   a,$6e
11e5: f0 6f     beq   $1256
11e7: e5 2f 06  mov   a,$062f
11ea: f0 06     beq   $11f2
11ec: 8d 0a     mov   y,#$0a
11ee: e8 00     mov   a,#$00
11f0: 2f 07     bra   $11f9
11f2: f5 31 04  mov   a,$0431+x
11f5: fd        mov   y,a
11f6: f5 30 04  mov   a,$0430+x
11f9: c8 10     cmp   x,#$10
11fb: 10 04     bpl   $1201
11fd: da 10     movw  $10,ya
11ff: 2f 02     bra   $1203
1201: da 1c     movw  $1c,ya
1203: 7d        mov   a,x
1204: 9f        xcn   a
1205: 5c        lsr   a
1206: c4 12     mov   $12,a
1208: 3f c8 0a  call  $0ac8
120b: fd        mov   y,a
120c: f6 a3 14  mov   a,$14a3+y
120f: 80        setc
1210: b6 a2 14  sbc   a,$14a2+y
1213: c8 10     cmp   x,#$10
1215: 10 04     bpl   $121b
1217: eb 10     mov   y,$10
1219: 2f 02     bra   $121d
121b: eb 1c     mov   y,$1c
121d: cf        mul   ya
121e: dd        mov   a,y
121f: 3f c8 0a  call  $0ac8
1222: fd        mov   y,a
1223: 60        clrc
1224: 96 a2 14  adc   a,$14a2+y
1227: fd        mov   y,a
1228: f5 11 04  mov   a,$0411+x
122b: cf        mul   ya
122c: f5 71 04  mov   a,$0471+x
122f: 1c        asl   a
1230: 13 12 01  bbc0  $12,$1234
1233: 1c        asl   a
1234: dd        mov   a,y
1235: 90 03     bcc   $123a
1237: 48 ff     eor   a,#$ff
1239: bc        inc   a
123a: eb 12     mov   y,$12
123c: 3f d2 0a  call  $0ad2
123f: 8d 14     mov   y,#$14
1241: e8 00     mov   a,#$00
1243: c8 10     cmp   x,#$10
1245: 10 06     bpl   $124d
1247: 9a 10     subw  ya,$10
1249: da 10     movw  $10,ya
124b: 2f 04     bra   $1251
124d: 9a 1c     subw  ya,$1c
124f: da 1c     movw  $1c,ya
1251: ab 12     inc   $12
1253: 33 12 b2  bbc1  $12,$1208
1256: 6f        ret

1257: 09 57 6e  or    ($6e),($57)
125a: da 14     movw  $14,ya
125c: da 16     movw  $16,ya
125e: 4d        push  x
125f: ee        pop   y
1260: 60        clrc
1261: d0 0a     bne   $126d
1263: 98 3f 16  adc   $16,#$3f
1266: e8 00     mov   a,#$00
1268: d7 14     mov   ($14)+y,a
126a: fc        inc   y
126b: 2f 09     bra   $1276
126d: 98 20 16  adc   $16,#$20
1270: 3f 74 12  call  $1274
1273: fc        inc   y
1274: f7 14     mov   a,($14)+y
1276: 97 16     adc   a,($16)+y
1278: d7 14     mov   ($14)+y,a
127a: 6f        ret

127b: f5 f1 04  mov   a,$04f1+x
127e: f0 77     beq   $12f7
1280: 2d        push  a
1281: f5 f1 04  mov   a,$04f1+x
1284: 9c        dec   a
1285: d5 f1 04  mov   $04f1+x,a
1288: ae        pop   a
1289: f0 07     beq   $1292
128b: e8 02     mov   a,#$02
128d: 75 f0 04  cmp   a,$04f0+x
1290: d0 65     bne   $12f7
1292: f5 10 05  mov   a,$0510+x
1295: c4 17     mov   $17,a
1297: f4 30     mov   a,$30+x
1299: fb 31     mov   y,$31+x
129b: da 14     movw  $14,ya
129d: 8d 00     mov   y,#$00
129f: f7 14     mov   a,($14)+y
12a1: f0 1c     beq   $12bf
12a3: 30 05     bmi   $12aa
12a5: fc        inc   y
12a6: f7 14     mov   a,($14)+y
12a8: 10 fb     bpl   $12a5
12aa: 68 c8     cmp   a,#$c8
12ac: f0 49     beq   $12f7
12ae: 68 ef     cmp   a,#$ef
12b0: f0 29     beq   $12db
12b2: 68 e0     cmp   a,#$e0
12b4: 90 30     bcc   $12e6
12b6: 6d        push  y
12b7: fd        mov   y,a
12b8: ae        pop   a
12b9: 96 7f 10  adc   a,$107f+y
12bc: fd        mov   y,a
12bd: 2f e0     bra   $129f
12bf: e4 17     mov   a,$17
12c1: f0 23     beq   $12e6
12c3: 8b 17     dec   $17
12c5: d0 0a     bne   $12d1
12c7: f5 61 02  mov   a,$0261+x
12ca: 2d        push  a
12cb: f5 60 02  mov   a,$0260+x
12ce: ee        pop   y
12cf: 2f ca     bra   $129b
12d1: f5 81 02  mov   a,$0281+x
12d4: 2d        push  a
12d5: f5 80 02  mov   a,$0280+x
12d8: ee        pop   y
12d9: 2f c0     bra   $129b
12db: fc        inc   y
12dc: f7 14     mov   a,($14)+y
12de: 2d        push  a
12df: fc        inc   y
12e0: f7 14     mov   a,($14)+y
12e2: fd        mov   y,a
12e3: ae        pop   a
12e4: 2f b5     bra   $129b
12e6: e4 57     mov   a,$57
12e8: 48 ff     eor   a,#$ff
12ea: 25 34 06  and   a,$0634
12ed: c5 34 06  mov   $0634,a
12f0: e4 57     mov   a,$57
12f2: 8d 5c     mov   y,#$5c
12f4: 3f d2 0a  call  $0ad2
12f7: c8 10     cmp   x,#$10
12f9: 10 04     bpl   $12ff
12fb: f2 13     clr7  $13
12fd: 2f 02     bra   $1301
12ff: f2 2b     clr7  $2b
1301: f5 50 05  mov   a,$0550+x
1304: f0 2a     beq   $1330
1306: f5 51 05  mov   a,$0551+x
1309: f0 0b     beq   $1316
130b: 2d        push  a
130c: f5 51 05  mov   a,$0551+x
130f: 9c        dec   a
1310: d5 51 05  mov   $0551+x,a
1313: ae        pop   a
1314: 2f 1a     bra   $1330
1316: c8 10     cmp   x,#$10
1318: 10 04     bpl   $131e
131a: e2 13     set7  $13
131c: 2f 02     bra   $1320
131e: e2 2b     set7  $2b
1320: e8 90     mov   a,#$90
1322: 8d 04     mov   y,#$04
1324: 2d        push  a
1325: f5 50 05  mov   a,$0550+x
1328: 9c        dec   a
1329: d5 50 05  mov   $0550+x,a
132c: ae        pop   a
132d: 3f 5a 12  call  $125a
1330: 3f eb 10  call  $10eb
1333: f5 71 05  mov   a,$0571+x
1336: f0 58     beq   $1390
1338: f5 30 03  mov   a,$0330+x
133b: 75 70 05  cmp   a,$0570+x
133e: d0 47     bne   $1387
1340: f5 00 01  mov   a,$0100+x
1343: 75 31 03  cmp   a,$0331+x
1346: d0 05     bne   $134d
1348: f5 51 03  mov   a,$0351+x
134b: 2f 0e     bra   $135b
134d: 40        setp
134e: bb 00     inc   $00+x
1350: 20        clrp
1351: fd        mov   y,a
1352: f0 03     beq   $1357
1354: f5 71 05  mov   a,$0571+x
1357: 60        clrc
1358: 95 50 03  adc   a,$0350+x
135b: d5 71 05  mov   $0571+x,a
135e: f5 10 03  mov   a,$0310+x
1361: 60        clrc
1362: 95 11 03  adc   a,$0311+x
1365: d5 10 03  mov   $0310+x,a
1368: c4 12     mov   $12,a
136a: 1c        asl   a
136b: 1c        asl   a
136c: 90 02     bcc   $1370
136e: 48 ff     eor   a,#$ff
1370: fd        mov   y,a
1371: f5 71 05  mov   a,$0571+x
1374: 68 f1     cmp   a,#$f1
1376: 90 05     bcc   $137d
1378: 28 0f     and   a,#$0f
137a: cf        mul   ya
137b: 2f 04     bra   $1381
137d: cf        mul   ya
137e: dd        mov   a,y
137f: 8d 00     mov   y,#$00
1381: 3f 51 14  call  $1451
1384: 5f 1f 0a  jmp   $0a1f

1387: 2d        push  a
1388: f5 70 05  mov   a,$0570+x
138b: bc        inc   a
138c: d5 70 05  mov   $0570+x,a
138f: ae        pop   a
1390: c8 10     cmp   x,#$10
1392: 10 05     bpl   $1399
1394: e3 13 ed  bbs7  $13,$1384
1397: 2f 03     bra   $139c
1399: e3 2b e8  bbs7  $2b,$1384
139c: 6f        ret

139d: c8 10     cmp   x,#$10
139f: 10 04     bpl   $13a5
13a1: f2 13     clr7  $13
13a3: 2f 02     bra   $13a7
13a5: f2 2b     clr7  $2b
13a7: f5 91 05  mov   a,$0591+x
13aa: f0 0b     beq   $13b7
13ac: f5 90 03  mov   a,$0390+x
13af: 75 90 05  cmp   a,$0590+x
13b2: d0 03     bne   $13b7
13b4: 3f 63 14  call  $1463
13b7: e5 2f 06  mov   a,$062f
13ba: f0 06     beq   $13c2
13bc: 8d 0a     mov   y,#$0a
13be: e8 00     mov   a,#$00
13c0: 2f 07     bra   $13c9
13c2: f5 31 04  mov   a,$0431+x
13c5: fd        mov   y,a
13c6: f5 30 04  mov   a,$0430+x
13c9: c8 10     cmp   x,#$10
13cb: 10 04     bpl   $13d1
13cd: da 10     movw  $10,ya
13cf: 2f 02     bra   $13d3
13d1: da 1c     movw  $1c,ya
13d3: f5 31 05  mov   a,$0531+x
13d6: f0 0a     beq   $13e2
13d8: f5 51 04  mov   a,$0451+x
13db: fd        mov   y,a
13dc: f5 50 04  mov   a,$0450+x
13df: 3f 33 14  call  $1433
13e2: c8 10     cmp   x,#$10
13e4: 10 05     bpl   $13eb
13e6: f3 13 08  bbc7  $13,$13f1
13e9: 2f 03     bra   $13ee
13eb: f3 2b 03  bbc7  $2b,$13f1
13ee: 3f 03 12  call  $1203
13f1: c8 10     cmp   x,#$10
13f3: 10 04     bpl   $13f9
13f5: f2 13     clr7  $13
13f7: 2f 02     bra   $13fb
13f9: f2 2b     clr7  $2b
13fb: 3f eb 10  call  $10eb
13fe: f5 50 05  mov   a,$0550+x
1401: f0 0f     beq   $1412
1403: f5 51 05  mov   a,$0551+x
1406: d0 0a     bne   $1412
1408: f5 b1 04  mov   a,$04b1+x
140b: fd        mov   y,a
140c: f5 b0 04  mov   a,$04b0+x
140f: 3f 33 14  call  $1433
1412: f5 71 05  mov   a,$0571+x
1415: d0 03     bne   $141a
1417: 5f 90 13  jmp   $1390

141a: f5 30 03  mov   a,$0330+x
141d: 75 70 05  cmp   a,$0570+x
1420: f0 03     beq   $1425
1422: 5f 90 13  jmp   $1390

1425: eb 61     mov   y,$61
1427: f5 11 03  mov   a,$0311+x
142a: cf        mul   ya
142b: dd        mov   a,y
142c: 60        clrc
142d: 95 10 03  adc   a,$0310+x
1430: 5f 68 13  jmp   $1368

1433: c8 10     cmp   x,#$10
1435: 10 04     bpl   $143b
1437: e2 13     set7  $13
1439: 2f 02     bra   $143d
143b: e2 2b     set7  $2b
143d: cb 12     mov   $12,y
143f: 3f 17 11  call  $1117
1442: 6d        push  y
1443: eb 61     mov   y,$61
1445: cf        mul   ya
1446: cb 14     mov   $14,y
1448: 8f 00 15  mov   $15,#$00
144b: eb 61     mov   y,$61
144d: ae        pop   a
144e: cf        mul   ya
144f: 7a 14     addw  ya,$14
1451: 3f 17 11  call  $1117
1454: c8 10     cmp   x,#$10
1456: 10 06     bpl   $145e
1458: 7a 10     addw  ya,$10
145a: da 10     movw  $10,ya
145c: 2f 04     bra   $1462
145e: 7a 1c     addw  ya,$1c
1460: da 1c     movw  $1c,ya
1462: 6f        ret

1463: c8 10     cmp   x,#$10
1465: 10 04     bpl   $146b
1467: e2 13     set7  $13
1469: 2f 02     bra   $146d
146b: e2 2b     set7  $2b
146d: eb 61     mov   y,$61
146f: f5 71 03  mov   a,$0371+x
1472: cf        mul   ya
1473: dd        mov   a,y
1474: 60        clrc
1475: 95 70 03  adc   a,$0370+x
1478: 1c        asl   a
1479: 90 02     bcc   $147d
147b: 48 ff     eor   a,#$ff
147d: 2d        push  a
147e: f5 91 05  mov   a,$0591+x
1481: fd        mov   y,a
1482: ae        pop   a
1483: cf        mul   ya
1484: dd        mov   a,y
1485: 48 ff     eor   a,#$ff
1487: eb 69     mov   y,$69
1489: cf        mul   ya
148a: f5 20 02  mov   a,$0220+x
148d: cf        mul   ya
148e: f5 d1 03  mov   a,$03d1+x
1491: cf        mul   ya
1492: dd        mov   a,y
1493: cf        mul   ya
1494: e5 38 06  mov   a,$0638
1497: 24 57     and   a,$57
1499: f0 02     beq   $149d
149b: 8d 00     mov   y,#$00
149d: dd        mov   a,y
149e: d5 11 04  mov   $0411+x,a
14a1: 6f        ret

14a2: db $00,$01,$03,$07,$0d,$15,$1e,$29
14aa: db $34,$42,$51,$5e,$67,$6e,$73,$77
14b2: db $7a,$7c,$7d,$7e,$7f

14b7: db $7f,$00,$00,$00,$00,$00,$00,$00
14bf: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
14c7: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
14cf: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

14d7: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
14e1: db $71,$73,$5e,$5a,$58,$55,$0e,$59,$5b,$56

14eb: dw $085f
14ed: dw $08de
14ef: dw $0965
14f1: dw $09f4
14f3: dw $0a8c
14f5: dw $0b2c
14f7: dw $0bd6
14f9: dw $0c8b
14fb: dw $0d4a
14fd: dw $0e14
14ff: dw $0eea
1501: dw $0fcd
1503: dw $10be

1505: e8 aa     mov   a,#$aa
1507: c5 f4 00  mov   a,$00f4
150a: e8 bb     mov   a,#$bb
150c: c5 f5 00  mov   $00f5,a
150f: e5 f4 00  mov   a,$00f4
1512: 68 dd     cmp   a,#$dd
1514: f0 78     beq   $158e
1516: 68 cc     cmp   a,#$cc
1518: d0 f5     bne   $150f
151a: 2f 20     bra   $153c
151c: ec f4 00  mov   y,$00f4
151f: d0 fb     bne   $151c
1521: 5e f4 00  cmp   y,$00f4
1524: d0 0f     bne   $1535
1526: e5 f5 00  mov   a,$00f5
1529: cc f4 00  mov   $00f4,y
152c: d7 14     mov   ($14)+y,a
152e: fc        inc   y
152f: d0 f0     bne   $1521
1531: ab 15     inc   $15
1533: 2f ec     bra   $1521
1535: 10 ea     bpl   $1521
1537: 5e f4 00  cmp   y,$00f4
153a: 10 e5     bpl   $1521
153c: 8d 00     mov   y,#$00
153e: dc        dec   y
153f: d0 fd     bne   $153e
1541: e5 f6 00  mov   a,$00f6
1544: ec f7 00  mov   y,$00f7
1547: da 14     movw  $14,ya
1549: ec f4 00  mov   y,$00f4
154c: e5 f5 00  mov   a,$00f5
154f: cc f4 00  mov   $00f4,y
1552: d0 c8     bne   $151c
1554: cd 31     mov   x,#$31
1556: c9 f1 00  mov   $00f1,x
1559: 6f        ret

155a: ec f4 00  mov   y,$00f4
155d: d0 fb     bne   $155a
155f: 5e f4 00  cmp   y,$00f4
1562: d0 23     bne   $1587
1564: cc f4 00  mov   $00f4,y
1567: e5 f5 00  mov   a,$00f5
156a: d7 14     mov   ($14)+y,a
156c: fc        inc   y
156d: d0 02     bne   $1571
156f: ab 15     inc   $15
1571: e5 f6 00  mov   a,$00f6
1574: d7 14     mov   ($14)+y,a
1576: fc        inc   y
1577: d0 02     bne   $157b
1579: ab 15     inc   $15
157b: e5 f7 00  mov   a,$00f7
157e: d7 14     mov   ($14)+y,a
1580: fc        inc   y
1581: d0 02     bne   $1585
1583: ab 15     inc   $15
1585: 2f d8     bra   $155f
1587: 10 d6     bpl   $155f
1589: 5e f4 00  cmp   y,$00f4
158c: 10 d1     bpl   $155f
158e: 8d 00     mov   y,#$00
1590: dc        dec   y
1591: d0 fd     bne   $1590
1593: e5 f6 00  mov   a,$00f6
1596: ec f7 00  mov   y,$00f7
1599: da 14     movw  $14,ya
159b: ec f4 00  mov   y,$00f4
159e: e5 f5 00  mov   a,$00f5
15a1: cc f4 00  mov   $00f4,y
15a4: d0 b4     bne   $155a
15a6: cd 31     mov   x,#$31
15a8: c9 f1 00  mov   $00f1,x
15ab: 6f        ret

15ac: e4 01     mov   a,$01
15ae: c4 09     mov   $09,a
15b0: cd 01     mov   x,#$01
15b2: 3f 6c 09  call  $096c
15b5: e4 01     mov   a,$01
15b7: c4 05     mov   $05,a
15b9: 30 09     bmi   $15c4
15bb: f0 06     beq   $15c3
15bd: 64 09     cmp   a,$09
15bf: f0 02     beq   $15c3
15c1: 2f 7e     bra   $1641
15c3: 6f        ret

15c4: f8 57     mov   x,$57
15c6: 4d        push  x
15c7: 28 7f     and   a,#$7f
15c9: c4 14     mov   $14,a
15cb: cd 07     mov   x,#$07
15cd: 8f 80 57  mov   $57,#$80
15d0: e5 e1 05  mov   a,$05e1
15d3: 24 57     and   a,$57
15d5: f0 61     beq   $1638
15d7: e4 14     mov   a,$14
15d9: f0 05     beq   $15e0
15db: 75 05 06  cmp   a,$0605+x
15de: d0 58     bne   $1638
15e0: e5 e1 05  mov   a,$05e1
15e3: 44 57     eor   a,$57
15e5: c5 e1 05  mov   $05e1,a
15e8: e8 5c     mov   a,#$5c
15ea: c5 f2 00  mov   $00f2,a
15ed: e4 57     mov   a,$57
15ef: c5 f3 00  mov   $00f3,a
15f2: e8 5c     mov   a,#$5c
15f4: c5 f2 00  mov   $00f2,a
15f7: e8 00     mov   a,#$00
15f9: c5 f3 00  mov   $00f3,a
15fc: e4 57     mov   a,$57
15fe: 04 56     or    a,$56
1600: c4 56     mov   $56,a
1602: e4 57     mov   a,$57
1604: 4e 5f 00  tclr1 $005f
1607: e5 e1 05  mov   a,$05e1
160a: 48 ff     eor   a,#$ff
160c: 24 7c     and   a,$7c
160e: 04 5f     or    a,$5f
1610: c4 59     mov   $59,a
1612: 4d        push  x
1613: 7d        mov   a,x
1614: 1c        asl   a
1615: 5d        mov   x,a
1616: e8 00     mov   a,#$00
1618: d5 40 00  mov   $0040+x,a
161b: d5 41 00  mov   $0041+x,a
161e: d5 e2 05  mov   $05e2+x,a
1621: d5 e1 03  mov   $03e1+x,a
1624: d5 e0 03  mov   $03e0+x,a
1627: d5 40 05  mov   $0540+x,a
162a: d5 01 05  mov   $0501+x,a
162d: bc        inc   a
162e: d5 00 05  mov   $0500+x,a
1631: f5 21 02  mov   a,$0221+x
1634: 3f 30 0e  call  $0e30
1637: ce        pop   x
1638: 4b 57     lsr   $57
163a: 1d        dec   x
163b: 10 93     bpl   $15d0
163d: ae        pop   a
163e: c4 57     mov   $57,a
1640: 6f        ret

1641: 3f c4 15  call  $15c4
1644: e4 0c     mov   a,$0c
1646: 68 02     cmp   a,#$02
1648: f0 f6     beq   $1640
164a: e4 01     mov   a,$01
164c: 9c        dec   a
164d: 1c        asl   a
164e: fd        mov   y,a
164f: f6 00 1f  mov   a,$1f00+y
1652: c4 1e     mov   $1e,a
1654: f6 01 1f  mov   a,$1f01+y
1657: c4 1f     mov   $1f,a
1659: 8d 00     mov   y,#$00
165b: cd 07     mov   x,#$07
165d: 8f 08 14  mov   $14,#$08
1660: e5 e1 05  mov   a,$05e1
1663: 35 02 19  and   a,$1902+x
1666: d0 08     bne   $1670
1668: f5 02 19  mov   a,$1902+x
166b: 25 3b 19  and   a,$193b
166e: f0 06     beq   $1676
1670: 1d        dec   x
1671: 6e 14 ec  dbnz  $14,$1660
1674: 2f 64     bra   $16da
1676: e5 e1 05  mov   a,$05e1
1679: 15 02 19  or    a,$1902+x
167c: c5 e1 05  mov   $05e1,a
167f: e4 01     mov   a,$01
1681: d5 05 06  mov   $0605+x,a
1684: 4d        push  x
1685: 7d        mov   a,x
1686: 1c        asl   a
1687: 5d        mov   x,a
1688: e8 00     mov   a,#$00
168a: d5 71 05  mov   $0571+x,a
168d: d5 51 03  mov   $0351+x,a
1690: d5 31 03  mov   $0331+x,a
1693: d5 91 05  mov   $0591+x,a
1696: d5 71 04  mov   $0471+x,a
1699: d5 81 05  mov   $0581+x,a
169c: d5 61 03  mov   $0361+x,a
169f: d5 41 03  mov   $0341+x,a
16a2: d5 a1 05  mov   $05a1+x,a
16a5: d5 81 04  mov   $0481+x,a
16a8: d5 c0 03  mov   $03c0+x,a
16ab: d5 31 02  mov   $0231+x,a
16ae: d5 e1 04  mov   $04e1+x,a
16b1: d5 e0 02  mov   $02e0+x,a
16b4: d5 d0 05  mov   $05d0+x,a
16b7: d5 40 05  mov   $0540+x,a
16ba: d5 e1 03  mov   $03e1+x,a
16bd: d5 e0 03  mov   $03e0+x,a
16c0: d5 41 05  mov   $0541+x,a
16c3: d5 40 04  mov   $0440+x,a
16c6: e8 0a     mov   a,#$0a
16c8: d5 41 04  mov   $0441+x,a
16cb: f7 1e     mov   a,($1e)+y
16cd: d4 40     mov   $40+x,a
16cf: fc        inc   y
16d0: f7 1e     mov   a,($1e)+y
16d2: d4 41     mov   $41+x,a
16d4: fc        inc   y
16d5: ce        pop   x
16d6: f7 1e     mov   a,($1e)+y
16d8: d0 86     bne   $1660
16da: 6f        ret

16db: 3f 26 0e  call  $0e26
16de: 4d        push  x
16df: 1c        asl   a
16e0: 5d        mov   x,a
16e1: 1f e4 16  jmp   ($16e4+x)

16e4: ea 16 5b  not1  $1b16,2
16e7: 17 2c     or    a,($2c)+y
16e9: 17 ce     or    a,($ce)+y
16eb: 4d        push  x
16ec: e4 57     mov   a,$57
16ee: 8d 5c     mov   y,#$5c
16f0: 3f e6 0a  call  $0ae6
16f3: 45 e1 05  eor   a,$05e1
16f6: c5 e1 05  mov   $05e1,a
16f9: e8 00     mov   a,#$00
16fb: d4 30     mov   $30+x,a
16fd: d4 31     mov   $31+x,a
16ff: bc        inc   a
1700: d5 f0 04  mov   $04f0+x,a
1703: e4 57     mov   a,$57
1705: 4e 5f 00  tclr1 $005f
1708: e5 e1 05  mov   a,$05e1
170b: 48 ff     eor   a,#$ff
170d: 24 7c     and   a,$7c
170f: 04 5f     or    a,$5f
1711: c4 59     mov   $59,a
1713: 7d        mov   a,x
1714: 28 0f     and   a,#$0f
1716: 5d        mov   x,a
1717: f5 21 02  mov   a,$0221+x
171a: 3f 30 0e  call  $0e30
171d: 7d        mov   a,x
171e: 5c        lsr   a
171f: 5d        mov   x,a
1720: f5 05 06  mov   a,$0605+x
1723: c4 06     mov   $06,a
1725: cd 02     mov   x,#$02
1727: 3f 6c 09  call  $096c
172a: ce        pop   x
172b: 6f        ret

172c: ce        pop   x
172d: 3f 26 0e  call  $0e26
1730: c4 14     mov   $14,a
1732: 3f 26 0e  call  $0e26
1735: c4 15     mov   $15,a
1737: 3f 26 0e  call  $0e26
173a: 9c        dec   a
173b: c4 16     mov   $16,a
173d: f0 ac     beq   $16eb
173f: f5 e2 05  mov   a,$05e2+x
1742: f0 10     beq   $1754
1744: 9c        dec   a
1745: d5 e2 05  mov   $05e2+x,a
1748: f0 a1     beq   $16eb
174a: e4 14     mov   a,$14
174c: d4 30     mov   $30+x,a
174e: e4 15     mov   a,$15
1750: d4 31     mov   $31+x,a
1752: 2f 14     bra   $1768
1754: e4 16     mov   a,$16
1756: d5 e2 05  mov   $05e2+x,a
1759: 2f ef     bra   $174a
175b: ce        pop   x
175c: 3f 26 0e  call  $0e26
175f: 2d        push  a
1760: 3f 26 0e  call  $0e26
1763: d4 31     mov   $31+x,a
1765: ae        pop   a
1766: d4 30     mov   $30+x,a
1768: e8 00     mov   a,#$00
176a: d5 f1 04  mov   $04f1+x,a
176d: bc        inc   a
176e: d5 f0 04  mov   $04f0+x,a
1771: 6f        ret

1772: e5 02 06  mov   a,$0602
1775: d0 fa     bne   $1771
1777: e8 01     mov   a,#$01
1779: c5 02 06  mov   $0602,a
177c: 9c        dec   a
177d: c4 6b     mov   $6b,a
177f: e4 69     mov   a,$69
1781: c5 33 06  mov   $0633,a
1784: e5 f7 00  mov   a,$00f7
1787: d0 02     bne   $178b
1789: e8 20     mov   a,#$20
178b: c4 6a     mov   $6a,a
178d: e4 6b     mov   a,$6b
178f: 5f 42 0f  jmp   $0f42

1792: e5 02 06  mov   a,$0602
1795: 9c        dec   a
1796: f0 04     beq   $179c
1798: e8 00     mov   a,#$00
179a: c4 69     mov   $69,a
179c: e5 36 06  mov   a,$0636
179f: c4 04     mov   $04,a
17a1: e8 03     mov   a,#$03
17a3: c5 02 06  mov   $0602,a
17a6: e5 33 06  mov   a,$0633
17a9: c4 6b     mov   $6b,a
17ab: e5 f7 00  mov   a,$00f7
17ae: d0 02     bne   $17b2
17b0: e8 20     mov   a,#$20
17b2: c4 6a     mov   $6a,a
17b4: e4 6b     mov   a,$6b
17b6: 5f 42 0f  jmp   $0f42

17b9: e4 6a     mov   a,$6a
17bb: f0 26     beq   $17e3
17bd: ba 6c     movw  ya,$6c
17bf: 7a 68     addw  ya,$68
17c1: 6e 6a 1d  dbnz  $6a,$17e1
17c4: e5 02 06  mov   a,$0602
17c7: bc        inc   a
17c8: 68 04     cmp   a,#$04
17ca: d0 07     bne   $17d3
17cc: e8 00     mov   a,#$00
17ce: c5 02 06  mov   $0602,a
17d1: 2f 0c     bra   $17df
17d3: c5 02 06  mov   $0602,a
17d6: e8 80     mov   a,#$80
17d8: c4 04     mov   $04,a
17da: cd 00     mov   x,#$00
17dc: 3f 6c 09  call  $096c
17df: ba 6a     movw  ya,$6a
17e1: da 68     movw  $68,ya
17e3: 6f        ret

17e4: cd 02     mov   x,#$02
17e6: 3f 6c 09  call  $096c
17e9: e4 02     mov   a,$02
17eb: f0 f6     beq   $17e3
17ed: 8f 01 57  mov   $57,#$01
17f0: cd 00     mov   x,#$00
17f2: e4 57     mov   a,$57
17f4: 25 e1 05  and   a,$05e1
17f7: d0 03     bne   $17fc
17f9: 5f 86 18  jmp   $1886

17fc: f5 05 06  mov   a,$0605+x
17ff: 65 37 19  cmp   a,$1937
1802: f0 0f     beq   $1813
1804: 65 38 19  cmp   a,$1938
1807: f0 0a     beq   $1813
1809: 65 39 19  cmp   a,$1939
180c: f0 05     beq   $1813
180e: 65 3a 19  cmp   a,$193a
1811: 2f 73     bra   $1886
1813: 4d        push  x
1814: 7d        mov   a,x
1815: 1c        asl   a
1816: 5d        mov   x,a
1817: e8 00     mov   a,#$00
1819: c5 0d 06  mov   $060d,a
181c: e4 02     mov   a,$02
181e: 30 24     bmi   $1844
1820: 5c        lsr   a
1821: 6c 0d 06  ror   $060d
1824: 5c        lsr   a
1825: 6c 0d 06  ror   $060d
1828: 5c        lsr   a
1829: 6c 0d 06  ror   $060d
182c: c5 0e 06  mov   $060e,a
182f: 60        clrc
1830: f5 1f 06  mov   a,$061f+x
1833: 85 0d 06  adc   a,$060d
1836: c5 0d 06  mov   $060d,a
1839: f5 20 06  mov   a,$0620+x
183c: 85 0e 06  adc   a,$060e
183f: c5 0e 06  mov   $060e,a
1842: 2f 25     bra   $1869
1844: 48 ff     eor   a,#$ff
1846: bc        inc   a
1847: 5c        lsr   a
1848: 6c 0d 06  ror   $060d
184b: 5c        lsr   a
184c: 6c 0d 06  ror   $060d
184f: 5c        lsr   a
1850: 6c 0d 06  ror   $060d
1853: c5 0e 06  mov   $060e,a
1856: 80        setc
1857: f5 1f 06  mov   a,$061f+x
185a: a5 0d 06  sbc   a,$060d
185d: c5 0d 06  mov   $060d,a
1860: f5 20 06  mov   a,$0620+x
1863: a5 0e 06  sbc   a,$060e
1866: c5 0e 06  mov   $060e,a
1869: 7d        mov   a,x
186a: 1c        asl   a
186b: 1c        asl   a
186c: 1c        asl   a
186d: 5d        mov   x,a
186e: 08 02     or    a,#$02
1870: c5 f2 00  mov   $00f2,a
1873: e5 0d 06  mov   a,$060d
1876: c5 f3 00  mov   $00f3,a
1879: 7d        mov   a,x
187a: 08 03     or    a,#$03
187c: c5 f2 00  mov   $00f2,a
187f: e5 0e 06  mov   a,$060e
1882: c5 f3 00  mov   $00f3,a
1885: ce        pop   x
1886: 3d        inc   x
1887: 0b 57     asl   $57
1889: f0 03     beq   $188e
188b: 5f f2 17  jmp   $17f2

188e: 6f        ret

188f: 6d        push  y
1890: fd        mov   y,a
1891: e5 32 06  mov   a,$0632
1894: cf        mul   ya
1895: da 1e     movw  $1e,ya
1897: 8d 06     mov   y,#$06
1899: 4b 1f     lsr   $1f
189b: 6b 1e     ror   $1e
189d: fe fa     dbnz  y,$1899
189f: e4 1e     mov   a,$1e
18a1: ee        pop   y
18a2: 2d        push  a
18a3: e5 32 06  mov   a,$0632
18a6: cf        mul   ya
18a7: da 1e     movw  $1e,ya
18a9: 8d 06     mov   y,#$06
18ab: 4b 1f     lsr   $1f
18ad: 6b 1e     ror   $1e
18af: fe fa     dbnz  y,$18ab
18b1: eb 1e     mov   y,$1e
18b3: ae        pop   a
18b4: 6f        ret

18b5: 2d        push  a
18b6: 6d        push  y
18b7: e5 f7 00  mov   a,$00f7
18ba: d0 02     bne   $18be
18bc: e8 40     mov   a,#$40
18be: c5 32 06  mov   $0632,a
18c1: e5 30 06  mov   a,$0630
18c4: ec 31 06  mov   y,$0631
18c7: 3f 8f 18  call  $188f
18ca: da 62     movw  $62,ya
18cc: ee        pop   y
18cd: ae        pop   a
18ce: 6f        ret

18cf: e5 f4 00  mov   a,$00f4
18d2: c5 f4 00  mov   $00f4,a
18d5: 28 0f     and   a,#$0f
18d7: 68 08     cmp   a,#$08
18d9: f0 13     beq   $18ee
18db: 68 09     cmp   a,#$09
18dd: f0 15     beq   $18f4
18df: 68 0a     cmp   a,#$0a
18e1: f0 18     beq   $18fb
18e3: 4d        push  x
18e4: 1c        asl   a
18e5: 5d        mov   x,a
18e6: f5 d1 03  mov   a,$03d1+x
18e9: ce        pop   x
18ea: c5 f7 00  mov   $00f7,a
18ed: 6f        ret

18ee: e4 69     mov   a,$69
18f0: c5 f7 00  mov   $00f7,a
18f3: 6f        ret

18f4: e5 34 06  mov   a,$0634
18f7: c5 f7 00  mov   $00f7,a
18fa: 6f        ret

18fb: e5 35 06  mov   a,$0635
18fe: c5 f7 00  mov   $00f7,a
1901: 6f        ret

1902: db $01,$02,$04,$08,$10,$20,$40,$80
