0840: 20        clrp
0841: e8 00     mov   a,#$00
0843: c4 f4     mov   $f4,a
0845: c4 f5     mov   $f5,a
0847: c4 f6     mov   $f6,a
0849: c4 f7     mov   $f7,a
084b: c4 83     mov   $83,a
084d: 8f 30 f1  mov   $f1,#$30
0850: cd ff     mov   x,#$ff
0852: bd        mov   sp,x
0853: 3f 00 40  call  $4000
0856: 58 80 80  eor   $80,#$80
0859: fa 80 f4  mov   ($f4),($80)
; main loop
085c: 3f 9f 19  call  $199f
085f: 3f c9 09  call  $09c9
0862: 3f 58 09  call  $0958
0865: 5f 5c 08  jmp   $085c

; pitch table
0868: dw $0042
086a: dw $0046
086c: dw $004b
086e: dw $004f
0870: dw $0054
0872: dw $0059
0874: dw $005e
0876: dw $0064
0878: dw $006a
087a: dw $0070
087c: dw $0077
087e: dw $007e
0880: dw $0085
0882: dw $008d
0884: dw $0096
0886: dw $009f
0888: dw $00a8
088a: dw $00b2
088c: dw $00bd
088e: dw $00c8
0890: dw $00d4
0892: dw $00e1
0894: dw $00ee
0896: dw $00fc
0898: dw $010b
089a: dw $011b
089c: dw $012c
089e: dw $013e
08a0: dw $0151
08a2: dw $0165
08a4: dw $017a
08a6: dw $0191
08a8: dw $01a9
08aa: dw $01c2
08ac: dw $01dd
08ae: dw $01f9
08b0: dw $0217
08b2: dw $0237
08b4: dw $0259
08b6: dw $027d
08b8: dw $02a2
08ba: dw $02cb
08bc: dw $02f5
08be: dw $0322
08c0: dw $0352
08c2: dw $0384
08c4: dw $03ba
08c6: dw $03f3
08c8: dw $042f
08ca: dw $046f
08cc: dw $04b2
08ce: dw $04fa
08d0: dw $0545
08d2: dw $0596
08d4: dw $05eb
08d6: dw $0645
08d8: dw $06a4
08da: dw $0709
08dc: dw $0775
08de: dw $07e6
08e0: dw $085f
08e2: dw $08de
08e4: dw $0965
08e6: dw $09f4
08e8: dw $0a8b
08ea: dw $0b2c
08ec: dw $0bd6
08ee: dw $0c8a
08f0: dw $0d49
08f2: dw $0e13
08f4: dw $0eea
08f6: dw $0fcd
08f8: dw $10be
08fa: dw $11bc
08fc: dw $12ca
08fe: dw $13e8
0900: dw $1517
0902: dw $1658
0904: dw $17ad
0906: dw $1915
0908: dw $1a93
090a: dw $1c27
090c: dw $1dd4
090e: dw $1f9a
0910: dw $217c
0912: dw $2378
0914: dw $2594
0916: dw $27d0
0918: dw $2a2e
091a: dw $2cb0
091c: dw $2f5a
091e: dw $322a
0920: dw $3526
0922: dw $384e
0924: dw $3ba8
0926: dw $3f34
0928: dw $42f8
092a: dw $46f0
092c: dw $4b28
092e: dw $4fa0
0930: dw $545c
0932: dw $5960
0934: dw $5eb4
0936: dw $6454
0938: dw $6a4c
093a: dw $709c
093c: dw $7750
093e: dw $7e68
0940: dw $85f0
0942: dw $8de0
0944: dw $9650
0946: dw $9f40
0948: dw $a8b8
094a: dw $b2c0
094c: dw $bd68
094e: dw $c8a8
0950: dw $d498
0952: dw $e138
0954: dw $eea0
0956: dw $fcd0

0958: e4 fd     mov   a,$fd
095a: f0 09     beq   $0965
095c: 3f 0d 23  call  $230d
095f: 3f 9f 23  call  $239f
0962: 03 80 01  bbs0  $80,$0966
0965: 6f        ret

0966: ab 9e     inc   $9e
0968: f2 a0     clr7  $a0
096a: fa c0 c1  mov   ($c1),($c0)
096d: 8f 00 c0  mov   $c0,#$00
0970: 8f 00 c2  mov   $c2,#$00
0973: 3f a1 0c  call  $0ca1
0976: 8f 00 86  mov   $86,#$00
0979: 8f 02 87  mov   $87,#$02
097c: 8f 00 84  mov   $84,#$00
097f: 3f 15 21  call  $2115
0982: 8d 00     mov   y,#$00
0984: f7 86     mov   a,($86)+y
0986: 10 0c     bpl   $0994
0988: 8d 06     mov   y,#$06
098a: f7 86     mov   a,($86)+y
098c: d0 06     bne   $0994
098e: 3f c6 14  call  $14c6
0991: 5f 88 09  jmp   $0988

0994: 60        clrc
0995: 98 20 86  adc   $86,#$20
0998: 98 00 87  adc   $87,#$00
099b: ab 84     inc   $84
099d: 78 0e 84  cmp   $84,#$0e
09a0: 90 dd     bcc   $097f
09a2: 3f 5f 0c  call  $0c5f
09a5: 3f d3 0c  call  $0cd3
09a8: 3f c8 0d  call  $0dc8
09ab: 3f 57 0e  call  $0e57
09ae: 3f 52 12  call  $1252
09b1: 3f 04 13  call  $1304
09b4: 8f 5c f2  mov   $f2,#$5c
09b7: fa c2 f3  mov   ($f3),($c2)       ; set KOF
09ba: 8f 4c f2  mov   $f2,#$4c
09bd: e4 c0     mov   a,$c0
09bf: 53 a0 04  bbc2  $a0,$09c6
09c2: 52 a0     clr2  $a0
09c4: e4 c6     mov   a,$c6
09c6: c4 f3     mov   $f3,a             ; set KON
09c8: 6f        ret

09c9: e4 fe     mov   a,$fe
09cb: f0 1b     beq   $09e8
09cd: 3f 1d 13  call  $131d
09d0: 73 a0 11  bbc3  $a0,$09e4
09d3: 6e 82 0e  dbnz  $82,$09e4
09d6: 72 a0     clr3  $a0
09d8: 8f 0c f2  mov   $f2,#$0c
09db: 8f 7f f3  mov   $f3,#$7f          ; set MVOL(L)
09de: 8f 1c f2  mov   $f2,#$1c
09e1: 8f 7f f3  mov   $f3,#$7f          ; set MVOL(R)
09e4: e4 a1     mov   a,$a1
09e6: d0 01     bne   $09e9
09e8: 6f        ret

09e9: 5f 80 24  jmp   $2480

09ec: 8f 00 98  mov   $98,#$00
09ef: e4 84     mov   a,$84
09f1: f3 00 06  bbc7  $00,$09fa
09f4: 64 01     cmp   a,$01
09f6: d0 02     bne   $09fa
09f8: 02 98     set0  $98
09fa: f3 10 06  bbc7  $10,$0a03
09fd: 64 11     cmp   a,$11
09ff: d0 02     bne   $0a03
0a01: 22 98     set1  $98
0a03: f3 20 06  bbc7  $20,$0a0c
0a06: 64 21     cmp   a,$21
0a08: d0 02     bne   $0a0c
0a0a: 42 98     set2  $98
0a0c: f3 30 06  bbc7  $30,$0a15
0a0f: 64 31     cmp   a,$31
0a11: d0 02     bne   $0a15
0a13: 62 98     set3  $98
0a15: f3 40 06  bbc7  $40,$0a1e
0a18: 64 41     cmp   a,$41
0a1a: d0 02     bne   $0a1e
0a1c: 82 98     set4  $98
0a1e: f3 50 06  bbc7  $50,$0a27
0a21: 64 51     cmp   a,$51
0a23: d0 02     bne   $0a27
0a25: a2 98     set5  $98
0a27: f3 60 06  bbc7  $60,$0a30
0a2a: 64 61     cmp   a,$61
0a2c: d0 02     bne   $0a30
0a2e: c2 98     set6  $98
0a30: f3 70 06  bbc7  $70,$0a39
0a33: 64 71     cmp   a,$71
0a35: d0 02     bne   $0a39
0a37: e2 98     set7  $98
0a39: 6f        ret

0a3a: 8f 00 e0  mov   $e0,#$00
0a3d: 8f 02 e1  mov   $e1,#$02
0a40: 8f 0e e2  mov   $e2,#$0e
0a43: 8d 00     mov   y,#$00
0a45: f7 e0     mov   a,($e0)+y
0a47: 30 0c     bmi   $0a55
0a49: 60        clrc
0a4a: 98 20 e0  adc   $e0,#$20
0a4d: 98 00 e1  adc   $e1,#$00
0a50: 6e e2 f2  dbnz  $e2,$0a45
0a53: 60        clrc
0a54: 6f        ret

0a55: 80        setc
0a56: 6f        ret

0a57: ba a4     movw  ya,$a4
0a59: da e0     movw  $e0,ya
0a5b: ba a6     movw  ya,$a6
0a5d: da a4     movw  $a4,ya
0a5f: ba e0     movw  ya,$e0
0a61: 7a a6     addw  ya,$a6
0a63: da e0     movw  $e0,ya
0a65: 8d 37     mov   y,#$37
0a67: e8 11     mov   a,#$11
0a69: 7a e0     addw  ya,$e0
0a6b: da a6     movw  $a6,ya
0a6d: dd        mov   a,y
0a6e: 6f        ret

0a6f: 8d 03     mov   y,#$03
0a71: 60        clrc
0a72: 97 86     adc   a,($86)+y
0a74: d7 86     mov   ($86)+y,a
0a76: 8d 04     mov   y,#$04
0a78: e8 00     mov   a,#$00
0a7a: 97 86     adc   a,($86)+y
0a7c: d7 86     mov   ($86)+y,a
0a7e: 6f        ret

0a7f: 3f c1 0a  call  $0ac1
0a82: 3f 26 0b  call  $0b26
0a85: 3f 7c 0b  call  $0b7c
0a88: 8f 00 86  mov   $86,#$00
0a8b: 8f 02 87  mov   $87,#$02
0a8e: 8f 00 84  mov   $84,#$00
0a91: 3f b2 0b  call  $0bb2
0a94: e8 00     mov   a,#$00
0a96: 8d 06     mov   y,#$06
0a98: d7 86     mov   ($86)+y,a
0a9a: 60        clrc
0a9b: 98 20 86  adc   $86,#$20
0a9e: 98 00 87  adc   $87,#$00
0aa1: ab 84     inc   $84
0aa3: 78 0e 84  cmp   $84,#$0e
0aa6: 30 e9     bmi   $0a91
0aa8: 8f 0c f2  mov   $f2,#$0c
0aab: 8f 7f f3  mov   $f3,#$7f          ; set MVOL(L)
0aae: 8f 1c f2  mov   $f2,#$1c
0ab1: 8f 7f f3  mov   $f3,#$7f          ; set MVOL(R)
0ab4: 8f 2c f2  mov   $f2,#$2c
0ab7: 8f 20 f3  mov   $f3,#$20          ; set EVOL(L)
0aba: 8f 3c f2  mov   $f2,#$3c
0abd: 8f 20 f3  mov   $f3,#$20          ; set EVOL(R)
0ac0: 6f        ret

0ac1: 8f 40 90  mov   $90,#$40
0ac4: 8f 40 91  mov   $91,#$40
0ac7: 8f 62 92  mov   $92,#$62
0aca: 8f 00 9d  mov   $9d,#$00
0acd: 8f 00 9e  mov   $9e,#$00
0ad0: 8f 0d f2  mov   $f2,#$0d
0ad3: 8f 62 f3  mov   $f3,#$62          ; set EFB
0ad6: 8f 0e e1  mov   $e1,#$0e
0ad9: 8f a0 e2  mov   $e2,#$a0
0adc: 8f 01 e3  mov   $e3,#$01
0adf: 8f 00 e4  mov   $e4,#$00
0ae2: 8f 02 e5  mov   $e5,#$02
0ae5: 8d 00     mov   y,#$00
0ae7: 8f 20 e0  mov   $e0,#$20
0aea: f7 e2     mov   a,($e2)+y
0aec: d7 e4     mov   ($e4)+y,a
0aee: fc        inc   y
0aef: 6e e0 f8  dbnz  $e0,$0aea
0af2: 60        clrc
0af3: 98 20 e4  adc   $e4,#$20
0af6: 98 00 e5  adc   $e5,#$00
0af9: 6e e1 e9  dbnz  $e1,$0ae5
0afc: 8d 19     mov   y,#$19
0afe: e8 ff     mov   a,#$ff
0b00: d7 e4     mov   ($e4)+y,a
0b02: 8d 39     mov   y,#$39
0b04: d7 e4     mov   ($e4)+y,a
0b06: 38 ea 80  and   $80,#$ea
0b09: 38 cd 81  and   $81,#$cd
0b0c: 03 a0 08  bbs0  $a0,$0b17
0b0f: 02 a0     set0  $a0
0b11: 8f 6c f2  mov   $f2,#$6c
0b14: 38 3f f3  and   $f3,#$3f          ; set FLG
0b17: 8f 01 93  mov   $93,#$01
0b1a: 3f 9a 13  call  $139a
0b1d: 8f 02 9f  mov   $9f,#$02
0b20: 3f 68 13  call  $1368
0b23: 5f 0d 23  jmp   $230d

0b26: 8f 00 86  mov   $86,#$00
0b29: 8f 02 87  mov   $87,#$02
0b2c: 8f 00 e0  mov   $e0,#$00
0b2f: fa 99 e1  mov   ($e1),($99)
0b32: 60        clrc
0b33: 98 40 e1  adc   $e1,#$40
0b36: 8f 18 ce  mov   $ce,#$18
0b39: 8d 1e     mov   y,#$1e
0b3b: f7 e0     mov   a,($e0)+y
0b3d: 10 03     bpl   $0b42
0b3f: 8f 30 ce  mov   $ce,#$30
0b42: 08 c0     or    a,#$c0
0b44: c4 cc     mov   $cc,a
0b46: fc        inc   y
0b47: f7 e0     mov   a,($e0)+y
0b49: c4 cd     mov   $cd,a
0b4b: 8f 0e e2  mov   $e2,#$0e
0b4e: 8d 23     mov   y,#$23
0b50: f7 e0     mov   a,($e0)+y
0b52: fc        inc   y
0b53: 6d        push  y
0b54: 8d 00     mov   y,#$00
0b56: d7 86     mov   ($86)+y,a
0b58: ee        pop   y
0b59: f7 e0     mov   a,($e0)+y
0b5b: fc        inc   y
0b5c: 6d        push  y
0b5d: 8d 01     mov   y,#$01
0b5f: d7 86     mov   ($86)+y,a
0b61: ee        pop   y
0b62: f7 e0     mov   a,($e0)+y
0b64: fc        inc   y
0b65: 60        clrc
0b66: 84 99     adc   a,$99
0b68: 60        clrc
0b69: 88 40     adc   a,#$40
0b6b: 6d        push  y
0b6c: 8d 02     mov   y,#$02
0b6e: d7 86     mov   ($86)+y,a
0b70: ee        pop   y
0b71: 60        clrc
0b72: 98 20 86  adc   $86,#$20
0b75: 98 00 87  adc   $87,#$00
0b78: 6e e2 d5  dbnz  $e2,$0b50
0b7b: 6f        ret

0b7c: fa 99 e1  mov   ($e1),($99)
0b7f: 60        clrc
0b80: 98 40 e1  adc   $e1,#$40
0b83: 8f 22 e0  mov   $e0,#$22
0b86: 8d 00     mov   y,#$00
0b88: f7 e0     mov   a,($e0)+y
0b8a: fd        mov   y,a
0b8b: e4 91     mov   a,$91
0b8d: 1c        asl   a
0b8e: cf        mul   ya
0b8f: 3c        rol   a
0b90: dd        mov   a,y
0b91: 3c        rol   a
0b92: fd        mov   y,a
0b93: e4 90     mov   a,$90
0b95: 1c        asl   a
0b96: cf        mul   ya
0b97: 3c        rol   a
0b98: dd        mov   a,y
0b99: 3c        rol   a
0b9a: bc        inc   a
0b9b: 5d        mov   x,a
0b9c: 5c        lsr   a
0b9d: c4 e2     mov   $e2,a
0b9f: 8d 27     mov   y,#$27
0ba1: e8 10     mov   a,#$10
0ba3: 9e        div   ya,x
0ba4: 7e e2     cmp   y,$e2
0ba6: 90 01     bcc   $0ba9
0ba8: bc        inc   a
0ba9: 38 fe f1  and   $f1,#$fe
0bac: c4 fa     mov   $fa,a
0bae: 18 07 f1  or    $f1,#$07
0bb1: 6f        ret

0bb2: 8d 01     mov   y,#$01
0bb4: f7 86     mov   a,($86)+y
0bb6: c4 e0     mov   $e0,a
0bb8: 8d 02     mov   y,#$02
0bba: f7 86     mov   a,($86)+y
0bbc: c4 e1     mov   $e1,a
0bbe: 8d 05     mov   y,#$05
0bc0: f7 86     mov   a,($86)+y
0bc2: 1c        asl   a
0bc3: 98 00 e1  adc   $e1,#$00
0bc6: 60        clrc
0bc7: 84 e0     adc   a,$e0
0bc9: c4 e0     mov   $e0,a
0bcb: 98 00 e1  adc   $e1,#$00
0bce: 8d 00     mov   y,#$00
0bd0: f7 e0     mov   a,($e0)+y
0bd2: 8d 03     mov   y,#$03
0bd4: d7 86     mov   ($86)+y,a
0bd6: 8d 01     mov   y,#$01
0bd8: f7 e0     mov   a,($e0)+y
0bda: 68 ff     cmp   a,#$ff
0bdc: f0 06     beq   $0be4
0bde: 60        clrc
0bdf: 84 99     adc   a,$99
0be1: 60        clrc
0be2: 88 40     adc   a,#$40
0be4: 8d 04     mov   y,#$04
0be6: d7 86     mov   ($86)+y,a
0be8: 68 ff     cmp   a,#$ff
0bea: d0 1b     bne   $0c07
0bec: 8d 03     mov   y,#$03
0bee: f7 86     mov   a,($86)+y
0bf0: 68 ff     cmp   a,#$ff
0bf2: d0 13     bne   $0c07
0bf4: e3 a0 10  bbs7  $a0,$0c07
0bf7: 8d 06     mov   y,#$06
0bf9: d7 86     mov   ($86)+y,a
0bfb: bc        inc   a
0bfc: fd        mov   y,a
0bfd: d7 86     mov   ($86)+y,a
0bff: 3f 3a 0a  call  $0a3a
0c02: b0 03     bcs   $0c07
0c04: 3f 08 0c  call  $0c08
0c07: 6f        ret

0c08: fa 84 e3  mov   ($e3),($84)
0c0b: 8f 0e 84  mov   $84,#$0e
0c0e: 3f ec 09  call  $09ec
0c11: fa 98 e2  mov   ($e2),($98)
0c14: 8f 0f 84  mov   $84,#$0f
0c17: 3f ec 09  call  $09ec
0c1a: e4 98     mov   a,$98
0c1c: 04 e2     or    a,$e2
0c1e: e3 a0 11  bbs7  $a0,$0c32
0c21: 8f 00 9e  mov   $9e,#$00
0c24: 8f 00 c2  mov   $c2,#$00
0c27: 8f 00 c0  mov   $c0,#$00
0c2a: 38 ea 80  and   $80,#$ea
0c2d: 48 ff     eor   a,#$ff
0c2f: 5f 3b 0c  jmp   $0c3b

0c32: 8f 00 c5  mov   $c5,#$00
0c35: 8f 00 c3  mov   $c3,#$00
0c38: 38 9f 80  and   $80,#$9f
0c3b: c4 e2     mov   $e2,a
0c3d: c4 e4     mov   $e4,a
0c3f: cd 00     mov   x,#$00
0c41: 4b e4     lsr   $e4
0c43: b0 0a     bcs   $0c4f
0c45: f0 0e     beq   $0c55
0c47: 7d        mov   a,x
0c48: 60        clrc
0c49: 88 10     adc   a,#$10
0c4b: 5d        mov   x,a
0c4c: 5f 41 0c  jmp   $0c41

0c4f: e8 00     mov   a,#$00
0c51: c6        mov   (x),a
0c52: 5f 47 0c  jmp   $0c47

0c55: 8f 5c f2  mov   $f2,#$5c
0c58: fa e2 f3  mov   ($f3),($e2)       ; set KOF
0c5b: fa e3 84  mov   ($84),($e3)
0c5e: 6f        ret

0c5f: cd 00     mov   x,#$00
0c61: e6        mov   a,(x)
0c62: 10 10     bpl   $0c74
0c64: f4 01     mov   a,$01+x
0c66: f3 a0 07  bbc7  $a0,$0c70
0c69: 68 0e     cmp   a,#$0e
0c6b: 90 07     bcc   $0c74
0c6d: 5f 7e 0c  jmp   $0c7e

0c70: 68 0e     cmp   a,#$0e
0c72: 90 0a     bcc   $0c7e
0c74: 7d        mov   a,x
0c75: 60        clrc
0c76: 88 10     adc   a,#$10
0c78: 5d        mov   x,a
0c79: 10 e6     bpl   $0c61
0c7b: 5f 15 21  jmp   $2115

0c7e: f4 02     mov   a,$02+x
0c80: f0 f2     beq   $0c74
0c82: 9b 02     dec   $02+x
0c84: d0 ee     bne   $0c74
0c86: e8 00     mov   a,#$00
0c88: c6        mov   (x),a
0c89: 4d        push  x
0c8a: 7d        mov   a,x
0c8b: 9f        xcn   a
0c8c: 5d        mov   x,a
0c8d: f4 88     mov   a,$88+x
0c8f: ce        pop   x
0c90: e3 a0 07  bbs7  $a0,$0c9a
0c93: 04 c2     or    a,$c2
0c95: c4 c2     mov   $c2,a
0c97: 5f 74 0c  jmp   $0c74

0c9a: 04 c5     or    a,$c5
0c9c: c4 c5     mov   $c5,a
0c9e: 5f 74 0c  jmp   $0c74

0ca1: 8f 00 86  mov   $86,#$00
0ca4: 8f 02 87  mov   $87,#$02
0ca7: cd 00     mov   x,#$00
0ca9: 8d 00     mov   y,#$00
0cab: f7 86     mov   a,($86)+y
0cad: 10 17     bpl   $0cc6
0caf: f3 a0 07  bbc7  $a0,$0cb9
0cb2: c8 0e     cmp   x,#$0e
0cb4: 90 10     bcc   $0cc6
0cb6: 5f bd 0c  jmp   $0cbd

0cb9: c8 0e     cmp   x,#$0e
0cbb: b0 09     bcs   $0cc6
0cbd: 8d 06     mov   y,#$06
0cbf: f7 86     mov   a,($86)+y
0cc1: f0 03     beq   $0cc6
0cc3: 9c        dec   a
0cc4: d7 86     mov   ($86)+y,a
0cc6: 60        clrc
0cc7: 98 20 86  adc   $86,#$20
0cca: 98 00 87  adc   $87,#$00
0ccd: 3d        inc   x
0cce: c8 10     cmp   x,#$10
0cd0: d0 d7     bne   $0ca9
0cd2: 6f        ret

0cd3: 3f 15 21  call  $2115
0cd6: 33 81 03  bbc1  $81,$0cdc
0cd9: 5f e9 0c  jmp   $0ce9

0cdc: b3 81 03  bbc5  $81,$0ce2
0cdf: 5f 38 0d  jmp   $0d38

0ce2: 93 81 03  bbc4  $81,$0ce8
0ce5: 5f 89 0d  jmp   $0d89

0ce8: 6f        ret

0ce9: e4 9a     mov   a,$9a
0ceb: f0 35     beq   $0d22
0ced: e4 9b     mov   a,$9b
0cef: 60        clrc
0cf0: 84 9c     adc   a,$9c
0cf2: fd        mov   y,a
0cf3: 28 0f     and   a,#$0f
0cf5: c4 9c     mov   $9c,a
0cf7: dd        mov   a,y
0cf8: 9f        xcn   a
0cf9: 28 0f     and   a,#$0f
0cfb: c4 e2     mov   $e2,a
0cfd: e4 9a     mov   a,$9a
0cff: 80        setc
0d00: a4 e2     sbc   a,$e2
0d02: b0 02     bcs   $0d06
0d04: e8 00     mov   a,#$00
0d06: c4 9a     mov   $9a,a
0d08: fd        mov   y,a
0d09: 5c        lsr   a
0d0a: 8f 0c f2  mov   $f2,#$0c
0d0d: c4 f3     mov   $f3,a             ; set MVOL(L)
0d0f: 8f 1c f2  mov   $f2,#$1c
0d12: c4 f3     mov   $f3,a             ; set MVOL(R)
0d14: e8 20     mov   a,#$20
0d16: cf        mul   ya
0d17: 8f 2c f2  mov   $f2,#$2c
0d1a: cb f3     mov   $f3,y             ; set EVOL(L)
0d1c: 8f 3c f2  mov   $f2,#$3c
0d1f: cb f3     mov   $f3,y             ; set EVOL(R)
0d21: 6f        ret

0d22: fa a0 e6  mov   ($e6),($a0)
0d25: f2 a0     clr7  $a0
0d27: 3f 08 0c  call  $0c08
0d2a: e2 a0     set7  $a0
0d2c: 3f 08 0c  call  $0c08
0d2f: fa e6 a0  mov   ($a0),($e6)
0d32: 62 a0     set3  $a0
0d34: 8f 40 82  mov   $82,#$40
0d37: 6f        ret

0d38: e4 9a     mov   a,$9a
0d3a: f0 36     beq   $0d72
0d3c: e4 9b     mov   a,$9b
0d3e: 60        clrc
0d3f: 84 9c     adc   a,$9c
0d41: fd        mov   y,a
0d42: 28 0f     and   a,#$0f
0d44: c4 9c     mov   $9c,a
0d46: dd        mov   a,y
0d47: 9f        xcn   a
0d48: 28 0f     and   a,#$0f
0d4a: c4 e2     mov   $e2,a
0d4c: e4 9a     mov   a,$9a
0d4e: 80        setc
0d4f: a4 e2     sbc   a,$e2
0d51: b0 02     bcs   $0d55
0d53: e8 00     mov   a,#$00
0d55: c4 9a     mov   $9a,a
0d57: fa a0 e6  mov   ($e6),($a0)
0d5a: d3 81 07  bbc6  $81,$0d64
0d5d: f2 a0     clr7  $a0
0d5f: e4 9a     mov   a,$9a
0d61: 3f d7 13  call  $13d7
0d64: f3 81 07  bbc7  $81,$0d6e
0d67: e2 a0     set7  $a0
0d69: e4 9a     mov   a,$9a
0d6b: 3f d7 13  call  $13d7
0d6e: fa e6 a0  mov   ($a0),($e6)
0d71: 6f        ret

0d72: fa a0 e6  mov   ($e6),($a0)
0d75: d3 81 05  bbc6  $81,$0d7d
0d78: f2 a0     clr7  $a0
0d7a: 3f 08 0c  call  $0c08
0d7d: f3 81 05  bbc7  $81,$0d85
0d80: e2 a0     set7  $a0
0d82: 3f 08 0c  call  $0c08
0d85: fa e6 a0  mov   ($a0),($e6)
0d88: 6f        ret

0d89: e4 9a     mov   a,$9a
0d8b: 68 ff     cmp   a,#$ff
0d8d: f0 32     beq   $0dc1
0d8f: e4 9b     mov   a,$9b
0d91: 60        clrc
0d92: 84 9c     adc   a,$9c
0d94: fd        mov   y,a
0d95: 28 0f     and   a,#$0f
0d97: c4 9c     mov   $9c,a
0d99: dd        mov   a,y
0d9a: 9f        xcn   a
0d9b: 28 0f     and   a,#$0f
0d9d: 60        clrc
0d9e: 84 9a     adc   a,$9a
0da0: 90 02     bcc   $0da4
0da2: e8 ff     mov   a,#$ff
0da4: c4 9a     mov   $9a,a
0da6: fa a0 e6  mov   ($e6),($a0)
0da9: d3 81 07  bbc6  $81,$0db3
0dac: f2 a0     clr7  $a0
0dae: e4 9a     mov   a,$9a
0db0: 3f d7 13  call  $13d7
0db3: f3 81 07  bbc7  $81,$0dbd
0db6: e2 a0     set7  $a0
0db8: e4 9a     mov   a,$9a
0dba: 3f d7 13  call  $13d7
0dbd: fa e6 a0  mov   ($a0),($e6)
0dc0: 6f        ret

0dc1: e4 81     mov   a,$81
0dc3: 28 ef     and   a,#$ef
0dc5: c4 81     mov   $81,a
0dc7: 6f        ret

0dc8: e4 b4     mov   a,$b4
0dca: d0 04     bne   $0dd0
0dcc: e4 b8     mov   a,$b8
0dce: f0 0f     beq   $0ddf
0dd0: e8 18     mov   a,#$18
0dd2: c5 3b 0e  mov   $0e3b,a
0dd5: e8 40     mov   a,#$40
0dd7: c5 43 0e  mov   $0e43,a
0dda: cd 00     mov   x,#$00
0ddc: 3f 27 0e  call  $0e27
0ddf: e4 b5     mov   a,$b5
0de1: d0 04     bne   $0de7
0de3: e4 b9     mov   a,$b9
0de5: f0 0f     beq   $0df6
0de7: e8 1b     mov   a,#$1b
0de9: c5 3b 0e  mov   $0e3b,a
0dec: e8 40     mov   a,#$40
0dee: c5 43 0e  mov   $0e43,a
0df1: cd 01     mov   x,#$01
0df3: 3f 27 0e  call  $0e27
0df6: e4 b6     mov   a,$b6
0df8: d0 04     bne   $0dfe
0dfa: e4 ba     mov   a,$ba
0dfc: f0 0f     beq   $0e0d
0dfe: e8 11     mov   a,#$11
0e00: c5 3b 0e  mov   $0e3b,a
0e03: e8 80     mov   a,#$80
0e05: c5 43 0e  mov   $0e43,a
0e08: cd 02     mov   x,#$02
0e0a: 3f 27 0e  call  $0e27
0e0d: e4 b7     mov   a,$b7
0e0f: d0 04     bne   $0e15
0e11: e4 bb     mov   a,$bb
0e13: f0 0f     beq   $0e24
0e15: e8 15     mov   a,#$15
0e17: c5 3b 0e  mov   $0e3b,a
0e1a: e8 80     mov   a,#$80
0e1c: c5 43 0e  mov   $0e43,a
0e1f: cd 03     mov   x,#$03
0e21: 3f 27 0e  call  $0e27
0e24: 5f 15 21  jmp   $2115

0e27: 8f 00 e2  mov   $e2,#$00
0e2a: 8f 02 e3  mov   $e3,#$02
0e2d: 5b b4     lsr   $b4+x
0e2f: 7b b8     ror   $b8+x
0e31: b0 05     bcs   $0e38
0e33: f0 1b     beq   $0e50
0e35: 5f 46 0e  jmp   $0e46

0e38: f4 bc     mov   a,$bc+x
0e3a: 8d 11     mov   y,#$11
0e3c: d7 e2     mov   ($e2)+y,a
0e3e: 8d 1f     mov   y,#$1f
0e40: f7 e2     mov   a,($e2)+y
0e42: 08 80     or    a,#$80
0e44: d7 e2     mov   ($e2)+y,a
0e46: 60        clrc
0e47: 98 20 e2  adc   $e2,#$20
0e4a: 98 00 e3  adc   $e3,#$00
0e4d: 5f 2d 0e  jmp   $0e2d

0e50: f4 b4     mov   a,$b4+x
0e52: d0 f2     bne   $0e46
0e54: 5f 15 21  jmp   $2115

0e57: e3 a0 19  bbs7  $a0,$0e73
0e5a: 8f 00 86  mov   $86,#$00
0e5d: 8f 02 87  mov   $87,#$02
0e60: 8f 00 84  mov   $84,#$00
0e63: a3 81 08  bbs5  $81,$0e6e
0e66: 83 81 05  bbs4  $81,$0e6e
0e69: cd 0e     mov   x,#$0e
0e6b: 5f 7e 0e  jmp   $0e7e

0e6e: cd 10     mov   x,#$10
0e70: 5f 7e 0e  jmp   $0e7e

0e73: 8f c0 86  mov   $86,#$c0
0e76: 8f 03 87  mov   $87,#$03
0e79: 8f 0e 84  mov   $84,#$0e
0e7c: cd 02     mov   x,#$02
0e7e: 4d        push  x
0e7f: 8d 1f     mov   y,#$1f
0e81: f7 86     mov   a,($86)+y
0e83: c4 e0     mov   $e0,a
0e85: 28 0f     and   a,#$0f
0e87: d7 86     mov   ($86)+y,a
0e89: 3f ec 09  call  $09ec
0e8c: fa 98 e1  mov   ($e1),($98)
0e8f: f3 e0 03  bbc7  $e0,$0e95
0e92: 3f bb 0e  call  $0ebb
0e95: d3 e0 06  bbc6  $e0,$0e9e
0e98: 3f 15 21  call  $2115
0e9b: 3f 14 0f  call  $0f14
0e9e: b3 e0 03  bbc5  $e0,$0ea4
0ea1: 3f 95 0f  call  $0f95
0ea4: 93 e0 03  bbc4  $e0,$0eaa
0ea7: 3f e2 0f  call  $0fe2
0eaa: 60        clrc
0eab: 98 20 86  adc   $86,#$20
0eae: 98 00 87  adc   $87,#$00
0eb1: ab 84     inc   $84
0eb3: 3f 15 21  call  $2115
0eb6: ce        pop   x
0eb7: 1d        dec   x
0eb8: d0 c4     bne   $0e7e
0eba: 6f        ret

0ebb: fa e1 98  mov   ($98),($e1)
0ebe: cd 00     mov   x,#$00
0ec0: 4b 98     lsr   $98
0ec2: b0 0a     bcs   $0ece
0ec4: f0 4b     beq   $0f11
0ec6: 7d        mov   a,x
0ec7: 60        clrc
0ec8: 88 10     adc   a,#$10
0eca: 5d        mov   x,a
0ecb: 5f c0 0e  jmp   $0ec0

0ece: f4 07     mov   a,$07+x
0ed0: 8d 0f     mov   y,#$0f
0ed2: 60        clrc
0ed3: 97 86     adc   a,($86)+y
0ed5: 8d 10     mov   y,#$10
0ed7: 60        clrc
0ed8: 97 86     adc   a,($86)+y
0eda: 8d 11     mov   y,#$11
0edc: 60        clrc
0edd: 97 86     adc   a,($86)+y
0edf: 10 08     bpl   $0ee9
0ee1: 60        clrc
0ee2: 88 0c     adc   a,#$0c
0ee4: 30 fb     bmi   $0ee1
0ee6: 5f f3 0e  jmp   $0ef3

0ee9: 68 60     cmp   a,#$60
0eeb: 90 06     bcc   $0ef3
0eed: 80        setc
0eee: a8 0c     sbc   a,#$0c
0ef0: 5f e9 0e  jmp   $0ee9

0ef3: d4 08     mov   $08+x,a
0ef5: 8d 12     mov   y,#$12
0ef7: f7 86     mov   a,($86)+y
0ef9: 8d 13     mov   y,#$13
0efb: 60        clrc
0efc: 97 86     adc   a,($86)+y
0efe: d4 09     mov   $09+x,a
0f00: 8d 14     mov   y,#$14
0f02: f7 86     mov   a,($86)+y
0f04: 8d 15     mov   y,#$15
0f06: 60        clrc
0f07: 97 86     adc   a,($86)+y
0f09: d4 0a     mov   $0a+x,a
0f0b: 3f 19 10  call  $1019
0f0e: 5f c6 0e  jmp   $0ec6

0f11: 5f 15 21  jmp   $2115

0f14: fa e1 98  mov   ($98),($e1)
0f17: cd 00     mov   x,#$00
0f19: 4b 98     lsr   $98
0f1b: b0 0a     bcs   $0f27
0f1d: f0 73     beq   $0f92
0f1f: 7d        mov   a,x
0f20: 60        clrc
0f21: 88 10     adc   a,#$10
0f23: 5d        mov   x,a
0f24: 5f 19 0f  jmp   $0f19

0f27: 8d 18     mov   y,#$18
0f29: f7 86     mov   a,($86)+y
0f2b: c4 e4     mov   $e4,a
0f2d: 8d 19     mov   y,#$19
0f2f: f7 86     mov   a,($86)+y
0f31: c4 e5     mov   $e5,a
0f33: 8d 17     mov   y,#$17
0f35: f7 86     mov   a,($86)+y
0f37: c4 e2     mov   $e2,a
0f39: 8d 16     mov   y,#$16
0f3b: f7 86     mov   a,($86)+y
0f3d: eb e2     mov   y,$e2
0f3f: cf        mul   ya
0f40: fc        inc   y
0f41: e4 e5     mov   a,$e5
0f43: cf        mul   ya
0f44: e4 e4     mov   a,$e4
0f46: cf        mul   ya
0f47: cb e2     mov   $e2,y
0f49: 8d 07     mov   y,#$07
0f4b: f7 86     mov   a,($86)+y
0f4d: 68 40     cmp   a,#$40
0f4f: 90 0a     bcc   $0f5b
0f51: 68 48     cmp   a,#$48
0f53: 0d        push  psw
0f54: 28 01     and   a,#$01
0f56: 8e        pop   psw
0f57: b0 02     bcs   $0f5b
0f59: bc        inc   a
0f5a: bc        inc   a
0f5b: fd        mov   y,a
0f5c: f6 40 01  mov   a,$0140+y
0f5f: eb e2     mov   y,$e2
0f61: cf        mul   ya
0f62: cb e2     mov   $e2,y
0f64: 4b e2     lsr   $e2
0f66: 7c        ror   a
0f67: 4b e2     lsr   $e2
0f69: 7c        ror   a
0f6a: 4b e2     lsr   $e2
0f6c: 7c        ror   a
0f6d: 4b e2     lsr   $e2
0f6f: d0 05     bne   $0f76
0f71: 7c        ror   a
0f72: 88 00     adc   a,#$00
0f74: 90 02     bcc   $0f78
0f76: e8 ff     mov   a,#$ff
0f78: fd        mov   y,a
0f79: 3f 67 11  call  $1167
0f7c: da e4     movw  $e4,ya
0f7e: ba e4     movw  ya,$e4
0f80: d4 03     mov   $03+x,a
0f82: db 04     mov   $04+x,y
0f84: 3f de 11  call  $11de
0f87: 7d        mov   a,x
0f88: 60        clrc
0f89: 88 10     adc   a,#$10
0f8b: 5d        mov   x,a
0f8c: 4b 98     lsr   $98
0f8e: b0 ee     bcs   $0f7e
0f90: d0 f5     bne   $0f87
0f92: 5f 15 21  jmp   $2115

0f95: fa e1 98  mov   ($98),($e1)
0f98: cd 00     mov   x,#$00
0f9a: 4b 98     lsr   $98
0f9c: b0 0a     bcs   $0fa8
0f9e: f0 3f     beq   $0fdf
0fa0: 7d        mov   a,x
0fa1: 60        clrc
0fa2: 88 10     adc   a,#$10
0fa4: 5d        mov   x,a
0fa5: 5f 9a 0f  jmp   $0f9a

0fa8: 4d        push  x
0fa9: 3d        inc   x
0faa: 3d        inc   x
0fab: 3d        inc   x
0fac: 3d        inc   x
0fad: 8d 07     mov   y,#$07
0faf: f7 86     mov   a,($86)+y
0fb1: 68 40     cmp   a,#$40
0fb3: 90 0a     bcc   $0fbf
0fb5: 68 48     cmp   a,#$48
0fb7: 0d        push  psw
0fb8: 28 01     and   a,#$01
0fba: 8e        pop   psw
0fbb: b0 02     bcs   $0fbf
0fbd: bc        inc   a
0fbe: bc        inc   a
0fbf: d8 f2     mov   $f2,x
0fc1: c4 f3     mov   $f3,a             ; set SRCN
0fc3: 3d        inc   x
0fc4: 8d 08     mov   y,#$08
0fc6: f7 86     mov   a,($86)+y
0fc8: d8 f2     mov   $f2,x
0fca: c4 f3     mov   $f3,a             ; set ADSR(1)
0fcc: 3d        inc   x
0fcd: 8d 09     mov   y,#$09
0fcf: f7 86     mov   a,($86)+y
0fd1: d8 f2     mov   $f2,x
0fd3: c4 f3     mov   $f3,a             ; set ADSR(2)
0fd5: 3d        inc   x
0fd6: d8 f2     mov   $f2,x
0fd8: 8f b8 f3  mov   $f3,#$b8          ; set GAIN
0fdb: ce        pop   x
0fdc: 5f a0 0f  jmp   $0fa0

0fdf: 5f 15 21  jmp   $2115

0fe2: fa e1 98  mov   ($98),($e1)
0fe5: cd 00     mov   x,#$00
0fe7: 4b 98     lsr   $98
0fe9: b0 0a     bcs   $0ff5
0feb: f0 29     beq   $1016
0fed: 7d        mov   a,x
0fee: 60        clrc
0fef: 88 08     adc   a,#$08
0ff1: 5d        mov   x,a
0ff2: 5f e7 0f  jmp   $0fe7

0ff5: 8d 1c     mov   y,#$1c
0ff7: f7 86     mov   a,($86)+y
0ff9: d5 02 01  mov   $0102+x,a
0ffc: 8d 1d     mov   y,#$1d
0ffe: f7 86     mov   a,($86)+y
1000: d5 03 01  mov   $0103+x,a
1003: 8d 1e     mov   y,#$1e
1005: f7 86     mov   a,($86)+y
1007: 40        setp
1008: d4 04     mov   $04+x,a
100a: e8 80     mov   a,#$80
100c: d4 06     mov   $06+x,a
100e: e8 00     mov   a,#$00
1010: d4 05     mov   $05+x,a
1012: 20        clrp
1013: 5f ed 0f  jmp   $0fed

1016: 5f 15 21  jmp   $2115

1019: d8 85     mov   $85,x
101b: f4 0a     mov   a,$0a+x
101d: d0 0e     bne   $102d
101f: f4 08     mov   a,$08+x
1021: 1c        asl   a
1022: 5d        mov   x,a
1023: f5 69 08  mov   a,$0869+x
1026: fd        mov   y,a
1027: f5 68 08  mov   a,$0868+x
102a: 5f b9 10  jmp   $10b9

102d: 8f ff e6  mov   $e6,#$ff
1030: 8f 05 e5  mov   $e5,#$05
1033: 8f 55 e4  mov   $e4,#$55
1036: 30 3e     bmi   $1076
1038: fd        mov   y,a
1039: e8 00     mov   a,#$00
103b: ab e6     inc   $e6
103d: 9a e4     subw  ya,$e4
103f: b0 fa     bcs   $103b
1041: 7a e4     addw  ya,$e4
1043: 6d        push  y
1044: f4 08     mov   a,$08+x
1046: 60        clrc
1047: 84 e6     adc   a,$e6
1049: 68 5f     cmp   a,#$5f
104b: 90 06     bcc   $1053
104d: 80        setc
104e: a8 0c     sbc   a,#$0c
1050: 5f 49 10  jmp   $1049

1053: 2d        push  a
1054: 1c        asl   a
1055: 5d        mov   x,a
1056: f5 69 08  mov   a,$0869+x
1059: fd        mov   y,a
105a: f5 68 08  mov   a,$0868+x
105d: da e4     movw  $e4,ya
105f: ae        pop   a
1060: bc        inc   a
1061: 1c        asl   a
1062: 5d        mov   x,a
1063: f5 69 08  mov   a,$0869+x
1066: fd        mov   y,a
1067: f5 68 08  mov   a,$0868+x
106a: 9a e4     subw  ya,$e4
106c: cd 05     mov   x,#$05
106e: 9e        div   ya,x
106f: ee        pop   y
1070: cf        mul   ya
1071: 7a e4     addw  ya,$e4
1073: 5f b9 10  jmp   $10b9

1076: 48 ff     eor   a,#$ff
1078: bc        inc   a
1079: fd        mov   y,a
107a: e8 00     mov   a,#$00
107c: ab e6     inc   $e6
107e: 9a e4     subw  ya,$e4
1080: b0 fa     bcs   $107c
1082: 7a e4     addw  ya,$e4
1084: 6d        push  y
1085: f4 08     mov   a,$08+x
1087: 9c        dec   a
1088: 80        setc
1089: a4 e6     sbc   a,$e6
108b: 10 06     bpl   $1093
108d: 60        clrc
108e: 88 0c     adc   a,#$0c
1090: 5f 8b 10  jmp   $108b

1093: 2d        push  a
1094: 1c        asl   a
1095: 5d        mov   x,a
1096: f5 69 08  mov   a,$0869+x
1099: fd        mov   y,a
109a: f5 68 08  mov   a,$0868+x
109d: da e4     movw  $e4,ya
109f: ae        pop   a
10a0: bc        inc   a
10a1: 1c        asl   a
10a2: 5d        mov   x,a
10a3: f5 69 08  mov   a,$0869+x
10a6: fd        mov   y,a
10a7: f5 68 08  mov   a,$0868+x
10aa: da e6     movw  $e6,ya
10ac: 9a e4     subw  ya,$e4
10ae: cd 05     mov   x,#$05
10b0: 9e        div   ya,x
10b1: ee        pop   y
10b2: cf        mul   ya
10b3: da e4     movw  $e4,ya
10b5: ba e6     movw  ya,$e6
10b7: 9a e4     subw  ya,$e4
10b9: da e4     movw  $e4,ya
10bb: 3f 15 21  call  $2115
10be: f8 85     mov   x,$85
10c0: f4 09     mov   a,$09+x
10c2: d0 05     bne   $10c9
10c4: ba e4     movw  ya,$e4
10c6: 5f 43 11  jmp   $1143

10c9: 30 3a     bmi   $1105
10cb: 2d        push  a
10cc: f4 08     mov   a,$08+x
10ce: bc        inc   a
10cf: bc        inc   a
10d0: 1c        asl   a
10d1: 5d        mov   x,a
10d2: f5 69 08  mov   a,$0869+x
10d5: fd        mov   y,a
10d6: f5 68 08  mov   a,$0868+x
10d9: 9a e4     subw  ya,$e4
10db: cb e7     mov   $e7,y
10dd: 4b e7     lsr   $e7
10df: 7c        ror   a
10e0: 6b e7     ror   $e7
10e2: 7c        ror   a
10e3: 6b e7     ror   $e7
10e5: fd        mov   y,a
10e6: e4 e7     mov   a,$e7
10e8: 28 c0     and   a,#$c0
10ea: cd 80     mov   x,#$80
10ec: 9e        div   ya,x
10ed: ee        pop   y
10ee: cf        mul   ya
10ef: 8f 00 e7  mov   $e7,#$00
10f2: cb e6     mov   $e6,y
10f4: 1c        asl   a
10f5: 2b e6     rol   $e6
10f7: 2b e7     rol   $e7
10f9: 1c        asl   a
10fa: 2b e6     rol   $e6
10fc: 2b e7     rol   $e7
10fe: ba e6     movw  ya,$e6
1100: 7a e4     addw  ya,$e4
1102: 5f 43 11  jmp   $1143

1105: 48 ff     eor   a,#$ff
1107: bc        inc   a
1108: 2d        push  a
1109: f4 08     mov   a,$08+x
110b: 9c        dec   a
110c: 9c        dec   a
110d: 1c        asl   a
110e: 5d        mov   x,a
110f: f5 69 08  mov   a,$0869+x
1112: fd        mov   y,a
1113: f5 68 08  mov   a,$0868+x
1116: da e6     movw  $e6,ya
1118: ba e4     movw  ya,$e4
111a: 9a e6     subw  ya,$e6
111c: cb e7     mov   $e7,y
111e: 4b e7     lsr   $e7
1120: 7c        ror   a
1121: 6b e7     ror   $e7
1123: 7c        ror   a
1124: 6b e7     ror   $e7
1126: fd        mov   y,a
1127: e4 e7     mov   a,$e7
1129: 28 c0     and   a,#$c0
112b: cd 80     mov   x,#$80
112d: 9e        div   ya,x
112e: ee        pop   y
112f: cf        mul   ya
1130: 8f 00 e7  mov   $e7,#$00
1133: cb e6     mov   $e6,y
1135: 1c        asl   a
1136: 2b e6     rol   $e6
1138: 2b e7     rol   $e7
113a: 1c        asl   a
113b: 2b e6     rol   $e6
113d: 2b e7     rol   $e7
113f: ba e4     movw  ya,$e4
1141: 9a e6     subw  ya,$e6
1143: ad 40     cmp   y,#$40
1145: 90 09     bcc   $1150
1147: cb e4     mov   $e4,y
1149: 4b e4     lsr   $e4
114b: 7c        ror   a
114c: eb e4     mov   y,$e4
114e: 2f f3     bra   $1143
1150: f8 85     mov   x,$85
1152: d4 0e     mov   $0e+x,a
1154: db 0f     mov   $0f+x,y
1156: 3d        inc   x
1157: 3d        inc   x
1158: d8 f2     mov   $f2,x
115a: c4 f3     mov   $f3,a             ; P(L)
115c: 3d        inc   x
115d: d8 f2     mov   $f2,x
115f: cb f3     mov   $f3,y             ; P(H)
1161: 3f 15 21  call  $2115
1164: f8 85     mov   x,$85
1166: 6f        ret

1167: dd        mov   a,y
1168: 33 80 03  bbc1  $80,$116e
116b: 5c        lsr   a
116c: fd        mov   y,a
116d: 6f        ret

116e: c4 e6     mov   $e6,a
1170: 4d        push  x
1171: 3f 15 21  call  $2115
1174: ce        pop   x
1175: 8d 1a     mov   y,#$1a
1177: f7 86     mov   a,($86)+y
1179: c4 e2     mov   $e2,a
117b: 8d 1b     mov   y,#$1b
117d: f7 86     mov   a,($86)+y
117f: c4 e3     mov   $e3,a
1181: 68 40     cmp   a,#$40
1183: d0 0b     bne   $1190
1185: fa e2 e4  mov   ($e4),($e2)
1188: e8 7f     mov   a,#$7f
118a: 80        setc
118b: a4 e2     sbc   a,$e2
118d: 5f d0 11  jmp   $11d0

1190: 80        setc
1191: a8 40     sbc   a,#$40
1193: 10 03     bpl   $1198
1195: 48 ff     eor   a,#$ff
1197: bc        inc   a
1198: c4 e4     mov   $e4,a
119a: e8 40     mov   a,#$40
119c: 80        setc
119d: a4 e4     sbc   a,$e4
119f: fd        mov   y,a
11a0: e4 e2     mov   a,$e2
11a2: 80        setc
11a3: a8 40     sbc   a,#$40
11a5: 30 0d     bmi   $11b4
11a7: cf        mul   ya
11a8: cb e5     mov   $e5,y
11aa: 3c        rol   a
11ab: 2b e5     rol   $e5
11ad: 3c        rol   a
11ae: e4 e5     mov   a,$e5
11b0: 3c        rol   a
11b1: 5f c4 11  jmp   $11c4

11b4: 48 ff     eor   a,#$ff
11b6: bc        inc   a
11b7: cf        mul   ya
11b8: cb e5     mov   $e5,y
11ba: 3c        rol   a
11bb: 2b e5     rol   $e5
11bd: 3c        rol   a
11be: e4 e5     mov   a,$e5
11c0: 3c        rol   a
11c1: 48 ff     eor   a,#$ff
11c3: bc        inc   a
11c4: 60        clrc
11c5: 84 e3     adc   a,$e3
11c7: c4 e5     mov   $e5,a
11c9: c4 e4     mov   $e4,a
11cb: e8 80     mov   a,#$80
11cd: 80        setc
11ce: a4 e5     sbc   a,$e5
11d0: 1c        asl   a
11d1: eb e6     mov   y,$e6
11d3: cf        mul   ya
11d4: 6d        push  y
11d5: e4 e4     mov   a,$e4
11d7: 1c        asl   a
11d8: eb e6     mov   y,$e6
11da: cf        mul   ya
11db: dd        mov   a,y
11dc: ee        pop   y
11dd: 6f        ret

11de: f4 01     mov   a,$01+x
11e0: 68 0e     cmp   a,#$0e
11e2: 90 05     bcc   $11e9
11e4: e8 ff     mov   a,#$ff
11e6: 5f 01 12  jmp   $1201

11e9: 8d 00     mov   y,#$00
11eb: f4 07     mov   a,$07+x
11ed: 80        setc
11ee: a8 18     sbc   a,#$18
11f0: 90 0c     bcc   $11fe
11f2: 4d        push  x
11f3: cd 03     mov   x,#$03
11f5: 9e        div   ya,x
11f6: ce        pop   x
11f7: fd        mov   y,a
11f8: ad 20     cmp   y,#$20
11fa: 90 02     bcc   $11fe
11fc: 8d 20     mov   y,#$20
11fe: f6 c0 01  mov   a,$01c0+y
1201: fb 06     mov   y,$06+x
1203: cf        mul   ya
1204: f4 05     mov   a,$05+x
1206: cf        mul   ya
1207: cb e2     mov   $e2,y
1209: e6        mov   a,(x)
120a: c4 e3     mov   $e3,a
120c: f4 04     mov   a,$04+x
120e: cf        mul   ya
120f: cb e6     mov   $e6,y
1211: dd        mov   a,y
1212: 5c        lsr   a
1213: 23 80 09  bbs1  $80,$121f
1216: 63 80 06  bbs3  $80,$121f
1219: b3 e3 03  bbc5  $e3,$121f
121c: 48 ff     eor   a,#$ff
121e: bc        inc   a
121f: 2d        push  a
1220: eb e2     mov   y,$e2
1222: f4 03     mov   a,$03+x
1224: cf        mul   ya
1225: cb e7     mov   $e7,y
1227: dd        mov   a,y
1228: 5c        lsr   a
1229: 23 80 09  bbs1  $80,$1235
122c: 63 80 06  bbs3  $80,$1235
122f: d3 e3 03  bbc6  $e3,$1235
1232: 48 ff     eor   a,#$ff
1234: bc        inc   a
1235: ee        pop   y
1236: d4 0b     mov   $0b+x,a
1238: db 0c     mov   $0c+x,y
123a: d8 f2     mov   $f2,x
123c: c4 f3     mov   $f3,a             ; VOL(L)
123e: 3d        inc   x
123f: d8 f2     mov   $f2,x
1241: cb f3     mov   $f3,y             ; VOL(R)
1243: 1d        dec   x
1244: e4 e6     mov   a,$e6
1246: 60        clrc
1247: 84 e7     adc   a,$e7
1249: 7c        ror   a
124a: d4 0d     mov   $0d+x,a
124c: 4d        push  x
124d: 3f 15 21  call  $2115
1250: ce        pop   x
1251: 6f        ret

1252: cd 00     mov   x,#$00
1254: e6        mov   a,(x)
1255: 30 0a     bmi   $1261
1257: 7d        mov   a,x
1258: 60        clrc
1259: 88 10     adc   a,#$10
125b: 5d        mov   x,a
125c: 10 f6     bpl   $1254
125e: 5f 15 21  jmp   $2115

1261: 7c        ror   a
1262: 90 f3     bcc   $1257
1264: f4 01     mov   a,$01+x
1266: f3 a0 07  bbc7  $a0,$1270
1269: 68 0e     cmp   a,#$0e
126b: b0 07     bcs   $1274
126d: 5f 57 12  jmp   $1257

1270: 68 0e     cmp   a,#$0e
1272: b0 e3     bcs   $1257
1274: d8 e5     mov   $e5,x
1276: 3f 15 21  call  $2115
1279: f8 e5     mov   x,$e5
127b: 40        setp
127c: 7d        mov   a,x
127d: 5c        lsr   a
127e: 5d        mov   x,a
127f: f4 02     mov   a,$02+x
1281: f0 09     beq   $128c
1283: 9c        dec   a
1284: d4 02     mov   $02+x,a
1286: 20        clrp
1287: f8 e5     mov   x,$e5
1289: 5f 57 12  jmp   $1257

128c: 40        setp
128d: f4 04     mov   a,$04+x
128f: 60        clrc
1290: 94 06     adc   a,$06+x
1292: 80        setc
1293: a8 a0     sbc   a,#$a0
1295: 90 0e     bcc   $12a5
1297: 60        clrc
1298: 88 80     adc   a,#$80
129a: d4 06     mov   $06+x,a
129c: f4 03     mov   a,$03+x
129e: 48 80     eor   a,#$80
12a0: d4 03     mov   $03+x,a
12a2: 5f aa 12  jmp   $12aa

12a5: 60        clrc
12a6: 88 a0     adc   a,#$a0
12a8: d4 06     mov   $06+x,a
12aa: f4 03     mov   a,$03+x
12ac: 28 7f     and   a,#$7f
12ae: 74 05     cmp   a,$05+x
12b0: f0 18     beq   $12ca
12b2: fb 05     mov   y,$05+x
12b4: 20        clrp
12b5: c4 e2     mov   $e2,a
12b7: 5c        lsr   a
12b8: 5c        lsr   a
12b9: 5c        lsr   a
12ba: bc        inc   a
12bb: c4 e3     mov   $e3,a
12bd: dd        mov   a,y
12be: 60        clrc
12bf: 84 e3     adc   a,$e3
12c1: 64 e2     cmp   a,$e2
12c3: 90 02     bcc   $12c7
12c5: e4 e2     mov   a,$e2
12c7: 40        setp
12c8: d4 05     mov   $05+x,a
12ca: f4 06     mov   a,$06+x
12cc: 4d        push  x
12cd: 5d        mov   x,a
12ce: e6        mov   a,(x)
12cf: ce        pop   x
12d0: fb 05     mov   y,$05+x
12d2: cf        mul   ya
12d3: fc        inc   y
12d4: dd        mov   a,y
12d5: fb 03     mov   y,$03+x
12d7: 30 09     bmi   $12e2
12d9: 20        clrp
12da: 8f 00 e3  mov   $e3,#$00
12dd: c4 e2     mov   $e2,a
12df: 5f eb 12  jmp   $12eb

12e2: 20        clrp
12e3: 8f ff e3  mov   $e3,#$ff
12e6: 48 ff     eor   a,#$ff
12e8: bc        inc   a
12e9: c4 e2     mov   $e2,a
12eb: f8 e5     mov   x,$e5
12ed: f4 0e     mov   a,$0e+x
12ef: fb 0f     mov   y,$0f+x
12f1: 7a e2     addw  ya,$e2
12f3: 3d        inc   x
12f4: 3d        inc   x
12f5: d8 f2     mov   $f2,x
12f7: c4 f3     mov   $f3,a             ; P(L)
12f9: 3d        inc   x
12fa: d8 f2     mov   $f2,x
12fc: cb f3     mov   $f3,y             ; P(H)
12fe: 1d        dec   x
12ff: 1d        dec   x
1300: 1d        dec   x
1301: 5f 57 12  jmp   $1257

1304: cd 00     mov   x,#$00
1306: e6        mov   a,(x)
1307: 3c        rol   a
1308: 90 03     bcc   $130d
130a: 7c        ror   a
130b: 7c        ror   a
130c: 7c        ror   a
130d: 6b e0     ror   $e0
130f: 7d        mov   a,x
1310: 60        clrc
1311: 88 10     adc   a,#$10
1313: 5d        mov   x,a
1314: 10 f0     bpl   $1306
1316: 8f 4d f2  mov   $f2,#$4d
1319: fa e0 f3  mov   ($f3),($e0)       ; EON
131c: 6f        ret

131d: 23 80 35  bbs1  $80,$1355
1320: e4 9f     mov   a,$9f
1322: 68 05     cmp   a,#$05
1324: 90 2f     bcc   $1355
1326: f0 0a     beq   $1332
1328: 8f 20 e2  mov   $e2,#$20
132b: e8 20     mov   a,#$20
132d: 8f 01 9f  mov   $9f,#$01
1330: 2f 18     bra   $134a
1332: e4 94     mov   a,$94
1334: ab 94     inc   $94
1336: 1c        asl   a
1337: fd        mov   y,a
1338: f6 56 13  mov   a,$1356+y
133b: c4 e2     mov   $e2,a
133d: f6 57 13  mov   a,$1357+y
1340: 68 7f     cmp   a,#$7f
1342: d0 06     bne   $134a
1344: 8f 00 94  mov   $94,#$00
1347: 5f 32 13  jmp   $1332

134a: 8f 2c f2  mov   $f2,#$2c
134d: fa e2 f3  mov   ($f3),($e2)       ; EVOL(L)
1350: 8f 3c f2  mov   $f2,#$3c
1353: c4 f3     mov   $f3,a             ; EVOL(R)
1355: 6f        ret

1356: 28 08     and   a,#$08
1358: 20        clrp
1359: 10 18     bpl   $1373
135b: 18 10 20  or    $20,#$10
135e: 08 28     or    a,#$28
1360: 10 20     bpl   $1382
1362: 18 18 20  or    $20,#$18
1365: 10 7f     bpl   $13e6
1367: 7f        reti
1368: 8f 00 94  mov   $94,#$00
136b: e4 9f     mov   a,$9f
136d: f0 0c     beq   $137b
136f: 23 80 07  bbs1  $80,$1379
1372: 73 80 06  bbc3  $80,$137b
1375: 68 05     cmp   a,#$05
1377: b0 02     bcs   $137b
1379: e8 01     mov   a,#$01
137b: 1c        asl   a
137c: fd        mov   y,a
137d: f6 8e 13  mov   a,$138e+y
1380: 8f 2c f2  mov   $f2,#$2c
1383: c4 f3     mov   $f3,a             ; EVOL(L)
1385: f6 8f 13  mov   a,$138f+y
1388: 8f 3c f2  mov   $f2,#$3c
138b: c4 f3     mov   $f3,a             ; EVOL(R)
138d: 6f        ret

138e: db $00,$00
1390: db $20,$20
1392: db $e0,$20
1394: db $20,$e0
1396: db $e0,$e0

1398: 28 08     and   a,#$08
139a: 8f 08 e0  mov   $e0,#$08
139d: 8f 0f e1  mov   $e1,#$0f
13a0: e4 93     mov   a,$93
13a2: 1c        asl   a
13a3: 1c        asl   a
13a4: 1c        asl   a
13a5: fd        mov   y,a
13a6: fa e1 f2  mov   ($f2),($e1)
13a9: f6 b7 13  mov   a,$13b7+y
13ac: c4 f3     mov   $f3,a             ; set C0-C7
13ae: 60        clrc
13af: 98 10 e1  adc   $e1,#$10
13b2: fc        inc   y
13b3: 6e e0 f0  dbnz  $e0,$13a6
13b6: 6f        ret

13b7: db $ff,$08,$17,$24,$24,$17,$08,$ff
13bf: db $7f,$00,$00,$00,$00,$00,$00,$00
13c7: db $0d,$22,$22,$24,$11,$f0,$03,$ff
13cf: db $10,$30,$22,$24,$11,$f0,$20,$ff

13d7: c4 e7     mov   $e7,a
13d9: e3 a0 0b  bbs7  $a0,$13e7
13dc: 8f 00 86  mov   $86,#$00
13df: 8f 02 87  mov   $87,#$02
13e2: cd 0e     mov   x,#$0e
13e4: 5f ef 13  jmp   $13ef

13e7: 8f c0 86  mov   $86,#$c0
13ea: 8f 03 87  mov   $87,#$03
13ed: cd 02     mov   x,#$02
13ef: e4 e7     mov   a,$e7
13f1: 8d 19     mov   y,#$19
13f3: d7 86     mov   ($86)+y,a
13f5: 8d 1f     mov   y,#$1f
13f7: f7 86     mov   a,($86)+y
13f9: 08 40     or    a,#$40
13fb: d7 86     mov   ($86)+y,a
13fd: 60        clrc
13fe: 98 20 86  adc   $86,#$20
1401: 98 00 87  adc   $87,#$00
1404: 1d        dec   x
1405: d0 e8     bne   $13ef
1407: 6f        ret

1408: 78 0c 84  cmp   $84,#$0c
140b: b0 1a     bcs   $1427
140d: cd 00     mov   x,#$00
140f: 8f ff e0  mov   $e0,#$ff
1412: e6        mov   a,(x)
1413: 10 11     bpl   $1426
1415: f4 01     mov   a,$01+x
1417: 68 0e     cmp   a,#$0e
1419: b0 02     bcs   $141d
141b: d8 e0     mov   $e0,x
141d: 7d        mov   a,x
141e: 60        clrc
141f: 88 10     adc   a,#$10
1421: 5d        mov   x,a
1422: 10 ee     bpl   $1412
1424: f8 e0     mov   x,$e0
1426: 6f        ret

1427: cd ff     mov   x,#$ff
1429: d8 e0     mov   $e0,x
142b: d8 e1     mov   $e1,x
142d: d8 e2     mov   $e2,x
142f: d8 e3     mov   $e3,x
1431: d8 e4     mov   $e4,x
1433: 3d        inc   x
1434: e6        mov   a,(x)
1435: 30 05     bmi   $143c
1437: d8 e4     mov   $e4,x
1439: 5f 4a 14  jmp   $144a

143c: f4 01     mov   a,$01+x
143e: 68 0e     cmp   a,#$0e
1440: f0 1a     beq   $145c
1442: b0 10     bcs   $1454
1444: 68 0c     cmp   a,#$0c
1446: f0 21     beq   $1469
1448: b0 1a     bcs   $1464
144a: 7d        mov   a,x
144b: 60        clrc
144c: 88 10     adc   a,#$10
144e: 5d        mov   x,a
144f: 10 e3     bpl   $1434
1451: 5f 6e 14  jmp   $146e

1454: d8 e0     mov   $e0,x
1456: 78 0f 84  cmp   $84,#$0f
1459: d0 ef     bne   $144a
145b: 6f        ret

145c: d8 e1     mov   $e1,x
145e: 78 0e 84  cmp   $84,#$0e
1461: d0 e7     bne   $144a
1463: 6f        ret

1464: d8 e2     mov   $e2,x
1466: 5f 4a 14  jmp   $144a

1469: d8 e3     mov   $e3,x
146b: 5f 4a 14  jmp   $144a

146e: e4 84     mov   a,$84
1470: 68 0d     cmp   a,#$0d
1472: f0 16     beq   $148a
1474: 68 0e     cmp   a,#$0e
1476: f0 37     beq   $14af
1478: 68 0f     cmp   a,#$0f
147a: f0 1c     beq   $1498
147c: f8 e0     mov   x,$e0
147e: 30 07     bmi   $1487
1480: f8 e1     mov   x,$e1
1482: 30 03     bmi   $1487
1484: cd ff     mov   x,#$ff
1486: 6f        ret

1487: f8 e4     mov   x,$e4
1489: 6f        ret

148a: f8 e0     mov   x,$e0
148c: 10 07     bpl   $1495
148e: f8 e1     mov   x,$e1
1490: 10 03     bpl   $1495
1492: f8 e4     mov   x,$e4
1494: 6f        ret

1495: cd ff     mov   x,#$ff
1497: 6f        ret

1498: f8 e2     mov   x,$e2
149a: 10 12     bpl   $14ae
149c: f8 e3     mov   x,$e3
149e: 10 0e     bpl   $14ae
14a0: f8 e4     mov   x,$e4
14a2: 10 0a     bpl   $14ae
14a4: cd 70     mov   x,#$70
14a6: e8 0e     mov   a,#$0e
14a8: 74 01     cmp   a,$01+x
14aa: d0 02     bne   $14ae
14ac: cd 60     mov   x,#$60
14ae: 6f        ret

14af: f8 e2     mov   x,$e2
14b1: 10 12     bpl   $14c5
14b3: f8 e3     mov   x,$e3
14b5: 10 0e     bpl   $14c5
14b7: f8 e4     mov   x,$e4
14b9: 10 0a     bpl   $14c5
14bb: cd 70     mov   x,#$70
14bd: e8 0f     mov   a,#$0f
14bf: 74 01     cmp   a,$01+x
14c1: d0 02     bne   $14c5
14c3: cd 60     mov   x,#$60
14c5: 6f        ret

14c6: 8d 03     mov   y,#$03
14c8: f7 86     mov   a,($86)+y
14ca: c4 a2     mov   $a2,a
14cc: 8d 04     mov   y,#$04
14ce: f7 86     mov   a,($86)+y
14d0: c4 a3     mov   $a3,a             ; score pointer $a2/3
14d2: 8d 00     mov   y,#$00
14d4: f7 a2     mov   a,($a2)+y         ; read first byte
14d6: 10 03     bpl   $14db
14d8: 5f 59 16  jmp   $1659

; vcmd 00-7f
14db: c4 e1     mov   $e1,a
14dd: 3f ec 09  call  $09ec
14e0: e4 98     mov   a,$98
14e2: f0 16     beq   $14fa
14e4: cd 00     mov   x,#$00
14e6: 6b 98     ror   $98
14e8: 90 09     bcc   $14f3
14ea: f4 07     mov   a,$07+x
14ec: 64 e1     cmp   a,$e1
14ee: d0 03     bne   $14f3
14f0: 5f 17 16  jmp   $1617

14f3: 7d        mov   a,x
14f4: 60        clrc
14f5: 88 10     adc   a,#$10
14f7: 5d        mov   x,a
14f8: 10 ec     bpl   $14e6
14fa: 8d 1f     mov   y,#$1f
14fc: f7 86     mov   a,($86)+y
14fe: 08 f0     or    a,#$f0
1500: d7 86     mov   ($86)+y,a
1502: 8d 00     mov   y,#$00
1504: f7 a2     mov   a,($a2)+y
1506: 8d 0e     mov   y,#$0e
1508: d7 86     mov   ($86)+y,a
150a: 8d 01     mov   y,#$01
150c: f7 a2     mov   a,($a2)+y
150e: 8d 06     mov   y,#$06
1510: d7 86     mov   ($86)+y,a
1512: e8 00     mov   a,#$00
1514: 53 80 07  bbc2  $80,$151e
1517: 3f 57 0a  call  $0a57
151a: 28 03     and   a,#$03
151c: 9c        dec   a
151d: 9c        dec   a
151e: 8d 10     mov   y,#$10
1520: d7 86     mov   ($86)+y,a
1522: 3f 08 14  call  $1408
1525: 10 03     bpl   $152a
1527: 5f 12 16  jmp   $1612

152a: 8d 02     mov   y,#$02
152c: f7 a2     mov   a,($a2)+y
152e: bc        inc   a
152f: d4 02     mov   $02+x,a
1531: 8d 03     mov   y,#$03
1533: f7 a2     mov   a,($a2)+y
1535: d4 05     mov   $05+x,a
1537: 8d 00     mov   y,#$00
1539: f7 86     mov   a,($86)+y
153b: d4 00     mov   $00+x,a
153d: 7c        ror   a
153e: 7c        ror   a
153f: 7c        ror   a
1540: e8 c0     mov   a,#$c0
1542: 90 05     bcc   $1549
1544: 3f 57 0a  call  $0a57
1547: 08 80     or    a,#$80
1549: d4 06     mov   $06+x,a
154b: e4 c9     mov   a,$c9
154d: f0 54     beq   $15a3
154f: 8d 00     mov   y,#$00
1551: f7 86     mov   a,($86)+y
1553: 28 10     and   a,#$10
1555: f0 4c     beq   $15a3
1557: 3f 57 0a  call  $0a57
155a: 64 c9     cmp   a,$c9
155c: b0 36     bcs   $1594
155e: 28 07     and   a,#$07
1560: a8 04     sbc   a,#$04
1562: 30 13     bmi   $1577
1564: c4 e2     mov   $e2,a
1566: 8d 06     mov   y,#$06
1568: 60        clrc
1569: 97 86     adc   a,($86)+y
156b: d7 86     mov   ($86)+y,a
156d: e4 e2     mov   a,$e2
156f: 60        clrc
1570: 94 02     adc   a,$02+x
1572: d4 02     mov   $02+x,a
1574: 5f 94 15  jmp   $1594

1577: 48 ff     eor   a,#$ff
1579: bc        inc   a
157a: c4 e2     mov   $e2,a
157c: 8d 06     mov   y,#$06
157e: f7 86     mov   a,($86)+y
1580: 80        setc
1581: a4 e2     sbc   a,$e2
1583: f0 0f     beq   $1594
1585: 90 0d     bcc   $1594
1587: d7 86     mov   ($86)+y,a
1589: f4 02     mov   a,$02+x
158b: 80        setc
158c: a4 e2     sbc   a,$e2
158e: b0 02     bcs   $1592
1590: e8 00     mov   a,#$00
1592: d4 02     mov   $02+x,a
1594: 3f 57 0a  call  $0a57
1597: 64 c9     cmp   a,$c9
1599: b0 08     bcs   $15a3
159b: 28 03     and   a,#$03
159d: 9c        dec   a
159e: 9c        dec   a
159f: 8d 10     mov   y,#$10
15a1: d7 86     mov   ($86)+y,a
15a3: 8d 00     mov   y,#$00
15a5: f7 86     mov   a,($86)+y
15a7: 28 08     and   a,#$08
15a9: f0 35     beq   $15e0
15ab: 3f 57 0a  call  $0a57
15ae: 68 c0     cmp   a,#$c0
15b0: 90 2e     bcc   $15e0
15b2: 8d 1f     mov   y,#$1f
15b4: f7 86     mov   a,($86)+y
15b6: 7c        ror   a
15b7: 90 0c     bcc   $15c5
15b9: 8d 06     mov   y,#$06
15bb: f7 86     mov   a,($86)+y
15bd: bc        inc   a
15be: d7 86     mov   ($86)+y,a
15c0: bb 02     inc   $02+x
15c2: 5f d8 15  jmp   $15d8

15c5: f4 02     mov   a,$02+x
15c7: 68 02     cmp   a,#$02
15c9: 90 15     bcc   $15e0
15cb: 8d 06     mov   y,#$06
15cd: f7 86     mov   a,($86)+y
15cf: f0 0f     beq   $15e0
15d1: 9c        dec   a
15d2: f0 0c     beq   $15e0
15d4: d7 86     mov   ($86)+y,a
15d6: 9b 02     dec   $02+x
15d8: 8d 1f     mov   y,#$1f
15da: f7 86     mov   a,($86)+y
15dc: 48 01     eor   a,#$01
15de: d7 86     mov   ($86)+y,a
15e0: e4 84     mov   a,$84
15e2: d4 01     mov   $01+x,a
15e4: 8d 0e     mov   y,#$0e
15e6: f7 86     mov   a,($86)+y
15e8: d4 07     mov   $07+x,a
15ea: d8 e4     mov   $e4,x
15ec: 7d        mov   a,x
15ed: 5c        lsr   a
15ee: 5d        mov   x,a
15ef: 8d 11     mov   y,#$11
15f1: f7 86     mov   a,($86)+y
15f3: d5 00 01  mov   $0100+x,a
15f6: 8d 07     mov   y,#$07
15f8: f7 86     mov   a,($86)+y
15fa: d5 01 01  mov   $0101+x,a
15fd: f8 e4     mov   x,$e4
15ff: 7d        mov   a,x
1600: 9f        xcn   a
1601: 5d        mov   x,a
1602: f4 88     mov   a,$88+x
1604: f3 a0 07  bbc7  $a0,$160e
1607: 04 c3     or    a,$c3
1609: c4 c3     mov   $c3,a
160b: 5f 12 16  jmp   $1612

160e: 04 c0     or    a,$c0
1610: c4 c0     mov   $c0,a
1612: e8 04     mov   a,#$04
1614: 5f 6f 0a  jmp   $0a6f

1617: 8d 1f     mov   y,#$1f
1619: f7 86     mov   a,($86)+y
161b: 08 40     or    a,#$40
161d: d7 86     mov   ($86)+y,a
161f: 8d 00     mov   y,#$00
1621: f7 a2     mov   a,($a2)+y
1623: 8d 0e     mov   y,#$0e
1625: d7 86     mov   ($86)+y,a
1627: 8d 01     mov   y,#$01
1629: f7 a2     mov   a,($a2)+y
162b: 8d 06     mov   y,#$06
162d: d7 86     mov   ($86)+y,a
162f: 8d 02     mov   y,#$02
1631: f7 a2     mov   a,($a2)+y
1633: bc        inc   a
1634: d4 02     mov   $02+x,a
1636: 8d 03     mov   y,#$03
1638: f7 a2     mov   a,($a2)+y
163a: d4 05     mov   $05+x,a
163c: 7d        mov   a,x
163d: 9f        xcn   a
163e: 5d        mov   x,a
163f: f4 88     mov   a,$88+x
1641: 48 ff     eor   a,#$ff
1643: f3 a0 0a  bbc7  $a0,$1650
1646: 5f 54 16  jmp   $1654

1649: 24 c3     and   a,$c3
164b: c4 c3     mov   $c3,a
164d: 5f 54 16  jmp   $1654

1650: 24 c0     and   a,$c0
1652: c4 c0     mov   $c0,a
1654: e8 04     mov   a,#$04
1656: 5f 6f 0a  jmp   $0a6f

1659: 68 fd     cmp   a,#$fd
165b: f0 15     beq   $1672
165d: 80        setc
165e: a8 90     sbc   a,#$90
1660: 1c        asl   a
1661: 5d        mov   x,a
1662: 1f 59 19  jmp   ($1959+x)

; vcmd 90
1665: 8d 01     mov   y,#$01
1667: f7 a2     mov   a,($a2)+y
1669: 8d 06     mov   y,#$06
166b: d7 86     mov   ($86)+y,a
166d: e8 02     mov   a,#$02
166f: 5f 6f 0a  jmp   $0a6f

; vcmd 91,fd
1672: f3 a0 1e  bbc7  $a0,$1693
1675: e4 84     mov   a,$84
1677: 68 0e     cmp   a,#$0e
1679: f0 0a     beq   $1685
167b: d2 a1     clr6  $a1
167d: b2 80     clr5  $80
167f: 8f ff b0  mov   $b0,#$ff
1682: 5f 8c 16  jmp   $168c

1685: f2 a1     clr7  $a1
1687: d2 80     clr6  $80
1689: 8f ff b1  mov   $b1,#$ff
168c: e8 00     mov   a,#$00
168e: 8d 00     mov   y,#$00
1690: d7 86     mov   ($86)+y,a
1692: 6f        ret

1693: 8d 05     mov   y,#$05
1695: f7 86     mov   a,($86)+y
1697: bc        inc   a
1698: d7 86     mov   ($86)+y,a
169a: 78 00 84  cmp   $84,#$00
169d: d0 03     bne   $16a2
169f: 8f 01 9e  mov   $9e,#$01
16a2: 5f b2 0b  jmp   $0bb2

; vcmd 92
16a5: e4 84     mov   a,$84
16a7: 1c        asl   a
16a8: 1c        asl   a
16a9: c4 e4     mov   $e4,a
16ab: 8f 00 e2  mov   $e2,#$00
16ae: 8f 08 e3  mov   $e3,#$08
16b1: 8d 0a     mov   y,#$0a
16b3: f7 86     mov   a,($86)+y
16b5: 68 ff     cmp   a,#$ff
16b7: d0 2c     bne   $16e5
16b9: 8d 05     mov   y,#$05
16bb: f7 86     mov   a,($86)+y
16bd: 8d 0a     mov   y,#$0a
16bf: d7 86     mov   ($86)+y,a
16c1: e8 ff     mov   a,#$ff
16c3: 8d 0c     mov   y,#$0c
16c5: d7 86     mov   ($86)+y,a
16c7: 8d 03     mov   y,#$03
16c9: f7 86     mov   a,($86)+y
16cb: eb e4     mov   y,$e4
16cd: d7 e2     mov   ($e2)+y,a
16cf: 8d 04     mov   y,#$04
16d1: f7 86     mov   a,($86)+y
16d3: eb e4     mov   y,$e4
16d5: fc        inc   y
16d6: d7 e2     mov   ($e2)+y,a
16d8: 78 00 84  cmp   $84,#$00
16db: d0 03     bne   $16e0
16dd: fa 9e c7  mov   ($c7),($9e)
16e0: e8 01     mov   a,#$01
16e2: 5f 6f 0a  jmp   $0a6f

16e5: 8d 05     mov   y,#$05
16e7: f7 86     mov   a,($86)+y
16e9: 8d 0b     mov   y,#$0b
16eb: d7 86     mov   ($86)+y,a
16ed: e8 ff     mov   a,#$ff
16ef: 8d 0d     mov   y,#$0d
16f1: d7 86     mov   ($86)+y,a
16f3: 8d 03     mov   y,#$03
16f5: f7 86     mov   a,($86)+y
16f7: eb e4     mov   y,$e4
16f9: fc        inc   y
16fa: fc        inc   y
16fb: d7 e2     mov   ($e2)+y,a
16fd: 8d 04     mov   y,#$04
16ff: f7 86     mov   a,($86)+y
1701: eb e4     mov   y,$e4
1703: fc        inc   y
1704: fc        inc   y
1705: fc        inc   y
1706: d7 e2     mov   ($e2)+y,a
1708: 78 00 84  cmp   $84,#$00
170b: d0 03     bne   $1710
170d: fa 9e c8  mov   ($c8),($9e)
1710: e8 01     mov   a,#$01
1712: 5f 6f 0a  jmp   $0a6f

; vcmd 93
1715: e4 84     mov   a,$84
1717: 1c        asl   a
1718: 1c        asl   a
1719: c4 e4     mov   $e4,a
171b: 8f 00 e2  mov   $e2,#$00
171e: 8f 08 e3  mov   $e3,#$08
1721: 8d 0b     mov   y,#$0b
1723: f7 86     mov   a,($86)+y
1725: 68 ff     cmp   a,#$ff
1727: d0 54     bne   $177d
1729: 8d 0a     mov   y,#$0a
172b: f7 86     mov   a,($86)+y
172d: 68 ff     cmp   a,#$ff
172f: f0 3d     beq   $176e
1731: 8d 0c     mov   y,#$0c
1733: f7 86     mov   a,($86)+y
1735: f0 0f     beq   $1746
1737: 68 ff     cmp   a,#$ff
1739: d0 04     bne   $173f
173b: 8d 01     mov   y,#$01
173d: f7 a2     mov   a,($a2)+y
173f: 9c        dec   a
1740: f0 2c     beq   $176e
1742: 8d 0c     mov   y,#$0c
1744: d7 86     mov   ($86)+y,a
1746: 8d 0a     mov   y,#$0a
1748: f7 86     mov   a,($86)+y
174a: 8d 05     mov   y,#$05
174c: d7 86     mov   ($86)+y,a
174e: eb e4     mov   y,$e4
1750: f7 e2     mov   a,($e2)+y
1752: 8d 03     mov   y,#$03
1754: d7 86     mov   ($86)+y,a
1756: eb e4     mov   y,$e4
1758: fc        inc   y
1759: f7 e2     mov   a,($e2)+y
175b: 8d 04     mov   y,#$04
175d: d7 86     mov   ($86)+y,a
175f: 78 00 84  cmp   $84,#$00
1762: d0 05     bne   $1769
1764: ab 9d     inc   $9d
1766: fa c7 9e  mov   ($9e),($c7)
1769: e8 01     mov   a,#$01
176b: 5f 6f 0a  jmp   $0a6f

176e: e8 ff     mov   a,#$ff
1770: 8d 0a     mov   y,#$0a
1772: d7 86     mov   ($86)+y,a
1774: 8d 0c     mov   y,#$0c
1776: d7 86     mov   ($86)+y,a
1778: e8 02     mov   a,#$02
177a: 5f 6f 0a  jmp   $0a6f

177d: 8d 0d     mov   y,#$0d
177f: f7 86     mov   a,($86)+y
1781: f0 0f     beq   $1792
1783: 68 ff     cmp   a,#$ff
1785: d0 04     bne   $178b
1787: 8d 01     mov   y,#$01
1789: f7 a2     mov   a,($a2)+y
178b: 9c        dec   a
178c: f0 2e     beq   $17bc
178e: 8d 0d     mov   y,#$0d
1790: d7 86     mov   ($86)+y,a
1792: 8d 0b     mov   y,#$0b
1794: f7 86     mov   a,($86)+y
1796: 8d 05     mov   y,#$05
1798: d7 86     mov   ($86)+y,a
179a: eb e4     mov   y,$e4
179c: fc        inc   y
179d: fc        inc   y
179e: f7 e2     mov   a,($e2)+y
17a0: 8d 03     mov   y,#$03
17a2: d7 86     mov   ($86)+y,a
17a4: eb e4     mov   y,$e4
17a6: fc        inc   y
17a7: fc        inc   y
17a8: fc        inc   y
17a9: f7 e2     mov   a,($e2)+y
17ab: 8d 04     mov   y,#$04
17ad: d7 86     mov   ($86)+y,a
17af: 78 00 84  cmp   $84,#$00
17b2: d0 03     bne   $17b7
17b4: fa c8 9e  mov   ($9e),($c8)
17b7: e8 01     mov   a,#$01
17b9: 5f 6f 0a  jmp   $0a6f

17bc: e8 ff     mov   a,#$ff
17be: 8d 0b     mov   y,#$0b
17c0: d7 86     mov   ($86)+y,a
17c2: 8d 0d     mov   y,#$0d
17c4: d7 86     mov   ($86)+y,a
17c6: e8 02     mov   a,#$02
17c8: 5f 6f 0a  jmp   $0a6f

; vcmd 94
17cb: 8d 01     mov   y,#$01
17cd: f7 a2     mov   a,($a2)+y
17cf: 8d 06     mov   y,#$06
17d1: d7 86     mov   ($86)+y,a
17d3: 8d 02     mov   y,#$02
17d5: f7 a2     mov   a,($a2)+y
17d7: 80        setc
17d8: a8 40     sbc   a,#$40
17da: 8d 14     mov   y,#$14
17dc: d7 86     mov   ($86)+y,a
17de: 8d 1f     mov   y,#$1f
17e0: f7 86     mov   a,($86)+y
17e2: 08 80     or    a,#$80
17e4: d7 86     mov   ($86)+y,a
17e6: e8 03     mov   a,#$03
17e8: 5f 6f 0a  jmp   $0a6f

; vcmd 95
17eb: 8d 01     mov   y,#$01
17ed: f7 a2     mov   a,($a2)+y
17ef: 8d 06     mov   y,#$06
17f1: d7 86     mov   ($86)+y,a
17f3: 8d 02     mov   y,#$02
17f5: f7 a2     mov   a,($a2)+y
17f7: c4 91     mov   $91,a
17f9: 3f 7c 0b  call  $0b7c
17fc: e8 03     mov   a,#$03
17fe: 5f 6f 0a  jmp   $0a6f

; vcmd 96
1801: 8d 01     mov   y,#$01
1803: f7 a2     mov   a,($a2)+y
1805: 8d 07     mov   y,#$07
1807: d7 86     mov   ($86)+y,a
1809: 68 40     cmp   a,#$40
180b: 90 0a     bcc   $1817
180d: 68 48     cmp   a,#$48
180f: 0d        push  psw
1810: 28 01     and   a,#$01
1812: 8e        pop   psw
1813: b0 02     bcs   $1817
1815: bc        inc   a
1816: bc        inc   a
1817: 8f 04 e1  mov   $e1,#$04
181a: 1c        asl   a
181b: 1c        asl   a
181c: c4 e0     mov   $e0,a
181e: 8d 00     mov   y,#$00
1820: f7 e0     mov   a,($e0)+y
1822: 8d 0f     mov   y,#$0f
1824: d7 86     mov   ($86)+y,a
1826: 8d 01     mov   y,#$01
1828: f7 e0     mov   a,($e0)+y
182a: 8d 08     mov   y,#$08
182c: d7 86     mov   ($86)+y,a
182e: 8d 02     mov   y,#$02
1830: f7 e0     mov   a,($e0)+y
1832: 8d 09     mov   y,#$09
1834: d7 86     mov   ($86)+y,a
1836: 8d 03     mov   y,#$03
1838: f7 e0     mov   a,($e0)+y
183a: 80        setc
183b: a8 40     sbc   a,#$40
183d: 8d 12     mov   y,#$12
183f: d7 86     mov   ($86)+y,a
1841: 8d 1f     mov   y,#$1f
1843: f7 86     mov   a,($86)+y
1845: 08 e0     or    a,#$e0
1847: d7 86     mov   ($86)+y,a
1849: e8 02     mov   a,#$02
184b: 5f 6f 0a  jmp   $0a6f

; vcmd 97
184e: 8f 16 e2  mov   $e2,#$16
1851: 5f 57 18  jmp   $1857

; vcmd 98
1854: 8f 17 e2  mov   $e2,#$17
1857: 8d 01     mov   y,#$01
1859: f7 a2     mov   a,($a2)+y
185b: 8d 06     mov   y,#$06
185d: d7 86     mov   ($86)+y,a
185f: 8d 02     mov   y,#$02
1861: f7 a2     mov   a,($a2)+y
1863: eb e2     mov   y,$e2
1865: d7 86     mov   ($86)+y,a
1867: 8d 1f     mov   y,#$1f
1869: f7 86     mov   a,($86)+y
186b: 08 40     or    a,#$40
186d: d7 86     mov   ($86)+y,a
186f: e8 03     mov   a,#$03
1871: 5f 6f 0a  jmp   $0a6f

; vcmd 99
1874: 8f 1a e2  mov   $e2,#$1a
1877: 5f 57 18  jmp   $1857

; vcmd 9a
187a: e8 03     mov   a,#$03
187c: 5f 6f 0a  jmp   $0a6f

; vcmd 9b
187f: 8f 01 e2  mov   $e2,#$01
1882: 8d 01     mov   y,#$01
1884: f7 a2     mov   a,($a2)+y
1886: f0 09     beq   $1891
1888: 8d 00     mov   y,#$00
188a: f7 86     mov   a,($86)+y
188c: 04 e2     or    a,$e2
188e: 5f 9a 18  jmp   $189a

1891: 58 ff e2  eor   $e2,#$ff
1894: 8d 00     mov   y,#$00
1896: f7 86     mov   a,($86)+y
1898: 24 e2     and   a,$e2
189a: d7 86     mov   ($86)+y,a
189c: e8 02     mov   a,#$02
189e: 5f 6f 0a  jmp   $0a6f

; vcmd 9c
18a1: 8d 01     mov   y,#$01
18a3: f7 a2     mov   a,($a2)+y
18a5: 8d 1c     mov   y,#$1c
18a7: d7 86     mov   ($86)+y,a
18a9: 8d 02     mov   y,#$02
18ab: f7 a2     mov   a,($a2)+y
18ad: 8d 1d     mov   y,#$1d
18af: d7 86     mov   ($86)+y,a
18b1: 8d 03     mov   y,#$03
18b3: f7 a2     mov   a,($a2)+y
18b5: 8d 1e     mov   y,#$1e
18b7: d7 86     mov   ($86)+y,a
18b9: e8 04     mov   a,#$04
18bb: 5f 6f 0a  jmp   $0a6f

; vcmd a2
18be: 8d 01     mov   y,#$01
18c0: f7 a2     mov   a,($a2)+y
18c2: 80        setc
18c3: a8 40     sbc   a,#$40
18c5: 8d 13     mov   y,#$13
18c7: d7 86     mov   ($86)+y,a
18c9: 8d 1f     mov   y,#$1f
18cb: f7 86     mov   a,($86)+y
18cd: 08 80     or    a,#$80
18cf: d7 86     mov   ($86)+y,a
18d1: e8 02     mov   a,#$02
18d3: 5f 6f 0a  jmp   $0a6f

; vcmd a3
18d6: 8f 02 e2  mov   $e2,#$02
18d9: 5f 82 18  jmp   $1882

; vcmd aa
18dc: 8d 01     mov   y,#$01
18de: f7 a2     mov   a,($a2)+y
18e0: 1c        asl   a
18e1: 80        setc
18e2: a8 80     sbc   a,#$80
18e4: c4 92     mov   $92,a
18e6: 8f 0d f2  mov   $f2,#$0d
18e9: c4 f3     mov   $f3,a             ; set EFB
18eb: 8d 02     mov   y,#$02
18ed: f7 a2     mov   a,($a2)+y
18ef: c4 93     mov   $93,a
18f1: 3f 9a 13  call  $139a
18f4: e8 03     mov   a,#$03
18f6: 5f 6f 0a  jmp   $0a6f

; vcmd ad
18f9: 8d 00     mov   y,#$00
18fb: f7 86     mov   a,($86)+y
18fd: 28 9f     and   a,#$9f
18ff: c4 e0     mov   $e0,a
1901: 8d 01     mov   y,#$01
1903: f7 a2     mov   a,($a2)+y
1905: f0 0e     beq   $1915
1907: 68 01     cmp   a,#$01
1909: f0 07     beq   $1912
190b: 18 40 e0  or    $e0,#$40
190e: 68 02     cmp   a,#$02
1910: f0 03     beq   $1915
1912: 18 20 e0  or    $e0,#$20
1915: e4 e0     mov   a,$e0
1917: 8d 00     mov   y,#$00
1919: d7 86     mov   ($86)+y,a
191b: e8 02     mov   a,#$02
191d: 5f 6f 0a  jmp   $0a6f

; vcmd ae
1920: 8f 04 e2  mov   $e2,#$04
1923: 5f 82 18  jmp   $1882

; vcmd af
1926: 8d 01     mov   y,#$01
1928: f7 a2     mov   a,($a2)+y
192a: 08 80     or    a,#$80
192c: 8d 08     mov   y,#$08
192e: d7 86     mov   ($86)+y,a
1930: 8d 02     mov   y,#$02
1932: f7 a2     mov   a,($a2)+y
1934: 8d 09     mov   y,#$09
1936: d7 86     mov   ($86)+y,a
1938: 8d 1f     mov   y,#$1f
193a: f7 86     mov   a,($86)+y
193c: 08 20     or    a,#$20
193e: d7 86     mov   ($86)+y,a
1940: e8 03     mov   a,#$03
1942: 5f 6f 0a  jmp   $0a6f

; vcmd a0
1945: 8d 01     mov   y,#$01
1947: f7 a2     mov   a,($a2)+y
1949: c4 9f     mov   $9f,a
194b: 3f 68 13  call  $1368
194e: e8 02     mov   a,#$02
1950: 5f 6f 0a  jmp   $0a6f

; vcmd b2
1953: 8f 08 e2  mov   $e2,#$08
1956: 5f 82 18  jmp   $1882

; vcmd dispatch table
1959: dw $1665  ; 90
195b: dw $1672  ; 91
195d: dw $16a5  ; 92
195f: dw $1715  ; 93
1961: dw $17cb  ; 94
1963: dw $17eb  ; 95
1965: dw $1801  ; 96
1967: dw $184e  ; 97
1969: dw $1854  ; 98
196b: dw $1874  ; 99
196d: dw $187a  ; 9a
196f: dw $187f  ; 9b
1971: dw $18a1  ; 9c
1973: dw $0000  ; 9d
1975: dw $0000  ; 9e
1977: dw $0000  ; 9f
1979: dw $0000  ; a0
197b: dw $0000  ; a1
197d: dw $18be  ; a2
197f: dw $18d6  ; a3
1981: dw $0000  ; a4
1983: dw $0000  ; a5
1985: dw $0000  ; a6
1987: dw $0000  ; a7
1989: dw $0000  ; a8
198b: dw $0000  ; a9
198d: dw $18dc  ; aa
198f: dw $0000  ; ab
1991: dw $0000  ; ac
1993: dw $18f9  ; ad
1995: dw $1920  ; ae
1997: dw $1926  ; af
1999: dw $1945  ; a0
199b: dw $0000  ; b1
199d: dw $1953  ; b2

199f: e4 f4     mov   a,$f4
19a1: 64 f4     cmp   a,$f4
19a3: d0 fa     bne   $199f
19a5: 44 83     eor   a,$83
19a7: 30 01     bmi   $19aa
19a9: 6f        ret

19aa: 58 80 83  eor   $83,#$80
19ad: 1c        asl   a
19ae: d0 1f     bne   $19cf
19b0: 58 80 80  eor   $80,#$80
19b3: fa 80 f4  mov   ($f4),($80)
19b6: e4 f5     mov   a,$f5
19b8: f8 f6     mov   x,$f6
19ba: fa f7 e8  mov   ($e8),($f7)
19bd: 8d 00     mov   y,#$00
19bf: d7 ac     mov   ($ac)+y,a
19c1: 3a ac     incw  $ac
19c3: 7d        mov   a,x
19c4: d7 ac     mov   ($ac)+y,a
19c6: 3a ac     incw  $ac
19c8: e4 e8     mov   a,$e8
19ca: d7 ac     mov   ($ac)+y,a
19cc: 3a ac     incw  $ac
19ce: 6f        ret

19cf: 68 02     cmp   a,#$02
19d1: d0 22     bne   $19f5
19d3: 58 80 80  eor   $80,#$80
19d6: fa 80 f4  mov   ($f4),($80)
19d9: e4 f5     mov   a,$f5
19db: f8 f6     mov   x,$f6
19dd: fa f7 e8  mov   ($e8),($f7)
19e0: 8d 00     mov   y,#$00
19e2: d7 a9     mov   ($a9)+y,a
19e4: fc        inc   y
19e5: 7d        mov   a,x
19e6: d7 a9     mov   ($a9)+y,a
19e8: fc        inc   y
19e9: e4 e8     mov   a,$e8
19eb: d7 a9     mov   ($a9)+y,a
19ed: 60        clrc
19ee: 98 03 a9  adc   $a9,#$03
19f1: 98 00 aa  adc   $aa,#$00
19f4: 6f        ret

19f5: 5d        mov   x,a
19f6: 1f b7 20  jmp   ($20b7+x)

19f9: fa f5 ab  mov   ($ab),($f5)
19fc: e4 f6     mov   a,$f6
19fe: eb f7     mov   y,$f7
1a00: 58 80 80  eor   $80,#$80
1a03: fa 80 f4  mov   ($f4),($80)
1a06: da ac     movw  $ac,ya
1a08: da ae     movw  $ae,ya
1a0a: 8f ff e9  mov   $e9,#$ff
1a0d: 8f 04 eb  mov   $eb,#$04
1a10: e4 ab     mov   a,$ab
1a12: 68 40     cmp   a,#$40
1a14: 90 0a     bcc   $1a20
1a16: 68 48     cmp   a,#$48
1a18: 0d        push  psw
1a19: 28 01     and   a,#$01
1a1b: 8e        pop   psw
1a1c: b0 02     bcs   $1a20
1a1e: bc        inc   a
1a1f: bc        inc   a
1a20: fd        mov   y,a
1a21: 1c        asl   a
1a22: 1c        asl   a
1a23: c4 e8     mov   $e8,a
1a25: c4 ea     mov   $ea,a
1a27: e8 10     mov   a,#$10
1a29: d6 40 01  mov   $0140+y,a
1a2c: 8d 00     mov   y,#$00
1a2e: dd        mov   a,y
1a2f: d7 ea     mov   ($ea)+y,a
1a31: fc        inc   y
1a32: 9c        dec   a
1a33: d7 ea     mov   ($ea)+y,a
1a35: fc        inc   y
1a36: e8 e0     mov   a,#$e0
1a38: d7 ea     mov   ($ea)+y,a
1a3a: fc        inc   y
1a3b: e8 3a     mov   a,#$3a
1a3d: d7 ea     mov   ($ea)+y,a
1a3f: 8d 00     mov   y,#$00
1a41: e4 ae     mov   a,$ae
1a43: d7 e8     mov   ($e8)+y,a
1a45: fc        inc   y
1a46: fc        inc   y
1a47: d7 e8     mov   ($e8)+y,a
1a49: dc        dec   y
1a4a: 60        clrc
1a4b: 88 84     adc   a,#$84
1a4d: c4 ca     mov   $ca,a
1a4f: e4 af     mov   a,$af
1a51: d7 e8     mov   ($e8)+y,a
1a53: fc        inc   y
1a54: fc        inc   y
1a55: d7 e8     mov   ($e8)+y,a
1a57: 88 03     adc   a,#$03
1a59: c4 cb     mov   $cb,a
1a5b: 6f        ret

1a5c: e4 f5     mov   a,$f5
1a5e: 58 80 80  eor   $80,#$80
1a61: fa 80 f4  mov   ($f4),($80)
1a64: 60        clrc
1a65: 88 40     adc   a,#$40
1a67: c4 a8     mov   $a8,a
1a69: c4 aa     mov   $aa,a
1a6b: 8f 00 a9  mov   $a9,#$00
1a6e: 6f        ret

1a6f: 58 80 80  eor   $80,#$80
1a72: fa 80 f4  mov   ($f4),($80)
1a75: 8f ff e9  mov   $e9,#$ff
1a78: 8f 04 eb  mov   $eb,#$04
1a7b: e4 ab     mov   a,$ab
1a7d: 68 40     cmp   a,#$40
1a7f: 90 0a     bcc   $1a8b
1a81: 68 48     cmp   a,#$48
1a83: 0d        push  psw
1a84: 28 01     and   a,#$01
1a86: 8e        pop   psw
1a87: b0 02     bcs   $1a8b
1a89: bc        inc   a
1a8a: bc        inc   a
1a8b: c4 ec     mov   $ec,a
1a8d: 1c        asl   a
1a8e: 1c        asl   a
1a8f: c4 e8     mov   $e8,a
1a91: c4 ea     mov   $ea,a
1a93: 8d 00     mov   y,#$00
1a95: f7 ae     mov   a,($ae)+y
1a97: d7 ea     mov   ($ea)+y,a
1a99: fc        inc   y
1a9a: f7 ae     mov   a,($ae)+y
1a9c: d7 ea     mov   ($ea)+y,a
1a9e: fc        inc   y
1a9f: f7 ae     mov   a,($ae)+y
1aa1: d7 ea     mov   ($ea)+y,a
1aa3: fc        inc   y
1aa4: f7 ae     mov   a,($ae)+y
1aa6: d7 ea     mov   ($ea)+y,a
1aa8: fc        inc   y
1aa9: f7 ae     mov   a,($ae)+y
1aab: eb ec     mov   y,$ec
1aad: d6 40 01  mov   $0140+y,a
1ab0: e4 ae     mov   a,$ae
1ab2: 60        clrc
1ab3: 88 07     adc   a,#$07
1ab5: 8d 00     mov   y,#$00
1ab7: d7 e8     mov   ($e8)+y,a
1ab9: 0d        push  psw
1aba: 8d 05     mov   y,#$05
1abc: 60        clrc
1abd: 97 ae     adc   a,($ae)+y
1abf: 8d 02     mov   y,#$02
1ac1: d7 e8     mov   ($e8)+y,a
1ac3: 8d 06     mov   y,#$06
1ac5: f7 ae     mov   a,($ae)+y
1ac7: 88 00     adc   a,#$00
1ac9: 8e        pop   psw
1aca: 0d        push  psw
1acb: 84 af     adc   a,$af
1acd: 8d 03     mov   y,#$03
1acf: d7 e8     mov   ($e8)+y,a
1ad1: e4 af     mov   a,$af
1ad3: 8e        pop   psw
1ad4: 88 00     adc   a,#$00
1ad6: 8d 01     mov   y,#$01
1ad8: d7 e8     mov   ($e8)+y,a
1ada: 6f        ret

1adb: 58 80 80  eor   $80,#$80
1ade: fa 80 f4  mov   ($f4),($80)
1ae1: 6f        ret

1ae2: e4 f5     mov   a,$f5
1ae4: 58 80 80  eor   $80,#$80
1ae7: fa 80 f4  mov   ($f4),($80)
1aea: c4 99     mov   $99,a
1aec: f2 a0     clr7  $a0
1aee: 3f 08 0c  call  $0c08
1af1: 3f 15 21  call  $2115
1af4: 3f 7f 0a  call  $0a7f
1af7: 3f 15 21  call  $2115
1afa: 02 80     set0  $80
1afc: 6f        ret

1afd: 58 80 80  eor   $80,#$80
1b00: fa 80 f4  mov   ($f4),($80)
1b03: f2 a0     clr7  $a0
1b05: 5f 08 0c  jmp   $0c08

1b08: 13 80 24  bbc0  $80,$1b2f
1b0b: a3 81 21  bbs5  $81,$1b2f
1b0e: a2 81     set5  $81
1b10: 38 3f 81  and   $81,#$3f
1b13: e4 f5     mov   a,$f5
1b15: 7c        ror   a
1b16: 7c        ror   a
1b17: 7c        ror   a
1b18: 0d        push  psw
1b19: 28 c0     and   a,#$c0
1b1b: 04 81     or    a,$81
1b1d: c4 81     mov   $81,a
1b1f: 8f ff 9a  mov   $9a,#$ff
1b22: fa f6 9b  mov   ($9b),($f6)
1b25: 8f 00 9c  mov   $9c,#$00
1b28: 8e        pop   psw
1b29: 90 04     bcc   $1b2f
1b2b: 22 81     set1  $81
1b2d: b2 81     clr5  $81
1b2f: 58 80 80  eor   $80,#$80
1b32: fa 80 f4  mov   ($f4),($80)
1b35: 6f        ret

1b36: e4 f5     mov   a,$f5
1b38: c4 99     mov   $99,a
1b3a: 3f 7f 0a  call  $0a7f
1b3d: 02 80     set0  $80
1b3f: 82 81     set4  $81
1b41: 38 3f 81  and   $81,#$3f
1b44: e4 f6     mov   a,$f6
1b46: 7c        ror   a
1b47: 7c        ror   a
1b48: 7c        ror   a
1b49: 28 c0     and   a,#$c0
1b4b: 04 81     or    a,$81
1b4d: c4 81     mov   $81,a
1b4f: 8f 00 9a  mov   $9a,#$00
1b52: fa f7 9b  mov   ($9b),($f7)
1b55: 8f 00 9c  mov   $9c,#$00
1b58: 58 80 80  eor   $80,#$80
1b5b: fa 80 f4  mov   ($f4),($80)
1b5e: 6f        ret

1b5f: e4 f5     mov   a,$f5
1b61: fa f6 9b  mov   ($9b),($f6)
1b64: 58 80 80  eor   $80,#$80
1b67: fa 80 f4  mov   ($f4),($80)
1b6a: 02 80     set0  $80
1b6c: 82 81     set4  $81
1b6e: 38 3f 81  and   $81,#$3f
1b71: 7c        ror   a
1b72: 7c        ror   a
1b73: 7c        ror   a
1b74: 28 c0     and   a,#$c0
1b76: 04 81     or    a,$81
1b78: c4 81     mov   $81,a
1b7a: 8f 00 9a  mov   $9a,#$00
1b7d: 8f 00 9c  mov   $9c,#$00
1b80: 42 a0     set2  $a0
1b82: 5f 60 22  jmp   $2260

1b85: 58 80 80  eor   $80,#$80
1b88: fa 80 f4  mov   ($f4),($80)
1b8b: e4 f5     mov   a,$f5
1b8d: f0 10     beq   $1b9f
1b8f: 68 01     cmp   a,#$01
1b91: f0 07     beq   $1b9a
1b93: 32 80     clr1  $80
1b95: 72 80     clr3  $80
1b97: 5f a3 1b  jmp   $1ba3

1b9a: 22 80     set1  $80
1b9c: 5f a3 1b  jmp   $1ba3

1b9f: 32 80     clr1  $80
1ba1: 62 80     set3  $80
1ba3: 3f 68 13  call  $1368
1ba6: 8d 1f     mov   y,#$1f
1ba8: 8f 0f ea  mov   $ea,#$0f
1bab: 8f 00 e8  mov   $e8,#$00
1bae: 8f 02 e9  mov   $e9,#$02
1bb1: f7 e8     mov   a,($e8)+y
1bb3: 08 40     or    a,#$40
1bb5: d7 e8     mov   ($e8)+y,a
1bb7: 60        clrc
1bb8: 98 20 e8  adc   $e8,#$20
1bbb: 98 00 e9  adc   $e9,#$00
1bbe: 6e ea f0  dbnz  $ea,$1bb1
1bc1: 6f        ret

1bc2: fa f5 e8  mov   ($e8),($f5)
1bc5: fa f7 e9  mov   ($e9),($f7)
1bc8: fa f6 ea  mov   ($ea),($f6)
1bcb: 78 0f ea  cmp   $ea,#$0f
1bce: d0 1f     bne   $1bef
1bd0: 8f e0 ec  mov   $ec,#$e0
1bd3: 8f 03 ed  mov   $ed,#$03
1bd6: e4 e9     mov   a,$e9
1bd8: 8d 1b     mov   y,#$1b
1bda: d7 ec     mov   ($ec)+y,a
1bdc: 02 a1     set0  $a1
1bde: fa e8 b0  mov   ($b0),($e8)
1be1: 78 ff e8  cmp   $e8,#$ff
1be4: f0 02     beq   $1be8
1be6: a2 80     set5  $80
1be8: 58 80 80  eor   $80,#$80
1beb: fa 80 f4  mov   ($f4),($80)
1bee: 6f        ret

1bef: 8f c0 ec  mov   $ec,#$c0
1bf2: 8f 03 ed  mov   $ed,#$03
1bf5: e4 e9     mov   a,$e9
1bf7: 8d 1b     mov   y,#$1b
1bf9: d7 ec     mov   ($ec)+y,a
1bfb: 22 a1     set1  $a1
1bfd: fa e8 b1  mov   ($b1),($e8)
1c00: 78 ff e8  cmp   $e8,#$ff
1c03: f0 02     beq   $1c07
1c05: c2 80     set6  $80
1c07: 58 80 80  eor   $80,#$80
1c0a: fa 80 f4  mov   ($f4),($80)
1c0d: 6f        ret

1c0e: fa f5 b4  mov   ($b4),($f5)
1c11: fa f6 b8  mov   ($b8),($f6)
1c14: fa f7 bc  mov   ($bc),($f7)
1c17: 58 80 80  eor   $80,#$80
1c1a: fa 80 f4  mov   ($f4),($80)
1c1d: 6f        ret

1c1e: fa f5 b5  mov   ($b5),($f5)
1c21: fa f6 b9  mov   ($b9),($f6)
1c24: fa f7 bd  mov   ($bd),($f7)
1c27: 58 80 80  eor   $80,#$80
1c2a: fa 80 f4  mov   ($f4),($80)
1c2d: 6f        ret

1c2e: e4 f5     mov   a,$f5
1c30: 24 cc     and   a,$cc
1c32: c4 b6     mov   $b6,a
1c34: e4 f6     mov   a,$f6
1c36: 24 cd     and   a,$cd
1c38: c4 ba     mov   $ba,a
1c3a: fa f7 be  mov   ($be),($f7)
1c3d: 58 80 80  eor   $80,#$80
1c40: fa 80 f4  mov   ($f4),($80)
1c43: 6f        ret

1c44: fa f5 b7  mov   ($b7),($f5)
1c47: fa f6 bb  mov   ($bb),($f6)
1c4a: e4 f7     mov   a,$f7
1c4c: 58 80 80  eor   $80,#$80
1c4f: fa 80 f4  mov   ($f4),($80)
1c52: 80        setc
1c53: a8 40     sbc   a,#$40
1c55: c4 bf     mov   $bf,a
1c57: 6f        ret

1c58: fa f5 90  mov   ($90),($f5)
1c5b: 58 80 80  eor   $80,#$80
1c5e: fa 80 f4  mov   ($f4),($80)
1c61: 5f 7c 0b  jmp   $0b7c

1c64: 58 80 80  eor   $80,#$80
1c67: fa 80 f4  mov   ($f4),($80)
1c6a: 8f 0e 84  mov   $84,#$0e
1c6d: 3f ec 09  call  $09ec
1c70: fa 98 e8  mov   ($e8),($98)
1c73: 8f 0f 84  mov   $84,#$0f
1c76: 3f ec 09  call  $09ec
1c79: e4 e8     mov   a,$e8
1c7b: 04 98     or    a,$98
1c7d: 48 ff     eor   a,#$ff
1c7f: 8f 5c f2  mov   $f2,#$5c
1c82: c4 f3     mov   $f3,a             ; set KOF
1c84: aa 80 00  mov1  c,$0080,0
1c87: ca 81 60  mov1  $0081,3,c
1c8a: 12 80     clr0  $80
1c8c: 6f        ret

1c8d: 58 80 80  eor   $80,#$80
1c90: fa 80 f4  mov   ($f4),($80)
1c93: 73 81 07  bbc3  $81,$1c9d
1c96: 02 80     set0  $80
1c98: 42 a0     set2  $a0
1c9a: 5f 60 22  jmp   $2260

1c9d: 6f        ret

1c9e: f8 f5     mov   x,$f5
1ca0: 58 80 80  eor   $80,#$80
1ca3: fa 80 f4  mov   ($f4),($80)
1ca6: 8d 00     mov   y,#$00
1ca8: e8 ff     mov   a,#$ff
1caa: 9e        div   ya,x
1cab: f2 a0     clr7  $a0
1cad: 5f d7 13  jmp   $13d7

1cb0: 58 80 80  eor   $80,#$80
1cb3: fa 80 f4  mov   ($f4),($80)
1cb6: e8 ff     mov   a,#$ff
1cb8: f2 a0     clr7  $a0
1cba: 5f d7 13  jmp   $13d7

1cbd: 58 80 80  eor   $80,#$80
1cc0: fa 80 f4  mov   ($f4),($80)
1cc3: e4 f5     mov   a,$f5
1cc5: d0 03     bne   $1cca
1cc7: 52 80     clr2  $80
1cc9: 6f        ret

1cca: 42 80     set2  $80
1ccc: 6f        ret

1ccd: 58 80 80  eor   $80,#$80
1cd0: fa 80 f4  mov   ($f4),($80)
1cd3: 5f 60 21  jmp   $2160

1cd6: 58 80 80  eor   $80,#$80
1cd9: fa 80 f4  mov   ($f4),($80)
1cdc: f2 a0     clr7  $a0
1cde: 3f 08 0c  call  $0c08
1ce1: 5f d4 21  jmp   $21d4

1ce4: e4 f6     mov   a,$f6
1ce6: 30 02     bmi   $1cea
1ce8: c4 93     mov   $93,a
1cea: e4 f7     mov   a,$f7
1cec: 30 02     bmi   $1cf0
1cee: c4 9f     mov   $9f,a
1cf0: e4 f5     mov   a,$f5
1cf2: 58 80 80  eor   $80,#$80
1cf5: fa 80 f4  mov   ($f4),($80)
1cf8: 68 ff     cmp   a,#$ff
1cfa: f0 07     beq   $1d03
1cfc: c4 92     mov   $92,a
1cfe: 8f 0d f2  mov   $f2,#$0d
1d01: c4 f3     mov   $f3,a             ; set EFB
1d03: 3f 9a 13  call  $139a
1d06: 5f 68 13  jmp   $1368

1d09: e4 f5     mov   a,$f5
1d0b: 68 ff     cmp   a,#$ff
1d0d: f0 02     beq   $1d11
1d0f: c4 95     mov   $95,a
1d11: e4 f6     mov   a,$f6
1d13: 68 ff     cmp   a,#$ff
1d15: f0 02     beq   $1d19
1d17: c4 96     mov   $96,a
1d19: e4 f7     mov   a,$f7
1d1b: 68 ff     cmp   a,#$ff
1d1d: f0 02     beq   $1d21
1d1f: c4 97     mov   $97,a
1d21: 3f 0d 23  call  $230d
1d24: 58 80 80  eor   $80,#$80
1d27: fa 80 f4  mov   ($f4),($80)
1d2a: 6f        ret

1d2b: 8f 5c f2  mov   $f2,#$5c
1d2e: 8f ff f3  mov   $f3,#$ff          ; set KOF
1d31: 38 f8 f1  and   $f1,#$f8
1d34: 18 80 f1  or    $f1,#$80
1d37: 5f c0 ff  jmp   $ffc0

1d3a: e4 f5     mov   a,$f5
1d3c: f8 f6     mov   x,$f6
1d3e: 58 80 80  eor   $80,#$80
1d41: fa 80 f4  mov   ($f4),($80)
1d44: 9f        xcn   a
1d45: 08 0f     or    a,#$0f
1d47: 28 7f     and   a,#$7f
1d49: c4 f2     mov   $f2,a
1d4b: d8 f3     mov   $f3,x             ; set C0-C7
1d4d: 6f        ret

1d4e: fa f5 e8  mov   ($e8),($f5)
1d51: fa f6 ea  mov   ($ea),($f6)
1d54: 58 80 80  eor   $80,#$80
1d57: fa 80 f4  mov   ($f4),($80)
1d5a: e4 ea     mov   a,$ea
1d5c: f8 e8     mov   x,$e8
1d5e: d5 c0 01  mov   $01c0+x,a
1d61: 7d        mov   a,x
1d62: 80        setc
1d63: a8 04     sbc   a,#$04
1d65: 30 04     bmi   $1d6b
1d67: fd        mov   y,a
1d68: 3f b7 22  call  $22b7
1d6b: 7d        mov   a,x
1d6c: 60        clrc
1d6d: 88 04     adc   a,#$04
1d6f: 68 21     cmp   a,#$21
1d71: b0 04     bcs   $1d77
1d73: fd        mov   y,a
1d74: 3f b7 22  call  $22b7
1d77: 6f        ret

1d78: fa f5 e9  mov   ($e9),($f5)
1d7b: fa f6 e8  mov   ($e8),($f6)
1d7e: fa f7 ea  mov   ($ea),($f7)
1d81: 58 80 80  eor   $80,#$80
1d84: fa 80 f4  mov   ($f4),($80)
1d87: 8f 80 ec  mov   $ec,#$80
1d8a: 8f 00 ee  mov   $ee,#$00
1d8d: 8f 02 ef  mov   $ef,#$02
1d90: 4b e9     lsr   $e9
1d92: 6b e8     ror   $e8
1d94: b0 05     bcs   $1d9b
1d96: f0 35     beq   $1dcd
1d98: 5f c3 1d  jmp   $1dc3

1d9b: 8d 04     mov   y,#$04
1d9d: f7 ee     mov   a,($ee)+y
1d9f: 68 ff     cmp   a,#$ff
1da1: d0 08     bne   $1dab
1da3: 8d 03     mov   y,#$03
1da5: f7 ee     mov   a,($ee)+y
1da7: 68 ff     cmp   a,#$ff
1da9: f0 18     beq   $1dc3
1dab: 78 00 ea  cmp   $ea,#$00
1dae: f0 09     beq   $1db9
1db0: 8d 00     mov   y,#$00
1db2: f7 ee     mov   a,($ee)+y
1db4: 04 ec     or    a,$ec
1db6: 5f c1 1d  jmp   $1dc1

1db9: e4 ec     mov   a,$ec
1dbb: 48 ff     eor   a,#$ff
1dbd: 8d 00     mov   y,#$00
1dbf: 37 ee     and   a,($ee)+y
1dc1: d7 ee     mov   ($ee)+y,a
1dc3: 60        clrc
1dc4: 98 20 ee  adc   $ee,#$20
1dc7: 98 00 ef  adc   $ef,#$00
1dca: 5f 90 1d  jmp   $1d90

1dcd: e4 e9     mov   a,$e9
1dcf: d0 f2     bne   $1dc3
1dd1: 6f        ret

1dd2: fa f5 e9  mov   ($e9),($f5)
1dd5: fa f6 bc  mov   ($bc),($f6)
1dd8: fa f7 bd  mov   ($bd),($f7)
1ddb: 58 80 80  eor   $80,#$80
1dde: fa 80 f4  mov   ($f4),($80)
1de1: e4 e9     mov   a,$e9
1de3: 28 f0     and   a,#$f0
1de5: 9f        xcn   a
1de6: 48 ff     eor   a,#$ff
1de8: bc        inc   a
1de9: c4 bf     mov   $bf,a
1deb: e4 e9     mov   a,$e9
1ded: 28 0f     and   a,#$0f
1def: 68 08     cmp   a,#$08
1df1: 90 0b     bcc   $1dfe
1df3: 80        setc
1df4: a8 08     sbc   a,#$08
1df6: 5d        mov   x,a
1df7: f4 88     mov   a,$88+x
1df9: cd 00     mov   x,#$00
1dfb: 5f 04 1e  jmp   $1e04

1dfe: 5d        mov   x,a
1dff: f4 88     mov   a,$88+x
1e01: 5d        mov   x,a
1e02: e8 00     mov   a,#$00
1e04: c4 b4     mov   $b4,a
1e06: d8 b8     mov   $b8,x
1e08: c4 b5     mov   $b5,a
1e0a: d8 b9     mov   $b9,x
1e0c: c4 b7     mov   $b7,a
1e0e: d8 bb     mov   $bb,x
1e10: 6f        ret

1e11: fa f5 e9  mov   ($e9),($f5)
1e14: fa f6 e8  mov   ($e8),($f6)
1e17: fa f7 c9  mov   ($c9),($f7)
1e1a: 58 80 80  eor   $80,#$80
1e1d: fa 80 f4  mov   ($f4),($80)
1e20: 8f 10 ec  mov   $ec,#$10
1e23: fa c9 ea  mov   ($ea),($c9)
1e26: 5f 8a 1d  jmp   $1d8a

1e29: fa f5 e9  mov   ($e9),($f5)
1e2c: fa f6 e8  mov   ($e8),($f6)
1e2f: 58 80 80  eor   $80,#$80
1e32: fa 80 f4  mov   ($f4),($80)
1e35: 8f 00 86  mov   $86,#$00
1e38: 8f 02 87  mov   $87,#$02
1e3b: 4b e9     lsr   $e9
1e3d: 6b e8     ror   $e8
1e3f: b0 05     bcs   $1e46
1e41: f0 28     beq   $1e6b
1e43: 5f 61 1e  jmp   $1e61

1e46: 8d 0b     mov   y,#$0b
1e48: f7 86     mov   a,($86)+y
1e4a: 68 ff     cmp   a,#$ff
1e4c: d0 0d     bne   $1e5b
1e4e: 8d 0a     mov   y,#$0a
1e50: f7 86     mov   a,($86)+y
1e52: 68 ff     cmp   a,#$ff
1e54: f0 0b     beq   $1e61
1e56: 8d 0c     mov   y,#$0c
1e58: 5f 5d 1e  jmp   $1e5d

1e5b: 8d 0d     mov   y,#$0d
1e5d: e8 01     mov   a,#$01
1e5f: d7 86     mov   ($86)+y,a
1e61: 60        clrc
1e62: 98 20 86  adc   $86,#$20
1e65: 98 00 87  adc   $87,#$00
1e68: 5f 3b 1e  jmp   $1e3b

1e6b: e4 e9     mov   a,$e9
1e6d: d0 f2     bne   $1e61
1e6f: 6f        ret

1e70: cd d0     mov   x,#$d0
1e72: 8d 05     mov   y,#$05
1e74: bf        mov   a,(x)+
1e75: c4 f5     mov   $f5,a
1e77: bf        mov   a,(x)+
1e78: c4 f6     mov   $f6,a
1e7a: bf        mov   a,(x)+
1e7b: c4 f7     mov   $f7,a
1e7d: 58 80 80  eor   $80,#$80
1e80: fa 80 f4  mov   ($f4),($80)
1e83: e4 f4     mov   a,$f4
1e85: 64 f4     cmp   a,$f4
1e87: d0 fa     bne   $1e83
1e89: 44 83     eor   a,$83
1e8b: 10 f6     bpl   $1e83
1e8d: 58 80 83  eor   $83,#$80
1e90: fe e2     dbnz  y,$1e74
1e92: cd 00     mov   x,#$00
1e94: f5 00 05  mov   a,$0500+x
1e97: c4 f5     mov   $f5,a
1e99: f5 00 06  mov   a,$0600+x
1e9c: c4 f6     mov   $f6,a
1e9e: f5 00 07  mov   a,$0700+x
1ea1: c4 f7     mov   $f7,a
1ea3: 58 80 80  eor   $80,#$80
1ea6: fa 80 f4  mov   ($f4),($80)
1ea9: 3d        inc   x
1eaa: e4 f4     mov   a,$f4
1eac: 64 f4     cmp   a,$f4
1eae: d0 fa     bne   $1eaa
1eb0: 44 83     eor   a,$83
1eb2: 10 f6     bpl   $1eaa
1eb4: 58 80 83  eor   $83,#$80
1eb7: fe db     dbnz  y,$1e94
1eb9: 58 80 80  eor   $80,#$80
1ebc: fa 80 f4  mov   ($f4),($80)
1ebf: 6f        ret

1ec0: cd d0     mov   x,#$d0
1ec2: 8d 05     mov   y,#$05
1ec4: e4 f5     mov   a,$f5
1ec6: af        mov   (x)+,a
1ec7: e4 f6     mov   a,$f6
1ec9: af        mov   (x)+,a
1eca: e4 f7     mov   a,$f7
1ecc: af        mov   (x)+,a
1ecd: 58 80 80  eor   $80,#$80
1ed0: fa 80 f4  mov   ($f4),($80)
1ed3: e4 f4     mov   a,$f4
1ed5: 64 f4     cmp   a,$f4
1ed7: d0 fa     bne   $1ed3
1ed9: 44 83     eor   a,$83
1edb: 10 f6     bpl   $1ed3
1edd: 58 80 83  eor   $83,#$80
1ee0: fe e2     dbnz  y,$1ec4
1ee2: cd 00     mov   x,#$00
1ee4: e4 f5     mov   a,$f5
1ee6: d5 00 05  mov   $0500+x,a
1ee9: e4 f6     mov   a,$f6
1eeb: d5 00 06  mov   $0600+x,a
1eee: e4 f7     mov   a,$f7
1ef0: d5 00 07  mov   $0700+x,a
1ef3: 58 80 80  eor   $80,#$80
1ef6: fa 80 f4  mov   ($f4),($80)
1ef9: 3d        inc   x
1efa: e4 f4     mov   a,$f4
1efc: 64 f4     cmp   a,$f4
1efe: d0 fa     bne   $1efa
1f00: 44 83     eor   a,$83
1f02: 10 f6     bpl   $1efa
1f04: 58 80 83  eor   $83,#$80
1f07: fe db     dbnz  y,$1ee4
1f09: 58 80 80  eor   $80,#$80
1f0c: fa 80 f4  mov   ($f4),($80)
1f0f: 6f        ret

1f10: 8d 1e     mov   y,#$1e
1f12: 5f 26 1f  jmp   $1f26

1f15: 8d 96     mov   y,#$96
1f17: 5f 26 1f  jmp   $1f26

1f1a: 8d 66     mov   y,#$66
1f1c: 5f 26 1f  jmp   $1f26

1f1f: 8d 4e     mov   y,#$4e
1f21: 5f 26 1f  jmp   $1f26

1f24: 8d 3c     mov   y,#$3c
1f26: cc 48 1f  mov   $1f48,y
1f29: 1a ac     decw  $ac
1f2b: e4 f5     mov   a,$f5
1f2d: d7 ac     mov   ($ac)+y,a
1f2f: 58 80 80  eor   $80,#$80
1f32: fa 80 f4  mov   ($f4),($80)
1f35: e4 f6     mov   a,$f6
1f37: f8 f7     mov   x,$f7
1f39: dc        dec   y
1f3a: d7 ac     mov   ($ac)+y,a
1f3c: dc        dec   y
1f3d: 7d        mov   a,x
1f3e: d7 ac     mov   ($ac)+y,a
1f40: fe e9     dbnz  y,$1f2b
1f42: 58 80 83  eor   $83,#$80
1f45: 3a ac     incw  $ac
1f47: e8 66     mov   a,#$66
1f49: 60        clrc
1f4a: 84 ac     adc   a,$ac
1f4c: c4 ac     mov   $ac,a
1f4e: 90 02     bcc   $1f52
1f50: ab ad     inc   $ad
1f52: ba ac     movw  ya,$ac
1f54: 5a ca     cmpw  ya,$ca
1f56: 90 04     bcc   $1f5c
1f58: ba ae     movw  ya,$ae
1f5a: da ac     movw  $ac,ya
1f5c: 6f        ret

1f5d: 8f 00 e8  mov   $e8,#$00
1f60: 8f 02 e9  mov   $e9,#$02
1f63: 8d 05     mov   y,#$05
1f65: f7 e8     mov   a,($e8)+y
1f67: c4 f5     mov   $f5,a
1f69: 58 80 80  eor   $80,#$80
1f6c: fa 80 f4  mov   ($f4),($80)
1f6f: e4 f4     mov   a,$f4
1f71: 64 f4     cmp   a,$f4
1f73: d0 fa     bne   $1f6f
1f75: 44 83     eor   a,$83
1f77: 10 f6     bpl   $1f6f
1f79: 58 80 83  eor   $83,#$80
1f7c: 3f 0d 23  call  $230d
1f7f: 58 80 80  eor   $80,#$80
1f82: fa 80 f4  mov   ($f4),($80)
1f85: 6f        ret

1f86: 8d 00     mov   y,#$00
1f88: e4 f5     mov   a,$f5
1f8a: d7 ac     mov   ($ac)+y,a
1f8c: 58 80 80  eor   $80,#$80
1f8f: fa 80 f4  mov   ($f4),($80)
1f92: e4 f6     mov   a,$f6
1f94: f8 f7     mov   x,$f7
1f96: fc        inc   y
1f97: d7 ac     mov   ($ac)+y,a
1f99: fc        inc   y
1f9a: 7d        mov   a,x
1f9b: d7 ac     mov   ($ac)+y,a
1f9d: fc        inc   y
1f9e: ad 4e     cmp   y,#$4e
1fa0: d0 e6     bne   $1f88
1fa2: 58 80 83  eor   $83,#$80
1fa5: dd        mov   a,y
1fa6: 60        clrc
1fa7: 84 ac     adc   a,$ac
1fa9: c4 ac     mov   $ac,a
1fab: 90 02     bcc   $1faf
1fad: ab ad     inc   $ad
1faf: 6f        ret

1fb0: fa f5 ea  mov   ($ea),($f5)
1fb3: fa f6 eb  mov   ($eb),($f6)
1fb6: 58 80 80  eor   $80,#$80
1fb9: fa 80 f4  mov   ($f4),($80)
1fbc: fa eb cf  mov   ($cf),($eb)
1fbf: 8f 00 e8  mov   $e8,#$00
1fc2: 8f 02 e9  mov   $e9,#$02
1fc5: 8f 00 ec  mov   $ec,#$00
1fc8: 78 0e ec  cmp   $ec,#$0e
1fcb: b0 05     bcs   $1fd2
1fcd: e4 ea     mov   a,$ea
1fcf: 5f d4 1f  jmp   $1fd4

1fd2: e4 eb     mov   a,$eb
1fd4: 8d 18     mov   y,#$18
1fd6: d7 e8     mov   ($e8)+y,a
1fd8: 8d 1f     mov   y,#$1f
1fda: f7 e8     mov   a,($e8)+y
1fdc: 08 40     or    a,#$40
1fde: d7 e8     mov   ($e8)+y,a
1fe0: 60        clrc
1fe1: 98 20 e8  adc   $e8,#$20
1fe4: 98 00 e9  adc   $e9,#$00
1fe7: ab ec     inc   $ec
1fe9: 78 10 ec  cmp   $ec,#$10
1fec: d0 da     bne   $1fc8
1fee: 6f        ret

1fef: cd 00     mov   x,#$00
1ff1: 8d 0b     mov   y,#$0b
1ff3: f5 5f 24  mov   a,$245f+x
1ff6: c4 f5     mov   $f5,a
1ff8: f5 60 24  mov   a,$2460+x
1ffb: c4 f6     mov   $f6,a
1ffd: f5 61 24  mov   a,$2461+x
2000: c4 f7     mov   $f7,a
2002: 58 80 80  eor   $80,#$80
2005: fa 80 f4  mov   ($f4),($80)
2008: 3d        inc   x
2009: 3d        inc   x
200a: 3d        inc   x
200b: e4 f4     mov   a,$f4
200d: 64 f4     cmp   a,$f4
200f: d0 fa     bne   $200b
2011: 44 83     eor   a,$83
2013: 10 f6     bpl   $200b
2015: 58 80 83  eor   $83,#$80
2018: fe d9     dbnz  y,$1ff3
201a: 58 80 80  eor   $80,#$80
201d: fa 80 f4  mov   ($f4),($80)
2020: 42 81     set2  $81
2022: 6f        ret

2023: fa f5 e9  mov   ($e9),($f5)
2026: fa f6 e8  mov   ($e8),($f6)
2029: fa f7 ea  mov   ($ea),($f7)
202c: 58 80 80  eor   $80,#$80
202f: fa 80 f4  mov   ($f4),($80)
2032: 8f 00 e2  mov   $e2,#$00
2035: 8f 02 e3  mov   $e3,#$02
2038: 4b e9     lsr   $e9
203a: 6b e8     ror   $e8
203c: b0 05     bcs   $2043
203e: f0 28     beq   $2068
2040: 5f 5e 20  jmp   $205e

2043: 8d 1f     mov   y,#$1f
2045: f7 e2     mov   a,($e2)+y
2047: 08 40     or    a,#$40
2049: d7 e2     mov   ($e2)+y,a
204b: 8d 00     mov   y,#$00
204d: e4 ea     mov   a,$ea
204f: f0 07     beq   $2058
2051: f7 e2     mov   a,($e2)+y
2053: 08 40     or    a,#$40
2055: 5f 5c 20  jmp   $205c

2058: f7 e2     mov   a,($e2)+y
205a: 28 bf     and   a,#$bf
205c: d7 e2     mov   ($e2)+y,a
205e: 60        clrc
205f: 98 20 e2  adc   $e2,#$20
2062: 98 00 e3  adc   $e3,#$00
2065: 5f 38 20  jmp   $2038

2068: e4 e9     mov   a,$e9
206a: d0 f2     bne   $205e
206c: 6f        ret

206d: fa f5 e9  mov   ($e9),($f5)
2070: fa f6 e8  mov   ($e8),($f6)
2073: fa f7 eb  mov   ($eb),($f7)
2076: 58 80 80  eor   $80,#$80
2079: fa 80 f4  mov   ($f4),($80)
207c: e4 e8     mov   a,$e8
207e: eb cf     mov   y,$cf
2080: cf        mul   ya
2081: cb bc     mov   $bc,y
2083: 8d 40     mov   y,#$40
2085: e4 eb     mov   a,$eb
2087: 10 02     bpl   $208b
2089: 8d 80     mov   y,#$80
208b: 28 7f     and   a,#$7f
208d: c4 bd     mov   $bd,a
208f: e4 e9     mov   a,$e9
2091: 30 0d     bmi   $20a0
2093: 80        setc
2094: a8 40     sbc   a,#$40
2096: c4 bf     mov   $bf,a
2098: cb b7     mov   $b7,y
209a: 8f 00 bb  mov   $bb,#$00
209d: 5f ac 20  jmp   $20ac

20a0: 28 7f     and   a,#$7f
20a2: 80        setc
20a3: a8 40     sbc   a,#$40
20a5: c4 be     mov   $be,a
20a7: cb b6     mov   $b6,y
20a9: 8f 00 ba  mov   $ba,#$00
20ac: cb b4     mov   $b4,y
20ae: cb b5     mov   $b5,y
20b0: 8f 00 b8  mov   $b8,#$00
20b3: 8f 00 b9  mov   $b9,#$00
20b6: 6f        ret

20b7: dw $19ae
20b9: dw $19d3
20bb: dw $1a6f
20bd: dw $1adb
20bf: dw $19f9
20c1: dw $1a5c
20c3: dw $1ae2
20c5: dw $1afd
20c7: dw $1b08
20c9: dw $1b36
20cb: dw $1b5f
20cd: dw $1b85
20cf: dw $1bc2
20d1: dw $1c0e
20d3: dw $1c1e
20d5: dw $1c2e
20d7: dw $1c44
20d9: dw $1c58
20db: dw $1c64
20dd: dw $1c8d
20df: dw $1c9e
20e1: dw $1cb0
20e3: dw $1cbd
20e5: dw $1ccd
20e7: dw $1cd6
20e9: dw $1ce4
20eb: dw $1d09
20ed: dw $1d2b
20ef: dw $1d3a
20f1: dw $1d4e
20f3: dw $1d78
20f5: dw $1dd2
20f7: dw $1e11
20f9: dw $1f15
20fb: dw $1e29
20fd: dw $1e70
20ff: dw $1ec0
2101: dw $1f1a
2103: dw $1f1f
2105: dw $1f5d
2107: dw $1f86
2109: dw $1fb0
210b: dw $1fef
210d: dw $1f24
210f: dw $2023
2111: dw $206d
2113: dw $1f10

2115: e4 f4     mov   a,$f4
2117: 64 f4     cmp   a,$f4
2119: d0 fa     bne   $2115
211b: 44 83     eor   a,$83
211d: 30 01     bmi   $2120
211f: 6f        ret

2120: 28 7f     and   a,#$7f
2122: 5d        mov   x,a
2123: f5 31 21  mov   a,$2131+x
2126: f0 f7     beq   $211f
2128: 58 80 83  eor   $83,#$80
212b: 7d        mov   a,x
212c: 1c        asl   a
212d: 5d        mov   x,a
212e: 1f b7 20  jmp   ($20b7+x)

2131: db $01,$01,$01,$01,$01,$01,$00,$00
2139: db $00,$00,$00,$00,$01,$01,$01,$01
2141: db $01,$00,$00,$00,$00,$00,$01,$00
2149: db $00,$00,$00,$01,$01,$01,$00,$01
2151: db $00,$01,$00,$00,$00,$01,$01,$01
2159: db $00,$00,$01,$01,$00,$01,$01

2160: cd 00     mov   x,#$00
2162: 8f 08 e8  mov   $e8,#$08
2165: bf        mov   a,(x)+
2166: 28 7f     and   a,#$7f
2168: d5 ff 04  mov   $04ff+x,a
216b: 8d 0f     mov   y,#$0f
216d: bf        mov   a,(x)+
216e: d5 ff 04  mov   $04ff+x,a
2171: fe fa     dbnz  y,$216d
2173: 6e e8 ef  dbnz  $e8,$2165
2176: cd 00     mov   x,#$00
2178: 8d 40     mov   y,#$40
217a: 40        setp
217b: f5 00 08  mov   a,$0800+x
217e: d5 c0 07  mov   $07c0+x,a
2181: bf        mov   a,(x)+
2182: d5 7f 05  mov   $057f+x,a
2185: fe f4     dbnz  y,$217b
2187: 20        clrp
2188: f6 00 02  mov   a,$0200+y
218b: d6 c0 05  mov   $05c0+y,a
218e: f6 00 03  mov   a,$0300+y
2191: d6 c0 06  mov   $06c0+y,a
2194: fe f2     dbnz  y,$2188
2196: e5 80 07  mov   a,$0780
2199: 28 7f     and   a,#$7f
219b: c5 80 07  mov   $0780,a
219e: e5 a0 07  mov   a,$07a0
21a1: 28 7f     and   a,#$7f
21a3: c5 a0 07  mov   $07a0,a
21a6: fa 80 d0  mov   ($d0),($80)
21a9: fa 81 d1  mov   ($d1),($81)
21ac: fa 99 d2  mov   ($d2),($99)
21af: fa 90 d3  mov   ($d3),($90)
21b2: fa 91 d4  mov   ($d4),($91)
21b5: fa 92 d5  mov   ($d5),($92)
21b8: fa 93 d6  mov   ($d6),($93)
21bb: fa 9d d7  mov   ($d7),($9d)
21be: fa 9e d8  mov   ($d8),($9e)
21c1: fa 9f d9  mov   ($d9),($9f)
21c4: fa c7 da  mov   ($da),($c7)
21c7: fa c8 db  mov   ($db),($c8)
21ca: fa cc dc  mov   ($dc),($cc)
21cd: fa cd dd  mov   ($dd),($cd)
21d0: fa ce de  mov   ($de),($ce)
21d3: 6f        ret

21d4: cd 00     mov   x,#$00
21d6: 8d 80     mov   y,#$80
21d8: f5 00 05  mov   a,$0500+x
21db: af        mov   (x)+,a
21dc: fe fa     dbnz  y,$21d8
21de: cd 00     mov   x,#$00
21e0: 8d 40     mov   y,#$40
21e2: 40        setp
21e3: f5 c0 07  mov   a,$07c0+x
21e6: d5 00 08  mov   $0800+x,a
21e9: f5 80 05  mov   a,$0580+x
21ec: af        mov   (x)+,a
21ed: fe f4     dbnz  y,$21e3
21ef: 20        clrp
21f0: f6 c0 05  mov   a,$05c0+y
21f3: d6 00 02  mov   $0200+y,a
21f6: f6 c0 06  mov   a,$06c0+y
21f9: d6 00 03  mov   $0300+y,a
21fc: fe f2     dbnz  y,$21f0
21fe: 8f 00 e8  mov   $e8,#$00
2201: 8f 02 e9  mov   $e9,#$02
2204: 8d 1f     mov   y,#$1f
2206: f7 e8     mov   a,($e8)+y
2208: 08 e0     or    a,#$e0
220a: d7 e8     mov   ($e8)+y,a
220c: 60        clrc
220d: 98 20 e8  adc   $e8,#$20
2210: 90 f4     bcc   $2206
2212: ab e9     inc   $e9
2214: 78 04 e9  cmp   $e9,#$04
2217: d0 ed     bne   $2206
2219: 38 8a 80  and   $80,#$8a
221c: e4 d0     mov   a,$d0
221e: 28 14     and   a,#$14
2220: 04 80     or    a,$80
2222: c4 80     mov   $80,a
2224: fa d1 81  mov   ($81),($d1)
2227: 62 81     set3  $81
2229: fa d2 99  mov   ($99),($d2)
222c: fa d3 90  mov   ($90),($d3)
222f: fa d4 91  mov   ($91),($d4)
2232: 3f 7c 0b  call  $0b7c
2235: fa d5 92  mov   ($92),($d5)
2238: fa d6 93  mov   ($93),($d6)
223b: 3f 9a 13  call  $139a
223e: fa d7 9d  mov   ($9d),($d7)
2241: fa d8 9e  mov   ($9e),($d8)
2244: fa d9 9f  mov   ($9f),($d9)
2247: 3f 68 13  call  $1368
224a: fa da c7  mov   ($c7),($da)
224d: fa db c8  mov   ($c8),($db)
2250: fa dc cc  mov   ($cc),($dc)
2253: fa dd cd  mov   ($cd),($dd)
2256: fa de ce  mov   ($ce),($de)
2259: 8f 0d f2  mov   $f2,#$0d
225c: fa 92 f3  mov   ($f3),($92)       ; set EFB
225f: 6f        ret

2260: cd 00     mov   x,#$00
2262: e6        mov   a,(x)
2263: 3c        rol   a
2264: 90 45     bcc   $22ab
2266: f4 01     mov   a,$01+x
2268: 68 0e     cmp   a,#$0e
226a: b0 3e     bcs   $22aa
226c: 9f        xcn   a
226d: 1c        asl   a
226e: 8f 02 e1  mov   $e1,#$02
2271: 98 00 e1  adc   $e1,#$00
2274: c4 e0     mov   $e0,a
2276: 8d 07     mov   y,#$07
2278: f7 e0     mov   a,($e0)+y
227a: 68 40     cmp   a,#$40
227c: 90 0a     bcc   $2288
227e: 68 48     cmp   a,#$48
2280: 0d        push  psw
2281: 28 01     and   a,#$01
2283: 8e        pop   psw
2284: b0 02     bcs   $2288
2286: bc        inc   a
2287: bc        inc   a
2288: 1c        asl   a
2289: 1c        asl   a
228a: fd        mov   y,a
228b: f6 02 ff  mov   a,$ff02+y
228e: 80        setc
228f: a8 09     sbc   a,#$09
2291: c4 e2     mov   $e2,a
2293: f6 03 ff  mov   a,$ff03+y
2296: a8 00     sbc   a,#$00
2298: c4 e3     mov   $e3,a
229a: 8d 00     mov   y,#$00
229c: f7 e2     mov   a,($e2)+y
229e: 7c        ror   a
229f: 7c        ror   a
22a0: 90 09     bcc   $22ab
22a2: 8d 09     mov   y,#$09
22a4: f7 e0     mov   a,($e0)+y
22a6: 28 1f     and   a,#$1f
22a8: 68 0b     cmp   a,#$0b
22aa: ed        notc
22ab: 6b c6     ror   $c6
22ad: 7d        mov   a,x
22ae: 60        clrc
22af: 88 10     adc   a,#$10
22b1: 5d        mov   x,a
22b2: 10 ae     bpl   $2262
22b4: 5f 15 21  jmp   $2115

22b7: 4d        push  x
22b8: 6d        push  y
22b9: d8 ea     mov   $ea,x
22bb: 7e ea     cmp   y,$ea
22bd: 90 04     bcc   $22c3
22bf: 6d        push  y
22c0: eb ea     mov   y,$ea
22c2: ce        pop   x
22c3: f6 c0 01  mov   a,$01c0+y
22c6: 80        setc
22c7: b5 c0 01  sbc   a,$01c0+x
22ca: 90 1f     bcc   $22eb
22cc: 5c        lsr   a
22cd: 5c        lsr   a
22ce: c4 ed     mov   $ed,a
22d0: f6 c0 01  mov   a,$01c0+y
22d3: fc        inc   y
22d4: 80        setc
22d5: a4 ed     sbc   a,$ed
22d7: d6 c0 01  mov   $01c0+y,a
22da: fc        inc   y
22db: 80        setc
22dc: a4 ed     sbc   a,$ed
22de: d6 c0 01  mov   $01c0+y,a
22e1: fc        inc   y
22e2: 80        setc
22e3: a4 ed     sbc   a,$ed
22e5: d6 c0 01  mov   $01c0+y,a
22e8: 5f 0a 23  jmp   $230a

22eb: 48 ff     eor   a,#$ff
22ed: bc        inc   a
22ee: 5c        lsr   a
22ef: 5c        lsr   a
22f0: c4 ed     mov   $ed,a
22f2: f5 c0 01  mov   a,$01c0+x
22f5: 1d        dec   x
22f6: 80        setc
22f7: a4 ed     sbc   a,$ed
22f9: d5 c0 01  mov   $01c0+x,a
22fc: 1d        dec   x
22fd: 80        setc
22fe: a4 ed     sbc   a,$ed
2300: d5 c0 01  mov   $01c0+x,a
2303: 1d        dec   x
2304: 80        setc
2305: a4 ed     sbc   a,$ed
2307: d5 c0 01  mov   $01c0+x,a
230a: ee        pop   y
230b: ce        pop   x
230c: 6f        ret

230d: fa 80 f4  mov   ($f4),($80)
2310: e4 95     mov   a,$95
2312: 3f 26 23  call  $2326
2315: c4 f5     mov   $f5,a
2317: e4 96     mov   a,$96
2319: 3f 26 23  call  $2326
231c: c4 f6     mov   $f6,a
231e: e4 97     mov   a,$97
2320: 3f 26 23  call  $2326
2323: c4 f7     mov   $f7,a
2325: 6f        ret

2326: f0 3f     beq   $2367
2328: c4 e8     mov   $e8,a
232a: 68 10     cmp   a,#$10
232c: b0 3a     bcs   $2368
232e: 5d        mov   x,a
232f: f5 8f 23  mov   a,$238f+x
2332: f0 03     beq   $2337
2334: 5d        mov   x,a
2335: e6        mov   a,(x)
2336: 6f        ret

2337: 78 03 e8  cmp   $e8,#$03
233a: d0 0b     bne   $2347
233c: 8f 00 ea  mov   $ea,#$00
233f: 8f 02 eb  mov   $eb,#$02
2342: 8d 05     mov   y,#$05
2344: f7 ea     mov   a,($ea)+y
2346: 6f        ret

2347: 78 04 e8  cmp   $e8,#$04
234a: d0 0c     bne   $2358
234c: e4 9e     mov   a,$9e
234e: f0 07     beq   $2357
2350: 9c        dec   a
2351: f8 ce     mov   x,$ce
2353: 8d 00     mov   y,#$00
2355: 9e        div   ya,x
2356: bc        inc   a
2357: 6f        ret

2358: 78 0c e8  cmp   $e8,#$0c
235b: d0 03     bne   $2360
235d: 42 81     set2  $81
235f: 6f        ret

2360: 78 0d e8  cmp   $e8,#$0d
2363: d0 02     bne   $2367
2365: 52 81     clr2  $81
2367: 6f        ret

2368: 78 40 e8  cmp   $e8,#$40
236b: b0 06     bcs   $2373
236d: f8 e8     mov   x,$e8
236f: f5 a0 01  mov   a,$01a0+x
2372: 6f        ret

2373: 8f 02 ef  mov   $ef,#$02
2376: e4 e8     mov   a,$e8
2378: 28 0f     and   a,#$0f
237a: c4 e9     mov   $e9,a
237c: 9f        xcn   a
237d: 1c        asl   a
237e: 98 00 ef  adc   $ef,#$00
2381: c4 ee     mov   $ee,a
2383: e4 e8     mov   a,$e8
2385: 68 50     cmp   a,#$50
2387: b0 05     bcs   $238e
2389: 8d 07     mov   y,#$07
238b: f7 ee     mov   a,($ee)+y
238d: 6f        ret

238e: 6f        ret

238f: db $00,$80,$81,$00,$00,$9d,$92,$93
2397: db $9f,$00,$99,$9e,$00,$00,$b1,$b0

239f: 43 81 01  bbs2  $81,$23a3
23a2: 6f        ret

23a3: 8d 0f     mov   y,#$0f
23a5: cb 84     mov   $84,y
23a7: 3f ec 09  call  $09ec
23aa: 8f 00 e1  mov   $e1,#$00
23ad: cd 08     mov   x,#$08
23af: 4b 98     lsr   $98
23b1: b0 0a     bcs   $23bd
23b3: f0 15     beq   $23ca
23b5: 7d        mov   a,x
23b6: 60        clrc
23b7: 88 10     adc   a,#$10
23b9: 5d        mov   x,a
23ba: 5f af 23  jmp   $23af

23bd: d8 f2     mov   $f2,x
23bf: e4 f3     mov   a,$f3             ; read ENVX
23c1: 64 e1     cmp   a,$e1
23c3: 90 ea     bcc   $23af
23c5: c4 e1     mov   $e1,a
23c7: 5f af 23  jmp   $23af

23ca: e4 e1     mov   a,$e1
23cc: d6 5f 24  mov   $245f+y,a
23cf: dc        dec   y
23d0: 10 d3     bpl   $23a5
23d2: cd 00     mov   x,#$00
23d4: f4 00     mov   a,$00+x
23d6: 30 05     bmi   $23dd
23d8: e8 ff     mov   a,#$ff
23da: 5f e6 23  jmp   $23e6

23dd: 7d        mov   a,x
23de: 5c        lsr   a
23df: fd        mov   y,a
23e0: f4 07     mov   a,$07+x
23e2: 60        clrc
23e3: 96 00 01  adc   a,$0100+y
23e6: 2d        push  a
23e7: 7d        mov   a,x
23e8: 9f        xcn   a
23e9: fd        mov   y,a
23ea: ae        pop   a
23eb: d6 6f 24  mov   $246f+y,a
23ee: 7d        mov   a,x
23ef: 60        clrc
23f0: 88 10     adc   a,#$10
23f2: 5d        mov   x,a
23f3: 10 df     bpl   $23d4
23f5: cd 00     mov   x,#$00
23f7: f4 00     mov   a,$00+x
23f9: 30 05     bmi   $2400
23fb: e8 00     mov   a,#$00
23fd: 5f 3f 24  jmp   $243f

2400: 7d        mov   a,x
2401: 5c        lsr   a
2402: fd        mov   y,a
2403: f6 01 01  mov   a,$0101+y
2406: 68 40     cmp   a,#$40
2408: 90 0a     bcc   $2414
240a: 68 48     cmp   a,#$48
240c: 0d        push  psw
240d: 28 01     and   a,#$01
240f: 8e        pop   psw
2410: b0 02     bcs   $2414
2412: bc        inc   a
2413: bc        inc   a
2414: fd        mov   y,a
2415: f6 40 01  mov   a,$0140+y
2418: fb 0d     mov   y,$0d+x
241a: cf        mul   ya
241b: cb e1     mov   $e1,y
241d: 4b e1     lsr   $e1
241f: 7c        ror   a
2420: 4b e1     lsr   $e1
2422: 7c        ror   a
2423: 4b e1     lsr   $e1
2425: 7c        ror   a
2426: 4b e1     lsr   $e1
2428: d0 05     bne   $242f
242a: 7c        ror   a
242b: 88 00     adc   a,#$00
242d: 90 02     bcc   $2431
242f: e8 ff     mov   a,#$ff
2431: c4 e1     mov   $e1,a
2433: 7d        mov   a,x
2434: 60        clrc
2435: 88 08     adc   a,#$08
2437: c4 f2     mov   $f2,a
2439: e4 f3     mov   a,$f3             ; read ENVX
243b: eb e1     mov   y,$e1
243d: cf        mul   ya
243e: dd        mov   a,y
243f: 2d        push  a
2440: 7d        mov   a,x
2441: 9f        xcn   a
2442: fd        mov   y,a
2443: ae        pop   a
2444: d6 77 24  mov   $2477+y,a
2447: 7d        mov   a,x
2448: 60        clrc
2449: 88 10     adc   a,#$10
244b: 5d        mov   x,a
244c: 10 a9     bpl   $23f7
244e: e4 9e     mov   a,$9e
2450: f0 07     beq   $2459
2452: 9c        dec   a
2453: f8 ce     mov   x,$ce
2455: 8d 00     mov   y,#$00
2457: 9e        div   ya,x
2458: bc        inc   a
2459: c5 7f 24  mov   $247f,a
245c: 52 81     clr2  $81
245e: 6f        ret

245f: 7f
2460: 00
2461: 00
2462: 2b 00
2464: 7f
2465: 00
2466: 00
2467: 00
2468: 00
2469: 00
246a: 00
246b: 00
246c: 00
246d: 00
246e: 00
246f: 50 34
2471: 44 3b
2473: ff
2474: ff
2475: ff
2476: ff
2477: 06
2478: 04 02
247a: 02 00
247c: 00
247d: 00
247e: 00
247f: 01

2480: e2 a0     set7  $a0
2482: fa c3 c4  mov   ($c4),($c3)
2485: 8f 00 c3  mov   $c3,#$00
2488: 8f 00 c5  mov   $c5,#$00
248b: 13 a1 52  bbc0  $a1,$24e0
248e: 8f e0 86  mov   $86,#$e0
2491: 8f 03 87  mov   $87,#$03
2494: 8f 0f 84  mov   $84,#$0f
2497: 12 a1     clr0  $a1
2499: e4 b0     mov   a,$b0
249b: 68 ff     cmp   a,#$ff
249d: f0 08     beq   $24a7
249f: c2 a1     set6  $a1
24a1: 3f 80 25  call  $2580
24a4: 5f e0 24  jmp   $24e0

24a7: d2 a1     clr6  $a1
24a9: b2 80     clr5  $80
24ab: e8 00     mov   a,#$00
24ad: 8d 00     mov   y,#$00
24af: d7 86     mov   ($86)+y,a
24b1: 8d 06     mov   y,#$06
24b3: d7 86     mov   ($86)+y,a
24b5: c4 b2     mov   $b2,a
24b7: 3f e9 25  call  $25e9
24ba: 3f ec 09  call  $09ec
24bd: e4 98     mov   a,$98
24bf: 04 c5     or    a,$c5
24c1: c4 c5     mov   $c5,a
24c3: e4 98     mov   a,$98
24c5: 48 ff     eor   a,#$ff
24c7: c4 e6     mov   $e6,a
24c9: 8f 4d f2  mov   $f2,#$4d
24cc: 29 e6 f3  and   ($f3),($e6)       ; set EON
24cf: e8 00     mov   a,#$00
24d1: 6b 98     ror   $98
24d3: 90 06     bcc   $24db
24d5: 5d        mov   x,a
24d6: e8 00     mov   a,#$00
24d8: c6        mov   (x),a
24d9: 2f 05     bra   $24e0
24db: 60        clrc
24dc: 88 10     adc   a,#$10
24de: 10 f1     bpl   $24d1
24e0: 33 a1 52  bbc1  $a1,$2535
24e3: 8f c0 86  mov   $86,#$c0
24e6: 8f 03 87  mov   $87,#$03
24e9: 8f 0e 84  mov   $84,#$0e
24ec: 32 a1     clr1  $a1
24ee: e4 b1     mov   a,$b1
24f0: 68 ff     cmp   a,#$ff
24f2: f0 08     beq   $24fc
24f4: e2 a1     set7  $a1
24f6: 3f 80 25  call  $2580
24f9: 5f 35 25  jmp   $2535

24fc: f2 a1     clr7  $a1
24fe: d2 80     clr6  $80
2500: e8 00     mov   a,#$00
2502: 8d 00     mov   y,#$00
2504: d7 86     mov   ($86)+y,a
2506: 8d 06     mov   y,#$06
2508: d7 86     mov   ($86)+y,a
250a: c4 b3     mov   $b3,a
250c: 3f e9 25  call  $25e9
250f: 3f ec 09  call  $09ec
2512: e4 98     mov   a,$98
2514: 04 c5     or    a,$c5
2516: c4 c5     mov   $c5,a
2518: e4 98     mov   a,$98
251a: 48 ff     eor   a,#$ff
251c: c4 e6     mov   $e6,a
251e: 8f 4d f2  mov   $f2,#$4d
2521: 29 e6 f3  and   ($f3),($e6)       ; set EON
2524: e8 00     mov   a,#$00
2526: 6b 98     ror   $98
2528: 90 06     bcc   $2530
252a: 5d        mov   x,a
252b: e8 00     mov   a,#$00
252d: c6        mov   (x),a
252e: 2f 05     bra   $2535
2530: 60        clrc
2531: 88 10     adc   a,#$10
2533: 10 f1     bpl   $2526
2535: 3f a1 0c  call  $0ca1
2538: 8f c0 86  mov   $86,#$c0
253b: 8f 03 87  mov   $87,#$03
253e: 8f 0e 84  mov   $84,#$0e
2541: 3f 15 21  call  $2115
2544: 8d 00     mov   y,#$00
2546: f7 86     mov   a,($86)+y
2548: 10 0c     bpl   $2556
254a: 8d 06     mov   y,#$06
254c: f7 86     mov   a,($86)+y
254e: d0 06     bne   $2556
2550: 3f c6 14  call  $14c6
2553: 5f 41 25  jmp   $2541

2556: 60        clrc
2557: 98 20 86  adc   $86,#$20
255a: 98 00 87  adc   $87,#$00
255d: ab 84     inc   $84
255f: 78 10 84  cmp   $84,#$10
2562: 90 dd     bcc   $2541
2564: 3f 5f 0c  call  $0c5f
2567: 3f c8 0d  call  $0dc8
256a: 3f 57 0e  call  $0e57
256d: 3f 52 12  call  $1252
2570: 3f 04 13  call  $1304
2573: 8f 5c f2  mov   $f2,#$5c
2576: fa c5 f3  mov   ($f3),($c5)       ; set KOF
2579: 8f 4c f2  mov   $f2,#$4c
257c: fa c3 f3  mov   ($f3),($c3)       ; set KON
257f: 6f        ret

2580: 1c        asl   a
2581: 5d        mov   x,a
2582: b0 16     bcs   $259a
2584: f5 10 26  mov   a,$2610+x
2587: 60        clrc
2588: 88 d6     adc   a,#$d6
258a: 8d 03     mov   y,#$03
258c: d7 86     mov   ($86)+y,a
258e: f5 11 26  mov   a,$2611+x
2591: 88 27     adc   a,#$27
2593: 8d 04     mov   y,#$04
2595: d7 86     mov   ($86)+y,a
2597: 5f ad 25  jmp   $25ad

259a: f5 10 27  mov   a,$2710+x
259d: 60        clrc
259e: 88 d6     adc   a,#$d6
25a0: 8d 03     mov   y,#$03
25a2: d7 86     mov   ($86)+y,a
25a4: f5 11 27  mov   a,$2711+x
25a7: 88 27     adc   a,#$27
25a9: 8d 04     mov   y,#$04
25ab: d7 86     mov   ($86)+y,a
25ad: e8 80     mov   a,#$80
25af: 8d 00     mov   y,#$00
25b1: d7 86     mov   ($86)+y,a
25b3: e8 02     mov   a,#$02
25b5: 8d 06     mov   y,#$06
25b7: d7 86     mov   ($86)+y,a
25b9: 3f e9 25  call  $25e9
25bc: 3f 08 14  call  $1408
25bf: 30 27     bmi   $25e8
25c1: e8 80     mov   a,#$80
25c3: c6        mov   (x),a
25c4: e4 84     mov   a,$84
25c6: d4 01     mov   $01+x,a
25c8: e8 00     mov   a,#$00
25ca: d4 02     mov   $02+x,a
25cc: e8 ff     mov   a,#$ff
25ce: d4 07     mov   $07+x,a
25d0: 7d        mov   a,x
25d1: 9f        xcn   a
25d2: 5d        mov   x,a
25d3: f4 88     mov   a,$88+x
25d5: 04 c5     or    a,$c5
25d7: c4 c5     mov   $c5,a
25d9: f4 88     mov   a,$88+x
25db: 48 ff     eor   a,#$ff
25dd: c4 e6     mov   $e6,a
25df: 8f 4d f2  mov   $f2,#$4d
25e2: e4 f3     mov   a,$f3          ; set EON
25e4: 24 e6     and   a,$e6
25e6: c4 f3     mov   $f3,a
25e8: 6f        ret

25e9: e8 00     mov   a,#$00
25eb: 8d 13     mov   y,#$13
25ed: d7 86     mov   ($86)+y,a
25ef: 8d 14     mov   y,#$14
25f1: d7 86     mov   ($86)+y,a
25f3: 8d 15     mov   y,#$15
25f5: d7 86     mov   ($86)+y,a
25f7: 8d 11     mov   y,#$11
25f9: d7 86     mov   ($86)+y,a
25fb: e8 ff     mov   a,#$ff
25fd: 8d 16     mov   y,#$16
25ff: d7 86     mov   ($86)+y,a
2601: 8d 17     mov   y,#$17
2603: d7 86     mov   ($86)+y,a
2605: 8d 19     mov   y,#$19
2607: d7 86     mov   ($86)+y,a
2609: e8 40     mov   a,#$40
260b: 8d 1a     mov   y,#$1a
260d: d7 86     mov   ($86)+y,a
260f: 6f        ret
