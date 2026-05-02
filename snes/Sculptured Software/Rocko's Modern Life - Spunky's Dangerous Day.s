0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f b0 f1  mov   $f1,#$b0		; clear input ports APUI00-APUI04
0707: 8f 20 fa  mov   $fa,#$20
070a: 8f 81 f1  mov   $f1,#$81		; toggle timer 2
070d: 3f d3 0e  call  $0ed3		; clear/reset routine
0710: 8f 00 13  mov   $13,#$00
0713: 8f 1a 14  mov   $14,#$1a
0716: 8d 03     mov   y,#$03		; set temporary storage
0718: f6 02 00  mov   a,$0002+y
071b: 16 22 07  or    a,$0722+y
071e: d6 02 00  mov   $0002+y,a
0721: fe f5     dbnz  y,$0718
0723: ab 1d     inc   $1d
0725: e4 23     mov   a,$23
0727: d0 05     bne   $072e
0729: 3f 49 18  call  $1849		; do a random number generator (RNG)
072c: 2f 03     bra   $0731
072e: 3f 51 08  call  $0851
0731: e4 f6     mov   a,$f6
0733: f0 03     beq   $0738
0735: 3f 7d 0b  call  $0b7d
0738: e4 fd     mov   a,$fd
073a: 60        clrc
073b: 84 1c     adc   a,$1c
073d: c4 1c     mov   $1c,a
073f: 68 05     cmp   a,#$05
0741: 90 ee     bcc   $0731
0743: a8 05     sbc   a,#$05
0745: c4 1c     mov   $1c,a
0747: 68 14     cmp   a,#$14
0749: 90 d8     bcc   $0723
074b: 8f 00 1c  mov   $1c,#$00
074e: 2f d3     bra   $0723
0750: 8d 00     mov   y,#$00
0752: 8f aa f4  mov   $f4,#$aa
0755: 8f bb f5  mov   $f5,#$bb
0758: f8 f4     mov   x,$f4
075a: c8 cc     cmp   x,#$cc
075c: d0 fa     bne   $0758
075e: fa f6 00  mov   ($00),($f6)
0761: fa f7 01  mov   ($01),($f7)
0764: 7d        mov   a,x
0765: f8 f5     mov   x,$f5
0767: c4 f4     mov   $f4,a
0769: d0 05     bne   $0770
076b: d8 f5     mov   $f5,x
076d: 1f 00 00  jmp   ($0000+x)

0770: cd 00     mov   x,#$00
0772: 3e f4     cmp   x,$f4
0774: d0 fc     bne   $0772
0776: e4 f5     mov   a,$f5
0778: d8 f4     mov   $f4,x
077a: d7 00     mov   ($00)+y,a
077c: 3a 00     incw  $00
077e: 3e f4     cmp   x,$f4
0780: f0 fc     beq   $077e
0782: 3d        inc   x
0783: 3e f4     cmp   x,$f4
0785: f0 ef     beq   $0776
0787: f8 f4     mov   x,$f4
0789: 2f d3     bra   $075e
078b: 3f d3 0e  call  $0ed3
078e: 8f b0 f1  mov   $f1,#$b0
0791: cd 00     mov   x,#$00
0793: f5 50 07  mov   a,$0750+x
0796: d5 00 01  mov   $0100+x,a
0799: 3d        inc   x
079a: c8 3b     cmp   x,#$3b
079c: 90 f5     bcc   $0793
079e: 5f 00 01  jmp   $0100

; gain tables
07a1: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08,$06,$05,$04,$03,$02,$01
07b7: db $1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

; DSP registers: VxENVX
07cd: db $08,$18,$28,$38,$48,$58,$68,$78
; DSP registers: VxGAIN
07d5: db $07,$17,$27,$37,$47,$57,$67,$77
; DSP registers: VxSCRN (select sample)
07dd: db $04,$14,$24,$34,$44,$54,$64,$74
; DSP registers: VxPITCHL
07e5: db $02,$12,$22,$32,$42,$52,$62,$72
; DSP registers: VxVOLL
07ed: db $00,$10,$20,$30,$40,$50,$60,$70

; voice numbers and bits for clearing those void bits
07f5: db $01,$02,$04,$08,$10,$20,$40,$80,$fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo poke registers
0805: db $7d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0811: db $02,$02,$02,$02,$02,$03,$03,$03
0819: db $9e,$b3,$c8,$dd,$f2,$07,$1c,$31

0821: db $03,$03,$03,$03,$03,$03,$03,$03
0829: db $46,$5b,$70,$85,$9a,$af,$c4,$d9

0831: db $03,$04,$04,$04,$04,$04,$04,$04
0839: db $ee,$03,$18,$2d,$42,$57,$6c,$81

0841: db $04,$04,$04,$04,$04,$05,$05,$05
0849: db $96,$ac,$c2,$d8,$ee,$04,$1a,$30

0851: 3f 49 18  call  $1849			; use RNG
0854: 3f 7d 0b  call  $0b7d
0857: e5 00 02  mov   a,$0200
085a: f0 09     beq   $0865
085c: 60        clrc
085d: 85 01 02  adc   a,$0201
0860: c5 01 02  mov   $0201,a
0863: 90 06     bcc   $086b
0865: 3f 5c 14  call  $145c
0868: 3f 7d 0b  call  $0b7d
086b: 8f 00 37  mov   $37,#$00
086e: 8f 00 4c  mov   $4c,#$00
0871: 8f 7c f2  mov   $f2,#$7c			; clear end of sample flags?
0874: e4 f3     mov   a,$f3
0876: 04 49     or    a,$49
0878: 24 4f     and   a,$4f
087a: c4 49     mov   $49,a
087c: 8f 00 f3  mov   $f3,#$00
087f: 24 4a     and   a,$4a
0881: 04 4b     or    a,$4b
0883: c4 4b     mov   $4b,a
0885: cd 07     mov   x,#$07
0887: 8f 81 15  mov   $15,#$81
088a: 8f 04 16  mov   $16,#$04
088d: 3f 6c 0b  call  $0b6c
0890: d8 17     mov   $17,x
0892: f5 f5 07  mov   a,$07f5+x			; clear voice number bits
0895: c4 39     mov   $39,a
0897: 48 ff     eor   a,#$ff
0899: c4 3a     mov   $3a,a
089b: f4 5b     mov   a,$5b+x
089d: 28 02     and   a,#$02
089f: c4 38     mov   $38,a
08a1: d0 06     bne   $08a9
08a3: f5 7e 02  mov   a,$027e+x
08a6: 5f ae 08  jmp   $08ae

08a9: 3f 24 10  call  $1024
08ac: f8 17     mov   x,$17
08ae: 75 86 02  cmp   a,$0286+x
08b1: d0 10     bne   $08c3
08b3: 3f be 11  call  $11be
08b6: 3f 52 0b  call  $0b52
08b9: e4 50     mov   a,$50
08bb: 24 4d     and   a,$4d
08bd: 24 39     and   a,$39
08bf: d0 43     bne   $0904
08c1: f0 44     beq   $0907
08c3: d5 86 02  mov   $0286+x,a
08c6: 09 39 37  or    ($37),($39)
08c9: 3f be 11  call  $11be
08cc: 7d        mov   a,x
08cd: 1c        asl   a
08ce: 5d        mov   x,a
08cf: e4 51     mov   a,$51
08d1: d5 8e 02  mov   $028e+x,a
08d4: e4 52     mov   a,$52
08d6: d5 8f 02  mov   $028f+x,a
08d9: f8 17     mov   x,$17
08db: e4 53     mov   a,$53
08dd: 28 20     and   a,#$20
08df: f0 05     beq   $08e6
08e1: 29 3a 4a  and   ($4a),($3a)
08e4: 2f 03     bra   $08e9
08e6: 09 39 4a  or    ($4a),($39)
08e9: e4 53     mov   a,$53
08eb: 28 40     and   a,#$40
08ed: f0 05     beq   $08f4
08ef: 09 39 50  or    ($50),($39)
08f2: 2f 03     bra   $08f7
08f4: 29 3a 50  and   ($50),($3a)
08f7: 3f 52 0b  call  $0b52
08fa: e4 50     mov   a,$50
08fc: 04 4d     or    a,$4d
08fe: 24 39     and   a,$39
0900: d0 02     bne   $0904
0902: f0 03     beq   $0907
0904: 09 39 4c  or    ($4c),($39)
0907: 1d        dec   x
0908: 30 0a     bmi   $0914
090a: 80        setc
090b: b8 15 15  sbc   $15,#$15
090e: b8 00 16  sbc   $16,#$00
0911: 5f 8d 08  jmp   $088d

0914: e4 4d     mov   a,$4d
0916: 24 4b     and   a,$4b
0918: 04 4c     or    a,$4c
091a: c4 4e     mov   $4e,a
091c: 8f 5c f2  mov   $f2,#$5c
091f: c4 f3     mov   $f3,a
0921: cd 07     mov   x,#$07
0923: 8f 30 15  mov   $15,#$30
0926: 8f 05 16  mov   $16,#$05
0929: 8f 00 3c  mov   $3c,#$00
092c: 3f 6c 0b  call  $0b6c
092f: d8 17     mov   $17,x
0931: e4 5a     mov   a,$5a
0933: d0 13     bne   $0948
0935: f4 5b     mov   a,$5b+x
0937: 28 08     and   a,#$08
0939: c4 3c     mov   $3c,a
093b: d0 06     bne   $0943
093d: f5 76 02  mov   a,$0276+x
0940: 5f 48 09  jmp   $0948

0943: 3f 24 10  call  $1024
0946: f8 17     mov   x,$17
0948: fd        mov   y,a
0949: f5 6e 02  mov   a,$026e+x
094c: c4 31     mov   $31,a
094e: cf        mul   ya
094f: cd 64     mov   x,#$64
0951: 9e        div   ya,x
0952: f8 17     mov   x,$17
0954: eb 3c     mov   y,$3c
0956: f0 11     beq   $0969
0958: c4 2f     mov   $2f,a
095a: 8d 15     mov   y,#$15
095c: f7 15     mov   a,($15)+y
095e: d0 04     bne   $0964
0960: e4 2f     mov   a,$2f
0962: 2f 05     bra   $0969
0964: e4 31     mov   a,$31
0966: 80        setc
0967: a4 2f     sbc   a,$2f
0969: c4 2f     mov   $2f,a
096b: f5 ed 07  mov   a,$07ed+x
096e: fd        mov   y,a
096f: cb f2     mov   $f2,y
0971: fa 2f f3  mov   ($f3),($2f)
0974: e4 31     mov   a,$31
0976: 80        setc
0977: a4 2f     sbc   a,$2f
0979: fc        inc   y
097a: cb f2     mov   $f2,y
097c: c4 f3     mov   $f3,a
097e: 80        setc
097f: b8 16 15  sbc   $15,#$16
0982: b8 00 16  sbc   $16,#$00
0985: 1d        dec   x
0986: 30 03     bmi   $098b
0988: 5f 2c 09  jmp   $092c

098b: cd 07     mov   x,#$07
098d: 8f d9 15  mov   $15,#$d9
0990: 8f 03 16  mov   $16,#$03
0993: 3f 6c 0b  call  $0b6c
0996: d8 17     mov   $17,x
0998: f4 5b     mov   a,$5b+x
099a: fd        mov   y,a
099b: 28 40     and   a,#$40
099d: 0d        push  psw
099e: dd        mov   a,y
099f: 28 04     and   a,#$04
09a1: 0d        push  psw
09a2: 7d        mov   a,x
09a3: fd        mov   y,a
09a4: 1c        asl   a
09a5: 5d        mov   x,a
09a6: f5 4f 02  mov   a,$024f+x		; get base note
09a9: c4 36     mov   $36,a
09ab: f5 4e 02  mov   a,$024e+x
09ae: c4 35     mov   $35,a
09b0: 8e        pop   psw
09b1: f0 11     beq   $09c4
09b3: 4d        push  x			; save word addressing
09b4: 3f 24 10  call  $1024		; advance pitch envelope
09b7: ce        pop   x			; restore pitch flag
09b8: 7a 35     addw  ya,$35
09ba: 80        setc
09bb: a8 b0     sbc   a,#$b0
09bd: c4 35     mov   $35,a
09bf: dd        mov   a,y
09c0: a8 04     sbc   a,#$04
09c2: c4 36     mov   $36,a
09c4: f5 8f 02  mov   a,$028f+x
09c7: fd        mov   y,a
09c8: f5 8e 02  mov   a,$028e+x
09cb: 7a 35     addw  ya,$35
09cd: 8e        pop   psw
09ce: d0 03     bne   $09d3
09d0: 3f e8 11  call  $11e8		; translate note to frequency
09d3: f8 17     mov   x,$17
09d5: d5 5e 02  mov   $025e+x,a
09d8: dd        mov   a,y
09d9: d5 66 02  mov   $0266+x,a
09dc: 80        setc
09dd: b8 15 15  sbc   $15,#$15
09e0: b8 00 16  sbc   $16,#$00
09e3: 1d        dec   x
09e4: 10 ad     bpl   $0993
09e6: 8f 5c f2  mov   $f2,#$5c
09e9: 8f 00 f3  mov   $f3,#$00
09ec: cd 07     mov   x,#$07
09ee: 8f 31 15  mov   $15,#$31
09f1: 8f 03 16  mov   $16,#$03
09f4: 3f 6c 0b  call  $0b6c
09f7: d8 17     mov   $17,x
09f9: f5 f5 07  mov   a,$07f5+x
09fc: c4 39     mov   $39,a
09fe: 48 ff     eor   a,#$ff
0a00: c4 3a     mov   $3a,a
0a02: f4 5b     mov   a,$5b+x
0a04: 28 01     and   a,#$01
0a06: d0 06     bne   $0a0e
0a08: f5 36 02  mov   a,$0236+x
0a0b: 5f 13 0a  jmp   $0a13

0a0e: 3f 24 10  call  $1024
0a11: f8 17     mov   x,$17
0a13: d5 3e 02  mov   $023e+x,a
0a16: fd        mov   y,a
0a17: e4 37     mov   a,$37
0a19: 24 39     and   a,$39
0a1b: f0 0a     beq   $0a27
0a1d: f5 dd 07  mov   a,$07dd+x
0a20: c4 f2     mov   $f2,a
0a22: f5 86 02  mov   a,$0286+x
0a25: c4 f3     mov   $f3,a
0a27: e4 48     mov   a,$48
0a29: 24 39     and   a,$39
0a2b: f0 05     beq   $0a32
0a2d: 29 3a 48  and   ($48),($3a)
0a30: 2f 35     bra   $0a67
0a32: f5 cd 07  mov   a,$07cd+x
0a35: c4 f2     mov   $f2,a
0a37: dd        mov   a,y
0a38: 80        setc
0a39: a4 f3     sbc   a,$f3
0a3b: b0 08     bcs   $0a45
0a3d: 8f 80 2a  mov   $2a,#$80
0a40: 48 ff     eor   a,#$ff
0a42: bc        inc   a
0a43: 2f 03     bra   $0a48
0a45: 8f c0 2a  mov   $2a,#$c0
0a48: 5c        lsr   a
0a49: d0 08     bne   $0a53
0a4b: ad 00     cmp   y,#$00
0a4d: d0 04     bne   $0a53
0a4f: e8 82     mov   a,#$82
0a51: 2f 0e     bra   $0a61
0a53: 8d 15     mov   y,#$15
0a55: 76 a1 07  cmp   a,$07a1+y
0a58: 90 02     bcc   $0a5c
0a5a: fe f9     dbnz  y,$0a55
0a5c: f6 b7 07  mov   a,$07b7+y
0a5f: 04 2a     or    a,$2a
0a61: 75 46 02  cmp   a,$0246+x
0a64: f0 0c     beq   $0a72
0a66: fd        mov   y,a
0a67: f5 d5 07  mov   a,$07d5+x
0a6a: c4 f2     mov   $f2,a
0a6c: cb f3     mov   $f3,y
0a6e: dd        mov   a,y
0a6f: d5 46 02  mov   $0246+x,a
0a72: f5 e5 07  mov   a,$07e5+x
0a75: c4 f2     mov   $f2,a
0a77: fd        mov   y,a
0a78: f5 5e 02  mov   a,$025e+x
0a7b: c4 f3     mov   $f3,a
0a7d: fc        inc   y
0a7e: cb f2     mov   $f2,y
0a80: f5 66 02  mov   a,$0266+x
0a83: c4 f3     mov   $f3,a
0a85: 80        setc
0a86: b8 15 15  sbc   $15,#$15
0a89: b8 00 16  sbc   $16,#$00
0a8c: 1d        dec   x
0a8d: 30 03     bmi   $0a92
0a8f: 5f f4 09  jmp   $09f4

0a92: 8f 4c f2  mov   $f2,#$4c
0a95: fa 4e f3  mov   ($f3),($4e)
0a98: e4 4e     mov   a,$4e
0a9a: 48 ff     eor   a,#$ff
0a9c: c4 4f     mov   $4f,a
0a9e: 29 4f 49  and   ($49),($4f)
0aa1: 29 4f 4b  and   ($4b),($4f)
0aa4: 8f 00 4d  mov   $4d,#$00
0aa7: 3f 7d 0b  call  $0b7d
0aaa: cd 07     mov   x,#$07
0aac: 8d 0e     mov   y,#$0e
0aae: f5 0d 02  mov   a,$020d+x
0ab1: f0 2b     beq   $0ade
0ab3: f4 5b     mov   a,$5b+x
0ab5: 28 80     and   a,#$80
0ab7: f0 09     beq   $0ac2
0ab9: f5 f5 07  mov   a,$07f5+x
0abc: 24 49     and   a,$49
0abe: d0 19     bne   $0ad9
0ac0: 2f 1c     bra   $0ade
0ac2: f6 1e 02  mov   a,$021e+y
0ac5: 80        setc
0ac6: a8 01     sbc   a,#$01
0ac8: d6 1e 02  mov   $021e+y,a
0acb: c4 2f     mov   $2f,a
0acd: f6 1f 02  mov   a,$021f+y
0ad0: a8 00     sbc   a,#$00
0ad2: d6 1f 02  mov   $021f+y,a
0ad5: 04 2f     or    a,$2f
0ad7: d0 05     bne   $0ade
0ad9: e8 00     mov   a,#$00
0adb: d5 0d 02  mov   $020d+x,a
0ade: dc        dec   y
0adf: dc        dec   y
0ae0: 1d        dec   x
0ae1: 10 cb     bpl   $0aae
0ae3: 3f 6c 0b  call  $0b6c
0ae6: ec 07 02  mov   y,$0207
0ae9: f0 66     beq   $0b51
0aeb: 8c 08 02  dec   $0208
0aee: d0 61     bne   $0b51
0af0: cc 08 02  mov   $0208,y
0af3: e4 1e     mov   a,$1e
0af5: e9 09 02  mov   x,$0209
0af8: 30 0e     bmi   $0b08
0afa: 60        clrc
0afb: 85 0a 02  adc   a,$020a
0afe: b0 04     bcs   $0b04
0b00: 68 7f     cmp   a,#$7f
0b02: 90 13     bcc   $0b17
0b04: e8 7f     mov   a,#$7f
0b06: 2f 0a     bra   $0b12
0b08: 80        setc
0b09: a5 0a 02  sbc   a,$020a
0b0c: f0 04     beq   $0b12
0b0e: b0 07     bcs   $0b17
0b10: e8 00     mov   a,#$00
0b12: 8d 00     mov   y,#$00
0b14: cc 07 02  mov   $0207,y
0b17: c4 1e     mov   $1e,a
0b19: 5d        mov   x,a
0b1a: 8f 2c f2  mov   $f2,#$2c
0b1d: 65 0b 02  cmp   a,$020b
0b20: 90 03     bcc   $0b25
0b22: e5 0b 02  mov   a,$020b
0b25: c4 f3     mov   $f3,a
0b27: 8f 3c f2  mov   $f2,#$3c
0b2a: 7d        mov   a,x
0b2b: 65 0c 02  cmp   a,$020c
0b2e: 90 03     bcc   $0b33
0b30: e5 0b 02  mov   a,$020b
0b33: c4 f3     mov   $f3,a
0b35: 8f 0c f2  mov   $f2,#$0c
0b38: d8 f3     mov   $f3,x
0b3a: 8f 1c f2  mov   $f2,#$1c
0b3d: d8 f3     mov   $f3,x
0b3f: e5 07 02  mov   a,$0207
0b42: d0 0d     bne   $0b51
0b44: e5 06 02  mov   a,$0206
0b47: f0 08     beq   $0b51
0b49: 8f 00 64  mov   $64,#$00
0b4c: 8d 80     mov   y,#$80
0b4e: 5f 49 0c  jmp   $0c49

0b51: 6f        ret

0b52: e4 53     mov   a,$53
0b54: 10 0c     bpl   $0b62
0b56: 28 1f     and   a,#$1f
0b58: 8f 6c f2  mov   $f2,#$6c
0b5b: c4 f3     mov   $f3,a
0b5d: 09 39 55  or    ($55),($39)
0b60: 2f 03     bra   $0b65
0b62: 29 3a 55  and   ($55),($3a)
0b65: 8f 3d f2  mov   $f2,#$3d
0b68: fa 55 f3  mov   ($f3),($55)
0b6b: 6f        ret

0b6c: 4d        push  x
0b6d: e4 f6     mov   a,$f6
0b6f: f0 4c     beq   $0bbd
0b71: f8 f7     mov   x,$f7
0b73: c8 1e     cmp   x,#$1e
0b75: 90 46     bcc   $0bbd
0b77: c8 23     cmp   x,#$23
0b79: b0 42     bcs   $0bbd
0b7b: 2f 05     bra   $0b82
0b7d: 4d        push  x
0b7e: e4 f6     mov   a,$f6
0b80: f0 3b     beq   $0bbd
0b82: e4 f6     mov   a,$f6
0b84: 64 f6     cmp   a,$f6
0b86: d0 fa     bne   $0b82
0b88: c4 1f     mov   $1f,a
0b8a: fa f4 21  mov   ($21),($f4)
0b8d: fa f5 22  mov   ($22),($f5)
0b90: e4 f7     mov   a,$f7
0b92: 28 fe     and   a,#$fe
0b94: c4 20     mov   $20,a
0b96: 8f b1 f1  mov   $f1,#$b1
0b99: 28 fe     and   a,#$fe
0b9b: c4 20     mov   $20,a
0b9d: 68 20     cmp   a,#$20
0b9f: f0 07     beq   $0ba8
0ba1: 68 22     cmp   a,#$22
0ba3: f0 03     beq   $0ba8
0ba5: fa 1f f6  mov   ($f6),($1f)
0ba8: 5d        mov   x,a
0ba9: c8 29     cmp   x,#$29
0bab: b0 10     bcs   $0bbd
0bad: e4 21     mov   a,$21
0baf: eb 22     mov   y,$22
0bb1: 3f bf 0b  call  $0bbf
0bb4: fa 21 f4  mov   ($f4),($21)
0bb7: fa 22 f5  mov   ($f5),($22)
0bba: fa 20 f7  mov   ($f7),($20)
0bbd: ce        pop   x
0bbe: 6f        ret

0bbf: 1f 54 19  jmp   ($1954+x)

0bc2: 3f 0f 0f  call  $0f0f
0bc5: e8 01     mov   a,#$01
0bc7: 8d 08     mov   y,#$08
0bc9: cd 01     mov   x,#$01
0bcb: 3f e7 0b  call  $0be7
0bce: 8f 6c f2  mov   $f2,#$6c
0bd1: 8f 00 f3  mov   $f3,#$00
0bd4: 8f ff 23  mov   $23,#$ff
0bd7: 6f        ret

0bd8: da 42     movw  $42,ya
0bda: 8f ff 41  mov   $41,#$ff
0bdd: 6f        ret

0bde: c4 5a     mov   $5a,a
0be0: 6f        ret

0be1: e8 00     mov   a,#$00
0be3: c5 07 02  mov   $0207,a
0be6: 6f        ret

0be7: cd 01     mov   x,#$01
0be9: 2d        push  a
0bea: e8 00     mov   a,#$00
0bec: c5 06 02  mov   $0206,a
0bef: ae        pop   a
0bf0: 2f 02     bra   $0bf4
0bf2: cd ff     mov   x,#$ff
0bf4: c5 07 02  mov   $0207,a
0bf7: c5 08 02  mov   $0208,a
0bfa: cc 0a 02  mov   $020a,y
0bfd: c9 09 02  mov   $0209,x
0c00: 6f        ret

0c01: 8d ff     mov   y,#$ff
0c03: cc 05 02  mov   $0205,y
0c06: 5f a0 0c  jmp   $0ca0

0c09: 3f 5a 18  call  $185a
0c0c: e5 fc 19  mov   a,$19fc
0c0f: c5 35 06  mov   $0635,a
0c12: e5 fd 19  mov   a,$19fd
0c15: c5 36 06  mov   $0636,a
0c18: 05 35 06  or    a,$0635
0c1b: f0 20     beq   $0c3d
0c1d: 3f 5c 14  call  $145c
0c20: e5 35 06  mov   a,$0635
0c23: 80        setc
0c24: a8 01     sbc   a,#$01
0c26: c5 35 06  mov   $0635,a
0c29: e5 36 06  mov   a,$0636
0c2c: a8 00     sbc   a,#$00
0c2e: c5 36 06  mov   $0636,a
0c31: b0 ea     bcs   $0c1d
0c33: cd 07     mov   x,#$07
0c35: e8 00     mov   a,#$00
0c37: d5 6e 02  mov   $026e+x,a
0c3a: 1d        dec   x
0c3b: 10 fa     bpl   $0c37
0c3d: 6f        ret

0c3e: 8f 00 64  mov   $64,#$00
0c41: 68 00     cmp   a,#$00
0c43: d0 03     bne   $0c48
0c45: c5 46 05  mov   $0546,a
0c48: 6f        ret

0c49: c5 1d 02  mov   $021d,a
0c4c: cd 07     mov   x,#$07
0c4e: ad 80     cmp   y,#$80
0c50: f0 17     beq   $0c69
0c52: e8 01     mov   a,#$01
0c54: b0 0e     bcs   $0c64
0c56: ad 00     cmp   y,#$00
0c58: d0 08     bne   $0c62
0c5a: e5 1d 02  mov   a,$021d
0c5d: 75 15 02  cmp   a,$0215+x
0c60: d0 23     bne   $0c85
0c62: e8 80     mov   a,#$80
0c64: 75 0d 02  cmp   a,$020d+x
0c67: d0 1c     bne   $0c85
0c69: f5 d5 07  mov   a,$07d5+x
0c6c: c4 f2     mov   $f2,a
0c6e: e8 00     mov   a,#$00
0c70: 8f 9f f3  mov   $f3,#$9f
0c73: d5 36 02  mov   $0236+x,a
0c76: d5 0d 02  mov   $020d+x,a
0c79: d5 7e 02  mov   $027e+x,a
0c7c: d4 5b     mov   $5b+x,a
0c7e: f5 f5 07  mov   a,$07f5+x
0c81: 04 4d     or    a,$4d
0c83: c4 4d     mov   $4d,a
0c85: 1d        dec   x
0c86: 10 c6     bpl   $0c4e
0c88: 6f        ret

0c89: 2d        push  a
0c8a: e8 00     mov   a,#$00
0c8c: c5 06 02  mov   $0206,a
0c8f: ae        pop   a
0c90: 5f f2 0b  jmp   $0bf2

0c93: 2d        push  a
0c94: e8 01     mov   a,#$01
0c96: c5 06 02  mov   $0206,a
0c99: ae        pop   a
0c9a: 5f f2 0b  jmp   $0bf2

0c9d: cc 05 02  mov   $0205,y
0ca0: 8d 0e     mov   y,#$0e
0ca2: c5 1d 02  mov   $021d,a
0ca5: 3f b2 0e  call  $0eb2
0ca8: da 11     movw  $11,ya
0caa: 8d 00     mov   y,#$00
0cac: f7 11     mov   a,($11)+y
0cae: c4 44     mov   $44,a
0cb0: 3a 11     incw  $11
0cb2: 8d 07     mov   y,#$07
0cb4: f7 11     mov   a,($11)+y
0cb6: c4 45     mov   $45,a
0cb8: 8d 06     mov   y,#$06
0cba: f7 11     mov   a,($11)+y
0cbc: c4 46     mov   $46,a
0cbe: 8f 80 47  mov   $47,#$80
0cc1: cd 07     mov   x,#$07
0cc3: 3f 16 0d  call  $0d16
0cc6: 30 3e     bmi   $0d06
0cc8: e8 80     mov   a,#$80
0cca: d5 0d 02  mov   $020d+x,a
0ccd: e5 1d 02  mov   a,$021d
0cd0: d5 15 02  mov   $0215+x,a
0cd3: 8d 02     mov   y,#$02
0cd5: f7 11     mov   a,($11)+y
0cd7: c4 3d     mov   $3d,a
0cd9: fc        inc   y
0cda: f7 11     mov   a,($11)+y
0cdc: c4 3e     mov   $3e,a
0cde: 8d 04     mov   y,#$04
0ce0: f7 11     mov   a,($11)+y
0ce2: c4 3f     mov   $3f,a
0ce4: fc        inc   y
0ce5: f7 11     mov   a,($11)+y
0ce7: c4 40     mov   $40,a
0ce9: e4 41     mov   a,$41
0ceb: f0 04     beq   $0cf1
0ced: ba 42     movw  ya,$42
0cef: da 3f     movw  $3f,ya
0cf1: 8d 01     mov   y,#$01
0cf3: f7 11     mov   a,($11)+y
0cf5: 2d        push  a
0cf6: 8d 00     mov   y,#$00
0cf8: f7 11     mov   a,($11)+y
0cfa: 8d 01     mov   y,#$01
0cfc: cc 04 02  mov   $0204,y
0cff: ee        pop   y
0d00: 8f 00 cf  mov   $cf,#$00
0d03: 3f 40 0d  call  $0d40
0d06: 60        clrc
0d07: 98 08 11  adc   $11,#$08
0d0a: 90 02     bcc   $0d0e
0d0c: ab 12     inc   $12
0d0e: 8b 44     dec   $44
0d10: d0 a0     bne   $0cb2
0d12: 8f 00 41  mov   $41,#$00
0d15: 6f        ret

0d16: 8d 07     mov   y,#$07
0d18: e4 47     mov   a,$47
0d1a: 24 45     and   a,$45
0d1c: f0 0c     beq   $0d2a
0d1e: f5 0d 02  mov   a,$020d+x
0d21: f0 15     beq   $0d38
0d23: e4 46     mov   a,$46
0d25: 75 2e 02  cmp   a,$022e+x
0d28: b0 10     bcs   $0d3a
0d2a: 4b 47     lsr   $47
0d2c: d0 05     bne   $0d33
0d2e: 8f 80 47  mov   $47,#$80
0d31: cd 08     mov   x,#$08
0d33: 1d        dec   x
0d34: dc        dec   y
0d35: 10 e1     bpl   $0d18
0d37: 6f        ret

0d38: e4 46     mov   a,$46
0d3a: d5 2e 02  mov   $022e+x,a
0d3d: e8 00     mov   a,#$00
0d3f: 6f        ret

0d40: d8 3b     mov   $3b,x			; play sound (instrument)
0d42: 2d        push  a
0d43: e4 cf     mov   a,$cf
0d45: d0 08     bne   $0d4f
0d47: f5 d5 07  mov   a,$07d5+x
0d4a: c4 f2     mov   $f2,a
0d4c: 8f 9f f3  mov   $f3,#$9f
0d4f: dd        mov   a,y
0d50: d5 6e 02  mov   $026e+x,a
0d53: 7d        mov   a,x
0d54: 1c        asl   a
0d55: 5d        mov   x,a
0d56: e4 3f     mov   a,$3f
0d58: d5 4e 02  mov   $024e+x,a
0d5b: e4 40     mov   a,$40
0d5d: d5 4f 02  mov   $024f+x,a
0d60: e4 3d     mov   a,$3d
0d62: d5 1e 02  mov   $021e+x,a
0d65: e4 3e     mov   a,$3e
0d67: d5 1f 02  mov   $021f+x,a
0d6a: ae        pop   a
0d6b: 8d 02     mov   y,#$02
0d6d: 3f b2 0e  call  $0eb2
0d70: da 0f     movw  $0f,ya			;get current voice and instrument
0d72: f8 3b     mov   x,$3b
0d74: f5 f5 07  mov   a,$07f5+x			;get channel bit mask ID
0d77: c4 56     mov   $56,a
0d79: 48 ff     eor   a,#$ff			;and store inversion
0d7b: c4 57     mov   $57,a
0d7d: 8d 00     mov   y,#$00			;get mode flags
0d7f: f7 0f     mov   a,($0f)+y
0d81: 2d        push  a
0d82: e5 05 02  mov   a,$0205
0d85: 30 0a     bmi   $0d91
0d87: ae        pop   a
0d88: 2d        push  a
0d89: 28 08     and   a,#$08
0d8b: f0 04     beq   $0d91
0d8d: ae        pop   a
0d8e: 48 08     eor   a,#$08
0d90: 2d        push  a
0d91: ae        pop   a
0d92: d4 5b     mov   $5b+x,a
0d94: c4 3c     mov   $3c,a
0d96: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0d98: f0 05     beq   $0d9f			; if not...
0d9a: 09 56 58  or    ($58),($56)		; turn pitch mod on
0d9d: 2f 03     bra   $0da2
0d9f: 29 57 58  and   ($58),($57)		; turn pitch mod off

0da2: 8f 2d f2  mov   $f2,#$2d
0da5: fa 58 f3  mov   ($f3),($58)
0da8: e4 cf     mov   a,$cf
0daa: d0 3e     bne   $0dea
0dac: e4 3c     mov   a,$3c			; retrieve the saved flag
0dae: 28 10     and   a,#$10			; is echo enabled? ($10 = echo)
0db0: f0 2f     beq   $0de1			; if not...
0db2: 8d 05     mov   y,#$05			; get echo byte from sound
0db4: f7 0f     mov   a,($0f)+y
0db6: 8d 0c     mov   y,#$0c
0db8: 3f b2 0e  call  $0eb2
0dbb: 8d 00     mov   y,#$00
0dbd: f6 05 08  mov   a,$0805+y			; get the echo register values to "poke"
0dc0: c4 f2     mov   $f2,a			; (from the table)
0dc2: f7 18     mov   a,($18)+y			; now get info to feed to the registers
0dc4: ad 01     cmp   y,#$01			; (from the echo environment)
0dc6: f0 04     beq   $0dcc
0dc8: ad 02     cmp   y,#$02
0dca: d0 09     bne   $0dd5
0dcc: d6 0a 02  mov   $020a+y,a
0dcf: 64 1e     cmp   a,$1e
0dd1: 90 02     bcc   $0dd5
0dd3: e4 1e     mov   a,$1e
0dd5: c4 f3     mov   $f3,a
0dd7: fc        inc   y
0dd8: ad 0c     cmp   y,#$0c			; repeat for every byte of the array
0dda: 90 e1     bcc   $0dbd
0ddc: 09 56 59  or    ($59),($56)
0ddf: 2f 03     bra   $0de4
0de1: 29 57 59  and   ($59),($57)		; send the echo unit
0de4: 8f 4d f2  mov   $f2,#$4d
0de7: fa 59 f3  mov   ($f3),($59)
0dea: e4 3c     mov   a,$3c
0dec: 28 01     and   a,#$01
0dee: 0d        push  psw
0def: 8d 01     mov   y,#$01
0df1: f7 0f     mov   a,($0f)+y			; now get the amplitude
0df3: 8e        pop   psw
0df4: d0 08     bne   $0dfe
0df6: f8 3b     mov   x,$3b
0df8: d5 36 02  mov   $0236+x,a
0dfb: 5f 14 0e  jmp   $0e14

0dfe: 8d 04     mov   y,#$04
0e00: 3f b2 0e  call  $0eb2
0e03: f8 3b     mov   x,$3b
0e05: f5 19 08  mov   a,$0819+x
0e08: c4 15     mov   $15,a
0e0a: f5 11 08  mov   a,$0811+x
0e0d: c4 16     mov   $16,a
0e0f: ba 3d     movw  ya,$3d
0e11: 3f 89 0f  call  $0f89
0e14: e4 3c     mov   a,$3c
0e16: 28 04     and   a,#$04
0e18: f0 1a     beq   $0e34
0e1a: 8d 03     mov   y,#$03
0e1c: f7 0f     mov   a,($0f)+y
0e1e: 8d 06     mov   y,#$06
0e20: 3f b2 0e  call  $0eb2
0e23: f8 3b     mov   x,$3b
0e25: f5 29 08  mov   a,$0829+x
0e28: c4 15     mov   $15,a
0e2a: f5 21 08  mov   a,$0821+x
0e2d: c4 16     mov   $16,a
0e2f: ba 3d     movw  ya,$3d
0e31: 3f 89 0f  call  $0f89
0e34: e4 cf     mov   a,$cf
0e36: d0 76     bne   $0eae
0e38: e5 05 02  mov   a,$0205
0e3b: 10 0c     bpl   $0e49
0e3d: e4 3c     mov   a,$3c
0e3f: 28 08     and   a,#$08
0e41: 0d        push  psw
0e42: 8d 04     mov   y,#$04
0e44: f7 0f     mov   a,($0f)+y
0e46: 8e        pop   psw
0e47: d0 08     bne   $0e51
0e49: f8 3b     mov   x,$3b
0e4b: d5 76 02  mov   $0276+x,a
0e4e: 5f 7e 0e  jmp   $0e7e

0e51: 8d 08     mov   y,#$08
0e53: 3f b2 0e  call  $0eb2
0e56: f8 3b     mov   x,$3b
0e58: f5 49 08  mov   a,$0849+x
0e5b: c4 15     mov   $15,a
0e5d: f5 41 08  mov   a,$0841+x
0e60: c4 16     mov   $16,a
0e62: ba 3d     movw  ya,$3d
0e64: 3f 89 0f  call  $0f89
0e67: 8d 07     mov   y,#$07
0e69: f7 15     mov   a,($15)+y
0e6b: f0 0b     beq   $0e78
0e6d: 8d 15     mov   y,#$15
0e6f: f7 15     mov   a,($15)+y
0e71: d0 05     bne   $0e78
0e73: e8 ff     mov   a,#$ff
0e75: 5f 7a 0e  jmp   $0e7a

0e78: e8 00     mov   a,#$00
0e7a: 8d 15     mov   y,#$15
0e7c: d7 15     mov   ($15)+y,a
0e7e: e4 3c     mov   a,$3c
0e80: 28 02     and   a,#$02
0e82: 0d        push  psw
0e83: 8d 02     mov   y,#$02
0e85: f7 0f     mov   a,($0f)+y
0e87: 8e        pop   psw
0e88: d0 08     bne   $0e92
0e8a: f8 3b     mov   x,$3b
0e8c: d5 7e 02  mov   $027e+x,a
0e8f: 5f a8 0e  jmp   $0ea8

0e92: 8d 0a     mov   y,#$0a
0e94: 3f b2 0e  call  $0eb2
0e97: f8 3b     mov   x,$3b
0e99: f5 39 08  mov   a,$0839+x
0e9c: c4 15     mov   $15,a
0e9e: f5 31 08  mov   a,$0831+x
0ea1: c4 16     mov   $16,a
0ea3: ba 3d     movw  ya,$3d
0ea5: 3f 89 0f  call  $0f89
0ea8: 09 56 4d  or    ($4d),($56)
0eab: 09 56 48  or    ($48),($56)
0eae: 8f 00 cf  mov   $cf,#$00
0eb1: 6f        ret

0eb2: 8f 00 0e  mov   $0e,#$00		; load current song/sfx/etc. address into stack
0eb5: 1c        asl   a
0eb6: 2b 0e     rol   $0e
0eb8: 60        clrc
0eb9: 96 e0 19  adc   a,$19e0+y
0ebc: c4 0d     mov   $0d,a
0ebe: e4 0e     mov   a,$0e
0ec0: 96 e1 19  adc   a,$19e1+y
0ec3: c4 0e     mov   $0e,a
0ec5: 8d 01     mov   y,#$01
0ec7: f7 0d     mov   a,($0d)+y
0ec9: c4 19     mov   $19,a
0ecb: dc        dec   y
0ecc: f7 0d     mov   a,($0d)+y
0ece: c4 18     mov   $18,a
0ed0: eb 19     mov   y,$19
0ed2: 6f        ret

0ed3: cd 3e     mov   x,#$3e
0ed5: 8d 0f     mov   y,#$0f
0ed7: 3f 27 0f  call  $0f27
0eda: e8 00     mov   a,#$00
0edc: fd        mov   y,a
0edd: c4 00     mov   $00,a
0edf: 8f 02 01  mov   $01,#$02
0ee2: d7 00     mov   ($00)+y,a
0ee4: 3a 00     incw  $00
0ee6: 78 07 01  cmp   $01,#$07
0ee9: 90 f7     bcc   $0ee2
0eeb: d6 00 00  mov   $0000+y,a
0eee: fc        inc   y
0eef: ad f0     cmp   y,#$f0
0ef1: 90 f8     bcc   $0eeb
0ef3: 8d 00     mov   y,#$00
0ef5: 60        clrc
0ef6: d6 8a 00  mov   $008a+y,a
0ef9: 88 19     adc   a,#$19
0efb: fc        inc   y
0efc: ad 08     cmp   y,#$08
0efe: d0 f6     bne   $0ef6
0f00: 9c        dec   a
0f01: c4 49     mov   $49,a
0f03: c4 4b     mov   $4b,a
0f05: c4 50     mov   $50,a
0f07: c4 4a     mov   $4a,a
0f09: c4 4f     mov   $4f,a
0f0b: 8f 00 1e  mov   $1e,#$00
0f0e: 6f        ret

0f0f: e5 e1 19  mov   a,$19e1
0f12: 8f 6d f2  mov   $f2,#$6d
0f15: c4 f3     mov   $f3,a
0f17: c4 01     mov   $01,a
0f19: e8 00     mov   a,#$00
0f1b: fd        mov   y,a
0f1c: c4 00     mov   $00,a
0f1e: d7 00     mov   ($00)+y,a
0f20: fe fc     dbnz  y,$0f1e
0f22: ab 01     inc   $01
0f24: d0 f8     bne   $0f1e
0f26: 6f        ret

0f27: d8 00     mov   $00,x
0f29: cb 01     mov   $01,y
0f2b: 8d 00     mov   y,#$00
0f2d: f7 00     mov   a,($00)+y
0f2f: 68 ff     cmp   a,#$ff
0f31: f0 0a     beq   $0f3d
0f33: c4 f2     mov   $f2,a
0f35: fc        inc   y
0f36: f7 00     mov   a,($00)+y
0f38: c4 f3     mov   $f3,a
0f3a: fc        inc   y
0f3b: d0 f0     bne   $0f2d
0f3d: 6f        ret

; pre-defined DSP flags
0f3e: db $6c,$3f			; clear flags
0f40: db $3d,$00			; turn off noise generator (NON)
0f42: db $4d,$00			; turn off echo (EON)
0f44: db $7d,$00			; turn off echo delay time (EDL)
0f46: db $6d,$ff			; pointer to echo memory (ESA)
0f48: db $5d,$1a			; set source directory offset
0f4a: db $5c,$00			; set key off (KOFF)
0f4c: db $2d,$00			; disable pitch modulation (PMON)
0f4e: db $05,$00			; set ASDR (1) (channel 1)
0f50: db $15,$00			; set ASDR (1) (channel 2)
0f52: db $25,$00			; set ASDR (1) (channel 3)
0f54: db $35,$00			; set ASDR (1) (channel 4)
0f56: db $45,$00			; set ASDR (1) (channel 5)
0f58: db $55,$00			; set ASDR (1) (channel 6)
0f5a: db $65,$00			; set ASDR (1) (channel 7)
0f5c: db $75,$00			; set ASDR (1) (channel 8)
0f5e: db $07,$00			; set GAIN (channel 1)
0f60: db $17,$00			; set GAIN (channel 2)
0f62: db $27,$00			; set GAIN (channel 3)
0f64: db $37,$00			; set GAIN (channel 4)
0f66: db $47,$00			; set GAIN (channel 5)
0f68: db $57,$00			; set GAIN (channel 6)
0f6a: db $67,$00			; set GAIN (channel 7)
0f6c: db $77,$00			; set GAIN (channel 8)
0f6e: db $7c,$00			; end of sample flag
0f70: db $2c,$00			; turn off EVOLL
0f72: db $3c,$00			; turn off EVOLR
0f74: db $0c,$00			; turn off MVOLL
0f76: db $1c,$00			; turn off MVOLR
0f78: db $04,$00			; set source number (channel 1)
0f7a: db $14,$00			; set source number (channel 2)
0f7c: db $24,$00			; set source number (channel 3)
0f7e: db $34,$00			; set source number (channel 4)
0f80: db $44,$00			; set source number (channel 5)
0f82: db $54,$00			; set source number (channel 6)
0f84: db $64,$00			; set source number (channel 7)
0f86: db $74,$00			; set source number (channel 8)
0f88: db $ff

0f89: da 2f     movw  $2f,ya
0f8b: 8d 07     mov   y,#$07
0f8d: f7 18     mov   a,($18)+y
0f8f: d7 15     mov   ($15)+y,a
0f91: dc        dec   y
0f92: 10 f9     bpl   $0f8d
0f94: e4 18     mov   a,$18
0f96: 60        clrc
0f97: 88 08     adc   a,#$08
0f99: 8d 08     mov   y,#$08
0f9b: d7 15     mov   ($15)+y,a
0f9d: e4 19     mov   a,$19
0f9f: 88 00     adc   a,#$00
0fa1: fc        inc   y
0fa2: d7 15     mov   ($15)+y,a
0fa4: 8d 03     mov   y,#$03
0fa6: f7 15     mov   a,($15)+y
0fa8: 5d        mov   x,a
0fa9: 8d 02     mov   y,#$02
0fab: f7 15     mov   a,($15)+y
0fad: fd        mov   y,a
0fae: 7d        mov   a,x
0faf: cf        mul   ya
0fb0: da 33     movw  $33,ya
0fb2: 4d        push  x
0fb3: ba 2f     movw  ya,$2f
0fb5: e9 04 02  mov   x,$0204
0fb8: d0 1d     bne   $0fd7
0fba: 6d        push  y
0fbb: 5d        mov   x,a
0fbc: e5 02 02  mov   a,$0202
0fbf: ec 03 02  mov   y,$0203
0fc2: 3f 16 16  call  $1616
0fc5: da 31     movw  $31,ya
0fc7: ce        pop   x
0fc8: e5 02 02  mov   a,$0202
0fcb: ec 03 02  mov   y,$0203
0fce: 3f 16 16  call  $1616
0fd1: 60        clrc
0fd2: 84 32     adc   a,$32
0fd4: fd        mov   y,a
0fd5: e4 31     mov   a,$31
0fd7: ce        pop   x
0fd8: 9a 33     subw  ya,$33
0fda: b0 03     bcs   $0fdf
0fdc: e8 00     mov   a,#$00
0fde: fd        mov   y,a
0fdf: cb 34     mov   $34,y
0fe1: 8d 0d     mov   y,#$0d
0fe3: d7 15     mov   ($15)+y,a
0fe5: fc        inc   y
0fe6: e4 34     mov   a,$34
0fe8: d7 15     mov   ($15)+y,a
0fea: 8d 03     mov   y,#$03
0fec: f7 15     mov   a,($15)+y
0fee: bc        inc   a
0fef: 8d 0f     mov   y,#$0f
0ff1: d7 15     mov   ($15)+y,a
0ff3: 68 03     cmp   a,#$03
0ff5: b0 06     bcs   $0ffd
0ff7: 8d 04     mov   y,#$04
0ff9: e8 00     mov   a,#$00
0ffb: d7 15     mov   ($15)+y,a
0ffd: 8d 08     mov   y,#$08
0fff: f7 15     mov   a,($15)+y
1001: 8d 0a     mov   y,#$0a
1003: d7 15     mov   ($15)+y,a
1005: 8d 09     mov   y,#$09
1007: f7 15     mov   a,($15)+y
1009: 8d 0b     mov   y,#$0b
100b: d7 15     mov   ($15)+y,a
100d: e8 01     mov   a,#$01
100f: 8d 14     mov   y,#$14
1011: d7 15     mov   ($15)+y,a
1013: 9c        dec   a
1014: 8d 0c     mov   y,#$0c
1016: d7 15     mov   ($15)+y,a
1018: 8d 12     mov   y,#$12
101a: d7 15     mov   ($15)+y,a
101c: fc        inc   y
101d: d7 15     mov   ($15)+y,a
101f: c4 28     mov   $28,a
1021: 5f d2 10  jmp   $10d2

1024: 8d 14     mov   y,#$14
1026: f7 15     mov   a,($15)+y
1028: f0 39     beq   $1063
102a: 8d 04     mov   y,#$04
102c: f7 15     mov   a,($15)+y
102e: c4 28     mov   $28,a
1030: 8d 0f     mov   y,#$0f
1032: f7 15     mov   a,($15)+y
1034: c4 29     mov   $29,a
1036: f0 03     beq   $103b
1038: 9c        dec   a
1039: d0 06     bne   $1041
103b: 8d 03     mov   y,#$03
103d: f7 15     mov   a,($15)+y
103f: 8d 0f     mov   y,#$0f
1041: d7 15     mov   ($15)+y,a
1043: 78 02 29  cmp   $29,#$02
1046: 90 03     bcc   $104b
1048: 5f d2 10  jmp   $10d2

104b: 8d 0c     mov   y,#$0c
104d: f7 15     mov   a,($15)+y
104f: bc        inc   a
1050: 8d 05     mov   y,#$05
1052: 77 15     cmp   a,($15)+y
1054: 90 17     bcc   $106d
1056: 9c        dec   a
1057: 8d 01     mov   y,#$01
1059: 77 15     cmp   a,($15)+y
105b: f0 6a     beq   $10c7
105d: e8 00     mov   a,#$00
105f: 8d 14     mov   y,#$14
1061: d7 15     mov   ($15)+y,a
1063: 8d 11     mov   y,#$11
1065: f7 15     mov   a,($15)+y
1067: 2d        push  a
1068: dc        dec   y
1069: f7 15     mov   a,($15)+y
106b: ee        pop   y
106c: 6f        ret

106d: 8d 0c     mov   y,#$0c
106f: d7 15     mov   ($15)+y,a
1071: 8d 06     mov   y,#$06
1073: f7 15     mov   a,($15)+y
1075: 8d 0a     mov   y,#$0a
1077: 60        clrc
1078: 97 15     adc   a,($15)+y
107a: d7 15     mov   ($15)+y,a
107c: 90 07     bcc   $1085
107e: fc        inc   y
107f: f7 15     mov   a,($15)+y
1081: 88 00     adc   a,#$00
1083: d7 15     mov   ($15)+y,a
1085: 8d 0e     mov   y,#$0e
1087: f7 15     mov   a,($15)+y
1089: 5d        mov   x,a
108a: dc        dec   y
108b: f7 15     mov   a,($15)+y
108d: d0 04     bne   $1093
108f: c8 00     cmp   x,#$00
1091: f0 3f     beq   $10d2
1093: 8d 03     mov   y,#$03
1095: 80        setc
1096: b7 15     sbc   a,($15)+y
1098: 8d 0d     mov   y,#$0d
109a: d7 15     mov   ($15)+y,a
109c: c4 33     mov   $33,a
109e: 7d        mov   a,x
109f: a8 00     sbc   a,#$00
10a1: b0 06     bcs   $10a9
10a3: e8 00     mov   a,#$00
10a5: d7 15     mov   ($15)+y,a
10a7: c4 33     mov   $33,a
10a9: fc        inc   y
10aa: d7 15     mov   ($15)+y,a
10ac: 04 33     or    a,$33
10ae: d0 0b     bne   $10bb
10b0: 8d 01     mov   y,#$01
10b2: f7 15     mov   a,($15)+y
10b4: 68 ff     cmp   a,#$ff
10b6: f0 03     beq   $10bb
10b8: 5f cb 10  jmp   $10cb

10bb: 8d 0c     mov   y,#$0c
10bd: f7 15     mov   a,($15)+y
10bf: 8d 01     mov   y,#$01
10c1: 77 15     cmp   a,($15)+y
10c3: 90 0d     bcc   $10d2
10c5: f0 0b     beq   $10d2
10c7: 8d 00     mov   y,#$00
10c9: f7 15     mov   a,($15)+y
10cb: 8d 0c     mov   y,#$0c
10cd: d7 15     mov   ($15)+y,a
10cf: 3f 75 11  call  $1175
10d2: f8 28     mov   x,$28
10d4: f0 14     beq   $10ea
10d6: 78 03 29  cmp   $29,#$03
10d9: 90 0f     bcc   $10ea
10db: 8d 13     mov   y,#$13
10dd: cd 03     mov   x,#$03
10df: f7 15     mov   a,($15)+y
10e1: d4 24     mov   $24+x,a
10e3: dc        dec   y
10e4: 1d        dec   x
10e5: 10 f8     bpl   $10df
10e7: 5f 52 11  jmp   $1152

10ea: 3f 64 11  call  $1164
10ed: 8d 06     mov   y,#$06
10ef: f7 15     mov   a,($15)+y
10f1: 5d        mov   x,a
10f2: 8d 00     mov   y,#$00
10f4: f7 1a     mov   a,($1a)+y
10f6: c8 01     cmp   x,#$01
10f8: f0 06     beq   $1100
10fa: 5d        mov   x,a
10fb: fc        inc   y
10fc: f7 1a     mov   a,($1a)+y
10fe: fd        mov   y,a
10ff: 7d        mov   a,x
1100: f8 28     mov   x,$28
1102: f0 52     beq   $1156
1104: 78 02 29  cmp   $29,#$02
1107: f0 4d     beq   $1156
1109: da 2f     movw  $2f,ya
110b: 8d 11     mov   y,#$11
110d: f7 15     mov   a,($15)+y
110f: c4 25     mov   $25,a
1111: dc        dec   y
1112: f7 15     mov   a,($15)+y
1114: c4 24     mov   $24,a
1116: eb 25     mov   y,$25
1118: 80        setc
1119: 9a 2f     subw  ya,$2f
111b: da 26     movw  $26,ya
111d: e8 00     mov   a,#$00
111f: 3c        rol   a
1120: c4 2f     mov   $2f,a
1122: d0 08     bne   $112c
1124: 58 ff 26  eor   $26,#$ff
1127: 58 ff 27  eor   $27,#$ff
112a: 3a 26     incw  $26
112c: 8d 03     mov   y,#$03
112e: f7 15     mov   a,($15)+y
1130: 5d        mov   x,a
1131: ba 26     movw  ya,$26
1133: 3f 90 11  call  $1190
1136: c4 26     mov   $26,a
1138: d8 27     mov   $27,x
113a: 78 01 2f  cmp   $2f,#$01
113d: d0 08     bne   $1147
113f: 58 ff 26  eor   $26,#$ff
1142: 58 ff 27  eor   $27,#$ff
1145: 3a 26     incw  $26
1147: 8d 12     mov   y,#$12
1149: e4 26     mov   a,$26
114b: d7 15     mov   ($15)+y,a
114d: fc        inc   y
114e: e4 27     mov   a,$27
1150: d7 15     mov   ($15)+y,a
1152: ba 24     movw  ya,$24
1154: 7a 26     addw  ya,$26
1156: da 24     movw  $24,ya
1158: 8d 10     mov   y,#$10
115a: d7 15     mov   ($15)+y,a
115c: e4 25     mov   a,$25
115e: fc        inc   y
115f: d7 15     mov   ($15)+y,a
1161: ba 24     movw  ya,$24
1163: 6f        ret

1164: 8d 0a     mov   y,#$0a
1166: 5f 6b 11  jmp   $116b

1169: 8d 08     mov   y,#$08
116b: f7 15     mov   a,($15)+y
116d: c4 1a     mov   $1a,a
116f: fc        inc   y
1170: f7 15     mov   a,($15)+y
1172: c4 1b     mov   $1b,a
1174: 6f        ret

1175: 2d        push  a
1176: 3f 69 11  call  $1169
1179: 8d 06     mov   y,#$06
117b: f7 15     mov   a,($15)+y
117d: fd        mov   y,a
117e: ae        pop   a
117f: cf        mul   ya
1180: 7a 1a     addw  ya,$1a
1182: da 1a     movw  $1a,ya
1184: 8d 0a     mov   y,#$0a
1186: e4 1a     mov   a,$1a
1188: d7 15     mov   ($15)+y,a
118a: fc        inc   y
118b: e4 1b     mov   a,$1b
118d: d7 15     mov   ($15)+y,a
118f: 6f        ret

1190: c8 00     cmp   x,#$00
1192: d0 05     bne   $1199
1194: e8 ff     mov   a,#$ff
1196: fd        mov   y,a
1197: 5d        mov   x,a
1198: 6f        ret

1199: cb 2c     mov   $2c,y
119b: 3e 2c     cmp   x,$2c
119d: f0 02     beq   $11a1
119f: b0 19     bcs   $11ba
11a1: c4 2b     mov   $2b,a
11a3: dd        mov   a,y
11a4: 8d 00     mov   y,#$00
11a6: 9e        div   ya,x
11a7: c4 2d     mov   $2d,a
11a9: fd        mov   y,a
11aa: 7d        mov   a,x
11ab: cf        mul   ya
11ac: c4 2e     mov   $2e,a
11ae: e4 2c     mov   a,$2c
11b0: 80        setc
11b1: a4 2e     sbc   a,$2e
11b3: fd        mov   y,a
11b4: e4 2b     mov   a,$2b
11b6: 9e        div   ya,x
11b7: f8 2d     mov   x,$2d
11b9: 6f        ret

11ba: 9e        div   ya,x
11bb: cd 00     mov   x,#$00
11bd: 6f        ret

11be: f5 86 02  mov   a,$0286+x
11c1: 8d 04     mov   y,#$04
11c3: cf        mul   ya
11c4: 7a 13     addw  ya,$13
11c6: da 00     movw  $00,ya
11c8: 8d 01     mov   y,#$01
11ca: f7 00     mov   a,($00)+y
11cc: c4 32     mov   $32,a
11ce: dc        dec   y
11cf: f7 00     mov   a,($00)+y
11d1: 80        setc
11d2: a8 03     sbc   a,#$03
11d4: c4 31     mov   $31,a
11d6: b8 00 32  sbc   $32,#$00
11d9: f7 31     mov   a,($31)+y
11db: c4 51     mov   $51,a
11dd: fc        inc   y
11de: f7 31     mov   a,($31)+y
11e0: c4 52     mov   $52,a
11e2: fc        inc   y
11e3: f7 31     mov   a,($31)+y
11e5: c4 53     mov   $53,a
11e7: 6f        ret

11e8: 60        clrc
11e9: 88 a0     adc   a,#$a0			; add offset to input frequency (1440)
11eb: 5d        mov   x,a
11ec: dd        mov   a,y
11ed: 88 05     adc   a,#$05
11ef: fd        mov   y,a
11f0: 7d        mov   a,x
11f1: ad 0a     cmp   y,#$0a			; check if it is in within positive range
11f3: 90 06     bcc   $11fb			; in range
11f5: d0 0a     bne   $1201			; out of range
11f7: 68 50     cmp   a,#$50
11f9: b0 06     bcs   $1201			; out of range
11fb: 8f ff 54  mov   $54,#$ff
11fe: 5f 17 12  jmp   $1217

1201: ad 80     cmp   y,#$80
1203: 90 0f     bcc   $1214
1205: 8f 00 54  mov   $54,#$00
1208: 60        clrc
1209: 88 20     adc   a,#$20
120b: 5d        mov   x,a
120c: dd        mov   a,y
120d: 88 df     adc   a,#$df
120f: fd        mov   y,a
1210: 7d        mov   a,x
1211: 5f 17 12  jmp   $1217

1214: 8f 0a 54  mov   $54,#$0a
1217: cd f0     mov   x,#$f0
1219: 9e        div   ya,x
121a: 78 ff 54  cmp   $54,#$ff
121d: d0 02     bne   $1221
121f: c4 54     mov   $54,a
1221: f6 3c 12  mov   a,$123c+y			;get pitch value (from table)
1224: c4 2f     mov   $2f,a
1226: f6 2c 13  mov   a,$132c+y
1229: c4 30     mov   $30,a
122b: e8 0a     mov   a,#$0a
122d: 80        setc
122e: a4 54     sbc   a,$54
1230: f0 07     beq   $1239
1232: fd        mov   y,a
1233: 4b 30     lsr   $30
1235: 6b 2f     ror   $2f
1237: fe fa     dbnz  y,$1233
1239: ba 2f     movw  ya,$2f
123b: 6f        ret

; pitch table (low byte)
123c: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
132c: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

; note interval frequencies (low byte)
141c: db $30,$20,$ac,$10,$24,$38,$4c,$60,$74,$88,$9c,$b0,$c4,$d8,$ec,$00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc,$f0,$54,$e0,$d0,$c0

; note interval frequencies (high byte)
143c: db $fd,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03

145c: e4 64     mov   a,$64
145e: d0 0c     bne   $146c
1460: e5 46 05  mov   a,$0546
1463: f0 22     beq   $1487
1465: e8 00     mov   a,#$00
1467: c5 46 05  mov   $0546,a
146a: 2f f0     bra   $145c
146c: e4 63     mov   a,$63
146e: 9c        dec   a
146f: c4 65     mov   $65,a
1471: 1c        asl   a
1472: c4 66     mov   $66,a
1474: 3f 6c 0b  call  $0b6c
1477: f8 65     mov   x,$65
1479: f4 68     mov   a,$68+x
147b: 5d        mov   x,a
147c: 1f d8 18  jmp   ($18d8+x)

147f: 8b 66     dec   $66
1481: 8b 66     dec   $66
1483: 8b 65     dec   $65
1485: 10 ed     bpl   $1474
1487: 6f        ret

1488: f8 65     mov   x,$65
148a: 9b 9b     dec   $9b+x
148c: d0 f1     bne   $147f
148e: f5 47 05  mov   a,$0547+x
1491: d4 9b     mov   $9b+x,a
1493: 9b a3     dec   $a3+x
1495: d0 e8     bne   $147f
1497: f4 68     mov   a,$68+x
1499: e8 04     mov   a,#$04
149b: d4 68     mov   $68+x,a
149d: 5f a0 14  jmp   $14a0

14a0: f8 65     mov   x,$65
14a2: f4 82     mov   a,$82+x
14a4: 68 19     cmp   a,#$19
14a6: f0 25     beq   $14cd
14a8: 60        clrc
14a9: 94 8a     adc   a,$8a+x
14ab: f8 66     mov   x,$66
14ad: c4 02     mov   $02,a
14af: fd        mov   y,a
14b0: f6 3b 06  mov   a,$063b+y
14b3: c4 00     mov   $00,a
14b5: f6 3c 06  mov   a,$063c+y
14b8: c4 01     mov   $01,a
14ba: 8d 02     mov   y,#$02
14bc: f7 00     mov   a,($00)+y
14be: 74 72     cmp   a,$72+x
14c0: d0 0b     bne   $14cd
14c2: 8d 03     mov   y,#$03
14c4: f7 00     mov   a,($00)+y
14c6: 74 73     cmp   a,$73+x
14c8: d0 03     bne   $14cd
14ca: 5f 32 17  jmp   $1732

14cd: 3f f2 15  call  $15f2
14d0: fd        mov   y,a		; get the current note/command
14d1: 28 20     and   a,#$20		
14d3: c4 67     mov   $67,a
14d5: f8 65     mov   x,$65
14d7: ad 80     cmp   y,#$80		; is it a note?
14d9: 90 3d     bcc   $1518
14db: ad f0     cmp   y,#$f0		; is it a special meaning flag?
14dd: 90 08     bcc   $14e7
14df: dd        mov   a,y		; then it must be a command...
14e0: 28 0f     and   a,#$0f
14e2: 1c        asl   a
14e3: 5d        mov   x,a
14e4: 1f 2f 18  jmp   ($182f+x)		; jump to command number position

14e7: f5 67 05  mov   a,$0567+x		; pitch bend
14ea: f0 4c     beq   $1538
14ec: dd        mov   a,y
14ed: 28 08     and   a,#$08
14ef: 0d        push  psw
14f0: dd        mov   a,y
14f1: 28 07     and   a,#$07
14f3: bc        inc   a
14f4: 1c        asl   a
14f5: f8 66     mov   x,$66
14f7: 8e        pop   psw
14f8: f0 0d     beq   $1507
14fa: 60        clrc
14fb: 94 be     adc   a,$be+x
14fd: d4 be     mov   $be+x,a
14ff: f4 bf     mov   a,$bf+x
1501: 88 00     adc   a,#$00
1503: d4 bf     mov   $bf+x,a
1505: 2f 31     bra   $1538
1507: c4 2f     mov   $2f,a
1509: f4 be     mov   a,$be+x
150b: 80        setc
150c: a4 2f     sbc   a,$2f
150e: d4 be     mov   $be+x,a
1510: f4 bf     mov   a,$bf+x
1512: a8 00     sbc   a,#$00
1514: d4 bf     mov   $bf+x,a
1516: 2f 20     bra   $1538
1518: f5 67 05  mov   a,$0567+x			; play the note (check first)
151b: f0 1b     beq   $1538
151d: dd        mov   a,y
151e: 28 1f     and   a,#$1f			; get the actual note value
1520: fd        mov   y,a
1521: f8 66     mov   x,$66
1523: f4 ae     mov   a,$ae+x
1525: 60        clrc
1526: 96 1c 14  adc   a,$141c+y
1529: d4 ae     mov   $ae+x,a
152b: f4 af     mov   a,$af+x
152d: 96 3c 14  adc   a,$143c+y
1530: d4 af     mov   $af+x,a
1532: e8 00     mov   a,#$00
1534: d4 be     mov   $be+x,a
1536: d4 bf     mov   $bf+x,a
1538: 3f f2 15  call  $15f2
153b: 68 00     cmp   a,#$00
153d: d0 07     bne   $1546
153f: f8 65     mov   x,$65
1541: f4 68     mov   a,$68+x
1543: 5f 74 14  jmp   $1474

1546: f8 65     mov   x,$65
1548: d4 a3     mov   $a3+x,a
154a: fd        mov   y,a
154b: e4 ce     mov   a,$ce
154d: d0 0a     bne   $1559
154f: f5 47 05  mov   a,$0547+x
1552: d4 9b     mov   $9b+x,a
1554: cf        mul   ya
1555: da 3d     movw  $3d,ya
1557: 2f 08     bra   $1561
1559: f5 47 05  mov   a,$0547+x
155c: d4 9b     mov   $9b+x,a
155e: 8f 00 ce  mov   $ce,#$00
1561: 3f 16 18  call  $1816
1564: f5 6f 05  mov   a,$056f+x
1567: 5d        mov   x,a
1568: f5 0d 02  mov   a,$020d+x
156b: f0 0a     beq   $1577
156d: e8 40     mov   a,#$40
156f: 75 2e 02  cmp   a,$022e+x
1572: b0 05     bcs   $1579
1574: 5f ec 15  jmp   $15ec

1577: e8 40     mov   a,#$40
1579: d5 2e 02  mov   $022e+x,a
157c: e8 01     mov   a,#$01
157e: d5 0d 02  mov   $020d+x,a
1581: d8 ab     mov   $ab,x
1583: 7d        mov   a,x
1584: f8 65     mov   x,$65
1586: f5 67 05  mov   a,$0567+x
1589: d0 0c     bne   $1597
158b: f8 66     mov   x,$66
158d: f4 ae     mov   a,$ae+x
158f: c4 3f     mov   $3f,a
1591: f4 af     mov   a,$af+x
1593: c4 40     mov   $40,a
1595: 2f 1e     bra   $15b5
1597: f8 66     mov   x,$66
1599: f4 ae     mov   a,$ae+x
159b: 60        clrc
159c: 94 be     adc   a,$be+x
159e: c4 3f     mov   $3f,a
15a0: f4 af     mov   a,$af+x
15a2: 94 bf     adc   a,$bf+x
15a4: c4 40     mov   $40,a
15a6: f5 77 05  mov   a,$0577+x
15a9: 60        clrc
15aa: 84 3f     adc   a,$3f
15ac: c4 3f     mov   $3f,a
15ae: f5 78 05  mov   a,$0578+x
15b1: 84 40     adc   a,$40
15b3: c4 40     mov   $40,a
15b5: eb 67     mov   y,$67
15b7: d0 0e     bne   $15c7
15b9: 0b ab     asl   $ab
15bb: f8 ab     mov   x,$ab
15bd: d5 4f 02  mov   $024f+x,a
15c0: e4 3f     mov   a,$3f
15c2: d5 4e 02  mov   $024e+x,a
15c5: 2f 25     bra   $15ec
15c7: f8 65     mov   x,$65
15c9: f5 4f 05  mov   a,$054f+x
15cc: 60        clrc
15cd: 95 57 05  adc   a,$0557+x
15d0: 10 02     bpl   $15d4
15d2: e8 7f     mov   a,#$7f
15d4: c4 ac     mov   $ac,a
15d6: f8 65     mov   x,$65
15d8: f5 5f 05  mov   a,$055f+x
15db: f8 ab     mov   x,$ab
15dd: 8d 00     mov   y,#$00
15df: cc 04 02  mov   $0204,y
15e2: 8d ff     mov   y,#$ff
15e4: cc 05 02  mov   $0205,y
15e7: eb ac     mov   y,$ac
15e9: 3f 40 0d  call  $0d40
15ec: 8f 00 cf  mov   $cf,#$00
15ef: 5f 7f 14  jmp   $147f

15f2: f8 66     mov   x,$66
15f4: e7 72     mov   a,($72+x)
15f6: bb 72     inc   $72+x			; update melody (sequence) position pointer
15f8: d0 02     bne   $15fc
15fa: bb 73     inc   $73+x
15fc: 6f        ret

; vcmd f0 - end of sequence
15fd: f8 65     mov   x,$65
15ff: e8 00     mov   a,#$00
1601: d4 68     mov   $68+x,a
1603: 8b 64     dec   $64
1605: 5f 7f 14  jmp   $147f

; vcmd f1 - delta expression
1608: f8 65     mov   x,$65
160a: f5 57 05  mov   a,$0557+x
160d: 3f 2b 16  call  $162b
1610: d5 57 05  mov   $0557+x,a
1613: 5f a0 14  jmp   $14a0

1616: 6d        push  y
1617: 4d        push  x
1618: ee        pop   y
1619: cf        mul   ya
161a: da 2f     movw  $2f,ya
161c: 7d        mov   a,x
161d: ee        pop   y
161e: cf        mul   ya
161f: 6d        push  y
1620: 0b 2f     asl   $2f
1622: 84 30     adc   a,$30
1624: 5d        mov   x,a
1625: ae        pop   a
1626: 88 00     adc   a,#$00
1628: fd        mov   y,a
1629: 7d        mov   a,x
162a: 6f        ret

162b: 4d        push  x			; scale volume - get 2 bytes
162c: fd        mov   y,a
162d: 6d        push  y
162e: 3f f2 15  call  $15f2
1631: cf        mul   ya
1632: da 2f     movw  $2f,ya
1634: ee        pop   y
1635: 3f f2 15  call  $15f2
1638: cf        mul   ya
1639: 6d        push  y
163a: 0b 2f     asl   $2f
163c: 84 30     adc   a,$30
163e: 5d        mov   x,a
163f: ae        pop   a
1640: 88 00     adc   a,#$00
1642: fd        mov   y,a
1643: d0 03     bne   $1648
1645: 7d        mov   a,x
1646: 10 02     bpl   $164a
1648: e8 7f     mov   a,#$7f
164a: ce        pop   x
164b: 6f        ret

; vcmd f2 - absolute expression
164c: 3f f2 15  call  $15f2
164f: f8 65     mov   x,$65
1651: d5 57 05  mov   $0557+x,a
1654: 5f a0 14  jmp   $14a0

; vcmd f3 - mute
1657: f8 65     mov   x,$65
1659: f5 6f 05  mov   a,$056f+x
165c: 30 15     bmi   $1673
165e: fd        mov   y,a
165f: f6 0d 02  mov   a,$020d+y
1662: 68 80     cmp   a,#$80
1664: f0 0d     beq   $1673
1666: e8 00     mov   a,#$00
1668: d6 6e 02  mov   $026e+y,a
166b: f6 d5 07  mov   a,$07d5+y
166e: c4 f2     mov   $f2,a
1670: 8f 9f f3  mov   $f3,#$9f

; vcmd f4 - rest
1673: 3f f2 15  call  $15f2
1676: f8 65     mov   x,$65
1678: d4 a3     mov   $a3+x,a
167a: f5 47 05  mov   a,$0547+x
167d: d4 9b     mov   $9b+x,a
167f: 3f 16 18  call  $1816
1682: 5f 7f 14  jmp   $147f

; vcmd f5 - set sound/instrument
1685: 3f f2 15  call  $15f2		; get 1 more byte = read sound number
1688: f8 65     mov   x,$65
168a: d5 5f 05  mov   $055f+x,a		; move it onto the stack
168d: f4 82     mov   a,$82+x
168f: 68 19     cmp   a,#$19		; $19 = phrase stack max value?
1691: f0 32     beq   $16c5
1693: 60        clrc
1694: 94 8a     adc   a,$8a+x
1696: f8 66     mov   x,$66
1698: c4 02     mov   $02,a
169a: fd        mov   y,a
169b: f6 3b 06  mov   a,$063b+y
169e: c4 00     mov   $00,a
16a0: f6 3c 06  mov   a,$063c+y
16a3: c4 01     mov   $01,a
16a5: f6 39 06  mov   a,$0639+y
16a8: 8d 09     mov   y,#$09
16aa: 77 00     cmp   a,($00)+y
16ac: 90 02     bcc   $16b0
16ae: e8 00     mov   a,#$00
16b0: bc        inc   a
16b1: eb 02     mov   y,$02
16b3: d6 39 06  mov   $0639+y,a
16b6: 60        clrc
16b7: 88 09     adc   a,#$09
16b9: fd        mov   y,a
16ba: f7 00     mov   a,($00)+y
16bc: 68 ff     cmp   a,#$ff
16be: f0 05     beq   $16c5
16c0: f8 65     mov   x,$65
16c2: d5 5f 05  mov   $055f+x,a
16c5: 5f a0 14  jmp   $14a0

; vcmd f6 - play phrase
16c8: f8 65     mov   x,$65
16ca: f4 82     mov   a,$82+x		; push entry onto stack
16cc: 80        setc
16cd: a8 05     sbc   a,#$05
16cf: d4 82     mov   $82+x,a
16d1: 60        clrc			; set to current player
16d2: 94 8a     adc   a,$8a+x
16d4: fd        mov   y,a
16d5: cb 02     mov   $02,y
16d7: f8 66     mov   x,$66
16d9: f4 72     mov   a,$72+x
16db: d6 3b 06  mov   $063b+y,a		; LSB of pointer
16de: f4 73     mov   a,$73+x
16e0: d6 3c 06  mov   $063c+y,a		; MSB of pointer
16e3: e8 00     mov   a,#$00
16e5: d6 38 06  mov   $0638+y,a		; number of loops
16e8: 3f f2 15  call  $15f2		; start point low byte
16eb: 2d        push  a
16ec: 3f f4 15  call  $15f4		; start point high byte
16ef: 2d        push  a
16f0: 3f f4 15  call  $15f4		; end point low byte
16f3: 3f f4 15  call  $15f4		; end point high byte
16f6: 3f f4 15  call  $15f4		; number of loops
16f9: 3f f4 15  call  $15f4		; frequency offset LSB low byte
16fc: fd        mov   y,a
16fd: 3f f4 15  call  $15f4		; frequency offset LSB high byte
1700: 2d        push  a
1701: dd        mov   a,y
1702: 60        clrc
1703: 95 77 05  adc   a,$0577+x		; adjust frequency
1706: d5 77 05  mov   $0577+x,a
1709: ae        pop   a
170a: 95 78 05  adc   a,$0578+x
170d: d5 78 05  mov   $0578+x,a
1710: f8 65     mov   x,$65
1712: f5 57 05  mov   a,$0557+x
1715: eb 02     mov   y,$02
1717: d6 3a 06  mov   $063a+y,a
171a: 3f 2b 16  call  $162b		; scale the volume (read next 2 bytes)
171d: d5 57 05  mov   $0557+x,a
1720: eb 02     mov   y,$02		; initialize instrument pointer
1722: e8 00     mov   a,#$00
1724: d6 39 06  mov   $0639+y,a
1727: f8 66     mov   x,$66
1729: ae        pop   a
172a: d4 73     mov   $73+x,a
172c: ae        pop   a
172d: d4 72     mov   $72+x,a
172f: 5f a0 14  jmp   $14a0

1732: eb 02     mov   y,$02
1734: f6 38 06  mov   a,$0638+y
1737: bc        inc   a
1738: d6 38 06  mov   $0638+y,a
173b: 8d 04     mov   y,#$04
173d: f7 00     mov   a,($00)+y
173f: f0 07     beq   $1748
1741: eb 02     mov   y,$02
1743: 76 38 06  cmp   a,$0638+y
1746: f0 0f     beq   $1757
1748: 8d 00     mov   y,#$00
174a: f7 00     mov   a,($00)+y
174c: d4 72     mov   $72+x,a
174e: 8d 01     mov   y,#$01
1750: f7 00     mov   a,($00)+y
1752: d4 73     mov   $73+x,a
1754: 5f cd 14  jmp   $14cd

1757: f5 77 05  mov   a,$0577+x
175a: 80        setc
175b: 8d 05     mov   y,#$05
175d: b7 00     sbc   a,($00)+y
175f: d5 77 05  mov   $0577+x,a
1762: f5 78 05  mov   a,$0578+x
1765: 8d 06     mov   y,#$06
1767: b7 00     sbc   a,($00)+y
1769: d5 78 05  mov   $0578+x,a
176c: eb 02     mov   y,$02
176e: f6 3a 06  mov   a,$063a+y
1771: f8 65     mov   x,$65
1773: d5 57 05  mov   $0557+x,a
1776: f8 66     mov   x,$66
1778: e4 00     mov   a,$00
177a: 60        clrc
177b: 88 0a     adc   a,#$0a
177d: d4 72     mov   $72+x,a
177f: e4 01     mov   a,$01
1781: 88 00     adc   a,#$00
1783: d4 73     mov   $73+x,a
1785: 8d 09     mov   y,#$09
1787: f7 00     mov   a,($00)+y
1789: 60        clrc
178a: 94 72     adc   a,$72+x
178c: d4 72     mov   $72+x,a
178e: f4 73     mov   a,$73+x
1790: 88 00     adc   a,#$00
1792: d4 73     mov   $73+x,a
1794: f8 65     mov   x,$65
1796: f4 82     mov   a,$82+x
1798: 60        clrc
1799: 88 05     adc   a,#$05
179b: d4 82     mov   $82+x,a
179d: 5f a0 14  jmp   $14a0

; vcmd f7-f8 - set detune
17a0: 28 02     and   a,#$02
17a2: c4 67     mov   $67,a
17a4: 3f f2 15  call  $15f2
17a7: d4 ae     mov   $ae+x,a
17a9: 3f f2 15  call  $15f2
17ac: d4 af     mov   $af+x,a
17ae: e8 00     mov   a,#$00
17b0: d4 be     mov   $be+x,a
17b2: d4 bf     mov   $bf+x,a
17b4: 5f 38 15  jmp   $1538

; vcmd f9 - go to loop
17b7: eb 65     mov   y,$65
17b9: fc        inc   y
17ba: f7 70     mov   a,($70)+y
17bc: 8d 10     mov   y,#$10
17be: 3f b2 0e  call  $0eb2
17c1: f8 66     mov   x,$66
17c3: d4 72     mov   $72+x,a
17c5: db 73     mov   $73+x,y
17c7: e8 1c     mov   a,#$1c
17c9: d4 ae     mov   $ae+x,a
17cb: e8 02     mov   a,#$02
17cd: d4 af     mov   $af+x,a
17cf: f8 65     mov   x,$65
17d1: e8 00     mov   a,#$00
17d3: d5 4f 05  mov   $054f+x,a
17d6: d5 57 05  mov   $0557+x,a
17d9: 5f a0 14  jmp   $14a0

; vcmd fa - set tempo
17dc: 3f f2 15  call  $15f2
17df: c5 00 02  mov   $0200,a
17e2: 3f f2 15  call  $15f2
17e5: c5 02 02  mov   $0202,a
17e8: 3f f2 15  call  $15f2
17eb: c5 03 02  mov   $0203,a
17ee: 5f a0 14  jmp   $14a0

; vcmd fb - panning
17f1: e8 00     mov   a,#$00
17f3: fd        mov   y,a
17f4: da 3d     movw  $3d,ya
17f6: 8f 01 ce  mov   $ce,#$01
17f9: 3f f2 15  call  $15f2
17fc: 2d        push  a
17fd: fd        mov   y,a
17fe: f8 65     mov   x,$65
1800: f5 47 05  mov   a,$0547+x
1803: cf        mul   ya
1804: 7a 3d     addw  ya,$3d
1806: da 3d     movw  $3d,ya
1808: ae        pop   a
1809: 68 ff     cmp   a,#$ff
180b: f0 ec     beq   $17f9
180d: 5f a0 14  jmp   $14a0

; vcmd fc - set no note retrigger?
1810: 8f 01 cf  mov   $cf,#$01
1813: 5f a0 14  jmp   $14a0

1816: e8 02     mov   a,#$02
1818: d4 68     mov   $68+x,a
181a: 6f        ret

181b: 78 80 ad  cmp   $ad,#$80
181e: 90 08     bcc   $1828
1820: 60        clrc
1821: 84 ad     adc   a,$ad
1823: 10 09     bpl   $182e
1825: e8 00     mov   a,#$00
1827: 6f        ret

1828: 84 ad     adc   a,$ad
182a: 10 02     bpl   $182e
182c: e8 7f     mov   a,#$7f
182e: 6f        ret

; vcmd table (f0-fc)
182f: dw $15fd		; f0 - end of melody
1831: dw $1608		; f1 - delta expression
1833: dw $164c		; f2 - absolute expression
1835: dw $1657		; f3 - mute
1837: dw $1673		; f4 - rest
1839: dw $1685		; f5 - set sound/instrument
183b: dw $16c8		; f6 - play phrase
183d: dw $17a0		; f7 - set detune
183f: dw $17a0		; f8 - set detune
1841: dw $17b7		; f9 - go to loop
1843: dw $17dc		; fa - set tempo
1845: dw $17f1		; fb - panning
1847: dw $1810		; fc - set no note retrigger?

1849: e4 03     mov   a,$03
184b: 1c        asl   a
184c: 44 03     eor   a,$03
184e: 1c        asl   a
184f: 1c        asl   a
1850: 1c        asl   a
1851: 2b 05     rol   $05
1853: 2b 04     rol   $04
1855: 2b 03     rol   $03
1857: e4 05     mov   a,$05
1859: 6f        ret

185a: 8f 00 ce  mov   $ce,#$00
185d: 8f 00 cf  mov   $cf,#$00
1860: 8d 1a     mov   y,#$1a
1862: 3f b2 0e  call  $0eb2
1865: da 70     movw  $70,ya
1867: 8d 00     mov   y,#$00
1869: f7 70     mov   a,($70)+y
186b: c4 63     mov   $63,a
186d: c4 64     mov   $64,a
186f: f0 66     beq   $18d7
1871: 8f 00 65  mov   $65,#$00
1874: 8f 00 66  mov   $66,#$00
1877: fc        inc   y
1878: f7 70     mov   a,($70)+y
187a: 6d        push  y
187b: 8d 10     mov   y,#$10
187d: 3f b2 0e  call  $0eb2
1880: f8 66     mov   x,$66
1882: d4 72     mov   $72+x,a
1884: dd        mov   a,y
1885: ee        pop   y
1886: d4 73     mov   $73+x,a
1888: f8 65     mov   x,$65
188a: e8 19     mov   a,#$19
188c: d4 82     mov   $82+x,a
188e: e8 04     mov   a,#$04
1890: d4 68     mov   $68+x,a
1892: e8 ff     mov   a,#$ff
1894: d5 67 05  mov   $0567+x,a
1897: e8 01     mov   a,#$01
1899: d5 47 05  mov   $0547+x,a
189c: 7d        mov   a,x
189d: d5 6f 05  mov   $056f+x,a
18a0: f8 66     mov   x,$66
18a2: e8 1c     mov   a,#$1c
18a4: d4 ae     mov   $ae+x,a
18a6: e8 02     mov   a,#$02
18a8: d4 af     mov   $af+x,a
18aa: e8 00     mov   a,#$00
18ac: d5 77 05  mov   $0577+x,a
18af: d5 78 05  mov   $0578+x,a
18b2: f8 65     mov   x,$65
18b4: d5 4f 05  mov   $054f+x,a
18b7: d5 57 05  mov   $0557+x,a
18ba: e8 00     mov   a,#$00
18bc: c5 00 02  mov   $0200,a
18bf: c5 02 02  mov   $0202,a
18c2: e8 01     mov   a,#$01
18c4: c5 03 02  mov   $0203,a
18c7: e8 ff     mov   a,#$ff
18c9: c5 01 02  mov   $0201,a
18cc: ab 66     inc   $66
18ce: ab 66     inc   $66
18d0: 3d        inc   x
18d1: d8 65     mov   $65,x
18d3: 3e 63     cmp   x,$63
18d5: 90 a0     bcc   $1877
18d7: 6f        ret

18d8: dw $147f
18da: dw $1488
18dc: dw $14a0

18de: ba 21     movw  ya,$21
18e0: da 0a     movw  $0a,ya
18e2: 6f        ret

18e3: eb 21     mov   y,$21
18e5: fa 1f f6  mov   ($f6),($1f)
18e8: 00        nop
18e9: 00        nop
18ea: 00        nop
18eb: 00        nop
18ec: e4 f4     mov   a,$f4
18ee: d7 0a     mov   ($0a)+y,a
18f0: dc        dec   y
18f1: e4 f5     mov   a,$f5
18f3: d7 0a     mov   ($0a)+y,a
18f5: dc        dec   y
18f6: e4 f6     mov   a,$f6
18f8: d7 0a     mov   ($0a)+y,a
18fa: dc        dec   y
18fb: e4 f7     mov   a,$f7
18fd: d7 0a     mov   ($0a)+y,a
18ff: dc        dec   y
1900: 10 ea     bpl   $18ec
1902: ba 0a     movw  ya,$0a
1904: 7a 21     addw  ya,$21
1906: da 0a     movw  $0a,ya
1908: 3a 0a     incw  $0a
190a: 8f b1 f1  mov   $f1,#$b1
190d: fa 1f f6  mov   ($f6),($1f)
1910: 6f        ret

1911: eb 21     mov   y,$21
1913: fa 1f f6  mov   ($f6),($1f)
1916: e4 f6     mov   a,$f6
1918: 64 f6     cmp   a,$f6
191a: d0 fa     bne   $1916
191c: 68 00     cmp   a,#$00
191e: f0 f6     beq   $1916
1920: 64 1f     cmp   a,$1f
1922: f0 f2     beq   $1916
1924: c4 1f     mov   $1f,a
1926: e4 f4     mov   a,$f4
1928: d7 0a     mov   ($0a)+y,a
192a: dc        dec   y
192b: 30 19     bmi   $1946
192d: e4 f5     mov   a,$f5
192f: d7 0a     mov   ($0a)+y,a
1931: dc        dec   y
1932: 30 12     bmi   $1946
1934: e4 f7     mov   a,$f7
1936: d7 0a     mov   ($0a)+y,a
1938: cb f7     mov   $f7,y
193a: fa 0a f4  mov   ($f4),($0a)
193d: fa 0b f5  mov   ($f5),($0b)
1940: fa 1f f6  mov   ($f6),($1f)
1943: dc        dec   y
1944: 10 d0     bpl   $1916
1946: 8f b1 f1  mov   $f1,#$b1
1949: fa 1f f6  mov   ($f6),($1f)
194c: ba 0a     movw  ya,$0a
194e: 7a 21     addw  ya,$21
1950: da 0a     movw  $0a,ya
1952: 3a 0a     incw  $0a
1954: 6f        ret

1955: 6f        ret

1956: dw $0bc2
1958: dw $0c01
195a: dw $0c09
195c: dw $0000
195e: dw $0000
1960: dw $0000
1962: dw $078b
1964: dw $0c89
1966: dw $0be7
1968: dw $0be1
196a: dw $0bde
196c: dw $0bd8
196e: dw $0c3e
1970: dw $0c49
1972: dw $18de
1974: dw $18e3
1976: dw $1911
1978: dw $0c93
197a: dw $0c9d
197c: dw $1955