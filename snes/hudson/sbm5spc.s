; SFX SOUND DRIVER Ver 2.32 ,(C)1993-96 Hudson Soft,Program : LU.Iwabuchi,Driver : Kazumi-TYPE,Note : 

0800: 5f 80 08  jmp   $0880
0803: dw $3000  ;
0805: dw $4400  ;
0807: dw $fe00  ;
0809: db $fd    ;
080a: db $fd    ;
080b: db $21    ;
080c: db $60    ;
080d: db $60    ;

0840: db $00,$ff,$e0,$b8,$00,$ff,$e0,$b8
0848: db $00,$ff,$e0,$b8,$00,$ff,$e0,$b8

; user RAM area (8 bytes)
0850: db $00,$00,$00,$00,$00,$00,$00,$00

; default echo presets (EVOL(L), EVOL(R), EDL, EFB, FIR, EON)
0858: db $40,$40,$01,$30,$00,$00
; reserved bytes (probably)
085e: db $00,$00

0880: 40        setp
0881: cd 3f     mov   x,#$3f
0883: bd        mov   sp,x
0884: e8 00     mov   a,#$00
0886: c6        mov   (x),a
0887: 1d        dec   x
0888: 10 fc     bpl   $0886
088a: c4 61     mov   $61,a
088c: 20        clrp
088d: c4 3b     mov   $3b,a
088f: 3f d4 08  call  $08d4
0892: cd 3f     mov   x,#$3f
0894: bd        mov   sp,x
0895: 3f 9a 0d  call  $0d9a
0898: 3f d2 0d  call  $0dd2
089b: 3f 65 09  call  $0965
089e: 3f be 09  call  $09be
08a1: 3f c7 12  call  $12c7
08a4: c4 3c     mov   $3c,a
08a6: 3f 5b 28  call  $285b
08a9: c4 3d     mov   $3d,a
08ab: e8 20     mov   a,#$20
08ad: cd 01     mov   x,#$01
08af: 3f b1 0d  call  $0db1
08b2: 8f 00 36  mov   $36,#$00
08b5: 8f 00 37  mov   $37,#$00
08b8: 8f 02 3a  mov   $3a,#$02
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
08da: da 15     movw  $15,ya            ; set music structure address from $0803/4 to $15/6
08dc: e5 05 08  mov   a,$0805
08df: ec 06 08  mov   y,$0806
08e2: da 17     movw  $17,ya
08e4: e5 07 08  mov   a,$0807
08e7: ec 08 08  mov   y,$0808
08ea: da 19     movw  $19,ya
08ec: e5 09 08  mov   a,$0809
08ef: c5 5b 01  mov   $015b,a
08f2: e5 0a 08  mov   a,$080a
08f5: c4 1b     mov   $1b,a
08f7: 8f 89 1c  mov   $1c,#$89
08fa: 8f 11 1d  mov   $1d,#$11          ; set echo FIR table address $1189
08fd: 6f        ret

08fe: e5 fe 00  mov   a,$00fe
0901: 28 0f     and   a,#$0f
0903: d0 01     bne   $0906
0905: 6f        ret

0906: 2d        push  a
0907: 3f e1 24  call  $24e1
090a: ae        pop   a
090b: 2d        push  a
090c: 8d 40     mov   y,#$40
090e: cf        mul   ya
090f: 60        clrc
0910: 84 36     adc   a,$36
0912: c4 36     mov   $36,a
0914: 90 09     bcc   $091f
0916: 3f b2 28  call  $28b2
0919: 3f 23 0e  call  $0e23
091c: 3f 5a 24  call  $245a
091f: ae        pop   a
0920: eb 38     mov   y,$38
0922: cf        mul   ya
0923: 60        clrc
0924: 84 37     adc   a,$37
0926: c4 37     mov   $37,a
0928: dd        mov   a,y
0929: d0 02     bne   $092d
092b: 90 d8     bcc   $0905
092d: 3f 59 0e  call  $0e59
0930: 3f fe 12  call  $12fe
0933: 3f 23 0e  call  $0e23
0936: 2f c6     bra   $08fe
; update tempo
0938: 68 0a     cmp   a,#$0a
093a: b0 02     bcs   $093e
093c: e8 0a     mov   a,#$0a
093e: c4 38     mov   $38,a
0940: c4 39     mov   $39,a
0942: 8d 00     mov   y,#$00
0944: cd 0a     mov   x,#$0a
0946: 9e        div   ya,x
0947: 5d        mov   x,a
0948: e4 38     mov   a,$38
094a: 80        setc
094b: b5 ad 12  sbc   a,$12ad+x
094e: ad 05     cmp   y,#$05
0950: 90 01     bcc   $0953
0952: 9c        dec   a
0953: eb 3a     mov   y,$3a
0955: f0 03     beq   $095a
0957: 5c        lsr   a
0958: fe fd     dbnz  y,$0957
095a: c4 38     mov   $38,a
095c: 6f        ret

095d: c4 3a     mov   $3a,a
095f: e4 39     mov   a,$39
0961: 3f 38 09  call  $0938
0964: 6f        ret

0965: e4 1e     mov   a,$1e
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
097c: cd 22     mov   x,#$22
097e: e8 00     mov   a,#$00
0980: af        mov   (x)+,a
0981: fe fd     dbnz  y,$0980
0983: 6f        ret

0984: cd 00     mov   x,#$00
0986: 4f 35     pcall $35
0988: 69 26 22  cmp   ($22),($26)
098b: d0 01     bne   $098e
098d: 6f        ret

098e: cd 02     mov   x,#$02
0990: 4f 35     pcall $35
0992: cd 03     mov   x,#$03
0994: 4f 35     pcall $35
0996: e4 22     mov   a,$22
0998: 48 80     eor   a,#$80
099a: c4 f4     mov   $f4,a
099c: 2f 2d     bra   $09cb
099e: cd 01     mov   x,#$01
09a0: 4f 35     pcall $35
09a2: 69 27 23  cmp   ($23),($27)
09a5: d0 01     bne   $09a8
09a7: 6f        ret

09a8: cd 02     mov   x,#$02
09aa: 4f 35     pcall $35
09ac: cd 03     mov   x,#$03
09ae: 4f 35     pcall $35
09b0: e8 00     mov   a,#$00
09b2: c4 f6     mov   $f6,a
09b4: c4 f7     mov   $f7,a
09b6: e4 23     mov   a,$23
09b8: 48 80     eor   a,#$80
09ba: c4 f5     mov   $f5,a
09bc: 2f 36     bra   $09f4
09be: 8f 00 30  mov   $30,#$00
09c1: 8f 00 33  mov   $33,#$00
09c4: 8f 80 2a  mov   $2a,#$80
09c7: 8f 80 2d  mov   $2d,#$80
09ca: 6f        ret

09cb: e4 22     mov   a,$22
09cd: 28 7f     and   a,#$7f
09cf: f0 22     beq   $09f3
09d1: 65 0b 08  cmp   a,$080b
09d4: b0 09     bcs   $09df
09d6: c4 2a     mov   $2a,a
09d8: fa 24 2b  mov   ($2b),($24)
09db: fa 25 2c  mov   ($2c),($25)
09de: 6f        ret

09df: a5 0b 08  sbc   a,$080b
09e2: bc        inc   a
09e3: c4 00     mov   $00,a
09e5: 3f da 28  call  $28da
09e8: 90 09     bcc   $09f3
09ea: fa 00 2d  mov   ($2d),($00)
09ed: fa 24 2e  mov   ($2e),($24)
09f0: fa 25 2f  mov   ($2f),($25)
09f3: 6f        ret

09f4: e4 23     mov   a,$23
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
0a3f: dw $0c0a  ;
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

0a87: 8f 06 30  mov   $30,#$06
0a8a: 8f 03 33  mov   $33,#$03
0a8d: 5f 01 0a  jmp   $0a01

0a90: 8f 0b 30  mov   $30,#$0b
0a93: fa 24 31  mov   ($31),($24)
0a96: 3f fe 12  call  $12fe
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
0aae: c4 0f     mov   $0f,a
0ab0: e5 98 07  mov   a,$0798
0ab3: 80        setc
0ab4: a8 30     sbc   a,#$30
0ab6: 60        clrc
0ab7: 84 0f     adc   a,$0f
0ab9: 5f 08 0a  jmp   $0a08

0abc: fa 24 11  mov   ($11),($24)
0abf: fa 25 12  mov   ($12),($25)
0ac2: 8d 00     mov   y,#$00
0ac4: f7 11     mov   a,($11)+y
0ac6: 5f 08 0a  jmp   $0a08

0ac9: e8 ff     mov   a,#$ff
0acb: 3f 5f 11  call  $115f
0ace: 20        clrp
0acf: e8 80     mov   a,#$80
0ad1: c5 f1 00  mov   $00f1,a
0ad4: e8 00     mov   a,#$00
0ad6: c5 58 01  mov   $0158,a
0ad9: 3f 9b 0f  call  $0f9b
0adc: 5f c0 ff  jmp   $ffc0

0adf: 5f 92 08  jmp   $0892

0ae2: e4 3c     mov   a,$3c
0ae4: 5f 08 0a  jmp   $0a08

0ae7: e4 3d     mov   a,$3d
0ae9: 5f 08 0a  jmp   $0a08

0aec: e5 0b 08  mov   a,$080b
0aef: 5f 08 0a  jmp   $0a08

0af2: 8f 01 30  mov   $30,#$01
0af5: 3f fe 12  call  $12fe
0af8: fa 15 08  mov   ($08),($15)
0afb: fa 16 09  mov   ($09),($16)
0afe: 8f 01 0a  mov   $0a,#$01
0b01: 3f f0 0f  call  $0ff0
0b04: 3f fe 08  call  $08fe
0b07: 3f 65 09  call  $0965
0b0a: 3f c7 12  call  $12c7
0b0d: 5f 01 0a  jmp   $0a01

0b10: 8f 01 33  mov   $33,#$01
0b13: 3f b2 28  call  $28b2
0b16: fa 17 08  mov   ($08),($17)
0b19: fa 18 09  mov   ($09),($18)
0b1c: 8f 01 0a  mov   $0a,#$01
0b1f: 3f f0 0f  call  $0ff0
0b22: 3f fe 08  call  $08fe
0b25: 3f 65 09  call  $0965
0b28: 3f 5b 28  call  $285b
0b2b: 5f 01 0a  jmp   $0a01

0b2e: e4 24     mov   a,$24
0b30: f0 02     beq   $0b34
0b32: c4 2a     mov   $2a,a
0b34: e4 25     mov   a,$25
0b36: f0 0a     beq   $0b42
0b38: c4 00     mov   $00,a
0b3a: 3f da 28  call  $28da
0b3d: 90 03     bcc   $0b42
0b3f: fa 00 2d  mov   ($2d),($00)
0b42: 5f 01 0a  jmp   $0a01

0b45: 8f 01 30  mov   $30,#$01
0b48: 3f fe 12  call  $12fe
0b4b: fa 15 08  mov   ($08),($15)
0b4e: fa 16 09  mov   ($09),($16)
0b51: 8f 00 0a  mov   $0a,#$00
0b54: 3f f0 0f  call  $0ff0
0b57: 3f 65 09  call  $0965
0b5a: 3f c7 12  call  $12c7
0b5d: 5f 01 0a  jmp   $0a01

0b60: 8f 01 33  mov   $33,#$01
0b63: 3f b2 28  call  $28b2
0b66: fa 17 08  mov   ($08),($17)
0b69: fa 18 09  mov   ($09),($18)
0b6c: 8f 00 0a  mov   $0a,#$00
0b6f: 3f f0 0f  call  $0ff0
0b72: 3f 65 09  call  $0965
0b75: 3f 5b 28  call  $285b
0b78: 5f 01 0a  jmp   $0a01

0b7b: e5 40 01  mov   a,$0140
0b7e: 05 41 01  or    a,$0141
0b81: f0 19     beq   $0b9c
0b83: 8f 01 33  mov   $33,#$01
0b86: 3f b2 28  call  $28b2
0b89: 8f 01 30  mov   $30,#$01
0b8c: 3f fe 12  call  $12fe
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
0ba5: c4 0a     mov   $0a,a
0ba7: 3f f0 0f  call  $0ff0
0baa: 5f 92 08  jmp   $0892

0bad: e2 2a     set7  $2a
0baf: 8f 01 30  mov   $30,#$01
0bb2: 3f fe 12  call  $12fe
0bb5: 3f 9b 0f  call  $0f9b
0bb8: e8 00     mov   a,#$00
0bba: c5 60 01  mov   $0160,a
0bbd: 5f 01 0a  jmp   $0a01

0bc0: e2 2d     set7  $2d
0bc2: 8f 01 33  mov   $33,#$01
0bc5: 3f b2 28  call  $28b2
0bc8: 5f 01 0a  jmp   $0a01

0bcb: e2 2a     set7  $2a
0bcd: e2 2d     set7  $2d
0bcf: 8f 01 33  mov   $33,#$01
0bd2: 3f b2 28  call  $28b2
0bd5: 8f 01 30  mov   $30,#$01
0bd8: 3f fe 12  call  $12fe
0bdb: 3f 9b 0f  call  $0f9b
0bde: e8 00     mov   a,#$00
0be0: c5 60 01  mov   $0160,a
0be3: 5f 01 0a  jmp   $0a01

0be6: e5 40 01  mov   a,$0140
0be9: 5f 08 0a  jmp   $0a08

0bec: e5 41 01  mov   a,$0141
0bef: 5f 08 0a  jmp   $0a08

0bf2: fa 24 31  mov   ($31),($24)
0bf5: 38 7f 31  and   $31,#$7f
0bf8: 8f 02 30  mov   $30,#$02
0bfb: 5f 01 0a  jmp   $0a01

0bfe: fa 24 34  mov   ($34),($24)
0c01: 38 7f 34  and   $34,#$7f
0c04: 8f 02 33  mov   $33,#$02
0c07: 5f 01 0a  jmp   $0a01

0c0a: fa 24 31  mov   ($31),($24)
0c0d: 8f 03 30  mov   $30,#$03
0c10: 5f 01 0a  jmp   $0a01

0c13: fa 24 31  mov   ($31),($24)
0c16: 8f 04 30  mov   $30,#$04
0c19: 5f 01 0a  jmp   $0a01

0c1c: fa 24 31  mov   ($31),($24)
0c1f: 8f 05 30  mov   $30,#$05
0c22: 5f 01 0a  jmp   $0a01

0c25: e4 24     mov   a,$24
0c27: 3f 38 09  call  $0938
0c2a: 5f 01 0a  jmp   $0a01

0c2d: 12 3b     clr0  $3b
0c2f: 13 24 07  bbc0  $24,$0c39
0c32: 02 3b     set0  $3b
0c34: 2f 03     bra   $0c39
0c36: 58 01 3b  eor   $3b,#$01
0c39: e4 3b     mov   a,$3b
0c3b: 28 01     and   a,#$01
0c3d: 5f 08 0a  jmp   $0a08

0c40: e4 39     mov   a,$39
0c42: 5f 08 0a  jmp   $0a08

0c45: fa 24 0b  mov   ($0b),($24)
0c48: fa 25 0c  mov   ($0c),($25)
0c4b: 5f 01 0a  jmp   $0a01

0c4e: e4 24     mov   a,$24
0c50: 8d 00     mov   y,#$00
0c52: d7 0b     mov   ($0b)+y,a
0c54: f7 0b     mov   a,($0b)+y
0c56: 5f 08 0a  jmp   $0a08

0c59: e4 24     mov   a,$24
0c5b: 8d 00     mov   y,#$00
0c5d: d7 0b     mov   ($0b)+y,a
0c5f: f7 0b     mov   a,($0b)+y
0c61: 3a 0b     incw  $0b
0c63: 5f 08 0a  jmp   $0a08

0c66: fa 24 0d  mov   ($0d),($24)
0c69: fa 25 0e  mov   ($0e),($25)
0c6c: 5f 01 0a  jmp   $0a01

0c6f: ba 24     movw  ya,$24
0c71: da 0f     movw  $0f,ya
0c73: ba 0b     movw  ya,$0b
0c75: 5a 0d     cmpw  ya,$0d
0c77: b0 27     bcs   $0ca0
0c79: eb 10     mov   y,$10
0c7b: d0 07     bne   $0c84
0c7d: f8 0f     mov   x,$0f
0c7f: d0 14     bne   $0c95
0c81: 5f 01 0a  jmp   $0a01

0c84: 8d 00     mov   y,#$00
0c86: f7 0d     mov   a,($0d)+y
0c88: d7 0b     mov   ($0b)+y,a
0c8a: fc        inc   y
0c8b: d0 f9     bne   $0c86
0c8d: ab 0e     inc   $0e
0c8f: ab 0c     inc   $0c
0c91: 8b 10     dec   $10
0c93: 2f e4     bra   $0c79
0c95: f7 0d     mov   a,($0d)+y
0c97: d7 0b     mov   ($0b)+y,a
0c99: fc        inc   y
0c9a: 1d        dec   x
0c9b: d0 f8     bne   $0c95
0c9d: 5f 01 0a  jmp   $0a01

0ca0: 7a 0f     addw  ya,$0f
0ca2: da 0b     movw  $0b,ya
0ca4: 1a 0b     decw  $0b
0ca6: ba 0d     movw  ya,$0d
0ca8: 7a 0f     addw  ya,$0f
0caa: da 0d     movw  $0d,ya
0cac: 1a 0d     decw  $0d
0cae: eb 10     mov   y,$10
0cb0: d0 07     bne   $0cb9
0cb2: eb 0f     mov   y,$0f
0cb4: d0 18     bne   $0cce
0cb6: 5f 01 0a  jmp   $0a01

0cb9: 8d 00     mov   y,#$00
0cbb: f7 0d     mov   a,($0d)+y
0cbd: d7 0b     mov   ($0b)+y,a
0cbf: 8b 0e     dec   $0e
0cc1: 8b 0c     dec   $0c
0cc3: dc        dec   y
0cc4: f7 0d     mov   a,($0d)+y
0cc6: d7 0b     mov   ($0b)+y,a
0cc8: fe fa     dbnz  y,$0cc4
0cca: 8b 10     dec   $10
0ccc: 2f e0     bra   $0cae
0cce: ba 0d     movw  ya,$0d
0cd0: 9a 0f     subw  ya,$0f
0cd2: da 0d     movw  $0d,ya
0cd4: ba 0b     movw  ya,$0b
0cd6: 9a 0f     subw  ya,$0f
0cd8: da 0b     movw  $0b,ya
0cda: eb 0f     mov   y,$0f
0cdc: f7 0d     mov   a,($0d)+y
0cde: d7 0b     mov   ($0b)+y,a
0ce0: fe fa     dbnz  y,$0cdc
0ce2: 5f 01 0a  jmp   $0a01

0ce5: ba 24     movw  ya,$24
0ce7: da 19     movw  $19,ya
0ce9: 5f 92 08  jmp   $0892

0cec: e4 1a     mov   a,$1a
0cee: eb 24     mov   y,$24
0cf0: f0 02     beq   $0cf4
0cf2: e4 19     mov   a,$19
0cf4: 5f 08 0a  jmp   $0a08

0cf7: ba 24     movw  ya,$24
0cf9: da 15     movw  $15,ya
0cfb: 3f c7 12  call  $12c7
0cfe: 5f 01 0a  jmp   $0a01

0d01: e4 16     mov   a,$16
0d03: eb 24     mov   y,$24
0d05: f0 02     beq   $0d09
0d07: e4 15     mov   a,$15
0d09: 5f 08 0a  jmp   $0a08

0d0c: ba 24     movw  ya,$24
0d0e: da 17     movw  $17,ya
0d10: 3f 5b 28  call  $285b
0d13: 5f 01 0a  jmp   $0a01

0d16: e4 18     mov   a,$18
0d18: eb 24     mov   y,$24
0d1a: f0 02     beq   $0d1e
0d1c: e4 17     mov   a,$17
0d1e: 5f 08 0a  jmp   $0a08

0d21: e4 25     mov   a,$25
0d23: c5 5b 01  mov   $015b,a
0d26: 5f 92 08  jmp   $0892

0d29: e5 5b 01  mov   a,$015b
0d2c: 5f 08 0a  jmp   $0a08

0d2f: fa 25 1b  mov   ($1b),($25)
0d32: 5f 92 08  jmp   $0892

0d35: e4 1b     mov   a,$1b
0d37: 5f 08 0a  jmp   $0a08

0d3a: e8 00     mov   a,#$00
0d3c: c4 08     mov   $08,a
0d3e: c4 09     mov   $09,a
0d40: 8f 01 0a  mov   $0a,#$01
0d43: 3f f0 0f  call  $0ff0
0d46: 3f fe 08  call  $08fe
0d49: 3f 65 09  call  $0965
0d4c: 5f 01 0a  jmp   $0a01

0d4f: fa 24 08  mov   ($08),($24)
0d52: fa 25 09  mov   ($09),($25)
0d55: 3f 42 10  call  $1042
0d58: b0 03     bcs   $0d5d
0d5a: 3f 65 09  call  $0965
0d5d: e8 00     mov   a,#$00
0d5f: c4 f5     mov   $f5,a
0d61: 5f 01 0a  jmp   $0a01

0d64: 8f 07 30  mov   $30,#$07
0d67: 5f 01 0a  jmp   $0a01

0d6a: fa 24 31  mov   ($31),($24)
0d6d: 8f 08 30  mov   $30,#$08
0d70: 5f 01 0a  jmp   $0a01

0d73: e4 24     mov   a,$24
0d75: d0 05     bne   $0d7c
0d77: 8f 09 30  mov   $30,#$09
0d7a: 2f 05     bra   $0d81
0d7c: 8f 0a 30  mov   $30,#$0a
0d7f: c4 31     mov   $31,a
0d81: 3f fe 08  call  $08fe
0d84: e4 30     mov   a,$30
0d86: d0 f9     bne   $0d81
0d88: 5f 01 0a  jmp   $0a01

0d8b: 8f 0c 30  mov   $30,#$0c
0d8e: fa 24 31  mov   ($31),($24)
0d91: fa 25 32  mov   ($32),($25)
0d94: 3f fe 12  call  $12fe
0d97: 5f 01 0a  jmp   $0a01

0d9a: e8 00     mov   a,#$00
0d9c: c5 f1 00  mov   $00f1,a
0d9f: c5 fa 00  mov   $00fa,a
0da2: c5 fb 00  mov   $00fb,a
0da5: c5 fc 00  mov   $00fc,a
0da8: c4 1e     mov   $1e,a
0daa: c4 1f     mov   $1f,a
0dac: c4 20     mov   $20,a
0dae: c4 21     mov   $21,a
0db0: 6f        ret

0db1: d4 1f     mov   $1f+x,a
0db3: f5 79 11  mov   a,$1179+x
0db6: fd        mov   y,a
0db7: 3f c8 0d  call  $0dc8
0dba: f4 1f     mov   a,$1f+x
0dbc: d5 fa 00  mov   $00fa+x,a
0dbf: dd        mov   a,y
0dc0: 04 1e     or    a,$1e
0dc2: c5 f1 00  mov   $00f1,a
0dc5: c4 1e     mov   $1e,a
0dc7: 6f        ret

0dc8: 48 ff     eor   a,#$ff
0dca: 24 1e     and   a,$1e
0dcc: c5 f1 00  mov   $00f1,a
0dcf: c4 1e     mov   $1e,a
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
0de3: 4f 0c     pcall $0c               ; set #$e0 to FLG
0de5: 3f 77 0f  call  $0f77
0de8: cd 07     mov   x,#$07
0dea: e8 00     mov   a,#$00
0dec: 8d 01     mov   y,#$01
0dee: 4f 00     pcall $00               ; set #$00 to VOL(R)
0df0: 8d 00     mov   y,#$00
0df2: 4f 00     pcall $00               ; set #$00 to VOL(L)
0df4: 1d        dec   x
0df5: 10 f5     bpl   $0dec
0df7: e5 0c 08  mov   a,$080c
0dfa: c5 59 01  mov   $0159,a
0dfd: 8d 0c     mov   y,#$0c
0dff: 4f 0c     pcall $0c               ; set $080c to MVOL(L)
0e01: e5 0d 08  mov   a,$080d
0e04: c5 5a 01  mov   $015a,a
0e07: 8d 1c     mov   y,#$1c
0e09: 4f 0c     pcall $0c               ; set $080d to MVOL(R)
0e0b: e8 00     mov   a,#$00
0e0d: 8d 3d     mov   y,#$3d
0e0f: 4f 0c     pcall $0c               ; set #$00 to NON
0e11: 8d 2d     mov   y,#$2d
0e13: 4f 0c     pcall $0c               ; set #$00 to PMON
0e15: e8 ff     mov   a,#$ff
0e17: 3f 5f 11  call  $115f
0e1a: e5 5b 01  mov   a,$015b
0e1d: 8d 5d     mov   y,#$5d
0e1f: 4f 0c     pcall $0c               ; set $015b to DIR
0e21: 20        clrp
0e22: 6f        ret

0e23: 40        setp
0e24: 3f 8a 0e  call  $0e8a
0e27: e4 58     mov   a,$58
0e29: 8d 6c     mov   y,#$6c
0e2b: 4f 0c     pcall $0c               ; set $58 to FLG
0e2d: e4 41     mov   a,$41
0e2f: 48 ff     eor   a,#$ff
0e31: 24 4e     and   a,$4e
0e33: c4 5d     mov   $5d,a
0e35: e4 41     mov   a,$41
0e37: 24 4f     and   a,$4f
0e39: 04 5d     or    a,$5d
0e3b: 8d 3d     mov   y,#$3d
0e3d: 4f 0c     pcall $0c               ; set to NON
0e3f: e4 41     mov   a,$41
0e41: 48 ff     eor   a,#$ff
0e43: 24 4a     and   a,$4a
0e45: c4 5d     mov   $5d,a
0e47: e4 41     mov   a,$41
0e49: 24 4b     and   a,$4b
0e4b: 04 5d     or    a,$5d
0e4d: 8d 4c     mov   y,#$4c
0e4f: 4f 0c     pcall $0c               ; set to KOL
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
0e79: 4f 00     pcall $00               ; set #$9f to GAIN
0e7b: e8 00     mov   a,#$00
0e7d: 8d 05     mov   y,#$05
0e7f: 4f 00     pcall $00               ; set #$00 to ADSR(1)
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
0eca: 4f 0c     pcall $0c               ; set $(01)55 to EDL
0ecc: 3f fa 0e  call  $0efa
0ecf: 8d 6d     mov   y,#$6d
0ed1: 4f 0c     pcall $0c               ; set to ESA
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
0ef6: 4f 0c     pcall $0c               ; set #$00 to EFB
0ef8: 2f 3e     bra   $0f38
0efa: e4 55     mov   a,$55
0efc: 1c        asl   a
0efd: 1c        asl   a
0efe: 1c        asl   a
0eff: c4 5d     mov   $5d,a
0f01: e5 1b 00  mov   a,$001b
0f04: 80        setc
0f05: a4 5d     sbc   a,$5d
0f07: c4 57     mov   $57,a
0f09: 6f        ret

; set echo FIR filter A
0f0a: e4 56     mov   a,$56             ; $(01)56 - FIR index
0f0c: 1c        asl   a
0f0d: 1c        asl   a
0f0e: 1c        asl   a
0f0f: 8d 00     mov   y,#$00
0f11: 20        clrp
0f12: 7a 1c     addw  ya,$1c            ; add FIR table base
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
0f23: 4f 0c     pcall $0c               ; set FIR
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
0f3e: 4f 0c     pcall $0c               ; set $58 to FLG
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
0f58: 4f 0c     pcall $0c               ; set $(01)52 to EVOL(L)
0f5a: e4 53     mov   a,$53
0f5c: 8d 3c     mov   y,#$3c
0f5e: 4f 0c     pcall $0c               ; set $(01)53 to EVOL(R)
0f60: e4 54     mov   a,$54
0f62: 8d 0d     mov   y,#$0d
0f64: 4f 0c     pcall $0c               ; set $(01)54 to EFB
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
0f9f: 4f 0c     pcall $0c               ; set #$00 to EON
0fa1: 8d 2c     mov   y,#$2c
0fa3: 4f 0c     pcall $0c               ; set #$00 to EVOL(L)
0fa5: 8d 3c     mov   y,#$3c
0fa7: 4f 0c     pcall $0c               ; set #$00 to EVOL(R)
0fa9: 8d 0d     mov   y,#$0d
0fab: 4f 0c     pcall $0c               ; set #$00 to EFB
0fad: e8 20     mov   a,#$20
0faf: 0e 58 01  tset1 $0158
0fb2: e5 58 01  mov   a,$0158
0fb5: 8d 6c     mov   y,#$6c
0fb7: 5f 0c ff  jmp   $ff0c

0fba: e5 fd 00  mov   a,$00fd
0fbd: 28 0f     and   a,#$0f
0fbf: f0 1f     beq   $0fe0
0fc1: c4 0f     mov   $0f,a
0fc3: e5 61 01  mov   a,$0161
0fc6: f0 18     beq   $0fe0
0fc8: 30 09     bmi   $0fd3
0fca: 80        setc
0fcb: a4 0f     sbc   a,$0f
0fcd: f0 09     beq   $0fd8
0fcf: 30 07     bmi   $0fd8
0fd1: 2f 0a     bra   $0fdd
0fd3: 60        clrc
0fd4: 84 0f     adc   a,$0f
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

0ff0: 3f 65 09  call  $0965
0ff3: 8f aa f4  mov   $f4,#$aa
0ff6: 8f bb f5  mov   $f5,#$bb
0ff9: 8d 32     mov   y,#$32
0ffb: fe fe     dbnz  y,$0ffb
0ffd: e8 cc     mov   a,#$cc
0fff: 13 0a 02  bbc0  $0a,$1004
1002: 4f 42     pcall $42
1004: 64 f4     cmp   a,$f4
1006: d0 f7     bne   $0fff
1008: 69 09 08  cmp   ($08),($09)
100b: f0 27     beq   $1034
100d: 2f 2b     bra   $103a
100f: 13 0a 02  bbc0  $0a,$1014
1012: 4f 42     pcall $42
1014: eb f4     mov   y,$f4
1016: d0 f7     bne   $100f
1018: 7e f4     cmp   y,$f4
101a: d0 12     bne   $102e
101c: e4 f5     mov   a,$f5
101e: 13 0a 02  bbc0  $0a,$1023
1021: 4f 42     pcall $42
1023: cb f4     mov   $f4,y
1025: d7 08     mov   ($08)+y,a
1027: fc        inc   y
1028: d0 ee     bne   $1018
102a: ab 09     inc   $09
102c: 2f ea     bra   $1018
102e: 10 e8     bpl   $1018
1030: 7e f4     cmp   y,$f4
1032: 10 e4     bpl   $1018
1034: fa f6 08  mov   ($08),($f6)
1037: fa f7 09  mov   ($09),($f7)
103a: fa f4 f4  mov   ($f4),($f4)
103d: e4 f5     mov   a,$f5
103f: d0 ce     bne   $100f
1041: 6f        ret

1042: cd 01     mov   x,#$01
1044: 4f 35     pcall $35
1046: c4 0f     mov   $0f,a
1048: fd        mov   y,a
1049: f0 06     beq   $1051
104b: 68 7f     cmp   a,#$7f
104d: d0 f5     bne   $1044
104f: 80        setc
1050: 6f        ret

1051: e4 f6     mov   a,$f6
1053: d7 08     mov   ($08)+y,a
1055: fc        inc   y
1056: e4 f7     mov   a,$f7
1058: fa 0f f5  mov   ($f5),($0f)
105b: d7 08     mov   ($08)+y,a
105d: fc        inc   y
105e: f0 10     beq   $1070
1060: e4 f5     mov   a,$f5
1062: 64 f5     cmp   a,$f5
1064: d0 fa     bne   $1060
1066: c4 0f     mov   $0f,a
1068: 7e 0f     cmp   y,$0f
106a: f0 e5     beq   $1051
106c: 10 f2     bpl   $1060
106e: 60        clrc
106f: 6f        ret

1070: ab 09     inc   $09
1072: 2f ec     bra   $1060
1074: 8d 04     mov   y,#$04
1076: cf        mul   ya
1077: 7a 19     addw  ya,$19
1079: 6f        ret

107a: 8d 03     mov   y,#$03
107c: f7 04     mov   a,($04)+y
107e: 8d 00     mov   y,#$00
1080: 5d        mov   x,a
1081: 10 01     bpl   $1084
1083: dc        dec   y
1084: 7a 06     addw  ya,$06
1086: 30 08     bmi   $1090
1088: da 06     movw  $06,ya
108a: dd        mov   a,y
108b: 60        clrc
108c: 84 00     adc   a,$00
108e: 2f 17     bra   $10a7
1090: 48 ff     eor   a,#$ff
1092: c4 06     mov   $06,a
1094: dd        mov   a,y
1095: 48 ff     eor   a,#$ff
1097: c4 07     mov   $07,a
1099: 3a 06     incw  $06
109b: e4 00     mov   a,$00
109d: 80        setc
109e: a4 07     sbc   a,$07
10a0: 8f ff 07  mov   $07,#$ff
10a3: 10 02     bpl   $10a7
10a5: e8 00     mov   a,#$00
10a7: 8d 00     mov   y,#$00
10a9: cd 0c     mov   x,#$0c
10ab: 9e        div   ya,x
10ac: da 00     movw  $00,ya
10ae: 68 05     cmp   a,#$05
10b0: 90 03     bcc   $10b5
10b2: 8f 05 00  mov   $00,#$05
10b5: f8 01     mov   x,$01
10b7: e4 07     mov   a,$07
10b9: 30 0b     bmi   $10c6
10bb: f5 32 12  mov   a,$1232+x
10be: eb 06     mov   y,$06
10c0: cf        mul   ya
10c1: dd        mov   a,y
10c2: 8d 00     mov   y,#$00
10c4: 2f 0e     bra   $10d4
10c6: f5 31 12  mov   a,$1231+x
10c9: eb 06     mov   y,$06
10cb: cf        mul   ya
10cc: dd        mov   a,y
10cd: f0 05     beq   $10d4
10cf: 48 ff     eor   a,#$ff
10d1: bc        inc   a
10d2: 8d ff     mov   y,#$ff
10d4: da 06     movw  $06,ya
10d6: f8 01     mov   x,$01
10d8: f5 25 12  mov   a,$1225+x
10db: fd        mov   y,a
10dc: f5 19 12  mov   a,$1219+x
10df: 7a 06     addw  ya,$06
10e1: cb 07     mov   $07,y
10e3: 0b 00     asl   $00
10e5: f8 00     mov   x,$00
10e7: 1f ea 10  jmp   ($10ea+x)

10ea: dw $10f6  ;
10ec: dw $10f9  ;
10ee: dw $10fc  ;
10f0: dw $10ff  ;
10f2: dw $1102  ;
10f4: dw $1105  ;

10f6: 4b 07     lsr   $07
10f8: 7c        ror   a
10f9: 4b 07     lsr   $07
10fb: 7c        ror   a
10fc: 4b 07     lsr   $07
10fe: 7c        ror   a
10ff: 4b 07     lsr   $07
1101: 7c        ror   a
1102: 4b 07     lsr   $07
1104: 7c        ror   a
1105: c4 06     mov   $06,a
1107: 8d 00     mov   y,#$00
1109: f7 04     mov   a,($04)+y
110b: c4 01     mov   $01,a
110d: fc        inc   y
110e: f7 04     mov   a,($04)+y
1110: c4 00     mov   $00,a
1112: eb 07     mov   y,$07
1114: cf        mul   ya
1115: da 04     movw  $04,ya
1117: e4 00     mov   a,$00
1119: eb 06     mov   y,$06
111b: cf        mul   ya
111c: cb 00     mov   $00,y
111e: e4 01     mov   a,$01
1120: eb 06     mov   y,$06
1122: cf        mul   ya
1123: 7a 04     addw  ya,$04
1125: da 04     movw  $04,ya
1127: e4 01     mov   a,$01
1129: eb 07     mov   y,$07
112b: cf        mul   ya
112c: fd        mov   y,a
112d: e4 00     mov   a,$00
112f: 7a 04     addw  ya,$04
1131: 6f        ret

1132: f8 01     mov   x,$01
1134: f5 5d 12  mov   a,$125d+x
1137: c4 01     mov   $01,a
1139: fd        mov   y,a
113a: f8 00     mov   x,$00
113c: f5 3e 12  mov   a,$123e+x
113f: 1c        asl   a
1140: cf        mul   ya
1141: dd        mov   a,y
1142: 13 02 03  bbc0  $02,$1148
1145: 48 ff     eor   a,#$ff
1147: bc        inc   a
1148: 2d        push  a
; calc L/R volume balance
; $00=pan, $01=channel volume
; return A=R volume, Y=L volume
1149: e8 1e     mov   a,#$1e
114b: 80        setc
114c: a4 00     sbc   a,$00
114e: 5d        mov   x,a
114f: f5 3e 12  mov   a,$123e+x
1152: 1c        asl   a
1153: eb 01     mov   y,$01
1155: cf        mul   ya
1156: dd        mov   a,y
1157: 33 02 03  bbc1  $02,$115d
115a: 48 ff     eor   a,#$ff
115c: bc        inc   a
115d: ee        pop   y
115e: 6f        ret

115f: 8d 5c     mov   y,#$5c
1161: 4f 0c     pcall $0c               ; set to KOF
1163: 8d 0b     mov   y,#$0b
1165: fe fe     dbnz  y,$1165
1167: e8 00     mov   a,#$00
1169: 8d 5c     mov   y,#$5c
116b: 5f 0c ff  jmp   $ff0c

116e: 48 75     eor   a,#$75
1170: 64 73     cmp   a,$73
1172: 6f        ret

1173: 6e 20 53  dbnz  $20,$11c9
1176: 6f        ret

1177: db $66
1178: db $74
1179: db $01,$02,$04,$08,$10,$20,$40,$80
1181: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo FIR table
1189: db $7f,$00,$00,$00,$00,$00,$00,$00
1191: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1199: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
11a1: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
11a9: db $23,$ca,$f8,$2c,$eb,$08,$fb,$02
11b1: db $04,$f9,$f8,$27,$27,$f8,$f9,$04
11b9: db $14,$ff,$da,$1d,$1f,$e0,$ff,$0c
11c1: db $1b,$db,$33,$f2,$fd,$0e,$fc,$fd
11c9: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
11d1: db $29,$b9,$fd,$24,$0d,$f7,$fa,$00
11d9: db $35,$a8,$ff,$1a,$12,$04,$f8,$fb
11e1: db $1c,$cc,$2f,$ec,$f8,$12,$00,$fa
11e9: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
11f1: db $fa,$00,$1c,$29,$29,$1c,$00,$fa
11f9: db $fe,$fd,$16,$34,$34,$16,$fd,$fc
1201: db $fe,$fb,$10,$3a,$3a,$10,$fb,$fe
1209: db $48,$26,$0a,$dd,$08,$0d,$f9,$00
1211: db $38,$48,$14,$e6,$01,$0a,$fe,$fe

1219: db $5f,$de,$65,$f4,$8c,$2c,$d6,$8b,$4a,$14,$ea,$cd
1225: db $08,$08,$09,$09,$0a,$0b,$0b,$0c,$0d,$0e,$0e,$0f

1231: db $79,$7f,$87,$8f,$98,$a0,$aa,$b5,$bf,$ca,$d6,$e3,$f1

; panpot - volume balance table
123e: db $00,$07,$0d,$14,$1a,$21,$27,$2e
1146: db $34,$3a,$40,$45,$4b,$50,$55,$5a
114e: db $5e,$63,$67,$6b,$6e,$71,$74,$77
1156: db $79,$7b,$7c,$7d,$7e,$7f,$7f

125d: db $00,$01,$01,$02,$02,$02,$02,$02
1265: db $02,$02,$02,$03,$03,$03,$03,$03
126d: db $03,$04,$04,$04,$04,$05,$05,$05
1275: db $05,$06,$06,$06,$07,$07,$08,$08
127d: db $09,$09,$0a,$0a,$0b,$0b,$0c,$0d
1285: db $0e,$0e,$0f,$10,$11,$12,$13,$14
128d: db $15,$17,$18,$1a,$1b,$1d,$1e,$20
1295: db $22,$24,$26,$28,$2b,$2d,$30,$33
129d: db $36,$39,$3d,$40,$44,$48,$4c,$51
12a5: db $56,$5b,$60,$66,$6c,$72,$79,$80

; tempo - bpm to time table (sort of)
12ad: db $00,$02,$04,$05,$07,$09,$0b,$0d
12b5: db $0e,$10,$12,$14,$16,$17,$19,$1b
12bd: db $1d,$1f,$21,$22,$24,$26,$28,$2a
12c5: db $2b,$2d

12c7: cd 07     mov   x,#$07
12c9: e8 00     mov   a,#$00
12cb: d4 ae     mov   $ae+x,a
12cd: 1d        dec   x
12ce: 10 fb     bpl   $12cb
12d0: c4 8d     mov   $8d,a
12d2: fd        mov   y,a
12d3: f7 15     mov   a,($15)+y
12d5: c4 3e     mov   $3e,a
12d7: fc        inc   y
12d8: f7 15     mov   a,($15)+y
12da: c4 3f     mov   $3f,a
12dc: e8 ff     mov   a,#$ff
12de: 8d 2f     mov   y,#$2f
12e0: 5a 15     cmpw  ya,$15
12e2: b0 17     bcs   $12fb
12e4: e8 ff     mov   a,#$ff
12e6: 8d fe     mov   y,#$fe
12e8: 5a 15     cmpw  ya,$15
12ea: 90 0f     bcc   $12fb
12ec: 8d 00     mov   y,#$00
12ee: f7 3e     mov   a,($3e)+y
12f0: fc        inc   y
12f1: 17 3e     or    a,($3e)+y
12f3: f0 03     beq   $12f8
12f5: fc        inc   y
12f6: d0 f6     bne   $12ee
12f8: dd        mov   a,y
12f9: 5c        lsr   a
12fa: 6f        ret

12fb: e8 00     mov   a,#$00
12fd: 6f        ret

12fe: 3f 3b 13  call  $133b
1301: b0 37     bcs   $133a
1303: 3f 49 15  call  $1549
1306: 53 be 0c  bbc2  $be,$1315
1309: e5 5f 01  mov   a,$015f
130c: 68 05     cmp   a,#$05
130e: d0 2a     bne   $133a
1310: 52 be     clr2  $be
1312: 5f 72 23  jmp   $2372

1315: 3f a2 17  call  $17a2
1318: 8f 07 4a  mov   $4a,#$07
131b: f8 4a     mov   x,$4a
131d: f4 ae     mov   a,$ae+x
131f: 10 0f     bpl   $1330
1321: 3f a9 17  call  $17a9
1324: 3f 59 1e  call  $1e59
1327: 3f b7 1e  call  $1eb7
132a: 3f 66 1f  call  $1f66
132d: 3f 0c 23  call  $230c
1330: 8b 4a     dec   $4a
1332: 10 e7     bpl   $131b
1334: 43 be 03  bbs2  $be,$133a
1337: 5f 72 23  jmp   $2372

133a: 6f        ret

133b: e4 2a     mov   a,$2a
133d: 30 10     bmi   $134f
133f: e2 2a     set7  $2a
1341: 9c        dec   a
1342: 3f 51 13  call  $1351
1345: e8 ff     mov   a,#$ff
1347: c5 4c 01  mov   $014c,a
134a: 8f 00 8b  mov   $8b,#$00
134d: 80        setc
134e: 6f        ret

134f: 60        clrc
1350: 6f        ret

; read song header of song A
1351: 1c        asl   a
1352: fd        mov   y,a
1353: f7 3e     mov   a,($3e)+y
1355: c4 04     mov   $04,a
1357: fc        inc   y
1358: f7 3e     mov   a,($3e)+y
135a: c4 05     mov   $05,a             ; set seq header address to $04/5
135c: 8d 02     mov   y,#$02
135e: f7 15     mov   a,($15)+y
1360: c4 40     mov   $40,a
1362: fc        inc   y
1363: f7 15     mov   a,($15)+y
1365: c4 41     mov   $41,a
1367: fc        inc   y
1368: f7 15     mov   a,($15)+y
136a: c4 42     mov   $42,a
136c: fc        inc   y
136d: f7 15     mov   a,($15)+y
136f: c4 43     mov   $43,a
1371: fc        inc   y
1372: f7 15     mov   a,($15)+y
1374: c4 44     mov   $44,a
1376: fc        inc   y
1377: f7 15     mov   a,($15)+y
1379: c4 45     mov   $45,a
137b: fc        inc   y
137c: f7 15     mov   a,($15)+y
137e: c4 46     mov   $46,a
1380: fc        inc   y
1381: f7 15     mov   a,($15)+y
1383: c4 47     mov   $47,a
1385: fc        inc   y
1386: f7 15     mov   a,($15)+y
1388: c4 48     mov   $48,a
138a: fc        inc   y
138b: f7 15     mov   a,($15)+y
138d: c4 49     mov   $49,a
138f: e8 02     mov   a,#$02
1391: c4 be     mov   $be,a
1393: 3f 5d 09  call  $095d
; read more from seq header (repeat until 00 appears)
1396: 8d ff     mov   y,#$ff
1398: fc        inc   y
1399: f7 04     mov   a,($04)+y         ; song extra header type (0-9)
139b: fc        inc   y
139c: 1c        asl   a
139d: 5d        mov   x,a
139e: 1f a1 13  jmp   ($13a1+x)

13a1: dw $1548  ; 00 - end of extra header
13a3: dw $13b5  ; 01 - set channel addresses (1+N*2 bytes)
13a5: dw $1476  ; 02 - set timebase (1 byte)
13a7: dw $148a  ; 03 - instrument table (1+4*N byte)
13a9: dw $14a2  ; 04 - rhythm kit table (1+N*2 byte)
13ab: dw $14af  ; 05 - (1+2*N byte)
13ad: dw $14c7  ; 06 - (1+2*N byte)
13af: dw $14d4  ; 07 - set initial echo param (1 or 8 bytes)
13b1: dw $1531  ; 08 - (1 byte)
13b3: dw $153a  ; 09 - (1+2*N byte)

; extra header 01 - set channel addresses
13b5: f7 04     mov   a,($04)+y         ; arg1 - bit flag, whether channel is used or not (1=active, bit X -> channel X)
13b7: c5 40 01  mov   $0140,a
13ba: c4 00     mov   $00,a
13bc: cd 00     mov   x,#$00            ; channel #
; repeat for each channels (X=0-7)
13be: e8 00     mov   a,#$00
13c0: d4 ae     mov   $ae+x,a
13c2: d4 b6     mov   $b6+x,a
13c4: d5 42 01  mov   $0142+x,a
13c7: 4b 00     lsr   $00
13c9: 90 73     bcc   $143e
13cb: fc        inc   y
13cc: f7 04     mov   a,($04)+y         ; seq start address (lo)
13ce: d5 01 02  mov   $0201+x,a
13d1: d5 4a 02  mov   $024a+x,a
13d4: fc        inc   y
13d5: f7 04     mov   a,($04)+y         ; seq start address (hi)
13d7: d5 09 02  mov   $0209+x,a
13da: d5 52 02  mov   $0252+x,a         ; default global loop point = song start
13dd: e8 00     mov   a,#$00
13df: d5 a4 03  mov   $03a4+x,a
13e2: d5 cc 02  mov   $02cc+x,a
13e5: d5 16 03  mov   $0316+x,a
13e8: d5 c4 02  mov   $02c4+x,a
13eb: d5 6e 03  mov   $036e+x,a
13ee: d5 93 02  mov   $0293+x,a
13f1: d5 39 02  mov   $0239+x,a
13f4: d5 11 02  mov   $0211+x,a
13f7: d4 9e     mov   $9e+x,a
13f9: d4 a6     mov   $a6+x,a
13fb: d4 8e     mov   $8e+x,a
13fd: d4 96     mov   $96+x,a
13ff: d5 ac 02  mov   $02ac+x,a
1402: d5 7e 03  mov   $037e+x,a
1405: bc        inc   a
1406: d5 21 02  mov   $0221+x,a
1409: e8 00     mov   a,#$00
140b: d5 42 02  mov   $0242+x,a
140e: e8 02     mov   a,#$02
1410: d5 19 02  mov   $0219+x,a
1413: d5 06 03  mov   $0306+x,a
1416: e8 08     mov   a,#$08
1418: d5 31 02  mov   $0231+x,a
141b: e8 0f     mov   a,#$0f
141d: d5 7b 02  mov   $027b+x,a
1420: e8 48     mov   a,#$48
1422: d5 73 02  mov   $0273+x,a
1425: e8 78     mov   a,#$78
1427: d5 9c 02  mov   $029c+x,a
142a: d5 a4 02  mov   $02a4+x,a
142d: e8 7f     mov   a,#$7f
142f: d5 83 02  mov   $0283+x,a
1432: e8 ff     mov   a,#$ff
1434: d5 5a 02  mov   $025a+x,a
1437: e8 80     mov   a,#$80
1439: d5 8b 02  mov   $028b+x,a
143c: d4 ae     mov   $ae+x,a
143e: 3d        inc   x
143f: c8 08     cmp   x,#$08
1441: b0 03     bcs   $1446
; end repeat (for each channels)
1443: 5f be 13  jmp   $13be

1446: 13 3b 02  bbc0  $3b,$144b
1449: 62 be     set3  $be
144b: 6d        push  y
144c: e8 78     mov   a,#$78
144e: c5 00 02  mov   $0200,a             ; set default tempo = 120
1451: 3f 38 09  call  $0938
1454: e8 7f     mov   a,#$7f
1456: c5 72 02  mov   $0272,a
1459: c5 a1 03  mov   $03a1,a
145c: e8 00     mov   a,#$00
145e: c5 9b 02  mov   $029b,a
1461: c5 dc 02  mov   $02dc,a
1464: c5 dd 02  mov   $02dd,a
1467: c4 8d     mov   $8d,a
1469: c5 41 02  mov   $0241,a
146c: c5 9e 03  mov   $039e,a
146f: c5 a2 03  mov   $03a2,a
1472: ee        pop   y
1473: 5f 98 13  jmp   $1398

; extra header 02 - set timebase (note length shift)
1476: f7 04     mov   a,($04)+y
1478: 28 03     and   a,#$03
147a: c4 00     mov   $00,a
147c: 38 fc be  and   $be,#$fc
147f: 09 00 be  or    ($be),($00)
1482: 6d        push  y
1483: 3f 5d 09  call  $095d
1486: ee        pop   y
1487: 5f 98 13  jmp   $1398

; extra header 03 - instrument table
148a: f7 04     mov   a,($04)+y         ; arg1 - number of instruments
148c: 5d        mov   x,a
148d: dd        mov   a,y
148e: bc        inc   a
148f: 8d 00     mov   y,#$00
1491: 7a 04     addw  ya,$04
1493: da 40     movw  $40,ya            ; set instrument table address to $40/1
; skip X*4 bytes
1495: da 04     movw  $04,ya
1497: 8d 04     mov   y,#$04
1499: 7d        mov   a,x
149a: cf        mul   ya
149b: 7a 04     addw  ya,$04
149d: da 04     movw  $04,ya
149f: 5f 96 13  jmp   $1396

; extra header 04 - rhythm kit table
14a2: f7 04     mov   a,($04)+y         ; arg1 - number of instruments
14a4: 5d        mov   x,a
14a5: dd        mov   a,y
14a6: bc        inc   a
14a7: 8d 00     mov   y,#$00
14a9: 7a 04     addw  ya,$04
14ab: da 42     movw  $42,ya            ; set rhythm kit table address to $42/3
14ad: 2f e6     bra   $1495             ; skip table contents, (arg1 * 4) bytes
; extra header 05
14af: f7 04     mov   a,($04)+y         ; arg1 - count of addresses in table
14b1: 5d        mov   x,a
14b2: dd        mov   a,y
14b3: bc        inc   a
14b4: 8d 00     mov   y,#$00
14b6: 7a 04     addw  ya,$04
14b8: da 44     movw  $44,ya
; skip X*2 bytes
14ba: da 04     movw  $04,ya
14bc: 7d        mov   a,x
14bd: 1c        asl   a
14be: 8d 00     mov   y,#$00
14c0: 7a 04     addw  ya,$04
14c2: da 04     movw  $04,ya            ; skip table contents, (arg1 * 2) bytes
14c4: 5f 96 13  jmp   $1396

; extra header 06
14c7: f7 04     mov   a,($04)+y
14c9: 5d        mov   x,a
14ca: dd        mov   a,y
14cb: bc        inc   a
14cc: 8d 00     mov   y,#$00
14ce: 7a 04     addw  ya,$04
14d0: da 46     movw  $46,ya
14d2: 2f e6     bra   $14ba             ; skip table contents, (arg1 * 2) bytes
; extra header 07 - set initial echo param
14d4: f7 04     mov   a,($04)+y         ; arg1 - use default echo
14d6: f0 2e     beq   $1506             ; if 0, use user-defined echo params
; use default echo presets
14d8: cd 00     mov   x,#$00
14da: f5 58 08  mov   a,$0858+x
14dd: c5 52 01  mov   $0152,a           ; EVOL(L)
14e0: 3d        inc   x
14e1: f5 58 08  mov   a,$0858+x
14e4: c5 53 01  mov   $0153,a           ; EVOL(R)
14e7: 3d        inc   x
14e8: f5 58 08  mov   a,$0858+x
14eb: c5 55 01  mov   $0155,a           ; EDL
14ee: 3d        inc   x
14ef: f5 58 08  mov   a,$0858+x
14f2: c5 54 01  mov   $0154,a           ; EFB
14f5: 3d        inc   x
14f6: f5 58 08  mov   a,$0858+x
14f9: c5 56 01  mov   $0156,a           ; FIR #
14fc: 3d        inc   x
14fd: f5 58 08  mov   a,$0858+x
1500: c4 8d     mov   $8d,a             ; EON
1502: 82 be     set4  $be
1504: 2f 23     bra   $1529
1506: fc        inc   y
1507: f7 04     mov   a,($04)+y
1509: c5 52 01  mov   $0152,a           ; arg2 - EVOL(L)
150c: fc        inc   y
150d: f7 04     mov   a,($04)+y
150f: c5 53 01  mov   $0153,a           ; arg3 - EVOL(R)
1512: fc        inc   y
1513: f7 04     mov   a,($04)+y
1515: c5 55 01  mov   $0155,a           ; arg4 - EDL
1518: fc        inc   y
1519: f7 04     mov   a,($04)+y
151b: c5 54 01  mov   $0154,a           ; arg5 - EFB
151e: fc        inc   y
151f: f7 04     mov   a,($04)+y
1521: c5 56 01  mov   $0156,a           ; arg6 - FIR #
1524: fc        inc   y
1525: f7 04     mov   a,($04)+y
1527: c4 8d     mov   $8d,a             ; arg7 - EON
1529: 3f 8f 0f  call  $0f8f
152c: 42 be     set2  $be
152e: 5f 98 13  jmp   $1398

; extra header 08
1531: f7 04     mov   a,($04)+y
1533: f0 02     beq   $1537
1535: a2 be     set5  $be
1537: 5f 98 13  jmp   $1398

; extra header 09
153a: f7 04     mov   a,($04)+y
153c: 5d        mov   x,a
153d: dd        mov   a,y
153e: bc        inc   a
153f: 8d 00     mov   y,#$00
1541: 7a 04     addw  ya,$04
1543: da 48     movw  $48,ya
1545: 5f ba 14  jmp   $14ba

; extra header 00 - end of extra header
1548: 6f        ret

1549: e4 30     mov   a,$30
154b: 8f 00 30  mov   $30,#$00
154e: 1c        asl   a
154f: 5d        mov   x,a
1550: 1f 53 15  jmp   ($1553+x)

1553: dw $15b3  ;
1555: dw $156d  ;
1557: dw $1591  ;
1559: dw $15b4  ;
155b: dw $15dd  ;
155d: dw $15ed  ;
155f: dw $1608  ;
1561: dw $1637  ;
1563: dw $1657  ;
1565: dw $167e  ;
1567: dw $16e4  ;
1569: dw $1715  ;
156b: dw $176a  ;

156d: 8f 00 00  mov   $00,#$00
1570: cd 07     mov   x,#$07
1572: f4 ae     mov   a,$ae+x
1574: 28 7f     and   a,#$7f
1576: d4 ae     mov   $ae+x,a
1578: f5 79 11  mov   a,$1179+x
157b: 25 41 01  and   a,$0141
157e: d0 06     bne   $1586
1580: f5 79 11  mov   a,$1179+x
1583: 0e 00 00  tset1 $0000
1586: 1d        dec   x
1587: 10 e9     bpl   $1572
1589: 8f 00 8d  mov   $8d,#$00
158c: e4 00     mov   a,$00
158e: 5f 5f 11  jmp   $115f

1591: e4 31     mov   a,$31
1593: c5 72 02  mov   $0272,a
1596: c5 a1 03  mov   $03a1,a
1599: e8 80     mov   a,#$80
159b: 4e 73 02  tclr1 $0273
159e: 4e 74 02  tclr1 $0274
15a1: 4e 75 02  tclr1 $0275
15a4: 4e 76 02  tclr1 $0276
15a7: 4e 77 02  tclr1 $0277
15aa: 4e 78 02  tclr1 $0278
15ad: 4e 79 02  tclr1 $0279
15b0: 4e 7a 02  tclr1 $027a
15b3: 6f        ret

15b4: e5 9e 03  mov   a,$039e
15b7: f0 02     beq   $15bb
15b9: 10 21     bpl   $15dc
15bb: e8 00     mov   a,#$00
15bd: c5 a0 03  mov   $03a0,a
15c0: e8 02     mov   a,#$02
15c2: c5 9f 03  mov   $039f,a
15c5: e4 31     mov   a,$31
15c7: 10 10     bpl   $15d9
15c9: 28 7c     and   a,#$7c
15cb: 5c        lsr   a
15cc: 5c        lsr   a
15cd: 85 9f 03  adc   a,$039f
15d0: 10 02     bpl   $15d4
15d2: e8 7f     mov   a,#$7f
15d4: c5 9f 03  mov   $039f,a
15d7: e8 7f     mov   a,#$7f
15d9: c5 9e 03  mov   $039e,a
15dc: 6f        ret

15dd: cd 07     mov   x,#$07
15df: 0b 31     asl   $31
15e1: 90 06     bcc   $15e9
15e3: f4 ae     mov   a,$ae+x
15e5: 08 20     or    a,#$20
15e7: d4 ae     mov   $ae+x,a
15e9: 1d        dec   x
15ea: 10 f3     bpl   $15df
15ec: 6f        ret

15ed: cd 07     mov   x,#$07
15ef: 0b 31     asl   $31
15f1: 90 11     bcc   $1604
15f3: fb ae     mov   y,$ae+x
15f5: dd        mov   a,y
15f6: 28 20     and   a,#$20
15f8: f0 0a     beq   $1604
15fa: dd        mov   a,y
15fb: 28 df     and   a,#$df
15fd: d4 ae     mov   $ae+x,a
15ff: e8 01     mov   a,#$01
1601: d5 42 01  mov   $0142+x,a
1604: 1d        dec   x
1605: 10 e8     bpl   $15ef
1607: 6f        ret

1608: e8 04     mov   a,#$04
160a: 0e ae 00  tset1 $00ae
160d: 0e af 00  tset1 $00af
1610: 0e b0 00  tset1 $00b0
1613: 0e b1 00  tset1 $00b1
1616: 0e b2 00  tset1 $00b2
1619: 0e b3 00  tset1 $00b3
161c: 0e b4 00  tset1 $00b4
161f: 0e b5 00  tset1 $00b5
1622: 93 be 11  bbc4  $be,$1636
1625: e5 58 08  mov   a,$0858
1628: c5 52 01  mov   $0152,a
162b: e5 59 08  mov   a,$0859
162e: c5 53 01  mov   $0153,a
1631: e5 5d 08  mov   a,$085d
1634: c4 8d     mov   $8d,a
1636: 6f        ret

1637: e5 a2 03  mov   a,$03a2
163a: d0 fa     bne   $1636
163c: 3f 48 16  call  $1648
163f: c5 a2 03  mov   $03a2,a
1642: 8f b4 31  mov   $31,#$b4
1645: 5f b4 15  jmp   $15b4

1648: e8 00     mov   a,#$00
164a: cd 07     mov   x,#$07
164c: fb ae     mov   y,$ae+x
164e: 10 03     bpl   $1653
1650: 15 79 11  or    a,$1179+x
1653: 1d        dec   x
1654: 10 f6     bpl   $164c
1656: 6f        ret

1657: e5 a2 03  mov   a,$03a2
165a: f0 21     beq   $167d
165c: cd 07     mov   x,#$07
165e: 0c a2 03  asl   $03a2
1661: 90 0b     bcc   $166e
1663: f4 ae     mov   a,$ae+x
1665: 08 80     or    a,#$80
1667: d4 ae     mov   $ae+x,a
1669: e8 01     mov   a,#$01
166b: d5 42 01  mov   $0142+x,a
166e: 1d        dec   x
166f: 10 ed     bpl   $165e
1671: 3f b4 15  call  $15b4
1674: e8 80     mov   a,#$80
1676: 0e 9e 03  tset1 $039e
1679: 1c        asl   a
167a: c5 72 02  mov   $0272,a
167d: 6f        ret

167e: e5 60 01  mov   a,$0160
1681: d0 03     bne   $1686
1683: c5 55 01  mov   $0155,a
1686: e5 a2 03  mov   a,$03a2
1689: d0 03     bne   $168e
168b: 3f 48 16  call  $1648
168e: c5 2c 04  mov   $042c,a
1691: 12 02     clr0  $02
1693: e8 d0     mov   a,#$d0
1695: 8d 27     mov   y,#$27
1697: da 04     movw  $04,ya
1699: e8 2d     mov   a,#$2d
169b: 8d 04     mov   y,#$04
169d: da 06     movw  $06,ya
169f: cd 00     mov   x,#$00
16a1: e7 04     mov   a,($04+x)
16a3: f0 26     beq   $16cb
16a5: c4 01     mov   $01,a
16a7: 9f        xcn   a
16a8: 28 0f     and   a,#$0f
16aa: fd        mov   y,a
16ab: 3a 04     incw  $04
16ad: e7 04     mov   a,($04+x)
16af: c4 00     mov   $00,a
16b1: 38 0f 01  and   $01,#$0f
16b4: 03 02 06  bbs0  $02,$16bd
16b7: e7 00     mov   a,($00+x)
16b9: c7 06     mov   ($06+x),a
16bb: 2f 04     bra   $16c1
16bd: e7 06     mov   a,($06+x)
16bf: c7 00     mov   ($00+x),a
16c1: 3a 00     incw  $00
16c3: 3a 06     incw  $06
16c5: fe ed     dbnz  y,$16b4
16c7: 3a 04     incw  $04
16c9: 2f d6     bra   $16a1
16cb: e8 ac     mov   a,#$ac
16cd: 8d 03     mov   y,#$03
16cf: da 04     movw  $04,ya
16d1: 8d 7f     mov   y,#$7f
16d3: 03 02 06  bbs0  $02,$16dc
16d6: f7 04     mov   a,($04)+y
16d8: d7 06     mov   ($06)+y,a
16da: 2f 04     bra   $16e0
16dc: f7 06     mov   a,($06)+y
16de: d7 04     mov   ($04)+y,a
16e0: dc        dec   y
16e1: 10 f0     bpl   $16d3
16e3: 6f        ret

16e4: e5 2c 04  mov   a,$042c
16e7: f0 fa     beq   $16e3
16e9: c5 a2 03  mov   $03a2,a
16ec: e8 00     mov   a,#$00
16ee: c5 2c 04  mov   $042c,a
16f1: 02 02     set0  $02
16f3: 3f 93 16  call  $1693
16f6: e4 be     mov   a,$be
16f8: 28 03     and   a,#$03
16fa: 3f 5d 09  call  $095d
16fd: e5 00 02  mov   a,$0200
1700: 3f 38 09  call  $0938
1703: 13 3b 02  bbc0  $3b,$1708
1706: 62 be     set3  $be
1708: e5 55 01  mov   a,$0155
170b: f0 05     beq   $1712
170d: 3f 8f 0f  call  $0f8f
1710: 42 be     set2  $be
1712: 5f 57 16  jmp   $1657

1715: 3f 32 17  call  $1732
1718: 38 07 31  and   $31,#$07
171b: c2 be     set6  $be
171d: 3f 3a 17  call  $173a
1720: e5 a2 03  mov   a,$03a2
1723: f0 07     beq   $172c
1725: c3 be f5  bbs6  $be,$171d
1728: 8b 31     dec   $31
172a: 10 ef     bpl   $171b
172c: 8f ff 31  mov   $31,#$ff
172f: 5f 57 16  jmp   $1657

1732: 3f 6d 15  call  $156d
1735: f2 2a     clr7  $2a
1737: 5f 3b 13  jmp   $133b

173a: 8f 07 4a  mov   $4a,#$07
173d: e8 00     mov   a,#$00
173f: c5 a2 03  mov   $03a2,a
1742: 3f a2 17  call  $17a2
1745: f8 4a     mov   x,$4a
1747: f4 ae     mov   a,$ae+x
1749: 10 1a     bpl   $1765
174b: 3f a9 17  call  $17a9
174e: 3f 59 1e  call  $1e59
1751: 3f b7 1e  call  $1eb7
1754: 3f 66 1f  call  $1f66
1757: 3f 0c 23  call  $230c
175a: f8 4a     mov   x,$4a
175c: e5 a2 03  mov   a,$03a2
175f: 15 79 11  or    a,$1179+x
1762: c5 a2 03  mov   $03a2,a
1765: 8b 4a     dec   $4a
1767: 10 dc     bpl   $1745
1769: 6f        ret

176a: 3f 32 17  call  $1732
176d: 8b 32     dec   $32
176f: f0 f8     beq   $1769
1771: e4 31     mov   a,$31
1773: 28 07     and   a,#$07
1775: 8d 18     mov   y,#$18
1777: cf        mul   ya
1778: cb 00     mov   $00,y
177a: eb 32     mov   y,$32
177c: cf        mul   ya
177d: da bf     movw  $bf,ya
177f: eb 00     mov   y,$00
1781: e4 32     mov   a,$32
1783: cf        mul   ya
1784: 60        clrc
1785: 84 c0     adc   a,$c0
1787: c4 c0     mov   $c0,a
1789: eb 3a     mov   y,$3a
178b: dc        dec   y
178c: f0 06     beq   $1794
178e: 4b c0     lsr   $c0
1790: 6b bf     ror   $bf
1792: 2f f7     bra   $178b
1794: 3f 3a 17  call  $173a
1797: e5 a2 03  mov   a,$03a2
179a: f0 04     beq   $17a0
179c: 1a bf     decw  $bf
179e: d0 f4     bne   $1794
17a0: 2f 8a     bra   $172c
17a2: e8 00     mov   a,#$00
17a4: c4 8b     mov   $8b,a
17a6: c4 8c     mov   $8c,a
17a8: 6f        ret

17a9: f8 4a     mov   x,$4a
17ab: f5 21 02  mov   a,$0221+x
17ae: 9c        dec   a
17af: f0 04     beq   $17b5
17b1: d5 21 02  mov   $0221+x,a
17b4: 6f        ret

17b5: f5 01 02  mov   a,$0201+x
17b8: c4 04     mov   $04,a
17ba: f5 09 02  mov   a,$0209+x
17bd: c4 05     mov   $05,a             ; set vcmd ptr $0201+x/$0209+x to $04/5
17bf: 2f 02     bra   $17c3

; advance vcmd read ptr
17c1: 3a 04     incw  $04
; vcmd d7-d8, ee, f4-fd - nop (dispatch next voice byte)
17c3: 8d 00     mov   y,#$00
17c5: f7 04     mov   a,($04)+y
17c7: 3a 04     incw  $04
17c9: c4 00     mov   $00,a             ; save vcmd (or note byte) to $00
17cb: 68 d0     cmp   a,#$d0
17cd: b0 03     bcs   $17d2
17cf: 5f 77 18  jmp   $1877

; dispatch vcmd (d0-ff)
17d2: a8 d0     sbc   a,#$d0
17d4: 1c        asl   a
17d5: 5d        mov   x,a
17d6: 1f d9 17  jmp   ($17d9+x)

17d9: dw $19aa  ; d0
17db: dw $19af  ; d1 - set tempo
17dd: dw $19bf  ; d2 - set octave
17df: dw $19cf  ; d3 - increase octave
17e1: dw $19e1  ; d4 - decrease octave
17e3: dw $19f1  ; d5 - set quantize
17e5: dw $19fb  ; d6 - set instrument
17e7: dw $17c3  ; d7 - nop
17e9: dw $17c3  ; d8 - nop
17eb: dw $1a0b  ; d9 - set volume
17ed: dw $1a29  ; da - set panpot
17ef: dw $1a41  ; db - set reverse phase
17f1: dw $1a54  ; dc - add volume
17f3: dw $1a6b  ; dd - start loop
17f5: dw $1a8a  ; de - end loop
17f7: dw $1aad  ; df - call subroutine
17f9: dw $1acf  ; e0 - goto
17fb: dw $1adc  ; e1 - detune
17fd: dw $1ae6  ; e2 - set vibrato (3 bytes)
17ff: dw $1b14  ; e3 - set vibrato delay
1801: dw $1b28  ; e4 - set echo volume
1803: dw $1b37  ; e5 - set echo delay, feedback, FIR
1805: dw $1b52  ; e6 - echo on
1807: dw $1b5d  ; e7 - transpose (absolute)
1809: dw $1b67  ; e8 - transpose (relative)
180b: dw $1b75  ; e9 - pitch attack envelope on
180d: dw $1ba0  ; ea - pitch attack envelope off
180f: dw $1bab  ; eb - set track loop position
1811: dw $1bba  ; ec - repeat from track loop position
1813: dw $1bc9  ; ed - set track loop position (only work with the first call)
1815: dw $17c3  ; ee - nop
1817: dw $1be4  ; ef - one-step pitch envelope?
1819: dw $1bf5  ; f0 - (1 byte)
181b: dw $1bff  ; f1 - set portamento
181d: dw $1c2a  ; f2 - (1 byte)
181f: dw $1c48  ; f3 - (1 byte)
1821: dw $17c3  ; f4 - nop
1823: dw $17c3  ; f5 - nop
1825: dw $17c3  ; f6 - nop
1827: dw $17c3  ; f7 - nop
1829: dw $17c3  ; f8 - nop
182b: dw $17c3  ; f9 - nop
182d: dw $17c3  ; fa - nop
182f: dw $17c3  ; fb - nop
1831: dw $17c3  ; fc - nop
1833: dw $17c3  ; fd - nop
1835: dw $1c74  ; fe - sub command
1837: dw $1c7f  ; ff - end of track / end subroutine

; subcmd table (see vcmd fe)
1839: dw $1c9c  ; 00 - end of track
183b: dw $1ca5  ; 01 - echo off
183d: dw $1cb0  ; 02 - (0 byte)
183f: dw $1cb9  ; 03 - rhythm channel on
1841: dw $1cc4  ; 04 - rhythm channel off
1843: dw $17c3  ; 05 - nop
1845: dw $17c3  ; 06 - nop
1847: dw $17c3  ; 07 - nop
1849: dw $1ccf  ; 08 - (0 byte)
184b: dw $1ce2  ; 09 - (0 byte)
184d: dw $1cef  ; 0a - (0 byte)
184f: dw $1cfa  ; 0b - (0 byte)
1851: dw $1d0c  ; 0c - (0 byte)
1853: dw $1d17  ; 0d - (1 byte)
1855: dw $17c3  ; 0e - nop
1857: dw $17c3  ; 0f - nop
1859: dw $1d21  ; 10 - mov reg, #imm
185b: dw $1d38  ; 11 - mov reg, reg
185d: dw $1d5b  ; 12 - cmp reg, #imm
185f: dw $1d72  ; 13 - cmp reg, reg
1861: dw $1d94  ; 14 - bne (branch on Z=0)
1863: dw $1da3  ; 15 - beq (branch on Z=1)
1865: dw $1db2  ; 16 - bcs (branch on C=1)
1867: dw $1dc1  ; 17 - bcc (branch on C=0)
1869: dw $1dd0  ; 18 - bmi (branch on N=1)
186b: dw $1ddf  ; 19 - bpl (branch on N=0)
186d: dw $1dee  ; 1a - set attack rate (AR)
186f: dw $1dfb  ; 1b - set decay rate (DR)
1871: dw $1e0f  ; 1c - set sustain level (SL)
1873: dw $1e22  ; 1d - set sustain rate (SR)
1875: dw $1e31  ; 1e - set pseudo release rate (GAIN)

; dispatch note (00-cf)
1877: f8 4a     mov   x,$4a
1879: e4 00     mov   a,$00
187b: 28 07     and   a,#$07            ; bit 0-2 (length)
187d: f0 1c     beq   $189b
; if length > 1, get actual length from table
187f: c4 01     mov   $01,a
1881: e4 be     mov   a,$be
1883: 28 03     and   a,#$03            ; index += ($be & 3)
1885: 60        clrc
1886: 84 01     adc   a,$01
1888: fd        mov   y,a
1889: f6 60 27  mov   a,$2760+y
188c: 68 01     cmp   a,#$01
188e: d0 0f     bne   $189f
; if actual length == 1, correct it to be 1.5
1890: f4 ae     mov   a,$ae+x
1892: 48 01     eor   a,#$01
1894: d4 ae     mov   $ae+x,a           ; $ae+x ^= 1
1896: 28 01     and   a,#$01
1898: bc        inc   a                 ; length += 0.5
1899: 2f 04     bra   $189f
; if length == 0, get actual length from next byte
189b: f7 04     mov   a,($04)+y
189d: 3a 04     incw  $04
189f: d5 21 02  mov   $0221+x,a         ; set wait length (tick)
18a2: e4 00     mov   a,$00
18a4: 28 f0     and   a,#$f0
18a6: d0 0a     bne   $18b2
; if bit 4-7 == 0, rest
18a8: 73 00 02  bbc3  $00,$18ad
18ab: 08 80     or    a,#$80
18ad: c4 02     mov   $02,a
18af: 5f 48 19  jmp   $1948

; if bit 4-7 != 0, note
18b2: 9f        xcn   a                 ; bit 4-7 (scaled pitch)
18b3: 9c        dec   a                 ; 1,2,3...12 => c,c+,d...b
18b4: c4 01     mov   $01,a
18b6: f5 19 02  mov   a,$0219+x
18b9: 8d 0c     mov   y,#$0c
18bb: cf        mul   ya
18bc: 60        clrc
18bd: 84 01     adc   a,$01             ; note number (octave corrected, 0-71)
18bf: 73 00 02  bbc3  $00,$18c4
18c2: 08 80     or    a,#$80            ; set bit 7, if note bit 3 (tie) is set
18c4: c4 02     mov   $02,a
18c6: f5 21 02  mov   a,$0221+x         ; set note number to $0211+x
18c9: 63 00 2b  bbs3  $00,$18f7
; calc duration, if bit 3 (tie) is not set
18cc: fd        mov   y,a
18cd: f5 31 02  mov   a,$0231+x         ; quantize value Q (see vcmd d5)
18d0: 10 04     bpl   $18d6
18d2: 28 7f     and   a,#$7f
18d4: 2f 20     bra   $18f6
18d6: 68 09     cmp   a,#$09
18d8: 90 11     bcc   $18eb
; if Q>8, set duration to (full length - (Q - 8))) (MML @q)
18da: a8 08     sbc   a,#$08
18dc: c4 01     mov   $01,a
18de: f5 21 02  mov   a,$0221+x
18e1: a4 01     sbc   a,$01
18e3: f0 02     beq   $18e7
18e5: b0 0f     bcs   $18f6
18e7: e8 01     mov   a,#$01
18e9: 2f 0b     bra   $18f6
; if Q=0~8, set duration to Q/8 of full length (MML q)
18eb: cf        mul   ya
18ec: cd 08     mov   x,#$08
18ee: 9e        div   ya,x
18ef: ad 00     cmp   y,#$00
18f1: f0 01     beq   $18f4
18f3: bc        inc   a
18f4: f8 4a     mov   x,$4a
18f6: 9c        dec   a
;
18f7: d5 29 02  mov   $0229+x,a         ; set duration to $0229+x
18fa: f4 ae     mov   a,$ae+x
18fc: 28 08     and   a,#$08
18fe: f0 2b     beq   $192b
; rhythm channel
1900: e4 02     mov   a,$02
1902: 1c        asl   a
1903: 1c        asl   a
1904: fd        mov   y,a               ; y = note number * 4
1905: f7 42     mov   a,($42)+y
1907: 75 5a 02  cmp   a,$025a+x
190a: f0 09     beq   $1915
190c: d5 5a 02  mov   $025a+x,a         ; instrument #
190f: f4 ae     mov   a,$ae+x
1911: 08 04     or    a,#$04
1913: d4 ae     mov   $ae+x,a
1915: fc        inc   y
1916: f7 42     mov   a,($42)+y
1918: 73 00 02  bbc3  $00,$191d
191b: 08 80     or    a,#$80
191d: c4 02     mov   $02,a             ; pitch (note number)
191f: fc        inc   y
1920: f7 42     mov   a,($42)+y
1922: d5 73 02  mov   $0273+x,a         ; volume
1925: fc        inc   y
1926: f7 42     mov   a,($42)+y
1928: d5 7b 02  mov   $027b+x,a         ; panpot
;
192b: f5 11 02  mov   a,$0211+x
192e: 30 05     bmi   $1935
1930: e8 01     mov   a,#$01
1932: d5 42 02  mov   $0242+x,a
1935: f4 ae     mov   a,$ae+x
1937: 08 02     or    a,#$02
1939: d4 ae     mov   $ae+x,a
193b: f5 8b 02  mov   a,$028b+x
193e: 30 08     bmi   $1948
1940: f5 73 02  mov   a,$0273+x
1943: 28 7f     and   a,#$7f
1945: d5 73 02  mov   $0273+x,a
1948: b3 be 1a  bbc5  $be,$1965
194b: f4 b6     mov   a,$b6+x
194d: 30 16     bmi   $1965
194f: 8d 00     mov   y,#$00
1951: f7 04     mov   a,($04)+y
1953: 3a 04     incw  $04
1955: 75 83 02  cmp   a,$0283+x
1958: f0 0b     beq   $1965
195a: d5 83 02  mov   $0283+x,a
195d: f5 73 02  mov   a,$0273+x
1960: 28 7f     and   a,#$7f
1962: d5 73 02  mov   $0273+x,a
1965: e4 04     mov   a,$04
1967: d5 01 02  mov   $0201+x,a
196a: e4 05     mov   a,$05
196c: d5 09 02  mov   $0209+x,a
196f: f4 ae     mov   a,$ae+x
1971: 28 48     and   a,#$48
1973: d0 0e     bne   $1983
1975: cd 00     mov   x,#$00
1977: e7 04     mov   a,($04+x)
1979: 68 d0     cmp   a,#$d0
197b: b0 0e     bcs   $198b
197d: 28 f0     and   a,#$f0
197f: d0 02     bne   $1983
1981: e2 02     set7  $02
1983: f8 4a     mov   x,$4a
1985: e4 02     mov   a,$02
1987: d5 11 02  mov   $0211+x,a
198a: 6f        ret

198b: 68 fe     cmp   a,#$fe
198d: f0 11     beq   $19a0
198f: 80        setc
1990: a8 d0     sbc   a,#$d0
1992: fd        mov   y,a
1993: f6 81 27  mov   a,$2781+y
1996: f0 eb     beq   $1983
1998: 8d 00     mov   y,#$00
199a: 7a 04     addw  ya,$04
199c: da 04     movw  $04,ya
199e: 2f d7     bra   $1977
19a0: 3a 04     incw  $04
19a2: e7 04     mov   a,($04+x)
19a4: fd        mov   y,a
19a5: f6 b1 27  mov   a,$27b1+y
19a8: 2f ec     bra   $1996

; vcmd d0
19aa: d2 be     clr6  $be
19ac: 5f c3 17  jmp   $17c3

; vcmd d1 - set tempo
19af: f7 04     mov   a,($04)+y
19b1: 65 00 02  cmp   a,$0200
19b4: f0 06     beq   $19bc
19b6: c5 00 02  mov   $0200,a
19b9: 3f 38 09  call  $0938
19bc: 5f c1 17  jmp   $17c1

; vcmd d2 - set octave
19bf: f8 4a     mov   x,$4a
19c1: f7 04     mov   a,($04)+y         ; arg1 - octave
19c3: 68 05     cmp   a,#$05
19c5: 90 02     bcc   $19c9
19c7: e8 05     mov   a,#$05            ; arg1 = min(arg1, 5)
19c9: d5 19 02  mov   $0219+x,a
19cc: 5f c1 17  jmp   $17c1

; vcmd d3 - increase octave
19cf: f8 4a     mov   x,$4a
19d1: f5 19 02  mov   a,$0219+x
19d4: bc        inc   a
19d5: 68 05     cmp   a,#$05
19d7: 90 02     bcc   $19db
19d9: e8 05     mov   a,#$05
19db: d5 19 02  mov   $0219+x,a
19de: 5f c3 17  jmp   $17c3

; vcmd d4 - decrease octave
19e1: f8 4a     mov   x,$4a
19e3: f5 19 02  mov   a,$0219+x
19e6: 9c        dec   a
19e7: 10 02     bpl   $19eb
19e9: e8 00     mov   a,#$00
19eb: d5 19 02  mov   $0219+x,a
19ee: 5f c3 17  jmp   $17c3

; vcmd d5 - set quantize
19f1: f8 4a     mov   x,$4a
19f3: f7 04     mov   a,($04)+y
19f5: d5 31 02  mov   $0231+x,a
19f8: 5f c1 17  jmp   $17c1

; vcmd d6 - set instrument
19fb: f8 4a     mov   x,$4a
19fd: f7 04     mov   a,($04)+y
19ff: d5 5a 02  mov   $025a+x,a
1a02: f4 ae     mov   a,$ae+x
1a04: 08 04     or    a,#$04
1a06: d4 ae     mov   $ae+x,a
1a08: 5f c1 17  jmp   $17c1

; vcmd d9 - set volume
1a0b: f8 4a     mov   x,$4a
1a0d: f7 04     mov   a,($04)+y
1a0f: 3f 1d 1a  call  $1a1d             ; min = 0, max = 79
19c7: e8 05     mov   a,#$05
1a12: d5 73 02  mov   $0273+x,a
1a15: e8 00     mov   a,#$00
1a17: d5 7e 03  mov   $037e+x,a
1a1a: 5f c1 17  jmp   $17c1

; clip volume A between 0 and 79
1a1d: 10 03     bpl   $1a22
1a1f: e8 00     mov   a,#$00
1a21: 6f        ret
1a22: 68 4f     cmp   a,#$4f
1a24: 90 02     bcc   $1a28
1a26: e8 4f     mov   a,#$4f
1a28: 6f        ret

; vcmd da - set panpot
1a29: f8 4a     mov   x,$4a
1a2b: f7 04     mov   a,($04)+y
1a2d: 68 1e     cmp   a,#$1e
1a2f: 90 02     bcc   $1a33
1a31: e8 1e     mov   a,#$1e            ; min = 0, max = 30
1a33: d5 7b 02  mov   $027b+x,a
1a36: f5 73 02  mov   a,$0273+x
1a39: 28 7f     and   a,#$7f
1a3b: d5 73 02  mov   $0273+x,a
1a3e: 5f c1 17  jmp   $17c1

; vcmd db - set reverse phase
1a41: f8 4a     mov   x,$4a
1a43: f7 04     mov   a,($04)+y
1a45: 28 03     and   a,#$03
1a47: c4 00     mov   $00,a
1a49: f4 b6     mov   a,$b6+x
1a4b: 28 fc     and   a,#$fc
1a4d: 04 00     or    a,$00
1a4f: d4 b6     mov   $b6+x,a
1a51: 5f c1 17  jmp   $17c1

; vcmd dc - add volume
1a54: f8 4a     mov   x,$4a
1a56: f7 04     mov   a,($04)+y
1a58: c4 01     mov   $01,a
1a5a: f5 73 02  mov   a,$0273+x
1a5d: 28 7f     and   a,#$7f
1a5f: 60        clrc
1a60: 84 01     adc   a,$01
1a62: 3f 1d 1a  call  $1a1d
1a65: d5 73 02  mov   $0273+x,a
1a68: 5f c1 17  jmp   $17c1

; vcmd dd - start loop
1a6b: f8 4a     mov   x,$4a
1a6d: 3f 3c 1e  call  $1e3c             ; get call stack
1a70: e4 04     mov   a,$04
1a72: d7 06     mov   ($06)+y,a
1a74: fc        inc   y
1a75: e4 05     mov   a,$05
1a77: d7 06     mov   ($06)+y,a         ; push return address
1a79: fc        inc   y
1a7a: cd 00     mov   x,#$00
1a7c: e7 04     mov   a,($04+x)
1a7e: d7 06     mov   ($06)+y,a         ; push repeat count (arg1, 0 means 256)
1a80: fc        inc   y
1a81: dd        mov   a,y
1a82: f8 4a     mov   x,$4a
1a84: d5 a4 03  mov   $03a4+x,a         ; update stack pointer
1a87: 5f c1 17  jmp   $17c1

; vcmd de - end loop
1a8a: f8 4a     mov   x,$4a
1a8c: 3f 3c 1e  call  $1e3c             ; get call stack
1a8f: dc        dec   y
1a90: f7 06     mov   a,($06)+y
1a92: 9c        dec   a                 ; decrease loop count
1a93: f0 0f     beq   $1aa4
; repeat again
1a95: d7 06     mov   ($06)+y,a
1a97: dc        dec   y
1a98: f7 06     mov   a,($06)+y
1a9a: c4 05     mov   $05,a
1a9c: dc        dec   y
1a9d: f7 06     mov   a,($06)+y
1a9f: c4 04     mov   $04,a
1aa1: 5f c1 17  jmp   $17c1
; repeat end
1aa4: dc        dec   y
1aa5: dc        dec   y
1aa6: dd        mov   a,y
1aa7: d5 a4 03  mov   $03a4+x,a
1aaa: 5f c3 17  jmp   $17c3

; vcmd df - call subroutine
1aad: f8 4a     mov   x,$4a
1aaf: 3f 3c 1e  call  $1e3c             ; get call stack
1ab2: e4 04     mov   a,$04
1ab4: d7 06     mov   ($06)+y,a
1ab6: fc        inc   y
1ab7: e4 05     mov   a,$05
1ab9: d7 06     mov   ($06)+y,a         ; push return address
1abb: fc        inc   y
1abc: dd        mov   a,y
1abd: d5 a4 03  mov   $03a4+x,a         ; update stack pointer
1ac0: 8d 00     mov   y,#$00
1ac2: f7 04     mov   a,($04)+y
1ac4: 5d        mov   x,a
1ac5: fc        inc   y
1ac6: f7 04     mov   a,($04)+y
1ac8: c4 05     mov   $05,a
1aca: d8 04     mov   $04,x             ; jump to arg1/2
1acc: 5f c3 17  jmp   $17c3

; vcmd e0 - goto
1acf: f7 04     mov   a,($04)+y
1ad1: 5d        mov   x,a
1ad2: fc        inc   y
1ad3: f7 04     mov   a,($04)+y
1ad5: c4 05     mov   $05,a
1ad7: d8 04     mov   $04,x
1ad9: 5f c3 17  jmp   $17c3

; vcmd e1 - detune
1adc: f8 4a     mov   x,$4a
1ade: f7 04     mov   a,($04)+y
1ae0: d5 93 02  mov   $0293+x,a
1ae3: 5f c1 17  jmp   $17c1

; vcmd e2 - set vibrato
1ae6: f8 4a     mov   x,$4a
1ae8: f7 04     mov   a,($04)+y
1aea: 28 7f     and   a,#$7f
1aec: f0 14     beq   $1b02
1aee: d5 9c 02  mov   $029c+x,a
1af1: 3a 04     incw  $04
1af3: f7 04     mov   a,($04)+y
1af5: d5 a4 02  mov   $02a4+x,a
1af8: 3a 04     incw  $04
1afa: f7 04     mov   a,($04)+y
1afc: d5 ac 02  mov   $02ac+x,a
1aff: 5f c1 17  jmp   $17c1
1b02: d5 a4 02  mov   $02a4+x,a
1b05: bc        inc   a
1b06: d5 9c 02  mov   $029c+x,a
1b09: e8 03     mov   a,#$03
1b0b: 8d 00     mov   y,#$00
1b0d: 7a 04     addw  ya,$04
1b0f: da 04     movw  $04,ya
1b11: 5f c3 17  jmp   $17c3

; vcmd e3 - set vibrato delay
1b14: f8 4a     mov   x,$4a
1b16: f7 04     mov   a,($04)+y
1b18: d0 08     bne   $1b22
1b1a: f5 79 11  mov   a,$1179+x
1b1d: 4e 9b 02  tclr1 $029b
1b20: e8 00     mov   a,#$00
1b22: d5 cc 02  mov   $02cc+x,a         ; arg1 - vibrato delay (tick?)
1b25: 5f c1 17  jmp   $17c1

; vcmd e4 - set echo volume
1b28: f7 04     mov   a,($04)+y
1b2a: c5 52 01  mov   $0152,a           ; arg1 - echo volume L
1b2d: 3a 04     incw  $04
1b2f: f7 04     mov   a,($04)+y
1b31: c5 53 01  mov   $0153,a           ; arg2 - echo volume R
1b34: 5f c1 17  jmp   $17c1

; vcmd e5 - set echo delay, feedback, FIR
1b37: f7 04     mov   a,($04)+y
1b39: c5 55 01  mov   $0155,a           ; arg1 - echo delay
1b3c: 3a 04     incw  $04
1b3e: f7 04     mov   a,($04)+y
1b40: c5 54 01  mov   $0154,a           ; arg2 - echo feedback
1b43: 3a 04     incw  $04
1b45: f7 04     mov   a,($04)+y
1b47: c5 56 01  mov   $0156,a           ; arg3 - echo FIR index
1b4a: 3f 8f 0f  call  $0f8f
1b4d: 42 be     set2  $be
1b4f: 5f c1 17  jmp   $17c1

; vcmd e6 - echo on
1b52: f8 4a     mov   x,$4a
1b54: f5 79 11  mov   a,$1179+x
1b57: 0e 8d 00  tset1 $008d
1b5a: 5f c3 17  jmp   $17c3

; vcmd e7 - transpose (absolute)
1b5d: f8 4a     mov   x,$4a
1b5f: f7 04     mov   a,($04)+y
1b61: d5 39 02  mov   $0239+x,a
1b64: 5f c1 17  jmp   $17c1

; vcmd e8 - transpose (relative)
1b67: f8 4a     mov   x,$4a
1b69: f5 39 02  mov   a,$0239+x
1b6c: 60        clrc
1b6d: 97 04     adc   a,($04)+y
1b6f: d5 39 02  mov   $0239+x,a
1b72: 5f c1 17  jmp   $17c1

; vcmd e9 - pitch attack envelope on
1b75: f8 4a     mov   x,$4a
1b77: f7 04     mov   a,($04)+y
1b79: 28 7f     and   a,#$7f
1b7b: f0 1c     beq   $1b99
; if (arg1 != 0), enable pitch attack envelope
1b7d: d5 de 02  mov   $02de+x,a         ; arg1 = pitch attack speed
1b80: 3a 04     incw  $04
1b82: f7 04     mov   a,($04)+y
1b84: f0 15     beq   $1b9b
1b86: d5 e6 02  mov   $02e6+x,a         ; arg2 = detune amount (unsigned)
1b89: 3a 04     incw  $04
1b8b: f7 04     mov   a,($04)+y
1b8d: d5 ee 02  mov   $02ee+x,a         ; arg3 = direction (0: down, otherwise: up)
1b90: f4 b6     mov   a,$b6+x
1b92: 08 10     or    a,#$10
1b94: d4 b6     mov   $b6+x,a
1b96: 5f c1 17  jmp   $17c1
; if (arg1 == 0), do nothing
1b99: 3a 04     incw  $04
1b9b: 3a 04     incw  $04
1b9d: 5f c1 17  jmp   $17c1

; vcmd ea - pitch attack envelope off
1ba0: f8 4a     mov   x,$4a
1ba2: f4 b6     mov   a,$b6+x
1ba4: 28 ef     and   a,#$ef
1ba6: d4 b6     mov   $b6+x,a
1ba8: 5f c3 17  jmp   $17c3

; vcmd eb - set track loop position
1bab: f8 4a     mov   x,$4a
1bad: e4 04     mov   a,$04
1baf: d5 4a 02  mov   $024a+x,a
1bb2: e4 05     mov   a,$05
1bb4: d5 52 02  mov   $0252+x,a
1bb7: 5f c3 17  jmp   $17c3

; vcmd ec - repeat from track loop position
1bba: f8 4a     mov   x,$4a
1bbc: f5 4a 02  mov   a,$024a+x
1bbf: c4 04     mov   $04,a
1bc1: f5 52 02  mov   a,$0252+x
1bc4: c4 05     mov   $05,a
1bc6: 5f c3 17  jmp   $17c3

; vcmd ed - set track loop position (only work with the first call)
1bc9: f8 4a     mov   x,$4a
1bcb: f4 b6     mov   a,$b6+x
1bcd: 28 20     and   a,#$20
1bcf: d0 10     bne   $1be1
1bd1: f4 b6     mov   a,$b6+x
1bd3: 08 20     or    a,#$20
1bd5: d4 b6     mov   $b6+x,a
1bd7: f5 4a 02  mov   a,$024a+x
1bda: c4 04     mov   $04,a
1bdc: f5 52 02  mov   a,$0252+x
1bdf: c4 05     mov   $05,a
1be1: 5f c3 17  jmp   $17c3

; vcmd ef - one-step pitch envelope?
1be4: f7 04     mov   a,($04)+y
1be6: f8 4a     mov   x,$4a
1be8: d5 0e 03  mov   $030e+x,a         ; arg1
1beb: 3a 04     incw  $04
1bed: f7 04     mov   a,($04)+y
1bef: d5 16 03  mov   $0316+x,a         ; arg2
1bf2: 5f c1 17  jmp   $17c1

; vcmd f0
1bf5: f8 4a     mov   x,$4a
1bf7: f7 04     mov   a,($04)+y
1bf9: d5 06 03  mov   $0306+x,a
1bfc: 5f c1 17  jmp   $17c1

; vcmd f1 - set portamento
1bff: f8 4a     mov   x,$4a
1c01: f7 04     mov   a,($04)+y
1c03: f0 1a     beq   $1c1f
; if (arg1 != 0), portamento on
1c05: bc        inc   a
1c06: d5 0e 03  mov   $030e+x,a         ; arg1 - portamento speed (higher is faster)
1c09: f4 b6     mov   a,$b6+x
1c0b: 08 40     or    a,#$40
1c0d: d4 b6     mov   $b6+x,a
1c0f: e8 00     mov   a,#$00
1c11: d5 1e 03  mov   $031e+x,a
1c14: d5 26 03  mov   $0326+x,a
1c17: d5 16 03  mov   $0316+x,a
1c1a: 3a 04     incw  $04               ; arg2 - no effect? usually 0
1c1c: 5f c1 17  jmp   $17c1
; if (arg1 == 0), portamento off
1c1f: f4 b6     mov   a,$b6+x
1c21: 28 bf     and   a,#$bf
1c23: d4 b6     mov   $b6+x,a
1c25: 3a 04     incw  $04
1c27: 5f c1 17  jmp   $17c1

; vcmd f2
1c2a: f8 4a     mov   x,$4a
1c2c: f7 04     mov   a,($04)+y
1c2e: d5 cc 02  mov   $02cc+x,a
1c31: f0 09     beq   $1c3c
1c33: f5 79 11  mov   a,$1179+x
1c36: 0e dc 02  tset1 $02dc
1c39: 5f c1 17  jmp   $17c1
; if (arg1 == 0)
1c3c: f5 79 11  mov   a,$1179+x
1c3f: 4e 9b 02  tclr1 $029b
1c42: 4e dc 02  tclr1 $02dc
1c45: 5f c1 17  jmp   $17c1

; vcmd f3
1c48: f8 4a     mov   x,$4a
1c4a: f7 04     mov   a,($04)+y
1c4c: 10 05     bpl   $1c53
1c4e: 48 ff     eor   a,#$ff
1c50: bc        inc   a
1c51: 08 80     or    a,#$80
1c53: d5 7e 03  mov   $037e+x,a
1c56: e8 00     mov   a,#$00
1c58: d5 96 03  mov   $0396+x,a
1c5b: 8d 18     mov   y,#$18
1c5d: e4 be     mov   a,$be
1c5f: 28 03     and   a,#$03
1c61: f0 07     beq   $1c6a
1c63: 8d 0c     mov   y,#$0c
1c65: 9c        dec   a
1c66: f0 02     beq   $1c6a
1c68: 8d 06     mov   y,#$06
1c6a: dd        mov   a,y
1c6b: d5 86 03  mov   $0386+x,a
1c6e: d5 8e 03  mov   $038e+x,a
1c71: 5f c1 17  jmp   $17c1

; vcmd fe - sub command         ; arg1 - subcmd xx
1c74: f7 04     mov   a,($04)+y
1c76: c4 00     mov   $00,a
1c78: 3a 04     incw  $04
1c7a: 1c        asl   a
1c7b: 5d        mov   x,a
1c7c: 1f 39 18  jmp   ($1839+x)

; vcmd ff - end of track / end subroutine
1c7f: f8 4a     mov   x,$4a
1c81: f5 a4 03  mov   a,$03a4+x         ; stack pointer
1c84: f0 16     beq   $1c9c
; end subroutine
1c86: 3f 3c 1e  call  $1e3c             ; get call stack
1c89: dc        dec   y
1c8a: f7 06     mov   a,($06)+y
1c8c: c4 05     mov   $05,a
1c8e: dc        dec   y
1c8f: f7 06     mov   a,($06)+y
1c91: c4 04     mov   $04,a             ; pop return address
1c93: dd        mov   a,y
1c94: d5 a4 03  mov   $03a4+x,a         ; update stack pointer
1c97: 3a 04     incw  $04
1c99: 5f c1 17  jmp   $17c1
; subcmd 00 - end of track
1c9c: f8 4a     mov   x,$4a
1c9e: f4 ae     mov   a,$ae+x
1ca0: 28 7f     and   a,#$7f
1ca2: d4 ae     mov   $ae+x,a
1ca4: 6f        ret

; subcmd 01 - echo off
1ca5: f8 4a     mov   x,$4a
1ca7: f5 79 11  mov   a,$1179+x
1caa: 4e 8d 00  tclr1 $008d
1cad: 5f c3 17  jmp   $17c3

; subcmd 02
1cb0: 8f 00 8d  mov   $8d,#$00
1cb3: 3f 95 0f  call  $0f95
1cb6: 5f c3 17  jmp   $17c3

; subcmd 03 - rhythm channel on
1cb9: f8 4a     mov   x,$4a
1cbb: f4 ae     mov   a,$ae+x
1cbd: 08 08     or    a,#$08
1cbf: d4 ae     mov   $ae+x,a
1cc1: 5f c3 17  jmp   $17c3

; subcmd 04 - rhythm channel off
1cc4: f8 4a     mov   x,$4a
1cc6: f4 ae     mov   a,$ae+x
1cc8: 28 f7     and   a,#$f7
1cca: d4 ae     mov   $ae+x,a
1ccc: 5f c3 17  jmp   $17c3

; subcmd 08
1ccf: f8 4a     mov   x,$4a
1cd1: f5 6e 03  mov   a,$036e+x
1cd4: 48 01     eor   a,#$01
1cd6: d5 6e 03  mov   $036e+x,a
1cd9: 5c        lsr   a
1cda: 90 03     bcc   $1cdf
1cdc: 3f 6f 21  call  $216f
1cdf: 5f c3 17  jmp   $17c3

; subcmd 09
1ce2: f8 4a     mov   x,$4a
1ce4: f5 6e 03  mov   a,$036e+x
1ce7: 48 02     eor   a,#$02
1ce9: d5 6e 03  mov   $036e+x,a
1cec: 5f c3 17  jmp   $17c3

; subcmd 0a
1cef: f8 4a     mov   x,$4a
1cf1: f4 ae     mov   a,$ae+x
1cf3: 48 40     eor   a,#$40
1cf5: d4 ae     mov   $ae+x,a
1cf7: 5f c3 17  jmp   $17c3

; subcmd 0b
1cfa: f8 4a     mov   x,$4a
1cfc: f5 c4 02  mov   a,$02c4+x
1cff: 48 01     eor   a,#$01
1d01: d5 c4 02  mov   $02c4+x,a
1d04: f0 03     beq   $1d09
1d06: 3f 3a 20  call  $203a
1d09: 5f c3 17  jmp   $17c3

; subcmd 0c
1d0c: f8 4a     mov   x,$4a
1d0e: f4 b6     mov   a,$b6+x
1d10: 08 80     or    a,#$80
1d12: d4 b6     mov   $b6+x,a
1d14: 5f c3 17  jmp   $17c3

; subcmd 0d
1d17: f8 4a     mov   x,$4a
1d19: f7 04     mov   a,($04)+y
1d1b: d5 8b 02  mov   $028b+x,a
1d1e: 5f c1 17  jmp   $17c1

; subcmd 10 - mov reg, #imm
1d21: f7 04     mov   a,($04)+y
1d23: f8 4a     mov   x,$4a
1d25: 3f 4b 1e  call  $1e4b
1d28: 8d 00     mov   y,#$00
1d2a: 3a 04     incw  $04
1d2c: f7 04     mov   a,($04)+y
1d2e: 0d        push  psw
1d2f: d7 06     mov   ($06)+y,a
1d31: ae        pop   a
1d32: c5 a3 03  mov   $03a3,a
1d35: 5f c1 17  jmp   $17c1

; subcmd 11 - mov reg, reg
1d38: fc        inc   y
1d39: f7 04     mov   a,($04)+y
1d3b: f8 4a     mov   x,$4a
1d3d: 3f 4b 1e  call  $1e4b
1d40: 8d 00     mov   y,#$00
1d42: f7 06     mov   a,($06)+y
1d44: c4 00     mov   $00,a
1d46: f7 04     mov   a,($04)+y
1d48: 3f 4b 1e  call  $1e4b
1d4b: 8d 00     mov   y,#$00
1d4d: e4 00     mov   a,$00
1d4f: 0d        push  psw
1d50: d7 06     mov   ($06)+y,a
1d52: ae        pop   a
1d53: c5 a3 03  mov   $03a3,a
1d56: 3a 04     incw  $04
1d58: 5f c1 17  jmp   $17c1

; subcmd 12 - cmp reg, #imm
1d5b: f7 04     mov   a,($04)+y
1d5d: f8 4a     mov   x,$4a
1d5f: 3f 4b 1e  call  $1e4b
1d62: 8d 00     mov   y,#$00
1d64: 3a 04     incw  $04
1d66: f7 06     mov   a,($06)+y
1d68: 77 04     cmp   a,($04)+y
1d6a: 0d        push  psw
1d6b: ae        pop   a
1d6c: c5 a3 03  mov   $03a3,a
1d6f: 5f c1 17  jmp   $17c1

; subcmd 13 - cmp reg, reg
1d72: f7 04     mov   a,($04)+y
1d74: f8 4a     mov   x,$4a
1d76: 3f 4b 1e  call  $1e4b
1d79: 8d 00     mov   y,#$00
1d7b: f7 06     mov   a,($06)+y
1d7d: c4 00     mov   $00,a
1d7f: 3a 04     incw  $04
1d81: f7 04     mov   a,($04)+y
1d83: 3f 4b 1e  call  $1e4b
1d86: 8d 00     mov   y,#$00
1d88: e4 00     mov   a,$00
1d8a: 77 06     cmp   a,($06)+y
1d8c: 0d        push  psw
1d8d: ae        pop   a
1d8e: c5 a3 03  mov   $03a3,a
1d91: 5f c1 17  jmp   $17c1

; subcmd 14 - bne (branch on Z=0)
1d94: e5 a3 03  mov   a,$03a3
1d97: 2d        push  a
1d98: 8e        pop   psw
1d99: d0 03     bne   $1d9e
1d9b: 5f cf 1a  jmp   $1acf
1d9e: 3a 04     incw  $04
1da0: 5f c1 17  jmp   $17c1

; subcmd 15 - beq (branch on Z=1)
1da3: e5 a3 03  mov   a,$03a3
1da6: 2d        push  a
1da7: 8e        pop   psw
1da8: f0 03     beq   $1dad
1daa: 5f cf 1a  jmp   $1acf
1dad: 3a 04     incw  $04
1daf: 5f c1 17  jmp   $17c1

; subcmd 16 - bcs (branch on C=1)
1db2: e5 a3 03  mov   a,$03a3
1db5: 2d        push  a
1db6: 8e        pop   psw
1db7: b0 03     bcs   $1dbc
1db9: 5f cf 1a  jmp   $1acf
1dbc: 3a 04     incw  $04
1dbe: 5f c1 17  jmp   $17c1

; subcmd 17 - bcc (branch on C=0)
1dc1: e5 a3 03  mov   a,$03a3
1dc4: 2d        push  a
1dc5: 8e        pop   psw
1dc6: 90 03     bcc   $1dcb
1dc8: 5f cf 1a  jmp   $1acf
1dcb: 3a 04     incw  $04
1dcd: 5f c1 17  jmp   $17c1

; subcmd 18 - bmi (branch on N=1)
1dd0: e5 a3 03  mov   a,$03a3
1dd3: 2d        push  a
1dd4: 8e        pop   psw
1dd5: 30 03     bmi   $1dda
1dd7: 5f cf 1a  jmp   $1acf
1dda: 3a 04     incw  $04
1ddc: 5f c1 17  jmp   $17c1

; subcmd 19 - bpl (branch on N=0)
1ddf: e5 a3 03  mov   a,$03a3
1de2: 2d        push  a
1de3: 8e        pop   psw
1de4: 10 03     bpl   $1de9
1de6: 5f cf 1a  jmp   $1acf
1de9: 3a 04     incw  $04
1deb: 5f c1 17  jmp   $17c1

; subcmd 1a - set attack rate (AR)
1dee: f8 4a     mov   x,$4a
1df0: f4 73     mov   a,$73+x
1df2: 28 f0     and   a,#$f0
1df4: 17 04     or    a,($04)+y
1df6: d4 73     mov   $73+x,a
1df8: 5f c1 17  jmp   $17c1

; subcmd 1b - set decay rate (DR)
1dfb: f8 4a     mov   x,$4a
1dfd: f4 73     mov   a,$73+x
1dff: 28 0f     and   a,#$0f
1e01: c4 00     mov   $00,a
1e03: f7 04     mov   a,($04)+y
1e05: 9f        xcn   a
1e06: 08 80     or    a,#$80
1e08: 04 00     or    a,$00
1e0a: d4 73     mov   $73+x,a
1e0c: 5f c1 17  jmp   $17c1

; subcmd 1c - set sustain level (SL)
1e0f: f8 4a     mov   x,$4a
1e11: f4 7b     mov   a,$7b+x
1e13: 28 1f     and   a,#$1f
1e15: c4 00     mov   $00,a
1e17: f7 04     mov   a,($04)+y
1e19: 9f        xcn   a
1e1a: 1c        asl   a
1e1b: 04 00     or    a,$00
1e1d: d4 7b     mov   $7b+x,a
1e1f: 5f c1 17  jmp   $17c1

; subcmd 1d - set sustain rate (SR)
1e22: f8 4a     mov   x,$4a
1e24: f4 7b     mov   a,$7b+x
1e26: 28 e0     and   a,#$e0
1e28: c4 00     mov   $00,a
1e2a: 17 04     or    a,($04)+y
1e2c: d4 7b     mov   $7b+x,a
1e2e: 5f c1 17  jmp   $17c1

; subcmd 1e - set pseudo release rate (GAIN)
1e31: f8 4a     mov   x,$4a
1e33: f7 04     mov   a,($04)+y
1e35: 08 a0     or    a,#$a0            ; exponential subtract (pseudo release)
1e37: d4 83     mov   $83+x,a           ; GAIN
1e39: 5f c1 17  jmp   $17c1

; get vcmd subroutine stack
1e3c: f5 51 27  mov   a,$2751+x
1e3f: c4 06     mov   $06,a
1e41: f5 59 27  mov   a,$2759+x
1e44: c4 07     mov   $07,a             ; get call stack (return address table) address to $06/7
1e46: f5 a4 03  mov   a,$03a4+x
1e49: fd        mov   y,a               ; get stack pointer to Y
1e4a: 6f        ret

; get user RAM (pseudo regs) address A to $06/7
1e4b: c4 06     mov   $06,a
1e4d: 8f 00 07  mov   $07,#$00
1e50: e8 50     mov   a,#$50
1e52: 8d 08     mov   y,#$08
1e54: 7a 06     addw  ya,$06
1e56: da 06     movw  $06,ya            ; $06/7 = $0850+a
1e58: 6f        ret

1e59: f8 4a     mov   x,$4a
1e5b: f4 ae     mov   a,$ae+x
1e5d: 28 04     and   a,#$04
1e5f: f0 33     beq   $1e94
1e61: f5 5a 02  mov   a,$025a+x
1e64: 8d 04     mov   y,#$04
1e66: cf        mul   ya
1e67: 7a 40     addw  ya,$40
1e69: da 04     movw  $04,ya
1e6b: 8d 03     mov   y,#$03
1e6d: f7 04     mov   a,($04)+y
1e6f: 30 08     bmi   $1e79
1e71: dc        dec   y
1e72: f7 04     mov   a,($04)+y
1e74: dc        dec   y
1e75: 17 04     or    a,($04)+y
1e77: f0 1c     beq   $1e95
1e79: d4 83     mov   $83+x,a
1e7b: dc        dec   y
1e7c: f7 04     mov   a,($04)+y
1e7e: d4 7b     mov   $7b+x,a
1e80: dc        dec   y
1e81: f7 04     mov   a,($04)+y
1e83: d4 73     mov   $73+x,a
1e85: dc        dec   y
1e86: f7 04     mov   a,($04)+y
1e88: d4 6b     mov   $6b+x,a
1e8a: 3f 74 10  call  $1074
1e8d: d5 62 02  mov   $0262+x,a
1e90: dd        mov   a,y
1e91: d5 6a 02  mov   $026a+x,a
1e94: 6f        ret

1e95: 8d 03     mov   y,#$03
1e97: f7 04     mov   a,($04)+y
1e99: 1c        asl   a
1e9a: 1c        asl   a
1e9b: fd        mov   y,a
1e9c: f6 40 08  mov   a,$0840+y
1e9f: d4 6b     mov   $6b+x,a
1ea1: fc        inc   y
1ea2: f6 40 08  mov   a,$0840+y
1ea5: d4 73     mov   $73+x,a
1ea7: fc        inc   y
1ea8: f6 40 08  mov   a,$0840+y
1eab: d4 7b     mov   $7b+x,a
1ead: fc        inc   y
1eae: f6 40 08  mov   a,$0840+y
1eb1: d4 83     mov   $83+x,a
1eb3: f4 6b     mov   a,$6b+x
1eb5: 2f d3     bra   $1e8a
1eb7: f8 4a     mov   x,$4a
1eb9: f5 7e 03  mov   a,$037e+x
1ebc: f0 55     beq   $1f13
1ebe: c4 00     mov   $00,a
1ec0: f5 8e 03  mov   a,$038e+x
1ec3: 9c        dec   a
1ec4: d0 4a     bne   $1f10
1ec6: f5 86 03  mov   a,$0386+x
1ec9: d5 8e 03  mov   $038e+x,a
1ecc: e4 00     mov   a,$00
1ece: 28 7f     and   a,#$7f
1ed0: 60        clrc
1ed1: 95 96 03  adc   a,$0396+x
1ed4: d5 96 03  mov   $0396+x,a
1ed7: 5c        lsr   a
1ed8: 5c        lsr   a
1ed9: 5c        lsr   a
1eda: f0 37     beq   $1f13
1edc: c4 01     mov   $01,a
1ede: f5 96 03  mov   a,$0396+x
1ee1: 28 07     and   a,#$07
1ee3: d5 96 03  mov   $0396+x,a
1ee6: f5 73 02  mov   a,$0273+x
1ee9: 28 7f     and   a,#$7f
1eeb: f3 00 0c  bbc7  $00,$1efa
1eee: 80        setc
1eef: a4 01     sbc   a,$01
1ef1: d5 73 02  mov   $0273+x,a
1ef4: 10 22     bpl   $1f18
1ef6: e8 00     mov   a,#$00
1ef8: 2f 0c     bra   $1f06
1efa: 60        clrc
1efb: 84 01     adc   a,$01
1efd: d5 73 02  mov   $0273+x,a
1f00: 68 4f     cmp   a,#$4f
1f02: 90 14     bcc   $1f18
1f04: e8 4f     mov   a,#$4f
1f06: d5 73 02  mov   $0273+x,a
1f09: e8 00     mov   a,#$00
1f0b: d5 7e 03  mov   $037e+x,a
1f0e: 2f 03     bra   $1f13
1f10: d5 8e 03  mov   $038e+x,a
1f13: f5 73 02  mov   a,$0273+x
1f16: 30 4d     bmi   $1f65
1f18: 1c        asl   a
1f19: fd        mov   y,a
1f1a: f5 8b 02  mov   a,$028b+x
1f1d: 30 1e     bmi   $1f3d
1f1f: 1c        asl   a
1f20: fd        mov   y,a
1f21: f7 48     mov   a,($48)+y
1f23: c4 04     mov   $04,a
1f25: fc        inc   y
1f26: f7 48     mov   a,($48)+y
1f28: c4 05     mov   $05,a
1f2a: f5 11 02  mov   a,$0211+x
1f2d: 28 7f     and   a,#$7f
1f2f: fd        mov   y,a
1f30: f5 73 02  mov   a,$0273+x
1f33: 28 7f     and   a,#$7f
1f35: 60        clrc
1f36: 97 04     adc   a,($04)+y
1f38: 3f 1d 1a  call  $1a1d
1f3b: 1c        asl   a
1f3c: fd        mov   y,a
1f3d: f5 83 02  mov   a,$0283+x
1f40: bc        inc   a
1f41: cf        mul   ya
1f42: dd        mov   a,y
1f43: 1c        asl   a
1f44: fd        mov   y,a
1f45: e5 72 02  mov   a,$0272
1f48: bc        inc   a
1f49: cf        mul   ya
1f4a: cb 01     mov   $01,y
1f4c: f5 7b 02  mov   a,$027b+x
1f4f: fb b6     mov   y,$b6+x
1f51: 73 be 04  bbc3  $be,$1f58
1f54: e8 0f     mov   a,#$0f
1f56: 8d 00     mov   y,#$00
1f58: c4 00     mov   $00,a
1f5a: cb 02     mov   $02,y
1f5c: 3f 32 11  call  $1132
1f5f: f8 4a     mov   x,$4a
1f61: db 4b     mov   $4b+x,y
1f63: d4 53     mov   $53+x,a
1f65: 6f        ret

1f66: f8 4a     mov   x,$4a
1f68: f4 ae     mov   a,$ae+x
1f6a: 28 02     and   a,#$02
1f6c: f0 74     beq   $1fe2
1f6e: f8 4a     mov   x,$4a
1f70: f4 b6     mov   a,$b6+x
1f72: 28 40     and   a,#$40
1f74: f0 0c     beq   $1f82
1f76: f4 9e     mov   a,$9e+x
1f78: d5 1e 03  mov   $031e+x,a
1f7b: f4 a6     mov   a,$a6+x
1f7d: d5 26 03  mov   $0326+x,a
1f80: 2f 0a     bra   $1f8c
1f82: f5 6e 03  mov   a,$036e+x
1f85: 28 02     and   a,#$02
1f87: f0 03     beq   $1f8c
1f89: 3f 6f 21  call  $216f
1f8c: f4 b6     mov   a,$b6+x
1f8e: 28 10     and   a,#$10
1f90: f0 0a     beq   $1f9c
1f92: f5 42 02  mov   a,$0242+x
1f95: 68 01     cmp   a,#$01
1f97: d0 43     bne   $1fdc
1f99: 3f 55 20  call  $2055
1f9c: f5 62 02  mov   a,$0262+x
1f9f: c4 04     mov   $04,a
1fa1: f5 6a 02  mov   a,$026a+x
1fa4: c4 05     mov   $05,a
1fa6: f5 11 02  mov   a,$0211+x
1fa9: 28 7f     and   a,#$7f
1fab: 8d 02     mov   y,#$02
1fad: 60        clrc
1fae: 97 04     adc   a,($04)+y
1fb0: 60        clrc
1fb1: 95 39 02  adc   a,$0239+x
1fb4: 60        clrc
1fb5: 85 41 02  adc   a,$0241
1fb8: c4 00     mov   $00,a
1fba: 8d 00     mov   y,#$00
1fbc: f5 93 02  mov   a,$0293+x
1fbf: 10 01     bpl   $1fc2
1fc1: dc        dec   y
1fc2: da 06     movw  $06,ya
1fc4: 3f 7a 10  call  $107a
1fc7: f8 4a     mov   x,$4a
1fc9: d4 9e     mov   $9e+x,a
1fcb: db a6     mov   $a6+x,y
1fcd: e8 00     mov   a,#$00
1fcf: d4 8e     mov   $8e+x,a
1fd1: d4 96     mov   $96+x,a
1fd3: f4 b6     mov   a,$b6+x
1fd5: 28 40     and   a,#$40
1fd7: f0 03     beq   $1fdc
1fd9: 3f e6 20  call  $20e6
1fdc: f4 ae     mov   a,$ae+x
1fde: 28 fd     and   a,#$fd
1fe0: d4 ae     mov   $ae+x,a
1fe2: f4 9e     mov   a,$9e+x
1fe4: d4 5b     mov   $5b+x,a
1fe6: f4 a6     mov   a,$a6+x
1fe8: d4 63     mov   $63+x,a
1fea: f4 b6     mov   a,$b6+x
1fec: 28 40     and   a,#$40
1fee: f0 05     beq   $1ff5
1ff0: 3f 21 21  call  $2121
1ff3: 2f 1d     bra   $2012
1ff5: f5 16 03  mov   a,$0316+x
1ff8: f0 18     beq   $2012
1ffa: f5 42 02  mov   a,$0242+x
1ffd: 68 01     cmp   a,#$01
1fff: d0 03     bne   $2004
2001: 3f 68 21  call  $2168
2004: f5 2e 03  mov   a,$032e+x
2007: f0 06     beq   $200f
2009: 9c        dec   a
200a: d5 2e 03  mov   $032e+x,a
200d: d0 03     bne   $2012
200f: 3f 9a 21  call  $219a
2012: f5 cc 02  mov   a,$02cc+x
2015: f0 1b     beq   $2032
2017: f5 42 02  mov   a,$0242+x
201a: 68 01     cmp   a,#$01
201c: d0 03     bne   $2021
201e: 3f 33 20  call  $2033
2021: f5 d4 02  mov   a,$02d4+x
2024: f0 0c     beq   $2032
2026: 9c        dec   a
2027: d5 d4 02  mov   $02d4+x,a
202a: d0 06     bne   $2032
202c: f5 79 11  mov   a,$1179+x
202f: 0e 9b 02  tset1 $029b
2032: 6f        ret

2033: f5 c4 02  mov   a,$02c4+x
2036: 28 01     and   a,#$01
2038: d0 1a     bne   $2054
203a: e8 00     mov   a,#$00
203c: d5 b4 02  mov   $02b4+x,a
203f: d5 bc 02  mov   $02bc+x,a
2042: f5 cc 02  mov   a,$02cc+x
2045: d5 d4 02  mov   $02d4+x,a
2048: f4 b6     mov   a,$b6+x
204a: 28 f7     and   a,#$f7
204c: d4 b6     mov   $b6+x,a
204e: f5 79 11  mov   a,$1179+x
2051: 4e 9b 02  tclr1 $029b
2054: 6f        ret

2055: f5 ee 02  mov   a,$02ee+x
2058: 30 3a     bmi   $2094
205a: f5 e6 02  mov   a,$02e6+x
205d: fd        mov   y,a
205e: e8 7f     mov   a,#$7f
2060: cf        mul   ya
2061: f5 19 02  mov   a,$0219+x
2064: 5d        mov   x,a
2065: f5 79 11  mov   a,$1179+x
2068: cf        mul   ya
2069: da 04     movw  $04,ya
206b: f5 ee 02  mov   a,$02ee+x
206e: f0 0b     beq   $207b
2070: cb 05     mov   $05,y
2072: 58 ff 05  eor   $05,#$ff
2075: 48 ff     eor   a,#$ff
2077: c4 04     mov   $04,a
2079: 3a 04     incw  $04
207b: f8 4a     mov   x,$4a
207d: ba 04     movw  ya,$04
207f: d4 8e     mov   $8e+x,a
2081: db 96     mov   $96+x,y
2083: e8 7f     mov   a,#$7f
2085: d5 f6 02  mov   $02f6+x,a
2088: e8 00     mov   a,#$00
208a: d5 fe 02  mov   $02fe+x,a
208d: f5 79 11  mov   a,$1179+x
2090: 0e dd 02  tset1 $02dd
2093: 6f        ret

2094: 1c        asl   a
2095: fd        mov   y,a
2096: f7 46     mov   a,($46)+y
2098: c4 04     mov   $04,a
209a: fc        inc   y
209b: f7 46     mov   a,($46)+y
209d: c4 05     mov   $05,a
209f: 8d 00     mov   y,#$00
20a1: f7 04     mov   a,($04)+y
20a3: 10 1f     bpl   $20c4
20a5: 48 ff     eor   a,#$ff
20a7: bc        inc   a
20a8: fd        mov   y,a
20a9: f5 e6 02  mov   a,$02e6+x
20ac: cf        mul   ya
20ad: f5 19 02  mov   a,$0219+x
20b0: 5d        mov   x,a
20b1: f5 79 11  mov   a,$1179+x
20b4: cf        mul   ya
20b5: cb 05     mov   $05,y
20b7: 48 ff     eor   a,#$ff
20b9: 58 ff 05  eor   $05,#$ff
20bc: c4 04     mov   $04,a
20be: 3a 04     incw  $04
20c0: ba 04     movw  ya,$04
20c2: 2f 0d     bra   $20d1
20c4: fd        mov   y,a
20c5: f5 e6 02  mov   a,$02e6+x
20c8: cf        mul   ya
20c9: f5 19 02  mov   a,$0219+x
20cc: 5d        mov   x,a
20cd: f5 79 11  mov   a,$1179+x
20d0: cf        mul   ya
20d1: f8 4a     mov   x,$4a
20d3: d4 8e     mov   $8e+x,a
20d5: db 96     mov   $96+x,y
20d7: e8 00     mov   a,#$00
20d9: d5 f6 02  mov   $02f6+x,a
20dc: d5 fe 02  mov   $02fe+x,a
20df: f5 79 11  mov   a,$1179+x
20e2: 0e dd 02  tset1 $02dd
20e5: 6f        ret

20e6: e8 00     mov   a,#$00
20e8: d5 4e 03  mov   $034e+x,a
20eb: d5 56 03  mov   $0356+x,a
20ee: f5 19 02  mov   a,$0219+x
20f1: fd        mov   y,a
20f2: f6 79 11  mov   a,$1179+y
20f5: fd        mov   y,a
20f6: f5 0e 03  mov   a,$030e+x
20f9: cf        mul   ya
20fa: da 04     movw  $04,ya
20fc: f5 1e 03  mov   a,$031e+x
20ff: c4 06     mov   $06,a
2101: f5 26 03  mov   a,$0326+x
2104: c4 07     mov   $07,a
2106: f4 9e     mov   a,$9e+x
2108: fb a6     mov   y,$a6+x
210a: 5a 06     cmpw  ya,$06
210c: b0 08     bcs   $2116
210e: 58 ff 04  eor   $04,#$ff
2111: 58 ff 05  eor   $05,#$ff
2114: 3a 04     incw  $04
2116: e4 04     mov   a,$04
2118: d5 5e 03  mov   $035e+x,a
211b: e4 05     mov   a,$05
211d: d5 66 03  mov   $0366+x,a
2120: 6f        ret

2121: f5 1e 03  mov   a,$031e+x
2124: c4 04     mov   $04,a
2126: 15 26 03  or    a,$0326+x
2129: f0 3c     beq   $2167
212b: f5 26 03  mov   a,$0326+x
212e: fd        mov   y,a
212f: f5 5e 03  mov   a,$035e+x
2132: 60        clrc
2133: 95 4e 03  adc   a,$034e+x
2136: d5 4e 03  mov   $034e+x,a
2139: c4 06     mov   $06,a
213b: f5 66 03  mov   a,$0366+x
213e: 95 56 03  adc   a,$0356+x
2141: d5 56 03  mov   $0356+x,a
2144: c4 07     mov   $07,a
2146: e4 04     mov   a,$04
2148: 7a 06     addw  ya,$06
214a: da 04     movw  $04,ya
214c: f4 9e     mov   a,$9e+x
214e: fb a6     mov   y,$a6+x
2150: 5a 04     cmpw  ya,$04
2152: f3 07 01  bbc7  $07,$2156
2155: ed        notc
2156: 90 07     bcc   $215f
2158: ba 04     movw  ya,$04
215a: d4 5b     mov   $5b+x,a
215c: db 63     mov   $63+x,y
215e: 6f        ret

215f: e8 00     mov   a,#$00
2161: d5 1e 03  mov   $031e+x,a
2164: d5 26 03  mov   $0326+x,a
2167: 6f        ret

2168: f5 6e 03  mov   a,$036e+x
216b: 28 03     and   a,#$03
216d: d0 2a     bne   $2199
216f: f5 16 03  mov   a,$0316+x
2172: d5 2e 03  mov   $032e+x,a
2175: e8 00     mov   a,#$00
2177: d5 46 03  mov   $0346+x,a
217a: d5 4e 03  mov   $034e+x,a
217d: d5 56 03  mov   $0356+x,a
2180: d5 5e 03  mov   $035e+x,a
2183: d5 66 03  mov   $0366+x,a
2186: d5 76 03  mov   $0376+x,a
2189: f5 0e 03  mov   a,$030e+x
218c: 1c        asl   a
218d: fd        mov   y,a
218e: f7 44     mov   a,($44)+y
2190: d5 36 03  mov   $0336+x,a
2193: fc        inc   y
2194: f7 44     mov   a,($44)+y
2196: d5 3e 03  mov   $033e+x,a
2199: 6f        ret

219a: f5 46 03  mov   a,$0346+x
219d: f0 0d     beq   $21ac
219f: f5 1e 03  mov   a,$031e+x
21a2: c4 06     mov   $06,a
21a4: f5 26 03  mov   a,$0326+x
21a7: c4 07     mov   $07,a
21a9: 5f ad 22  jmp   $22ad

21ac: f5 36 03  mov   a,$0336+x
21af: c4 04     mov   $04,a
21b1: f5 3e 03  mov   a,$033e+x
21b4: c4 05     mov   $05,a
21b6: 8d 00     mov   y,#$00
21b8: f7 04     mov   a,($04)+y
21ba: 68 fb     cmp   a,#$fb
21bc: 90 09     bcc   $21c7
21be: a8 fb     sbc   a,#$fb
21c0: 1c        asl   a
21c1: d8 00     mov   $00,x
21c3: 5d        mov   x,a
21c4: 1f bf 22  jmp   ($22bf+x)

21c7: d5 46 03  mov   $0346+x,a
21ca: 3a 04     incw  $04
21cc: f7 04     mov   a,($04)+y
21ce: c4 00     mov   $00,a
21d0: c4 02     mov   $02,a
21d2: 3a 04     incw  $04
21d4: e4 04     mov   a,$04
21d6: d5 36 03  mov   $0336+x,a
21d9: e4 05     mov   a,$05
21db: d5 3e 03  mov   $033e+x,a
21de: e4 00     mov   a,$00
21e0: d0 09     bne   $21eb
21e2: d5 1e 03  mov   $031e+x,a
21e5: d5 26 03  mov   $0326+x,a
21e8: 5f b7 22  jmp   $22b7

21eb: 10 47     bpl   $2234
21ed: 48 ff     eor   a,#$ff
21ef: bc        inc   a
21f0: c4 00     mov   $00,a
21f2: f5 5e 03  mov   a,$035e+x
21f5: c4 04     mov   $04,a
21f7: f5 66 03  mov   a,$0366+x
21fa: c4 05     mov   $05,a
21fc: 04 04     or    a,$04
21fe: d0 72     bne   $2272
2200: f4 a6     mov   a,$a6+x
2202: 5c        lsr   a
2203: c4 05     mov   $05,a
2205: f4 9e     mov   a,$9e+x
2207: 7c        ror   a
2208: c4 04     mov   $04,a
220a: f5 06 03  mov   a,$0306+x
220d: 68 0c     cmp   a,#$0c
220f: b0 17     bcs   $2228
2211: fd        mov   y,a
2212: f6 75 27  mov   a,$2775+y
2215: c4 01     mov   $01,a
2217: eb 05     mov   y,$05
2219: cf        mul   ya
221a: da 06     movw  $06,ya
221c: e4 01     mov   a,$01
221e: eb 04     mov   y,$04
2220: cf        mul   ya
2221: dd        mov   a,y
2222: 8d 00     mov   y,#$00
2224: 7a 06     addw  ya,$06
2226: da 04     movw  $04,ya
2228: e4 04     mov   a,$04
222a: d5 5e 03  mov   $035e+x,a
222d: e4 05     mov   a,$05
222f: d5 66 03  mov   $0366+x,a
2232: 2f 3e     bra   $2272
2234: f5 4e 03  mov   a,$034e+x
2237: c4 04     mov   $04,a
2239: f5 56 03  mov   a,$0356+x
223c: c4 05     mov   $05,a
223e: 04 04     or    a,$04
2240: d0 30     bne   $2272
2242: f4 a6     mov   a,$a6+x
2244: c4 05     mov   $05,a
2246: f4 9e     mov   a,$9e+x
2248: c4 04     mov   $04,a
224a: f5 06 03  mov   a,$0306+x
224d: 68 0c     cmp   a,#$0c
224f: b0 17     bcs   $2268
2251: fd        mov   y,a
2252: f6 69 27  mov   a,$2769+y
2255: c4 01     mov   $01,a
2257: eb 05     mov   y,$05
2259: cf        mul   ya
225a: da 06     movw  $06,ya
225c: e4 01     mov   a,$01
225e: eb 04     mov   y,$04
2260: cf        mul   ya
2261: dd        mov   a,y
2262: 8d 00     mov   y,#$00
2264: 7a 06     addw  ya,$06
2266: da 04     movw  $04,ya
2268: e4 04     mov   a,$04
226a: d5 4e 03  mov   $034e+x,a
226d: e4 05     mov   a,$05
226f: d5 56 03  mov   $0356+x,a
2272: ab 00     inc   $00
2274: e4 00     mov   a,$00
2276: eb 05     mov   y,$05
2278: cf        mul   ya
2279: da 06     movw  $06,ya
227b: e4 00     mov   a,$00
227d: eb 04     mov   y,$04
227f: cf        mul   ya
2280: c4 00     mov   $00,a
2282: dd        mov   a,y
2283: 8d 00     mov   y,#$00
2285: 7a 06     addw  ya,$06
2287: cb 07     mov   $07,y
2289: 0b 00     asl   $00
228b: 3c        rol   a
228c: 2b 07     rol   $07
228e: eb 02     mov   y,$02
2290: 10 11     bpl   $22a3
2292: 58 ff 00  eor   $00,#$ff
2295: 48 ff     eor   a,#$ff
2297: 58 ff 07  eor   $07,#$ff
229a: ab 00     inc   $00
229c: d0 05     bne   $22a3
229e: bc        inc   a
229f: d0 02     bne   $22a3
22a1: ab 07     inc   $07
22a3: c4 06     mov   $06,a
22a5: d5 1e 03  mov   $031e+x,a
22a8: e4 07     mov   a,$07
22aa: d5 26 03  mov   $0326+x,a
22ad: f4 5b     mov   a,$5b+x
22af: fb 63     mov   y,$63+x
22b1: 7a 06     addw  ya,$06
22b3: d4 5b     mov   $5b+x,a
22b5: db 63     mov   $63+x,y
22b7: f5 46 03  mov   a,$0346+x
22ba: 9c        dec   a
22bb: d5 46 03  mov   $0346+x,a
22be: 6f        ret

22bf: dw $22c9  ;
22c1: dw $22db  ;
22c2: dw $22d3  ;
22c4: dw $22ef  ;
22c6: dw $22c9  ;

22c8: f8 00     mov   x,$00
22cb: e8 ff     mov   a,#$ff
22cd: d5 46 03  mov   $0346+x,a
22d0: 5f 9a 21  jmp   $219a

22d3: f8 00     mov   x,$00
22d5: 3f 89 21  call  $2189
22d8: 5f ac 21  jmp   $21ac

22db: f8 00     mov   x,$00
22dd: 3a 04     incw  $04
22df: f7 04     mov   a,($04)+y
22e1: c4 00     mov   $00,a
22e3: 3a 04     incw  $04
22e5: f7 04     mov   a,($04)+y
22e7: c4 05     mov   $05,a
22e9: fa 00 04  mov   ($04),($00)
22ec: 5f b6 21  jmp   $21b6

22ef: 3a 04     incw  $04
22f1: f8 00     mov   x,$00
22f3: f5 76 03  mov   a,$0376+x
22f6: f0 0d     beq   $2305
22f8: 9c        dec   a
22f9: d5 76 03  mov   $0376+x,a
22fc: d0 dd     bne   $22db
22fe: 3a 04     incw  $04
2300: 3a 04     incw  $04
2302: 5f b6 21  jmp   $21b6

2305: f7 04     mov   a,($04)+y
2307: d5 76 03  mov   $0376+x,a
230a: 2f cf     bra   $22db
230c: f8 4a     mov   x,$4a
230e: f5 21 02  mov   a,$0221+x
2311: 9c        dec   a
2312: d0 0b     bne   $231f
2314: f5 11 02  mov   a,$0211+x
2317: 30 06     bmi   $231f
2319: f5 79 11  mov   a,$1179+x
231c: 0e 8c 00  tset1 $008c
231f: f5 42 02  mov   a,$0242+x
2322: 1c        asl   a
2323: 5d        mov   x,a
2324: 1f 27 23  jmp   ($2327+x)

2327: dw $2333  ;
2329: dw $233c  ;
232b: dw $2350  ;
232d: dw $235c  ;
232f: dw $236a  ;
2331: dw $2371  ;

2333: f8 4a     mov   x,$4a
2335: f5 79 11  mov   a,$1179+x
2338: 0e 8c 00  tset1 $008c
233b: 6f        ret

233c: f8 4a     mov   x,$4a
233e: f5 79 11  mov   a,$1179+x
2341: 0e 8b 00  tset1 $008b
2344: f4 73     mov   a,$73+x
2346: 08 80     or    a,#$80
2348: d4 73     mov   $73+x,a
234a: e8 02     mov   a,#$02
234c: d5 42 02  mov   $0242+x,a
234f: 6f        ret

2350: f8 4a     mov   x,$4a
2352: f5 29 02  mov   a,$0229+x
2355: f0 05     beq   $235c
2357: 9c        dec   a
2358: d5 29 02  mov   $0229+x,a
235b: 6f        ret

235c: f8 4a     mov   x,$4a
235e: f4 73     mov   a,$73+x
2360: 28 7f     and   a,#$7f
2362: d4 73     mov   $73+x,a
2364: e8 04     mov   a,#$04
2366: d5 42 02  mov   $0242+x,a
2369: 6f        ret

236a: f8 4a     mov   x,$4a
236c: e8 05     mov   a,#$05
236e: d5 42 02  mov   $0242+x,a
2371: 6f        ret

2372: e8 00     mov   a,#$00
2374: c5 40 01  mov   $0140,a
2377: c5 50 01  mov   $0150,a
237a: cd 07     mov   x,#$07
237c: e5 41 01  mov   a,$0141
237f: 35 79 11  and   a,$1179+x
2382: f0 03     beq   $2387
2384: 5f 15 24  jmp   $2415

2387: f4 ae     mov   a,$ae+x
2389: 30 03     bmi   $238e
238b: 5f 0f 24  jmp   $240f

238e: 28 20     and   a,#$20
2390: d0 7d     bne   $240f
2392: 3f 26 24  call  $2426
2395: f4 5b     mov   a,$5b+x
2397: 60        clrc
2398: 94 8e     adc   a,$8e+x
239a: c4 00     mov   $00,a
239c: f4 63     mov   a,$63+x
239e: 94 96     adc   a,$96+x
23a0: 8d 03     mov   y,#$03
23a2: 4f 13     pcall $13               ; set to P(H)
23a4: e4 00     mov   a,$00
23a6: 8d 02     mov   y,#$02
23a8: 4f 13     pcall $13               ; set to P(L)
23aa: f5 42 02  mov   a,$0242+x
23ad: 68 04     cmp   a,#$04
23af: d0 0e     bne   $23bf
23b1: f4 83     mov   a,$83+x
23b3: 8d 07     mov   y,#$07
23b5: 4f 13     pcall $13               ; set $83+x to GAIN
23b7: f4 73     mov   a,$73+x
23b9: 8d 05     mov   y,#$05
23bb: 4f 13     pcall $13               ; set $73+x to ADSR(1)
23bd: 2f 2d     bra   $23ec
23bf: e4 8b     mov   a,$8b
23c1: 35 79 11  and   a,$1179+x
23c4: f0 26     beq   $23ec
23c6: 8d 08     mov   y,#$08
23c8: 4f 24     pcall $24
23ca: 68 03     cmp   a,#$03
23cc: b0 f8     bcs   $23c6
23ce: f4 73     mov   a,$73+x
23d0: 8d 05     mov   y,#$05
23d2: 4f 13     pcall $13               ; set $73+x to ADSR(1)
23d4: f4 7b     mov   a,$7b+x
23d6: 8d 06     mov   y,#$06
23d8: 4f 13     pcall $13               ; set $7b+x to ADSR(2)
23da: f4 ae     mov   a,$ae+x
23dc: 28 04     and   a,#$04
23de: f0 0c     beq   $23ec
23e0: f4 ae     mov   a,$ae+x
23e2: 28 fb     and   a,#$fb
23e4: d4 ae     mov   $ae+x,a
23e6: f4 6b     mov   a,$6b+x
23e8: 8d 04     mov   y,#$04
23ea: 4f 13     pcall $13               ; set $6b+x to SRCN
23ec: f5 73 02  mov   a,$0273+x
23ef: 30 11     bmi   $2402
23f1: 08 80     or    a,#$80
23f3: d5 73 02  mov   $0273+x,a
23f6: f4 4b     mov   a,$4b+x
23f8: 8d 01     mov   y,#$01
23fa: 4f 13     pcall $13               ; set $4b+x to VOL(R)
23fc: f4 53     mov   a,$53+x
23fe: 8d 00     mov   y,#$00
2400: 4f 13     pcall $13               ; set $53+x to VOL(L)
2402: f5 79 11  mov   a,$1179+x
2405: 0e 40 01  tset1 $0140
2408: 24 8d     and   a,$8d
240a: 0e 50 01  tset1 $0150
240d: 2f 06     bra   $2415
240f: f5 79 11  mov   a,$1179+x
2412: 0e 8c 00  tset1 $008c
2415: 1d        dec   x
2416: 30 03     bmi   $241b
2418: 5f 7c 23  jmp   $237c

241b: e4 8b     mov   a,$8b
241d: c5 4a 01  mov   $014a,a
2420: e4 8c     mov   a,$8c
2422: c5 4c 01  mov   $014c,a
2425: 6f        ret

2426: f5 42 01  mov   a,$0142+x
2429: f0 17     beq   $2442
242b: 9c        dec   a
242c: f0 15     beq   $2443
242e: 8d 08     mov   y,#$08
2430: 4f 24     pcall $24
2432: 68 03     cmp   a,#$03
2434: b0 20     bcs   $2456
2436: e4 8b     mov   a,$8b
2438: 35 79 11  and   a,$1179+x
243b: f0 19     beq   $2456
243d: e8 00     mov   a,#$00
243f: d5 42 01  mov   $0142+x,a
2442: 6f        ret

2443: f4 ae     mov   a,$ae+x
2445: 08 04     or    a,#$04
2447: d4 ae     mov   $ae+x,a
2449: f5 73 02  mov   a,$0273+x
244c: 28 7f     and   a,#$7f
244e: d5 73 02  mov   $0273+x,a
2451: e8 02     mov   a,#$02
2453: d5 42 01  mov   $0142+x,a
2456: ae        pop   a
2457: ae        pop   a
2458: 2f b5     bra   $240f
245a: e5 9e 03  mov   a,$039e
245d: f0 28     beq   $2487
245f: 30 47     bmi   $24a8
2461: 60        clrc
2462: 85 a0 03  adc   a,$03a0
2465: c5 a0 03  mov   $03a0,a
2468: 10 1d     bpl   $2487
246a: 28 7f     and   a,#$7f
246c: c5 a0 03  mov   $03a0,a
246f: e5 72 02  mov   a,$0272
2472: 80        setc
2473: a5 9f 03  sbc   a,$039f
2476: c5 72 02  mov   $0272,a
2479: 68 05     cmp   a,#$05
247b: 30 02     bmi   $247f
247d: b0 09     bcs   $2488
247f: 3f 6d 15  call  $156d
2482: e8 00     mov   a,#$00
2484: c5 9e 03  mov   $039e,a
2487: 6f        ret

2488: e5 41 01  mov   a,$0141
248b: c4 03     mov   $03,a
248d: 8f 07 4a  mov   $4a,#$07
2490: 0b 03     asl   $03
2492: b0 0f     bcs   $24a3
2494: f8 4a     mov   x,$4a
2496: f4 ae     mov   a,$ae+x
2498: 10 09     bpl   $24a3
249a: f5 73 02  mov   a,$0273+x
249d: 3f 18 1f  call  $1f18
24a0: 3f d4 24  call  $24d4
24a3: 8b 4a     dec   $4a
24a5: 10 e9     bpl   $2490
24a7: 6f        ret

24a8: 28 7f     and   a,#$7f
24aa: 60        clrc
24ab: 85 a0 03  adc   a,$03a0
24ae: c5 a0 03  mov   $03a0,a
24b1: 10 d4     bpl   $2487
24b3: 28 7f     and   a,#$7f
24b5: c5 a0 03  mov   $03a0,a
24b8: e5 72 02  mov   a,$0272
24bb: 60        clrc
24bc: 85 9f 03  adc   a,$039f
24bf: c5 72 02  mov   $0272,a
24c2: 65 a1 03  cmp   a,$03a1
24c5: 90 c1     bcc   $2488
24c7: e5 a1 03  mov   a,$03a1
24ca: c5 72 02  mov   $0272,a
24cd: e8 00     mov   a,#$00
24cf: c5 9e 03  mov   $039e,a
24d2: 2f b4     bra   $2488
24d4: f4 4b     mov   a,$4b+x
24d6: 8d 01     mov   y,#$01
24d8: 4f 13     pcall $13               ; set $4b+x to VOL(R)
24da: f4 53     mov   a,$53+x
24dc: 8d 00     mov   y,#$00
24de: 5f 13 ff  jmp   $ff13             ; set $53+x to VOL(L)

24e1: e5 9b 02  mov   a,$029b
24e4: 05 dd 02  or    a,$02dd
24e7: d0 01     bne   $24ea
24e9: 6f        ret

24ea: e5 41 01  mov   a,$0141
24ed: c4 03     mov   $03,a
24ef: 8f 07 4a  mov   $4a,#$07
24f2: f8 4a     mov   x,$4a
24f4: 0b 03     asl   $03
24f6: b0 3c     bcs   $2534
24f8: f4 ae     mov   a,$ae+x
24fa: 10 38     bpl   $2534
24fc: 8f 00 04  mov   $04,#$00
24ff: 8f 00 05  mov   $05,#$00
2502: e5 9b 02  mov   a,$029b
2505: 35 79 11  and   a,$1179+x
2508: f0 18     beq   $2522
250a: 3f 39 25  call  $2539
250d: da 04     movw  $04,ya
250f: f8 4a     mov   x,$4a
2511: e5 dc 02  mov   a,$02dc
2514: 35 79 11  and   a,$1179+x
2517: f0 09     beq   $2522
2519: 3f ee 26  call  $26ee
251c: 8f 00 04  mov   $04,#$00
251f: 8f 00 05  mov   $05,#$00
2522: e5 dd 02  mov   a,$02dd
2525: 35 79 11  and   a,$1179+x
2528: f0 07     beq   $2531
252a: 3f 4b 26  call  $264b
252d: 7a 04     addw  ya,$04
252f: da 04     movw  $04,ya
2531: 3f 0a 27  call  $270a
2534: 8b 4a     dec   $4a
2536: 10 ba     bpl   $24f2
2538: 6f        ret

2539: f5 ac 02  mov   a,$02ac+x
253c: 10 03     bpl   $2541
253e: 5f f4 25  jmp   $25f4

2541: 68 02     cmp   a,#$02
2543: d0 03     bne   $2548
2545: 5f e8 25  jmp   $25e8

2548: c4 01     mov   $01,a
254a: e8 80     mov   a,#$80
254c: 80        setc
254d: b5 9c 02  sbc   a,$029c+x
2550: c4 00     mov   $00,a
2552: f5 bc 02  mov   a,$02bc+x
2555: 60        clrc
2556: 88 7f     adc   a,#$7f
2558: 8d 00     mov   y,#$00
255a: f8 00     mov   x,$00
255c: 9e        div   ya,x
255d: c4 00     mov   $00,a
255f: dd        mov   a,y
2560: f8 4a     mov   x,$4a
2562: d5 bc 02  mov   $02bc+x,a
2565: f4 b6     mov   a,$b6+x
2567: 28 08     and   a,#$08
2569: 13 01 04  bbc0  $01,$2570
256c: d0 5d     bne   $25cb
256e: 2f 4c     bra   $25bc
2570: d0 21     bne   $2593
2572: f5 b4 02  mov   a,$02b4+x
2575: 60        clrc
2576: 84 00     adc   a,$00
2578: d5 b4 02  mov   $02b4+x,a
257b: 30 2b     bmi   $25a8
257d: 68 7f     cmp   a,#$7f
257f: d0 06     bne   $2587
2581: f4 b6     mov   a,$b6+x
2583: 48 08     eor   a,#$08
2585: d4 b6     mov   $b6+x,a
2587: f5 b4 02  mov   a,$02b4+x
258a: fd        mov   y,a
258b: f5 a4 02  mov   a,$02a4+x
258e: cf        mul   ya
258f: dd        mov   a,y
2590: 8d 00     mov   y,#$00
2592: 6f        ret

2593: f5 b4 02  mov   a,$02b4+x
2596: 80        setc
2597: a4 00     sbc   a,$00
2599: d5 b4 02  mov   $02b4+x,a
259c: 10 e9     bpl   $2587
259e: 68 81     cmp   a,#$81
25a0: d0 06     bne   $25a8
25a2: f4 b6     mov   a,$b6+x
25a4: 48 08     eor   a,#$08
25a6: d4 b6     mov   $b6+x,a
25a8: f5 b4 02  mov   a,$02b4+x
25ab: 48 ff     eor   a,#$ff
25ad: bc        inc   a
25ae: fd        mov   y,a
25af: f5 a4 02  mov   a,$02a4+x
25b2: cf        mul   ya
25b3: dd        mov   a,y
25b4: f0 05     beq   $25bb
25b6: 48 ff     eor   a,#$ff
25b8: bc        inc   a
25b9: 8d ff     mov   y,#$ff
25bb: 6f        ret

25bc: f5 b4 02  mov   a,$02b4+x
25bf: 60        clrc
25c0: 84 00     adc   a,$00
25c2: d5 b4 02  mov   $02b4+x,a
25c5: 68 7f     cmp   a,#$7f
25c7: d0 13     bne   $25dc
25c9: 2f 0b     bra   $25d6
25cb: f5 b4 02  mov   a,$02b4+x
25ce: 80        setc
25cf: a4 00     sbc   a,$00
25d1: d5 b4 02  mov   $02b4+x,a
25d4: d0 06     bne   $25dc
25d6: f4 b6     mov   a,$b6+x
25d8: 48 08     eor   a,#$08
25da: d4 b6     mov   $b6+x,a
25dc: f5 b4 02  mov   a,$02b4+x
25df: fd        mov   y,a
25e0: f5 a4 02  mov   a,$02a4+x
25e3: cf        mul   ya
25e4: dd        mov   a,y
25e5: 8d 00     mov   y,#$00
25e7: 6f        ret

25e8: 9c        dec   a
25e9: 3f 48 25  call  $2548
25ec: 48 ff     eor   a,#$ff
25ee: bc        inc   a
25ef: f0 02     beq   $25f3
25f1: 8d ff     mov   y,#$ff
25f3: 6f        ret

25f4: 1c        asl   a
25f5: fd        mov   y,a
25f6: f5 9c 02  mov   a,$029c+x
25f9: 60        clrc
25fa: 95 b4 02  adc   a,$02b4+x
25fd: d5 b4 02  mov   $02b4+x,a
2600: 10 0c     bpl   $260e
2602: 28 7f     and   a,#$7f
2604: d5 b4 02  mov   $02b4+x,a
2607: f5 bc 02  mov   a,$02bc+x
260a: bc        inc   a
260b: d5 bc 02  mov   $02bc+x,a
260e: f7 46     mov   a,($46)+y
2610: c4 04     mov   $04,a
2612: fc        inc   y
2613: f7 46     mov   a,($46)+y
2615: c4 05     mov   $05,a
2617: f5 bc 02  mov   a,$02bc+x
261a: fd        mov   y,a
261b: f7 04     mov   a,($04)+y
261d: 68 80     cmp   a,#$80
261f: f0 20     beq   $2641
2621: 90 15     bcc   $2638
2623: 48 ff     eor   a,#$ff
2625: bc        inc   a
2626: fd        mov   y,a
2627: f5 a4 02  mov   a,$02a4+x
262a: cf        mul   ya
262b: dd        mov   a,y
262c: 48 ff     eor   a,#$ff
262e: c4 04     mov   $04,a
2630: 8f ff 05  mov   $05,#$ff
2633: 3a 04     incw  $04
2635: ba 04     movw  ya,$04
2637: 6f        ret

2638: fd        mov   y,a
2639: f5 a4 02  mov   a,$02a4+x
263c: cf        mul   ya
263d: dd        mov   a,y
263e: 8d 00     mov   y,#$00
2640: 6f        ret

2641: dd        mov   a,y
2642: f0 f3     beq   $2637
2644: e8 00     mov   a,#$00
2646: d5 bc 02  mov   $02bc+x,a
2649: 2f cf     bra   $261a
264b: f5 ee 02  mov   a,$02ee+x
264e: 30 45     bmi   $2695
2650: f0 02     beq   $2654
2652: e8 ff     mov   a,#$ff
2654: c4 01     mov   $01,a
2656: e8 80     mov   a,#$80
2658: 80        setc
2659: b5 de 02  sbc   a,$02de+x
265c: c4 00     mov   $00,a
265e: f5 fe 02  mov   a,$02fe+x
2661: 60        clrc
2662: 88 7f     adc   a,#$7f
2664: 8d 00     mov   y,#$00
2666: f8 00     mov   x,$00
2668: 9e        div   ya,x
2669: c4 00     mov   $00,a
266b: dd        mov   a,y
266c: f8 4a     mov   x,$4a
266e: d5 fe 02  mov   $02fe+x,a
2671: f5 f6 02  mov   a,$02f6+x
2674: 80        setc
2675: a4 00     sbc   a,$00
2677: d0 09     bne   $2682
2679: fd        mov   y,a
267a: f5 79 11  mov   a,$1179+x
267d: 4e dd 02  tclr1 $02dd
2680: dd        mov   a,y
2681: 6f        ret

2682: d5 f6 02  mov   $02f6+x,a
2685: fd        mov   y,a
2686: f5 e6 02  mov   a,$02e6+x
2689: cf        mul   ya
268a: dd        mov   a,y
268b: f0 07     beq   $2694
268d: eb 01     mov   y,$01
268f: f0 03     beq   $2694
2691: 48 ff     eor   a,#$ff
2693: bc        inc   a
2694: 6f        ret

2695: 1c        asl   a
2696: fd        mov   y,a
2697: f5 de 02  mov   a,$02de+x
269a: 60        clrc
269b: 95 f6 02  adc   a,$02f6+x
269e: d5 f6 02  mov   $02f6+x,a
26a1: 10 0c     bpl   $26af
26a3: 28 7f     and   a,#$7f
26a5: d5 f6 02  mov   $02f6+x,a
26a8: f5 fe 02  mov   a,$02fe+x
26ab: bc        inc   a
26ac: d5 fe 02  mov   $02fe+x,a
26af: f7 46     mov   a,($46)+y
26b1: c4 04     mov   $04,a
26b3: fc        inc   y
26b4: f7 46     mov   a,($46)+y
26b6: c4 05     mov   $05,a
26b8: f5 fe 02  mov   a,$02fe+x
26bb: fd        mov   y,a
26bc: f7 04     mov   a,($04)+y
26be: 68 80     cmp   a,#$80
26c0: f0 20     beq   $26e2
26c2: 90 15     bcc   $26d9
26c4: 48 ff     eor   a,#$ff
26c6: bc        inc   a
26c7: fd        mov   y,a
26c8: f5 e6 02  mov   a,$02e6+x
26cb: cf        mul   ya
26cc: dd        mov   a,y
26cd: 48 ff     eor   a,#$ff
26cf: c4 04     mov   $04,a
26d1: 8f ff 05  mov   $05,#$ff
26d4: 3a 04     incw  $04
26d6: ba 04     movw  ya,$04
26d8: 6f        ret

26d9: fd        mov   y,a
26da: f5 e6 02  mov   a,$02e6+x
26dd: cf        mul   ya
26de: dd        mov   a,y
26df: 8d 00     mov   y,#$00
26e1: 6f        ret

26e2: dd        mov   a,y
26e3: f0 f3     beq   $26d8
26e5: f5 fe 02  mov   a,$02fe+x
26e8: 9c        dec   a
26e9: d5 fe 02  mov   $02fe+x,a
26ec: 2f cd     bra   $26bb
26ee: e4 04     mov   a,$04
26f0: 10 03     bpl   $26f5
26f2: 48 ff     eor   a,#$ff
26f4: bc        inc   a
26f5: 1c        asl   a
26f6: bc        inc   a
26f7: fd        mov   y,a
26f8: f5 73 02  mov   a,$0273+x
26fb: cf        mul   ya
26fc: cb 04     mov   $04,y
26fe: f5 73 02  mov   a,$0273+x
2701: 80        setc
2702: a4 04     sbc   a,$04
2704: 3f 18 1f  call  $1f18
2707: 5f d4 24  jmp   $24d4

270a: f8 4a     mov   x,$4a
270c: f5 19 02  mov   a,$0219+x
270f: 1c        asl   a
2710: 5d        mov   x,a
2711: e4 04     mov   a,$04
2713: 1f 16 27  jmp   ($2716+x)

2716: dw $2731  ;
2718: dw $272e  ;
271a: dw $272b  ;
271c: dw $2728  ;
271e: dw $2725  ;
2720: dw $2722  ;

2722: 1c        asl   a
2723: 2b 05     rol   $05
2725: 1c        asl   a
2726: 2b 05     rol   $05
2728: 1c        asl   a
2729: 2b 05     rol   $05
272b: 1c        asl   a
272c: 2b 05     rol   $05
272e: 1c        asl   a
272f: 2b 05     rol   $05
2731: c4 04     mov   $04,a
2733: f8 4a     mov   x,$4a
2735: e4 05     mov   a,$05
2737: d4 96     mov   $96+x,a
2739: e4 04     mov   a,$04
273b: d4 8e     mov   $8e+x,a
273d: 60        clrc
273e: 94 5b     adc   a,$5b+x
2740: c4 04     mov   $04,a
2742: f4 63     mov   a,$63+x
2744: 84 05     adc   a,$05
2746: 8d 03     mov   y,#$03
2748: 4f 13     pcall $13               ; set to P(H)
274a: e4 04     mov   a,$04
274c: 8d 02     mov   y,#$02
274e: 5f 13 ff  jmp   $ff13             ; set to P(L)

2751: ac bc cc  inc   $ccbc
2754: dc        dec   y
2755: ec fc 0c  mov   y,$0cfc
2758: 1c        asl   a
2759: 03 03 03  bbs0  $03,$275f
275c: 03 03 03  bbs0  $03,$2762
275f: 04 04     or    a,$04

; 2760: note length table (index 0 must not be used)
2761: db $c0,$60,$30,$18,$0c,$06,$03,$01

2769: 00
276a: 0f
276b: 1f 30 43
276e: 56 6a 80
2771: 96 af c8
2774: e3 00 1d
2777: 38 52 6a
277a: 81
277b: 96 aa be
277e: d0 e1
2780: f1
2781: 01
2782: 02 02
2784: 01
2785: 01
2786: 02 02
2788: 01
2789: 01
278a: 02 02
278c: 02 02
278e: 02 00
2790: 00
2791: 00
2792: 02 04
2794: 02 03
2796: 04 01
2798: 02 02
279a: 04 01
279c: 01
279d: 00
279e: 00
279f: 01
27a0: 03 02 03
27a3: 02 02
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
27af: 00
27b0: 00
27b1: 00
27b2: 01
27b3: 01
27b4: 01
27b5: 01
27b6: 01
27b7: 01
27b8: 01
27b9: 01
27ba: 01
27bb: 01
27bc: 01
27bd: 01
27be: 00
27bf: 00
27c0: 00
27c1: 03 03 03
27c4: 03 00 00
27c7: 00
27c8: 00
27c9: 00
27ca: 00
27cb: 02 02
27cd: 02 02
27cf: 02 20
27d1: 40
27d2: 20
27d3: 42 20
27d5: 44 20
27d7: 46
27d8: 20
27d9: 48 51
27db: 52 10
27dd: 8d 80
27df: ae
27e0: 80
27e1: b6 10 be
27e4: 12 00
27e6: 82 01
27e8: 82 09
27ea: 82 11
27ec: 82 19
27ee: 82 21
27f0: 82 29
27f2: 82 31 
27f4: 82 39
27f6: 12 41
27f8: 80
27f9: 9e
27fa: 80
27fb: a6
27fc: 82 42
27fe: 82 4a
2800: 82 52
2802: 82 5a
2804: 13 a1 82
2807: 73 82 7b
280a: 82 93
280c: 12 9b
280e: 82 9c
2810: 82 a4
2812: 82 ac
2814: 82 b4
2816: 82 bc
2818: 82 c4
281a: 82 cc
281c: 82 d4
281e: 12 dc
2820: 12 dd
2822: 82 de
2824: 82 e6
2826: 82 ee
2828: 82 f6
282a: 82 fe
282c: 83 06 83
282f: 0e 83 16
2832: 83 1e 83
2835: 26
2836: 83 2e 83
2839: 36 83 3e
283c: 83 46 83
283f: 4e 83 56
2842: 83 5e 83
2845: 66
2846: 83 6e 83
2849: 76 83 7e
284c: 83 86 83
284f: 8e
2850: 83 96 13
2853: a3 83 a4
2856: 82 83
2858: 82 8b
285a: 00

285b: e8 7f     mov   a,#$7f
285d: c5 cf 06  mov   $06cf,a
2860: cd 03     mov   x,#$03
2862: e8 00     mov   a,#$00
2864: d4 c8     mov   $c8+x,a
2866: d4 cd     mov   $cd+x,a
2868: 1d        dec   x
2869: 10 f9     bpl   $2864
286b: c5 9c 06  mov   $069c,a
286e: c5 9d 06  mov   $069d,a
2871: fd        mov   y,a
2872: f7 17     mov   a,($17)+y
2874: c4 c1     mov   $c1,a
2876: fc        inc   y
2877: f7 17     mov   a,($17)+y
2879: c4 c2     mov   $c2,a
287b: e8 ff     mov   a,#$ff
287d: 8d 2f     mov   y,#$2f
287f: 5a 17     cmpw  ya,$17
2881: b0 2c     bcs   $28af
2883: e8 ff     mov   a,#$ff
2885: 8d fe     mov   y,#$fe
2887: 5a 17     cmpw  ya,$17
2889: 90 24     bcc   $28af
288b: 8d 02     mov   y,#$02
288d: f7 17     mov   a,($17)+y
288f: c4 c3     mov   $c3,a
2891: fc        inc   y
2892: f7 17     mov   a,($17)+y
2894: c4 c4     mov   $c4,a
2896: fc        inc   y
2897: f7 17     mov   a,($17)+y
2899: c4 c5     mov   $c5,a
289b: fc        inc   y
289c: f7 17     mov   a,($17)+y
289e: c4 c6     mov   $c6,a
28a0: 8d 00     mov   y,#$00
28a2: f7 c1     mov   a,($c1)+y
28a4: fc        inc   y
28a5: 17 c1     or    a,($c1)+y
28a7: f0 03     beq   $28ac
28a9: fc        inc   y
28aa: d0 f6     bne   $28a2
28ac: dd        mov   a,y
28ad: 5c        lsr   a
28ae: 6f        ret

28af: e8 00     mov   a,#$00
28b1: 6f        ret

28b2: 3f f0 28  call  $28f0
28b5: 3f b3 29  call  $29b3
28b8: 3f f1 29  call  $29f1
28bb: 8f 03 c7  mov   $c7,#$03
28be: f8 c7     mov   x,$c7
28c0: f4 c8     mov   a,$c8+x
28c2: 10 0f     bpl   $28d3
28c4: 3f fa 29  call  $29fa
28c7: 3f b2 2d  call  $2db2
28ca: 3f 1d 2e  call  $2e1d
28cd: 3f 48 2e  call  $2e48
28d0: 3f 18 2f  call  $2f18
28d3: 8b c7     dec   $c7
28d5: 10 e7     bpl   $28be
28d7: 5f 4c 2f  jmp   $2f4c

28da: e4 2d     mov   a,$2d
28dc: 30 10     bmi   $28ee
28de: 1a c5     decw  $c5
28e0: eb 00     mov   y,$00
28e2: f7 c5     mov   a,($c5)+y
28e4: eb 2d     mov   y,$2d
28e6: 77 c5     cmp   a,($c5)+y
28e8: 3a c5     incw  $c5
28ea: b0 02     bcs   $28ee
28ec: 60        clrc
28ed: 6f        ret

28ee: 80        setc
28ef: 6f        ret

28f0: e8 00     mov   a,#$00
28f2: c5 9a 06  mov   $069a,a
28f5: e5 9d 06  mov   a,$069d
28f8: f0 08     beq   $2902
28fa: 3f 62 29  call  $2962
28fd: e8 00     mov   a,#$00
28ff: c5 9d 06  mov   $069d,a
2902: e4 2d     mov   a,$2d
2904: 30 5b     bmi   $2961
2906: 9c        dec   a
2907: c4 00     mov   $00,a
2909: c4 2d     mov   $2d,a
290b: e2 2d     set7  $2d
290d: 1c        asl   a
290e: fd        mov   y,a
290f: f7 c1     mov   a,($c1)+y
2911: c4 04     mov   $04,a
2913: fc        inc   y
2914: f7 c1     mov   a,($c1)+y
2916: c4 05     mov   $05,a
2918: 8d 00     mov   y,#$00
291a: f7 04     mov   a,($04)+y
291c: 25 41 01  and   a,$0141
291f: f0 15     beq   $2936
2921: c4 01     mov   $01,a
2923: eb 00     mov   y,$00
2925: f7 c5     mov   a,($c5)+y
2927: cd 00     mov   x,#$00
2929: 4b 01     lsr   $01
292b: 90 04     bcc   $2931
292d: 74 cd     cmp   a,$cd+x
292f: 90 30     bcc   $2961
2931: 3d        inc   x
2932: c8 04     cmp   x,#$04
2934: 90 f3     bcc   $2929
2936: 8d 00     mov   y,#$00
2938: f7 04     mov   a,($04)+y
293a: c4 01     mov   $01,a
293c: eb 00     mov   y,$00
293e: cd 00     mov   x,#$00
2940: 4b 01     lsr   $01
2942: 90 0e     bcc   $2952
2944: f5 79 11  mov   a,$1179+x
2947: 0e 9a 06  tset1 $069a
294a: e8 00     mov   a,#$00
294c: d4 c8     mov   $c8+x,a
294e: f7 c5     mov   a,($c5)+y
2950: d4 cd     mov   $cd+x,a
2952: 3d        inc   x
2953: c8 04     cmp   x,#$04
2955: 90 e9     bcc   $2940
2957: cc 9e 06  mov   $069e,y
295a: 8d 00     mov   y,#$00
295c: f7 04     mov   a,($04)+y
295e: c5 9d 06  mov   $069d,a
2961: 6f        ret

2962: e5 9e 06  mov   a,$069e
2965: 1c        asl   a
2966: fd        mov   y,a
2967: f7 c1     mov   a,($c1)+y
2969: c4 04     mov   $04,a
296b: fc        inc   y
296c: f7 c1     mov   a,($c1)+y
296e: c4 05     mov   $05,a
2970: 8d 00     mov   y,#$00
2972: f7 04     mov   a,($04)+y
2974: c4 00     mov   $00,a
2976: 4e 9c 06  tclr1 $069c
2979: cd 00     mov   x,#$00
297b: 4b 00     lsr   $00
297d: 90 28     bcc   $29a7
297f: fc        inc   y
2980: f7 04     mov   a,($04)+y
2982: d5 9f 06  mov   $069f+x,a
2985: fc        inc   y
2986: f7 04     mov   a,($04)+y
2988: d5 a3 06  mov   $06a3+x,a
298b: e8 00     mov   a,#$00
298d: d5 c3 06  mov   $06c3+x,a
2990: d5 bf 06  mov   $06bf+x,a
2993: d5 d8 06  mov   $06d8+x,a
2996: d5 e8 06  mov   $06e8+x,a
2999: d5 dc 06  mov   $06dc+x,a
299c: d5 af 06  mov   $06af+x,a
299f: bc        inc   a
29a0: d5 ab 06  mov   $06ab+x,a
29a3: e8 80     mov   a,#$80
29a5: d4 c8     mov   $c8+x,a
29a7: 3d        inc   x
29a8: c8 04     cmp   x,#$04
29aa: 90 cf     bcc   $297b
29ac: e4 3b     mov   a,$3b
29ae: 28 01     and   a,#$01
29b0: c4 cc     mov   $cc,a
29b2: 6f        ret

29b3: e4 33     mov   a,$33
29b5: 8f 00 33  mov   $33,#$00
29b8: 1c        asl   a
29b9: 5d        mov   x,a
29ba: 1f bd 29  jmp   ($29bd+x)

29bd: dw $29e1  ;
29bf: dw $29c5  ;
29c1: dw $29dc  ;
29c3: dw $29e2  ;

29c5: e8 00     mov   a,#$00
29c7: c5 9a 06  mov   $069a,a
29ca: cd 03     mov   x,#$03
29cc: f4 c8     mov   a,$c8+x
29ce: 10 03     bpl   $29d3
29d0: 3f cc 2f  call  $2fcc
29d3: 1d        dec   x
29d4: 10 f6     bpl   $29cc
29d6: e5 9a 06  mov   a,$069a
29d9: 5f 5f 11  jmp   $115f

29dc: e4 34     mov   a,$34
29de: c5 cf 06  mov   $06cf,a
29e1: 6f        ret

29e2: e8 08     mov   a,#$08
29e4: 0e c8 00  tset1 $00c8
29e7: 0e c9 00  tset1 $00c9
29ea: 0e ca 00  tset1 $00ca
29ed: 0e cb 00  tset1 $00cb
29f0: 6f        ret

29f1: e8 00     mov   a,#$00
29f3: c5 99 06  mov   $0699,a
29f6: c5 9b 06  mov   $069b,a
29f9: 6f        ret

29fa: f8 c7     mov   x,$c7
29fc: f5 ab 06  mov   a,$06ab+x
29ff: 9c        dec   a
2a00: f0 10     beq   $2a12
2a02: d5 ab 06  mov   $06ab+x,a
2a05: 9c        dec   a
2a06: d0 09     bne   $2a11
2a08: f4 c8     mov   a,$c8+x
2a0a: 28 10     and   a,#$10
2a0c: d0 03     bne   $2a11
2a0e: d5 af 06  mov   $06af+x,a
2a11: 6f        ret

2a12: f5 9f 06  mov   a,$069f+x
2a15: c4 04     mov   $04,a
2a17: f5 a3 06  mov   a,$06a3+x
2a1a: c4 05     mov   $05,a
2a1c: 2f 02     bra   $2a20
;
2a1e: 3a 04     incw  $04
2a20: 8d 00     mov   y,#$00
2a22: f7 04     mov   a,($04)+y
2a24: 3a 04     incw  $04
2a26: c4 00     mov   $00,a
2a28: 68 d0     cmp   a,#$d0
2a2a: 90 5b     bcc   $2a87
2a2c: a8 d0     sbc   a,#$d0
2a2e: 1c        asl   a
2a2f: 5d        mov   x,a
2a30: 1f 33 2a  jmp   ($2a33+x)

2a33: dw $2ae6  ; d0
2a35: dw $2aef  ; d1
2a37: dw $2af9  ; d2
2a39: dw $2b08  ; d3
2a3b: dw $2b16  ; d4
2a3d: dw $2b24  ; d5
2a3f: dw $2b34  ; d6
2a41: dw $2b3e  ; d7
2a43: dw $2b5c  ; d8
2a45: dw $2b66  ; d9
2a47: dw $2b80  ; da
2a49: dw $2b8a  ; db
2a4b: dw $2b98  ; dc
2a4d: dw $2ba9  ; dd
2a4f: dw $2bb9  ; de
2a51: dw $2bc3  ; df
2a53: dw $2bd7  ; e0
2a55: dw $2bfe  ; e1
2a57: dw $2c29  ; e2
2a59: dw $2c37  ; e3
2a5b: dw $2c49  ; e4
2a5d: dw $2c54  ; e5
2a5f: dw $2c61  ; e6
2a61: dw $2c74  ; e7
2a63: dw $2c7e  ; e8
2a65: dw $2c9a  ; e9
2a67: dw $2a20  ; ea
2a69: dw $2a20  ; eb
2a6b: dw $2a20  ; ec
2a6d: dw $2a20  ; ed
2a6f: dw $2a20  ; ee
2a71: dw $2cbb  ; ef

2a73: dw $2cc6  ;
2a75: dw $2cdd  ;
2a77: dw $2d00  ;
2a79: dw $2d17  ;
2a7b: dw $2d39  ;
2a7d: dw $2d48  ;
2a7f: dw $2d57  ;
2a81: dw $2d66  ;
2a83: dw $2d75  ;
2a85: dw $2d84  ;

2a87: f8 c7     mov   x,$c7
2a89: f5 bb 06  mov   a,$06bb+x
2a8c: 28 3f     and   a,#$3f
2a8e: d5 bb 06  mov   $06bb+x,a
2a91: f5 a7 06  mov   a,$06a7+x
2a94: f0 09     beq   $2a9f
2a96: fd        mov   y,a
2a97: e4 00     mov   a,$00
2a99: 28 0f     and   a,#$0f
2a9b: bc        inc   a
2a9c: cf        mul   ya
2a9d: 2f 06     bra   $2aa5
2a9f: 8d 00     mov   y,#$00
2aa1: f7 04     mov   a,($04)+y
2aa3: 3a 04     incw  $04
2aa5: d5 ab 06  mov   $06ab+x,a
2aa8: 38 f0 00  and   $00,#$f0
2aab: f5 b3 06  mov   a,$06b3+x
2aae: 28 0f     and   a,#$0f
2ab0: 04 00     or    a,$00
2ab2: d5 b3 06  mov   $06b3+x,a
2ab5: e4 00     mov   a,$00
2ab7: f0 0b     beq   $2ac4
2ab9: f5 af 06  mov   a,$06af+x
2abc: fd        mov   y,a
2abd: e8 01     mov   a,#$01
2abf: ad 04     cmp   y,#$04
2ac1: d0 01     bne   $2ac4
2ac3: bc        inc   a
2ac4: d5 af 06  mov   $06af+x,a
2ac7: 8d 00     mov   y,#$00
2ac9: f7 04     mov   a,($04)+y
2acb: 68 d5     cmp   a,#$d5
2acd: d0 06     bne   $2ad5
2acf: f4 c8     mov   a,$c8+x
2ad1: 08 10     or    a,#$10
2ad3: d4 c8     mov   $c8+x,a
2ad5: e4 04     mov   a,$04
2ad7: d5 9f 06  mov   $069f+x,a
2ada: e4 05     mov   a,$05
2adc: d5 a3 06  mov   $06a3+x,a
2adf: f4 c8     mov   a,$c8+x
2ae1: 08 20     or    a,#$20
2ae3: d4 c8     mov   $c8+x,a
2ae5: 6f        ret

2ae6: f8 c7     mov   x,$c7
2ae8: f4 c8     mov   a,$c8+x
2aea: 08 40     or    a,#$40
2aec: d4 c8     mov   $c8+x,a
2aee: 6f        ret

2aef: f8 c7     mov   x,$c7
2af1: f7 04     mov   a,($04)+y
2af3: d5 a7 06  mov   $06a7+x,a
2af6: 5f 1e 2a  jmp   $2a1e

2af9: f8 c7     mov   x,$c7
2afb: f5 b3 06  mov   a,$06b3+x
2afe: 28 f0     and   a,#$f0
2b00: 17 04     or    a,($04)+y
2b02: d5 b3 06  mov   $06b3+x,a
2b05: 5f 1e 2a  jmp   $2a1e

2b08: f8 c7     mov   x,$c7
2b0a: f5 b3 06  mov   a,$06b3+x
2b0d: bc        inc   a
2b0e: 28 f7     and   a,#$f7
2b10: d5 b3 06  mov   $06b3+x,a
2b13: 5f 20 2a  jmp   $2a20

2b16: f8 c7     mov   x,$c7
2b18: f5 b3 06  mov   a,$06b3+x
2b1b: 9c        dec   a
2b1c: 28 f7     and   a,#$f7
2b1e: d5 b3 06  mov   $06b3+x,a
2b21: 5f 20 2a  jmp   $2a20

2b24: f8 c7     mov   x,$c7
2b26: f4 c8     mov   a,$c8+x
2b28: 28 ef     and   a,#$ef
2b2a: d4 c8     mov   $c8+x,a
2b2c: e8 04     mov   a,#$04
2b2e: d5 af 06  mov   $06af+x,a
2b31: 5f 20 2a  jmp   $2a20

2b34: f8 c7     mov   x,$c7
2b36: f7 04     mov   a,($04)+y
2b38: d5 d0 06  mov   $06d0+x,a
2b3b: 5f 1e 2a  jmp   $2a1e

2b3e: f8 c7     mov   x,$c7
2b40: f7 04     mov   a,($04)+y
2b42: c4 01     mov   $01,a
2b44: f5 d0 06  mov   a,$06d0+x
2b47: 60        clrc
2b48: 84 01     adc   a,$01
2b4a: 10 04     bpl   $2b50
2b4c: e8 00     mov   a,#$00
2b4e: 2f 06     bra   $2b56
2b50: ad 4f     cmp   y,#$4f
2b52: 90 02     bcc   $2b56
2b54: e8 4f     mov   a,#$4f
2b56: d5 d0 06  mov   $06d0+x,a
2b59: 5f 1e 2a  jmp   $2a1e

2b5c: f8 c7     mov   x,$c7
2b5e: f7 04     mov   a,($04)+y
2b60: d5 d4 06  mov   $06d4+x,a
2b63: 5f 1e 2a  jmp   $2a1e

2b66: f8 c7     mov   x,$c7
2b68: f5 d4 06  mov   a,$06d4+x
2b6b: 60        clrc
2b6c: 97 04     adc   a,($04)+y
2b6e: 10 04     bpl   $2b74
2b70: e8 00     mov   a,#$00
2b72: 2f 06     bra   $2b7a
2b74: 68 1f     cmp   a,#$1f
2b76: 90 02     bcc   $2b7a
2b78: e8 1f     mov   a,#$1f
2b7a: d5 d4 06  mov   $06d4+x,a
2b7d: 5f 1e 2a  jmp   $2a1e

2b80: f8 c7     mov   x,$c7
2b82: f7 04     mov   a,($04)+y
2b84: d5 d8 06  mov   $06d8+x,a
2b87: 5f 1e 2a  jmp   $2a1e

2b8a: f8 c7     mov   x,$c7
2b8c: f5 d8 06  mov   a,$06d8+x
2b8f: 60        clrc
2b90: 97 04     adc   a,($04)+y
2b92: d5 d8 06  mov   $06d8+x,a
2b95: 5f 1e 2a  jmp   $2a1e

2b98: f8 c7     mov   x,$c7
2b9a: f7 04     mov   a,($04)+y
2b9c: d5 dc 06  mov   $06dc+x,a
2b9f: dd        mov   a,y
2ba0: d5 e0 06  mov   $06e0+x,a
2ba3: d5 e4 06  mov   $06e4+x,a
2ba6: 5f 1e 2a  jmp   $2a1e

2ba9: f8 c7     mov   x,$c7
2bab: f7 04     mov   a,($04)+y
2bad: d5 c3 06  mov   $06c3+x,a
2bb0: f4 c8     mov   a,$c8+x
2bb2: 08 08     or    a,#$08
2bb4: d4 c8     mov   $c8+x,a
2bb6: 5f 1e 2a  jmp   $2a1e

2bb9: f8 c7     mov   x,$c7
2bbb: f7 04     mov   a,($04)+y
2bbd: d5 bf 06  mov   $06bf+x,a
2bc0: 5f 1e 2a  jmp   $2a1e

2bc3: f8 c7     mov   x,$c7
2bc5: f7 04     mov   a,($04)+y
2bc7: 9f        xcn   a
2bc8: c4 00     mov   $00,a
2bca: f5 e8 06  mov   a,$06e8+x
2bcd: 28 0f     and   a,#$0f
2bcf: 04 00     or    a,$00
2bd1: d5 e8 06  mov   $06e8+x,a
2bd4: 5f 1e 2a  jmp   $2a1e

2bd7: f8 c7     mov   x,$c7
2bd9: 3f 93 2d  call  $2d93
2bdc: e4 04     mov   a,$04
2bde: d7 06     mov   ($06)+y,a
2be0: fc        inc   y
2be1: e4 05     mov   a,$05
2be3: d7 06     mov   ($06)+y,a
2be5: fc        inc   y
2be6: cd 00     mov   x,#$00
2be8: e7 04     mov   a,($04+x)
2bea: d7 06     mov   ($06)+y,a
2bec: fc        inc   y
2bed: cb 00     mov   $00,y
2bef: f8 c7     mov   x,$c7
2bf1: f5 e8 06  mov   a,$06e8+x
2bf4: 28 f0     and   a,#$f0
2bf6: 04 00     or    a,$00
2bf8: d5 e8 06  mov   $06e8+x,a
2bfb: 5f 1e 2a  jmp   $2a1e

2bfe: f8 c7     mov   x,$c7
2c00: 3f 93 2d  call  $2d93
2c03: dc        dec   y
2c04: f7 06     mov   a,($06)+y
2c06: 9c        dec   a
2c07: f0 0f     beq   $2c18
2c09: d7 06     mov   ($06)+y,a
2c0b: dc        dec   y
2c0c: f7 06     mov   a,($06)+y
2c0e: c4 05     mov   $05,a
2c10: dc        dec   y
2c11: f7 06     mov   a,($06)+y
2c13: c4 04     mov   $04,a
2c15: 5f 1e 2a  jmp   $2a1e

2c18: dc        dec   y
2c19: dc        dec   y
2c1a: cb 00     mov   $00,y
2c1c: f5 e8 06  mov   a,$06e8+x
2c1f: 28 f0     and   a,#$f0
2c21: 04 00     or    a,$00
2c23: d5 e8 06  mov   $06e8+x,a
2c26: 5f 20 2a  jmp   $2a20

2c29: f8 c7     mov   x,$c7
2c2b: f5 bf 06  mov   a,$06bf+x
2c2e: 60        clrc
2c2f: 97 04     adc   a,($04)+y
2c31: d5 bf 06  mov   $06bf+x,a
2c34: 5f 1e 2a  jmp   $2a1e

2c37: e5 5f 01  mov   a,$015f
2c3a: 68 05     cmp   a,#$05
2c3c: d0 08     bne   $2c46
2c3e: f8 c7     mov   x,$c7
2c40: f5 79 11  mov   a,$1179+x
2c43: 0e 9c 06  tset1 $069c
2c46: 5f 20 2a  jmp   $2a20

2c49: f8 c7     mov   x,$c7
2c4b: f5 79 11  mov   a,$1179+x
2c4e: 4e 9c 06  tclr1 $069c
2c51: 5f 20 2a  jmp   $2a20

2c54: f7 04     mov   a,($04)+y
2c56: 5d        mov   x,a
2c57: fc        inc   y
2c58: f7 04     mov   a,($04)+y
2c5a: c4 05     mov   $05,a
2c5c: d8 04     mov   $04,x
2c5e: 5f 20 2a  jmp   $2a20

2c61: f8 c7     mov   x,$c7
2c63: f7 04     mov   a,($04)+y
2c65: 28 03     and   a,#$03
2c67: c4 00     mov   $00,a
2c69: f4 c8     mov   a,$c8+x
2c6b: 28 fc     and   a,#$fc
2c6d: 04 00     or    a,$00
2c6f: d4 c8     mov   $c8+x,a
2c71: 5f 1e 2a  jmp   $2a1e

2c74: f8 c7     mov   x,$c7
2c76: f7 04     mov   a,($04)+y
2c78: d5 dc 06  mov   $06dc+x,a
2c7b: 5f 1e 2a  jmp   $2a1e

2c7e: f8 c7     mov   x,$c7
2c80: f7 04     mov   a,($04)+y
2c82: d5 b7 06  mov   $06b7+x,a
2c85: 3a 04     incw  $04
2c87: f7 04     mov   a,($04)+y
2c89: 08 80     or    a,#$80
2c8b: d5 bb 06  mov   $06bb+x,a
2c8e: 3a 04     incw  $04
2c90: f7 04     mov   a,($04)+y
2c92: d5 ab 06  mov   $06ab+x,a
2c95: 3a 04     incw  $04
2c97: 5f b9 2a  jmp   $2ab9

2c9a: f8 c7     mov   x,$c7
2c9c: 8f 00 07  mov   $07,#$00
2c9f: f7 04     mov   a,($04)+y
2ca1: 10 02     bpl   $2ca5
2ca3: 8b 07     dec   $07
2ca5: c4 06     mov   $06,a
2ca7: f5 bb 06  mov   a,$06bb+x
2caa: fd        mov   y,a
2cab: f5 b7 06  mov   a,$06b7+x
2cae: 7a 06     addw  ya,$06
2cb0: d5 b7 06  mov   $06b7+x,a
2cb3: dd        mov   a,y
2cb4: d5 bb 06  mov   $06bb+x,a
2cb7: 8d 00     mov   y,#$00
2cb9: 2f d3     bra   $2c8e
2cbb: f7 04     mov   a,($04)+y
2cbd: c4 00     mov   $00,a
2cbf: 3a 04     incw  $04
2cc1: 1c        asl   a
2cc2: 5d        mov   x,a
2cc3: 1f 73 2a  jmp   ($2a73+x)

2cc6: f7 04     mov   a,($04)+y
2cc8: f8 c7     mov   x,$c7
2cca: 3f a4 2d  call  $2da4
2ccd: 8d 00     mov   y,#$00
2ccf: 3a 04     incw  $04
2cd1: f7 04     mov   a,($04)+y
2cd3: 0d        push  psw
2cd4: d7 06     mov   ($06)+y,a
2cd6: ae        pop   a
2cd7: c5 ec 06  mov   $06ec,a
2cda: 5f 1e 2a  jmp   $2a1e

2cdd: fc        inc   y
2cde: f7 04     mov   a,($04)+y
2ce0: f8 c7     mov   x,$c7
2ce2: 3f a4 2d  call  $2da4
2ce5: 8d 00     mov   y,#$00
2ce7: f7 06     mov   a,($06)+y
2ce9: c4 00     mov   $00,a
2ceb: f7 04     mov   a,($04)+y
2ced: 3f a4 2d  call  $2da4
2cf0: 8d 00     mov   y,#$00
2cf2: e4 00     mov   a,$00
2cf4: 0d        push  psw
2cf5: d7 06     mov   ($06)+y,a
2cf7: ae        pop   a
2cf8: c5 ec 06  mov   $06ec,a
2cfb: 3a 04     incw  $04
2cfd: 5f 1e 2a  jmp   $2a1e

2d00: f7 04     mov   a,($04)+y
2d02: f8 c7     mov   x,$c7
2d04: 3f a4 2d  call  $2da4
2d07: 8d 00     mov   y,#$00
2d09: 3a 04     incw  $04
2d0b: f7 06     mov   a,($06)+y
2d0d: 77 04     cmp   a,($04)+y
2d0f: 0d        push  psw
2d10: ae        pop   a
2d11: c5 ec 06  mov   $06ec,a
2d14: 5f 1e 2a  jmp   $2a1e

2d17: f7 04     mov   a,($04)+y
2d19: f8 c7     mov   x,$c7
2d1b: 3f a4 2d  call  $2da4
2d1e: 8d 00     mov   y,#$00
2d20: f7 06     mov   a,($06)+y
2d22: c4 00     mov   $00,a
2d24: 3a 04     incw  $04
2d26: f7 04     mov   a,($04)+y
2d28: 3f a4 2d  call  $2da4
2d2b: 8d 00     mov   y,#$00
2d2d: e4 00     mov   a,$00
2d2f: 77 06     cmp   a,($06)+y
2d31: 0d        push  psw
2d32: ae        pop   a
2d33: c5 ec 06  mov   $06ec,a
2d36: 5f 1e 2a  jmp   $2a1e

2d39: e5 ec 06  mov   a,$06ec
2d3c: 2d        push  a
2d3d: 8e        pop   psw
2d3e: d0 03     bne   $2d43
2d40: 5f 54 2c  jmp   $2c54

2d43: 3a 04     incw  $04
2d45: 5f 1e 2a  jmp   $2a1e

2d48: e5 ec 06  mov   a,$06ec
2d4b: 2d        push  a
2d4c: 8e        pop   psw
2d4d: f0 03     beq   $2d52
2d4f: 5f 54 2c  jmp   $2c54

2d52: 3a 04     incw  $04
2d54: 5f 1e 2a  jmp   $2a1e

2d57: e5 ec 06  mov   a,$06ec
2d5a: 2d        push  a
2d5b: 8e        pop   psw
2d5c: b0 03     bcs   $2d61
2d5e: 5f 54 2c  jmp   $2c54

2d61: 3a 04     incw  $04
2d63: 5f 1e 2a  jmp   $2a1e

2d66: e5 ec 06  mov   a,$06ec
2d69: 2d        push  a
2d6a: 8e        pop   psw
2d6b: 90 03     bcc   $2d70
2d6d: 5f 54 2c  jmp   $2c54

2d70: 3a 04     incw  $04
2d72: 5f 1e 2a  jmp   $2a1e

2d75: e5 ec 06  mov   a,$06ec
2d78: 2d        push  a
2d79: 8e        pop   psw
2d7a: 30 03     bmi   $2d7f
2d7c: 5f 54 2c  jmp   $2c54

2d7f: 3a 04     incw  $04
2d81: 5f 1e 2a  jmp   $2a1e

2d84: e5 ec 06  mov   a,$06ec
2d87: 2d        push  a
2d88: 8e        pop   psw
2d89: 10 03     bpl   $2d8e
2d8b: 5f 54 2c  jmp   $2c54

2d8e: 3a 04     incw  $04
2d90: 5f 1e 2a  jmp   $2a1e

2d93: f5 de 2f  mov   a,$2fde+x
2d96: c4 06     mov   $06,a
2d98: f5 e2 2f  mov   a,$2fe2+x
2d9b: c4 07     mov   $07,a
2d9d: f5 e8 06  mov   a,$06e8+x
2da0: 28 0f     and   a,#$0f
2da2: fd        mov   y,a
2da3: 6f        ret

2da4: c4 06     mov   $06,a
2da6: 8f 00 07  mov   $07,#$00
2da9: e8 50     mov   a,#$50
2dab: 8d 08     mov   y,#$08
2dad: 7a 06     addw  ya,$06
2daf: da 06     movw  $06,ya
2db1: 6f        ret

2db2: f8 c7     mov   x,$c7
2db4: f4 c8     mov   a,$c8+x
2db6: 28 08     and   a,#$08
2db8: f0 3b     beq   $2df5
2dba: f5 c3 06  mov   a,$06c3+x
2dbd: 28 7f     and   a,#$7f
2dbf: 8d 04     mov   y,#$04
2dc1: cf        mul   ya
2dc2: 7a c3     addw  ya,$c3
2dc4: da 04     movw  $04,ya
2dc6: 8d 03     mov   y,#$03
2dc8: f7 04     mov   a,($04)+y
2dca: 30 08     bmi   $2dd4
2dcc: dc        dec   y
2dcd: f7 04     mov   a,($04)+y
2dcf: dc        dec   y
2dd0: 17 04     or    a,($04)+y
2dd2: f0 22     beq   $2df6
2dd4: d5 95 06  mov   $0695+x,a
2dd7: dc        dec   y
2dd8: f7 04     mov   a,($04)+y
2dda: d5 91 06  mov   $0691+x,a
2ddd: dc        dec   y
2dde: f7 04     mov   a,($04)+y
2de0: 08 80     or    a,#$80
2de2: d5 8d 06  mov   $068d+x,a
2de5: dc        dec   y
2de6: f7 04     mov   a,($04)+y
2de8: d5 89 06  mov   $0689+x,a
2deb: 3f 74 10  call  $1074
2dee: d5 c7 06  mov   $06c7+x,a
2df1: dd        mov   a,y
2df2: d5 cb 06  mov   $06cb+x,a
2df5: 6f        ret

2df6: 8d 03     mov   y,#$03
2df8: f7 04     mov   a,($04)+y
2dfa: 1c        asl   a
2dfb: 1c        asl   a
2dfc: fd        mov   y,a
2dfd: f6 40 08  mov   a,$0840+y
2e00: d5 89 06  mov   $0689+x,a
2e03: fc        inc   y
2e04: f6 40 08  mov   a,$0840+y
2e07: d5 8d 06  mov   $068d+x,a
2e0a: fc        inc   y
2e0b: f6 40 08  mov   a,$0840+y
2e0e: d5 91 06  mov   $0691+x,a
2e11: fc        inc   y
2e12: f6 40 08  mov   a,$0840+y
2e15: d5 95 06  mov   $0695+x,a
2e18: f5 89 06  mov   a,$0689+x
2e1b: 2f ce     bra   $2deb
2e1d: f8 c7     mov   x,$c7
2e1f: f5 d0 06  mov   a,$06d0+x
2e22: 1c        asl   a
2e23: fd        mov   y,a
2e24: e5 cf 06  mov   a,$06cf
2e27: bc        inc   a
2e28: cf        mul   ya
2e29: cb 01     mov   $01,y
2e2b: f5 d4 06  mov   a,$06d4+x
2e2e: fb c8     mov   y,$c8+x
2e30: 13 cc 04  bbc0  $cc,$2e37
2e33: e8 0f     mov   a,#$0f
2e35: 8d 00     mov   y,#$00
2e37: c4 00     mov   $00,a
2e39: cb 02     mov   $02,y
2e3b: 3f 32 11  call  $1132
2e3e: f8 c7     mov   x,$c7
2e40: d5 7d 06  mov   $067d+x,a
2e43: dd        mov   a,y
2e44: d5 79 06  mov   $0679+x,a
2e47: 6f        ret

2e48: f8 c7     mov   x,$c7
2e4a: f5 b3 06  mov   a,$06b3+x
2e4d: 28 f0     and   a,#$f0
2e4f: d0 03     bne   $2e54
2e51: 5f 11 2f  jmp   $2f11

2e54: f5 e8 06  mov   a,$06e8+x
2e57: 28 f0     and   a,#$f0
2e59: f0 1c     beq   $2e77
2e5b: f4 c8     mov   a,$c8+x
2e5d: 28 20     and   a,#$20
2e5f: f0 0d     beq   $2e6e
2e61: f5 b3 06  mov   a,$06b3+x
2e64: 9f        xcn   a
2e65: 28 0f     and   a,#$0f
2e67: 60        clrc
2e68: 95 bf 06  adc   a,$06bf+x
2e6b: 3f e1 0f  call  $0fe1
2e6e: f5 79 11  mov   a,$1179+x
2e71: 0e 9b 06  tset1 $069b
2e74: 5f 11 2f  jmp   $2f11

2e77: f4 c8     mov   a,$c8+x
2e79: 28 20     and   a,#$20
2e7b: f0 4c     beq   $2ec9
2e7d: f5 bb 06  mov   a,$06bb+x
2e80: 30 4a     bmi   $2ecc
2e82: f5 c7 06  mov   a,$06c7+x
2e85: c4 04     mov   $04,a
2e87: f5 cb 06  mov   a,$06cb+x
2e8a: c4 05     mov   $05,a
2e8c: f5 b3 06  mov   a,$06b3+x
2e8f: 28 07     and   a,#$07
2e91: 8d 0c     mov   y,#$0c
2e93: cf        mul   ya
2e94: c4 00     mov   $00,a
2e96: f5 b3 06  mov   a,$06b3+x
2e99: 28 f0     and   a,#$f0
2e9b: 9f        xcn   a
2e9c: 9c        dec   a
2e9d: 60        clrc
2e9e: 84 00     adc   a,$00
2ea0: 8d 02     mov   y,#$02
2ea2: 60        clrc
2ea3: 97 04     adc   a,($04)+y
2ea5: 60        clrc
2ea6: 95 bf 06  adc   a,$06bf+x
2ea9: c4 00     mov   $00,a
2eab: 8f 00 06  mov   $06,#$00
2eae: 8f 00 07  mov   $07,#$00
2eb1: 3f 7a 10  call  $107a
2eb4: da 04     movw  $04,ya
2eb6: f8 c7     mov   x,$c7
2eb8: 8d 00     mov   y,#$00
2eba: f5 d8 06  mov   a,$06d8+x
2ebd: 10 01     bpl   $2ec0
2ebf: dc        dec   y
2ec0: 7a 04     addw  ya,$04
2ec2: d5 b7 06  mov   $06b7+x,a
2ec5: dd        mov   a,y
2ec6: d5 bb 06  mov   $06bb+x,a
2ec9: f5 bb 06  mov   a,$06bb+x
2ecc: 28 3f     and   a,#$3f
2ece: c4 05     mov   $05,a
2ed0: f5 b7 06  mov   a,$06b7+x
2ed3: c4 04     mov   $04,a
2ed5: f5 dc 06  mov   a,$06dc+x
2ed8: f0 2d     beq   $2f07
2eda: f5 af 06  mov   a,$06af+x
2edd: 68 01     cmp   a,#$01
2edf: d0 08     bne   $2ee9
2ee1: e8 00     mov   a,#$00
2ee3: d5 e0 06  mov   $06e0+x,a
2ee6: d5 e4 06  mov   $06e4+x,a
2ee9: 8d 00     mov   y,#$00
2eeb: f5 dc 06  mov   a,$06dc+x
2eee: 10 01     bpl   $2ef1
2ef0: dc        dec   y
2ef1: 60        clrc
2ef2: 95 e0 06  adc   a,$06e0+x
2ef5: d5 e0 06  mov   $06e0+x,a
2ef8: dd        mov   a,y
2ef9: 95 e4 06  adc   a,$06e4+x
2efc: d5 e4 06  mov   $06e4+x,a
2eff: fd        mov   y,a
2f00: f5 e0 06  mov   a,$06e0+x
2f03: 7a 04     addw  ya,$04
2f05: da 04     movw  $04,ya
2f07: e4 04     mov   a,$04
2f09: d5 81 06  mov   $0681+x,a
2f0c: e4 05     mov   a,$05
2f0e: d5 85 06  mov   $0685+x,a
2f11: f4 c8     mov   a,$c8+x
2f13: 28 df     and   a,#$df
2f15: d4 c8     mov   $c8+x,a
2f17: 6f        ret

2f18: eb c7     mov   y,$c7
2f1a: f6 af 06  mov   a,$06af+y
2f1d: 1c        asl   a
2f1e: 5d        mov   x,a
2f1f: 1f 22 2f  jmp   ($2f22+x)

2f22: dw $2f2c  ;
2f24: dw $2f33  ;
2f26: dw $2f4b  ;
2f28: dw $2f2c  ;
2f2a: dw $2f2c  ;

2f2c: f6 79 11  mov   a,$1179+y
2f2f: 0e 9a 06  tset1 $069a
2f32: 6f        ret

2f33: f6 ab 06  mov   a,$06ab+y
2f36: 9c        dec   a
2f37: d0 07     bne   $2f40
2f39: f6 c8 00  mov   a,$00c8+y
2f3c: 28 10     and   a,#$10
2f3e: f0 ec     beq   $2f2c
2f40: f6 79 11  mov   a,$1179+y
2f43: 0e 99 06  tset1 $0699
2f46: e8 02     mov   a,#$02
2f48: d6 af 06  mov   $06af+y,a
2f4b: 6f        ret

2f4c: e8 00     mov   a,#$00
2f4e: c5 41 01  mov   $0141,a
2f51: 8f 03 c7  mov   $c7,#$03
2f54: f8 c7     mov   x,$c7
2f56: f4 c8     mov   a,$c8+x
2f58: 10 4c     bpl   $2fa6
2f5a: 28 40     and   a,#$40
2f5c: f0 05     beq   $2f63
2f5e: 3f cc 2f  call  $2fcc
2f61: 2f 43     bra   $2fa6
2f63: f4 c8     mov   a,$c8+x
2f65: 28 08     and   a,#$08
2f67: f0 1b     beq   $2f84
2f69: f4 c8     mov   a,$c8+x
2f6b: 28 f7     and   a,#$f7
2f6d: d4 c8     mov   $c8+x,a
2f6f: f5 89 06  mov   a,$0689+x
2f72: 8d 04     mov   y,#$04
2f74: 4f 13     pcall $13               ; set $0689+x to SRCN
2f76: f5 8d 06  mov   a,$068d+x
2f79: 8d 05     mov   y,#$05
2f7b: 4f 13     pcall $13               ; set $068d+x to ADSR(1)
2f7d: f5 91 06  mov   a,$0691+x
2f80: 8d 06     mov   y,#$06
2f82: 4f 13     pcall $13               ; set $0691+x to ADSR(2)
2f84: f5 81 06  mov   a,$0681+x
2f87: 8d 02     mov   y,#$02
2f89: 4f 13     pcall $13               ; set $0681+x to P(L)
2f8b: f5 85 06  mov   a,$0685+x
2f8e: 8d 03     mov   y,#$03
2f90: 4f 13     pcall $13               ; set $0685+x to P(H)
2f92: f5 79 06  mov   a,$0679+x
2f95: 8d 01     mov   y,#$01
2f97: 4f 13     pcall $13               ; set $0679+x to VOL(R)
2f99: f5 7d 06  mov   a,$067d+x
2f9c: 8d 00     mov   y,#$00
2f9e: 4f 13     pcall $13               ; set $067d+x to VOL(L)
2fa0: f5 79 11  mov   a,$1179+x
2fa3: 0e 41 01  tset1 $0141
2fa6: 8b c7     dec   $c7
2fa8: 10 aa     bpl   $2f54
2faa: e5 9d 06  mov   a,$069d
2fad: 0e 41 01  tset1 $0141
2fb0: e5 9c 06  mov   a,$069c
2fb3: c5 51 01  mov   $0151,a
2fb6: e5 9b 06  mov   a,$069b
2fb9: c5 4f 01  mov   $014f,a
2fbc: e5 9a 06  mov   a,$069a
2fbf: f0 03     beq   $2fc4
2fc1: 3f 5f 11  call  $115f
2fc4: e5 99 06  mov   a,$0699
2fc7: 8d 4c     mov   y,#$4c
2fc9: 5f 1f ff  jmp   $ff1f

2fcc: f5 79 11  mov   a,$1179+x
2fcf: 0e 9a 06  tset1 $069a
2fd2: 4e 9c 06  tclr1 $069c
2fd5: e8 00     mov   a,#$00
2fd7: d4 c8     mov   $c8+x,a
2fd9: bc        inc   a
2fda: d5 42 01  mov   $0142+x,a
2fdd: 6f        ret

2fde: db $ed,$f6,$ff,$08,$06,$06,$06,$07,$ff

; pcall $00 - set A to dsp reg Y of channel X
ff00: 2d        push  a
ff01: 7d        mov   a,x
ff02: 9f        xcn   a
ff03: cc 0f 00  mov   $000f,y
ff06: 60        clrc
ff07: 85 0f 00  adc   a,$000f
ff0a: fd        mov   y,a
ff0b: ae        pop   a
; pcall $0c - set A to dsp reg Y
ff0c: cc f2 00  mov   $00f2,y
ff0f: c5 f3 00  mov   $00f3,a
ff12: 6f        ret

; pcall $13 - set A to dsp reg Y of channel X
ff13: c4 10     mov   $10,a
ff15: 7d        mov   a,x
ff16: 9f        xcn   a
ff17: cb 0f     mov   $0f,y
ff19: 60        clrc
ff1a: 84 0f     adc   a,$0f
ff1c: fd        mov   y,a
ff1d: e4 10     mov   a,$10
ff1f: cb f2     mov   $f2,y
ff21: c4 f3     mov   $f3,a
ff23: 6f        ret

; pcall $24 - get dsp reg Y of channel X to A
ff24: 7d        mov   a,x
ff25: 9f        xcn   a
ff26: cc 0f 00  mov   $000f,y
ff29: 60        clrc
ff2a: 85 0f 00  adc   a,$000f
ff2d: fd        mov   y,a
; pcall $2e - get dsp reg Y to A
ff2e: cc f2 00  mov   $00f2,y
ff31: e5 f3 00  mov   a,$00f3
ff34: 6f        ret

; pcall $35
ff35: f4 22     mov   a,$22+x
ff37: d4 26     mov   $26+x,a
ff39: f4 f4     mov   a,$f4+x
ff3b: 74 f4     cmp   a,$f4+x
ff3d: d0 fa     bne   $ff39
ff3f: d4 22     mov   $22+x,a
ff41: 6f        ret

; pcall $42
ff42: 2d        push  a
ff43: 6d        push  y
ff44: 3f fe 08  call  $08fe
ff47: ee        pop   y
ff48: ae        pop   a
ff49: 6f        ret

