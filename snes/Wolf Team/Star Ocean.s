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
0853: 3f 00 38  call  $3800
0856: 58 80 80  eor   $80,#$80
0859: fa 80 f4  mov   ($f4),($80)
; main loop
085c: 3f f2 19  call  $19f2
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
095c: 3f 51 24  call  $2451
095f: 3f e3 24  call  $24e3
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
097f: 3f 14 22  call  $2214
0982: 8d 00     mov   y,#$00
0984: f7 86     mov   a,($86)+y
0986: 10 0c     bpl   $0994
0988: 8d 06     mov   y,#$06
098a: f7 86     mov   a,($86)+y
098c: d0 06     bne   $0994
098e: 3f 0f 15  call  $150f
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
09ae: 3f 95 12  call  $1295
09b1: 3f 47 13  call  $1347
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
09cd: 3f 60 13  call  $1360
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

09e9: 5f 54 25  jmp   $2554

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
0b1a: 3f e3 13  call  $13e3
0b1d: 8f 02 9f  mov   $9f,#$02
0b20: 3f af 13  call  $13af
0b23: 5f 51 24  jmp   $2451

0b26: 8f 00 86  mov   $86,#$00
0b29: 8f 02 87  mov   $87,#$02
0b2c: 8f 00 e0  mov   $e0,#$00
0b2f: fa 99 e1  mov   ($e1),($99)
0b32: 60        clrc
0b33: 98 38 e1  adc   $e1,#$38
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
0b69: 88 38     adc   a,#$38
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
0b80: 98 38 e1  adc   $e1,#$38
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
0be2: 88 38     adc   a,#$38
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
0c7b: 5f 14 22  jmp   $2214

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

0cd3: 3f 14 22  call  $2214
0cd6: 33 81 03  bbc1  $81,$0cdc
0cd9: 5f e9 0c  jmp   $0ce9

0cdc: b3 81 03  bbc5  $81,$0ce2
0cdf: 5f 38 0d  jmp   $0d38

0ce2: 93 81 03  bbc4  $81,$0ce8
0ce5: 5f 89 0d  jmp   $0d89

0ce8: 6f        ret

0ce9: e4 d0     mov   a,$d0
0ceb: f0 35     beq   $0d22
0ced: e4 d1     mov   a,$d1
0cef: 60        clrc
0cf0: 84 d2     adc   a,$d2
0cf2: fd        mov   y,a
0cf3: 28 0f     and   a,#$0f
0cf5: c4 d2     mov   $d2,a
0cf7: dd        mov   a,y
0cf8: 9f        xcn   a
0cf9: 28 0f     and   a,#$0f
0cfb: c4 e2     mov   $e2,a
0cfd: e4 d0     mov   a,$d0
0cff: 80        setc
0d00: a4 e2     sbc   a,$e2
0d02: b0 02     bcs   $0d06
0d04: e8 00     mov   a,#$00
0d06: c4 d0     mov   $d0,a
0d08: fd        mov   y,a
0d09: 5c        lsr   a
0d0a: 8f 0c f2  mov   $f2,#$0c
0d0d: c4 f3     mov   $f3,a
0d0f: 8f 1c f2  mov   $f2,#$1c
0d12: c4 f3     mov   $f3,a
0d14: e8 20     mov   a,#$20
0d16: cf        mul   ya
0d17: 8f 2c f2  mov   $f2,#$2c
0d1a: cb f3     mov   $f3,y
0d1c: 8f 3c f2  mov   $f2,#$3c
0d1f: cb f3     mov   $f3,y
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

0d38: e4 d0     mov   a,$d0
0d3a: f0 36     beq   $0d72
0d3c: e4 d1     mov   a,$d1
0d3e: 60        clrc
0d3f: 84 d2     adc   a,$d2
0d41: fd        mov   y,a
0d42: 28 0f     and   a,#$0f
0d44: c4 d2     mov   $d2,a
0d46: dd        mov   a,y
0d47: 9f        xcn   a
0d48: 28 0f     and   a,#$0f
0d4a: c4 e2     mov   $e2,a
0d4c: e4 d0     mov   a,$d0
0d4e: 80        setc
0d4f: a4 e2     sbc   a,$e2
0d51: b0 02     bcs   $0d55
0d53: e8 00     mov   a,#$00
0d55: c4 d0     mov   $d0,a
0d57: fa a0 e6  mov   ($e6),($a0)
0d5a: d3 81 07  bbc6  $81,$0d64
0d5d: f2 a0     clr7  $a0
0d5f: e4 d0     mov   a,$d0
0d61: 3f 20 14  call  $1420
0d64: f3 81 07  bbc7  $81,$0d6e
0d67: e2 a0     set7  $a0
0d69: e4 d0     mov   a,$d0
0d6b: 3f 20 14  call  $1420
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

0d89: e4 d0     mov   a,$d0
0d8b: 68 ff     cmp   a,#$ff
0d8d: f0 32     beq   $0dc1
0d8f: e4 d1     mov   a,$d1
0d91: 60        clrc
0d92: 84 d2     adc   a,$d2
0d94: fd        mov   y,a
0d95: 28 0f     and   a,#$0f
0d97: c4 d2     mov   $d2,a
0d99: dd        mov   a,y
0d9a: 9f        xcn   a
0d9b: 28 0f     and   a,#$0f
0d9d: 60        clrc
0d9e: 84 d0     adc   a,$d0
0da0: 90 02     bcc   $0da4
0da2: e8 ff     mov   a,#$ff
0da4: c4 d0     mov   $d0,a
0da6: fa a0 e6  mov   ($e6),($a0)
0da9: d3 81 07  bbc6  $81,$0db3
0dac: f2 a0     clr7  $a0
0dae: e4 d0     mov   a,$d0
0db0: 3f 20 14  call  $1420
0db3: f3 81 07  bbc7  $81,$0dbd
0db6: e2 a0     set7  $a0
0db8: e4 d0     mov   a,$d0
0dba: 3f 20 14  call  $1420
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
0e24: 5f 14 22  jmp   $2214

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
0e54: 5f 14 22  jmp   $2214

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
0e8f: b3 e0 03  bbc5  $e0,$0e95
0e92: 3f 6e 0f  call  $0f6e
0e95: f3 e0 03  bbc7  $e0,$0e9b
0e98: 3f bb 0e  call  $0ebb
0e9b: d3 e0 06  bbc6  $e0,$0ea4
0e9e: 3f 14 22  call  $2214
0ea1: 3f 14 0f  call  $0f14
0ea4: 93 e0 03  bbc4  $e0,$0eaa
0ea7: 3f 11 10  call  $1011
0eaa: 60        clrc
0eab: 98 20 86  adc   $86,#$20
0eae: 98 00 87  adc   $87,#$00
0eb1: ab 84     inc   $84
0eb3: 3f 14 22  call  $2214
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
0f0b: 3f 48 10  call  $1048
0f0e: 5f c6 0e  jmp   $0ec6

0f11: 5f 14 22  jmp   $2214

0f14: fa e1 98  mov   ($98),($e1)
0f17: cd 00     mov   x,#$00
0f19: 4b 98     lsr   $98
0f1b: b0 0a     bcs   $0f27
0f1d: f0 4c     beq   $0f6b
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
0f47: e3 a0 05  bbs7  $a0,$0f4f
0f4a: e4 de     mov   a,$de
0f4c: 5f 51 0f  jmp   $0f51

0f4f: e4 df     mov   a,$df
0f51: cf        mul   ya
0f52: 3f 96 11  call  $1196
0f55: da e4     movw  $e4,ya
0f57: ba e4     movw  ya,$e4
0f59: d4 03     mov   $03+x,a
0f5b: db 04     mov   $04+x,y
0f5d: 3f 0d 12  call  $120d
0f60: 7d        mov   a,x
0f61: 60        clrc
0f62: 88 10     adc   a,#$10
0f64: 5d        mov   x,a
0f65: 4b 98     lsr   $98
0f67: b0 ee     bcs   $0f57
0f69: d0 f5     bne   $0f60
0f6b: 5f 14 22  jmp   $2214

0f6e: fa e1 98  mov   ($98),($e1)
0f71: cd 00     mov   x,#$00
0f73: 4b 98     lsr   $98
0f75: b0 0d     bcs   $0f84
0f77: f0 08     beq   $0f81
0f79: 7d        mov   a,x
0f7a: 60        clrc
0f7b: 88 10     adc   a,#$10
0f7d: 5d        mov   x,a
0f7e: 5f 73 0f  jmp   $0f73

0f81: 5f 14 22  jmp   $2214

0f84: 4d        push  x
0f85: 3d        inc   x
0f86: 3d        inc   x
0f87: 3d        inc   x
0f88: 3d        inc   x
0f89: 8d 07     mov   y,#$07
0f8b: f7 86     mov   a,($86)+y
0f8d: 68 40     cmp   a,#$40
0f8f: 90 0a     bcc   $0f9b
0f91: 68 50     cmp   a,#$50
0f93: 0d        push  psw
0f94: 28 01     and   a,#$01
0f96: 8e        pop   psw
0f97: b0 02     bcs   $0f9b
0f99: bc        inc   a
0f9a: bc        inc   a
0f9b: 68 05     cmp   a,#$05
0f9d: d0 52     bne   $0ff1
0f9f: 8d 0e     mov   y,#$0e
0fa1: f7 86     mov   a,($86)+y
0fa3: 68 2d     cmp   a,#$2d
0fa5: 90 1c     bcc   $0fc3
0fa7: 68 3e     cmp   a,#$3e
0fa9: 90 14     bcc   $0fbf
0fab: 68 53     cmp   a,#$53
0fad: 90 0c     bcc   $0fbb
0faf: 68 5d     cmp   a,#$5d
0fb1: 90 04     bcc   $0fb7
0fb3: e8 06     mov   a,#$06
0fb5: 2f 0e     bra   $0fc5
0fb7: e8 07     mov   a,#$07
0fb9: 2f 0a     bra   $0fc5
0fbb: e8 08     mov   a,#$08
0fbd: 2f 06     bra   $0fc5
0fbf: e8 09     mov   a,#$09
0fc1: 2f 02     bra   $0fc5
0fc3: e8 0a     mov   a,#$0a
0fc5: 2d        push  a
0fc6: 8f 04 e3  mov   $e3,#$04
0fc9: 1c        asl   a
0fca: 1c        asl   a
0fcb: c4 e2     mov   $e2,a
0fcd: 8d 00     mov   y,#$00
0fcf: f7 e2     mov   a,($e2)+y
0fd1: 8d 0f     mov   y,#$0f
0fd3: d7 86     mov   ($86)+y,a
0fd5: 8d 01     mov   y,#$01
0fd7: f7 e2     mov   a,($e2)+y
0fd9: 8d 08     mov   y,#$08
0fdb: d7 86     mov   ($86)+y,a
0fdd: 8d 02     mov   y,#$02
0fdf: f7 e2     mov   a,($e2)+y
0fe1: 8d 09     mov   y,#$09
0fe3: d7 86     mov   ($86)+y,a
0fe5: 8d 03     mov   y,#$03
0fe7: f7 e2     mov   a,($e2)+y
0fe9: 80        setc
0fea: a8 40     sbc   a,#$40
0fec: 8d 12     mov   y,#$12
0fee: d7 86     mov   ($86)+y,a
0ff0: ae        pop   a
0ff1: d8 f2     mov   $f2,x
0ff3: c4 f3     mov   $f3,a             ; set SRCN
0ff5: 3d        inc   x
0ff6: 8d 08     mov   y,#$08
0ff8: f7 86     mov   a,($86)+y
0ffa: d8 f2     mov   $f2,x
0ffc: c4 f3     mov   $f3,a             ; set ADSR(1)
0ffe: 3d        inc   x
0fff: 8d 09     mov   y,#$09
1001: f7 86     mov   a,($86)+y
1003: d8 f2     mov   $f2,x
1005: c4 f3     mov   $f3,a             ; set ADSR(2)
1007: 3d        inc   x
1008: d8 f2     mov   $f2,x
100a: 8f b8 f3  mov   $f3,#$b8          ; set GAIN
100d: ce        pop   x
100e: 5f 79 0f  jmp   $0f79

1011: fa e1 98  mov   ($98),($e1)
1014: cd 00     mov   x,#$00
1016: 4b 98     lsr   $98
1018: b0 0a     bcs   $1024
101a: f0 29     beq   $1045
101c: 7d        mov   a,x
101d: 60        clrc
101e: 88 08     adc   a,#$08
1020: 5d        mov   x,a
1021: 5f 16 10  jmp   $1016

1024: 8d 1c     mov   y,#$1c
1026: f7 86     mov   a,($86)+y
1028: d5 02 01  mov   $0102+x,a
102b: 8d 1d     mov   y,#$1d
102d: f7 86     mov   a,($86)+y
102f: d5 03 01  mov   $0103+x,a
1032: 8d 1e     mov   y,#$1e
1034: f7 86     mov   a,($86)+y
1036: 40        setp
1037: d4 04     mov   $04+x,a
1039: e8 80     mov   a,#$80
103b: d4 06     mov   $06+x,a
103d: e8 00     mov   a,#$00
103f: d4 05     mov   $05+x,a
1041: 20        clrp
1042: 5f 1c 10  jmp   $101c

1045: 5f 14 22  jmp   $2214

1048: d8 85     mov   $85,x
104a: f4 0a     mov   a,$0a+x
104c: d0 0e     bne   $105c
104e: f4 08     mov   a,$08+x
1050: 1c        asl   a
1051: 5d        mov   x,a
1052: f5 69 08  mov   a,$0869+x
1055: fd        mov   y,a
1056: f5 68 08  mov   a,$0868+x
1059: 5f e8 10  jmp   $10e8

105c: 8f ff e6  mov   $e6,#$ff
105f: 8f 05 e5  mov   $e5,#$05
1062: 8f 55 e4  mov   $e4,#$55
1065: 30 3e     bmi   $10a5
1067: fd        mov   y,a
1068: e8 00     mov   a,#$00
106a: ab e6     inc   $e6
106c: 9a e4     subw  ya,$e4
106e: b0 fa     bcs   $106a
1070: 7a e4     addw  ya,$e4
1072: 6d        push  y
1073: f4 08     mov   a,$08+x
1075: 60        clrc
1076: 84 e6     adc   a,$e6
1078: 68 5f     cmp   a,#$5f
107a: 90 06     bcc   $1082
107c: 80        setc
107d: a8 0c     sbc   a,#$0c
107f: 5f 78 10  jmp   $1078

1082: 2d        push  a
1083: 1c        asl   a
1084: 5d        mov   x,a
1085: f5 69 08  mov   a,$0869+x
1088: fd        mov   y,a
1089: f5 68 08  mov   a,$0868+x
108c: da e4     movw  $e4,ya
108e: ae        pop   a
108f: bc        inc   a
1090: 1c        asl   a
1091: 5d        mov   x,a
1092: f5 69 08  mov   a,$0869+x
1095: fd        mov   y,a
1096: f5 68 08  mov   a,$0868+x
1099: 9a e4     subw  ya,$e4
109b: cd 05     mov   x,#$05
109d: 9e        div   ya,x
109e: ee        pop   y
109f: cf        mul   ya
10a0: 7a e4     addw  ya,$e4
10a2: 5f e8 10  jmp   $10e8

10a5: 48 ff     eor   a,#$ff
10a7: bc        inc   a
10a8: fd        mov   y,a
10a9: e8 00     mov   a,#$00
10ab: ab e6     inc   $e6
10ad: 9a e4     subw  ya,$e4
10af: b0 fa     bcs   $10ab
10b1: 7a e4     addw  ya,$e4
10b3: 6d        push  y
10b4: f4 08     mov   a,$08+x
10b6: 9c        dec   a
10b7: 80        setc
10b8: a4 e6     sbc   a,$e6
10ba: 10 06     bpl   $10c2
10bc: 60        clrc
10bd: 88 0c     adc   a,#$0c
10bf: 5f ba 10  jmp   $10ba

10c2: 2d        push  a
10c3: 1c        asl   a
10c4: 5d        mov   x,a
10c5: f5 69 08  mov   a,$0869+x
10c8: fd        mov   y,a
10c9: f5 68 08  mov   a,$0868+x
10cc: da e4     movw  $e4,ya
10ce: ae        pop   a
10cf: bc        inc   a
10d0: 1c        asl   a
10d1: 5d        mov   x,a
10d2: f5 69 08  mov   a,$0869+x
10d5: fd        mov   y,a
10d6: f5 68 08  mov   a,$0868+x
10d9: da e6     movw  $e6,ya
10db: 9a e4     subw  ya,$e4
10dd: cd 05     mov   x,#$05
10df: 9e        div   ya,x
10e0: ee        pop   y
10e1: cf        mul   ya
10e2: da e4     movw  $e4,ya
10e4: ba e6     movw  ya,$e6
10e6: 9a e4     subw  ya,$e4
10e8: da e4     movw  $e4,ya
10ea: 3f 14 22  call  $2214
10ed: f8 85     mov   x,$85
10ef: f4 09     mov   a,$09+x
10f1: d0 05     bne   $10f8
10f3: ba e4     movw  ya,$e4
10f5: 5f 72 11  jmp   $1172

10f8: 30 3a     bmi   $1134
10fa: 2d        push  a
10fb: f4 08     mov   a,$08+x
10fd: bc        inc   a
10fe: bc        inc   a
10ff: 1c        asl   a
1100: 5d        mov   x,a
1101: f5 69 08  mov   a,$0869+x
1104: fd        mov   y,a
1105: f5 68 08  mov   a,$0868+x
1108: 9a e4     subw  ya,$e4
110a: cb e7     mov   $e7,y
110c: 4b e7     lsr   $e7
110e: 7c        ror   a
110f: 6b e7     ror   $e7
1111: 7c        ror   a
1112: 6b e7     ror   $e7
1114: fd        mov   y,a
1115: e4 e7     mov   a,$e7
1117: 28 c0     and   a,#$c0
1119: cd 80     mov   x,#$80
111b: 9e        div   ya,x
111c: ee        pop   y
111d: cf        mul   ya
111e: 8f 00 e7  mov   $e7,#$00
1121: cb e6     mov   $e6,y
1123: 1c        asl   a
1124: 2b e6     rol   $e6
1126: 2b e7     rol   $e7
1128: 1c        asl   a
1129: 2b e6     rol   $e6
112b: 2b e7     rol   $e7
112d: ba e6     movw  ya,$e6
112f: 7a e4     addw  ya,$e4
1131: 5f 72 11  jmp   $1172

1134: 48 ff     eor   a,#$ff
1136: bc        inc   a
1137: 2d        push  a
1138: f4 08     mov   a,$08+x
113a: 9c        dec   a
113b: 9c        dec   a
113c: 1c        asl   a
113d: 5d        mov   x,a
113e: f5 69 08  mov   a,$0869+x
1141: fd        mov   y,a
1142: f5 68 08  mov   a,$0868+x
1145: da e6     movw  $e6,ya
1147: ba e4     movw  ya,$e4
1149: 9a e6     subw  ya,$e6
114b: cb e7     mov   $e7,y
114d: 4b e7     lsr   $e7
114f: 7c        ror   a
1150: 6b e7     ror   $e7
1152: 7c        ror   a
1153: 6b e7     ror   $e7
1155: fd        mov   y,a
1156: e4 e7     mov   a,$e7
1158: 28 c0     and   a,#$c0
115a: cd 80     mov   x,#$80
115c: 9e        div   ya,x
115d: ee        pop   y
115e: cf        mul   ya
115f: 8f 00 e7  mov   $e7,#$00
1162: cb e6     mov   $e6,y
1164: 1c        asl   a
1165: 2b e6     rol   $e6
1167: 2b e7     rol   $e7
1169: 1c        asl   a
116a: 2b e6     rol   $e6
116c: 2b e7     rol   $e7
116e: ba e4     movw  ya,$e4
1170: 9a e6     subw  ya,$e6
1172: ad 40     cmp   y,#$40
1174: 90 09     bcc   $117f
1176: cb e4     mov   $e4,y
1178: 4b e4     lsr   $e4
117a: 7c        ror   a
117b: eb e4     mov   y,$e4
117d: 2f f3     bra   $1172
117f: f8 85     mov   x,$85
1181: d4 0e     mov   $0e+x,a
1183: db 0f     mov   $0f+x,y
1185: 3d        inc   x
1186: 3d        inc   x
1187: d8 f2     mov   $f2,x
1189: c4 f3     mov   $f3,a             ; P(L)
118b: 3d        inc   x
118c: d8 f2     mov   $f2,x
118e: cb f3     mov   $f3,y             ; P(H)
1190: 3f 14 22  call  $2214
1193: f8 85     mov   x,$85
1195: 6f        ret

1196: dd        mov   a,y
1197: 33 80 03  bbc1  $80,$119d
119a: 5c        lsr   a
119b: fd        mov   y,a
119c: 6f        ret

119d: c4 e6     mov   $e6,a
119f: 4d        push  x
11a0: 3f 14 22  call  $2214
11a3: ce        pop   x
11a4: 8d 1a     mov   y,#$1a
11a6: f7 86     mov   a,($86)+y
11a8: c4 e2     mov   $e2,a
11aa: 8d 1b     mov   y,#$1b
11ac: f7 86     mov   a,($86)+y
11ae: c4 e3     mov   $e3,a
11b0: 68 40     cmp   a,#$40
11b2: d0 0b     bne   $11bf
11b4: fa e2 e4  mov   ($e4),($e2)
11b7: e8 7f     mov   a,#$7f
11b9: 80        setc
11ba: a4 e2     sbc   a,$e2
11bc: 5f ff 11  jmp   $11ff

11bf: 80        setc
11c0: a8 40     sbc   a,#$40
11c2: 10 03     bpl   $11c7
11c4: 48 ff     eor   a,#$ff
11c6: bc        inc   a
11c7: c4 e4     mov   $e4,a
11c9: e8 40     mov   a,#$40
11cb: 80        setc
11cc: a4 e4     sbc   a,$e4
11ce: fd        mov   y,a
11cf: e4 e2     mov   a,$e2
11d1: 80        setc
11d2: a8 40     sbc   a,#$40
11d4: 30 0d     bmi   $11e3
11d6: cf        mul   ya
11d7: cb e5     mov   $e5,y
11d9: 3c        rol   a
11da: 2b e5     rol   $e5
11dc: 3c        rol   a
11dd: e4 e5     mov   a,$e5
11df: 3c        rol   a
11e0: 5f f3 11  jmp   $11f3

11e3: 48 ff     eor   a,#$ff
11e5: bc        inc   a
11e6: cf        mul   ya
11e7: cb e5     mov   $e5,y
11e9: 3c        rol   a
11ea: 2b e5     rol   $e5
11ec: 3c        rol   a
11ed: e4 e5     mov   a,$e5
11ef: 3c        rol   a
11f0: 48 ff     eor   a,#$ff
11f2: bc        inc   a
11f3: 60        clrc
11f4: 84 e3     adc   a,$e3
11f6: c4 e5     mov   $e5,a
11f8: c4 e4     mov   $e4,a
11fa: e8 80     mov   a,#$80
11fc: 80        setc
11fd: a4 e5     sbc   a,$e5
11ff: 1c        asl   a
1200: eb e6     mov   y,$e6
1202: cf        mul   ya
1203: 6d        push  y
1204: e4 e4     mov   a,$e4
1206: 1c        asl   a
1207: eb e6     mov   y,$e6
1209: cf        mul   ya
120a: dd        mov   a,y
120b: ee        pop   y
120c: 6f        ret

120d: f4 01     mov   a,$01+x
120f: 68 0e     cmp   a,#$0e
1211: 90 05     bcc   $1218
1213: e8 ff     mov   a,#$ff
1215: 5f 30 12  jmp   $1230

1218: 8d 00     mov   y,#$00
121a: f4 07     mov   a,$07+x
121c: 80        setc
121d: a8 18     sbc   a,#$18
121f: 90 0c     bcc   $122d
1221: 4d        push  x
1222: cd 03     mov   x,#$03
1224: 9e        div   ya,x
1225: ce        pop   x
1226: fd        mov   y,a
1227: ad 20     cmp   y,#$20
1229: 90 02     bcc   $122d
122b: 8d 20     mov   y,#$20
122d: f6 c0 01  mov   a,$01c0+y
1230: fb 06     mov   y,$06+x
1232: cf        mul   ya
1233: f4 05     mov   a,$05+x
1235: cf        mul   ya
1236: cb e2     mov   $e2,y
1238: e6        mov   a,(x)
1239: c4 e3     mov   $e3,a
123b: f4 04     mov   a,$04+x
123d: cf        mul   ya
123e: cb e6     mov   $e6,y
1240: dd        mov   a,y
1241: 5c        lsr   a
1242: f3 a0 07  bbc7  $a0,$124c
1245: 1c        asl   a
1246: 68 80     cmp   a,#$80
1248: 90 02     bcc   $124c
124a: e8 7f     mov   a,#$7f
124c: 23 80 09  bbs1  $80,$1258
124f: 63 80 06  bbs3  $80,$1258
1252: b3 e3 03  bbc5  $e3,$1258
1255: 48 ff     eor   a,#$ff
1257: bc        inc   a
1258: 2d        push  a
1259: eb e2     mov   y,$e2
125b: f4 03     mov   a,$03+x
125d: cf        mul   ya
125e: cb e7     mov   $e7,y
1260: dd        mov   a,y
1261: 5c        lsr   a
1262: f3 a0 07  bbc7  $a0,$126c
1265: 1c        asl   a
1266: 68 80     cmp   a,#$80
1268: 90 02     bcc   $126c
126a: e8 7f     mov   a,#$7f
126c: 23 80 09  bbs1  $80,$1278
126f: 63 80 06  bbs3  $80,$1278
1272: d3 e3 03  bbc6  $e3,$1278
1275: 48 ff     eor   a,#$ff
1277: bc        inc   a
1278: ee        pop   y
1279: d4 0b     mov   $0b+x,a
127b: db 0c     mov   $0c+x,y
127d: d8 f2     mov   $f2,x
127f: c4 f3     mov   $f3,a             ; VOL(L)
1281: 3d        inc   x
1282: d8 f2     mov   $f2,x
1284: cb f3     mov   $f3,y             ; VOL(R)
1286: 1d        dec   x
1287: e4 e6     mov   a,$e6
1289: 60        clrc
128a: 84 e7     adc   a,$e7
128c: 7c        ror   a
128d: d4 0d     mov   $0d+x,a
128f: 4d        push  x
1290: 3f 14 22  call  $2214
1293: ce        pop   x
1294: 6f        ret

1295: cd 00     mov   x,#$00
1297: e6        mov   a,(x)
1298: 30 0a     bmi   $12a4
129a: 7d        mov   a,x
129b: 60        clrc
129c: 88 10     adc   a,#$10
129e: 5d        mov   x,a
129f: 10 f6     bpl   $1297
12a1: 5f 14 22  jmp   $2214

12a4: 7c        ror   a
12a5: 90 f3     bcc   $129a
12a7: f4 01     mov   a,$01+x
12a9: f3 a0 07  bbc7  $a0,$12b3
12ac: 68 0e     cmp   a,#$0e
12ae: b0 07     bcs   $12b7
12b0: 5f 9a 12  jmp   $129a

12b3: 68 0e     cmp   a,#$0e
12b5: b0 e3     bcs   $129a
12b7: d8 e5     mov   $e5,x
12b9: 3f 14 22  call  $2214
12bc: f8 e5     mov   x,$e5
12be: 40        setp
12bf: 7d        mov   a,x
12c0: 5c        lsr   a
12c1: 5d        mov   x,a
12c2: f4 02     mov   a,$02+x
12c4: f0 09     beq   $12cf
12c6: 9c        dec   a
12c7: d4 02     mov   $02+x,a
12c9: 20        clrp
12ca: f8 e5     mov   x,$e5
12cc: 5f 9a 12  jmp   $129a

12cf: 40        setp
12d0: f4 04     mov   a,$04+x
12d2: 60        clrc
12d3: 94 06     adc   a,$06+x
12d5: 80        setc
12d6: a8 a0     sbc   a,#$a0
12d8: 90 0e     bcc   $12e8
12da: 60        clrc
12db: 88 80     adc   a,#$80
12dd: d4 06     mov   $06+x,a
12df: f4 03     mov   a,$03+x
12e1: 48 80     eor   a,#$80
12e3: d4 03     mov   $03+x,a
12e5: 5f ed 12  jmp   $12ed

12e8: 60        clrc
12e9: 88 a0     adc   a,#$a0
12eb: d4 06     mov   $06+x,a
12ed: f4 03     mov   a,$03+x
12ef: 28 7f     and   a,#$7f
12f1: 74 05     cmp   a,$05+x
12f3: f0 18     beq   $130d
12f5: fb 05     mov   y,$05+x
12f7: 20        clrp
12f8: c4 e2     mov   $e2,a
12fa: 5c        lsr   a
12fb: 5c        lsr   a
12fc: 5c        lsr   a
12fd: bc        inc   a
12fe: c4 e3     mov   $e3,a
1300: dd        mov   a,y
1301: 60        clrc
1302: 84 e3     adc   a,$e3
1304: 64 e2     cmp   a,$e2
1306: 90 02     bcc   $130a
1308: e4 e2     mov   a,$e2
130a: 40        setp
130b: d4 05     mov   $05+x,a
130d: f4 06     mov   a,$06+x
130f: 4d        push  x
1310: 5d        mov   x,a
1311: e6        mov   a,(x)
1312: ce        pop   x
1313: fb 05     mov   y,$05+x
1315: cf        mul   ya
1316: fc        inc   y
1317: dd        mov   a,y
1318: fb 03     mov   y,$03+x
131a: 30 09     bmi   $1325
131c: 20        clrp
131d: 8f 00 e3  mov   $e3,#$00
1320: c4 e2     mov   $e2,a
1322: 5f 2e 13  jmp   $132e

1325: 20        clrp
1326: 8f ff e3  mov   $e3,#$ff
1329: 48 ff     eor   a,#$ff
132b: bc        inc   a
132c: c4 e2     mov   $e2,a
132e: f8 e5     mov   x,$e5
1330: f4 0e     mov   a,$0e+x
1332: fb 0f     mov   y,$0f+x
1334: 7a e2     addw  ya,$e2
1336: 3d        inc   x
1337: 3d        inc   x
1338: d8 f2     mov   $f2,x
133a: c4 f3     mov   $f3,a             ; P(L)
133c: 3d        inc   x
133d: d8 f2     mov   $f2,x
133f: cb f3     mov   $f3,y             ; P(H)
1341: 1d        dec   x
1342: 1d        dec   x
1343: 1d        dec   x
1344: 5f 9a 12  jmp   $129a

1347: cd 00     mov   x,#$00
1349: e6        mov   a,(x)
134a: 3c        rol   a
134b: 90 03     bcc   $1350
134d: 7c        ror   a
134e: 7c        ror   a
134f: 7c        ror   a
1350: 6b e0     ror   $e0
1352: 7d        mov   a,x
1353: 60        clrc
1354: 88 10     adc   a,#$10
1356: 5d        mov   x,a
1357: 10 f0     bpl   $1349
1359: 8f 4d f2  mov   $f2,#$4d
135c: fa e0 f3  mov   ($f3),($e0)       ; EON
135f: 6f        ret

1360: 23 80 39  bbs1  $80,$139c
1363: e4 9f     mov   a,$9f
1365: 68 05     cmp   a,#$05
1367: 90 33     bcc   $139c
1369: f0 0a     beq   $1375
136b: 8f 20 e2  mov   $e2,#$20
136e: e8 20     mov   a,#$20
1370: 8f 01 9f  mov   $9f,#$01
1373: 2f 1c     bra   $1391
1375: e5 50 01  mov   a,$0150
1378: ac 50 01  inc   $0150
137b: 1c        asl   a
137c: fd        mov   y,a
137d: f6 9d 13  mov   a,$139d+y
1380: c4 e2     mov   $e2,a
1382: f6 9e 13  mov   a,$139e+y
1385: 68 7f     cmp   a,#$7f
1387: d0 08     bne   $1391
1389: e8 00     mov   a,#$00
138b: c5 50 01  mov   $0150,a
138e: 5f 75 13  jmp   $1375

1391: 8f 2c f2  mov   $f2,#$2c
1394: fa e2 f3  mov   ($f3),($e2)       ; EVOL(L)
1397: 8f 3c f2  mov   $f2,#$3c
139a: c4 f3     mov   $f3,a             ; EVOL(R)
139c: 6f        ret

139d: db $28,$08
139f: db $20,$10
13a1: db $18,$18
13a3: db $10,$20
13a5: db $08,$28
13a7: db $10,$20
13a9: db $18,$18
13ab: db $20,$10
13ad: db $7f,$7f

13af: e8 00     mov   a,#$00
13b1: c5 50 01  mov   $0150,a
13b4: e4 9f     mov   a,$9f
13b6: f0 0c     beq   $13c4
13b8: 23 80 07  bbs1  $80,$13c2
13bb: 73 80 06  bbc3  $80,$13c4
13be: 68 05     cmp   a,#$05
13c0: b0 02     bcs   $13c4
13c2: e8 01     mov   a,#$01
13c4: 1c        asl   a
13c5: fd        mov   y,a
13c6: f6 d7 13  mov   a,$13d7+y
13c9: 8f 2c f2  mov   $f2,#$2c
13cc: c4 f3     mov   $f3,a             ; EVOL(L)
13ce: f6 d8 13  mov   a,$13d8+y
13d1: 8f 3c f2  mov   $f2,#$3c
13d4: c4 f3     mov   $f3,a             ; EVOL(R)
13d6: 6f        ret

13d7: db $00,$00
13d9: db $20,$20
13db: db $e0,$20
13dd: db $20,$e0
13df: db $e0,$e0

13e1: 28 08     and   a,#$08
13e3: 8f 08 e0  mov   $e0,#$08
13e6: 8f 0f e1  mov   $e1,#$0f
13e9: e4 93     mov   a,$93
13eb: 1c        asl   a
13ec: 1c        asl   a
13ed: 1c        asl   a
13ee: fd        mov   y,a
13ef: fa e1 f2  mov   ($f2),($e1)
13f2: f6 00 14  mov   a,$1400+y
13f5: c4 f3     mov   $f3,a             ; set C0-C7
13f7: 60        clrc
13f8: 98 10 e1  adc   $e1,#$10
13fb: fc        inc   y
13fc: 6e e0 f0  dbnz  $e0,$13ef
13ff: 6f        ret

1400: db $ff,$08,$17,$24,$24,$17,$08,$ff
1408: db $7f,$00,$00,$00,$00,$00,$00,$00
1410: db $0d,$22,$22,$24,$11,$f0,$03,$ff
1418: db $10,$30,$22,$24,$11,$f0,$20,$ff

1420: c4 e7     mov   $e7,a
1422: e3 a0 0b  bbs7  $a0,$1430
1425: 8f 00 86  mov   $86,#$00
1428: 8f 02 87  mov   $87,#$02
142b: cd 0e     mov   x,#$0e
142d: 5f 38 14  jmp   $1438

1430: 8f c0 86  mov   $86,#$c0
1433: 8f 03 87  mov   $87,#$03
1436: cd 02     mov   x,#$02
1438: e4 e7     mov   a,$e7
143a: 8d 19     mov   y,#$19
143c: d7 86     mov   ($86)+y,a
143e: 8d 1f     mov   y,#$1f
1440: f7 86     mov   a,($86)+y
1442: 08 40     or    a,#$40
1444: d7 86     mov   ($86)+y,a
1446: 60        clrc
1447: 98 20 86  adc   $86,#$20
144a: 98 00 87  adc   $87,#$00
144d: 1d        dec   x
144e: d0 e8     bne   $1438
1450: 6f        ret

1451: 78 0c 84  cmp   $84,#$0c
1454: b0 1a     bcs   $1470
1456: cd 00     mov   x,#$00
1458: 8f ff e0  mov   $e0,#$ff
145b: e6        mov   a,(x)
145c: 10 11     bpl   $146f
145e: f4 01     mov   a,$01+x
1460: 68 0e     cmp   a,#$0e
1462: b0 02     bcs   $1466
1464: d8 e0     mov   $e0,x
1466: 7d        mov   a,x
1467: 60        clrc
1468: 88 10     adc   a,#$10
146a: 5d        mov   x,a
146b: 10 ee     bpl   $145b
146d: f8 e0     mov   x,$e0
146f: 6f        ret

1470: cd ff     mov   x,#$ff
1472: d8 e0     mov   $e0,x
1474: d8 e1     mov   $e1,x
1476: d8 e2     mov   $e2,x
1478: d8 e3     mov   $e3,x
147a: d8 e4     mov   $e4,x
147c: 3d        inc   x
147d: e6        mov   a,(x)
147e: 30 05     bmi   $1485
1480: d8 e4     mov   $e4,x
1482: 5f 93 14  jmp   $1493

1485: f4 01     mov   a,$01+x
1487: 68 0e     cmp   a,#$0e
1489: f0 1a     beq   $14a5
148b: b0 10     bcs   $149d
148d: 68 0c     cmp   a,#$0c
148f: f0 21     beq   $14b2
1491: b0 1a     bcs   $14ad
1493: 7d        mov   a,x
1494: 60        clrc
1495: 88 10     adc   a,#$10
1497: 5d        mov   x,a
1498: 10 e3     bpl   $147d
149a: 5f b7 14  jmp   $14b7

149d: d8 e0     mov   $e0,x
149f: 78 0f 84  cmp   $84,#$0f
14a2: d0 ef     bne   $1493
14a4: 6f        ret

14a5: d8 e1     mov   $e1,x
14a7: 78 0e 84  cmp   $84,#$0e
14aa: d0 e7     bne   $1493
14ac: 6f        ret

14ad: d8 e2     mov   $e2,x
14af: 5f 93 14  jmp   $1493

14b2: d8 e3     mov   $e3,x
14b4: 5f 93 14  jmp   $1493

14b7: e4 84     mov   a,$84
14b9: 68 0d     cmp   a,#$0d
14bb: f0 16     beq   $14d3
14bd: 68 0e     cmp   a,#$0e
14bf: f0 37     beq   $14f8
14c1: 68 0f     cmp   a,#$0f
14c3: f0 1c     beq   $14e1
14c5: f8 e0     mov   x,$e0
14c7: 30 07     bmi   $14d0
14c9: f8 e1     mov   x,$e1
14cb: 30 03     bmi   $14d0
14cd: cd ff     mov   x,#$ff
14cf: 6f        ret

14d0: f8 e4     mov   x,$e4
14d2: 6f        ret

14d3: f8 e0     mov   x,$e0
14d5: 10 07     bpl   $14de
14d7: f8 e1     mov   x,$e1
14d9: 10 03     bpl   $14de
14db: f8 e4     mov   x,$e4
14dd: 6f        ret

14de: cd ff     mov   x,#$ff
14e0: 6f        ret

14e1: f8 e2     mov   x,$e2
14e3: 10 12     bpl   $14f7
14e5: f8 e3     mov   x,$e3
14e7: 10 0e     bpl   $14f7
14e9: f8 e4     mov   x,$e4
14eb: 10 0a     bpl   $14f7
14ed: cd 70     mov   x,#$70
14ef: e8 0e     mov   a,#$0e
14f1: 74 01     cmp   a,$01+x
14f3: d0 02     bne   $14f7
14f5: cd 60     mov   x,#$60
14f7: 6f        ret

14f8: f8 e2     mov   x,$e2
14fa: 10 12     bpl   $150e
14fc: f8 e3     mov   x,$e3
14fe: 10 0e     bpl   $150e
1500: f8 e4     mov   x,$e4
1502: 10 0a     bpl   $150e
1504: cd 70     mov   x,#$70
1506: e8 0f     mov   a,#$0f
1508: 74 01     cmp   a,$01+x
150a: d0 02     bne   $150e
150c: cd 60     mov   x,#$60
150e: 6f        ret

150f: 8d 03     mov   y,#$03
1511: f7 86     mov   a,($86)+y
1513: c4 a2     mov   $a2,a
1515: 8d 04     mov   y,#$04
1517: f7 86     mov   a,($86)+y
1519: c4 a3     mov   $a3,a             ; score pointer $a2/3
151b: 8d 00     mov   y,#$00
151d: f7 a2     mov   a,($a2)+y         ; read first byte
151f: 10 03     bpl   $1524
1521: 5f 9e 16  jmp   $169e

; vcmd 00-7f
1524: c4 e1     mov   $e1,a
1526: 3f ec 09  call  $09ec
1529: e4 98     mov   a,$98
152b: f0 16     beq   $1543
152d: cd 00     mov   x,#$00
152f: 6b 98     ror   $98
1531: 90 09     bcc   $153c
1533: f4 07     mov   a,$07+x
1535: 64 e1     cmp   a,$e1
1537: d0 03     bne   $153c
1539: 5f 5c 16  jmp   $165c

153c: 7d        mov   a,x
153d: 60        clrc
153e: 88 10     adc   a,#$10
1540: 5d        mov   x,a
1541: 10 ec     bpl   $152f
1543: 8d 1f     mov   y,#$1f
1545: f7 86     mov   a,($86)+y
1547: 08 f0     or    a,#$f0
1549: d7 86     mov   ($86)+y,a
154b: 8d 00     mov   y,#$00
154d: f7 a2     mov   a,($a2)+y
154f: 8d 0e     mov   y,#$0e
1551: d7 86     mov   ($86)+y,a
1553: 8d 01     mov   y,#$01
1555: f7 a2     mov   a,($a2)+y
1557: 8d 06     mov   y,#$06
1559: d7 86     mov   ($86)+y,a
155b: e8 00     mov   a,#$00
155d: 53 80 07  bbc2  $80,$1567
1560: 3f 57 0a  call  $0a57
1563: 28 03     and   a,#$03
1565: 9c        dec   a
1566: 9c        dec   a
1567: 8d 10     mov   y,#$10
1569: d7 86     mov   ($86)+y,a
156b: 3f 51 14  call  $1451
156e: 10 03     bpl   $1573
1570: 5f 57 16  jmp   $1657

1573: 8d 02     mov   y,#$02
1575: f7 a2     mov   a,($a2)+y
1577: bc        inc   a
1578: d4 02     mov   $02+x,a
157a: 8d 03     mov   y,#$03
157c: f7 a2     mov   a,($a2)+y
157e: d4 05     mov   $05+x,a
1580: 8d 00     mov   y,#$00
1582: f7 86     mov   a,($86)+y
1584: d4 00     mov   $00+x,a
1586: 7c        ror   a
1587: 7c        ror   a
1588: 7c        ror   a
1589: e8 c0     mov   a,#$c0
158b: 90 05     bcc   $1592
158d: 3f 57 0a  call  $0a57
1590: 08 80     or    a,#$80
1592: d4 06     mov   $06+x,a
1594: 8d 00     mov   y,#$00
1596: f7 86     mov   a,($86)+y
1598: 28 10     and   a,#$10
159a: f0 4c     beq   $15e8
159c: 3f 57 0a  call  $0a57
159f: 64 cf     cmp   a,$cf
15a1: b0 36     bcs   $15d9
15a3: 28 07     and   a,#$07
15a5: a8 04     sbc   a,#$04
15a7: 30 13     bmi   $15bc
15a9: c4 e2     mov   $e2,a
15ab: 8d 06     mov   y,#$06
15ad: 60        clrc
15ae: 97 86     adc   a,($86)+y
15b0: d7 86     mov   ($86)+y,a
15b2: e4 e2     mov   a,$e2
15b4: 60        clrc
15b5: 94 02     adc   a,$02+x
15b7: d4 02     mov   $02+x,a
15b9: 5f d9 15  jmp   $15d9

15bc: 48 ff     eor   a,#$ff
15be: bc        inc   a
15bf: c4 e2     mov   $e2,a
15c1: 8d 06     mov   y,#$06
15c3: f7 86     mov   a,($86)+y
15c5: 80        setc
15c6: a4 e2     sbc   a,$e2
15c8: f0 0f     beq   $15d9
15ca: 90 0d     bcc   $15d9
15cc: d7 86     mov   ($86)+y,a
15ce: f4 02     mov   a,$02+x
15d0: 80        setc
15d1: a4 e2     sbc   a,$e2
15d3: b0 02     bcs   $15d7
15d5: e8 00     mov   a,#$00
15d7: d4 02     mov   $02+x,a
15d9: 3f 57 0a  call  $0a57
15dc: 64 c9     cmp   a,$c9
15de: b0 08     bcs   $15e8
15e0: 28 03     and   a,#$03
15e2: 9c        dec   a
15e3: 9c        dec   a
15e4: 8d 10     mov   y,#$10
15e6: d7 86     mov   ($86)+y,a
15e8: 8d 00     mov   y,#$00
15ea: f7 86     mov   a,($86)+y
15ec: 28 08     and   a,#$08
15ee: f0 35     beq   $1625
15f0: 3f 57 0a  call  $0a57
15f3: 68 c0     cmp   a,#$c0
15f5: 90 2e     bcc   $1625
15f7: 8d 1f     mov   y,#$1f
15f9: f7 86     mov   a,($86)+y
15fb: 7c        ror   a
15fc: 90 0c     bcc   $160a
15fe: 8d 06     mov   y,#$06
1600: f7 86     mov   a,($86)+y
1602: bc        inc   a
1603: d7 86     mov   ($86)+y,a
1605: bb 02     inc   $02+x
1607: 5f 1d 16  jmp   $161d

160a: f4 02     mov   a,$02+x
160c: 68 02     cmp   a,#$02
160e: 90 15     bcc   $1625
1610: 8d 06     mov   y,#$06
1612: f7 86     mov   a,($86)+y
1614: f0 0f     beq   $1625
1616: 9c        dec   a
1617: f0 0c     beq   $1625
1619: d7 86     mov   ($86)+y,a
161b: 9b 02     dec   $02+x
161d: 8d 1f     mov   y,#$1f
161f: f7 86     mov   a,($86)+y
1621: 48 01     eor   a,#$01
1623: d7 86     mov   ($86)+y,a
1625: e4 84     mov   a,$84
1627: d4 01     mov   $01+x,a
1629: 8d 0e     mov   y,#$0e
162b: f7 86     mov   a,($86)+y
162d: d4 07     mov   $07+x,a
162f: d8 e4     mov   $e4,x
1631: 7d        mov   a,x
1632: 5c        lsr   a
1633: 5d        mov   x,a
1634: 8d 11     mov   y,#$11
1636: f7 86     mov   a,($86)+y
1638: d5 00 01  mov   $0100+x,a
163b: 8d 07     mov   y,#$07
163d: f7 86     mov   a,($86)+y
163f: d5 01 01  mov   $0101+x,a
1642: f8 e4     mov   x,$e4
1644: 7d        mov   a,x
1645: 9f        xcn   a
1646: 5d        mov   x,a
1647: f4 88     mov   a,$88+x
1649: f3 a0 07  bbc7  $a0,$1653
164c: 04 c3     or    a,$c3
164e: c4 c3     mov   $c3,a
1650: 5f 57 16  jmp   $1657

1653: 04 c0     or    a,$c0
1655: c4 c0     mov   $c0,a
1657: e8 04     mov   a,#$04
1659: 5f 6f 0a  jmp   $0a6f

165c: 8d 1f     mov   y,#$1f
165e: f7 86     mov   a,($86)+y
1660: 08 40     or    a,#$40
1662: d7 86     mov   ($86)+y,a
1664: 8d 00     mov   y,#$00
1666: f7 a2     mov   a,($a2)+y
1668: 8d 0e     mov   y,#$0e
166a: d7 86     mov   ($86)+y,a
166c: 8d 01     mov   y,#$01
166e: f7 a2     mov   a,($a2)+y
1670: 8d 06     mov   y,#$06
1672: d7 86     mov   ($86)+y,a
1674: 8d 02     mov   y,#$02
1676: f7 a2     mov   a,($a2)+y
1678: bc        inc   a
1679: d4 02     mov   $02+x,a
167b: 8d 03     mov   y,#$03
167d: f7 a2     mov   a,($a2)+y
167f: d4 05     mov   $05+x,a
1681: 7d        mov   a,x
1682: 9f        xcn   a
1683: 5d        mov   x,a
1684: f4 88     mov   a,$88+x
1686: 48 ff     eor   a,#$ff
1688: f3 a0 0a  bbc7  $a0,$1695
168b: 5f 99 16  jmp   $1699

168e: 24 c3     and   a,$c3
1690: c4 c3     mov   $c3,a
1692: 5f 99 16  jmp   $1699

1695: 24 c0     and   a,$c0
1697: c4 c0     mov   $c0,a
1699: e8 04     mov   a,#$04
169b: 5f 6f 0a  jmp   $0a6f

169e: 68 fd     cmp   a,#$fd
16a0: f0 15     beq   $16b7
16a2: 80        setc
16a3: a8 90     sbc   a,#$90
16a5: 1c        asl   a
16a6: 5d        mov   x,a
16a7: 1f ac 19  jmp   ($19ac+x)

; vcmd 90
16aa: 8d 01     mov   y,#$01
16ac: f7 a2     mov   a,($a2)+y
16ae: 8d 06     mov   y,#$06
16b0: d7 86     mov   ($86)+y,a
16b2: e8 02     mov   a,#$02
16b4: 5f 6f 0a  jmp   $0a6f

; vcmd 91,fd
16b7: f3 a0 1e  bbc7  $a0,$16d8
16ba: e4 84     mov   a,$84
16bc: 68 0e     cmp   a,#$0e
16be: f0 0a     beq   $16ca
16c0: d2 a1     clr6  $a1
16c2: b2 80     clr5  $80
16c4: 8f ff b0  mov   $b0,#$ff
16c7: 5f d1 16  jmp   $16d1

16ca: f2 a1     clr7  $a1
16cc: d2 80     clr6  $80
16ce: 8f ff b1  mov   $b1,#$ff
16d1: e8 00     mov   a,#$00
16d3: 8d 00     mov   y,#$00
16d5: d7 86     mov   ($86)+y,a
16d7: 6f        ret

16d8: 8d 05     mov   y,#$05
16da: f7 86     mov   a,($86)+y
16dc: bc        inc   a
16dd: d7 86     mov   ($86)+y,a
16df: 78 00 84  cmp   $84,#$00
16e2: d0 03     bne   $16e7
16e4: 8f 01 9e  mov   $9e,#$01
16e7: 5f b2 0b  jmp   $0bb2

; vcmd 92
16ea: e4 84     mov   a,$84
16ec: 1c        asl   a
16ed: 1c        asl   a
16ee: c4 e4     mov   $e4,a
16f0: 8f 00 e2  mov   $e2,#$00
16f3: 8f 08 e3  mov   $e3,#$08
16f6: 8d 0a     mov   y,#$0a
16f8: f7 86     mov   a,($86)+y
16fa: 68 ff     cmp   a,#$ff
16fc: d0 2c     bne   $172a
16fe: 8d 05     mov   y,#$05
1700: f7 86     mov   a,($86)+y
1702: 8d 0a     mov   y,#$0a
1704: d7 86     mov   ($86)+y,a
1706: e8 ff     mov   a,#$ff
1708: 8d 0c     mov   y,#$0c
170a: d7 86     mov   ($86)+y,a
170c: 8d 03     mov   y,#$03
170e: f7 86     mov   a,($86)+y
1710: eb e4     mov   y,$e4
1712: d7 e2     mov   ($e2)+y,a
1714: 8d 04     mov   y,#$04
1716: f7 86     mov   a,($86)+y
1718: eb e4     mov   y,$e4
171a: fc        inc   y
171b: d7 e2     mov   ($e2)+y,a
171d: 78 00 84  cmp   $84,#$00
1720: d0 03     bne   $1725
1722: fa 9e c7  mov   ($c7),($9e)
1725: e8 01     mov   a,#$01
1727: 5f 6f 0a  jmp   $0a6f

172a: 8d 05     mov   y,#$05
172c: f7 86     mov   a,($86)+y
172e: 8d 0b     mov   y,#$0b
1730: d7 86     mov   ($86)+y,a
1732: e8 ff     mov   a,#$ff
1734: 8d 0d     mov   y,#$0d
1736: d7 86     mov   ($86)+y,a
1738: 8d 03     mov   y,#$03
173a: f7 86     mov   a,($86)+y
173c: eb e4     mov   y,$e4
173e: fc        inc   y
173f: fc        inc   y
1740: d7 e2     mov   ($e2)+y,a
1742: 8d 04     mov   y,#$04
1744: f7 86     mov   a,($86)+y
1746: eb e4     mov   y,$e4
1748: fc        inc   y
1749: fc        inc   y
174a: fc        inc   y
174b: d7 e2     mov   ($e2)+y,a
174d: 78 00 84  cmp   $84,#$00
1750: d0 03     bne   $1755
1752: fa 9e c8  mov   ($c8),($9e)
1755: e8 01     mov   a,#$01
1757: 5f 6f 0a  jmp   $0a6f

; vcmd 93
175a: e4 84     mov   a,$84
175c: 1c        asl   a
175d: 1c        asl   a
175e: c4 e4     mov   $e4,a
1760: 8f 00 e2  mov   $e2,#$00
1763: 8f 08 e3  mov   $e3,#$08
1766: 8d 0b     mov   y,#$0b
1768: f7 86     mov   a,($86)+y
176a: 68 ff     cmp   a,#$ff
176c: d0 54     bne   $17c2
176e: 8d 0a     mov   y,#$0a
1770: f7 86     mov   a,($86)+y
1772: 68 ff     cmp   a,#$ff
1774: f0 3d     beq   $17b3
1776: 8d 0c     mov   y,#$0c
1778: f7 86     mov   a,($86)+y
177a: f0 0f     beq   $178b
177c: 68 ff     cmp   a,#$ff
177e: d0 04     bne   $1784
1780: 8d 01     mov   y,#$01
1782: f7 a2     mov   a,($a2)+y
1784: 9c        dec   a
1785: f0 2c     beq   $17b3
1787: 8d 0c     mov   y,#$0c
1789: d7 86     mov   ($86)+y,a
178b: 8d 0a     mov   y,#$0a
178d: f7 86     mov   a,($86)+y
178f: 8d 05     mov   y,#$05
1791: d7 86     mov   ($86)+y,a
1793: eb e4     mov   y,$e4
1795: f7 e2     mov   a,($e2)+y
1797: 8d 03     mov   y,#$03
1799: d7 86     mov   ($86)+y,a
179b: eb e4     mov   y,$e4
179d: fc        inc   y
179e: f7 e2     mov   a,($e2)+y
17a0: 8d 04     mov   y,#$04
17a2: d7 86     mov   ($86)+y,a
17a4: 78 00 84  cmp   $84,#$00
17a7: d0 05     bne   $17ae
17a9: ab 9d     inc   $9d
17ab: fa c7 9e  mov   ($9e),($c7)
17ae: e8 01     mov   a,#$01
17b0: 5f 6f 0a  jmp   $0a6f

17b3: e8 ff     mov   a,#$ff
17b5: 8d 0a     mov   y,#$0a
17b7: d7 86     mov   ($86)+y,a
17b9: 8d 0c     mov   y,#$0c
17bb: d7 86     mov   ($86)+y,a
17bd: e8 02     mov   a,#$02
17bf: 5f 6f 0a  jmp   $0a6f

17c2: 8d 0d     mov   y,#$0d
17c4: f7 86     mov   a,($86)+y
17c6: f0 0f     beq   $17d7
17c8: 68 ff     cmp   a,#$ff
17ca: d0 04     bne   $17d0
17cc: 8d 01     mov   y,#$01
17ce: f7 a2     mov   a,($a2)+y
17d0: 9c        dec   a
17d1: f0 2e     beq   $1801
17d3: 8d 0d     mov   y,#$0d
17d5: d7 86     mov   ($86)+y,a
17d7: 8d 0b     mov   y,#$0b
17d9: f7 86     mov   a,($86)+y
17db: 8d 05     mov   y,#$05
17dd: d7 86     mov   ($86)+y,a
17df: eb e4     mov   y,$e4
17e1: fc        inc   y
17e2: fc        inc   y
17e3: f7 e2     mov   a,($e2)+y
17e5: 8d 03     mov   y,#$03
17e7: d7 86     mov   ($86)+y,a
17e9: eb e4     mov   y,$e4
17eb: fc        inc   y
17ec: fc        inc   y
17ed: fc        inc   y
17ee: f7 e2     mov   a,($e2)+y
17f0: 8d 04     mov   y,#$04
17f2: d7 86     mov   ($86)+y,a
17f4: 78 00 84  cmp   $84,#$00
17f7: d0 03     bne   $17fc
17f9: fa c8 9e  mov   ($9e),($c8)
17fc: e8 01     mov   a,#$01
17fe: 5f 6f 0a  jmp   $0a6f

1801: e8 ff     mov   a,#$ff
1803: 8d 0b     mov   y,#$0b
1805: d7 86     mov   ($86)+y,a
1807: 8d 0d     mov   y,#$0d
1809: d7 86     mov   ($86)+y,a
180b: e8 02     mov   a,#$02
180d: 5f 6f 0a  jmp   $0a6f

; vcmd 94
1810: 8d 01     mov   y,#$01
1812: f7 a2     mov   a,($a2)+y
1814: 8d 06     mov   y,#$06
1816: d7 86     mov   ($86)+y,a
1818: 8d 02     mov   y,#$02
181a: f7 a2     mov   a,($a2)+y
181c: 80        setc
181d: a8 40     sbc   a,#$40
181f: 8d 14     mov   y,#$14
1821: d7 86     mov   ($86)+y,a
1823: 8d 1f     mov   y,#$1f
1825: f7 86     mov   a,($86)+y
1827: 08 80     or    a,#$80
1829: d7 86     mov   ($86)+y,a
182b: e8 03     mov   a,#$03
182d: 5f 6f 0a  jmp   $0a6f

; vcmd 95
1830: 8d 01     mov   y,#$01
1832: f7 a2     mov   a,($a2)+y
1834: 8d 06     mov   y,#$06
1836: d7 86     mov   ($86)+y,a
1838: 8d 02     mov   y,#$02
183a: f7 a2     mov   a,($a2)+y
183c: c4 91     mov   $91,a
183e: 3f 7c 0b  call  $0b7c
1841: e8 03     mov   a,#$03
1843: 5f 6f 0a  jmp   $0a6f

; vcmd 96
1846: 8d 01     mov   y,#$01
1848: f7 a2     mov   a,($a2)+y
184a: 78 0e 84  cmp   $84,#$0e
184d: 90 09     bcc   $1858
184f: 68 7f     cmp   a,#$7f
1851: d0 05     bne   $1858
1853: e4 84     mov   a,$84
1855: 80        setc
1856: a8 0e     sbc   a,#$0e
1858: 8d 07     mov   y,#$07
185a: d7 86     mov   ($86)+y,a
185c: 68 40     cmp   a,#$40
185e: 90 0a     bcc   $186a
1860: 68 50     cmp   a,#$50
1862: 0d        push  psw
1863: 28 01     and   a,#$01
1865: 8e        pop   psw
1866: b0 02     bcs   $186a
1868: bc        inc   a
1869: bc        inc   a
186a: 8f 04 e1  mov   $e1,#$04
186d: 1c        asl   a
186e: 1c        asl   a
186f: c4 e0     mov   $e0,a
1871: 8d 00     mov   y,#$00
1873: f7 e0     mov   a,($e0)+y
1875: 8d 0f     mov   y,#$0f
1877: d7 86     mov   ($86)+y,a
1879: 8d 01     mov   y,#$01
187b: f7 e0     mov   a,($e0)+y
187d: 8d 08     mov   y,#$08
187f: d7 86     mov   ($86)+y,a
1881: 8d 02     mov   y,#$02
1883: f7 e0     mov   a,($e0)+y
1885: 8d 09     mov   y,#$09
1887: d7 86     mov   ($86)+y,a
1889: 8d 03     mov   y,#$03
188b: f7 e0     mov   a,($e0)+y
188d: 80        setc
188e: a8 40     sbc   a,#$40
1890: 8d 12     mov   y,#$12
1892: d7 86     mov   ($86)+y,a
1894: 8d 1f     mov   y,#$1f
1896: f7 86     mov   a,($86)+y
1898: 08 e0     or    a,#$e0
189a: d7 86     mov   ($86)+y,a
189c: e8 02     mov   a,#$02
189e: 5f 6f 0a  jmp   $0a6f

; vcmd 97
18a1: 8f 16 e2  mov   $e2,#$16
18a4: 5f aa 18  jmp   $18aa

; vcmd 98
18a7: 8f 17 e2  mov   $e2,#$17
18aa: 8d 01     mov   y,#$01
18ac: f7 a2     mov   a,($a2)+y
18ae: 8d 06     mov   y,#$06
18b0: d7 86     mov   ($86)+y,a
18b2: 8d 02     mov   y,#$02
18b4: f7 a2     mov   a,($a2)+y
18b6: eb e2     mov   y,$e2
18b8: d7 86     mov   ($86)+y,a
18ba: 8d 1f     mov   y,#$1f
18bc: f7 86     mov   a,($86)+y
18be: 08 40     or    a,#$40
18c0: d7 86     mov   ($86)+y,a
18c2: e8 03     mov   a,#$03
18c4: 5f 6f 0a  jmp   $0a6f

; vcmd 99
18c7: 8f 1a e2  mov   $e2,#$1a
18ca: 5f aa 18  jmp   $18aa

; vcmd 9a
18cd: e8 03     mov   a,#$03
18cf: 5f 6f 0a  jmp   $0a6f

; vcmd 9b
18d2: 8f 01 e2  mov   $e2,#$01
18d5: 8d 01     mov   y,#$01
18d7: f7 a2     mov   a,($a2)+y
18d9: f0 09     beq   $18e4
18db: 8d 00     mov   y,#$00
18dd: f7 86     mov   a,($86)+y
18df: 04 e2     or    a,$e2
18e1: 5f ed 18  jmp   $18ed

18e4: 58 ff e2  eor   $e2,#$ff
18e7: 8d 00     mov   y,#$00
18e9: f7 86     mov   a,($86)+y
18eb: 24 e2     and   a,$e2
18ed: d7 86     mov   ($86)+y,a
18ef: e8 02     mov   a,#$02
18f1: 5f 6f 0a  jmp   $0a6f

; vcmd 9c
18f4: 8d 01     mov   y,#$01
18f6: f7 a2     mov   a,($a2)+y
18f8: 8d 1c     mov   y,#$1c
18fa: d7 86     mov   ($86)+y,a
18fc: 8d 02     mov   y,#$02
18fe: f7 a2     mov   a,($a2)+y
1900: 8d 1d     mov   y,#$1d
1902: d7 86     mov   ($86)+y,a
1904: 8d 03     mov   y,#$03
1906: f7 a2     mov   a,($a2)+y
1908: 8d 1e     mov   y,#$1e
190a: d7 86     mov   ($86)+y,a
190c: e8 04     mov   a,#$04
190e: 5f 6f 0a  jmp   $0a6f

; vcmd a2
1911: 8d 01     mov   y,#$01
1913: f7 a2     mov   a,($a2)+y
1915: 80        setc
1916: a8 40     sbc   a,#$40
1918: 8d 13     mov   y,#$13
191a: d7 86     mov   ($86)+y,a
191c: 8d 1f     mov   y,#$1f
191e: f7 86     mov   a,($86)+y
1920: 08 80     or    a,#$80
1922: d7 86     mov   ($86)+y,a
1924: e8 02     mov   a,#$02
1926: 5f 6f 0a  jmp   $0a6f

; vcmd a3
1929: 8f 02 e2  mov   $e2,#$02
192c: 5f d5 18  jmp   $18d5

; vcmd aa
192f: 8d 01     mov   y,#$01
1931: f7 a2     mov   a,($a2)+y
1933: 1c        asl   a
1934: 80        setc
1935: a8 80     sbc   a,#$80
1937: c4 92     mov   $92,a
1939: 8f 0d f2  mov   $f2,#$0d
193c: c4 f3     mov   $f3,a             ; set EFB
193e: 8d 02     mov   y,#$02
1940: f7 a2     mov   a,($a2)+y
1942: c4 93     mov   $93,a
1944: 3f e3 13  call  $13e3
1947: e8 03     mov   a,#$03
1949: 5f 6f 0a  jmp   $0a6f

; vcmd ad
194c: 8d 00     mov   y,#$00
194e: f7 86     mov   a,($86)+y
1950: 28 9f     and   a,#$9f
1952: c4 e0     mov   $e0,a
1954: 8d 01     mov   y,#$01
1956: f7 a2     mov   a,($a2)+y
1958: f0 0e     beq   $1968
195a: 68 01     cmp   a,#$01
195c: f0 07     beq   $1965
195e: 18 40 e0  or    $e0,#$40
1961: 68 02     cmp   a,#$02
1963: f0 03     beq   $1968
1965: 18 20 e0  or    $e0,#$20
1968: e4 e0     mov   a,$e0
196a: 8d 00     mov   y,#$00
196c: d7 86     mov   ($86)+y,a
196e: e8 02     mov   a,#$02
1970: 5f 6f 0a  jmp   $0a6f

; vcmd ae
1973: 8f 04 e2  mov   $e2,#$04
1976: 5f d5 18  jmp   $18d5

; vcmd af
1979: 8d 01     mov   y,#$01
197b: f7 a2     mov   a,($a2)+y
197d: 08 80     or    a,#$80
197f: 8d 08     mov   y,#$08
1981: d7 86     mov   ($86)+y,a
1983: 8d 02     mov   y,#$02
1985: f7 a2     mov   a,($a2)+y
1987: 8d 09     mov   y,#$09
1989: d7 86     mov   ($86)+y,a
198b: 8d 1f     mov   y,#$1f
198d: f7 86     mov   a,($86)+y
198f: 08 20     or    a,#$20
1991: d7 86     mov   ($86)+y,a
1993: e8 03     mov   a,#$03
1995: 5f 6f 0a  jmp   $0a6f

; vcmd b0
1998: 8d 01     mov   y,#$01
199a: f7 a2     mov   a,($a2)+y
199c: c4 9f     mov   $9f,a
199e: 3f af 13  call  $13af
19a1: e8 02     mov   a,#$02
19a3: 5f 6f 0a  jmp   $0a6f

; vcmd b2
19a6: 8f 08 e2  mov   $e2,#$08
19a9: 5f d5 18  jmp   $18d5

; vcmd dispatch table
19ac: dw $16aa  ; 90
19ae: dw $16b7  ; 91
19b0: dw $16ea  ; 92
19b2: dw $175a  ; 93
19b4: dw $1810  ; 94
19b6: dw $1830  ; 95
19b8: dw $1846  ; 96
19ba: dw $18a1  ; 97
19bc: dw $18a7  ; 98
19be: dw $18c7  ; 99
19c0: dw $18cd  ; 9a
19c2: dw $18d2  ; 9b
19c4: dw $18f4  ; 9c
19c6: dw $0000  ; 9d
19c8: dw $0000  ; 9e
19ca: dw $0000  ; 9f
19cc: dw $0000  ; a0
19ce: dw $0000  ; a1
19d0: dw $1911  ; a2
19d2: dw $1929  ; a3
19d4: dw $0000  ; a4
19d6: dw $0000  ; a5
19d8: dw $0000  ; a6
19da: dw $0000  ; a7
19dc: dw $0000  ; a8
19de: dw $0000  ; a9
19e0: dw $192f  ; aa
19e2: dw $0000  ; ab
19e4: dw $0000  ; ac
19e6: dw $194c  ; ad
19e8: dw $1973  ; ae
19ea: dw $1979  ; af
19ec: dw $1998  ; b0
19ee: dw $0000  ; b1
19f0: dw $19a6  ; b2

19f2: e4 f4     mov   a,$f4
19f4: 64 f4     cmp   a,$f4
19f6: d0 fa     bne   $19f2
19f8: 44 83     eor   a,$83
19fa: 30 01     bmi   $19fd
19fc: 6f        ret

19fd: 58 80 83  eor   $83,#$80
1a00: 1c        asl   a
1a01: d0 1f     bne   $1a22
1a03: 58 80 80  eor   $80,#$80
1a06: fa 80 f4  mov   ($f4),($80)
1a09: e4 f5     mov   a,$f5
1a0b: f8 f6     mov   x,$f6
1a0d: fa f7 e8  mov   ($e8),($f7)
1a10: 8d 00     mov   y,#$00
1a12: d7 ac     mov   ($ac)+y,a
1a14: 3a ac     incw  $ac
1a16: 7d        mov   a,x
1a17: d7 ac     mov   ($ac)+y,a
1a19: 3a ac     incw  $ac
1a1b: e4 e8     mov   a,$e8
1a1d: d7 ac     mov   ($ac)+y,a
1a1f: 3a ac     incw  $ac
1a21: 6f        ret

1a22: 5d        mov   x,a
1a23: 1f a2 21  jmp   ($21a2+x)

1a26: 58 80 80  eor   $80,#$80
1a29: fa 80 f4  mov   ($f4),($80)
1a2c: e4 f5     mov   a,$f5
1a2e: f8 f6     mov   x,$f6
1a30: fa f7 e8  mov   ($e8),($f7)
1a33: 8d 00     mov   y,#$00
1a35: d7 a9     mov   ($a9)+y,a
1a37: fc        inc   y
1a38: 7d        mov   a,x
1a39: d7 a9     mov   ($a9)+y,a
1a3b: fc        inc   y
1a3c: e4 e8     mov   a,$e8
1a3e: d7 a9     mov   ($a9)+y,a
1a40: 60        clrc
1a41: 98 03 a9  adc   $a9,#$03
1a44: 98 00 aa  adc   $aa,#$00
1a47: 6f        ret

1a48: fa f5 ab  mov   ($ab),($f5)
1a4b: e4 f6     mov   a,$f6
1a4d: eb f7     mov   y,$f7
1a4f: 58 80 80  eor   $80,#$80
1a52: fa 80 f4  mov   ($f4),($80)
1a55: da ac     movw  $ac,ya
1a57: da ae     movw  $ae,ya
1a59: 8f ff e9  mov   $e9,#$ff
1a5c: 8f 04 eb  mov   $eb,#$04
1a5f: e4 ab     mov   a,$ab
1a61: 68 40     cmp   a,#$40
1a63: 90 0a     bcc   $1a6f
1a65: 68 50     cmp   a,#$50
1a67: 0d        push  psw
1a68: 28 01     and   a,#$01
1a6a: 8e        pop   psw
1a6b: b0 02     bcs   $1a6f
1a6d: bc        inc   a
1a6e: bc        inc   a
1a6f: 1c        asl   a
1a70: 1c        asl   a
1a71: c4 e8     mov   $e8,a
1a73: c4 ea     mov   $ea,a
1a75: 8d 00     mov   y,#$00
1a77: dd        mov   a,y
1a78: d7 ea     mov   ($ea)+y,a
1a7a: fc        inc   y
1a7b: 9c        dec   a
1a7c: d7 ea     mov   ($ea)+y,a
1a7e: fc        inc   y
1a7f: e8 e0     mov   a,#$e0
1a81: d7 ea     mov   ($ea)+y,a
1a83: fc        inc   y
1a84: e8 3a     mov   a,#$3a
1a86: d7 ea     mov   ($ea)+y,a
1a88: 8d 00     mov   y,#$00
1a8a: e4 ae     mov   a,$ae
1a8c: d7 e8     mov   ($e8)+y,a
1a8e: fc        inc   y
1a8f: fc        inc   y
1a90: d7 e8     mov   ($e8)+y,a
1a92: dc        dec   y
1a93: 60        clrc
1a94: 88 84     adc   a,#$84
1a96: c4 ca     mov   $ca,a
1a98: e4 af     mov   a,$af
1a9a: d7 e8     mov   ($e8)+y,a
1a9c: fc        inc   y
1a9d: fc        inc   y
1a9e: d7 e8     mov   ($e8)+y,a
1aa0: 88 03     adc   a,#$03
1aa2: c4 cb     mov   $cb,a
1aa4: 6f        ret

1aa5: e4 f5     mov   a,$f5
1aa7: 58 80 80  eor   $80,#$80
1aaa: fa 80 f4  mov   ($f4),($80)
1aad: 60        clrc
1aae: 88 38     adc   a,#$38
1ab0: c4 aa     mov   $aa,a
1ab2: 8f 00 a9  mov   $a9,#$00
1ab5: 6f        ret

1ab6: 58 80 80  eor   $80,#$80
1ab9: fa 80 f4  mov   ($f4),($80)
1abc: 8f ff e9  mov   $e9,#$ff
1abf: 8f 04 eb  mov   $eb,#$04
1ac2: e4 ab     mov   a,$ab
1ac4: 68 40     cmp   a,#$40
1ac6: 90 0a     bcc   $1ad2
1ac8: 68 50     cmp   a,#$50
1aca: 0d        push  psw
1acb: 28 01     and   a,#$01
1acd: 8e        pop   psw
1ace: b0 02     bcs   $1ad2
1ad0: bc        inc   a
1ad1: bc        inc   a
1ad2: 1c        asl   a
1ad3: 1c        asl   a
1ad4: c4 e8     mov   $e8,a
1ad6: c4 ea     mov   $ea,a
1ad8: 8d 00     mov   y,#$00
1ada: f7 ae     mov   a,($ae)+y
1adc: d7 ea     mov   ($ea)+y,a
1ade: fc        inc   y
1adf: f7 ae     mov   a,($ae)+y
1ae1: d7 ea     mov   ($ea)+y,a
1ae3: fc        inc   y
1ae4: f7 ae     mov   a,($ae)+y
1ae6: d7 ea     mov   ($ea)+y,a
1ae8: fc        inc   y
1ae9: f7 ae     mov   a,($ae)+y
1aeb: d7 ea     mov   ($ea)+y,a
1aed: e4 ae     mov   a,$ae
1aef: 60        clrc
1af0: 88 07     adc   a,#$07
1af2: 8d 00     mov   y,#$00
1af4: d7 e8     mov   ($e8)+y,a
1af6: 0d        push  psw
1af7: 8d 05     mov   y,#$05
1af9: 60        clrc
1afa: 97 ae     adc   a,($ae)+y
1afc: 8d 02     mov   y,#$02
1afe: d7 e8     mov   ($e8)+y,a
1b00: 8d 06     mov   y,#$06
1b02: f7 ae     mov   a,($ae)+y
1b04: 88 00     adc   a,#$00
1b06: 8e        pop   psw
1b07: 0d        push  psw
1b08: 84 af     adc   a,$af
1b0a: 8d 03     mov   y,#$03
1b0c: d7 e8     mov   ($e8)+y,a
1b0e: e4 af     mov   a,$af
1b10: 8e        pop   psw
1b11: 88 00     adc   a,#$00
1b13: 8d 01     mov   y,#$01
1b15: d7 e8     mov   ($e8)+y,a
1b17: 6f        ret

1b18: 58 80 80  eor   $80,#$80
1b1b: fa 80 f4  mov   ($f4),($80)
1b1e: 6f        ret

1b1f: e4 f5     mov   a,$f5
1b21: 58 80 80  eor   $80,#$80
1b24: fa 80 f4  mov   ($f4),($80)
1b27: c4 99     mov   $99,a
1b29: f2 a0     clr7  $a0
1b2b: 3f 08 0c  call  $0c08
1b2e: 3f 14 22  call  $2214
1b31: 3f 7f 0a  call  $0a7f
1b34: 3f 14 22  call  $2214
1b37: 02 80     set0  $80
1b39: 6f        ret

1b3a: 58 80 80  eor   $80,#$80
1b3d: fa 80 f4  mov   ($f4),($80)
1b40: f2 a0     clr7  $a0
1b42: 5f 08 0c  jmp   $0c08

1b45: 13 80 24  bbc0  $80,$1b6c
1b48: a3 81 21  bbs5  $81,$1b6c
1b4b: a2 81     set5  $81
1b4d: 38 3f 81  and   $81,#$3f
1b50: e4 f5     mov   a,$f5
1b52: 7c        ror   a
1b53: 7c        ror   a
1b54: 7c        ror   a
1b55: 0d        push  psw
1b56: 28 c0     and   a,#$c0
1b58: 04 81     or    a,$81
1b5a: c4 81     mov   $81,a
1b5c: 8f ff d0  mov   $d0,#$ff
1b5f: fa f6 d1  mov   ($d1),($f6)
1b62: 8f 00 d2  mov   $d2,#$00
1b65: 8e        pop   psw
1b66: 90 04     bcc   $1b6c
1b68: 22 81     set1  $81
1b6a: b2 81     clr5  $81
1b6c: 58 80 80  eor   $80,#$80
1b6f: fa 80 f4  mov   ($f4),($80)
1b72: 6f        ret

1b73: e4 f5     mov   a,$f5
1b75: c4 99     mov   $99,a
1b77: 3f 7f 0a  call  $0a7f
1b7a: 02 80     set0  $80
1b7c: 82 81     set4  $81
1b7e: 38 3f 81  and   $81,#$3f
1b81: e4 f6     mov   a,$f6
1b83: 7c        ror   a
1b84: 7c        ror   a
1b85: 7c        ror   a
1b86: 28 c0     and   a,#$c0
1b88: 04 81     or    a,$81
1b8a: c4 81     mov   $81,a
1b8c: 8f 00 d0  mov   $d0,#$00
1b8f: fa f7 d1  mov   ($d1),($f7)
1b92: 8f 00 d2  mov   $d2,#$00
1b95: 58 80 80  eor   $80,#$80
1b98: fa 80 f4  mov   ($f4),($80)
1b9b: 6f        ret

1b9c: e4 f5     mov   a,$f5
1b9e: fa f6 d1  mov   ($d1),($f6)
1ba1: 58 80 80  eor   $80,#$80
1ba4: fa 80 f4  mov   ($f4),($80)
1ba7: 02 80     set0  $80
1ba9: 82 81     set4  $81
1bab: 38 3f 81  and   $81,#$3f
1bae: 7c        ror   a
1baf: 7c        ror   a
1bb0: 7c        ror   a
1bb1: 28 c0     and   a,#$c0
1bb3: 04 81     or    a,$81
1bb5: c4 81     mov   $81,a
1bb7: 8f 00 d0  mov   $d0,#$00
1bba: 8f 00 d2  mov   $d2,#$00
1bbd: 42 a0     set2  $a0
1bbf: 5f a4 23  jmp   $23a4

1bc2: 58 80 80  eor   $80,#$80
1bc5: fa 80 f4  mov   ($f4),($80)
1bc8: e4 f5     mov   a,$f5
1bca: f0 10     beq   $1bdc
1bcc: 68 01     cmp   a,#$01
1bce: f0 07     beq   $1bd7
1bd0: 32 80     clr1  $80
1bd2: 72 80     clr3  $80
1bd4: 5f e0 1b  jmp   $1be0

1bd7: 22 80     set1  $80
1bd9: 5f e0 1b  jmp   $1be0

1bdc: 32 80     clr1  $80
1bde: 62 80     set3  $80
1be0: 3f af 13  call  $13af
1be3: 8d 1f     mov   y,#$1f
1be5: 8f 0f ea  mov   $ea,#$0f
1be8: 8f 00 e8  mov   $e8,#$00
1beb: 8f 02 e9  mov   $e9,#$02
1bee: f7 e8     mov   a,($e8)+y
1bf0: 08 40     or    a,#$40
1bf2: d7 e8     mov   ($e8)+y,a
1bf4: 60        clrc
1bf5: 98 20 e8  adc   $e8,#$20
1bf8: 98 00 e9  adc   $e9,#$00
1bfb: 6e ea f0  dbnz  $ea,$1bee
1bfe: 6f        ret

1bff: fa f5 e8  mov   ($e8),($f5)
1c02: fa f7 e9  mov   ($e9),($f7)
1c05: fa f6 ea  mov   ($ea),($f6)
1c08: 78 0f ea  cmp   $ea,#$0f
1c0b: d0 1f     bne   $1c2c
1c0d: 8f e0 ec  mov   $ec,#$e0
1c10: 8f 03 ed  mov   $ed,#$03
1c13: e4 e9     mov   a,$e9
1c15: 8d 1b     mov   y,#$1b
1c17: d7 ec     mov   ($ec)+y,a
1c19: 02 a1     set0  $a1
1c1b: fa e8 b0  mov   ($b0),($e8)
1c1e: 78 ff e8  cmp   $e8,#$ff
1c21: f0 02     beq   $1c25
1c23: a2 80     set5  $80
1c25: 58 80 80  eor   $80,#$80
1c28: fa 80 f4  mov   ($f4),($80)
1c2b: 6f        ret

1c2c: 8f c0 ec  mov   $ec,#$c0
1c2f: 8f 03 ed  mov   $ed,#$03
1c32: e4 e9     mov   a,$e9
1c34: 8d 1b     mov   y,#$1b
1c36: d7 ec     mov   ($ec)+y,a
1c38: 22 a1     set1  $a1
1c3a: fa e8 b1  mov   ($b1),($e8)
1c3d: 78 ff e8  cmp   $e8,#$ff
1c40: f0 02     beq   $1c44
1c42: c2 80     set6  $80
1c44: 58 80 80  eor   $80,#$80
1c47: fa 80 f4  mov   ($f4),($80)
1c4a: 6f        ret

1c4b: fa f5 e8  mov   ($e8),($f5)
1c4e: fa f6 e9  mov   ($e9),($f6)
1c51: 58 80 80  eor   $80,#$80
1c54: fa 80 f4  mov   ($f4),($80)
1c57: e4 f7     mov   a,$f7
1c59: f0 0e     beq   $1c69
1c5b: 8f e0 da  mov   $da,#$e0
1c5e: e4 e8     mov   a,$e8
1c60: c5 2d 27  mov   $272d,a
1c63: e4 e9     mov   a,$e9
1c65: c5 30 27  mov   $2730,a
1c68: 6f        ret

1c69: 8f c0 da  mov   $da,#$c0
1c6c: e4 e8     mov   a,$e8
1c6e: c5 26 27  mov   $2726,a
1c71: e4 e9     mov   a,$e9
1c73: c5 29 27  mov   $2729,a
1c76: 6f        ret

1c77: fa f5 e8  mov   ($e8),($f5)
1c7a: e4 f6     mov   a,$f6
1c7c: 58 80 80  eor   $80,#$80
1c7f: fa 80 f4  mov   ($f4),($80)
1c82: 8d 1b     mov   y,#$1b
1c84: d7 da     mov   ($da)+y,a
1c86: 78 c0 da  cmp   $da,#$c0
1c89: f0 11     beq   $1c9c
1c8b: e4 e8     mov   a,$e8
1c8d: c5 2f 27  mov   $272f,a
1c90: bc        inc   a
1c91: c5 2e 27  mov   $272e,a
1c94: 02 a1     set0  $a1
1c96: 8f 01 b0  mov   $b0,#$01
1c99: a2 80     set5  $80
1c9b: 6f        ret

1c9c: e4 e8     mov   a,$e8
1c9e: c5 28 27  mov   $2728,a
1ca1: bc        inc   a
1ca2: c5 27 27  mov   $2727,a
1ca5: 22 a1     set1  $a1
1ca7: 8f 00 b1  mov   $b1,#$00
1caa: c2 80     set6  $80
1cac: 6f        ret

1cad: fa f5 b4  mov   ($b4),($f5)
1cb0: fa f6 b8  mov   ($b8),($f6)
1cb3: fa f7 bc  mov   ($bc),($f7)
1cb6: 58 80 80  eor   $80,#$80
1cb9: fa 80 f4  mov   ($f4),($80)
1cbc: 6f        ret

1cbd: fa f5 b5  mov   ($b5),($f5)
1cc0: fa f6 b9  mov   ($b9),($f6)
1cc3: fa f7 bd  mov   ($bd),($f7)
1cc6: 58 80 80  eor   $80,#$80
1cc9: fa 80 f4  mov   ($f4),($80)
1ccc: 6f        ret

1ccd: e4 f5     mov   a,$f5
1ccf: 24 cc     and   a,$cc
1cd1: c4 b6     mov   $b6,a
1cd3: e4 f6     mov   a,$f6
1cd5: 24 cd     and   a,$cd
1cd7: c4 ba     mov   $ba,a
1cd9: fa f7 be  mov   ($be),($f7)
1cdc: 58 80 80  eor   $80,#$80
1cdf: fa 80 f4  mov   ($f4),($80)
1ce2: 6f        ret

1ce3: fa f5 b7  mov   ($b7),($f5)
1ce6: fa f6 bb  mov   ($bb),($f6)
1ce9: e4 f7     mov   a,$f7
1ceb: 58 80 80  eor   $80,#$80
1cee: fa 80 f4  mov   ($f4),($80)
1cf1: 80        setc
1cf2: a8 40     sbc   a,#$40
1cf4: c4 bf     mov   $bf,a
1cf6: 6f        ret

1cf7: fa f5 90  mov   ($90),($f5)
1cfa: 58 80 80  eor   $80,#$80
1cfd: fa 80 f4  mov   ($f4),($80)
1d00: 5f 7c 0b  jmp   $0b7c

1d03: 58 80 80  eor   $80,#$80
1d06: fa 80 f4  mov   ($f4),($80)
1d09: 8f 0e 84  mov   $84,#$0e
1d0c: 3f ec 09  call  $09ec
1d0f: fa 98 e8  mov   ($e8),($98)
1d12: 8f 0f 84  mov   $84,#$0f
1d15: 3f ec 09  call  $09ec
1d18: e4 e8     mov   a,$e8
1d1a: 04 98     or    a,$98
1d1c: 48 ff     eor   a,#$ff
1d1e: 8f 5c f2  mov   $f2,#$5c
1d21: c4 f3     mov   $f3,a             ; set KOF
1d23: aa 80 00  mov1  c,$0080,0
1d26: ca 81 60  mov1  $0081,3,c
1d29: 12 80     clr0  $80
1d2b: 6f        ret

1d2c: 58 80 80  eor   $80,#$80
1d2f: fa 80 f4  mov   ($f4),($80)
1d32: 73 81 07  bbc3  $81,$1d3c
1d35: 02 80     set0  $80
1d37: 42 a0     set2  $a0
1d39: 5f a4 23  jmp   $23a4

1d3c: 6f        ret

1d3d: f8 f5     mov   x,$f5
1d3f: 58 80 80  eor   $80,#$80
1d42: fa 80 f4  mov   ($f4),($80)
1d45: 8d 00     mov   y,#$00
1d47: e8 ff     mov   a,#$ff
1d49: 9e        div   ya,x
1d4a: f2 a0     clr7  $a0
1d4c: 5f 20 14  jmp   $1420

1d4f: 58 80 80  eor   $80,#$80
1d52: fa 80 f4  mov   ($f4),($80)
1d55: e8 ff     mov   a,#$ff
1d57: f2 a0     clr7  $a0
1d59: 5f 20 14  jmp   $1420

1d5c: 58 80 80  eor   $80,#$80
1d5f: fa 80 f4  mov   ($f4),($80)
1d62: e4 f5     mov   a,$f5
1d64: d0 03     bne   $1d69
1d66: 52 80     clr2  $80
1d68: 6f        ret

1d69: 42 80     set2  $80
1d6b: 6f        ret

1d6c: 58 80 80  eor   $80,#$80
1d6f: fa 80 f4  mov   ($f4),($80)
1d72: 5f 69 22  jmp   $2269

1d75: 58 80 80  eor   $80,#$80
1d78: fa 80 f4  mov   ($f4),($80)
1d7b: f2 a0     clr7  $a0
1d7d: 3f 08 0c  call  $0c08
1d80: 5f fb 22  jmp   $22fb

1d83: e4 f6     mov   a,$f6
1d85: 30 02     bmi   $1d89
1d87: c4 93     mov   $93,a
1d89: e4 f7     mov   a,$f7
1d8b: 30 02     bmi   $1d8f
1d8d: c4 9f     mov   $9f,a
1d8f: e4 f5     mov   a,$f5
1d91: 58 80 80  eor   $80,#$80
1d94: fa 80 f4  mov   ($f4),($80)
1d97: 68 ff     cmp   a,#$ff
1d99: f0 07     beq   $1da2
1d9b: c4 92     mov   $92,a
1d9d: 8f 0d f2  mov   $f2,#$0d
1da0: c4 f3     mov   $f3,a
1da2: 3f e3 13  call  $13e3
1da5: 5f af 13  jmp   $13af

1da8: e4 f5     mov   a,$f5
1daa: 68 ff     cmp   a,#$ff
1dac: f0 02     beq   $1db0
1dae: c4 95     mov   $95,a
1db0: e4 f6     mov   a,$f6
1db2: 68 ff     cmp   a,#$ff
1db4: f0 02     beq   $1db8
1db6: c4 96     mov   $96,a
1db8: e4 f7     mov   a,$f7
1dba: 68 ff     cmp   a,#$ff
1dbc: f0 02     beq   $1dc0
1dbe: c4 97     mov   $97,a
1dc0: 3f 51 24  call  $2451
1dc3: 58 80 80  eor   $80,#$80
1dc6: fa 80 f4  mov   ($f4),($80)
1dc9: 6f        ret

1dca: 8f 5c f2  mov   $f2,#$5c
1dcd: 8f ff f3  mov   $f3,#$ff          ; set KOF
1dd0: 38 f8 f1  and   $f1,#$f8
1dd3: 18 80 f1  or    $f1,#$80
1dd6: 5f c0 ff  jmp   $ffc0

1dd9: e4 f5     mov   a,$f5
1ddb: f8 f6     mov   x,$f6
1ddd: 58 80 80  eor   $80,#$80
1de0: fa 80 f4  mov   ($f4),($80)
1de3: 9f        xcn   a
1de4: 08 0f     or    a,#$0f
1de6: 28 7f     and   a,#$7f
1de8: c4 f2     mov   $f2,a
1dea: d8 f3     mov   $f3,x
1dec: 6f        ret

1ded: fa f5 e8  mov   ($e8),($f5)
1df0: fa f6 ea  mov   ($ea),($f6)
1df3: 58 80 80  eor   $80,#$80
1df6: fa 80 f4  mov   ($f4),($80)
1df9: e4 ea     mov   a,$ea
1dfb: f8 e8     mov   x,$e8
1dfd: d5 c0 01  mov   $01c0+x,a
1e00: 7d        mov   a,x
1e01: 80        setc
1e02: a8 04     sbc   a,#$04
1e04: 30 04     bmi   $1e0a
1e06: fd        mov   y,a
1e07: 3f fb 23  call  $23fb
1e0a: 7d        mov   a,x
1e0b: 60        clrc
1e0c: 88 04     adc   a,#$04
1e0e: 68 21     cmp   a,#$21
1e10: b0 04     bcs   $1e16
1e12: fd        mov   y,a
1e13: 3f fb 23  call  $23fb
1e16: 6f        ret

1e17: fa f5 e9  mov   ($e9),($f5)
1e1a: fa f6 e8  mov   ($e8),($f6)
1e1d: fa f7 ea  mov   ($ea),($f7)
1e20: 58 80 80  eor   $80,#$80
1e23: fa 80 f4  mov   ($f4),($80)
1e26: 8f 80 ec  mov   $ec,#$80
1e29: 8f 00 ee  mov   $ee,#$00
1e2c: 8f 02 ef  mov   $ef,#$02
1e2f: 4b e9     lsr   $e9
1e31: 6b e8     ror   $e8
1e33: b0 05     bcs   $1e3a
1e35: f0 35     beq   $1e6c
1e37: 5f 62 1e  jmp   $1e62

1e3a: 8d 04     mov   y,#$04
1e3c: f7 ee     mov   a,($ee)+y
1e3e: 68 ff     cmp   a,#$ff
1e40: d0 08     bne   $1e4a
1e42: 8d 03     mov   y,#$03
1e44: f7 ee     mov   a,($ee)+y
1e46: 68 ff     cmp   a,#$ff
1e48: f0 18     beq   $1e62
1e4a: 78 00 ea  cmp   $ea,#$00
1e4d: f0 09     beq   $1e58
1e4f: 8d 00     mov   y,#$00
1e51: f7 ee     mov   a,($ee)+y
1e53: 04 ec     or    a,$ec
1e55: 5f 60 1e  jmp   $1e60

1e58: e4 ec     mov   a,$ec
1e5a: 48 ff     eor   a,#$ff
1e5c: 8d 00     mov   y,#$00
1e5e: 37 ee     and   a,($ee)+y
1e60: d7 ee     mov   ($ee)+y,a
1e62: 60        clrc
1e63: 98 20 ee  adc   $ee,#$20
1e66: 98 00 ef  adc   $ef,#$00
1e69: 5f 2f 1e  jmp   $1e2f

1e6c: e4 e9     mov   a,$e9
1e6e: d0 f2     bne   $1e62
1e70: 6f        ret

1e71: fa f5 e9  mov   ($e9),($f5)
1e74: fa f6 bc  mov   ($bc),($f6)
1e77: fa f7 bd  mov   ($bd),($f7)
1e7a: 58 80 80  eor   $80,#$80
1e7d: fa 80 f4  mov   ($f4),($80)
1e80: e4 e9     mov   a,$e9
1e82: 28 f0     and   a,#$f0
1e84: 9f        xcn   a
1e85: 48 ff     eor   a,#$ff
1e87: bc        inc   a
1e88: c4 bf     mov   $bf,a
1e8a: e4 e9     mov   a,$e9
1e8c: 28 0f     and   a,#$0f
1e8e: 68 08     cmp   a,#$08
1e90: 90 0b     bcc   $1e9d
1e92: 80        setc
1e93: a8 08     sbc   a,#$08
1e95: 5d        mov   x,a
1e96: f4 88     mov   a,$88+x
1e98: cd 00     mov   x,#$00
1e9a: 5f a3 1e  jmp   $1ea3

1e9d: 5d        mov   x,a
1e9e: f4 88     mov   a,$88+x
1ea0: 5d        mov   x,a
1ea1: e8 00     mov   a,#$00
1ea3: c4 b4     mov   $b4,a
1ea5: d8 b8     mov   $b8,x
1ea7: c4 b5     mov   $b5,a
1ea9: d8 b9     mov   $b9,x
1eab: c4 b7     mov   $b7,a
1ead: d8 bb     mov   $bb,x
1eaf: 6f        ret

1eb0: fa f5 e9  mov   ($e9),($f5)
1eb3: fa f6 e8  mov   ($e8),($f6)
1eb6: fa f7 c9  mov   ($c9),($f7)
1eb9: 58 80 80  eor   $80,#$80
1ebc: fa 80 f4  mov   ($f4),($80)
1ebf: 8f 10 ec  mov   $ec,#$10
1ec2: fa c9 ea  mov   ($ea),($c9)
1ec5: 5f 29 1e  jmp   $1e29

1ec8: fa f5 e9  mov   ($e9),($f5)
1ecb: fa f6 e8  mov   ($e8),($f6)
1ece: fa f7 cf  mov   ($cf),($f7)
1ed1: 58 80 80  eor   $80,#$80
1ed4: fa 80 f4  mov   ($f4),($80)
1ed7: 8f 10 ec  mov   $ec,#$10
1eda: fa cf ea  mov   ($ea),($cf)
1edd: 5f 29 1e  jmp   $1e29

1ee0: fa f5 e9  mov   ($e9),($f5)
1ee3: fa f6 e8  mov   ($e8),($f6)
1ee6: 58 80 80  eor   $80,#$80
1ee9: fa 80 f4  mov   ($f4),($80)
1eec: 8f 00 86  mov   $86,#$00
1eef: 8f 02 87  mov   $87,#$02
1ef2: 4b e9     lsr   $e9
1ef4: 6b e8     ror   $e8
1ef6: b0 05     bcs   $1efd
1ef8: f0 28     beq   $1f22
1efa: 5f 18 1f  jmp   $1f18

1efd: 8d 0b     mov   y,#$0b
1eff: f7 86     mov   a,($86)+y
1f01: 68 ff     cmp   a,#$ff
1f03: d0 0d     bne   $1f12
1f05: 8d 0a     mov   y,#$0a
1f07: f7 86     mov   a,($86)+y
1f09: 68 ff     cmp   a,#$ff
1f0b: f0 0b     beq   $1f18
1f0d: 8d 0c     mov   y,#$0c
1f0f: 5f 14 1f  jmp   $1f14

1f12: 8d 0d     mov   y,#$0d
1f14: e8 01     mov   a,#$01
1f16: d7 86     mov   ($86)+y,a
1f18: 60        clrc
1f19: 98 20 86  adc   $86,#$20
1f1c: 98 00 87  adc   $87,#$00
1f1f: 5f f2 1e  jmp   $1ef2

1f22: e4 e9     mov   a,$e9
1f24: d0 f2     bne   $1f18
1f26: 6f        ret

1f27: 8d 24     mov   y,#$24
1f29: 5f 3d 1f  jmp   $1f3d

1f2c: 8d 96     mov   y,#$96
1f2e: 5f 3d 1f  jmp   $1f3d

1f31: 8d 66     mov   y,#$66
1f33: 5f 3d 1f  jmp   $1f3d

1f36: 8d 4e     mov   y,#$4e
1f38: 5f 3d 1f  jmp   $1f3d

1f3b: 8d 3c     mov   y,#$3c
1f3d: cc 5f 1f  mov   $1f5f,y
1f40: 1a ac     decw  $ac
1f42: e4 f5     mov   a,$f5
1f44: d7 ac     mov   ($ac)+y,a
1f46: 58 80 80  eor   $80,#$80
1f49: fa 80 f4  mov   ($f4),($80)
1f4c: e4 f6     mov   a,$f6
1f4e: f8 f7     mov   x,$f7
1f50: dc        dec   y
1f51: d7 ac     mov   ($ac)+y,a
1f53: dc        dec   y
1f54: 7d        mov   a,x
1f55: d7 ac     mov   ($ac)+y,a
1f57: fe e9     dbnz  y,$1f42
1f59: 58 80 83  eor   $83,#$80
1f5c: 3a ac     incw  $ac
1f5e: e8 4e     mov   a,#$4e
1f60: 60        clrc
1f61: 84 ac     adc   a,$ac
1f63: c4 ac     mov   $ac,a
1f65: 90 02     bcc   $1f69
1f67: ab ad     inc   $ad
1f69: ba ac     movw  ya,$ac
1f6b: 5a ca     cmpw  ya,$ca
1f6d: 90 04     bcc   $1f73
1f6f: ba ae     movw  ya,$ae
1f71: da ac     movw  $ac,ya
1f73: 6f        ret

1f74: 8f 00 e8  mov   $e8,#$00
1f77: 8f 02 e9  mov   $e9,#$02
1f7a: 8d 05     mov   y,#$05
1f7c: f7 e8     mov   a,($e8)+y
1f7e: c4 f5     mov   $f5,a
1f80: 58 80 80  eor   $80,#$80
1f83: fa 80 f4  mov   ($f4),($80)
1f86: e4 f4     mov   a,$f4
1f88: 64 f4     cmp   a,$f4
1f8a: d0 fa     bne   $1f86
1f8c: 44 83     eor   a,$83
1f8e: 10 f6     bpl   $1f86
1f90: 58 80 83  eor   $83,#$80
1f93: 3f 51 24  call  $2451
1f96: 58 80 80  eor   $80,#$80
1f99: fa 80 f4  mov   ($f4),($80)
1f9c: 6f        ret

1f9d: 8d 00     mov   y,#$00
1f9f: e4 f5     mov   a,$f5
1fa1: d7 ac     mov   ($ac)+y,a
1fa3: 58 80 80  eor   $80,#$80
1fa6: fa 80 f4  mov   ($f4),($80)
1fa9: e4 f6     mov   a,$f6
1fab: f8 f7     mov   x,$f7
1fad: fc        inc   y
1fae: d7 ac     mov   ($ac)+y,a
1fb0: fc        inc   y
1fb1: 7d        mov   a,x
1fb2: d7 ac     mov   ($ac)+y,a
1fb4: fc        inc   y
1fb5: ad 4e     cmp   y,#$4e
1fb7: d0 e6     bne   $1f9f
1fb9: 58 80 83  eor   $83,#$80
1fbc: dd        mov   a,y
1fbd: 60        clrc
1fbe: 84 ac     adc   a,$ac
1fc0: c4 ac     mov   $ac,a
1fc2: 90 02     bcc   $1fc6
1fc4: ab ad     inc   $ad
1fc6: 6f        ret

1fc7: fa f5 de  mov   ($de),($f5)
1fca: fa f6 df  mov   ($df),($f6)
1fcd: 58 80 80  eor   $80,#$80
1fd0: fa 80 f4  mov   ($f4),($80)
1fd3: 8f 00 e8  mov   $e8,#$00
1fd6: 8f 02 e9  mov   $e9,#$02
1fd9: 8f 10 ec  mov   $ec,#$10
1fdc: 8d 1f     mov   y,#$1f
1fde: f7 e8     mov   a,($e8)+y
1fe0: 08 40     or    a,#$40
1fe2: d7 e8     mov   ($e8)+y,a
1fe4: 60        clrc
1fe5: 98 20 e8  adc   $e8,#$20
1fe8: 98 00 e9  adc   $e9,#$00
1feb: 6e ec f0  dbnz  $ec,$1fde
1fee: 6f        ret

1fef: cd 00     mov   x,#$00
1ff1: 8d 06     mov   y,#$06
1ff3: f5 43 25  mov   a,$2543+x
1ff6: c4 f5     mov   $f5,a
1ff8: f5 44 25  mov   a,$2544+x
1ffb: c4 f6     mov   $f6,a
1ffd: f5 45 25  mov   a,$2545+x
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
2070: fa f6 bc  mov   ($bc),($f6)
2073: fa f7 eb  mov   ($eb),($f7)
2076: 58 80 80  eor   $80,#$80
2079: fa 80 f4  mov   ($f4),($80)
207c: 8d 40     mov   y,#$40
207e: e4 eb     mov   a,$eb
2080: 10 02     bpl   $2084
2082: 8d 80     mov   y,#$80
2084: 28 7f     and   a,#$7f
2086: c4 bd     mov   $bd,a
2088: e4 e9     mov   a,$e9
208a: 30 0d     bmi   $2099
208c: 80        setc
208d: a8 40     sbc   a,#$40
208f: c4 bf     mov   $bf,a
2091: cb b7     mov   $b7,y
2093: 8f 00 bb  mov   $bb,#$00
2096: 5f a5 20  jmp   $20a5

2099: 28 7f     and   a,#$7f
209b: 80        setc
209c: a8 40     sbc   a,#$40
209e: c4 be     mov   $be,a
20a0: cb b6     mov   $b6,y
20a2: 8f 00 ba  mov   $ba,#$00
20a5: cb b4     mov   $b4,y
20a7: cb b5     mov   $b5,y
20a9: 8f 00 b8  mov   $b8,#$00
20ac: 8f 00 b9  mov   $b9,#$00
20af: 6f        ret

20b0: e4 f5     mov   a,$f5
20b2: eb f6     mov   y,$f6
20b4: 58 80 80  eor   $80,#$80
20b7: fa 80 f4  mov   ($f4),($80)
20ba: da a9     movw  $a9,ya
20bc: 6f        ret

20bd: e4 f5     mov   a,$f5
20bf: 58 80 80  eor   $80,#$80
20c2: fa 80 f4  mov   ($f4),($80)
20c5: 68 00     cmp   a,#$00
20c7: d0 45     bne   $210e
20c9: 8f 00 ab  mov   $ab,#$00
20cc: 8d cf     mov   y,#$cf
20ce: e8 a8     mov   a,#$a8
20d0: da ac     movw  $ac,ya
20d2: da ae     movw  $ae,ya
20d4: 8f ff e9  mov   $e9,#$ff
20d7: 8f 04 eb  mov   $eb,#$04
20da: e8 00     mov   a,#$00
20dc: c4 e8     mov   $e8,a
20de: c4 ea     mov   $ea,a
20e0: fd        mov   y,a
20e1: d7 ea     mov   ($ea)+y,a
20e3: fc        inc   y
20e4: 9c        dec   a
20e5: d7 ea     mov   ($ea)+y,a
20e7: fc        inc   y
20e8: e8 e0     mov   a,#$e0
20ea: d7 ea     mov   ($ea)+y,a
20ec: fc        inc   y
20ed: e8 3a     mov   a,#$3a
20ef: d7 ea     mov   ($ea)+y,a
20f1: 8d 00     mov   y,#$00
20f3: e4 ae     mov   a,$ae
20f5: d7 e8     mov   ($e8)+y,a
20f7: fc        inc   y
20f8: fc        inc   y
20f9: d7 e8     mov   ($e8)+y,a
20fb: dc        dec   y
20fc: 60        clrc
20fd: 88 84     adc   a,#$84
20ff: c4 ca     mov   $ca,a
2101: e4 af     mov   a,$af
2103: d7 e8     mov   ($e8)+y,a
2105: fc        inc   y
2106: fc        inc   y
2107: d7 e8     mov   ($e8)+y,a
2109: 88 03     adc   a,#$03
210b: c4 cb     mov   $cb,a
210d: 6f        ret

210e: 8f 01 d3  mov   $d3,#$01
2111: 8d d3     mov   y,#$d3
2113: e8 54     mov   a,#$54
2115: da d4     movw  $d4,ya
2117: da d6     movw  $d6,ya
2119: 8f ff e9  mov   $e9,#$ff
211c: 8f 04 eb  mov   $eb,#$04
211f: e8 04     mov   a,#$04
2121: c4 e8     mov   $e8,a
2123: c4 ea     mov   $ea,a
2125: 8d 00     mov   y,#$00
2127: dd        mov   a,y
2128: d7 ea     mov   ($ea)+y,a
212a: fc        inc   y
212b: 9c        dec   a
212c: d7 ea     mov   ($ea)+y,a
212e: fc        inc   y
212f: e8 e0     mov   a,#$e0
2131: d7 ea     mov   ($ea)+y,a
2133: fc        inc   y
2134: e8 3a     mov   a,#$3a
2136: d7 ea     mov   ($ea)+y,a
2138: 8d 00     mov   y,#$00
213a: e4 d6     mov   a,$d6
213c: d7 e8     mov   ($e8)+y,a
213e: fc        inc   y
213f: fc        inc   y
2140: d7 e8     mov   ($e8)+y,a
2142: dc        dec   y
2143: 60        clrc
2144: 88 84     adc   a,#$84
2146: c4 d8     mov   $d8,a
2148: e4 d7     mov   a,$d7
214a: d7 e8     mov   ($e8)+y,a
214c: fc        inc   y
214d: fc        inc   y
214e: d7 e8     mov   ($e8)+y,a
2150: 88 03     adc   a,#$03
2152: c4 d9     mov   $d9,a
2154: 6f        ret

2155: 8d 24     mov   y,#$24
2157: 5f 6b 21  jmp   $216b

215a: 8d 96     mov   y,#$96
215c: 5f 6b 21  jmp   $216b

215f: 8d 66     mov   y,#$66
2161: 5f 6b 21  jmp   $216b

2164: 8d 4e     mov   y,#$4e
2166: 5f 6b 21  jmp   $216b

2169: 8d 3c     mov   y,#$3c
216b: cc 8d 21  mov   $218d,y
216e: 1a d4     decw  $d4
2170: e4 f5     mov   a,$f5
2172: d7 d4     mov   ($d4)+y,a
2174: 58 80 80  eor   $80,#$80
2177: fa 80 f4  mov   ($f4),($80)
217a: e4 f6     mov   a,$f6
217c: f8 f7     mov   x,$f7
217e: dc        dec   y
217f: d7 d4     mov   ($d4)+y,a
2181: dc        dec   y
2182: 7d        mov   a,x
2183: d7 d4     mov   ($d4)+y,a
2185: fe e9     dbnz  y,$2170
2187: 58 80 83  eor   $83,#$80
218a: 3a d4     incw  $d4
218c: e8 4e     mov   a,#$4e
218e: 60        clrc
218f: 84 d4     adc   a,$d4
2191: c4 d4     mov   $d4,a
2193: 90 02     bcc   $2197
2195: ab d5     inc   $d5
2197: ba d4     movw  ya,$d4
2199: 5a d8     cmpw  ya,$d8
219b: 90 04     bcc   $21a1
219d: ba d6     movw  ya,$d6
219f: da d4     movw  $d4,ya
21a1: 6f        ret

21a2: 01        tcall 0
21a3: 1a 26     decw  $26
21a5: 1a b6     decw  $b6
21a7: 1a 18     decw  $18
21a9: 1b 48     asl   $48+x
21ab: 1a a5     decw  $a5
21ad: 1a 1f     decw  $1f
21af: 1b 3a     asl   $3a+x
21b1: 1b 45     asl   $45+x
21b3: 1b 73     asl   $73+x
21b5: 1b 9c     asl   $9c+x
21b7: 1b c2     asl   $c2+x
21b9: 1b ff     asl   $ff+x
21bb: 1b ad     asl   $ad+x
21bd: 1c        asl   a
21be: bd        mov   sp,x
21bf: 1c        asl   a
21c0: cd 1c     mov   x,#$1c
21c2: e3 1c f7  bbs7  $1c,$21bc
21c5: 1c        asl   a
21c6: 03 1d 2c  bbs0  $1d,$21f5
21c9: 1d        dec   x
21ca: 3d        inc   x
21cb: 1d        dec   x
21cc: 4f 1d     pcall $1d
21ce: 5c        lsr   a
21cf: 1d        dec   x
21d0: 6c 1d 75  ror   $751d
21d3: 1d        dec   x
21d4: 83 1d a8  bbs4  $1d,$217f
21d7: 1d        dec   x
21d8: ca 1d d9  mov1  $191d,6,c
21db: 1d        dec   x
21dc: ed        notc
21dd: 1d        dec   x
21de: 17 1e     or    a,($1e)+y
21e0: 71        tcall 7
21e1: 1e b0 1e  cmp   x,$1eb0
21e4: c8 1e     cmp   x,#$1e
21e6: 2c 1f e0  rol   $e01f
21e9: 1e 27 1f  cmp   x,$1f27
21ec: 27 1f     and   a,($1f+x)
21ee: 31        tcall 3
21ef: 1f 36 1f  jmp   ($1f36+x)

21f2: 74 1f     cmp   a,$1f+x
21f4: 9d        mov   x,sp
21f5: 1f c7 1f  jmp   ($1fc7+x)

21f8: ef        sleep
21f9: 1f 3b 1f  jmp   ($1f3b+x)

21fc: 23 20 6d  bbs1  $20,$226c
21ff: 20        clrp
2200: 27 1f     and   a,($1f+x)
2202: b0 20     bcs   $2224
2204: bd        mov   sp,x
2205: 20        clrp
2206: 55 21 5a  eor   a,$5a21+x
2209: 21        tcall 2
220a: 5f 21 64  jmp   $6421

220d: 21        tcall 2
220e: 69 21 4b  cmp   ($4b),($21)
2211: 1c        asl   a
2212: 77 1c     cmp   a,($1c)+y
2214: e4 f4     mov   a,$f4
2216: 64 f4     cmp   a,$f4
2218: d0 fa     bne   $2214
221a: 44 83     eor   a,$83
221c: 30 01     bmi   $221f
221e: 6f        ret

221f: 28 7f     and   a,#$7f
2221: 5d        mov   x,a
2222: f5 30 22  mov   a,$2230+x
2225: f0 f7     beq   $221e
2227: 58 80 83  eor   $83,#$80
222a: 7d        mov   a,x
222b: 1c        asl   a
222c: 5d        mov   x,a
222d: 1f a2 21  jmp   ($21a2+x)

2230: 01        tcall 0
2231: 01        tcall 0
2232: 01        tcall 0
2233: 01        tcall 0
2234: 01        tcall 0
2235: 01        tcall 0
2236: 00        nop
2237: 00        nop
2238: 00        nop
2239: 00        nop
223a: 00        nop
223b: 00        nop
223c: 01        tcall 0
223d: 01        tcall 0
223e: 01        tcall 0
223f: 01        tcall 0
2240: 01        tcall 0
2241: 00        nop
2242: 00        nop
2243: 00        nop
2244: 00        nop
2245: 00        nop
2246: 01        tcall 0
2247: 00        nop
2248: 00        nop
2249: 00        nop
224a: 00        nop
224b: 01        tcall 0
224c: 01        tcall 0
224d: 01        tcall 0
224e: 00        nop
224f: 01        tcall 0
2250: 00        nop
2251: 00        nop
2252: 01        tcall 0
2253: 00        nop
2254: 00        nop
2255: 00        nop
2256: 01        tcall 0
2257: 01        tcall 0
2258: 01        tcall 0
2259: 00        nop
225a: 00        nop
225b: 01        tcall 0
225c: 01        tcall 0
225d: 00        nop
225e: 01        tcall 0
225f: 01        tcall 0
2260: 01        tcall 0
2261: 01        tcall 0
2262: 01        tcall 0
2263: 01        tcall 0
2264: 01        tcall 0
2265: 01        tcall 0
2266: 01        tcall 0
2267: 01        tcall 0
2268: 01        tcall 0
2269: cd 00     mov   x,#$00
226b: 8f 08 e8  mov   $e8,#$08
226e: bf        mov   a,(x)+
226f: 28 7f     and   a,#$7f
2271: d5 ff 04  mov   $04ff+x,a
2274: 8d 0f     mov   y,#$0f
2276: bf        mov   a,(x)+
2277: d5 ff 04  mov   $04ff+x,a
227a: fe fa     dbnz  y,$2276
227c: 6e e8 ef  dbnz  $e8,$226e
227f: cd 00     mov   x,#$00
2281: 8d 40     mov   y,#$40
2283: 40        setp
2284: f5 00 08  mov   a,$0800+x
2287: d5 c0 07  mov   $07c0+x,a
228a: bf        mov   a,(x)+
228b: d5 7f 05  mov   $057f+x,a
228e: fe f4     dbnz  y,$2284
2290: 20        clrp
2291: f6 00 02  mov   a,$0200+y
2294: d6 c0 05  mov   $05c0+y,a
2297: f6 00 03  mov   a,$0300+y
229a: d6 c0 06  mov   $06c0+y,a
229d: fe f2     dbnz  y,$2291
229f: e5 80 07  mov   a,$0780
22a2: 28 7f     and   a,#$7f
22a4: c5 80 07  mov   $0780,a
22a7: e5 a0 07  mov   a,$07a0
22aa: 28 7f     and   a,#$7f
22ac: c5 a0 07  mov   $07a0,a
22af: e4 80     mov   a,$80
22b1: c5 40 01  mov   $0140,a
22b4: e4 81     mov   a,$81
22b6: c5 41 01  mov   $0141,a
22b9: e4 99     mov   a,$99
22bb: c5 42 01  mov   $0142,a
22be: e4 90     mov   a,$90
22c0: c5 43 01  mov   $0143,a
22c3: e4 91     mov   a,$91
22c5: c5 44 01  mov   $0144,a
22c8: e4 92     mov   a,$92
22ca: c5 45 01  mov   $0145,a
22cd: e4 93     mov   a,$93
22cf: c5 46 01  mov   $0146,a
22d2: e4 9d     mov   a,$9d
22d4: c5 47 01  mov   $0147,a
22d7: e4 9e     mov   a,$9e
22d9: c5 48 01  mov   $0148,a
22dc: e4 9f     mov   a,$9f
22de: c5 49 01  mov   $0149,a
22e1: e4 c7     mov   a,$c7
22e3: c5 4a 01  mov   $014a,a
22e6: e4 c8     mov   a,$c8
22e8: c5 4b 01  mov   $014b,a
22eb: e4 cc     mov   a,$cc
22ed: c5 4c 01  mov   $014c,a
22f0: e4 cd     mov   a,$cd
22f2: c5 4d 01  mov   $014d,a
22f5: e4 ce     mov   a,$ce
22f7: c5 4e 01  mov   $014e,a
22fa: 6f        ret

22fb: cd 00     mov   x,#$00
22fd: 8d 80     mov   y,#$80
22ff: f5 00 05  mov   a,$0500+x
2302: af        mov   (x)+,a
2303: fe fa     dbnz  y,$22ff
2305: cd 00     mov   x,#$00
2307: 8d 40     mov   y,#$40
2309: 40        setp
230a: f5 c0 07  mov   a,$07c0+x
230d: d5 00 08  mov   $0800+x,a
2310: f5 80 05  mov   a,$0580+x
2313: af        mov   (x)+,a
2314: fe f4     dbnz  y,$230a
2316: 20        clrp
2317: f6 c0 05  mov   a,$05c0+y
231a: d6 00 02  mov   $0200+y,a
231d: f6 c0 06  mov   a,$06c0+y
2320: d6 00 03  mov   $0300+y,a
2323: fe f2     dbnz  y,$2317
2325: 8f 00 e8  mov   $e8,#$00
2328: 8f 02 e9  mov   $e9,#$02
232b: 8d 1f     mov   y,#$1f
232d: f7 e8     mov   a,($e8)+y
232f: 08 e0     or    a,#$e0
2331: d7 e8     mov   ($e8)+y,a
2333: 60        clrc
2334: 98 20 e8  adc   $e8,#$20
2337: 90 f4     bcc   $232d
2339: ab e9     inc   $e9
233b: 78 04 e9  cmp   $e9,#$04
233e: d0 ed     bne   $232d
2340: 38 8a 80  and   $80,#$8a
2343: e5 40 01  mov   a,$0140
2346: 28 14     and   a,#$14
2348: 04 80     or    a,$80
234a: c4 80     mov   $80,a
234c: e5 41 01  mov   a,$0141
234f: c4 81     mov   $81,a
2351: 62 81     set3  $81
2353: e5 42 01  mov   a,$0142
2356: c4 99     mov   $99,a
2358: e5 43 01  mov   a,$0143
235b: c4 90     mov   $90,a
235d: e5 44 01  mov   a,$0144
2360: c4 91     mov   $91,a
2362: 3f 7c 0b  call  $0b7c
2365: e5 45 01  mov   a,$0145
2368: c4 92     mov   $92,a
236a: e5 46 01  mov   a,$0146
236d: c4 93     mov   $93,a
236f: 3f e3 13  call  $13e3
2372: e5 47 01  mov   a,$0147
2375: c4 9d     mov   $9d,a
2377: e5 48 01  mov   a,$0148
237a: c4 9e     mov   $9e,a
237c: e5 49 01  mov   a,$0149
237f: c4 9f     mov   $9f,a
2381: 3f af 13  call  $13af
2384: e5 4a 01  mov   a,$014a
2387: c4 c7     mov   $c7,a
2389: e5 4b 01  mov   a,$014b
238c: c4 c8     mov   $c8,a
238e: e5 4c 01  mov   a,$014c
2391: c4 cc     mov   $cc,a
2393: e5 4d 01  mov   a,$014d
2396: c4 cd     mov   $cd,a
2398: e5 4e 01  mov   a,$014e
239b: c4 ce     mov   $ce,a
239d: 8f 0d f2  mov   $f2,#$0d
23a0: fa 92 f3  mov   ($f3),($92)       ; set EFB
23a3: 6f        ret

23a4: cd 00     mov   x,#$00
23a6: e6        mov   a,(x)
23a7: 3c        rol   a
23a8: 90 45     bcc   $23ef
23aa: f4 01     mov   a,$01+x
23ac: 68 0e     cmp   a,#$0e
23ae: b0 3e     bcs   $23ee
23b0: 9f        xcn   a
23b1: 1c        asl   a
23b2: 8f 02 e1  mov   $e1,#$02
23b5: 98 00 e1  adc   $e1,#$00
23b8: c4 e0     mov   $e0,a
23ba: 8d 07     mov   y,#$07
23bc: f7 e0     mov   a,($e0)+y
23be: 68 40     cmp   a,#$40
23c0: 90 0a     bcc   $23cc
23c2: 68 50     cmp   a,#$50
23c4: 0d        push  psw
23c5: 28 01     and   a,#$01
23c7: 8e        pop   psw
23c8: b0 02     bcs   $23cc
23ca: bc        inc   a
23cb: bc        inc   a
23cc: 1c        asl   a
23cd: 1c        asl   a
23ce: fd        mov   y,a
23cf: f6 02 ff  mov   a,$ff02+y
23d2: 80        setc
23d3: a8 09     sbc   a,#$09
23d5: c4 e2     mov   $e2,a
23d7: f6 03 ff  mov   a,$ff03+y
23da: a8 00     sbc   a,#$00
23dc: c4 e3     mov   $e3,a
23de: 8d 00     mov   y,#$00
23e0: f7 e2     mov   a,($e2)+y
23e2: 7c        ror   a
23e3: 7c        ror   a
23e4: 90 09     bcc   $23ef
23e6: 8d 09     mov   y,#$09
23e8: f7 e0     mov   a,($e0)+y
23ea: 28 1f     and   a,#$1f
23ec: 68 0b     cmp   a,#$0b
23ee: ed        notc
23ef: 6b c6     ror   $c6
23f1: 7d        mov   a,x
23f2: 60        clrc
23f3: 88 10     adc   a,#$10
23f5: 5d        mov   x,a
23f6: 10 ae     bpl   $23a6
23f8: 5f 14 22  jmp   $2214

23fb: 4d        push  x
23fc: 6d        push  y
23fd: d8 ea     mov   $ea,x
23ff: 7e ea     cmp   y,$ea
2401: 90 04     bcc   $2407
2403: 6d        push  y
2404: eb ea     mov   y,$ea
2406: ce        pop   x
2407: f6 c0 01  mov   a,$01c0+y
240a: 80        setc
240b: b5 c0 01  sbc   a,$01c0+x
240e: 90 1f     bcc   $242f
2410: 5c        lsr   a
2411: 5c        lsr   a
2412: c4 ed     mov   $ed,a
2414: f6 c0 01  mov   a,$01c0+y
2417: fc        inc   y
2418: 80        setc
2419: a4 ed     sbc   a,$ed
241b: d6 c0 01  mov   $01c0+y,a
241e: fc        inc   y
241f: 80        setc
2420: a4 ed     sbc   a,$ed
2422: d6 c0 01  mov   $01c0+y,a
2425: fc        inc   y
2426: 80        setc
2427: a4 ed     sbc   a,$ed
2429: d6 c0 01  mov   $01c0+y,a
242c: 5f 4e 24  jmp   $244e

242f: 48 ff     eor   a,#$ff
2431: bc        inc   a
2432: 5c        lsr   a
2433: 5c        lsr   a
2434: c4 ed     mov   $ed,a
2436: f5 c0 01  mov   a,$01c0+x
2439: 1d        dec   x
243a: 80        setc
243b: a4 ed     sbc   a,$ed
243d: d5 c0 01  mov   $01c0+x,a
2440: 1d        dec   x
2441: 80        setc
2442: a4 ed     sbc   a,$ed
2444: d5 c0 01  mov   $01c0+x,a
2447: 1d        dec   x
2448: 80        setc
2449: a4 ed     sbc   a,$ed
244b: d5 c0 01  mov   $01c0+x,a
244e: ee        pop   y
244f: ce        pop   x
2450: 6f        ret

2451: fa 80 f4  mov   ($f4),($80)
2454: e4 95     mov   a,$95
2456: 3f 6a 24  call  $246a
2459: c4 f5     mov   $f5,a
245b: e4 96     mov   a,$96
245d: 3f 6a 24  call  $246a
2460: c4 f6     mov   $f6,a
2462: e4 97     mov   a,$97
2464: 3f 6a 24  call  $246a
2467: c4 f7     mov   $f7,a
2469: 6f        ret

246a: f0 3f     beq   $24ab
246c: c4 e8     mov   $e8,a
246e: 68 10     cmp   a,#$10
2470: b0 3a     bcs   $24ac
2472: 5d        mov   x,a
2473: f5 d3 24  mov   a,$24d3+x
2476: f0 03     beq   $247b
2478: 5d        mov   x,a
2479: e6        mov   a,(x)
247a: 6f        ret

247b: 78 03 e8  cmp   $e8,#$03
247e: d0 0b     bne   $248b
2480: 8f 00 ea  mov   $ea,#$00
2483: 8f 02 eb  mov   $eb,#$02
2486: 8d 05     mov   y,#$05
2488: f7 ea     mov   a,($ea)+y
248a: 6f        ret

248b: 78 04 e8  cmp   $e8,#$04
248e: d0 0c     bne   $249c
2490: e4 9e     mov   a,$9e
2492: f0 07     beq   $249b
2494: 9c        dec   a
2495: f8 ce     mov   x,$ce
2497: 8d 00     mov   y,#$00
2499: 9e        div   ya,x
249a: bc        inc   a
249b: 6f        ret

249c: 78 0c e8  cmp   $e8,#$0c
249f: d0 03     bne   $24a4
24a1: 42 81     set2  $81
24a3: 6f        ret

24a4: 78 0d e8  cmp   $e8,#$0d
24a7: d0 02     bne   $24ab
24a9: 52 81     clr2  $81
24ab: 6f        ret

24ac: 78 40 e8  cmp   $e8,#$40
24af: b0 06     bcs   $24b7
24b1: f8 e8     mov   x,$e8
24b3: f5 a0 01  mov   a,$01a0+x
24b6: 6f        ret

24b7: 8f 02 ef  mov   $ef,#$02
24ba: e4 e8     mov   a,$e8
24bc: 28 0f     and   a,#$0f
24be: c4 e9     mov   $e9,a
24c0: 9f        xcn   a
24c1: 1c        asl   a
24c2: 98 00 ef  adc   $ef,#$00
24c5: c4 ee     mov   $ee,a
24c7: e4 e8     mov   a,$e8
24c9: 68 50     cmp   a,#$50
24cb: b0 05     bcs   $24d2
24cd: 8d 07     mov   y,#$07
24cf: f7 ee     mov   a,($ee)+y
24d1: 6f        ret

24d2: 6f        ret

24d3: 00        nop
24d4: 80        setc
24d5: 81        tcall 8
24d6: 00        nop
24d7: 00        nop
24d8: 9d        mov   x,sp
24d9: 92 93     clr4  $93
24db: 9f        xcn   a
24dc: 00        nop
24dd: 99        adc   (x),(y)
24de: 9e        div   ya,x
24df: 00        nop
24e0: 00        nop
24e1: b1        tcall 11
24e2: b0 43     bcs   $2527
24e4: 81        tcall 8
24e5: 01        tcall 0
24e6: 6f        ret

24e7: 8d 00     mov   y,#$00
24e9: cd 00     mov   x,#$00
24eb: f4 00     mov   a,$00+x
24ed: 30 05     bmi   $24f4
24ef: e8 ff     mov   a,#$ff
24f1: 5f fd 24  jmp   $24fd

24f4: 7d        mov   a,x
24f5: 5c        lsr   a
24f6: fd        mov   y,a
24f7: f4 07     mov   a,$07+x
24f9: 60        clrc
24fa: 96 00 01  adc   a,$0100+y
24fd: 2d        push  a
24fe: 7d        mov   a,x
24ff: 9f        xcn   a
2500: fd        mov   y,a
2501: ae        pop   a
2502: d6 43 25  mov   $2543+y,a
2505: 7d        mov   a,x
2506: 60        clrc
2507: 88 10     adc   a,#$10
2509: 5d        mov   x,a
250a: 10 df     bpl   $24eb
250c: cd 00     mov   x,#$00
250e: f4 00     mov   a,$00+x
2510: 30 05     bmi   $2517
2512: e8 00     mov   a,#$00
2514: 5f 23 25  jmp   $2523

2517: 7d        mov   a,x
2518: 60        clrc
2519: 88 08     adc   a,#$08
251b: c4 f2     mov   $f2,a
251d: e4 f3     mov   a,$f3             ; read ENVX
251f: fb 0d     mov   y,$0d+x
2521: cf        mul   ya
2522: dd        mov   a,y
2523: 2d        push  a
2524: 7d        mov   a,x
2525: 9f        xcn   a
2526: fd        mov   y,a
2527: ae        pop   a
2528: d6 4b 25  mov   $254b+y,a
252b: 7d        mov   a,x
252c: 60        clrc
252d: 88 10     adc   a,#$10
252f: 5d        mov   x,a
2530: 10 dc     bpl   $250e
2532: e4 9e     mov   a,$9e
2534: f0 07     beq   $253d
2536: 9c        dec   a
2537: f8 ce     mov   x,$ce
2539: 8d 00     mov   y,#$00
253b: 9e        div   ya,x
253c: bc        inc   a
253d: c5 53 25  mov   $2553,a
2540: 52 81     clr2  $81
2542: 6f        ret

2543: 3c        rol   a
2544: ff        stop
2545: ff        stop
2546: ff        stop
2547: ff        stop
2548: ff        stop
2549: ff        stop
254a: 3c        rol   a
254b: 00        nop
254c: 00        nop
254d: 00        nop
254e: 00        nop
254f: 00        nop
2550: 00        nop
2551: 00        nop
2552: 00        nop
2553: 01        tcall 0
2554: e2 a0     set7  $a0
2556: fa c3 c4  mov   ($c4),($c3)
2559: 8f 00 c3  mov   $c3,#$00
255c: 8f 00 c5  mov   $c5,#$00
255f: 13 a1 45  bbc0  $a1,$25a7
2562: 8f e0 86  mov   $86,#$e0
2565: 8f 03 87  mov   $87,#$03
2568: 8f 0f 84  mov   $84,#$0f
256b: 12 a1     clr0  $a1
256d: e4 b0     mov   a,$b0
256f: 68 ff     cmp   a,#$ff
2571: f0 08     beq   $257b
2573: c2 a1     set6  $a1
2575: 3f 3a 26  call  $263a
2578: 5f a7 25  jmp   $25a7

257b: d2 a1     clr6  $a1
257d: b2 80     clr5  $80
257f: e8 00     mov   a,#$00
2581: 8d 00     mov   y,#$00
2583: d7 86     mov   ($86)+y,a
2585: 8d 06     mov   y,#$06
2587: d7 86     mov   ($86)+y,a
2589: 3f a3 26  call  $26a3
258c: 3f ec 09  call  $09ec
258f: e4 98     mov   a,$98
2591: 04 c5     or    a,$c5
2593: c4 c5     mov   $c5,a
2595: e8 00     mov   a,#$00
2597: 4b 98     lsr   $98
2599: b0 07     bcs   $25a2
259b: f0 0a     beq   $25a7
259d: 60        clrc
259e: 88 10     adc   a,#$10
25a0: 2f f5     bra   $2597
25a2: 5d        mov   x,a
25a3: e6        mov   a,(x)
25a4: 28 7f     and   a,#$7f
25a6: c6        mov   (x),a
25a7: 33 a1 45  bbc1  $a1,$25ef
25aa: 8f c0 86  mov   $86,#$c0
25ad: 8f 03 87  mov   $87,#$03
25b0: 8f 0e 84  mov   $84,#$0e
25b3: 32 a1     clr1  $a1
25b5: e4 b1     mov   a,$b1
25b7: 68 ff     cmp   a,#$ff
25b9: f0 08     beq   $25c3
25bb: e2 a1     set7  $a1
25bd: 3f 3a 26  call  $263a
25c0: 5f ef 25  jmp   $25ef

25c3: f2 a1     clr7  $a1
25c5: d2 80     clr6  $80
25c7: e8 00     mov   a,#$00
25c9: 8d 00     mov   y,#$00
25cb: d7 86     mov   ($86)+y,a
25cd: 8d 06     mov   y,#$06
25cf: d7 86     mov   ($86)+y,a
25d1: 3f a3 26  call  $26a3
25d4: 3f ec 09  call  $09ec
25d7: e4 98     mov   a,$98
25d9: 04 c5     or    a,$c5
25db: c4 c5     mov   $c5,a
25dd: e8 00     mov   a,#$00
25df: 4b 98     lsr   $98
25e1: b0 07     bcs   $25ea
25e3: f0 0a     beq   $25ef
25e5: 60        clrc
25e6: 88 10     adc   a,#$10
25e8: 2f f5     bra   $25df
25ea: 5d        mov   x,a
25eb: e6        mov   a,(x)
25ec: 28 7f     and   a,#$7f
25ee: c6        mov   (x),a
25ef: 3f a1 0c  call  $0ca1
25f2: 8f c0 86  mov   $86,#$c0
25f5: 8f 03 87  mov   $87,#$03
25f8: 8f 0e 84  mov   $84,#$0e
25fb: 3f 14 22  call  $2214
25fe: 8d 00     mov   y,#$00
2600: f7 86     mov   a,($86)+y
2602: 10 0c     bpl   $2610
2604: 8d 06     mov   y,#$06
2606: f7 86     mov   a,($86)+y
2608: d0 06     bne   $2610
260a: 3f 0f 15  call  $150f
260d: 5f fb 25  jmp   $25fb

2610: 60        clrc
2611: 98 20 86  adc   $86,#$20
2614: 98 00 87  adc   $87,#$00
2617: ab 84     inc   $84
2619: 78 10 84  cmp   $84,#$10
261c: 90 dd     bcc   $25fb
261e: 3f 5f 0c  call  $0c5f
2621: 3f c8 0d  call  $0dc8
2624: 3f 57 0e  call  $0e57
2627: 3f 95 12  call  $1295
262a: 3f 47 13  call  $1347
262d: 8f 5c f2  mov   $f2,#$5c
2630: fa c5 f3  mov   ($f3),($c5)       ; set KOF
2633: 8f 4c f2  mov   $f2,#$4c
2636: fa c3 f3  mov   ($f3),($c3)       ; set KON
2639: 6f        ret

263a: 1c        asl   a
263b: 5d        mov   x,a
263c: b0 16     bcs   $2654
263e: f5 ce 26  mov   a,$26ce+x
2641: 60        clrc
2642: 88 24     adc   a,#$24
2644: 8d 03     mov   y,#$03
2646: d7 86     mov   ($86)+y,a
2648: f5 cf 26  mov   a,$26cf+x
264b: 88 27     adc   a,#$27
264d: 8d 04     mov   y,#$04
264f: d7 86     mov   ($86)+y,a
2651: 5f 67 26  jmp   $2667

2654: f5 ce 27  mov   a,$27ce+x
2657: 60        clrc
2658: 88 24     adc   a,#$24
265a: 8d 03     mov   y,#$03
265c: d7 86     mov   ($86)+y,a
265e: f5 cf 27  mov   a,$27cf+x
2661: 88 27     adc   a,#$27
2663: 8d 04     mov   y,#$04
2665: d7 86     mov   ($86)+y,a
2667: e8 80     mov   a,#$80
2669: 8d 00     mov   y,#$00
266b: d7 86     mov   ($86)+y,a
266d: e8 02     mov   a,#$02
266f: 8d 06     mov   y,#$06
2671: d7 86     mov   ($86)+y,a
2673: 3f a3 26  call  $26a3
2676: 3f 51 14  call  $1451
2679: 30 27     bmi   $26a2
267b: e8 80     mov   a,#$80
267d: c6        mov   (x),a
267e: e4 84     mov   a,$84
2680: d4 01     mov   $01+x,a
2682: e8 00     mov   a,#$00
2684: d4 02     mov   $02+x,a
2686: e8 ff     mov   a,#$ff
2688: d4 07     mov   $07+x,a
268a: 7d        mov   a,x
268b: 9f        xcn   a
268c: 5d        mov   x,a
268d: f4 88     mov   a,$88+x
268f: 04 c5     or    a,$c5
2691: c4 c5     mov   $c5,a
2693: f4 88     mov   a,$88+x
2695: 48 ff     eor   a,#$ff
2697: c4 e6     mov   $e6,a
2699: 8f 4d f2  mov   $f2,#$4d
269c: e4 f3     mov   a,$f3          ; set EON
269e: 24 e6     and   a,$e6
26a0: c4 f3     mov   $f3,a
26a2: 6f        ret

26a3: e8 00     mov   a,#$00
26a5: 8d 13     mov   y,#$13
26a7: d7 86     mov   ($86)+y,a
26a9: 8d 14     mov   y,#$14
26ab: d7 86     mov   ($86)+y,a
26ad: 8d 15     mov   y,#$15
26af: d7 86     mov   ($86)+y,a
26b1: 8d 11     mov   y,#$11
26b3: d7 86     mov   ($86)+y,a
26b5: e8 ff     mov   a,#$ff
26b7: 8d 18     mov   y,#$18
26b9: d7 86     mov   ($86)+y,a
26bb: 8d 16     mov   y,#$16
26bd: d7 86     mov   ($86)+y,a
26bf: 8d 17     mov   y,#$17
26c1: d7 86     mov   ($86)+y,a
26c3: 8d 19     mov   y,#$19
26c5: d7 86     mov   ($86)+y,a
26c7: e8 40     mov   a,#$40
26c9: 8d 1a     mov   y,#$1a
26cb: d7 86     mov   ($86)+y,a
26cd: 6f        ret
