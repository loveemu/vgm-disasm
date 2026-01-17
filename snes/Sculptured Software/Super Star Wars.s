0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f 6c f2  mov   $f2,#$6c		; reset DSP flags
0707: d8 f3     mov   $f3,x
0709: 8f b0 f1  mov   $f1,#$b0		; clear input ports APUI00-APUI04
070c: 8f 20 fa  mov   $fa,#$20
070f: 8f 81 f1  mov   $f1,#$81		; toggle timer 2
0712: 3f f7 0d  call  $0df7		; clear/reset routine
0715: 8f 00 0b  mov   $0b,#$00		; variables = sample directory start
0718: 8f 18 0c  mov   $0c,#$18
071b: 8d 03     mov   y,#$03		; set temporary storage
071d: f6 ff ff  mov   a,$ffff+y
0720: 16 27 07  or    a,$0727+y
0723: d6 ff ff  mov   $ffff+y,a
0726: fe f5     dbnz  y,$071d
0728: ab 15     inc   $15
072a: e4 1b     mov   a,$1b
072c: d0 05     bne   $0733
072e: 3f 86 15  call  $1586		; do a random number generator (RNG)
0731: 2f 03     bra   $0736
0733: 3f 58 08  call  $0858
0736: e4 f6     mov   a,$f6
0738: f0 03     beq   $073d
073a: 3f 3d 0b  call  $0b3d
073d: e4 fd     mov   a,$fd
073f: 60        clrc
0740: 84 14     adc   a,$14
0742: c4 14     mov   $14,a
0744: 68 05     cmp   a,#$05
0746: 90 ee     bcc   $0736
0748: a8 05     sbc   a,#$05
074a: c4 14     mov   $14,a
074c: 68 14     cmp   a,#$14
074e: 90 d8     bcc   $0728
0750: 8f 00 14  mov   $14,#$00
0753: 2f d3     bra   $0728
0755: 8d 00     mov   y,#$00
0757: 8f aa f4  mov   $f4,#$aa
075a: 8f bb f5  mov   $f5,#$bb
075d: f8 f4     mov   x,$f4
075f: c8 cc     cmp   x,#$cc
0761: d0 fa     bne   $075d
0763: fa f6 03  mov   ($03),($f6)
0766: fa f7 04  mov   ($04),($f7)
0769: 7d        mov   a,x
076a: f8 f5     mov   x,$f5
076c: c4 f4     mov   $f4,a
076e: d0 05     bne   $0775
0770: d8 f6     mov   $f6,x
0772: 1f 03 00  jmp   ($0003+x)

0775: cd 00     mov   x,#$00
0777: 3e f4     cmp   x,$f4
0779: d0 fc     bne   $0777
077b: e4 f5     mov   a,$f5
077d: d7 03     mov   ($03)+y,a
077f: f8 f4     mov   x,$f4
0781: d8 f4     mov   $f4,x
0783: 3a 03     incw  $03
0785: 3e f4     cmp   x,$f4
0787: f0 fc     beq   $0785
0789: 3d        inc   x
078a: 3e f4     cmp   x,$f4
078c: f0 ed     beq   $077b
078e: f8 f4     mov   x,$f4
0790: 2f d1     bra   $0763
0792: 3f f7 0d  call  $0df7
0795: 8f b0 f1  mov   $f1,#$b0
0798: cd 00     mov   x,#$00
079a: f5 55 07  mov   a,$0755+x
079d: d5 00 01  mov   $0100+x,a
07a0: 3d        inc   x
07a1: c8 3d     cmp   x,#$3d
07a3: 90 f5     bcc   $079a
07a5: 5f 00 01  jmp   $0100

; gain tables
07a8: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08,$06,$05,$04,$03,$02,$01
07be: db $1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

; DSP registers: VxENVX
07d4: db $08,$18,$28,$38,$48,$58,$68,$78
; DSP registers: VxGAIN
07dc: db $07,$17,$27,$37,$47,$57,$67,$77
; DSP registers: VxSCRN (select sample)
07e4: db $04,$14,$24,$34,$44,$54,$64,$74
; DSP registers: VxPITCHL
07ec: db $02,$12,$22,$32,$42,$52,$62,$72
; DSP registers: VxVOLL
07f4: db $00,$10,$20,$30,$40,$50,$60,$70

; voice numbers and bits for clearing those void bits
07fc: db $01,$02,$04,$08,$10,$20,$40,$80,$fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo poke registers
080c: db $7d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0818: db $02,$02,$02,$02,$02,$03,$03,$03
0820: db $97,$ac,$c1,$d6,$eb,$00,$15,$2a

0828: db $03,$03,$03,$03,$03,$03,$03,$03
0830: db $3f,$54,$69,$7e,$93,$a8,$bd,$d2

0838: db $03,$03,$04,$04,$04,$04,$04,$04
0840: db $e7,$fc,$11,$26,$3b,$50,$65,$7a

0848: db $04,$04,$04,$04,$04,$04,$05,$05
0850: db $8f,$a5,$bb,$d1,$e7,$fd,$13,$29

0858: 3f 86 15  call  $1586			; use RNG
085b: 3f 0a 13  call  $130a
085e: 8f 00 2f  mov   $2f,#$00
0861: 8f 00 44  mov   $44,#$00
0864: 8f 7c f2  mov   $f2,#$7c			; clear end of sample flags?
0867: e4 f3     mov   a,$f3
0869: 04 41     or    a,$41
086b: 24 47     and   a,$47
086d: c4 41     mov   $41,a
086f: 8f 00 f3  mov   $f3,#$00
0872: 24 42     and   a,$42
0874: 04 43     or    a,$43
0876: c4 43     mov   $43,a
0878: cd 07     mov   x,#$07
087a: 8f 7a 0d  mov   $0d,#$7a
087d: 8f 04 0e  mov   $0e,#$04
0880: d8 0f     mov   $0f,x
0882: f5 fc 07  mov   a,$07fc+x			; clear voice number bits
0885: c4 31     mov   $31,a
0887: 48 ff     eor   a,#$ff
0889: c4 32     mov   $32,a
088b: f4 53     mov   a,$53+x
088d: 28 02     and   a,#$02
088f: c4 30     mov   $30,a
0891: d0 06     bne   $0899
0893: f5 77 02  mov   a,$0277+x
0896: 5f 9e 08  jmp   $089e
0899: 3f db 0e  call  $0edb
089c: f8 0f     mov   x,$0f
089e: 75 7f 02  cmp   a,$027f+x
08a1: d0 10     bne   $08b3
08a3: 3f 75 10  call  $1075
08a6: 3f 23 0b  call  $0b23
08a9: e4 48     mov   a,$48
08ab: 24 45     and   a,$45
08ad: 24 31     and   a,$31
08af: d0 43     bne   $08f4
08b1: f0 44     beq   $08f7
08b3: d5 7f 02  mov   $027f+x,a
08b6: 09 31 2f  or    ($2f),($31)
08b9: 3f 75 10  call  $1075
08bc: 7d        mov   a,x
08bd: 1c        asl   a
08be: 5d        mov   x,a
08bf: e4 49     mov   a,$49
08c1: d5 87 02  mov   $0287+x,a
08c4: e4 4a     mov   a,$4a
08c6: d5 88 02  mov   $0288+x,a
08c9: f8 0f     mov   x,$0f
08cb: e4 4b     mov   a,$4b
08cd: 28 20     and   a,#$20
08cf: f0 05     beq   $08d6
08d1: 29 32 42  and   ($42),($32)
08d4: 2f 03     bra   $08d9
08d6: 09 31 42  or    ($42),($31)
08d9: e4 4b     mov   a,$4b
08db: 28 40     and   a,#$40
08dd: f0 05     beq   $08e4
08df: 09 31 48  or    ($48),($31)
08e2: 2f 03     bra   $08e7
08e4: 29 32 48  and   ($48),($32)
08e7: 3f 23 0b  call  $0b23
08ea: e4 48     mov   a,$48
08ec: 04 45     or    a,$45
08ee: 24 31     and   a,$31
08f0: d0 02     bne   $08f4
08f2: f0 03     beq   $08f7
08f4: 09 31 44  or    ($44),($31)
08f7: 1d        dec   x
08f8: 30 0a     bmi   $0904
08fa: 80        setc
08fb: b8 15 0d  sbc   $0d,#$15
08fe: b8 00 0e  sbc   $0e,#$00
0901: 5f 80 08  jmp   $0880

0904: e4 45     mov   a,$45
0906: 24 43     and   a,$43
0908: 04 44     or    a,$44
090a: c4 46     mov   $46,a
090c: 8f 5c f2  mov   $f2,#$5c
090f: c4 f3     mov   $f3,a
0911: cd 07     mov   x,#$07
0913: 8f d2 0d  mov   $0d,#$d2
0916: 8f 03 0e  mov   $0e,#$03
0919: d8 0f     mov   $0f,x
091b: f4 53     mov   a,$53+x
091d: fd        mov   y,a
091e: 28 40     and   a,#$40
0920: 0d        push  psw
0921: dd        mov   a,y
0922: 28 04     and   a,#$04
0924: 0d        push  psw
0925: 7d        mov   a,x
0926: fd        mov   y,a
0927: 1c        asl   a
0928: 5d        mov   x,a
0929: f5 48 02  mov   a,$0248+x		; get base note
092c: c4 2e     mov   $2e,a
092e: f5 47 02  mov   a,$0247+x
0931: c4 2d     mov   $2d,a
0933: 8e        pop   psw
0934: f0 11     beq   $0947
0936: 4d        push  x			; save word addressing
0937: 3f db 0e  call  $0edb		; advance pitch envelope
093a: ce        pop   x			; restore pitch flag
093b: 7a 2d     addw  ya,$2d
093d: 80        setc
093e: a8 b0     sbc   a,#$b0
0940: c4 2d     mov   $2d,a
0942: dd        mov   a,y
0943: a8 04     sbc   a,#$04
0945: c4 2e     mov   $2e,a
0947: f5 88 02  mov   a,$0288+x
094a: fd        mov   y,a
094b: f5 87 02  mov   a,$0287+x
094e: 7a 2d     addw  ya,$2d
0950: 8e        pop   psw
0951: d0 03     bne   $0956
0953: 3f 9f 10  call  $109f		; translate note to frequency
0956: f8 0f     mov   x,$0f
0958: d5 57 02  mov   $0257+x,a
095b: dd        mov   a,y
095c: d5 5f 02  mov   $025f+x,a
095f: 80        setc
0960: b8 15 0d  sbc   $0d,#$15
0963: b8 00 0e  sbc   $0e,#$00
0966: 1d        dec   x
0967: 10 b0     bpl   $0919
0969: 8f 5c f2  mov   $f2,#$5c
096c: 8f 00 f3  mov   $f3,#$00
096f: cd 07     mov   x,#$07
0971: 8f 2a 0d  mov   $0d,#$2a
0974: 8f 03 0e  mov   $0e,#$03
0977: d8 0f     mov   $0f,x
0979: f5 fc 07  mov   a,$07fc+x
097c: c4 31     mov   $31,a
097e: 48 ff     eor   a,#$ff
0980: c4 32     mov   $32,a
0982: f4 53     mov   a,$53+x
0984: 28 01     and   a,#$01
0986: d0 06     bne   $098e
0988: f5 2f 02  mov   a,$022f+x
098b: 5f 93 09  jmp   $0993

098e: 3f db 0e  call  $0edb
0991: f8 0f     mov   x,$0f
0993: d5 37 02  mov   $0237+x,a
0996: fd        mov   y,a
0997: e4 2f     mov   a,$2f
0999: 24 31     and   a,$31
099b: f0 0a     beq   $09a7
099d: f5 e4 07  mov   a,$07e4+x
09a0: c4 f2     mov   $f2,a
09a2: f5 7f 02  mov   a,$027f+x
09a5: c4 f3     mov   $f3,a
09a7: e4 40     mov   a,$40
09a9: 24 31     and   a,$31
09ab: f0 05     beq   $09b2
09ad: 29 32 40  and   ($40),($32)
09b0: 2f 37     bra   $09e9
09b2: f5 d4 07  mov   a,$07d4+x
09b5: c4 f2     mov   $f2,a
09b7: dd        mov   a,y
09b8: 80        setc
09b9: a4 f3     sbc   a,$f3
09bb: b0 09     bcs   $09c6
09bd: 8f 80 22  mov   $22,#$80
09c0: 48 ff     eor   a,#$ff
09c2: bc        inc   a
09c3: 5f c9 09  jmp   $09c9

09c6: 8f c0 22  mov   $22,#$c0
09c9: 5c        lsr   a
09ca: d0 09     bne   $09d5
09cc: ad 00     cmp   y,#$00
09ce: d0 05     bne   $09d5
09d0: e8 82     mov   a,#$82
09d2: 5f e3 09  jmp   $09e3

09d5: 8d 15     mov   y,#$15
09d7: 76 a8 07  cmp   a,$07a8+y
09da: 90 02     bcc   $09de
09dc: fe f9     dbnz  y,$09d7
09de: f6 be 07  mov   a,$07be+y
09e1: 04 22     or    a,$22
09e3: 75 3f 02  cmp   a,$023f+x
09e6: f0 0c     beq   $09f4
09e8: fd        mov   y,a
09e9: f5 dc 07  mov   a,$07dc+x
09ec: c4 f2     mov   $f2,a
09ee: cb f3     mov   $f3,y
09f0: dd        mov   a,y
09f1: d5 3f 02  mov   $023f+x,a
09f4: f5 ec 07  mov   a,$07ec+x
09f7: c4 f2     mov   $f2,a
09f9: fd        mov   y,a
09fa: f5 57 02  mov   a,$0257+x
09fd: c4 f3     mov   $f3,a
09ff: fc        inc   y
0a00: cb f2     mov   $f2,y
0a02: f5 5f 02  mov   a,$025f+x
0a05: c4 f3     mov   $f3,a
0a07: 80        setc
0a08: b8 15 0d  sbc   $0d,#$15
0a0b: b8 00 0e  sbc   $0e,#$00
0a0e: 1d        dec   x
0a0f: 30 03     bmi   $0a14
0a11: 5f 77 09  jmp   $0977

0a14: 8f 4c f2  mov   $f2,#$4c
0a17: fa 46 f3  mov   ($f3),($46)
0a1a: e4 46     mov   a,$46
0a1c: 48 ff     eor   a,#$ff
0a1e: c4 47     mov   $47,a
0a20: 29 47 41  and   ($41),($47)
0a23: 29 47 43  and   ($43),($47)
0a26: 8f 00 45  mov   $45,#$00
0a29: cd 07     mov   x,#$07
0a2b: 8f 29 0d  mov   $0d,#$29
0a2e: 8f 05 0e  mov   $0e,#$05
0a31: 8f 00 34  mov   $34,#$00
0a34: d8 0f     mov   $0f,x
0a36: e4 52     mov   a,$52
0a38: d0 13     bne   $0a4d
0a3a: f4 53     mov   a,$53+x
0a3c: 28 08     and   a,#$08
0a3e: c4 34     mov   $34,a
0a40: d0 06     bne   $0a48
0a42: f5 6f 02  mov   a,$026f+x
0a45: 5f 4d 0a  jmp   $0a4d

0a48: 3f db 0e  call  $0edb
0a4b: f8 0f     mov   x,$0f
0a4d: fd        mov   y,a
0a4e: f5 67 02  mov   a,$0267+x
0a51: c4 29     mov   $29,a
0a53: cf        mul   ya
0a54: cd 64     mov   x,#$64
0a56: 9e        div   ya,x
0a57: f8 0f     mov   x,$0f
0a59: eb 34     mov   y,$34
0a5b: f0 11     beq   $0a6e
0a5d: c4 27     mov   $27,a
0a5f: 8d 15     mov   y,#$15
0a61: f7 0d     mov   a,($0d)+y
0a63: d0 04     bne   $0a69
0a65: e4 27     mov   a,$27
0a67: 2f 05     bra   $0a6e
0a69: e4 29     mov   a,$29
0a6b: 80        setc
0a6c: a4 27     sbc   a,$27
0a6e: c4 27     mov   $27,a
0a70: f5 f4 07  mov   a,$07f4+x
0a73: fd        mov   y,a
0a74: cb f2     mov   $f2,y
0a76: fa 27 f3  mov   ($f3),($27)
0a79: e4 29     mov   a,$29
0a7b: 80        setc
0a7c: a4 27     sbc   a,$27
0a7e: fc        inc   y
0a7f: cb f2     mov   $f2,y
0a81: c4 f3     mov   $f3,a
0a83: 80        setc
0a84: b8 16 0d  sbc   $0d,#$16
0a87: b8 00 0e  sbc   $0e,#$00
0a8a: 1d        dec   x
0a8b: 30 03     bmi   $0a90
0a8d: 5f 34 0a  jmp   $0a34

0a90: cd 07     mov   x,#$07
0a92: 8d 0e     mov   y,#$0e
0a94: f5 06 02  mov   a,$0206+x
0a97: f0 2b     beq   $0ac4
0a99: f4 53     mov   a,$53+x
0a9b: 28 80     and   a,#$80
0a9d: f0 09     beq   $0aa8
0a9f: f5 fc 07  mov   a,$07fc+x
0aa2: 24 41     and   a,$41
0aa4: d0 19     bne   $0abf
0aa6: 2f 1c     bra   $0ac4
0aa8: f6 17 02  mov   a,$0217+y
0aab: 80        setc
0aac: a8 01     sbc   a,#$01
0aae: d6 17 02  mov   $0217+y,a
0ab1: c4 27     mov   $27,a
0ab3: f6 18 02  mov   a,$0218+y
0ab6: a8 00     sbc   a,#$00
0ab8: d6 18 02  mov   $0218+y,a
0abb: 04 27     or    a,$27
0abd: d0 05     bne   $0ac4
0abf: e8 00     mov   a,#$00
0ac1: d5 06 02  mov   $0206+x,a
0ac4: dc        dec   y
0ac5: dc        dec   y
0ac6: 1d        dec   x
0ac7: 10 cb     bpl   $0a94
0ac9: ec 00 02  mov   y,$0200
0acc: f0 54     beq   $0b22
0ace: 8c 01 02  dec   $0201
0ad1: d0 4f     bne   $0b22
0ad3: cc 01 02  mov   $0201,y
0ad6: e4 16     mov   a,$16
0ad8: e9 02 02  mov   x,$0202
0adb: 30 0e     bmi   $0aeb
0add: 60        clrc
0ade: 85 03 02  adc   a,$0203
0ae1: b0 04     bcs   $0ae7
0ae3: 68 4b     cmp   a,#$4b
0ae5: 90 13     bcc   $0afa
0ae7: e8 4b     mov   a,#$4b
0ae9: 2f 0a     bra   $0af5
0aeb: 80        setc
0aec: a5 03 02  sbc   a,$0203
0aef: f0 04     beq   $0af5
0af1: b0 07     bcs   $0afa
0af3: e8 00     mov   a,#$00
0af5: 8d 00     mov   y,#$00
0af7: cc 00 02  mov   $0200,y
0afa: c4 16     mov   $16,a
0afc: 5d        mov   x,a
0afd: 8f 2c f2  mov   $f2,#$2c
0b00: 65 04 02  cmp   a,$0204
0b03: 90 03     bcc   $0b08
0b05: e5 04 02  mov   a,$0204
0b08: c4 f3     mov   $f3,a
0b0a: 8f 3c f2  mov   $f2,#$3c
0b0d: 7d        mov   a,x
0b0e: 65 05 02  cmp   a,$0205
0b11: 90 03     bcc   $0b16
0b13: e5 04 02  mov   a,$0204
0b16: c4 f3     mov   $f3,a
0b18: 8f 0c f2  mov   $f2,#$0c
0b1b: d8 f3     mov   $f3,x
0b1d: 8f 1c f2  mov   $f2,#$1c
0b20: d8 f3     mov   $f3,x
0b22: 6f        ret

0b23: e4 4b     mov   a,$4b
0b25: 10 0c     bpl   $0b33
0b27: 28 1f     and   a,#$1f
0b29: 8f 6c f2  mov   $f2,#$6c
0b2c: c4 f3     mov   $f3,a
0b2e: 09 31 4d  or    ($4d),($31)
0b31: 2f 03     bra   $0b36
0b33: 29 32 4d  and   ($4d),($32)
0b36: 8f 3d f2  mov   $f2,#$3d
0b39: fa 4d f3  mov   ($f3),($4d)
0b3c: 6f        ret

0b3d: c4 17     mov   $17,a
0b3f: fa f4 19  mov   ($19),($f4)
0b42: fa f5 1a  mov   ($1a),($f5)
0b45: e4 f7     mov   a,$f7
0b47: 8f b1 f1  mov   $f1,#$b1
0b4a: 28 fe     and   a,#$fe
0b4c: c4 18     mov   $18,a
0b4e: fa 17 f6  mov   ($f6),($17)
0b51: 5d        mov   x,a
0b52: c8 1d     cmp   x,#$1d
0b54: b0 13     bcs   $0b69
0b56: e4 19     mov   a,$19
0b58: eb 1a     mov   y,$1a
0b5a: 1f a4 17  jmp   ($17a4+x)

0b5d: 8f ff 1b  mov   $1b,#$ff
0b60: 3f 41 0e  call  $0e41
0b63: 8f 6c f2  mov   $f2,#$6c
0b66: 8f 00 f3  mov   $f3,#$00
0b69: 6f        ret

0b6a: da 3a     movw  $3a,ya
0b6c: 8f ff 39  mov   $39,#$ff
0b6f: 6f        ret

0b70: c4 52     mov   $52,a
0b72: 6f        ret

0b73: e8 00     mov   a,#$00
0b75: c5 00 02  mov   $0200,a
0b78: 6f        ret

0b79: cd 01     mov   x,#$01
0b7b: 2f 02     bra   $0b7f
0b7d: cd ff     mov   x,#$ff
0b7f: c5 00 02  mov   $0200,a
0b82: c5 01 02  mov   $0201,a
0b85: cc 03 02  mov   $0203,y
0b88: c9 02 02  mov   $0202,x
0b8b: 6f        ret

0b8c: 8f 00 5c  mov   $5c,#$00
0b8f: 68 00     cmp   a,#$00
0b91: d0 03     bne   $0b96
0b93: c5 4f 05  mov   $054f,a
0b96: 6f        ret

0b97: c5 16 02  mov   $0216,a
0b9a: cd 07     mov   x,#$07
0b9c: ad 80     cmp   y,#$80
0b9e: f0 17     beq   $0bb7
0ba0: e8 01     mov   a,#$01
0ba2: b0 0e     bcs   $0bb2
0ba4: ad 00     cmp   y,#$00
0ba6: d0 08     bne   $0bb0
0ba8: e5 16 02  mov   a,$0216
0bab: 75 0e 02  cmp   a,$020e+x
0bae: d0 22     bne   $0bd2
0bb0: e8 80     mov   a,#$80
0bb2: 75 06 02  cmp   a,$0206+x
0bb5: d0 1b     bne   $0bd2
0bb7: f5 dc 07  mov   a,$07dc+x
0bba: c4 f2     mov   $f2,a
0bbc: e8 00     mov   a,#$00
0bbe: c4 f3     mov   $f3,a
0bc0: d5 2f 02  mov   $022f+x,a
0bc3: d5 06 02  mov   $0206+x,a
0bc6: d5 77 02  mov   $0277+x,a
0bc9: d4 53     mov   $53+x,a
0bcb: f5 fc 07  mov   a,$07fc+x
0bce: 04 45     or    a,$45
0bd0: c4 45     mov   $45,a
0bd2: 1d        dec   x
0bd3: 10 c7     bpl   $0b9c
0bd5: 6f        ret

0bd6: 8d 0e     mov   y,#$0e
0bd8: c5 16 02  mov   $0216,a
0bdb: 3f bb 0d  call  $0dbb
0bde: da 09     movw  $09,ya
0be0: 8d 00     mov   y,#$00
0be2: f7 09     mov   a,($09)+y
0be4: c4 3c     mov   $3c,a
0be6: 3a 09     incw  $09
0be8: 8d 07     mov   y,#$07
0bea: f7 09     mov   a,($09)+y
0bec: c4 3d     mov   $3d,a
0bee: 8d 06     mov   y,#$06
0bf0: f7 09     mov   a,($09)+y
0bf2: c4 3e     mov   $3e,a
0bf4: 8f 80 3f  mov   $3f,#$80
0bf7: cd 07     mov   x,#$07
0bf9: 3f 44 0c  call  $0c44
0bfc: 30 36     bmi   $0c34
0bfe: e8 80     mov   a,#$80
0c00: d5 06 02  mov   $0206+x,a
0c03: e5 16 02  mov   a,$0216
0c06: d5 0e 02  mov   $020e+x,a
0c09: 8d 02     mov   y,#$02
0c0b: f7 09     mov   a,($09)+y
0c0d: c4 35     mov   $35,a
0c0f: fc        inc   y
0c10: f7 09     mov   a,($09)+y
0c12: c4 36     mov   $36,a
0c14: 8d 04     mov   y,#$04
0c16: f7 09     mov   a,($09)+y
0c18: c4 37     mov   $37,a
0c1a: fc        inc   y
0c1b: f7 09     mov   a,($09)+y
0c1d: c4 38     mov   $38,a
0c1f: e4 39     mov   a,$39
0c21: f0 04     beq   $0c27
0c23: ba 3a     movw  ya,$3a
0c25: da 37     movw  $37,ya
0c27: 8d 01     mov   y,#$01
0c29: f7 09     mov   a,($09)+y
0c2b: 2d        push  a
0c2c: 8d 00     mov   y,#$00
0c2e: f7 09     mov   a,($09)+y
0c30: ee        pop   y
0c31: 3f 6e 0c  call  $0c6e
0c34: 60        clrc
0c35: 98 08 09  adc   $09,#$08
0c38: 90 02     bcc   $0c3c
0c3a: ab 0a     inc   $0a
0c3c: 8b 3c     dec   $3c
0c3e: d0 a8     bne   $0be8
0c40: 8f 00 39  mov   $39,#$00
0c43: 6f        ret

0c44: 8d 07     mov   y,#$07
0c46: e4 3f     mov   a,$3f
0c48: 24 3d     and   a,$3d
0c4a: f0 0c     beq   $0c58
0c4c: f5 06 02  mov   a,$0206+x
0c4f: f0 15     beq   $0c66
0c51: e4 3e     mov   a,$3e
0c53: 75 27 02  cmp   a,$0227+x
0c56: b0 10     bcs   $0c68
0c58: 4b 3f     lsr   $3f
0c5a: d0 05     bne   $0c61
0c5c: 8f 80 3f  mov   $3f,#$80
0c5f: cd 08     mov   x,#$08
0c61: 1d        dec   x
0c62: dc        dec   y
0c63: 10 e1     bpl   $0c46
0c65: 6f        ret

0c66: e4 3e     mov   a,$3e
0c68: d5 27 02  mov   $0227+x,a
0c6b: e8 00     mov   a,#$00
0c6d: 6f        ret

0c6e: d8 33     mov   $33,x			; play sound (instrument)
0c70: 2d        push  a
0c71: f5 dc 07  mov   a,$07dc+x
0c74: c4 f2     mov   $f2,a
0c76: 8f 9f f3  mov   $f3,#$9f
0c79: dd        mov   a,y
0c7a: d5 67 02  mov   $0267+x,a
0c7d: 7d        mov   a,x
0c7e: 1c        asl   a
0c7f: 5d        mov   x,a
0c80: e4 37     mov   a,$37
0c82: d5 47 02  mov   $0247+x,a
0c85: e4 38     mov   a,$38
0c87: d5 48 02  mov   $0248+x,a
0c8a: e4 35     mov   a,$35
0c8c: d5 17 02  mov   $0217+x,a
0c8f: e4 36     mov   a,$36
0c91: d5 18 02  mov   $0218+x,a
0c94: ae        pop   a
0c95: 8d 02     mov   y,#$02
0c97: 3f bb 0d  call  $0dbb
0c9a: da 07     movw  $07,ya			; get current voice and instrument
0c9c: f8 33     mov   x,$33
0c9e: f5 fc 07  mov   a,$07fc+x			; get channel bit mask ID
0ca1: c4 4e     mov   $4e,a
0ca3: 48 ff     eor   a,#$ff			; and store inversion
0ca5: c4 4f     mov   $4f,a
0ca7: 8d 00     mov   y,#$00			; get mode flags
0ca9: f7 07     mov   a,($07)+y
0cab: d4 53     mov   $53+x,a			; save permanently and in local temp 
0cad: c4 34     mov   $34,a
0caf: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0cb1: f0 05     beq   $0cb8			; if not...
0cb3: 09 4e 50  or    ($50),($4e)		; turn pitch mod on	
0cb6: 2f 03     bra   $0cbb
0cb8: 29 4f 50  and   ($50),($4f)		; turn pitch mod off
0cbb: 8f 2d f2  mov   $f2,#$2d
0cbe: fa 50 f3  mov   ($f3),($50)
0cc1: e4 34     mov   a,$34			; retrieve the saved flag
0cc3: 28 10     and   a,#$10			; is echo enabled? ($10 = echo)
0cc5: f0 2f     beq   $0cf6			; if not...
0cc7: 8d 05     mov   y,#$05			; get echo byte from sound
0cc9: f7 07     mov   a,($07)+y
0ccb: 8d 0c     mov   y,#$0c
0ccd: 3f bb 0d  call  $0dbb
0cd0: 8d 00     mov   y,#$00
0cd2: f6 0c 08  mov   a,$080c+y			; get the echo register values to "poke"
0cd5: c4 f2     mov   $f2,a			; (from the table)
0cd7: f7 10     mov   a,($10)+y			; now get info to feed to the registers
0cd9: ad 01     cmp   y,#$01			; (from the echo environment)
0cdb: f0 04     beq   $0ce1
0cdd: ad 02     cmp   y,#$02
0cdf: d0 09     bne   $0cea
0ce1: d6 03 02  mov   $0203+y,a
0ce4: 64 16     cmp   a,$16
0ce6: 90 02     bcc   $0cea
0ce8: e4 16     mov   a,$16
0cea: c4 f3     mov   $f3,a
0cec: fc        inc   y
0ced: ad 0c     cmp   y,#$0c			; repeat for every byte of the array
0cef: 90 e1     bcc   $0cd2
0cf1: 09 4e 51  or    ($51),($4e)
0cf4: 2f 03     bra   $0cf9

0cf6: 29 4f 51  and   ($51),($4f)
0cf9: 8f 4d f2  mov   $f2,#$4d
0cfc: fa 51 f3  mov   ($f3),($51)		; send the echo unit
0cff: e4 34     mov   a,$34
0d01: 28 01     and   a,#$01
0d03: 0d        push  psw
0d04: 8d 01     mov   y,#$01
0d06: f7 07     mov   a,($07)+y			; now get the amplitude
0d08: 8e        pop   psw
0d09: d0 08     bne   $0d13
0d0b: f8 33     mov   x,$33
0d0d: d5 2f 02  mov   $022f+x,a
0d10: 5f 29 0d  jmp   $0d29

0d13: 8d 04     mov   y,#$04
0d15: 3f bb 0d  call  $0dbb
0d18: f8 33     mov   x,$33
0d1a: f5 20 08  mov   a,$0820+x
0d1d: c4 0d     mov   $0d,a
0d1f: f5 18 08  mov   a,$0818+x
0d22: c4 0e     mov   $0e,a
0d24: ba 35     movw  ya,$35
0d26: 3f 64 0e  call  $0e64
0d29: e4 34     mov   a,$34
0d2b: 28 04     and   a,#$04
0d2d: f0 1a     beq   $0d49
0d2f: 8d 03     mov   y,#$03
0d31: f7 07     mov   a,($07)+y
0d33: 8d 06     mov   y,#$06
0d35: 3f bb 0d  call  $0dbb
0d38: f8 33     mov   x,$33
0d3a: f5 30 08  mov   a,$0830+x
0d3d: c4 0d     mov   $0d,a
0d3f: f5 28 08  mov   a,$0828+x
0d42: c4 0e     mov   $0e,a
0d44: ba 35     movw  ya,$35
0d46: 3f 64 0e  call  $0e64
0d49: e4 34     mov   a,$34
0d4b: 28 08     and   a,#$08
0d4d: 0d        push  psw
0d4e: 8d 04     mov   y,#$04
0d50: f7 07     mov   a,($07)+y
0d52: 8e        pop   psw
0d53: d0 08     bne   $0d5d
0d55: f8 33     mov   x,$33
0d57: d5 6f 02  mov   $026f+x,a
0d5a: 5f 8a 0d  jmp   $0d8a

0d5d: 8d 08     mov   y,#$08
0d5f: 3f bb 0d  call  $0dbb
0d62: f8 33     mov   x,$33
0d64: f5 50 08  mov   a,$0850+x
0d67: c4 0d     mov   $0d,a
0d69: f5 48 08  mov   a,$0848+x
0d6c: c4 0e     mov   $0e,a
0d6e: ba 35     movw  ya,$35
0d70: 3f 64 0e  call  $0e64
0d73: 8d 07     mov   y,#$07
0d75: f7 0d     mov   a,($0d)+y
0d77: f0 0b     beq   $0d84
0d79: 8d 15     mov   y,#$15
0d7b: f7 0d     mov   a,($0d)+y
0d7d: d0 05     bne   $0d84
0d7f: e8 ff     mov   a,#$ff
0d81: 5f 86 0d  jmp   $0d86

0d84: e8 00     mov   a,#$00
0d86: 8d 15     mov   y,#$15
0d88: d7 0d     mov   ($0d)+y,a
0d8a: e4 34     mov   a,$34
0d8c: 28 02     and   a,#$02
0d8e: 0d        push  psw
0d8f: 8d 02     mov   y,#$02
0d91: f7 07     mov   a,($07)+y
0d93: 8e        pop   psw
0d94: d0 08     bne   $0d9e
0d96: f8 33     mov   x,$33
0d98: d5 77 02  mov   $0277+x,a
0d9b: 5f b4 0d  jmp   $0db4

0d9e: 8d 0a     mov   y,#$0a
0da0: 3f bb 0d  call  $0dbb
0da3: f8 33     mov   x,$33
0da5: f5 40 08  mov   a,$0840+x
0da8: c4 0d     mov   $0d,a
0daa: f5 38 08  mov   a,$0838+x
0dad: c4 0e     mov   $0e,a
0daf: ba 35     movw  ya,$35
0db1: 3f 64 0e  call  $0e64
0db4: 09 4e 45  or    ($45),($4e)
0db7: 09 4e 40  or    ($40),($4e)
0dba: 6f        ret

0dbb: 8f 00 06  mov   $06,#$00		; load current song/sfx/etc. address into stack
0dbe: 1c        asl   a
0dbf: 2b 06     rol   $06
0dc1: 60        clrc
0dc2: 96 e0 17  adc   a,$17e0+y
0dc5: c4 05     mov   $05,a
0dc7: e4 06     mov   a,$06
0dc9: 96 e1 17  adc   a,$17e1+y
0dcc: c4 06     mov   $06,a
0dce: 8d 01     mov   y,#$01
0dd0: f7 05     mov   a,($05)+y
0dd2: c4 11     mov   $11,a
0dd4: dc        dec   y
0dd5: f7 05     mov   a,($05)+y
0dd7: c4 10     mov   $10,a
0dd9: eb 11     mov   y,$11
0ddb: 6f        ret

; pre-defined DSP flags
0ddc: db $6c,$ff			; clear flags
0dde: db $3d,$00			; turn off noise generator (NON)
0de0: db $4d,$00			; turn off echo (EON)
0de2: db $7d,$00			; turn off echo delay time (EDL)
0de4: db $6d,$ff			; pointer to echo memory (ESA)
0de6: db $5d,$18			; set sample directory ($1800)
0de8: db $5c,$00			; set key off (KOFF)
0dea: db $2d,$00			; disable pitch modulation (PMON)
0dec: db $7c,$00			; end of sample flag
0dee: db $2c,$00			; turn off EVOLL
0df0: db $3c,$00			; turn off EVOLR
0df2: db $0c,$4b			; turn on MVOLL
0df4: db $1c,$4b			; turn on MVOLR
0df6: db $ff

0df7: 8d 00     mov   y,#$00
0df9: f6 dc 0d  mov   a,$0ddc+y		; set DSP flags from table
0dfc: 68 ff     cmp   a,#$ff
0dfe: f0 0b     beq   $0e0b
0e00: c4 f2     mov   $f2,a
0e02: fc        inc   y
0e03: f6 dc 0d  mov   a,$0ddc+y
0e06: c4 f3     mov   $f3,a
0e08: fc        inc   y
0e09: d0 ee     bne   $0df9
0e0b: cd 70     mov   x,#$70
0e0d: e8 00     mov   a,#$00
0e0f: d4 04     mov   $04+x,a
0e11: d4 07     mov   $07+x,a
0e13: d4 03     mov   $03+x,a
0e15: d4 02     mov   $02+x,a
0e17: e8 00     mov   a,#$00
0e19: d4 05     mov   $05+x,a
0e1b: 7d        mov   a,x
0e1c: 80        setc
0e1d: a8 10     sbc   a,#$10
0e1f: 5d        mov   x,a
0e20: 10 eb     bpl   $0e0d
0e22: e8 02     mov   a,#$02
0e24: cd 07     mov   x,#$07
0e26: 3f 4b 0e  call  $0e4b
0e29: fd        mov   y,a
0e2a: d6 00 00  mov   $0000+y,a
0e2d: fc        inc   y
0e2e: ad f0     cmp   y,#$f0
0e30: 90 f8     bcc   $0e2a
0e32: 9c        dec   a
0e33: c4 41     mov   $41,a
0e35: c4 43     mov   $43,a
0e37: c4 48     mov   $48,a
0e39: c4 42     mov   $42,a
0e3b: c4 47     mov   $47,a
0e3d: 8f 4b 16  mov   $16,#$4b
0e40: 6f        ret

0e41: e5 e1 17  mov   a,$17e1
0e44: 8f 6d f2  mov   $f2,#$6d
0e47: c4 f3     mov   $f3,a
0e49: cd 00     mov   x,#$00
0e4b: c5 55 0e  mov   $0e55,a
0e4e: e8 00     mov   a,#$00
0e50: c5 54 0e  mov   $0e54,a
0e53: c5 00 00  mov   $0000,a
0e56: ac 54 0e  inc   $0e54
0e59: d0 f8     bne   $0e53
0e5b: ac 55 0e  inc   $0e55
0e5e: 1e 55 0e  cmp   x,$0e55
0e61: d0 f0     bne   $0e53
0e63: 6f        ret

0e64: da 27     movw  $27,ya
0e66: 8d 07     mov   y,#$07
0e68: f7 10     mov   a,($10)+y		; get amplitude table
0e6a: d7 0d     mov   ($0d)+y,a
0e6c: dc        dec   y
0e6d: 10 f9     bpl   $0e68
0e6f: e4 10     mov   a,$10
0e71: 60        clrc
0e72: 88 08     adc   a,#$08
0e74: 8d 08     mov   y,#$08
0e76: d7 0d     mov   ($0d)+y,a
0e78: e4 11     mov   a,$11
0e7a: 88 00     adc   a,#$00
0e7c: fc        inc   y
0e7d: d7 0d     mov   ($0d)+y,a
0e7f: 8d 03     mov   y,#$03
0e81: f7 0d     mov   a,($0d)+y
0e83: 5d        mov   x,a
0e84: 8d 02     mov   y,#$02
0e86: f7 0d     mov   a,($0d)+y
0e88: fd        mov   y,a
0e89: 7d        mov   a,x
0e8a: cf        mul   ya
0e8b: da 2b     movw  $2b,ya
0e8d: ba 27     movw  ya,$27
0e8f: 9a 2b     subw  ya,$2b
0e91: b0 03     bcs   $0e96
0e93: e8 00     mov   a,#$00
0e95: fd        mov   y,a
0e96: cb 2c     mov   $2c,y
0e98: 8d 0d     mov   y,#$0d
0e9a: d7 0d     mov   ($0d)+y,a
0e9c: fc        inc   y
0e9d: e4 2c     mov   a,$2c
0e9f: d7 0d     mov   ($0d)+y,a
0ea1: 8d 03     mov   y,#$03
0ea3: f7 0d     mov   a,($0d)+y
0ea5: bc        inc   a
0ea6: 8d 0f     mov   y,#$0f
0ea8: d7 0d     mov   ($0d)+y,a
0eaa: 68 03     cmp   a,#$03
0eac: b0 06     bcs   $0eb4
0eae: 8d 04     mov   y,#$04
0eb0: e8 00     mov   a,#$00
0eb2: d7 0d     mov   ($0d)+y,a
0eb4: 8d 08     mov   y,#$08
0eb6: f7 0d     mov   a,($0d)+y
0eb8: 8d 0a     mov   y,#$0a
0eba: d7 0d     mov   ($0d)+y,a
0ebc: 8d 09     mov   y,#$09
0ebe: f7 0d     mov   a,($0d)+y
0ec0: 8d 0b     mov   y,#$0b
0ec2: d7 0d     mov   ($0d)+y,a
0ec4: e8 01     mov   a,#$01
0ec6: 8d 14     mov   y,#$14
0ec8: d7 0d     mov   ($0d)+y,a
0eca: 9c        dec   a
0ecb: 8d 0c     mov   y,#$0c
0ecd: d7 0d     mov   ($0d)+y,a
0ecf: 8d 12     mov   y,#$12
0ed1: d7 0d     mov   ($0d)+y,a
0ed3: fc        inc   y
0ed4: d7 0d     mov   ($0d)+y,a
0ed6: c4 20     mov   $20,a
0ed8: 5f 89 0f  jmp   $0f89

0edb: 8d 14     mov   y,#$14
0edd: f7 0d     mov   a,($0d)+y
0edf: f0 39     beq   $0f1a
0ee1: 8d 04     mov   y,#$04
0ee3: f7 0d     mov   a,($0d)+y
0ee5: c4 20     mov   $20,a
0ee7: 8d 0f     mov   y,#$0f
0ee9: f7 0d     mov   a,($0d)+y
0eeb: c4 21     mov   $21,a
0eed: f0 03     beq   $0ef2
0eef: 9c        dec   a
0ef0: d0 06     bne   $0ef8
0ef2: 8d 03     mov   y,#$03
0ef4: f7 0d     mov   a,($0d)+y
0ef6: 8d 0f     mov   y,#$0f
0ef8: d7 0d     mov   ($0d)+y,a
0efa: 78 02 21  cmp   $21,#$02
0efd: 90 03     bcc   $0f02
0eff: 5f 89 0f  jmp   $0f89

0f02: 8d 0c     mov   y,#$0c
0f04: f7 0d     mov   a,($0d)+y
0f06: bc        inc   a
0f07: 8d 05     mov   y,#$05
0f09: 77 0d     cmp   a,($0d)+y
0f0b: 90 17     bcc   $0f24
0f0d: 9c        dec   a
0f0e: 8d 01     mov   y,#$01
0f10: 77 0d     cmp   a,($0d)+y
0f12: f0 6a     beq   $0f7e
0f14: e8 00     mov   a,#$00
0f16: 8d 14     mov   y,#$14
0f18: d7 0d     mov   ($0d)+y,a
0f1a: 8d 11     mov   y,#$11
0f1c: f7 0d     mov   a,($0d)+y
0f1e: 2d        push  a
0f1f: dc        dec   y
0f20: f7 0d     mov   a,($0d)+y
0f22: ee        pop   y
0f23: 6f        ret

0f24: 8d 0c     mov   y,#$0c
0f26: d7 0d     mov   ($0d)+y,a
0f28: 8d 06     mov   y,#$06
0f2a: f7 0d     mov   a,($0d)+y
0f2c: 8d 0a     mov   y,#$0a
0f2e: 60        clrc
0f2f: 97 0d     adc   a,($0d)+y
0f31: d7 0d     mov   ($0d)+y,a
0f33: 90 07     bcc   $0f3c
0f35: fc        inc   y
0f36: f7 0d     mov   a,($0d)+y
0f38: 88 00     adc   a,#$00
0f3a: d7 0d     mov   ($0d)+y,a
0f3c: 8d 0e     mov   y,#$0e
0f3e: f7 0d     mov   a,($0d)+y
0f40: 5d        mov   x,a
0f41: dc        dec   y
0f42: f7 0d     mov   a,($0d)+y
0f44: d0 04     bne   $0f4a
0f46: c8 00     cmp   x,#$00
0f48: f0 3f     beq   $0f89
0f4a: 8d 03     mov   y,#$03
0f4c: 80        setc
0f4d: b7 0d     sbc   a,($0d)+y
0f4f: 8d 0d     mov   y,#$0d
0f51: d7 0d     mov   ($0d)+y,a
0f53: c4 2b     mov   $2b,a
0f55: 7d        mov   a,x
0f56: a8 00     sbc   a,#$00
0f58: b0 06     bcs   $0f60
0f5a: e8 00     mov   a,#$00
0f5c: d7 0d     mov   ($0d)+y,a
0f5e: c4 2b     mov   $2b,a
0f60: fc        inc   y
0f61: d7 0d     mov   ($0d)+y,a
0f63: 04 2b     or    a,$2b
0f65: d0 0b     bne   $0f72
0f67: 8d 01     mov   y,#$01
0f69: f7 0d     mov   a,($0d)+y
0f6b: 68 ff     cmp   a,#$ff
0f6d: f0 03     beq   $0f72
0f6f: 5f 82 0f  jmp   $0f82

0f72: 8d 0c     mov   y,#$0c
0f74: f7 0d     mov   a,($0d)+y
0f76: 8d 01     mov   y,#$01
0f78: 77 0d     cmp   a,($0d)+y
0f7a: 90 0d     bcc   $0f89
0f7c: f0 0b     beq   $0f89
0f7e: 8d 00     mov   y,#$00
0f80: f7 0d     mov   a,($0d)+y
0f82: 8d 0c     mov   y,#$0c
0f84: d7 0d     mov   ($0d)+y,a
0f86: 3f 2c 10  call  $102c
0f89: f8 20     mov   x,$20
0f8b: f0 14     beq   $0fa1
0f8d: 78 03 21  cmp   $21,#$03
0f90: 90 0f     bcc   $0fa1
0f92: 8d 13     mov   y,#$13
0f94: cd 03     mov   x,#$03
0f96: f7 0d     mov   a,($0d)+y
0f98: d4 1c     mov   $1c+x,a
0f9a: dc        dec   y
0f9b: 1d        dec   x
0f9c: 10 f8     bpl   $0f96
0f9e: 5f 09 10  jmp   $1009

0fa1: 3f 1b 10  call  $101b
0fa4: 8d 06     mov   y,#$06
0fa6: f7 0d     mov   a,($0d)+y
0fa8: 5d        mov   x,a
0fa9: 8d 00     mov   y,#$00
0fab: f7 12     mov   a,($12)+y
0fad: c8 01     cmp   x,#$01
0faf: f0 06     beq   $0fb7
0fb1: 5d        mov   x,a
0fb2: fc        inc   y
0fb3: f7 12     mov   a,($12)+y
0fb5: fd        mov   y,a
0fb6: 7d        mov   a,x
0fb7: f8 20     mov   x,$20
0fb9: f0 52     beq   $100d
0fbb: 78 02 21  cmp   $21,#$02
0fbe: f0 4d     beq   $100d
0fc0: da 27     movw  $27,ya
0fc2: 8d 11     mov   y,#$11
0fc4: f7 0d     mov   a,($0d)+y
0fc6: c4 1d     mov   $1d,a
0fc8: dc        dec   y
0fc9: f7 0d     mov   a,($0d)+y
0fcb: c4 1c     mov   $1c,a
0fcd: eb 1d     mov   y,$1d
0fcf: 80        setc
0fd0: 9a 27     subw  ya,$27
0fd2: da 1e     movw  $1e,ya
0fd4: e8 00     mov   a,#$00
0fd6: 3c        rol   a
0fd7: c4 27     mov   $27,a
0fd9: d0 08     bne   $0fe3
0fdb: 58 ff 1e  eor   $1e,#$ff
0fde: 58 ff 1f  eor   $1f,#$ff
0fe1: 3a 1e     incw  $1e
0fe3: 8d 03     mov   y,#$03
0fe5: f7 0d     mov   a,($0d)+y
0fe7: 5d        mov   x,a
0fe8: ba 1e     movw  ya,$1e
0fea: 3f 47 10  call  $1047
0fed: c4 1e     mov   $1e,a
0fef: d8 1f     mov   $1f,x
0ff1: 78 01 27  cmp   $27,#$01
0ff4: d0 08     bne   $0ffe
0ff6: 58 ff 1e  eor   $1e,#$ff
0ff9: 58 ff 1f  eor   $1f,#$ff
0ffc: 3a 1e     incw  $1e
0ffe: 8d 12     mov   y,#$12
1000: e4 1e     mov   a,$1e
1002: d7 0d     mov   ($0d)+y,a
1004: fc        inc   y
1005: e4 1f     mov   a,$1f
1007: d7 0d     mov   ($0d)+y,a
1009: ba 1c     movw  ya,$1c
100b: 7a 1e     addw  ya,$1e
100d: da 1c     movw  $1c,ya
100f: 8d 10     mov   y,#$10
1011: d7 0d     mov   ($0d)+y,a
1013: e4 1d     mov   a,$1d
1015: fc        inc   y
1016: d7 0d     mov   ($0d)+y,a
1018: ba 1c     movw  ya,$1c
101a: 6f        ret

101b: 8d 0a     mov   y,#$0a
101d: 5f 22 10  jmp   $1022

1020: 8d 08     mov   y,#$08
1022: f7 0d     mov   a,($0d)+y
1024: c4 12     mov   $12,a
1026: fc        inc   y
1027: f7 0d     mov   a,($0d)+y
1029: c4 13     mov   $13,a
102b: 6f        ret

102c: 2d        push  a
102d: 3f 20 10  call  $1020
1030: 8d 06     mov   y,#$06
1032: f7 0d     mov   a,($0d)+y
1034: fd        mov   y,a
1035: ae        pop   a
1036: cf        mul   ya
1037: 7a 12     addw  ya,$12
1039: da 12     movw  $12,ya
103b: 8d 0a     mov   y,#$0a
103d: e4 12     mov   a,$12
103f: d7 0d     mov   ($0d)+y,a
1041: fc        inc   y
1042: e4 13     mov   a,$13
1044: d7 0d     mov   ($0d)+y,a
1046: 6f        ret

1047: c8 00     cmp   x,#$00
1049: d0 05     bne   $1050
104b: e8 ff     mov   a,#$ff
104d: fd        mov   y,a
104e: 5d        mov   x,a
104f: 6f        ret

1050: cb 24     mov   $24,y
1052: 3e 24     cmp   x,$24
1054: f0 02     beq   $1058
1056: b0 19     bcs   $1071
1058: c4 23     mov   $23,a
105a: dd        mov   a,y
105b: 8d 00     mov   y,#$00
105d: 9e        div   ya,x
105e: c4 25     mov   $25,a
1060: fd        mov   y,a
1061: 7d        mov   a,x
1062: cf        mul   ya
1063: c4 26     mov   $26,a
1065: e4 24     mov   a,$24
1067: 80        setc
1068: a4 26     sbc   a,$26
106a: fd        mov   y,a
106b: e4 23     mov   a,$23
106d: 9e        div   ya,x
106e: f8 25     mov   x,$25
1070: 6f        ret

1071: 9e        div   ya,x
1072: cd 00     mov   x,#$00
1074: 6f        ret

1075: f5 7f 02  mov   a,$027f+x
1078: 8d 04     mov   y,#$04
107a: cf        mul   ya
107b: 7a 0b     addw  ya,$0b
107d: da 03     movw  $03,ya
107f: 8d 01     mov   y,#$01
1081: f7 03     mov   a,($03)+y
1083: c4 2a     mov   $2a,a
1085: dc        dec   y
1086: f7 03     mov   a,($03)+y
1088: 80        setc
1089: a8 03     sbc   a,#$03
108b: c4 29     mov   $29,a
108d: b8 00 2a  sbc   $2a,#$00
1090: f7 29     mov   a,($29)+y
1092: c4 49     mov   $49,a
1094: fc        inc   y
1095: f7 29     mov   a,($29)+y
1097: c4 4a     mov   $4a,a
1099: fc        inc   y
109a: f7 29     mov   a,($29)+y
109c: c4 4b     mov   $4b,a
109e: 6f        ret

109f: ad 04     cmp   y,#$04
10a1: 90 06     bcc   $10a9
10a3: d0 0a     bne   $10af
10a5: 68 b0     cmp   a,#$b0
10a7: b0 06     bcs   $10af
10a9: 8f ff 4c  mov   $4c,#$ff
10ac: 5f c5 10  jmp   $10c5

10af: ad 80     cmp   y,#$80
10b1: 90 0f     bcc   $10c2
10b3: 8f 00 4c  mov   $4c,#$00
10b6: 60        clrc				; convert note to pitch from table
10b7: 88 20     adc   a,#$20
10b9: 5d        mov   x,a
10ba: dd        mov   a,y
10bb: 88 df     adc   a,#$df
10bd: fd        mov   y,a
10be: 7d        mov   a,x
10bf: 5f c5 10  jmp   $10c5

10c2: 8f 04 4c  mov   $4c,#$04
10c5: cd f0     mov   x,#$f0
10c7: 9e        div   ya,x
10c8: 78 ff 4c  cmp   $4c,#$ff
10cb: d0 02     bne   $10cf
10cd: c4 4c     mov   $4c,a
10cf: f6 ea 10  mov   a,$10ea+y
10d2: c4 27     mov   $27,a
10d4: f6 da 11  mov   a,$11da+y
10d7: c4 28     mov   $28,a
10d9: e8 04     mov   a,#$04
10db: 80        setc
10dc: a4 4c     sbc   a,$4c
10de: f0 07     beq   $10e7
10e0: fd        mov   y,a
10e1: 4b 28     lsr   $28
10e3: 6b 27     ror   $27
10e5: fe fa     dbnz  y,$10e1
10e7: ba 27     movw  ya,$27
10e9: 6f        ret

; pitch table (low byte)
10ea: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
11da: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

; note interval frequencies (low byte)
12ca: db $30,$20,$ac,$10,$24,$38,$4c,$60,$74,$88,$9c,$b0,$c4,$d8,$ec,$00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc,$f0,$54,$e0,$d0,$c0

; note interval frequencies (high byte)
12ea: db $fd,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03

130a: e4 5c     mov   a,$5c
130c: d0 0f     bne   $131d
130e: e5 4f 05  mov   a,$054f
1311: f0 22     beq   $1335
1313: e8 00     mov   a,#$00
1315: c5 4f 05  mov   $054f,a
1318: 3f 0a 17  call  $170a
131b: 2f ed     bra   $130a
131d: e4 5b     mov   a,$5b
131f: 9c        dec   a
1320: c4 5d     mov   $5d,a
1322: 1c        asl   a
1323: c4 5e     mov   $5e,a
1325: f8 5d     mov   x,$5d
1327: f4 61     mov   a,$61+x
1329: 5d        mov   x,a
132a: 1f 98 17  jmp   ($1798+x)

132d: 8b 5e     dec   $5e
132f: 8b 5e     dec   $5e
1331: 8b 5d     dec   $5d
1333: 10 f0     bpl   $1325
1335: 6f        ret

1336: f8 5d     mov   x,$5d
1338: 9b 9b     dec   $9b+x
133a: d0 f1     bne   $132d
133c: f5 60 05  mov   a,$0560+x
133f: d4 9b     mov   $9b+x,a
1341: 9b a3     dec   $a3+x
1343: d0 e8     bne   $132d
1345: f4 61     mov   a,$61+x
1347: 68 02     cmp   a,#$02
1349: d0 07     bne   $1352
134b: e8 06     mov   a,#$06
134d: d4 61     mov   $61+x,a
134f: 5f 63 13  jmp   $1363

1352: e8 08     mov   a,#$08
1354: d4 61     mov   $61+x,a
1356: 5f 59 15  jmp   $1559

1359: 3f b8 14  call  $14b8
135c: d4 ce     mov   $ce+x,a
135e: 3f b8 14  call  $14b8
1361: d4 cf     mov   $cf+x,a
1363: 3f b8 14  call  $14b8
1366: fd        mov   y,a		; get the current note/command
1367: 28 20     and   a,#$20
1369: c4 5f     mov   $5f,a
136b: dd        mov   a,y
136c: 28 40     and   a,#$40
136e: c4 60     mov   $60,a
1370: f8 5d     mov   x,$5d
1372: d5 88 05  mov   $0588+x,a
1375: ad 80     cmp   y,#$80		; is it a note?
1377: 90 3d     bcc   $13b6
1379: ad f0     cmp   y,#$f0		; is it a special meaning flag?
137b: 90 08     bcc   $1385
137d: dd        mov   a,y		; then it must be a command...
137e: 28 0f     and   a,#$0f		; get command number
1380: 1c        asl   a
1381: 5d        mov   x,a
1382: 1f 3c 15  jmp   ($153c+x)		; jump to command number position

1385: f5 90 05  mov   a,$0590+x		; pitch bend
1388: f0 4c     beq   $13d6
138a: dd        mov   a,y
138b: 28 08     and   a,#$08
138d: 0d        push  psw
138e: dd        mov   a,y
138f: 28 07     and   a,#$07
1391: bc        inc   a
1392: 1c        asl   a
1393: f8 5e     mov   x,$5e
1395: 8e        pop   psw
1396: f0 0d     beq   $13a5
1398: 60        clrc
1399: 94 de     adc   a,$de+x
139b: d4 de     mov   $de+x,a
139d: f4 df     mov   a,$df+x
139f: 88 00     adc   a,#$00
13a1: d4 df     mov   $df+x,a
13a3: 2f 31     bra   $13d6
13a5: c4 27     mov   $27,a
13a7: f4 de     mov   a,$de+x
13a9: 80        setc
13aa: a4 27     sbc   a,$27
13ac: d4 de     mov   $de+x,a
13ae: f4 df     mov   a,$df+x
13b0: a8 00     sbc   a,#$00
13b2: d4 df     mov   $df+x,a
13b4: 2f 20     bra   $13d6
13b6: f5 90 05  mov   a,$0590+x			; play the note (check first)
13b9: f0 1b     beq   $13d6
13bb: dd        mov   a,y
13bc: 28 1f     and   a,#$1f
13be: fd        mov   y,a
13bf: f8 5e     mov   x,$5e
13c1: f4 ce     mov   a,$ce+x
13c3: 60        clrc
13c4: 96 ca 12  adc   a,$12ca+y			; get the relative frequency
13c7: d4 ce     mov   $ce+x,a
13c9: f4 cf     mov   a,$cf+x
13cb: 96 ea 12  adc   a,$12ea+y
13ce: d4 cf     mov   $cf+x,a
13d0: e8 00     mov   a,#$00
13d2: d4 de     mov   $de+x,a
13d4: d4 df     mov   $df+x,a
13d6: 3f b8 14  call  $14b8
13d9: 68 00     cmp   a,#$00
13db: d0 12     bne   $13ef
13dd: f8 5d     mov   x,$5d
13df: f4 61     mov   a,$61+x
13e1: 68 08     cmp   a,#$08
13e3: d0 07     bne   $13ec
13e5: e8 0a     mov   a,#$0a
13e7: d4 61     mov   $61+x,a
13e9: 5f 97 15  jmp   $1597

13ec: 5f 25 13  jmp   $1325

13ef: f8 5d     mov   x,$5d
13f1: d4 a3     mov   $a3+x,a
13f3: fd        mov   y,a
13f4: f5 60 05  mov   a,$0560+x
13f7: d4 9b     mov   $9b+x,a
13f9: cf        mul   ya
13fa: da 35     movw  $35,ya
13fc: 3f 18 15  call  $1518
13ff: f5 98 05  mov   a,$0598+x
1402: 30 18     bmi   $141c
1404: 5d        mov   x,a
1405: f5 06 02  mov   a,$0206+x
1408: f0 0a     beq   $1414
140a: e8 40     mov   a,#$40
140c: 75 27 02  cmp   a,$0227+x
140f: b0 05     bcs   $1416
1411: 5f 2d 13  jmp   $132d

1414: e8 40     mov   a,#$40
1416: d5 27 02  mov   $0227+x,a
1419: 5f 3d 14  jmp   $143d

141c: f5 a0 05  mov   a,$05a0+x
141f: c4 3d     mov   $3d,a
1421: f5 a8 05  mov   a,$05a8+x
1424: 30 04     bmi   $142a
1426: eb 5f     mov   y,$5f
1428: f0 05     beq   $142f
142a: 9c        dec   a
142b: 10 02     bpl   $142f
142d: e8 07     mov   a,#$07
142f: 5d        mov   x,a
1430: f5 fc 07  mov   a,$07fc+x
1433: c4 3f     mov   $3f,a
1435: 8f 40 3e  mov   $3e,#$40
1438: 3f 44 0c  call  $0c44
143b: 30 78     bmi   $14b5
143d: e8 01     mov   a,#$01
143f: d5 06 02  mov   $0206+x,a
1442: d8 ab     mov   $ab,x
1444: 7d        mov   a,x
1445: f8 5d     mov   x,$5d
1447: d5 a8 05  mov   $05a8+x,a
144a: f5 90 05  mov   a,$0590+x
144d: d0 0c     bne   $145b
144f: f8 5e     mov   x,$5e
1451: f4 ce     mov   a,$ce+x
1453: c4 37     mov   $37,a
1455: f4 cf     mov   a,$cf+x
1457: c4 38     mov   $38,a
1459: 2f 25     bra   $1480
145b: f8 5e     mov   x,$5e
145d: f4 ce     mov   a,$ce+x
145f: 60        clrc
1460: 94 be     adc   a,$be+x
1462: fd        mov   y,a
1463: f4 cf     mov   a,$cf+x
1465: 94 bf     adc   a,$bf+x
1467: c4 38     mov   $38,a
1469: dd        mov   a,y
146a: 60        clrc
146b: 94 ae     adc   a,$ae+x
146d: fd        mov   y,a
146e: e4 38     mov   a,$38
1470: 94 af     adc   a,$af+x
1472: c4 38     mov   $38,a
1474: dd        mov   a,y
1475: 60        clrc
1476: 94 de     adc   a,$de+x
1478: c4 37     mov   $37,a
147a: e4 38     mov   a,$38
147c: 94 df     adc   a,$df+x
147e: c4 38     mov   $38,a
1480: eb 5f     mov   y,$5f
1482: d0 0f     bne   $1493
1484: 0b ab     asl   $ab
1486: f8 ab     mov   x,$ab
1488: d5 48 02  mov   $0248+x,a
148b: e4 37     mov   a,$37
148d: d5 47 02  mov   $0247+x,a
1490: 5f 2d 13  jmp   $132d

1493: f8 5d     mov   x,$5d
1495: f5 68 05  mov   a,$0568+x
1498: 60        clrc
1499: 95 70 05  adc   a,$0570+x
149c: 10 02     bpl   $14a0
149e: e8 7f     mov   a,#$7f
14a0: c4 ac     mov   $ac,a
14a2: e4 60     mov   a,$60
14a4: f0 02     beq   $14a8
14a6: e8 08     mov   a,#$08
14a8: 04 5d     or    a,$5d
14aa: 5d        mov   x,a
14ab: f5 78 05  mov   a,$0578+x
14ae: f8 ab     mov   x,$ab
14b0: eb ac     mov   y,$ac
14b2: 3f 6e 0c  call  $0c6e
14b5: 5f 2d 13  jmp   $132d

; calculate delta expression
14b8: f8 5e     mov   x,$5e
14ba: e7 8b     mov   a,($8b+x)
14bc: bb 8b     inc   $8b+x
14be: d0 02     bne   $14c2
14c0: bb 8c     inc   $8c+x
14c2: 6f        ret

; vcmd f0 - end of sequence
14c3: f8 5d     mov   x,$5d
14c5: e8 0a     mov   a,#$0a
14c7: d4 61     mov   $61+x,a
14c9: 5f 97 15  jmp   $1597

; vcmd f1 - melody delta expression
14cc: 3f b8 14  call  $14b8
14cf: c4 ad     mov   $ad,a
14d1: f8 5d     mov   x,$5d
14d3: f5 70 05  mov   a,$0570+x
14d6: 3f 28 15  call  $1528
14d9: d5 70 05  mov   $0570+x,a
14dc: 5f 63 13  jmp   $1363

; vcmd f2 - melody absolute expression
14df: 3f b8 14  call  $14b8
14e2: f8 5d     mov   x,$5d
14e4: d5 70 05  mov   $0570+x,a
14e7: 5f 63 13  jmp   $1363

; vcmd f3 - mute
14ea: f8 5d     mov   x,$5d
14ec: f5 a8 05  mov   a,$05a8+x
14ef: 30 15     bmi   $1506
14f1: fd        mov   y,a
14f2: f6 06 02  mov   a,$0206+y
14f5: 68 80     cmp   a,#$80
14f7: f0 0d     beq   $1506
14f9: e8 00     mov   a,#$00
14fb: d6 67 02  mov   $0267+y,a
14fe: f6 dc 07  mov   a,$07dc+y
1501: c4 f2     mov   $f2,a
1503: 8f 9f f3  mov   $f3,#$9f

; vcmd f4 - rest
1506: 3f b8 14  call  $14b8
1509: f8 5d     mov   x,$5d
150b: d4 a3     mov   $a3+x,a
150d: f5 60 05  mov   a,$0560+x
1510: d4 9b     mov   $9b+x,a
1512: 3f 18 15  call  $1518
1515: 5f 2d 13  jmp   $132d
1518: f4 61     mov   a,$61+x
151a: 68 06     cmp   a,#$06
151c: d0 05     bne   $1523
151e: e8 02     mov   a,#$02
1520: 5f 25 15  jmp   $1525

1523: e8 04     mov   a,#$04
1525: d4 61     mov   $61+x,a
1527: 6f        ret

; add the delta to the total
1528: 78 80 ad  cmp   $ad,#$80
152b: 90 08     bcc   $1535
152d: 60        clrc
152e: 84 ad     adc   a,$ad
1530: 10 09     bpl   $153b
1532: e8 00     mov   a,#$00
1534: 6f        ret

1535: 84 ad     adc   a,$ad
1537: 10 02     bpl   $153b
1539: e8 7f     mov   a,#$7f
153b: 6f        ret

; vcmd table (f0-f4)
153c: dw $14c3		; f0 - end of sequence
153e: dw $14cc		; f1 - melody delta expression
1540: dw $14df		; f2 - melody absolute expression
1542: dw $14ea		; f3 - mute
1544: dw $1506		; f4 - rest

1546: 3f b8 14  call  $14b8
1549: f8 5d     mov   x,$5d
154b: d5 b0 05  mov   $05b0+x,a
154e: e8 00     mov   a,#$00
1550: d4 de     mov   $de+x,a
1552: d4 df     mov   $df+x,a
1554: f8 5d     mov   x,$5d
1556: d5 88 05  mov   $0588+x,a
1559: f8 5d     mov   x,$5d
155b: f5 90 05  mov   a,$0590+x
155e: f0 19     beq   $1579
1560: f5 b0 05  mov   a,$05b0+x
1563: 8d 12     mov   y,#$12
1565: 3f bb 0d  call  $0dbb
1568: 3f 86 15  call  $1586
156b: 28 0e     and   a,#$0e
156d: fd        mov   y,a
156e: f8 5e     mov   x,$5e
1570: f7 10     mov   a,($10)+y
1572: d4 ce     mov   $ce+x,a
1574: fc        inc   y
1575: f7 10     mov   a,($10)+y
1577: d4 cf     mov   $cf+x,a
1579: 8f 20 5f  mov   $5f,#$20
157c: f8 5d     mov   x,$5d
157e: f5 88 05  mov   a,$0588+x
1581: c4 60     mov   $60,a
1583: 5f d6 13  jmp   $13d6

1586: e4 00     mov   a,$00		; fetch a random number (RNG)
1588: 1c        asl   a
1589: 44 00     eor   a,$00
158b: 1c        asl   a
158c: 1c        asl   a
158d: 1c        asl   a
158e: 2b 02     rol   $02
1590: 2b 01     rol   $01
1592: 2b 00     rol   $00
1594: e4 02     mov   a,$02
1596: 6f        ret

1597: 3f 9e 15  call  $159e		; get current pattern command
159a: 5d        mov   x,a
159b: 1f 6f 16  jmp   ($166f+x)

159e: f8 5e     mov   x,$5e		; get 1 byte
15a0: e7 7b     mov   a,($7b+x)
15a2: bb 7b     inc   $7b+x
15a4: d0 02     bne   $15a8
15a6: bb 7c     inc   $7c+x
15a8: 6f        ret

; pattern command 00/16 - end of pattern
15a9: f8 5d     mov   x,$5d
15ab: e8 0c     mov   a,#$0c
15ad: d4 61     mov   $61+x,a
15af: 5f 87 16  jmp   $1687

; pattern command 14
15b2: 8d 00     mov   y,#$00
15b4: f8 5e     mov   x,$5e
15b6: 3f a0 15  call  $15a0
15b9: ad 10     cmp   y,#$10
15bb: b0 04     bcs   $15c1
15bd: d6 3f 05  mov   $053f+y,a
15c0: fc        inc   y
15c1: 3f a0 15  call  $15a0
15c4: 68 14     cmp   a,#$14
15c6: f0 ee     beq   $15b6
15c8: 68 16     cmp   a,#$16
15ca: d0 dd     bne   $15a9
15cc: dd        mov   a,y
15cd: 5d        mov   x,a
15ce: 3f 86 15  call  $1586
15d1: 8d 00     mov   y,#$00
15d3: 9e        div   ya,x
15d4: f6 3f 05  mov   a,$053f+y
15d7: 8d 10     mov   y,#$10
15d9: 3f 62 16  call  $1662
15dc: 2f 05     bra   $15e3

; pattern command 02 - play melody
15de: 8d 10     mov   y,#$10
15e0: 3f 5d 16  call  $165d
15e3: e8 06     mov   a,#$06
15e5: d4 61     mov   $61+x,a
15e7: 5f 59 13  jmp   $1359

; pattern command 04
15ea: 8d 14     mov   y,#$14
15ec: 3f 5d 16  call  $165d
15ef: e8 08     mov   a,#$08
15f1: d4 61     mov   $61+x,a
15f3: 5f 46 15  jmp   $1546

; pattern command 06 - set channel tuning
15f6: 3f 9e 15  call  $159e		; get 1 byte
15f9: eb 5e     mov   y,$5e
15fb: d6 be 00  mov   $00be+y,a
15fe: 3f a0 15  call  $15a0
1601: d6 bf 00  mov   $00bf+y,a
1604: 5f 97 15  jmp   $1597

; pattern command 08 - set instrument
1607: 3f 9e 15  call  $159e		; get 1 byte
160a: f8 5d     mov   x,$5d
160c: d5 78 05  mov   $0578+x,a
160f: 5f 97 15  jmp   $1597

; pattern command 0a - set pitch envelope
1612: 3f 9e 15  call  $159e		; get 1 byte
1615: f8 5d     mov   x,$5d
1617: d5 80 05  mov   $0580+x,a
161a: 5f 97 15  jmp   $1597

; pattern command 10 - set channel gain (relative?)
161d: 3f 9e 15  call  $159e		; get 1 byte
1620: c4 ad     mov   $ad,a
1622: f8 5d     mov   x,$5d
1624: f5 68 05  mov   a,$0568+x
1627: 3f 28 15  call  $1528
162a: d5 68 05  mov   $0568+x,a
162d: 5f 97 15  jmp   $1597

; pattern command 12 - set channel gain (absolute)
1630: 3f 9e 15  call  $159e		; get 1 byte
1633: f8 5d     mov   x,$5d
1635: d5 68 05  mov   $0568+x,a
1638: 5f 97 15  jmp   $1597

; pattern command 0c
163b: e8 ff     mov   a,#$ff
163d: f8 5d     mov   x,$5d
163f: d5 90 05  mov   $0590+x,a
1642: 5f 97 15  jmp   $1597

; pattern command 0e - (2 bytes)
1645: 3f 9e 15  call  $159e		; get 1 byte
1648: eb 5e     mov   y,$5e
164a: d6 ce 00  mov   $00ce+y,a
164d: 3f a0 15  call  $15a0		; get another byte
1650: d6 cf 00  mov   $00cf+y,a
1653: e8 00     mov   a,#$00
1655: f8 5d     mov   x,$5d
1657: d5 90 05  mov   $0590+x,a
165a: 5f 97 15  jmp   $1597

; get the next byte and its corresponding phrase pointer
165d: 6d        push  y
165e: 3f 9e 15  call  $159e
1661: ee        pop   y
1662: 3f bb 0d  call  $0dbb
1665: f8 5e     mov   x,$5e
1667: d4 8b     mov   $8b+x,a
1669: dd        mov   a,y
166a: d4 8c     mov   $8c+x,a
166c: f8 5d     mov   x,$5d
166e: 6f        ret

; pattern command table (00-17)
166f: dw $15a9		; 00 - end of pattern
1671: dw $15de		; 02 - play melody
1673: dw $15ea		; 04
1675: dw $15f6		; 06 - set channel tuning
1677: dw $1607		; 08 - set instrument
1679: dw $1612		; 0a - set pitch envelope
167b: dw $163b		; 0c
167d: dw $1645		; 0e - (2 bytes)
167f: dw $161d		; 10 - set channel gain (relative)?
1681: dw $1630		; 12 - set channel gain (absolute)
1683: dw $15b2		; 14
1685: dw $15a9		; 16 - end of pattern (same as 00)

; melody command 00 - end of melody
1687: 3f 8e 16  call  $168e
168a: 5d        mov   x,a
168b: 1f fe 16  jmp   ($16fe+x)

168e: f8 5e     mov   x,$5e
1690: e7 6b     mov   a,($6b+x)
1692: bb 6b     inc   $6b+x
1694: d0 02     bne   $1698
1696: bb 6c     inc   $6c+x
1698: 6f        ret

; melody command 02 - go to loop
1699: f8 5d     mov   x,$5d
169b: e8 00     mov   a,#$00
169d: d4 61     mov   $61+x,a
169f: 8b 5c     dec   $5c
16a1: 5f 2d 13  jmp   $132d

; melody command 04
16a4: f8 5e     mov   x,$5e
16a6: f5 50 05  mov   a,$0550+x
16a9: d4 6b     mov   $6b+x,a
16ab: f5 51 05  mov   a,$0551+x
16ae: d4 6c     mov   $6c+x,a
16b0: 5f 87 16  jmp   $1687

; melody command 06 - toggle channel mute
16b3: 3f 8e 16  call  $168e
16b6: f8 5d     mov   x,$5d
16b8: d5 60 05  mov   $0560+x,a
16bb: 5f 87 16  jmp   $1687

; melody command 08 - play phrase
16be: 3f 8e 16  call  $168e
16c1: eb 5e     mov   y,$5e
16c3: d6 ae 00  mov   $00ae+y,a
16c6: 3f 90 16  call  $1690
16c9: d6 af 00  mov   $00af+y,a
16cc: 5f 87 16  jmp   $1687

; melody command 0a - set channel number
16cf: 3f 8e 16  call  $168e
16d2: 8d 16     mov   y,#$16
16d4: 3f bb 0d  call  $0dbb
16d7: f8 5e     mov   x,$5e
16d9: d4 7b     mov   $7b+x,a
16db: dd        mov   a,y
16dc: d4 7c     mov   $7c+x,a
16de: f8 5d     mov   x,$5d
16e0: e8 0a     mov   a,#$0a
16e2: d4 61     mov   $61+x,a
16e4: 5f 97 15  jmp   $1597

; melody command 0c
16e7: 3f 8e 16  call  $168e
16ea: f8 5d     mov   x,$5d
16ec: d5 98 05  mov   $0598+x,a
16ef: 68 ff     cmp   a,#$ff
16f1: d0 08     bne   $16fb
16f3: 3f 8e 16  call  $168e
16f6: f8 5d     mov   x,$5d
16f8: d5 a0 05  mov   $05a0+x,a
16fb: 5f 87 16  jmp   $1687

; melody command table (00-0c)
16fc: dw $1687		; 00 - end of melody	
16fe: dw $1699		; 02 - go to loop
1700: dw $16a4		; 04
1702: dw $16b3		; 06 - toggle channel mute
1704: dw $16be		; 08 - play phrase
1706: dw $16cf		; 0a - set channel number
1708: dw $16e7		; 0c

170a: 8d 93     mov   y,#$93
170c: f9 5a     mov   x,$5a+y
170e: f6 b7 05  mov   a,$05b7+y
1711: d6 5a 00  mov   $005a+y,a
1714: 7d        mov   a,x
1715: d6 b7 05  mov   $05b7+y,a
1718: fe f2     dbnz  y,$170c
171a: 8d 69     mov   y,#$69
171c: f6 4e 05  mov   a,$054e+y
171f: 5d        mov   x,a
1720: f6 4a 06  mov   a,$064a+y
1723: d6 4e 05  mov   $054e+y,a
1726: 7d        mov   a,x
1727: d6 4a 06  mov   $064a+y,a
172a: fe f0     dbnz  y,$171c
172c: 6f        ret

172d: 3f 36 17  call  $1736
1730: e8 01     mov   a,#$01
1732: c5 4f 05  mov   $054f,a
1735: 6f        ret

1736: 2d        push  a				; start song
1737: 3f 0a 17  call  $170a			; stop the current song
173a: ae        pop   a
173b: 8d 1a     mov   y,#$1a			; find the start of the song struct
173d: 3f bb 0d  call  $0dbb
1740: da 69     movw  $69,ya
1742: 8d 00     mov   y,#$00			; get number of channels
1744: f7 69     mov   a,($69)+y
1746: c4 5b     mov   $5b,a			; save number of channels in total and current
1748: c4 5c     mov   $5c,a
174a: f0 4b     beq   $1797			; if 0, then return
174c: 8f 00 5d  mov   $5d,#$00
174f: 8f 00 5e  mov   $5e,#$00
1752: fc        inc   y
1753: f7 69     mov   a,($69)+y
1755: 6d        push  y
1756: 8d 18     mov   y,#$18
1758: 3f bb 0d  call  $0dbb
175b: f8 5e     mov   x,$5e
175d: d5 50 05  mov   $0550+x,a
1760: d4 6b     mov   $6b+x,a
1762: dd        mov   a,y
1763: ee        pop   y
1764: d5 51 05  mov   $0551+x,a
1767: d4 6c     mov   $6c+x,a
1769: e8 00     mov   a,#$00
176b: d4 ae     mov   $ae+x,a
176d: d4 af     mov   $af+x,a
176f: d4 be     mov   $be+x,a
1771: d4 bf     mov   $bf+x,a
1773: f8 5d     mov   x,$5d
1775: e8 0c     mov   a,#$0c
1777: d4 61     mov   $61+x,a
1779: e8 ff     mov   a,#$ff
177b: d5 90 05  mov   $0590+x,a
177e: d5 a8 05  mov   $05a8+x,a
1781: e8 00     mov   a,#$00
1783: d5 68 05  mov   $0568+x,a
1786: d5 70 05  mov   $0570+x,a
1789: d5 88 05  mov   $0588+x,a
178c: ab 5e     inc   $5e
178e: ab 5e     inc   $5e
1790: 3d        inc   x
1791: d8 5d     mov   $5d,x
1793: 3e 5b     cmp   x,$5b
1795: 90 bb     bcc   $1752
1797: 6f        ret

1798: dw $132d
179a: dw $1336
179c: dw $1336
179e: dw $1363
17a0: dw $1559
17a2: dw $1597
17a4: dw $1687
17a6: dw $0b5d
17a8: dw $0bd6
17aa: dw $173b
17ac: dw $1736
17ae: dw $172d
17b0: dw $170a
17b2: dw $0792
17b4: dw $0b7d
17b6: dw $0b79
17b8: dw $0b73
17ba: dw $0b70
17bc: dw $0b6a
17be: dw $0b8c
17c0: dw $0b97