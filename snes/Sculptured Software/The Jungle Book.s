0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f a0 fa  mov   $fa,#$a0		; stop all timers
0707: 8f a0 fb  mov   $fb,#$a0
070a: 8f 20 fc  mov   $fc,#$20
070d: 8f 87 f1  mov   $f1,#$87		; clear COM ports
0710: 3f c0 10  call  $10c0		; initialize all sound
0713: 8f 00 24  mov   $24,#$00		; install permanent pointer to the wave source dir
0716: 8f 1f 25  mov   $25,#$1f
0719: 8f 01 f6  mov   $f6,#$01
071c: 62 08     set3  $08
071e: 3f be 0b  call  $0bbe
0721: 3f 85 0b  call  $0b85
0724: 33 07 f7  bbc1  $07,$071e
0727: 8d 10     mov   y,#$10
0729: 3f 4a 07  call  $074a
072c: 83 07 12  bbs4  $07,$0741
072f: e4 fe     mov   a,$fe
0731: f0 0e     beq   $0741
0733: e4 c9     mov   a,$c9
0735: f0 07     beq   $073e
0737: 60        clrc
0738: 84 ca     adc   a,$ca
073a: c4 ca     mov   $ca,a
073c: 90 03     bcc   $0741
073e: 3f 50 17  call  $1750
0741: e4 fd     mov   a,$fd
0743: f0 d9     beq   $071e
0745: 3f 7b 08  call  $087b
0748: 2f d4     bra   $071e
074a: e4 ff     mov   a,$ff
074c: d0 03     bne   $0751
074e: e8 01     mov   a,#$01
0750: 6f        ret

0751: cb 3b     mov   $3b,y
0753: 8f 00 3a  mov   $3a,#$00
0756: cd 14     mov   x,#$14
0758: e4 f6     mov   a,$f6
075a: f0 03     beq   $075f
075c: 3f be 0b  call  $0bbe
075f: eb 3b     mov   y,$3b
0761: f5 4a 08  mov   a,$084a+x
0764: c4 f2     mov   $f2,a
0766: f5 28 02  mov   a,$0228+x
0769: 64 f3     cmp   a,$f3
076b: f0 0f     beq   $077c
076d: b0 09     bcs   $0778
076f: 8b f3     dec   $f3
0771: dc        dec   y
0772: d0 f5     bne   $0769
0774: ab 3a     inc   $3a
0776: 2f 04     bra   $077c
0778: ab f3     inc   $f3
077a: 2f f5     bra   $0771
077c: 1d        dec   x
077d: 10 d9     bpl   $0758
077f: e4 3a     mov   a,$3a
0781: 6f        ret

0782: 8f aa f4  mov   $f4,#$aa
0785: 8f bb f5  mov   $f5,#$bb
0788: e8 cc     mov   a,#$cc
078a: fa f4 ef  mov   ($ef),($f4)
078d: 69 f4 ef  cmp   ($ef),($f4)
0790: d0 f8     bne   $078a
0792: 2e ef f5  cbne  $ef,$078a
0795: e4 ef     mov   a,$ef
0797: fa f6 3d  mov   ($3d),($f6)
079a: fa f7 3e  mov   ($3e),($f7)
079d: fd        mov   y,a
079e: e4 f5     mov   a,$f5
07a0: cb f4     mov   $f4,y
07a2: d0 08     bne   $07ac
07a4: 8f b0 f1  mov   $f1,#$b0
07a7: cb f5     mov   $f5,y
07a9: 5f 00 07  jmp   $0700

07ac: cd 00     mov   x,#$00
07ae: 7d        mov   a,x
07af: fa f4 ef  mov   ($ef),($f4)
07b2: 69 f4 ef  cmp   ($ef),($f4)
07b5: d0 f8     bne   $07af
07b7: 2e ef f5  cbne  $ef,$07af
07ba: e4 f5     mov   a,$f5
07bc: d8 f4     mov   $f4,x
07be: d5 be 07  mov   $07be+x,a
07c1: 7d        mov   a,x
07c2: 3d        inc   x
07c3: d0 02     bne   $07c7
07c5: ab 3e     inc   $3e
07c7: fa f4 ef  mov   ($ef),($f4)
07ca: 69 f4 ef  cmp   ($ef),($f4)
07cd: d0 f8     bne   $07c7
07cf: 64 ef     cmp   a,$ef
07d1: f0 f4     beq   $07c7
07d3: 3e ef     cmp   x,$ef
07d5: d0 be     bne   $0795
07d7: e4 f5     mov   a,$f5
07d9: d8 f4     mov   $f4,x
07db: 2f e1     bra   $07be
07dd: 72 08     clr3  $08
07df: 8d 80     mov   y,#$80
07e1: 3f 42 0d  call  $0d42
07e4: 3f 16 11  call  $1116
07e7: 32 07     clr1  $07
07e9: 8f 6c f2  mov   $f2,#$6c
07ec: 8f 3f f3  mov   $f3,#$3f
07ef: cd 00     mov   x,#$00
07f1: f5 82 07  mov   a,$0782+x
07f4: d4 00     mov   $00+x,a
07f6: 3d        inc   x
07f7: c8 5b     cmp   x,#$5b
07f9: 90 f6     bcc   $07f1
07fb: 5f 00 00  jmp   $0000

; gain tables
07fe: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08,$06,$05,$04,$03,$02,$01
0814: db $1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

; DSP registers: VxENVX
082a: db $08,$18,$28,$38,$48,$58,$68,$78
; DSP registers: VxGAIN
0832: db $07,$17,$27,$37,$47,$57,$67,$77
; DSP registers: VxSCRN (select sample)
083a: db $04,$14,$24,$34,$44,$54,$64,$74
; DSP registers: VxPITCHL
0842: db $02,$12,$22,$32,$42,$52,$62,$72
; DSP registers: VxVOLL
084a: db $00,$10,$20,$30,$40,$50,$60,$70,$01,$11,$21,$31,$41,$51,$61,$71,$2c,$3c,$0d,$0c,$1c

; voice numbers and bits for clearing those void bits
085f: db $01,$02,$04,$08,$10,$20,$40,$80,$fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo poke registers
086f: db $7d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

087b: 3f be 0b  call  $0bbe		; que command
087e: 8f 00 44  mov   $44,#$00		; reset sample flags
0881: 8f 00 55  mov   $55,#$00
0884: 8f 7c f2  mov   $f2,#$7c
0887: e4 f3     mov   a,$f3
0889: 24 58     and   a,$58
088b: c4 52     mov   $52,a
088d: 8f 00 f3  mov   $f3,#$00
0890: cd 07     mov   x,#$07		; find out all channels changing waves
0892: 3f be 0b  call  $0bbe		; (to restart them, starting with 7)
0895: d8 28     mov   $28,x
0897: 7d        mov   a,x
0898: 60        clrc
0899: 88 10     adc   a,#$10
089b: c4 2d     mov   $2d,a
089d: f5 5f 08  mov   a,$085f+x
08a0: c4 45     mov   $45,a
08a2: 48 ff     eor   a,#$ff
08a4: c4 46     mov   $46,a
08a6: f4 62     mov   a,$62+x
08a8: c4 48     mov   $48,a
08aa: a2 08     set5  $08
08ac: 23 48 06  bbs1  $48,$08b5
08af: f5 ec fc  mov   a,$fcec+x
08b2: 5f c3 08  jmp   $08c3

08b5: eb 2d     mov   y,$2d
08b7: f6 e3 04  mov   a,$04e3+y
08ba: d0 02     bne   $08be
08bc: b2 08     clr5  $08
08be: 3f 9c 12  call  $129c
08c1: f8 28     mov   x,$28
08c3: 75 f4 fc  cmp   a,$fcf4+x
08c6: d0 0d     bne   $08d5
08c8: 3f 5a 14  call  $145a
08cb: e4 5d     mov   a,$5d
08cd: 24 56     and   a,$56
08cf: 24 45     and   a,$45
08d1: d0 43     bne   $0916
08d3: 2f 44     bra   $0919
08d5: d5 f4 fc  mov   $fcf4+x,a
08d8: 09 45 44  or    ($44),($45)
08db: 3f 5a 14  call  $145a
08de: 7d        mov   a,x
08df: 1c        asl   a
08e0: 5d        mov   x,a
08e1: e5 04 01  mov   a,$0104
08e4: d5 4b 01  mov   $014b+x,a
08e7: e5 05 01  mov   a,$0105
08ea: d5 4c 01  mov   $014c+x,a
08ed: f8 28     mov   x,$28
08ef: e4 5e     mov   a,$5e
08f1: 28 20     and   a,#$20
08f3: f0 05     beq   $08fa
08f5: 29 46 53  and   ($53),($46)
08f8: 2f 03     bra   $08fd
08fa: 09 45 53  or    ($53),($45)
08fd: b3 08 0b  bbc5  $08,$090b
0900: e4 5e     mov   a,$5e
0902: 28 40     and   a,#$40
0904: f0 05     beq   $090b
0906: 09 45 5d  or    ($5d),($45)
0909: 2f 03     bra   $090e
090b: 29 46 5d  and   ($5d),($46)
090e: e4 5d     mov   a,$5d
0910: 04 56     or    a,$56
0912: 24 45     and   a,$45
0914: f0 03     beq   $0919
0916: 09 45 55  or    ($55),($45)
0919: 1d        dec   x
091a: 30 03     bmi   $091f
091c: 5f 92 08  jmp   $0892

091f: e4 56     mov   a,$56
0921: 24 53     and   a,$53
0923: 04 54     or    a,$54
0925: c4 54     mov   $54,a
0927: 24 54     and   a,$54
0929: 04 55     or    a,$55
092b: c4 57     mov   $57,a
092d: 8f 5c f2  mov   $f2,#$5c
0930: c4 f3     mov   $f3,a
0932: cd 07     mov   x,#$07
0934: 3f be 0b  call  $0bbe
0937: d8 28     mov   $28,x
0939: f5 5f 08  mov   a,$085f+x
093c: c4 45     mov   $45,a
093e: 7d        mov   a,x
093f: 60        clrc
0940: 88 18     adc   a,#$18
0942: c4 2d     mov   $2d,a
0944: e5 a2 03  mov   a,$03a2
0947: d0 12     bne   $095b
0949: f4 62     mov   a,$62+x
094b: c4 48     mov   $48,a
094d: 63 48 06  bbs3  $48,$0956
0950: f5 e4 fc  mov   a,$fce4+x
0953: 5f 5b 09  jmp   $095b

0956: 3f 9c 12  call  $129c
0959: f8 28     mov   x,$28
095b: 60        clrc
095c: 95 9a 03  adc   a,$039a+x
095f: 30 06     bmi   $0967
0961: 70 04     bvs   $0967
0963: 68 65     cmp   a,#$65
0965: 30 0b     bmi   $0972
0967: f5 9a 03  mov   a,$039a+x
096a: 30 04     bmi   $0970
096c: e8 64     mov   a,#$64
096e: 2f 02     bra   $0972
0970: e8 00     mov   a,#$00
0972: fd        mov   y,a
0973: f5 43 01  mov   a,$0143+x
0976: c4 3c     mov   $3c,a
0978: cf        mul   ya
0979: cd 64     mov   x,#$64
097b: 9e        div   ya,x
097c: f8 28     mov   x,$28
097e: 73 48 14  bbc3  $48,$0995
0981: c4 3a     mov   $3a,a
0983: 6d        push  y
0984: eb 2d     mov   y,$2d
0986: f6 c3 03  mov   a,$03c3+y
0989: ee        pop   y
098a: d0 04     bne   $0990
098c: e4 3a     mov   a,$3a
098e: 2f 05     bra   $0995
0990: e4 3c     mov   a,$3c
0992: 80        setc
0993: a4 3a     sbc   a,$3a
0995: c4 3a     mov   $3a,a
0997: d5 28 02  mov   $0228+x,a
099a: e4 3c     mov   a,$3c
099c: 80        setc
099d: a4 3a     sbc   a,$3a
099f: d5 30 02  mov   $0230+x,a
09a2: 1d        dec   x
09a3: 30 03     bmi   $09a8
09a5: 5f 34 09  jmp   $0934

09a8: cd 07     mov   x,#$07		; process pitch envelopes (start with ch 7)
09aa: 3f be 0b  call  $0bbe
09ad: d8 28     mov   $28,x
09af: 7d        mov   a,x
09b0: 60        clrc
09b1: 88 08     adc   a,#$08
09b3: c4 2d     mov   $2d,a
09b5: f4 62     mov   a,$62+x
09b7: c4 48     mov   $48,a
09b9: 7d        mov   a,x
09ba: 1c        asl   a
09bb: 5d        mov   x,a
09bc: f5 d5 fc  mov   a,$fcd5+x
09bf: c4 43     mov   $43,a
09c1: f5 d4 fc  mov   a,$fcd4+x
09c4: c4 42     mov   $42,a
09c6: 53 48 15  bbc2  $48,$09de
09c9: 4d        push  x
09ca: 42 08     set2  $08
09cc: 3f 9c 12  call  $129c
09cf: 52 08     clr2  $08
09d1: ce        pop   x
09d2: 7a 42     addw  ya,$42
09d4: 80        setc
09d5: a8 b0     sbc   a,#$b0
09d7: c4 42     mov   $42,a
09d9: dd        mov   a,y
09da: a8 04     sbc   a,#$04
09dc: c4 43     mov   $43,a
09de: f5 4c 01  mov   a,$014c+x
09e1: fd        mov   y,a
09e2: f5 4b 01  mov   a,$014b+x
09e5: 7a 42     addw  ya,$42
09e7: da 3a     movw  $3a,ya
09e9: fb d8     mov   y,$d8+x
09eb: f4 d7     mov   a,$d7+x
09ed: 7a 3a     addw  ya,$3a
09ef: c3 48 03  bbs6  $48,$09f5
09f2: 3f dc 14  call  $14dc		; translate note to frequency
09f5: da 3a     movw  $3a,ya		; add in hardware tuning
09f7: e4 28     mov   a,$28		; word addressing
09f9: 1c        asl   a
09fa: 5d        mov   x,a
09fb: f5 5c 01  mov   a,$015c+x
09fe: fd        mov   y,a
09ff: f5 5b 01  mov   a,$015b+x
0a02: 7a 3a     addw  ya,$3a
0a04: f8 28     mov   x,$28
0a06: d5 33 01  mov   $0133+x,a
0a09: dd        mov   a,y
0a0a: d5 3b 01  mov   $013b+x,a
0a0d: 1d        dec   x
0a0e: 10 9a     bpl   $09aa
0a10: 8f 5c f2  mov   $f2,#$5c
0a13: 8f 00 f3  mov   $f3,#$00
0a16: cd 07     mov   x,#$07
0a18: 3f be 0b  call  $0bbe
0a1b: d8 28     mov   $28,x
0a1d: 7d        mov   a,x
0a1e: 60        clrc
0a1f: 88 00     adc   a,#$00
0a21: c4 2d     mov   $2d,a
0a23: f5 5f 08  mov   a,$085f+x
0a26: c4 45     mov   $45,a
0a28: 48 ff     eor   a,#$ff
0a2a: c4 46     mov   $46,a
0a2c: f4 62     mov   a,$62+x
0a2e: c4 48     mov   $48,a
0a30: 03 48 07  bbs0  $48,$0a3a
0a33: f5 23 01  mov   a,$0123+x
0a36: fd        mov   y,a
0a37: 5f 47 0a  jmp   $0a47

0a3a: 3f 9c 12  call  $129c
0a3d: fd        mov   y,a
0a3e: f8 28     mov   x,$28
0a40: b3 07 04  bbc5  $07,$0a47
0a43: e8 00     mov   a,#$00
0a45: d4 6a     mov   $6a+x,a
0a47: e8 80     mov   a,#$80
0a49: de 6a 04  cbne  $6a+x,$0a50
0a4c: e4 5a     mov   a,$5a
0a4e: 2f 02     bra   $0a52
0a50: e4 59     mov   a,$59
0a52: cf        mul   ya
0a53: f5 92 03  mov   a,$0392+x
0a56: cf        mul   ya
0a57: dd        mov   a,y
0a58: d5 2b 01  mov   $012b+x,a
0a5b: e4 51     mov   a,$51
0a5d: 24 45     and   a,$45
0a5f: d0 35     bne   $0a96
0a61: f5 2a 08  mov   a,$082a+x
0a64: c4 f2     mov   $f2,a
0a66: dd        mov   a,y
0a67: 80        setc
0a68: a4 f3     sbc   a,$f3
0a6a: b0 08     bcs   $0a74
0a6c: 8f 80 39  mov   $39,#$80
0a6f: 48 ff     eor   a,#$ff
0a71: bc        inc   a
0a72: 2f 03     bra   $0a77
0a74: 8f c0 39  mov   $39,#$c0
0a77: 5c        lsr   a
0a78: d0 08     bne   $0a82
0a7a: ad 00     cmp   y,#$00
0a7c: d0 04     bne   $0a82
0a7e: e8 82     mov   a,#$82
0a80: 2f 0e     bra   $0a90
0a82: 8d 15     mov   y,#$15
0a84: 76 fe 07  cmp   a,$07fe+y
0a87: 90 02     bcc   $0a8b
0a89: fe f9     dbnz  y,$0a84
0a8b: f6 14 08  mov   a,$0814+y
0a8e: 04 39     or    a,$39
0a90: 75 cc fc  cmp   a,$fccc+x
0a93: f0 20     beq   $0ab5
0a95: fd        mov   y,a
0a96: 29 46 51  and   ($51),($46)
0a99: f5 4a 08  mov   a,$084a+x
0a9c: c4 f2     mov   $f2,a
0a9e: f5 28 02  mov   a,$0228+x
0aa1: c4 f3     mov   $f3,a
0aa3: ab f2     inc   $f2
0aa5: f5 30 02  mov   a,$0230+x
0aa8: c4 f3     mov   $f3,a
0aaa: f5 32 08  mov   a,$0832+x
0aad: c4 f2     mov   $f2,a
0aaf: cb f3     mov   $f3,y
0ab1: dd        mov   a,y
0ab2: d5 cc fc  mov   $fccc+x,a
0ab5: f5 42 08  mov   a,$0842+x
0ab8: c4 f2     mov   $f2,a
0aba: fd        mov   y,a
0abb: f5 33 01  mov   a,$0133+x
0abe: c4 f3     mov   $f3,a
0ac0: fc        inc   y
0ac1: cb f2     mov   $f2,y
0ac3: f5 3b 01  mov   a,$013b+x
0ac6: c4 f3     mov   $f3,a
0ac8: 1d        dec   x
0ac9: 30 03     bmi   $0ace
0acb: 5f 18 0a  jmp   $0a18

0ace: 8f 4c f2  mov   $f2,#$4c
0ad1: fa 57 f3  mov   ($f3),($57)
0ad4: e4 57     mov   a,$57
0ad6: 48 ff     eor   a,#$ff
0ad8: c4 58     mov   $58,a
0ada: 29 58 52  and   ($52),($58)
0add: 29 58 54  and   ($54),($58)
0ae0: 8f 00 56  mov   $56,#$00
0ae3: 3f be 0b  call  $0bbe
0ae6: 8d 07     mov   y,#$07
0ae8: cd 0e     mov   x,#$0e
0aea: 3f be 0b  call  $0bbe
0aed: f6 6a 00  mov   a,$006a+y
0af0: f0 31     beq   $0b23
0af2: f6 62 00  mov   a,$0062+y
0af5: c4 48     mov   $48,a
0af7: f3 48 07  bbc7  $48,$0b01
0afa: f6 5f 08  mov   a,$085f+y
0afd: 24 52     and   a,$52
0aff: d0 1d     bne   $0b1e
0b01: f6 6a 00  mov   a,$006a+y
0b04: 68 80     cmp   a,#$80
0b06: d0 1b     bne   $0b23
0b08: f6 46 02  mov   a,$0246+y
0b0b: 28 02     and   a,#$02
0b0d: d0 14     bne   $0b23
0b0f: 9b 73     dec   $73+x
0b11: f4 73     mov   a,$73+x
0b13: 2e 05 02  cbne  $05,$0b18
0b16: 9b 74     dec   $74+x
0b18: f4 73     mov   a,$73+x
0b1a: 14 74     or    a,$74+x
0b1c: d0 05     bne   $0b23
0b1e: e8 80     mov   a,#$80
0b20: 3f 7b 17  call  $177b
0b23: 1d        dec   x
0b24: 1d        dec   x
0b25: dc        dec   y
0b26: 10 c2     bpl   $0aea
0b28: 3f be 0b  call  $0bbe
0b2b: ec 43 02  mov   y,$0243
0b2e: f0 54     beq   $0b84
0b30: 6e cc 51  dbnz  $cc,$0b84
0b33: cb cc     mov   $cc,y
0b35: e5 3b 02  mov   a,$023b
0b38: f8 cd     mov   x,$cd
0b3a: 30 0d     bmi   $0b49
0b3c: 60        clrc
0b3d: 84 ce     adc   a,$ce
0b3f: b0 04     bcs   $0b45
0b41: 68 7f     cmp   a,#$7f
0b43: 90 12     bcc   $0b57
0b45: e8 7f     mov   a,#$7f
0b47: 2f 09     bra   $0b52
0b49: 80        setc
0b4a: a4 ce     sbc   a,$ce
0b4c: f0 04     beq   $0b52
0b4e: b0 07     bcs   $0b57
0b50: e8 00     mov   a,#$00
0b52: 8d 00     mov   y,#$00
0b54: cc 43 02  mov   $0243,y
0b57: 5d        mov   x,a
0b58: 65 44 02  cmp   a,$0244
0b5b: 90 03     bcc   $0b60
0b5d: e5 44 02  mov   a,$0244
0b60: c5 38 02  mov   $0238,a
0b63: 7d        mov   a,x
0b64: c5 3b 02  mov   $023b,a
0b67: c5 3c 02  mov   $023c,a
0b6a: 65 45 02  cmp   a,$0245
0b6d: 90 03     bcc   $0b72
0b6f: e5 45 02  mov   a,$0245
0b72: c5 39 02  mov   $0239,a
0b75: e5 43 02  mov   a,$0243
0b78: d0 0a     bne   $0b84
0b7a: aa 07 40  mov1  c,$0007,2
0b7d: 90 05     bcc   $0b84
0b7f: 8d 80     mov   y,#$80
0b81: 5f 42 0d  jmp   $0d42

0b84: 6f        ret

0b85: 32 08     clr1  $08
0b87: e4 e7     mov   a,$e7
0b89: f0 2f     beq   $0bba
0b8b: 9c        dec   a
0b8c: c4 e7     mov   $e7,a
0b8e: f8 e9     mov   x,$e9
0b90: f5 90 10  mov   a,$1090+x
0b93: 28 fe     and   a,#$fe
0b95: c4 30     mov   $30,a
0b97: f5 a0 10  mov   a,$10a0+x
0b9a: c4 31     mov   $31,a
0b9c: f5 b0 10  mov   a,$10b0+x
0b9f: c4 32     mov   $32,a
0ba1: 3d        inc   x
0ba2: c8 10     cmp   x,#$10
0ba4: d0 02     bne   $0ba8
0ba6: cd 00     mov   x,#$00
0ba8: d8 e9     mov   $e9,x
0baa: e4 30     mov   a,$30
0bac: 5d        mov   x,a
0bad: 28 fe     and   a,#$fe
0baf: c8 45     cmp   x,#$45
0bb1: b0 07     bcs   $0bba
0bb3: e4 31     mov   a,$31
0bb5: eb 32     mov   y,$32
0bb7: 3f bb 0b  call  $0bbb
0bba: 6f        ret

0bbb: 1f 45 1e  jmp   ($1e45+x)

; que command
0bbe: 73 08 24  bbc3  $08,$0be5
0bc1: 69 03 f6  cmp   ($f6),($03)
0bc4: f0 1f     beq   $0be5
0bc6: 23 08 1c  bbs1  $08,$0be5
0bc9: 2d        push  a
0bca: e4 f6     mov   a,$f6
0bcc: f0 16     beq   $0be4
0bce: 2e f6 13  cbne  $f6,$0be4
0bd1: e4 f7     mov   a,$f7
0bd3: 68 1e     cmp   a,#$1e
0bd5: d0 30     bne   $0c07
0bd7: fa f4 18  mov   ($18),($f4)
0bda: fa f5 19  mov   ($19),($f5)
0bdd: e4 f6     mov   a,$f6
0bdf: 8f b7 f1  mov   $f1,#$b7
0be2: c4 f6     mov   $f6,a
0be4: ae        pop   a
0be5: 6f        ret

0be6: 6d        push  y
0be7: 4d        push  x
0be8: ba f4     movw  ya,$f4
0bea: da 1a     movw  $1a,ya
0bec: f8 f6     mov   x,$f6
0bee: 8f b7 f1  mov   $f1,#$b7
0bf1: 8d 00     mov   y,#$00
0bf3: f7 1a     mov   a,($1a)+y
0bf5: c4 f4     mov   $f4,a
0bf7: fc        inc   y
0bf8: f7 1a     mov   a,($1a)+y
0bfa: c4 f5     mov   $f5,a
0bfc: fc        inc   y
0bfd: f7 1a     mov   a,($1a)+y
0bff: c4 f7     mov   $f7,a
0c01: d8 f6     mov   $f6,x
0c03: ce        pop   x
0c04: ee        pop   y
0c05: ae        pop   a
0c06: 6f        ret

0c07: 68 22     cmp   a,#$22
0c09: f0 52     beq   $0c5d
0c0b: 68 0c     cmp   a,#$0c
0c0d: f0 d7     beq   $0be6
0c0f: 68 0e     cmp   a,#$0e
0c11: d0 03     bne   $0c16
0c13: 5f dd 07  jmp   $07dd

0c16: 68 02     cmp   a,#$02
0c18: d0 15     bne   $0c2f
0c1a: 4d        push  x
0c1b: 6d        push  y
0c1c: e4 f6     mov   a,$f6
0c1e: 8f b7 f1  mov   $f1,#$b7
0c21: 2d        push  a
0c22: 72 08     clr3  $08
0c24: 3f d2 0c  call  $0cd2
0c27: 62 08     set3  $08
0c29: ae        pop   a
0c2a: c4 f6     mov   $f6,a
0c2c: ee        pop   y
0c2d: 2f 2b     bra   $0c5a
0c2f: 4d        push  x
0c30: f8 e8     mov   x,$e8
0c32: d5 90 10  mov   $1090+x,a
0c35: e4 f4     mov   a,$f4
0c37: d5 a0 10  mov   $10a0+x,a
0c3a: e4 f5     mov   a,$f5
0c3c: d5 b0 10  mov   $10b0+x,a
0c3f: e4 f6     mov   a,$f6
0c41: 8f b7 f1  mov   $f1,#$b7
0c44: c4 f6     mov   $f6,a
0c46: 3d        inc   x
0c47: c8 10     cmp   x,#$10
0c49: d0 02     bne   $0c4d
0c4b: cd 00     mov   x,#$00
0c4d: d8 e8     mov   $e8,x
0c4f: e4 e7     mov   a,$e7
0c51: bc        inc   a
0c52: c4 e7     mov   $e7,a
0c54: 68 10     cmp   a,#$10
0c56: d0 02     bne   $0c5a
0c58: 22 08     set1  $08
0c5a: ce        pop   x
0c5b: ae        pop   a
0c5c: 6f        ret

0c5d: 6d        push  y
0c5e: 4d        push  x
0c5f: f8 f4     mov   x,$f4
0c61: e4 f6     mov   a,$f6
0c63: 8f b7 f1  mov   $f1,#$b7
0c66: c4 f6     mov   $f6,a
0c68: 4d        push  x
0c69: e4 18     mov   a,$18
0c6b: c5 94 0c  mov   $0c94,a
0c6e: c5 9c 0c  mov   $0c9c,a
0c71: c5 a3 0c  mov   $0ca3,a
0c74: e4 19     mov   a,$19
0c76: c5 95 0c  mov   $0c95,a
0c79: c5 9d 0c  mov   $0c9d,a
0c7c: c5 a4 0c  mov   $0ca4,a
0c7f: e4 f6     mov   a,$f6
0c81: f0 fc     beq   $0c7f
0c83: 2e f6 f9  cbne  $f6,$0c7f
0c86: ba f4     movw  ya,$f4
0c88: da 1a     movw  $1a,ya
0c8a: ba f6     movw  ya,$f6
0c8c: 8f b7 f1  mov   $f1,#$b7
0c8f: c4 f6     mov   $f6,a
0c91: e4 1a     mov   a,$1a
0c93: d5 93 0c  mov   $0c93+x,a
0c96: 1d        dec   x
0c97: 30 0f     bmi   $0ca8
0c99: e4 1b     mov   a,$1b
0c9b: d5 9b 0c  mov   $0c9b+x,a
0c9e: 1d        dec   x
0c9f: 30 07     bmi   $0ca8
0ca1: dd        mov   a,y
0ca2: d5 a2 0c  mov   $0ca2+x,a
0ca5: 1d        dec   x
0ca6: 10 d7     bpl   $0c7f
0ca8: e4 f6     mov   a,$f6
0caa: f0 fc     beq   $0ca8
0cac: 2e f6 f9  cbne  $f6,$0ca8
0caf: ba f4     movw  ya,$f4
0cb1: da 1a     movw  $1a,ya
0cb3: ba f6     movw  ya,$f6
0cb5: 8f b7 f1  mov   $f1,#$b7
0cb8: c4 f6     mov   $f6,a
0cba: ad 01     cmp   y,#$01
0cbc: d0 07     bne   $0cc5
0cbe: ae        pop   a
0cbf: ba 1a     movw  ya,$1a
0cc1: da 18     movw  $18,ya
0cc3: 2f 09     bra   $0cce
0cc5: ae        pop   a
0cc6: 8d 00     mov   y,#$00
0cc8: 7a 18     addw  ya,$18
0cca: da 18     movw  $18,ya
0ccc: 3a 18     incw  $18
0cce: ce        pop   x
0ccf: ee        pop   y
0cd0: ae        pop   a
0cd1: 6f        ret

0cd2: 3f 34 11  call  $1134
0cd5: 3f 2a 11  call  $112a
0cd8: 22 07     set1  $07
0cda: 6f        ret

0cdb: c5 a2 03  mov   $03a2,a
0cde: 6f        ret

0cdf: e8 00     mov   a,#$00
0ce1: c5 43 02  mov   $0243,a
0ce4: 6f        ret

0ce5: cd 01     mov   x,#$01
0ce7: 52 07     clr2  $07
0ce9: 2f 02     bra   $0ced
0ceb: cd ff     mov   x,#$ff
0ced: c5 43 02  mov   $0243,a
0cf0: c4 cc     mov   $cc,a
0cf2: cb ce     mov   $ce,y
0cf4: d8 cd     mov   $cd,x
0cf6: 6f        ret

0cf7: 2d        push  a
0cf8: dd        mov   a,y
0cf9: 28 7f     and   a,#$7f
0cfb: c5 3e 02  mov   $023e,a
0cfe: ae        pop   a
0cff: 92 08     clr4  $08
0d01: 2f 02     bra   $0d05
0d03: 82 08     set4  $08
0d05: 8f ff cb  mov   $cb,#$ff
0d08: 5f 95 0d  jmp   $0d95

0d0b: 3f f9 1c  call  $1cf9
0d0e: e5 fc 1e  mov   a,$1efc
0d11: c5 63 06  mov   $0663,a
0d14: e5 fd 1e  mov   a,$1efd
0d17: c5 64 06  mov   $0664,a
0d1a: 05 63 06  or    a,$0663
0d1d: f0 20     beq   $0d3f
0d1f: 3f 50 17  call  $1750
0d22: e5 63 06  mov   a,$0663
0d25: 80        setc
0d26: a8 01     sbc   a,#$01
0d28: c5 63 06  mov   $0663,a
0d2b: e5 64 06  mov   a,$0664
0d2e: a8 00     sbc   a,#$00
0d30: c5 64 06  mov   $0664,a
0d33: b0 ea     bcs   $0d1f
0d35: cd 07     mov   x,#$07
0d37: e8 00     mov   a,#$00
0d39: d5 43 01  mov   $0143+x,a
0d3c: 1d        dec   x
0d3d: 10 fa     bpl   $0d39
0d3f: 6f        ret

0d40: 8d ff     mov   y,#$ff
0d42: cd 07     mov   x,#$07
0d44: ad 80     cmp   y,#$80
0d46: f0 04     beq   $0d4c
0d48: ad ff     cmp   y,#$ff
0d4a: d0 05     bne   $0d51
0d4c: 82 07     set4  $07
0d4e: 8f 00 84  mov   $84,#$00
0d51: c4 72     mov   $72,a
0d53: ad 80     cmp   y,#$80
0d55: f0 16     beq   $0d6d
0d57: e8 01     mov   a,#$01
0d59: ad ff     cmp   y,#$ff
0d5b: f0 0d     beq   $0d6a
0d5d: ad 00     cmp   y,#$00
0d5f: d0 07     bne   $0d68
0d61: e4 72     mov   a,$72
0d63: 75 1b 01  cmp   a,$011b+x
0d66: d0 1d     bne   $0d85
0d68: e8 80     mov   a,#$80
0d6a: de 6a 18  cbne  $6a+x,$0d85
0d6d: f5 32 08  mov   a,$0832+x
0d70: c4 f2     mov   $f2,a
0d72: 8f 9f f3  mov   $f3,#$9f
0d75: e8 00     mov   a,#$00
0d77: d5 23 01  mov   $0123+x,a
0d7a: d4 6a     mov   $6a+x,a
0d7c: d4 62     mov   $62+x,a
0d7e: f5 5f 08  mov   a,$085f+x
0d81: 04 56     or    a,$56
0d83: c4 56     mov   $56,a
0d85: 1d        dec   x
0d86: 10 cb     bpl   $0d53
0d88: 6f        ret

0d89: 52 07     clr2  $07
0d8b: 5f eb 0c  jmp   $0ceb

0d8e: 42 07     set2  $07
0d90: 5f eb 0c  jmp   $0ceb

0d93: cb cb     mov   $cb,y
0d95: 8d 0e     mov   y,#$0e
0d97: c4 72     mov   $72,a
0d99: 3f 63 10  call  $1063
0d9c: da 22     movw  $22,ya
0d9e: 8d 00     mov   y,#$00
0da0: f7 22     mov   a,($22)+y
0da2: c4 4d     mov   $4d,a
0da4: 3a 22     incw  $22
0da6: 8d 07     mov   y,#$07
0da8: f7 22     mov   a,($22)+y
0daa: 24 0a     and   a,$0a
0dac: c4 4e     mov   $4e,a
0dae: 8d 06     mov   y,#$06
0db0: f7 22     mov   a,($22)+y
0db2: c4 4f     mov   $4f,a
0db4: 8f 80 50  mov   $50,#$80
0db7: cd 07     mov   x,#$07
0db9: 3f 70 0e  call  $0e70
0dbc: 10 03     bpl   $0dc1
0dbe: 5f 42 0e  jmp   $0e42

0dc1: 83 08 07  bbs4  $08,$0dcb
0dc4: e8 02     mov   a,#$02
0dc6: 15 46 02  or    a,$0246+x
0dc9: 2f 05     bra   $0dd0
0dcb: e8 fd     mov   a,#$fd
0dcd: 35 46 02  and   a,$0246+x
0dd0: d5 46 02  mov   $0246+x,a
0dd3: e8 80     mov   a,#$80
0dd5: d4 6a     mov   $6a+x,a
0dd7: e5 3e 02  mov   a,$023e
0dda: d4 cf     mov   $cf+x,a
0ddc: e5 3f 02  mov   a,$023f
0ddf: d5 92 03  mov   $0392+x,a
0de2: e5 40 02  mov   a,$0240
0de5: d5 9a 03  mov   $039a+x,a
0de8: e5 8e 03  mov   a,$038e
0deb: c4 0d     mov   $0d,a
0ded: e5 90 03  mov   a,$0390
0df0: c4 0c     mov   $0c,a
0df2: e5 8f 03  mov   a,$038f
0df5: c4 0e     mov   $0e,a
0df7: e5 91 03  mov   a,$0391
0dfa: c4 0f     mov   $0f,a
0dfc: 7d        mov   a,x
0dfd: 1c        asl   a
0dfe: fd        mov   y,a
0dff: e8 00     mov   a,#$00
0e01: d6 5b 01  mov   $015b+y,a
0e04: d6 5c 01  mov   $015c+y,a
0e07: c5 3d 02  mov   $023d,a
0e0a: e5 41 02  mov   a,$0241
0e0d: d6 d7 00  mov   $00d7+y,a
0e10: e5 42 02  mov   a,$0242
0e13: d6 d8 00  mov   $00d8+y,a
0e16: e4 72     mov   a,$72
0e18: d5 1b 01  mov   $011b+x,a
0e1b: 8d 02     mov   y,#$02
0e1d: f7 22     mov   a,($22)+y
0e1f: c4 49     mov   $49,a
0e21: fc        inc   y
0e22: f7 22     mov   a,($22)+y
0e24: c4 4a     mov   $4a,a
0e26: 8d 04     mov   y,#$04
0e28: f7 22     mov   a,($22)+y
0e2a: c4 4b     mov   $4b,a
0e2c: fc        inc   y
0e2d: f7 22     mov   a,($22)+y
0e2f: c4 4c     mov   $4c,a
0e31: 8d 01     mov   y,#$01
0e33: f7 22     mov   a,($22)+y
0e35: 2d        push  a
0e36: 8d 00     mov   y,#$00
0e38: f7 22     mov   a,($22)+y
0e3a: 02 07     set0  $07
0e3c: ee        pop   y
0e3d: 72 07     clr3  $07
0e3f: 3f e5 0e  call  $0ee5
0e42: 60        clrc
0e43: 98 08 22  adc   $22,#$08
0e46: 90 02     bcc   $0e4a
0e48: ab 23     inc   $23
0e4a: 8b 4d     dec   $4d
0e4c: f0 03     beq   $0e51
0e4e: 5f a6 0d  jmp   $0da6

0e51: e8 00     mov   a,#$00
0e53: c5 3e 02  mov   $023e,a
0e56: c5 41 02  mov   $0241,a
0e59: c5 42 02  mov   $0242,a
0e5c: c5 40 02  mov   $0240,a
0e5f: c5 8e 03  mov   $038e,a
0e62: c5 90 03  mov   $0390,a
0e65: c5 8f 03  mov   $038f,a
0e68: c5 91 03  mov   $0391,a
0e6b: 9c        dec   a
0e6c: c5 3f 02  mov   $023f,a
0e6f: 6f        ret

0e70: 8f 00 09  mov   $09,#$00
0e73: 83 09 5a  bbs4  $09,$0ed0
0e76: 8d 07     mov   y,#$07
0e78: 8f ff 3a  mov   $3a,#$ff
0e7b: 8f ff 3b  mov   $3b,#$ff
0e7e: 73 09 08  bbc3  $09,$0e89
0e81: c8 08     cmp   x,#$08
0e83: b0 4b     bcs   $0ed0
0e85: 8d 00     mov   y,#$00
0e87: 2f 09     bra   $0e92
0e89: 3f be 0b  call  $0bbe
0e8c: e4 50     mov   a,$50
0e8e: 24 4e     and   a,$4e
0e90: f0 1f     beq   $0eb1
0e92: f4 6a     mov   a,$6a+x
0e94: f0 41     beq   $0ed7
0e96: e4 4f     mov   a,$4f
0e98: 03 09 06  bbs0  $09,$0ea1
0e9b: 74 10     cmp   a,$10+x
0e9d: b0 38     bcs   $0ed7
0e9f: 2f 10     bra   $0eb1
0ea1: 74 10     cmp   a,$10+x
0ea3: f0 0c     beq   $0eb1
0ea5: 90 0a     bcc   $0eb1
0ea7: f4 10     mov   a,$10+x
0ea9: 64 3b     cmp   a,$3b
0eab: b0 04     bcs   $0eb1
0ead: c4 3b     mov   $3b,a
0eaf: d8 3a     mov   $3a,x
0eb1: 53 09 0c  bbc2  $09,$0ec0
0eb4: 0b 50     asl   $50
0eb6: d0 05     bne   $0ebd
0eb8: 8f 01 50  mov   $50,#$01
0ebb: cd ff     mov   x,#$ff
0ebd: 3d        inc   x
0ebe: 2f 0a     bra   $0eca
0ec0: 4b 50     lsr   $50
0ec2: d0 05     bne   $0ec9
0ec4: 8f 80 50  mov   $50,#$80
0ec7: cd 08     mov   x,#$08
0ec9: 1d        dec   x
0eca: dc        dec   y
0ecb: 10 bc     bpl   $0e89
0ecd: 03 09 03  bbs0  $09,$0ed3
0ed0: e8 ff     mov   a,#$ff
0ed2: 6f        ret

0ed3: f8 3a     mov   x,$3a
0ed5: 30 f9     bmi   $0ed0
0ed7: 33 09 04  bbc1  $09,$0ede
0eda: f4 6a     mov   a,$6a+x
0edc: d0 f2     bne   $0ed0
0ede: e4 4f     mov   a,$4f
0ee0: d4 10     mov   $10+x,a
0ee2: e8 00     mov   a,#$00
0ee4: 6f        ret

0ee5: d8 28     mov   $28,x			; play sound (instrument)
0ee7: d8 47     mov   $47,x
0ee9: 2d        push  a
0eea: f5 46 02  mov   a,$0246+x
0eed: 28 fe     and   a,#$fe
0eef: d5 46 02  mov   $0246+x,a
0ef2: 63 07 08  bbs3  $07,$0efd
0ef5: f5 32 08  mov   a,$0832+x
0ef8: c4 f2     mov   $f2,a
0efa: 8f 9f f3  mov   $f3,#$9f
0efd: dd        mov   a,y
0efe: d5 43 01  mov   $0143+x,a
0f01: 7d        mov   a,x
0f02: 1c        asl   a
0f03: 5d        mov   x,a
0f04: e4 4b     mov   a,$4b
0f06: d5 d4 fc  mov   $fcd4+x,a
0f09: e4 4c     mov   a,$4c
0f0b: d5 d5 fc  mov   $fcd5+x,a
0f0e: e4 49     mov   a,$49
0f10: d4 73     mov   $73+x,a
0f12: e4 4a     mov   a,$4a
0f14: d4 74     mov   $74+x,a
0f16: ae        pop   a
0f17: 8d 02     mov   y,#$02
0f19: 3f 63 10  call  $1063
0f1c: da 20     movw  $20,ya			;get current voice and instrument
0f1e: f8 47     mov   x,$47
0f20: f5 5f 08  mov   a,$085f+x			;get channel bit mask ID
0f23: c4 60     mov   $60,a
0f25: 48 ff     eor   a,#$ff			;and store inversion
0f27: c4 61     mov   $61,a
0f29: 8d 00     mov   y,#$00			;get mode flags
0f2b: f7 20     mov   a,($20)+y
0f2d: 2d        push  a
0f2e: e4 cb     mov   a,$cb
0f30: 30 0a     bmi   $0f3c
0f32: ae        pop   a
0f33: 2d        push  a
0f34: 28 08     and   a,#$08
0f36: f0 04     beq   $0f3c
0f38: ae        pop   a
0f39: 48 08     eor   a,#$08
0f3b: 2d        push  a
0f3c: ae        pop   a
0f3d: d4 62     mov   $62+x,a
0f3f: c4 48     mov   $48,a
0f41: 8f 2d f2  mov   $f2,#$2d
0f44: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0f46: f0 05     beq   $0f4d			; if not...
0f48: 09 60 f3  or    ($f3),($60)		; turn pitch mod on
0f4b: 2f 03     bra   $0f50
0f4d: 29 61 f3  and   ($f3),($61)		; turn pitch mod off
0f50: 63 07 6a  bbs3  $07,$0fbd			; slur handler
0f53: b0 68     bcs   $0fbd
0f55: 93 48 5f  bbc4  $48,$0fb7
0f58: 13 08 05  bbc0  $08,$0f60
0f5b: e5 06 01  mov   a,$0106
0f5e: 2f 04     bra   $0f64
0f60: 8d 05     mov   y,#$05			; default echo
0f62: f7 20     mov   a,($20)+y
0f64: 8d 0c     mov   y,#$0c			; look for echo
0f66: 3f 63 10  call  $1063
0f69: 8d 00     mov   y,#$00
0f6b: f6 6f 08  mov   a,$086f+y			; get the echo register values to "poke"
0f6e: c4 f2     mov   $f2,a			; (from the table)
0f70: f7 29     mov   a,($29)+y			; now get info to feed to the registers
0f72: ad 01     cmp   y,#$01			; (from the echo environment)
0f74: f0 08     beq   $0f7e
0f76: ad 03     cmp   y,#$03
0f78: f0 0f     beq   $0f89
0f7a: ad 02     cmp   y,#$02
0f7c: d0 10     bne   $0f8e
0f7e: d6 43 02  mov   $0243+y,a
0f81: 65 3b 02  cmp   a,$023b
0f84: 90 03     bcc   $0f89
0f86: e5 3b 02  mov   a,$023b
0f89: d6 37 02  mov   $0237+y,a
0f8c: 2f 02     bra   $0f90
0f8e: c4 f3     mov   $f3,a
0f90: fc        inc   y
0f91: ad 0c     cmp   y,#$0c			; repeat for every byte of the array
0f93: 90 d6     bcc   $0f6b
0f95: 8f 6c f2  mov   $f2,#$6c
0f98: e4 f3     mov   a,$f3
0f9a: 28 20     and   a,#$20
0f9c: f0 11     beq   $0faf
0f9e: e5 e1 1e  mov   a,$1ee1
0fa1: 8f 6d f2  mov   $f2,#$6d
0fa4: c4 f3     mov   $f3,a
0fa6: 8f 6c f2  mov   $f2,#$6c
0fa9: e8 df     mov   a,#$df
0fab: 24 f3     and   a,$f3
0fad: c4 f3     mov   $f3,a
0faf: 8f 4d f2  mov   $f2,#$4d
0fb2: 09 60 f3  or    ($f3),($60)
0fb5: 2f 06     bra   $0fbd
0fb7: 8f 4d f2  mov   $f2,#$4d
0fba: 29 61 f3  and   ($f3),($61)
0fbd: e4 47     mov   a,$47
0fbf: 60        clrc
0fc0: 88 00     adc   a,#$00
0fc2: c4 2d     mov   $2d,a
0fc4: 8d 01     mov   y,#$01
0fc6: f7 20     mov   a,($20)+y			; now get the amplitude
0fc8: 03 48 08  bbs0  $48,$0fd3
0fcb: f8 47     mov   x,$47
0fcd: d5 23 01  mov   $0123+x,a
0fd0: 5f de 0f  jmp   $0fde

0fd3: 8d 04     mov   y,#$04
0fd5: 3f 63 10  call  $1063
0fd8: fa 0d 0b  mov   ($0b),($0d)
0fdb: 3f cf 11  call  $11cf
0fde: e4 47     mov   a,$47
0fe0: 60        clrc
0fe1: 88 08     adc   a,#$08
0fe3: c4 2d     mov   $2d,a
0fe5: 53 48 13  bbc2  $48,$0ffb
0fe8: 8d 03     mov   y,#$03
0fea: f7 20     mov   a,($20)+y
0fec: 8d 06     mov   y,#$06
0fee: 3f 63 10  call  $1063
0ff1: fa 0e 0b  mov   ($0b),($0e)
0ff4: 42 08     set2  $08
0ff6: 3f cf 11  call  $11cf
0ff9: 52 08     clr2  $08
0ffb: e4 47     mov   a,$47
0ffd: 60        clrc
0ffe: 88 18     adc   a,#$18
1000: c4 2d     mov   $2d,a
1002: 63 07 5b  bbs3  $07,$1060
1005: e4 cb     mov   a,$cb
1007: 10 07     bpl   $1010
1009: 8d 04     mov   y,#$04
100b: f7 20     mov   a,($20)+y
100d: 63 48 08  bbs3  $48,$1018
1010: f8 47     mov   x,$47
1012: d5 e4 fc  mov   $fce4+x,a
1015: 5f 39 10  jmp   $1039

1018: 8d 08     mov   y,#$08
101a: 3f 63 10  call  $1063
101d: fa 0f 0b  mov   ($0b),($0f)
1020: 3f cf 11  call  $11cf
1023: eb 2d     mov   y,$2d
1025: f6 e3 04  mov   a,$04e3+y
1028: f0 0a     beq   $1034
102a: f6 c3 03  mov   a,$03c3+y
102d: d0 05     bne   $1034
102f: e8 ff     mov   a,#$ff
1031: 5f 36 10  jmp   $1036

1034: e8 00     mov   a,#$00
1036: d6 c3 03  mov   $03c3+y,a
1039: e4 47     mov   a,$47
103b: 60        clrc
103c: 88 10     adc   a,#$10
103e: c4 2d     mov   $2d,a
1040: 8d 02     mov   y,#$02
1042: f7 20     mov   a,($20)+y
1044: 23 48 08  bbs1  $48,$104f
1047: f8 47     mov   x,$47
1049: d5 ec fc  mov   $fcec+x,a
104c: 5f 5a 10  jmp   $105a

104f: 8d 0a     mov   y,#$0a
1051: 3f 63 10  call  $1063
1054: fa 0c 0b  mov   ($0b),($0c)
1057: 3f cf 11  call  $11cf
105a: 09 60 56  or    ($56),($60)
105d: 09 60 51  or    ($51),($60)
1060: 72 07     clr3  $07
1062: 6f        ret

1063: 3f be 0b  call  $0bbe		; load current song/sfx/etc. address into stack
1066: 8f 00 1f  mov   $1f,#$00
1069: 1c        asl   a
106a: 2b 1f     rol   $1f
106c: 60        clrc
106d: 96 e0 1e  adc   a,$1ee0+y
1070: c4 1e     mov   $1e,a
1072: e4 1f     mov   a,$1f
1074: 96 e1 1e  adc   a,$1ee1+y
1077: c4 1f     mov   $1f,a
1079: 8d 01     mov   y,#$01
107b: f7 1e     mov   a,($1e)+y
107d: c4 2a     mov   $2a,a
107f: dc        dec   y
1080: f7 1e     mov   a,($1e)+y
1082: c4 29     mov   $29,a
1084: eb 2a     mov   y,$2a
1086: 6f        ret

1087: db $0f,$00,$00,$00,$00,$00,$00,$00,$00
1090: db $12,$16,$2e,$06,$16,$28,$16,$28,$16,$28,$16,$28,$16,$28,$04,$04
10a0: db $01,$00,$ff,$05,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$00,$ff,$09,$29
10b0: db $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; initalize sound registers
10c0: e8 87     mov   a,#$87
10c2: c5 20 02  mov   $0220,a
10c5: c5 22 02  mov   $0222,a
10c8: e8 87     mov   a,#$87
10ca: c5 21 02  mov   $0221,a
10cd: c5 23 02  mov   $0223,a
10d0: e8 00     mov   a,#$00
10d2: 5d        mov   x,a
10d3: d5 00 01  mov   $0100+x,a
10d6: af        mov   (x)+,a
10d7: c8 f0     cmp   x,#$f0
10d9: 90 f8     bcc   $10d3
10db: 5d        mov   x,a
10dc: d5 00 02  mov   $0200+x,a
10df: d5 00 03  mov   $0300+x,a
10e2: d5 00 04  mov   $0400+x,a
10e5: d5 00 05  mov   $0500+x,a
10e8: d5 00 06  mov   $0600+x,a
10eb: d5 00 fc  mov   $fc00+x,a
10ee: d5 00 fd  mov   $fd00+x,a
10f1: d5 00 fe  mov   $fe00+x,a
10f4: d5 00 ff  mov   $ff00+x,a
10f7: 3d        inc   x
10f8: d0 e2     bne   $10dc
10fa: e8 ff     mov   a,#$ff
10fc: c4 52     mov   $52,a
10fe: c4 54     mov   $54,a
1100: c4 5d     mov   $5d,a
1102: c4 53     mov   $53,a
1104: c4 58     mov   $58,a
1106: c4 59     mov   $59,a
1108: c4 5a     mov   $5a,a
110a: c5 3f 02  mov   $023f,a
110d: c4 05     mov   $05,a
110f: c4 06     mov   $06,a
1111: c4 0a     mov   $0a,a
1113: 82 07     set4  $07
1115: 6f        ret

1116: cd 14     mov   x,#$14
1118: e8 00     mov   a,#$00
111a: d5 28 02  mov   $0228+x,a
111d: 1d        dec   x
111e: 10 fa     bpl   $111a
1120: 8d 01     mov   y,#$01
1122: 3f 4a 07  call  $074a
1125: 68 00     cmp   a,#$00
1127: d0 f7     bne   $1120
1129: 6f        ret

112a: e8 7f     mov   a,#$7f
112c: c5 3b 02  mov   $023b,a
112f: c5 3c 02  mov   $023c,a
1132: 2f ec     bra   $1120
1134: 3f 16 11  call  $1116
1137: cd 74     mov   x,#$74
1139: 8d 11     mov   y,#$11
113b: 3f 5d 11  call  $115d
113e: e5 e1 1e  mov   a,$1ee1
1141: 8f 6d f2  mov   $f2,#$6d
1144: c4 f3     mov   $f3,a
1146: 68 ff     cmp   a,#$ff
1148: f0 12     beq   $115c
114a: c4 01     mov   $01,a
114c: e8 00     mov   a,#$00
114e: fd        mov   y,a
114f: c4 00     mov   $00,a
1151: d7 00     mov   ($00)+y,a
1153: fe fc     dbnz  y,$1151
1155: ab 01     inc   $01
1157: 78 fc 01  cmp   $01,#$fc
115a: d0 f5     bne   $1151
115c: 6f        ret

115d: d8 00     mov   $00,x
115f: cb 01     mov   $01,y
1161: 8d 00     mov   y,#$00
1163: f7 00     mov   a,($00)+y
1165: 68 ff     cmp   a,#$ff
1167: f0 0a     beq   $1173
1169: c4 f2     mov   $f2,a
116b: fc        inc   y
116c: f7 00     mov   a,($00)+y
116e: c4 f3     mov   $f3,a
1170: fc        inc   y
1171: d0 f0     bne   $1163
1173: 6f        ret

; pre-defined DSP flags
1174: db $3d,$00,$4d,$00,$0d,$00,$7d,$00,$0f,$00,$1f,$00,$2f,$00,$3f,$00,$4f,$00,$5f,$00,$6f,$00,$7f,$00,$6d,$ff,$2c,$00,$3c,$00,$0c,$00,$1c,$00,$5d,$02,$5c,$00,$2d,$00,$04,$08,$14,$08,$24,$08,$34,$08,$44,$08,$54,$08,$64,$08,$74,$08,$07,$00,$17,$00,$27,$00,$37,$00,$47,$00,$57,$00,$67,$00,$77,$00,$05,$00,$15,$00,$25,$00,$35,$00,$45,$00,$55,$00,$65,$00,$75,$00,$7c,$00,$ff

11cf: f8 2d     mov   x,$2d
11d1: 8d 07     mov   y,#$07
11d3: f7 29     mov   a,($29)+y
11d5: d5 e3 04  mov   $04e3+x,a
11d8: dc        dec   y
11d9: dc        dec   y
11da: f7 29     mov   a,($29)+y
11dc: d5 03 04  mov   $0403+x,a
11df: dc        dec   y
11e0: f7 29     mov   a,($29)+y
11e2: d5 c3 04  mov   $04c3+x,a
11e5: dc        dec   y
11e6: f7 29     mov   a,($29)+y
11e8: d5 23 04  mov   $0423+x,a
11eb: dc        dec   y
11ec: f7 29     mov   a,($29)+y
11ee: d5 43 04  mov   $0443+x,a
11f1: dc        dec   y
11f2: f7 29     mov   a,($29)+y
11f4: d5 83 04  mov   $0483+x,a
11f7: dc        dec   y
11f8: f7 29     mov   a,($29)+y
11fa: d5 63 04  mov   $0463+x,a
11fd: eb 2d     mov   y,$2d
11ff: e4 29     mov   a,$29
1201: 60        clrc
1202: 88 08     adc   a,#$08
1204: d6 43 05  mov   $0543+y,a
1207: e4 2a     mov   a,$2a
1209: 88 00     adc   a,#$00
120b: d6 63 05  mov   $0563+y,a
120e: f6 23 04  mov   a,$0423+y
1211: cd 00     mov   x,#$00
1213: eb 0b     mov   y,$0b
1215: f0 23     beq   $123a
1217: cf        mul   ya
1218: cb 3a     mov   $3a,y
121a: c4 3b     mov   $3b,a
121c: cd 05     mov   x,#$05
121e: 4b 3a     lsr   $3a
1220: 7c        ror   a
1221: 1d        dec   x
1222: d0 fa     bne   $121e
1224: eb 3a     mov   y,$3a
1226: ad 00     cmp   y,#$00
1228: d0 08     bne   $1232
122a: 68 00     cmp   a,#$00
122c: f0 0a     beq   $1238
122e: f8 3b     mov   x,$3b
1230: 2f 08     bra   $123a
1232: cd 01     mov   x,#$01
1234: e8 ff     mov   a,#$ff
1236: 2f 02     bra   $123a
1238: 5d        mov   x,a
1239: bc        inc   a
123a: eb 2d     mov   y,$2d
123c: d6 23 04  mov   $0423+y,a
123f: 7d        mov   a,x
1240: 48 ff     eor   a,#$ff
1242: 08 e0     or    a,#$e0
1244: d6 a3 03  mov   $03a3+y,a
1247: e8 ff     mov   a,#$ff
1249: d6 e3 03  mov   $03e3+y,a
124c: 3f be 0b  call  $0bbe
124f: 5d        mov   x,a
1250: f6 43 04  mov   a,$0443+y
1253: fd        mov   y,a
1254: 7d        mov   a,x
1255: cf        mul   ya
1256: da 40     movw  $40,ya
1258: 03 07 06  bbs0  $07,$1261
125b: ba 05     movw  ya,$05
125d: da 40     movw  $40,ya
125f: 2f 0a     bra   $126b
1261: ba 49     movw  ya,$49
1263: 9a 40     subw  ya,$40
1265: b0 02     bcs   $1269
1267: ba 49     movw  ya,$49
1269: cb 41     mov   $41,y
126b: eb 2d     mov   y,$2d
126d: d6 83 05  mov   $0583+y,a
1270: e4 41     mov   a,$41
1272: d6 a3 05  mov   $05a3+y,a
1275: f6 23 04  mov   a,$0423+y
1278: bc        inc   a
1279: d0 01     bne   $127c
127b: 9c        dec   a
127c: d6 03 05  mov   $0503+y,a
127f: 68 03     cmp   a,#$03
1281: b0 05     bcs   $1288
1283: e8 00     mov   a,#$00
1285: d6 c3 04  mov   $04c3+y,a
1288: e8 01     mov   a,#$01
128a: d6 a3 04  mov   $04a3+y,a
128d: 9c        dec   a
128e: d6 23 05  mov   $0523+y,a
1291: d6 44 ff  mov   $ff44+y,a
1294: d6 64 ff  mov   $ff64+y,a
1297: c4 37     mov   $37,a
1299: 5f 6e 13  jmp   $136e

129c: eb 2d     mov   y,$2d
129e: b2 07     clr5  $07
12a0: f6 c3 04  mov   a,$04c3+y
12a3: c4 37     mov   $37,a
12a5: f6 a3 04  mov   a,$04a3+y
12a8: f0 42     beq   $12ec
12aa: f6 a3 03  mov   a,$03a3+y
12ad: 60        clrc
12ae: 96 e3 03  adc   a,$03e3+y
12b1: d6 e3 03  mov   $03e3+y,a
12b4: 90 18     bcc   $12ce
12b6: f6 03 05  mov   a,$0503+y
12b9: c4 38     mov   $38,a
12bb: f0 03     beq   $12c0
12bd: 9c        dec   a
12be: d0 03     bne   $12c3
12c0: f6 23 04  mov   a,$0423+y
12c3: d6 03 05  mov   $0503+y,a
12c6: 78 02 38  cmp   $38,#$02
12c9: 90 08     bcc   $12d3
12cb: 5f 6e 13  jmp   $136e

12ce: 8f 00 37  mov   $37,#$00
12d1: 2f f8     bra   $12cb
12d3: eb 2d     mov   y,$2d
12d5: f6 23 05  mov   a,$0523+y
12d8: bc        inc   a
12d9: 76 03 04  cmp   a,$0403+y
12dc: 90 1b     bcc   $12f9
12de: 9c        dec   a
12df: 76 83 04  cmp   a,$0483+y
12e2: d0 03     bne   $12e7
12e4: 5f 68 13  jmp   $1368

12e7: e8 00     mov   a,#$00
12e9: d6 a3 04  mov   $04a3+y,a
12ec: a2 07     set5  $07
12ee: f6 24 ff  mov   a,$ff24+y
12f1: 2d        push  a
12f2: f6 04 ff  mov   a,$ff04+y
12f5: ee        pop   y
12f6: 5f 1f 14  jmp   $141f

12f9: d6 23 05  mov   $0523+y,a
12fc: f6 a3 05  mov   a,$05a3+y
12ff: 16 83 05  or    a,$0583+y
1302: f0 6a     beq   $136e
1304: f8 28     mov   x,$28
1306: f5 46 02  mov   a,$0246+x
1309: 28 02     and   a,#$02
130b: f0 24     beq   $1331
130d: e8 01     mov   a,#$01
130f: 74 6a     cmp   a,$6a+x
1311: d0 03     bne   $1316
1313: 83 07 09  bbs4  $07,$131f
1316: eb 28     mov   y,$28
1318: f6 46 02  mov   a,$0246+y
131b: 28 01     and   a,#$01
131d: f0 3d     beq   $135c
131f: e8 00     mov   a,#$00
1321: d6 73 00  mov   $0073+y,a
1324: d6 74 00  mov   $0074+y,a
1327: eb 2d     mov   y,$2d
1329: d6 83 05  mov   $0583+y,a
132c: d6 a3 05  mov   $05a3+y,a
132f: 2f 21     bra   $1352
1331: f6 83 05  mov   a,$0583+y
1334: 80        setc
1335: b6 23 04  sbc   a,$0423+y
1338: d6 83 05  mov   $0583+y,a
133b: c4 40     mov   $40,a
133d: f6 a3 05  mov   a,$05a3+y
1340: a8 00     sbc   a,#$00
1342: b0 07     bcs   $134b
1344: e8 00     mov   a,#$00
1346: d6 83 05  mov   $0583+y,a
1349: c4 40     mov   $40,a
134b: d6 a3 05  mov   $05a3+y,a
134e: 04 40     or    a,$40
1350: d0 0a     bne   $135c
1352: f6 83 04  mov   a,$0483+y
1355: 76 03 04  cmp   a,$0403+y
1358: 90 11     bcc   $136b
135a: a2 07     set5  $07
135c: eb 2d     mov   y,$2d
135e: f6 23 05  mov   a,$0523+y
1361: 76 83 04  cmp   a,$0483+y
1364: 90 08     bcc   $136e
1366: f0 06     beq   $136e
1368: f6 63 04  mov   a,$0463+y
136b: d6 23 05  mov   $0523+y,a
136e: eb 2d     mov   y,$2d
1370: f8 37     mov   x,$37
1372: f0 1c     beq   $1390
1374: 78 03 38  cmp   $38,#$03
1377: 90 17     bcc   $1390
1379: f6 04 ff  mov   a,$ff04+y
137c: c4 33     mov   $33,a
137e: f6 24 ff  mov   a,$ff24+y
1381: c4 34     mov   $34,a
1383: f6 44 ff  mov   a,$ff44+y
1386: c4 35     mov   $35,a
1388: f6 64 ff  mov   a,$ff64+y
138b: c4 36     mov   $36,a
138d: 5f 0d 14  jmp   $140d

1390: f6 43 05  mov   a,$0543+y
1393: c4 2b     mov   $2b,a
1395: f6 63 05  mov   a,$0563+y
1398: c4 2c     mov   $2c,a
139a: f6 23 05  mov   a,$0523+y
139d: fd        mov   y,a
139e: 43 08 07  bbs2  $08,$13a8
13a1: f7 2b     mov   a,($2b)+y
13a3: 8d 40     mov   y,#$40
13a5: cf        mul   ya
13a6: 2f 10     bra   $13b8
13a8: 8d 02     mov   y,#$02
13aa: cf        mul   ya
13ab: 7a 2b     addw  ya,$2b
13ad: da 2b     movw  $2b,ya
13af: 8d 01     mov   y,#$01
13b1: f7 2b     mov   a,($2b)+y
13b3: dc        dec   y
13b4: 2d        push  a
13b5: f7 2b     mov   a,($2b)+y
13b7: ee        pop   y
13b8: f8 37     mov   x,$37
13ba: f0 55     beq   $1411
13bc: 78 02 38  cmp   $38,#$02
13bf: f0 50     beq   $1411
13c1: da 3a     movw  $3a,ya
13c3: eb 2d     mov   y,$2d
13c5: f6 24 ff  mov   a,$ff24+y
13c8: c4 34     mov   $34,a
13ca: f6 04 ff  mov   a,$ff04+y
13cd: c4 33     mov   $33,a
13cf: eb 34     mov   y,$34
13d1: 80        setc
13d2: 9a 3a     subw  ya,$3a
13d4: da 35     movw  $35,ya
13d6: e8 00     mov   a,#$00
13d8: 3c        rol   a
13d9: c4 3a     mov   $3a,a
13db: d0 08     bne   $13e5
13dd: 58 ff 35  eor   $35,#$ff
13e0: 58 ff 36  eor   $36,#$ff
13e3: 3a 35     incw  $35
13e5: eb 2d     mov   y,$2d
13e7: f6 23 04  mov   a,$0423+y
13ea: 5d        mov   x,a
13eb: ba 35     movw  ya,$35
13ed: 3f 2a 14  call  $142a
13f0: c4 35     mov   $35,a
13f2: d8 36     mov   $36,x
13f4: 78 01 3a  cmp   $3a,#$01
13f7: d0 08     bne   $1401
13f9: 58 ff 35  eor   $35,#$ff
13fc: 58 ff 36  eor   $36,#$ff
13ff: 3a 35     incw  $35
1401: eb 2d     mov   y,$2d
1403: e4 35     mov   a,$35
1405: d6 44 ff  mov   $ff44+y,a
1408: e4 36     mov   a,$36
140a: d6 64 ff  mov   $ff64+y,a
140d: ba 33     movw  ya,$33
140f: 7a 35     addw  ya,$35
1411: da 33     movw  $33,ya
1413: eb 2d     mov   y,$2d
1415: d6 04 ff  mov   $ff04+y,a
1418: e4 34     mov   a,$34
141a: d6 24 ff  mov   $ff24+y,a
141d: ba 33     movw  ya,$33
141f: 43 08 07  bbs2  $08,$1429
1422: cd 40     mov   x,#$40
1424: 9e        div   ya,x
1425: 8d 00     mov   y,#$00
1427: da 33     movw  $33,ya
1429: 6f        ret

142a: c8 00     cmp   x,#$00
142c: d0 04     bne   $1432
142e: 1d        dec   x
142f: 7d        mov   a,x
1430: fd        mov   y,a
1431: 6f        ret

1432: 40        setp
1433: cb 01     mov   $01,y
1435: 3e 01     cmp   x,$01
1437: f0 02     beq   $143b
1439: b0 1a     bcs   $1455
143b: c4 00     mov   $00,a
143d: dd        mov   a,y
143e: 8d 00     mov   y,#$00
1440: 9e        div   ya,x
1441: c4 02     mov   $02,a
1443: fd        mov   y,a
1444: 7d        mov   a,x
1445: cf        mul   ya
1446: c4 03     mov   $03,a
1448: e4 01     mov   a,$01
144a: 80        setc
144b: a4 03     sbc   a,$03
144d: fd        mov   y,a
144e: e4 00     mov   a,$00
1450: 9e        div   ya,x
1451: f8 02     mov   x,$02
1453: 20        clrp
1454: 6f        ret

1455: 9e        div   ya,x
1456: cd 00     mov   x,#$00
1458: 20        clrp
1459: 6f        ret

145a: 4d        push  x
145b: f5 f4 fc  mov   a,$fcf4+x
145e: 8d 04     mov   y,#$04
1460: cf        mul   ya
1461: 7a 24     addw  ya,$24
1463: da 00     movw  $00,ya
1465: f5 3a 08  mov   a,$083a+x
1468: c4 f2     mov   $f2,a
146a: 7d        mov   a,x
146b: 1c        asl   a
146c: 1c        asl   a
146d: 5d        mov   x,a
146e: f5 02 02  mov   a,$0202+x
1471: c5 26 02  mov   $0226,a
1474: f5 03 02  mov   a,$0203+x
1477: c5 27 02  mov   $0227,a
147a: 8f 09 f3  mov   $f3,#$09
147d: 8d 00     mov   y,#$00
147f: f7 00     mov   a,($00)+y
1481: d5 00 02  mov   $0200+x,a
1484: fc        inc   y
1485: f7 00     mov   a,($00)+y
1487: d5 01 02  mov   $0201+x,a
148a: fc        inc   y
148b: f7 00     mov   a,($00)+y
148d: d5 02 02  mov   $0202+x,a
1490: fc        inc   y
1491: f7 00     mov   a,($00)+y
1493: d5 03 02  mov   $0203+x,a
1496: 8d 01     mov   y,#$01
1498: f7 00     mov   a,($00)+y
149a: c4 3d     mov   $3d,a
149c: dc        dec   y
149d: f7 00     mov   a,($00)+y
149f: 80        setc
14a0: a8 03     sbc   a,#$03
14a2: c4 3c     mov   $3c,a
14a4: b8 00 3d  sbc   $3d,#$00
14a7: f7 3c     mov   a,($3c)+y
14a9: c5 04 01  mov   $0104,a
14ac: fc        inc   y
14ad: f7 3c     mov   a,($3c)+y
14af: c5 05 01  mov   $0105,a
14b2: fc        inc   y
14b3: f7 3c     mov   a,($3c)+y
14b5: c4 5e     mov   $5e,a
14b7: 10 14     bpl   $14cd
14b9: 28 1f     and   a,#$1f
14bb: 8f 6c f2  mov   $f2,#$6c
14be: 38 e0 f3  and   $f3,#$e0
14c1: 04 f3     or    a,$f3
14c3: c4 f3     mov   $f3,a
14c5: 8f 3d f2  mov   $f2,#$3d
14c8: 09 45 f3  or    ($f3),($45)
14cb: 2f 06     bra   $14d3
14cd: 8f 3d f2  mov   $f2,#$3d
14d0: 29 46 f3  and   ($f3),($46)
14d3: ce        pop   x
14d4: f5 3a 08  mov   a,$083a+x
14d7: c4 f2     mov   $f2,a
14d9: d8 f3     mov   $f3,x
14db: 6f        ret

14dc: 60        clrc
14dd: 88 a0     adc   a,#$a0			; add offset to input frequency (1440)
14df: 5d        mov   x,a
14e0: dd        mov   a,y
14e1: 88 05     adc   a,#$05
14e3: fd        mov   y,a
14e4: 7d        mov   a,x
14e5: ad 0a     cmp   y,#$0a			; check if it is in within positive range
14e7: 90 06     bcc   $14ef			; in range
14e9: d0 0a     bne   $14f5			; out of range
14eb: 68 50     cmp   a,#$50
14ed: b0 06     bcs   $14f5			; out of range
14ef: 8f ff 5f  mov   $5f,#$ff
14f2: 5f 0b 15  jmp   $150b

14f5: ad 80     cmp   y,#$80
14f7: 90 0f     bcc   $1508
14f9: 8f 00 5f  mov   $5f,#$00
14fc: 60        clrc
14fd: 88 20     adc   a,#$20
14ff: 5d        mov   x,a
1500: dd        mov   a,y
1501: 88 df     adc   a,#$df
1503: fd        mov   y,a
1504: 7d        mov   a,x
1505: 5f 0b 15  jmp   $150b

1508: 8f 0a 5f  mov   $5f,#$0a
150b: cd f0     mov   x,#$f0
150d: 9e        div   ya,x
150e: 78 ff 5f  cmp   $5f,#$ff
1511: d0 02     bne   $1515
1513: c4 5f     mov   $5f,a
1515: f6 30 15  mov   a,$1530+y			;get pitch value (from table)
1518: c4 3a     mov   $3a,a
151a: f6 20 16  mov   a,$1620+y
151d: c4 3b     mov   $3b,a
151f: e8 0a     mov   a,#$0a
1521: 80        setc
1522: a4 5f     sbc   a,$5f
1524: f0 07     beq   $152d
1526: fd        mov   y,a
1527: 4b 3b     lsr   $3b
1529: 6b 3a     ror   $3a
152b: fe fa     dbnz  y,$1527
152d: ba 3a     movw  ya,$3a
152f: 6f        ret

; pitch table (low byte)
1530: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
1620: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

; note interval frequencies (low byte)
1710: db $30,$20,$ac,$10,$24,$38,$4c,$60,$74,$88,$9c,$b0,$c4,$d8,$ec,$00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc,$f0,$54,$e0,$d0,$c0

; note interval frequencies (high byte)
1730: db $fd,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03

1750: 3f c4 17  call  $17c4
1753: 8f 00 85  mov   $85,#$00
1756: e4 84     mov   a,$84
1758: f0 20     beq   $177a
175a: e4 83     mov   a,$83
175c: 9c        dec   a
175d: c4 86     mov   $86,a
175f: 3f be 0b  call  $0bbe
1762: f8 85     mov   x,$85
1764: f5 07 01  mov   a,$0107+x
1767: 30 0a     bmi   $1773
1769: 5d        mov   x,a
176a: c4 86     mov   $86,a
176c: f5 66 03  mov   a,$0366+x
176f: 5d        mov   x,a
1770: 1f 3d 1e  jmp   ($1e3d+x)

1773: ab 85     inc   $85
1775: 69 83 85  cmp   ($85),($83)
1778: d0 e5     bne   $175f
177a: 6f        ret

177b: c4 3a     mov   $3a,a
177d: f6 62 00  mov   a,$0062+y
1780: 28 80     and   a,#$80
1782: f0 08     beq   $178c
1784: f6 10 00  mov   a,$0010+y
1787: 9c        dec   a
1788: d6 10 00  mov   $0010+y,a
178b: 6f        ret

178c: f6 6a 00  mov   a,$006a+y
178f: 64 3a     cmp   a,$3a
1791: d0 07     bne   $179a
1793: f6 10 00  mov   a,$0010+y
1796: 5c        lsr   a
1797: d6 10 00  mov   $0010+y,a
179a: 6f        ret

179b: f8 86     mov   x,$86
179d: 9b b2     dec   $b2+x
179f: d0 d2     bne   $1773
17a1: 2f 19     bra   $17bc
17a3: f8 86     mov   x,$86
17a5: 9b b2     dec   $b2+x
17a7: d0 ca     bne   $1773
17a9: e8 04     mov   a,#$04
17ab: d5 66 03  mov   $0366+x,a
17ae: 5f a5 18  jmp   $18a5

; vcmd eb - set pitch bend state
17b1: 3f 0a 18  call  $180a

; vcmd ec - set pitch bend state and release
17b4: e8 00     mov   a,#$00
17b6: d5 c6 02  mov   $02c6+x,a
17b9: d5 da 02  mov   $02da+x,a
17bc: e8 06     mov   a,#$06
17be: d5 66 03  mov   $0366+x,a
17c1: 5f 3a 18  jmp   $183a

17c4: d3 07 2f  bbc6  $07,$17f6
17c7: d2 07     clr6  $07
17c9: f8 83     mov   x,$83
17cb: f0 29     beq   $17f6
17cd: e8 ff     mov   a,#$ff
17cf: 1d        dec   x
17d0: d5 07 01  mov   $0107+x,a
17d3: 1d        dec   x
17d4: 10 fa     bpl   $17d0
17d6: f8 83     mov   x,$83
17d8: 1d        dec   x
17d9: 8f 00 3a  mov   $3a,#$00
17dc: eb 3a     mov   y,$3a
17de: f6 07 01  mov   a,$0107+y
17e1: 30 14     bmi   $17f7
17e3: fd        mov   y,a
17e4: f5 b2 02  mov   a,$02b2+x
17e7: 76 b2 02  cmp   a,$02b2+y
17ea: b0 0b     bcs   $17f7
17ec: ab 3a     inc   $3a
17ee: 78 14 3a  cmp   $3a,#$14
17f1: d0 e9     bne   $17dc
17f3: 1d        dec   x
17f4: 10 e3     bpl   $17d9
17f6: 6f        ret

17f7: eb 3a     mov   y,$3a
17f9: 4d        push  x
17fa: 40        setp
17fb: f6 07 01  mov   a,$0107+y
17fe: d9 07     mov   $07+y,x
1800: 5d        mov   x,a
1801: fc        inc   y
1802: 68 ff     cmp   a,#$ff
1804: d0 f5     bne   $17fb
1806: ce        pop   x
1807: 20        clrp
1808: 2f e9     bra   $17f3
180a: f5 27 06  mov   a,$0627+x
180d: 30 15     bmi   $1824
180f: fd        mov   y,a
1810: f6 6a 00  mov   a,$006a+y
1813: 68 01     cmp   a,#$01
1815: d0 0d     bne   $1824
1817: e8 01     mov   a,#$01
1819: 16 46 02  or    a,$0246+y
181c: d6 46 02  mov   $0246+y,a
181f: e8 01     mov   a,#$01
1821: 3f 7b 17  call  $177b
1824: 6f        ret

1825: c4 02     mov   $02,a
1827: 7d        mov   a,x
1828: 8d 05     mov   y,#$05
182a: cf        mul   ya
182b: 60        clrc
182c: 84 02     adc   a,$02
182e: fd        mov   y,a
182f: cb 02     mov   $02,y
1831: 6f        ret

; voice numbers
1832: db $01,$02,$04,$08,$10,$20,$40,$80

183a: f8 86     mov   x,$86
183c: f5 c6 02  mov   a,$02c6+x
183f: c4 3a     mov   $3a,a
1841: f5 da 02  mov   a,$02da+x
1844: c4 3b     mov   $3b,a
1846: 3f 62 1a  call  $1a62
1849: fd        mov   y,a
184a: 28 0f     and   a,#$0f
184c: 2d        push  a
184d: dd        mov   a,y
184e: 5c        lsr   a
184f: 5c        lsr   a
1850: 5c        lsr   a
1851: 5c        lsr   a
1852: f0 28     beq   $187c
1854: 60        clrc
1855: 88 f8     adc   a,#$f8
1857: 8d 00     mov   y,#$00
1859: 68 00     cmp   a,#$00
185b: 10 01     bpl   $185e
185d: dc        dec   y
185e: 7a 3a     addw  ya,$3a
1860: d5 c6 02  mov   $02c6+x,a
1863: dd        mov   a,y
1864: d5 da 02  mov   $02da+x,a
1867: 8f 00 87  mov   $87,#$00
186a: 3f 3a 19  call  $193a
186d: f8 86     mov   x,$86
186f: ae        pop   a
1870: 68 00     cmp   a,#$00
1872: f0 c6     beq   $183a
1874: d4 b2     mov   $b2+x,a
1876: 3f 4b 1c  call  $1c4b
1879: 5f 73 17  jmp   $1773

187c: ae        pop   a
187d: dd        mov   a,y
187e: 68 00     cmp   a,#$00
1880: d0 03     bne   $1885
1882: 5f a9 17  jmp   $17a9

1885: 68 01     cmp   a,#$01
1887: d0 0b     bne   $1894
1889: 3f 62 1a  call  $1a62
188c: d4 b2     mov   $b2+x,a
188e: 3f 4b 1c  call  $1c4b
1891: 5f 73 17  jmp   $1773

1894: 68 02     cmp   a,#$02
1896: d0 05     bne   $189d
1898: 3f 0a 18  call  $180a
189b: 2f 9d     bra   $183a
189d: f4 b2     mov   a,$b2+x
189f: 2d        push  a
18a0: 3f 62 1a  call  $1a62
18a3: 2f b2     bra   $1857
18a5: f8 86     mov   x,$86
18a7: f5 4e 02  mov   a,$024e+x
18aa: 68 05     cmp   a,#$05
18ac: f0 1e     beq   $18cc
18ae: 3f 25 18  call  $1825
18b1: f6 68 fd  mov   a,$fd68+y
18b4: c4 00     mov   $00,a
18b6: f6 04 fd  mov   a,$fd04+y
18b9: c4 01     mov   $01,a
18bb: 8d 02     mov   y,#$02
18bd: f7 00     mov   a,($00)+y
18bf: de 8a 0a  cbne  $8a+x,$18cc
18c2: 8d 03     mov   y,#$03
18c4: f7 00     mov   a,($00)+y
18c6: de 9e 03  cbne  $9e+x,$18cc

; play melody byte
18c9: 5f 9b 1b  jmp   $1b9b

18cc: 3f 62 1a  call  $1a62		; get 1 byte
18cf: fd        mov   y,a		; separate the flags
18d0: ad e0     cmp   y,#$e0		; check if it's a vector command
18d2: 90 16     bcc   $18ea		; if not a vector...
18d4: dd        mov   a,y
18d5: 28 1f     and   a,#$1f		; mask off bits
18d7: 1c        asl   a
18d8: fd        mov   y,a
18d9: f6 a0 1c  mov   a,$1ca0+y
18dc: c5 e8 18  mov   $18e8,a
18df: f6 a1 1c  mov   a,$1ca1+y
18e2: c5 e9 18  mov   $18e9,a
18e5: eb 3a     mov   y,$3a
18e7: 5f 10 19  jmp   $1910

18ea: ad c0     cmp   y,#$c0		; is it a rest?
18ec: 90 06     bcc   $18f4
18ee: 80        setc
18ef: a8 bf     sbc   a,#$bf		; get the duration
18f1: 5f e4 1a  jmp   $1ae4		; and set rest

18f4: ad 00     cmp   y,#$00		; is it a relative note?
18f6: 10 06     bpl   $18fe		; if so, play the note
18f8: 80        setc			; otherwise, it must be an absolute note...
18f9: a8 60     sbc   a,#$60
18fb: fd        mov   y,a
18fc: 2f 16     bra   $1914
18fe: 2d        push  a
18ff: 5c        lsr   a
1900: 5c        lsr   a
1901: 5c        lsr   a
1902: 80        setc
1903: a8 08     sbc   a,#$08
1905: 60        clrc
1906: 95 76 02  adc   a,$0276+x
1909: fd        mov   y,a
190a: ae        pop   a
190b: 28 07     and   a,#$07
190d: bc        inc   a
190e: 2f 07     bra   $1917

; vcmd ef - play absolute note
1910: 3f 62 1a  call  $1a62
1913: fd        mov   y,a
1914: 3f 62 1a  call  $1a62
1917: 2d        push  a
1918: e8 00     mov   a,#$00
191a: d5 c6 02  mov   $02c6+x,a
191d: d5 da 02  mov   $02da+x,a
1920: dd        mov   a,y
1921: d5 76 02  mov   $0276+x,a
1924: 8f 01 87  mov   $87,#$01
1927: f3 07 02  bbc7  $07,$192c
192a: 8b 87     dec   $87
192c: f2 07     clr7  $07
192e: ae        pop   a
192f: 3f 35 19  call  $1935
1932: 5f 73 17  jmp   $1773

1935: d4 b2     mov   $b2+x,a
1937: 3f 45 1c  call  $1c45
193a: e4 87     mov   a,$87
193c: f0 06     beq   $1944
193e: 3f 0a 18  call  $180a
1941: 73 07 16  bbc3  $07,$195a
1944: f5 27 06  mov   a,$0627+x
1947: 30 0d     bmi   $1956
1949: fd        mov   y,a
194a: 7d        mov   a,x
194b: 08 80     or    a,#$80
194d: 76 cf 00  cmp   a,$00cf+y
1950: d0 04     bne   $1956
1952: dd        mov   a,y
1953: 5d        mov   x,a
1954: 2f 44     bra   $199a
1956: ab 87     inc   $87
1958: 72 07     clr3  $07
195a: e8 ff     mov   a,#$ff
195c: d5 27 06  mov   $0627+x,a
195f: f5 b2 02  mov   a,$02b2+x
1962: c4 4f     mov   $4f,a
1964: f5 eb 05  mov   a,$05eb+x
1967: c4 09     mov   $09,a
1969: f5 13 06  mov   a,$0613+x
196c: c4 4e     mov   $4e,a
196e: f5 ff 05  mov   a,$05ff+x
1971: 5d        mov   x,a
1972: f5 32 18  mov   a,$1832+x
1975: c4 50     mov   $50,a
1977: f5 7a 03  mov   a,$037a+x
197a: 28 01     and   a,#$01
197c: d0 17     bne   $1995
197e: 3f 73 0e  call  $0e73
1981: 30 12     bmi   $1995
1983: d3 09 12  bbc6  $09,$1998
1986: 7d        mov   a,x
1987: 53 09 03  bbc2  $09,$198d
198a: bc        inc   a
198b: 2f 01     bra   $198e
198d: 9c        dec   a
198e: 28 07     and   a,#$07
1990: d5 ff 05  mov   $05ff+x,a
1993: 2f 03     bra   $1998
1995: 5f 5d 1a  jmp   $1a5d

1998: 7d        mov   a,x
1999: fd        mov   y,a
199a: f8 86     mov   x,$86
199c: d5 27 06  mov   $0627+x,a
199f: 7d        mov   a,x
19a0: 08 80     or    a,#$80
19a2: d6 cf 00  mov   $00cf+y,a
19a5: e4 87     mov   a,$87
19a7: f0 00     beq   $19a9
19a9: cb c6     mov   $c6,y
19ab: e8 01     mov   a,#$01
19ad: d6 6a 00  mov   $006a+y,a
19b0: f5 b2 02  mov   a,$02b2+x
19b3: d6 10 00  mov   $0010+y,a
19b6: dd        mov   a,y
19b7: 1c        asl   a
19b8: fd        mov   y,a
19b9: f5 ee 02  mov   a,$02ee+x
19bc: d6 5b 01  mov   $015b+y,a
19bf: f5 02 03  mov   a,$0302+x
19c2: d6 5c 01  mov   $015c+y,a
19c5: f5 76 02  mov   a,$0276+x
19c8: 8d 14     mov   y,#$14
19ca: cf        mul   ya
19cb: 80        setc
19cc: a8 84     sbc   a,#$84
19ce: c4 4b     mov   $4b,a
19d0: dd        mov   a,y
19d1: a8 03     sbc   a,#$03
19d3: c4 4c     mov   $4c,a
19d5: f5 da 02  mov   a,$02da+x
19d8: fd        mov   y,a
19d9: f5 c6 02  mov   a,$02c6+x
19dc: 7a 4b     addw  ya,$4b
19de: da 4b     movw  $4b,ya
19e0: f5 4f 06  mov   a,$064f+x
19e3: fd        mov   y,a
19e4: f5 3b 06  mov   a,$063b+x
19e7: 7a 4b     addw  ya,$4b
19e9: 7a 5b     addw  ya,$5b
19eb: da 4b     movw  $4b,ya
19ed: dd        mov   a,y
19ee: eb 87     mov   y,$87
19f0: d0 13     bne   $1a05
19f2: c4 2f     mov   $2f,a
19f4: fa 4b 2e  mov   ($2e),($4b)
19f7: 8f d4 00  mov   $00,#$d4
19fa: 8f fc 01  mov   $01,#$fc
19fd: 7d        mov   a,x
19fe: 08 80     or    a,#$80
1a00: 3f 0e 1e  call  $1e0e
1a03: 2f 58     bra   $1a5d
1a05: f5 c3 05  mov   a,$05c3+x
1a08: 10 02     bpl   $1a0c
1a0a: e8 7f     mov   a,#$7f
1a0c: c4 c7     mov   $c7,a
1a0e: e4 c6     mov   a,$c6
1a10: 1c        asl   a
1a11: fd        mov   y,a
1a12: e8 00     mov   a,#$00
1a14: 12 07     clr0  $07
1a16: d6 d7 00  mov   $00d7+y,a
1a19: d6 d8 00  mov   $00d8+y,a
1a1c: e4 c6     mov   a,$c6
1a1e: fd        mov   y,a
1a1f: f6 46 02  mov   a,$0246+y
1a22: 08 02     or    a,#$02
1a24: d6 46 02  mov   $0246+y,a
1a27: e8 ff     mov   a,#$ff
1a29: d6 92 03  mov   $0392+y,a
1a2c: f5 9e 02  mov   a,$029e+x
1a2f: d6 9a 03  mov   $039a+y,a
1a32: f5 16 03  mov   a,$0316+x
1a35: c4 0d     mov   $0d,a
1a37: f5 62 02  mov   a,$0262+x
1a3a: c5 3d 02  mov   $023d,a
1a3d: f5 3e 03  mov   a,$033e+x
1a40: c4 0c     mov   $0c,a
1a42: f5 52 03  mov   a,$0352+x
1a45: c4 0f     mov   $0f,a
1a47: f5 2a 03  mov   a,$032a+x
1a4a: c4 0e     mov   $0e,a
1a4c: eb c7     mov   y,$c7
1a4e: f5 8a 02  mov   a,$028a+x
1a51: cf        mul   ya
1a52: f5 d7 05  mov   a,$05d7+x
1a55: f8 c6     mov   x,$c6
1a57: 8f ff cb  mov   $cb,#$ff
1a5a: 3f e5 0e  call  $0ee5
1a5d: ab 87     inc   $87
1a5f: 72 07     clr3  $07
1a61: 6f        ret

; get 1 byte
1a62: 3f be 0b  call  $0bbe
1a65: f8 86     mov   x,$86
1a67: f4 8a     mov   a,$8a+x
1a69: c5 72 1a  mov   $1a72,a
1a6c: f4 9e     mov   a,$9e+x
1a6e: c5 73 1a  mov   $1a73,a
1a71: e5 4d ba  mov   a,$ba4d
1a74: bb 8a     inc   $8a+x
1a76: d0 02     bne   $1a7a
1a78: bb 9e     inc   $9e+x
1a7a: 6f        ret

; vcmd e9 - set effects mask
1a7b: 3f 62 1a  call  $1a62
1a7e: c4 0a     mov   $0a,a
1a80: 2f 09     bra   $1a8b

; vcmd e6 - set standard allocation
1a82: e8 08     mov   a,#$08
1a84: d5 eb 05  mov   $05eb+x,a
1a87: 7d        mov   a,x
1a88: d5 ff 05  mov   $05ff+x,a
1a8b: 5f a5 18  jmp   $18a5

; vcmd e5 - set channel allocation
1a8e: 3f 62 1a  call  $1a62
1a91: d5 eb 05  mov   $05eb+x,a
1a94: 3f 62 1a  call  $1a62
1a97: d5 ff 05  mov   $05ff+x,a
1a9a: 3f 62 1a  call  $1a62
1a9d: d5 13 06  mov   $0613+x,a
1aa0: 2f e9     bra   $1a8b

; vcmd f0 - end of sequence
1aa2: 3f 0a 18  call  $180a
1aa5: e8 00     mov   a,#$00
1aa7: d5 66 03  mov   $0366+x,a
1aaa: 8b 84     dec   $84
1aac: 5f 73 17  jmp   $1773

; vcmd f1 - delta expression
1aaf: f5 c3 05  mov   a,$05c3+x
1ab2: 3f ba 1a  call  $1aba
1ab5: d5 c3 05  mov   $05c3+x,a
1ab8: 2f d1     bra   $1a8b
1aba: 4d        push  x
1abb: fd        mov   y,a
1abc: 6d        push  y
1abd: 3f 62 1a  call  $1a62
1ac0: cf        mul   ya
1ac1: da 3a     movw  $3a,ya
1ac3: ee        pop   y
1ac4: 3f 62 1a  call  $1a62
1ac7: cf        mul   ya
1ac8: 6d        push  y
1ac9: 0b 3a     asl   $3a
1acb: 84 3b     adc   a,$3b
1acd: 5d        mov   x,a
1ace: ae        pop   a
1acf: 88 00     adc   a,#$00
1ad1: fd        mov   y,a
1ad2: d0 03     bne   $1ad7
1ad4: 7d        mov   a,x
1ad5: 10 02     bpl   $1ad9
1ad7: e8 7f     mov   a,#$7f
1ad9: ce        pop   x
1ada: 6f        ret

; vcmd f2 - absolute expression
1adb: 3f 62 1a  call  $1a62
1ade: d5 c3 05  mov   $05c3+x,a
1ae1: 5f a5 18  jmp   $18a5

1ae4: 2d        push  a
1ae5: 3f 0a 18  call  $180a
1ae8: ae        pop   a
1ae9: d4 b2     mov   $b2+x,a
1aeb: 3f 45 1c  call  $1c45
1aee: 5f 73 17  jmp   $1773

; vcmd fd - set time (delay) - 64
1af1: e8 40     mov   a,#$40
1af3: 2f f4     bra   $1ae9

; vcmd f8 - set time (delay) - 32
1af5: e8 20     mov   a,#$20
1af7: 2f f0     bra   $1ae9

; vcmd fe - set time (delay) - 128
1af9: e8 80     mov   a,#$80
1afb: 2f ec     bra   $1ae9

; vcmd ff - set time (delay) - 256
1afd: e8 00     mov   a,#$00
1aff: 2f e8     bra   $1ae9

; vcmd f5 - set sound (instrument)
1b01: 3f 62 1a  call  $1a62
1b04: d5 d7 05  mov   $05d7+x,a
1b07: f5 4e 02  mov   a,$024e+x
1b0a: 68 05     cmp   a,#$05
1b0c: f0 2b     beq   $1b39
1b0e: 3f 25 18  call  $1825
1b11: f6 68 fd  mov   a,$fd68+y
1b14: c4 00     mov   $00,a
1b16: f6 04 fd  mov   a,$fd04+y
1b19: c4 01     mov   $01,a
1b1b: f6 04 fc  mov   a,$fc04+y
1b1e: 8d 09     mov   y,#$09
1b20: 77 00     cmp   a,($00)+y
1b22: 90 02     bcc   $1b26
1b24: e8 00     mov   a,#$00
1b26: bc        inc   a
1b27: eb 02     mov   y,$02
1b29: d6 04 fc  mov   $fc04+y,a
1b2c: 60        clrc
1b2d: 88 09     adc   a,#$09
1b2f: fd        mov   y,a
1b30: f7 00     mov   a,($00)+y
1b32: 68 ff     cmp   a,#$ff
1b34: f0 03     beq   $1b39
1b36: d5 d7 05  mov   $05d7+x,a
1b39: 5f a5 18  jmp   $18a5

; vcmd f6 - play phrase
1b3c: f5 4e 02  mov   a,$024e+x
1b3f: 9c        dec   a
1b40: d5 4e 02  mov   $024e+x,a
1b43: 3f 25 18  call  $1825
1b46: f4 8a     mov   a,$8a+x
1b48: d6 68 fd  mov   $fd68+y,a
1b4b: f4 9e     mov   a,$9e+x
1b4d: d6 04 fd  mov   $fd04+y,a
1b50: e8 00     mov   a,#$00
1b52: d6 68 fc  mov   $fc68+y,a
1b55: 3f 62 1a  call  $1a62
1b58: 2d        push  a
1b59: 3f 67 1a  call  $1a67
1b5c: 2d        push  a
1b5d: 3f 67 1a  call  $1a67
1b60: 3f 67 1a  call  $1a67
1b63: 3f 67 1a  call  $1a67
1b66: 3f 67 1a  call  $1a67
1b69: fd        mov   y,a
1b6a: 3f 67 1a  call  $1a67
1b6d: 2d        push  a
1b6e: dd        mov   a,y
1b6f: 60        clrc
1b70: 95 3b 06  adc   a,$063b+x
1b73: d5 3b 06  mov   $063b+x,a
1b76: ae        pop   a
1b77: 95 4f 06  adc   a,$064f+x
1b7a: d5 4f 06  mov   $064f+x,a
1b7d: f5 c3 05  mov   a,$05c3+x
1b80: eb 02     mov   y,$02
1b82: d6 04 fe  mov   $fe04+y,a
1b85: 3f ba 1a  call  $1aba
1b88: d5 c3 05  mov   $05c3+x,a
1b8b: eb 02     mov   y,$02
1b8d: e8 00     mov   a,#$00
1b8f: d6 04 fc  mov   $fc04+y,a
1b92: ae        pop   a
1b93: d4 9e     mov   $9e+x,a
1b95: ae        pop   a
1b96: d4 8a     mov   $8a+x,a
1b98: 5f a5 18  jmp   $18a5

1b9b: eb 02     mov   y,$02
1b9d: f6 68 fc  mov   a,$fc68+y
1ba0: bc        inc   a
1ba1: d6 68 fc  mov   $fc68+y,a
1ba4: 8d 04     mov   y,#$04
1ba6: f7 00     mov   a,($00)+y
1ba8: f0 07     beq   $1bb1
1baa: eb 02     mov   y,$02
1bac: 76 68 fc  cmp   a,$fc68+y
1baf: f0 0f     beq   $1bc0
1bb1: 8d 00     mov   y,#$00
1bb3: f7 00     mov   a,($00)+y
1bb5: d4 8a     mov   $8a+x,a
1bb7: 8d 01     mov   y,#$01
1bb9: f7 00     mov   a,($00)+y
1bbb: d4 9e     mov   $9e+x,a
1bbd: 5f cc 18  jmp   $18cc

1bc0: f5 3b 06  mov   a,$063b+x
1bc3: 80        setc
1bc4: 8d 05     mov   y,#$05
1bc6: b7 00     sbc   a,($00)+y
1bc8: d5 3b 06  mov   $063b+x,a
1bcb: f5 4f 06  mov   a,$064f+x
1bce: 8d 06     mov   y,#$06
1bd0: b7 00     sbc   a,($00)+y
1bd2: d5 4f 06  mov   $064f+x,a
1bd5: eb 02     mov   y,$02
1bd7: f6 04 fe  mov   a,$fe04+y
1bda: d5 c3 05  mov   $05c3+x,a
1bdd: e4 00     mov   a,$00
1bdf: 60        clrc
1be0: 88 0a     adc   a,#$0a
1be2: d4 8a     mov   $8a+x,a
1be4: e4 01     mov   a,$01
1be6: 88 00     adc   a,#$00
1be8: d4 9e     mov   $9e+x,a
1bea: 8d 09     mov   y,#$09
1bec: f7 00     mov   a,($00)+y
1bee: 60        clrc
1bef: 94 8a     adc   a,$8a+x
1bf1: d4 8a     mov   $8a+x,a
1bf3: f4 9e     mov   a,$9e+x
1bf5: 88 00     adc   a,#$00
1bf7: d4 9e     mov   $9e+x,a
1bf9: f5 4e 02  mov   a,$024e+x
1bfc: bc        inc   a
1bfd: d5 4e 02  mov   $024e+x,a
1c00: 5f a5 18  jmp   $18a5

; vcmd ea - set release
1c03: 3f 0a 18  call  $180a
1c06: 2f 03     bra   $1c0b

; vcmd f9 - go to loop
1c08: 3f 25 1d  call  $1d25
1c0b: 5f a5 18  jmp   $18a5

; vcmd fa - set tempo
1c0e: 3f 62 1a  call  $1a62
1c11: c4 c9     mov   $c9,a
1c13: 2f f6     bra   $1c0b

; vcmd fb - set panning
1c15: 3f 62 1a  call  $1a62
1c18: d5 9e 02  mov   $029e+x,a
1c1b: 2f ee     bra   $1c0b

; vcmd e0 - set hardware detune
1c1d: 3f 62 1a  call  $1a62
1c20: d5 ee 02  mov   $02ee+x,a
1c23: 3f 62 1a  call  $1a62
1c26: d5 02 03  mov   $0302+x,a
1c29: 2f e0     bra   $1c0b

; vcmd f3 - set priority
1c2b: 3f 62 1a  call  $1a62
1c2e: d5 b2 02  mov   $02b2+x,a
1c31: c2 07     set6  $07
1c33: 2f d6     bra   $1c0b

; vcmd ed - set velocity
1c35: 3f 62 1a  call  $1a62
1c38: d5 8a 02  mov   $028a+x,a
1c3b: 2f ce     bra   $1c0b

; vcmd fc - set no retrigger
1c3d: 62 07     set3  $07
1c3f: 2f ca     bra   $1c0b

; vcmd f4 - set tied note
1c41: e2 07     set7  $07
1c43: 2f c6     bra   $1c0b
1c45: e8 02     mov   a,#$02
1c47: d5 66 03  mov   $0366+x,a
1c4a: 6f        ret

1c4b: e8 08     mov   a,#$08
1c4d: d5 66 03  mov   $0366+x,a
1c50: 6f        ret

1c51: 78 80 c8  cmp   $c8,#$80
1c54: 90 08     bcc   $1c5e
1c56: 60        clrc
1c57: 84 c8     adc   a,$c8
1c59: 10 09     bpl   $1c64
1c5b: e8 00     mov   a,#$00
1c5d: 6f        ret

1c5e: 84 c8     adc   a,$c8
1c60: 10 02     bpl   $1c64
1c62: e8 7f     mov   a,#$7f
1c64: 6f        ret

; vcmd e1 - set amplitude articulation
1c65: 3f 62 1a  call  $1a62
1c68: d5 16 03  mov   $0316+x,a
1c6b: 2f 9e     bra   $1c0b

; vcmd 00-0f - extended melody vectors
1c6d: 3f 62 1a  call  $1a62
1c70: d5 62 02  mov   $0262+x,a
1c73: 2f 96     bra   $1c0b

; vcmd e2 - set stereo articulation
1c75: 3f 62 1a  call  $1a62
1c78: d5 52 03  mov   $0352+x,a
1c7b: 2f 8e     bra   $1c0b

; vcmd e4 - set pitch articulation
1c7d: 3f 62 1a  call  $1a62
1c80: d5 2a 03  mov   $032a+x,a
1c83: 2f f6     bra   $1c7b

; vcmd e3 - set tone articulation
1c85: 3f 62 1a  call  $1a62
1c88: d5 3e 03  mov   $033e+x,a
1c8b: 2f ee     bra   $1c7b

1c8d: 3f 46 1d  call  $1d46
1c90: 2f e9     bra   $1c7b

; vcmd f7 - set detune
1c92: 3f 62 1a  call  $1a62
1c95: d5 3b 06  mov   $063b+x,a
1c98: 3f 62 1a  call  $1a62
1c9b: d5 4f 06  mov   $064f+x,a
1c9e: 2f db     bra   $1c7b

; vcmd table (e0-ff)
1ca0: dw $1c1d		; e0 - set hardware detune
1ca2: dw $1c65		; e1 - set amplitude articulation
1ca4: dw $1c75		; e2 - set stereo articulation
1ca6: dw $1c85		; e3 - set tone articulation
1ca8: dw $1c7d		; e4 - set pitch articulation
1caa: dw $1a8e		; e5 - set channel allocation
1cac: dw $1a82		; e6 - set standard allocation
1cae: dw $1c8d		; e7 - reset track
1cb0: dw $0000		; e8 - redirect track (disabled)
1cb2: dw $1a7b		; e9 - set effects mask
1cb4: dw $1c03		; ea - set release
1cb6: dw $17b4		; eb - set pitch bend state
1cb8: dw $17b1		; ec - set pitch bend state and release
1cba: dw $1c35		; ed - set velocity
1cbc: dw $1ce2		; ee - extended command
1cbe: dw $1910		; ef - play absolute note
1cc0: dw $1aa2		; f0 - end of sequence
1cc2: dw $1aaf		; f1 - delta expression
1cc4: dw $1adb		; f2 - absolute expression
1cc6: dw $1c2b		; f3 - set priority
1cc8: dw $1c41		; f4 - set tied note
1cca: dw $1b01		; f5 - set sound (instrument)
1ccc: dw $1b3c		; f6 - play phrase
1cce: dw $1c92		; f7 - set detune
1cd0: dw $1af5		; f8 - set time (delay) - 32
1cd2: dw $1c08		; f9 - go to loop
1cd4: dw $1c0e		; fa - set tempo
1cd6: dw $1c15		; fb - set panning
1cd8: dw $1c3d		; fc - set no retrigger
1cda: dw $1af1		; fd - set time (delay) - 64
1cdc: dw $1af9		; fe - set time (delay) - 128
1cde: dw $1afd		; ff - set time (delay) - 256
1ce0: dw $1c6d		; 00-0f - extended melody vectors

; vcmd ee - extended command
1ce2: 3f 62 1a  call  $1a62
1ce5: dd        mov   a,y
1ce6: 1c        asl   a
1ce7: fd        mov   y,a
1ce8: f6 e0 1c  mov   a,$1ce0+y
1ceb: c5 f7 1c  mov   $1cf7,a
1cee: f6 e1 1c  mov   a,$1ce1+y
1cf1: c5 f8 1c  mov   $1cf8,a
1cf4: eb 3a     mov   y,$3a
1cf6: 5f f6 1c  jmp   $1cf6

1cf9: 2d        push  a				; start song
1cfa: 3f 40 0d  call  $0d40
1cfd: ae        pop   a
1cfe: 92 07     clr4  $07
1d00: 8d 1a     mov   y,#$1a
1d02: 3f 63 10  call  $1063
1d05: da 88     movw  $88,ya
1d07: 8d 00     mov   y,#$00
1d09: f7 88     mov   a,($88)+y
1d0b: c4 83     mov   $83,a
1d0d: c4 84     mov   $84,a
1d0f: f0 13     beq   $1d24
1d11: cb 86     mov   $86,y
1d13: 3f 25 1d  call  $1d25
1d16: ab 86     inc   $86
1d18: e8 00     mov   a,#$00
1d1a: f8 86     mov   x,$86
1d1c: d5 7a 03  mov   $037a+x,a
1d1f: 69 83 86  cmp   ($86),($83)
1d22: d0 ef     bne   $1d13
1d24: 6f        ret

1d25: eb 86     mov   y,$86
1d27: fc        inc   y
1d28: f7 88     mov   a,($88)+y
1d2a: 8d 10     mov   y,#$10
1d2c: 3f 63 10  call  $1063
1d2f: f8 86     mov   x,$86
1d31: d4 8a     mov   $8a+x,a
1d33: dd        mov   a,y
1d34: d4 9e     mov   $9e+x,a
1d36: e8 ff     mov   a,#$ff
1d38: c4 ca     mov   $ca,a
1d3a: c4 0a     mov   $0a,a
1d3c: e8 05     mov   a,#$05
1d3e: d5 4e 02  mov   $024e+x,a
1d41: e8 04     mov   a,#$04
1d43: d5 66 03  mov   $0366+x,a
1d46: 72 07     clr3  $07
1d48: f2 07     clr7  $07
1d4a: f8 86     mov   x,$86
1d4c: e8 08     mov   a,#$08
1d4e: d5 eb 05  mov   $05eb+x,a
1d51: 7d        mov   a,x
1d52: d5 ff 05  mov   $05ff+x,a
1d55: e8 00     mov   a,#$00
1d57: d5 76 02  mov   $0276+x,a
1d5a: d5 c6 02  mov   $02c6+x,a
1d5d: d5 da 02  mov   $02da+x,a
1d60: d5 3b 06  mov   $063b+x,a
1d63: d5 4f 06  mov   $064f+x,a
1d66: d5 ee 02  mov   $02ee+x,a
1d69: d5 02 03  mov   $0302+x,a
1d6c: d5 16 03  mov   $0316+x,a
1d6f: d5 62 02  mov   $0262+x,a
1d72: d5 52 03  mov   $0352+x,a
1d75: d5 3e 03  mov   $033e+x,a
1d78: d5 2a 03  mov   $032a+x,a
1d7b: d5 9e 02  mov   $029e+x,a
1d7e: 9c        dec   a
1d7f: d5 27 06  mov   $0627+x,a
1d82: d5 8a 02  mov   $028a+x,a
1d85: e8 40     mov   a,#$40
1d87: d5 b2 02  mov   $02b2+x,a
1d8a: e8 7f     mov   a,#$7f
1d8c: d5 c3 05  mov   $05c3+x,a
1d8f: c2 07     set6  $07
1d91: 8f 6a 00  mov   $00,#$6a
1d94: 8f 00 01  mov   $01,#$00
1d97: 7d        mov   a,x
1d98: 08 80     or    a,#$80
1d9a: 8d 00     mov   y,#$00
1d9c: 5f dd 1d  jmp   $1ddd

1d9f: c4 59     mov   $59,a
1da1: 6f        ret

1da2: c4 5a     mov   $5a,a
1da4: 6f        ret

1da5: da 5b     movw  $5b,ya
1da7: 6f        ret

1da8: da 2e     movw  $2e,ya
1daa: 6f        ret

1dab: c4 fb     mov   $fb,a
1dad: 6f        ret

1dae: 28 7f     and   a,#$7f
1db0: c5 3e 02  mov   $023e,a
1db3: 6f        ret

1db4: 12 08     clr0  $08
1db6: c5 06 01  mov   $0106,a
1db9: 68 ff     cmp   a,#$ff
1dbb: f0 02     beq   $1dbf
1dbd: 02 08     set0  $08
1dbf: 6f        ret

1dc0: c5 3f 02  mov   $023f,a
1dc3: 6f        ret

1dc4: c5 40 02  mov   $0240,a
1dc7: 6f        ret

1dc8: c5 41 02  mov   $0241,a
1dcb: cc 42 02  mov   $0242,y
1dce: 6f        ret

1dcf: 8f 9a 00  mov   $00,#$9a
1dd2: 8f 03 01  mov   $01,#$03
1dd5: 2f 06     bra   $1ddd

1dd7: 8f 92 00  mov   $00,#$92
1dda: 8f 03 01  mov   $01,#$03
1ddd: c4 3a     mov   $3a,a
1ddf: dd        mov   a,y
1de0: 5d        mov   x,a
1de1: e8 07     mov   a,#$07
1de3: fd        mov   y,a
1de4: f6 cf 00  mov   a,$00cf+y
1de7: 2e 3a 03  cbne  $3a,$1ded
1dea: 7d        mov   a,x
1deb: d7 00     mov   ($00)+y,a
1ded: dc        dec   y
1dee: 10 f4     bpl   $1de4
1df0: 6f        ret

1df1: 28 7f     and   a,#$7f
1df3: c4 3a     mov   $3a,a
1df5: cd 07     mov   x,#$07
1df7: f4 cf     mov   a,$cf+x
1df9: 2e 3a 08  cbne  $3a,$1e04
1dfc: f5 46 02  mov   a,$0246+x
1dff: 08 03     or    a,#$03
1e01: d5 46 02  mov   $0246+x,a
1e04: 1d        dec   x
1e05: 10 f0     bpl   $1df7
1e07: 6f        ret

1e08: 8f d7 00  mov   $00,#$d7
1e0b: 8f 00 01  mov   $01,#$00
1e0e: c4 3a     mov   $3a,a
1e10: e8 0f     mov   a,#$0f
1e12: fd        mov   y,a
1e13: e8 07     mov   a,#$07
1e15: 5d        mov   x,a
1e16: f4 cf     mov   a,$cf+x
1e18: 2e 3a 0a  cbne  $3a,$1e25
1e1b: e4 2f     mov   a,$2f
1e1d: d7 00     mov   ($00)+y,a
1e1f: dc        dec   y
1e20: e4 2e     mov   a,$2e
1e22: d7 00     mov   ($00)+y,a
1e24: fc        inc   y
1e25: dc        dec   y
1e26: dc        dec   y
1e27: 1d        dec   x
1e28: 10 ec     bpl   $1e16
1e2a: 6f        ret

1e2b: 5d        mov   x,a
1e2c: e8 01     mov   a,#$01
1e2e: 15 7a 03  or    a,$037a+x
1e31: d5 7a 03  mov   $037a+x,a
1e34: 6f        ret

1e35: 5d        mov   x,a
1e36: e8 fe     mov   a,#$fe
1e38: 35 7a 03  and   a,$037a+x
1e3b: 2f f4     bra   $1e31

1e3d: dw $1773
1e3e: dw $17a3
1e40: dw $18a5
1e42: dw $183a
1e44: dw $179b
1e46: dw $0cd2
1e48: dw $0d03
1e4a: dw $0d0b
1e4c: dw $0cf7
1e4e: dw $1df1
1e50: dw $0000
1e52: dw $07dd
1e54: dw $0d89
1e56: dw $0ce5
1e58: dw $0cdf
1e5a: dw $0cdb
1e5c: dw $0000
1e5e: dw $0d40
1e60: dw $0d42
1e62: dw $0000
1e64: dw $0000
1e66: dw $0000
1e68: dw $0d8e
1e6a: dw $0d93
1e6c: dw $1d9f
1e6e: dw $1dab
1e70: dw $1da5
1e72: dw $1da2
1e74: dw $1dc8
1e76: dw $1dae
1e78: dw $1dc0
1e7a: dw $1dd7
1e7c: dw $1da8
1e7e: dw $1e08
1e80: dw $1dc4
1e82: dw $1dcf
1e84: dw $1db4
1e86: dw $1e2b
1e88: dw $1e35

; uncompiled source code
1e8b: db $0a,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$62,$72,$61,$20,$54,$4e,$4d,$65,$6c,$0d,$0a,$0d,$0a,$4d,$65,$6c,$6f,$64,$79,$5f,$53,$65,$74,$53,$74,$65,$72,$65,$6f,$41,$72,$74,$0d,$0a,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$63,$61,$6c,$6c,$20,$20,$46,$65,$74,$63,$68,$5f,$4d,$65,$6c,$20