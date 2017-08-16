; Otogirisou SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Otogirisou (1992)
; * Dragon Quest 5 (1992)
; * Torneco no Daibouken: Fushigi no Dungeon (1993)
; * Kamaitachi no Yoru (1994)

; DSP reg initialization table
078e: db $6c,$f0 ; DSP FLG reset
0790: db $7d,$01 ; echo delay 16ms
0792: db $6d,$f7 ; echo start addr $f700
0794: db $1c,$7f ; main volume R #$7f
0796: db $0c,$7f ; main volume L #$7f
0798: db $3c,$00 ; echo volume R zero
079a: db $2c,$00 ; echo volume L zero
079c: db $4c,$00 ; key on
079e: db $5c,$00 ; key off
07a0: db $6c,$23 ; DSP FLG echo on, noise clock 25 Hz
07a2: db $0d,$00 ; echo feedback zero
07a4: db $2d,$00 ; pitch modulation off
07a6: db $3d,$00 ; noise off
07a8: db $4d,$00 ; echo off
07aa: db $5d,$07 ; sample dir $0700
07ac: db $0d,$00 ; echo feedback zero
07ae: db $00     ; end of table

; vcmd dispatch table
07af: dw $13ff  ; dd - set release rate
07b1: dw $13d8  ; de - set ADSR and release rate
07b3: dw $12e3  ; df
07b5: dw $12b0  ; e0 - CPU related? conditional jump
07b7: dw $12a2  ; e1
07b9: dw $12ea  ; e2
07bb: dw $12ff  ; e3
07bd: dw $1303  ; e4
07bf: dw $1307  ; e5
07c1: dw $1317  ; e6 - volume fade
07c3: dw $1329  ; e7
07c5: dw $1342  ; e8 - pan fade
07c7: dw $1380  ; e9
07c9: dw $1386  ; ea - jump
07cb: dw $139c  ; eb - tempo
07cd: dw $13a7  ; ec - set duration rate
07cf: dw $13ae  ; ed - set channel master volume
07d1: dw $13b4  ; ee - set panpot
07d3: dw $13ba  ; ef - set ADSR1/2 param
07d5: dw $1413  ; f0 - set patch
07d7: dw $1499  ; f1
07d9: dw $14be  ; f2 - duration copy on
07db: dw $14c7  ; f3 - duration copy off
07dd: dw $14d0  ; f4 - repeat once again
07df: dw $14eb  ; f5 - conditional loop
07e1: dw $14f2  ; f6 - set volume
07e3: dw $14f8  ; f7
07e5: dw $151b  ; f8 - call subroutine
07e7: dw $155d  ; f9 - return from subroutine
07e9: dw $1576  ; fa - key shift (transpose)
07eb: dw $157d  ; fb - pitch slide
07ed: dw $1597  ; fc
07ef: dw $159b  ; fd
07f1: dw $159f  ; fe

07f3: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
07fb: dw $0021
07fd: dw $0023
08ff: dw $0025
0801: dw $0027
0803: dw $0029
0805: dw $002c
0807: dw $002f
0809: dw $0031
080b: dw $0034
080d: dw $0037
080f: dw $003b
0811: dw $003e
0813: dw $0042
0815: dw $0046
0817: dw $004a
0819: dw $004f
081b: dw $0053
081d: dw $0058
081f: dw $005e
0821: dw $0063
0823: dw $0069
0825: dw $006f
0827: dw $0076
0829: dw $007d
082b: dw $0084
082d: dw $008c
082f: dw $0094
0831: dw $009d
0833: dw $00a6
0835: dw $00b0
0837: dw $00bb
0839: dw $00c6
083b: dw $00d1
083d: dw $00de
083f: dw $00eb
0841: dw $00f9
0843: dw $0107
0845: dw $0117
0847: dw $0128
0849: dw $0139
084b: dw $014c
084d: dw $0160
084f: dw $0175
0851: dw $018b
0853: dw $01a2
0855: dw $01bb
0857: dw $01d5
0859: dw $01f1
085b: dw $020e
085d: dw $022e
085f: dw $0250
0861: dw $0272
0863: dw $0298
0865: dw $02c0
0867: dw $02ea
0869: dw $0316
086b: dw $0344
086d: dw $0376
086f: dw $03aa
0871: dw $03e2
0873: dw $041c
0875: dw $045c
0877: dw $04a0
0879: dw $04e4
087b: dw $0530
087d: dw $0580
087f: dw $05d4
0881: dw $0632
0883: dw $0688
0885: dw $06ec
0887: dw $0754
0889: dw $07c4
088b: dw $0838
088d: dw $08b8
088f: dw $0940
0891: dw $09c8
0893: dw $0a60
0895: dw $0b00
0897: dw $0ba8
0899: dw $0c58
089b: dw $0d10
089d: dw $0dd8
089f: dw $0ea8
08a1: dw $0f88
08a3: dw $1070
08a5: dw $1170
08a7: dw $1280
08a9: dw $1390
08ab: dw $14c0
08ad: dw $1600
08af: dw $1750
08b1: dw $18b0
08b3: dw $1a20
08b5: dw $1bb0
08b7: dw $1d50
08b9: dw $1f10
08bb: dw $20e0
08bd: dw $22e0
08bf: dw $2500
08c1: dw $2720
08c3: dw $2980
08c5: dw $2c00
08c7: dw $2ea0
08c9: dw $3160
08cb: dw $3440
08cd: dw $3aa0

08cf: db $d1,$08
08d1: db $00,$99
08d3: db $18,$00
08d5: db $cc,$30
08d7: db $18,$18
08d9: db $24,$0c
08db: db $24,$0c
08dd: db $00,$99
08df: db $18,$18
08e1: db $60,$18
08e3: db $18,$00
08e5: db $cc,$ff

08e7: db $e9,$08
08e9: db $04,$02
08eb: db $46,$14
08ed: db $3c,$01
08ef: db $32,$01
08f1: db $28,$01
08f3: db $1e,$01
08f5: db $14,$01
08f7: db $0a,$01
08f9: db $ff

08fa: dw $091e  ; 00
08fc: dw $0921  ; 01
08fe: dw $0924  ; 02
0900: dw $0927  ; 03
0902: dw $092a  ; 04
0904: dw $092d  ; 05
0906: dw $0930  ; 06
0908: dw $0944  ; 07
090a: dw $095d  ; 08
090c: dw $0966  ; 09
090e: dw $096f  ; 0a
0910: dw $0974  ; 0b
0912: dw $0979  ; 0c
0914: dw $097c  ; 0d
0916: dw $097f  ; 0e
0918: dw $0988  ; 0f
091a: dw $0991  ; 10
091c: dw $0993  ; 11

091e: db $05,$00,$ff ; 00
0921: db $05,$01,$ff ; 01
0924: db $05,$02,$ff ; 02
0927: db $05,$03,$ff ; 03
092a: db $05,$04,$ff ; 04
092d: db $05,$05,$ff ; 05
0930: db $14,$00,$00,$13,$7f,$7f,$17,$00,$16,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$ff ; 06
0944: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff,$16,$46,$17,$05,$22,$32,$42,$52,$62,$72,$82,$92,$14,$50,$50,$ff ; 07
095d: db $29,$39,$49,$59,$69,$79,$89,$99,$ff ; 08
0966: db $27,$37,$47,$57,$67,$77,$87,$97,$ff ; 09
096f: db $29,$48,$69,$88,$ff ; 0a
0974: db $39,$58,$79,$98,$ff ; 0b
0979: db $21,$b4,$ff ; 0c
097c: db $21,$32,$ff ; 0d
097f: db $21,$64,$31,$46,$41,$46,$51,$46,$ff ; 0e
0988: db $21,$32,$31,$14,$41,$14,$51,$14,$ff ; 0f
0991: db $11,$ff ; 10
0993: db $12,$ff ; 11

; TODO: unknown table (related to vcmd E2)
0995: dw $0999  ; 00
0997: dw $09a8  ; 01

0999: db $0c    ; 00
099a: db $04,$00,$1e,$00,$04,$0c,$04,$00,$04,$f4,$04,$00
09a6: db $01,$80
09a8: db $22    ; 01
09a9: db $02,$00,$01,$14,$01,$1e,$01,$28,$01,$1e,$01,$14,$01,$0a,$01,$00
09b9: db $01,$f6,$01,$ec,$01,$e2,$01,$d8,$01,$e2,$01,$ec,$01,$f6,$01,$00
09c9: db $01,$00
09cb: db $01,$80

09cd: c0        di
09ce: cd cf     mov   x,#$cf
09d0: bd        mov   sp,x
09d1: 3f cd 0d  call  $0dcd
09d4: 40        setp
09d5: 3f f8 0c  call  $0cf8
09d8: 3f dd 09  call  $09dd
09db: 2f f7     bra   $09d4

09dd: 40        setp
09de: 68 00     cmp   a,#$00
09e0: f0 03     beq   $09e5
09e2: 5f 92 0a  jmp   $0a92
09e5: 40        setp
09e6: c4 8e     mov   $8e,a
09e8: 3f f8 0c  call  $0cf8
09eb: 90 01     bcc   $09ee
09ed: 6f        ret

09ee: c4 88     mov   $88,a
09f0: 5d        mov   x,a
09f1: f5 67 05  mov   a,$0567+x
09f4: 68 ff     cmp   a,#$ff
09f6: f0 1f     beq   $0a17
09f8: 3f bd 1f  call  $1fbd
09fb: f7 96     mov   a,($96)+y
09fd: 28 e0     and   a,#$e0
09ff: 68 e0     cmp   a,#$e0
0a01: 0d        push  psw
0a02: f7 96     mov   a,($96)+y
0a04: 8e        pop   psw
0a05: f0 03     beq   $0a0a
0a07: 60        clrc
0a08: 88 20     adc   a,#$20
0a0a: 78 00 8e  cmp   $8e,#$00
0a0d: f0 02     beq   $0a11
0a0f: 08 10     or    a,#$10
0a11: d7 96     mov   ($96)+y,a
0a13: 3f b0 0d  call  $0db0
0a16: 6f        ret

0a17: 3f a3 0d  call  $0da3
0a1a: 3f f8 0c  call  $0cf8
0a1d: b0 72     bcs   $0a91
0a1f: 2d        push  a
0a20: 3f f8 0c  call  $0cf8
0a23: fd        mov   y,a
0a24: ae        pop   a
0a25: b0 6a     bcs   $0a91
0a27: 80        setc
0a28: a8 07     sbc   a,#$07
0a2a: b0 01     bcs   $0a2d
0a2c: dc        dec   y
0a2d: 3f 69 1f  call  $1f69
0a30: 90 04     bcc   $0a36
0a32: 3f b0 0d  call  $0db0
0a35: 6f        ret

0a36: 3f a3 0d  call  $0da3
0a39: dd        mov   a,y
0a3a: f8 88     mov   x,$88
0a3c: d5 67 05  mov   $0567+x,a
0a3f: 5d        mov   x,a
0a40: 40        setp
0a41: c4 89     mov   $89,a
0a43: e8 00     mov   a,#$00
0a45: 0b 89     asl   $89
0a47: 3c        rol   a
0a48: 0b 89     asl   $89
0a4a: 3c        rol   a
0a4b: 60        clrc
0a4c: 88 07     adc   a,#$07
0a4e: c4 8a     mov   $8a,a
0a50: 8d 00     mov   y,#$00
0a52: f7 89     mov   a,($89)+y
0a54: c4 84     mov   $84,a
0a56: fc        inc   y
0a57: f7 89     mov   a,($89)+y
0a59: c4 85     mov   $85,a
0a5b: 8f 2f 8b  mov   $8b,#$2f
0a5e: 8f 06 8c  mov   $8c,#$06
0a61: 7d        mov   a,x
0a62: 8d 08     mov   y,#$08
0a64: cf        mul   ya
0a65: 7a 8b     addw  ya,$8b
0a67: da 8b     movw  $8b,ya
0a69: 8d 00     mov   y,#$00
0a6b: f7 8b     mov   a,($8b)+y
0a6d: c4 86     mov   $86,a
0a6f: fc        inc   y
0a70: f7 8b     mov   a,($8b)+y
0a72: c4 87     mov   $87,a
0a74: 8d 07     mov   y,#$07
0a76: f7 8b     mov   a,($8b)+y
0a78: 28 e0     and   a,#$e0
0a7a: 68 e0     cmp   a,#$e0
0a7c: 0d        push  psw
0a7d: f7 8b     mov   a,($8b)+y
0a7f: 8e        pop   psw
0a80: f0 03     beq   $0a85
0a82: 60        clrc
0a83: 88 20     adc   a,#$20
0a85: 78 00 8e  cmp   $8e,#$00
0a88: f0 02     beq   $0a8c
0a8a: 08 10     or    a,#$10
0a8c: d7 8b     mov   ($8b)+y,a
0a8e: 8f 01 8d  mov   $8d,#$01
0a91: 6f        ret

0a92: 68 01     cmp   a,#$01
0a94: d0 2b     bne   $0ac1
0a96: 3f f8 0c  call  $0cf8
0a99: 65 8d 21  cmp   a,$218d
0a9c: b0 0d     bcs   $0aab
0a9e: 3f 10 16  call  $1610
0aa1: b0 15     bcs   $0ab8
0aa3: fd        mov   y,a
0aa4: 2d        push  a
0aa5: 3f 9d 20  call  $209d
0aa8: ae        pop   a
0aa9: 90 04     bcc   $0aaf
0aab: 3f b0 0d  call  $0db0
0aae: 6f        ret

0aaf: 2d        push  a
0ab0: 3f a3 0d  call  $0da3
0ab3: ae        pop   a
0ab4: 3f be 0e  call  $0ebe
0ab7: 6f        ret

0ab8: 2d        push  a
0ab9: 3f a3 0d  call  $0da3
0abc: ee        pop   y
0abd: 3f 37 21  call  $2137
0ac0: 6f        ret

0ac1: 68 02     cmp   a,#$02
0ac3: d0 0c     bne   $0ad1
0ac5: 3f f8 0c  call  $0cf8
0ac8: 3f 00 1c  call  $1c00
0acb: b0 03     bcs   $0ad0
0acd: 3f 3f 1e  call  $1e3f
0ad0: 6f        ret

0ad1: 68 03     cmp   a,#$03
0ad3: d0 4f     bne   $0b24
0ad5: 3f f8 0c  call  $0cf8
0ad8: c4 a2     mov   $a2,a
0ada: 3f f8 0c  call  $0cf8
0add: c4 a3     mov   $a3,a
0adf: e4 a2     mov   a,$a2
0ae1: 65 8d 21  cmp   a,$218d
0ae4: b0 1c     bcs   $0b02
0ae6: 3f 10 16  call  $1610
0ae9: 90 0f     bcc   $0afa
0aeb: 2d        push  a
0aec: 3f a3 0d  call  $0da3
0aef: ee        pop   y
0af0: 6d        push  y
0af1: 3f 37 21  call  $2137
0af4: ae        pop   a
0af5: 3f 00 1c  call  $1c00
0af8: 2f 19     bra   $0b13
0afa: fd        mov   y,a
0afb: 2d        push  a
0afc: 3f 9d 20  call  $209d
0aff: ae        pop   a
0b00: 90 04     bcc   $0b06
0b02: 3f b0 0d  call  $0db0
0b05: 6f        ret

0b06: 2d        push  a
0b07: 3f a3 0d  call  $0da3
0b0a: ae        pop   a
0b0b: 3f be 0e  call  $0ebe
0b0e: ec 66 05  mov   y,$0566
0b11: 30 10     bmi   $0b23
0b13: 40        setp
0b14: e4 a3     mov   a,$a3
0b16: d6 35 05  mov   $0535+y,a
0b19: e8 80     mov   a,#$80
0b1b: d6 3d 05  mov   $053d+y,a
0b1e: e8 00     mov   a,#$00
0b20: d6 15 05  mov   $0515+y,a
0b23: 6f        ret

0b24: 68 04     cmp   a,#$04
0b26: d0 27     bne   $0b4f
0b28: 3f f8 0c  call  $0cf8
0b2b: c4 a2     mov   $a2,a
0b2d: 3f f8 0c  call  $0cf8
0b30: c4 a3     mov   $a3,a
0b32: e4 a2     mov   a,$a2
0b34: 3f 00 1c  call  $1c00
0b37: b0 15     bcs   $0b4e
0b39: f6 45 05  mov   a,$0545+y
0b3c: 08 01     or    a,#$01
0b3e: d6 45 05  mov   $0545+y,a
0b41: e4 a3     mov   a,$a3
0b43: 48 ff     eor   a,#$ff
0b45: bc        inc   a
0b46: d6 35 05  mov   $0535+y,a
0b49: e8 80     mov   a,#$80
0b4b: d6 3d 05  mov   $053d+y,a
0b4e: 6f        ret

0b4f: 68 05     cmp   a,#$05
0b51: d0 2a     bne   $0b7d
0b53: 3f f8 0c  call  $0cf8
0b56: 3f 00 1c  call  $1c00
0b59: b0 0d     bcs   $0b68
0b5b: 6d        push  y
0b5c: 3f f8 0c  call  $0cf8
0b5f: ee        pop   y
0b60: 68 12     cmp   a,#$12
0b62: b0 03     bcs   $0b67
0b64: 3f 6c 1c  call  $1c6c
0b67: 6f        ret

0b68: 3f f8 0c  call  $0cf8
0b6b: 8d 00     mov   y,#$00
0b6d: 68 10     cmp   a,#$10
0b6f: 90 f6     bcc   $0b67
0b71: 68 fe     cmp   a,#$fe
0b73: f0 04     beq   $0b79
0b75: 68 20     cmp   a,#$20
0b77: b0 ee     bcs   $0b67
0b79: 3f 6c 1c  call  $1c6c
0b7c: 6f        ret

0b7d: 68 06     cmp   a,#$06
0b7f: d0 08     bne   $0b89
0b81: 3f f8 0c  call  $0cf8
0b84: 5d        mov   x,a
0b85: 3f ad 1f  call  $1fad
0b88: 6f        ret

0b89: 68 07     cmp   a,#$07
0b8b: d0 0b     bne   $0b98
0b8d: e8 80     mov   a,#$80
0b8f: c5 64 05  mov   $0564,a
0b92: e8 50     mov   a,#$50
0b94: c5 65 05  mov   $0565,a
0b97: 6f        ret

0b98: 68 08     cmp   a,#$08
0b9a: d0 17     bne   $0bb3
0b9c: e8 00     mov   a,#$00
0b9e: c5 f4 00  mov   $00f4,a
0ba1: 3f a3 0d  call  $0da3
0ba4: e5 f4 00  mov   a,$00f4
0ba7: 65 f4 00  cmp   a,$00f4
0baa: d0 f8     bne   $0ba4
0bac: 68 00     cmp   a,#$00
0bae: d0 f4     bne   $0ba4
0bb0: 5f cd 09  jmp   $09cd
0bb3: 68 09     cmp   a,#$09
0bb5: d0 1c     bne   $0bd3
0bb7: 58 80 92  eor   $92,#$80
0bba: 3f f8 0c  call  $0cf8
0bbd: 3f 00 1c  call  $1c00
0bc0: b0 09     bcs   $0bcb
0bc2: e4 92     mov   a,$92
0bc4: 16 4d 05  or    a,$054d+y
0bc7: c5 f5 00  mov   $00f5,a
0bca: 6f        ret

0bcb: e4 92     mov   a,$92
0bcd: 08 7f     or    a,#$7f
0bcf: c5 f5 00  mov   $00f5,a
0bd2: 6f        ret

0bd3: 68 0a     cmp   a,#$0a
0bd5: d0 04     bne   $0bdb
0bd7: 3f 4e 20  call  $204e
0bda: 6f        ret

0bdb: 68 0b     cmp   a,#$0b
0bdd: d0 03     bne   $0be2
0bdf: 5f e5 09  jmp   $09e5
0be2: 68 0c     cmp   a,#$0c
0be4: d0 4a     bne   $0c30
0be6: 3f f8 0c  call  $0cf8
0be9: c4 a2     mov   $a2,a
0beb: 3f f8 0c  call  $0cf8
0bee: c4 a3     mov   $a3,a
0bf0: e4 a2     mov   a,$a2
0bf2: 65 8d 21  cmp   a,$218d
0bf5: b0 0d     bcs   $0c04
0bf7: 3f 10 16  call  $1610
0bfa: b0 1c     bcs   $0c18
0bfc: fd        mov   y,a
0bfd: 2d        push  a
0bfe: 3f 9d 20  call  $209d
0c01: ae        pop   a
0c02: 90 04     bcc   $0c08
0c04: 3f b0 0d  call  $0db0
0c07: 6f        ret

0c08: 2d        push  a
0c09: 3f a3 0d  call  $0da3
0c0c: ae        pop   a
0c0d: 3f be 0e  call  $0ebe
0c10: 40        setp
0c11: ec 66 05  mov   y,$0566
0c14: 10 10     bpl   $0c26
0c16: 2f 17     bra   $0c2f
0c18: fd        mov   y,a
0c19: 3f 37 21  call  $2137
0c1c: 3f a3 0d  call  $0da3
0c1f: e4 a2     mov   a,$a2
0c21: 3f 00 1c  call  $1c00
0c24: b0 09     bcs   $0c2f
0c26: e4 a3     mov   a,$a3
0c28: 68 12     cmp   a,#$12
0c2a: b0 03     bcs   $0c2f
0c2c: 3f 6c 1c  call  $1c6c
0c2f: 6f        ret

0c30: 68 0d     cmp   a,#$0d
0c32: d0 15     bne   $0c49
0c34: 3f f8 0c  call  $0cf8
0c37: 3f 00 1c  call  $1c00
0c3a: cb a2     mov   $a2,y
0c3c: 3f f8 0c  call  $0cf8
0c3f: c4 a3     mov   $a3,a
0c41: 3f f8 0c  call  $0cf8
0c44: c4 a4     mov   $a4,a
0c46: 5f b6 0c  jmp   $0cb6
0c49: 68 0e     cmp   a,#$0e
0c4b: d0 4b     bne   $0c98
0c4d: 3f f8 0c  call  $0cf8
0c50: c4 a2     mov   $a2,a
0c52: 3f f8 0c  call  $0cf8
0c55: c4 a3     mov   $a3,a
0c57: 3f f8 0c  call  $0cf8
0c5a: c4 a4     mov   $a4,a
0c5c: e4 a2     mov   a,$a2
0c5e: 65 8d 21  cmp   a,$218d
0c61: b0 0d     bcs   $0c70
0c63: 3f 10 16  call  $1610
0c66: b0 1c     bcs   $0c84
0c68: fd        mov   y,a
0c69: 2d        push  a
0c6a: 3f 9d 20  call  $209d
0c6d: ae        pop   a
0c6e: 90 04     bcc   $0c74
0c70: 3f b0 0d  call  $0db0
0c73: 6f        ret

0c74: 2d        push  a
0c75: 3f a3 0d  call  $0da3
0c78: ae        pop   a
0c79: 3f be 0e  call  $0ebe
0c7c: e5 66 05  mov   a,$0566
0c7f: 40        setp
0c80: c4 a2     mov   $a2,a
0c82: 2f 32     bra   $0cb6
0c84: fd        mov   y,a
0c85: 3f 37 21  call  $2137
0c88: 3f a3 0d  call  $0da3
0c8b: e4 a2     mov   a,$a2
0c8d: 3f 00 1c  call  $1c00
0c90: b0 05     bcs   $0c97
0c92: cb a2     mov   $a2,y
0c94: 5f b6 0c  jmp   $0cb6
0c97: 6f        ret

0c98: 68 0f     cmp   a,#$0f
0c9a: d0 19     bne   $0cb5
0c9c: 3f f8 0c  call  $0cf8
0c9f: fd        mov   y,a
0ca0: f6 67 05  mov   a,$0567+y
0ca3: 68 ff     cmp   a,#$ff
0ca5: f0 0d     beq   $0cb4
0ca7: 3f bd 1f  call  $1fbd
0caa: f7 96     mov   a,($96)+y
0cac: 68 20     cmp   a,#$20
0cae: 90 04     bcc   $0cb4
0cb0: a8 20     sbc   a,#$20
0cb2: d7 96     mov   ($96)+y,a
0cb4: 6f        ret

0cb5: 6f        ret

0cb6: 40        setp
0cb7: eb a2     mov   y,$a2
0cb9: 30 3c     bmi   $0cf7
0cbb: f6 25 05  mov   a,$0525+y
0cbe: f0 37     beq   $0cf7
0cc0: e4 a3     mov   a,$a3
0cc2: 68 7f     cmp   a,#$7f
0cc4: f0 15     beq   $0cdb
0cc6: 20        clrp
0cc7: c4 c0     mov   $c0,a
0cc9: cd 00     mov   x,#$00
0ccb: dd        mov   a,y
0ccc: 75 dd 03  cmp   a,$03dd+x
0ccf: d0 04     bne   $0cd5
0cd1: e4 c0     mov   a,$c0
0cd3: d4 31     mov   $31+x,a
0cd5: 3d        inc   x
0cd6: 3d        inc   x
0cd7: c8 18     cmp   x,#$18
0cd9: 90 f0     bcc   $0ccb
0cdb: 40        setp
0cdc: e4 a4     mov   a,$a4
0cde: 68 80     cmp   a,#$80
0ce0: f0 15     beq   $0cf7
0ce2: 20        clrp
0ce3: c4 c0     mov   $c0,a
0ce5: cd 00     mov   x,#$00
0ce7: dd        mov   a,y
0ce8: 75 dd 03  cmp   a,$03dd+x
0ceb: d0 04     bne   $0cf1
0ced: e4 c0     mov   a,$c0
0cef: d4 48     mov   $48+x,a
0cf1: 3d        inc   x
0cf2: 3d        inc   x
0cf3: c8 18     cmp   x,#$18
0cf5: 90 f0     bcc   $0ce7
0cf7: 6f        ret

0cf8: 40        setp
0cf9: e5 f4 00  mov   a,$00f4
0cfc: 65 f4 00  cmp   a,$00f4
0cff: d0 f7     bne   $0cf8
0d01: c4 94     mov   $94,a
0d03: 28 80     and   a,#$80
0d05: 44 93     eor   a,$93
0d07: d0 3c     bne   $0d45
0d09: e4 94     mov   a,$94
0d0b: 28 03     and   a,#$03
0d0d: 64 91     cmp   a,$91
0d0f: d0 05     bne   $0d16
0d11: 3f bb 0d  call  $0dbb
0d14: 2f e2     bra   $0cf8
0d16: e4 91     mov   a,$91
0d18: bc        inc   a
0d19: 68 04     cmp   a,#$04
0d1b: d0 02     bne   $0d1f
0d1d: e8 01     mov   a,#$01
0d1f: c4 91     mov   $91,a
0d21: 5d        mov   x,a
0d22: f5 f4 00  mov   a,$00f4+x
0d25: 75 f4 00  cmp   a,$00f4+x
0d28: d0 f8     bne   $0d22
0d2a: 2d        push  a
0d2b: e4 91     mov   a,$91
0d2d: c5 f4 00  mov   $00f4,a
0d30: e4 94     mov   a,$94
0d32: 35 f4 07  and   a,$07f4+x
0d35: f0 03     beq   $0d3a
0d37: ae        pop   a
0d38: 60        clrc
0d39: 6f        ret

0d3a: ae        pop   a
0d3b: 3f 4d 0d  call  $0d4d
0d3e: b0 0b     bcs   $0d4b
0d40: 3f bb 0d  call  $0dbb
0d43: 2f b3     bra   $0cf8
0d45: e4 93     mov   a,$93
0d47: 48 80     eor   a,#$80
0d49: c4 93     mov   $93,a
0d4b: 80        setc
0d4c: 6f        ret

0d4d: 40        setp
0d4e: f8 8d     mov   x,$8d
0d50: c8 00     cmp   x,#$00
0d52: d0 02     bne   $0d56
0d54: 80        setc
0d55: 6f        ret

0d56: c8 03     cmp   x,#$03
0d58: b0 2b     bcs   $0d85
0d5a: 4d        push  x
0d5b: ee        pop   y
0d5c: fc        inc   y
0d5d: d7 89     mov   ($89)+y,a
0d5f: c8 02     cmp   x,#$02
0d61: d0 3c     bne   $0d9f
0d63: 8d 00     mov   y,#$00
0d65: f7 89     mov   a,($89)+y
0d67: c4 8f     mov   $8f,a
0d69: fc        inc   y
0d6a: f7 89     mov   a,($89)+y
0d6c: c4 90     mov   $90,a
0d6e: fc        inc   y
0d6f: f7 89     mov   a,($89)+y
0d71: 5d        mov   x,a
0d72: fc        inc   y
0d73: f7 89     mov   a,($89)+y
0d75: fd        mov   y,a
0d76: 7d        mov   a,x
0d77: 7a 8f     addw  ya,$8f
0d79: 5d        mov   x,a
0d7a: dd        mov   a,y
0d7b: 8d 03     mov   y,#$03
0d7d: d7 89     mov   ($89)+y,a
0d7f: 7d        mov   a,x
0d80: dc        dec   y
0d81: d7 89     mov   ($89)+y,a
0d83: 2f 1a     bra   $0d9f
0d85: c8 08     cmp   x,#$08
0d87: b0 07     bcs   $0d90
0d89: 4d        push  x
0d8a: ee        pop   y
0d8b: dc        dec   y
0d8c: d7 8b     mov   ($8b)+y,a
0d8e: 2f 0f     bra   $0d9f
0d90: cd 00     mov   x,#$00
0d92: c7 84     mov   ($84+x),a
0d94: 3a 84     incw  $84
0d96: 1a 86     decw  $86
0d98: d0 07     bne   $0da1
0d9a: 8f 00 8d  mov   $8d,#$00
0d9d: 2f 02     bra   $0da1
0d9f: ab 8d     inc   $8d
0da1: 60        clrc
0da2: 6f        ret

0da3: 40        setp
0da4: e4 92     mov   a,$92
0da6: 48 80     eor   a,#$80
0da8: c4 92     mov   $92,a
0daa: 08 40     or    a,#$40
0dac: c5 f5 00  mov   $00f5,a
0daf: 6f        ret

0db0: 40        setp
0db1: e4 92     mov   a,$92
0db3: 48 80     eor   a,#$80
0db5: c4 92     mov   $92,a
0db7: c5 f5 00  mov   $00f5,a
0dba: 6f        ret

0dbb: 20        clrp
0dbc: e4 fd     mov   a,$fd
0dbe: f0 0b     beq   $0dcb
0dc0: 2d        push  a
0dc1: 3f 0e 11  call  $110e
0dc4: ae        pop   a
0dc5: 9c        dec   a
0dc6: d0 f8     bne   $0dc0
0dc8: 3f b3 15  call  $15b3
0dcb: 40        setp
0dcc: 6f        ret

0dcd: 20        clrp
0dce: e4 f4     mov   a,$f4
0dd0: 64 f4     cmp   a,$f4
0dd2: d0 fa     bne   $0dce
0dd4: 68 03     cmp   a,#$03
0dd6: d0 f6     bne   $0dce
0dd8: cd 00     mov   x,#$00
0dda: f5 8e 07  mov   a,$078e+x
0ddd: f0 0b     beq   $0dea
0ddf: c4 f2     mov   $f2,a
0de1: 3d        inc   x
0de2: f5 8e 07  mov   a,$078e+x
0de5: c4 f3     mov   $f3,a
0de7: 3d        inc   x
0de8: 2f f0     bra   $0dda
0dea: e8 00     mov   a,#$00
0dec: 20        clrp
0ded: 5d        mov   x,a
0dee: af        mov   (x)+,a
0def: c8 cf     cmp   x,#$cf
0df1: 90 fb     bcc   $0dee
0df3: 40        setp
0df4: 5d        mov   x,a
0df5: af        mov   (x)+,a
0df6: c8 a5     cmp   x,#$a5
0df8: 90 fb     bcc   $0df5
0dfa: 5d        mov   x,a
0dfb: 8f 59 96  mov   $96,#$59
0dfe: 8f 03 97  mov   $97,#$03
0e01: 8d 07     mov   y,#$07
0e03: 7d        mov   a,x
0e04: c7 96     mov   ($96+x),a
0e06: ab 96     inc   $96
0e08: d0 02     bne   $0e0c
0e0a: ab 97     inc   $97
0e0c: e8 60     mov   a,#$60
0e0e: 5a 96     cmpw  ya,$96
0e10: d0 f1     bne   $0e03
0e12: 20        clrp
0e13: 8f 32 c9  mov   $c9,#$32
0e16: 8f 64 ca  mov   $ca,#$64
0e19: 8f 23 cb  mov   $cb,#$23
0e1c: e8 00     mov   a,#$00
0e1e: c4 c8     mov   $c8,a
0e20: c4 cc     mov   $cc,a
0e22: c4 cd     mov   $cd,a
0e24: c4 ce     mov   $ce,a
0e26: 5d        mov   x,a
0e27: d5 25 05  mov   $0525+x,a
0e2a: 3d        inc   x
0e2b: c8 08     cmp   x,#$08
0e2d: d0 f8     bne   $0e27
0e2f: 5d        mov   x,a
0e30: d5 ce 04  mov   $04ce+x,a
0e33: 3d        inc   x
0e34: 3d        inc   x
0e35: c8 10     cmp   x,#$10
0e37: d0 f7     bne   $0e30
0e39: 5d        mov   x,a
0e3a: e8 ff     mov   a,#$ff
0e3c: d5 dd 03  mov   $03dd+x,a
0e3f: d5 cd 04  mov   $04cd+x,a
0e42: 3d        inc   x
0e43: 3d        inc   x
0e44: c8 18     cmp   x,#$18
0e46: d0 f4     bne   $0e3c
0e48: e8 01     mov   a,#$01
0e4a: c5 5d 05  mov   $055d,a
0e4d: e8 00     mov   a,#$00
0e4f: c5 5e 05  mov   $055e,a
0e52: c5 5f 05  mov   $055f,a
0e55: c5 65 05  mov   $0565,a
0e58: e8 ff     mov   a,#$ff
0e5a: c5 66 05  mov   $0566,a
0e5d: 20        clrp
0e5e: e8 00     mov   a,#$00
0e60: c4 f2     mov   $f2,a
0e62: 8f 00 f3  mov   $f3,#$00          ; VOL(L)
0e65: bc        inc   a
0e66: c4 f2     mov   $f2,a
0e68: 8f 00 f3  mov   $f3,#$00          ; VOL(R)
0e6b: 60        clrc
0e6c: 88 0f     adc   a,#$0f
0e6e: 68 80     cmp   a,#$80
0e70: 90 ee     bcc   $0e60
0e72: 8f 00 f1  mov   $f1,#$00          ; stop all timers
0e75: 8f 28 fa  mov   $fa,#$28          ; set timer0 latch to #$28 (200 Hz, 5ms)
0e78: 8f 01 f1  mov   $f1,#$01          ; start timer0
0e7b: e4 fd     mov   a,$fd
0e7d: 3f 80 1e  call  $1e80
0e80: 40        setp
0e81: e8 03     mov   a,#$03
0e83: c4 91     mov   $91,a
0e85: c5 f4 00  mov   $00f4,a
0e88: e8 00     mov   a,#$00
0e8a: c4 92     mov   $92,a
0e8c: c4 93     mov   $93,a
0e8e: c5 f5 00  mov   $00f5,a
0e91: c4 8d     mov   $8d,a
0e93: 20        clrp
0e94: 6f        ret

0e95: f5 1d 05  mov   a,$051d+x
0e98: fd        mov   y,a
0e99: 3f fa 20  call  $20fa
0e9c: e8 ff     mov   a,#$ff
0e9e: c5 66 05  mov   $0566,a
0ea1: 6f        ret

0ea2: e4 c2     mov   a,$c2
0ea4: 8d 01     mov   y,#$01
0ea6: 77 c0     cmp   a,($c0)+y
0ea8: d0 13     bne   $0ebd
0eaa: f8 c3     mov   x,$c3
0eac: e8 00     mov   a,#$00
0eae: d5 25 05  mov   $0525+x,a
0eb1: f5 1d 05  mov   a,$051d+x
0eb4: fd        mov   y,a
0eb5: 3f fa 20  call  $20fa
0eb8: e8 ff     mov   a,#$ff
0eba: c5 66 05  mov   $0566,a
0ebd: 6f        ret

0ebe: 20        clrp
0ebf: 3f 10 16  call  $1610
0ec2: 90 01     bcc   $0ec5
0ec4: 6f        ret

0ec5: 3f c3 0f  call  $0fc3             ; set X >= 0, $0525+X != 0
0ec8: b0 ce     bcs   $0e98
0eca: d5 1d 05  mov   $051d+x,a         ; $051D+X = A
0ecd: c9 66 05  mov   $0566,x
0ed0: 2d        push  a
0ed1: e5 8f 21  mov   a,$218f
0ed4: c4 c0     mov   $c0,a
0ed6: e5 90 21  mov   a,$2190
0ed9: c4 c1     mov   $c1,a             ; $C0/1 = $218F/90
0edb: ae        pop   a
0edc: 1c        asl   a
0edd: 90 02     bcc   $0ee1
;
0edf: ab c1     inc   $c1
0ee1: 60        clrc
;
0ee2: 84 c0     adc   a,$c0
0ee4: c4 c0     mov   $c0,a             ; $C0/1 += ($051D+X * 2)
0ee6: 90 02     bcc   $0eea
0ee8: ab c1     inc   $c1
0eea: 8d 00     mov   y,#$00
0eec: f7 c0     mov   a,($c0)+y
0eee: 2d        push  a
0eef: fc        inc   y
0ef0: f7 c0     mov   a,($c0)+y
0ef2: c4 c1     mov   $c1,a
0ef4: ae        pop   a
0ef5: c4 c0     mov   $c0,a             ; $C0/1 = (WORD) [$C0] (sequence header)
0ef7: 04 c1     or    a,$c1
0ef9: f0 9a     beq   $0e95             ; no song
0efb: e8 ff     mov   a,#$ff
0efd: d5 15 05  mov   $0515+x,a
0f00: e8 00     mov   a,#$00
0f02: d5 45 05  mov   $0545+x,a
0f05: d5 4d 05  mov   $054d+x,a
0f08: d5 35 05  mov   $0535+x,a
0f0b: d5 55 05  mov   $0555+x,a
; read the sequence header
0f0e: 8d 00     mov   y,#$00
0f10: f7 c0     mov   a,($c0)+y         ; header+0: initial tempo
0f12: fc        inc   y
0f13: d5 25 05  mov   $0525+x,a
0f16: e8 7d     mov   a,#$7d
0f18: d5 2d 05  mov   $052d+x,a
0f1b: f7 c0     mov   a,($c0)+y         ; header+1: channels
0f1d: fc        inc   y
0f1e: c4 c2     mov   $c2,a
0f20: d8 c3     mov   $c3,x
0f22: e8 00     mov   a,#$00
0f24: c5 60 05  mov   $0560,a
; find a unused track to start new track
0f27: f8 c3     mov   x,$c3
0f29: f5 1d 05  mov   a,$051d+x
0f2c: 3f d8 0f  call  $0fd8             ; search $03dd+N and find unused track, return: x = N
0f2f: 90 03     bcc   $0f34             ; setup new track if a unused track is available
0f31: 5f a2 0e  jmp   $0ea2
; setup new track
0f34: f7 c0     mov   a,($c0)+y
0f36: fc        inc   y
0f37: d4 00     mov   $00+x,a
0f39: f7 c0     mov   a,($c0)+y
0f3b: fc        inc   y
0f3c: d4 01     mov   $01+x,a           ; header+2+(N*2): address of the channel
0f3e: e8 01     mov   a,#$01
0f40: d4 18     mov   $18+x,a
0f42: e8 cc     mov   a,#$cc
0f44: d5 5a 03  mov   $035a+x,a         ; duration rate = #$CC
0f47: e8 00     mov   a,#$00            ; zero following vars
0f49: d4 19     mov   $19+x,a
0f4b: d4 48     mov   $48+x,a
0f4d: d4 a9     mov   $a9+x,a
0f4f: d5 3e 04  mov   $043e+x,a
0f52: d5 de 03  mov   $03de+x,a
0f55: d5 8a 03  mov   $038a+x,a
0f58: d5 0d 04  mov   $040d+x,a
0f5b: d5 56 04  mov   $0456+x,a
0f5e: d5 a1 03  mov   $03a1+x,a
0f61: d5 71 03  mov   $0371+x,a
0f64: d5 9e 04  mov   $049e+x,a
0f67: d5 e6 04  mov   $04e6+x,a
0f6a: e8 7f     mov   a,#$7f
0f6c: d4 30     mov   $30+x,a
0f6e: e8 ff     mov   a,#$ff
0f70: d4 90     mov   $90+x,a
0f72: d5 a2 03  mov   $03a2+x,a
0f75: e8 80     mov   a,#$80
0f77: d4 31     mov   $31+x,a           ; volume #$80
0f79: e4 c3     mov   a,$c3
0f7b: d5 dd 03  mov   $03dd+x,a         ; this track is used by song slot $a3
0f7e: e5 60 05  mov   a,$0560
0f81: d5 e5 04  mov   $04e5+x,a
0f84: 3f 9d 0f  call  $0f9d
0f87: ac 60 05  inc   $0560
0f8a: 6e c2 9a  dbnz  $c2,$0f27         ; repeat for each channels
0f8d: 38 3f cb  and   $cb,#$3f
0f90: e4 cb     mov   a,$cb
0f92: 20        clrp
0f93: 8f 6c f2  mov   $f2,#$6c
0f96: c4 f3     mov   $f3,a             ; FLG
0f98: 20        clrp
0f99: 8f 01 c8  mov   $c8,#$01
0f9c: 6f        ret

0f9d: 6d        push  y
0f9e: 3f 01 10  call  $1001
0fa1: 8d 01     mov   y,#$01
0fa3: e8 00     mov   a,#$00
0fa5: 3f 65 17  call  $1765             ; VOL(R)
0fa8: 8d 00     mov   y,#$00
0faa: 3f 65 17  call  $1765             ; VOL(L)
0fad: e8 00     mov   a,#$00
0faf: 3f 16 14  call  $1416
0fb2: 3f 9c 1b  call  $1b9c
0fb5: 3f de 1b  call  $1bde
0fb8: 3f 44 18  call  $1844
0fbb: b0 04     bcs   $0fc1
0fbd: fd        mov   y,a
0fbe: 3f d7 16  call  $16d7
0fc1: ee        pop   y
0fc2: 6f        ret

0fc3: 2d        push  a
0fc4: cd 00     mov   x,#$00
0fc6: f5 25 05  mov   a,$0525+x
0fc9: f0 07     beq   $0fd2
0fcb: 3d        inc   x
0fcc: c8 08     cmp   x,#$08
0fce: d0 f6     bne   $0fc6
0fd0: 2f 03     bra   $0fd5
0fd2: ae        pop   a
0fd3: 60        clrc
0fd4: 6f        ret

0fd5: ae        pop   a
0fd6: 80        setc
0fd7: 6f        ret

; search unused track
0fd8: 65 8c 21  cmp   a,$218c
0fdb: b0 11     bcs   $0fee
; forward search
0fdd: cd 00     mov   x,#$00
0fdf: f5 dd 03  mov   a,$03dd+x
0fe2: 68 ff     cmp   a,#$ff
0fe4: f0 19     beq   $0fff
0fe6: 3d        inc   x
0fe7: 3d        inc   x
0fe8: c8 10     cmp   x,#$10
0fea: d0 f3     bne   $0fdf
0fec: 2f e8     bra   $0fd6
; backward search
0fee: cd 16     mov   x,#$16
0ff0: f5 dd 03  mov   a,$03dd+x
0ff3: 68 ff     cmp   a,#$ff
0ff5: f0 08     beq   $0fff
0ff7: c8 08     cmp   x,#$08
0ff9: f0 db     beq   $0fd6
0ffb: 1d        dec   x
0ffc: 1d        dec   x
0ffd: 2f f1     bra   $0ff0
0fff: 60        clrc
1000: 6f        ret

1001: 3f 5d 18  call  $185d
1004: b0 30     bcs   $1036
1006: 8d 00     mov   y,#$00
1008: f6 ce 04  mov   a,$04ce+y
100b: f0 1b     beq   $1028
100d: fc        inc   y
100e: fc        inc   y
100f: ad 10     cmp   y,#$10
1011: 90 f5     bcc   $1008
1013: 8d 00     mov   y,#$00
1015: f6 ce 04  mov   a,$04ce+y
1018: 28 01     and   a,#$01
101a: f0 0c     beq   $1028
101c: fc        inc   y
101d: fc        inc   y
101e: ad 10     cmp   y,#$10
1020: 90 f3     bcc   $1015
1022: e8 ff     mov   a,#$ff
1024: d5 cd 04  mov   $04cd+x,a
1027: 6f        ret

1028: f6 ce 04  mov   a,$04ce+y
102b: 08 01     or    a,#$01
102d: d6 ce 04  mov   $04ce+y,a
1030: dd        mov   a,y
1031: 5c        lsr   a
1032: d5 cd 04  mov   $04cd+x,a
1035: 6f        ret

1036: 8d 0e     mov   y,#$0e
1038: f6 ce 04  mov   a,$04ce+y
103b: 28 02     and   a,#$02
103d: f0 0e     beq   $104d
103f: ad 00     cmp   y,#$00
1041: f0 04     beq   $1047
1043: dc        dec   y
1044: dc        dec   y
1045: 2f f1     bra   $1038
1047: e8 ff     mov   a,#$ff
1049: d5 cd 04  mov   $04cd+x,a
104c: 6f        ret

104d: f6 ce 04  mov   a,$04ce+y
1050: 08 02     or    a,#$02
1052: d6 ce 04  mov   $04ce+y,a
1055: dd        mov   a,y
1056: 5c        lsr   a
1057: d5 cd 04  mov   $04cd+x,a
105a: 6f        ret

105b: 3f 5d 18  call  $185d
105e: 90 01     bcc   $1061
1060: 6f        ret

1061: f5 cd 04  mov   a,$04cd+x
1064: 1c        asl   a
1065: fd        mov   y,a
1066: c4 c0     mov   $c0,a
1068: f6 ce 04  mov   a,$04ce+y
106b: 28 02     and   a,#$02
106d: d0 01     bne   $1070
106f: 6f        ret

1070: 8d 00     mov   y,#$00
1072: f6 ce 04  mov   a,$04ce+y
1075: f0 07     beq   $107e
1077: fc        inc   y
1078: fc        inc   y
1079: ad 10     cmp   y,#$10
107b: 90 f5     bcc   $1072
107d: 6f        ret

107e: f6 ce 04  mov   a,$04ce+y
1081: 08 01     or    a,#$01
1083: d6 ce 04  mov   $04ce+y,a
1086: dd        mov   a,y
1087: 5c        lsr   a
1088: d5 cd 04  mov   $04cd+x,a
108b: eb c0     mov   y,$c0
108d: f6 ce 04  mov   a,$04ce+y
1090: 28 fe     and   a,#$fe
1092: d6 ce 04  mov   $04ce+y,a
1095: 3f 99 10  call  $1099
1098: 6f        ret

1099: f5 0e 04  mov   a,$040e+x
109c: 8d 04     mov   y,#$04
109e: 3f 65 17  call  $1765             ; SRCN
10a1: f5 25 04  mov   a,$0425+x
10a4: 8d 07     mov   y,#$07
10a6: 3f 65 17  call  $1765             ; GAIN
10a9: f5 26 04  mov   a,$0426+x
10ac: 8d 05     mov   y,#$05
10ae: 3f 65 17  call  $1765             ; ADSR(1)
10b1: f5 3d 04  mov   a,$043d+x
10b4: 8d 06     mov   y,#$06
10b6: 3f 65 17  call  $1765             ; ADSR(2)
10b9: f5 0d 04  mov   a,$040d+x
10bc: 28 20     and   a,#$20
10be: f0 05     beq   $10c5
10c0: 3f 7c 1b  call  $1b7c
10c3: 2f 03     bra   $10c8
10c5: 3f 9c 1b  call  $1b9c
10c8: f5 0d 04  mov   a,$040d+x
10cb: 28 40     and   a,#$40
10cd: f0 05     beq   $10d4
10cf: 3f be 1b  call  $1bbe
10d2: 2f 03     bra   $10d7
10d4: 3f de 1b  call  $1bde
10d7: 6f        ret

10d8: 3f 5d 18  call  $185d
10db: b0 0f     bcs   $10ec
10dd: f5 cd 04  mov   a,$04cd+x
10e0: 1c        asl   a
10e1: fd        mov   y,a
10e2: f6 ce 04  mov   a,$04ce+y
10e5: 28 fe     and   a,#$fe
10e7: d6 ce 04  mov   $04ce+y,a
10ea: 2f 0d     bra   $10f9
10ec: f5 cd 04  mov   a,$04cd+x
10ef: 1c        asl   a
10f0: fd        mov   y,a
10f1: f6 ce 04  mov   a,$04ce+y
10f4: 28 fd     and   a,#$fd
10f6: d6 ce 04  mov   $04ce+y,a
10f9: e8 ff     mov   a,#$ff
10fb: d5 cd 04  mov   $04cd+x,a
10fe: 6f        ret

10ff: 20        clrp
1100: e8 00     mov   a,#$00
1102: fd        mov   y,a
1103: 16 25 05  or    a,$0525+y
1106: fc        inc   y
1107: ad 08     cmp   y,#$08
1109: 90 f8     bcc   $1103
110b: c4 c8     mov   $c8,a
110d: 6f        ret

110e: 20        clrp
110f: e4 c8     mov   a,$c8
1111: d0 01     bne   $1114
1113: 6f        ret

1114: 3f 19 1c  call  $1c19
1117: cd 00     mov   x,#$00
1119: f5 25 05  mov   a,$0525+x
111c: 68 00     cmp   a,#$00
111e: f0 38     beq   $1158
1120: 60        clrc
1121: 95 2d 05  adc   a,$052d+x
1124: d5 2d 05  mov   $052d+x,a
1127: b0 04     bcs   $112d
1129: 68 fb     cmp   a,#$fb
112b: 90 2b     bcc   $1158
112d: 80        setc
112e: a8 fa     sbc   a,#$fa
1130: d5 2d 05  mov   $052d+x,a
1133: 3f af 1a  call  $1aaf
1136: 7d        mov   a,x
1137: cd 00     mov   x,#$00
1139: 75 dd 03  cmp   a,$03dd+x
113c: d0 07     bne   $1145
113e: 2d        push  a
113f: 4d        push  x
1140: 3f 6c 11  call  $116c
1143: ce        pop   x
1144: ae        pop   a
1145: 3d        inc   x
1146: 3d        inc   x
1147: c8 18     cmp   x,#$18
1149: d0 ee     bne   $1139
114b: 5d        mov   x,a
114c: f5 55 05  mov   a,$0555+x
114f: 28 80     and   a,#$80
1151: f0 05     beq   $1158
1153: e8 00     mov   a,#$00
1155: d5 55 05  mov   $0555+x,a
1158: 3d        inc   x
1159: c8 08     cmp   x,#$08
115b: d0 bc     bne   $1119
115d: 20        clrp
115e: 8f 4c f2  mov   $f2,#$4c
1161: 8f 00 f3  mov   $f3,#$00          ; KON
1164: 8f 5c f2  mov   $f2,#$5c
1167: 8f 00 f3  mov   $f3,#$00          ; KOF
116a: 20        clrp
116b: 6f        ret

116c: 3f 44 1b  call  $1b44
116f: 3f e2 18  call  $18e2
1172: 3f 10 1b  call  $1b10
1175: 3f ac 19  call  $19ac
1178: 3f fa 19  call  $19fa
117b: 3f 44 1a  call  $1a44
117e: f4 19     mov   a,$19+x
1180: f0 11     beq   $1193
1182: 68 ff     cmp   a,#$ff
1184: f0 16     beq   $119c
1186: 9b 19     dec   $19+x
1188: d0 09     bne   $1193
118a: f4 18     mov   a,$18+x
118c: 68 01     cmp   a,#$01
118e: f0 03     beq   $1193
1190: 3f 9f 16  call  $169f
1193: f4 18     mov   a,$18+x
1195: 68 02     cmp   a,#$02
1197: d0 03     bne   $119c
1199: 3f af 16  call  $16af
119c: 9b 18     dec   $18+x
119e: d0 03     bne   $11a3
11a0: 3f a6 11  call  $11a6
11a3: 5f e2 16  jmp   $16e2

; vcmds A0-DC
11a6: f5 dd 03  mov   a,$03dd+x
11a9: 68 ff     cmp   a,#$ff
11ab: d0 01     bne   $11ae
11ad: 6f        ret

11ae: 3f 5b 10  call  $105b
11b1: 3f 6a 18  call  $186a
11b4: 3f aa 15  call  $15aa             ; read vcmd byte
11b7: 68 a0     cmp   a,#$a0
11b9: b0 5a     bcs   $1215             ; vcmds A0-FF
11bb: 68 50     cmp   a,#$50
11bd: 90 0d     bcc   $11cc             ; vcmds 00-4F
; vcmds 50-9F - note (with length)
11bf: 2d        push  a
11c0: 3f aa 15  call  $15aa
11c3: d5 59 03  mov   $0359+x,a
11c6: d4 18     mov   $18+x,a
11c8: ae        pop   a
11c9: 80        setc
11ca: a8 50     sbc   a,#$50
; vcmds 00-4F,50-9F
11cc: 68 00     cmp   a,#$00
11ce: d0 13     bne   $11e3
; vcmds 00,40 - rest
11d0: 3f 44 18  call  $1844
11d3: b0 04     bcs   $11d9
11d5: fd        mov   y,a
11d6: 3f d7 16  call  $16d7
11d9: f5 59 03  mov   a,$0359+x
11dc: d4 18     mov   $18+x,a
11de: e8 00     mov   a,#$00
11e0: d4 19     mov   $19+x,a
11e2: 6f        ret
; vcmds 01-4F,51-9F - note
11e3: 68 4f     cmp   a,#$4f
11e5: f0 07     beq   $11ee             ; vcmds 4F,9F - tie
11e7: 60        clrc
11e8: 95 de 03  adc   a,$03de+x
11eb: 3f 7d 17  call  $177d
11ee: f4 19     mov   a,$19+x
11f0: 68 ff     cmp   a,#$ff
11f2: f0 03     beq   $11f7
11f4: 3f 3b 16  call  $163b
11f7: f5 59 03  mov   a,$0359+x
11fa: d4 18     mov   $18+x,a
11fc: f5 5a 03  mov   a,$035a+x
11ff: d0 06     bne   $1207
1201: e8 ff     mov   a,#$ff
1203: d4 19     mov   $19+x,a
1205: 2f 0d     bra   $1214
1207: fb 18     mov   y,$18+x
1209: 3f 31 16  call  $1631             ; y *= (a + 1) / 256;
120c: dd        mov   a,y
120d: 74 18     cmp   a,$18+x
120f: d0 01     bne   $1212
1211: 9c        dec   a
1212: d4 19     mov   $19+x,a
1214: 6f        ret

; vcmds A0-FF
1215: 68 ff     cmp   a,#$ff
1217: f0 1c     beq   $1235
1219: 80        setc
121a: a8 dd     sbc   a,#$dd
121c: 90 88     bcc   $11a6
; vcmds DD-FE
121e: 4d        push  x
121f: 1c        asl   a
1220: 5d        mov   x,a
1221: f5 af 07  mov   a,$07af+x
1224: c5 2f 12  mov   $122e+1,a
1227: f5 b0 07  mov   a,$07b0+x
122a: c5 30 12  mov   $122e+2,a         ; overwrite call addr
122d: ce        pop   x
122e: 3f 00 00  call  $0000             ; do vcmd
; vcmds AA-DC - reserved
1231: 5f a6 11  jmp   $11a6

1234: 6f        ret

; vcmd FF - end of track
1235: f5 8a 03  mov   a,$038a+x
1238: f0 03     beq   $123d
123a: 5f 5d 15  jmp   $155d
123d: 3f 9c 1b  call  $1b9c
1240: 3f de 1b  call  $1bde
1243: 8d 01     mov   y,#$01
1245: e8 00     mov   a,#$00
1247: 3f 65 17  call  $1765             ; VOL(R)
124a: 8d 00     mov   y,#$00
124c: e8 00     mov   a,#$00
124e: 3f 65 17  call  $1765             ; VOL(L)
1251: e8 ff     mov   a,#$ff
1253: c5 60 05  mov   $0560,a
1256: 3f eb 15  call  $15eb
1259: b0 03     bcs   $125e
125b: cc 60 05  mov   $0560,y
125e: f5 dd 03  mov   a,$03dd+x
1261: 2d        push  a
1262: 3f af 16  call  $16af
1265: 3f d8 10  call  $10d8
1268: e8 ff     mov   a,#$ff
126a: d5 dd 03  mov   $03dd+x,a
126d: e8 01     mov   a,#$01
126f: d4 18     mov   $18+x,a
1271: d5 59 03  mov   $0359+x,a
1274: ae        pop   a
1275: 8d 00     mov   y,#$00
1277: 76 dd 03  cmp   a,$03dd+y
127a: f0 18     beq   $1294
127c: fc        inc   y
127d: fc        inc   y
127e: ad 18     cmp   y,#$18
1280: d0 f5     bne   $1277
1282: fd        mov   y,a
1283: e8 00     mov   a,#$00
1285: d6 25 05  mov   $0525+y,a
1288: f6 1d 05  mov   a,$051d+y
128b: fd        mov   y,a
128c: 4d        push  x
128d: 3f fa 20  call  $20fa
1290: 3f ff 10  call  $10ff
1293: ce        pop   x
1294: e5 60 05  mov   a,$0560
1297: 68 ff     cmp   a,#$ff
1299: f0 06     beq   $12a1
129b: 4d        push  x
129c: 5d        mov   x,a
129d: 3f 99 10  call  $1099
12a0: ce        pop   x
12a1: 6f        ret

; vcmd E1
12a2: f5 dd 03  mov   a,$03dd+x
12a5: fd        mov   y,a
12a6: f6 4d 05  mov   a,$054d+y
12a9: bc        inc   a
12aa: 28 7f     and   a,#$7f
12ac: d6 4d 05  mov   $054d+y,a
12af: 6f        ret

; vcmd E0 - CPU related? conditional jump
12b0: 3f aa 15  call  $15aa
12b3: c4 c0     mov   $c0,a
12b5: 3f aa 15  call  $15aa
12b8: c4 c1     mov   $c1,a             ; set arg1/2 to $C0/1
12ba: f5 dd 03  mov   a,$03dd+x
12bd: fd        mov   y,a
12be: f6 55 05  mov   a,$0555+y
12c1: 28 7f     and   a,#$7f
12c3: c4 c2     mov   $c2,a
12c5: 3f aa 15  call  $15aa
12c8: 64 c2     cmp   a,$c2
12ca: d0 0b     bne   $12d7             ; jump if $03F7+Y == arg3
12cc: f4 00     mov   a,$00+x
12ce: fb 01     mov   y,$01+x
12d0: 60        clrc
12d1: 7a c0     addw  ya,$c0            ; relative jump
12d3: d4 00     mov   $00+x,a
12d5: db 01     mov   $01+x,y
;
12d7: f5 dd 03  mov   a,$03dd+x
12da: fd        mov   y,a
12db: e4 c2     mov   a,$c2
12dd: 08 80     or    a,#$80
12df: d6 55 05  mov   $0555+y,a         ; $0555+Y |= #$80
12e2: 6f        ret

; vcmd DF
12e3: 3f aa 15  call  $15aa
12e6: d5 e6 04  mov   $04e6+x,a
12e9: 6f        ret

; vcmd E2 - set vibrato/tune parameters
12ea: 3f aa 15  call  $15aa
12ed: 68 ff     cmp   a,#$ff
12ef: f0 01     beq   $12f2             ; #$FF = disable
12f1: 1c        asl   a
12f2: d4 90     mov   $90+x,a
12f4: e8 00     mov   a,#$00
12f6: d4 a9     mov   $a9+x,a
12f8: bc        inc   a
12f9: d4 a8     mov   $a8+x,a
12fb: bc        inc   a
12fc: d4 91     mov   $91+x,a
12fe: 6f        ret

; vcmd E3
12ff: 3f 7c 1b  call  $1b7c
1302: 6f        ret

; vcmd E4
1303: 3f 9c 1b  call  $1b9c
1306: 6f        ret

; vcmd E5
1307: f5 dd 03  mov   a,$03dd+x
130a: fd        mov   y,a
130b: 3f aa 15  call  $15aa
130e: d6 35 05  mov   $0535+y,a
1311: e8 80     mov   a,#$80
1313: d6 3d 05  mov   $053d+y,a
1316: 6f        ret

; vcmd E6 - volume fade
1317: 3f aa 15  call  $15aa
131a: d5 9d 04  mov   $049d+x,a         ; $049D+X = arg1 (target)
131d: 3f aa 15  call  $15aa
1320: d5 9e 04  mov   $049e+x,a         ; $049E+X = arg2 (step)
1323: e8 80     mov   a,#$80
1325: d5 b5 04  mov   $04b5+x,a
1328: 6f        ret

; vcmd E7
1329: 3f aa 15  call  $15aa
132c: d5 a1 03  mov   $03a1+x,a
132f: 68 80     cmp   a,#$80
1331: b0 04     bcs   $1337
1333: e8 00     mov   a,#$00
1335: 2f 02     bra   $1339
1337: e8 ff     mov   a,#$ff
1339: d5 a2 03  mov   $03a2+x,a
133c: e8 80     mov   a,#$80
133e: d5 85 04  mov   $0485+x,a
1341: 6f        ret

; vcmd E8 - pan fade
1342: f5 0d 04  mov   a,$040d+x
1345: 28 f7     and   a,#$f7
1347: d5 0d 04  mov   $040d+x,a
134a: 3f aa 15  call  $15aa             ; arg1 (target)
134d: 80        setc
134e: b4 48     sbc   a,$48+x
1350: 10 04     bpl   $1356
1352: 70 11     bvs   $1365
1354: 2f 02     bra   $1358
1356: 50 0d     bvc   $1365
1358: 48 ff     eor   a,#$ff
135a: bc        inc   a
135b: 2d        push  a
135c: f5 0d 04  mov   a,$040d+x
135f: 08 08     or    a,#$08
1361: d5 0d 04  mov   $040d+x,a
1364: ae        pop   a
1365: fd        mov   y,a
1366: 3f aa 15  call  $15aa
1369: d5 56 04  mov   $0456+x,a         ; $0456+X = arg2 (step)
136c: 4d        push  x
136d: 5d        mov   x,a
136e: dd        mov   a,y
136f: 8d 00     mov   y,#$00
1371: 9e        div   ya,x
1372: ce        pop   x
1373: d5 6e 04  mov   $046e+x,a
1376: dd        mov   a,y
1377: d5 6d 04  mov   $046d+x,a
137a: e8 80     mov   a,#$80
137c: d5 85 04  mov   $0485+x,a
137f: 6f        ret

; vcmd E9
1380: 3f aa 15  call  $15aa
1383: d4 a9     mov   $a9+x,a
1385: 6f        ret

; vcmd EA - jump
1386: 3f aa 15  call  $15aa
1389: c4 c0     mov   $c0,a
138b: 3f aa 15  call  $15aa
138e: c4 c1     mov   $c1,a             ; set arg1/2 to $C0/1
1390: f4 00     mov   a,$00+x
1392: fb 01     mov   y,$01+x
1394: 60        clrc
1395: 7a c0     addw  ya,$c0            ; relative jump
1397: d4 00     mov   $00+x,a
1399: db 01     mov   $01+x,y
139b: 6f        ret

; vcmd EB - tempo
139c: f5 dd 03  mov   a,$03dd+x
139f: fd        mov   y,a
13a0: 3f aa 15  call  $15aa
13a3: d6 25 05  mov   $0525+y,a
13a6: 6f        ret

; vcmd EC - set duration rate
13a7: 3f aa 15  call  $15aa
13aa: d5 5a 03  mov   $035a+x,a
13ad: 6f        ret

; vcmd ED - set channel master volume
13ae: 3f aa 15  call  $15aa
13b1: d4 30     mov   $30+x,a
13b3: 6f        ret

; vcmd EE - set panpot
13b4: 3f aa 15  call  $15aa
13b7: d4 48     mov   $48+x,a
13b9: 6f        ret

; vcmd EF - set ADSR1/2 param from args
13ba: 3f aa 15  call  $15aa
13bd: d5 26 04  mov   $0426+x,a
13c0: 8d 05     mov   y,#$05
13c2: 3f 65 17  call  $1765             ; ADSR(1)
13c5: 3f aa 15  call  $15aa
13c8: d5 3d 04  mov   $043d+x,a
13cb: 8d 06     mov   y,#$06
13cd: 3f 65 17  call  $1765             ; ADSR(2)
13d0: 28 e0     and   a,#$e0
13d2: 08 1d     or    a,#$1d
13d4: d5 fd 04  mov   $04fd+x,a
13d7: 6f        ret

; vcmd DE - set ADSR and release rate
13d8: 3f aa 15  call  $15aa             ; arg1/2 = ADSR1/2 param
13db: d5 26 04  mov   $0426+x,a
13de: 8d 05     mov   y,#$05
13e0: 3f 65 17  call  $1765             ; ADSR(1)
13e3: 3f aa 15  call  $15aa
13e6: d5 3d 04  mov   $043d+x,a
13e9: 8d 06     mov   y,#$06
13eb: 3f 65 17  call  $1765             ; ADSR(2)
13ee: 28 e0     and   a,#$e0
13f0: c5 c0 00  mov   $00c0,a
13f3: 3f aa 15  call  $15aa             ; arg3 = release rate
13f6: 28 1f     and   a,#$1f            ; sustain rate = 5 bit
13f8: 05 c0 00  or    a,$00c0
13fb: d5 fd 04  mov   $04fd+x,a
13fe: 6f        ret

; vcmd DD - set release rate
13ff: f5 fd 04  mov   a,$04fd+x
1402: 28 e0     and   a,#$e0
1404: c5 c0 00  mov   $00c0,a
1407: 3f aa 15  call  $15aa             ; arg1 = release rate
140a: 28 1f     and   a,#$1f            ; sustain rate = 5 bit
140c: 05 c0 00  or    a,$00c0
140f: d5 fd 04  mov   $04fd+x,a
1412: 6f        ret

; vcmd F0 - set patch
1413: 3f aa 15  call  $15aa             ; arg1 (patch number)
1416: 2d        push  a
1417: f5 dd 03  mov   a,$03dd+x         ; get song slot index to A
141a: fd        mov   y,a
141b: f6 1d 05  mov   a,$051d+y         ; get instrument set # for the song slot
141e: fd        mov   y,a               ; set it to Y
141f: 4d        push  x
1420: 8f 03 c4  mov   $c4,#$03
1423: 8f 02 c5  mov   $c5,#$02          ; $c4/5 = instrument set table ($0203)
1426: cd 00     mov   x,#$00
1428: ad 00     cmp   y,#$00
142a: f0 0e     beq   $143a             ; while y (instrset #) ~= 0 do
142c: e7 c4     mov   a,($c4+x)         ;   read instrument count
142e: bc        inc   a
142f: 6d        push  y
1430: 8d 00     mov   y,#$00
1432: 7a c4     addw  ya,$c4            ;   skip (1 + instrument_count) bytes
1434: da c4     movw  $c4,ya
1436: ee        pop   y
1437: dc        dec   y                 ;   y--;
1438: 2f ee     bra   $1428             ; end
143a: ce        pop   x
143b: ae        pop   a                 ; patch number in A
143c: bc        inc   a                 ; skip offset +0: number of instruments
143d: fd        mov   y,a
143e: f7 c4     mov   a,($c4)+y         ; read global instrument number from ($c4/5)[1 + patch]
1440: fd        mov   y,a
1441: f6 67 05  mov   a,$0567+y
1444: 68 ff     cmp   a,#$ff
1446: d0 02     bne   $144a
;
1448: 00        nop
1449: bc        inc   a

; read sample info table (A=SRCN)
144a: d5 0e 04  mov   $040e+x,a         ; save SRCN
144d: 8d 04     mov   y,#$04
144f: 3f 65 17  call  $1765             ; SRCN
1452: 8d 08     mov   y,#$08
1454: cf        mul   ya
1455: 8f 2f c4  mov   $c4,#$2f
1458: 8f 06 c5  mov   $c5,#$06          ; $062f = sample info table
145b: 7a c4     addw  ya,$c4
145d: da c4     movw  $c4,ya            ; $c4 = &SampInfoTable[patch * 8]
145f: 8d 02     mov   y,#$02
1461: f7 c4     mov   a,($c4)+y         ; read offset +2
1463: d5 26 04  mov   $0426+x,a         ; save ADSR(1)
1466: 8d 05     mov   y,#$05
1468: 3f 65 17  call  $1765             ; ADSR(1)
146b: 8d 03     mov   y,#$03
146d: f7 c4     mov   a,($c4)+y         ; read offset +3
146f: d5 3d 04  mov   $043d+x,a         ; save ADSR(2)
1472: 8d 06     mov   y,#$06
1474: 3f 65 17  call  $1765             ; ADSR(2)
1477: 28 e0     and   a,#$e0
1479: 08 1d     or    a,#$1d            ; SR = #$1d
147b: d5 fd 04  mov   $04fd+x,a         ; save another ADSR(2) (for release?)
147e: 8d 04     mov   y,#$04
1480: f7 c4     mov   a,($c4)+y         ; read offset +4
1482: d5 25 04  mov   $0425+x,a         ; save GAIN
1485: 8d 07     mov   y,#$07
1487: 3f 65 17  call  $1765             ; GAIN
148a: 8d 05     mov   y,#$05
148c: f7 c4     mov   a,($c4)+y         ; read offset +5
148e: d5 f6 03  mov   $03f6+x,a
1491: 8d 06     mov   y,#$06
1493: f7 c4     mov   a,($c4)+y         ; read offset +6
1495: d5 f5 03  mov   $03f5+x,a
1498: 6f        ret

; vcmd F1
1499: 3f aa 15  call  $15aa
149c: 68 ff     cmp   a,#$ff
149e: f0 15     beq   $14b5
14a0: 1c        asl   a
14a1: fd        mov   y,a
14a2: f6 cf 08  mov   a,$08cf+y
14a5: d4 78     mov   $78+x,a
14a7: f6 d0 08  mov   a,$08d0+y
14aa: d4 79     mov   $79+x,a
14ac: f5 0d 04  mov   a,$040d+x
14af: 08 02     or    a,#$02
14b1: d5 0d 04  mov   $040d+x,a
14b4: 6f        ret

14b5: f5 0d 04  mov   a,$040d+x
14b8: 28 fd     and   a,#$fd
14ba: d5 0d 04  mov   $040d+x,a
14bd: 6f        ret

; vcmd F2 - duration copy on
14be: f5 0d 04  mov   a,$040d+x
14c1: 08 01     or    a,#$01
14c3: d5 0d 04  mov   $040d+x,a
14c6: 6f        ret

; vcmd F3 - duration copy off
14c7: f5 0d 04  mov   a,$040d+x
14ca: 28 fe     and   a,#$fe
14cc: d5 0d 04  mov   $040d+x,a
14cf: 6f        ret

; vcmd F4 - repeat once more
14d0: 8d 01     mov   y,#$01
; conditional loop
14d2: f5 71 03  mov   a,$0371+x
14d5: f0 0d     beq   $14e4
14d7: 9c        dec   a                 ; dec repeat count
14d8: d5 71 03  mov   $0371+x,a
14db: d0 0b     bne   $14e8             ; done?
14dd: 3f aa 15  call  $15aa             ; just ignore arg1/2
14e0: 3f aa 15  call  $15aa             ; relative jump
14e3: 6f        ret

14e4: dd        mov   a,y
14e5: d5 71 03  mov   $0371+x,a
14e8: 5f 86 13  jmp   $1386

; vcmd F5 - conditional loop
14eb: 3f aa 15  call  $15aa
14ee: 9c        dec   a
14ef: fd        mov   y,a
14f0: 2f e0     bra   $14d2

; vcmd F6 - set volume
14f2: 3f aa 15  call  $15aa
14f5: d4 31     mov   $31+x,a
14f7: 6f        ret

; vcmd F7
14f8: 3f aa 15  call  $15aa
14fb: 68 ff     cmp   a,#$ff
14fd: f0 13     beq   $1512
14ff: 1c        asl   a
1500: d4 49     mov   $49+x,a
1502: f5 0d 04  mov   a,$040d+x
1505: 08 04     or    a,#$04
1507: d5 0d 04  mov   $040d+x,a
150a: e8 01     mov   a,#$01
150c: d4 61     mov   $61+x,a
150e: 3f 10 1b  call  $1b10
1511: 6f        ret

1512: f5 0d 04  mov   a,$040d+x
1515: 28 fb     and   a,#$fb
1517: d5 0d 04  mov   $040d+x,a
151a: 6f        ret

; vcmd F8 - call subroutine
151b: 3f aa 15  call  $15aa
151e: c4 c0     mov   $c0,a
1520: 3f aa 15  call  $15aa
1523: c4 c1     mov   $c1,a
1525: f5 8a 03  mov   a,$038a+x
1528: 68 06     cmp   a,#$06
152a: b0 1d     bcs   $1549             ; allows triple nest in max
152c: 2d        push  a
152d: 3f 4a 15  call  $154a             ; set where to write in $C2/3
1530: ee        pop   y
1531: f4 00     mov   a,$00+x
1533: d7 c2     mov   ($c2)+y,a
1535: fc        inc   y
1536: f4 01     mov   a,$01+x
1538: d7 c2     mov   ($c2)+y,a         ; put reading ptr ($00/1)
153a: fc        inc   y
153b: dd        mov   a,y
153c: d5 8a 03  mov   $038a+x,a         ; increment stack ptr
153f: fb 01     mov   y,$01+x
1541: f4 00     mov   a,$00+x
1543: 7a c0     addw  ya,$c0
1545: d4 00     mov   $00+x,a
1547: db 01     mov   $01+x,y           ; update reading ptr to $00/1 + arg1/2
1549: 6f        ret
; calc where to put reading ptr
154a: e8 b9     mov   a,#$b9
154c: c4 c2     mov   $c2,a
154e: e8 03     mov   a,#$03
1550: c4 c3     mov   $c3,a
1552: 7d        mov   a,x
1553: 8d 03     mov   y,#$03
1555: cf        mul   ya
1556: 8d 00     mov   y,#$00
1558: 7a c2     addw  ya,$c2
155a: da c2     movw  $c2,ya            ; $C2 = X*3 + #$03B9
155c: 6f        ret

; vcmd F9 - return from subroutine
155d: f5 8a 03  mov   a,$038a+x
1560: f0 13     beq   $1575             ; nothing has been called, do nothing
1562: 2d        push  a
1563: 3f 4a 15  call  $154a             ; set where to read in $A2/3
1566: ee        pop   y
1567: dc        dec   y
1568: f7 c2     mov   a,($c2)+y
156a: d4 01     mov   $01+x,a
156c: dc        dec   y
156d: f7 c2     mov   a,($c2)+y
156f: d4 00     mov   $00+x,a           ; restore reading ptr
1571: dd        mov   a,y
1572: d5 8a 03  mov   $038a+x,a         ; decrement stack ptr
1575: 6f        ret

; vcmd FA - key shift (transpose)
1576: 3f aa 15  call  $15aa             ; arg1 = key (signed)
1579: d5 de 03  mov   $03de+x,a
157c: 6f        ret

; vcmd FB - pitch slide
157d: 3f aa 15  call  $15aa             ; arg1 = key (signed)
1580: 68 00     cmp   a,#$00
1582: 10 05     bpl   $1589
1584: 48 ff     eor   a,#$ff
1586: bc        inc   a
1587: 08 80     or    a,#$80
1589: d5 55 04  mov   $0455+x,a
158c: 3f aa 15  call  $15aa             ; arg2 (step)
158f: d5 3e 04  mov   $043e+x,a
1592: 5c        lsr   a
1593: d5 b6 04  mov   $04b6+x,a
1596: 6f        ret

; vcmd FC
1597: 3f be 1b  call  $1bbe
159a: 6f        ret

; vcmd FD
159b: 3f de 1b  call  $1bde
159e: 6f        ret

; vcmd FE
159f: f5 dd 03  mov   a,$03dd+x
15a2: fd        mov   y,a
15a3: 3f aa 15  call  $15aa
15a6: 3f 6c 1c  call  $1c6c
15a9: 6f        ret


; read next arg
15aa: e7 00     mov   a,($00+x)
15ac: bb 00     inc   $00+x
15ae: d0 02     bne   $15b2
15b0: bb 01     inc   $01+x
15b2: 6f        ret

15b3: 20        clrp
15b4: e4 c9     mov   a,$c9
15b6: f0 0f     beq   $15c7
15b8: 8b c9     dec   $c9
15ba: d0 0b     bne   $15c7
15bc: 38 df cb  and   $cb,#$df
15bf: e4 cb     mov   a,$cb
15c1: 20        clrp
15c2: 8f 6c f2  mov   $f2,#$6c
15c5: c4 f3     mov   $f3,a             ; FLG
15c7: 20        clrp
15c8: e4 ca     mov   a,$ca
15ca: f0 1d     beq   $15e9
15cc: 8b ca     dec   $ca
15ce: d0 19     bne   $15e9
15d0: 20        clrp
15d1: 8f 2c f2  mov   $f2,#$2c
15d4: e5 cd 00  mov   a,$00cd
15d7: c4 f3     mov   $f3,a             ; EVOL(L)
15d9: 8f 3c f2  mov   $f2,#$3c
15dc: e5 cc 00  mov   a,$00cc
15df: c4 f3     mov   $f3,a             ; EVOL(R)
15e1: 8f 0d f2  mov   $f2,#$0d
15e4: e5 ce 00  mov   a,$00ce
15e7: c4 f3     mov   $f3,a             ; EFB
15e9: 20        clrp
15ea: 6f        ret

15eb: 3f 5d 18  call  $185d
15ee: b0 02     bcs   $15f2
15f0: 80        setc
15f1: 6f        ret

15f2: 7d        mov   a,x
15f3: c5 61 05  mov   $0561,a
15f6: 8d 00     mov   y,#$00
15f8: dd        mov   a,y
15f9: 65 61 05  cmp   a,$0561
15fc: f0 08     beq   $1606
15fe: f6 cd 04  mov   a,$04cd+y
1601: 75 cd 04  cmp   a,$04cd+x
1604: f0 08     beq   $160e
1606: fc        inc   y
1607: fc        inc   y
1608: ad 18     cmp   y,#$18
160a: 90 ec     bcc   $15f8
160c: 80        setc
160d: 6f        ret

160e: 60        clrc
160f: 6f        ret

1610: 65 8d 21  cmp   a,$218d
1613: b0 1a     bcs   $162f
1615: 65 8e 21  cmp   a,$218e
1618: b0 13     bcs   $162d
161a: cd 00     mov   x,#$00
161c: 2d        push  a
161d: f5 25 05  mov   a,$0525+x
1620: ae        pop   a
1621: f0 05     beq   $1628
1623: 75 1d 05  cmp   a,$051d+x
1626: f0 07     beq   $162f
1628: 3d        inc   x
1629: c8 08     cmp   x,#$08
162b: 90 ef     bcc   $161c
162d: 60        clrc
162e: 6f        ret

162f: 80        setc
1630: 6f        ret

; multiply Y by (A+1)/256 with exceptions
1631: bc        inc   a
1632: f0 06     beq   $163a             ; A=255 : simply returns Y
1634: 68 81     cmp   a,#$81
1636: b0 01     bcs   $1639
1638: 9c        dec   a                 ; 128<=A<=255 : A++
1639: cf        mul   ya
163a: 6f        ret

163b: f5 0d 04  mov   a,$040d+x
163e: 28 04     and   a,#$04
1640: d0 0a     bne   $164c
1642: 8d 06     mov   y,#$06
1644: f5 3d 04  mov   a,$043d+x
1647: 3f 65 17  call  $1765             ; ADSR(2)
164a: 2f 3e     bra   $168a
164c: e8 02     mov   a,#$02
164e: d4 60     mov   $60+x,a
1650: fb 49     mov   y,$49+x
1652: f6 e7 08  mov   a,$08e7+y
1655: c4 c0     mov   $c0,a
1657: f6 e8 08  mov   a,$08e8+y
165a: c4 c1     mov   $c1,a
165c: 8d 02     mov   y,#$02
165e: f7 c0     mov   a,($c0)+y
1660: d5 25 04  mov   $0425+x,a
1663: 8d 07     mov   y,#$07
1665: 3f 65 17  call  $1765             ; GAIN
1668: 8d 05     mov   y,#$05
166a: e8 00     mov   a,#$00
166c: d5 26 04  mov   $0426+x,a
166f: 3f 65 17  call  $1765             ; ADSR(1)
1672: 8d 03     mov   y,#$03
1674: f7 c0     mov   a,($c0)+y
1676: d4 61     mov   $61+x,a
1678: e8 04     mov   a,#$04
167a: d4 60     mov   $60+x,a
167c: 8d 00     mov   y,#$00
167e: f7 c0     mov   a,($c0)+y
1680: 68 04     cmp   a,#$04
1682: d0 06     bne   $168a
1684: 8d 01     mov   y,#$01
1686: f7 c0     mov   a,($c0)+y
1688: d4 60     mov   $60+x,a
168a: 3f 44 18  call  $1844
168d: b0 0b     bcs   $169a
168f: fd        mov   y,a
1690: f6 f3 07  mov   a,$07f3+y
1693: 20        clrp
1694: 8f 4c f2  mov   $f2,#$4c
1697: c4 f3     mov   $f3,a             ; KON
1699: 20        clrp
169a: e8 02     mov   a,#$02
169c: d4 91     mov   $91+x,a
169e: 6f        ret

169f: f5 0d 04  mov   a,$040d+x
16a2: 28 04     and   a,#$04
16a4: d0 1a     bne   $16c0
16a6: f5 fd 04  mov   a,$04fd+x
16a9: 8d 06     mov   y,#$06
16ab: 3f 65 17  call  $1765             ; ADSR(2)
16ae: 6f        ret

16af: f5 0d 04  mov   a,$040d+x
16b2: 28 04     and   a,#$04
16b4: d0 0a     bne   $16c0
16b6: 3f 44 18  call  $1844
16b9: b0 04     bcs   $16bf
16bb: fd        mov   y,a
16bc: 3f d7 16  call  $16d7
16bf: 6f        ret

16c0: fb 49     mov   y,$49+x
16c2: f6 e7 08  mov   a,$08e7+y
16c5: c4 c0     mov   $c0,a
16c7: f6 e8 08  mov   a,$08e8+y
16ca: c4 c1     mov   $c1,a
16cc: 8d 00     mov   y,#$00
16ce: f7 c0     mov   a,($c0)+y
16d0: 74 60     cmp   a,$60+x
16d2: 90 02     bcc   $16d6
16d4: d4 60     mov   $60+x,a
16d6: 6f        ret

16d7: f6 f3 07  mov   a,$07f3+y
16da: 20        clrp
16db: 8f 5c f2  mov   $f2,#$5c
16de: c4 f3     mov   $f3,a             ; KOF
16e0: 20        clrp
16e1: 6f        ret

; calculate final volume
16e2: fb 30     mov   y,$30+x           ; channel master volume
16e4: f4 31     mov   a,$31+x           ; channel volume
16e6: 3f 31 16  call  $1631             ; y *= (a + 1) / 256;
16e9: f5 a2 03  mov   a,$03a2+x
16ec: 3f 31 16  call  $1631             ; y *= (a + 1) / 256;
16ef: f5 dd 03  mov   a,$03dd+x
16f2: 4d        push  x
16f3: 5d        mov   x,a
16f4: f5 15 05  mov   a,$0515+x
16f7: ce        pop   x
16f8: 3f 31 16  call  $1631             ; y *= (a + 1) / 256;
16fb: cc 60 05  mov   $0560,y
16fe: cc 61 05  mov   $0561,y           ; set L/R volume
1701: e5 5d 05  mov   a,$055d
1704: f0 3f     beq   $1745
1706: f4 48     mov   a,$48+x           ; panpot (signed)
1708: f0 1b     beq   $1725             ; skip if center
170a: 4d        push  x
170b: cd 01     mov   x,#$01            ; target = right volume
170d: 68 00     cmp   a,#$00
170f: 10 08     bpl   $1719
; panpot < 0
1711: 1d        dec   x                 ; target = left volume
1712: 48 ff     eor   a,#$ff
1714: bc        inc   a
1715: 10 02     bpl   $1719
1717: e8 7f     mov   a,#$7f            ; a = max(127, abs(a))
; calculate volume balance
1719: 1c        asl   a
171a: 48 ff     eor   a,#$ff
171c: 9c        dec   a                 ; a = 255 - (a * 2 + 1)
171d: 3f 31 16  call  $1631             ; y *= (a + 1) / 256;
1720: dd        mov   a,y
1721: d5 60 05  mov   $0560+x,a         ; decrease weak channel volume
1724: ce        pop   x
1725: f5 e6 04  mov   a,$04e6+x
1728: 28 01     and   a,#$01
172a: f0 09     beq   $1735
172c: e5 60 05  mov   a,$0560           ; reverse-phase left channel
172f: 48 ff     eor   a,#$ff
1731: bc        inc   a
1732: c5 60 05  mov   $0560,a
1735: f5 e6 04  mov   a,$04e6+x
1738: 28 02     and   a,#$02
173a: f0 09     beq   $1745
173c: e5 61 05  mov   a,$0561           ; reverse-phase right channel
173f: 48 ff     eor   a,#$ff
1741: bc        inc   a
1742: c5 61 05  mov   $0561,a
1745: e5 60 05  mov   a,$0560
1748: 8d 01     mov   y,#$01
174a: 3f 65 17  call  $1765             ; VOL(R)
174d: e5 61 05  mov   a,$0561
1750: 8d 00     mov   y,#$00
1752: 3f 65 17  call  $1765             ; VOL(L)
1755: f5 0d 04  mov   a,$040d+x
1758: 28 04     and   a,#$04
175a: f0 08     beq   $1764
175c: f5 25 04  mov   a,$0425+x
175f: 8d 07     mov   y,#$07
1761: 3f 65 17  call  $1765             ; GAIN
1764: 6f        ret

; set a to dsp voice reg y
1765: 2d        push  a
1766: cc 62 05  mov   $0562,y
1769: 3f 44 18  call  $1844
176c: b0 0d     bcs   $177b
176e: 9f        xcn   a
176f: 60        clrc
1770: 85 62 05  adc   a,$0562
1773: 20        clrp
1774: c4 f2     mov   $f2,a
1776: ae        pop   a
1777: c4 f3     mov   $f3,a
1779: 20        clrp
177a: 6f        ret

177b: ae        pop   a
177c: 6f        ret

177d: d5 72 03  mov   $0372+x,a
1780: 20        clrp
1781: f5 0d 04  mov   a,$040d+x
1784: 28 20     and   a,#$20
1786: f0 14     beq   $179c
1788: f5 72 03  mov   a,$0372+x
178b: 28 1f     and   a,#$1f
178d: 38 e0 cb  and   $cb,#$e0
1790: 04 cb     or    a,$cb
1792: c4 cb     mov   $cb,a
1794: 20        clrp
1795: 8f 6c f2  mov   $f2,#$6c
1798: c4 f3     mov   $f3,a             ; FLG
179a: 20        clrp
179b: 6f        ret

179c: 3f ae 17  call  $17ae
179f: e4 c2     mov   a,$c2
17a1: 8d 02     mov   y,#$02
17a3: 3f 65 17  call  $1765             ; P(L)
17a6: e4 c3     mov   a,$c3
17a8: 8d 03     mov   y,#$03
17aa: 3f 65 17  call  $1765             ; P(H)
17ad: 6f        ret

17ae: f5 72 03  mov   a,$0372+x
17b1: 60        clrc
17b2: 88 0b     adc   a,#$0b
17b4: 1c        asl   a
17b5: fd        mov   y,a
17b6: f6 fb 07  mov   a,$07fb+y
17b9: c4 c0     mov   $c0,a
17bb: f6 fc 07  mov   a,$07fc+y
17be: c4 c1     mov   $c1,a
17c0: f4 a9     mov   a,$a9+x
17c2: 30 1b     bmi   $17df
17c4: fc        inc   y
17c5: fc        inc   y
17c6: 2d        push  a
17c7: f6 fc 07  mov   a,$07fc+y
17ca: 2d        push  a
17cb: f6 fb 07  mov   a,$07fb+y
17ce: ee        pop   y
17cf: 9a c0     subw  ya,$c0
17d1: da c2     movw  $c2,ya
17d3: ae        pop   a
17d4: 3f 25 18  call  $1825
17d7: ba c2     movw  ya,$c2
17d9: 7a c0     addw  ya,$c0
17db: da c0     movw  $c0,ya
17dd: 2f 20     bra   $17ff
17df: dc        dec   y
17e0: dc        dec   y
17e1: 48 ff     eor   a,#$ff
17e3: bc        inc   a
17e4: 2d        push  a
17e5: f6 fc 07  mov   a,$07fc+y
17e8: 2d        push  a
17e9: f6 fb 07  mov   a,$07fb+y
17ec: ee        pop   y
17ed: da c2     movw  $c2,ya
17ef: ba c0     movw  ya,$c0
17f1: 9a c2     subw  ya,$c2
17f3: da c2     movw  $c2,ya
17f5: ae        pop   a
17f6: 3f 25 18  call  $1825
17f9: ba c0     movw  ya,$c0
17fb: 9a c2     subw  ya,$c2
17fd: da c0     movw  $c0,ya
17ff: f5 f5 03  mov   a,$03f5+x
1802: eb c1     mov   y,$c1
1804: cf        mul   ya
1805: da c2     movw  $c2,ya
1807: f5 f6 03  mov   a,$03f6+x
180a: eb c0     mov   y,$c0
180c: cf        mul   ya
180d: 7a c2     addw  ya,$c2
180f: da c2     movw  $c2,ya
1811: f5 f5 03  mov   a,$03f5+x
1814: eb c0     mov   y,$c0
1816: cf        mul   ya
1817: 6d        push  y
1818: f5 f6 03  mov   a,$03f6+x
181b: eb c1     mov   y,$c1
181d: cf        mul   ya
181e: fd        mov   y,a
181f: ae        pop   a
1820: 7a c2     addw  ya,$c2
1822: da c2     movw  $c2,ya
1824: 6f        ret

1825: 68 7f     cmp   a,#$7f
1827: f0 1a     beq   $1843
1829: 1c        asl   a
182a: 68 80     cmp   a,#$80
182c: 90 01     bcc   $182f
182e: bc        inc   a
182f: 2d        push  a
1830: eb c2     mov   y,$c2
1832: cf        mul   ya
1833: cb c2     mov   $c2,y
1835: ae        pop   a
1836: eb c3     mov   y,$c3
1838: cf        mul   ya
1839: 60        clrc
183a: 84 c2     adc   a,$c2
183c: c4 c2     mov   $c2,a
183e: dd        mov   a,y
183f: 84 c3     adc   a,$c3
1841: c4 c3     mov   $c3,a
1843: 6f        ret

1844: 3f 5d 18  call  $185d
1847: b0 0e     bcs   $1857
1849: f5 cd 04  mov   a,$04cd+x
184c: 1c        asl   a
184d: fd        mov   y,a
184e: f6 ce 04  mov   a,$04ce+y
1851: 28 02     and   a,#$02
1853: f0 02     beq   $1857
1855: 80        setc
1856: 6f        ret

1857: f5 cd 04  mov   a,$04cd+x
185a: 68 08     cmp   a,#$08
185c: 6f        ret

185d: 2d        push  a
185e: f5 dd 03  mov   a,$03dd+x
1861: fd        mov   y,a
1862: f6 1d 05  mov   a,$051d+y
1865: 65 8c 21  cmp   a,$218c
1868: ae        pop   a
1869: 6f        ret

186a: f5 0d 04  mov   a,$040d+x
186d: 28 02     and   a,#$02
186f: d0 08     bne   $1879
1871: f5 0d 04  mov   a,$040d+x
1874: 28 01     and   a,#$01
1876: d0 3b     bne   $18b3
1878: 6f        ret

1879: 3f d8 18  call  $18d8
187c: 68 00     cmp   a,#$00
187e: f0 0c     beq   $188c
1880: 68 fe     cmp   a,#$fe
1882: f0 10     beq   $1894
1884: 68 ff     cmp   a,#$ff
1886: f0 22     beq   $18aa
1888: d5 59 03  mov   $0359+x,a
188b: 6f        ret

188c: 3f d8 18  call  $18d8
188f: d5 5a 03  mov   $035a+x,a
1892: 2f e5     bra   $1879
1894: 3f d8 18  call  $18d8
1897: c4 c2     mov   $c2,a
1899: 3f d8 18  call  $18d8
189c: c4 c3     mov   $c3,a
189e: f4 78     mov   a,$78+x
18a0: fb 79     mov   y,$79+x
18a2: 7a c2     addw  ya,$c2
18a4: d4 78     mov   $78+x,a
18a6: db 79     mov   $79+x,y
18a8: 2f cf     bra   $1879
18aa: f5 0d 04  mov   a,$040d+x
18ad: 28 fd     and   a,#$fd
18af: d5 0d 04  mov   $040d+x,a
18b2: 6f        ret

18b3: c8 00     cmp   x,#$00
18b5: f0 20     beq   $18d7
18b7: f5 dd 03  mov   a,$03dd+x
18ba: c4 c0     mov   $c0,a
18bc: 7d        mov   a,x
18bd: fd        mov   y,a
18be: dc        dec   y
18bf: dc        dec   y
18c0: ad 00     cmp   y,#$00
18c2: 30 13     bmi   $18d7
18c4: f6 dd 03  mov   a,$03dd+y
18c7: 64 c0     cmp   a,$c0
18c9: d0 f3     bne   $18be
18cb: f6 59 03  mov   a,$0359+y
18ce: d5 59 03  mov   $0359+x,a
18d1: f6 5a 03  mov   a,$035a+y
18d4: d5 5a 03  mov   $035a+x,a
18d7: 6f        ret

18d8: e7 78     mov   a,($78+x)
18da: bb 78     inc   $78+x
18dc: f0 01     beq   $18df
18de: 6f        ret

18df: bb 79     inc   $79+x
18e1: 6f        ret

18e2: f5 3e 04  mov   a,$043e+x
18e5: d0 01     bne   $18e8
18e7: 6f        ret

18e8: f5 55 04  mov   a,$0455+x
18eb: 10 22     bpl   $190f
18ed: 28 7f     and   a,#$7f
18ef: c4 c1     mov   $c1,a
18f1: f4 a9     mov   a,$a9+x
18f3: 10 07     bpl   $18fc
18f5: 8b c1     dec   $c1
18f7: 3f 94 19  call  $1994
18fa: 88 80     adc   a,#$80
18fc: 3f 4e 19  call  $194e
18ff: 8b c2     dec   $c2
1901: 30 05     bmi   $1908
1903: 3f 94 19  call  $1994
1906: 2f f7     bra   $18ff
1908: e4 c3     mov   a,$c3
190a: 5c        lsr   a
190b: d4 a9     mov   $a9+x,a
190d: 2f 2b     bra   $193a
190f: c4 c1     mov   $c1,a
1911: f4 a9     mov   a,$a9+x
1913: f0 11     beq   $1926
1915: 30 0c     bmi   $1923
1917: 8b c1     dec   $c1
1919: 3f 9d 19  call  $199d
191c: e8 80     mov   a,#$80
191e: 80        setc
191f: b4 a9     sbc   a,$a9+x
1921: 2f 03     bra   $1926
1923: 48 ff     eor   a,#$ff
1925: bc        inc   a
1926: 3f 4e 19  call  $194e
1929: 8b c2     dec   $c2
192b: 30 05     bmi   $1932
192d: 3f 9d 19  call  $199d
1930: 2f f7     bra   $1929
1932: e4 c3     mov   a,$c3
1934: 5c        lsr   a
1935: 48 ff     eor   a,#$ff
1937: bc        inc   a
1938: d4 a9     mov   $a9+x,a
193a: 3f 80 17  call  $1780
193d: f5 3e 04  mov   a,$043e+x
1940: 9c        dec   a
1941: d5 3e 04  mov   $043e+x,a
1944: f5 b6 04  mov   a,$04b6+x
1947: f0 04     beq   $194d
1949: 9c        dec   a
194a: d5 b6 04  mov   $04b6+x,a
194d: 6f        ret

194e: 1c        asl   a
194f: 68 80     cmp   a,#$80
1951: 90 01     bcc   $1954
1953: bc        inc   a
1954: c4 c0     mov   $c0,a
1956: 4d        push  x
1957: f5 3e 04  mov   a,$043e+x
195a: 5d        mov   x,a
195b: e4 c1     mov   a,$c1
195d: 8d 00     mov   y,#$00
195f: 9e        div   ya,x
1960: c4 c2     mov   $c2,a
1962: e4 c0     mov   a,$c0
1964: 9e        div   ya,x
1965: ce        pop   x
1966: c4 c3     mov   $c3,a
1968: e4 c0     mov   a,$c0
196a: 80        setc
196b: a4 c3     sbc   a,$c3
196d: b0 02     bcs   $1971
196f: ab c2     inc   $c2
1971: c4 c3     mov   $c3,a
1973: dd        mov   a,y
1974: 60        clrc
1975: 95 b6 04  adc   a,$04b6+x
1978: b0 09     bcs   $1983
197a: 75 3e 04  cmp   a,$043e+x
197d: b0 04     bcs   $1983
197f: d5 b6 04  mov   $04b6+x,a
1982: 6f        ret

1983: b5 3e 04  sbc   a,$043e+x
1986: d5 b6 04  mov   $04b6+x,a
1989: 8b c3     dec   $c3
198b: e4 c3     mov   a,$c3
198d: 68 ff     cmp   a,#$ff
198f: d0 02     bne   $1993
1991: ab c2     inc   $c2
1993: 6f        ret

1994: f5 72 03  mov   a,$0372+x
1997: 9c        dec   a
1998: d5 72 03  mov   $0372+x,a
199b: 2f 07     bra   $19a4
199d: f5 72 03  mov   a,$0372+x
19a0: bc        inc   a
19a1: d5 72 03  mov   $0372+x,a
19a4: f5 55 04  mov   a,$0455+x
19a7: 9c        dec   a
19a8: d5 55 04  mov   $0455+x,a
19ab: 6f        ret

19ac: f5 56 04  mov   a,$0456+x
19af: d0 01     bne   $19b2
19b1: 6f        ret

19b2: f5 85 04  mov   a,$0485+x
19b5: 60        clrc
19b6: 95 6d 04  adc   a,$046d+x
19b9: d5 85 04  mov   $0485+x,a
19bc: b0 05     bcs   $19c3
19be: 75 56 04  cmp   a,$0456+x
19c1: 90 07     bcc   $19ca
19c3: b5 56 04  sbc   a,$0456+x
19c6: d5 85 04  mov   $0485+x,a
19c9: 80        setc
19ca: 0d        push  psw
19cb: f5 0d 04  mov   a,$040d+x
19ce: 28 08     and   a,#$08
19d0: f0 14     beq   $19e6
19d2: f4 48     mov   a,$48+x
19d4: 8e        pop   psw
19d5: ed        notc
19d6: b5 6e 04  sbc   a,$046e+x
19d9: 30 1c     bmi   $19f7
19db: 50 1a     bvc   $19f7
19dd: e8 00     mov   a,#$00
19df: d5 56 04  mov   $0456+x,a
19e2: e8 81     mov   a,#$81
19e4: 2f 11     bra   $19f7
19e6: f4 48     mov   a,$48+x
19e8: 8e        pop   psw
19e9: 95 6e 04  adc   a,$046e+x
19ec: 10 09     bpl   $19f7
19ee: 50 07     bvc   $19f7
19f0: e8 00     mov   a,#$00
19f2: d5 56 04  mov   $0456+x,a
19f5: e8 7f     mov   a,#$7f
19f7: d4 48     mov   $48+x,a
19f9: 6f        ret

19fa: f5 a1 03  mov   a,$03a1+x
19fd: d0 01     bne   $1a00
19ff: 6f        ret

1a00: c4 c0     mov   $c0,a
1a02: 10 09     bpl   $1a0d
1a04: 48 ff     eor   a,#$ff
1a06: bc        inc   a
1a07: 68 80     cmp   a,#$80
1a09: d0 02     bne   $1a0d
1a0b: e8 7f     mov   a,#$7f
1a0d: 8f 00 c1  mov   $c1,#$00
1a10: 1c        asl   a
1a11: 2b c1     rol   $c1
1a13: 1c        asl   a
1a14: 2b c1     rol   $c1
1a16: 60        clrc
1a17: 95 85 04  adc   a,$0485+x
1a1a: 0d        push  psw
1a1b: d5 85 04  mov   $0485+x,a
1a1e: e4 c0     mov   a,$c0
1a20: 10 10     bpl   $1a32
1a22: f5 a2 03  mov   a,$03a2+x
1a25: 8e        pop   psw
1a26: ed        notc
1a27: a4 c1     sbc   a,$c1
1a29: b0 15     bcs   $1a40
1a2b: e8 00     mov   a,#$00
1a2d: d5 a1 03  mov   $03a1+x,a
1a30: 2f 0e     bra   $1a40
1a32: f5 a2 03  mov   a,$03a2+x
1a35: 8e        pop   psw
1a36: 84 c1     adc   a,$c1
1a38: 90 06     bcc   $1a40
1a3a: e8 00     mov   a,#$00
1a3c: d5 a1 03  mov   $03a1+x,a
1a3f: 9c        dec   a
1a40: d5 a2 03  mov   $03a2+x,a
1a43: 6f        ret

1a44: f5 9e 04  mov   a,$049e+x
1a47: d0 01     bne   $1a4a
1a49: 6f        ret

1a4a: e8 00     mov   a,#$00
1a4c: c4 c0     mov   $c0,a
1a4e: f5 9d 04  mov   a,$049d+x
1a51: 80        setc
1a52: b5 31 00  sbc   a,$0031+x
1a55: b0 0f     bcs   $1a66
1a57: d0 04     bne   $1a5d
1a59: d5 9e 04  mov   $049e+x,a
1a5c: 6f        ret

1a5d: 2d        push  a
1a5e: e8 01     mov   a,#$01
1a60: c4 c0     mov   $c0,a
1a62: ae        pop   a
1a63: 48 ff     eor   a,#$ff
1a65: bc        inc   a
1a66: 4d        push  x
1a67: 2d        push  a
1a68: f5 9e 04  mov   a,$049e+x
1a6b: 5d        mov   x,a
1a6c: ae        pop   a
1a6d: 8d 00     mov   y,#$00
1a6f: 9e        div   ya,x
1a70: c4 c1     mov   $c1,a
1a72: e8 00     mov   a,#$00
1a74: 9e        div   ya,x
1a75: ce        pop   x
1a76: 60        clrc
1a77: 95 b5 04  adc   a,$04b5+x
1a7a: d5 b5 04  mov   $04b5+x,a
1a7d: b0 05     bcs   $1a84
1a7f: 75 9e 04  cmp   a,$049e+x
1a82: 90 07     bcc   $1a8b
1a84: b5 9e 04  sbc   a,$049e+x
1a87: d5 b5 04  mov   $04b5+x,a
1a8a: 80        setc
1a8b: 0d        push  psw
1a8c: e4 c0     mov   a,$c0
1a8e: f0 0c     beq   $1a9c
1a90: f4 31     mov   a,$31+x
1a92: 8e        pop   psw
1a93: ed        notc
1a94: a4 c1     sbc   a,$c1
1a96: b0 0d     bcs   $1aa5
1a98: e8 00     mov   a,#$00
1a9a: 2f 09     bra   $1aa5
1a9c: f4 31     mov   a,$31+x
1a9e: 8e        pop   psw
1a9f: 84 c1     adc   a,$c1
1aa1: 90 02     bcc   $1aa5
1aa3: e8 ff     mov   a,#$ff
1aa5: d4 31     mov   $31+x,a
1aa7: f5 9e 04  mov   a,$049e+x
1aaa: 9c        dec   a
1aab: d5 9e 04  mov   $049e+x,a
1aae: 6f        ret

1aaf: f5 35 05  mov   a,$0535+x
1ab2: d0 01     bne   $1ab5
1ab4: 6f        ret

1ab5: c4 c0     mov   $c0,a
1ab7: 10 09     bpl   $1ac2
1ab9: 48 ff     eor   a,#$ff
1abb: bc        inc   a
1abc: 68 80     cmp   a,#$80
1abe: d0 02     bne   $1ac2
1ac0: e8 7f     mov   a,#$7f
1ac2: 8f 00 c1  mov   $c1,#$00
1ac5: 1c        asl   a
1ac6: 2b c1     rol   $c1
1ac8: 1c        asl   a
1ac9: 2b c1     rol   $c1
1acb: 1c        asl   a
1acc: 2b c1     rol   $c1
1ace: 60        clrc
1acf: 95 3d 05  adc   a,$053d+x
1ad2: 0d        push  psw
1ad3: d5 3d 05  mov   $053d+x,a
1ad6: e4 c0     mov   a,$c0
1ad8: 10 1f     bpl   $1af9
1ada: f5 15 05  mov   a,$0515+x
1add: 8e        pop   psw
1ade: ed        notc
1adf: a4 c1     sbc   a,$c1
1ae1: b0 29     bcs   $1b0c
1ae3: e8 00     mov   a,#$00
1ae5: d5 35 05  mov   $0535+x,a
1ae8: d5 15 05  mov   $0515+x,a
1aeb: f5 45 05  mov   a,$0545+x
1aee: 28 01     and   a,#$01
1af0: d0 01     bne   $1af3
1af2: 6f        ret

1af3: 7d        mov   a,x
1af4: fd        mov   y,a
1af5: 3f 3f 1e  call  $1e3f
1af8: 6f        ret

1af9: f5 15 05  mov   a,$0515+x
1afc: 8e        pop   psw
1afd: 84 c1     adc   a,$c1
1aff: b0 04     bcs   $1b05
1b01: 68 ff     cmp   a,#$ff
1b03: 90 07     bcc   $1b0c
1b05: e8 00     mov   a,#$00
1b07: d5 35 05  mov   $0535+x,a
1b0a: e8 ff     mov   a,#$ff
1b0c: d5 15 05  mov   $0515+x,a
1b0f: 6f        ret

1b10: 20        clrp
1b11: f4 61     mov   a,$61+x
1b13: 9c        dec   a
1b14: d4 61     mov   $61+x,a
1b16: d0 2b     bne   $1b43
1b18: fb 49     mov   y,$49+x
1b1a: f6 e7 08  mov   a,$08e7+y
1b1d: c4 c0     mov   $c0,a
1b1f: f6 e8 08  mov   a,$08e8+y
1b22: c4 c1     mov   $c1,a
1b24: fb 60     mov   y,$60+x
1b26: f7 c0     mov   a,($c0)+y
1b28: 68 ff     cmp   a,#$ff
1b2a: f0 17     beq   $1b43
1b2c: d5 25 04  mov   $0425+x,a
1b2f: fc        inc   y
1b30: f7 c0     mov   a,($c0)+y
1b32: fc        inc   y
1b33: d4 61     mov   $61+x,a
1b35: dd        mov   a,y
1b36: d4 60     mov   $60+x,a
1b38: 8d 00     mov   y,#$00
1b3a: 77 c0     cmp   a,($c0)+y
1b3c: d0 05     bne   $1b43
1b3e: fc        inc   y
1b3f: f7 c0     mov   a,($c0)+y
1b41: d4 60     mov   $60+x,a
1b43: 6f        ret

1b44: f4 90     mov   a,$90+x
1b46: 68 ff     cmp   a,#$ff
1b48: f0 31     beq   $1b7b
1b4a: 9b a8     dec   $a8+x
1b4c: d0 2d     bne   $1b7b
1b4e: fb 90     mov   y,$90+x
1b50: f6 95 09  mov   a,$0995+y
1b53: c4 c0     mov   $c0,a
1b55: f6 96 09  mov   a,$0996+y
1b58: c4 c1     mov   $c1,a
1b5a: fb 91     mov   y,$91+x
1b5c: f7 c0     mov   a,($c0)+y
1b5e: 68 80     cmp   a,#$80
1b60: f0 19     beq   $1b7b
1b62: d4 a9     mov   $a9+x,a
1b64: fc        inc   y
1b65: f7 c0     mov   a,($c0)+y
1b67: fc        inc   y
1b68: d4 a8     mov   $a8+x,a
1b6a: dd        mov   a,y
1b6b: d4 91     mov   $91+x,a
1b6d: 8d 00     mov   y,#$00
1b6f: 77 c0     cmp   a,($c0)+y
1b71: d0 05     bne   $1b78
1b73: fc        inc   y
1b74: f7 c0     mov   a,($c0)+y
1b76: d4 91     mov   $91+x,a
1b78: 3f 80 17  call  $1780
1b7b: 6f        ret

1b7c: f5 0d 04  mov   a,$040d+x
1b7f: 08 20     or    a,#$20
1b81: d5 0d 04  mov   $040d+x,a
1b84: 3f 44 18  call  $1844
1b87: b0 12     bcs   $1b9b
1b89: fd        mov   y,a
1b8a: f6 f3 07  mov   a,$07f3+y
1b8d: 05 5e 05  or    a,$055e
1b90: c5 5e 05  mov   $055e,a
1b93: 8d 3d     mov   y,#$3d
1b95: 20        clrp
1b96: cb f2     mov   $f2,y
1b98: c4 f3     mov   $f3,a             ; NON
1b9a: 20        clrp
1b9b: 6f        ret

1b9c: f5 0d 04  mov   a,$040d+x
1b9f: 28 df     and   a,#$df
1ba1: d5 0d 04  mov   $040d+x,a
1ba4: 3f 44 18  call  $1844
1ba7: b0 14     bcs   $1bbd
1ba9: fd        mov   y,a
1baa: f6 f3 07  mov   a,$07f3+y
1bad: 48 ff     eor   a,#$ff
1baf: 25 5e 05  and   a,$055e
1bb2: c5 5e 05  mov   $055e,a
1bb5: 8d 3d     mov   y,#$3d
1bb7: 20        clrp
1bb8: cb f2     mov   $f2,y
1bba: c4 f3     mov   $f3,a             ; NON
1bbc: 20        clrp
1bbd: 6f        ret

1bbe: f5 0d 04  mov   a,$040d+x
1bc1: 08 40     or    a,#$40
1bc3: d5 0d 04  mov   $040d+x,a
1bc6: 3f 44 18  call  $1844
1bc9: b0 12     bcs   $1bdd
1bcb: fd        mov   y,a
1bcc: f6 f3 07  mov   a,$07f3+y
1bcf: 05 5f 05  or    a,$055f
1bd2: c5 5f 05  mov   $055f,a
1bd5: 8d 4d     mov   y,#$4d
1bd7: 20        clrp
1bd8: cb f2     mov   $f2,y
1bda: c4 f3     mov   $f3,a             ; EON
1bdc: 20        clrp
1bdd: 6f        ret

1bde: f5 0d 04  mov   a,$040d+x
1be1: 28 bf     and   a,#$bf
1be3: d5 0d 04  mov   $040d+x,a
1be6: 3f 44 18  call  $1844
1be9: b0 14     bcs   $1bff
1beb: fd        mov   y,a
1bec: f6 f3 07  mov   a,$07f3+y
1bef: 48 ff     eor   a,#$ff
1bf1: 25 5f 05  and   a,$055f
1bf4: c5 5f 05  mov   $055f,a
1bf7: 8d 4d     mov   y,#$4d
1bf9: 20        clrp
1bfa: cb f2     mov   $f2,y
1bfc: c4 f3     mov   $f3,a             ; EON
1bfe: 20        clrp
1bff: 6f        ret

1c00: 8d 00     mov   y,#$00
1c02: 2d        push  a
1c03: f6 25 05  mov   a,$0525+y
1c06: f0 0c     beq   $1c14
1c08: ae        pop   a
1c09: 76 1d 05  cmp   a,$051d+y
1c0c: f0 09     beq   $1c17
1c0e: fc        inc   y
1c0f: ad 08     cmp   y,#$08
1c11: 90 ef     bcc   $1c02
1c13: 6f        ret

1c14: ae        pop   a
1c15: 2f f7     bra   $1c0e
1c17: 60        clrc
1c18: 6f        ret

1c19: 20        clrp
1c1a: e5 65 05  mov   a,$0565
1c1d: d0 01     bne   $1c20
1c1f: 6f        ret

1c20: 60        clrc
1c21: 85 64 05  adc   a,$0564
1c24: c5 64 05  mov   $0564,a
1c27: b0 01     bcs   $1c2a
1c29: 6f        ret

1c2a: 20        clrp
1c2b: 8f 00 c0  mov   $c0,#$00
1c2e: 8f 0c f2  mov   $f2,#$0c
1c31: e4 f3     mov   a,$f3             ; MVOL(L)
1c33: f0 03     beq   $1c38
1c35: 9c        dec   a
1c36: c4 f3     mov   $f3,a             ; MVOL(L)
1c38: 04 c0     or    a,$c0
1c3a: c4 c0     mov   $c0,a
1c3c: 8f 1c f2  mov   $f2,#$1c
1c3f: e4 f3     mov   a,$f3             ; MVOL(R)
1c41: f0 03     beq   $1c46
1c43: 9c        dec   a
1c44: c4 f3     mov   $f3,a             ; MVOL(R)
1c46: 04 c0     or    a,$c0
1c48: c4 c0     mov   $c0,a
1c4a: 8f 2c f2  mov   $f2,#$2c
1c4d: e4 f3     mov   a,$f3             ; EVOL(L)
1c4f: f0 03     beq   $1c54
1c51: 9c        dec   a
1c52: c4 f3     mov   $f3,a             ; EVOL(L)
1c54: 04 c0     or    a,$c0
1c56: c4 c0     mov   $c0,a
1c58: 8f 3c f2  mov   $f2,#$3c
1c5b: e4 f3     mov   a,$f3             ; EVOL(R)
1c5d: f0 03     beq   $1c62
1c5f: 9c        dec   a
1c60: c4 f3     mov   $f3,a             ; EVOL(R)
1c62: 04 c0     or    a,$c0
1c64: 20        clrp
1c65: f0 01     beq   $1c68
1c67: 6f        ret

1c68: 40        setp
1c69: 5f 9c 0b  jmp   $0b9c
1c6c: 20        clrp
1c6d: 1c        asl   a
1c6e: 4d        push  x
1c6f: 5d        mov   x,a
1c70: f5 fa 08  mov   a,$08fa+x
1c73: c4 c6     mov   $c6,a
1c75: f5 fb 08  mov   a,$08fb+x
1c78: c4 c7     mov   $c7,a
1c7a: ce        pop   x
1c7b: 4d        push  x
1c7c: 6d        push  y
1c7d: 3f 56 1e  call  $1e56
1c80: 68 10     cmp   a,#$10
1c82: b0 05     bcs   $1c89
1c84: 3f b7 1c  call  $1cb7
1c87: 2f 19     bra   $1ca2
1c89: 68 20     cmp   a,#$20
1c8b: b0 05     bcs   $1c92
1c8d: 3f 04 1d  call  $1d04
1c90: 2f 10     bra   $1ca2
1c92: 68 e0     cmp   a,#$e0
1c94: b0 05     bcs   $1c9b
1c96: 3f e5 1d  call  $1de5
1c99: 2f 07     bra   $1ca2
1c9b: 68 fe     cmp   a,#$fe
1c9d: d0 07     bne   $1ca6
1c9f: 3f a9 1c  call  $1ca9
1ca2: ee        pop   y
1ca3: ce        pop   x
1ca4: 2f d5     bra   $1c7b
1ca6: ee        pop   y
1ca7: ce        pop   x
1ca8: 6f        ret

; set dsp reg from ...
1ca9: 3f 56 1e  call  $1e56
1cac: fd        mov   y,a
1cad: 3f 56 1e  call  $1e56
1cb0: 20        clrp
1cb1: cb f2     mov   $f2,y
1cb3: c4 f3     mov   $f3,a
1cb5: 20        clrp
1cb6: 6f        ret

1cb7: 68 00     cmp   a,#$00
1cb9: d0 07     bne   $1cc2
1cbb: 3f 56 1e  call  $1e56
1cbe: d6 15 05  mov   $0515+y,a
1cc1: 6f        ret

1cc2: 68 01     cmp   a,#$01
1cc4: d0 0c     bne   $1cd2
1cc6: 3f 56 1e  call  $1e56
1cc9: d6 35 05  mov   $0535+y,a
1ccc: e8 80     mov   a,#$80
1cce: d6 3d 05  mov   $053d+y,a
1cd1: 6f        ret

1cd2: 68 02     cmp   a,#$02
1cd4: d0 07     bne   $1cdd
1cd6: 3f 56 1e  call  $1e56
1cd9: d6 25 05  mov   $0525+y,a
1cdc: 6f        ret

1cdd: 68 03     cmp   a,#$03
1cdf: d0 04     bne   $1ce5
1ce1: 3f 3f 1e  call  $1e3f
1ce4: 6f        ret

1ce5: 68 04     cmp   a,#$04
1ce7: d0 0f     bne   $1cf8
1ce9: f6 45 05  mov   a,$0545+y
1cec: 08 01     or    a,#$01
1cee: d6 45 05  mov   $0545+y,a
1cf1: 3f 56 1e  call  $1e56
1cf4: d6 35 05  mov   $0535+y,a
1cf7: 6f        ret

1cf8: 68 05     cmp   a,#$05
1cfa: d0 07     bne   $1d03
1cfc: 3f 56 1e  call  $1e56
1cff: d6 55 05  mov   $0555+y,a
1d02: 6f        ret

1d03: 6f        ret

1d04: 68 10     cmp   a,#$10
1d06: d0 15     bne   $1d1d
1d08: 8d 0f     mov   y,#$0f
1d0a: 3f 56 1e  call  $1e56
1d0d: 20        clrp
1d0e: cb f2     mov   $f2,y
1d10: c4 f3     mov   $f3,a             ; FIR
1d12: 20        clrp
1d13: dd        mov   a,y
1d14: 60        clrc
1d15: 88 10     adc   a,#$10
1d17: fd        mov   y,a
1d18: ad 80     cmp   y,#$80
1d1a: 90 ee     bcc   $1d0a
1d1c: 6f        ret

1d1d: 68 11     cmp   a,#$11
1d1f: d0 06     bne   $1d27
1d21: e8 00     mov   a,#$00
1d23: c5 5d 05  mov   $055d,a
1d26: 6f        ret

1d27: 68 12     cmp   a,#$12
1d29: d0 06     bne   $1d31
1d2b: e8 01     mov   a,#$01
1d2d: c5 5d 05  mov   $055d,a
1d30: 6f        ret

1d31: 68 13     cmp   a,#$13
1d33: d0 17     bne   $1d4c
1d35: 3f 56 1e  call  $1e56
1d38: 8d 0c     mov   y,#$0c
1d3a: 20        clrp
1d3b: cb f2     mov   $f2,y
1d3d: c4 f3     mov   $f3,a             ; MVOL(L)
1d3f: 20        clrp
1d40: 3f 56 1e  call  $1e56
1d43: 8d 1c     mov   y,#$1c
1d45: 20        clrp
1d46: cb f2     mov   $f2,y
1d48: c4 f3     mov   $f3,a             ; MVOL(R)
1d4a: 20        clrp
1d4b: 6f        ret

1d4c: 68 14     cmp   a,#$14
1d4e: d0 26     bne   $1d76
1d50: e4 c9     mov   a,$c9
1d52: d0 17     bne   $1d6b
1d54: 3f 56 1e  call  $1e56
1d57: 8d 2c     mov   y,#$2c
1d59: 20        clrp
1d5a: cb f2     mov   $f2,y
1d5c: c4 f3     mov   $f3,a             ; EVOL(L)
1d5e: 20        clrp
1d5f: 3f 56 1e  call  $1e56
1d62: 8d 3c     mov   y,#$3c
1d64: 20        clrp
1d65: cb f2     mov   $f2,y
1d67: c4 f3     mov   $f3,a             ; EVOL(R)
1d69: 20        clrp
1d6a: 6f        ret

1d6b: 3f 56 1e  call  $1e56
1d6e: c4 cd     mov   $cd,a
1d70: 3f 56 1e  call  $1e56
1d73: c4 cc     mov   $cc,a
1d75: 6f        ret

1d76: 68 15     cmp   a,#$15
1d78: d0 15     bne   $1d8f
1d7a: 3f 56 1e  call  $1e56
1d7d: 20        clrp
1d7e: 28 1f     and   a,#$1f
1d80: 38 e0 cb  and   $cb,#$e0
1d83: 04 cb     or    a,$cb
1d85: c4 cb     mov   $cb,a
1d87: 20        clrp
1d88: 8f 6c f2  mov   $f2,#$6c
1d8b: c4 f3     mov   $f3,a             ; FLG
1d8d: 20        clrp
1d8e: 6f        ret

1d8f: 68 16     cmp   a,#$16
1d91: d0 16     bne   $1da9
1d93: e4 c9     mov   a,$c9
1d95: d0 0c     bne   $1da3
1d97: 3f 56 1e  call  $1e56
1d9a: 8d 0d     mov   y,#$0d
1d9c: 20        clrp
1d9d: cb f2     mov   $f2,y
1d9f: c4 f3     mov   $f3,a             ; EFB
1da1: 20        clrp
1da2: 6f        ret

1da3: 3f 56 1e  call  $1e56
1da6: c4 ce     mov   $ce,a
1da8: 6f        ret

1da9: 68 17     cmp   a,#$17
1dab: d0 37     bne   $1de4
1dad: 3f 56 1e  call  $1e56
1db0: 68 01     cmp   a,#$01
1db2: 90 02     bcc   $1db6
1db4: e8 01     mov   a,#$01
1db6: 8d 7d     mov   y,#$7d
1db8: 20        clrp
1db9: cb f2     mov   $f2,y
1dbb: c4 f3     mov   $f3,a             ; EDL
1dbd: 20        clrp
1dbe: 1c        asl   a
1dbf: 1c        asl   a
1dc0: c4 c9     mov   $c9,a
1dc2: 1c        asl   a
1dc3: c4 ca     mov   $ca,a
1dc5: 18 20 cb  or    $cb,#$20
1dc8: e4 cb     mov   a,$cb
1dca: 20        clrp
1dcb: 8f 6c f2  mov   $f2,#$6c
1dce: c4 f3     mov   $f3,a             ; FLG
1dd0: 8f 2c f2  mov   $f2,#$2c
1dd3: 8f 00 f3  mov   $f3,#$00          ; EVOL(L)
1dd6: 8f 3c f2  mov   $f2,#$3c
1dd9: 8f 00 f3  mov   $f3,#$00          ; EVOL(R)
1ddc: 8f 0d f2  mov   $f2,#$0d
1ddf: 8f 00 f3  mov   $f3,#$00          ; EFB
1de2: 20        clrp
1de3: 6f        ret

1de4: 6f        ret

1de5: 9f        xcn   a
1de6: 9c        dec   a
1de7: 9c        dec   a
1de8: 3f 60 1e  call  $1e60
1deb: 90 01     bcc   $1dee
1ded: 6f        ret

1dee: 28 f0     and   a,#$f0
1df0: 68 00     cmp   a,#$00
1df2: d0 0c     bne   $1e00
1df4: 3f 56 1e  call  $1e56
1df7: d5 a1 03  mov   $03a1+x,a
1dfa: e8 80     mov   a,#$80
1dfc: d5 85 04  mov   $0485+x,a
1dff: 6f        ret

1e00: 68 10     cmp   a,#$10
1e02: d0 06     bne   $1e0a
1e04: 3f 56 1e  call  $1e56
1e07: d4 30     mov   $30+x,a
1e09: 6f        ret

1e0a: 68 20     cmp   a,#$20
1e0c: d0 04     bne   $1e12
1e0e: 3f be 1b  call  $1bbe
1e11: 6f        ret

1e12: 68 30     cmp   a,#$30
1e14: d0 04     bne   $1e1a
1e16: 3f de 1b  call  $1bde
1e19: 6f        ret

1e1a: 68 40     cmp   a,#$40
1e1c: d0 04     bne   $1e22
1e1e: 3f 7c 1b  call  $1b7c
1e21: 6f        ret

1e22: 68 50     cmp   a,#$50
1e24: d0 04     bne   $1e2a
1e26: 3f 9c 1b  call  $1b9c
1e29: 6f        ret

1e2a: 68 60     cmp   a,#$60
1e2c: d0 04     bne   $1e32
1e2e: 3f 3d 12  call  $123d
1e31: 6f        ret

1e32: 68 b0     cmp   a,#$b0
1e34: b0 08     bcs   $1e3e
1e36: 9f        xcn   a
1e37: 80        setc
1e38: a8 07     sbc   a,#$07
1e3a: d5 e6 04  mov   $04e6+x,a
1e3d: 6f        ret

1e3e: 6f        ret

1e3f: 20        clrp
1e40: 4d        push  x
1e41: cd 00     mov   x,#$00
1e43: dd        mov   a,y
1e44: 75 dd 03  cmp   a,$03dd+x
1e47: d0 05     bne   $1e4e
1e49: 2d        push  a
1e4a: 3f 3d 12  call  $123d
1e4d: ae        pop   a
1e4e: 3d        inc   x
1e4f: 3d        inc   x
1e50: c8 18     cmp   x,#$18
1e52: 90 f0     bcc   $1e44
1e54: ce        pop   x
1e55: 6f        ret

1e56: 20        clrp
1e57: 6d        push  y
1e58: 8d 00     mov   y,#$00
1e5a: f7 c6     mov   a,($c6)+y
1e5c: 3a c6     incw  $c6
1e5e: ee        pop   y
1e5f: 6f        ret

1e60: 2d        push  a
1e61: 28 0f     and   a,#$0f
1e63: c4 c2     mov   $c2,a
1e65: cd 00     mov   x,#$00
1e67: dd        mov   a,y
1e68: 75 dd 03  cmp   a,$03dd+x
1e6b: d0 07     bne   $1e74
1e6d: e4 c2     mov   a,$c2
1e6f: 75 e5 04  cmp   a,$04e5+x
1e72: f0 09     beq   $1e7d
1e74: 3d        inc   x
1e75: 3d        inc   x
1e76: c8 18     cmp   x,#$18
1e78: 90 ed     bcc   $1e67
1e7a: ae        pop   a
1e7b: 80        setc
1e7c: 6f        ret

1e7d: ae        pop   a
1e7e: 60        clrc
1e7f: 6f        ret

1e80: 40        setp
1e81: e5 91 21  mov   a,$2191
1e84: ec 92 21  mov   y,$2192
1e87: da 00     movw  $00,ya
1e89: e8 f6     mov   a,#$f6
1e8b: 8d f6     mov   y,#$f6
1e8d: 9a 00     subw  ya,$00
1e8f: da 02     movw  $02,ya
1e91: e8 01     mov   a,#$01
1e93: c4 82     mov   $82,a
1e95: e8 04     mov   a,#$04
1e97: c4 83     mov   $83,a
1e99: cd 00     mov   x,#$00
1e9b: e8 ff     mov   a,#$ff
1e9d: d5 67 05  mov   $0567+x,a
1ea0: 3d        inc   x
1ea1: c8 c8     cmp   x,#$c8
1ea3: 90 f8     bcc   $1e9d
1ea5: cd 00     mov   x,#$00
1ea7: 7d        mov   a,x
1ea8: d5 00 07  mov   $0700+x,a
1eab: d5 01 07  mov   $0701+x,a
1eae: 3d        inc   x
1eaf: c8 60     cmp   x,#$60
1eb1: 90 f5     bcc   $1ea8
1eb3: 6f        ret

1eb4: 40        setp
1eb5: da 96     movw  $96,ya
1eb7: 3f 0e 1f  call  $1f0e
1eba: 3f d2 1e  call  $1ed2
1ebd: b0 01     bcs   $1ec0
1ebf: 6f        ret

1ec0: ba 96     movw  ya,$96
1ec2: da 9c     movw  $9c,ya
1ec4: 3f 4e 20  call  $204e
1ec7: 3f 0e 1f  call  $1f0e
1eca: ba 9c     movw  ya,$9c
1ecc: da 96     movw  $96,ya
1ece: 3f d2 1e  call  $1ed2
1ed1: 6f        ret

1ed2: 8d 00     mov   y,#$00
1ed4: cb 9a     mov   $9a,y
1ed6: f9 68     mov   x,$68+y
1ed8: f4 02     mov   a,$02+x
1eda: fb 03     mov   y,$03+x
1edc: 5a 96     cmpw  ya,$96
1ede: b0 09     bcs   $1ee9
1ee0: eb 9a     mov   y,$9a
1ee2: fc        inc   y
1ee3: 7e 82     cmp   y,$82
1ee5: 90 ed     bcc   $1ed4
1ee7: 80        setc
1ee8: 6f        ret

1ee9: 9a 96     subw  ya,$96
1eeb: da 9c     movw  $9c,ya
1eed: d4 02     mov   $02+x,a
1eef: db 03     mov   $03+x,y
1ef1: f4 00     mov   a,$00+x
1ef3: fb 01     mov   y,$01+x
1ef5: da 98     movw  $98,ya
1ef7: ba 9c     movw  ya,$9c
1ef9: d0 05     bne   $1f00
1efb: 3f 50 1f  call  $1f50
1efe: 2f 0a     bra   $1f0a
1f00: f4 00     mov   a,$00+x
1f02: fb 01     mov   y,$01+x
1f04: 7a 96     addw  ya,$96
1f06: d4 00     mov   $00+x,a
1f08: db 01     mov   $01+x,y
1f0a: ba 98     movw  ya,$98
1f0c: 60        clrc
1f0d: 6f        ret

1f0e: cd 00     mov   x,#$00
1f10: e8 00     mov   a,#$00
1f12: d4 68     mov   $68+x,a
1f14: 60        clrc
1f15: 88 04     adc   a,#$04
1f17: 3d        inc   x
1f18: 3e 82     cmp   x,$82
1f1a: 90 f6     bcc   $1f12
1f1c: 8d 00     mov   y,#$00
1f1e: cb a0     mov   $a0,y
1f20: f9 68     mov   x,$68+y
1f22: d8 a1     mov   $a1,x
1f24: f4 02     mov   a,$02+x
1f26: fb 03     mov   y,$03+x
1f28: da 9e     movw  $9e,ya
1f2a: fc        inc   y
1f2b: 7e 82     cmp   y,$82
1f2d: b0 19     bcs   $1f48
1f2f: 6d        push  y
1f30: f9 68     mov   x,$68+y
1f32: f4 02     mov   a,$02+x
1f34: fb 03     mov   y,$03+x
1f36: 5a 9e     cmpw  ya,$9e
1f38: b0 0b     bcs   $1f45
1f3a: f9 68     mov   x,$68+y
1f3c: 7d        mov   a,x
1f3d: f8 a0     mov   x,$a0
1f3f: d4 68     mov   $68+x,a
1f41: f8 a1     mov   x,$a1
1f43: d9 68     mov   $68+y,x
1f45: ee        pop   y
1f46: 2f e2     bra   $1f2a
1f48: eb a0     mov   y,$a0
1f4a: fc        inc   y
1f4b: 7e 82     cmp   y,$82
1f4d: 90 cf     bcc   $1f1e
1f4f: 6f        ret

1f50: 40        setp
1f51: 8b 82     dec   $82
1f53: e4 82     mov   a,$82
1f55: 1c        asl   a
1f56: 1c        asl   a
1f57: c4 83     mov   $83,a
1f59: 68 00     cmp   a,#$00
1f5b: f0 0b     beq   $1f68
1f5d: 3e 83     cmp   x,$83
1f5f: b0 07     bcs   $1f68
1f61: f4 04     mov   a,$04+x
1f63: d4 00     mov   $00+x,a
1f65: 3d        inc   x
1f66: 2f f5     bra   $1f5d
1f68: 6f        ret

1f69: 40        setp
1f6a: da 96     movw  $96,ya
1f6c: cd 00     mov   x,#$00
1f6e: 8d 00     mov   y,#$00
1f70: f5 00 07  mov   a,$0700+x
1f73: d0 05     bne   $1f7a
1f75: f5 01 07  mov   a,$0701+x
1f78: f0 0a     beq   $1f84
1f7a: 3d        inc   x
1f7b: 3d        inc   x
1f7c: 3d        inc   x
1f7d: 3d        inc   x
1f7e: fc        inc   y
1f7f: ad 18     cmp   y,#$18
1f81: 90 ed     bcc   $1f70
1f83: 6f        ret

1f84: dd        mov   a,y
1f85: 1c        asl   a
1f86: 1c        asl   a
1f87: 6d        push  y
1f88: 2d        push  a
1f89: e8 08     mov   a,#$08
1f8b: cf        mul   ya
1f8c: 5d        mov   x,a
1f8d: e4 97     mov   a,$97
1f8f: d5 30 06  mov   $0630+x,a
1f92: fd        mov   y,a
1f93: e4 96     mov   a,$96
1f95: d5 2f 06  mov   $062f+x,a
1f98: 3f b4 1e  call  $1eb4
1f9b: b0 0b     bcs   $1fa8
1f9d: ce        pop   x
1f9e: d5 00 07  mov   $0700+x,a
1fa1: dd        mov   a,y
1fa2: d5 01 07  mov   $0701+x,a
1fa5: ee        pop   y
1fa6: 60        clrc
1fa7: 6f        ret

1fa8: ae        pop   a
1fa9: ee        pop   y
1faa: 80        setc
1fab: 6f        ret

1fac: 6f        ret

1fad: 40        setp
1fae: f5 67 05  mov   a,$0567+x
1fb1: 68 ff     cmp   a,#$ff
1fb3: f0 07     beq   $1fbc
1fb5: 3f bd 1f  call  $1fbd
1fb8: e8 00     mov   a,#$00
1fba: d7 96     mov   ($96)+y,a
1fbc: 6f        ret

1fbd: 8f 2f 96  mov   $96,#$2f
1fc0: 8f 06 97  mov   $97,#$06
1fc3: 8d 08     mov   y,#$08
1fc5: cf        mul   ya
1fc6: 7a 96     addw  ya,$96
1fc8: da 96     movw  $96,ya
1fca: 8d 07     mov   y,#$07
1fcc: 6f        ret

1fcd: 40        setp
1fce: 78 18 82  cmp   $82,#$18
1fd1: 90 02     bcc   $1fd5
1fd3: 80        setc
1fd4: 6f        ret

1fd5: cd 00     mov   x,#$00
1fd7: f4 00     mov   a,$00+x
1fd9: fb 01     mov   y,$01+x
1fdb: 5a 96     cmpw  ya,$96
1fdd: b0 08     bcs   $1fe7
1fdf: 3d        inc   x
1fe0: 3d        inc   x
1fe1: 3d        inc   x
1fe2: 3d        inc   x
1fe3: 3e 83     cmp   x,$83
1fe5: 90 f0     bcc   $1fd7
1fe7: d8 9a     mov   $9a,x
1fe9: f8 83     mov   x,$83
1feb: 3e 9a     cmp   x,$9a
1fed: f0 07     beq   $1ff6
1fef: 1d        dec   x
1ff0: f4 00     mov   a,$00+x
1ff2: d4 04     mov   $04+x,a
1ff4: 2f f5     bra   $1feb
1ff6: ab 82     inc   $82
1ff8: e4 83     mov   a,$83
1ffa: 60        clrc
1ffb: 88 04     adc   a,#$04
1ffd: c4 83     mov   $83,a
1fff: f8 9a     mov   x,$9a
2001: ba 96     movw  ya,$96
2003: d4 00     mov   $00+x,a
2005: db 01     mov   $01+x,y
2007: ba 98     movw  ya,$98
2009: d4 02     mov   $02+x,a
200b: db 03     mov   $03+x,y
200d: 7d        mov   a,x
200e: 60        clrc
200f: 88 04     adc   a,#$04
2011: 64 83     cmp   a,$83
2013: b0 03     bcs   $2018
2015: 3f 25 20  call  $2025
2018: e4 9a     mov   a,$9a
201a: 80        setc
201b: a8 04     sbc   a,#$04
201d: 30 04     bmi   $2023
201f: 5d        mov   x,a
2020: 3f 25 20  call  $2025
2023: 60        clrc
2024: 6f        ret

2025: f4 02     mov   a,$02+x
2027: fb 03     mov   y,$03+x
2029: da 96     movw  $96,ya
202b: f4 00     mov   a,$00+x
202d: fb 01     mov   y,$01+x
202f: 7a 96     addw  ya,$96
2031: da 98     movw  $98,ya
2033: f4 04     mov   a,$04+x
2035: fb 05     mov   y,$05+x
2037: 5a 98     cmpw  ya,$98
2039: f0 01     beq   $203c
203b: 6f        ret

203c: f4 06     mov   a,$06+x
203e: fb 07     mov   y,$07+x
2040: 7a 96     addw  ya,$96
2042: d4 02     mov   $02+x,a
2044: db 03     mov   $03+x,y
2046: 3d        inc   x
2047: 3d        inc   x
2048: 3d        inc   x
2049: 3d        inc   x
204a: 3f 50 1f  call  $1f50
204d: 6f        ret

204e: cd 00     mov   x,#$00
2050: f5 67 05  mov   a,$0567+x
2053: 68 ff     cmp   a,#$ff
2055: f0 40     beq   $2097
2057: 8f 2f 9e  mov   $9e,#$2f
205a: 8f 06 9f  mov   $9f,#$06
205d: 8d 08     mov   y,#$08
205f: cf        mul   ya
2060: 7a 9e     addw  ya,$9e
2062: da 9e     movw  $9e,ya
2064: 8d 07     mov   y,#$07
2066: f7 9e     mov   a,($9e)+y
2068: d0 2d     bne   $2097
206a: 8d 00     mov   y,#$00
206c: f7 9e     mov   a,($9e)+y
206e: c4 98     mov   $98,a
2070: fc        inc   y
2071: f7 9e     mov   a,($9e)+y
2073: c4 99     mov   $99,a
2075: f5 67 05  mov   a,$0567+x
2078: 1c        asl   a
2079: 1c        asl   a
207a: fd        mov   y,a
207b: f6 00 07  mov   a,$0700+y
207e: c4 96     mov   $96,a
2080: f6 01 07  mov   a,$0701+y
2083: c4 97     mov   $97,a
2085: e8 00     mov   a,#$00
2087: d6 00 07  mov   $0700+y,a
208a: d6 01 07  mov   $0701+y,a
208d: 4d        push  x
208e: 3f cd 1f  call  $1fcd
2091: ce        pop   x
2092: e8 ff     mov   a,#$ff
2094: d5 67 05  mov   $0567+x,a
2097: 3d        inc   x
2098: c8 c8     cmp   x,#$c8
209a: 90 b4     bcc   $2050
209c: 6f        ret

209d: 40        setp
209e: 5e 8d 21  cmp   y,$218d
20a1: 90 01     bcc   $20a4
20a3: 6f        ret

20a4: 3f 71 21  call  $2171
20a7: e7 96     mov   a,($96+x)
20a9: f0 4b     beq   $20f6
20ab: fd        mov   y,a
20ac: f7 96     mov   a,($96)+y
20ae: 5d        mov   x,a
20af: f5 67 05  mov   a,$0567+x
20b2: 68 ff     cmp   a,#$ff
20b4: f0 42     beq   $20f8
20b6: dc        dec   y
20b7: d0 f3     bne   $20ac
20b9: cd 00     mov   x,#$00
20bb: e7 96     mov   a,($96+x)
20bd: fd        mov   y,a
20be: 6d        push  y
20bf: f7 96     mov   a,($96)+y
20c1: 5d        mov   x,a
20c2: 8f 2f 98  mov   $98,#$2f
20c5: 8f 06 99  mov   $99,#$06
20c8: f5 67 05  mov   a,$0567+x
20cb: 8d 08     mov   y,#$08
20cd: cf        mul   ya
20ce: 7a 98     addw  ya,$98
20d0: da 98     movw  $98,ya
20d2: 8d 07     mov   y,#$07
20d4: f7 98     mov   a,($98)+y
20d6: 28 e0     and   a,#$e0
20d8: 0d        push  psw
20d9: f7 98     mov   a,($98)+y
20db: 8e        pop   psw
20dc: f0 05     beq   $20e3
20de: 80        setc
20df: a8 20     sbc   a,#$20
20e1: d7 98     mov   ($98)+y,a
20e3: f7 98     mov   a,($98)+y
20e5: 28 0f     and   a,#$0f
20e7: 68 0f     cmp   a,#$0f
20e9: 0d        push  psw
20ea: f7 98     mov   a,($98)+y
20ec: 8e        pop   psw
20ed: f0 03     beq   $20f2
20ef: bc        inc   a
20f0: d7 98     mov   ($98)+y,a
20f2: ee        pop   y
20f3: dc        dec   y
20f4: d0 c8     bne   $20be
20f6: 60        clrc
20f7: 6f        ret

20f8: 80        setc
20f9: 6f        ret

20fa: 40        setp
20fb: 5e 8d 21  cmp   y,$218d
20fe: 90 01     bcc   $2101
2100: 6f        ret

2101: 3f 71 21  call  $2171
2104: cd 00     mov   x,#$00
2106: e7 96     mov   a,($96+x)
2108: f0 2c     beq   $2136
210a: fd        mov   y,a
210b: 6d        push  y
210c: f7 96     mov   a,($96)+y
210e: 5d        mov   x,a
210f: 8f 2f 98  mov   $98,#$2f
2112: 8f 06 99  mov   $99,#$06
2115: f5 67 05  mov   a,$0567+x
2118: 68 ff     cmp   a,#$ff
211a: f0 16     beq   $2132
211c: 8d 08     mov   y,#$08
211e: cf        mul   ya
211f: 7a 98     addw  ya,$98
2121: da 98     movw  $98,ya
2123: 8d 07     mov   y,#$07
2125: f7 98     mov   a,($98)+y
2127: 28 0f     and   a,#$0f
2129: 0d        push  psw
212a: f7 98     mov   a,($98)+y
212c: 8e        pop   psw
212d: f0 03     beq   $2132
212f: 9c        dec   a
2130: d7 98     mov   ($98)+y,a
2132: ee        pop   y
2133: dc        dec   y
2134: d0 d5     bne   $210b
2136: 6f        ret

2137: 40        setp
2138: 5e 8d 21  cmp   y,$218d
213b: 90 01     bcc   $213e
213d: 6f        ret

213e: 3f 71 21  call  $2171
2141: cd 00     mov   x,#$00
2143: e7 96     mov   a,($96+x)
2145: f0 29     beq   $2170
2147: fd        mov   y,a
2148: 6d        push  y
2149: f7 96     mov   a,($96)+y
214b: 5d        mov   x,a
214c: 8f 2f 98  mov   $98,#$2f
214f: 8f 06 99  mov   $99,#$06
2152: f5 67 05  mov   a,$0567+x
2155: 68 ff     cmp   a,#$ff
2157: f0 13     beq   $216c
2159: 8d 08     mov   y,#$08
215b: cf        mul   ya
215c: 7a 98     addw  ya,$98
215e: da 98     movw  $98,ya
2160: 8d 07     mov   y,#$07
2162: f7 98     mov   a,($98)+y
2164: 68 20     cmp   a,#$20
2166: 90 04     bcc   $216c
2168: a8 20     sbc   a,#$20
216a: d7 98     mov   ($98)+y,a
216c: ee        pop   y
216d: dc        dec   y
216e: d0 d8     bne   $2148
2170: 6f        ret

2171: 8f 03 96  mov   $96,#$03
2174: 8f 02 97  mov   $97,#$02
2177: cd 00     mov   x,#$00
2179: ad 00     cmp   y,#$00
217b: f0 0e     beq   $218b
217d: e7 96     mov   a,($96+x)
217f: bc        inc   a
2180: 6d        push  y
2181: 8d 00     mov   y,#$00
2183: 7a 96     addw  ya,$96
2185: da 96     movw  $96,ya
2187: ee        pop   y
2188: dc        dec   y
2189: 2f ee     bra   $2179
218b: 6f        ret

218c: db $1c
218d: db $a4
218e: db $49
218f: db $f8,$6d
2191: db $4a,$6f
