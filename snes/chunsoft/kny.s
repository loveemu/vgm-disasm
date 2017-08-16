; Kamaitachi no Yoru SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Otogirisou (1992)
; * Dragon Quest 5 (1992)
; * Torneco no Daibouken: Fushigi no Dungeon (1993)
; * Kamaitachi no Yoru (1994)

; DSP reg initialization table
08a4: db $6c,$f0 ; DSP FLG reset
08a6: db $7d,$05 ; echo delay 80ms
08a8: db $6d,$d7 ; echo start addr $d700
08aa: db $1c,$70 ; main volume R #$70
08ac: db $0c,$70 ; main volume L #$70
08ae: db $3c,$00 ; echo volume R zero
08b0: db $2c,$00 ; echo volume L zero
08b2: db $4c,$00 ; key on
08b4: db $5c,$00 ; key off
08b6: db $6c,$23 ; DSP FLG echo on, noise clock 25 Hz
08b8: db $0d,$00 ; echo feedback zero
08ba: db $2d,$00 ; pitch modulation off
08bc: db $3d,$00 ; noise off
08be: db $4d,$00 ; echo off
08c0: db $5d,$08 ; sample dir $0800
08c2: db $0d,$00 ; echo feedback zero
08c4: db $00     ; end of table

; vcmd dispatch table
08c5: dw $1bb9  ; db - repeat break (alternative)
08c7: dw $1bbe  ; dc - repeat twice (alternative)
08c9: dw $1ad8  ; dd - set release rate
08cb: dw $1ad5  ; de - set ADSR and release rate
08cd: dw $1992  ; df - surround
08cf: dw $195f  ; e0 - conditional jump
08d1: dw $1951  ; e1 - increase counter (to communicate with CPU)
08d3: dw $199e  ; e2 - set pitch envelope (vibrato)
08d5: dw $19b3  ; e3 - noise on
08d7: dw $19b7  ; e4 - noise off
08d9: dw $19bb  ; e5 - master volume fade
08db: dw $19d9  ; e6 - volume fade
08dd: dw $19eb  ; e7 - channel fade in/out?
08df: dw $1a04  ; e8 - pan fade
08e1: dw $1a42  ; e9 - tuning
08e3: dw $1a48  ; ea - jump
08e5: dw $1a5e  ; eb - tempo (relative)
08e7: dw $1a7a  ; ec - set duration rate directly
08e9: dw $1aa1  ; ed - set channel master volume
08eb: dw $1aac  ; ee - set panpot
08ed: dw $1ab7  ; ef - set ADSR1/2 param
08ef: dw $1aec  ; f0 - set patch
08f1: dw $1ba5  ; f1 - duration copy on
08f3: dw $1ba5  ; f2 - duration copy on (mainly used)
08f5: dw $1bb0  ; f3 - duration copy off
08f7: dw $1bcb  ; f4 - repeat twice
08f9: dw $1be2  ; f5 - repeat until
08fb: dw $1be8  ; f6 - set volume
08fd: dw $1bf3  ; f7 - nop
08ff: dw $1bf4  ; f8 - call subroutine
0901: dw $1c36  ; f9 - return from subroutine
0903: dw $1c4f  ; fa - transpose (absolute)
0905: dw $1c56  ; fb - pitch slide
0907: dw $1c70  ; fc - echo on
0909: dw $1c74  ; fd - echo off
090b: dw $1c78  ; fe - run miniseq

; channel # to bitmask table
090d: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
0915: dw $1f02 ; c
0917: dw $20da ; c+
0919: dw $22ce ; d
091b: dw $24e0 ; d+
091d: dw $2711 ; e
091f: dw $2964 ; f
0921: dw $2bda ; f+
0923: dw $2e76 ; g
0925: dw $3139 ; g+
0927: dw $3426 ; a
0929: dw $3740 ; a+
092b: dw $3a89 ; b
092d: dw $3e04 ; c
092f: dw $41b4 ; c+

; minivcmd sequence table
0931: dw $097f  ; 00
0933: dw $0982  ; 01
0935: dw $0985  ; 02
0937: dw $0988  ; 03
0939: dw $098b  ; 04
093b: dw $098e  ; 05
093d: dw $0991  ; 06
093f: dw $0994  ; 07
0941: dw $0997  ; 08
0943: dw $099a  ; 09
0945: dw $099d  ; 0a
0947: dw $09a0  ; 0b
0949: dw $09a3  ; 0c
094b: dw $09a6  ; 0d
094d: dw $09a9  ; 0e
094f: dw $09ac  ; 0f
0951: dw $09af  ; 10
0953: dw $09b2  ; 11
0955: dw $09b5  ; 12
0957: dw $09b8  ; 13
0959: dw $09bb  ; 14
095b: dw $09be  ; 15
095d: dw $09c5  ; 16
095f: dw $09e1  ; 17
0961: dw $09fd  ; 18
0963: dw $09fd  ; 19
0965: dw $0a19  ; 1a
0967: dw $0a35  ; 1b
0969: dw $0a38  ; 1c
096b: dw $0a3b  ; 1d
096d: dw $0a3e  ; 1e
096f: dw $0a41  ; 1f
0971: dw $0a43  ; 20
0973: dw $0a45  ; 21
0975: dw $0a49  ; 22
0979: dw $0a4d  ; 23
0979: dw $0a51  ; 24
097b: dw $0a55  ; 25
097d: dw $0a59  ; 26

; minivcmd sequences
; minivcmd 00 - master volume
; minivcmd 01 - master volume fade
; minivcmd 02 - set tempo
; minivcmd 03 - nop?
; minivcmd 04 - master volume fade variation?
; minivcmd 05 - set variable for conditional jump
; minivcmd 06-0f - nop
; minivcmd 10 - set echo filter
; minivcmd 11 - (change MVOL and EVOL)
; minivcmd 12 - (change MVOL and EVOL)
; minivcmd 13 - set MVOL
; minivcmd 14 - set EVOL
; minivcmd 15 - set noise clock
; minivcmd 16 - set echo feedback
; minivcmd 17 - set echo delay
; minivcmd 18 - master volume fade variation?
; minivcmd 19-1f - nop
; minivcmd 20-bf (higher 4 bits - 2 = track #)
;   minivcmd x0 - voice fade in/out?
;   minivcmd x1 - channel master volume
;   minivcmd x2 - echo on
;   minivcmd x3 - echo off
;   minivcmd x4 - noise on
;   minivcmd x5 - noise off
;   minivcmd x6 - stop voice (end of track)
;   minivcmd x7 - surround (no surround)
;   minivcmd x8 - surround (reverse left channel)
;   minivcmd x9 - surround (reverse right channel)
;   minivcmd xa - surround (reverse left/right channel)
;   minivcmd xb-xf - nop
; minivcmd c0-fd - end (unused)
; minivcmd fe - write to dsp
; minivcmd ff - end

; miniseq 00
097f: db $05,$00      ; set cond_var = 0x00
0981: db $ff
; miniseq 01
0982: db $05,$01      ; set cond_var = 0x01
0984: db $ff
; miniseq 02
0985: db $05,$02      ; set cond_var = 0x02
0987: db $ff
; miniseq 03
0988: db $05,$03      ; set cond_var = 0x03
098a: db $ff
; miniseq 04
098b: db $05,$04      ; set cond_var = 0x04
098d: db $ff
; miniseq 05
098e: db $05,$05      ; set cond_var = 0x05
0990: db $ff
; miniseq 06
0991: db $05,$06      ; set cond_var = 0x06
0993: db $ff
; miniseq 07
0994: db $05,$07      ; set cond_var = 0x07
0996: db $ff
; miniseq 08
0997: db $05,$08      ; set cond_var = 0x08
0999: db $ff
; miniseq 09
099a: db $05,$09      ; set cond_var = 0x09
099c: db $ff
; miniseq 0a
099d: db $05,$0a      ; set cond_var = 0x0a
099f: db $ff
; miniseq 0b
09a0: db $05,$0b      ; set cond_var = 0x0b
09a2: db $ff
; miniseq 0c
09a3: db $05,$0c      ; set cond_var = 0x0c
09a5: db $ff
; miniseq 0d
09a6: db $05,$0d      ; set cond_var = 0x0d
09a8: db $ff
; miniseq 0e
09a9: db $05,$0e      ; set cond_var = 0x0e
09ab: db $ff
; miniseq 0f
09ac: db $05,$0f      ; set cond_var = 0x0f
09ae: db $ff
; miniseq 10
09af: db $05,$10      ; set cond_var = 0x10
09b1: db $ff
; miniseq 11
09b2: db $05,$11      ; set cond_var = 0x11
09b4: db $ff
; miniseq 12
09b5: db $05,$12      ; set cond_var = 0x12
09b7: db $ff
; miniseq 13
09b8: db $05,$13      ; set cond_var = 0x13
09ba: db $ff
; miniseq 14
09bb: db $05,$14      ; set cond_var = 0x14
09bd: db $ff
; miniseq 15
09be: db $13,$60,$60  ; set MVOL L/R
09c1: db $14,$00,$00  ; set EVOL L/R
09c4: db $ff
; miniseq 16
09c5: db $10,$ff,$0a,$1e,$32,$32,$1e,$0a,$ff ; set FIR
09ce: db $16,$0e      ; set EFB = 0x0e
09d0: db $17,$05      ; set EDL = 5
09d2: db $22,$32,$42,$52,$62,$72,$82,$92 ; echo on all channels
09da: db $13,$78,$78  ; set MVOL L/R
09dd: db $14,$28,$d8  ; set EVOL L/R
09e0: db $ff
; miniseq 17
09e1: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff ; set FIR
09ea: db $16,$0c      ; set EFB
09ec: db $17,$05      ; set EDL
09ee: db $22,$32,$42,$52,$62,$72,$82,$92 ; echo on all channels
09f6: db $13,$7f,$7f  ; set MVOL L/R
09f9: db $14,$14,$ec  ; set EVOL L/R
09fc: db $ff
; miniseq 18,19
09fd: db $10,$ff,$08,$17,$24,$24,$17,$08,$ff ; set FIR
0a06: db $16,$32      ; set EFB
0a08: db $17,$05      ; set EDL
0a0a: db $22,$32,$42,$52,$62,$72,$82,$92 ; echo on all channels
0a12: db $13,$6e,$6e  ; set MVOL L/R
0a15: db $14,$40,$40  ; set EVOL L/R
0a18: db $ff
; miniseq 1a
0a19: db $10,$ff,$0a,$1e,$32,$32,$1e,$0a,$ff ; set FIR
0a22: db $16,$1c      ; set EFB
0a24: db $17,$04      ; set EDL
0a26: db $22,$32,$42,$52,$62,$72,$82,$92 ; echo on all channels
0a2e: db $13,$78,$78  ; set MVOL L/R
0a31: db $14,$18,$e8  ; set EVOL L/R
0a34: db $ff
; miniseq 1b
0a35: db $04,$ff
0a37: db $ff
; miniseq 1c
0a38: db $00,$24
0a3a: db $ff
; miniseq 1d
0a3b: db $00,$44
0a3d: db $ff
; miniseq 1e
0a3e: db $00,$80
0a40: db $ff
; miniseq 1f
0a41: db $11
0a42: db $ff
; miniseq 20
0a43: db $12
0a44: db $ff
; miniseq 21
0a45: db $01,$ec,$38
0a48: db $ff
; miniseq 22
0a49: db $01,$14,$80
0a4c: db $ff
; miniseq 23
0a4d: db $01,$f6,$24
0a50: db $ff
; miniseq 24
0a51: db $01,$0a,$80
0a54: db $ff
; miniseq 25
0a55: db $01,$e2,$24
0a58: db $ff
; miniseq 26
0a59: db $01,$1e,$80
0a5c: db $ff

; pitch envelope pointers
0a5d: dw $0a6f  ; 00
0a5f: dw $0ad2  ; 01
0a61: dw $0b1f  ; 02
0a63: dw $0b59  ; 03
0a65: dw $0a90  ; 04
0a67: dw $0b34  ; 05
0a69: dw $0ab1  ; 06
0a6b: dw $0b68  ; 07
0a6d: dw $0b81  ; 08

; pitch envelope format:
; - envelope body size (1 byte)
; - envelope loop offset (1 byte)
; - envelope body (N bytes)
; - terminator $80
0a6f: db $1e    ; 00
0a70: db $16
0a71: db $00,$05,$01,$05,$00,$05,$ff,$05,$00,$05,$02,$05,$00,$05,$fc,$05
0a81: db $00,$05,$08,$05,$00,$05,$f4,$05,$00,$05,$0c,$05,$00,$01
0a8f: db $80
0a90: db $1e    ; 04
0a91: db $16,$00,$03,$01,$03,$00,$03,$ff,$03,$00,$03,$02,$03,$00,$03,$fc
0aa1: db $03,$00,$03,$08,$03,$00,$03,$f4,$03,$00,$03,$0c,$03,$00
0aaf: db $01,$80
0ab1: db $1e    ; 06
0ab2: db $16,$00,$04,$01,$04,$00,$04,$ff,$04,$00,$04,$02,$04,$00,$04,$fc
0ac2: db $04,$00,$04,$08,$04,$00,$04,$f4,$04,$00,$04,$0c,$04,$00
0ad0: db $01,$80
0ad2: db $4a    ; 01
0ad3: db $32,$00,$01,$01,$02,$02,$02,$03,$01,$02,$02,$01,$02,$00,$01,$fe
0ae3: db $02,$fc,$02,$fa,$01,$fc,$02,$fe,$02,$00,$01,$04,$02,$08,$02,$0c
0af3: db $01,$08,$02,$04,$02,$00,$01,$f8,$02,$f0,$02,$e8,$01,$f0,$02,$f8
0b03: db $02,$00,$01,$0a,$02,$14,$02,$1e,$01,$14,$02,$0a,$02,$00,$01,$f6
0b13: db $02,$ec,$02,$e2,$01,$ec,$02,$f6,$02,$00
0b1d: db $01,$80
0b1f: db $12    ; 02
0b20: db $0a,$00,$03,$02,$03,$00,$03,$f8,$03,$00,$03,$0c,$03,$00,$03,$f4
0b30: db $03,$00
0b32: db $01,$80
0b34: db $22    ; 05
0b35: db $1a,$00,$05,$01,$05,$00,$05,$fe,$05,$00,$05,$03,$05,$00,$05,$fc
0b45: db $05,$00,$05,$05,$05,$00,$05,$fa,$05,$00,$05,$07,$05,$00,$05,$f9
0b55: db $05,$00
0b57: db $01,$80
0b59: db $0c    ; 03
0b5a: db $04,$00,$0a,$18,$03,$00,$03,$e8,$03,$00,$03,$00
0b66: db $01,$80
0b68: db $16    ; 07
0b69: db $0e,$00,$0a,$01,$02,$00,$02,$ff,$02,$00,$02,$02,$02,$00,$02,$fd
0b79: db $02,$00,$02,$03,$02,$00
0b7f: db $01,$80
0b81: db $16    ; 08 (broken?)
0b82: db $02,$0c,$0a,$1c,$0e,$0e,$0a,$02,$0a,$f4,$12,$e8,$10,$de,$0a,$ec
0b92: db $0c,$f4,$0a,$00,$14

0b97: c0        di
0b98: cd ff     mov   x,#$ff
0b9a: bd        mov   sp,x
0b9b: 3f 10 13  call  $1310
0b9e: 40        setp
0b9f: 3f c6 11  call  $11c6
0ba2: 3f d9 0b  call  $0bd9
0ba5: 2f f7     bra   $0b9e

; cpu cmd dispatch table
0ba7: dw $0be6  ; 00
0ba9: dw $0c99  ; 01
0bab: dw $0d0a  ; 02
0bad: dw $0d1e  ; 03
0baf: dw $0d9e  ; 04
0bb1: dw $0dc9  ; 05
0bb3: dw $0e00  ; 06
0bb5: dw $0e0a  ; 07
0bb7: dw $0e18  ; 08
0bb9: dw $0e1e  ; 09
0bbb: dw $0e41  ; 0a
0bbd: dw $0e4b  ; 0b
0bbf: dw $0e4e  ; 0c
0bc1: dw $0eca  ; 0d
0bc3: dw $0ee6  ; 0e
0bc5: dw $0f68  ; 0f
0bc7: dw $0f83  ; 10
0bc9: dw $1009  ; 11
0bcb: dw $1013  ; 12
0bcd: dw $101d  ; 13
0bcf: dw $1022  ; 14
0bd1: dw $1068  ; 15
0bd3: dw $10db  ; 16
0bd5: dw $1111  ; 17
0bd7: dw $112a  ; 18

; dispatch cpu cmd
0bd9: 40        setp
0bda: 68 19     cmp   a,#$19
0bdc: b0 07     bcs   $0be5
0bde: 2d        push  a
0bdf: 1c        asl   a
0be0: 5d        mov   x,a
0be1: ae        pop   a
0be2: 1f a7 0b  jmp   ($0ba7+x)
0be5: 6f        ret

; cpu cmd 00
0be6: 2d        push  a
0be7: 3f 6e 10  call  $106e
0bea: ae        pop   a
0beb: c4 98     mov   $98,a
0bed: e5 f6 00  mov   a,$00f6
0bf0: c4 90     mov   $90,a
0bf2: 5d        mov   x,a
0bf3: f5 10 04  mov   a,$0410+x
0bf6: 68 ff     cmp   a,#$ff
0bf8: f0 27     beq   $0c21
0bfa: 2d        push  a
0bfb: 3f dd 2a  call  $2add
0bfe: ae        pop   a
0bff: 90 19     bcc   $0c1a
0c01: 3f cb 27  call  $27cb
0c04: f7 a3     mov   a,($a3)+y
0c06: 28 e0     and   a,#$e0
0c08: 0d        push  psw
0c09: f7 a3     mov   a,($a3)+y
0c0b: 8e        pop   psw
0c0c: d0 03     bne   $0c11
0c0e: 60        clrc
0c0f: 88 20     adc   a,#$20
0c11: 78 00 98  cmp   $98,#$00
0c14: f0 02     beq   $0c18
0c16: 08 10     or    a,#$10
0c18: d7 a3     mov   ($a3)+y,a
0c1a: 3f e7 12  call  $12e7
0c1d: 8f ff 90  mov   $90,#$ff
0c20: 6f        ret

0c21: 3f e2 12  call  $12e2
0c24: 3f c6 11  call  $11c6
0c27: b0 6c     bcs   $0c95
0c29: ec f6 00  mov   y,$00f6
0c2c: 80        setc
0c2d: a8 07     sbc   a,#$07
0c2f: b0 01     bcs   $0c32
0c31: dc        dec   y
0c32: 3f 1e 27  call  $271e
0c35: 90 07     bcc   $0c3e
0c37: 3f e7 12  call  $12e7
0c3a: 8f ff 90  mov   $90,#$ff
0c3d: 6f        ret

0c3e: 3f e2 12  call  $12e2
0c41: dd        mov   a,y
0c42: c4 92     mov   $92,a
0c44: 5d        mov   x,a
0c45: 40        setp
0c46: c4 93     mov   $93,a
0c48: e8 00     mov   a,#$00
0c4a: 0b 93     asl   $93
0c4c: 3c        rol   a
0c4d: 0b 93     asl   $93
0c4f: 3c        rol   a
0c50: 60        clrc
0c51: 88 08     adc   a,#$08
0c53: c4 94     mov   $94,a
0c55: 8d 00     mov   y,#$00
0c57: f7 93     mov   a,($93)+y
0c59: c4 8c     mov   $8c,a
0c5b: fc        inc   y
0c5c: f7 93     mov   a,($93)+y
0c5e: c4 8d     mov   $8d,a
0c60: 8f e6 95  mov   $95,#$e6
0c63: 8f 05 96  mov   $96,#$05
0c66: 7d        mov   a,x
0c67: 8d 08     mov   y,#$08
0c69: cf        mul   ya
0c6a: 7a 95     addw  ya,$95
0c6c: da 95     movw  $95,ya
0c6e: 8d 00     mov   y,#$00
0c70: f7 95     mov   a,($95)+y
0c72: c4 8e     mov   $8e,a
0c74: fc        inc   y
0c75: f7 95     mov   a,($95)+y
0c77: c4 8f     mov   $8f,a
0c79: f8 90     mov   x,$90
0c7b: 3f dd 2a  call  $2add
0c7e: 90 04     bcc   $0c84
0c80: e8 20     mov   a,#$20
0c82: 2f 02     bra   $0c86
0c84: e8 01     mov   a,#$01
0c86: 78 00 98  cmp   $98,#$00
0c89: f0 02     beq   $0c8d
0c8b: 08 10     or    a,#$10
0c8d: 8d 07     mov   y,#$07
0c8f: d7 95     mov   ($95)+y,a
0c91: 8f 01 97  mov   $97,#$01
0c94: 6f        ret

0c95: 3f e7 12  call  $12e7
0c98: 6f        ret

; cpu cmd 01
0c99: e5 f6 00  mov   a,$00f6
0c9c: 5d        mov   x,a
0c9d: fd        mov   y,a
0c9e: 3f d1 16  call  $16d1
0ca1: b0 3a     bcs   $0cdd
0ca3: 3f d9 16  call  $16d9
0ca6: b0 35     bcs   $0cdd
0ca8: 3f 7d 15  call  $157d
0cab: b0 43     bcs   $0cf0
0cad: 3f f3 1c  call  $1cf3
0cb0: b0 47     bcs   $0cf9
0cb2: 65 48 2c  cmp   a,$2c48
0cb5: b0 13     bcs   $0cca
0cb7: 2d        push  a
0cb8: ec 0a 04  mov   y,$040a
0cbb: ad ff     cmp   y,#$ff
0cbd: f0 08     beq   $0cc7
0cbf: f6 b7 03  mov   a,$03b7+y
0cc2: 65 49 2c  cmp   a,$2c49
0cc5: b0 00     bcs   $0cc7
0cc7: ae        pop   a
0cc8: 2f 00     bra   $0cca
0cca: fd        mov   y,a
0ccb: 2d        push  a
0ccc: 6d        push  y
0ccd: 3f 9f 2a  call  $2a9f
0cd0: ee        pop   y
0cd1: 3f 1b 29  call  $291b
0cd4: ae        pop   a
0cd5: 90 0a     bcc   $0ce1
0cd7: 2d        push  a
0cd8: fd        mov   y,a
0cd9: 3f 54 2a  call  $2a54
0cdc: ae        pop   a
0cdd: 3f e7 12  call  $12e7
0ce0: 6f        ret

0ce1: 2d        push  a
0ce2: 3f e2 12  call  $12e2
0ce5: ae        pop   a
0ce6: 3f 3f 14  call  $143f
0ce9: 90 04     bcc   $0cef
0ceb: 20        clrp
0cec: 18 01 a8  or    $a8,#$01
0cef: 6f        ret

0cf0: 40        setp
0cf1: 3f df 12  call  $12df
0cf4: 3f e7 12  call  $12e7
0cf7: 2f 07     bra   $0d00
0cf9: 40        setp
0cfa: 3f df 12  call  $12df
0cfd: 3f e2 12  call  $12e2
0d00: fd        mov   y,a
0d01: 6d        push  y
0d02: 3f 7e 2a  call  $2a7e
0d05: ee        pop   y
0d06: 3f f7 29  call  $29f7
0d09: 6f        ret

; cpu cmd 02
0d0a: e5 f6 00  mov   a,$00f6
0d0d: 3f c3 22  call  $22c3
0d10: 90 05     bcc   $0d17
0d12: 3f e7 12  call  $12e7
0d15: 2f 06     bra   $0d1d
0d17: 3f ce 25  call  $25ce
0d1a: 3f e2 12  call  $12e2
0d1d: 6f        ret

; cpu cmd 03
0d1e: e5 f7 00  mov   a,$00f7
0d21: c4 b1     mov   $b1,a
0d23: e5 f6 00  mov   a,$00f6
0d26: 5d        mov   x,a
0d27: fd        mov   y,a
0d28: 3f d1 16  call  $16d1
0d2b: b0 47     bcs   $0d74
0d2d: 3f d9 16  call  $16d9
0d30: b0 42     bcs   $0d74
0d32: 3f 7d 15  call  $157d
0d35: b0 0f     bcs   $0d46
0d37: 3f f3 1c  call  $1cf3
0d3a: 90 0d     bcc   $0d49
0d3c: 2d        push  a
0d3d: 3f f9 0c  call  $0cf9
0d40: ae        pop   a
0d41: 3f c3 22  call  $22c3
0d44: 2f 47     bra   $0d8d
0d46: 5f f0 0c  jmp   $0cf0

0d49: 65 48 2c  cmp   a,$2c48
0d4c: b0 13     bcs   $0d61
0d4e: 2d        push  a
0d4f: ec 0a 04  mov   y,$040a
0d52: ad ff     cmp   y,#$ff
0d54: f0 08     beq   $0d5e
0d56: f6 b7 03  mov   a,$03b7+y
0d59: 65 49 2c  cmp   a,$2c49
0d5c: b0 00     bcs   $0d5e
0d5e: ae        pop   a
0d5f: 2f 00     bra   $0d61
0d61: fd        mov   y,a
0d62: 2d        push  a
0d63: 6d        push  y
0d64: 3f 9f 2a  call  $2a9f
0d67: ee        pop   y
0d68: 3f 1b 29  call  $291b
0d6b: ae        pop   a
0d6c: 90 0a     bcc   $0d78
0d6e: 2d        push  a
0d6f: fd        mov   y,a
0d70: 3f 54 2a  call  $2a54
0d73: ae        pop   a
0d74: 3f e7 12  call  $12e7
0d77: 6f        ret

0d78: 2d        push  a
0d79: 3f e2 12  call  $12e2
0d7c: ae        pop   a
0d7d: 3f 3f 14  call  $143f
0d80: 90 1b     bcc   $0d9d
0d82: 20        clrp
0d83: 18 01 a8  or    $a8,#$01
0d86: ec 09 04  mov   y,$0409
0d89: ad ff     cmp   y,#$ff
0d8b: f0 10     beq   $0d9d
0d8d: 40        setp
0d8e: e4 b1     mov   a,$b1
0d90: d6 d7 03  mov   $03d7+y,a
0d93: e8 80     mov   a,#$80
0d95: d6 df 03  mov   $03df+y,a
0d98: e8 00     mov   a,#$00
0d9a: d6 a7 03  mov   $03a7+y,a
0d9d: 6f        ret

; cpu cmd 04
0d9e: e5 f7 00  mov   a,$00f7
0da1: c4 b1     mov   $b1,a
0da3: e5 f6 00  mov   a,$00f6
0da6: 3f c3 22  call  $22c3
0da9: 90 05     bcc   $0db0
0dab: 3f e7 12  call  $12e7
0dae: 2f 18     bra   $0dc8
0db0: 3f e2 12  call  $12e2
0db3: f6 e7 03  mov   a,$03e7+y
0db6: 08 01     or    a,#$01
0db8: d6 e7 03  mov   $03e7+y,a
0dbb: e4 b1     mov   a,$b1
0dbd: 48 ff     eor   a,#$ff
0dbf: bc        inc   a
0dc0: d6 d7 03  mov   $03d7+y,a
0dc3: e8 80     mov   a,#$80
0dc5: d6 df 03  mov   $03df+y,a
0dc8: 6f        ret

; cpu cmd 05
0dc9: e5 f7 00  mov   a,$00f7
0dcc: c4 b1     mov   $b1,a
0dce: e5 f6 00  mov   a,$00f6
0dd1: c4 b2     mov   $b2,a
0dd3: 3f c3 22  call  $22c3
0dd6: 90 07     bcc   $0ddf
0dd8: 8d ff     mov   y,#$ff
0dda: 3f db 12  call  $12db
0ddd: 2f 1d     bra   $0dfc
0ddf: 3f d7 12  call  $12d7
0de2: e4 b1     mov   a,$b1
0de4: 68 27     cmp   a,#$27
0de6: b0 14     bcs   $0dfc
0de8: 6d        push  y
0de9: 3f 4e 23  call  $234e             ; run minivcmd sequence
0dec: ee        pop   y
0ded: 40        setp
0dee: fc        inc   y
0def: f0 0b     beq   $0dfc
0df1: e4 b2     mov   a,$b2
0df3: 3f dc 22  call  $22dc
0df6: b0 04     bcs   $0dfc
0df8: e4 b1     mov   a,$b1
0dfa: 2f ec     bra   $0de8
0dfc: 3f ec 12  call  $12ec
0dff: 6f        ret

; cpu cmd 06
0e00: e9 f6 00  mov   x,$00f6
0e03: 3f ec 12  call  $12ec
0e06: 3f bb 27  call  $27bb
0e09: 6f        ret

; cpu cmd 07
0e0a: 3f e7 12  call  $12e7
0e0d: e8 ff     mov   a,#$ff
0e0f: c5 07 04  mov   $0407,a
0e12: e8 64     mov   a,#$64
0e14: c5 08 04  mov   $0408,a
0e17: 6f        ret

; cpu cmd 08
0e18: 3f e2 12  call  $12e2
0e1b: 5f 97 0b  jmp   $0b97

; cpu cmd 09
0e1e: e5 f6 00  mov   a,$00f6
0e21: 3f c3 22  call  $22c3
0e24: b0 0f     bcs   $0e35
0e26: 3f d7 12  call  $12d7
0e29: f6 ef 03  mov   a,$03ef+y
0e2c: 2d        push  a
0e2d: e8 00     mov   a,#$00
0e2f: d6 ef 03  mov   $03ef+y,a
0e32: ae        pop   a
0e33: 2f 05     bra   $0e3a
0e35: 3f db 12  call  $12db
0e38: e8 7f     mov   a,#$7f
0e3a: c5 f5 00  mov   $00f5,a
0e3d: 3f ec 12  call  $12ec
0e40: 6f        ret

; cpu cmd 0a
0e41: 3f ec 12  call  $12ec
0e44: 3f 80 28  call  $2880
0e47: 3f f2 2a  call  $2af2
0e4a: 6f        ret

; cpu cmd 0b
0e4b: 5f e6 0b  jmp   $0be6

; cpu cmd 0c
0e4e: e5 f7 00  mov   a,$00f7
0e51: c4 b1     mov   $b1,a
0e53: e5 f6 00  mov   a,$00f6
0e56: c4 b2     mov   $b2,a
0e58: 5d        mov   x,a
0e59: fd        mov   y,a
0e5a: 3f d1 16  call  $16d1
0e5d: b0 3a     bcs   $0e99
0e5f: 3f d9 16  call  $16d9
0e62: b0 35     bcs   $0e99
0e64: 3f 7d 15  call  $157d
0e67: b0 5e     bcs   $0ec7
0e69: 3f f3 1c  call  $1cf3
0e6c: b0 45     bcs   $0eb3
0e6e: 65 48 2c  cmp   a,$2c48
0e71: b0 13     bcs   $0e86
0e73: 2d        push  a
0e74: ec 0a 04  mov   y,$040a
0e77: ad ff     cmp   y,#$ff
0e79: f0 08     beq   $0e83
0e7b: f6 b7 03  mov   a,$03b7+y
0e7e: 65 49 2c  cmp   a,$2c49
0e81: b0 00     bcs   $0e83
0e83: ae        pop   a
0e84: 2f 00     bra   $0e86
0e86: fd        mov   y,a
0e87: 2d        push  a
0e88: 6d        push  y
0e89: 3f 9f 2a  call  $2a9f
0e8c: ee        pop   y
0e8d: 3f 1b 29  call  $291b
0e90: ae        pop   a
0e91: 90 0a     bcc   $0e9d
0e93: 2d        push  a
0e94: fd        mov   y,a
0e95: 3f 54 2a  call  $2a54
0e98: ae        pop   a
0e99: 3f e7 12  call  $12e7
0e9c: 6f        ret

0e9d: 3f e2 12  call  $12e2
0ea0: 3f 3f 14  call  $143f
0ea3: 90 21     bcc   $0ec6
0ea5: 20        clrp
0ea6: 18 01 a8  or    $a8,#$01
0ea9: 40        setp
0eaa: ec 09 04  mov   y,$0409
0ead: ad ff     cmp   y,#$ff
0eaf: d0 0c     bne   $0ebd
0eb1: 2f 13     bra   $0ec6
0eb3: 2d        push  a
0eb4: 3f f9 0c  call  $0cf9
0eb7: ae        pop   a
0eb8: 3f c3 22  call  $22c3
0ebb: b0 09     bcs   $0ec6
0ebd: e4 b1     mov   a,$b1
0ebf: 68 27     cmp   a,#$27
0ec1: b0 03     bcs   $0ec6
0ec3: 3f 4e 23  call  $234e             ; run minivcmd sequence
0ec6: 6f        ret

0ec7: 5f f0 0c  jmp   $0cf0

; cpu cmd 0d
0eca: e5 f6 00  mov   a,$00f6
0ecd: 3f ec 12  call  $12ec
0ed0: 3f c3 22  call  $22c3
0ed3: cb b1     mov   $b1,y
0ed5: 3f c6 11  call  $11c6
0ed8: c4 b2     mov   $b2,a
0eda: e5 f6 00  mov   a,$00f6
0edd: c4 b3     mov   $b3,a
0edf: 3f ec 12  call  $12ec
0ee2: 3f 62 11  call  $1162
0ee5: 6f        ret

; cpu cmd 0e
0ee6: e5 f6 00  mov   a,$00f6
0ee9: c4 b1     mov   $b1,a
0eeb: 5d        mov   x,a
0eec: fd        mov   y,a
0eed: 3f d1 16  call  $16d1
0ef0: b0 3a     bcs   $0f2c
0ef2: 3f d9 16  call  $16d9
0ef5: b0 35     bcs   $0f2c
0ef7: 3f 7d 15  call  $157d
0efa: b0 69     bcs   $0f65
0efc: 3f f3 1c  call  $1cf3
0eff: b0 43     bcs   $0f44
0f01: 65 48 2c  cmp   a,$2c48
0f04: b0 13     bcs   $0f19
0f06: 2d        push  a
0f07: ec 0a 04  mov   y,$040a
0f0a: ad ff     cmp   y,#$ff
0f0c: f0 08     beq   $0f16
0f0e: f6 b7 03  mov   a,$03b7+y
0f11: 65 49 2c  cmp   a,$2c49
0f14: b0 00     bcs   $0f16
0f16: ae        pop   a
0f17: 2f 00     bra   $0f19
0f19: fd        mov   y,a
0f1a: 2d        push  a
0f1b: 6d        push  y
0f1c: 3f 9f 2a  call  $2a9f
0f1f: ee        pop   y
0f20: 3f 1b 29  call  $291b
0f23: ae        pop   a
0f24: 90 0a     bcc   $0f30
0f26: 2d        push  a
0f27: fd        mov   y,a
0f28: 3f 54 2a  call  $2a54
0f2b: ae        pop   a
0f2c: 3f e7 12  call  $12e7
0f2f: 6f        ret

0f30: 3f e2 12  call  $12e2
0f33: 3f 3f 14  call  $143f
0f36: 90 2c     bcc   $0f64
0f38: 20        clrp
0f39: 38 fe a8  and   $a8,#$fe
0f3c: e5 09 04  mov   a,$0409
0f3f: 40        setp
0f40: c4 b1     mov   $b1,a
0f42: 2f 0c     bra   $0f50
0f44: 3f f9 0c  call  $0cf9
0f47: e4 b1     mov   a,$b1
0f49: 3f c3 22  call  $22c3
0f4c: b0 16     bcs   $0f64
0f4e: cb b1     mov   $b1,y
0f50: 3f c6 11  call  $11c6
0f53: c4 b2     mov   $b2,a
0f55: e5 f6 00  mov   a,$00f6
0f58: c4 b3     mov   $b3,a
0f5a: 3f ec 12  call  $12ec
0f5d: 3f 62 11  call  $1162
0f60: 20        clrp
0f61: 18 01 a8  or    $a8,#$01
0f64: 6f        ret

0f65: 5f f0 0c  jmp   $0cf0

; cpu cmd 0f
0f68: ec f6 00  mov   y,$00f6
0f6b: 3f ec 12  call  $12ec
0f6e: f6 10 04  mov   a,$0410+y
0f71: 68 ff     cmp   a,#$ff
0f73: f0 0d     beq   $0f82
0f75: 3f cb 27  call  $27cb
0f78: f7 a3     mov   a,($a3)+y
0f7a: 68 20     cmp   a,#$20
0f7c: 90 04     bcc   $0f82
0f7e: a8 20     sbc   a,#$20
0f80: d7 a3     mov   ($a3)+y,a
0f82: 6f        ret

; cpu cmd 10
0f83: c4 98     mov   $98,a
0f85: 3f 6e 10  call  $106e
0f88: e5 f6 00  mov   a,$00f6
0f8b: c4 91     mov   $91,a
0f8d: fd        mov   y,a
0f8e: 3f d1 16  call  $16d1
0f91: b0 20     bcs   $0fb3
0f93: f6 d8 04  mov   a,$04d8+y
0f96: 3f eb 27  call  $27eb
0f99: f7 a3     mov   a,($a3)+y
0f9b: 28 e0     and   a,#$e0
0f9d: 0d        push  psw
0f9e: f7 a3     mov   a,($a3)+y
0fa0: 8e        pop   psw
0fa1: d0 03     bne   $0fa6
0fa3: 60        clrc
0fa4: 88 20     adc   a,#$20
0fa6: 78 10 98  cmp   $98,#$10
0fa9: f0 02     beq   $0fad
0fab: 08 10     or    a,#$10
0fad: d7 a3     mov   ($a3)+y,a
0faf: 3f e7 12  call  $12e7
0fb2: 6f        ret

0fb3: 3f e2 12  call  $12e2
0fb6: 3f c6 11  call  $11c6
0fb9: b0 4a     bcs   $1005
0fbb: ec f6 00  mov   y,$00f6
0fbe: 3f 61 27  call  $2761
0fc1: 90 04     bcc   $0fc7
0fc3: 3f e7 12  call  $12e7
0fc6: 6f        ret

0fc7: 3f e2 12  call  $12e2
0fca: 7d        mov   a,x
0fcb: c4 92     mov   $92,a
0fcd: ba af     movw  ya,$af
0fcf: da 95     movw  $95,ya
0fd1: 8d 01     mov   y,#$01
0fd3: f7 95     mov   a,($95)+y
0fd5: c4 8c     mov   $8c,a
0fd7: fc        inc   y
0fd8: f7 95     mov   a,($95)+y
0fda: c4 8d     mov   $8d,a
0fdc: 8d 03     mov   y,#$03
0fde: f7 95     mov   a,($95)+y
0fe0: c4 8e     mov   $8e,a
0fe2: fc        inc   y
0fe3: f7 95     mov   a,($95)+y
0fe5: c4 8f     mov   $8f,a
0fe7: 8d 05     mov   y,#$05
0fe9: f7 95     mov   a,($95)+y
0feb: 28 e0     and   a,#$e0
0fed: 68 e0     cmp   a,#$e0
0fef: 0d        push  psw
0ff0: f7 95     mov   a,($95)+y
0ff2: 8e        pop   psw
0ff3: f0 03     beq   $0ff8
0ff5: 60        clrc
0ff6: 88 20     adc   a,#$20
0ff8: 78 10 98  cmp   $98,#$10
0ffb: f0 02     beq   $0fff
0ffd: 08 10     or    a,#$10
0fff: d7 95     mov   ($95)+y,a
1001: 8f 80 97  mov   $97,#$80
1004: 6f        ret

1005: 3f e7 12  call  $12e7
1008: 6f        ret

; cpu cmd 11
1009: e9 f6 00  mov   x,$00f6
100c: 3f db 27  call  $27db
100f: 3f ec 12  call  $12ec
1012: 6f        ret

; cpu cmd 12
1013: ec f6 00  mov   y,$00f6
1016: 3f 7e 2a  call  $2a7e
1019: 3f ec 12  call  $12ec
101c: 6f        ret

; cpu cmd 13
101d: c4 98     mov   $98,a
101f: 5f 85 0f  jmp   $0f85

; cpu cmd 14
1022: e5 f6 00  mov   a,$00f6
1025: 48 ff     eor   a,#$ff
1027: bc        inc   a
1028: c4 b1     mov   $b1,a
102a: 8d 00     mov   y,#$00
102c: e8 00     mov   a,#$00
102e: 76 bf 03  cmp   a,$03bf+y
1031: f0 12     beq   $1045
1033: f6 e7 03  mov   a,$03e7+y
1036: 08 01     or    a,#$01
1038: d6 e7 03  mov   $03e7+y,a
103b: e4 b1     mov   a,$b1
103d: d6 d7 03  mov   $03d7+y,a
1040: e8 80     mov   a,#$80
1042: d6 df 03  mov   $03df+y,a
1045: fc        inc   y
1046: ad 08     cmp   y,#$08
1048: 90 e2     bcc   $102c
104a: e8 00     mov   a,#$00
104c: fd        mov   y,a
104d: 16 bf 03  or    a,$03bf+y
1050: fc        inc   y
1051: ad 08     cmp   y,#$08
1053: 90 f8     bcc   $104d
1055: 68 00     cmp   a,#$00
1057: f0 05     beq   $105e
1059: 3f fd 12  call  $12fd
105c: 2f ec     bra   $104a
105e: 3f e2 12  call  $12e2
1061: 3f 80 28  call  $2880
1064: 3f f2 2a  call  $2af2
1067: 6f        ret

; cpu cmd 15
1068: 3f ec 12  call  $12ec
106b: 3f b9 2a  call  $2ab9
106e: e4 97     mov   a,$97
1070: 68 00     cmp   a,#$00
1072: f0 66     beq   $10da
1074: 68 80     cmp   a,#$80
1076: b0 2f     bcs   $10a7
1078: f8 90     mov   x,$90
107a: e8 ff     mov   a,#$ff
107c: d5 10 04  mov   $0410+x,a
107f: 8d 07     mov   y,#$07
1081: e8 00     mov   a,#$00
1083: d7 95     mov   ($95)+y,a
1085: fd        mov   y,a
1086: f7 93     mov   a,($93)+y
1088: c4 a3     mov   $a3,a
108a: fc        inc   y
108b: f7 93     mov   a,($93)+y
108d: c4 a4     mov   $a4,a
108f: 8d 00     mov   y,#$00
1091: f7 95     mov   a,($95)+y
1093: c4 a5     mov   $a5,a
1095: fc        inc   y
1096: f7 95     mov   a,($95)+y
1098: c4 a6     mov   $a6,a
109a: 3f fb 27  call  $27fb
109d: e8 00     mov   a,#$00
109f: fd        mov   y,a
10a0: d7 93     mov   ($93)+y,a
10a2: fc        inc   y
10a3: d7 93     mov   ($93)+y,a
10a5: 2f 2a     bra   $10d1
10a7: f8 91     mov   x,$91
10a9: e8 ff     mov   a,#$ff
10ab: d5 d8 04  mov   $04d8+x,a
10ae: e8 00     mov   a,#$00
10b0: 8d 00     mov   y,#$00
10b2: d7 95     mov   ($95)+y,a
10b4: 8d 05     mov   y,#$05
10b6: d7 95     mov   ($95)+y,a
10b8: 8d 01     mov   y,#$01
10ba: f7 95     mov   a,($95)+y
10bc: c4 a3     mov   $a3,a
10be: fc        inc   y
10bf: f7 95     mov   a,($95)+y
10c1: c4 a4     mov   $a4,a
10c3: 8d 03     mov   y,#$03
10c5: f7 95     mov   a,($95)+y
10c7: c4 a5     mov   $a5,a
10c9: fc        inc   y
10ca: f7 95     mov   a,($95)+y
10cc: c4 a6     mov   $a6,a
10ce: 3f fb 27  call  $27fb
10d1: e8 00     mov   a,#$00
10d3: c4 97     mov   $97,a
10d5: 9c        dec   a
10d6: c4 90     mov   $90,a
10d8: c4 91     mov   $91,a
10da: 6f        ret

; cpu cmd 16
10db: 3f ec 12  call  $12ec
10de: 8f e6 a3  mov   $a3,#$e6
10e1: 8f 05 a4  mov   $a4,#$05
10e4: 8f 08 a5  mov   $a5,#$08
10e7: 8f 20 a6  mov   $a6,#$20
10ea: 8d 07     mov   y,#$07
10ec: 3f fd 10  call  $10fd
10ef: 8f e6 a3  mov   $a3,#$e6
10f2: 8f 06 a4  mov   $a4,#$06
10f5: 8f 06 a5  mov   $a5,#$06
10f8: 8f 14 a6  mov   $a6,#$14
10fb: 8d 05     mov   y,#$05
10fd: f7 a3     mov   a,($a3)+y
10ff: 28 1f     and   a,#$1f
1101: d7 a3     mov   ($a3)+y,a
1103: 6d        push  y
1104: 8d 00     mov   y,#$00
1106: e4 a5     mov   a,$a5
1108: 7a a3     addw  ya,$a3
110a: da a3     movw  $a3,ya
110c: ee        pop   y
110d: 6e a6 ed  dbnz  $a6,$10fd
1110: 6f        ret

; cpu cmd 17
1111: e5 f7 00  mov   a,$00f7
1114: c4 b1     mov   $b1,a
1116: e5 f6 00  mov   a,$00f6
1119: 3f ec 12  call  $12ec
111c: 3f c3 22  call  $22c3
111f: b0 08     bcs   $1129
1121: e4 b1     mov   a,$b1
1123: d6 bf 03  mov   $03bf+y,a
1126: d6 c7 03  mov   $03c7+y,a
1129: 6f        ret

; cpu cmd 18
112a: e4 97     mov   a,$97
112c: 68 00     cmp   a,#$00
112e: d0 2e     bne   $115e
1130: e5 f6 00  mov   a,$00f6
1133: c4 a3     mov   $a3,a
1135: e5 f7 00  mov   a,$00f7
1138: c4 a4     mov   $a4,a
113a: 8d 00     mov   y,#$00
113c: f7 a3     mov   a,($a3)+y
113e: c5 f5 00  mov   $00f5,a
1141: fc        inc   y
1142: f7 a3     mov   a,($a3)+y
1144: c5 f6 00  mov   $00f6,a
1147: fc        inc   y
1148: f7 a3     mov   a,($a3)+y
114a: c5 f7 00  mov   $00f7,a
114d: fc        inc   y
114e: ad 50     cmp   y,#$50
1150: b0 0c     bcs   $115e
1152: cb b1     mov   $b1,y
1154: 3f ec 12  call  $12ec
1157: 3f c6 11  call  $11c6
115a: eb b1     mov   y,$b1
115c: 2f de     bra   $113c
115e: 3f ec 12  call  $12ec
1161: 6f        ret

1162: 40        setp
1163: eb b1     mov   y,$b1
1165: 30 3c     bmi   $11a3
1167: f6 bf 03  mov   a,$03bf+y         ; tempo
116a: f0 37     beq   $11a3
116c: e4 b2     mov   a,$b2
116e: 68 7f     cmp   a,#$7f
1170: f0 15     beq   $1187
1172: 20        clrp
1173: c4 a0     mov   $a0,a
1175: cd 00     mov   x,#$00
1177: dd        mov   a,y
1178: 75 a3 02  cmp   a,$02a3+x
117b: d0 04     bne   $1181
117d: e4 a0     mov   a,$a0
117f: d4 29     mov   $29+x,a
1181: 3d        inc   x
1182: 3d        inc   x
1183: c8 14     cmp   x,#$14
1185: 90 f0     bcc   $1177
1187: 40        setp
1188: e4 b3     mov   a,$b3
118a: 68 80     cmp   a,#$80
118c: f0 15     beq   $11a3
118e: 20        clrp
118f: c4 a0     mov   $a0,a
1191: cd 00     mov   x,#$00
1193: dd        mov   a,y
1194: 75 a3 02  cmp   a,$02a3+x
1197: d0 04     bne   $119d
1199: e4 a0     mov   a,$a0
119b: d4 3c     mov   $3c+x,a
119d: 3d        inc   x
119e: 3d        inc   x
119f: c8 14     cmp   x,#$14
11a1: 90 f0     bcc   $1193
11a3: 6f        ret

11a4: f6 d8 04  mov   a,$04d8+y
11a7: 8f e6 a3  mov   $a3,#$e6
11aa: 8f 06 a4  mov   $a4,#$06
11ad: 8d 06     mov   y,#$06
11af: cf        mul   ya
11b0: 7a a3     addw  ya,$a3
11b2: da a3     movw  $a3,ya
11b4: 8d 01     mov   y,#$01
11b6: f7 a3     mov   a,($a3)+y
11b8: 2d        push  a
11b9: fc        inc   y
11ba: f7 a3     mov   a,($a3)+y
11bc: c4 a4     mov   $a4,a
11be: ae        pop   a
11bf: c4 a3     mov   $a3,a
11c1: 8d 01     mov   y,#$01
11c3: f7 a3     mov   a,($a3)+y
11c5: 6f        ret

11c6: 40        setp
11c7: e5 f4 00  mov   a,$00f4
11ca: 65 f4 00  cmp   a,$00f4
11cd: d0 f7     bne   $11c6
11cf: 44 9b     eor   a,$9b
11d1: 28 01     and   a,#$01
11d3: d0 05     bne   $11da
11d5: 3f fd 12  call  $12fd
11d8: 2f ec     bra   $11c6
11da: e5 f4 00  mov   a,$00f4
11dd: 30 05     bmi   $11e4
11df: e5 f5 00  mov   a,$00f5
11e2: 60        clrc
11e3: 6f        ret

11e4: 3f f0 11  call  $11f0
11e7: b0 05     bcs   $11ee
11e9: 3f fd 12  call  $12fd
11ec: 2f d8     bra   $11c6
11ee: 80        setc
11ef: 6f        ret

11f0: 40        setp
11f1: f8 97     mov   x,$97
11f3: c8 00     cmp   x,#$00
11f5: d0 05     bne   $11fc
11f7: 3f ec 12  call  $12ec
11fa: 80        setc
11fb: 6f        ret

11fc: c8 01     cmp   x,#$01
11fe: d0 25     bne   $1225
1200: 8d 00     mov   y,#$00
1202: f7 93     mov   a,($93)+y
1204: c4 99     mov   $99,a
1206: fc        inc   y
1207: f7 93     mov   a,($93)+y
1209: c4 9a     mov   $9a,a
120b: e5 f5 00  mov   a,$00f5
120e: ec f6 00  mov   y,$00f6
1211: 7a 99     addw  ya,$99
1213: 6d        push  y
1214: 8d 02     mov   y,#$02
1216: d7 93     mov   ($93)+y,a
1218: ae        pop   a
1219: fc        inc   y
121a: d7 93     mov   ($93)+y,a
121c: 8d 02     mov   y,#$02
121e: e5 f7 00  mov   a,$00f7
1221: d7 95     mov   ($95)+y,a
1223: 2f 67     bra   $128c
1225: c8 02     cmp   x,#$02
1227: d0 15     bne   $123e
1229: 8d 03     mov   y,#$03
122b: e5 f5 00  mov   a,$00f5
122e: d7 95     mov   ($95)+y,a
1230: fc        inc   y
1231: e5 f6 00  mov   a,$00f6
1234: d7 95     mov   ($95)+y,a
1236: fc        inc   y
1237: e5 f7 00  mov   a,$00f7
123a: d7 95     mov   ($95)+y,a
123c: 2f 4e     bra   $128c
123e: c8 03     cmp   x,#$03
1240: d0 21     bne   $1263
1242: 8d 06     mov   y,#$06
1244: e5 f5 00  mov   a,$00f5
1247: d7 95     mov   ($95)+y,a
1249: cd 00     mov   x,#$00
124b: e5 f6 00  mov   a,$00f6
124e: c7 8c     mov   ($8c+x),a
1250: 3a 8c     incw  $8c
1252: 1a 8e     decw  $8e
1254: f0 44     beq   $129a
1256: e5 f7 00  mov   a,$00f7
1259: c7 8c     mov   ($8c+x),a
125b: 3a 8c     incw  $8c
125d: 1a 8e     decw  $8e
125f: f0 39     beq   $129a
1261: 2f 29     bra   $128c
1263: c8 04     cmp   x,#$04
1265: d0 47     bne   $12ae
1267: cd 00     mov   x,#$00
1269: e5 f5 00  mov   a,$00f5
126c: c7 8c     mov   ($8c+x),a
126e: 3a 8c     incw  $8c
1270: 1a 8e     decw  $8e
1272: f0 1f     beq   $1293
1274: e5 f6 00  mov   a,$00f6
1277: c7 8c     mov   ($8c+x),a
1279: 3a 8c     incw  $8c
127b: 1a 8e     decw  $8e
127d: f0 14     beq   $1293
127f: e5 f7 00  mov   a,$00f7
1282: c7 8c     mov   ($8c+x),a
1284: 3a 8c     incw  $8c
1286: 1a 8e     decw  $8e
1288: f0 09     beq   $1293
128a: 2f 02     bra   $128e
128c: ab 97     inc   $97
128e: 3f ec 12  call  $12ec
1291: 60        clrc
1292: 6f        ret

1293: f8 90     mov   x,$90
1295: e4 92     mov   a,$92
1297: d5 10 04  mov   $0410+x,a
129a: 8f 00 97  mov   $97,#$00
129d: 8f ff 90  mov   $90,#$ff
12a0: 8f ff 91  mov   $91,#$ff
12a3: 2f e9     bra   $128e
12a5: e4 92     mov   a,$92
12a7: f8 91     mov   x,$91
12a9: d5 d8 04  mov   $04d8+x,a
12ac: 2f ec     bra   $129a
12ae: c8 80     cmp   x,#$80
12b0: d0 e8     bne   $129a
12b2: cd 00     mov   x,#$00
12b4: e5 f5 00  mov   a,$00f5
12b7: c7 8c     mov   ($8c+x),a
12b9: 3a 8c     incw  $8c
12bb: 1a 8e     decw  $8e
12bd: f0 e6     beq   $12a5
12bf: e5 f6 00  mov   a,$00f6
12c2: c7 8c     mov   ($8c+x),a
12c4: 3a 8c     incw  $8c
12c6: 1a 8e     decw  $8e
12c8: f0 db     beq   $12a5
12ca: e5 f7 00  mov   a,$00f7
12cd: c7 8c     mov   ($8c+x),a
12cf: 3a 8c     incw  $8c
12d1: 1a 8e     decw  $8e
12d3: d0 b9     bne   $128e
12d5: 2f ce     bra   $12a5
12d7: 40        setp
12d8: c2 9b     set6  $9b
12da: 6f        ret

12db: 40        setp
12dc: d2 9b     clr6  $9b
12de: 6f        ret

12df: a2 9b     set5  $9b
12e1: 6f        ret

12e2: 40        setp
12e3: c2 9b     set6  $9b
12e5: 2f 06     bra   $12ed
12e7: 40        setp
12e8: d2 9b     clr6  $9b
12ea: 2f 01     bra   $12ed
12ec: 40        setp
12ed: 2d        push  a
12ee: e4 9b     mov   a,$9b
12f0: 48 81     eor   a,#$81
12f2: c4 9b     mov   $9b,a
12f4: 28 e0     and   a,#$e0
12f6: c5 f4 00  mov   $00f4,a
12f9: b2 9b     clr5  $9b
12fb: ae        pop   a
12fc: 6f        ret

12fd: 20        clrp
12fe: e4 fd     mov   a,$fd
1300: f0 0c     beq   $130e             ; skip ops if counter0 is zero
1302: 20        clrp
1303: 2d        push  a
1304: 3f 02 17  call  $1702
1307: ae        pop   a
1308: 9c        dec   a
1309: d0 f8     bne   $1303
130b: 3f 8c 1c  call  $1c8c
130e: 40        setp
130f: 6f        ret

1310: 20        clrp
1311: cd 00     mov   x,#$00
1313: f5 a4 08  mov   a,$08a4+x
1316: f0 0b     beq   $1323
1318: c4 f2     mov   $f2,a
131a: 3d        inc   x
131b: f5 a4 08  mov   a,$08a4+x
131e: c4 f3     mov   $f3,a
1320: 3d        inc   x
1321: 2f f0     bra   $1313
1323: e8 00     mov   a,#$00
1325: 20        clrp
1326: 5d        mov   x,a
1327: af        mov   (x)+,a
1328: c8 b2     cmp   x,#$b2
132a: 90 fb     bcc   $1327
132c: 40        setp
132d: 5d        mov   x,a
132e: af        mov   (x)+,a
132f: c8 b4     cmp   x,#$b4
1331: 90 fb     bcc   $132e
1333: 5d        mov   x,a
1334: 8f 03 a3  mov   $a3,#$03
1337: 8f 02 a4  mov   $a4,#$02
133a: 8d 08     mov   y,#$08
133c: 7d        mov   a,x
133d: c7 a3     mov   ($a3+x),a
133f: 3a a3     incw  $a3
1341: e8 80     mov   a,#$80
1343: 5a a3     cmpw  ya,$a3
1345: d0 f5     bne   $133c
1347: 20        clrp
1348: 8f 32 a9  mov   $a9,#$32
134b: 8f 64 aa  mov   $aa,#$64
134e: 8f 23 ab  mov   $ab,#$23          ; FLG shadow
1351: e8 00     mov   a,#$00
1353: c4 a8     mov   $a8,a
1355: c4 ac     mov   $ac,a
1357: c4 ad     mov   $ad,a
1359: c4 b0     mov   $b0,a
135b: 5d        mov   x,a
135c: d5 bf 03  mov   $03bf+x,a
135f: 3d        inc   x
1360: c8 08     cmp   x,#$08
1362: d0 f8     bne   $135c
1364: c4 ad     mov   $ad,a
1366: c4 ac     mov   $ac,a
1368: e8 70     mov   a,#$70
136a: c4 af     mov   $af,a
136c: c4 ae     mov   $ae,a
136e: e8 00     mov   a,#$00
1370: 5d        mov   x,a
1371: d5 6c 03  mov   $036c+x,a
1374: 3d        inc   x
1375: 3d        inc   x
1376: c8 10     cmp   x,#$10
1378: d0 f7     bne   $1371
137a: 5d        mov   x,a
137b: e8 ff     mov   a,#$ff
137d: d5 a3 02  mov   $02a3+x,a
1380: d5 6b 03  mov   $036b+x,a
1383: 3d        inc   x
1384: 3d        inc   x
1385: c8 14     cmp   x,#$14
1387: d0 f4     bne   $137d
1389: e8 01     mov   a,#$01
138b: c5 ff 03  mov   $03ff,a
138e: e8 00     mov   a,#$00
1390: c5 00 04  mov   $0400,a           ; zero NON shadow
1393: c5 01 04  mov   $0401,a
1396: c5 08 04  mov   $0408,a
1399: c5 0e 04  mov   $040e,a
139c: c5 0d 04  mov   $040d,a
139f: e8 ff     mov   a,#$ff
13a1: c5 09 04  mov   $0409,a
13a4: c5 0a 04  mov   $040a,a
13a7: c5 0b 04  mov   $040b,a
13aa: c5 0c 04  mov   $040c,a
13ad: 40        setp
13ae: 8f 00 97  mov   $97,#$00
13b1: 8f ff 90  mov   $90,#$ff
13b4: 20        clrp
13b5: e8 00     mov   a,#$00
13b7: c4 f2     mov   $f2,a
13b9: 8f 00 f3  mov   $f3,#$00          ; VOL(L)
13bc: bc        inc   a
13bd: c4 f2     mov   $f2,a
13bf: 8f 00 f3  mov   $f3,#$00          ; VOL(R)
13c2: 60        clrc
13c3: 88 0f     adc   a,#$0f
13c5: 68 80     cmp   a,#$80
13c7: 90 ee     bcc   $13b7
13c9: 8f 00 f1  mov   $f1,#$00          ; stop all timers
13cc: 8f 28 fa  mov   $fa,#$28          ; set timer0 latch to #$28 (200 Hz, 5ms)
13cf: 8f 01 f1  mov   $f1,#$01          ; start timer0
13d2: e4 fd     mov   a,$fd
13d4: 3f 13 26  call  $2613
13d7: 20        clrp
13d8: e8 43     mov   a,#$43
13da: 8d 68     mov   y,#$68
13dc: 5a f4     cmpw  ya,$f4
13de: d0 f8     bne   $13d8
13e0: 5a f4     cmpw  ya,$f4
13e2: d0 f4     bne   $13d8
13e4: e8 75     mov   a,#$75
13e6: 8d 6e     mov   y,#$6e
13e8: 5a f6     cmpw  ya,$f6
13ea: d0 ec     bne   $13d8
13ec: 5a f6     cmpw  ya,$f6
13ee: d0 e8     bne   $13d8
13f0: e8 53     mov   a,#$53
13f2: 8d 4f     mov   y,#$4f
13f4: da f4     movw  $f4,ya
13f6: e8 46     mov   a,#$46
13f8: 8d 54     mov   y,#$54
13fa: da f6     movw  $f6,ya
13fc: e4 f4     mov   a,$f4
13fe: 64 f4     cmp   a,$f4
1400: d0 fa     bne   $13fc
1402: 68 00     cmp   a,#$00
1404: d0 f6     bne   $13fc
1406: c4 f4     mov   $f4,a
1408: 40        setp
1409: c4 9b     mov   $9b,a
140b: 20        clrp
140c: 6f        ret

140d: f5 b7 03  mov   a,$03b7+x
1410: fd        mov   y,a
1411: 3f ad 29  call  $29ad
1414: e8 ff     mov   a,#$ff
1416: c5 09 04  mov   $0409,a
1419: 6f        ret

141a: e4 a2     mov   a,$a2
141c: 8d 01     mov   y,#$01
141e: 77 a0     cmp   a,($a0)+y
1420: d0 1c     bne   $143e
1422: f8 a3     mov   x,$a3
1424: e8 00     mov   a,#$00
1426: d5 bf 03  mov   $03bf+x,a
1429: d5 c7 03  mov   $03c7+x,a
142c: f5 b7 03  mov   a,$03b7+x
142f: fd        mov   y,a
1430: 6d        push  y
1431: 3f 54 2a  call  $2a54
1434: ee        pop   y
1435: 3f ad 29  call  $29ad
1438: e8 ff     mov   a,#$ff
143a: c5 09 04  mov   $0409,a
143d: 60        clrc
143e: 6f        ret

143f: 20        clrp
1440: 3f f3 1c  call  $1cf3
1443: 90 01     bcc   $1446
1445: 6f        ret

1446: 3f 68 15  call  $1568
1449: b0 c5     bcs   $1410
144b: 65 48 2c  cmp   a,$2c48
144e: b0 19     bcs   $1469
1450: 2d        push  a
1451: 40        setp
1452: 4d        push  x
1453: 3f 80 28  call  $2880
1456: 3f f2 2a  call  $2af2
1459: ce        pop   x
145a: 20        clrp
145b: c9 0a 04  mov   $040a,x           ; X = $040A
145e: e8 80     mov   a,#$80
1460: d5 a7 03  mov   $03a7+x,a         ; master volume
1463: ae        pop   a
1464: d5 b7 03  mov   $03b7+x,a
1467: 2f 0a     bra   $1473
;
1469: d5 b7 03  mov   $03b7+x,a         ; X = $040A, $03B7+X = A
146c: 2d        push  a
146d: e8 80     mov   a,#$80
146f: d5 a7 03  mov   $03a7+x,a         ; master volume
1472: ae        pop   a
;
1473: c9 09 04  mov   $0409,x           ; song slot index X ($0409 will be cleared later, unfortunately)
1476: fd        mov   y,a
1477: f6 d8 04  mov   a,$04d8+y         ; get song index into A
147a: 8f e6 a0  mov   $a0,#$e6
147d: 8f 06 a1  mov   $a1,#$06          ; song entry table $06e6
1480: 8d 06     mov   y,#$06            ; table element size = 6
1482: cf        mul   ya
1483: 7a a0     addw  ya,$a0
1485: da a0     movw  $a0,ya            ; set song entry address into $a0/1
1487: 8d 05     mov   y,#$05
1489: f7 a0     mov   a,($a0)+y
148b: 08 08     or    a,#$08
148d: d7 a0     mov   ($a0)+y,a
148f: 8d 01     mov   y,#$01
1491: f7 a0     mov   a,($a0)+y
1493: 2d        push  a
1494: fc        inc   y
1495: f7 a0     mov   a,($a0)+y         ; offset +1/2: sequence header address
1497: c4 a1     mov   $a1,a
1499: ae        pop   a
149a: c4 a0     mov   $a0,a             ; set header address to $a0/1
149c: e8 00     mov   a,#$00
149e: d5 ef 03  mov   $03ef+x,a
14a1: d5 d7 03  mov   $03d7+x,a
14a4: d5 f7 03  mov   $03f7+x,a         ; zero variable for conditional branch
14a7: e8 02     mov   a,#$02
14a9: d5 e7 03  mov   $03e7+x,a
; read the sequence header
14ac: 8d 00     mov   y,#$00
14ae: f7 a0     mov   a,($a0)+y         ; header+0: initial tempo
14b0: fc        inc   y
14b1: d5 bf 03  mov   $03bf+x,a
14b4: d5 c7 03  mov   $03c7+x,a
14b7: e8 7d     mov   a,#$7d
14b9: d5 cf 03  mov   $03cf+x,a
14bc: f7 a0     mov   a,($a0)+y         ; header+1: channels
14be: fc        inc   y
14bf: c4 a2     mov   $a2,a             ; save number of tracks
14c1: d8 a3     mov   $a3,x             ; save song slot index
14c3: e8 00     mov   a,#$00
14c5: c5 06 04  mov   $0406,a
; find a unused track to start new track
14c8: f8 a3     mov   x,$a3
14ca: f5 b7 03  mov   a,$03b7+x
14cd: 3f 7d 15  call  $157d             ; search $02a3+N and find unused track, return: x = N
14d0: 90 03     bcc   $14d5             ; setup new track if a unused track is available
14d2: 5f 1a 14  jmp   $141a
; setup new track
14d5: f7 a0     mov   a,($a0)+y
14d7: fc        inc   y
14d8: c4 a4     mov   $a4,a
14da: f7 a0     mov   a,($a0)+y         ; header+2+(N*2): offset to the head of the channel
14dc: fc        inc   y
14dd: c4 a5     mov   $a5,a             ; set track start offset into $a4/5
14df: 6d        push  y
14e0: ba a0     movw  ya,$a0            ; load header address
14e2: 7a a4     addw  ya,$a4            ; convert to absolute address
14e4: d4 00     mov   $00+x,a
14e6: db 01     mov   $01+x,y           ; set reading ptr
14e8: ee        pop   y
14e9: e8 01     mov   a,#$01
14eb: d4 14     mov   $14+x,a
14ed: d5 94 03  mov   $0394+x,a
14f0: e8 cc     mov   a,#$cc
14f2: d5 04 02  mov   $0204+x,a         ; duration rate = #$CC
14f5: e8 00     mov   a,#$00            ; zero following vars
14f7: d4 15     mov   $15+x,a
14f9: d4 3c     mov   $3c+x,a
14fb: d4 8d     mov   $8d+x,a
14fd: d5 f4 02  mov   $02f4+x,a
1500: d5 a4 02  mov   $02a4+x,a
1503: d5 40 02  mov   $0240+x,a
1506: d5 cb 02  mov   $02cb+x,a
1509: d5 08 03  mov   $0308+x,a
150c: d5 53 02  mov   $0253+x,a
150f: d5 17 02  mov   $0217+x,a         ; loop counter
1512: d5 2b 02  mov   $022b+x,a
1515: d5 44 03  mov   $0344+x,a
1518: d5 80 03  mov   $0380+x,a
151b: c5 94 03  mov   $0394,a
151e: e8 60     mov   a,#$60
1520: d4 28     mov   $28+x,a
1522: e8 ff     mov   a,#$ff
1524: d4 78     mov   $78+x,a
1526: d5 54 02  mov   $0254+x,a
1529: e8 80     mov   a,#$80
152b: d4 29     mov   $29+x,a           ; volume #$80
152d: e4 a3     mov   a,$a3
152f: d5 a3 02  mov   $02a3+x,a         ; this track is used by song slot $a3
1532: e5 06 04  mov   a,$0406
1535: d5 7f 03  mov   $037f+x,a         ; save logical track index of the song
1538: 3f 4e 15  call  $154e
153b: ac 06 04  inc   $0406
153e: 6e a2 87  dbnz  $a2,$14c8         ; repeat for each channels
1541: 38 3f ab  and   $ab,#$3f          ; FLG shadow
1544: e4 ab     mov   a,$ab
1546: 20        clrp
1547: 8f 6c f2  mov   $f2,#$6c
154a: c4 f3     mov   $f3,a             ; FLG
154c: 80        setc
154d: 6f        ret

154e: 6d        push  y
154f: 3f a8 15  call  $15a8
1552: e8 00     mov   a,#$00
1554: 3f ef 1a  call  $1aef             ; set patch 0
1557: 3f 58 22  call  $2258             ; vcmd e4
155a: 3f a8 22  call  $22a8
155d: 3f 04 1f  call  $1f04
1560: b0 04     bcs   $1566
1562: fd        mov   y,a
1563: 3f 59 1d  call  $1d59
1566: ee        pop   y
1567: 6f        ret

1568: 2d        push  a
1569: cd 00     mov   x,#$00
156b: f5 bf 03  mov   a,$03bf+x
156e: f0 07     beq   $1577
1570: 3d        inc   x
1571: c8 08     cmp   x,#$08
1573: d0 f6     bne   $156b
1575: 2f 03     bra   $157a
1577: ae        pop   a
1578: 60        clrc
1579: 6f        ret

157a: ae        pop   a
157b: 80        setc
157c: 6f        ret

; search unused track
157d: 2d        push  a
157e: 65 48 2c  cmp   a,$2c48
1581: b0 11     bcs   $1594
; forward search
1583: cd 00     mov   x,#$00
1585: f5 a3 02  mov   a,$02a3+x
1588: 68 ff     cmp   a,#$ff
158a: f0 19     beq   $15a5             ; find a blank?
158c: 3d        inc   x
158d: 3d        inc   x
158e: c8 10     cmp   x,#$10
1590: d0 f3     bne   $1585
1592: 2f e6     bra   $157a
; backward search
1594: cd 12     mov   x,#$12
1596: f5 a3 02  mov   a,$02a3+x
1599: 68 ff     cmp   a,#$ff
159b: f0 08     beq   $15a5             ; find a blank?
159d: c8 04     cmp   x,#$04
159f: f0 d9     beq   $157a
15a1: 1d        dec   x
15a2: 1d        dec   x
15a3: 2f f1     bra   $1596
15a5: ae        pop   a
15a6: 60        clrc
15a7: 6f        ret

15a8: 3f 1d 1f  call  $1f1d
15ab: b0 30     bcs   $15dd
15ad: 8d 00     mov   y,#$00
15af: f6 6c 03  mov   a,$036c+y
15b2: f0 1b     beq   $15cf
15b4: fc        inc   y
15b5: fc        inc   y
15b6: ad 10     cmp   y,#$10
15b8: 90 f5     bcc   $15af
15ba: 8d 00     mov   y,#$00
15bc: f6 6c 03  mov   a,$036c+y
15bf: 28 01     and   a,#$01
15c1: f0 0c     beq   $15cf
15c3: fc        inc   y
15c4: fc        inc   y
15c5: ad 10     cmp   y,#$10
15c7: 90 f3     bcc   $15bc
15c9: e8 ff     mov   a,#$ff
15cb: d5 6b 03  mov   $036b+x,a
15ce: 6f        ret

15cf: f6 6c 03  mov   a,$036c+y
15d2: 08 01     or    a,#$01
15d4: d6 6c 03  mov   $036c+y,a
15d7: dd        mov   a,y
15d8: 5c        lsr   a
15d9: d5 6b 03  mov   $036b+x,a
15dc: 6f        ret

15dd: 8d 0e     mov   y,#$0e
15df: f6 6c 03  mov   a,$036c+y
15e2: 28 03     and   a,#$03
15e4: f0 1f     beq   $1605
15e6: ad 00     cmp   y,#$00
15e8: f0 04     beq   $15ee
15ea: dc        dec   y
15eb: dc        dec   y
15ec: 2f f1     bra   $15df
15ee: 8d 0e     mov   y,#$0e
15f0: f6 6c 03  mov   a,$036c+y
15f3: 28 02     and   a,#$02
15f5: f0 0e     beq   $1605
15f7: ad 00     cmp   y,#$00
15f9: f0 04     beq   $15ff
15fb: dc        dec   y
15fc: dc        dec   y
15fd: 2f f1     bra   $15f0
15ff: e8 ff     mov   a,#$ff
1601: d5 6b 03  mov   $036b+x,a
1604: 6f        ret

1605: f6 6c 03  mov   a,$036c+y
1608: 08 02     or    a,#$02
160a: d6 6c 03  mov   $036c+y,a
160d: dd        mov   a,y
160e: 5c        lsr   a
160f: d5 6b 03  mov   $036b+x,a
1612: 6f        ret

1613: 3f 1d 1f  call  $1f1d
1616: 90 01     bcc   $1619
1618: 6f        ret

1619: f5 6b 03  mov   a,$036b+x
161c: 1c        asl   a
161d: fd        mov   y,a
161e: c4 a0     mov   $a0,a
1620: f6 6c 03  mov   a,$036c+y
1623: 28 02     and   a,#$02
1625: d0 01     bne   $1628
1627: 6f        ret

1628: 8d 00     mov   y,#$00
162a: f6 6c 03  mov   a,$036c+y
162d: f0 07     beq   $1636
162f: fc        inc   y
1630: fc        inc   y
1631: ad 10     cmp   y,#$10
1633: 90 f5     bcc   $162a
1635: 6f        ret

1636: f6 6c 03  mov   a,$036c+y
1639: 08 01     or    a,#$01
163b: d6 6c 03  mov   $036c+y,a
163e: dd        mov   a,y
163f: 5c        lsr   a
1640: d5 6b 03  mov   $036b+x,a
1643: eb a0     mov   y,$a0
1645: f6 6c 03  mov   a,$036c+y
1648: 28 fe     and   a,#$fe
164a: d6 6c 03  mov   $036c+y,a
164d: 3f 51 16  call  $1651
1650: 6f        ret

1651: f5 cc 02  mov   a,$02cc+x
1654: 8d 04     mov   y,#$04
1656: 3f e9 1d  call  $1de9             ; set SRCN
1659: f5 df 02  mov   a,$02df+x
165c: 8d 07     mov   y,#$07
165e: 3f e9 1d  call  $1de9             ; set GAIN
1661: f5 e0 02  mov   a,$02e0+x
1664: 8d 05     mov   y,#$05
1666: 3f e9 1d  call  $1de9             ; set ADSR(1)
1669: f5 f3 02  mov   a,$02f3+x
166c: 8d 06     mov   y,#$06
166e: 3f e9 1d  call  $1de9             ; set ADSR(2)
1671: f5 cb 02  mov   a,$02cb+x
1674: 28 20     and   a,#$20
1676: f0 05     beq   $167d
1678: 3f 38 22  call  $2238
167b: 2f 03     bra   $1680
167d: 3f 58 22  call  $2258
1680: f5 cb 02  mov   a,$02cb+x
1683: 28 40     and   a,#$40
1685: f0 05     beq   $168c
1687: 3f 7a 22  call  $227a
168a: 2f 03     bra   $168f
168c: 3f 9a 22  call  $229a
168f: e8 01     mov   a,#$01
1691: d5 94 03  mov   $0394+x,a
1694: 6f        ret

1695: 3f 1d 1f  call  $1f1d
1698: b0 0f     bcs   $16a9
169a: f5 6b 03  mov   a,$036b+x
169d: 1c        asl   a
169e: fd        mov   y,a
169f: f6 6c 03  mov   a,$036c+y
16a2: 28 fe     and   a,#$fe
16a4: d6 6c 03  mov   $036c+y,a
16a7: 2f 0d     bra   $16b6
16a9: f5 6b 03  mov   a,$036b+x
16ac: 1c        asl   a
16ad: fd        mov   y,a
16ae: f6 6c 03  mov   a,$036c+y
16b1: 28 fd     and   a,#$fd
16b3: d6 6c 03  mov   $036c+y,a
16b6: e8 ff     mov   a,#$ff
16b8: d5 6b 03  mov   $036b+x,a
16bb: 6f        ret

16bc: 20        clrp
16bd: 8d 00     mov   y,#$00
;
16bf: f6 bf 03  mov   a,$03bf+y         ; tempo
16c2: d0 09     bne   $16cd
16c4: fc        inc   y
16c5: ad 08     cmp   y,#$08
16c7: 90 f6     bcc   $16bf
16c9: 38 fe a8  and   $a8,#$fe
16cc: 6f        ret

16cd: 18 01 a8  or    $a8,#$01
16d0: 6f        ret

16d1: 2d        push  a
16d2: f6 d8 04  mov   a,$04d8+y
16d5: 68 ff     cmp   a,#$ff
16d7: ae        pop   a
16d8: 6f        ret

16d9: 2d        push  a
16da: 4d        push  x
16db: 6d        push  y
16dc: 40        setp
16dd: 3f 34 2a  call  $2a34
16e0: 8d 01     mov   y,#$01
16e2: f7 a3     mov   a,($a3)+y
16e4: d0 03     bne   $16e9
16e6: 60        clrc
16e7: 2f 14     bra   $16fd
16e9: bc        inc   a
16ea: fd        mov   y,a
16eb: f7 a3     mov   a,($a3)+y
16ed: 5d        mov   x,a
16ee: f5 10 04  mov   a,$0410+x
16f1: 68 ff     cmp   a,#$ff
16f3: f0 07     beq   $16fc
16f5: dc        dec   y
16f6: ad 02     cmp   y,#$02
16f8: b0 f1     bcs   $16eb
16fa: 2f 01     bra   $16fd
16fc: 80        setc
16fd: ee        pop   y
16fe: ce        pop   x
16ff: ae        pop   a
1700: 20        clrp
1701: 6f        ret

1702: 20        clrp
1703: 8f 5c f2  mov   $f2,#$5c
1706: 8f 00 f3  mov   $f3,#$00          ; KOF
1709: 20        clrp
170a: e4 a8     mov   a,$a8
170c: 28 01     and   a,#$01
170e: d0 04     bne   $1714
1710: 3f de 22  call  $22de
1713: 6f        ret

1714: 3f de 22  call  $22de
1717: cd 00     mov   x,#$00
1719: f5 bf 03  mov   a,$03bf+x         ; tempo
171c: 68 00     cmp   a,#$00
171e: f0 55     beq   $1775             ; if 0, halt
1720: 60        clrc
1721: 95 cf 03  adc   a,$03cf+x         ; add tempo to counter
1724: d5 cf 03  mov   $03cf+x,a
1727: b0 04     bcs   $172d
1729: 68 fb     cmp   a,#$fb
172b: 90 48     bcc   $1775             ; tick if the result is over 251
172d: 80        setc                    ; then clip the counter between 1 and 250
172e: a8 fa     sbc   a,#$fa            ; timer0 5ms * quarter 48 tick * 250 = 60000000
1730: d5 cf 03  mov   $03cf+x,a         ; thus the tempo value means bpm actually
1733: 3f 41 21  call  $2141
1736: 7d        mov   a,x
1737: 8d 00     mov   y,#$00
1739: cd 00     mov   x,#$00
173b: 75 a3 02  cmp   a,$02a3+x
173e: d0 15     bne   $1755
1740: 2d        push  a
1741: cb a0     mov   $a0,y
1743: f5 7f 03  mov   a,$037f+x
1746: 64 a0     cmp   a,$a0
1748: d0 0a     bne   $1754
174a: 4d        push  x
174b: 6d        push  y
174c: 3f bb 17  call  $17bb
174f: 3f 92 18  call  $1892
1752: ee        pop   y
1753: ce        pop   x
1754: ae        pop   a
1755: 3d        inc   x
1756: 3d        inc   x
1757: c8 14     cmp   x,#$14
1759: 90 e0     bcc   $173b
175b: fc        inc   y
175c: ad 08     cmp   y,#$08
175e: 90 d9     bcc   $1739
1760: 5d        mov   x,a
1761: e8 fd     mov   a,#$fd
1763: 35 e7 03  and   a,$03e7+x
1766: d5 e7 03  mov   $03e7+x,a
1769: f5 f7 03  mov   a,$03f7+x
176c: 28 80     and   a,#$80
176e: f0 05     beq   $1775
1770: e8 00     mov   a,#$00
1772: d5 f7 03  mov   $03f7+x,a
1775: 3d        inc   x
1776: c8 08     cmp   x,#$08
1778: d0 9f     bne   $1719
177a: 20        clrp
177b: 8f 4c f2  mov   $f2,#$4c
177e: 8f 00 f3  mov   $f3,#$00          ; KON
1781: 20        clrp
1782: 6f        ret

1783: 20        clrp
1784: 8f 4c f2  mov   $f2,#$4c
1787: 8f 00 f3  mov   $f3,#$00          ; KON
178a: 20        clrp
178b: cd 00     mov   x,#$00
178d: f5 bf 03  mov   a,$03bf+x
1790: 68 00     cmp   a,#$00
1792: f0 20     beq   $17b4
1794: 60        clrc
1795: 95 cf 03  adc   a,$03cf+x
1798: b0 04     bcs   $179e
179a: 68 fb     cmp   a,#$fb
179c: 90 16     bcc   $17b4
179e: 7d        mov   a,x
179f: cd 00     mov   x,#$00
17a1: 75 a3 02  cmp   a,$02a3+x
17a4: d0 07     bne   $17ad
17a6: 2d        push  a
17a7: 4d        push  x
17a8: 3f 92 18  call  $1892
17ab: ce        pop   x
17ac: ae        pop   a
17ad: 3d        inc   x
17ae: 3d        inc   x
17af: c8 14     cmp   x,#$14
17b1: d0 ee     bne   $17a1
17b3: 5d        mov   x,a
17b4: 3d        inc   x
17b5: c8 08     cmp   x,#$08
17b7: d0 d4     bne   $178d
17b9: 20        clrp
17ba: 6f        ret

17bb: 3f 00 22  call  $2200             ; process pitch envelope
17be: 3f 63 1f  call  $1f63
17c1: 3f 2d 20  call  $202d
17c4: 3f 80 20  call  $2080
17c7: 3f d1 20  call  $20d1
17ca: f4 15     mov   a,$15+x
17cc: f0 0a     beq   $17d8             ; skip if duration counter == 0
17ce: bc        inc   a
17cf: f0 07     beq   $17d8             ; skip if duration counter == 255
17d1: 9b 15     dec   $15+x             ; decrease duration counter
17d3: d0 03     bne   $17d8             ; if it becomes 0 then
17d5: 3f 45 1d  call  $1d45             ;   note off - set ADSR(2) for release
17d8: 9b 14     dec   $14+x             ; decrement wait counter
17da: d0 03     bne   $17df
17dc: 3f fb 17  call  $17fb             ; tick
17df: f5 94 03  mov   a,$0394+x
17e2: d0 0e     bne   $17f2
17e4: f5 a3 02  mov   a,$02a3+x
17e7: fd        mov   y,a
17e8: bc        inc   a
17e9: f0 0f     beq   $17fa
17eb: f6 e7 03  mov   a,$03e7+y
17ee: 28 02     and   a,#$02
17f0: f0 08     beq   $17fa
17f2: 3f 64 1d  call  $1d64
17f5: e8 00     mov   a,#$00
17f7: d5 94 03  mov   $0394+x,a
17fa: 6f        ret

; tick
17fb: f5 a3 02  mov   a,$02a3+x
17fe: 68 ff     cmp   a,#$ff
1800: d0 01     bne   $1803             ; next unless unused track
1802: 6f        ret
; tick on sequence track
1803: 3f 13 16  call  $1613
1806: 3f 2a 1f  call  $1f2a             ; copy note length from prior track, if necessary
1809: 3f 83 1c  call  $1c83             ; read vcmd byte
180c: 68 a0     cmp   a,#$a0
180e: b0 5b     bcs   $186b             ; branch if a0-ff
1810: 68 50     cmp   a,#$50
1812: 90 0d     bcc   $1821             ; branch if 00-4f
; vcmd 50-9f - note (with length)
1814: 2d        push  a
1815: 3f 83 1c  call  $1c83             ; arg1 - delta-time
1818: d5 03 02  mov   $0203+x,a
181b: d4 14     mov   $14+x,a
181d: ae        pop   a
181e: 80        setc
181f: a8 50     sbc   a,#$50            ; redirect 50-9f => 00-4f
; 00-4f
1821: 68 00     cmp   a,#$00
1823: d0 10     bne   $1835
; vcmd 00,40 - rest
1825: 3f 04 1f  call  $1f04
1828: b0 01     bcs   $182b
182a: fd        mov   y,a
182b: f5 03 02  mov   a,$0203+x
182e: d4 14     mov   $14+x,a
1830: e8 00     mov   a,#$00
1832: d4 15     mov   $15+x,a
1834: 6f        ret
; vcmd 01-4f,51-9f - note
1835: 68 4f     cmp   a,#$4f            ; note number from vcmd
1837: f0 07     beq   $1840             ; skip pitch calculation if tie (4f,9f)
1839: 60        clrc
183a: 95 a4 02  adc   a,$02a4+x         ; add channel transpose
183d: 3f 01 1e  call  $1e01             ; update note pitch
1840: f4 15     mov   a,$15+x
1842: 68 ff     cmp   a,#$ff
1844: f0 03     beq   $1849             ; if duration counter != 255 then
1846: 3f 1e 1d  call  $1d1e             ;   note on
1849: f5 03 02  mov   a,$0203+x         ; delta-time
184c: d4 14     mov   $14+x,a           ; set wait counter
184e: f5 04 02  mov   a,$0204+x         ; duration rate
1851: d0 06     bne   $1859
; duration rate == 0 (slur/tie)
1853: e8 ff     mov   a,#$ff
1855: d4 15     mov   $15+x,a           ; invalidate duration counter
1857: 2f 11     bra   $186a
; or...
1859: 68 fe     cmp   a,#$fe
185b: d0 05     bne   $1862
; duration rate == 254
185d: f4 14     mov   a,$14+x
185f: 9c        dec   a                 ; full length - 1
1860: 2f 06     bra   $1868             ; update duration counter
; anything else
1862: fb 14     mov   y,$14+x
1864: 3f 0f 1d  call  $1d0f             ; delta time * (duration rate + 1) / 256;
1867: dd        mov   a,y
1868: d4 15     mov   $15+x,a           ; update duration counter
186a: 6f        ret

; a0-ff
186b: 68 b6     cmp   a,#$b6
186d: b0 03     bcs   $1872
186f: 5f 81 1a  jmp   $1a81
; b6-ff
1872: 68 ff     cmp   a,#$ff
1874: f0 64     beq   $18da
1876: 80        setc
1877: a8 db     sbc   a,#$db
1879: 90 13     bcc   $188e
; dispatch vcmd (db-fe)
187b: 4d        push  x
187c: 1c        asl   a
187d: 5d        mov   x,a
187e: f5 c5 08  mov   a,$08c5+x
1881: c5 8c 18  mov   $188b+1,a
1884: f5 c6 08  mov   a,$08c6+x
1887: c5 8d 18  mov   $188b+2,a         ; self-modify the following call op
188a: ce        pop   x
188b: 3f 00 00  call  $0000             ; do vcmd
; vcmd b6-da - nop
188e: 5f 09 18  jmp   $1809             ; do nothing, continue

1891: 6f        ret

1892: f4 15     mov   a,$15+x
1894: 68 ff     cmp   a,#$ff
1896: f0 41     beq   $18d9
1898: f4 14     mov   a,$14+x
189a: 9c        dec   a
189b: d0 3c     bne   $18d9
189d: f5 cb 02  mov   a,$02cb+x
18a0: 28 20     and   a,#$20
18a2: d0 35     bne   $18d9
18a4: f4 00     mov   a,$00+x
18a6: fb 01     mov   y,$01+x
18a8: da a0     movw  $a0,ya
18aa: 8d 00     mov   y,#$00
18ac: 2f 02     bra   $18b0
18ae: fc        inc   y
18af: fc        inc   y
18b0: f7 a0     mov   a,($a0)+y
18b2: 68 a0     cmp   a,#$a0
18b4: 90 18     bcc   $18ce
18b6: 68 b6     cmp   a,#$b6
18b8: 90 f5     bcc   $18af
18ba: 68 ec     cmp   a,#$ec
18bc: f0 f0     beq   $18ae
18be: 68 f6     cmp   a,#$f6
18c0: f0 ec     beq   $18ae
18c2: 68 eb     cmp   a,#$eb
18c4: f0 e8     beq   $18ae
18c6: 68 f2     cmp   a,#$f2
18c8: f0 e5     beq   $18af
18ca: 68 f3     cmp   a,#$f3
18cc: f0 e1     beq   $18af
18ce: 68 00     cmp   a,#$00
18d0: f0 07     beq   $18d9
18d2: 68 50     cmp   a,#$50
18d4: f0 03     beq   $18d9
18d6: 3f 4e 1d  call  $1d4e
18d9: 6f        ret

; vcmd ff - pattern end / end of track
18da: f5 40 02  mov   a,$0240+x
18dd: f0 03     beq   $18e2             ; end of track, if stack ptr != 0
18df: 5f 36 1c  jmp   $1c36             ; or, redirect to return from subroutine

; end of track
18e2: 3f 58 22  call  $2258
18e5: 3f a8 22  call  $22a8
18e8: e8 ff     mov   a,#$ff
18ea: c5 02 04  mov   $0402,a
18ed: 3f ce 1c  call  $1cce
18f0: b0 03     bcs   $18f5
18f2: cc 02 04  mov   $0402,y
18f5: f5 a3 02  mov   a,$02a3+x
18f8: 2d        push  a
18f9: 3f 4e 1d  call  $1d4e
18fc: 3f 95 16  call  $1695
18ff: e8 ff     mov   a,#$ff
1901: d5 a3 02  mov   $02a3+x,a
1904: e8 01     mov   a,#$01
1906: d4 14     mov   $14+x,a
1908: d5 03 02  mov   $0203+x,a
190b: ae        pop   a
190c: 8d 00     mov   y,#$00
190e: 76 a3 02  cmp   a,$02a3+y
1911: f0 30     beq   $1943
1913: fc        inc   y
1914: fc        inc   y
1915: ad 14     cmp   y,#$14
1917: d0 f5     bne   $190e
1919: fd        mov   y,a
191a: e8 00     mov   a,#$00
191c: d6 bf 03  mov   $03bf+y,a
191f: d6 c7 03  mov   $03c7+y,a
1922: f6 b7 03  mov   a,$03b7+y
1925: 65 48 2c  cmp   a,$2c48
1928: b0 09     bcs   $1933
192a: 2d        push  a
192b: e8 ff     mov   a,#$ff
192d: c5 0a 04  mov   $040a,a
1930: ae        pop   a
1931: 2f 02     bra   $1935
1933: 2d        push  a
1934: ae        pop   a
1935: fd        mov   y,a
1936: 4d        push  x
1937: 6d        push  y
1938: 3f 54 2a  call  $2a54
193b: ee        pop   y
193c: 3f ad 29  call  $29ad
193f: 3f bc 16  call  $16bc
1942: ce        pop   x
1943: e5 02 04  mov   a,$0402
1946: 68 ff     cmp   a,#$ff
1948: f0 06     beq   $1950
194a: 4d        push  x
194b: 5d        mov   x,a
194c: 3f 51 16  call  $1651
194f: ce        pop   x
1950: 6f        ret

; vcmd e1 - increase counter (to communicate with CPU)
1951: f5 a3 02  mov   a,$02a3+x         ; song slot
1954: fd        mov   y,a
1955: f6 ef 03  mov   a,$03ef+y
1958: bc        inc   a
1959: 28 7f     and   a,#$7f
195b: d6 ef 03  mov   $03ef+y,a
195e: 6f        ret

; vcmd e0 - conditional jump
195f: 3f 83 1c  call  $1c83
1962: c4 a0     mov   $a0,a
1964: 3f 83 1c  call  $1c83
1967: c4 a1     mov   $a1,a             ; arg1/2 - destination address to $a0/1
1969: f5 a3 02  mov   a,$02a3+x
196c: fd        mov   y,a
196d: f6 f7 03  mov   a,$03f7+y         ; variable for conditional branch
1970: 28 7f     and   a,#$7f            ; extract lower 7 bits
1972: c4 a2     mov   $a2,a
1974: 3f 83 1c  call  $1c83             ; arg3 - condition
1977: 64 a2     cmp   a,$a2
1979: d0 0b     bne   $1986             ; branch if cond_var == arg3 (repeat end)
; repeat again
197b: f4 00     mov   a,$00+x
197d: fb 01     mov   y,$01+x
197f: 60        clrc
1980: 7a a0     addw  ya,$a0            ; otherwise, do relative jump (repeat again)
1982: d4 00     mov   $00+x,a
1984: db 01     mov   $01+x,y
; repeat end
1986: f5 a3 02  mov   a,$02a3+x
1989: fd        mov   y,a
198a: e4 a2     mov   a,$a2
198c: 08 80     or    a,#$80
198e: d6 f7 03  mov   $03f7+y,a         ; set7 cond_var
1991: 6f        ret

; vcmd df - surround
1992: 3f 83 1c  call  $1c83             ; arg1: reverse bits (bit0: negate left volume, bit1: negate right volume)
1995: d5 80 03  mov   $0380+x,a
1998: e8 01     mov   a,#$01
199a: d5 94 03  mov   $0394+x,a
199d: 6f        ret

; vcmd e2 - set pitch envelope
199e: 3f 83 1c  call  $1c83             ; arg1: pitch envelope #
19a1: 68 ff     cmp   a,#$ff
19a3: f0 01     beq   $19a6             ; disable if $ff
19a5: 1c        asl   a
19a6: d4 78     mov   $78+x,a
19a8: e8 00     mov   a,#$00
19aa: d4 8d     mov   $8d+x,a           ; tuning = 0
19ac: bc        inc   a
19ad: d4 8c     mov   $8c+x,a           ; delta-time = 1
19af: bc        inc   a
19b0: d4 79     mov   $79+x,a           ; envelope offset = 2
19b2: 6f        ret

; vcmd e3 - noise on
19b3: 3f 38 22  call  $2238
19b6: 6f        ret

; vcmd e4 - noise off
19b7: 3f 58 22  call  $2258
19ba: 6f        ret

; vcmd e5 - master volume fade
19bb: f5 a3 02  mov   a,$02a3+x
19be: fd        mov   y,a
19bf: 3f 83 1c  call  $1c83             ; arg1: target
19c2: d6 d7 03  mov   $03d7+y,a
19c5: e8 80     mov   a,#$80
19c7: d6 df 03  mov   $03df+y,a
19ca: 3f 83 1c  call  $1c83             ; arg2: step
19cd: d6 af 03  mov   $03af+y,a
19d0: f6 e7 03  mov   a,$03e7+y
19d3: 08 04     or    a,#$04
19d5: d6 e7 03  mov   $03e7+y,a
19d8: 6f        ret

; vcmd e6 - volume fade
19d9: 3f 83 1c  call  $1c83
19dc: d5 43 03  mov   $0343+x,a         ; $0343+X = arg1 (target)
19df: 3f 83 1c  call  $1c83
19e2: d5 44 03  mov   $0344+x,a         ; $0344+X = arg2 (step)
19e5: e8 80     mov   a,#$80
19e7: d5 57 03  mov   $0357+x,a
19ea: 6f        ret

; vcmd e7 - channel fade in/out?
19eb: 3f 83 1c  call  $1c83             ; arg1
19ee: d5 53 02  mov   $0253+x,a
19f1: 68 80     cmp   a,#$80
19f3: b0 04     bcs   $19f9
19f5: e8 00     mov   a,#$00            ; mute channel
19f7: 2f 02     bra   $19fb
19f9: e8 ff     mov   a,#$ff            ; unmute channel
19fb: d5 54 02  mov   $0254+x,a         ; alternate channel volume (as initial volume?)
19fe: e8 80     mov   a,#$80
1a00: d5 2f 03  mov   $032f+x,a
1a03: 6f        ret

; vcmd e8 - pan fade
1a04: f5 cb 02  mov   a,$02cb+x
1a07: 28 f7     and   a,#$f7
1a09: d5 cb 02  mov   $02cb+x,a
1a0c: 3f 83 1c  call  $1c83             ; arg1 (target)
1a0f: 80        setc
1a10: b4 3c     sbc   a,$3c+x
1a12: 10 04     bpl   $1a18
1a14: 70 11     bvs   $1a27
1a16: 2f 02     bra   $1a1a
1a18: 50 0d     bvc   $1a27
1a1a: 48 ff     eor   a,#$ff
1a1c: bc        inc   a
1a1d: 2d        push  a
1a1e: f5 cb 02  mov   a,$02cb+x
1a21: 08 08     or    a,#$08
1a23: d5 cb 02  mov   $02cb+x,a
1a26: ae        pop   a
1a27: fd        mov   y,a
1a28: 3f 83 1c  call  $1c83
1a2b: d5 08 03  mov   $0308+x,a         ; $0308+X = arg2 (step)
1a2e: 4d        push  x
1a2f: 5d        mov   x,a
1a30: dd        mov   a,y
1a31: 8d 00     mov   y,#$00
1a33: 9e        div   ya,x
1a34: ce        pop   x
1a35: d5 1c 03  mov   $031c+x,a
1a38: dd        mov   a,y
1a39: d5 1b 03  mov   $031b+x,a
1a3c: e8 80     mov   a,#$80
1a3e: d5 2f 03  mov   $032f+x,a
1a41: 6f        ret

; vcmd e9 - tuning
1a42: 3f 83 1c  call  $1c83
1a45: d4 8d     mov   $8d+x,a           ; signed
1a47: 6f        ret

; vcmd ea - jump
1a48: 3f 83 1c  call  $1c83
1a4b: c4 a0     mov   $a0,a
1a4d: 3f 83 1c  call  $1c83
1a50: c4 a1     mov   $a1,a             ; set arg1/2 to $A0/1
1a52: f4 00     mov   a,$00+x
1a54: fb 01     mov   y,$01+x
1a56: 60        clrc
1a57: 7a a0     addw  ya,$a0            ; relative jump
1a59: d4 00     mov   $00+x,a
1a5b: db 01     mov   $01+x,y
1a5d: 6f        ret

; vcmd eb - tempo (relative)
1a5e: 4d        push  x
1a5f: f5 a3 02  mov   a,$02a3+x
1a62: 2d        push  a
1a63: fd        mov   y,a
1a64: 3f 83 1c  call  $1c83
1a67: 2d        push  a
1a68: f6 c7 03  mov   a,$03c7+y         ; tempo base
1a6b: ee        pop   y
1a6c: cf        mul   ya
1a6d: cd 40     mov   x,#$40
1a6f: 9e        div   ya,x              ; $03C7+Y * (double) (64 / rate)
1a70: 50 02     bvc   $1a74
1a72: e8 ff     mov   a,#$ff
1a74: ee        pop   y
1a75: d6 bf 03  mov   $03bf+y,a         ; set actual tempo
1a78: ce        pop   x
1a79: 6f        ret

; vcmd ec - set duration rate directly
1a7a: 3f 83 1c  call  $1c83
1a7d: d5 04 02  mov   $0204+x,a
1a80: 6f        ret

; vcmd a0-b5 - set duration rate from table
1a81: fd        mov   y,a
1a82: f6 eb 19  mov   a,$19eb+y         ; duration rate table
1a85: d5 04 02  mov   $0204+x,a
1a88: 5f 09 18  jmp   $1809

; duration rate lookup table
1a8b: db $0d,$1a,$26,$33,$40,$4d,$5a,$66
1a93: db $73,$80,$8c,$99,$a6,$b3,$bf,$cc
1a9b: db $d9,$e6,$f2,$fe,$ff,$00

; vcmd ed - set channel master volume
1aa1: 3f 83 1c  call  $1c83
1aa4: d4 28     mov   $28+x,a
1aa6: e8 01     mov   a,#$01
1aa8: d5 94 03  mov   $0394+x,a
1aab: 6f        ret

; vcmd ee - set panpot
1aac: 3f 83 1c  call  $1c83
1aaf: d4 3c     mov   $3c+x,a
1ab1: e8 01     mov   a,#$01
1ab3: d5 94 03  mov   $0394+x,a
1ab6: 6f        ret

; vcmd ef - set ADSR1/2 param from args
1ab7: 3f 83 1c  call  $1c83
1aba: d5 e0 02  mov   $02e0+x,a
1abd: 8d 05     mov   y,#$05
1abf: 3f e9 1d  call  $1de9             ; set ADSR(1)
1ac2: 3f 83 1c  call  $1c83
1ac5: d5 f3 02  mov   $02f3+x,a
1ac8: 8d 06     mov   y,#$06
1aca: 3f e9 1d  call  $1de9             ; set ADSR(2)
1acd: 28 e0     and   a,#$e0
1acf: 08 19     or    a,#$19
1ad1: d5 93 03  mov   $0393+x,a         ; set ADSR(2) for release (SL from arg2, SR=#$19)
1ad4: 6f        ret

; vcmd de - set ADSR and release rate
1ad5: 3f b7 1a  call  $1ab7             ; arg1/2 = ADSR1/2 param
; vcmd dd - set release rate
1ad8: f5 93 03  mov   a,$0393+x
1adb: 28 e0     and   a,#$e0
1add: c5 a0 00  mov   $00a0,a
1ae0: 3f 83 1c  call  $1c83             ; arg1 = release rate
1ae3: 28 1f     and   a,#$1f            ; sustain rate = 5 bit
1ae5: 05 a0 00  or    a,$00a0
1ae8: d5 93 03  mov   $0393+x,a         ; set ADSR(2) for release
1aeb: 6f        ret

; vcmd f0 - set patch
1aec: 3f 83 1c  call  $1c83             ; arg1 (patch number)
1aef: 2d        push  a
1af0: f5 a3 02  mov   a,$02a3+x         ; get song slot index to A
1af3: fd        mov   y,a
1af4: f6 b7 03  mov   a,$03b7+y         ; get instrument set # for the song slot
1af7: fd        mov   y,a               ; set it to Y
1af8: 4d        push  x
1af9: e5 46 2c  mov   a,$2c46
1afc: c4 a4     mov   $a4,a
1afe: e5 47 2c  mov   a,$2c47
1b01: c4 a5     mov   $a5,a             ; $a4/5 = instrument set table
1b03: cd 00     mov   x,#$00
1b05: ad 00     cmp   y,#$00
1b07: f0 0f     beq   $1b18             ; while y (instrset #) ~= 0 do
1b09: e7 a4     mov   a,($a4+x)         ;   read instrument count
1b0b: bc        inc   a
1b0c: bc        inc   a
1b0d: 6d        push  y
1b0e: 8d 00     mov   y,#$00
1b10: 7a a4     addw  ya,$a4            ;   skip (2 + instrument_count) bytes
1b12: da a4     movw  $a4,ya
1b14: ee        pop   y
1b15: dc        dec   y                 ;   y--;
1b16: 2f ed     bra   $1b05             ; end
1b18: ce        pop   x
1b19: ae        pop   a                 ; patch number in A
1b1a: bc        inc   a                 ; skip offset +0: number of instruments
1b1b: bc        inc   a                 ; skip offset +1: ?
1b1c: fd        mov   y,a
1b1d: f7 a4     mov   a,($a4)+y         ; read global instrument number from ($a4/5)[2 + patch]
1b1f: 65 90 01  cmp   a,$0190           ; $0190 = #$ff
1b22: f0 08     beq   $1b2c
1b24: fd        mov   y,a
1b25: f6 10 04  mov   a,$0410+y         ; read SRCN by global instrument number
1b28: 68 ff     cmp   a,#$ff
1b2a: d0 15     bne   $1b41
; instrument not loaded
1b2c: f5 cb 02  mov   a,$02cb+x
1b2f: 08 80     or    a,#$80            ; set7 $02cb+x
1b31: d5 cb 02  mov   $02cb+x,a
1b34: 3f 64 1d  call  $1d64
1b37: 3f 04 1f  call  $1f04
1b3a: b0 04     bcs   $1b40
1b3c: fd        mov   y,a
1b3d: 3f 59 1d  call  $1d59
1b40: 6f        ret

; read sample info table (A=SRCN)
1b41: d5 cc 02  mov   $02cc+x,a         ; save SRCN
1b44: 8d 04     mov   y,#$04
1b46: 3f e9 1d  call  $1de9             ; set SRCN
1b49: 8d 08     mov   y,#$08
1b4b: cf        mul   ya
1b4c: 8f e6 a4  mov   $a4,#$e6
1b4f: 8f 05 a5  mov   $a5,#$05          ; $05e6 = sample info table
1b52: 7a a4     addw  ya,$a4
1b54: da a4     movw  $a4,ya            ; $a4 = &SampInfoTable[patch * 8]
1b56: 8d 02     mov   y,#$02
1b58: f7 a4     mov   a,($a4)+y
1b5a: d5 e0 02  mov   $02e0+x,a         ; offset +2: ADSR(1)
1b5d: 8d 05     mov   y,#$05
1b5f: 3f e9 1d  call  $1de9             ; set ADSR(1)
1b62: 8d 03     mov   y,#$03
1b64: f7 a4     mov   a,($a4)+y
1b66: d5 f3 02  mov   $02f3+x,a         ; offset +3: ADSR(2)
1b69: 8d 06     mov   y,#$06
1b6b: 3f e9 1d  call  $1de9             ; set ADSR(2)
1b6e: 28 e0     and   a,#$e0
1b70: 08 19     or    a,#$19            ; SR = #$19
1b72: d5 93 03  mov   $0393+x,a         ; save another ADSR(2) (release rate)
1b75: 8d 04     mov   y,#$04
1b77: f7 a4     mov   a,($a4)+y
1b79: d5 df 02  mov   $02df+x,a         ; offset +4: GAIN
1b7c: 8d 07     mov   y,#$07
1b7e: 3f e9 1d  call  $1de9             ; set GAIN
1b81: 8d 05     mov   y,#$05
1b83: f7 a4     mov   a,($a4)+y
1b85: d5 b8 02  mov   $02b8+x,a         ; offset +5: pitch multiplier (integer)
1b88: 8d 06     mov   y,#$06
1b8a: f7 a4     mov   a,($a4)+y
1b8c: d5 b7 02  mov   $02b7+x,a         ; offset +6: pitch multiplier (fraction)
1b8f: 8d 07     mov   y,#$07
1b91: f7 a4     mov   a,($a4)+y         ; read offset +7
1b93: 08 08     or    a,#$08            ; set3
1b95: d7 a4     mov   ($a4)+y,a         ; write it back
1b97: f5 cb 02  mov   a,$02cb+x
1b9a: 28 7f     and   a,#$7f
1b9c: d5 cb 02  mov   $02cb+x,a         ; instrument loaded
1b9f: e8 01     mov   a,#$01
1ba1: d5 94 03  mov   $0394+x,a
1ba4: 6f        ret

; vcmd f1,f2 - duration copy on
1ba5: f5 cb 02  mov   a,$02cb+x
1ba8: 08 01     or    a,#$01
1baa: d5 cb 02  mov   $02cb+x,a         ; trun copy-length flag on
1bad: 5f 2a 1f  jmp   $1f2a             ; copy note length from prior track

; vcmd f3 - duration copy off
1bb0: f5 cb 02  mov   a,$02cb+x
1bb3: 28 fe     and   a,#$fe
1bb5: d5 cb 02  mov   $02cb+x,a         ; trun copy-length flag off
1bb8: 6f        ret

; vcmd db - repeat break (alternative)
1bb9: f5 2b 02  mov   a,$022b+x
1bbc: 2f 19     bra   $1bd7             ; do relative jump if it's 0 (i.e. last time)

; vcmd dc - repeat twice (alternative)
1bbe: f5 2b 02  mov   a,$022b+x
1bc1: d0 02     bne   $1bc5
1bc3: e8 02     mov   a,#$02            ; repeat twice
1bc5: 9c        dec   a
1bc6: d5 2b 02  mov   $022b+x,a
1bc9: 2f 0c     bra   $1bd7

; vcmd f4 - repeat twice
1bcb: 8d 02     mov   y,#$02            ; repeat count = 2
; contidional loop
1bcd: f5 17 02  mov   a,$0217+x
1bd0: d0 01     bne   $1bd3
1bd2: dd        mov   a,y
1bd3: 9c        dec   a                 ; dec repeat count
1bd4: d5 17 02  mov   $0217+x,a
1bd7: d0 06     bne   $1bdf             ; do relative jump if it's not 0
1bd9: 3f 83 1c  call  $1c83
1bdc: 5f 83 1c  jmp   $1c83             ; just ignore arg1/2
1bdf: 5f 48 1a  jmp   $1a48             ; relative jump

; vcmd f5 - repeat until
1be2: 3f 83 1c  call  $1c83             ; repeat count
1be5: fd        mov   y,a
1be6: 2f e5     bra   $1bcd

; vcmd f6 - set volume
1be8: 3f 83 1c  call  $1c83
1beb: d4 29     mov   $29+x,a
1bed: e8 01     mov   a,#$01
1bef: d5 94 03  mov   $0394+x,a
1bf2: 6f        ret

; vcmd f7 - nop
1bf3: 6f        ret

; vcmd f8 - call subroutine
1bf4: 3f 83 1c  call  $1c83
1bf7: c4 a0     mov   $a0,a
1bf9: 3f 83 1c  call  $1c83
1bfc: c4 a1     mov   $a1,a
1bfe: f5 40 02  mov   a,$0240+x         ; call stack ptr
1c01: 68 06     cmp   a,#$06
1c03: b0 1d     bcs   $1c22             ; allows triple nest in max
1c05: 2d        push  a
1c06: 3f 23 1c  call  $1c23             ; set where to write in $A2/3
1c09: ee        pop   y
1c0a: f4 00     mov   a,$00+x
1c0c: d7 a2     mov   ($a2)+y,a
1c0e: fc        inc   y
1c0f: f4 01     mov   a,$01+x
1c11: d7 a2     mov   ($a2)+y,a         ; put reading ptr ($00/1)
1c13: fc        inc   y
1c14: dd        mov   a,y
1c15: d5 40 02  mov   $0240+x,a         ; increment stack ptr
1c18: fb 01     mov   y,$01+x
1c1a: f4 00     mov   a,$00+x
1c1c: 7a a0     addw  ya,$a0
1c1e: d4 00     mov   $00+x,a
1c20: db 01     mov   $01+x,y           ; update reading ptr to $00/1 + arg1/2
1c22: 6f        ret
; calc where to put reading ptr
1c23: e8 67     mov   a,#$67
1c25: c4 a2     mov   $a2,a
1c27: e8 02     mov   a,#$02
1c29: c4 a3     mov   $a3,a
1c2b: 7d        mov   a,x
1c2c: 8d 03     mov   y,#$03
1c2e: cf        mul   ya
1c2f: 8d 00     mov   y,#$00
1c31: 7a a2     addw  ya,$a2
1c33: da a2     movw  $a2,ya            ; $A2 = X*3 + #$0267
1c35: 6f        ret

; vcmd f9 - return from subroutine
1c36: f5 40 02  mov   a,$0240+x
1c39: f0 13     beq   $1c4e             ; nothing has been called, do nothing
1c3b: 2d        push  a
1c3c: 3f 23 1c  call  $1c23             ; set where to read in $A2/3
1c3f: ee        pop   y
1c40: dc        dec   y
1c41: f7 a2     mov   a,($a2)+y
1c43: d4 01     mov   $01+x,a
1c45: dc        dec   y
1c46: f7 a2     mov   a,($a2)+y
1c48: d4 00     mov   $00+x,a           ; restore reading ptr
1c4a: dd        mov   a,y
1c4b: d5 40 02  mov   $0240+x,a         ; decrement stack ptr
1c4e: 6f        ret

; vcmd fa - transpose (absolute)
1c4f: 3f 83 1c  call  $1c83             ; arg1 = key (signed)
1c52: d5 a4 02  mov   $02a4+x,a
1c55: 6f        ret

; vcmd fb - pitch slide
1c56: 3f 83 1c  call  $1c83             ; arg1 = key (signed)
1c59: 68 00     cmp   a,#$00
1c5b: 10 05     bpl   $1c62
1c5d: 48 ff     eor   a,#$ff
1c5f: bc        inc   a
1c60: 08 80     or    a,#$80
1c62: d5 07 03  mov   $0307+x,a
1c65: 3f 83 1c  call  $1c83             ; arg2 (step)
1c68: d5 f4 02  mov   $02f4+x,a
1c6b: 5c        lsr   a
1c6c: d5 58 03  mov   $0358+x,a
1c6f: 6f        ret

; vcmd fc - echo on
1c70: 3f 7a 22  call  $227a
1c73: 6f        ret

; vcmd fd - echo off
1c74: 3f 9a 22  call  $229a
1c77: 6f        ret

; vcmd fe - run miniseq
1c78: f5 a3 02  mov   a,$02a3+x
1c7b: fd        mov   y,a
1c7c: 3f 83 1c  call  $1c83             ; arg1: miniseq #
1c7f: 3f 4e 23  call  $234e             ; run minivcmd sequence
1c82: 6f        ret

; read next arg
1c83: e7 00     mov   a,($00+x)
1c85: bb 00     inc   $00+x
1c87: d0 02     bne   $1c8b
1c89: bb 01     inc   $01+x
1c8b: 6f        ret

1c8c: 20        clrp
1c8d: e4 a9     mov   a,$a9
1c8f: f0 0f     beq   $1ca0
1c91: 8b a9     dec   $a9
1c93: d0 0b     bne   $1ca0
1c95: 38 df ab  and   $ab,#$df          ; FLG shadow
1c98: e4 ab     mov   a,$ab
1c9a: 20        clrp
1c9b: 8f 6c f2  mov   $f2,#$6c
1c9e: c4 f3     mov   $f3,a             ; FLG
1ca0: 20        clrp
1ca1: e4 aa     mov   a,$aa
1ca3: f0 27     beq   $1ccc
1ca5: 8b aa     dec   $aa
1ca7: d0 23     bne   $1ccc
1ca9: 20        clrp
1caa: 8f 2c f2  mov   $f2,#$2c
1cad: e5 ad 00  mov   a,$00ad
1cb0: c4 f3     mov   $f3,a             ; EVOL(L)
1cb2: 8f 3c f2  mov   $f2,#$3c
1cb5: e5 ff 03  mov   a,$03ff
1cb8: f0 05     beq   $1cbf
1cba: e5 ac 00  mov   a,$00ac
1cbd: 2f 03     bra   $1cc2
1cbf: e5 ad 00  mov   a,$00ad
1cc2: c4 f3     mov   $f3,a             ; EVOL(R)
1cc4: 8f 0d f2  mov   $f2,#$0d
1cc7: e5 b0 00  mov   a,$00b0
1cca: c4 f3     mov   $f3,a             ; EFB
1ccc: 20        clrp
1ccd: 6f        ret

1cce: 3f 1d 1f  call  $1f1d
1cd1: b0 02     bcs   $1cd5
1cd3: 80        setc
1cd4: 6f        ret

1cd5: 7d        mov   a,x
1cd6: c5 03 04  mov   $0403,a
1cd9: 8d 00     mov   y,#$00
1cdb: dd        mov   a,y
1cdc: 65 03 04  cmp   a,$0403
1cdf: f0 08     beq   $1ce9
1ce1: f6 6b 03  mov   a,$036b+y
1ce4: 75 6b 03  cmp   a,$036b+x
1ce7: f0 08     beq   $1cf1
1ce9: fc        inc   y
1cea: fc        inc   y
1ceb: ad 14     cmp   y,#$14
1ced: 90 ec     bcc   $1cdb
1cef: 80        setc
1cf0: 6f        ret

1cf1: 60        clrc
1cf2: 6f        ret

1cf3: 65 48 2c  cmp   a,$2c48
1cf6: b0 13     bcs   $1d0b
1cf8: cd 00     mov   x,#$00
1cfa: 2d        push  a
1cfb: f5 bf 03  mov   a,$03bf+x
1cfe: ae        pop   a
1cff: f0 05     beq   $1d06
1d01: 75 b7 03  cmp   a,$03b7+x
1d04: f0 07     beq   $1d0d
1d06: 3d        inc   x
1d07: c8 08     cmp   x,#$08
1d09: 90 ef     bcc   $1cfa
1d0b: 60        clrc
1d0c: 6f        ret

1d0d: 80        setc
1d0e: 6f        ret

; multiply Y by (A+1)/256 with exceptions
1d0f: bc        inc   a
1d10: f0 0b     beq   $1d1d             ; a=255 : simply returns Y
1d12: 68 81     cmp   a,#$81
1d14: b0 01     bcs   $1d17
1d16: 9c        dec   a                 ; a += 1 if a <= 0x80
1d17: cf        mul   ya
1d18: 68 00     cmp   a,#$00
1d1a: 10 01     bpl   $1d1d
1d1c: fc        inc   y                 ; round up
1d1d: 6f        ret

; note on
1d1e: f5 cb 02  mov   a,$02cb+x
1d21: 28 80     and   a,#$80
1d23: f0 01     beq   $1d26
1d25: 6f        ret

1d26: 8d 06     mov   y,#$06
1d28: f5 f3 02  mov   a,$02f3+x
1d2b: 3f e9 1d  call  $1de9             ; set ADSR(2)
1d2e: 2f 00     bra   $1d30
;
1d30: 3f 04 1f  call  $1f04
1d33: b0 0b     bcs   $1d40
1d35: fd        mov   y,a
1d36: f6 0d 09  mov   a,$090d+y         ; get channel bitmask
1d39: 20        clrp
1d3a: 8f 4c f2  mov   $f2,#$4c
1d3d: c4 f3     mov   $f3,a             ; set KON
1d3f: 20        clrp
1d40: e8 02     mov   a,#$02
1d42: d4 79     mov   $79+x,a
1d44: 6f        ret

; note off - set ADSR release
1d45: f5 93 03  mov   a,$0393+x         ; ADSR(2) for release
1d48: 8d 06     mov   y,#$06
1d4a: 3f e9 1d  call  $1de9             ; set ADSR(2)
1d4d: 6f        ret

1d4e: 3f 04 1f  call  $1f04
1d51: b0 04     bcs   $1d57
1d53: fd        mov   y,a
1d54: 3f 59 1d  call  $1d59
1d57: 6f        ret

1d58: 6f        ret

1d59: f6 0d 09  mov   a,$090d+y         ; get channel bitmask
1d5c: 20        clrp
1d5d: 8f 5c f2  mov   $f2,#$5c
1d60: c4 f3     mov   $f3,a             ; KOF
1d62: 20        clrp
1d63: 6f        ret

; calculate final volume
1d64: f5 cb 02  mov   a,$02cb+x
1d67: 28 80     and   a,#$80
1d69: f0 0a     beq   $1d75
1d6b: e8 00     mov   a,#$00
1d6d: c5 02 04  mov   $0402,a
1d70: c5 03 04  mov   $0403,a
1d73: 2f 63     bra   $1dd8
1d75: fb 28     mov   y,$28+x           ; y = channel master volume
1d77: f4 29     mov   a,$29+x           ; a = channel volume
1d79: 3f 0f 1d  call  $1d0f             ; y *= (a + 1) / 256;
1d7c: f5 54 02  mov   a,$0254+x         ; alternate channel volume
1d7f: 3f 0f 1d  call  $1d0f             ; y *= (a + 1) / 256;
1d82: f5 a3 02  mov   a,$02a3+x         ; song slot index
1d85: 4d        push  x
1d86: 5d        mov   x,a
1d87: f5 a7 03  mov   a,$03a7+x         ; master volume (per song)
1d8a: ce        pop   x
1d8b: 3f 0f 1d  call  $1d0f             ; y *= (a + 1) / 256;
1d8e: cc 02 04  mov   $0402,y
1d91: cc 03 04  mov   $0403,y           ; set L/R volume (pan will be applied later)
1d94: e5 ff 03  mov   a,$03ff
1d97: f0 3f     beq   $1dd8             ; branch if mono
;
1d99: f4 3c     mov   a,$3c+x           ; panpot (signed)
1d9b: f0 1b     beq   $1db8             ; skip if center
1d9d: 4d        push  x
1d9e: cd 01     mov   x,#$01            ; target = right volume
1da0: 68 00     cmp   a,#$00
1da2: 10 08     bpl   $1dac
; panpot < 0
1da4: 1d        dec   x                 ; target = left volume
1da5: 48 ff     eor   a,#$ff
1da7: bc        inc   a
1da8: 10 02     bpl   $1dac
1daa: e8 7f     mov   a,#$7f            ; a = max(127, abs(a))
; calculate volume balance
1dac: 1c        asl   a
1dad: 48 ff     eor   a,#$ff
1daf: 9c        dec   a                 ; a = 255 - (a * 2 + 1)
1db0: 3f 0f 1d  call  $1d0f             ; y *= (a + 1) / 256;
1db3: dd        mov   a,y
1db4: d5 02 04  mov   $0402+x,a         ; decrease weak channel volume, do not change other one
1db7: ce        pop   x
; surround
1db8: f5 80 03  mov   a,$0380+x
1dbb: 28 01     and   a,#$01
1dbd: f0 09     beq   $1dc8
1dbf: e5 02 04  mov   a,$0402
1dc2: 48 ff     eor   a,#$ff
1dc4: bc        inc   a
1dc5: c5 02 04  mov   $0402,a           ; reverse-phase left channel
1dc8: f5 80 03  mov   a,$0380+x
1dcb: 28 02     and   a,#$02
1dcd: f0 09     beq   $1dd8
1dcf: e5 03 04  mov   a,$0403
1dd2: 48 ff     eor   a,#$ff
1dd4: bc        inc   a
1dd5: c5 03 04  mov   $0403,a           ; reverse-phase right channel
; write volume to dsp
1dd8: e5 02 04  mov   a,$0402
1ddb: 8d 01     mov   y,#$01
1ddd: 3f e9 1d  call  $1de9             ; set VOL(R)
1de0: e5 03 04  mov   a,$0403
1de3: 8d 00     mov   y,#$00
1de5: 3f e9 1d  call  $1de9             ; set VOL(L)
1de8: 6f        ret

; set a to dsp voice reg y
1de9: 2d        push  a
1dea: cc 04 04  mov   $0404,y
1ded: 3f 04 1f  call  $1f04
1df0: b0 0d     bcs   $1dff
1df2: 9f        xcn   a
1df3: 60        clrc
1df4: 85 04 04  adc   a,$0404
1df7: 20        clrp
1df8: c4 f2     mov   $f2,a
1dfa: ae        pop   a
1dfb: c4 f3     mov   $f3,a
1dfd: 20        clrp
1dfe: 6f        ret

1dff: ae        pop   a
1e00: 6f        ret

; update note pitch
1e01: d5 18 02  mov   $0218+x,a         ; save note number
1e04: 20        clrp
1e05: f5 cb 02  mov   a,$02cb+x
1e08: 28 20     and   a,#$20
1e0a: f0 14     beq   $1e20             ; branch if noise off
; noise note
1e0c: f5 18 02  mov   a,$0218+x
1e0f: 28 1f     and   a,#$1f            ; noise frequency = note number & 0x1f
1e11: 38 e0 ab  and   $ab,#$e0
1e14: 04 ab     or    a,$ab
1e16: c4 ab     mov   $ab,a             ; update FLG shadow
1e18: 20        clrp
1e19: 8f 6c f2  mov   $f2,#$6c
1e1c: c4 f3     mov   $f3,a             ; FLG
1e1e: 20        clrp
1e1f: 6f        ret
; regular note
1e20: f5 cb 02  mov   a,$02cb+x
1e23: 28 80     and   a,#$80
1e25: d0 11     bne   $1e38             ; skip if instrument not loaded
1e27: 3f 39 1e  call  $1e39             ; calculate pitch
1e2a: e4 a2     mov   a,$a2
1e2c: 8d 02     mov   y,#$02
1e2e: 3f e9 1d  call  $1de9             ; set P(L)
1e31: e4 a3     mov   a,$a3
1e33: 8d 03     mov   y,#$03
1e35: 3f e9 1d  call  $1de9             ; set P(H)
1e38: 6f        ret

; calculate pitch, return pitch into $a2/3
1e39: f5 18 02  mov   a,$0218+x         ; note number
1e3c: 60        clrc
1e3d: 9c        dec   a                 ; decrease it (01-4f => 00-4e)
1e3e: 8d 00     mov   y,#$00
1e40: 4d        push  x
1e41: cd 0c     mov   x,#$0c
1e43: 9e        div   ya,x
1e44: ce        pop   x
1e45: c4 a4     mov   $a4,a             ; octave
1e47: dd        mov   a,y               ; key
1e48: bc        inc   a
1e49: 1c        asl   a
1e4a: fd        mov   y,a
1e4b: f6 15 09  mov   a,$0915+y         ; read pitch table
1e4e: c4 a0     mov   $a0,a             ; $a0/1 = pitch for the key
1e50: f6 16 09  mov   a,$0916+y
1e53: c4 a1     mov   $a1,a
1e55: f4 8d     mov   a,$8d+x           ; tuning
1e57: 30 1b     bmi   $1e74
; positive tuning
1e59: fc        inc   y
1e5a: fc        inc   y
1e5b: 2d        push  a
1e5c: f6 16 09  mov   a,$0916+y
1e5f: 2d        push  a
1e60: f6 15 09  mov   a,$0915+y
1e63: ee        pop   y
1e64: 9a a0     subw  ya,$a0
1e66: da a2     movw  $a2,ya            ; $a2/3 - delta pitch
1e68: ae        pop   a
1e69: 3f e3 1e  call  $1ee3             ; calculate actual delta pitch
1e6c: ba a2     movw  ya,$a2
1e6e: 7a a0     addw  ya,$a0
1e70: da a0     movw  $a0,ya
1e72: 2f 20     bra   $1e94
; negative tuning
1e74: dc        dec   y
1e75: dc        dec   y                 ; can be negative if note=c?
1e76: 48 ff     eor   a,#$ff
1e78: bc        inc   a
1e79: 2d        push  a
1e7a: f6 16 09  mov   a,$0916+y
1e7d: 2d        push  a
1e7e: f6 15 09  mov   a,$0915+y
1e81: ee        pop   y
1e82: da a2     movw  $a2,ya
1e84: ba a0     movw  ya,$a0
1e86: 9a a2     subw  ya,$a2
1e88: da a2     movw  $a2,ya            ; $a2/3 - delta pitch (absolute)
1e8a: ae        pop   a
1e8b: 3f e3 1e  call  $1ee3             ; calculate actual delta pitch
1e8e: ba a0     movw  ya,$a0
1e90: 9a a2     subw  ya,$a2
1e92: da a0     movw  $a0,ya
; apply per-instrument tuning
1e94: f5 b7 02  mov   a,$02b7+x         ; per-instrument tuning (fraction)
1e97: eb a1     mov   y,$a1
1e99: cf        mul   ya
1e9a: da a2     movw  $a2,ya
1e9c: f5 b8 02  mov   a,$02b8+x         ; per-instrument tuning (integer)
1e9f: eb a0     mov   y,$a0
1ea1: cf        mul   ya
1ea2: 7a a2     addw  ya,$a2
1ea4: da a2     movw  $a2,ya
1ea6: 3c        rol   a
1ea7: 28 01     and   a,#$01
1ea9: c4 a5     mov   $a5,a
1eab: f5 b7 02  mov   a,$02b7+x
1eae: eb a0     mov   y,$a0
1eb0: cf        mul   ya
1eb1: 6d        push  y
1eb2: f5 b8 02  mov   a,$02b8+x
1eb5: eb a1     mov   y,$a1
1eb7: cf        mul   ya
1eb8: 2d        push  a
1eb9: dd        mov   a,y
1eba: 60        clrc
1ebb: 84 a5     adc   a,$a5
1ebd: c4 a5     mov   $a5,a
1ebf: ee        pop   y
1ec0: ae        pop   a
1ec1: 7a a2     addw  ya,$a2
1ec3: da a2     movw  $a2,ya
1ec5: 28 00     and   a,#$00
1ec7: 84 a5     adc   a,$a5
1ec9: c4 a5     mov   $a5,a
1ecb: e8 08     mov   a,#$08            ; target octave = 8
1ecd: 80        setc
1ece: a4 a4     sbc   a,$a4             ; subtract octave
1ed0: 30 10     bmi   $1ee2
1ed2: f0 0e     beq   $1ee2
1ed4: bc        inc   a
1ed5: fd        mov   y,a
1ed6: 4b a5     lsr   $a5
1ed8: 6b a3     ror   $a3
1eda: 6b a2     ror   $a2
1edc: fe f8     dbnz  y,$1ed6           ; apply octave
1ede: 90 02     bcc   $1ee2
1ee0: 3a a2     incw  $a2               ; + round(0.5)
1ee2: 6f        ret

; apply tuning, a = tuning (absolute value), $a2/3 = delta pitch
1ee3: 68 7f     cmp   a,#$7f
1ee5: f0 1c     beq   $1f03             ; tuning = 0x7f: exactly 1 semitone
1ee7: 1c        asl   a                 ; convert to 8 bits
1ee8: 68 80     cmp   a,#$80
1eea: 90 01     bcc   $1eed
1eec: bc        inc   a                 ; +0.5 if tuning >= 0x40
1eed: 2d        push  a
1eee: eb a2     mov   y,$a2
1ef0: cf        mul   ya
1ef1: cb a2     mov   $a2,y
1ef3: ae        pop   a
1ef4: eb a3     mov   y,$a3
1ef6: cf        mul   ya
1ef7: 60        clrc
1ef8: 84 a2     adc   a,$a2
1efa: c4 a2     mov   $a2,a
1efc: 0d        push  psw
1efd: dd        mov   a,y
1efe: 8e        pop   psw
1eff: 88 00     adc   a,#$00
1f01: c4 a3     mov   $a3,a
1f03: 6f        ret

1f04: 3f 1d 1f  call  $1f1d
1f07: b0 0e     bcs   $1f17
1f09: f5 6b 03  mov   a,$036b+x
1f0c: 1c        asl   a
1f0d: fd        mov   y,a
1f0e: f6 6c 03  mov   a,$036c+y
1f11: 28 02     and   a,#$02
1f13: f0 02     beq   $1f17
1f15: 80        setc
1f16: 6f        ret

1f17: f5 6b 03  mov   a,$036b+x
1f1a: 68 08     cmp   a,#$08
1f1c: 6f        ret

1f1d: 2d        push  a
1f1e: f5 a3 02  mov   a,$02a3+x         ; song slot index
1f21: fd        mov   y,a
1f22: f6 b7 03  mov   a,$03b7+y         ; instrument set #
1f25: 65 48 2c  cmp   a,$2c48
1f28: ae        pop   a
1f29: 6f        ret

; copy note length from prior track, if necessary
1f2a: f5 cb 02  mov   a,$02cb+x
1f2d: 28 01     and   a,#$01
1f2f: d0 01     bne   $1f32             ; branch if copy requested
1f31: 6f        ret
; copy duration info of from other channel
1f32: f5 a3 02  mov   a,$02a3+x         ; current song slot
1f35: c4 a0     mov   $a0,a
1f37: f5 7f 03  mov   a,$037f+x         ; current track index
1f3a: f0 26     beq   $1f62             ; quit if track #0, it does not have prior track
1f3c: 9c        dec   a
1f3d: c4 a2     mov   $a2,a             ; prior track #
1f3f: 8d 00     mov   y,#$00            ; zero offset for voice slot
; search for prior track and copy note lengths
1f41: f6 a3 02  mov   a,$02a3+y         ; song slot
1f44: 64 a0     cmp   a,$a0
1f46: d0 14     bne   $1f5c             ; continue if the song slot != current song slot
1f48: f6 7f 03  mov   a,$037f+y         ; track index
1f4b: 64 a2     cmp   a,$a2
1f4d: d0 0d     bne   $1f5c             ; continue if it's not target track (prior track)
1f4f: f6 03 02  mov   a,$0203+y
1f52: d5 03 02  mov   $0203+x,a         ; copy delta-time
1f55: f6 04 02  mov   a,$0204+y
1f58: d5 04 02  mov   $0204+x,a         ; copy duration rate
1f5b: 6f        ret                     ; return from function
1f5c: fc        inc   y
1f5d: fc        inc   y                 ; y += 2
1f5e: ad 14     cmp   y,#$14
1f60: 90 df     bcc   $1f41             ; repeat for all 10 logical voice slots
1f62: 6f        ret

1f63: f5 f4 02  mov   a,$02f4+x
1f66: d0 01     bne   $1f69
1f68: 6f        ret

1f69: f5 07 03  mov   a,$0307+x
1f6c: 10 22     bpl   $1f90
1f6e: 28 7f     and   a,#$7f
1f70: c4 a1     mov   $a1,a
1f72: f4 8d     mov   a,$8d+x
1f74: 10 07     bpl   $1f7d
1f76: 8b a1     dec   $a1
1f78: 3f 15 20  call  $2015
1f7b: 88 80     adc   a,#$80
1f7d: 3f cf 1f  call  $1fcf
1f80: 8b a2     dec   $a2
1f82: 30 05     bmi   $1f89
1f84: 3f 15 20  call  $2015
1f87: 2f f7     bra   $1f80
1f89: e4 a3     mov   a,$a3
1f8b: 5c        lsr   a
1f8c: d4 8d     mov   $8d+x,a
1f8e: 2f 2b     bra   $1fbb
1f90: c4 a1     mov   $a1,a
1f92: f4 8d     mov   a,$8d+x
1f94: f0 11     beq   $1fa7
1f96: 30 0c     bmi   $1fa4
1f98: 8b a1     dec   $a1
1f9a: 3f 1e 20  call  $201e
1f9d: e8 80     mov   a,#$80
1f9f: 80        setc
1fa0: b4 8d     sbc   a,$8d+x
1fa2: 2f 03     bra   $1fa7
1fa4: 48 ff     eor   a,#$ff
1fa6: bc        inc   a
1fa7: 3f cf 1f  call  $1fcf
1faa: 8b a2     dec   $a2
1fac: 30 05     bmi   $1fb3
1fae: 3f 1e 20  call  $201e
1fb1: 2f f7     bra   $1faa
1fb3: e4 a3     mov   a,$a3
1fb5: 5c        lsr   a
1fb6: 48 ff     eor   a,#$ff
1fb8: bc        inc   a
1fb9: d4 8d     mov   $8d+x,a
1fbb: 3f 04 1e  call  $1e04
1fbe: f5 f4 02  mov   a,$02f4+x
1fc1: 9c        dec   a
1fc2: d5 f4 02  mov   $02f4+x,a
1fc5: f5 58 03  mov   a,$0358+x
1fc8: f0 04     beq   $1fce
1fca: 9c        dec   a
1fcb: d5 58 03  mov   $0358+x,a
1fce: 6f        ret

1fcf: 1c        asl   a
1fd0: 68 80     cmp   a,#$80
1fd2: 90 01     bcc   $1fd5
1fd4: bc        inc   a
1fd5: c4 a0     mov   $a0,a
1fd7: 4d        push  x
1fd8: f5 f4 02  mov   a,$02f4+x
1fdb: 5d        mov   x,a
1fdc: e4 a1     mov   a,$a1
1fde: 8d 00     mov   y,#$00
1fe0: 9e        div   ya,x
1fe1: c4 a2     mov   $a2,a
1fe3: e4 a0     mov   a,$a0
1fe5: 9e        div   ya,x
1fe6: ce        pop   x
1fe7: c4 a3     mov   $a3,a
1fe9: e4 a0     mov   a,$a0
1feb: 80        setc
1fec: a4 a3     sbc   a,$a3
1fee: b0 02     bcs   $1ff2
1ff0: ab a2     inc   $a2
1ff2: c4 a3     mov   $a3,a
1ff4: dd        mov   a,y
1ff5: 60        clrc
1ff6: 95 58 03  adc   a,$0358+x
1ff9: b0 09     bcs   $2004
1ffb: 75 f4 02  cmp   a,$02f4+x
1ffe: b0 04     bcs   $2004
2000: d5 58 03  mov   $0358+x,a
2003: 6f        ret

2004: b5 f4 02  sbc   a,$02f4+x
2007: d5 58 03  mov   $0358+x,a
200a: 8b a3     dec   $a3
200c: e4 a3     mov   a,$a3
200e: 68 ff     cmp   a,#$ff
2010: d0 02     bne   $2014
2012: ab a2     inc   $a2
2014: 6f        ret

2015: f5 18 02  mov   a,$0218+x
2018: 9c        dec   a
2019: d5 18 02  mov   $0218+x,a
201c: 2f 07     bra   $2025
201e: f5 18 02  mov   a,$0218+x
2021: bc        inc   a
2022: d5 18 02  mov   $0218+x,a
2025: f5 07 03  mov   a,$0307+x
2028: 9c        dec   a
2029: d5 07 03  mov   $0307+x,a
202c: 6f        ret

202d: f5 08 03  mov   a,$0308+x
2030: d0 01     bne   $2033
2032: 6f        ret

2033: e8 01     mov   a,#$01
2035: d5 94 03  mov   $0394+x,a
2038: f5 2f 03  mov   a,$032f+x
203b: 60        clrc
203c: 95 1b 03  adc   a,$031b+x
203f: d5 2f 03  mov   $032f+x,a
2042: b0 05     bcs   $2049
2044: 75 08 03  cmp   a,$0308+x
2047: 90 07     bcc   $2050
2049: b5 08 03  sbc   a,$0308+x
204c: d5 2f 03  mov   $032f+x,a
204f: 80        setc
2050: 0d        push  psw
2051: f5 cb 02  mov   a,$02cb+x
2054: 28 08     and   a,#$08
2056: f0 14     beq   $206c
2058: f4 3c     mov   a,$3c+x
205a: 8e        pop   psw
205b: ed        notc
205c: b5 1c 03  sbc   a,$031c+x
205f: 30 1c     bmi   $207d
2061: 50 1a     bvc   $207d
2063: e8 00     mov   a,#$00
2065: d5 08 03  mov   $0308+x,a
2068: e8 81     mov   a,#$81
206a: 2f 11     bra   $207d
206c: f4 3c     mov   a,$3c+x
206e: 8e        pop   psw
206f: 95 1c 03  adc   a,$031c+x
2072: 10 09     bpl   $207d
2074: 50 07     bvc   $207d
2076: e8 00     mov   a,#$00
2078: d5 08 03  mov   $0308+x,a
207b: e8 7f     mov   a,#$7f
207d: d4 3c     mov   $3c+x,a
207f: 6f        ret

2080: f5 53 02  mov   a,$0253+x
2083: d0 01     bne   $2086
2085: 6f        ret

2086: 2d        push  a
2087: e8 01     mov   a,#$01
2089: d5 94 03  mov   $0394+x,a
208c: ae        pop   a
208d: c4 a0     mov   $a0,a
208f: 10 09     bpl   $209a
2091: 48 ff     eor   a,#$ff
2093: bc        inc   a
2094: 68 80     cmp   a,#$80
2096: d0 02     bne   $209a
2098: e8 7f     mov   a,#$7f
209a: 8f 00 a1  mov   $a1,#$00
209d: 1c        asl   a
209e: 2b a1     rol   $a1
20a0: 1c        asl   a
20a1: 2b a1     rol   $a1
20a3: 60        clrc
20a4: 95 2f 03  adc   a,$032f+x
20a7: 0d        push  psw
20a8: d5 2f 03  mov   $032f+x,a
20ab: e4 a0     mov   a,$a0
20ad: 10 10     bpl   $20bf
20af: f5 54 02  mov   a,$0254+x
20b2: 8e        pop   psw
20b3: ed        notc
20b4: a4 a1     sbc   a,$a1
20b6: b0 15     bcs   $20cd
20b8: e8 00     mov   a,#$00
20ba: d5 53 02  mov   $0253+x,a
20bd: 2f 0e     bra   $20cd
20bf: f5 54 02  mov   a,$0254+x
20c2: 8e        pop   psw
20c3: 84 a1     adc   a,$a1
20c5: 90 06     bcc   $20cd
20c7: e8 00     mov   a,#$00
20c9: d5 53 02  mov   $0253+x,a
20cc: 9c        dec   a
20cd: d5 54 02  mov   $0254+x,a
20d0: 6f        ret

20d1: f5 44 03  mov   a,$0344+x
20d4: d0 01     bne   $20d7
20d6: 6f        ret

20d7: e8 01     mov   a,#$01
20d9: d5 94 03  mov   $0394+x,a
20dc: e8 00     mov   a,#$00
20de: c4 a0     mov   $a0,a
20e0: f5 43 03  mov   a,$0343+x
20e3: 80        setc
20e4: b5 29 00  sbc   a,$0029+x
20e7: b0 0f     bcs   $20f8
20e9: d0 04     bne   $20ef
20eb: d5 44 03  mov   $0344+x,a
20ee: 6f        ret

20ef: 2d        push  a
20f0: e8 01     mov   a,#$01
20f2: c4 a0     mov   $a0,a
20f4: ae        pop   a
20f5: 48 ff     eor   a,#$ff
20f7: bc        inc   a
20f8: 4d        push  x
20f9: 2d        push  a
20fa: f5 44 03  mov   a,$0344+x
20fd: 5d        mov   x,a
20fe: ae        pop   a
20ff: 8d 00     mov   y,#$00
2101: 9e        div   ya,x
2102: c4 a1     mov   $a1,a
2104: e8 00     mov   a,#$00
2106: 9e        div   ya,x
2107: ce        pop   x
2108: 60        clrc
2109: 95 57 03  adc   a,$0357+x
210c: d5 57 03  mov   $0357+x,a
210f: b0 05     bcs   $2116
2111: 75 44 03  cmp   a,$0344+x
2114: 90 07     bcc   $211d
2116: b5 44 03  sbc   a,$0344+x
2119: d5 57 03  mov   $0357+x,a
211c: 80        setc
211d: 0d        push  psw
211e: e4 a0     mov   a,$a0
2120: f0 0c     beq   $212e
2122: f4 29     mov   a,$29+x
2124: 8e        pop   psw
2125: ed        notc
2126: a4 a1     sbc   a,$a1
2128: b0 0d     bcs   $2137
212a: e8 00     mov   a,#$00
212c: 2f 09     bra   $2137
212e: f4 29     mov   a,$29+x
2130: 8e        pop   psw
2131: 84 a1     adc   a,$a1
2133: 90 02     bcc   $2137
2135: e8 ff     mov   a,#$ff
2137: d4 29     mov   $29+x,a
2139: f5 44 03  mov   a,$0344+x
213c: 9c        dec   a
213d: d5 44 03  mov   $0344+x,a
2140: 6f        ret

2141: f5 d7 03  mov   a,$03d7+x
2144: d0 01     bne   $2147
2146: 6f        ret

2147: c4 a0     mov   $a0,a
2149: e8 02     mov   a,#$02
214b: 15 e7 03  or    a,$03e7+x
214e: d5 e7 03  mov   $03e7+x,a
2151: e4 a0     mov   a,$a0
2153: 10 17     bpl   $216c
2155: 48 ff     eor   a,#$ff
2157: bc        inc   a
2158: 68 80     cmp   a,#$80
215a: d0 10     bne   $216c
215c: e8 7f     mov   a,#$7f
215e: 8f 00 a1  mov   $a1,#$00
2161: 1c        asl   a
2162: 2b a1     rol   $a1
2164: 1c        asl   a
2165: 2b a1     rol   $a1
2167: 1c        asl   a
2168: 2b a1     rol   $a1
216a: 2f 09     bra   $2175
216c: 68 7f     cmp   a,#$7f
216e: d0 ee     bne   $215e
2170: 8f 10 a1  mov   $a1,#$10
2173: e8 00     mov   a,#$00
2175: 60        clrc
2176: 95 df 03  adc   a,$03df+x
2179: 0d        push  psw
217a: d5 df 03  mov   $03df+x,a
217d: e4 a0     mov   a,$a0
217f: 10 26     bpl   $21a7
2181: f5 e7 03  mov   a,$03e7+x
2184: 28 04     and   a,#$04
2186: d0 3d     bne   $21c5
2188: f5 a7 03  mov   a,$03a7+x         ; master volume
218b: 8e        pop   psw
218c: ed        notc
218d: a4 a1     sbc   a,$a1
218f: b0 30     bcs   $21c1
2191: e8 00     mov   a,#$00
2193: d5 d7 03  mov   $03d7+x,a
2196: d5 a7 03  mov   $03a7+x,a         ; master volume
2199: f5 e7 03  mov   a,$03e7+x
219c: 28 01     and   a,#$01
219e: d0 01     bne   $21a1
21a0: 6f        ret

21a1: 7d        mov   a,x
21a2: fd        mov   y,a
21a3: 3f ce 25  call  $25ce
21a6: 6f        ret

21a7: f5 e7 03  mov   a,$03e7+x
21aa: 28 04     and   a,#$04
21ac: d0 29     bne   $21d7
21ae: f5 a7 03  mov   a,$03a7+x         ; master volume
21b1: 8e        pop   psw
21b2: 84 a1     adc   a,$a1
21b4: b0 04     bcs   $21ba
21b6: 68 80     cmp   a,#$80
21b8: 90 07     bcc   $21c1
21ba: e8 00     mov   a,#$00
21bc: d5 d7 03  mov   $03d7+x,a
21bf: e8 80     mov   a,#$80
21c1: d5 a7 03  mov   $03a7+x,a         ; master volume
21c4: 6f        ret

21c5: f5 a7 03  mov   a,$03a7+x         ; master volume
21c8: 8e        pop   psw
21c9: ed        notc
21ca: a4 a1     sbc   a,$a1
21cc: 90 1a     bcc   $21e8
21ce: 75 af 03  cmp   a,$03af+x
21d1: 90 15     bcc   $21e8
21d3: d5 a7 03  mov   $03a7+x,a
21d6: 6f        ret

21d7: f5 a7 03  mov   a,$03a7+x         ; master volume
21da: 8e        pop   psw
21db: 84 a1     adc   a,$a1
21dd: b0 09     bcs   $21e8
21df: 75 af 03  cmp   a,$03af+x
21e2: b0 04     bcs   $21e8
21e4: d5 a7 03  mov   $03a7+x,a
21e7: 6f        ret

21e8: f5 af 03  mov   a,$03af+x
21eb: d5 a7 03  mov   $03a7+x,a         ; master volume
21ee: e8 00     mov   a,#$00
21f0: d5 d7 03  mov   $03d7+x,a
21f3: d5 af 03  mov   $03af+x,a
21f6: f5 e7 03  mov   a,$03e7+x
21f9: 28 fb     and   a,#$fb
21fb: d5 e7 03  mov   $03e7+x,a
21fe: 6f        ret

21ff: 6f        ret

; process pitch envelope
2200: f4 78     mov   a,$78+x           ; pitch envelope #
2202: 68 ff     cmp   a,#$ff
2204: f0 31     beq   $2237
2206: 9b 8c     dec   $8c+x             ; decrease delta-time
2208: d0 2d     bne   $2237
220a: fb 78     mov   y,$78+x
220c: f6 5d 0a  mov   a,$0a5d+y
220f: c4 a0     mov   $a0,a
2211: f6 5e 0a  mov   a,$0a5e+y
2214: c4 a1     mov   $a1,a             ; load pitch envelope address into $a0/1
2216: fb 79     mov   y,$79+x
2218: f7 a0     mov   a,($a0)+y
221a: 68 80     cmp   a,#$80
221c: f0 19     beq   $2237             ; $80 - stop
221e: d4 8d     mov   $8d+x,a           ; arg1: pitch (signed tuning value)
2220: fc        inc   y
2221: f7 a0     mov   a,($a0)+y
2223: fc        inc   y
2224: d4 8c     mov   $8c+x,a           ; arg2: delta-time
2226: dd        mov   a,y
2227: d4 79     mov   $79+x,a           ; update envelope offset
2229: 8d 00     mov   y,#$00
222b: 77 a0     cmp   a,($a0)+y         ; envelope size (first byte of envelope)
222d: d0 05     bne   $2234
222f: fc        inc   y
2230: f7 a0     mov   a,($a0)+y
2232: d4 79     mov   $79+x,a           ; back to loop offset if it reaches to end
2234: 3f 04 1e  call  $1e04             ; update note pitch
2237: 6f        ret

; set noise bit for track X
2238: f5 cb 02  mov   a,$02cb+x
223b: 08 20     or    a,#$20
223d: d5 cb 02  mov   $02cb+x,a         ; set5 $02cb+x
2240: 3f 04 1f  call  $1f04
2243: b0 12     bcs   $2257
2245: fd        mov   y,a
2246: f6 0d 09  mov   a,$090d+y         ; get channel bitmask
2249: 05 00 04  or    a,$0400
224c: c5 00 04  mov   $0400,a           ; set NON shadow
224f: 8d 3d     mov   y,#$3d
2251: 20        clrp
2252: cb f2     mov   $f2,y
2254: c4 f3     mov   $f3,a             ; set NON
2256: 20        clrp
2257: 6f        ret

; clear noise bit for track X
2258: f5 cb 02  mov   a,$02cb+x
225b: 28 df     and   a,#$df
225d: d5 cb 02  mov   $02cb+x,a         ; clr5 $02cb+x
2260: 3f 04 1f  call  $1f04
2263: b0 14     bcs   $2279
2265: fd        mov   y,a
2266: f6 0d 09  mov   a,$090d+y         ; get channel bitmask
2269: 48 ff     eor   a,#$ff
226b: 25 00 04  and   a,$0400
226e: c5 00 04  mov   $0400,a           ; clear NON shadow
2271: 8d 3d     mov   y,#$3d
2273: 20        clrp
2274: cb f2     mov   $f2,y
2276: c4 f3     mov   $f3,a             ; NON
2278: 20        clrp
2279: 6f        ret

; echo on
227a: f5 cb 02  mov   a,$02cb+x
227d: 08 40     or    a,#$40            ; set6 $02cb+x
227f: d5 cb 02  mov   $02cb+x,a
2282: 3f 04 1f  call  $1f04
2285: b0 12     bcs   $2299
2287: fd        mov   y,a
2288: f6 0d 09  mov   a,$090d+y         ; get channel bitmask
228b: 05 01 04  or    a,$0401
228e: c5 01 04  mov   $0401,a
2291: 8d 4d     mov   y,#$4d
2293: 20        clrp
2294: cb f2     mov   $f2,y
2296: c4 f3     mov   $f3,a             ; EON
2298: 20        clrp
2299: 6f        ret

; echo off
229a: 3f a8 22  call  $22a8
229d: b0 08     bcs   $22a7
229f: 8d 4d     mov   y,#$4d
22a1: 20        clrp
22a2: cb f2     mov   $f2,y
22a4: c4 f3     mov   $f3,a             ; EON
22a6: 20        clrp
22a7: 6f        ret

22a8: f5 cb 02  mov   a,$02cb+x
22ab: 28 bf     and   a,#$bf
22ad: d5 cb 02  mov   $02cb+x,a
22b0: 3f 04 1f  call  $1f04
22b3: b0 0d     bcs   $22c2
22b5: fd        mov   y,a
22b6: f6 0d 09  mov   a,$090d+y         ; get channel bitmask
22b9: 48 ff     eor   a,#$ff
22bb: 25 01 04  and   a,$0401
22be: c5 01 04  mov   $0401,a
22c1: 60        clrc
22c2: 6f        ret

22c3: 8d 00     mov   y,#$00
;
22c5: 2d        push  a
22c6: f6 bf 03  mov   a,$03bf+y         ; tempo
22c9: f0 0e     beq   $22d9
22cb: ae        pop   a
22cc: 76 b7 03  cmp   a,$03b7+y
22cf: d0 02     bne   $22d3
22d1: 60        clrc
22d2: 6f        ret

22d3: fc        inc   y
22d4: ad 08     cmp   y,#$08
22d6: 90 ed     bcc   $22c5
22d8: 6f        ret

22d9: ae        pop   a
22da: 2f f7     bra   $22d3
22dc: 2f f6     bra   $22d4
;
22de: 20        clrp
22df: e5 08 04  mov   a,$0408
22e2: d0 01     bne   $22e5
22e4: 6f        ret
;
22e5: 60        clrc
22e6: 85 07 04  adc   a,$0407
22e9: c5 07 04  mov   $0407,a
22ec: b0 01     bcs   $22ef
22ee: 6f        ret
;
22ef: 20        clrp
22f0: 8f 00 a0  mov   $a0,#$00
22f3: 8f 0c f2  mov   $f2,#$0c
22f6: e4 f3     mov   a,$f3             ; MVOL(L)
22f8: 3f 46 23  call  $2346
22fb: 8f 0c f2  mov   $f2,#$0c
22fe: c4 f3     mov   $f3,a             ; MVOL(L)
2300: 04 a0     or    a,$a0
2302: c4 a0     mov   $a0,a
2304: 8f 1c f2  mov   $f2,#$1c
2307: e4 f3     mov   a,$f3             ; MVOL(R)
2309: 3f 46 23  call  $2346
230c: 8f 1c f2  mov   $f2,#$1c
230f: c4 f3     mov   $f3,a             ; MVOL(R)
2311: 04 a0     or    a,$a0
2313: c4 a0     mov   $a0,a
2315: 8f 2c f2  mov   $f2,#$2c
2318: e4 f3     mov   a,$f3             ; EVOL(L)
231a: 3f 46 23  call  $2346
231d: 8f 2c f2  mov   $f2,#$2c
2320: c4 f3     mov   $f3,a             ; EVOL(L)
2322: 04 a0     or    a,$a0
2324: c4 a0     mov   $a0,a
2326: 8f 3c f2  mov   $f2,#$3c
2329: e4 f3     mov   a,$f3             ; EVOL(R)
232b: 3f 46 23  call  $2346
232e: 8f 3c f2  mov   $f2,#$3c
2331: c4 f3     mov   $f3,a             ; EVOL(R)
2333: 04 a0     or    a,$a0
2335: f0 02     beq   $2339
2337: 20        clrp
2338: 6f        ret

2339: 40        setp
233a: c2 9b     set6  $9b
233c: e4 9b     mov   a,$9b
233e: 28 c0     and   a,#$c0
2340: c5 f4 00  mov   $00f4,a
2343: 5f 97 0b  jmp   $0b97
2346: f0 03     beq   $234b
2348: 30 02     bmi   $234c
234a: 9c        dec   a
234b: 6f        ret

234c: bc        inc   a
234d: 6f        ret

; run minivcmd sequence A
234e: 20        clrp
234f: 1c        asl   a
2350: 4d        push  x
2351: 5d        mov   x,a
2352: f5 31 09  mov   a,$0931+x
2355: c4 a6     mov   $a6,a
2357: f5 32 09  mov   a,$0932+x
235a: c4 a7     mov   $a7,a             ; load minivcmd sequence address
235c: ce        pop   x
; switch-case for minivcmd
235d: 4d        push  x
235e: 6d        push  y
235f: 3f e9 25  call  $25e9             ; read minivcmd into A, zero index Y
2362: 68 10     cmp   a,#$10
2364: b0 09     bcs   $236f
; 00-0f
2366: ad 08     cmp   y,#$08            ; maximum length = 7 (minivcmd + 6 bytes)
2368: b0 26     bcs   $2390             ; abort if exceeded
236a: 3f a1 23  call  $23a1
236d: 2f 1d     bra   $238c             ; continue
; (10-ff)
236f: 68 20     cmp   a,#$20
2371: b0 05     bcs   $2378
; 10-1f
2373: 3f 0c 24  call  $240c
2376: 2f 14     bra   $238c             ; continue
; (20-ff)
2378: 68 c0     cmp   a,#$c0
237a: b0 09     bcs   $2385
; 20-bf
237c: ad 08     cmp   y,#$08            ; maximum length = 7 (minivcmd + 6 bytes)
237e: b0 10     bcs   $2390             ; abort if exceeded
2380: 3f 6a 25  call  $256a
2383: 2f 07     bra   $238c
; c0-ff
2385: 68 fe     cmp   a,#$fe
2387: d0 07     bne   $2390             ; abort if minivcmd c0-ff (excluding fe)
; fe
2389: 3f 93 23  call  $2393
; continue
238c: ee        pop   y
238d: ce        pop   x
238e: 2f cd     bra   $235d
; otherwise - end
2390: ee        pop   y
2391: ce        pop   x
2392: 6f        ret

; minivcmd fe - write to dsp
2393: 3f e9 25  call  $25e9             ; arg1 - dsp register
2396: fd        mov   y,a
2397: 3f e9 25  call  $25e9             ; arg2 - value
239a: 20        clrp
239b: cb f2     mov   $f2,y
239d: c4 f3     mov   $f3,a
239f: 20        clrp
23a0: 6f        ret

; 00-0f
23a1: 68 00     cmp   a,#$00
23a3: d0 0f     bne   $23b4
; minivcmd 00 - master volume
23a5: 3f e9 25  call  $25e9             ; arg1
23a8: d6 a7 03  mov   $03a7+y,a         ; master volume
23ab: f6 e7 03  mov   a,$03e7+y
23ae: 08 02     or    a,#$02
23b0: d6 e7 03  mov   $03e7+y,a
23b3: 6f        ret

23b4: 68 01     cmp   a,#$01
23b6: d0 1a     bne   $23d2
; minivcmd 01 - master volume fade
23b8: 3f e9 25  call  $25e9             ; arg1
23bb: d6 d7 03  mov   $03d7+y,a
23be: e8 80     mov   a,#$80
23c0: d6 df 03  mov   $03df+y,a
23c3: 3f e9 25  call  $25e9             ; arg2
23c6: d6 af 03  mov   $03af+y,a
23c9: f6 e7 03  mov   a,$03e7+y
23cc: 08 04     or    a,#$04
23ce: d6 e7 03  mov   $03e7+y,a
23d1: 6f        ret

23d2: 68 02     cmp   a,#$02
23d4: d0 0a     bne   $23e0
; minivcmd 02 - set tempo
23d6: 3f e9 25  call  $25e9             ; arg1 - tempo
23d9: d6 bf 03  mov   $03bf+y,a         ; tempo
23dc: d6 c7 03  mov   $03c7+y,a         ; base tempo
23df: 6f        ret

23e0: 68 03     cmp   a,#$03
23e2: d0 04     bne   $23e8
; minivcmd 03 - nop?
23e4: 3f ce 25  call  $25ce
23e7: 6f        ret

23e8: 68 04     cmp   a,#$04
23ea: d0 14     bne   $2400
; minivcmd 04 - master volume fade variation?
23ec: f6 e7 03  mov   a,$03e7+y
23ef: 08 01     or    a,#$01
23f1: d6 e7 03  mov   $03e7+y,a
23f4: 3f e9 25  call  $25e9             ; arg1
23f7: d6 d7 03  mov   $03d7+y,a
23fa: e8 80     mov   a,#$80
23fc: d6 df 03  mov   $03df+y,a
23ff: 6f        ret

2400: 68 05     cmp   a,#$05
2402: d0 07     bne   $240b
; minivcmd 05 - set variable for conditional jump
2404: 3f e9 25  call  $25e9             ; arg1
2407: d6 f7 03  mov   $03f7+y,a
240a: 6f        ret

; minivcmd 06-0f - nop
240b: 6f        ret

240c: 68 10     cmp   a,#$10
240e: d0 15     bne   $2425
; minivcmd 10 - set echo filter
2410: 8d 0f     mov   y,#$0f
2412: 3f e9 25  call  $25e9             ; arg1...8
2415: 20        clrp
2416: cb f2     mov   $f2,y
2418: c4 f3     mov   $f3,a             ; FIR
241a: 20        clrp
241b: dd        mov   a,y
241c: 60        clrc
241d: 88 10     adc   a,#$10
241f: fd        mov   y,a
2420: ad 80     cmp   y,#$80
2422: 90 ee     bcc   $2412
2424: 6f        ret

2425: 68 11     cmp   a,#$11
2427: d0 1b     bne   $2444
; minivcmd 11 - (change MVOL and EVOL)
2429: e8 00     mov   a,#$00
242b: c5 ff 03  mov   $03ff,a
242e: 20        clrp
242f: 8d 1c     mov   y,#$1c
2431: e5 af 00  mov   a,$00af
2434: cb f2     mov   $f2,y
2436: c4 f3     mov   $f3,a             ; MVOL(R)
2438: 8d 3c     mov   y,#$3c
243a: e5 ad 00  mov   a,$00ad
243d: cb f2     mov   $f2,y
243f: c4 f3     mov   $f3,a             ; EVOL(R)
2441: 20        clrp
2442: 2f 1d     bra   $2461

2444: 68 12     cmp   a,#$12
2446: d0 29     bne   $2471
; minivcmd 12 - (change MVOL and EVOL)
2448: e8 01     mov   a,#$01
244a: c5 ff 03  mov   $03ff,a
244d: 20        clrp
244e: 8d 1c     mov   y,#$1c
2450: e5 ae 00  mov   a,$00ae
2453: cb f2     mov   $f2,y
2455: c4 f3     mov   $f3,a             ; MVOL(R)
2457: 8d 3c     mov   y,#$3c
2459: e5 ac 00  mov   a,$00ac
245c: cb f2     mov   $f2,y
245e: c4 f3     mov   $f3,a             ; EVOL(R)
2460: 20        clrp
;
2461: 8d 00     mov   y,#$00
2463: f6 e7 03  mov   a,$03e7+y
2466: 08 02     or    a,#$02
2468: d6 e7 03  mov   $03e7+y,a
246b: fc        inc   y
246c: ad 08     cmp   y,#$08
246e: 90 f3     bcc   $2463
2470: 6f        ret

2471: 68 13     cmp   a,#$13
2473: d0 26     bne   $249b
; minivcmd 13 - set MVOL
2475: 3f e9 25  call  $25e9             ; arg1
2478: c4 af     mov   $af,a
247a: 8d 0c     mov   y,#$0c
247c: 20        clrp
247d: cb f2     mov   $f2,y
247f: c4 f3     mov   $f3,a             ; MVOL(L)
2481: 20        clrp
2482: 3f e9 25  call  $25e9             ; arg2
2485: c4 ae     mov   $ae,a
2487: e5 ff 03  mov   a,$03ff
248a: f0 04     beq   $2490
248c: e4 ae     mov   a,$ae
248e: 2f 02     bra   $2492
2490: e4 af     mov   a,$af
2492: 8d 1c     mov   y,#$1c
2494: 20        clrp
2495: cb f2     mov   $f2,y
2497: c4 f3     mov   $f3,a             ; MVOL(R)
2499: 20        clrp
249a: 6f        ret

249b: 68 14     cmp   a,#$14
249d: d0 35     bne   $24d4
; minivcmd 14 - set EVOL
249f: e4 a9     mov   a,$a9
24a1: d0 26     bne   $24c9
24a3: 3f e9 25  call  $25e9             ; arg1
24a6: c4 ad     mov   $ad,a
24a8: 8d 2c     mov   y,#$2c
24aa: 20        clrp
24ab: cb f2     mov   $f2,y
24ad: c4 f3     mov   $f3,a             ; EVOL(L)
24af: 20        clrp
24b0: 3f e9 25  call  $25e9             ; arg2
24b3: c4 ac     mov   $ac,a
24b5: e5 ff 03  mov   a,$03ff
24b8: f0 04     beq   $24be
24ba: e4 ac     mov   a,$ac
24bc: 2f 02     bra   $24c0
24be: e4 ad     mov   a,$ad
24c0: 8d 3c     mov   y,#$3c
24c2: 20        clrp
24c3: cb f2     mov   $f2,y
24c5: c4 f3     mov   $f3,a             ; EVOL(R)
24c7: 20        clrp
24c8: 6f        ret

24c9: 3f e9 25  call  $25e9             ; arg1
24cc: c4 ad     mov   $ad,a
24ce: 3f e9 25  call  $25e9             ; arg2
24d1: c4 ac     mov   $ac,a
24d3: 6f        ret

24d4: 68 15     cmp   a,#$15
24d6: d0 15     bne   $24ed
; minivcmd 15 - set noise clock
24d8: 3f e9 25  call  $25e9             ; arg1
24db: 20        clrp
24dc: 28 1f     and   a,#$1f
24de: 38 e0 ab  and   $ab,#$e0
24e1: 04 ab     or    a,$ab
24e3: c4 ab     mov   $ab,a             ; update FLG shadow
24e5: 20        clrp
24e6: 8f 6c f2  mov   $f2,#$6c
24e9: c4 f3     mov   $f3,a             ; FLG
24eb: 20        clrp
24ec: 6f        ret

24ed: 68 16     cmp   a,#$16
24ef: d0 18     bne   $2509
; minivcmd 16 - set echo feedback
24f1: e4 a9     mov   a,$a9
24f3: d0 0e     bne   $2503
24f5: 3f e9 25  call  $25e9             ; arg1
24f8: c4 b0     mov   $b0,a
24fa: 8d 0d     mov   y,#$0d
24fc: 20        clrp
24fd: cb f2     mov   $f2,y
24ff: c4 f3     mov   $f3,a             ; EFB
2501: 20        clrp
2502: 6f        ret

2503: 3f e9 25  call  $25e9             ; arg1
2506: c4 b0     mov   $b0,a
2508: 6f        ret

2509: 68 17     cmp   a,#$17
250b: d0 3d     bne   $254a
; minivcmd 17 - set echo delay
250d: 3f e9 25  call  $25e9             ; arg1
2510: 68 05     cmp   a,#$05
2512: 90 02     bcc   $2516
2514: e8 05     mov   a,#$05
2516: 64 b1     cmp   a,$b1
2518: f0 2f     beq   $2549
251a: c4 b1     mov   $b1,a
251c: 8d 7d     mov   y,#$7d
251e: 20        clrp
251f: cb f2     mov   $f2,y
2521: c4 f3     mov   $f3,a             ; EDL
2523: 20        clrp
2524: 1c        asl   a
2525: 1c        asl   a
2526: c4 a9     mov   $a9,a
2528: 1c        asl   a
2529: c4 aa     mov   $aa,a
252b: 18 20 ab  or    $ab,#$20
252e: e4 ab     mov   a,$ab
2530: 20        clrp
2531: 8f 6c f2  mov   $f2,#$6c
2534: c4 f3     mov   $f3,a             ; FLG
2536: 8f 2c f2  mov   $f2,#$2c
2539: 8f 00 f3  mov   $f3,#$00          ; EVOL(L)
253c: 8f 3c f2  mov   $f2,#$3c
253f: 8f 00 f3  mov   $f3,#$00          ; EVOL(R)
2542: 8f 0d f2  mov   $f2,#$0d
2545: 8f 00 f3  mov   $f3,#$00          ; EFB
2548: 20        clrp
2549: 6f        ret

254a: 68 18     cmp   a,#$18
254c: d0 1b     bne   $2569
; minivcmd 18 - master volume fade variation?
254e: 3f e9 25  call  $25e9             ; arg1
2551: ec 0a 04  mov   y,$040a
2554: ad 08     cmp   y,#$08
2556: b0 10     bcs   $2568
2558: d6 d7 03  mov   $03d7+y,a
255b: e8 80     mov   a,#$80
255d: d6 df 03  mov   $03df+y,a
2560: f6 e7 03  mov   a,$03e7+y
2563: 08 01     or    a,#$01
2565: d6 e7 03  mov   $03e7+y,a
2568: 6f        ret

; minivcmd 19-1f - nop
2569: 6f        ret

; minivcmd 20-bf - channel messages
; lower 4 bits: command-type, upper 4 bits: track # (2..11 => 0..9)
256a: 9f        xcn   a                 ; extract upper 4 bits of minivcmd
256b: 9c        dec   a
256c: 9c        dec   a                 ; track index (0..9)
256d: 3f f3 25  call  $25f3
2570: 90 01     bcc   $2573
2572: 6f        ret

2573: 28 f0     and   a,#$f0            ; *lower* 4 bits of minivcmd
2575: 68 00     cmp   a,#$00
2577: d0 0c     bne   $2585
; minivcmd 20 (x0; x=2-b) - voice fade in/out?
2579: 3f e9 25  call  $25e9             ; arg1
257c: d5 53 02  mov   $0253+x,a
257f: e8 80     mov   a,#$80
2581: d5 2f 03  mov   $032f+x,a
2584: 6f        ret
;
2585: 68 10     cmp   a,#$10
2587: d0 0b     bne   $2594
; minivcmd 21 (x0; x=2-b) - set channel master volume
2589: 3f e9 25  call  $25e9             ; arg1
258c: d4 28     mov   $28+x,a
258e: e8 01     mov   a,#$01
2590: d5 94 03  mov   $0394+x,a
2593: 6f        ret

2594: 68 20     cmp   a,#$20
2596: d0 04     bne   $259c
; minivcmd 22 (x2; x=2-b) - echo on
2598: 3f 7a 22  call  $227a
259b: 6f        ret

259c: 68 30     cmp   a,#$30
259e: d0 04     bne   $25a4
; minivcmd 23 (x3; x=2-b) - echo off
25a0: 3f 9a 22  call  $229a
25a3: 6f        ret

25a4: 68 40     cmp   a,#$40
25a6: d0 04     bne   $25ac
; minivcmd 24 (x4; x=2-b) - noise on
25a8: 3f 38 22  call  $2238
25ab: 6f        ret

25ac: 68 50     cmp   a,#$50
25ae: d0 04     bne   $25b4
; minivcmd 25 (x5; x=2-b) - noise off
25b0: 3f 58 22  call  $2258
25b3: 6f        ret

25b4: 68 60     cmp   a,#$60
25b6: d0 04     bne   $25bc
; minivcmd 26 (x6; x=2-b) - stop voice (end of track)
25b8: 3f e2 18  call  $18e2
25bb: 6f        ret

25bc: 68 b0     cmp   a,#$b0
25be: b0 0d     bcs   $25cd
; minivcmd 27-2a (x7-xa; x=2-b) - surround
25c0: 9f        xcn   a
25c1: 80        setc
25c2: a8 07     sbc   a,#$07
25c4: d5 80 03  mov   $0380+x,a
25c7: e8 01     mov   a,#$01
25c9: d5 94 03  mov   $0394+x,a
25cc: 6f        ret

; minivcmd 2b-2f (xb-xf; x=2-b) - nop
25cd: 6f        ret

25ce: 20        clrp
25cf: ad 08     cmp   y,#$08
25d1: b0 15     bcs   $25e8
25d3: 4d        push  x
25d4: cd 00     mov   x,#$00
25d6: dd        mov   a,y
25d7: 75 a3 02  cmp   a,$02a3+x
25da: d0 05     bne   $25e1             ; if x == song slot index then:
25dc: 2d        push  a
25dd: 3f e2 18  call  $18e2             ; end of track
25e0: ae        pop   a
25e1: 3d        inc   x
25e2: 3d        inc   x
25e3: c8 14     cmp   x,#$14
25e5: 90 f0     bcc   $25d7
25e7: ce        pop   x
25e8: 6f        ret

; get next byte from $a6
25e9: 20        clrp
25ea: 6d        push  y
25eb: 8d 00     mov   y,#$00
25ed: f7 a6     mov   a,($a6)+y
25ef: 3a a6     incw  $a6
25f1: ee        pop   y
25f2: 6f        ret

; search track A (return x: track offset, C: set if not found)
25f3: 2d        push  a
25f4: 28 0f     and   a,#$0f            ; target track #
25f6: c4 a2     mov   $a2,a
25f8: cd 00     mov   x,#$00
25fa: dd        mov   a,y
25fb: 75 a3 02  cmp   a,$02a3+x
25fe: d0 07     bne   $2607             ; continue if song slot not match
2600: e4 a2     mov   a,$a2
2602: 75 7f 03  cmp   a,$037f+x
2605: f0 09     beq   $2610             ; break if track index match
2607: 3d        inc   x
2608: 3d        inc   x
2609: c8 14     cmp   x,#$14
260b: 90 ed     bcc   $25fa
260d: ae        pop   a
260e: 80        setc
260f: 6f        ret

2610: ae        pop   a
2611: 60        clrc
2612: 6f        ret

2613: 40        setp
2614: e5 44 2c  mov   a,$2c44
2617: ec 45 2c  mov   y,$2c45
261a: da 00     movw  $00,ya
261c: e8 f6     mov   a,#$f6
261e: 8d d6     mov   y,#$d6
2620: 9a 00     subw  ya,$00
2622: da 02     movw  $02,ya
2624: e8 01     mov   a,#$01
2626: c4 8a     mov   $8a,a
2628: e8 04     mov   a,#$04
262a: c4 8b     mov   $8b,a
262c: cd 00     mov   x,#$00
262e: e8 ff     mov   a,#$ff
2630: d5 10 04  mov   $0410+x,a
2633: 3d        inc   x
2634: c8 c8     cmp   x,#$c8
2636: 90 f8     bcc   $2630
2638: cd 00     mov   x,#$00
263a: 7d        mov   a,x
263b: d5 00 08  mov   $0800+x,a
263e: d5 01 08  mov   $0801+x,a
2641: 3d        inc   x
2642: 3d        inc   x
2643: 3d        inc   x
2644: 3d        inc   x
2645: c8 80     cmp   x,#$80
2647: 90 f2     bcc   $263b
2649: cd 00     mov   x,#$00
264b: e8 ff     mov   a,#$ff
264d: d5 d8 04  mov   $04d8+x,a
2650: 3d        inc   x
2651: c8 fa     cmp   x,#$fa
2653: 90 f8     bcc   $264d
2655: e8 00     mov   a,#$00
2657: 5d        mov   x,a
2658: d5 e6 06  mov   $06e6+x,a
265b: 3d        inc   x
265c: 3d        inc   x
265d: 3d        inc   x
265e: 3d        inc   x
265f: 3d        inc   x
2660: 3d        inc   x
2661: c8 78     cmp   x,#$78
2663: 90 f3     bcc   $2658
2665: 3f b9 2a  call  $2ab9
2668: 6f        ret

2669: 40        setp
266a: da a3     movw  $a3,ya
266c: 3f c3 26  call  $26c3
266f: 3f 87 26  call  $2687
2672: b0 01     bcs   $2675
2674: 6f        ret

2675: ba a3     movw  ya,$a3
2677: da a9     movw  $a9,ya
2679: 3f 80 28  call  $2880
267c: 3f c3 26  call  $26c3
267f: ba a9     movw  ya,$a9
2681: da a3     movw  $a3,ya
2683: 3f 87 26  call  $2687
2686: 6f        ret

2687: 8d 00     mov   y,#$00
2689: cb a7     mov   $a7,y
268b: f9 68     mov   x,$68+y
268d: f4 02     mov   a,$02+x
268f: fb 03     mov   y,$03+x
2691: 5a a3     cmpw  ya,$a3
2693: b0 09     bcs   $269e
2695: eb a7     mov   y,$a7
2697: fc        inc   y
2698: 7e 8a     cmp   y,$8a
269a: 90 ed     bcc   $2689
269c: 80        setc
269d: 6f        ret

269e: 9a a3     subw  ya,$a3
26a0: da a9     movw  $a9,ya
26a2: d4 02     mov   $02+x,a
26a4: db 03     mov   $03+x,y
26a6: f4 00     mov   a,$00+x
26a8: fb 01     mov   y,$01+x
26aa: da a5     movw  $a5,ya
26ac: ba a9     movw  ya,$a9
26ae: d0 05     bne   $26b5
26b0: 3f 05 27  call  $2705
26b3: 2f 0a     bra   $26bf
26b5: f4 00     mov   a,$00+x
26b7: fb 01     mov   y,$01+x
26b9: 7a a3     addw  ya,$a3
26bb: d4 00     mov   $00+x,a
26bd: db 01     mov   $01+x,y
26bf: ba a5     movw  ya,$a5
26c1: 60        clrc
26c2: 6f        ret

26c3: cd 00     mov   x,#$00
26c5: e8 00     mov   a,#$00
26c7: d4 68     mov   $68+x,a
26c9: 60        clrc
26ca: 88 04     adc   a,#$04
26cc: 3d        inc   x
26cd: 3e 8a     cmp   x,$8a
26cf: 90 f6     bcc   $26c7
26d1: 8d 00     mov   y,#$00
26d3: cb ad     mov   $ad,y
26d5: f9 68     mov   x,$68+y
26d7: d8 ae     mov   $ae,x
26d9: f4 02     mov   a,$02+x
26db: fb 03     mov   y,$03+x
26dd: da ab     movw  $ab,ya
26df: fc        inc   y
26e0: 7e 8a     cmp   y,$8a
26e2: b0 19     bcs   $26fd
26e4: 6d        push  y
26e5: f9 68     mov   x,$68+y
26e7: f4 02     mov   a,$02+x
26e9: fb 03     mov   y,$03+x
26eb: 5a ab     cmpw  ya,$ab
26ed: b0 0b     bcs   $26fa
26ef: f9 68     mov   x,$68+y
26f1: 7d        mov   a,x
26f2: f8 ad     mov   x,$ad
26f4: d4 68     mov   $68+x,a
26f6: f8 ae     mov   x,$ae
26f8: d9 68     mov   $68+y,x
26fa: ee        pop   y
26fb: 2f e2     bra   $26df
26fd: eb ad     mov   y,$ad
26ff: fc        inc   y
2700: 7e 8a     cmp   y,$8a
2702: 90 cf     bcc   $26d3
2704: 6f        ret

2705: 40        setp
2706: 8b 8a     dec   $8a
2708: e4 8a     mov   a,$8a
270a: 1c        asl   a
270b: 1c        asl   a
270c: c4 8b     mov   $8b,a
270e: 68 00     cmp   a,#$00
2710: f0 0b     beq   $271d
2712: 3e 8b     cmp   x,$8b
2714: b0 07     bcs   $271d
2716: f4 04     mov   a,$04+x
2718: d4 00     mov   $00+x,a
271a: 3d        inc   x
271b: 2f f5     bra   $2712
271d: 6f        ret

271e: 40        setp
271f: da a3     movw  $a3,ya
2721: cd 00     mov   x,#$00
2723: 8d 00     mov   y,#$00
2725: f5 00 08  mov   a,$0800+x
2728: d0 05     bne   $272f
272a: f5 01 08  mov   a,$0801+x
272d: f0 0a     beq   $2739
272f: 3d        inc   x
2730: 3d        inc   x
2731: 3d        inc   x
2732: 3d        inc   x
2733: fc        inc   y
2734: ad 20     cmp   y,#$20
2736: 90 ed     bcc   $2725
2738: 6f        ret

2739: dd        mov   a,y
273a: 1c        asl   a
273b: 1c        asl   a
273c: 6d        push  y
273d: 2d        push  a
273e: e8 08     mov   a,#$08
2740: cf        mul   ya
2741: 5d        mov   x,a
2742: e4 a4     mov   a,$a4
2744: d5 e7 05  mov   $05e7+x,a
2747: fd        mov   y,a
2748: e4 a3     mov   a,$a3
274a: d5 e6 05  mov   $05e6+x,a
274d: 3f 69 26  call  $2669
2750: b0 0b     bcs   $275d
2752: ce        pop   x
2753: d5 00 08  mov   $0800+x,a
2756: dd        mov   a,y
2757: d5 01 08  mov   $0801+x,a
275a: ee        pop   y
275b: 60        clrc
275c: 6f        ret

275d: ae        pop   a
275e: ee        pop   y
275f: 80        setc
2760: 6f        ret

2761: 40        setp
2762: da a9     movw  $a9,ya
2764: 8f e6 af  mov   $af,#$e6
2767: 8f 06 b0  mov   $b0,#$06
276a: cd 00     mov   x,#$00
276c: 8d 00     mov   y,#$00
276e: f7 af     mov   a,($af)+y
2770: f0 0c     beq   $277e
2772: fc        inc   y
2773: fc        inc   y
2774: fc        inc   y
2775: fc        inc   y
2776: fc        inc   y
2777: fc        inc   y
2778: 3d        inc   x
2779: c8 14     cmp   x,#$14
277b: 90 f1     bcc   $276e
277d: 6f        ret

277e: dd        mov   a,y
277f: 60        clrc
2780: 84 af     adc   a,$af
2782: c4 af     mov   $af,a
2784: 90 02     bcc   $2788
2786: ab b0     inc   $b0
2788: 8d 05     mov   y,#$05
278a: e8 00     mov   a,#$00
278c: d7 af     mov   ($af)+y,a
278e: 9c        dec   a
278f: 8d 00     mov   y,#$00
2791: d7 af     mov   ($af)+y,a
2793: 8d 04     mov   y,#$04
2795: e4 aa     mov   a,$aa
2797: d7 af     mov   ($af)+y,a
2799: dc        dec   y
279a: e4 a9     mov   a,$a9
279c: d7 af     mov   ($af)+y,a
279e: eb aa     mov   y,$aa
27a0: 4d        push  x
27a1: 3f 69 26  call  $2669
27a4: ce        pop   x
27a5: b0 0b     bcs   $27b2
27a7: 6d        push  y
27a8: 8d 01     mov   y,#$01
27aa: d7 af     mov   ($af)+y,a
27ac: ae        pop   a
27ad: fc        inc   y
27ae: d7 af     mov   ($af)+y,a
27b0: 60        clrc
27b1: 6f        ret

27b2: e8 00     mov   a,#$00
27b4: 8d 00     mov   y,#$00
27b6: d7 af     mov   ($af)+y,a
27b8: 80        setc
27b9: 6f        ret

27ba: 6f        ret

27bb: 40        setp
27bc: f5 10 04  mov   a,$0410+x
27bf: 68 ff     cmp   a,#$ff
27c1: f0 07     beq   $27ca
27c3: 3f cb 27  call  $27cb
27c6: e8 00     mov   a,#$00
27c8: d7 a3     mov   ($a3)+y,a
27ca: 6f        ret

27cb: 8f e6 a3  mov   $a3,#$e6
27ce: 8f 05 a4  mov   $a4,#$05
27d1: 8d 08     mov   y,#$08
27d3: cf        mul   ya
27d4: 7a a3     addw  ya,$a3
27d6: da a3     movw  $a3,ya
27d8: 8d 07     mov   y,#$07
27da: 6f        ret

27db: 40        setp
27dc: f5 d8 04  mov   a,$04d8+x
27df: 68 ff     cmp   a,#$ff
27e1: f0 07     beq   $27ea
27e3: 3f eb 27  call  $27eb
27e6: e8 00     mov   a,#$00
27e8: d7 a3     mov   ($a3)+y,a
27ea: 6f        ret

27eb: 8f e6 a3  mov   $a3,#$e6
27ee: 8f 06 a4  mov   $a4,#$06
27f1: 8d 06     mov   y,#$06
27f3: cf        mul   ya
27f4: 7a a3     addw  ya,$a3
27f6: da a3     movw  $a3,ya
27f8: 8d 05     mov   y,#$05
27fa: 6f        ret

27fb: 40        setp
27fc: e4 a4     mov   a,$a4
27fe: f0 05     beq   $2805
2800: 78 1a 8a  cmp   $8a,#$1a
2803: 90 02     bcc   $2807
2805: 80        setc
2806: 6f        ret

2807: cd 00     mov   x,#$00
2809: f4 00     mov   a,$00+x
280b: fb 01     mov   y,$01+x
280d: 5a a3     cmpw  ya,$a3
280f: b0 08     bcs   $2819
2811: 3d        inc   x
2812: 3d        inc   x
2813: 3d        inc   x
2814: 3d        inc   x
2815: 3e 8b     cmp   x,$8b
2817: 90 f0     bcc   $2809
2819: d8 a7     mov   $a7,x
281b: f8 8b     mov   x,$8b
281d: 3e a7     cmp   x,$a7
281f: f0 07     beq   $2828
2821: 1d        dec   x
2822: f4 00     mov   a,$00+x
2824: d4 04     mov   $04+x,a
2826: 2f f5     bra   $281d
2828: ab 8a     inc   $8a
282a: e4 8b     mov   a,$8b
282c: 60        clrc
282d: 88 04     adc   a,#$04
282f: c4 8b     mov   $8b,a
2831: f8 a7     mov   x,$a7
2833: ba a3     movw  ya,$a3
2835: d4 00     mov   $00+x,a
2837: db 01     mov   $01+x,y
2839: ba a5     movw  ya,$a5
283b: d4 02     mov   $02+x,a
283d: db 03     mov   $03+x,y
283f: 7d        mov   a,x
2840: 60        clrc
2841: 88 04     adc   a,#$04
2843: 64 8b     cmp   a,$8b
2845: b0 03     bcs   $284a
2847: 3f 57 28  call  $2857
284a: e4 a7     mov   a,$a7
284c: 80        setc
284d: a8 04     sbc   a,#$04
284f: 30 04     bmi   $2855
2851: 5d        mov   x,a
2852: 3f 57 28  call  $2857
2855: 60        clrc
2856: 6f        ret

2857: f4 02     mov   a,$02+x
2859: fb 03     mov   y,$03+x
285b: da a3     movw  $a3,ya
285d: f4 00     mov   a,$00+x
285f: fb 01     mov   y,$01+x
2861: 7a a3     addw  ya,$a3
2863: da a5     movw  $a5,ya
2865: f4 04     mov   a,$04+x
2867: fb 05     mov   y,$05+x
2869: 5a a5     cmpw  ya,$a5
286b: f0 01     beq   $286e
286d: 6f        ret

286e: f4 06     mov   a,$06+x
2870: fb 07     mov   y,$07+x
2872: 7a a3     addw  ya,$a3
2874: d4 02     mov   $02+x,a
2876: db 03     mov   $03+x,y
2878: 3d        inc   x
2879: 3d        inc   x
287a: 3d        inc   x
287b: 3d        inc   x
287c: 3f 05 27  call  $2705
287f: 6f        ret

2880: cd 00     mov   x,#$00
2882: f5 10 04  mov   a,$0410+x
2885: 68 ff     cmp   a,#$ff
2887: f0 40     beq   $28c9
2889: 8f e6 ab  mov   $ab,#$e6
288c: 8f 05 ac  mov   $ac,#$05
288f: 8d 08     mov   y,#$08
2891: cf        mul   ya
2892: 7a ab     addw  ya,$ab
2894: da ab     movw  $ab,ya
2896: 8d 07     mov   y,#$07
2898: f7 ab     mov   a,($ab)+y
289a: d0 2d     bne   $28c9
289c: 8d 00     mov   y,#$00
289e: f7 ab     mov   a,($ab)+y
28a0: c4 a5     mov   $a5,a
28a2: fc        inc   y
28a3: f7 ab     mov   a,($ab)+y
28a5: c4 a6     mov   $a6,a
28a7: f5 10 04  mov   a,$0410+x
28aa: 1c        asl   a
28ab: 1c        asl   a
28ac: fd        mov   y,a
28ad: f6 00 08  mov   a,$0800+y
28b0: c4 a3     mov   $a3,a
28b2: f6 01 08  mov   a,$0801+y
28b5: c4 a4     mov   $a4,a
28b7: e8 00     mov   a,#$00
28b9: d6 00 08  mov   $0800+y,a
28bc: d6 01 08  mov   $0801+y,a
28bf: 4d        push  x
28c0: 3f fb 27  call  $27fb
28c3: ce        pop   x
28c4: e8 ff     mov   a,#$ff
28c6: d5 10 04  mov   $0410+x,a
28c9: 3d        inc   x
28ca: c8 c8     cmp   x,#$c8
28cc: 90 b4     bcc   $2882
28ce: cd 00     mov   x,#$00
28d0: f5 d8 04  mov   a,$04d8+x
28d3: 68 ff     cmp   a,#$ff
28d5: f0 3e     beq   $2915
28d7: 8f e6 ab  mov   $ab,#$e6
28da: 8f 06 ac  mov   $ac,#$06
28dd: 8d 06     mov   y,#$06
28df: cf        mul   ya
28e0: 7a ab     addw  ya,$ab
28e2: da ab     movw  $ab,ya
28e4: 8d 00     mov   y,#$00
28e6: f7 ab     mov   a,($ab)+y
28e8: f0 2b     beq   $2915
28ea: 8d 05     mov   y,#$05
28ec: f7 ab     mov   a,($ab)+y
28ee: d0 25     bne   $2915
28f0: 8d 03     mov   y,#$03
28f2: f7 ab     mov   a,($ab)+y
28f4: c4 a5     mov   $a5,a
28f6: fc        inc   y
28f7: f7 ab     mov   a,($ab)+y
28f9: c4 a6     mov   $a6,a
28fb: 8d 01     mov   y,#$01
28fd: f7 ab     mov   a,($ab)+y
28ff: c4 a3     mov   $a3,a
2901: fc        inc   y
2902: f7 ab     mov   a,($ab)+y
2904: c4 a4     mov   $a4,a
2906: e8 00     mov   a,#$00
2908: 8d 00     mov   y,#$00
290a: d7 ab     mov   ($ab)+y,a
290c: 9c        dec   a
290d: d5 d8 04  mov   $04d8+x,a
2910: 4d        push  x
2911: 3f fb 27  call  $27fb
2914: ce        pop   x
2915: 3d        inc   x
2916: c8 fa     cmp   x,#$fa
2918: 90 b6     bcc   $28d0
291a: 6f        ret

291b: 40        setp
291c: 3f d1 16  call  $16d1
291f: 90 01     bcc   $2922
2921: 6f        ret

2922: 5e 48 2c  cmp   y,$2c48
2925: b0 03     bcs   $292a
2927: 3f b9 2a  call  $2ab9
292a: 3f 34 2a  call  $2a34
292d: 8d 01     mov   y,#$01
292f: f7 a3     mov   a,($a3)+y
2931: f0 11     beq   $2944
2933: bc        inc   a
2934: fd        mov   y,a
2935: f7 a3     mov   a,($a3)+y
2937: 5d        mov   x,a
2938: f5 10 04  mov   a,$0410+x
293b: 68 ff     cmp   a,#$ff
293d: f0 6c     beq   $29ab
293f: dc        dec   y
2940: ad 02     cmp   y,#$02
2942: b0 f1     bcs   $2935
2944: 8d 00     mov   y,#$00
2946: f7 a3     mov   a,($a3)+y
2948: bc        inc   a
2949: bc        inc   a
294a: c4 a5     mov   $a5,a
294c: fc        inc   y
294d: f7 a3     mov   a,($a3)+y
294f: bc        inc   a
2950: bc        inc   a
2951: fd        mov   y,a
2952: 7e a5     cmp   y,$a5
2954: 90 05     bcc   $295b
2956: 3f df 12  call  $12df
2959: 2f 0a     bra   $2965
295b: f7 a3     mov   a,($a3)+y
295d: 3f c6 2a  call  $2ac6
2960: fc        inc   y
2961: 7e a5     cmp   y,$a5
2963: 90 f6     bcc   $295b
2965: cd 00     mov   x,#$00
2967: e7 a3     mov   a,($a3+x)
2969: bc        inc   a
296a: fd        mov   y,a
296b: 6d        push  y
296c: f7 a3     mov   a,($a3)+y
296e: 5d        mov   x,a
296f: f5 10 04  mov   a,$0410+x
2972: 68 ff     cmp   a,#$ff
2974: f0 2d     beq   $29a3
2976: 8f e6 a5  mov   $a5,#$e6
2979: 8f 05 a6  mov   $a6,#$05
297c: 8d 08     mov   y,#$08
297e: cf        mul   ya
297f: 7a a5     addw  ya,$a5
2981: da a5     movw  $a5,ya
2983: 8d 07     mov   y,#$07
2985: f7 a5     mov   a,($a5)+y
2987: 28 e0     and   a,#$e0
2989: 0d        push  psw
298a: f7 a5     mov   a,($a5)+y
298c: 8e        pop   psw
298d: f0 05     beq   $2994
298f: 80        setc
2990: a8 20     sbc   a,#$20
2992: d7 a5     mov   ($a5)+y,a
2994: f7 a5     mov   a,($a5)+y
2996: 28 07     and   a,#$07
2998: 68 07     cmp   a,#$07
299a: 0d        push  psw
299b: f7 a5     mov   a,($a5)+y
299d: 8e        pop   psw
299e: f0 03     beq   $29a3
29a0: bc        inc   a
29a1: d7 a5     mov   ($a5)+y,a
29a3: ee        pop   y
29a4: dc        dec   y
29a5: ad 02     cmp   y,#$02
29a7: b0 c2     bcs   $296b
29a9: 60        clrc
29aa: 6f        ret

29ab: 80        setc
29ac: 6f        ret

29ad: 40        setp
29ae: 3f d1 16  call  $16d1
29b1: 90 01     bcc   $29b4
29b3: 6f        ret

29b4: 3f 34 2a  call  $2a34
29b7: cd 00     mov   x,#$00
29b9: e7 a3     mov   a,($a3+x)
29bb: f0 39     beq   $29f6
29bd: bc        inc   a
29be: fd        mov   y,a
29bf: 6d        push  y
29c0: f7 a3     mov   a,($a3)+y
29c2: 5d        mov   x,a
29c3: f5 10 04  mov   a,$0410+x
29c6: 68 ff     cmp   a,#$ff
29c8: f0 26     beq   $29f0
29ca: 8f e6 a5  mov   $a5,#$e6
29cd: 8f 05 a6  mov   $a6,#$05
29d0: 8d 08     mov   y,#$08
29d2: cf        mul   ya
29d3: 7a a5     addw  ya,$a5
29d5: da a5     movw  $a5,ya
29d7: 8d 07     mov   y,#$07
29d9: f7 a5     mov   a,($a5)+y
29db: 28 07     and   a,#$07
29dd: 0d        push  psw
29de: f7 a5     mov   a,($a5)+y
29e0: 8e        pop   psw
29e1: f0 07     beq   $29ea
29e3: 9c        dec   a
29e4: d7 a5     mov   ($a5)+y,a
29e6: 28 07     and   a,#$07
29e8: d0 06     bne   $29f0
29ea: f7 a5     mov   a,($a5)+y
29ec: 28 f0     and   a,#$f0
29ee: d7 a5     mov   ($a5)+y,a
29f0: ee        pop   y
29f1: dc        dec   y
29f2: ad 02     cmp   y,#$02
29f4: b0 c9     bcs   $29bf
29f6: 6f        ret

29f7: 40        setp
29f8: 3f d1 16  call  $16d1
29fb: 90 01     bcc   $29fe
29fd: 6f        ret

29fe: 3f 34 2a  call  $2a34
2a01: cd 00     mov   x,#$00
2a03: e7 a3     mov   a,($a3+x)
2a05: f0 2c     beq   $2a33
2a07: bc        inc   a
2a08: fd        mov   y,a
2a09: 6d        push  y
2a0a: f7 a3     mov   a,($a3)+y
2a0c: 5d        mov   x,a
2a0d: f5 10 04  mov   a,$0410+x
2a10: 68 ff     cmp   a,#$ff
2a12: f0 19     beq   $2a2d
2a14: 8f e6 a5  mov   $a5,#$e6
2a17: 8f 05 a6  mov   $a6,#$05
2a1a: 8d 08     mov   y,#$08
2a1c: cf        mul   ya
2a1d: 7a a5     addw  ya,$a5
2a1f: da a5     movw  $a5,ya
2a21: 8d 07     mov   y,#$07
2a23: f7 a5     mov   a,($a5)+y
2a25: 68 20     cmp   a,#$20
2a27: 90 04     bcc   $2a2d
2a29: a8 20     sbc   a,#$20
2a2b: d7 a5     mov   ($a5)+y,a
2a2d: ee        pop   y
2a2e: dc        dec   y
2a2f: ad 02     cmp   y,#$02
2a31: b0 d6     bcs   $2a09
2a33: 6f        ret

2a34: e5 46 2c  mov   a,$2c46
2a37: c4 a3     mov   $a3,a
2a39: e5 47 2c  mov   a,$2c47
2a3c: c4 a4     mov   $a4,a
2a3e: cd 00     mov   x,#$00
2a40: ad 00     cmp   y,#$00
2a42: f0 0f     beq   $2a53
2a44: e7 a3     mov   a,($a3+x)
2a46: bc        inc   a
2a47: bc        inc   a
2a48: 6d        push  y
2a49: 8d 00     mov   y,#$00
2a4b: 7a a3     addw  ya,$a3
2a4d: da a3     movw  $a3,ya
2a4f: ee        pop   y
2a50: dc        dec   y
2a51: 2f ed     bra   $2a40
2a53: 6f        ret

2a54: 40        setp
2a55: 3f d1 16  call  $16d1
2a58: 90 01     bcc   $2a5b
2a5a: 6f        ret

2a5b: f6 d8 04  mov   a,$04d8+y
2a5e: 68 ff     cmp   a,#$ff
2a60: f0 15     beq   $2a77
2a62: 3f eb 27  call  $27eb
2a65: f7 a3     mov   a,($a3)+y
2a67: 28 07     and   a,#$07
2a69: 0d        push  psw
2a6a: f7 a3     mov   a,($a3)+y
2a6c: 8e        pop   psw
2a6d: f0 08     beq   $2a77
2a6f: 9c        dec   a
2a70: d7 a3     mov   ($a3)+y,a
2a72: 28 07     and   a,#$07
2a74: f0 01     beq   $2a77
2a76: 6f        ret

2a77: f7 a3     mov   a,($a3)+y
2a79: 28 f0     and   a,#$f0
2a7b: d7 a3     mov   ($a3)+y,a
2a7d: 6f        ret

2a7e: 40        setp
2a7f: 3f d1 16  call  $16d1
2a82: 90 01     bcc   $2a85
2a84: 6f        ret

2a85: f6 d8 04  mov   a,$04d8+y
2a88: 68 ff     cmp   a,#$ff
2a8a: f0 12     beq   $2a9e
2a8c: 3f eb 27  call  $27eb
2a8f: f7 a3     mov   a,($a3)+y
2a91: 28 e0     and   a,#$e0
2a93: 0d        push  psw
2a94: f7 a3     mov   a,($a3)+y
2a96: 8e        pop   psw
2a97: f0 05     beq   $2a9e
2a99: 80        setc
2a9a: a8 20     sbc   a,#$20
2a9c: d7 a3     mov   ($a3)+y,a
2a9e: 6f        ret

2a9f: 40        setp
2aa0: 3f d1 16  call  $16d1
2aa3: 90 01     bcc   $2aa6
2aa5: 6f        ret

2aa6: 3f 85 2a  call  $2a85
2aa9: f7 a3     mov   a,($a3)+y
2aab: 28 07     and   a,#$07
2aad: 68 07     cmp   a,#$07
2aaf: 0d        push  psw
2ab0: f7 a3     mov   a,($a3)+y
2ab2: 8e        pop   psw
2ab3: f0 03     beq   $2ab8
2ab5: bc        inc   a
2ab6: d7 a3     mov   ($a3)+y,a
2ab8: 6f        ret

2ab9: cd 00     mov   x,#$00
2abb: e8 ff     mov   a,#$ff
2abd: d5 d2 05  mov   $05d2+x,a
2ac0: 3d        inc   x
2ac1: c8 14     cmp   x,#$14
2ac3: 90 f8     bcc   $2abd
2ac5: 6f        ret

2ac6: 2d        push  a
2ac7: cd 00     mov   x,#$00
2ac9: e8 ff     mov   a,#$ff
2acb: 75 d2 05  cmp   a,$05d2+x
2ace: f0 07     beq   $2ad7
2ad0: 3d        inc   x
2ad1: c8 14     cmp   x,#$14
2ad3: 90 f6     bcc   $2acb
2ad5: ae        pop   a
2ad6: 6f        ret

2ad7: ae        pop   a
2ad8: d5 d2 05  mov   $05d2+x,a
2adb: 60        clrc
2adc: 6f        ret

2add: 7d        mov   a,x
2ade: cd 00     mov   x,#$00
2ae0: 75 d2 05  cmp   a,$05d2+x
2ae3: f0 06     beq   $2aeb
2ae5: 3d        inc   x
2ae6: c8 14     cmp   x,#$14
2ae8: 90 f6     bcc   $2ae0
2aea: 6f        ret

2aeb: e8 ff     mov   a,#$ff
2aed: d5 d2 05  mov   $05d2+x,a
2af0: 60        clrc
2af1: 6f        ret

2af2: 40        setp
2af3: e4 97     mov   a,$97
2af5: 68 00     cmp   a,#$00
2af7: d0 12     bne   $2b0b
2af9: ba 00     movw  ya,$00
2afb: da 9f     movw  $9f,ya
2afd: 7a 02     addw  ya,$02
2aff: da 9d     movw  $9d,ya
2b01: 3f 19 2b  call  $2b19
2b04: 90 06     bcc   $2b0c
2b06: 3f 6d 2b  call  $2b6d
2b09: 90 01     bcc   $2b0c
2b0b: 6f        ret

2b0c: e4 8a     mov   a,$8a
2b0e: 68 02     cmp   a,#$02
2b10: 90 e7     bcc   $2af9
2b12: cd 00     mov   x,#$00
2b14: 3f 57 28  call  $2857
2b17: 2f e0     bra   $2af9
2b19: 8f e6 a3  mov   $a3,#$e6
2b1c: 8f 06 a4  mov   $a4,#$06
2b1f: cd 00     mov   x,#$00
2b21: 8d 00     mov   y,#$00
2b23: f7 a3     mov   a,($a3)+y
2b25: f0 17     beq   $2b3e
2b27: 8d 05     mov   y,#$05
2b29: f7 a3     mov   a,($a3)+y
2b2b: f0 11     beq   $2b3e
2b2d: 28 08     and   a,#$08
2b2f: d0 3a     bne   $2b6b
2b31: 8d 02     mov   y,#$02
2b33: f7 a3     mov   a,($a3)+y
2b35: 2d        push  a
2b36: dc        dec   y
2b37: f7 a3     mov   a,($a3)+y
2b39: ee        pop   y
2b3a: 5a 9d     cmpw  ya,$9d
2b3c: f0 0e     beq   $2b4c
2b3e: 8d 00     mov   y,#$00
2b40: e8 06     mov   a,#$06
2b42: 7a a3     addw  ya,$a3
2b44: da a3     movw  $a3,ya
2b46: 3d        inc   x
2b47: c8 14     cmp   x,#$14
2b49: 90 d6     bcc   $2b21
2b4b: 6f        ret

2b4c: 8d 03     mov   y,#$03
2b4e: f7 a3     mov   a,($a3)+y
2b50: c4 a1     mov   $a1,a
2b52: fc        inc   y
2b53: f7 a3     mov   a,($a3)+y
2b55: c4 a2     mov   $a2,a
2b57: e4 9f     mov   a,$9f
2b59: 8d 01     mov   y,#$01
2b5b: d7 a3     mov   ($a3)+y,a
2b5d: fc        inc   y
2b5e: e4 a0     mov   a,$a0
2b60: d7 a3     mov   ($a3)+y,a
2b62: 3f f2 2b  call  $2bf2
2b65: ba 9f     movw  ya,$9f
2b67: da 00     movw  $00,ya
2b69: 60        clrc
2b6a: 6f        ret

2b6b: 80        setc
2b6c: 6f        ret

2b6d: 8f 00 a3  mov   $a3,#$00
2b70: 8f 08 a4  mov   $a4,#$08
2b73: 8f e6 a5  mov   $a5,#$e6
2b76: 8f 05 a6  mov   $a6,#$05
2b79: cd 00     mov   x,#$00
2b7b: 8d 07     mov   y,#$07
2b7d: f7 a5     mov   a,($a5)+y
2b7f: f0 11     beq   $2b92
2b81: 28 08     and   a,#$08
2b83: d0 6b     bne   $2bf0
2b85: 8d 01     mov   y,#$01
2b87: f7 a3     mov   a,($a3)+y
2b89: 2d        push  a
2b8a: dc        dec   y
2b8b: f7 a3     mov   a,($a3)+y
2b8d: ee        pop   y
2b8e: 5a 9d     cmpw  ya,$9d
2b90: f0 16     beq   $2ba8
2b92: 8d 00     mov   y,#$00
2b94: e8 04     mov   a,#$04
2b96: 7a a3     addw  ya,$a3
2b98: da a3     movw  $a3,ya
2b9a: 8d 00     mov   y,#$00
2b9c: e8 08     mov   a,#$08
2b9e: 7a a5     addw  ya,$a5
2ba0: da a5     movw  $a5,ya
2ba2: 3d        inc   x
2ba3: c8 20     cmp   x,#$20
2ba5: 90 d4     bcc   $2b7b
2ba7: 6f        ret

2ba8: 7d        mov   a,x
2ba9: 8d 00     mov   y,#$00
2bab: 76 10 04  cmp   a,$0410+y
2bae: f0 06     beq   $2bb6
2bb0: fc        inc   y
2bb1: ad c8     cmp   y,#$c8
2bb3: 90 f6     bcc   $2bab
2bb5: 6f        ret

2bb6: cb 90     mov   $90,y
2bb8: 8d 00     mov   y,#$00
2bba: f7 a5     mov   a,($a5)+y
2bbc: c4 a1     mov   $a1,a
2bbe: fc        inc   y
2bbf: f7 a5     mov   a,($a5)+y
2bc1: c4 a2     mov   $a2,a
2bc3: 8d 00     mov   y,#$00
2bc5: e4 9f     mov   a,$9f
2bc7: d7 a3     mov   ($a3)+y,a
2bc9: fc        inc   y
2bca: e4 a0     mov   a,$a0
2bcc: d7 a3     mov   ($a3)+y,a
2bce: 8d 03     mov   y,#$03
2bd0: f7 a3     mov   a,($a3)+y
2bd2: 2d        push  a
2bd3: dc        dec   y
2bd4: f7 a3     mov   a,($a3)+y
2bd6: ee        pop   y
2bd7: 7a 9f     addw  ya,$9f
2bd9: 9a 9d     subw  ya,$9d
2bdb: 6d        push  y
2bdc: 8d 02     mov   y,#$02
2bde: d7 a3     mov   ($a3)+y,a
2be0: ae        pop   a
2be1: fc        inc   y
2be2: d7 a3     mov   ($a3)+y,a
2be4: 3f f2 2b  call  $2bf2
2be7: ba 9f     movw  ya,$9f
2be9: da 00     movw  $00,ya
2beb: 8f ff 90  mov   $90,#$ff
2bee: 60        clrc
2bef: 6f        ret

2bf0: 80        setc
2bf1: 6f        ret

2bf2: 8d 00     mov   y,#$00
2bf4: e4 a2     mov   a,$a2
2bf6: f0 38     beq   $2c30
2bf8: f7 9d     mov   a,($9d)+y
2bfa: d7 9f     mov   ($9f)+y,a
2bfc: fc        inc   y
2bfd: f7 9d     mov   a,($9d)+y
2bff: d7 9f     mov   ($9f)+y,a
2c01: fc        inc   y
2c02: f7 9d     mov   a,($9d)+y
2c04: d7 9f     mov   ($9f)+y,a
2c06: fc        inc   y
2c07: f7 9d     mov   a,($9d)+y
2c09: d7 9f     mov   ($9f)+y,a
2c0b: fc        inc   y
2c0c: f7 9d     mov   a,($9d)+y
2c0e: d7 9f     mov   ($9f)+y,a
2c10: fc        inc   y
2c11: f7 9d     mov   a,($9d)+y
2c13: d7 9f     mov   ($9f)+y,a
2c15: fc        inc   y
2c16: f7 9d     mov   a,($9d)+y
2c18: d7 9f     mov   ($9f)+y,a
2c1a: fc        inc   y
2c1b: f7 9d     mov   a,($9d)+y
2c1d: d7 9f     mov   ($9f)+y,a
2c1f: fc        inc   y
2c20: d0 d6     bne   $2bf8
2c22: ab a0     inc   $a0
2c24: ab 9e     inc   $9e
2c26: 3f fd 12  call  $12fd
2c29: 40        setp
2c2a: 8d 00     mov   y,#$00
2c2c: 8b a2     dec   $a2
2c2e: d0 c8     bne   $2bf8
2c30: e4 a1     mov   a,$a1
2c32: f0 08     beq   $2c3c
2c34: f7 9d     mov   a,($9d)+y
2c36: d7 9f     mov   ($9f)+y,a
2c38: fc        inc   y
2c39: 6e a1 f8  dbnz  $a1,$2c34
2c3c: dd        mov   a,y
2c3d: 8d 00     mov   y,#$00
2c3f: 7a 9f     addw  ya,$9f
2c41: da 9f     movw  $9f,ya
2c43: 6f        ret

2c44: db $92,$2f
2c46: db $4a,$2c
2c48: db $47
2c49: db $3d
