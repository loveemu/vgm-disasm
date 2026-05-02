0800: 20        clrp
0801: cd 1f     mov   x,#$1f
0803: bd        mov   sp,x
0804: e8 00     mov   a,#$00
0806: 5d        mov   x,a
0807: af        mov   (x)+,a
0808: c8 f0     cmp   x,#$f0
080a: d0 fb     bne   $0807
080c: 8f 02 01  mov   $01,#$02
080f: e8 00     mov   a,#$00
0811: c4 00     mov   $00,a
0813: fd        mov   y,a
0814: d7 00     mov   ($00)+y,a
0816: ab 00     inc   $00
0818: d0 fa     bne   $0814
081a: ab 01     inc   $01
081c: 78 08 01  cmp   $01,#$08
081f: 90 f3     bcc   $0814
0821: 3f 03 13  call  $1303
0824: 3f 15 13  call  $1315
0827: e8 01     mov   a,#$01
0829: 3f ef 0d  call  $0def
082c: a2 33     set5  $33
082e: e8 7f     mov   a,#$7f
0830: 8d 0c     mov   y,#$0c
0832: 3f bf 09  call  $09bf
0835: 8d 1c     mov   y,#$1c
0837: 3f bf 09  call  $09bf
083a: e8 1b     mov   a,#$1b
083c: 8d 5d     mov   y,#$5d
083e: 3f bf 09  call  $09bf
0841: 3f 0c 17  call  $170c
0844: 8f f0 f1  mov   $f1,#$f0
0847: e8 20     mov   a,#$20
0849: c4 fa     mov   $fa,a
084b: 8f 01 f1  mov   $f1,#$01
084e: 3f bd 16  call  $16bd
0851: e4 dc     mov   a,$dc
0853: f0 62     beq   $08b7
0855: eb fd     mov   y,$fd
0857: f0 fc     beq   $0855
0859: cc e4 00  mov   $00e4,y
085c: e8 20     mov   a,#$20
085e: cf        mul   ya
085f: 60        clrc
0860: 84 dd     adc   a,$dd
0862: c4 dd     mov   $dd,a
0864: 90 07     bcc   $086d
0866: 69 38 37  cmp   ($37),($38)
0869: f0 02     beq   $086d
086b: ab 37     inc   $37
086d: e4 eb     mov   a,$eb
086f: d0 46     bne   $08b7
0871: 3f de 09  call  $09de
0874: 3f 96 0a  call  $0a96
0877: 3f 20 0a  call  $0a20
087a: e5 e9 00  mov   a,$00e9
087d: 04 c2     or    a,$c2
087f: c4 c2     mov   $c2,a
0881: cd 00     mov   x,#$00
0883: c9 e9 00  mov   $00e9,x
0886: 8f 01 32  mov   $32,#$01
0889: f5 e0 03  mov   a,$03e0+x
088c: 30 15     bmi   $08a3
088e: c4 07     mov   $07,a
0890: f5 e1 03  mov   a,$03e1+x
0893: f0 0b     beq   $08a0
0895: 3f 2d 0b  call  $0b2d
0898: 3f 59 0b  call  $0b59
089b: 3f 85 0b  call  $0b85
089e: 2f 03     bra   $08a3
08a0: 3f 0e 16  call  $160e
08a3: e8 00     mov   a,#$00
08a5: d5 e1 03  mov   $03e1+x,a
08a8: 3d        inc   x
08a9: 3d        inc   x
08aa: c8 10     cmp   x,#$10
08ac: d0 05     bne   $08b3
08ae: 8f ff d0  mov   $d0,#$ff
08b1: 2f d3     bra   $0886
08b3: 0b 32     asl   $32
08b5: d0 d2     bne   $0889
08b7: 3f af 14  call  $14af
08ba: 3f 37 10  call  $1037
08bd: 3f fe 14  call  $14fe
08c0: 2f 8c     bra   $084e
08c2: 6f        ret

; handle a note vcmd (80-df)
08c3: ad ca     cmp   y,#$ca
08c5: 90 05     bcc   $08cc
; vcmds ca-df - percussion note
08c7: 3f 30 0c  call  $0c30
08ca: 8d a4     mov   y,#$a4
; vcmds 80-c7,c8,c9 - note/tie/rest
08cc: ad c8     cmp   y,#$c8
08ce: b0 f2     bcs   $08c2
08d0: fa d0 d1  mov   ($d1),($d0)
08d3: 29 32 d1  and   ($d1),($32)
08d6: f0 ea     beq   $08c2
; vcmds 80-c7 - note (not number in Y)
08d8: dd        mov   a,y
08d9: eb 07     mov   y,$07
08db: 28 7f     and   a,#$7f
08dd: 60        clrc
08de: 96 a5 07  adc   a,$07a5+y
08e1: 60        clrc
08e2: 95 c0 03  adc   a,$03c0+x
08e5: d5 81 02  mov   $0281+x,a
08e8: f5 c1 02  mov   a,$02c1+x
08eb: d5 80 02  mov   $0280+x,a
08ee: f5 41 03  mov   a,$0341+x
08f1: 5c        lsr   a
08f2: e8 00     mov   a,#$00
08f4: 7c        ror   a
08f5: d5 20 03  mov   $0320+x,a
08f8: e8 00     mov   a,#$00
08fa: d4 83     mov   $83+x,a
08fc: d5 20 01  mov   $0120+x,a
08ff: d5 80 03  mov   $0380+x,a
0902: d4 82     mov   $82+x,a
0904: 09 32 c2  or    ($c2),($32)
0907: 09 32 30  or    ($30),($32)
090a: f5 e0 02  mov   a,$02e0+x
090d: d4 a2     mov   $a2+x,a
090f: f0 1e     beq   $092f
0911: f5 e1 02  mov   a,$02e1+x
0914: d4 a3     mov   $a3+x,a
0916: f5 00 03  mov   a,$0300+x
0919: d0 0a     bne   $0925
091b: f5 81 02  mov   a,$0281+x
091e: 80        setc
091f: b5 01 03  sbc   a,$0301+x
0922: d5 81 02  mov   $0281+x,a
0925: f5 01 03  mov   a,$0301+x
0928: 60        clrc
0929: 95 81 02  adc   a,$0281+x
092c: 3f 56 0e  call  $0e56
092f: 3f 6e 0e  call  $0e6e
0932: 8d 00     mov   y,#$00
0934: e4 cd     mov   a,$cd
0936: 80        setc
0937: a8 34     sbc   a,#$34
0939: b0 09     bcs   $0944
093b: e4 cd     mov   a,$cd
093d: 80        setc
093e: a8 13     sbc   a,#$13
0940: b0 06     bcs   $0948
0942: dc        dec   y
0943: 1c        asl   a
0944: 7a cc     addw  ya,$cc
0946: da cc     movw  $cc,ya
0948: 4d        push  x
0949: e4 cd     mov   a,$cd
094b: 1c        asl   a
094c: 8d 00     mov   y,#$00
094e: cd 18     mov   x,#$18
0950: 9e        div   ya,x
0951: 5d        mov   x,a
0952: f6 c5 09  mov   a,$09c5+y
0955: c4 0d     mov   $0d,a
0957: f6 c4 09  mov   a,$09c4+y
095a: c4 0c     mov   $0c,a
095c: f6 c7 09  mov   a,$09c7+y
095f: 2d        push  a
0960: f6 c6 09  mov   a,$09c6+y
0963: ee        pop   y
0964: 9a 0c     subw  ya,$0c
0966: eb cc     mov   y,$cc
0968: cf        mul   ya
0969: dd        mov   a,y
096a: 8d 00     mov   y,#$00
096c: 7a 0c     addw  ya,$0c
096e: cb 0d     mov   $0d,y
0970: 1c        asl   a
0971: 2b 0d     rol   $0d
0973: c4 0c     mov   $0c,a
0975: 2f 04     bra   $097b
0977: 4b 0d     lsr   $0d
0979: 7c        ror   a
097a: 3d        inc   x
097b: c8 06     cmp   x,#$06
097d: d0 f8     bne   $0977
097f: c4 0c     mov   $0c,a
0981: ce        pop   x
0982: f5 a0 01  mov   a,$01a0+x
0985: eb 0d     mov   y,$0d
0987: cf        mul   ya
0988: da 0e     movw  $0e,ya
098a: f5 a0 01  mov   a,$01a0+x
098d: eb 0c     mov   y,$0c
098f: cf        mul   ya
0990: 6d        push  y
0991: f5 a1 01  mov   a,$01a1+x
0994: eb 0c     mov   y,$0c
0996: cf        mul   ya
0997: 7a 0e     addw  ya,$0e
0999: da 0e     movw  $0e,ya
099b: f5 a1 01  mov   a,$01a1+x
099e: eb 0d     mov   y,$0d
09a0: cf        mul   ya
09a1: fd        mov   y,a
09a2: ae        pop   a
09a3: 7a 0e     addw  ya,$0e
09a5: da 0e     movw  $0e,ya
09a7: 7d        mov   a,x
09a8: 28 0f     and   a,#$0f
09aa: 9f        xcn   a
09ab: 5c        lsr   a
09ac: 08 02     or    a,#$02
09ae: fd        mov   y,a
09af: e4 0e     mov   a,$0e
09b1: 3f b7 09  call  $09b7
09b4: fc        inc   y
09b5: e4 0f     mov   a,$0f
09b7: fa d0 d1  mov   ($d1),($d0)
09ba: 29 32 d1  and   ($d1),($32)
09bd: f0 04     beq   $09c3
09bf: cb f2     mov   $f2,y
09c1: c4 f3     mov   $f3,a
09c3: 6f        ret

; pitch table
09c4: dw $085f
09c6: dw $08de
09c8: dw $0965
09ca: dw $09f4
09cc: dw $0a8c
09ce: dw $0b2c
09d0: dw $0bd6
09d2: dw $0c8b
09d4: dw $0d4a
09d6: dw $0e14
09d8: dw $0eea
09da: dw $0fcd
09dc: dw $10be

09de: 8f 00 c2  mov   $c2,#$00
09e1: e8 03     mov   a,#$03
09e3: c4 07     mov   $07,a
09e5: 8f ff d0  mov   $d0,#$ff
09e8: f8 07     mov   x,$07
09ea: d0 03     bne   $09ef
09ec: 3f 20 0a  call  $0a20
09ef: f5 87 07  mov   a,$0787+x
09f2: f0 1e     beq   $0a12
09f4: c4 db     mov   $db,a
09f6: ec e4 00  mov   y,$00e4
09f9: f5 0c 04  mov   a,$040c+x
09fc: cf        mul   ya
09fd: 60        clrc
09fe: 95 00 04  adc   a,$0400+x
0a01: d5 00 04  mov   $0400+x,a
0a04: dd        mov   a,y
0a05: 88 00     adc   a,#$00
0a07: f0 09     beq   $0a12
0a09: c4 da     mov   $da,a
0a0b: 3f 32 0a  call  $0a32
0a0e: 8b da     dec   $da
0a10: d0 f9     bne   $0a0b
0a12: 8b 07     dec   $07
0a14: 10 d2     bpl   $09e8
0a16: 6f        ret

0a17: dd        mov   a,y
0a18: f0 06     beq   $0a20
0a1a: f6 87 07  mov   a,$0787+y
0a1d: c4 d0     mov   $d0,a
0a1f: 6f        ret

0a20: e5 88 07  mov   a,$0788
0a23: 05 89 07  or    a,$0789
0a26: 05 8a 07  or    a,$078a
0a29: 45 87 07  eor   a,$0787
0a2c: 25 87 07  and   a,$0787
0a2f: c4 d0     mov   $d0,a
0a31: 6f        ret

0a32: cd 00     mov   x,#$00
0a34: 8f 01 32  mov   $32,#$01
0a37: e4 07     mov   a,$07
0a39: f0 02     beq   $0a3d
0a3b: cd 10     mov   x,#$10
0a3d: 4b db     lsr   $db
0a3f: 90 4e     bcc   $0a8f
0a41: d8 de     mov   $de,x
0a43: e8 01     mov   a,#$01
0a45: d5 e1 03  mov   $03e1+x,a
0a48: 9b 42     dec   $42+x
0a4a: d0 3d     bne   $0a89
0a4c: 3f 25 0c  call  $0c25
0a4f: d0 05     bne   $0a56
; vcmd 00 - end repeat/return
0a51: e4 07     mov   a,$07
0a53: 5f d9 11  jmp   $11d9

; vcmd branches
0a56: 30 13     bmi   $0a6b
0a58: d5 60 01  mov   $0160+x,a
0a5b: 3f 25 0c  call  $0c25
0a5e: 30 0b     bmi   $0a6b
0a60: f0 ef     beq   $0a51
0a62: 60        clrc
0a63: 95 60 01  adc   a,$0160+x
0a66: d5 60 01  mov   $0160+x,a
0a69: 2f f0     bra   $0a5b
; vcmd branches 80-ff
0a6b: 68 e0     cmp   a,#$e0
0a6d: 90 05     bcc   $0a74
0a6f: 3f 13 0c  call  $0c13
0a72: 2f d8     bra   $0a4c
; vcmds 80-df - note
0a74: 3f c3 08  call  $08c3
0a77: f5 60 01  mov   a,$0160+x
0a7a: d4 42     mov   $42+x,a
0a7c: fd        mov   y,a
0a7d: f5 61 01  mov   a,$0161+x
0a80: cf        mul   ya
0a81: dd        mov   a,y
0a82: d0 01     bne   $0a85
0a84: bc        inc   a
0a85: d4 43     mov   $43+x,a
0a87: 2f 03     bra   $0a8c
0a89: 3f 44 15  call  $1544
0a8c: 3f 33 0e  call  $0e33
0a8f: 3d        inc   x
0a90: 3d        inc   x
0a91: 0b 32     asl   $32
0a93: d0 a8     bne   $0a3d
0a95: 6f        ret

0a96: cd 03     mov   x,#$03
0a98: 3f bb 0a  call  $0abb
0a9b: 3f de 0a  call  $0ade
0a9e: 1d        dec   x
0a9f: 10 f7     bpl   $0a98
0aa1: e4 cb     mov   a,$cb
0aa3: f0 15     beq   $0aba
0aa5: ba c7     movw  ya,$c7
0aa7: 7a c3     addw  ya,$c3
0aa9: da c3     movw  $c3,ya
0aab: ba c9     movw  ya,$c9
0aad: 7a c5     addw  ya,$c5
0aaf: 6e cb 06  dbnz  $cb,$0ab8
0ab2: ba cb     movw  ya,$cb
0ab4: da c3     movw  $c3,ya
0ab6: eb e2     mov   y,$e2
0ab8: da c5     movw  $c5,ya
0aba: 6f        ret

0abb: f4 d6     mov   a,$d6+x
0abd: f0 1e     beq   $0add
0abf: 9b d6     dec   $d6+x
0ac1: f0 14     beq   $0ad7
0ac3: f5 14 04  mov   a,$0414+x
0ac6: 60        clrc
0ac7: 95 08 04  adc   a,$0408+x
0aca: d5 08 04  mov   $0408+x,a
0acd: f5 18 04  mov   a,$0418+x
0ad0: 95 0c 04  adc   a,$040c+x
0ad3: d5 0c 04  mov   $040c+x,a
0ad6: 6f        ret

0ad7: f5 10 04  mov   a,$0410+x
0ada: d5 0c 04  mov   $040c+x,a
0add: 6f        ret

0ade: f4 d2     mov   a,$d2+x
0ae0: f0 1e     beq   $0b00
0ae2: 1c        asl   a
0ae3: e5 87 07  mov   a,$0787
0ae6: 04 c2     or    a,$c2
0ae8: c4 c2     mov   $c2,a
0aea: 90 23     bcc   $0b0f
0aec: f5 95 07  mov   a,$0795+x
0aef: 80        setc
0af0: b5 9d 07  sbc   a,$079d+x
0af3: d5 95 07  mov   $0795+x,a
0af6: f5 99 07  mov   a,$0799+x
0af9: a8 00     sbc   a,#$00
0afb: 90 04     bcc   $0b01
0afd: d5 99 07  mov   $0799+x,a
0b00: 6f        ret

0b01: e8 00     mov   a,#$00
0b03: d5 99 07  mov   $0799+x,a
0b06: d4 d2     mov   $d2+x,a
0b08: 4d        push  x
0b09: 7d        mov   a,x
0b0a: 3f d9 11  call  $11d9
0b0d: ce        pop   x
0b0e: 6f        ret

0b0f: f5 9d 07  mov   a,$079d+x
0b12: 60        clrc
0b13: 95 95 07  adc   a,$0795+x
0b16: d5 95 07  mov   $0795+x,a
0b19: e8 00     mov   a,#$00
0b1b: 95 99 07  adc   a,$0799+x
0b1e: b0 04     bcs   $0b24
0b20: d5 99 07  mov   $0799+x,a
0b23: 6f        ret

0b24: e8 ff     mov   a,#$ff
0b26: d5 99 07  mov   $0799+x,a
0b29: bc        inc   a
0b2a: d4 d2     mov   $d2+x,a
0b2c: 6f        ret

0b2d: f4 62     mov   a,$62+x
0b2f: f0 27     beq   $0b58
0b31: 09 32 c2  or    ($c2),($32)
0b34: 9b 62     dec   $62+x
0b36: d0 0a     bne   $0b42
0b38: e8 00     mov   a,#$00
0b3a: d5 c0 01  mov   $01c0+x,a
0b3d: f5 00 02  mov   a,$0200+x
0b40: 2f 10     bra   $0b52
0b42: 60        clrc
0b43: f5 c0 01  mov   a,$01c0+x
0b46: 95 e0 01  adc   a,$01e0+x
0b49: d5 c0 01  mov   $01c0+x,a
0b4c: f5 c1 01  mov   a,$01c1+x
0b4f: 95 e1 01  adc   a,$01e1+x
0b52: d5 c1 01  mov   $01c1+x,a
0b55: d5 c1 03  mov   $03c1+x,a
0b58: 6f        ret

0b59: f5 21 01  mov   a,$0121+x
0b5c: fd        mov   y,a
0b5d: f0 21     beq   $0b80
0b5f: f5 a1 03  mov   a,$03a1+x
0b62: de 82 19  cbne  $82+x,$0b7e
0b65: 09 32 c2  or    ($c2),($32)
0b68: f5 80 03  mov   a,$0380+x
0b6b: 10 07     bpl   $0b74
0b6d: fc        inc   y
0b6e: d0 04     bne   $0b74
0b70: e8 80     mov   a,#$80
0b72: 2f 04     bra   $0b78
0b74: 60        clrc
0b75: 95 81 03  adc   a,$0381+x
0b78: d5 80 03  mov   $0380+x,a
0b7b: 5f 9d 16  jmp   $169d

0b7e: bb 82     inc   $82+x
0b80: e8 ff     mov   a,#$ff
0b82: 5f aa 16  jmp   $16aa

0b85: f4 63     mov   a,$63+x
0b87: f0 24     beq   $0bad
0b89: 09 32 c2  or    ($c2),($32)
0b8c: 9b 63     dec   $63+x
0b8e: d0 0a     bne   $0b9a
0b90: e8 00     mov   a,#$00
0b92: d5 20 02  mov   $0220+x,a
0b95: f5 60 02  mov   a,$0260+x
0b98: 2f 10     bra   $0baa
0b9a: 60        clrc
0b9b: f5 20 02  mov   a,$0220+x
0b9e: 95 40 02  adc   a,$0240+x
0ba1: d5 20 02  mov   $0220+x,a
0ba4: f5 21 02  mov   a,$0221+x
0ba7: 95 41 02  adc   a,$0241+x
0baa: d5 21 02  mov   $0221+x,a
0bad: e4 32     mov   a,$32
0baf: 24 c2     and   a,$c2
0bb1: f0 4a     beq   $0bfd
0bb3: f5 21 02  mov   a,$0221+x
0bb6: fd        mov   y,a
0bb7: f5 20 02  mov   a,$0220+x
0bba: da cc     movw  $cc,ya
0bbc: 7d        mov   a,x
0bbd: 28 0f     and   a,#$0f
0bbf: 9f        xcn   a
0bc0: 5c        lsr   a
0bc1: c4 ce     mov   $ce,a
0bc3: eb cd     mov   y,$cd
0bc5: f6 ff 0b  mov   a,$0bff+y
0bc8: 80        setc
0bc9: b6 fe 0b  sbc   a,$0bfe+y
0bcc: eb cc     mov   y,$cc
0bce: cf        mul   ya
0bcf: dd        mov   a,y
0bd0: eb cd     mov   y,$cd
0bd2: 60        clrc
0bd3: 96 fe 0b  adc   a,$0bfe+y
0bd6: fd        mov   y,a
0bd7: f5 01 02  mov   a,$0201+x
0bda: cf        mul   ya
0bdb: f5 61 02  mov   a,$0261+x
0bde: 1c        asl   a
0bdf: 13 ce 01  bbc0  $ce,$0be3
0be2: 1c        asl   a
0be3: dd        mov   a,y
0be4: 28 7f     and   a,#$7f
0be6: 90 03     bcc   $0beb
0be8: 48 ff     eor   a,#$ff
0bea: bc        inc   a
0beb: eb ce     mov   y,$ce
0bed: 3f b7 09  call  $09b7
0bf0: 8d 14     mov   y,#$14
0bf2: e8 00     mov   a,#$00
0bf4: 9a cc     subw  ya,$cc
0bf6: da cc     movw  $cc,ya
0bf8: ab ce     inc   $ce
0bfa: 33 ce c6  bbc1  $ce,$0bc3
0bfd: 6f        ret

; pan table
0bfe: db $00,$01,$03,$07,$0d,$15,$1e,$29
0c06: db $34,$42,$51,$5e,$67,$6e,$73,$77
0c0e: db $7a,$7c,$7d,$7e,$7f

; dispatch vcmd in A (eo-ff)
0c13: 1c        asl   a
0c14: fd        mov   y,a
0c15: f6 d7 0d  mov   a,$0dd7+y
0c18: 2d        push  a
0c19: f6 d6 0d  mov   a,$0dd6+y
0c1c: 2d        push  a
0c1d: dd        mov   a,y
0c1e: 5c        lsr   a
0c1f: fd        mov   y,a
0c20: f6 70 0e  mov   a,$0e70+y
0c23: f0 08     beq   $0c2d
; read new argument to A and Y
0c25: e7 10     mov   a,($10+x)
; advance reading ptr
0c27: bb 10     inc   $10+x
0c29: d0 02     bne   $0c2d
0c2b: bb 11     inc   $11+x
0c2d: fd        mov   y,a
0c2e: 6f        ret

; vcmd fb - nop
0c2f: 6f        ret

; vcmd e0 - set instrument
0c30: d5 80 01  mov   $0180+x,a
0c33: fa d0 d1  mov   ($d1),($d0)
0c36: 29 32 d1  and   ($d1),($32)
0c39: f0 4f     beq   $0c8a
0c3b: fd        mov   y,a
0c3c: 10 06     bpl   $0c44
0c3e: 80        setc
0c3f: a8 ca     sbc   a,#$ca
0c41: 60        clrc
0c42: 84 df     adc   a,$df
0c44: 8d 06     mov   y,#$06
0c46: cf        mul   ya
0c47: da 0c     movw  $0c,ya
0c49: 60        clrc
0c4a: 98 00 0c  adc   $0c,#$00
0c4d: 98 18 0d  adc   $0d,#$18
0c50: 4d        push  x
0c51: 7d        mov   a,x
0c52: 28 0f     and   a,#$0f
0c54: 9f        xcn   a
0c55: 5c        lsr   a
0c56: 08 04     or    a,#$04
0c58: 5d        mov   x,a
0c59: 8d 00     mov   y,#$00
0c5b: f7 0c     mov   a,($0c)+y
0c5d: 10 0e     bpl   $0c6d
0c5f: 28 1f     and   a,#$1f
0c61: 38 20 33  and   $33,#$20
0c64: 0e 33 00  tset1 $0033
0c67: 09 32 34  or    ($34),($32)
0c6a: dd        mov   a,y
0c6b: 2f 07     bra   $0c74
0c6d: e4 32     mov   a,$32
0c6f: 4e 34 00  tclr1 $0034
0c72: f7 0c     mov   a,($0c)+y
0c74: d8 f2     mov   $f2,x
0c76: c4 f3     mov   $f3,a
0c78: 3d        inc   x
0c79: fc        inc   y
0c7a: ad 04     cmp   y,#$04
0c7c: d0 f4     bne   $0c72
0c7e: ce        pop   x
0c7f: f7 0c     mov   a,($0c)+y
0c81: d5 a1 01  mov   $01a1+x,a
0c84: fc        inc   y
0c85: f7 0c     mov   a,($0c)+y
0c87: d5 a0 01  mov   $01a0+x,a
0c8a: 6f        ret

; vcmd e1 - pan
0c8b: d5 61 02  mov   $0261+x,a
0c8e: 28 1f     and   a,#$1f
0c90: d5 21 02  mov   $0221+x,a
0c93: e8 00     mov   a,#$00
0c95: d5 20 02  mov   $0220+x,a
0c98: 6f        ret

; vcmd e2 - pan fade
0c99: d4 63     mov   $63+x,a
0c9b: 2d        push  a
0c9c: 3f 25 0c  call  $0c25
0c9f: d5 60 02  mov   $0260+x,a
0ca2: 80        setc
0ca3: b5 21 02  sbc   a,$0221+x
0ca6: ce        pop   x
0ca7: 3f 79 0e  call  $0e79
0caa: d5 40 02  mov   $0240+x,a
0cad: dd        mov   a,y
0cae: d5 41 02  mov   $0241+x,a
0cb1: 6f        ret

; vcmd e3 - vibrato on
0cb2: d5 40 03  mov   $0340+x,a
0cb5: 3f 25 0c  call  $0c25
0cb8: d5 21 03  mov   $0321+x,a
0cbb: 3f 25 0c  call  $0c25
; vcmd e4 - vibrato off
0cbe: d5 a0 03  mov   $03a0+x,a
0cc1: d5 61 03  mov   $0361+x,a
0cc4: e8 00     mov   a,#$00
0cc6: d5 41 03  mov   $0341+x,a
0cc9: 6f        ret

; vcmd f0 - vibrato fade
0cca: d5 41 03  mov   $0341+x,a
0ccd: 2d        push  a
0cce: 8d 00     mov   y,#$00
0cd0: f5 a0 03  mov   a,$03a0+x
0cd3: ce        pop   x
0cd4: 9e        div   ya,x
0cd5: f8 de     mov   x,$de
0cd7: d5 60 03  mov   $0360+x,a
0cda: 6f        ret

; vcmd e5 - nop
0cdb: 6f        ret

; vcmd e6 - skip to next byte
0cdc: 5f 25 0c  jmp   $0c25

; vcmd e7 - tempo
0cdf: eb 07     mov   y,$07
0ce1: d6 0c 04  mov   $040c+y,a
0ce4: d6 04 04  mov   $0404+y,a
0ce7: e8 00     mov   a,#$00
0ce9: d6 08 04  mov   $0408+y,a
0cec: 6f        ret

; vcmd e8 - tempo fade
0ced: eb 07     mov   y,$07
0cef: d6 d6 00  mov   $00d6+y,a
0cf2: 2d        push  a
0cf3: 3f 25 0c  call  $0c25
0cf6: eb 07     mov   y,$07
0cf8: d6 10 04  mov   $0410+y,a
0cfb: 80        setc
0cfc: b6 0c 04  sbc   a,$040c+y
0cff: ce        pop   x
0d00: 3f 79 0e  call  $0e79
0d03: 6d        push  y
0d04: eb 07     mov   y,$07
0d06: d6 14 04  mov   $0414+y,a
0d09: ae        pop   a
0d0a: d6 18 04  mov   $0418+y,a
0d0d: 6f        ret

; vcmd e9 - global transpose
0d0e: eb 07     mov   y,$07
0d10: d6 a5 07  mov   $07a5+y,a
0d13: 6f        ret

; vcmd ea - per-voice transpose
0d14: d5 c0 03  mov   $03c0+x,a
0d17: 6f        ret

; vcmd eb - tremolo on
0d18: d5 a1 03  mov   $03a1+x,a
0d1b: 3f 25 0c  call  $0c25
0d1e: d5 81 03  mov   $0381+x,a
0d21: 3f 25 0c  call  $0c25
; vcmd ec - tremolo off
0d24: d5 21 01  mov   $0121+x,a
0d27: 6f        ret

; vcmd f1 - pitch envelope (release)
0d28: e8 01     mov   a,#$01
0d2a: 5f 2f 0d  jmp   $0d2f

; vcmd f2 - pitch envelope (attack)
0d2d: e8 00     mov   a,#$00
0d2f: d5 00 03  mov   $0300+x,a
0d32: dd        mov   a,y
0d33: d5 e1 02  mov   $02e1+x,a
0d36: 3f 25 0c  call  $0c25
0d39: d5 e0 02  mov   $02e0+x,a
0d3c: 3f 25 0c  call  $0c25
0d3f: d5 01 03  mov   $0301+x,a
0d42: 6f        ret

; vcmd f3 - pitch envelope offs
0d43: d5 e0 02  mov   $02e0+x,a
0d46: 6f        ret

; vcmd ed - volume
0d47: d5 c1 01  mov   $01c1+x,a
0d4a: d5 c1 03  mov   $03c1+x,a
0d4d: e8 00     mov   a,#$00
0d4f: d5 c0 01  mov   $01c0+x,a
0d52: 6f        ret

; vcmd ee - volume fade
0d53: d4 62     mov   $62+x,a
0d55: 2d        push  a
0d56: 3f 25 0c  call  $0c25
0d59: d5 00 02  mov   $0200+x,a
0d5c: 80        setc
0d5d: b5 c1 01  sbc   a,$01c1+x
0d60: ce        pop   x
0d61: 3f 79 0e  call  $0e79
0d64: d5 e0 01  mov   $01e0+x,a
0d67: dd        mov   a,y
0d68: d5 e1 01  mov   $01e1+x,a
0d6b: 6f        ret

; vcmd f4 - tuning
0d6c: d5 c1 02  mov   $02c1+x,a
0d6f: 6f        ret

; vcmd f5 - echo vbits/volume
0d70: c4 00     mov   $00,a
0d72: 8f 00 01  mov   $01,#$00
0d75: e4 07     mov   a,$07
0d77: d0 05     bne   $0d7e
0d79: fa 00 01  mov   ($01),($00)
0d7c: 2f 10     bra   $0d8e
0d7e: 8d 0e     mov   y,#$0e
0d80: 76 f0 03  cmp   a,$03f0+y
0d83: 60        clrc
0d84: d0 02     bne   $0d88
0d86: 4b 00     lsr   $00
0d88: 6b 01     ror   $01
0d8a: dc        dec   y
0d8b: dc        dec   y
0d8c: 10 f2     bpl   $0d80
0d8e: fd        mov   y,a
0d8f: e4 01     mov   a,$01
0d91: d6 a1 07  mov   $07a1+y,a
0d94: 3f 25 0c  call  $0c25
0d97: e8 00     mov   a,#$00
0d99: da c3     movw  $c3,ya
0d9b: 3f 25 0c  call  $0c25
0d9e: e8 00     mov   a,#$00
0da0: da c5     movw  $c5,ya
0da2: b2 33     clr5  $33
0da4: 6f        ret

; vcmd f8 - echo volume fade
0da5: c4 cb     mov   $cb,a
0da7: 3f 25 0c  call  $0c25
0daa: c4 e1     mov   $e1,a
0dac: 80        setc
0dad: a4 c4     sbc   a,$c4
0daf: f8 cb     mov   x,$cb
0db1: 3f 79 0e  call  $0e79
0db4: da c7     movw  $c7,ya
0db6: 3f 25 0c  call  $0c25
0db9: c4 e2     mov   $e2,a
0dbb: 80        setc
0dbc: a4 c6     sbc   a,$c6
0dbe: f8 cb     mov   x,$cb
0dc0: 3f 79 0e  call  $0e79
0dc3: da c9     movw  $c9,ya
0dc5: 6f        ret

; vcmd f6 - disable echo
0dc6: da c3     movw  $c3,ya
0dc8: da c5     movw  $c5,ya
0dca: a2 33     set5  $33
0dcc: 6f        ret

; vcmd f7 - set echo params
0dcd: 3f ef 0d  call  $0def
0dd0: 3f 25 0c  call  $0c25
0dd3: c4 39     mov   $39,a
0dd5: 3f 25 0c  call  $0c25
0dd8: 8d 08     mov   y,#$08
0dda: cf        mul   ya
0ddb: 5d        mov   x,a
0ddc: 8d 0f     mov   y,#$0f
0dde: f5 ed 0e  mov   a,$0eed+x
0de1: 3f b7 09  call  $09b7
0de4: 3d        inc   x
0de5: dd        mov   a,y
0de6: 60        clrc
0de7: 88 10     adc   a,#$10
0de9: fd        mov   y,a
0dea: 10 f2     bpl   $0dde
0dec: f8 de     mov   x,$de
0dee: 6f        ret

0def: c4 38     mov   $38,a
0df1: 8d 7d     mov   y,#$7d
0df3: cb f2     mov   $f2,y
0df5: e4 f3     mov   a,$f3
0df7: 64 38     cmp   a,$38
0df9: f0 28     beq   $0e23
0dfb: 28 0f     and   a,#$0f
0dfd: 48 ff     eor   a,#$ff
0dff: f3 37 03  bbc7  $37,$0e05
0e02: 60        clrc
0e03: 84 37     adc   a,$37
0e05: c4 37     mov   $37,a
0e07: 8d 04     mov   y,#$04
0e09: f6 f7 16  mov   a,$16f7+y
0e0c: c4 f2     mov   $f2,a
0e0e: 8f 00 f3  mov   $f3,#$00
0e11: fe f6     dbnz  y,$0e09
0e13: e4 33     mov   a,$33
0e15: 08 20     or    a,#$20
0e17: 8d 6c     mov   y,#$6c
0e19: 3f bf 09  call  $09bf
0e1c: e4 38     mov   a,$38
0e1e: 8d 7d     mov   y,#$7d
0e20: 3f bf 09  call  $09bf
0e23: 1c        asl   a
0e24: 1c        asl   a
0e25: 1c        asl   a
0e26: 48 ff     eor   a,#$ff
0e28: 80        setc
0e29: 88 ff     adc   a,#$ff
0e2b: 8d 6d     mov   y,#$6d
0e2d: 5f bf 09  jmp   $09bf

; vcmd fa - set perc patch base
0e30: c4 df     mov   $df,a
0e32: 6f        ret

0e33: f4 a2     mov   a,$a2+x
0e35: d0 36     bne   $0e6d
0e37: e7 10     mov   a,($10+x)
0e39: 68 f9     cmp   a,#$f9
0e3b: d0 30     bne   $0e6d
0e3d: 3f 27 0c  call  $0c27
0e40: 3f 25 0c  call  $0c25
; vcmd f9 - pitch slide
0e43: d4 a3     mov   $a3+x,a
0e45: 3f 25 0c  call  $0c25
0e48: d4 a2     mov   $a2+x,a
0e4a: 3f 25 0c  call  $0c25
0e4d: 60        clrc
0e4e: eb 07     mov   y,$07
0e50: 96 a5 07  adc   a,$07a5+y
0e53: 95 c0 03  adc   a,$03c0+x
0e56: 28 7f     and   a,#$7f
0e58: d5 c0 02  mov   $02c0+x,a
0e5b: 80        setc
0e5c: b5 81 02  sbc   a,$0281+x
0e5f: fb a2     mov   y,$a2+x
0e61: 6d        push  y
0e62: ce        pop   x
0e63: 3f 79 0e  call  $0e79
0e66: d5 a0 02  mov   $02a0+x,a
0e69: dd        mov   a,y
0e6a: d5 a1 02  mov   $02a1+x,a
0e6d: 6f        ret

0e6e: f5 81 02  mov   a,$0281+x
0e71: c4 cd     mov   $cd,a
0e73: f5 80 02  mov   a,$0280+x
0e76: c4 cc     mov   $cc,a
0e78: 6f        ret

0e79: ed        notc
0e7a: 6b ce     ror   $ce
0e7c: 10 03     bpl   $0e81
0e7e: 48 ff     eor   a,#$ff
0e80: bc        inc   a
0e81: 8d 00     mov   y,#$00
0e83: 9e        div   ya,x
0e84: 2d        push  a
0e85: e8 00     mov   a,#$00
0e87: 9e        div   ya,x
0e88: ee        pop   y
0e89: f8 de     mov   x,$de
0e8b: f3 ce 07  bbc7  $ce,$0e95
0e8e: da 0c     movw  $0c,ya
0e90: e8 00     mov   a,#$00
0e92: fd        mov   y,a
0e93: 9a 0c     subw  ya,$0c
; vcmd ef - nop
0e95: 6f        ret

; vcmd dispatch table
0e97: dw $0c30	; e0 - set instrument
0e99: dw $0c8b	; e1 - pan
0e9b: dw $0c99	; e2 - pan fade
0e9d: dw $0cb2	; e3 - vibrato on
0e9f: dw $0cbe	; e4 - vibrato off
0ea1: dw $0cdb	; e5 - nop
0ea3: dw $0cdc	; e6 - skip to next byte
0ea4: dw $0cdf	; e7 - tempo
0ea6: dw $0ced	; e8 - tempo fade
0ea8: dw $0d0e	; e9 - global transpose
0eaa: dw $0d14	; ea - per-voice transpose
0eac: dw $0d18	; eb - tremolo on
0eae: dw $0d24	; ec - tremolo off
0eb0: dw $0d47	; ed - volume
0eb2: dw $0d53	; ee - volume fade
0eb4: dw $0e95	; ef - nop
0eb6: dw $0cca	; f0 - vibrato fade
0eb8: dw $0d28	; f1 - pitch envelope (release)
0eba: dw $0d2d	; f2 - pitch envelope (attack)
0ebc: dw $0d43	; f3 - pitch envelope off
0ebe: dw $0d6c	; f4 - tuning
0ec0: dw $0d70	; f5 - echo vbits/volume
0ec2: dw $0dc6	; f6 - disable echo
0ec4: dw $0dcd	; f7 - set echo params
0ec6: dw $0da5	; f8 - echo volume fade
0ec8: dw $0e43	; f9 - pitch slide
0eca: dw $0e30	; fa - set perc patch base
0ecc: dw $0c2f	; fb - nop
0ece: dw $0f0d	; fc - subcmd

; vcmd lengths
0ed0: db $01,$01,$02,$03,$00,$01,$02,$01
0ed7: db $02,$01,$01,$03,$00,$01,$02,$00
0ee0: db $01,$03,$03,$00,$01,$03,$00,$03
0ee7: db $03,$03,$01,$01
0eec: db $ff

; echo FIR presets
0eed: db $7f,$00,$00,$00,$00,$00,$00,$00
0ef5: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0efd: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0f05: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; vcmd fc - subcmd
0f0d: 1c        asl   a
0f0e: fd        mov   y,a
0f0f: f6 19 0f  mov   a,$0f19+y
0f12: 2d        push  a
0f13: f6 18 0f  mov   a,$0f18+y
0f16: 2d        push  a
0f17: 6f        ret

; subcmd dispatch table
0f18: dw $0f31 ; 00 - jump
0f1a: dw $0f53 ; 01 - call subroutine
0f1c: dw $0f7e ; 02 - return
0f1e: dw $0f9f ; 03 - repeat start
0f20: dw $0fce ; 04 - repeat end
0f22: dw $0f24 ; 05 - conditional jump

; subcmd 05 - conditional jump
0f24: eb 07     mov   y,$07
0f26: f6 83 07  mov   a,$0783+y
0f29: d0 06     bne   $0f31
0f2b: 3f 25 0c  call  $0c25
0f2e: 5f 25 0c  jmp   $0c25

; subcmd 00 - jump
0f31: 3f 01 10  call  $1001
0f34: f7 04     mov   a,($04)+y
0f36: c4 00     mov   $00,a
0f38: fc        inc   y
0f39: f7 04     mov   a,($04)+y
0f3b: c4 01     mov   $01,a
0f3d: 3f 25 0c  call  $0c25
0f40: 60        clrc
0f41: 84 00     adc   a,$00
0f43: c4 00     mov   $00,a
0f45: 0d        push  psw
0f46: 3f 25 0c  call  $0c25
0f49: 8e        pop   psw
0f4a: 84 01     adc   a,$01
0f4c: d4 11     mov   $11+x,a
0f4e: e4 00     mov   a,$00
0f50: d4 10     mov   $10+x,a
0f52: 6f        ret

; subcmd 01 - call subroutine
0f53: f5 41 01  mov   a,$0141+x
0f56: 68 07     cmp   a,#$07
0f58: b0 21     bcs   $0f7b
0f5a: c4 00     mov   $00,a
0f5c: 0b 00     asl   $00
0f5e: bc        inc   a
0f5f: d5 41 01  mov   $0141+x,a
0f62: 7d        mov   a,x
0f63: 8d 07     mov   y,#$07
0f65: cf        mul   ya
0f66: 60        clrc
0f67: 84 00     adc   a,$00
0f69: fd        mov   y,a
0f6a: f4 10     mov   a,$10+x
0f6c: 60        clrc
0f6d: 88 02     adc   a,#$02
0f6f: d6 90 06  mov   $0690+y,a
0f72: f4 11     mov   a,$11+x
0f74: 88 00     adc   a,#$00
0f76: d6 91 06  mov   $0691+y,a
0f79: 2f b6     bra   $0f31
0f7b: 5f 7b 0f  jmp   $0f7b

; subcmd 02 - return from subroutine
0f7e: f5 41 01  mov   a,$0141+x
0f81: f0 19     beq   $0f9c
0f83: 9c        dec   a
0f84: d5 41 01  mov   $0141+x,a
0f87: c4 00     mov   $00,a
0f89: 1c        asl   a
0f8a: 7d        mov   a,x
0f8b: 8d 07     mov   y,#$07
0f8d: cf        mul   ya
0f8e: 84 00     adc   a,$00
0f90: fd        mov   y,a
0f91: f6 90 06  mov   a,$0690+y
0f94: d4 10     mov   $10+x,a
0f96: f6 91 06  mov   a,$0691+y
0f99: d4 11     mov   $11+x,a
0f9b: 6f        ret

0f9c: 5f 9c 0f  jmp   $0f9c

; subcmd 03 - repeat start
0f9f: f5 40 01  mov   a,$0140+x
0fa2: 68 07     cmp   a,#$07
0fa4: b0 25     bcs   $0fcb
0fa6: c4 00     mov   $00,a
0fa8: 0b 00     asl   $00
0faa: bc        inc   a
0fab: d5 40 01  mov   $0140+x,a
0fae: 7d        mov   a,x
0faf: 8d 07     mov   y,#$07
0fb1: cf        mul   ya
0fb2: 60        clrc
0fb3: 84 00     adc   a,$00
0fb5: 2d        push  a
0fb6: 5c        lsr   a
0fb7: 2d        push  a
0fb8: 3f 25 0c  call  $0c25
0fbb: ee        pop   y
0fbc: d6 20 06  mov   $0620+y,a
0fbf: ee        pop   y
0fc0: f4 10     mov   a,$10+x
0fc2: d6 40 05  mov   $0540+y,a
0fc5: f4 11     mov   a,$11+x
0fc7: d6 41 05  mov   $0541+y,a
0fca: 6f        ret

0fcb: 5f cb 0f  jmp   $0fcb

; subcmd 04 - repeat end
0fce: f5 40 01  mov   a,$0140+x
0fd1: f0 2b     beq   $0ffe
0fd3: 9c        dec   a
0fd4: c4 00     mov   $00,a
0fd6: 0b 00     asl   $00
0fd8: 7d        mov   a,x
0fd9: 8d 07     mov   y,#$07
0fdb: cf        mul   ya
0fdc: 60        clrc
0fdd: 84 00     adc   a,$00
0fdf: 2d        push  a
0fe0: 5c        lsr   a
0fe1: fd        mov   y,a
0fe2: f6 20 06  mov   a,$0620+y
0fe5: 9c        dec   a
0fe6: d6 20 06  mov   $0620+y,a
0fe9: ee        pop   y
0fea: d0 07     bne   $0ff3
0fec: e4 00     mov   a,$00
0fee: 5c        lsr   a
0fef: d5 40 01  mov   $0140+x,a
0ff2: 6f        ret

0ff3: f6 40 05  mov   a,$0540+y
0ff6: d4 10     mov   $10+x,a
0ff8: f6 41 05  mov   a,$0541+y
0ffb: d4 11     mov   $11+x,a
0ffd: 6f        ret

0ffe: 5f fe 0f  jmp   $0ffe

1001: eb 07     mov   y,$07
1003: f6 1c 04  mov   a,$041c+y
1006: 3f 19 10  call  $1019
1009: 8d 02     mov   y,#$02
100b: f7 04     mov   a,($04)+y
100d: 2d        push  a
100e: fc        inc   y
100f: f7 04     mov   a,($04)+y
1011: c4 05     mov   $05,a
1013: ae        pop   a
1014: c4 04     mov   $04,a
1016: 8d 00     mov   y,#$00
1018: 6f        ret

1019: 8f 1c 04  mov   $04,#$1c
101c: 8f 04 05  mov   $05,#$04
101f: 8f 28 06  mov   $06,#$28
1022: 8d 00     mov   y,#$00
1024: 60        clrc
1025: 98 04 04  adc   $04,#$04
1028: 98 00 05  adc   $05,#$00
102b: 77 04     cmp   a,($04)+y
102d: f0 06     beq   $1035
102f: 8b 06     dec   $06
1031: d0 f1     bne   $1024
1033: 80        setc
1034: 6f        ret

1035: 60        clrc
1036: 6f        ret

1037: e5 70 07  mov   a,$0770
103a: 1c        asl   a
103b: 5d        mov   x,a
103c: 1f 3f 10  jmp   ($103f+x)

103f: dw $10d1
1041: dw $1128
1043: dw $1191
1045: dw $125f
1047: dw $12a8
1049: dw $12c5
104b: dw $1092
104d: dw $1092
104f: dw $12f4
1051: dw $1315
1053: dw $1061
1055: dw $133b
1057: dw $13a0
1059: dw $141b
105b: dw $142b
105d: dw $1078
105f: dw $1073

1061: e5 71 07  mov   a,$0771
1064: 8d 03     mov   y,#$03
1066: 76 1c 04  cmp   a,$041c+y
1069: f0 04     beq   $106f
106b: dc        dec   y
106c: 10 f8     bpl   $1066

106f: dd        mov   a,y
1070: 5f d9 11  jmp   $11d9

1073: 8f 00 eb  mov   $eb,#$00
1076: 2f 10     bra   $1088
1078: e8 0e     mov   a,#$0e
107a: 3f bf 11  call  $11bf
107d: 3f 88 10  call  $1088
1080: 8f 01 eb  mov   $eb,#$01
1083: e8 ff     mov   a,#$ff
1085: c4 31     mov   $31,a
1087: 6f        ret

1088: e8 06     mov   a,#$06
108a: c5 70 07  mov   $0770,a
108d: e8 00     mov   a,#$00
108f: c5 72 07  mov   $0772,a
1092: 3f 0f 11  call  $110f
1095: 3f d2 10  call  $10d2
1098: b0 37     bcs   $10d1
109a: ac 8b 07  inc   $078b
109d: e5 8b 07  mov   a,$078b
10a0: d6 8b 07  mov   $078b+y,a
10a3: e4 02     mov   a,$02
10a5: d6 91 07  mov   $0791+y,a
10a8: e5 70 07  mov   a,$0770
10ab: 80        setc
10ac: a8 06     sbc   a,#$06
10ae: d6 8e 07  mov   $078e+y,a
10b1: cb 07     mov   $07,y
10b3: 8d 00     mov   y,#$00
10b5: cd 20     mov   x,#$20
10b7: 1d        dec   x
10b8: 1d        dec   x
10b9: f5 e0 03  mov   a,$03e0+x
10bc: 10 f9     bpl   $10b7
10be: 3f 72 11  call  $1172
10c1: 8b 02     dec   $02
10c3: d0 f2     bne   $10b7
10c5: 3f 44 11  call  $1144
10c8: eb 07     mov   y,$07
10ca: f6 87 07  mov   a,$0787+y
10cd: 04 31     or    a,$31
10cf: c4 31     mov   $31,a
10d1: 6f        ret

10d2: e4 02     mov   a,$02
10d4: 8d 03     mov   y,#$03
10d6: 60        clrc
10d7: 96 91 07  adc   a,$0791+y
10da: fe fb     dbnz  y,$10d7
10dc: 68 09     cmp   a,#$09
10de: b0 11     bcs   $10f1
10e0: e5 8b 07  mov   a,$078b
10e3: 68 03     cmp   a,#$03
10e5: b0 0a     bcs   $10f1
10e7: 8d 04     mov   y,#$04
10e9: dc        dec   y
10ea: f6 8b 07  mov   a,$078b+y
10ed: d0 fa     bne   $10e9
10ef: 60        clrc
10f0: 6f        ret

10f1: e8 01     mov   a,#$01
10f3: 8d 04     mov   y,#$04
10f5: dc        dec   y
10f6: 76 8b 07  cmp   a,$078b+y
10f9: d0 fa     bne   $10f5
10fb: 2d        push  a
10fc: f6 8e 07  mov   a,$078e+y
10ff: f0 07     beq   $1108
1101: ae        pop   a
1102: bc        inc   a
1103: 68 04     cmp   a,#$04
1105: 90 ec     bcc   $10f3
1107: 6f        ret

1108: ae        pop   a
1109: dd        mov   a,y
110a: 3f d9 11  call  $11d9
110d: 2f c3     bra   $10d2
110f: e4 eb     mov   a,$eb
1111: d0 0a     bne   $111d
1113: e5 71 07  mov   a,$0771
1116: f0 05     beq   $111d
1118: 3f 19 10  call  $1019
111b: 90 03     bcc   $1120
111d: ae        pop   a
111e: ae        pop   a
111f: 6f        ret

1120: fc        inc   y
1121: f7 04     mov   a,($04)+y
1123: c4 02     mov   $02,a
1125: 5f 09 10  jmp   $1009

1128: 3f 0f 11  call  $110f
112b: e8 00     mov   a,#$00
112d: c4 07     mov   $07,a
112f: 3f d9 11  call  $11d9
1132: 8d 00     mov   y,#$00
1134: cd fe     mov   x,#$fe
1136: 3d        inc   x
1137: 3d        inc   x
1138: f5 e0 03  mov   a,$03e0+x
113b: 10 f9     bpl   $1136
113d: 3f 72 11  call  $1172
1140: 8b 02     dec   $02
1142: d0 f2     bne   $1136
1144: eb 07     mov   y,$07
1146: e8 00     mov   a,#$00
1148: d6 83 07  mov   $0783+y,a
114b: e5 71 07  mov   a,$0771
114e: d6 1c 04  mov   $041c+y,a
1151: f6 8b 14  mov   a,$148b+y
1154: 5d        mov   x,a
1155: 04 dc     or    a,$dc
1157: c4 dc     mov   $dc,a
1159: c4 f6     mov   $f6,a
115b: e8 ff     mov   a,#$ff
115d: d6 99 07  mov   $0799+y,a
1160: e5 72 07  mov   a,$0772
1163: f0 0c     beq   $1171
1165: d6 9d 07  mov   $079d+y,a
1168: e8 00     mov   a,#$00
116a: d6 99 07  mov   $0799+y,a
116d: bc        inc   a
116e: d6 d2 00  mov   $00d2+y,a
1171: 6f        ret

1172: e4 07     mov   a,$07
1174: d5 e0 03  mov   $03e0+x,a
1177: f7 04     mov   a,($04)+y
1179: fc        inc   y
117a: d5 10 00  mov   $0010+x,a
117d: f7 04     mov   a,($04)+y
117f: fc        inc   y
1180: d5 11 00  mov   $0011+x,a
1183: 6d        push  y
1184: eb 07     mov   y,$07
1186: f5 8f 14  mov   a,$148f+x
1189: 16 87 07  or    a,$0787+y
118c: d6 87 07  mov   $0787+y,a
118f: ee        pop   y
1190: 6f        ret

1191: e5 72 07  mov   a,$0772
1194: f0 21     beq   $11b7
1196: e4 dc     mov   a,$dc
1198: 25 71 07  and   a,$0771
119b: c4 02     mov   $02,a
119d: 8d 00     mov   y,#$00
119f: e4 02     mov   a,$02
11a1: 5c        lsr   a
11a2: c4 02     mov   $02,a
11a4: 90 0b     bcc   $11b1
11a6: e5 72 07  mov   a,$0772
11a9: d6 9d 07  mov   $079d+y,a
11ac: e8 ff     mov   a,#$ff
11ae: d6 d2 00  mov   $00d2+y,a
11b1: fc        inc   y
11b2: ad 04     cmp   y,#$04
11b4: 90 e9     bcc   $119f
11b6: 6f        ret

11b7: e5 71 07  mov   a,$0771
11ba: 2f 03     bra   $11bf
11bc: e5 e5 00  mov   a,$00e5
11bf: 28 0f     and   a,#$0f
11c1: cd 00     mov   x,#$00
11c3: 5c        lsr   a
11c4: 90 08     bcc   $11ce
11c6: 2d        push  a
11c7: 4d        push  x
11c8: 7d        mov   a,x
11c9: 3f d9 11  call  $11d9
11cc: ce        pop   x
11cd: ae        pop   a
11ce: 3d        inc   x
11cf: c8 04     cmp   x,#$04
11d1: 90 f0     bcc   $11c3
11d3: e8 00     mov   a,#$00
11d5: c5 e5 00  mov   $00e5,a
11d8: 6f        ret

11d9: fd        mov   y,a
11da: c4 07     mov   $07,a
11dc: f6 8b 14  mov   a,$148b+y
11df: 24 dc     and   a,$dc
11e1: f0 59     beq   $123c
11e3: 3f 17 0a  call  $0a17
11e6: 04 31     or    a,$31
11e8: c4 31     mov   $31,a
11ea: f6 87 14  mov   a,$1487+y
11ed: 24 dc     and   a,$dc
11ef: c4 dc     mov   $dc,a
11f1: c4 f6     mov   $f6,a
11f3: e8 00     mov   a,#$00
11f5: d6 87 07  mov   $0787+y,a
11f8: d6 d6 00  mov   $00d6+y,a
11fb: d6 d2 00  mov   $00d2+y,a
11fe: d6 a1 07  mov   $07a1+y,a
1201: d6 a5 07  mov   $07a5+y,a
1204: dd        mov   a,y
1205: f0 22     beq   $1229
1207: f6 8b 07  mov   a,$078b+y
120a: c4 06     mov   $06,a
120c: 8c 8b 07  dec   $078b
120f: e8 00     mov   a,#$00
1211: d6 91 07  mov   $0791+y,a
1214: d6 8e 07  mov   $078e+y,a
1217: d6 8b 07  mov   $078b+y,a
121a: 8d 03     mov   y,#$03
121c: f6 8b 07  mov   a,$078b+y
121f: 64 06     cmp   a,$06
1221: 90 04     bcc   $1227
1223: 9c        dec   a
1224: d6 8b 07  mov   $078b+y,a
1227: fe f3     dbnz  y,$121c
1229: 8d 1e     mov   y,#$1e
122b: e4 07     mov   a,$07
122d: 76 e0 03  cmp   a,$03e0+y
1230: d0 06     bne   $1238
1232: 3f 34 14  call  $1434
1235: 3f 3d 12  call  $123d
1238: dc        dec   y
1239: dc        dec   y
123a: 10 ef     bpl   $122b
123c: 6f        ret

123d: e4 07     mov   a,$07
123f: f0 1d     beq   $125e
1241: f6 d0 03  mov   a,$03d0+y
1244: 30 18     bmi   $125e
1246: 6d        push  y
1247: 4d        push  x
1248: dd        mov   a,y
1249: 28 0f     and   a,#$0f
124b: 5d        mov   x,a
124c: 8f ff d0  mov   $d0,#$ff
124f: e4 32     mov   a,$32
1251: d0 03     bne   $1256
1253: 8f 01 32  mov   $32,#$01
1256: f5 80 01  mov   a,$0180+x
1259: 3f 30 0c  call  $0c30
125c: ce        pop   x
125d: ee        pop   y
125e: 6f        ret

125f: e5 72 07  mov   a,$0772
1262: c4 00     mov   $00,a
1264: e5 71 07  mov   a,$0771
1267: 9c        dec   a
1268: 68 04     cmp   a,#$04
126a: d0 0d     bne   $1279
126c: 9c        dec   a
126d: 3f 79 12  call  $1279
1270: 9c        dec   a
1271: 3f 79 12  call  $1279
1274: 9c        dec   a
1275: 3f 79 12  call  $1279
1278: 9c        dec   a
1279: cd 1e     mov   x,#$1e
127b: 75 e0 03  cmp   a,$03e0+x
127e: d0 19     bne   $1299
1280: 2d        push  a
1281: f5 c1 03  mov   a,$03c1+x
1284: 4d        push  x
1285: eb 00     mov   y,$00
1287: cf        mul   ya
1288: cd 64     mov   x,#$64
128a: 9e        div   ya,x
128b: 50 02     bvc   $128f
128d: e8 ff     mov   a,#$ff
128f: ce        pop   x
1290: d5 c1 01  mov   $01c1+x,a
1293: e8 00     mov   a,#$00
1295: d5 c0 01  mov   $01c0+x,a
1298: ae        pop   a
1299: 1d        dec   x
129a: 1d        dec   x
129b: 10 de     bpl   $127b
129d: fd        mov   y,a
129e: 3f 17 0a  call  $0a17
12a1: 04 e9     or    a,$e9
12a3: c5 e9 00  mov   $00e9,a
12a6: dd        mov   a,y
12a7: 6f        ret

12a8: e5 72 07  mov   a,$0772
12ab: c4 00     mov   $00,a
12ad: e5 71 07  mov   a,$0771
12b0: 9c        dec   a
12b1: cd 1e     mov   x,#$1e
12b3: 75 e0 03  cmp   a,$03e0+x
12b6: d0 07     bne   $12bf
12b8: 2d        push  a
12b9: e4 00     mov   a,$00
12bb: 3f 8b 0c  call  $0c8b
12be: ae        pop   a
12bf: 1d        dec   x
12c0: 1d        dec   x
12c1: 10 f0     bpl   $12b3
12c3: 2f d8     bra   $129d
12c5: e5 72 07  mov   a,$0772
12c8: d0 0b     bne   $12d5
12ca: e9 71 07  mov   x,$0771
12cd: 1d        dec   x
12ce: f5 04 04  mov   a,$0404+x
12d1: d5 0c 04  mov   $040c+x,a
12d4: 6f        ret

12d5: e9 71 07  mov   x,$0771
12d8: 1d        dec   x
12d9: c4 00     mov   $00,a
12db: e3 00 0a  bbs7  $00,$12e8
12de: 60        clrc
12df: 95 0c 04  adc   a,$040c+x
12e2: 90 0c     bcc   $12f0
12e4: e8 ff     mov   a,#$ff
12e6: 2f 08     bra   $12f0
12e8: 60        clrc
12e9: 95 0c 04  adc   a,$040c+x
12ec: b0 02     bcs   $12f0
12ee: e8 01     mov   a,#$01
12f0: d5 0c 04  mov   $040c+x,a
12f3: 6f        ret

12f4: e8 00     mov   a,#$00
12f6: 5d        mov   x,a
12f7: 8d 28     mov   y,#$28
12f9: d5 20 04  mov   $0420+x,a
12fc: 3d        inc   x
12fd: 3d        inc   x
12fe: 3d        inc   x
12ff: 3d        inc   x
1300: dc        dec   y
1301: d0 f6     bne   $12f9
1303: cd 1e     mov   x,#$1e
1305: e8 ff     mov   a,#$ff
1307: d5 e0 03  mov   $03e0+x,a
130a: 1d        dec   x
130b: 1d        dec   x
130c: 10 f9     bpl   $1307
130e: 8f 00 3c  mov   $3c,#$00
1311: 8f 1d 3d  mov   $3d,#$1d
1314: 6f        ret

1315: e8 00     mov   a,#$00
1317: c4 40     mov   $40,a
1319: c4 3e     mov   $3e,a
131b: e8 3d     mov   a,#$3d
131d: c4 41     mov   $41,a
131f: c4 3f     mov   $3f,a
1321: e8 00     mov   a,#$00
1323: c4 00     mov   $00,a
1325: e8 1b     mov   a,#$1b
1327: c4 01     mov   $01,a
1329: e8 00     mov   a,#$00
132b: 8d 00     mov   y,#$00
132d: d7 00     mov   ($00)+y,a
132f: ab 00     inc   $00
1331: d0 fa     bne   $132d
1333: ab 01     inc   $01
1335: 78 3d 01  cmp   $01,#$3d
1338: 90 f3     bcc   $132d
133a: 6f        ret

133b: fa 3c 3a  mov   ($3a),($3c)
133e: fa 3d 3b  mov   ($3b),($3d)
1341: 3f 6b 14  call  $146b
1344: 90 01     bcc   $1347
1346: 6f        ret

1347: e5 71 07  mov   a,$0771
134a: d7 04     mov   ($04)+y,a
134c: e5 72 07  mov   a,$0772
134f: 5d        mov   x,a
1350: fc        inc   y
1351: d7 04     mov   ($04)+y,a
1353: e4 3a     mov   a,$3a
1355: fc        inc   y
1356: d7 04     mov   ($04)+y,a
1358: c4 00     mov   $00,a
135a: e4 3b     mov   a,$3b
135c: fc        inc   y
135d: d7 04     mov   ($04)+y,a
135f: c4 01     mov   $01,a
1361: 7d        mov   a,x
1362: 1c        asl   a
1363: 60        clrc
1364: 84 00     adc   a,$00
1366: c4 00     mov   $00,a
1368: c4 08     mov   $08,a
136a: e8 00     mov   a,#$00
136c: 84 01     adc   a,$01
136e: c4 01     mov   $01,a
1370: c4 09     mov   $09,a
1372: 8d 00     mov   y,#$00
1374: 60        clrc
1375: e4 00     mov   a,$00
1377: d7 3a     mov   ($3a)+y,a
1379: 96 73 07  adc   a,$0773+y
137c: c4 00     mov   $00,a
137e: fc        inc   y
137f: e4 01     mov   a,$01
1381: d7 3a     mov   ($3a)+y,a
1383: 96 73 07  adc   a,$0773+y
1386: c4 01     mov   $01,a
1388: fc        inc   y
1389: 1d        dec   x
138a: d0 e8     bne   $1374
138c: fa 00 3c  mov   ($3c),($00)
138f: fa 01 3d  mov   ($3d),($01)
1392: e4 00     mov   a,$00
1394: eb 01     mov   y,$01
1396: 9a 08     subw  ya,$08
1398: da 0a     movw  $0a,ya
139a: e8 01     mov   a,#$01
139c: c5 e7 00  mov   $00e7,a
139f: 6f        ret

13a0: e9 71 07  mov   x,$0771
13a3: 7d        mov   a,x
13a4: 8d 04     mov   y,#$04
13a6: cf        mul   ya
13a7: 8f 00 00  mov   $00,#$00
13aa: 8f 1b 01  mov   $01,#$1b
13ad: 60        clrc
13ae: 7a 00     addw  ya,$00
13b0: da 00     movw  $00,ya
13b2: 8d 01     mov   y,#$01
13b4: f7 00     mov   a,($00)+y
13b6: d0 62     bne   $141a
13b8: dc        dec   y
13b9: e4 40     mov   a,$40
13bb: d7 00     mov   ($00)+y,a
13bd: c4 3e     mov   $3e,a
13bf: e4 41     mov   a,$41
13c1: fc        inc   y
13c2: d7 00     mov   ($00)+y,a
13c4: c4 3f     mov   $3f,a
13c6: c9 ea 00  mov   $00ea,x
13c9: 60        clrc
13ca: e4 40     mov   a,$40
13cc: 85 79 07  adc   a,$0779
13cf: fc        inc   y
13d0: d7 00     mov   ($00)+y,a
13d2: e4 41     mov   a,$41
13d4: 85 7a 07  adc   a,$077a
13d7: fc        inc   y
13d8: d7 00     mov   ($00)+y,a
13da: 60        clrc
13db: e5 77 07  mov   a,$0777
13de: 84 40     adc   a,$40
13e0: c4 40     mov   $40,a
13e2: e5 78 07  mov   a,$0778
13e5: 84 41     adc   a,$41
13e7: c4 41     mov   $41,a
13e9: 7d        mov   a,x
13ea: 8d 06     mov   y,#$06
13ec: cf        mul   ya
13ed: 8f 00 00  mov   $00,#$00
13f0: 8f 18 01  mov   $01,#$18
13f3: 60        clrc
13f4: 7a 00     addw  ya,$00
13f6: da 00     movw  $00,ya
13f8: 8d 00     mov   y,#$00
13fa: cd 00     mov   x,#$00
13fc: f5 71 07  mov   a,$0771+x
13ff: d7 00     mov   ($00)+y,a
1401: 3d        inc   x
1402: fc        inc   y
1403: ad 06     cmp   y,#$06
1405: 90 f5     bcc   $13fc
1407: fa 3e 08  mov   ($08),($3e)
140a: fa 3f 09  mov   ($09),($3f)
140d: e4 40     mov   a,$40
140f: eb 41     mov   y,$41
1411: 9a 08     subw  ya,$08
1413: da 0a     movw  $0a,ya
1415: e8 01     mov   a,#$01
1417: c5 e7 00  mov   $00e7,a
141a: 6f        ret

141b: e8 00     mov   a,#$00
141d: ec 71 07  mov   y,$0771
1420: 80        setc
1421: 3c        rol   a
1422: fe fd     dbnz  y,$1421
1424: 45 e8 00  eor   a,$00e8
1427: c5 e8 00  mov   $00e8,a
142a: 6f        ret

142b: ec 71 07  mov   y,$0771
142e: e8 01     mov   a,#$01
1430: d6 82 07  mov   $0782+y,a
1433: 6f        ret

1434: e8 ff     mov   a,#$ff
1436: d6 61 01  mov   $0161+y,a
1439: d6 c1 01  mov   $01c1+y,a
143c: d6 e0 03  mov   $03e0+y,a
143f: bc        inc   a
1440: d6 40 01  mov   $0140+y,a
1443: d6 41 01  mov   $0141+y,a
1446: d6 80 01  mov   $0180+y,a
1449: d6 62 00  mov   $0062+y,a
144c: d6 20 02  mov   $0220+y,a
144f: d6 a0 03  mov   $03a0+y,a
1452: d6 c0 03  mov   $03c0+y,a
1455: d6 21 01  mov   $0121+y,a
1458: d6 c1 02  mov   $02c1+y,a
145b: d6 e0 02  mov   $02e0+y,a
145e: bc        inc   a
145f: d6 42 00  mov   $0042+y,a
1462: e8 0a     mov   a,#$0a
1464: d6 21 02  mov   $0221+y,a
1467: d6 61 02  mov   $0261+y,a
146a: 6f        ret

146b: cd 28     mov   x,#$28
146d: 8d 00     mov   y,#$00
146f: 8f 20 04  mov   $04,#$20
1472: 8f 04 05  mov   $05,#$04
1475: f7 04     mov   a,($04)+y
1477: f0 0c     beq   $1485
1479: 60        clrc
147a: 98 04 04  adc   $04,#$04
147d: 98 00 05  adc   $05,#$00
1480: 1d        dec   x
1481: d0 f2     bne   $1475
1483: 80        setc
1484: 6f        ret

1485: 60        clrc
1486: 6f        ret

1487: db $fe,$fd,$fb,$f7

148b: db $01,$02,$04,$08

148f: db $01,$00,$02,$00,$04,$00,$08,$00
1497: db $10,$00,$20,$00,$40,$00,$80,$00
149f: db $01,$00,$02,$00,$04,$00,$08,$00
14a7: db $10,$00,$20,$00,$40,$00,$80,$00

14af: 78 03 f5  cmp   $f5,#$03
14b2: f0 06     beq   $14ba
14b4: e8 00     mov   a,#$00
14b6: c5 70 07  mov   $0770,a
14b9: 6f        ret

14ba: 8f 03 f5  mov   $f5,#$03
14bd: 8f 70 08  mov   $08,#$70
14c0: 8f 07 09  mov   $09,#$07
14c3: 8d 00     mov   y,#$00
14c5: 3f 2b 15  call  $152b
14c8: e9 70 07  mov   x,$0770
14cb: f5 ed 14  mov   a,$14ed+x
14ce: c4 e0     mov   $e0,a
14d0: f0 1b     beq   $14ed
14d2: 3f 2b 15  call  $152b
14d5: 8b e0     dec   $e0
14d7: d0 f9     bne   $14d2
14d9: e5 70 07  mov   a,$0770
14dc: 68 0b     cmp   a,#$0b
14de: d0 0d     bne   $14ed
14e0: e5 72 07  mov   a,$0772
14e3: 1c        asl   a
14e4: c4 e0     mov   $e0,a
14e6: 3f 2b 15  call  $152b
14e9: 8b e0     dec   $e0
14eb: d0 f9     bne   $14e6
14ed: 6f        ret

14ee: db $02,$02,$02,$02,$02,$02,$02,$00
14f6: db $00,$01,$02,$0a,$01,$01,$01,$01

14fe: e5 e7 00  mov   a,$00e7
1501: f0 27     beq   $152a
1503: 78 cc f5  cmp   $f5,#$cc
1506: d0 fb     bne   $1503
1508: 8f cc f5  mov   $f5,#$cc
150b: eb f4     mov   y,$f4
150d: d0 fc     bne   $150b
150f: 7e f4     cmp   y,$f4
1511: d0 0b     bne   $151e
1513: e4 f5     mov   a,$f5
1515: cb f4     mov   $f4,y
1517: d7 08     mov   ($08)+y,a
1519: fc        inc   y
151a: d0 f3     bne   $150f
151c: ab 09     inc   $09
151e: 10 ef     bpl   $150f
1520: 7e f4     cmp   y,$f4
1522: 10 eb     bpl   $150f
1524: e8 00     mov   a,#$00
1526: c4 e7     mov   $e7,a
1528: c4 f5     mov   $f5,a
152a: 6f        ret

152b: e8 01     mov   a,#$01
152d: 64 f5     cmp   a,$f5
152f: d0 fc     bne   $152d
1531: c4 f5     mov   $f5,a
1533: 00        nop
1534: e8 02     mov   a,#$02
1536: 64 f5     cmp   a,$f5
1538: d0 fc     bne   $1536
153a: e4 f4     mov   a,$f4
153c: 8f 02 f5  mov   $f5,#$02
153f: d7 08     mov   ($08)+y,a
1541: 3a 08     incw  $08
1543: 6f        ret

1544: f4 43     mov   a,$43+x
1546: f0 38     beq   $1580
1548: 9b 43     dec   $43+x
154a: f0 05     beq   $1551
154c: e8 02     mov   a,#$02
154e: de 42 2f  cbne  $42+x,$1580
1551: f4 10     mov   a,$10+x
1553: fb 11     mov   y,$11+x
1555: da 0c     movw  $0c,ya
1557: 8d 00     mov   y,#$00
1559: f7 0c     mov   a,($0c)+y
155b: f0 1c     beq   $1579
155d: 30 05     bmi   $1564
155f: fc        inc   y
1560: 30 17     bmi   $1579
1562: 2f f5     bra   $1559
1564: 68 c8     cmp   a,#$c8
1566: f0 18     beq   $1580
1568: 68 fc     cmp   a,#$fc
156a: f0 0d     beq   $1579
156c: 68 e0     cmp   a,#$e0
156e: 90 09     bcc   $1579
1570: 6d        push  y
1571: fd        mov   y,a
1572: ae        pop   a
1573: 96 f0 0d  adc   a,$0df0+y
1576: fd        mov   y,a
1577: 2f e0     bra   $1559
1579: e4 32     mov   a,$32
157b: 8d 5c     mov   y,#$5c
157d: 3f b7 09  call  $09b7
1580: f2 cf     clr7  $cf
1582: f4 a2     mov   a,$a2+x
1584: f0 2c     beq   $15b2
1586: f4 a3     mov   a,$a3+x
1588: f0 04     beq   $158e
158a: 9b a3     dec   $a3+x
158c: 2f 24     bra   $15b2
158e: e2 cf     set7  $cf
1590: 9b a2     dec   $a2+x
1592: d0 0b     bne   $159f
1594: f5 c1 02  mov   a,$02c1+x
1597: d5 80 02  mov   $0280+x,a
159a: f5 c0 02  mov   a,$02c0+x
159d: 2f 10     bra   $15af
159f: 60        clrc
15a0: f5 80 02  mov   a,$0280+x
15a3: 95 a0 02  adc   a,$02a0+x
15a6: d5 80 02  mov   $0280+x,a
15a9: f5 81 02  mov   a,$0281+x
15ac: 95 a1 02  adc   a,$02a1+x
15af: d5 81 02  mov   $0281+x,a
15b2: 3f 6e 0e  call  $0e6e
15b5: f5 a0 03  mov   a,$03a0+x
15b8: f0 50     beq   $160a
15ba: f5 40 03  mov   a,$0340+x
15bd: de 83 48  cbne  $83+x,$1608
15c0: f5 20 01  mov   a,$0120+x
15c3: 75 41 03  cmp   a,$0341+x
15c6: d0 05     bne   $15cd
15c8: f5 61 03  mov   a,$0361+x
15cb: 2f 0f     bra   $15dc
15cd: bc        inc   a
15ce: d5 20 01  mov   $0120+x,a
15d1: 9c        dec   a
15d2: fd        mov   y,a
15d3: f0 03     beq   $15d8
15d5: f5 a0 03  mov   a,$03a0+x
15d8: 60        clrc
15d9: 95 60 03  adc   a,$0360+x
15dc: d5 a0 03  mov   $03a0+x,a
15df: f5 20 03  mov   a,$0320+x
15e2: 60        clrc
15e3: 95 21 03  adc   a,$0321+x
15e6: d5 20 03  mov   $0320+x,a
15e9: c4 ce     mov   $ce,a
15eb: 1c        asl   a
15ec: 1c        asl   a
15ed: 90 02     bcc   $15f1
15ef: 48 ff     eor   a,#$ff
15f1: fd        mov   y,a
15f2: f5 a0 03  mov   a,$03a0+x
15f5: 68 f1     cmp   a,#$f1
15f7: 90 05     bcc   $15fe
15f9: 28 0f     and   a,#$0f
15fb: cf        mul   ya
15fc: 2f 04     bra   $1602
15fe: cf        mul   ya
15ff: dd        mov   a,y
1600: 8d 00     mov   y,#$00
1602: 3f 88 16  call  $1688
1605: 5f 32 09  jmp   $0932

1608: bb 83     inc   $83+x
160a: e3 cf f8  bbs7  $cf,$1605
160d: 6f        ret

160e: eb 07     mov   y,$07
1610: f6 00 04  mov   a,$0400+y
1613: c4 e3     mov   $e3,a
1615: f2 cf     clr7  $cf
1617: f5 21 01  mov   a,$0121+x
161a: f0 09     beq   $1625
161c: f5 a1 03  mov   a,$03a1+x
161f: de 82 03  cbne  $82+x,$1625
1622: 3f 90 16  call  $1690
1625: f5 21 02  mov   a,$0221+x
1628: fd        mov   y,a
1629: f5 20 02  mov   a,$0220+x
162c: da cc     movw  $cc,ya
162e: f4 63     mov   a,$63+x
1630: f0 0a     beq   $163c
1632: f5 41 02  mov   a,$0241+x
1635: fd        mov   y,a
1636: f5 40 02  mov   a,$0240+x
1639: 3f 72 16  call  $1672
163c: f3 cf 03  bbc7  $cf,$1642
163f: 3f bc 0b  call  $0bbc
1642: f2 cf     clr7  $cf
1644: 3f 6e 0e  call  $0e6e
1647: f4 a2     mov   a,$a2+x
1649: f0 0e     beq   $1659
164b: f4 a3     mov   a,$a3+x
164d: d0 0a     bne   $1659
164f: f5 a1 02  mov   a,$02a1+x
1652: fd        mov   y,a
1653: f5 a0 02  mov   a,$02a0+x
1656: 3f 72 16  call  $1672
1659: f5 a0 03  mov   a,$03a0+x
165c: f0 ac     beq   $160a
165e: f5 40 03  mov   a,$0340+x
1661: de 83 a6  cbne  $83+x,$160a
1664: eb e3     mov   y,$e3
1666: f5 21 03  mov   a,$0321+x
1669: cf        mul   ya
166a: dd        mov   a,y
166b: 60        clrc
166c: 95 20 03  adc   a,$0320+x
166f: 5f e9 15  jmp   $15e9

1672: e2 cf     set7  $cf
1674: cb ce     mov   $ce,y
1676: 3f 8b 0e  call  $0e8b
1679: 6d        push  y
167a: eb e3     mov   y,$e3
167c: cf        mul   ya
167d: cb 0c     mov   $0c,y
167f: 8f 00 0d  mov   $0d,#$00
1682: eb e3     mov   y,$e3
1684: ae        pop   a
1685: cf        mul   ya
1686: 7a 0c     addw  ya,$0c
1688: 3f 8b 0e  call  $0e8b
168b: 7a cc     addw  ya,$cc
168d: da cc     movw  $cc,ya
168f: 6f        ret

1690: e2 cf     set7  $cf
1692: eb e3     mov   y,$e3
1694: f5 81 03  mov   a,$0381+x
1697: cf        mul   ya
1698: dd        mov   a,y
1699: 60        clrc
169a: 95 80 03  adc   a,$0380+x
169d: 1c        asl   a
169e: 90 02     bcc   $16a2
16a0: 48 ff     eor   a,#$ff
16a2: fd        mov   y,a
16a3: f5 21 01  mov   a,$0121+x
16a6: cf        mul   ya
16a7: dd        mov   a,y
16a8: 48 ff     eor   a,#$ff
16aa: 2d        push  a
16ab: eb 07     mov   y,$07
16ad: f6 99 07  mov   a,$0799+y
16b0: ee        pop   y
16b1: cf        mul   ya
16b2: f5 c1 01  mov   a,$01c1+x
16b5: cf        mul   ya
16b6: dd        mov   a,y
16b7: cf        mul   ya
16b8: dd        mov   a,y
16b9: d5 01 02  mov   $0201+x,a
16bc: 6f        ret

16bd: 3f 20 0a  call  $0a20
16c0: e5 a1 07  mov   a,$07a1
16c3: 24 d0     and   a,$d0
16c5: 05 a2 07  or    a,$07a2
16c8: 05 a3 07  or    a,$07a3
16cb: 05 a4 07  or    a,$07a4
16ce: c4 35     mov   $35,a
16d0: 8d 0a     mov   y,#$0a
16d2: ad 05     cmp   y,#$05
16d4: f0 07     beq   $16dd
16d6: b0 08     bcs   $16e0
16d8: 69 38 37  cmp   ($37),($38)
16db: d0 14     bne   $16f1
16dd: e3 37 11  bbs7  $37,$16f1
16e0: f6 f7 16  mov   a,$16f7+y
16e3: c4 f2     mov   $f2,a
16e5: f6 01 17  mov   a,$1701+y
16e8: 5d        mov   x,a
16e9: e5 e8 00  mov   a,$00e8
16ec: 48 ff     eor   a,#$ff
16ee: 26        and   a,(x)
16ef: c4 f3     mov   $f3,a
16f1: fe df     dbnz  y,$16d2
16f3: cb 30     mov   $30,y
16f5: cb 31     mov   $31,y
16f7: 6f        ret

16f8: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1702: db $c4,$c6,$39,$35,$33,$30,$31,$34,$36,$31
170c: db $8d,$1e

170e: 3f 34 14  call  $1434
1711: dc        dec   y
1712: dc        dec   y
1713: 10 f9     bpl   $170e
1715: 8d 03     mov   y,#$03
1717: e8 20     mov   a,#$20
1719: d6 0c 04  mov   $040c+y,a
171c: d6 04 04  mov   $0404+y,a
171f: dc        dec   y
1720: 10 f5     bpl   $1717

1722: 6f        ret
