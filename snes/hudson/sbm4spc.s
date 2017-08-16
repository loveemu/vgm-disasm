; SFX SOUND DRIVER Ver 2.28 ,(C)1993-95 Hudson Soft,Program : LU.Iwabuchi,Driver : Kazumi-TYPE,Note : 

0800: 5f 80 08  jmp   $0880
0803: dw $4300  ;
0805: dw $3100  ;
0807: dw $5400  ;
0809: db $53    ;
080a: db $ff    ;
080b: db $32    ;
080c: db $60    ;
080d: db $60    ;

0840: db $00,$ff,$e0,$b8,$00,$ff,$e0,$b8
0848: db $00,$ff,$e0,$b8,$00,$ff,$e0,$b8
0850: db $00,$00,$00,$00,$00,$00,$00,$00
0858: db $40,$40,$01,$30,$00,$00,$00,$00

0880: 40        setp
0881: cd 3f     mov   x,#$3f
0883: bd        mov   sp,x
0884: e8 00     mov   a,#$00
0886: c6        mov   (x),a
0887: 1d        dec   x
0888: 10 fc     bpl   $0886
088a: c4 61     mov   $61,a
088c: 20        clrp
088d: c4 3a     mov   $3a,a
088f: 3f d4 08  call  $08d4
0892: cd 3f     mov   x,#$3f
0894: bd        mov   sp,x
0895: 3f 9a 0d  call  $0d9a
0898: 3f d2 0d  call  $0dd2
089b: 3f 65 09  call  $0965
089e: 3f be 09  call  $09be
08a1: 3f c4 12  call  $12c4
08a4: c4 3b     mov   $3b,a
08a6: 3f 50 28  call  $2850
08a9: c4 3c     mov   $3c,a
08ab: e8 20     mov   a,#$20
08ad: cd 01     mov   x,#$01
08af: 3f b1 0d  call  $0db1
08b2: 8f 00 35  mov   $35,#$00
08b5: 8f 00 36  mov   $36,#$00
08b8: 8f 02 39  mov   $39,#$02
08bb: e8 96     mov   a,#$96
08bd: 3f 38 09  call  $0938
08c0: e8 aa     mov   a,#$aa
08c2: c4 f6     mov   $f6,a
08c4: c4 f7     mov   $f7,a
08c6: 3f fe 08  call  $08fe
08c9: 3f ba 0f  call  $0fba
08cc: 3f 9e 09  call  $099e
08cf: 3f 84 09  call  $0984
08d2: 2f f2     bra   $08c6
08d4: e5 03 08  mov   a,$0803
08d7: ec 04 08  mov   y,$0804
08da: da 14     movw  $14,ya
08dc: e5 05 08  mov   a,$0805
08df: ec 06 08  mov   y,$0806
08e2: da 16     movw  $16,ya
08e4: e5 07 08  mov   a,$0807
08e7: ec 08 08  mov   y,$0808
08ea: da 18     movw  $18,ya
08ec: e5 09 08  mov   a,$0809
08ef: c5 5b 01  mov   $015b,a
08f2: e5 0a 08  mov   a,$080a
08f5: c4 1a     mov   $1a,a
08f7: 8f 86 1b  mov   $1b,#$86
08fa: 8f 11 1c  mov   $1c,#$11
08fd: 6f        ret

08fe: e5 fe 00  mov   a,$00fe
0901: 28 0f     and   a,#$0f
0903: d0 01     bne   $0906
0905: 6f        ret

0906: 2d        push  a
0907: 3f d4 24  call  $24d4
090a: ae        pop   a
090b: 2d        push  a
090c: 8d 40     mov   y,#$40
090e: cf        mul   ya
090f: 60        clrc
0910: 84 35     adc   a,$35
0912: c4 35     mov   $35,a
0914: 90 09     bcc   $091f
0916: 3f a7 28  call  $28a7
0919: 3f 23 0e  call  $0e23
091c: 3f 4d 24  call  $244d
091f: ae        pop   a
0920: eb 37     mov   y,$37
0922: cf        mul   ya
0923: 60        clrc
0924: 84 36     adc   a,$36
0926: c4 36     mov   $36,a
0928: dd        mov   a,y
0929: d0 02     bne   $092d
092b: 90 d8     bcc   $0905
092d: 3f 59 0e  call  $0e59
0930: 3f fb 12  call  $12fb
0933: 3f 23 0e  call  $0e23
0936: 2f c6     bra   $08fe
0938: 68 0a     cmp   a,#$0a
093a: b0 02     bcs   $093e
093c: e8 0a     mov   a,#$0a
093e: c4 37     mov   $37,a
0940: c4 38     mov   $38,a
0942: 8d 00     mov   y,#$00
0944: cd 0a     mov   x,#$0a
0946: 9e        div   ya,x
0947: 5d        mov   x,a
0948: e4 37     mov   a,$37
094a: 80        setc
094b: b5 aa 12  sbc   a,$12aa+x
094e: ad 05     cmp   y,#$05
0950: 90 01     bcc   $0953
0952: 9c        dec   a
0953: eb 39     mov   y,$39
0955: f0 03     beq   $095a
0957: 5c        lsr   a
0958: fe fd     dbnz  y,$0957
095a: c4 37     mov   $37,a
095c: 6f        ret

095d: c4 39     mov   $39,a
095f: e4 38     mov   a,$38
0961: 3f 38 09  call  $0938
0964: 6f        ret

0965: e4 1d     mov   a,$1d
0967: 08 30     or    a,#$30
0969: c4 f1     mov   $f1,a
096b: 00        nop
096c: e4 f4     mov   a,$f4
096e: 04 f5     or    a,$f5
0970: 04 f6     or    a,$f6
0972: 04 f7     or    a,$f7
0974: d0 ef     bne   $0965
0976: e8 00     mov   a,#$00
0978: c4 f5     mov   $f5,a
097a: 8d 08     mov   y,#$08
097c: cd 21     mov   x,#$21
097e: e8 00     mov   a,#$00
0980: af        mov   (x)+,a
0981: fe fd     dbnz  y,$0980
0983: 6f        ret

0984: cd 00     mov   x,#$00
0986: 4f 35     pcall $35
0988: 69 25 21  cmp   ($21),($25)
098b: d0 01     bne   $098e
098d: 6f        ret

098e: cd 02     mov   x,#$02
0990: 4f 35     pcall $35
0992: cd 03     mov   x,#$03
0994: 4f 35     pcall $35
0996: e4 21     mov   a,$21
0998: 48 80     eor   a,#$80
099a: c4 f4     mov   $f4,a
099c: 2f 2d     bra   $09cb
099e: cd 01     mov   x,#$01
09a0: 4f 35     pcall $35
09a2: 69 26 22  cmp   ($22),($26)
09a5: d0 01     bne   $09a8
09a7: 6f        ret

09a8: cd 02     mov   x,#$02
09aa: 4f 35     pcall $35
09ac: cd 03     mov   x,#$03
09ae: 4f 35     pcall $35
09b0: e8 00     mov   a,#$00
09b2: c4 f6     mov   $f6,a
09b4: c4 f7     mov   $f7,a
09b6: e4 22     mov   a,$22
09b8: 48 80     eor   a,#$80
09ba: c4 f5     mov   $f5,a
09bc: 2f 36     bra   $09f4
09be: 8f 00 2f  mov   $2f,#$00
09c1: 8f 00 32  mov   $32,#$00
09c4: 8f 80 29  mov   $29,#$80
09c7: 8f 80 2c  mov   $2c,#$80
09ca: 6f        ret

09cb: e4 21     mov   a,$21
09cd: 28 7f     and   a,#$7f
09cf: f0 22     beq   $09f3
09d1: 65 0b 08  cmp   a,$080b
09d4: b0 09     bcs   $09df
09d6: c4 29     mov   $29,a
09d8: fa 23 2a  mov   ($2a),($23)
09db: fa 24 2b  mov   ($2b),($24)
09de: 6f        ret

09df: a5 0b 08  sbc   a,$080b
09e2: bc        inc   a
09e3: c4 00     mov   $00,a
09e5: 3f cf 28  call  $28cf
09e8: 90 09     bcc   $09f3
09ea: fa 00 2c  mov   ($2c),($00)
09ed: fa 23 2d  mov   ($2d),($23)
09f0: fa 24 2e  mov   ($2e),($24)
09f3: 6f        ret

09f4: e4 22     mov   a,$22
09f6: 28 7f     and   a,#$7f
09f8: 68 3c     cmp   a,#$3c
09fa: b0 05     bcs   $0a01
09fc: 1c        asl   a
09fd: 5d        mov   x,a
09fe: 1f 0f 0a  jmp   ($0a0f+x)

0a01: e8 aa     mov   a,#$aa
0a03: c4 f6     mov   $f6,a
0a05: c4 f7     mov   $f7,a
0a07: 6f        ret

0a08: c4 f7     mov   $f7,a
0a0a: e8 aa     mov   a,#$aa
0a0c: c4 f6     mov   $f6,a
0a0e: 6f        ret

0a0f: dw $0a01  ;
0a11: dw $0a87  ;
0a13: dw $0a90  ;
0a15: dw $0a9c  ;
0a17: dw $0aa5  ;
0a19: dw $0abc  ;
0a1b: dw $0ac9  ;
0a1d: dw $0adf  ;
0a1f: dw $0ae2  ;
0a21: dw $0ae7  ;
0a23: dw $0aec  ;
0a25: dw $0af2  ;
0a27: dw $0b10  ;
0a29: dw $0b2e  ;
0a2b: dw $0b45  ;
0a2d: dw $0b60  ;
0a2f: dw $0b7b  ;
0a31: dw $0bad  ;
0a33: dw $0bc0  ;
0a35: dw $0bcb  ;
0a37: dw $0be6  ;
0a39: dw $0bec  ;
0a3b: dw $0bf2  ;
0a3d: dw $0bfe  ;
0a3e: dw $0c0a  ;
0a41: dw $0c13  ;
0a43: dw $0c1c  ;
0a45: dw $0c25  ;
0a47: dw $0c2d  ;
0a49: dw $0c36  ;
0a4b: dw $0c39  ;
0a4d: dw $0c40  ;
0a4f: dw $0c45  ;
0a51: dw $0c4e  ;
0a53: dw $0c59  ;
0a55: dw $0a01  ;
0a57: dw $0c66  ;
0a59: dw $0c6f  ;
0a5b: dw $0ce5  ;
0a5d: dw $0cec  ;
0a5f: dw $0cf7  ;
0a61: dw $0d01  ;
0a63: dw $0d0c  ;
0a65: dw $0d16  ;
0a67: dw $0d21  ;
0a69: dw $0d29  ;
0a6b: dw $0d2f  ;
0a6d: dw $0d35  ;
0a6f: dw $0d3a  ;
0a71: dw $0d4f  ;
0a73: dw $0a01  ;
0a75: dw $0a01  ;
0a77: dw $0a01  ;
0a79: dw $0a01  ;
0a7b: dw $0a01  ;
0a7d: dw $0a01  ;
0a7f: dw $0d64  ;
0a81: dw $0d6a  ;
0a83: dw $0d73  ;
0a85: dw $0d8b  ;

0a87: 8f 06 2f  mov   $2f,#$06
0a8a: 8f 03 32  mov   $32,#$03
0a8d: 5f 01 0a  jmp   $0a01

0a90: 8f 0b 2f  mov   $2f,#$0b
0a93: fa 23 30  mov   ($30),($23)
0a96: 3f fb 12  call  $12fb
0a99: 5f 01 0a  jmp   $0a01

0a9c: e5 95 07  mov   a,$0795
0a9f: 80        setc
0aa0: a8 30     sbc   a,#$30
0aa2: 5f 08 0a  jmp   $0a08

0aa5: e5 97 07  mov   a,$0797
0aa8: 80        setc
0aa9: a8 30     sbc   a,#$30
0aab: 8d 0a     mov   y,#$0a
0aad: cf        mul   ya
0aae: c4 0e     mov   $0e,a
0ab0: e5 98 07  mov   a,$0798
0ab3: 80        setc
0ab4: a8 30     sbc   a,#$30
0ab6: 60        clrc
0ab7: 84 0e     adc   a,$0e
0ab9: 5f 08 0a  jmp   $0a08

0abc: fa 23 10  mov   ($10),($23)
0abf: fa 24 11  mov   ($11),($24)
0ac2: 8d 00     mov   y,#$00
0ac4: f7 10     mov   a,($10)+y
0ac6: 5f 08 0a  jmp   $0a08

0ac9: e8 ff     mov   a,#$ff
0acb: 3f 5c 11  call  $115c
0ace: 20        clrp
0acf: e8 80     mov   a,#$80
0ad1: c5 f1 00  mov   $00f1,a
0ad4: e8 00     mov   a,#$00
0ad6: c5 58 01  mov   $0158,a
0ad9: 3f 9b 0f  call  $0f9b
0adc: 5f c0 ff  jmp   $ffc0

0adf: 5f 92 08  jmp   $0892

0ae2: e4 3b     mov   a,$3b
0ae4: 5f 08 0a  jmp   $0a08

0ae7: e4 3c     mov   a,$3c
0ae9: 5f 08 0a  jmp   $0a08

0aec: e5 0b 08  mov   a,$080b
0aef: 5f 08 0a  jmp   $0a08

0af2: 8f 01 2f  mov   $2f,#$01
0af5: 3f fb 12  call  $12fb
0af8: fa 14 08  mov   ($08),($14)
0afb: fa 15 09  mov   ($09),($15)
0afe: 8f 01 0e  mov   $0e,#$01
0b01: 3f f0 0f  call  $0ff0
0b04: 3f fe 08  call  $08fe
0b07: 3f 65 09  call  $0965
0b0a: 3f c4 12  call  $12c4
0b0d: 5f 01 0a  jmp   $0a01

0b10: 8f 01 32  mov   $32,#$01
0b13: 3f a7 28  call  $28a7
0b16: fa 16 08  mov   ($08),($16)
0b19: fa 17 09  mov   ($09),($17)
0b1c: 8f 01 0e  mov   $0e,#$01
0b1f: 3f f0 0f  call  $0ff0
0b22: 3f fe 08  call  $08fe
0b25: 3f 65 09  call  $0965
0b28: 3f 50 28  call  $2850
0b2b: 5f 01 0a  jmp   $0a01

0b2e: e4 23     mov   a,$23
0b30: f0 02     beq   $0b34
0b32: c4 29     mov   $29,a
0b34: e4 24     mov   a,$24
0b36: f0 0a     beq   $0b42
0b38: c4 00     mov   $00,a
0b3a: 3f cf 28  call  $28cf
0b3d: 90 03     bcc   $0b42
0b3f: fa 00 2c  mov   ($2c),($00)
0b42: 5f 01 0a  jmp   $0a01

0b45: 8f 01 2f  mov   $2f,#$01
0b48: 3f fb 12  call  $12fb
0b4b: fa 14 08  mov   ($08),($14)
0b4e: fa 15 09  mov   ($09),($15)
0b51: 8f 00 0e  mov   $0e,#$00
0b54: 3f f0 0f  call  $0ff0
0b57: 3f 65 09  call  $0965
0b5a: 3f c4 12  call  $12c4
0b5d: 5f 01 0a  jmp   $0a01

0b60: 8f 01 32  mov   $32,#$01
0b63: 3f a7 28  call  $28a7
0b66: fa 16 08  mov   ($08),($16)
0b69: fa 17 09  mov   ($09),($17)
0b6c: 8f 00 0e  mov   $0e,#$00
0b6f: 3f f0 0f  call  $0ff0
0b72: 3f 65 09  call  $0965
0b75: 3f 50 28  call  $2850
0b78: 5f 01 0a  jmp   $0a01

0b7b: e5 40 01  mov   a,$0140
0b7e: 05 41 01  or    a,$0141
0b81: f0 19     beq   $0b9c
0b83: 8f 01 32  mov   $32,#$01
0b86: 3f a7 28  call  $28a7
0b89: 8f 01 2f  mov   $2f,#$01
0b8c: 3f fb 12  call  $12fb
0b8f: cd 07     mov   x,#$07
0b91: 8d 08     mov   y,#$08
0b93: 4f 24     pcall $24
0b95: 68 02     cmp   a,#$02
0b97: b0 f8     bcs   $0b91
0b99: 1d        dec   x
0b9a: 10 f5     bpl   $0b91
0b9c: 3f 9b 0f  call  $0f9b
0b9f: e8 00     mov   a,#$00
0ba1: c4 08     mov   $08,a
0ba3: c4 09     mov   $09,a
0ba5: c4 0e     mov   $0e,a
0ba7: 3f f0 0f  call  $0ff0
0baa: 5f 92 08  jmp   $0892

0bad: e2 29     set7  $29
0baf: 8f 01 2f  mov   $2f,#$01
0bb2: 3f fb 12  call  $12fb
0bb5: 3f 9b 0f  call  $0f9b
0bb8: e8 00     mov   a,#$00
0bba: c5 60 01  mov   $0160,a
0bbd: 5f 01 0a  jmp   $0a01

0bc0: e2 2c     set7  $2c
0bc2: 8f 01 32  mov   $32,#$01
0bc5: 3f a7 28  call  $28a7
0bc8: 5f 01 0a  jmp   $0a01

0bcb: e2 29     set7  $29
0bcd: e2 2c     set7  $2c
0bcf: 8f 01 32  mov   $32,#$01
0bd2: 3f a7 28  call  $28a7
0bd5: 8f 01 2f  mov   $2f,#$01
0bd8: 3f fb 12  call  $12fb
0bdb: 3f 9b 0f  call  $0f9b
0bde: e8 00     mov   a,#$00
0be0: c5 60 01  mov   $0160,a
0be3: 5f 01 0a  jmp   $0a01

0be6: e5 40 01  mov   a,$0140
0be9: 5f 08 0a  jmp   $0a08

0bec: e5 41 01  mov   a,$0141
0bef: 5f 08 0a  jmp   $0a08

0bf2: fa 23 30  mov   ($30),($23)
0bf5: 38 7f 30  and   $30,#$7f
0bf8: 8f 02 2f  mov   $2f,#$02
0bfb: 5f 01 0a  jmp   $0a01

0bfe: fa 23 33  mov   ($33),($23)
0c01: 38 7f 33  and   $33,#$7f
0c04: 8f 02 32  mov   $32,#$02
0c07: 5f 01 0a  jmp   $0a01

0c0a: fa 23 30  mov   ($30),($23)
0c0d: 8f 03 2f  mov   $2f,#$03
0c10: 5f 01 0a  jmp   $0a01

0c13: fa 23 30  mov   ($30),($23)
0c16: 8f 04 2f  mov   $2f,#$04
0c19: 5f 01 0a  jmp   $0a01

0c1c: fa 23 30  mov   ($30),($23)
0c1f: 8f 05 2f  mov   $2f,#$05
0c22: 5f 01 0a  jmp   $0a01

0c25: e4 23     mov   a,$23
0c27: 3f 38 09  call  $0938
0c2a: 5f 01 0a  jmp   $0a01

0c2d: 12 3a     clr0  $3a
0c2f: 13 23 07  bbc0  $23,$0c39
0c32: 02 3a     set0  $3a
0c34: 2f 03     bra   $0c39
0c36: 58 01 3a  eor   $3a,#$01
0c39: e4 3a     mov   a,$3a
0c3b: 28 01     and   a,#$01
0c3d: 5f 08 0a  jmp   $0a08

0c40: e4 38     mov   a,$38
0c42: 5f 08 0a  jmp   $0a08

0c45: fa 23 0a  mov   ($0a),($23)
0c48: fa 24 0b  mov   ($0b),($24)
0c4b: 5f 01 0a  jmp   $0a01

0c4e: e4 23     mov   a,$23
0c50: 8d 00     mov   y,#$00
0c52: d7 0a     mov   ($0a)+y,a
0c54: f7 0a     mov   a,($0a)+y
0c56: 5f 08 0a  jmp   $0a08

0c59: e4 23     mov   a,$23
0c5b: 8d 00     mov   y,#$00
0c5d: d7 0a     mov   ($0a)+y,a
0c5f: f7 0a     mov   a,($0a)+y
0c61: 3a 0a     incw  $0a
0c63: 5f 08 0a  jmp   $0a08

0c66: fa 23 0c  mov   ($0c),($23)
0c69: fa 24 0d  mov   ($0d),($24)
0c6c: 5f 01 0a  jmp   $0a01

0c6f: ba 23     movw  ya,$23
0c71: da 0e     movw  $0e,ya
0c73: ba 0a     movw  ya,$0a
0c75: 5a 0c     cmpw  ya,$0c
0c77: b0 27     bcs   $0ca0
0c79: eb 0f     mov   y,$0f
0c7b: d0 07     bne   $0c84
0c7d: f8 0e     mov   x,$0e
0c7f: d0 14     bne   $0c95
0c81: 5f 01 0a  jmp   $0a01

0c84: 8d 00     mov   y,#$00
0c86: f7 0c     mov   a,($0c)+y
0c88: d7 0a     mov   ($0a)+y,a
0c8a: fc        inc   y
0c8b: d0 f9     bne   $0c86
0c8d: ab 0d     inc   $0d
0c8f: ab 0b     inc   $0b
0c91: 8b 0f     dec   $0f
0c93: 2f e4     bra   $0c79
0c95: f7 0c     mov   a,($0c)+y
0c97: d7 0a     mov   ($0a)+y,a
0c99: fc        inc   y
0c9a: 1d        dec   x
0c9b: d0 f8     bne   $0c95
0c9d: 5f 01 0a  jmp   $0a01

0ca0: 7a 0e     addw  ya,$0e
0ca2: da 0a     movw  $0a,ya
0ca4: 1a 0a     decw  $0a
0ca6: ba 0c     movw  ya,$0c
0ca8: 7a 0e     addw  ya,$0e
0caa: da 0c     movw  $0c,ya
0cac: 1a 0c     decw  $0c
0cae: eb 0f     mov   y,$0f
0cb0: d0 07     bne   $0cb9
0cb2: eb 0e     mov   y,$0e
0cb4: d0 18     bne   $0cce
0cb6: 5f 01 0a  jmp   $0a01

0cb9: 8d 00     mov   y,#$00
0cbb: f7 0c     mov   a,($0c)+y
0cbd: d7 0a     mov   ($0a)+y,a
0cbf: 8b 0d     dec   $0d
0cc1: 8b 0b     dec   $0b
0cc3: dc        dec   y
0cc4: f7 0c     mov   a,($0c)+y
0cc6: d7 0a     mov   ($0a)+y,a
0cc8: fe fa     dbnz  y,$0cc4
0cca: 8b 0f     dec   $0f
0ccc: 2f e0     bra   $0cae
0cce: ba 0c     movw  ya,$0c
0cd0: 9a 0e     subw  ya,$0e
0cd2: da 0c     movw  $0c,ya
0cd4: ba 0a     movw  ya,$0a
0cd6: 9a 0e     subw  ya,$0e
0cd8: da 0a     movw  $0a,ya
0cda: eb 0e     mov   y,$0e
0cdc: f7 0c     mov   a,($0c)+y
0cde: d7 0a     mov   ($0a)+y,a
0ce0: fe fa     dbnz  y,$0cdc
0ce2: 5f 01 0a  jmp   $0a01

0ce5: ba 23     movw  ya,$23
0ce7: da 18     movw  $18,ya
0ce9: 5f 92 08  jmp   $0892

0cec: e4 19     mov   a,$19
0cee: eb 23     mov   y,$23
0cf0: f0 02     beq   $0cf4
0cf2: e4 18     mov   a,$18
0cf4: 5f 08 0a  jmp   $0a08

0cf7: ba 23     movw  ya,$23
0cf9: da 14     movw  $14,ya
0cfb: 3f c4 12  call  $12c4
0cfe: 5f 01 0a  jmp   $0a01

0d01: e4 15     mov   a,$15
0d03: eb 23     mov   y,$23
0d05: f0 02     beq   $0d09
0d07: e4 14     mov   a,$14
0d09: 5f 08 0a  jmp   $0a08

0d0c: ba 23     movw  ya,$23
0d0e: da 16     movw  $16,ya
0d10: 3f 50 28  call  $2850
0d13: 5f 01 0a  jmp   $0a01

0d16: e4 17     mov   a,$17
0d18: eb 23     mov   y,$23
0d1a: f0 02     beq   $0d1e
0d1c: e4 16     mov   a,$16
0d1e: 5f 08 0a  jmp   $0a08

0d21: e4 24     mov   a,$24
0d23: c5 5b 01  mov   $015b,a
0d26: 5f 92 08  jmp   $0892

0d29: e5 5b 01  mov   a,$015b
0d2c: 5f 08 0a  jmp   $0a08

0d2f: fa 24 1a  mov   ($1a),($24)
0d32: 5f 92 08  jmp   $0892

0d35: e4 1a     mov   a,$1a
0d37: 5f 08 0a  jmp   $0a08

0d3a: e8 00     mov   a,#$00
0d3c: c4 08     mov   $08,a
0d3e: c4 09     mov   $09,a
0d40: 8f 01 0e  mov   $0e,#$01
0d43: 3f f0 0f  call  $0ff0
0d46: 3f fe 08  call  $08fe
0d49: 3f 65 09  call  $0965
0d4c: 5f 01 0a  jmp   $0a01

0d4f: fa 23 08  mov   ($08),($23)
0d52: fa 24 09  mov   ($09),($24)
0d55: 3f 3f 10  call  $103f
0d58: b0 03     bcs   $0d5d
0d5a: 3f 65 09  call  $0965
0d5d: e8 00     mov   a,#$00
0d5f: c4 f5     mov   $f5,a
0d61: 5f 01 0a  jmp   $0a01

0d64: 8f 07 2f  mov   $2f,#$07
0d67: 5f 01 0a  jmp   $0a01

0d6a: fa 23 30  mov   ($30),($23)
0d6d: 8f 08 2f  mov   $2f,#$08
0d70: 5f 01 0a  jmp   $0a01

0d73: e4 23     mov   a,$23
0d75: d0 05     bne   $0d7c
0d77: 8f 09 2f  mov   $2f,#$09
0d7a: 2f 05     bra   $0d81
0d7c: 8f 0a 2f  mov   $2f,#$0a
0d7f: c4 30     mov   $30,a
0d81: 3f fe 08  call  $08fe
0d84: e4 2f     mov   a,$2f
0d86: d0 f9     bne   $0d81
0d88: 5f 01 0a  jmp   $0a01

0d8b: 8f 0c 2f  mov   $2f,#$0c
0d8e: fa 23 30  mov   ($30),($23)
0d91: fa 24 31  mov   ($31),($24)
0d94: 3f fb 12  call  $12fb
0d97: 5f 01 0a  jmp   $0a01

0d9a: e8 00     mov   a,#$00
0d9c: c5 f1 00  mov   $00f1,a
0d9f: c5 fa 00  mov   $00fa,a
0da2: c5 fb 00  mov   $00fb,a
0da5: c5 fc 00  mov   $00fc,a
0da8: c4 1d     mov   $1d,a
0daa: c4 1e     mov   $1e,a
0dac: c4 1f     mov   $1f,a
0dae: c4 20     mov   $20,a
0db0: 6f        ret

0db1: d4 1e     mov   $1e+x,a
0db3: f5 76 11  mov   a,$1176+x
0db6: fd        mov   y,a
0db7: 3f c8 0d  call  $0dc8
0dba: f4 1e     mov   a,$1e+x
0dbc: d5 fa 00  mov   $00fa+x,a
0dbf: dd        mov   a,y
0dc0: 04 1d     or    a,$1d
0dc2: c5 f1 00  mov   $00f1,a
0dc5: c4 1d     mov   $1d,a
0dc7: 6f        ret

0dc8: 48 ff     eor   a,#$ff
0dca: 24 1d     and   a,$1d
0dcc: c5 f1 00  mov   $00f1,a
0dcf: c4 1d     mov   $1d,a
0dd1: 6f        ret

0dd2: 40        setp
0dd3: 8d 18     mov   y,#$18
0dd5: cd 40     mov   x,#$40
0dd7: e8 00     mov   a,#$00
0dd9: af        mov   (x)+,a
0dda: fe fd     dbnz  y,$0dd9
0ddc: 8f 20 58  mov   $58,#$20
0ddf: e8 e0     mov   a,#$e0
0de1: 8d 6c     mov   y,#$6c
0de3: 4f 0c     pcall $0c
0de5: 3f 77 0f  call  $0f77
0de8: cd 07     mov   x,#$07
0dea: e8 00     mov   a,#$00
0dec: 8d 01     mov   y,#$01
0dee: 4f 00     pcall $00
0df0: 8d 00     mov   y,#$00
0df2: 4f 00     pcall $00
0df4: 1d        dec   x
0df5: 10 f5     bpl   $0dec
0df7: e5 0c 08  mov   a,$080c
0dfa: c5 59 01  mov   $0159,a
0dfd: 8d 0c     mov   y,#$0c
0dff: 4f 0c     pcall $0c
0e01: e5 0d 08  mov   a,$080d
0e04: c5 5a 01  mov   $015a,a
0e07: 8d 1c     mov   y,#$1c
0e09: 4f 0c     pcall $0c
0e0b: e8 00     mov   a,#$00
0e0d: 8d 3d     mov   y,#$3d
0e0f: 4f 0c     pcall $0c
0e11: 8d 2d     mov   y,#$2d
0e13: 4f 0c     pcall $0c
0e15: e8 ff     mov   a,#$ff
0e17: 3f 5c 11  call  $115c
0e1a: e5 5b 01  mov   a,$015b
0e1d: 8d 5d     mov   y,#$5d
0e1f: 4f 0c     pcall $0c
0e21: 20        clrp
0e22: 6f        ret

0e23: 40        setp
0e24: 3f 8a 0e  call  $0e8a
0e27: e4 58     mov   a,$58
0e29: 8d 6c     mov   y,#$6c
0e2b: 4f 0c     pcall $0c
0e2d: e4 41     mov   a,$41
0e2f: 48 ff     eor   a,#$ff
0e31: 24 4e     and   a,$4e
0e33: c4 5d     mov   $5d,a
0e35: e4 41     mov   a,$41
0e37: 24 4f     and   a,$4f
0e39: 04 5d     or    a,$5d
0e3b: 8d 3d     mov   y,#$3d
0e3d: 4f 0c     pcall $0c
0e3f: e4 41     mov   a,$41
0e41: 48 ff     eor   a,#$ff
0e43: 24 4a     and   a,$4a
0e45: c4 5d     mov   $5d,a
0e47: e4 41     mov   a,$41
0e49: 24 4b     and   a,$4b
0e4b: 04 5d     or    a,$5d
0e4d: 8d 4c     mov   y,#$4c
0e4f: 4f 0c     pcall $0c
0e51: 8f 00 4a  mov   $4a,#$00
0e54: 8f 00 4b  mov   $4b,#$00
0e57: 20        clrp
0e58: 6f        ret

0e59: 40        setp
0e5a: 8f 00 5d  mov   $5d,#$00
0e5d: e4 41     mov   a,$41
0e5f: 48 ff     eor   a,#$ff
0e61: 24 4c     and   a,$4c
0e63: 2f 06     bra   $0e6b
0e65: 40        setp
0e66: 8f 01 5d  mov   $5d,#$01
0e69: e4 4d     mov   a,$4d
0e6b: f0 1b     beq   $0e88
0e6d: c4 5e     mov   $5e,a
0e6f: cd 07     mov   x,#$07
0e71: 0b 5e     asl   $5e
0e73: 90 0c     bcc   $0e81
0e75: e8 9f     mov   a,#$9f
0e77: 8d 07     mov   y,#$07
0e79: 4f 00     pcall $00
0e7b: e8 00     mov   a,#$00
0e7d: 8d 05     mov   y,#$05
0e7f: 4f 00     pcall $00
0e81: 1d        dec   x
0e82: 10 ed     bpl   $0e71
0e84: f8 5d     mov   x,$5d
0e86: d4 4c     mov   $4c+x,a
0e88: 20        clrp
0e89: 6f        ret

0e8a: e4 5f     mov   a,$5f
0e8c: 1c        asl   a
0e8d: 5d        mov   x,a
0e8e: 1f 91 0e  jmp   ($0e91+x)

0e91: dw $0e9d  ;
0e93: dw $0eab  ;
0e95: dw $0eaa  ;
0e97: dw $0f31  ;
0e99: dw $0eaa  ;
0e9b: dw $0f4a  ;

0e9d: 3f 9b 0f  call  $0f9b
0ea0: 8f 00 60  mov   $60,#$00
0ea3: e4 61     mov   a,$61
0ea5: d0 03     bne   $0eaa
0ea7: 8f 02 5f  mov   $5f,#$02
0eaa: 6f        ret

0eab: 8f 01 60  mov   $60,#$01
0eae: 8d 7d     mov   y,#$7d
0eb0: 4f 2e     pcall $2e
0eb2: 28 0f     and   a,#$0f
0eb4: 64 55     cmp   a,$55
0eb6: f0 25     beq   $0edd
0eb8: 48 ff     eor   a,#$ff
0eba: f8 61     mov   x,$61
0ebc: 10 03     bpl   $0ec1
0ebe: 60        clrc
0ebf: 84 61     adc   a,$61
0ec1: c4 61     mov   $61,a
0ec3: 3f 9b 0f  call  $0f9b
0ec6: e4 55     mov   a,$55
0ec8: 8d 7d     mov   y,#$7d
0eca: 4f 0c     pcall $0c
0ecc: 3f fa 0e  call  $0efa
0ecf: 8d 6d     mov   y,#$6d
0ed1: 4f 0c     pcall $0c
0ed3: 3f 0a 0f  call  $0f0a
0ed6: 8f 02 5f  mov   $5f,#$02
0ed9: e5 fd 00  mov   a,$00fd
0edc: 6f        ret

0edd: fa 57 5e  mov   ($5e),($57)
0ee0: 3f fa 0e  call  $0efa
0ee3: 64 5e     cmp   a,$5e
0ee5: f0 04     beq   $0eeb
0ee7: e4 55     mov   a,$55
0ee9: 2f cd     bra   $0eb8
0eeb: e4 61     mov   a,$61
0eed: 30 f8     bmi   $0ee7
0eef: 3f 0a 0f  call  $0f0a
0ef2: e8 00     mov   a,#$00
0ef4: 8d 0d     mov   y,#$0d
0ef6: 4f 0c     pcall $0c
0ef8: 2f 3e     bra   $0f38
0efa: e4 55     mov   a,$55
0efc: 1c        asl   a
0efd: 1c        asl   a
0efe: 1c        asl   a
0eff: c4 5d     mov   $5d,a
0f01: e5 1a 00  mov   a,$001a
0f04: 80        setc
0f05: a4 5d     sbc   a,$5d
0f07: c4 57     mov   $57,a
0f09: 6f        ret

0f0a: e4 56     mov   a,$56
0f0c: 1c        asl   a
0f0d: 1c        asl   a
0f0e: 1c        asl   a
0f0f: 8d 00     mov   y,#$00
0f11: 20        clrp
0f12: 7a 1b     addw  ya,$1b
0f14: 40        setp
0f15: da 5d     movw  $5d,ya
0f17: cd 07     mov   x,#$07
0f19: 7d        mov   a,x
0f1a: fd        mov   y,a
0f1b: f7 5d     mov   a,($5d)+y
0f1d: 2d        push  a
0f1e: f5 29 0f  mov   a,$0f29+x
0f21: fd        mov   y,a
0f22: ae        pop   a
0f23: 4f 0c     pcall $0c
0f25: 1d        dec   x
0f26: 10 f1     bpl   $0f19
0f28: 6f        ret

; echo FIR dsp regs
0f29: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0f31: e4 60     mov   a,$60
0f33: d0 03     bne   $0f38
0f35: 5f 9d 0e  jmp   $0e9d

0f38: b2 58     clr5  $58
0f3a: e4 58     mov   a,$58
0f3c: 8d 6c     mov   y,#$6c
0f3e: 4f 0c     pcall $0c
0f40: e4 55     mov   a,$55
0f42: bc        inc   a
0f43: c4 61     mov   $61,a
0f45: 8f 04 5f  mov   $5f,#$04
0f48: 2f 8f     bra   $0ed9
0f4a: 8f 00 61  mov   $61,#$00
0f4d: e4 60     mov   a,$60
0f4f: d0 03     bne   $0f54
0f51: 5f 9d 0e  jmp   $0e9d

0f54: e4 52     mov   a,$52
0f56: 8d 2c     mov   y,#$2c
0f58: 4f 0c     pcall $0c
0f5a: e4 53     mov   a,$53
0f5c: 8d 3c     mov   y,#$3c
0f5e: 4f 0c     pcall $0c
0f60: e4 54     mov   a,$54
0f62: 8d 0d     mov   y,#$0d
0f64: 4f 0c     pcall $0c
0f66: e4 41     mov   a,$41
0f68: 48 ff     eor   a,#$ff
0f6a: 24 50     and   a,$50
0f6c: c4 5d     mov   $5d,a
0f6e: e4 51     mov   a,$51
0f70: 04 5d     or    a,$5d
0f72: 8d 4d     mov   y,#$4d
0f74: 5f 0c ff  jmp   $ff0c

0f77: 20        clrp
0f78: e8 80     mov   a,#$80
0f7a: cd 00     mov   x,#$00
0f7c: 3f b1 0d  call  $0db1
0f7f: 40        setp
0f80: 8f 00 60  mov   $60,#$00
0f83: 8d 7d     mov   y,#$7d
0f85: 4f 2e     pcall $2e
0f87: 28 0f     and   a,#$0f
0f89: 8f 01 55  mov   $55,#$01
0f8c: 5f b8 0e  jmp   $0eb8

0f8f: e8 01     mov   a,#$01
0f91: c5 5f 01  mov   $015f,a
0f94: 6f        ret

0f95: e8 00     mov   a,#$00
0f97: c5 5f 01  mov   $015f,a
0f9a: 6f        ret

0f9b: e8 00     mov   a,#$00
0f9d: 8d 4d     mov   y,#$4d
0f9f: 4f 0c     pcall $0c
0fa1: 8d 2c     mov   y,#$2c
0fa3: 4f 0c     pcall $0c
0fa5: 8d 3c     mov   y,#$3c
0fa7: 4f 0c     pcall $0c
0fa9: 8d 0d     mov   y,#$0d
0fab: 4f 0c     pcall $0c
0fad: e8 20     mov   a,#$20
0faf: 0e 58 01  tset1 $0158
0fb2: e5 58 01  mov   a,$0158
0fb5: 8d 6c     mov   y,#$6c
0fb7: 5f 0c ff  jmp   $ff0c

0fba: e5 fd 00  mov   a,$00fd
0fbd: 28 0f     and   a,#$0f
0fbf: f0 1f     beq   $0fe0
0fc1: c4 0e     mov   $0e,a
0fc3: e5 61 01  mov   a,$0161
0fc6: f0 18     beq   $0fe0
0fc8: 30 09     bmi   $0fd3
0fca: 80        setc
0fcb: a4 0e     sbc   a,$0e
0fcd: f0 09     beq   $0fd8
0fcf: 30 07     bmi   $0fd8
0fd1: 2f 0a     bra   $0fdd
0fd3: 60        clrc
0fd4: 84 0e     adc   a,$0e
0fd6: 30 05     bmi   $0fdd
0fd8: ac 5f 01  inc   $015f
0fdb: e8 00     mov   a,#$00
0fdd: c5 61 01  mov   $0161,a
0fe0: 6f        ret

0fe1: 40        setp
0fe2: 28 1f     and   a,#$1f
0fe4: c4 5d     mov   $5d,a
0fe6: e4 58     mov   a,$58
0fe8: 28 e0     and   a,#$e0
0fea: 04 5d     or    a,$5d
0fec: c4 58     mov   $58,a
0fee: 20        clrp
0fef: 6f        ret

0ff0: 8f aa f4  mov   $f4,#$aa
0ff3: 8f bb f5  mov   $f5,#$bb
0ff6: 8d 32     mov   y,#$32
0ff8: fe fe     dbnz  y,$0ff8
0ffa: e8 cc     mov   a,#$cc
0ffc: 13 0e 02  bbc0  $0e,$1001
0fff: 4f 42     pcall $42
1001: 64 f4     cmp   a,$f4
1003: d0 f7     bne   $0ffc
1005: 69 09 08  cmp   ($08),($09)
1008: f0 27     beq   $1031
100a: 2f 2b     bra   $1037
100c: 13 0e 02  bbc0  $0e,$1011
100f: 4f 42     pcall $42
1011: eb f4     mov   y,$f4
1013: d0 f7     bne   $100c
1015: 7e f4     cmp   y,$f4
1017: d0 12     bne   $102b
1019: e4 f5     mov   a,$f5
101b: 13 0e 02  bbc0  $0e,$1020
101e: 4f 42     pcall $42
1020: cb f4     mov   $f4,y
1022: d7 08     mov   ($08)+y,a
1024: fc        inc   y
1025: d0 ee     bne   $1015
1027: ab 09     inc   $09
1029: 2f ea     bra   $1015
102b: 10 e8     bpl   $1015
102d: 7e f4     cmp   y,$f4
102f: 10 e4     bpl   $1015
1031: fa f6 08  mov   ($08),($f6)
1034: fa f7 09  mov   ($09),($f7)
1037: fa f4 f4  mov   ($f4),($f4)
103a: e4 f5     mov   a,$f5
103c: d0 ce     bne   $100c
103e: 6f        ret

103f: cd 01     mov   x,#$01
1041: 4f 35     pcall $35
1043: c4 0e     mov   $0e,a
1045: fd        mov   y,a
1046: f0 06     beq   $104e
1048: 68 7f     cmp   a,#$7f
104a: d0 f5     bne   $1041
104c: 80        setc
104d: 6f        ret

104e: e4 f6     mov   a,$f6
1050: d7 08     mov   ($08)+y,a
1052: fc        inc   y
1053: e4 f7     mov   a,$f7
1055: fa 0e f5  mov   ($f5),($0e)
1058: d7 08     mov   ($08)+y,a
105a: fc        inc   y
105b: f0 10     beq   $106d
105d: e4 f5     mov   a,$f5
105f: 64 f5     cmp   a,$f5
1061: d0 fa     bne   $105d
1063: c4 0e     mov   $0e,a
1065: 7e 0e     cmp   y,$0e
1067: f0 e5     beq   $104e
1069: 10 f2     bpl   $105d
106b: 60        clrc
106c: 6f        ret

106d: ab 09     inc   $09
106f: 2f ec     bra   $105d
1071: 8d 04     mov   y,#$04
1073: cf        mul   ya
1074: 7a 18     addw  ya,$18
1076: 6f        ret

1077: 8d 03     mov   y,#$03
1079: f7 04     mov   a,($04)+y
107b: 8d 00     mov   y,#$00
107d: 5d        mov   x,a
107e: 10 01     bpl   $1081
1080: dc        dec   y
1081: 7a 06     addw  ya,$06
1083: 30 08     bmi   $108d
1085: da 06     movw  $06,ya
1087: dd        mov   a,y
1088: 60        clrc
1089: 84 00     adc   a,$00
108b: 2f 17     bra   $10a4
108d: 48 ff     eor   a,#$ff
108f: c4 06     mov   $06,a
1091: dd        mov   a,y
1092: 48 ff     eor   a,#$ff
1094: c4 07     mov   $07,a
1096: 3a 06     incw  $06
1098: e4 00     mov   a,$00
109a: 80        setc
109b: a4 07     sbc   a,$07
109d: 8f ff 07  mov   $07,#$ff
10a0: 10 02     bpl   $10a4
10a2: e8 00     mov   a,#$00
10a4: 8d 00     mov   y,#$00
10a6: cd 0c     mov   x,#$0c
10a8: 9e        div   ya,x
10a9: da 00     movw  $00,ya
10ab: 68 05     cmp   a,#$05
10ad: 90 03     bcc   $10b2
10af: 8f 05 00  mov   $00,#$05
10b2: f8 01     mov   x,$01
10b4: e4 07     mov   a,$07
10b6: 30 0b     bmi   $10c3
10b8: f5 2f 12  mov   a,$122f+x
10bb: eb 06     mov   y,$06
10bd: cf        mul   ya
10be: dd        mov   a,y
10bf: 8d 00     mov   y,#$00
10c1: 2f 0e     bra   $10d1
10c3: f5 2e 12  mov   a,$122e+x
10c6: eb 06     mov   y,$06
10c8: cf        mul   ya
10c9: dd        mov   a,y
10ca: f0 05     beq   $10d1
10cc: 48 ff     eor   a,#$ff
10ce: bc        inc   a
10cf: 8d ff     mov   y,#$ff
10d1: da 06     movw  $06,ya
10d3: f8 01     mov   x,$01
10d5: f5 22 12  mov   a,$1222+x
10d8: fd        mov   y,a
10d9: f5 16 12  mov   a,$1216+x
10dc: 7a 06     addw  ya,$06
10de: cb 07     mov   $07,y
10e0: 0b 00     asl   $00
10e2: f8 00     mov   x,$00
10e4: 1f e7 10  jmp   ($10e7+x)

10e7: dw $10f3  ;
10e9: dw $10f6  ;
10eb: dw $10f9  ;
10ed: dw $10fc  ;
10ef: dw $10ff  ;
10f1: dw $1102  ;

10f3: 4b 07     lsr   $07
10f5: 7c        ror   a
10f6: 4b 07     lsr   $07
10f8: 7c        ror   a
10f9: 4b 07     lsr   $07
10fb: 7c        ror   a
10fc: 4b 07     lsr   $07
10fe: 7c        ror   a
10ff: 4b 07     lsr   $07
1101: 7c        ror   a
1102: c4 06     mov   $06,a
1104: 8d 00     mov   y,#$00
1106: f7 04     mov   a,($04)+y
1108: c4 01     mov   $01,a
110a: fc        inc   y
110b: f7 04     mov   a,($04)+y
110d: c4 00     mov   $00,a
110f: eb 07     mov   y,$07
1111: cf        mul   ya
1112: da 04     movw  $04,ya
1114: e4 00     mov   a,$00
1116: eb 06     mov   y,$06
1118: cf        mul   ya
1119: cb 00     mov   $00,y
111b: e4 01     mov   a,$01
111d: eb 06     mov   y,$06
111f: cf        mul   ya
1120: 7a 04     addw  ya,$04
1122: da 04     movw  $04,ya
1124: e4 01     mov   a,$01
1126: eb 07     mov   y,$07
1128: cf        mul   ya
1129: fd        mov   y,a
112a: e4 00     mov   a,$00
112c: 7a 04     addw  ya,$04
112e: 6f        ret

112f: f8 01     mov   x,$01
1131: f5 5a 12  mov   a,$125a+x
1134: c4 01     mov   $01,a
1136: fd        mov   y,a
1137: f8 00     mov   x,$00
1139: f5 3b 12  mov   a,$123b+x
113c: 1c        asl   a
113d: cf        mul   ya
113e: dd        mov   a,y
113f: 13 02 03  bbc0  $02,$1145
1142: 48 ff     eor   a,#$ff
1144: bc        inc   a
1145: 2d        push  a
1146: e8 1e     mov   a,#$1e
1148: 80        setc
1149: a4 00     sbc   a,$00
114b: 5d        mov   x,a
114c: f5 3b 12  mov   a,$123b+x
114f: 1c        asl   a
1150: eb 01     mov   y,$01
1152: cf        mul   ya
1153: dd        mov   a,y
1154: 33 02 03  bbc1  $02,$115a
1157: 48 ff     eor   a,#$ff
1159: bc        inc   a
115a: ee        pop   y
115b: 6f        ret

115c: 8d 5c     mov   y,#$5c
115e: 4f 0c     pcall $0c
1160: 8d 0b     mov   y,#$0b
1162: fe fe     dbnz  y,$1162
1164: e8 00     mov   a,#$00
1166: 8d 5c     mov   y,#$5c
1168: 5f 0c ff  jmp   $ff0c

116b: 48 75     eor   a,#$75
116d: 64 73     cmp   a,$73
116f: 6f        ret

1170: 6e 20 53  dbnz  $20,$11c6
1173: 6f        ret

1174: db $66
1175: db $74
1176: db $01,$02,$04,$08,$10,$20,$40,$80
117e: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo FIR table
1186: db $7f,$00,$00,$00,$00,$00,$00,$00
118e: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1196: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
119e: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
11a6: db $23,$ca,$f8,$2c,$eb,$08,$fb,$02
11ae: db $04,$f9,$f8,$27,$27,$f8,$f9,$04
11b6: db $14,$ff,$da,$1d,$1f,$e0,$ff,$0c
11be: db $1b,$db,$33,$f2,$fd,$0e,$fc,$fd
11c6: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
11ce: db $29,$b9,$fd,$24,$0d,$f7,$fa,$00
11d6: db $35,$a8,$ff,$1a,$12,$04,$f8,$fb
11de: db $1c,$cc,$2f,$ec,$f8,$12,$00,$fa
11e6: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
11ee: db $fa,$00,$1c,$29,$29,$1c,$00,$fa
11f6: db $fe,$fd,$16,$34,$34,$16,$fd,$fc
11fe: db $fe,$fb,$10,$3a,$3a,$10,$fb,$fe
1206: db $48,$26,$0a,$dd,$08,$0d,$f9,$00
120e: db $38,$48,$14,$e6,$01,$0a,$fe,$fe

1216: db $5f,$de,$65,$f4,$8c,$2c,$d6,$8b,$4a,$14,$ea,$cd
1222: db $08,$08,$09,$09,$0a,$0b,$0b,$0c,$0d,$0e,$0e,$0f

122e: db $79,$7f,$87,$8f,$98,$a0,$aa,$b5,$bf,$ca,$d6,$e3,$f1

; panpot - volume balance table
123b: db $00,$07,$0d,$14,$1a,$21,$27,$2e
1143: db $34,$3a,$40,$45,$4b,$50,$55,$5a
114b: db $5e,$63,$67,$6b,$6e,$71,$74,$77
1153: db $79,$7b,$7c,$7d,$7e,$7f,$7f

125a: db $00,$01,$01,$02,$02,$02,$02,$02
1262: db $02,$02,$02,$03,$03,$03,$03,$03
126a: db $03,$04,$04,$04,$04,$05,$05,$05
1272: db $05,$06,$06,$06,$07,$07,$08,$08
127a: db $09,$09,$0a,$0a,$0b,$0b,$0c,$0d
1282: db $0e,$0e,$0f,$10,$11,$12,$13,$14
128a: db $15,$17,$18,$1a,$1b,$1d,$1e,$20
1292: db $22,$24,$26,$28,$2b,$2d,$30,$33
129a: db $36,$39,$3d,$40,$44,$48,$4c,$51
12a2: db $56,$5b,$60,$66,$6c,$72,$79,$80

; tempo - bpm to time table (sort of)
12aa: db $00,$02,$04,$05,$07,$09,$0b,$0d
12b2: db $0e,$10,$12,$14,$16,$17,$19,$1b
12ba: db $1d,$1f,$21,$22,$24,$26,$28,$2a
12c2: db $2b,$2d

12c4: cd 07     mov   x,#$07
12c6: e8 00     mov   a,#$00
12c8: d4 ad     mov   $ad+x,a
12ca: 1d        dec   x
12cb: 10 fb     bpl   $12c8
12cd: c4 8c     mov   $8c,a
12cf: fd        mov   y,a
12d0: f7 14     mov   a,($14)+y
12d2: c4 3d     mov   $3d,a
12d4: fc        inc   y
12d5: f7 14     mov   a,($14)+y
12d7: c4 3e     mov   $3e,a
12d9: e8 ff     mov   a,#$ff
12db: 8d 2f     mov   y,#$2f
12dd: 5a 14     cmpw  ya,$14
12df: b0 17     bcs   $12f8
12e1: e8 ff     mov   a,#$ff
12e3: 8d fe     mov   y,#$fe
12e5: 5a 14     cmpw  ya,$14
12e7: 90 0f     bcc   $12f8
12e9: 8d 00     mov   y,#$00
12eb: f7 3d     mov   a,($3d)+y
12ed: fc        inc   y
12ee: 17 3d     or    a,($3d)+y
12f0: f0 03     beq   $12f5
12f2: fc        inc   y
12f3: d0 f6     bne   $12eb
12f5: dd        mov   a,y
12f6: 5c        lsr   a
12f7: 6f        ret

12f8: e8 00     mov   a,#$00
12fa: 6f        ret

12fb: 3f 38 13  call  $1338
12fe: b0 37     bcs   $1337
1300: 3f 46 15  call  $1546
1303: 53 bd 0c  bbc2  $bd,$1312
1306: e5 5f 01  mov   a,$015f
1309: 68 05     cmp   a,#$05
130b: d0 2a     bne   $1337
130d: 52 bd     clr2  $bd
130f: 5f 6b 23  jmp   $236b

1312: 3f 9b 17  call  $179b
1315: 8f 07 49  mov   $49,#$07
1318: f8 49     mov   x,$49
131a: f4 ad     mov   a,$ad+x
131c: 10 0f     bpl   $132d
131e: 3f a2 17  call  $17a2
1321: 3f 52 1e  call  $1e52
1324: 3f b0 1e  call  $1eb0
1327: 3f 5f 1f  call  $1f5f
132a: 3f 05 23  call  $2305
132d: 8b 49     dec   $49
132f: 10 e7     bpl   $1318
1331: 43 bd 03  bbs2  $bd,$1337
1334: 5f 6b 23  jmp   $236b

1337: 6f        ret

1338: e4 29     mov   a,$29
133a: 30 10     bmi   $134c
133c: e2 29     set7  $29
133e: 9c        dec   a
133f: 3f 4e 13  call  $134e
1342: e8 ff     mov   a,#$ff
1344: c5 4c 01  mov   $014c,a
1347: 8f 00 8a  mov   $8a,#$00
134a: 80        setc
134b: 6f        ret

134c: 60        clrc
134d: 6f        ret

134e: 1c        asl   a
134f: fd        mov   y,a
1350: f7 3d     mov   a,($3d)+y
1352: c4 04     mov   $04,a
1354: fc        inc   y
1355: f7 3d     mov   a,($3d)+y
1357: c4 05     mov   $05,a
1359: 8d 02     mov   y,#$02
135b: f7 14     mov   a,($14)+y
135d: c4 3f     mov   $3f,a
135f: fc        inc   y
1360: f7 14     mov   a,($14)+y
1362: c4 40     mov   $40,a
1364: fc        inc   y
1365: f7 14     mov   a,($14)+y
1367: c4 41     mov   $41,a
1369: fc        inc   y
136a: f7 14     mov   a,($14)+y
136c: c4 42     mov   $42,a
136e: fc        inc   y
136f: f7 14     mov   a,($14)+y
1371: c4 43     mov   $43,a
1373: fc        inc   y
1374: f7 14     mov   a,($14)+y
1376: c4 44     mov   $44,a
1378: fc        inc   y
1379: f7 14     mov   a,($14)+y
137b: c4 45     mov   $45,a
137d: fc        inc   y
137e: f7 14     mov   a,($14)+y
1380: c4 46     mov   $46,a
1382: fc        inc   y
1383: f7 14     mov   a,($14)+y
1385: c4 47     mov   $47,a
1387: fc        inc   y
1388: f7 14     mov   a,($14)+y
138a: c4 48     mov   $48,a
138c: e8 02     mov   a,#$02
138e: c4 bd     mov   $bd,a
1390: 3f 5d 09  call  $095d
1393: 8d ff     mov   y,#$ff
1395: fc        inc   y
1396: f7 04     mov   a,($04)+y
1398: fc        inc   y
1399: 1c        asl   a
139a: 5d        mov   x,a
139b: 1f 9e 13  jmp   ($139e+x)

139e: dw $1545  ;
13a0: dw $13b2  ;
13a2: dw $1473  ;
13a4: dw $1487  ;
13a6: dw $149f  ;
13a8: dw $14ac  ;
13aa: dw $14c4  ;
13ac: dw $14d1  ;
13ae: dw $152e  ;
13b0: dw $1537  ;

13b2: f7 04     mov   a,($04)+y
13b4: c5 40 01  mov   $0140,a
13b7: c4 00     mov   $00,a
13b9: cd 00     mov   x,#$00
13bb: e8 00     mov   a,#$00
13bd: d4 ad     mov   $ad+x,a
13bf: d4 b5     mov   $b5+x,a
13c1: d5 42 01  mov   $0142+x,a
13c4: 4b 00     lsr   $00
13c6: 90 73     bcc   $143b
13c8: fc        inc   y
13c9: f7 04     mov   a,($04)+y
13cb: d5 01 02  mov   $0201+x,a
13ce: d5 4a 02  mov   $024a+x,a
13d1: fc        inc   y
13d2: f7 04     mov   a,($04)+y
13d4: d5 09 02  mov   $0209+x,a
13d7: d5 52 02  mov   $0252+x,a
13da: e8 00     mov   a,#$00
13dc: d5 a4 03  mov   $03a4+x,a
13df: d5 cc 02  mov   $02cc+x,a
13e2: d5 16 03  mov   $0316+x,a
13e5: d5 c4 02  mov   $02c4+x,a
13e8: d5 6e 03  mov   $036e+x,a
13eb: d5 93 02  mov   $0293+x,a
13ee: d5 39 02  mov   $0239+x,a
13f1: d5 11 02  mov   $0211+x,a
13f4: d4 9d     mov   $9d+x,a
13f6: d4 a5     mov   $a5+x,a
13f8: d4 8d     mov   $8d+x,a
13fa: d4 95     mov   $95+x,a
13fc: d5 ac 02  mov   $02ac+x,a
13ff: d5 7e 03  mov   $037e+x,a
1402: bc        inc   a
1403: d5 21 02  mov   $0221+x,a
1406: e8 00     mov   a,#$00
1408: d5 42 02  mov   $0242+x,a
140b: e8 02     mov   a,#$02
140d: d5 19 02  mov   $0219+x,a
1410: d5 06 03  mov   $0306+x,a
1413: e8 08     mov   a,#$08
1415: d5 31 02  mov   $0231+x,a
1418: e8 0f     mov   a,#$0f
141a: d5 7b 02  mov   $027b+x,a
141d: e8 48     mov   a,#$48
141f: d5 73 02  mov   $0273+x,a
1422: e8 78     mov   a,#$78
1424: d5 9c 02  mov   $029c+x,a
1427: d5 a4 02  mov   $02a4+x,a
142a: e8 7f     mov   a,#$7f
142c: d5 83 02  mov   $0283+x,a
142f: e8 ff     mov   a,#$ff
1431: d5 5a 02  mov   $025a+x,a
1434: e8 80     mov   a,#$80
1436: d5 8b 02  mov   $028b+x,a
1439: d4 ad     mov   $ad+x,a
143b: 3d        inc   x
143c: c8 08     cmp   x,#$08
143e: b0 03     bcs   $1443
1440: 5f bb 13  jmp   $13bb

1443: 13 3a 02  bbc0  $3a,$1448
1446: 62 bd     set3  $bd
1448: 6d        push  y
1449: e8 78     mov   a,#$78
144b: c5 00 02  mov   $0200,a
144e: 3f 38 09  call  $0938
1451: e8 7f     mov   a,#$7f
1453: c5 72 02  mov   $0272,a
1456: c5 a1 03  mov   $03a1,a
1459: e8 00     mov   a,#$00
145b: c5 9b 02  mov   $029b,a
145e: c5 dc 02  mov   $02dc,a
1461: c5 dd 02  mov   $02dd,a
1464: c4 8c     mov   $8c,a
1466: c5 41 02  mov   $0241,a
1469: c5 9e 03  mov   $039e,a
146c: c5 a2 03  mov   $03a2,a
146f: ee        pop   y
1470: 5f 95 13  jmp   $1395

1473: f7 04     mov   a,($04)+y
1475: 28 03     and   a,#$03
1477: c4 00     mov   $00,a
1479: 38 fc bd  and   $bd,#$fc
147c: 09 00 bd  or    ($bd),($00)
147f: 6d        push  y
1480: 3f 5d 09  call  $095d
1483: ee        pop   y
1484: 5f 95 13  jmp   $1395

1487: f7 04     mov   a,($04)+y
1489: 5d        mov   x,a
148a: dd        mov   a,y
148b: bc        inc   a
148c: 8d 00     mov   y,#$00
148e: 7a 04     addw  ya,$04
1490: da 3f     movw  $3f,ya
1492: da 04     movw  $04,ya
1494: 8d 04     mov   y,#$04
1496: 7d        mov   a,x
1497: cf        mul   ya
1498: 7a 04     addw  ya,$04
149a: da 04     movw  $04,ya
149c: 5f 93 13  jmp   $1393

149f: f7 04     mov   a,($04)+y
14a1: 5d        mov   x,a
14a2: dd        mov   a,y
14a3: bc        inc   a
14a4: 8d 00     mov   y,#$00
14a6: 7a 04     addw  ya,$04
14a8: da 41     movw  $41,ya
14aa: 2f e6     bra   $1492
14ac: f7 04     mov   a,($04)+y
14ae: 5d        mov   x,a
14af: dd        mov   a,y
14b0: bc        inc   a
14b1: 8d 00     mov   y,#$00
14b3: 7a 04     addw  ya,$04
14b5: da 43     movw  $43,ya
14b7: da 04     movw  $04,ya
14b9: 7d        mov   a,x
14ba: 1c        asl   a
14bb: 8d 00     mov   y,#$00
14bd: 7a 04     addw  ya,$04
14bf: da 04     movw  $04,ya
14c1: 5f 93 13  jmp   $1393

14c4: f7 04     mov   a,($04)+y
14c6: 5d        mov   x,a
14c7: dd        mov   a,y
14c8: bc        inc   a
14c9: 8d 00     mov   y,#$00
14cb: 7a 04     addw  ya,$04
14cd: da 45     movw  $45,ya
14cf: 2f e6     bra   $14b7
14d1: f7 04     mov   a,($04)+y
14d3: f0 2e     beq   $1503
14d5: cd 00     mov   x,#$00
14d7: f5 58 08  mov   a,$0858+x
14da: c5 52 01  mov   $0152,a
14dd: 3d        inc   x
14de: f5 58 08  mov   a,$0858+x
14e1: c5 53 01  mov   $0153,a
14e4: 3d        inc   x
14e5: f5 58 08  mov   a,$0858+x
14e8: c5 55 01  mov   $0155,a
14eb: 3d        inc   x
14ec: f5 58 08  mov   a,$0858+x
14ef: c5 54 01  mov   $0154,a
14f2: 3d        inc   x
14f3: f5 58 08  mov   a,$0858+x
14f6: c5 56 01  mov   $0156,a
14f9: 3d        inc   x
14fa: f5 58 08  mov   a,$0858+x
14fd: c4 8c     mov   $8c,a
14ff: 82 bd     set4  $bd
1501: 2f 23     bra   $1526
1503: fc        inc   y
1504: f7 04     mov   a,($04)+y
1506: c5 52 01  mov   $0152,a
1509: fc        inc   y
150a: f7 04     mov   a,($04)+y
150c: c5 53 01  mov   $0153,a
150f: fc        inc   y
1510: f7 04     mov   a,($04)+y
1512: c5 55 01  mov   $0155,a
1515: fc        inc   y
1516: f7 04     mov   a,($04)+y
1518: c5 54 01  mov   $0154,a
151b: fc        inc   y
151c: f7 04     mov   a,($04)+y
151e: c5 56 01  mov   $0156,a
1521: fc        inc   y
1522: f7 04     mov   a,($04)+y
1524: c4 8c     mov   $8c,a
1526: 3f 8f 0f  call  $0f8f
1529: 42 bd     set2  $bd
152b: 5f 95 13  jmp   $1395

152e: f7 04     mov   a,($04)+y
1530: f0 02     beq   $1534
1532: a2 bd     set5  $bd
1534: 5f 95 13  jmp   $1395

1537: f7 04     mov   a,($04)+y
1539: 5d        mov   x,a
153a: dd        mov   a,y
153b: bc        inc   a
153c: 8d 00     mov   y,#$00
153e: 7a 04     addw  ya,$04
1540: da 47     movw  $47,ya
1542: 5f b7 14  jmp   $14b7

1545: 6f        ret

1546: e4 2f     mov   a,$2f
1548: 8f 00 2f  mov   $2f,#$00
154b: 1c        asl   a
154c: 5d        mov   x,a
154d: 1f 50 15  jmp   ($1550+x)

1550: dw $15b0  ;
1552: dw $156a  ;
1554: dw $158e  ;
1556: dw $15b1  ;
1558: dw $15d6  ;
155a: dw $15e6  ;
155c: dw $1601  ;
155e: dw $1630  ;
1560: dw $1650  ;
1562: dw $1677  ;
1564: dw $16dd  ;
1566: dw $170e  ;
1568: dw $1763  ;

156a: 8f 00 00  mov   $00,#$00
156d: cd 07     mov   x,#$07
156f: f4 ad     mov   a,$ad+x
1571: 28 7f     and   a,#$7f
1573: d4 ad     mov   $ad+x,a
1575: f5 76 11  mov   a,$1176+x
1578: 25 41 01  and   a,$0141
157b: d0 06     bne   $1583
157d: f5 76 11  mov   a,$1176+x
1580: 0e 00 00  tset1 $0000
1583: 1d        dec   x
1584: 10 e9     bpl   $156f
1586: 8f 00 8c  mov   $8c,#$00
1589: e4 00     mov   a,$00
158b: 5f 5c 11  jmp   $115c

158e: e4 30     mov   a,$30
1590: c5 72 02  mov   $0272,a
1593: c5 a1 03  mov   $03a1,a
1596: e8 80     mov   a,#$80
1598: 4e 73 02  tclr1 $0273
159b: 4e 74 02  tclr1 $0274
159e: 4e 75 02  tclr1 $0275
15a1: 4e 76 02  tclr1 $0276
15a4: 4e 77 02  tclr1 $0277
15a7: 4e 78 02  tclr1 $0278
15aa: 4e 79 02  tclr1 $0279
15ad: 4e 7a 02  tclr1 $027a
15b0: 6f        ret

15b1: e5 9e 03  mov   a,$039e
15b4: d0 1f     bne   $15d5
15b6: c5 a0 03  mov   $03a0,a
15b9: e8 02     mov   a,#$02
15bb: c5 9f 03  mov   $039f,a
15be: e4 30     mov   a,$30
15c0: 10 10     bpl   $15d2
15c2: 28 7c     and   a,#$7c
15c4: 5c        lsr   a
15c5: 5c        lsr   a
15c6: 85 9f 03  adc   a,$039f
15c9: 10 02     bpl   $15cd
15cb: e8 7f     mov   a,#$7f
15cd: c5 9f 03  mov   $039f,a
15d0: e8 7f     mov   a,#$7f
15d2: c5 9e 03  mov   $039e,a
15d5: 6f        ret

15d6: cd 07     mov   x,#$07
15d8: 0b 30     asl   $30
15da: 90 06     bcc   $15e2
15dc: f4 ad     mov   a,$ad+x
15de: 08 20     or    a,#$20
15e0: d4 ad     mov   $ad+x,a
15e2: 1d        dec   x
15e3: 10 f3     bpl   $15d8
15e5: 6f        ret

15e6: cd 07     mov   x,#$07
15e8: 0b 30     asl   $30
15ea: 90 11     bcc   $15fd
15ec: fb ad     mov   y,$ad+x
15ee: dd        mov   a,y
15ef: 28 20     and   a,#$20
15f1: f0 0a     beq   $15fd
15f3: dd        mov   a,y
15f4: 28 df     and   a,#$df
15f6: d4 ad     mov   $ad+x,a
15f8: e8 01     mov   a,#$01
15fa: d5 42 01  mov   $0142+x,a
15fd: 1d        dec   x
15fe: 10 e8     bpl   $15e8
1600: 6f        ret

1601: e8 04     mov   a,#$04
1603: 0e ad 00  tset1 $00ad
1606: 0e ae 00  tset1 $00ae
1609: 0e af 00  tset1 $00af
160c: 0e b0 00  tset1 $00b0
160f: 0e b1 00  tset1 $00b1
1612: 0e b2 00  tset1 $00b2
1615: 0e b3 00  tset1 $00b3
1618: 0e b4 00  tset1 $00b4
161b: 93 bd 11  bbc4  $bd,$162f
161e: e5 58 08  mov   a,$0858
1621: c5 52 01  mov   $0152,a
1624: e5 59 08  mov   a,$0859
1627: c5 53 01  mov   $0153,a
162a: e5 5d 08  mov   a,$085d
162d: c4 8c     mov   $8c,a
162f: 6f        ret

1630: e5 a2 03  mov   a,$03a2
1633: d0 fa     bne   $162f
1635: 3f 41 16  call  $1641
1638: c5 a2 03  mov   $03a2,a
163b: 8f b4 30  mov   $30,#$b4
163e: 5f b1 15  jmp   $15b1

1641: e8 00     mov   a,#$00
1643: cd 07     mov   x,#$07
1645: fb ad     mov   y,$ad+x
1647: 10 03     bpl   $164c
1649: 15 76 11  or    a,$1176+x
164c: 1d        dec   x
164d: 10 f6     bpl   $1645
164f: 6f        ret

1650: e5 a2 03  mov   a,$03a2
1653: f0 21     beq   $1676
1655: cd 07     mov   x,#$07
1657: 0c a2 03  asl   $03a2
165a: 90 0b     bcc   $1667
165c: f4 ad     mov   a,$ad+x
165e: 08 80     or    a,#$80
1660: d4 ad     mov   $ad+x,a
1662: e8 01     mov   a,#$01
1664: d5 42 01  mov   $0142+x,a
1667: 1d        dec   x
1668: 10 ed     bpl   $1657
166a: 3f b1 15  call  $15b1
166d: e8 80     mov   a,#$80
166f: 0e 9e 03  tset1 $039e
1672: 1c        asl   a
1673: c5 72 02  mov   $0272,a
1676: 6f        ret

1677: e5 60 01  mov   a,$0160
167a: d0 03     bne   $167f
167c: c5 55 01  mov   $0155,a
167f: e5 a2 03  mov   a,$03a2
1682: d0 03     bne   $1687
1684: 3f 41 16  call  $1641
1687: c5 2c 04  mov   $042c,a
168a: 12 02     clr0  $02
168c: e8 c3     mov   a,#$c3
168e: 8d 27     mov   y,#$27
1690: da 04     movw  $04,ya
1692: e8 2d     mov   a,#$2d
1694: 8d 04     mov   y,#$04
1696: da 06     movw  $06,ya
1698: cd 00     mov   x,#$00
169a: e7 04     mov   a,($04+x)
169c: f0 26     beq   $16c4
169e: c4 01     mov   $01,a
16a0: 9f        xcn   a
16a1: 28 0f     and   a,#$0f
16a3: fd        mov   y,a
16a4: 3a 04     incw  $04
16a6: e7 04     mov   a,($04+x)
16a8: c4 00     mov   $00,a
16aa: 38 0f 01  and   $01,#$0f
16ad: 03 02 06  bbs0  $02,$16b6
16b0: e7 00     mov   a,($00+x)
16b2: c7 06     mov   ($06+x),a
16b4: 2f 04     bra   $16ba
16b6: e7 06     mov   a,($06+x)
16b8: c7 00     mov   ($00+x),a
16ba: 3a 00     incw  $00
16bc: 3a 06     incw  $06
16be: fe ed     dbnz  y,$16ad
16c0: 3a 04     incw  $04
16c2: 2f d6     bra   $169a
16c4: e8 ac     mov   a,#$ac
16c6: 8d 03     mov   y,#$03
16c8: da 04     movw  $04,ya
16ca: 8d 7f     mov   y,#$7f
16cc: 03 02 06  bbs0  $02,$16d5
16cf: f7 04     mov   a,($04)+y
16d1: d7 06     mov   ($06)+y,a
16d3: 2f 04     bra   $16d9
16d5: f7 06     mov   a,($06)+y
16d7: d7 04     mov   ($04)+y,a
16d9: dc        dec   y
16da: 10 f0     bpl   $16cc
16dc: 6f        ret

16dd: e5 2c 04  mov   a,$042c
16e0: f0 fa     beq   $16dc
16e2: c5 a2 03  mov   $03a2,a
16e5: e8 00     mov   a,#$00
16e7: c5 2c 04  mov   $042c,a
16ea: 02 02     set0  $02
16ec: 3f 8c 16  call  $168c
16ef: e4 bd     mov   a,$bd
16f1: 28 03     and   a,#$03
16f3: 3f 5d 09  call  $095d
16f6: e5 00 02  mov   a,$0200
16f9: 3f 38 09  call  $0938
16fc: 13 3a 02  bbc0  $3a,$1701
16ff: 62 bd     set3  $bd
1701: e5 55 01  mov   a,$0155
1704: f0 05     beq   $170b
1706: 3f 8f 0f  call  $0f8f
1709: 42 bd     set2  $bd
170b: 5f 50 16  jmp   $1650

170e: 3f 2b 17  call  $172b
1711: 38 07 30  and   $30,#$07
1714: c2 bd     set6  $bd
1716: 3f 33 17  call  $1733
1719: e5 a2 03  mov   a,$03a2
171c: f0 07     beq   $1725
171e: c3 bd f5  bbs6  $bd,$1716
1721: 8b 30     dec   $30
1723: 10 ef     bpl   $1714
1725: 8f ff 30  mov   $30,#$ff
1728: 5f 50 16  jmp   $1650

172b: 3f 6a 15  call  $156a
172e: f2 29     clr7  $29
1730: 5f 38 13  jmp   $1338

1733: 8f 07 49  mov   $49,#$07
1736: e8 00     mov   a,#$00
1738: c5 a2 03  mov   $03a2,a
173b: 3f 9b 17  call  $179b
173e: f8 49     mov   x,$49
1740: f4 ad     mov   a,$ad+x
1742: 10 1a     bpl   $175e
1744: 3f a2 17  call  $17a2
1747: 3f 52 1e  call  $1e52
174a: 3f b0 1e  call  $1eb0
174d: 3f 5f 1f  call  $1f5f
1750: 3f 05 23  call  $2305
1753: f8 49     mov   x,$49
1755: e5 a2 03  mov   a,$03a2
1758: 15 76 11  or    a,$1176+x
175b: c5 a2 03  mov   $03a2,a
175e: 8b 49     dec   $49
1760: 10 dc     bpl   $173e
1762: 6f        ret

1763: 3f 2b 17  call  $172b
1766: 8b 31     dec   $31
1768: f0 f8     beq   $1762
176a: e4 30     mov   a,$30
176c: 28 07     and   a,#$07
176e: 8d 18     mov   y,#$18
1770: cf        mul   ya
1771: cb 00     mov   $00,y
1773: eb 31     mov   y,$31
1775: cf        mul   ya
1776: da be     movw  $be,ya
1778: eb 00     mov   y,$00
177a: e4 31     mov   a,$31
177c: cf        mul   ya
177d: 60        clrc
177e: 84 bf     adc   a,$bf
1780: c4 bf     mov   $bf,a
1782: eb 39     mov   y,$39
1784: dc        dec   y
1785: f0 06     beq   $178d
1787: 4b bf     lsr   $bf
1789: 6b be     ror   $be
178b: 2f f7     bra   $1784
178d: 3f 33 17  call  $1733
1790: e5 a2 03  mov   a,$03a2
1793: f0 04     beq   $1799
1795: 1a be     decw  $be
1797: d0 f4     bne   $178d
1799: 2f 8a     bra   $1725
179b: e8 00     mov   a,#$00
179d: c4 8a     mov   $8a,a
179f: c4 8b     mov   $8b,a
17a1: 6f        ret

17a2: f8 49     mov   x,$49
17a4: f5 21 02  mov   a,$0221+x
17a7: 9c        dec   a
17a8: f0 04     beq   $17ae
17aa: d5 21 02  mov   $0221+x,a
17ad: 6f        ret

17ae: f5 01 02  mov   a,$0201+x
17b1: c4 04     mov   $04,a
17b3: f5 09 02  mov   a,$0209+x
17b6: c4 05     mov   $05,a
17b8: 2f 02     bra   $17bc
17ba: 3a 04     incw  $04
; vcmd d7-d8, f4-fd - nop (dispatch next voice byte)
17bc: 8d 00     mov   y,#$00
17be: f7 04     mov   a,($04)+y
17c0: 3a 04     incw  $04
17c2: c4 00     mov   $00,a
17c4: 68 d0     cmp   a,#$d0
17c6: b0 03     bcs   $17cb
17c8: 5f 70 18  jmp   $1870

17cb: a8 d0     sbc   a,#$d0
17cd: 1c        asl   a
17ce: 5d        mov   x,a
17cf: 1f d2 17  jmp   ($17d2+x)

17d2: dw $19a3  ; d0
17d4: dw $19a8  ; d1
17d6: dw $19b8  ; d2
17d8: dw $19c8  ; d3
17da: dw $19da  ; d4
17dc: dw $19ea  ; d5
17de: dw $19f4  ; d6
17e0: dw $17bc  ; d7 - nop
17e2: dw $17bc  ; d8 - nop
17e4: dw $1a04  ; d9
17e6: dw $1a22  ; da
17e8: dw $1a3a  ; db
17ea: dw $1a4d  ; dc
17ec: dw $1a64  ; dd
17ee: dw $1a83  ; de
17f0: dw $1aa6  ; df
17f2: dw $1ac8  ; e0
17f4: dw $1ad5  ; e1
17f6: dw $1adf  ; e2
17f8: dw $1b0d  ; e3
17fa: dw $1b21  ; e4
17fc: dw $1b30  ; e5
17fe: dw $1b4b  ; e6
1800: dw $1b56  ; e7
1802: dw $1b60  ; e8
1804: dw $1b6e  ; e9
1806: dw $1b99  ; ea
1808: dw $1ba4  ; eb
180a: dw $1bb3  ; ec
180c: dw $1bc2  ; ed
180e: dw $17bc  ; ee - nop
1810: dw $1bdd  ; ef
1812: dw $1bee  ; f0
1814: dw $1bf8  ; f1
1816: dw $1c23  ; f2
1818: dw $1c41  ; f3
181a: dw $17bc  ; f4 - nop
181c: dw $17bc  ; f5 - nop
181e: dw $17bc  ; f6 - nop
1810: dw $17bc  ; f7 - nop
1822: dw $17bc  ; f8 - nop
1824: dw $17bc  ; f9 - nop
1826: dw $17bc  ; fa - nop
1828: dw $17bc  ; fb - nop
182a: dw $17bc  ; fc - nop
182c: dw $17bc  ; fd - nop
182e: dw $1c6d  ; fe
1830: dw $1c78  ; ff

1832: dw $1c95  ; 00
1834: dw $1c9e  ; 01
1836: dw $1ca9  ; 02
1838: dw $1cb2  ; 03
183a: dw $1cbd  ; 04
183c: dw $17bc  ; 05 - nop
183e: dw $17bc  ; 06 - nop
1840: dw $17bc  ; 07 - nop
1842: dw $1cc8  ; 08
1844: dw $1cdb  ; 09
1846: dw $1ce8  ; 0a
1848: dw $1cf3  ; 0b
184a: dw $1d05  ; 0c
184c: dw $1d10  ; 0d
184e: dw $17bc  ; 0e - nop
1850: dw $17bc  ; 0f - nop
1852: dw $1d1a  ; 10
1854: dw $1d31  ; 11
1856: dw $1d54  ; 12
1858: dw $1d6b  ; 13
185a: dw $1d8d  ; 14
185c: dw $1d9c  ; 15
185e: dw $1dab  ; 16
1860: dw $1dba  ; 17
1862: dw $1dc9  ; 18
1864: dw $1dd8  ; 19
1866: dw $1de7  ; 1a
1868: dw $1df4  ; 1b
186a: dw $1e08  ; 1c
186c: dw $1e1b  ; 1d
186e: dw $1e2a  ; 1e

1870: f8 49     mov   x,$49
1872: e4 00     mov   a,$00
1874: 28 07     and   a,#$07
1876: f0 1c     beq   $1894
1878: c4 01     mov   $01,a
187a: e4 bd     mov   a,$bd
187c: 28 03     and   a,#$03
187e: 60        clrc
187f: 84 01     adc   a,$01
1881: fd        mov   y,a
1882: f6 53 27  mov   a,$2753+y
1885: 68 01     cmp   a,#$01
1887: d0 0f     bne   $1898
1889: f4 ad     mov   a,$ad+x
188b: 48 01     eor   a,#$01
188d: d4 ad     mov   $ad+x,a
188f: 28 01     and   a,#$01
1891: bc        inc   a
1892: 2f 04     bra   $1898
1894: f7 04     mov   a,($04)+y
1896: 3a 04     incw  $04
1898: d5 21 02  mov   $0221+x,a
189b: e4 00     mov   a,$00
189d: 28 f0     and   a,#$f0
189f: d0 0a     bne   $18ab
18a1: 73 00 02  bbc3  $00,$18a6
18a4: 08 80     or    a,#$80
18a6: c4 02     mov   $02,a
18a8: 5f 41 19  jmp   $1941

18ab: 9f        xcn   a
18ac: 9c        dec   a
18ad: c4 01     mov   $01,a
18af: f5 19 02  mov   a,$0219+x
18b2: 8d 0c     mov   y,#$0c
18b4: cf        mul   ya
18b5: 60        clrc
18b6: 84 01     adc   a,$01
18b8: 73 00 02  bbc3  $00,$18bd
18bb: 08 80     or    a,#$80
18bd: c4 02     mov   $02,a
18bf: f5 21 02  mov   a,$0221+x
18c2: 63 00 2b  bbs3  $00,$18f0
18c5: fd        mov   y,a
18c6: f5 31 02  mov   a,$0231+x
18c9: 10 04     bpl   $18cf
18cb: 28 7f     and   a,#$7f
18cd: 2f 20     bra   $18ef
18cf: 68 09     cmp   a,#$09
18d1: 90 11     bcc   $18e4
18d3: a8 08     sbc   a,#$08
18d5: c4 01     mov   $01,a
18d7: f5 21 02  mov   a,$0221+x
18da: a4 01     sbc   a,$01
18dc: f0 02     beq   $18e0
18de: b0 0f     bcs   $18ef
18e0: e8 01     mov   a,#$01
18e2: 2f 0b     bra   $18ef
18e4: cf        mul   ya
18e5: cd 08     mov   x,#$08
18e7: 9e        div   ya,x
18e8: ad 00     cmp   y,#$00
18ea: f0 01     beq   $18ed
18ec: bc        inc   a
18ed: f8 49     mov   x,$49
18ef: 9c        dec   a
18f0: d5 29 02  mov   $0229+x,a
18f3: f4 ad     mov   a,$ad+x
18f5: 28 08     and   a,#$08
18f7: f0 2b     beq   $1924
18f9: e4 02     mov   a,$02
18fb: 1c        asl   a
18fc: 1c        asl   a
18fd: fd        mov   y,a
18fe: f7 41     mov   a,($41)+y
1900: 75 5a 02  cmp   a,$025a+x
1903: f0 09     beq   $190e
1905: d5 5a 02  mov   $025a+x,a
1908: f4 ad     mov   a,$ad+x
190a: 08 04     or    a,#$04
190c: d4 ad     mov   $ad+x,a
190e: fc        inc   y
190f: f7 41     mov   a,($41)+y
1911: 73 00 02  bbc3  $00,$1916
1914: 08 80     or    a,#$80
1916: c4 02     mov   $02,a
1918: fc        inc   y
1919: f7 41     mov   a,($41)+y
191b: d5 73 02  mov   $0273+x,a
191e: fc        inc   y
191f: f7 41     mov   a,($41)+y
1921: d5 7b 02  mov   $027b+x,a
1924: f5 11 02  mov   a,$0211+x
1927: 30 05     bmi   $192e
1929: e8 01     mov   a,#$01
192b: d5 42 02  mov   $0242+x,a
192e: f4 ad     mov   a,$ad+x
1930: 08 02     or    a,#$02
1932: d4 ad     mov   $ad+x,a
1934: f5 8b 02  mov   a,$028b+x
1937: 30 08     bmi   $1941
1939: f5 73 02  mov   a,$0273+x
193c: 28 7f     and   a,#$7f
193e: d5 73 02  mov   $0273+x,a
1941: b3 bd 1a  bbc5  $bd,$195e
1944: f4 b5     mov   a,$b5+x
1946: 30 16     bmi   $195e
1948: 8d 00     mov   y,#$00
194a: f7 04     mov   a,($04)+y
194c: 3a 04     incw  $04
194e: 75 83 02  cmp   a,$0283+x
1951: f0 0b     beq   $195e
1953: d5 83 02  mov   $0283+x,a
1956: f5 73 02  mov   a,$0273+x
1959: 28 7f     and   a,#$7f
195b: d5 73 02  mov   $0273+x,a
195e: e4 04     mov   a,$04
1960: d5 01 02  mov   $0201+x,a
1963: e4 05     mov   a,$05
1965: d5 09 02  mov   $0209+x,a
1968: f4 ad     mov   a,$ad+x
196a: 28 48     and   a,#$48
196c: d0 0e     bne   $197c
196e: cd 00     mov   x,#$00
1970: e7 04     mov   a,($04+x)
1972: 68 d0     cmp   a,#$d0
1974: b0 0e     bcs   $1984
1976: 28 f0     and   a,#$f0
1978: d0 02     bne   $197c
197a: e2 02     set7  $02
197c: f8 49     mov   x,$49
197e: e4 02     mov   a,$02
1980: d5 11 02  mov   $0211+x,a
1983: 6f        ret

1984: 68 fe     cmp   a,#$fe
1986: f0 11     beq   $1999
1988: 80        setc
1989: a8 d0     sbc   a,#$d0
198b: fd        mov   y,a
198c: f6 74 27  mov   a,$2774+y
198f: f0 eb     beq   $197c
1991: 8d 00     mov   y,#$00
1993: 7a 04     addw  ya,$04
1995: da 04     movw  $04,ya
1997: 2f d7     bra   $1970
1999: 3a 04     incw  $04
199b: e7 04     mov   a,($04+x)
199d: fd        mov   y,a
199e: f6 a4 27  mov   a,$27a4+y
19a1: 2f ec     bra   $198f

; vcmd d0
19a3: d2 bd     clr6  $bd
19a5: 5f bc 17  jmp   $17bc

; vcmd d1
19a8: f7 04     mov   a,($04)+y
19aa: 65 00 02  cmp   a,$0200
19ad: f0 06     beq   $19b5
19af: c5 00 02  mov   $0200,a
19b2: 3f 38 09  call  $0938
19b5: 5f ba 17  jmp   $17ba

; vcmd d2
19b8: f8 49     mov   x,$49
19ba: f7 04     mov   a,($04)+y
19bc: 68 05     cmp   a,#$05
19be: 90 02     bcc   $19c2
19c0: e8 05     mov   a,#$05
19c2: d5 19 02  mov   $0219+x,a
19c5: 5f ba 17  jmp   $17ba

; vcmd d3
19c8: f8 49     mov   x,$49
19ca: f5 19 02  mov   a,$0219+x
19cd: bc        inc   a
19ce: 68 05     cmp   a,#$05
19d0: 90 02     bcc   $19d4
19d2: e8 05     mov   a,#$05
19d4: d5 19 02  mov   $0219+x,a
19d7: 5f bc 17  jmp   $17bc

; vcmd d4
19da: f8 49     mov   x,$49
19dc: f5 19 02  mov   a,$0219+x
19df: 9c        dec   a
19e0: 10 02     bpl   $19e4
19e2: e8 00     mov   a,#$00
19e4: d5 19 02  mov   $0219+x,a
19e7: 5f bc 17  jmp   $17bc

; vcmd d5
19ea: f8 49     mov   x,$49
19ec: f7 04     mov   a,($04)+y
19ee: d5 31 02  mov   $0231+x,a
19f1: 5f ba 17  jmp   $17ba

; vcmd d6
19f4: f8 49     mov   x,$49
19f6: f7 04     mov   a,($04)+y
19f8: d5 5a 02  mov   $025a+x,a
19fb: f4 ad     mov   a,$ad+x
19fd: 08 04     or    a,#$04
19ff: d4 ad     mov   $ad+x,a
1a01: 5f ba 17  jmp   $17ba

; vcmd d9
1a04: f8 49     mov   x,$49
1a06: f7 04     mov   a,($04)+y
1a08: 3f 16 1a  call  $1a16
1a0b: d5 73 02  mov   $0273+x,a
1a0e: e8 00     mov   a,#$00
1a10: d5 7e 03  mov   $037e+x,a
1a13: 5f ba 17  jmp   $17ba

1a16: 10 03     bpl   $1a1b
1a18: e8 00     mov   a,#$00
1a1a: 6f        ret

1a1b: 68 4f     cmp   a,#$4f
1a1d: 90 02     bcc   $1a21
1a1f: e8 4f     mov   a,#$4f
1a21: 6f        ret

; vcmd da
1a22: f8 49     mov   x,$49
1a24: f7 04     mov   a,($04)+y
1a26: 68 1e     cmp   a,#$1e
1a28: 90 02     bcc   $1a2c
1a2a: e8 1e     mov   a,#$1e
1a2c: d5 7b 02  mov   $027b+x,a
1a2f: f5 73 02  mov   a,$0273+x
1a32: 28 7f     and   a,#$7f
1a34: d5 73 02  mov   $0273+x,a
1a37: 5f ba 17  jmp   $17ba

; vcmd db
1a3a: f8 49     mov   x,$49
1a3c: f7 04     mov   a,($04)+y
1a3e: 28 03     and   a,#$03
1a40: c4 00     mov   $00,a
1a42: f4 b5     mov   a,$b5+x
1a44: 28 fc     and   a,#$fc
1a46: 04 00     or    a,$00
1a48: d4 b5     mov   $b5+x,a
1a4a: 5f ba 17  jmp   $17ba

; vcmd dc
1a4d: f8 49     mov   x,$49
1a4f: f7 04     mov   a,($04)+y
1a51: c4 01     mov   $01,a
1a53: f5 73 02  mov   a,$0273+x
1a56: 28 7f     and   a,#$7f
1a58: 60        clrc
1a59: 84 01     adc   a,$01
1a5b: 3f 16 1a  call  $1a16
1a5e: d5 73 02  mov   $0273+x,a
1a61: 5f ba 17  jmp   $17ba

; vcmd dd
1a64: f8 49     mov   x,$49
1a66: 3f 35 1e  call  $1e35
1a69: e4 04     mov   a,$04
1a6b: d7 06     mov   ($06)+y,a
1a6d: fc        inc   y
1a6e: e4 05     mov   a,$05
1a70: d7 06     mov   ($06)+y,a
1a72: fc        inc   y
1a73: cd 00     mov   x,#$00
1a75: e7 04     mov   a,($04+x)
1a77: d7 06     mov   ($06)+y,a
1a79: fc        inc   y
1a7a: dd        mov   a,y
1a7b: f8 49     mov   x,$49
1a7d: d5 a4 03  mov   $03a4+x,a
1a80: 5f ba 17  jmp   $17ba

; vcmd de
1a83: f8 49     mov   x,$49
1a85: 3f 35 1e  call  $1e35
1a88: dc        dec   y
1a89: f7 06     mov   a,($06)+y
1a8b: 9c        dec   a
1a8c: f0 0f     beq   $1a9d
1a8e: d7 06     mov   ($06)+y,a
1a90: dc        dec   y
1a91: f7 06     mov   a,($06)+y
1a93: c4 05     mov   $05,a
1a95: dc        dec   y
1a96: f7 06     mov   a,($06)+y
1a98: c4 04     mov   $04,a
1a9a: 5f ba 17  jmp   $17ba

1a9d: dc        dec   y
1a9e: dc        dec   y
1a9f: dd        mov   a,y
1aa0: d5 a4 03  mov   $03a4+x,a
1aa3: 5f bc 17  jmp   $17bc

; vcmd df
1aa6: f8 49     mov   x,$49
1aa8: 3f 35 1e  call  $1e35
1aab: e4 04     mov   a,$04
1aad: d7 06     mov   ($06)+y,a
1aaf: fc        inc   y
1ab0: e4 05     mov   a,$05
1ab2: d7 06     mov   ($06)+y,a
1ab4: fc        inc   y
1ab5: dd        mov   a,y
1ab6: d5 a4 03  mov   $03a4+x,a
1ab9: 8d 00     mov   y,#$00
1abb: f7 04     mov   a,($04)+y
1abd: 5d        mov   x,a
1abe: fc        inc   y
1abf: f7 04     mov   a,($04)+y
1ac1: c4 05     mov   $05,a
1ac3: d8 04     mov   $04,x
1ac5: 5f bc 17  jmp   $17bc

; vcmd e0
1ac8: f7 04     mov   a,($04)+y
1aca: 5d        mov   x,a
1acb: fc        inc   y
1acc: f7 04     mov   a,($04)+y
1ace: c4 05     mov   $05,a
1ad0: d8 04     mov   $04,x
1ad2: 5f bc 17  jmp   $17bc

; vcmd e1
1ad5: f8 49     mov   x,$49
1ad7: f7 04     mov   a,($04)+y
1ad9: d5 93 02  mov   $0293+x,a
1adc: 5f ba 17  jmp   $17ba

; vcmd e2
1adf: f8 49     mov   x,$49
1ae1: f7 04     mov   a,($04)+y
1ae3: 28 7f     and   a,#$7f
1ae5: f0 14     beq   $1afb
1ae7: d5 9c 02  mov   $029c+x,a
1aea: 3a 04     incw  $04
1aec: f7 04     mov   a,($04)+y
1aee: d5 a4 02  mov   $02a4+x,a
1af1: 3a 04     incw  $04
1af3: f7 04     mov   a,($04)+y
1af5: d5 ac 02  mov   $02ac+x,a
1af8: 5f ba 17  jmp   $17ba

1afb: d5 a4 02  mov   $02a4+x,a
1afe: bc        inc   a
1aff: d5 9c 02  mov   $029c+x,a
1b02: e8 03     mov   a,#$03
1b04: 8d 00     mov   y,#$00
1b06: 7a 04     addw  ya,$04
1b08: da 04     movw  $04,ya
1b0a: 5f bc 17  jmp   $17bc

; vcmd e3
1b0d: f8 49     mov   x,$49
1b0f: f7 04     mov   a,($04)+y
1b11: d0 08     bne   $1b1b
1b13: f5 76 11  mov   a,$1176+x
1b16: 4e 9b 02  tclr1 $029b
1b19: e8 00     mov   a,#$00
1b1b: d5 cc 02  mov   $02cc+x,a
1b1e: 5f ba 17  jmp   $17ba

; vcmd e4
1b21: f7 04     mov   a,($04)+y
1b23: c5 52 01  mov   $0152,a
1b26: 3a 04     incw  $04
1b28: f7 04     mov   a,($04)+y
1b2a: c5 53 01  mov   $0153,a
1b2d: 5f ba 17  jmp   $17ba

; vcmd e5
1b30: f7 04     mov   a,($04)+y
1b32: c5 55 01  mov   $0155,a
1b35: 3a 04     incw  $04
1b37: f7 04     mov   a,($04)+y
1b39: c5 54 01  mov   $0154,a
1b3c: 3a 04     incw  $04
1b3e: f7 04     mov   a,($04)+y
1b40: c5 56 01  mov   $0156,a
1b43: 3f 8f 0f  call  $0f8f
1b46: 42 bd     set2  $bd
1b48: 5f ba 17  jmp   $17ba

; vcmd e6
1b4b: f8 49     mov   x,$49
1b4d: f5 76 11  mov   a,$1176+x
1b50: 0e 8c 00  tset1 $008c
1b53: 5f bc 17  jmp   $17bc

; vcmd e7
1b56: f8 49     mov   x,$49
1b58: f7 04     mov   a,($04)+y
1b5a: d5 39 02  mov   $0239+x,a
1b5d: 5f ba 17  jmp   $17ba

; vcmd e8
1b60: f8 49     mov   x,$49
1b62: f5 39 02  mov   a,$0239+x
1b65: 60        clrc
1b66: 97 04     adc   a,($04)+y
1b68: d5 39 02  mov   $0239+x,a
1b6b: 5f ba 17  jmp   $17ba

; vcmd e9
1b6e: f8 49     mov   x,$49
1b70: f7 04     mov   a,($04)+y
1b72: 28 7f     and   a,#$7f
1b74: f0 1c     beq   $1b92
1b76: d5 de 02  mov   $02de+x,a
1b79: 3a 04     incw  $04
1b7b: f7 04     mov   a,($04)+y
1b7d: f0 15     beq   $1b94
1b7f: d5 e6 02  mov   $02e6+x,a
1b82: 3a 04     incw  $04
1b84: f7 04     mov   a,($04)+y
1b86: d5 ee 02  mov   $02ee+x,a
1b89: f4 b5     mov   a,$b5+x
1b8b: 08 10     or    a,#$10
1b8d: d4 b5     mov   $b5+x,a
1b8f: 5f ba 17  jmp   $17ba

1b92: 3a 04     incw  $04
1b94: 3a 04     incw  $04
1b96: 5f ba 17  jmp   $17ba

; vcmd ea
1b99: f8 49     mov   x,$49
1b9b: f4 b5     mov   a,$b5+x
1b9d: 28 ef     and   a,#$ef
1b9f: d4 b5     mov   $b5+x,a
1ba1: 5f bc 17  jmp   $17bc

; vcmd eb
1ba4: f8 49     mov   x,$49
1ba6: e4 04     mov   a,$04
1ba8: d5 4a 02  mov   $024a+x,a
1bab: e4 05     mov   a,$05
1bad: d5 52 02  mov   $0252+x,a
1bb0: 5f bc 17  jmp   $17bc

; vcmd ec
1bb3: f8 49     mov   x,$49
1bb5: f5 4a 02  mov   a,$024a+x
1bb8: c4 04     mov   $04,a
1bba: f5 52 02  mov   a,$0252+x
1bbd: c4 05     mov   $05,a
1bbf: 5f bc 17  jmp   $17bc

; vcmd ed
1bc2: f8 49     mov   x,$49
1bc4: f4 b5     mov   a,$b5+x
1bc6: 28 20     and   a,#$20
1bc8: d0 10     bne   $1bda
1bca: f4 b5     mov   a,$b5+x
1bcc: 08 20     or    a,#$20
1bce: d4 b5     mov   $b5+x,a
1bd0: f5 4a 02  mov   a,$024a+x
1bd3: c4 04     mov   $04,a
1bd5: f5 52 02  mov   a,$0252+x
1bd8: c4 05     mov   $05,a
1bda: 5f bc 17  jmp   $17bc

; vcmd ef
1bdd: f7 04     mov   a,($04)+y
1bdf: f8 49     mov   x,$49
1be1: d5 0e 03  mov   $030e+x,a
1be4: 3a 04     incw  $04
1be6: f7 04     mov   a,($04)+y
1be8: d5 16 03  mov   $0316+x,a
1beb: 5f ba 17  jmp   $17ba

; vcmd f0
1bee: f8 49     mov   x,$49
1bf0: f7 04     mov   a,($04)+y
1bf2: d5 06 03  mov   $0306+x,a
1bf5: 5f ba 17  jmp   $17ba

; vcmd f1
1bf8: f8 49     mov   x,$49
1bfa: f7 04     mov   a,($04)+y
1bfc: f0 1a     beq   $1c18
1bfe: bc        inc   a
1bff: d5 0e 03  mov   $030e+x,a
1c02: f4 b5     mov   a,$b5+x
1c04: 08 40     or    a,#$40
1c06: d4 b5     mov   $b5+x,a
1c08: e8 00     mov   a,#$00
1c0a: d5 1e 03  mov   $031e+x,a
1c0d: d5 26 03  mov   $0326+x,a
1c10: d5 16 03  mov   $0316+x,a
1c13: 3a 04     incw  $04
1c15: 5f ba 17  jmp   $17ba

1c18: f4 b5     mov   a,$b5+x
1c1a: 28 bf     and   a,#$bf
1c1c: d4 b5     mov   $b5+x,a
1c1e: 3a 04     incw  $04
1c20: 5f ba 17  jmp   $17ba

; vcmd f2
1c23: f8 49     mov   x,$49
1c25: f7 04     mov   a,($04)+y
1c27: d5 cc 02  mov   $02cc+x,a
1c2a: f0 09     beq   $1c35
1c2c: f5 76 11  mov   a,$1176+x
1c2f: 0e dc 02  tset1 $02dc
1c32: 5f ba 17  jmp   $17ba

1c35: f5 76 11  mov   a,$1176+x
1c38: 4e 9b 02  tclr1 $029b
1c3b: 4e dc 02  tclr1 $02dc
1c3e: 5f ba 17  jmp   $17ba

; vcmd f3
1c41: f8 49     mov   x,$49
1c43: f7 04     mov   a,($04)+y
1c45: 10 05     bpl   $1c4c
1c47: 48 ff     eor   a,#$ff
1c49: bc        inc   a
1c4a: 08 80     or    a,#$80
1c4c: d5 7e 03  mov   $037e+x,a
1c4f: e8 00     mov   a,#$00
1c51: d5 96 03  mov   $0396+x,a
1c54: 8d 18     mov   y,#$18
1c56: e4 bd     mov   a,$bd
1c58: 28 03     and   a,#$03
1c5a: f0 07     beq   $1c63
1c5c: 8d 0c     mov   y,#$0c
1c5e: 9c        dec   a
1c5f: f0 02     beq   $1c63
1c61: 8d 06     mov   y,#$06
1c63: dd        mov   a,y
1c64: d5 86 03  mov   $0386+x,a
1c67: d5 8e 03  mov   $038e+x,a
1c6a: 5f ba 17  jmp   $17ba

; vcmd fe
1c6d: f7 04     mov   a,($04)+y
1c6f: c4 00     mov   $00,a
1c71: 3a 04     incw  $04
1c73: 1c        asl   a
1c74: 5d        mov   x,a
1c75: 1f 32 18  jmp   ($1832+x)

; vcmd ff
1c78: f8 49     mov   x,$49
1c7a: f5 a4 03  mov   a,$03a4+x
1c7d: f0 16     beq   $1c95
1c7f: 3f 35 1e  call  $1e35
1c82: dc        dec   y
1c83: f7 06     mov   a,($06)+y
1c85: c4 05     mov   $05,a
1c87: dc        dec   y
1c88: f7 06     mov   a,($06)+y
1c8a: c4 04     mov   $04,a
1c8c: dd        mov   a,y
1c8d: d5 a4 03  mov   $03a4+x,a
1c90: 3a 04     incw  $04
1c92: 5f ba 17  jmp   $17ba

; subcmd 00
1c95: f8 49     mov   x,$49
1c97: f4 ad     mov   a,$ad+x
1c99: 28 7f     and   a,#$7f
1c9b: d4 ad     mov   $ad+x,a
1c9d: 6f        ret

; subcmd 01
1c9e: f8 49     mov   x,$49
1ca0: f5 76 11  mov   a,$1176+x
1ca3: 4e 8c 00  tclr1 $008c
1ca6: 5f bc 17  jmp   $17bc

; subcmd 02
1ca9: 8f 00 8c  mov   $8c,#$00
1cac: 3f 95 0f  call  $0f95
1caf: 5f bc 17  jmp   $17bc

; subcmd 03
1cb2: f8 49     mov   x,$49
1cb4: f4 ad     mov   a,$ad+x
1cb6: 08 08     or    a,#$08
1cb8: d4 ad     mov   $ad+x,a
1cba: 5f bc 17  jmp   $17bc

; subcmd 04
1cbd: f8 49     mov   x,$49
1cbf: f4 ad     mov   a,$ad+x
1cc1: 28 f7     and   a,#$f7
1cc3: d4 ad     mov   $ad+x,a
1cc5: 5f bc 17  jmp   $17bc

; subcmd 08
1cc8: f8 49     mov   x,$49
1cca: f5 6e 03  mov   a,$036e+x
1ccd: 48 01     eor   a,#$01
1ccf: d5 6e 03  mov   $036e+x,a
1cd2: 5c        lsr   a
1cd3: 90 03     bcc   $1cd8
1cd5: 3f 68 21  call  $2168
1cd8: 5f bc 17  jmp   $17bc

; subcmd 09
1cdb: f8 49     mov   x,$49
1cdd: f5 6e 03  mov   a,$036e+x
1ce0: 48 02     eor   a,#$02
1ce2: d5 6e 03  mov   $036e+x,a
1ce5: 5f bc 17  jmp   $17bc

; subcmd 0a
1ce8: f8 49     mov   x,$49
1cea: f4 ad     mov   a,$ad+x
1cec: 48 40     eor   a,#$40
1cee: d4 ad     mov   $ad+x,a
1cf0: 5f bc 17  jmp   $17bc

; subcmd 0b
1cf3: f8 49     mov   x,$49
1cf5: f5 c4 02  mov   a,$02c4+x
1cf8: 48 01     eor   a,#$01
1cfa: d5 c4 02  mov   $02c4+x,a
1cfd: f0 03     beq   $1d02
1cff: 3f 33 20  call  $2033
1d02: 5f bc 17  jmp   $17bc

; subcmd 0c
1d05: f8 49     mov   x,$49
1d07: f4 b5     mov   a,$b5+x
1d09: 08 80     or    a,#$80
1d0b: d4 b5     mov   $b5+x,a
1d0d: 5f bc 17  jmp   $17bc

; subcmd 0d
1d10: f8 49     mov   x,$49
1d12: f7 04     mov   a,($04)+y
1d14: d5 8b 02  mov   $028b+x,a
1d17: 5f ba 17  jmp   $17ba

; subcmd 10
1d1a: f7 04     mov   a,($04)+y
1d1c: f8 49     mov   x,$49
1d1e: 3f 44 1e  call  $1e44
1d21: 8d 00     mov   y,#$00
1d23: 3a 04     incw  $04
1d25: f7 04     mov   a,($04)+y
1d27: 0d        push  psw
1d28: d7 06     mov   ($06)+y,a
1d2a: ae        pop   a
1d2b: c5 a3 03  mov   $03a3,a
1d2e: 5f ba 17  jmp   $17ba

; subcmd 11
1d31: fc        inc   y
1d32: f7 04     mov   a,($04)+y
1d34: f8 49     mov   x,$49
1d36: 3f 44 1e  call  $1e44
1d39: 8d 00     mov   y,#$00
1d3b: f7 06     mov   a,($06)+y
1d3d: c4 00     mov   $00,a
1d3f: f7 04     mov   a,($04)+y
1d41: 3f 44 1e  call  $1e44
1d44: 8d 00     mov   y,#$00
1d46: e4 00     mov   a,$00
1d48: 0d        push  psw
1d49: d7 06     mov   ($06)+y,a
1d4b: ae        pop   a
1d4c: c5 a3 03  mov   $03a3,a
1d4f: 3a 04     incw  $04
1d51: 5f ba 17  jmp   $17ba

; subcmd 12
1d54: f7 04     mov   a,($04)+y
1d56: f8 49     mov   x,$49
1d58: 3f 44 1e  call  $1e44
1d5b: 8d 00     mov   y,#$00
1d5d: 3a 04     incw  $04
1d5f: f7 06     mov   a,($06)+y
1d61: 77 04     cmp   a,($04)+y
1d63: 0d        push  psw
1d64: ae        pop   a
1d65: c5 a3 03  mov   $03a3,a
1d68: 5f ba 17  jmp   $17ba

; subcmd 13
1d6b: f7 04     mov   a,($04)+y
1d6d: f8 49     mov   x,$49
1d6f: 3f 44 1e  call  $1e44
1d72: 8d 00     mov   y,#$00
1d74: f7 06     mov   a,($06)+y
1d76: c4 00     mov   $00,a
1d78: 3a 04     incw  $04
1d7a: f7 04     mov   a,($04)+y
1d7c: 3f 44 1e  call  $1e44
1d7f: 8d 00     mov   y,#$00
1d81: e4 00     mov   a,$00
1d83: 77 06     cmp   a,($06)+y
1d85: 0d        push  psw
1d86: ae        pop   a
1d87: c5 a3 03  mov   $03a3,a
1d8a: 5f ba 17  jmp   $17ba

; subcmd 14
1d8d: e5 a3 03  mov   a,$03a3
1d90: 2d        push  a
1d91: 8e        pop   psw
1d92: d0 03     bne   $1d97
1d94: 5f c8 1a  jmp   $1ac8

1d97: 3a 04     incw  $04
1d99: 5f ba 17  jmp   $17ba

; subcmd 15
1d9c: e5 a3 03  mov   a,$03a3
1d9f: 2d        push  a
1da0: 8e        pop   psw
1da1: f0 03     beq   $1da6
1da3: 5f c8 1a  jmp   $1ac8

1da6: 3a 04     incw  $04
1da8: 5f ba 17  jmp   $17ba

; subcmd 16
1dab: e5 a3 03  mov   a,$03a3
1dae: 2d        push  a
1daf: 8e        pop   psw
1db0: b0 03     bcs   $1db5
1db2: 5f c8 1a  jmp   $1ac8

1db5: 3a 04     incw  $04
1db7: 5f ba 17  jmp   $17ba

; subcmd 17
1dba: e5 a3 03  mov   a,$03a3
1dbd: 2d        push  a
1dbe: 8e        pop   psw
1dbf: 90 03     bcc   $1dc4
1dc1: 5f c8 1a  jmp   $1ac8

1dc4: 3a 04     incw  $04
1dc6: 5f ba 17  jmp   $17ba

; subcmd 18
1dc9: e5 a3 03  mov   a,$03a3
1dcc: 2d        push  a
1dcd: 8e        pop   psw
1dce: 30 03     bmi   $1dd3
1dd0: 5f c8 1a  jmp   $1ac8

1dd3: 3a 04     incw  $04
1dd5: 5f ba 17  jmp   $17ba

; subcmd 19
1dd8: e5 a3 03  mov   a,$03a3
1ddb: 2d        push  a
1ddc: 8e        pop   psw
1ddd: 10 03     bpl   $1de2
1ddf: 5f c8 1a  jmp   $1ac8

1de2: 3a 04     incw  $04
1de4: 5f ba 17  jmp   $17ba

; subcmd 1a
1de7: f8 49     mov   x,$49
1de9: f4 72     mov   a,$72+x
1deb: 28 f0     and   a,#$f0
1ded: 17 04     or    a,($04)+y
1def: d4 72     mov   $72+x,a
1df1: 5f ba 17  jmp   $17ba

; subcmd 1b
1df4: f8 49     mov   x,$49
1df6: f4 72     mov   a,$72+x
1df8: 28 0f     and   a,#$0f
1dfa: c4 00     mov   $00,a
1dfc: f7 04     mov   a,($04)+y
1dfe: 9f        xcn   a
1dff: 08 80     or    a,#$80
1e01: 04 00     or    a,$00
1e03: d4 72     mov   $72+x,a
1e05: 5f ba 17  jmp   $17ba

; subcmd 1c
1e08: f8 49     mov   x,$49
1e0a: f4 7a     mov   a,$7a+x
1e0c: 28 1f     and   a,#$1f
1e0e: c4 00     mov   $00,a
1e10: f7 04     mov   a,($04)+y
1e12: 9f        xcn   a
1e13: 1c        asl   a
1e14: 04 00     or    a,$00
1e16: d4 7a     mov   $7a+x,a
1e18: 5f ba 17  jmp   $17ba

; subcmd 1d
1e1b: f8 49     mov   x,$49
1e1d: f4 7a     mov   a,$7a+x
1e1f: 28 e0     and   a,#$e0
1e21: c4 00     mov   $00,a
1e23: 17 04     or    a,($04)+y
1e25: d4 7a     mov   $7a+x,a
1e27: 5f ba 17  jmp   $17ba

; subcmd 1e
1e2a: f8 49     mov   x,$49
1e2c: f7 04     mov   a,($04)+y
1e2e: 08 a0     or    a,#$a0
1e30: d4 82     mov   $82+x,a
1e32: 5f ba 17  jmp   $17ba

1e35: f5 44 27  mov   a,$2744+x
1e38: c4 06     mov   $06,a
1e3a: f5 4c 27  mov   a,$274c+x
1e3d: c4 07     mov   $07,a
1e3f: f5 a4 03  mov   a,$03a4+x
1e42: fd        mov   y,a
1e43: 6f        ret

1e44: c4 06     mov   $06,a
1e46: 8f 00 07  mov   $07,#$00
1e49: e8 50     mov   a,#$50
1e4b: 8d 08     mov   y,#$08
1e4d: 7a 06     addw  ya,$06
1e4f: da 06     movw  $06,ya
1e51: 6f        ret

1e52: f8 49     mov   x,$49
1e54: f4 ad     mov   a,$ad+x
1e56: 28 04     and   a,#$04
1e58: f0 33     beq   $1e8d
1e5a: f5 5a 02  mov   a,$025a+x
1e5d: 8d 04     mov   y,#$04
1e5f: cf        mul   ya
1e60: 7a 3f     addw  ya,$3f
1e62: da 04     movw  $04,ya
1e64: 8d 03     mov   y,#$03
1e66: f7 04     mov   a,($04)+y
1e68: 30 08     bmi   $1e72
1e6a: dc        dec   y
1e6b: f7 04     mov   a,($04)+y
1e6d: dc        dec   y
1e6e: 17 04     or    a,($04)+y
1e70: f0 1c     beq   $1e8e
1e72: d4 82     mov   $82+x,a
1e74: dc        dec   y
1e75: f7 04     mov   a,($04)+y
1e77: d4 7a     mov   $7a+x,a
1e79: dc        dec   y
1e7a: f7 04     mov   a,($04)+y
1e7c: d4 72     mov   $72+x,a
1e7e: dc        dec   y
1e7f: f7 04     mov   a,($04)+y
1e81: d4 6a     mov   $6a+x,a
1e83: 3f 71 10  call  $1071
1e86: d5 62 02  mov   $0262+x,a
1e89: dd        mov   a,y
1e8a: d5 6a 02  mov   $026a+x,a
1e8d: 6f        ret

1e8e: 8d 03     mov   y,#$03
1e90: f7 04     mov   a,($04)+y
1e92: 1c        asl   a
1e93: 1c        asl   a
1e94: fd        mov   y,a
1e95: f6 40 08  mov   a,$0840+y
1e98: d4 6a     mov   $6a+x,a
1e9a: fc        inc   y
1e9b: f6 40 08  mov   a,$0840+y
1e9e: d4 72     mov   $72+x,a
1ea0: fc        inc   y
1ea1: f6 40 08  mov   a,$0840+y
1ea4: d4 7a     mov   $7a+x,a
1ea6: fc        inc   y
1ea7: f6 40 08  mov   a,$0840+y
1eaa: d4 82     mov   $82+x,a
1eac: f4 6a     mov   a,$6a+x
1eae: 2f d3     bra   $1e83
1eb0: f8 49     mov   x,$49
1eb2: f5 7e 03  mov   a,$037e+x
1eb5: f0 55     beq   $1f0c
1eb7: c4 00     mov   $00,a
1eb9: f5 8e 03  mov   a,$038e+x
1ebc: 9c        dec   a
1ebd: d0 4a     bne   $1f09
1ebf: f5 86 03  mov   a,$0386+x
1ec2: d5 8e 03  mov   $038e+x,a
1ec5: e4 00     mov   a,$00
1ec7: 28 7f     and   a,#$7f
1ec9: 60        clrc
1eca: 95 96 03  adc   a,$0396+x
1ecd: d5 96 03  mov   $0396+x,a
1ed0: 5c        lsr   a
1ed1: 5c        lsr   a
1ed2: 5c        lsr   a
1ed3: f0 37     beq   $1f0c
1ed5: c4 01     mov   $01,a
1ed7: f5 96 03  mov   a,$0396+x
1eda: 28 07     and   a,#$07
1edc: d5 96 03  mov   $0396+x,a
1edf: f5 73 02  mov   a,$0273+x
1ee2: 28 7f     and   a,#$7f
1ee4: f3 00 0c  bbc7  $00,$1ef3
1ee7: 80        setc
1ee8: a4 01     sbc   a,$01
1eea: d5 73 02  mov   $0273+x,a
1eed: 10 22     bpl   $1f11
1eef: e8 00     mov   a,#$00
1ef1: 2f 0c     bra   $1eff
1ef3: 60        clrc
1ef4: 84 01     adc   a,$01
1ef6: d5 73 02  mov   $0273+x,a
1ef9: 68 4f     cmp   a,#$4f
1efb: 90 14     bcc   $1f11
1efd: e8 4f     mov   a,#$4f
1eff: d5 73 02  mov   $0273+x,a
1f02: e8 00     mov   a,#$00
1f04: d5 7e 03  mov   $037e+x,a
1f07: 2f 03     bra   $1f0c
1f09: d5 8e 03  mov   $038e+x,a
1f0c: f5 73 02  mov   a,$0273+x
1f0f: 30 4d     bmi   $1f5e
1f11: 1c        asl   a
1f12: fd        mov   y,a
1f13: f5 8b 02  mov   a,$028b+x
1f16: 30 1e     bmi   $1f36
1f18: 1c        asl   a
1f19: fd        mov   y,a
1f1a: f7 47     mov   a,($47)+y
1f1c: c4 04     mov   $04,a
1f1e: fc        inc   y
1f1f: f7 47     mov   a,($47)+y
1f21: c4 05     mov   $05,a
1f23: f5 11 02  mov   a,$0211+x
1f26: 28 7f     and   a,#$7f
1f28: fd        mov   y,a
1f29: f5 73 02  mov   a,$0273+x
1f2c: 28 7f     and   a,#$7f
1f2e: 60        clrc
1f2f: 97 04     adc   a,($04)+y
1f31: 3f 16 1a  call  $1a16
1f34: 1c        asl   a
1f35: fd        mov   y,a
1f36: f5 83 02  mov   a,$0283+x
1f39: bc        inc   a
1f3a: cf        mul   ya
1f3b: dd        mov   a,y
1f3c: 1c        asl   a
1f3d: fd        mov   y,a
1f3e: e5 72 02  mov   a,$0272
1f41: bc        inc   a
1f42: cf        mul   ya
1f43: cb 01     mov   $01,y
1f45: f5 7b 02  mov   a,$027b+x
1f48: fb b5     mov   y,$b5+x
1f4a: 73 bd 04  bbc3  $bd,$1f51
1f4d: e8 0f     mov   a,#$0f
1f4f: 8d 00     mov   y,#$00
1f51: c4 00     mov   $00,a
1f53: cb 02     mov   $02,y
1f55: 3f 2f 11  call  $112f
1f58: f8 49     mov   x,$49
1f5a: db 4a     mov   $4a+x,y
1f5c: d4 52     mov   $52+x,a
1f5e: 6f        ret

1f5f: f8 49     mov   x,$49
1f61: f4 ad     mov   a,$ad+x
1f63: 28 02     and   a,#$02
1f65: f0 74     beq   $1fdb
1f67: f8 49     mov   x,$49
1f69: f4 b5     mov   a,$b5+x
1f6b: 28 40     and   a,#$40
1f6d: f0 0c     beq   $1f7b
1f6f: f4 9d     mov   a,$9d+x
1f71: d5 1e 03  mov   $031e+x,a
1f74: f4 a5     mov   a,$a5+x
1f76: d5 26 03  mov   $0326+x,a
1f79: 2f 0a     bra   $1f85
1f7b: f5 6e 03  mov   a,$036e+x
1f7e: 28 02     and   a,#$02
1f80: f0 03     beq   $1f85
1f82: 3f 68 21  call  $2168
1f85: f4 b5     mov   a,$b5+x
1f87: 28 10     and   a,#$10
1f89: f0 0a     beq   $1f95
1f8b: f5 42 02  mov   a,$0242+x
1f8e: 68 01     cmp   a,#$01
1f90: d0 43     bne   $1fd5
1f92: 3f 4e 20  call  $204e
1f95: f5 62 02  mov   a,$0262+x
1f98: c4 04     mov   $04,a
1f9a: f5 6a 02  mov   a,$026a+x
1f9d: c4 05     mov   $05,a
1f9f: f5 11 02  mov   a,$0211+x
1fa2: 28 7f     and   a,#$7f
1fa4: 8d 02     mov   y,#$02
1fa6: 60        clrc
1fa7: 97 04     adc   a,($04)+y
1fa9: 60        clrc
1faa: 95 39 02  adc   a,$0239+x
1fad: 60        clrc
1fae: 85 41 02  adc   a,$0241
1fb1: c4 00     mov   $00,a
1fb3: 8d 00     mov   y,#$00
1fb5: f5 93 02  mov   a,$0293+x
1fb8: 10 01     bpl   $1fbb
1fba: dc        dec   y
1fbb: da 06     movw  $06,ya
1fbd: 3f 77 10  call  $1077
1fc0: f8 49     mov   x,$49
1fc2: d4 9d     mov   $9d+x,a
1fc4: db a5     mov   $a5+x,y
1fc6: e8 00     mov   a,#$00
1fc8: d4 8d     mov   $8d+x,a
1fca: d4 95     mov   $95+x,a
1fcc: f4 b5     mov   a,$b5+x
1fce: 28 40     and   a,#$40
1fd0: f0 03     beq   $1fd5
1fd2: 3f df 20  call  $20df
1fd5: f4 ad     mov   a,$ad+x
1fd7: 28 fd     and   a,#$fd
1fd9: d4 ad     mov   $ad+x,a
1fdb: f4 9d     mov   a,$9d+x
1fdd: d4 5a     mov   $5a+x,a
1fdf: f4 a5     mov   a,$a5+x
1fe1: d4 62     mov   $62+x,a
1fe3: f4 b5     mov   a,$b5+x
1fe5: 28 40     and   a,#$40
1fe7: f0 05     beq   $1fee
1fe9: 3f 1a 21  call  $211a
1fec: 2f 1d     bra   $200b
1fee: f5 16 03  mov   a,$0316+x
1ff1: f0 18     beq   $200b
1ff3: f5 42 02  mov   a,$0242+x
1ff6: 68 01     cmp   a,#$01
1ff8: d0 03     bne   $1ffd
1ffa: 3f 61 21  call  $2161
1ffd: f5 2e 03  mov   a,$032e+x
2000: f0 06     beq   $2008
2002: 9c        dec   a
2003: d5 2e 03  mov   $032e+x,a
2006: d0 03     bne   $200b
2008: 3f 93 21  call  $2193
200b: f5 cc 02  mov   a,$02cc+x
200e: f0 1b     beq   $202b
2010: f5 42 02  mov   a,$0242+x
2013: 68 01     cmp   a,#$01
2015: d0 03     bne   $201a
2017: 3f 2c 20  call  $202c
201a: f5 d4 02  mov   a,$02d4+x
201d: f0 0c     beq   $202b
201f: 9c        dec   a
2020: d5 d4 02  mov   $02d4+x,a
2023: d0 06     bne   $202b
2025: f5 76 11  mov   a,$1176+x
2028: 0e 9b 02  tset1 $029b
202b: 6f        ret

202c: f5 c4 02  mov   a,$02c4+x
202f: 28 01     and   a,#$01
2031: d0 1a     bne   $204d
2033: e8 00     mov   a,#$00
2035: d5 b4 02  mov   $02b4+x,a
2038: d5 bc 02  mov   $02bc+x,a
203b: f5 cc 02  mov   a,$02cc+x
203e: d5 d4 02  mov   $02d4+x,a
2041: f4 b5     mov   a,$b5+x
2043: 28 f7     and   a,#$f7
2045: d4 b5     mov   $b5+x,a
2047: f5 76 11  mov   a,$1176+x
204a: 4e 9b 02  tclr1 $029b
204d: 6f        ret

204e: f5 ee 02  mov   a,$02ee+x
2051: 30 3a     bmi   $208d
2053: f5 e6 02  mov   a,$02e6+x
2056: fd        mov   y,a
2057: e8 7f     mov   a,#$7f
2059: cf        mul   ya
205a: f5 19 02  mov   a,$0219+x
205d: 5d        mov   x,a
205e: f5 76 11  mov   a,$1176+x
2061: cf        mul   ya
2062: da 04     movw  $04,ya
2064: f5 ee 02  mov   a,$02ee+x
2067: f0 0b     beq   $2074
2069: cb 05     mov   $05,y
206b: 58 ff 05  eor   $05,#$ff
206e: 48 ff     eor   a,#$ff
2070: c4 04     mov   $04,a
2072: 3a 04     incw  $04
2074: f8 49     mov   x,$49
2076: ba 04     movw  ya,$04
2078: d4 8d     mov   $8d+x,a
207a: db 95     mov   $95+x,y
207c: e8 7f     mov   a,#$7f
207e: d5 f6 02  mov   $02f6+x,a
2081: e8 00     mov   a,#$00
2083: d5 fe 02  mov   $02fe+x,a
2086: f5 76 11  mov   a,$1176+x
2089: 0e dd 02  tset1 $02dd
208c: 6f        ret

208d: 1c        asl   a
208e: fd        mov   y,a
208f: f7 45     mov   a,($45)+y
2091: c4 04     mov   $04,a
2093: fc        inc   y
2094: f7 45     mov   a,($45)+y
2096: c4 05     mov   $05,a
2098: 8d 00     mov   y,#$00
209a: f7 04     mov   a,($04)+y
209c: 10 1f     bpl   $20bd
209e: 48 ff     eor   a,#$ff
20a0: bc        inc   a
20a1: fd        mov   y,a
20a2: f5 e6 02  mov   a,$02e6+x
20a5: cf        mul   ya
20a6: f5 19 02  mov   a,$0219+x
20a9: 5d        mov   x,a
20aa: f5 76 11  mov   a,$1176+x
20ad: cf        mul   ya
20ae: cb 05     mov   $05,y
20b0: 48 ff     eor   a,#$ff
20b2: 58 ff 05  eor   $05,#$ff
20b5: c4 04     mov   $04,a
20b7: 3a 04     incw  $04
20b9: ba 04     movw  ya,$04
20bb: 2f 0d     bra   $20ca
20bd: fd        mov   y,a
20be: f5 e6 02  mov   a,$02e6+x
20c1: cf        mul   ya
20c2: f5 19 02  mov   a,$0219+x
20c5: 5d        mov   x,a
20c6: f5 76 11  mov   a,$1176+x
20c9: cf        mul   ya
20ca: f8 49     mov   x,$49
20cc: d4 8d     mov   $8d+x,a
20ce: db 95     mov   $95+x,y
20d0: e8 00     mov   a,#$00
20d2: d5 f6 02  mov   $02f6+x,a
20d5: d5 fe 02  mov   $02fe+x,a
20d8: f5 76 11  mov   a,$1176+x
20db: 0e dd 02  tset1 $02dd
20de: 6f        ret

20df: e8 00     mov   a,#$00
20e1: d5 4e 03  mov   $034e+x,a
20e4: d5 56 03  mov   $0356+x,a
20e7: f5 19 02  mov   a,$0219+x
20ea: fd        mov   y,a
20eb: f6 76 11  mov   a,$1176+y
20ee: fd        mov   y,a
20ef: f5 0e 03  mov   a,$030e+x
20f2: cf        mul   ya
20f3: da 04     movw  $04,ya
20f5: f5 1e 03  mov   a,$031e+x
20f8: c4 06     mov   $06,a
20fa: f5 26 03  mov   a,$0326+x
20fd: c4 07     mov   $07,a
20ff: f4 9d     mov   a,$9d+x
2101: fb a5     mov   y,$a5+x
2103: 5a 06     cmpw  ya,$06
2105: b0 08     bcs   $210f
2107: 58 ff 04  eor   $04,#$ff
210a: 58 ff 05  eor   $05,#$ff
210d: 3a 04     incw  $04
210f: e4 04     mov   a,$04
2111: d5 5e 03  mov   $035e+x,a
2114: e4 05     mov   a,$05
2116: d5 66 03  mov   $0366+x,a
2119: 6f        ret

211a: f5 1e 03  mov   a,$031e+x
211d: c4 04     mov   $04,a
211f: 15 26 03  or    a,$0326+x
2122: f0 3c     beq   $2160
2124: f5 26 03  mov   a,$0326+x
2127: fd        mov   y,a
2128: f5 5e 03  mov   a,$035e+x
212b: 60        clrc
212c: 95 4e 03  adc   a,$034e+x
212f: d5 4e 03  mov   $034e+x,a
2132: c4 06     mov   $06,a
2134: f5 66 03  mov   a,$0366+x
2137: 95 56 03  adc   a,$0356+x
213a: d5 56 03  mov   $0356+x,a
213d: c4 07     mov   $07,a
213f: e4 04     mov   a,$04
2141: 7a 06     addw  ya,$06
2143: da 04     movw  $04,ya
2145: f4 9d     mov   a,$9d+x
2147: fb a5     mov   y,$a5+x
2149: 5a 04     cmpw  ya,$04
214b: f3 07 01  bbc7  $07,$214f
214e: ed        notc
214f: 90 07     bcc   $2158
2151: ba 04     movw  ya,$04
2153: d4 5a     mov   $5a+x,a
2155: db 62     mov   $62+x,y
2157: 6f        ret

2158: e8 00     mov   a,#$00
215a: d5 1e 03  mov   $031e+x,a
215d: d5 26 03  mov   $0326+x,a
2160: 6f        ret

2161: f5 6e 03  mov   a,$036e+x
2164: 28 03     and   a,#$03
2166: d0 2a     bne   $2192
2168: f5 16 03  mov   a,$0316+x
216b: d5 2e 03  mov   $032e+x,a
216e: e8 00     mov   a,#$00
2170: d5 46 03  mov   $0346+x,a
2173: d5 4e 03  mov   $034e+x,a
2176: d5 56 03  mov   $0356+x,a
2179: d5 5e 03  mov   $035e+x,a
217c: d5 66 03  mov   $0366+x,a
217f: d5 76 03  mov   $0376+x,a
2182: f5 0e 03  mov   a,$030e+x
2185: 1c        asl   a
2186: fd        mov   y,a
2187: f7 43     mov   a,($43)+y
2189: d5 36 03  mov   $0336+x,a
218c: fc        inc   y
218d: f7 43     mov   a,($43)+y
218f: d5 3e 03  mov   $033e+x,a
2192: 6f        ret

2193: f5 46 03  mov   a,$0346+x
2196: f0 0d     beq   $21a5
2198: f5 1e 03  mov   a,$031e+x
219b: c4 06     mov   $06,a
219d: f5 26 03  mov   a,$0326+x
21a0: c4 07     mov   $07,a
21a2: 5f a6 22  jmp   $22a6

21a5: f5 36 03  mov   a,$0336+x
21a8: c4 04     mov   $04,a
21aa: f5 3e 03  mov   a,$033e+x
21ad: c4 05     mov   $05,a
21af: 8d 00     mov   y,#$00
21b1: f7 04     mov   a,($04)+y
21b3: 68 fb     cmp   a,#$fb
21b5: 90 09     bcc   $21c0
21b7: a8 fb     sbc   a,#$fb
21b9: 1c        asl   a
21ba: d8 00     mov   $00,x
21bc: 5d        mov   x,a
21bd: 1f b8 22  jmp   ($22b8+x)

21c0: d5 46 03  mov   $0346+x,a
21c3: 3a 04     incw  $04
21c5: f7 04     mov   a,($04)+y
21c7: c4 00     mov   $00,a
21c9: c4 02     mov   $02,a
21cb: 3a 04     incw  $04
21cd: e4 04     mov   a,$04
21cf: d5 36 03  mov   $0336+x,a
21d2: e4 05     mov   a,$05
21d4: d5 3e 03  mov   $033e+x,a
21d7: e4 00     mov   a,$00
21d9: d0 09     bne   $21e4
21db: d5 1e 03  mov   $031e+x,a
21de: d5 26 03  mov   $0326+x,a
21e1: 5f b0 22  jmp   $22b0

21e4: 10 47     bpl   $222d
21e6: 48 ff     eor   a,#$ff
21e8: bc        inc   a
21e9: c4 00     mov   $00,a
21eb: f5 5e 03  mov   a,$035e+x
21ee: c4 04     mov   $04,a
21f0: f5 66 03  mov   a,$0366+x
21f3: c4 05     mov   $05,a
21f5: 04 04     or    a,$04
21f7: d0 72     bne   $226b
21f9: f4 a5     mov   a,$a5+x
21fb: 5c        lsr   a
21fc: c4 05     mov   $05,a
21fe: f4 9d     mov   a,$9d+x
2200: 7c        ror   a
2201: c4 04     mov   $04,a
2203: f5 06 03  mov   a,$0306+x
2206: 68 0c     cmp   a,#$0c
2208: b0 17     bcs   $2221
220a: fd        mov   y,a
220b: f6 68 27  mov   a,$2768+y
220e: c4 01     mov   $01,a
2210: eb 05     mov   y,$05
2212: cf        mul   ya
2213: da 06     movw  $06,ya
2215: e4 01     mov   a,$01
2217: eb 04     mov   y,$04
2219: cf        mul   ya
221a: dd        mov   a,y
221b: 8d 00     mov   y,#$00
221d: 7a 06     addw  ya,$06
221f: da 04     movw  $04,ya
2221: e4 04     mov   a,$04
2223: d5 5e 03  mov   $035e+x,a
2226: e4 05     mov   a,$05
2228: d5 66 03  mov   $0366+x,a
222b: 2f 3e     bra   $226b
222d: f5 4e 03  mov   a,$034e+x
2230: c4 04     mov   $04,a
2232: f5 56 03  mov   a,$0356+x
2235: c4 05     mov   $05,a
2237: 04 04     or    a,$04
2239: d0 30     bne   $226b
223b: f4 a5     mov   a,$a5+x
223d: c4 05     mov   $05,a
223f: f4 9d     mov   a,$9d+x
2241: c4 04     mov   $04,a
2243: f5 06 03  mov   a,$0306+x
2246: 68 0c     cmp   a,#$0c
2248: b0 17     bcs   $2261
224a: fd        mov   y,a
224b: f6 5c 27  mov   a,$275c+y
224e: c4 01     mov   $01,a
2250: eb 05     mov   y,$05
2252: cf        mul   ya
2253: da 06     movw  $06,ya
2255: e4 01     mov   a,$01
2257: eb 04     mov   y,$04
2259: cf        mul   ya
225a: dd        mov   a,y
225b: 8d 00     mov   y,#$00
225d: 7a 06     addw  ya,$06
225f: da 04     movw  $04,ya
2261: e4 04     mov   a,$04
2263: d5 4e 03  mov   $034e+x,a
2266: e4 05     mov   a,$05
2268: d5 56 03  mov   $0356+x,a
226b: ab 00     inc   $00
226d: e4 00     mov   a,$00
226f: eb 05     mov   y,$05
2271: cf        mul   ya
2272: da 06     movw  $06,ya
2274: e4 00     mov   a,$00
2276: eb 04     mov   y,$04
2278: cf        mul   ya
2279: c4 00     mov   $00,a
227b: dd        mov   a,y
227c: 8d 00     mov   y,#$00
227e: 7a 06     addw  ya,$06
2280: cb 07     mov   $07,y
2282: 0b 00     asl   $00
2284: 3c        rol   a
2285: 2b 07     rol   $07
2287: eb 02     mov   y,$02
2289: 10 11     bpl   $229c
228b: 58 ff 00  eor   $00,#$ff
228e: 48 ff     eor   a,#$ff
2290: 58 ff 07  eor   $07,#$ff
2293: ab 00     inc   $00
2295: d0 05     bne   $229c
2297: bc        inc   a
2298: d0 02     bne   $229c
229a: ab 07     inc   $07
229c: c4 06     mov   $06,a
229e: d5 1e 03  mov   $031e+x,a
22a1: e4 07     mov   a,$07
22a3: d5 26 03  mov   $0326+x,a
22a6: f4 5a     mov   a,$5a+x
22a8: fb 62     mov   y,$62+x
22aa: 7a 06     addw  ya,$06
22ac: d4 5a     mov   $5a+x,a
22ae: db 62     mov   $62+x,y
22b0: f5 46 03  mov   a,$0346+x
22b3: 9c        dec   a
22b4: d5 46 03  mov   $0346+x,a
22b7: 6f        ret

22b8: dw $22c2  ;
22ba: dw $22d4  ;
22bc: dw $22cc  ;
22be: dw $22e8  ;
22bf: dw $22c2  ;

22c1: f8 00     mov   x,$00
22c4: e8 ff     mov   a,#$ff
22c6: d5 46 03  mov   $0346+x,a
22c9: 5f 93 21  jmp   $2193

22cc: f8 00     mov   x,$00
22ce: 3f 82 21  call  $2182
22d1: 5f a5 21  jmp   $21a5

22d4: f8 00     mov   x,$00
22d6: 3a 04     incw  $04
22d8: f7 04     mov   a,($04)+y
22da: c4 00     mov   $00,a
22dc: 3a 04     incw  $04
22de: f7 04     mov   a,($04)+y
22e0: c4 05     mov   $05,a
22e2: fa 00 04  mov   ($04),($00)
22e5: 5f af 21  jmp   $21af

22e8: 3a 04     incw  $04
22ea: f8 00     mov   x,$00
22ec: f5 76 03  mov   a,$0376+x
22ef: f0 0d     beq   $22fe
22f1: 9c        dec   a
22f2: d5 76 03  mov   $0376+x,a
22f5: d0 dd     bne   $22d4
22f7: 3a 04     incw  $04
22f9: 3a 04     incw  $04
22fb: 5f af 21  jmp   $21af

22fe: f7 04     mov   a,($04)+y
2300: d5 76 03  mov   $0376+x,a
2303: 2f cf     bra   $22d4
2305: f8 49     mov   x,$49
2307: f5 21 02  mov   a,$0221+x
230a: 9c        dec   a
230b: d0 0b     bne   $2318
230d: f5 11 02  mov   a,$0211+x
2310: 30 06     bmi   $2318
2312: f5 76 11  mov   a,$1176+x
2315: 0e 8b 00  tset1 $008b
2318: f5 42 02  mov   a,$0242+x
231b: 1c        asl   a
231c: 5d        mov   x,a
231d: 1f 20 23  jmp   ($2320+x)

2320: dw $232c  ;
2322: dw $2335  ;
2324: dw $2349  ;
2326: dw $2355  ;
2328: dw $2363  ;
232a: dw $236a  ;

232c: f8 49     mov   x,$49
232e: f5 76 11  mov   a,$1176+x
2331: 0e 8b 00  tset1 $008b
2334: 6f        ret

2335: f8 49     mov   x,$49
2337: f5 76 11  mov   a,$1176+x
233a: 0e 8a 00  tset1 $008a
233d: f4 72     mov   a,$72+x
233f: 08 80     or    a,#$80
2341: d4 72     mov   $72+x,a
2343: e8 02     mov   a,#$02
2345: d5 42 02  mov   $0242+x,a
2348: 6f        ret

2349: f8 49     mov   x,$49
234b: f5 29 02  mov   a,$0229+x
234e: f0 05     beq   $2355
2350: 9c        dec   a
2351: d5 29 02  mov   $0229+x,a
2354: 6f        ret

2355: f8 49     mov   x,$49
2357: f4 72     mov   a,$72+x
2359: 28 7f     and   a,#$7f
235b: d4 72     mov   $72+x,a
235d: e8 04     mov   a,#$04
235f: d5 42 02  mov   $0242+x,a
2362: 6f        ret

2363: f8 49     mov   x,$49
2365: e8 05     mov   a,#$05
2367: d5 42 02  mov   $0242+x,a
236a: 6f        ret

236b: e8 00     mov   a,#$00
236d: c5 40 01  mov   $0140,a
2370: cd 07     mov   x,#$07
2372: e5 41 01  mov   a,$0141
2375: 35 76 11  and   a,$1176+x
2378: f0 03     beq   $237d
237a: 5f 03 24  jmp   $2403

237d: f4 ad     mov   a,$ad+x
237f: 10 7c     bpl   $23fd
2381: 28 20     and   a,#$20
2383: d0 78     bne   $23fd
2385: 3f 19 24  call  $2419
2388: f4 5a     mov   a,$5a+x
238a: 60        clrc
238b: 94 8d     adc   a,$8d+x
238d: c4 00     mov   $00,a
238f: f4 62     mov   a,$62+x
2391: 94 95     adc   a,$95+x
2393: 8d 03     mov   y,#$03
2395: 4f 13     pcall $13
2397: e4 00     mov   a,$00
2399: 8d 02     mov   y,#$02
239b: 4f 13     pcall $13
239d: f5 42 02  mov   a,$0242+x
23a0: 68 04     cmp   a,#$04
23a2: d0 0e     bne   $23b2
23a4: f4 82     mov   a,$82+x
23a6: 8d 07     mov   y,#$07
23a8: 4f 13     pcall $13
23aa: f4 72     mov   a,$72+x
23ac: 8d 05     mov   y,#$05
23ae: 4f 13     pcall $13
23b0: 2f 2d     bra   $23df
23b2: e4 8a     mov   a,$8a
23b4: 35 76 11  and   a,$1176+x
23b7: f0 26     beq   $23df
23b9: 8d 08     mov   y,#$08
23bb: 4f 24     pcall $24
23bd: 68 03     cmp   a,#$03
23bf: b0 f8     bcs   $23b9
23c1: f4 72     mov   a,$72+x
23c3: 8d 05     mov   y,#$05
23c5: 4f 13     pcall $13
23c7: f4 7a     mov   a,$7a+x
23c9: 8d 06     mov   y,#$06
23cb: 4f 13     pcall $13
23cd: f4 ad     mov   a,$ad+x
23cf: 28 04     and   a,#$04
23d1: f0 0c     beq   $23df
23d3: f4 ad     mov   a,$ad+x
23d5: 28 fb     and   a,#$fb
23d7: d4 ad     mov   $ad+x,a
23d9: f4 6a     mov   a,$6a+x
23db: 8d 04     mov   y,#$04
23dd: 4f 13     pcall $13
23df: f5 73 02  mov   a,$0273+x
23e2: 30 11     bmi   $23f5
23e4: 08 80     or    a,#$80
23e6: d5 73 02  mov   $0273+x,a
23e9: f4 4a     mov   a,$4a+x
23eb: 8d 01     mov   y,#$01
23ed: 4f 13     pcall $13
23ef: f4 52     mov   a,$52+x
23f1: 8d 00     mov   y,#$00
23f3: 4f 13     pcall $13
23f5: f5 76 11  mov   a,$1176+x
23f8: 0e 40 01  tset1 $0140
23fb: 2f 06     bra   $2403
23fd: f5 76 11  mov   a,$1176+x
2400: 0e 8b 00  tset1 $008b
2403: 1d        dec   x
2404: 30 03     bmi   $2409
2406: 5f 72 23  jmp   $2372

2409: e4 8a     mov   a,$8a
240b: c5 4a 01  mov   $014a,a
240e: e4 8b     mov   a,$8b
2410: c5 4c 01  mov   $014c,a
2413: e4 8c     mov   a,$8c
2415: c5 50 01  mov   $0150,a
2418: 6f        ret

2419: f5 42 01  mov   a,$0142+x
241c: f0 17     beq   $2435
241e: 9c        dec   a
241f: f0 15     beq   $2436
2421: 8d 08     mov   y,#$08
2423: 4f 24     pcall $24
2425: 68 03     cmp   a,#$03
2427: b0 20     bcs   $2449
2429: e4 8a     mov   a,$8a
242b: 35 76 11  and   a,$1176+x
242e: f0 19     beq   $2449
2430: e8 00     mov   a,#$00
2432: d5 42 01  mov   $0142+x,a
2435: 6f        ret

2436: f4 ad     mov   a,$ad+x
2438: 08 04     or    a,#$04
243a: d4 ad     mov   $ad+x,a
243c: f5 73 02  mov   a,$0273+x
243f: 28 7f     and   a,#$7f
2441: d5 73 02  mov   $0273+x,a
2444: e8 02     mov   a,#$02
2446: d5 42 01  mov   $0142+x,a
2449: ae        pop   a
244a: ae        pop   a
244b: 2f b0     bra   $23fd
244d: e5 9e 03  mov   a,$039e
2450: f0 28     beq   $247a
2452: 30 47     bmi   $249b
2454: 60        clrc
2455: 85 a0 03  adc   a,$03a0
2458: c5 a0 03  mov   $03a0,a
245b: 10 1d     bpl   $247a
245d: 28 7f     and   a,#$7f
245f: c5 a0 03  mov   $03a0,a
2462: e5 72 02  mov   a,$0272
2465: 80        setc
2466: a5 9f 03  sbc   a,$039f
2469: c5 72 02  mov   $0272,a
246c: 68 05     cmp   a,#$05
246e: 30 02     bmi   $2472
2470: b0 09     bcs   $247b
2472: 3f 6a 15  call  $156a
2475: e8 00     mov   a,#$00
2477: c5 9e 03  mov   $039e,a
247a: 6f        ret

247b: e5 41 01  mov   a,$0141
247e: c4 03     mov   $03,a
2480: 8f 07 49  mov   $49,#$07
2483: 0b 03     asl   $03
2485: b0 0f     bcs   $2496
2487: f8 49     mov   x,$49
2489: f4 ad     mov   a,$ad+x
248b: 10 09     bpl   $2496
248d: f5 73 02  mov   a,$0273+x
2490: 3f 11 1f  call  $1f11
2493: 3f c7 24  call  $24c7
2496: 8b 49     dec   $49
2498: 10 e9     bpl   $2483
249a: 6f        ret

249b: 28 7f     and   a,#$7f
249d: 60        clrc
249e: 85 a0 03  adc   a,$03a0
24a1: c5 a0 03  mov   $03a0,a
24a4: 10 d4     bpl   $247a
24a6: 28 7f     and   a,#$7f
24a8: c5 a0 03  mov   $03a0,a
24ab: e5 72 02  mov   a,$0272
24ae: 60        clrc
24af: 85 9f 03  adc   a,$039f
24b2: c5 72 02  mov   $0272,a
24b5: 65 a1 03  cmp   a,$03a1
24b8: 90 c1     bcc   $247b
24ba: e5 a1 03  mov   a,$03a1
24bd: c5 72 02  mov   $0272,a
24c0: e8 00     mov   a,#$00
24c2: c5 9e 03  mov   $039e,a
24c5: 2f b4     bra   $247b
24c7: f4 4a     mov   a,$4a+x
24c9: 8d 01     mov   y,#$01
24cb: 4f 13     pcall $13
24cd: f4 52     mov   a,$52+x
24cf: 8d 00     mov   y,#$00
24d1: 5f 13 ff  jmp   $ff13

24d4: e5 9b 02  mov   a,$029b
24d7: 05 dd 02  or    a,$02dd
24da: d0 01     bne   $24dd
24dc: 6f        ret

24dd: e5 41 01  mov   a,$0141
24e0: c4 03     mov   $03,a
24e2: 8f 07 49  mov   $49,#$07
24e5: f8 49     mov   x,$49
24e7: 0b 03     asl   $03
24e9: b0 3c     bcs   $2527
24eb: f4 ad     mov   a,$ad+x
24ed: 10 38     bpl   $2527
24ef: 8f 00 04  mov   $04,#$00
24f2: 8f 00 05  mov   $05,#$00
24f5: e5 9b 02  mov   a,$029b
24f8: 35 76 11  and   a,$1176+x
24fb: f0 18     beq   $2515
24fd: 3f 2c 25  call  $252c
2500: da 04     movw  $04,ya
2502: f8 49     mov   x,$49
2504: e5 dc 02  mov   a,$02dc
2507: 35 76 11  and   a,$1176+x
250a: f0 09     beq   $2515
250c: 3f e1 26  call  $26e1
250f: 8f 00 04  mov   $04,#$00
2512: 8f 00 05  mov   $05,#$00
2515: e5 dd 02  mov   a,$02dd
2518: 35 76 11  and   a,$1176+x
251b: f0 07     beq   $2524
251d: 3f 3e 26  call  $263e
2520: 7a 04     addw  ya,$04
2522: da 04     movw  $04,ya
2524: 3f fd 26  call  $26fd
2527: 8b 49     dec   $49
2529: 10 ba     bpl   $24e5
252b: 6f        ret

252c: f5 ac 02  mov   a,$02ac+x
252f: 10 03     bpl   $2534
2531: 5f e7 25  jmp   $25e7

2534: 68 02     cmp   a,#$02
2536: d0 03     bne   $253b
2538: 5f db 25  jmp   $25db

253b: c4 01     mov   $01,a
253d: e8 80     mov   a,#$80
253f: 80        setc
2540: b5 9c 02  sbc   a,$029c+x
2543: c4 00     mov   $00,a
2545: f5 bc 02  mov   a,$02bc+x
2548: 60        clrc
2549: 88 7f     adc   a,#$7f
254b: 8d 00     mov   y,#$00
254d: f8 00     mov   x,$00
254f: 9e        div   ya,x
2550: c4 00     mov   $00,a
2552: dd        mov   a,y
2553: f8 49     mov   x,$49
2555: d5 bc 02  mov   $02bc+x,a
2558: f4 b5     mov   a,$b5+x
255a: 28 08     and   a,#$08
255c: 13 01 04  bbc0  $01,$2563
255f: d0 5d     bne   $25be
2561: 2f 4c     bra   $25af
2563: d0 21     bne   $2586
2565: f5 b4 02  mov   a,$02b4+x
2568: 60        clrc
2569: 84 00     adc   a,$00
256b: d5 b4 02  mov   $02b4+x,a
256e: 30 2b     bmi   $259b
2570: 68 7f     cmp   a,#$7f
2572: d0 06     bne   $257a
2574: f4 b5     mov   a,$b5+x
2576: 48 08     eor   a,#$08
2578: d4 b5     mov   $b5+x,a
257a: f5 b4 02  mov   a,$02b4+x
257d: fd        mov   y,a
257e: f5 a4 02  mov   a,$02a4+x
2581: cf        mul   ya
2582: dd        mov   a,y
2583: 8d 00     mov   y,#$00
2585: 6f        ret

2586: f5 b4 02  mov   a,$02b4+x
2589: 80        setc
258a: a4 00     sbc   a,$00
258c: d5 b4 02  mov   $02b4+x,a
258f: 10 e9     bpl   $257a
2591: 68 81     cmp   a,#$81
2593: d0 06     bne   $259b
2595: f4 b5     mov   a,$b5+x
2597: 48 08     eor   a,#$08
2599: d4 b5     mov   $b5+x,a
259b: f5 b4 02  mov   a,$02b4+x
259e: 48 ff     eor   a,#$ff
25a0: bc        inc   a
25a1: fd        mov   y,a
25a2: f5 a4 02  mov   a,$02a4+x
25a5: cf        mul   ya
25a6: dd        mov   a,y
25a7: f0 05     beq   $25ae
25a9: 48 ff     eor   a,#$ff
25ab: bc        inc   a
25ac: 8d ff     mov   y,#$ff
25ae: 6f        ret

25af: f5 b4 02  mov   a,$02b4+x
25b2: 60        clrc
25b3: 84 00     adc   a,$00
25b5: d5 b4 02  mov   $02b4+x,a
25b8: 68 7f     cmp   a,#$7f
25ba: d0 13     bne   $25cf
25bc: 2f 0b     bra   $25c9
25be: f5 b4 02  mov   a,$02b4+x
25c1: 80        setc
25c2: a4 00     sbc   a,$00
25c4: d5 b4 02  mov   $02b4+x,a
25c7: d0 06     bne   $25cf
25c9: f4 b5     mov   a,$b5+x
25cb: 48 08     eor   a,#$08
25cd: d4 b5     mov   $b5+x,a
25cf: f5 b4 02  mov   a,$02b4+x
25d2: fd        mov   y,a
25d3: f5 a4 02  mov   a,$02a4+x
25d6: cf        mul   ya
25d7: dd        mov   a,y
25d8: 8d 00     mov   y,#$00
25da: 6f        ret

25db: 9c        dec   a
25dc: 3f 3b 25  call  $253b
25df: 48 ff     eor   a,#$ff
25e1: bc        inc   a
25e2: f0 02     beq   $25e6
25e4: 8d ff     mov   y,#$ff
25e6: 6f        ret

25e7: 1c        asl   a
25e8: fd        mov   y,a
25e9: f5 9c 02  mov   a,$029c+x
25ec: 60        clrc
25ed: 95 b4 02  adc   a,$02b4+x
25f0: d5 b4 02  mov   $02b4+x,a
25f3: 10 0c     bpl   $2601
25f5: 28 7f     and   a,#$7f
25f7: d5 b4 02  mov   $02b4+x,a
25fa: f5 bc 02  mov   a,$02bc+x
25fd: bc        inc   a
25fe: d5 bc 02  mov   $02bc+x,a
2601: f7 45     mov   a,($45)+y
2603: c4 04     mov   $04,a
2605: fc        inc   y
2606: f7 45     mov   a,($45)+y
2608: c4 05     mov   $05,a
260a: f5 bc 02  mov   a,$02bc+x
260d: fd        mov   y,a
260e: f7 04     mov   a,($04)+y
2610: 68 80     cmp   a,#$80
2612: f0 20     beq   $2634
2614: 90 15     bcc   $262b
2616: 48 ff     eor   a,#$ff
2618: bc        inc   a
2619: fd        mov   y,a
261a: f5 a4 02  mov   a,$02a4+x
261d: cf        mul   ya
261e: dd        mov   a,y
261f: 48 ff     eor   a,#$ff
2621: c4 04     mov   $04,a
2623: 8f ff 05  mov   $05,#$ff
2626: 3a 04     incw  $04
2628: ba 04     movw  ya,$04
262a: 6f        ret

262b: fd        mov   y,a
262c: f5 a4 02  mov   a,$02a4+x
262f: cf        mul   ya
2630: dd        mov   a,y
2631: 8d 00     mov   y,#$00
2633: 6f        ret

2634: dd        mov   a,y
2635: f0 f3     beq   $262a
2637: e8 00     mov   a,#$00
2639: d5 bc 02  mov   $02bc+x,a
263c: 2f cf     bra   $260d
263e: f5 ee 02  mov   a,$02ee+x
2641: 30 45     bmi   $2688
2643: f0 02     beq   $2647
2645: e8 ff     mov   a,#$ff
2647: c4 01     mov   $01,a
2649: e8 80     mov   a,#$80
264b: 80        setc
264c: b5 de 02  sbc   a,$02de+x
264f: c4 00     mov   $00,a
2651: f5 fe 02  mov   a,$02fe+x
2654: 60        clrc
2655: 88 7f     adc   a,#$7f
2657: 8d 00     mov   y,#$00
2659: f8 00     mov   x,$00
265b: 9e        div   ya,x
265c: c4 00     mov   $00,a
265e: dd        mov   a,y
265f: f8 49     mov   x,$49
2661: d5 fe 02  mov   $02fe+x,a
2664: f5 f6 02  mov   a,$02f6+x
2667: 80        setc
2668: a4 00     sbc   a,$00
266a: d0 09     bne   $2675
266c: fd        mov   y,a
266d: f5 76 11  mov   a,$1176+x
2670: 4e dd 02  tclr1 $02dd
2673: dd        mov   a,y
2674: 6f        ret

2675: d5 f6 02  mov   $02f6+x,a
2678: fd        mov   y,a
2679: f5 e6 02  mov   a,$02e6+x
267c: cf        mul   ya
267d: dd        mov   a,y
267e: f0 07     beq   $2687
2680: eb 01     mov   y,$01
2682: f0 03     beq   $2687
2684: 48 ff     eor   a,#$ff
2686: bc        inc   a
2687: 6f        ret

2688: 1c        asl   a
2689: fd        mov   y,a
268a: f5 de 02  mov   a,$02de+x
268d: 60        clrc
268e: 95 f6 02  adc   a,$02f6+x
2691: d5 f6 02  mov   $02f6+x,a
2694: 10 0c     bpl   $26a2
2696: 28 7f     and   a,#$7f
2698: d5 f6 02  mov   $02f6+x,a
269b: f5 fe 02  mov   a,$02fe+x
269e: bc        inc   a
269f: d5 fe 02  mov   $02fe+x,a
26a2: f7 45     mov   a,($45)+y
26a4: c4 04     mov   $04,a
26a6: fc        inc   y
26a7: f7 45     mov   a,($45)+y
26a9: c4 05     mov   $05,a
26ab: f5 fe 02  mov   a,$02fe+x
26ae: fd        mov   y,a
26af: f7 04     mov   a,($04)+y
26b1: 68 80     cmp   a,#$80
26b3: f0 20     beq   $26d5
26b5: 90 15     bcc   $26cc
26b7: 48 ff     eor   a,#$ff
26b9: bc        inc   a
26ba: fd        mov   y,a
26bb: f5 e6 02  mov   a,$02e6+x
26be: cf        mul   ya
26bf: dd        mov   a,y
26c0: 48 ff     eor   a,#$ff
26c2: c4 04     mov   $04,a
26c4: 8f ff 05  mov   $05,#$ff
26c7: 3a 04     incw  $04
26c9: ba 04     movw  ya,$04
26cb: 6f        ret

26cc: fd        mov   y,a
26cd: f5 e6 02  mov   a,$02e6+x
26d0: cf        mul   ya
26d1: dd        mov   a,y
26d2: 8d 00     mov   y,#$00
26d4: 6f        ret

26d5: dd        mov   a,y
26d6: f0 f3     beq   $26cb
26d8: f5 fe 02  mov   a,$02fe+x
26db: 9c        dec   a
26dc: d5 fe 02  mov   $02fe+x,a
26df: 2f cd     bra   $26ae
26e1: e4 04     mov   a,$04
26e3: 10 03     bpl   $26e8
26e5: 48 ff     eor   a,#$ff
26e7: bc        inc   a
26e8: 1c        asl   a
26e9: bc        inc   a
26ea: fd        mov   y,a
26eb: f5 73 02  mov   a,$0273+x
26ee: cf        mul   ya
26ef: cb 04     mov   $04,y
26f1: f5 73 02  mov   a,$0273+x
26f4: 80        setc
26f5: a4 04     sbc   a,$04
26f7: 3f 11 1f  call  $1f11
26fa: 5f c7 24  jmp   $24c7

26fd: f8 49     mov   x,$49
26ff: f5 19 02  mov   a,$0219+x
2702: 1c        asl   a
2703: 5d        mov   x,a
2704: e4 04     mov   a,$04
2706: 1f 09 27  jmp   ($2709+x)

2709: dw $2724  ;
270b: dw $2721  ;
270d: dw $271e  ;
270f: dw $271b  ;
2711: dw $2718  ;
2713: dw $2715  ;

2715: 1c        asl   a
2716: 2b 05     rol   $05
2718: 1c        asl   a
2719: 2b 05     rol   $05
271b: 1c        asl   a
271c: 2b 05     rol   $05
271e: 1c        asl   a
271f: 2b 05     rol   $05
2721: 1c        asl   a
2722: 2b 05     rol   $05
2724: c4 04     mov   $04,a
2726: f8 49     mov   x,$49
2728: e4 05     mov   a,$05
272a: d4 95     mov   $95+x,a
272c: e4 04     mov   a,$04
272e: d4 8d     mov   $8d+x,a
2730: 60        clrc
2731: 94 5a     adc   a,$5a+x
2733: c4 04     mov   $04,a
2735: f4 62     mov   a,$62+x
2737: 84 05     adc   a,$05
2739: 8d 03     mov   y,#$03
273b: 4f 13     pcall $13
273d: e4 04     mov   a,$04
273f: 8d 02     mov   y,#$02
2741: 5f 13 ff  jmp   $ff13

2744: db $ac,$bc,$cc,$dc,$ec,$fc,$0c,$1c
274c: db $03,$03,$03,$03,$03,$03,$04,$04

; 2753: note length table (index 0 must not be used)
2754: db $c0,$60,$30,$18,$0c,$06,$03,$01

275c: 00
275d: 0f
275e: 1f 30 43
2761: 56 6a 80
2764: 96 af c8
2767: e3 00 1d
276a: 38 52 6a
276d: 81
276e: 96 aa be
2771: d0 e1
2773: f1
2774: 01
2775: 02 02
2777: 01
2778: 01
2779: 02 02
277b: 01
277c: 01
277d: 02 02
277f: 02 02
2781: 02 00
2783: 00
2784: 00
2785: 02 04
2787: 02 03
2789: 04 01
278b: 02 02
278d: 04 01
278f: 01
2790: 00
2791: 00
2792: 01
2793: 03 02 03
2796: 02 02
2798: 01
2799: 01
279a: 01
279b: 01
279c: 01
279d: 01
279e: 01
279f: 01
27a0: 01
27a1: 01
27a2: 00
27a3: 00
27a4: 00
27a5: 01
27a6: 01
27a7: 01
27a8: 01
27a9: 01
27aa: 01
27ab: 01
27ac: 01
27ad: 01
27ae: 01
27af: 01
27b0: 01
27b1: 00
27b2: 00
27b3: 00
27b4: 03 03 03
27b7: 03 00 00
27ba: 00
27bb: 00
27bc: 00
27bd: 00
27be: 02 02
27c0: 02 02
27c2: 02 20
27c4: 3f 20
27c6: 41 20
27c8: 43 20
27ca: 45 20
27cc: 47 10
27ce: bd
27cf: 51
27d0: 52 10
27d2: 8c 80 ad
27d5: 80
27d6: b5 10 bd
27d9: 12 00
27db: 82 01
27dd: 82 09
27df: 82 11
27e1: 82 19
27e3: 82 21
27e5: 82 29
27e7: 82 31
27e9: 82 39
27eb: 12 41
27ed: 80
27ee: 9d
27ef: 80
27f0: a5 82 42
27f3: 82 4a
27f5: 82 52
27f7: 82 5a
27f9: 13 a1 82
27fc: 73 82 7b
27ff: 82 93
2801: 12 9b
2803: 82 9c
2805: 82 a4
2807: 82 ac
2809: 82 b4
280b: 82 bc
280d: 82 c4
280f: 82 cc
2811: 82 d4
2813: 12 dc
2815: 12 dd
2817: 82 de
2819: 82 e6
281b: 82 ee
281d: 82 f6
281f: 82 fe
2821: 83 06 83
2824: 0e 83 16
2827: 83 1e 83
282a: 26
282b: 83 2e 83
282e: 36 83 3e
2831: 83 46 83
2834: 4e 83 56
2837: 83 5e 83
283a: 66
283b: 83 6e 83
283e: 76 83 7e
2841: 83 86 83
2844: 8e
2845: 83 96 13
2848: a3 83 a4
284b: 82 83
284d: 82 8b
284f: 00

2850: e8 7f     mov   a,#$7f
2852: c5 d0 06  mov   $06d0,a
2855: cd 03     mov   x,#$03
2857: e8 00     mov   a,#$00
2859: d4 c7     mov   $c7+x,a
285b: d4 cc     mov   $cc+x,a
285d: 1d        dec   x
285e: 10 f9     bpl   $2859
2860: c5 9d 06  mov   $069d,a
2863: c5 9e 06  mov   $069e,a
2866: fd        mov   y,a
2867: f7 16     mov   a,($16)+y
2869: c4 c0     mov   $c0,a
286b: fc        inc   y
286c: f7 16     mov   a,($16)+y
286e: c4 c1     mov   $c1,a
2870: e8 ff     mov   a,#$ff
2872: 8d 2f     mov   y,#$2f
2874: 5a 16     cmpw  ya,$16
2876: b0 2c     bcs   $28a4
2878: e8 ff     mov   a,#$ff
287a: 8d fe     mov   y,#$fe
287c: 5a 16     cmpw  ya,$16
287e: 90 24     bcc   $28a4
2880: 8d 02     mov   y,#$02
2882: f7 16     mov   a,($16)+y
2884: c4 c2     mov   $c2,a
2886: fc        inc   y
2887: f7 16     mov   a,($16)+y
2889: c4 c3     mov   $c3,a
288b: fc        inc   y
288c: f7 16     mov   a,($16)+y
288e: c4 c4     mov   $c4,a
2890: fc        inc   y
2891: f7 16     mov   a,($16)+y
2893: c4 c5     mov   $c5,a
2895: 8d 00     mov   y,#$00
2897: f7 c0     mov   a,($c0)+y
2899: fc        inc   y
289a: 17 c0     or    a,($c0)+y
289c: f0 03     beq   $28a1
289e: fc        inc   y
289f: d0 f6     bne   $2897
28a1: dd        mov   a,y
28a2: 5c        lsr   a
28a3: 6f        ret

28a4: e8 00     mov   a,#$00
28a6: 6f        ret

28a7: 3f e5 28  call  $28e5
28aa: 3f a8 29  call  $29a8
28ad: 3f e6 29  call  $29e6
28b0: 8f 03 c6  mov   $c6,#$03
28b3: f8 c6     mov   x,$c6
28b5: f4 c7     mov   a,$c7+x
28b7: 10 0f     bpl   $28c8
28b9: 3f ef 29  call  $29ef
28bc: 3f a7 2d  call  $2da7
28bf: 3f 12 2e  call  $2e12
28c2: 3f 3d 2e  call  $2e3d
28c5: 3f 0d 2f  call  $2f0d
28c8: 8b c6     dec   $c6
28ca: 10 e7     bpl   $28b3
28cc: 5f 41 2f  jmp   $2f41

28cf: e4 2c     mov   a,$2c
28d1: 30 10     bmi   $28e3
28d3: 1a c4     decw  $c4
28d5: eb 00     mov   y,$00
28d7: f7 c4     mov   a,($c4)+y
28d9: eb 2c     mov   y,$2c
28db: 77 c4     cmp   a,($c4)+y
28dd: 3a c4     incw  $c4
28df: b0 02     bcs   $28e3
28e1: 60        clrc
28e2: 6f        ret

28e3: 80        setc
28e4: 6f        ret

28e5: e8 00     mov   a,#$00
28e7: c5 9b 06  mov   $069b,a
28ea: e5 9e 06  mov   a,$069e
28ed: f0 08     beq   $28f7
28ef: 3f 57 29  call  $2957
28f2: e8 00     mov   a,#$00
28f4: c5 9e 06  mov   $069e,a
28f7: e4 2c     mov   a,$2c
28f9: 30 5b     bmi   $2956
28fb: 9c        dec   a
28fc: c4 00     mov   $00,a
28fe: c4 2c     mov   $2c,a
2900: e2 2c     set7  $2c
2902: 1c        asl   a
2903: fd        mov   y,a
2904: f7 c0     mov   a,($c0)+y
2906: c4 04     mov   $04,a
2908: fc        inc   y
2909: f7 c0     mov   a,($c0)+y
290b: c4 05     mov   $05,a
290d: 8d 00     mov   y,#$00
290f: f7 04     mov   a,($04)+y
2911: 25 41 01  and   a,$0141
2914: f0 15     beq   $292b
2916: c4 01     mov   $01,a
2918: eb 00     mov   y,$00
291a: f7 c4     mov   a,($c4)+y
291c: cd 00     mov   x,#$00
291e: 4b 01     lsr   $01
2920: 90 04     bcc   $2926
2922: 74 cc     cmp   a,$cc+x
2924: 90 30     bcc   $2956
2926: 3d        inc   x
2927: c8 04     cmp   x,#$04
2929: 90 f3     bcc   $291e
292b: 8d 00     mov   y,#$00
292d: f7 04     mov   a,($04)+y
292f: c4 01     mov   $01,a
2931: eb 00     mov   y,$00
2933: cd 00     mov   x,#$00
2935: 4b 01     lsr   $01
2937: 90 0e     bcc   $2947
2939: f5 76 11  mov   a,$1176+x
293c: 0e 9b 06  tset1 $069b
293f: e8 00     mov   a,#$00
2941: d4 c7     mov   $c7+x,a
2943: f7 c4     mov   a,($c4)+y
2945: d4 cc     mov   $cc+x,a
2947: 3d        inc   x
2948: c8 04     cmp   x,#$04
294a: 90 e9     bcc   $2935
294c: cc 9f 06  mov   $069f,y
294f: 8d 00     mov   y,#$00
2951: f7 04     mov   a,($04)+y
2953: c5 9e 06  mov   $069e,a
2956: 6f        ret

2957: e5 9f 06  mov   a,$069f
295a: 1c        asl   a
295b: fd        mov   y,a
295c: f7 c0     mov   a,($c0)+y
295e: c4 04     mov   $04,a
2960: fc        inc   y
2961: f7 c0     mov   a,($c0)+y
2963: c4 05     mov   $05,a
2965: 8d 00     mov   y,#$00
2967: f7 04     mov   a,($04)+y
2969: c4 00     mov   $00,a
296b: 4e 9d 06  tclr1 $069d
296e: cd 00     mov   x,#$00
2970: 4b 00     lsr   $00
2972: 90 28     bcc   $299c
2974: fc        inc   y
2975: f7 04     mov   a,($04)+y
2977: d5 a0 06  mov   $06a0+x,a
297a: fc        inc   y
297b: f7 04     mov   a,($04)+y
297d: d5 a4 06  mov   $06a4+x,a
2980: e8 00     mov   a,#$00
2982: d5 c4 06  mov   $06c4+x,a
2985: d5 c0 06  mov   $06c0+x,a
2988: d5 d9 06  mov   $06d9+x,a
298b: d5 e9 06  mov   $06e9+x,a
298e: d5 dd 06  mov   $06dd+x,a
2991: d5 b0 06  mov   $06b0+x,a
2994: bc        inc   a
2995: d5 ac 06  mov   $06ac+x,a
2998: e8 80     mov   a,#$80
299a: d4 c7     mov   $c7+x,a
299c: 3d        inc   x
299d: c8 04     cmp   x,#$04
299f: 90 cf     bcc   $2970
29a1: e4 3a     mov   a,$3a
29a3: 28 01     and   a,#$01
29a5: c4 cb     mov   $cb,a
29a7: 6f        ret

29a8: e4 32     mov   a,$32
29aa: 8f 00 32  mov   $32,#$00
29ad: 1c        asl   a
29ae: 5d        mov   x,a
29af: 1f b2 29  jmp   ($29b2+x)

29b2: dw $29d6  ;
29b4: dw $29ba  ;
29b6: dw $29d1  ;
29b8: dw $29d7  ;

29ba: e8 00     mov   a,#$00
29bc: c5 9b 06  mov   $069b,a
29bf: cd 03     mov   x,#$03
29c1: f4 c7     mov   a,$c7+x
29c3: 10 03     bpl   $29c8
29c5: 3f c1 2f  call  $2fc1
29c8: 1d        dec   x
29c9: 10 f6     bpl   $29c1
29cb: e5 9b 06  mov   a,$069b
29ce: 5f 5c 11  jmp   $115c

29d1: e4 33     mov   a,$33
29d3: c5 d0 06  mov   $06d0,a
29d6: 6f        ret

29d7: e8 08     mov   a,#$08
29d9: 0e c7 00  tset1 $00c7
29dc: 0e c8 00  tset1 $00c8
29df: 0e c9 00  tset1 $00c9
29e2: 0e ca 00  tset1 $00ca
29e5: 6f        ret

29e6: e8 00     mov   a,#$00
29e8: c5 9a 06  mov   $069a,a
29eb: c5 9c 06  mov   $069c,a
29ee: 6f        ret

29ef: f8 c6     mov   x,$c6
29f1: f5 ac 06  mov   a,$06ac+x
29f4: 9c        dec   a
29f5: f0 10     beq   $2a07
29f7: d5 ac 06  mov   $06ac+x,a
29fa: 9c        dec   a
29fb: d0 09     bne   $2a06
29fd: f4 c7     mov   a,$c7+x
29ff: 28 10     and   a,#$10
2a01: d0 03     bne   $2a06
2a03: d5 b0 06  mov   $06b0+x,a
2a06: 6f        ret

2a07: f5 a0 06  mov   a,$06a0+x
2a0a: c4 04     mov   $04,a
2a0c: f5 a4 06  mov   a,$06a4+x
2a0f: c4 05     mov   $05,a
2a11: 2f 02     bra   $2a15
2a13: 3a 04     incw  $04
2a15: 8d 00     mov   y,#$00
2a17: f7 04     mov   a,($04)+y
2a19: 3a 04     incw  $04
2a1b: c4 00     mov   $00,a
2a1d: 68 d0     cmp   a,#$d0
2a1f: 90 5b     bcc   $2a7c
2a21: a8 d0     sbc   a,#$d0
2a23: 1c        asl   a
2a24: 5d        mov   x,a
2a25: 1f 28 2a  jmp   ($2a28+x)

2a28: dw $2adb  ; d0
2a2a: dw $2ae4  ; d1
2a2c: dw $2aee  ; d2
2a2e: dw $2afd  ; d3
2a30: dw $2b0b  ; d4
2a32: dw $2b19  ; d5
2a34: dw $2b29  ; d6
2a36: dw $2b33  ; d7
2a38: dw $2b51  ; d8
2a3a: dw $2b5b  ; d9
2a3c: dw $2b75  ; da
2a3e: dw $2b7f  ; db
2a40: dw $2b8d  ; dc
2a42: dw $2b9e  ; dd
2a44: dw $2bae  ; de
2a46: dw $2bb8  ; df
2a48: dw $2bcc  ; e0
2a4a: dw $2bf3  ; e1
2a4c: dw $2c1e  ; e2
2a4e: dw $2c2c  ; e3
2a50: dw $2c3e  ; e4
2a52: dw $2c49  ; e5
2a54: dw $2c56  ; e6
2a56: dw $2c69  ; e7
2a58: dw $2c73  ; e8
2a5a: dw $2c8f  ; e9
2a5c: dw $2a15  ; ea
2a5e: dw $2a15  ; eb
2a60: dw $2a15  ; ec
2a62: dw $2a15  ; ed
2a64: dw $2a15  ; ee
2a66: dw $2cb0  ; ef

2a68: dw $2cbb  ;
2a6a: dw $2cd2  ;
2a6c: dw $2cf5  ;
2a6e: dw $2d0c  ;
2a70: dw $2d2e  ;
2a72: dw $2d3d  ;
2a74: dw $2d4c  ;
2a76: dw $2d5b  ;
2a78: dw $2d6a  ;
2a7a: dw $2d79  ;

2a7c: f8 c6     mov   x,$c6
2a7e: f5 bc 06  mov   a,$06bc+x
2a81: 28 3f     and   a,#$3f
2a83: d5 bc 06  mov   $06bc+x,a
2a86: f5 a8 06  mov   a,$06a8+x
2a89: f0 09     beq   $2a94
2a8b: fd        mov   y,a
2a8c: e4 00     mov   a,$00
2a8e: 28 0f     and   a,#$0f
2a90: bc        inc   a
2a91: cf        mul   ya
2a92: 2f 06     bra   $2a9a
2a94: 8d 00     mov   y,#$00
2a96: f7 04     mov   a,($04)+y
2a98: 3a 04     incw  $04
2a9a: d5 ac 06  mov   $06ac+x,a
2a9d: 38 f0 00  and   $00,#$f0
2aa0: f5 b4 06  mov   a,$06b4+x
2aa3: 28 0f     and   a,#$0f
2aa5: 04 00     or    a,$00
2aa7: d5 b4 06  mov   $06b4+x,a
2aaa: e4 00     mov   a,$00
2aac: f0 0b     beq   $2ab9
2aae: f5 b0 06  mov   a,$06b0+x
2ab1: fd        mov   y,a
2ab2: e8 01     mov   a,#$01
2ab4: ad 04     cmp   y,#$04
2ab6: d0 01     bne   $2ab9
2ab8: bc        inc   a
2ab9: d5 b0 06  mov   $06b0+x,a
2abc: 8d 00     mov   y,#$00
2abe: f7 04     mov   a,($04)+y
2ac0: 68 d5     cmp   a,#$d5
2ac2: d0 06     bne   $2aca
2ac4: f4 c7     mov   a,$c7+x
2ac6: 08 10     or    a,#$10
2ac8: d4 c7     mov   $c7+x,a
2aca: e4 04     mov   a,$04
2acc: d5 a0 06  mov   $06a0+x,a
2acf: e4 05     mov   a,$05
2ad1: d5 a4 06  mov   $06a4+x,a
2ad4: f4 c7     mov   a,$c7+x
2ad6: 08 20     or    a,#$20
2ad8: d4 c7     mov   $c7+x,a
2ada: 6f        ret

2adb: f8 c6     mov   x,$c6
2add: f4 c7     mov   a,$c7+x
2adf: 08 40     or    a,#$40
2ae1: d4 c7     mov   $c7+x,a
2ae3: 6f        ret

2ae4: f8 c6     mov   x,$c6
2ae6: f7 04     mov   a,($04)+y
2ae8: d5 a8 06  mov   $06a8+x,a
2aeb: 5f 13 2a  jmp   $2a13

2aee: f8 c6     mov   x,$c6
2af0: f5 b4 06  mov   a,$06b4+x
2af3: 28 f0     and   a,#$f0
2af5: 17 04     or    a,($04)+y
2af7: d5 b4 06  mov   $06b4+x,a
2afa: 5f 13 2a  jmp   $2a13

2afd: f8 c6     mov   x,$c6
2aff: f5 b4 06  mov   a,$06b4+x
2b02: bc        inc   a
2b03: 28 f7     and   a,#$f7
2b05: d5 b4 06  mov   $06b4+x,a
2b08: 5f 15 2a  jmp   $2a15

2b0b: f8 c6     mov   x,$c6
2b0d: f5 b4 06  mov   a,$06b4+x
2b10: 9c        dec   a
2b11: 28 f7     and   a,#$f7
2b13: d5 b4 06  mov   $06b4+x,a
2b16: 5f 15 2a  jmp   $2a15

2b19: f8 c6     mov   x,$c6
2b1b: f4 c7     mov   a,$c7+x
2b1d: 28 ef     and   a,#$ef
2b1f: d4 c7     mov   $c7+x,a
2b21: e8 04     mov   a,#$04
2b23: d5 b0 06  mov   $06b0+x,a
2b26: 5f 15 2a  jmp   $2a15

2b29: f8 c6     mov   x,$c6
2b2b: f7 04     mov   a,($04)+y
2b2d: d5 d1 06  mov   $06d1+x,a
2b30: 5f 13 2a  jmp   $2a13

2b33: f8 c6     mov   x,$c6
2b35: f7 04     mov   a,($04)+y
2b37: c4 01     mov   $01,a
2b39: f5 d1 06  mov   a,$06d1+x
2b3c: 60        clrc
2b3d: 84 01     adc   a,$01
2b3f: 10 04     bpl   $2b45
2b41: e8 00     mov   a,#$00
2b43: 2f 06     bra   $2b4b
2b45: ad 4f     cmp   y,#$4f
2b47: 90 02     bcc   $2b4b
2b49: e8 4f     mov   a,#$4f
2b4b: d5 d1 06  mov   $06d1+x,a
2b4e: 5f 13 2a  jmp   $2a13

2b51: f8 c6     mov   x,$c6
2b53: f7 04     mov   a,($04)+y
2b55: d5 d5 06  mov   $06d5+x,a
2b58: 5f 13 2a  jmp   $2a13

2b5b: f8 c6     mov   x,$c6
2b5d: f5 d5 06  mov   a,$06d5+x
2b60: 60        clrc
2b61: 97 04     adc   a,($04)+y
2b63: 10 04     bpl   $2b69
2b65: e8 00     mov   a,#$00
2b67: 2f 06     bra   $2b6f
2b69: 68 1f     cmp   a,#$1f
2b6b: 90 02     bcc   $2b6f
2b6d: e8 1f     mov   a,#$1f
2b6f: d5 d5 06  mov   $06d5+x,a
2b72: 5f 13 2a  jmp   $2a13

2b75: f8 c6     mov   x,$c6
2b77: f7 04     mov   a,($04)+y
2b79: d5 d9 06  mov   $06d9+x,a
2b7c: 5f 13 2a  jmp   $2a13

2b7f: f8 c6     mov   x,$c6
2b81: f5 d9 06  mov   a,$06d9+x
2b84: 60        clrc
2b85: 97 04     adc   a,($04)+y
2b87: d5 d9 06  mov   $06d9+x,a
2b8a: 5f 13 2a  jmp   $2a13

2b8d: f8 c6     mov   x,$c6
2b8f: f7 04     mov   a,($04)+y
2b91: d5 dd 06  mov   $06dd+x,a
2b94: dd        mov   a,y
2b95: d5 e1 06  mov   $06e1+x,a
2b98: d5 e5 06  mov   $06e5+x,a
2b9b: 5f 13 2a  jmp   $2a13

2b9e: f8 c6     mov   x,$c6
2ba0: f7 04     mov   a,($04)+y
2ba2: d5 c4 06  mov   $06c4+x,a
2ba5: f4 c7     mov   a,$c7+x
2ba7: 08 08     or    a,#$08
2ba9: d4 c7     mov   $c7+x,a
2bab: 5f 13 2a  jmp   $2a13

2bae: f8 c6     mov   x,$c6
2bb0: f7 04     mov   a,($04)+y
2bb2: d5 c0 06  mov   $06c0+x,a
2bb5: 5f 13 2a  jmp   $2a13

2bb8: f8 c6     mov   x,$c6
2bba: f7 04     mov   a,($04)+y
2bbc: 9f        xcn   a
2bbd: c4 00     mov   $00,a
2bbf: f5 e9 06  mov   a,$06e9+x
2bc2: 28 0f     and   a,#$0f
2bc4: 04 00     or    a,$00
2bc6: d5 e9 06  mov   $06e9+x,a
2bc9: 5f 13 2a  jmp   $2a13

2bcc: f8 c6     mov   x,$c6
2bce: 3f 88 2d  call  $2d88
2bd1: e4 04     mov   a,$04
2bd3: d7 06     mov   ($06)+y,a
2bd5: fc        inc   y
2bd6: e4 05     mov   a,$05
2bd8: d7 06     mov   ($06)+y,a
2bda: fc        inc   y
2bdb: cd 00     mov   x,#$00
2bdd: e7 04     mov   a,($04+x)
2bdf: d7 06     mov   ($06)+y,a
2be1: fc        inc   y
2be2: cb 00     mov   $00,y
2be4: f8 c6     mov   x,$c6
2be6: f5 e9 06  mov   a,$06e9+x
2be9: 28 f0     and   a,#$f0
2beb: 04 00     or    a,$00
2bed: d5 e9 06  mov   $06e9+x,a
2bf0: 5f 13 2a  jmp   $2a13

2bf3: f8 c6     mov   x,$c6
2bf5: 3f 88 2d  call  $2d88
2bf8: dc        dec   y
2bf9: f7 06     mov   a,($06)+y
2bfb: 9c        dec   a
2bfc: f0 0f     beq   $2c0d
2bfe: d7 06     mov   ($06)+y,a
2c00: dc        dec   y
2c01: f7 06     mov   a,($06)+y
2c03: c4 05     mov   $05,a
2c05: dc        dec   y
2c06: f7 06     mov   a,($06)+y
2c08: c4 04     mov   $04,a
2c0a: 5f 13 2a  jmp   $2a13

2c0d: dc        dec   y
2c0e: dc        dec   y
2c0f: cb 00     mov   $00,y
2c11: f5 e9 06  mov   a,$06e9+x
2c14: 28 f0     and   a,#$f0
2c16: 04 00     or    a,$00
2c18: d5 e9 06  mov   $06e9+x,a
2c1b: 5f 15 2a  jmp   $2a15

2c1e: f8 c6     mov   x,$c6
2c20: f5 c0 06  mov   a,$06c0+x
2c23: 60        clrc
2c24: 97 04     adc   a,($04)+y
2c26: d5 c0 06  mov   $06c0+x,a
2c29: 5f 13 2a  jmp   $2a13

2c2c: e5 5f 01  mov   a,$015f
2c2f: 68 05     cmp   a,#$05
2c31: d0 08     bne   $2c3b
2c33: f8 c6     mov   x,$c6
2c35: f5 76 11  mov   a,$1176+x
2c38: 0e 9d 06  tset1 $069d
2c3b: 5f 15 2a  jmp   $2a15

2c3e: f8 c6     mov   x,$c6
2c40: f5 76 11  mov   a,$1176+x
2c43: 4e 9d 06  tclr1 $069d
2c46: 5f 15 2a  jmp   $2a15

2c49: f7 04     mov   a,($04)+y
2c4b: 5d        mov   x,a
2c4c: fc        inc   y
2c4d: f7 04     mov   a,($04)+y
2c4f: c4 05     mov   $05,a
2c51: d8 04     mov   $04,x
2c53: 5f 15 2a  jmp   $2a15

2c56: f8 c6     mov   x,$c6
2c58: f7 04     mov   a,($04)+y
2c5a: 28 03     and   a,#$03
2c5c: c4 00     mov   $00,a
2c5e: f4 c7     mov   a,$c7+x
2c60: 28 fc     and   a,#$fc
2c62: 04 00     or    a,$00
2c64: d4 c7     mov   $c7+x,a
2c66: 5f 13 2a  jmp   $2a13

2c69: f8 c6     mov   x,$c6
2c6b: f7 04     mov   a,($04)+y
2c6d: d5 dd 06  mov   $06dd+x,a
2c70: 5f 13 2a  jmp   $2a13

2c73: f8 c6     mov   x,$c6
2c75: f7 04     mov   a,($04)+y
2c77: d5 b8 06  mov   $06b8+x,a
2c7a: 3a 04     incw  $04
2c7c: f7 04     mov   a,($04)+y
2c7e: 08 80     or    a,#$80
2c80: d5 bc 06  mov   $06bc+x,a
2c83: 3a 04     incw  $04
2c85: f7 04     mov   a,($04)+y
2c87: d5 ac 06  mov   $06ac+x,a
2c8a: 3a 04     incw  $04
2c8c: 5f ae 2a  jmp   $2aae

2c8f: f8 c6     mov   x,$c6
2c91: 8f 00 07  mov   $07,#$00
2c94: f7 04     mov   a,($04)+y
2c96: 10 02     bpl   $2c9a
2c98: 8b 07     dec   $07
2c9a: c4 06     mov   $06,a
2c9c: f5 bc 06  mov   a,$06bc+x
2c9f: fd        mov   y,a
2ca0: f5 b8 06  mov   a,$06b8+x
2ca3: 7a 06     addw  ya,$06
2ca5: d5 b8 06  mov   $06b8+x,a
2ca8: dd        mov   a,y
2ca9: d5 bc 06  mov   $06bc+x,a
2cac: 8d 00     mov   y,#$00
2cae: 2f d3     bra   $2c83
2cb0: f7 04     mov   a,($04)+y
2cb2: c4 00     mov   $00,a
2cb4: 3a 04     incw  $04
2cb6: 1c        asl   a
2cb7: 5d        mov   x,a
2cb8: 1f 68 2a  jmp   ($2a68+x)

2cbb: f7 04     mov   a,($04)+y
2cbd: f8 c6     mov   x,$c6
2cbf: 3f 99 2d  call  $2d99
2cc2: 8d 00     mov   y,#$00
2cc4: 3a 04     incw  $04
2cc6: f7 04     mov   a,($04)+y
2cc8: 0d        push  psw
2cc9: d7 06     mov   ($06)+y,a
2ccb: ae        pop   a
2ccc: c5 ed 06  mov   $06ed,a
2ccf: 5f 13 2a  jmp   $2a13

2cd2: fc        inc   y
2cd3: f7 04     mov   a,($04)+y
2cd5: f8 c6     mov   x,$c6
2cd7: 3f 99 2d  call  $2d99
2cda: 8d 00     mov   y,#$00
2cdc: f7 06     mov   a,($06)+y
2cde: c4 00     mov   $00,a
2ce0: f7 04     mov   a,($04)+y
2ce2: 3f 99 2d  call  $2d99
2ce5: 8d 00     mov   y,#$00
2ce7: e4 00     mov   a,$00
2ce9: 0d        push  psw
2cea: d7 06     mov   ($06)+y,a
2cec: ae        pop   a
2ced: c5 ed 06  mov   $06ed,a
2cf0: 3a 04     incw  $04
2cf2: 5f 13 2a  jmp   $2a13

2cf5: f7 04     mov   a,($04)+y
2cf7: f8 c6     mov   x,$c6
2cf9: 3f 99 2d  call  $2d99
2cfc: 8d 00     mov   y,#$00
2cfe: 3a 04     incw  $04
2d00: f7 06     mov   a,($06)+y
2d02: 77 04     cmp   a,($04)+y
2d04: 0d        push  psw
2d05: ae        pop   a
2d06: c5 ed 06  mov   $06ed,a
2d09: 5f 13 2a  jmp   $2a13

2d0c: f7 04     mov   a,($04)+y
2d0e: f8 c6     mov   x,$c6
2d10: 3f 99 2d  call  $2d99
2d13: 8d 00     mov   y,#$00
2d15: f7 06     mov   a,($06)+y
2d17: c4 00     mov   $00,a
2d19: 3a 04     incw  $04
2d1b: f7 04     mov   a,($04)+y
2d1d: 3f 99 2d  call  $2d99
2d20: 8d 00     mov   y,#$00
2d22: e4 00     mov   a,$00
2d24: 77 06     cmp   a,($06)+y
2d26: 0d        push  psw
2d27: ae        pop   a
2d28: c5 ed 06  mov   $06ed,a
2d2b: 5f 13 2a  jmp   $2a13

2d2e: e5 ed 06  mov   a,$06ed
2d31: 2d        push  a
2d32: 8e        pop   psw
2d33: d0 03     bne   $2d38
2d35: 5f 49 2c  jmp   $2c49

2d38: 3a 04     incw  $04
2d3a: 5f 13 2a  jmp   $2a13

2d3d: e5 ed 06  mov   a,$06ed
2d40: 2d        push  a
2d41: 8e        pop   psw
2d42: f0 03     beq   $2d47
2d44: 5f 49 2c  jmp   $2c49

2d47: 3a 04     incw  $04
2d49: 5f 13 2a  jmp   $2a13

2d4c: e5 ed 06  mov   a,$06ed
2d4f: 2d        push  a
2d50: 8e        pop   psw
2d51: b0 03     bcs   $2d56
2d53: 5f 49 2c  jmp   $2c49

2d56: 3a 04     incw  $04
2d58: 5f 13 2a  jmp   $2a13

2d5b: e5 ed 06  mov   a,$06ed
2d5e: 2d        push  a
2d5f: 8e        pop   psw
2d60: 90 03     bcc   $2d65
2d62: 5f 49 2c  jmp   $2c49

2d65: 3a 04     incw  $04
2d67: 5f 13 2a  jmp   $2a13

2d6a: e5 ed 06  mov   a,$06ed
2d6d: 2d        push  a
2d6e: 8e        pop   psw
2d6f: 30 03     bmi   $2d74
2d71: 5f 49 2c  jmp   $2c49

2d74: 3a 04     incw  $04
2d76: 5f 13 2a  jmp   $2a13

2d79: e5 ed 06  mov   a,$06ed
2d7c: 2d        push  a
2d7d: 8e        pop   psw
2d7e: 10 03     bpl   $2d83
2d80: 5f 49 2c  jmp   $2c49

2d83: 3a 04     incw  $04
2d85: 5f 13 2a  jmp   $2a13

2d88: f5 d3 2f  mov   a,$2fd3+x
2d8b: c4 06     mov   $06,a
2d8d: f5 d7 2f  mov   a,$2fd7+x
2d90: c4 07     mov   $07,a
2d92: f5 e9 06  mov   a,$06e9+x
2d95: 28 0f     and   a,#$0f
2d97: fd        mov   y,a
2d98: 6f        ret

2d99: c4 06     mov   $06,a
2d9b: 8f 00 07  mov   $07,#$00
2d9e: e8 50     mov   a,#$50
2da0: 8d 08     mov   y,#$08
2da2: 7a 06     addw  ya,$06
2da4: da 06     movw  $06,ya
2da6: 6f        ret

2da7: f8 c6     mov   x,$c6
2da9: f4 c7     mov   a,$c7+x
2dab: 28 08     and   a,#$08
2dad: f0 3b     beq   $2dea
2daf: f5 c4 06  mov   a,$06c4+x
2db2: 28 7f     and   a,#$7f
2db4: 8d 04     mov   y,#$04
2db6: cf        mul   ya
2db7: 7a c2     addw  ya,$c2
2db9: da 04     movw  $04,ya
2dbb: 8d 03     mov   y,#$03
2dbd: f7 04     mov   a,($04)+y
2dbf: 30 08     bmi   $2dc9
2dc1: dc        dec   y
2dc2: f7 04     mov   a,($04)+y
2dc4: dc        dec   y
2dc5: 17 04     or    a,($04)+y
2dc7: f0 22     beq   $2deb
2dc9: d5 96 06  mov   $0696+x,a
2dcc: dc        dec   y
2dcd: f7 04     mov   a,($04)+y
2dcf: d5 92 06  mov   $0692+x,a
2dd2: dc        dec   y
2dd3: f7 04     mov   a,($04)+y
2dd5: 08 80     or    a,#$80
2dd7: d5 8e 06  mov   $068e+x,a
2dda: dc        dec   y
2ddb: f7 04     mov   a,($04)+y
2ddd: d5 8a 06  mov   $068a+x,a
2de0: 3f 71 10  call  $1071
2de3: d5 c8 06  mov   $06c8+x,a
2de6: dd        mov   a,y
2de7: d5 cc 06  mov   $06cc+x,a
2dea: 6f        ret

2deb: 8d 03     mov   y,#$03
2ded: f7 04     mov   a,($04)+y
2def: 1c        asl   a
2df0: 1c        asl   a
2df1: fd        mov   y,a
2df2: f6 40 08  mov   a,$0840+y
2df5: d5 8a 06  mov   $068a+x,a
2df8: fc        inc   y
2df9: f6 40 08  mov   a,$0840+y
2dfc: d5 8e 06  mov   $068e+x,a
2dff: fc        inc   y
2e00: f6 40 08  mov   a,$0840+y
2e03: d5 92 06  mov   $0692+x,a
2e06: fc        inc   y
2e07: f6 40 08  mov   a,$0840+y
2e0a: d5 96 06  mov   $0696+x,a
2e0d: f5 8a 06  mov   a,$068a+x
2e10: 2f ce     bra   $2de0
2e12: f8 c6     mov   x,$c6
2e14: f5 d1 06  mov   a,$06d1+x
2e17: 1c        asl   a
2e18: fd        mov   y,a
2e19: e5 d0 06  mov   a,$06d0
2e1c: bc        inc   a
2e1d: cf        mul   ya
2e1e: cb 01     mov   $01,y
2e20: f5 d5 06  mov   a,$06d5+x
2e23: fb c7     mov   y,$c7+x
2e25: 13 cb 04  bbc0  $cb,$2e2c
2e28: e8 0f     mov   a,#$0f
2e2a: 8d 00     mov   y,#$00
2e2c: c4 00     mov   $00,a
2e2e: cb 02     mov   $02,y
2e30: 3f 2f 11  call  $112f
2e33: f8 c6     mov   x,$c6
2e35: d5 7e 06  mov   $067e+x,a
2e38: dd        mov   a,y
2e39: d5 7a 06  mov   $067a+x,a
2e3c: 6f        ret

2e3d: f8 c6     mov   x,$c6
2e3f: f5 b4 06  mov   a,$06b4+x
2e42: 28 f0     and   a,#$f0
2e44: d0 03     bne   $2e49
2e46: 5f 06 2f  jmp   $2f06

2e49: f5 e9 06  mov   a,$06e9+x
2e4c: 28 f0     and   a,#$f0
2e4e: f0 1c     beq   $2e6c
2e50: f4 c7     mov   a,$c7+x
2e52: 28 20     and   a,#$20
2e54: f0 0d     beq   $2e63
2e56: f5 b4 06  mov   a,$06b4+x
2e59: 9f        xcn   a
2e5a: 28 0f     and   a,#$0f
2e5c: 60        clrc
2e5d: 95 c0 06  adc   a,$06c0+x
2e60: 3f e1 0f  call  $0fe1
2e63: f5 76 11  mov   a,$1176+x
2e66: 0e 9c 06  tset1 $069c
2e69: 5f 06 2f  jmp   $2f06

2e6c: f4 c7     mov   a,$c7+x
2e6e: 28 20     and   a,#$20
2e70: f0 4c     beq   $2ebe
2e72: f5 bc 06  mov   a,$06bc+x
2e75: 30 4a     bmi   $2ec1
2e77: f5 c8 06  mov   a,$06c8+x
2e7a: c4 04     mov   $04,a
2e7c: f5 cc 06  mov   a,$06cc+x
2e7f: c4 05     mov   $05,a
2e81: f5 b4 06  mov   a,$06b4+x
2e84: 28 07     and   a,#$07
2e86: 8d 0c     mov   y,#$0c
2e88: cf        mul   ya
2e89: c4 00     mov   $00,a
2e8b: f5 b4 06  mov   a,$06b4+x
2e8e: 28 f0     and   a,#$f0
2e90: 9f        xcn   a
2e91: 9c        dec   a
2e92: 60        clrc
2e93: 84 00     adc   a,$00
2e95: 8d 02     mov   y,#$02
2e97: 60        clrc
2e98: 97 04     adc   a,($04)+y
2e9a: 60        clrc
2e9b: 95 c0 06  adc   a,$06c0+x
2e9e: c4 00     mov   $00,a
2ea0: 8f 00 06  mov   $06,#$00
2ea3: 8f 00 07  mov   $07,#$00
2ea6: 3f 77 10  call  $1077
2ea9: da 04     movw  $04,ya
2eab: f8 c6     mov   x,$c6
2ead: 8d 00     mov   y,#$00
2eaf: f5 d9 06  mov   a,$06d9+x
2eb2: 10 01     bpl   $2eb5
2eb4: dc        dec   y
2eb5: 7a 04     addw  ya,$04
2eb7: d5 b8 06  mov   $06b8+x,a
2eba: dd        mov   a,y
2ebb: d5 bc 06  mov   $06bc+x,a
2ebe: f5 bc 06  mov   a,$06bc+x
2ec1: 28 3f     and   a,#$3f
2ec3: c4 05     mov   $05,a
2ec5: f5 b8 06  mov   a,$06b8+x
2ec8: c4 04     mov   $04,a
2eca: f5 dd 06  mov   a,$06dd+x
2ecd: f0 2d     beq   $2efc
2ecf: f5 b0 06  mov   a,$06b0+x
2ed2: 68 01     cmp   a,#$01
2ed4: d0 08     bne   $2ede
2ed6: e8 00     mov   a,#$00
2ed8: d5 e1 06  mov   $06e1+x,a
2edb: d5 e5 06  mov   $06e5+x,a
2ede: 8d 00     mov   y,#$00
2ee0: f5 dd 06  mov   a,$06dd+x
2ee3: 10 01     bpl   $2ee6
2ee5: dc        dec   y
2ee6: 60        clrc
2ee7: 95 e1 06  adc   a,$06e1+x
2eea: d5 e1 06  mov   $06e1+x,a
2eed: dd        mov   a,y
2eee: 95 e5 06  adc   a,$06e5+x
2ef1: d5 e5 06  mov   $06e5+x,a
2ef4: fd        mov   y,a
2ef5: f5 e1 06  mov   a,$06e1+x
2ef8: 7a 04     addw  ya,$04
2efa: da 04     movw  $04,ya
2efc: e4 04     mov   a,$04
2efe: d5 82 06  mov   $0682+x,a
2f01: e4 05     mov   a,$05
2f03: d5 86 06  mov   $0686+x,a
2f06: f4 c7     mov   a,$c7+x
2f08: 28 df     and   a,#$df
2f0a: d4 c7     mov   $c7+x,a
2f0c: 6f        ret

2f0d: eb c6     mov   y,$c6
2f0f: f6 b0 06  mov   a,$06b0+y
2f12: 1c        asl   a
2f13: 5d        mov   x,a
2f14: 1f 17 2f  jmp   ($2f17+x)

2f17: dw $2f21  ;
2f19: dw $2f28  ;
2f1b: dw $2f40  ;
2f1d: dw $2f21  ;
2f1f: dw $2f21  ;

2f21: f6 76 11  mov   a,$1176+y
2f24: 0e 9b 06  tset1 $069b
2f27: 6f        ret

2f28: f6 ac 06  mov   a,$06ac+y
2f2b: 9c        dec   a
2f2c: d0 07     bne   $2f35
2f2e: f6 c7 00  mov   a,$00c7+y
2f31: 28 10     and   a,#$10
2f33: f0 ec     beq   $2f21
2f35: f6 76 11  mov   a,$1176+y
2f38: 0e 9a 06  tset1 $069a
2f3b: e8 02     mov   a,#$02
2f3d: d6 b0 06  mov   $06b0+y,a
2f40: 6f        ret

2f41: e8 00     mov   a,#$00
2f43: c5 41 01  mov   $0141,a
2f46: 8f 03 c6  mov   $c6,#$03
2f49: f8 c6     mov   x,$c6
2f4b: f4 c7     mov   a,$c7+x
2f4d: 10 4c     bpl   $2f9b
2f4f: 28 40     and   a,#$40
2f51: f0 05     beq   $2f58
2f53: 3f c1 2f  call  $2fc1
2f56: 2f 43     bra   $2f9b
2f58: f4 c7     mov   a,$c7+x
2f5a: 28 08     and   a,#$08
2f5c: f0 1b     beq   $2f79
2f5e: f4 c7     mov   a,$c7+x
2f60: 28 f7     and   a,#$f7
2f62: d4 c7     mov   $c7+x,a
2f64: f5 8a 06  mov   a,$068a+x
2f67: 8d 04     mov   y,#$04
2f69: 4f 13     pcall $13
2f6b: f5 8e 06  mov   a,$068e+x
2f6e: 8d 05     mov   y,#$05
2f70: 4f 13     pcall $13
2f72: f5 92 06  mov   a,$0692+x
2f75: 8d 06     mov   y,#$06
2f77: 4f 13     pcall $13
2f79: f5 82 06  mov   a,$0682+x
2f7c: 8d 02     mov   y,#$02
2f7e: 4f 13     pcall $13
2f80: f5 86 06  mov   a,$0686+x
2f83: 8d 03     mov   y,#$03
2f85: 4f 13     pcall $13
2f87: f5 7a 06  mov   a,$067a+x
2f8a: 8d 01     mov   y,#$01
2f8c: 4f 13     pcall $13
2f8e: f5 7e 06  mov   a,$067e+x
2f91: 8d 00     mov   y,#$00
2f93: 4f 13     pcall $13
2f95: f5 76 11  mov   a,$1176+x
2f98: 0e 41 01  tset1 $0141
2f9b: 8b c6     dec   $c6
2f9d: 10 aa     bpl   $2f49
2f9f: e5 9e 06  mov   a,$069e
2fa2: 0e 41 01  tset1 $0141
2fa5: e5 9d 06  mov   a,$069d
2fa8: c5 51 01  mov   $0151,a
2fab: e5 9c 06  mov   a,$069c
2fae: c5 4f 01  mov   $014f,a
2fb1: e5 9b 06  mov   a,$069b
2fb4: f0 03     beq   $2fb9
2fb6: 3f 5c 11  call  $115c
2fb9: e5 9a 06  mov   a,$069a
2fbc: 8d 4c     mov   y,#$4c
2fbe: 5f 1f ff  jmp   $ff1f

2fc1: f5 76 11  mov   a,$1176+x
2fc4: 0e 9b 06  tset1 $069b
2fc7: 4e 9d 06  tclr1 $069d
2fca: e8 00     mov   a,#$00
2fcc: d4 c7     mov   $c7+x,a
2fce: bc        inc   a
2fcf: d5 42 01  mov   $0142+x,a
2fd2: 6f        ret

2fd3: db $ee,$f7,$00,$09,$06,$06,$07,$07

ff00: 2d        push  a
ff01: 7d        mov   a,x
ff02: 9f        xcn   a
ff03: cc 0e 00  mov   $000e,y
ff06: 60        clrc
ff07: 85 0e 00  adc   a,$000e
ff0a: fd        mov   y,a
ff0b: ae        pop   a
ff0c: cc f2 00  mov   $00f2,y
ff0f: c5 f3 00  mov   $00f3,a
ff12: 6f        ret

ff13: c4 0f     mov   $0f,a
ff15: 7d        mov   a,x
ff16: 9f        xcn   a
ff17: cb 0e     mov   $0e,y
ff19: 60        clrc
ff1a: 84 0e     adc   a,$0e
ff1c: fd        mov   y,a
ff1d: e4 0f     mov   a,$0f
ff1f: cb f2     mov   $f2,y
ff21: c4 f3     mov   $f3,a
ff23: 6f        ret

ff24: 7d        mov   a,x
ff25: 9f        xcn   a
ff26: cc 0e 00  mov   $000e,y
ff29: 60        clrc
ff2a: 85 0e 00  adc   a,$000e
ff2d: fd        mov   y,a
ff2e: cc f2 00  mov   $00f2,y
ff31: e5 f3 00  mov   a,$00f3
ff34: 6f        ret

ff35: f4 21     mov   a,$21+x
ff37: d4 25     mov   $25+x,a
ff39: f4 f4     mov   a,$f4+x
ff3b: 74 f4     cmp   a,$f4+x
ff3d: d0 fa     bne   $ff39
ff3f: d4 21     mov   $21+x,a
ff41: 6f        ret

ff42: 2d        push  a
ff43: 6d        push  y
ff44: 3f fe 08  call  $08fe
ff47: ee        pop   y
ff48: ae        pop   a
ff49: 6f        ret
