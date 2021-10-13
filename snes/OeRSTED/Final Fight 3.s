0700: 20        clrp
0701: cd 3f     mov   x,#$3f
0703: bd        mov   sp,x
0704: e8 00     mov   a,#$00
0706: 5d        mov   x,a
0707: af        mov   (x)+,a
0708: c8 f0     cmp   x,#$f0
070a: 90 fb     bcc   $0707
070c: 8f 00 01  mov   $01,#$00
070f: 8f 01 02  mov   $02,#$01
0712: fd        mov   y,a
0713: d7 01     mov   ($01)+y,a
0715: fc        inc   y
0716: d0 fb     bne   $0713
0718: ab 02     inc   $02
071a: 78 07 02  cmp   $02,#$07
071d: 90 f4     bcc   $0713
071f: 8f 30 f1  mov   $f1,#$30
0722: 8f 50 fa  mov   $fa,#$50
0725: 8f 00 fb  mov   $fb,#$00
0728: 8f 03 f1  mov   $f1,#$03
072b: 8f 00 f4  mov   $f4,#$00
072e: 8f 00 00  mov   $00,#$00
0731: e8 00     mov   a,#$00
0733: c5 b0 07  mov   $07b0,a
0736: 3f 3c 08  call  $083c
0739: 3f 54 0c  call  $0c54
073c: 3f d8 0f  call  $0fd8
073f: e4 fd     mov   a,$fd
0741: 8f 00 03  mov   $03,#$00
0744: 8f 55 f5  mov   $f5,#$55
0747: e4 04     mov   a,$04
0749: f0 13     beq   $075e
074b: e4 fe     mov   a,$fe
074d: f0 0f     beq   $075e
074f: 48 ff     eor   a,#$ff
0751: bc        inc   a
0752: 1c        asl   a
0753: 1c        asl   a
0754: 1c        asl   a
0755: 1c        asl   a
0756: 8d ff     mov   y,#$ff
0758: 7a 05     addw  ya,$05
075a: da 05     movw  $05,ya
075c: da f6     movw  $f6,ya
075e: e4 fd     mov   a,$fd
0760: 60        clrc
0761: 84 03     adc   a,$03
0763: c4 03     mov   $03,a
0765: f0 12     beq   $0779
0767: 8b 03     dec   $03
0769: e4 07     mov   a,$07
076b: f0 03     beq   $0770
076d: 6e 07 09  dbnz  $07,$0779
0770: 3f 65 10  call  $1065
0773: 3f 92 10  call  $1092
0776: 3f 05 0a  call  $0a05
0779: fa 00 f4  mov   ($f4),($00)
077c: e4 f4     mov   a,$f4
077e: 64 00     cmp   a,$00
0780: f0 c5     beq   $0747
0782: 64 f4     cmp   a,$f4
0784: d0 c1     bne   $0747
0786: 5d        mov   x,a
0787: 68 fd     cmp   a,#$fd
0789: d0 02     bne   $078d
078b: e4 00     mov   a,$00
078d: d8 00     mov   $00,x
078f: 68 80     cmp   a,#$80
0791: 90 18     bcc   $07ab
0793: 68 f8     cmp   a,#$f8
0795: 90 28     bcc   $07bf
0797: 68 ff     cmp   a,#$ff
0799: f0 16     beq   $07b1
079b: 68 fe     cmp   a,#$fe
079d: f0 26     beq   $07c5
079f: 68 fc     cmp   a,#$fc
07a1: f0 a4     beq   $0747
07a3: 68 fa     cmp   a,#$fa
07a5: b0 27     bcs   $07ce
07a7: 68 f8     cmp   a,#$f8
07a9: b0 11     bcs   $07bc
07ab: 3f 3c 08  call  $083c
07ae: 2f 97     bra   $0747

07b0: db $00

07b1: 3f ed 07  call  $07ed
07b4: e5 b0 07  mov   a,$07b0
07b7: f0 86     beq   $073f
07b9: 5f 31 07  jmp   $0731

07bc: 5f 26 08  jmp   $0826

07bf: 3f bb 18  call  $18bb
07c2: 5f 47 07  jmp   $0747

07c5: 3f 3e 09  call  $093e
07c8: 8f 00 04  mov   $04,#$00
07cb: 5f 47 07  jmp   $0747

07ce: d0 04     bne   $07d4
07d0: ba f6     movw  ya,$f6
07d2: 2f 04     bra   $07d8
07d4: ba f6     movw  ya,$f6
07d6: 7a 05     addw  ya,$05
07d8: da 05     movw  $05,ya
07da: da f6     movw  $f6,ya
07dc: 8f 01 04  mov   $04,#$01
07df: 5f 47 07  jmp   $0747

07e2: 4d        push  x
07e3: 5d        mov   x,a
07e4: e4 fd     mov   a,$fd
07e6: f0 fc     beq   $07e4
07e8: 1d        dec   x
07e9: d0 f9     bne   $07e4
07eb: ce        pop   x
07ec: 6f        ret

07ed: 8f aa f4  mov   $f4,#$aa
07f0: 8f bb f5  mov   $f5,#$bb
07f3: 78 cc f4  cmp   $f4,#$cc
07f6: d0 fb     bne   $07f3
07f8: 2f 1b     bra   $0815
07fa: eb f4     mov   y,$f4
07fc: d0 fc     bne   $07fa
07fe: 7e f4     cmp   y,$f4
0800: d0 0d     bne   $080f
0802: e4 f5     mov   a,$f5
0804: cb f4     mov   $f4,y
0806: d7 01     mov   ($01)+y,a
0808: fc        inc   y
0809: d0 f3     bne   $07fe
080b: ab 02     inc   $02
080d: 2f ef     bra   $07fe
080f: 10 ed     bpl   $07fe
0811: 7e f4     cmp   y,$f4
0813: 10 e9     bpl   $07fe
0815: e4 f6     mov   a,$f6
0817: eb f7     mov   y,$f7
0819: da 01     movw  $01,ya
081b: eb f4     mov   y,$f4
081d: e4 f5     mov   a,$f5
081f: cb f4     mov   $f4,y
0821: d0 d7     bne   $07fa
0823: cb 00     mov   $00,y
0825: 6f        ret

0826: 8d 00     mov   y,#$00
0828: cb 04     mov   $04,y
082a: 28 01     and   a,#$01
082c: d0 07     bne   $0835
082e: f7 f5     mov   a,($f5)+y
0830: c4 f7     mov   $f7,a
0832: 5f 47 07  jmp   $0747

0835: e4 f7     mov   a,$f7
0837: d7 f5     mov   ($f5)+y,a
0839: 5f 47 07  jmp   $0747

083c: c4 0c     mov   $0c,a
083e: 38 1f 0c  and   $0c,#$1f
0841: 9f        xcn   a
0842: 5c        lsr   a
0843: 28 03     and   a,#$03
0845: c4 0d     mov   $0d,a
0847: 8f 00 0e  mov   $0e,#$00
084a: 3f 4e 08  call  $084e
084d: 6f        ret

084e: 4d        push  x
084f: cd 0b     mov   x,#$0b
0851: f4 11     mov   a,$11+x
0853: f0 09     beq   $085e
0855: f4 29     mov   a,$29+x
0857: 64 0d     cmp   a,$0d
0859: d0 03     bne   $085e
085b: 3f 60 09  call  $0960
085e: 1d        dec   x
085f: 10 f0     bpl   $0851
0861: eb 0d     mov   y,$0d
0863: e8 00     mov   a,#$00
0865: 3f ce 09  call  $09ce
0868: ce        pop   x
0869: 6f        ret

086a: 4d        push  x
086b: eb 0d     mov   y,$0d
086d: e8 00     mov   a,#$00
086f: d6 5c 01  mov   $015c+y,a
0872: e4 0c     mov   a,$0c
0874: 9c        dec   a
0875: 1c        asl   a
0876: 5d        mov   x,a
0877: f5 80 1c  mov   a,$1c80+x
087a: c4 08     mov   $08,a
087c: d6 50 01  mov   $0150+y,a
087f: f5 81 1c  mov   a,$1c81+x
0882: c4 09     mov   $09,a             ; set voice pointer to $08/9
0884: d6 54 01  mov   $0154+y,a
0887: 30 49     bmi   $08d2
0889: 3f 6f 0a  call  $0a6f
088c: 68 ff     cmp   a,#$ff
088e: d0 f9     bne   $0889
0890: 3f 6f 0a  call  $0a6f
0893: 68 00     cmp   a,#$00
0895: f0 3b     beq   $08d2
0897: c4 0a     mov   $0a,a
0899: 8f 01 0b  mov   $0b,#$01
089c: cd 0b     mov   x,#$0b
089e: 3f 76 0a  call  $0a76
08a1: f0 20     beq   $08c3
08a3: 3f d4 08  call  $08d4
08a6: d0 1e     bne   $08c6
08a8: d4 41     mov   $41+x,a
08aa: db 4d     mov   $4d+x,y
08ac: e4 0d     mov   a,$0d
08ae: d4 29     mov   $29+x,a
08b0: 3f de 08  call  $08de
08b3: 3f b3 09  call  $09b3
08b6: 3f aa 0f  call  $0faa
08b9: e8 c9     mov   a,#$c9
08bb: d4 59     mov   $59+x,a
08bd: 6e 0b 03  dbnz  $0b,$08c3
08c0: 3f ae 13  call  $13ae
08c3: 6e 0a d8  dbnz  $0a,$089e
08c6: eb 0d     mov   y,$0d
08c8: 3f 94 0f  call  $0f94
08cb: eb 0d     mov   y,$0d
08cd: e8 78     mov   a,#$78
08cf: 3f ce 09  call  $09ce
08d2: ce        pop   x
08d3: 6f        ret

08d4: 2d        push  a
08d5: f4 11     mov   a,$11+x
08d7: f0 03     beq   $08dc
08d9: 1d        dec   x
08da: 10 f9     bpl   $08d5
08dc: ae        pop   a
08dd: 6f        ret

08de: 8d 07     mov   y,#$07
08e0: f6 65 00  mov   a,$0065+y
08e3: f0 06     beq   $08eb
08e5: dc        dec   y
08e6: 10 f8     bpl   $08e0
08e8: 5f f7 08  jmp   $08f7

08eb: e8 81     mov   a,#$81
08ed: d4 11     mov   $11+x,a
08ef: e8 e5     mov   a,#$e5
08f1: d6 65 00  mov   $0065+y,a
08f4: db 1d     mov   $1d+x,y
08f6: 6f        ret

08f7: 8f 40 0f  mov   $0f,#$40
08fa: 8f ff 10  mov   $10,#$ff
08fd: 8d 0b     mov   y,#$0b
08ff: f6 11 00  mov   a,$0011+y
0902: 10 16     bpl   $091a
0904: 28 04     and   a,#$04
0906: d0 12     bne   $091a
0908: f6 29 00  mov   a,$0029+y
090b: 64 0d     cmp   a,$0d
090d: f0 0b     beq   $091a
090f: f6 60 01  mov   a,$0160+y
0912: 64 0f     cmp   a,$0f
0914: b0 04     bcs   $091a
0916: c4 0f     mov   $0f,a
0918: cb 10     mov   $10,y
091a: dc        dec   y
091b: 10 e2     bpl   $08ff
091d: eb 10     mov   y,$10
091f: 10 01     bpl   $0922
0921: 6f        ret

0922: 4d        push  x
0923: 6d        push  y
0924: dd        mov   a,y
0925: 5d        mov   x,a
0926: 3f 72 0f  call  $0f72
0929: ee        pop   y
092a: ce        pop   x
092b: f6 1d 00  mov   a,$001d+y
092e: d4 1d     mov   $1d+x,a
0930: e8 21     mov   a,#$21
0932: d6 11 00  mov   $0011+y,a
0935: e8 85     mov   a,#$85
0937: d4 11     mov   $11+x,a
0939: db 35     mov   $35+x,y
093b: d9 35     mov   $35+y,x
093d: 6f        ret

093e: 4d        push  x
093f: cd 0b     mov   x,#$0b
0941: 3f 66 09  call  $0966
0944: 1d        dec   x
0945: 10 fa     bpl   $0941
0947: 8d 03     mov   y,#$03
0949: e8 00     mov   a,#$00
094b: 3f ce 09  call  $09ce
094e: dc        dec   y
094f: 10 f8     bpl   $0949
0951: 8d 07     mov   y,#$07
0953: e8 00     mov   a,#$00
0955: d6 65 00  mov   $0065+y,a
0958: dc        dec   y
0959: 10 fa     bpl   $0955
095b: 3f fc 0c  call  $0cfc
095e: ce        pop   x
095f: 6f        ret

0960: f4 11     mov   a,$11+x
0962: 28 24     and   a,#$24
0964: d0 19     bne   $097f
0966: 3f 72 0f  call  $0f72
0969: f4 11     mov   a,$11+x
096b: 10 07     bpl   $0974
096d: fb 1d     mov   y,$1d+x
096f: e8 00     mov   a,#$00
0971: d6 65 00  mov   $0065+y,a
0974: e8 00     mov   a,#$00
0976: d4 11     mov   $11+x,a
0978: d5 90 01  mov   $0190+x,a
097b: d5 6c 01  mov   $016c+x,a
097e: 6f        ret

097f: 28 20     and   a,#$20
0981: d0 1d     bne   $09a0
0983: 3f 66 09  call  $0966
0986: 4d        push  x
0987: f4 35     mov   a,$35+x
0989: 5d        mov   x,a
098a: f4 11     mov   a,$11+x
098c: 28 20     and   a,#$20
098e: f0 0e     beq   $099e
0990: e8 81     mov   a,#$81
0992: d4 11     mov   $11+x,a
0994: fb 1d     mov   y,$1d+x
0996: e8 e7     mov   a,#$e7
0998: d6 65 00  mov   $0065+y,a
099b: 3f 8d 0f  call  $0f8d
099e: ce        pop   x
099f: 6f        ret

09a0: 4d        push  x
09a1: f4 35     mov   a,$35+x
09a3: 5d        mov   x,a
09a4: f4 11     mov   a,$11+x
09a6: 28 04     and   a,#$04
09a8: f0 04     beq   $09ae
09aa: e8 81     mov   a,#$81
09ac: d4 11     mov   $11+x,a
09ae: ce        pop   x
09af: 3f 74 09  call  $0974
09b2: 6f        ret

09b3: e8 00     mov   a,#$00
09b5: d5 a8 01  mov   $01a8+x,a
09b8: 9c        dec   a
09b9: d5 b4 01  mov   $01b4+x,a
09bc: e8 18     mov   a,#$18
09be: d5 84 01  mov   $0184+x,a
09c1: 7d        mov   a,x
09c2: 80        setc
09c3: a8 0c     sbc   a,#$0c
09c5: d5 cc 01  mov   $01cc+x,a
09c8: e8 40     mov   a,#$40
09ca: d5 60 01  mov   $0160+x,a
09cd: 6f        ret

09ce: d6 40 01  mov   $0140+y,a
09d1: e8 00     mov   a,#$00
09d3: d6 44 01  mov   $0144+y,a
09d6: d6 48 01  mov   $0148+y,a
09d9: d6 4c 01  mov   $014c+y,a
09dc: 6f        ret

09dd: cb 0d     mov   $0d,y
09df: 28 01     and   a,#$01
09e1: 76 5c 01  cmp   a,$015c+y
09e4: f0 1e     beq   $0a04
09e6: d6 5c 01  mov   $015c+y,a
09e9: 1c        asl   a
09ea: 1c        asl   a
09eb: 1c        asl   a
09ec: 1c        asl   a
09ed: 1c        asl   a
09ee: 1c        asl   a
09ef: c4 08     mov   $08,a
09f1: cd 0b     mov   x,#$0b
09f3: f4 29     mov   a,$29+x
09f5: 64 0d     cmp   a,$0d
09f7: d0 08     bne   $0a01
09f9: f4 11     mov   a,$11+x
09fb: 28 bf     and   a,#$bf
09fd: 04 08     or    a,$08
09ff: d4 11     mov   $11+x,a
0a01: 1d        dec   x
0a02: 10 ef     bpl   $09f3
0a04: 6f        ret

0a05: 8d 03     mov   y,#$03
0a07: e8 00     mov   a,#$00
0a09: d6 58 01  mov   $0158+y,a
0a0c: f6 5c 01  mov   a,$015c+y
0a0f: d0 2b     bne   $0a3c
0a11: f6 48 01  mov   a,$0148+y
0a14: 80        setc
0a15: b6 40 01  sbc   a,$0140+y
0a18: d6 48 01  mov   $0148+y,a
0a1b: f6 4c 01  mov   a,$014c+y
0a1e: b6 44 01  sbc   a,$0144+y
0a21: d6 4c 01  mov   $014c+y,a
0a24: 10 16     bpl   $0a3c
0a26: f6 48 01  mov   a,$0148+y
0a29: 60        clrc
0a2a: 88 fa     adc   a,#$fa
0a2c: d6 48 01  mov   $0148+y,a
0a2f: f6 4c 01  mov   a,$014c+y
0a32: 88 00     adc   a,#$00
0a34: d6 4c 01  mov   $014c+y,a
0a37: e8 01     mov   a,#$01
0a39: d6 58 01  mov   $0158+y,a
0a3c: dc        dec   y
0a3d: 10 c8     bpl   $0a07
0a3f: cd 0b     mov   x,#$0b
0a41: e8 00     mov   a,#$00
0a43: d5 6c 01  mov   $016c+x,a
0a46: f4 11     mov   a,$11+x
0a48: f0 12     beq   $0a5c
0a4a: 28 02     and   a,#$02
0a4c: d0 1c     bne   $0a6a
0a4e: f4 29     mov   a,$29+x
0a50: fd        mov   y,a
0a51: f6 58 01  mov   a,$0158+y
0a54: f0 06     beq   $0a5c
0a56: d5 6c 01  mov   $016c+x,a
0a59: 3f 8d 0a  call  $0a8d
0a5c: 1d        dec   x
0a5d: 10 e2     bpl   $0a41
0a5f: e4 0c     mov   a,$0c
0a61: f0 06     beq   $0a69
0a63: 3f 6a 08  call  $086a
0a66: 8f 00 0c  mov   $0c,#$00
0a69: 6f        ret

0a6a: 3f 0f 16  call  $160f
0a6d: 2f ed     bra   $0a5c
; read voice bytestream, increase voice pointer
0a6f: 8d 00     mov   y,#$00
0a71: f7 08     mov   a,($08)+y
0a73: 3a 08     incw  $08
0a75: 6f        ret

; read relative offset into YA as absolute address
0a76: 8d 00     mov   y,#$00
0a78: f7 08     mov   a,($08)+y
0a7a: 3a 08     incw  $08
0a7c: 2d        push  a
0a7d: f7 08     mov   a,($08)+y
0a7f: 3a 08     incw  $08
0a81: fd        mov   y,a
0a82: ae        pop   a
0a83: ad 80     cmp   y,#$80
0a85: f0 03     beq   $0a8a
0a87: 7a 08     addw  ya,$08
0a89: 6f        ret

0a8a: 8d 00     mov   y,#$00
0a8c: 6f        ret

0a8d: f4 11     mov   a,$11+x
0a8f: f0 32     beq   $0ac3
0a91: f4 41     mov   a,$41+x
0a93: fb 4d     mov   y,$4d+x
0a95: da 08     movw  $08,ya
0a97: f5 78 01  mov   a,$0178+x
0a9a: f0 16     beq   $0ab2
0a9c: f5 a8 01  mov   a,$01a8+x
0a9f: d0 11     bne   $0ab2
0aa1: f5 9c 01  mov   a,$019c+x
0aa4: 9c        dec   a
0aa5: d5 9c 01  mov   $019c+x,a
0aa8: d0 08     bne   $0ab2
0aaa: 3f 72 0f  call  $0f72
0aad: e8 00     mov   a,#$00
0aaf: d5 78 01  mov   $0178+x,a
0ab2: f5 90 01  mov   a,$0190+x
0ab5: f0 0d     beq   $0ac4
0ab7: 9c        dec   a
0ab8: d5 90 01  mov   $0190+x,a
0abb: f0 07     beq   $0ac4
0abd: ba 08     movw  ya,$08
0abf: d4 41     mov   $41+x,a
0ac1: db 4d     mov   $4d+x,y
0ac3: 6f        ret

0ac4: 3f 6f 0a  call  $0a6f
0ac7: 68 00     cmp   a,#$00
0ac9: f0 12     beq   $0add             ; branch if 00
0acb: 10 1b     bpl   $0ae8             ; branch if 01-7f
0acd: 68 f9     cmp   a,#$f9
0acf: b0 1d     bcs   $0aee             ; branch if f9-ff
0ad1: 68 da     cmp   a,#$da
0ad3: b0 03     bcs   $0ad8             ; branch if da-f8
0ad5: 5f 3a 0b  jmp   $0b3a

0ad8: 3f 29 0d  call  $0d29
0adb: 2f e7     bra   $0ac4

; vcmd 00
0add: f5 cc 01  mov   a,$01cc+x
0ae0: 30 03     bmi   $0ae5
0ae2: 5f ec 0b  jmp   $0bec

0ae5: 5f 60 09  jmp   $0960

; vcmd 01-7f
0ae8: d5 84 01  mov   $0184+x,a
0aeb: 5f c4 0a  jmp   $0ac4

0aee: 68 fc     cmp   a,#$fc
0af0: d0 03     bne   $0af5
0af2: 5f b7 0b  jmp   $0bb7

0af5: 68 fd     cmp   a,#$fd
0af7: d0 03     bne   $0afc
0af9: 5f 0d 0c  jmp   $0c0d

0afc: 68 fe     cmp   a,#$fe
0afe: d0 03     bne   $0b03
0b00: 5f 33 0c  jmp   $0c33

0b03: 68 ff     cmp   a,#$ff
0b05: d0 03     bne   $0b0a
0b07: 5f 4c 0c  jmp   $0c4c

0b0a: 68 fb     cmp   a,#$fb
0b0c: d0 08     bne   $0b16

; vcmd fb
0b0e: e8 00     mov   a,#$00
0b10: d5 a8 01  mov   $01a8+x,a
0b13: 5f c4 0a  jmp   $0ac4

0b16: 68 fa     cmp   a,#$fa
0b18: d0 08     bne   $0b22

; vcmd fa
0b1a: e8 ff     mov   a,#$ff
0b1c: d5 a8 01  mov   $01a8+x,a
0b1f: 5f c4 0a  jmp   $0ac4

0b22: 68 f9     cmp   a,#$f9
0b24: d0 11     bne   $0b37

; vcmd f9
0b26: 3f 6f 0a  call  $0a6f
0b29: 4d        push  x
0b2a: fd        mov   y,a
0b2b: e8 00     mov   a,#$00
0b2d: cd 64     mov   x,#$64
0b2f: 9e        div   ya,x
0b30: ce        pop   x
0b31: d5 b4 01  mov   $01b4+x,a
0b34: 5f c4 0a  jmp   $0ac4

0b37: 5f c4 0a  jmp   $0ac4

0b3a: 68 c9     cmp   a,#$c9
0b3c: f0 60     beq   $0b9e
0b3e: 68 c8     cmp   a,#$c8
0b40: f0 46     beq   $0b88
0b42: d4 59     mov   $59+x,a
0b44: 8d 7f     mov   y,#$7f
0b46: d5 78 01  mov   $0178+x,a
0b49: 3f 3e 0f  call  $0f3e
0b4c: f5 84 01  mov   a,$0184+x
0b4f: c4 0a     mov   $0a,a
0b51: 8d 00     mov   y,#$00
0b53: f7 08     mov   a,($08)+y
0b55: f0 17     beq   $0b6e
0b57: 30 07     bmi   $0b60
0b59: d5 84 01  mov   $0184+x,a
0b5c: 3a 08     incw  $08
0b5e: f7 08     mov   a,($08)+y
0b60: 68 c8     cmp   a,#$c8
0b62: d0 0a     bne   $0b6e
0b64: f5 84 01  mov   a,$0184+x
0b67: 60        clrc
0b68: 84 0a     adc   a,$0a
0b6a: c4 0a     mov   $0a,a
0b6c: 3a 08     incw  $08
0b6e: e4 0a     mov   a,$0a
0b70: d5 90 01  mov   $0190+x,a
0b73: 68 02     cmp   a,#$02
0b75: 90 0b     bcc   $0b82
0b77: fd        mov   y,a
0b78: f5 b4 01  mov   a,$01b4+x
0b7b: cf        mul   ya
0b7c: dd        mov   a,y
0b7d: 64 0a     cmp   a,$0a
0b7f: d0 01     bne   $0b82
0b81: 9c        dec   a
0b82: d5 9c 01  mov   $019c+x,a
0b85: 5f bd 0a  jmp   $0abd

0b88: f5 78 01  mov   a,$0178+x
0b8b: f0 08     beq   $0b95
0b8d: 3f 72 0f  call  $0f72
0b90: e8 00     mov   a,#$00
0b92: d5 78 01  mov   $0178+x,a
0b95: f5 84 01  mov   a,$0184+x
0b98: d5 90 01  mov   $0190+x,a
0b9b: 5f bd 0a  jmp   $0abd

0b9e: fb 59     mov   y,$59+x
0ba0: d4 59     mov   $59+x,a
0ba2: f5 c0 01  mov   a,$01c0+x
0ba5: f0 e1     beq   $0b88
0ba7: ad c9     cmp   y,#$c9
0ba9: b0 dd     bcs   $0b88
0bab: 6d        push  y
0bac: 60        clrc
0bad: 88 7f     adc   a,#$7f
0baf: 10 02     bpl   $0bb3
0bb1: e8 00     mov   a,#$00
0bb3: fd        mov   y,a
0bb4: ae        pop   a
0bb5: 2f 8f     bra   $0b46
; vcmd fc
0bb7: f5 cc 01  mov   a,$01cc+x
0bba: 60        clrc
0bbb: 88 0c     adc   a,#$0c
0bbd: d5 cc 01  mov   $01cc+x,a
0bc0: 4d        push  x
0bc1: 5d        mov   x,a
0bc2: 3f 76 0a  call  $0a76
0bc5: d5 38 02  mov   $0238+x,a
0bc8: dd        mov   a,y
0bc9: d5 98 02  mov   $0298+x,a
0bcc: 3f 6f 0a  call  $0a6f
0bcf: d5 d8 01  mov   $01d8+x,a
0bd2: e4 08     mov   a,$08
0bd4: d5 f8 02  mov   $02f8+x,a
0bd7: e4 09     mov   a,$09
0bd9: d5 58 03  mov   $0358+x,a
0bdc: 7d        mov   a,x
0bdd: ce        pop   x
0bde: fd        mov   y,a
0bdf: f6 38 02  mov   a,$0238+y
0be2: c4 08     mov   $08,a
0be4: f6 98 02  mov   a,$0298+y
0be7: c4 09     mov   $09,a
0be9: 5f c4 0a  jmp   $0ac4

0bec: f5 cc 01  mov   a,$01cc+x
0bef: fd        mov   y,a
0bf0: f6 d8 01  mov   a,$01d8+y
0bf3: 9c        dec   a
0bf4: d6 d8 01  mov   $01d8+y,a
0bf7: d0 e6     bne   $0bdf
0bf9: f6 f8 02  mov   a,$02f8+y
0bfc: c4 08     mov   $08,a
0bfe: f6 58 03  mov   a,$0358+y
0c01: c4 09     mov   $09,a
0c03: dd        mov   a,y
0c04: 80        setc
0c05: a8 0c     sbc   a,#$0c
0c07: d5 cc 01  mov   $01cc+x,a
0c0a: 5f c4 0a  jmp   $0ac4

; vcmd fd
0c0d: f5 cc 01  mov   a,$01cc+x
0c10: 60        clrc
0c11: 88 0c     adc   a,#$0c
0c13: d5 cc 01  mov   $01cc+x,a
0c16: 2d        push  a
0c17: 3f 6f 0a  call  $0a6f
0c1a: ee        pop   y
0c1b: d6 d8 01  mov   $01d8+y,a
0c1e: e4 08     mov   a,$08
0c20: d6 38 02  mov   $0238+y,a
0c23: e4 09     mov   a,$09
0c25: d6 98 02  mov   $0298+y,a
0c28: e8 00     mov   a,#$00
0c2a: d6 58 03  mov   $0358+y,a
0c2d: d6 f8 02  mov   $02f8+y,a
0c30: 5f c4 0a  jmp   $0ac4

; vcmd fe
0c33: f5 cc 01  mov   a,$01cc+x
0c36: 30 11     bmi   $0c49
0c38: fd        mov   y,a
0c39: f6 d8 01  mov   a,$01d8+y
0c3c: 9c        dec   a
0c3d: d6 d8 01  mov   $01d8+y,a
0c40: d0 9d     bne   $0bdf
0c42: dd        mov   a,y
0c43: 80        setc
0c44: a8 0c     sbc   a,#$0c
0c46: d5 cc 01  mov   $01cc+x,a
0c49: 5f c4 0a  jmp   $0ac4

; vcmd ff
0c4c: 3f 76 0a  call  $0a76
0c4f: da 08     movw  $08,ya
0c51: 5f c4 0a  jmp   $0ac4

0c54: 8d 00     mov   y,#$00
0c56: f6 9e 0c  mov   a,$0c9e+y
0c59: 30 12     bmi   $0c6d
0c5b: 5d        mov   x,a
0c5c: f6 9f 0c  mov   a,$0c9f+y
0c5f: d5 e4 03  mov   $03e4+x,a
0c62: f6 a0 0c  mov   a,$0ca0+y
0c65: d5 e5 03  mov   $03e5+x,a         ; construct actual vcmd dispatch table
0c68: fc        inc   y
0c69: fc        inc   y
0c6a: fc        inc   y
0c6b: 2f e9     bra   $0c56
;
0c6d: 8f ff 6f  mov   $6f,#$ff
0c70: 8f 00 70  mov   $70,#$00
0c73: e8 00     mov   a,#$00
0c75: 8d 18     mov   y,#$18
0c77: 3f b9 13  call  $13b9
0c7a: e8 00     mov   a,#$00
0c7c: 8d 19     mov   y,#$19
0c7e: 3f b9 13  call  $13b9
0c81: e8 00     mov   a,#$00
0c83: 8d 1a     mov   y,#$1a
0c85: 3f b9 13  call  $13b9
0c88: e8 00     mov   a,#$00
0c8a: 8d 1b     mov   y,#$1b
0c8c: 3f b9 13  call  $13b9
0c8f: e8 00     mov   a,#$00
0c91: 8d 1e     mov   y,#$1e
0c93: 3f b9 13  call  $13b9
0c96: e8 00     mov   a,#$00
0c98: 8d 1c     mov   y,#$1c
0c9a: 3f b9 13  call  $13b9
0c9d: 6f        ret

; vcmd dispatch table (offset from vcmd $da => function)
0c9e: db $1e, dw $0d3c ; e9
0ca1: db $0a, dw $0e55 ; df
0ca4: db $0e, dw $0d45 ; e1
0ca7: db $10, dw $0d54 ; e2
0caa: db $12, dw $0e12 ; e3
0cad: db $16, dw $0e2d ; e5
0cb0: db $1a, dw $0d6a ; e7
0cb3: db $1c, dw $0d7d ; e8
0cb6: db $26, dw $0d8a ; ed
0cb9: db $28, dw $0d9a ; ee
0cbc: db $20, dw $0db2 ; ea
0cbf: db $22, dw $0db9 ; eb
0cc2: db $24, dw $0dc8 ; ec
0cc5: db $2e, dw $0ddf ; f1
0cc8: db $38, dw $0de9 ; f6
0ccb: db $3a, dw $0df6 ; f7
0cce: db $3c, dw $0dfc ; f8
0cd1: db $2a, dw $0e02 ; ef
0cd4: db $2c, dw $0e0a ; f0
0cd7: db $14, dw $0e1c ; e4
0cda: db $18, dw $0e38 ; e6
0cdd: db $08, dw $0e4c ; de
0ce0: db $30, dw $0e70 ; f2
0ce3: db $32, dw $0e8f ; f3
0ce6: db $34, dw $0e74 ; f4
0ce9: db $36, dw $0e8f ; f5
0cec: db $06, dw $0e94 ; dd
0cef: db $04, dw $0ea1 ; dc
0cf2: db $0c, dw $0ea8 ; e0
0cf5: db $02, dw $0ec0 ; db
0cf8: db $00, dw $0ec7 ; da
0cfb: db $ff

0cfc: 3f d8 0f  call  $0fd8
0cff: 8f 00 71  mov   $71,#$00
0d02: 8f 00 72  mov   $72,#$00
0d05: 8f 00 73  mov   $73,#$00
0d08: 3f 3b 11  call  $113b
0d0b: 6f        ret

0d0c: 48 7f     eor   a,#$7f
0d0e: 2d        push  a
0d0f: ad 04     cmp   y,#$04
0d11: 90 02     bcc   $0d15
0d13: 8d 04     mov   y,#$04
0d15: f6 24 0d  mov   a,$0d24+y
0d18: fd        mov   y,a
0d19: ae        pop   a
0d1a: c8 00     cmp   x,#$00
0d1c: f0 03     beq   $0d21
0d1e: 5f cb 13  jmp   $13cb

0d21: 5f b9 13  jmp   $13b9

0d24: db $18,$19,$1a,$1b,$1e

; dispatch vcmd (da-f8)
0d29: 80        setc
0d2a: a8 da     sbc   a,#$da
0d2c: 68 1f     cmp   a,#$1f
0d2e: 90 01     bcc   $0d31
0d30: 6f        ret

; dispatch vcmd (indexed by A)
0d31: 1c        asl   a
0d32: fd        mov   y,a
0d33: f6 e5 03  mov   a,$03e5+y
0d36: 2d        push  a
0d37: f6 e4 03  mov   a,$03e4+y
0d3a: 2d        push  a
0d3b: 6f        ret

; vcmd e9
0d3c: 3f 6f 0a  call  $0a6f
0d3f: fb 29     mov   y,$29+x
0d41: d6 e0 03  mov   $03e0+y,a
0d44: 6f        ret

; vcmd e1
0d45: fb 29     mov   y,$29+x
0d47: f6 24 0d  mov   a,$0d24+y
0d4a: 2d        push  a
0d4b: 3f 6f 0a  call  $0a6f
0d4e: 48 7f     eor   a,#$7f
0d50: ee        pop   y
0d51: 5f b9 13  jmp   $13b9

; vcmd e2
0d54: 4d        push  x
0d55: fb 29     mov   y,$29+x
0d57: f6 24 0d  mov   a,$0d24+y
0d5a: 2d        push  a
0d5b: 3f 6f 0a  call  $0a6f
0d5e: 5d        mov   x,a
0d5f: 3f 6f 0a  call  $0a6f
0d62: 48 7f     eor   a,#$7f
0d64: ee        pop   y
0d65: 3f cb 13  call  $13cb
0d68: ce        pop   x
0d69: 6f        ret

; vcdm e7
0d6a: 3f 6f 0a  call  $0a6f
0d6d: c4 71     mov   $71,a
0d6f: 3f 6f 0a  call  $0a6f
0d72: c4 72     mov   $72,a
0d74: 3f 6f 0a  call  $0a6f
0d77: c4 73     mov   $73,a
0d79: 3f 3b 11  call  $113b
0d7c: 6f        ret

; vcmd e8
0d7d: 3f 6f 0a  call  $0a6f
0d80: 3f 75 0f  call  $0f75
0d83: 3f c8 10  call  $10c8
0d86: 3f 05 0f  call  $0f05
0d89: 6f        ret

; vcmd ed
0d8a: 3f 6f 0a  call  $0a6f
0d8d: 2d        push  a
0d8e: 7d        mov   a,x
0d8f: 60        clrc
0d90: 88 0c     adc   a,#$0c
0d92: fd        mov   y,a
0d93: ae        pop   a
0d94: 60        clrc
0d95: 88 0a     adc   a,#$0a
0d97: 5f b9 13  jmp   $13b9

; vcmd ee
0d9a: 4d        push  x
0d9b: 3f 6f 0a  call  $0a6f
0d9e: 2d        push  a
0d9f: 3f 6f 0a  call  $0a6f
0da2: 2d        push  a
0da3: 7d        mov   a,x
0da4: 60        clrc
0da5: 88 0c     adc   a,#$0c
0da7: fd        mov   y,a
0da8: ae        pop   a
0da9: ce        pop   x
0daa: 60        clrc
0dab: 88 0a     adc   a,#$0a
0dad: 3f cb 13  call  $13cb
0db0: ce        pop   x
0db1: 6f        ret

; vcmd ea
0db2: 3f 6f 0a  call  $0a6f
0db5: d5 b8 03  mov   $03b8+x,a
0db8: 6f        ret

; vcmd eb
0db9: 3f 6f 0a  call  $0a6f
0dbc: 2d        push  a
0dbd: 7d        mov   a,x
0dbe: 60        clrc
0dbf: 88 00     adc   a,#$00
0dc1: fd        mov   y,a
0dc2: ae        pop   a
0dc3: 48 7f     eor   a,#$7f
0dc5: 5f b9 13  jmp   $13b9

; vcmd ec
0dc8: 4d        push  x
0dc9: 3f 6f 0a  call  $0a6f
0dcc: 2d        push  a
0dcd: 3f 6f 0a  call  $0a6f
0dd0: 2d        push  a
0dd1: 7d        mov   a,x
0dd2: 60        clrc
0dd3: 88 00     adc   a,#$00
0dd5: fd        mov   y,a
0dd6: ae        pop   a
0dd7: ce        pop   x
0dd8: 48 7f     eor   a,#$7f
0dda: 3f cb 13  call  $13cb
0ddd: ce        pop   x
0dde: 6f        ret

; vcmd f1
0ddf: 3f 6f 0a  call  $0a6f
0de2: d5 c4 03  mov   $03c4+x,a
0de5: 3f 05 0f  call  $0f05
0de8: 6f        ret

; vcmd f6
0de9: 3f 6f 0a  call  $0a6f
0dec: d5 ea 04  mov   $04ea+x,a
0def: 3f 6f 0a  call  $0a6f
0df2: d5 f6 04  mov   $04f6+x,a
0df5: 6f        ret

; vcmd f7
0df6: e8 01     mov   a,#$01
0df8: d5 02 05  mov   $0502+x,a
0dfb: 6f        ret

; vcmd f8
0dfc: e8 00     mov   a,#$00
0dfe: d5 02 05  mov   $0502+x,a
0e01: 6f        ret

; vcmd ef
0e02: e8 ff     mov   a,#$ff
0e04: d5 d0 03  mov   $03d0+x,a
0e07: 5f f4 15  jmp   $15f4

; vcmd f0
0e0a: e8 00     mov   a,#$00
0e0c: d5 d0 03  mov   $03d0+x,a
0e0f: 5f f4 15  jmp   $15f4

; vcmd e3
0e12: 3f 6f 0a  call  $0a6f
0e15: 48 7f     eor   a,#$7f
0e17: 8d 1c     mov   y,#$1c
0e19: 5f b9 13  jmp   $13b9

; vcmd e4
0e1c: 4d        push  x
0e1d: 3f 6f 0a  call  $0a6f
0e20: 5d        mov   x,a
0e21: 3f 6f 0a  call  $0a6f
0e24: 48 7f     eor   a,#$7f
0e26: 8d 1c     mov   y,#$1c
0e28: 3f cb 13  call  $13cb
0e2b: ce        pop   x
0e2c: 6f        ret

; vcmd e5
0e2d: 3f 6f 0a  call  $0a6f
0e30: 8d 1d     mov   y,#$1d
0e32: 60        clrc
0e33: 88 0a     adc   a,#$0a
0e35: 5f b9 13  jmp   $13b9

; vcmd e6
0e38: 4d        push  x
0e39: 3f 6f 0a  call  $0a6f
0e3c: 5d        mov   x,a
0e3d: 3f 6f 0a  call  $0a6f
0e40: 48 7f     eor   a,#$7f
0e42: 8d 1d     mov   y,#$1d
0e44: 60        clrc
0e45: 88 0a     adc   a,#$0a
0e47: 3f cb 13  call  $13cb
0e4a: ce        pop   x
0e4b: 6f        ret

; vcmd de
0e4c: 3f 6f 0a  call  $0a6f
0e4f: fb 29     mov   y,$29+x
0e51: d6 dc 03  mov   $03dc+y,a
0e54: 6f        ret

; vcmd df
0e55: e8 00     mov   a,#$00
0e57: c4 71     mov   $71,a
0e59: 3f 6f 0a  call  $0a6f
0e5c: 68 04     cmp   a,#$04
0e5e: b0 05     bcs   $0e65
0e60: c4 71     mov   $71,a
0e62: 3f 6f 0a  call  $0a6f
0e65: fb 29     mov   y,$29+x
0e67: d6 40 01  mov   $0140+y,a
0e6a: e4 71     mov   a,$71
0e6c: d6 44 01  mov   $0144+y,a
0e6f: 6f        ret

; vcmd f2
0e70: e8 40     mov   a,#$40
0e72: 2f 02     bra   $0e76
0e74: e8 80     mov   a,#$80
0e76: 2d        push  a
0e77: 3f 6f 0a  call  $0a6f
0e7a: c4 71     mov   $71,a
0e7c: 3f 6f 0a  call  $0a6f
0e7f: c4 72     mov   $72,a
0e81: 3f 6f 0a  call  $0a6f
0e84: c4 73     mov   $73,a
0e86: 3f 6f 0a  call  $0a6f
0e89: c4 74     mov   $74,a
0e8b: ae        pop   a
0e8c: 5f ae 11  jmp   $11ae

; vcmd f3,f5
0e8f: e8 00     mov   a,#$00
0e91: 5f ae 11  jmp   $11ae

; vcmd dd
0e94: 3f 6f 0a  call  $0a6f
0e97: c4 71     mov   $71,a
0e99: 3f 6f 0a  call  $0a6f
0e9c: c4 72     mov   $72,a
0e9e: 5f 2f 11  jmp   $112f

; vcmd dc
0ea1: 3f 6f 0a  call  $0a6f
0ea4: d5 60 01  mov   $0160+x,a
0ea7: 6f        ret

; vcmd e0
0ea8: 3f 6f 0a  call  $0a6f
0eab: 48 ff     eor   a,#$ff
0ead: bc        inc   a
0eae: 2d        push  a
0eaf: 7d        mov   a,x
0eb0: 60        clrc
0eb1: 88 00     adc   a,#$00
0eb3: fd        mov   y,a
0eb4: ae        pop   a
0eb5: 60        clrc
0eb6: 96 b6 05  adc   a,$05b6+y
0eb9: 10 02     bpl   $0ebd
0ebb: e8 7f     mov   a,#$7f
0ebd: 5f b9 13  jmp   $13b9

; vcmd db
0ec0: 3f 6f 0a  call  $0a6f
0ec3: d5 c0 01  mov   $01c0+x,a
0ec6: 6f        ret

; vcmd da
0ec7: 3f 6f 0a  call  $0a6f
0eca: 9c        dec   a
0ecb: 30 09     bmi   $0ed6
0ecd: f0 12     beq   $0ee1
0ecf: 9c        dec   a
0ed0: f0 19     beq   $0eeb
0ed2: 9c        dec   a
0ed3: f0 29     beq   $0efe
0ed5: 6f        ret

0ed6: 3f 6f 0a  call  $0a6f
0ed9: 28 07     and   a,#$07
0edb: fd        mov   y,a
0edc: 7d        mov   a,x
0edd: d6 22 04  mov   $0422+y,a
0ee0: 6f        ret

0ee1: 7d        mov   a,x
0ee2: 60        clrc
0ee3: 88 0c     adc   a,#$0c
0ee5: fd        mov   y,a
0ee6: e8 ff     mov   a,#$ff
0ee8: 5f b9 13  jmp   $13b9

0eeb: 3f 6f 0a  call  $0a6f
0eee: 2d        push  a
0eef: 3f 6f 0a  call  $0a6f
0ef2: fd        mov   y,a
0ef3: ae        pop   a
0ef4: ad 00     cmp   y,#$00
0ef6: f0 03     beq   $0efb
0ef8: 5f 3e 0f  jmp   $0f3e

0efb: 5f 72 0f  jmp   $0f72

0efe: f4 11     mov   a,$11+x
0f00: 08 02     or    a,#$02
0f02: d4 11     mov   $11+x,a
0f04: 6f        ret

0f05: f5 c4 03  mov   a,$03c4+x
0f08: 3f 1d 0f  call  $0f1d
0f0b: e4 6d     mov   a,$6d
0f0d: 60        clrc
0f0e: 95 5a 04  adc   a,$045a+x
0f11: d5 72 04  mov   $0472+x,a
0f14: e4 6e     mov   a,$6e
0f16: 95 66 04  adc   a,$0466+x
0f19: d5 7e 04  mov   $047e+x,a
0f1c: 6f        ret

0f1d: 68 00     cmp   a,#$00
0f1f: 10 0e     bpl   $0f2f
0f21: 48 ff     eor   a,#$ff
0f23: bc        inc   a
0f24: 3f 2f 0f  call  $0f2f
0f27: e8 00     mov   a,#$00
0f29: fd        mov   y,a
0f2a: 9a 6d     subw  ya,$6d
0f2c: da 6d     movw  $6d,ya
0f2e: 6f        ret

0f2f: 4d        push  x
0f30: cd 64     mov   x,#$64
0f32: 8d 00     mov   y,#$00
0f34: 9e        div   ya,x
0f35: c4 6e     mov   $6e,a
0f37: e8 00     mov   a,#$00
0f39: 9e        div   ya,x
0f3a: c4 6d     mov   $6d,a
0f3c: ce        pop   x
0f3d: 6f        ret

0f3e: 2d        push  a
0f3f: dd        mov   a,y
0f40: 48 7f     eor   a,#$7f
0f42: fd        mov   y,a
0f43: ae        pop   a
0f44: 28 7f     and   a,#$7f
0f46: 68 4a     cmp   a,#$4a
0f48: b0 12     bcs   $0f5c
0f4a: 60        clrc
0f4b: 95 b8 03  adc   a,$03b8+x
0f4e: 6d        push  y
0f4f: fb 29     mov   y,$29+x
0f51: 60        clrc
0f52: 96 dc 03  adc   a,$03dc+y
0f55: ee        pop   y
0f56: 60        clrc
0f57: 88 18     adc   a,#$18
0f59: 5f 41 15  jmp   $1541

0f5c: 6d        push  y
0f5d: 80        setc
0f5e: a8 4a     sbc   a,#$4a
0f60: fb 29     mov   y,$29+x
0f62: 60        clrc
0f63: 96 e0 03  adc   a,$03e0+y
0f66: 3f 75 0f  call  $0f75
0f69: 3f c8 10  call  $10c8
0f6c: ee        pop   y
0f6d: e8 3c     mov   a,#$3c
0f6f: 5f 41 15  jmp   $1541

0f72: 5f dc 15  jmp   $15dc

0f75: 68 40     cmp   a,#$40
0f77: b0 11     bcs   $0f8a
0f79: 2d        push  a
0f7a: fb 29     mov   y,$29+x
0f7c: f6 50 01  mov   a,$0150+y
0f7f: c4 6d     mov   $6d,a
0f81: f6 54 01  mov   a,$0154+y
0f84: c4 6e     mov   $6e,a
0f86: ee        pop   y
0f87: f7 6d     mov   a,($6d)+y
0f89: 6f        ret

0f8a: 28 3f     and   a,#$3f
0f8c: 6f        ret

0f8d: 3f 00 11  call  $1100
0f90: 3f f4 15  call  $15f4
0f93: 6f        ret

0f94: e4 0e     mov   a,$0e
0f96: d6 dc 03  mov   $03dc+y,a
0f99: e4 70     mov   a,$70
0f9b: d0 09     bne   $0fa6
0f9d: f6 24 0d  mov   a,$0d24+y
0fa0: fd        mov   y,a
0fa1: e8 00     mov   a,#$00
0fa3: 3f b9 13  call  $13b9
0fa6: 8f 00 07  mov   $07,#$00
0fa9: 6f        ret

0faa: e8 00     mov   a,#$00
0fac: d5 b8 03  mov   $03b8+x,a
0faf: d5 c4 03  mov   $03c4+x,a
0fb2: d5 d0 03  mov   $03d0+x,a
0fb5: d5 c0 01  mov   $01c0+x,a
0fb8: d5 02 05  mov   $0502+x,a
0fbb: 7d        mov   a,x
0fbc: 60        clrc
0fbd: 88 00     adc   a,#$00
0fbf: fd        mov   y,a
0fc0: e8 7f     mov   a,#$7f
0fc2: 3f b9 13  call  $13b9
0fc5: 7d        mov   a,x
0fc6: 60        clrc
0fc7: 88 0c     adc   a,#$0c
0fc9: fd        mov   y,a
0fca: e8 0a     mov   a,#$0a
0fcc: 3f b9 13  call  $13b9
0fcf: e8 00     mov   a,#$00
0fd1: 3f ae 11  call  $11ae
0fd4: 3f f4 15  call  $15f4
0fd7: 6f        ret

0fd8: 8f c9 7a  mov   $7a,#$c9
0fdb: 8f 00 7b  mov   $7b,#$00
0fde: 8f 6c f2  mov   $f2,#$6c
0fe1: 8f e0 f3  mov   $f3,#$e0          ; FLG
0fe4: 8f 7d f2  mov   $f2,#$7d
0fe7: 8f 00 f3  mov   $f3,#$00          ; EDL
0fea: 8f 0d f2  mov   $f2,#$0d
0fed: 8f 00 f3  mov   $f3,#$00          ; EFB
0ff0: 8f 4d f2  mov   $f2,#$4d
0ff3: 8f 00 f3  mov   $f3,#$00          ; EON
0ff6: 8f 2c f2  mov   $f2,#$2c
0ff9: 8f 00 f3  mov   $f3,#$00          ; EVOL(L)
0ffc: 8f 3c f2  mov   $f2,#$3c
0fff: 8f 00 f3  mov   $f3,#$00          ; EVOL(R)
1002: 8f 0c f2  mov   $f2,#$0c
1005: 8f 00 f3  mov   $f3,#$00          ; MVOL(L)
1008: 8f 1c f2  mov   $f2,#$1c
100b: 8f 00 f3  mov   $f3,#$00          ; MVOL(R)
100e: 8f 2d f2  mov   $f2,#$2d
1011: 8f 00 f3  mov   $f3,#$00          ; PMON
1014: 8f 5d f2  mov   $f2,#$5d
1017: 8f 1a f3  mov   $f3,#$1a          ; NON
101a: 8f 6d f2  mov   $f2,#$6d
101d: 8f e0 f3  mov   $f3,#$e0          ; ESA
1020: 8f 0f f2  mov   $f2,#$0f
1023: 8f 7f f3  mov   $f3,#$7f          ; C0
1026: 8f 1f f2  mov   $f2,#$1f
1029: 8f 00 f3  mov   $f3,#$00          ; C1
102c: 8f 2f f2  mov   $f2,#$2f
102f: 8f 00 f3  mov   $f3,#$00          ; C2
1032: 8f 3f f2  mov   $f2,#$3f
1035: 8f 00 f3  mov   $f3,#$00          ; C3
1038: 8f 4f f2  mov   $f2,#$4f
103b: 8f 00 f3  mov   $f3,#$00          ; C4
103e: 8f 5f f2  mov   $f2,#$5f
1041: 8f 00 f3  mov   $f3,#$00          ; C5
1044: 8f 6f f2  mov   $f2,#$6f
1047: 8f 00 f3  mov   $f3,#$00          ; C6
104a: 8f 7f f2  mov   $f2,#$7f
104d: 8f 00 f3  mov   $f3,#$00          ; C7
1050: e8 1a     mov   a,#$1a
1052: 3f e2 07  call  $07e2
1055: 8f 6c f2  mov   $f2,#$6c
1058: 8f 00 f3  mov   $f3,#$00          ; FLG
105b: 8f 00 84  mov   $84,#$00
105e: 8f 00 85  mov   $85,#$00
1061: 8f 00 86  mov   $86,#$00
1064: 6f        ret

1065: 3f 1c 14  call  $141c
1068: 3f 13 12  call  $1213
106b: 8f 4c f2  mov   $f2,#$4c
106e: e4 77     mov   a,$77
1070: 48 ff     eor   a,#$ff
1072: 24 76     and   a,$76
1074: c4 f3     mov   $f3,a             ; set KON
1076: 8f 5c f2  mov   $f2,#$5c
1079: 8f 00 f3  mov   $f3,#$00
107c: e4 76     mov   a,$76
107e: 48 ff     eor   a,#$ff
1080: 24 77     and   a,$77
1082: c4 f3     mov   $f3,a             ; set KOF
1084: fa 76 77  mov   ($77),($76)
1087: fa 88 87  mov   ($87),($88)
108a: 8f 7c f2  mov   $f2,#$7c
108d: e4 f3     mov   a,$f3             ; read ENDX
108f: c4 88     mov   $88,a
1091: 6f        ret

1092: 5f 4d 13  jmp   $134d

1095: f5 8a 04  mov   a,$048a+x
1098: 60        clrc
1099: 95 72 04  adc   a,$0472+x
109c: 2d        push  a
109d: f5 96 04  mov   a,$0496+x
10a0: 95 7e 04  adc   a,$047e+x
10a3: fd        mov   y,a
10a4: ae        pop   a
10a5: 60        clrc
10a6: 95 d2 04  adc   a,$04d2+x
10a9: 2d        push  a
10aa: dd        mov   a,y
10ab: 95 de 04  adc   a,$04de+x
10ae: fd        mov   y,a
10af: ae        pop   a
10b0: 7a 7a     addw  ya,$7a
10b2: 3f 27 16  call  $1627
10b5: fb 1d     mov   y,$1d+x
10b7: f6 0d 13  mov   a,$130d+y
10ba: c4 f2     mov   $f2,a
10bc: fa 7f f3  mov   ($f3),($7f)       ; set P(L)
10bf: f6 15 13  mov   a,$1315+y
10c2: c4 f2     mov   $f2,a
10c4: fa 80 f3  mov   ($f3),($80)       ; set P(H)
10c7: 6f        ret

; set sample A
10c8: 8d 06     mov   y,#$06
10ca: cf        mul   ya
10cb: da 7f     movw  $7f,ya
10cd: e8 00     mov   a,#$00
10cf: 8d 1b     mov   y,#$1b
10d1: 7a 7f     addw  ya,$7f
10d3: da 7f     movw  $7f,ya
10d5: 8d 00     mov   y,#$00
10d7: f7 7f     mov   a,($7f)+y         ; offset +0: SRCN
10d9: d5 2a 04  mov   $042a+x,a
10dc: fc        inc   y
10dd: f7 7f     mov   a,($7f)+y         ; offset +1: ADSR(1)
10df: d5 36 04  mov   $0436+x,a
10e2: fc        inc   y
10e3: f7 7f     mov   a,($7f)+y         ; offset +2: ADSR(2)
10e5: d5 42 04  mov   $0442+x,a
10e8: fc        inc   y
10e9: f7 7f     mov   a,($7f)+y         ; offset +3: GAIN
10eb: d5 4e 04  mov   $044e+x,a
10ee: fc        inc   y
10ef: f7 7f     mov   a,($7f)+y         ; offset +4
10f1: d5 5a 04  mov   $045a+x,a
10f4: d5 72 04  mov   $0472+x,a
10f7: fc        inc   y
10f8: f7 7f     mov   a,($7f)+y         ; offset +5
10fa: d5 66 04  mov   $0466+x,a
10fd: d5 7e 04  mov   $047e+x,a
1100: f4 11     mov   a,$11+x
1102: 10 2a     bpl   $112e
1104: fb 1d     mov   y,$1d+x
1106: f6 1d 13  mov   a,$131d+y
1109: c4 f2     mov   $f2,a
110b: f5 2a 04  mov   a,$042a+x
110e: c4 f3     mov   $f3,a             ; set SRCN
1110: f6 25 13  mov   a,$1325+y
1113: c4 f2     mov   $f2,a
1115: f5 36 04  mov   a,$0436+x
1118: c4 f3     mov   $f3,a             ; set ADSR(1)
111a: f6 2d 13  mov   a,$132d+y
111d: c4 f2     mov   $f2,a
111f: f5 42 04  mov   a,$0442+x
1122: c4 f3     mov   $f3,a             ; set ADSR(2)
1124: f6 35 13  mov   a,$1335+y
1127: c4 f2     mov   $f2,a
1129: f5 4e 04  mov   a,$044e+x
112c: c4 f3     mov   $f3,a             ; set GAIN
112e: 6f        ret

112f: e4 71     mov   a,$71
1131: d5 36 04  mov   $0436+x,a
1134: e4 72     mov   a,$72
1136: d5 42 04  mov   $0442+x,a
1139: 2f c5     bra   $1100
113b: 69 71 84  cmp   ($84),($71)
113e: d0 0b     bne   $114b
1140: 69 72 85  cmp   ($85),($72)
1143: d0 06     bne   $114b
1145: 69 73 86  cmp   ($86),($73)
1148: d0 01     bne   $114b
114a: 6f        ret

114b: fa 71 84  mov   ($84),($71)
114e: fa 72 85  mov   ($85),($72)
1151: fa 73 86  mov   ($86),($73)
1154: e8 04     mov   a,#$04
1156: 64 71     cmp   a,$71
1158: b0 02     bcs   $115c
115a: c4 71     mov   $71,a
115c: 8f 7d f2  mov   $f2,#$7d
115f: fa 71 f3  mov   ($f3),($71)       ; set EDL
1162: 8f 0d f2  mov   $f2,#$0d
1165: fa 72 f3  mov   ($f3),($72)       ; set EFB
1168: e4 73     mov   a,$73
116a: 4d        push  x
116b: 1c        asl   a
116c: 1c        asl   a
116d: 1c        asl   a
116e: fd        mov   y,a
116f: cd 00     mov   x,#$00
1171: f5 45 13  mov   a,$1345+x
1174: c4 f2     mov   $f2,a
1176: f6 8e 11  mov   a,$118e+y
1179: c4 f3     mov   $f3,a             ; set FIR C0-C7
117b: fc        inc   y
117c: 3d        inc   x
117d: c8 08     cmp   x,#$08
117f: d0 f0     bne   $1171
1181: ce        pop   x
1182: c9 ab 13  mov   $13ab,x
1185: c9 ac 13  mov   $13ac,x
1188: 8f 20 07  mov   $07,#$20
118b: 5f e4 12  jmp   $12e4

; echo filter table
118e: db $7f,$00,$00,$00,$00,$00,$00,$00
1196: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
119e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
11a6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

11ae: d5 26 05  mov   $0526+x,a
11b1: 68 00     cmp   a,#$00
11b3: f0 52     beq   $1207
11b5: e4 71     mov   a,$71
11b7: 60        clrc
11b8: 88 4f     adc   a,#$4f
11ba: fd        mov   y,a
11bb: e8 ba     mov   a,#$ba
11bd: 3f 27 16  call  $1627
11c0: e4 7f     mov   a,$7f
11c2: d5 9e 05  mov   $059e+x,a
11c5: e4 80     mov   a,$80
11c7: d5 aa 05  mov   $05aa+x,a
11ca: e8 70     mov   a,#$70
11cc: 80        setc
11cd: a4 72     sbc   a,$72
11cf: fd        mov   y,a
11d0: e8 46     mov   a,#$46
11d2: 3f 27 16  call  $1627
11d5: eb 74     mov   y,$74
11d7: e4 7f     mov   a,$7f
11d9: cf        mul   ya
11da: cb 7f     mov   $7f,y
11dc: e4 80     mov   a,$80
11de: 8f 00 80  mov   $80,#$00
11e1: eb 74     mov   y,$74
11e3: cf        mul   ya
11e4: 7a 7f     addw  ya,$7f
11e6: d5 56 05  mov   $0556+x,a
11e9: dd        mov   a,y
11ea: d5 62 05  mov   $0562+x,a
11ed: e8 70     mov   a,#$70
11ef: 80        setc
11f0: a4 73     sbc   a,$73
11f2: fd        mov   y,a
11f3: e8 46     mov   a,#$46
11f5: 3f 27 16  call  $1627
11f8: e4 7f     mov   a,$7f
11fa: d5 6e 05  mov   $056e+x,a
11fd: e4 80     mov   a,$80
11ff: d5 7a 05  mov   $057a+x,a
1202: e4 74     mov   a,$74
1204: d5 32 05  mov   $0532+x,a
1207: e8 00     mov   a,#$00
1209: d5 d2 04  mov   $04d2+x,a
120c: d5 de 04  mov   $04de+x,a
120f: d5 1a 05  mov   $051a+x,a
1212: 6f        ret

1213: ec d4 05  mov   y,$05d4
1216: f6 9b 17  mov   a,$179b+y
1219: 8f 0c f2  mov   $f2,#$0c
121c: c4 f3     mov   $f3,a             ; MVOL(L)
121e: 8f 1c f2  mov   $f2,#$1c
1221: c4 f3     mov   $f3,a             ; MVOL(R)
1223: e5 d3 05  mov   a,$05d3
1226: c4 7d     mov   $7d,a
1228: e5 d2 05  mov   a,$05d2
122b: 60        clrc
122c: 85 d4 05  adc   a,$05d4
122f: 10 02     bpl   $1233
1231: e8 7f     mov   a,#$7f
1233: c4 7c     mov   $7c,a
1235: 3f b2 12  call  $12b2
1238: 8f 2c f2  mov   $f2,#$2c
123b: eb 7f     mov   y,$7f
123d: f6 9b 17  mov   a,$179b+y
1240: c4 f3     mov   $f3,a             ; EVOL(L)
1242: 8f 3c f2  mov   $f2,#$3c
1245: eb 80     mov   y,$80
1247: f6 9b 17  mov   a,$179b+y
124a: c4 f3     mov   $f3,a             ; EVOL(R)
124c: 8f 3d f2  mov   $f2,#$3d
124f: fa 79 f3  mov   ($f3),($79)       ; NON
1252: 8f 4d f2  mov   $f2,#$4d
1255: fa 78 f3  mov   ($f3),($78)       ; EON
1258: cd 00     mov   x,#$00
125a: f4 11     mov   a,$11+x
125c: 10 4e     bpl   $12ac
125e: 1c        asl   a
125f: 30 15     bmi   $1276
1261: fb 29     mov   y,$29+x
1263: f6 ce 05  mov   a,$05ce+y
1266: 60        clrc
1267: 95 b6 05  adc   a,$05b6+x
126a: b0 0a     bcs   $1276
126c: 95 0e 05  adc   a,$050e+x
126f: b0 05     bcs   $1276
1271: 95 1a 05  adc   a,$051a+x
1274: 10 02     bpl   $1278
1276: e8 7f     mov   a,#$7f
1278: c4 7c     mov   $7c,a
127a: f5 c2 05  mov   a,$05c2+x
127d: c4 7d     mov   $7d,a
127f: 3f b2 12  call  $12b2
1282: 4d        push  x
1283: f4 1d     mov   a,$1d+x
1285: 5d        mov   x,a
1286: f5 fd 12  mov   a,$12fd+x
1289: c4 f2     mov   $f2,a
128b: eb 7f     mov   y,$7f
128d: f6 9b 17  mov   a,$179b+y
1290: c4 f3     mov   $f3,a             ; set VOL(L)
1292: f5 05 13  mov   a,$1305+x
1295: c4 f2     mov   $f2,a
1297: eb 80     mov   y,$80
1299: f6 9b 17  mov   a,$179b+y
129c: c4 f3     mov   $f3,a             ; set VOL(R)
129e: ce        pop   x
129f: f5 c6 04  mov   a,$04c6+x
12a2: f0 08     beq   $12ac
12a4: 3f 95 10  call  $1095
12a7: e8 00     mov   a,#$00
12a9: d5 c6 04  mov   $04c6+x,a
12ac: 3d        inc   x
12ad: c8 0c     cmp   x,#$0c
12af: 90 a9     bcc   $125a
12b1: 6f        ret

12b2: eb 7d     mov   y,$7d
12b4: 30 27     bmi   $12dd
12b6: e4 6f     mov   a,$6f
12b8: d0 04     bne   $12be
12ba: 8d 0a     mov   y,#$0a
12bc: cb 7d     mov   $7d,y
12be: f6 86 17  mov   a,$1786+y
12c1: 60        clrc
12c2: 84 7c     adc   a,$7c
12c4: 10 02     bpl   $12c8
12c6: e8 7f     mov   a,#$7f
12c8: c4 80     mov   $80,a
12ca: e8 14     mov   a,#$14
12cc: 80        setc
12cd: a4 7d     sbc   a,$7d
12cf: fd        mov   y,a
12d0: f6 86 17  mov   a,$1786+y
12d3: 60        clrc
12d4: 84 7c     adc   a,$7c
12d6: 10 02     bpl   $12da
12d8: e8 7f     mov   a,#$7f
12da: c4 7f     mov   $7f,a
12dc: 6f        ret

12dd: e4 7c     mov   a,$7c
12df: c4 80     mov   $80,a
12e1: c4 7f     mov   $7f,a
12e3: 6f        ret

12e4: 8f 2c f2  mov   $f2,#$2c
12e7: 8f 00 f3  mov   $f3,#$00          ; EVOL(L)
12ea: 8f 3c f2  mov   $f2,#$3c
12ed: 8f 00 f3  mov   $f3,#$00          ; EVOL(R)
12f0: 8f 0c f2  mov   $f2,#$0c
12f3: 8f 00 f3  mov   $f3,#$00          ; MVOL(L)
12f6: 8f 1c f2  mov   $f2,#$1c
12f9: 8f 00 f3  mov   $f3,#$00          ; MVOL(R)
12fc: 6f        ret

12fd: db $00,$10,$20,$30,$40,$50,$60,$70    ; VOL(L)
1305: db $01,$11,$21,$31,$41,$51,$61,$71    ; VOL(R)
130d: db $02,$12,$22,$32,$42,$52,$62,$72    ; P(L)
1315: db $03,$13,$23,$33,$43,$53,$63,$73    ; P(H)
131d: db $04,$14,$24,$34,$44,$54,$64,$74    ; SRCN
1325: db $05,$15,$25,$35,$45,$55,$65,$75    ; ADSR(1)
132d: db $06,$16,$26,$36,$46,$56,$66,$76    ; ADSR(2)
1335: db $07,$17,$27,$37,$47,$57,$67,$77    ; GAIN

133d: db $01,$02,$04,$08,$10,$20,$40,$80

1345: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f    ; FIR C0-C7

134d: 8d 1e     mov   y,#$1e
134f: ab 83     inc   $83
1351: e4 83     mov   a,$83
1353: 28 01     and   a,#$01
1355: 2f 07     bra   $135e
1357: f6 8f 13  mov   a,$138f+y
135a: 5d        mov   x,a
135b: f5 6c 01  mov   a,$016c+x
135e: f0 2b     beq   $138b
1360: f6 13 06  mov   a,$0613+y
1363: 16 f4 05  or    a,$05f4+y
1366: f0 23     beq   $138b
1368: f6 d5 05  mov   a,$05d5+y
136b: 60        clrc
136c: 96 f4 05  adc   a,$05f4+y
136f: d6 d5 05  mov   $05d5+y,a
1372: f6 b6 05  mov   a,$05b6+y
1375: 96 13 06  adc   a,$0613+y
1378: d6 b6 05  mov   $05b6+y,a
137b: 76 32 06  cmp   a,$0632+y
137e: d0 0b     bne   $138b
1380: e8 00     mov   a,#$00
1382: d6 d5 05  mov   $05d5+y,a
1385: d6 f4 05  mov   $05f4+y,a
1388: d6 13 06  mov   $0613+y,a
138b: dc        dec   y
138c: 10 c9     bpl   $1357
138e: 6f        ret

138f: db $00,$01,$02,$03,$04,$05,$06,$07
1397: db $08,$09,$0a,$0b,$00,$01,$02,$03
139f: db $04,$05,$06,$07,$08,$09,$0a,$0b
13a7: db $0b,$05,$05,$00,$0b,$0b,$00

13ae: fb 29     mov   y,$29+x
13b0: 7d        mov   a,x
13b1: d6 a7 13  mov   $13a7+y,a
13b4: ad 00     cmp   y,#$00
13b6: d0 00     bne   $13b8
13b8: 6f        ret

13b9: d6 b6 05  mov   $05b6+y,a
13bc: d6 32 06  mov   $0632+y,a
13bf: e8 00     mov   a,#$00
13c1: d6 d5 05  mov   $05d5+y,a
13c4: d6 f4 05  mov   $05f4+y,a
13c7: d6 13 06  mov   $0613+y,a
13ca: 6f        ret

13cb: d6 32 06  mov   $0632+y,a
13ce: 80        setc
13cf: b6 b6 05  sbc   a,$05b6+y
13d2: f0 14     beq   $13e8
13d4: c4 80     mov   $80,a
13d6: 8f 80 7f  mov   $7f,#$80
13d9: 6d        push  y
13da: 3f e9 13  call  $13e9
13dd: ee        pop   y
13de: e4 7f     mov   a,$7f
13e0: d6 f4 05  mov   $05f4+y,a
13e3: e4 80     mov   a,$80
13e5: d6 13 06  mov   $0613+y,a
13e8: 6f        ret

13e9: e4 80     mov   a,$80
13eb: 10 14     bpl   $1401
13ed: 58 ff 7f  eor   $7f,#$ff
13f0: 58 ff 80  eor   $80,#$ff
13f3: 3a 7f     incw  $7f
13f5: 3f 01 14  call  $1401
13f8: 58 ff 7f  eor   $7f,#$ff
13fb: 58 ff 80  eor   $80,#$ff
13fe: 3a 7f     incw  $7f
1400: 6f        ret

1401: e4 80     mov   a,$80
1403: 8d 00     mov   y,#$00
1405: 9e        div   ya,x
1406: c4 80     mov   $80,a
1408: e4 7f     mov   a,$7f
140a: 9e        div   ya,x
140b: c4 7f     mov   $7f,a
140d: cd 06     mov   x,#$06
140f: e4 80     mov   a,$80
1411: 8d 00     mov   y,#$00
1413: 9e        div   ya,x
1414: c4 80     mov   $80,a
1416: e4 7f     mov   a,$7f
1418: 9e        div   ya,x
1419: c4 7f     mov   $7f,a
141b: 6f        ret

141c: cd 0b     mov   x,#$0b
141e: f4 11     mov   a,$11+x
1420: 10 4a     bpl   $146c
1422: f5 a2 04  mov   a,$04a2+x
1425: c4 7f     mov   $7f,a
1427: f5 ae 04  mov   a,$04ae+x
142a: c4 80     mov   $80,a
142c: 04 7f     or    a,$7f
142e: f0 3c     beq   $146c
1430: f5 96 04  mov   a,$0496+x
1433: fd        mov   y,a
1434: f5 8a 04  mov   a,$048a+x
1437: 7a 7f     addw  ya,$7f
1439: da 81     movw  $81,ya
143b: e4 80     mov   a,$80
143d: 30 08     bmi   $1447
143f: f5 ba 04  mov   a,$04ba+x
1442: 9c        dec   a
1443: 64 82     cmp   a,$82
1445: 2f 05     bra   $144c
1447: e4 82     mov   a,$82
1449: 75 ba 04  cmp   a,$04ba+x
144c: b0 0f     bcs   $145d
144e: f5 ba 04  mov   a,$04ba+x
1451: c4 82     mov   $82,a
1453: e8 00     mov   a,#$00
1455: c4 81     mov   $81,a
1457: d5 a2 04  mov   $04a2+x,a
145a: d5 ae 04  mov   $04ae+x,a
145d: e4 81     mov   a,$81
145f: d5 8a 04  mov   $048a+x,a
1462: e4 82     mov   a,$82
1464: d5 96 04  mov   $0496+x,a
1467: e8 01     mov   a,#$01
1469: d5 c6 04  mov   $04c6+x,a
146c: 1d        dec   x
146d: 10 af     bpl   $141e
146f: cd 0b     mov   x,#$0b
1471: f4 11     mov   a,$11+x
1473: 10 0a     bpl   $147f
1475: f5 26 05  mov   a,$0526+x
1478: 28 0f     and   a,#$0f
147a: f0 03     beq   $147f
147c: 3f 83 14  call  $1483
147f: 1d        dec   x
1480: 10 ef     bpl   $1471
1482: 6f        ret

1483: 9c        dec   a
1484: d0 25     bne   $14ab
1486: e8 00     mov   a,#$00
1488: d5 1a 05  mov   $051a+x,a
148b: d5 d2 04  mov   $04d2+x,a
148e: d5 de 04  mov   $04de+x,a
1491: d5 3e 05  mov   $053e+x,a
1494: d5 4a 05  mov   $054a+x,a
1497: f5 9e 05  mov   a,$059e+x
149a: d5 86 05  mov   $0586+x,a
149d: f5 aa 05  mov   a,$05aa+x
14a0: d5 92 05  mov   $0592+x,a
14a3: f5 26 05  mov   a,$0526+x
14a6: bc        inc   a
14a7: d5 26 05  mov   $0526+x,a
14aa: 6f        ret

14ab: 9c        dec   a
14ac: d0 18     bne   $14c6
14ae: f5 86 05  mov   a,$0586+x
14b1: 80        setc
14b2: a8 01     sbc   a,#$01
14b4: d5 86 05  mov   $0586+x,a
14b7: b0 0c     bcs   $14c5
14b9: f5 92 05  mov   a,$0592+x
14bc: a8 00     sbc   a,#$00
14be: d5 92 05  mov   $0592+x,a
14c1: b0 02     bcs   $14c5
14c3: 2f de     bra   $14a3
14c5: 6f        ret

14c6: 9c        dec   a
14c7: d0 25     bne   $14ee
14c9: f5 3e 05  mov   a,$053e+x
14cc: 60        clrc
14cd: 95 56 05  adc   a,$0556+x
14d0: d5 3e 05  mov   $053e+x,a
14d3: f5 4a 05  mov   a,$054a+x
14d6: 95 62 05  adc   a,$0562+x
14d9: d5 4a 05  mov   $054a+x,a
14dc: b0 07     bcs   $14e5
14de: 75 32 05  cmp   a,$0532+x
14e1: b0 02     bcs   $14e5
14e3: 2f 09     bra   $14ee
14e5: f5 32 05  mov   a,$0532+x
14e8: d5 4a 05  mov   $054a+x,a
14eb: 3f a3 14  call  $14a3
14ee: f5 86 05  mov   a,$0586+x
14f1: 60        clrc
14f2: 95 6e 05  adc   a,$056e+x
14f5: d5 86 05  mov   $0586+x,a
14f8: f5 92 05  mov   a,$0592+x
14fb: 95 7a 05  adc   a,$057a+x
14fe: d5 92 05  mov   $0592+x,a
1501: 3f 21 15  call  $1521
1504: f5 26 05  mov   a,$0526+x
1507: 30 12     bmi   $151b
1509: e4 7f     mov   a,$7f
150b: 1c        asl   a
150c: d5 d2 04  mov   $04d2+x,a
150f: e4 80     mov   a,$80
1511: 3c        rol   a
1512: d5 de 04  mov   $04de+x,a
1515: e8 01     mov   a,#$01
1517: d5 c6 04  mov   $04c6+x,a
151a: 6f        ret

151b: e4 7f     mov   a,$7f
151d: d5 1a 05  mov   $051a+x,a
1520: 6f        ret

1521: 68 00     cmp   a,#$00
1523: 10 0d     bpl   $1532
1525: 28 7f     and   a,#$7f
1527: 3f 32 15  call  $1532
152a: e8 00     mov   a,#$00
152c: fd        mov   y,a
152d: 9a 7f     subw  ya,$7f
152f: da 7f     movw  $7f,ya
1531: 6f        ret

1532: fd        mov   y,a
1533: f6 1b 18  mov   a,$181b+y
1536: fd        mov   y,a
1537: f5 4a 05  mov   a,$054a+x
153a: cf        mul   ya
153b: cb 7f     mov   $7f,y
153d: 8f 00 80  mov   $80,#$00
1540: 6f        ret

1541: 2d        push  a
1542: dd        mov   a,y
1543: d5 0e 05  mov   $050e+x,a
1546: ee        pop   y
1547: f4 11     mov   a,$11+x
1549: 10 1e     bpl   $1569
154b: 3f 6a 15  call  $156a
154e: fb 1d     mov   y,$1d+x
1550: f6 3d 13  mov   a,$133d+y
1553: 24 76     and   a,$76
1555: d0 12     bne   $1569
1557: f5 26 05  mov   a,$0526+x
155a: f0 06     beq   $1562
155c: 28 f0     and   a,#$f0
155e: bc        inc   a
155f: d5 26 05  mov   $0526+x,a
1562: f6 3d 13  mov   a,$133d+y
1565: 04 76     or    a,$76
1567: c4 76     mov   $76,a
1569: 6f        ret

156a: f5 02 05  mov   a,$0502+x
156d: d0 17     bne   $1586
156f: dd        mov   a,y
1570: d5 96 04  mov   $0496+x,a
1573: d5 ba 04  mov   $04ba+x,a
1576: e8 00     mov   a,#$00
1578: d5 8a 04  mov   $048a+x,a
157b: d5 a2 04  mov   $04a2+x,a
157e: d5 ae 04  mov   $04ae+x,a
1581: bc        inc   a
1582: d5 c6 04  mov   $04c6+x,a
1585: 6f        ret

1586: f5 ea 04  mov   a,$04ea+x
1589: f0 0d     beq   $1598
158b: dd        mov   a,y
158c: 60        clrc
158d: 95 ea 04  adc   a,$04ea+x
1590: d5 96 04  mov   $0496+x,a
1593: e8 00     mov   a,#$00
1595: d5 8a 04  mov   $048a+x,a
1598: dd        mov   a,y
1599: d5 ba 04  mov   $04ba+x,a
159c: 80        setc
159d: b5 96 04  sbc   a,$0496+x
15a0: c4 7e     mov   $7e,a
15a2: e8 70     mov   a,#$70
15a4: 80        setc
15a5: b5 f6 04  sbc   a,$04f6+x
15a8: fd        mov   y,a
15a9: e8 46     mov   a,#$46
15ab: 3f 27 16  call  $1627
15ae: e4 7e     mov   a,$7e
15b0: 10 03     bpl   $15b5
15b2: 48 ff     eor   a,#$ff
15b4: bc        inc   a
15b5: 2d        push  a
15b6: eb 7f     mov   y,$7f
15b8: cf        mul   ya
15b9: cb 7f     mov   $7f,y
15bb: eb 80     mov   y,$80
15bd: 8f 00 80  mov   $80,#$00
15c0: ae        pop   a
15c1: cf        mul   ya
15c2: 7a 7f     addw  ya,$7f
15c4: da 7f     movw  $7f,ya
15c6: e4 7e     mov   a,$7e
15c8: 10 07     bpl   $15d1
15ca: e8 00     mov   a,#$00
15cc: fd        mov   y,a
15cd: 9a 7f     subw  ya,$7f
15cf: da 7f     movw  $7f,ya
15d1: e4 7f     mov   a,$7f
15d3: d5 a2 04  mov   $04a2+x,a
15d6: e4 80     mov   a,$80
15d8: d5 ae 04  mov   $04ae+x,a
15db: 6f        ret

15dc: f4 11     mov   a,$11+x
15de: 10 13     bpl   $15f3
15e0: f5 26 05  mov   a,$0526+x
15e3: 28 f0     and   a,#$f0
15e5: d5 26 05  mov   $0526+x,a
15e8: fb 1d     mov   y,$1d+x
15ea: f6 3d 13  mov   a,$133d+y
15ed: 48 ff     eor   a,#$ff
15ef: 24 76     and   a,$76
15f1: c4 76     mov   $76,a
15f3: 6f        ret

15f4: 4d        push  x
15f5: 8f 00 78  mov   $78,#$00
15f8: cd 0b     mov   x,#$0b
15fa: f4 11     mov   a,$11+x
15fc: 10 0c     bpl   $160a
15fe: fb 1d     mov   y,$1d+x
1600: f6 3d 13  mov   a,$133d+y
1603: 35 d0 03  and   a,$03d0+x
1606: 04 78     or    a,$78
1608: c4 78     mov   $78,a
160a: 1d        dec   x
160b: 10 ed     bpl   $15fa
160d: ce        pop   x
160e: 6f        ret

160f: f4 11     mov   a,$11+x
1611: 10 13     bpl   $1626
1613: fb 1d     mov   y,$1d+x
1615: e4 88     mov   a,$88
1617: 48 ff     eor   a,#$ff
1619: 04 87     or    a,$87
161b: 36 3d 13  and   a,$133d+y
161e: d0 06     bne   $1626
1620: f4 11     mov   a,$11+x
1622: 28 fd     and   a,#$fd
1624: d4 11     mov   $11+x,a
1626: 6f        ret

1627: c4 7d     mov   $7d,a
1629: 4d        push  x
162a: dd        mov   a,y
162b: 8d 00     mov   y,#$00
162d: cd 0c     mov   x,#$0c
162f: 9e        div   ya,x
1630: c4 7c     mov   $7c,a
1632: ce        pop   x
1633: dd        mov   a,y
1634: 0b 7d     asl   $7d
1636: 3c        rol   a
1637: 0b 7d     asl   $7d
1639: 3c        rol   a
163a: 0b 7d     asl   $7d
163c: 3c        rol   a
163d: fd        mov   y,a
163e: f6 c6 16  mov   a,$16c6+y
1641: c4 7f     mov   $7f,a
1643: f6 66 16  mov   a,$1666+y
1646: c4 80     mov   $80,a
1648: f6 26 17  mov   a,$1726+y
164b: eb 7d     mov   y,$7d
164d: cf        mul   ya
164e: dd        mov   a,y
164f: 8d 00     mov   y,#$00
1651: 7a 7f     addw  ya,$7f
1653: da 7f     movw  $7f,ya
1655: e8 0e     mov   a,#$0e
1657: 80        setc
1658: a4 7c     sbc   a,$7c
165a: f0 09     beq   $1665
165c: 30 07     bmi   $1665
165e: fd        mov   y,a
165f: 4b 80     lsr   $80
1661: 6b 7f     ror   $7f
1663: fe fa     dbnz  y,$165f
1665: 6f        ret

1666: db $40,$40,$40,$41,$41,$42,$42,$43
166e: db $43,$44,$44,$45,$45,$46,$46,$47
1676: db $47,$48,$48,$49,$49,$4a,$4b,$4b
167e: db $4c,$4c,$4d,$4d,$4e,$4e,$4f,$50
1686: db $50,$51,$51,$52,$52,$53,$54,$54
168e: db $55,$56,$56,$57,$57,$58,$59,$59
1696: db $5a,$5b,$5b,$5c,$5d,$5d,$5e,$5f
169e: db $5f,$60,$61,$61,$62,$63,$64,$64
16a6: db $65,$66,$67,$67,$68,$69,$6a,$6a
16ae: db $6b,$6c,$6d,$6d,$6e,$6f,$70,$71
16b6: db $72,$72,$73,$74,$75,$76,$77,$77
16be: db $78,$79,$7a,$7b,$7c,$7d,$7e,$7f

16c6: db $00,$76,$ee,$66,$e0,$5a,$d5,$51
16ce: db $ce,$4c,$ca,$4a,$ca,$4c,$ce,$52
16d6: db $d6,$5b,$e1,$69,$f1,$7a,$04,$8f
16de: db $1b,$a9,$37,$c6,$56,$e8,$7a,$0e
16e6: db $a2,$38,$ce,$66,$ff,$99,$34,$d0
16ee: db $6e,$0c,$ac,$4c,$ee,$91,$36,$db
16f6: db $82,$2a,$d3,$7d,$29,$d6,$84,$33
16fe: db $e4,$96,$49,$fd,$b3,$6a,$23,$dc
1706: db $97,$54,$12,$d1,$92,$54,$17,$dc
170e: db $a2,$6a,$33,$fd,$c9,$97,$66,$36
1716: db $08,$dc,$b1,$88,$60,$3a,$15,$f2
171e: db $d0,$b0,$92,$76,$5b,$41,$2a,$14

1726: db $76,$78,$78,$7a,$7a,$7b,$7c,$7d
172e: db $7e,$7e,$80,$80,$82,$82,$84,$84
1736: db $85,$86,$88,$88,$89,$8a,$8b,$8c
173e: db $8e,$8e,$8f,$90,$92,$92,$94,$94
1746: db $96,$96,$98,$99,$9a,$9b,$9c,$9e
174e: db $9e,$a0,$a0,$a2,$a3,$a5,$a5,$a7
1756: db $a8,$a9,$aa,$ac,$ad,$ae,$af,$b1
175e: db $b2,$b3,$b4,$b6,$b7,$b9,$b9,$bb
1766: db $bd,$be,$bf,$c1,$c2,$c3,$c5,$c6
176e: db $c8,$c9,$ca,$cc,$ce,$cf,$d0,$d2
1776: db $d4,$d5,$d7,$d8,$da,$db,$dd,$de
177e: db $e0,$e2,$e4,$e5,$e6,$e9,$ea,$ec

1786: db $7f,$76,$56,$43,$36,$2c,$24,$1e
178e: db $19,$14,$10,$0d,$0a,$07,$05,$04
1796: db $02,$01,$01,$00,$00

179b: db $7f,$79,$74,$6f,$6b,$66,$62,$5e
17a3: db $5a,$56,$52,$4f,$4b,$48,$45,$42
17ab: db $3f,$3d,$3a,$38,$35,$33,$31,$2f
17b3: db $2d,$2b,$29,$27,$25,$24,$22,$21
17bb: db $1f,$1e,$1d,$1c,$1a,$19,$18,$17
17c3: db $16,$15,$14,$13,$13,$12,$11,$10
17cb: db $10,$0f,$0e,$0e,$0d,$0d,$0c,$0b
17d3: db $0b,$0a,$0a,$0a,$09,$09,$08,$08
17db: db $08,$07,$07,$07,$06,$06,$06,$06
17e3: db $05,$05,$05,$05,$04,$04,$04,$04
17eb: db $04,$04,$03,$03,$03,$03,$03,$03
17f3: db $03,$02,$02,$02,$02,$02,$02,$02
17fb: db $02,$02,$02,$01,$01,$01,$01,$01
1803: db $01,$01,$01,$01,$01,$01,$01,$01
180b: db $01,$01,$01,$01,$01,$01,$01,$00
1813: db $00,$00,$00,$00,$00,$00,$00,$00

181b: db $00,$03,$06,$09,$0d,$10,$13,$16
1823: db $19,$1c,$1f,$22,$25,$28,$2b,$2e
182b: db $31,$34,$37,$3a,$3c,$3f,$42,$44
1833: db $47,$4a,$4c,$4f,$51,$54,$56,$58
183b: db $5b,$5d,$5f,$61,$63,$65,$67,$69
1843: db $6a,$6c,$6e,$6f,$71,$72,$74,$75
184b: db $76,$77,$79,$7a,$7a,$7b,$7c,$7d
1853: db $7e,$7e,$7f,$7f,$7f,$80,$80,$80
185b: db $80,$80,$80,$80,$7f,$7f,$7f,$7e
1863: db $7e,$7d,$7c,$7b,$7a,$7a,$79,$77
186b: db $76,$75,$74,$72,$71,$6f,$6e,$6c
1873: db $6a,$69,$67,$65,$63,$61,$5f,$5d
187b: db $5b,$58,$56,$54,$51,$4f,$4c,$4a
1883: db $47,$44,$42,$3f,$3c,$3a,$37,$34
188b: db $31,$2e,$2b,$28,$25,$22,$1f,$1c
1893: db $19,$16,$13,$10,$0d,$09,$06,$03

189b: dw $1963  ; e8
189d: dw $1968  ; e9
189f: dw $197d  ; ea
18a1: dw $198c  ; eb
18a3: dw $18c7  ; ec
18a5: dw $18c7  ; ed
18a7: dw $18c7  ; ee
18a9: dw $18c7  ; ef
18ab: dw $18c8  ; f0
18ad: dw $18da  ; f1
18af: dw $18e2  ; f2
18b1: dw $190b  ; f3
18b3: dw $1914  ; f4
18b5: dw $192e  ; f5
18b7: dw $193c  ; f6
18b9: dw $18c7  ; f7

18bb: 80        setc
18bc: a8 e8     sbc   a,#$e8
18be: 68 10     cmp   a,#$10
18c0: b0 05     bcs   $18c7
18c2: 1c        asl   a
18c3: 5d        mov   x,a
18c4: 1f 9b 18  jmp   ($189b+x)

18c7: 6f        ret

18c8: fa f5 0d  mov   ($0d),($f5)
18cb: 38 03 0d  and   $0d,#$03
18ce: fa f6 0c  mov   ($0c),($f6)
18d1: 38 3f 0c  and   $0c,#$3f
18d4: fa f7 0e  mov   ($0e),($f7)
18d7: 5f 4a 08  jmp   $084a

18da: e4 f5     mov   a,$f5
18dc: 28 01     and   a,#$01
18de: c5 70 00  mov   $0070,a
18e1: 6f        ret

18e2: eb f5     mov   y,$f5
18e4: ad 80     cmp   y,#$80
18e6: 90 18     bcc   $1900
18e8: ad 90     cmp   y,#$90
18ea: b0 14     bcs   $1900
18ec: 8d 00     mov   y,#$00
18ee: f6 07 19  mov   a,$1907+y
18f1: 24 f5     and   a,$f5
18f3: f0 05     beq   $18fa
18f5: 6d        push  y
18f6: 3f 00 19  call  $1900
18f9: ee        pop   y
18fa: fc        inc   y
18fb: ad 04     cmp   y,#$04
18fd: 90 ef     bcc   $18ee
18ff: 6f        ret

1900: f8 f6     mov   x,$f6
1902: e4 f7     mov   a,$f7
1904: 5f 0c 0d  jmp   $0d0c

1907: 01 02 04 08

190b: e4 f5     mov   a,$f5
190d: f0 02     beq   $1911
190f: e8 ff     mov   a,#$ff
1911: c4 6f     mov   $6f,a
1913: 6f        ret

1914: e4 f5     mov   a,$f5
1916: 28 07     and   a,#$07
1918: 5d        mov   x,a
1919: f5 22 04  mov   a,$0422+x
191c: 5d        mov   x,a
191d: e4 f6     mov   a,$f6
191f: f0 0a     beq   $192b
1921: 28 7f     and   a,#$7f
1923: 48 7f     eor   a,#$7f
1925: fd        mov   y,a
1926: e4 f7     mov   a,$f7
1928: 5f 41 15  jmp   $1541

192b: 5f dc 15  jmp   $15dc

192e: e4 f5     mov   a,$f5
1930: 28 07     and   a,#$07
1932: 5d        mov   x,a
1933: f5 22 04  mov   a,$0422+x
1936: 5d        mov   x,a
1937: e4 f6     mov   a,$f6
1939: 5f 80 0d  jmp   $0d80

193c: eb f5     mov   y,$f5
193e: ad 80     cmp   y,#$80
1940: 90 18     bcc   $195a
1942: ad 90     cmp   y,#$90
1944: b0 14     bcs   $195a
1946: 8d 00     mov   y,#$00
1948: f6 07 19  mov   a,$1907+y
194b: 24 f5     and   a,$f5
194d: f0 05     beq   $1954
194f: 6d        push  y
1950: 3f 5a 19  call  $195a
1953: ee        pop   y
1954: fc        inc   y
1955: ad 04     cmp   y,#$04
1957: 90 ef     bcc   $1948
1959: 6f        ret

195a: dd        mov   a,y
195b: 28 03     and   a,#$03
195d: fd        mov   y,a
195e: e4 f6     mov   a,$f6
1960: 5f dd 09  jmp   $09dd

1963: ba f5     movw  ya,$f5
1965: da 89     movw  $89,ya
1967: 6f        ret

1968: 8d 00     mov   y,#$00
196a: e4 f5     mov   a,$f5
196c: d7 89     mov   ($89)+y,a
196e: 3a 89     incw  $89
1970: e4 f6     mov   a,$f6
1972: d7 89     mov   ($89)+y,a
1974: 3a 89     incw  $89
1976: e4 f7     mov   a,$f7
1978: d7 89     mov   ($89)+y,a
197a: 3a 89     incw  $89
197c: 6f        ret

197d: 8d 00     mov   y,#$00
197f: e4 f5     mov   a,$f5
1981: d7 89     mov   ($89)+y,a
1983: 3a 89     incw  $89
1985: e4 f6     mov   a,$f6
1987: d7 89     mov   ($89)+y,a
1989: 3a 89     incw  $89
198b: 6f        ret

198c: 8d 00     mov   y,#$00
198e: e4 f5     mov   a,$f5
1990: d7 89     mov   ($89)+y,a
1992: 3a 89     incw  $89
1994: 6f        ret
