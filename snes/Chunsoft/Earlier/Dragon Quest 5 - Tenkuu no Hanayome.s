; Dragon Quest 5 SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Otogirisou (1992)
; * Dragon Quest 5 (1992)
; * Torneco no Daibouken: Fushigi no Dungeon (1993)
; * Kamaitachi no Yoru (1994)

; DSP reg initialization table
0774: db $6c,$f0 ; DSP FLG reset
0776: db $7d,$05 ; echo delay 80ms
0778: db $6d,$d7 ; echo start addr $d700
077a: db $1c,$60 ; main volume R #$60
077c: db $0c,$60 ; main volume L #$60
077e: db $3c,$00 ; echo volume R zero
0780: db $2c,$00 ; echo volume L zero
0782: db $4c,$00 ; key on
0784: db $5c,$00 ; key off
0786: db $6c,$23 ; DSP FLG echo on, noise clock 25 Hz
0788: db $0d,$00 ; echo feedback zero
078a: db $2d,$00 ; pitch modulation off
078c: db $3d,$00 ; noise off
078e: db $4d,$00 ; echo off
0790: db $5d,$07 ; sample dir $0700
0792: db $0d,$00 ; echo feedback zero
0794: db $00     ; end of table

; vcmd dispatch table
0795: dw $18f3  ; db - flag repeat (alternative)
0797: dw $18f8  ; dc - repeat once more (alternative)
0799: dw $181a  ; dd - set release rate
079b: dw $1817  ; de - set ADSR and release rate
079d: dw $16f3  ; df
079f: dw $16c0  ; e0 - CPU related? conditional jump
07a1: dw $16b2  ; e1
07a3: dw $16ff  ; e2
07a5: dw $1714  ; e3
07a7: dw $1718  ; e4
07a9: dw $171c  ; e5
07ab: dw $172c  ; e6 - volume fade
07ad: dw $173e  ; e7
07af: dw $1757  ; e8 - pan fade
07b1: dw $1795  ; e9
07b3: dw $179b  ; ea - jump
07b5: dw $17b1  ; eb - tempo
07b7: dw $17bc  ; ec - set duration rate directly
07b9: dw $17e3  ; ed - set channel master volume
07bb: dw $17ee  ; ee - set panpot
07bd: dw $17f9  ; EF - set ADSR1/2 param
07bf: dw $182e  ; f0 - set patch
07c1: dw $18df  ; f1 - duration copy on
07c3: dw $18df  ; f2 - duration copy on
07c5: dw $18ea  ; f3 - duration copy off
07c7: dw $1905  ; f4 - repeat once again
07c9: dw $191c  ; f5 - conditional loop
07cb: dw $1922  ; f6 - set volume
07cd: dw $192d  ; f7 - nop
07cf: dw $192e  ; f8 - call subroutine
07d1: dw $1970  ; f9 - return from subroutine
07d3: dw $1989  ; fa - key shift (transpose)
07d5: dw $1990  ; fb - pitch slide
07d7: dw $19aa  ; fc
07d9: dw $19ae  ; fd
07db: dw $19b2  ; fe

07dd: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
07e5: dw $1ede ; 
07e7: dw $20b4 ; 
07e9: dw $22a6 ; 
07eb: dw $24b5 ; 
07ed: dw $26e4 ; 
07ef: dw $2934 ; 
07f1: dw $2ba7 ; 
07f3: dw $2e40 ; 
07f5: dw $3100 ; 
07f7: dw $33ea ; 
07f9: dw $3700 ; 
07fb: dw $3a45 ; 
07fd: dw $3dbc ; 
07ff: dw $4168 ; 

0801: dw $0843  ; 00
0803: dw $0846  ; 01
0805: dw $0849  ; 02
0807: dw $084c  ; 03
0809: dw $084f  ; 04
080b: dw $0852  ; 05
080d: dw $0855  ; 06
080f: dw $0858  ; 07
0811: dw $085b  ; 08
0813: dw $085e  ; 09
0815: dw $0861  ; 0a
0817: dw $0864  ; 0b
0819: dw $0867  ; 0c
081b: dw $086a  ; 0d
081d: dw $086d  ; 0e
081f: dw $0870  ; 0f
0821: dw $0873  ; 10
0823: dw $0876  ; 11
0825: dw $0879  ; 12
0827: dw $087c  ; 13
0829: dw $087f  ; 14
082b: dw $0882  ; 15
082d: dw $0889  ; 16
082f: dw $08a5  ; 17
0831: dw $08a5  ; 18
0833: dw $08a5  ; 19
0835: dw $08c1  ; 1a
0837: dw $08c4  ; 1b
0839: dw $08c7  ; 1c
083b: dw $08ca  ; 1d
083d: dw $08cd  ; 1e
083f: dw $08d0  ; 1f
0841: dw $08d2  ; 20

0843: db $05,$00,$ff ; 00
0846: db $05,$01,$ff ; 01
0849: db $05,$02,$ff ; 02
084c: db $05,$03,$ff ; 03
084f: db $05,$04,$ff ; 04
0852: db $05,$05,$ff ; 05
0855: db $05,$06,$ff ; 06
0858: db $05,$07,$ff ; 07
085b: db $05,$08,$ff ; 08
085e: db $05,$09,$ff ; 09
0861: db $05,$0a,$ff ; 0a
0864: db $05,$0b,$ff ; 0b
0867: db $05,$0c,$ff ; 0c
086a: db $05,$0d,$ff ; 0d
086d: db $05,$0e,$ff ; 0e
0870: db $05,$0f,$ff ; 0f
0873: db $05,$10,$ff ; 10
0876: db $05,$11,$ff ; 11
0879: db $05,$12,$ff ; 12
087c: db $05,$13,$ff ; 13
087f: db $05,$14,$ff ; 14
0882: db $13,$60,$60,$14,$00,$00,$ff ; 15
0889: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff ; 16
0892: db $16,$0c,$17,$05,$22,$32,$42,$52,$62,$72,$82,$92,$13,$5c,$5c,$14,$14,$ec,$ff ; 
08a5: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff,$16,$32,$17,$05,$22,$32,$42,$52,$62,$72,$82,$92,$13,$4d,$4d,$14,$40,$40,$ff ; 17,18,19
08c1: db $00,$0a,$ff ; 1a
08c4: db $00,$13,$ff ; 1b
08c7: db $00,$24,$ff ; 1c
08ca: db $00,$44,$ff ; 1d
08cd: db $00,$80,$ff ; 1e
08d0: db $11,$ff ; 1f
08d2: db $12,$ff ; 20

; TODO: unknown table (related to vcmd E2)
08d4: dw $08e2  ; 00
08d6: dw $0945  ; 01
08d8: dw $0992  ; 02
08da: dw $09cc  ; 03
08dc: dw $0903  ; 04
08de: dw $09a7  ; 05
08e0: dw $0924  ; 06

08e2: db $1e    ; 00
08e3: db $16,$00,$05,$01,$05,$00,$05,$ff,$05,$00,$05,$02,$05,$00,$05,$fc
08f3: db $05,$00,$05,$08,$05,$00,$05,$f4,$05,$00,$05,$0c,$05,$00
0901: db $01,$80
0903: db $1e    ; 04
0904: db $16,$00,$03,$01,$03,$00,$03,$ff,$03,$00,$03,$02,$03,$00,$03,$fc
0914: db $03,$00,$03,$08,$03,$00,$03,$f4,$03,$00,$03,$0c,$03,$00
0922: db $01,$80
0924: db $1e    ; 06
0925: db $16,$00,$04,$01,$04,$00,$04,$ff,$04,$00,$04,$02,$04,$00,$04,$fc
0935: db $04,$00,$04,$08,$04,$00,$04,$f4,$04,$00,$04,$0c,$04,$00
0943: db $01,$80
0945: db $4a    ; 01
0946: db $32,$00,$01,$01,$02,$02,$02,$03,$01,$02,$02,$01,$02,$00,$01,$fe
0956: db $02,$fc,$02,$fa,$01,$fc,$02,$fe,$02,$00,$01,$04,$02,$08,$02,$0c
0966: db $01,$08,$02,$04,$02,$00,$01,$f8,$02,$f0,$02,$e8,$01,$f0,$02,$f8
0976: db $02,$00,$01,$0a,$02,$14,$02,$1e,$01,$14,$02,$0a,$02,$00,$01,$f6
0986: db $02,$ec,$02,$e2,$01,$ec,$02,$f6,$02,$00
0990: db $01,$80
0992: db $12    ; 02
0993: db $0a,$00,$03,$02,$03,$00,$03,$f8,$03,$00,$03,$0c,$03,$00,$03,$f4
09a3: db $03,$00
09a5: db $01,$80
09a7: db $22    ; 05
09a8: db $1a,$00,$05,$01,$05,$00,$05,$fe,$05,$00,$05,$03,$05,$00,$05,$fc
09b8: db $05,$00,$05,$05,$05,$00,$05,$fa,$05,$00,$05,$07,$05,$00,$05,$f9
09c8: db $05,$00
09ca: db $01,$80
09cc: db $0c    ; 03
09cd: db $04,$00,$0a,$18,$03,$00,$03,$e8,$03,$00,$03,$00
09d9: db $01,$80

09db: c0        di
09dc: cd cf     mov   x,#$cf
09de: bd        mov   sp,x
09df: 3f a4 10  call  $10a4
09e2: 40        setp
09e3: 3f 6d 0f  call  $0f6d
09e6: 3f 19 0a  call  $0a19
09e9: 2f f7     bra   $09e2

; cpu cmd dispatch table
09eb: dw $0a26  ; 00
09ed: dw $0ad9  ; 01
09ef: dw $0b25  ; 02
09f1: dw $0b34  ; 03
09f3: dw $0b95  ; 04
09f5: dw $0bbb  ; 05
09f7: dw $0bea  ; 06
09f9: dw $0bf4  ; 07
09fb: dw $0c02  ; 08
09fd: dw $0c08  ; 09
09ff: dw $0c24  ; 0a
0a01: dw $0c2e  ; 0b
0a03: dw $0c31  ; 0c
0a05: dw $0c8c  ; 0d
0a07: dw $0c8c  ; 0e
0a09: dw $0c8c  ; 0f
0a0b: dw $0ca7  ; 10
0a0d: dw $0d2f  ; 11
0a0f: dw $0d39  ; 12
0a11: dw $0d43  ; 13
0a13: dw $0d48  ; 14
0a15: dw $0d8e  ; 15
0a17: dw $0e01  ; 16

; dispatch cpu cmd
0a19: 40        setp
0a1a: 68 17     cmp   a,#$17
0a1c: b0 07     bcs   $0a25
0a1d: 2d        push  a
0a1f: 1c        asl   a
0a20: 5d        mov   x,a
0a21: ae        pop   a
0a22: 1f eb 09  jmp   ($09eb+x)
0a25: 6f        ret

; cpu cmd 00
0a26: c4 8b     mov   $8b,a
0a28: e5 f6 00  mov   a,$00f6
0a2b: c4 84     mov   $84,a
0a2d: 5d        mov   x,a
0a2e: f5 ff 03  mov   a,$03ff+x
0a31: 68 ff     cmp   a,#$ff
0a33: f0 29     beq   $0a5e
0a35: 2d        push  a
0a36: 3f a5 27  call  $27a5
0a39: ae        pop   a
0a3a: 90 1b     bcc   $0a57
0a3c: 3f ac 24  call  $24ac
0a3f: f7 96     mov   a,($96)+y
0a41: 28 e0     and   a,#$e0
0a43: 68 e0     cmp   a,#$e0
0a45: 0d        push  psw
0a46: f7 96     mov   a,($96)+y
0a48: 8e        pop   psw
0a49: f0 03     beq   $0a4e
0a4b: 60        clrc
0a4c: 88 20     adc   a,#$20
0a4e: 78 00 8b  cmp   $8b,#$00
0a51: f0 02     beq   $0a55
0a53: 08 10     or    a,#$10
0a55: d7 96     mov   ($96)+y,a
0a57: 3f 7b 10  call  $107b
0a5a: 8f ff 84  mov   $84,#$ff
0a5d: 6f        ret

0a5e: 3f 76 10  call  $1076
0a61: 3f 6d 0f  call  $0f6d
0a64: b0 6f     bcs   $0ad5
0a66: ec f6 00  mov   y,$00f6
0a69: 80        setc
0a6a: a8 07     sbc   a,#$07
0a6c: b0 01     bcs   $0a6f
0a6e: dc        dec   y
0a6f: 3f ff 23  call  $23ff
0a72: 90 07     bcc   $0a7b
0a74: 3f 7b 10  call  $107b
0a77: 8f ff 84  mov   $84,#$ff
0a7a: 6f        ret

0a7b: 3f 76 10  call  $1076
0a7e: dd        mov   a,y
0a7f: f8 84     mov   x,$84
0a81: d5 ff 03  mov   $03ff+x,a
0a84: 5d        mov   x,a
0a85: 40        setp
0a86: c4 86     mov   $86,a
0a88: e8 00     mov   a,#$00
0a8a: 0b 86     asl   $86
0a8c: 3c        rol   a
0a8d: 0b 86     asl   $86
0a8f: 3c        rol   a
0a90: 60        clrc
0a91: 88 07     adc   a,#$07
0a93: c4 87     mov   $87,a
0a95: 8d 00     mov   y,#$00
0a97: f7 86     mov   a,($86)+y
0a99: c4 80     mov   $80,a
0a9b: fc        inc   y
0a9c: f7 86     mov   a,($86)+y
0a9e: c4 81     mov   $81,a
0aa0: 8f 35 88  mov   $88,#$35
0aa3: 8f 05 89  mov   $89,#$05
0aa6: 7d        mov   a,x
0aa7: 8d 08     mov   y,#$08
0aa9: cf        mul   ya
0aaa: 7a 88     addw  ya,$88
0aac: da 88     movw  $88,ya
0aae: 8d 00     mov   y,#$00
0ab0: f7 88     mov   a,($88)+y
0ab2: c4 82     mov   $82,a
0ab4: fc        inc   y
0ab5: f7 88     mov   a,($88)+y
0ab7: c4 83     mov   $83,a
0ab9: f8 84     mov   x,$84
0abb: 3f a5 27  call  $27a5
0abe: 90 04     bcc   $0ac4
0ac0: e8 20     mov   a,#$20
0ac2: 2f 02     bra   $0ac6
0ac4: e8 01     mov   a,#$01
0ac6: 78 00 8b  cmp   $8b,#$00
0ac9: f0 02     beq   $0acd
0acb: 08 10     or    a,#$10
0acd: 8d 07     mov   y,#$07
0acf: d7 88     mov   ($88)+y,a
0ad1: 8f 01 8a  mov   $8a,#$01
0ad4: 6f        ret

0ad5: 3f 7b 10  call  $107b
0ad8: 6f        ret

; cpu cmd 01
0ad9: e5 f6 00  mov   a,$00f6
0adc: 5d        mov   x,a
0add: fd        mov   y,a
0ade: 3f 50 14  call  $1450
0ae1: b0 24     bcs   $0b07
0ae3: 3f 2d 1a  call  $1a2d
0ae6: b0 2c     bcs   $0b14
0ae8: 65 eb 28  cmp   a,$28eb
0aeb: b0 0a     bcs   $0af7
0aed: 2d        push  a
0aee: ec f9 03  mov   y,$03f9
0af1: 3f af 22  call  $22af
0af4: ae        pop   a
0af5: 2f 03     bra   $0afa
0af7: 3f 79 0e  call  $0e79
0afa: fd        mov   y,a
0afb: 2d        push  a
0afc: 6d        push  y
0afd: 3f 67 27  call  $2767
0b00: ee        pop   y
0b01: 3f f8 25  call  $25f8
0b04: ae        pop   a
0b05: 90 04     bcc   $0b0b
0b07: 3f 7b 10  call  $107b
0b0a: 6f        ret

0b0b: 2d        push  a
0b0c: 3f 76 10  call  $1076
0b0f: ae        pop   a
0b10: 3f ca 11  call  $11ca
0b13: 6f        ret

0b14: 40        setp
0b15: 3f 73 10  call  $1073
0b18: 3f 76 10  call  $1076
0b1b: fd        mov   y,a
0b1c: 6d        push  y
0b1d: 3f 46 27  call  $2746
0b20: ee        pop   y
0b21: 3f ca 26  call  $26ca
0b24: 6f        ret

; cpu cmd 02
0b25: e5 f6 00  mov   a,$00f6
0b28: 3f c0 1f  call  $1fc0
0b2b: b0 03     bcs   $0b30
0b2d: 3f af 22  call  $22af
0b30: 3f 80 10  call  $1080
0b33: 6f        ret

; cpu cmd 03
0b34: e5 f7 00  mov   a,$00f7
0b37: c4 a4     mov   $a4,a
0b39: e5 f6 00  mov   a,$00f6
0b3c: 5d        mov   x,a
0b3d: fd        mov   y,a
0b3e: 3f 50 14  call  $1450
0b41: b0 2e     bcs   $0b71
0b43: 3f 2d 1a  call  $1a2d
0b46: 90 0a     bcc   $0b52
0b48: 2d        push  a
0b49: 3f 14 0b  call  $0b14
0b4c: ae        pop   a
0b4d: 3f c0 1f  call  $1fc0
0b50: 2f 32     bra   $0b84
0b52: 65 eb 28  cmp   a,$28eb
0b55: b0 0a     bcs   $0b61
0b57: 2d        push  a
0b58: ec f9 03  mov   y,$03f9
0b5b: 3f af 22  call  $22af
0b5e: ae        pop   a
0b5f: 2f 03     bra   $0b64
0b61: 3f 79 0e  call  $0e79
0b64: fd        mov   y,a
0b65: 2d        push  a
0b66: 6d        push  y
0b67: 3f 67 27  call  $2767
0b6a: ee        pop   y
0b6b: 3f f8 25  call  $25f8
0b6e: ae        pop   a
0b6f: 90 04     bcc   $0b75
0b71: 3f 7b 10  call  $107b
0b74: 6f        ret

0b75: 2d        push  a
0b76: 3f 76 10  call  $1076
0b79: ae        pop   a
0b7a: 3f ca 11  call  $11ca
0b7d: ec f8 03  mov   y,$03f8
0b80: ad ff     cmp   y,#$ff
0b82: f0 10     beq   $0b94
0b84: 40        setp
0b85: e4 a4     mov   a,$a4
0b87: d6 c7 03  mov   $03c7+y,a
0b8a: e8 80     mov   a,#$80
0b8c: d6 cf 03  mov   $03cf+y,a
0b8f: e8 00     mov   a,#$00
0b91: d6 a7 03  mov   $03a7+y,a
0b94: 6f        ret

; cpu cmd 04
0b95: e5 f7 00  mov   a,$00f7
0b98: c4 a4     mov   $a4,a
0b9a: e5 f6 00  mov   a,$00f6
0b9d: 3f 80 10  call  $1080
0ba0: 3f c0 1f  call  $1fc0
0ba3: b0 15     bcs   $0bba
0ba5: f6 d7 03  mov   a,$03d7+y
0ba8: 08 01     or    a,#$01
0baa: d6 d7 03  mov   $03d7+y,a
0bad: e4 a4     mov   a,$a4
0baf: 48 ff     eor   a,#$ff
0bb1: bc        inc   a
0bb2: d6 c7 03  mov   $03c7+y,a
0bb5: e8 80     mov   a,#$80
0bb7: d6 cf 03  mov   $03cf+y,a
0bba: 6f        ret

; cpu cmd 05
0bbb: e5 f7 00  mov   a,$00f7
0bbe: c4 a4     mov   $a4,a
0bc0: e5 f6 00  mov   a,$00f6
0bc3: c4 a5     mov   $a5,a
0bc5: 3f 80 10  call  $1080
0bc8: 3f c0 1f  call  $1fc0
0bcb: 90 02     bcc   $0bcf
0bcd: 8d ff     mov   y,#$ff
0bcf: e4 a4     mov   a,$a4
0bd1: 68 21     cmp   a,#$21
0bd3: b0 14     bcs   $0be9
0bd5: 6d        push  y
0bd6: 3f 4b 20  call  $204b
0bd9: ee        pop   y
0bda: 40        setp
0bdb: fc        inc   y
0bdc: f0 0b     beq   $0be9
0bde: e4 a5     mov   a,$a5
0be0: 3f d9 1f  call  $1fd9
0be3: b0 04     bcs   $0be9
0be5: e4 a4     mov   a,$a4
0be7: 2f ec     bra   $0bd5
0be9: 6f        ret

; cpu cmd 06
0bea: e9 f6 00  mov   x,$00f6
0bed: 3f 80 10  call  $1080
0bf0: 3f 9c 24  call  $249c
0bf3: 6f        ret

; cpu cmd 07
0bf4: 3f 7b 10  call  $107b
0bf7: e8 ff     mov   a,#$ff
0bf9: c5 f6 03  mov   $03f6,a
0bfc: e8 a0     mov   a,#$a0
0bfe: c5 f7 03  mov   $03f7,a
0c01: 6f        ret

; cpu cmd 08
0c02: 3f 76 10  call  $1076
0c05: 5f db 09  jmp   $09db

; cpu cmd 09
0c08: e5 f6 00  mov   a,$00f6
0c0b: 3f c0 1f  call  $1fc0
0c0e: b0 08     bcs   $0c18
0c10: 3f 6b 10  call  $106b
0c13: f6 df 03  mov   a,$03df+y
0c16: 2f 05     bra   $0c1d
0c18: 3f 6f 10  call  $106f
0c1b: e8 7f     mov   a,#$7f
0c1d: c5 f5 00  mov   $00f5,a
0c20: 3f 80 10  call  $1080
0c23: 6f        ret

; cpu cmd 0A
0c24: 3f 80 10  call  $1080
0c27: 3f 5d 25  call  $255d
0c2a: 3f ba 27  call  $27ba
0c2d: 6f        ret

; cpu cmd 0B
0c2e: 5f 26 0a  jmp   $0a26

; cpu cmd 0C
0c31: e5 f7 00  mov   a,$00f7
0c34: c4 a4     mov   $a4,a
0c36: e5 f6 00  mov   a,$00f6
0c39: 5d        mov   x,a
0c3a: fd        mov   y,a
0c3b: 3f 50 14  call  $1450
0c3e: b0 24     bcs   $0c64
0c40: 3f 2d 1a  call  $1a2d
0c43: b0 33     bcs   $0c78
0c45: 65 eb 28  cmp   a,$28eb
0c48: b0 0a     bcs   $0c54
0c4a: 2d        push  a
0c4b: ec f9 03  mov   y,$03f9
0c4e: 3f af 22  call  $22af
0c51: ae        pop   a
0c52: 2f 03     bra   $0c57
0c54: 3f 79 0e  call  $0e79
0c57: fd        mov   y,a
0c58: 2d        push  a
0c59: 6d        push  y
0c5a: 3f 67 27  call  $2767
0c5d: ee        pop   y
0c5e: 3f f8 25  call  $25f8
0c61: ae        pop   a
0c62: 90 04     bcc   $0c68
0c64: 3f 7b 10  call  $107b
0c67: 6f        ret

0c68: 3f 76 10  call  $1076
0c6b: 3f ca 11  call  $11ca
0c6e: 40        setp
0c6f: ec f8 03  mov   y,$03f8
0c72: ad ff     cmp   y,#$ff
0c74: d0 0c     bne   $0c82
0c76: 2f 13     bra   $0c8b
0c78: 2d        push  a
0c79: 3f 14 0b  call  $0b14
0c7c: ae        pop   a
0c7d: 3f c0 1f  call  $1fc0
0c80: b0 09     bcs   $0c8b
0c82: e4 a4     mov   a,$a4
0c84: 68 21     cmp   a,#$21
0c86: b0 03     bcs   $0c8b
0c88: 3f 4b 20  call  $204b
0c8b: 6f        ret

; cpu cmds 0D,0E,0F
0c8c: ec f6 00  mov   y,$00f6
0c8f: 3f 80 10  call  $1080
0c92: f6 ff 03  mov   a,$03ff+y
0c95: 68 ff     cmp   a,#$ff
0c97: f0 0d     beq   $0ca6
0c99: 3f ac 24  call  $24ac
0c9c: f7 96     mov   a,($96)+y
0c9e: 68 20     cmp   a,#$20
0ca0: 90 04     bcc   $0ca6
0ca2: a8 20     sbc   a,#$20
0ca4: d7 96     mov   ($96)+y,a
0ca6: 6f        ret

; cpu cmd 10
0ca7: c4 8b     mov   $8b,a
0ca9: e5 f6 00  mov   a,$00f6
0cac: c4 85     mov   $85,a
0cae: fd        mov   y,a
0caf: 3f 50 14  call  $1450
0cb2: b0 22     bcs   $0cd6
0cb4: f6 c7 04  mov   a,$04c7+y
0cb7: 3f cc 24  call  $24cc
0cba: f7 96     mov   a,($96)+y
0cbc: 28 e0     and   a,#$e0
0cbe: 68 e0     cmp   a,#$e0
0cc0: 0d        push  psw
0cc1: f7 96     mov   a,($96)+y
0cc3: 8e        pop   psw
0cc4: f0 03     beq   $0cc9
0cc6: 60        clrc
0cc7: 88 20     adc   a,#$20
0cc9: 78 10 8b  cmp   $8b,#$10
0ccc: f0 02     beq   $0cd0
0cce: 08 10     or    a,#$10
0cd0: d7 96     mov   ($96)+y,a
0cd2: 3f 7b 10  call  $107b
0cd5: 6f        ret

0cd6: 3f 76 10  call  $1076
0cd9: 3f 6d 0f  call  $0f6d
0cdc: b0 4d     bcs   $0d2b
0cde: ec f6 00  mov   y,$00f6
0ce1: 3f 42 24  call  $2442
0ce4: 90 04     bcc   $0cea
0ce6: 3f 7b 10  call  $107b
0ce9: 6f        ret

0cea: 3f 76 10  call  $1076
0ced: 7d        mov   a,x
0cee: eb 85     mov   y,$85
0cf0: d6 c7 04  mov   $04c7+y,a
0cf3: ba a2     movw  ya,$a2
0cf5: da 88     movw  $88,ya
0cf7: 8d 01     mov   y,#$01
0cf9: f7 88     mov   a,($88)+y
0cfb: c4 80     mov   $80,a
0cfd: fc        inc   y
0cfe: f7 88     mov   a,($88)+y
0d00: c4 81     mov   $81,a
0d02: 8d 03     mov   y,#$03
0d04: f7 88     mov   a,($88)+y
0d06: c4 82     mov   $82,a
0d08: fc        inc   y
0d09: f7 88     mov   a,($88)+y
0d0b: c4 83     mov   $83,a
0d0d: 8d 05     mov   y,#$05
0d0f: f7 88     mov   a,($88)+y
0d11: 28 e0     and   a,#$e0
0d13: 68 e0     cmp   a,#$e0
0d15: 0d        push  psw
0d16: f7 88     mov   a,($88)+y
0d18: 8e        pop   psw
0d19: f0 03     beq   $0d1e
0d1b: 60        clrc
0d1c: 88 20     adc   a,#$20
0d1e: 78 10 8b  cmp   $8b,#$10
0d21: f0 02     beq   $0d25
0d23: 08 10     or    a,#$10
0d25: d7 88     mov   ($88)+y,a
0d27: 8f 80 8a  mov   $8a,#$80
0d2a: 6f        ret

0d2b: 3f 7b 10  call  $107b
0d2e: 6f        ret

; cpu cmd 11
0d2f: e9 f6 00  mov   x,$00f6
0d32: 3f bc 24  call  $24bc
0d35: 3f 80 10  call  $1080
0d38: 6f        ret

; cpu cmd 12
0d39: ec f6 00  mov   y,$00f6
0d3c: 3f 46 27  call  $2746
0d3f: 3f 80 10  call  $1080
0d42: 6f        ret

; cpu cmd 13
0d43: c4 8b     mov   $8b,a
0d45: 5f a9 0c  jmp   $0ca9

; cpu cmd 14
0d48: e5 f6 00  mov   a,$00f6
0d4b: 48 ff     eor   a,#$ff
0d4d: bc        inc   a
0d4e: c4 a4     mov   $a4,a
0d50: 8d 00     mov   y,#$00
0d52: e8 00     mov   a,#$00
0d54: 76 b7 03  cmp   a,$03b7+y
0d57: f0 12     beq   $0d6b
0d59: f6 d7 03  mov   a,$03d7+y
0d5c: 08 01     or    a,#$01
0d5e: d6 d7 03  mov   $03d7+y,a
0d61: e4 a4     mov   a,$a4
0d63: d6 c7 03  mov   $03c7+y,a
0d66: e8 80     mov   a,#$80
0d68: d6 cf 03  mov   $03cf+y,a
0d6b: fc        inc   y
0d6c: ad 08     cmp   y,#$08
0d6e: 90 e2     bcc   $0d52
0d70: e8 00     mov   a,#$00
0d72: fd        mov   y,a
0d73: 16 b7 03  or    a,$03b7+y
0d76: fc        inc   y
0d77: ad 08     cmp   y,#$08
0d79: 90 f8     bcc   $0d73
0d7b: 68 00     cmp   a,#$00
0d7d: f0 05     beq   $0d84
0d7f: 3f 91 10  call  $1091
0d82: 2f ec     bra   $0d70
0d84: 3f 76 10  call  $1076
0d87: 3f 5d 25  call  $255d
0d8a: 3f ba 27  call  $27ba
0d8d: 6f        ret

; cpu cmd 15
0d8e: 3f 80 10  call  $1080
0d91: 3f 81 27  call  $2781
0d94: e4 8a     mov   a,$8a
0d96: 68 00     cmp   a,#$00
0d98: f0 66     beq   $0e00
0d9a: 68 80     cmp   a,#$80
0d9c: b0 2f     bcs   $0dcd
0d9e: f8 84     mov   x,$84
0da0: e8 ff     mov   a,#$ff
0da2: d5 ff 03  mov   $03ff+x,a
0da5: 8d 07     mov   y,#$07
0da7: e8 00     mov   a,#$00
0da9: d7 88     mov   ($88)+y,a
0dab: fd        mov   y,a
0dac: f7 86     mov   a,($86)+y
0dae: c4 96     mov   $96,a
0db0: fc        inc   y
0db1: f7 86     mov   a,($86)+y
0db3: c4 97     mov   $97,a
0db5: 8d 00     mov   y,#$00
0db7: f7 88     mov   a,($88)+y
0db9: c4 98     mov   $98,a
0dbb: fc        inc   y
0dbc: f7 88     mov   a,($88)+y
0dbe: c4 99     mov   $99,a
0dc0: 3f dc 24  call  $24dc
0dc3: e8 00     mov   a,#$00
0dc5: fd        mov   y,a
0dc6: d7 86     mov   ($86)+y,a
0dc8: fc        inc   y
0dc9: d7 86     mov   ($86)+y,a
0dcb: 2f 2a     bra   $0df7
0dcd: f8 85     mov   x,$85
0dcf: e8 ff     mov   a,#$ff
0dd1: d5 c7 04  mov   $04c7+x,a
0dd4: e8 00     mov   a,#$00
0dd6: 8d 00     mov   y,#$00
0dd8: d7 88     mov   ($88)+y,a
0dda: 8d 05     mov   y,#$05
0ddc: d7 88     mov   ($88)+y,a
0dde: 8d 01     mov   y,#$01
0de0: f7 88     mov   a,($88)+y
0de2: c4 96     mov   $96,a
0de4: fc        inc   y
0de5: f7 88     mov   a,($88)+y
0de7: c4 97     mov   $97,a
0de9: 8d 03     mov   y,#$03
0deb: f7 88     mov   a,($88)+y
0ded: c4 98     mov   $98,a
0def: fc        inc   y
0df0: f7 88     mov   a,($88)+y
0df2: c4 99     mov   $99,a
0df4: 3f dc 24  call  $24dc
0df7: e8 00     mov   a,#$00
0df9: c4 8a     mov   $8a,a
0dfb: 9c        dec   a
0dfc: c4 84     mov   $84,a
0dfe: c4 85     mov   $85,a
0e00: 6f        ret

; cpu cmd 16
0e01: 3f 80 10  call  $1080
0e04: 8f 35 96  mov   $96,#$35
0e07: 8f 05 97  mov   $97,#$05
0e0a: 8f 08 98  mov   $98,#$08
0e0d: 8f 14 99  mov   $99,#$14
0e10: 8d 07     mov   y,#$07
0e12: 3f 23 0e  call  $0e23
0e15: 8f d5 96  mov   $96,#$d5
0e18: 8f 05 97  mov   $97,#$05
0e1b: 8f 06 98  mov   $98,#$06
0e1e: 8f 14 99  mov   $99,#$14
0e21: 8d 05     mov   y,#$05
0e23: f7 96     mov   a,($96)+y
0e25: 28 1f     and   a,#$1f
0e27: d7 96     mov   ($96)+y,a
0e29: 6d        push  y
0e2a: 8d 00     mov   y,#$00
0e2c: e4 98     mov   a,$98
0e2e: 7a 96     addw  ya,$96
0e30: da 96     movw  $96,ya
0e32: ee        pop   y
0e33: 6e 99 ed  dbnz  $99,$0e23
0e36: 6f        ret

0e37: 40        setp
0e38: eb a4     mov   y,$a4
0e3a: 30 3c     bmi   $0e78
0e3c: f6 b7 03  mov   a,$03b7+y         ; tempo
0e3f: f0 37     beq   $0e78
0e41: e4 a5     mov   a,$a5
0e43: 68 7f     cmp   a,#$7f
0e45: f0 15     beq   $0e5c
0e47: 20        clrp
0e48: c4 a0     mov   $a0,a
0e4a: cd 00     mov   x,#$00
0e4c: dd        mov   a,y
0e4d: 75 a3 02  cmp   a,$02a3+x
0e50: d0 04     bne   $0e56
0e52: e4 a0     mov   a,$a0
0e54: d4 29     mov   $29+x,a
0e56: 3d        inc   x
0e57: 3d        inc   x
0e58: c8 14     cmp   x,#$14
0e5a: 90 f0     bcc   $0e4c
0e5c: 40        setp
0e5d: e4 a6     mov   a,$a6
0e5f: 68 80     cmp   a,#$80
0e61: f0 15     beq   $0e78
0e63: 20        clrp
0e64: c4 a0     mov   $a0,a
0e66: cd 00     mov   x,#$00
0e68: dd        mov   a,y
0e69: 75 a3 02  cmp   a,$02a3+x
0e6c: d0 04     bne   $0e72
0e6e: e4 a0     mov   a,$a0
0e70: d4 3c     mov   $3c+x,a
0e72: 3d        inc   x
0e73: 3d        inc   x
0e74: c8 14     cmp   x,#$14
0e76: 90 f0     bcc   $0e68
0e78: 6f        ret

0e79: 2d        push  a
0e7a: e8 00     mov   a,#$00
0e7c: c5 fe 03  mov   $03fe,a
0e7f: ae        pop   a
0e80: ec fc 03  mov   y,$03fc
0e83: d0 01     bne   $0e86
0e85: 6f        ret

0e86: ad 04     cmp   y,#$04
0e88: 90 09     bcc   $0e93
0e8a: 2d        push  a
0e8b: ec fa 03  mov   y,$03fa
0e8e: 3f af 22  call  $22af
0e91: ae        pop   a
0e92: 6f        ret

0e93: 2d        push  a
0e94: fd        mov   y,a
0e95: 3f cd 0e  call  $0ecd
0e98: c4 96     mov   $96,a
0e9a: ae        pop   a
0e9b: 78 02 96  cmp   $96,#$02
0e9e: 90 14     bcc   $0eb4
0ea0: 2d        push  a
0ea1: e8 02     mov   a,#$02
0ea3: c5 fe 03  mov   $03fe,a
0ea6: ec fa 03  mov   y,$03fa
0ea9: 3f af 22  call  $22af
0eac: ec fb 03  mov   y,$03fb
0eaf: 3f af 22  call  $22af
0eb2: ae        pop   a
0eb3: 6f        ret

0eb4: 2d        push  a
0eb5: e8 01     mov   a,#$01
0eb7: c5 fe 03  mov   $03fe,a
0eba: e5 fc 03  mov   a,$03fc
0ebd: 68 03     cmp   a,#$03
0ebf: 90 0a     bcc   $0ecb
0ec1: ec fd 03  mov   y,$03fd
0ec4: f6 fa 03  mov   a,$03fa+y
0ec7: fd        mov   y,a
0ec8: 3f af 22  call  $22af
0ecb: ae        pop   a
0ecc: 6f        ret

0ecd: f6 c7 04  mov   a,$04c7+y
0ed0: 8f d5 96  mov   $96,#$d5
0ed3: 8f 05 97  mov   $97,#$05
0ed6: 8d 06     mov   y,#$06
0ed8: cf        mul   ya
0ed9: 7a 96     addw  ya,$96
0edb: da 96     movw  $96,ya
0edd: 8d 01     mov   y,#$01
0edf: f7 96     mov   a,($96)+y
0ee1: 2d        push  a
0ee2: fc        inc   y
0ee3: f7 96     mov   a,($96)+y
0ee5: c4 97     mov   $97,a
0ee7: ae        pop   a
0ee8: c4 96     mov   $96,a
0eea: 8d 01     mov   y,#$01
0eec: f7 96     mov   a,($96)+y
0eee: 6f        ret

0eef: dd        mov   a,y
0ef0: 65 fa 03  cmp   a,$03fa
0ef3: f0 1a     beq   $0f0f
0ef5: e8 ff     mov   a,#$ff
0ef7: c5 fb 03  mov   $03fb,a
0efa: e8 01     mov   a,#$01
0efc: c5 fd 03  mov   $03fd,a
0eff: e5 fa 03  mov   a,$03fa
0f02: bc        inc   a
0f03: f0 04     beq   $0f09
0f05: e8 01     mov   a,#$01
0f07: 2f 02     bra   $0f0b
0f09: e8 00     mov   a,#$00
0f0b: c5 fc 03  mov   $03fc,a
0f0e: 6f        ret

0f0f: e8 ff     mov   a,#$ff
0f11: c5 fa 03  mov   $03fa,a
0f14: bc        inc   a
0f15: c5 fd 03  mov   $03fd,a
0f18: e5 fb 03  mov   a,$03fb
0f1b: bc        inc   a
0f1c: f0 eb     beq   $0f09
0f1e: e8 02     mov   a,#$02
0f20: 2f e9     bra   $0f0b
0f22: e5 fe 03  mov   a,$03fe
0f25: d0 09     bne   $0f30
0f27: f5 af 03  mov   a,$03af+x
0f2a: fd        mov   y,a
0f2b: 40        setp
0f2c: 3f cd 0e  call  $0ecd
0f2f: 20        clrp
0f30: 9c        dec   a
0f31: f0 12     beq   $0f45
0f33: c9 fa 03  mov   $03fa,x
0f36: e8 04     mov   a,#$04
0f38: c5 fc 03  mov   $03fc,a
0f3b: e8 ff     mov   a,#$ff
0f3d: c5 fb 03  mov   $03fb,a
0f40: bc        inc   a
0f41: c5 fd 03  mov   $03fd,a
0f44: 6f        ret

0f45: e5 fa 03  mov   a,$03fa
0f48: bc        inc   a
0f49: d0 11     bne   $0f5c
0f4b: c9 fa 03  mov   $03fa,x
0f4e: e5 fc 03  mov   a,$03fc
0f51: 08 01     or    a,#$01
0f53: c5 fc 03  mov   $03fc,a
0f56: e8 01     mov   a,#$01
0f58: c5 fd 03  mov   $03fd,a
0f5b: 6f        ret

0f5c: c9 fb 03  mov   $03fb,x
0f5f: e5 fc 03  mov   a,$03fc
0f62: 08 02     or    a,#$02
0f64: c5 fc 03  mov   $03fc,a
0f67: e8 00     mov   a,#$00
0f69: c5 fd 03  mov   $03fd,a
0f6c: 6f        ret

0f6d: 40        setp
0f6e: e5 f4 00  mov   a,$00f4
0f71: 65 f4 00  cmp   a,$00f4
0f74: d0 f7     bne   $0f6d
0f76: 44 8e     eor   a,$8e
0f78: 28 01     and   a,#$01
0f7a: d0 05     bne   $0f81
0f7c: 3f 91 10  call  $1091
0f7f: 2f ec     bra   $0f6d
0f81: e5 f4 00  mov   a,$00f4
0f84: 30 05     bmi   $0f8b
0f86: e5 f5 00  mov   a,$00f5
0f89: 60        clrc
0f8a: 6f        ret

0f8b: 3f 97 0f  call  $0f97
0f8e: b0 05     bcs   $0f95
0f90: 3f 91 10  call  $1091
0f93: 2f d8     bra   $0f6d
0f95: 80        setc
0f96: 6f        ret

0f97: 40        setp
0f98: f8 8a     mov   x,$8a
0f9a: c8 00     cmp   x,#$00
0f9c: d0 05     bne   $0fa3
0f9e: 3f 80 10  call  $1080
0fa1: 80        setc
0fa2: 6f        ret

0fa3: c8 01     cmp   x,#$01
0fa5: d0 25     bne   $0fcc
0fa7: 8d 00     mov   y,#$00
0fa9: f7 86     mov   a,($86)+y
0fab: c4 8c     mov   $8c,a
0fad: fc        inc   y
0fae: f7 86     mov   a,($86)+y
0fb0: c4 8d     mov   $8d,a
0fb2: e5 f5 00  mov   a,$00f5
0fb5: ec f6 00  mov   y,$00f6
0fb8: 7a 8c     addw  ya,$8c
0fba: 6d        push  y
0fbb: 8d 02     mov   y,#$02
0fbd: d7 86     mov   ($86)+y,a
0fbf: ae        pop   a
0fc0: fc        inc   y
0fc1: d7 86     mov   ($86)+y,a
0fc3: 8d 02     mov   y,#$02
0fc5: e5 f7 00  mov   a,$00f7
0fc8: d7 88     mov   ($88)+y,a
0fca: 2f 67     bra   $1033
0fcc: c8 02     cmp   x,#$02
0fce: d0 15     bne   $0fe5
0fd0: 8d 03     mov   y,#$03
0fd2: e5 f5 00  mov   a,$00f5
0fd5: d7 88     mov   ($88)+y,a
0fd7: fc        inc   y
0fd8: e5 f6 00  mov   a,$00f6
0fdb: d7 88     mov   ($88)+y,a
0fdd: fc        inc   y
0fde: e5 f7 00  mov   a,$00f7
0fe1: d7 88     mov   ($88)+y,a
0fe3: 2f 4e     bra   $1033
0fe5: c8 03     cmp   x,#$03
0fe7: d0 21     bne   $100a
0fe9: 8d 06     mov   y,#$06
0feb: e5 f5 00  mov   a,$00f5
0fee: d7 88     mov   ($88)+y,a
0ff0: cd 00     mov   x,#$00
0ff2: e5 f6 00  mov   a,$00f6
0ff5: c7 80     mov   ($80+x),a
0ff7: 3a 80     incw  $80
0ff9: 1a 82     decw  $82
0ffb: f0 3d     beq   $103a
0ffd: e5 f7 00  mov   a,$00f7
1000: c7 80     mov   ($80+x),a
1002: 3a 80     incw  $80
1004: 1a 82     decw  $82
1006: f0 32     beq   $103a
1008: 2f 29     bra   $1033
100a: c8 04     cmp   x,#$04
100c: d0 34     bne   $1042
100e: cd 00     mov   x,#$00
1010: e5 f5 00  mov   a,$00f5
1013: c7 80     mov   ($80+x),a
1015: 3a 80     incw  $80
1017: 1a 82     decw  $82
1019: f0 1f     beq   $103a
101b: e5 f6 00  mov   a,$00f6
101e: c7 80     mov   ($80+x),a
1020: 3a 80     incw  $80
1022: 1a 82     decw  $82
1024: f0 14     beq   $103a
1026: e5 f7 00  mov   a,$00f7
1029: c7 80     mov   ($80+x),a
102b: 3a 80     incw  $80
102d: 1a 82     decw  $82
102f: f0 09     beq   $103a
1031: 2f 02     bra   $1035
1033: ab 8a     inc   $8a
1035: 3f 80 10  call  $1080
1038: 60        clrc
1039: 6f        ret

103a: 8f 00 8a  mov   $8a,#$00
103d: 8f ff 84  mov   $84,#$ff
1040: 2f f3     bra   $1035
1042: c8 80     cmp   x,#$80
1044: d0 f4     bne   $103a
1046: cd 00     mov   x,#$00
1048: e5 f5 00  mov   a,$00f5
104b: c7 80     mov   ($80+x),a
104d: 3a 80     incw  $80
104f: 1a 82     decw  $82
1051: f0 e7     beq   $103a
1053: e5 f6 00  mov   a,$00f6
1056: c7 80     mov   ($80+x),a
1058: 3a 80     incw  $80
105a: 1a 82     decw  $82
105c: f0 dc     beq   $103a
105e: e5 f7 00  mov   a,$00f7
1061: c7 80     mov   ($80+x),a
1063: 3a 80     incw  $80
1065: 1a 82     decw  $82
1067: d0 cc     bne   $1035
1069: 2f cf     bra   $103a
106b: 40        setp
106c: c2 8e     set6  $8e
106e: 6f        ret

106f: 40        setp
1070: d2 8e     clr6  $8e
1072: 6f        ret

1073: a2 8e     set5  $8e
1075: 6f        ret

1076: 40        setp
1077: c2 8e     set6  $8e
1079: 2f 06     bra   $1081
107b: 40        setp
107c: d2 8e     clr6  $8e
107e: 2f 01     bra   $1081
1080: 40        setp
1081: 2d        push  a
1082: e4 8e     mov   a,$8e
1084: 48 81     eor   a,#$81
1086: c4 8e     mov   $8e,a
1088: 28 e0     and   a,#$e0
108a: c5 f4 00  mov   $00f4,a
108d: b2 8e     clr5  $8e
108f: ae        pop   a
1090: 6f        ret

1091: 20        clrp
1092: e4 fd     mov   a,$fd
1094: f0 0c     beq   $10a2             ; skip ops if counter0 is zero
1096: 20        clrp
1097: 2d        push  a
1098: 3f 58 14  call  $1458
109b: ae        pop   a
109c: 9c        dec   a
109d: d0 f8     bne   $1097
109f: 3f c6 19  call  $19c6
10a2: 40        setp
10a3: 6f        ret

10a4: 20        clrp
10a5: cd 00     mov   x,#$00
10a7: f5 74 07  mov   a,$0774+x
10aa: f0 0b     beq   $10b7
10ac: c4 f2     mov   $f2,a
10ae: 3d        inc   x
10af: f5 74 07  mov   a,$0774+x
10b2: c4 f3     mov   $f3,a
10b4: 3d        inc   x
10b5: 2f f0     bra   $10a7
10b7: e8 00     mov   a,#$00
10b9: 20        clrp
10ba: 5d        mov   x,a
10bb: af        mov   (x)+,a
10bc: c8 b1     cmp   x,#$b1
10be: 90 fb     bcc   $10bb
10c0: 40        setp
10c1: 5d        mov   x,a
10c2: af        mov   (x)+,a
10c3: c8 a7     cmp   x,#$a7
10c5: 90 fb     bcc   $10c2
10c7: 5d        mov   x,a
10c8: 8f 03 96  mov   $96,#$03
10cb: 8f 02 97  mov   $97,#$02
10ce: 8d 07     mov   y,#$07
10d0: 7d        mov   a,x
10d1: c7 96     mov   ($96+x),a
10d3: 3a 96     incw  $96
10d5: e8 50     mov   a,#$50
10d7: 5a 96     cmpw  ya,$96
10d9: d0 f5     bne   $10d0
10db: 20        clrp
10dc: 8f 32 a9  mov   $a9,#$32
10df: 8f 64 aa  mov   $aa,#$64
10e2: 8f 23 ab  mov   $ab,#$23
10e5: e8 00     mov   a,#$00
10e7: c4 a8     mov   $a8,a
10e9: c4 ac     mov   $ac,a
10eb: c4 ad     mov   $ad,a
10ed: c4 b0     mov   $b0,a
10ef: 5d        mov   x,a
10f0: d5 b7 03  mov   $03b7+x,a
10f3: 3d        inc   x
10f4: c8 08     cmp   x,#$08
10f6: d0 f8     bne   $10f0
10f8: c4 ad     mov   $ad,a
10fa: c4 ac     mov   $ac,a
10fc: e8 60     mov   a,#$60
10fe: c4 af     mov   $af,a
1100: c4 ae     mov   $ae,a
1102: e8 00     mov   a,#$00
1104: 5d        mov   x,a
1105: d5 6c 03  mov   $036c+x,a
1108: 3d        inc   x
1109: 3d        inc   x
110a: c8 10     cmp   x,#$10
110c: d0 f7     bne   $1105
110e: 5d        mov   x,a
110f: e8 ff     mov   a,#$ff
1111: d5 a3 02  mov   $02a3+x,a
1114: d5 6b 03  mov   $036b+x,a
1117: 3d        inc   x
1118: 3d        inc   x
1119: c8 14     cmp   x,#$14
111b: d0 f4     bne   $1111
111d: e8 01     mov   a,#$01
111f: c5 ef 03  mov   $03ef,a
1122: e8 00     mov   a,#$00
1124: c5 f0 03  mov   $03f0,a
1127: c5 f1 03  mov   $03f1,a
112a: c5 f7 03  mov   $03f7,a
112d: c5 fd 03  mov   $03fd,a
1130: c5 fc 03  mov   $03fc,a
1133: e8 ff     mov   a,#$ff
1135: c5 f8 03  mov   $03f8,a
1138: c5 f9 03  mov   $03f9,a
113b: c5 fa 03  mov   $03fa,a
113e: c5 fb 03  mov   $03fb,a
1141: 40        setp
1142: 8f 00 8a  mov   $8a,#$00
1145: 8f ff 84  mov   $84,#$ff
1148: 20        clrp
1149: e8 00     mov   a,#$00
114b: c4 f2     mov   $f2,a
114d: 8f 00 f3  mov   $f3,#$00          ; VOL(L)
1150: bc        inc   a
1151: c4 f2     mov   $f2,a
1153: 8f 00 f3  mov   $f3,#$00          ; VOL(R)
1156: 60        clrc
1157: 88 0f     adc   a,#$0f
1159: 68 80     cmp   a,#$80
115b: 90 ee     bcc   $114b
115d: 8f 00 f1  mov   $f1,#$00          ; stop all timers
1160: 8f 28 fa  mov   $fa,#$28          ; set timer0 latch to #$28 (200 Hz, 5ms)
1163: 8f 01 f1  mov   $f1,#$01          ; start timer0
1166: e4 fd     mov   a,$fd
1168: 3f f4 22  call  $22f4
116b: 20        clrp
116c: e8 43     mov   a,#$43
116e: 8d 68     mov   y,#$68
1170: 5a f4     cmpw  ya,$f4
1172: d0 f8     bne   $116c
1174: 5a f4     cmpw  ya,$f4
1176: d0 f4     bne   $116c
1178: e8 75     mov   a,#$75
117a: 8d 6e     mov   y,#$6e
117c: 5a f6     cmpw  ya,$f6
117e: d0 ec     bne   $116c
1180: 5a f6     cmpw  ya,$f6
1182: d0 e8     bne   $116c
1184: e8 53     mov   a,#$53
1186: 8d 4f     mov   y,#$4f
1188: da f4     movw  $f4,ya
118a: e8 46     mov   a,#$46
118c: 8d 54     mov   y,#$54
118e: da f6     movw  $f6,ya
1190: e4 f4     mov   a,$f4
1192: 64 f4     cmp   a,$f4
1194: d0 fa     bne   $1190
1196: 68 00     cmp   a,#$00
1198: d0 f6     bne   $1190
119a: c4 f4     mov   $f4,a
119c: 40        setp
119d: c4 8e     mov   $8e,a
119f: 20        clrp
11a0: 6f        ret

11a1: f5 af 03  mov   a,$03af+x
11a4: fd        mov   y,a
11a5: 3f 8a 26  call  $268a
11a8: e8 ff     mov   a,#$ff
11aa: c5 f8 03  mov   $03f8,a
11ad: 6f        ret

11ae: e4 a2     mov   a,$a2
11b0: 8d 01     mov   y,#$01
11b2: 77 a0     cmp   a,($a0)+y
11b4: d0 13     bne   $11c9
11b6: f8 a3     mov   x,$a3
11b8: e8 00     mov   a,#$00
11ba: d5 b7 03  mov   $03b7+x,a
11bd: f5 af 03  mov   a,$03af+x
11c0: fd        mov   y,a
11c1: 3f 8a 26  call  $268a
11c4: e8 ff     mov   a,#$ff
11c6: c5 f8 03  mov   $03f8,a
11c9: 6f        ret

11ca: 20        clrp
11cb: 3f 2d 1a  call  $1a2d
11ce: 90 01     bcc   $11d1
11d0: 6f        ret

11d1: 3f fa 12  call  $12fa
11d4: b0 ce     bcs   $11a4
11d6: 65 eb 28  cmp   a,$28eb
11d9: b0 19     bcs   $11f4
11db: 2d        push  a
11dc: 40        setp
11dd: 4d        push  x
11de: 3f 5d 25  call  $255d
11e1: 3f ba 27  call  $27ba
11e4: ce        pop   x
11e5: 20        clrp
11e6: c9 f9 03  mov   $03f9,x
11e9: e8 80     mov   a,#$80
11eb: d5 a7 03  mov   $03a7+x,a
11ee: ae        pop   a
11ef: d5 af 03  mov   $03af+x,a
11f2: 2f 0d     bra   $1201
;
11f4: d5 af 03  mov   $03af+x,a         ; X = $03F9, $03AF+X = A
11f7: 2d        push  a
11f8: 3f 22 0f  call  $0f22
11fb: e8 80     mov   a,#$80
11fd: d5 a7 03  mov   $03a7+x,a
1200: ae        pop   a
;
1201: c9 f8 03  mov   $03f8,x
1204: fd        mov   y,a               ; Y = A = $03AF+X
1205: f6 c7 04  mov   a,$04c7+y
1208: 8f d5 a0  mov   $a0,#$d5
120b: 8f 05 a1  mov   $a1,#$05
120e: 8d 06     mov   y,#$06
1210: cf        mul   ya
1211: 7a a0     addw  ya,$a0
1213: da a0     movw  $a0,ya            ; $A0/1 = #$5D5 + ($04C7+Y * 6)
1215: 8d 01     mov   y,#$01
1217: f7 a0     mov   a,($a0)+y
1219: 2d        push  a
121a: fc        inc   y
121b: f7 a0     mov   a,($a0)+y
121d: c4 a1     mov   $a1,a
121f: ae        pop   a
1220: c4 a0     mov   $a0,a             ; $A0/1 = (WORD) [$A0]+1 (sequence header)
1222: e8 00     mov   a,#$00
1224: d5 df 03  mov   $03df+x,a
1227: d5 c7 03  mov   $03c7+x,a
122a: d5 e7 03  mov   $03e7+x,a
122d: e8 02     mov   a,#$02
122f: d5 d7 03  mov   $03d7+x,a
; read the sequence header
1232: 8d 00     mov   y,#$00
1234: f7 a0     mov   a,($a0)+y         ; header+0: initial tempo
1236: fc        inc   y
1237: d5 b7 03  mov   $03b7+x,a
123a: e8 7d     mov   a,#$7d
123c: d5 bf 03  mov   $03bf+x,a
123f: f7 a0     mov   a,($a0)+y         ; header+1: channels
1241: fc        inc   y
1242: c4 a2     mov   $a2,a
1244: d8 a3     mov   $a3,x
1246: e8 00     mov   a,#$00
1248: c5 f2 03  mov   $03f2,a
124b: f8 a3     mov   x,$a3
124d: f5 af 03  mov   a,$03af+x
1250: 3f 0f 13  call  $130f
1253: 90 03     bcc   $1258
1255: 5f ae 11  jmp   $11ae
;
1258: f7 a0     mov   a,($a0)+y
125a: fc        inc   y
125b: c4 a4     mov   $a4,a
125d: f7 a0     mov   a,($a0)+y         ; header+2+(N*2): offset to the head of the channel
125f: fc        inc   y
1260: c4 a5     mov   $a5,a
1262: 6d        push  y
1263: ba a0     movw  ya,$a0
1265: 7a a4     addw  ya,$a4
1267: d4 00     mov   $00+x,a
1269: db 01     mov   $01+x,y           ; set reading ptr
126b: ee        pop   y
126c: e8 01     mov   a,#$01
126e: d4 14     mov   $14+x,a
1270: d5 94 03  mov   $0394+x,a
1273: e8 cc     mov   a,#$cc
1275: d5 04 02  mov   $0204+x,a         ; duration rate = #$CC
1278: e8 00     mov   a,#$00            ; zero following vars
127a: d4 15     mov   $15+x,a
127c: d4 3c     mov   $3c+x,a
127e: d4 8d     mov   $8d+x,a
1280: d5 f4 02  mov   $02f4+x,a
1283: d5 a4 02  mov   $02a4+x,a
1286: d5 40 02  mov   $0240+x,a
1289: d5 cb 02  mov   $02cb+x,a
128c: d5 08 03  mov   $0308+x,a
128f: d5 53 02  mov   $0253+x,a
1292: d5 17 02  mov   $0217+x,a         ; loop counter
1295: d5 2b 02  mov   $022b+x,a
1298: d5 44 03  mov   $0344+x,a
129b: d5 80 03  mov   $0380+x,a
129e: c5 94 03  mov   $0394,a
12a1: e8 60     mov   a,#$60
12a3: d4 28     mov   $28+x,a
12a5: e8 ff     mov   a,#$ff
12a7: d4 78     mov   $78+x,a
12a9: d5 54 02  mov   $0254+x,a
12ac: e8 80     mov   a,#$80
12ae: d4 29     mov   $29+x,a           ; volume #$80
12b0: e4 a3     mov   a,$a3
12b2: d5 a3 02  mov   $02a3+x,a
12b5: e5 f2 03  mov   a,$03f2
12b8: d5 7f 03  mov   $037f+x,a
12bb: 3f d4 12  call  $12d4
12be: ac f2 03  inc   $03f2
12c1: 6e a2 87  dbnz  $a2,$124b         ; repeat for each channels
12c4: 38 3f ab  and   $ab,#$3f
12c7: e4 ab     mov   a,$ab
12c9: 20        clrp
12ca: 8f 6c f2  mov   $f2,#$6c
12cd: c4 f3     mov   $f3,a             ; FLG
12cf: 20        clrp
12d0: 18 01 a8  or    $a8,#$01
12d3: 6f        ret

12d4: 6d        push  y
12d5: 3f 38 13  call  $1338
12d8: 8d 01     mov   y,#$01
12da: e8 00     mov   a,#$00
12dc: 3f 23 1b  call  $1b23             ; VOL(R)
12df: 8d 00     mov   y,#$00
12e1: 3f 23 1b  call  $1b23             ; VOL(L)
12e4: e8 00     mov   a,#$00
12e6: 3f 31 18  call  $1831
12e9: 3f 5c 1f  call  $1f5c
12ec: 3f 9e 1f  call  $1f9e
12ef: 3f 3e 1c  call  $1c3e
12f2: b0 04     bcs   $12f8
12f4: fd        mov   y,a
12f5: 3f 93 1a  call  $1a93
12f8: ee        pop   y
12f9: 6f        ret

12fa: 2d        push  a
12fb: cd 00     mov   x,#$00
12fd: f5 b7 03  mov   a,$03b7+x
1300: f0 07     beq   $1309
1302: 3d        inc   x
1303: c8 08     cmp   x,#$08
1305: d0 f6     bne   $12fd
1307: 2f 03     bra   $130c
1309: ae        pop   a
130a: 60        clrc
130b: 6f        ret

130c: ae        pop   a
130d: 80        setc
130e: 6f        ret

130f: 65 eb 28  cmp   a,$28eb
1312: b0 11     bcs   $1325
1314: cd 00     mov   x,#$00
1316: f5 a3 02  mov   a,$02a3+x
1319: 68 ff     cmp   a,#$ff
131b: f0 19     beq   $1336
131d: 3d        inc   x
131e: 3d        inc   x
131f: c8 10     cmp   x,#$10
1321: d0 f3     bne   $1316
1323: 2f e8     bra   $130d
1325: cd 12     mov   x,#$12
1327: f5 a3 02  mov   a,$02a3+x
132a: 68 ff     cmp   a,#$ff
132c: f0 08     beq   $1336
132e: c8 04     cmp   x,#$04
1330: f0 db     beq   $130d
1332: 1d        dec   x
1333: 1d        dec   x
1334: 2f f1     bra   $1327
1336: 60        clrc
1337: 6f        ret

1338: 3f 57 1c  call  $1c57
133b: b0 30     bcs   $136d
133d: 8d 00     mov   y,#$00
133f: f6 6c 03  mov   a,$036c+y
1342: f0 1b     beq   $135f
1344: fc        inc   y
1345: fc        inc   y
1346: ad 10     cmp   y,#$10
1348: 90 f5     bcc   $133f
134a: 8d 00     mov   y,#$00
134c: f6 6c 03  mov   a,$036c+y
134f: 28 01     and   a,#$01
1351: f0 0c     beq   $135f
1353: fc        inc   y
1354: fc        inc   y
1355: ad 10     cmp   y,#$10
1357: 90 f3     bcc   $134c
1359: e8 ff     mov   a,#$ff
135b: d5 6b 03  mov   $036b+x,a
135e: 6f        ret

135f: f6 6c 03  mov   a,$036c+y
1362: 08 01     or    a,#$01
1364: d6 6c 03  mov   $036c+y,a
1367: dd        mov   a,y
1368: 5c        lsr   a
1369: d5 6b 03  mov   $036b+x,a
136c: 6f        ret

136d: 8d 0e     mov   y,#$0e
136f: f6 6c 03  mov   a,$036c+y
1372: 28 02     and   a,#$02
1374: f0 0e     beq   $1384
1376: ad 00     cmp   y,#$00
1378: f0 04     beq   $137e
137a: dc        dec   y
137b: dc        dec   y
137c: 2f f1     bra   $136f
137e: e8 ff     mov   a,#$ff
1380: d5 6b 03  mov   $036b+x,a
1383: 6f        ret

1384: f6 6c 03  mov   a,$036c+y
1387: 08 02     or    a,#$02
1389: d6 6c 03  mov   $036c+y,a
138c: dd        mov   a,y
138d: 5c        lsr   a
138e: d5 6b 03  mov   $036b+x,a
1391: 6f        ret

1392: 3f 57 1c  call  $1c57
1395: 90 01     bcc   $1398
1397: 6f        ret

1398: f5 6b 03  mov   a,$036b+x
139b: 1c        asl   a
139c: fd        mov   y,a
139d: c4 a0     mov   $a0,a
139f: f6 6c 03  mov   a,$036c+y
13a2: 28 02     and   a,#$02
13a4: d0 01     bne   $13a7
13a6: 6f        ret

13a7: 8d 00     mov   y,#$00
13a9: f6 6c 03  mov   a,$036c+y
13ac: f0 07     beq   $13b5
13ae: fc        inc   y
13af: fc        inc   y
13b0: ad 10     cmp   y,#$10
13b2: 90 f5     bcc   $13a9
13b4: 6f        ret

13b5: f6 6c 03  mov   a,$036c+y
13b8: 08 01     or    a,#$01
13ba: d6 6c 03  mov   $036c+y,a
13bd: dd        mov   a,y
13be: 5c        lsr   a
13bf: d5 6b 03  mov   $036b+x,a
13c2: eb a0     mov   y,$a0
13c4: f6 6c 03  mov   a,$036c+y
13c7: 28 fe     and   a,#$fe
13c9: d6 6c 03  mov   $036c+y,a
13cc: 3f d0 13  call  $13d0
13cf: 6f        ret

13d0: f5 cc 02  mov   a,$02cc+x
13d3: 8d 04     mov   y,#$04
13d5: 3f 23 1b  call  $1b23             ; SRCN
13d8: f5 df 02  mov   a,$02df+x
13db: 8d 07     mov   y,#$07
13dd: 3f 23 1b  call  $1b23             ; GAIN
13e0: f5 e0 02  mov   a,$02e0+x
13e3: 8d 05     mov   y,#$05
13e5: 3f 23 1b  call  $1b23             ; ADSR(1)
13e8: f5 f3 02  mov   a,$02f3+x
13eb: 8d 06     mov   y,#$06
13ed: 3f 23 1b  call  $1b23             ; ADSR(2)
13f0: f5 cb 02  mov   a,$02cb+x
13f3: 28 20     and   a,#$20
13f5: f0 05     beq   $13fc
13f7: 3f 3c 1f  call  $1f3c
13fa: 2f 03     bra   $13ff
13fc: 3f 5c 1f  call  $1f5c
13ff: f5 cb 02  mov   a,$02cb+x
1402: 28 40     and   a,#$40
1404: f0 05     beq   $140b
1406: 3f 7e 1f  call  $1f7e
1409: 2f 03     bra   $140e
140b: 3f 9e 1f  call  $1f9e
140e: e8 01     mov   a,#$01
1410: d5 94 03  mov   $0394+x,a
1413: 6f        ret

1414: 3f 57 1c  call  $1c57
1417: b0 0f     bcs   $1428
1419: f5 6b 03  mov   a,$036b+x
141c: 1c        asl   a
141d: fd        mov   y,a
141e: f6 6c 03  mov   a,$036c+y
1421: 28 fe     and   a,#$fe
1423: d6 6c 03  mov   $036c+y,a
1426: 2f 0d     bra   $1435
1428: f5 6b 03  mov   a,$036b+x
142b: 1c        asl   a
142c: fd        mov   y,a
142d: f6 6c 03  mov   a,$036c+y
1430: 28 fd     and   a,#$fd
1432: d6 6c 03  mov   $036c+y,a
1435: e8 ff     mov   a,#$ff
1437: d5 6b 03  mov   $036b+x,a
143a: 6f        ret

143b: 20        clrp
143c: 8d 00     mov   y,#$00
;
143e: f6 b7 03  mov   a,$03b7+y         ; tempo
1441: d0 09     bne   $144c
1443: fc        inc   y
1444: ad 08     cmp   y,#$08
1446: 90 f6     bcc   $143e
1448: 38 fe a8  and   $a8,#$fe
144b: 6f        ret

144c: 18 01 a8  or    $a8,#$01
144f: 6f        ret

1450: 2d        push  a
1451: f6 c7 04  mov   a,$04c7+y
1454: 68 ff     cmp   a,#$ff
1456: ae        pop   a
1457: 6f        ret

1458: 20        clrp
1459: 8f 5c f2  mov   $f2,#$5c
145c: 8f 00 f3  mov   $f3,#$00          ; KOF
145f: 20        clrp
1460: e4 a8     mov   a,$a8
1462: 28 01     and   a,#$01
1464: d0 01     bne   $1467
1466: 6f        ret

1467: 3f db 1f  call  $1fdb
146a: cd 00     mov   x,#$00
146c: f5 b7 03  mov   a,$03b7+x         ; tempo
146f: 68 00     cmp   a,#$00
1471: f0 55     beq   $14c8             ; if 0, halt
1473: 60        clrc
1474: 95 bf 03  adc   a,$03bf+x         ; add tempo to counter
1477: d5 bf 03  mov   $03bf+x,a
147a: b0 04     bcs   $1480
147c: 68 fb     cmp   a,#$fb
147e: 90 48     bcc   $14c8             ; tick if the result is over 251
1480: 80        setc                    ; then clip the counter between 1 and 250
1481: a8 fa     sbc   a,#$fa            ; timer0 5ms * quarter 48 tick * 250 = 60000000
1483: d5 bf 03  mov   $03bf+x,a         ; thus the tempo value means bpm actually
1486: 3f 7b 1e  call  $1e7b
1489: 7d        mov   a,x
148a: 8d 00     mov   y,#$00
148c: cd 00     mov   x,#$00
148e: 75 a3 02  cmp   a,$02a3+x
1491: d0 15     bne   $14a8
1493: 2d        push  a
1494: cb a0     mov   $a0,y
1496: f5 7f 03  mov   a,$037f+x
1499: 64 a0     cmp   a,$a0
149b: d0 0a     bne   $14a7
149d: 4d        push  x
149e: 6d        push  y
149f: 3f 0e 15  call  $150e
14a2: 3f e5 15  call  $15e5
14a5: ee        pop   y
14a6: ce        pop   x
14a7: ae        pop   a
14a8: 3d        inc   x
14a9: 3d        inc   x
14aa: c8 14     cmp   x,#$14
14ac: 90 e0     bcc   $148e
14ae: fc        inc   y
14af: ad 08     cmp   y,#$08
14b1: 90 d9     bcc   $148c
14b3: 5d        mov   x,a
14b4: e8 fd     mov   a,#$fd
14b6: 35 d7 03  and   a,$03d7+x
14b9: d5 d7 03  mov   $03d7+x,a
14bc: f5 e7 03  mov   a,$03e7+x
14bf: 28 80     and   a,#$80
14c1: f0 05     beq   $14c8
14c3: e8 00     mov   a,#$00
14c5: d5 e7 03  mov   $03e7+x,a
14c8: 3d        inc   x
14c9: c8 08     cmp   x,#$08
14cb: d0 9f     bne   $146c
14cd: 20        clrp
14ce: 8f 4c f2  mov   $f2,#$4c
14d1: 8f 00 f3  mov   $f3,#$00          ; KON
14d4: 20        clrp
14d5: 6f        ret

14d6: 20        clrp
14d7: 8f 4c f2  mov   $f2,#$4c
14da: 8f 00 f3  mov   $f3,#$00          ; KON
14dd: 20        clrp
14de: cd 00     mov   x,#$00
14e0: f5 b7 03  mov   a,$03b7+x
14e3: 68 00     cmp   a,#$00
14e5: f0 20     beq   $1507
14e7: 60        clrc
14e8: 95 bf 03  adc   a,$03bf+x
14eb: b0 04     bcs   $14f1
14ed: 68 fb     cmp   a,#$fb
14ef: 90 16     bcc   $1507
14f1: 7d        mov   a,x
14f2: cd 00     mov   x,#$00
14f4: 75 a3 02  cmp   a,$02a3+x
14f7: d0 07     bne   $1500
14f9: 2d        push  a
14fa: 4d        push  x
14fb: 3f e5 15  call  $15e5
14fe: ce        pop   x
14ff: ae        pop   a
1500: 3d        inc   x
1501: 3d        inc   x
1502: c8 14     cmp   x,#$14
1504: d0 ee     bne   $14f4
1506: 5d        mov   x,a
1507: 3d        inc   x
1508: c8 08     cmp   x,#$08
150a: d0 d4     bne   $14e0
150c: 20        clrp
150d: 6f        ret

150e: 3f 04 1f  call  $1f04
1511: 3f 9d 1c  call  $1c9d
1514: 3f 67 1d  call  $1d67
1517: 3f ba 1d  call  $1dba
151a: 3f 0b 1e  call  $1e0b
151d: f4 15     mov   a,$15+x
151f: f0 0a     beq   $152b
1521: bc        inc   a
1522: f0 07     beq   $152b
1524: 9b 15     dec   $15+x
1526: d0 03     bne   $152b
1528: 3f 7f 1a  call  $1a7f
152b: 9b 14     dec   $14+x
152d: d0 03     bne   $1532
152f: 3f 4e 15  call  $154e
1532: f5 94 03  mov   a,$0394+x
1535: d0 0e     bne   $1545
1537: f5 a3 02  mov   a,$02a3+x
153a: fd        mov   y,a
153b: bc        inc   a
153c: f0 0f     beq   $154d
153e: f6 d7 03  mov   a,$03d7+y
1541: 28 02     and   a,#$02
1543: f0 08     beq   $154d
1545: 3f 9e 1a  call  $1a9e
1548: e8 00     mov   a,#$00
154a: d5 94 03  mov   $0394+x,a
154d: 6f        ret

154e: f5 a3 02  mov   a,$02a3+x
1551: 68 ff     cmp   a,#$ff
1553: d0 01     bne   $1556
1555: 6f        ret

1556: 3f 92 13  call  $1392
1559: 3f 64 1c  call  $1c64
155c: 3f bd 19  call  $19bd             ; read vcmd byte
155f: 68 a0     cmp   a,#$a0
1561: b0 5b     bcs   $15be             ; vcmds A0-FF
1563: 68 50     cmp   a,#$50
1565: 90 0d     bcc   $1574             ; vcmds 00-4F
; vcmds 50-9F - note (with its length)
1567: 2d        push  a
1568: 3f bd 19  call  $19bd
156b: d5 03 02  mov   $0203+x,a
156e: d4 14     mov   $14+x,a
1570: ae        pop   a
1571: 80        setc
1572: a8 50     sbc   a,#$50
; vcmds 00-4F,50-9F
1574: 68 00     cmp   a,#$00
1576: d0 10     bne   $1588
; vcmds 00,40 - rest
1578: 3f 3e 1c  call  $1c3e
157b: b0 01     bcs   $157e
157d: fd        mov   y,a
157e: f5 03 02  mov   a,$0203+x
1581: d4 14     mov   $14+x,a
1583: e8 00     mov   a,#$00
1585: d4 15     mov   $15+x,a
1587: 6f        ret
; vcmds 01-4F,51-9F - note
1588: 68 4f     cmp   a,#$4f
158a: f0 07     beq   $1593             ; vcmds 4F,9F - tie
158c: 60        clrc
158d: 95 a4 02  adc   a,$02a4+x
1590: 3f 3b 1b  call  $1b3b
1593: f4 15     mov   a,$15+x
1595: 68 ff     cmp   a,#$ff
1597: f0 03     beq   $159c
1599: 3f 58 1a  call  $1a58
159c: f5 03 02  mov   a,$0203+x
159f: d4 14     mov   $14+x,a
15a1: f5 04 02  mov   a,$0204+x
15a4: d0 06     bne   $15ac
15a6: e8 ff     mov   a,#$ff
15a8: d4 15     mov   $15+x,a
15aa: 2f 11     bra   $15bd
15ac: 68 fe     cmp   a,#$fe
15ae: d0 05     bne   $15b5
15b0: f4 14     mov   a,$14+x
15b2: 9c        dec   a
15b3: 2f 06     bra   $15bb
15b5: fb 14     mov   y,$14+x
15b7: 3f 49 1a  call  $1a49             ; y *= (a + 1) / 256;
15ba: dd        mov   a,y
15bb: d4 15     mov   $15+x,a
15bd: 6f        ret

; vcmds A0-FF
15be: 68 b6     cmp   a,#$b6
15c0: b0 03     bcs   $15c5
15c2: 5f c3 17  jmp   $17c3
; vcmds B6-FF
15c5: 68 ff     cmp   a,#$ff
15c7: f0 64     beq   $162d
15c9: 80        setc
15ca: a8 db     sbc   a,#$db
15cc: 90 13     bcc   $15e1
; vcmds DB-FE
15ce: 4d        push  x
15cf: 1c        asl   a
15d0: 5d        mov   x,a
15d1: f5 95 07  mov   a,$0795+x
15d4: c5 df 15  mov   $15de+1,a
15d7: f5 96 07  mov   a,$0796+x
15da: c5 e0 15  mov   $15de+2,a         ; overwrite call addr
15dd: ce        pop   x
15de: 3f 00 00  call  $0000             ; do vcmd
; vcmds B6-DA - reserved
15e1: 5f 5c 15  jmp   $155c

15e4: 6f        ret

15e5: f4 15     mov   a,$15+x
15e7: 68 ff     cmp   a,#$ff
15e9: f0 41     beq   $162c
15eb: f4 14     mov   a,$14+x
15ed: 9c        dec   a
15ee: d0 3c     bne   $162c
15f0: f5 cb 02  mov   a,$02cb+x
15f3: 28 20     and   a,#$20
15f5: d0 35     bne   $162c
15f7: f4 00     mov   a,$00+x
15f9: fb 01     mov   y,$01+x
15fb: da a0     movw  $a0,ya
15fd: 8d 00     mov   y,#$00
15ff: 2f 02     bra   $1603
1601: fc        inc   y
1602: fc        inc   y
1603: f7 a0     mov   a,($a0)+y
1605: 68 a0     cmp   a,#$a0
1607: 90 18     bcc   $1621
1609: 68 b6     cmp   a,#$b6
160b: 90 f5     bcc   $1602
160d: 68 ec     cmp   a,#$ec
160f: f0 f0     beq   $1601
1611: 68 f6     cmp   a,#$f6
1613: f0 ec     beq   $1601
1615: 68 eb     cmp   a,#$eb
1617: f0 e8     beq   $1601
1619: 68 f2     cmp   a,#$f2
161b: f0 e5     beq   $1602
161d: 68 f3     cmp   a,#$f3
161f: f0 e1     beq   $1602
1621: 68 00     cmp   a,#$00
1623: f0 07     beq   $162c
1625: 68 50     cmp   a,#$50
1627: f0 03     beq   $162c
1629: 3f 88 1a  call  $1a88
162c: 6f        ret

; vcmd FF - end of track
162d: f5 40 02  mov   a,$0240+x
1630: f0 03     beq   $1635
1632: 5f 70 19  jmp   $1970
1635: 3f 5c 1f  call  $1f5c
1638: 3f 9e 1f  call  $1f9e
163b: 8d 01     mov   y,#$01
163d: e8 00     mov   a,#$00
163f: 3f 23 1b  call  $1b23             ; VOL(R)
1642: 8d 00     mov   y,#$00
1644: e8 00     mov   a,#$00
1646: 3f 23 1b  call  $1b23             ; VOL(L)
1649: e8 ff     mov   a,#$ff
164b: c5 f2 03  mov   $03f2,a
164e: 3f 08 1a  call  $1a08
1651: b0 03     bcs   $1656
1653: cc f2 03  mov   $03f2,y
1656: f5 a3 02  mov   a,$02a3+x
1659: 2d        push  a
165a: 3f 88 1a  call  $1a88
165d: 3f 14 14  call  $1414
1660: e8 ff     mov   a,#$ff
1662: d5 a3 02  mov   $02a3+x,a
1665: e8 01     mov   a,#$01
1667: d4 14     mov   $14+x,a
1669: d5 03 02  mov   $0203+x,a
166c: ae        pop   a
166d: 8d 00     mov   y,#$00
166f: 76 a3 02  cmp   a,$02a3+y
1672: f0 30     beq   $16a4
1674: fc        inc   y
1675: fc        inc   y
1676: ad 14     cmp   y,#$14
1678: d0 f5     bne   $166f
167a: fd        mov   y,a
167b: e8 00     mov   a,#$00
167d: d6 b7 03  mov   $03b7+y,a
1680: f6 af 03  mov   a,$03af+y
1683: 65 eb 28  cmp   a,$28eb
1686: b0 09     bcs   $1691
1688: 2d        push  a
1689: e8 ff     mov   a,#$ff
168b: c5 f9 03  mov   $03f9,a
168e: ae        pop   a
168f: 2f 05     bra   $1696
1691: 2d        push  a
1692: 3f ef 0e  call  $0eef
1695: ae        pop   a
1696: fd        mov   y,a
1697: 4d        push  x
1698: 6d        push  y
1699: 3f 27 27  call  $2727
169c: ee        pop   y
169d: 3f 8a 26  call  $268a
16a0: 3f 3b 14  call  $143b
16a3: ce        pop   x
16a4: e5 f2 03  mov   a,$03f2
16a7: 68 ff     cmp   a,#$ff
16a9: f0 06     beq   $16b1
16ab: 4d        push  x
16ac: 5d        mov   x,a
16ad: 3f d0 13  call  $13d0
16b0: ce        pop   x
16b1: 6f        ret

; vcmd E1
16b2: f5 a3 02  mov   a,$02a3+x
16b5: fd        mov   y,a
16b6: f6 df 03  mov   a,$03df+y
16b9: bc        inc   a
16ba: 28 7f     and   a,#$7f
16bc: d6 df 03  mov   $03df+y,a
16bf: 6f        ret

; vcmd E0 - CPU related? conditional jump
16c0: 3f bd 19  call  $19bd
16c3: c4 a0     mov   $a0,a
16c5: 3f bd 19  call  $19bd
16c8: c4 a1     mov   $a1,a             ; set arg1/2 to $A0/1
16ca: f5 a3 02  mov   a,$02a3+x
16cd: fd        mov   y,a
16ce: f6 e7 03  mov   a,$03e7+y
16d1: 28 7f     and   a,#$7f
16d3: c4 a2     mov   $a2,a
16d5: 3f bd 19  call  $19bd
16d8: 64 a2     cmp   a,$a2
16da: d0 0b     bne   $16e7             ; jump if $03E7+Y == arg3
16dc: f4 00     mov   a,$00+x
16de: fb 01     mov   y,$01+x
16e0: 60        clrc
16e1: 7a a0     addw  ya,$a0            ; relative jump
16e3: d4 00     mov   $00+x,a
16e5: db 01     mov   $01+x,y
;
16e7: f5 a3 02  mov   a,$02a3+x
16ea: fd        mov   y,a
16eb: e4 a2     mov   a,$a2
16ed: 08 80     or    a,#$80
16ef: d6 e7 03  mov   $03e7+y,a         ; $03E7+Y |= #$80
16f2: 6f        ret

; vcmd DF
16f3: 3f bd 19  call  $19bd
16f6: d5 80 03  mov   $0380+x,a
16f9: e8 01     mov   a,#$01
16fb: d5 94 03  mov   $0394+x,a
16fe: 6f        ret

; vcmd E2 - set vibrato/tune parameters
16ff: 3f bd 19  call  $19bd
1702: 68 ff     cmp   a,#$ff
1704: f0 01     beq   $1707             ; #$FF = disable
1706: 1c        asl   a
1707: d4 78     mov   $78+x,a
1709: e8 00     mov   a,#$00
170b: d4 8d     mov   $8d+x,a
170d: bc        inc   a
170e: d4 8c     mov   $8c+x,a
1710: bc        inc   a
1711: d4 79     mov   $79+x,a
1713: 6f        ret

; vcmd E3
1714: 3f 3c 1f  call  $1f3c
1717: 6f        ret

; vcmd E4
1718: 3f 5c 1f  call  $1f5c
171b: 6f        ret

; vcmd E5
171c: f5 a3 02  mov   a,$02a3+x
171f: fd        mov   y,a
1720: 3f bd 19  call  $19bd
1723: d6 c7 03  mov   $03c7+y,a
1726: e8 80     mov   a,#$80
1728: d6 cf 03  mov   $03cf+y,a
172b: 6f        ret

; vcmd E6 - volume fade
172c: 3f bd 19  call  $19bd
172f: d5 43 03  mov   $0343+x,a         ; $0343+X = arg1 (target)
1732: 3f bd 19  call  $19bd
1735: d5 44 03  mov   $0344+x,a         ; $0344+X = arg2 (step)
1738: e8 80     mov   a,#$80
173a: d5 57 03  mov   $0357+x,a
173d: 6f        ret

; vcmd E7
173e: 3f bd 19  call  $19bd
1741: d5 53 02  mov   $0253+x,a
1744: 68 80     cmp   a,#$80
1746: b0 04     bcs   $174c
1748: e8 00     mov   a,#$00
174a: 2f 02     bra   $174e
174c: e8 ff     mov   a,#$ff
174e: d5 54 02  mov   $0254+x,a
1751: e8 80     mov   a,#$80
1753: d5 2f 03  mov   $032f+x,a
1756: 6f        ret

; vcmd E8 - pan fade
1757: f5 cb 02  mov   a,$02cb+x
175a: 28 f7     and   a,#$f7
175c: d5 cb 02  mov   $02cb+x,a
175f: 3f bd 19  call  $19bd             ; arg1 (target)
1762: 80        setc
1763: b4 3c     sbc   a,$3c+x
1765: 10 04     bpl   $176b
1767: 70 11     bvs   $177a
1769: 2f 02     bra   $176d
176b: 50 0d     bvc   $177a
176d: 48 ff     eor   a,#$ff
176f: bc        inc   a
1770: 2d        push  a
1771: f5 cb 02  mov   a,$02cb+x
1774: 08 08     or    a,#$08
1776: d5 cb 02  mov   $02cb+x,a
1779: ae        pop   a
177a: fd        mov   y,a
177b: 3f bd 19  call  $19bd
177e: d5 08 03  mov   $0308+x,a         ; $0308+X = arg2 (step)
1781: 4d        push  x
1782: 5d        mov   x,a
1783: dd        mov   a,y
1784: 8d 00     mov   y,#$00
1786: 9e        div   ya,x
1787: ce        pop   x
1788: d5 1c 03  mov   $031c+x,a
178b: dd        mov   a,y
178c: d5 1b 03  mov   $031b+x,a
178f: e8 80     mov   a,#$80
1791: d5 2f 03  mov   $032f+x,a
1794: 6f        ret

; vcmd E9
1795: 3f bd 19  call  $19bd
1798: d4 8d     mov   $8d+x,a
179a: 6f        ret

; vcmd EA - jump
179b: 3f bd 19  call  $19bd
179e: c4 a0     mov   $a0,a
17a0: 3f bd 19  call  $19bd
17a3: c4 a1     mov   $a1,a
17a5: f4 00     mov   a,$00+x
17a7: fb 01     mov   y,$01+x
17a9: 60        clrc
17aa: 7a a0     addw  ya,$a0
17ac: d4 00     mov   $00+x,a
17ae: db 01     mov   $01+x,y
17b0: 6f        ret

; vcmd EB - tempo
17b1: f5 a3 02  mov   a,$02a3+x
17b4: fd        mov   y,a
17b5: 3f bd 19  call  $19bd
17b8: d6 b7 03  mov   $03b7+y,a         ; set tempo
17bb: 6f        ret

; vcmd EC - set duration rate directly
17bc: 3f bd 19  call  $19bd
17bf: d5 04 02  mov   $0204+x,a
17c2: 6f        ret

; vcmds A0-B5 - set duration rate from table
17c3: fd        mov   y,a
17c4: f6 2d 17  mov   a,$172d+y         ; $17CD+(Y-#$A0)
17c7: d5 04 02  mov   $0204+x,a
17ca: 5f 5c 15  jmp   $155c

; duration rate lookup table
17cd: db $0d,$1a,$26,$33,$40,$4d,$5a,$66
17d5: db $73,$80,$8c,$99,$a6,$b3,$bf,$cc
17dd: db $d9,$e6,$f2,$fe,$ff,$00

; vcmd ED - set channel master volume
17e3: 3f bd 19  call  $19bd
17e6: d4 28     mov   $28+x,a
17e8: e8 01     mov   a,#$01
17ea: d5 94 03  mov   $0394+x,a
17ed: 6f        ret

; vcmd EE - set panpot
17ee: 3f bd 19  call  $19bd
17f1: d4 3c     mov   $3c+x,a
17f3: e8 01     mov   a,#$01
17f5: d5 94 03  mov   $0394+x,a
17f8: 6f        ret

; vcmd EF - set ADSR1/2 param from args
17f9: 3f bd 19  call  $19bd
17fc: d5 e0 02  mov   $02e0+x,a
17ff: 8d 05     mov   y,#$05
1801: 3f 23 1b  call  $1b23             ; ADSR(1)
1804: 3f bd 19  call  $19bd
1807: d5 f3 02  mov   $02f3+x,a
180a: 8d 06     mov   y,#$06
180c: 3f 23 1b  call  $1b23             ; ADSR(2)
180f: 28 e0     and   a,#$e0
1811: 08 19     or    a,#$19
1813: d5 93 03  mov   $0393+x,a
1816: 6f        ret

; vcmd DE - set ADSR and release rate
1817: 3f f9 17  call  $17f9             ; arg1/2 = ADSR1/2 param
; vcmd DD - set release rate
181a: f5 93 03  mov   a,$0393+x
181d: 28 e0     and   a,#$e0
181f: c5 a0 00  mov   $00a0,a
1822: 3f bd 19  call  $19bd             ; arg1 = release rate
1825: 28 1f     and   a,#$1f            ; sustain rate = 5 bit
1827: 05 a0 00  or    a,$00a0
182a: d5 93 03  mov   $0393+x,a
182d: 6f        ret

; vcmd F0 - set patch
182e: 3f bd 19  call  $19bd             ; arg1 (patch number)
1831: 2d        push  a
1832: f5 a3 02  mov   a,$02a3+x
1835: fd        mov   y,a
1836: f6 af 03  mov   a,$03af+y
1839: fd        mov   y,a
183a: 4d        push  x
183b: e5 e9 28  mov   a,$28e9
183e: c4 a4     mov   $a4,a
1840: e5 ea 28  mov   a,$28ea
1843: c4 a5     mov   $a5,a
1845: cd 00     mov   x,#$00
1847: ad 00     cmp   y,#$00
1849: f0 0f     beq   $185a
184b: e7 a4     mov   a,($a4+x)
184d: bc        inc   a
184e: bc        inc   a
184f: 6d        push  y
1850: 8d 00     mov   y,#$00
1852: 7a a4     addw  ya,$a4
1854: da a4     movw  $a4,ya
1856: ee        pop   y
1857: dc        dec   y
1858: 2f ed     bra   $1847
185a: ce        pop   x
185b: ae        pop   a
185c: bc        inc   a
185d: bc        inc   a
185e: fd        mov   y,a
185f: f7 a4     mov   a,($a4)+y
1861: 65 84 01  cmp   a,$0184
1864: f0 08     beq   $186e
1866: fd        mov   y,a
1867: f6 ff 03  mov   a,$03ff+y
186a: 68 ff     cmp   a,#$ff
186c: d0 15     bne   $1883
;
186e: f5 cb 02  mov   a,$02cb+x
1871: 08 80     or    a,#$80
1873: d5 cb 02  mov   $02cb+x,a
1876: 3f 9e 1a  call  $1a9e
1879: 3f 3e 1c  call  $1c3e
187c: b0 04     bcs   $1882
187e: fd        mov   y,a
187f: 3f 93 1a  call  $1a93
1882: 6f        ret

; read sample info table (A=SRCN)
1883: d5 cc 02  mov   $02cc+x,a
1886: 8d 04     mov   y,#$04
1888: 3f 23 1b  call  $1b23             ; SRCN
188b: 8d 08     mov   y,#$08
188d: cf        mul   ya
188e: 8f 35 a4  mov   $a4,#$35
1891: 8f 05 a5  mov   $a5,#$05
1894: 7a a4     addw  ya,$a4
1896: da a4     movw  $a4,ya
1898: 8d 02     mov   y,#$02
189a: f7 a4     mov   a,($a4)+y
189c: d5 e0 02  mov   $02e0+x,a
189f: 8d 05     mov   y,#$05
18a1: 3f 23 1b  call  $1b23             ; ADSR(1)
18a4: 8d 03     mov   y,#$03
18a6: f7 a4     mov   a,($a4)+y
18a8: d5 f3 02  mov   $02f3+x,a
18ab: 8d 06     mov   y,#$06
18ad: 3f 23 1b  call  $1b23             ; ADSR(2)
18b0: 28 e0     and   a,#$e0
18b2: 08 19     or    a,#$19
18b4: d5 93 03  mov   $0393+x,a
18b7: 8d 04     mov   y,#$04
18b9: f7 a4     mov   a,($a4)+y
18bb: d5 df 02  mov   $02df+x,a
18be: 8d 07     mov   y,#$07
18c0: 3f 23 1b  call  $1b23             ; GAIN
18c3: 8d 05     mov   y,#$05
18c5: f7 a4     mov   a,($a4)+y
18c7: d5 b8 02  mov   $02b8+x,a
18ca: 8d 06     mov   y,#$06
18cc: f7 a4     mov   a,($a4)+y
18ce: d5 b7 02  mov   $02b7+x,a
18d1: f5 cb 02  mov   a,$02cb+x
18d4: 28 7f     and   a,#$7f
18d6: d5 cb 02  mov   $02cb+x,a
18d9: e8 01     mov   a,#$01
18db: d5 94 03  mov   $0394+x,a
18de: 6f        ret

; vcmds F1,F2 - duration copy on
18df: f5 cb 02  mov   a,$02cb+x
18e2: 08 01     or    a,#$01
18e4: d5 cb 02  mov   $02cb+x,a
18e7: 5f 64 1c  jmp   $1c64

; vcmd F3 - duration copy off
18ea: f5 cb 02  mov   a,$02cb+x
18ed: 28 fe     and   a,#$fe
18ef: d5 cb 02  mov   $02cb+x,a
18f2: 6f        ret

; vcmd DB - flag repeat (alternative)
18f3: f5 2b 02  mov   a,$022b+x
18f6: 2f 19     bra   $1911             ; jump if it's non zero

; vcmd DC - repeat once more (alternative)
18f8: f5 2b 02  mov   a,$022b+x
18fb: d0 02     bne   $18ff
18fd: e8 02     mov   a,#$02            ; repeat twice
18ff: 9c        dec   a
1900: d5 2b 02  mov   $022b+x,a
1903: 2f 0c     bra   $1911

; vcmd F4 - repeat once more
1905: 8d 02     mov   y,#$02
; conditional loop
1907: f5 17 02  mov   a,$0217+x
190a: d0 01     bne   $190d
190c: dd        mov   a,y
190d: 9c        dec   a                 ; dec repeat count
190e: d5 17 02  mov   $0217+x,a
1911: d0 06     bne   $1919             ; done?
1913: 3f bd 19  call  $19bd
1916: 5f bd 19  jmp   $19bd             ; just ignore arg1/2
1919: 5f 9b 17  jmp   $179b             ; relative jump

; vcmd F5 - conditional loop
191c: 3f bd 19  call  $19bd
191f: fd        mov   y,a
1920: 2f e5     bra   $1907

; vcmd F6 - set volume
1922: 3f bd 19  call  $19bd
1925: d4 29     mov   $29+x,a
1927: e8 01     mov   a,#$01
1929: d5 94 03  mov   $0394+x,a
192c: 6f        ret

; vcmd F7 - nop
192d: 6f        ret

; vcmd F8 - call subroutine
192e: 3f bd 19  call  $19bd
1931: c4 a0     mov   $a0,a
1933: 3f bd 19  call  $19bd
1936: c4 a1     mov   $a1,a
1938: f5 40 02  mov   a,$0240+x
193b: 68 06     cmp   a,#$06
193d: b0 1d     bcs   $195c             ; allows triple nest in max
193f: 2d        push  a
1940: 3f 5d 19  call  $195d             ; set where to write in $A2/3
1943: ee        pop   y
1944: f4 00     mov   a,$00+x
1946: d7 a2     mov   ($a2)+y,a
1948: fc        inc   y
1949: f4 01     mov   a,$01+x
194b: d7 a2     mov   ($a2)+y,a         ; put reading ptr ($00/1)
194d: fc        inc   y
194e: dd        mov   a,y
194f: d5 40 02  mov   $0240+x,a         ; increment stack ptr
1952: fb 01     mov   y,$01+x
1954: f4 00     mov   a,$00+x
1956: 7a a0     addw  ya,$a0
1958: d4 00     mov   $00+x,a
195a: db 01     mov   $01+x,y           ; update reading ptr to $00/1 + arg1/2
195c: 6f        ret
; calc where to put reading ptr
195d: e8 67     mov   a,#$67
195f: c4 a2     mov   $a2,a
1961: e8 02     mov   a,#$02
1963: c4 a3     mov   $a3,a
1965: 7d        mov   a,x
1966: 8d 03     mov   y,#$03
1968: cf        mul   ya
1969: 8d 00     mov   y,#$00
196b: 7a a2     addw  ya,$a2
196d: da a2     movw  $a2,ya            ; $A2 = X*3 + #$0267
196f: 6f        ret

; vcmd F9 - return from subroutine
1970: f5 40 02  mov   a,$0240+x
1973: f0 13     beq   $1988             ; nothing has been called, do nothing
1975: 2d        push  a
1976: 3f 5d 19  call  $195d             ; set where to read in $A2/3
1979: ee        pop   y
197a: dc        dec   y
197b: f7 a2     mov   a,($a2)+y
197d: d4 01     mov   $01+x,a
197f: dc        dec   y
1980: f7 a2     mov   a,($a2)+y
1982: d4 00     mov   $00+x,a           ; restore reading ptr
1984: dd        mov   a,y
1985: d5 40 02  mov   $0240+x,a         ; decrement stack ptr
1988: 6f        ret

; vcmd FA - key shift (transpose)
1989: 3f bd 19  call  $19bd             ; arg1 = key (signed)
198c: d5 a4 02  mov   $02a4+x,a
198f: 6f        ret

; vcmd FB - pitch slide
1990: 3f bd 19  call  $19bd             ; arg1 = key (signed)
1993: 68 00     cmp   a,#$00
1995: 10 05     bpl   $199c
1997: 48 ff     eor   a,#$ff
1999: bc        inc   a
199a: 08 80     or    a,#$80
199c: d5 07 03  mov   $0307+x,a
199f: 3f bd 19  call  $19bd             ; arg2 (step)
19a2: d5 f4 02  mov   $02f4+x,a
19a5: 5c        lsr   a
19a6: d5 58 03  mov   $0358+x,a
19a9: 6f        ret

; vcmd FC
19aa: 3f 7e 1f  call  $1f7e
19ad: 6f        ret

; vcmd FD
19ae: 3f 9e 1f  call  $1f9e
19b1: 6f        ret

; vcmd FE
19b2: f5 a3 02  mov   a,$02a3+x
19b5: fd        mov   y,a
19b6: 3f bd 19  call  $19bd
19b9: 3f 4b 20  call  $204b
19bc: 6f        ret

; read next arg
19bd: e7 00     mov   a,($00+x)
19bf: bb 00     inc   $00+x
19c1: d0 02     bne   $19c5
19c3: bb 01     inc   $01+x
19c5: 6f        ret

19c6: 20        clrp
19c7: e4 a9     mov   a,$a9
19c9: f0 0f     beq   $19da
19cb: 8b a9     dec   $a9
19cd: d0 0b     bne   $19da
19cf: 38 df ab  and   $ab,#$df
19d2: e4 ab     mov   a,$ab
19d4: 20        clrp
19d5: 8f 6c f2  mov   $f2,#$6c
19d8: c4 f3     mov   $f3,a             ; FLG
19da: 20        clrp
19db: e4 aa     mov   a,$aa
19dd: f0 27     beq   $1a06
19df: 8b aa     dec   $aa
19e1: d0 23     bne   $1a06
19e3: 20        clrp
19e4: 8f 2c f2  mov   $f2,#$2c
19e7: e5 ad 00  mov   a,$00ad
19ea: c4 f3     mov   $f3,a             ; EVOL(L)
19ec: 8f 3c f2  mov   $f2,#$3c
19ef: e5 ef 03  mov   a,$03ef
19f2: f0 05     beq   $19f9
19f4: e5 ac 00  mov   a,$00ac
19f7: 2f 03     bra   $19fc
19f9: e5 ad 00  mov   a,$00ad
19fc: c4 f3     mov   $f3,a             ; EVOL(R)
19fe: 8f 0d f2  mov   $f2,#$0d
1a01: e5 b0 00  mov   a,$00b0
1a04: c4 f3     mov   $f3,a             ; EFB
1a06: 20        clrp
1a07: 6f        ret

1a08: 3f 57 1c  call  $1c57
1a0b: b0 02     bcs   $1a0f
1a0d: 80        setc
1a0e: 6f        ret

1a0f: 7d        mov   a,x
1a10: c5 f3 03  mov   $03f3,a
1a13: 8d 00     mov   y,#$00
1a15: dd        mov   a,y
1a16: 65 f3 03  cmp   a,$03f3
1a19: f0 08     beq   $1a23
1a1b: f6 6b 03  mov   a,$036b+y
1a1e: 75 6b 03  cmp   a,$036b+x
1a21: f0 08     beq   $1a2b
1a23: fc        inc   y
1a24: fc        inc   y
1a25: ad 14     cmp   y,#$14
1a27: 90 ec     bcc   $1a15
1a29: 80        setc
1a2a: 6f        ret

1a2b: 60        clrc
1a2c: 6f        ret

1a2d: 65 eb 28  cmp   a,$28eb
1a30: b0 13     bcs   $1a45
1a32: cd 00     mov   x,#$00
1a34: 2d        push  a
1a35: f5 b7 03  mov   a,$03b7+x
1a38: ae        pop   a
1a39: f0 05     beq   $1a40
1a3b: 75 af 03  cmp   a,$03af+x
1a3e: f0 07     beq   $1a47
1a40: 3d        inc   x
1a41: c8 08     cmp   x,#$08
1a43: 90 ef     bcc   $1a34
1a45: 60        clrc
1a46: 6f        ret

1a47: 80        setc
1a48: 6f        ret

; multiply Y by (A+1)/256 with exceptions
1a49: bc        inc   a
1a4a: f0 0b     beq   $1a57             ; A=255 : simply returns Y
1a4c: 68 81     cmp   a,#$81
1a4e: b0 01     bcs   $1a51
1a50: 9c        dec   a                 ; 128<=A<=255 : A++
1a51: cf        mul   ya
1a52: 68 00     cmp   a,#$00
1a54: 10 01     bpl   $1a57
1a56: fc        inc   y                 ; round up
1a57: 6f        ret

1a58: f5 cb 02  mov   a,$02cb+x
1a5b: 28 80     and   a,#$80
1a5d: f0 01     beq   $1a60
1a5f: 6f        ret

1a60: 8d 06     mov   y,#$06
1a62: f5 f3 02  mov   a,$02f3+x
1a65: 3f 23 1b  call  $1b23             ; ADSR(2)
1a68: 2f 00     bra   $1a6a
1a6a: 3f 3e 1c  call  $1c3e
1a6d: b0 0b     bcs   $1a7a
1a6f: fd        mov   y,a
1a70: f6 dd 07  mov   a,$07dd+y
1a73: 20        clrp
1a74: 8f 4c f2  mov   $f2,#$4c
1a77: c4 f3     mov   $f3,a             ; KON
1a79: 20        clrp
1a7a: e8 02     mov   a,#$02
1a7c: d4 79     mov   $79+x,a
1a7e: 6f        ret

1a7f: f5 93 03  mov   a,$0393+x
1a82: 8d 06     mov   y,#$06
1a84: 3f 23 1b  call  $1b23             ; ADSR(2)
1a87: 6f        ret

1a88: 3f 3e 1c  call  $1c3e
1a8b: b0 04     bcs   $1a91
1a8d: fd        mov   y,a
1a8e: 3f 93 1a  call  $1a93
1a91: 6f        ret

1a92: 6f        ret

1a93: f6 dd 07  mov   a,$07dd+y
1a96: 20        clrp
1a97: 8f 5c f2  mov   $f2,#$5c
1a9a: c4 f3     mov   $f3,a             ; KOF
1a9c: 20        clrp
1a9d: 6f        ret

; calculate final volume
1a9e: f5 cb 02  mov   a,$02cb+x
1aa1: 28 80     and   a,#$80
1aa3: f0 0a     beq   $1aaf
1aa5: e8 00     mov   a,#$00
1aa7: c5 f2 03  mov   $03f2,a
1aaa: c5 f3 03  mov   $03f3,a
1aad: 2f 63     bra   $1b12
1aaf: fb 28     mov   y,$28+x           ; channel master volume
1ab1: f4 29     mov   a,$29+x           ; channel volume
1ab3: 3f 49 1a  call  $1a49             ; y *= (a + 1) / 256;
1ab6: f5 54 02  mov   a,$0254+x
1ab9: 3f 49 1a  call  $1a49             ; y *= (a + 1) / 256;
1abc: f5 a3 02  mov   a,$02a3+x
1abf: 4d        push  x
1ac0: 5d        mov   x,a
1ac1: f5 a7 03  mov   a,$03a7+x
1ac4: ce        pop   x
1ac5: 3f 49 1a  call  $1a49             ; y *= (a + 1) / 256;
1ac8: cc f2 03  mov   $03f2,y
1acb: cc f3 03  mov   $03f3,y           ; set L/R volume
1ace: e5 ef 03  mov   a,$03ef
1ad1: f0 3f     beq   $1b12
1ad3: f4 3c     mov   a,$3c+x           ; panpot (signed)
1ad5: f0 1b     beq   $1af2             ; skip if center
1ad7: 4d        push  x
1ad8: cd 01     mov   x,#$01            ; target = right volume
1ada: 68 00     cmp   a,#$00
1adc: 10 08     bpl   $1ae6
; panpot < 0
1ade: 1d        dec   x                 ; target = left volume
1adf: 48 ff     eor   a,#$ff
1ae1: bc        inc   a
1ae2: 10 02     bpl   $1ae6
1ae4: e8 7f     mov   a,#$7f            ; a = max(127, abs(a))
; calculate volume balance
1ae6: 1c        asl   a
1ae7: 48 ff     eor   a,#$ff
1ae9: 9c        dec   a                 ; a = 255 - (a * 2 + 1)
1aea: 3f 49 1a  call  $1a49             ; y *= (a + 1) / 256;
1aed: dd        mov   a,y
1aee: d5 f2 03  mov   $03f2+x,a         ; decrease weak channel volume
1af1: ce        pop   x
1af2: f5 80 03  mov   a,$0380+x
1af5: 28 01     and   a,#$01
1af7: f0 09     beq   $1b02
1af9: e5 f2 03  mov   a,$03f2           ; reverse-phase left channel
1afc: 48 ff     eor   a,#$ff
1afe: bc        inc   a
1aff: c5 f2 03  mov   $03f2,a
1b02: f5 80 03  mov   a,$0380+x
1b05: 28 02     and   a,#$02
1b07: f0 09     beq   $1b12
1b09: e5 f3 03  mov   a,$03f3           ; reverse-phase right channel
1b0c: 48 ff     eor   a,#$ff
1b0e: bc        inc   a
1b0f: c5 f3 03  mov   $03f3,a
1b12: e5 f2 03  mov   a,$03f2
1b15: 8d 01     mov   y,#$01
1b17: 3f 23 1b  call  $1b23             ; VOL(R)
1b1a: e5 f3 03  mov   a,$03f3
1b1d: 8d 00     mov   y,#$00
1b1f: 3f 23 1b  call  $1b23             ; VOL(L)
1b22: 6f        ret

; set a to dsp voice reg y
1b23: 2d        push  a
1b24: cc f4 03  mov   $03f4,y
1b27: 3f 3e 1c  call  $1c3e
1b2a: b0 0d     bcs   $1b39
1b2c: 9f        xcn   a
1b2d: 60        clrc
1b2e: 85 f4 03  adc   a,$03f4
1b31: 20        clrp
1b32: c4 f2     mov   $f2,a
1b34: ae        pop   a
1b35: c4 f3     mov   $f3,a
1b37: 20        clrp
1b38: 6f        ret

1b39: ae        pop   a
1b3a: 6f        ret

1b3b: d5 18 02  mov   $0218+x,a
1b3e: 20        clrp
1b3f: f5 cb 02  mov   a,$02cb+x
1b42: 28 20     and   a,#$20
1b44: f0 14     beq   $1b5a
1b46: f5 18 02  mov   a,$0218+x
1b49: 28 1f     and   a,#$1f
1b4b: 38 e0 ab  and   $ab,#$e0
1b4e: 04 ab     or    a,$ab
1b50: c4 ab     mov   $ab,a
1b52: 20        clrp
1b53: 8f 6c f2  mov   $f2,#$6c
1b56: c4 f3     mov   $f3,a             ; FLG
1b58: 20        clrp
1b59: 6f        ret

1b5a: f5 cb 02  mov   a,$02cb+x
1b5d: 28 80     and   a,#$80
1b5f: d0 11     bne   $1b72
1b61: 3f 73 1b  call  $1b73
1b64: e4 a2     mov   a,$a2
1b66: 8d 02     mov   y,#$02
1b68: 3f 23 1b  call  $1b23             ; P(L)
1b6b: e4 a3     mov   a,$a3
1b6d: 8d 03     mov   y,#$03
1b6f: 3f 23 1b  call  $1b23             ; P(H)
1b72: 6f        ret

1b73: f5 18 02  mov   a,$0218+x
1b76: 60        clrc
1b77: 9c        dec   a
1b78: 8d 00     mov   y,#$00
1b7a: 4d        push  x
1b7b: cd 0c     mov   x,#$0c
1b7d: 9e        div   ya,x
1b7e: ce        pop   x
1b7f: c4 a4     mov   $a4,a
1b81: dd        mov   a,y
1b82: bc        inc   a
1b83: 1c        asl   a
1b84: fd        mov   y,a
1b85: f6 e5 07  mov   a,$07e5+y
1b88: c4 a0     mov   $a0,a
1b8a: f6 e6 07  mov   a,$07e6+y
1b8d: c4 a1     mov   $a1,a
1b8f: f4 8d     mov   a,$8d+x
1b91: 30 1b     bmi   $1bae
1b93: fc        inc   y
1b94: fc        inc   y
1b95: 2d        push  a
1b96: f6 e6 07  mov   a,$07e6+y
1b99: 2d        push  a
1b9a: f6 e5 07  mov   a,$07e5+y
1b9d: ee        pop   y
1b9e: 9a a0     subw  ya,$a0
1ba0: da a2     movw  $a2,ya
1ba2: ae        pop   a
1ba3: 3f 1d 1c  call  $1c1d
1ba6: ba a2     movw  ya,$a2
1ba8: 7a a0     addw  ya,$a0
1baa: da a0     movw  $a0,ya
1bac: 2f 20     bra   $1bce
1bae: dc        dec   y
1baf: dc        dec   y
1bb0: 48 ff     eor   a,#$ff
1bb2: bc        inc   a
1bb3: 2d        push  a
1bb4: f6 e6 07  mov   a,$07e6+y
1bb7: 2d        push  a
1bb8: f6 e5 07  mov   a,$07e5+y
1bbb: ee        pop   y
1bbc: da a2     movw  $a2,ya
1bbe: ba a0     movw  ya,$a0
1bc0: 9a a2     subw  ya,$a2
1bc2: da a2     movw  $a2,ya
1bc4: ae        pop   a
1bc5: 3f 1d 1c  call  $1c1d
1bc8: ba a0     movw  ya,$a0
1bca: 9a a2     subw  ya,$a2
1bcc: da a0     movw  $a0,ya
1bce: f5 b7 02  mov   a,$02b7+x
1bd1: eb a1     mov   y,$a1
1bd3: cf        mul   ya
1bd4: da a2     movw  $a2,ya
1bd6: f5 b8 02  mov   a,$02b8+x
1bd9: eb a0     mov   y,$a0
1bdb: cf        mul   ya
1bdc: 7a a2     addw  ya,$a2
1bde: da a2     movw  $a2,ya
1be0: 3c        rol   a
1be1: 28 01     and   a,#$01
1be3: c4 a5     mov   $a5,a
1be5: f5 b7 02  mov   a,$02b7+x
1be8: eb a0     mov   y,$a0
1bea: cf        mul   ya
1beb: 6d        push  y
1bec: f5 b8 02  mov   a,$02b8+x
1bef: eb a1     mov   y,$a1
1bf1: cf        mul   ya
1bf2: 2d        push  a
1bf3: dd        mov   a,y
1bf4: 60        clrc
1bf5: 84 a5     adc   a,$a5
1bf7: c4 a5     mov   $a5,a
1bf9: ee        pop   y
1bfa: ae        pop   a
1bfb: 7a a2     addw  ya,$a2
1bfd: da a2     movw  $a2,ya
1bff: 28 00     and   a,#$00
1c01: 84 a5     adc   a,$a5
1c03: c4 a5     mov   $a5,a
1c05: e8 08     mov   a,#$08
1c07: 80        setc
1c08: a4 a4     sbc   a,$a4
1c0a: 30 10     bmi   $1c1c
1c0c: f0 0e     beq   $1c1c
1c0e: bc        inc   a
1c0f: fd        mov   y,a
1c10: 4b a5     lsr   $a5
1c12: 6b a3     ror   $a3
1c14: 6b a2     ror   $a2
1c16: fe f8     dbnz  y,$1c10
1c18: 90 02     bcc   $1c1c
1c1a: 3a a2     incw  $a2
1c1c: 6f        ret

1c1d: 68 7f     cmp   a,#$7f
1c1f: f0 1c     beq   $1c3d
1c21: 1c        asl   a
1c22: 68 80     cmp   a,#$80
1c24: 90 01     bcc   $1c27
1c26: bc        inc   a
1c27: 2d        push  a
1c28: eb a2     mov   y,$a2
1c2a: cf        mul   ya
1c2b: cb a2     mov   $a2,y
1c2d: ae        pop   a
1c2e: eb a3     mov   y,$a3
1c30: cf        mul   ya
1c31: 60        clrc
1c32: 84 a2     adc   a,$a2
1c34: c4 a2     mov   $a2,a
1c36: 0d        push  psw
1c37: dd        mov   a,y
1c38: 8e        pop   psw
1c39: 88 00     adc   a,#$00
1c3b: c4 a3     mov   $a3,a
1c3d: 6f        ret

1c3e: 3f 57 1c  call  $1c57
1c41: b0 0e     bcs   $1c51
1c43: f5 6b 03  mov   a,$036b+x
1c46: 1c        asl   a
1c47: fd        mov   y,a
1c48: f6 6c 03  mov   a,$036c+y
1c4b: 28 02     and   a,#$02
1c4d: f0 02     beq   $1c51
1c4f: 80        setc
1c50: 6f        ret

1c51: f5 6b 03  mov   a,$036b+x
1c54: 68 08     cmp   a,#$08
1c56: 6f        ret

1c57: 2d        push  a
1c58: f5 a3 02  mov   a,$02a3+x
1c5b: fd        mov   y,a
1c5c: f6 af 03  mov   a,$03af+y
1c5f: 65 eb 28  cmp   a,$28eb
1c62: ae        pop   a
1c63: 6f        ret

; duplicate duration info if needed
1c64: f5 cb 02  mov   a,$02cb+x
1c67: 28 01     and   a,#$01
1c69: d0 01     bne   $1c6c
1c6b: 6f        ret
; copy duration info of from other channel
1c6c: f5 a3 02  mov   a,$02a3+x
1c6f: c4 a0     mov   $a0,a
1c71: f5 7f 03  mov   a,$037f+x
1c74: f0 26     beq   $1c9c
1c76: 9c        dec   a
1c77: c4 a2     mov   $a2,a
1c79: 8d 00     mov   y,#$00            ; for (Y = 0; Y < 20; Y += 2)
1c7b: f6 a3 02  mov   a,$02a3+y
1c7e: 64 a0     cmp   a,$a0
1c80: d0 14     bne   $1c96
1c82: f6 7f 03  mov   a,$037f+y
1c85: 64 a2     cmp   a,$a2             ; if ($02A3+Y == $02A3+X && $037F+Y == $037F+X - 1)
1c87: d0 0d     bne   $1c96
1c89: f6 03 02  mov   a,$0203+y
1c8c: d5 03 02  mov   $0203+x,a
1c8f: f6 04 02  mov   a,$0204+y
1c92: d5 04 02  mov   $0204+x,a         ;   $0203/4+X = $0203/4+Y
1c95: 6f        ret                     ;   return
1c96: fc        inc   y
1c97: fc        inc   y
1c98: ad 14     cmp   y,#$14
1c9a: 90 df     bcc   $1c7b             ; }
1c9c: 6f        ret

1c9d: f5 f4 02  mov   a,$02f4+x
1ca0: d0 01     bne   $1ca3
1ca2: 6f        ret

1ca3: f5 07 03  mov   a,$0307+x
1ca6: 10 22     bpl   $1cca
1ca8: 28 7f     and   a,#$7f
1caa: c4 a1     mov   $a1,a
1cac: f4 8d     mov   a,$8d+x
1cae: 10 07     bpl   $1cb7
1cb0: 8b a1     dec   $a1
1cb2: 3f 4f 1d  call  $1d4f
1cb5: 88 80     adc   a,#$80
1cb7: 3f 09 1d  call  $1d09
1cba: 8b a2     dec   $a2
1cbc: 30 05     bmi   $1cc3
1cbe: 3f 4f 1d  call  $1d4f
1cc1: 2f f7     bra   $1cba
1cc3: e4 a3     mov   a,$a3
1cc5: 5c        lsr   a
1cc6: d4 8d     mov   $8d+x,a
1cc8: 2f 2b     bra   $1cf5
1cca: c4 a1     mov   $a1,a
1ccc: f4 8d     mov   a,$8d+x
1cce: f0 11     beq   $1ce1
1cd0: 30 0c     bmi   $1cde
1cd2: 8b a1     dec   $a1
1cd4: 3f 58 1d  call  $1d58
1cd7: e8 80     mov   a,#$80
1cd9: 80        setc
1cda: b4 8d     sbc   a,$8d+x
1cdc: 2f 03     bra   $1ce1
1cde: 48 ff     eor   a,#$ff
1ce0: bc        inc   a
1ce1: 3f 09 1d  call  $1d09
1ce4: 8b a2     dec   $a2
1ce6: 30 05     bmi   $1ced
1ce8: 3f 58 1d  call  $1d58
1ceb: 2f f7     bra   $1ce4
1ced: e4 a3     mov   a,$a3
1cef: 5c        lsr   a
1cf0: 48 ff     eor   a,#$ff
1cf2: bc        inc   a
1cf3: d4 8d     mov   $8d+x,a
1cf5: 3f 3e 1b  call  $1b3e
1cf8: f5 f4 02  mov   a,$02f4+x
1cfb: 9c        dec   a
1cfc: d5 f4 02  mov   $02f4+x,a
1cff: f5 58 03  mov   a,$0358+x
1d02: f0 04     beq   $1d08
1d04: 9c        dec   a
1d05: d5 58 03  mov   $0358+x,a
1d08: 6f        ret

1d09: 1c        asl   a
1d0a: 68 80     cmp   a,#$80
1d0c: 90 01     bcc   $1d0f
1d0e: bc        inc   a
1d0f: c4 a0     mov   $a0,a
1d11: 4d        push  x
1d12: f5 f4 02  mov   a,$02f4+x
1d15: 5d        mov   x,a
1d16: e4 a1     mov   a,$a1
1d18: 8d 00     mov   y,#$00
1d1a: 9e        div   ya,x
1d1b: c4 a2     mov   $a2,a
1d1d: e4 a0     mov   a,$a0
1d1f: 9e        div   ya,x
1d20: ce        pop   x
1d21: c4 a3     mov   $a3,a
1d23: e4 a0     mov   a,$a0
1d25: 80        setc
1d26: a4 a3     sbc   a,$a3
1d28: b0 02     bcs   $1d2c
1d2a: ab a2     inc   $a2
1d2c: c4 a3     mov   $a3,a
1d2e: dd        mov   a,y
1d2f: 60        clrc
1d30: 95 58 03  adc   a,$0358+x
1d33: b0 09     bcs   $1d3e
1d35: 75 f4 02  cmp   a,$02f4+x
1d38: b0 04     bcs   $1d3e
1d3a: d5 58 03  mov   $0358+x,a
1d3d: 6f        ret

1d3e: b5 f4 02  sbc   a,$02f4+x
1d41: d5 58 03  mov   $0358+x,a
1d44: 8b a3     dec   $a3
1d46: e4 a3     mov   a,$a3
1d48: 68 ff     cmp   a,#$ff
1d4a: d0 02     bne   $1d4e
1d4c: ab a2     inc   $a2
1d4e: 6f        ret

1d4f: f5 18 02  mov   a,$0218+x
1d52: 9c        dec   a
1d53: d5 18 02  mov   $0218+x,a
1d56: 2f 07     bra   $1d5f
1d58: f5 18 02  mov   a,$0218+x
1d5b: bc        inc   a
1d5c: d5 18 02  mov   $0218+x,a
1d5f: f5 07 03  mov   a,$0307+x
1d62: 9c        dec   a
1d63: d5 07 03  mov   $0307+x,a
1d66: 6f        ret

1d67: f5 08 03  mov   a,$0308+x
1d6a: d0 01     bne   $1d6d
1d6c: 6f        ret

1d6d: e8 01     mov   a,#$01
1d6f: d5 94 03  mov   $0394+x,a
1d72: f5 2f 03  mov   a,$032f+x
1d75: 60        clrc
1d76: 95 1b 03  adc   a,$031b+x
1d79: d5 2f 03  mov   $032f+x,a
1d7c: b0 05     bcs   $1d83
1d7e: 75 08 03  cmp   a,$0308+x
1d81: 90 07     bcc   $1d8a
1d83: b5 08 03  sbc   a,$0308+x
1d86: d5 2f 03  mov   $032f+x,a
1d89: 80        setc
1d8a: 0d        push  psw
1d8b: f5 cb 02  mov   a,$02cb+x
1d8e: 28 08     and   a,#$08
1d90: f0 14     beq   $1da6
1d92: f4 3c     mov   a,$3c+x
1d94: 8e        pop   psw
1d95: ed        notc
1d96: b5 1c 03  sbc   a,$031c+x
1d99: 30 1c     bmi   $1db7
1d9b: 50 1a     bvc   $1db7
1d9d: e8 00     mov   a,#$00
1d9f: d5 08 03  mov   $0308+x,a
1da2: e8 81     mov   a,#$81
1da4: 2f 11     bra   $1db7
1da6: f4 3c     mov   a,$3c+x
1da8: 8e        pop   psw
1da9: 95 1c 03  adc   a,$031c+x
1dac: 10 09     bpl   $1db7
1dae: 50 07     bvc   $1db7
1db0: e8 00     mov   a,#$00
1db2: d5 08 03  mov   $0308+x,a
1db5: e8 7f     mov   a,#$7f
1db7: d4 3c     mov   $3c+x,a
1db9: 6f        ret

1dba: f5 53 02  mov   a,$0253+x
1dbd: d0 01     bne   $1dc0
1dbf: 6f        ret

1dc0: 2d        push  a
1dc1: e8 01     mov   a,#$01
1dc3: d5 94 03  mov   $0394+x,a
1dc6: ae        pop   a
1dc7: c4 a0     mov   $a0,a
1dc9: 10 09     bpl   $1dd4
1dcb: 48 ff     eor   a,#$ff
1dcd: bc        inc   a
1dce: 68 80     cmp   a,#$80
1dd0: d0 02     bne   $1dd4
1dd2: e8 7f     mov   a,#$7f
1dd4: 8f 00 a1  mov   $a1,#$00
1dd7: 1c        asl   a
1dd8: 2b a1     rol   $a1
1dda: 1c        asl   a
1ddb: 2b a1     rol   $a1
1ddd: 60        clrc
1dde: 95 2f 03  adc   a,$032f+x
1de1: 0d        push  psw
1de2: d5 2f 03  mov   $032f+x,a
1de5: e4 a0     mov   a,$a0
1de7: 10 10     bpl   $1df9
1de9: f5 54 02  mov   a,$0254+x
1dec: 8e        pop   psw
1ded: ed        notc
1dee: a4 a1     sbc   a,$a1
1df0: b0 15     bcs   $1e07
1df2: e8 00     mov   a,#$00
1df4: d5 53 02  mov   $0253+x,a
1df7: 2f 0e     bra   $1e07
1df9: f5 54 02  mov   a,$0254+x
1dfc: 8e        pop   psw
1dfd: 84 a1     adc   a,$a1
1dff: 90 06     bcc   $1e07
1e01: e8 00     mov   a,#$00
1e03: d5 53 02  mov   $0253+x,a
1e06: 9c        dec   a
1e07: d5 54 02  mov   $0254+x,a
1e0a: 6f        ret

1e0b: f5 44 03  mov   a,$0344+x
1e0e: d0 01     bne   $1e11
1e10: 6f        ret

1e11: e8 01     mov   a,#$01
1e13: d5 94 03  mov   $0394+x,a
1e16: e8 00     mov   a,#$00
1e18: c4 a0     mov   $a0,a
1e1a: f5 43 03  mov   a,$0343+x
1e1d: 80        setc
1e1e: b5 29 00  sbc   a,$0029+x
1e21: b0 0f     bcs   $1e32
1e23: d0 04     bne   $1e29
1e25: d5 44 03  mov   $0344+x,a
1e28: 6f        ret

1e29: 2d        push  a
1e2a: e8 01     mov   a,#$01
1e2c: c4 a0     mov   $a0,a
1e2e: ae        pop   a
1e2f: 48 ff     eor   a,#$ff
1e31: bc        inc   a
1e32: 4d        push  x
1e33: 2d        push  a
1e34: f5 44 03  mov   a,$0344+x
1e37: 5d        mov   x,a
1e38: ae        pop   a
1e39: 8d 00     mov   y,#$00
1e3b: 9e        div   ya,x
1e3c: c4 a1     mov   $a1,a
1e3e: e8 00     mov   a,#$00
1e40: 9e        div   ya,x
1e41: ce        pop   x
1e42: 60        clrc
1e43: 95 57 03  adc   a,$0357+x
1e46: d5 57 03  mov   $0357+x,a
1e49: b0 05     bcs   $1e50
1e4b: 75 44 03  cmp   a,$0344+x
1e4e: 90 07     bcc   $1e57
1e50: b5 44 03  sbc   a,$0344+x
1e53: d5 57 03  mov   $0357+x,a
1e56: 80        setc
1e57: 0d        push  psw
1e58: e4 a0     mov   a,$a0
1e5a: f0 0c     beq   $1e68
1e5c: f4 29     mov   a,$29+x
1e5e: 8e        pop   psw
1e5f: ed        notc
1e60: a4 a1     sbc   a,$a1
1e62: b0 0d     bcs   $1e71
1e64: e8 00     mov   a,#$00
1e66: 2f 09     bra   $1e71
1e68: f4 29     mov   a,$29+x
1e6a: 8e        pop   psw
1e6b: 84 a1     adc   a,$a1
1e6d: 90 02     bcc   $1e71
1e6f: e8 ff     mov   a,#$ff
1e71: d4 29     mov   $29+x,a
1e73: f5 44 03  mov   a,$0344+x
1e76: 9c        dec   a
1e77: d5 44 03  mov   $0344+x,a
1e7a: 6f        ret

1e7b: f5 c7 03  mov   a,$03c7+x
1e7e: d0 01     bne   $1e81
1e80: 6f        ret

1e81: c4 a0     mov   $a0,a
1e83: e8 02     mov   a,#$02
1e85: 15 d7 03  or    a,$03d7+x
1e88: d5 d7 03  mov   $03d7+x,a
1e8b: e4 a0     mov   a,$a0
1e8d: 10 0b     bpl   $1e9a
1e8f: 48 ff     eor   a,#$ff
1e91: bc        inc   a
1e92: 68 80     cmp   a,#$80
1e94: d0 04     bne   $1e9a
1e96: e8 7f     mov   a,#$7f
1e98: 2f 0b     bra   $1ea5
1e9a: 68 7f     cmp   a,#$7f
1e9c: d0 07     bne   $1ea5
1e9e: 8f 10 a1  mov   $a1,#$10
1ea1: e8 00     mov   a,#$00
1ea3: 2f 0c     bra   $1eb1
1ea5: 8f 00 a1  mov   $a1,#$00
1ea8: 1c        asl   a
1ea9: 2b a1     rol   $a1
1eab: 1c        asl   a
1eac: 2b a1     rol   $a1
1eae: 1c        asl   a
1eaf: 2b a1     rol   $a1
1eb1: 60        clrc
1eb2: 95 cf 03  adc   a,$03cf+x
1eb5: 0d        push  psw
1eb6: d5 cf 03  mov   $03cf+x,a
1eb9: e4 a0     mov   a,$a0
1ebb: 10 27     bpl   $1ee4
1ebd: f5 a7 03  mov   a,$03a7+x
1ec0: 8e        pop   psw
1ec1: ed        notc
1ec2: a4 a1     sbc   a,$a1
1ec4: b0 31     bcs   $1ef7
1ec6: e8 00     mov   a,#$00
1ec8: d5 c7 03  mov   $03c7+x,a
1ecb: d5 a7 03  mov   $03a7+x,a
1ece: f5 d7 03  mov   a,$03d7+x
1ed1: 28 01     and   a,#$01
1ed3: d0 09     bne   $1ede
1ed5: f5 d7 03  mov   a,$03d7+x
1ed8: 08 02     or    a,#$02
1eda: d5 d7 03  mov   $03d7+x,a
1edd: 6f        ret

1ede: 7d        mov   a,x
1edf: fd        mov   y,a
1ee0: 3f af 22  call  $22af
1ee3: 6f        ret

1ee4: f5 a7 03  mov   a,$03a7+x
1ee7: 8e        pop   psw
1ee8: 84 a1     adc   a,$a1
1eea: b0 04     bcs   $1ef0
1eec: 68 80     cmp   a,#$80
1eee: 90 07     bcc   $1ef7
1ef0: e8 00     mov   a,#$00
1ef2: d5 c7 03  mov   $03c7+x,a
1ef5: e8 80     mov   a,#$80
1ef7: d5 a7 03  mov   $03a7+x,a
1efa: f5 d7 03  mov   a,$03d7+x
1efd: 08 02     or    a,#$02
1eff: d5 d7 03  mov   $03d7+x,a
1f02: 6f        ret

1f03: 6f        ret

1f04: f4 78     mov   a,$78+x
1f06: 68 ff     cmp   a,#$ff
1f08: f0 31     beq   $1f3b
1f0a: 9b 8c     dec   $8c+x
1f0c: d0 2d     bne   $1f3b
1f0e: fb 78     mov   y,$78+x
1f10: f6 d4 08  mov   a,$08d4+y
1f13: c4 a0     mov   $a0,a
1f15: f6 d5 08  mov   a,$08d5+y
1f18: c4 a1     mov   $a1,a
1f1a: fb 79     mov   y,$79+x
1f1c: f7 a0     mov   a,($a0)+y
1f1e: 68 80     cmp   a,#$80
1f20: f0 19     beq   $1f3b
1f22: d4 8d     mov   $8d+x,a
1f24: fc        inc   y
1f25: f7 a0     mov   a,($a0)+y
1f27: fc        inc   y
1f28: d4 8c     mov   $8c+x,a
1f2a: dd        mov   a,y
1f2b: d4 79     mov   $79+x,a
1f2d: 8d 00     mov   y,#$00
1f2f: 77 a0     cmp   a,($a0)+y
1f31: d0 05     bne   $1f38
1f33: fc        inc   y
1f34: f7 a0     mov   a,($a0)+y
1f36: d4 79     mov   $79+x,a
1f38: 3f 3e 1b  call  $1b3e
1f3b: 6f        ret

1f3c: f5 cb 02  mov   a,$02cb+x
1f3f: 08 20     or    a,#$20
1f41: d5 cb 02  mov   $02cb+x,a
1f44: 3f 3e 1c  call  $1c3e
1f47: b0 12     bcs   $1f5b
1f49: fd        mov   y,a
1f4a: f6 dd 07  mov   a,$07dd+y
1f4d: 05 f0 03  or    a,$03f0
1f50: c5 f0 03  mov   $03f0,a
1f53: 8d 3d     mov   y,#$3d
1f55: 20        clrp
1f56: cb f2     mov   $f2,y
1f58: c4 f3     mov   $f3,a             ; NON
1f5a: 20        clrp
1f5b: 6f        ret

1f5c: f5 cb 02  mov   a,$02cb+x
1f5f: 28 df     and   a,#$df
1f61: d5 cb 02  mov   $02cb+x,a
1f64: 3f 3e 1c  call  $1c3e
1f67: b0 14     bcs   $1f7d
1f69: fd        mov   y,a
1f6a: f6 dd 07  mov   a,$07dd+y
1f6d: 48 ff     eor   a,#$ff
1f6f: 25 f0 03  and   a,$03f0
1f72: c5 f0 03  mov   $03f0,a
1f75: 8d 3d     mov   y,#$3d
1f77: 20        clrp
1f78: cb f2     mov   $f2,y
1f7a: c4 f3     mov   $f3,a             ; NON
1f7c: 20        clrp
1f7d: 6f        ret

1f7e: f5 cb 02  mov   a,$02cb+x
1f81: 08 40     or    a,#$40
1f83: d5 cb 02  mov   $02cb+x,a
1f86: 3f 3e 1c  call  $1c3e
1f89: b0 12     bcs   $1f9d
1f8b: fd        mov   y,a
1f8c: f6 dd 07  mov   a,$07dd+y
1f8f: 05 f1 03  or    a,$03f1
1f92: c5 f1 03  mov   $03f1,a
1f95: 8d 4d     mov   y,#$4d
1f97: 20        clrp
1f98: cb f2     mov   $f2,y
1f9a: c4 f3     mov   $f3,a             ; EON
1f9c: 20        clrp
1f9d: 6f        ret

1f9e: f5 cb 02  mov   a,$02cb+x
1fa1: 28 bf     and   a,#$bf
1fa3: d5 cb 02  mov   $02cb+x,a
1fa6: 3f 3e 1c  call  $1c3e
1fa9: b0 14     bcs   $1fbf
1fab: fd        mov   y,a
1fac: f6 dd 07  mov   a,$07dd+y
1faf: 48 ff     eor   a,#$ff
1fb1: 25 f1 03  and   a,$03f1
1fb4: c5 f1 03  mov   $03f1,a
1fb7: 8d 4d     mov   y,#$4d
1fb9: 20        clrp
1fba: cb f2     mov   $f2,y
1fbc: c4 f3     mov   $f3,a             ; EON
1fbe: 20        clrp
1fbf: 6f        ret

1fc0: 8d 00     mov   y,#$00
;
1fc2: 2d        push  a
1fc3: f6 b7 03  mov   a,$03b7+y         ; tempo
1fc6: f0 0e     beq   $1fd6
1fc8: ae        pop   a
1fc9: 76 af 03  cmp   a,$03af+y
1fcc: d0 02     bne   $1fd0
1fce: 60        clrc
1fcf: 6f        ret

1fd0: fc        inc   y
1fd1: ad 08     cmp   y,#$08
1fd3: 90 ed     bcc   $1fc2
1fd5: 6f        ret

1fd6: ae        pop   a
1fd7: 2f f7     bra   $1fd0
1fd9: 2f f6     bra   $1fd1
;
1fdb: 20        clrp
1fdc: e5 f7 03  mov   a,$03f7
1fdf: d0 01     bne   $1fe2
1fe1: 6f        ret
;
1fe2: 60        clrc
1fe3: 85 f6 03  adc   a,$03f6
1fe6: c5 f6 03  mov   $03f6,a
1fe9: b0 01     bcs   $1fec
1feb: 6f        ret
;
1fec: 20        clrp
1fed: 8f 00 a0  mov   $a0,#$00
1ff0: 8f 0c f2  mov   $f2,#$0c
1ff3: e4 f3     mov   a,$f3             ; MVOL(L)
1ff5: 3f 43 20  call  $2043
1ff8: 8f 0c f2  mov   $f2,#$0c
1ffb: c4 f3     mov   $f3,a             ; MVOL(L)
1ffd: 04 a0     or    a,$a0
1fff: c4 a0     mov   $a0,a
2001: 8f 1c f2  mov   $f2,#$1c
2004: e4 f3     mov   a,$f3             ; MVOL(R)
2006: 3f 43 20  call  $2043
2009: 8f 1c f2  mov   $f2,#$1c
200c: c4 f3     mov   $f3,a             ; MVOL(R)
200e: 04 a0     or    a,$a0
2010: c4 a0     mov   $a0,a
2012: 8f 2c f2  mov   $f2,#$2c
2015: e4 f3     mov   a,$f3             ; EVOL(L)
2017: 3f 43 20  call  $2043
201a: 8f 2c f2  mov   $f2,#$2c
201d: c4 f3     mov   $f3,a             ; EVOL(L)
201f: 04 a0     or    a,$a0
2021: c4 a0     mov   $a0,a
2023: 8f 3c f2  mov   $f2,#$3c
2026: e4 f3     mov   a,$f3             ; EVOL(R)
2028: 3f 43 20  call  $2043
202b: 8f 3c f2  mov   $f2,#$3c
202e: c4 f3     mov   $f3,a             ; EVOL(R)
2030: 04 a0     or    a,$a0
2032: f0 02     beq   $2036
2034: 20        clrp
2035: 6f        ret

2036: 40        setp
2037: c2 8e     set6  $8e
2039: e4 8e     mov   a,$8e
203b: 28 c0     and   a,#$c0
203d: c5 f4 00  mov   $00f4,a
2040: 5f db 09  jmp   $09db
2043: f0 03     beq   $2048
2045: 30 02     bmi   $2049
2047: 9c        dec   a
2048: 6f        ret

2049: bc        inc   a
204a: 6f        ret

204b: 20        clrp
204c: 1c        asl   a
204d: 4d        push  x
204e: 5d        mov   x,a
204f: f5 01 08  mov   a,$0801+x
2052: c4 a6     mov   $a6,a
2054: f5 02 08  mov   a,$0802+x
2057: c4 a7     mov   $a7,a
2059: ce        pop   x
205a: 4d        push  x
205b: 6d        push  y
205c: 3f ca 22  call  $22ca
205f: 68 10     cmp   a,#$10
2061: b0 09     bcs   $206c
2063: ad 08     cmp   y,#$08
2065: b0 26     bcs   $208d
2067: 3f 9e 20  call  $209e
206a: 2f 1d     bra   $2089
206c: 68 20     cmp   a,#$20
206e: b0 05     bcs   $2075
2070: 3f f3 20  call  $20f3
2073: 2f 14     bra   $2089
2075: 68 c0     cmp   a,#$c0
2077: b0 09     bcs   $2082
2079: ad 08     cmp   y,#$08
207b: b0 10     bcs   $208d
207d: 3f 4b 22  call  $224b
2080: 2f 07     bra   $2089
2082: 68 fe     cmp   a,#$fe
2084: d0 07     bne   $208d
2086: 3f 90 20  call  $2090
2089: ee        pop   y
208a: ce        pop   x
208b: 2f cd     bra   $205a
208d: ee        pop   y
208e: ce        pop   x
208f: 6f        ret

; set dsp reg from ...
2090: 3f ca 22  call  $22ca
2093: fd        mov   y,a
2094: 3f ca 22  call  $22ca
2097: 20        clrp
2098: cb f2     mov   $f2,y
209a: c4 f3     mov   $f3,a
209c: 20        clrp
209d: 6f        ret

209e: 68 00     cmp   a,#$00
20a0: d0 0f     bne   $20b1
20a2: 3f ca 22  call  $22ca
20a5: d6 a7 03  mov   $03a7+y,a
20a8: f6 d7 03  mov   a,$03d7+y
20ab: 08 02     or    a,#$02
20ad: d6 d7 03  mov   $03d7+y,a
20b0: 6f        ret

20b1: 68 01     cmp   a,#$01
20b3: d0 0c     bne   $20c1
20b5: 3f ca 22  call  $22ca
20b8: d6 c7 03  mov   $03c7+y,a
20bb: e8 80     mov   a,#$80
20bd: d6 cf 03  mov   $03cf+y,a
20c0: 6f        ret

20c1: 68 02     cmp   a,#$02
20c3: d0 07     bne   $20cc
20c5: 3f ca 22  call  $22ca
20c8: d6 b7 03  mov   $03b7+y,a
20cb: 6f        ret

20cc: 68 03     cmp   a,#$03
20ce: d0 04     bne   $20d4
20d0: 3f af 22  call  $22af
20d3: 6f        ret

20d4: 68 04     cmp   a,#$04
20d6: d0 0f     bne   $20e7
20d8: f6 d7 03  mov   a,$03d7+y
20db: 08 01     or    a,#$01
20dd: d6 d7 03  mov   $03d7+y,a
20e0: 3f ca 22  call  $22ca
20e3: d6 c7 03  mov   $03c7+y,a
20e6: 6f        ret

20e7: 68 05     cmp   a,#$05
20e9: d0 07     bne   $20f2
20eb: 3f ca 22  call  $22ca
20ee: d6 e7 03  mov   $03e7+y,a
20f1: 6f        ret

20f2: 6f        ret

20f3: 68 10     cmp   a,#$10
20f5: d0 15     bne   $210c
20f7: 8d 0f     mov   y,#$0f
20f9: 3f ca 22  call  $22ca
20fc: 20        clrp
20fd: cb f2     mov   $f2,y
20ff: c4 f3     mov   $f3,a             ; FIR
2101: 20        clrp
2102: dd        mov   a,y
2103: 60        clrc
2104: 88 10     adc   a,#$10
2106: fd        mov   y,a
2107: ad 80     cmp   y,#$80
2109: 90 ee     bcc   $20f9
210b: 6f        ret

210c: 68 11     cmp   a,#$11
210e: d0 1b     bne   $212b
2110: e8 00     mov   a,#$00
2112: c5 ef 03  mov   $03ef,a
2115: 20        clrp
2116: 8d 1c     mov   y,#$1c
2118: e5 af 00  mov   a,$00af
211b: cb f2     mov   $f2,y
211d: c4 f3     mov   $f3,a             ; MVOL(R)
211f: 8d 3c     mov   y,#$3c
2121: e5 ad 00  mov   a,$00ad
2124: cb f2     mov   $f2,y
2126: c4 f3     mov   $f3,a             ; EVOL(R)
2128: 20        clrp
2129: 2f 1d     bra   $2148
212b: 68 12     cmp   a,#$12
212d: d0 29     bne   $2158
212f: e8 01     mov   a,#$01
2131: c5 ef 03  mov   $03ef,a
2134: 20        clrp
2135: 8d 1c     mov   y,#$1c
2137: e5 ae 00  mov   a,$00ae
213a: cb f2     mov   $f2,y
213c: c4 f3     mov   $f3,a             ; MVOL(R)
213e: 8d 3c     mov   y,#$3c
2140: e5 ac 00  mov   a,$00ac
2143: cb f2     mov   $f2,y
2145: c4 f3     mov   $f3,a             ; EVOL(R)
2147: 20        clrp
2148: 8d 00     mov   y,#$00
214a: f6 d7 03  mov   a,$03d7+y
214d: 08 02     or    a,#$02
214f: d6 d7 03  mov   $03d7+y,a
2152: fc        inc   y
2153: ad 08     cmp   y,#$08
2155: 90 f3     bcc   $214a
2157: 6f        ret

2158: 68 13     cmp   a,#$13
215a: d0 28     bne   $2184
215c: 3f ca 22  call  $22ca
215f: c4 af     mov   $af,a
2161: 8d 0c     mov   y,#$0c
2163: 20        clrp
2164: cb f2     mov   $f2,y
2166: c4 f3     mov   $f3,a             ; MVOL(L)
2168: c4 af     mov   $af,a
216a: 20        clrp
216b: 3f ca 22  call  $22ca
216e: c4 ae     mov   $ae,a
2170: e5 ef 03  mov   a,$03ef
2173: f0 04     beq   $2179
2175: e4 ae     mov   a,$ae
2177: 2f 02     bra   $217b
2179: e4 af     mov   a,$af
217b: 8d 1c     mov   y,#$1c
217d: 20        clrp
217e: cb f2     mov   $f2,y
2180: c4 f3     mov   $f3,a             ; MVOL(R)
2182: 20        clrp
2183: 6f        ret

2184: 68 14     cmp   a,#$14
2186: d0 35     bne   $21bd
2188: e4 a9     mov   a,$a9
218a: d0 26     bne   $21b2
218c: 3f ca 22  call  $22ca
218f: c4 ad     mov   $ad,a
2191: 8d 2c     mov   y,#$2c
2193: 20        clrp
2194: cb f2     mov   $f2,y
2196: c4 f3     mov   $f3,a             ; EVOL(L)
2198: 20        clrp
2199: 3f ca 22  call  $22ca
219c: c4 ac     mov   $ac,a
219e: e5 ef 03  mov   a,$03ef
21a1: f0 04     beq   $21a7
21a3: e4 ac     mov   a,$ac
21a5: 2f 02     bra   $21a9
21a7: e4 ad     mov   a,$ad
21a9: 8d 3c     mov   y,#$3c
21ab: 20        clrp
21ac: cb f2     mov   $f2,y
21ae: c4 f3     mov   $f3,a             ; EVOL(R)
21b0: 20        clrp
21b1: 6f        ret

21b2: 3f ca 22  call  $22ca
21b5: c4 ad     mov   $ad,a
21b7: 3f ca 22  call  $22ca
21ba: c4 ac     mov   $ac,a
21bc: 6f        ret

21bd: 68 15     cmp   a,#$15
21bf: d0 15     bne   $21d6
21c1: 3f ca 22  call  $22ca
21c4: 20        clrp
21c5: 28 1f     and   a,#$1f
21c7: 38 e0 ab  and   $ab,#$e0
21ca: 04 ab     or    a,$ab
21cc: c4 ab     mov   $ab,a
21ce: 20        clrp
21cf: 8f 6c f2  mov   $f2,#$6c
21d2: c4 f3     mov   $f3,a             ; FLG
21d4: 20        clrp
21d5: 6f        ret

21d6: 68 16     cmp   a,#$16
21d8: d0 16     bne   $21f0
21da: e4 a9     mov   a,$a9
21dc: d0 0c     bne   $21ea
21de: 3f ca 22  call  $22ca
21e1: 8d 0d     mov   y,#$0d
21e3: 20        clrp
21e4: cb f2     mov   $f2,y
21e6: c4 f3     mov   $f3,a             ; EFB
21e8: 20        clrp
21e9: 6f        ret

21ea: 3f ca 22  call  $22ca
21ed: c4 b0     mov   $b0,a
21ef: 6f        ret

21f0: 68 17     cmp   a,#$17
21f2: d0 37     bne   $222b
21f4: 3f ca 22  call  $22ca
21f7: 68 05     cmp   a,#$05
21f9: 90 02     bcc   $21fd
21fb: e8 05     mov   a,#$05
21fd: 8d 7d     mov   y,#$7d
21ff: 20        clrp
2200: cb f2     mov   $f2,y
2202: c4 f3     mov   $f3,a             ; EDL
2204: 20        clrp
2205: 1c        asl   a
2206: 1c        asl   a
2207: c4 a9     mov   $a9,a
2209: 1c        asl   a
220a: c4 aa     mov   $aa,a
220c: 18 20 ab  or    $ab,#$20
220f: e4 ab     mov   a,$ab
2211: 20        clrp
2212: 8f 6c f2  mov   $f2,#$6c
2215: c4 f3     mov   $f3,a             ; FLG
2217: 8f 2c f2  mov   $f2,#$2c
221a: 8f 00 f3  mov   $f3,#$00          ; EVOL(L)
221d: 8f 3c f2  mov   $f2,#$3c
2220: 8f 00 f3  mov   $f3,#$00          ; EVOL(R)
2223: 8f 0d f2  mov   $f2,#$0d
2226: 8f 00 f3  mov   $f3,#$00          ; EFB
2229: 20        clrp
222a: 6f        ret

222b: 68 18     cmp   a,#$18
222d: d0 1b     bne   $224a
222f: 3f ca 22  call  $22ca
2232: ec f9 03  mov   y,$03f9
2235: ad 08     cmp   y,#$08
2237: b0 10     bcs   $2249
2239: d6 c7 03  mov   $03c7+y,a
223c: e8 80     mov   a,#$80
223e: d6 cf 03  mov   $03cf+y,a
2241: f6 d7 03  mov   a,$03d7+y
2244: 08 01     or    a,#$01
2246: d6 d7 03  mov   $03d7+y,a
2249: 6f        ret

224a: 6f        ret

224b: 9f        xcn   a
224c: 9c        dec   a
224d: 9c        dec   a
224e: 3f d4 22  call  $22d4
2251: 90 01     bcc   $2254
2253: 6f        ret

2254: 28 f0     and   a,#$f0
2256: 68 00     cmp   a,#$00
2258: d0 0c     bne   $2266
225a: 3f ca 22  call  $22ca
225d: d5 53 02  mov   $0253+x,a
2260: e8 80     mov   a,#$80
2262: d5 2f 03  mov   $032f+x,a
2265: 6f        ret

2266: 68 10     cmp   a,#$10
2268: d0 0b     bne   $2275
226a: 3f ca 22  call  $22ca
226d: d4 28     mov   $28+x,a
226f: e8 01     mov   a,#$01
2271: d5 94 03  mov   $0394+x,a
2274: 6f        ret

2275: 68 20     cmp   a,#$20
2277: d0 04     bne   $227d
2279: 3f 7e 1f  call  $1f7e
227c: 6f        ret

227d: 68 30     cmp   a,#$30
227f: d0 04     bne   $2285
2281: 3f 9e 1f  call  $1f9e
2284: 6f        ret

2285: 68 40     cmp   a,#$40
2287: d0 04     bne   $228d
2289: 3f 3c 1f  call  $1f3c
228c: 6f        ret

228d: 68 50     cmp   a,#$50
228f: d0 04     bne   $2295
2291: 3f 5c 1f  call  $1f5c
2294: 6f        ret

2295: 68 60     cmp   a,#$60
2297: d0 04     bne   $229d
2299: 3f 35 16  call  $1635
229c: 6f        ret

229d: 68 b0     cmp   a,#$b0
229f: b0 0d     bcs   $22ae
22a1: 9f        xcn   a
22a2: 80        setc
22a3: a8 07     sbc   a,#$07
22a5: d5 80 03  mov   $0380+x,a
22a8: e8 01     mov   a,#$01
22aa: d5 94 03  mov   $0394+x,a
22ad: 6f        ret

22ae: 6f        ret

22af: 20        clrp
22b0: ad 08     cmp   y,#$08
22b2: b0 15     bcs   $22c9
22b4: 4d        push  x
22b5: cd 00     mov   x,#$00
22b7: dd        mov   a,y
22b8: 75 a3 02  cmp   a,$02a3+x
22bb: d0 05     bne   $22c2
22bd: 2d        push  a
22be: 3f 35 16  call  $1635
22c1: ae        pop   a
22c2: 3d        inc   x
22c3: 3d        inc   x
22c4: c8 14     cmp   x,#$14
22c6: 90 f0     bcc   $22b8
22c8: ce        pop   x
22c9: 6f        ret

22ca: 20        clrp
22cb: 6d        push  y
22cc: 8d 00     mov   y,#$00
22ce: f7 a6     mov   a,($a6)+y
22d0: 3a a6     incw  $a6
22d2: ee        pop   y
22d3: 6f        ret

22d4: 2d        push  a
22d5: 28 0f     and   a,#$0f
22d7: c4 a2     mov   $a2,a
22d9: cd 00     mov   x,#$00
22db: dd        mov   a,y
22dc: 75 a3 02  cmp   a,$02a3+x
22df: d0 07     bne   $22e8
22e1: e4 a2     mov   a,$a2
22e3: 75 7f 03  cmp   a,$037f+x
22e6: f0 09     beq   $22f1
22e8: 3d        inc   x
22e9: 3d        inc   x
22ea: c8 14     cmp   x,#$14
22ec: 90 ed     bcc   $22db
22ee: ae        pop   a
22ef: 80        setc
22f0: 6f        ret

22f1: ae        pop   a
22f2: 60        clrc
22f3: 6f        ret

22f4: 40        setp
22f5: e5 e7 28  mov   a,$28e7
22f8: ec e8 28  mov   y,$28e8
22fb: da 00     movw  $00,ya
22fd: e8 f6     mov   a,#$f6
22ff: 8d d6     mov   y,#$d6
2301: 9a 00     subw  ya,$00
2303: da 02     movw  $02,ya
2305: e8 01     mov   a,#$01
2307: c4 7e     mov   $7e,a
2309: e8 04     mov   a,#$04
230b: c4 7f     mov   $7f,a
230d: cd 00     mov   x,#$00
230f: e8 ff     mov   a,#$ff
2311: d5 ff 03  mov   $03ff+x,a
2314: 3d        inc   x
2315: c8 c8     cmp   x,#$c8
2317: 90 f8     bcc   $2311
2319: cd 00     mov   x,#$00
231b: 7d        mov   a,x
231c: d5 00 07  mov   $0700+x,a
231f: d5 01 07  mov   $0701+x,a
2322: 3d        inc   x
2323: 3d        inc   x
2324: 3d        inc   x
2325: 3d        inc   x
2326: c8 50     cmp   x,#$50
2328: 90 f2     bcc   $231c
232a: cd 00     mov   x,#$00
232c: e8 ff     mov   a,#$ff
232e: d5 c7 04  mov   $04c7+x,a
2331: 3d        inc   x
2332: c8 64     cmp   x,#$64
2334: 90 f8     bcc   $232e
2336: e8 00     mov   a,#$00
2338: 5d        mov   x,a
2339: d5 d5 05  mov   $05d5+x,a
233c: 3d        inc   x
233d: 3d        inc   x
233e: 3d        inc   x
233f: 3d        inc   x
2340: 3d        inc   x
2341: 3d        inc   x
2342: c8 78     cmp   x,#$78
2344: 90 f3     bcc   $2339
2346: 3f 81 27  call  $2781
2349: 6f        ret

234a: 40        setp
234b: da 96     movw  $96,ya
234d: 3f a4 23  call  $23a4
2350: 3f 68 23  call  $2368
2353: b0 01     bcs   $2356
2355: 6f        ret

2356: ba 96     movw  ya,$96
2358: da 9c     movw  $9c,ya
235a: 3f 5d 25  call  $255d
235d: 3f a4 23  call  $23a4
2360: ba 9c     movw  ya,$9c
2362: da 96     movw  $96,ya
2364: 3f 68 23  call  $2368
2367: 6f        ret

2368: 8d 00     mov   y,#$00
236a: cb 9a     mov   $9a,y
236c: f9 68     mov   x,$68+y
236e: f4 02     mov   a,$02+x
2370: fb 03     mov   y,$03+x
2372: 5a 96     cmpw  ya,$96
2374: b0 09     bcs   $237f
2376: eb 9a     mov   y,$9a
2378: fc        inc   y
2379: 7e 7e     cmp   y,$7e
237b: 90 ed     bcc   $236a
237d: 80        setc
237e: 6f        ret

237f: 9a 96     subw  ya,$96
2381: da 9c     movw  $9c,ya
2383: d4 02     mov   $02+x,a
2385: db 03     mov   $03+x,y
2387: f4 00     mov   a,$00+x
2389: fb 01     mov   y,$01+x
238b: da 98     movw  $98,ya
238d: ba 9c     movw  ya,$9c
238f: d0 05     bne   $2396
2391: 3f e6 23  call  $23e6
2394: 2f 0a     bra   $23a0
2396: f4 00     mov   a,$00+x
2398: fb 01     mov   y,$01+x
239a: 7a 96     addw  ya,$96
239c: d4 00     mov   $00+x,a
239e: db 01     mov   $01+x,y
23a0: ba 98     movw  ya,$98
23a2: 60        clrc
23a3: 6f        ret

23a4: cd 00     mov   x,#$00
23a6: e8 00     mov   a,#$00
23a8: d4 68     mov   $68+x,a
23aa: 60        clrc
23ab: 88 04     adc   a,#$04
23ad: 3d        inc   x
23ae: 3e 7e     cmp   x,$7e
23b0: 90 f6     bcc   $23a8
23b2: 8d 00     mov   y,#$00
23b4: cb a0     mov   $a0,y
23b6: f9 68     mov   x,$68+y
23b8: d8 a1     mov   $a1,x
23ba: f4 02     mov   a,$02+x
23bc: fb 03     mov   y,$03+x
23be: da 9e     movw  $9e,ya
23c0: fc        inc   y
23c1: 7e 7e     cmp   y,$7e
23c3: b0 19     bcs   $23de
23c5: 6d        push  y
23c6: f9 68     mov   x,$68+y
23c8: f4 02     mov   a,$02+x
23ca: fb 03     mov   y,$03+x
23cc: 5a 9e     cmpw  ya,$9e
23ce: b0 0b     bcs   $23db
23d0: f9 68     mov   x,$68+y
23d2: 7d        mov   a,x
23d3: f8 a0     mov   x,$a0
23d5: d4 68     mov   $68+x,a
23d7: f8 a1     mov   x,$a1
23d9: d9 68     mov   $68+y,x
23db: ee        pop   y
23dc: 2f e2     bra   $23c0
23de: eb a0     mov   y,$a0
23e0: fc        inc   y
23e1: 7e 7e     cmp   y,$7e
23e3: 90 cf     bcc   $23b4
23e5: 6f        ret

23e6: 40        setp
23e7: 8b 7e     dec   $7e
23e9: e4 7e     mov   a,$7e
23eb: 1c        asl   a
23ec: 1c        asl   a
23ed: c4 7f     mov   $7f,a
23ef: 68 00     cmp   a,#$00
23f1: f0 0b     beq   $23fe
23f3: 3e 7f     cmp   x,$7f
23f5: b0 07     bcs   $23fe
23f7: f4 04     mov   a,$04+x
23f9: d4 00     mov   $00+x,a
23fb: 3d        inc   x
23fc: 2f f5     bra   $23f3
23fe: 6f        ret

23ff: 40        setp
2400: da 96     movw  $96,ya
2402: cd 00     mov   x,#$00
2404: 8d 00     mov   y,#$00
2406: f5 00 07  mov   a,$0700+x
2409: d0 05     bne   $2410
240b: f5 01 07  mov   a,$0701+x
240e: f0 0a     beq   $241a
2410: 3d        inc   x
2411: 3d        inc   x
2412: 3d        inc   x
2413: 3d        inc   x
2414: fc        inc   y
2415: ad 14     cmp   y,#$14
2417: 90 ed     bcc   $2406
2419: 6f        ret

241a: dd        mov   a,y
241b: 1c        asl   a
241c: 1c        asl   a
241d: 6d        push  y
241e: 2d        push  a
241f: e8 08     mov   a,#$08
2421: cf        mul   ya
2422: 5d        mov   x,a
2423: e4 97     mov   a,$97
2425: d5 36 05  mov   $0536+x,a
2428: fd        mov   y,a
2429: e4 96     mov   a,$96
242b: d5 35 05  mov   $0535+x,a
242e: 3f 4a 23  call  $234a
2431: b0 0b     bcs   $243e
2433: ce        pop   x
2434: d5 00 07  mov   $0700+x,a
2437: dd        mov   a,y
2438: d5 01 07  mov   $0701+x,a
243b: ee        pop   y
243c: 60        clrc
243d: 6f        ret

243e: ae        pop   a
243f: ee        pop   y
2440: 80        setc
2441: 6f        ret

2442: 40        setp
2443: da 9c     movw  $9c,ya
2445: 8f d5 a2  mov   $a2,#$d5
2448: 8f 05 a3  mov   $a3,#$05
244b: cd 00     mov   x,#$00
244d: 8d 00     mov   y,#$00
244f: f7 a2     mov   a,($a2)+y
2451: f0 0c     beq   $245f
2453: fc        inc   y
2454: fc        inc   y
2455: fc        inc   y
2456: fc        inc   y
2457: fc        inc   y
2458: fc        inc   y
2459: 3d        inc   x
245a: c8 14     cmp   x,#$14
245c: 90 f1     bcc   $244f
245e: 6f        ret

245f: dd        mov   a,y
2460: 60        clrc
2461: 84 a2     adc   a,$a2
2463: c4 a2     mov   $a2,a
2465: 90 02     bcc   $2469
2467: ab a3     inc   $a3
2469: 8d 05     mov   y,#$05
246b: e8 00     mov   a,#$00
246d: d7 a2     mov   ($a2)+y,a
246f: 9c        dec   a
2470: 8d 00     mov   y,#$00
2472: d7 a2     mov   ($a2)+y,a
2474: 8d 04     mov   y,#$04
2476: e4 9d     mov   a,$9d
2478: d7 a2     mov   ($a2)+y,a
247a: dc        dec   y
247b: e4 9c     mov   a,$9c
247d: d7 a2     mov   ($a2)+y,a
247f: eb 9d     mov   y,$9d
2481: 4d        push  x
2482: 3f 4a 23  call  $234a
2485: ce        pop   x
2486: b0 0b     bcs   $2493
2488: 6d        push  y
2489: 8d 01     mov   y,#$01
248b: d7 a2     mov   ($a2)+y,a
248d: ae        pop   a
248e: fc        inc   y
248f: d7 a2     mov   ($a2)+y,a
2491: 60        clrc
2492: 6f        ret

2493: e8 00     mov   a,#$00
2495: 8d 00     mov   y,#$00
2497: d7 a2     mov   ($a2)+y,a
2499: 80        setc
249a: 6f        ret

249b: 6f        ret

249c: 40        setp
249d: f5 ff 03  mov   a,$03ff+x
24a0: 68 ff     cmp   a,#$ff
24a2: f0 07     beq   $24ab
24a4: 3f ac 24  call  $24ac
24a7: e8 00     mov   a,#$00
24a9: d7 96     mov   ($96)+y,a
24ab: 6f        ret

24ac: 8f 35 96  mov   $96,#$35
24af: 8f 05 97  mov   $97,#$05
24b2: 8d 08     mov   y,#$08
24b4: cf        mul   ya
24b5: 7a 96     addw  ya,$96
24b7: da 96     movw  $96,ya
24b9: 8d 07     mov   y,#$07
24bb: 6f        ret

24bc: 40        setp
24bd: f5 c7 04  mov   a,$04c7+x
24c0: 68 ff     cmp   a,#$ff
24c2: f0 07     beq   $24cb
24c4: 3f cc 24  call  $24cc
24c7: e8 00     mov   a,#$00
24c9: d7 96     mov   ($96)+y,a
24cb: 6f        ret

24cc: 8f d5 96  mov   $96,#$d5
24cf: 8f 05 97  mov   $97,#$05
24d2: 8d 06     mov   y,#$06
24d4: cf        mul   ya
24d5: 7a 96     addw  ya,$96
24d7: da 96     movw  $96,ya
24d9: 8d 05     mov   y,#$05
24db: 6f        ret

24dc: 40        setp
24dd: 78 1a 7e  cmp   $7e,#$1a
24e0: 90 02     bcc   $24e4
24e2: 80        setc
24e3: 6f        ret

24e4: cd 00     mov   x,#$00
24e6: f4 00     mov   a,$00+x
24e8: fb 01     mov   y,$01+x
24ea: 5a 96     cmpw  ya,$96
24ec: b0 08     bcs   $24f6
24ee: 3d        inc   x
24ef: 3d        inc   x
24f0: 3d        inc   x
24f1: 3d        inc   x
24f2: 3e 7f     cmp   x,$7f
24f4: 90 f0     bcc   $24e6
24f6: d8 9a     mov   $9a,x
24f8: f8 7f     mov   x,$7f
24fa: 3e 9a     cmp   x,$9a
24fc: f0 07     beq   $2505
24fe: 1d        dec   x
24ff: f4 00     mov   a,$00+x
2501: d4 04     mov   $04+x,a
2503: 2f f5     bra   $24fa
2505: ab 7e     inc   $7e
2507: e4 7f     mov   a,$7f
2509: 60        clrc
250a: 88 04     adc   a,#$04
250c: c4 7f     mov   $7f,a
250e: f8 9a     mov   x,$9a
2510: ba 96     movw  ya,$96
2512: d4 00     mov   $00+x,a
2514: db 01     mov   $01+x,y
2516: ba 98     movw  ya,$98
2518: d4 02     mov   $02+x,a
251a: db 03     mov   $03+x,y
251c: 7d        mov   a,x
251d: 60        clrc
251e: 88 04     adc   a,#$04
2520: 64 7f     cmp   a,$7f
2522: b0 03     bcs   $2527
2524: 3f 34 25  call  $2534
2527: e4 9a     mov   a,$9a
2529: 80        setc
252a: a8 04     sbc   a,#$04
252c: 30 04     bmi   $2532
252e: 5d        mov   x,a
252f: 3f 34 25  call  $2534
2532: 60        clrc
2533: 6f        ret

2534: f4 02     mov   a,$02+x
2536: fb 03     mov   y,$03+x
2538: da 96     movw  $96,ya
253a: f4 00     mov   a,$00+x
253c: fb 01     mov   y,$01+x
253e: 7a 96     addw  ya,$96
2540: da 98     movw  $98,ya
2542: f4 04     mov   a,$04+x
2544: fb 05     mov   y,$05+x
2546: 5a 98     cmpw  ya,$98
2548: f0 01     beq   $254b
254a: 6f        ret

254b: f4 06     mov   a,$06+x
254d: fb 07     mov   y,$07+x
254f: 7a 96     addw  ya,$96
2551: d4 02     mov   $02+x,a
2553: db 03     mov   $03+x,y
2555: 3d        inc   x
2556: 3d        inc   x
2557: 3d        inc   x
2558: 3d        inc   x
2559: 3f e6 23  call  $23e6
255c: 6f        ret

255d: cd 00     mov   x,#$00
255f: f5 ff 03  mov   a,$03ff+x
2562: 68 ff     cmp   a,#$ff
2564: f0 40     beq   $25a6
2566: 8f 35 9e  mov   $9e,#$35
2569: 8f 05 9f  mov   $9f,#$05
256c: 8d 08     mov   y,#$08
256e: cf        mul   ya
256f: 7a 9e     addw  ya,$9e
2571: da 9e     movw  $9e,ya
2573: 8d 07     mov   y,#$07
2575: f7 9e     mov   a,($9e)+y
2577: d0 2d     bne   $25a6
2579: 8d 00     mov   y,#$00
257b: f7 9e     mov   a,($9e)+y
257d: c4 98     mov   $98,a
257f: fc        inc   y
2580: f7 9e     mov   a,($9e)+y
2582: c4 99     mov   $99,a
2584: f5 ff 03  mov   a,$03ff+x
2587: 1c        asl   a
2588: 1c        asl   a
2589: fd        mov   y,a
258a: f6 00 07  mov   a,$0700+y
258d: c4 96     mov   $96,a
258f: f6 01 07  mov   a,$0701+y
2592: c4 97     mov   $97,a
2594: e8 00     mov   a,#$00
2596: d6 00 07  mov   $0700+y,a
2599: d6 01 07  mov   $0701+y,a
259c: 4d        push  x
259d: 3f dc 24  call  $24dc
25a0: ce        pop   x
25a1: e8 ff     mov   a,#$ff
25a3: d5 ff 03  mov   $03ff+x,a
25a6: 3d        inc   x
25a7: c8 c8     cmp   x,#$c8
25a9: 90 b4     bcc   $255f
25ab: cd 00     mov   x,#$00
25ad: f5 c7 04  mov   a,$04c7+x
25b0: 68 ff     cmp   a,#$ff
25b2: f0 3e     beq   $25f2
25b4: 8f d5 9e  mov   $9e,#$d5
25b7: 8f 05 9f  mov   $9f,#$05
25ba: 8d 06     mov   y,#$06
25bc: cf        mul   ya
25bd: 7a 9e     addw  ya,$9e
25bf: da 9e     movw  $9e,ya
25c1: 8d 00     mov   y,#$00
25c3: f7 9e     mov   a,($9e)+y
25c5: f0 2b     beq   $25f2
25c7: 8d 05     mov   y,#$05
25c9: f7 9e     mov   a,($9e)+y
25cb: d0 25     bne   $25f2
25cd: 8d 03     mov   y,#$03
25cf: f7 9e     mov   a,($9e)+y
25d1: c4 98     mov   $98,a
25d3: fc        inc   y
25d4: f7 9e     mov   a,($9e)+y
25d6: c4 99     mov   $99,a
25d8: 8d 01     mov   y,#$01
25da: f7 9e     mov   a,($9e)+y
25dc: c4 96     mov   $96,a
25de: fc        inc   y
25df: f7 9e     mov   a,($9e)+y
25e1: c4 97     mov   $97,a
25e3: e8 00     mov   a,#$00
25e5: 8d 00     mov   y,#$00
25e7: d7 9e     mov   ($9e)+y,a
25e9: 9c        dec   a
25ea: d5 c7 04  mov   $04c7+x,a
25ed: 4d        push  x
25ee: 3f dc 24  call  $24dc
25f1: ce        pop   x
25f2: 3d        inc   x
25f3: c8 64     cmp   x,#$64
25f5: 90 b6     bcc   $25ad
25f7: 6f        ret

25f8: 40        setp
25f9: 3f 50 14  call  $1450
25fc: 90 01     bcc   $25ff
25fe: 6f        ret

25ff: 5e eb 28  cmp   y,$28eb
2602: b0 03     bcs   $2607
2604: 3f 81 27  call  $2781
2607: 3f 07 27  call  $2707
260a: 8d 01     mov   y,#$01
260c: f7 96     mov   a,($96)+y
260e: f0 11     beq   $2621
2610: bc        inc   a
2611: fd        mov   y,a
2612: f7 96     mov   a,($96)+y
2614: 5d        mov   x,a
2615: f5 ff 03  mov   a,$03ff+x
2618: 68 ff     cmp   a,#$ff
261a: f0 6c     beq   $2688
261c: dc        dec   y
261d: ad 02     cmp   y,#$02
261f: b0 f1     bcs   $2612
2621: 8d 00     mov   y,#$00
2623: f7 96     mov   a,($96)+y
2625: bc        inc   a
2626: bc        inc   a
2627: c4 98     mov   $98,a
2629: fc        inc   y
262a: f7 96     mov   a,($96)+y
262c: bc        inc   a
262d: bc        inc   a
262e: fd        mov   y,a
262f: 7e 98     cmp   y,$98
2631: 90 05     bcc   $2638
2633: 3f 73 10  call  $1073
2636: 2f 0a     bra   $2642
2638: f7 96     mov   a,($96)+y
263a: 3f 8e 27  call  $278e
263d: fc        inc   y
263e: 7e 98     cmp   y,$98
2640: 90 f6     bcc   $2638
2642: cd 00     mov   x,#$00
2644: e7 96     mov   a,($96+x)
2646: bc        inc   a
2647: fd        mov   y,a
2648: 6d        push  y
2649: f7 96     mov   a,($96)+y
264b: 5d        mov   x,a
264c: f5 ff 03  mov   a,$03ff+x
264f: 68 ff     cmp   a,#$ff
2651: f0 2d     beq   $2680
2653: 8f 35 98  mov   $98,#$35
2656: 8f 05 99  mov   $99,#$05
2659: 8d 08     mov   y,#$08
265b: cf        mul   ya
265c: 7a 98     addw  ya,$98
265e: da 98     movw  $98,ya
2660: 8d 07     mov   y,#$07
2662: f7 98     mov   a,($98)+y
2664: 28 e0     and   a,#$e0
2666: 0d        push  psw
2667: f7 98     mov   a,($98)+y
2669: 8e        pop   psw
266a: f0 05     beq   $2671
266c: 80        setc
266d: a8 20     sbc   a,#$20
266f: d7 98     mov   ($98)+y,a
2671: f7 98     mov   a,($98)+y
2673: 28 0f     and   a,#$0f
2675: 68 0f     cmp   a,#$0f
2677: 0d        push  psw
2678: f7 98     mov   a,($98)+y
267a: 8e        pop   psw
267b: f0 03     beq   $2680
267d: bc        inc   a
267e: d7 98     mov   ($98)+y,a
2680: ee        pop   y
2681: dc        dec   y
2682: ad 02     cmp   y,#$02
2684: b0 c2     bcs   $2648
2686: 60        clrc
2687: 6f        ret

2688: 80        setc
2689: 6f        ret

268a: 40        setp
268b: 3f 50 14  call  $1450
268e: 90 01     bcc   $2691
2690: 6f        ret

2691: 3f 07 27  call  $2707
2694: cd 00     mov   x,#$00
2696: e7 96     mov   a,($96+x)
2698: f0 2f     beq   $26c9
269a: bc        inc   a
269b: fd        mov   y,a
269c: 6d        push  y
269d: f7 96     mov   a,($96)+y
269f: 5d        mov   x,a
26a0: f5 ff 03  mov   a,$03ff+x
26a3: 68 ff     cmp   a,#$ff
26a5: f0 1c     beq   $26c3
26a7: 8f 35 98  mov   $98,#$35
26aa: 8f 05 99  mov   $99,#$05
26ad: 8d 08     mov   y,#$08
26af: cf        mul   ya
26b0: 7a 98     addw  ya,$98
26b2: da 98     movw  $98,ya
26b4: 8d 07     mov   y,#$07
26b6: f7 98     mov   a,($98)+y
26b8: 28 0f     and   a,#$0f
26ba: 0d        push  psw
26bb: f7 98     mov   a,($98)+y
26bd: 8e        pop   psw
26be: f0 03     beq   $26c3
26c0: 9c        dec   a
26c1: d7 98     mov   ($98)+y,a
26c3: ee        pop   y
26c4: dc        dec   y
26c5: ad 02     cmp   y,#$02
26c7: b0 d3     bcs   $269c
26c9: 6f        ret

26ca: 40        setp
26cb: 3f 50 14  call  $1450
26ce: 90 01     bcc   $26d1
26d0: 6f        ret

26d1: 3f 07 27  call  $2707
26d4: cd 00     mov   x,#$00
26d6: e7 96     mov   a,($96+x)
26d8: f0 2c     beq   $2706
26da: bc        inc   a
26db: fd        mov   y,a
26dc: 6d        push  y
26dd: f7 96     mov   a,($96)+y
26df: 5d        mov   x,a
26e0: f5 ff 03  mov   a,$03ff+x
26e3: 68 ff     cmp   a,#$ff
26e5: f0 19     beq   $2700
26e7: 8f 35 98  mov   $98,#$35
26ea: 8f 05 99  mov   $99,#$05
26ed: 8d 08     mov   y,#$08
26ef: cf        mul   ya
26f0: 7a 98     addw  ya,$98
26f2: da 98     movw  $98,ya
26f4: 8d 07     mov   y,#$07
26f6: f7 98     mov   a,($98)+y
26f8: 68 20     cmp   a,#$20
26fa: 90 04     bcc   $2700
26fc: a8 20     sbc   a,#$20
26fe: d7 98     mov   ($98)+y,a
2700: ee        pop   y
2701: dc        dec   y
2702: ad 02     cmp   y,#$02
2704: b0 d6     bcs   $26dc
2706: 6f        ret

2707: e5 e9 28  mov   a,$28e9
270a: c4 96     mov   $96,a
270c: e5 ea 28  mov   a,$28ea
270f: c4 97     mov   $97,a
2711: cd 00     mov   x,#$00
2713: ad 00     cmp   y,#$00
2715: f0 0f     beq   $2726
2717: e7 96     mov   a,($96+x)
2719: bc        inc   a
271a: bc        inc   a
271b: 6d        push  y
271c: 8d 00     mov   y,#$00
271e: 7a 96     addw  ya,$96
2720: da 96     movw  $96,ya
2722: ee        pop   y
2723: dc        dec   y
2724: 2f ed     bra   $2713
2726: 6f        ret

2727: 40        setp
2728: 3f 50 14  call  $1450
272b: 90 01     bcc   $272e
272d: 6f        ret

272e: f6 c7 04  mov   a,$04c7+y
2731: 68 ff     cmp   a,#$ff
2733: f0 10     beq   $2745
2735: 3f cc 24  call  $24cc
2738: f7 96     mov   a,($96)+y
273a: 28 0f     and   a,#$0f
273c: 0d        push  psw
273d: f7 96     mov   a,($96)+y
273f: 8e        pop   psw
2740: f0 03     beq   $2745
2742: 9c        dec   a
2743: d7 96     mov   ($96)+y,a
2745: 6f        ret

2746: 40        setp
2747: 3f 50 14  call  $1450
274a: 90 01     bcc   $274d
274c: 6f        ret

274d: f6 c7 04  mov   a,$04c7+y
2750: 68 ff     cmp   a,#$ff
2752: f0 12     beq   $2766
2754: 3f cc 24  call  $24cc
2757: f7 96     mov   a,($96)+y
2759: 28 e0     and   a,#$e0
275b: 0d        push  psw
275c: f7 96     mov   a,($96)+y
275e: 8e        pop   psw
275f: f0 05     beq   $2766
2761: 80        setc
2762: a8 20     sbc   a,#$20
2764: d7 96     mov   ($96)+y,a
2766: 6f        ret

2767: 40        setp
2768: 3f 50 14  call  $1450
276b: 90 01     bcc   $276e
276d: 6f        ret

276e: 3f 4d 27  call  $274d
2771: f7 96     mov   a,($96)+y
2773: 28 0f     and   a,#$0f
2775: 68 0f     cmp   a,#$0f
2777: 0d        push  psw
2778: f7 96     mov   a,($96)+y
277a: 8e        pop   psw
277b: f0 03     beq   $2780
277d: bc        inc   a
277e: d7 96     mov   ($96)+y,a
2780: 6f        ret

2781: cd 00     mov   x,#$00
2783: e8 ff     mov   a,#$ff
2785: d5 2b 05  mov   $052b+x,a
2788: 3d        inc   x
2789: c8 0a     cmp   x,#$0a
278b: 90 f8     bcc   $2785
278d: 6f        ret

278e: 2d        push  a
278f: cd 00     mov   x,#$00
2791: e8 ff     mov   a,#$ff
2793: 75 2b 05  cmp   a,$052b+x
2796: f0 07     beq   $279f
2798: 3d        inc   x
2799: c8 0a     cmp   x,#$0a
279b: 90 f6     bcc   $2793
279d: ae        pop   a
279e: 6f        ret

279f: ae        pop   a
27a0: d5 2b 05  mov   $052b+x,a
27a3: 60        clrc
27a4: 6f        ret

27a5: 7d        mov   a,x
27a6: cd 00     mov   x,#$00
27a8: 75 2b 05  cmp   a,$052b+x
27ab: f0 06     beq   $27b3
27ad: 3d        inc   x
27ae: c8 0a     cmp   x,#$0a
27b0: 90 f6     bcc   $27a8
27b2: 6f        ret

27b3: e8 ff     mov   a,#$ff
27b5: d5 2b 05  mov   $052b+x,a
27b8: 60        clrc
27b9: 6f        ret

27ba: 40        setp
27bb: ba 00     movw  ya,$00
27bd: da 92     movw  $92,ya
27bf: 7a 02     addw  ya,$02
27c1: da 90     movw  $90,ya
27c3: 3f db 27  call  $27db
27c6: 90 06     bcc   $27ce
27c8: 3f 29 28  call  $2829
27cb: 90 01     bcc   $27ce
27cd: 6f        ret

27ce: e4 7e     mov   a,$7e
27d0: 68 02     cmp   a,#$02
27d2: 90 e7     bcc   $27bb
27d4: cd 00     mov   x,#$00
27d6: 3f 34 25  call  $2534
27d9: 2f e0     bra   $27bb
27db: 8f d5 96  mov   $96,#$d5
27de: 8f 05 97  mov   $97,#$05
27e1: cd 00     mov   x,#$00
27e3: 8d 00     mov   y,#$00
27e5: f7 96     mov   a,($96)+y
27e7: f0 13     beq   $27fc
27e9: 8d 05     mov   y,#$05
27eb: f7 96     mov   a,($96)+y
27ed: f0 0d     beq   $27fc
27ef: 8d 02     mov   y,#$02
27f1: f7 96     mov   a,($96)+y
27f3: 2d        push  a
27f4: dc        dec   y
27f5: f7 96     mov   a,($96)+y
27f7: ee        pop   y
27f8: 5a 90     cmpw  ya,$90
27fa: f0 0e     beq   $280a
27fc: 8d 00     mov   y,#$00
27fe: e8 06     mov   a,#$06
2800: 7a 96     addw  ya,$96
2802: da 96     movw  $96,ya
2804: 3d        inc   x
2805: c8 14     cmp   x,#$14
2807: 90 da     bcc   $27e3
2809: 6f        ret

280a: 8d 03     mov   y,#$03
280c: f7 96     mov   a,($96)+y
280e: c4 94     mov   $94,a
2810: fc        inc   y
2811: f7 96     mov   a,($96)+y
2813: c4 95     mov   $95,a
2815: e4 92     mov   a,$92
2817: 8d 01     mov   y,#$01
2819: d7 96     mov   ($96)+y,a
281b: fc        inc   y
281c: e4 93     mov   a,$93
281e: d7 96     mov   ($96)+y,a
2820: 3f 95 28  call  $2895
2823: ba 92     movw  ya,$92
2825: da 00     movw  $00,ya
2827: 60        clrc
2828: 6f        ret

2829: 8f 00 96  mov   $96,#$00
282c: 8f 07 97  mov   $97,#$07
282f: 8f 35 98  mov   $98,#$35
2832: 8f 05 99  mov   $99,#$05
2835: cd 00     mov   x,#$00
2837: 8d 07     mov   y,#$07
2839: f7 98     mov   a,($98)+y
283b: f0 0d     beq   $284a
283d: 8d 01     mov   y,#$01
283f: f7 96     mov   a,($96)+y
2841: 2d        push  a
2842: dc        dec   y
2843: f7 96     mov   a,($96)+y
2845: ee        pop   y
2846: 5a 90     cmpw  ya,$90
2848: f0 16     beq   $2860
284a: 8d 00     mov   y,#$00
284c: e8 04     mov   a,#$04
284e: 7a 96     addw  ya,$96
2850: da 96     movw  $96,ya
2852: 8d 00     mov   y,#$00
2854: e8 08     mov   a,#$08
2856: 7a 98     addw  ya,$98
2858: da 98     movw  $98,ya
285a: 3d        inc   x
285b: c8 14     cmp   x,#$14
285d: 90 d8     bcc   $2837
285f: 6f        ret

2860: 8d 00     mov   y,#$00
2862: f7 98     mov   a,($98)+y
2864: c4 94     mov   $94,a
2866: fc        inc   y
2867: f7 98     mov   a,($98)+y
2869: c4 95     mov   $95,a
286b: 8d 00     mov   y,#$00
286d: e4 92     mov   a,$92
286f: d7 96     mov   ($96)+y,a
2871: fc        inc   y
2872: e4 93     mov   a,$93
2874: d7 96     mov   ($96)+y,a
2876: 8d 03     mov   y,#$03
2878: f7 96     mov   a,($96)+y
287a: 2d        push  a
287b: dc        dec   y
287c: f7 96     mov   a,($96)+y
287e: ee        pop   y
287f: 7a 92     addw  ya,$92
2881: 9a 90     subw  ya,$90
2883: 6d        push  y
2884: 8d 02     mov   y,#$02
2886: d7 96     mov   ($96)+y,a
2888: ae        pop   a
2889: fc        inc   y
288a: d7 96     mov   ($96)+y,a
288c: 3f 95 28  call  $2895
288f: ba 92     movw  ya,$92
2891: da 00     movw  $00,ya
2893: 60        clrc
2894: 6f        ret

2895: 8d 00     mov   y,#$00
2897: e4 95     mov   a,$95
2899: f0 38     beq   $28d3
289b: f7 90     mov   a,($90)+y
289d: d7 92     mov   ($92)+y,a
289f: fc        inc   y
28a0: f7 90     mov   a,($90)+y
28a2: d7 92     mov   ($92)+y,a
28a4: fc        inc   y
28a5: f7 90     mov   a,($90)+y
28a7: d7 92     mov   ($92)+y,a
28a9: fc        inc   y
28aa: f7 90     mov   a,($90)+y
28ac: d7 92     mov   ($92)+y,a
28ae: fc        inc   y
28af: f7 90     mov   a,($90)+y
28b1: d7 92     mov   ($92)+y,a
28b3: fc        inc   y
28b4: f7 90     mov   a,($90)+y
28b6: d7 92     mov   ($92)+y,a
28b8: fc        inc   y
28b9: f7 90     mov   a,($90)+y
28bb: d7 92     mov   ($92)+y,a
28bd: fc        inc   y
28be: f7 90     mov   a,($90)+y
28c0: d7 92     mov   ($92)+y,a
28c2: fc        inc   y
28c3: d0 d6     bne   $289b
28c5: ab 93     inc   $93
28c7: ab 91     inc   $91
28c9: 3f 91 10  call  $1091
28cc: 40        setp
28cd: 8d 00     mov   y,#$00
28cf: 8b 95     dec   $95
28d1: d0 c8     bne   $289b
28d3: e4 94     mov   a,$94
28d5: f0 08     beq   $28df
28d7: f7 90     mov   a,($90)+y
28d9: d7 92     mov   ($92)+y,a
28db: fc        inc   y
28dc: 6e 94 f8  dbnz  $94,$28d7
28df: dd        mov   a,y
28e0: 8d 00     mov   y,#$00
28e2: 7a 92     addw  ya,$92
28e4: da 92     movw  $92,ya
28e6: 6f        ret

28e7: db $5d,$2a
28e9: db $ec,$28
28eb: db $32
