0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f 6c f2  mov   $f2,#$6c		; reset DSP flags
0707: d8 f3     mov   $f3,x
0709: 8f b0 f1  mov   $f1,#$b0		; clear input ports APUI00-APUI04
070c: 8f 20 fa  mov   $fa,#$20
070f: 8f 81 f1  mov   $f1,#$81		; toggle timer 2
0712: 3f d3 0d  call  $0dd3		; clear/reset routine
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
072e: 3f 96 15  call  $1596		; do a random number generator (RNG)
0731: 2f 03     bra   $0736
0733: 3f 56 08  call  $0856
0736: e4 f6     mov   a,$f6
0738: f0 03     beq   $073d
073a: 3f 3b 0b  call  $0b3b
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
076e: d0 03     bne   $0773
0770: 1f 03 00  jmp   ($0003+x)

0773: cd 00     mov   x,#$00
0775: 3e f4     cmp   x,$f4
0777: d0 fc     bne   $0775
0779: e4 f5     mov   a,$f5
077b: d7 03     mov   ($03)+y,a
077d: f8 f4     mov   x,$f4
077f: d8 f4     mov   $f4,x
0781: 3a 03     incw  $03
0783: 3e f4     cmp   x,$f4
0785: f0 fc     beq   $0783
0787: 3d        inc   x
0788: 3e f4     cmp   x,$f4
078a: f0 ed     beq   $0779
078c: f8 f4     mov   x,$f4
078e: 2f d3     bra   $0763
0790: 3f d3 0d  call  $0dd3
0793: 8f b0 f1  mov   $f1,#$b0
0796: cd 00     mov   x,#$00
0798: f5 55 07  mov   a,$0755+x
079b: d5 00 01  mov   $0100+x,a
079e: 3d        inc   x
079f: c8 3b     cmp   x,#$3b
07a1: 90 f5     bcc   $0798
07a3: 5f 00 01  jmp   $0100

; gain tables
07a6: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08,$06,$05,$04,$03,$02,$01
07bc: db $1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

; DSP registers: VxENVX
07d2: db $08,$18,$28,$38,$48,$58,$68,$78
; DSP registers: VxGAIN
07da: db $07,$17,$27,$37,$47,$57,$67,$77
; DSP registers: VxSCRN (select sample)
07e2: db $04,$14,$24,$34,$44,$54,$64,$74
; DSP registers: VxPITCHL
07ea: db $02,$12,$22,$32,$42,$52,$62,$72
; DSP registers: VxVOLL
07f2: db $00,$10,$20,$30,$40,$50,$60,$70

; voice numbers and bits for clearing those void bits
07fa: db $01,$02,$04,$08,$10,$20,$40,$80,$fe,$fd,$fb,$f7,$ef,$df,$bf,$7f,$7d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

; echo poke registers
0816: db $02,$02,$02,$02,$02,$03,$03,$03

081e: db $97,$ac,$c1,$d6,$eb,$00,$15,$2a

0826: db $03,$03,$03,$03,$03,$03,$03,$03

082e: db $3f,$54,$69,$7e,$93,$a8,$bd,$d2

0836: db $03,$03,$04,$04,$04,$04,$04,$04

083e: db $e7,$fc,$11,$26,$3b,$50,$65,$7a

0846: db $04,$04,$04,$04,$04,$04,$05,$05

084e: db $8f,$a5,$bb,$d1,$e7,$fd,$13,$29

084e: 8f a5 bb  mov   $bb,#$a5
0851: d1        tcall 13
0852: e7 fd     mov   a,($fd+x)
0854: 13 29 3f  bbc0  $29,$0896
0857: 96 15 3f  adc   a,$3f15+y
085a: 22 13     set1  $13
085c: 8f 00 2f  mov   $2f,#$00
085f: 8f 00 44  mov   $44,#$00
0862: 8f 7c f2  mov   $f2,#$7c			; clear end of sample flags?
0865: e4 f3     mov   a,$f3
0867: 04 41     or    a,$41
0869: 24 47     and   a,$47
086b: c4 41     mov   $41,a
086d: 8f 00 f3  mov   $f3,#$00
0870: 24 42     and   a,$42
0872: 04 43     or    a,$43
0874: c4 43     mov   $43,a
0876: cd 07     mov   x,#$07
0878: 8f 7a 0d  mov   $0d,#$7a
087b: 8f 04 0e  mov   $0e,#$04
087e: d8 0f     mov   $0f,x
0880: f5 fa 07  mov   a,$07fa+x			; clear voice number bits
0883: c4 31     mov   $31,a
0885: 48 ff     eor   a,#$ff
0887: c4 32     mov   $32,a
0889: f4 53     mov   a,$53+x
088b: 28 02     and   a,#$02
088d: c4 30     mov   $30,a
088f: d0 06     bne   $0897
0891: f5 77 02  mov   a,$0277+x
0894: 5f 9c 08  jmp   $089c

0897: 3f f3 0e  call  $0ef3
089a: f8 0f     mov   x,$0f
089c: 75 7f 02  cmp   a,$027f+x
089f: d0 10     bne   $08b1
08a1: 3f 8d 10  call  $108d
08a4: 3f 21 0b  call  $0b21
08a7: e4 48     mov   a,$48
08a9: 24 45     and   a,$45
08ab: 24 31     and   a,$31
08ad: d0 43     bne   $08f2
08af: f0 44     beq   $08f5
08b1: d5 7f 02  mov   $027f+x,a
08b4: 09 31 2f  or    ($2f),($31)
08b7: 3f 8d 10  call  $108d
08ba: 7d        mov   a,x
08bb: 1c        asl   a
08bc: 5d        mov   x,a
08bd: e4 49     mov   a,$49
08bf: d5 87 02  mov   $0287+x,a
08c2: e4 4a     mov   a,$4a
08c4: d5 88 02  mov   $0288+x,a
08c7: f8 0f     mov   x,$0f
08c9: e4 4b     mov   a,$4b
08cb: 28 20     and   a,#$20
08cd: f0 05     beq   $08d4
08cf: 29 32 42  and   ($42),($32)
08d2: 2f 03     bra   $08d7
08d4: 09 31 42  or    ($42),($31)
08d7: e4 4b     mov   a,$4b
08d9: 28 40     and   a,#$40
08db: f0 05     beq   $08e2
08dd: 09 31 48  or    ($48),($31)
08e0: 2f 03     bra   $08e5
08e2: 29 32 48  and   ($48),($32)
08e5: 3f 21 0b  call  $0b21
08e8: e4 48     mov   a,$48
08ea: 04 45     or    a,$45
08ec: 24 31     and   a,$31
08ee: d0 02     bne   $08f2
08f0: f0 03     beq   $08f5
08f2: 09 31 44  or    ($44),($31)
08f5: 1d        dec   x
08f6: 30 0a     bmi   $0902
08f8: 80        setc
08f9: b8 15 0d  sbc   $0d,#$15
08fc: b8 00 0e  sbc   $0e,#$00
08ff: 5f 7e 08  jmp   $087e

0902: e4 45     mov   a,$45
0904: 24 43     and   a,$43
0906: 04 44     or    a,$44
0908: c4 46     mov   $46,a
090a: 8f 5c f2  mov   $f2,#$5c
090d: c4 f3     mov   $f3,a
090f: cd 07     mov   x,#$07
0911: 8f 29 0d  mov   $0d,#$29
0914: 8f 05 0e  mov   $0e,#$05
0917: 8f 00 34  mov   $34,#$00
091a: d8 0f     mov   $0f,x
091c: e4 52     mov   a,$52
091e: d0 13     bne   $0933
0920: f4 53     mov   a,$53+x
0922: 28 08     and   a,#$08
0924: c4 34     mov   $34,a
0926: d0 06     bne   $092e
0928: f5 6f 02  mov   a,$026f+x
092b: 5f 33 09  jmp   $0933

092e: 3f f3 0e  call  $0ef3
0931: f8 0f     mov   x,$0f
0933: fd        mov   y,a
0934: f5 67 02  mov   a,$0267+x
0937: c4 29     mov   $29,a
0939: cf        mul   ya
093a: cd 64     mov   x,#$64
093c: 9e        div   ya,x
093d: f8 0f     mov   x,$0f
093f: eb 34     mov   y,$34
0941: f0 11     beq   $0954
0943: c4 27     mov   $27,a
0945: 8d 15     mov   y,#$15
0947: f7 0d     mov   a,($0d)+y
0949: d0 04     bne   $094f
094b: e4 27     mov   a,$27
094d: 2f 05     bra   $0954
094f: e4 29     mov   a,$29
0951: 80        setc
0952: a4 27     sbc   a,$27
0954: c4 27     mov   $27,a
0956: f5 f2 07  mov   a,$07f2+x
0959: fd        mov   y,a
095a: cb f2     mov   $f2,y
095c: fa 27 f3  mov   ($f3),($27)
095f: e4 29     mov   a,$29
0961: 80        setc
0962: a4 27     sbc   a,$27
0964: fc        inc   y
0965: cb f2     mov   $f2,y
0967: c4 f3     mov   $f3,a
0969: 80        setc
096a: b8 16 0d  sbc   $0d,#$16
096d: b8 00 0e  sbc   $0e,#$00
0970: 1d        dec   x
0971: 30 03     bmi   $0976
0973: 5f 1a 09  jmp   $091a

0976: cd 07     mov   x,#$07
0978: 8f d2 0d  mov   $0d,#$d2
097b: 8f 03 0e  mov   $0e,#$03
097e: d8 0f     mov   $0f,x
0980: f4 53     mov   a,$53+x
0982: fd        mov   y,a
0983: 28 40     and   a,#$40
0985: 0d        push  psw
0986: dd        mov   a,y
0987: 28 04     and   a,#$04
0989: 0d        push  psw
098a: 7d        mov   a,x
098b: fd        mov   y,a
098c: 1c        asl   a
098d: 5d        mov   x,a
098e: f5 48 02  mov   a,$0248+x		; get base note
0991: c4 2e     mov   $2e,a
0993: f5 47 02  mov   a,$0247+x
0996: c4 2d     mov   $2d,a
0998: 8e        pop   psw
0999: f0 11     beq   $09ac
099b: 4d        push  x			; save word addressing
099c: 3f f3 0e  call  $0ef3		; advance pitch envelope
099f: ce        pop   x			; restore pitch flag
09a0: 7a 2d     addw  ya,$2d
09a2: 80        setc
09a3: a8 b0     sbc   a,#$b0
09a5: c4 2d     mov   $2d,a
09a7: dd        mov   a,y
09a8: a8 04     sbc   a,#$04
09aa: c4 2e     mov   $2e,a
09ac: f5 88 02  mov   a,$0288+x
09af: fd        mov   y,a
09b0: f5 87 02  mov   a,$0287+x
09b3: 7a 2d     addw  ya,$2d
09b5: 8e        pop   psw
09b6: d0 03     bne   $09bb
09b8: 3f b7 10  call  $10b7		; translate note to frequency
09bb: f8 0f     mov   x,$0f
09bd: d5 57 02  mov   $0257+x,a
09c0: dd        mov   a,y
09c1: d5 5f 02  mov   $025f+x,a
09c4: 80        setc
09c5: b8 15 0d  sbc   $0d,#$15
09c8: b8 00 0e  sbc   $0e,#$00
09cb: 1d        dec   x
09cc: 10 b0     bpl   $097e
09ce: 8f 5c f2  mov   $f2,#$5c
09d1: 8f 00 f3  mov   $f3,#$00
09d4: cd 07     mov   x,#$07
09d6: 8f 2a 0d  mov   $0d,#$2a
09d9: 8f 03 0e  mov   $0e,#$03
09dc: d8 0f     mov   $0f,x
09de: f5 fa 07  mov   a,$07fa+x
09e1: c4 31     mov   $31,a
09e3: 48 ff     eor   a,#$ff
09e5: c4 32     mov   $32,a
09e7: f4 53     mov   a,$53+x
09e9: 28 01     and   a,#$01
09eb: d0 06     bne   $09f3
09ed: f5 2f 02  mov   a,$022f+x
09f0: 5f f8 09  jmp   $09f8

09f3: 3f f3 0e  call  $0ef3
09f6: f8 0f     mov   x,$0f
09f8: d5 37 02  mov   $0237+x,a
09fb: fd        mov   y,a
09fc: e4 2f     mov   a,$2f
09fe: 24 31     and   a,$31
0a00: f0 0a     beq   $0a0c
0a02: f5 e2 07  mov   a,$07e2+x
0a05: c4 f2     mov   $f2,a
0a07: f5 7f 02  mov   a,$027f+x
0a0a: c4 f3     mov   $f3,a
0a0c: e4 40     mov   a,$40
0a0e: 24 31     and   a,$31
0a10: f0 05     beq   $0a17
0a12: 29 32 40  and   ($40),($32)
0a15: 2f 37     bra   $0a4e
0a17: f5 d2 07  mov   a,$07d2+x
0a1a: c4 f2     mov   $f2,a
0a1c: dd        mov   a,y
0a1d: 80        setc
0a1e: a4 f3     sbc   a,$f3
0a20: b0 09     bcs   $0a2b
0a22: 8f 80 22  mov   $22,#$80
0a25: 48 ff     eor   a,#$ff
0a27: bc        inc   a
0a28: 5f 2e 0a  jmp   $0a2e

0a2b: 8f c0 22  mov   $22,#$c0
0a2e: 5c        lsr   a
0a2f: d0 09     bne   $0a3a
0a31: ad 00     cmp   y,#$00
0a33: d0 05     bne   $0a3a
0a35: e8 82     mov   a,#$82
0a37: 5f 48 0a  jmp   $0a48

0a3a: 8d 15     mov   y,#$15
0a3c: 76 a6 07  cmp   a,$07a6+y
0a3f: 90 02     bcc   $0a43
0a41: fe f9     dbnz  y,$0a3c
0a43: f6 bc 07  mov   a,$07bc+y
0a46: 04 22     or    a,$22
0a48: 75 3f 02  cmp   a,$023f+x
0a4b: f0 0c     beq   $0a59
0a4d: fd        mov   y,a
0a4e: f5 da 07  mov   a,$07da+x
0a51: c4 f2     mov   $f2,a
0a53: cb f3     mov   $f3,y
0a55: dd        mov   a,y
0a56: d5 3f 02  mov   $023f+x,a
0a59: f5 ea 07  mov   a,$07ea+x
0a5c: c4 f2     mov   $f2,a
0a5e: fd        mov   y,a
0a5f: f5 57 02  mov   a,$0257+x
0a62: c4 f3     mov   $f3,a
0a64: fc        inc   y
0a65: cb f2     mov   $f2,y
0a67: f5 5f 02  mov   a,$025f+x
0a6a: c4 f3     mov   $f3,a
0a6c: 80        setc
0a6d: b8 15 0d  sbc   $0d,#$15
0a70: b8 00 0e  sbc   $0e,#$00
0a73: 1d        dec   x
0a74: 30 03     bmi   $0a79
0a76: 5f dc 09  jmp   $09dc

0a79: 8f 4c f2  mov   $f2,#$4c
0a7c: fa 46 f3  mov   ($f3),($46)
0a7f: e4 46     mov   a,$46
0a81: 48 ff     eor   a,#$ff
0a83: c4 47     mov   $47,a
0a85: 29 47 41  and   ($41),($47)
0a88: 29 47 43  and   ($43),($47)
0a8b: 8f 00 45  mov   $45,#$00
0a8e: cd 07     mov   x,#$07
0a90: 8d 0e     mov   y,#$0e
0a92: f5 06 02  mov   a,$0206+x
0a95: f0 2b     beq   $0ac2
0a97: f4 53     mov   a,$53+x
0a99: 28 80     and   a,#$80
0a9b: f0 09     beq   $0aa6
0a9d: f5 fa 07  mov   a,$07fa+x
0aa0: 24 41     and   a,$41
0aa2: d0 19     bne   $0abd
0aa4: 2f 1c     bra   $0ac2
0aa6: f6 17 02  mov   a,$0217+y
0aa9: 80        setc
0aaa: a8 01     sbc   a,#$01
0aac: d6 17 02  mov   $0217+y,a
0aaf: c4 27     mov   $27,a
0ab1: f6 18 02  mov   a,$0218+y
0ab4: a8 00     sbc   a,#$00
0ab6: d6 18 02  mov   $0218+y,a
0ab9: 04 27     or    a,$27
0abb: d0 05     bne   $0ac2
0abd: e8 00     mov   a,#$00
0abf: d5 06 02  mov   $0206+x,a
0ac2: dc        dec   y
0ac3: dc        dec   y
0ac4: 1d        dec   x
0ac5: 10 cb     bpl   $0a92
0ac7: ec 00 02  mov   y,$0200
0aca: f0 54     beq   $0b20
0acc: 8c 01 02  dec   $0201
0acf: d0 4f     bne   $0b20
0ad1: cc 01 02  mov   $0201,y
0ad4: e4 16     mov   a,$16
0ad6: e9 02 02  mov   x,$0202
0ad9: 30 0e     bmi   $0ae9
0adb: 60        clrc
0adc: 85 03 02  adc   a,$0203
0adf: b0 04     bcs   $0ae5
0ae1: 68 7f     cmp   a,#$7f
0ae3: 90 13     bcc   $0af8
0ae5: e8 7f     mov   a,#$7f
0ae7: 2f 0a     bra   $0af3
0ae9: 80        setc
0aea: a5 03 02  sbc   a,$0203
0aed: f0 04     beq   $0af3
0aef: b0 07     bcs   $0af8
0af1: e8 00     mov   a,#$00
0af3: 8d 00     mov   y,#$00
0af5: cc 00 02  mov   $0200,y
0af8: c4 16     mov   $16,a
0afa: 5d        mov   x,a
0afb: 8f 2c f2  mov   $f2,#$2c
0afe: 65 04 02  cmp   a,$0204
0b01: 90 03     bcc   $0b06
0b03: e5 04 02  mov   a,$0204
0b06: c4 f3     mov   $f3,a
0b08: 8f 3c f2  mov   $f2,#$3c
0b0b: 7d        mov   a,x
0b0c: 65 05 02  cmp   a,$0205
0b0f: 90 03     bcc   $0b14
0b11: e5 04 02  mov   a,$0204
0b14: c4 f3     mov   $f3,a
0b16: 8f 0c f2  mov   $f2,#$0c
0b19: d8 f3     mov   $f3,x
0b1b: 8f 1c f2  mov   $f2,#$1c
0b1e: d8 f3     mov   $f3,x
0b20: 6f        ret

0b21: e4 4b     mov   a,$4b
0b23: 10 0c     bpl   $0b31
0b25: 28 1f     and   a,#$1f
0b27: 8f 6c f2  mov   $f2,#$6c
0b2a: c4 f3     mov   $f3,a
0b2c: 09 31 4d  or    ($4d),($31)
0b2f: 2f 03     bra   $0b34
0b31: 29 32 4d  and   ($4d),($32)
0b34: 8f 3d f2  mov   $f2,#$3d
0b37: fa 4d f3  mov   ($f3),($4d)
0b3a: 6f        ret

0b3b: c4 17     mov   $17,a
0b3d: fa f4 19  mov   ($19),($f4)
0b40: fa f5 1a  mov   ($1a),($f5)
0b43: e4 f7     mov   a,$f7
0b45: 28 fe     and   a,#$fe
0b47: c4 18     mov   $18,a
0b49: 8f b1 f1  mov   $f1,#$b1
0b4c: fa 17 f6  mov   ($f6),($17)
0b4f: f8 18     mov   x,$18
0b51: c8 1d     cmp   x,#$1d
0b53: b0 07     bcs   $0b5c
0b55: e4 19     mov   a,$19
0b57: eb 1a     mov   y,$1a
0b59: 1f b4 17  jmp   ($17b4+x)

0b5c: 6f        ret

0b5d: 8f 6c f2  mov   $f2,#$6c
0b60: 8f 00 f3  mov   $f3,#$00
0b63: 8f ff 1b  mov   $1b,#$ff
0b66: 5f 02 0e  jmp   $0e02

0b69: da 3a     movw  $3a,ya
0b6b: 8f ff 39  mov   $39,#$ff
0b6e: 6f        ret

0b6f: c4 52     mov   $52,a
0b71: 6f        ret

0b72: e8 00     mov   a,#$00
0b74: c5 00 02  mov   $0200,a
0b77: 6f        ret

0b78: cd 01     mov   x,#$01
0b7a: 2f 02     bra   $0b7e
0b7c: cd ff     mov   x,#$ff
0b7e: c5 00 02  mov   $0200,a
0b81: c5 01 02  mov   $0201,a
0b84: cc 03 02  mov   $0203,y
0b87: c9 02 02  mov   $0202,x
0b8a: 6f        ret

0b8b: 8f 00 5c  mov   $5c,#$00
0b8e: 68 00     cmp   a,#$00
0b90: d0 03     bne   $0b95
0b92: c5 4f 05  mov   $054f,a
0b95: 6f        ret

0b96: c5 16 02  mov   $0216,a
0b99: cd 07     mov   x,#$07
0b9b: ad 80     cmp   y,#$80
0b9d: f0 17     beq   $0bb6
0b9f: e8 01     mov   a,#$01
0ba1: b0 0e     bcs   $0bb1
0ba3: ad 00     cmp   y,#$00
0ba5: d0 08     bne   $0baf
0ba7: e5 16 02  mov   a,$0216
0baa: 75 0e 02  cmp   a,$020e+x
0bad: d0 22     bne   $0bd1
0baf: e8 80     mov   a,#$80
0bb1: 75 06 02  cmp   a,$0206+x
0bb4: d0 1b     bne   $0bd1
0bb6: f5 da 07  mov   a,$07da+x
0bb9: c4 f2     mov   $f2,a
0bbb: e8 00     mov   a,#$00
0bbd: c4 f3     mov   $f3,a
0bbf: d5 2f 02  mov   $022f+x,a
0bc2: d5 06 02  mov   $0206+x,a
0bc5: d5 77 02  mov   $0277+x,a
0bc8: d4 53     mov   $53+x,a
0bca: f5 fa 07  mov   a,$07fa+x
0bcd: 04 45     or    a,$45
0bcf: c4 45     mov   $45,a
0bd1: 1d        dec   x
0bd2: 10 c7     bpl   $0b9b
0bd4: 6f        ret

0bd5: 8d 0e     mov   y,#$0e
0bd7: c5 16 02  mov   $0216,a
0bda: 3f b2 0d  call  $0db2
0bdd: da 09     movw  $09,ya
0bdf: 8d 00     mov   y,#$00
0be1: f7 09     mov   a,($09)+y
0be3: c4 3c     mov   $3c,a
0be5: 3a 09     incw  $09
0be7: 8d 07     mov   y,#$07
0be9: f7 09     mov   a,($09)+y
0beb: c4 3d     mov   $3d,a
0bed: 8d 06     mov   y,#$06
0bef: f7 09     mov   a,($09)+y
0bf1: c4 3e     mov   $3e,a
0bf3: 8f 80 3f  mov   $3f,#$80
0bf6: cd 07     mov   x,#$07
0bf8: 3f 43 0c  call  $0c43
0bfb: 30 36     bmi   $0c33
0bfd: e8 80     mov   a,#$80
0bff: d5 06 02  mov   $0206+x,a
0c02: e5 16 02  mov   a,$0216
0c05: d5 0e 02  mov   $020e+x,a
0c08: 8d 02     mov   y,#$02
0c0a: f7 09     mov   a,($09)+y
0c0c: c4 35     mov   $35,a
0c0e: fc        inc   y
0c0f: f7 09     mov   a,($09)+y
0c11: c4 36     mov   $36,a
0c13: 8d 04     mov   y,#$04
0c15: f7 09     mov   a,($09)+y
0c17: c4 37     mov   $37,a
0c19: fc        inc   y
0c1a: f7 09     mov   a,($09)+y
0c1c: c4 38     mov   $38,a
0c1e: e4 39     mov   a,$39
0c20: f0 04     beq   $0c26
0c22: ba 3a     movw  ya,$3a
0c24: da 37     movw  $37,ya
0c26: 8d 01     mov   y,#$01
0c28: f7 09     mov   a,($09)+y
0c2a: 2d        push  a
0c2b: 8d 00     mov   y,#$00
0c2d: f7 09     mov   a,($09)+y
0c2f: ee        pop   y
0c30: 3f 6d 0c  call  $0c6d
0c33: 60        clrc
0c34: 98 08 09  adc   $09,#$08
0c37: 90 02     bcc   $0c3b
0c39: ab 0a     inc   $0a
0c3b: 8b 3c     dec   $3c
0c3d: d0 a8     bne   $0be7
0c3f: 8f 00 39  mov   $39,#$00
0c42: 6f        ret

0c43: 8d 07     mov   y,#$07
0c45: e4 3f     mov   a,$3f
0c47: 24 3d     and   a,$3d
0c49: f0 0c     beq   $0c57
0c4b: f5 06 02  mov   a,$0206+x
0c4e: f0 15     beq   $0c65
0c50: e4 3e     mov   a,$3e
0c52: 75 27 02  cmp   a,$0227+x
0c55: b0 10     bcs   $0c67
0c57: 4b 3f     lsr   $3f
0c59: d0 05     bne   $0c60
0c5b: 8f 80 3f  mov   $3f,#$80
0c5e: cd 08     mov   x,#$08
0c60: 1d        dec   x
0c61: dc        dec   y
0c62: 10 e1     bpl   $0c45
0c64: 6f        ret

0c65: e4 3e     mov   a,$3e
0c67: d5 27 02  mov   $0227+x,a
0c6a: e8 00     mov   a,#$00
0c6c: 6f        ret

0c6d: d8 33     mov   $33,x			; play sound (instrument)
0c6f: 2d        push  a
0c70: dd        mov   a,y
0c71: d5 67 02  mov   $0267+x,a
0c74: 7d        mov   a,x
0c75: 1c        asl   a
0c76: 5d        mov   x,a
0c77: e4 37     mov   a,$37
0c79: d5 47 02  mov   $0247+x,a
0c7c: e4 38     mov   a,$38
0c7e: d5 48 02  mov   $0248+x,a
0c81: e4 35     mov   a,$35
0c83: d5 17 02  mov   $0217+x,a
0c86: e4 36     mov   a,$36
0c88: d5 18 02  mov   $0218+x,a
0c8b: ae        pop   a
0c8c: 8d 02     mov   y,#$02
0c8e: 3f b2 0d  call  $0db2
0c91: da 07     movw  $07,ya			; get current voice and instrument
0c93: f8 33     mov   x,$33
0c95: f5 fa 07  mov   a,$07fa+x			; get channel bit mask ID
0c98: c4 4e     mov   $4e,a
0c9a: 48 ff     eor   a,#$ff			; and store inversion
0c9c: c4 4f     mov   $4f,a
0c9e: 8d 00     mov   y,#$00			; get mode flags
0ca0: f7 07     mov   a,($07)+y
0ca2: d4 53     mov   $53+x,a			; save permanently and in local temp RAM
0ca4: c4 34     mov   $34,a
0ca6: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0ca8: f0 05     beq   $0caf			; if not...
0caa: 09 4e 50  or    ($50),($4e)		; turn pitch mod on
0cad: 2f 03     bra   $0cb2
0caf: 29 4f 50  and   ($50),($4f)		; turn pitch mod off
0cb2: 8f 2d f2  mov   $f2,#$2d
0cb5: fa 50 f3  mov   ($f3),($50)
0cb8: e4 34     mov   a,$34			; retrieve the saved flag
0cba: 28 10     and   a,#$10			; is echo enabled? ($10 = echo)
0cbc: f0 2f     beq   $0ced			; if not...
0cbe: 8d 05     mov   y,#$05			; get echo byte from sound
0cc0: f7 07     mov   a,($07)+y
0cc2: 8d 0c     mov   y,#$0c
0cc4: 3f b2 0d  call  $0db2
0cc7: 8d 00     mov   y,#$00
0cc9: f6 0a 08  mov   a,$080a+y			; get the echo register values to "poke"
0ccc: c4 f2     mov   $f2,a			; (from the table)
0cce: f7 10     mov   a,($10)+y			; now get info to feed to the registers
0cd0: ad 01     cmp   y,#$01			; (from the echo environment)
0cd2: f0 04     beq   $0cd8
0cd4: ad 02     cmp   y,#$02
0cd6: d0 09     bne   $0ce1
0cd8: d6 03 02  mov   $0203+y,a
0cdb: 64 16     cmp   a,$16
0cdd: 90 02     bcc   $0ce1
0cdf: e4 16     mov   a,$16
0ce1: c4 f3     mov   $f3,a
0ce3: fc        inc   y
0ce4: ad 0c     cmp   y,#$0c			; repeat for every byte of the array
0ce6: 90 e1     bcc   $0cc9
0ce8: 09 4e 51  or    ($51),($4e)
0ceb: 2f 03     bra   $0cf0

0ced: 29 4f 51  and   ($51),($4f)
0cf0: 8f 4d f2  mov   $f2,#$4d
0cf3: fa 51 f3  mov   ($f3),($51)		; send the echo unit
0cf6: e4 34     mov   a,$34
0cf8: 28 01     and   a,#$01
0cfa: 0d        push  psw
0cfb: 8d 01     mov   y,#$01
0cfd: f7 07     mov   a,($07)+y			; now get the amplitude
0cff: 8e        pop   psw
0d00: d0 08     bne   $0d0a
0d02: f8 33     mov   x,$33
0d04: d5 2f 02  mov   $022f+x,a
0d07: 5f 20 0d  jmp   $0d20

0d0a: 8d 04     mov   y,#$04
0d0c: 3f b2 0d  call  $0db2
0d0f: f8 33     mov   x,$33
0d11: f5 1e 08  mov   a,$081e+x
0d14: c4 0d     mov   $0d,a
0d16: f5 16 08  mov   a,$0816+x
0d19: c4 0e     mov   $0e,a
0d1b: ba 35     movw  ya,$35
0d1d: 3f 7c 0e  call  $0e7c
0d20: e4 34     mov   a,$34
0d22: 28 04     and   a,#$04
0d24: f0 1a     beq   $0d40
0d26: 8d 03     mov   y,#$03
0d28: f7 07     mov   a,($07)+y
0d2a: 8d 06     mov   y,#$06
0d2c: 3f b2 0d  call  $0db2
0d2f: f8 33     mov   x,$33
0d31: f5 2e 08  mov   a,$082e+x
0d34: c4 0d     mov   $0d,a
0d36: f5 26 08  mov   a,$0826+x
0d39: c4 0e     mov   $0e,a
0d3b: ba 35     movw  ya,$35
0d3d: 3f 7c 0e  call  $0e7c
0d40: e4 34     mov   a,$34
0d42: 28 08     and   a,#$08
0d44: 0d        push  psw
0d45: 8d 04     mov   y,#$04
0d47: f7 07     mov   a,($07)+y
0d49: 8e        pop   psw
0d4a: d0 08     bne   $0d54
0d4c: f8 33     mov   x,$33
0d4e: d5 6f 02  mov   $026f+x,a
0d51: 5f 81 0d  jmp   $0d81

0d54: 8d 08     mov   y,#$08
0d56: 3f b2 0d  call  $0db2
0d59: f8 33     mov   x,$33
0d5b: f5 4e 08  mov   a,$084e+x
0d5e: c4 0d     mov   $0d,a
0d60: f5 46 08  mov   a,$0846+x
0d63: c4 0e     mov   $0e,a
0d65: ba 35     movw  ya,$35
0d67: 3f 7c 0e  call  $0e7c
0d6a: 8d 07     mov   y,#$07
0d6c: f7 0d     mov   a,($0d)+y
0d6e: f0 0b     beq   $0d7b
0d70: 8d 15     mov   y,#$15
0d72: f7 0d     mov   a,($0d)+y
0d74: d0 05     bne   $0d7b
0d76: e8 ff     mov   a,#$ff
0d78: 5f 7d 0d  jmp   $0d7d

0d7b: e8 00     mov   a,#$00
0d7d: 8d 15     mov   y,#$15
0d7f: d7 0d     mov   ($0d)+y,a
0d81: e4 34     mov   a,$34
0d83: 28 02     and   a,#$02
0d85: 0d        push  psw
0d86: 8d 02     mov   y,#$02
0d88: f7 07     mov   a,($07)+y
0d8a: 8e        pop   psw
0d8b: d0 08     bne   $0d95
0d8d: f8 33     mov   x,$33
0d8f: d5 77 02  mov   $0277+x,a
0d92: 5f ab 0d  jmp   $0dab

0d95: 8d 0a     mov   y,#$0a
0d97: 3f b2 0d  call  $0db2
0d9a: f8 33     mov   x,$33
0d9c: f5 3e 08  mov   a,$083e+x
0d9f: c4 0d     mov   $0d,a
0da1: f5 36 08  mov   a,$0836+x
0da4: c4 0e     mov   $0e,a
0da6: ba 35     movw  ya,$35
0da8: 3f 7c 0e  call  $0e7c
0dab: 09 4e 45  or    ($45),($4e)
0dae: 09 4e 40  or    ($40),($4e)
0db1: 6f        ret

0db2: 8f 00 06  mov   $06,#$00		; load current song/sfx/etc. address into stack
0db5: 1c        asl   a
0db6: 2b 06     rol   $06
0db8: 60        clrc
0db9: 96 e0 17  adc   a,$17e0+y
0dbc: c4 05     mov   $05,a
0dbe: e4 06     mov   a,$06
0dc0: 96 e1 17  adc   a,$17e1+y
0dc3: c4 06     mov   $06,a
0dc5: 8d 01     mov   y,#$01
0dc7: f7 05     mov   a,($05)+y
0dc9: c4 11     mov   $11,a
0dcb: dc        dec   y
0dcc: f7 05     mov   a,($05)+y
0dce: c4 10     mov   $10,a
0dd0: eb 11     mov   y,$11
0dd2: 6f        ret

0dd3: cd 31     mov   x,#$31
0dd5: 8d 0e     mov   y,#$0e
0dd7: 3f 1a 0e  call  $0e1a
0dda: e8 00     mov   a,#$00
0ddc: fd        mov   y,a
0ddd: c4 03     mov   $03,a
0ddf: 8f 02 04  mov   $04,#$02
0de2: d7 03     mov   ($03)+y,a
0de4: 3a 03     incw  $03
0de6: 78 07 04  cmp   $04,#$07
0de9: 90 f7     bcc   $0de2
0deb: d6 00 00  mov   $0000+y,a
0dee: fc        inc   y
0def: ad f0     cmp   y,#$f0
0df1: 90 f8     bcc   $0deb
0df3: 9c        dec   a
0df4: c4 41     mov   $41,a
0df6: c4 43     mov   $43,a
0df8: c4 48     mov   $48,a
0dfa: c4 42     mov   $42,a
0dfc: c4 47     mov   $47,a
0dfe: 8f 7f 16  mov   $16,#$7f
0e01: 6f        ret

0e02: e5 e1 17  mov   a,$17e1
0e05: 8f 6d f2  mov   $f2,#$6d
0e08: c4 f3     mov   $f3,a
0e0a: c4 04     mov   $04,a
0e0c: e8 00     mov   a,#$00
0e0e: fd        mov   y,a
0e0f: c4 03     mov   $03,a
0e11: d7 03     mov   ($03)+y,a
0e13: fe fc     dbnz  y,$0e11
0e15: ab 04     inc   $04
0e17: d0 f8     bne   $0e11
0e19: 6f        ret

0e1a: d8 03     mov   $03,x
0e1c: cb 04     mov   $04,y
0e1e: 8d 00     mov   y,#$00
0e20: f7 03     mov   a,($03)+y
0e22: 68 ff     cmp   a,#$ff
0e24: f0 0a     beq   $0e30
0e26: c4 f2     mov   $f2,a
0e28: fc        inc   y
0e29: f7 03     mov   a,($03)+y
0e2b: c4 f3     mov   $f3,a
0e2d: fc        inc   y
0e2e: d0 f0     bne   $0e20
0e30: 6f        ret

; pre-defined DSP flags
0e31: db $6c,$ff			; clear flags
0e33: db $3d,$00			; turn off noise generator (NON)
0e35: db $4d,$00			; turn off echo (EON)
0e37: db $7d,$00			; turn off echo delay time (EDL)
0e39: db $6d,$ff			; pointer to echo memory (ESA)
0e3b: db $5d,$18			; set sample directory ($1800)
0e3d: db $5c,$00			; set key off (KOFF)
0e3f: db $2d,$00			; disable pitch modulation (PMON)
0e41: db $05,$00			; disable ASDR (channel 1)
0e43: db $15,$00			; disable ASDR (channel 2)
0e45: db $25,$00			; disable ASDR (channel 3)
0e47: db $35,$00			; disable ASDR (channel 4)
0e49: db $45,$00			; disable ASDR (channel 5)
0e4b: db $55,$00			; disable ASDR (channel 6)
0e4d: db $65,$00			; disable ASDR (channel 7)
0e4f: db $75,$00			; disable ASDR (channel 8)
0e51: db $07,$00			; reset GAIN (channel 1)
0e53: db $17,$00			; reset GAIN (channel 2)
0e55: db $27,$00			; reset GAIN (channel 3)
0e57: db $37,$00			; reset GAIN (channel 4)
0e59: db $47,$00			; reset GAIN (channel 5)
0e5b: db $57,$00			; reset GAIN (channel 6)
0e5d: db $67,$00			; reset GAIN (channel 7)
0e5f: db $77,$00			; reset GAIN (channel 8)
0e61: db $7c,$00			; end of sample flag
0e63: db $2c,$00			; turn off EVOLL
0e65: db $3c,$00			; turn off EVOLR
0e67: db $0c,$7f			; turn on MVOLL
0e69: db $1c,$7f			; turn on MVOLR
0e6b: db $04,$00			; reset SRCN (channel 1)
0e6d: db $14,$00			; reset SRCN (channel 2)
0e6f: db $24,$00			; reset SRCN (channel 3)
0e71: db $34,$00			; reset SRCN (channel 4)
0e73: db $44,$00			; reset SRCN (channel 5)
0e75: db $54,$00			; reset SRCN (channel 6)
0e77: db $64,$00			; reset SRCN (channel 7)
0e79: db $74,$00			; reset SRCN (channel 8)
0e7b: db $ff

0e7c: da 27     movw  $27,ya
0e7e: 8d 07     mov   y,#$07
0e80: f7 10     mov   a,($10)+y		; get amplitude table
0e82: d7 0d     mov   ($0d)+y,a
0e84: dc        dec   y
0e85: 10 f9     bpl   $0e80
0e87: e4 10     mov   a,$10
0e89: 60        clrc
0e8a: 88 08     adc   a,#$08
0e8c: 8d 08     mov   y,#$08
0e8e: d7 0d     mov   ($0d)+y,a
0e90: e4 11     mov   a,$11
0e92: 88 00     adc   a,#$00
0e94: fc        inc   y
0e95: d7 0d     mov   ($0d)+y,a
0e97: 8d 03     mov   y,#$03
0e99: f7 0d     mov   a,($0d)+y
0e9b: 5d        mov   x,a
0e9c: 8d 02     mov   y,#$02
0e9e: f7 0d     mov   a,($0d)+y
0ea0: fd        mov   y,a
0ea1: 7d        mov   a,x
0ea2: cf        mul   ya
0ea3: da 2b     movw  $2b,ya
0ea5: ba 27     movw  ya,$27
0ea7: 9a 2b     subw  ya,$2b
0ea9: b0 03     bcs   $0eae
0eab: e8 00     mov   a,#$00
0ead: fd        mov   y,a
0eae: cb 2c     mov   $2c,y
0eb0: 8d 0d     mov   y,#$0d
0eb2: d7 0d     mov   ($0d)+y,a
0eb4: fc        inc   y
0eb5: e4 2c     mov   a,$2c
0eb7: d7 0d     mov   ($0d)+y,a
0eb9: 8d 03     mov   y,#$03
0ebb: f7 0d     mov   a,($0d)+y
0ebd: bc        inc   a
0ebe: 8d 0f     mov   y,#$0f
0ec0: d7 0d     mov   ($0d)+y,a
0ec2: 68 03     cmp   a,#$03
0ec4: b0 06     bcs   $0ecc
0ec6: 8d 04     mov   y,#$04
0ec8: e8 00     mov   a,#$00
0eca: d7 0d     mov   ($0d)+y,a
0ecc: 8d 08     mov   y,#$08
0ece: f7 0d     mov   a,($0d)+y
0ed0: 8d 0a     mov   y,#$0a
0ed2: d7 0d     mov   ($0d)+y,a
0ed4: 8d 09     mov   y,#$09
0ed6: f7 0d     mov   a,($0d)+y
0ed8: 8d 0b     mov   y,#$0b
0eda: d7 0d     mov   ($0d)+y,a
0edc: e8 01     mov   a,#$01
0ede: 8d 14     mov   y,#$14
0ee0: d7 0d     mov   ($0d)+y,a
0ee2: 9c        dec   a
0ee3: 8d 0c     mov   y,#$0c
0ee5: d7 0d     mov   ($0d)+y,a
0ee7: 8d 12     mov   y,#$12
0ee9: d7 0d     mov   ($0d)+y,a
0eeb: fc        inc   y
0eec: d7 0d     mov   ($0d)+y,a
0eee: c4 20     mov   $20,a
0ef0: 5f a1 0f  jmp   $0fa1

0ef3: 8d 14     mov   y,#$14
0ef5: f7 0d     mov   a,($0d)+y
0ef7: f0 39     beq   $0f32
0ef9: 8d 04     mov   y,#$04
0efb: f7 0d     mov   a,($0d)+y
0efd: c4 20     mov   $20,a
0eff: 8d 0f     mov   y,#$0f
0f01: f7 0d     mov   a,($0d)+y
0f03: c4 21     mov   $21,a
0f05: f0 03     beq   $0f0a
0f07: 9c        dec   a
0f08: d0 06     bne   $0f10
0f0a: 8d 03     mov   y,#$03
0f0c: f7 0d     mov   a,($0d)+y
0f0e: 8d 0f     mov   y,#$0f
0f10: d7 0d     mov   ($0d)+y,a
0f12: 78 02 21  cmp   $21,#$02
0f15: 90 03     bcc   $0f1a
0f17: 5f a1 0f  jmp   $0fa1

0f1a: 8d 0c     mov   y,#$0c
0f1c: f7 0d     mov   a,($0d)+y
0f1e: bc        inc   a
0f1f: 8d 05     mov   y,#$05
0f21: 77 0d     cmp   a,($0d)+y
0f23: 90 17     bcc   $0f3c
0f25: 9c        dec   a
0f26: 8d 01     mov   y,#$01
0f28: 77 0d     cmp   a,($0d)+y
0f2a: f0 6a     beq   $0f96
0f2c: e8 00     mov   a,#$00
0f2e: 8d 14     mov   y,#$14
0f30: d7 0d     mov   ($0d)+y,a
0f32: 8d 11     mov   y,#$11
0f34: f7 0d     mov   a,($0d)+y
0f36: 2d        push  a
0f37: dc        dec   y
0f38: f7 0d     mov   a,($0d)+y
0f3a: ee        pop   y
0f3b: 6f        ret

0f3c: 8d 0c     mov   y,#$0c
0f3e: d7 0d     mov   ($0d)+y,a
0f40: 8d 06     mov   y,#$06
0f42: f7 0d     mov   a,($0d)+y
0f44: 8d 0a     mov   y,#$0a
0f46: 60        clrc
0f47: 97 0d     adc   a,($0d)+y
0f49: d7 0d     mov   ($0d)+y,a
0f4b: 90 07     bcc   $0f54
0f4d: fc        inc   y
0f4e: f7 0d     mov   a,($0d)+y
0f50: 88 00     adc   a,#$00
0f52: d7 0d     mov   ($0d)+y,a
0f54: 8d 0e     mov   y,#$0e
0f56: f7 0d     mov   a,($0d)+y
0f58: 5d        mov   x,a
0f59: dc        dec   y
0f5a: f7 0d     mov   a,($0d)+y
0f5c: d0 04     bne   $0f62
0f5e: c8 00     cmp   x,#$00
0f60: f0 3f     beq   $0fa1
0f62: 8d 03     mov   y,#$03
0f64: 80        setc
0f65: b7 0d     sbc   a,($0d)+y
0f67: 8d 0d     mov   y,#$0d
0f69: d7 0d     mov   ($0d)+y,a
0f6b: c4 2b     mov   $2b,a
0f6d: 7d        mov   a,x
0f6e: a8 00     sbc   a,#$00
0f70: b0 06     bcs   $0f78
0f72: e8 00     mov   a,#$00
0f74: d7 0d     mov   ($0d)+y,a
0f76: c4 2b     mov   $2b,a
0f78: fc        inc   y
0f79: d7 0d     mov   ($0d)+y,a
0f7b: 04 2b     or    a,$2b
0f7d: d0 0b     bne   $0f8a
0f7f: 8d 01     mov   y,#$01
0f81: f7 0d     mov   a,($0d)+y
0f83: 68 ff     cmp   a,#$ff
0f85: f0 03     beq   $0f8a
0f87: 5f 9a 0f  jmp   $0f9a

0f8a: 8d 0c     mov   y,#$0c
0f8c: f7 0d     mov   a,($0d)+y
0f8e: 8d 01     mov   y,#$01
0f90: 77 0d     cmp   a,($0d)+y
0f92: 90 0d     bcc   $0fa1
0f94: f0 0b     beq   $0fa1
0f96: 8d 00     mov   y,#$00
0f98: f7 0d     mov   a,($0d)+y
0f9a: 8d 0c     mov   y,#$0c
0f9c: d7 0d     mov   ($0d)+y,a
0f9e: 3f 44 10  call  $1044
0fa1: f8 20     mov   x,$20
0fa3: f0 14     beq   $0fb9
0fa5: 78 03 21  cmp   $21,#$03
0fa8: 90 0f     bcc   $0fb9
0faa: 8d 13     mov   y,#$13
0fac: cd 03     mov   x,#$03
0fae: f7 0d     mov   a,($0d)+y
0fb0: d4 1c     mov   $1c+x,a
0fb2: dc        dec   y
0fb3: 1d        dec   x
0fb4: 10 f8     bpl   $0fae
0fb6: 5f 21 10  jmp   $1021

0fb9: 3f 33 10  call  $1033
0fbc: 8d 06     mov   y,#$06
0fbe: f7 0d     mov   a,($0d)+y
0fc0: 5d        mov   x,a
0fc1: 8d 00     mov   y,#$00
0fc3: f7 12     mov   a,($12)+y
0fc5: c8 01     cmp   x,#$01
0fc7: f0 06     beq   $0fcf
0fc9: 5d        mov   x,a
0fca: fc        inc   y
0fcb: f7 12     mov   a,($12)+y
0fcd: fd        mov   y,a
0fce: 7d        mov   a,x
0fcf: f8 20     mov   x,$20
0fd1: f0 52     beq   $1025
0fd3: 78 02 21  cmp   $21,#$02
0fd6: f0 4d     beq   $1025
0fd8: da 27     movw  $27,ya
0fda: 8d 11     mov   y,#$11
0fdc: f7 0d     mov   a,($0d)+y
0fde: c4 1d     mov   $1d,a
0fe0: dc        dec   y
0fe1: f7 0d     mov   a,($0d)+y
0fe3: c4 1c     mov   $1c,a
0fe5: eb 1d     mov   y,$1d
0fe7: 80        setc
0fe8: 9a 27     subw  ya,$27
0fea: da 1e     movw  $1e,ya
0fec: e8 00     mov   a,#$00
0fee: 3c        rol   a
0fef: c4 27     mov   $27,a
0ff1: d0 08     bne   $0ffb
0ff3: 58 ff 1e  eor   $1e,#$ff
0ff6: 58 ff 1f  eor   $1f,#$ff
0ff9: 3a 1e     incw  $1e
0ffb: 8d 03     mov   y,#$03
0ffd: f7 0d     mov   a,($0d)+y
0fff: 5d        mov   x,a
1000: ba 1e     movw  ya,$1e
1002: 3f 5f 10  call  $105f
1005: c4 1e     mov   $1e,a
1007: d8 1f     mov   $1f,x
1009: 78 01 27  cmp   $27,#$01
100c: d0 08     bne   $1016
100e: 58 ff 1e  eor   $1e,#$ff
1011: 58 ff 1f  eor   $1f,#$ff
1014: 3a 1e     incw  $1e
1016: 8d 12     mov   y,#$12
1018: e4 1e     mov   a,$1e
101a: d7 0d     mov   ($0d)+y,a
101c: fc        inc   y
101d: e4 1f     mov   a,$1f
101f: d7 0d     mov   ($0d)+y,a
1021: ba 1c     movw  ya,$1c
1023: 7a 1e     addw  ya,$1e
1025: da 1c     movw  $1c,ya
1027: 8d 10     mov   y,#$10
1029: d7 0d     mov   ($0d)+y,a
102b: e4 1d     mov   a,$1d
102d: fc        inc   y
102e: d7 0d     mov   ($0d)+y,a
1030: ba 1c     movw  ya,$1c
1032: 6f        ret

1033: 8d 0a     mov   y,#$0a
1035: 5f 3a 10  jmp   $103a

1038: 8d 08     mov   y,#$08
103a: f7 0d     mov   a,($0d)+y
103c: c4 12     mov   $12,a
103e: fc        inc   y
103f: f7 0d     mov   a,($0d)+y
1041: c4 13     mov   $13,a
1043: 6f        ret

1044: 2d        push  a
1045: 3f 38 10  call  $1038
1048: 8d 06     mov   y,#$06
104a: f7 0d     mov   a,($0d)+y
104c: fd        mov   y,a
104d: ae        pop   a
104e: cf        mul   ya
104f: 7a 12     addw  ya,$12
1051: da 12     movw  $12,ya
1053: 8d 0a     mov   y,#$0a
1055: e4 12     mov   a,$12
1057: d7 0d     mov   ($0d)+y,a
1059: fc        inc   y
105a: e4 13     mov   a,$13
105c: d7 0d     mov   ($0d)+y,a
105e: 6f        ret

105f: c8 00     cmp   x,#$00
1061: d0 05     bne   $1068
1063: e8 ff     mov   a,#$ff
1065: fd        mov   y,a
1066: 5d        mov   x,a
1067: 6f        ret

1068: cb 24     mov   $24,y
106a: 3e 24     cmp   x,$24
106c: f0 02     beq   $1070
106e: b0 19     bcs   $1089
1070: c4 23     mov   $23,a
1072: dd        mov   a,y
1073: 8d 00     mov   y,#$00
1075: 9e        div   ya,x
1076: c4 25     mov   $25,a
1078: fd        mov   y,a
1079: 7d        mov   a,x
107a: cf        mul   ya
107b: c4 26     mov   $26,a
107d: e4 24     mov   a,$24
107f: 80        setc
1080: a4 26     sbc   a,$26
1082: fd        mov   y,a
1083: e4 23     mov   a,$23
1085: 9e        div   ya,x
1086: f8 25     mov   x,$25
1088: 6f        ret

1089: 9e        div   ya,x
108a: cd 00     mov   x,#$00
108c: 6f        ret

108d: f5 7f 02  mov   a,$027f+x
1090: 8d 04     mov   y,#$04
1092: cf        mul   ya
1093: 7a 0b     addw  ya,$0b
1095: da 03     movw  $03,ya
1097: 8d 01     mov   y,#$01
1099: f7 03     mov   a,($03)+y
109b: c4 2a     mov   $2a,a
109d: dc        dec   y
109e: f7 03     mov   a,($03)+y
10a0: 80        setc
10a1: a8 03     sbc   a,#$03
10a3: c4 29     mov   $29,a
10a5: b8 00 2a  sbc   $2a,#$00
10a8: f7 29     mov   a,($29)+y
10aa: c4 49     mov   $49,a
10ac: fc        inc   y
10ad: f7 29     mov   a,($29)+y
10af: c4 4a     mov   $4a,a
10b1: fc        inc   y
10b2: f7 29     mov   a,($29)+y
10b4: c4 4b     mov   $4b,a
10b6: 6f        ret

10b7: ad 04     cmp   y,#$04
10b9: 90 06     bcc   $10c1
10bb: d0 0a     bne   $10c7
10bd: 68 b0     cmp   a,#$b0
10bf: b0 06     bcs   $10c7
10c1: 8f ff 4c  mov   $4c,#$ff
10c4: 5f dd 10  jmp   $10dd

10c7: ad 80     cmp   y,#$80
10c9: 90 0f     bcc   $10da
10cb: 8f 00 4c  mov   $4c,#$00
10ce: 60        clrc				; convert note to pitch from table
10cf: 88 20     adc   a,#$20
10d1: 5d        mov   x,a
10d2: dd        mov   a,y
10d3: 88 df     adc   a,#$df
10d5: fd        mov   y,a
10d6: 7d        mov   a,x
10d7: 5f dd 10  jmp   $10dd

10da: 8f 04 4c  mov   $4c,#$04
10dd: cd f0     mov   x,#$f0
10df: 9e        div   ya,x
10e0: 78 ff 4c  cmp   $4c,#$ff
10e3: d0 02     bne   $10e7
10e5: c4 4c     mov   $4c,a
10e7: f6 02 11  mov   a,$1102+y
10ea: c4 27     mov   $27,a
10ec: f6 f2 11  mov   a,$11f2+y
10ef: c4 28     mov   $28,a
10f1: e8 04     mov   a,#$04
10f3: 80        setc
10f4: a4 4c     sbc   a,$4c
10f6: f0 07     beq   $10ff
10f8: fd        mov   y,a
10f9: 4b 28     lsr   $28
10fb: 6b 27     ror   $27
10fd: fe fa     dbnz  y,$10f9
10ff: ba 27     movw  ya,$27
1101: 6f        ret

; pitch table (low byte)
1102: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
11f2: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

; note interval frequencies (low byte)
12e2: db $30,$20,$ac,$10,$24,$38,$4c,$60,$74,$88,$9c,$b0,$c4,$d8,$ec,$00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc,$f0,$54,$e0,$d0,$c0

; note interval frequencies (high byte)
1302: db $fd,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03

1322: e4 5c     mov   a,$5c
1324: d0 0f     bne   $1335
1326: e5 4f 05  mov   a,$054f
1329: f0 22     beq   $134d
132b: e8 00     mov   a,#$00
132d: c5 4f 05  mov   $054f,a
1330: 3f 1a 17  call  $171a
1333: 2f ed     bra   $1322
1335: e4 5b     mov   a,$5b
1337: 9c        dec   a
1338: c4 5d     mov   $5d,a
133a: 1c        asl   a
133b: c4 5e     mov   $5e,a
133d: f8 5d     mov   x,$5d
133f: f4 61     mov   a,$61+x
1341: 5d        mov   x,a
1342: 1f a8 17  jmp   ($17a8+x)

1345: 8b 5e     dec   $5e
1347: 8b 5e     dec   $5e
1349: 8b 5d     dec   $5d
134b: 10 f0     bpl   $133d
134d: 6f        ret

134e: f8 5d     mov   x,$5d
1350: 9b 9b     dec   $9b+x
1352: d0 f1     bne   $1345
1354: f5 60 05  mov   a,$0560+x
1357: d4 9b     mov   $9b+x,a
1359: 9b a3     dec   $a3+x
135b: d0 e8     bne   $1345
135d: f4 61     mov   a,$61+x
135f: 68 02     cmp   a,#$02
1361: d0 07     bne   $136a
1363: e8 06     mov   a,#$06
1365: d4 61     mov   $61+x,a
1367: 5f 7b 13  jmp   $137b

136a: e8 08     mov   a,#$08
136c: d4 61     mov   $61+x,a
136e: 5f 69 15  jmp   $1569

1371: 3f d0 14  call  $14d0
1374: d4 ce     mov   $ce+x,a
1376: 3f d0 14  call  $14d0
1379: d4 cf     mov   $cf+x,a
137b: 3f d0 14  call  $14d0
137e: fd        mov   y,a		; get the current note/command
137f: 28 20     and   a,#$20
1381: c4 5f     mov   $5f,a
1383: dd        mov   a,y
1384: 28 40     and   a,#$40
1386: c4 60     mov   $60,a
1388: f8 5d     mov   x,$5d
138a: d5 88 05  mov   $0588+x,a
138d: ad 80     cmp   y,#$80		; is it a note?
138f: 90 3d     bcc   $13ce
1391: ad f0     cmp   y,#$f0		; is it a special meaning flag?
1393: 90 08     bcc   $139d
1395: dd        mov   a,y		; then it must be a command...
1396: 28 0f     and   a,#$0f		; get command number
1398: 1c        asl   a
1399: 5d        mov   x,a
139a: 1f 4c 15  jmp   ($154c+x)		; jump to command number position

139d: f5 90 05  mov   a,$0590+x		; pitch bend
13a0: f0 4c     beq   $13ee
13a2: dd        mov   a,y
13a3: 28 08     and   a,#$08
13a5: 0d        push  psw
13a6: dd        mov   a,y
13a7: 28 07     and   a,#$07
13a9: bc        inc   a
13aa: 1c        asl   a
13ab: f8 5e     mov   x,$5e
13ad: 8e        pop   psw
13ae: f0 0d     beq   $13bd
13b0: 60        clrc
13b1: 94 de     adc   a,$de+x
13b3: d4 de     mov   $de+x,a
13b5: f4 df     mov   a,$df+x
13b7: 88 00     adc   a,#$00
13b9: d4 df     mov   $df+x,a
13bb: 2f 31     bra   $13ee
13bd: c4 27     mov   $27,a
13bf: f4 de     mov   a,$de+x
13c1: 80        setc
13c2: a4 27     sbc   a,$27
13c4: d4 de     mov   $de+x,a
13c6: f4 df     mov   a,$df+x
13c8: a8 00     sbc   a,#$00
13ca: d4 df     mov   $df+x,a
13cc: 2f 20     bra   $13ee
13ce: f5 90 05  mov   a,$0590+x			; play the note (check first)
13d1: f0 1b     beq   $13ee
13d3: dd        mov   a,y
13d4: 28 1f     and   a,#$1f
13d6: fd        mov   y,a
13d7: f8 5e     mov   x,$5e
13d9: f4 ce     mov   a,$ce+x
13db: 60        clrc
13dc: 96 e2 12  adc   a,$12e2+y			; get the relative frequency
13df: d4 ce     mov   $ce+x,a
13e1: f4 cf     mov   a,$cf+x
13e3: 96 02 13  adc   a,$1302+y
13e6: d4 cf     mov   $cf+x,a
13e8: e8 00     mov   a,#$00
13ea: d4 de     mov   $de+x,a
13ec: d4 df     mov   $df+x,a
13ee: 3f d0 14  call  $14d0
13f1: 68 00     cmp   a,#$00
13f3: d0 12     bne   $1407
13f5: f8 5d     mov   x,$5d
13f7: f4 61     mov   a,$61+x
13f9: 68 08     cmp   a,#$08
13fb: d0 07     bne   $1404
13fd: e8 0a     mov   a,#$0a
13ff: d4 61     mov   $61+x,a
1401: 5f a7 15  jmp   $15a7

1404: 5f 3d 13  jmp   $133d

1407: f8 5d     mov   x,$5d
1409: d4 a3     mov   $a3+x,a
140b: fd        mov   y,a
140c: f5 60 05  mov   a,$0560+x
140f: d4 9b     mov   $9b+x,a
1411: cf        mul   ya
1412: da 35     movw  $35,ya
1414: 3f 28 15  call  $1528
1417: f5 98 05  mov   a,$0598+x
141a: 30 18     bmi   $1434
141c: 5d        mov   x,a
141d: f5 06 02  mov   a,$0206+x
1420: f0 0a     beq   $142c
1422: e8 40     mov   a,#$40
1424: 75 27 02  cmp   a,$0227+x
1427: b0 05     bcs   $142e
1429: 5f 45 13  jmp   $1345

142c: e8 40     mov   a,#$40
142e: d5 27 02  mov   $0227+x,a
1431: 5f 55 14  jmp   $1455

1434: f5 a0 05  mov   a,$05a0+x
1437: c4 3d     mov   $3d,a
1439: f5 a8 05  mov   a,$05a8+x
143c: 30 04     bmi   $1442
143e: eb 5f     mov   y,$5f
1440: f0 05     beq   $1447
1442: 9c        dec   a
1443: 10 02     bpl   $1447
1445: e8 07     mov   a,#$07
1447: 5d        mov   x,a
1448: f5 fa 07  mov   a,$07fa+x
144b: c4 3f     mov   $3f,a
144d: 8f 40 3e  mov   $3e,#$40
1450: 3f 43 0c  call  $0c43
1453: 30 78     bmi   $14cd
1455: e8 01     mov   a,#$01
1457: d5 06 02  mov   $0206+x,a
145a: d8 ab     mov   $ab,x
145c: 7d        mov   a,x
145d: f8 5d     mov   x,$5d
145f: d5 a8 05  mov   $05a8+x,a
1462: f5 90 05  mov   a,$0590+x
1465: d0 0c     bne   $1473
1467: f8 5e     mov   x,$5e
1469: f4 ce     mov   a,$ce+x
146b: c4 37     mov   $37,a
146d: f4 cf     mov   a,$cf+x
146f: c4 38     mov   $38,a
1471: 2f 25     bra   $1498
1473: f8 5e     mov   x,$5e
1475: f4 ce     mov   a,$ce+x
1477: 60        clrc
1478: 94 be     adc   a,$be+x
147a: fd        mov   y,a
147b: f4 cf     mov   a,$cf+x
147d: 94 bf     adc   a,$bf+x
147f: c4 38     mov   $38,a
1481: dd        mov   a,y
1482: 60        clrc
1483: 94 ae     adc   a,$ae+x
1485: fd        mov   y,a
1486: e4 38     mov   a,$38
1488: 94 af     adc   a,$af+x
148a: c4 38     mov   $38,a
148c: dd        mov   a,y
148d: 60        clrc
148e: 94 de     adc   a,$de+x
1490: c4 37     mov   $37,a
1492: e4 38     mov   a,$38
1494: 94 df     adc   a,$df+x
1496: c4 38     mov   $38,a
1498: eb 5f     mov   y,$5f
149a: d0 0f     bne   $14ab
149c: 0b ab     asl   $ab
149e: f8 ab     mov   x,$ab
14a0: d5 48 02  mov   $0248+x,a
14a3: e4 37     mov   a,$37
14a5: d5 47 02  mov   $0247+x,a
14a8: 5f 45 13  jmp   $1345

14ab: f8 5d     mov   x,$5d
14ad: f5 68 05  mov   a,$0568+x
14b0: 60        clrc
14b1: 95 70 05  adc   a,$0570+x
14b4: 10 02     bpl   $14b8
14b6: e8 7f     mov   a,#$7f
14b8: c4 ac     mov   $ac,a
14ba: e4 60     mov   a,$60
14bc: f0 02     beq   $14c0
14be: e8 08     mov   a,#$08
14c0: 04 5d     or    a,$5d
14c2: 5d        mov   x,a
14c3: f5 78 05  mov   a,$0578+x
14c6: f8 ab     mov   x,$ab
14c8: eb ac     mov   y,$ac
14ca: 3f 6d 0c  call  $0c6d
14cd: 5f 45 13  jmp   $1345

; calculate delta expression
14d0: f8 5e     mov   x,$5e
14d2: e7 8b     mov   a,($8b+x)
14d4: bb 8b     inc   $8b+x
14d6: d0 02     bne   $14da
14d8: bb 8c     inc   $8c+x
14da: 6f        ret

; vcmd f0 - end of sequence
14db: f8 5d     mov   x,$5d
14dd: e8 0a     mov   a,#$0a
14df: d4 61     mov   $61+x,a
14e1: 5f a7 15  jmp   $15a7

; vcmd f1 - melody delta expression
14e4: 3f d0 14  call  $14d0
14e7: c4 ad     mov   $ad,a
14e9: f8 5d     mov   x,$5d
14eb: f5 70 05  mov   a,$0570+x
14ee: 3f 38 15  call  $1538
14f1: d5 70 05  mov   $0570+x,a
14f4: 5f 7b 13  jmp   $137b

; vcmd f2 - melody absolute expression
14f7: 3f d0 14  call  $14d0
14fa: f8 5d     mov   x,$5d
14fc: d5 70 05  mov   $0570+x,a
14ff: 5f 7b 13  jmp   $137b

; vcmd f3 - mute
1502: f8 5d     mov   x,$5d
1504: f5 a8 05  mov   a,$05a8+x
1507: 30 0d     bmi   $1516
1509: fd        mov   y,a
150a: f6 06 02  mov   a,$0206+y
150d: 68 80     cmp   a,#$80
150f: f0 05     beq   $1516
1511: e8 00     mov   a,#$00
1513: d6 67 02  mov   $0267+y,a
1516: 3f d0 14  call  $14d0
1519: f8 5d     mov   x,$5d
151b: d4 a3     mov   $a3+x,a
151d: f5 60 05  mov   a,$0560+x
1520: d4 9b     mov   $9b+x,a
1522: 3f 28 15  call  $1528
1525: 5f 45 13  jmp   $1345

; vcmd f4 - rest
1528: f4 61     mov   a,$61+x
152a: 68 06     cmp   a,#$06
152c: d0 05     bne   $1533
152e: e8 02     mov   a,#$02
1530: 5f 35 15  jmp   $1535

1533: e8 04     mov   a,#$04
1535: d4 61     mov   $61+x,a
1537: 6f        ret

; add the delta to the total
1538: 78 80 ad  cmp   $ad,#$80
153b: 90 08     bcc   $1545
153d: 60        clrc
153e: 84 ad     adc   a,$ad
1540: 10 09     bpl   $154b
1542: e8 00     mov   a,#$00
1544: 6f        ret

1545: 84 ad     adc   a,$ad
1547: 10 02     bpl   $154b
1549: e8 7f     mov   a,#$7f
154b: 6f        ret

; vcmd table (f0-f4)
154c: dw $14db		; f0 - end of sequence
154e: dw $14e4		; f1 - melody delta expression
1550: dw $14f7		; f2 - melody absolute expression
1552: dw $1502		; f3 - mute
1554: dw $1516		; f4 - rest

1556: 3f d0 14  call  $14d0
1559: f8 5d     mov   x,$5d
155b: d5 b0 05  mov   $05b0+x,a
155e: e8 00     mov   a,#$00
1560: d4 de     mov   $de+x,a
1562: d4 df     mov   $df+x,a
1564: f8 5d     mov   x,$5d
1566: d5 88 05  mov   $0588+x,a
1569: f8 5d     mov   x,$5d
156b: f5 90 05  mov   a,$0590+x
156e: f0 19     beq   $1589
1570: f5 b0 05  mov   a,$05b0+x
1573: 8d 12     mov   y,#$12
1575: 3f b2 0d  call  $0db2
1578: 3f 96 15  call  $1596
157b: 28 0e     and   a,#$0e
157d: fd        mov   y,a
157e: f8 5e     mov   x,$5e
1580: f7 10     mov   a,($10)+y
1582: d4 ce     mov   $ce+x,a
1584: fc        inc   y
1585: f7 10     mov   a,($10)+y
1587: d4 cf     mov   $cf+x,a
1589: 8f 20 5f  mov   $5f,#$20
158c: f8 5d     mov   x,$5d
158e: f5 88 05  mov   a,$0588+x
1591: c4 60     mov   $60,a
1593: 5f ee 13  jmp   $13ee

1596: e4 00     mov   a,$00		; fetch a random number (RNG)
1598: 1c        asl   a
1599: 44 00     eor   a,$00
159b: 1c        asl   a
159c: 1c        asl   a
159d: 1c        asl   a
159e: 2b 02     rol   $02
15a0: 2b 01     rol   $01
15a2: 2b 00     rol   $00
15a4: e4 02     mov   a,$02
15a6: 6f        ret

15a7: 3f ae 15  call  $15ae		; get current pattern command
15aa: 5d        mov   x,a
15ab: 1f 7f 16  jmp   ($167f+x)

15ae: f8 5e     mov   x,$5e		; get 1 byte
15b0: e7 7b     mov   a,($7b+x)
15b2: bb 7b     inc   $7b+x
15b4: d0 02     bne   $15b8
15b6: bb 7c     inc   $7c+x
15b8: 6f        ret

; pattern command 00/16 - end of pattern
15b9: f8 5d     mov   x,$5d
15bb: e8 0c     mov   a,#$0c
15bd: d4 61     mov   $61+x,a
15bf: 5f 97 16  jmp   $1697

; pattern command 14
15c2: 8d 00     mov   y,#$00
15c4: f8 5e     mov   x,$5e
15c6: 3f b0 15  call  $15b0
15c9: ad 10     cmp   y,#$10
15cb: b0 04     bcs   $15d1
15cd: d6 3f 05  mov   $053f+y,a
15d0: fc        inc   y
15d1: 3f b0 15  call  $15b0
15d4: 68 14     cmp   a,#$14
15d6: f0 ee     beq   $15c6
15d8: 68 16     cmp   a,#$16
15da: d0 dd     bne   $15b9
15dc: dd        mov   a,y
15dd: 5d        mov   x,a
15de: 3f 96 15  call  $1596
15e1: 8d 00     mov   y,#$00
15e3: 9e        div   ya,x
15e4: f6 3f 05  mov   a,$053f+y
15e7: 8d 10     mov   y,#$10
15e9: 3f 72 16  call  $1672
15ec: 2f 05     bra   $15f3

; pattern command 02 - play melody
15ee: 8d 10     mov   y,#$10
15f0: 3f 6d 16  call  $166d
15f3: e8 06     mov   a,#$06
15f5: d4 61     mov   $61+x,a
15f7: 5f 71 13  jmp   $1371

; pattern command 04
15fa: 8d 14     mov   y,#$14		; get 1 byte
15fc: 3f 6d 16  call  $166d
15ff: e8 08     mov   a,#$08
1601: d4 61     mov   $61+x,a
1603: 5f 56 15  jmp   $1556

; pattern command 06 - set channel tuning
1606: 3f ae 15  call  $15ae		; get 1 byte
1609: eb 5e     mov   y,$5e
160b: d6 be 00  mov   $00be+y,a
160e: 3f b0 15  call  $15b0
1611: d6 bf 00  mov   $00bf+y,a
1614: 5f a7 15  jmp   $15a7

; pattern command 08 - set instrument
1617: 3f ae 15  call  $15ae		; get 1 byte
161a: f8 5d     mov   x,$5d
161c: d5 78 05  mov   $0578+x,a
161f: 5f a7 15  jmp   $15a7

; pattern command 0a - set pitch envelope
1622: 3f ae 15  call  $15ae		; get 1 byte
1625: f8 5d     mov   x,$5d
1627: d5 80 05  mov   $0580+x,a
162a: 5f a7 15  jmp   $15a7

; pattern command 10 - set channel gain (relative?)
162d: 3f ae 15  call  $15ae		; get 1 byte
1630: c4 ad     mov   $ad,a
1632: f8 5d     mov   x,$5d
1634: f5 68 05  mov   a,$0568+x
1637: 3f 38 15  call  $1538
163a: d5 68 05  mov   $0568+x,a
163d: 5f a7 15  jmp   $15a7

; pattern command 12 - set channel gain (absolute)
1640: 3f ae 15  call  $15ae		; get 1 byte
1643: f8 5d     mov   x,$5d
1645: d5 68 05  mov   $0568+x,a
1648: 5f a7 15  jmp   $15a7

; pattern command 0c
164b: e8 ff     mov   a,#$ff
164d: f8 5d     mov   x,$5d
164f: d5 90 05  mov   $0590+x,a
1652: 5f a7 15  jmp   $15a7

; pattern command 0e - (2 bytes)
1655: 3f ae 15  call  $15ae		; get 1 byte
1658: eb 5e     mov   y,$5e
165a: d6 ce 00  mov   $00ce+y,a
165d: 3f b0 15  call  $15b0		; get another byte
1660: d6 cf 00  mov   $00cf+y,a
1663: e8 00     mov   a,#$00
1665: f8 5d     mov   x,$5d
1667: d5 90 05  mov   $0590+x,a
166a: 5f a7 15  jmp   $15a7

; get the next byte and its corresponding phrase pointer
166d: 6d        push  y
166e: 3f ae 15  call  $15ae
1671: ee        pop   y
1672: 3f b2 0d  call  $0db2
1675: f8 5e     mov   x,$5e
1677: d4 8b     mov   $8b+x,a
1679: dd        mov   a,y
167a: d4 8c     mov   $8c+x,a
167c: f8 5d     mov   x,$5d
167e: 6f        ret

; pattern command table (00-17)
167f: dw $15b9		; 00 - end of pattern
1681: dw $15ee		; 02 - play melody
1683: dw $15fa		; 04
1685: dw $1606		; 06 - set channel tuning
1687: dw $1617		; 08 - set instrument
1689: dw $1622		; 0a - set pitch envelope
168b: dw $164b		; 0c
168d: dw $1655		; 0e - (2 bytes)
168f: dw $162d		; 10 - set channel gain (relative)?
1691: dw $1640		; 12 - set channel gain (absolute)
1693: dw $15c2		; 14
1695: dw $15b9		; 16 - end of pattern (same as 00)

; melody command 00 - end of melody
1697: 3f 9e 16  call  $169e
169a: 5d        mov   x,a
169b: 1f 0e 17  jmp   ($170e+x)

169e: f8 5e     mov   x,$5e
16a0: e7 6b     mov   a,($6b+x)
16a2: bb 6b     inc   $6b+x
16a4: d0 02     bne   $16a8
16a6: bb 6c     inc   $6c+x
16a8: 6f        ret

; melody command 02 - go to loop
16a9: f8 5d     mov   x,$5d
16ab: e8 00     mov   a,#$00
16ad: d4 61     mov   $61+x,a
16af: 8b 5c     dec   $5c
16b1: 5f 45 13  jmp   $1345

; melody command 04
16b4: f8 5e     mov   x,$5e
16b6: f5 50 05  mov   a,$0550+x
16b9: d4 6b     mov   $6b+x,a
16bb: f5 51 05  mov   a,$0551+x
16be: d4 6c     mov   $6c+x,a
16c0: 5f 97 16  jmp   $1697

; melody command 06 - toggle channel mute
16c3: 3f 9e 16  call  $169e
16c6: f8 5d     mov   x,$5d
16c8: d5 60 05  mov   $0560+x,a
16cb: 5f 97 16  jmp   $1697

; melody command 08 - play phrase
16ce: 3f 9e 16  call  $169e
16d1: eb 5e     mov   y,$5e
16d3: d6 ae 00  mov   $00ae+y,a
16d6: 3f a0 16  call  $16a0
16d9: d6 af 00  mov   $00af+y,a
16dc: 5f 97 16  jmp   $1697

; melody command 0a - set channel number
16df: 3f 9e 16  call  $169e
16e2: 8d 16     mov   y,#$16
16e4: 3f b2 0d  call  $0db2
16e7: f8 5e     mov   x,$5e
16e9: d4 7b     mov   $7b+x,a
16eb: dd        mov   a,y
16ec: d4 7c     mov   $7c+x,a
16ee: f8 5d     mov   x,$5d
16f0: e8 0a     mov   a,#$0a
16f2: d4 61     mov   $61+x,a
16f4: 5f a7 15  jmp   $15a7

; melody command 0c
16f7: 3f 9e 16  call  $169e
16fa: f8 5d     mov   x,$5d
16fc: d5 98 05  mov   $0598+x,a
16ff: 68 ff     cmp   a,#$ff
1701: d0 08     bne   $170b
1703: 3f 9e 16  call  $169e
1706: f8 5d     mov   x,$5d
1708: d5 a0 05  mov   $05a0+x,a
170b: 5f 97 16  jmp   $1697

; melody command table (00-0c)
170c: dw $1697		; 00 - end of melody
170e: dw $16a9		; 02 - go to loop
1710: dw $16b4		; 04
1712: dw $16c3		; 06 - toggle channel mute
1714: dw $16ce		; 08 - play phrase
1716: dw $16df		; 0a - set channel number
1718: dw $16f3		; 0c

171a: 8d 93     mov   y,#$93
171c: f9 5a     mov   x,$5a+y
171e: f6 b7 05  mov   a,$05b7+y
1721: d6 5a 00  mov   $005a+y,a
1724: 7d        mov   a,x
1725: d6 b7 05  mov   $05b7+y,a
1728: fe f2     dbnz  y,$171c
172a: 8d 69     mov   y,#$69
172c: f6 4e 05  mov   a,$054e+y
172f: 5d        mov   x,a
1730: f6 4a 06  mov   a,$064a+y
1733: d6 4e 05  mov   $054e+y,a
1736: 7d        mov   a,x
1737: d6 4a 06  mov   $064a+y,a
173a: fe f0     dbnz  y,$172c
173c: 6f        ret

173d: 3f 46 17  call  $1746
1740: e8 01     mov   a,#$01
1742: c5 4f 05  mov   $054f,a
1745: 6f        ret

1746: 2d        push  a				; start song
1747: 3f 1a 17  call  $171a			; stop the current song
174a: ae        pop   a
174b: 8d 1a     mov   y,#$1a			; find the start of the song struct
174d: 3f b2 0d  call  $0db2
1750: da 69     movw  $69,ya
1752: 8d 00     mov   y,#$00			; get number of channels
1754: f7 69     mov   a,($69)+y
1756: c4 5b     mov   $5b,a			; save number of channels in total and current
1758: c4 5c     mov   $5c,a
175a: f0 4b     beq   $17a7			; if 0, then return
175c: 8f 00 5d  mov   $5d,#$00
175f: 8f 00 5e  mov   $5e,#$00
1762: fc        inc   y
1763: f7 69     mov   a,($69)+y
1765: 6d        push  y
1766: 8d 18     mov   y,#$18
1768: 3f b2 0d  call  $0db2
176b: f8 5e     mov   x,$5e
176d: d5 50 05  mov   $0550+x,a
1770: d4 6b     mov   $6b+x,a
1772: dd        mov   a,y
1773: ee        pop   y
1774: d5 51 05  mov   $0551+x,a
1777: d4 6c     mov   $6c+x,a
1779: e8 00     mov   a,#$00
177b: d4 ae     mov   $ae+x,a
177d: d4 af     mov   $af+x,a
177f: d4 be     mov   $be+x,a
1781: d4 bf     mov   $bf+x,a
1783: f8 5d     mov   x,$5d
1785: e8 0c     mov   a,#$0c
1787: d4 61     mov   $61+x,a
1789: e8 ff     mov   a,#$ff
178b: d5 90 05  mov   $0590+x,a
178e: d5 a8 05  mov   $05a8+x,a
1791: e8 00     mov   a,#$00
1793: d5 68 05  mov   $0568+x,a
1796: d5 70 05  mov   $0570+x,a
1799: d5 88 05  mov   $0588+x,a
179c: ab 5e     inc   $5e
179e: ab 5e     inc   $5e
17a0: 3d        inc   x
17a1: d8 5d     mov   $5d,x
17a3: 3e 5b     cmp   x,$5b
17a5: 90 bb     bcc   $1762
17a7: 6f        ret

17a8: dw $1345
17aa: dw $134e
17ac: dw $134e
17ae: dw $137b
17b0: dw $1569
17b2: dw $15a7
17b4: dw $1697
17b6: dw $0b5d
17b8: dw $0bd5
17ba: dw $174b
17bc: dw $1746
17be: dw $173d
17c0: dw $171a
17c2: dw $0790
17c4: dw $0b7c
17c6: dw $0b78
17c8: dw $0b72
17ca: dw $0b6f
17cc: dw $0b69
17ce: dw $0b8b
17d0: dw $0b96