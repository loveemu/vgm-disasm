0800: 40        setp
0801: cd 2f     mov   x,#$2f
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: c6        mov   (x),a
0807: 1d        dec   x
0808: 10 fc     bpl   $0806
080a: 8f 00 51  mov   $51,#$00
080d: 8f 00 4f  mov   $4f,#$00
0810: 3f 67 0c  call  $0c67
0813: 20        clrp
0814: 8f 00 2d  mov   $2d,#$00
0817: 8f 00 09  mov   $09,#$00
081a: 8f 00 09  mov   $09,#$00
081d: cd 2f     mov   x,#$2f
081f: bd        mov   sp,x
0820: 3f 13 0b  call  $0b13
0823: 3f 75 0b  call  $0b75
0826: 3f ad 0b  call  $0bad
0829: 3f ce 08  call  $08ce
082c: 3f 10 09  call  $0910
082f: 3f 81 10  call  $1081
0832: 3f 38 1b  call  $1b38
0835: e8 80     mov   a,#$80
0837: cd 00     mov   x,#$00
0839: 3f 8c 0b  call  $0b8c
083c: e8 20     mov   a,#$20
083e: cd 01     mov   x,#$01
0840: 3f 8c 0b  call  $0b8c
0843: 8f 00 28  mov   $28,#$00
0846: 8f 00 29  mov   $29,#$00
0849: 8f 02 2c  mov   $2c,#$02
084c: e8 96     mov   a,#$96
084e: 3f 9f 08  call  $089f
0851: e8 aa     mov   a,#$aa
0853: c4 f6     mov   $f6,a
0855: c4 f7     mov   $f7,a
0857: 3f 65 08  call  $0865
085a: 3f a4 0d  call  $0da4
085d: 3f f0 08  call  $08f0
0860: 3f df 08  call  $08df
0863: 2f f2     bra   $0857
0865: e5 fe 00  mov   a,$00fe
0868: 28 0f     and   a,#$0f
086a: d0 01     bne   $086d
086c: 6f        ret

086d: 2d        push  a
086e: 3f 25 19  call  $1925
0871: ae        pop   a
0872: 2d        push  a
0873: 8d 40     mov   y,#$40
0875: cf        mul   ya
0876: 60        clrc
0877: 84 28     adc   a,$28
0879: c4 28     mov   $28,a
087b: 90 09     bcc   $0886
087d: 3f 6b 1b  call  $1b6b
0880: 3f 00 0c  call  $0c00
0883: 3f e1 18  call  $18e1
0886: ae        pop   a
0887: eb 2a     mov   y,$2a
0889: cf        mul   ya
088a: 60        clrc
088b: 84 29     adc   a,$29
088d: c4 29     mov   $29,a
088f: dd        mov   a,y
0890: d0 02     bne   $0894
0892: 90 d8     bcc   $086c
0894: 3f 36 0c  call  $0c36
0897: 3f 99 10  call  $1099
089a: 3f 00 0c  call  $0c00
089d: 2f c6     bra   $0865
089f: 68 0a     cmp   a,#$0a
08a1: b0 02     bcs   $08a5
08a3: e8 0a     mov   a,#$0a
08a5: c4 2a     mov   $2a,a
08a7: c4 2b     mov   $2b,a
08a9: 8d 00     mov   y,#$00
08ab: cd 0a     mov   x,#$0a
08ad: 9e        div   ya,x
08ae: 5d        mov   x,a
08af: e4 2a     mov   a,$2a
08b1: 80        setc
08b2: b5 67 10  sbc   a,$1067+x
08b5: ad 05     cmp   y,#$05
08b7: 90 01     bcc   $08ba
08b9: 9c        dec   a
08ba: eb 2c     mov   y,$2c
08bc: f0 03     beq   $08c1
08be: 5c        lsr   a
08bf: fe fd     dbnz  y,$08be
08c1: c4 2a     mov   $2a,a
08c3: 6f        ret

08c4: c4 2c     mov   $2c,a
08c6: 6d        push  y
08c7: e4 2b     mov   a,$2b
08c9: 3f 9f 08  call  $089f
08cc: ee        pop   y
08cd: 6f        ret

08ce: e4 14     mov   a,$14
08d0: 08 30     or    a,#$30
08d2: c5 f1 00  mov   $00f1,a
08d5: cd 07     mov   x,#$07
08d7: e8 00     mov   a,#$00
08d9: d4 18     mov   $18+x,a
08db: 1d        dec   x
08dc: 10 fb     bpl   $08d9
08de: 6f        ret

08df: cd 00     mov   x,#$00
08e1: 4f 24     pcall $24
08e3: 5d        mov   x,a
08e4: f0 09     beq   $08ef
08e6: 48 80     eor   a,#$80
08e8: c4 f4     mov   $f4,a
08ea: 69 1c 18  cmp   ($18),($1c)
08ed: d0 2e     bne   $091d
08ef: 6f        ret

08f0: cd 01     mov   x,#$01
08f2: 4f 24     pcall $24
08f4: 69 1d 19  cmp   ($19),($1d)
08f7: d0 01     bne   $08fa
08f9: 6f        ret

08fa: cd 02     mov   x,#$02
08fc: 4f 24     pcall $24
08fe: cd 03     mov   x,#$03
0900: 4f 24     pcall $24
0902: e8 00     mov   a,#$00
0904: c4 f6     mov   $f6,a
0906: c4 f7     mov   $f7,a
0908: e4 19     mov   a,$19
090a: 48 80     eor   a,#$80
090c: c4 f5     mov   $f5,a
090e: 2f 21     bra   $0931
0910: 8f 00 22  mov   $22,#$00
0913: 8f 00 25  mov   $25,#$00
0916: 8f 80 20  mov   $20,#$80
0919: 8f 80 21  mov   $21,#$80
091c: 6f        ret

091d: e4 18     mov   a,$18
091f: 28 7f     and   a,#$7f
0921: f0 0d     beq   $0930
0923: 68 41     cmp   a,#$41
0925: b0 04     bcs   $092b
0927: 9c        dec   a
0928: c4 20     mov   $20,a
092a: 6f        ret

092b: 80        setc
092c: a8 41     sbc   a,#$41
092e: c4 21     mov   $21,a
0930: 6f        ret

0931: e4 19     mov   a,$19
0933: 28 7f     and   a,#$7f
0935: 1c        asl   a
0936: 5d        mov   x,a
0937: 1f 41 09  jmp   ($0941+x)

093a: e8 aa     mov   a,#$aa
093c: c4 f6     mov   $f6,a
093e: c4 f7     mov   $f7,a
0940: 6f        ret

0941: dw $093a  ;
0943: dw $0985  ;
0945: dw $0985  ;
0947: dw $098e  ;
0949: dw $0997  ;
094b: dw $09a0  ;
094d: dw $09b1  ;
094f: dw $09ba  ;
0951: dw $093a  ;
0953: dw $093a  ;
0955: dw $093a  ;
0957: dw $09bd  ;
0959: dw $09d8  ;
095b: dw $09f3  ;
095d: dw $0a0b  ;
095f: dw $0a23  ;
0961: dw $0a3b  ;
0963: dw $0a7a  ;
0965: dw $0a83  ;
0967: dw $0a8c  ;
0969: dw $0a9b  ;
096b: dw $0aa5  ;
096d: dw $0aaf  ;
096f: dw $0ab8  ;
0971: dw $0ac1  ;
0973: dw $0aca  ;
0975: dw $0ad3  ;
0977: dw $0adc  ;
0979: dw $0ae4  ;
097b: dw $0aed  ;
097d: dw $0af0  ;
097f: dw $093a  ;
0981: dw $0afb  ;
0983: dw $0b04  ;

0985: e4 2b     mov   a,$2b
0987: c4 f7     mov   $f7,a
0989: e8 aa     mov   a,#$aa
098b: c4 f6     mov   $f6,a
098d: 6f        ret

098e: e8 00     mov   a,#$00
0990: c4 f7     mov   $f7,a
0992: e8 aa     mov   a,#$aa
0994: c4 f6     mov   $f6,a
0996: 6f        ret

0997: e8 3a     mov   a,#$3a
0999: c4 f7     mov   $f7,a
099b: e8 aa     mov   a,#$aa
099d: c4 f6     mov   $f6,a
099f: 6f        ret

09a0: fa 1a 0b  mov   ($0b),($1a)
09a3: fa 1b 0c  mov   ($0c),($1b)
09a6: 8d 00     mov   y,#$00
09a8: f7 0b     mov   a,($0b)+y
09aa: c4 f7     mov   $f7,a
09ac: e8 aa     mov   a,#$aa
09ae: c4 f6     mov   $f6,a
09b0: 6f        ret

09b1: e8 e0     mov   a,#$e0
09b3: 8d 6c     mov   y,#$6c
09b5: 4f 0c     pcall $0c
09b7: 5f c0 ff  jmp   $ffc0

09ba: 5f 1d 08  jmp   $081d

09bd: 8f 01 22  mov   $22,#$01
09c0: 3f 99 10  call  $1099
09c3: fa 0d 07  mov   ($07),($0d)
09c6: fa 0e 08  mov   ($08),($0e)
09c9: 3f 2a 0e  call  $0e2a
09cc: 3f 65 08  call  $0865
09cf: 3f ce 08  call  $08ce
09d2: 3f 81 10  call  $1081
09d5: 5f 3a 09  jmp   $093a

09d8: 8f 01 25  mov   $25,#$01
09db: 3f 6b 1b  call  $1b6b
09de: fa 0f 07  mov   ($07),($0f)
09e1: fa 10 08  mov   ($08),($10)
09e4: 3f 2a 0e  call  $0e2a
09e7: 3f 65 08  call  $0865
09ea: 3f ce 08  call  $08ce
09ed: 3f 38 1b  call  $1b38
09f0: 5f 3a 09  jmp   $093a

09f3: 8f 01 25  mov   $25,#$01
09f6: 3f 6b 1b  call  $1b6b
09f9: 8f 01 22  mov   $22,#$01
09fc: 3f 99 10  call  $1099
09ff: 8f 6b 07  mov   $07,#$6b
0a02: 8f 0f 08  mov   $08,#$0f
0a05: 3f da 0d  call  $0dda
0a08: 5f 1d 08  jmp   $081d

0a0b: 8f 01 22  mov   $22,#$01
0a0e: 3f 99 10  call  $1099
0a11: fa 0d 07  mov   ($07),($0d)
0a14: fa 0e 08  mov   ($08),($0e)
0a17: 3f da 0d  call  $0dda
0a1a: 3f ce 08  call  $08ce
0a1d: 3f 81 10  call  $1081
0a20: 5f 3a 09  jmp   $093a

0a23: 8f 01 25  mov   $25,#$01
0a26: 3f 6b 1b  call  $1b6b
0a29: fa 0f 07  mov   ($07),($0f)
0a2c: fa 10 08  mov   ($08),($10)
0a2f: 3f da 0d  call  $0dda
0a32: 3f ce 08  call  $08ce
0a35: 3f 38 1b  call  $1b38
0a38: 5f 3a 09  jmp   $093a

0a3b: e5 30 01  mov   a,$0130
0a3e: 05 31 01  or    a,$0131
0a41: f0 19     beq   $0a5c
0a43: 8f 01 25  mov   $25,#$01
0a46: 3f 6b 1b  call  $1b6b
0a49: 8f 01 22  mov   $22,#$01
0a4c: 3f 99 10  call  $1099
0a4f: cd 07     mov   x,#$07
0a51: 8d 08     mov   y,#$08
0a53: 4f 13     pcall $13
0a55: 68 02     cmp   a,#$02
0a57: b0 f8     bcs   $0a51
0a59: 1d        dec   x
0a5a: 10 f5     bpl   $0a51
0a5c: e8 a0     mov   a,#$a0
0a5e: 8d 6c     mov   y,#$6c
0a60: 4f 0c     pcall $0c
0a62: e8 00     mov   a,#$00
0a64: 8d 4d     mov   y,#$4d
0a66: 4f 0c     pcall $0c
0a68: 8d 2c     mov   y,#$2c
0a6a: 4f 0c     pcall $0c
0a6c: 8d 3c     mov   y,#$3c
0a6e: 4f 0c     pcall $0c
0a70: c4 07     mov   $07,a
0a72: c4 08     mov   $08,a
0a74: 3f da 0d  call  $0dda
0a77: 5f 1d 08  jmp   $081d

0a7a: 8f 01 22  mov   $22,#$01
0a7d: 3f 99 10  call  $1099
0a80: 5f 3a 09  jmp   $093a

0a83: 8f 01 25  mov   $25,#$01
0a86: 3f 6b 1b  call  $1b6b
0a89: 5f 3a 09  jmp   $093a

0a8c: 8f 01 25  mov   $25,#$01
0a8f: 3f 6b 1b  call  $1b6b
0a92: 8f 01 22  mov   $22,#$01
0a95: 3f 99 10  call  $1099
0a98: 5f 3a 09  jmp   $093a

0a9b: e5 30 01  mov   a,$0130
0a9e: c4 f7     mov   $f7,a
0aa0: e8 aa     mov   a,#$aa
0aa2: c4 f6     mov   $f6,a
0aa4: 6f        ret

0aa5: e5 31 01  mov   a,$0131
0aa8: c4 f7     mov   $f7,a
0aaa: e8 aa     mov   a,#$aa
0aac: c4 f6     mov   $f6,a
0aae: 6f        ret

0aaf: fa 1a 23  mov   ($23),($1a)
0ab2: 8f 02 22  mov   $22,#$02
0ab5: 5f 3a 09  jmp   $093a

0ab8: fa 1a 26  mov   ($26),($1a)
0abb: 8f 02 25  mov   $25,#$02
0abe: 5f 3a 09  jmp   $093a

0ac1: fa 1a 23  mov   ($23),($1a)
0ac4: 8f 03 22  mov   $22,#$03
0ac7: 5f 3a 09  jmp   $093a

0aca: fa 1a 23  mov   ($23),($1a)
0acd: 8f 04 22  mov   $22,#$04
0ad0: 5f 3a 09  jmp   $093a

0ad3: fa 1a 23  mov   ($23),($1a)
0ad6: 8f 05 22  mov   $22,#$05
0ad9: 5f 3a 09  jmp   $093a

0adc: e4 1a     mov   a,$1a
0ade: 3f 9f 08  call  $089f
0ae1: 5f 3a 09  jmp   $093a

0ae4: 12 2d     clr0  $2d
0ae6: 13 1a 07  bbc0  $1a,$0af0
0ae9: 02 2d     set0  $2d
0aeb: 2f 03     bra   $0af0
0aed: 58 01 2d  eor   $2d,#$01
0af0: e4 2d     mov   a,$2d
0af2: 28 01     and   a,#$01
0af4: c4 f7     mov   $f7,a
0af6: e8 aa     mov   a,#$aa
0af8: c4 f6     mov   $f6,a
0afa: 6f        ret

0afb: fa 1a 09  mov   ($09),($1a)
0afe: fa 1b 0a  mov   ($0a),($1b)
0b01: 5f 3a 09  jmp   $093a

0b04: e4 1a     mov   a,$1a
0b06: 8d 00     mov   y,#$00
0b08: d7 09     mov   ($09)+y,a
0b0a: f7 09     mov   a,($09)+y
0b0c: c4 f7     mov   $f7,a
0b0e: e8 aa     mov   a,#$aa
0b10: c4 f6     mov   $f6,a
0b12: 6f        ret

0b13: 8d ff     mov   y,#$ff
0b15: fc        inc   y
0b16: f6 6b 0f  mov   a,$0f6b+y
0b19: fc        inc   y
0b1a: 1c        asl   a
0b1b: 5d        mov   x,a
0b1c: 1f 1f 0b  jmp   ($0b1f+x)

0b1f: dw $0b2f  ;
0b21: dw $0b30  ;
0b23: dw $0b3d  ;
0b25: dw $0b4a  ;
0b27: dw $0b2f  ;
0b29: dw $0b52  ;
0b2b: dw $0b59  ;
0b2d: dw $0b68  ;

0b2f: 6f        ret

0b30: f6 6b 0f  mov   a,$0f6b+y
0b33: c4 0d     mov   $0d,a
0b35: fc        inc   y
0b36: f6 6b 0f  mov   a,$0f6b+y
0b39: c4 0e     mov   $0e,a
0b3b: 2f d8     bra   $0b15
0b3d: f6 6b 0f  mov   a,$0f6b+y
0b40: c4 0f     mov   $0f,a
0b42: fc        inc   y
0b43: f6 6b 0f  mov   a,$0f6b+y
0b46: c4 10     mov   $10,a
0b48: 2f cb     bra   $0b15
0b4a: f6 6b 0f  mov   a,$0f6b+y
0b4d: c5 4b 01  mov   $014b,a
0b50: 2f c3     bra   $0b15
0b52: f6 6b 0f  mov   a,$0f6b+y
0b55: c4 11     mov   $11,a
0b57: 2f bc     bra   $0b15
0b59: f6 6b 0f  mov   a,$0f6b+y
0b5c: c5 49 01  mov   $0149,a
0b5f: fc        inc   y
0b60: f6 6b 0f  mov   a,$0f6b+y
0b63: c5 4a 01  mov   $014a,a
0b66: 2f ad     bra   $0b15
0b68: f6 6b 0f  mov   a,$0f6b+y
0b6b: c4 12     mov   $12,a
0b6d: fc        inc   y
0b6e: f6 6b 0f  mov   a,$0f6b+y
0b71: c4 13     mov   $13,a
0b73: 2f a0     bra   $0b15
0b75: e8 00     mov   a,#$00
0b77: c5 f1 00  mov   $00f1,a
0b7a: c5 fa 00  mov   $00fa,a
0b7d: c5 fb 00  mov   $00fb,a
0b80: c5 fc 00  mov   $00fc,a
0b83: c4 14     mov   $14,a
0b85: c4 15     mov   $15,a
0b87: c4 16     mov   $16,a
0b89: c4 17     mov   $17,a
0b8b: 6f        ret

0b8c: d4 15     mov   $15+x,a
0b8e: f5 5b 0f  mov   a,$0f5b+x
0b91: fd        mov   y,a
0b92: 3f a3 0b  call  $0ba3
0b95: f4 15     mov   a,$15+x
0b97: d5 fa 00  mov   $00fa+x,a
0b9a: dd        mov   a,y
0b9b: 04 14     or    a,$14
0b9d: c5 f1 00  mov   $00f1,a
0ba0: c4 14     mov   $14,a
0ba2: 6f        ret

0ba3: 48 ff     eor   a,#$ff
0ba5: 24 14     and   a,$14
0ba7: c5 f1 00  mov   $00f1,a
0baa: c4 14     mov   $14,a
0bac: 6f        ret

0bad: 40        setp
0bae: cd 18     mov   x,#$18
0bb0: e8 00     mov   a,#$00
0bb2: d4 2f     mov   $2f+x,a
0bb4: 1d        dec   x
0bb5: d0 fb     bne   $0bb2
0bb7: 8f 20 48  mov   $48,#$20
0bba: e8 e0     mov   a,#$e0
0bbc: 8d 6c     mov   y,#$6c
0bbe: 4f 0c     pcall $0c
0bc0: 3f 70 0d  call  $0d70
0bc3: cd 07     mov   x,#$07
0bc5: e8 00     mov   a,#$00
0bc7: 8d 01     mov   y,#$01
0bc9: 4f 00     pcall $00
0bcb: 8d 00     mov   y,#$00
0bcd: 4f 00     pcall $00
0bcf: 1d        dec   x
0bd0: 10 f5     bpl   $0bc7
0bd2: e4 49     mov   a,$49
0bd4: 8d 0c     mov   y,#$0c
0bd6: 4f 0c     pcall $0c
0bd8: e4 4a     mov   a,$4a
0bda: 8d 1c     mov   y,#$1c
0bdc: 4f 0c     pcall $0c
0bde: e8 00     mov   a,#$00
0be0: 8d 3d     mov   y,#$3d
0be2: 4f 0c     pcall $0c
0be4: 8d 2d     mov   y,#$2d
0be6: 4f 0c     pcall $0c
0be8: e8 ff     mov   a,#$ff
0bea: 8d 5c     mov   y,#$5c
0bec: 4f 0c     pcall $0c
0bee: 8d 0b     mov   y,#$0b
0bf0: fe fe     dbnz  y,$0bf0
0bf2: e8 00     mov   a,#$00
0bf4: 8d 5c     mov   y,#$5c
0bf6: 4f 0c     pcall $0c
0bf8: e4 4b     mov   a,$4b
0bfa: 8d 5d     mov   y,#$5d
0bfc: 4f 0c     pcall $0c
0bfe: 20        clrp
0bff: 6f        ret

0c00: 40        setp
0c01: 3f 67 0c  call  $0c67
0c04: e4 48     mov   a,$48
0c06: 8d 6c     mov   y,#$6c
0c08: 4f 0c     pcall $0c
0c0a: e4 31     mov   a,$31
0c0c: 48 ff     eor   a,#$ff
0c0e: 24 3e     and   a,$3e
0c10: c4 4d     mov   $4d,a
0c12: e4 31     mov   a,$31
0c14: 24 3f     and   a,$3f
0c16: 04 4d     or    a,$4d
0c18: 8d 3d     mov   y,#$3d
0c1a: 4f 0c     pcall $0c
0c1c: e4 31     mov   a,$31
0c1e: 48 ff     eor   a,#$ff
0c20: 24 3a     and   a,$3a
0c22: c4 4d     mov   $4d,a
0c24: e4 31     mov   a,$31
0c26: 24 3b     and   a,$3b
0c28: 04 4d     or    a,$4d
0c2a: 8d 4c     mov   y,#$4c
0c2c: 4f 0c     pcall $0c
0c2e: 8f 00 3a  mov   $3a,#$00
0c31: 8f 00 3b  mov   $3b,#$00
0c34: 20        clrp
0c35: 6f        ret

0c36: 40        setp
0c37: 8f 00 4d  mov   $4d,#$00
0c3a: e4 31     mov   a,$31
0c3c: 48 ff     eor   a,#$ff
0c3e: 24 3c     and   a,$3c
0c40: 2f 06     bra   $0c48
0c42: 40        setp
0c43: 8f 01 4d  mov   $4d,#$01
0c46: e4 3d     mov   a,$3d
0c48: f0 1b     beq   $0c65
0c4a: c4 4e     mov   $4e,a
0c4c: cd 07     mov   x,#$07
0c4e: 0b 4e     asl   $4e
0c50: 90 0c     bcc   $0c5e
0c52: e8 9f     mov   a,#$9f
0c54: 8d 07     mov   y,#$07
0c56: 4f 00     pcall $00
0c58: e8 00     mov   a,#$00
0c5a: 8d 05     mov   y,#$05
0c5c: 4f 00     pcall $00
0c5e: 1d        dec   x
0c5f: 10 ed     bpl   $0c4e
0c61: f8 4d     mov   x,$4d
0c63: d4 3c     mov   $3c+x,a
0c65: 20        clrp
0c66: 6f        ret

0c67: e4 4f     mov   a,$4f
0c69: 1c        asl   a
0c6a: 5d        mov   x,a
0c6b: 1f 6e 0c  jmp   ($0c6e+x)

0c6e: dw $0c7a  ;
0c70: dw $0c9b  ;
0c72: dw $0d24  ;
0c74: dw $0d25  ;
0c76: dw $0d24  ;
0c78: dw $0d40  ;

0c7a: e8 00     mov   a,#$00
0c7c: c4 50     mov   $50,a
0c7e: c4 40     mov   $40,a
0c80: c4 41     mov   $41,a
0c82: 8d 4d     mov   y,#$4d
0c84: 4f 0c     pcall $0c
0c86: c4 42     mov   $42,a
0c88: 8d 2c     mov   y,#$2c
0c8a: 4f 0c     pcall $0c
0c8c: c4 43     mov   $43,a
0c8e: 8d 3c     mov   y,#$3c
0c90: 4f 0c     pcall $0c
0c92: a2 48     set5  $48
0c94: e4 48     mov   a,$48
0c96: 8d 6c     mov   y,#$6c
0c98: 5f 0c ff  jmp   $ff0c

0c9b: 8f 01 50  mov   $50,#$01
0c9e: 8d 7d     mov   y,#$7d
0ca0: 4f 1d     pcall $1d
0ca2: 28 0f     and   a,#$0f
0ca4: 64 45     cmp   a,$45
0ca6: f0 36     beq   $0cde
0ca8: 48 ff     eor   a,#$ff
0caa: f8 51     mov   x,$51
0cac: 10 03     bpl   $0cb1
0cae: 60        clrc
0caf: 84 51     adc   a,$51
0cb1: c4 51     mov   $51,a
0cb3: e8 00     mov   a,#$00
0cb5: 8d 4d     mov   y,#$4d
0cb7: 4f 0c     pcall $0c
0cb9: 8d 2c     mov   y,#$2c
0cbb: 4f 0c     pcall $0c
0cbd: 8d 3c     mov   y,#$3c
0cbf: 4f 0c     pcall $0c
0cc1: 8d 0d     mov   y,#$0d
0cc3: 4f 0c     pcall $0c
0cc5: a2 48     set5  $48
0cc7: e4 48     mov   a,$48
0cc9: 8d 6c     mov   y,#$6c
0ccb: 4f 0c     pcall $0c
0ccd: e5 45 01  mov   a,$0145
0cd0: 8d 7d     mov   y,#$7d
0cd2: 4f 0c     pcall $0c
0cd4: 3f e9 0c  call  $0ce9
0cd7: 3f fd 0c  call  $0cfd
0cda: 8f 02 4f  mov   $4f,#$02
0cdd: 6f        ret

0cde: 3f e9 0c  call  $0ce9
0ce1: 3f fd 0c  call  $0cfd
0ce4: 8f 05 4f  mov   $4f,#$05
0ce7: 2f 57     bra   $0d40
0ce9: e4 45     mov   a,$45
0ceb: 1c        asl   a
0cec: 1c        asl   a
0ced: 1c        asl   a
0cee: c4 4d     mov   $4d,a
0cf0: e5 11 00  mov   a,$0011
0cf3: 80        setc
0cf4: a4 4d     sbc   a,$4d
0cf6: c4 46     mov   $46,a
0cf8: 8d 6d     mov   y,#$6d
0cfa: 5f 0c ff  jmp   $ff0c

0cfd: e4 47     mov   a,$47
0cff: 1c        asl   a
0d00: 1c        asl   a
0d01: 1c        asl   a
0d02: 8d 00     mov   y,#$00
0d04: 20        clrp
0d05: 7a 12     addw  ya,$12
0d07: 40        setp
0d08: da 4d     movw  $4d,ya
0d0a: cd 07     mov   x,#$07
0d0c: 7d        mov   a,x
0d0d: fd        mov   y,a
0d0e: f7 4d     mov   a,($4d)+y
0d10: 2d        push  a
0d11: f5 1c 0d  mov   a,$0d1c+x
0d14: fd        mov   y,a
0d15: ae        pop   a
0d16: 4f 0c     pcall $0c
0d18: 1d        dec   x
0d19: 10 f1     bpl   $0d0c
0d1b: 6f        ret

0d1c: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0d24: 6f        ret

0d25: e4 50     mov   a,$50
0d27: d0 06     bne   $0d2f
0d29: 8f 00 4f  mov   $4f,#$00
0d2c: 5f 7a 0c  jmp   $0c7a

0d2f: b2 48     clr5  $48
0d31: e4 48     mov   a,$48
0d33: 8d 6c     mov   y,#$6c
0d35: 4f 0c     pcall $0c
0d37: e4 45     mov   a,$45
0d39: bc        inc   a
0d3a: c4 51     mov   $51,a
0d3c: 8f 04 4f  mov   $4f,#$04
0d3f: 6f        ret

0d40: 8f 00 51  mov   $51,#$00
0d43: e4 50     mov   a,$50
0d45: d0 06     bne   $0d4d
0d47: 8f 00 4f  mov   $4f,#$00
0d4a: 5f 7a 0c  jmp   $0c7a

0d4d: e4 44     mov   a,$44
0d4f: 8d 0d     mov   y,#$0d
0d51: 4f 0c     pcall $0c
0d53: e4 42     mov   a,$42
0d55: 8d 2c     mov   y,#$2c
0d57: 4f 0c     pcall $0c
0d59: e4 43     mov   a,$43
0d5b: 8d 3c     mov   y,#$3c
0d5d: 4f 0c     pcall $0c
0d5f: e4 31     mov   a,$31
0d61: 48 ff     eor   a,#$ff
0d63: 24 40     and   a,$40
0d65: c4 4d     mov   $4d,a
0d67: e4 41     mov   a,$41
0d69: 04 4d     or    a,$4d
0d6b: 8d 4d     mov   y,#$4d
0d6d: 5f 0c ff  jmp   $ff0c

0d70: 8f 00 50  mov   $50,#$00
0d73: 8d 7d     mov   y,#$7d
0d75: 4f 1d     pcall $1d
0d77: 68 01     cmp   a,#$01
0d79: f0 06     beq   $0d81
0d7b: 8f 01 45  mov   $45,#$01
0d7e: 5f a8 0c  jmp   $0ca8

0d81: e4 51     mov   a,$51
0d83: 30 09     bmi   $0d8e
0d85: 8f 00 51  mov   $51,#$00
0d88: 8f 00 4f  mov   $4f,#$00
0d8b: 5f 7a 0c  jmp   $0c7a

0d8e: 6f        ret

0d8f: e8 01     mov   a,#$01
0d91: c5 4f 01  mov   $014f,a
0d94: 6f        ret

0d95: 40        setp
0d96: 8f 01 45  mov   $45,#$01
0d99: 8f 01 4f  mov   $4f,#$01
0d9c: 3f 67 0c  call  $0c67
0d9f: 8f 00 50  mov   $50,#$00
0da2: 20        clrp
0da3: 6f        ret

0da4: e5 fd 00  mov   a,$00fd
0da7: 28 0f     and   a,#$0f
0da9: f0 1f     beq   $0dca
0dab: c4 0b     mov   $0b,a
0dad: e5 51 01  mov   a,$0151
0db0: f0 18     beq   $0dca
0db2: 30 09     bmi   $0dbd
0db4: 80        setc
0db5: a4 0b     sbc   a,$0b
0db7: f0 09     beq   $0dc2
0db9: 30 07     bmi   $0dc2
0dbb: 2f 0a     bra   $0dc7
0dbd: 60        clrc
0dbe: 84 0b     adc   a,$0b
0dc0: 30 05     bmi   $0dc7
0dc2: ac 4f 01  inc   $014f
0dc5: e8 00     mov   a,#$00
0dc7: c5 51 01  mov   $0151,a
0dca: 6f        ret

0dcb: 40        setp
0dcc: 28 1f     and   a,#$1f
0dce: c4 4d     mov   $4d,a
0dd0: e4 48     mov   a,$48
0dd2: 28 e0     and   a,#$e0
0dd4: 04 4d     or    a,$4d
0dd6: c4 48     mov   $48,a
0dd8: 20        clrp
0dd9: 6f        ret

0dda: 8f aa f4  mov   $f4,#$aa
0ddd: 8f bb f5  mov   $f5,#$bb
0de0: 8d 64     mov   y,#$64
0de2: fe fe     dbnz  y,$0de2
0de4: e4 f4     mov   a,$f4
0de6: 00        nop
0de7: 64 f4     cmp   a,$f4
0de9: d0 f9     bne   $0de4
0deb: 68 cc     cmp   a,#$cc
0ded: d0 f5     bne   $0de4
0def: 69 08 07  cmp   ($07),($08)
0df2: f0 1d     beq   $0e11
0df4: 2f 2b     bra   $0e21
0df6: eb f4     mov   y,$f4
0df8: d0 fc     bne   $0df6
0dfa: 7e f4     cmp   y,$f4
0dfc: d0 0d     bne   $0e0b
0dfe: e4 f5     mov   a,$f5
0e00: cb f4     mov   $f4,y
0e02: d7 07     mov   ($07)+y,a
0e04: fc        inc   y
0e05: d0 f3     bne   $0dfa
0e07: ab 08     inc   $08
0e09: 2f ef     bra   $0dfa
0e0b: 10 ed     bpl   $0dfa
0e0d: 7e f4     cmp   y,$f4
0e0f: 10 e9     bpl   $0dfa
0e11: e4 f6     mov   a,$f6
0e13: eb f7     mov   y,$f7
0e15: 64 f6     cmp   a,$f6
0e17: d0 f8     bne   $0e11
0e19: 7e f7     cmp   y,$f7
0e1b: d0 f4     bne   $0e11
0e1d: c4 07     mov   $07,a
0e1f: cb 08     mov   $08,y
0e21: e4 f4     mov   a,$f4
0e23: c4 f4     mov   $f4,a
0e25: e4 f5     mov   a,$f5
0e27: d0 cd     bne   $0df6
0e29: 6f        ret

0e2a: 8f aa f4  mov   $f4,#$aa
0e2d: 8f bb f5  mov   $f5,#$bb
0e30: e8 cc     mov   a,#$cc
0e32: 4f 31     pcall $31
0e34: 64 f4     cmp   a,$f4
0e36: d0 fa     bne   $0e32
0e38: 69 08 07  cmp   ($07),($08)
0e3b: f0 21     beq   $0e5e
0e3d: 2f 25     bra   $0e64
0e3f: 4f 31     pcall $31
0e41: eb f4     mov   y,$f4
0e43: d0 fa     bne   $0e3f
0e45: 7e f4     cmp   y,$f4
0e47: d0 0f     bne   $0e58
0e49: e4 f5     mov   a,$f5
0e4b: 4f 31     pcall $31
0e4d: cb f4     mov   $f4,y
0e4f: d7 07     mov   ($07)+y,a
0e51: fc        inc   y
0e52: d0 f1     bne   $0e45
0e54: ab 08     inc   $08
0e56: 2f ed     bra   $0e45
0e58: 10 eb     bpl   $0e45
0e5a: 7e f4     cmp   y,$f4
0e5c: 10 e7     bpl   $0e45
0e5e: fa f6 07  mov   ($07),($f6)
0e61: fa f7 08  mov   ($08),($f7)
0e64: fa f4 f4  mov   ($f4),($f4)
0e67: e4 f5     mov   a,$f5
0e69: d0 d4     bne   $0e3f
0e6b: 6f        ret

0e6c: 28 3f     and   a,#$3f
0e6e: 1c        asl   a
0e6f: 1c        asl   a
0e70: c4 03     mov   $03,a
0e72: e5 4b 01  mov   a,$014b
0e75: bc        inc   a
0e76: c4 04     mov   $04,a
0e78: 6f        ret

0e79: 8d 03     mov   y,#$03
0e7b: f7 03     mov   a,($03)+y
0e7d: 8f 00 01  mov   $01,#$00
0e80: 10 02     bpl   $0e84
0e82: 8b 01     dec   $01
0e84: eb 01     mov   y,$01
0e86: 7a 05     addw  ya,$05
0e88: 30 08     bmi   $0e92
0e8a: c4 05     mov   $05,a
0e8c: 8f 00 06  mov   $06,#$00
0e8f: dd        mov   a,y
0e90: 2f 13     bra   $0ea5
0e92: 48 ff     eor   a,#$ff
0e94: c4 05     mov   $05,a
0e96: dd        mov   a,y
0e97: 48 ff     eor   a,#$ff
0e99: c4 06     mov   $06,a
0e9b: 3a 05     incw  $05
0e9d: e4 06     mov   a,$06
0e9f: 48 ff     eor   a,#$ff
0ea1: bc        inc   a
0ea2: 8f ff 06  mov   $06,#$ff
0ea5: 60        clrc
0ea6: 84 00     adc   a,$00
0ea8: 10 02     bpl   $0eac
0eaa: e8 00     mov   a,#$00
0eac: 8d 00     mov   y,#$00
0eae: cd 0c     mov   x,#$0c
0eb0: 9e        div   ya,x
0eb1: c4 01     mov   $01,a
0eb3: cb 00     mov   $00,y
0eb5: f8 00     mov   x,$00
0eb7: e4 06     mov   a,$06
0eb9: 30 0b     bmi   $0ec6
0ebb: f5 3c 10  mov   a,$103c+x
0ebe: eb 05     mov   y,$05
0ec0: cf        mul   ya
0ec1: dd        mov   a,y
0ec2: 8d 00     mov   y,#$00
0ec4: 2f 0e     bra   $0ed4
0ec6: f5 3b 10  mov   a,$103b+x
0ec9: eb 05     mov   y,$05
0ecb: cf        mul   ya
0ecc: dd        mov   a,y
0ecd: f0 05     beq   $0ed4
0ecf: 48 ff     eor   a,#$ff
0ed1: bc        inc   a
0ed2: 8d ff     mov   y,#$ff
0ed4: da 05     movw  $05,ya
0ed6: f8 00     mov   x,$00
0ed8: f5 2f 10  mov   a,$102f+x
0edb: fd        mov   y,a
0edc: f5 23 10  mov   a,$1023+x
0edf: 7a 05     addw  ya,$05
0ee1: da 05     movw  $05,ya
0ee3: e8 05     mov   a,#$05
0ee5: 80        setc
0ee6: a4 01     sbc   a,$01
0ee8: f0 26     beq   $0f10
0eea: 30 24     bmi   $0f10
0eec: 1c        asl   a
0eed: 5d        mov   x,a
0eee: e4 05     mov   a,$05
0ef0: 1f f3 0e  jmp   ($0ef3+x)

0ef3: dw $0f0e  ;
0ef5: dw $0f0b  ;
0ef7: dw $0f08  ;
0ef9: dw $0f05  ;
0efb: dw $0f02  ;
0efd: dw $0eff  ;

0eff: 4b 06     lsr   $06
0f01: 7c        ror   a
0f02: 4b 06     lsr   $06
0f04: 7c        ror   a
0f05: 4b 06     lsr   $06
0f07: 7c        ror   a
0f08: 4b 06     lsr   $06
0f0a: 7c        ror   a
0f0b: 4b 06     lsr   $06
0f0d: 7c        ror   a
0f0e: c4 05     mov   $05,a
0f10: 8d 00     mov   y,#$00
0f12: f7 03     mov   a,($03)+y
0f14: c4 01     mov   $01,a
0f16: fc        inc   y
0f17: f7 03     mov   a,($03)+y
0f19: c4 00     mov   $00,a
0f1b: 04 01     or    a,$01
0f1d: d0 03     bne   $0f22
0f1f: ba 05     movw  ya,$05
0f21: 6f        ret

0f22: e4 00     mov   a,$00
0f24: eb 06     mov   y,$06
0f26: cf        mul   ya
0f27: da 03     movw  $03,ya
0f29: e4 00     mov   a,$00
0f2b: eb 05     mov   y,$05
0f2d: cf        mul   ya
0f2e: cb 00     mov   $00,y
0f30: e4 01     mov   a,$01
0f32: eb 05     mov   y,$05
0f34: cf        mul   ya
0f35: 7a 03     addw  ya,$03
0f37: da 03     movw  $03,ya
0f39: e4 01     mov   a,$01
0f3b: eb 06     mov   y,$06
0f3d: cf        mul   ya
0f3e: fd        mov   y,a
0f3f: e4 00     mov   a,$00
0f41: 7a 03     addw  ya,$03
0f43: 6f        ret

0f44: e8 1e     mov   a,#$1e
0f46: 80        setc
0f47: a4 00     sbc   a,$00
0f49: 5d        mov   x,a
0f4a: f5 48 10  mov   a,$1048+x
0f4d: eb 01     mov   y,$01
0f4f: cf        mul   ya
0f50: 6d        push  y
0f51: f8 00     mov   x,$00
0f53: f5 48 10  mov   a,$1048+x
0f56: eb 01     mov   y,$01
0f58: cf        mul   ya
0f59: ae        pop   a
0f5a: 6f        ret

0f5b: db $01,$02,$04,$08,$10,$20,$40,$80
0f63: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

0f6b: 01
0f6c: 00
0f6d: 2e 02 00
0f70: 22 03
0f72: 58 05 ff
0f75: 06
0f76: 60
0f77: 60
0f78: 07 93
0f7a: 0f
0f7b: 00
0f7c: ff
0f7d: ff
0f7e: ff
0f7f: ff
0f80: ff
0f81: ff
0f82: ff
0f83: ff
0f84: ff
0f85: ff
0f86: ff
0f87: ff
0f88: ff
0f89: ff
0f8a: ff
0f8b: ff
0f8c: ff
0f8d: ff
0f8e: ff
0f8f: ff
0f90: ff
0f91: ff
0f92: ff

0f93: db $7f,$00,$00,$00,$00,$00,$00,$00
0f9b: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0fa3: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0fab: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
0fb3: db $23,$ca,$f8,$2c,$eb,$08,$fb,$02
0fbb: db $04,$f9,$f8,$27,$27,$f8,$f9,$04
0fc3: db $14,$ff,$da,$1d,$1f,$e0,$ff,$0c
0fcb: db $1b,$db,$33,$f2,$fd,$0e,$fc,$fd
0fd3: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
0fdb: db $29,$b9,$fd,$24,$0d,$f7,$fa,$00
0fe3: db $35,$a8,$ff,$1a,$12,$04,$f8,$fb
0feb: db $1c,$cc,$2f,$ec,$f8,$12,$00,$fa
0ff3: db $3b,$ba,$13,$1b,$02,$f6,$fd,$01
0ffb: db $fa,$00,$1c,$29,$29,$1c,$00,$fa
1003: db $fe,$fd,$16,$34,$34,$16,$fd,$fc
100b: db $fe,$fb,$10,$3a,$3a,$10,$fb,$fe
1013: db $48,$26,$0a,$dd,$08,$0d,$f9,$00
101b: db $38,$48,$14,$e6,$01,$0a,$fe,$fe

1023: db $5f,$de,$65,$f4,$8c,$2c,$d6,$8b,$4a,$14,$ea,$cd
102f: db $08,$08,$09,$09,$0a,$0b,$0b,$0c,$0d,$0e,$0e,$0f

103b: db $79,$7f,$87,$8f,$98,$a0,$aa,$b5,$bf,$ca,$d6,$e3,$f1

1048: db $00,$07,$0d,$14,$1a,$21,$27,$2e
1050: db $34,$3a,$40,$45,$4b,$50,$55,$5a
1058: db $5e,$63,$67,$6b,$6e,$71,$74,$77
1060: db $79,$7b,$7c,$7d,$7e,$7f,$7f

1067: db $00,$02,$04,$05,$07,$09,$0b,$0d
106f: db $0e,$10,$12,$14,$16,$17,$19,$1b
1077: db $1d,$1f,$21,$22,$24,$26,$28,$2a
107f: db $2b,$2d

1081: 8d 00     mov   y,#$00
1083: f7 0d     mov   a,($0d)+y
1085: c4 2e     mov   $2e,a
1087: fc        inc   y
1088: f7 0d     mov   a,($0d)+y
108a: c4 2f     mov   $2f,a
108c: cd 07     mov   x,#$07
108e: e8 00     mov   a,#$00
1090: d4 88     mov   $88+x,a
1092: 1d        dec   x
1093: 10 fb     bpl   $1090
1095: 8f 00 77  mov   $77,#$00
1098: 6f        ret

1099: 3f d4 10  call  $10d4
109c: 3f e5 10  call  $10e5
109f: 53 98 0c  bbc2  $98,$10ae
10a2: e5 4f 01  mov   a,$014f
10a5: 68 05     cmp   a,#$05
10a7: d0 2a     bne   $10d3
10a9: 52 98     clr2  $98
10ab: 5f 17 18  jmp   $1817

10ae: 3f 7b 12  call  $127b
10b1: 8f 07 34  mov   $34,#$07
10b4: f8 34     mov   x,$34
10b6: f4 88     mov   a,$88+x
10b8: 10 0f     bpl   $10c9
10ba: 3f 82 12  call  $1282
10bd: 3f cb 16  call  $16cb
10c0: 3f ee 16  call  $16ee
10c3: 3f 3d 17  call  $173d
10c6: 3f b0 17  call  $17b0
10c9: 8b 34     dec   $34
10cb: 10 e7     bpl   $10b4
10cd: 43 98 03  bbs2  $98,$10d3
10d0: 5f 17 18  jmp   $1817

10d3: 6f        ret

10d4: e4 20     mov   a,$20
10d6: 30 0c     bmi   $10e4
10d8: 3f 80 11  call  $1180
10db: e2 20     set7  $20
10dd: ae        pop   a
10de: ae        pop   a
10df: e8 ff     mov   a,#$ff
10e1: c5 3c 01  mov   $013c,a
10e4: 6f        ret

10e5: e4 22     mov   a,$22
10e7: 8f 00 22  mov   $22,#$00
10ea: 1c        asl   a
10eb: 5d        mov   x,a
10ec: 1f ef 10  jmp   ($10ef+x)

10ef: dw $10fb  ;
10f1: dw $10fc  ;
10f3: dw $112a  ;
10f5: dw $114a  ;
10f7: dw $1155  ;
10f9: dw $1165  ;

10fb: 6f        ret

10fc: 8f 00 00  mov   $00,#$00
10ff: cd 07     mov   x,#$07
1101: e8 00     mov   a,#$00
1103: d4 88     mov   $88+x,a
1105: f5 5b 0f  mov   a,$0f5b+x
1108: 25 31 01  and   a,$0131
110b: d0 06     bne   $1113
110d: f5 5b 0f  mov   a,$0f5b+x
1110: 0e 00 00  tset1 $0000
1113: 1d        dec   x
1114: 10 eb     bpl   $1101
1116: 8f 00 77  mov   $77,#$00
1119: e4 00     mov   a,$00
111b: 8d 5c     mov   y,#$5c
111d: 4f 0c     pcall $0c
111f: 8d 0b     mov   y,#$0b
1121: fe fe     dbnz  y,$1121
1123: e8 00     mov   a,#$00
1125: 8d 5c     mov   y,#$5c
1127: 5f 0c ff  jmp   $ff0c

112a: e4 23     mov   a,$23
112c: c5 6a 02  mov   $026a,a
112f: e8 80     mov   a,#$80
1131: 4e 73 02  tclr1 $0273
1134: 4e 74 02  tclr1 $0274
1137: 4e 75 02  tclr1 $0275
113a: 4e 76 02  tclr1 $0276
113d: 4e 77 02  tclr1 $0277
1140: 4e 78 02  tclr1 $0278
1143: 4e 79 02  tclr1 $0279
1146: 4e 7a 02  tclr1 $027a
1149: 6f        ret

114a: e4 23     mov   a,$23
114c: c5 dd 02  mov   $02dd,a
114f: e8 00     mov   a,#$00
1151: c5 de 02  mov   $02de,a
1154: 6f        ret

1155: cd 07     mov   x,#$07
1157: 0b 23     asl   $23
1159: 90 06     bcc   $1161
115b: f4 88     mov   a,$88+x
115d: 08 20     or    a,#$20
115f: d4 88     mov   $88+x,a
1161: 1d        dec   x
1162: 10 f3     bpl   $1157
1164: 6f        ret

1165: cd 07     mov   x,#$07
1167: 0b 23     asl   $23
1169: 90 11     bcc   $117c
116b: fb 88     mov   y,$88+x
116d: dd        mov   a,y
116e: 28 20     and   a,#$20
1170: f0 0a     beq   $117c
1172: dd        mov   a,y
1173: 28 df     and   a,#$df
1175: d4 88     mov   $88+x,a
1177: e8 01     mov   a,#$01
1179: d5 32 01  mov   $0132+x,a
117c: 1d        dec   x
117d: 10 e8     bpl   $1167
117f: 6f        ret

1180: 1c        asl   a
1181: fd        mov   y,a
1182: f7 2e     mov   a,($2e)+y
1184: c4 03     mov   $03,a
1186: fc        inc   y
1187: f7 2e     mov   a,($2e)+y
1189: c4 04     mov   $04,a
118b: 8d 00     mov   y,#$00
118d: f7 03     mov   a,($03)+y
118f: c4 00     mov   $00,a
1191: cd 00     mov   x,#$00
1193: e8 00     mov   a,#$00
1195: d4 88     mov   $88+x,a
1197: d4 90     mov   $90+x,a
1199: d5 32 01  mov   $0132+x,a
119c: 4b 00     lsr   $00
119e: 90 4f     bcc   $11ef
11a0: fc        inc   y
11a1: f7 03     mov   a,($03)+y
11a3: d5 01 02  mov   $0201+x,a
11a6: d5 52 02  mov   $0252+x,a
11a9: fc        inc   y
11aa: f7 03     mov   a,($03)+y
11ac: d5 09 02  mov   $0209+x,a
11af: d5 5a 02  mov   $025a+x,a
11b2: e8 00     mov   a,#$00
11b4: d5 df 02  mov   $02df+x,a
11b7: d5 39 02  mov   $0239+x,a
11ba: d5 a4 02  mov   $02a4+x,a
11bd: d5 7b 02  mov   $027b+x,a
11c0: d5 41 02  mov   $0241+x,a
11c3: d5 11 02  mov   $0211+x,a
11c6: d4 78     mov   $78+x,a
11c8: d4 80     mov   $80+x,a
11ca: d5 62 02  mov   $0262+x,a
11cd: bc        inc   a
11ce: d5 21 02  mov   $0221+x,a
11d1: e8 02     mov   a,#$02
11d3: d5 19 02  mov   $0219+x,a
11d6: e8 08     mov   a,#$08
11d8: d5 31 02  mov   $0231+x,a
11db: e8 0f     mov   a,#$0f
11dd: d5 73 02  mov   $0273+x,a
11e0: d5 84 02  mov   $0284+x,a
11e3: e8 78     mov   a,#$78
11e5: d5 6b 02  mov   $026b+x,a
11e8: d5 8c 02  mov   $028c+x,a
11eb: e8 80     mov   a,#$80
11ed: d4 88     mov   $88+x,a
11ef: 3d        inc   x
11f0: c8 08     cmp   x,#$08
11f2: 90 9f     bcc   $1193
11f4: 6d        push  y
11f5: e8 78     mov   a,#$78
11f7: c5 00 02  mov   $0200,a
11fa: 3f 9f 08  call  $089f
11fd: e8 02     mov   a,#$02
11ff: c4 98     mov   $98,a
1201: 3f c4 08  call  $08c4
1204: e8 ff     mov   a,#$ff
1206: c5 6a 02  mov   $026a,a
1209: e8 00     mov   a,#$00
120b: c5 83 02  mov   $0283,a
120e: c5 b4 02  mov   $02b4,a
1211: c4 77     mov   $77,a
1213: c5 49 02  mov   $0249,a
1216: c5 dd 02  mov   $02dd,a
1219: 8d 02     mov   y,#$02
121b: f7 0d     mov   a,($0d)+y
121d: c4 30     mov   $30,a
121f: fc        inc   y
1220: f7 0d     mov   a,($0d)+y
1222: c4 31     mov   $31,a
1224: fc        inc   y
1225: f7 0d     mov   a,($0d)+y
1227: c4 32     mov   $32,a
1229: fc        inc   y
122a: f7 0d     mov   a,($0d)+y
122c: c4 33     mov   $33,a
122e: ee        pop   y
122f: fc        inc   y
1230: f7 03     mov   a,($03)+y
1232: fc        inc   y
1233: 1c        asl   a
1234: 5d        mov   x,a
1235: 1f 38 12  jmp   ($1238+x)

1238: dw $127a  ;
123a: dw $1240  ;
123c: dw $1251  ;
123e: dw $126b  ;

1240: f7 03     mov   a,($03)+y
1242: 28 03     and   a,#$03
1244: c4 00     mov   $00,a
1246: 38 fc 98  and   $98,#$fc
1249: 09 00 98  or    ($98),($00)
124c: 3f c4 08  call  $08c4
124f: 2f de     bra   $122f
1251: f7 03     mov   a,($03)+y
1253: 5d        mov   x,a
1254: dd        mov   a,y
1255: bc        inc   a
1256: 8d 00     mov   y,#$00
1258: 7a 03     addw  ya,$03
125a: c4 30     mov   $30,a
125c: cb 31     mov   $31,y
125e: da 03     movw  $03,ya
1260: 8d 00     mov   y,#$00
1262: 7d        mov   a,x
1263: 7a 03     addw  ya,$03
1265: da 03     movw  $03,ya
1267: 8d ff     mov   y,#$ff
1269: 2f c4     bra   $122f
126b: f7 03     mov   a,($03)+y
126d: 5d        mov   x,a
126e: dd        mov   a,y
126f: bc        inc   a
1270: 8d 00     mov   y,#$00
1272: 7a 03     addw  ya,$03
1274: c4 32     mov   $32,a
1276: cb 33     mov   $33,y
1278: 2f e4     bra   $125e
127a: 6f        ret

127b: e8 00     mov   a,#$00
127d: c4 75     mov   $75,a
127f: c4 76     mov   $76,a
1281: 6f        ret

1282: f8 34     mov   x,$34
1284: f5 21 02  mov   a,$0221+x
1287: 9c        dec   a
1288: f0 11     beq   $129b
128a: d5 21 02  mov   $0221+x,a
128d: 9c        dec   a
128e: d0 0a     bne   $129a
1290: f5 11 02  mov   a,$0211+x
1293: 30 05     bmi   $129a
1295: e8 00     mov   a,#$00
1297: d5 4a 02  mov   $024a+x,a
129a: 6f        ret

129b: f5 01 02  mov   a,$0201+x
129e: c4 03     mov   $03,a
12a0: f5 09 02  mov   a,$0209+x
12a3: c4 04     mov   $04,a
12a5: 2f 02     bra   $12a9
12a7: 3a 03     incw  $03
; vcmd d0, ef-fd - nop (dispatch next voice byte)
12a9: cd 00     mov   x,#$00
12ab: e7 03     mov   a,($03+x)
12ad: 3a 03     incw  $03
12af: c4 00     mov   $00,a
12b1: 68 d0     cmp   a,#$d0
12b3: 90 71     bcc   $1326
12b5: a8 d0     sbc   a,#$d0
12b7: 1c        asl   a
12b8: 5d        mov   x,a
12b9: 1f bc 12  jmp   ($12bc+x)

12bc: dw $12a9  ; d0 - nop
12be: dw $1406  ; d1
12c0: dw $1418  ; d2
12c2: dw $142a  ; d3
12c4: dw $1436  ; d4
12c6: dw $1442  ; d5
12c8: dw $144e  ; d6
12ca: dw $145a  ; d7
12cc: dw $145f  ; d8
12ce: dw $1464  ; d9
12d0: dw $1478  ; da
12d2: dw $1484  ; db
12d4: dw $1499  ; dc
12d6: dw $14c7  ; dd
12d8: dw $14e6  ; de
12da: dw $1509  ; df
12dc: dw $152b  ; e0
12de: dw $153a  ; e1
12e0: dw $1546  ; e2
12e2: dw $1565  ; e3
12e4: dw $157b  ; e4
12e6: dw $158c  ; e5
12e8: dw $15a9  ; e6
12ea: dw $15b4  ; e7
12ec: dw $15c0  ; e8
12ee: dw $15d0  ; e9
12f0: dw $15fd  ; ea
12f2: dw $1608  ; eb
12f4: dw $1617  ; ec
12f6: dw $1626  ; ed
12f8: dw $1641  ; ee
12fa: dw $12a9  ; ef - nop
12fc: dw $12a9  ; f0 - nop
12fe: dw $12a9  ; f1 - nop
1300: dw $12a9  ; f2 - nop
1302: dw $12a9  ; f3 - nop
1304: dw $12a9  ; f4 - nop
1306: dw $12a9  ; f5 - nop
1308: dw $12a9  ; f6 - nop
130a: dw $12a9  ; f7 - nop
130c: dw $12a9  ; f8 - nop
130e: dw $12a9  ; f9 - nop
1310: dw $12a9  ; fa - nop
1312: dw $12a9  ; fb - nop
1314: dw $12a9  ; fc - nop
1316: dw $12a9  ; fd - nop
1318: dw $165f  ; fe
131a: dw $166c  ; ff

131c: dw $1689  ; 00
131e: dw $1692  ; 01
1320: dw $169d  ; 02
1322: dw $16a6  ; 03
1322: dw $16b1  ; 04

1326: f8 34     mov   x,$34
1328: e4 00     mov   a,$00
132a: 28 07     and   a,#$07
132c: f0 1c     beq   $134a
132e: c4 01     mov   $01,a
1330: e4 98     mov   a,$98
1332: 28 03     and   a,#$03
1334: 60        clrc
1335: 84 01     adc   a,$01
1337: fd        mov   y,a
1338: f6 d4 1a  mov   a,$1ad4+y
133b: 68 01     cmp   a,#$01
133d: d0 11     bne   $1350
133f: f4 88     mov   a,$88+x
1341: 48 01     eor   a,#$01
1343: d4 88     mov   $88+x,a
1345: 28 01     and   a,#$01
1347: bc        inc   a
1348: 2f 06     bra   $1350
134a: 8d 00     mov   y,#$00
134c: f7 03     mov   a,($03)+y
134e: 3a 03     incw  $03
1350: d5 21 02  mov   $0221+x,a
1353: 63 00 2a  bbs3  $00,$1380
1356: fd        mov   y,a
1357: f5 31 02  mov   a,$0231+x
135a: 10 04     bpl   $1360
135c: 28 7f     and   a,#$7f
135e: 2f 20     bra   $1380
1360: 68 09     cmp   a,#$09
1362: 90 11     bcc   $1375
1364: a8 08     sbc   a,#$08
1366: c4 01     mov   $01,a
1368: f5 21 02  mov   a,$0221+x
136b: a4 01     sbc   a,$01
136d: f0 02     beq   $1371
136f: b0 0f     bcs   $1380
1371: e8 01     mov   a,#$01
1373: 2f 0b     bra   $1380
1375: cf        mul   ya
1376: cd 08     mov   x,#$08
1378: 9e        div   ya,x
1379: ad 00     cmp   y,#$00
137b: f0 01     beq   $137e
137d: bc        inc   a
137e: f8 34     mov   x,$34
1380: d5 29 02  mov   $0229+x,a
1383: f5 11 02  mov   a,$0211+x
1386: c4 02     mov   $02,a
1388: e4 00     mov   a,$00
138a: 28 f0     and   a,#$f0
138c: d0 04     bne   $1392
138e: e8 7f     mov   a,#$7f
1390: 2f 0d     bra   $139f
1392: 9f        xcn   a
1393: 9c        dec   a
1394: c4 01     mov   $01,a
1396: f5 19 02  mov   a,$0219+x
1399: 8d 0c     mov   y,#$0c
139b: cf        mul   ya
139c: 60        clrc
139d: 84 01     adc   a,$01
139f: 73 00 02  bbc3  $00,$13a4
13a2: 08 80     or    a,#$80
13a4: d5 11 02  mov   $0211+x,a
13a7: f4 88     mov   a,$88+x
13a9: 28 08     and   a,#$08
13ab: f0 31     beq   $13de
13ad: f5 11 02  mov   a,$0211+x
13b0: 1c        asl   a
13b1: 68 fe     cmp   a,#$fe
13b3: f0 29     beq   $13de
13b5: 1c        asl   a
13b6: fd        mov   y,a
13b7: f7 32     mov   a,($32)+y
13b9: 08 80     or    a,#$80
13bb: 75 62 02  cmp   a,$0262+x
13be: f0 05     beq   $13c5
13c0: 28 7f     and   a,#$7f
13c2: d5 62 02  mov   $0262+x,a
13c5: fc        inc   y
13c6: f7 32     mov   a,($32)+y
13c8: 73 00 02  bbc3  $00,$13cd
13cb: 08 80     or    a,#$80
13cd: d5 11 02  mov   $0211+x,a
13d0: fc        inc   y
13d1: f7 32     mov   a,($32)+y
13d3: d5 6b 02  mov   $026b+x,a
13d6: fc        inc   y
13d7: f7 32     mov   a,($32)+y
13d9: d5 73 02  mov   $0273+x,a
13dc: 2f 00     bra   $13de
13de: e3 02 14  bbs7  $02,$13f5
13e1: e8 01     mov   a,#$01
13e3: d5 4a 02  mov   $024a+x,a
13e6: 38 f0 00  and   $00,#$f0
13e9: d0 0a     bne   $13f5
13eb: e8 04     mov   a,#$04
13ed: d5 4a 02  mov   $024a+x,a
13f0: e8 00     mov   a,#$00
13f2: d5 11 02  mov   $0211+x,a
13f5: e4 03     mov   a,$03
13f7: d5 01 02  mov   $0201+x,a
13fa: e4 04     mov   a,$04
13fc: d5 09 02  mov   $0209+x,a
13ff: f4 88     mov   a,$88+x
1401: 08 02     or    a,#$02
1403: d4 88     mov   $88+x,a
1405: 6f        ret

; vcmd d1
1406: 8d 00     mov   y,#$00
1408: f7 03     mov   a,($03)+y
140a: 65 00 02  cmp   a,$0200
140d: f0 06     beq   $1415
140f: c5 00 02  mov   $0200,a
1412: 3f 9f 08  call  $089f
1415: 5f a7 12  jmp   $12a7

; vcmd d2
1418: f8 34     mov   x,$34
141a: 8d 00     mov   y,#$00
141c: f7 03     mov   a,($03)+y
141e: 68 05     cmp   a,#$05
1420: 90 02     bcc   $1424
1422: e8 05     mov   a,#$05
1424: d5 19 02  mov   $0219+x,a
1427: 5f a7 12  jmp   $12a7

; vcmd d3
142a: f8 34     mov   x,$34
142c: f5 19 02  mov   a,$0219+x
142f: bc        inc   a
1430: d5 19 02  mov   $0219+x,a
1433: 5f a9 12  jmp   $12a9

; vcmd d4
1436: f8 34     mov   x,$34
1438: f5 19 02  mov   a,$0219+x
143b: 9c        dec   a
143c: d5 19 02  mov   $0219+x,a
143f: 5f a9 12  jmp   $12a9

; vcmd d5
1442: f8 34     mov   x,$34
1444: 8d 00     mov   y,#$00
1446: f7 03     mov   a,($03)+y
1448: d5 31 02  mov   $0231+x,a
144b: 5f a7 12  jmp   $12a7

; vcmd d6
144e: f8 34     mov   x,$34
1450: 8d 00     mov   y,#$00
1452: f7 03     mov   a,($03)+y
1454: d5 62 02  mov   $0262+x,a
1457: 5f a7 12  jmp   $12a7

; vcmd d7
145a: 3a 03     incw  $03
145c: 5f a7 12  jmp   $12a7

; vcmd d8
145f: 3a 03     incw  $03
1461: 5f a7 12  jmp   $12a7

; vcmd d9
1464: f8 34     mov   x,$34
1466: 8d 00     mov   y,#$00
1468: f7 03     mov   a,($03)+y
146a: d5 6b 02  mov   $026b+x,a
146d: f5 73 02  mov   a,$0273+x
1470: 28 7f     and   a,#$7f
1472: d5 73 02  mov   $0273+x,a
1475: 5f a7 12  jmp   $12a7

; vcmd da
1478: f8 34     mov   x,$34
147a: 8d 00     mov   y,#$00
147c: f7 03     mov   a,($03)+y
147e: d5 73 02  mov   $0273+x,a
1481: 5f a7 12  jmp   $12a7

; vcmd db
1484: f8 34     mov   x,$34
1486: 8d 00     mov   y,#$00
1488: f7 03     mov   a,($03)+y
148a: 28 03     and   a,#$03
148c: c4 00     mov   $00,a
148e: f4 90     mov   a,$90+x
1490: 28 fc     and   a,#$fc
1492: 04 00     or    a,$00
1494: d4 90     mov   $90+x,a
1496: 5f a7 12  jmp   $12a7

; vcmd dc
1499: f8 34     mov   x,$34
149b: 8d 00     mov   y,#$00
149d: f7 03     mov   a,($03)+y
149f: c4 05     mov   $05,a
14a1: 10 01     bpl   $14a4
14a3: dc        dec   y
14a4: cb 06     mov   $06,y
14a6: 8d 00     mov   y,#$00
14a8: f5 6b 02  mov   a,$026b+x
14ab: 7a 05     addw  ya,$05
14ad: 10 04     bpl   $14b3
14af: e8 00     mov   a,#$00
14b1: 2f 06     bra   $14b9
14b3: ad 00     cmp   y,#$00
14b5: f0 02     beq   $14b9
14b7: e8 ff     mov   a,#$ff
14b9: d5 6b 02  mov   $026b+x,a
14bc: f5 73 02  mov   a,$0273+x
14bf: 28 7f     and   a,#$7f
14c1: d5 73 02  mov   $0273+x,a
14c4: 5f a7 12  jmp   $12a7

; vcmd dd
14c7: f8 34     mov   x,$34
14c9: 3f bc 16  call  $16bc
14cc: e4 03     mov   a,$03
14ce: d7 05     mov   ($05)+y,a
14d0: fc        inc   y
14d1: e4 04     mov   a,$04
14d3: d7 05     mov   ($05)+y,a
14d5: fc        inc   y
14d6: cd 00     mov   x,#$00
14d8: e7 03     mov   a,($03+x)
14da: d7 05     mov   ($05)+y,a
14dc: fc        inc   y
14dd: dd        mov   a,y
14de: f8 34     mov   x,$34
14e0: d5 df 02  mov   $02df+x,a
14e3: 5f a7 12  jmp   $12a7

; vcmd de
14e6: f8 34     mov   x,$34
14e8: 3f bc 16  call  $16bc
14eb: dc        dec   y
14ec: f7 05     mov   a,($05)+y
14ee: 9c        dec   a
14ef: f0 0f     beq   $1500
14f1: d7 05     mov   ($05)+y,a
14f3: dc        dec   y
14f4: f7 05     mov   a,($05)+y
14f6: c4 04     mov   $04,a
14f8: dc        dec   y
14f9: f7 05     mov   a,($05)+y
14fb: c4 03     mov   $03,a
14fd: 5f a7 12  jmp   $12a7

1500: dc        dec   y
1501: dc        dec   y
1502: dd        mov   a,y
1503: d5 df 02  mov   $02df+x,a
1506: 5f a9 12  jmp   $12a9

; vcmd df
1509: f8 34     mov   x,$34
150b: 3f bc 16  call  $16bc
150e: e4 03     mov   a,$03
1510: d7 05     mov   ($05)+y,a
1512: fc        inc   y
1513: e4 04     mov   a,$04
1515: d7 05     mov   ($05)+y,a
1517: fc        inc   y
1518: dd        mov   a,y
1519: d5 df 02  mov   $02df+x,a
151c: 8d 00     mov   y,#$00
151e: f7 03     mov   a,($03)+y
1520: 5d        mov   x,a
1521: fc        inc   y
1522: f7 03     mov   a,($03)+y
1524: c4 04     mov   $04,a
1526: d8 03     mov   $03,x
1528: 5f a9 12  jmp   $12a9

; vcmd e0
152b: 8d 00     mov   y,#$00
152d: f7 03     mov   a,($03)+y
152f: 5d        mov   x,a
1530: fc        inc   y
1531: f7 03     mov   a,($03)+y
1533: c4 04     mov   $04,a
1535: d8 03     mov   $03,x
1537: 5f a9 12  jmp   $12a9

; vcmd e1
153a: f8 34     mov   x,$34
153c: 8d 00     mov   y,#$00
153e: f7 03     mov   a,($03)+y
1540: d5 7b 02  mov   $027b+x,a
1543: 5f a7 12  jmp   $12a7

; vcmd e2
1546: f8 34     mov   x,$34
1548: 8d 00     mov   y,#$00
154a: f7 03     mov   a,($03)+y
154c: 28 7f     and   a,#$7f
154e: f0 0d     beq   $155d
1550: d5 84 02  mov   $0284+x,a
1553: 3a 03     incw  $03
1555: f7 03     mov   a,($03)+y
1557: d5 8c 02  mov   $028c+x,a
155a: 5f a7 12  jmp   $12a7

155d: d5 8c 02  mov   $028c+x,a
1560: 3a 03     incw  $03
1562: 5f a7 12  jmp   $12a7

; vcmd e3
1565: f8 34     mov   x,$34
1567: 8d 00     mov   y,#$00
1569: f7 03     mov   a,($03)+y
156b: d0 08     bne   $1575
156d: f5 5b 0f  mov   a,$0f5b+x
1570: 4e 83 02  tclr1 $0283
1573: e8 00     mov   a,#$00
1575: d5 a4 02  mov   $02a4+x,a
1578: 5f a7 12  jmp   $12a7

; vcmd e4
157b: 8d 00     mov   y,#$00
157d: f7 03     mov   a,($03)+y
157f: c5 42 01  mov   $0142,a
1582: 3a 03     incw  $03
1584: f7 03     mov   a,($03)+y
1586: c5 43 01  mov   $0143,a
1589: 5f a7 12  jmp   $12a7

; vcmd e5
158c: 8d 00     mov   y,#$00
158e: f7 03     mov   a,($03)+y
1590: c5 45 01  mov   $0145,a
1593: 3a 03     incw  $03
1595: f7 03     mov   a,($03)+y
1597: c5 44 01  mov   $0144,a
159a: 3a 03     incw  $03
159c: f7 03     mov   a,($03)+y
159e: c5 47 01  mov   $0147,a
15a1: 3f 8f 0d  call  $0d8f
15a4: 42 98     set2  $98
15a6: 5f a7 12  jmp   $12a7

; vcmd e6
15a9: f8 34     mov   x,$34
15ab: f5 5b 0f  mov   a,$0f5b+x
15ae: 0e 77 00  tset1 $0077
15b1: 5f a9 12  jmp   $12a9

; vcmd e7
15b4: f8 34     mov   x,$34
15b6: 8d 00     mov   y,#$00
15b8: f7 03     mov   a,($03)+y
15ba: d5 41 02  mov   $0241+x,a
15bd: 5f a7 12  jmp   $12a7

; vcmd e8
15c0: f8 34     mov   x,$34
15c2: f5 41 02  mov   a,$0241+x
15c5: 8d 00     mov   y,#$00
15c7: 60        clrc
15c8: 97 03     adc   a,($03)+y
15ca: d5 41 02  mov   $0241+x,a
15cd: 5f a7 12  jmp   $12a7

; vcmd e9
15d0: f8 34     mov   x,$34
15d2: 8d 00     mov   y,#$00
15d4: f7 03     mov   a,($03)+y
15d6: 28 7f     and   a,#$7f
15d8: f0 1c     beq   $15f6
15da: d5 b5 02  mov   $02b5+x,a
15dd: 3a 03     incw  $03
15df: f7 03     mov   a,($03)+y
15e1: f0 15     beq   $15f8
15e3: d5 bd 02  mov   $02bd+x,a
15e6: 3a 03     incw  $03
15e8: f7 03     mov   a,($03)+y
15ea: d5 c5 02  mov   $02c5+x,a
15ed: f4 90     mov   a,$90+x
15ef: 08 10     or    a,#$10
15f1: d4 90     mov   $90+x,a
15f3: 5f a7 12  jmp   $12a7

15f6: 3a 03     incw  $03
15f8: 3a 03     incw  $03
15fa: 5f a7 12  jmp   $12a7

; vcmd ea
15fd: f8 34     mov   x,$34
15ff: f4 90     mov   a,$90+x
1601: 28 ef     and   a,#$ef
1603: d4 90     mov   $90+x,a
1605: 5f a9 12  jmp   $12a9

; vcmd eb
1608: f8 34     mov   x,$34
160a: e4 03     mov   a,$03
160c: d5 52 02  mov   $0252+x,a
160f: e4 04     mov   a,$04
1611: d5 5a 02  mov   $025a+x,a
1614: 5f a9 12  jmp   $12a9

; vcmd ec
1617: f8 34     mov   x,$34
1619: f5 52 02  mov   a,$0252+x
161c: c4 03     mov   $03,a
161e: f5 5a 02  mov   a,$025a+x
1621: c4 04     mov   $04,a
1623: 5f a9 12  jmp   $12a9

; vcmd ed
1626: f8 34     mov   x,$34
1628: f4 90     mov   a,$90+x
162a: 28 20     and   a,#$20
162c: d0 10     bne   $163e
162e: f4 90     mov   a,$90+x
1630: 08 20     or    a,#$20
1632: d4 90     mov   $90+x,a
1634: f5 52 02  mov   a,$0252+x
1637: c4 03     mov   $03,a
1639: f5 5a 02  mov   a,$025a+x
163c: c4 04     mov   $04,a
163e: 5f a9 12  jmp   $12a9

; vcmd ee
1641: 8d 00     mov   y,#$00
1643: f7 03     mov   a,($03)+y
1645: 68 5a     cmp   a,#$5a
1647: 90 02     bcc   $164b
1649: e8 5a     mov   a,#$5a
164b: 5d        mov   x,a
164c: f5 dd 1a  mov   a,$1add+x
164f: f8 34     mov   x,$34
1651: d5 6b 02  mov   $026b+x,a
1654: f5 73 02  mov   a,$0273+x
1657: 28 7f     and   a,#$7f
1659: d5 73 02  mov   $0273+x,a
165c: 5f a7 12  jmp   $12a7

; vcmd fe
165f: cd 00     mov   x,#$00
1661: e7 03     mov   a,($03+x)
1663: c4 00     mov   $00,a
1665: 3a 03     incw  $03
1667: 1c        asl   a
1668: 5d        mov   x,a
1669: 1f 1c 13  jmp   ($131c+x)

; vcmd ff
166c: f8 34     mov   x,$34
166e: f5 df 02  mov   a,$02df+x
1671: f0 16     beq   $1689
1673: 3f bc 16  call  $16bc
1676: dc        dec   y
1677: f7 05     mov   a,($05)+y
1679: c4 04     mov   $04,a
167b: dc        dec   y
167c: f7 05     mov   a,($05)+y
167e: c4 03     mov   $03,a
1680: dd        mov   a,y
1681: d5 df 02  mov   $02df+x,a
1684: 3a 03     incw  $03
1686: 5f a7 12  jmp   $12a7

; subcmd 00
1689: f8 34     mov   x,$34
168b: f4 88     mov   a,$88+x
168d: 28 7f     and   a,#$7f
168f: d4 88     mov   $88+x,a
1691: 6f        ret

; subcmd 01
1692: f8 34     mov   x,$34
1694: f5 5b 0f  mov   a,$0f5b+x
1697: 4e 77 00  tclr1 $0077
169a: 5f a9 12  jmp   $12a9

; subcmd 02
169d: 8f 00 77  mov   $77,#$00
16a0: 3f 95 0d  call  $0d95
16a3: 5f a9 12  jmp   $12a9

; subcmd 03
16a6: f8 34     mov   x,$34
16a8: f4 88     mov   a,$88+x
16aa: 08 08     or    a,#$08
16ac: d4 88     mov   $88+x,a
16ae: 5f a9 12  jmp   $12a9

; subcmd 04
16b1: f8 34     mov   x,$34
16b3: f4 88     mov   a,$88+x
16b5: 28 f7     and   a,#$f7
16b7: d4 88     mov   $88+x,a
16b9: 5f a9 12  jmp   $12a9

16bc: f5 c5 1a  mov   a,$1ac5+x
16bf: c4 05     mov   $05,a
16c1: f5 cd 1a  mov   a,$1acd+x
16c4: c4 06     mov   $06,a
16c6: f5 df 02  mov   a,$02df+x
16c9: fd        mov   y,a
16ca: 6f        ret

16cb: f8 34     mov   x,$34
16cd: f5 62 02  mov   a,$0262+x
16d0: 30 1b     bmi   $16ed
16d2: 08 80     or    a,#$80
16d4: d5 62 02  mov   $0262+x,a
16d7: 1c        asl   a
16d8: 1c        asl   a
16d9: fd        mov   y,a
16da: f7 30     mov   a,($30)+y
16dc: d4 55     mov   $55+x,a
16de: fc        inc   y
16df: f7 30     mov   a,($30)+y
16e1: d4 5d     mov   $5d+x,a
16e3: fc        inc   y
16e4: f7 30     mov   a,($30)+y
16e6: d4 65     mov   $65+x,a
16e8: fc        inc   y
16e9: f7 30     mov   a,($30)+y
16eb: d4 6d     mov   $6d+x,a
16ed: 6f        ret

16ee: f8 34     mov   x,$34
16f0: f5 73 02  mov   a,$0273+x
16f3: 30 47     bmi   $173c
16f5: 08 80     or    a,#$80
16f7: d5 73 02  mov   $0273+x,a
16fa: 28 7f     and   a,#$7f
16fc: 13 2d 02  bbc0  $2d,$1701
16ff: e8 0f     mov   a,#$0f
1701: c4 00     mov   $00,a
1703: f5 6b 02  mov   a,$026b+x
1706: c4 01     mov   $01,a
1708: 3f 44 0f  call  $0f44
170b: cb 04     mov   $04,y
170d: ec 6a 02  mov   y,$026a
1710: cf        mul   ya
1711: cb 03     mov   $03,y
1713: e4 04     mov   a,$04
1715: ec 6a 02  mov   y,$026a
1718: cf        mul   ya
1719: cb 04     mov   $04,y
171b: f8 34     mov   x,$34
171d: 03 2d 16  bbs0  $2d,$1736
1720: f4 90     mov   a,$90+x
1722: 28 01     and   a,#$01
1724: f0 05     beq   $172b
1726: 58 ff 03  eor   $03,#$ff
1729: ab 03     inc   $03
172b: f4 90     mov   a,$90+x
172d: 28 02     and   a,#$02
172f: f0 05     beq   $1736
1731: 58 ff 04  eor   $04,#$ff
1734: ab 04     inc   $04
1736: ba 03     movw  ya,$03
1738: d4 35     mov   $35+x,a
173a: db 3d     mov   $3d+x,y
173c: 6f        ret

173d: f8 34     mov   x,$34
173f: f4 88     mov   a,$88+x
1741: 28 02     and   a,#$02
1743: f0 4a     beq   $178f
1745: f8 34     mov   x,$34
1747: f4 90     mov   a,$90+x
1749: 28 10     and   a,#$10
174b: f0 0a     beq   $1757
174d: f5 4a 02  mov   a,$024a+x
1750: 68 01     cmp   a,#$01
1752: d0 35     bne   $1789
1754: 3f 33 1a  call  $1a33
1757: f4 55     mov   a,$55+x
1759: 3f 6c 0e  call  $0e6c
175c: f5 11 02  mov   a,$0211+x
175f: 28 7f     and   a,#$7f
1761: 8d 02     mov   y,#$02
1763: 60        clrc
1764: 97 03     adc   a,($03)+y
1766: 60        clrc
1767: 95 41 02  adc   a,$0241+x
176a: 60        clrc
176b: 85 49 02  adc   a,$0249
176e: c4 00     mov   $00,a
1770: 8d 00     mov   y,#$00
1772: f5 7b 02  mov   a,$027b+x
1775: 10 01     bpl   $1778
1777: dc        dec   y
1778: da 05     movw  $05,ya
177a: 3f 79 0e  call  $0e79
177d: f8 34     mov   x,$34
177f: d4 45     mov   $45+x,a
1781: db 4d     mov   $4d+x,y
1783: e8 00     mov   a,#$00
1785: d4 78     mov   $78+x,a
1787: d4 80     mov   $80+x,a
1789: f4 88     mov   a,$88+x
178b: 28 fd     and   a,#$fd
178d: d4 88     mov   $88+x,a
178f: f5 a4 02  mov   a,$02a4+x
1792: f0 1b     beq   $17af
1794: f5 4a 02  mov   a,$024a+x
1797: 68 01     cmp   a,#$01
1799: d0 03     bne   $179e
179b: 3f d3 19  call  $19d3
179e: f5 ac 02  mov   a,$02ac+x
17a1: f0 0c     beq   $17af
17a3: 9c        dec   a
17a4: d5 ac 02  mov   $02ac+x,a
17a7: d0 06     bne   $17af
17a9: f5 5b 0f  mov   a,$0f5b+x
17ac: 0e 83 02  tset1 $0283
17af: 6f        ret

17b0: f8 34     mov   x,$34
17b2: f5 4a 02  mov   a,$024a+x
17b5: 1c        asl   a
17b6: 5d        mov   x,a
17b7: 1f ba 17  jmp   ($17ba+x)

17ba: dw $17c4  ;
17bc: dw $17cd  ;
17be: dw $17e6  ;
17c0: dw $17f3  ;
17c2: dw $1802  ;

17c4: f8 34     mov   x,$34
17c6: f5 5b 0f  mov   a,$0f5b+x
17c9: 0e 76 00  tset1 $0076
17cc: 6f        ret

17cd: 3f 03 18  call  $1803
17d0: f8 34     mov   x,$34
17d2: f5 5b 0f  mov   a,$0f5b+x
17d5: 0e 75 00  tset1 $0075
17d8: f4 5d     mov   a,$5d+x
17da: 08 80     or    a,#$80
17dc: d4 5d     mov   $5d+x,a
17de: f8 34     mov   x,$34
17e0: e8 02     mov   a,#$02
17e2: d5 4a 02  mov   $024a+x,a
17e5: 6f        ret

17e6: 3f 03 18  call  $1803
17e9: f5 29 02  mov   a,$0229+x
17ec: f0 05     beq   $17f3
17ee: 9c        dec   a
17ef: d5 29 02  mov   $0229+x,a
17f2: 6f        ret

17f3: f8 34     mov   x,$34
17f5: f4 5d     mov   a,$5d+x
17f7: 28 7f     and   a,#$7f
17f9: d4 5d     mov   $5d+x,a
17fb: f8 34     mov   x,$34
17fd: e8 04     mov   a,#$04
17ff: d5 4a 02  mov   $024a+x,a
1802: 6f        ret

1803: f8 34     mov   x,$34
1805: f5 21 02  mov   a,$0221+x
1808: 9c        dec   a
1809: d0 0b     bne   $1816
180b: f5 11 02  mov   a,$0211+x
180e: 30 06     bmi   $1816
1810: f5 5b 0f  mov   a,$0f5b+x
1813: 0e 76 00  tset1 $0076
1816: 6f        ret

1817: e8 00     mov   a,#$00
1819: c5 30 01  mov   $0130,a
181c: 8f 07 34  mov   $34,#$07
181f: eb 34     mov   y,$34
1821: e5 31 01  mov   a,$0131
1824: 36 5b 0f  and   a,$0f5b+y
1827: d0 74     bne   $189d
1829: f6 88 00  mov   a,$0088+y
182c: 10 69     bpl   $1897
182e: 28 20     and   a,#$20
1830: d0 65     bne   $1897
1832: 3f b4 18  call  $18b4
1835: f8 34     mov   x,$34
1837: f4 55     mov   a,$55+x
1839: 30 08     bmi   $1843
183b: 8d 04     mov   y,#$04
183d: 4f 00     pcall $00
183f: 08 80     or    a,#$80
1841: d4 55     mov   $55+x,a
1843: f4 45     mov   a,$45+x
1845: 60        clrc
1846: 94 78     adc   a,$78+x
1848: c4 00     mov   $00,a
184a: f4 4d     mov   a,$4d+x
184c: 94 80     adc   a,$80+x
184e: 8d 03     mov   y,#$03
1850: 4f 00     pcall $00
1852: e4 00     mov   a,$00
1854: 8d 02     mov   y,#$02
1856: 4f 00     pcall $00
1858: f4 5d     mov   a,$5d+x
185a: 10 1d     bpl   $1879
185c: e4 75     mov   a,$75
185e: 35 5b 0f  and   a,$0f5b+x
1861: f0 20     beq   $1883
1863: 8d 08     mov   y,#$08
1865: 4f 13     pcall $13
1867: 68 03     cmp   a,#$03
1869: b0 f8     bcs   $1863
186b: f4 5d     mov   a,$5d+x
186d: 8d 05     mov   y,#$05
186f: 4f 00     pcall $00
1871: f4 65     mov   a,$65+x
1873: 8d 06     mov   y,#$06
1875: 4f 00     pcall $00
1877: 2f 0a     bra   $1883
1879: 8d 05     mov   y,#$05
187b: 4f 00     pcall $00
187d: f4 6d     mov   a,$6d+x
187f: 8d 07     mov   y,#$07
1881: 4f 00     pcall $00
1883: f4 35     mov   a,$35+x
1885: 8d 01     mov   y,#$01
1887: 4f 00     pcall $00
1889: f4 3d     mov   a,$3d+x
188b: 8d 00     mov   y,#$00
188d: 4f 00     pcall $00
188f: f5 5b 0f  mov   a,$0f5b+x
1892: 0e 30 01  tset1 $0130
1895: 2f 06     bra   $189d
1897: f6 5b 0f  mov   a,$0f5b+y
189a: 0e 76 00  tset1 $0076
189d: 8b 34     dec   $34
189f: 30 03     bmi   $18a4
18a1: 5f 1f 18  jmp   $181f

18a4: e4 75     mov   a,$75
18a6: c5 3a 01  mov   $013a,a
18a9: e4 76     mov   a,$76
18ab: c5 3c 01  mov   $013c,a
18ae: e4 77     mov   a,$77
18b0: c5 40 01  mov   $0140,a
18b3: 6f        ret

18b4: f6 32 01  mov   a,$0132+y
18b7: 1c        asl   a
18b8: 5d        mov   x,a
18b9: 1f bc 18  jmp   ($18bc+x)

18bc: dw $18e0  ;
18be: dw $18c2  ;
18c0: dw $18d4  ;

18c2: f6 62 02  mov   a,$0262+y
18c5: 28 7f     and   a,#$7f
18c7: d6 62 02  mov   $0262+y,a
18ca: e8 02     mov   a,#$02
18cc: d6 32 01  mov   $0132+y,a
18cf: ae        pop   a
18d0: ae        pop   a
18d1: 5f 97 18  jmp   $1897

18d4: e4 75     mov   a,$75
18d6: 36 5b 0f  and   a,$0f5b+y
18d9: f0 f4     beq   $18cf
18db: e8 00     mov   a,#$00
18dd: d6 32 01  mov   $0132+y,a
18e0: 6f        ret

18e1: e5 dd 02  mov   a,$02dd
18e4: f0 23     beq   $1909
18e6: 60        clrc
18e7: 85 de 02  adc   a,$02de
18ea: c5 de 02  mov   $02de,a
18ed: 10 1a     bpl   $1909
18ef: 28 7f     and   a,#$7f
18f1: c5 de 02  mov   $02de,a
18f4: e5 6a 02  mov   a,$026a
18f7: 80        setc
18f8: a8 02     sbc   a,#$02
18fa: c5 6a 02  mov   $026a,a
18fd: 68 05     cmp   a,#$05
18ff: b0 09     bcs   $190a
1901: 3f fc 10  call  $10fc
1904: e8 00     mov   a,#$00
1906: c5 dd 02  mov   $02dd,a
1909: 6f        ret

190a: e8 80     mov   a,#$80
190c: 4e 73 02  tclr1 $0273
190f: 4e 74 02  tclr1 $0274
1912: 4e 75 02  tclr1 $0275
1915: 4e 76 02  tclr1 $0276
1918: 4e 77 02  tclr1 $0277
191b: 4e 78 02  tclr1 $0278
191e: 4e 79 02  tclr1 $0279
1921: 4e 7a 02  tclr1 $027a
1924: 6f        ret

1925: e5 83 02  mov   a,$0283
1928: 05 b4 02  or    a,$02b4
192b: d0 01     bne   $192e
192d: 6f        ret

192e: 8f 07 34  mov   $34,#$07
1931: f8 34     mov   x,$34
1933: e5 31 01  mov   a,$0131
1936: 35 5b 0f  and   a,$0f5b+x
1939: d0 2b     bne   $1966
193b: f4 88     mov   a,$88+x
193d: 10 27     bpl   $1966
193f: 8f 00 03  mov   $03,#$00
1942: 8f 00 04  mov   $04,#$00
1945: e5 83 02  mov   a,$0283
1948: 35 5b 0f  and   a,$0f5b+x
194b: f0 05     beq   $1952
194d: 3f 6b 19  call  $196b
1950: da 03     movw  $03,ya
1952: f8 34     mov   x,$34
1954: e5 b4 02  mov   a,$02b4
1957: 35 5b 0f  and   a,$0f5b+x
195a: f0 07     beq   $1963
195c: 3f ee 19  call  $19ee
195f: 7a 03     addw  ya,$03
1961: da 03     movw  $03,ya
1963: 3f 72 1a  call  $1a72
1966: 8b 34     dec   $34
1968: 10 c7     bpl   $1931
196a: 6f        ret

196b: f5 84 02  mov   a,$0284+x
196e: c4 00     mov   $00,a
1970: f5 9c 02  mov   a,$029c+x
1973: 60        clrc
1974: 88 7f     adc   a,#$7f
1976: 8d 00     mov   y,#$00
1978: f8 00     mov   x,$00
197a: 9e        div   ya,x
197b: c4 00     mov   $00,a
197d: dd        mov   a,y
197e: f8 34     mov   x,$34
1980: d5 9c 02  mov   $029c+x,a
1983: f4 90     mov   a,$90+x
1985: 28 08     and   a,#$08
1987: d0 21     bne   $19aa
1989: f5 94 02  mov   a,$0294+x
198c: 60        clrc
198d: 84 00     adc   a,$00
198f: d5 94 02  mov   $0294+x,a
1992: 30 2b     bmi   $19bf
1994: 68 7f     cmp   a,#$7f
1996: d0 06     bne   $199e
1998: f4 90     mov   a,$90+x
199a: 48 08     eor   a,#$08
199c: d4 90     mov   $90+x,a
199e: f5 94 02  mov   a,$0294+x
19a1: fd        mov   y,a
19a2: f5 8c 02  mov   a,$028c+x
19a5: cf        mul   ya
19a6: dd        mov   a,y
19a7: 8d 00     mov   y,#$00
19a9: 6f        ret

19aa: f5 94 02  mov   a,$0294+x
19ad: 80        setc
19ae: a4 00     sbc   a,$00
19b0: d5 94 02  mov   $0294+x,a
19b3: 10 e9     bpl   $199e
19b5: 68 81     cmp   a,#$81
19b7: d0 06     bne   $19bf
19b9: f4 90     mov   a,$90+x
19bb: 48 08     eor   a,#$08
19bd: d4 90     mov   $90+x,a
19bf: f5 94 02  mov   a,$0294+x
19c2: 48 ff     eor   a,#$ff
19c4: bc        inc   a
19c5: fd        mov   y,a
19c6: f5 8c 02  mov   a,$028c+x
19c9: cf        mul   ya
19ca: dd        mov   a,y
19cb: f0 05     beq   $19d2
19cd: 48 ff     eor   a,#$ff
19cf: bc        inc   a
19d0: 8d ff     mov   y,#$ff
19d2: 6f        ret

19d3: e8 00     mov   a,#$00
19d5: d5 94 02  mov   $0294+x,a
19d8: d5 9c 02  mov   $029c+x,a
19db: f5 a4 02  mov   a,$02a4+x
19de: d5 ac 02  mov   $02ac+x,a
19e1: f4 90     mov   a,$90+x
19e3: 28 f7     and   a,#$f7
19e5: d4 90     mov   $90+x,a
19e7: f5 5b 0f  mov   a,$0f5b+x
19ea: 4e 83 02  tclr1 $0283
19ed: 6f        ret

19ee: f5 c5 02  mov   a,$02c5+x
19f1: f0 02     beq   $19f5
19f3: e8 ff     mov   a,#$ff
19f5: c4 01     mov   $01,a
19f7: f5 b5 02  mov   a,$02b5+x
19fa: c4 00     mov   $00,a
19fc: f5 d5 02  mov   a,$02d5+x
19ff: 60        clrc
1a00: 88 7f     adc   a,#$7f
1a02: 8d 00     mov   y,#$00
1a04: f8 00     mov   x,$00
1a06: 9e        div   ya,x
1a07: c4 00     mov   $00,a
1a09: dd        mov   a,y
1a0a: f8 34     mov   x,$34
1a0c: d5 d5 02  mov   $02d5+x,a
1a0f: f5 cd 02  mov   a,$02cd+x
1a12: 80        setc
1a13: a4 00     sbc   a,$00
1a15: d0 09     bne   $1a20
1a17: fd        mov   y,a
1a18: f5 5b 0f  mov   a,$0f5b+x
1a1b: 4e b4 02  tclr1 $02b4
1a1e: dd        mov   a,y
1a1f: 6f        ret

1a20: d5 cd 02  mov   $02cd+x,a
1a23: fd        mov   y,a
1a24: f5 bd 02  mov   a,$02bd+x
1a27: cf        mul   ya
1a28: dd        mov   a,y
1a29: f0 07     beq   $1a32
1a2b: eb 01     mov   y,$01
1a2d: f0 03     beq   $1a32
1a2f: 48 ff     eor   a,#$ff
1a31: bc        inc   a
1a32: 6f        ret

1a33: f5 bd 02  mov   a,$02bd+x
1a36: fd        mov   y,a
1a37: f5 c5 02  mov   a,$02c5+x
1a3a: f0 02     beq   $1a3e
1a3c: e8 ff     mov   a,#$ff
1a3e: c4 04     mov   $04,a
1a40: e8 7f     mov   a,#$7f
1a42: cf        mul   ya
1a43: f5 19 02  mov   a,$0219+x
1a46: 5d        mov   x,a
1a47: f5 5b 0f  mov   a,$0f5b+x
1a4a: cf        mul   ya
1a4b: dd        mov   a,y
1a4c: eb 04     mov   y,$04
1a4e: f0 03     beq   $1a53
1a50: 48 ff     eor   a,#$ff
1a52: bc        inc   a
1a53: c4 03     mov   $03,a
1a55: f8 34     mov   x,$34
1a57: e4 03     mov   a,$03
1a59: d4 78     mov   $78+x,a
1a5b: e4 04     mov   a,$04
1a5d: d4 80     mov   $80+x,a
1a5f: f8 34     mov   x,$34
1a61: e8 7f     mov   a,#$7f
1a63: d5 cd 02  mov   $02cd+x,a
1a66: e8 00     mov   a,#$00
1a68: d5 d5 02  mov   $02d5+x,a
1a6b: f5 5b 0f  mov   a,$0f5b+x
1a6e: 0e b4 02  tset1 $02b4
1a71: 6f        ret

1a72: f8 34     mov   x,$34
1a74: f5 19 02  mov   a,$0219+x
1a77: f0 2e     beq   $1aa7
1a79: 1c        asl   a
1a7a: 5d        mov   x,a
1a7b: e4 03     mov   a,$03
1a7d: 1f 80 1a  jmp   ($1a80+x)

1a80: dw $1aa5  ;
1a82: dw $1aa2  ;
1a83: dw $1a9f  ;
1a85: dw $1a9c  ;
1a87: dw $1a99  ;
1a89: dw $1a96  ;
1a8b: dw $1a96  ;
1a8d: dw $1a96  ;
1a8f: dw $1a96  ;
1a91: dw $1a96  ;
1a93: dw $1a96  ;

1a95: 1c        asl   a
1a96: 2b 04     rol   $04
1a99: 1c        asl   a
1a9a: 2b 04     rol   $04
1a9c: 1c        asl   a
1a9d: 2b 04     rol   $04
1a9f: 1c        asl   a
1aa0: 2b 04     rol   $04
1aa2: 1c        asl   a
1aa3: 2b 04     rol   $04
1aa5: c4 03     mov   $03,a
1aa7: f8 34     mov   x,$34
1aa9: e4 04     mov   a,$04
1aab: d4 80     mov   $80+x,a
1aad: e4 03     mov   a,$03
1aaf: d4 78     mov   $78+x,a
1ab1: 60        clrc
1ab2: 94 45     adc   a,$45+x
1ab4: c4 03     mov   $03,a
1ab6: f4 4d     mov   a,$4d+x
1ab8: 84 04     adc   a,$04
1aba: 8d 03     mov   y,#$03
1abc: 4f 00     pcall $00
1abe: e4 03     mov   a,$03
1ac0: 8d 02     mov   y,#$02
1ac2: 5f 00 ff  jmp   $ff00

1ac5: db $e7,$f7,$07,$17,$27,$37,$47,$57
1acd: db $02,$02,$03,$03,$03,$03,$03,$03

1ad5: db $c0,$60,$30,$18,$0c,$06,$03,$01

1add: db $00,$01,$02,$02,$02,$02,$02,$02
1ae5: db $02,$02,$03,$03,$03,$03,$03,$03
1aed: db $04,$04,$04,$04,$05,$05,$05,$05
1af5: db $06,$06,$06,$07,$07,$08,$08,$09
1afd: db $09,$0a,$0a,$0b,$0b,$0c,$0d,$0e
1b05: db $0e,$0f,$10,$11,$12,$13,$14,$15
1b0d: db $17,$18,$1a,$1b,$1d,$1e,$20,$22
1b15: db $24,$26,$28,$2b,$2d,$30,$33,$36
1b1d: db $39,$3c,$40,$44,$48,$4c,$51,$55
1b25: db $5a,$60,$66,$6c,$72,$79,$80,$87
1b2d: db $8f,$98,$a1,$aa,$b5,$bf,$cb,$d7
1b35: db $e3,$f1,$ff

1b38: 8d 00     mov   y,#$00
1b3a: f7 0f     mov   a,($0f)+y
1b3c: c4 99     mov   $99,a
1b3e: fc        inc   y
1b3f: f7 0f     mov   a,($0f)+y
1b41: c4 9a     mov   $9a,a
1b43: fc        inc   y
1b44: f7 0f     mov   a,($0f)+y
1b46: c4 9b     mov   $9b,a
1b48: fc        inc   y
1b49: f7 0f     mov   a,($0f)+y
1b4b: c4 9c     mov   $9c,a
1b4d: fc        inc   y
1b4e: f7 0f     mov   a,($0f)+y
1b50: c4 9d     mov   $9d,a
1b52: fc        inc   y
1b53: f7 0f     mov   a,($0f)+y
1b55: c4 9e     mov   $9e,a
1b57: cd 03     mov   x,#$03
1b59: e8 00     mov   a,#$00
1b5b: d4 a0     mov   $a0+x,a
1b5d: 1d        dec   x
1b5e: 10 fb     bpl   $1b5b
1b60: e8 ff     mov   a,#$ff
1b62: c5 b3 03  mov   $03b3,a
1b65: e8 00     mov   a,#$00
1b67: c5 8a 03  mov   $038a,a
1b6a: 6f        ret

1b6b: 3f 93 1b  call  $1b93
1b6e: 3f c4 1b  call  $1bc4
1b71: 3f 49 1c  call  $1c49
1b74: 8f 03 9f  mov   $9f,#$03
1b77: f8 9f     mov   x,$9f
1b79: f4 a0     mov   a,$a0+x
1b7b: 10 0f     bpl   $1b8c
1b7d: 3f 55 1c  call  $1c55
1b80: 3f d0 1e  call  $1ed0
1b83: 3f f3 1e  call  $1ef3
1b86: 3f 3f 1f  call  $1f3f
1b89: 3f 08 20  call  $2008
1b8c: 8b 9f     dec   $9f
1b8e: 10 e7     bpl   $1b77
1b90: 5f 3d 20  jmp   $203d

1b93: e4 21     mov   a,$21
1b95: 30 2c     bmi   $1bc3
1b97: e2 21     set7  $21
1b99: ec 31 01  mov   y,$0131
1b9c: f0 0d     beq   $1bab
1b9e: fd        mov   y,a
1b9f: f7 9d     mov   a,($9d)+y
1ba1: eb a4     mov   y,$a4
1ba3: 77 9d     cmp   a,($9d)+y
1ba5: 90 1c     bcc   $1bc3
1ba7: e4 21     mov   a,$21
1ba9: 28 7f     and   a,#$7f
1bab: c4 a4     mov   $a4,a
1bad: 3f fe 1b  call  $1bfe
1bb0: ae        pop   a
1bb1: ae        pop   a
1bb2: e5 88 03  mov   a,$0388
1bb5: 8d 5c     mov   y,#$5c
1bb7: 4f 0c     pcall $0c
1bb9: 8d 0b     mov   y,#$0b
1bbb: fe fe     dbnz  y,$1bbb
1bbd: e8 00     mov   a,#$00
1bbf: 8d 5c     mov   y,#$5c
1bc1: 4f 0c     pcall $0c
1bc3: 6f        ret

1bc4: e4 25     mov   a,$25
1bc6: 8f 00 25  mov   $25,#$00
1bc9: 1c        asl   a
1bca: 5d        mov   x,a
1bcb: 1f ce 1b  jmp   ($1bce+x)

1bce: dw $1bd4  ;
1bd0: dw $1bd5  ;
1bd2: dw $1bf8  ;

1bd4: 6f        ret

1bd5: e8 00     mov   a,#$00
1bd7: c5 88 03  mov   $0388,a
1bda: cd 03     mov   x,#$03
1bdc: f4 a0     mov   a,$a0+x
1bde: 10 03     bpl   $1be3
1be0: 3f c0 20  call  $20c0
1be3: 1d        dec   x
1be4: 10 f6     bpl   $1bdc
1be6: e5 88 03  mov   a,$0388
1be9: 8d 5c     mov   y,#$5c
1beb: 4f 0c     pcall $0c
1bed: 8d 0b     mov   y,#$0b
1bef: fe fe     dbnz  y,$1bef
1bf1: e8 00     mov   a,#$00
1bf3: 8d 5c     mov   y,#$5c
1bf5: 5f 0c ff  jmp   $ff0c

1bf8: e4 26     mov   a,$26
1bfa: c5 b3 03  mov   $03b3,a
1bfd: 6f        ret

1bfe: 1c        asl   a
1bff: fd        mov   y,a
1c00: f7 99     mov   a,($99)+y
1c02: c4 03     mov   $03,a
1c04: fc        inc   y
1c05: f7 99     mov   a,($99)+y
1c07: c4 04     mov   $04,a
1c09: 8d 00     mov   y,#$00
1c0b: f7 03     mov   a,($03)+y
1c0d: c4 00     mov   $00,a
1c0f: c5 88 03  mov   $0388,a
1c12: 4e 8a 03  tclr1 $038a
1c15: cd 00     mov   x,#$00
1c17: 4b 00     lsr   $00
1c19: 90 28     bcc   $1c43
1c1b: fc        inc   y
1c1c: f7 03     mov   a,($03)+y
1c1e: d5 8b 03  mov   $038b+x,a
1c21: fc        inc   y
1c22: f7 03     mov   a,($03)+y
1c24: d5 8f 03  mov   $038f+x,a
1c27: e8 00     mov   a,#$00
1c29: d5 af 03  mov   $03af+x,a
1c2c: d5 ab 03  mov   $03ab+x,a
1c2f: d5 bc 03  mov   $03bc+x,a
1c32: d5 cc 03  mov   $03cc+x,a
1c35: d5 c0 03  mov   $03c0+x,a
1c38: d5 9b 03  mov   $039b+x,a
1c3b: bc        inc   a
1c3c: d5 97 03  mov   $0397+x,a
1c3f: e8 80     mov   a,#$80
1c41: d4 a0     mov   $a0+x,a
1c43: 3d        inc   x
1c44: c8 04     cmp   x,#$04
1c46: 90 cf     bcc   $1c17
1c48: 6f        ret

1c49: e8 00     mov   a,#$00
1c4b: c5 87 03  mov   $0387,a
1c4e: c5 88 03  mov   $0388,a
1c51: c5 89 03  mov   $0389,a
1c54: 6f        ret

1c55: f8 9f     mov   x,$9f
1c57: f5 97 03  mov   a,$0397+x
1c5a: 9c        dec   a
1c5b: f0 10     beq   $1c6d
1c5d: d5 97 03  mov   $0397+x,a
1c60: 9c        dec   a
1c61: d0 09     bne   $1c6c
1c63: f4 a0     mov   a,$a0+x
1c65: 28 10     and   a,#$10
1c67: d0 03     bne   $1c6c
1c69: d5 9b 03  mov   $039b+x,a
1c6c: 6f        ret

1c6d: f5 8b 03  mov   a,$038b+x
1c70: c4 03     mov   $03,a
1c72: f5 8f 03  mov   a,$038f+x
1c75: c4 04     mov   $04,a
1c77: 2f 02     bra   $1c7b
1c79: 3a 03     incw  $03
1c7b: cd 00     mov   x,#$00
1c7d: e7 03     mov   a,($03+x)
1c7f: 3a 03     incw  $03
1c81: c4 00     mov   $00,a
1c83: 68 d0     cmp   a,#$d0
1c85: 90 35     bcc   $1cbc
1c87: a8 d0     sbc   a,#$d0
1c89: 1c        asl   a
1c8a: 5d        mov   x,a
1c8b: 1f 8e 1c  jmp   ($1c8e+x)

1c8e: dw $1d13  ;
1c90: dw $1d1c  ;
1c92: dw $1d28  ;
1c94: dw $1d39  ;
1c96: dw $1d47  ;
1c98: dw $1d55  ;
1c9a: dw $1d65  ;
1c9c: dw $1d71  ;
1c9e: dw $1d97  ;
1ca0: dw $1da3  ;
1ca2: dw $1dbf  ;
1ca4: dw $1dcb  ;
1ca6: dw $1ddb  ;
1ca8: dw $1dee  ;
1caa: dw $1dfa  ;
1cac: dw $1e06  ;
1cae: dw $1e1c  ;
1cb0: dw $1e43  ;
1cb2: dw $1e6e  ;
1cb4: dw $1e7e  ;
1cb6: dw $1e90  ;
1cb8: dw $1e9b  ;
1cba: dw $1eaa  ;

1cbc: f8 9f     mov   x,$9f
1cbe: f5 93 03  mov   a,$0393+x
1cc1: f0 09     beq   $1ccc
1cc3: fd        mov   y,a
1cc4: e4 00     mov   a,$00
1cc6: 28 0f     and   a,#$0f
1cc8: bc        inc   a
1cc9: cf        mul   ya
1cca: 2f 06     bra   $1cd2
1ccc: 8d 00     mov   y,#$00
1cce: f7 03     mov   a,($03)+y
1cd0: 3a 03     incw  $03
1cd2: d5 97 03  mov   $0397+x,a
1cd5: 8d 00     mov   y,#$00
1cd7: f7 03     mov   a,($03)+y
1cd9: 68 d5     cmp   a,#$d5
1cdb: d0 06     bne   $1ce3
1cdd: f4 a0     mov   a,$a0+x
1cdf: 08 10     or    a,#$10
1ce1: d4 a0     mov   $a0+x,a
1ce3: 38 f0 00  and   $00,#$f0
1ce6: f5 9f 03  mov   a,$039f+x
1ce9: 28 0f     and   a,#$0f
1ceb: 04 00     or    a,$00
1ced: d5 9f 03  mov   $039f+x,a
1cf0: e4 00     mov   a,$00
1cf2: f0 0b     beq   $1cff
1cf4: f5 9b 03  mov   a,$039b+x
1cf7: fd        mov   y,a
1cf8: e8 01     mov   a,#$01
1cfa: ad 04     cmp   y,#$04
1cfc: d0 01     bne   $1cff
1cfe: bc        inc   a
1cff: d5 9b 03  mov   $039b+x,a
1d02: e4 03     mov   a,$03
1d04: d5 8b 03  mov   $038b+x,a
1d07: e4 04     mov   a,$04
1d09: d5 8f 03  mov   $038f+x,a
1d0c: f4 a0     mov   a,$a0+x
1d0e: 08 20     or    a,#$20
1d10: d4 a0     mov   $a0+x,a
1d12: 6f        ret

1d13: f8 9f     mov   x,$9f
1d15: f4 a0     mov   a,$a0+x
1d17: 08 40     or    a,#$40
1d19: d4 a0     mov   $a0+x,a
1d1b: 6f        ret

1d1c: f8 9f     mov   x,$9f
1d1e: 8d 00     mov   y,#$00
1d20: f7 03     mov   a,($03)+y
1d22: d5 93 03  mov   $0393+x,a
1d25: 5f 79 1c  jmp   $1c79

1d28: f8 9f     mov   x,$9f
1d2a: f5 9f 03  mov   a,$039f+x
1d2d: 28 f0     and   a,#$f0
1d2f: 8d 00     mov   y,#$00
1d31: 17 03     or    a,($03)+y
1d33: d5 9f 03  mov   $039f+x,a
1d36: 5f 79 1c  jmp   $1c79

1d39: f8 9f     mov   x,$9f
1d3b: f5 9f 03  mov   a,$039f+x
1d3e: bc        inc   a
1d3f: 28 f7     and   a,#$f7
1d41: d5 9f 03  mov   $039f+x,a
1d44: 5f 7b 1c  jmp   $1c7b

1d47: f8 9f     mov   x,$9f
1d49: f5 9f 03  mov   a,$039f+x
1d4c: 9c        dec   a
1d4d: 28 f7     and   a,#$f7
1d4f: d5 9f 03  mov   $039f+x,a
1d52: 5f 7b 1c  jmp   $1c7b

1d55: f8 9f     mov   x,$9f
1d57: f4 a0     mov   a,$a0+x
1d59: 28 ef     and   a,#$ef
1d5b: d4 a0     mov   $a0+x,a
1d5d: e8 04     mov   a,#$04
1d5f: d5 9b 03  mov   $039b+x,a
1d62: 5f 7b 1c  jmp   $1c7b

1d65: f8 9f     mov   x,$9f
1d67: 8d 00     mov   y,#$00
1d69: f7 03     mov   a,($03)+y
1d6b: d5 b4 03  mov   $03b4+x,a
1d6e: 5f 79 1c  jmp   $1c79

1d71: f8 9f     mov   x,$9f
1d73: 8d 00     mov   y,#$00
1d75: f7 03     mov   a,($03)+y
1d77: c4 05     mov   $05,a
1d79: 10 01     bpl   $1d7c
1d7b: dc        dec   y
1d7c: cb 06     mov   $06,y
1d7e: 8d 00     mov   y,#$00
1d80: f5 b4 03  mov   a,$03b4+x
1d83: 7a 05     addw  ya,$05
1d85: 10 04     bpl   $1d8b
1d87: e8 00     mov   a,#$00
1d89: 2f 06     bra   $1d91
1d8b: ad 00     cmp   y,#$00
1d8d: f0 02     beq   $1d91
1d8f: e8 ff     mov   a,#$ff
1d91: d5 b4 03  mov   $03b4+x,a
1d94: 5f 79 1c  jmp   $1c79

1d97: f8 9f     mov   x,$9f
1d99: 8d 00     mov   y,#$00
1d9b: f7 03     mov   a,($03)+y
1d9d: d5 b8 03  mov   $03b8+x,a
1da0: 5f 79 1c  jmp   $1c79

1da3: f8 9f     mov   x,$9f
1da5: 8d 00     mov   y,#$00
1da7: f5 b8 03  mov   a,$03b8+x
1daa: 60        clrc
1dab: 97 03     adc   a,($03)+y
1dad: 10 04     bpl   $1db3
1daf: e8 00     mov   a,#$00
1db1: 2f 06     bra   $1db9
1db3: 68 1f     cmp   a,#$1f
1db5: 90 02     bcc   $1db9
1db7: e8 1f     mov   a,#$1f
1db9: d5 b8 03  mov   $03b8+x,a
1dbc: 5f 79 1c  jmp   $1c79

1dbf: f8 9f     mov   x,$9f
1dc1: 8d 00     mov   y,#$00
1dc3: f7 03     mov   a,($03)+y
1dc5: d5 bc 03  mov   $03bc+x,a
1dc8: 5f 79 1c  jmp   $1c79

1dcb: f8 9f     mov   x,$9f
1dcd: 8d 00     mov   y,#$00
1dcf: f5 bc 03  mov   a,$03bc+x
1dd2: 60        clrc
1dd3: 97 03     adc   a,($03)+y
1dd5: d5 bc 03  mov   $03bc+x,a
1dd8: 5f 79 1c  jmp   $1c79

1ddb: f8 9f     mov   x,$9f
1ddd: 8d 00     mov   y,#$00
1ddf: f7 03     mov   a,($03)+y
1de1: d5 c0 03  mov   $03c0+x,a
1de4: dd        mov   a,y
1de5: d5 c4 03  mov   $03c4+x,a
1de8: d5 c8 03  mov   $03c8+x,a
1deb: 5f 79 1c  jmp   $1c79

1dee: f8 9f     mov   x,$9f
1df0: 8d 00     mov   y,#$00
1df2: f7 03     mov   a,($03)+y
1df4: d5 af 03  mov   $03af+x,a
1df7: 5f 79 1c  jmp   $1c79

1dfa: f8 9f     mov   x,$9f
1dfc: 8d 00     mov   y,#$00
1dfe: f7 03     mov   a,($03)+y
1e00: d5 ab 03  mov   $03ab+x,a
1e03: 5f 79 1c  jmp   $1c79

1e06: f8 9f     mov   x,$9f
1e08: 8d 00     mov   y,#$00
1e0a: f7 03     mov   a,($03)+y
1e0c: 9f        xcn   a
1e0d: c4 00     mov   $00,a
1e0f: f5 cc 03  mov   a,$03cc+x
1e12: 28 0f     and   a,#$0f
1e14: 04 00     or    a,$00
1e16: d5 cc 03  mov   $03cc+x,a
1e19: 5f 79 1c  jmp   $1c79

1e1c: f8 9f     mov   x,$9f
1e1e: 3f bf 1e  call  $1ebf
1e21: e4 03     mov   a,$03
1e23: d7 05     mov   ($05)+y,a
1e25: fc        inc   y
1e26: e4 04     mov   a,$04
1e28: d7 05     mov   ($05)+y,a
1e2a: fc        inc   y
1e2b: cd 00     mov   x,#$00
1e2d: e7 03     mov   a,($03+x)
1e2f: d7 05     mov   ($05)+y,a
1e31: fc        inc   y
1e32: cb 00     mov   $00,y
1e34: f8 9f     mov   x,$9f
1e36: f5 cc 03  mov   a,$03cc+x
1e39: 28 f0     and   a,#$f0
1e3b: 04 00     or    a,$00
1e3d: d5 cc 03  mov   $03cc+x,a
1e40: 5f 79 1c  jmp   $1c79

1e43: f8 9f     mov   x,$9f
1e45: 3f bf 1e  call  $1ebf
1e48: dc        dec   y
1e49: f7 05     mov   a,($05)+y
1e4b: 9c        dec   a
1e4c: f0 0f     beq   $1e5d
1e4e: d7 05     mov   ($05)+y,a
1e50: dc        dec   y
1e51: f7 05     mov   a,($05)+y
1e53: c4 04     mov   $04,a
1e55: dc        dec   y
1e56: f7 05     mov   a,($05)+y
1e58: c4 03     mov   $03,a
1e5a: 5f 79 1c  jmp   $1c79

1e5d: dc        dec   y
1e5e: dc        dec   y
1e5f: cb 00     mov   $00,y
1e61: f5 cc 03  mov   a,$03cc+x
1e64: 28 f0     and   a,#$f0
1e66: 04 00     or    a,$00
1e68: d5 cc 03  mov   $03cc+x,a
1e6b: 5f 7b 1c  jmp   $1c7b

1e6e: f8 9f     mov   x,$9f
1e70: f5 ab 03  mov   a,$03ab+x
1e73: 8d 00     mov   y,#$00
1e75: 60        clrc
1e76: 97 03     adc   a,($03)+y
1e78: d5 ab 03  mov   $03ab+x,a
1e7b: 5f 79 1c  jmp   $1c79

1e7e: e5 4f 01  mov   a,$014f
1e81: 68 05     cmp   a,#$05
1e83: d0 08     bne   $1e8d
1e85: f8 9f     mov   x,$9f
1e87: f5 5b 0f  mov   a,$0f5b+x
1e8a: 0e 8a 03  tset1 $038a
1e8d: 5f 7b 1c  jmp   $1c7b

1e90: f8 9f     mov   x,$9f
1e92: f5 5b 0f  mov   a,$0f5b+x
1e95: 4e 8a 03  tclr1 $038a
1e98: 5f 7b 1c  jmp   $1c7b

1e9b: 8d 00     mov   y,#$00
1e9d: f7 03     mov   a,($03)+y
1e9f: 5d        mov   x,a
1ea0: fc        inc   y
1ea1: f7 03     mov   a,($03)+y
1ea3: c4 04     mov   $04,a
1ea5: d8 03     mov   $03,x
1ea7: 5f 7b 1c  jmp   $1c7b

1eaa: f8 9f     mov   x,$9f
1eac: 8d 00     mov   y,#$00
1eae: f7 03     mov   a,($03)+y
1eb0: 28 03     and   a,#$03
1eb2: c4 00     mov   $00,a
1eb4: f4 a0     mov   a,$a0+x
1eb6: 28 fc     and   a,#$fc
1eb8: 04 00     or    a,$00
1eba: d4 a0     mov   $a0+x,a
1ebc: 5f 79 1c  jmp   $1c79

1ebf: f5 d3 20  mov   a,$20d3+x
1ec2: c4 05     mov   $05,a
1ec4: f5 db 20  mov   a,$20db+x
1ec7: c4 06     mov   $06,a
1ec9: f5 cc 03  mov   a,$03cc+x
1ecc: 28 0f     and   a,#$0f
1ece: fd        mov   y,a
1ecf: 6f        ret

1ed0: f8 9f     mov   x,$9f
1ed2: f5 af 03  mov   a,$03af+x
1ed5: 30 1b     bmi   $1ef2
1ed7: 08 80     or    a,#$80
1ed9: d5 af 03  mov   $03af+x,a
1edc: 1c        asl   a
1edd: 1c        asl   a
1ede: fd        mov   y,a
1edf: f7 9b     mov   a,($9b)+y
1ee1: d5 77 03  mov   $0377+x,a
1ee4: fc        inc   y
1ee5: f7 9b     mov   a,($9b)+y
1ee7: 08 80     or    a,#$80
1ee9: d5 7b 03  mov   $037b+x,a
1eec: fc        inc   y
1eed: f7 9b     mov   a,($9b)+y
1eef: d5 7f 03  mov   $037f+x,a
1ef2: 6f        ret

1ef3: f8 9f     mov   x,$9f
1ef5: f5 b4 03  mov   a,$03b4+x
1ef8: c4 01     mov   $01,a
1efa: f5 b8 03  mov   a,$03b8+x
1efd: 13 2d 02  bbc0  $2d,$1f02
1f00: e8 0f     mov   a,#$0f
1f02: c4 00     mov   $00,a
1f04: 3f 44 0f  call  $0f44
1f07: cb 04     mov   $04,y
1f09: ec b3 03  mov   y,$03b3
1f0c: cf        mul   ya
1f0d: cb 03     mov   $03,y
1f0f: e4 04     mov   a,$04
1f11: ec b3 03  mov   y,$03b3
1f14: cf        mul   ya
1f15: cb 04     mov   $04,y
1f17: 03 2d 18  bbs0  $2d,$1f32
1f1a: f8 9f     mov   x,$9f
1f1c: f4 a0     mov   a,$a0+x
1f1e: 28 01     and   a,#$01
1f20: f0 05     beq   $1f27
1f22: 58 ff 03  eor   $03,#$ff
1f25: ab 03     inc   $03
1f27: f4 a0     mov   a,$a0+x
1f29: 28 02     and   a,#$02
1f2b: f0 05     beq   $1f32
1f2d: 58 ff 04  eor   $04,#$ff
1f30: ab 04     inc   $04
1f32: f8 9f     mov   x,$9f
1f34: e4 03     mov   a,$03
1f36: d5 67 03  mov   $0367+x,a
1f39: e4 04     mov   a,$04
1f3b: d5 6b 03  mov   $036b+x,a
1f3e: 6f        ret

1f3f: f8 9f     mov   x,$9f
1f41: f5 9f 03  mov   a,$039f+x
1f44: 28 f0     and   a,#$f0
1f46: d0 03     bne   $1f4b
1f48: 5f 01 20  jmp   $2001

1f4b: f5 cc 03  mov   a,$03cc+x
1f4e: 28 f0     and   a,#$f0
1f50: f0 20     beq   $1f72
1f52: f4 a0     mov   a,$a0+x
1f54: 28 20     and   a,#$20
1f56: f0 13     beq   $1f6b
1f58: f5 9f 03  mov   a,$039f+x
1f5b: 9f        xcn   a
1f5c: 28 0f     and   a,#$0f
1f5e: 60        clrc
1f5f: 95 ab 03  adc   a,$03ab+x
1f62: 3f cb 0d  call  $0dcb
1f65: f4 a0     mov   a,$a0+x
1f67: 28 df     and   a,#$df
1f69: d4 a0     mov   $a0+x,a
1f6b: f5 5b 0f  mov   a,$0f5b+x
1f6e: 0e 89 03  tset1 $0389
1f71: 6f        ret

1f72: f4 a0     mov   a,$a0+x
1f74: 28 20     and   a,#$20
1f76: f0 43     beq   $1fbb
1f78: f5 77 03  mov   a,$0377+x
1f7b: 3f 6c 0e  call  $0e6c
1f7e: f5 9f 03  mov   a,$039f+x
1f81: 28 07     and   a,#$07
1f83: 8d 0c     mov   y,#$0c
1f85: cf        mul   ya
1f86: c4 00     mov   $00,a
1f88: f5 9f 03  mov   a,$039f+x
1f8b: 28 f0     and   a,#$f0
1f8d: 9f        xcn   a
1f8e: 9c        dec   a
1f8f: 60        clrc
1f90: 84 00     adc   a,$00
1f92: 8d 02     mov   y,#$02
1f94: 60        clrc
1f95: 97 03     adc   a,($03)+y
1f97: 60        clrc
1f98: 95 ab 03  adc   a,$03ab+x
1f9b: c4 00     mov   $00,a
1f9d: 8f 00 05  mov   $05,#$00
1fa0: 8f 00 06  mov   $06,#$00
1fa3: 3f 79 0e  call  $0e79
1fa6: da 03     movw  $03,ya
1fa8: f8 9f     mov   x,$9f
1faa: 8d 00     mov   y,#$00
1fac: f5 bc 03  mov   a,$03bc+x
1faf: 10 01     bpl   $1fb2
1fb1: dc        dec   y
1fb2: 7a 03     addw  ya,$03
1fb4: d5 a3 03  mov   $03a3+x,a
1fb7: dd        mov   a,y
1fb8: d5 a7 03  mov   $03a7+x,a
1fbb: f5 a3 03  mov   a,$03a3+x
1fbe: c4 03     mov   $03,a
1fc0: f5 a7 03  mov   a,$03a7+x
1fc3: c4 04     mov   $04,a
1fc5: f5 c0 03  mov   a,$03c0+x
1fc8: f0 2d     beq   $1ff7
1fca: f5 9b 03  mov   a,$039b+x
1fcd: 68 01     cmp   a,#$01
1fcf: d0 08     bne   $1fd9
1fd1: e8 00     mov   a,#$00
1fd3: d5 c4 03  mov   $03c4+x,a
1fd6: d5 c8 03  mov   $03c8+x,a
1fd9: 8d 00     mov   y,#$00
1fdb: f5 c0 03  mov   a,$03c0+x
1fde: 10 01     bpl   $1fe1
1fe0: dc        dec   y
1fe1: 60        clrc
1fe2: 95 c4 03  adc   a,$03c4+x
1fe5: d5 c4 03  mov   $03c4+x,a
1fe8: dd        mov   a,y
1fe9: 95 c8 03  adc   a,$03c8+x
1fec: d5 c8 03  mov   $03c8+x,a
1fef: fd        mov   y,a
1ff0: f5 c4 03  mov   a,$03c4+x
1ff3: 7a 03     addw  ya,$03
1ff5: da 03     movw  $03,ya
1ff7: e4 03     mov   a,$03
1ff9: d5 6f 03  mov   $036f+x,a
1ffc: e4 04     mov   a,$04
1ffe: d5 73 03  mov   $0373+x,a
2001: f4 a0     mov   a,$a0+x
2003: 28 df     and   a,#$df
2005: d4 a0     mov   $a0+x,a
2007: 6f        ret

2008: eb 9f     mov   y,$9f
200a: f6 9b 03  mov   a,$039b+y
200d: 1c        asl   a
200e: 5d        mov   x,a
200f: 1f 12 20  jmp   ($2012+x)

2012: dw $201c  ;
2014: dw $2023  ;
2016: dw $203c  ;
2018: dw $201c  ;
201a: dw $201c  ;

201c: f6 5b 0f  mov   a,$0f5b+y
201f: 0e 88 03  tset1 $0388
2022: 6f        ret

2023: f6 97 03  mov   a,$0397+y
2026: 9c        dec   a
2027: d0 07     bne   $2030
2029: f6 a0 00  mov   a,$00a0+y
202c: 28 10     and   a,#$10
202e: f0 ec     beq   $201c
2030: f6 5b 0f  mov   a,$0f5b+y
2033: 0e 87 03  tset1 $0387
2036: e8 02     mov   a,#$02
2038: d6 9b 03  mov   $039b+y,a
203b: 6f        ret

203c: 6f        ret

203d: e8 00     mov   a,#$00
203f: c5 31 01  mov   $0131,a
2042: 8f 03 9f  mov   $9f,#$03
2045: f8 9f     mov   x,$9f
2047: f4 a0     mov   a,$a0+x
2049: 10 4a     bpl   $2095
204b: 28 40     and   a,#$40
204d: d0 71     bne   $20c0
204f: f5 77 03  mov   a,$0377+x
2052: 30 09     bmi   $205d
2054: 8d 04     mov   y,#$04
2056: 4f 00     pcall $00
2058: 08 80     or    a,#$80
205a: d5 77 03  mov   $0377+x,a
205d: f5 6f 03  mov   a,$036f+x
2060: 8d 02     mov   y,#$02
2062: 4f 00     pcall $00
2064: f5 73 03  mov   a,$0373+x
2067: 8d 03     mov   y,#$03
2069: 4f 00     pcall $00
206b: e5 87 03  mov   a,$0387
206e: 35 5b 0f  and   a,$0f5b+x
2071: f0 0e     beq   $2081
2073: f5 7b 03  mov   a,$037b+x
2076: 8d 05     mov   y,#$05
2078: 4f 00     pcall $00
207a: f5 7f 03  mov   a,$037f+x
207d: 8d 06     mov   y,#$06
207f: 4f 00     pcall $00
2081: f5 67 03  mov   a,$0367+x
2084: 8d 01     mov   y,#$01
2086: 4f 00     pcall $00
2088: f5 6b 03  mov   a,$036b+x
208b: 8d 00     mov   y,#$00
208d: 4f 00     pcall $00
208f: f5 5b 0f  mov   a,$0f5b+x
2092: 0e 31 01  tset1 $0131
2095: 8b 9f     dec   $9f
2097: 10 ac     bpl   $2045
2099: e5 8a 03  mov   a,$038a
209c: c5 41 01  mov   $0141,a
209f: e5 89 03  mov   a,$0389
20a2: c5 3f 01  mov   $013f,a
20a5: e5 88 03  mov   a,$0388
20a8: f0 0e     beq   $20b8
20aa: 8d 5c     mov   y,#$5c
20ac: 4f 0c     pcall $0c
20ae: 8d 0b     mov   y,#$0b
20b0: fe fe     dbnz  y,$20b0
20b2: e8 00     mov   a,#$00
20b4: 8d 5c     mov   y,#$5c
20b6: 4f 0c     pcall $0c
20b8: e5 87 03  mov   a,$0387
20bb: 8d 4c     mov   y,#$4c
20bd: 5f 0c ff  jmp   $ff0c

20c0: f5 5b 0f  mov   a,$0f5b+x
20c3: 0e 88 03  tset1 $0388
20c6: 4e 8a 03  tclr1 $038a
20c9: e8 00     mov   a,#$00
20cb: d4 a0     mov   $a0+x,a
20cd: bc        inc   a
20ce: d5 32 01  mov   $0132+x,a
20d1: 2f c2     bra   $2095

20d3: db $d0,$d9,$e2,$eb,$f4,$fd,$06,$0f
20db: db $03,$03,$03,$03,$03,$03,$04,$04

ff00: 2d        push  a
ff01: 7d        mov   a,x
ff02: 9f        xcn   a
ff03: cc 0b 00  mov   $000b,y
ff06: 60        clrc
ff07: 85 0b 00  adc   a,$000b
ff0a: fd        mov   y,a
ff0b: ae        pop   a
ff0c: cc f2 00  mov   $00f2,y
ff0f: c5 f3 00  mov   $00f3,a
ff12: 6f        ret

ff13: 7d        mov   a,x
ff14: 9f        xcn   a
ff15: cc 0b 00  mov   $000b,y
ff18: 60        clrc
ff19: 85 0b 00  adc   a,$000b
ff1c: fd        mov   y,a
ff1d: cc f2 00  mov   $00f2,y
ff20: e5 f3 00  mov   a,$00f3
ff23: 6f        ret

ff24: f4 18     mov   a,$18+x
ff26: d4 1c     mov   $1c+x,a
ff28: f4 f4     mov   a,$f4+x
ff2a: 74 f4     cmp   a,$f4+x
ff2c: d0 fa     bne   $ff28
ff2e: d4 18     mov   $18+x,a
ff30: 6f        ret

ff31: 2d        push  a
ff32: 6d        push  y
ff33: 3f 65 08  call  $0865
ff36: ee        pop   y
ff37: ae        pop   a
ff38: 6f        ret

