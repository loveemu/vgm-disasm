0800: 2f 6b     bra   $086d
; SFX SOUND DRIVER Version 1.16  Copyright(c) 1993,94 Hudson Soft Program : LU.Iwabuchi Driver : Kazumi-TYPE 
086d: 40        setp
086e: cd 3f     mov   x,#$3f
0870: bd        mov   sp,x
0871: e8 00     mov   a,#$00
0873: c6        mov   (x),a
0874: 1d        dec   x
0875: 10 fc     bpl   $0873
0877: 8f 00 61  mov   $61,#$00
087a: 8f 00 5f  mov   $5f,#$00
087d: 3f ea 0d  call  $0dea
0880: 20        clrp
0881: 8f 00 35  mov   $35,#$00
0884: 3f d0 08  call  $08d0
0887: cd 3f     mov   x,#$3f
0889: bd        mov   sp,x
088a: 3f ef 0c  call  $0cef
088d: 3f 27 0d  call  $0d27
0890: 3f 63 09  call  $0963
0893: 3f a4 09  call  $09a4
0896: 3f 0e 12  call  $120e
0899: c4 36     mov   $36,a
089b: 3f bc 20  call  $20bc
089e: c4 37     mov   $37,a
08a0: e8 80     mov   a,#$80
08a2: cd 00     mov   x,#$00
08a4: 3f 06 0d  call  $0d06
08a7: e8 20     mov   a,#$20
08a9: cd 01     mov   x,#$01
08ab: 3f 06 0d  call  $0d06
08ae: 8f 00 30  mov   $30,#$00
08b1: 8f 00 31  mov   $31,#$00
08b4: 8f 02 34  mov   $34,#$02
08b7: e8 96     mov   a,#$96
08b9: 3f 34 09  call  $0934
08bc: e8 aa     mov   a,#$aa
08be: c4 f6     mov   $f6,a
08c0: c4 f7     mov   $f7,a
08c2: 3f fa 08  call  $08fa
08c5: 3f 3a 0f  call  $0f3a
08c8: 3f 84 09  call  $0984
08cb: 3f 74 09  call  $0974
08ce: 2f f2     bra   $08c2
08d0: e5 c2 07  mov   a,$07c2
08d3: ec c3 07  mov   y,$07c3
08d6: da 13     movw  $13,ya            ; set music structure address from $07c2/3 to $13/4
08d8: e5 c4 07  mov   a,$07c4
08db: ec c5 07  mov   y,$07c5
08de: da 15     movw  $15,ya
08e0: e5 c6 07  mov   a,$07c6
08e3: ec c7 07  mov   y,$07c7
08e6: da 17     movw  $17,ya
08e8: e5 c8 07  mov   a,$07c8
08eb: c5 5b 01  mov   $015b,a
08ee: e5 c9 07  mov   a,$07c9
08f1: c4 19     mov   $19,a
08f3: 8f 20 1a  mov   $1a,#$20
08f6: 8f 11 1a  mov   $1a,#$11          ; set echo FIR table address $1120
08f9: 6f        ret

08fa: e5 fe 00  mov   a,$00fe
08fd: 28 0f     and   a,#$0f
08ff: d0 01     bne   $0902
0901: 6f        ret

0902: 2d        push  a
0903: 3f 0e 1c  call  $1c0e
0906: ae        pop   a
0907: 2d        push  a
0908: 8d 40     mov   y,#$40
090a: cf        mul   ya
090b: 60        clrc
090c: 84 30     adc   a,$30
090e: c4 30     mov   $30,a
0910: 90 09     bcc   $091b
0912: 3f ff 20  call  $20ff
0915: 3f 83 0d  call  $0d83
0918: 3f ca 1b  call  $1bca
091b: ae        pop   a
091c: eb 32     mov   y,$32
091e: cf        mul   ya
091f: 60        clrc
0920: 84 31     adc   a,$31
0922: c4 31     mov   $31,a
0924: dd        mov   a,y
0925: d0 02     bne   $0929
0927: 90 d8     bcc   $0901
0929: 3f b9 0d  call  $0db9
092c: 3f 37 12  call  $1237
092f: 3f 83 0d  call  $0d83
0932: 2f c6     bra   $08fa
; update tempo
0934: 68 0a     cmp   a,#$0a
0936: b0 02     bcs   $093a
0938: e8 0a     mov   a,#$0a
093a: c4 32     mov   $32,a
093c: c4 33     mov   $33,a
093e: 8d 00     mov   y,#$00
0940: cd 0a     mov   x,#$0a
0942: 9e        div   ya,x
0943: 5d        mov   x,a
0944: e4 32     mov   a,$32
0946: 80        setc
0947: b5 f4 11  sbc   a,$11f4+x
094a: ad 05     cmp   y,#$05
094c: 90 01     bcc   $094f
094e: 9c        dec   a
094f: eb 34     mov   y,$34
0951: f0 03     beq   $0956
0953: 5c        lsr   a
0954: fe fd     dbnz  y,$0953
0956: c4 32     mov   $32,a
0958: 6f        ret

0959: 6d        push  y
095a: c4 34     mov   $34,a
095c: e4 33     mov   a,$33
095e: 3f 34 09  call  $0934
0961: ee        pop   y
0962: 6f        ret

0963: e4 1c     mov   a,$1c
0965: 08 30     or    a,#$30
0967: c5 f1 00  mov   $00f1,a
096a: 8d 08     mov   y,#$08
096c: cd 20     mov   x,#$20
096e: e8 00     mov   a,#$00
0970: af        mov   (x)+,a
0971: fe fd     dbnz  y,$0970
0973: 6f        ret

0974: cd 00     mov   x,#$00
0976: 4f 24     pcall $24
0978: 69 24 20  cmp   ($20),($24)
097b: d0 01     bne   $097e
097d: 6f        ret

097e: 48 80     eor   a,#$80
0980: c4 f4     mov   $f4,a
0982: 2f 2d     bra   $09b1
0984: cd 01     mov   x,#$01
0986: 4f 24     pcall $24
0988: 69 25 21  cmp   ($21),($25)
098b: d0 01     bne   $098e
098d: 6f        ret

098e: cd 02     mov   x,#$02
0990: 4f 24     pcall $24
0992: cd 03     mov   x,#$03
0994: 4f 24     pcall $24
0996: e8 00     mov   a,#$00
0998: c4 f6     mov   $f6,a
099a: c4 f7     mov   $f7,a
099c: e4 21     mov   a,$21
099e: 48 80     eor   a,#$80
09a0: c4 f5     mov   $f5,a
09a2: 2f 22     bra   $09c6
09a4: 8f 00 2a  mov   $2a,#$00
09a7: 8f 00 2d  mov   $2d,#$00
09aa: 8f 80 28  mov   $28,#$80
09ad: 8f 80 29  mov   $29,#$80
09b0: 6f        ret

09b1: e4 20     mov   a,$20
09b3: 28 7f     and   a,#$7f
09b5: f0 0e     beq   $09c5
09b7: 65 ca 07  cmp   a,$07ca
09ba: b0 04     bcs   $09c0
09bc: 9c        dec   a
09bd: c4 28     mov   $28,a
09bf: 6f        ret

09c0: a5 ca 07  sbc   a,$07ca
09c3: c4 29     mov   $29,a
09c5: 6f        ret

09c6: e4 21     mov   a,$21
09c8: 28 7f     and   a,#$7f
09ca: 68 32     cmp   a,#$32
09cc: b0 05     bcs   $09d3
09ce: 1c        asl   a
09cf: 5d        mov   x,a
09d0: 1f e1 09  jmp   ($09e1+x)

09d3: e8 aa     mov   a,#$aa
09d5: c4 f6     mov   $f6,a
09d7: c4 f7     mov   $f7,a
09d9: 6f        ret

09da: c4 f7     mov   $f7,a
09dc: e8 aa     mov   a,#$aa
09de: c4 f6     mov   $f6,a
09e0: 6f        ret

09e1: dw $09d3  ; 
09e3: dw $0a45  ; 
09e5: dw $09d3  ; 
09e7: dw $0a66  ; 
09e9: dw $0a6f  ; 
09eb: dw $0a86  ; 
09ed: dw $0a93  ; 
09ef: dw $0aa1  ; 
09f1: dw $0aa4  ; 
09f3: dw $0aa9  ; 
09f5: dw $0aae  ; 
09f7: dw $0ab4  ; 
09f9: dw $0acf  ; 
09fb: dw $09d3  ; 
09fd: dw $0aea  ; 
09ff: dw $0b02  ; 
0a01: dw $0b1a  ; 
0a03: dw $0b59  ; 
0a05: dw $0b62  ; 
0a07: dw $0b6b  ; 
0a09: dw $0b7a  ; 
0a0b: dw $0b80  ; 
0a0d: dw $0b86  ; 
0a0f: dw $0b8f  ; 
0a11: dw $0b98  ; 
0a13: dw $0ba1  ; 
0a15: dw $0baa  ; 
0a17: dw $0bb3  ; 
0a19: dw $0bbb  ; 
0a1b: dw $0bc4  ; 
0a1d: dw $0bc7  ; 
0a1f: dw $0bce  ; 
0a21: dw $0bd3  ; 
0a23: dw $0bdc  ; 
0a25: dw $0be7  ; 
0a27: dw $09d3  ; 
0a29: dw $0bf4  ; 
0a2b: dw $0bfd  ; 
0a2d: dw $0c73  ; 
0a2f: dw $0c7a  ; 
0a31: dw $0c85  ; 
0a33: dw $0c8f  ; 
0a35: dw $0c9a  ; 
0a37: dw $0ca4  ; 
0a39: dw $0caf  ; 
0a3b: dw $0cb7  ; 
0a3d: dw $0cbd  ; 
0a3f: dw $0cc3  ; 
0a41: dw $0cc8  ; 
0a43: dw $0cda  ; 

0a45: ec 94 07  mov   y,$0794
0a48: e4 22     mov   a,$22
0a4a: 04 23     or    a,$23
0a4c: d0 06     bne   $0a54
0a4e: c5 94 07  mov   $0794,a
0a51: 5f d3 09  jmp   $09d3

0a54: e4 22     mov   a,$22
0a56: d6 80 07  mov   $0780+y,a
0a59: fc        inc   y
0a5a: e4 23     mov   a,$23
0a5c: d6 80 07  mov   $0780+y,a
0a5f: fc        inc   y
0a60: cc 94 07  mov   $0794,y
0a63: 5f d3 09  jmp   $09d3

0a66: e5 1b 08  mov   a,$081b
0a69: 80        setc
0a6a: a8 30     sbc   a,#$30
0a6c: 5f da 09  jmp   $09da

0a6f: e5 1d 08  mov   a,$081d
0a72: 80        setc
0a73: a8 30     sbc   a,#$30
0a75: 8d 0a     mov   y,#$0a
0a77: cf        mul   ya
0a78: c4 0d     mov   $0d,a
0a7a: e5 1e 08  mov   a,$081e
0a7d: 80        setc
0a7e: a8 30     sbc   a,#$30
0a80: 60        clrc
0a81: 84 0d     adc   a,$0d
0a83: 5f da 09  jmp   $09da

0a86: fa 22 0f  mov   ($0f),($22)
0a89: fa 23 10  mov   ($10),($23)
0a8c: 8d 00     mov   y,#$00
0a8e: f7 0f     mov   a,($0f)+y
0a90: 5f da 09  jmp   $09da

0a93: e8 e0     mov   a,#$e0
0a95: 8d 6c     mov   y,#$6c
0a97: 4f 0c     pcall $0c               ; set #$e0 to FLG
0a99: e8 80     mov   a,#$80
0a9b: c5 f1 00  mov   $00f1,a
0a9e: 5f c0 ff  jmp   $ffc0

0aa1: 5f 87 08  jmp   $0887

0aa4: e4 36     mov   a,$36
0aa6: 5f da 09  jmp   $09da

0aa9: e4 37     mov   a,$37
0aab: 5f da 09  jmp   $09da

0aae: e5 ca 07  mov   a,$07ca
0ab1: 5f da 09  jmp   $09da

0ab4: 8f 01 2a  mov   $2a,#$01
0ab7: 3f 37 12  call  $1237
0aba: fa 13 07  mov   ($07),($13)
0abd: fa 14 08  mov   ($08),($14)
0ac0: 3f b0 0f  call  $0fb0
0ac3: 3f fa 08  call  $08fa
0ac6: 3f 63 09  call  $0963
0ac9: 3f 0e 12  call  $120e
0acc: 5f d3 09  jmp   $09d3

0acf: 8f 01 2d  mov   $2d,#$01
0ad2: 3f ff 20  call  $20ff
0ad5: fa 15 07  mov   ($07),($15)
0ad8: fa 16 08  mov   ($08),($16)
0adb: 3f b0 0f  call  $0fb0
0ade: 3f fa 08  call  $08fa
0ae1: 3f 63 09  call  $0963
0ae4: 3f bc 20  call  $20bc
0ae7: 5f d3 09  jmp   $09d3

0aea: 8f 01 2a  mov   $2a,#$01
0aed: 3f 37 12  call  $1237
0af0: fa 13 07  mov   ($07),($13)
0af3: fa 14 08  mov   ($08),($14)
0af6: 3f 70 0f  call  $0f70
0af9: 3f 63 09  call  $0963
0afc: 3f 0e 12  call  $120e
0aff: 5f d3 09  jmp   $09d3

0b02: 8f 01 2d  mov   $2d,#$01
0b05: 3f ff 20  call  $20ff
0b08: fa 15 07  mov   ($07),($15)
0b0b: fa 16 08  mov   ($08),($16)
0b0e: 3f 70 0f  call  $0f70
0b11: 3f 63 09  call  $0963
0b14: 3f bc 20  call  $20bc
0b17: 5f d3 09  jmp   $09d3

0b1a: e5 40 01  mov   a,$0140
0b1d: 05 41 01  or    a,$0141
0b20: f0 19     beq   $0b3b
0b22: 8f 01 2d  mov   $2d,#$01
0b25: 3f ff 20  call  $20ff
0b28: 8f 01 2a  mov   $2a,#$01
0b2b: 3f 37 12  call  $1237
0b2e: cd 07     mov   x,#$07
0b30: 8d 08     mov   y,#$08
0b32: 4f 13     pcall $13
0b34: 68 02     cmp   a,#$02
0b36: b0 f8     bcs   $0b30
0b38: 1d        dec   x
0b39: 10 f5     bpl   $0b30
0b3b: e8 a0     mov   a,#$a0
0b3d: 8d 6c     mov   y,#$6c
0b3f: 4f 0c     pcall $0c               ; set #$a0 to FLG
0b41: e8 00     mov   a,#$00
0b43: 8d 4d     mov   y,#$4d
0b45: 4f 0c     pcall $0c               ; set #$00 to EON
0b47: 8d 2c     mov   y,#$2c
0b49: 4f 0c     pcall $0c               ; set #$4d to EVOL(L)
0b4b: 8d 3c     mov   y,#$3c
0b4d: 4f 0c     pcall $0c               ; set #$4d to EVOL(R)
0b4f: c4 07     mov   $07,a
0b51: c4 08     mov   $08,a
0b53: 3f 70 0f  call  $0f70
0b56: 5f 87 08  jmp   $0887

0b59: 8f 01 2a  mov   $2a,#$01
0b5c: 3f 37 12  call  $1237
0b5f: 5f d3 09  jmp   $09d3

0b62: 8f 01 2d  mov   $2d,#$01
0b65: 3f ff 20  call  $20ff
0b68: 5f d3 09  jmp   $09d3

0b6b: 8f 01 2d  mov   $2d,#$01
0b6e: 3f ff 20  call  $20ff
0b71: 8f 01 2a  mov   $2a,#$01
0b74: 3f 37 12  call  $1237
0b77: 5f d3 09  jmp   $09d3

0b7a: e5 40 01  mov   a,$0140
0b7d: 5f da 09  jmp   $09da

0b80: e5 41 01  mov   a,$0141
0b83: 5f da 09  jmp   $09da

0b86: fa 22 2b  mov   ($2b),($22)
0b89: 8f 02 2a  mov   $2a,#$02
0b8c: 5f d3 09  jmp   $09d3

0b8f: fa 22 2e  mov   ($2e),($22)
0b92: 8f 02 2d  mov   $2d,#$02
0b95: 5f d3 09  jmp   $09d3

0b98: fa 22 2b  mov   ($2b),($22)
0b9b: 8f 03 2a  mov   $2a,#$03
0b9e: 5f d3 09  jmp   $09d3

0ba1: fa 22 2b  mov   ($2b),($22)
0ba4: 8f 04 2a  mov   $2a,#$04
0ba7: 5f d3 09  jmp   $09d3

0baa: fa 22 2b  mov   ($2b),($22)
0bad: 8f 05 2a  mov   $2a,#$05
0bb0: 5f d3 09  jmp   $09d3

0bb3: e4 22     mov   a,$22
0bb5: 3f 34 09  call  $0934
0bb8: 5f d3 09  jmp   $09d3

0bbb: 12 35     clr0  $35
0bbd: 13 22 07  bbc0  $22,$0bc7
0bc0: 02 35     set0  $35
0bc2: 2f 03     bra   $0bc7
0bc4: 58 01 35  eor   $35,#$01
0bc7: e4 35     mov   a,$35
0bc9: 28 01     and   a,#$01
0bcb: 5f da 09  jmp   $09da

0bce: e4 33     mov   a,$33
0bd0: 5f da 09  jmp   $09da

0bd3: fa 22 09  mov   ($09),($22)
0bd6: fa 23 0a  mov   ($0a),($23)
0bd9: 5f d3 09  jmp   $09d3

0bdc: e4 22     mov   a,$22
0bde: 8d 00     mov   y,#$00
0be0: d7 09     mov   ($09)+y,a
0be2: f7 09     mov   a,($09)+y
0be4: 5f da 09  jmp   $09da

0be7: e4 22     mov   a,$22
0be9: 8d 00     mov   y,#$00
0beb: d7 09     mov   ($09)+y,a
0bed: f7 09     mov   a,($09)+y
0bef: 3a 09     incw  $09
0bf1: 5f da 09  jmp   $09da

0bf4: fa 22 0b  mov   ($0b),($22)
0bf7: fa 23 0c  mov   ($0c),($23)
0bfa: 5f d3 09  jmp   $09d3

0bfd: ba 22     movw  ya,$22
0bff: da 0d     movw  $0d,ya
0c01: ba 09     movw  ya,$09
0c03: 5a 0b     cmpw  ya,$0b
0c05: b0 27     bcs   $0c2e
0c07: eb 0e     mov   y,$0e
0c09: d0 07     bne   $0c12
0c0b: f8 0d     mov   x,$0d
0c0d: d0 14     bne   $0c23
0c0f: 5f d3 09  jmp   $09d3

0c12: 8d 00     mov   y,#$00
0c14: f7 0b     mov   a,($0b)+y
0c16: d7 09     mov   ($09)+y,a
0c18: fc        inc   y
0c19: d0 f9     bne   $0c14
0c1b: ab 0c     inc   $0c
0c1d: ab 0a     inc   $0a
0c1f: 8b 0e     dec   $0e
0c21: 2f e4     bra   $0c07
0c23: f7 0b     mov   a,($0b)+y
0c25: d7 09     mov   ($09)+y,a
0c27: fc        inc   y
0c28: 1d        dec   x
0c29: d0 f8     bne   $0c23
0c2b: 5f d3 09  jmp   $09d3

0c2e: 7a 0d     addw  ya,$0d
0c30: da 09     movw  $09,ya
0c32: 1a 09     decw  $09
0c34: ba 0b     movw  ya,$0b
0c36: 7a 0d     addw  ya,$0d
0c38: da 0b     movw  $0b,ya
0c3a: 1a 0b     decw  $0b
0c3c: eb 0e     mov   y,$0e
0c3e: d0 07     bne   $0c47
0c40: eb 0d     mov   y,$0d
0c42: d0 18     bne   $0c5c
0c44: 5f d3 09  jmp   $09d3

0c47: 8d 00     mov   y,#$00
0c49: f7 0b     mov   a,($0b)+y
0c4b: d7 09     mov   ($09)+y,a
0c4d: 8b 0c     dec   $0c
0c4f: 8b 0a     dec   $0a
0c51: dc        dec   y
0c52: f7 0b     mov   a,($0b)+y
0c54: d7 09     mov   ($09)+y,a
0c56: fe fa     dbnz  y,$0c52
0c58: 8b 0e     dec   $0e
0c5a: 2f e0     bra   $0c3c
0c5c: ba 0b     movw  ya,$0b
0c5e: 9a 0d     subw  ya,$0d
0c60: da 0b     movw  $0b,ya
0c62: ba 09     movw  ya,$09
0c64: 9a 0d     subw  ya,$0d
0c66: da 09     movw  $09,ya
0c68: eb 0d     mov   y,$0d
0c6a: f7 0b     mov   a,($0b)+y
0c6c: d7 09     mov   ($09)+y,a
0c6e: fe fa     dbnz  y,$0c6a
0c70: 5f d3 09  jmp   $09d3

0c73: ba 22     movw  ya,$22
0c75: da 17     movw  $17,ya
0c77: 5f 87 08  jmp   $0887

0c7a: e4 18     mov   a,$18
0c7c: eb 22     mov   y,$22
0c7e: f0 02     beq   $0c82
0c80: e4 17     mov   a,$17
0c82: 5f da 09  jmp   $09da

0c85: ba 22     movw  ya,$22
0c87: da 13     movw  $13,ya
0c89: 3f 0e 12  call  $120e
0c8c: 5f d3 09  jmp   $09d3

0c8f: e4 14     mov   a,$14
0c91: eb 22     mov   y,$22
0c93: f0 02     beq   $0c97
0c95: e4 13     mov   a,$13
0c97: 5f da 09  jmp   $09da

0c9a: ba 22     movw  ya,$22
0c9c: da 15     movw  $15,ya
0c9e: 3f bc 20  call  $20bc
0ca1: 5f d3 09  jmp   $09d3

0ca4: e4 16     mov   a,$16
0ca6: eb 22     mov   y,$22
0ca8: f0 02     beq   $0cac
0caa: e4 15     mov   a,$15
0cac: 5f da 09  jmp   $09da

0caf: e4 23     mov   a,$23
0cb1: c5 5b 01  mov   $015b,a
0cb4: 5f 87 08  jmp   $0887

0cb7: e5 5b 01  mov   a,$015b
0cba: 5f da 09  jmp   $09da

0cbd: fa 23 19  mov   ($19),($23)
0cc0: 5f 87 08  jmp   $0887

0cc3: e4 19     mov   a,$19
0cc5: 5f da 09  jmp   $09da

0cc8: e8 00     mov   a,#$00
0cca: c4 07     mov   $07,a
0ccc: c4 08     mov   $08,a
0cce: 3f b0 0f  call  $0fb0
0cd1: 3f fa 08  call  $08fa
0cd4: 3f 63 09  call  $0963
0cd7: 5f d3 09  jmp   $09d3

0cda: fa 22 07  mov   ($07),($22)
0cdd: fa 23 08  mov   ($08),($23)
0ce0: 3f f2 0f  call  $0ff2
0ce3: b0 03     bcs   $0ce8
0ce5: 3f 63 09  call  $0963
0ce8: e8 00     mov   a,#$00
0cea: c4 f5     mov   $f5,a
0cec: 5f d3 09  jmp   $09d3

0cef: e8 00     mov   a,#$00
0cf1: c5 f1 00  mov   $00f1,a
0cf4: c5 fa 00  mov   $00fa,a
0cf7: c5 fb 00  mov   $00fb,a
0cfa: c5 fc 00  mov   $00fc,a
0cfd: c4 1c     mov   $1c,a
0cff: c4 1d     mov   $1d,a
0d01: c4 1e     mov   $1e,a
0d03: c4 1f     mov   $1f,a
0d05: 6f        ret

0d06: d4 1d     mov   $1d+x,a
0d08: f5 10 11  mov   a,$1110+x
0d0b: fd        mov   y,a
0d0c: 3f 1d 0d  call  $0d1d
0d0f: f4 1d     mov   a,$1d+x
0d11: d5 fa 00  mov   $00fa+x,a
0d14: dd        mov   a,y
0d15: 04 1c     or    a,$1c
0d17: c5 f1 00  mov   $00f1,a
0d1a: c4 1c     mov   $1c,a
0d1c: 6f        ret

0d1d: 48 ff     eor   a,#$ff
0d1f: 24 1c     and   a,$1c
0d21: c5 f1 00  mov   $00f1,a
0d24: c4 1c     mov   $1c,a
0d26: 6f        ret

0d27: 40        setp
0d28: 8d 18     mov   y,#$18
0d2a: cd 40     mov   x,#$40
0d2c: e8 00     mov   a,#$00
0d2e: af        mov   (x)+,a
0d2f: fe fd     dbnz  y,$0d2e
0d31: 8f 20 58  mov   $58,#$20
0d34: e8 e0     mov   a,#$e0
0d36: 8d 6c     mov   y,#$6c
0d38: 4f 0c     pcall $0c               ; set #$e0 to FLG (reset)
0d3a: 3f 06 0f  call  $0f06
0d3d: cd 07     mov   x,#$07
0d3f: e8 00     mov   a,#$00
0d41: 8d 01     mov   y,#$01
0d43: 4f 00     pcall $00               ; set #$00 to VOL(R)
0d45: 8d 00     mov   y,#$00
0d47: 4f 00     pcall $00               ; set #$00 to VOL(L)
0d49: 1d        dec   x
0d4a: 10 f5     bpl   $0d41
0d4c: e5 cb 07  mov   a,$07cb
0d4f: c5 59 01  mov   $0159,a
0d52: 8d 0c     mov   y,#$0c
0d54: 4f 0c     pcall $0c               ; set $07cb -> $0159 to MVOL(L)
0d56: e5 cc 07  mov   a,$07cc
0d59: c5 5a 01  mov   $015a,a
0d5c: 8d 1c     mov   y,#$1c
0d5e: 4f 0c     pcall $0c               ; set $07cc -> $015a to MVOL(R)
0d60: e8 00     mov   a,#$00
0d62: 8d 3d     mov   y,#$3d
0d64: 4f 0c     pcall $0c               ; set #$00 to NON
0d66: 8d 2d     mov   y,#$2d
0d68: 4f 0c     pcall $0c               ; set #$00 to PMON
0d6a: e8 ff     mov   a,#$ff
0d6c: 8d 5c     mov   y,#$5c
0d6e: 4f 0c     pcall $0c               ; set #$ff to KOF
0d70: 8d 0b     mov   y,#$0b
0d72: fe fe     dbnz  y,$0d72
0d74: e8 00     mov   a,#$00
0d76: 8d 5c     mov   y,#$5c
0d78: 4f 0c     pcall $0c               ; set #$00 to KOF
0d7a: e5 5b 01  mov   a,$015b
0d7d: 8d 5d     mov   y,#$5d
0d7f: 4f 0c     pcall $0c               ; set $015b to DIR
0d81: 20        clrp
0d82: 6f        ret

0d83: 40        setp
0d84: 3f ea 0d  call  $0dea
0d87: e4 58     mov   a,$58
0d89: 8d 6c     mov   y,#$6c
0d8b: 4f 0c     pcall $0c               ; set $(01)58 to FLG
0d8d: e4 41     mov   a,$41
0d8f: 48 ff     eor   a,#$ff
0d91: 24 4e     and   a,$4e
0d93: c4 5d     mov   $5d,a
0d95: e4 41     mov   a,$41
0d97: 24 4f     and   a,$4f
0d99: 04 5d     or    a,$5d
0d9b: 8d 3d     mov   y,#$3d
0d9d: 4f 0c     pcall $0c               ; set NON
0d9f: e4 41     mov   a,$41
0da1: 48 ff     eor   a,#$ff
0da3: 24 4a     and   a,$4a
0da5: c4 5d     mov   $5d,a
0da7: e4 41     mov   a,$41
0da9: 24 4b     and   a,$4b
0dab: 04 5d     or    a,$5d
0dad: 8d 4c     mov   y,#$4c
0daf: 4f 0c     pcall $0c               ; set KOL
0db1: 8f 00 4a  mov   $4a,#$00
0db4: 8f 00 4b  mov   $4b,#$00
0db7: 20        clrp
0db8: 6f        ret

0db9: 40        setp
0dba: 8f 00 5d  mov   $5d,#$00
0dbd: e4 41     mov   a,$41
0dbf: 48 ff     eor   a,#$ff
0dc1: 24 4c     and   a,$4c
0dc3: 2f 06     bra   $0dcb
0dc5: 40        setp
0dc6: 8f 01 5d  mov   $5d,#$01
0dc9: e4 4d     mov   a,$4d
0dcb: f0 1b     beq   $0de8
0dcd: c4 5e     mov   $5e,a
0dcf: cd 07     mov   x,#$07
0dd1: 0b 5e     asl   $5e
0dd3: 90 0c     bcc   $0de1
0dd5: e8 9f     mov   a,#$9f
0dd7: 8d 07     mov   y,#$07
0dd9: 4f 00     pcall $00               ; set #$9f to GAIN
0ddb: e8 00     mov   a,#$00
0ddd: 8d 05     mov   y,#$05
0ddf: 4f 00     pcall $00               ; set #$00 to ADSR(1)
0de1: 1d        dec   x
0de2: 10 ed     bpl   $0dd1
0de4: f8 5d     mov   x,$5d
0de6: d4 4c     mov   $4c+x,a
0de8: 20        clrp
0de9: 6f        ret

0dea: e4 5f     mov   a,$5f
0dec: 1c        asl   a
0ded: 5d        mov   x,a
0dee: 1f f1 0d  jmp   ($0df1+x)

0df1: dw $0dfd  ; 
0df3: dw $0e1e  ; 
0df5: dw $0eba  ; 
0df7: dw $0ebb  ; 
0df9: dw $0eba  ; 
0dfb: dw $0ed6  ; 

0dfd: e8 00     mov   a,#$00
0dff: c4 60     mov   $60,a
0e01: c4 50     mov   $50,a
0e03: c4 51     mov   $51,a
0e05: 8d 4d     mov   y,#$4d
0e07: 4f 0c     pcall $0c               ; set #$00 to EON
088d: 30 0a     bmi   $0899
0e09: c4 52     mov   $52,a
0e0b: 8d 2c     mov   y,#$2c
0e0d: 4f 0c     pcall $0c               ; set $(01)52 to EVOL(L)
0e0f: c4 53     mov   $53,a
0e11: 8d 3c     mov   y,#$3c
0e13: 4f 0c     pcall $0c               ; set $(01)53 to EVOL(R)
0e15: a2 58     set5  $58
0e17: e4 58     mov   a,$58
0e19: 8d 6c     mov   y,#$6c
0e1b: 5f 0c ff  jmp   $ff0c             ; set $(01)58 to FLG

0e1e: 8f 01 60  mov   $60,#$01
0e21: 8d 7d     mov   y,#$7d
0e23: 4f 1d     pcall $1d
0e25: 28 0f     and   a,#$0f
0e27: 64 55     cmp   a,$55
0e29: f0 36     beq   $0e61
0e2b: 48 ff     eor   a,#$ff
0e2d: f8 61     mov   x,$61
0e2f: 10 03     bpl   $0e34
0e31: 60        clrc
0e32: 84 61     adc   a,$61
0e34: c4 61     mov   $61,a
0e36: e8 00     mov   a,#$00
0e38: 8d 4d     mov   y,#$4d
0e3a: 4f 0c     pcall $0c               ; set #$00 to EON
0e3c: 8d 2c     mov   y,#$2c
0e3e: 4f 0c     pcall $0c               ; set #$4d to EVOL(L)
0e40: 8d 3c     mov   y,#$3c
0e42: 4f 0c     pcall $0c               ; set #$4d to EVOL(R)
0e44: 8d 0d     mov   y,#$0d
0e46: 4f 0c     pcall $0c               ; set #$4d to EFB
0e48: a2 58     set5  $58
0e4a: e4 58     mov   a,$58
0e4c: 8d 6c     mov   y,#$6c
0e4e: 4f 0c     pcall $0c               ; set $(01)58 to FLG
0e50: e5 55 01  mov   a,$0155
0e53: 8d 7d     mov   y,#$7d
0e55: 4f 0c     pcall $0c               ; set $0155 to EDL
0e57: 3f 7f 0e  call  $0e7f
0e5a: 3f 93 0e  call  $0e93
0e5d: 8f 02 5f  mov   $5f,#$02
0e60: 6f        ret

0e61: fa 56 5e  mov   ($5e),($56)
0e64: 3f 7f 0e  call  $0e7f
0e67: 64 5e     cmp   a,$5e
0e69: f0 04     beq   $0e6f
0e6b: e4 55     mov   a,$55
0e6d: 2f bc     bra   $0e2b
0e6f: b2 58     clr5  $58
0e71: e4 58     mov   a,$58
0e73: 8d 6c     mov   y,#$6c
0e75: 4f 0c     pcall $0c
0e77: 3f 93 0e  call  $0e93
0e7a: 8f 05 5f  mov   $5f,#$05
0e7d: 2f 57     bra   $0ed6
0e7f: e4 55     mov   a,$55
0e81: 1c        asl   a
0e82: 1c        asl   a
0e83: 1c        asl   a
0e84: c4 5d     mov   $5d,a
0e86: e5 19 00  mov   a,$0019
0e89: 80        setc
0e8a: a4 5d     sbc   a,$5d
0e8c: c4 56     mov   $56,a
0e8e: 8d 6d     mov   y,#$6d
0e90: 5f 0c ff  jmp   $ff0c             ; set $(01)56 to ESA

; set echo FIR filter A
0e93: e4 57     mov   a,$57             ; FIR index from $(01)57
0e95: 1c        asl   a
0e96: 1c        asl   a
0e97: 1c        asl   a
0e98: 8d 00     mov   y,#$00
0e9a: 20        clrp
0e9b: 7a 1a     addw  ya,$1a            ; add FIR table base
0e9d: 40        setp
0e9e: da 5d     movw  $5d,ya
0ea0: cd 07     mov   x,#$07
0ea2: 7d        mov   a,x
0ea3: fd        mov   y,a
0ea4: f7 5d     mov   a,($5d)+y
0ea6: 2d        push  a
0ea7: f5 b2 0e  mov   a,$0eb2+x
0eaa: fd        mov   y,a
0eab: ae        pop   a
0eac: 4f 0c     pcall $0c               ; set FIR
0eae: 1d        dec   x
0eaf: 10 f1     bpl   $0ea2
0eb1: 6f        ret

; echo FIR dsp regs
0eb2: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0eba: 6f        ret

0ebb: e4 60     mov   a,$60
0ebd: d0 06     bne   $0ec5
0ebf: 8f 00 5f  mov   $5f,#$00
0ec2: 5f fd 0d  jmp   $0dfd

0ec5: b2 58     clr5  $58
0ec7: e4 58     mov   a,$58
0ec9: 8d 6c     mov   y,#$6c
0ecb: 4f 0c     pcall $0c               ; set $(01)58 to FLG
0ecd: e4 55     mov   a,$55
0ecf: bc        inc   a
0ed0: c4 61     mov   $61,a
0ed2: 8f 04 5f  mov   $5f,#$04
0ed5: 6f        ret

0ed6: 8f 00 61  mov   $61,#$00
0ed9: e4 60     mov   a,$60
0edb: d0 06     bne   $0ee3
0edd: 8f 00 5f  mov   $5f,#$00
0ee0: 5f fd 0d  jmp   $0dfd

0ee3: e4 54     mov   a,$54
0ee5: 8d 0d     mov   y,#$0d
0ee7: 4f 0c     pcall $0c               ; set $(01)54 to EFB
0ee9: e4 52     mov   a,$52
0eeb: 8d 2c     mov   y,#$2c
0eed: 4f 0c     pcall $0c               ; set $(01)52 to EVOL(L)
0eef: e4 53     mov   a,$53
0ef1: 8d 3c     mov   y,#$3c
0ef3: 4f 0c     pcall $0c               ; set $(01)53 to EVOL(R)
0ef5: e4 41     mov   a,$41
0ef7: 48 ff     eor   a,#$ff
0ef9: 24 50     and   a,$50
0efb: c4 5d     mov   $5d,a
0efd: e4 51     mov   a,$51
0eff: 04 5d     or    a,$5d
0f01: 8d 4d     mov   y,#$4d
0f03: 5f 0c ff  jmp   $ff0c             ; set EON

0f06: 8f 00 60  mov   $60,#$00
0f09: 8d 7d     mov   y,#$7d
0f0b: 4f 1d     pcall $1d
0f0d: 68 01     cmp   a,#$01
0f0f: f0 06     beq   $0f17
0f11: 8f 01 55  mov   $55,#$01
0f14: 5f 2b 0e  jmp   $0e2b

0f17: e4 61     mov   a,$61
0f19: 30 09     bmi   $0f24
0f1b: 8f 00 61  mov   $61,#$00
0f1e: 8f 00 5f  mov   $5f,#$00
0f21: 5f fd 0d  jmp   $0dfd

0f24: 6f        ret

0f25: e8 01     mov   a,#$01
0f27: c5 5f 01  mov   $015f,a
0f2a: 6f        ret

0f2b: 40        setp
0f2c: 8f 01 55  mov   $55,#$01
0f2f: 8f 01 5f  mov   $5f,#$01
0f32: 3f ea 0d  call  $0dea
0f35: 8f 00 60  mov   $60,#$00
0f38: 20        clrp
0f39: 6f        ret

0f3a: e5 fd 00  mov   a,$00fd
0f3d: 28 0f     and   a,#$0f
0f3f: f0 1f     beq   $0f60
0f41: c4 0d     mov   $0d,a
0f43: e5 61 01  mov   a,$0161
0f46: f0 18     beq   $0f60
0f48: 30 09     bmi   $0f53
0f4a: 80        setc
0f4b: a4 0d     sbc   a,$0d
0f4d: f0 09     beq   $0f58
0f4f: 30 07     bmi   $0f58
0f51: 2f 0a     bra   $0f5d
0f53: 60        clrc
0f54: 84 0d     adc   a,$0d
0f56: 30 05     bmi   $0f5d
0f58: ac 5f 01  inc   $015f
0f5b: e8 00     mov   a,#$00
0f5d: c5 61 01  mov   $0161,a
0f60: 6f        ret

0f61: 40        setp
0f62: 28 1f     and   a,#$1f
0f64: c4 5d     mov   $5d,a
0f66: e4 58     mov   a,$58
0f68: 28 e0     and   a,#$e0
0f6a: 04 5d     or    a,$5d
0f6c: c4 58     mov   $58,a
0f6e: 20        clrp
0f6f: 6f        ret

0f70: 8f aa f4  mov   $f4,#$aa
0f73: 8f bb f5  mov   $f5,#$bb
0f76: 8d 64     mov   y,#$64
0f78: fe fe     dbnz  y,$0f78
0f7a: e8 cc     mov   a,#$cc
0f7c: 64 f4     cmp   a,$f4
0f7e: d0 fc     bne   $0f7c
0f80: 69 08 07  cmp   ($07),($08)
0f83: f0 1d     beq   $0fa2
0f85: 2f 21     bra   $0fa8
0f87: eb f4     mov   y,$f4
0f89: d0 fc     bne   $0f87
0f8b: 7e f4     cmp   y,$f4
0f8d: d0 0d     bne   $0f9c
0f8f: e4 f5     mov   a,$f5
0f91: cb f4     mov   $f4,y
0f93: d7 07     mov   ($07)+y,a
0f95: fc        inc   y
0f96: d0 f3     bne   $0f8b
0f98: ab 08     inc   $08
0f9a: 2f ef     bra   $0f8b
0f9c: 10 ed     bpl   $0f8b
0f9e: 7e f4     cmp   y,$f4
0fa0: 10 e9     bpl   $0f8b
0fa2: fa f6 07  mov   ($07),($f6)
0fa5: fa f7 08  mov   ($08),($f7)
0fa8: fa f4 f4  mov   ($f4),($f4)
0fab: e4 f5     mov   a,$f5
0fad: d0 d8     bne   $0f87
0faf: 6f        ret

0fb0: 8f aa f4  mov   $f4,#$aa
0fb3: 8f bb f5  mov   $f5,#$bb
0fb6: e8 cc     mov   a,#$cc
0fb8: 4f 31     pcall $31
0fba: 64 f4     cmp   a,$f4
0fbc: d0 fa     bne   $0fb8
0fbe: 69 08 07  cmp   ($07),($08)
0fc1: f0 21     beq   $0fe4
0fc3: 2f 25     bra   $0fea
0fc5: 4f 31     pcall $31
0fc7: eb f4     mov   y,$f4
0fc9: d0 fa     bne   $0fc5
0fcb: 7e f4     cmp   y,$f4
0fcd: d0 0f     bne   $0fde
0fcf: e4 f5     mov   a,$f5
0fd1: 4f 31     pcall $31
0fd3: cb f4     mov   $f4,y
0fd5: d7 07     mov   ($07)+y,a
0fd7: fc        inc   y
0fd8: d0 f1     bne   $0fcb
0fda: ab 08     inc   $08
0fdc: 2f ed     bra   $0fcb
0fde: 10 eb     bpl   $0fcb
0fe0: 7e f4     cmp   y,$f4
0fe2: 10 e7     bpl   $0fcb
0fe4: fa f6 07  mov   ($07),($f6)
0fe7: fa f7 08  mov   ($08),($f7)
0fea: fa f4 f4  mov   ($f4),($f4)
0fed: e4 f5     mov   a,$f5
0fef: d0 d4     bne   $0fc5
0ff1: 6f        ret

0ff2: e4 f5     mov   a,$f5
0ff4: 64 f5     cmp   a,$f5
0ff6: d0 fa     bne   $0ff2
0ff8: c4 0d     mov   $0d,a
0ffa: fd        mov   y,a
0ffb: f0 06     beq   $1003
0ffd: 68 7f     cmp   a,#$7f
0fff: d0 f1     bne   $0ff2
1001: 80        setc
1002: 6f        ret

1003: e4 f6     mov   a,$f6
1005: d7 07     mov   ($07)+y,a
1007: fc        inc   y
1008: e4 f7     mov   a,$f7
100a: fa 0d f5  mov   ($f5),($0d)
100d: d7 07     mov   ($07)+y,a
100f: fc        inc   y
1010: f0 10     beq   $1022
1012: e4 f5     mov   a,$f5
1014: 64 f5     cmp   a,$f5
1016: d0 fa     bne   $1012
1018: c4 0d     mov   $0d,a
101a: 7e 0d     cmp   y,$0d
101c: f0 e5     beq   $1003
101e: 10 f2     bpl   $1012
1020: 60        clrc
1021: 6f        ret

1022: ab 08     inc   $08
1024: 2f ec     bra   $1012
1026: 8d 04     mov   y,#$04
1028: cf        mul   ya
1029: 7a 17     addw  ya,$17
102b: 6f        ret

102c: 8d 03     mov   y,#$03
102e: f7 03     mov   a,($03)+y
1030: 8d 00     mov   y,#$00
1032: 5d        mov   x,a
1033: 10 01     bpl   $1036
1035: dc        dec   y
1036: 7a 05     addw  ya,$05
1038: 30 08     bmi   $1042
103a: da 05     movw  $05,ya
103c: dd        mov   a,y
103d: 60        clrc
103e: 84 00     adc   a,$00
1040: 2f 13     bra   $1055
1042: 48 ff     eor   a,#$ff
1044: c4 05     mov   $05,a
1046: dd        mov   a,y
1047: 48 ff     eor   a,#$ff
1049: c4 06     mov   $06,a
104b: 3a 05     incw  $05
104d: e4 00     mov   a,$00
104f: 80        setc
1050: a4 06     sbc   a,$06
1052: 8f ff 06  mov   $06,#$ff
1055: 10 02     bpl   $1059
1057: e8 00     mov   a,#$00
1059: 8d 00     mov   y,#$00
105b: cd 0c     mov   x,#$0c
105d: 9e        div   ya,x
105e: da 00     movw  $00,ya
1060: 68 05     cmp   a,#$05
1062: 90 03     bcc   $1067
1064: 8f 05 00  mov   $00,#$05
1067: f8 01     mov   x,$01
1069: e4 06     mov   a,$06
106b: 30 0b     bmi   $1078
106d: f5 c9 11  mov   a,$11c9+x
1070: eb 05     mov   y,$05
1072: cf        mul   ya
1073: dd        mov   a,y
1074: 8d 00     mov   y,#$00
1076: 2f 0e     bra   $1086
1078: f5 c8 11  mov   a,$11c8+x
107b: eb 05     mov   y,$05
107d: cf        mul   ya
107e: dd        mov   a,y
107f: f0 05     beq   $1086
1081: 48 ff     eor   a,#$ff
1083: bc        inc   a
1084: 8d ff     mov   y,#$ff
1086: da 05     movw  $05,ya
1088: f8 01     mov   x,$01
108a: f5 bc 11  mov   a,$11bc+x
108d: fd        mov   y,a
108e: f5 b0 11  mov   a,$11b0+x
1091: 7a 05     addw  ya,$05
1093: cb 06     mov   $06,y
1095: 0b 00     asl   $00
1097: f8 00     mov   x,$00
1099: 1f 9c 10  jmp   ($109c+x)

109c: dw $10a8  ; 
109e: dw $10ab  ; 
10a0: dw $10ae  ; 
10a1: dw $10b1  ; 
10a3: dw $10b4  ; 
10a5: dw $10b7  ; 

10a7: 4b 06     lsr   $06
10aa: 7c        ror   a
10ab: 4b 06     lsr   $06
10ad: 7c        ror   a
10ae: 4b 06     lsr   $06
10b0: 7c        ror   a
10b1: 4b 06     lsr   $06
10b3: 7c        ror   a
10b4: 4b 06     lsr   $06
10b6: 7c        ror   a
10b7: c4 05     mov   $05,a
10b9: 8d 00     mov   y,#$00
10bb: f7 03     mov   a,($03)+y
10bd: c4 01     mov   $01,a
10bf: fc        inc   y
10c0: f7 03     mov   a,($03)+y
10c2: c4 00     mov   $00,a
10c4: eb 06     mov   y,$06
10c6: cf        mul   ya
10c7: da 03     movw  $03,ya
10c9: e4 00     mov   a,$00
10cb: eb 05     mov   y,$05
10cd: cf        mul   ya
10ce: cb 00     mov   $00,y
10d0: e4 01     mov   a,$01
10d2: eb 05     mov   y,$05
10d4: cf        mul   ya
10d5: 7a 03     addw  ya,$03
10d7: da 03     movw  $03,ya
10d9: e4 01     mov   a,$01
10db: eb 06     mov   y,$06
10dd: cf        mul   ya
10de: fd        mov   y,a
10df: e4 00     mov   a,$00
10e1: 7a 03     addw  ya,$03
10e3: 6f        ret

10e4: ec cd 07  mov   y,$07cd
10e7: f0 04     beq   $10ed
10e9: fd        mov   y,a
10ea: f6 80 06  mov   a,$0680+y
10ed: 6f        ret

; calc L/R volume balance
; $00=pan, $01=channel volume
; return A=R volume, Y=L volume
10ee: e8 1e     mov   a,#$1e
10f0: 80        setc
10f1: a4 00     sbc   a,$00
10f3: 5d        mov   x,a
10f4: f5 d5 11  mov   a,$11d5+x
10f7: eb 01     mov   y,$01
10f9: cf        mul   ya
10fa: 6d        push  y
10fb: f8 00     mov   x,$00
10fd: f5 d5 11  mov   a,$11d5+x
1100: eb 01     mov   y,$01
1102: cf        mul   ya
1103: ae        pop   a
1104: 6f        ret

1105: 48 75     eor   a,#$75
1107: 64 73     cmp   a,$73
1109: 6f        ret

110a: 6e 20 53  dbnz  $20,$1160
110d: 6f        ret

110e: db $66,$74

1110: db $01,$02,$04,$08,$10,$20,$40,$80
1118: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo FIR table
1120: db $7f,$00,$00,$00,$00,$00,$00,$00
1128: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1130: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1138: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
1140: db $23,$ca,$f8,$2c,$eb,$08,$fb,$02
1148: db $04,$f9,$f8,$27,$27,$f8,$f9,$04
1150: db $14,$ff,$da,$1d,$1f,$e0,$ff,$0c
1158: db $1b,$db,$33,$f2,$fd,$0e,$fc,$fd
1160: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
1168: db $29,$b9,$fd,$24,$0d,$f7,$fa,$00
1170: db $35,$a8,$ff,$1a,$12,$04,$f8,$fb
1178: db $1c,$cc,$2f,$ec,$f8,$12,$00,$fa
1180: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
1188: db $fa,$00,$1c,$29,$29,$1c,$00,$fa
1190: db $fe,$fd,$16,$34,$34,$16,$fd,$fc
1198: db $fe,$fb,$10,$3a,$3a,$10,$fb,$fe
11a0: db $48,$26,$0a,$dd,$08,$0d,$f9,$00
11a8: db $38,$48,$14,$e6,$01,$0a,$fe,$fe

11b0: db $5f,$de,$65,$f4,$8c,$2c,$d6,$8b,$4a,$14,$ea,$cd
11bc: db $08,$08,$09,$09,$0a,$0b,$0b,$0c,$0d,$0e,$0e,$0f

11c8: db $79,$7f,$87,$8f,$98,$a0,$aa,$b5,$bf,$ca,$d6,$e3,$f1

; panpot - volume balance table
11d5: db $00,$07,$0d,$14,$1a,$21,$27,$2e
11dd: db $34,$3a,$40,$45,$4b,$50,$55,$5a
11e5: db $5e,$63,$67,$6b,$6e,$71,$74,$77
11ed: db $79,$7b,$7c,$7d,$7e,$7f,$7f

; tempo - bpm to time table (sort of)
11f4: db $00,$02,$04,$05,$07,$09,$0b,$0d
11fc: db $0e,$10,$12,$14,$16,$17,$19,$1b
1204: db $1d,$1f,$21,$22,$24,$26,$28,$2a
120c: db $2b,$2d

; read song header
120e: 8d 00     mov   y,#$00
1210: f7 13     mov   a,($13)+y
1212: c4 38     mov   $38,a
1214: fc        inc   y
1215: f7 13     mov   a,($13)+y
1217: c4 39     mov   $39,a             ; set seq header address to $38/9
1219: cd 07     mov   x,#$07
121b: e8 00     mov   a,#$00
121d: d4 a4     mov   $a4+x,a
121f: 1d        dec   x
1220: 10 fb     bpl   $121d
1222: 8f 00 83  mov   $83,#$00
1225: 8d 06     mov   y,#$06            ; skip 4 bytes
1227: f7 13     mov   a,($13)+y
1229: c4 03     mov   $03,a
122b: fc        inc   y
122c: f7 13     mov   a,($13)+y
122e: c4 04     mov   $04,a             ; set something to $03/4
1230: 8d 00     mov   y,#$00
1232: f7 03     mov   a,($03)+y
1234: c4 b5     mov   $b5,a
1236: 6f        ret

1237: 3f 74 12  call  $1274
123a: b0 37     bcs   $1273
123c: 3f 8a 12  call  $128a
123f: 53 b4 0c  bbc2  $b4,$124e
1242: e5 5f 01  mov   a,$015f
1245: 68 05     cmp   a,#$05
1247: d0 2a     bne   $1273
1249: 52 b4     clr2  $b4
124b: 5f f1 1a  jmp   $1af1

124e: 3f 70 14  call  $1470
1251: 8f 07 40  mov   $40,#$07
1254: f8 40     mov   x,$40
1256: f4 a4     mov   a,$a4+x
1258: 10 0f     bpl   $1269
125a: 3f 77 14  call  $1477
125d: 3f 1d 19  call  $191d
1260: 3f 7b 19  call  $197b
1263: 3f c3 19  call  $19c3
1266: 3f 90 1a  call  $1a90
1269: 8b 40     dec   $40
126b: 10 e7     bpl   $1254
126d: 43 b4 03  bbs2  $b4,$1273
1270: 5f f1 1a  jmp   $1af1

1273: 6f        ret

1274: e4 28     mov   a,$28
1276: 30 10     bmi   $1288
1278: e2 28     set7  $28
127a: 64 b5     cmp   a,$b5
127c: b0 0a     bcs   $1288
127e: 3f 25 13  call  $1325
1281: e8 ff     mov   a,#$ff
1283: c5 4c 01  mov   $014c,a
1286: 80        setc
1287: 6f        ret

1288: 60        clrc
1289: 6f        ret

128a: e4 2a     mov   a,$2a
128c: 8f 00 2a  mov   $2a,#$00
128f: 1c        asl   a
1290: 5d        mov   x,a
1291: 1f 94 12  jmp   ($1294+x)

1294: dw $12a0  ; 
1296: dw $12a1  ; 
1298: dw $12cf  ; 
129a: dw $12ef  ; 
129c: dw $12fa  ; 
129e: dw $130a  ; 
12a0: dw $8f6f  ; 
12a2: dw $0000  ; 
12a4: dw $07cd  ; 

12a6: e8 00     mov   a,#$00
12a8: d4 a4     mov   $a4+x,a
12aa: f5 10 11  mov   a,$1110+x
12ad: 25 41 01  and   a,$0141
12b0: d0 06     bne   $12b8
12b2: f5 10 11  mov   a,$1110+x
12b5: 0e 00 00  tset1 $0000
12b8: 1d        dec   x
12b9: 10 eb     bpl   $12a6
12bb: 8f 00 83  mov   $83,#$00
12be: e4 00     mov   a,$00
12c0: 8d 5c     mov   y,#$5c
12c2: 4f 0c     pcall $0c               ; set $00 to KOF
12c4: 8d 0b     mov   y,#$0b
12c6: fe fe     dbnz  y,$12c6
12c8: e8 00     mov   a,#$00
12ca: 8d 5c     mov   y,#$5c
12cc: 5f 0c ff  jmp   $ff0c             ; set #$00 to KOF

12cf: e4 2b     mov   a,$2b
12d1: c5 7a 02  mov   $027a,a
12d4: e8 80     mov   a,#$80
12d6: 4e 83 02  tclr1 $0283
12d9: 4e 84 02  tclr1 $0284
12dc: 4e 85 02  tclr1 $0285
12df: 4e 86 02  tclr1 $0286
12e2: 4e 87 02  tclr1 $0287
12e5: 4e 88 02  tclr1 $0288
12e8: 4e 89 02  tclr1 $0289
12eb: 4e 8a 02  tclr1 $028a
12ee: 6f        ret

12ef: e4 2b     mov   a,$2b
12f1: c5 6d 03  mov   $036d,a
12f4: e8 00     mov   a,#$00
12f6: c5 6e 03  mov   $036e,a
12f9: 6f        ret

12fa: cd 07     mov   x,#$07
12fc: 0b 2b     asl   $2b
12fe: 90 06     bcc   $1306
1300: f4 a4     mov   a,$a4+x
1302: 08 20     or    a,#$20
1304: d4 a4     mov   $a4+x,a
1306: 1d        dec   x
1307: 10 f3     bpl   $12fc
1309: 6f        ret

130a: cd 07     mov   x,#$07
130c: 0b 2b     asl   $2b
130e: 90 11     bcc   $1321
1310: fb a4     mov   y,$a4+x
1312: dd        mov   a,y
1313: 28 20     and   a,#$20
1315: f0 0a     beq   $1321
1317: dd        mov   a,y
1318: 28 df     and   a,#$df
131a: d4 a4     mov   $a4+x,a
131c: e8 01     mov   a,#$01
131e: d5 42 01  mov   $0142+x,a
1321: 1d        dec   x
1322: 10 e8     bpl   $130c
1324: 6f        ret

1325: 1c        asl   a
1326: fd        mov   y,a
1327: f7 38     mov   a,($38)+y
1329: c4 03     mov   $03,a
132b: fc        inc   y
132c: f7 38     mov   a,($38)+y
132e: c4 04     mov   $04,a             ; set seq header address $38/9 to $03/4
1330: 8d 00     mov   y,#$00
1332: f7 03     mov   a,($03)+y         ; bit flag, whether channel is used or not (1=active, bit X -> channel X)
1334: c4 00     mov   $00,a
1336: cd 00     mov   x,#$00            ; channel #
; repeat for each channels (X=0-7)
1338: e8 00     mov   a,#$00
133a: d4 a4     mov   $a4+x,a
133c: d4 ac     mov   $ac+x,a
133e: d5 42 01  mov   $0142+x,a
1341: 4b 00     lsr   $00
1343: 90 5d     bcc   $13a2
1345: fc        inc   y
1346: f7 03     mov   a,($03)+y         ; seq start address (lo)
1348: d5 01 02  mov   $0201+x,a
134b: d5 52 02  mov   $0252+x,a
134e: fc        inc   y
134f: f7 03     mov   a,($03)+y         ; seq start address (hi)
1351: d5 09 02  mov   $0209+x,a
1354: d5 5a 02  mov   $025a+x,a         ; default global loop point = song start
1357: e8 00     mov   a,#$00
1359: d5 6f 03  mov   $036f+x,a
135c: d5 39 02  mov   $0239+x,a
135f: d5 bc 02  mov   $02bc+x,a
1362: d5 05 03  mov   $0305+x,a
1365: d5 5d 03  mov   $035d+x,a
1368: d5 8b 02  mov   $028b+x,a
136b: d5 41 02  mov   $0241+x,a
136e: d5 11 02  mov   $0211+x,a
1371: d4 84     mov   $84+x,a
1373: d4 8c     mov   $8c+x,a
1375: d5 a4 02  mov   $02a4+x,a
1378: bc        inc   a
1379: d5 21 02  mov   $0221+x,a
137c: e8 02     mov   a,#$02
137e: d5 19 02  mov   $0219+x,a
1381: d5 f5 02  mov   $02f5+x,a
1384: e8 08     mov   a,#$08
1386: d5 31 02  mov   $0231+x,a
1389: e8 0f     mov   a,#$0f
138b: d5 83 02  mov   $0283+x,a
138e: d5 94 02  mov   $0294+x,a
1391: e8 78     mov   a,#$78
1393: d5 7b 02  mov   $027b+x,a
1396: d5 9c 02  mov   $029c+x,a
1399: e8 ff     mov   a,#$ff
139b: d5 62 02  mov   $0262+x,a
139e: e8 80     mov   a,#$80
13a0: d4 a4     mov   $a4+x,a
13a2: 3d        inc   x
13a3: c8 08     cmp   x,#$08
13a5: 90 91     bcc   $1338
; end repeat (for each channels)
13a7: 6d        push  y
13a8: e8 78     mov   a,#$78
13aa: c5 00 02  mov   $0200,a
13ad: 3f 34 09  call  $0934             ; set default tempo = 120
13b0: e8 02     mov   a,#$02
13b2: c4 b4     mov   $b4,a
13b4: 3f 59 09  call  $0959             ; set default timebase = 12 (48 >> 2)
13b7: e8 ff     mov   a,#$ff
13b9: c5 7a 02  mov   $027a,a
13bc: e8 00     mov   a,#$00
13be: c5 93 02  mov   $0293,a
13c1: c5 cc 02  mov   $02cc,a
13c4: c4 83     mov   $83,a
13c6: c5 49 02  mov   $0249,a
13c9: c5 6d 03  mov   $036d,a
13cc: 13 35 02  bbc0  $35,$13d1
13cf: 62 b4     set3  $b4
; read default table addresses from music structure (probably)
13d1: 8d 02     mov   y,#$02
13d3: f7 13     mov   a,($13)+y
13d5: c4 3a     mov   $3a,a
13d7: fc        inc   y
13d8: f7 13     mov   a,($13)+y
13da: c4 3b     mov   $3b,a             ; set instrument table address from offset 2/3
13dc: fc        inc   y
13dd: f7 13     mov   a,($13)+y
13df: c4 3c     mov   $3c,a
13e1: fc        inc   y
13e2: f7 13     mov   a,($13)+y
13e4: c4 3d     mov   $3d,a             ; set $3c/d from offset 4/5
13e6: 8d 07     mov   y,#$07
13e8: f7 13     mov   a,($13)+y
13ea: c4 3e     mov   $3e,a
13ec: fc        inc   y
13ed: f7 13     mov   a,($13)+y
13ef: c4 3f     mov   $3f,a             ; set $3e/f from offset 7/8 (why it isn't 6/7?)
; read more from seq header (repeat until 00 appears)
13f1: ee        pop   y
13f2: fc        inc   y
13f3: f7 03     mov   a,($03)+y         ; song extra header type (0-5)
13f5: fc        inc   y
13f6: 1c        asl   a
13f7: 5d        mov   x,a
13f8: 1f fb 13  jmp   ($13fb+x)

13fb: dw $146f  ; 00 - end of extra header
13fd: dw $1407  ; 01 - set timebase (1 byte)
13ff: dw $1418  ; 02 - instrument table (alternative?) (1+N byte)
1401: dw $1449  ; 03 - rhythm kit table (1+N byte)
1403: dw $1430  ; 04 - instrument table (1+4*N byte)
1405: dw $1456  ; 05 - (1+2*N byte)

; extra header 01 - set timebase (note length shift)
1407: f7 03     mov   a,($03)+y
1409: 28 03     and   a,#$03
140b: c4 00     mov   $00,a
140d: 38 fc b4  and   $b4,#$fc
1410: 09 00 b4  or    ($b4),($00)
1413: 3f 59 09  call  $0959
1416: 2f da     bra   $13f2
; extra header 02 - instrument table (alternative?)
1418: f7 03     mov   a,($03)+y         ; arg1 - size of table (in bytes)
141a: 5d        mov   x,a
141b: dd        mov   a,y
141c: bc        inc   a
141d: 8d 00     mov   y,#$00
141f: 7a 03     addw  ya,$03
1421: da 3a     movw  $3a,ya            ; set instrument table address to $3a/b
; $03 += x, next
1423: da 03     movw  $03,ya
1425: 8d 00     mov   y,#$00
1427: 7d        mov   a,x
1428: 7a 03     addw  ya,$03
142a: da 03     movw  $03,ya            ; $03 = $3a + arg1
142c: 8d ff     mov   y,#$ff
142e: 2f c2     bra   $13f2
; extra header 04 - instrument table
1430: f7 03     mov   a,($03)+y         ; arg1 - number of instruments
1432: 5d        mov   x,a
1433: dd        mov   a,y
1434: bc        inc   a
1435: 8d 00     mov   y,#$00
1437: 7a 03     addw  ya,$03
1439: da 3a     movw  $3a,ya            ; set instrument table address to $3a/b
143b: da 03     movw  $03,ya
143d: 8d 04     mov   y,#$04
143f: 7d        mov   a,x
1440: cf        mul   ya
1441: 7a 03     addw  ya,$03
1443: da 03     movw  $03,ya            ; skip table contents, (arg1 * 4) bytes
1445: 8d ff     mov   y,#$ff
1447: 2f a9     bra   $13f2
; extra header 03 - rhythm kit table
1449: f7 03     mov   a,($03)+y         ; arg1 - size of table (in bytes)
144b: 5d        mov   x,a
144c: dd        mov   a,y
144d: bc        inc   a
144e: 8d 00     mov   y,#$00
1450: 7a 03     addw  ya,$03
1452: da 3c     movw  $3c,ya            ; set rhythm kit table address to $3c/d
1454: 2f cd     bra   $1423             ; skip table contents, (arg1) bytes
; extra header 05
1456: f7 03     mov   a,($03)+y         ; arg1 - count of addresses in table
1458: 5d        mov   x,a
1459: dd        mov   a,y
145a: bc        inc   a
145b: 8d 00     mov   y,#$00
145d: 7a 03     addw  ya,$03
145f: da 3e     movw  $3e,ya            ; $3e = ($03 + offset Y) + 1
1461: da 03     movw  $03,ya
1463: 7d        mov   a,x
1464: 1c        asl   a
1465: 8d 00     mov   y,#$00
1467: 7a 03     addw  ya,$03            ; $03 = $3e + (arg1 * 2)
1469: da 03     movw  $03,ya
146b: 8d ff     mov   y,#$ff
146d: 2f 83     bra   $13f2
; extra header 00 - end of extra header
146f: 6f        ret

1470: e8 00     mov   a,#$00
1472: c4 81     mov   $81,a
1474: c4 82     mov   $82,a
1476: 6f        ret

1477: f8 40     mov   x,$40
1479: f5 21 02  mov   a,$0221+x
147c: 9c        dec   a
147d: f0 11     beq   $1490
147f: d5 21 02  mov   $0221+x,a
1482: 9c        dec   a
1483: d0 0a     bne   $148f
1485: f5 11 02  mov   a,$0211+x
1488: 30 05     bmi   $148f
148a: e8 00     mov   a,#$00
148c: d5 4a 02  mov   $024a+x,a
148f: 6f        ret

1490: f5 01 02  mov   a,$0201+x
1493: c4 03     mov   $03,a
1495: f5 09 02  mov   a,$0209+x
1498: c4 04     mov   $04,a             ; set vcmd ptr $0201+x/$0209+x to $03/4
149a: 2f 02     bra   $149e

; advance vcmd read ptr
149c: 3a 03     incw  $03
; vcmd d0, f2-fd - nop (dispatch next voice byte)
149e: 8d 00     mov   y,#$00
14a0: f7 03     mov   a,($03)+y
14a2: 3a 03     incw  $03
14a4: c4 00     mov   $00,a             ; save vcmd (or note byte) to $00
14a6: 68 d0     cmp   a,#$d0
14a8: 90 7b     bcc   $1525
; dispatch vcmd (d0-ff)
14aa: a8 d0     sbc   a,#$d0
14ac: 1c        asl   a
14ad: 5d        mov   x,a
14ae: 1f b1 14  jmp   ($14b1+x)

; vcmd dispatch table
14b1: dw $149e  ; d0 - nop
14b3: dw $1610  ; d1 - set tempo
14b5: dw $1620  ; d2 - set octave
14b7: dw $1630  ; d3 - increase octave
14b9: dw $1642  ; d4 - decrease octave
14bb: dw $1652  ; d5 - set quantize
14bd: dw $165c  ; d6 - set instrument
14bf: dw $166c  ; d7 - nop (2 bytes)
14c1: dw $1671  ; d8 - nop (2 bytes)
14c3: dw $1676  ; d9 - set volume
14c5: dw $1688  ; da - set panpot
14c7: dw $1692  ; db - set reverse phase
14c9: dw $16a5  ; dc - add volume
14cb: dw $16c7  ; dd - start loop
14cd: dw $16e6  ; de - end loop
14cf: dw $1709  ; df - call subroutine
14d1: dw $172b  ; e0 - goto
14d3: dw $1738  ; e1 - detune
14d5: dw $1742  ; e2 - set vibrato
14d7: dw $175f  ; e3 - set vibrato delay
14d9: dw $1773  ; e4 - set echo volume
14db: dw $1782  ; e5 - set echo delay, feedback, FIR
14dd: dw $179d  ; e6 - echo on
14df: dw $17a8  ; e7 - transpose (absolute)
14e1: dw $17b2  ; e8 - transpose (relative)
14e3: dw $17c0  ; e9 - pitch attack envelope on
14e5: dw $17eb  ; ea - pitch attack envelope off
14e7: dw $17f6  ; eb - set track loop position
14e8: dw $1805  ; ec - repeat from track loop position
14ea: dw $1814  ; ed - set track loop position (only work with the first call)
14ed: dw $182f  ; ee - set volume (from table)
14ef: dw $1843  ; ef - one-step pitch envelope?
14f1: dw $1854  ; f0 - (1 byte)
14f3: dw $185e  ; f1 - set portamento
14f5: dw $149e  ; f2 - nop
14f7: dw $149e  ; f3 - nop
14f9: dw $149e  ; f4 - nop
14fb: dw $149e  ; f5 - nop
14fd: dw $149e  ; f6 - nop
14ff: dw $149e  ; f7 - nop
1501: dw $149e  ; f8 - nop
1503: dw $149e  ; f9 - nop
1505: dw $149e  ; fa - nop
1507: dw $149e  ; fb - nop
1509: dw $149e  ; fc - nop
150b: dw $149e  ; fd - nop
150d: dw $1887  ; fe - sub command
150f: dw $1892  ; ff - end of track / end subroutine

; subcmd table (see vcmd fe)
1511: dw $18af  ; 00 - end of track
1513: dw $18b8  ; 01 - echo off
1515: dw $18c3  ; 02 - (0 byte)
1517: dw $18cc  ; 03 - rhythm channel on
1519: dw $18d7  ; 04 - rhythm channel off
151b: dw $18e2  ; 05 - set vibrato type 0
151d: dw $18e2  ; 06 - set vibrato type 1
151f: dw $18e2  ; 07 - set vibrato type 2
1521: dw $18ef  ; 08 - (0 byte)
1523: dw $1901  ; 09 - (0 byte)

; dispatch note (00-cf)
1525: f8 40     mov   x,$40
1527: e4 00     mov   a,$00
1529: 28 07     and   a,#$07            ; bit 0-2 (length)
152b: f0 1c     beq   $1549
; if length > 1, get actual length from table
152d: c4 01     mov   $01,a
152f: e4 b4     mov   a,$b4
1531: 28 03     and   a,#$03            ; index += ($b4 & 3)
1533: 60        clrc
1534: 84 01     adc   a,$01
1536: fd        mov   y,a
1537: f6 40 20  mov   a,$2040+y
153a: 68 01     cmp   a,#$01
153c: d0 11     bne   $154f
; if actual length == 1, correct it to be 1.5
153e: f4 a4     mov   a,$a4+x
1540: 48 01     eor   a,#$01
1542: d4 a4     mov   $a4+x,a           ; $a4+x ^= 1
1544: 28 01     and   a,#$01
1546: bc        inc   a                 ; length += 0.5
1547: 2f 06     bra   $154f
; if length == 0, get actual length from next byte
1549: 8d 00     mov   y,#$00
154b: f7 03     mov   a,($03)+y
154d: 3a 03     incw  $03
;
154f: d5 21 02  mov   $0221+x,a         ; set wait length (tick)
1552: 63 00 2b  bbs3  $00,$1580
; if bit 3 (tie) is not set, calc duration
; (if bit 3 (tie) is set, use full length)
1555: fd        mov   y,a
1556: f5 31 02  mov   a,$0231+x         ; quantize value Q (see vcmd d5)
1559: 10 04     bpl   $155f
155b: 28 7f     and   a,#$7f
155d: 2f 20     bra   $157f
155f: 68 09     cmp   a,#$09
1561: 90 11     bcc   $1574
; if Q>8, set duration to (full length - (Q - 8))) (MML @q)
1563: a8 08     sbc   a,#$08
1565: c4 01     mov   $01,a
1567: f5 21 02  mov   a,$0221+x
156a: a4 01     sbc   a,$01
156c: f0 02     beq   $1570
156e: b0 0f     bcs   $157f
1570: e8 01     mov   a,#$01
1572: 2f 0b     bra   $157f
; if Q=0~8, set duration to Q/8 of full length (MML q)
1574: cf        mul   ya
1575: cd 08     mov   x,#$08
1577: 9e        div   ya,x
1578: ad 00     cmp   y,#$00
157a: f0 01     beq   $157d
157c: bc        inc   a
157d: f8 40     mov   x,$40
157f: 9c        dec   a
;
1580: d5 29 02  mov   $0229+x,a         ; set duration to $0229+x
1583: f5 11 02  mov   a,$0211+x
1586: c4 02     mov   $02,a
1588: e4 00     mov   a,$00
158a: 28 f0     and   a,#$f0
158c: d0 12     bne   $15a0
; if bit 4-7 == 0, rest
158e: e4 02     mov   a,$02
1590: 28 7f     and   a,#$7f
1592: 73 00 02  bbc3  $00,$1597
1595: 08 80     or    a,#$80
1597: d5 11 02  mov   $0211+x,a
159a: f4 a4     mov   a,$a4+x
159c: 08 10     or    a,#$10
159e: 2f 19     bra   $15b9
; if bit 4-7 != 0, note
15a0: 9f        xcn   a                 ; bit 4-7 (scaled pitch)
15a1: 9c        dec   a                 ; 1,2,3...12 => c,c+,d...b
15a2: c4 01     mov   $01,a
15a4: f5 19 02  mov   a,$0219+x
15a7: 8d 0c     mov   y,#$0c
15a9: cf        mul   ya
15aa: 60        clrc
15ab: 84 01     adc   a,$01             ; note number (octave corrected, 0-71)
15ad: 73 00 02  bbc3  $00,$15b2
15b0: 08 80     or    a,#$80            ; set bit 7, if note bit 3 (tie) is set
15b2: d5 11 02  mov   $0211+x,a         ; set note number to $0211+x
15b5: f4 a4     mov   a,$a4+x
15b7: 28 ef     and   a,#$ef
15b9: d4 a4     mov   $a4+x,a
15bb: 28 18     and   a,#$18
15bd: 68 08     cmp   a,#$08
15bf: d0 2d     bne   $15ee
; rhythm channel
15c1: f5 11 02  mov   a,$0211+x
15c4: 1c        asl   a
15c5: 1c        asl   a
15c6: fd        mov   y,a               ; y = note number * 4
15c7: f7 3c     mov   a,($3c)+y
15c9: 75 62 02  cmp   a,$0262+x
15cc: f0 09     beq   $15d7
15ce: d5 62 02  mov   $0262+x,a         ; instrument #
15d1: f4 a4     mov   a,$a4+x
15d3: 08 04     or    a,#$04
15d5: d4 a4     mov   $a4+x,a
15d7: fc        inc   y
15d8: f7 3c     mov   a,($3c)+y
15da: 73 00 02  bbc3  $00,$15df
15dd: 08 80     or    a,#$80
15df: d5 11 02  mov   $0211+x,a         ; pitch (note number)
15e2: fc        inc   y
15e3: f7 3c     mov   a,($3c)+y
15e5: d5 7b 02  mov   $027b+x,a         ; volume
15e8: fc        inc   y
15e9: f7 3c     mov   a,($3c)+y
15eb: d5 83 02  mov   $0283+x,a         ; panpot
;
15ee: 38 f0 00  and   $00,#$f0
15f1: d0 04     bne   $15f7
15f3: e8 04     mov   a,#$04
15f5: 2f 05     bra   $15fc
15f7: e3 02 05  bbs7  $02,$15ff
15fa: e8 01     mov   a,#$01
15fc: d5 4a 02  mov   $024a+x,a
15ff: e4 03     mov   a,$03
1601: d5 01 02  mov   $0201+x,a
1604: e4 04     mov   a,$04
1606: d5 09 02  mov   $0209+x,a
1609: f4 a4     mov   a,$a4+x
160b: 08 02     or    a,#$02
160d: d4 a4     mov   $a4+x,a
160f: 6f        ret

; vcmd d1 - set tempo
1610: f7 03     mov   a,($03)+y
1612: 65 00 02  cmp   a,$0200
1615: f0 06     beq   $161d
1617: c5 00 02  mov   $0200,a
161a: 3f 34 09  call  $0934
161d: 5f 9c 14  jmp   $149c

; vcmd d2 - set octave
1620: f8 40     mov   x,$40
1622: f7 03     mov   a,($03)+y         ; arg1 - octave
1624: 68 05     cmp   a,#$05
1626: 90 02     bcc   $162a
1628: e8 05     mov   a,#$05            ; arg1 = min(arg1, 5)
162a: d5 19 02  mov   $0219+x,a
162d: 5f 9c 14  jmp   $149c

; vcmd d3 - increase octave
1630: f8 40     mov   x,$40
1632: f5 19 02  mov   a,$0219+x
1635: bc        inc   a
1636: 68 05     cmp   a,#$05
1638: 90 02     bcc   $163c
163a: e8 05     mov   a,#$05
163c: d5 19 02  mov   $0219+x,a
163f: 5f 9e 14  jmp   $149e

; vcmd d4 - decrease octave
1642: f8 40     mov   x,$40
1644: f5 19 02  mov   a,$0219+x
1647: 9c        dec   a
1648: 10 02     bpl   $164c
164a: e8 00     mov   a,#$00
164c: d5 19 02  mov   $0219+x,a
164f: 5f 9e 14  jmp   $149e

; vcmd d5 - set quantize
1652: f8 40     mov   x,$40
1654: f7 03     mov   a,($03)+y
1656: d5 31 02  mov   $0231+x,a
1659: 5f 9c 14  jmp   $149c

; vcmd d6 - set instrument
165c: f8 40     mov   x,$40
165e: f7 03     mov   a,($03)+y
1660: d5 62 02  mov   $0262+x,a
1663: f4 a4     mov   a,$a4+x
1665: 08 04     or    a,#$04
1667: d4 a4     mov   $a4+x,a
1669: 5f 9c 14  jmp   $149c

; vcmd d7 - nop (2 bytes)
166c: 3a 03     incw  $03
166e: 5f 9c 14  jmp   $149c

; vcmd d8 - nop (2 bytes)
1671: 3a 03     incw  $03
1673: 5f 9c 14  jmp   $149c

; vcmd d9 - set volume
1676: f8 40     mov   x,$40
1678: f7 03     mov   a,($03)+y
167a: d5 7b 02  mov   $027b+x,a
167d: f5 83 02  mov   a,$0283+x
1680: 28 7f     and   a,#$7f
1682: d5 83 02  mov   $0283+x,a
1685: 5f 9c 14  jmp   $149c

; vcmd da - set panpot
1688: f8 40     mov   x,$40
168a: f7 03     mov   a,($03)+y
168c: d5 83 02  mov   $0283+x,a
168f: 5f 9c 14  jmp   $149c

; vcmd db - set reverse phase
1692: f8 40     mov   x,$40
1694: f7 03     mov   a,($03)+y
1696: 28 03     and   a,#$03
1698: c4 00     mov   $00,a
169a: f4 ac     mov   a,$ac+x
169c: 28 fc     and   a,#$fc
169e: 04 00     or    a,$00
16a0: d4 ac     mov   $ac+x,a
16a2: 5f 9c 14  jmp   $149c

; vcmd dc - add volume
16a5: f8 40     mov   x,$40
16a7: f7 03     mov   a,($03)+y
16a9: 10 01     bpl   $16ac
16ab: dc        dec   y
16ac: da 05     movw  $05,ya
16ae: 8d 00     mov   y,#$00
16b0: f5 7b 02  mov   a,$027b+x
16b3: 7a 05     addw  ya,$05
16b5: 10 04     bpl   $16bb
16b7: e8 00     mov   a,#$00
16b9: 2f 06     bra   $16c1
16bb: ad 00     cmp   y,#$00
16bd: f0 02     beq   $16c1
16bf: e8 ff     mov   a,#$ff
16c1: d5 7b 02  mov   $027b+x,a
16c4: 5f 7d 16  jmp   $167d

; vcmd dd - start loop
16c7: f8 40     mov   x,$40
16c9: 3f 0e 19  call  $190e             ; get call stack
16cc: e4 03     mov   a,$03
16ce: d7 05     mov   ($05)+y,a
16d0: fc        inc   y
16d1: e4 04     mov   a,$04
16d3: d7 05     mov   ($05)+y,a         ; push return address
16d5: fc        inc   y
16d6: cd 00     mov   x,#$00
16d8: e7 03     mov   a,($03+x)
16da: d7 05     mov   ($05)+y,a         ; push repeat count (arg1, 0 means 256)
16dc: fc        inc   y
16dd: dd        mov   a,y
16de: f8 40     mov   x,$40
16e0: d5 6f 03  mov   $036f+x,a         ; update stack pointer
16e3: 5f 9c 14  jmp   $149c

; vcmd de - end loop
16e6: f8 40     mov   x,$40
16e8: 3f 0e 19  call  $190e             ; get call stack
16eb: dc        dec   y
16ec: f7 05     mov   a,($05)+y
16ee: 9c        dec   a                 ; decrease loop count
16ef: f0 0f     beq   $1700
; repeat again
16f1: d7 05     mov   ($05)+y,a
16f3: dc        dec   y
16f4: f7 05     mov   a,($05)+y
16f6: c4 04     mov   $04,a
16f8: dc        dec   y
16f9: f7 05     mov   a,($05)+y
16fb: c4 03     mov   $03,a
16fd: 5f 9c 14  jmp   $149c
; repeat end
1700: dc        dec   y
1701: dc        dec   y
1702: dd        mov   a,y
1703: d5 6f 03  mov   $036f+x,a
1706: 5f 9e 14  jmp   $149e

; vcmd df - call subroutine
1709: f8 40     mov   x,$40
170b: 3f 0e 19  call  $190e             ; get call stack
170e: e4 03     mov   a,$03
1710: d7 05     mov   ($05)+y,a
1712: fc        inc   y
1713: e4 04     mov   a,$04
1715: d7 05     mov   ($05)+y,a         ; push return address
1717: fc        inc   y
1718: dd        mov   a,y
1719: d5 6f 03  mov   $036f+x,a         ; update stack pointer
171c: 8d 00     mov   y,#$00
171e: f7 03     mov   a,($03)+y
1720: 5d        mov   x,a
1721: fc        inc   y
1722: f7 03     mov   a,($03)+y
1724: c4 04     mov   $04,a
1726: d8 03     mov   $03,x             ; jump to arg1/2
1728: 5f 9e 14  jmp   $149e

; vcmd e0 - goto
172b: f7 03     mov   a,($03)+y
172d: 5d        mov   x,a
172e: fc        inc   y
172f: f7 03     mov   a,($03)+y
1731: c4 04     mov   $04,a
1733: d8 03     mov   $03,x
1735: 5f 9e 14  jmp   $149e

; vcmd e1 - detune
1738: f8 40     mov   x,$40
173a: f7 03     mov   a,($03)+y
173c: d5 8b 02  mov   $028b+x,a
173f: 5f 9c 14  jmp   $149c

; vcmd e2 - set vibrato
1742: f8 40     mov   x,$40
1744: f7 03     mov   a,($03)+y
1746: 28 7f     and   a,#$7f
1748: f0 0d     beq   $1757
174a: d5 94 02  mov   $0294+x,a         ; arg1 - vibrato rate
174d: 3a 03     incw  $03
174f: f7 03     mov   a,($03)+y
1751: d5 9c 02  mov   $029c+x,a         ; arg2 - vibrato depth
1754: 5f 9c 14  jmp   $149c
; if arg1 == 0, set depth = 0
1757: d5 9c 02  mov   $029c+x,a
175a: 3a 03     incw  $03
175c: 5f 9c 14  jmp   $149c

; vcmd e3 - set vibrato delay
175f: f8 40     mov   x,$40
1761: f7 03     mov   a,($03)+y
1763: d0 08     bne   $176d
1765: f5 10 11  mov   a,$1110+x
1768: 4e 93 02  tclr1 $0293
176b: e8 00     mov   a,#$00
176d: d5 bc 02  mov   $02bc+x,a         ; arg1 - vibrato delay (tick?)
1770: 5f 9c 14  jmp   $149c

; vcmd e4 - set echo volume
1773: f7 03     mov   a,($03)+y
1775: c5 52 01  mov   $0152,a           ; arg1 - echo volume L
1778: 3a 03     incw  $03
177a: f7 03     mov   a,($03)+y
177c: c5 53 01  mov   $0153,a           ; arg2 - echo volume R
177f: 5f 9c 14  jmp   $149c

; vcmd e5 - set echo delay, feedback, FIR
1782: f7 03     mov   a,($03)+y
1784: c5 55 01  mov   $0155,a           ; arg1 - echo delay
1787: 3a 03     incw  $03
1789: f7 03     mov   a,($03)+y
178b: c5 54 01  mov   $0154,a           ; arg2 - echo feedback
178e: 3a 03     incw  $03
1790: f7 03     mov   a,($03)+y
1792: c5 57 01  mov   $0157,a           ; arg3 - echo FIR index
1795: 3f 25 0f  call  $0f25
1798: 42 b4     set2  $b4
179a: 5f 9c 14  jmp   $149c

; vcmd e6 - echo on
179d: f8 40     mov   x,$40
179f: f5 10 11  mov   a,$1110+x
17a2: 0e 83 00  tset1 $0083
17a5: 5f 9e 14  jmp   $149e

; vcmd e7 - transpose (absolute)
17a8: f8 40     mov   x,$40
17aa: f7 03     mov   a,($03)+y
17ac: d5 41 02  mov   $0241+x,a
17af: 5f 9c 14  jmp   $149c

; vcmd e8 - transpose (relative)
17b2: f8 40     mov   x,$40
17b4: f5 41 02  mov   a,$0241+x
17b7: 60        clrc
17b8: 97 03     adc   a,($03)+y
17ba: d5 41 02  mov   $0241+x,a
17bd: 5f 9c 14  jmp   $149c

; vcmd e9 - pitch attack envelope on
17c0: f8 40     mov   x,$40
17c2: f7 03     mov   a,($03)+y
17c4: 28 7f     and   a,#$7f
17c6: f0 1c     beq   $17e4
; if (arg1 != 0), enable pitch attack envelope
17c8: d5 cd 02  mov   $02cd+x,a         ; arg1 = pitch attack speed
17cb: 3a 03     incw  $03
17cd: f7 03     mov   a,($03)+y
17cf: f0 15     beq   $17e6
17d1: d5 d5 02  mov   $02d5+x,a         ; arg2 = detune amount (unsigned)
17d4: 3a 03     incw  $03
17d6: f7 03     mov   a,($03)+y
17d8: d5 dd 02  mov   $02dd+x,a         ; arg3 = direction (0: down, otherwise: up)
17db: f4 ac     mov   a,$ac+x
17dd: 08 10     or    a,#$10
17df: d4 ac     mov   $ac+x,a
17e1: 5f 9c 14  jmp   $149c
; if (arg1 == 0), do nothing
17e4: 3a 03     incw  $03
17e6: 3a 03     incw  $03
17e8: 5f 9c 14  jmp   $149c

; vcmd ea - pitch attack envelope off
17eb: f8 40     mov   x,$40
17ed: f4 ac     mov   a,$ac+x
17ef: 28 ef     and   a,#$ef
17f1: d4 ac     mov   $ac+x,a
17f3: 5f 9e 14  jmp   $149e

; vcmd eb - set track loop position
17f6: f8 40     mov   x,$40
17f8: e4 03     mov   a,$03
17fa: d5 52 02  mov   $0252+x,a
17fd: e4 04     mov   a,$04
17ff: d5 5a 02  mov   $025a+x,a
1802: 5f 9e 14  jmp   $149e

; vcmd ec - repeat from track loop position
1805: f8 40     mov   x,$40
1807: f5 52 02  mov   a,$0252+x
180a: c4 03     mov   $03,a
180c: f5 5a 02  mov   a,$025a+x
180f: c4 04     mov   $04,a
1811: 5f 9e 14  jmp   $149e

; vcmd ed - set track loop position (only work with the first call)
1814: f8 40     mov   x,$40
1816: f4 ac     mov   a,$ac+x
1818: 28 20     and   a,#$20
181a: d0 10     bne   $182c
181c: f4 ac     mov   a,$ac+x
181e: 08 20     or    a,#$20
1820: d4 ac     mov   $ac+x,a
1822: f5 52 02  mov   a,$0252+x
1825: c4 03     mov   $03,a
1827: f5 5a 02  mov   a,$025a+x
182a: c4 04     mov   $04,a
182c: 5f 9e 14  jmp   $149e

; vcmd ee - set volume (from table)
182f: f7 03     mov   a,($03)+y
1831: 68 5a     cmp   a,#$5a
1833: 90 02     bcc   $1837
1835: e8 5a     mov   a,#$5a            ; arg1 = min(arg1, 0x5a)
1837: 5d        mov   x,a
1838: f5 49 20  mov   a,$2049+x         ; get volume from table
183b: f8 40     mov   x,$40
183d: d5 7b 02  mov   $027b+x,a
1840: 5f 7d 16  jmp   $167d

; vcmd ef - one-step pitch envelope?
1843: f7 03     mov   a,($03)+y
1845: f8 40     mov   x,$40
1847: d5 fd 02  mov   $02fd+x,a         ; arg1
184a: 3a 03     incw  $03
184c: f7 03     mov   a,($03)+y
184e: d5 05 03  mov   $0305+x,a         ; arg2
1851: 5f 9c 14  jmp   $149c

; vcmd f0
1854: f8 40     mov   x,$40
1856: f7 03     mov   a,($03)+y
1858: d5 f5 02  mov   $02f5+x,a
185b: 5f 9c 14  jmp   $149c

; vcmd f1 - set portamento
185e: f8 40     mov   x,$40
1860: f7 03     mov   a,($03)+y
1862: f0 18     beq   $187c
; if (arg1 != 0), portamento on
1864: bc        inc   a
1865: d5 fd 02  mov   $02fd+x,a         ; arg1 - portamento speed (higher is faster)
1868: f4 ac     mov   a,$ac+x
186a: 08 40     or    a,#$40
186c: d4 ac     mov   $ac+x,a
186e: e8 00     mov   a,#$00
1870: d4 94     mov   $94+x,a
1872: d4 9c     mov   $9c+x,a
1874: d5 05 03  mov   $0305+x,a
1877: 3a 03     incw  $03               ; arg2 - no effect? usually 0
1879: 5f 9c 14  jmp   $149c
; if (arg1 == 0), portamento off
187c: f4 ac     mov   a,$ac+x
187e: 28 bf     and   a,#$bf
1880: d4 ac     mov   $ac+x,a
1882: 3a 03     incw  $03
1884: 5f 9c 14  jmp   $149c

; vcmd fe - sub command
1887: f7 03     mov   a,($03)+y         ; arg1 - subcmd xx (00-09)
1889: c4 00     mov   $00,a
188b: 3a 03     incw  $03
188d: 1c        asl   a
188e: 5d        mov   x,a
188f: 1f 11 15  jmp   ($1511+x)

; vcmd ff - end of track / end subroutine
1892: f8 40     mov   x,$40
1894: f5 6f 03  mov   a,$036f+x         ; stack pointer
1897: f0 16     beq   $18af
; end subroutine
1899: 3f 0e 19  call  $190e             ; get call stack
189c: dc        dec   y
189d: f7 05     mov   a,($05)+y
189f: c4 04     mov   $04,a
18a1: dc        dec   y
18a2: f7 05     mov   a,($05)+y
18a4: c4 03     mov   $03,a             ; pop return address
18a6: dd        mov   a,y
18a7: d5 6f 03  mov   $036f+x,a         ; update stack pointer
18aa: 3a 03     incw  $03
18ac: 5f 9c 14  jmp   $149c
; subcmd 00 - end of track
18af: f8 40     mov   x,$40
18b1: f4 a4     mov   a,$a4+x
18b3: 28 7f     and   a,#$7f
18b5: d4 a4     mov   $a4+x,a
18b7: 6f        ret

; subcmd 01 - echo off
18b8: f8 40     mov   x,$40
18ba: f5 10 11  mov   a,$1110+x
18bd: 4e 83 00  tclr1 $0083
18c0: 5f 9e 14  jmp   $149e

; subcmd 02
18c3: 8f 00 83  mov   $83,#$00
18c6: 3f 2b 0f  call  $0f2b
18c9: 5f 9e 14  jmp   $149e

; subcmd 03 - rhythm channel on
18cc: f8 40     mov   x,$40
18ce: f4 a4     mov   a,$a4+x
18d0: 08 08     or    a,#$08
18d2: d4 a4     mov   $a4+x,a
18d4: 5f 9e 14  jmp   $149e

; subcmd 04 - rhythm channel off
18d7: f8 40     mov   x,$40
18d9: f4 a4     mov   a,$a4+x
18db: 28 f7     and   a,#$f7
18dd: d4 a4     mov   $a4+x,a
18df: 5f 9e 14  jmp   $149e

; subcmd 05,06,07 - set vibrato type
18e2: e4 00     mov   a,$00
18e4: 80        setc
18e5: a8 05     sbc   a,#$05
18e7: f8 40     mov   x,$40
18e9: d5 a4 02  mov   $02a4+x,a
18ec: 5f 9e 14  jmp   $149e

; subcmd 08
18ef: f8 40     mov   x,$40
18f1: f5 5d 03  mov   a,$035d+x
18f4: 48 01     eor   a,#$01
18f6: d5 5d 03  mov   $035d+x,a
18f9: f0 03     beq   $18fe
18fb: 3f 94 1e  call  $1e94
18fe: 5f 9e 14  jmp   $149e

; subcmd 09
1901: f8 40     mov   x,$40
1903: f5 5d 03  mov   a,$035d+x
1906: 48 02     eor   a,#$02
1908: d5 5d 03  mov   $035d+x,a
190b: 5f 9e 14  jmp   $149e

; get vcmd subroutine stack
190e: f5 31 20  mov   a,$2031+x
1911: c4 05     mov   $05,a
1913: f5 39 20  mov   a,$2039+x
1916: c4 06     mov   $06,a             ; get call stack (return address table) address to $05/6
1918: f5 6f 03  mov   a,$036f+x
191b: fd        mov   y,a               ; get stack pointer to Y
191c: 6f        ret

191d: f8 40     mov   x,$40
191f: f4 a4     mov   a,$a4+x
1921: 28 04     and   a,#$04
1923: f0 33     beq   $1958
1925: f5 62 02  mov   a,$0262+x         ; instrument #
1928: 8d 04     mov   y,#$04
192a: cf        mul   ya
192b: 7a 3a     addw  ya,$3a            ; add instrument table base
192d: da 03     movw  $03,ya
192f: 8d 03     mov   y,#$03
1931: f7 03     mov   a,($03)+y
1933: 30 08     bmi   $193d
1935: dc        dec   y
1936: f7 03     mov   a,($03)+y
1938: dc        dec   y
1939: 17 03     or    a,($03)+y
193b: f0 1c     beq   $1959
193d: d4 79     mov   $79+x,a           ; GAIN
193f: dc        dec   y
1940: f7 03     mov   a,($03)+y
1942: d4 71     mov   $71+x,a           ; ADSR(2)
1944: dc        dec   y
1945: f7 03     mov   a,($03)+y
1947: d4 69     mov   $69+x,a           ; ADSR(1)
1949: dc        dec   y
194a: f7 03     mov   a,($03)+y
194c: d4 61     mov   $61+x,a           ; SRCN
194e: 3f 26 10  call  $1026
1951: d5 6a 02  mov   $026a+x,a
1954: dd        mov   a,y
1955: d5 72 02  mov   $0272+x,a
1958: 6f        ret
; if ADSR == 0
1959: 8d 03     mov   y,#$03
195b: f7 03     mov   a,($03)+y
195d: 1c        asl   a
195e: 1c        asl   a
195f: fd        mov   y,a
1960: f6 80 07  mov   a,$0780+y
1963: d4 61     mov   $61+x,a           ; SRCN
1965: fc        inc   y
1966: f6 80 07  mov   a,$0780+y
1969: d4 69     mov   $69+x,a           ; ADSR(1)
196b: fc        inc   y
196c: f6 80 07  mov   a,$0780+y
196f: d4 71     mov   $71+x,a           ; ADSR(2)
1971: fc        inc   y
1972: f6 80 07  mov   a,$0780+y
1975: d4 79     mov   $79+x,a           ; GAIN
1977: f4 61     mov   a,$61+x
1979: 2f d3     bra   $194e
197b: f8 40     mov   x,$40
197d: f5 83 02  mov   a,$0283+x
1980: 30 40     bmi   $19c2
; if panpot >= 0, calc volume
1982: 73 b4 02  bbc3  $b4,$1987
1985: e8 0f     mov   a,#$0f            ; set pan = center, if (($b4 & 8) != 0)
1987: c4 00     mov   $00,a
1989: f5 7b 02  mov   a,$027b+x
198c: c4 01     mov   $01,a
198e: 3f ee 10  call  $10ee             ; calc L/R volume
1991: cb 04     mov   $04,y
1993: ec 7a 02  mov   y,$027a
1996: cf        mul   ya                ; R volume * master volume
1997: cb 03     mov   $03,y
1999: e4 04     mov   a,$04
199b: ec 7a 02  mov   y,$027a
199e: cf        mul   ya                ; L volume * master volume
199f: cb 04     mov   $04,y
19a1: f8 40     mov   x,$40
19a3: 63 b4 16  bbs3  $b4,$19bc         ; can negate volume (reverse phase), if (($b4 & 8) == 0)
19a6: f4 ac     mov   a,$ac+x
19a8: 28 01     and   a,#$01
19aa: f0 05     beq   $19b1
19ac: 58 ff 03  eor   $03,#$ff
19af: ab 03     inc   $03               ; negate R volume, if ((($ac+x) & 1) != 0)
19b1: f4 ac     mov   a,$ac+x
19b3: 28 02     and   a,#$02
19b5: f0 05     beq   $19bc
19b7: 58 ff 04  eor   $04,#$ff
19ba: ab 04     inc   $04               ; negate L volume, if ((($ac+x) & 2) != 0)
19bc: ba 03     movw  ya,$03
19be: d4 41     mov   $41+x,a           ; set final R volume
19c0: db 49     mov   $49+x,y           ; set final L volume
19c2: 6f        ret

19c3: f8 40     mov   x,$40
19c5: f4 a4     mov   a,$a4+x
19c7: 28 02     and   a,#$02
19c9: f0 74     beq   $1a3f
19cb: f8 40     mov   x,$40
19cd: f4 ac     mov   a,$ac+x
19cf: 28 40     and   a,#$40
19d1: f0 0c     beq   $19df
19d3: f4 94     mov   a,$94+x
19d5: d5 0d 03  mov   $030d+x,a
19d8: f4 9c     mov   a,$9c+x
19da: d5 15 03  mov   $0315+x,a
19dd: 2f 0a     bra   $19e9
19df: f5 5d 03  mov   a,$035d+x
19e2: 28 02     and   a,#$02
19e4: f0 03     beq   $19e9
19e6: 3f 94 1e  call  $1e94
19e9: f4 ac     mov   a,$ac+x
19eb: 28 10     and   a,#$10
19ed: f0 0a     beq   $19f9
19ef: f5 4a 02  mov   a,$024a+x
19f2: 68 01     cmp   a,#$01
19f4: d0 43     bne   $1a39
19f6: 3f 70 1d  call  $1d70
19f9: f5 6a 02  mov   a,$026a+x
19fc: c4 03     mov   $03,a
19fe: f5 72 02  mov   a,$0272+x
1a01: c4 04     mov   $04,a
1a03: f5 11 02  mov   a,$0211+x
1a06: 28 7f     and   a,#$7f
1a08: 8d 02     mov   y,#$02
1a0a: 60        clrc
1a0b: 97 03     adc   a,($03)+y
1a0d: 60        clrc
1a0e: 95 41 02  adc   a,$0241+x
1a11: 60        clrc
1a12: 85 49 02  adc   a,$0249
1a15: c4 00     mov   $00,a
1a17: 8d 00     mov   y,#$00
1a19: f5 8b 02  mov   a,$028b+x
1a1c: 10 01     bpl   $1a1f
1a1e: dc        dec   y
1a1f: da 05     movw  $05,ya
1a21: 3f 2c 10  call  $102c
1a24: f8 40     mov   x,$40
1a26: d4 94     mov   $94+x,a
1a28: db 9c     mov   $9c+x,y
1a2a: e8 00     mov   a,#$00
1a2c: d4 84     mov   $84+x,a
1a2e: d4 8c     mov   $8c+x,a
1a30: f4 ac     mov   a,$ac+x
1a32: 28 40     and   a,#$40
1a34: f0 03     beq   $1a39
1a36: 3f f6 1d  call  $1df6
1a39: f4 a4     mov   a,$a4+x
1a3b: 28 fd     and   a,#$fd
1a3d: d4 a4     mov   $a4+x,a
1a3f: f4 94     mov   a,$94+x
1a41: d4 51     mov   $51+x,a
1a43: f4 9c     mov   a,$9c+x
1a45: d4 59     mov   $59+x,a
1a47: f4 ac     mov   a,$ac+x
1a49: 28 40     and   a,#$40
1a4b: f0 05     beq   $1a52
1a4d: 3f 46 1e  call  $1e46
1a50: 2f 1d     bra   $1a6f
1a52: f5 05 03  mov   a,$0305+x
1a55: f0 18     beq   $1a6f
1a57: f5 4a 02  mov   a,$024a+x
1a5a: 68 01     cmp   a,#$01
1a5c: d0 03     bne   $1a61
1a5e: 3f 8d 1e  call  $1e8d
1a61: f5 1d 03  mov   a,$031d+x
1a64: f0 06     beq   $1a6c
1a66: 9c        dec   a
1a67: d5 1d 03  mov   $031d+x,a
1a6a: d0 03     bne   $1a6f
1a6c: 3f bf 1e  call  $1ebf
1a6f: f5 bc 02  mov   a,$02bc+x
1a72: f0 1b     beq   $1a8f
1a74: f5 4a 02  mov   a,$024a+x
1a77: 68 01     cmp   a,#$01
1a79: d0 03     bne   $1a7e
1a7b: 3f 10 1d  call  $1d10
1a7e: f5 c4 02  mov   a,$02c4+x
1a81: f0 0c     beq   $1a8f
1a83: 9c        dec   a
1a84: d5 c4 02  mov   $02c4+x,a
1a87: d0 06     bne   $1a8f
1a89: f5 10 11  mov   a,$1110+x
1a8c: 0e 93 02  tset1 $0293
1a8f: 6f        ret

1a90: f8 40     mov   x,$40
1a92: f5 4a 02  mov   a,$024a+x
1a95: 1c        asl   a
1a96: 5d        mov   x,a
1a97: 1f 9a 1a  jmp   ($1a9a+x)

1a9a: dw $1aa4  ; 
1a9c: dw $1aad  ; 
1a9e: dw $1ac2  ; 
1aa0: dw $1acf  ; 
1aa2: dw $1adc  ; 

1aa4: f8 40     mov   x,$40
1aa6: f5 10 11  mov   a,$1110+x
1aa9: 0e 82 00  tset1 $0082
1aac: 6f        ret

1aad: 3f dd 1a  call  $1add
1ab0: f5 10 11  mov   a,$1110+x
1ab3: 0e 81 00  tset1 $0081
1ab6: f4 69     mov   a,$69+x
1ab8: 08 80     or    a,#$80
1aba: d4 69     mov   $69+x,a
1abc: e8 02     mov   a,#$02
1abe: d5 4a 02  mov   $024a+x,a
1ac1: 6f        ret

1ac2: 3f dd 1a  call  $1add
1ac5: f5 29 02  mov   a,$0229+x
1ac8: f0 05     beq   $1acf
1aca: 9c        dec   a
1acb: d5 29 02  mov   $0229+x,a
1ace: 6f        ret

1acf: f8 40     mov   x,$40
1ad1: f4 69     mov   a,$69+x
1ad3: 28 7f     and   a,#$7f
1ad5: d4 69     mov   $69+x,a
1ad7: e8 04     mov   a,#$04
1ad9: d5 4a 02  mov   $024a+x,a
1adc: 6f        ret

1add: f8 40     mov   x,$40
1adf: f5 21 02  mov   a,$0221+x
1ae2: 9c        dec   a
1ae3: d0 0b     bne   $1af0
1ae5: f5 11 02  mov   a,$0211+x
1ae8: 30 06     bmi   $1af0
1aea: f5 10 11  mov   a,$1110+x
1aed: 0e 82 00  tset1 $0082
1af0: 6f        ret

1af1: e8 00     mov   a,#$00
1af3: c5 40 01  mov   $0140,a
1af6: 8f 07 40  mov   $40,#$07
1af9: f8 40     mov   x,$40
1afb: e5 41 01  mov   a,$0141
1afe: 35 10 11  and   a,$1110+x
1b01: f0 03     beq   $1b06
1b03: 5f 87 1b  jmp   $1b87

1b06: f4 a4     mov   a,$a4+x
1b08: 10 77     bpl   $1b81
1b0a: 28 20     and   a,#$20
1b0c: d0 73     bne   $1b81
1b0e: 3f 9e 1b  call  $1b9e
1b11: f4 a4     mov   a,$a4+x
1b13: 28 04     and   a,#$04
1b15: f0 0c     beq   $1b23
1b17: f4 a4     mov   a,$a4+x
1b19: 28 fb     and   a,#$fb
1b1b: d4 a4     mov   $a4+x,a
1b1d: f4 61     mov   a,$61+x
1b1f: 8d 04     mov   y,#$04
1b21: 4f 00     pcall $00               ; set $61+x to SRCN
1b23: f4 51     mov   a,$51+x
1b25: 60        clrc
1b26: 94 84     adc   a,$84+x
1b28: c4 00     mov   $00,a
1b2a: f4 59     mov   a,$59+x
1b2c: 94 8c     adc   a,$8c+x
1b2e: 8d 03     mov   y,#$03
1b30: 4f 00     pcall $00               ; set to P(H)
1b32: e4 00     mov   a,$00
1b34: 8d 02     mov   y,#$02
1b36: 4f 00     pcall $00               ; set to P(L)
1b38: f4 69     mov   a,$69+x
1b3a: 10 1d     bpl   $1b59
1b3c: e4 81     mov   a,$81
1b3e: 35 10 11  and   a,$1110+x
1b41: f0 20     beq   $1b63
1b43: 8d 08     mov   y,#$08
1b45: 4f 13     pcall $13
1b47: 68 03     cmp   a,#$03
1b49: b0 f8     bcs   $1b43
1b4b: f4 69     mov   a,$69+x
1b4d: 8d 05     mov   y,#$05
1b4f: 4f 00     pcall $00               ; set $69+x to ADSR(1)
1b51: f4 71     mov   a,$71+x
1b53: 8d 06     mov   y,#$06
1b55: 4f 00     pcall $00               ; set $71+x to ADSR(2)
1b57: 2f 0a     bra   $1b63
1b59: 8d 05     mov   y,#$05
1b5b: 4f 00     pcall $00               ; set $69+x to ADSR(1)
1b5d: f4 79     mov   a,$79+x
1b5f: 8d 07     mov   y,#$07
1b61: 4f 00     pcall $00               ; set $79+x to GAIN
1b63: f5 83 02  mov   a,$0283+x
1b66: 30 11     bmi   $1b79
1b68: 08 80     or    a,#$80
1b6a: d5 83 02  mov   $0283+x,a
1b6d: f4 41     mov   a,$41+x
1b6f: 8d 01     mov   y,#$01
1b71: 4f 00     pcall $00               ; set $41+x to VOL(R)
1b73: f4 49     mov   a,$49+x
1b75: 8d 00     mov   y,#$00
1b77: 4f 00     pcall $00               ; set $49+x to VOL(L)
1b79: f5 10 11  mov   a,$1110+x
1b7c: 0e 40 01  tset1 $0140
1b7f: 2f 06     bra   $1b87
1b81: f5 10 11  mov   a,$1110+x
1b84: 0e 82 00  tset1 $0082
1b87: 8b 40     dec   $40
1b89: 30 03     bmi   $1b8e
1b8b: 5f f9 1a  jmp   $1af9

1b8e: e4 81     mov   a,$81
1b90: c5 4a 01  mov   $014a,a
1b93: e4 82     mov   a,$82
1b95: c5 4c 01  mov   $014c,a
1b98: e4 83     mov   a,$83
1b9a: c5 50 01  mov   $0150,a
1b9d: 6f        ret

1b9e: f5 42 01  mov   a,$0142+x
1ba1: f0 0f     beq   $1bb2
1ba3: 9c        dec   a
1ba4: f0 0d     beq   $1bb3
1ba6: e4 81     mov   a,$81
1ba8: 35 10 11  and   a,$1110+x
1bab: f0 19     beq   $1bc6
1bad: e8 00     mov   a,#$00
1baf: d5 42 01  mov   $0142+x,a
1bb2: 6f        ret

1bb3: f4 a4     mov   a,$a4+x
1bb5: 08 04     or    a,#$04
1bb7: d4 a4     mov   $a4+x,a
1bb9: f5 83 02  mov   a,$0283+x
1bbc: 28 7f     and   a,#$7f
1bbe: d5 83 02  mov   $0283+x,a
1bc1: e8 02     mov   a,#$02
1bc3: d5 42 01  mov   $0142+x,a
1bc6: ae        pop   a
1bc7: ae        pop   a
1bc8: 2f b7     bra   $1b81
1bca: e5 6d 03  mov   a,$036d
1bcd: f0 23     beq   $1bf2
1bcf: 60        clrc
1bd0: 85 6e 03  adc   a,$036e
1bd3: c5 6e 03  mov   $036e,a
1bd6: 10 1a     bpl   $1bf2
1bd8: 28 7f     and   a,#$7f
1bda: c5 6e 03  mov   $036e,a
1bdd: e5 7a 02  mov   a,$027a
1be0: 80        setc
1be1: a8 02     sbc   a,#$02
1be3: c5 7a 02  mov   $027a,a
1be6: 68 05     cmp   a,#$05
1be8: b0 09     bcs   $1bf3
1bea: 3f a1 12  call  $12a1
1bed: e8 00     mov   a,#$00
1bef: c5 6d 03  mov   $036d,a
1bf2: 6f        ret

1bf3: e8 80     mov   a,#$80
1bf5: 4e 83 02  tclr1 $0283
1bf8: 4e 84 02  tclr1 $0284
1bfb: 4e 85 02  tclr1 $0285
1bfe: 4e 86 02  tclr1 $0286
1c01: 4e 87 02  tclr1 $0287
1c04: 4e 88 02  tclr1 $0288
1c07: 4e 89 02  tclr1 $0289
1c0a: 4e 8a 02  tclr1 $028a
1c0d: 6f        ret

1c0e: e5 93 02  mov   a,$0293
1c11: 05 cc 02  or    a,$02cc
1c14: d0 01     bne   $1c17
1c16: 6f        ret

1c17: 8f 07 40  mov   $40,#$07
1c1a: f8 40     mov   x,$40
1c1c: e5 41 01  mov   a,$0141
1c1f: 35 10 11  and   a,$1110+x
1c22: d0 2b     bne   $1c4f
1c24: f4 a4     mov   a,$a4+x
1c26: 10 27     bpl   $1c4f
1c28: 8f 00 03  mov   $03,#$00
1c2b: 8f 00 04  mov   $04,#$00
1c2e: e5 93 02  mov   a,$0293
1c31: 35 10 11  and   a,$1110+x
1c34: f0 05     beq   $1c3b
1c36: 3f 54 1c  call  $1c54
1c39: da 03     movw  $03,ya
1c3b: f8 40     mov   x,$40
1c3d: e5 cc 02  mov   a,$02cc
1c40: 35 10 11  and   a,$1110+x
1c43: f0 07     beq   $1c4c
1c45: 3f 2b 1d  call  $1d2b
1c48: 7a 03     addw  ya,$03
1c4a: da 03     movw  $03,ya
1c4c: 3f af 1d  call  $1daf
1c4f: 8b 40     dec   $40
1c51: 10 c7     bpl   $1c1a
1c53: 6f        ret

1c54: f5 a4 02  mov   a,$02a4+x
1c57: f0 05     beq   $1c5e
1c59: 9c        dec   a
1c5a: f0 6a     beq   $1cc6
1c5c: 2f 68     bra   $1cc6
; vibrato type 0 (up and down)
1c5e: f5 94 02  mov   a,$0294+x
1c61: c4 00     mov   $00,a
1c63: f5 b4 02  mov   a,$02b4+x
1c66: 60        clrc
1c67: 88 7f     adc   a,#$7f
1c69: 8d 00     mov   y,#$00
1c6b: f8 00     mov   x,$00
1c6d: 9e        div   ya,x
1c6e: c4 00     mov   $00,a
1c70: dd        mov   a,y
1c71: f8 40     mov   x,$40
1c73: d5 b4 02  mov   $02b4+x,a
1c76: f4 ac     mov   a,$ac+x
1c78: 28 08     and   a,#$08
1c7a: d0 21     bne   $1c9d
1c7c: f5 ac 02  mov   a,$02ac+x
1c7f: 60        clrc
1c80: 84 00     adc   a,$00
1c82: d5 ac 02  mov   $02ac+x,a
1c85: 30 2b     bmi   $1cb2
1c87: 68 7f     cmp   a,#$7f
1c89: d0 06     bne   $1c91
1c8b: f4 ac     mov   a,$ac+x
1c8d: 48 08     eor   a,#$08
1c8f: d4 ac     mov   $ac+x,a
1c91: f5 ac 02  mov   a,$02ac+x
1c94: fd        mov   y,a
1c95: f5 9c 02  mov   a,$029c+x
1c98: cf        mul   ya
1c99: dd        mov   a,y
1c9a: 8d 00     mov   y,#$00
1c9c: 6f        ret

1c9d: f5 ac 02  mov   a,$02ac+x
1ca0: 80        setc
1ca1: a4 00     sbc   a,$00
1ca3: d5 ac 02  mov   $02ac+x,a
1ca6: 10 e9     bpl   $1c91
1ca8: 68 81     cmp   a,#$81
1caa: d0 06     bne   $1cb2
1cac: f4 ac     mov   a,$ac+x
1cae: 48 08     eor   a,#$08
1cb0: d4 ac     mov   $ac+x,a
1cb2: f5 ac 02  mov   a,$02ac+x
1cb5: 48 ff     eor   a,#$ff
1cb7: bc        inc   a
1cb8: fd        mov   y,a
1cb9: f5 9c 02  mov   a,$029c+x
1cbc: cf        mul   ya
1cbd: dd        mov   a,y
1cbe: f0 05     beq   $1cc5
1cc0: 48 ff     eor   a,#$ff
1cc2: bc        inc   a
1cc3: 8d ff     mov   y,#$ff
1cc5: 6f        ret

; vibrato type 1,2,... (upper half only)
1cc6: f5 94 02  mov   a,$0294+x
1cc9: c4 00     mov   $00,a
1ccb: f5 b4 02  mov   a,$02b4+x
1cce: 60        clrc
1ccf: 88 7f     adc   a,#$7f
1cd1: 8d 00     mov   y,#$00
1cd3: f8 00     mov   x,$00
1cd5: 9e        div   ya,x
1cd6: c4 00     mov   $00,a
1cd8: dd        mov   a,y
1cd9: f8 40     mov   x,$40
1cdb: d5 b4 02  mov   $02b4+x,a
1cde: f4 ac     mov   a,$ac+x
1ce0: 28 08     and   a,#$08
1ce2: d0 0f     bne   $1cf3
1ce4: f5 ac 02  mov   a,$02ac+x
1ce7: 60        clrc
1ce8: 84 00     adc   a,$00
1cea: d5 ac 02  mov   $02ac+x,a
1ced: 68 7f     cmp   a,#$7f
1cef: d0 13     bne   $1d04
1cf1: 2f 0b     bra   $1cfe
1cf3: f5 ac 02  mov   a,$02ac+x
1cf6: 80        setc
1cf7: a4 00     sbc   a,$00
1cf9: d5 ac 02  mov   $02ac+x,a
1cfc: d0 06     bne   $1d04
1cfe: f4 ac     mov   a,$ac+x
1d00: 48 08     eor   a,#$08
1d02: d4 ac     mov   $ac+x,a
1d04: f5 ac 02  mov   a,$02ac+x
1d07: fd        mov   y,a
1d08: f5 9c 02  mov   a,$029c+x
1d0b: cf        mul   ya
1d0c: dd        mov   a,y
1d0d: 8d 00     mov   y,#$00
1d0f: 6f        ret

1d10: e8 00     mov   a,#$00
1d12: d5 ac 02  mov   $02ac+x,a
1d15: d5 b4 02  mov   $02b4+x,a
1d18: f5 bc 02  mov   a,$02bc+x
1d1b: d5 c4 02  mov   $02c4+x,a
1d1e: f4 ac     mov   a,$ac+x
1d20: 28 f7     and   a,#$f7
1d22: d4 ac     mov   $ac+x,a
1d24: f5 10 11  mov   a,$1110+x
1d27: 4e 93 02  tclr1 $0293
1d2a: 6f        ret

1d2b: f5 dd 02  mov   a,$02dd+x
1d2e: f0 02     beq   $1d32
1d30: e8 ff     mov   a,#$ff
1d32: c4 01     mov   $01,a
1d34: f5 cd 02  mov   a,$02cd+x
1d37: c4 00     mov   $00,a
1d39: f5 ed 02  mov   a,$02ed+x
1d3c: 60        clrc
1d3d: 88 7f     adc   a,#$7f
1d3f: 8d 00     mov   y,#$00
1d41: f8 00     mov   x,$00
1d43: 9e        div   ya,x
1d44: c4 00     mov   $00,a
1d46: dd        mov   a,y
1d47: f8 40     mov   x,$40
1d49: d5 ed 02  mov   $02ed+x,a
1d4c: f5 e5 02  mov   a,$02e5+x
1d4f: 80        setc
1d50: a4 00     sbc   a,$00
1d52: d0 09     bne   $1d5d
1d54: fd        mov   y,a
1d55: f5 10 11  mov   a,$1110+x
1d58: 4e cc 02  tclr1 $02cc
1d5b: dd        mov   a,y
1d5c: 6f        ret

1d5d: d5 e5 02  mov   $02e5+x,a
1d60: fd        mov   y,a
1d61: f5 d5 02  mov   a,$02d5+x
1d64: cf        mul   ya
1d65: dd        mov   a,y
1d66: f0 07     beq   $1d6f
1d68: eb 01     mov   y,$01
1d6a: f0 03     beq   $1d6f
1d6c: 48 ff     eor   a,#$ff
1d6e: bc        inc   a
1d6f: 6f        ret

1d70: f5 d5 02  mov   a,$02d5+x
1d73: fd        mov   y,a
1d74: f5 dd 02  mov   a,$02dd+x
1d77: f0 02     beq   $1d7b
1d79: e8 ff     mov   a,#$ff
1d7b: c4 04     mov   $04,a
1d7d: e8 7f     mov   a,#$7f
1d7f: cf        mul   ya
1d80: f5 19 02  mov   a,$0219+x
1d83: 5d        mov   x,a
1d84: f5 10 11  mov   a,$1110+x
1d87: cf        mul   ya
1d88: dd        mov   a,y
1d89: eb 04     mov   y,$04
1d8b: f0 03     beq   $1d90
1d8d: 48 ff     eor   a,#$ff
1d8f: bc        inc   a
1d90: c4 03     mov   $03,a
1d92: f8 40     mov   x,$40
1d94: e4 03     mov   a,$03
1d96: d4 84     mov   $84+x,a
1d98: e4 04     mov   a,$04
1d9a: d4 8c     mov   $8c+x,a
1d9c: f8 40     mov   x,$40
1d9e: e8 7f     mov   a,#$7f
1da0: d5 e5 02  mov   $02e5+x,a
1da3: e8 00     mov   a,#$00
1da5: d5 ed 02  mov   $02ed+x,a
1da8: f5 10 11  mov   a,$1110+x
1dab: 0e cc 02  tset1 $02cc
1dae: 6f        ret

1daf: f8 40     mov   x,$40
1db1: f5 19 02  mov   a,$0219+x
1db4: 1c        asl   a
1db5: 5d        mov   x,a
1db6: e4 03     mov   a,$03
1db8: 1f bb 1d  jmp   ($1dbb+x)

1dbb: dw $1dd6  ; 
1dbd: dw $1dd3  ; 
1dbf: dw $1dd0  ; 
1dc1: dw $1dcd  ; 
1dc3: dw $1dca  ; 
1dc5: dw $1dc7  ; 

1dc7: 1c        asl   a
1dc8: 2b 04     rol   $04
1dca: 1c        asl   a
1dcb: 2b 04     rol   $04
1dcd: 1c        asl   a
1dce: 2b 04     rol   $04
1dd0: 1c        asl   a
1dd1: 2b 04     rol   $04
1dd3: 1c        asl   a
1dd4: 2b 04     rol   $04
1dd6: c4 03     mov   $03,a
1dd8: f8 40     mov   x,$40
1dda: e4 04     mov   a,$04
1ddc: d4 8c     mov   $8c+x,a
1dde: e4 03     mov   a,$03
1de0: d4 84     mov   $84+x,a
1de2: 60        clrc
1de3: 94 51     adc   a,$51+x
1de5: c4 03     mov   $03,a
1de7: f4 59     mov   a,$59+x
1de9: 84 04     adc   a,$04
1deb: 8d 03     mov   y,#$03
1ded: 4f 00     pcall $00               ; set to P(H)
1def: e4 03     mov   a,$03
1df1: 8d 02     mov   y,#$02
1df3: 5f 00 ff  jmp   $ff00

1df6: f5 0d 03  mov   a,$030d+x
1df9: 15 15 03  or    a,$0315+x
1dfc: d0 0d     bne   $1e0b
1dfe: f4 a4     mov   a,$a4+x
1e00: 28 10     and   a,#$10
1e02: f0 06     beq   $1e0a
1e04: e8 00     mov   a,#$00
1e06: d4 94     mov   $94+x,a
1e08: d4 9c     mov   $9c+x,a
1e0a: 6f        ret

1e0b: e8 00     mov   a,#$00
1e0d: d5 3d 03  mov   $033d+x,a
1e10: d5 45 03  mov   $0345+x,a
1e13: f5 19 02  mov   a,$0219+x
1e16: fd        mov   y,a
1e17: f6 10 11  mov   a,$1110+y
1e1a: fd        mov   y,a
1e1b: f5 fd 02  mov   a,$02fd+x
1e1e: cf        mul   ya
1e1f: da 03     movw  $03,ya
1e21: f5 0d 03  mov   a,$030d+x
1e24: c4 05     mov   $05,a
1e26: f5 15 03  mov   a,$0315+x
1e29: c4 06     mov   $06,a
1e2b: f4 94     mov   a,$94+x
1e2d: fb 9c     mov   y,$9c+x
1e2f: 5a 05     cmpw  ya,$05
1e31: b0 08     bcs   $1e3b
1e33: 58 ff 03  eor   $03,#$ff
1e36: 58 ff 04  eor   $04,#$ff
1e39: 3a 03     incw  $03
1e3b: e4 03     mov   a,$03
1e3d: d5 4d 03  mov   $034d+x,a
1e40: e4 04     mov   a,$04
1e42: d5 55 03  mov   $0355+x,a
1e45: 6f        ret

1e46: f5 0d 03  mov   a,$030d+x
1e49: c4 03     mov   $03,a
1e4b: 15 15 03  or    a,$0315+x
1e4e: f0 3c     beq   $1e8c
1e50: f5 15 03  mov   a,$0315+x
1e53: fd        mov   y,a
1e54: f5 4d 03  mov   a,$034d+x
1e57: 60        clrc
1e58: 95 3d 03  adc   a,$033d+x
1e5b: d5 3d 03  mov   $033d+x,a
1e5e: c4 05     mov   $05,a
1e60: f5 55 03  mov   a,$0355+x
1e63: 95 45 03  adc   a,$0345+x
1e66: d5 45 03  mov   $0345+x,a
1e69: c4 06     mov   $06,a
1e6b: e4 03     mov   a,$03
1e6d: 7a 05     addw  ya,$05
1e6f: da 03     movw  $03,ya
1e71: f4 94     mov   a,$94+x
1e73: fb 9c     mov   y,$9c+x
1e75: 5a 03     cmpw  ya,$03
1e77: f3 06 01  bbc7  $06,$1e7b
1e7a: ed        notc
1e7b: 90 07     bcc   $1e84
1e7d: ba 03     movw  ya,$03
1e7f: d4 51     mov   $51+x,a
1e81: db 59     mov   $59+x,y
1e83: 6f        ret

1e84: e8 00     mov   a,#$00
1e86: d5 0d 03  mov   $030d+x,a
1e89: d5 15 03  mov   $0315+x,a
1e8c: 6f        ret

1e8d: f5 5d 03  mov   a,$035d+x
1e90: 28 03     and   a,#$03
1e92: d0 2a     bne   $1ebe
1e94: f5 05 03  mov   a,$0305+x
1e97: d5 1d 03  mov   $031d+x,a
1e9a: e8 00     mov   a,#$00
1e9c: d5 35 03  mov   $0335+x,a
1e9f: d5 3d 03  mov   $033d+x,a
1ea2: d5 45 03  mov   $0345+x,a
1ea5: d5 4d 03  mov   $034d+x,a
1ea8: d5 55 03  mov   $0355+x,a
1eab: d5 65 03  mov   $0365+x,a
1eae: f5 fd 02  mov   a,$02fd+x
1eb1: 1c        asl   a
1eb2: fd        mov   y,a
1eb3: f7 3e     mov   a,($3e)+y
1eb5: d5 25 03  mov   $0325+x,a
1eb8: fc        inc   y
1eb9: f7 3e     mov   a,($3e)+y
1ebb: d5 2d 03  mov   $032d+x,a
1ebe: 6f        ret

1ebf: f5 35 03  mov   a,$0335+x
1ec2: f0 0d     beq   $1ed1
1ec4: f5 0d 03  mov   a,$030d+x
1ec7: c4 05     mov   $05,a
1ec9: f5 15 03  mov   a,$0315+x
1ecc: c4 06     mov   $06,a
1ece: 5f d2 1f  jmp   $1fd2

1ed1: f5 25 03  mov   a,$0325+x
1ed4: c4 03     mov   $03,a
1ed6: f5 2d 03  mov   a,$032d+x
1ed9: c4 04     mov   $04,a
1edb: 8d 00     mov   y,#$00
1edd: f7 03     mov   a,($03)+y
1edf: 68 fb     cmp   a,#$fb
1ee1: 90 09     bcc   $1eec
1ee3: a8 fb     sbc   a,#$fb
1ee5: 1c        asl   a
1ee6: d8 00     mov   $00,x
1ee8: 5d        mov   x,a
1ee9: 1f e4 1f  jmp   ($1fe4+x)

1eec: d5 35 03  mov   $0335+x,a
1eef: 3a 03     incw  $03
1ef1: f7 03     mov   a,($03)+y
1ef3: c4 00     mov   $00,a
1ef5: c4 02     mov   $02,a
1ef7: 3a 03     incw  $03
1ef9: e4 03     mov   a,$03
1efb: d5 25 03  mov   $0325+x,a
1efe: e4 04     mov   a,$04
1f00: d5 2d 03  mov   $032d+x,a
1f03: e4 00     mov   a,$00
1f05: d0 09     bne   $1f10
1f07: d5 0d 03  mov   $030d+x,a
1f0a: d5 15 03  mov   $0315+x,a
1f0d: 5f dc 1f  jmp   $1fdc

1f10: 10 47     bpl   $1f59
1f12: 48 ff     eor   a,#$ff
1f14: bc        inc   a
1f15: c4 00     mov   $00,a
1f17: f5 4d 03  mov   a,$034d+x
1f1a: c4 03     mov   $03,a
1f1c: f5 55 03  mov   a,$0355+x
1f1f: c4 04     mov   $04,a
1f21: 04 03     or    a,$03
1f23: d0 28     bne   $1f4d
1f25: f4 9c     mov   a,$9c+x
1f27: 5c        lsr   a
1f28: c4 04     mov   $04,a
1f2a: f4 94     mov   a,$94+x
1f2c: 7c        ror   a
1f2d: c4 03     mov   $03,a
1f2f: f5 f5 02  mov   a,$02f5+x
1f32: 68 0c     cmp   a,#$0c
1f34: b0 17     bcs   $1f4d
1f36: fd        mov   y,a
1f37: f6 b0 20  mov   a,$20b0+y
1f3a: c4 01     mov   $01,a
1f3c: eb 04     mov   y,$04
1f3e: cf        mul   ya
1f3f: da 05     movw  $05,ya
1f41: e4 01     mov   a,$01
1f43: eb 03     mov   y,$03
1f45: cf        mul   ya
1f46: dd        mov   a,y
1f47: 8d 00     mov   y,#$00
1f49: 7a 05     addw  ya,$05
1f4b: da 03     movw  $03,ya
1f4d: e4 03     mov   a,$03
1f4f: d5 4d 03  mov   $034d+x,a
1f52: e4 04     mov   a,$04
1f54: d5 55 03  mov   $0355+x,a
1f57: 2f 3e     bra   $1f97
1f59: f5 3d 03  mov   a,$033d+x
1f5c: c4 03     mov   $03,a
1f5e: f5 45 03  mov   a,$0345+x
1f61: c4 04     mov   $04,a
1f63: 04 03     or    a,$03
1f65: d0 26     bne   $1f8d
1f67: f4 9c     mov   a,$9c+x
1f69: c4 04     mov   $04,a
1f6b: f4 94     mov   a,$94+x
1f6d: c4 03     mov   $03,a
1f6f: f5 f5 02  mov   a,$02f5+x
1f72: 68 0c     cmp   a,#$0c
1f74: b0 17     bcs   $1f8d
1f76: fd        mov   y,a
1f77: f6 a4 20  mov   a,$20a4+y
1f7a: c4 01     mov   $01,a
1f7c: eb 04     mov   y,$04
1f7e: cf        mul   ya
1f7f: da 05     movw  $05,ya
1f81: e4 01     mov   a,$01
1f83: eb 03     mov   y,$03
1f85: cf        mul   ya
1f86: dd        mov   a,y
1f87: 8d 00     mov   y,#$00
1f89: 7a 05     addw  ya,$05
1f8b: da 03     movw  $03,ya
1f8d: e4 03     mov   a,$03
1f8f: d5 3d 03  mov   $033d+x,a
1f92: e4 04     mov   a,$04
1f94: d5 45 03  mov   $0345+x,a
1f97: ab 00     inc   $00
1f99: e4 00     mov   a,$00
1f9b: eb 04     mov   y,$04
1f9d: cf        mul   ya
1f9e: da 05     movw  $05,ya
1fa0: e4 00     mov   a,$00
1fa2: eb 03     mov   y,$03
1fa4: cf        mul   ya
1fa5: c4 00     mov   $00,a
1fa7: dd        mov   a,y
1fa8: 8d 00     mov   y,#$00
1faa: 7a 05     addw  ya,$05
1fac: cb 06     mov   $06,y
1fae: 0b 00     asl   $00
1fb0: 3c        rol   a
1fb1: 2b 06     rol   $06
1fb3: eb 02     mov   y,$02
1fb5: 10 11     bpl   $1fc8
1fb7: 58 ff 00  eor   $00,#$ff
1fba: 48 ff     eor   a,#$ff
1fbc: 58 ff 06  eor   $06,#$ff
1fbf: ab 00     inc   $00
1fc1: d0 05     bne   $1fc8
1fc3: bc        inc   a
1fc4: d0 02     bne   $1fc8
1fc6: ab 06     inc   $06
1fc8: c4 05     mov   $05,a
1fca: d5 0d 03  mov   $030d+x,a
1fcd: e4 06     mov   a,$06
1fcf: d5 15 03  mov   $0315+x,a
1fd2: f4 51     mov   a,$51+x
1fd4: fb 59     mov   y,$59+x
1fd6: 7a 05     addw  ya,$05
1fd8: d4 51     mov   $51+x,a
1fda: db 59     mov   $59+x,y
1fdc: f5 35 03  mov   a,$0335+x
1fdf: 9c        dec   a
1fe0: d5 35 03  mov   $0335+x,a
1fe3: 6f        ret

1fe4: dw $1fee  ; 
1fe6: dw $2000  ; 
1fe8: dw $1ff8  ; 
1fea: dw $2014  ; 
1fec: dw $1fee  ; 

1fee: f8 00     mov   x,$00
1ff0: e8 ff     mov   a,#$ff
1ff2: d5 35 03  mov   $0335+x,a
1ff5: 5f bf 1e  jmp   $1ebf

1ff8: f8 00     mov   x,$00
1ffa: 3f ae 1e  call  $1eae
1ffd: 5f d1 1e  jmp   $1ed1

2000: f8 00     mov   x,$00
2002: 3a 03     incw  $03
2004: f7 03     mov   a,($03)+y
2006: c4 00     mov   $00,a
2008: 3a 03     incw  $03
200a: f7 03     mov   a,($03)+y
200c: c4 04     mov   $04,a
200e: fa 00 03  mov   ($03),($00)
2011: 5f db 1e  jmp   $1edb

2014: 3a 03     incw  $03
2016: f8 00     mov   x,$00
2018: f5 65 03  mov   a,$0365+x
201b: f0 0d     beq   $202a
201d: 9c        dec   a
201e: d5 65 03  mov   $0365+x,a
2021: d0 dd     bne   $2000
2023: 3a 03     incw  $03
2025: 3a 03     incw  $03
2027: 5f db 1e  jmp   $1edb

202a: f7 03     mov   a,($03)+y
202c: d5 65 03  mov   $0365+x,a
202f: 2f cf     bra   $2000

2031: db $77,$87,$97,$a7,$b7,$c7,$d7,$e7
2039: db $03,$03,$03,$03,$03,$03,$03,$03

; 2040: note length table (index 0 must not be used)
2041: db $c0,$60,$30,$18,$0c,$06,$03,$01

; volume table (00-5a)
2049: db $00,$01,$02,$02,$02,$02,$02,$02
2051: db $02,$02,$03,$03,$03,$03,$03,$03
2059: db $04,$04,$04,$04,$05,$05,$05,$05
2061: db $06,$06,$06,$07,$07,$08,$08,$09
2069: db $09,$0a,$0a,$0b,$0b,$0c,$0d,$0e
2071: db $0e,$0f,$10,$11,$12,$13,$14,$15
2079: db $17,$18,$1a,$1b,$1d,$1e,$20,$22
2081: db $24,$26,$28,$2b,$2d,$30,$33,$36
2089: db $39,$3c,$40,$44,$48,$4c,$51,$55
2091: db $5a,$60,$66,$6c,$72,$79,$80,$87
2099: db $8f,$98,$a1,$aa,$b5,$bf,$cb,$d7
20a1: db $e3,$f1,$ff

20a4: db $00,$0f,$1f,$30,$43,$56,$6a,$80,$96,$af,$c8,$e3
20b0: db $00,$1d,$38,$52,$6a,$81,$96,$aa,$be,$d0,$e1,$f1

20bc: 8d 00     mov   y,#$00
20be: f7 15     mov   a,($15)+y
20c0: c4 b6     mov   $b6,a
20c2: fc        inc   y
20c3: f7 15     mov   a,($15)+y
20c5: c4 b7     mov   $b7,a
20c7: fc        inc   y
20c8: f7 15     mov   a,($15)+y
20ca: c4 b8     mov   $b8,a
20cc: fc        inc   y
20cd: f7 15     mov   a,($15)+y
20cf: c4 b9     mov   $b9,a
20d1: fc        inc   y
20d2: f7 15     mov   a,($15)+y
20d4: c4 ba     mov   $ba,a
20d6: fc        inc   y
20d7: f7 15     mov   a,($15)+y
20d9: c4 bb     mov   $bb,a
20db: cd 03     mov   x,#$03
20dd: e8 00     mov   a,#$00
20df: d4 bd     mov   $bd+x,a
20e1: 1d        dec   x
20e2: 10 fb     bpl   $20df
20e4: e8 ff     mov   a,#$ff
20e6: c5 4b 04  mov   $044b,a
20e9: e8 00     mov   a,#$00
20eb: c5 1a 04  mov   $041a,a
20ee: fc        inc   y
20ef: f7 15     mov   a,($15)+y
20f1: c4 03     mov   $03,a
20f3: fc        inc   y
20f4: f7 15     mov   a,($15)+y
20f6: c4 04     mov   $04,a
20f8: 8d 00     mov   y,#$00
20fa: f7 03     mov   a,($03)+y
20fc: c4 c3     mov   $c3,a
20fe: 6f        ret

20ff: 3f 27 21  call  $2127
2102: 3f 5d 21  call  $215d
2105: 3f e8 21  call  $21e8
2108: 8f 03 bc  mov   $bc,#$03
210b: f8 bc     mov   x,$bc
210d: f4 bd     mov   a,$bd+x
210f: 10 0f     bpl   $2120
2111: 3f f4 21  call  $21f4
2114: 3f 9b 24  call  $249b
2117: 3f 06 25  call  $2506
211a: 3f 52 25  call  $2552
211d: 3f 1f 26  call  $261f
2120: 8b bc     dec   $bc
2122: 10 e7     bpl   $210b
2124: 5f 54 26  jmp   $2654

2127: e4 29     mov   a,$29
2129: 30 30     bmi   $215b
212b: e2 29     set7  $29
212d: 64 c3     cmp   a,$c3
212f: b0 2a     bcs   $215b
2131: ec 41 01  mov   y,$0141
2134: f0 0d     beq   $2143
2136: fd        mov   y,a
2137: f7 ba     mov   a,($ba)+y
2139: eb c2     mov   y,$c2
213b: 77 ba     cmp   a,($ba)+y
213d: 90 1c     bcc   $215b
213f: e4 29     mov   a,$29
2141: 28 7f     and   a,#$7f
2143: c4 c2     mov   $c2,a
2145: 3f 97 21  call  $2197
2148: e5 18 04  mov   a,$0418
214b: 8d 5c     mov   y,#$5c
214d: 4f 0c     pcall $0c               ; set $0418 to KOF
214f: 8d 0b     mov   y,#$0b
2151: fe fe     dbnz  y,$2151
2153: e8 00     mov   a,#$00
2155: 8d 5c     mov   y,#$5c
2157: 4f 0c     pcall $0c               ; set #$00 to KOF
2159: 80        setc
215a: 6f        ret

215b: 60        clrc
215c: 6f        ret

215d: e4 2d     mov   a,$2d
215f: 8f 00 2d  mov   $2d,#$00
2162: 1c        asl   a
2163: 5d        mov   x,a
2164: 1f 67 21  jmp   ($2167+x)

2167: dw $216d  ; 
2169: dw $216e  ; 
216b: dw $2191  ; 

216d: 6f        ret

216e: e8 00     mov   a,#$00
2170: c5 18 04  mov   $0418,a
2173: cd 03     mov   x,#$03
2175: f4 bd     mov   a,$bd+x
2177: 10 03     bpl   $217c
2179: 3f dc 26  call  $26dc
217c: 1d        dec   x
217d: 10 f6     bpl   $2175
217f: e5 18 04  mov   a,$0418
2182: 8d 5c     mov   y,#$5c
2184: 4f 0c     pcall $0c               ; set $0418 to KOF
2186: 8d 0b     mov   y,#$0b
2188: fe fe     dbnz  y,$2188
218a: e8 00     mov   a,#$00
218c: 8d 5c     mov   y,#$5c
218e: 5f 0c ff  jmp   $ff0c             ; set #$00 to KOF

2191: e4 2e     mov   a,$2e
2193: c5 4b 04  mov   $044b,a
2196: 6f        ret

2197: 1c        asl   a
2198: fd        mov   y,a
2199: f7 b6     mov   a,($b6)+y
219b: c4 03     mov   $03,a
219d: fc        inc   y
219e: f7 b6     mov   a,($b6)+y
21a0: c4 04     mov   $04,a
21a2: 8d 00     mov   y,#$00
21a4: f7 03     mov   a,($03)+y
21a6: c4 00     mov   $00,a
21a8: c5 18 04  mov   $0418,a
21ab: 4e 1a 04  tclr1 $041a
21ae: cd 00     mov   x,#$00
21b0: 4b 00     lsr   $00
21b2: 90 28     bcc   $21dc
21b4: fc        inc   y
21b5: f7 03     mov   a,($03)+y
21b7: d5 1b 04  mov   $041b+x,a
21ba: fc        inc   y
21bb: f7 03     mov   a,($03)+y
21bd: d5 1f 04  mov   $041f+x,a
21c0: e8 00     mov   a,#$00
21c2: d5 3f 04  mov   $043f+x,a
21c5: d5 3b 04  mov   $043b+x,a
21c8: d5 54 04  mov   $0454+x,a
21cb: d5 64 04  mov   $0464+x,a
21ce: d5 58 04  mov   $0458+x,a
21d1: d5 2b 04  mov   $042b+x,a
21d4: bc        inc   a
21d5: d5 27 04  mov   $0427+x,a
21d8: e8 80     mov   a,#$80
21da: d4 bd     mov   $bd+x,a
21dc: 3d        inc   x
21dd: c8 04     cmp   x,#$04
21df: 90 cf     bcc   $21b0
21e1: aa 35 00  mov1  c,$0006,5
21e4: ca c1 00  mov1  $0018,1,c
21e7: 6f        ret

21e8: e8 00     mov   a,#$00
21ea: c5 17 04  mov   $0417,a
21ed: c5 18 04  mov   $0418,a
21f0: c5 19 04  mov   $0419,a
21f3: 6f        ret

21f4: f8 bc     mov   x,$bc
21f6: f5 27 04  mov   a,$0427+x
21f9: 9c        dec   a
21fa: f0 10     beq   $220c
21fc: d5 27 04  mov   $0427+x,a
21ff: 9c        dec   a
2200: d0 09     bne   $220b
2202: f4 bd     mov   a,$bd+x
2204: 28 10     and   a,#$10
2206: d0 03     bne   $220b
2208: d5 2b 04  mov   $042b+x,a
220b: 6f        ret

220c: f5 1b 04  mov   a,$041b+x
220f: c4 03     mov   $03,a
2211: f5 1f 04  mov   a,$041f+x
2214: c4 04     mov   $04,a
2216: 2f 02     bra   $221a
2218: 3a 03     incw  $03
221a: cd 00     mov   x,#$00
221c: e7 03     mov   a,($03+x)
221e: 3a 03     incw  $03
2220: c4 00     mov   $00,a
2222: 68 d0     cmp   a,#$d0
2224: 90 39     bcc   $225f
2226: a8 d0     sbc   a,#$d0
2228: 1c        asl   a
2229: 5d        mov   x,a
222a: 1f 2d 22  jmp   ($222d+x)

222d: dw $22b6
222f: dw $22bf
2231: dw $22cb
2233: dw $22dc
2235: dw $22ea
2237: dw $22f8
2239: dw $2308
223b: dw $2314
223d: dw $233a
223f: dw $2346
2241: dw $2362
2243: dw $236e
2245: dw $237e
2247: dw $2391
2249: dw $23a3
2251: dw $23af
2253: dw $23c5
224f: dw $23ec
2251: dw $2417
2253: dw $2427
2255: dw $2439
2257: dw $2444
2259: dw $2453
225b: dw $2468
225d: dw $2474

225f: f8 bc     mov   x,$bc
2261: f5 23 04  mov   a,$0423+x
2264: f0 09     beq   $226f
2266: fd        mov   y,a
2267: e4 00     mov   a,$00
2269: 28 0f     and   a,#$0f
226b: bc        inc   a
226c: cf        mul   ya
226d: 2f 06     bra   $2275
226f: 8d 00     mov   y,#$00
2271: f7 03     mov   a,($03)+y
2273: 3a 03     incw  $03
2275: d5 27 04  mov   $0427+x,a
2278: 8d 00     mov   y,#$00
227a: f7 03     mov   a,($03)+y
227c: 68 d5     cmp   a,#$d5
227e: d0 06     bne   $2286
2280: f4 bd     mov   a,$bd+x
2282: 08 10     or    a,#$10
2284: d4 bd     mov   $bd+x,a
2286: 38 f0 00  and   $00,#$f0
2289: f5 2f 04  mov   a,$042f+x
228c: 28 0f     and   a,#$0f
228e: 04 00     or    a,$00
2290: d5 2f 04  mov   $042f+x,a
2293: e4 00     mov   a,$00
2295: f0 0b     beq   $22a2
2297: f5 2b 04  mov   a,$042b+x
229a: fd        mov   y,a
229b: e8 01     mov   a,#$01
229d: ad 04     cmp   y,#$04
229f: d0 01     bne   $22a2
22a1: bc        inc   a
22a2: d5 2b 04  mov   $042b+x,a
22a5: e4 03     mov   a,$03
22a7: d5 1b 04  mov   $041b+x,a
22aa: e4 04     mov   a,$04
22ac: d5 1f 04  mov   $041f+x,a
22af: f4 bd     mov   a,$bd+x
22b1: 08 20     or    a,#$20
22b3: d4 bd     mov   $bd+x,a
22b5: 6f        ret

22b6: f8 bc     mov   x,$bc
22b8: f4 bd     mov   a,$bd+x
22ba: 08 40     or    a,#$40
22bc: d4 bd     mov   $bd+x,a
22be: 6f        ret

22bf: f8 bc     mov   x,$bc
22c1: 8d 00     mov   y,#$00
22c3: f7 03     mov   a,($03)+y
22c5: d5 23 04  mov   $0423+x,a
22c8: 5f 18 22  jmp   $2218

22cb: f8 bc     mov   x,$bc
22cd: f5 2f 04  mov   a,$042f+x
22d0: 28 f0     and   a,#$f0
22d2: 8d 00     mov   y,#$00
22d4: 17 03     or    a,($03)+y
22d6: d5 2f 04  mov   $042f+x,a
22d9: 5f 18 22  jmp   $2218

22dc: f8 bc     mov   x,$bc
22de: f5 2f 04  mov   a,$042f+x
22e1: bc        inc   a
22e2: 28 f7     and   a,#$f7
22e4: d5 2f 04  mov   $042f+x,a
22e7: 5f 1a 22  jmp   $221a

22ea: f8 bc     mov   x,$bc
22ec: f5 2f 04  mov   a,$042f+x
22ef: 9c        dec   a
22f0: 28 f7     and   a,#$f7
22f2: d5 2f 04  mov   $042f+x,a
22f5: 5f 1a 22  jmp   $221a

22f8: f8 bc     mov   x,$bc
22fa: f4 bd     mov   a,$bd+x
22fc: 28 ef     and   a,#$ef
22fe: d4 bd     mov   $bd+x,a
2300: e8 04     mov   a,#$04
2302: d5 2b 04  mov   $042b+x,a
2305: 5f 1a 22  jmp   $221a

2308: f8 bc     mov   x,$bc
230a: 8d 00     mov   y,#$00
230c: f7 03     mov   a,($03)+y
230e: d5 4c 04  mov   $044c+x,a
2311: 5f 18 22  jmp   $2218

2314: f8 bc     mov   x,$bc
2316: 8d 00     mov   y,#$00
2318: f7 03     mov   a,($03)+y
231a: c4 05     mov   $05,a
231c: 10 01     bpl   $231f
231e: dc        dec   y
231f: cb 06     mov   $06,y
2321: 8d 00     mov   y,#$00
2323: f5 4c 04  mov   a,$044c+x
2326: 7a 05     addw  ya,$05
2328: 10 04     bpl   $232e
232a: e8 00     mov   a,#$00
232c: 2f 06     bra   $2334
232e: ad 00     cmp   y,#$00
2330: f0 02     beq   $2334
2332: e8 ff     mov   a,#$ff
2334: d5 4c 04  mov   $044c+x,a
2337: 5f 18 22  jmp   $2218

233a: f8 bc     mov   x,$bc
233c: 8d 00     mov   y,#$00
233e: f7 03     mov   a,($03)+y
2340: d5 50 04  mov   $0450+x,a
2343: 5f 18 22  jmp   $2218

2346: f8 bc     mov   x,$bc
2348: 8d 00     mov   y,#$00
234a: f5 50 04  mov   a,$0450+x
234d: 60        clrc
234e: 97 03     adc   a,($03)+y
2350: 10 04     bpl   $2356
2352: e8 00     mov   a,#$00
2354: 2f 06     bra   $235c
2356: 68 1f     cmp   a,#$1f
2358: 90 02     bcc   $235c
235a: e8 1f     mov   a,#$1f
235c: d5 50 04  mov   $0450+x,a
235f: 5f 18 22  jmp   $2218

2362: f8 bc     mov   x,$bc
2364: 8d 00     mov   y,#$00
2366: f7 03     mov   a,($03)+y
2368: d5 54 04  mov   $0454+x,a
236b: 5f 18 22  jmp   $2218

236e: f8 bc     mov   x,$bc
2370: 8d 00     mov   y,#$00
2372: f5 54 04  mov   a,$0454+x
2375: 60        clrc
2376: 97 03     adc   a,($03)+y
2378: d5 54 04  mov   $0454+x,a
237b: 5f 18 22  jmp   $2218

237e: f8 bc     mov   x,$bc
2380: 8d 00     mov   y,#$00
2382: f7 03     mov   a,($03)+y
2384: d5 58 04  mov   $0458+x,a
2387: dd        mov   a,y
2388: d5 5c 04  mov   $045c+x,a
238b: d5 60 04  mov   $0460+x,a
238e: 5f 18 22  jmp   $2218

2391: f8 bc     mov   x,$bc
2393: 8d 00     mov   y,#$00
2395: f7 03     mov   a,($03)+y
2397: d5 3f 04  mov   $043f+x,a
239a: f4 bd     mov   a,$bd+x
239c: 08 08     or    a,#$08
239e: d4 bd     mov   $bd+x,a
23a0: 5f 18 22  jmp   $2218

23a3: f8 bc     mov   x,$bc
23a5: 8d 00     mov   y,#$00
23a7: f7 03     mov   a,($03)+y
23a9: d5 3b 04  mov   $043b+x,a
23ac: 5f 18 22  jmp   $2218

23af: f8 bc     mov   x,$bc
23b1: 8d 00     mov   y,#$00
23b3: f7 03     mov   a,($03)+y
23b5: 9f        xcn   a
23b6: c4 00     mov   $00,a
23b8: f5 64 04  mov   a,$0464+x
23bb: 28 0f     and   a,#$0f
23bd: 04 00     or    a,$00
23bf: d5 64 04  mov   $0464+x,a
23c2: 5f 18 22  jmp   $2218

23c5: f8 bc     mov   x,$bc
23c7: 3f 8a 24  call  $248a
23ca: e4 03     mov   a,$03
23cc: d7 05     mov   ($05)+y,a
23ce: fc        inc   y
23cf: e4 04     mov   a,$04
23d1: d7 05     mov   ($05)+y,a
23d3: fc        inc   y
23d4: cd 00     mov   x,#$00
23d6: e7 03     mov   a,($03+x)
23d8: d7 05     mov   ($05)+y,a
23da: fc        inc   y
23db: cb 00     mov   $00,y
23dd: f8 bc     mov   x,$bc
23df: f5 64 04  mov   a,$0464+x
23e2: 28 f0     and   a,#$f0
23e4: 04 00     or    a,$00
23e6: d5 64 04  mov   $0464+x,a
23e9: 5f 18 22  jmp   $2218

23ec: f8 bc     mov   x,$bc
23ee: 3f 8a 24  call  $248a
23f1: dc        dec   y
23f2: f7 05     mov   a,($05)+y
23f4: 9c        dec   a
23f5: f0 0f     beq   $2406
23f7: d7 05     mov   ($05)+y,a
23f9: dc        dec   y
23fa: f7 05     mov   a,($05)+y
23fc: c4 04     mov   $04,a
23fe: dc        dec   y
23ff: f7 05     mov   a,($05)+y
2401: c4 03     mov   $03,a
2403: 5f 18 22  jmp   $2218

2406: dc        dec   y
2407: dc        dec   y
2408: cb 00     mov   $00,y
240a: f5 64 04  mov   a,$0464+x
240d: 28 f0     and   a,#$f0
240f: 04 00     or    a,$00
2411: d5 64 04  mov   $0464+x,a
2414: 5f 1a 22  jmp   $221a

2417: f8 bc     mov   x,$bc
2419: f5 3b 04  mov   a,$043b+x
241c: 8d 00     mov   y,#$00
241e: 60        clrc
241f: 97 03     adc   a,($03)+y
2421: d5 3b 04  mov   $043b+x,a
2424: 5f 18 22  jmp   $2218

2427: e5 5f 01  mov   a,$015f
242a: 68 05     cmp   a,#$05
242c: d0 08     bne   $2436
242e: f8 bc     mov   x,$bc
2430: f5 10 11  mov   a,$1110+x
2433: 0e 1a 04  tset1 $041a
2436: 5f 1a 22  jmp   $221a

2439: f8 bc     mov   x,$bc
243b: f5 10 11  mov   a,$1110+x
243e: 4e 1a 04  tclr1 $041a
2441: 5f 1a 22  jmp   $221a

2444: 8d 00     mov   y,#$00
2446: f7 03     mov   a,($03)+y
2448: 5d        mov   x,a
2449: fc        inc   y
244a: f7 03     mov   a,($03)+y
244c: c4 04     mov   $04,a
244e: d8 03     mov   $03,x
2450: 5f 1a 22  jmp   $221a

2453: f8 bc     mov   x,$bc
2455: 8d 00     mov   y,#$00
2457: f7 03     mov   a,($03)+y
2459: 28 03     and   a,#$03
245b: c4 00     mov   $00,a
245d: f4 bd     mov   a,$bd+x
245f: 28 fc     and   a,#$fc
2461: 04 00     or    a,$00
2463: d4 bd     mov   $bd+x,a
2465: 5f 18 22  jmp   $2218

2468: f8 bc     mov   x,$bc
246a: 8d 00     mov   y,#$00
246c: f7 03     mov   a,($03)+y
246e: d5 58 04  mov   $0458+x,a
2471: 5f 18 22  jmp   $2218

2474: 8d 00     mov   y,#$00
2476: f7 03     mov   a,($03)+y
2478: 68 5a     cmp   a,#$5a
247a: 90 02     bcc   $247e
247c: e8 5a     mov   a,#$5a
247e: 5d        mov   x,a
247f: f5 ff 26  mov   a,$26ff+x
2482: f8 bc     mov   x,$bc
2484: d5 4c 04  mov   $044c+x,a
2487: 5f 18 22  jmp   $2218

248a: f5 ef 26  mov   a,$26ef+x
248d: c4 05     mov   $05,a
248f: f5 f7 26  mov   a,$26f7+x
2492: c4 06     mov   $06,a
2494: f5 64 04  mov   a,$0464+x
2497: 28 0f     and   a,#$0f
2499: fd        mov   y,a
249a: 6f        ret

249b: f8 bc     mov   x,$bc
249d: f4 bd     mov   a,$bd+x
249f: 28 08     and   a,#$08
24a1: f0 3b     beq   $24de
24a3: f5 3f 04  mov   a,$043f+x
24a6: 28 7f     and   a,#$7f
24a8: 8d 04     mov   y,#$04
24aa: cf        mul   ya
24ab: 7a b8     addw  ya,$b8
24ad: da 03     movw  $03,ya
24af: 8d 03     mov   y,#$03
24b1: f7 03     mov   a,($03)+y
24b3: 30 08     bmi   $24bd
24b5: dc        dec   y
24b6: f7 03     mov   a,($03)+y
24b8: dc        dec   y
24b9: 17 03     or    a,($03)+y
24bb: f0 22     beq   $24df
24bd: d5 13 04  mov   $0413+x,a
24c0: dc        dec   y
24c1: f7 03     mov   a,($03)+y
24c3: d5 0f 04  mov   $040f+x,a
24c6: dc        dec   y
24c7: f7 03     mov   a,($03)+y
24c9: 08 80     or    a,#$80
24cb: d5 0b 04  mov   $040b+x,a
24ce: dc        dec   y
24cf: f7 03     mov   a,($03)+y
24d1: d5 07 04  mov   $0407+x,a
24d4: 3f 26 10  call  $1026
24d7: d5 43 04  mov   $0443+x,a
24da: dd        mov   a,y
24db: d5 47 04  mov   $0447+x,a
24de: 6f        ret

24df: 8d 03     mov   y,#$03
24e1: f7 03     mov   a,($03)+y
24e3: 1c        asl   a
24e4: 1c        asl   a
24e5: fd        mov   y,a
24e6: f6 80 07  mov   a,$0780+y
24e9: d5 07 04  mov   $0407+x,a
24ec: fc        inc   y
24ed: f6 80 07  mov   a,$0780+y
24f0: d5 0b 04  mov   $040b+x,a
24f3: fc        inc   y
24f4: f6 80 07  mov   a,$0780+y
24f7: d5 0f 04  mov   $040f+x,a
24fa: fc        inc   y
24fb: f6 80 07  mov   a,$0780+y
24fe: d5 13 04  mov   $0413+x,a
2501: f5 07 04  mov   a,$0407+x
2504: 2f ce     bra   $24d4
2506: f8 bc     mov   x,$bc
2508: f5 4c 04  mov   a,$044c+x
250b: c4 01     mov   $01,a
250d: f5 50 04  mov   a,$0450+x
2510: 13 c1 02  bbc0  $c1,$2515
2513: e8 0f     mov   a,#$0f
2515: c4 00     mov   $00,a
2517: 3f ee 10  call  $10ee
251a: cb 04     mov   $04,y
251c: ec 4b 04  mov   y,$044b
251f: cf        mul   ya
2520: cb 03     mov   $03,y
2522: e4 04     mov   a,$04
2524: ec 4b 04  mov   y,$044b
2527: cf        mul   ya
2528: cb 04     mov   $04,y
252a: 03 c1 18  bbs0  $c1,$2545
252d: f8 bc     mov   x,$bc
252f: f4 bd     mov   a,$bd+x
2531: 28 01     and   a,#$01
2533: f0 05     beq   $253a
2535: 58 ff 03  eor   $03,#$ff
2538: ab 03     inc   $03
253a: f4 bd     mov   a,$bd+x
253c: 28 02     and   a,#$02
253e: f0 05     beq   $2545
2540: 58 ff 04  eor   $04,#$ff
2543: ab 04     inc   $04
2545: f8 bc     mov   x,$bc
2547: e4 03     mov   a,$03
2549: d5 f7 03  mov   $03f7+x,a
254c: e4 04     mov   a,$04
254e: d5 fb 03  mov   $03fb+x,a
2551: 6f        ret

2552: f8 bc     mov   x,$bc
2554: f5 2f 04  mov   a,$042f+x
2557: 28 f0     and   a,#$f0
2559: d0 03     bne   $255e
255b: 5f 18 26  jmp   $2618

255e: f5 64 04  mov   a,$0464+x
2561: 28 f0     and   a,#$f0
2563: f0 20     beq   $2585
2565: f4 bd     mov   a,$bd+x
2567: 28 20     and   a,#$20
2569: f0 13     beq   $257e
256b: f5 2f 04  mov   a,$042f+x
256e: 9f        xcn   a
256f: 28 0f     and   a,#$0f
2571: 60        clrc
2572: 95 3b 04  adc   a,$043b+x
2575: 3f 61 0f  call  $0f61
2578: f4 bd     mov   a,$bd+x
257a: 28 df     and   a,#$df
257c: d4 bd     mov   $bd+x,a
257e: f5 10 11  mov   a,$1110+x
2581: 0e 19 04  tset1 $0419
2584: 6f        ret

2585: f4 bd     mov   a,$bd+x
2587: 28 20     and   a,#$20
2589: f0 47     beq   $25d2
258b: f5 43 04  mov   a,$0443+x
258e: c4 03     mov   $03,a
2590: f5 47 04  mov   a,$0447+x
2593: c4 04     mov   $04,a
2595: f5 2f 04  mov   a,$042f+x
2598: 28 07     and   a,#$07
259a: 8d 0c     mov   y,#$0c
259c: cf        mul   ya
259d: c4 00     mov   $00,a
259f: f5 2f 04  mov   a,$042f+x
25a2: 28 f0     and   a,#$f0
25a4: 9f        xcn   a
25a5: 9c        dec   a
25a6: 60        clrc
25a7: 84 00     adc   a,$00
25a9: 8d 02     mov   y,#$02
25ab: 60        clrc
25ac: 97 03     adc   a,($03)+y
25ae: 60        clrc
25af: 95 3b 04  adc   a,$043b+x
25b2: c4 00     mov   $00,a
25b4: 8f 00 05  mov   $05,#$00
25b7: 8f 00 06  mov   $06,#$00
25ba: 3f 2c 10  call  $102c
25bd: da 03     movw  $03,ya
25bf: f8 bc     mov   x,$bc
25c1: 8d 00     mov   y,#$00
25c3: f5 54 04  mov   a,$0454+x
25c6: 10 01     bpl   $25c9
25c8: dc        dec   y
25c9: 7a 03     addw  ya,$03
25cb: d5 33 04  mov   $0433+x,a
25ce: dd        mov   a,y
25cf: d5 37 04  mov   $0437+x,a
25d2: f5 33 04  mov   a,$0433+x
25d5: c4 03     mov   $03,a
25d7: f5 37 04  mov   a,$0437+x
25da: c4 04     mov   $04,a
25dc: f5 58 04  mov   a,$0458+x
25df: f0 2d     beq   $260e
25e1: f5 2b 04  mov   a,$042b+x
25e4: 68 01     cmp   a,#$01
25e6: d0 08     bne   $25f0
25e8: e8 00     mov   a,#$00
25ea: d5 5c 04  mov   $045c+x,a
25ed: d5 60 04  mov   $0460+x,a
25f0: 8d 00     mov   y,#$00
25f2: f5 58 04  mov   a,$0458+x
25f5: 10 01     bpl   $25f8
25f7: dc        dec   y
25f8: 60        clrc
25f9: 95 5c 04  adc   a,$045c+x
25fc: d5 5c 04  mov   $045c+x,a
25ff: dd        mov   a,y
2600: 95 60 04  adc   a,$0460+x
2603: d5 60 04  mov   $0460+x,a
2606: fd        mov   y,a
2607: f5 5c 04  mov   a,$045c+x
260a: 7a 03     addw  ya,$03
260c: da 03     movw  $03,ya
260e: e4 03     mov   a,$03
2610: d5 ff 03  mov   $03ff+x,a
2613: e4 04     mov   a,$04
2615: d5 03 04  mov   $0403+x,a
2618: f4 bd     mov   a,$bd+x
261a: 28 df     and   a,#$df
261c: d4 bd     mov   $bd+x,a
261e: 6f        ret

261f: eb bc     mov   y,$bc
2621: f6 2b 04  mov   a,$042b+y
2624: 1c        asl   a
2625: 5d        mov   x,a
2626: 1f 29 26  jmp   ($2629+x)

2629: 33 26 3a  bbc1  $26,$2666
262c: 26        and   a,(x)
262d: 53 26 33  bbc2  $26,$2663
2630: 26        and   a,(x)
2631: 33 26 f6  bbc1  $26,$262a
2634: 10 11     bpl   $2647
2636: 0e 18 04  tset1 $0418
2639: 6f        ret

263a: f6 27 04  mov   a,$0427+y
263d: 9c        dec   a
263e: d0 07     bne   $2647
2640: f6 bd 00  mov   a,$00bd+y
2643: 28 10     and   a,#$10
2645: f0 ec     beq   $2633
2647: f6 10 11  mov   a,$1110+y
264a: 0e 17 04  tset1 $0417
264d: e8 02     mov   a,#$02
264f: d6 2b 04  mov   $042b+y,a
2652: 6f        ret

2653: 6f        ret

2654: e8 00     mov   a,#$00
2656: c5 41 01  mov   $0141,a
2659: 8f 03 bc  mov   $bc,#$03
265c: f8 bc     mov   x,$bc
265e: f4 bd     mov   a,$bd+x
2660: 10 4f     bpl   $26b1
2662: 28 40     and   a,#$40
2664: d0 76     bne   $26dc
2666: f4 bd     mov   a,$bd+x
2668: 28 08     and   a,#$08
266a: f0 0d     beq   $2679
266c: f4 bd     mov   a,$bd+x
266e: 28 f7     and   a,#$f7
2670: d4 bd     mov   $bd+x,a
2672: f5 07 04  mov   a,$0407+x
2675: 8d 04     mov   y,#$04
2677: 4f 00     pcall $00               ; set $0407+x to SRCN
2679: f5 ff 03  mov   a,$03ff+x
267c: 8d 02     mov   y,#$02
267e: 4f 00     pcall $00               ; set $03ff+x to P(L)
2680: f5 03 04  mov   a,$0403+x
2683: 8d 03     mov   y,#$03
2685: 4f 00     pcall $00               ; set $0403+x to P(H)
2687: e5 17 04  mov   a,$0417
268a: 35 10 11  and   a,$1110+x
268d: f0 0e     beq   $269d
268f: f5 0b 04  mov   a,$040b+x
2692: 8d 05     mov   y,#$05
2694: 4f 00     pcall $00               ; set $040b+x to ADSR(1)
2696: f5 0f 04  mov   a,$040f+x
2699: 8d 06     mov   y,#$06
269b: 4f 00     pcall $00               ; set $040f+x to ADSR(2)
269d: f5 f7 03  mov   a,$03f7+x
26a0: 8d 01     mov   y,#$01
26a2: 4f 00     pcall $00               ; set $03f7+x to VOL(R)
26a4: f5 fb 03  mov   a,$03fb+x
26a7: 8d 00     mov   y,#$00
26a9: 4f 00     pcall $00               ; set $03fb+x to VOL(L)
26ab: f5 10 11  mov   a,$1110+x
26ae: 0e 41 01  tset1 $0141
26b1: 8b bc     dec   $bc
26b3: 10 a7     bpl   $265c
26b5: e5 1a 04  mov   a,$041a
26b8: c5 51 01  mov   $0151,a
26bb: e5 19 04  mov   a,$0419
26be: c5 4f 01  mov   $014f,a
26c1: e5 18 04  mov   a,$0418
26c4: f0 0e     beq   $26d4
26c6: 8d 5c     mov   y,#$5c
26c8: 4f 0c     pcall $0c               ; set KOF
26ca: 8d 0b     mov   y,#$0b
26cc: fe fe     dbnz  y,$26cc
26ce: e8 00     mov   a,#$00
26d0: 8d 5c     mov   y,#$5c
26d2: 4f 0c     pcall $0c               ; set #$00 to KOF
26d4: e5 17 04  mov   a,$0417
26d7: 8d 4c     mov   y,#$4c
26d9: 5f 0c ff  jmp   $ff0c             ; set $0417 to KOL

26dc: f5 10 11  mov   a,$1110+x
26df: 0e 18 04  tset1 $0418
26e2: 4e 1a 04  tclr1 $041a
26e5: e8 00     mov   a,#$00
26e7: d4 bd     mov   $bd+x,a
26e9: bc        inc   a
26ea: d5 42 01  mov   $0142+x,a
26ed: 2f c2     bra   $26b1

26ef: db $68,$71,$7a,$83,$8c,$95,$9e,$a7

26f7: db $04,$04,$04,$04,$04,$04,$04,$04

26ff: db $00,$01,$02,$02,$02,$02,$02,$02
2707: db $02,$02,$03,$03,$03,$03,$03,$03
270f: db $04,$04,$04,$04,$05,$05,$05,$05
2717: db $06,$06,$06,$07,$07,$08,$08,$09
271f: db $09,$0a,$0a,$0b,$0b,$0c,$0d,$0e
2727: db $0e,$0f,$10,$11,$12,$13,$14,$15
272f: db $17,$18,$1a,$1b,$1d,$1e,$20,$22
2737: db $24,$26,$28,$2b,$2d,$30,$33,$36
273f: db $39,$3c,$40,$44,$48,$4c,$51,$55
2747: db $5a,$60,$66,$6c,$72,$79,$80,$87
274f: db $8f,$98,$a1,$aa,$b5,$bf,$cb,$d7
2757: db $e3,$f1,$ff

; pcall $00 - set A to dsp reg Y of channel X
ff00: 2d        push  a
ff01: 7d        mov   a,x
ff02: 9f        xcn   a
ff03: cc 0d 00  mov   $000d,y
ff06: 60        clrc
ff07: 85 0d 00  adc   a,$000d
ff0a: fd        mov   y,a
ff0b: ae        pop   a
; pcall $0c - set A to dsp reg Y
ff0c: cc f2 00  mov   $00f2,y
ff0f: c5 f3 00  mov   $00f3,a
ff12: 6f        ret

; pcall $13 - get dsp reg Y of channel X to A
ff13: 7d        mov   a,x
ff14: 9f        xcn   a
ff15: cc 0d 00  mov   $000d,y
ff18: 60        clrc
ff19: 85 0d 00  adc   a,$000d
ff1c: fd        mov   y,a
; pcall $1d - get dsp reg Y to A
ff1d: cc f2 00  mov   $00f2,y
ff20: e5 f3 00  mov   a,$00f3
ff23: 6f        ret

; pcall $24
ff24: f4 20     mov   a,$20+x
ff26: d4 24     mov   $24+x,a
ff28: f4 f4     mov   a,$f4+x
ff2a: 74 f4     cmp   a,$f4+x
ff2c: d0 fa     bne   $ff28
ff2e: d4 20     mov   $20+x,a
ff30: 6f        ret

; pcall $31
ff31: 2d        push  a
ff32: 6d        push  y
ff33: 3f fa 08  call  $08fa
ff36: ee        pop   y
ff37: ae        pop   a
ff38: 6f        ret
