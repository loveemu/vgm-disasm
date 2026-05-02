0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f b0 f1  mov   $f1,#$b0		; clear input ports APUI00-APUI04
0707: 8f 20 fa  mov   $fa,#$20
070a: 8f 81 f1  mov   $f1,#$81		; toggle timer 2
070d: 3f ca 0e  call  $0eca		; clear/reset routine
0710: 8f 00 13  mov   $13,#$00
0713: 8f 1a 14  mov   $14,#$1a
0716: 8d 03     mov   y,#$03		; set temporary storage
0718: f6 00 00  mov   a,$0000+y
071b: 16 22 07  or    a,$0722+y
071e: d6 00 00  mov   $0000+y,a
0721: fe f5     dbnz  y,$0718
0723: ab 1d     inc   $1d
0725: e4 23     mov   a,$23
0727: d0 05     bne   $072e
0729: 3f 54 18  call  $1854		; do a random number generator (RNG)
072c: 2f 03     bra   $0731
072e: 3f 51 08  call  $0851
0731: e4 f6     mov   a,$f6
0733: f0 03     beq   $0738
0735: 3f 86 0b  call  $0b86
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
075e: fa f6 04  mov   ($04),($f6)
0761: fa f7 05  mov   ($05),($f7)
0764: 7d        mov   a,x
0765: f8 f5     mov   x,$f5
0767: c4 f4     mov   $f4,a
0769: d0 05     bne   $0770
076b: d8 f5     mov   $f5,x
076d: 1f 04 00  jmp   ($0004+x)

0770: cd 00     mov   x,#$00
0772: 3e f4     cmp   x,$f4
0774: d0 fc     bne   $0772
0776: e4 f5     mov   a,$f5
0778: d8 f4     mov   $f4,x
077a: d7 04     mov   ($04)+y,a
077c: 3a 04     incw  $04
077e: 3e f4     cmp   x,$f4
0780: f0 fc     beq   $077e
0782: 3d        inc   x
0783: 3e f4     cmp   x,$f4
0785: f0 ef     beq   $0776
0787: f8 f4     mov   x,$f4
0789: 2f d3     bra   $075e
078b: 3f ca 0e  call  $0eca
078e: 8f b0 f1  mov   $f1,#$b0
0791: cd 00     mov   x,#$00
0793: f5 50 07  mov   a,$0750+x
0796: d5 00 01  mov   $0100+x,a
0799: 3d        inc   x
079a: c8 3b     cmp   x,#$3b
079c: 90 f5     bcc   $0793
079e: 5f 00 01  jmp   $0100

; gain tables
07a1: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08
07b1: db $06,$05,$04,$03,$02,$01,$1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

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

0849: 96 ac c2  adc   a,$c2ac+y
084c: d8 ee     mov   $ee,x
084e: 04 1a     or    a,$1a
0850: 30 3f     bmi   $0891
0852: 54 18     eor   a,$18+x
0854: 3f 86 0b  call  $0b86
0857: e5 00 02  mov   a,$0200
085a: f0 09     beq   $0865
085c: 60        clrc
085d: 85 01 02  adc   a,$0201
0860: c5 01 02  mov   $0201,a
0863: 90 06     bcc   $086b
0865: 3f 37 14  call  $1437
0868: 3f 86 0b  call  $0b86
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
088d: 3f 75 0b  call  $0b75
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

08a9: 3f 08 10  call  $1008
08ac: f8 17     mov   x,$17
08ae: 75 86 02  cmp   a,$0286+x
08b1: d0 10     bne   $08c3
08b3: 3f a2 11  call  $11a2
08b6: 3f 5b 0b  call  $0b5b
08b9: e4 50     mov   a,$50
08bb: 24 4d     and   a,$4d
08bd: 24 39     and   a,$39
08bf: d0 43     bne   $0904
08c1: f0 44     beq   $0907
08c3: d5 86 02  mov   $0286+x,a
08c6: 09 39 37  or    ($37),($39)
08c9: 3f a2 11  call  $11a2
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
08f7: 3f 5b 0b  call  $0b5b
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
092c: 3f 75 0b  call  $0b75
092f: d8 17     mov   $17,x
0931: e4 5a     mov   a,$5a
0933: d0 13     bne   $0948
0935: f4 5b     mov   a,$5b+x
0937: 28 08     and   a,#$08
0939: c4 3c     mov   $3c,a
093b: d0 06     bne   $0943
093d: f5 76 02  mov   a,$0276+x
0940: 5f 48 09  jmp   $0948

0943: 3f 08 10  call  $1008
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
0993: 3f 75 0b  call  $0b75
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
09b4: 3f 08 10  call  $1008		; advance pitch envelope
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
09d0: 3f cc 11  call  $11cc		; translate note to frequency
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
09f4: 3f 75 0b  call  $0b75
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

0a0e: 3f 08 10  call  $1008
0a11: f8 17     mov   x,$17
0a13: 5c        lsr   a
0a14: d5 3e 02  mov   $023e+x,a
0a17: fd        mov   y,a
0a18: e4 37     mov   a,$37
0a1a: 24 39     and   a,$39
0a1c: f0 0a     beq   $0a28
0a1e: f5 dd 07  mov   a,$07dd+x
0a21: c4 f2     mov   $f2,a
0a23: f5 86 02  mov   a,$0286+x
0a26: c4 f3     mov   $f3,a
0a28: e4 48     mov   a,$48
0a2a: 24 39     and   a,$39
0a2c: f0 06     beq   $0a34
0a2e: 29 3a 48  and   ($48),($3a)
0a31: 5c        lsr   a
0a32: 2f 35     bra   $0a69
0a34: f5 cd 07  mov   a,$07cd+x
0a37: c4 f2     mov   $f2,a
0a39: dd        mov   a,y
0a3a: 80        setc
0a3b: a4 f3     sbc   a,$f3
0a3d: b0 08     bcs   $0a47
0a3f: 8f 80 2a  mov   $2a,#$80
0a42: 48 ff     eor   a,#$ff
0a44: bc        inc   a
0a45: 2f 03     bra   $0a4a
0a47: 8f c0 2a  mov   $2a,#$c0
0a4a: 5c        lsr   a
0a4b: d0 08     bne   $0a55
0a4d: ad 00     cmp   y,#$00
0a4f: d0 04     bne   $0a55
0a51: e8 82     mov   a,#$82
0a53: 2f 0e     bra   $0a63
0a55: 8d 15     mov   y,#$15
0a57: 76 a1 07  cmp   a,$07a1+y
0a5a: 90 02     bcc   $0a5e
0a5c: fe f9     dbnz  y,$0a57
0a5e: f6 b7 07  mov   a,$07b7+y
0a61: 04 2a     or    a,$2a
0a63: 75 46 02  cmp   a,$0246+x
0a66: f0 0c     beq   $0a74
0a68: fd        mov   y,a
0a69: f5 d5 07  mov   a,$07d5+x
0a6c: c4 f2     mov   $f2,a
0a6e: cb f3     mov   $f3,y
0a70: dd        mov   a,y
0a71: d5 46 02  mov   $0246+x,a
0a74: f5 e5 07  mov   a,$07e5+x
0a77: c4 f2     mov   $f2,a
0a79: fd        mov   y,a
0a7a: f5 5e 02  mov   a,$025e+x
0a7d: c4 f3     mov   $f3,a
0a7f: fc        inc   y
0a80: cb f2     mov   $f2,y
0a82: f5 66 02  mov   a,$0266+x
0a85: c4 f3     mov   $f3,a
0a87: 80        setc
0a88: b8 15 15  sbc   $15,#$15
0a8b: b8 00 16  sbc   $16,#$00
0a8e: 1d        dec   x
0a8f: 30 03     bmi   $0a94
0a91: 5f f4 09  jmp   $09f4

0a94: 8f 4c f2  mov   $f2,#$4c
0a97: fa 4e f3  mov   ($f3),($4e)
0a9a: e4 4e     mov   a,$4e
0a9c: 48 ff     eor   a,#$ff
0a9e: c4 4f     mov   $4f,a
0aa0: 29 4f 49  and   ($49),($4f)
0aa3: 29 4f 4b  and   ($4b),($4f)
0aa6: 8f 00 4d  mov   $4d,#$00
0aa9: 3f 86 0b  call  $0b86
0aac: cd 07     mov   x,#$07
0aae: 8d 0e     mov   y,#$0e
0ab0: f5 0d 02  mov   a,$020d+x
0ab3: f0 2b     beq   $0ae0
0ab5: f4 5b     mov   a,$5b+x
0ab7: 28 80     and   a,#$80
0ab9: f0 09     beq   $0ac4
0abb: f5 f5 07  mov   a,$07f5+x
0abe: 24 49     and   a,$49
0ac0: d0 19     bne   $0adb
0ac2: 2f 1c     bra   $0ae0
0ac4: f6 1e 02  mov   a,$021e+y
0ac7: 80        setc
0ac8: a8 01     sbc   a,#$01
0aca: d6 1e 02  mov   $021e+y,a
0acd: c4 2f     mov   $2f,a
0acf: f6 1f 02  mov   a,$021f+y
0ad2: a8 00     sbc   a,#$00
0ad4: d6 1f 02  mov   $021f+y,a
0ad7: 04 2f     or    a,$2f
0ad9: d0 05     bne   $0ae0
0adb: e8 00     mov   a,#$00
0add: d5 0d 02  mov   $020d+x,a
0ae0: dc        dec   y
0ae1: dc        dec   y
0ae2: 1d        dec   x
0ae3: 10 cb     bpl   $0ab0
0ae5: 3f 75 0b  call  $0b75
0ae8: ec 07 02  mov   y,$0207
0aeb: f0 66     beq   $0b53
0aed: 8c 08 02  dec   $0208
0af0: d0 61     bne   $0b53
0af2: cc 08 02  mov   $0208,y
0af5: e4 1e     mov   a,$1e
0af7: e9 09 02  mov   x,$0209
0afa: 30 0e     bmi   $0b0a
0afc: 60        clrc
0afd: 85 0a 02  adc   a,$020a
0b00: b0 04     bcs   $0b06
0b02: 68 4b     cmp   a,#$4b
0b04: 90 13     bcc   $0b19
0b06: e8 4b     mov   a,#$4b
0b08: 2f 0a     bra   $0b14
0b0a: 80        setc
0b0b: a5 0a 02  sbc   a,$020a
0b0e: f0 04     beq   $0b14
0b10: b0 07     bcs   $0b19
0b12: e8 00     mov   a,#$00
0b14: 8d 00     mov   y,#$00
0b16: cc 07 02  mov   $0207,y
0b19: c4 1e     mov   $1e,a
0b1b: 5d        mov   x,a
0b1c: 8f 2c f2  mov   $f2,#$2c
0b1f: 65 0b 02  cmp   a,$020b
0b22: 90 03     bcc   $0b27
0b24: e5 0b 02  mov   a,$020b
0b27: c4 f3     mov   $f3,a
0b29: 8f 3c f2  mov   $f2,#$3c
0b2c: 7d        mov   a,x
0b2d: 65 0c 02  cmp   a,$020c
0b30: 90 03     bcc   $0b35
0b32: e5 0b 02  mov   a,$020b
0b35: c4 f3     mov   $f3,a
0b37: 8f 0c f2  mov   $f2,#$0c
0b3a: d8 f3     mov   $f3,x
0b3c: 8f 1c f2  mov   $f2,#$1c
0b3f: d8 f3     mov   $f3,x
0b41: e5 07 02  mov   a,$0207
0b44: d0 0d     bne   $0b53
0b46: e5 06 02  mov   a,$0206
0b49: f0 08     beq   $0b53
0b4b: 8f 00 64  mov   $64,#$00
0b4e: 8d 80     mov   y,#$80
0b50: 5f 52 0c  jmp   $0c52

0b53: e4 92     mov   a,$92
0b55: f0 03     beq   $0b5a
0b57: 5f e0 17  jmp   $17e0

0b5a: 6f        ret

0b5b: e4 53     mov   a,$53
0b5d: 10 0c     bpl   $0b6b
0b5f: 28 1f     and   a,#$1f
0b61: 8f 6c f2  mov   $f2,#$6c
0b64: c4 f3     mov   $f3,a
0b66: 09 39 55  or    ($55),($39)
0b69: 2f 03     bra   $0b6e
0b6b: 29 3a 55  and   ($55),($3a)
0b6e: 8f 3d f2  mov   $f2,#$3d
0b71: fa 55 f3  mov   ($f3),($55)
0b74: 6f        ret

0b75: 4d        push  x
0b76: e4 f6     mov   a,$f6
0b78: f0 4c     beq   $0bc6
0b7a: f8 f7     mov   x,$f7
0b7c: c8 1e     cmp   x,#$1e
0b7e: 90 46     bcc   $0bc6
0b80: c8 23     cmp   x,#$23
0b82: b0 42     bcs   $0bc6
0b84: 2f 05     bra   $0b8b
0b86: 4d        push  x
0b87: e4 f6     mov   a,$f6
0b89: f0 3b     beq   $0bc6
0b8b: e4 f6     mov   a,$f6
0b8d: 64 f6     cmp   a,$f6
0b8f: d0 fa     bne   $0b8b
0b91: c4 1f     mov   $1f,a
0b93: fa f4 21  mov   ($21),($f4)
0b96: fa f5 22  mov   ($22),($f5)
0b99: e4 f7     mov   a,$f7
0b9b: 28 fe     and   a,#$fe
0b9d: c4 20     mov   $20,a
0b9f: 8f b1 f1  mov   $f1,#$b1
0ba2: 28 fe     and   a,#$fe
0ba4: c4 20     mov   $20,a
0ba6: 68 20     cmp   a,#$20
0ba8: f0 07     beq   $0bb1
0baa: 68 22     cmp   a,#$22
0bac: f0 03     beq   $0bb1
0bae: fa 1f f6  mov   ($f6),($1f)
0bb1: 5d        mov   x,a
0bb2: c8 29     cmp   x,#$29
0bb4: b0 10     bcs   $0bc6
0bb6: e4 21     mov   a,$21
0bb8: eb 22     mov   y,$22
0bba: 3f c8 0b  call  $0bc8
0bbd: fa 21 f4  mov   ($f4),($21)
0bc0: fa 22 f5  mov   ($f5),($22)
0bc3: fa 20 f7  mov   ($f7),($20)
0bc6: ce        pop   x
0bc7: 6f        ret

0bc8: 1f 5c 19  jmp   ($195c+x)

0bcb: 3f 06 0f  call  $0f06
0bce: e8 01     mov   a,#$01
0bd0: 8d 08     mov   y,#$08
0bd2: cd 01     mov   x,#$01
0bd4: 3f f0 0b  call  $0bf0
0bd7: 8f 6c f2  mov   $f2,#$6c
0bda: 8f 00 f3  mov   $f3,#$00
0bdd: 8f ff 23  mov   $23,#$ff
0be0: 6f        ret

0be1: da 42     movw  $42,ya
0be3: 8f ff 41  mov   $41,#$ff
0be6: 6f        ret

0be7: c4 5a     mov   $5a,a
0be9: 6f        ret

0bea: e8 00     mov   a,#$00
0bec: c5 07 02  mov   $0207,a
0bef: 6f        ret

0bf0: cd 01     mov   x,#$01
0bf2: 2d        push  a
0bf3: e8 00     mov   a,#$00
0bf5: c5 06 02  mov   $0206,a
0bf8: ae        pop   a
0bf9: 2f 02     bra   $0bfd
0bfb: cd ff     mov   x,#$ff
0bfd: c5 07 02  mov   $0207,a
0c00: c5 08 02  mov   $0208,a
0c03: cc 0a 02  mov   $020a,y
0c06: c9 09 02  mov   $0209,x
0c09: 6f        ret

0c0a: 8d ff     mov   y,#$ff
0c0c: cc 05 02  mov   $0205,y
0c0f: 5f a9 0c  jmp   $0ca9

0c12: 3f 65 18  call  $1865
0c15: e5 fc 19  mov   a,$19fc
0c18: c5 33 06  mov   $0633,a
0c1b: e5 fd 19  mov   a,$19fd
0c1e: c5 34 06  mov   $0634,a
0c21: 05 33 06  or    a,$0633
0c24: f0 20     beq   $0c46
0c26: 3f 37 14  call  $1437
0c29: e5 33 06  mov   a,$0633
0c2c: 80        setc
0c2d: a8 01     sbc   a,#$01
0c2f: c5 33 06  mov   $0633,a
0c32: e5 34 06  mov   a,$0634
0c35: a8 00     sbc   a,#$00
0c37: c5 34 06  mov   $0634,a
0c3a: b0 ea     bcs   $0c26
0c3c: cd 07     mov   x,#$07
0c3e: e8 00     mov   a,#$00
0c40: d5 6e 02  mov   $026e+x,a
0c43: 1d        dec   x
0c44: 10 fa     bpl   $0c40
0c46: 6f        ret

0c47: 8f 00 64  mov   $64,#$00
0c4a: 68 00     cmp   a,#$00
0c4c: d0 03     bne   $0c51
0c4e: c5 46 05  mov   $0546,a
0c51: 6f        ret

0c52: c5 1d 02  mov   $021d,a
0c55: cd 07     mov   x,#$07
0c57: ad 80     cmp   y,#$80
0c59: f0 17     beq   $0c72
0c5b: e8 01     mov   a,#$01
0c5d: b0 0e     bcs   $0c6d
0c5f: ad 00     cmp   y,#$00
0c61: d0 08     bne   $0c6b
0c63: e5 1d 02  mov   a,$021d
0c66: 75 15 02  cmp   a,$0215+x
0c69: d0 23     bne   $0c8e
0c6b: e8 80     mov   a,#$80
0c6d: 75 0d 02  cmp   a,$020d+x
0c70: d0 1c     bne   $0c8e
0c72: f5 d5 07  mov   a,$07d5+x
0c75: c4 f2     mov   $f2,a
0c77: e8 00     mov   a,#$00
0c79: 8f 9f f3  mov   $f3,#$9f
0c7c: d5 36 02  mov   $0236+x,a
0c7f: d5 0d 02  mov   $020d+x,a
0c82: d5 7e 02  mov   $027e+x,a
0c85: d4 5b     mov   $5b+x,a
0c87: f5 f5 07  mov   a,$07f5+x
0c8a: 04 4d     or    a,$4d
0c8c: c4 4d     mov   $4d,a
0c8e: 1d        dec   x
0c8f: 10 c6     bpl   $0c57
0c91: 6f        ret

0c92: 2d        push  a
0c93: e8 00     mov   a,#$00
0c95: c5 06 02  mov   $0206,a
0c98: ae        pop   a
0c99: 5f fb 0b  jmp   $0bfb

0c9c: 2d        push  a
0c9d: e8 01     mov   a,#$01
0c9f: c5 06 02  mov   $0206,a
0ca2: ae        pop   a
0ca3: 5f fb 0b  jmp   $0bfb

0ca6: cc 05 02  mov   $0205,y
0ca9: 8d 0e     mov   y,#$0e
0cab: c5 1d 02  mov   $021d,a
0cae: 3f a9 0e  call  $0ea9
0cb1: da 11     movw  $11,ya
0cb3: 8d 00     mov   y,#$00
0cb5: f7 11     mov   a,($11)+y
0cb7: c4 44     mov   $44,a
0cb9: 3a 11     incw  $11
0cbb: 8d 07     mov   y,#$07
0cbd: f7 11     mov   a,($11)+y
0cbf: c4 45     mov   $45,a
0cc1: 8d 06     mov   y,#$06
0cc3: f7 11     mov   a,($11)+y
0cc5: c4 46     mov   $46,a
0cc7: 8f 80 47  mov   $47,#$80
0cca: cd 07     mov   x,#$07
0ccc: 3f 1c 0d  call  $0d1c
0ccf: 30 3b     bmi   $0d0c
0cd1: e8 80     mov   a,#$80
0cd3: d5 0d 02  mov   $020d+x,a
0cd6: e5 1d 02  mov   a,$021d
0cd9: d5 15 02  mov   $0215+x,a
0cdc: 8d 02     mov   y,#$02
0cde: f7 11     mov   a,($11)+y
0ce0: c4 3d     mov   $3d,a
0ce2: fc        inc   y
0ce3: f7 11     mov   a,($11)+y
0ce5: c4 3e     mov   $3e,a
0ce7: 8d 04     mov   y,#$04
0ce9: f7 11     mov   a,($11)+y
0ceb: c4 3f     mov   $3f,a
0ced: fc        inc   y
0cee: f7 11     mov   a,($11)+y
0cf0: c4 40     mov   $40,a
0cf2: e4 41     mov   a,$41
0cf4: f0 04     beq   $0cfa
0cf6: ba 42     movw  ya,$42
0cf8: da 3f     movw  $3f,ya
0cfa: 8d 01     mov   y,#$01
0cfc: f7 11     mov   a,($11)+y
0cfe: 2d        push  a
0cff: 8d 00     mov   y,#$00
0d01: f7 11     mov   a,($11)+y
0d03: 8d 01     mov   y,#$01
0d05: cc 04 02  mov   $0204,y
0d08: ee        pop   y
0d09: 3f 46 0d  call  $0d46
0d0c: 60        clrc
0d0d: 98 08 11  adc   $11,#$08
0d10: 90 02     bcc   $0d14
0d12: ab 12     inc   $12
0d14: 8b 44     dec   $44
0d16: d0 a3     bne   $0cbb
0d18: 8f 00 41  mov   $41,#$00
0d1b: 6f        ret

0d1c: 8d 07     mov   y,#$07
0d1e: e4 47     mov   a,$47
0d20: 24 45     and   a,$45
0d22: f0 0c     beq   $0d30
0d24: f5 0d 02  mov   a,$020d+x
0d27: f0 15     beq   $0d3e
0d29: e4 46     mov   a,$46
0d2b: 75 2e 02  cmp   a,$022e+x
0d2e: b0 10     bcs   $0d40
0d30: 4b 47     lsr   $47
0d32: d0 05     bne   $0d39
0d34: 8f 80 47  mov   $47,#$80
0d37: cd 08     mov   x,#$08
0d39: 1d        dec   x
0d3a: dc        dec   y
0d3b: 10 e1     bpl   $0d1e
0d3d: 6f        ret

0d3e: e4 46     mov   a,$46
0d40: d5 2e 02  mov   $022e+x,a
0d43: e8 00     mov   a,#$00
0d45: 6f        ret

0d46: d8 3b     mov   $3b,x			; play sound (instrument)
0d48: 2d        push  a
0d49: f5 d5 07  mov   a,$07d5+x
0d4c: c4 f2     mov   $f2,a
0d4e: 8f 9f f3  mov   $f3,#$9f
0d51: dd        mov   a,y
0d52: d5 6e 02  mov   $026e+x,a
0d55: 7d        mov   a,x
0d56: 1c        asl   a
0d57: 5d        mov   x,a
0d58: e4 3f     mov   a,$3f
0d5a: d5 4e 02  mov   $024e+x,a
0d5d: e4 40     mov   a,$40
0d5f: d5 4f 02  mov   $024f+x,a
0d62: e4 3d     mov   a,$3d
0d64: d5 1e 02  mov   $021e+x,a
0d67: e4 3e     mov   a,$3e
0d69: d5 1f 02  mov   $021f+x,a
0d6c: ae        pop   a
0d6d: 8d 02     mov   y,#$02
0d6f: 3f a9 0e  call  $0ea9
0d72: da 0f     movw  $0f,ya			;get current voice and instrument
0d74: f8 3b     mov   x,$3b
0d76: f5 f5 07  mov   a,$07f5+x			;get channel bit mask ID
0d79: c4 56     mov   $56,a
0d7b: 48 ff     eor   a,#$ff			;and store inversion
0d7d: c4 57     mov   $57,a
0d7f: 8d 00     mov   y,#$00			;get mode flags
0d81: f7 0f     mov   a,($0f)+y
0d83: 2d        push  a
0d84: e5 05 02  mov   a,$0205
0d87: 30 0a     bmi   $0d93
0d89: ae        pop   a
0d8a: 2d        push  a
0d8b: 28 08     and   a,#$08
0d8d: f0 04     beq   $0d93
0d8f: ae        pop   a
0d90: 48 08     eor   a,#$08
0d92: 2d        push  a
0d93: ae        pop   a
0d94: d4 5b     mov   $5b+x,a
0d96: c4 3c     mov   $3c,a
0d98: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0d9a: f0 05     beq   $0da1			; if not...
0d9c: 09 56 58  or    ($58),($56)		; turn pitch mod on
0d9f: 2f 03     bra   $0da4
0da1: 29 57 58  and   ($58),($57)		; turn pitch mod off
0da4: 8f 2d f2  mov   $f2,#$2d
0da7: fa 58 f3  mov   ($f3),($58)
0daa: e4 3c     mov   a,$3c			; retrieve the saved flag
0dac: 28 10     and   a,#$10			; is echo enabled? ($10 = echo)
0dae: f0 2f     beq   $0ddf			; if not...
0db0: 8d 05     mov   y,#$05			; get echo byte from sound
0db2: f7 0f     mov   a,($0f)+y
0db4: 8d 0c     mov   y,#$0c
0db6: 3f a9 0e  call  $0ea9
0db9: 8d 00     mov   y,#$00
0dbb: f6 05 08  mov   a,$0805+y			; get the echo register values to "poke"
0dbe: c4 f2     mov   $f2,a			; (from the table)
0dc0: f7 18     mov   a,($18)+y			; now get info to feed to the registers
0dc2: ad 01     cmp   y,#$01			; (from the echo environment)
0dc4: f0 04     beq   $0dca
0dc6: ad 02     cmp   y,#$02
0dc8: d0 09     bne   $0dd3
0dca: d6 0a 02  mov   $020a+y,a
0dcd: 64 1e     cmp   a,$1e
0dcf: 90 02     bcc   $0dd3
0dd1: e4 1e     mov   a,$1e
0dd3: c4 f3     mov   $f3,a
0dd5: fc        inc   y
0dd6: ad 0c     cmp   y,#$0c			;repeat for every byte of the array
0dd8: 90 e1     bcc   $0dbb
0dda: 09 56 59  or    ($59),($56)
0ddd: 2f 03     bra   $0de2
0ddf: 29 57 59  and   ($59),($57)		;send the echo unit
0de2: 8f 4d f2  mov   $f2,#$4d
0de5: fa 59 f3  mov   ($f3),($59)
0de8: e4 3c     mov   a,$3c
0dea: 28 01     and   a,#$01
0dec: 0d        push  psw
0ded: 8d 01     mov   y,#$01
0def: f7 0f     mov   a,($0f)+y			;now get the amplitude
0df1: 8e        pop   psw
0df2: d0 08     bne   $0dfc
0df4: f8 3b     mov   x,$3b
0df6: d5 36 02  mov   $0236+x,a
0df9: 5f 12 0e  jmp   $0e12

0dfc: 8d 04     mov   y,#$04
0dfe: 3f a9 0e  call  $0ea9
0e01: f8 3b     mov   x,$3b
0e03: f5 19 08  mov   a,$0819+x
0e06: c4 15     mov   $15,a
0e08: f5 11 08  mov   a,$0811+x
0e0b: c4 16     mov   $16,a
0e0d: ba 3d     movw  ya,$3d
0e0f: 3f 80 0f  call  $0f80
0e12: e4 3c     mov   a,$3c
0e14: 28 04     and   a,#$04
0e16: f0 1a     beq   $0e32
0e18: 8d 03     mov   y,#$03
0e1a: f7 0f     mov   a,($0f)+y
0e1c: 8d 06     mov   y,#$06
0e1e: 3f a9 0e  call  $0ea9
0e21: f8 3b     mov   x,$3b
0e23: f5 29 08  mov   a,$0829+x
0e26: c4 15     mov   $15,a
0e28: f5 21 08  mov   a,$0821+x
0e2b: c4 16     mov   $16,a
0e2d: ba 3d     movw  ya,$3d
0e2f: 3f 80 0f  call  $0f80
0e32: e5 05 02  mov   a,$0205
0e35: 10 0c     bpl   $0e43
0e37: e4 3c     mov   a,$3c
0e39: 28 08     and   a,#$08
0e3b: 0d        push  psw
0e3c: 8d 04     mov   y,#$04
0e3e: f7 0f     mov   a,($0f)+y
0e40: 8e        pop   psw
0e41: d0 08     bne   $0e4b
0e43: f8 3b     mov   x,$3b
0e45: d5 76 02  mov   $0276+x,a
0e48: 5f 78 0e  jmp   $0e78

0e4b: 8d 08     mov   y,#$08
0e4d: 3f a9 0e  call  $0ea9
0e50: f8 3b     mov   x,$3b
0e52: f5 49 08  mov   a,$0849+x
0e55: c4 15     mov   $15,a
0e57: f5 41 08  mov   a,$0841+x
0e5a: c4 16     mov   $16,a
0e5c: ba 3d     movw  ya,$3d
0e5e: 3f 80 0f  call  $0f80
0e61: 8d 07     mov   y,#$07
0e63: f7 15     mov   a,($15)+y
0e65: f0 0b     beq   $0e72
0e67: 8d 15     mov   y,#$15
0e69: f7 15     mov   a,($15)+y
0e6b: d0 05     bne   $0e72
0e6d: e8 ff     mov   a,#$ff
0e6f: 5f 74 0e  jmp   $0e74

0e72: e8 00     mov   a,#$00
0e74: 8d 15     mov   y,#$15
0e76: d7 15     mov   ($15)+y,a
0e78: e4 3c     mov   a,$3c
0e7a: 28 02     and   a,#$02
0e7c: 0d        push  psw
0e7d: 8d 02     mov   y,#$02
0e7f: f7 0f     mov   a,($0f)+y
0e81: 8e        pop   psw
0e82: d0 08     bne   $0e8c
0e84: f8 3b     mov   x,$3b
0e86: d5 7e 02  mov   $027e+x,a
0e89: 5f a2 0e  jmp   $0ea2

0e8c: 8d 0a     mov   y,#$0a
0e8e: 3f a9 0e  call  $0ea9
0e91: f8 3b     mov   x,$3b
0e93: f5 39 08  mov   a,$0839+x
0e96: c4 15     mov   $15,a
0e98: f5 31 08  mov   a,$0831+x
0e9b: c4 16     mov   $16,a
0e9d: ba 3d     movw  ya,$3d
0e9f: 3f 80 0f  call  $0f80
0ea2: 09 56 4d  or    ($4d),($56)
0ea5: 09 56 48  or    ($48),($56)
0ea8: 6f        ret

0ea9: 8f 00 0e  mov   $0e,#$00		; load current song/sfx/etc. address into stack
0eac: 1c        asl   a
0ead: 2b 0e     rol   $0e
0eaf: 60        clrc
0eb0: 96 e0 19  adc   a,$19e0+y
0eb3: c4 0d     mov   $0d,a
0eb5: e4 0e     mov   a,$0e
0eb7: 96 e1 19  adc   a,$19e1+y
0eba: c4 0e     mov   $0e,a
0ebc: 8d 01     mov   y,#$01
0ebe: f7 0d     mov   a,($0d)+y
0ec0: c4 19     mov   $19,a
0ec2: dc        dec   y
0ec3: f7 0d     mov   a,($0d)+y
0ec5: c4 18     mov   $18,a
0ec7: eb 19     mov   y,$19
0ec9: 6f        ret

0eca: cd 35     mov   x,#$35
0ecc: 8d 0f     mov   y,#$0f
0ece: 3f 1e 0f  call  $0f1e
0ed1: e8 00     mov   a,#$00
0ed3: fd        mov   y,a
0ed4: c4 04     mov   $04,a
0ed6: 8f 02 05  mov   $05,#$02
0ed9: d7 04     mov   ($04)+y,a
0edb: 3a 04     incw  $04
0edd: 78 07 05  cmp   $05,#$07
0ee0: 90 f7     bcc   $0ed9
0ee2: d6 00 00  mov   $0000+y,a
0ee5: fc        inc   y
0ee6: ad f0     cmp   y,#$f0
0ee8: 90 f8     bcc   $0ee2
0eea: 8d 00     mov   y,#$00
0eec: 60        clrc
0eed: d6 8a 00  mov   $008a+y,a
0ef0: 88 19     adc   a,#$19
0ef2: fc        inc   y
0ef3: ad 08     cmp   y,#$08
0ef5: d0 f6     bne   $0eed
0ef7: 9c        dec   a
0ef8: c4 49     mov   $49,a
0efa: c4 4b     mov   $4b,a
0efc: c4 50     mov   $50,a
0efe: c4 4a     mov   $4a,a
0f00: c4 4f     mov   $4f,a
0f02: 8f 00 1e  mov   $1e,#$00
0f05: 6f        ret

0f06: e5 e1 19  mov   a,$19e1
0f09: 8f 6d f2  mov   $f2,#$6d
0f0c: c4 f3     mov   $f3,a
0f0e: c4 05     mov   $05,a
0f10: e8 00     mov   a,#$00
0f12: fd        mov   y,a
0f13: c4 04     mov   $04,a
0f15: d7 04     mov   ($04)+y,a
0f17: fe fc     dbnz  y,$0f15
0f19: ab 05     inc   $05
0f1b: d0 f8     bne   $0f15
0f1d: 6f        ret

0f1e: d8 04     mov   $04,x
0f20: cb 05     mov   $05,y
0f22: 8d 00     mov   y,#$00
0f24: f7 04     mov   a,($04)+y
0f26: 68 ff     cmp   a,#$ff
0f28: f0 0a     beq   $0f34
0f2a: c4 f2     mov   $f2,a
0f2c: fc        inc   y
0f2d: f7 04     mov   a,($04)+y
0f2f: c4 f3     mov   $f3,a
0f31: fc        inc   y
0f32: d0 f0     bne   $0f24
0f34: 6f        ret

; pre-defined DSP flags
0f35: db $6c,$3f,$3d,$00,$4d,$00,$7d,$00,$6d,$ff,$5d,$1a,$5c,$00,$2d,$00,$05,$00,$15,$00,$25,$00,$35,$00,$45,$00,$55,$00,$65,$00,$75,$00,$07,$00,$17,$00,$27,$00,$37,$00,$47,$00,$57,$00,$67,$00,$77,$00,$7c,$00,$2c,$00,$3c,$00,$0c,$00,$1c,$00,$04,$00,$14,$00,$24,$00,$34,$00,$44,$00,$54,$00,$64,$00,$74,$00,$ff

0f80: da 2f     movw  $2f,ya
0f82: 8d 07     mov   y,#$07
0f84: f7 18     mov   a,($18)+y
0f86: d7 15     mov   ($15)+y,a
0f88: dc        dec   y
0f89: 10 f9     bpl   $0f84
0f8b: e4 18     mov   a,$18
0f8d: 60        clrc
0f8e: 88 08     adc   a,#$08
0f90: 8d 08     mov   y,#$08
0f92: d7 15     mov   ($15)+y,a
0f94: e4 19     mov   a,$19
0f96: 88 00     adc   a,#$00
0f98: fc        inc   y
0f99: d7 15     mov   ($15)+y,a
0f9b: 8d 03     mov   y,#$03
0f9d: f7 15     mov   a,($15)+y
0f9f: 5d        mov   x,a
0fa0: 8d 02     mov   y,#$02
0fa2: f7 15     mov   a,($15)+y
0fa4: fd        mov   y,a
0fa5: 7d        mov   a,x
0fa6: cf        mul   ya
0fa7: da 33     movw  $33,ya
0fa9: 4d        push  x
0faa: ba 2f     movw  ya,$2f
0fac: e9 04 02  mov   x,$0204
0faf: d0 0a     bne   $0fbb
0fb1: 5d        mov   x,a
0fb2: e5 02 02  mov   a,$0202
0fb5: ec 03 02  mov   y,$0203
0fb8: 3f e1 15  call  $15e1
0fbb: ce        pop   x
0fbc: 9a 33     subw  ya,$33
0fbe: b0 03     bcs   $0fc3
0fc0: e8 00     mov   a,#$00
0fc2: fd        mov   y,a
0fc3: cb 34     mov   $34,y
0fc5: 8d 0d     mov   y,#$0d
0fc7: d7 15     mov   ($15)+y,a
0fc9: fc        inc   y
0fca: e4 34     mov   a,$34
0fcc: d7 15     mov   ($15)+y,a
0fce: 8d 03     mov   y,#$03
0fd0: f7 15     mov   a,($15)+y
0fd2: bc        inc   a
0fd3: 8d 0f     mov   y,#$0f
0fd5: d7 15     mov   ($15)+y,a
0fd7: 68 03     cmp   a,#$03
0fd9: b0 06     bcs   $0fe1
0fdb: 8d 04     mov   y,#$04
0fdd: e8 00     mov   a,#$00
0fdf: d7 15     mov   ($15)+y,a
0fe1: 8d 08     mov   y,#$08
0fe3: f7 15     mov   a,($15)+y
0fe5: 8d 0a     mov   y,#$0a
0fe7: d7 15     mov   ($15)+y,a
0fe9: 8d 09     mov   y,#$09
0feb: f7 15     mov   a,($15)+y
0fed: 8d 0b     mov   y,#$0b
0fef: d7 15     mov   ($15)+y,a
0ff1: e8 01     mov   a,#$01
0ff3: 8d 14     mov   y,#$14
0ff5: d7 15     mov   ($15)+y,a
0ff7: 9c        dec   a
0ff8: 8d 0c     mov   y,#$0c
0ffa: d7 15     mov   ($15)+y,a
0ffc: 8d 12     mov   y,#$12
0ffe: d7 15     mov   ($15)+y,a
1000: fc        inc   y
1001: d7 15     mov   ($15)+y,a
1003: c4 28     mov   $28,a
1005: 5f b6 10  jmp   $10b6

1008: 8d 14     mov   y,#$14
100a: f7 15     mov   a,($15)+y
100c: f0 39     beq   $1047
100e: 8d 04     mov   y,#$04
1010: f7 15     mov   a,($15)+y
1012: c4 28     mov   $28,a
1014: 8d 0f     mov   y,#$0f
1016: f7 15     mov   a,($15)+y
1018: c4 29     mov   $29,a
101a: f0 03     beq   $101f
101c: 9c        dec   a
101d: d0 06     bne   $1025
101f: 8d 03     mov   y,#$03
1021: f7 15     mov   a,($15)+y
1023: 8d 0f     mov   y,#$0f
1025: d7 15     mov   ($15)+y,a
1027: 78 02 29  cmp   $29,#$02
102a: 90 03     bcc   $102f
102c: 5f b6 10  jmp   $10b6

102f: 8d 0c     mov   y,#$0c
1031: f7 15     mov   a,($15)+y
1033: bc        inc   a
1034: 8d 05     mov   y,#$05
1036: 77 15     cmp   a,($15)+y
1038: 90 17     bcc   $1051
103a: 9c        dec   a
103b: 8d 01     mov   y,#$01
103d: 77 15     cmp   a,($15)+y
103f: f0 6a     beq   $10ab
1041: e8 00     mov   a,#$00
1043: 8d 14     mov   y,#$14
1045: d7 15     mov   ($15)+y,a
1047: 8d 11     mov   y,#$11
1049: f7 15     mov   a,($15)+y
104b: 2d        push  a
104c: dc        dec   y
104d: f7 15     mov   a,($15)+y
104f: ee        pop   y
1050: 6f        ret

1051: 8d 0c     mov   y,#$0c
1053: d7 15     mov   ($15)+y,a
1055: 8d 06     mov   y,#$06
1057: f7 15     mov   a,($15)+y
1059: 8d 0a     mov   y,#$0a
105b: 60        clrc
105c: 97 15     adc   a,($15)+y
105e: d7 15     mov   ($15)+y,a
1060: 90 07     bcc   $1069
1062: fc        inc   y
1063: f7 15     mov   a,($15)+y
1065: 88 00     adc   a,#$00
1067: d7 15     mov   ($15)+y,a
1069: 8d 0e     mov   y,#$0e
106b: f7 15     mov   a,($15)+y
106d: 5d        mov   x,a
106e: dc        dec   y
106f: f7 15     mov   a,($15)+y
1071: d0 04     bne   $1077
1073: c8 00     cmp   x,#$00
1075: f0 3f     beq   $10b6
1077: 8d 03     mov   y,#$03
1079: 80        setc
107a: b7 15     sbc   a,($15)+y
107c: 8d 0d     mov   y,#$0d
107e: d7 15     mov   ($15)+y,a
1080: c4 33     mov   $33,a
1082: 7d        mov   a,x
1083: a8 00     sbc   a,#$00
1085: b0 06     bcs   $108d
1087: e8 00     mov   a,#$00
1089: d7 15     mov   ($15)+y,a
108b: c4 33     mov   $33,a
108d: fc        inc   y
108e: d7 15     mov   ($15)+y,a
1090: 04 33     or    a,$33
1092: d0 0b     bne   $109f
1094: 8d 01     mov   y,#$01
1096: f7 15     mov   a,($15)+y
1098: 68 ff     cmp   a,#$ff
109a: f0 03     beq   $109f
109c: 5f af 10  jmp   $10af

109f: 8d 0c     mov   y,#$0c
10a1: f7 15     mov   a,($15)+y
10a3: 8d 01     mov   y,#$01
10a5: 77 15     cmp   a,($15)+y
10a7: 90 0d     bcc   $10b6
10a9: f0 0b     beq   $10b6
10ab: 8d 00     mov   y,#$00
10ad: f7 15     mov   a,($15)+y
10af: 8d 0c     mov   y,#$0c
10b1: d7 15     mov   ($15)+y,a
10b3: 3f 59 11  call  $1159
10b6: f8 28     mov   x,$28
10b8: f0 14     beq   $10ce
10ba: 78 03 29  cmp   $29,#$03
10bd: 90 0f     bcc   $10ce
10bf: 8d 13     mov   y,#$13
10c1: cd 03     mov   x,#$03
10c3: f7 15     mov   a,($15)+y
10c5: d4 24     mov   $24+x,a
10c7: dc        dec   y
10c8: 1d        dec   x
10c9: 10 f8     bpl   $10c3
10cb: 5f 36 11  jmp   $1136

10ce: 3f 48 11  call  $1148
10d1: 8d 06     mov   y,#$06
10d3: f7 15     mov   a,($15)+y
10d5: 5d        mov   x,a
10d6: 8d 00     mov   y,#$00
10d8: f7 1a     mov   a,($1a)+y
10da: c8 01     cmp   x,#$01
10dc: f0 06     beq   $10e4
10de: 5d        mov   x,a
10df: fc        inc   y
10e0: f7 1a     mov   a,($1a)+y
10e2: fd        mov   y,a
10e3: 7d        mov   a,x
10e4: f8 28     mov   x,$28
10e6: f0 52     beq   $113a
10e8: 78 02 29  cmp   $29,#$02
10eb: f0 4d     beq   $113a
10ed: da 2f     movw  $2f,ya
10ef: 8d 11     mov   y,#$11
10f1: f7 15     mov   a,($15)+y
10f3: c4 25     mov   $25,a
10f5: dc        dec   y
10f6: f7 15     mov   a,($15)+y
10f8: c4 24     mov   $24,a
10fa: eb 25     mov   y,$25
10fc: 80        setc
10fd: 9a 2f     subw  ya,$2f
10ff: da 26     movw  $26,ya
1101: e8 00     mov   a,#$00
1103: 3c        rol   a
1104: c4 2f     mov   $2f,a
1106: d0 08     bne   $1110
1108: 58 ff 26  eor   $26,#$ff
110b: 58 ff 27  eor   $27,#$ff
110e: 3a 26     incw  $26
1110: 8d 03     mov   y,#$03
1112: f7 15     mov   a,($15)+y
1114: 5d        mov   x,a
1115: ba 26     movw  ya,$26
1117: 3f 74 11  call  $1174
111a: c4 26     mov   $26,a
111c: d8 27     mov   $27,x
111e: 78 01 2f  cmp   $2f,#$01
1121: d0 08     bne   $112b
1123: 58 ff 26  eor   $26,#$ff
1126: 58 ff 27  eor   $27,#$ff
1129: 3a 26     incw  $26
112b: 8d 12     mov   y,#$12
112d: e4 26     mov   a,$26
112f: d7 15     mov   ($15)+y,a
1131: fc        inc   y
1132: e4 27     mov   a,$27
1134: d7 15     mov   ($15)+y,a
1136: ba 24     movw  ya,$24
1138: 7a 26     addw  ya,$26
113a: da 24     movw  $24,ya
113c: 8d 10     mov   y,#$10
113e: d7 15     mov   ($15)+y,a
1140: e4 25     mov   a,$25
1142: fc        inc   y
1143: d7 15     mov   ($15)+y,a
1145: ba 24     movw  ya,$24
1147: 6f        ret

1148: 8d 0a     mov   y,#$0a
114a: 5f 4f 11  jmp   $114f

114d: 8d 08     mov   y,#$08
114f: f7 15     mov   a,($15)+y
1151: c4 1a     mov   $1a,a
1153: fc        inc   y
1154: f7 15     mov   a,($15)+y
1156: c4 1b     mov   $1b,a
1158: 6f        ret

1159: 2d        push  a
115a: 3f 4d 11  call  $114d
115d: 8d 06     mov   y,#$06
115f: f7 15     mov   a,($15)+y
1161: fd        mov   y,a
1162: ae        pop   a
1163: cf        mul   ya
1164: 7a 1a     addw  ya,$1a
1166: da 1a     movw  $1a,ya
1168: 8d 0a     mov   y,#$0a
116a: e4 1a     mov   a,$1a
116c: d7 15     mov   ($15)+y,a
116e: fc        inc   y
116f: e4 1b     mov   a,$1b
1171: d7 15     mov   ($15)+y,a
1173: 6f        ret

1174: c8 00     cmp   x,#$00
1176: d0 05     bne   $117d
1178: e8 ff     mov   a,#$ff
117a: fd        mov   y,a
117b: 5d        mov   x,a
117c: 6f        ret

117d: cb 2c     mov   $2c,y
117f: 3e 2c     cmp   x,$2c
1181: f0 02     beq   $1185
1183: b0 19     bcs   $119e
1185: c4 2b     mov   $2b,a
1187: dd        mov   a,y
1188: 8d 00     mov   y,#$00
118a: 9e        div   ya,x
118b: c4 2d     mov   $2d,a
118d: fd        mov   y,a
118e: 7d        mov   a,x
118f: cf        mul   ya
1190: c4 2e     mov   $2e,a
1192: e4 2c     mov   a,$2c
1194: 80        setc
1195: a4 2e     sbc   a,$2e
1197: fd        mov   y,a
1198: e4 2b     mov   a,$2b
119a: 9e        div   ya,x
119b: f8 2d     mov   x,$2d
119d: 6f        ret

119e: 9e        div   ya,x
119f: cd 00     mov   x,#$00
11a1: 6f        ret

11a2: f5 86 02  mov   a,$0286+x
11a5: 8d 04     mov   y,#$04
11a7: cf        mul   ya
11a8: 7a 13     addw  ya,$13
11aa: da 04     movw  $04,ya
11ac: 8d 01     mov   y,#$01
11ae: f7 04     mov   a,($04)+y
11b0: c4 32     mov   $32,a
11b2: dc        dec   y
11b3: f7 04     mov   a,($04)+y
11b5: 80        setc
11b6: a8 03     sbc   a,#$03
11b8: c4 31     mov   $31,a
11ba: b8 00 32  sbc   $32,#$00
11bd: f7 31     mov   a,($31)+y
11bf: c4 51     mov   $51,a
11c1: fc        inc   y
11c2: f7 31     mov   a,($31)+y
11c4: c4 52     mov   $52,a
11c6: fc        inc   y
11c7: f7 31     mov   a,($31)+y
11c9: c4 53     mov   $53,a
11cb: 6f        ret

11cc: ad 04     cmp   y,#$04
11ce: 90 06     bcc   $11d6
11d0: d0 0a     bne   $11dc
11d2: 68 b0     cmp   a,#$b0
11d4: b0 06     bcs   $11dc
11d6: 8f ff 54  mov   $54,#$ff
11d9: 5f f2 11  jmp   $11f2

11dc: ad 80     cmp   y,#$80
11de: 90 0f     bcc   $11ef
11e0: 8f 00 54  mov   $54,#$00
11e3: 60        clrc
11e4: 88 20     adc   a,#$20
11e6: 5d        mov   x,a
11e7: dd        mov   a,y
11e8: 88 df     adc   a,#$df
11ea: fd        mov   y,a
11eb: 7d        mov   a,x
11ec: 5f f2 11  jmp   $11f2

11ef: 8f 04 54  mov   $54,#$04
11f2: cd f0     mov   x,#$f0
11f4: 9e        div   ya,x
11f5: 78 ff 54  cmp   $54,#$ff
11f8: d0 02     bne   $11fc
11fa: c4 54     mov   $54,a
11fc: f6 17 12  mov   a,$1217+y			;get pitch value (from table)
11ff: c4 2f     mov   $2f,a
1201: f6 07 13  mov   a,$1307+y
1204: c4 30     mov   $30,a
1206: e8 04     mov   a,#$04
1208: 80        setc
1209: a4 54     sbc   a,$54
120b: f0 07     beq   $1214
120d: fd        mov   y,a
120e: 4b 30     lsr   $30
1210: 6b 2f     ror   $2f
1212: fe fa     dbnz  y,$120e
1214: ba 2f     movw  ya,$2f
1216: 6f        ret

; pitch table (low byte)
1217: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
1307: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

; note interval frequencies (low byte)
13f7: db $30,$20,$ac,$10,$24,$38,$4c,$60,$74,$88,$9c,$b0,$c4,$d8,$ec,$00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc,$f0,$54,$e0,$d0,$c0

; note interval frequencies (high byte)
1417: db $fd,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03

1437: e4 64     mov   a,$64
1439: d0 0c     bne   $1447
143b: e5 46 05  mov   a,$0546
143e: f0 22     beq   $1462
1440: e8 00     mov   a,#$00
1442: c5 46 05  mov   $0546,a
1445: 2f f0     bra   $1437
1447: e4 63     mov   a,$63
1449: 9c        dec   a
144a: c4 65     mov   $65,a
144c: 1c        asl   a
144d: c4 66     mov   $66,a
144f: 3f 75 0b  call  $0b75
1452: f8 65     mov   x,$65
1454: f4 68     mov   a,$68+x
1456: 5d        mov   x,a
1457: 1f e0 18  jmp   ($18e0+x)

145a: 8b 66     dec   $66
145c: 8b 66     dec   $66
145e: 8b 65     dec   $65
1460: 10 ed     bpl   $144f
1462: 6f        ret

1463: f8 65     mov   x,$65
1465: 9b 9b     dec   $9b+x
1467: d0 f1     bne   $145a
1469: f5 47 05  mov   a,$0547+x
146c: d4 9b     mov   $9b+x,a
146e: 9b a3     dec   $a3+x
1470: d0 e8     bne   $145a
1472: f4 68     mov   a,$68+x
1474: e8 04     mov   a,#$04
1476: d4 68     mov   $68+x,a
1478: 5f 7b 14  jmp   $147b

147b: f8 65     mov   x,$65
147d: f4 82     mov   a,$82+x
147f: 68 19     cmp   a,#$19
1481: f0 25     beq   $14a8
1483: 60        clrc
1484: 94 8a     adc   a,$8a+x
1486: f8 66     mov   x,$66
1488: c4 00     mov   $00,a
148a: fd        mov   y,a
148b: f6 3b 06  mov   a,$063b+y
148e: c4 04     mov   $04,a
1490: f6 3c 06  mov   a,$063c+y
1493: c4 05     mov   $05,a
1495: 8d 02     mov   y,#$02
1497: f7 04     mov   a,($04)+y
1499: 74 72     cmp   a,$72+x
149b: d0 0b     bne   $14a8
149d: 8d 03     mov   y,#$03
149f: f7 04     mov   a,($04)+y
14a1: 74 73     cmp   a,$73+x
14a3: d0 03     bne   $14a8
14a5: 5f fd 16  jmp   $16fd

14a8: 3f bd 15  call  $15bd
14ab: fd        mov   y,a		; get the current note/command
14ac: 28 20     and   a,#$20
14ae: c4 67     mov   $67,a
14b0: f8 65     mov   x,$65
14b2: ad 80     cmp   y,#$80		; is it a note?
14b4: 90 3d     bcc   $14f3
14b6: ad f0     cmp   y,#$f0		; is it a special meaning flag?
14b8: 90 08     bcc   $14c2
14ba: dd        mov   a,y		; then it must be a command...
14bb: 28 0f     and   a,#$0f
14bd: 1c        asl   a
14be: 5d        mov   x,a
14bf: 1f 3e 18  jmp   ($183e+x)		; jump to command number position

14c2: f5 67 05  mov   a,$0567+x		; pitch bend
14c5: f0 4c     beq   $1513
14c7: dd        mov   a,y
14c8: 28 08     and   a,#$08
14ca: 0d        push  psw
14cb: dd        mov   a,y
14cc: 28 07     and   a,#$07
14ce: bc        inc   a
14cf: 1c        asl   a
14d0: f8 66     mov   x,$66
14d2: 8e        pop   psw
14d3: f0 0d     beq   $14e2
14d5: 60        clrc
14d6: 94 be     adc   a,$be+x
14d8: d4 be     mov   $be+x,a
14da: f4 bf     mov   a,$bf+x
14dc: 88 00     adc   a,#$00
14de: d4 bf     mov   $bf+x,a
14e0: 2f 31     bra   $1513
14e2: c4 2f     mov   $2f,a
14e4: f4 be     mov   a,$be+x
14e6: 80        setc
14e7: a4 2f     sbc   a,$2f
14e9: d4 be     mov   $be+x,a
14eb: f4 bf     mov   a,$bf+x
14ed: a8 00     sbc   a,#$00
14ef: d4 bf     mov   $bf+x,a
14f1: 2f 20     bra   $1513
14f3: f5 67 05  mov   a,$0567+x			; play the note (check first)
14f6: f0 1b     beq   $1513
14f8: dd        mov   a,y
14f9: 28 1f     and   a,#$1f			; get the actual note value
14fb: fd        mov   y,a
14fc: f8 66     mov   x,$66
14fe: f4 ae     mov   a,$ae+x
1500: 60        clrc
1501: 96 f7 13  adc   a,$13f7+y
1504: d4 ae     mov   $ae+x,a
1506: f4 af     mov   a,$af+x
1508: 96 17 14  adc   a,$1417+y
150b: d4 af     mov   $af+x,a
150d: e8 00     mov   a,#$00
150f: d4 be     mov   $be+x,a
1511: d4 bf     mov   $bf+x,a
1513: 3f bd 15  call  $15bd
1516: 68 00     cmp   a,#$00
1518: d0 07     bne   $1521
151a: f8 65     mov   x,$65
151c: f4 68     mov   a,$68+x
151e: 5f 4f 14  jmp   $144f

1521: f8 65     mov   x,$65
1523: d4 a3     mov   $a3+x,a
1525: fd        mov   y,a
1526: f5 47 05  mov   a,$0547+x
1529: d4 9b     mov   $9b+x,a
152b: cf        mul   ya
152c: da 3d     movw  $3d,ya
152e: 3f 25 18  call  $1825
1531: f5 6f 05  mov   a,$056f+x
1534: 5d        mov   x,a
1535: f5 0d 02  mov   a,$020d+x
1538: f0 0a     beq   $1544
153a: e8 40     mov   a,#$40
153c: 75 2e 02  cmp   a,$022e+x
153f: b0 05     bcs   $1546
1541: 5f 5a 14  jmp   $145a

1544: e8 40     mov   a,#$40
1546: d5 2e 02  mov   $022e+x,a
1549: e8 01     mov   a,#$01
154b: d5 0d 02  mov   $020d+x,a
154e: d8 ab     mov   $ab,x
1550: 7d        mov   a,x
1551: f8 65     mov   x,$65
1553: f5 67 05  mov   a,$0567+x
1556: d0 0c     bne   $1564
1558: f8 66     mov   x,$66
155a: f4 ae     mov   a,$ae+x
155c: c4 3f     mov   $3f,a
155e: f4 af     mov   a,$af+x
1560: c4 40     mov   $40,a
1562: 2f 1e     bra   $1582
1564: f8 66     mov   x,$66
1566: f4 ae     mov   a,$ae+x
1568: 60        clrc
1569: 94 be     adc   a,$be+x
156b: c4 3f     mov   $3f,a
156d: f4 af     mov   a,$af+x
156f: 94 bf     adc   a,$bf+x
1571: c4 40     mov   $40,a
1573: f5 77 05  mov   a,$0577+x
1576: 60        clrc
1577: 84 3f     adc   a,$3f
1579: c4 3f     mov   $3f,a
157b: f5 78 05  mov   a,$0578+x
157e: 84 40     adc   a,$40
1580: c4 40     mov   $40,a
1582: eb 67     mov   y,$67
1584: d0 0f     bne   $1595
1586: 0b ab     asl   $ab
1588: f8 ab     mov   x,$ab
158a: d5 4f 02  mov   $024f+x,a
158d: e4 3f     mov   a,$3f
158f: d5 4e 02  mov   $024e+x,a
1592: 5f 5a 14  jmp   $145a

1595: f8 65     mov   x,$65
1597: f5 4f 05  mov   a,$054f+x
159a: 60        clrc
159b: 95 57 05  adc   a,$0557+x
159e: 10 02     bpl   $15a2
15a0: e8 7f     mov   a,#$7f
15a2: c4 ac     mov   $ac,a
15a4: f8 65     mov   x,$65
15a6: f5 5f 05  mov   a,$055f+x
15a9: f8 ab     mov   x,$ab
15ab: 8d 00     mov   y,#$00
15ad: cc 04 02  mov   $0204,y
15b0: 8d ff     mov   y,#$ff
15b2: cc 05 02  mov   $0205,y
15b5: eb ac     mov   y,$ac
15b7: 3f 46 0d  call  $0d46
15ba: 5f 5a 14  jmp   $145a

15bd: f8 66     mov   x,$66
15bf: e7 72     mov   a,($72+x)
15c1: bb 72     inc   $72+x			; update melody (sequence) position pointer
15c3: d0 02     bne   $15c7
15c5: bb 73     inc   $73+x
15c7: 6f        ret

; vcmd f0 - end of sequence
15c8: f8 65     mov   x,$65
15ca: e8 00     mov   a,#$00
15cc: d4 68     mov   $68+x,a
15ce: 8b 64     dec   $64
15d0: 5f 5a 14  jmp   $145a

; vcmd f1 - delta expression
15d3: f8 65     mov   x,$65
15d5: f5 57 05  mov   a,$0557+x
15d8: 3f f6 15  call  $15f6
15db: d5 57 05  mov   $0557+x,a
15de: 5f 7b 14  jmp   $147b

15e1: 6d        push  y
15e2: 4d        push  x
15e3: ee        pop   y
15e4: cf        mul   ya
15e5: da 2f     movw  $2f,ya
15e7: 7d        mov   a,x
15e8: ee        pop   y
15e9: cf        mul   ya
15ea: 6d        push  y
15eb: 0b 2f     asl   $2f
15ed: 84 30     adc   a,$30
15ef: 5d        mov   x,a
15f0: ae        pop   a
15f1: 88 00     adc   a,#$00
15f3: fd        mov   y,a
15f4: 7d        mov   a,x
15f5: 6f        ret

15f6: 4d        push  x			; scale volume - get 2 bytes
15f7: fd        mov   y,a
15f8: 6d        push  y
15f9: 3f bd 15  call  $15bd
15fc: cf        mul   ya
15fd: da 2f     movw  $2f,ya
15ff: ee        pop   y
1600: 3f bd 15  call  $15bd
1603: cf        mul   ya
1604: 6d        push  y
1605: 0b 2f     asl   $2f
1607: 84 30     adc   a,$30
1609: 5d        mov   x,a
160a: ae        pop   a
160b: 88 00     adc   a,#$00
160d: fd        mov   y,a
160e: d0 03     bne   $1613
1610: 7d        mov   a,x
1611: 10 02     bpl   $1615
1613: e8 7f     mov   a,#$7f
1615: ce        pop   x
1616: 6f        ret

; vcmd f2 - absolute expression
1617: 3f bd 15  call  $15bd
161a: f8 65     mov   x,$65
161c: d5 57 05  mov   $0557+x,a
161f: 5f 7b 14  jmp   $147b

; vcmd f3 - mute
1622: f8 65     mov   x,$65
1624: f5 6f 05  mov   a,$056f+x
1627: 30 15     bmi   $163e
1629: fd        mov   y,a
162a: f6 0d 02  mov   a,$020d+y
162d: 68 80     cmp   a,#$80
162f: f0 0d     beq   $163e
1631: e8 00     mov   a,#$00
1633: d6 6e 02  mov   $026e+y,a
1636: f6 d5 07  mov   a,$07d5+y
1639: c4 f2     mov   $f2,a
163b: 8f 9f f3  mov   $f3,#$9f

; vcmd f4 - rest
163e: 3f bd 15  call  $15bd
1641: f8 65     mov   x,$65
1643: d4 a3     mov   $a3+x,a
1645: f5 47 05  mov   a,$0547+x
1648: d4 9b     mov   $9b+x,a
164a: 3f 25 18  call  $1825
164d: 5f 5a 14  jmp   $145a

; vcmd f5 - set sound/instrument
1650: 3f bd 15  call  $15bd		; get 1 more byte = read sound number
1653: f8 65     mov   x,$65
1655: d5 5f 05  mov   $055f+x,a		; move it onto the stack
1658: f4 82     mov   a,$82+x
165a: 68 19     cmp   a,#$19		; $19 = phrase stack max value?
165c: f0 32     beq   $1690
165e: 60        clrc
165f: 94 8a     adc   a,$8a+x
1661: f8 66     mov   x,$66
1663: c4 00     mov   $00,a
1665: fd        mov   y,a
1666: f6 3b 06  mov   a,$063b+y
1669: c4 04     mov   $04,a
166b: f6 3c 06  mov   a,$063c+y
166e: c4 05     mov   $05,a
1670: f6 39 06  mov   a,$0639+y
1673: 8d 09     mov   y,#$09
1675: 77 04     cmp   a,($04)+y
1677: 90 02     bcc   $167b
1679: e8 00     mov   a,#$00
167b: bc        inc   a
167c: eb 00     mov   y,$00
167e: d6 39 06  mov   $0639+y,a
1681: 60        clrc
1682: 88 09     adc   a,#$09
1684: fd        mov   y,a
1685: f7 04     mov   a,($04)+y
1687: 68 ff     cmp   a,#$ff
1689: f0 05     beq   $1690
168b: f8 65     mov   x,$65
168d: d5 5f 05  mov   $055f+x,a
1690: 5f 7b 14  jmp   $147b

; vcmd f6 - play phrase
1693: f8 65     mov   x,$65
1695: f4 82     mov   a,$82+x		; push entry onto stack
1697: 80        setc
1698: a8 05     sbc   a,#$05
169a: d4 82     mov   $82+x,a
169c: 60        clrc			; set to current player
169d: 94 8a     adc   a,$8a+x
169f: fd        mov   y,a
16a0: cb 00     mov   $00,y
16a2: f8 66     mov   x,$66
16a4: f4 72     mov   a,$72+x
16a6: d6 3b 06  mov   $063b+y,a		; LSB of pointer
16a9: f4 73     mov   a,$73+x
16ab: d6 3c 06  mov   $063c+y,a		; MSB of pointer
16ae: e8 00     mov   a,#$00
16b0: d6 38 06  mov   $0638+y,a		; number of loops
16b3: 3f bd 15  call  $15bd		; start point low byte
16b6: 2d        push  a
16b7: 3f bf 15  call  $15bf		; start point high byte
16ba: 2d        push  a
16bb: 3f bf 15  call  $15bf		; end point low byte
16be: 3f bf 15  call  $15bf		; end point high byte
16c1: 3f bf 15  call  $15bf		; number of loops
16c4: 3f bf 15  call  $15bf		; frequency offset LSB low byte
16c7: fd        mov   y,a
16c8: 3f bf 15  call  $15bf		; frequency offset LSB high byte
16cb: 2d        push  a
16cc: dd        mov   a,y
16cd: 60        clrc
16ce: 95 77 05  adc   a,$0577+x		; adjust frequency
16d1: d5 77 05  mov   $0577+x,a
16d4: ae        pop   a
16d5: 95 78 05  adc   a,$0578+x
16d8: d5 78 05  mov   $0578+x,a
16db: f8 65     mov   x,$65
16dd: f5 57 05  mov   a,$0557+x
16e0: eb 00     mov   y,$00
16e2: d6 3a 06  mov   $063a+y,a
16e5: 3f f6 15  call  $15f6		; scale the volume (read next 2 bytes)
16e8: d5 57 05  mov   $0557+x,a
16eb: eb 00     mov   y,$00		; initialize instrument pointer
16ed: e8 00     mov   a,#$00
16ef: d6 39 06  mov   $0639+y,a
16f2: f8 66     mov   x,$66
16f4: ae        pop   a
16f5: d4 73     mov   $73+x,a
16f7: ae        pop   a
16f8: d4 72     mov   $72+x,a
16fa: 5f 7b 14  jmp   $147b

16fd: eb 00     mov   y,$00
16ff: f6 38 06  mov   a,$0638+y
1702: bc        inc   a
1703: d6 38 06  mov   $0638+y,a
1706: 8d 04     mov   y,#$04
1708: f7 04     mov   a,($04)+y
170a: f0 07     beq   $1713
170c: eb 00     mov   y,$00
170e: 76 38 06  cmp   a,$0638+y
1711: f0 0f     beq   $1722
1713: 8d 00     mov   y,#$00
1715: f7 04     mov   a,($04)+y
1717: d4 72     mov   $72+x,a
1719: 8d 01     mov   y,#$01
171b: f7 04     mov   a,($04)+y
171d: d4 73     mov   $73+x,a
171f: 5f a8 14  jmp   $14a8

1722: f5 77 05  mov   a,$0577+x
1725: 80        setc
1726: 8d 05     mov   y,#$05
1728: b7 04     sbc   a,($04)+y
172a: d5 77 05  mov   $0577+x,a
172d: f5 78 05  mov   a,$0578+x
1730: 8d 06     mov   y,#$06
1732: b7 04     sbc   a,($04)+y
1734: d5 78 05  mov   $0578+x,a
1737: eb 00     mov   y,$00
1739: f6 3a 06  mov   a,$063a+y
173c: f8 65     mov   x,$65
173e: d5 57 05  mov   $0557+x,a
1741: f8 66     mov   x,$66
1743: e4 04     mov   a,$04
1745: 60        clrc
1746: 88 0a     adc   a,#$0a
1748: d4 72     mov   $72+x,a
174a: e4 05     mov   a,$05
174c: 88 00     adc   a,#$00
174e: d4 73     mov   $73+x,a
1750: 8d 09     mov   y,#$09
1752: f7 04     mov   a,($04)+y
1754: 60        clrc
1755: 94 72     adc   a,$72+x
1757: d4 72     mov   $72+x,a
1759: f4 73     mov   a,$73+x
175b: 88 00     adc   a,#$00
175d: d4 73     mov   $73+x,a
175f: f8 65     mov   x,$65
1761: f4 82     mov   a,$82+x
1763: 60        clrc
1764: 88 05     adc   a,#$05
1766: d4 82     mov   $82+x,a
1768: 5f 7b 14  jmp   $147b

; vcmd f7-f8 - set detune
176b: 28 02     and   a,#$02
176d: c4 67     mov   $67,a
176f: 3f bd 15  call  $15bd
1772: d4 ae     mov   $ae+x,a
1774: 3f bd 15  call  $15bd
1777: d4 af     mov   $af+x,a
1779: e8 00     mov   a,#$00
177b: d4 be     mov   $be+x,a
177d: d4 bf     mov   $bf+x,a
177f: 5f 13 15  jmp   $1513

; vcmd f9 - go to loop
1782: eb 65     mov   y,$65
1784: fc        inc   y
1785: f7 70     mov   a,($70)+y
1787: 8d 10     mov   y,#$10
1789: 3f a9 0e  call  $0ea9
178c: f8 66     mov   x,$66
178e: d4 72     mov   $72+x,a
1790: db 73     mov   $73+x,y
1792: e8 1c     mov   a,#$1c
1794: d4 ae     mov   $ae+x,a
1796: e8 02     mov   a,#$02
1798: d4 af     mov   $af+x,a
179a: f8 65     mov   x,$65
179c: e8 00     mov   a,#$00
179e: d5 4f 05  mov   $054f+x,a
17a1: d5 57 05  mov   $0557+x,a
17a4: 5f 7b 14  jmp   $147b

; vcmd fa - set tempo
17a7: 3f bd 15  call  $15bd
17aa: c5 00 02  mov   $0200,a
17ad: 3f bd 15  call  $15bd
17b0: c5 02 02  mov   $0202,a
17b3: 3f bd 15  call  $15bd
17b6: c5 03 02  mov   $0203,a
17b9: 5f 7b 14  jmp   $147b

17bc: 8f ff 92  mov   $92,#$ff
17bf: 8f 20 93  mov   $93,#$20
17c2: 8f 00 64  mov   $64,#$00
17c5: da 94     movw  $94,ya
17c7: 8f 80 98  mov   $98,#$80
17ca: 8f 00 96  mov   $96,#$00
17cd: c8 00     cmp   x,#$00
17cf: d0 0c     bne   $17dd
17d1: cd 02     mov   x,#$02
17d3: cb 99     mov   $99,y
17d5: c4 9a     mov   $9a,a
17d7: 8f 99 94  mov   $94,#$99
17da: 8f 00 95  mov   $95,#$00
17dd: d8 97     mov   $97,x
17df: 6f        ret

17e0: 8b 93     dec   $93
17e2: f0 01     beq   $17e5
17e4: 6f        ret

17e5: eb 96     mov   y,$96
17e7: f7 94     mov   a,($94)+y
17e9: 24 98     and   a,$98
17eb: f0 04     beq   $17f1
17ed: e8 a0     mov   a,#$a0
17ef: 2f 02     bra   $17f3
17f1: e8 50     mov   a,#$50
17f3: c4 42     mov   $42,a
17f5: 8f 01 43  mov   $43,#$01
17f8: 8f ff 41  mov   $41,#$ff
17fb: 4b 98     lsr   $98
17fd: b0 0d     bcs   $180c
17ff: 8f 0c 93  mov   $93,#$0c
1802: 78 08 98  cmp   $98,#$08
1805: d0 19     bne   $1820
1807: 8f 24 93  mov   $93,#$24
180a: 2f 14     bra   $1820
180c: 8f 80 98  mov   $98,#$80
180f: 8f 3c 93  mov   $93,#$3c
1812: ab 96     inc   $96
1814: e4 96     mov   a,$96
1816: 64 97     cmp   a,$97
1818: d0 06     bne   $1820
181a: 8f 60 93  mov   $93,#$60
181d: 8f 00 96  mov   $96,#$00
1820: e8 00     mov   a,#$00
1822: 5f a9 0c  jmp   $0ca9

1825: e8 02     mov   a,#$02
1827: d4 68     mov   $68+x,a
1829: 6f        ret

182a: 78 80 ad  cmp   $ad,#$80
182d: 90 08     bcc   $1837
182f: 60        clrc
1830: 84 ad     adc   a,$ad
1832: 10 09     bpl   $183d
1834: e8 00     mov   a,#$00
1836: 6f        ret

1837: 84 ad     adc   a,$ad
1839: 10 02     bpl   $183d
183b: e8 7f     mov   a,#$7f
183d: 6f        ret

; vcmd table (f0-fa)
183e: dw $15c8		; f0 - end of melody
1840: dw $15d3		; f1 - delta expression
1842: dw $1617		; f2 - absolute expression
1844: dw $1622		; f3 - mute
1846: dw $163e		; f4 - rest
1848: dw $1650		; f5 - set sound/instrument
184a: dw $1693		; f6 - play phrase
184c: dw $176b		; f7 - set detune
184e: dw $176b		; f8 - set detune
1850: dw $1782		; f9 - go to loop
1852: dw $17a7		; fa - set tempo

1854: e4 01     mov   a,$01
1856: 1c        asl   a
1857: 44 01     eor   a,$01
1859: 1c        asl   a
185a: 1c        asl   a
185b: 1c        asl   a
185c: 2b 03     rol   $03
185e: 2b 02     rol   $02
1860: 2b 01     rol   $01
1862: e4 03     mov   a,$03
1864: 6f        ret

1865: 8f 00 92  mov   $92,#$00
1868: 8d 1a     mov   y,#$1a
186a: 3f a9 0e  call  $0ea9
186d: da 70     movw  $70,ya
186f: 8d 00     mov   y,#$00
1871: f7 70     mov   a,($70)+y
1873: c4 63     mov   $63,a
1875: c4 64     mov   $64,a
1877: f0 66     beq   $18df
1879: 8f 00 65  mov   $65,#$00
187c: 8f 00 66  mov   $66,#$00
187f: fc        inc   y
1880: f7 70     mov   a,($70)+y
1882: 6d        push  y
1883: 8d 10     mov   y,#$10
1885: 3f a9 0e  call  $0ea9
1888: f8 66     mov   x,$66
188a: d4 72     mov   $72+x,a
188c: dd        mov   a,y
188d: ee        pop   y
188e: d4 73     mov   $73+x,a
1890: f8 65     mov   x,$65
1892: e8 19     mov   a,#$19
1894: d4 82     mov   $82+x,a
1896: e8 04     mov   a,#$04
1898: d4 68     mov   $68+x,a
189a: e8 ff     mov   a,#$ff
189c: d5 67 05  mov   $0567+x,a
189f: e8 01     mov   a,#$01
18a1: d5 47 05  mov   $0547+x,a
18a4: 7d        mov   a,x
18a5: d5 6f 05  mov   $056f+x,a
18a8: f8 66     mov   x,$66
18aa: e8 1c     mov   a,#$1c
18ac: d4 ae     mov   $ae+x,a
18ae: e8 02     mov   a,#$02
18b0: d4 af     mov   $af+x,a
18b2: e8 00     mov   a,#$00
18b4: d5 77 05  mov   $0577+x,a
18b7: d5 78 05  mov   $0578+x,a
18ba: f8 65     mov   x,$65
18bc: d5 4f 05  mov   $054f+x,a
18bf: d5 57 05  mov   $0557+x,a
18c2: e8 00     mov   a,#$00
18c4: c5 00 02  mov   $0200,a
18c7: c5 02 02  mov   $0202,a
18ca: e8 01     mov   a,#$01
18cc: c5 03 02  mov   $0203,a
18cf: e8 ff     mov   a,#$ff
18d1: c5 01 02  mov   $0201,a
18d4: ab 66     inc   $66
18d6: ab 66     inc   $66
18d8: 3d        inc   x
18d9: d8 65     mov   $65,x
18db: 3e 63     cmp   x,$63
18dd: 90 a0     bcc   $187f
18df: 6f        ret

18e0: dw $145a
18e2: dw $1463
18e4: dw $147b

18e6: ba 21     movw  ya,$21
18e8: da 0a     movw  $0a,ya
18ea: 6f        ret

18eb: eb 21     mov   y,$21
18ed: fa 1f f6  mov   ($f6),($1f)
18f0: 00        nop
18f1: 00        nop
18f2: 00        nop
18f3: 00        nop
18f4: e4 f4     mov   a,$f4
18f6: d7 0a     mov   ($0a)+y,a
18f8: dc        dec   y
18f9: e4 f5     mov   a,$f5
18fb: d7 0a     mov   ($0a)+y,a
18fd: dc        dec   y
18fe: e4 f6     mov   a,$f6
1900: d7 0a     mov   ($0a)+y,a
1902: dc        dec   y
1903: e4 f7     mov   a,$f7
1905: d7 0a     mov   ($0a)+y,a
1907: dc        dec   y
1908: 10 ea     bpl   $18f4
190a: ba 0a     movw  ya,$0a
190c: 7a 21     addw  ya,$21
190e: da 0a     movw  $0a,ya
1910: 3a 0a     incw  $0a
1912: 8f b1 f1  mov   $f1,#$b1
1915: fa 1f f6  mov   ($f6),($1f)
1918: 6f        ret

1919: eb 21     mov   y,$21
191b: fa 1f f6  mov   ($f6),($1f)
191e: e4 f6     mov   a,$f6
1920: 64 f6     cmp   a,$f6
1922: d0 fa     bne   $191e
1924: 68 00     cmp   a,#$00
1926: f0 f6     beq   $191e
1928: 64 1f     cmp   a,$1f
192a: f0 f2     beq   $191e
192c: c4 1f     mov   $1f,a
192e: e4 f4     mov   a,$f4
1930: d7 0a     mov   ($0a)+y,a
1932: dc        dec   y
1933: 30 19     bmi   $194e
1935: e4 f5     mov   a,$f5
1937: d7 0a     mov   ($0a)+y,a
1939: dc        dec   y
193a: 30 12     bmi   $194e
193c: e4 f7     mov   a,$f7
193e: d7 0a     mov   ($0a)+y,a
1940: cb f7     mov   $f7,y
1942: fa 0a f4  mov   ($f4),($0a)
1945: fa 0b f5  mov   ($f5),($0b)
1948: fa 1f f6  mov   ($f6),($1f)
194b: dc        dec   y
194c: 10 d0     bpl   $191e
194e: 8f b1 f1  mov   $f1,#$b1
1951: fa 1f f6  mov   ($f6),($1f)
1954: ba 0a     movw  ya,$0a
1956: 7a 21     addw  ya,$21
1958: da 0a     movw  $0a,ya
195a: 3a 0a     incw  $0a
195c: 6f        ret

195e: dw $0bcb
1860: dw $0c0a
1862: dw $0c12