; Zoot Mahjong SPC - loveemu labo
; Disassembler: spcdas v0.01

0800: 20        clrp
0801: cd 7f     mov   x,#$7f
0803: bd        mov   sp,x
0804: e8 ff     mov   a,#$ff
0806: c5 f7 00  mov   $00f7,a
0809: 3f 42 10  call  $1042
080c: e8 00     mov   a,#$00
080e: c5 f4 00  mov   $00f4,a
0811: c5 f5 00  mov   $00f5,a
0814: c5 f6 00  mov   $00f6,a
0817: c5 f7 00  mov   $00f7,a
081a: 3f ef 0f  call  $0fef
081d: 8d 6c     mov   y,#$6c
081f: e8 a0     mov   a,#$a0
0821: 3f 46 0b  call  $0b46
0824: e8 01     mov   a,#$01
0826: 3f fc 0f  call  $0ffc
0829: a2 3d     set5  $3d
082b: e8 60     mov   a,#$60
082d: 8d 0c     mov   y,#$0c
082f: 3f 46 0b  call  $0b46
0832: 8d 1c     mov   y,#$1c
0834: 3f 46 0b  call  $0b46
0837: 8d 2d     mov   y,#$2d
0839: e8 00     mov   a,#$00
083b: 3f 46 0b  call  $0b46
083e: 8d 3d     mov   y,#$3d
0840: e8 00     mov   a,#$00
0842: 3f 46 0b  call  $0b46
0845: 8d 5c     mov   y,#$5c
0847: e8 ff     mov   a,#$ff
0849: 3f 46 0b  call  $0b46
084c: e8 3c     mov   a,#$3c
084e: 8d 5d     mov   y,#$5d
0850: 3f 46 0b  call  $0b46
0853: e8 01     mov   a,#$01
0855: c5 04 00  mov   $0004,a
0858: e8 01     mov   a,#$01
085a: c5 f1 00  mov   $00f1,a
085d: e8 fe     mov   a,#$fe
085f: c5 f7 00  mov   $00f7,a
0862: 3f dd 09  call  $09dd
0865: 3f 7b 10  call  $107b
0868: 3f 6f 10  call  $106f
086b: 3f e9 0f  call  $0fe9
086e: 3f b5 10  call  $10b5
0871: 3f 2b 0a  call  $0a2b
0874: e4 00     mov   a,$00
0876: 1c        asl   a
0877: 5d        mov   x,a
0878: 1f 7b 08  jmp   ($087b+x)

087b: dw $097a  ; 
087d: dw $097d  ; 
087f: dw $098f  ; 
0881: dw $0998  ; 
0883: dw $09a0  ; 
0885: dw $09a8  ; 
0887: dw $09b5  ; 
0889: dw $09c1  ; 
088b: dw $08e9  ; 
088d: dw $08f1  ; 
088f: dw $08e4  ; 
0891: dw $0986  ; 
0893: dw $08b8  ; 
0895: dw $08ce  ; 
0897: dw $089d  ; 
0899: dw $095b  ; 
089b: dw $08f9  ; 

089d: e8 00     mov   a,#$00
089f: 8d 0c     mov   y,#$0c
08a1: 3f 46 0b  call  $0b46
08a4: 8d 1c     mov   y,#$1c
08a6: 3f 46 0b  call  $0b46
08a9: 8d 5c     mov   y,#$5c
08ab: e8 ff     mov   a,#$ff
08ad: 3f 46 0b  call  $0b46
08b0: e8 80     mov   a,#$80
08b2: c5 f1 00  mov   $00f1,a
08b5: 5f c0 ff  jmp   $ffc0

08b8: e8 00     mov   a,#$00
08ba: c4 71     mov   $71,a
08bc: e8 00     mov   a,#$00
08be: 3f 51 17  call  $1751
08c1: e8 00     mov   a,#$00
08c3: 3f 05 16  call  $1605
08c6: e8 00     mov   a,#$00
08c8: 3f 95 13  call  $1395
08cb: 5f 5d 08  jmp   $085d

08ce: e8 01     mov   a,#$01
08d0: c4 71     mov   $71,a
08d2: e8 00     mov   a,#$00
08d4: 3f 51 17  call  $1751
08d7: e8 00     mov   a,#$00
08d9: 3f 05 16  call  $1605
08dc: e8 00     mov   a,#$00
08de: 3f 95 13  call  $1395
08e1: 5f 5d 08  jmp   $085d

08e4: a2 3d     set5  $3d
08e6: 5f 5d 08  jmp   $085d

08e9: e8 01     mov   a,#$01
08eb: c5 04 00  mov   $0004,a
08ee: 5f 5d 08  jmp   $085d

08f1: e8 00     mov   a,#$00
08f3: c5 04 00  mov   $0004,a
08f6: 5f 5d 08  jmp   $085d

08f9: e8 80     mov   a,#$80
08fb: c5 1b 00  mov   $001b,a
08fe: e8 fa     mov   a,#$fa
0900: c5 f7 00  mov   $00f7,a
0903: 3f 04 0a  call  $0a04
0906: 68 f9     cmp   a,#$f9
0908: d0 f9     bne   $0903
090a: 3f 1f 0a  call  $0a1f
090d: c4 1c     mov   $1c,a
090f: 3f 16 0a  call  $0a16
0912: c4 1d     mov   $1d,a
0914: e8 fc     mov   a,#$fc
0916: c4 f7     mov   $f7,a
0918: 8d 00     mov   y,#$00
091a: 3f 04 0a  call  $0a04
091d: 65 1b 00  cmp   a,$001b
0920: d0 04     bne   $0926
0922: 2f 0e     bra   $0932
0924: 2f 0a     bra   $0930
0926: bc        inc   a
0927: bc        inc   a
0928: 65 1b 00  cmp   a,$001b
092b: d0 03     bne   $0930
092d: 5f 5d 08  jmp   $085d

0930: 2f e8     bra   $091a
0932: 3f 1f 0a  call  $0a1f
0935: d7 1c     mov   ($1c)+y,a
0937: fc        inc   y
0938: d0 02     bne   $093c
093a: ab 1d     inc   $1d
093c: 3f 16 0a  call  $0a16
093f: d7 1c     mov   ($1c)+y,a
0941: fc        inc   y
0942: d0 02     bne   $0946
0944: ab 1d     inc   $1d
0946: 3f 0d 0a  call  $0a0d
0949: d7 1c     mov   ($1c)+y,a
094b: fc        inc   y
094c: d0 02     bne   $0950
094e: ab 1d     inc   $1d
0950: e5 1b 00  mov   a,$001b
0953: c5 f7 00  mov   $00f7,a
0956: ac 1b 00  inc   $001b
0959: 2f bf     bra   $091a
095b: e8 00     mov   a,#$00
095d: 3f 95 13  call  $1395
0960: e8 00     mov   a,#$00
0962: 3f 05 16  call  $1605
0965: 8d 5c     mov   y,#$5c
0967: e8 ff     mov   a,#$ff
0969: 3f 46 0b  call  $0b46
096c: 3f 71 17  call  $1771
096f: e8 00     mov   a,#$00
0971: c4 3b     mov   $3b,a
0973: e8 00     mov   a,#$00
0975: c4 3c     mov   $3c,a
0977: 5f 5d 08  jmp   $085d

097a: 5f 5d 08  jmp   $085d

097d: 3f 16 0a  call  $0a16
0980: 3f 95 13  call  $1395
0983: 5f 5d 08  jmp   $085d

0986: 3f 16 0a  call  $0a16
0989: 3f 51 17  call  $1751
098c: 5f 5d 08  jmp   $085d

098f: 3f 16 0a  call  $0a16
0992: 3f 05 16  call  $1605
0995: 5f 5d 08  jmp   $085d

0998: e8 00     mov   a,#$00
099a: 3f 95 13  call  $1395
099d: 5f 5d 08  jmp   $085d

09a0: e8 00     mov   a,#$00
09a2: 3f 05 16  call  $1605
09a5: 5f 5d 08  jmp   $085d

09a8: e8 00     mov   a,#$00
09aa: 3f 05 16  call  $1605
09ad: e8 00     mov   a,#$00
09af: 3f 95 13  call  $1395
09b2: 5f 5d 08  jmp   $085d

09b5: 3f 16 0a  call  $0a16
09b8: c4 05     mov   $05,a
09ba: e8 07     mov   a,#$07
09bc: c4 00     mov   $00,a
09be: 5f 65 08  jmp   $0865

09c1: e4 4d     mov   a,$4d
09c3: 80        setc
09c4: a4 05     sbc   a,$05
09c6: b0 0e     bcs   $09d6
09c8: e8 00     mov   a,#$00
09ca: c4 4d     mov   $4d,a
09cc: c4 4e     mov   $4e,a
09ce: e8 00     mov   a,#$00
09d0: 3f 95 13  call  $1395
09d3: 5f 5d 08  jmp   $085d

09d6: c4 4d     mov   $4d,a
09d8: c4 4e     mov   $4e,a
09da: 5f 65 08  jmp   $0865

09dd: e5 f4 00  mov   a,$00f4
09e0: 65 f4 00  cmp   a,$00f4
09e3: d0 f8     bne   $09dd
09e5: 2d        push  a
09e6: c4 00     mov   $00,a
09e8: eb 08     mov   y,$08
09ea: e4 00     mov   a,$00
09ec: c4 08     mov   $08,a
09ee: 7e 00     cmp   y,$00
09f0: d0 04     bne   $09f6
09f2: e8 00     mov   a,#$00
09f4: c4 00     mov   $00,a
09f6: e4 00     mov   a,$00
09f8: f0 05     beq   $09ff
09fa: e8 f8     mov   a,#$f8
09fc: c5 f7 00  mov   $00f7,a
09ff: ae        pop   a
0a00: c5 f4 00  mov   $00f4,a
0a03: 6f        ret

0a04: e5 f7 00  mov   a,$00f7
0a07: 65 f7 00  cmp   a,$00f7
0a0a: d0 f8     bne   $0a04
0a0c: 6f        ret

0a0d: e5 f6 00  mov   a,$00f6
0a10: 65 f6 00  cmp   a,$00f6
0a13: d0 f8     bne   $0a0d
0a15: 6f        ret

0a16: e5 f5 00  mov   a,$00f5
0a19: 65 f5 00  cmp   a,$00f5
0a1c: d0 f8     bne   $0a16
0a1e: 6f        ret

0a1f: e5 f4 00  mov   a,$00f4
0a22: 65 f4 00  cmp   a,$00f4
0a25: d0 f8     bne   $0a1f
0a27: c5 f4 00  mov   $00f4,a
0a2a: 6f        ret

0a2b: e4 47     mov   a,$47
0a2d: cf        mul   ya
0a2e: 60        clrc
0a2f: 84 45     adc   a,$45
0a31: c4 45     mov   $45,a
0a33: 90 17     bcc   $0a4c
0a35: e4 71     mov   a,$71
0a37: d0 08     bne   $0a41
0a39: 3f ce 14  call  $14ce
0a3c: 3f e0 10  call  $10e0
0a3f: 2f 09     bra   $0a4a
0a41: 3f ce 14  call  $14ce
0a44: 3f 25 16  call  $1625
0a47: 3f ea 13  call  $13ea
0a4a: 2f 03     bra   $0a4f
0a4c: 3f c9 10  call  $10c9
0a4f: 6f        ret

0a50: 6f        ret

0a51: ad ca     cmp   y,#$ca
0a53: 90 05     bcc   $0a5a
0a55: 3f b9 0b  call  $0bb9
0a58: 8d a4     mov   y,#$a4
0a5a: ad c8     cmp   y,#$c8
0a5c: b0 f2     bcs   $0a50
0a5e: e4 1a     mov   a,$1a
0a60: 24 36     and   a,$36
0a62: d0 ec     bne   $0a50
0a64: dd        mov   a,y
0a65: 28 7f     and   a,#$7f
0a67: 60        clrc
0a68: 84 44     adc   a,$44
0a6a: 60        clrc
0a6b: 95 f0 02  adc   a,$02f0+x
0a6e: d5 61 03  mov   $0361+x,a
0a71: f5 81 03  mov   a,$0381+x
0a74: d5 60 03  mov   $0360+x,a
0a77: f5 b1 02  mov   a,$02b1+x
0a7a: 5c        lsr   a
0a7b: e8 00     mov   a,#$00
0a7d: 7c        ror   a
0a7e: d5 a0 02  mov   $02a0+x,a
0a81: e8 00     mov   a,#$00
0a83: d4 b0     mov   $b0+x,a
0a85: d5 00 01  mov   $0100+x,a
0a88: d5 d0 02  mov   $02d0+x,a
0a8b: d4 c0     mov   $c0+x,a
0a8d: 09 36 53  or    ($53),($36)
0a90: 09 36 34  or    ($34),($36)
0a93: f5 80 02  mov   a,$0280+x
0a96: d4 a0     mov   $a0+x,a
0a98: f0 1e     beq   $0ab8
0a9a: f5 81 02  mov   a,$0281+x
0a9d: d4 a1     mov   $a1+x,a
0a9f: f5 90 02  mov   a,$0290+x
0aa2: d0 0a     bne   $0aae
0aa4: f5 61 03  mov   a,$0361+x
0aa7: 80        setc
0aa8: b5 91 02  sbc   a,$0291+x
0aab: d5 61 03  mov   $0361+x,a
0aae: f5 91 02  mov   a,$0291+x
0ab1: 60        clrc
0ab2: 95 61 03  adc   a,$0361+x
0ab5: 3f d0 0d  call  $0dd0
0ab8: 3f e8 0d  call  $0de8
0abb: 8d 00     mov   y,#$00
0abd: e4 11     mov   a,$11
0abf: 80        setc
0ac0: a8 34     sbc   a,#$34
0ac2: b0 09     bcs   $0acd
0ac4: e4 11     mov   a,$11
0ac6: 80        setc
0ac7: a8 13     sbc   a,#$13
0ac9: b0 06     bcs   $0ad1
0acb: dc        dec   y
0acc: 1c        asl   a
0acd: 7a 10     addw  ya,$10
0acf: da 10     movw  $10,ya
0ad1: 4d        push  x
0ad2: e4 11     mov   a,$11
0ad4: 1c        asl   a
0ad5: 8d 00     mov   y,#$00
0ad7: cd 18     mov   x,#$18
0ad9: 9e        div   ya,x
0ada: 5d        mov   x,a
0adb: f6 c5 0f  mov   a,$0fc5+y
0ade: c4 15     mov   $15,a
0ae0: f6 c4 0f  mov   a,$0fc4+y
0ae3: c4 14     mov   $14,a
0ae5: f6 c7 0f  mov   a,$0fc7+y
0ae8: 2d        push  a
0ae9: f6 c6 0f  mov   a,$0fc6+y
0aec: ee        pop   y
0aed: 9a 14     subw  ya,$14
0aef: eb 10     mov   y,$10
0af1: cf        mul   ya
0af2: dd        mov   a,y
0af3: 8d 00     mov   y,#$00
0af5: 7a 14     addw  ya,$14
0af7: cb 15     mov   $15,y
0af9: 1c        asl   a
0afa: 2b 15     rol   $15
0afc: c4 14     mov   $14,a
0afe: 2f 04     bra   $0b04
0b00: 4b 15     lsr   $15
0b02: 7c        ror   a
0b03: 3d        inc   x
0b04: c8 06     cmp   x,#$06
0b06: d0 f8     bne   $0b00
0b08: c4 14     mov   $14,a
0b0a: ce        pop   x
0b0b: f5 20 02  mov   a,$0220+x
0b0e: eb 15     mov   y,$15
0b10: cf        mul   ya
0b11: da 16     movw  $16,ya
0b13: f5 20 02  mov   a,$0220+x
0b16: eb 14     mov   y,$14
0b18: cf        mul   ya
0b19: 6d        push  y
0b1a: f5 21 02  mov   a,$0221+x
0b1d: eb 14     mov   y,$14
0b1f: cf        mul   ya
0b20: 7a 16     addw  ya,$16
0b22: da 16     movw  $16,ya
0b24: f5 21 02  mov   a,$0221+x
0b27: eb 15     mov   y,$15
0b29: cf        mul   ya
0b2a: fd        mov   y,a
0b2b: ae        pop   a
0b2c: 7a 16     addw  ya,$16
0b2e: da 16     movw  $16,ya
0b30: 7d        mov   a,x
0b31: 9f        xcn   a
0b32: 5c        lsr   a
0b33: 08 02     or    a,#$02
0b35: fd        mov   y,a
0b36: e4 16     mov   a,$16
0b38: 3f 3e 0b  call  $0b3e
0b3b: fc        inc   y
0b3c: e4 17     mov   a,$17
0b3e: 2d        push  a
0b3f: e4 36     mov   a,$36
0b41: 24 1a     and   a,$1a
0b43: ae        pop   a
0b44: d0 06     bne   $0b4c
0b46: cc f2 00  mov   $00f2,y
0b49: c5 f3 00  mov   $00f3,a
0b4c: 6f        ret

; dispatch vcmd in A
0b4d: 80        setc
0b4e: a8 e0     sbc   a,#$e0
0b50: 1c        asl   a
0b51: fd        mov   y,a
0b52: f6 5c 0b  mov   a,$0b5c+y
0b55: 2d        push  a
0b56: f6 5b 0b  mov   a,$0b5b+y
0b59: 2d        push  a
0b5a: 6f        ret

; vcmd dispatch table
0b5b: dw $0bb6  ; e0
0b5d: dw $0c12  ; e1
0b5f: dw $0c23  ; e2
0b61: dw $0c3f  ; e3
0b63: dw $0c4e  ; e4
0b65: dw $0c6c  ; e5
0b67: dw $0c74  ; e6
0b69: dw $0c89  ; e7
0b6b: dw $0c91  ; e8
0b6d: dw $0ca6  ; e9
0b6f: dw $0cac  ; ea
0b71: dw $0cb3  ; eb
0b73: dw $0cc2  ; ec
0b75: dw $0ce8  ; ed
0b77: dw $0cfe  ; ee
0b79: dw $0d21  ; ef
0b7b: dw $0c59  ; f0
0b7d: dw $0cc5  ; f1
0b7f: dw $0cc9  ; f2
0b81: dw $0ce2  ; f3
0b83: dw $0d1a  ; f4
0b85: dw $0d47  ; f5
0b87: dw $0d81  ; f6
0b89: dw $0d88  ; f7
0b8b: dw $0d5d  ; f8
0b8d: dw $0dbd  ; f9
0b8f: dw $0dad  ; fa
                ; fb-ff undefined

; vcmd lengths
0b91: db $01,$01,$02,$03,$00,$01,$02,$01
0b99: db $02,$01,$01,$03,$00,$01,$02,$03
0ba1: db $01,$03,$03,$00,$01,$03,$00,$03
0ba9: db $03,$03,$01

0bac: e7 20     mov   a,($20+x)
0bae: bb 20     inc   $20+x
0bb0: d0 02     bne   $0bb4
0bb2: bb 21     inc   $21+x
0bb4: fd        mov   y,a
0bb5: 6f        ret

0bb6: 3f ac 0b  call  $0bac
0bb9: d5 11 02  mov   $0211+x,a
0bbc: fd        mov   y,a
0bbd: 10 06     bpl   $0bc5
0bbf: 80        setc
0bc0: a8 ca     sbc   a,#$ca
0bc2: 60        clrc
0bc3: 84 54     adc   a,$54
0bc5: 8d 06     mov   y,#$06
0bc7: cf        mul   ya
0bc8: da 14     movw  $14,ya
0bca: 60        clrc
0bcb: 98 00 14  adc   $14,#$00
0bce: 98 39 15  adc   $15,#$39
0bd1: e4 1a     mov   a,$1a
0bd3: 24 36     and   a,$36
0bd5: d0 3a     bne   $0c11
0bd7: 4d        push  x
0bd8: 7d        mov   a,x
0bd9: 9f        xcn   a
0bda: 5c        lsr   a
0bdb: 08 04     or    a,#$04
0bdd: 5d        mov   x,a
0bde: 8d 00     mov   y,#$00
0be0: f7 14     mov   a,($14)+y
0be2: 10 0e     bpl   $0bf2
0be4: 28 1f     and   a,#$1f
0be6: 38 20 3d  and   $3d,#$20
0be9: 0e 3d 00  tset1 $003d
0bec: 09 36 3e  or    ($3e),($36)
0bef: dd        mov   a,y
0bf0: 2f 07     bra   $0bf9
0bf2: e4 36     mov   a,$36
0bf4: 4e 3e 00  tclr1 $003e
0bf7: f7 14     mov   a,($14)+y
0bf9: c9 f2 00  mov   $00f2,x
0bfc: c5 f3 00  mov   $00f3,a
0bff: 3d        inc   x
0c00: fc        inc   y
0c01: ad 04     cmp   y,#$04
0c03: d0 f2     bne   $0bf7
0c05: ce        pop   x
0c06: f7 14     mov   a,($14)+y
0c08: d5 21 02  mov   $0221+x,a
0c0b: fc        inc   y
0c0c: f7 14     mov   a,($14)+y
0c0e: d5 20 02  mov   $0220+x,a
0c11: 6f        ret

0c12: 3f ac 0b  call  $0bac
0c15: d5 51 03  mov   $0351+x,a
0c18: 28 1f     and   a,#$1f
0c1a: d5 31 03  mov   $0331+x,a
0c1d: e8 00     mov   a,#$00
0c1f: d5 30 03  mov   $0330+x,a
0c22: 6f        ret

0c23: 3f ac 0b  call  $0bac
0c26: d4 91     mov   $91+x,a
0c28: 2d        push  a
0c29: 3f ac 0b  call  $0bac
0c2c: d5 50 03  mov   $0350+x,a
0c2f: 80        setc
0c30: b5 31 03  sbc   a,$0331+x
0c33: ce        pop   x
0c34: 3f f3 0d  call  $0df3
0c37: d5 40 03  mov   $0340+x,a
0c3a: dd        mov   a,y
0c3b: d5 41 03  mov   $0341+x,a
0c3e: 6f        ret

0c3f: 3f ac 0b  call  $0bac
0c42: d5 b0 02  mov   $02b0+x,a
0c45: 3f ac 0b  call  $0bac
0c48: d5 a1 02  mov   $02a1+x,a
0c4b: 3f ac 0b  call  $0bac
0c4e: d4 b1     mov   $b1+x,a
0c50: d5 c1 02  mov   $02c1+x,a
0c53: e8 00     mov   a,#$00
0c55: d5 b1 02  mov   $02b1+x,a
0c58: 6f        ret

0c59: 3f ac 0b  call  $0bac
0c5c: d5 b1 02  mov   $02b1+x,a
0c5f: 2d        push  a
0c60: 8d 00     mov   y,#$00
0c62: f4 b1     mov   a,$b1+x
0c64: ce        pop   x
0c65: 9e        div   ya,x
0c66: f8 33     mov   x,$33
0c68: d5 c0 02  mov   $02c0+x,a
0c6b: 6f        ret

0c6c: 3f ac 0b  call  $0bac
0c6f: e8 00     mov   a,#$00
0c71: da 4d     movw  $4d,ya
0c73: 6f        ret

0c74: 3f ac 0b  call  $0bac
0c77: c4 4f     mov   $4f,a
0c79: 3f ac 0b  call  $0bac
0c7c: c4 50     mov   $50,a
0c7e: 80        setc
0c7f: a4 4e     sbc   a,$4e
0c81: f8 4f     mov   x,$4f
0c83: 3f f3 0d  call  $0df3
0c86: da 51     movw  $51,ya
0c88: 6f        ret

0c89: 3f ac 0b  call  $0bac
0c8c: e8 00     mov   a,#$00
0c8e: da 46     movw  $46,ya
0c90: 6f        ret

0c91: 3f ac 0b  call  $0bac
0c94: c4 48     mov   $48,a
0c96: 3f ac 0b  call  $0bac
0c99: c4 49     mov   $49,a
0c9b: 80        setc
0c9c: a4 47     sbc   a,$47
0c9e: f8 48     mov   x,$48
0ca0: 3f f3 0d  call  $0df3
0ca3: da 4a     movw  $4a,ya
0ca5: 6f        ret

0ca6: 3f ac 0b  call  $0bac
0ca9: c4 44     mov   $44,a
0cab: 6f        ret

0cac: 3f ac 0b  call  $0bac
0caf: d5 f0 02  mov   $02f0+x,a
0cb2: 6f        ret

0cb3: 3f ac 0b  call  $0bac
0cb6: d5 e0 02  mov   $02e0+x,a
0cb9: 3f ac 0b  call  $0bac
0cbc: d5 d1 02  mov   $02d1+x,a
0cbf: 3f ac 0b  call  $0bac
0cc2: d4 c1     mov   $c1+x,a
0cc4: 6f        ret

0cc5: e8 01     mov   a,#$01
0cc7: 2f 02     bra   $0ccb
0cc9: e8 00     mov   a,#$00
0ccb: d5 90 02  mov   $0290+x,a
0cce: 3f ac 0b  call  $0bac
0cd1: dd        mov   a,y
0cd2: d5 81 02  mov   $0281+x,a
0cd5: 3f ac 0b  call  $0bac
0cd8: d5 80 02  mov   $0280+x,a
0cdb: 3f ac 0b  call  $0bac
0cde: d5 91 02  mov   $0291+x,a
0ce1: 6f        ret

0ce2: e8 00     mov   a,#$00
0ce4: d5 80 02  mov   $0280+x,a
0ce7: 6f        ret

0ce8: 3f ac 0b  call  $0bac
0ceb: d5 01 03  mov   $0301+x,a
0cee: e8 00     mov   a,#$00
0cf0: d5 00 03  mov   $0300+x,a
0cf3: 7d        mov   a,x
0cf4: 9f        xcn   a
0cf5: 5c        lsr   a
0cf6: fd        mov   y,a
0cf7: f5 01 03  mov   a,$0301+x
0cfa: 3f 46 0b  call  $0b46
0cfd: 6f        ret

0cfe: 3f ac 0b  call  $0bac
0d01: d4 90     mov   $90+x,a
0d03: 2d        push  a
0d04: 3f ac 0b  call  $0bac
0d07: d5 20 03  mov   $0320+x,a
0d0a: 80        setc
0d0b: b5 01 03  sbc   a,$0301+x
0d0e: ce        pop   x
0d0f: 3f f3 0d  call  $0df3
0d12: d5 10 03  mov   $0310+x,a
0d15: dd        mov   a,y
0d16: d5 11 03  mov   $0311+x,a
0d19: 6f        ret

0d1a: 3f ac 0b  call  $0bac
0d1d: d5 81 03  mov   $0381+x,a
0d20: 6f        ret

0d21: 3f ac 0b  call  $0bac
0d24: d5 40 02  mov   $0240+x,a
0d27: 3f ac 0b  call  $0bac
0d2a: d5 41 02  mov   $0241+x,a
0d2d: 3f ac 0b  call  $0bac
0d30: d4 80     mov   $80+x,a
0d32: f4 20     mov   a,$20+x
0d34: d5 30 02  mov   $0230+x,a
0d37: f4 21     mov   a,$21+x
0d39: d5 31 02  mov   $0231+x,a
0d3c: f5 40 02  mov   a,$0240+x
0d3f: d4 20     mov   $20+x,a
0d41: f5 41 02  mov   a,$0241+x
0d44: d4 21     mov   $21+x,a
0d46: 6f        ret

0d47: 3f ac 0b  call  $0bac
0d4a: c4 3f     mov   $3f,a
0d4c: 3f ac 0b  call  $0bac
0d4f: e8 00     mov   a,#$00
0d51: da 55     movw  $55,ya
0d53: 3f ac 0b  call  $0bac
0d56: e8 00     mov   a,#$00
0d58: da 57     movw  $57,ya
0d5a: b2 3d     clr5  $3d
0d5c: 6f        ret

0d5d: 3f ac 0b  call  $0bac
0d60: c4 5d     mov   $5d,a
0d62: 3f ac 0b  call  $0bac
0d65: c4 5e     mov   $5e,a
0d67: 80        setc
0d68: a4 56     sbc   a,$56
0d6a: f8 5d     mov   x,$5d
0d6c: 3f f3 0d  call  $0df3
0d6f: da 59     movw  $59,ya
0d71: 3f ac 0b  call  $0bac
0d74: c4 5f     mov   $5f,a
0d76: 80        setc
0d77: a4 58     sbc   a,$58
0d79: f8 5d     mov   x,$5d
0d7b: 3f f3 0d  call  $0df3
0d7e: da 5b     movw  $5b,ya
0d80: 6f        ret

0d81: da 55     movw  $55,ya
0d83: da 57     movw  $57,ya
0d85: a2 3d     set5  $3d
0d87: 6f        ret

0d88: 3f ac 0b  call  $0bac
0d8b: 3f fc 0f  call  $0ffc
0d8e: 3f ac 0b  call  $0bac
0d91: c4 43     mov   $43,a
0d93: 3f ac 0b  call  $0bac
0d96: 8d 08     mov   y,#$08
0d98: cf        mul   ya
0d99: 5d        mov   x,a
0d9a: 8d 0f     mov   y,#$0f
0d9c: f5 a4 0f  mov   a,$0fa4+x
0d9f: 3f 46 0b  call  $0b46
0da2: 3d        inc   x
0da3: dd        mov   a,y
0da4: 60        clrc
0da5: 88 10     adc   a,#$10
0da7: fd        mov   y,a
0da8: 10 f2     bpl   $0d9c
0daa: f8 33     mov   x,$33
0dac: 6f        ret

0dad: 3f ac 0b  call  $0bac
0db0: c4 54     mov   $54,a
0db2: 6f        ret

0db3: f4 a0     mov   a,$a0+x
0db5: d0 30     bne   $0de7
0db7: e7 20     mov   a,($20+x)
0db9: 68 f9     cmp   a,#$f9
0dbb: d0 2a     bne   $0de7
0dbd: 3f ac 0b  call  $0bac
0dc0: d4 a1     mov   $a1+x,a
0dc2: 3f ac 0b  call  $0bac
0dc5: d4 a0     mov   $a0+x,a
0dc7: 3f ac 0b  call  $0bac
0dca: 60        clrc
0dcb: 84 44     adc   a,$44
0dcd: 95 f0 02  adc   a,$02f0+x
0dd0: 28 7f     and   a,#$7f
0dd2: d5 80 03  mov   $0380+x,a
0dd5: 80        setc
0dd6: b5 61 03  sbc   a,$0361+x
0dd9: fb a0     mov   y,$a0+x
0ddb: 6d        push  y
0ddc: ce        pop   x
0ddd: 3f f3 0d  call  $0df3
0de0: d5 70 03  mov   $0370+x,a
0de3: dd        mov   a,y
0de4: d5 71 03  mov   $0371+x,a
0de7: 6f        ret

0de8: f5 61 03  mov   a,$0361+x
0deb: c4 11     mov   $11,a
0ded: f5 60 03  mov   a,$0360+x
0df0: c4 10     mov   $10,a
0df2: 6f        ret

0df3: ed        notc
0df4: 6b 12     ror   $12
0df6: 10 03     bpl   $0dfb
0df8: 48 ff     eor   a,#$ff
0dfa: bc        inc   a
0dfb: 8d 00     mov   y,#$00
0dfd: 9e        div   ya,x
0dfe: 2d        push  a
0dff: e8 00     mov   a,#$00
0e01: 9e        div   ya,x
0e02: ee        pop   y
0e03: f8 33     mov   x,$33
0e05: f3 12 06  bbc7  $12,$0e0e
0e08: da 14     movw  $14,ya
0e0a: ba 0e     movw  ya,$0e
0e0c: 9a 14     subw  ya,$14
0e0e: 6f        ret

0e0f: f4 61     mov   a,$61+x
0e11: f0 65     beq   $0e78
0e13: 9b 61     dec   $61+x
0e15: f0 05     beq   $0e1c
0e17: e8 02     mov   a,#$02
0e19: de 60 5c  cbne  $60+x,$0e78
0e1c: f4 80     mov   a,$80+x
0e1e: c4 17     mov   $17,a
0e20: f4 20     mov   a,$20+x
0e22: fb 21     mov   y,$21+x
0e24: da 14     movw  $14,ya
0e26: 8d 00     mov   y,#$00
0e28: f7 14     mov   a,($14)+y
0e2a: f0 1e     beq   $0e4a
0e2c: 30 07     bmi   $0e35
0e2e: fc        inc   y
0e2f: 30 40     bmi   $0e71
0e31: f7 14     mov   a,($14)+y
0e33: 10 f9     bpl   $0e2e
0e35: 68 c8     cmp   a,#$c8
0e37: f0 3f     beq   $0e78
0e39: 68 ef     cmp   a,#$ef
0e3b: f0 29     beq   $0e66
0e3d: 68 e0     cmp   a,#$e0
0e3f: 90 30     bcc   $0e71
0e41: 6d        push  y
0e42: fd        mov   y,a
0e43: ae        pop   a
0e44: 96 b1 0a  adc   a,$0ab1+y
0e47: fd        mov   y,a
0e48: 2f de     bra   $0e28
0e4a: e4 17     mov   a,$17
0e4c: f0 23     beq   $0e71
0e4e: 8b 17     dec   $17
0e50: d0 0a     bne   $0e5c
0e52: f5 31 02  mov   a,$0231+x
0e55: 2d        push  a
0e56: f5 30 02  mov   a,$0230+x
0e59: ee        pop   y
0e5a: 2f c8     bra   $0e24
0e5c: f5 41 02  mov   a,$0241+x
0e5f: 2d        push  a
0e60: f5 40 02  mov   a,$0240+x
0e63: ee        pop   y
0e64: 2f be     bra   $0e24
0e66: fc        inc   y
0e67: f7 14     mov   a,($14)+y
0e69: 2d        push  a
0e6a: fc        inc   y
0e6b: f7 14     mov   a,($14)+y
0e6d: fd        mov   y,a
0e6e: ae        pop   a
0e6f: 2f b3     bra   $0e24
0e71: e4 36     mov   a,$36
0e73: 8d 5c     mov   y,#$5c
0e75: 3f 3e 0b  call  $0b3e
0e78: f2 13     clr7  $13
0e7a: f4 a0     mov   a,$a0+x
0e7c: f0 2c     beq   $0eaa
0e7e: f4 a1     mov   a,$a1+x
0e80: f0 04     beq   $0e86
0e82: 9b a1     dec   $a1+x
0e84: 2f 24     bra   $0eaa
0e86: e2 13     set7  $13
0e88: 9b a0     dec   $a0+x
0e8a: d0 0b     bne   $0e97
0e8c: f5 81 03  mov   a,$0381+x
0e8f: d5 60 03  mov   $0360+x,a
0e92: f5 80 03  mov   a,$0380+x
0e95: 2f 10     bra   $0ea7
0e97: 60        clrc
0e98: f5 60 03  mov   a,$0360+x
0e9b: 95 70 03  adc   a,$0370+x
0e9e: d5 60 03  mov   $0360+x,a
0ea1: f5 61 03  mov   a,$0361+x
0ea4: 95 71 03  adc   a,$0371+x
0ea7: d5 61 03  mov   $0361+x,a
0eaa: 3f e8 0d  call  $0de8
0ead: f4 b1     mov   a,$b1+x
0eaf: f0 4c     beq   $0efd
0eb1: f5 b0 02  mov   a,$02b0+x
0eb4: de b0 44  cbne  $b0+x,$0efb
0eb7: f5 00 01  mov   a,$0100+x
0eba: 75 b1 02  cmp   a,$02b1+x
0ebd: d0 05     bne   $0ec4
0ebf: f5 c1 02  mov   a,$02c1+x
0ec2: 2f 0d     bra   $0ed1
0ec4: 40        setp
0ec5: bb 00     inc   $00+x
0ec7: 20        clrp
0ec8: fd        mov   y,a
0ec9: f0 02     beq   $0ecd
0ecb: f4 b1     mov   a,$b1+x
0ecd: 60        clrc
0ece: 95 c0 02  adc   a,$02c0+x
0ed1: d4 b1     mov   $b1+x,a
0ed3: f5 a0 02  mov   a,$02a0+x
0ed6: 60        clrc
0ed7: 95 a1 02  adc   a,$02a1+x
0eda: d5 a0 02  mov   $02a0+x,a
0edd: c4 12     mov   $12,a
0edf: 1c        asl   a
0ee0: 1c        asl   a
0ee1: 90 02     bcc   $0ee5
0ee3: 48 ff     eor   a,#$ff
0ee5: fd        mov   y,a
0ee6: f4 b1     mov   a,$b1+x
0ee8: 68 f1     cmp   a,#$f1
0eea: 90 05     bcc   $0ef1
0eec: 28 0f     and   a,#$0f
0eee: cf        mul   ya
0eef: 2f 04     bra   $0ef5
0ef1: cf        mul   ya
0ef2: dd        mov   a,y
0ef3: 8d 00     mov   y,#$00
0ef5: 3f 72 0f  call  $0f72
0ef8: 5f bb 0a  jmp   $0abb

0efb: bb b0     inc   $b0+x
0efd: e3 13 f8  bbs7  $13,$0ef8
0f00: 6f        ret

0f01: f2 13     clr7  $13
0f03: f4 c1     mov   a,$c1+x
0f05: f0 09     beq   $0f10
0f07: f5 e0 02  mov   a,$02e0+x
0f0a: de c0 03  cbne  $c0+x,$0f10
0f0d: 3f 7a 0f  call  $0f7a
0f10: f5 31 03  mov   a,$0331+x
0f13: fd        mov   y,a
0f14: f5 30 03  mov   a,$0330+x
0f17: da 10     movw  $10,ya
0f19: f4 91     mov   a,$91+x
0f1b: f0 0a     beq   $0f27
0f1d: f5 41 03  mov   a,$0341+x
0f20: fd        mov   y,a
0f21: f5 40 03  mov   a,$0340+x
0f24: 3f 5c 0f  call  $0f5c
0f27: f3 13 03  bbc7  $13,$0f2d
0f2a: 3f 99 12  call  $1299
0f2d: f2 13     clr7  $13
0f2f: 3f e8 0d  call  $0de8
0f32: f4 a0     mov   a,$a0+x
0f34: f0 0e     beq   $0f44
0f36: f4 a1     mov   a,$a1+x
0f38: d0 0a     bne   $0f44
0f3a: f5 71 03  mov   a,$0371+x
0f3d: fd        mov   y,a
0f3e: f5 70 03  mov   a,$0370+x
0f41: 3f 5c 0f  call  $0f5c
0f44: f4 b1     mov   a,$b1+x
0f46: f0 b5     beq   $0efd
0f48: f5 b0 02  mov   a,$02b0+x
0f4b: de b0 af  cbne  $b0+x,$0efd
0f4e: eb 45     mov   y,$45
0f50: f5 a1 02  mov   a,$02a1+x
0f53: cf        mul   ya
0f54: dd        mov   a,y
0f55: 60        clrc
0f56: 95 a0 02  adc   a,$02a0+x
0f59: 5f dd 0e  jmp   $0edd

0f5c: e2 13     set7  $13
0f5e: cb 12     mov   $12,y
0f60: 3f 05 0e  call  $0e05
0f63: 6d        push  y
0f64: eb 45     mov   y,$45
0f66: cf        mul   ya
0f67: cb 14     mov   $14,y
0f69: 8f 00 15  mov   $15,#$00
0f6c: eb 45     mov   y,$45
0f6e: ae        pop   a
0f6f: cf        mul   ya
0f70: 7a 14     addw  ya,$14
0f72: 3f 05 0e  call  $0e05
0f75: 7a 10     addw  ya,$10
0f77: da 10     movw  $10,ya
0f79: 6f        ret

0f7a: e2 13     set7  $13
0f7c: eb 45     mov   y,$45
0f7e: f5 d1 02  mov   a,$02d1+x
0f81: cf        mul   ya
0f82: dd        mov   a,y
0f83: 60        clrc
0f84: 95 d0 02  adc   a,$02d0+x
0f87: 1c        asl   a
0f88: 90 02     bcc   $0f8c
0f8a: 48 ff     eor   a,#$ff
0f8c: fb c1     mov   y,$c1+x
0f8e: cf        mul   ya
0f8f: dd        mov   a,y
0f90: 48 ff     eor   a,#$ff
0f92: eb 4e     mov   y,$4e
0f94: cf        mul   ya
0f95: f5 10 02  mov   a,$0210+x
0f98: cf        mul   ya
0f99: f5 01 03  mov   a,$0301+x
0f9c: cf        mul   ya
0f9d: dd        mov   a,y
0f9e: cf        mul   ya
0f9f: dd        mov   a,y
0fa0: d5 21 03  mov   $0321+x,a
0fa3: 6f        ret

; echo FIR presets
0fa4: 7f 00 00 00 00 00 00 00 ; 00
0fac: 58 bf db f0 fe 07 0c 0c ; 01
0fb4: 0c 21 2b 2b 13 fe f3 f9 ; 02
0fbc: 34 33 00 d9 e5 01 fc eb ; 03

; pitch table
0fc4: dw $085f
0fc6: dw $08de
0fc8: dw $0965
0fca: dw $09f4
0fcc: dw $0a8c
0fce: dw $0b2c
0fd0: dw $0bd6
0fd2: dw $0c8b
0fd4: dw $0d4a
0fd6: dw $0e14
0fd8: dw $0eea
0fda: dw $0fcd
0fdc: dw $10be

0fde: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

0fe9: ec fd 00  mov   y,$00fd
0fec: f0 fb     beq   $0fe9
0fee: 6f        ret

0fef: e8 f0     mov   a,#$f0
0ff1: c5 f1 00  mov   $00f1,a
0ff4: e8 10     mov   a,#$10
0ff6: c5 fa 00  mov   $00fa,a
0ff9: c4 47     mov   $47,a
0ffb: 6f        ret

0ffc: c4 42     mov   $42,a
0ffe: 8d 7d     mov   y,#$7d
1000: cc f2 00  mov   $00f2,y
1003: e5 f3 00  mov   a,$00f3
1006: 64 42     cmp   a,$42
1008: f0 2b     beq   $1035
100a: 28 0f     and   a,#$0f
100c: 48 ff     eor   a,#$ff
100e: f3 41 03  bbc7  $41,$1014
1011: 60        clrc
1012: 84 41     adc   a,$41
1014: c4 41     mov   $41,a
1016: 8d 04     mov   y,#$04
1018: f6 a0 10  mov   a,$10a0+y
101b: c5 f2 00  mov   $00f2,a
101e: e8 00     mov   a,#$00
1020: c5 f3 00  mov   $00f3,a
1023: fe f3     dbnz  y,$1018
1025: e4 3d     mov   a,$3d
1027: 08 20     or    a,#$20
1029: 8d 6c     mov   y,#$6c
102b: 3f 46 0b  call  $0b46
102e: e4 42     mov   a,$42
1030: 8d 7d     mov   y,#$7d
1032: 3f 46 0b  call  $0b46
1035: 1c        asl   a
1036: 1c        asl   a
1037: 1c        asl   a
1038: 48 ff     eor   a,#$ff
103a: 80        setc
103b: 88 ff     adc   a,#$ff
103d: 8d 6d     mov   y,#$6d
103f: 5f 46 0b  jmp   $0b46

1042: e8 00     mov   a,#$00
1044: 5d        mov   x,a
1045: af        mov   (x)+,a
1046: c8 e0     cmp   x,#$e0
1048: d0 fb     bne   $1045
104a: e8 00     mov   a,#$00
104c: c4 1c     mov   $1c,a
104e: e8 02     mov   a,#$02
1050: c4 1d     mov   $1d,a
1052: e8 00     mov   a,#$00
1054: fd        mov   y,a
1055: e8 00     mov   a,#$00
1057: d7 1c     mov   ($1c)+y,a
1059: fc        inc   y
105a: d0 02     bne   $105e
105c: ab 1d     inc   $1d
105e: e4 1d     mov   a,$1d
1060: 68 08     cmp   a,#$08
1062: d0 f1     bne   $1055
1064: e8 00     mov   a,#$00
1066: c4 3b     mov   $3b,a
1068: c4 3c     mov   $3c,a
106a: c4 4c     mov   $4c,a
106c: c4 71     mov   $71,a
106e: 6f        ret

106f: e4 18     mov   a,$18
1071: 44 19     eor   a,$19
1073: 5c        lsr   a
1074: 5c        lsr   a
1075: ed        notc
1076: 6b 18     ror   $18
1078: 6b 19     ror   $19
107a: 6f        ret

107b: 8d 0a     mov   y,#$0a
107d: ad 05     cmp   y,#$05
107f: f0 07     beq   $1088
1081: b0 08     bcs   $108b
1083: 69 42 41  cmp   ($41),($42)
1086: d0 11     bne   $1099
1088: e3 41 0e  bbs7  $41,$1099
108b: f6 a0 10  mov   a,$10a0+y
108e: c5 f2 00  mov   $00f2,a
1091: f6 aa 10  mov   a,$10aa+y
1094: 5d        mov   x,a
1095: e6        mov   a,(x)
1096: c5 f3 00  mov   $00f3,a
1099: dc        dec   y
109a: d0 e1     bne   $107d
109c: cb 34     mov   $34,y
109e: cb 35     mov   $35,y
10a0: 6f        ret

10a1: 2c 3c 0d  rol   $0d3c
10a4: 4d        push  x
10a5: 6c 4c 5c  ror   $5c4c
10a8: 3d        inc   x
10a9: 2d        push  a
10aa: 5c        lsr   a
10ab: 56 58 43  eor   a,$4358+y
10ae: 3f 3d 34  call  $343d
10b1: 0e 3e 40  tset1 $403e
10b4: 35 6d e8  and   a,$e86d+x
10b7: 20        clrp
10b8: cf        mul   ya
10b9: 60        clrc
10ba: 84 32     adc   a,$32
10bc: c4 32     mov   $32,a
10be: 90 07     bcc   $10c7
10c0: 69 42 41  cmp   ($41),($42)
10c3: f0 02     beq   $10c7
10c5: ab 41     inc   $41
10c7: ee        pop   y
10c8: 6f        ret

10c9: e4 3b     mov   a,$3b
10cb: f0 12     beq   $10df
10cd: cd 00     mov   x,#$00
10cf: 8f 01 36  mov   $36,#$01
10d2: f4 21     mov   a,$21+x
10d4: f0 03     beq   $10d9
10d6: 3f 01 0f  call  $0f01
10d9: 3d        inc   x
10da: 3d        inc   x
10db: 0b 36     asl   $36
10dd: d0 f3     bne   $10d2
10df: 6f        ret

10e0: e4 3b     mov   a,$3b
10e2: d0 01     bne   $10e5
10e4: 6f        ret

10e5: e4 38     mov   a,$38
10e7: fd        mov   y,a
10e8: e4 37     mov   a,$37
10ea: da 30     movw  $30,ya
10ec: e4 0c     mov   a,$0c
10ee: d0 04     bne   $10f4
10f0: 2f 54     bra   $1146
10f2: 2f 08     bra   $10fc
10f4: 8b 0c     dec   $0c
10f6: f0 04     beq   $10fc
10f8: 3f f8 12  call  $12f8
10fb: 6f        ret

10fc: 3f c4 13  call  $13c4
10ff: d0 12     bne   $1113
1101: fd        mov   y,a
1102: d0 06     bne   $110a
1104: e8 00     mov   a,#$00
1106: 3f 95 13  call  $1395
1109: 6f        ret

110a: 3f c4 13  call  $13c4
110d: 3f df 13  call  $13df
1110: 3f c4 13  call  $13c4
1113: da 16     movw  $16,ya
1115: 8d 0f     mov   y,#$0f
1117: f7 16     mov   a,($16)+y
1119: d6 20 00  mov   $0020+y,a
111c: dc        dec   y
111d: dd        mov   a,y
111e: 68 02     cmp   a,#$02
1120: b0 f5     bcs   $1117
1122: cd 02     mov   x,#$02
1124: 8f 02 36  mov   $36,#$02
1127: f4 21     mov   a,$21+x
1129: f0 0a     beq   $1135
112b: f5 11 02  mov   a,$0211+x
112e: d0 05     bne   $1135
1130: e8 00     mov   a,#$00
1132: 3f b9 0b  call  $0bb9
1135: e8 00     mov   a,#$00
1137: d4 80     mov   $80+x,a
1139: d4 90     mov   $90+x,a
113b: d4 91     mov   $91+x,a
113d: bc        inc   a
113e: d4 60     mov   $60+x,a
1140: 3d        inc   x
1141: 3d        inc   x
1142: 0b 36     asl   $36
1144: d0 e1     bne   $1127
1146: e8 00     mov   a,#$00
1148: c4 53     mov   $53,a
114a: cd 02     mov   x,#$02
114c: 8f 02 36  mov   $36,#$02
114f: d8 33     mov   $33,x
1151: f4 21     mov   a,$21+x
1153: f0 66     beq   $11bb
1155: 9b 60     dec   $60+x
1157: d0 5c     bne   $11b5
1159: 3f ac 0b  call  $0bac
115c: d0 17     bne   $1175
115e: f4 80     mov   a,$80+x
1160: f0 9a     beq   $10fc
1162: 3f 3c 0d  call  $0d3c
1165: 9b 80     dec   $80+x
1167: d0 f0     bne   $1159
1169: f5 30 02  mov   a,$0230+x
116c: d4 20     mov   $20+x,a
116e: f5 31 02  mov   a,$0231+x
1171: d4 21     mov   $21+x,a
1173: 2f e4     bra   $1159
1175: 30 20     bmi   $1197
1177: d5 00 02  mov   $0200+x,a
117a: 3f ac 0b  call  $0bac
117d: 30 18     bmi   $1197
117f: 2d        push  a
1180: 9f        xcn   a
1181: 28 07     and   a,#$07
1183: fd        mov   y,a
1184: f6 00 18  mov   a,$1800+y
1187: d5 01 02  mov   $0201+x,a
118a: ae        pop   a
118b: 28 0f     and   a,#$0f
118d: fd        mov   y,a
118e: f6 08 18  mov   a,$1808+y
1191: d5 10 02  mov   $0210+x,a
1194: 3f ac 0b  call  $0bac
1197: 68 e0     cmp   a,#$e0
1199: 90 05     bcc   $11a0
119b: 3f 4d 0b  call  $0b4d
119e: 2f b9     bra   $1159
11a0: 3f 51 0a  call  $0a51
11a3: f5 00 02  mov   a,$0200+x
11a6: d4 60     mov   $60+x,a
11a8: fd        mov   y,a
11a9: f5 01 02  mov   a,$0201+x
11ac: cf        mul   ya
11ad: dd        mov   a,y
11ae: d0 01     bne   $11b1
11b0: bc        inc   a
11b1: d4 61     mov   $61+x,a
11b3: 2f 03     bra   $11b8
11b5: 3f 0f 0e  call  $0e0f
11b8: 3f b3 0d  call  $0db3
11bb: 3d        inc   x
11bc: 3d        inc   x
11bd: 0b 36     asl   $36
11bf: d0 8e     bne   $114f
11c1: e4 48     mov   a,$48
11c3: f0 0b     beq   $11d0
11c5: ba 4a     movw  ya,$4a
11c7: 7a 46     addw  ya,$46
11c9: 6e 48 02  dbnz  $48,$11ce
11cc: ba 48     movw  ya,$48
11ce: da 46     movw  $46,ya
11d0: e4 5d     mov   a,$5d
11d2: f0 15     beq   $11e9
11d4: ba 59     movw  ya,$59
11d6: 7a 55     addw  ya,$55
11d8: da 55     movw  $55,ya
11da: ba 5b     movw  ya,$5b
11dc: 7a 57     addw  ya,$57
11de: 6e 5d 06  dbnz  $5d,$11e7
11e1: ba 5d     movw  ya,$5d
11e3: da 55     movw  $55,ya
11e5: eb 5f     mov   y,$5f
11e7: da 57     movw  $57,ya
11e9: e4 4f     mov   a,$4f
11eb: f0 0e     beq   $11fb
11ed: ba 51     movw  ya,$51
11ef: 7a 4d     addw  ya,$4d
11f1: 6e 4f 02  dbnz  $4f,$11f6
11f4: ba 4f     movw  ya,$4f
11f6: da 4d     movw  $4d,ya
11f8: 8f ff 53  mov   $53,#$ff
11fb: cd 00     mov   x,#$00
11fd: 8f 01 36  mov   $36,#$01
1200: f4 21     mov   a,$21+x
1202: f0 03     beq   $1207
1204: 3f 0e 12  call  $120e
1207: 3d        inc   x
1208: 3d        inc   x
1209: 0b 36     asl   $36
120b: d0 f3     bne   $1200
120d: 6f        ret

120e: f4 90     mov   a,$90+x
1210: f0 24     beq   $1236
1212: 09 36 53  or    ($53),($36)
1215: 9b 90     dec   $90+x
1217: d0 0a     bne   $1223
1219: e8 00     mov   a,#$00
121b: d5 00 03  mov   $0300+x,a
121e: f5 20 03  mov   a,$0320+x
1221: 2f 10     bra   $1233
1223: 60        clrc
1224: f5 00 03  mov   a,$0300+x
1227: 95 10 03  adc   a,$0310+x
122a: d5 00 03  mov   $0300+x,a
122d: f5 01 03  mov   a,$0301+x
1230: 95 11 03  adc   a,$0311+x
1233: d5 01 03  mov   $0301+x,a
1236: fb c1     mov   y,$c1+x
1238: f0 23     beq   $125d
123a: f5 e0 02  mov   a,$02e0+x
123d: de c0 1b  cbne  $c0+x,$125b
1240: 09 36 53  or    ($53),($36)
1243: f5 d0 02  mov   a,$02d0+x
1246: 10 07     bpl   $124f
1248: fc        inc   y
1249: d0 04     bne   $124f
124b: e8 80     mov   a,#$80
124d: 2f 04     bra   $1253
124f: 60        clrc
1250: 95 d1 02  adc   a,$02d1+x
1253: d5 d0 02  mov   $02d0+x,a
1256: 3f 87 0f  call  $0f87
1259: 2f 07     bra   $1262
125b: bb c0     inc   $c0+x
125d: e8 ff     mov   a,#$ff
125f: 3f 92 0f  call  $0f92
1262: f4 91     mov   a,$91+x
1264: f0 24     beq   $128a
1266: 09 36 53  or    ($53),($36)
1269: 9b 91     dec   $91+x
126b: d0 0a     bne   $1277
126d: e8 00     mov   a,#$00
126f: d5 30 03  mov   $0330+x,a
1272: f5 50 03  mov   a,$0350+x
1275: 2f 10     bra   $1287
1277: 60        clrc
1278: f5 30 03  mov   a,$0330+x
127b: 95 40 03  adc   a,$0340+x
127e: d5 30 03  mov   $0330+x,a
1281: f5 31 03  mov   a,$0331+x
1284: 95 41 03  adc   a,$0341+x
1287: d5 31 03  mov   $0331+x,a
128a: e4 36     mov   a,$36
128c: 24 53     and   a,$53
128e: f0 52     beq   $12e2
1290: f5 31 03  mov   a,$0331+x
1293: fd        mov   y,a
1294: f5 30 03  mov   a,$0330+x
1297: da 10     movw  $10,ya
1299: 7d        mov   a,x
129a: 9f        xcn   a
129b: 5c        lsr   a
129c: c4 12     mov   $12,a
129e: e5 04 00  mov   a,$0004
12a1: d0 07     bne   $12aa
12a3: e8 51     mov   a,#$51
12a5: c5 11 00  mov   $0011,a
12a8: 2f 00     bra   $12aa
12aa: eb 11     mov   y,$11
12ac: f6 e4 12  mov   a,$12e4+y
12af: 80        setc
12b0: b6 e3 12  sbc   a,$12e3+y
12b3: eb 10     mov   y,$10
12b5: cf        mul   ya
12b6: dd        mov   a,y
12b7: eb 11     mov   y,$11
12b9: 60        clrc
12ba: 96 e3 12  adc   a,$12e3+y
12bd: fd        mov   y,a
12be: f5 21 03  mov   a,$0321+x
12c1: cf        mul   ya
12c2: f5 51 03  mov   a,$0351+x
12c5: 1c        asl   a
12c6: 13 12 01  bbc0  $12,$12ca
12c9: 1c        asl   a
12ca: dd        mov   a,y
12cb: 90 03     bcc   $12d0
12cd: 48 ff     eor   a,#$ff
12cf: bc        inc   a
12d0: eb 12     mov   y,$12
12d2: 3f 3e 0b  call  $0b3e
12d5: 8d 14     mov   y,#$14
12d7: e8 00     mov   a,#$00
12d9: 9a 10     subw  ya,$10
12db: da 10     movw  $10,ya
12dd: ab 12     inc   $12
12df: 33 12 bc  bbc1  $12,$129e
12e2: 6f        ret

; pan table
12e3: db $00,$01,$03,$07,$0d,$15,$1e,$29
12eb: db $34,$42,$51,$5e,$67,$6e,$73,$77
12f3: db $7a,$7c,$7d,$7e,$7f

12f8: cd 0e     mov   x,#$0e
12fa: 8f 80 36  mov   $36,#$80
12fd: e8 7f     mov   a,#$7f
12ff: d5 01 03  mov   $0301+x,a
1302: e8 0a     mov   a,#$0a
1304: 3f 12 0c  call  $0c12
1307: d5 11 02  mov   $0211+x,a
130a: d5 81 03  mov   $0381+x,a
130d: d5 f0 02  mov   $02f0+x,a
1310: d5 80 02  mov   $0280+x,a
1313: d4 b1     mov   $b1+x,a
1315: d4 c1     mov   $c1+x,a
1317: 1d        dec   x
1318: 1d        dec   x
1319: 4b 36     lsr   $36
131b: d0 e0     bne   $12fd
131d: c4 4f     mov   $4f,a
131f: c4 5d     mov   $5d,a
1321: c4 48     mov   $48,a
1323: c4 44     mov   $44,a
1325: c4 06     mov   $06,a
1327: c4 54     mov   $54,a
1329: e8 c0     mov   a,#$c0
132b: c4 4d     mov   $4d,a
132d: c4 4e     mov   $4e,a
132f: 8f 20 47  mov   $47,#$20
1332: 8d 10     mov   y,#$10
1334: e8 7f     mov   a,#$7f
1336: 3f 46 0b  call  $0b46
1339: 8d 11     mov   y,#$11
133b: e8 7f     mov   a,#$7f
133d: 3f 46 0b  call  $0b46
1340: 8d 20     mov   y,#$20
1342: e8 7f     mov   a,#$7f
1344: 3f 46 0b  call  $0b46
1347: 8d 21     mov   y,#$21
1349: e8 7f     mov   a,#$7f
134b: 3f 46 0b  call  $0b46
134e: 8d 30     mov   y,#$30
1350: e8 7f     mov   a,#$7f
1352: 3f 46 0b  call  $0b46
1355: 8d 31     mov   y,#$31
1357: e8 7f     mov   a,#$7f
1359: 3f 46 0b  call  $0b46
135c: 8d 40     mov   y,#$40
135e: e8 7f     mov   a,#$7f
1360: 3f 46 0b  call  $0b46
1363: 8d 41     mov   y,#$41
1365: e8 7f     mov   a,#$7f
1367: 3f 46 0b  call  $0b46
136a: 8d 50     mov   y,#$50
136c: e8 7f     mov   a,#$7f
136e: 3f 46 0b  call  $0b46
1371: 8d 51     mov   y,#$51
1373: e8 7f     mov   a,#$7f
1375: 3f 46 0b  call  $0b46
1378: 8d 60     mov   y,#$60
137a: e8 7f     mov   a,#$7f
137c: 3f 46 0b  call  $0b46
137f: 8d 61     mov   y,#$61
1381: e8 7f     mov   a,#$7f
1383: 3f 46 0b  call  $0b46
1386: 8d 70     mov   y,#$70
1388: e8 7f     mov   a,#$7f
138a: 3f 46 0b  call  $0b46
138d: 8d 71     mov   y,#$71
138f: e8 7f     mov   a,#$7f
1391: 3f 46 0b  call  $0b46
1394: 6f        ret

1395: c4 3b     mov   $3b,a
1397: 1c        asl   a
1398: 5d        mov   x,a
1399: f5 17 18  mov   a,$1817+x
139c: c4 38     mov   $38,a
139e: f5 16 18  mov   a,$1816+x
13a1: c4 37     mov   $37,a
13a3: e8 00     mov   a,#$00
13a5: c4 4d     mov   $4d,a
13a7: c4 4e     mov   $4e,a
13a9: 8f 02 0c  mov   $0c,#$02
13ac: e4 35     mov   a,$35
13ae: 08 fe     or    a,#$fe
13b0: c4 35     mov   $35,a
13b2: 8d 00     mov   y,#$00
13b4: e8 00     mov   a,#$00
13b6: d6 20 00  mov   $0020+y,a
13b9: fc        inc   y
13ba: dd        mov   a,y
13bb: 68 10     cmp   a,#$10
13bd: d0 f5     bne   $13b4
13bf: e8 00     mov   a,#$00
13c1: c4 3f     mov   $3f,a
13c3: 6f        ret

13c4: e4 37     mov   a,$37
13c6: 60        clrc
13c7: 88 02     adc   a,#$02
13c9: c4 37     mov   $37,a
13cb: e4 38     mov   a,$38
13cd: 88 00     adc   a,#$00
13cf: c4 38     mov   $38,a
13d1: 8d 00     mov   y,#$00
13d3: f7 30     mov   a,($30)+y
13d5: 3a 30     incw  $30
13d7: 2d        push  a
13d8: f7 30     mov   a,($30)+y
13da: 3a 30     incw  $30
13dc: fd        mov   y,a
13dd: ae        pop   a
13de: 6f        ret

13df: da 30     movw  $30,ya
13e1: e4 30     mov   a,$30
13e3: c4 37     mov   $37,a
13e5: e4 31     mov   a,$31
13e7: c4 38     mov   $38,a
13e9: 6f        ret

13ea: e4 3b     mov   a,$3b
13ec: d0 01     bne   $13ef
13ee: 6f        ret

13ef: e4 38     mov   a,$38
13f1: fd        mov   y,a
13f2: e4 37     mov   a,$37
13f4: da 30     movw  $30,ya
13f6: e4 0c     mov   a,$0c
13f8: d0 04     bne   $13fe
13fa: 2f 54     bra   $1450
13fc: 2f 08     bra   $1406
13fe: 8b 0c     dec   $0c
1400: f0 04     beq   $1406
1402: 3f f8 12  call  $12f8
1405: 6f        ret

1406: 3f c4 13  call  $13c4
1409: d0 12     bne   $141d
140b: fd        mov   y,a
140c: d0 06     bne   $1414
140e: e8 00     mov   a,#$00
1410: 3f 95 13  call  $1395
1413: 6f        ret

1414: 3f c4 13  call  $13c4
1417: 3f df 13  call  $13df
141a: 3f c4 13  call  $13c4
141d: da 16     movw  $16,ya
141f: 8d 0f     mov   y,#$0f
1421: f7 16     mov   a,($16)+y
1423: d6 20 00  mov   $0020+y,a
1426: dc        dec   y
1427: dd        mov   a,y
1428: 68 04     cmp   a,#$04
142a: b0 f5     bcs   $1421
142c: cd 04     mov   x,#$04
142e: 8f 04 36  mov   $36,#$04
1431: f4 21     mov   a,$21+x
1433: f0 0a     beq   $143f
1435: f5 11 02  mov   a,$0211+x
1438: d0 05     bne   $143f
143a: e8 00     mov   a,#$00
143c: 3f b9 0b  call  $0bb9
143f: e8 00     mov   a,#$00
1441: d4 80     mov   $80+x,a
1443: d4 90     mov   $90+x,a
1445: d4 91     mov   $91+x,a
1447: bc        inc   a
1448: d4 60     mov   $60+x,a
144a: 3d        inc   x
144b: 3d        inc   x
144c: 0b 36     asl   $36
144e: d0 e1     bne   $1431
1450: e8 00     mov   a,#$00
1452: c4 53     mov   $53,a
1454: cd 04     mov   x,#$04
1456: 8f 04 36  mov   $36,#$04
1459: d8 33     mov   $33,x
145b: f4 21     mov   a,$21+x
145d: f0 66     beq   $14c5
145f: 9b 60     dec   $60+x
1461: d0 5c     bne   $14bf
1463: 3f ac 0b  call  $0bac
1466: d0 17     bne   $147f
1468: f4 80     mov   a,$80+x
146a: f0 9a     beq   $1406
146c: 3f 3c 0d  call  $0d3c
146f: 9b 80     dec   $80+x
1471: d0 f0     bne   $1463
1473: f5 30 02  mov   a,$0230+x
1476: d4 20     mov   $20+x,a
1478: f5 31 02  mov   a,$0231+x
147b: d4 21     mov   $21+x,a
147d: 2f e4     bra   $1463
147f: 30 20     bmi   $14a1
1481: d5 00 02  mov   $0200+x,a
1484: 3f ac 0b  call  $0bac
1487: 30 18     bmi   $14a1
1489: 2d        push  a
148a: 9f        xcn   a
148b: 28 07     and   a,#$07
148d: fd        mov   y,a
148e: f6 00 18  mov   a,$1800+y
1491: d5 01 02  mov   $0201+x,a
1494: ae        pop   a
1495: 28 0f     and   a,#$0f
1497: fd        mov   y,a
1498: f6 08 18  mov   a,$1808+y
149b: d5 10 02  mov   $0210+x,a
149e: 3f ac 0b  call  $0bac
14a1: 68 e0     cmp   a,#$e0
14a3: 90 05     bcc   $14aa
14a5: 3f 4d 0b  call  $0b4d
14a8: 2f b9     bra   $1463
14aa: 3f 51 0a  call  $0a51
14ad: f5 00 02  mov   a,$0200+x
14b0: d4 60     mov   $60+x,a
14b2: fd        mov   y,a
14b3: f5 01 02  mov   a,$0201+x
14b6: cf        mul   ya
14b7: dd        mov   a,y
14b8: d0 01     bne   $14bb
14ba: bc        inc   a
14bb: d4 61     mov   $61+x,a
14bd: 2f 03     bra   $14c2
14bf: 3f 0f 0e  call  $0e0f
14c2: 3f b3 0d  call  $0db3
14c5: 3d        inc   x
14c6: 3d        inc   x
14c7: 0b 36     asl   $36
14c9: d0 8e     bne   $1459
14cb: 5f c1 11  jmp   $11c1

14ce: e4 3c     mov   a,$3c
14d0: d0 01     bne   $14d3
14d2: 6f        ret

14d3: e4 3a     mov   a,$3a
14d5: fd        mov   y,a
14d6: e4 39     mov   a,$39
14d8: da 30     movw  $30,ya
14da: e4 0d     mov   a,$0d
14dc: d0 04     bne   $14e2
14de: 2f 57     bra   $1537
14e0: 2f 08     bra   $14ea
14e2: 8b 0d     dec   $0d
14e4: f0 04     beq   $14ea
14e6: 3f cf 15  call  $15cf
14e9: 6f        ret

14ea: 3f b4 15  call  $15b4
14ed: d0 1b     bne   $150a
14ef: fd        mov   y,a
14f0: d0 06     bne   $14f8
14f2: e8 00     mov   a,#$00
14f4: 3f 05 16  call  $1605
14f7: 6f        ret

14f8: 8b 07     dec   $07
14fa: 10 02     bpl   $14fe
14fc: c4 07     mov   $07,a
14fe: 3f b4 15  call  $15b4
1501: f8 07     mov   x,$07
1503: f0 e5     beq   $14ea
1505: 3f a9 15  call  $15a9
1508: 2f e0     bra   $14ea
150a: da 16     movw  $16,ya
150c: 8d 00     mov   y,#$00
150e: f7 16     mov   a,($16)+y
1510: d6 20 00  mov   $0020+y,a
1513: fc        inc   y
1514: f7 16     mov   a,($16)+y
1516: d6 20 00  mov   $0020+y,a
1519: cd 00     mov   x,#$00
151b: 8f 01 36  mov   $36,#$01
151e: f4 21     mov   a,$21+x
1520: f0 0a     beq   $152c
1522: f5 11 02  mov   a,$0211+x
1525: d0 05     bne   $152c
1527: e8 00     mov   a,#$00
1529: 3f b9 0b  call  $0bb9
152c: e8 00     mov   a,#$00
152e: d4 80     mov   $80+x,a
1530: d4 90     mov   $90+x,a
1532: d4 91     mov   $91+x,a
1534: bc        inc   a
1535: d4 60     mov   $60+x,a
1537: cd 00     mov   x,#$00
1539: 8f 01 36  mov   $36,#$01
153c: d8 33     mov   $33,x
153e: f4 21     mov   a,$21+x
1540: f0 66     beq   $15a8
1542: 9b 60     dec   $60+x
1544: d0 5c     bne   $15a2
1546: 3f ac 0b  call  $0bac
1549: d0 17     bne   $1562
154b: f4 80     mov   a,$80+x
154d: f0 9b     beq   $14ea
154f: 3f 3c 0d  call  $0d3c
1552: 9b 80     dec   $80+x
1554: d0 f0     bne   $1546
1556: f5 30 02  mov   a,$0230+x
1559: d4 20     mov   $20+x,a
155b: f5 31 02  mov   a,$0231+x
155e: d4 21     mov   $21+x,a
1560: 2f e4     bra   $1546
1562: 30 20     bmi   $1584
1564: d5 00 02  mov   $0200+x,a
1567: 3f ac 0b  call  $0bac
156a: 30 18     bmi   $1584
156c: 2d        push  a
156d: 9f        xcn   a
156e: 28 07     and   a,#$07
1570: fd        mov   y,a
1571: f6 00 18  mov   a,$1800+y
1574: d5 01 02  mov   $0201+x,a
1577: ae        pop   a
1578: 28 0f     and   a,#$0f
157a: fd        mov   y,a
157b: f6 08 18  mov   a,$1808+y
157e: d5 10 02  mov   $0210+x,a
1581: 3f ac 0b  call  $0bac
1584: 68 e0     cmp   a,#$e0
1586: 90 05     bcc   $158d
1588: 3f 4d 0b  call  $0b4d
158b: 2f b9     bra   $1546
158d: 3f 51 0a  call  $0a51
1590: f5 00 02  mov   a,$0200+x
1593: d4 60     mov   $60+x,a
1595: fd        mov   y,a
1596: f5 01 02  mov   a,$0201+x
1599: cf        mul   ya
159a: dd        mov   a,y
159b: d0 01     bne   $159e
159d: bc        inc   a
159e: d4 61     mov   $61+x,a
15a0: 2f 03     bra   $15a5
15a2: 3f 0f 0e  call  $0e0f
15a5: 3f b3 0d  call  $0db3
15a8: 6f        ret

15a9: da 30     movw  $30,ya
15ab: e4 30     mov   a,$30
15ad: c4 39     mov   $39,a
15af: e4 31     mov   a,$31
15b1: c4 3a     mov   $3a,a
15b3: 6f        ret

15b4: e4 39     mov   a,$39
15b6: 60        clrc
15b7: 88 02     adc   a,#$02
15b9: c4 39     mov   $39,a
15bb: e4 3a     mov   a,$3a
15bd: 88 00     adc   a,#$00
15bf: c4 3a     mov   $3a,a
15c1: 8d 00     mov   y,#$00
15c3: f7 30     mov   a,($30)+y
15c5: 3a 30     incw  $30
15c7: 2d        push  a
15c8: f7 30     mov   a,($30)+y
15ca: 3a 30     incw  $30
15cc: fd        mov   y,a
15cd: ae        pop   a
15ce: 6f        ret

15cf: cd 00     mov   x,#$00
15d1: 8f 01 36  mov   $36,#$01
15d4: e8 7f     mov   a,#$7f
15d6: d5 01 03  mov   $0301+x,a
15d9: e8 0a     mov   a,#$0a
15db: 3f 12 0c  call  $0c12
15de: d5 11 02  mov   $0211+x,a
15e1: d5 81 03  mov   $0381+x,a
15e4: d5 f0 02  mov   $02f0+x,a
15e7: d5 80 02  mov   $0280+x,a
15ea: d4 b1     mov   $b1+x,a
15ec: d4 c1     mov   $c1+x,a
15ee: c4 07     mov   $07,a
15f0: e8 c0     mov   a,#$c0
15f2: c4 4d     mov   $4d,a
15f4: c4 4e     mov   $4e,a
15f6: 8d 00     mov   y,#$00
15f8: e8 7f     mov   a,#$7f
15fa: 3f 46 0b  call  $0b46
15fd: 8d 01     mov   y,#$01
15ff: e8 7f     mov   a,#$7f
1601: 3f 46 0b  call  $0b46
1604: 6f        ret

1605: c4 3c     mov   $3c,a
1607: 1c        asl   a
1608: 5d        mov   x,a
1609: f5 17 18  mov   a,$1817+x
160c: c4 3a     mov   $3a,a
160e: f5 16 18  mov   a,$1816+x
1611: c4 39     mov   $39,a
1613: e4 35     mov   a,$35
1615: 08 01     or    a,#$01
1617: c4 35     mov   $35,a
1619: 8f 02 0d  mov   $0d,#$02
161c: e8 00     mov   a,#$00
161e: c5 20 00  mov   $0020,a
1621: c5 21 00  mov   $0021,a
1624: 6f        ret

1625: e4 4c     mov   a,$4c
1627: d0 01     bne   $162a
1629: 6f        ret

162a: e4 1f     mov   a,$1f
162c: fd        mov   y,a
162d: e4 1e     mov   a,$1e
162f: da 30     movw  $30,ya
1631: e4 70     mov   a,$70
1633: d0 04     bne   $1639
1635: 2f 4e     bra   $1685
1637: 2f 08     bra   $1641
1639: 8b 70     dec   $70
163b: f0 04     beq   $1641
163d: 3f 1d 17  call  $171d
1640: 6f        ret

1641: 3f 02 17  call  $1702
1644: d0 12     bne   $1658
1646: fd        mov   y,a
1647: d0 06     bne   $164f
1649: e8 00     mov   a,#$00
164b: 3f 51 17  call  $1751
164e: 6f        ret

164f: 3f 02 17  call  $1702
1652: 3f f7 16  call  $16f7
1655: 3f 02 17  call  $1702
1658: da 16     movw  $16,ya
165a: 8d 02     mov   y,#$02
165c: f7 16     mov   a,($16)+y
165e: d6 20 00  mov   $0020+y,a
1661: fc        inc   y
1662: f7 16     mov   a,($16)+y
1664: d6 20 00  mov   $0020+y,a
1667: cd 02     mov   x,#$02
1669: 8f 02 36  mov   $36,#$02
166c: f4 21     mov   a,$21+x
166e: f0 0a     beq   $167a
1670: f5 11 02  mov   a,$0211+x
1673: d0 05     bne   $167a
1675: e8 00     mov   a,#$00
1677: 3f b9 0b  call  $0bb9
167a: e8 00     mov   a,#$00
167c: d4 80     mov   $80+x,a
167e: d4 90     mov   $90+x,a
1680: d4 91     mov   $91+x,a
1682: bc        inc   a
1683: d4 60     mov   $60+x,a
1685: cd 02     mov   x,#$02
1687: 8f 02 36  mov   $36,#$02
168a: d8 33     mov   $33,x
168c: f4 21     mov   a,$21+x
168e: f0 66     beq   $16f6
1690: 9b 60     dec   $60+x
1692: d0 5c     bne   $16f0
1694: 3f ac 0b  call  $0bac
1697: d0 17     bne   $16b0
1699: f4 80     mov   a,$80+x
169b: f0 a4     beq   $1641
169d: 3f 3c 0d  call  $0d3c
16a0: 9b 80     dec   $80+x
16a2: d0 f0     bne   $1694
16a4: f5 30 02  mov   a,$0230+x
16a7: d4 20     mov   $20+x,a
16a9: f5 31 02  mov   a,$0231+x
16ac: d4 21     mov   $21+x,a
16ae: 2f e4     bra   $1694
16b0: 30 20     bmi   $16d2
16b2: d5 00 02  mov   $0200+x,a
16b5: 3f ac 0b  call  $0bac
16b8: 30 18     bmi   $16d2
16ba: 2d        push  a
16bb: 9f        xcn   a
16bc: 28 07     and   a,#$07
16be: fd        mov   y,a
16bf: f6 00 18  mov   a,$1800+y
16c2: d5 01 02  mov   $0201+x,a
16c5: ae        pop   a
16c6: 28 0f     and   a,#$0f
16c8: fd        mov   y,a
16c9: f6 08 18  mov   a,$1808+y
16cc: d5 10 02  mov   $0210+x,a
16cf: 3f ac 0b  call  $0bac
16d2: 68 e0     cmp   a,#$e0
16d4: 90 05     bcc   $16db
16d6: 3f 4d 0b  call  $0b4d
16d9: 2f b9     bra   $1694
16db: 3f 51 0a  call  $0a51
16de: f5 00 02  mov   a,$0200+x
16e1: d4 60     mov   $60+x,a
16e3: fd        mov   y,a
16e4: f5 01 02  mov   a,$0201+x
16e7: cf        mul   ya
16e8: dd        mov   a,y
16e9: d0 01     bne   $16ec
16eb: bc        inc   a
16ec: d4 61     mov   $61+x,a
16ee: 2f 03     bra   $16f3
16f0: 3f 0f 0e  call  $0e0f
16f3: 3f b3 0d  call  $0db3
16f6: 6f        ret

16f7: da 30     movw  $30,ya
16f9: e4 30     mov   a,$30
16fb: c4 1e     mov   $1e,a
16fd: e4 31     mov   a,$31
16ff: c4 1f     mov   $1f,a
1701: 6f        ret

1702: e4 1e     mov   a,$1e
1704: 60        clrc
1705: 88 02     adc   a,#$02
1707: c4 1e     mov   $1e,a
1709: e4 1f     mov   a,$1f
170b: 88 00     adc   a,#$00
170d: c4 1f     mov   $1f,a
170f: 8d 00     mov   y,#$00
1711: f7 30     mov   a,($30)+y
1713: 3a 30     incw  $30
1715: 2d        push  a
1716: f7 30     mov   a,($30)+y
1718: 3a 30     incw  $30
171a: fd        mov   y,a
171b: ae        pop   a
171c: 6f        ret

171d: cd 02     mov   x,#$02
171f: 8f 02 36  mov   $36,#$02
1722: e8 7f     mov   a,#$7f
1724: d5 01 03  mov   $0301+x,a
1727: e8 0a     mov   a,#$0a
1729: 3f 12 0c  call  $0c12
172c: d5 11 02  mov   $0211+x,a
172f: d5 81 03  mov   $0381+x,a
1732: d5 f0 02  mov   $02f0+x,a
1735: d5 80 02  mov   $0280+x,a
1738: d4 b1     mov   $b1+x,a
173a: d4 c1     mov   $c1+x,a
173c: e8 c0     mov   a,#$c0
173e: c4 4d     mov   $4d,a
1740: c4 4e     mov   $4e,a
1742: 8d 10     mov   y,#$10
1744: e8 7f     mov   a,#$7f
1746: 3f 46 0b  call  $0b46
1749: 8d 11     mov   y,#$11
174b: e8 7f     mov   a,#$7f
174d: 3f 46 0b  call  $0b46
1750: 6f        ret

1751: c4 4c     mov   $4c,a
1753: 1c        asl   a
1754: 5d        mov   x,a
1755: f5 17 18  mov   a,$1817+x
1758: c4 1f     mov   $1f,a
175a: f5 16 18  mov   a,$1816+x
175d: c4 1e     mov   $1e,a
175f: e4 35     mov   a,$35
1761: 08 02     or    a,#$02
1763: c4 35     mov   $35,a
1765: 8f 02 70  mov   $70,#$02
1768: e8 00     mov   a,#$00
176a: c5 22 00  mov   $0022,a
176d: c5 23 00  mov   $0023,a
1770: 6f        ret

1771: e8 aa     mov   a,#$aa
1773: c5 f4 00  mov   $00f4,a
1776: e8 bb     mov   a,#$bb
1778: c5 f5 00  mov   $00f5,a
177b: e8 dd     mov   a,#$dd
177d: c5 f7 00  mov   $00f7,a
1780: e4 f7     mov   a,$f7
1782: 68 cc     cmp   a,#$cc
1784: d0 fa     bne   $1780
1786: 3f de 17  call  $17de
1789: c4 1c     mov   $1c,a
178b: 3f e7 17  call  $17e7
178e: c4 1d     mov   $1d,a
1790: e8 cc     mov   a,#$cc
1792: c5 f4 00  mov   $00f4,a
1795: e8 dd     mov   a,#$dd
1797: c5 f5 00  mov   $00f5,a
179a: e8 80     mov   a,#$80
179c: c5 1b 00  mov   $001b,a
179f: 8d 00     mov   y,#$00
17a1: 3f f0 17  call  $17f0
17a4: 65 1b 00  cmp   a,$001b
17a7: d0 04     bne   $17ad
17a9: 2f 18     bra   $17c3
17ab: 2f 14     bra   $17c1
17ad: bc        inc   a
17ae: bc        inc   a
17af: bc        inc   a
17b0: bc        inc   a
17b1: 65 1b 00  cmp   a,$001b
17b4: d0 04     bne   $17ba
17b6: 2f b9     bra   $1771
17b8: 2f 07     bra   $17c1
17ba: bc        inc   a
17bb: 65 1b 00  cmp   a,$001b
17be: d0 01     bne   $17c1
17c0: 6f        ret

17c1: 2f de     bra   $17a1
17c3: 3f de 17  call  $17de
17c6: d7 1c     mov   ($1c)+y,a
17c8: fc        inc   y
17c9: 3f e7 17  call  $17e7
17cc: d7 1c     mov   ($1c)+y,a
17ce: fc        inc   y
17cf: d0 02     bne   $17d3
17d1: ab 1d     inc   $1d
17d3: ab 1b     inc   $1b
17d5: e5 1b 00  mov   a,$001b
17d8: c4 f7     mov   $f7,a
17da: ab 1b     inc   $1b
17dc: 2f c3     bra   $17a1
17de: e5 f4 00  mov   a,$00f4
17e1: 65 f4 00  cmp   a,$00f4
17e4: d0 f8     bne   $17de
17e6: 6f        ret

17e7: e5 f5 00  mov   a,$00f5
17ea: 65 f5 00  cmp   a,$00f5
17ed: d0 f8     bne   $17e7
17ef: 6f        ret

17f0: e5 f7 00  mov   a,$00f7
17f3: 65 f7 00  cmp   a,$00f7
17f6: d0 f8     bne   $17f0
17f8: 6f        ret
