0840: cd ff     mov   x,#$ff
0842: bd        mov   sp,x
0843: e8 00     mov   a,#$00
0845: 5d        mov   x,a
0846: af        mov   (x)+,a
0847: c8 f0     cmp   x,#$f0
0849: d0 fb     bne   $0846
084b: 5d        mov   x,a
084c: d5 00 01  mov   $0100+x,a
084f: d5 00 02  mov   $0200+x,a
0852: d5 00 03  mov   $0300+x,a
0855: d5 00 04  mov   $0400+x,a
0858: d5 00 05  mov   $0500+x,a
085b: d5 00 06  mov   $0600+x,a
085e: 3d        inc   x
085f: d0 eb     bne   $084c
0861: 5d        mov   x,a
0862: d5 00 07  mov   $0700+x,a
0865: 3d        inc   x
0866: c8 60     cmp   x,#$60
0868: d0 f8     bne   $0862
086a: 3f a0 21  call  $21a0
086d: 3f 43 22  call  $2243
0870: 3f 6d 09  call  $096d
0873: 8f 68 f6  mov   $f6,#$68
0876: 8f 09 f7  mov   $f7,#$09
0879: 3f 88 08  call  $0888
087c: 3f e9 08  call  $08e9
087f: 3f 49 12  call  $1249
0882: 3f 5b 0a  call  $0a5b
0885: 5f 79 08  jmp   $0879

0888: e4 f4     mov   a,$f4
088a: 64 f4     cmp   a,$f4
088c: d0 fa     bne   $0888
088e: 44 14     eor   a,$14
0890: 10 0a     bpl   $089c
0892: e4 f4     mov   a,$f4
0894: c4 14     mov   $14,a
0896: c4 f4     mov   $f4,a
0898: 08 80     or    a,#$80
089a: c4 24     mov   $24,a
089c: e4 f5     mov   a,$f5
089e: 64 f5     cmp   a,$f5
08a0: d0 fa     bne   $089c
08a2: 44 15     eor   a,$15
08a4: 10 0b     bpl   $08b1
08a6: e4 f5     mov   a,$f5
08a8: c4 15     mov   $15,a
08aa: c4 f5     mov   $f5,a
08ac: 08 80     or    a,#$80
08ae: 3f b2 08  call  $08b2
08b1: 6f        ret

08b2: c4 01     mov   $01,a
08b4: e5 16 08  mov   a,$0816
08b7: f0 2f     beq   $08e8
08b9: c4 00     mov   $00,a
08bb: cd 07     mov   x,#$07
08bd: 0b 00     asl   $00
08bf: 90 13     bcc   $08d4
08c1: 7d        mov   a,x
08c2: 1c        asl   a
08c3: fd        mov   y,a
08c4: e5 14 08  mov   a,$0814
08c7: d6 c6 00  mov   $00c6+y,a
08ca: e5 15 08  mov   a,$0815
08cd: d6 c7 00  mov   $00c7+y,a
08d0: e4 01     mov   a,$01
08d2: d4 96     mov   $96+x,a
08d4: 1d        dec   x
08d5: 10 e6     bpl   $08bd
08d7: e5 16 08  mov   a,$0816
08da: c5 17 08  mov   $0817,a
08dd: e8 00     mov   a,#$00
08df: c5 14 08  mov   $0814,a
08e2: c5 15 08  mov   $0815,a
08e5: c5 16 08  mov   $0816,a
08e8: 6f        ret

08e9: e4 24     mov   a,$24
08eb: 30 01     bmi   $08ee
08ed: 6f        ret

08ee: 28 7f     and   a,#$7f
08f0: c4 24     mov   $24,a
08f2: 68 77     cmp   a,#$77
08f4: 90 11     bcc   $0907
08f6: a8 77     sbc   a,#$77
08f8: 1c        asl   a
08f9: 5d        mov   x,a
08fa: 1f fd 08  jmp   ($08fd+x)

08fd: dw $091f
08ff: dw $2391
0901: dw $2391
0903: dw $0941
0905: dw $096d

0907: 3f 1a 09  call  $091a
090a: 68 ff     cmp   a,#$ff
090c: d0 01     bne   $090f
090e: 6f        ret

090f: c4 25     mov   $25,a
0911: 65 bd b8  cmp   a,$b8bd
0914: b0 03     bcs   $0919
0916: 5f d8 09  jmp   $09d8

0919: 6f        ret

091a: fd        mov   y,a
091b: f6 d6 d9  mov   a,$d9d6+y
091e: 6f        ret

091f: 3f 6d 09  call  $096d
0922: 8f f0 f1  mov   $f1,#$f0
0925: 8f 00 f4  mov   $f4,#$00
0928: 8f 00 f5  mov   $f5,#$00
092b: 8f 00 f6  mov   $f6,#$00
092e: 8f 00 f7  mov   $f7,#$00
0931: 5f c0 ff  jmp   $ffc0

0934: 6f        ret

0935: e8 00     mov   a,#$00
0937: c5 10 08  mov   $0810,a
093a: 6f        ret

093b: e8 ff     mov   a,#$ff
093d: c5 10 08  mov   $0810,a
0940: 6f        ret

0941: 3f 05 23  call  $2305
0944: 3f c0 09  call  $09c0
0947: e8 25     mov   a,#$25
0949: c4 e8     mov   $e8,a
094b: 3f 91 23  call  $2391
094e: e4 e8     mov   a,$e8
0950: c4 e7     mov   $e7,a
0952: 20        clrp
0953: e8 00     mov   a,#$00
0955: 5d        mov   x,a
0956: af        mov   (x)+,a
0957: c8 f0     cmp   x,#$f0
0959: d0 fb     bne   $0956
095b: cd ff     mov   x,#$ff
095d: bd        mov   sp,x
095e: 3f a0 21  call  $21a0
0961: 3f a3 09  call  $09a3
0964: 8f 68 f6  mov   $f6,#$68
0967: 8f 09 f7  mov   $f7,#$09
096a: 5f 79 08  jmp   $0879

096d: 3f 05 23  call  $2305
0970: e8 00     mov   a,#$00
0972: c4 25     mov   $25,a
0974: c4 24     mov   $24,a
0976: c5 38 08  mov   $0838,a
0979: c4 26     mov   $26,a
097b: c4 2a     mov   $2a,a
097d: c4 2b     mov   $2b,a
097f: cd 0f     mov   x,#$0f
0981: d4 42     mov   $42+x,a
0983: 1d        dec   x
0984: 10 fb     bpl   $0981
0986: c5 12 08  mov   $0812,a
0989: c5 13 08  mov   $0813,a
098c: c5 14 08  mov   $0814,a
098f: c5 15 08  mov   $0815,a
0992: c4 85     mov   $85,a
0994: c4 84     mov   $84,a
0996: c5 16 08  mov   $0816,a
0999: c5 17 08  mov   $0817,a
099c: 3f c5 21  call  $21c5
099f: e8 25     mov   a,#$25
09a1: c4 e8     mov   $e8,a
09a3: e8 80     mov   a,#$80
09a5: c4 db     mov   $db,a
09a7: e8 ff     mov   a,#$ff
09a9: c4 1e     mov   $1e,a
09ab: c4 dc     mov   $dc,a
09ad: bc        inc   a
09ae: c4 87     mov   $87,a
09b0: c4 20     mov   $20,a
09b2: c4 1a     mov   $1a,a
09b4: c4 1c     mov   $1c,a
09b6: c4 1b     mov   $1b,a
09b8: cd 08     mov   x,#$08
09ba: d5 01 05  mov   $0501+x,a
09bd: 1d        dec   x
09be: 10 fa     bpl   $09ba
09c0: cd 07     mov   x,#$07
09c2: 7d        mov   a,x
09c3: 9f        xcn   a
09c4: 2d        push  a
09c5: 08 07     or    a,#$07
09c7: c4 f2     mov   $f2,a
09c9: 8f 9e f3  mov   $f3,#$9e
09cc: ae        pop   a
09cd: 08 05     or    a,#$05
09cf: c4 f2     mov   $f2,a
09d1: 8f 00 f3  mov   $f3,#$00
09d4: 1d        dec   x
09d5: 10 eb     bpl   $09c2
09d7: 6f        ret

09d8: 2d        push  a
09d9: 3f a3 09  call  $09a3
09dc: 3f dd 21  call  $21dd
09df: 3f 05 23  call  $2305
09e2: ae        pop   a
09e3: 1c        asl   a
09e4: 5d        mov   x,a
09e5: f5 be b8  mov   a,$b8be+x
09e8: c4 02     mov   $02,a
09ea: f5 bf b8  mov   a,$b8bf+x
09ed: c4 03     mov   $03,a
09ef: 8d 00     mov   y,#$00
09f1: cd 00     mov   x,#$00
09f3: 8d 00     mov   y,#$00
09f5: f7 02     mov   a,($02)+y
09f7: c4 04     mov   $04,a
09f9: 3a 02     incw  $02
09fb: f7 02     mov   a,($02)+y
09fd: 68 ff     cmp   a,#$ff
09ff: f0 39     beq   $0a3a
0a01: c4 05     mov   $05,a
0a03: 3a 02     incw  $02
0a05: e4 03     mov   a,$03
0a07: fd        mov   y,a
0a08: d5 01 05  mov   $0501+x,a
0a0b: e4 02     mov   a,$02
0a0d: d5 f8 04  mov   $04f8+x,a
0a10: 7a 04     addw  ya,$04
0a12: da 02     movw  $02,ya
0a14: 40        setp
0a15: e8 00     mov   a,#$00
0a17: d4 06     mov   $06+x,a
0a19: d4 0f     mov   $0f+x,a
0a1b: d4 18     mov   $18+x,a
0a1d: d4 21     mov   $21+x,a
0a1f: 20        clrp
0a20: d5 52 05  mov   $0552+x,a
0a23: d5 13 05  mov   $0513+x,a
0a26: d5 0a 05  mov   $050a+x,a
0a29: d5 25 05  mov   $0525+x,a
0a2c: d5 2e 05  mov   $052e+x,a
0a2f: d5 37 05  mov   $0537+x,a
0a32: 3d        inc   x
0a33: c8 09     cmp   x,#$09
0a35: d0 bc     bne   $09f3
0a37: 5f 4c 0a  jmp   $0a4c

0a3a: e8 00     mov   a,#$00
0a3c: d5 01 05  mov   $0501+x,a
0a3f: d5 f8 04  mov   $04f8+x,a
0a42: 9c        dec   a
0a43: d5 52 05  mov   $0552+x,a
0a46: bc        inc   a
0a47: 3d        inc   x
0a48: c8 09     cmp   x,#$09
0a4a: d0 ee     bne   $0a3a
0a4c: e8 00     mov   a,#$00
0a4e: c4 27     mov   $27,a
0a50: c4 e3     mov   $e3,a
0a52: c4 e4     mov   $e4,a
0a54: c4 e5     mov   $e5,a
0a56: c4 e6     mov   $e6,a
0a58: 02 84     set0  $84
0a5a: 6f        ret

0a5b: e4 fd     mov   a,$fd
0a5d: 28 0f     and   a,#$0f
0a5f: d0 07     bne   $0a68
0a61: 3f 22 0b  call  $0b22
0a64: 3f 7d 0d  call  $0d7d
0a67: 6f        ret

0a68: 13 84 30  bbc0  $84,$0a9b
0a6b: 60        clrc
0a6c: e5 13 08  mov   a,$0813
0a6f: 30 12     bmi   $0a83
0a71: e5 12 08  mov   a,$0812
0a74: 84 2a     adc   a,$2a
0a76: c4 2a     mov   $2a,a
0a78: e5 13 08  mov   a,$0813
0a7b: 84 2b     adc   a,$2b
0a7d: 90 17     bcc   $0a96
0a7f: e8 ff     mov   a,#$ff
0a81: 2f 13     bra   $0a96
0a83: e5 12 08  mov   a,$0812
0a86: 84 2a     adc   a,$2a
0a88: c4 2a     mov   $2a,a
0a8a: e5 13 08  mov   a,$0813
0a8d: 84 2b     adc   a,$2b
0a8f: b0 05     bcs   $0a96
0a91: 3f 6d 09  call  $096d
0a94: e8 00     mov   a,#$00
0a96: c4 2b     mov   $2b,a
0a98: 3f 08 0b  call  $0b08
0a9b: e4 db     mov   a,$db
0a9d: 60        clrc
0a9e: 84 dc     adc   a,$dc
0aa0: c4 dc     mov   $dc,a
0aa2: 90 3c     bcc   $0ae0
0aa4: e8 00     mov   a,#$00
0aa6: c4 23     mov   $23,a
0aa8: c4 52     mov   $52,a
0aaa: cd 08     mov   x,#$08
0aac: f5 01 05  mov   a,$0501+x
0aaf: f0 0b     beq   $0abc
0ab1: 3f 52 0d  call  $0d52
0ab4: f5 01 05  mov   a,$0501+x
0ab7: f0 03     beq   $0abc
0ab9: 8f ff 23  mov   $23,#$ff
0abc: 1d        dec   x
0abd: 10 ed     bpl   $0aac
0abf: 3f 47 20  call  $2047
0ac2: e4 26     mov   a,$26
0ac4: 10 07     bpl   $0acd
0ac6: 28 7f     and   a,#$7f
0ac8: c4 26     mov   $26,a
0aca: 5f dc 0a  jmp   $0adc

0acd: e4 23     mov   a,$23
0acf: d0 0f     bne   $0ae0
0ad1: 12 84     clr0  $84
0ad3: e5 38 08  mov   a,$0838
0ad6: f0 08     beq   $0ae0
0ad8: e4 25     mov   a,$25
0ada: 28 7f     and   a,#$7f
0adc: 3f e3 09  call  $09e3
0adf: 6f        ret

0ae0: ab d7     inc   $d7
0ae2: ab d8     inc   $d8
0ae4: ab d9     inc   $d9
0ae6: 3f 22 0b  call  $0b22
0ae9: 3f b7 12  call  $12b7
0aec: 3f 48 22  call  $2248
0aef: 3f 7d 0d  call  $0d7d
0af2: 3f 7f 0c  call  $0c7f
0af5: 93 d7 03  bbc4  $d7,$0afb
0af8: 8f 00 d7  mov   $d7,#$00
0afb: 13 d8 03  bbc0  $d8,$0b01
0afe: 8f 00 d8  mov   $d8,#$00
0b01: b3 d9 03  bbc5  $d9,$0b07
0b04: 8f 00 d9  mov   $d9,#$00
0b07: 6f        ret

0b08: 80        setc
0b09: e8 00     mov   a,#$00
0b0b: 84 e3     adc   a,$e3
0b0d: c4 e3     mov   $e3,a
0b0f: e4 e4     mov   a,$e4
0b11: 88 00     adc   a,#$00
0b13: c4 e4     mov   $e4,a
0b15: e4 e5     mov   a,$e5
0b17: 88 00     adc   a,#$00
0b19: c4 e5     mov   $e5,a
0b1b: e4 e6     mov   a,$e6
0b1d: 88 00     adc   a,#$00
0b1f: c4 e6     mov   $e6,a
0b21: 6f        ret

0b22: e5 15 08  mov   a,$0815
0b25: 10 31     bpl   $0b58
0b27: e5 16 08  mov   a,$0816
0b2a: f0 2c     beq   $0b58
0b2c: c4 0a     mov   $0a,a
0b2e: cd 07     mov   x,#$07
0b30: 0b 0a     asl   $0a
0b32: 90 16     bcc   $0b4a
0b34: f5 c0 07  mov   a,$07c0+x
0b37: 24 20     and   a,$20
0b39: f0 0f     beq   $0b4a
0b3b: 7d        mov   a,x
0b3c: 1c        asl   a
0b3d: fd        mov   y,a
0b3e: e5 14 08  mov   a,$0814
0b41: d6 c6 00  mov   $00c6+y,a
0b44: e5 15 08  mov   a,$0815
0b47: d6 c7 00  mov   $00c7+y,a
0b4a: 1d        dec   x
0b4b: 10 e3     bpl   $0b30
0b4d: e8 00     mov   a,#$00
0b4f: c5 14 08  mov   $0814,a
0b52: c5 15 08  mov   $0815,a
0b55: c5 16 08  mov   $0816,a
0b58: e5 2a 08  mov   a,$082a
0b5b: f0 22     beq   $0b7f
0b5d: c4 0a     mov   $0a,a
0b5f: cd 07     mov   x,#$07
0b61: 0b 0a     asl   $0a
0b63: 90 0f     bcc   $0b74
0b65: f5 c0 07  mov   a,$07c0+x
0b68: 24 20     and   a,$20
0b6a: f0 08     beq   $0b74
0b6c: e5 28 08  mov   a,$0828
0b6f: 80        setc
0b70: a8 80     sbc   a,#$80
0b72: d4 be     mov   $be+x,a
0b74: 1d        dec   x
0b75: 10 ea     bpl   $0b61
0b77: e8 00     mov   a,#$00
0b79: c5 28 08  mov   $0828,a
0b7c: c5 2a 08  mov   $082a,a
0b7f: e5 22 08  mov   a,$0822
0b82: f0 1f     beq   $0ba3
0b84: c4 0a     mov   $0a,a
0b86: cd 07     mov   x,#$07
0b88: 0b 0a     asl   $0a
0b8a: 90 0c     bcc   $0b98
0b8c: f5 c0 07  mov   a,$07c0+x
0b8f: 24 20     and   a,$20
0b91: f0 05     beq   $0b98
0b93: e5 20 08  mov   a,$0820
0b96: d4 9e     mov   $9e+x,a
0b98: 1d        dec   x
0b99: 10 ed     bpl   $0b88
0b9b: e8 00     mov   a,#$00
0b9d: c5 20 08  mov   $0820,a
0ba0: c5 22 08  mov   $0822,a
0ba3: e5 26 08  mov   a,$0826
0ba6: f0 23     beq   $0bcb
0ba8: c4 0a     mov   $0a,a
0baa: cd 07     mov   x,#$07
0bac: 0b 0a     asl   $0a
0bae: 90 10     bcc   $0bc0
0bb0: f5 c0 07  mov   a,$07c0+x
0bb3: 24 20     and   a,$20
0bb5: f0 09     beq   $0bc0
0bb7: e5 24 08  mov   a,$0824
0bba: 5c        lsr   a
0bbb: 80        setc
0bbc: a8 40     sbc   a,#$40
0bbe: d4 a6     mov   $a6+x,a
0bc0: 1d        dec   x
0bc1: 10 e9     bpl   $0bac
0bc3: e8 00     mov   a,#$00
0bc5: c5 24 08  mov   $0824,a
0bc8: c5 26 08  mov   $0826,a
0bcb: e5 1a 08  mov   a,$081a
0bce: f0 20     beq   $0bf0
0bd0: c4 0a     mov   $0a,a
0bd2: cd 07     mov   x,#$07
0bd4: 0b 0a     asl   $0a
0bd6: 90 0d     bcc   $0be5
0bd8: f5 c0 07  mov   a,$07c0+x
0bdb: 24 20     and   a,$20
0bdd: f0 06     beq   $0be5
0bdf: e5 18 08  mov   a,$0818
0be2: 5c        lsr   a
0be3: d4 ae     mov   $ae+x,a
0be5: 1d        dec   x
0be6: 10 ec     bpl   $0bd4
0be8: e8 00     mov   a,#$00
0bea: c5 18 08  mov   $0818,a
0bed: c5 1a 08  mov   $081a,a
0bf0: e5 1e 08  mov   a,$081e
0bf3: f0 23     beq   $0c18
0bf5: c4 0a     mov   $0a,a
0bf7: cd 07     mov   x,#$07
0bf9: 0b 0a     asl   $0a
0bfb: 90 10     bcc   $0c0d
0bfd: f5 c0 07  mov   a,$07c0+x
0c00: 24 20     and   a,$20
0c02: f0 09     beq   $0c0d
0c04: e5 1c 08  mov   a,$081c
0c07: 5c        lsr   a
0c08: 80        setc
0c09: a8 40     sbc   a,#$40
0c0b: d4 b6     mov   $b6+x,a
0c0d: 1d        dec   x
0c0e: 10 e9     bpl   $0bf9
0c10: e8 00     mov   a,#$00
0c12: c5 1c 08  mov   $081c,a
0c15: c5 1e 08  mov   $081e,a
0c18: e5 2c 08  mov   a,$082c
0c1b: f0 26     beq   $0c43
0c1d: 68 ff     cmp   a,#$ff
0c1f: d0 05     bne   $0c26
0c21: e5 2d 08  mov   a,$082d
0c24: 2f 16     bra   $0c3c
0c26: eb db     mov   y,$db
0c28: cc 2d 08  mov   $082d,y
0c2b: 68 cf     cmp   a,#$cf
0c2d: 90 04     bcc   $0c33
0c2f: e8 ff     mov   a,#$ff
0c31: 2f 09     bra   $0c3c
0c33: c4 0a     mov   $0a,a
0c35: 8d 3b     mov   y,#$3b
0c37: cf        mul   ya
0c38: 1c        asl   a
0c39: dd        mov   a,y
0c3a: 84 0a     adc   a,$0a
0c3c: c4 db     mov   $db,a
0c3e: e8 00     mov   a,#$00
0c40: c5 2c 08  mov   $082c,a
0c43: e5 2e 08  mov   a,$082e
0c46: f0 0b     beq   $0c53
0c48: 5c        lsr   a
0c49: 80        setc
0c4a: a8 40     sbc   a,#$40
0c4c: c4 e0     mov   $e0,a
0c4e: e8 00     mov   a,#$00
0c50: c5 2e 08  mov   $082e,a
0c53: e5 30 08  mov   a,$0830
0c56: f0 16     beq   $0c6e
0c58: 68 ff     cmp   a,#$ff
0c5a: d0 05     bne   $0c61
0c5c: e5 31 08  mov   a,$0831
0c5f: 2f 06     bra   $0c67
0c61: eb dd     mov   y,$dd
0c63: cc 31 08  mov   $0831,y
0c66: 5c        lsr   a
0c67: c4 dd     mov   $dd,a
0c69: e8 00     mov   a,#$00
0c6b: c5 30 08  mov   $0830,a
0c6e: e5 32 08  mov   a,$0832
0c71: f0 0b     beq   $0c7e
0c73: 5c        lsr   a
0c74: 80        setc
0c75: a8 40     sbc   a,#$40
0c77: c4 e1     mov   $e1,a
0c79: e8 00     mov   a,#$00
0c7b: c5 32 08  mov   $0832,a
0c7e: 6f        ret

0c7f: ab d6     inc   $d6
0c81: c3 d6 01  bbs6  $d6,$0c85
0c84: 6f        ret

0c85: 8f 00 d6  mov   $d6,#$00
0c88: e4 e1     mov   a,$e1
0c8a: 60        clrc
0c8b: f0 24     beq   $0cb1
0c8d: 10 11     bpl   $0ca0
0c8f: 84 dd     adc   a,$dd
0c91: b0 1c     bcs   $0caf
0c93: 48 ff     eor   a,#$ff
0c95: fd        mov   y,a
0c96: e4 e1     mov   a,$e1
0c98: 48 ff     eor   a,#$ff
0c9a: bc        inc   a
0c9b: c4 e1     mov   $e1,a
0c9d: dd        mov   a,y
0c9e: 2f 0f     bra   $0caf
0ca0: 84 dd     adc   a,$dd
0ca2: 10 0b     bpl   $0caf
0ca4: 48 ff     eor   a,#$ff
0ca6: fd        mov   y,a
0ca7: e4 e1     mov   a,$e1
0ca9: 48 ff     eor   a,#$ff
0cab: bc        inc   a
0cac: c4 e1     mov   $e1,a
0cae: dd        mov   a,y
0caf: c4 dd     mov   $dd,a
0cb1: e4 e2     mov   a,$e2
0cb3: 60        clrc
0cb4: f0 42     beq   $0cf8
0cb6: 10 11     bpl   $0cc9
0cb8: 84 de     adc   a,$de
0cba: b0 1c     bcs   $0cd8
0cbc: 48 ff     eor   a,#$ff
0cbe: fd        mov   y,a
0cbf: e4 e2     mov   a,$e2
0cc1: 48 ff     eor   a,#$ff
0cc3: bc        inc   a
0cc4: c4 e2     mov   $e2,a
0cc6: dd        mov   a,y
0cc7: 2f 0f     bra   $0cd8
0cc9: 84 de     adc   a,$de
0ccb: 10 0b     bpl   $0cd8
0ccd: 48 ff     eor   a,#$ff
0ccf: fd        mov   y,a
0cd0: e4 e2     mov   a,$e2
0cd2: 48 ff     eor   a,#$ff
0cd4: bc        inc   a
0cd5: c4 e2     mov   $e2,a
0cd7: dd        mov   a,y
0cd8: 28 7f     and   a,#$7f
0cda: c4 de     mov   $de,a
0cdc: 48 ff     eor   a,#$ff
0cde: 28 7f     and   a,#$7f
0ce0: 68 40     cmp   a,#$40
0ce2: 90 02     bcc   $0ce6
0ce4: e8 3f     mov   a,#$3f
0ce6: 1c        asl   a
0ce7: 1c        asl   a
0ce8: c4 04     mov   $04,a
0cea: e4 de     mov   a,$de
0cec: 68 40     cmp   a,#$40
0cee: 90 02     bcc   $0cf2
0cf0: e8 3f     mov   a,#$3f
0cf2: 1c        asl   a
0cf3: 1c        asl   a
0cf4: c4 05     mov   $05,a
0cf6: 2f 0a     bra   $0d02
0cf8: 8f ff 04  mov   $04,#$ff
0cfb: 8f ff 05  mov   $05,#$ff
0cfe: e8 40     mov   a,#$40
0d00: c4 de     mov   $de,a
0d02: e4 df     mov   a,$df
0d04: c4 0a     mov   $0a,a
0d06: e4 04     mov   a,$04
0d08: eb dd     mov   y,$dd
0d0a: cf        mul   ya
0d0b: dd        mov   a,y
0d0c: 33 0a 03  bbc1  $0a,$0d12
0d0f: 48 ff     eor   a,#$ff
0d11: bc        inc   a
0d12: 8f 0c f2  mov   $f2,#$0c
0d15: c4 f3     mov   $f3,a
0d17: e4 05     mov   a,$05
0d19: eb dd     mov   y,$dd
0d1b: cf        mul   ya
0d1c: dd        mov   a,y
0d1d: 13 0a 03  bbc0  $0a,$0d23
0d20: 48 ff     eor   a,#$ff
0d22: bc        inc   a
0d23: 8f 1c f2  mov   $f2,#$1c
0d26: c4 f3     mov   $f3,a
0d28: e4 e0     mov   a,$e0
0d2a: 60        clrc
0d2b: f0 24     beq   $0d51
0d2d: 10 11     bpl   $0d40
0d2f: 84 db     adc   a,$db
0d31: b0 1c     bcs   $0d4f
0d33: 48 ff     eor   a,#$ff
0d35: fd        mov   y,a
0d36: e4 e0     mov   a,$e0
0d38: 48 ff     eor   a,#$ff
0d3a: bc        inc   a
0d3b: c4 e0     mov   $e0,a
0d3d: dd        mov   a,y
0d3e: 2f 0f     bra   $0d4f
0d40: 84 db     adc   a,$db
0d42: 90 0b     bcc   $0d4f
0d44: 48 ff     eor   a,#$ff
0d46: fd        mov   y,a
0d47: e4 e0     mov   a,$e0
0d49: 48 ff     eor   a,#$ff
0d4b: bc        inc   a
0d4c: c4 e0     mov   $e0,a
0d4e: dd        mov   a,y
0d4f: c4 db     mov   $db,a
0d51: 6f        ret

0d52: f5 0a 05  mov   a,$050a+x
0d55: f0 06     beq   $0d5d
0d57: 9c        dec   a
0d58: d5 0a 05  mov   $050a+x,a
0d5b: d0 0f     bne   $0d6c
0d5d: 4d        push  x
0d5e: 3f 26 18  call  $1826
0d61: ce        pop   x
0d62: f5 01 05  mov   a,$0501+x
0d65: f0 05     beq   $0d6c
0d67: f5 0a 05  mov   a,$050a+x
0d6a: f0 f1     beq   $0d5d
0d6c: 6f        ret

0d6d: e4 00     mov   a,$00
0d6f: 68 a0     cmp   a,#$a0
0d71: 90 01     bcc   $0d74
0d73: 6f        ret

0d74: 28 0f     and   a,#$0f
0d76: 5d        mov   x,a
0d77: e4 02     mov   a,$02
0d79: 3f 00 12  call  $1200
0d7c: 6f        ret

0d7d: 3f 7b 11  call  $117b
0d80: e4 1e     mov   a,$1e
0d82: 48 ff     eor   a,#$ff
0d84: 24 1c     and   a,$1c
0d86: c4 12     mov   $12,a
0d88: e4 20     mov   a,$20
0d8a: 04 1f     or    a,$1f
0d8c: c4 13     mov   $13,a
0d8e: cd 07     mov   x,#$07
0d90: e4 1a     mov   a,$1a
0d92: 0b 13     asl   $13
0d94: 90 05     bcc   $0d9b
0d96: 1c        asl   a
0d97: 2d        push  a
0d98: 5f bc 0d  jmp   $0dbc

0d9b: 1c        asl   a
0d9c: 2d        push  a
0d9d: b0 0c     bcs   $0dab
0d9f: 7d        mov   a,x
0da0: 9f        xcn   a
0da1: 08 08     or    a,#$08
0da3: c4 f2     mov   $f2,a
0da5: e4 f3     mov   a,$f3
0da7: 68 02     cmp   a,#$02
0da9: 90 11     bcc   $0dbc
0dab: d8 08     mov   $08,x
0dad: f4 2c     mov   a,$2c+x
0daf: 28 0f     and   a,#$0f
0db1: c4 09     mov   $09,a
0db3: 3f df 0d  call  $0ddf
0db6: 3f f3 0f  call  $0ff3
0db9: 3f 28 0e  call  $0e28
0dbc: f4 2c     mov   a,$2c+x
0dbe: 28 0f     and   a,#$0f
0dc0: fd        mov   y,a
0dc1: f6 e6 04  mov   a,$04e6+y
0dc4: 68 01     cmp   a,#$01
0dc6: 2b 86     rol   $86
0dc8: ae        pop   a
0dc9: 0b 12     asl   $12
0dcb: 1d        dec   x
0dcc: 10 c4     bpl   $0d92
0dce: 29 20 87  and   ($87),($20)
0dd1: e4 20     mov   a,$20
0dd3: 48 ff     eor   a,#$ff
0dd5: 24 86     and   a,$86
0dd7: 04 87     or    a,$87
0dd9: c4 86     mov   $86,a
0ddb: 3f af 11  call  $11af
0dde: 6f        ret

0ddf: f4 3c     mov   a,$3c+x
0de1: c4 4c     mov   $4c,a
0de3: f4 44     mov   a,$44+x
0de5: c4 4d     mov   $4d,a
0de7: 8d 0d     mov   y,#$0d
0de9: f7 4c     mov   a,($4c)+y
0deb: c4 0e     mov   $0e,a
0ded: 8d 0e     mov   y,#$0e
0def: f7 4c     mov   a,($4c)+y
0df1: c4 0f     mov   $0f,a
0df3: e4 12     mov   a,$12
0df5: 30 2e     bmi   $0e25
0df7: f8 09     mov   x,$09
0df9: f5 83 04  mov   a,$0483+x
0dfc: d0 04     bne   $0e02
0dfe: 8d 01     mov   y,#$01
0e00: f7 4c     mov   a,($4c)+y
0e02: c4 0c     mov   $0c,a
0e04: f5 95 04  mov   a,$0495+x
0e07: d0 04     bne   $0e0d
0e09: 8d 00     mov   y,#$00
0e0b: f7 4c     mov   a,($4c)+y
0e0d: c4 0d     mov   $0d,a
0e0f: f5 b9 04  mov   a,$04b9+x
0e12: d0 04     bne   $0e18
0e14: 8d 08     mov   y,#$08
0e16: f7 4c     mov   a,($4c)+y
0e18: c4 10     mov   $10,a
0e1a: f5 c2 04  mov   a,$04c2+x
0e1d: d0 04     bne   $0e23
0e1f: 8d 07     mov   y,#$07
0e21: f7 4c     mov   a,($4c)+y
0e23: c4 11     mov   $11,a
0e25: f8 08     mov   x,$08
0e27: 6f        ret

0e28: f5 c0 07  mov   a,$07c0+x
0e2b: 2d        push  a
0e2c: f4 2c     mov   a,$2c+x
0e2e: 28 70     and   a,#$70
0e30: 9f        xcn   a
0e31: 1c        asl   a
0e32: 1c        asl   a
0e33: f8 09     mov   x,$09
0e35: 60        clrc
0e36: 95 3b 04  adc   a,$043b+x
0e39: fd        mov   y,a
0e3a: f6 a0 07  mov   a,$07a0+y
0e3d: fd        mov   y,a
0e3e: e4 2b     mov   a,$2b
0e40: cf        mul   ya
0e41: 3f e6 0e  call  $0ee6
0e44: f5 88 05  mov   a,$0588+x
0e47: 48 ff     eor   a,#$ff
0e49: 28 7f     and   a,#$7f
0e4b: 68 40     cmp   a,#$40
0e4d: 90 02     bcc   $0e51
0e4f: e8 3f     mov   a,#$3f
0e51: 1c        asl   a
0e52: c4 04     mov   $04,a
0e54: f5 88 05  mov   a,$0588+x
0e57: 68 40     cmp   a,#$40
0e59: 90 02     bcc   $0e5d
0e5b: e8 3f     mov   a,#$3f
0e5d: 1c        asl   a
0e5e: c4 05     mov   $05,a
0e60: e5 10 08  mov   a,$0810
0e63: f0 0a     beq   $0e6f
0e65: 60        clrc
0e66: e4 04     mov   a,$04
0e68: 84 05     adc   a,$05
0e6a: 5c        lsr   a
0e6b: c4 04     mov   $04,a
0e6d: c4 05     mov   $05,a
0e6f: f5 7a 04  mov   a,$047a+x
0e72: c4 0a     mov   $0a,a
0e74: e4 04     mov   a,$04
0e76: eb 0c     mov   y,$0c
0e78: cf        mul   ya
0e79: dd        mov   a,y
0e7a: 33 0a 03  bbc1  $0a,$0e80
0e7d: 48 ff     eor   a,#$ff
0e7f: bc        inc   a
0e80: fd        mov   y,a
0e81: e4 08     mov   a,$08
0e83: 9f        xcn   a
0e84: c4 02     mov   $02,a
0e86: e8 00     mov   a,#$00
0e88: 04 02     or    a,$02
0e8a: da f2     movw  $f2,ya
0e8c: e4 05     mov   a,$05
0e8e: eb 0c     mov   y,$0c
0e90: cf        mul   ya
0e91: dd        mov   a,y
0e92: ab f2     inc   $f2
0e94: 13 0a 03  bbc0  $0a,$0e9a
0e97: 48 ff     eor   a,#$ff
0e99: bc        inc   a
0e9a: c4 f3     mov   $f3,a
0e9c: 3f 83 0f  call  $0f83
0e9f: ab f2     inc   $f2
0ea1: fa 00 f3  mov   ($f3),($00)
0ea4: ab f2     inc   $f2
0ea6: fa 01 f3  mov   ($f3),($01)
0ea9: ae        pop   a
0eaa: 24 1a     and   a,$1a
0eac: f0 35     beq   $0ee3
0eae: ab f2     inc   $f2
0eb0: 8d 0c     mov   y,#$0c
0eb2: f7 4c     mov   a,($4c)+y
0eb4: fd        mov   y,a
0eb5: f6 56 db  mov   a,$db56+y
0eb8: c4 f3     mov   $f3,a
0eba: ab f2     inc   $f2
0ebc: f8 09     mov   x,$09
0ebe: f5 20 04  mov   a,$0420+x
0ec1: d0 04     bne   $0ec7
0ec3: 8d 05     mov   y,#$05
0ec5: f7 4c     mov   a,($4c)+y
0ec7: c4 f3     mov   $f3,a
0ec9: ab f2     inc   $f2
0ecb: f5 29 04  mov   a,$0429+x
0ece: d0 04     bne   $0ed4
0ed0: 8d 04     mov   y,#$04
0ed2: f7 4c     mov   a,($4c)+y
0ed4: c4 f3     mov   $f3,a
0ed6: ab f2     inc   $f2
0ed8: f5 32 04  mov   a,$0432+x
0edb: d0 04     bne   $0ee1
0edd: 8d 06     mov   y,#$06
0edf: f7 4c     mov   a,($4c)+y
0ee1: c4 f3     mov   $f3,a
0ee3: f8 08     mov   x,$08
0ee5: 6f        ret

0ee6: 93 d7 33  bbc4  $d7,$0f1c
0ee9: f5 56 04  mov   a,$0456+x
0eec: 60        clrc
0eed: f0 2d     beq   $0f1c
0eef: 10 14     bpl   $0f05
0ef1: 95 6d 05  adc   a,$056d+x
0ef4: b0 21     bcs   $0f17
0ef6: 48 ff     eor   a,#$ff
0ef8: 2d        push  a
0ef9: f5 56 04  mov   a,$0456+x
0efc: 48 ff     eor   a,#$ff
0efe: bc        inc   a
0eff: d5 56 04  mov   $0456+x,a
0f02: ae        pop   a
0f03: 2f 12     bra   $0f17
0f05: 95 6d 05  adc   a,$056d+x
0f08: 10 0d     bpl   $0f17
0f0a: 48 ff     eor   a,#$ff
0f0c: 2d        push  a
0f0d: f5 56 04  mov   a,$0456+x
0f10: 48 ff     eor   a,#$ff
0f12: bc        inc   a
0f13: d5 56 04  mov   $0456+x,a
0f16: ae        pop   a
0f17: 28 7f     and   a,#$7f
0f19: d5 6d 05  mov   $056d+x,a
0f1c: f5 6d 05  mov   a,$056d+x
0f1f: f8 08     mov   x,$08
0f21: 60        clrc
0f22: 95 d9 05  adc   a,$05d9+x
0f25: f8 09     mov   x,$09
0f27: cf        mul   ya
0f28: cb 0c     mov   $0c,y
0f2a: 93 d7 33  bbc4  $d7,$0f60
0f2d: f5 4d 04  mov   a,$044d+x
0f30: 60        clrc
0f31: f0 2d     beq   $0f60
0f33: 10 14     bpl   $0f49
0f35: 95 88 05  adc   a,$0588+x
0f38: b0 21     bcs   $0f5b
0f3a: 48 ff     eor   a,#$ff
0f3c: fd        mov   y,a
0f3d: f5 4d 04  mov   a,$044d+x
0f40: 48 ff     eor   a,#$ff
0f42: bc        inc   a
0f43: d5 4d 04  mov   $044d+x,a
0f46: dd        mov   a,y
0f47: 2f 12     bra   $0f5b
0f49: 95 88 05  adc   a,$0588+x
0f4c: 10 0d     bpl   $0f5b
0f4e: 48 ff     eor   a,#$ff
0f50: fd        mov   y,a
0f51: f5 4d 04  mov   a,$044d+x
0f54: 48 ff     eor   a,#$ff
0f56: bc        inc   a
0f57: d5 4d 04  mov   $044d+x,a
0f5a: dd        mov   a,y
0f5b: 28 7f     and   a,#$7f
0f5d: d5 88 05  mov   $0588+x,a
0f60: 93 d7 1f  bbc4  $d7,$0f82
0f63: 8f 00 0b  mov   $0b,#$00
0f66: f5 5f 04  mov   a,$045f+x
0f69: f0 17     beq   $0f82
0f6b: 10 03     bpl   $0f70
0f6d: 8f ff 0b  mov   $0b,#$ff
0f70: c4 0a     mov   $0a,a
0f72: f5 49 05  mov   a,$0549+x
0f75: fd        mov   y,a
0f76: f5 40 05  mov   a,$0540+x
0f79: 7a 0a     addw  ya,$0a
0f7b: d5 40 05  mov   $0540+x,a
0f7e: dd        mov   a,y
0f7f: d5 49 05  mov   $0549+x,a
0f82: 6f        ret

0f83: f8 08     mov   x,$08
0f85: f4 34     mov   a,$34+x
0f87: c4 00     mov   $00,a
0f89: 60        clrc
0f8a: e4 0e     mov   a,$0e
0f8c: 95 c7 05  adc   a,$05c7+x
0f8f: c4 0e     mov   $0e,a
0f91: e4 0f     mov   a,$0f
0f93: 95 d0 05  adc   a,$05d0+x
0f96: c4 0f     mov   $0f,a
0f98: f8 09     mov   x,$09
0f9a: f5 71 04  mov   a,$0471+x
0f9d: c4 04     mov   $04,a
0f9f: f5 68 04  mov   a,$0468+x
0fa2: c4 05     mov   $05,a
0fa4: f5 49 05  mov   a,$0549+x
0fa7: fd        mov   y,a
0fa8: f5 40 05  mov   a,$0540+x
0fab: 7a 0e     addw  ya,$0e
0fad: 7a 04     addw  ya,$04
0faf: c4 04     mov   $04,a
0fb1: dd        mov   a,y
0fb2: 60        clrc
0fb3: 84 00     adc   a,$00
0fb5: 8d 00     mov   y,#$00
0fb7: cd 0c     mov   x,#$0c
0fb9: 9e        div   ya,x
0fba: 2d        push  a
0fbb: dd        mov   a,y
0fbc: 5d        mov   x,a
0fbd: f5 d4 07  mov   a,$07d4+x
0fc0: eb 04     mov   y,$04
0fc2: cf        mul   ya
0fc3: cb 00     mov   $00,y
0fc5: 8f 00 01  mov   $01,#$00
0fc8: f5 c8 07  mov   a,$07c8+x
0fcb: eb 04     mov   y,$04
0fcd: cf        mul   ya
0fce: 7a 00     addw  ya,$00
0fd0: 60        clrc
0fd1: 95 ec 07  adc   a,$07ec+x
0fd4: c4 00     mov   $00,a
0fd6: dd        mov   a,y
0fd7: 95 e0 07  adc   a,$07e0+x
0fda: c4 01     mov   $01,a
0fdc: ae        pop   a
0fdd: 48 ff     eor   a,#$ff
0fdf: 80        setc
0fe0: 88 06     adc   a,#$06
0fe2: f0 0e     beq   $0ff2
0fe4: 68 06     cmp   a,#$06
0fe6: b0 0a     bcs   $0ff2
0fe8: fd        mov   y,a
0fe9: e4 01     mov   a,$01
0feb: 5c        lsr   a
0fec: 6b 00     ror   $00
0fee: fe fb     dbnz  y,$0feb
0ff0: c4 01     mov   $01,a
0ff2: 6f        ret

0ff3: e4 12     mov   a,$12
0ff5: 10 01     bpl   $0ff8
0ff7: 6f        ret

0ff8: 13 d8 03  bbc0  $d8,$0ffe
0ffb: 3f 39 10  call  $1039
0ffe: b3 d9 03  bbc5  $d9,$1004
1001: 3f d0 10  call  $10d0
1004: 3f 0a 10  call  $100a
1007: f8 08     mov   x,$08
1009: 6f        ret

100a: f8 09     mov   x,$09
100c: f5 5b 05  mov   a,$055b+x
100f: bc        inc   a
1010: 1c        asl   a
1011: fd        mov   y,a
1012: f5 9a 05  mov   a,$059a+x
1015: 10 21     bpl   $1038
1017: 28 7f     and   a,#$7f
1019: d5 9a 05  mov   $059a+x,a
101c: 80        setc
101d: a8 40     sbc   a,#$40
101f: 1c        asl   a
1020: 10 0e     bpl   $1030
1022: 48 ff     eor   a,#$ff
1024: bc        inc   a
1025: cf        mul   ya
1026: da 04     movw  $04,ya
1028: e8 00     mov   a,#$00
102a: fd        mov   y,a
102b: 9a 04     subw  ya,$04
102d: 5f 31 10  jmp   $1031

1030: cf        mul   ya
1031: d5 40 05  mov   $0540+x,a
1034: dd        mov   a,y
1035: d5 49 05  mov   $0549+x,a
1038: 6f        ret

1039: e4 0c     mov   a,$0c
103b: d0 03     bne   $1040
103d: 5f c7 10  jmp   $10c7

1040: eb 08     mov   y,$08
1042: f8 09     mov   x,$09
1044: f5 ef 04  mov   a,$04ef+x
1047: d0 2d     bne   $1076
1049: f6 ea 05  mov   a,$05ea+y
104c: f0 07     beq   $1055
104e: 9c        dec   a
104f: d6 ea 05  mov   $05ea+y,a
1052: 5f c7 10  jmp   $10c7

1055: f6 f2 05  mov   a,$05f2+y
1058: f0 1c     beq   $1076
105a: 60        clrc
105b: f6 1a 06  mov   a,$061a+y
105e: 96 02 06  adc   a,$0602+y
1061: d6 1a 06  mov   $061a+y,a
1064: f6 12 06  mov   a,$0612+y
1067: 96 fa 05  adc   a,$05fa+y
106a: d6 12 06  mov   $0612+y,a
106d: f6 f2 05  mov   a,$05f2+y
1070: 9c        dec   a
1071: d6 f2 05  mov   $05f2+y,a
1074: d0 05     bne   $107b
1076: e4 0c     mov   a,$0c
1078: d6 12 06  mov   $0612+y,a
107b: 60        clrc
107c: f6 e2 05  mov   a,$05e2+y
107f: 84 0d     adc   a,$0d
1081: d6 e2 05  mov   $05e2+y,a
1084: c4 06     mov   $06,a
1086: 6d        push  y
1087: f6 12 06  mov   a,$0612+y
108a: fd        mov   y,a
108b: 3f 3c 11  call  $113c
108e: cf        mul   ya
108f: dd        mov   a,y
1090: 8d 00     mov   y,#$00
1092: aa 06 e0  mov1  c,$0006,7
1095: 90 07     bcc   $109e
1097: da 0a     movw  $0a,ya
1099: 8d 00     mov   y,#$00
109b: dd        mov   a,y
109c: 9a 0a     subw  ya,$0a
109e: da 0a     movw  $0a,ya
10a0: f5 8c 04  mov   a,$048c+x
10a3: f0 16     beq   $10bb
10a5: fd        mov   y,a
10a6: e4 0a     mov   a,$0a
10a8: cf        mul   ya
10a9: c4 0a     mov   $0a,a
10ab: 6d        push  y
10ac: f5 8c 04  mov   a,$048c+x
10af: fd        mov   y,a
10b0: e4 0b     mov   a,$0b
10b2: cf        mul   ya
10b3: ee        pop   y
10b4: cb 0b     mov   $0b,y
10b6: 60        clrc
10b7: 84 0b     adc   a,$0b
10b9: c4 0b     mov   $0b,a
10bb: ee        pop   y
10bc: e4 0a     mov   a,$0a
10be: d6 c7 05  mov   $05c7+y,a
10c1: e4 0b     mov   a,$0b
10c3: d6 d0 05  mov   $05d0+y,a
10c6: 6f        ret

10c7: e8 00     mov   a,#$00
10c9: d6 c7 05  mov   $05c7+y,a
10cc: d6 d0 05  mov   $05d0+y,a
10cf: 6f        ret

10d0: e4 10     mov   a,$10
10d2: f0 62     beq   $1136
10d4: eb 08     mov   y,$08
10d6: f8 09     mov   x,$09
10d8: e8 40     mov   a,#$40
10da: d5 6d 05  mov   $056d+x,a
10dd: f5 ef 04  mov   a,$04ef+x
10e0: d0 2d     bne   $110f
10e2: f6 2a 06  mov   a,$062a+y
10e5: f0 07     beq   $10ee
10e7: 9c        dec   a
10e8: d6 2a 06  mov   $062a+y,a
10eb: 5f 36 11  jmp   $1136

10ee: f6 32 06  mov   a,$0632+y
10f1: f0 1c     beq   $110f
10f3: 60        clrc
10f4: f6 5a 06  mov   a,$065a+y
10f7: 96 42 06  adc   a,$0642+y
10fa: d6 5a 06  mov   $065a+y,a
10fd: f6 52 06  mov   a,$0652+y
1100: 96 3a 06  adc   a,$063a+y
1103: d6 52 06  mov   $0652+y,a
1106: f6 32 06  mov   a,$0632+y
1109: 9c        dec   a
110a: d6 32 06  mov   $0632+y,a
110d: d0 05     bne   $1114
110f: e4 10     mov   a,$10
1111: d6 52 06  mov   $0652+y,a
1114: 60        clrc
1115: f6 22 06  mov   a,$0622+y
1118: 84 11     adc   a,$11
111a: d6 22 06  mov   $0622+y,a
111d: c4 06     mov   $06,a
111f: 6d        push  y
1120: f6 52 06  mov   a,$0652+y
1123: fd        mov   y,a
1124: 3f 3c 11  call  $113c
1127: cf        mul   ya
1128: dd        mov   a,y
1129: aa 06 e0  mov1  c,$0006,7
112c: 90 03     bcc   $1131
112e: 48 ff     eor   a,#$ff
1130: bc        inc   a
1131: ee        pop   y
1132: d6 d9 05  mov   $05d9+y,a
1135: 6f        ret

1136: e8 00     mov   a,#$00
1138: d6 d9 05  mov   $05d9+y,a
113b: 6f        ret

113c: 4d        push  x
113d: f5 b0 04  mov   a,$04b0+x
1140: 1c        asl   a
1141: 5d        mov   x,a
1142: 1f 45 11  jmp   ($1145+x)

1145: dw $1155
1147: dw $115f
1149: dw $1163
114b: dw $1168
114d: dw $116f
114f: dw $1155
1151: dw $1155
1153: dw $1155

1155: ce        pop   x
1156: e4 06     mov   a,$06
1158: 1c        asl   a
1159: 1c        asl   a
115a: 90 02     bcc   $115e
115c: 48 ff     eor   a,#$ff
115e: 6f        ret

115f: ce        pop   x
1160: e8 ff     mov   a,#$ff
1162: 6f        ret

1163: ce        pop   x
1164: e4 06     mov   a,$06
1166: 1c        asl   a
1167: 6f        ret

1168: ce        pop   x
1169: e4 06     mov   a,$06
116b: 1c        asl   a
116c: 48 ff     eor   a,#$ff
116e: 6f        ret

116f: ce        pop   x
1170: e4 06     mov   a,$06
1172: 28 f0     and   a,#$f0
1174: 1c        asl   a
1175: 1c        asl   a
1176: 90 02     bcc   $117a
1178: 48 ff     eor   a,#$ff
117a: 6f        ret

117b: e4 20     mov   a,$20
117d: 48 ff     eor   a,#$ff
117f: 2d        push  a
1180: 24 1c     and   a,$1c
1182: 04 21     or    a,$21
1184: c4 1d     mov   $1d,a
1186: ae        pop   a
1187: 24 1e     and   a,$1e
1189: 04 22     or    a,$22
118b: c4 1f     mov   $1f,a
118d: c4 12     mov   $12,a
118f: cd 07     mov   x,#$07
1191: 0b 12     asl   $12
1193: 90 16     bcc   $11ab
1195: 7d        mov   a,x
1196: 9f        xcn   a
1197: 08 07     or    a,#$07
1199: c4 f2     mov   $f2,a
119b: 4d        push  x
119c: f4 2c     mov   a,$2c+x
119e: 28 0f     and   a,#$0f
11a0: 5d        mov   x,a
11a1: f5 32 04  mov   a,$0432+x
11a4: d0 02     bne   $11a8
11a6: e8 9e     mov   a,#$9e
11a8: c4 f3     mov   $f3,a
11aa: ce        pop   x
11ab: 1d        dec   x
11ac: 10 e3     bpl   $1191
11ae: 6f        ret

11af: 8f 4d f2  mov   $f2,#$4d
11b2: fa 86 f3  mov   ($f3),($86)
11b5: e4 1f     mov   a,$1f
11b7: 48 ff     eor   a,#$ff
11b9: 24 1d     and   a,$1d
11bb: 8d 4c     mov   y,#$4c
11bd: cb f2     mov   $f2,y
11bf: c4 f3     mov   $f3,a
11c1: e4 1e     mov   a,$1e
11c3: 48 ff     eor   a,#$ff
11c5: 24 1c     and   a,$1c
11c7: 4e 1c 00  tclr1 $001c
11ca: e4 22     mov   a,$22
11cc: 48 ff     eor   a,#$ff
11ce: 24 21     and   a,$21
11d0: 4e 21 00  tclr1 $0021
11d3: 8f 00 1e  mov   $1e,#$00
11d6: 8f 00 22  mov   $22,#$00
11d9: 6f        ret

11da: 28 7f     and   a,#$7f
11dc: 3f ea 11  call  $11ea
11df: e4 12     mov   a,$12
11e1: d5 b5 05  mov   $05b5+x,a
11e4: e4 13     mov   a,$13
11e6: d5 be 05  mov   $05be+x,a
11e9: 6f        ret

11ea: fd        mov   y,a
11eb: f6 d6 da  mov   a,$dad6+y
11ee: 68 ff     cmp   a,#$ff
11f0: d0 01     bne   $11f3
11f2: bc        inc   a
11f3: 1c        asl   a
11f4: fd        mov   y,a
11f5: f6 36 25  mov   a,$2536+y
11f8: c4 12     mov   $12,a
11fa: f6 37 25  mov   a,$2537+y
11fd: c4 13     mov   $13,a
11ff: 6f        ret

1200: 2d        push  a
1201: f5 b5 05  mov   a,$05b5+x
1204: c4 0e     mov   $0e,a
1206: f5 be 05  mov   a,$05be+x
1209: c4 0f     mov   $0f,a
120b: ae        pop   a
120c: 8d 0f     mov   y,#$0f
120e: 77 0e     cmp   a,($0e)+y
1210: 90 26     bcc   $1238
1212: 8d 1f     mov   y,#$1f
1214: 77 0e     cmp   a,($0e)+y
1216: 90 20     bcc   $1238
1218: 8d 2f     mov   y,#$2f
121a: 77 0e     cmp   a,($0e)+y
121c: 90 1a     bcc   $1238
121e: 8d 3f     mov   y,#$3f
1220: 77 0e     cmp   a,($0e)+y
1222: 90 14     bcc   $1238
1224: 8d 4f     mov   y,#$4f
1226: 77 0e     cmp   a,($0e)+y
1228: 90 0e     bcc   $1238
122a: 8d 5f     mov   y,#$5f
122c: 77 0e     cmp   a,($0e)+y
122e: 90 08     bcc   $1238
1230: 8d 6f     mov   y,#$6f
1232: 77 0e     cmp   a,($0e)+y
1234: 90 02     bcc   $1238
1236: 8d 7f     mov   y,#$7f
1238: dd        mov   a,y
1239: 28 f0     and   a,#$f0
123b: 60        clrc
123c: 84 0e     adc   a,$0e
123e: d5 a3 05  mov   $05a3+x,a
1241: e8 00     mov   a,#$00
1243: 84 0f     adc   a,$0f
1245: d5 ac 05  mov   $05ac+x,a
1248: 6f        ret

1249: ab da     inc   $da
124b: e5 17 08  mov   a,$0817
124e: d0 01     bne   $1251
1250: 6f        ret

1251: c4 10     mov   $10,a
1253: cd 07     mov   x,#$07
1255: 0b 10     asl   $10
1257: 90 46     bcc   $129f
1259: f4 96     mov   a,$96+x
125b: 10 42     bpl   $129f
125d: 28 7f     and   a,#$7f
125f: d4 96     mov   $96+x,a
1261: fd        mov   y,a
1262: f6 56 da  mov   a,$da56+y
1265: 68 ff     cmp   a,#$ff
1267: f0 36     beq   $129f
1269: 65 bd b8  cmp   a,$b8bd
126c: b0 31     bcs   $129f
126e: 1c        asl   a
126f: fd        mov   y,a
1270: f6 be b8  mov   a,$b8be+y
1273: d5 62 06  mov   $0662+x,a
1276: f6 bf b8  mov   a,$b8bf+y
1279: d5 6a 06  mov   $066a+x,a
127c: f5 c0 07  mov   a,$07c0+x
127f: 2d        push  a
1280: 04 20     or    a,$20
1282: c4 20     mov   $20,a
1284: ae        pop   a
1285: 48 ff     eor   a,#$ff
1287: 24 87     and   a,$87
1289: c4 87     mov   $87,a
128b: 7d        mov   a,x
128c: 1c        asl   a
128d: fd        mov   y,a
128e: e8 00     mov   a,#$00
1290: d5 3a 07  mov   $073a+x,a
1293: d5 32 07  mov   $0732+x,a
1296: d6 42 07  mov   $0742+y,a
1299: d6 43 07  mov   $0743+y,a
129c: 3f 6a 13  call  $136a
129f: 1d        dec   x
12a0: 10 b3     bpl   $1255
12a2: e4 20     mov   a,$20
12a4: c4 10     mov   $10,a
12a6: cd 07     mov   x,#$07
12a8: 8d 00     mov   y,#$00
12aa: 0b 10     asl   $10
12ac: 90 03     bcc   $12b1
12ae: fc        inc   y
12af: 22 84     set1  $84
12b1: 1d        dec   x
12b2: 10 f6     bpl   $12aa
12b4: cb 85     mov   $85,y
12b6: 6f        ret

12b7: 33 84 44  bbc1  $84,$12fe
12ba: e4 20     mov   a,$20
12bc: c4 10     mov   $10,a
12be: cd 07     mov   x,#$07
12c0: 0b 10     asl   $10
12c2: 90 37     bcc   $12fb
12c4: 7d        mov   a,x
12c5: 1c        asl   a
12c6: fd        mov   y,a
12c7: 60        clrc
12c8: f6 c7 00  mov   a,$00c7+y
12cb: 30 15     bmi   $12e2
12cd: f6 c6 00  mov   a,$00c6+y
12d0: 96 42 07  adc   a,$0742+y
12d3: d6 42 07  mov   $0742+y,a
12d6: f6 c7 00  mov   a,$00c7+y
12d9: 96 43 07  adc   a,$0743+y
12dc: 90 1a     bcc   $12f8
12de: e8 ff     mov   a,#$ff
12e0: 2f 16     bra   $12f8
12e2: f6 c6 00  mov   a,$00c6+y
12e5: 96 42 07  adc   a,$0742+y
12e8: d6 42 07  mov   $0742+y,a
12eb: f6 c7 00  mov   a,$00c7+y
12ee: 96 43 07  adc   a,$0743+y
12f1: b0 05     bcs   $12f8
12f3: 3f 2a 13  call  $132a
12f6: e8 00     mov   a,#$00
12f8: d6 43 07  mov   $0743+y,a
12fb: 1d        dec   x
12fc: 10 c2     bpl   $12c0
12fe: 3f 80 13  call  $1380
1301: e4 20     mov   a,$20
1303: c4 0c     mov   $0c,a
1305: cd 07     mov   x,#$07
1307: 0b 0c     asl   $0c
1309: 90 06     bcc   $1311
130b: 3f 07 15  call  $1507
130e: 3f 1b 13  call  $131b
1311: 1d        dec   x
1312: 10 f3     bpl   $1307
1314: d3 da 03  bbc6  $da,$131a
1317: 8f 00 da  mov   $da,#$00
131a: 6f        ret

131b: 2d        push  a
131c: 4d        push  x
131d: 7d        mov   a,x
131e: 9f        xcn   a
131f: c4 08     mov   $08,a
1321: 3f 96 13  call  $1396
1324: 3f 5f 14  call  $145f
1327: ce        pop   x
1328: ae        pop   a
1329: 6f        ret

132a: 3f 6a 13  call  $136a
132d: f5 c0 07  mov   a,$07c0+x
1330: 48 ff     eor   a,#$ff
1332: c4 0d     mov   $0d,a
1334: 24 20     and   a,$20
1336: c4 20     mov   $20,a
1338: 8b 85     dec   $85
133a: f0 05     beq   $1341
133c: 10 05     bpl   $1343
133e: 8f 00 85  mov   $85,#$00
1341: 32 84     clr1  $84
1343: e4 0d     mov   a,$0d
1345: 25 17 08  and   a,$0817
1348: c5 17 08  mov   $0817,a
134b: e4 0d     mov   a,$0d
134d: 24 87     and   a,$87
134f: c4 87     mov   $87,a
1351: f5 c0 07  mov   a,$07c0+x
1354: 0e 22 00  tset1 $0022
1357: 7d        mov   a,x
1358: 9f        xcn   a
1359: 08 05     or    a,#$05
135b: c4 f2     mov   $f2,a
135d: e8 00     mov   a,#$00
135f: c4 f3     mov   $f3,a
1361: d4 96     mov   $96+x,a
1363: d4 b6     mov   $b6+x,a
1365: d4 a6     mov   $a6+x,a
1367: d4 be     mov   $be+x,a
1369: 6f        ret

136a: 8f 2d f2  mov   $f2,#$2d
136d: f5 c0 07  mov   a,$07c0+x
1370: 48 ff     eor   a,#$ff
1372: 2d        push  a
1373: 24 f3     and   a,$f3
1375: c4 f3     mov   $f3,a
1377: ae        pop   a
1378: 8f 3d f2  mov   $f2,#$3d
137b: 24 f3     and   a,$f3
137d: c4 f3     mov   $f3,a
137f: 6f        ret

1380: ba f6     movw  ya,$f6
1382: da 08     movw  $08,ya
1384: dd        mov   a,y
1385: 44 17     eor   a,$17
1387: 10 0c     bpl   $1395
1389: ba 08     movw  ya,$08
138b: da 16     movw  $16,ya
138d: da f6     movw  $f6,ya
138f: da 18     movw  $18,ya
1391: 18 80 19  or    $19,#$80
1394: 6f        ret

1395: 6f        ret

1396: d3 da 4f  bbc6  $da,$13e8
1399: 8f 00 0b  mov   $0b,#$00
139c: f4 be     mov   a,$be+x
139e: c4 0a     mov   $0a,a
13a0: f0 46     beq   $13e8
13a2: 10 20     bpl   $13c4
13a4: 8f ff 0b  mov   $0b,#$ff
13a7: f5 8a 06  mov   a,$068a+x
13aa: fd        mov   y,a
13ab: f5 82 06  mov   a,$0682+x
13ae: 7a 0a     addw  ya,$0a
13b0: da 0a     movw  $0a,ya
13b2: b0 2b     bcs   $13df
13b4: 8d 00     mov   y,#$00
13b6: dd        mov   a,y
13b7: 9a 0a     subw  ya,$0a
13b9: da 0a     movw  $0a,ya
13bb: f4 be     mov   a,$be+x
13bd: 48 ff     eor   a,#$ff
13bf: bc        inc   a
13c0: d4 be     mov   $be+x,a
13c2: 2f 1b     bra   $13df
13c4: f5 8a 06  mov   a,$068a+x
13c7: fd        mov   y,a
13c8: f5 82 06  mov   a,$0682+x
13cb: 7a 0a     addw  ya,$0a
13cd: da 0a     movw  $0a,ya
13cf: 10 0e     bpl   $13df
13d1: 8d 00     mov   y,#$00
13d3: dd        mov   a,y
13d4: 9a 0a     subw  ya,$0a
13d6: da 0a     movw  $0a,ya
13d8: f4 be     mov   a,$be+x
13da: 48 ff     eor   a,#$ff
13dc: bc        inc   a
13dd: d4 be     mov   $be+x,a
13df: ba 0a     movw  ya,$0a
13e1: d5 82 06  mov   $0682+x,a
13e4: dd        mov   a,y
13e5: d5 8a 06  mov   $068a+x,a
13e8: e8 03     mov   a,#$03
13ea: 04 08     or    a,$08
13ec: c4 f2     mov   $f2,a
13ee: f5 8a 06  mov   a,$068a+x
13f1: c4 f3     mov   $f3,a
13f3: 8b f2     dec   $f2
13f5: f5 82 06  mov   a,$0682+x
13f8: c4 f3     mov   $f3,a
13fa: 6f        ret

13fb: d3 da 31  bbc6  $da,$142f
13fe: f4 a6     mov   a,$a6+x
1400: 60        clrc
1401: f0 2c     beq   $142f
1403: 10 12     bpl   $1417
1405: 95 aa 06  adc   a,$06aa+x
1408: b0 1d     bcs   $1427
140a: 48 ff     eor   a,#$ff
140c: fd        mov   y,a
140d: f4 a6     mov   a,$a6+x
140f: 48 ff     eor   a,#$ff
1411: bc        inc   a
1412: d4 a6     mov   $a6+x,a
1414: dd        mov   a,y
1415: 2f 10     bra   $1427
1417: 95 aa 06  adc   a,$06aa+x
141a: 10 0b     bpl   $1427
141c: 48 ff     eor   a,#$ff
141e: fd        mov   y,a
141f: f4 a6     mov   a,$a6+x
1421: 48 ff     eor   a,#$ff
1423: bc        inc   a
1424: c4 a6     mov   $a6,a
1426: dd        mov   a,y
1427: 28 7f     and   a,#$7f
1429: d5 aa 06  mov   $06aa+x,a
142c: d5 a2 06  mov   $06a2+x,a
142f: 6f        ret

1430: d3 da 2b  bbc6  $da,$145e
1433: f4 b6     mov   a,$b6+x
1435: 60        clrc
1436: f0 26     beq   $145e
1438: 10 11     bpl   $144b
143a: 94 ae     adc   a,$ae+x
143c: b0 1c     bcs   $145a
143e: 48 ff     eor   a,#$ff
1440: fd        mov   y,a
1441: f4 b6     mov   a,$b6+x
1443: 48 ff     eor   a,#$ff
1445: bc        inc   a
1446: d4 b6     mov   $b6+x,a
1448: dd        mov   a,y
1449: 2f 0f     bra   $145a
144b: 94 ae     adc   a,$ae+x
144d: 10 0b     bpl   $145a
144f: 48 ff     eor   a,#$ff
1451: fd        mov   y,a
1452: f4 b6     mov   a,$b6+x
1454: 48 ff     eor   a,#$ff
1456: bc        inc   a
1457: d4 b6     mov   $b6+x,a
1459: dd        mov   a,y
145a: 28 7f     and   a,#$7f
145c: d4 ae     mov   $ae+x,a
145e: 6f        ret

145f: 6d        push  y
1460: 3f fb 13  call  $13fb
1463: f5 a2 06  mov   a,$06a2+x
1466: c4 06     mov   $06,a
1468: f5 aa 06  mov   a,$06aa+x
146b: c4 07     mov   $07,a
146d: f4 9e     mov   a,$9e+x
146f: c4 0a     mov   $0a,a
1471: c4 0b     mov   $0b,a
1473: e4 06     mov   a,$06
1475: fd        mov   y,a
1476: e4 0a     mov   a,$0a
1478: cf        mul   ya
1479: dd        mov   a,y
147a: c4 06     mov   $06,a
147c: e4 07     mov   a,$07
147e: fd        mov   y,a
147f: e4 0b     mov   a,$0b
1481: cf        mul   ya
1482: dd        mov   a,y
1483: c4 07     mov   $07,a
1485: e5 10 08  mov   a,$0810
1488: f0 1c     beq   $14a6
148a: e4 06     mov   a,$06
148c: 10 03     bpl   $1491
148e: 48 ff     eor   a,#$ff
1490: bc        inc   a
1491: c4 06     mov   $06,a
1493: e4 07     mov   a,$07
1495: 10 03     bpl   $149a
1497: 48 ff     eor   a,#$ff
1499: bc        inc   a
149a: c4 07     mov   $07,a
149c: 60        clrc
149d: 84 06     adc   a,$06
149f: 5c        lsr   a
14a0: c4 06     mov   $06,a
14a2: c4 07     mov   $07,a
14a4: 2f 31     bra   $14d7
14a6: 3f 30 14  call  $1430
14a9: f4 ae     mov   a,$ae+x
14ab: 48 ff     eor   a,#$ff
14ad: 28 7f     and   a,#$7f
14af: 68 40     cmp   a,#$40
14b1: 90 02     bcc   $14b5
14b3: e8 3f     mov   a,#$3f
14b5: 1c        asl   a
14b6: 1c        asl   a
14b7: c4 0a     mov   $0a,a
14b9: f4 ae     mov   a,$ae+x
14bb: 68 40     cmp   a,#$40
14bd: 90 02     bcc   $14c1
14bf: e8 3f     mov   a,#$3f
14c1: 1c        asl   a
14c2: 1c        asl   a
14c3: c4 0b     mov   $0b,a
14c5: e4 06     mov   a,$06
14c7: fd        mov   y,a
14c8: e4 0a     mov   a,$0a
14ca: cf        mul   ya
14cb: dd        mov   a,y
14cc: c4 06     mov   $06,a
14ce: e4 07     mov   a,$07
14d0: fd        mov   y,a
14d1: e4 0b     mov   a,$0b
14d3: cf        mul   ya
14d4: dd        mov   a,y
14d5: c4 07     mov   $07,a
14d7: 7d        mov   a,x
14d8: 1c        asl   a
14d9: fd        mov   y,a
14da: f6 43 07  mov   a,$0743+y
14dd: fd        mov   y,a
14de: e4 06     mov   a,$06
14e0: cf        mul   ya
14e1: cb 06     mov   $06,y
14e3: 7d        mov   a,x
14e4: 1c        asl   a
14e5: fd        mov   y,a
14e6: f6 43 07  mov   a,$0743+y
14e9: fd        mov   y,a
14ea: e4 07     mov   a,$07
14ec: cf        mul   ya
14ed: cb 07     mov   $07,y
14ef: e8 00     mov   a,#$00
14f1: 04 08     or    a,$08
14f3: c4 f2     mov   $f2,a
14f5: fa 06 f3  mov   ($f3),($06)
14f8: ab f2     inc   $f2
14fa: fa 07 f3  mov   ($f3),($07)
14fd: ee        pop   y
14fe: 6f        ret

14ff: 83 7c 82  bbs4  $7c,$1484
1502: 7d        mov   a,x
1503: cb 34     mov   $34,y
1505: ca 35 2d  mov1  $0d35,1,c
1508: 4d        push  x
1509: 8f 09 f2  mov   $f2,#$09
150c: e4 83     mov   a,$83
150e: 84 f3     adc   a,$f3
1510: c4 83     mov   $83,a
1512: 7d        mov   a,x
1513: 9f        xcn   a
1514: c4 08     mov   $08,a
1516: 7d        mov   a,x
1517: c4 12     mov   $12,a
1519: 1c        asl   a
151a: 1c        asl   a
151b: 1c        asl   a
151c: 84 12     adc   a,$12
151e: c4 12     mov   $12,a
1520: f5 62 06  mov   a,$0662+x
1523: c4 02     mov   $02,a
1525: f5 6a 06  mov   a,$066a+x
1528: c4 03     mov   $03,a
152a: 8d 00     mov   y,#$00
152c: dd        mov   a,y
152d: 8d 00     mov   y,#$00
152f: 7a 02     addw  ya,$02
1531: da 02     movw  $02,ya
1533: 8d 00     mov   y,#$00
1535: 4d        push  x
1536: f7 02     mov   a,($02)+y
1538: fc        inc   y
1539: 28 7f     and   a,#$7f
153b: 1c        asl   a
153c: 5d        mov   x,a
153d: 1f 40 15  jmp   ($1540+x)

1540: dw $160a
1542: dw $1637
1544: dw $1654
1546: dw $166b
1548: dw $169b
154a: dw $16dd
154c: dw $16dd
154e: dw $16f7
1550: dw $1719
1552: dw $1735
1554: dw $174b
1556: dw $175a
1558: dw $1784
155a: dw $1792
155c: dw $17a3
155e: dw $17b7
1560: dw $17b7
1562: dw $17b7
1564: dw $1811
1566: dw $17dc
1568: dw $17fa
156a: dw $17fa
156c: dw $17fa
156e: dw $17fa
1570: dw $17fa
1572: dw $17fa
1574: dw $17fa
1576: dw $17fa
1578: dw $17fa
157a: dw $17fa
157c: dw $17fa
157e: dw $17fa
1580: dw $17fa
1582: dw $17fa
1584: dw $17fa
1586: dw $17fa
1588: dw $17fa
158a: dw $17fa
158c: dw $17fa
158e: dw $17fa
1590: dw $17fa
1592: dw $17fa
1594: dw $17fa
1596: dw $17fa
1598: dw $17fa
159a: dw $17fa
159c: dw $17fa
159e: dw $17fa
15a0: dw $17fa
15a2: dw $15fa
15a4: dw $15fa
15a6: dw $15fa
15a8: dw $15fa
15aa: dw $15fa
15ac: dw $15fa
15ae: dw $15fa
15b0: dw $15fa
15b2: dw $15fa
15b4: dw $15fa
15b6: dw $15fa
15b8: dw $15e8
15ba: dw $15e8
15bc: dw $15e8
15be: dw $15e8
15c0: dw $17ea
15c2: dw $15fa
15c4: dw $15e8
15c6: dw $15e8
15c8: dw $15e8
15ca: dw $15e8
15cc: dw $15d0
15ce: dw $15db

15d0: ce        pop   x
15d1: f5 c0 07  mov   a,$07c0+x
15d4: 04 87     or    a,$87
15d6: c4 87     mov   $87,a
15d8: 5f 2c 15  jmp   $152c

15db: ce        pop   x
15dc: f5 c0 07  mov   a,$07c0+x
15df: 48 ff     eor   a,#$ff
15e1: 24 87     and   a,$87
15e3: c4 87     mov   $87,a
15e5: 5f 2c 15  jmp   $152c

15e8: ce        pop   x
15e9: f7 02     mov   a,($02)+y
15eb: 08 80     or    a,#$80
15ed: d4 96     mov   $96+x,a
15ef: fc        inc   y
15f0: 4d        push  x
15f1: 6d        push  y
15f2: 3f 4b 12  call  $124b
15f5: ee        pop   y
15f6: ce        pop   x
15f7: 5f 2c 15  jmp   $152c

15fa: ce        pop   x
15fb: 8f 6c f2  mov   $f2,#$6c
15fe: e4 f3     mov   a,$f3
1600: 28 e0     and   a,#$e0
1602: 17 02     or    a,($02)+y
1604: fc        inc   y
1605: c4 f3     mov   $f3,a
1607: 5f 2c 15  jmp   $152c

160a: f7 02     mov   a,($02)+y
160c: c4 00     mov   $00,a
160e: fc        inc   y
160f: f7 02     mov   a,($02)+y
1611: fc        inc   y
1612: cb 09     mov   $09,y
1614: 8d 0d     mov   y,#$0d
1616: f7 4e     mov   a,($4e)+y
1618: c4 04     mov   $04,a
161a: 8d 0e     mov   y,#$0e
161c: f7 4e     mov   a,($4e)+y
161e: 3f b2 0f  call  $0fb2
1621: eb 09     mov   y,$09
1623: ce        pop   x
1624: e4 00     mov   a,$00
1626: d5 82 06  mov   $0682+x,a
1629: d5 72 06  mov   $0672+x,a
162c: e4 01     mov   a,$01
162e: d5 8a 06  mov   $068a+x,a
1631: d5 7a 06  mov   $067a+x,a
1634: 5f 2c 15  jmp   $152c

1637: ce        pop   x
1638: f7 02     mov   a,($02)+y
163a: fc        inc   y
163b: 60        clrc
163c: 95 72 06  adc   a,$0672+x
163f: d5 72 06  mov   $0672+x,a
1642: d5 82 06  mov   $0682+x,a
1645: f7 02     mov   a,($02)+y
1647: 95 7a 06  adc   a,$067a+x
164a: d5 7a 06  mov   $067a+x,a
164d: d5 8a 06  mov   $068a+x,a
1650: fc        inc   y
1651: 5f 2c 15  jmp   $152c

1654: ce        pop   x
1655: f7 02     mov   a,($02)+y
1657: fc        inc   y
1658: 60        clrc
1659: 95 82 06  adc   a,$0682+x
165c: d5 82 06  mov   $0682+x,a
165f: f7 02     mov   a,($02)+y
1661: 95 8a 06  adc   a,$068a+x
1664: d5 8a 06  mov   $068a+x,a
1667: fc        inc   y
1668: 5f 2c 15  jmp   $152c

166b: ce        pop   x
166c: f5 32 07  mov   a,$0732+x
166f: bc        inc   a
1670: d5 32 07  mov   $0732+x,a
1673: 4d        push  x
1674: d8 09     mov   $09,x
1676: 9c        dec   a
1677: 1c        asl   a
1678: 1c        asl   a
1679: 1c        asl   a
167a: 04 09     or    a,$09
167c: 5d        mov   x,a
167d: f7 02     mov   a,($02)+y
167f: fc        inc   y
1680: d5 f2 06  mov   $06f2+x,a
1683: f7 02     mov   a,($02)+y
1685: fc        inc   y
1686: d5 12 07  mov   $0712+x,a
1689: dd        mov   a,y
168a: 60        clrc
168b: 84 02     adc   a,$02
168d: d5 b2 06  mov   $06b2+x,a
1690: e8 00     mov   a,#$00
1692: 84 03     adc   a,$03
1694: d5 d2 06  mov   $06d2+x,a
1697: ce        pop   x
1698: 5f 2c 15  jmp   $152c

169b: ce        pop   x
169c: 4d        push  x
169d: f5 32 07  mov   a,$0732+x
16a0: 9c        dec   a
16a1: d8 09     mov   $09,x
16a3: 1c        asl   a
16a4: 1c        asl   a
16a5: 1c        asl   a
16a6: 04 09     or    a,$09
16a8: 5d        mov   x,a
16a9: f5 f2 06  mov   a,$06f2+x
16ac: 15 12 07  or    a,$0712+x
16af: f0 21     beq   $16d2
16b1: 80        setc
16b2: f5 f2 06  mov   a,$06f2+x
16b5: a8 01     sbc   a,#$01
16b7: d5 f2 06  mov   $06f2+x,a
16ba: f5 12 07  mov   a,$0712+x
16bd: a8 00     sbc   a,#$00
16bf: d5 12 07  mov   $0712+x,a
16c2: f5 b2 06  mov   a,$06b2+x
16c5: c4 02     mov   $02,a
16c7: f5 d2 06  mov   a,$06d2+x
16ca: c4 03     mov   $03,a
16cc: 8d 00     mov   y,#$00
16ce: ce        pop   x
16cf: 5f 15 18  jmp   $1815

16d2: ce        pop   x
16d3: f5 32 07  mov   a,$0732+x
16d6: 9c        dec   a
16d7: d5 32 07  mov   $0732+x,a
16da: 5f 15 18  jmp   $1815

16dd: ce        pop   x
16de: f7 02     mov   a,($02)+y
16e0: fc        inc   y
16e1: 28 7f     and   a,#$7f
16e3: d5 92 06  mov   $0692+x,a
16e6: d5 a2 06  mov   $06a2+x,a
16e9: f7 02     mov   a,($02)+y
16eb: fc        inc   y
16ec: 28 7f     and   a,#$7f
16ee: d5 9a 06  mov   $069a+x,a
16f1: d5 aa 06  mov   $06aa+x,a
16f4: 5f 2c 15  jmp   $152c

16f7: ce        pop   x
16f8: f7 02     mov   a,($02)+y
16fa: fc        inc   y
16fb: 60        clrc
16fc: 95 92 06  adc   a,$0692+x
16ff: 28 7f     and   a,#$7f
1701: d5 92 06  mov   $0692+x,a
1704: d5 a2 06  mov   $06a2+x,a
1707: f7 02     mov   a,($02)+y
1709: fc        inc   y
170a: 60        clrc
170b: 95 9a 06  adc   a,$069a+x
170e: 28 7f     and   a,#$7f
1710: d5 9a 06  mov   $069a+x,a
1713: d5 aa 06  mov   $06aa+x,a
1716: 5f 2c 15  jmp   $152c

1719: ce        pop   x
171a: f7 02     mov   a,($02)+y
171c: fc        inc   y
171d: 60        clrc
171e: 95 a2 06  adc   a,$06a2+x
1721: 28 7f     and   a,#$7f
1723: d5 a2 06  mov   $06a2+x,a
1726: f7 02     mov   a,($02)+y
1728: fc        inc   y
1729: 60        clrc
172a: 95 aa 06  adc   a,$06aa+x
172d: 28 7f     and   a,#$7f
172f: d5 aa 06  mov   $06aa+x,a
1732: 5f 2c 15  jmp   $152c

1735: ce        pop   x
1736: e8 06     mov   a,#$06
1738: 04 08     or    a,$08
173a: c4 f2     mov   $f2,a
173c: f7 02     mov   a,($02)+y
173e: fc        inc   y
173f: c4 f3     mov   $f3,a
1741: 8b f2     dec   $f2
1743: f7 02     mov   a,($02)+y
1745: fc        inc   y
1746: c4 f3     mov   $f3,a
1748: 5f 2c 15  jmp   $152c

174b: ce        pop   x
174c: e8 07     mov   a,#$07
174e: 04 08     or    a,$08
1750: c4 f2     mov   $f2,a
1752: f7 02     mov   a,($02)+y
1754: fc        inc   y
1755: c4 f3     mov   $f3,a
1757: 5f 2c 15  jmp   $152c

175a: ce        pop   x
175b: e8 04     mov   a,#$04
175d: 04 08     or    a,$08
175f: c4 f2     mov   $f2,a
1761: e4 12     mov   a,$12
1763: 2d        push  a
1764: f7 02     mov   a,($02)+y
1766: fc        inc   y
1767: 6d        push  y
1768: 3f ea 11  call  $11ea
176b: 8d 0c     mov   y,#$0c
176d: f7 12     mov   a,($12)+y
176f: fd        mov   y,a
1770: f6 56 db  mov   a,$db56+y
1773: c4 f3     mov   $f3,a
1775: e4 12     mov   a,$12
1777: c4 4e     mov   $4e,a
1779: e4 13     mov   a,$13
177b: c4 4f     mov   $4f,a
177d: ee        pop   y
177e: ae        pop   a
177f: c4 12     mov   $12,a
1781: 5f 2c 15  jmp   $152c

1784: ce        pop   x
1785: 8f 2d f2  mov   $f2,#$2d
1788: f5 c0 07  mov   a,$07c0+x
178b: 04 f3     or    a,$f3
178d: c4 f3     mov   $f3,a
178f: 5f 2c 15  jmp   $152c

1792: ce        pop   x
1793: f5 c0 07  mov   a,$07c0+x
1796: 2d        push  a
1797: 04 21     or    a,$21
1799: c4 21     mov   $21,a
179b: ae        pop   a
179c: 04 22     or    a,$22
179e: c4 22     mov   $22,a
17a0: 5f 2c 15  jmp   $152c

17a3: ce        pop   x
17a4: f5 c0 07  mov   a,$07c0+x
17a7: 04 22     or    a,$22
17a9: c4 22     mov   $22,a
17ab: 7d        mov   a,x
17ac: 9f        xcn   a
17ad: 08 05     or    a,#$05
17af: c4 f2     mov   $f2,a
17b1: 8f 00 f3  mov   $f3,#$00
17b4: 5f 2c 15  jmp   $152c

17b7: ce        pop   x
17b8: f5 3a 07  mov   a,$073a+x
17bb: f0 03     beq   $17c0
17bd: 5f cd 17  jmp   $17cd

17c0: f7 02     mov   a,($02)+y
17c2: d0 02     bne   $17c6
17c4: e8 01     mov   a,#$01
17c6: d5 3a 07  mov   $073a+x,a
17c9: dc        dec   y
17ca: 5f 15 18  jmp   $1815

17cd: dc        dec   y
17ce: 9c        dec   a
17cf: d5 3a 07  mov   $073a+x,a
17d2: f0 03     beq   $17d7
17d4: 5f 15 18  jmp   $1815

17d7: fc        inc   y
17d8: fc        inc   y
17d9: 5f 2c 15  jmp   $152c

17dc: ce        pop   x
17dd: 8f 3d f2  mov   $f2,#$3d
17e0: f5 c0 07  mov   a,$07c0+x
17e3: 04 f3     or    a,$f3
17e5: c4 f3     mov   $f3,a
17e7: 5f 2c 15  jmp   $152c

17ea: ce        pop   x
17eb: 8f 3d f2  mov   $f2,#$3d
17ee: f5 c0 07  mov   a,$07c0+x
17f1: 48 ff     eor   a,#$ff
17f3: 24 f3     and   a,$f3
17f5: c4 f3     mov   $f3,a
17f7: 5f 2c 15  jmp   $152c

17fa: 6d        push  y
17fb: eb 04     mov   y,$04
17fd: 36 ff 14  and   a,$14ff+y
1800: c4 04     mov   $04,a
1802: f5 52 07  mov   a,$0752+x
1805: 36 00 15  and   a,$1500+y
1808: 04 04     or    a,$04
180a: d5 52 07  mov   $0752+x,a
180d: ee        pop   y
180e: 5f 2c 15  jmp   $152c

1811: ce        pop   x
1812: 3f 2a 13  call  $132a
1815: dd        mov   a,y
1816: 8d 00     mov   y,#$00
1818: 7a 02     addw  ya,$02
181a: da 02     movw  $02,ya
181c: d5 62 06  mov   $0662+x,a
181f: dd        mov   a,y
1820: d5 6a 06  mov   $066a+x,a
1823: ce        pop   x
1824: ae        pop   a
1825: 6f        ret

1826: f5 13 05  mov   a,$0513+x
1829: f0 0c     beq   $1837
182b: c4 00     mov   $00,a
182d: e8 00     mov   a,#$00
182f: d5 13 05  mov   $0513+x,a
1832: e4 00     mov   a,$00
1834: 5f 3c 18  jmp   $183c

1837: 3f 39 1f  call  $1f39
183a: c4 00     mov   $00,a
183c: 5c        lsr   a
183d: 9f        xcn   a
183e: 28 07     and   a,#$07
1840: 1c        asl   a
1841: 4d        push  x
1842: 5d        mov   x,a
1843: 1f 46 18  jmp   ($1846+x)

1846: dw $1856
1848: dw $1893
184a: dw $1934
184c: dw $1941
184e: dw $1950
1850: dw $1972
1852: dw $1992
1854: dw $1961

1856: ce        pop   x
1857: e4 00     mov   a,$00
1859: 28 1f     and   a,#$1f
185b: 68 10     cmp   a,#$10
185d: 90 02     bcc   $1861
185f: 08 e0     or    a,#$e0
1861: 60        clrc
1862: 95 2e 05  adc   a,$052e+x
1865: d5 2e 05  mov   $052e+x,a
1868: c4 02     mov   $02,a
186a: f5 52 05  mov   a,$0552+x
186d: c4 00     mov   $00,a
186f: 4d        push  x
1870: 3f 74 0d  call  $0d74
1873: ce        pop   x
1874: f5 1c 05  mov   a,$051c+x
1877: c4 04     mov   $04,a
1879: 3f 7d 18  call  $187d
187c: 6f        ret

187d: f8 52     mov   x,$52
187f: e4 00     mov   a,$00
1881: 28 0f     and   a,#$0f
1883: d4 53     mov   $53+x,a
1885: e4 02     mov   a,$02
1887: d4 54     mov   $54+x,a
1889: e4 04     mov   a,$04
188b: d4 55     mov   $55+x,a
188d: 3d        inc   x
188e: 3d        inc   x
188f: 3d        inc   x
1890: d8 52     mov   $52,x
1892: 6f        ret

1893: ce        pop   x
1894: e4 00     mov   a,$00
1896: 28 1f     and   a,#$1f
1898: 68 10     cmp   a,#$10
189a: 90 02     bcc   $189e
189c: 08 e0     or    a,#$e0
189e: 60        clrc
189f: 95 2e 05  adc   a,$052e+x
18a2: d5 2e 05  mov   $052e+x,a
18a5: c4 02     mov   $02,a
18a7: f5 52 05  mov   a,$0552+x
18aa: c4 00     mov   $00,a
18ac: 3f b0 18  call  $18b0
18af: 6f        ret

18b0: 38 0f 00  and   $00,#$0f
18b3: f8 52     mov   x,$52
18b5: f0 18     beq   $18cf
18b7: e4 00     mov   a,$00
18b9: 74 53     cmp   a,$53+x
18bb: d0 0d     bne   $18ca
18bd: e4 02     mov   a,$02
18bf: 74 54     cmp   a,$54+x
18c1: d0 07     bne   $18ca
18c3: e8 ff     mov   a,#$ff
18c5: d4 55     mov   $55+x,a
18c7: 5f cf 18  jmp   $18cf

18ca: 1d        dec   x
18cb: 1d        dec   x
18cc: 1d        dec   x
18cd: 10 e8     bpl   $18b7
18cf: fa 1a 06  mov   ($06),($1a)
18d2: 8f 80 08  mov   $08,#$80
18d5: eb 02     mov   y,$02
18d7: cd 07     mov   x,#$07
18d9: 0b 06     asl   $06
18db: 90 17     bcc   $18f4
18dd: f4 2c     mov   a,$2c+x
18df: 28 0f     and   a,#$0f
18e1: 64 00     cmp   a,$00
18e3: d0 0f     bne   $18f4
18e5: dd        mov   a,y
18e6: 74 34     cmp   a,$34+x
18e8: f0 10     beq   $18fa
18ea: f5 c0 07  mov   a,$07c0+x
18ed: 24 1b     and   a,$1b
18ef: f0 03     beq   $18f4
18f1: 4e 1b 00  tclr1 $001b
18f4: 4b 08     lsr   $08
18f6: 1d        dec   x
18f7: 10 e0     bpl   $18d9
18f9: 6f        ret

18fa: f5 c0 07  mov   a,$07c0+x
18fd: 24 1b     and   a,$1b
18ff: f0 04     beq   $1905
1901: 4e 1b 00  tclr1 $001b
1904: 6f        ret

1905: e4 08     mov   a,$08
1907: 3f 11 19  call  $1911
190a: 4e 1a 00  tclr1 $001a
190d: 4e 1c 00  tclr1 $001c
1910: 6f        ret

1911: 2d        push  a
1912: c4 08     mov   $08,a
1914: fa 20 09  mov   ($09),($20)
1917: cd 07     mov   x,#$07
1919: 0b 09     asl   $09
191b: 90 05     bcc   $1922
191d: 0b 08     asl   $08
191f: 5f 2f 19  jmp   $192f

1922: 0b 08     asl   $08
1924: 90 09     bcc   $192f
1926: 7d        mov   a,x
1927: 9f        xcn   a
1928: 08 05     or    a,#$05
192a: c4 f2     mov   $f2,a
192c: 8f 00 f3  mov   $f3,#$00
192f: 1d        dec   x
1930: 10 e7     bpl   $1919
1932: ae        pop   a
1933: 6f        ret

1934: ce        pop   x
1935: e4 00     mov   a,$00
1937: 28 1f     and   a,#$1f
1939: bc        inc   a
193a: d5 0a 05  mov   $050a+x,a
193d: d5 25 05  mov   $0525+x,a
1940: 6f        ret

1941: ce        pop   x
1942: e4 00     mov   a,$00
1944: 28 1f     and   a,#$1f
1946: bc        inc   a
1947: d5 0a 05  mov   $050a+x,a
194a: e8 20     mov   a,#$20
194c: d5 13 05  mov   $0513+x,a
194f: 6f        ret

1950: ce        pop   x
1951: f5 25 05  mov   a,$0525+x
1954: d5 0a 05  mov   $050a+x,a
1957: e4 00     mov   a,$00
1959: 28 1f     and   a,#$1f
195b: 08 20     or    a,#$20
195d: d5 13 05  mov   $0513+x,a
1960: 6f        ret

1961: ce        pop   x
1962: f5 25 05  mov   a,$0525+x
1965: d5 0a 05  mov   $050a+x,a
1968: e4 00     mov   a,$00
196a: 28 1f     and   a,#$1f
196c: 08 a0     or    a,#$a0
196e: d5 13 05  mov   $0513+x,a
1971: 6f        ret

1972: ce        pop   x
1973: e4 00     mov   a,$00
1975: 28 1f     and   a,#$1f
1977: 68 10     cmp   a,#$10
1979: 90 02     bcc   $197d
197b: 08 e0     or    a,#$e0
197d: 60        clrc
197e: 95 37 05  adc   a,$0537+x
1981: d5 37 05  mov   $0537+x,a
1984: 08 80     or    a,#$80
1986: c4 04     mov   $04,a
1988: f5 52 05  mov   a,$0552+x
198b: 5d        mov   x,a
198c: e4 04     mov   a,$04
198e: d5 9a 05  mov   $059a+x,a
1991: 6f        ret

1992: e4 00     mov   a,$00
1994: 28 1f     and   a,#$1f
1996: 68 18     cmp   a,#$18
1998: 90 03     bcc   $199d
199a: 5f 32 1f  jmp   $1f32

199d: 1c        asl   a
199e: 5d        mov   x,a
199f: 1f a2 19  jmp   ($19a2+x)

19a2: dw $19d4
19a4: dw $19e4
19a6: dw $1a45
19a8: dw $1a55
19aa: dw $1a65
19ac: dw $1a75
19ae: dw $1a7a
19b0: dw $1a7a
19b2: dw $1b28
19b4: dw $1b47
19b6: dw $1b7d
19b8: dw $1ea7
19ba: dw $1eae
19bc: dw $1eb0
19be: dw $1eb0
19c0: dw $1eba
19c2: dw $1ec2
19c4: dw $1ede
19c6: dw $19d2
19c8: dw $1ef0
19ca: dw $1f03
19cc: dw $1f16
19ce: dw $1f18
19d0: dw $1f2b

19d2: ce        pop   x
19d3: 6f        ret

19d4: ce        pop   x
19d5: 3f 39 1f  call  $1f39
19d8: c4 04     mov   $04,a
19da: f5 52 05  mov   a,$0552+x
19dd: 5d        mov   x,a
19de: e4 04     mov   a,$04
19e0: d5 ef 04  mov   $04ef+x,a
19e3: 6f        ret

19e4: ce        pop   x
19e5: 3f 39 1f  call  $1f39
19e8: c4 04     mov   $04,a
19ea: f5 52 05  mov   a,$0552+x
19ed: d8 0a     mov   $0a,x
19ef: 5d        mov   x,a
19f0: c4 0b     mov   $0b,a
19f2: f5 64 05  mov   a,$0564+x
19f5: f0 33     beq   $1a2a
19f7: 68 07     cmp   a,#$07
19f9: f0 35     beq   $1a30
19fb: 9c        dec   a
19fc: 28 07     and   a,#$07
19fe: fd        mov   y,a
19ff: e4 04     mov   a,$04
1a01: ad 05     cmp   y,#$05
1a03: d0 11     bne   $1a16
1a05: c4 27     mov   $27,a
1a07: 28 7f     and   a,#$7f
1a09: 3f 1a 09  call  $091a
1a0c: 68 ff     cmp   a,#$ff
1a0e: d0 01     bne   $1a11
1a10: 6f        ret

1a11: 08 80     or    a,#$80
1a13: c4 26     mov   $26,a
1a15: 6f        ret

1a16: ad 03     cmp   y,#$03
1a18: d0 0c     bne   $1a26
1a1a: 2d        push  a
1a1b: 80        setc
1a1c: a4 94     sbc   a,$94
1a1e: 28 7f     and   a,#$7f
1a20: ae        pop   a
1a21: d0 01     bne   $1a24
1a23: 6f        ret

1a24: 08 80     or    a,#$80
1a26: d6 91 00  mov   $0091+y,a
1a29: 6f        ret

1a2a: e4 04     mov   a,$04
1a2c: d5 5b 05  mov   $055b+x,a
1a2f: 6f        ret

1a30: e4 04     mov   a,$04
1a32: 8d 00     mov   y,#$00
1a34: f8 0b     mov   x,$0b
1a36: 80        setc
1a37: a8 40     sbc   a,#$40
1a39: 10 02     bpl   $1a3d
1a3b: 8d ff     mov   y,#$ff
1a3d: d5 71 04  mov   $0471+x,a
1a40: dd        mov   a,y
1a41: d5 68 04  mov   $0468+x,a
1a44: 6f        ret

1a45: ce        pop   x
1a46: 3f 39 1f  call  $1f39
1a49: c4 04     mov   $04,a
1a4b: f5 52 05  mov   a,$0552+x
1a4e: 5d        mov   x,a
1a4f: e4 04     mov   a,$04
1a51: d5 6d 05  mov   $056d+x,a
1a54: 6f        ret

1a55: ce        pop   x
1a56: 3f 39 1f  call  $1f39
1a59: c4 04     mov   $04,a
1a5b: f5 52 05  mov   a,$0552+x
1a5e: 5d        mov   x,a
1a5f: e4 04     mov   a,$04
1a61: d5 88 05  mov   $0588+x,a
1a64: 6f        ret

1a65: ce        pop   x
1a66: 3f 39 1f  call  $1f39
1a69: c4 04     mov   $04,a
1a6b: f5 52 05  mov   a,$0552+x
1a6e: 5d        mov   x,a
1a6f: e4 04     mov   a,$04
1a71: d5 e6 04  mov   $04e6+x,a
1a74: 6f        ret

1a75: ce        pop   x
1a76: 3f 39 1f  call  $1f39
1a79: 6f        ret

1a7a: ce        pop   x
1a7b: d8 0a     mov   $0a,x
1a7d: f5 52 05  mov   a,$0552+x
1a80: c4 0b     mov   $0b,a
1a82: 3f 39 1f  call  $1f39
1a85: 68 32     cmp   a,#$32
1a87: b0 06     bcs   $1a8f
1a89: f8 0b     mov   x,$0b
1a8b: d5 64 05  mov   $0564+x,a
1a8e: 6f        ret

1a8f: a8 32     sbc   a,#$32
1a91: 68 04     cmp   a,#$04
1a93: 90 01     bcc   $1a96
1a95: 6f        ret

1a96: 28 03     and   a,#$03
1a98: 1c        asl   a
1a99: 5d        mov   x,a
1a9a: 1f 20 1b  jmp   ($1b20+x)

1a9d: f8 0a     mov   x,$0a
1a9f: 3f 39 1f  call  $1f39
1aa2: f8 0a     mov   x,$0a
1aa4: 3f 39 1f  call  $1f39
1aa7: 28 0f     and   a,#$0f
1aa9: c4 04     mov   $04,a
1aab: f8 0b     mov   x,$0b
1aad: f5 20 04  mov   a,$0420+x
1ab0: 28 f0     and   a,#$f0
1ab2: 04 04     or    a,$04
1ab4: 08 80     or    a,#$80
1ab6: d5 20 04  mov   $0420+x,a
1ab9: 6f        ret

1aba: f8 0a     mov   x,$0a
1abc: 3f 39 1f  call  $1f39
1abf: f8 0a     mov   x,$0a
1ac1: 3f 39 1f  call  $1f39
1ac4: 28 07     and   a,#$07
1ac6: 9f        xcn   a
1ac7: c4 04     mov   $04,a
1ac9: f8 0b     mov   x,$0b
1acb: f5 20 04  mov   a,$0420+x
1ace: 28 0f     and   a,#$0f
1ad0: 04 04     or    a,$04
1ad2: 08 80     or    a,#$80
1ad4: d5 20 04  mov   $0420+x,a
1ad7: 6f        ret

1ad8: f8 0a     mov   x,$0a
1ada: 3f 39 1f  call  $1f39
1add: f8 0a     mov   x,$0a
1adf: 3f 39 1f  call  $1f39
1ae2: 28 07     and   a,#$07
1ae4: 9f        xcn   a
1ae5: 1c        asl   a
1ae6: c4 04     mov   $04,a
1ae8: f8 0b     mov   x,$0b
1aea: f5 29 04  mov   a,$0429+x
1aed: 28 1f     and   a,#$1f
1aef: 04 04     or    a,$04
1af1: d5 29 04  mov   $0429+x,a
1af4: f5 20 04  mov   a,$0420+x
1af7: 08 80     or    a,#$80
1af9: d5 20 04  mov   $0420+x,a
1afc: 6f        ret

1afd: f8 0a     mov   x,$0a
1aff: 3f 39 1f  call  $1f39
1b02: f8 0a     mov   x,$0a
1b04: 3f 39 1f  call  $1f39
1b07: 28 1f     and   a,#$1f
1b09: c4 04     mov   $04,a
1b0b: f8 0b     mov   x,$0b
1b0d: f5 29 04  mov   a,$0429+x
1b10: 28 e0     and   a,#$e0
1b12: 04 04     or    a,$04
1b14: d5 29 04  mov   $0429+x,a
1b17: f5 20 04  mov   a,$0420+x
1b1a: 08 80     or    a,#$80
1b1c: d5 20 04  mov   $0420+x,a
1b1f: 6f        ret

1b20: dw $1a9d
1b22: dw $1aba
1b24: dw $1ad8
1b26: dw $1afd

1b28: ce        pop   x
1b29: f5 52 05  mov   a,$0552+x
1b2c: 5d        mov   x,a
1b2d: fd        mov   y,a
1b2e: e8 00     mov   a,#$00
1b30: d6 20 04  mov   $0420+y,a
1b33: dd        mov   a,y
1b34: 60        clrc
1b35: 88 09     adc   a,#$09
1b37: 68 d8     cmp   a,#$d8
1b39: 90 f2     bcc   $1b2d
1b3b: 3f 1d 22  call  $221d
1b3e: e8 00     mov   a,#$00
1b40: c4 e1     mov   $e1,a
1b42: c4 e2     mov   $e2,a
1b44: c4 e0     mov   $e0,a
1b46: 6f        ret

1b47: ce        pop   x
1b48: e4 1a     mov   a,$1a
1b4a: c4 08     mov   $08,a
1b4c: f5 52 05  mov   a,$0552+x
1b4f: c4 00     mov   $00,a
1b51: cd 07     mov   x,#$07
1b53: 8f 00 06  mov   $06,#$00
1b56: 0b 08     asl   $08
1b58: 90 0e     bcc   $1b68
1b5a: f4 2c     mov   a,$2c+x
1b5c: 28 0f     and   a,#$0f
1b5e: 64 00     cmp   a,$00
1b60: d0 06     bne   $1b68
1b62: 80        setc
1b63: 2b 06     rol   $06
1b65: 5f 6b 1b  jmp   $1b6b

1b68: 60        clrc
1b69: 2b 06     rol   $06
1b6b: 1d        dec   x
1b6c: 10 e8     bpl   $1b56
1b6e: e4 06     mov   a,$06
1b70: 3f 11 19  call  $1911
1b73: 4e 1c 00  tclr1 $001c
1b76: 4e 1a 00  tclr1 $001a
1b79: 4e 1b 00  tclr1 $001b
1b7c: 6f        ret

1b7d: ce        pop   x
1b7e: d8 0a     mov   $0a,x
1b80: 3f 39 1f  call  $1f39
1b83: c4 02     mov   $02,a
1b85: f5 52 05  mov   a,$0552+x
1b88: 5d        mov   x,a
1b89: c4 0b     mov   $0b,a
1b8b: e4 02     mov   a,$02
1b8d: 28 7f     and   a,#$7f
1b8f: 68 78     cmp   a,#$78
1b91: b0 04     bcs   $1b97
1b93: 3f da 11  call  $11da
1b96: 6f        ret

1b97: a8 78     sbc   a,#$78
1b99: 68 07     cmp   a,#$07
1b9b: d0 25     bne   $1bc2
1b9d: f8 0a     mov   x,$0a
1b9f: 3f 39 1f  call  $1f39
1ba2: f8 0a     mov   x,$0a
1ba4: 3f 39 1f  call  $1f39
1ba7: 28 3f     and   a,#$3f
1ba9: 1c        asl   a
1baa: c4 05     mov   $05,a
1bac: f8 0a     mov   x,$0a
1bae: 3f 39 1f  call  $1f39
1bb1: f8 0a     mov   x,$0a
1bb3: 3f 39 1f  call  $1f39
1bb6: c4 04     mov   $04,a
1bb8: f8 05     mov   x,$05
1bba: c8 43     cmp   x,#$43
1bbc: 90 01     bcc   $1bbf
1bbe: 6f        ret

1bbf: 1f 63 1e  jmp   ($1e63+x)

1bc2: 28 03     and   a,#$03
1bc4: d5 3b 04  mov   $043b+x,a
1bc7: 6f        ret

1bc8: f8 0b     mov   x,$0b
1bca: d5 5b 05  mov   $055b+x,a
1bcd: 6f        ret

1bce: c4 91     mov   $91,a
1bd0: e4 94     mov   a,$94
1bd2: 08 80     or    a,#$80
1bd4: c4 94     mov   $94,a
1bd6: e8 00     mov   a,#$00
1bd8: c4 8f     mov   $8f,a
1bda: c4 90     mov   $90,a
1bdc: 6f        ret

1bdd: c4 92     mov   $92,a
1bdf: e4 94     mov   a,$94
1be1: 08 80     or    a,#$80
1be3: c4 94     mov   $94,a
1be5: e8 00     mov   a,#$00
1be7: c4 8f     mov   $8f,a
1be9: c4 90     mov   $90,a
1beb: 6f        ret

1bec: c4 93     mov   $93,a
1bee: e4 94     mov   a,$94
1bf0: 08 80     or    a,#$80
1bf2: c4 94     mov   $94,a
1bf4: e8 00     mov   a,#$00
1bf6: c4 8f     mov   $8f,a
1bf8: c4 90     mov   $90,a
1bfa: 6f        ret

1bfb: 80        setc
1bfc: a4 94     sbc   a,$94
1bfe: 28 7f     and   a,#$7f
1c00: d0 01     bne   $1c03
1c02: 6f        ret

1c03: e4 04     mov   a,$04
1c05: 08 80     or    a,#$80
1c07: c4 94     mov   $94,a
1c09: e8 00     mov   a,#$00
1c0b: c4 8f     mov   $8f,a
1c0d: c4 90     mov   $90,a
1c0f: 6f        ret

1c10: c4 95     mov   $95,a
1c12: e4 94     mov   a,$94
1c14: 08 80     or    a,#$80
1c16: c4 94     mov   $94,a
1c18: e8 00     mov   a,#$00
1c1a: c4 8f     mov   $8f,a
1c1c: c4 90     mov   $90,a
1c1e: 6f        ret

1c1f: c4 27     mov   $27,a
1c21: 28 7f     and   a,#$7f
1c23: 3f 1a 09  call  $091a
1c26: 68 ff     cmp   a,#$ff
1c28: d0 01     bne   $1c2b
1c2a: 6f        ret

1c2b: 08 80     or    a,#$80
1c2d: c4 26     mov   $26,a
1c2f: 6f        ret

1c30: f8 0b     mov   x,$0b
1c32: 8d 00     mov   y,#$00
1c34: 80        setc
1c35: a8 40     sbc   a,#$40
1c37: 10 02     bpl   $1c3b
1c39: 8d ff     mov   y,#$ff
1c3b: 1c        asl   a
1c3c: 1c        asl   a
1c3d: d5 71 04  mov   $0471+x,a
1c40: dd        mov   a,y
1c41: d5 68 04  mov   $0468+x,a
1c44: 6f        ret

1c45: f8 0b     mov   x,$0b
1c47: e4 04     mov   a,$04
1c49: 1c        asl   a
1c4a: d5 83 04  mov   $0483+x,a
1c4d: 6f        ret

1c4e: f8 0b     mov   x,$0b
1c50: e4 04     mov   a,$04
1c52: 68 0d     cmp   a,#$0d
1c54: 90 02     bcc   $1c58
1c56: e8 00     mov   a,#$00
1c58: d5 8c 04  mov   $048c+x,a
1c5b: 6f        ret

1c5c: f8 0b     mov   x,$0b
1c5e: e4 04     mov   a,$04
1c60: d5 95 04  mov   $0495+x,a
1c63: 6f        ret

1c64: f8 0b     mov   x,$0b
1c66: e4 04     mov   a,$04
1c68: 1c        asl   a
1c69: d5 9e 04  mov   $049e+x,a
1c6c: 6f        ret

1c6d: f8 0b     mov   x,$0b
1c6f: e4 04     mov   a,$04
1c71: 1c        asl   a
1c72: d5 a7 04  mov   $04a7+x,a
1c75: 6f        ret

1c76: f8 0b     mov   x,$0b
1c78: e4 04     mov   a,$04
1c7a: 68 08     cmp   a,#$08
1c7c: 90 02     bcc   $1c80
1c7e: e8 00     mov   a,#$00
1c80: d5 b0 04  mov   $04b0+x,a
1c83: 6f        ret

1c84: f8 0b     mov   x,$0b
1c86: e4 04     mov   a,$04
1c88: 80        setc
1c89: a8 40     sbc   a,#$40
1c8b: d5 4d 04  mov   $044d+x,a
1c8e: 6f        ret

1c8f: f8 0b     mov   x,$0b
1c91: e4 04     mov   a,$04
1c93: 80        setc
1c94: a8 40     sbc   a,#$40
1c96: d5 56 04  mov   $0456+x,a
1c99: 6f        ret

1c9a: f8 0b     mov   x,$0b
1c9c: e4 04     mov   a,$04
1c9e: 1c        asl   a
1c9f: 80        setc
1ca0: a8 80     sbc   a,#$80
1ca2: d5 5f 04  mov   $045f+x,a
1ca5: 6f        ret

1ca6: e4 04     mov   a,$04
1ca8: 6f        ret

1ca9: f8 0a     mov   x,$0a
1cab: e4 04     mov   a,$04
1cad: f0 03     beq   $1cb2
1caf: 5f 26 1d  jmp   $1d26

1cb2: 3f 39 1f  call  $1f39
1cb5: f8 0a     mov   x,$0a
1cb7: 3f 39 1f  call  $1f39
1cba: d5 44 04  mov   $0444+x,a
1cbd: 9c        dec   a
1cbe: 30 65     bmi   $1d25
1cc0: d5 44 04  mov   $0444+x,a
1cc3: f0 60     beq   $1d25
1cc5: 40        setp
1cc6: f5 f8 04  mov   a,$04f8+x
1cc9: d4 7e     mov   $7e+x,a
1ccb: f5 01 05  mov   a,$0501+x
1cce: d4 86     mov   $86+x,a
1cd0: f5 0a 05  mov   a,$050a+x
1cd3: d4 8e     mov   $8e+x,a
1cd5: f5 13 05  mov   a,$0513+x
1cd8: d4 96     mov   $96+x,a
1cda: f5 1c 05  mov   a,$051c+x
1cdd: d4 9e     mov   $9e+x,a
1cdf: f5 25 05  mov   a,$0525+x
1ce2: d4 a6     mov   $a6+x,a
1ce4: f5 2e 05  mov   a,$052e+x
1ce7: d4 ae     mov   $ae+x,a
1ce9: f5 37 05  mov   a,$0537+x
1cec: d4 b6     mov   $b6+x,a
1cee: f4 06     mov   a,$06+x
1cf0: d4 4e     mov   $4e+x,a
1cf2: 68 01     cmp   a,#$01
1cf4: f0 2f     beq   $1d25
1cf6: f4 0f     mov   a,$0f+x
1cf8: d4 56     mov   $56+x,a
1cfa: f4 18     mov   a,$18+x
1cfc: d4 5e     mov   $5e+x,a
1cfe: f4 21     mov   a,$21+x
1d00: d4 66     mov   $66+x,a
1d02: f4 2a     mov   a,$2a+x
1d04: d4 6e     mov   $6e+x,a
1d06: f4 33     mov   a,$33+x
1d08: d4 76     mov   $76+x,a
1d0a: 8d 1f     mov   y,#$1f
1d0c: f4 3c     mov   a,$3c+x
1d0e: c4 00     mov   $00,a
1d10: f4 45     mov   a,$45+x
1d12: c4 01     mov   $01,a
1d14: e4 00     mov   a,$00
1d16: c4 02     mov   $02,a
1d18: e4 01     mov   a,$01
1d1a: bc        inc   a
1d1b: c4 03     mov   $03,a
1d1d: f7 00     mov   a,($00)+y
1d1f: d7 02     mov   ($02)+y,a
1d21: dc        dec   y
1d22: 10 f9     bpl   $1d1d
1d24: 20        clrp
1d25: 6f        ret

1d26: f5 44 04  mov   a,$0444+x
1d29: d0 01     bne   $1d2c
1d2b: 6f        ret

1d2c: 9c        dec   a
1d2d: d5 44 04  mov   $0444+x,a
1d30: f5 bf 07  mov   a,$07bf+x
1d33: 24 1a     and   a,$1a
1d35: f0 09     beq   $1d40
1d37: 4e 1b 00  tclr1 $001b
1d3a: 4e 1a 00  tclr1 $001a
1d3d: 4e 1c 00  tclr1 $001c
1d40: 40        setp
1d41: f4 7e     mov   a,$7e+x
1d43: d5 f8 04  mov   $04f8+x,a
1d46: f4 86     mov   a,$86+x
1d48: d5 01 05  mov   $0501+x,a
1d4b: f4 8e     mov   a,$8e+x
1d4d: d5 0a 05  mov   $050a+x,a
1d50: f4 96     mov   a,$96+x
1d52: d5 13 05  mov   $0513+x,a
1d55: f4 9e     mov   a,$9e+x
1d57: d5 1c 05  mov   $051c+x,a
1d5a: f4 a6     mov   a,$a6+x
1d5c: d5 25 05  mov   $0525+x,a
1d5f: f4 ae     mov   a,$ae+x
1d61: d5 2e 05  mov   $052e+x,a
1d64: f4 b6     mov   a,$b6+x
1d66: d5 37 05  mov   $0537+x,a
1d69: f4 4e     mov   a,$4e+x
1d6b: d4 06     mov   $06+x,a
1d6d: 68 01     cmp   a,#$01
1d6f: f0 2f     beq   $1da0
1d71: f4 56     mov   a,$56+x
1d73: d4 0f     mov   $0f+x,a
1d75: f4 5e     mov   a,$5e+x
1d77: d4 18     mov   $18+x,a
1d79: f4 66     mov   a,$66+x
1d7b: d4 21     mov   $21+x,a
1d7d: f4 6e     mov   a,$6e+x
1d7f: d4 2a     mov   $2a+x,a
1d81: f4 76     mov   a,$76+x
1d83: d4 33     mov   $33+x,a
1d85: 8d 1f     mov   y,#$1f
1d87: f4 3c     mov   a,$3c+x
1d89: c4 00     mov   $00,a
1d8b: f4 45     mov   a,$45+x
1d8d: c4 01     mov   $01,a
1d8f: e4 00     mov   a,$00
1d91: c4 02     mov   $02,a
1d93: e4 01     mov   a,$01
1d95: bc        inc   a
1d96: c4 03     mov   $03,a
1d98: f7 02     mov   a,($02)+y
1d9a: d7 00     mov   ($00)+y,a
1d9c: dc        dec   y
1d9d: 10 f9     bpl   $1d98
1d9f: 20        clrp
1da0: 6f        ret

1da1: e5 10 08  mov   a,$0810
1da4: d0 0d     bne   $1db3
1da6: f8 0b     mov   x,$0b
1da8: e4 04     mov   a,$04
1daa: 68 04     cmp   a,#$04
1dac: 90 02     bcc   $1db0
1dae: e8 00     mov   a,#$00
1db0: d5 7a 04  mov   $047a+x,a
1db3: 6f        ret

1db4: f8 0b     mov   x,$0b
1db6: e4 04     mov   a,$04
1db8: f0 02     beq   $1dbc
1dba: 08 80     or    a,#$80
1dbc: d5 20 04  mov   $0420+x,a
1dbf: 6f        ret

1dc0: f8 0b     mov   x,$0b
1dc2: e4 04     mov   a,$04
1dc4: f0 0d     beq   $1dd3
1dc6: 1c        asl   a
1dc7: d5 29 04  mov   $0429+x,a
1dca: f5 20 04  mov   a,$0420+x
1dcd: 08 80     or    a,#$80
1dcf: d5 20 04  mov   $0420+x,a
1dd2: 6f        ret

1dd3: d5 29 04  mov   $0429+x,a
1dd6: 6f        ret

1dd7: f8 0b     mov   x,$0b
1dd9: e4 04     mov   a,$04
1ddb: 08 80     or    a,#$80
1ddd: d5 32 04  mov   $0432+x,a
1de0: f5 20 04  mov   a,$0420+x
1de3: 28 7f     and   a,#$7f
1de5: d5 20 04  mov   $0420+x,a
1de8: 6f        ret

1de9: e4 04     mov   a,$04
1deb: c4 dd     mov   $dd,a
1ded: 6f        ret

1dee: e4 04     mov   a,$04
1df0: 80        setc
1df1: a8 40     sbc   a,#$40
1df3: c4 e1     mov   $e1,a
1df5: 6f        ret

1df6: e4 04     mov   a,$04
1df8: 80        setc
1df9: a8 40     sbc   a,#$40
1dfb: c4 e0     mov   $e0,a
1dfd: 6f        ret

1dfe: e4 04     mov   a,$04
1e00: 80        setc
1e01: a8 40     sbc   a,#$40
1e03: c4 e2     mov   $e2,a
1e05: 6f        ret

1e06: e4 04     mov   a,$04
1e08: 1c        asl   a
1e09: d0 03     bne   $1e0e
1e0b: bc        inc   a
1e0c: 2f 11     bra   $1e1f
1e0e: 68 cf     cmp   a,#$cf
1e10: 90 04     bcc   $1e16
1e12: e8 ff     mov   a,#$ff
1e14: 2f 09     bra   $1e1f
1e16: c4 10     mov   $10,a
1e18: 8d 3b     mov   y,#$3b
1e1a: cf        mul   ya
1e1b: 1c        asl   a
1e1c: dd        mov   a,y
1e1d: 84 10     adc   a,$10
1e1f: c4 db     mov   $db,a
1e21: 6f        ret

1e22: e5 10 08  mov   a,$0810
1e25: d0 0a     bne   $1e31
1e27: e4 04     mov   a,$04
1e29: 68 04     cmp   a,#$04
1e2b: 90 02     bcc   $1e2f
1e2d: e8 00     mov   a,#$00
1e2f: c4 df     mov   $df,a
1e31: 6f        ret

1e32: f8 0b     mov   x,$0b
1e34: e4 04     mov   a,$04
1e36: 5c        lsr   a
1e37: d5 b9 04  mov   $04b9+x,a
1e3a: 6f        ret

1e3b: f8 0b     mov   x,$0b
1e3d: e4 04     mov   a,$04
1e3f: d5 c2 04  mov   $04c2+x,a
1e42: 6f        ret

1e43: f8 0b     mov   x,$0b
1e45: e4 04     mov   a,$04
1e47: 1c        asl   a
1e48: d5 cb 04  mov   $04cb+x,a
1e4b: 6f        ret

1e4c: f8 0b     mov   x,$0b
1e4e: e4 04     mov   a,$04
1e50: 1c        asl   a
1e51: d5 d4 04  mov   $04d4+x,a
1e54: 6f        ret

1e55: f8 0b     mov   x,$0b
1e57: e4 04     mov   a,$04
1e59: 68 08     cmp   a,#$08
1e5b: 90 02     bcc   $1e5f
1e5d: e8 00     mov   a,#$00
1e5f: d5 dd 04  mov   $04dd+x,a
1e62: 6f        ret

1e63: dw $1bc8
1e65: dw $1bce
1e67: dw $1bdd
1e69: dw $1bec
1e6b: dw $1bfb
1e6d: dw $1c10
1e6f: dw $1c1f
1e71: dw $1c30
1e73: dw $1c45
1e75: dw $1c4e
1e77: dw $1c5c
1e79: dw $1c64
1e7b: dw $1c6d
1e7d: dw $1c76
1e7f: dw $1c84
1e81: dw $1c8f
1e83: dw $1c9a
1e85: dw $1ca6
1e87: dw $1ca9
1e89: dw $1da1
1e8b: dw $1db4
1e8d: dw $1dc0
1e8f: dw $1dd7
1e91: dw $1de9
1e93: dw $1dee
1e95: dw $1df6
1e97: dw $1dfe
1e99: dw $1e06
1e9b: dw $1e22
1e9d: dw $1e32
1e9f: dw $1e3b
1ea1: dw $1e43
1ea3: dw $1e4c
1ea5: dw $1e55

1ea7: ce        pop   x
1ea8: 3f 39 1f  call  $1f39
1eab: c4 db     mov   $db,a
1ead: 6f        ret

1eae: ce        pop   x
1eaf: 6f        ret

1eb0: ce        pop   x
1eb1: e8 00     mov   a,#$00
1eb3: d5 01 05  mov   $0501+x,a
1eb6: d5 f8 04  mov   $04f8+x,a
1eb9: 6f        ret

1eba: ce        pop   x
1ebb: 3f 39 1f  call  $1f39
1ebe: d5 52 05  mov   $0552+x,a
1ec1: 6f        ret

1ec2: ce        pop   x
1ec3: 3f 39 1f  call  $1f39
1ec6: d5 2e 05  mov   $052e+x,a
1ec9: c4 02     mov   $02,a
1ecb: f5 52 05  mov   a,$0552+x
1ece: c4 00     mov   $00,a
1ed0: 4d        push  x
1ed1: 3f 74 0d  call  $0d74
1ed4: ce        pop   x
1ed5: f5 1c 05  mov   a,$051c+x
1ed8: c4 04     mov   $04,a
1eda: 3f 7d 18  call  $187d
1edd: 6f        ret

1ede: ce        pop   x
1edf: 3f 39 1f  call  $1f39
1ee2: d5 2e 05  mov   $052e+x,a
1ee5: c4 02     mov   $02,a
1ee7: f5 52 05  mov   a,$0552+x
1eea: c4 00     mov   $00,a
1eec: 3f b0 18  call  $18b0
1eef: 6f        ret

1ef0: ce        pop   x
1ef1: 3f 39 1f  call  $1f39
1ef4: d5 2e 05  mov   $052e+x,a
1ef7: f5 25 05  mov   a,$0525+x
1efa: d5 0a 05  mov   $050a+x,a
1efd: e8 20     mov   a,#$20
1eff: d5 13 05  mov   $0513+x,a
1f02: 6f        ret

1f03: ce        pop   x
1f04: 3f 39 1f  call  $1f39
1f07: d5 37 05  mov   $0537+x,a
1f0a: f5 25 05  mov   a,$0525+x
1f0d: d5 0a 05  mov   $050a+x,a
1f10: e8 a0     mov   a,#$a0
1f12: d5 13 05  mov   $0513+x,a
1f15: 6f        ret

1f16: ce        pop   x
1f17: 6f        ret

1f18: ce        pop   x
1f19: 3f 39 1f  call  $1f39
1f1c: d5 37 05  mov   $0537+x,a
1f1f: 08 80     or    a,#$80
1f21: 2d        push  a
1f22: f5 52 05  mov   a,$0552+x
1f25: 5d        mov   x,a
1f26: ae        pop   a
1f27: d5 9a 05  mov   $059a+x,a
1f2a: 6f        ret

1f2b: ce        pop   x
1f2c: e8 ff     mov   a,#$ff
1f2e: d5 0a 05  mov   $050a+x,a
1f31: 6f        ret

1f32: ce        pop   x
1f33: 28 07     and   a,#$07
1f35: d5 1c 05  mov   $051c+x,a
1f38: 6f        ret

1f39: 40        setp
1f3a: f4 06     mov   a,$06+x
1f3c: 4d        push  x
1f3d: 1c        asl   a
1f3e: 5d        mov   x,a
1f3f: 1f 42 1f  jmp   ($1f42+x)

1f42: dw $1f4c
1f44: dw $1f53
1f46: dw $1f5a
1f48: dw $1f61
1f4a: dw $1f68

1f4c: ce        pop   x
1f4d: 3f 6e 1f  call  $1f6e
1f50: 5f 39 1f  jmp   $1f39

1f53: ce        pop   x
1f54: 3f 8d 1f  call  $1f8d
1f57: 5f 6c 1f  jmp   $1f6c

1f5a: ce        pop   x
1f5b: 3f 99 1f  call  $1f99
1f5e: 5f 39 1f  jmp   $1f39

1f61: ce        pop   x
1f62: 3f bd 1f  call  $1fbd
1f65: 5f 6c 1f  jmp   $1f6c

1f68: ce        pop   x
1f69: 3f 08 20  call  $2008
1f6c: 20        clrp
1f6d: 6f        ret

1f6e: 3f 2b 20  call  $202b
1f71: f7 00     mov   a,($00)+y
1f73: fc        inc   y
1f74: 17 00     or    a,($00)+y
1f76: f0 0c     beq   $1f84
1f78: fc        inc   y
1f79: e8 02     mov   a,#$02
1f7b: d4 06     mov   $06+x,a
1f7d: e8 00     mov   a,#$00
1f7f: d4 33     mov   $33+x,a
1f81: 5f 89 1f  jmp   $1f89

1f84: fc        inc   y
1f85: e8 01     mov   a,#$01
1f87: d4 06     mov   $06+x,a
1f89: 3f 38 20  call  $2038
1f8c: 6f        ret

1f8d: 3f 2b 20  call  $202b
1f90: f7 00     mov   a,($00)+y
1f92: fc        inc   y
1f93: 2d        push  a
1f94: 3f 38 20  call  $2038
1f97: ae        pop   a
1f98: 6f        ret

1f99: 3f 2b 20  call  $202b
1f9c: f4 0f     mov   a,$0f+x
1f9e: d0 0e     bne   $1fae
1fa0: f7 00     mov   a,($00)+y
1fa2: fc        inc   y
1fa3: 48 ff     eor   a,#$ff
1fa5: d4 21     mov   $21+x,a
1fa7: e8 08     mov   a,#$08
1fa9: d4 0f     mov   $0f+x,a
1fab: 3f 38 20  call  $2038
1fae: 1b 21     asl   $21+x
1fb0: e8 00     mov   a,#$00
1fb2: 88 03     adc   a,#$03
1fb4: d4 06     mov   $06+x,a
1fb6: e8 ff     mov   a,#$ff
1fb8: d4 18     mov   $18+x,a
1fba: 9b 0f     dec   $0f+x
1fbc: 6f        ret

1fbd: 3f 2b 20  call  $202b
1fc0: f4 18     mov   a,$18+x
1fc2: 10 18     bpl   $1fdc
1fc4: f7 00     mov   a,($00)+y
1fc6: fc        inc   y
1fc7: c4 02     mov   $02,a
1fc9: 9f        xcn   a
1fca: 5c        lsr   a
1fcb: 28 07     and   a,#$07
1fcd: 60        clrc
1fce: 88 02     adc   a,#$02
1fd0: d4 18     mov   $18+x,a
1fd2: 38 1f 02  and   $02,#$1f
1fd5: f4 33     mov   a,$33+x
1fd7: 60        clrc
1fd8: a4 02     sbc   a,$02
1fda: d4 2a     mov   $2a+x,a
1fdc: 3f 38 20  call  $2038
1fdf: f4 3c     mov   a,$3c+x
1fe1: c4 02     mov   $02,a
1fe3: f4 45     mov   a,$45+x
1fe5: c4 03     mov   $03,a
1fe7: f4 2a     mov   a,$2a+x
1fe9: bb 2a     inc   $2a+x
1feb: 28 1f     and   a,#$1f
1fed: fd        mov   y,a
1fee: f7 02     mov   a,($02)+y
1ff0: c4 04     mov   $04,a
1ff2: f4 33     mov   a,$33+x
1ff4: bb 33     inc   $33+x
1ff6: 28 1f     and   a,#$1f
1ff8: fd        mov   y,a
1ff9: e4 04     mov   a,$04
1ffb: d7 02     mov   ($02)+y,a
1ffd: 9b 18     dec   $18+x
1fff: 10 04     bpl   $2005
2001: e8 02     mov   a,#$02
2003: d4 06     mov   $06+x,a
2005: e4 04     mov   a,$04
2007: 6f        ret

2008: 3f 2b 20  call  $202b
200b: e8 02     mov   a,#$02
200d: d4 06     mov   $06+x,a
200f: f4 3c     mov   a,$3c+x
2011: c4 02     mov   $02,a
2013: f4 45     mov   a,$45+x
2015: c4 03     mov   $03,a
2017: f7 00     mov   a,($00)+y
2019: fc        inc   y
201a: c4 04     mov   $04,a
201c: 3f 38 20  call  $2038
201f: f4 33     mov   a,$33+x
2021: bb 33     inc   $33+x
2023: 28 1f     and   a,#$1f
2025: fd        mov   y,a
2026: e4 04     mov   a,$04
2028: d7 02     mov   ($02)+y,a
202a: 6f        ret

202b: f5 f8 04  mov   a,$04f8+x
202e: c4 00     mov   $00,a
2030: f5 01 05  mov   a,$0501+x
2033: c4 01     mov   $01,a
2035: 8d 00     mov   y,#$00
2037: 6f        ret

2038: 60        clrc
2039: dd        mov   a,y
203a: 84 00     adc   a,$00
203c: d5 f8 04  mov   $04f8+x,a
203f: e8 00     mov   a,#$00
2041: 84 01     adc   a,$01
2043: d5 01 05  mov   $0501+x,a
2046: 6f        ret

2047: f8 52     mov   x,$52
2049: f0 1e     beq   $2069
204b: cd 00     mov   x,#$00
204d: f4 53     mov   a,$53+x
204f: c4 00     mov   $00,a
2051: f4 54     mov   a,$54+x
2053: c4 02     mov   $02,a
2055: f4 55     mov   a,$55+x
2057: c4 04     mov   $04,a
2059: 68 ff     cmp   a,#$ff
205b: f0 05     beq   $2062
205d: 4d        push  x
205e: 3f 6a 20  call  $206a
2061: ce        pop   x
2062: 3d        inc   x
2063: 3d        inc   x
2064: 3d        inc   x
2065: 3e 52     cmp   x,$52
2067: d0 e4     bne   $204d
2069: 6f        ret

206a: 38 0f 00  and   $00,#$0f
206d: cd 07     mov   x,#$07
206f: f5 53 05  mov   a,$0553+x
2072: 64 00     cmp   a,$00
2074: f0 04     beq   $207a
2076: 1d        dec   x
2077: 10 f6     bpl   $206f
2079: 6f        ret

207a: f5 c0 07  mov   a,$07c0+x
207d: c4 06     mov   $06,a
207f: 24 1a     and   a,$1a
2081: f0 10     beq   $2093
2083: f4 34     mov   a,$34+x
2085: 64 02     cmp   a,$02
2087: f0 04     beq   $208d
2089: e4 02     mov   a,$02
208b: d4 34     mov   $34+x,a
208d: e4 06     mov   a,$06
208f: 0e 1b 00  tset1 $001b
2092: 6f        ret

2093: f5 c0 07  mov   a,$07c0+x
2096: 0e 1c 00  tset1 $001c
2099: 0e 1a 00  tset1 $001a
209c: 0e 1e 00  tset1 $001e
209f: e4 04     mov   a,$04
20a1: 9f        xcn   a
20a2: 04 00     or    a,$00
20a4: d4 2c     mov   $2c+x,a
20a6: e4 02     mov   a,$02
20a8: d4 34     mov   $34+x,a
20aa: eb 00     mov   y,$00
20ac: f6 a3 05  mov   a,$05a3+y
20af: d4 3c     mov   $3c+x,a
20b1: c4 4c     mov   $4c,a
20b3: f6 ac 05  mov   a,$05ac+y
20b6: d4 44     mov   $44+x,a
20b8: c4 4d     mov   $4d,a
20ba: e8 00     mov   a,#$00
20bc: d5 e2 05  mov   $05e2+x,a
20bf: d8 0a     mov   $0a,x
20c1: f4 2c     mov   a,$2c+x
20c3: 28 0f     and   a,#$0f
20c5: 5d        mov   x,a
20c6: d8 0b     mov   $0b,x
20c8: f5 83 04  mov   a,$0483+x
20cb: d0 06     bne   $20d3
20cd: 8d 01     mov   y,#$01
20cf: f7 4c     mov   a,($4c)+y
20d1: f0 47     beq   $211a
20d3: c4 0e     mov   $0e,a
20d5: f8 0b     mov   x,$0b
20d7: f5 9e 04  mov   a,$049e+x
20da: d0 04     bne   $20e0
20dc: 8d 02     mov   y,#$02
20de: f7 4c     mov   a,($4c)+y
20e0: f8 0a     mov   x,$0a
20e2: d5 ea 05  mov   $05ea+x,a
20e5: f8 0b     mov   x,$0b
20e7: f5 a7 04  mov   a,$04a7+x
20ea: d0 04     bne   $20f0
20ec: 8d 03     mov   y,#$03
20ee: f7 4c     mov   a,($4c)+y
20f0: f8 0a     mov   x,$0a
20f2: d5 f2 05  mov   $05f2+x,a
20f5: f0 23     beq   $211a
20f7: d8 00     mov   $00,x
20f9: 5d        mov   x,a
20fa: e4 0e     mov   a,$0e
20fc: 8d 00     mov   y,#$00
20fe: 9e        div   ya,x
20ff: c4 01     mov   $01,a
2101: dd        mov   a,y
2102: 5d        mov   x,a
2103: 8d 01     mov   y,#$01
2105: e8 00     mov   a,#$00
2107: 9e        div   ya,x
2108: f8 00     mov   x,$00
210a: d5 02 06  mov   $0602+x,a
210d: e4 01     mov   a,$01
210f: d5 fa 05  mov   $05fa+x,a
2112: e8 00     mov   a,#$00
2114: d5 1a 06  mov   $061a+x,a
2117: d5 12 06  mov   $0612+x,a
211a: e8 00     mov   a,#$00
211c: f8 0a     mov   x,$0a
211e: d5 22 06  mov   $0622+x,a
2121: f8 0b     mov   x,$0b
2123: f5 b9 04  mov   a,$04b9+x
2126: d0 06     bne   $212e
2128: 8d 08     mov   y,#$08
212a: f7 4c     mov   a,($4c)+y
212c: f0 47     beq   $2175
212e: c4 0e     mov   $0e,a
2130: f8 0b     mov   x,$0b
2132: f5 cb 04  mov   a,$04cb+x
2135: d0 04     bne   $213b
2137: 8d 09     mov   y,#$09
2139: f7 4c     mov   a,($4c)+y
213b: f8 0a     mov   x,$0a
213d: d5 2a 06  mov   $062a+x,a
2140: f8 0b     mov   x,$0b
2142: f5 d4 04  mov   a,$04d4+x
2145: d0 04     bne   $214b
2147: 8d 0a     mov   y,#$0a
2149: f7 4c     mov   a,($4c)+y
214b: f8 0a     mov   x,$0a
214d: d5 32 06  mov   $0632+x,a
2150: f0 23     beq   $2175
2152: d8 00     mov   $00,x
2154: 5d        mov   x,a
2155: e4 0e     mov   a,$0e
2157: 8d 00     mov   y,#$00
2159: 9e        div   ya,x
215a: c4 01     mov   $01,a
215c: dd        mov   a,y
215d: 5d        mov   x,a
215e: 8d 01     mov   y,#$01
2160: e8 00     mov   a,#$00
2162: 9e        div   ya,x
2163: f8 00     mov   x,$00
2165: d5 42 06  mov   $0642+x,a
2168: e4 01     mov   a,$01
216a: d5 3a 06  mov   $063a+x,a
216d: e8 00     mov   a,#$00
216f: d5 5a 06  mov   $065a+x,a
2172: d5 52 06  mov   $0652+x,a
2175: 6f        ret

2176: 6c 60 2d  
2179: 00        
217a: 3d        
217b: 00        
217c: 0c 60 1c  
217f: 60        
2180: 7d        
2181: 00        
2182: 0d        
2183: 00        
2184: 4d        
2185: 00        
2186: 2c 00 3c  
2189: 00        
218a: 6d        
218b: f8 5c     
218d: 00        
218e: 4c 00 0f  
2191: 7f        
2192: 1f 00 2f  
2195: 00        
2196: 3f 00 4f  
2199: 00        
219a: 5f 00 6f  
219d: 00        
219e: 7f        
219f: 00        

21a0: 3f 5e 23  call  $235e
21a3: 3f 40 23  call  $2340
21a6: 3f c5 21  call  $21c5
21a9: 3f dd 21  call  $21dd
21ac: 3f b0 21  call  $21b0
21af: 6f        ret

21b0: 40        setp
21b1: cd 08     mov   x,#$08
21b3: 7d        mov   a,x
21b4: 9f        xcn   a
21b5: 1c        asl   a
21b6: d4 3c     mov   $3c+x,a
21b8: 3c        rol   a
21b9: 28 01     and   a,#$01
21bb: 60        clrc
21bc: 88 02     adc   a,#$02
21be: d4 45     mov   $45+x,a
21c0: 1d        dec   x
21c1: 10 f0     bpl   $21b3
21c3: 20        clrp
21c4: 6f        ret

21c5: cd 07     mov   x,#$07
21c7: e8 40     mov   a,#$40
21c9: d4 ae     mov   $ae+x,a
21cb: e8 ff     mov   a,#$ff
21cd: d4 9e     mov   $9e+x,a
21cf: e8 00     mov   a,#$00
21d1: d4 96     mov   $96+x,a
21d3: d4 b6     mov   $b6+x,a
21d5: d4 a6     mov   $a6+x,a
21d7: d4 be     mov   $be+x,a
21d9: 1d        dec   x
21da: 10 eb     bpl   $21c7
21dc: 6f        ret

21dd: e8 60     mov   a,#$60
21df: c4 dd     mov   $dd,a
21e1: e8 40     mov   a,#$40
21e3: c4 de     mov   $de,a
21e5: e8 00     mov   a,#$00
21e7: c4 df     mov   $df,a
21e9: 8f 00 86  mov   $86,#$00
21ec: e8 00     mov   a,#$00
21ee: c4 e1     mov   $e1,a
21f0: c4 e2     mov   $e2,a
21f2: c4 e0     mov   $e0,a
21f4: c4 d6     mov   $d6,a
21f6: c4 d7     mov   $d7,a
21f8: c4 d8     mov   $d8,a
21fa: c4 d9     mov   $d9,a
21fc: c4 e3     mov   $e3,a
21fe: c4 e4     mov   $e4,a
2200: c4 e5     mov   $e5,a
2202: c4 e6     mov   $e6,a
2204: e8 00     mov   a,#$00
2206: 5d        mov   x,a
2207: d5 20 04  mov   $0420+x,a
220a: 3d        inc   x
220b: c8 d8     cmp   x,#$d8
220d: d0 f8     bne   $2207
220f: cd 08     mov   x,#$08
2211: 3f 1d 22  call  $221d
2214: e8 00     mov   a,#$00
2216: 3f da 11  call  $11da
2219: 1d        dec   x
221a: 10 f5     bpl   $2211
221c: 6f        ret

221d: e8 00     mov   a,#$00
221f: d5 40 05  mov   $0540+x,a
2222: d5 49 05  mov   $0549+x,a
2225: d5 c7 05  mov   $05c7+x,a
2228: d5 d0 05  mov   $05d0+x,a
222b: d5 d9 05  mov   $05d9+x,a
222e: e8 40     mov   a,#$40
2230: d5 88 05  mov   $0588+x,a
2233: e8 7f     mov   a,#$7f
2235: d5 6d 05  mov   $056d+x,a
2238: e8 c0     mov   a,#$c0
223a: d5 9a 05  mov   $059a+x,a
223d: e8 0b     mov   a,#$0b
223f: d5 5b 05  mov   $055b+x,a
2242: 6f        ret

2243: e8 25     mov   a,#$25
2245: c4 e7     mov   $e7,a
2247: 6f        ret

2248: e4 94     mov   a,$94
224a: 30 03     bmi   $224f
224c: 5f ca 22  jmp   $22ca

224f: e4 8f     mov   a,$8f
2251: d0 44     bne   $2297
2253: ab 8f     inc   $8f
2255: 8f 7d f2  mov   $f2,#$7d
2258: e4 f3     mov   a,$f3
225a: 5c        lsr   a
225b: 60        clrc
225c: 84 f3     adc   a,$f3
225e: 28 1f     and   a,#$1f
2260: 48 ff     eor   a,#$ff
2262: c4 90     mov   $90,a
2264: e8 00     mov   a,#$00
2266: 8f 2c f2  mov   $f2,#$2c
2269: c4 f3     mov   $f3,a
226b: 8f 3c f2  mov   $f2,#$3c
226e: c4 f3     mov   $f3,a
2270: 8f 4d f2  mov   $f2,#$4d
2273: c4 f3     mov   $f3,a
2275: 8f 0d f2  mov   $f2,#$0d
2278: c4 f3     mov   $f3,a
227a: 8f 6c f2  mov   $f2,#$6c
227d: 8f 20 f3  mov   $f3,#$20
2280: 8f 7d f2  mov   $f2,#$7d
2283: e4 94     mov   a,$94
2285: 28 0f     and   a,#$0f
2287: c4 f3     mov   $f3,a
2289: 1c        asl   a
228a: 1c        asl   a
228b: 1c        asl   a
228c: 48 ff     eor   a,#$ff
228e: 80        setc
228f: 88 f8     adc   a,#$f8
2291: 8f 6d f2  mov   $f2,#$6d
2294: c4 f3     mov   $f3,a
2296: 6f        ret

2297: 68 01     cmp   a,#$01
2299: d0 1c     bne   $22b7
229b: ab 90     inc   $90
229d: 30 2a     bmi   $22c9
229f: ab 8f     inc   $8f
22a1: 3f eb 22  call  $22eb
22a4: 8f 6c f2  mov   $f2,#$6c
22a7: 8f 00 f3  mov   $f3,#$00
22aa: e4 94     mov   a,$94
22ac: 5c        lsr   a
22ad: 60        clrc
22ae: 84 94     adc   a,$94
22b0: 28 1f     and   a,#$1f
22b2: 48 ff     eor   a,#$ff
22b4: c4 90     mov   $90,a
22b6: 6f        ret

22b7: ab 90     inc   $90
22b9: 30 0e     bmi   $22c9
22bb: e8 80     mov   a,#$80
22bd: 4e 94 00  tclr1 $0094
22c0: e8 80     mov   a,#$80
22c2: 0e 91 00  tset1 $0091
22c5: e8 00     mov   a,#$00
22c7: c4 8f     mov   $8f,a
22c9: 6f        ret

22ca: e4 91     mov   a,$91
22cc: 10 1c     bpl   $22ea
22ce: 8f 2c f2  mov   $f2,#$2c
22d1: 28 7f     and   a,#$7f
22d3: c4 91     mov   $91,a
22d5: c4 f3     mov   $f3,a
22d7: 8f 3c f2  mov   $f2,#$3c
22da: e4 92     mov   a,$92
22dc: 28 7f     and   a,#$7f
22de: c4 92     mov   $92,a
22e0: c4 f3     mov   $f3,a
22e2: 8f 0d f2  mov   $f2,#$0d
22e5: e4 93     mov   a,$93
22e7: 1c        asl   a
22e8: c4 f3     mov   $f3,a
22ea: 6f        ret

22eb: e4 95     mov   a,$95
22ed: 1c        asl   a
22ee: 1c        asl   a
22ef: 1c        asl   a
22f0: 08 07     or    a,#$07
22f2: fd        mov   y,a
22f3: cd 07     mov   x,#$07
22f5: 7d        mov   a,x
22f6: 9f        xcn   a
22f7: 08 0f     or    a,#$0f
22f9: c4 f2     mov   $f2,a
22fb: f6 60 07  mov   a,$0760+y
22fe: c4 f3     mov   $f3,a
2300: dc        dec   y
2301: 1d        dec   x
2302: 10 f1     bpl   $22f5
2304: 6f        ret

2305: e8 00     mov   a,#$00
2307: 8f 2c f2  mov   $f2,#$2c
230a: c4 f3     mov   $f3,a
230c: 8f 3c f2  mov   $f2,#$3c
230f: c4 f3     mov   $f3,a
2311: 8f 6c f2  mov   $f2,#$6c
2314: 8f 20 f3  mov   $f3,#$20
2317: 8f 7d f2  mov   $f2,#$7d
231a: c4 f3     mov   $f3,a
231c: 8f 6d f2  mov   $f2,#$6d
231f: 8f f8 f3  mov   $f3,#$f8
2322: 8f 4d f2  mov   $f2,#$4d
2325: c4 f3     mov   $f3,a
2327: 8f 2d f2  mov   $f2,#$2d
232a: c4 f3     mov   $f3,a
232c: 8f 3d f2  mov   $f2,#$3d
232f: c4 f3     mov   $f3,a
2331: c4 8f     mov   $8f,a
2333: c4 90     mov   $90,a
2335: c4 91     mov   $91,a
2337: c4 92     mov   $92,a
2339: c4 93     mov   $93,a
233b: c4 95     mov   $95,a
233d: c4 94     mov   $94,a
233f: 6f        ret

2340: e8 00     mov   a,#$00
2342: c4 f1     mov   $f1,a
2344: 8f 60 fa  mov   $fa,#$60
2347: 8f 60 fb  mov   $fb,#$60
234a: 8f 33 f1  mov   $f1,#$33
234d: c4 f4     mov   $f4,a
234f: c4 f5     mov   $f5,a
2351: c4 f6     mov   $f6,a
2353: c4 f7     mov   $f7,a
2355: c4 14     mov   $14,a
2357: c4 15     mov   $15,a
2359: c4 16     mov   $16,a
235b: c4 17     mov   $17,a
235d: 6f        ret

235e: 8f 6c f2  mov   $f2,#$6c
2361: 8f 60 f3  mov   $f3,#$60
2364: 8f 5d f2  mov   $f2,#$5d
2367: e8 26     mov   a,#$26
2369: c4 f3     mov   $f3,a
236b: cd 28     mov   x,#$28
236d: f5 76 21  mov   a,$2176+x
2370: fd        mov   y,a
2371: f5 77 21  mov   a,$2177+x
2374: cb f2     mov   $f2,y
2376: c4 f3     mov   $f3,a
2378: 1d        dec   x
2379: 1d        dec   x
237a: 10 f1     bpl   $236d
237c: 6f        ret

237d: dw $23aa
237f: dw $23c6
2381: dw $23d2
2383: dw $23e1
2385: dw $2400
2387: dw $24c3
2389: dw $2526
238b: dw $2515
238d: dw $24ec
238f: dw $24fc

2391: e8 00     mov   a,#$00
2393: c4 00     mov   $00,a
2395: e4 f4     mov   a,$f4
2397: 64 f4     cmp   a,$f4
2399: d0 fa     bne   $2395
239b: 44 14     eor   a,$14
239d: 10 f6     bpl   $2395
239f: e4 f4     mov   a,$f4
23a1: c4 14     mov   $14,a
23a3: 28 7f     and   a,#$7f
23a5: 1c        asl   a
23a6: 5d        mov   x,a
23a7: 1f 7d 23  jmp   ($237d+x)

23aa: e4 f6     mov   a,$f6
23ac: d7 00     mov   ($00)+y,a
23ae: fc        inc   y
23af: e4 f7     mov   a,$f7
23b1: d7 00     mov   ($00)+y,a
23b3: e4 14     mov   a,$14
23b5: c4 f4     mov   $f4,a
23b7: fc        inc   y
23b8: d0 db     bne   $2395
23ba: ab 01     inc   $01
23bc: e4 01     mov   a,$01
23be: 64 e8     cmp   a,$e8
23c0: 90 d3     bcc   $2395
23c2: c4 e8     mov   $e8,a
23c4: 2f cf     bra   $2395
23c6: e4 f7     mov   a,$f7
23c8: c4 01     mov   $01,a
23ca: eb f6     mov   y,$f6
23cc: e4 14     mov   a,$14
23ce: c4 f4     mov   $f4,a
23d0: 2f ea     bra   $23bc
23d2: e4 84     mov   a,$84
23d4: c4 f6     mov   $f6,a
23d6: e4 20     mov   a,$20
23d8: c4 f7     mov   $f7,a
23da: e4 14     mov   a,$14
23dc: c4 f4     mov   $f4,a
23de: 5f 95 23  jmp   $2395

23e1: e8 65     mov   a,#$65
23e3: c4 f6     mov   $f6,a
23e5: e4 14     mov   a,$14
23e7: c4 f4     mov   $f4,a
23e9: e4 f6     mov   a,$f6
23eb: 68 00     cmp   a,#$00
23ed: d0 fa     bne   $23e9
23ef: c4 f6     mov   $f6,a
23f1: c4 16     mov   $16,a
23f3: c4 f7     mov   $f7,a
23f5: c4 17     mov   $17,a
23f7: c4 f4     mov   $f4,a
23f9: c4 14     mov   $14,a
23fb: c4 f5     mov   $f5,a
23fd: c4 15     mov   $15,a
23ff: 6f        ret

2400: 3f e1 23  call  $23e1
2403: 60        clrc
2404: e5 04 08  mov   a,$0804
2407: 88 01     adc   a,#$01
2409: c5 6a 12  mov   $126a,a
240c: e5 05 08  mov   a,$0805
240f: 88 00     adc   a,#$00
2411: c5 6b 12  mov   $126b,a
2414: 60        clrc
2415: e5 04 08  mov   a,$0804
2418: 88 02     adc   a,#$02
241a: c5 71 12  mov   $1271,a
241d: e5 05 08  mov   a,$0805
2420: 88 00     adc   a,#$00
2422: c5 72 12  mov   $1272,a
2425: 60        clrc
2426: e5 04 08  mov   a,$0804
2429: 88 03     adc   a,#$03
242b: c5 77 12  mov   $1277,a
242e: e5 05 08  mov   a,$0805
2431: 88 00     adc   a,#$00
2433: c5 78 12  mov   $1278,a
2436: 60        clrc
2437: e5 06 08  mov   a,$0806
243a: 88 01     adc   a,#$01
243c: c5 12 09  mov   $0912,a
243f: e5 07 08  mov   a,$0807
2442: 88 00     adc   a,#$00
2444: c5 13 09  mov   $0913,a
2447: 60        clrc
2448: e5 06 08  mov   a,$0806
244b: 88 02     adc   a,#$02
244d: c5 e6 09  mov   $09e6,a
2450: e5 07 08  mov   a,$0807
2453: 88 00     adc   a,#$00
2455: c5 e7 09  mov   $09e7,a
2458: 60        clrc
2459: e5 06 08  mov   a,$0806
245c: 88 03     adc   a,#$03
245e: c5 eb 09  mov   $09eb,a
2461: e5 07 08  mov   a,$0807
2464: 88 00     adc   a,#$00
2466: c5 ec 09  mov   $09ec,a
2469: e5 00 08  mov   a,$0800
246c: c5 f6 11  mov   $11f6,a
246f: e5 01 08  mov   a,$0801
2472: c5 f7 11  mov   $11f7,a
2475: 60        clrc
2476: e5 00 08  mov   a,$0800
2479: 88 01     adc   a,#$01
247b: c5 fb 11  mov   $11fb,a
247e: e5 01 08  mov   a,$0801
2481: 88 00     adc   a,#$00
2483: c5 fc 11  mov   $11fc,a
2486: e5 03 08  mov   a,$0803
2489: c5 68 23  mov   $2368,a
248c: e5 08 08  mov   a,$0808
248f: c5 1c 09  mov   $091c,a
2492: e5 09 08  mov   a,$0809
2495: c5 1d 09  mov   $091d,a
2498: e5 0a 08  mov   a,$080a
249b: c5 63 12  mov   $1263,a
249e: e5 0b 08  mov   a,$080b
24a1: c5 64 12  mov   $1264,a
24a4: e5 0c 08  mov   a,$080c
24a7: c5 ec 11  mov   $11ec,a
24aa: e5 0d 08  mov   a,$080d
24ad: c5 ed 11  mov   $11ed,a
24b0: e5 0e 08  mov   a,$080e
24b3: c5 71 17  mov   $1771,a
24b6: c5 b6 0e  mov   $0eb6,a
24b9: e5 0f 08  mov   a,$080f
24bc: c5 72 17  mov   $1772,a
24bf: c5 b7 0e  mov   $0eb7,a
24c2: 6f        ret

24c3: e4 e3     mov   a,$e3
24c5: c4 f6     mov   $f6,a
24c7: e4 e4     mov   a,$e4
24c9: c4 f7     mov   $f7,a
24cb: e4 14     mov   a,$14
24cd: c4 f4     mov   $f4,a
24cf: e4 f4     mov   a,$f4
24d1: 64 f4     cmp   a,$f4
24d3: d0 fa     bne   $24cf
24d5: 44 14     eor   a,$14
24d7: 10 f6     bpl   $24cf
24d9: e4 f4     mov   a,$f4
24db: c4 14     mov   $14,a
24dd: e4 e5     mov   a,$e5
24df: c4 f6     mov   $f6,a
24e1: e4 e6     mov   a,$e6
24e3: c4 f7     mov   $f7,a
24e5: e4 14     mov   a,$14
24e7: c4 f4     mov   $f4,a
24e9: 5f 95 23  jmp   $2395

24ec: e4 f6     mov   a,$f6
24ee: d7 00     mov   ($00)+y,a
24f0: e4 14     mov   a,$14
24f2: c4 f4     mov   $f4,a
24f4: fc        inc   y
24f5: d0 02     bne   $24f9
24f7: ab 01     inc   $01
24f9: 5f 95 23  jmp   $2395

24fc: f7 00     mov   a,($00)+y
24fe: c4 f6     mov   $f6,a
2500: fc        inc   y
2501: d0 02     bne   $2505
2503: ab 01     inc   $01
2505: f7 00     mov   a,($00)+y
2507: c4 f7     mov   $f7,a
2509: fc        inc   y
250a: d0 02     bne   $250e
250c: ab 01     inc   $01
250e: e4 14     mov   a,$14
2510: c4 f4     mov   $f4,a
2512: 5f 95 23  jmp   $2395

2515: e5 89 06  mov   a,$0689
2518: c4 f6     mov   $f6,a
251a: e5 91 06  mov   a,$0691
251d: c4 f7     mov   $f7,a
251f: e4 14     mov   a,$14
2521: c4 f4     mov   $f4,a
2523: 5f 95 23  jmp   $2395

2526: e8 00     mov   a,#$00
2528: c4 f7     mov   $f7,a
252a: e4 db     mov   a,$db
252c: bc        inc   a
252d: c4 f6     mov   $f6,a
252f: e4 14     mov   a,$14
2531: c4 f4     mov   $f4,a
2533: 5f 95 23  jmp   $2395
