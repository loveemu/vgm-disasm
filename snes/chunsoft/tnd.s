; Torneco no Daibouken: Fushigi no Dungeon SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Otogirisou (1992)
; * Dragon Quest 5 (1992)
; * Torneco no Daibouken: Fushigi no Dungeon (1993)
; * Kamaitachi no Yoru (1994)

; DSP reg initialization table
07a1: db $6c,$f0 ; DSP FLG reset
07a3: db $7d,$05 ; echo delay 80ms
07a5: db $6d,$d7 ; echo start addr $d700
07a7: db $1c,$60 ; main volume R #$60
07a9: db $0c,$60 ; main volume L #$60
07ab: db $3c,$00 ; echo volume R zero
07ad: db $2c,$00 ; echo volume L zero
07af: db $4c,$00 ; key on
07b1: db $5c,$00 ; key off
07b3: db $6c,$23 ; DSP FLG echo on, noise clock 25 Hz
07b5: db $0d,$00 ; echo feedback zero
07b7: db $2d,$00 ; pitch modulation off
07b9: db $3d,$00 ; noise off
07bb: db $4d,$00 ; echo off
07bd: db $5d,$07 ; sample dir $0700
07bf: db $0d,$00 ; echo feedback zero
07c1: db $00     ; end of table

; vcmd dispatch table
07c2: dw $1925  ; db - flag repeat (alternative)
07c4: dw $192a  ; dc - repeat once more (alternative)
07c6: dw $184c  ; dd - set release rate
07c8: dw $1849  ; de - set ADSR and release rate
07ca: dw $1725  ; df
07cc: dw $16f2  ; e0 - CPU related? conditional jump
07ce: dw $16e4  ; e1
07d0: dw $1731  ; e2
07d2: dw $1746  ; e3
07d4: dw $174a  ; e4
07d6: dw $174e  ; e5
07d8: dw $175e  ; e6 - volume fade
07da: dw $1770  ; e7
07dc: dw $1789  ; e8 - pan fade
07de: dw $17c7  ; e9
07e0: dw $17cd  ; ea - jump
07e2: dw $17e3  ; eb - tempo
07e4: dw $17ee  ; ec - set duration rate directly
07e6: dw $1815  ; ed - set channel master volume
07e8: dw $1820  ; ee - set panpot
07ea: dw $182b  ; ef - set ADSR1/2 param
07ec: dw $1860  ; f0 - set patch
07ee: dw $1911  ; f1 - duration copy on
07f0: dw $1911  ; f2 - duration copy on
07f2: dw $191c  ; f3 - duration copy off
07f4: dw $1937  ; f4 - repeat once again
07f6: dw $194e  ; f5 - conditional loop
07f8: dw $1954  ; f6 - set volume
07fa: dw $195f  ; f7 - nop
07fc: dw $1960  ; f8 - call subroutine
07fe: dw $19a2  ; f9 - return from subroutine
0800: dw $19bb  ; fa - key shift (transpose)
0802: dw $19c2  ; fb - pitch slide
0804: dw $19dc  ; fc
0806: dw $19e0  ; fd
0808: dw $19e4  ; fe

080a: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
0812: dw $1f02 ; 
0814: dw $20da ; 
0816: dw $22ce ; 
0818: dw $24e0 ; 
081a: dw $2711 ; 
081c: dw $2964 ; 
081e: dw $2bda ; 
0820: dw $2e76 ; 
0822: dw $3139 ; 
0824: dw $3426 ; 
0826: dw $3740 ; 
0828: dw $3a89 ; 
082a: dw $3e04 ; 
082c: dw $41b4 ; 

082e: dw $0870  ; 00
0830: dw $0873  ; 01
0832: dw $0876  ; 02
0834: dw $0879  ; 03
0836: dw $087c  ; 04
0838: dw $087f  ; 05
083a: dw $0882  ; 06
083c: dw $0885  ; 07
083e: dw $0888  ; 08
0840: dw $088b  ; 09
0842: dw $088e  ; 0a
0844: dw $0891  ; 0b
0846: dw $0894  ; 0c
0848: dw $0897  ; 0d
084a: dw $089a  ; 0e
084c: dw $089d  ; 0f
084e: dw $08a0  ; 10
0850: dw $08a3  ; 11
0852: dw $08a6  ; 12
0854: dw $08a9  ; 13
0856: dw $08ac  ; 14
0858: dw $08af  ; 15
085a: dw $08b6  ; 16
085c: dw $08d2  ; 17
085e: dw $08d2  ; 18
0860: dw $08d2  ; 19
0862: dw $08ee  ; 1a
0864: dw $08ee  ; 1b
0866: dw $08f1  ; 1c
0868: dw $08f4  ; 1d
086a: dw $08f7  ; 1e
086c: dw $08fa  ; 1f
086e: dw $08fc  ; 20

0870: db $05,$00,$ff ; 00
0873: db $05,$01,$ff ; 01
0876: db $05,$02,$ff ; 02
0879: db $05,$03,$ff ; 03
087c: db $05,$04,$ff ; 04
087f: db $05,$05,$ff ; 05
0882: db $05,$06,$ff ; 06
0885: db $05,$07,$ff ; 07
0888: db $05,$08,$ff ; 08
088b: db $05,$09,$ff ; 09
088e: db $05,$0a,$ff ; 0a
0891: db $05,$0b,$ff ; 0b
0894: db $05,$0c,$ff ; 0c
0897: db $05,$0d,$ff ; 0d
089a: db $05,$0e,$ff ; 0e
089d: db $05,$0f,$ff ; 0f
08a0: db $05,$10,$ff ; 10
08a3: db $05,$11,$ff ; 11
08a6: db $05,$12,$ff ; 12
08a9: db $05,$13,$ff ; 13
08ac: db $05,$14,$ff ; 14
08af: db $13,$60,$60,$14,$00,$00,$ff ; 15
08b6: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff,$16,$0c,$17,$05,$22,$32,$42,$52,$62,$72,$82,$92,$13,$5c,$5c,$14,$14,$ec,$ff ; 16
08d2: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff,$16,$32,$17,$05,$22,$32,$42,$52,$62,$72,$82,$92,$13,$4d,$4d,$14,$40,$40,$ff ; 17,18,19
08ee: db $04,$ff,$ff ; 1a,1b
08f1: db $00,$24,$ff ; 1c
08f4: db $00,$44,$ff ; 1d
08f7: db $00,$80,$ff ; 1e
08fa: db $11,$ff ; 1f
08fc: db $12,$ff ; 20

; TODO: unknown table (related to vcmd E2)
08fe: db $0c,$09 ; 00
0900: db $6f,$09 ; 01
0902: db $bc,$09 ; 02
0904: db $f6,$09 ; 03
0906: db $2d,$09 ; 04
0908: db $d1,$09 ; 05
090a: db $4e,$09 ; 06

090c: db $1e    ; 00
090d: db $16,$00,$05,$01,$05,$00,$05,$ff,$05,$00,$05,$02,$05,$00,$05,$fc
091d: db $05,$00,$05,$08,$05,$00,$05,$f4,$05,$00,$05,$0c,$05,$00
092b: db $01,$80
092d: db $1e    ; 04
092e: db $16,$00,$03,$01,$03,$00,$03,$ff,$03,$00,$03,$02,$03,$00,$03,$fc
093e: db $03,$00,$03,$08,$03,$00,$03,$f4,$03,$00,$03,$0c,$03,$00
094c: db $01,$80
094e: db $1e    ; 06
094f: db $16,$00,$04,$01,$04,$00,$04,$ff,$04,$00,$04,$02,$04,$00,$04,$fc
095f: db $04,$00,$04,$08,$04,$00,$04,$f4,$04,$00,$04,$0c,$04,$00
096d: db $01 $80
096f: db $4a    ; 01
0970: db $32,$00,$01,$01,$02,$02,$02,$03,$01,$02,$02,$01,$02,$00,$01,$fe
0980: db $02,$fc,$02,$fa,$01,$fc,$02,$fe,$02,$00,$01,$04,$02,$08,$02,$0c
0990: db $01,$08,$02,$04,$02,$00,$01,$f8,$02,$f0,$02,$e8,$01,$f0,$02,$f8
09a0: db $02,$00,$01,$0a,$02,$14,$02,$1e,$01,$14,$02,$0a,$02,$00,$01,$f6
09b0: db $02,$ec,$02,$e2,$01,$ec,$02,$f6,$02,$00
09ba: db $01,$80
09bc: db $12    ; 02
09bd: db $0a,$00,$03,$02,$03,$00,$03,$f8,$03,$00,$03,$0c,$03,$00,$03,$f4
09cd: db $03,$00
09cf: db $01,$80
09d1: db $22    ; 05
09d2: db $1a,$00,$05,$01,$05,$00,$05,$fe,$05,$00,$05,$03,$05,$00,$05,$fc
09e2: db $05,$00,$05,$05,$05,$00,$05,$fa,$05,$00,$05,$07,$05,$00,$05,$f9
09f2: db $05,$00
09f4: db $01,$80
09f6: db $0c    ; 03
09f7: db $04,$00,$0a,$18,$03,$00,$03,$e8,$03,$00,$03,$00
0a03: db $01,$80

0a05: c0        di
0a06: cd cf     mov   x,#$cf
0a08: bd        mov   sp,x
0a09: 3f d6 10  call  $10d6
0a0c: 40        setp
0a0d: 3f 9f 0f  call  $0f9f
0a10: 3f 43 0a  call  $0a43
0a13: 2f f7     bra   $0a0c

; cpu cmd dispatch table
0a15: dw $0a50  ; 00
0a17: dw $0b08  ; 01
0a19: dw $0b54  ; 02
0a1b: dw $0b63  ; 03
0a1d: dw $0bc4  ; 04
0a1f: dw $0bea  ; 05
0a21: dw $0c19  ; 06
0a23: dw $0c23  ; 07
0a25: dw $0c31  ; 08
0a27: dw $0c37  ; 09
0a29: dw $0c53  ; 0a
0a2b: dw $0c5d  ; 0b
0a2d: dw $0c60  ; 0c
0a2f: dw $0cbb  ; 0d
0a31: dw $0cbb  ; 0e
0a33: dw $0cbb  ; 0f
0a35: dw $0cd6  ; 10
0a37: dw $0d61  ; 11
0a39: dw $0d6b  ; 12
0a3b: dw $0d75  ; 13
0a3d: dw $0d7a  ; 14
0a3f: dw $0dc0  ; 15
0a41: dw $0e33  ; 16

; dispatch cpu cmd
0a43: 40        setp
0a44: 68 17     cmp   a,#$17
0a46: b0 07     bcs   $0a4f
0a48: 2d        push  a
0a49: 1c        asl   a
0a4a: 5d        mov   x,a
0a4b: ae        pop   a
0a4c: 1f 15 0a  jmp   ($0a15+x)
0a4f: 6f        ret

; cpu cmd 00
0a50: 2d        push  a
0a51: 3f c3 0d  call  $0dc3
0a54: ae        pop   a
0a55: c4 97     mov   $97,a
0a57: e5 f6 00  mov   a,$00f6
0a5a: c4 90     mov   $90,a
0a5c: 5d        mov   x,a
0a5d: f5 ff 03  mov   a,$03ff+x
0a60: 68 ff     cmp   a,#$ff
0a62: f0 29     beq   $0a8d
0a64: 2d        push  a
0a65: 3f e1 27  call  $27e1
0a68: ae        pop   a
0a69: 90 1b     bcc   $0a86
0a6b: 3f e4 24  call  $24e4
0a6e: f7 a2     mov   a,($a2)+y
0a70: 28 e0     and   a,#$e0
0a72: 68 e0     cmp   a,#$e0
0a74: 0d        push  psw
0a75: f7 a2     mov   a,($a2)+y
0a77: 8e        pop   psw
0a78: f0 03     beq   $0a7d
0a7a: 60        clrc
0a7b: 88 20     adc   a,#$20
0a7d: 78 00 97  cmp   $97,#$00
0a80: f0 02     beq   $0a84
0a82: 08 10     or    a,#$10
0a84: d7 a2     mov   ($a2)+y,a
0a86: 3f ad 10  call  $10ad
0a89: 8f ff 90  mov   $90,#$ff
0a8c: 6f        ret

0a8d: 3f a8 10  call  $10a8
0a90: 3f 9f 0f  call  $0f9f
0a93: b0 6f     bcs   $0b04
0a95: ec f6 00  mov   y,$00f6
0a98: 80        setc
0a99: a8 07     sbc   a,#$07
0a9b: b0 01     bcs   $0a9e
0a9d: dc        dec   y
0a9e: 3f 37 24  call  $2437
0aa1: 90 07     bcc   $0aaa
0aa3: 3f ad 10  call  $10ad
0aa6: 8f ff 90  mov   $90,#$ff
0aa9: 6f        ret

0aaa: 3f a8 10  call  $10a8
0aad: dd        mov   a,y
0aae: f8 90     mov   x,$90
0ab0: d5 ff 03  mov   $03ff+x,a
0ab3: 5d        mov   x,a
0ab4: 40        setp
0ab5: c4 92     mov   $92,a
0ab7: e8 00     mov   a,#$00
0ab9: 0b 92     asl   $92
0abb: 3c        rol   a
0abc: 0b 92     asl   $92
0abe: 3c        rol   a
0abf: 60        clrc
0ac0: 88 07     adc   a,#$07
0ac2: c4 93     mov   $93,a
0ac4: 8d 00     mov   y,#$00
0ac6: f7 92     mov   a,($92)+y
0ac8: c4 8c     mov   $8c,a
0aca: fc        inc   y
0acb: f7 92     mov   a,($92)+y
0acd: c4 8d     mov   $8d,a
0acf: 8f 35 94  mov   $94,#$35
0ad2: 8f 05 95  mov   $95,#$05
0ad5: 7d        mov   a,x
0ad6: 8d 08     mov   y,#$08
0ad8: cf        mul   ya
0ad9: 7a 94     addw  ya,$94
0adb: da 94     movw  $94,ya
0add: 8d 00     mov   y,#$00
0adf: f7 94     mov   a,($94)+y
0ae1: c4 8e     mov   $8e,a
0ae3: fc        inc   y
0ae4: f7 94     mov   a,($94)+y
0ae6: c4 8f     mov   $8f,a
0ae8: f8 90     mov   x,$90
0aea: 3f e1 27  call  $27e1
0aed: 90 04     bcc   $0af3
0aef: e8 20     mov   a,#$20
0af1: 2f 02     bra   $0af5
0af3: e8 01     mov   a,#$01
0af5: 78 00 97  cmp   $97,#$00
0af8: f0 02     beq   $0afc
0afa: 08 10     or    a,#$10
0afc: 8d 07     mov   y,#$07
0afe: d7 94     mov   ($94)+y,a
0b00: 8f 01 96  mov   $96,#$01
0b03: 6f        ret

0b04: 3f ad 10  call  $10ad
0b07: 6f        ret

; cpu cmd 01
0b08: e5 f6 00  mov   a,$00f6
0b0b: 5d        mov   x,a
0b0c: fd        mov   y,a
0b0d: 3f 82 14  call  $1482
0b10: b0 24     bcs   $0b36
0b12: 3f 5f 1a  call  $1a5f
0b15: b0 2c     bcs   $0b43
0b17: 65 27 29  cmp   a,$2927
0b1a: b0 0a     bcs   $0b26
0b1c: 2d        push  a
0b1d: ec f9 03  mov   y,$03f9
0b20: 3f e7 22  call  $22e7
0b23: ae        pop   a
0b24: 2f 03     bra   $0b29
0b26: 3f ab 0e  call  $0eab
0b29: fd        mov   y,a
0b2a: 2d        push  a
0b2b: 6d        push  y
0b2c: 3f a3 27  call  $27a3
0b2f: ee        pop   y
0b30: 3f 34 26  call  $2634
0b33: ae        pop   a
0b34: 90 04     bcc   $0b3a
0b36: 3f ad 10  call  $10ad
0b39: 6f        ret

0b3a: 2d        push  a
0b3b: 3f a8 10  call  $10a8
0b3e: ae        pop   a
0b3f: 3f fc 11  call  $11fc
0b42: 6f        ret

0b43: 40        setp
0b44: 3f a5 10  call  $10a5
0b47: 3f a8 10  call  $10a8
0b4a: fd        mov   y,a
0b4b: 6d        push  y
0b4c: 3f 82 27  call  $2782
0b4f: ee        pop   y
0b50: 3f 06 27  call  $2706
0b53: 6f        ret

; cpu cmd 02
0b54: e5 f6 00  mov   a,$00f6
0b57: 3f f2 1f  call  $1ff2
0b5a: b0 03     bcs   $0b5f
0b5c: 3f e7 22  call  $22e7
0b5f: 3f b2 10  call  $10b2
0b62: 6f        ret

; cpu cmd 03
0b63: e5 f7 00  mov   a,$00f7
0b66: c4 b0     mov   $b0,a
0b68: e5 f6 00  mov   a,$00f6
0b6b: 5d        mov   x,a
0b6c: fd        mov   y,a
0b6d: 3f 82 14  call  $1482
0b70: b0 2e     bcs   $0ba0
0b72: 3f 5f 1a  call  $1a5f
0b75: 90 0a     bcc   $0b81
0b77: 2d        push  a
0b78: 3f 43 0b  call  $0b43
0b7b: ae        pop   a
0b7c: 3f f2 1f  call  $1ff2
0b7f: 2f 32     bra   $0bb3
0b81: 65 27 29  cmp   a,$2927
0b84: b0 0a     bcs   $0b90
0b86: 2d        push  a
0b87: ec f9 03  mov   y,$03f9
0b8a: 3f e7 22  call  $22e7
0b8d: ae        pop   a
0b8e: 2f 03     bra   $0b93
0b90: 3f ab 0e  call  $0eab
0b93: fd        mov   y,a
0b94: 2d        push  a
0b95: 6d        push  y
0b96: 3f a3 27  call  $27a3
0b99: ee        pop   y
0b9a: 3f 34 26  call  $2634
0b9d: ae        pop   a
0b9e: 90 04     bcc   $0ba4
0ba0: 3f ad 10  call  $10ad
0ba3: 6f        ret

0ba4: 2d        push  a
0ba5: 3f a8 10  call  $10a8
0ba8: ae        pop   a
0ba9: 3f fc 11  call  $11fc
0bac: ec f8 03  mov   y,$03f8
0baf: ad ff     cmp   y,#$ff
0bb1: f0 10     beq   $0bc3
0bb3: 40        setp
0bb4: e4 b0     mov   a,$b0
0bb6: d6 c7 03  mov   $03c7+y,a
0bb9: e8 80     mov   a,#$80
0bbb: d6 cf 03  mov   $03cf+y,a
0bbe: e8 00     mov   a,#$00
0bc0: d6 a7 03  mov   $03a7+y,a
0bc3: 6f        ret

; cpu cmd 04
0bc4: e5 f7 00  mov   a,$00f7
0bc7: c4 b0     mov   $b0,a
0bc9: e5 f6 00  mov   a,$00f6
0bcc: 3f b2 10  call  $10b2
0bcf: 3f f2 1f  call  $1ff2
0bd2: b0 15     bcs   $0be9
0bd4: f6 d7 03  mov   a,$03d7+y
0bd7: 08 01     or    a,#$01
0bd9: d6 d7 03  mov   $03d7+y,a
0bdc: e4 b0     mov   a,$b0
0bde: 48 ff     eor   a,#$ff
0be0: bc        inc   a
0be1: d6 c7 03  mov   $03c7+y,a
0be4: e8 80     mov   a,#$80
0be6: d6 cf 03  mov   $03cf+y,a
0be9: 6f        ret

; cpu cmd 05
0bea: e5 f7 00  mov   a,$00f7
0bed: c4 b0     mov   $b0,a
0bef: e5 f6 00  mov   a,$00f6
0bf2: c4 b1     mov   $b1,a
0bf4: 3f b2 10  call  $10b2
0bf7: 3f f2 1f  call  $1ff2
0bfa: 90 02     bcc   $0bfe
0bfc: 8d ff     mov   y,#$ff
0bfe: e4 b0     mov   a,$b0
0c00: 68 21     cmp   a,#$21
0c02: b0 14     bcs   $0c18
0c04: 6d        push  y
0c05: 3f 7d 20  call  $207d
0c08: ee        pop   y
0c09: 40        setp
0c0a: fc        inc   y
0c0b: f0 0b     beq   $0c18
0c0d: e4 b1     mov   a,$b1
0c0f: 3f 0b 20  call  $200b
0c12: b0 04     bcs   $0c18
0c14: e4 b0     mov   a,$b0
0c16: 2f ec     bra   $0c04
0c18: 6f        ret

; cpu cmd 06
0c19: e9 f6 00  mov   x,$00f6
0c1c: 3f b2 10  call  $10b2
0c1f: 3f d4 24  call  $24d4
0c22: 6f        ret

; cpu cmd 07
0c23: 3f ad 10  call  $10ad
0c26: e8 ff     mov   a,#$ff
0c28: c5 f6 03  mov   $03f6,a
0c2b: e8 a0     mov   a,#$a0
0c2d: c5 f7 03  mov   $03f7,a
0c30: 6f        ret

; cpu cmd 08
0c31: 3f a8 10  call  $10a8
0c34: 5f 05 0a  jmp   $0a05

; cpu cmd 09
0c37: e5 f6 00  mov   a,$00f6
0c3a: 3f f2 1f  call  $1ff2
0c3d: b0 08     bcs   $0c47
0c3f: 3f 9d 10  call  $109d
0c42: f6 df 03  mov   a,$03df+y
0c45: 2f 05     bra   $0c4c
0c47: 3f a1 10  call  $10a1
0c4a: e8 7f     mov   a,#$7f
0c4c: c5 f5 00  mov   $00f5,a
0c4f: 3f b2 10  call  $10b2
0c52: 6f        ret

; cpu cmd 0A
0c53: 3f b2 10  call  $10b2
0c56: 3f 99 25  call  $2599
0c59: 3f f6 27  call  $27f6
0c5c: 6f        ret

; cpu cmd 0B
0c5d: 5f 50 0a  jmp   $0a50

; cpu cmd 0C
0c60: e5 f7 00  mov   a,$00f7
0c63: c4 b0     mov   $b0,a
0c65: e5 f6 00  mov   a,$00f6
0c68: 5d        mov   x,a
0c69: fd        mov   y,a
0c6a: 3f 82 14  call  $1482
0c6d: b0 24     bcs   $0c93
0c6f: 3f 5f 1a  call  $1a5f
0c72: b0 33     bcs   $0ca7
0c74: 65 27 29  cmp   a,$2927
0c77: b0 0a     bcs   $0c83
0c79: 2d        push  a
0c7a: ec f9 03  mov   y,$03f9
0c7d: 3f e7 22  call  $22e7
0c80: ae        pop   a
0c81: 2f 03     bra   $0c86
0c83: 3f ab 0e  call  $0eab
0c86: fd        mov   y,a
0c87: 2d        push  a
0c88: 6d        push  y
0c89: 3f a3 27  call  $27a3
0c8c: ee        pop   y
0c8d: 3f 34 26  call  $2634
0c90: ae        pop   a
0c91: 90 04     bcc   $0c97
0c93: 3f ad 10  call  $10ad
0c96: 6f        ret

0c97: 3f a8 10  call  $10a8
0c9a: 3f fc 11  call  $11fc
0c9d: 40        setp
0c9e: ec f8 03  mov   y,$03f8
0ca1: ad ff     cmp   y,#$ff
0ca3: d0 0c     bne   $0cb1
0ca5: 2f 13     bra   $0cba
0ca7: 2d        push  a
0ca8: 3f 43 0b  call  $0b43
0cab: ae        pop   a
0cac: 3f f2 1f  call  $1ff2
0caf: b0 09     bcs   $0cba
0cb1: e4 b0     mov   a,$b0
0cb3: 68 21     cmp   a,#$21
0cb5: b0 03     bcs   $0cba
0cb7: 3f 7d 20  call  $207d
0cba: 6f        ret

; cpu cmds 0D,0E,0F
0cbb: ec f6 00  mov   y,$00f6
0cbe: 3f b2 10  call  $10b2
0cc1: f6 ff 03  mov   a,$03ff+y
0cc4: 68 ff     cmp   a,#$ff
0cc6: f0 0d     beq   $0cd5
0cc8: 3f e4 24  call  $24e4
0ccb: f7 a2     mov   a,($a2)+y
0ccd: 68 20     cmp   a,#$20
0ccf: 90 04     bcc   $0cd5
0cd1: a8 20     sbc   a,#$20
0cd3: d7 a2     mov   ($a2)+y,a
0cd5: 6f        ret

; cpu cmd 10
0cd6: c4 97     mov   $97,a
0cd8: 3f c3 0d  call  $0dc3
0cdb: e5 f6 00  mov   a,$00f6
0cde: c4 91     mov   $91,a
0ce0: fd        mov   y,a
0ce1: 3f 82 14  call  $1482
0ce4: b0 22     bcs   $0d08
0ce6: f6 c7 04  mov   a,$04c7+y
0ce9: 3f 04 25  call  $2504
0cec: f7 a2     mov   a,($a2)+y
0cee: 28 e0     and   a,#$e0
0cf0: 68 e0     cmp   a,#$e0
0cf2: 0d        push  psw
0cf3: f7 a2     mov   a,($a2)+y
0cf5: 8e        pop   psw
0cf6: f0 03     beq   $0cfb
0cf8: 60        clrc
0cf9: 88 20     adc   a,#$20
0cfb: 78 10 97  cmp   $97,#$10
0cfe: f0 02     beq   $0d02
0d00: 08 10     or    a,#$10
0d02: d7 a2     mov   ($a2)+y,a
0d04: 3f ad 10  call  $10ad
0d07: 6f        ret

0d08: 3f a8 10  call  $10a8
0d0b: 3f 9f 0f  call  $0f9f
0d0e: b0 4d     bcs   $0d5d
0d10: ec f6 00  mov   y,$00f6
0d13: 3f 7a 24  call  $247a
0d16: 90 04     bcc   $0d1c
0d18: 3f ad 10  call  $10ad
0d1b: 6f        ret

0d1c: 3f a8 10  call  $10a8
0d1f: 7d        mov   a,x
0d20: eb 91     mov   y,$91
0d22: d6 c7 04  mov   $04c7+y,a
0d25: ba ae     movw  ya,$ae
0d27: da 94     movw  $94,ya
0d29: 8d 01     mov   y,#$01
0d2b: f7 94     mov   a,($94)+y
0d2d: c4 8c     mov   $8c,a
0d2f: fc        inc   y
0d30: f7 94     mov   a,($94)+y
0d32: c4 8d     mov   $8d,a
0d34: 8d 03     mov   y,#$03
0d36: f7 94     mov   a,($94)+y
0d38: c4 8e     mov   $8e,a
0d3a: fc        inc   y
0d3b: f7 94     mov   a,($94)+y
0d3d: c4 8f     mov   $8f,a
0d3f: 8d 05     mov   y,#$05
0d41: f7 94     mov   a,($94)+y
0d43: 28 e0     and   a,#$e0
0d45: 68 e0     cmp   a,#$e0
0d47: 0d        push  psw
0d48: f7 94     mov   a,($94)+y
0d4a: 8e        pop   psw
0d4b: f0 03     beq   $0d50
0d4d: 60        clrc
0d4e: 88 20     adc   a,#$20
0d50: 78 10 97  cmp   $97,#$10
0d53: f0 02     beq   $0d57
0d55: 08 10     or    a,#$10
0d57: d7 94     mov   ($94)+y,a
0d59: 8f 80 96  mov   $96,#$80
0d5c: 6f        ret

0d5d: 3f ad 10  call  $10ad
0d60: 6f        ret

; cpu cmd 11
0d61: e9 f6 00  mov   x,$00f6
0d64: 3f f4 24  call  $24f4
0d67: 3f b2 10  call  $10b2
0d6a: 6f        ret

; cpu cmd 12
0d6b: ec f6 00  mov   y,$00f6
0d6e: 3f 82 27  call  $2782
0d71: 3f b2 10  call  $10b2
0d74: 6f        ret

; cpu cmd 13
0d75: c4 97     mov   $97,a
0d77: 5f d8 0c  jmp   $0cd8

; cpu cmd 14
0d7a: e5 f6 00  mov   a,$00f6
0d7d: 48 ff     eor   a,#$ff
0d7f: bc        inc   a
0d80: c4 b0     mov   $b0,a
0d82: 8d 00     mov   y,#$00
0d84: e8 00     mov   a,#$00
0d86: 76 b7 03  cmp   a,$03b7+y
0d89: f0 12     beq   $0d9d
0d8b: f6 d7 03  mov   a,$03d7+y
0d8e: 08 01     or    a,#$01
0d90: d6 d7 03  mov   $03d7+y,a
0d93: e4 b0     mov   a,$b0
0d95: d6 c7 03  mov   $03c7+y,a
0d98: e8 80     mov   a,#$80
0d9a: d6 cf 03  mov   $03cf+y,a
0d9d: fc        inc   y
0d9e: ad 08     cmp   y,#$08
0da0: 90 e2     bcc   $0d84
0da2: e8 00     mov   a,#$00
0da4: fd        mov   y,a
0da5: 16 b7 03  or    a,$03b7+y
0da8: fc        inc   y
0da9: ad 08     cmp   y,#$08
0dab: 90 f8     bcc   $0da5
0dad: 68 00     cmp   a,#$00
0daf: f0 05     beq   $0db6
0db1: 3f c3 10  call  $10c3
0db4: 2f ec     bra   $0da2
0db6: 3f a8 10  call  $10a8
0db9: 3f 99 25  call  $2599
0dbc: 3f f6 27  call  $27f6
0dbf: 6f        ret

; cpu cmd 15
0dc0: 3f b2 10  call  $10b2
0dc3: 3f bd 27  call  $27bd
0dc6: e4 96     mov   a,$96
0dc8: 68 00     cmp   a,#$00
0dca: f0 66     beq   $0e32
0dcc: 68 80     cmp   a,#$80
0dce: b0 2f     bcs   $0dff
0dd0: f8 90     mov   x,$90
0dd2: e8 ff     mov   a,#$ff
0dd4: d5 ff 03  mov   $03ff+x,a
0dd7: 8d 07     mov   y,#$07
0dd9: e8 00     mov   a,#$00
0ddb: d7 94     mov   ($94)+y,a
0ddd: fd        mov   y,a
0dde: f7 92     mov   a,($92)+y
0de0: c4 a2     mov   $a2,a
0de2: fc        inc   y
0de3: f7 92     mov   a,($92)+y
0de5: c4 a3     mov   $a3,a
0de7: 8d 00     mov   y,#$00
0de9: f7 94     mov   a,($94)+y
0deb: c4 a4     mov   $a4,a
0ded: fc        inc   y
0dee: f7 94     mov   a,($94)+y
0df0: c4 a5     mov   $a5,a
0df2: 3f 14 25  call  $2514
0df5: e8 00     mov   a,#$00
0df7: fd        mov   y,a
0df8: d7 92     mov   ($92)+y,a
0dfa: fc        inc   y
0dfb: d7 92     mov   ($92)+y,a
0dfd: 2f 2a     bra   $0e29
0dff: f8 91     mov   x,$91
0e01: e8 ff     mov   a,#$ff
0e03: d5 c7 04  mov   $04c7+x,a
0e06: e8 00     mov   a,#$00
0e08: 8d 00     mov   y,#$00
0e0a: d7 94     mov   ($94)+y,a
0e0c: 8d 05     mov   y,#$05
0e0e: d7 94     mov   ($94)+y,a
0e10: 8d 01     mov   y,#$01
0e12: f7 94     mov   a,($94)+y
0e14: c4 a2     mov   $a2,a
0e16: fc        inc   y
0e17: f7 94     mov   a,($94)+y
0e19: c4 a3     mov   $a3,a
0e1b: 8d 03     mov   y,#$03
0e1d: f7 94     mov   a,($94)+y
0e1f: c4 a4     mov   $a4,a
0e21: fc        inc   y
0e22: f7 94     mov   a,($94)+y
0e24: c4 a5     mov   $a5,a
0e26: 3f 14 25  call  $2514
0e29: e8 00     mov   a,#$00
0e2b: c4 96     mov   $96,a
0e2d: 9c        dec   a
0e2e: c4 90     mov   $90,a
0e30: c4 91     mov   $91,a
0e32: 6f        ret

; cpu cmd 16
0e33: 3f b2 10  call  $10b2
0e36: 8f 35 a2  mov   $a2,#$35
0e39: 8f 05 a3  mov   $a3,#$05
0e3c: 8f 08 a4  mov   $a4,#$08
0e3f: 8f 20 a5  mov   $a5,#$20
0e42: 8d 07     mov   y,#$07
0e44: 3f 55 0e  call  $0e55
0e47: 8f 35 a2  mov   $a2,#$35
0e4a: 8f 06 a3  mov   $a3,#$06
0e4d: 8f 06 a4  mov   $a4,#$06
0e50: 8f 14 a5  mov   $a5,#$14
0e53: 8d 05     mov   y,#$05
0e55: f7 a2     mov   a,($a2)+y
0e57: 28 1f     and   a,#$1f
0e59: d7 a2     mov   ($a2)+y,a
0e5b: 6d        push  y
0e5c: 8d 00     mov   y,#$00
0e5e: e4 a4     mov   a,$a4
0e60: 7a a2     addw  ya,$a2
0e62: da a2     movw  $a2,ya
0e64: ee        pop   y
0e65: 6e a5 ed  dbnz  $a5,$0e55
0e68: 6f        ret

0e69: 40        setp
0e6a: eb b0     mov   y,$b0
0e6c: 30 3c     bmi   $0eaa
0e6e: f6 b7 03  mov   a,$03b7+y
0e71: f0 37     beq   $0eaa
0e73: e4 b1     mov   a,$b1
0e75: 68 7f     cmp   a,#$7f
0e77: f0 15     beq   $0e8e
0e79: 20        clrp
0e7a: c4 a0     mov   $a0,a
0e7c: cd 00     mov   x,#$00
0e7e: dd        mov   a,y
0e7f: 75 a3 02  cmp   a,$02a3+x
0e82: d0 04     bne   $0e88
0e84: e4 a0     mov   a,$a0
0e86: d4 29     mov   $29+x,a
0e88: 3d        inc   x
0e89: 3d        inc   x
0e8a: c8 14     cmp   x,#$14
0e8c: 90 f0     bcc   $0e7e
0e8e: 40        setp
0e8f: e4 b2     mov   a,$b2
0e91: 68 80     cmp   a,#$80
0e93: f0 15     beq   $0eaa
0e95: 20        clrp
0e96: c4 a0     mov   $a0,a
0e98: cd 00     mov   x,#$00
0e9a: dd        mov   a,y
0e9b: 75 a3 02  cmp   a,$02a3+x
0e9e: d0 04     bne   $0ea4
0ea0: e4 a0     mov   a,$a0
0ea2: d4 3c     mov   $3c+x,a
0ea4: 3d        inc   x
0ea5: 3d        inc   x
0ea6: c8 14     cmp   x,#$14
0ea8: 90 f0     bcc   $0e9a
0eaa: 6f        ret

0eab: 2d        push  a
0eac: e8 00     mov   a,#$00
0eae: c5 fe 03  mov   $03fe,a
0eb1: ae        pop   a
0eb2: ec fc 03  mov   y,$03fc
0eb5: d0 01     bne   $0eb8
0eb7: 6f        ret

0eb8: ad 04     cmp   y,#$04
0eba: 90 09     bcc   $0ec5
0ebc: 2d        push  a
0ebd: ec fa 03  mov   y,$03fa
0ec0: 3f e7 22  call  $22e7
0ec3: ae        pop   a
0ec4: 6f        ret

0ec5: 2d        push  a
0ec6: fd        mov   y,a
0ec7: 3f ff 0e  call  $0eff
0eca: c4 a2     mov   $a2,a
0ecc: ae        pop   a
0ecd: 78 02 a2  cmp   $a2,#$02
0ed0: 90 14     bcc   $0ee6
0ed2: 2d        push  a
0ed3: e8 02     mov   a,#$02
0ed5: c5 fe 03  mov   $03fe,a
0ed8: ec fa 03  mov   y,$03fa
0edb: 3f e7 22  call  $22e7
0ede: ec fb 03  mov   y,$03fb
0ee1: 3f e7 22  call  $22e7
0ee4: ae        pop   a
0ee5: 6f        ret

0ee6: 2d        push  a
0ee7: e8 01     mov   a,#$01
0ee9: c5 fe 03  mov   $03fe,a
0eec: e5 fc 03  mov   a,$03fc
0eef: 68 03     cmp   a,#$03
0ef1: 90 0a     bcc   $0efd
0ef3: ec fd 03  mov   y,$03fd
0ef6: f6 fa 03  mov   a,$03fa+y
0ef9: fd        mov   y,a
0efa: 3f e7 22  call  $22e7
0efd: ae        pop   a
0efe: 6f        ret

0eff: f6 c7 04  mov   a,$04c7+y
0f02: 8f 35 a2  mov   $a2,#$35
0f05: 8f 06 a3  mov   $a3,#$06
0f08: 8d 06     mov   y,#$06
0f0a: cf        mul   ya
0f0b: 7a a2     addw  ya,$a2
0f0d: da a2     movw  $a2,ya
0f0f: 8d 01     mov   y,#$01
0f11: f7 a2     mov   a,($a2)+y
0f13: 2d        push  a
0f14: fc        inc   y
0f15: f7 a2     mov   a,($a2)+y
0f17: c4 a3     mov   $a3,a
0f19: ae        pop   a
0f1a: c4 a2     mov   $a2,a
0f1c: 8d 01     mov   y,#$01
0f1e: f7 a2     mov   a,($a2)+y
0f20: 6f        ret

0f21: dd        mov   a,y
0f22: 65 fa 03  cmp   a,$03fa
0f25: f0 1a     beq   $0f41
0f27: e8 ff     mov   a,#$ff
0f29: c5 fb 03  mov   $03fb,a
0f2c: e8 01     mov   a,#$01
0f2e: c5 fd 03  mov   $03fd,a
0f31: e5 fa 03  mov   a,$03fa
0f34: bc        inc   a
0f35: f0 04     beq   $0f3b
0f37: e8 01     mov   a,#$01
0f39: 2f 02     bra   $0f3d
0f3b: e8 00     mov   a,#$00
0f3d: c5 fc 03  mov   $03fc,a
0f40: 6f        ret

0f41: e8 ff     mov   a,#$ff
0f43: c5 fa 03  mov   $03fa,a
0f46: bc        inc   a
0f47: c5 fd 03  mov   $03fd,a
0f4a: e5 fb 03  mov   a,$03fb
0f4d: bc        inc   a
0f4e: f0 eb     beq   $0f3b
0f50: e8 02     mov   a,#$02
0f52: 2f e9     bra   $0f3d
0f54: e5 fe 03  mov   a,$03fe
0f57: d0 09     bne   $0f62
0f59: f5 af 03  mov   a,$03af+x
0f5c: fd        mov   y,a
0f5d: 40        setp
0f5e: 3f ff 0e  call  $0eff
0f61: 20        clrp
0f62: 9c        dec   a
0f63: f0 12     beq   $0f77
0f65: c9 fa 03  mov   $03fa,x
0f68: e8 04     mov   a,#$04
0f6a: c5 fc 03  mov   $03fc,a
0f6d: e8 ff     mov   a,#$ff
0f6f: c5 fb 03  mov   $03fb,a
0f72: bc        inc   a
0f73: c5 fd 03  mov   $03fd,a
0f76: 6f        ret

0f77: e5 fa 03  mov   a,$03fa
0f7a: bc        inc   a
0f7b: d0 11     bne   $0f8e
0f7d: c9 fa 03  mov   $03fa,x
0f80: e5 fc 03  mov   a,$03fc
0f83: 08 01     or    a,#$01
0f85: c5 fc 03  mov   $03fc,a
0f88: e8 01     mov   a,#$01
0f8a: c5 fd 03  mov   $03fd,a
0f8d: 6f        ret

0f8e: c9 fb 03  mov   $03fb,x
0f91: e5 fc 03  mov   a,$03fc
0f94: 08 02     or    a,#$02
0f96: c5 fc 03  mov   $03fc,a
0f99: e8 00     mov   a,#$00
0f9b: c5 fd 03  mov   $03fd,a
0f9e: 6f        ret

0f9f: 40        setp
0fa0: e5 f4 00  mov   a,$00f4
0fa3: 65 f4 00  cmp   a,$00f4
0fa6: d0 f7     bne   $0f9f
0fa8: 44 9a     eor   a,$9a
0faa: 28 01     and   a,#$01
0fac: d0 05     bne   $0fb3
0fae: 3f c3 10  call  $10c3
0fb1: 2f ec     bra   $0f9f
0fb3: e5 f4 00  mov   a,$00f4
0fb6: 30 05     bmi   $0fbd
0fb8: e5 f5 00  mov   a,$00f5
0fbb: 60        clrc
0fbc: 6f        ret

0fbd: 3f c9 0f  call  $0fc9
0fc0: b0 05     bcs   $0fc7
0fc2: 3f c3 10  call  $10c3
0fc5: 2f d8     bra   $0f9f
0fc7: 80        setc
0fc8: 6f        ret

0fc9: 40        setp
0fca: f8 96     mov   x,$96
0fcc: c8 00     cmp   x,#$00
0fce: d0 05     bne   $0fd5
0fd0: 3f b2 10  call  $10b2
0fd3: 80        setc
0fd4: 6f        ret

0fd5: c8 01     cmp   x,#$01
0fd7: d0 25     bne   $0ffe
0fd9: 8d 00     mov   y,#$00
0fdb: f7 92     mov   a,($92)+y
0fdd: c4 98     mov   $98,a
0fdf: fc        inc   y
0fe0: f7 92     mov   a,($92)+y
0fe2: c4 99     mov   $99,a
0fe4: e5 f5 00  mov   a,$00f5
0fe7: ec f6 00  mov   y,$00f6
0fea: 7a 98     addw  ya,$98
0fec: 6d        push  y
0fed: 8d 02     mov   y,#$02
0fef: d7 92     mov   ($92)+y,a
0ff1: ae        pop   a
0ff2: fc        inc   y
0ff3: d7 92     mov   ($92)+y,a
0ff5: 8d 02     mov   y,#$02
0ff7: e5 f7 00  mov   a,$00f7
0ffa: d7 94     mov   ($94)+y,a
0ffc: 2f 67     bra   $1065
0ffe: c8 02     cmp   x,#$02
1000: d0 15     bne   $1017
1002: 8d 03     mov   y,#$03
1004: e5 f5 00  mov   a,$00f5
1007: d7 94     mov   ($94)+y,a
1009: fc        inc   y
100a: e5 f6 00  mov   a,$00f6
100d: d7 94     mov   ($94)+y,a
100f: fc        inc   y
1010: e5 f7 00  mov   a,$00f7
1013: d7 94     mov   ($94)+y,a
1015: 2f 4e     bra   $1065
1017: c8 03     cmp   x,#$03
1019: d0 21     bne   $103c
101b: 8d 06     mov   y,#$06
101d: e5 f5 00  mov   a,$00f5
1020: d7 94     mov   ($94)+y,a
1022: cd 00     mov   x,#$00
1024: e5 f6 00  mov   a,$00f6
1027: c7 8c     mov   ($8c+x),a
1029: 3a 8c     incw  $8c
102b: 1a 8e     decw  $8e
102d: f0 3d     beq   $106c
102f: e5 f7 00  mov   a,$00f7
1032: c7 8c     mov   ($8c+x),a
1034: 3a 8c     incw  $8c
1036: 1a 8e     decw  $8e
1038: f0 32     beq   $106c
103a: 2f 29     bra   $1065
103c: c8 04     cmp   x,#$04
103e: d0 34     bne   $1074
1040: cd 00     mov   x,#$00
1042: e5 f5 00  mov   a,$00f5
1045: c7 8c     mov   ($8c+x),a
1047: 3a 8c     incw  $8c
1049: 1a 8e     decw  $8e
104b: f0 1f     beq   $106c
104d: e5 f6 00  mov   a,$00f6
1050: c7 8c     mov   ($8c+x),a
1052: 3a 8c     incw  $8c
1054: 1a 8e     decw  $8e
1056: f0 14     beq   $106c
1058: e5 f7 00  mov   a,$00f7
105b: c7 8c     mov   ($8c+x),a
105d: 3a 8c     incw  $8c
105f: 1a 8e     decw  $8e
1061: f0 09     beq   $106c
1063: 2f 02     bra   $1067
1065: ab 96     inc   $96
1067: 3f b2 10  call  $10b2
106a: 60        clrc
106b: 6f        ret

106c: 8f 00 96  mov   $96,#$00
106f: 8f ff 90  mov   $90,#$ff
1072: 2f f3     bra   $1067
1074: c8 80     cmp   x,#$80
1076: d0 f4     bne   $106c
1078: cd 00     mov   x,#$00
107a: e5 f5 00  mov   a,$00f5
107d: c7 8c     mov   ($8c+x),a
107f: 3a 8c     incw  $8c
1081: 1a 8e     decw  $8e
1083: f0 e7     beq   $106c
1085: e5 f6 00  mov   a,$00f6
1088: c7 8c     mov   ($8c+x),a
108a: 3a 8c     incw  $8c
108c: 1a 8e     decw  $8e
108e: f0 dc     beq   $106c
1090: e5 f7 00  mov   a,$00f7
1093: c7 8c     mov   ($8c+x),a
1095: 3a 8c     incw  $8c
1097: 1a 8e     decw  $8e
1099: d0 cc     bne   $1067
109b: 2f cf     bra   $106c
109d: 40        setp
109e: c2 9a     set6  $9a
10a0: 6f        ret

10a1: 40        setp
10a2: d2 9a     clr6  $9a
10a4: 6f        ret

10a5: a2 9a     set5  $9a
10a7: 6f        ret

10a8: 40        setp
10a9: c2 9a     set6  $9a
10ab: 2f 06     bra   $10b3
10ad: 40        setp
10ae: d2 9a     clr6  $9a
10b0: 2f 01     bra   $10b3
10b2: 40        setp
10b3: 2d        push  a
10b4: e4 9a     mov   a,$9a
10b6: 48 81     eor   a,#$81
10b8: c4 9a     mov   $9a,a
10ba: 28 e0     and   a,#$e0
10bc: c5 f4 00  mov   $00f4,a
10bf: b2 9a     clr5  $9a
10c1: ae        pop   a
10c2: 6f        ret

10c3: 20        clrp
10c4: e4 fd     mov   a,$fd
10c6: f0 0c     beq   $10d4
10c8: 20        clrp
10c9: 2d        push  a
10ca: 3f 8a 14  call  $148a
10cd: ae        pop   a
10ce: 9c        dec   a
10cf: d0 f8     bne   $10c9
10d1: 3f f8 19  call  $19f8
10d4: 40        setp
10d5: 6f        ret

10d6: 20        clrp
10d7: cd 00     mov   x,#$00
10d9: f5 a1 07  mov   a,$07a1+x
10dc: f0 0b     beq   $10e9
10de: c4 f2     mov   $f2,a
10e0: 3d        inc   x
10e1: f5 a1 07  mov   a,$07a1+x
10e4: c4 f3     mov   $f3,a
10e6: 3d        inc   x
10e7: 2f f0     bra   $10d9
10e9: e8 00     mov   a,#$00
10eb: 20        clrp
10ec: 5d        mov   x,a
10ed: af        mov   (x)+,a
10ee: c8 b2     cmp   x,#$b2
10f0: 90 fb     bcc   $10ed
10f2: 40        setp
10f3: 5d        mov   x,a
10f4: af        mov   (x)+,a
10f5: c8 b3     cmp   x,#$b3
10f7: 90 fb     bcc   $10f4
10f9: 5d        mov   x,a
10fa: 8f 03 a2  mov   $a2,#$03
10fd: 8f 02 a3  mov   $a3,#$02
1100: 8d 07     mov   y,#$07
1102: 7d        mov   a,x
1103: c7 a2     mov   ($a2+x),a
1105: 3a a2     incw  $a2
1107: e8 80     mov   a,#$80
1109: 5a a2     cmpw  ya,$a2
110b: d0 f5     bne   $1102
110d: 20        clrp
110e: 8f 32 a9  mov   $a9,#$32
1111: 8f 64 aa  mov   $aa,#$64
1114: 8f 23 ab  mov   $ab,#$23
1117: e8 00     mov   a,#$00
1119: c4 a8     mov   $a8,a
111b: c4 ac     mov   $ac,a
111d: c4 ad     mov   $ad,a
111f: c4 b0     mov   $b0,a
1121: 5d        mov   x,a
1122: d5 b7 03  mov   $03b7+x,a
1125: 3d        inc   x
1126: c8 08     cmp   x,#$08
1128: d0 f8     bne   $1122
112a: c4 ad     mov   $ad,a
112c: c4 ac     mov   $ac,a
112e: e8 60     mov   a,#$60
1130: c4 af     mov   $af,a
1132: c4 ae     mov   $ae,a
1134: e8 00     mov   a,#$00
1136: 5d        mov   x,a
1137: d5 6c 03  mov   $036c+x,a
113a: 3d        inc   x
113b: 3d        inc   x
113c: c8 10     cmp   x,#$10
113e: d0 f7     bne   $1137
1140: 5d        mov   x,a
1141: e8 ff     mov   a,#$ff
1143: d5 a3 02  mov   $02a3+x,a
1146: d5 6b 03  mov   $036b+x,a
1149: 3d        inc   x
114a: 3d        inc   x
114b: c8 14     cmp   x,#$14
114d: d0 f4     bne   $1143
114f: e8 01     mov   a,#$01
1151: c5 ef 03  mov   $03ef,a
1154: e8 00     mov   a,#$00
1156: c5 f0 03  mov   $03f0,a
1159: c5 f1 03  mov   $03f1,a
115c: c5 f7 03  mov   $03f7,a
115f: c5 fd 03  mov   $03fd,a
1162: c5 fc 03  mov   $03fc,a
1165: e8 ff     mov   a,#$ff
1167: c5 f8 03  mov   $03f8,a
116a: c5 f9 03  mov   $03f9,a
116d: c5 fa 03  mov   $03fa,a
1170: c5 fb 03  mov   $03fb,a
1173: 40        setp
1174: 8f 00 96  mov   $96,#$00
1177: 8f ff 90  mov   $90,#$ff
117a: 20        clrp
117b: e8 00     mov   a,#$00
117d: c4 f2     mov   $f2,a
117f: 8f 00 f3  mov   $f3,#$00          ; VOL(L)
1182: bc        inc   a
1183: c4 f2     mov   $f2,a
1185: 8f 00 f3  mov   $f3,#$00          ; VOL(R)
1188: 60        clrc
1189: 88 0f     adc   a,#$0f
118b: 68 80     cmp   a,#$80
118d: 90 ee     bcc   $117d
118f: 8f 00 f1  mov   $f1,#$00          ; stop all timers
1192: 8f 28 fa  mov   $fa,#$28          ; set timer0 latch to #$28 (200 Hz, 5ms)
1195: 8f 01 f1  mov   $f1,#$01          ; start timer0
1198: e4 fd     mov   a,$fd
119a: 3f 2c 23  call  $232c
119d: 20        clrp
119e: e8 43     mov   a,#$43
11a0: 8d 68     mov   y,#$68
11a2: 5a f4     cmpw  ya,$f4
11a4: d0 f8     bne   $119e
11a6: 5a f4     cmpw  ya,$f4
11a8: d0 f4     bne   $119e
11aa: e8 75     mov   a,#$75
11ac: 8d 6e     mov   y,#$6e
11ae: 5a f6     cmpw  ya,$f6
11b0: d0 ec     bne   $119e
11b2: 5a f6     cmpw  ya,$f6
11b4: d0 e8     bne   $119e
11b6: e8 53     mov   a,#$53
11b8: 8d 4f     mov   y,#$4f
11ba: da f4     movw  $f4,ya
11bc: e8 46     mov   a,#$46
11be: 8d 54     mov   y,#$54
11c0: da f6     movw  $f6,ya
11c2: e4 f4     mov   a,$f4
11c4: 64 f4     cmp   a,$f4
11c6: d0 fa     bne   $11c2
11c8: 68 00     cmp   a,#$00
11ca: d0 f6     bne   $11c2
11cc: c4 f4     mov   $f4,a
11ce: 40        setp
11cf: c4 9a     mov   $9a,a
11d1: 20        clrp
11d2: 6f        ret

11d3: f5 af 03  mov   a,$03af+x
11d6: fd        mov   y,a
11d7: 3f c6 26  call  $26c6
11da: e8 ff     mov   a,#$ff
11dc: c5 f8 03  mov   $03f8,a
11df: 6f        ret

11e0: e4 a2     mov   a,$a2
11e2: 8d 01     mov   y,#$01
11e4: 77 a0     cmp   a,($a0)+y
11e6: d0 13     bne   $11fb
11e8: f8 a3     mov   x,$a3
11ea: e8 00     mov   a,#$00
11ec: d5 b7 03  mov   $03b7+x,a
11ef: f5 af 03  mov   a,$03af+x
11f2: fd        mov   y,a
11f3: 3f c6 26  call  $26c6
11f6: e8 ff     mov   a,#$ff
11f8: c5 f8 03  mov   $03f8,a
11fb: 6f        ret

11fc: 20        clrp
11fd: 3f 5f 1a  call  $1a5f
1200: 90 01     bcc   $1203
1202: 6f        ret

1203: 3f 2c 13  call  $132c
1206: b0 ce     bcs   $11d6
1208: 65 27 29  cmp   a,$2927
120b: b0 19     bcs   $1226
120d: 2d        push  a
120e: 40        setp
120f: 4d        push  x
1210: 3f 99 25  call  $2599
1213: 3f f6 27  call  $27f6
1216: ce        pop   x
1217: 20        clrp
1218: c9 f9 03  mov   $03f9,x           ; X = $03F9
121b: e8 80     mov   a,#$80
121d: d5 a7 03  mov   $03a7+x,a
1220: ae        pop   a
1221: d5 af 03  mov   $03af+x,a
1224: 2f 0d     bra   $1233

1226: d5 af 03  mov   $03af+x,a         ; X = $03F9, $03AF+X = A
1229: 2d        push  a
122a: 3f 54 0f  call  $0f54
122d: e8 80     mov   a,#$80
122f: d5 a7 03  mov   $03a7+x,a
1232: ae        pop   a

1233: c9 f8 03  mov   $03f8,x
1236: fd        mov   y,a               ; Y = A = $03B7+X
1237: f6 c7 04  mov   a,$04c7+y
123a: 8f 35 a0  mov   $a0,#$35
123d: 8f 06 a1  mov   $a1,#$06
1240: 8d 06     mov   y,#$06
1242: cf        mul   ya
1243: 7a a0     addw  ya,$a0
1245: da a0     movw  $a0,ya            ; $A0/1 = #$0635 + ($04C7+Y * 6)
1247: 8d 01     mov   y,#$01
1249: f7 a0     mov   a,($a0)+y
124b: 2d        push  a
124c: fc        inc   y
124d: f7 a0     mov   a,($a0)+y
124f: c4 a1     mov   $a1,a
1251: ae        pop   a
1252: c4 a0     mov   $a0,a             ; $A0/1 = (WORD) [$A0]+1 (sequence header)
1254: e8 00     mov   a,#$00
1256: d5 df 03  mov   $03df+x,a
1259: d5 c7 03  mov   $03c7+x,a
125c: d5 e7 03  mov   $03e7+x,a
125f: e8 02     mov   a,#$02
1261: d5 d7 03  mov   $03d7+x,a
; read the sequence header
1264: 8d 00     mov   y,#$00
1266: f7 a0     mov   a,($a0)+y         ; header+0: initial tempo
1268: fc        inc   y
1269: d5 b7 03  mov   $03b7+x,a
126c: e8 7d     mov   a,#$7d
126e: d5 bf 03  mov   $03bf+x,a
1271: f7 a0     mov   a,($a0)+y         ; header+1: channels
1273: fc        inc   y
1274: c4 a2     mov   $a2,a
1276: d8 a3     mov   $a3,x
1278: e8 00     mov   a,#$00
127a: c5 f2 03  mov   $03f2,a
127d: f8 a3     mov   x,$a3
127f: f5 af 03  mov   a,$03af+x
1282: 3f 41 13  call  $1341
1285: 90 03     bcc   $128a
1287: 5f e0 11  jmp   $11e0

128a: f7 a0     mov   a,($a0)+y
128c: fc        inc   y
128d: c4 a4     mov   $a4,a
128f: f7 a0     mov   a,($a0)+y         ; header+2+(N*2): offset to the head of the channel
1291: fc        inc   y
1292: c4 a5     mov   $a5,a
1294: 6d        push  y
1295: ba a0     movw  ya,$a0
1297: 7a a4     addw  ya,$a4
1299: d4 00     mov   $00+x,a
129b: db 01     mov   $01+x,y           ; set reading ptr
129d: ee        pop   y
129e: e8 01     mov   a,#$01
12a0: d4 14     mov   $14+x,a
12a2: d5 94 03  mov   $0394+x,a
12a5: e8 cc     mov   a,#$cc
12a7: d5 04 02  mov   $0204+x,a         ; duration rate = #$CC
12aa: e8 00     mov   a,#$00            ; zero following vars
12ac: d4 15     mov   $15+x,a
12ae: d4 3c     mov   $3c+x,a
12b0: d4 8d     mov   $8d+x,a
12b2: d5 f4 02  mov   $02f4+x,a
12b5: d5 a4 02  mov   $02a4+x,a
12b8: d5 40 02  mov   $0240+x,a
12bb: d5 cb 02  mov   $02cb+x,a
12be: d5 08 03  mov   $0308+x,a
12c1: d5 53 02  mov   $0253+x,a
12c4: d5 17 02  mov   $0217+x,a         ; loop counter
12c7: d5 2b 02  mov   $022b+x,a
12ca: d5 44 03  mov   $0344+x,a
12cd: d5 80 03  mov   $0380+x,a
12d0: c5 94 03  mov   $0394,a
12d3: e8 60     mov   a,#$60
12d5: d4 28     mov   $28+x,a
12d7: e8 ff     mov   a,#$ff
12d9: d4 78     mov   $78+x,a
12db: d5 54 02  mov   $0254+x,a
12de: e8 80     mov   a,#$80
12e0: d4 29     mov   $29+x,a           ; volume #$80
12e2: e4 a3     mov   a,$a3
12e4: d5 a3 02  mov   $02a3+x,a
12e7: e5 f2 03  mov   a,$03f2
12ea: d5 7f 03  mov   $037f+x,a
12ed: 3f 06 13  call  $1306
12f0: ac f2 03  inc   $03f2
12f3: 6e a2 87  dbnz  $a2,$127d         ; repeat for each channels
12f6: 38 3f ab  and   $ab,#$3f
12f9: e4 ab     mov   a,$ab
12fb: 20        clrp
12fc: 8f 6c f2  mov   $f2,#$6c
12ff: c4 f3     mov   $f3,a             ; FLG
1301: 20        clrp
1302: 18 01 a8  or    $a8,#$01
1305: 6f        ret

1306: 6d        push  y
1307: 3f 6a 13  call  $136a
130a: 8d 01     mov   y,#$01
130c: e8 00     mov   a,#$00
130e: 3f 55 1b  call  $1b55             ; VOL(R)
1311: 8d 00     mov   y,#$00
1313: 3f 55 1b  call  $1b55             ; VOL(L)
1316: e8 00     mov   a,#$00
1318: 3f 63 18  call  $1863
131b: 3f 8e 1f  call  $1f8e
131e: 3f d0 1f  call  $1fd0
1321: 3f 70 1c  call  $1c70
1324: b0 04     bcs   $132a
1326: fd        mov   y,a
1327: 3f c5 1a  call  $1ac5
132a: ee        pop   y
132b: 6f        ret

132c: 2d        push  a
132d: cd 00     mov   x,#$00
132f: f5 b7 03  mov   a,$03b7+x
1332: f0 07     beq   $133b
1334: 3d        inc   x
1335: c8 08     cmp   x,#$08
1337: d0 f6     bne   $132f
1339: 2f 03     bra   $133e
133b: ae        pop   a
133c: 60        clrc
133d: 6f        ret

133e: ae        pop   a
133f: 80        setc
1340: 6f        ret

1341: 65 27 29  cmp   a,$2927
1344: b0 11     bcs   $1357
1346: cd 00     mov   x,#$00
1348: f5 a3 02  mov   a,$02a3+x
134b: 68 ff     cmp   a,#$ff
134d: f0 19     beq   $1368
134f: 3d        inc   x
1350: 3d        inc   x
1351: c8 10     cmp   x,#$10
1353: d0 f3     bne   $1348
1355: 2f e8     bra   $133f
1357: cd 12     mov   x,#$12
1359: f5 a3 02  mov   a,$02a3+x
135c: 68 ff     cmp   a,#$ff
135e: f0 08     beq   $1368
1360: c8 04     cmp   x,#$04
1362: f0 db     beq   $133f
1364: 1d        dec   x
1365: 1d        dec   x
1366: 2f f1     bra   $1359
1368: 60        clrc
1369: 6f        ret

136a: 3f 89 1c  call  $1c89
136d: b0 30     bcs   $139f
136f: 8d 00     mov   y,#$00
1371: f6 6c 03  mov   a,$036c+y
1374: f0 1b     beq   $1391
1376: fc        inc   y
1377: fc        inc   y
1378: ad 10     cmp   y,#$10
137a: 90 f5     bcc   $1371
137c: 8d 00     mov   y,#$00
137e: f6 6c 03  mov   a,$036c+y
1381: 28 01     and   a,#$01
1383: f0 0c     beq   $1391
1385: fc        inc   y
1386: fc        inc   y
1387: ad 10     cmp   y,#$10
1389: 90 f3     bcc   $137e
138b: e8 ff     mov   a,#$ff
138d: d5 6b 03  mov   $036b+x,a
1390: 6f        ret

1391: f6 6c 03  mov   a,$036c+y
1394: 08 01     or    a,#$01
1396: d6 6c 03  mov   $036c+y,a
1399: dd        mov   a,y
139a: 5c        lsr   a
139b: d5 6b 03  mov   $036b+x,a
139e: 6f        ret

139f: 8d 0e     mov   y,#$0e
13a1: f6 6c 03  mov   a,$036c+y
13a4: 28 02     and   a,#$02
13a6: f0 0e     beq   $13b6
13a8: ad 00     cmp   y,#$00
13aa: f0 04     beq   $13b0
13ac: dc        dec   y
13ad: dc        dec   y
13ae: 2f f1     bra   $13a1
13b0: e8 ff     mov   a,#$ff
13b2: d5 6b 03  mov   $036b+x,a
13b5: 6f        ret

13b6: f6 6c 03  mov   a,$036c+y
13b9: 08 02     or    a,#$02
13bb: d6 6c 03  mov   $036c+y,a
13be: dd        mov   a,y
13bf: 5c        lsr   a
13c0: d5 6b 03  mov   $036b+x,a
13c3: 6f        ret

13c4: 3f 89 1c  call  $1c89
13c7: 90 01     bcc   $13ca
13c9: 6f        ret

13ca: f5 6b 03  mov   a,$036b+x
13cd: 1c        asl   a
13ce: fd        mov   y,a
13cf: c4 a0     mov   $a0,a
13d1: f6 6c 03  mov   a,$036c+y
13d4: 28 02     and   a,#$02
13d6: d0 01     bne   $13d9
13d8: 6f        ret

13d9: 8d 00     mov   y,#$00
13db: f6 6c 03  mov   a,$036c+y
13de: f0 07     beq   $13e7
13e0: fc        inc   y
13e1: fc        inc   y
13e2: ad 10     cmp   y,#$10
13e4: 90 f5     bcc   $13db
13e6: 6f        ret

13e7: f6 6c 03  mov   a,$036c+y
13ea: 08 01     or    a,#$01
13ec: d6 6c 03  mov   $036c+y,a
13ef: dd        mov   a,y
13f0: 5c        lsr   a
13f1: d5 6b 03  mov   $036b+x,a
13f4: eb a0     mov   y,$a0
13f6: f6 6c 03  mov   a,$036c+y
13f9: 28 fe     and   a,#$fe
13fb: d6 6c 03  mov   $036c+y,a
13fe: 3f 02 14  call  $1402
1401: 6f        ret

1402: f5 cc 02  mov   a,$02cc+x
1405: 8d 04     mov   y,#$04
1407: 3f 55 1b  call  $1b55             ; SRCN
140a: f5 df 02  mov   a,$02df+x
140d: 8d 07     mov   y,#$07
140f: 3f 55 1b  call  $1b55             ; GAIN
1412: f5 e0 02  mov   a,$02e0+x
1415: 8d 05     mov   y,#$05
1417: 3f 55 1b  call  $1b55             ; ADSR(1)
141a: f5 f3 02  mov   a,$02f3+x
141d: 8d 06     mov   y,#$06
141f: 3f 55 1b  call  $1b55             ; ADSR(2)
1422: f5 cb 02  mov   a,$02cb+x
1425: 28 20     and   a,#$20
1427: f0 05     beq   $142e
1429: 3f 6e 1f  call  $1f6e
142c: 2f 03     bra   $1431
142e: 3f 8e 1f  call  $1f8e
1431: f5 cb 02  mov   a,$02cb+x
1434: 28 40     and   a,#$40
1436: f0 05     beq   $143d
1438: 3f b0 1f  call  $1fb0
143b: 2f 03     bra   $1440
143d: 3f d0 1f  call  $1fd0
1440: e8 01     mov   a,#$01
1442: d5 94 03  mov   $0394+x,a
1445: 6f        ret

1446: 3f 89 1c  call  $1c89
1449: b0 0f     bcs   $145a
144b: f5 6b 03  mov   a,$036b+x
144e: 1c        asl   a
144f: fd        mov   y,a
1450: f6 6c 03  mov   a,$036c+y
1453: 28 fe     and   a,#$fe
1455: d6 6c 03  mov   $036c+y,a
1458: 2f 0d     bra   $1467
145a: f5 6b 03  mov   a,$036b+x
145d: 1c        asl   a
145e: fd        mov   y,a
145f: f6 6c 03  mov   a,$036c+y
1462: 28 fd     and   a,#$fd
1464: d6 6c 03  mov   $036c+y,a
1467: e8 ff     mov   a,#$ff
1469: d5 6b 03  mov   $036b+x,a
146c: 6f        ret

146d: 20        clrp
146e: 8d 00     mov   y,#$00
1470: f6 b7 03  mov   a,$03b7+y
1473: d0 09     bne   $147e
1475: fc        inc   y
1476: ad 08     cmp   y,#$08
1478: 90 f6     bcc   $1470
147a: 38 fe a8  and   $a8,#$fe
147d: 6f        ret

147e: 18 01 a8  or    $a8,#$01
1481: 6f        ret

1482: 2d        push  a
1483: f6 c7 04  mov   a,$04c7+y
1486: 68 ff     cmp   a,#$ff
1488: ae        pop   a
1489: 6f        ret

148a: 20        clrp
148b: 8f 5c f2  mov   $f2,#$5c
148e: 8f 00 f3  mov   $f3,#$00          ; KOF
1491: 20        clrp
1492: e4 a8     mov   a,$a8
1494: 28 01     and   a,#$01
1496: d0 01     bne   $1499
1498: 6f        ret

1499: 3f 0d 20  call  $200d
149c: cd 00     mov   x,#$00
149e: f5 b7 03  mov   a,$03b7+x         ; tempo
14a1: 68 00     cmp   a,#$00
14a3: f0 55     beq   $14fa             ; if 0, halt
14a5: 60        clrc
14a6: 95 bf 03  adc   a,$03bf+x         ; add tempo to counter
14a9: d5 bf 03  mov   $03bf+x,a
14ac: b0 04     bcs   $14b2
14ae: 68 fb     cmp   a,#$fb
14b0: 90 48     bcc   $14fa             ; tick if the result is over 251
14b2: 80        setc                    ; then clip the counter between 1 and 250
14b3: a8 fa     sbc   a,#$fa            ; timer0 5ms * quarter 48 tick * 250 = 60000000
14b5: d5 bf 03  mov   $03bf+x,a         ; thus the tempo value means bpm actually
14b8: 3f ad 1e  call  $1ead
14bb: 7d        mov   a,x
14bc: 8d 00     mov   y,#$00
14be: cd 00     mov   x,#$00
14c0: 75 a3 02  cmp   a,$02a3+x
14c3: d0 15     bne   $14da
14c5: 2d        push  a
14c6: cb a0     mov   $a0,y
14c8: f5 7f 03  mov   a,$037f+x
14cb: 64 a0     cmp   a,$a0
14cd: d0 0a     bne   $14d9
14cf: 4d        push  x
14d0: 6d        push  y
14d1: 3f 40 15  call  $1540
14d4: 3f 17 16  call  $1617
14d7: ee        pop   y
14d8: ce        pop   x
14d9: ae        pop   a
14da: 3d        inc   x
14db: 3d        inc   x
14dc: c8 14     cmp   x,#$14
14de: 90 e0     bcc   $14c0
14e0: fc        inc   y
14e1: ad 08     cmp   y,#$08
14e3: 90 d9     bcc   $14be
14e5: 5d        mov   x,a
14e6: e8 fd     mov   a,#$fd
14e8: 35 d7 03  and   a,$03d7+x
14eb: d5 d7 03  mov   $03d7+x,a
14ee: f5 e7 03  mov   a,$03e7+x
14f1: 28 80     and   a,#$80
14f3: f0 05     beq   $14fa
14f5: e8 00     mov   a,#$00
14f7: d5 e7 03  mov   $03e7+x,a
14fa: 3d        inc   x
14fb: c8 08     cmp   x,#$08
14fd: d0 9f     bne   $149e
14ff: 20        clrp
1500: 8f 4c f2  mov   $f2,#$4c
1503: 8f 00 f3  mov   $f3,#$00          ; KON
1506: 20        clrp
1507: 6f        ret

1508: 20        clrp
1509: 8f 4c f2  mov   $f2,#$4c
150c: 8f 00 f3  mov   $f3,#$00          ; KON
150f: 20        clrp
1510: cd 00     mov   x,#$00
1512: f5 b7 03  mov   a,$03b7+x
1515: 68 00     cmp   a,#$00
1517: f0 20     beq   $1539
1519: 60        clrc
151a: 95 bf 03  adc   a,$03bf+x
151d: b0 04     bcs   $1523
151f: 68 fb     cmp   a,#$fb
1521: 90 16     bcc   $1539
1523: 7d        mov   a,x
1524: cd 00     mov   x,#$00
1526: 75 a3 02  cmp   a,$02a3+x
1529: d0 07     bne   $1532
152b: 2d        push  a
152c: 4d        push  x
152d: 3f 17 16  call  $1617
1530: ce        pop   x
1531: ae        pop   a
1532: 3d        inc   x
1533: 3d        inc   x
1534: c8 14     cmp   x,#$14
1536: d0 ee     bne   $1526
1538: 5d        mov   x,a
1539: 3d        inc   x
153a: c8 08     cmp   x,#$08
153c: d0 d4     bne   $1512
153e: 20        clrp
153f: 6f        ret

1540: 3f 36 1f  call  $1f36
1543: 3f cf 1c  call  $1ccf
1546: 3f 99 1d  call  $1d99
1549: 3f ec 1d  call  $1dec
154c: 3f 3d 1e  call  $1e3d
154f: f4 15     mov   a,$15+x
1551: f0 0a     beq   $155d
1553: bc        inc   a
1554: f0 07     beq   $155d
1556: 9b 15     dec   $15+x
1558: d0 03     bne   $155d
155a: 3f b1 1a  call  $1ab1
155d: 9b 14     dec   $14+x
155f: d0 03     bne   $1564
1561: 3f 80 15  call  $1580
1564: f5 94 03  mov   a,$0394+x
1567: d0 0e     bne   $1577
1569: f5 a3 02  mov   a,$02a3+x
156c: fd        mov   y,a
156d: bc        inc   a
156e: f0 0f     beq   $157f
1570: f6 d7 03  mov   a,$03d7+y
1573: 28 02     and   a,#$02
1575: f0 08     beq   $157f
1577: 3f d0 1a  call  $1ad0
157a: e8 00     mov   a,#$00
157c: d5 94 03  mov   $0394+x,a
157f: 6f        ret

1580: f5 a3 02  mov   a,$02a3+x
1583: 68 ff     cmp   a,#$ff
1585: d0 01     bne   $1588
1587: 6f        ret

1588: 3f c4 13  call  $13c4
158b: 3f 96 1c  call  $1c96
158e: 3f ef 19  call  $19ef             ; read vcmd byte
1591: 68 a0     cmp   a,#$a0
1593: b0 5b     bcs   $15f0             ; vcmds A0-FF
1595: 68 50     cmp   a,#$50
1597: 90 0d     bcc   $15a6             ; vcmds 00-4F
; vcmds 50-9F - note (with its length)
1599: 2d        push  a
159a: 3f ef 19  call  $19ef
159d: d5 03 02  mov   $0203+x,a
15a0: d4 14     mov   $14+x,a
15a2: ae        pop   a
15a3: 80        setc
15a4: a8 50     sbc   a,#$50
; vcmds 00-4F,50-9F
15a6: 68 00     cmp   a,#$00
15a8: d0 10     bne   $15ba
; vcmds 00,40 - rest
15aa: 3f 70 1c  call  $1c70
15ad: b0 01     bcs   $15b0
15af: fd        mov   y,a
15b0: f5 03 02  mov   a,$0203+x
15b3: d4 14     mov   $14+x,a
15b5: e8 00     mov   a,#$00
15b7: d4 15     mov   $15+x,a
15b9: 6f        ret
; vcmds 01-4F,51-9F - note
15ba: 68 4f     cmp   a,#$4f
15bc: f0 07     beq   $15c5             ; vcmds 4F,9F - tie
15be: 60        clrc
15bf: 95 a4 02  adc   a,$02a4+x
15c2: 3f 6d 1b  call  $1b6d
15c5: f4 15     mov   a,$15+x
15c7: 68 ff     cmp   a,#$ff
15c9: f0 03     beq   $15ce
15cb: 3f 8a 1a  call  $1a8a
15ce: f5 03 02  mov   a,$0203+x
15d1: d4 14     mov   $14+x,a
15d3: f5 04 02  mov   a,$0204+x
15d6: d0 06     bne   $15de
15d8: e8 ff     mov   a,#$ff
15da: d4 15     mov   $15+x,a
15dc: 2f 11     bra   $15ef
15de: 68 fe     cmp   a,#$fe
15e0: d0 05     bne   $15e7
15e2: f4 14     mov   a,$14+x
15e4: 9c        dec   a
15e5: 2f 06     bra   $15ed
15e7: fb 14     mov   y,$14+x
15e9: 3f 7b 1a  call  $1a7b             ; y *= (a + 1) / 256;
15ec: dd        mov   a,y
15ed: d4 15     mov   $15+x,a
15ef: 6f        ret

; vcmds A0-FF
15f0: 68 b6     cmp   a,#$b6
15f2: b0 03     bcs   $15f7
15f4: 5f f5 17  jmp   $17f5
; vcmds B6-FF
15f7: 68 ff     cmp   a,#$ff
15f9: f0 64     beq   $165f
15fb: 80        setc
15fc: a8 db     sbc   a,#$db
15fe: 90 13     bcc   $1613
; vcmds DB-FE
1600: 4d        push  x
1601: 1c        asl   a
1602: 5d        mov   x,a
1603: f5 c2 07  mov   a,$07c2+x
1606: c5 11 16  mov   $1610+1,a
1609: f5 c3 07  mov   a,$07c3+x
160c: c5 12 16  mov   $1610+2,a         ; overwrite call addr
160f: ce        pop   x
1610: 3f 00 00  call  $0000             ; do vcmd
; vcmds B6-DA - reserved
1613: 5f 8e 15  jmp   $158e

1616: 6f        ret

1617: f4 15     mov   a,$15+x
1619: 68 ff     cmp   a,#$ff
161b: f0 41     beq   $165e
161d: f4 14     mov   a,$14+x
161f: 9c        dec   a
1620: d0 3c     bne   $165e
1622: f5 cb 02  mov   a,$02cb+x
1625: 28 20     and   a,#$20
1627: d0 35     bne   $165e
1629: f4 00     mov   a,$00+x
162b: fb 01     mov   y,$01+x
162d: da a0     movw  $a0,ya
162f: 8d 00     mov   y,#$00
1631: 2f 02     bra   $1635
1633: fc        inc   y
1634: fc        inc   y
1635: f7 a0     mov   a,($a0)+y
1637: 68 a0     cmp   a,#$a0
1639: 90 18     bcc   $1653
163b: 68 b6     cmp   a,#$b6
163d: 90 f5     bcc   $1634
163f: 68 ec     cmp   a,#$ec
1641: f0 f0     beq   $1633
1643: 68 f6     cmp   a,#$f6
1645: f0 ec     beq   $1633
1647: 68 eb     cmp   a,#$eb
1649: f0 e8     beq   $1633
164b: 68 f2     cmp   a,#$f2
164d: f0 e5     beq   $1634
164f: 68 f3     cmp   a,#$f3
1651: f0 e1     beq   $1634
1653: 68 00     cmp   a,#$00
1655: f0 07     beq   $165e
1657: 68 50     cmp   a,#$50
1659: f0 03     beq   $165e
165b: 3f ba 1a  call  $1aba
165e: 6f        ret

; vcmd FF - end of track
165f: f5 40 02  mov   a,$0240+x
1662: f0 03     beq   $1667
1664: 5f a2 19  jmp   $19a2
1667: 3f 8e 1f  call  $1f8e
166a: 3f d0 1f  call  $1fd0
166d: 8d 01     mov   y,#$01
166f: e8 00     mov   a,#$00
1671: 3f 55 1b  call  $1b55             ; VOL(R)
1674: 8d 00     mov   y,#$00
1676: e8 00     mov   a,#$00
1678: 3f 55 1b  call  $1b55             ; VOL(L)
167b: e8 ff     mov   a,#$ff
167d: c5 f2 03  mov   $03f2,a
1680: 3f 3a 1a  call  $1a3a
1683: b0 03     bcs   $1688
1685: cc f2 03  mov   $03f2,y
1688: f5 a3 02  mov   a,$02a3+x
168b: 2d        push  a
168c: 3f ba 1a  call  $1aba
168f: 3f 46 14  call  $1446
1692: e8 ff     mov   a,#$ff
1694: d5 a3 02  mov   $02a3+x,a
1697: e8 01     mov   a,#$01
1699: d4 14     mov   $14+x,a
169b: d5 03 02  mov   $0203+x,a
169e: ae        pop   a
169f: 8d 00     mov   y,#$00
16a1: 76 a3 02  cmp   a,$02a3+y
16a4: f0 30     beq   $16d6
16a6: fc        inc   y
16a7: fc        inc   y
16a8: ad 14     cmp   y,#$14
16aa: d0 f5     bne   $16a1
16ac: fd        mov   y,a
16ad: e8 00     mov   a,#$00
16af: d6 b7 03  mov   $03b7+y,a
16b2: f6 af 03  mov   a,$03af+y
16b5: 65 27 29  cmp   a,$2927
16b8: b0 09     bcs   $16c3
16ba: 2d        push  a
16bb: e8 ff     mov   a,#$ff
16bd: c5 f9 03  mov   $03f9,a
16c0: ae        pop   a
16c1: 2f 05     bra   $16c8
16c3: 2d        push  a
16c4: 3f 21 0f  call  $0f21
16c7: ae        pop   a
16c8: fd        mov   y,a
16c9: 4d        push  x
16ca: 6d        push  y
16cb: 3f 63 27  call  $2763
16ce: ee        pop   y
16cf: 3f c6 26  call  $26c6
16d2: 3f 6d 14  call  $146d
16d5: ce        pop   x
16d6: e5 f2 03  mov   a,$03f2
16d9: 68 ff     cmp   a,#$ff
16db: f0 06     beq   $16e3
16dd: 4d        push  x
16de: 5d        mov   x,a
16df: 3f 02 14  call  $1402
16e2: ce        pop   x
16e3: 6f        ret

; vcmd E1
16e4: f5 a3 02  mov   a,$02a3+x
16e7: fd        mov   y,a
16e8: f6 df 03  mov   a,$03df+y
16eb: bc        inc   a
16ec: 28 7f     and   a,#$7f
16ee: d6 df 03  mov   $03df+y,a
16f1: 6f        ret

; vcmd E0 - CPU related? conditional jump
16f2: 3f ef 19  call  $19ef
16f5: c4 a0     mov   $a0,a
16f7: 3f ef 19  call  $19ef
16fa: c4 a1     mov   $a1,a             ; set arg1/2 to $A0/1
16fc: f5 a3 02  mov   a,$02a3+x
16ff: fd        mov   y,a
1700: f6 e7 03  mov   a,$03e7+y
1703: 28 7f     and   a,#$7f
1705: c4 a2     mov   $a2,a
1707: 3f ef 19  call  $19ef
170a: 64 a2     cmp   a,$a2
170c: d0 0b     bne   $1719             ; jump if $03E7+Y == arg3
170e: f4 00     mov   a,$00+x
1710: fb 01     mov   y,$01+x
1712: 60        clrc
1713: 7a a0     addw  ya,$a0            ; relative jump
1715: d4 00     mov   $00+x,a
1717: db 01     mov   $01+x,y
;
1719: f5 a3 02  mov   a,$02a3+x
171c: fd        mov   y,a
171d: e4 a2     mov   a,$a2
171f: 08 80     or    a,#$80
1721: d6 e7 03  mov   $03e7+y,a         ; $03E7+Y |= #$80
1724: 6f        ret

; vcmd DF
1725: 3f ef 19  call  $19ef
1728: d5 80 03  mov   $0380+x,a
172b: e8 01     mov   a,#$01
172d: d5 94 03  mov   $0394+x,a
1730: 6f        ret

; vcmd E2 - set vibrato/tune parameters
1731: 3f ef 19  call  $19ef
1734: 68 ff     cmp   a,#$ff
1736: f0 01     beq   $1739             ; #$FF = disable
1738: 1c        asl   a
1739: d4 78     mov   $78+x,a
173b: e8 00     mov   a,#$00
173d: d4 8d     mov   $8d+x,a
173f: bc        inc   a
1740: d4 8c     mov   $8c+x,a
1742: bc        inc   a
1743: d4 79     mov   $79+x,a
1745: 6f        ret

; vcmd E3
1746: 3f 6e 1f  call  $1f6e
1749: 6f        ret

; vcmd E4
174a: 3f 8e 1f  call  $1f8e
174d: 6f        ret

; vcmd E5
174e: f5 a3 02  mov   a,$02a3+x
1751: fd        mov   y,a
1752: 3f ef 19  call  $19ef
1755: d6 c7 03  mov   $03c7+y,a
1758: e8 80     mov   a,#$80
175a: d6 cf 03  mov   $03cf+y,a
175d: 6f        ret

; vcmd E6 - volume fade
175e: 3f ef 19  call  $19ef
1761: d5 43 03  mov   $0343+x,a         ; $0343+X = arg1 (target)
1764: 3f ef 19  call  $19ef
1767: d5 44 03  mov   $0344+x,a         ; $0344+X = arg2 (step)
176a: e8 80     mov   a,#$80
176c: d5 57 03  mov   $0357+x,a
176f: 6f        ret

; vcmd E7
1770: 3f ef 19  call  $19ef
1773: d5 53 02  mov   $0253+x,a
1776: 68 80     cmp   a,#$80
1778: b0 04     bcs   $177e
177a: e8 00     mov   a,#$00
177c: 2f 02     bra   $1780
177e: e8 ff     mov   a,#$ff
1780: d5 54 02  mov   $0254+x,a
1783: e8 80     mov   a,#$80
1785: d5 2f 03  mov   $032f+x,a
1788: 6f        ret

; vcmd E8 - pan fade
1789: f5 cb 02  mov   a,$02cb+x
178c: 28 f7     and   a,#$f7
178e: d5 cb 02  mov   $02cb+x,a
1791: 3f ef 19  call  $19ef             ; arg1 (target)
1794: 80        setc
1795: b4 3c     sbc   a,$3c+x
1797: 10 04     bpl   $179d
1799: 70 11     bvs   $17ac
179b: 2f 02     bra   $179f
179d: 50 0d     bvc   $17ac
179f: 48 ff     eor   a,#$ff
17a1: bc        inc   a
17a2: 2d        push  a
17a3: f5 cb 02  mov   a,$02cb+x
17a6: 08 08     or    a,#$08
17a8: d5 cb 02  mov   $02cb+x,a
17ab: ae        pop   a
17ac: fd        mov   y,a
17ad: 3f ef 19  call  $19ef
17b0: d5 08 03  mov   $0308+x,a         ; $0308+X = arg2 (step)
17b3: 4d        push  x
17b4: 5d        mov   x,a
17b5: dd        mov   a,y
17b6: 8d 00     mov   y,#$00
17b8: 9e        div   ya,x
17b9: ce        pop   x
17ba: d5 1c 03  mov   $031c+x,a
17bd: dd        mov   a,y
17be: d5 1b 03  mov   $031b+x,a
17c1: e8 80     mov   a,#$80
17c3: d5 2f 03  mov   $032f+x,a
17c6: 6f        ret

; vcmd E9
17c7: 3f ef 19  call  $19ef
17ca: d4 8d     mov   $8d+x,a
17cc: 6f        ret

; vcmd EA - jump
17cd: 3f ef 19  call  $19ef
17d0: c4 a0     mov   $a0,a
17d2: 3f ef 19  call  $19ef
17d5: c4 a1     mov   $a1,a             ; set arg1/2 to $A0/1
17d7: f4 00     mov   a,$00+x
17d9: fb 01     mov   y,$01+x
17db: 60        clrc
17dc: 7a a0     addw  ya,$a0            ; relative jump
17de: d4 00     mov   $00+x,a
17e0: db 01     mov   $01+x,y
17e2: 6f        ret

; vcmd EB - tempo
17e3: f5 a3 02  mov   a,$02a3+x
17e6: fd        mov   y,a
17e7: 3f ef 19  call  $19ef
17ea: d6 b7 03  mov   $03b7+y,a
17ed: 6f        ret

; vcmd EC - set duration rate directly
17ee: 3f ef 19  call  $19ef
17f1: d5 04 02  mov   $0204+x,a
17f4: 6f        ret

; vcmds A0-B5 - set duration rate from table
17f5: fd        mov   y,a
17f6: f6 5f 17  mov   a,$175f+y         ; $17FF+(Y-#$A0)
17f9: d5 04 02  mov   $0204+x,a
17fc: 5f 8e 15  jmp   $158e

; duration rate lookup table
17ff: db $0d,$1a,$26,$33,$40,$4d,$5a,$66
1807: db $73,$80,$8c,$99,$a6,$b3,$bf,$cc
180f: db $d9,$e6,$f2,$fe,$ff,$00

; vcmd ED - set channel master volume
1815: 3f ef 19  call  $19ef
1818: d4 28     mov   $28+x,a
181a: e8 01     mov   a,#$01
181c: d5 94 03  mov   $0394+x,a
181f: 6f        ret

; vcmd EE - set panpot
1820: 3f ef 19  call  $19ef
1823: d4 3c     mov   $3c+x,a
1825: e8 01     mov   a,#$01
1827: d5 94 03  mov   $0394+x,a
182a: 6f        ret

; vcmd EF - set ADSR1/2 param from args
182b: 3f ef 19  call  $19ef
182e: d5 e0 02  mov   $02e0+x,a
1831: 8d 05     mov   y,#$05
1833: 3f 55 1b  call  $1b55             ; ADSR(1)
1836: 3f ef 19  call  $19ef
1839: d5 f3 02  mov   $02f3+x,a
183c: 8d 06     mov   y,#$06
183e: 3f 55 1b  call  $1b55             ; ADSR(2)
1841: 28 e0     and   a,#$e0
1843: 08 19     or    a,#$19
1845: d5 93 03  mov   $0393+x,a
1848: 6f        ret

; vcmd DE - set ADSR and release rate
1849: 3f 2b 18  call  $182b             ; arg1/2 = ADSR1/2 param
; vcmd DD - set release rate
184c: f5 93 03  mov   a,$0393+x
184f: 28 e0     and   a,#$e0
1851: c5 a0 00  mov   $00a0,a
1854: 3f ef 19  call  $19ef             ; arg1 = release rate
1857: 28 1f     and   a,#$1f            ; sustain rate = 5 bit
1859: 05 a0 00  or    a,$00a0
185c: d5 93 03  mov   $0393+x,a
185f: 6f        ret

; vcmd F0 - set patch
1860: 3f ef 19  call  $19ef             ; arg1 (patch number)
1863: 2d        push  a
1864: f5 a3 02  mov   a,$02a3+x
1867: fd        mov   y,a
1868: f6 af 03  mov   a,$03af+y
186b: fd        mov   y,a
186c: 4d        push  x
186d: e5 25 29  mov   a,$2925
1870: c4 a4     mov   $a4,a
1872: e5 26 29  mov   a,$2926
1875: c4 a5     mov   $a5,a
1877: cd 00     mov   x,#$00
1879: ad 00     cmp   y,#$00
187b: f0 0f     beq   $188c
187d: e7 a4     mov   a,($a4+x)
187f: bc        inc   a
1880: bc        inc   a
1881: 6d        push  y
1882: 8d 00     mov   y,#$00
1884: 7a a4     addw  ya,$a4
1886: da a4     movw  $a4,ya
1888: ee        pop   y
1889: dc        dec   y
188a: 2f ed     bra   $1879
188c: ce        pop   x
188d: ae        pop   a
188e: bc        inc   a
188f: bc        inc   a
1890: fd        mov   y,a
1891: f7 a4     mov   a,($a4)+y
1893: 65 90 01  cmp   a,$0190
1896: f0 08     beq   $18a0
1898: fd        mov   y,a
1899: f6 ff 03  mov   a,$03ff+y
189c: 68 ff     cmp   a,#$ff
189e: d0 15     bne   $18b5
;
18a0: f5 cb 02  mov   a,$02cb+x
18a3: 08 80     or    a,#$80
18a5: d5 cb 02  mov   $02cb+x,a
18a8: 3f d0 1a  call  $1ad0
18ab: 3f 70 1c  call  $1c70
18ae: b0 04     bcs   $18b4
18b0: fd        mov   y,a
18b1: 3f c5 1a  call  $1ac5
18b4: 6f        ret

; read sample info table (A=SRCN)
18b5: d5 cc 02  mov   $02cc+x,a
18b8: 8d 04     mov   y,#$04
18ba: 3f 55 1b  call  $1b55             ; SRCN
18bd: 8d 08     mov   y,#$08
18bf: cf        mul   ya
18c0: 8f 35 a4  mov   $a4,#$35
18c3: 8f 05 a5  mov   $a5,#$05
18c6: 7a a4     addw  ya,$a4
18c8: da a4     movw  $a4,ya
18ca: 8d 02     mov   y,#$02
18cc: f7 a4     mov   a,($a4)+y
18ce: d5 e0 02  mov   $02e0+x,a
18d1: 8d 05     mov   y,#$05
18d3: 3f 55 1b  call  $1b55             ; ADSR(1)
18d6: 8d 03     mov   y,#$03
18d8: f7 a4     mov   a,($a4)+y
18da: d5 f3 02  mov   $02f3+x,a
18dd: 8d 06     mov   y,#$06
18df: 3f 55 1b  call  $1b55             ; ADSR(2)
18e2: 28 e0     and   a,#$e0
18e4: 08 19     or    a,#$19
18e6: d5 93 03  mov   $0393+x,a
18e9: 8d 04     mov   y,#$04
18eb: f7 a4     mov   a,($a4)+y
18ed: d5 df 02  mov   $02df+x,a
18f0: 8d 07     mov   y,#$07
18f2: 3f 55 1b  call  $1b55             ; GAIN
18f5: 8d 05     mov   y,#$05
18f7: f7 a4     mov   a,($a4)+y
18f9: d5 b8 02  mov   $02b8+x,a
18fc: 8d 06     mov   y,#$06
18fe: f7 a4     mov   a,($a4)+y
1900: d5 b7 02  mov   $02b7+x,a
1903: f5 cb 02  mov   a,$02cb+x
1906: 28 7f     and   a,#$7f
1908: d5 cb 02  mov   $02cb+x,a
190b: e8 01     mov   a,#$01
190d: d5 94 03  mov   $0394+x,a
1910: 6f        ret

; vcmds F1,F2 - duration copy on
1911: f5 cb 02  mov   a,$02cb+x
1914: 08 01     or    a,#$01
1916: d5 cb 02  mov   $02cb+x,a
1919: 5f 96 1c  jmp   $1c96

; vcmd F3 - duration copy off
191c: f5 cb 02  mov   a,$02cb+x
191f: 28 fe     and   a,#$fe
1921: d5 cb 02  mov   $02cb+x,a
1924: 6f        ret

; vcmd DB - flag repeat (alternative)
1925: f5 2b 02  mov   a,$022b+x
1928: 2f 19     bra   $1943             ; jump if it's non zero

; vcmd DC - repeat once more (alternative)
192a: f5 2b 02  mov   a,$022b+x
192d: d0 02     bne   $1931
192f: e8 02     mov   a,#$02            ; repeat twice
1931: 9c        dec   a
1932: d5 2b 02  mov   $022b+x,a
1935: 2f 0c     bra   $1943

; vcmd F4 - repeat once more
1937: 8d 02     mov   y,#$02
; conditional loop
1939: f5 17 02  mov   a,$0217+x
193c: d0 01     bne   $193f
193e: dd        mov   a,y
193f: 9c        dec   a                 ; dec repeat count
1940: d5 17 02  mov   $0217+x,a
1943: d0 06     bne   $194b             ; done?
1945: 3f ef 19  call  $19ef
1948: 5f ef 19  jmp   $19ef             ; just ignore arg1/2
194b: 5f cd 17  jmp   $17cd             ; relative jump

; vcmd F5 - conditional loop
194e: 3f ef 19  call  $19ef             ; repeat count
1951: fd        mov   y,a
1952: 2f e5     bra   $1939

; vcmd F6 - set volume
1954: 3f ef 19  call  $19ef
1957: d4 29     mov   $29+x,a
1959: e8 01     mov   a,#$01
195b: d5 94 03  mov   $0394+x,a
195e: 6f        ret

; vcmd F7 - nop
195f: 6f        ret

; vcmd F8 - call subroutine
1960: 3f ef 19  call  $19ef
1963: c4 a0     mov   $a0,a
1965: 3f ef 19  call  $19ef
1968: c4 a1     mov   $a1,a
196a: f5 40 02  mov   a,$0240+x
196d: 68 06     cmp   a,#$06
196f: b0 1d     bcs   $198e             ; allows triple nest in max
1971: 2d        push  a
1972: 3f 8f 19  call  $198f             ; set where to write in $A2/3
1975: ee        pop   y
1976: f4 00     mov   a,$00+x
1978: d7 a2     mov   ($a2)+y,a
197a: fc        inc   y
197b: f4 01     mov   a,$01+x
197d: d7 a2     mov   ($a2)+y,a         ; put reading ptr ($00/1)
197f: fc        inc   y
1980: dd        mov   a,y
1981: d5 40 02  mov   $0240+x,a         ; increment stack ptr
1984: fb 01     mov   y,$01+x
1986: f4 00     mov   a,$00+x
1988: 7a a0     addw  ya,$a0
198a: d4 00     mov   $00+x,a
198c: db 01     mov   $01+x,y           ; update reading ptr to $00/1 + arg1/2
198e: 6f        ret
; calc where to put reading ptr
198f: e8 67     mov   a,#$67
1991: c4 a2     mov   $a2,a
1993: e8 02     mov   a,#$02
1995: c4 a3     mov   $a3,a
1997: 7d        mov   a,x
1998: 8d 03     mov   y,#$03
199a: cf        mul   ya
199b: 8d 00     mov   y,#$00
199d: 7a a2     addw  ya,$a2
199f: da a2     movw  $a2,ya            ; $A2 = X*3 + #$0267
19a1: 6f        ret

; vcmd F9 - return from subroutine
19a2: f5 40 02  mov   a,$0240+x
19a5: f0 13     beq   $19ba             ; nothing has been called, do nothing
19a7: 2d        push  a
19a8: 3f 8f 19  call  $198f             ; set where to read in $A2/3
19ab: ee        pop   y
19ac: dc        dec   y
19ad: f7 a2     mov   a,($a2)+y
19af: d4 01     mov   $01+x,a
19b1: dc        dec   y
19b2: f7 a2     mov   a,($a2)+y
19b4: d4 00     mov   $00+x,a           ; restore reading ptr
19b6: dd        mov   a,y
19b7: d5 40 02  mov   $0240+x,a         ; decrement stack ptr
19ba: 6f        ret

; vcmd FA - key shift (transpose)
19bb: 3f ef 19  call  $19ef             ; arg1 = key (signed)
19be: d5 a4 02  mov   $02a4+x,a
19c1: 6f        ret

; vcmd FB - pitch slide
19c2: 3f ef 19  call  $19ef             ; arg1 = key (signed)
19c5: 68 00     cmp   a,#$00
19c7: 10 05     bpl   $19ce
19c9: 48 ff     eor   a,#$ff
19cb: bc        inc   a
19cc: 08 80     or    a,#$80
19ce: d5 07 03  mov   $0307+x,a
19d1: 3f ef 19  call  $19ef             ; arg2 (step)
19d4: d5 f4 02  mov   $02f4+x,a
19d7: 5c        lsr   a
19d8: d5 58 03  mov   $0358+x,a
19db: 6f        ret

; vcmd FC
19dc: 3f b0 1f  call  $1fb0
19df: 6f        ret

; vcmd FD
19e0: 3f d0 1f  call  $1fd0
19e3: 6f        ret

; vcmd FE
19e4: f5 a3 02  mov   a,$02a3+x
19e7: fd        mov   y,a
19e8: 3f ef 19  call  $19ef
19eb: 3f 7d 20  call  $207d
19ee: 6f        ret

; read next arg
19ef: e7 00     mov   a,($00+x)
19f1: bb 00     inc   $00+x
19f3: d0 02     bne   $19f7
19f5: bb 01     inc   $01+x
19f7: 6f        ret

19f8: 20        clrp
19f9: e4 a9     mov   a,$a9
19fb: f0 0f     beq   $1a0c
19fd: 8b a9     dec   $a9
19ff: d0 0b     bne   $1a0c
1a01: 38 df ab  and   $ab,#$df
1a04: e4 ab     mov   a,$ab
1a06: 20        clrp
1a07: 8f 6c f2  mov   $f2,#$6c
1a0a: c4 f3     mov   $f3,a             ; FLG
1a0c: 20        clrp
1a0d: e4 aa     mov   a,$aa
1a0f: f0 27     beq   $1a38
1a11: 8b aa     dec   $aa
1a13: d0 23     bne   $1a38
1a15: 20        clrp
1a16: 8f 2c f2  mov   $f2,#$2c
1a19: e5 ad 00  mov   a,$00ad
1a1c: c4 f3     mov   $f3,a             ; EVOL(L)
1a1e: 8f 3c f2  mov   $f2,#$3c
1a21: e5 ef 03  mov   a,$03ef
1a24: f0 05     beq   $1a2b
1a26: e5 ac 00  mov   a,$00ac
1a29: 2f 03     bra   $1a2e
1a2b: e5 ad 00  mov   a,$00ad
1a2e: c4 f3     mov   $f3,a             ; EVOL(R)
1a30: 8f 0d f2  mov   $f2,#$0d
1a33: e5 b0 00  mov   a,$00b0
1a36: c4 f3     mov   $f3,a             ; EFB
1a38: 20        clrp
1a39: 6f        ret

1a3a: 3f 89 1c  call  $1c89
1a3d: b0 02     bcs   $1a41
1a3f: 80        setc
1a40: 6f        ret

1a41: 7d        mov   a,x
1a42: c5 f3 03  mov   $03f3,a
1a45: 8d 00     mov   y,#$00
1a47: dd        mov   a,y
1a48: 65 f3 03  cmp   a,$03f3
1a4b: f0 08     beq   $1a55
1a4d: f6 6b 03  mov   a,$036b+y
1a50: 75 6b 03  cmp   a,$036b+x
1a53: f0 08     beq   $1a5d
1a55: fc        inc   y
1a56: fc        inc   y
1a57: ad 14     cmp   y,#$14
1a59: 90 ec     bcc   $1a47
1a5b: 80        setc
1a5c: 6f        ret

1a5d: 60        clrc
1a5e: 6f        ret

1a5f: 65 27 29  cmp   a,$2927
1a62: b0 13     bcs   $1a77
1a64: cd 00     mov   x,#$00
1a66: 2d        push  a
1a67: f5 b7 03  mov   a,$03b7+x
1a6a: ae        pop   a
1a6b: f0 05     beq   $1a72
1a6d: 75 af 03  cmp   a,$03af+x
1a70: f0 07     beq   $1a79
1a72: 3d        inc   x
1a73: c8 08     cmp   x,#$08
1a75: 90 ef     bcc   $1a66
1a77: 60        clrc
1a78: 6f        ret

1a79: 80        setc
1a7a: 6f        ret

; multiply Y by (A+1)/256 with exceptions
1a7b: bc        inc   a
1a7c: f0 0b     beq   $1a89             ; A=255 : simply returns Y
1a7e: 68 81     cmp   a,#$81
1a80: b0 01     bcs   $1a83
1a82: 9c        dec   a                 ; 128<=A<=255 : A++
1a83: cf        mul   ya
1a84: 68 00     cmp   a,#$00
1a86: 10 01     bpl   $1a89
1a88: fc        inc   y                 ; round up
1a89: 6f        ret

1a8a: f5 cb 02  mov   a,$02cb+x
1a8d: 28 80     and   a,#$80
1a8f: f0 01     beq   $1a92
1a91: 6f        ret

1a92: 8d 06     mov   y,#$06
1a94: f5 f3 02  mov   a,$02f3+x
1a97: 3f 55 1b  call  $1b55             ; ADSR(2)
1a9a: 2f 00     bra   $1a9c
1a9c: 3f 70 1c  call  $1c70
1a9f: b0 0b     bcs   $1aac
1aa1: fd        mov   y,a
1aa2: f6 0a 08  mov   a,$080a+y
1aa5: 20        clrp
1aa6: 8f 4c f2  mov   $f2,#$4c
1aa9: c4 f3     mov   $f3,a             ; KON
1aab: 20        clrp
1aac: e8 02     mov   a,#$02
1aae: d4 79     mov   $79+x,a
1ab0: 6f        ret

1ab1: f5 93 03  mov   a,$0393+x
1ab4: 8d 06     mov   y,#$06
1ab6: 3f 55 1b  call  $1b55             ; ADSR(2)
1ab9: 6f        ret

1aba: 3f 70 1c  call  $1c70
1abd: b0 04     bcs   $1ac3
1abf: fd        mov   y,a
1ac0: 3f c5 1a  call  $1ac5
1ac3: 6f        ret

1ac4: 6f        ret

1ac5: f6 0a 08  mov   a,$080a+y
1ac8: 20        clrp
1ac9: 8f 5c f2  mov   $f2,#$5c
1acc: c4 f3     mov   $f3,a             ; KOF
1ace: 20        clrp
1acf: 6f        ret

; calculate final volume
1ad0: f5 cb 02  mov   a,$02cb+x
1ad3: 28 80     and   a,#$80
1ad5: f0 0a     beq   $1ae1
1ad7: e8 00     mov   a,#$00
1ad9: c5 f2 03  mov   $03f2,a
1adc: c5 f3 03  mov   $03f3,a
1adf: 2f 63     bra   $1b44
1ae1: fb 28     mov   y,$28+x           ; channel master volume
1ae3: f4 29     mov   a,$29+x           ; channel volume
1ae5: 3f 7b 1a  call  $1a7b             ; y *= (a + 1) / 256;
1ae8: f5 54 02  mov   a,$0254+x
1aeb: 3f 7b 1a  call  $1a7b             ; y *= (a + 1) / 256;
1aee: f5 a3 02  mov   a,$02a3+x
1af1: 4d        push  x
1af2: 5d        mov   x,a
1af3: f5 a7 03  mov   a,$03a7+x
1af6: ce        pop   x
1af7: 3f 7b 1a  call  $1a7b             ; y *= (a + 1) / 256;
1afa: cc f2 03  mov   $03f2,y
1afd: cc f3 03  mov   $03f3,y           ; set L/R volume
1b00: e5 ef 03  mov   a,$03ef
1b03: f0 3f     beq   $1b44
1b05: f4 3c     mov   a,$3c+x           ; panpot (signed)
1b07: f0 1b     beq   $1b24             ; skip if center
1b09: 4d        push  x
1b0a: cd 01     mov   x,#$01            ; target = right volume
1b0c: 68 00     cmp   a,#$00
1b0e: 10 08     bpl   $1b18
; panpot < 0
1b10: 1d        dec   x                 ; target = left volume
1b11: 48 ff     eor   a,#$ff
1b13: bc        inc   a
1b14: 10 02     bpl   $1b18
1b16: e8 7f     mov   a,#$7f            ; a = max(127, abs(a))
; calculate volume balance
1b18: 1c        asl   a
1b19: 48 ff     eor   a,#$ff
1b1b: 9c        dec   a                 ; a = 255 - (a * 2 + 1)
1b1c: 3f 7b 1a  call  $1a7b             ; y *= (a + 1) / 256;
1b1f: dd        mov   a,y
1b20: d5 f2 03  mov   $03f2+x,a         ; decrease weak channel volume
1b23: ce        pop   x
1b24: f5 80 03  mov   a,$0380+x
1b27: 28 01     and   a,#$01
1b29: f0 09     beq   $1b34
1b2b: e5 f2 03  mov   a,$03f2
1b2e: 48 ff     eor   a,#$ff
1b30: bc        inc   a
1b31: c5 f2 03  mov   $03f2,a           ; reverse-phase left channel
1b34: f5 80 03  mov   a,$0380+x
1b37: 28 02     and   a,#$02
1b39: f0 09     beq   $1b44
1b3b: e5 f3 03  mov   a,$03f3
1b3e: 48 ff     eor   a,#$ff
1b40: bc        inc   a
1b41: c5 f3 03  mov   $03f3,a           ; reverse-phase right channel
1b44: e5 f2 03  mov   a,$03f2
1b47: 8d 01     mov   y,#$01
1b49: 3f 55 1b  call  $1b55             ; VOL(R)
1b4c: e5 f3 03  mov   a,$03f3
1b4f: 8d 00     mov   y,#$00
1b51: 3f 55 1b  call  $1b55             ; VOL(L)
1b54: 6f        ret

; set a to dsp voice reg y
1b55: 2d        push  a
1b56: cc f4 03  mov   $03f4,y
1b59: 3f 70 1c  call  $1c70
1b5c: b0 0d     bcs   $1b6b
1b5e: 9f        xcn   a
1b5f: 60        clrc
1b60: 85 f4 03  adc   a,$03f4
1b63: 20        clrp
1b64: c4 f2     mov   $f2,a
1b66: ae        pop   a
1b67: c4 f3     mov   $f3,a
1b69: 20        clrp
1b6a: 6f        ret

1b6b: ae        pop   a
1b6c: 6f        ret

1b6d: d5 18 02  mov   $0218+x,a
1b70: 20        clrp
1b71: f5 cb 02  mov   a,$02cb+x
1b74: 28 20     and   a,#$20
1b76: f0 14     beq   $1b8c
1b78: f5 18 02  mov   a,$0218+x
1b7b: 28 1f     and   a,#$1f
1b7d: 38 e0 ab  and   $ab,#$e0
1b80: 04 ab     or    a,$ab
1b82: c4 ab     mov   $ab,a
1b84: 20        clrp
1b85: 8f 6c f2  mov   $f2,#$6c
1b88: c4 f3     mov   $f3,a             ; FLG
1b8a: 20        clrp
1b8b: 6f        ret

1b8c: f5 cb 02  mov   a,$02cb+x
1b8f: 28 80     and   a,#$80
1b91: d0 11     bne   $1ba4
1b93: 3f a5 1b  call  $1ba5
1b96: e4 a2     mov   a,$a2
1b98: 8d 02     mov   y,#$02
1b9a: 3f 55 1b  call  $1b55             ; P(L)
1b9d: e4 a3     mov   a,$a3
1b9f: 8d 03     mov   y,#$03
1ba1: 3f 55 1b  call  $1b55             ; P(H)
1ba4: 6f        ret

1ba5: f5 18 02  mov   a,$0218+x
1ba8: 60        clrc
1ba9: 9c        dec   a
1baa: 8d 00     mov   y,#$00
1bac: 4d        push  x
1bad: cd 0c     mov   x,#$0c
1baf: 9e        div   ya,x
1bb0: ce        pop   x
1bb1: c4 a4     mov   $a4,a
1bb3: dd        mov   a,y
1bb4: bc        inc   a
1bb5: 1c        asl   a
1bb6: fd        mov   y,a
1bb7: f6 12 08  mov   a,$0812+y
1bba: c4 a0     mov   $a0,a
1bbc: f6 13 08  mov   a,$0813+y
1bbf: c4 a1     mov   $a1,a
1bc1: f4 8d     mov   a,$8d+x
1bc3: 30 1b     bmi   $1be0
1bc5: fc        inc   y
1bc6: fc        inc   y
1bc7: 2d        push  a
1bc8: f6 13 08  mov   a,$0813+y
1bcb: 2d        push  a
1bcc: f6 12 08  mov   a,$0812+y
1bcf: ee        pop   y
1bd0: 9a a0     subw  ya,$a0
1bd2: da a2     movw  $a2,ya
1bd4: ae        pop   a
1bd5: 3f 4f 1c  call  $1c4f
1bd8: ba a2     movw  ya,$a2
1bda: 7a a0     addw  ya,$a0
1bdc: da a0     movw  $a0,ya
1bde: 2f 20     bra   $1c00
1be0: dc        dec   y
1be1: dc        dec   y
1be2: 48 ff     eor   a,#$ff
1be4: bc        inc   a
1be5: 2d        push  a
1be6: f6 13 08  mov   a,$0813+y
1be9: 2d        push  a
1bea: f6 12 08  mov   a,$0812+y
1bed: ee        pop   y
1bee: da a2     movw  $a2,ya
1bf0: ba a0     movw  ya,$a0
1bf2: 9a a2     subw  ya,$a2
1bf4: da a2     movw  $a2,ya
1bf6: ae        pop   a
1bf7: 3f 4f 1c  call  $1c4f
1bfa: ba a0     movw  ya,$a0
1bfc: 9a a2     subw  ya,$a2
1bfe: da a0     movw  $a0,ya
1c00: f5 b7 02  mov   a,$02b7+x
1c03: eb a1     mov   y,$a1
1c05: cf        mul   ya
1c06: da a2     movw  $a2,ya
1c08: f5 b8 02  mov   a,$02b8+x
1c0b: eb a0     mov   y,$a0
1c0d: cf        mul   ya
1c0e: 7a a2     addw  ya,$a2
1c10: da a2     movw  $a2,ya
1c12: 3c        rol   a
1c13: 28 01     and   a,#$01
1c15: c4 a5     mov   $a5,a
1c17: f5 b7 02  mov   a,$02b7+x
1c1a: eb a0     mov   y,$a0
1c1c: cf        mul   ya
1c1d: 6d        push  y
1c1e: f5 b8 02  mov   a,$02b8+x
1c21: eb a1     mov   y,$a1
1c23: cf        mul   ya
1c24: 2d        push  a
1c25: dd        mov   a,y
1c26: 60        clrc
1c27: 84 a5     adc   a,$a5
1c29: c4 a5     mov   $a5,a
1c2b: ee        pop   y
1c2c: ae        pop   a
1c2d: 7a a2     addw  ya,$a2
1c2f: da a2     movw  $a2,ya
1c31: 28 00     and   a,#$00
1c33: 84 a5     adc   a,$a5
1c35: c4 a5     mov   $a5,a
1c37: e8 08     mov   a,#$08
1c39: 80        setc
1c3a: a4 a4     sbc   a,$a4
1c3c: 30 10     bmi   $1c4e
1c3e: f0 0e     beq   $1c4e
1c40: bc        inc   a
1c41: fd        mov   y,a
1c42: 4b a5     lsr   $a5
1c44: 6b a3     ror   $a3
1c46: 6b a2     ror   $a2
1c48: fe f8     dbnz  y,$1c42
1c4a: 90 02     bcc   $1c4e
1c4c: 3a a2     incw  $a2
1c4e: 6f        ret

1c4f: 68 7f     cmp   a,#$7f
1c51: f0 1c     beq   $1c6f
1c53: 1c        asl   a
1c54: 68 80     cmp   a,#$80
1c56: 90 01     bcc   $1c59
1c58: bc        inc   a
1c59: 2d        push  a
1c5a: eb a2     mov   y,$a2
1c5c: cf        mul   ya
1c5d: cb a2     mov   $a2,y
1c5f: ae        pop   a
1c60: eb a3     mov   y,$a3
1c62: cf        mul   ya
1c63: 60        clrc
1c64: 84 a2     adc   a,$a2
1c66: c4 a2     mov   $a2,a
1c68: 0d        push  psw
1c69: dd        mov   a,y
1c6a: 8e        pop   psw
1c6b: 88 00     adc   a,#$00
1c6d: c4 a3     mov   $a3,a
1c6f: 6f        ret

1c70: 3f 89 1c  call  $1c89
1c73: b0 0e     bcs   $1c83
1c75: f5 6b 03  mov   a,$036b+x
1c78: 1c        asl   a
1c79: fd        mov   y,a
1c7a: f6 6c 03  mov   a,$036c+y
1c7d: 28 02     and   a,#$02
1c7f: f0 02     beq   $1c83
1c81: 80        setc
1c82: 6f        ret

1c83: f5 6b 03  mov   a,$036b+x
1c86: 68 08     cmp   a,#$08
1c88: 6f        ret

1c89: 2d        push  a
1c8a: f5 a3 02  mov   a,$02a3+x
1c8d: fd        mov   y,a
1c8e: f6 af 03  mov   a,$03af+y
1c91: 65 27 29  cmp   a,$2927
1c94: ae        pop   a
1c95: 6f        ret

; duplicate duration info if needed
1c96: f5 cb 02  mov   a,$02cb+x
1c99: 28 01     and   a,#$01
1c9b: d0 01     bne   $1c9e
1c9d: 6f        ret
; copy duration info of from other channel
1c9e: f5 a3 02  mov   a,$02a3+x
1ca1: c4 a0     mov   $a0,a
1ca3: f5 7f 03  mov   a,$037f+x
1ca6: f0 26     beq   $1cce
1ca8: 9c        dec   a
1ca9: c4 a2     mov   $a2,a
1cab: 8d 00     mov   y,#$00            ; for (Y = 0; Y < 20; Y += 2)
1cad: f6 a3 02  mov   a,$02a3+y
1cb0: 64 a0     cmp   a,$a0
1cb2: d0 14     bne   $1cc8
1cb4: f6 7f 03  mov   a,$037f+y
1cb7: 64 a2     cmp   a,$a2
1cb9: d0 0d     bne   $1cc8             ; if ($02A3+Y == $02A3+X && $037F+Y == $037F+X - 1)
1cbb: f6 03 02  mov   a,$0203+y
1cbe: d5 03 02  mov   $0203+x,a
1cc1: f6 04 02  mov   a,$0204+y
1cc4: d5 04 02  mov   $0204+x,a         ;   $0203/4+X = $0203/4+Y
1cc7: 6f        ret                     ;   return
1cc8: fc        inc   y
1cc9: fc        inc   y
1cca: ad 14     cmp   y,#$14
1ccc: 90 df     bcc   $1cad             ; }
1cce: 6f        ret

1ccf: f5 f4 02  mov   a,$02f4+x
1cd2: d0 01     bne   $1cd5
1cd4: 6f        ret

1cd5: f5 07 03  mov   a,$0307+x
1cd8: 10 22     bpl   $1cfc
1cda: 28 7f     and   a,#$7f
1cdc: c4 a1     mov   $a1,a
1cde: f4 8d     mov   a,$8d+x
1ce0: 10 07     bpl   $1ce9
1ce2: 8b a1     dec   $a1
1ce4: 3f 81 1d  call  $1d81
1ce7: 88 80     adc   a,#$80
1ce9: 3f 3b 1d  call  $1d3b
1cec: 8b a2     dec   $a2
1cee: 30 05     bmi   $1cf5
1cf0: 3f 81 1d  call  $1d81
1cf3: 2f f7     bra   $1cec
1cf5: e4 a3     mov   a,$a3
1cf7: 5c        lsr   a
1cf8: d4 8d     mov   $8d+x,a
1cfa: 2f 2b     bra   $1d27
1cfc: c4 a1     mov   $a1,a
1cfe: f4 8d     mov   a,$8d+x
1d00: f0 11     beq   $1d13
1d02: 30 0c     bmi   $1d10
1d04: 8b a1     dec   $a1
1d06: 3f 8a 1d  call  $1d8a
1d09: e8 80     mov   a,#$80
1d0b: 80        setc
1d0c: b4 8d     sbc   a,$8d+x
1d0e: 2f 03     bra   $1d13
1d10: 48 ff     eor   a,#$ff
1d12: bc        inc   a
1d13: 3f 3b 1d  call  $1d3b
1d16: 8b a2     dec   $a2
1d18: 30 05     bmi   $1d1f
1d1a: 3f 8a 1d  call  $1d8a
1d1d: 2f f7     bra   $1d16
1d1f: e4 a3     mov   a,$a3
1d21: 5c        lsr   a
1d22: 48 ff     eor   a,#$ff
1d24: bc        inc   a
1d25: d4 8d     mov   $8d+x,a
1d27: 3f 70 1b  call  $1b70
1d2a: f5 f4 02  mov   a,$02f4+x
1d2d: 9c        dec   a
1d2e: d5 f4 02  mov   $02f4+x,a
1d31: f5 58 03  mov   a,$0358+x
1d34: f0 04     beq   $1d3a
1d36: 9c        dec   a
1d37: d5 58 03  mov   $0358+x,a
1d3a: 6f        ret

1d3b: 1c        asl   a
1d3c: 68 80     cmp   a,#$80
1d3e: 90 01     bcc   $1d41
1d40: bc        inc   a
1d41: c4 a0     mov   $a0,a
1d43: 4d        push  x
1d44: f5 f4 02  mov   a,$02f4+x
1d47: 5d        mov   x,a
1d48: e4 a1     mov   a,$a1
1d4a: 8d 00     mov   y,#$00
1d4c: 9e        div   ya,x
1d4d: c4 a2     mov   $a2,a
1d4f: e4 a0     mov   a,$a0
1d51: 9e        div   ya,x
1d52: ce        pop   x
1d53: c4 a3     mov   $a3,a
1d55: e4 a0     mov   a,$a0
1d57: 80        setc
1d58: a4 a3     sbc   a,$a3
1d5a: b0 02     bcs   $1d5e
1d5c: ab a2     inc   $a2
1d5e: c4 a3     mov   $a3,a
1d60: dd        mov   a,y
1d61: 60        clrc
1d62: 95 58 03  adc   a,$0358+x
1d65: b0 09     bcs   $1d70
1d67: 75 f4 02  cmp   a,$02f4+x
1d6a: b0 04     bcs   $1d70
1d6c: d5 58 03  mov   $0358+x,a
1d6f: 6f        ret

1d70: b5 f4 02  sbc   a,$02f4+x
1d73: d5 58 03  mov   $0358+x,a
1d76: 8b a3     dec   $a3
1d78: e4 a3     mov   a,$a3
1d7a: 68 ff     cmp   a,#$ff
1d7c: d0 02     bne   $1d80
1d7e: ab a2     inc   $a2
1d80: 6f        ret

1d81: f5 18 02  mov   a,$0218+x
1d84: 9c        dec   a
1d85: d5 18 02  mov   $0218+x,a
1d88: 2f 07     bra   $1d91
1d8a: f5 18 02  mov   a,$0218+x
1d8d: bc        inc   a
1d8e: d5 18 02  mov   $0218+x,a
1d91: f5 07 03  mov   a,$0307+x
1d94: 9c        dec   a
1d95: d5 07 03  mov   $0307+x,a
1d98: 6f        ret

1d99: f5 08 03  mov   a,$0308+x
1d9c: d0 01     bne   $1d9f
1d9e: 6f        ret

1d9f: e8 01     mov   a,#$01
1da1: d5 94 03  mov   $0394+x,a
1da4: f5 2f 03  mov   a,$032f+x
1da7: 60        clrc
1da8: 95 1b 03  adc   a,$031b+x
1dab: d5 2f 03  mov   $032f+x,a
1dae: b0 05     bcs   $1db5
1db0: 75 08 03  cmp   a,$0308+x
1db3: 90 07     bcc   $1dbc
1db5: b5 08 03  sbc   a,$0308+x
1db8: d5 2f 03  mov   $032f+x,a
1dbb: 80        setc
1dbc: 0d        push  psw
1dbd: f5 cb 02  mov   a,$02cb+x
1dc0: 28 08     and   a,#$08
1dc2: f0 14     beq   $1dd8
1dc4: f4 3c     mov   a,$3c+x
1dc6: 8e        pop   psw
1dc7: ed        notc
1dc8: b5 1c 03  sbc   a,$031c+x
1dcb: 30 1c     bmi   $1de9
1dcd: 50 1a     bvc   $1de9
1dcf: e8 00     mov   a,#$00
1dd1: d5 08 03  mov   $0308+x,a
1dd4: e8 81     mov   a,#$81
1dd6: 2f 11     bra   $1de9
1dd8: f4 3c     mov   a,$3c+x
1dda: 8e        pop   psw
1ddb: 95 1c 03  adc   a,$031c+x
1dde: 10 09     bpl   $1de9
1de0: 50 07     bvc   $1de9
1de2: e8 00     mov   a,#$00
1de4: d5 08 03  mov   $0308+x,a
1de7: e8 7f     mov   a,#$7f
1de9: d4 3c     mov   $3c+x,a
1deb: 6f        ret

1dec: f5 53 02  mov   a,$0253+x
1def: d0 01     bne   $1df2
1df1: 6f        ret

1df2: 2d        push  a
1df3: e8 01     mov   a,#$01
1df5: d5 94 03  mov   $0394+x,a
1df8: ae        pop   a
1df9: c4 a0     mov   $a0,a
1dfb: 10 09     bpl   $1e06
1dfd: 48 ff     eor   a,#$ff
1dff: bc        inc   a
1e00: 68 80     cmp   a,#$80
1e02: d0 02     bne   $1e06
1e04: e8 7f     mov   a,#$7f
1e06: 8f 00 a1  mov   $a1,#$00
1e09: 1c        asl   a
1e0a: 2b a1     rol   $a1
1e0c: 1c        asl   a
1e0d: 2b a1     rol   $a1
1e0f: 60        clrc
1e10: 95 2f 03  adc   a,$032f+x
1e13: 0d        push  psw
1e14: d5 2f 03  mov   $032f+x,a
1e17: e4 a0     mov   a,$a0
1e19: 10 10     bpl   $1e2b
1e1b: f5 54 02  mov   a,$0254+x
1e1e: 8e        pop   psw
1e1f: ed        notc
1e20: a4 a1     sbc   a,$a1
1e22: b0 15     bcs   $1e39
1e24: e8 00     mov   a,#$00
1e26: d5 53 02  mov   $0253+x,a
1e29: 2f 0e     bra   $1e39
1e2b: f5 54 02  mov   a,$0254+x
1e2e: 8e        pop   psw
1e2f: 84 a1     adc   a,$a1
1e31: 90 06     bcc   $1e39
1e33: e8 00     mov   a,#$00
1e35: d5 53 02  mov   $0253+x,a
1e38: 9c        dec   a
1e39: d5 54 02  mov   $0254+x,a
1e3c: 6f        ret

1e3d: f5 44 03  mov   a,$0344+x
1e40: d0 01     bne   $1e43
1e42: 6f        ret

1e43: e8 01     mov   a,#$01
1e45: d5 94 03  mov   $0394+x,a
1e48: e8 00     mov   a,#$00
1e4a: c4 a0     mov   $a0,a
1e4c: f5 43 03  mov   a,$0343+x
1e4f: 80        setc
1e50: b5 29 00  sbc   a,$0029+x
1e53: b0 0f     bcs   $1e64
1e55: d0 04     bne   $1e5b
1e57: d5 44 03  mov   $0344+x,a
1e5a: 6f        ret

1e5b: 2d        push  a
1e5c: e8 01     mov   a,#$01
1e5e: c4 a0     mov   $a0,a
1e60: ae        pop   a
1e61: 48 ff     eor   a,#$ff
1e63: bc        inc   a
1e64: 4d        push  x
1e65: 2d        push  a
1e66: f5 44 03  mov   a,$0344+x
1e69: 5d        mov   x,a
1e6a: ae        pop   a
1e6b: 8d 00     mov   y,#$00
1e6d: 9e        div   ya,x
1e6e: c4 a1     mov   $a1,a
1e70: e8 00     mov   a,#$00
1e72: 9e        div   ya,x
1e73: ce        pop   x
1e74: 60        clrc
1e75: 95 57 03  adc   a,$0357+x
1e78: d5 57 03  mov   $0357+x,a
1e7b: b0 05     bcs   $1e82
1e7d: 75 44 03  cmp   a,$0344+x
1e80: 90 07     bcc   $1e89
1e82: b5 44 03  sbc   a,$0344+x
1e85: d5 57 03  mov   $0357+x,a
1e88: 80        setc
1e89: 0d        push  psw
1e8a: e4 a0     mov   a,$a0
1e8c: f0 0c     beq   $1e9a
1e8e: f4 29     mov   a,$29+x
1e90: 8e        pop   psw
1e91: ed        notc
1e92: a4 a1     sbc   a,$a1
1e94: b0 0d     bcs   $1ea3
1e96: e8 00     mov   a,#$00
1e98: 2f 09     bra   $1ea3
1e9a: f4 29     mov   a,$29+x
1e9c: 8e        pop   psw
1e9d: 84 a1     adc   a,$a1
1e9f: 90 02     bcc   $1ea3
1ea1: e8 ff     mov   a,#$ff
1ea3: d4 29     mov   $29+x,a
1ea5: f5 44 03  mov   a,$0344+x
1ea8: 9c        dec   a
1ea9: d5 44 03  mov   $0344+x,a
1eac: 6f        ret

1ead: f5 c7 03  mov   a,$03c7+x
1eb0: d0 01     bne   $1eb3
1eb2: 6f        ret

1eb3: c4 a0     mov   $a0,a
1eb5: e8 02     mov   a,#$02
1eb7: 15 d7 03  or    a,$03d7+x
1eba: d5 d7 03  mov   $03d7+x,a
1ebd: e4 a0     mov   a,$a0
1ebf: 10 0b     bpl   $1ecc
1ec1: 48 ff     eor   a,#$ff
1ec3: bc        inc   a
1ec4: 68 80     cmp   a,#$80
1ec6: d0 04     bne   $1ecc
1ec8: e8 7f     mov   a,#$7f
1eca: 2f 0b     bra   $1ed7
1ecc: 68 7f     cmp   a,#$7f
1ece: d0 07     bne   $1ed7
1ed0: 8f 10 a1  mov   $a1,#$10
1ed3: e8 00     mov   a,#$00
1ed5: 2f 0c     bra   $1ee3
1ed7: 8f 00 a1  mov   $a1,#$00
1eda: 1c        asl   a
1edb: 2b a1     rol   $a1
1edd: 1c        asl   a
1ede: 2b a1     rol   $a1
1ee0: 1c        asl   a
1ee1: 2b a1     rol   $a1
1ee3: 60        clrc
1ee4: 95 cf 03  adc   a,$03cf+x
1ee7: 0d        push  psw
1ee8: d5 cf 03  mov   $03cf+x,a
1eeb: e4 a0     mov   a,$a0
1eed: 10 27     bpl   $1f16
1eef: f5 a7 03  mov   a,$03a7+x
1ef2: 8e        pop   psw
1ef3: ed        notc
1ef4: a4 a1     sbc   a,$a1
1ef6: b0 31     bcs   $1f29
1ef8: e8 00     mov   a,#$00
1efa: d5 c7 03  mov   $03c7+x,a
1efd: d5 a7 03  mov   $03a7+x,a
1f00: f5 d7 03  mov   a,$03d7+x
1f03: 28 01     and   a,#$01
1f05: d0 09     bne   $1f10
1f07: f5 d7 03  mov   a,$03d7+x
1f0a: 08 02     or    a,#$02
1f0c: d5 d7 03  mov   $03d7+x,a
1f0f: 6f        ret

1f10: 7d        mov   a,x
1f11: fd        mov   y,a
1f12: 3f e7 22  call  $22e7
1f15: 6f        ret

1f16: f5 a7 03  mov   a,$03a7+x
1f19: 8e        pop   psw
1f1a: 84 a1     adc   a,$a1
1f1c: b0 04     bcs   $1f22
1f1e: 68 80     cmp   a,#$80
1f20: 90 07     bcc   $1f29
1f22: e8 00     mov   a,#$00
1f24: d5 c7 03  mov   $03c7+x,a
1f27: e8 80     mov   a,#$80
1f29: d5 a7 03  mov   $03a7+x,a
1f2c: f5 d7 03  mov   a,$03d7+x
1f2f: 08 02     or    a,#$02
1f31: d5 d7 03  mov   $03d7+x,a
1f34: 6f        ret

1f35: 6f        ret

1f36: f4 78     mov   a,$78+x
1f38: 68 ff     cmp   a,#$ff
1f3a: f0 31     beq   $1f6d
1f3c: 9b 8c     dec   $8c+x
1f3e: d0 2d     bne   $1f6d
1f40: fb 78     mov   y,$78+x
1f42: f6 fe 08  mov   a,$08fe+y
1f45: c4 a0     mov   $a0,a
1f47: f6 ff 08  mov   a,$08ff+y
1f4a: c4 a1     mov   $a1,a
1f4c: fb 79     mov   y,$79+x
1f4e: f7 a0     mov   a,($a0)+y
1f50: 68 80     cmp   a,#$80
1f52: f0 19     beq   $1f6d
1f54: d4 8d     mov   $8d+x,a
1f56: fc        inc   y
1f57: f7 a0     mov   a,($a0)+y
1f59: fc        inc   y
1f5a: d4 8c     mov   $8c+x,a
1f5c: dd        mov   a,y
1f5d: d4 79     mov   $79+x,a
1f5f: 8d 00     mov   y,#$00
1f61: 77 a0     cmp   a,($a0)+y
1f63: d0 05     bne   $1f6a
1f65: fc        inc   y
1f66: f7 a0     mov   a,($a0)+y
1f68: d4 79     mov   $79+x,a
1f6a: 3f 70 1b  call  $1b70
1f6d: 6f        ret

1f6e: f5 cb 02  mov   a,$02cb+x
1f71: 08 20     or    a,#$20
1f73: d5 cb 02  mov   $02cb+x,a
1f76: 3f 70 1c  call  $1c70
1f79: b0 12     bcs   $1f8d
1f7b: fd        mov   y,a
1f7c: f6 0a 08  mov   a,$080a+y
1f7f: 05 f0 03  or    a,$03f0
1f82: c5 f0 03  mov   $03f0,a
1f85: 8d 3d     mov   y,#$3d
1f87: 20        clrp
1f88: cb f2     mov   $f2,y
1f8a: c4 f3     mov   $f3,a             ; NON
1f8c: 20        clrp
1f8d: 6f        ret

1f8e: f5 cb 02  mov   a,$02cb+x
1f91: 28 df     and   a,#$df
1f93: d5 cb 02  mov   $02cb+x,a
1f96: 3f 70 1c  call  $1c70
1f99: b0 14     bcs   $1faf
1f9b: fd        mov   y,a
1f9c: f6 0a 08  mov   a,$080a+y
1f9f: 48 ff     eor   a,#$ff
1fa1: 25 f0 03  and   a,$03f0
1fa4: c5 f0 03  mov   $03f0,a
1fa7: 8d 3d     mov   y,#$3d
1fa9: 20        clrp
1faa: cb f2     mov   $f2,y
1fac: c4 f3     mov   $f3,a             ; NON
1fae: 20        clrp
1faf: 6f        ret

1fb0: f5 cb 02  mov   a,$02cb+x
1fb3: 08 40     or    a,#$40
1fb5: d5 cb 02  mov   $02cb+x,a
1fb8: 3f 70 1c  call  $1c70
1fbb: b0 12     bcs   $1fcf
1fbd: fd        mov   y,a
1fbe: f6 0a 08  mov   a,$080a+y
1fc1: 05 f1 03  or    a,$03f1
1fc4: c5 f1 03  mov   $03f1,a
1fc7: 8d 4d     mov   y,#$4d
1fc9: 20        clrp
1fca: cb f2     mov   $f2,y
1fcc: c4 f3     mov   $f3,a             ; EON
1fce: 20        clrp
1fcf: 6f        ret

1fd0: f5 cb 02  mov   a,$02cb+x
1fd3: 28 bf     and   a,#$bf
1fd5: d5 cb 02  mov   $02cb+x,a
1fd8: 3f 70 1c  call  $1c70
1fdb: b0 14     bcs   $1ff1
1fdd: fd        mov   y,a
1fde: f6 0a 08  mov   a,$080a+y
1fe1: 48 ff     eor   a,#$ff
1fe3: 25 f1 03  and   a,$03f1
1fe6: c5 f1 03  mov   $03f1,a
1fe9: 8d 4d     mov   y,#$4d
1feb: 20        clrp
1fec: cb f2     mov   $f2,y
1fee: c4 f3     mov   $f3,a             ; EON
1ff0: 20        clrp
1ff1: 6f        ret

1ff2: 8d 00     mov   y,#$00
1ff4: 2d        push  a
1ff5: f6 b7 03  mov   a,$03b7+y
1ff8: f0 0e     beq   $2008
1ffa: ae        pop   a
1ffb: 76 af 03  cmp   a,$03af+y
1ffe: d0 02     bne   $2002
2000: 60        clrc
2001: 6f        ret

2002: fc        inc   y
2003: ad 08     cmp   y,#$08
2005: 90 ed     bcc   $1ff4
2007: 6f        ret

2008: ae        pop   a
2009: 2f f7     bra   $2002
200b: 2f f6     bra   $2003
200d: 20        clrp
200e: e5 f7 03  mov   a,$03f7
2011: d0 01     bne   $2014
2013: 6f        ret

2014: 60        clrc
2015: 85 f6 03  adc   a,$03f6
2018: c5 f6 03  mov   $03f6,a
201b: b0 01     bcs   $201e
201d: 6f        ret

201e: 20        clrp
201f: 8f 00 a0  mov   $a0,#$00
2022: 8f 0c f2  mov   $f2,#$0c
2025: e4 f3     mov   a,$f3             ; MVOL(L)
2027: 3f 75 20  call  $2075
202a: 8f 0c f2  mov   $f2,#$0c
202d: c4 f3     mov   $f3,a             ; MVOL(L)
202f: 04 a0     or    a,$a0
2031: c4 a0     mov   $a0,a
2033: 8f 1c f2  mov   $f2,#$1c
2036: e4 f3     mov   a,$f3             ; MVOL(R)
2038: 3f 75 20  call  $2075
203b: 8f 1c f2  mov   $f2,#$1c
203e: c4 f3     mov   $f3,a             ; MVOL(R)
2040: 04 a0     or    a,$a0
2042: c4 a0     mov   $a0,a
2044: 8f 2c f2  mov   $f2,#$2c
2047: e4 f3     mov   a,$f3             ; EVOL(L)
2049: 3f 75 20  call  $2075
204c: 8f 2c f2  mov   $f2,#$2c
204f: c4 f3     mov   $f3,a             ; EVOL(L)
2051: 04 a0     or    a,$a0
2053: c4 a0     mov   $a0,a
2055: 8f 3c f2  mov   $f2,#$3c
2058: e4 f3     mov   a,$f3             ; EVOL(R)
205a: 3f 75 20  call  $2075
205d: 8f 3c f2  mov   $f2,#$3c
2060: c4 f3     mov   $f3,a             ; EVOL(R)
2062: 04 a0     or    a,$a0
2064: f0 02     beq   $2068
2066: 20        clrp
2067: 6f        ret

2068: 40        setp
2069: c2 9a     set6  $9a
206b: e4 9a     mov   a,$9a
206d: 28 c0     and   a,#$c0
206f: c5 f4 00  mov   $00f4,a
2072: 5f 05 0a  jmp   $0a05
2075: f0 03     beq   $207a
2077: 30 02     bmi   $207b
2079: 9c        dec   a
207a: 6f        ret

207b: bc        inc   a
207c: 6f        ret

207d: 20        clrp
207e: 1c        asl   a
207f: 4d        push  x
2080: 5d        mov   x,a
2081: f5 2e 08  mov   a,$082e+x
2084: c4 a6     mov   $a6,a
2086: f5 2f 08  mov   a,$082f+x
2089: c4 a7     mov   $a7,a
208b: ce        pop   x
208c: 4d        push  x
208d: 6d        push  y
208e: 3f 02 23  call  $2302
2091: 68 10     cmp   a,#$10
2093: b0 09     bcs   $209e
2095: ad 08     cmp   y,#$08
2097: b0 26     bcs   $20bf
2099: 3f d0 20  call  $20d0
209c: 2f 1d     bra   $20bb
209e: 68 20     cmp   a,#$20
20a0: b0 05     bcs   $20a7
20a2: 3f 25 21  call  $2125
20a5: 2f 14     bra   $20bb
20a7: 68 c0     cmp   a,#$c0
20a9: b0 09     bcs   $20b4
20ab: ad 08     cmp   y,#$08
20ad: b0 10     bcs   $20bf
20af: 3f 83 22  call  $2283
20b2: 2f 07     bra   $20bb
20b4: 68 fe     cmp   a,#$fe
20b6: d0 07     bne   $20bf
20b8: 3f c2 20  call  $20c2
20bb: ee        pop   y
20bc: ce        pop   x
20bd: 2f cd     bra   $208c
20bf: ee        pop   y
20c0: ce        pop   x
20c1: 6f        ret

; set dsp reg from ...
20c2: 3f 02 23  call  $2302
20c5: fd        mov   y,a
20c6: 3f 02 23  call  $2302
20c9: 20        clrp
20ca: cb f2     mov   $f2,y
20cc: c4 f3     mov   $f3,a
20ce: 20        clrp
20cf: 6f        ret

20d0: 68 00     cmp   a,#$00
20d2: d0 0f     bne   $20e3
20d4: 3f 02 23  call  $2302
20d7: d6 a7 03  mov   $03a7+y,a
20da: f6 d7 03  mov   a,$03d7+y
20dd: 08 02     or    a,#$02
20df: d6 d7 03  mov   $03d7+y,a
20e2: 6f        ret

20e3: 68 01     cmp   a,#$01
20e5: d0 0c     bne   $20f3
20e7: 3f 02 23  call  $2302
20ea: d6 c7 03  mov   $03c7+y,a
20ed: e8 80     mov   a,#$80
20ef: d6 cf 03  mov   $03cf+y,a
20f2: 6f        ret

20f3: 68 02     cmp   a,#$02
20f5: d0 07     bne   $20fe
20f7: 3f 02 23  call  $2302
20fa: d6 b7 03  mov   $03b7+y,a
20fd: 6f        ret

20fe: 68 03     cmp   a,#$03
2100: d0 04     bne   $2106
2102: 3f e7 22  call  $22e7
2105: 6f        ret

2106: 68 04     cmp   a,#$04
2108: d0 0f     bne   $2119
210a: f6 d7 03  mov   a,$03d7+y
210d: 08 01     or    a,#$01
210f: d6 d7 03  mov   $03d7+y,a
2112: 3f 02 23  call  $2302
2115: d6 c7 03  mov   $03c7+y,a
2118: 6f        ret

2119: 68 05     cmp   a,#$05
211b: d0 07     bne   $2124
211d: 3f 02 23  call  $2302
2120: d6 e7 03  mov   $03e7+y,a
2123: 6f        ret

2124: 6f        ret

2125: 68 10     cmp   a,#$10
2127: d0 15     bne   $213e
2129: 8d 0f     mov   y,#$0f
212b: 3f 02 23  call  $2302
212e: 20        clrp
212f: cb f2     mov   $f2,y
2131: c4 f3     mov   $f3,a             ; FIR
2133: 20        clrp
2134: dd        mov   a,y
2135: 60        clrc
2136: 88 10     adc   a,#$10
2138: fd        mov   y,a
2139: ad 80     cmp   y,#$80
213b: 90 ee     bcc   $212b
213d: 6f        ret

213e: 68 11     cmp   a,#$11
2140: d0 1b     bne   $215d
2142: e8 00     mov   a,#$00
2144: c5 ef 03  mov   $03ef,a
2147: 20        clrp
2148: 8d 1c     mov   y,#$1c
214a: e5 af 00  mov   a,$00af
214d: cb f2     mov   $f2,y
214f: c4 f3     mov   $f3,a             ; MVOL(R)
2151: 8d 3c     mov   y,#$3c
2153: e5 ad 00  mov   a,$00ad
2156: cb f2     mov   $f2,y
2158: c4 f3     mov   $f3,a             ; EVOL(R)
215a: 20        clrp
215b: 2f 1d     bra   $217a
215d: 68 12     cmp   a,#$12
215f: d0 29     bne   $218a
2161: e8 01     mov   a,#$01
2163: c5 ef 03  mov   $03ef,a
2166: 20        clrp
2167: 8d 1c     mov   y,#$1c
2169: e5 ae 00  mov   a,$00ae
216c: cb f2     mov   $f2,y
216e: c4 f3     mov   $f3,a             ; MVOL(R)
2170: 8d 3c     mov   y,#$3c
2172: e5 ac 00  mov   a,$00ac
2175: cb f2     mov   $f2,y
2177: c4 f3     mov   $f3,a             ; EVOL(R)
2179: 20        clrp
217a: 8d 00     mov   y,#$00
217c: f6 d7 03  mov   a,$03d7+y
217f: 08 02     or    a,#$02
2181: d6 d7 03  mov   $03d7+y,a
2184: fc        inc   y
2185: ad 08     cmp   y,#$08
2187: 90 f3     bcc   $217c
2189: 6f        ret

218a: 68 13     cmp   a,#$13
218c: d0 26     bne   $21b4
218e: 3f 02 23  call  $2302
2191: c4 af     mov   $af,a
2193: 8d 0c     mov   y,#$0c
2195: 20        clrp
2196: cb f2     mov   $f2,y
2198: c4 f3     mov   $f3,a             ; MVOL(L)
219a: 20        clrp
219b: 3f 02 23  call  $2302
219e: c4 ae     mov   $ae,a
21a0: e5 ef 03  mov   a,$03ef
21a3: f0 04     beq   $21a9
21a5: e4 ae     mov   a,$ae
21a7: 2f 02     bra   $21ab
21a9: e4 af     mov   a,$af
21ab: 8d 1c     mov   y,#$1c
21ad: 20        clrp
21ae: cb f2     mov   $f2,y
21b0: c4 f3     mov   $f3,a             ; MVOL(R)
21b2: 20        clrp
21b3: 6f        ret

21b4: 68 14     cmp   a,#$14
21b6: d0 35     bne   $21ed
21b8: e4 a9     mov   a,$a9
21ba: d0 26     bne   $21e2
21bc: 3f 02 23  call  $2302
21bf: c4 ad     mov   $ad,a
21c1: 8d 2c     mov   y,#$2c
21c3: 20        clrp
21c4: cb f2     mov   $f2,y
21c6: c4 f3     mov   $f3,a             ; EVOL(L)
21c8: 20        clrp
21c9: 3f 02 23  call  $2302
21cc: c4 ac     mov   $ac,a
21ce: e5 ef 03  mov   a,$03ef
21d1: f0 04     beq   $21d7
21d3: e4 ac     mov   a,$ac
21d5: 2f 02     bra   $21d9
21d7: e4 ad     mov   a,$ad
21d9: 8d 3c     mov   y,#$3c
21db: 20        clrp
21dc: cb f2     mov   $f2,y
21de: c4 f3     mov   $f3,a             ; EVOL(R)
21e0: 20        clrp
21e1: 6f        ret

21e2: 3f 02 23  call  $2302
21e5: c4 ad     mov   $ad,a
21e7: 3f 02 23  call  $2302
21ea: c4 ac     mov   $ac,a
21ec: 6f        ret

21ed: 68 15     cmp   a,#$15
21ef: d0 15     bne   $2206
21f1: 3f 02 23  call  $2302
21f4: 20        clrp
21f5: 28 1f     and   a,#$1f
21f7: 38 e0 ab  and   $ab,#$e0
21fa: 04 ab     or    a,$ab
21fc: c4 ab     mov   $ab,a
21fe: 20        clrp
21ff: 8f 6c f2  mov   $f2,#$6c
2202: c4 f3     mov   $f3,a             ; FLG
2204: 20        clrp
2205: 6f        ret

2206: 68 16     cmp   a,#$16
2208: d0 18     bne   $2222
220a: e4 a9     mov   a,$a9
220c: d0 0e     bne   $221c
220e: 3f 02 23  call  $2302
2211: c4 b0     mov   $b0,a
2213: 8d 0d     mov   y,#$0d
2215: 20        clrp
2216: cb f2     mov   $f2,y
2218: c4 f3     mov   $f3,a             ; EFB
221a: 20        clrp
221b: 6f        ret

221c: 3f 02 23  call  $2302
221f: c4 b0     mov   $b0,a
2221: 6f        ret

2222: 68 17     cmp   a,#$17
2224: d0 3d     bne   $2263
2226: 3f 02 23  call  $2302
2229: 68 05     cmp   a,#$05
222b: 90 02     bcc   $222f
222d: e8 05     mov   a,#$05
222f: 64 b1     cmp   a,$b1
2231: f0 2f     beq   $2262
2233: c4 b1     mov   $b1,a
2235: 8d 7d     mov   y,#$7d
2237: 20        clrp
2238: cb f2     mov   $f2,y
223a: c4 f3     mov   $f3,a             ; EDL
223c: 20        clrp
223d: 1c        asl   a
223e: 1c        asl   a
223f: c4 a9     mov   $a9,a
2241: 1c        asl   a
2242: c4 aa     mov   $aa,a
2244: 18 20 ab  or    $ab,#$20
2247: e4 ab     mov   a,$ab
2249: 20        clrp
224a: 8f 6c f2  mov   $f2,#$6c
224d: c4 f3     mov   $f3,a             ; FLG
224f: 8f 2c f2  mov   $f2,#$2c
2252: 8f 00 f3  mov   $f3,#$00          ; EVOL(L)
2255: 8f 3c f2  mov   $f2,#$3c
2258: 8f 00 f3  mov   $f3,#$00          ; EVOL(R)
225b: 8f 0d f2  mov   $f2,#$0d
225e: 8f 00 f3  mov   $f3,#$00          ; EFB
2261: 20        clrp
2262: 6f        ret

2263: 68 18     cmp   a,#$18
2265: d0 1b     bne   $2282
2267: 3f 02 23  call  $2302
226a: ec f9 03  mov   y,$03f9
226d: ad 08     cmp   y,#$08
226f: b0 10     bcs   $2281
2271: d6 c7 03  mov   $03c7+y,a
2274: e8 80     mov   a,#$80
2276: d6 cf 03  mov   $03cf+y,a
2279: f6 d7 03  mov   a,$03d7+y
227c: 08 01     or    a,#$01
227e: d6 d7 03  mov   $03d7+y,a
2281: 6f        ret

2282: 6f        ret

2283: 9f        xcn   a
2284: 9c        dec   a
2285: 9c        dec   a
2286: 3f 0c 23  call  $230c
2289: 90 01     bcc   $228c
228b: 6f        ret

228c: 28 f0     and   a,#$f0
228e: 68 00     cmp   a,#$00
2290: d0 0c     bne   $229e
2292: 3f 02 23  call  $2302
2295: d5 53 02  mov   $0253+x,a
2298: e8 80     mov   a,#$80
229a: d5 2f 03  mov   $032f+x,a
229d: 6f        ret

229e: 68 10     cmp   a,#$10
22a0: d0 0b     bne   $22ad
22a2: 3f 02 23  call  $2302
22a5: d4 28     mov   $28+x,a
22a7: e8 01     mov   a,#$01
22a9: d5 94 03  mov   $0394+x,a
22ac: 6f        ret

22ad: 68 20     cmp   a,#$20
22af: d0 04     bne   $22b5
22b1: 3f b0 1f  call  $1fb0
22b4: 6f        ret

22b5: 68 30     cmp   a,#$30
22b7: d0 04     bne   $22bd
22b9: 3f d0 1f  call  $1fd0
22bc: 6f        ret

22bd: 68 40     cmp   a,#$40
22bf: d0 04     bne   $22c5
22c1: 3f 6e 1f  call  $1f6e
22c4: 6f        ret

22c5: 68 50     cmp   a,#$50
22c7: d0 04     bne   $22cd
22c9: 3f 8e 1f  call  $1f8e
22cc: 6f        ret

22cd: 68 60     cmp   a,#$60
22cf: d0 04     bne   $22d5
22d1: 3f 67 16  call  $1667
22d4: 6f        ret

22d5: 68 b0     cmp   a,#$b0
22d7: b0 0d     bcs   $22e6
22d9: 9f        xcn   a
22da: 80        setc
22db: a8 07     sbc   a,#$07
22dd: d5 80 03  mov   $0380+x,a
22e0: e8 01     mov   a,#$01
22e2: d5 94 03  mov   $0394+x,a
22e5: 6f        ret

22e6: 6f        ret

22e7: 20        clrp
22e8: ad 08     cmp   y,#$08
22ea: b0 15     bcs   $2301
22ec: 4d        push  x
22ed: cd 00     mov   x,#$00
22ef: dd        mov   a,y
22f0: 75 a3 02  cmp   a,$02a3+x
22f3: d0 05     bne   $22fa
22f5: 2d        push  a
22f6: 3f 67 16  call  $1667
22f9: ae        pop   a
22fa: 3d        inc   x
22fb: 3d        inc   x
22fc: c8 14     cmp   x,#$14
22fe: 90 f0     bcc   $22f0
2300: ce        pop   x
2301: 6f        ret

2302: 20        clrp
2303: 6d        push  y
2304: 8d 00     mov   y,#$00
2306: f7 a6     mov   a,($a6)+y
2308: 3a a6     incw  $a6
230a: ee        pop   y
230b: 6f        ret

230c: 2d        push  a
230d: 28 0f     and   a,#$0f
230f: c4 a2     mov   $a2,a
2311: cd 00     mov   x,#$00
2313: dd        mov   a,y
2314: 75 a3 02  cmp   a,$02a3+x
2317: d0 07     bne   $2320
2319: e4 a2     mov   a,$a2
231b: 75 7f 03  cmp   a,$037f+x
231e: f0 09     beq   $2329
2320: 3d        inc   x
2321: 3d        inc   x
2322: c8 14     cmp   x,#$14
2324: 90 ed     bcc   $2313
2326: ae        pop   a
2327: 80        setc
2328: 6f        ret

2329: ae        pop   a
232a: 60        clrc
232b: 6f        ret

232c: 40        setp
232d: e5 23 29  mov   a,$2923
2330: ec 24 29  mov   y,$2924
2333: da 00     movw  $00,ya
2335: e8 f6     mov   a,#$f6
2337: 8d d6     mov   y,#$d6
2339: 9a 00     subw  ya,$00
233b: da 02     movw  $02,ya
233d: e8 01     mov   a,#$01
233f: c4 8a     mov   $8a,a
2341: e8 04     mov   a,#$04
2343: c4 8b     mov   $8b,a
2345: cd 00     mov   x,#$00
2347: e8 ff     mov   a,#$ff
2349: d5 ff 03  mov   $03ff+x,a
234c: 3d        inc   x
234d: c8 c8     cmp   x,#$c8
234f: 90 f8     bcc   $2349
2351: cd 00     mov   x,#$00
2353: 7d        mov   a,x
2354: d5 00 07  mov   $0700+x,a
2357: d5 01 07  mov   $0701+x,a
235a: 3d        inc   x
235b: 3d        inc   x
235c: 3d        inc   x
235d: 3d        inc   x
235e: c8 80     cmp   x,#$80
2360: 90 f2     bcc   $2354
2362: cd 00     mov   x,#$00
2364: e8 ff     mov   a,#$ff
2366: d5 c7 04  mov   $04c7+x,a
2369: 3d        inc   x
236a: c8 64     cmp   x,#$64
236c: 90 f8     bcc   $2366
236e: e8 00     mov   a,#$00
2370: 5d        mov   x,a
2371: d5 35 06  mov   $0635+x,a
2374: 3d        inc   x
2375: 3d        inc   x
2376: 3d        inc   x
2377: 3d        inc   x
2378: 3d        inc   x
2379: 3d        inc   x
237a: c8 78     cmp   x,#$78
237c: 90 f3     bcc   $2371
237e: 3f bd 27  call  $27bd
2381: 6f        ret

2382: 40        setp
2383: da a2     movw  $a2,ya
2385: 3f dc 23  call  $23dc
2388: 3f a0 23  call  $23a0
238b: b0 01     bcs   $238e
238d: 6f        ret

238e: ba a2     movw  ya,$a2
2390: da a8     movw  $a8,ya
2392: 3f 99 25  call  $2599
2395: 3f dc 23  call  $23dc
2398: ba a8     movw  ya,$a8
239a: da a2     movw  $a2,ya
239c: 3f a0 23  call  $23a0
239f: 6f        ret

23a0: 8d 00     mov   y,#$00
23a2: cb a6     mov   $a6,y
23a4: f9 68     mov   x,$68+y
23a6: f4 02     mov   a,$02+x
23a8: fb 03     mov   y,$03+x
23aa: 5a a2     cmpw  ya,$a2
23ac: b0 09     bcs   $23b7
23ae: eb a6     mov   y,$a6
23b0: fc        inc   y
23b1: 7e 8a     cmp   y,$8a
23b3: 90 ed     bcc   $23a2
23b5: 80        setc
23b6: 6f        ret

23b7: 9a a2     subw  ya,$a2
23b9: da a8     movw  $a8,ya
23bb: d4 02     mov   $02+x,a
23bd: db 03     mov   $03+x,y
23bf: f4 00     mov   a,$00+x
23c1: fb 01     mov   y,$01+x
23c3: da a4     movw  $a4,ya
23c5: ba a8     movw  ya,$a8
23c7: d0 05     bne   $23ce
23c9: 3f 1e 24  call  $241e
23cc: 2f 0a     bra   $23d8
23ce: f4 00     mov   a,$00+x
23d0: fb 01     mov   y,$01+x
23d2: 7a a2     addw  ya,$a2
23d4: d4 00     mov   $00+x,a
23d6: db 01     mov   $01+x,y
23d8: ba a4     movw  ya,$a4
23da: 60        clrc
23db: 6f        ret

23dc: cd 00     mov   x,#$00
23de: e8 00     mov   a,#$00
23e0: d4 68     mov   $68+x,a
23e2: 60        clrc
23e3: 88 04     adc   a,#$04
23e5: 3d        inc   x
23e6: 3e 8a     cmp   x,$8a
23e8: 90 f6     bcc   $23e0
23ea: 8d 00     mov   y,#$00
23ec: cb ac     mov   $ac,y
23ee: f9 68     mov   x,$68+y
23f0: d8 ad     mov   $ad,x
23f2: f4 02     mov   a,$02+x
23f4: fb 03     mov   y,$03+x
23f6: da aa     movw  $aa,ya
23f8: fc        inc   y
23f9: 7e 8a     cmp   y,$8a
23fb: b0 19     bcs   $2416
23fd: 6d        push  y
23fe: f9 68     mov   x,$68+y
2400: f4 02     mov   a,$02+x
2402: fb 03     mov   y,$03+x
2404: 5a aa     cmpw  ya,$aa
2406: b0 0b     bcs   $2413
2408: f9 68     mov   x,$68+y
240a: 7d        mov   a,x
240b: f8 ac     mov   x,$ac
240d: d4 68     mov   $68+x,a
240f: f8 ad     mov   x,$ad
2411: d9 68     mov   $68+y,x
2413: ee        pop   y
2414: 2f e2     bra   $23f8
2416: eb ac     mov   y,$ac
2418: fc        inc   y
2419: 7e 8a     cmp   y,$8a
241b: 90 cf     bcc   $23ec
241d: 6f        ret

241e: 40        setp
241f: 8b 8a     dec   $8a
2421: e4 8a     mov   a,$8a
2423: 1c        asl   a
2424: 1c        asl   a
2425: c4 8b     mov   $8b,a
2427: 68 00     cmp   a,#$00
2429: f0 0b     beq   $2436
242b: 3e 8b     cmp   x,$8b
242d: b0 07     bcs   $2436
242f: f4 04     mov   a,$04+x
2431: d4 00     mov   $00+x,a
2433: 3d        inc   x
2434: 2f f5     bra   $242b
2436: 6f        ret

2437: 40        setp
2438: da a2     movw  $a2,ya
243a: cd 00     mov   x,#$00
243c: 8d 00     mov   y,#$00
243e: f5 00 07  mov   a,$0700+x
2441: d0 05     bne   $2448
2443: f5 01 07  mov   a,$0701+x
2446: f0 0a     beq   $2452
2448: 3d        inc   x
2449: 3d        inc   x
244a: 3d        inc   x
244b: 3d        inc   x
244c: fc        inc   y
244d: ad 20     cmp   y,#$20
244f: 90 ed     bcc   $243e
2451: 6f        ret

2452: dd        mov   a,y
2453: 1c        asl   a
2454: 1c        asl   a
2455: 6d        push  y
2456: 2d        push  a
2457: e8 08     mov   a,#$08
2459: cf        mul   ya
245a: 5d        mov   x,a
245b: e4 a3     mov   a,$a3
245d: d5 36 05  mov   $0536+x,a
2460: fd        mov   y,a
2461: e4 a2     mov   a,$a2
2463: d5 35 05  mov   $0535+x,a
2466: 3f 82 23  call  $2382
2469: b0 0b     bcs   $2476
246b: ce        pop   x
246c: d5 00 07  mov   $0700+x,a
246f: dd        mov   a,y
2470: d5 01 07  mov   $0701+x,a
2473: ee        pop   y
2474: 60        clrc
2475: 6f        ret

2476: ae        pop   a
2477: ee        pop   y
2478: 80        setc
2479: 6f        ret

247a: 40        setp
247b: da a8     movw  $a8,ya
247d: 8f 35 ae  mov   $ae,#$35
2480: 8f 06 af  mov   $af,#$06
2483: cd 00     mov   x,#$00
2485: 8d 00     mov   y,#$00
2487: f7 ae     mov   a,($ae)+y
2489: f0 0c     beq   $2497
248b: fc        inc   y
248c: fc        inc   y
248d: fc        inc   y
248e: fc        inc   y
248f: fc        inc   y
2490: fc        inc   y
2491: 3d        inc   x
2492: c8 14     cmp   x,#$14
2494: 90 f1     bcc   $2487
2496: 6f        ret

2497: dd        mov   a,y
2498: 60        clrc
2499: 84 ae     adc   a,$ae
249b: c4 ae     mov   $ae,a
249d: 90 02     bcc   $24a1
249f: ab af     inc   $af
24a1: 8d 05     mov   y,#$05
24a3: e8 00     mov   a,#$00
24a5: d7 ae     mov   ($ae)+y,a
24a7: 9c        dec   a
24a8: 8d 00     mov   y,#$00
24aa: d7 ae     mov   ($ae)+y,a
24ac: 8d 04     mov   y,#$04
24ae: e4 a9     mov   a,$a9
24b0: d7 ae     mov   ($ae)+y,a
24b2: dc        dec   y
24b3: e4 a8     mov   a,$a8
24b5: d7 ae     mov   ($ae)+y,a
24b7: eb a9     mov   y,$a9
24b9: 4d        push  x
24ba: 3f 82 23  call  $2382
24bd: ce        pop   x
24be: b0 0b     bcs   $24cb
24c0: 6d        push  y
24c1: 8d 01     mov   y,#$01
24c3: d7 ae     mov   ($ae)+y,a
24c5: ae        pop   a
24c6: fc        inc   y
24c7: d7 ae     mov   ($ae)+y,a
24c9: 60        clrc
24ca: 6f        ret

24cb: e8 00     mov   a,#$00
24cd: 8d 00     mov   y,#$00
24cf: d7 ae     mov   ($ae)+y,a
24d1: 80        setc
24d2: 6f        ret

24d3: 6f        ret

24d4: 40        setp
24d5: f5 ff 03  mov   a,$03ff+x
24d8: 68 ff     cmp   a,#$ff
24da: f0 07     beq   $24e3
24dc: 3f e4 24  call  $24e4
24df: e8 00     mov   a,#$00
24e1: d7 a2     mov   ($a2)+y,a
24e3: 6f        ret

24e4: 8f 35 a2  mov   $a2,#$35
24e7: 8f 05 a3  mov   $a3,#$05
24ea: 8d 08     mov   y,#$08
24ec: cf        mul   ya
24ed: 7a a2     addw  ya,$a2
24ef: da a2     movw  $a2,ya
24f1: 8d 07     mov   y,#$07
24f3: 6f        ret

24f4: 40        setp
24f5: f5 c7 04  mov   a,$04c7+x
24f8: 68 ff     cmp   a,#$ff
24fa: f0 07     beq   $2503
24fc: 3f 04 25  call  $2504
24ff: e8 00     mov   a,#$00
2501: d7 a2     mov   ($a2)+y,a
2503: 6f        ret

2504: 8f 35 a2  mov   $a2,#$35
2507: 8f 06 a3  mov   $a3,#$06
250a: 8d 06     mov   y,#$06
250c: cf        mul   ya
250d: 7a a2     addw  ya,$a2
250f: da a2     movw  $a2,ya
2511: 8d 05     mov   y,#$05
2513: 6f        ret

2514: 40        setp
2515: e4 a3     mov   a,$a3
2517: f0 05     beq   $251e
2519: 78 1a 8a  cmp   $8a,#$1a
251c: 90 02     bcc   $2520
251e: 80        setc
251f: 6f        ret

2520: cd 00     mov   x,#$00
2522: f4 00     mov   a,$00+x
2524: fb 01     mov   y,$01+x
2526: 5a a2     cmpw  ya,$a2
2528: b0 08     bcs   $2532
252a: 3d        inc   x
252b: 3d        inc   x
252c: 3d        inc   x
252d: 3d        inc   x
252e: 3e 8b     cmp   x,$8b
2530: 90 f0     bcc   $2522
2532: d8 a6     mov   $a6,x
2534: f8 8b     mov   x,$8b
2536: 3e a6     cmp   x,$a6
2538: f0 07     beq   $2541
253a: 1d        dec   x
253b: f4 00     mov   a,$00+x
253d: d4 04     mov   $04+x,a
253f: 2f f5     bra   $2536
2541: ab 8a     inc   $8a
2543: e4 8b     mov   a,$8b
2545: 60        clrc
2546: 88 04     adc   a,#$04
2548: c4 8b     mov   $8b,a
254a: f8 a6     mov   x,$a6
254c: ba a2     movw  ya,$a2
254e: d4 00     mov   $00+x,a
2550: db 01     mov   $01+x,y
2552: ba a4     movw  ya,$a4
2554: d4 02     mov   $02+x,a
2556: db 03     mov   $03+x,y
2558: 7d        mov   a,x
2559: 60        clrc
255a: 88 04     adc   a,#$04
255c: 64 8b     cmp   a,$8b
255e: b0 03     bcs   $2563
2560: 3f 70 25  call  $2570
2563: e4 a6     mov   a,$a6
2565: 80        setc
2566: a8 04     sbc   a,#$04
2568: 30 04     bmi   $256e
256a: 5d        mov   x,a
256b: 3f 70 25  call  $2570
256e: 60        clrc
256f: 6f        ret

2570: f4 02     mov   a,$02+x
2572: fb 03     mov   y,$03+x
2574: da a2     movw  $a2,ya
2576: f4 00     mov   a,$00+x
2578: fb 01     mov   y,$01+x
257a: 7a a2     addw  ya,$a2
257c: da a4     movw  $a4,ya
257e: f4 04     mov   a,$04+x
2580: fb 05     mov   y,$05+x
2582: 5a a4     cmpw  ya,$a4
2584: f0 01     beq   $2587
2586: 6f        ret

2587: f4 06     mov   a,$06+x
2589: fb 07     mov   y,$07+x
258b: 7a a2     addw  ya,$a2
258d: d4 02     mov   $02+x,a
258f: db 03     mov   $03+x,y
2591: 3d        inc   x
2592: 3d        inc   x
2593: 3d        inc   x
2594: 3d        inc   x
2595: 3f 1e 24  call  $241e
2598: 6f        ret

2599: cd 00     mov   x,#$00
259b: f5 ff 03  mov   a,$03ff+x
259e: 68 ff     cmp   a,#$ff
25a0: f0 40     beq   $25e2
25a2: 8f 35 aa  mov   $aa,#$35
25a5: 8f 05 ab  mov   $ab,#$05
25a8: 8d 08     mov   y,#$08
25aa: cf        mul   ya
25ab: 7a aa     addw  ya,$aa
25ad: da aa     movw  $aa,ya
25af: 8d 07     mov   y,#$07
25b1: f7 aa     mov   a,($aa)+y
25b3: d0 2d     bne   $25e2
25b5: 8d 00     mov   y,#$00
25b7: f7 aa     mov   a,($aa)+y
25b9: c4 a4     mov   $a4,a
25bb: fc        inc   y
25bc: f7 aa     mov   a,($aa)+y
25be: c4 a5     mov   $a5,a
25c0: f5 ff 03  mov   a,$03ff+x
25c3: 1c        asl   a
25c4: 1c        asl   a
25c5: fd        mov   y,a
25c6: f6 00 07  mov   a,$0700+y
25c9: c4 a2     mov   $a2,a
25cb: f6 01 07  mov   a,$0701+y
25ce: c4 a3     mov   $a3,a
25d0: e8 00     mov   a,#$00
25d2: d6 00 07  mov   $0700+y,a
25d5: d6 01 07  mov   $0701+y,a
25d8: 4d        push  x
25d9: 3f 14 25  call  $2514
25dc: ce        pop   x
25dd: e8 ff     mov   a,#$ff
25df: d5 ff 03  mov   $03ff+x,a
25e2: 3d        inc   x
25e3: c8 c8     cmp   x,#$c8
25e5: 90 b4     bcc   $259b
25e7: cd 00     mov   x,#$00
25e9: f5 c7 04  mov   a,$04c7+x
25ec: 68 ff     cmp   a,#$ff
25ee: f0 3e     beq   $262e
25f0: 8f 35 aa  mov   $aa,#$35
25f3: 8f 06 ab  mov   $ab,#$06
25f6: 8d 06     mov   y,#$06
25f8: cf        mul   ya
25f9: 7a aa     addw  ya,$aa
25fb: da aa     movw  $aa,ya
25fd: 8d 00     mov   y,#$00
25ff: f7 aa     mov   a,($aa)+y
2601: f0 2b     beq   $262e
2603: 8d 05     mov   y,#$05
2605: f7 aa     mov   a,($aa)+y
2607: d0 25     bne   $262e
2609: 8d 03     mov   y,#$03
260b: f7 aa     mov   a,($aa)+y
260d: c4 a4     mov   $a4,a
260f: fc        inc   y
2610: f7 aa     mov   a,($aa)+y
2612: c4 a5     mov   $a5,a
2614: 8d 01     mov   y,#$01
2616: f7 aa     mov   a,($aa)+y
2618: c4 a2     mov   $a2,a
261a: fc        inc   y
261b: f7 aa     mov   a,($aa)+y
261d: c4 a3     mov   $a3,a
261f: e8 00     mov   a,#$00
2621: 8d 00     mov   y,#$00
2623: d7 aa     mov   ($aa)+y,a
2625: 9c        dec   a
2626: d5 c7 04  mov   $04c7+x,a
2629: 4d        push  x
262a: 3f 14 25  call  $2514
262d: ce        pop   x
262e: 3d        inc   x
262f: c8 64     cmp   x,#$64
2631: 90 b6     bcc   $25e9
2633: 6f        ret

2634: 40        setp
2635: 3f 82 14  call  $1482
2638: 90 01     bcc   $263b
263a: 6f        ret

263b: 5e 27 29  cmp   y,$2927
263e: b0 03     bcs   $2643
2640: 3f bd 27  call  $27bd
2643: 3f 43 27  call  $2743
2646: 8d 01     mov   y,#$01
2648: f7 a2     mov   a,($a2)+y
264a: f0 11     beq   $265d
264c: bc        inc   a
264d: fd        mov   y,a
264e: f7 a2     mov   a,($a2)+y
2650: 5d        mov   x,a
2651: f5 ff 03  mov   a,$03ff+x
2654: 68 ff     cmp   a,#$ff
2656: f0 6c     beq   $26c4
2658: dc        dec   y
2659: ad 02     cmp   y,#$02
265b: b0 f1     bcs   $264e
265d: 8d 00     mov   y,#$00
265f: f7 a2     mov   a,($a2)+y
2661: bc        inc   a
2662: bc        inc   a
2663: c4 a4     mov   $a4,a
2665: fc        inc   y
2666: f7 a2     mov   a,($a2)+y
2668: bc        inc   a
2669: bc        inc   a
266a: fd        mov   y,a
266b: 7e a4     cmp   y,$a4
266d: 90 05     bcc   $2674
266f: 3f a5 10  call  $10a5
2672: 2f 0a     bra   $267e
2674: f7 a2     mov   a,($a2)+y
2676: 3f ca 27  call  $27ca
2679: fc        inc   y
267a: 7e a4     cmp   y,$a4
267c: 90 f6     bcc   $2674
267e: cd 00     mov   x,#$00
2680: e7 a2     mov   a,($a2+x)
2682: bc        inc   a
2683: fd        mov   y,a
2684: 6d        push  y
2685: f7 a2     mov   a,($a2)+y
2687: 5d        mov   x,a
2688: f5 ff 03  mov   a,$03ff+x
268b: 68 ff     cmp   a,#$ff
268d: f0 2d     beq   $26bc
268f: 8f 35 a4  mov   $a4,#$35
2692: 8f 05 a5  mov   $a5,#$05
2695: 8d 08     mov   y,#$08
2697: cf        mul   ya
2698: 7a a4     addw  ya,$a4
269a: da a4     movw  $a4,ya
269c: 8d 07     mov   y,#$07
269e: f7 a4     mov   a,($a4)+y
26a0: 28 e0     and   a,#$e0
26a2: 0d        push  psw
26a3: f7 a4     mov   a,($a4)+y
26a5: 8e        pop   psw
26a6: f0 05     beq   $26ad
26a8: 80        setc
26a9: a8 20     sbc   a,#$20
26ab: d7 a4     mov   ($a4)+y,a
26ad: f7 a4     mov   a,($a4)+y
26af: 28 0f     and   a,#$0f
26b1: 68 0f     cmp   a,#$0f
26b3: 0d        push  psw
26b4: f7 a4     mov   a,($a4)+y
26b6: 8e        pop   psw
26b7: f0 03     beq   $26bc
26b9: bc        inc   a
26ba: d7 a4     mov   ($a4)+y,a
26bc: ee        pop   y
26bd: dc        dec   y
26be: ad 02     cmp   y,#$02
26c0: b0 c2     bcs   $2684
26c2: 60        clrc
26c3: 6f        ret

26c4: 80        setc
26c5: 6f        ret

26c6: 40        setp
26c7: 3f 82 14  call  $1482
26ca: 90 01     bcc   $26cd
26cc: 6f        ret

26cd: 3f 43 27  call  $2743
26d0: cd 00     mov   x,#$00
26d2: e7 a2     mov   a,($a2+x)
26d4: f0 2f     beq   $2705
26d6: bc        inc   a
26d7: fd        mov   y,a
26d8: 6d        push  y
26d9: f7 a2     mov   a,($a2)+y
26db: 5d        mov   x,a
26dc: f5 ff 03  mov   a,$03ff+x
26df: 68 ff     cmp   a,#$ff
26e1: f0 1c     beq   $26ff
26e3: 8f 35 a4  mov   $a4,#$35
26e6: 8f 05 a5  mov   $a5,#$05
26e9: 8d 08     mov   y,#$08
26eb: cf        mul   ya
26ec: 7a a4     addw  ya,$a4
26ee: da a4     movw  $a4,ya
26f0: 8d 07     mov   y,#$07
26f2: f7 a4     mov   a,($a4)+y
26f4: 28 0f     and   a,#$0f
26f6: 0d        push  psw
26f7: f7 a4     mov   a,($a4)+y
26f9: 8e        pop   psw
26fa: f0 03     beq   $26ff
26fc: 9c        dec   a
26fd: d7 a4     mov   ($a4)+y,a
26ff: ee        pop   y
2700: dc        dec   y
2701: ad 02     cmp   y,#$02
2703: b0 d3     bcs   $26d8
2705: 6f        ret

2706: 40        setp
2707: 3f 82 14  call  $1482
270a: 90 01     bcc   $270d
270c: 6f        ret

270d: 3f 43 27  call  $2743
2710: cd 00     mov   x,#$00
2712: e7 a2     mov   a,($a2+x)
2714: f0 2c     beq   $2742
2716: bc        inc   a
2717: fd        mov   y,a
2718: 6d        push  y
2719: f7 a2     mov   a,($a2)+y
271b: 5d        mov   x,a
271c: f5 ff 03  mov   a,$03ff+x
271f: 68 ff     cmp   a,#$ff
2721: f0 19     beq   $273c
2723: 8f 35 a4  mov   $a4,#$35
2726: 8f 05 a5  mov   $a5,#$05
2729: 8d 08     mov   y,#$08
272b: cf        mul   ya
272c: 7a a4     addw  ya,$a4
272e: da a4     movw  $a4,ya
2730: 8d 07     mov   y,#$07
2732: f7 a4     mov   a,($a4)+y
2734: 68 20     cmp   a,#$20
2736: 90 04     bcc   $273c
2738: a8 20     sbc   a,#$20
273a: d7 a4     mov   ($a4)+y,a
273c: ee        pop   y
273d: dc        dec   y
273e: ad 02     cmp   y,#$02
2740: b0 d6     bcs   $2718
2742: 6f        ret

2743: e5 25 29  mov   a,$2925
2746: c4 a2     mov   $a2,a
2748: e5 26 29  mov   a,$2926
274b: c4 a3     mov   $a3,a
274d: cd 00     mov   x,#$00
274f: ad 00     cmp   y,#$00
2751: f0 0f     beq   $2762
2753: e7 a2     mov   a,($a2+x)
2755: bc        inc   a
2756: bc        inc   a
2757: 6d        push  y
2758: 8d 00     mov   y,#$00
275a: 7a a2     addw  ya,$a2
275c: da a2     movw  $a2,ya
275e: ee        pop   y
275f: dc        dec   y
2760: 2f ed     bra   $274f
2762: 6f        ret

2763: 40        setp
2764: 3f 82 14  call  $1482
2767: 90 01     bcc   $276a
2769: 6f        ret

276a: f6 c7 04  mov   a,$04c7+y
276d: 68 ff     cmp   a,#$ff
276f: f0 10     beq   $2781
2771: 3f 04 25  call  $2504
2774: f7 a2     mov   a,($a2)+y
2776: 28 0f     and   a,#$0f
2778: 0d        push  psw
2779: f7 a2     mov   a,($a2)+y
277b: 8e        pop   psw
277c: f0 03     beq   $2781
277e: 9c        dec   a
277f: d7 a2     mov   ($a2)+y,a
2781: 6f        ret

2782: 40        setp
2783: 3f 82 14  call  $1482
2786: 90 01     bcc   $2789
2788: 6f        ret

2789: f6 c7 04  mov   a,$04c7+y
278c: 68 ff     cmp   a,#$ff
278e: f0 12     beq   $27a2
2790: 3f 04 25  call  $2504
2793: f7 a2     mov   a,($a2)+y
2795: 28 e0     and   a,#$e0
2797: 0d        push  psw
2798: f7 a2     mov   a,($a2)+y
279a: 8e        pop   psw
279b: f0 05     beq   $27a2
279d: 80        setc
279e: a8 20     sbc   a,#$20
27a0: d7 a2     mov   ($a2)+y,a
27a2: 6f        ret

27a3: 40        setp
27a4: 3f 82 14  call  $1482
27a7: 90 01     bcc   $27aa
27a9: 6f        ret

27aa: 3f 89 27  call  $2789
27ad: f7 a2     mov   a,($a2)+y
27af: 28 0f     and   a,#$0f
27b1: 68 0f     cmp   a,#$0f
27b3: 0d        push  psw
27b4: f7 a2     mov   a,($a2)+y
27b6: 8e        pop   psw
27b7: f0 03     beq   $27bc
27b9: bc        inc   a
27ba: d7 a2     mov   ($a2)+y,a
27bc: 6f        ret

27bd: cd 00     mov   x,#$00
27bf: e8 ff     mov   a,#$ff
27c1: d5 2b 05  mov   $052b+x,a
27c4: 3d        inc   x
27c5: c8 0a     cmp   x,#$0a
27c7: 90 f8     bcc   $27c1
27c9: 6f        ret

27ca: 2d        push  a
27cb: cd 00     mov   x,#$00
27cd: e8 ff     mov   a,#$ff
27cf: 75 2b 05  cmp   a,$052b+x
27d2: f0 07     beq   $27db
27d4: 3d        inc   x
27d5: c8 0a     cmp   x,#$0a
27d7: 90 f6     bcc   $27cf
27d9: ae        pop   a
27da: 6f        ret

27db: ae        pop   a
27dc: d5 2b 05  mov   $052b+x,a
27df: 60        clrc
27e0: 6f        ret

27e1: 7d        mov   a,x
27e2: cd 00     mov   x,#$00
27e4: 75 2b 05  cmp   a,$052b+x
27e7: f0 06     beq   $27ef
27e9: 3d        inc   x
27ea: c8 0a     cmp   x,#$0a
27ec: 90 f6     bcc   $27e4
27ee: 6f        ret

27ef: e8 ff     mov   a,#$ff
27f1: d5 2b 05  mov   $052b+x,a
27f4: 60        clrc
27f5: 6f        ret

27f6: 40        setp
27f7: ba 00     movw  ya,$00
27f9: da 9e     movw  $9e,ya
27fb: 7a 02     addw  ya,$02
27fd: da 9c     movw  $9c,ya
27ff: 3f 17 28  call  $2817
2802: 90 06     bcc   $280a
2804: 3f 65 28  call  $2865
2807: 90 01     bcc   $280a
2809: 6f        ret

280a: e4 8a     mov   a,$8a
280c: 68 02     cmp   a,#$02
280e: 90 e7     bcc   $27f7
2810: cd 00     mov   x,#$00
2812: 3f 70 25  call  $2570
2815: 2f e0     bra   $27f7
2817: 8f 35 a2  mov   $a2,#$35
281a: 8f 06 a3  mov   $a3,#$06
281d: cd 00     mov   x,#$00
281f: 8d 00     mov   y,#$00
2821: f7 a2     mov   a,($a2)+y
2823: f0 13     beq   $2838
2825: 8d 05     mov   y,#$05
2827: f7 a2     mov   a,($a2)+y
2829: f0 0d     beq   $2838
282b: 8d 02     mov   y,#$02
282d: f7 a2     mov   a,($a2)+y
282f: 2d        push  a
2830: dc        dec   y
2831: f7 a2     mov   a,($a2)+y
2833: ee        pop   y
2834: 5a 9c     cmpw  ya,$9c
2836: f0 0e     beq   $2846
2838: 8d 00     mov   y,#$00
283a: e8 06     mov   a,#$06
283c: 7a a2     addw  ya,$a2
283e: da a2     movw  $a2,ya
2840: 3d        inc   x
2841: c8 14     cmp   x,#$14
2843: 90 da     bcc   $281f
2845: 6f        ret

2846: 8d 03     mov   y,#$03
2848: f7 a2     mov   a,($a2)+y
284a: c4 a0     mov   $a0,a
284c: fc        inc   y
284d: f7 a2     mov   a,($a2)+y
284f: c4 a1     mov   $a1,a
2851: e4 9e     mov   a,$9e
2853: 8d 01     mov   y,#$01
2855: d7 a2     mov   ($a2)+y,a
2857: fc        inc   y
2858: e4 9f     mov   a,$9f
285a: d7 a2     mov   ($a2)+y,a
285c: 3f d1 28  call  $28d1
285f: ba 9e     movw  ya,$9e
2861: da 00     movw  $00,ya
2863: 60        clrc
2864: 6f        ret

2865: 8f 00 a2  mov   $a2,#$00
2868: 8f 07 a3  mov   $a3,#$07
286b: 8f 35 a4  mov   $a4,#$35
286e: 8f 05 a5  mov   $a5,#$05
2871: cd 00     mov   x,#$00
2873: 8d 07     mov   y,#$07
2875: f7 a4     mov   a,($a4)+y
2877: f0 0d     beq   $2886
2879: 8d 01     mov   y,#$01
287b: f7 a2     mov   a,($a2)+y
287d: 2d        push  a
287e: dc        dec   y
287f: f7 a2     mov   a,($a2)+y
2881: ee        pop   y
2882: 5a 9c     cmpw  ya,$9c
2884: f0 16     beq   $289c
2886: 8d 00     mov   y,#$00
2888: e8 04     mov   a,#$04
288a: 7a a2     addw  ya,$a2
288c: da a2     movw  $a2,ya
288e: 8d 00     mov   y,#$00
2890: e8 08     mov   a,#$08
2892: 7a a4     addw  ya,$a4
2894: da a4     movw  $a4,ya
2896: 3d        inc   x
2897: c8 14     cmp   x,#$14
2899: 90 d8     bcc   $2873
289b: 6f        ret

289c: 8d 00     mov   y,#$00
289e: f7 a4     mov   a,($a4)+y
28a0: c4 a0     mov   $a0,a
28a2: fc        inc   y
28a3: f7 a4     mov   a,($a4)+y
28a5: c4 a1     mov   $a1,a
28a7: 8d 00     mov   y,#$00
28a9: e4 9e     mov   a,$9e
28ab: d7 a2     mov   ($a2)+y,a
28ad: fc        inc   y
28ae: e4 9f     mov   a,$9f
28b0: d7 a2     mov   ($a2)+y,a
28b2: 8d 03     mov   y,#$03
28b4: f7 a2     mov   a,($a2)+y
28b6: 2d        push  a
28b7: dc        dec   y
28b8: f7 a2     mov   a,($a2)+y
28ba: ee        pop   y
28bb: 7a 9e     addw  ya,$9e
28bd: 9a 9c     subw  ya,$9c
28bf: 6d        push  y
28c0: 8d 02     mov   y,#$02
28c2: d7 a2     mov   ($a2)+y,a
28c4: ae        pop   a
28c5: fc        inc   y
28c6: d7 a2     mov   ($a2)+y,a
28c8: 3f d1 28  call  $28d1
28cb: ba 9e     movw  ya,$9e
28cd: da 00     movw  $00,ya
28cf: 60        clrc
28d0: 6f        ret

28d1: 8d 00     mov   y,#$00
28d3: e4 a1     mov   a,$a1
28d5: f0 38     beq   $290f
28d7: f7 9c     mov   a,($9c)+y
28d9: d7 9e     mov   ($9e)+y,a
28db: fc        inc   y
28dc: f7 9c     mov   a,($9c)+y
28de: d7 9e     mov   ($9e)+y,a
28e0: fc        inc   y
28e1: f7 9c     mov   a,($9c)+y
28e3: d7 9e     mov   ($9e)+y,a
28e5: fc        inc   y
28e6: f7 9c     mov   a,($9c)+y
28e8: d7 9e     mov   ($9e)+y,a
28ea: fc        inc   y
28eb: f7 9c     mov   a,($9c)+y
28ed: d7 9e     mov   ($9e)+y,a
28ef: fc        inc   y
28f0: f7 9c     mov   a,($9c)+y
28f2: d7 9e     mov   ($9e)+y,a
28f4: fc        inc   y
28f5: f7 9c     mov   a,($9c)+y
28f7: d7 9e     mov   ($9e)+y,a
28f9: fc        inc   y
28fa: f7 9c     mov   a,($9c)+y
28fc: d7 9e     mov   ($9e)+y,a
28fe: fc        inc   y
28ff: d0 d6     bne   $28d7
2901: ab 9f     inc   $9f
2903: ab 9d     inc   $9d
2905: 3f c3 10  call  $10c3
2908: 40        setp
2909: 8d 00     mov   y,#$00
290b: 8b a1     dec   $a1
290d: d0 c8     bne   $28d7
290f: e4 a0     mov   a,$a0
2911: f0 08     beq   $291b
2913: f7 9c     mov   a,($9c)+y
2915: d7 9e     mov   ($9e)+y,a
2917: fc        inc   y
2918: 6e a0 f8  dbnz  $a0,$2913
291b: dd        mov   a,y
291c: 8d 00     mov   y,#$00
291e: 7a 9e     addw  ya,$9e
2920: da 9e     movw  $9e,ya
2922: 6f        ret

2923: db $4c,$2a
2925: db $28,$29
2927: db $25
