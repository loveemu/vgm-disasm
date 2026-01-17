0800: 20        clrp
0801: cd cf     mov   x,#$cf
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 f0     cmp   x,#$f0
080a: d0 fb     bne   $0807
080c: 5d        mov   x,a
080d: d5 00 01  mov   $0100+x,a
0810: d5 00 02  mov   $0200+x,a
0813: d5 00 03  mov   $0300+x,a
0816: d5 00 04  mov   $0400+x,a
0819: d5 00 05  mov   $0500+x,a
081c: d5 00 06  mov   $0600+x,a
081f: d5 00 07  mov   $0700+x,a
0822: 3d        inc   x
0823: d0 e8     bne   $080d
0825: bc        inc   a
0826: 3f 1e 0f  call  $0f1e
0829: a2 33     set5  $33
082b: e8 60     mov   a,#$60
082d: 8d 0c     mov   y,#$0c
082f: 3f f9 0a  call  $0af9
0832: 8d 1c     mov   y,#$1c
0834: 3f f9 0a  call  $0af9
0837: e8 3b     mov   a,#$3b
0839: 8d 5d     mov   y,#$5d
083b: 3f f9 0a  call  $0af9
083e: e8 90     mov   a,#$90
0840: c5 f1 00  mov   $00f1,a
0843: e8 10     mov   a,#$10
0845: c5 fa 00  mov   $00fa,a
0848: c4 3d     mov   $3d,a
084a: e8 81     mov   a,#$81
084c: c5 f1 00  mov   $00f1,a
084f: 8d 0a     mov   y,#$0a
0851: ad 05     cmp   y,#$05
0853: f0 07     beq   $085c
0855: b0 08     bcs   $085f
0857: 69 38 37  cmp   ($37),($38)
085a: d0 11     bne   $086d
085c: e3 37 0e  bbs7  $37,$086d
085f: f6 c4 08  mov   a,$08c4+y
0862: c5 f2 00  mov   $00f2,a
0865: f6 ce 08  mov   a,$08ce+y
0868: 5d        mov   x,a
0869: e6        mov   a,(x)
086a: c5 f3 00  mov   $00f3,a
086d: fe e2     dbnz  y,$0851
086f: cb 2f     mov   $2f,y
0871: cb 30     mov   $30,y
0873: e4 18     mov   a,$18
0875: 44 19     eor   a,$19
0877: 5c        lsr   a
0878: 5c        lsr   a
0879: ed        notc
087a: 6b 18     ror   $18
087c: 6b 19     ror   $19
087e: ec fd 00  mov   y,$00fd
0881: f0 fb     beq   $087e
0883: 6d        push  y
0884: e8 20     mov   a,#$20
0886: cf        mul   ya
0887: 60        clrc
0888: 84 1b     adc   a,$1b
088a: c4 1b     mov   $1b,a
088c: 90 07     bcc   $0895
088e: 69 38 37  cmp   ($37),($38)
0891: f0 02     beq   $0895
0893: ab 37     inc   $37
0895: ee        pop   y
0896: e4 3d     mov   a,$3d
0898: cf        mul   ya
0899: 60        clrc
089a: 84 3b     adc   a,$3b
089c: c4 3b     mov   $3b,a
089e: 90 0d     bcc   $08ad
08a0: 3f 12 09  call  $0912
08a3: 3f 7c 0b  call  $0b7c
08a6: cd 00     mov   x,#$00
08a8: 3f d9 08  call  $08d9
08ab: 2f a2     bra   $084f
08ad: e4 04     mov   a,$04
08af: f0 fa     beq   $08ab
08b1: cd 00     mov   x,#$00
08b3: 8f 01 31  mov   $31,#$01
08b6: f4 20     mov   a,$20+x
08b8: f0 03     beq   $08bd
08ba: 3f 09 12  call  $1209
08bd: 3d        inc   x
08be: 3d        inc   x
08bf: 0b 31     asl   $31
08c1: d0 f3     bne   $08b6
08c3: 2f e6     bra   $08ab

08c5: db $2c,$3c,$ec,$e7,$6c,$4c,$5c,$3d,$2d,$5c
08cf: db $4b,$4d,$39,$35,$33,$2f,$0e,$34,$36,$30

08d9: f4 04     mov   a,$04+x
08db: d5 f4 00  mov   $00f4+x,a
08de: f5 f4 00  mov   a,$00f4+x
08e1: 68 ff     cmp   a,#$ff
08e3: d0 03     bne   $08e8
08e5: 5f c0 ff  jmp   $ffc0

08e8: 68 fc     cmp   a,#$fc
08ea: d0 17     bne   $0903
08ec: 8f 00 45  mov   $45,#$00
08ef: fa f7 44  mov   ($44),($f7)
08f2: c4 f4     mov   $f4,a
08f4: 5d        mov   x,a
08f5: e4 45     mov   a,$45
08f7: 80        setc
08f8: a4 43     sbc   a,$43
08fa: 3f 31 10  call  $1031
08fd: da 46     movw  $46,ya
08ff: cd 00     mov   x,#$00
0901: 2f d6     bra   $08d9
0903: 75 f4 00  cmp   a,$00f4+x
0906: d0 d6     bne   $08de
0908: d4 00     mov   $00+x,a
090a: 3d        inc   x
090b: c8 03     cmp   x,#$03
090d: d0 ca     bne   $08d9
090f: cd 00     mov   x,#$00
0911: 6f        ret

0912: eb bd     mov   y,$bd
0914: d0 7f     bne   $0995
0916: cd 01     mov   x,#$01
0918: 4d        push  x
0919: f4 00     mov   a,$00+x
091b: f0 09     beq   $0926
091d: 74 04     cmp   a,$04+x
091f: f0 05     beq   $0926
0921: 28 7f     and   a,#$7f
0923: 3f 34 09  call  $0934
0926: ce        pop   x
0927: f4 00     mov   a,$00+x
0929: d4 04     mov   $04+x,a
092b: d5 f4 00  mov   $00f4+x,a
092e: 3d        inc   x
092f: c8 03     cmp   x,#$03
0931: d0 e5     bne   $0918
0933: 6f        ret

0934: eb bd     mov   y,$bd		; load song
0936: d0 5d     bne   $0995
0938: 68 05     cmp   a,#$05
093a: 90 58     bcc   $0994
093c: 68 0b     cmp   a,#$0b
093e: b0 54     bcs   $0994
0940: d4 04     mov   $04+x,a
0942: 78 08 b8  cmp   $b8,#$08
0945: f0 4d     beq   $0994
0947: 1c        asl   a
0948: 5d        mov   x,a
0949: c4 be     mov   $be,a
094b: 8d 00     mov   y,#$00
094d: e4 bb     mov   a,$bb
094f: 5c        lsr   a
0950: 90 03     bcc   $0955
0952: fc        inc   y
0953: 2f fa     bra   $094f
0955: e4 bb     mov   a,$bb
0957: 16 eb 09  or    a,$09eb+y
095a: c4 bb     mov   $bb,a
095c: e4 bc     mov   a,$bc
095e: 16 eb 09  or    a,$09eb+y
0961: c4 bc     mov   $bc,a
0963: 6d        push  y
0964: ab b8     inc   $b8
0966: f5 e3 12  mov   a,$12e3+x
0969: fd        mov   y,a
096a: f5 e2 12  mov   a,$12e2+x
096d: da b9     movw  $b9,ya
096f: ae        pop   a
0970: 1c        asl   a
0971: 5d        mov   x,a
0972: c4 be     mov   $be,a
0974: e8 0a     mov   a,#$0a
0976: 3f fd 0d  call  $0dfd
0979: d5 11 02  mov   $0211+x,a
097c: d5 e1 02  mov   $02e1+x,a
097f: d5 61 03  mov   $0361+x,a
0982: d5 f0 02  mov   $02f0+x,a
0985: d4 96     mov   $96+x,a
0987: d4 a6     mov   $a6+x,a
0989: d4 65     mov   $65+x,a
098b: d4 75     mov   $75+x,a
098d: d4 76     mov   $76+x,a
098f: bc        inc   a
0990: d4 55     mov   $55+x,a
0992: c4 bd     mov   $bd,a
0994: 6f        ret

0995: f8 be     mov   x,$be
0997: e4 b9     mov   a,$b9
0999: d5 1f 00  mov   $001f+x,a
099c: e4 ba     mov   a,$ba
099e: d5 20 00  mov   $0020+x,a
09a1: 3f ad 0d  call  $0dad
09a4: c4 bd     mov   $bd,a
09a6: f0 ec     beq   $0994
09a8: 30 23     bmi   $09cd
09aa: d5 00 02  mov   $0200+x,a
09ad: 3f ad 0d  call  $0dad
09b0: c4 bd     mov   $bd,a
09b2: f0 e0     beq   $0994
09b4: 30 17     bmi   $09cd
09b6: 2d        push  a
09b7: 9f        xcn   a
09b8: 28 07     and   a,#$07
09ba: fd        mov   y,a
09bb: f6 cc 12  mov   a,$12cc+y
09be: d5 01 02  mov   $0201+x,a
09c1: ae        pop   a
09c2: 28 0f     and   a,#$0f
09c4: fd        mov   y,a
09c5: f6 d4 12  mov   a,$12d4+y
09c8: d5 10 02  mov   $0210+x,a
09cb: 2f d4     bra   $09a1
09cd: 68 cb     cmp   a,#$cb
09cf: 90 05     bcc   $09d6
09d1: 3f 9b 0d  call  $0d9b
09d4: 2f cb     bra   $09a1
09d6: 3f 04 0a  call  $0a04
09d9: f5 00 02  mov   a,$0200+x
09dc: d4 55     mov   $55+x,a
09de: fd        mov   y,a
09df: f5 01 02  mov   a,$0201+x
09e2: cf        mul   ya
09e3: dd        mov   a,y
09e4: d0 01     bne   $09e7
09e6: bc        inc   a
09e7: d4 56     mov   $56+x,a
09e9: 2f b6     bra   $09a1

09eb: db $01,$02,$04,$08,$10,$20,$40,$80

09f3: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

09fb: db $01,$03,$07,$0f,$1f,$3f,$7f,$ff

0a03: 6f        ret

; handle a note vcmd (80-cb)
0a04: ad ca     cmp   y,#$ca
0a06: 90 05     bcc   $0a0d
; vcmd ca - percussion note
0a08: 3f b7 0d  call  $0db7
0a0b: 8d a4     mov   y,#$a4
; vcmds 80-c7,c8,c9 - note/tie/rest
0a0d: ad c8     cmp   y,#$c8
0a0f: b0 f2     bcs   $0a03
0a11: e4 1a     mov   a,$1a
0a13: 24 31     and   a,$31
0a15: d0 ec     bne   $0a03
; vcmds 80-c7 - note (note number in Y)
0a17: dd        mov   a,y
0a18: 28 7f     and   a,#$7f
0a1a: 60        clrc
0a1b: 84 3a     adc   a,$3a
0a1d: 60        clrc
0a1e: 95 61 03  adc   a,$0361+x
0a21: d5 c1 02  mov   $02c1+x,a
0a24: f5 e1 02  mov   a,$02e1+x
0a27: d5 c0 02  mov   $02c0+x,a
0a2a: f5 31 03  mov   a,$0331+x
0a2d: 5c        lsr   a
0a2e: e8 00     mov   a,#$00
0a30: 7c        ror   a
0a31: d5 10 03  mov   $0310+x,a
0a34: e8 00     mov   a,#$00
0a36: d4 95     mov   $95+x,a
0a38: d5 66 00  mov   $0066+x,a
0a3b: d5 50 03  mov   $0350+x,a
0a3e: d4 a5     mov   $a5+x,a
0a40: 09 31 48  or    ($48),($31)
0a43: 09 31 2f  or    ($2f),($31)
0a46: f5 f0 02  mov   a,$02f0+x
0a49: d4 85     mov   $85+x,a
0a4b: f0 1e     beq   $0a6b
0a4d: f5 f1 02  mov   a,$02f1+x
0a50: d4 86     mov   $86+x,a
0a52: f5 00 03  mov   a,$0300+x
0a55: d0 0a     bne   $0a61
0a57: f5 c1 02  mov   a,$02c1+x
0a5a: 80        setc
0a5b: b5 01 03  sbc   a,$0301+x
0a5e: d5 c1 02  mov   $02c1+x,a
0a61: f5 01 03  mov   a,$0301+x
0a64: 60        clrc
0a65: 95 c1 02  adc   a,$02c1+x
0a68: 3f e8 0f  call  $0fe8
0a6b: 3f 00 10  call  $1000
0a6e: 8d 00     mov   y,#$00
0a70: e4 11     mov   a,$11
0a72: 80        setc
0a73: a8 34     sbc   a,#$34
0a75: b0 09     bcs   $0a80
0a77: e4 11     mov   a,$11
0a79: 80        setc
0a7a: a8 13     sbc   a,#$13
0a7c: b0 06     bcs   $0a84
0a7e: dc        dec   y
0a7f: 1c        asl   a
0a80: 7a 10     addw  ya,$10
0a82: da 10     movw  $10,ya
0a84: 4d        push  x
0a85: e4 11     mov   a,$11
0a87: 1c        asl   a
0a88: 8d 00     mov   y,#$00
0a8a: cd 18     mov   x,#$18
0a8c: 9e        div   ya,x
0a8d: 5d        mov   x,a
0a8e: f6 01 0b  mov   a,$0b01+y
0a91: c4 15     mov   $15,a
0a93: f6 00 0b  mov   a,$0b00+y
0a96: c4 14     mov   $14,a
0a98: f6 03 0b  mov   a,$0b03+y
0a9b: 2d        push  a
0a9c: f6 02 0b  mov   a,$0b02+y
0a9f: ee        pop   y
0aa0: 9a 14     subw  ya,$14
0aa2: eb 10     mov   y,$10
0aa4: cf        mul   ya
0aa5: dd        mov   a,y
0aa6: 8d 00     mov   y,#$00
0aa8: 7a 14     addw  ya,$14
0aaa: cb 15     mov   $15,y
0aac: 1c        asl   a
0aad: 2b 15     rol   $15
0aaf: c4 14     mov   $14,a
0ab1: 2f 04     bra   $0ab7
0ab3: 4b 15     lsr   $15
0ab5: 7c        ror   a
0ab6: 3d        inc   x
0ab7: c8 06     cmp   x,#$06
0ab9: d0 f8     bne   $0ab3
0abb: c4 14     mov   $14,a
0abd: ce        pop   x
0abe: f5 20 02  mov   a,$0220+x
0ac1: eb 15     mov   y,$15
0ac3: cf        mul   ya
0ac4: da 16     movw  $16,ya
0ac6: f5 20 02  mov   a,$0220+x
0ac9: eb 14     mov   y,$14
0acb: cf        mul   ya
0acc: 6d        push  y
0acd: f5 21 02  mov   a,$0221+x
0ad0: eb 14     mov   y,$14
0ad2: cf        mul   ya
0ad3: 7a 16     addw  ya,$16
0ad5: da 16     movw  $16,ya
0ad7: f5 21 02  mov   a,$0221+x
0ada: eb 15     mov   y,$15
0adc: cf        mul   ya
0add: fd        mov   y,a
0ade: ae        pop   a
0adf: 7a 16     addw  ya,$16
0ae1: da 16     movw  $16,ya
0ae3: 7d        mov   a,x
0ae4: 9f        xcn   a
0ae5: 5c        lsr   a
0ae6: 08 02     or    a,#$02
0ae8: fd        mov   y,a
0ae9: e4 16     mov   a,$16
0aeb: 3f f1 0a  call  $0af1
0aee: fc        inc   y
0aef: e4 17     mov   a,$17
0af1: 2d        push  a
0af2: e4 31     mov   a,$31
0af4: 24 1a     and   a,$1a
0af6: ae        pop   a
0af7: d0 06     bne   $0aff
0af9: cc f2 00  mov   $00f2,y
0afc: c5 f3 00  mov   $00f3,a
0aff: 6f        ret

; pitch table
0b00: dw $085f
0b02: dw $08de
0b04: dw $0965
0b06: dw $09f4
0b08: dw $0a8c
0b0a: dw $0b2c
0b0c: dw $0bd6
0b0e: dw $0c8b
0b10: dw $0d4a
0b12: dw $0e14
0b14: dw $0eea
0b16: dw $0fcd
0b18: dw $10be

; read $1C/1 into YA with advancing the pointer
0b1a: 8d 00     mov   y,#$00
0b1c: f7 1c     mov   a,($1c)+y
0b1e: 3a 1c     incw  $1c
0b20: 2d        push  a
0b21: f7 1c     mov   a,($1c)+y
0b23: 3a 1c     incw  $1c
0b25: fd        mov   y,a
0b26: ae        pop   a
0b27: 6f        ret

; play song in A
0b28: c4 04     mov   $04,a
0b2a: 1c        asl   a
0b2b: f0 0d     beq   $0b3a
0b2d: 5d        mov   x,a
0b2e: f5 e3 12  mov   a,$12e3+x
0b31: fd        mov   y,a
0b32: f5 e2 12  mov   a,$12e2+x
0b35: da 1c     movw  $1c,ya
0b37: 8f 02 0c  mov   $0c,#$02
0b3a: e4 1a     mov   a,$1a
0b3c: 48 ff     eor   a,#$ff
0b3e: 0e 30 00  tset1 $0030
0b41: 6f        ret

; reset song params
0b42: cd 0e     mov   x,#$0e
0b44: 8f 80 31  mov   $31,#$80
0b47: e8 ff     mov   a,#$ff
0b49: d5 51 02  mov   $0251+x,a
0b4c: e8 0a     mov   a,#$0a
0b4e: 3f fd 0d  call  $0dfd
0b51: d5 11 02  mov   $0211+x,a
0b54: d5 e1 02  mov   $02e1+x,a
0b57: d5 61 03  mov   $0361+x,a
0b5a: d5 f0 02  mov   $02f0+x,a
0b5d: d4 96     mov   $96+x,a
0b5f: d4 a6     mov   $a6+x,a
0b61: 1d        dec   x
0b62: 1d        dec   x
0b63: 4b 31     lsr   $31
0b65: d0 e0     bne   $0b47
0b67: c4 44     mov   $44,a
0b69: c4 52     mov   $52,a
0b6b: c4 3e     mov   $3e,a
0b6d: c4 3a     mov   $3a,a
0b6f: c4 1e     mov   $1e,a
0b71: c4 49     mov   $49,a
0b73: c4 bb     mov   $bb,a
0b75: 8f c0 43  mov   $43,#$c0
0b78: 8f 20 3d  mov   $3d,#$20
0b7b: 6f        ret

0b7c: eb 08     mov   y,$08
0b7e: e4 00     mov   a,$00
0b80: c4 08     mov   $08,a
0b82: 7e 00     cmp   y,$00
0b84: d0 a2     bne   $0b28
0b86: 68 01     cmp   a,#$01
0b88: 90 f1     bcc   $0b7b
0b8a: 68 08     cmp   a,#$08
0b8c: b0 ed     bcs   $0b7b
0b8e: e4 04     mov   a,$04
0b90: f0 e9     beq   $0b7b
0b92: e4 0c     mov   a,$0c
0b94: f0 79     beq   $0c0f
0b96: 6e 0c a9  dbnz  $0c,$0b42
0b99: 3f 1a 0b  call  $0b1a
0b9c: d0 14     bne   $0bb2
0b9e: fd        mov   y,a
0b9f: f0 87     beq   $0b28
; set/dec repeat count
0ba1: 8b 1e     dec   $1e
0ba3: 10 02     bpl   $0ba7
0ba5: c4 1e     mov   $1e,a
0ba7: 3f 1a 0b  call  $0b1a
0baa: f8 1e     mov   x,$1e
0bac: f0 eb     beq   $0b99
0bae: da 1c     movw  $1c,ya
0bb0: 2f e7     bra   $0b99
; load start addresses - hi-byte not zero
0bb2: da 16     movw  $16,ya
0bb4: 8d 00     mov   y,#$00
0bb6: f7 1c     mov   a,($1c)+y
0bb8: c4 b5     mov   $b5,a
0bba: c4 b8     mov   $b8,a
0bbc: 3a 1c     incw  $1c
0bbe: 1c        asl   a
0bbf: 9c        dec   a
0bc0: fd        mov   y,a
0bc1: c4 b7     mov   $b7,a
0bc3: f7 16     mov   a,($16)+y
0bc5: d6 1f 00  mov   $001f+y,a
0bc8: dc        dec   y
0bc9: 10 f8     bpl   $0bc3
0bcb: f8 b5     mov   x,$b5
0bcd: 1d        dec   x
0bce: e8 00     mov   a,#$00
0bd0: 15 fb 09  or    a,$09fb+x
0bd3: c4 bb     mov   $bb,a
0bd5: 8d 0f     mov   y,#$0f
0bd7: 7e b7     cmp   y,$b7
0bd9: f0 08     beq   $0be3
0bdb: e8 00     mov   a,#$00
0bdd: d6 1f 00  mov   $001f+y,a
0be0: dc        dec   y
0be1: 2f f4     bra   $0bd7
0be3: cd 00     mov   x,#$00
0be5: 8f 00 b6  mov   $b6,#$00
0be8: 8f 01 31  mov   $31,#$01
0beb: f4 20     mov   a,$20+x
0bed: f0 0a     beq   $0bf9
0bef: f5 11 02  mov   a,$0211+x
0bf2: d0 05     bne   $0bf9
0bf4: e8 00     mov   a,#$00
0bf6: 3f b7 0d  call  $0db7
0bf9: e8 00     mov   a,#$00
0bfb: d4 65     mov   $65+x,a
0bfd: d4 75     mov   $75+x,a
0bff: d4 76     mov   $76+x,a
0c01: bc        inc   a
0c02: d4 55     mov   $55+x,a
0c04: 3d        inc   x
0c05: 3d        inc   x
0c06: 0b 31     asl   $31
0c08: ab b6     inc   $b6
0c0a: 69 b6 b5  cmp   ($b5),($b6)
0c0d: d0 dc     bne   $0beb
0c0f: cd 00     mov   x,#$00
0c11: d8 48     mov   $48,x
0c13: 8f 01 31  mov   $31,#$01
0c16: d8 32     mov   $32,x
0c18: f4 20     mov   a,$20+x
0c1a: d0 03     bne   $0c1f
0c1c: 5f b2 0c  jmp   $0cb2

0c1f: 9b 55     dec   $55+x
0c21: d0 76     bne   $0c99
0c23: f5 c0 00  mov   a,$00c0+x
0c26: f0 09     beq   $0c31
0c28: d4 55     mov   $55+x,a
0c2a: e8 00     mov   a,#$00
0c2c: d5 c0 00  mov   $00c0+x,a
0c2f: 2f 68     bra   $0c99
0c31: 3f ad 0d  call  $0dad
0c34: d0 24     bne   $0c5a
0c36: 7d        mov   a,x
0c37: 5c        lsr   a
0c38: fd        mov   y,a
0c39: e4 bc     mov   a,$bc
0c3b: 36 eb 09  and   a,$09eb+y
0c3e: d0 61     bne   $0ca1
; vcmd 00 - end repeat/return
0c40: f4 65     mov   a,$65+x
0c42: d0 03     bne   $0c47
0c44: 5f 99 0b  jmp   $0b99

; repeat/return from subroutine
0c47: 3f 23 10  call  $1023
0c4a: 9b 65     dec   $65+x
0c4c: d0 e3     bne   $0c31
0c4e: f5 30 02  mov   a,$0230+x
0c51: d4 1f     mov   $1f+x,a
0c53: f5 31 02  mov   a,$0231+x
0c56: d4 20     mov   $20+x,a
0c58: 2f d7     bra   $0c31
0c5a: 30 1f     bmi   $0c7b
0c5c: d5 00 02  mov   $0200+x,a
0c5f: 3f ad 0d  call  $0dad
; vcmd branches
0c62: 30 17     bmi   $0c7b
0c64: 2d        push  a
0c65: 9f        xcn   a
0c66: 28 07     and   a,#$07
0c68: fd        mov   y,a
0c69: f6 cc 12  mov   a,$12cc+y
0c6c: d5 01 02  mov   $0201+x,a
0c6f: ae        pop   a
0c70: 28 0f     and   a,#$0f
0c72: fd        mov   y,a
0c73: f6 d4 12  mov   a,$12d4+y
0c76: d5 10 02  mov   $0210+x,a
0c79: 2f b6     bra   $0c31
; vcmd branches 80-ff
0c7b: 68 cb     cmp   a,#$cb
0c7d: 90 05     bcc   $0c84
0c7f: 3f 9b 0d  call  $0d9b
0c82: 2f ad     bra   $0c31
0c84: 3f 04 0a  call  $0a04
0c87: f5 00 02  mov   a,$0200+x
0c8a: d4 55     mov   $55+x,a
0c8c: fd        mov   y,a
0c8d: f5 01 02  mov   a,$0201+x
0c90: cf        mul   ya
0c91: dd        mov   a,y
0c92: d0 01     bne   $0c95
0c94: bc        inc   a
0c95: d4 56     mov   $56+x,a
0c97: 2f 03     bra   $0c9c
0c99: 3f 19 11  call  $1119
0c9c: 3f c8 0f  call  $0fc8
0c9f: 2f 11     bra   $0cb2
0ca1: f6 eb 09  mov   a,$09eb+y
0ca4: 4e bb 00  tclr1 $00bb
0ca7: 4e bc 00  tclr1 $00bc
0caa: e8 00     mov   a,#$00
0cac: d4 1f     mov   $1f+x,a
0cae: d4 20     mov   $20+x,a
0cb0: 8b b8     dec   $b8
0cb2: 3d        inc   x
0cb3: 3d        inc   x
0cb4: 0b 31     asl   $31
0cb6: f0 03     beq   $0cbb
0cb8: 5f 16 0c  jmp   $0c16
0cbb: e4 3e     mov   a,$3e
0cbd: f0 0b     beq   $0cca
0cbf: ba 40     movw  ya,$40
0cc1: 7a 3c     addw  ya,$3c
0cc3: 6e 3e 02  dbnz  $3e,$0cc8
0cc6: ba 3e     movw  ya,$3e
0cc8: da 3c     movw  $3c,ya
0cca: e4 52     mov   a,$52
0ccc: f0 15     beq   $0ce3
0cce: ba 4e     movw  ya,$4e
0cd0: 7a 4a     addw  ya,$4a
0cd2: da 4a     movw  $4a,ya
0cd4: ba 50     movw  ya,$50
0cd6: 7a 4c     addw  ya,$4c
0cd8: 6e 52 06  dbnz  $52,$0ce1
0cdb: ba 52     movw  ya,$52
0cdd: da 4a     movw  $4a,ya
0cdf: eb 54     mov   y,$54
0ce1: da 4c     movw  $4c,ya
0ce3: e4 44     mov   a,$44
0ce5: f0 0e     beq   $0cf5
0ce7: ba 46     movw  ya,$46
0ce9: 7a 42     addw  ya,$42
0ceb: 6e 44 02  dbnz  $44,$0cf0
0cee: ba 44     movw  ya,$44
0cf0: da 42     movw  $42,ya
0cf2: 8f ff 48  mov   $48,#$ff
0cf5: cd 00     mov   x,#$00
0cf7: 8f 01 31  mov   $31,#$01
0cfa: f4 20     mov   a,$20+x
0cfc: f0 03     beq   $0d01
0cfe: 3f 4d 10  call  $104d
0d01: 3d        inc   x
0d02: 3d        inc   x
0d03: 0b 31     asl   $31
0d05: d0 f3     bne   $0cfa
0d07: 6f        ret

; vcmd dispatch table
0d08: dw $0db7	; cb - set instrument
0d0a: dw $0df9	; cc - set note length
0d0c: dw $0dfd	; cd - pan
0d0e: dw $0e0b	; ce - pan parameter
0d10: dw $0e0f	; cf - pan fade
0d12: dw $0e25	; d0 - vibrato off
0d14: dw $0e32	; d1 - vibrato on
0d16: dw $0e3b	; d2 - vibrato parameter 1
0d18: dw $0e3f	; d3 - vibrato parameter 2
0d1a: dw $0e43	; d4 - vibrato parameter 3
0d1c: dw $0e46	; d5 - vibrato fade
0d1e: dw $0e56	; d6 - master volume
0d20: dw $0e5b	; d7 - master volume parameter
0d22: dw $0e5e	; d8 - master volume fade
0d24: dw $0e6c	; d9 - tempo
0d26: dw $0e71	; da - tempo fade parameter
0d28: dw $0e74	; db - tempo fade
0d2a: dw $0e82	; dc - global transpose
0d2c: dw $0e85	; dd - per-voice transpose
0d2e: dw $0e89	; de - tremolo on
0d30: dw $0e8f	; df - tremolo off
0d32: dw $0e92	; e0 - pitch envelope (release)
0d34: dw $0e96	; e1 - pitch envelope (attack)
0d36: dw $0e9a	; e2 - pitch envelope off
0d38: dw $0e9e	; e3 - volume
0d3a: dw $0ea7	; e4 - volume fade parameter
0d3c: dw $0eab	; e5 - volume fade
0d3e: dw $0ec1	; e6 - tuning
0d40: dw $0ec5	; e7
0d42: dw $0edb	; e8
0d44: dw $0ef2	; e9 - echo volume parameter 1
0d46: dw $0ef7	; ea - echo volume parameter 2
0d48: dw $0efc	; eb - set echo params (1)
0d4a: dw $0f61	; ec - disable echo
0d4c: dw $0f64	; ed - set echo params (2)
0d4e: dw $0f7b	; ee
0d50: dw $0f80	; ef
0d52: dw $0f85	; f0
0d54: dw $0fa9	; f1
0d56: dw $0fac	; f2
0d58: dw $0fb0	; f3
0d5a: dw $0fb4	; f4
0d5c: dw $0fb8	; f5
0d5e: dw $0fbc	; f6
0d60: dw $0fd8	; f7 - pitch slide
0d62: dw $0fc0	; f8
0d64: dw $0fc4	; f9
0d66: dw $100b	; fa - call subroutine
0d68: dw $102e	; fb

; vcmd lengths
0d6a: db $01,$01,$01,$01,$01,$00,$00,$01 ; cb-d2
0d72: db $01,$01,$01,$01,$01,$01,$01,$01 ; d3-da
0d7a: db $01,$01,$01,$00,$00,$01,$01,$01 ; db-e2
0d82: db $01,$01,$01,$01,$00,$00,$01,$01 ; e3-ea
0d8a: db $01,$01,$01,$01,$01,$01,$00,$00 ; eb-f2
0d92: db $01,$01,$01,$01,$01,$01,$01,$03 ; f3-fa
0d9a: db $01				 ; fb

; dispatch vcmd in A (cb-ff)
0d9b: 1c        asl   a
0d9c: fd        mov   y,a
0d9d: f6 73 0c  mov   a,$0c73+y
0da0: 2d        push  a
0da1: f6 72 0c  mov   a,$0c72+y
0da4: 2d        push  a
0da5: dd        mov   a,y
0da6: 5c        lsr   a
0da7: fd        mov   y,a
0da8: f6 1f 0d  mov   a,$0d1f+y
0dab: f0 08     beq   $0db5
0dad: e7 1f     mov   a,($1f+x)
0daf: bb 1f     inc   $1f+x
0db1: d0 02     bne   $0db5
0db3: bb 20     inc   $20+x
0db5: fd        mov   y,a
0db6: 6f        ret

; vcmd cb - set instrument
0db7: d5 11 02  mov   $0211+x,a
0dba: fd        mov   y,a
0dbb: 10 06     bpl   $0dc3
0dbd: 80        setc
0dbe: a8 ca     sbc   a,#$ca
0dc0: 60        clrc
0dc1: 84 49     adc   a,$49
0dc3: 8d 06     mov   y,#$06
0dc5: cf        mul   ya
0dc6: da 14     movw  $14,ya
0dc8: 60        clrc
0dc9: 98 a0 14  adc   $14,#$a0
0dcc: 98 3a 15  adc   $15,#$3a
0dcf: e4 1a     mov   a,$1a
0dd1: 24 31     and   a,$31
0dd3: d0 23     bne   $0df8
0dd5: 4d        push  x
0dd6: 7d        mov   a,x
0dd7: 9f        xcn   a
0dd8: 5c        lsr   a
0dd9: 08 04     or    a,#$04
0ddb: 5d        mov   x,a
0ddc: 8d 00     mov   y,#$00
0dde: f7 14     mov   a,($14)+y
0de0: c9 f2 00  mov   $00f2,x
0de3: c5 f3 00  mov   $00f3,a
0de6: 3d        inc   x
0de7: fc        inc   y
0de8: ad 04     cmp   y,#$04
0dea: d0 f2     bne   $0dde
0dec: ce        pop   x
0ded: f7 14     mov   a,($14)+y
0def: d5 21 02  mov   $0221+x,a
0df2: fc        inc   y
0df3: f7 14     mov   a,($14)+y
0df5: d5 20 02  mov   $0220+x,a
0df8: 6f        ret

; vcmd cc - set note length
0df9: d5 c0 00  mov   $00c0+x,a
0dfc: 6f        ret

; vcmd cd - pan
0dfd: d5 b1 02  mov   $02b1+x,a
0e00: 28 1f     and   a,#$1f
0e02: d5 91 02  mov   $0291+x,a
0e05: e8 00     mov   a,#$00
0e07: d5 90 02  mov   $0290+x,a
0e0a: 6f        ret

; vcmd ce - pan parameter
0e0b: d5 b0 02  mov   $02b0+x,a
0e0e: 6f        ret

; vcmd cf - pan fade
0e0f: d4 76     mov   $76+x,a
0e11: 2d        push  a
0e12: f5 b0 02  mov   a,$02b0+x
0e15: 80        setc
0e16: b5 91 02  sbc   a,$0291+x
0e19: ce        pop   x
0e1a: 3f 31 10  call  $1031
0e1d: d5 a0 02  mov   $02a0+x,a
0e20: dd        mov   a,y
0e21: d5 a1 02  mov   $02a1+x,a
0e24: 6f        ret

; vcmd d0 - vibrato off
0e25: f4 c1     mov   a,$c1+x
0e27: d4 96     mov   $96+x,a
0e29: d5 41 03  mov   $0341+x,a
0e2c: e8 00     mov   a,#$00
0e2e: d5 31 03  mov   $0331+x,a
0e31: 6f        ret

; vcmd d1 - vibrato on
0e32: d4 96     mov   $96+x,a
0e34: d5 41 03  mov   $0341+x,a
0e37: d5 31 03  mov   $0331+x,a
0e3a: 6f        ret

; vcmd d2 - vibrato parameter 1
0e3b: d5 30 03  mov   $0330+x,a
0e3e: 6f        ret

; vcmd d3 - vibrato parameter 2
0e3f: d5 11 03  mov   $0311+x,a
0e42: 6f        ret

; vcmd d4 - vibrato parameter 3
0e43: d4 c1     mov   $c1+x,a
0e45: 6f        ret

; vcmd d5 - vibrato fade
0e46: d5 31 03  mov   $0331+x,a
0e49: 2d        push  a
0e4a: 8d 00     mov   y,#$00
0e4c: f4 96     mov   a,$96+x
0e4e: ce        pop   x
0e4f: 9e        div   ya,x
0e50: f8 32     mov   x,$32
0e52: d5 40 03  mov   $0340+x,a
0e55: 6f        ret

; vcmd d6 - master volume
0e56: e8 00     mov   a,#$00
0e58: da 42     movw  $42,ya
0e5a: 6f        ret

; vcmd d7 - master volume parameter
0e5b: c4 45     mov   $45,a
0e5d: 6f        ret

; vcmd d8 - master volume fade
0e5e: c4 44     mov   $44,a
0e60: 5d        mov   x,a
0e61: e4 45     mov   a,$45
0e63: 80        setc
0e64: a4 43     sbc   a,$43
0e66: 3f 31 10  call  $1031
0e69: da 46     movw  $46,ya
0e6b: 6f        ret

; vcmd d9 - tempo
0e6c: e8 00     mov   a,#$00
0e6e: da 3c     movw  $3c,ya
0e70: 6f        ret

; vcmd da - tempo fade parameter
0e71: c4 3f     mov   $3f,a
0e73: 6f        ret

; vcmd db - tempo fade
0e74: c4 3e     mov   $3e,a
0e76: 5d        mov   x,a
0e77: e4 3f     mov   a,$3f
0e79: 80        setc
0e7a: a4 3d     sbc   a,$3d
0e7c: 3f 31 10  call  $1031
0e7f: da 40     movw  $40,ya
0e81: 6f        ret

; vcmd dc - global transpose
0e82: c4 3a     mov   $3a,a
0e84: 6f        ret

; vcmd dd - per-voice transpose
0e85: d5 61 03  mov   $0361+x,a
0e88: 6f        ret

; vcmd de - tremolo on
0e89: f5 80 02  mov   a,$0280+x
0e8c: d4 a6     mov   $a6+x,a
0e8e: 6f        ret

; vcmd df - tremolo off
0e8f: d4 a6     mov   $a6+x,a
0e91: 6f        ret

; vcmd e0 - pitch envelope (release)
0e92: d5 60 03  mov   $0360+x,a
0e95: 6f        ret

; vcmd e1 - pitch envelope (attack)
0e96: d5 51 03  mov   $0351+x,a
0e99: 6f        ret

; vcmd e2 - pitch envelope off
0e9a: d5 80 02  mov   $0280+x,a
0e9d: 6f        ret

; vcmd e3 - volume
0e9e: d5 51 02  mov   $0251+x,a
0ea1: e8 00     mov   a,#$00
0ea3: d5 50 02  mov   $0250+x,a
0ea6: 6f        ret

; vcmd e4 - volume fade parameter
0ea7: d5 70 02  mov   $0270+x,a
0eaa: 6f        ret

; vcmd e5 - volume fade
0eab: d4 75     mov   $75+x,a
0ead: 2d        push  a
0eae: f5 70 02  mov   a,$0270+x
0eb1: 80        setc
0eb2: b5 51 02  sbc   a,$0251+x
0eb5: ce        pop   x
0eb6: 3f 31 10  call  $1031
0eb9: d5 60 02  mov   $0260+x,a
0ebc: dd        mov   a,y
0ebd: d5 61 02  mov   $0261+x,a
0ec0: 6f        ret

; vcmd e6 - tuning
0ec1: d5 e1 02  mov   $02e1+x,a
0ec4: 6f        ret

; vcmd e7
0ec5: 7d        mov   a,x
0ec6: 5c        lsr   a
0ec7: fd        mov   y,a
0ec8: e5 35 00  mov   a,$0035
0ecb: 16 eb 09  or    a,$09eb+y
0ece: c4 35     mov   $35,a
0ed0: ba d0     movw  ya,$d0
0ed2: da 4a     movw  $4a,ya
0ed4: ba d2     movw  ya,$d2
0ed6: da 4c     movw  $4c,ya
0ed8: b2 33     clr5  $33
0eda: 6f        ret

; vcmd e8
0edb: 7d        mov   a,x
0edc: 5c        lsr   a
0edd: fd        mov   y,a
0ede: e5 35 00  mov   a,$0035
0ee1: 36 f3 09  and   a,$09f3+y
0ee4: c5 35 00  mov   $0035,a
0ee7: 68 00     cmp   a,#$00
0ee9: d0 06     bne   $0ef1
0eeb: da 4a     movw  $4a,ya
0eed: da 4c     movw  $4c,ya
0eef: a2 33     set5  $33
0ef1: 6f        ret

; vcmd e9 - echo volume parameter 1
0ef2: e8 00     mov   a,#$00
0ef4: da d0     movw  $d0,ya
0ef6: 6f        ret

; vcmd ea - echo volume parameter 2
0ef7: e8 00     mov   a,#$00
0ef9: da d2     movw  $d2,ya
0efb: 6f        ret

; vcmd eb - set echo params (1)
0efc: 3f 1e 0f  call  $0f1e
0eff: 3f ad 0d  call  $0dad
0f02: c4 39     mov   $39,a
0f04: 3f ad 0d  call  $0dad
0f07: 8d 08     mov   y,#$08
0f09: cf        mul   ya
0f0a: 5d        mov   x,a
0f0b: 8d 0f     mov   y,#$0f
0f0d: f5 ac 12  mov   a,$12ac+x
0f10: 3f f9 0a  call  $0af9
0f13: 3d        inc   x
0f14: dd        mov   a,y
0f15: 60        clrc
0f16: 88 10     adc   a,#$10
0f18: fd        mov   y,a
0f19: 10 f2     bpl   $0f0d
0f1b: f8 32     mov   x,$32
0f1d: 6f        ret

0f1e: c4 38     mov   $38,a
0f20: 8d 7d     mov   y,#$7d
0f22: cc f2 00  mov   $00f2,y
0f25: e5 f3 00  mov   a,$00f3
0f28: 64 38     cmp   a,$38
0f2a: f0 2b     beq   $0f57
0f2c: 28 0f     and   a,#$0f
0f2e: 48 ff     eor   a,#$ff
0f30: f3 37 03  bbc7  $37,$0f36
0f33: 60        clrc
0f34: 84 37     adc   a,$37
0f36: c4 37     mov   $37,a
0f38: 8d 04     mov   y,#$04
0f3a: f6 c4 08  mov   a,$08c4+y
0f3d: c5 f2 00  mov   $00f2,a
0f40: e8 00     mov   a,#$00
0f42: c5 f3 00  mov   $00f3,a
0f45: fe f3     dbnz  y,$0f3a
0f47: e4 33     mov   a,$33
0f49: 08 20     or    a,#$20
0f4b: 8d 6c     mov   y,#$6c
0f4d: 3f f9 0a  call  $0af9
0f50: e4 38     mov   a,$38
0f52: 8d 7d     mov   y,#$7d
0f54: 3f f9 0a  call  $0af9
0f57: 1c        asl   a
0f58: 1c        asl   a
0f59: 1c        asl   a
0f5a: 48 ff     eor   a,#$ff
0f5c: 8d 6d     mov   y,#$6d
0f5e: 5f f9 0a  jmp   $0af9

; vcmd ec - disable echo
0f61: c4 39     mov   $39,a
0f63: 6f        ret

; vcmd ed - set echo params (2)
0f64: 8d 08     mov   y,#$08
0f66: cf        mul   ya
0f67: 5d        mov   x,a
0f68: 8d 0f     mov   y,#$0f
0f6a: f5 ac 12  mov   a,$12ac+x
0f6d: 3f f9 0a  call  $0af9
0f70: 3d        inc   x
0f71: dd        mov   a,y
0f72: 60        clrc
0f73: 88 10     adc   a,#$10
0f75: fd        mov   y,a
0f76: 10 f2     bpl   $0f6a
0f78: f8 32     mov   x,$32
0f7a: 6f        ret

; vcmd ee
0f7b: c4 53     mov   $53,a
0f7d: e2 bf     set7  $bf
0f7f: 6f        ret

; vcmd ef
0f80: c4 54     mov   $54,a
0f82: c2 bf     set6  $bf
0f84: 6f        ret

; vcmd f0
0f85: c4 52     mov   $52,a
0f87: 5d        mov   x,a
0f88: 0b bf     asl   $bf
0f8a: 90 0c     bcc   $0f98
0f8c: e4 53     mov   a,$53
0f8e: 80        setc
0f8f: a4 4b     sbc   a,$4b
0f91: f8 52     mov   x,$52
0f93: 3f 31 10  call  $1031
0f96: da 4e     movw  $4e,ya
0f98: 0b bf     asl   $bf
0f9a: 90 0c     bcc   $0fa8
0f9c: e4 54     mov   a,$54
0f9e: 80        setc
0f9f: a4 4d     sbc   a,$4d
0fa1: f8 52     mov   x,$52
0fa3: 3f 31 10  call  $1031
0fa6: da 50     movw  $50,ya
0fa8: 6f        ret

; vcmd f1
0fa9: f5 81 02  mov   a,$0281+x
; vcmd f2
0fac: d5 f0 02  mov   $02f0+x,a
0faf: 6f        ret

; vcmd f3
0fb0: d5 00 03  mov   $0300+x,a
0fb3: 6f        ret

; vcmd f4
0fb4: d5 f1 02  mov   $02f1+x,a
0fb7: 6f        ret

; vcmd f5
0fb8: d5 81 02  mov   $0281+x,a
0fbb: 6f        ret

; vcmd f6
0fbc: d5 01 03  mov   $0301+x,a
0fbf: 6f        ret

; vcmd f8
0fc0: d5 81 02  mov   $0281+x,a
0fc3: 6f        ret

; vcmd f9
0fc4: d5 21 03  mov   $0321+x,a
0fc7: 6f        ret

0fc8: f4 85     mov   a,$85+x
0fca: d0 33     bne   $0fff
0fcc: e7 1f     mov   a,($1f+x)
0fce: 68 f7     cmp   a,#$f7
0fd0: d0 2d     bne   $0fff
0fd2: 3f af 0d  call  $0daf
0fd5: 3f ad 0d  call  $0dad
; vcmd f7 - pitch slide
0fd8: d4 86     mov   $86+x,a
0fda: f5 20 03  mov   a,$0320+x
0fdd: d4 85     mov   $85+x,a
0fdf: f5 21 03  mov   a,$0321+x
0fe2: 60        clrc
0fe3: 84 3a     adc   a,$3a
0fe5: 95 61 03  adc   a,$0361+x
0fe8: 28 7f     and   a,#$7f
0fea: d5 e0 02  mov   $02e0+x,a
0fed: 80        setc
0fee: b5 c1 02  sbc   a,$02c1+x
0ff1: fb 85     mov   y,$85+x
0ff3: 6d        push  y
0ff4: ce        pop   x
0ff5: 3f 31 10  call  $1031
0ff8: d5 d0 02  mov   $02d0+x,a
0ffb: dd        mov   a,y
0ffc: d5 d1 02  mov   $02d1+x,a
0fff: 6f        ret

1000: f5 c1 02  mov   a,$02c1+x
1003: c4 11     mov   $11,a
1005: f5 c0 02  mov   a,$02c0+x
1008: c4 10     mov   $10,a
100a: 6f        ret

; vcmd fa - call subroutine
100b: d5 40 02  mov   $0240+x,a
100e: 3f ad 0d  call  $0dad
1011: d5 41 02  mov   $0241+x,a
1014: 3f ad 0d  call  $0dad
1017: d4 65     mov   $65+x,a
1019: f4 1f     mov   a,$1f+x
101b: d5 30 02  mov   $0230+x,a
101e: f4 20     mov   a,$20+x
1020: d5 31 02  mov   $0231+x,a
1023: f5 40 02  mov   a,$0240+x
1026: d4 1f     mov   $1f+x,a
1028: f5 41 02  mov   a,$0241+x
102b: d4 20     mov   $20+x,a
102d: 6f        ret

; vcmd fb
102e: c4 49     mov   $49,a
1030: 6f        ret

1031: ed        notc
1032: 6b 12     ror   $12
1034: 10 03     bpl   $1039
1036: 48 ff     eor   a,#$ff
1038: bc        inc   a
1039: 8d 00     mov   y,#$00
103b: 9e        div   ya,x
103c: 2d        push  a
103d: e8 00     mov   a,#$00
103f: 9e        div   ya,x
1040: ee        pop   y
1041: f8 32     mov   x,$32
1043: f3 12 06  bbc7  $12,$104c
1046: da 14     movw  $14,ya
1048: ba 0e     movw  ya,$0e
104a: 9a 14     subw  ya,$14
104c: 6f        ret

104d: f4 75     mov   a,$75+x
104f: f0 09     beq   $105a
1051: e8 50     mov   a,#$50
1053: 8d 02     mov   y,#$02
1055: 9b 75     dec   $75+x
1057: 3f f5 10  call  $10f5
105a: fb a6     mov   y,$a6+x
105c: f0 23     beq   $1081
105e: f5 60 03  mov   a,$0360+x
1061: de a5 1b  cbne  $a5+x,$107f
1064: 09 31 48  or    ($48),($31)
1067: f5 50 03  mov   a,$0350+x
106a: 10 07     bpl   $1073
106c: fc        inc   y
106d: d0 04     bne   $1073
106f: e8 80     mov   a,#$80
1071: 2f 04     bra   $1077
1073: 60        clrc
1074: 95 51 03  adc   a,$0351+x
1077: d5 50 03  mov   $0350+x,a
107a: 3f 8f 12  call  $128f
107d: 2f 07     bra   $1086
107f: bb a5     inc   $a5+x
1081: e8 ff     mov   a,#$ff
1083: 3f 9a 12  call  $129a
1086: f4 76     mov   a,$76+x
1088: f0 09     beq   $1093
108a: e8 90     mov   a,#$90
108c: 8d 02     mov   y,#$02
108e: 9b 76     dec   $76+x
1090: 3f f5 10  call  $10f5
1093: e4 31     mov   a,$31
1095: 24 48     and   a,$48
1097: f0 46     beq   $10df
1099: f5 91 02  mov   a,$0291+x
109c: fd        mov   y,a
109d: f5 90 02  mov   a,$0290+x
10a0: da 10     movw  $10,ya
10a2: 7d        mov   a,x
10a3: 9f        xcn   a
10a4: 5c        lsr   a
10a5: c4 12     mov   $12,a
10a7: eb 11     mov   y,$11
10a9: f6 e1 10  mov   a,$10e1+y
10ac: 80        setc
10ad: b6 e0 10  sbc   a,$10e0+y
10b0: eb 10     mov   y,$10
10b2: cf        mul   ya
10b3: dd        mov   a,y
10b4: eb 11     mov   y,$11
10b6: 60        clrc
10b7: 96 e0 10  adc   a,$10e0+y
10ba: fd        mov   y,a
10bb: f5 71 02  mov   a,$0271+x
10be: cf        mul   ya
10bf: f5 b1 02  mov   a,$02b1+x
10c2: 1c        asl   a
10c3: 13 12 01  bbc0  $12,$10c7
10c6: 1c        asl   a
10c7: dd        mov   a,y
10c8: 90 03     bcc   $10cd
10ca: 48 ff     eor   a,#$ff
10cc: bc        inc   a
10cd: eb 12     mov   y,$12
10cf: 3f f1 0a  call  $0af1
10d2: 8d 14     mov   y,#$14
10d4: e8 00     mov   a,#$00
10d6: 9a 10     subw  ya,$10
10d8: da 10     movw  $10,ya
10da: ab 12     inc   $12
10dc: 33 12 c8  bbc1  $12,$10a7
10df: 6f        ret


10e0: db $00,$01,$03,$07,$0d,$15,$1e,$29
10e8: db $34,$42,$51,$5e,$67,$6e,$73,$77
10f0: db $7a,$7c,$7d,$7e,$7f

10f5: 09 31 48  or    ($48),($31)
10f8: da 14     movw  $14,ya
10fa: da 16     movw  $16,ya
10fc: 4d        push  x
10fd: ee        pop   y
10fe: 60        clrc
10ff: d0 0a     bne   $110b
1101: 98 1f 16  adc   $16,#$1f
1104: e8 00     mov   a,#$00
1106: d7 14     mov   ($14)+y,a
1108: fc        inc   y
1109: 2f 09     bra   $1114
110b: 98 10 16  adc   $16,#$10
110e: 3f 12 11  call  $1112
1111: fc        inc   y
1112: f7 14     mov   a,($14)+y
1114: 97 16     adc   a,($16)+y
1116: d7 14     mov   ($14)+y,a
1118: 6f        ret

1119: f4 56     mov   a,$56+x
111b: d0 03     bne   $1120
111d: 5f 9b 11  jmp   $119b

1120: 9b 56     dec   $56+x
1122: d0 0a     bne   $112e
1124: f5 c0 00  mov   a,$00c0+x
1127: f0 18     beq   $1141
1129: d4 56     mov   $56+x,a
112b: 5f 9b 11  jmp   $119b

112e: e8 02     mov   a,#$02
1130: de 55 68  cbne  $55+x,$119b
1133: f5 c0 00  mov   a,$00c0+x
1136: f0 09     beq   $1141
1138: d4 55     mov   $55+x,a
113a: e8 00     mov   a,#$00
113c: d5 c0 00  mov   $00c0+x,a
113f: 2f 5a     bra   $119b
1141: f4 65     mov   a,$65+x
1143: c4 17     mov   $17,a
1145: f4 1f     mov   a,$1f+x
1147: fb 20     mov   y,$20+x
1149: da 14     movw  $14,ya
114b: 8d 00     mov   y,#$00
114d: f7 14     mov   a,($14)+y
114f: f0 1c     beq   $116d
1151: 30 05     bmi   $1158
1153: fc        inc   y
1154: f7 14     mov   a,($14)+y
1156: 10 fb     bpl   $1153
1158: 68 c8     cmp   a,#$c8
115a: f0 3f     beq   $119b
115c: 68 fa     cmp   a,#$fa
115e: f0 29     beq   $1189
1160: 68 cb     cmp   a,#$cb
1162: 90 30     bcc   $1194
1164: 6d        push  y
1165: fd        mov   y,a
1166: ae        pop   a
1167: 96 9f 0c  adc   a,$0c9f+y
116a: fd        mov   y,a
116b: 2f e0     bra   $114d
116d: e4 17     mov   a,$17
116f: f0 23     beq   $1194
1171: 8b 17     dec   $17
1173: d0 0a     bne   $117f
1175: f5 31 02  mov   a,$0231+x
1178: 2d        push  a
1179: f5 30 02  mov   a,$0230+x
117c: ee        pop   y
117d: 2f ca     bra   $1149
117f: f5 41 02  mov   a,$0241+x
1182: 2d        push  a
1183: f5 40 02  mov   a,$0240+x
1186: ee        pop   y
1187: 2f c0     bra   $1149
1189: fc        inc   y
118a: f7 14     mov   a,($14)+y
118c: 2d        push  a
118d: fc        inc   y
118e: f7 14     mov   a,($14)+y
1190: fd        mov   y,a
1191: ae        pop   a
1192: 2f b5     bra   $1149
1194: e4 31     mov   a,$31
1196: 8d 5c     mov   y,#$5c
1198: 3f f1 0a  call  $0af1
119b: f2 13     clr7  $13
119d: f4 85     mov   a,$85+x
119f: f0 13     beq   $11b4
11a1: f4 86     mov   a,$86+x
11a3: f0 04     beq   $11a9
11a5: 9b 86     dec   $86+x
11a7: 2f 0b     bra   $11b4
11a9: e2 13     set7  $13
11ab: e8 c0     mov   a,#$c0
11ad: 8d 02     mov   y,#$02
11af: 9b 85     dec   $85+x
11b1: 3f f8 10  call  $10f8
11b4: 3f 00 10  call  $1000
11b7: f4 96     mov   a,$96+x
11b9: f0 4a     beq   $1205
11bb: f5 30 03  mov   a,$0330+x
11be: de 95 42  cbne  $95+x,$1203
11c1: f5 66 00  mov   a,$0066+x
11c4: 75 31 03  cmp   a,$0331+x
11c7: d0 05     bne   $11ce
11c9: f5 41 03  mov   a,$0341+x
11cc: 2f 0b     bra   $11d9
11ce: bb 66     inc   $66+x
11d0: fd        mov   y,a
11d1: f0 02     beq   $11d5
11d3: f4 96     mov   a,$96+x
11d5: 60        clrc
11d6: 95 40 03  adc   a,$0340+x
11d9: d4 96     mov   $96+x,a
11db: f5 10 03  mov   a,$0310+x
11de: 60        clrc
11df: 95 11 03  adc   a,$0311+x
11e2: d5 10 03  mov   $0310+x,a
11e5: c4 12     mov   $12,a
11e7: 1c        asl   a
11e8: 1c        asl   a
11e9: 90 02     bcc   $11ed
11eb: 48 ff     eor   a,#$ff
11ed: fd        mov   y,a
11ee: f4 96     mov   a,$96+x
11f0: 68 f1     cmp   a,#$f1
11f2: 90 05     bcc   $11f9
11f4: 28 0f     and   a,#$0f
11f6: cf        mul   ya
11f7: 2f 04     bra   $11fd
11f9: cf        mul   ya
11fa: dd        mov   a,y
11fb: 8d 00     mov   y,#$00
11fd: 3f 7a 12  call  $127a
1200: 5f 6e 0a  jmp   $0a6e

1203: bb 95     inc   $95+x
1205: e3 13 f8  bbs7  $13,$1200
1208: 6f        ret

1209: f2 13     clr7  $13
120b: f4 a6     mov   a,$a6+x
120d: f0 09     beq   $1218
120f: f5 60 03  mov   a,$0360+x
1212: de a5 03  cbne  $a5+x,$1218
1215: 3f 82 12  call  $1282
1218: f5 91 02  mov   a,$0291+x
121b: fd        mov   y,a
121c: f5 90 02  mov   a,$0290+x
121f: da 10     movw  $10,ya
1221: f4 76     mov   a,$76+x
1223: f0 0a     beq   $122f
1225: f5 a1 02  mov   a,$02a1+x
1228: fd        mov   y,a
1229: f5 a0 02  mov   a,$02a0+x
122c: 3f 64 12  call  $1264
122f: f3 13 03  bbc7  $13,$1235
1232: 3f a2 10  call  $10a2
1235: f2 13     clr7  $13
1237: 3f 00 10  call  $1000
123a: f4 85     mov   a,$85+x
123c: f0 0e     beq   $124c
123e: f4 86     mov   a,$86+x
1240: d0 0a     bne   $124c
1242: f5 d1 02  mov   a,$02d1+x
1245: fd        mov   y,a
1246: f5 d0 02  mov   a,$02d0+x
1249: 3f 64 12  call  $1264
124c: f4 96     mov   a,$96+x
124e: f0 b5     beq   $1205
1250: f5 30 03  mov   a,$0330+x
1253: de 95 af  cbne  $95+x,$1205
1256: eb 3b     mov   y,$3b
1258: f5 11 03  mov   a,$0311+x
125b: cf        mul   ya
125c: dd        mov   a,y
125d: 60        clrc
125e: 95 10 03  adc   a,$0310+x
1261: 5f e5 11  jmp   $11e5

1264: e2 13     set7  $13
1266: cb 12     mov   $12,y
1268: 3f 43 10  call  $1043
126b: 6d        push  y
126c: eb 3b     mov   y,$3b
126e: cf        mul   ya
126f: cb 14     mov   $14,y
1271: 8f 00 15  mov   $15,#$00
1274: eb 3b     mov   y,$3b
1276: ae        pop   a
1277: cf        mul   ya
1278: 7a 14     addw  ya,$14
127a: 3f 43 10  call  $1043
127d: 7a 10     addw  ya,$10
127f: da 10     movw  $10,ya
1281: 6f        ret

1282: e2 13     set7  $13
1284: eb 3b     mov   y,$3b
1286: f5 51 03  mov   a,$0351+x
1289: cf        mul   ya
128a: dd        mov   a,y
128b: 60        clrc
128c: 95 50 03  adc   a,$0350+x
128f: 1c        asl   a
1290: 90 02     bcc   $1294
1292: 48 ff     eor   a,#$ff
1294: fb a6     mov   y,$a6+x
1296: cf        mul   ya
1297: dd        mov   a,y
1298: 48 ff     eor   a,#$ff
129a: eb 43     mov   y,$43
129c: cf        mul   ya
129d: f5 10 02  mov   a,$0210+x
12a0: cf        mul   ya
12a1: f5 51 02  mov   a,$0251+x
12a4: cf        mul   ya
12a5: dd        mov   a,y
12a6: cf        mul   ya
12a7: dd        mov   a,y
12a8: d5 71 02  mov   $0271+x,a
12ab: 6f        ret

12ac: db $7f,$00,$00,$00,$00,$00,$00,$00
12b4: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
12bc: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
12c4: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

12cc: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

12d4: db $19,$32,$4c,$65,$72,$7f,$8c,$98

12dc: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
