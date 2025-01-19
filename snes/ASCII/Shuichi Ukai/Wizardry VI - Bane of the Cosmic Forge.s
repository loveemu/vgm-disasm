00a2: db $00,$00,$00,$00,$00,$00,$00,$00,$00

00b7: db $50

; instrument table address (element size is 4)
00bc: dw $3300

; fine tuning table address (indexed by SRCN)
00be: dw $3400

; P(L) dsp reg addresses
00c0: db $02,$12,$22,$32,$42,$52,$62,$72

; ADSR(1) dsp reg addresses
00c8: db $05,$15,$25,$35,$45,$55,$65,$75

; VOL(L) dsp reg addresses ($7c+x)
017c: db $00,$10,$20,$30,$40,$50,$60,$70

0184: db $00,$10,$20,$30,$40

; repeat stack offset initialization table ($89+x)
0189: db $00,$03,$06,$09,$0c,$0f,$12,$15,$18,$1b,$1e,$21,$24,$27

0197: db $9f,$03,$ab

019a: db $00
019b: db $00

019c: 5f 49 10  jmp   $1049

03dc: db $00,$00,$00,$00,$00,$00,$00,$00

; pitch table (high-byte)
03e4: db $00,$00,$00,$00,$00,$00,$00,$00
03ec: db $00,$01,$01,$01,$01,$01,$01,$01
03f4: db $01,$01,$01,$01,$01,$02,$02,$02
03fc: db $02,$02,$02,$02,$02,$03,$03,$03
0404: db $03,$04,$04,$04,$04,$05,$05,$05
040c: db $05,$06,$06,$07,$07,$08,$08,$08
0414: db $09,$0a,$0a,$0b,$0b,$0c,$0d,$0e
041c: db $0f,$10,$10,$11,$13,$14,$15,$16
0424: db $17,$19,$1a,$1c,$1e,$20,$21,$23
042c: db $26,$28,$2a,$2d,$2f,$32,$35,$39
0434: db $3c,$40

; pitch table (low-byte)
0436: db $98,$a1,$ab,$b5,$c0,$cb,$d7,$e4
043e: db $f2,$00,$0f,$1f,$30,$43,$56,$6a
0446: db $80,$96,$af,$c8,$e3,$00,$1e,$3f
044e: db $61,$85,$ab,$d4,$ff,$2d,$5d,$90
0456: db $c7,$00,$3d,$7d,$c2,$0a,$57,$a8
045e: db $fe,$59,$ba,$21,$8d,$00,$7a,$fb
0466: db $83,$14,$ae,$50,$fd,$b3,$74,$41
046e: db $1a,$00,$f4,$f6,$07,$29,$5c,$a1
0476: db $f9,$66,$e9,$82,$34,$00,$e7,$eb
047e: db $0e,$51,$b7,$41,$f2,$cc,$d1,$04
0486: db $68,$00

; pitch table is assembled as follows:
; dw $0098
; dw $00a1
; dw $00ab
; dw $00b5
; dw $00c0
; dw $00cb
; dw $00d7
; dw $00e4
; dw $00f2
; dw $0100
; dw $010f
; dw $011f
; dw $0130
; dw $0143
; dw $0156
; dw $016a
; dw $0180
; dw $0196
; dw $01af
; dw $01c8
; dw $01e3
; dw $0200
; dw $021e
; dw $023f
; dw $0261
; dw $0285
; dw $02ab
; dw $02d4
; dw $02ff
; dw $032d
; dw $035d
; dw $0390
; dw $03c7
; dw $0400
; dw $043d
; dw $047d
; dw $04c2
; dw $050a
; dw $0557
; dw $05a8
; dw $05fe
; dw $0659
; dw $06ba
; dw $0721
; dw $078d
; dw $0800
; dw $087a
; dw $08fb
; dw $0983
; dw $0a14
; dw $0aae
; dw $0b50
; dw $0bfd
; dw $0cb3
; dw $0d74
; dw $0e41
; dw $0f1a
; dw $1000
; dw $10f4
; dw $11f6
; dw $1307
; dw $1429
; dw $155c
; dw $16a1
; dw $17f9
; dw $1966
; dw $1ae9
; dw $1c82
; dw $1e34
; dw $2000
; dw $21e7
; dw $23eb
; dw $260e
; dw $2851
; dw $2ab7
; dw $2d41
; dw $2ff2
; dw $32cc
; dw $35d1
; dw $3904
; dw $3c68
; dw $4000

0488: dw $04a8

; panpot - volume balance table
048a: db $80,$80,$7f,$7f,$7d,$7c,$7a,$78
0492: db $76,$73,$70,$6d,$69,$65,$61,$5d
049a: db $58,$54,$4f,$49,$44,$3e,$39,$33
04a2: db $2d,$27,$21,$1a,$13,$0a,$00

04a9: db $80,$80,$7f,$7f
04ad: db $7d,$7c,$7a,$78
04b1: db $76,$73,$70,$6d,$69,$65,$61,$5d
04b9: db $58,$54,$4f,$49,$44,$3e,$39,$33
04c1: db $2d,$27,$21,$1a,$13,$0a,$00

; GAIN dsp reg addresses
04c8: db $07,$17,$27,$37,$47,$57,$67,$77

04d0: db $01,$02,$04,$08,$10,$20,$40,$80

04d8: db $1e,$1c,$1a,$18,$16,$14,$12,$10
04e0: db $0e,$0c,$0a,$08,$06,$04,$02,$00
04e8: db $02,$04,$06,$08,$0a,$0c,$0e,$10
04f0: db $12,$14,$16,$18,$1a,$1c,$1e

; echo filter
04f7: db $0c,$21,$2b,$2b,$f3,$fe,$f3,$f9

0500: 20        clrp
0501: cd ff     mov   x,#$ff
0503: bd        mov   sp,x
0504: 8f fd f4  mov   $f4,#$fd
0507: 8f ff f7  mov   $f7,#$ff
050a: 8f 00 a1  mov   $a1,#$00
050d: 3f 44 08  call  $0844
0510: 8d 6d     mov   y,#$6d
0512: e8 d7     mov   a,#$d7
0514: 3f 20 08  call  $0820             ; set echo address (ESA) to $d700
0517: 8d 7d     mov   y,#$7d
0519: e8 00     mov   a,#$00
051b: 3f 20 08  call  $0820             ; set echo delay (EDL) to 0
051e: cd 0b     mov   x,#$0b
0520: e8 80     mov   a,#$80
0522: c6        mov   (x),a
0523: e8 01     mov   a,#$01
0525: 3f 84 0a  call  $0a84
0528: 1d        dec   x
0529: 10 f5     bpl   $0520
052b: 6e b7 f0  dbnz  $b7,$051e
052e: 8f ff a7  mov   $a7,#$ff
0531: 3f 76 0d  call  $0d76
0534: e4 d2     mov   a,$d2
0536: d0 03     bne   $053b
0538: 3f 52 11  call  $1152             ; clear echo buffer
053b: 8f 00 d2  mov   $d2,#$00
053e: 8d 6c     mov   y,#$6c
0540: e8 3f     mov   a,#$3f
0542: 3f 20 08  call  $0820             ; set FLG
0545: 40        setp
0546: e8 ff     mov   a,#$ff
0548: c4 75     mov   $75,a
054a: c4 76     mov   $76,a
054c: e8 00     mov   a,#$00
054e: c4 74     mov   $74,a
0550: 20        clrp
0551: e8 60     mov   a,#$60
0553: c4 d0     mov   $d0,a
0555: c4 d1     mov   $d1,a
0557: 3f cd 09  call  $09cd
055a: e8 00     mov   a,#$00
055c: 8d 2d     mov   y,#$2d
055e: 3f 20 08  call  $0820             ; set PMON
0561: 8d 3d     mov   y,#$3d
0563: 3f 20 08  call  $0820             ; set NON
0566: c4 9f     mov   $9f,a
0568: c4 a0     mov   $a0,a
056a: c4 9a     mov   $9a,a
056c: 8d 5d     mov   y,#$5d
056e: e8 30     mov   a,#$30
0570: 3f 20 08  call  $0820             ; set DIR ($3000)
0573: e8 14     mov   a,#$14
0575: fd        mov   y,a
0576: da 96     movw  $96,ya
0578: da 98     movw  $98,ya
057a: 8d 10     mov   y,#$10
057c: da b1     movw  $b1,ya
057e: 8f 00 f1  mov   $f1,#$00
0581: 8f 04 fa  mov   $fa,#$04          ; set timer 0 frequency (0.5 ms)
0584: 8f 01 f1  mov   $f1,#$01
0587: 8f 31 f1  mov   $f1,#$31
058a: 8f 00 db  mov   $db,#$00
058d: 8f 00 dc  mov   $dc,#$00
0590: 8f fe f4  mov   $f4,#$fe
0593: 8f 02 9f  mov   $9f,#$02
0596: 3f 18 10  call  $1018
0599: e5 fd 00  mov   a,$00fd
059c: f0 f8     beq   $0596             ; wait for timer 0 clock
059e: 2d        push  a
059f: 64 98     cmp   a,$98
05a1: 10 08     bpl   $05ab
05a3: 80        setc
05a4: c4 b8     mov   $b8,a
05a6: a9 b8 98  sbc   ($98),($b8)
05a9: 2f 08     bra   $05b3
05ab: fa 99 98  mov   ($98),($99)
05ae: cd 0b     mov   x,#$0b
05b0: 3f 25 06  call  $0625
05b3: ae        pop   a
05b4: 64 96     cmp   a,$96
05b6: 10 09     bpl   $05c1
05b8: 80        setc
05b9: c4 b8     mov   $b8,a
05bb: a9 b8 96  sbc   ($96),($b8)
05be: 5f e8 05  jmp   $05e8

05c1: fa 97 96  mov   ($96),($97)
05c4: 73 9f 1c  bbc3  $9f,$05e3
05c7: 6e ae 19  dbnz  $ae,$05e3
05ca: fa af ae  mov   ($ae),($af)
05cd: 53 9f 0d  bbc2  $9f,$05dd
05d0: ab ad     inc   $ad
05d2: 78 1b ad  cmp   $ad,#$1b
05d5: d0 0c     bne   $05e3
05d7: 8f 02 9f  mov   $9f,#$02
05da: 3f de 0f  call  $0fde
05dd: 6e ad 03  dbnz  $ad,$05e3
05e0: 38 f7 9f  and   $9f,#$f7
05e3: cd 07     mov   x,#$07
05e5: 3f 25 06  call  $0625
05e8: f3 a0 37  bbc7  $a0,$0622
05eb: 6e 9c 34  dbnz  $9c,$0622
05ee: d3 a0 1f  bbc6  $a0,$0610
05f1: 38 7f a0  and   $a0,#$7f
05f4: 8d 4d     mov   y,#$4d
05f6: e4 a3     mov   a,$a3
05f8: 3f 20 08  call  $0820             ; set EON
05fb: 3f 90 0d  call  $0d90
05fe: 8d 2c     mov   y,#$2c
0600: e5 9a 01  mov   a,$019a
0603: 3f 20 08  call  $0820             ; set EVOL(L)
0606: 8d 3c     mov   y,#$3c
0608: e5 9b 01  mov   a,$019b
060b: 3f 20 08  call  $0820             ; set EVOL(R)
060e: 2f 12     bra   $0622
0610: 8f 01 9c  mov   $9c,#$01
0613: 38 df a0  and   $a0,#$df
0616: 18 c0 a0  or    $a0,#$c0
0619: 8d 6c     mov   y,#$6c
061b: e4 a8     mov   a,$a8
061d: 28 1f     and   a,#$1f
061f: 3f 20 08  call  $0820             ; set FLG
0622: 5f 96 05  jmp   $0596

0625: d8 ab     mov   $ab,x             ; channel index (0-7)
0627: f5 00 02  mov   a,$0200+x         ; read voice pointer (low)
062a: fb 0c     mov   y,$0c+x           ; read voice pointer (high)
062c: da 8c     movw  $8c,ya
062e: f5 30 02  mov   a,$0230+x
0631: fb 24     mov   y,$24+x
0633: da 90     movw  $90,ya
0635: e6        mov   a,(x)
0636: c4 9d     mov   $9d,a
0638: 10 03     bpl   $063d
063a: 5f cf 07  jmp   $07cf

063d: 5c        lsr   a
063e: ca a0 00  mov1  $00a0,0,c
0641: 7d        mov   a,x
0642: 28 07     and   a,#$07
0644: c4 ac     mov   $ac,a
0646: 5d        mov   x,a
0647: fb d3     mov   y,$d3+x
0649: f5 d0 04  mov   a,$04d0+x
064c: da 8e     movw  $8e,ya
064e: 03 a0 32  bbs0  $a0,$0683
0651: f5 a8 02  mov   a,$02a8+x
0654: fb 84     mov   y,$84+x
0656: da 94     movw  $94,ya
0658: f8 ab     mov   x,$ab
065a: 93 9d 26  bbc4  $9d,$0683
065d: 9b 48     dec   $48+x
065f: d0 22     bne   $0683
0661: f4 54     mov   a,$54+x
0663: d4 48     mov   $48+x,a
0665: 8d 00     mov   y,#$00
0667: f5 6c 02  mov   a,$026c+x
066a: 10 01     bpl   $066d
066c: dc        dec   y
066d: 7a 94     addw  ya,$94
066f: da 94     movw  $94,ya
0671: 9b 60     dec   $60+x
0673: d0 0e     bne   $0683
0675: f5 78 02  mov   a,$0278+x
0678: d4 60     mov   $60+x,a
067a: f5 6c 02  mov   a,$026c+x
067d: 48 ff     eor   a,#$ff
067f: bc        inc   a
0680: d5 6c 02  mov   $026c+x,a
0683: 73 9d 17  bbc3  $9d,$069d
0686: 9b 3c     dec   $3c+x
0688: d0 13     bne   $069d
068a: f5 9c 02  mov   a,$029c+x
068d: d4 3c     mov   $3c+x,a
068f: 40        setp
0690: f4 18     mov   a,$18+x
0692: 60        clrc
0693: 86        adc   a,(x)
0694: c6        mov   (x),a
0695: 9b 24     dec   $24+x             ; decrease delta time
0697: 20        clrp
0698: d0 03     bne   $069d
069a: 38 f7 9d  and   $9d,#$f7          ; clear bit 3
069d: b3 9d 2a  bbc5  $9d,$06ca
06a0: 9b 30     dec   $30+x
06a2: d0 26     bne   $06ca
06a4: f5 84 02  mov   a,$0284+x
06a7: d4 30     mov   $30+x,a
06a9: 40        setp
06aa: 5b 30     lsr   $30+x
06ac: b0 05     bcs   $06b3
06ae: bb 0c     inc   $0c+x
06b0: 5f b5 06  jmp   $06b5

06b3: 9b 0c     dec   $0c+x
06b5: 9b 30     dec   $30+x
06b7: d0 0e     bne   $06c7
06b9: f5 90 02  mov   a,$0290+x
06bc: d0 06     bne   $06c4
06be: 20        clrp
06bf: 38 df 9d  and   $9d,#$df
06c2: 2f 05     bra   $06c9
06c4: d4 30     mov   $30+x,a
06c6: ed        notc
06c7: 3b 30     rol   $30+x
06c9: 20        clrp
06ca: 03 a0 79  bbs0  $a0,$0746
06cd: f8 ab     mov   x,$ab
06cf: f5 54 02  mov   a,$0254+x
06d2: fb 78     mov   y,$78+x
06d4: da 92     movw  $92,ya
06d6: f8 ac     mov   x,$ac
06d8: e4 a5     mov   a,$a5
06da: 24 8e     and   a,$8e
06dc: f0 3c     beq   $071a
06de: f5 b0 02  mov   a,$02b0+x
06e1: f0 07     beq   $06ea
06e3: 9c        dec   a
06e4: d5 b0 02  mov   $02b0+x,a
06e7: 5f 1a 07  jmp   $071a

06ea: f5 b8 02  mov   a,$02b8+x
06ed: c4 b3     mov   $b3,a
06ef: f5 c0 02  mov   a,$02c0+x
06f2: f0 06     beq   $06fa
06f4: 9c        dec   a
06f5: d5 c0 02  mov   $02c0+x,a
06f8: ab b3     inc   $b3
06fa: 8d 00     mov   y,#$00
06fc: e4 9e     mov   a,$9e
06fe: 24 8e     and   a,$8e
0700: f0 06     beq   $0708
0702: dc        dec   y
0703: 58 ff b3  eor   $b3,#$ff
0706: ab b3     inc   $b3
0708: e4 b3     mov   a,$b3
070a: 7a 94     addw  ya,$94
070c: da 94     movw  $94,ya
070e: f5 c8 02  mov   a,$02c8+x
0711: 9c        dec   a
0712: d0 03     bne   $0717
0714: 29 8f a5  and   ($a5),($8f)
0717: d5 c8 02  mov   $02c8+x,a
071a: f8 ac     mov   x,$ac
071c: 78 04 91  cmp   $91,#$04
071f: 10 0d     bpl   $072e
0721: 43 9d 0a  bbs2  $9d,$072e
0724: 8d 9f     mov   y,#$9f
0726: 3f 06 09  call  $0906
0729: 6e 91 2f  dbnz  $91,$075b
072c: 2f 03     bra   $0731
072e: 6e 91 1e  dbnz  $91,$074f
0731: fb c8     mov   y,$c8+x
0733: f5 d8 02  mov   a,$02d8+x
0736: 3f 20 08  call  $0820             ; set ADSR(1)
0739: f8 ab     mov   x,$ab
073b: e8 00     mov   a,#$00
073d: d5 3c 01  mov   $013c+x,a
0740: 3f 15 0c  call  $0c15             ; dispatch next vcmd
0743: 5f 5b 07  jmp   $075b

0746: 6e 91 03  dbnz  $91,$074c
0749: 3f 15 0c  call  $0c15             ; dispatch next vcmd
074c: 5f cf 07  jmp   $07cf

074f: 6e 93 09  dbnz  $93,$075b
0752: f8 ab     mov   x,$ab
0754: fb 6c     mov   y,$6c+x
0756: f8 ac     mov   x,$ac
0758: 3f 06 09  call  $0906
075b: f8 ac     mov   x,$ac
075d: e4 a4     mov   a,$a4
075f: 24 8e     and   a,$8e
0761: f0 14     beq   $0777
0763: f5 dc 03  mov   a,$03dc+x
0766: 28 1f     and   a,#$1f
0768: c4 a8     mov   $a8,a
076a: b3 a0 02  bbc5  $a0,$076f
076d: 08 20     or    a,#$20
076f: 8d 6c     mov   y,#$6c
0771: 3f 20 08  call  $0820             ; set FLG
0774: 5f 88 07  jmp   $0788

0777: fb c0     mov   y,$c0+x
0779: e4 94     mov   a,$94
077b: d5 a8 02  mov   $02a8+x,a
077e: 3f 20 08  call  $0820             ; set P(L)
0781: e4 95     mov   a,$95
0783: d4 84     mov   $84+x,a
0785: 3f 1f 08  call  $081f             ; set P(H)
0788: f8 ab     mov   x,$ab
078a: 40        setp
078b: e6        mov   a,(x)             ; ($0100+x) base volume
078c: 60        clrc
078d: 94 3c     adc   a,$3c+x           ; ($013c+x) volume adjustment
078f: c4 7a     mov   $7a,a
0791: 20        clrp
0792: d3 9d 06  bbc6  $9d,$079b
;
0795: eb b0     mov   y,$b0
0797: cf        mul   ya
0798: cc 7a 01  mov   $017a,y
;
079b: 73 9f 10  bbc3  $9f,$07ae
079e: 63 ab 0d  bbs3  $ab,$07ae
;
07a1: 40        setp
07a2: ec ad 00  mov   y,$00ad
07a5: f6 ad 04  mov   a,$04ad+y
07a8: 1c        asl   a
07a9: eb 7a     mov   y,$7a
07ab: cf        mul   ya
07ac: cb 7a     mov   $7a,y
;
07ae: 40        setp
07af: fb 0c     mov   y,$0c+x           ; ($010c+x) pan
07b1: f6 8a 04  mov   a,$048a+y
07b4: eb 7a     mov   y,$7a
07b6: cf        mul   ya
07b7: f4 7c     mov   a,$7c+x           ; read dsp reg address from $017c+x
07b9: 3f 2b 08  call  $082b             ; set VOL(L)
07bc: e8 1e     mov   a,#$1e
07be: 80        setc
07bf: b4 0c     sbc   a,$0c+x           ; ($010c+x) pan, calculates (30 - pan)
07c1: fd        mov   y,a
07c2: f6 8a 04  mov   a,$048a+y
07c5: eb 7a     mov   y,$7a
07c7: cf        mul   ya
07c8: f4 7c     mov   a,$7c+x           ; read dsp reg address from $017c+x
07ca: bc        inc   a
07cb: 20        clrp
07cc: 3f 2b 08  call  $082b             ; set VOL(R)
07cf: f8 ab     mov   x,$ab
07d1: ba 92     movw  ya,$92
07d3: d5 54 02  mov   $0254+x,a
07d6: db 78     mov   $78+x,y           ; update note length (key-off timer)
07d8: ba 90     movw  ya,$90
07da: d5 30 02  mov   $0230+x,a
07dd: db 24     mov   $24+x,y
07df: e4 9d     mov   a,$9d
07e1: c6        mov   (x),a
07e2: 38 07 ab  and   $ab,#$07
07e5: f0 04     beq   $07eb
07e7: 1d        dec   x
07e8: 5f 25 06  jmp   $0625

07eb: e4 a6     mov   a,$a6
07ed: f0 08     beq   $07f7
07ef: 8d 4c     mov   y,#$4c
07f1: 3f 20 08  call  $0820             ; set KON
07f4: 8f 00 a6  mov   $a6,#$00
07f7: e4 a7     mov   a,$a7
07f9: f0 14     beq   $080f
07fb: 8d 5c     mov   y,#$5c
07fd: 3f 20 08  call  $0820             ; set KOF
0800: 4e a2 00  tclr1 $00a2
0803: 8d 06     mov   y,#$06
0805: fe fe     dbnz  y,$0805
0807: e8 5c     mov   a,#$5c
0809: 3f 2b 08  call  $082b             ; set KOF
080c: 8f 00 a7  mov   $a7,#$00
080f: 6f        ret

0810: cd 07     mov   x,#$07
0812: 2b b3     rol   $b3
0814: 3b 00     rol   $00+x
0816: e4 b3     mov   a,$b3
0818: 7c        ror   a
0819: 7b 00     ror   $00+x
081b: 1d        dec   x
081c: 10 f6     bpl   $0814
081e: 6f        ret

; set A to dsp reg Y+1
081f: fc        inc   y
; set A to dsp reg Y
0820: cc f2 00  mov   $00f2,y
0823: 00        nop
0824: 00        nop
0825: 00        nop
0826: 00        nop
0827: c5 f3 00  mov   $00f3,a
082a: 6f        ret

; set Y to dsp reg A
082b: c5 f2 00  mov   $00f2,a
082e: 00        nop
082f: 00        nop
0830: 00        nop
0831: 00        nop
0832: cc f3 00  mov   $00f3,y
0835: 6f        ret

0836: 43 9d 07  bbs2  $9d,$0840
0839: 09 8e a6  or    ($a6),($8e)
083c: 09 8e a2  or    ($a2),($8e)
083f: 6f        ret

0840: 38 fb 9d  and   $9d,#$fb
0843: 6f        ret

0844: fa a1 b3  mov   ($b3),($a1)
0847: cd 07     mov   x,#$07
0849: 0b b3     asl   $b3
084b: b0 0f     bcs   $085c
084d: f5 c8 04  mov   a,$04c8+x
0850: 8d 9f     mov   y,#$9f
0852: 3f 2b 08  call  $082b             ; set GAIN
0855: f4 c8     mov   a,$c8+x
0857: 8d 00     mov   y,#$00
0859: 3f 2b 08  call  $082b             ; set ADSR(1)
085c: 1d        dec   x
085d: 10 ea     bpl   $0849
085f: 6f        ret

; vcmd 8a
0860: f8 ab     mov   x,$ab
0862: db 6c     mov   $6c+x,y
0864: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd a1
0867: 90 06     bcc   $086f
0869: 29 8f aa  and   ($aa),($8f)
086c: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

086f: e8 ff     mov   a,#$ff
0871: f8 ab     mov   x,$ab
0873: d5 dc 03  mov   $03dc+x,a
0876: 29 8f a4  and   ($a4),($8f)
0879: 5f 8e 08  jmp   $088e

; vcmd a0
087c: 90 06     bcc   $0884
087e: 09 8e aa  or    ($aa),($8e)
0881: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

0884: e8 ff     mov   a,#$ff
0886: f8 ab     mov   x,$ab
0888: d5 dc 03  mov   $03dc+x,a
088b: 09 8e a4  or    ($a4),($8e)
088e: 8d 3d     mov   y,#$3d
0890: e4 a4     mov   a,$a4
0892: 3f 20 08  call  $0820             ; set NON
0895: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; calculate pitch from note number in A
0898: fd        mov   y,a               ; note number
0899: f6 36 04  mov   a,$0436+y         ; read pitch table (low-byte)
089c: c4 ba     mov   $ba,a
089e: f6 e4 03  mov   a,$03e4+y         ; read pitch table (high-byte)
08a1: c4 bb     mov   $bb,a
08a3: eb ab     mov   y,$ab
08a5: 60        clrc
08a6: f6 3c 02  mov   a,$023c+y
08a9: 8f 00 b6  mov   $b6,#$00
08ac: 95 d0 02  adc   a,$02d0+x
08af: 10 05     bpl   $08b6
08b1: 48 ff     eor   a,#$ff
08b3: bc        inc   a
08b4: ab b6     inc   $b6
08b6: eb bb     mov   y,$bb
08b8: cf        mul   ya
08b9: 60        clrc
08ba: 88 08     adc   a,#$08
08bc: 90 01     bcc   $08bf
08be: fc        inc   y
08bf: cb b9     mov   $b9,y
08c1: 4b b9     lsr   $b9
08c3: 7c        ror   a
08c4: 4b b9     lsr   $b9
08c6: 7c        ror   a
08c7: 4b b9     lsr   $b9
08c9: 7c        ror   a
08ca: 4b b9     lsr   $b9
08cc: 7c        ror   a
08cd: c4 b8     mov   $b8,a
08cf: ba ba     movw  ya,$ba
08d1: 13 b6 03  bbc0  $b6,$08d7
08d4: 9a b8     subw  ya,$b8
08d6: 6f        ret

08d7: 7a b8     addw  ya,$b8
08d9: 6f        ret

; vcmd 9f
08da: f8 ac     mov   x,$ac
08dc: 38 fb 9d  and   $9d,#$fb
08df: dd        mov   a,y               ; arg1
08e0: 10 0b     bpl   $08ed
08e2: b0 03     bcs   $08e7
08e4: 3f fd 08  call  $08fd             ; set GAIN/ADSR(1)
08e7: fa 90 91  mov   ($91),($90)
08ea: 5f 6c 0d  jmp   $0d6c
;
08ed: da 90     movw  $90,ya
08ef: b0 09     bcs   $08fa
08f1: 23 9d 03  bbs1  $9d,$08f7
08f4: 3f c3 09  call  $09c3
08f7: 3f fd 08  call  $08fd             ; set GAIN/ADSR(1)
08fa: 5f 6a 0d  jmp   $0d6a

08fd: 8f 00 93  mov   $93,#$00
0900: f8 ab     mov   x,$ab
0902: fb 6c     mov   y,$6c+x
0904: f8 ac     mov   x,$ac
0906: f5 c8 04  mov   a,$04c8+x
0909: 3f 2b 08  call  $082b             ; set GAIN
090c: fb c8     mov   y,$c8+x
090e: f5 d8 02  mov   a,$02d8+x
0911: 28 7f     and   a,#$7f
0913: 3f 20 08  call  $0820             ; set ADSR(1)
0916: 6f        ret

; vcmd a4
0917: f8 ab     mov   x,$ab
0919: dd        mov   a,y
091a: d5 18 02  mov   $0218+x,a
091d: b0 03     bcs   $0922
091f: 3f 4f 09  call  $094f
0922: f8 ab     mov   x,$ab
0924: 38 d7 9d  and   $9d,#$d7
0927: 8d 00     mov   y,#$00
0929: 3a 8c     incw  $8c
092b: f7 8c     mov   a,($8c)+y
092d: d5 00 01  mov   $0100+x,a
0930: 3a 8c     incw  $8c
0932: f7 8c     mov   a,($8c)+y
0934: d5 0c 01  mov   $010c+x,a
0937: 3a 8c     incw  $8c
0939: f7 8c     mov   a,($8c)+y
093b: d5 24 02  mov   $0224+x,a
093e: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 89 - instrument
0941: f8 ab     mov   x,$ab
0943: dd        mov   a,y               ; arg1: instrument
0944: d5 18 02  mov   $0218+x,a         ; save instrument number
0947: b0 03     bcs   $094c
0949: 3f 4f 09  call  $094f             ; load instrument
094c: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; load instrument
094f: f8 ac     mov   x,$ac
0951: 1c        asl   a
0952: 1c        asl   a
0953: c4 b3     mov   $b3,a
0955: fd        mov   y,a
0956: f4 c8     mov   a,$c8+x           ; read ADSR(1) reg address
0958: c4 b7     mov   $b7,a
095a: f7 bc     mov   a,($bc)+y         ; ($bc) offset 0: SRCN
095c: eb b7     mov   y,$b7
095e: dc        dec   y
095f: 3f 20 08  call  $0820             ; set SRCN
0962: fd        mov   y,a
0963: f7 be     mov   a,($be)+y         ; ($be) fine tuning (signed)
0965: d5 d0 02  mov   $02d0+x,a
0968: ab b3     inc   $b3
096a: eb b3     mov   y,$b3
096c: f7 bc     mov   a,($bc)+y         ; ($bc) offset 1: ADSR(1)
096e: d5 d8 02  mov   $02d8+x,a
0971: eb b7     mov   y,$b7
0973: 3f 20 08  call  $0820             ; set ADSR(1)
0976: ab b3     inc   $b3
0978: eb b3     mov   y,$b3
097a: f7 bc     mov   a,($bc)+y         ; ($bc) offset 2: ADSR(2)
097c: eb b7     mov   y,$b7
097e: 3f 1f 08  call  $081f             ; set ADSR(2)
0981: eb b3     mov   y,$b3
0983: fc        inc   y
0984: f7 bc     mov   a,($bc)+y         ; ($bc) offset 3: ?
0986: f8 ab     mov   x,$ab
0988: d4 6c     mov   $6c+x,a
098a: 6f        ret

; vcmd 8c - transpose (absolute)
098b: f8 ab     mov   x,$ab
098d: e8 00     mov   a,#$00
098f: d5 24 02  mov   $0224+x,a
; vcmd 8d - transpose (relative)
0992: f8 ab     mov   x,$ab
0994: dd        mov   a,y
0995: 60        clrc
0996: 95 24 02  adc   a,$0224+x         ; arg1: transpose (signed 8-bit)
0999: d5 24 02  mov   $0224+x,a         ; update transpose
099c: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 8e
099f: f8 ab     mov   x,$ab
09a1: dd        mov   a,y
09a2: d5 3c 02  mov   $023c+x,a
09a5: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 90 - quantize (duration rate)
09a8: 38 fd 9d  and   $9d,#$fd
09ab: f8 ab     mov   x,$ab
09ad: dd        mov   a,y               ; arg1: quantize (note duration rate) (unsigned 8-bit)
09ae: d5 48 02  mov   $0248+x,a         ; set quantize (0 is full-length, 1 is the shortest)
09b1: b0 05     bcs   $09b8
09b3: e4 90     mov   a,$90
09b5: 3f c3 09  call  $09c3
09b8: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd a5
09bb: 18 02 9d  or    $9d,#$02
09be: cb 92     mov   $92,y
09c0: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

09c3: fd        mov   y,a
09c4: f5 48 02  mov   a,$0248+x
09c7: f0 01     beq   $09ca
09c9: cf        mul   ya
09ca: cb 92     mov   $92,y
09cc: 6f        ret

09cd: e8 0c     mov   a,#$0c
09cf: eb d0     mov   y,$d0
09d1: 3f 2b 08  call  $082b             ; set MVOL(L)
09d4: e8 1c     mov   a,#$1c
09d6: eb d1     mov   y,$d1
09d8: 3f 2b 08  call  $082b             ; set MVOL(R)
09db: 6f        ret

; vcmd a3
09dc: dd        mov   a,y
09dd: 3f f9 0f  call  $0ff9
09e0: fa ff b0  mov   ($b0),($ff)
09e3: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd a6
09e6: cc f6 00  mov   $00f6,y
09e9: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 92 - volume & pan
09ec: f8 ab     mov   x,$ab
09ee: 38 d7 9d  and   $9d,#$d7
09f1: 3f b9 0a  call  $0ab9             ; read arg1/2
09f4: 40        setp
09f5: c6        mov   (x),a             ; arg1: volume (unsigned 8-bit) (set to $0100+x)
09f6: db 0c     mov   $0c+x,y           ; arg2: pan (must be 0..30) (set to $010c+x)
09f8: 20        clrp
09f9: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 93
09fc: f8 ab     mov   x,$ab
09fe: e8 00     mov   a,#$00
0a00: d5 00 01  mov   $0100+x,a
; vcmd 94
0a03: f8 ab     mov   x,$ab
0a05: 38 f7 9d  and   $9d,#$f7
0a08: dd        mov   a,y
0a09: 40        setp
0a0a: 60        clrc
0a0b: 94 00     adc   a,$00+x
0a0d: d4 00     mov   $00+x,a
0a0f: 20        clrp
0a10: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 96
0a13: f8 ab     mov   x,$ab
0a15: 38 df 9d  and   $9d,#$df
0a18: 40        setp
0a19: db 0c     mov   $0c+x,y
0a1b: 20        clrp
0a1c: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 95
0a1f: f8 ab     mov   x,$ab
0a21: b0 04     bcs   $0a27
0a23: dd        mov   a,y
0a24: d5 3c 01  mov   $013c+x,a         ; arg1
0a27: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 98
0a2a: f8 ab     mov   x,$ab
0a2c: 18 20 9d  or    $9d,#$20
0a2f: 3a 8c     incw  $8c
0a31: dd        mov   a,y
0a32: bc        inc   a
0a33: d5 84 02  mov   $0284+x,a
0a36: c4 b8     mov   $b8,a
0a38: 3f b9 0a  call  $0ab9             ; read arg (2 bytes possible)
0a3b: 60        clrc
0a3c: 84 b8     adc   a,$b8
0a3e: d4 30     mov   $30+x,a
0a40: dd        mov   a,y
0a41: 5c        lsr   a
0a42: 80        setc
0a43: b5 0c 01  sbc   a,$010c+x
0a46: 60        clrc
0a47: 10 04     bpl   $0a4d
0a49: 48 ff     eor   a,#$ff
0a4b: bc        inc   a
0a4c: 80        setc
0a4d: 3c        rol   a
0a4e: d5 30 01  mov   $0130+x,a
0a51: dd        mov   a,y
0a52: 5c        lsr   a
0a53: b0 0a     bcs   $0a5f
0a55: fd        mov   y,a
0a56: f6 d8 04  mov   a,$04d8+y
0a59: d5 90 02  mov   $0290+x,a
0a5c: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

0a5f: e8 00     mov   a,#$00
0a61: 2f f6     bra   $0a59

; vcmd 99
0a63: f8 ab     mov   x,$ab
0a65: 18 08 9d  or    $9d,#$08
0a68: 3f b9 0a  call  $0ab9             ; read arg (2 bytes possible)
0a6b: c4 b8     mov   $b8,a
0a6d: dd        mov   a,y
0a6e: d5 9c 02  mov   $029c+x,a
0a71: 60        clrc
0a72: 84 b8     adc   a,$b8
0a74: d4 3c     mov   $3c+x,a
0a76: 3a 8c     incw  $8c
0a78: 3f b9 0a  call  $0ab9             ; read arg (2 bytes possible)
0a7b: 40        setp
0a7c: d4 18     mov   $18+x,a
0a7e: db 24     mov   $24+x,y
0a80: 20        clrp
0a81: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

0a84: 40        setp
0a85: fd        mov   y,a
0a86: f0 15     beq   $0a9d
0a88: f6 87 04  mov   a,$0487+y
0a8b: c4 7a     mov   $7a,a
0a8d: f6 88 04  mov   a,$0488+y
0a90: c4 7b     mov   $7b,a
0a92: 8d 1f     mov   y,#$1f
0a94: f7 7a     mov   a,($7a)+y
0a96: d6 89 04  mov   $0489+y,a
0a99: fe f9     dbnz  y,$0a94
0a9b: 20        clrp
0a9c: 6f        ret

0a9d: 8d 1f     mov   y,#$1f
0a9f: e8 56     mov   a,#$56
0aa1: d6 89 04  mov   $0489+y,a
0aa4: fe fb     dbnz  y,$0aa1
0aa6: 20        clrp
0aa7: 6f        ret

; vcmd 8b - tempo
0aa8: cb b1     mov   $b1,y             ; arg1: tempo
0aaa: 3f b0 0a  call  $0ab0
0aad: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

0ab0: ba b1     movw  ya,$b1
0ab2: cf        mul   ya
0ab3: cd 10     mov   x,#$10
0ab5: 9e        div   ya,x
0ab6: c4 97     mov   $97,a             ; update actual tempo
0ab8: 6f        ret

; read word from voice pointer to YA
0ab9: 8d 00     mov   y,#$00
0abb: f7 8c     mov   a,($8c)+y
0abd: c4 b3     mov   $b3,a
0abf: 3a 8c     incw  $8c
0ac1: f7 8c     mov   a,($8c)+y
0ac3: fd        mov   y,a
0ac4: e4 b3     mov   a,$b3
0ac6: 6f        ret

; vcmd 80
0ac7: 63 ab 08  bbs3  $ab,$0ad2
0aca: 18 80 9d  or    $9d,#$80
0acd: 1a 8c     decw  $8c
0acf: 5f 6c 0d  jmp   $0d6c

0ad2: e8 97     mov   a,#$97
0ad4: 8d 01     mov   y,#$01
0ad6: 5f 0e 0c  jmp   $0c0e             ; set voice pointer to $0197

; vcmd ff
0ad9: 18 80 9d  or    $9d,#$80
0adc: f8 ac     mov   x,$ac
0ade: e8 fe     mov   a,#$fe
0ae0: 26        and   a,(x)
0ae1: c6        mov   (x),a
0ae2: 28 02     and   a,#$02
0ae4: d0 0a     bne   $0af0
0ae6: f5 30 02  mov   a,$0230+x
0ae9: 3f c3 09  call  $09c3
0aec: dd        mov   a,y
0aed: d5 54 02  mov   $0254+x,a
0af0: f5 18 02  mov   a,$0218+x
0af3: 3f 4f 09  call  $094f
0af6: f8 ac     mov   x,$ac
0af8: d4 6c     mov   $6c+x,a
0afa: e8 ff     mov   a,#$ff
0afc: d5 dc 03  mov   $03dc+x,a
0aff: 29 8f a5  and   ($a5),($8f)
0b02: e4 a9     mov   a,$a9
0b04: 24 8e     and   a,$8e
0b06: 29 8f a3  and   ($a3),($8f)
0b09: 04 a3     or    a,$a3
0b0b: c4 a3     mov   $a3,a
0b0d: 8d 4d     mov   y,#$4d
0b0f: 3f 20 08  call  $0820             ; set EON
0b12: e4 aa     mov   a,$aa
0b14: 24 8e     and   a,$8e
0b16: 29 8f a4  and   ($a4),($8f)
0b19: 04 a4     or    a,$a4
0b1b: c4 a4     mov   $a4,a
0b1d: 8d 3d     mov   y,#$3d
0b1f: 3f 20 08  call  $0820             ; set NON
0b22: 29 8f a2  and   ($a2),($8f)
0b25: c8 00     cmp   x,#$00
0b27: f0 03     beq   $0b2c
0b29: 3f 20 11  call  $1120
0b2c: 29 8f a1  and   ($a1),($8f)
0b2f: 5f 6c 0d  jmp   $0d6c

; vcmd 88
0b32: 18 02 9f  or    $9f,#$02
0b35: 38 fe 9f  and   $9f,#$fe
0b38: 3f de 0f  call  $0fde
0b3b: 5f 6c 0d  jmp   $0d6c

; vcmd 81 - start loop (infinite)
0b3e: f8 ab     mov   x,$ab
0b40: ba 8c     movw  ya,$8c
0b42: d5 0c 02  mov   $020c+x,a         ; save voice pointer (low)
0b45: db 18     mov   $18+x,y           ; save voice pointer (high)
0b47: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; vcmd 82 - end loop (infinite)
0b4a: f8 ab     mov   x,$ab
0b4c: fb 18     mov   y,$18+x
0b4e: f5 0c 02  mov   a,$020c+x
0b51: 5f 0e 0c  jmp   $0c0e             ; goto

; vcmd 83 - (related to contidional jump?)
0b54: f8 ab     mov   x,$ab
0b56: ba 8c     movw  ya,$8c
0b58: 40        setp
0b59: cb 79     mov   $79,y
0b5b: fb 48     mov   y,$48+x           ; read stack offset from $0148+x
0b5d: d6 e0 02  mov   $02e0+y,a         ; save voice pointer (low)
0b60: e4 79     mov   a,$79
0b62: d6 04 03  mov   $0304+y,a         ; save voice pointer (high)
0b65: bb 48     inc   $48+x             ; increase stack offset
0b67: 20        clrp
0b68: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; vcmd 85 - (contidional jump?)
0b6b: cd 9a     mov   x,#$9a
0b6d: 73 ab 01  bbc3  $ab,$0b71
0b70: 3d        inc   x
0b71: d8 b6     mov   $b6,x
0b73: e6        mov   a,(x)
0b74: 04 8e     or    a,$8e
0b76: 66        cmp   a,(x)
0b77: f0 04     beq   $0b7d
;
0b79: c6        mov   (x),a
0b7a: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd
;
0b7d: f8 ab     mov   x,$ab
0b7f: 40        setp
0b80: fb 54     mov   y,$54+x
0b82: f6 6f 03  mov   a,$036f+y         ; read repeat counter
0b85: 9c        dec   a                 ; decrease
0b86: f0 04     beq   $0b8c
; when not last iteration
0b88: 20        clrp
0b89: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd
; when last iteration
0b8c: 9b 54     dec   $54+x
0b8e: 9b 48     dec   $48+x             ; decrease the stack levels
0b90: fb 54     mov   y,$54+x
0b92: 20        clrp
0b93: f6 28 03  mov   a,$0328+y
0b96: c4 8c     mov   $8c,a
0b98: f6 4c 03  mov   a,$034c+y
0b9b: c4 8d     mov   $8d,a
0b9d: f8 b6     mov   x,$b6
0b9f: e4 8f     mov   a,$8f
0ba1: 26        and   a,(x)
0ba2: c6        mov   (x),a
0ba3: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; vcmd 84 - (contidional jump?)
0ba6: f8 ab     mov   x,$ab
0ba8: 3a 8c     incw  $8c
0baa: 40        setp
0bab: cb 79     mov   $79,y
0bad: f4 54     mov   a,$54+x           ; read stack offset
0baf: 74 89     cmp   a,$89+x
0bb1: f0 15     beq   $0bc8             ; skip if no jump address is stored
;
0bb3: fb 54     mov   y,$54+x
0bb5: dc        dec   y
0bb6: f6 28 03  mov   a,$0328+y
0bb9: c4 7a     mov   $7a,a
0bbb: f6 4c 03  mov   a,$034c+y
0bbe: c4 7b     mov   $7b,a
0bc0: 20        clrp
0bc1: ba 8c     movw  ya,$8c
0bc3: 40        setp
0bc4: 5a 7a     cmpw  ya,$7a
0bc6: f0 21     beq   $0be9
;
0bc8: e4 79     mov   a,$79
0bca: 9c        dec   a
0bcb: d0 06     bne   $0bd3
0bcd: 9b 48     dec   $48+x
0bcf: 20        clrp
0bd0: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

0bd3: fb 54     mov   y,$54+x
0bd5: d6 70 03  mov   $0370+y,a
0bd8: e5 8c 00  mov   a,$008c
0bdb: d6 28 03  mov   $0328+y,a
0bde: e5 8d 00  mov   a,$008d
0be1: d6 4c 03  mov   $034c+y,a
0be4: bb 54     inc   $54+x
0be6: 5f fe 0b  jmp   $0bfe

0be9: fb 54     mov   y,$54+x
0beb: f6 6f 03  mov   a,$036f+y
0bee: 9c        dec   a
0bef: d0 08     bne   $0bf9
0bf1: 9b 48     dec   $48+x
0bf3: 9b 54     dec   $54+x
0bf5: 20        clrp
0bf6: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

0bf9: fb 54     mov   y,$54+x
0bfb: d6 6f 03  mov   $036f+y,a
0bfe: fb 48     mov   y,$48+x
0c00: 20        clrp
0c01: f6 df 02  mov   a,$02df+y
0c04: c4 8c     mov   $8c,a
0c06: f6 03 03  mov   a,$0303+y
0c09: c4 8d     mov   $8d,a
0c0b: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; set voice pointer to YA (goto)
0c0e: da 8c     movw  $8c,ya
0c10: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; increase voice pointer
0c13: 3a 8c     incw  $8c
; read next vcmd
0c15: 8d 00     mov   y,#$00
0c17: f7 8c     mov   a,($8c)+y         ; read vcmd
0c19: c4 b3     mov   $b3,a             ; save vcmd
0c1b: 3a 8c     incw  $8c
0c1d: f7 8c     mov   a,($8c)+y         ; read first argument
0c1f: fd        mov   y,a               ;   to Y
0c20: e4 b3     mov   a,$b3
0c22: 80        setc
0c23: a8 ac     sbc   a,#$ac
0c25: 10 0b     bpl   $0c32             ; branch if $ac-ff
0c27: 60        clrc
0c28: 88 2c     adc   a,#$2c            ; (vcmd 80-ab) $d4-ff => $00-2b
0c2a: 1c        asl   a
0c2b: 5d        mov   x,a
0c2c: aa a0 00  mov1  c,$00a0,0
0c2f: 1f 6d 11  jmp   ($116d+x)

; vcmd ac-ff
0c32: 60        clrc
0c33: 88 0c     adc   a,#$0c
0c35: 13 a0 33  bbc0  $a0,$0c6b
;
0c38: 38 fb 9d  and   $9d,#$fb          ; clear bit 2
0c3b: dd        mov   a,y               ; read arg1
0c3c: 30 16     bmi   $0c54             ; branch if bit 7 is set
;
0c3e: da 90     movw  $90,ya
0c40: 3f b9 0a  call  $0ab9             ; read arg1 and next (arg2 or next vcmd)
0c43: ad ff     cmp   y,#$ff
0c45: d0 06     bne   $0c4d
;
0c47: 18 04 9d  or    $9d,#$04          ; set bit 2
0c4a: 3f b9 0a  call  $0ab9             ; read arg (2 bytes possible)
;
0c4d: ad 8f     cmp   y,#$8f
0c4f: f0 10     beq   $0c61             ; branch if next is vcmd 8f
0c51: 5f 6c 0d  jmp   $0d6c             ; write voice pointer back to array
;
0c54: fa 90 91  mov   ($91),($90)
0c57: 68 ff     cmp   a,#$ff
0c59: d0 f2     bne   $0c4d
0c5b: 18 04 9d  or    $9d,#$04
0c5e: 5f 47 0c  jmp   $0c47
;
0c61: 60        clrc
0c62: 98 03 8c  adc   $8c,#$03
0c65: 98 00 8d  adc   $8d,#$00          ; voice pointer += 3
0c68: 5f 6a 0d  jmp   $0d6a             ; voice pointer += 1, write it back to array

; dispatch note vcmd
0c6b: 6d        push  y                 ; push arg1
;
0c6c: f8 ab     mov   x,$ab
0c6e: 60        clrc
0c6f: 95 24 02  adc   a,$0224+x         ; add transpose to note number
0c72: c4 b3     mov   $b3,a
0c74: 93 9d 2d  bbc4  $9d,$0ca4
0c77: 43 a0 19  bbs2  $a0,$0c93
0c7a: 53 9d 09  bbc2  $9d,$0c86
0c7d: f8 ac     mov   x,$ac
0c7f: f5 dc 03  mov   a,$03dc+x         ; last note number
0c82: 64 b3     cmp   a,$b3             ; new note number
0c84: f0 2a     beq   $0cb0             ; skip pitch calculation for the same note
;
0c86: f8 ab     mov   x,$ab
0c88: f5 6c 02  mov   a,$026c+x
0c8b: 10 06     bpl   $0c93
0c8d: 48 ff     eor   a,#$ff
0c8f: bc        inc   a
0c90: d5 6c 02  mov   $026c+x,a
;
0c93: 38 fb a0  and   $a0,#$fb
0c96: f4 54     mov   a,$54+x
0c98: 60        clrc
0c99: 95 60 02  adc   a,$0260+x
0c9c: d4 48     mov   $48+x,a
0c9e: f5 78 02  mov   a,$0278+x
0ca1: 5c        lsr   a
0ca2: d4 60     mov   $60+x,a
;
0ca4: f8 ac     mov   x,$ac
0ca6: e4 b3     mov   a,$b3
0ca8: d5 dc 03  mov   $03dc+x,a         ; save note number
0cab: 3f 98 08  call  $0898             ; calculate pitch
0cae: da 94     movw  $94,ya
;
0cb0: ee        pop   y                 ; arg1: note length (in ticks)
0cb1: dd        mov   a,y
0cb2: 30 39     bmi   $0ced             ; but if >= $80: no arguments
;
0cb4: da 90     movw  $90,ya            ; save last used length to $90/1
0cb6: f8 ab     mov   x,$ab
0cb8: 23 9d 0b  bbs1  $9d,$0cc6
0cbb: f5 48 02  mov   a,$0248+x         ; quantize (note duration rate)
0cbe: cf        mul   ya
0cbf: dd        mov   a,y
0cc0: d0 02     bne   $0cc4
0cc2: e4 90     mov   a,$90             ; use full length if $0248+x == 0
0cc4: c4 92     mov   $92,a
0cc6: 8d 00     mov   y,#$00
0cc8: 3a 8c     incw  $8c
0cca: f7 8c     mov   a,($8c)+y         ; read next byte (possible arg2)
0ccc: fd        mov   y,a
0ccd: ad ff     cmp   y,#$ff
0ccf: d0 13     bne   $0ce4
; when next byte == $ff, it is interpreted as arg2?
0cd1: 8f 00 93  mov   $93,#$00
0cd4: 3f 36 08  call  $0836
0cd7: 18 04 9d  or    $9d,#$04
0cda: 8d 00     mov   y,#$00
0cdc: 3a 8c     incw  $8c
0cde: f7 8c     mov   a,($8c)+y         ; readahead next vcmd
0ce0: fd        mov   y,a
0ce1: 5f 0d 0d  jmp   $0d0d
;
0ce4: fa 92 93  mov   ($93),($92)
0ce7: 3f 36 08  call  $0836
0cea: 5f 0d 0d  jmp   $0d0d

; when no arguments
0ced: fa 90 91  mov   ($91),($90)       ; reuse the same note length
0cf0: 68 ff     cmp   a,#$ff
0cf2: d0 13     bne   $0d07
0cf4: 8f 00 93  mov   $93,#$00
0cf7: 3f 36 08  call  $0836
0cfa: 18 04 9d  or    $9d,#$04
0cfd: 8d 00     mov   y,#$00
0cff: 3a 8c     incw  $8c
0d01: f7 8c     mov   a,($8c)+y         ; readahead next vcmd
0d03: fd        mov   y,a
0d04: 5f 0d 0d  jmp   $0d0d

0d07: fa 92 93  mov   ($93),($92)
0d0a: 3f 36 08  call  $0836
;
0d0d: ad 8f     cmp   y,#$8f
0d0f: f0 0a     beq   $0d1b
0d11: ad 9f     cmp   y,#$9f
0d13: d0 57     bne   $0d6c
0d15: 18 04 9d  or    $9d,#$04
0d18: 5f 6c 0d  jmp   $0d6c             ; write voice pointer back

0d1b: 3a 8c     incw  $8c
; vcmd 8f
0d1d: f8 ac     mov   x,$ac
0d1f: 09 8e a5  or    ($a5),($8e)
0d22: 3f b9 0a  call  $0ab9             ; read arg (2 bytes possible)
0d25: d5 b0 02  mov   $02b0+x,a
0d28: 3f b9 0a  call  $0ab9             ; read arg (2 bytes possible)
0d2b: d5 c8 02  mov   $02c8+x,a
0d2e: dd        mov   a,y
0d2f: 80        setc
0d30: a8 ac     sbc   a,#$ac
0d32: 60        clrc
0d33: eb ab     mov   y,$ab
0d35: 96 24 02  adc   a,$0224+y
0d38: 88 0c     adc   a,#$0c
0d3a: 75 dc 03  cmp   a,$03dc+x
0d3d: 30 0b     bmi   $0d4a
0d3f: 29 8f 9e  and   ($9e),($8f)
0d42: 3f 98 08  call  $0898             ; calculate pitch
0d45: 9a 94     subw  ya,$94
0d47: 5f 56 0d  jmp   $0d56

0d4a: 09 8e 9e  or    ($9e),($8e)
0d4d: 3f 98 08  call  $0898             ; calculate pitch
0d50: da b8     movw  $b8,ya
0d52: ba 94     movw  ya,$94
0d54: 9a b8     subw  ya,$b8
0d56: c4 b3     mov   $b3,a
0d58: d8 b6     mov   $b6,x
0d5a: f5 c8 02  mov   a,$02c8+x
0d5d: 5d        mov   x,a
0d5e: e4 b3     mov   a,$b3
0d60: 9e        div   ya,x
0d61: f8 b6     mov   x,$b6
0d63: d5 b8 02  mov   $02b8+x,a
0d66: dd        mov   a,y
0d67: d5 c0 02  mov   $02c0+x,a
; increase voice pointer
0d6a: 3a 8c     incw  $8c
; then write it back to array
0d6c: ba 8c     movw  ya,$8c
0d6e: f8 ab     mov   x,$ab
0d70: d5 00 02  mov   $0200+x,a         ; write voice pointer (low)
0d73: db 0c     mov   $0c+x,y           ; write voice pointer (high)
0d75: 6f        ret

; set echo depth to 0
0d76: 8d 2c     mov   y,#$2c
0d78: e8 00     mov   a,#$00
0d7a: 3f 20 08  call  $0820             ; set EVOL(L)
0d7d: 8d 3c     mov   y,#$3c
0d7f: 3f 20 08  call  $0820             ; set EVOL(R)
0d82: 8d 7d     mov   y,#$7d
0d84: 3f 20 08  call  $0820             ; set EDL
0d87: 3f 90 0d  call  $0d90
0d8a: 8d 4d     mov   y,#$4d
0d8c: 3f 20 08  call  $0820             ; set EON
0d8f: 6f        ret

0d90: 8d 60     mov   y,#$60
0d92: fe fe     dbnz  y,$0d92
0d94: 6f        ret

; vcmd 9a - master volume
0d95: cc 9a 01  mov   $019a,y           ; arg1: MVOL(L)
0d98: 3f b9 0a  call  $0ab9
0d9b: cc 9b 01  mov   $019b,y           ; arg2: MVOL(R)
0d9e: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 9b - echo delay/feedback
0da1: 8f 00 a3  mov   $a3,#$00
0da4: 6d        push  y                 ; save arg1: echo delay
0da5: 3f 76 0d  call  $0d76             ; set echo volume to 0
0da8: 8f 01 9c  mov   $9c,#$01
0dab: 18 80 a0  or    $a0,#$80
0dae: 3a 8c     incw  $8c
0db0: ae        pop   a                 ; restore arg1
0db1: 8d 7d     mov   y,#$7d
0db3: 3f 20 08  call  $0820             ; set echo delay (EDL)
0db6: 3f b9 0a  call  $0ab9             ; read arg2: echo feedback
0db9: 8d 0d     mov   y,#$0d
0dbb: 3f 20 08  call  $0820             ; set echo feedback (EFB)
0dbe: 3f 52 11  call  $1152             ; clear echo buffer
; set echo filter
0dc1: cd 07     mov   x,#$07
0dc3: f5 f7 04  mov   a,$04f7+x
0dc6: fd        mov   y,a
0dc7: 7d        mov   a,x
0dc8: 9f        xcn   a
0dc9: 08 0f     or    a,#$0f
0dcb: 3f 2b 08  call  $082b             ; set FIR
0dce: 1d        dec   x
0dcf: 10 f2     bpl   $0dc3
;
0dd1: 5f 13 0c  jmp   $0c13             ; skip arg3, dispatch next vcmd

; vcmd a2
0dd4: 8f 00 b3  mov   $b3,#$00
0dd7: cd 00     mov   x,#$00
0dd9: e4 b3     mov   a,$b3
0ddb: 9f        xcn   a
0ddc: 08 0f     or    a,#$0f
0dde: fd        mov   y,a
0ddf: e7 8c     mov   a,($8c+x)
0de1: 3f 20 08  call  $0820             ; set FIR
0de4: 3a 8c     incw  $8c
0de6: ab b3     inc   $b3
0de8: 73 b3 ee  bbc3  $b3,$0dd9
0deb: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; vcmd 9c - echo on/off
0dee: 73 ab 0c  bbc3  $ab,$0dfd
0df1: 29 8f a3  and   ($a3),($8f)
0df4: ad 00     cmp   y,#$00            ; arg1: echo on/off bitmask (EON)
0df6: f0 03     beq   $0dfb             ; branch if 0 (no echo)
0df8: 09 8e a3  or    ($a3),($8e)
0dfb: 2f 0e     bra   $0e0b
;
0dfd: 29 a1 a3  and   ($a3),($a1)
0e00: cb a9     mov   $a9,y
0e02: e4 a1     mov   a,$a1
0e04: 48 ff     eor   a,#$ff
0e06: 24 a9     and   a,$a9             ; &= arg1
0e08: 0e a3 00  tset1 $00a3
;
0e0b: e3 a0 09  bbs7  $a0,$0e17
0e0e: d3 a0 06  bbc6  $a0,$0e17
0e11: 18 80 a0  or    $a0,#$80
0e14: 8f 04 9c  mov   $9c,#$04
0e17: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 9d
0e1a: f8 ab     mov   x,$ab
0e1c: 18 10 9d  or    $9d,#$10
0e1f: 18 04 a0  or    $a0,#$04
0e22: 8d 00     mov   y,#$00
0e24: f7 8c     mov   a,($8c)+y
0e26: d5 60 02  mov   $0260+x,a
0e29: 3a 8c     incw  $8c
0e2b: f7 8c     mov   a,($8c)+y
0e2d: d4 54     mov   $54+x,a
0e2f: 3a 8c     incw  $8c
0e31: f7 8c     mov   a,($8c)+y
0e33: d5 6c 02  mov   $026c+x,a
0e36: 3a 8c     incw  $8c
0e38: f7 8c     mov   a,($8c)+y
0e3a: d5 78 02  mov   $0278+x,a
0e3d: 5f 13 0c  jmp   $0c13             ; advance pointer, dispatch next vcmd

; vcmd 9e
0e40: 38 ef 9d  and   $9d,#$ef
0e43: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; vcmd 86 - call subroutine
0e46: f8 ab     mov   x,$ab
0e48: 40        setp
0e49: fb 60     mov   y,$60+x
0e4b: bb 60     inc   $60+x             ; ($0160+x) increase the stack offset (max nesting level: 3)
0e4d: 20        clrp
0e4e: e4 8c     mov   a,$8c
0e50: 60        clrc
0e51: 88 02     adc   a,#$02
0e53: d6 94 03  mov   $0394+y,a
0e56: e4 8d     mov   a,$8d
0e58: 88 00     adc   a,#$00
0e5a: d6 b8 03  mov   $03b8+y,a         ; save voice pointer (pointing to next vcmd)
0e5d: 3f b9 0a  call  $0ab9             ; read arg1/2
0e60: 5f 0e 0c  jmp   $0c0e             ; goto

; vcmd 87 - end subroutine
0e63: f8 ab     mov   x,$ab
0e65: 40        setp
0e66: 9b 60     dec   $60+x             ; ($0160+x) decrease the stack offset
0e68: fb 60     mov   y,$60+x
0e6a: 20        clrp
0e6b: f6 94 03  mov   a,$0394+y
0e6e: c4 8c     mov   $8c,a
0e70: f6 b8 03  mov   a,$03b8+y
0e73: c4 8d     mov   $8d,a             ; restore the voice pointer
0e75: 5f 15 0c  jmp   $0c15             ; dispatch next vcmd

; cpucmd f0
0e78: c4 d0     mov   $d0,a
0e7a: c4 d1     mov   $d1,a
0e7c: 3f cd 09  call  $09cd
0e7f: 5f 49 10  jmp   $1049

; cpucmd e5
0e82: 3f 84 0a  call  $0a84
0e85: 5f 49 10  jmp   $1049

; cpucmd e6 - ???? select
0e88: fd        mov   y,a               ; ???? number
0e89: f6 00 2e  mov   a,$2e00+y         ; ???? address table (low-byte)
0e8c: c4 b8     mov   $b8,a
0e8e: f6 80 2e  mov   a,$2e80+y         ; ???? address table (high-byte)
0e91: c4 b9     mov   $b9,a
0e93: cd 00     mov   x,#$00
0e95: e7 b8     mov   a,($b8+x)         ; (???? header) offset 0: number of channels
0e97: c4 ba     mov   $ba,a
0e99: 1c        asl   a
0e9a: c4 bb     mov   $bb,a
0e9c: fa a1 b7  mov   ($b7),($a1)
0e9f: e5 f6 00  mov   a,$00f6
0ea2: d0 03     bne   $0ea7
; read voice pointer from backward
0ea4: 3f d5 10  call  $10d5
0ea7: fb d3     mov   y,$d3+x
0ea9: f5 d0 04  mov   a,$04d0+x
0eac: da 8e     movw  $8e,ya
0eae: 09 8e a1  or    ($a1),($8e)
0eb1: e6        mov   a,(x)
0eb2: 08 01     or    a,#$01
0eb4: c6        mov   (x),a
0eb5: 69 b7 a1  cmp   ($a1),($b7)
0eb8: f0 09     beq   $0ec3
0eba: 40        setp
0ebb: e6        mov   a,(x)
0ebc: d4 08     mov   $08+x,a
0ebe: f4 0c     mov   a,$0c+x
0ec0: d4 14     mov   $14+x,a
0ec2: 20        clrp
0ec3: 7d        mov   a,x
0ec4: 08 08     or    a,#$08
0ec6: 5d        mov   x,a
0ec7: eb ba     mov   y,$ba
0ec9: f7 b8     mov   a,($b8)+y         ; (???? header) offset 1: voice pointer (low)
0ecb: d5 00 02  mov   $0200+x,a
0ece: eb bb     mov   y,$bb
0ed0: f7 b8     mov   a,($b8)+y         ; (???? header) offset 1 + N: voice pointer (high)
0ed2: d4 0c     mov   $0c+x,a
0ed4: 8b bb     dec   $bb
0ed6: e8 03     mov   a,#$03
0ed8: 3f 23 0f  call  $0f23
0edb: 69 b7 a1  cmp   ($a1),($b7)
0ede: f0 17     beq   $0ef7
0ee0: e4 a3     mov   a,$a3
0ee2: 24 8e     and   a,$8e
0ee4: 29 8f a9  and   ($a9),($8f)
0ee7: 0e a9 00  tset1 $00a9
0eea: e4 a4     mov   a,$a4
0eec: 24 8e     and   a,$8e
0eee: 29 8f aa  and   ($aa),($8f)
0ef1: 0e aa 00  tset1 $00aa
0ef4: 29 8f 9b  and   ($9b),($8f)
0ef7: 8d 8f     mov   y,#$8f
0ef9: 3f b9 0f  call  $0fb9
0efc: 33 a0 03  bbc1  $a0,$0f02
0eff: 09 8e a3  or    ($a3),($8e)
0f02: fa a1 b7  mov   ($b7),($a1)
0f05: 6e ba 9c  dbnz  $ba,$0ea4
;
0f08: 8d 3d     mov   y,#$3d
0f0a: e4 a4     mov   a,$a4
0f0c: 3f 20 08  call  $0820             ; set NON
0f0f: 8d 4d     mov   y,#$4d
0f11: e4 a3     mov   a,$a3
0f13: 3f 20 08  call  $0820             ; set EON
0f16: 5f 49 10  jmp   $1049

; cpucmd e4
0f19: 38 fd a0  and   $a0,#$fd
0f1c: 1c        asl   a
0f1d: 0e a0 00  tset1 $00a0
0f20: 5f 49 10  jmp   $1049

0f23: d4 24     mov   $24+x,a
0f25: e8 01     mov   a,#$01
0f27: 26        and   a,(x)
0f28: c6        mov   (x),a
0f29: e8 00     mov   a,#$00
0f2b: d5 24 02  mov   $0224+x,a
0f2e: d5 3c 02  mov   $023c+x,a
0f31: d5 48 02  mov   $0248+x,a
0f34: e8 ba     mov   a,#$ba
0f36: d4 6c     mov   $6c+x,a
; reset stack offset for repeat vcmd
0f38: 40        setp
0f39: f4 89     mov   a,$89+x           ; $0189+x
0f3b: d4 48     mov   $48+x,a           ; $0148+x
0f3d: d4 54     mov   $54+x,a           ; $0154+x
0f3f: d4 60     mov   $60+x,a           ; $0160+x
0f41: 20        clrp
0f42: 6f        ret

; cpucmd e7
0f43: 13 a1 0b  bbc0  $a1,$0f51
0f46: e8 97     mov   a,#$97
0f48: c5 08 02  mov   $0208,a
0f4b: 8f 01 14  mov   $14,#$01
0f4e: 8f 01 2c  mov   $2c,#$01
0f51: 5f 49 10  jmp   $1049

; cpucmd e9
0f54: c5 14 01  mov   $0114,a
0f57: 5f 49 10  jmp   $1049

; cpucmd e8
0f5a: c5 08 01  mov   $0108,a
0f5d: 5f 49 10  jmp   $1049

; cpucmd ea
0f60: 13 a1 16  bbc0  $a1,$0f79
0f63: 60        clrc
0f64: 85 a8 02  adc   a,$02a8
0f67: c5 a8 02  mov   $02a8,a
0f6a: eb c0     mov   y,$c0
0f6c: 3f 20 08  call  $0820             ; set P(L)
0f6f: e5 f6 00  mov   a,$00f6
0f72: 84 84     adc   a,$84
0f74: c4 84     mov   $84,a
0f76: 3f 1f 08  call  $081f             ; set P(H)
0f79: 5f 49 10  jmp   $1049

; cpucmd e0 - play song
0f7c: 8f 01 9f  mov   $9f,#$01
0f7f: 68 00     cmp   a,#$00
0f81: f0 0a     beq   $0f8d
0f83: 18 08 9f  or    $9f,#$08
0f86: c4 af     mov   $af,a
0f88: c4 ae     mov   $ae,a
0f8a: 8f 1a ad  mov   $ad,#$1a
0f8d: 3f 44 08  call  $0844
0f90: 3f 76 0d  call  $0d76             ; set echo volume to 0
0f93: cd 07     mov   x,#$07            ; 8 channels
; read voice pointers from backward
0f95: e8 05     mov   a,#$05
0f97: 3f 23 0f  call  $0f23
0f9a: f5 00 12  mov   a,$1200+x         ; read voice pointer (low) from address table
0f9d: d5 00 02  mov   $0200+x,a
0fa0: f5 08 12  mov   a,$1208+x         ; read voice pointer (high) from address table
0fa3: d4 0c     mov   $0c+x,a
0fa5: 1d        dec   x
0fa6: 10 ed     bpl   $0f95
;
0fa8: 38 02 a0  and   $a0,#$02
0fab: 8f 00 9a  mov   $9a,#$00
0fae: 8d a1     mov   y,#$a1
0fb0: 3f b9 0f  call  $0fb9
0fb3: 8f 14 97  mov   $97,#$14
0fb6: 5f 49 10  jmp   $1049

0fb9: cd a2     mov   x,#$a2
0fbb: 39        and   (x),(y)
0fbc: 3d        inc   x
0fbd: c8 a8     cmp   x,#$a8
0fbf: d0 fa     bne   $0fbb
0fc1: 6f        ret

; cpucmd e1
0fc2: 68 00     cmp   a,#$00
0fc4: f0 0c     beq   $0fd2
;
0fc6: 18 0c 9f  or    $9f,#$0c
0fc9: c4 af     mov   $af,a
0fcb: c4 ae     mov   $ae,a
0fcd: 8f 00 ad  mov   $ad,#$00
0fd0: 2f 09     bra   $0fdb
;
0fd2: 3f de 0f  call  $0fde
0fd5: 18 02 9f  or    $9f,#$02          ; set bit 1
0fd8: 38 fe 9f  and   $9f,#$fe          ; clear bit 0
;
0fdb: 5f 49 10  jmp   $1049

0fde: 3f 44 08  call  $0844
0fe1: 80        setc
0fe2: 3f 10 08  call  $0810
0fe5: 6f        ret

0fe6: 3f 44 08  call  $0844
0fe9: 80        setc
0fea: 3f 10 08  call  $0810
0fed: 6f        ret

; cpucmd e3
0fee: 3f f9 0f  call  $0ff9
0ff1: e5 f6 00  mov   a,$00f6
0ff4: c4 b0     mov   $b0,a
0ff6: 5f 49 10  jmp   $1049

0ff9: c4 b3     mov   $b3,a
0ffb: cd 07     mov   x,#$07
0ffd: e6        mov   a,(x)
0ffe: 28 bf     and   a,#$bf
1000: 4b b3     lsr   $b3
1002: 90 02     bcc   $1006
1004: 08 40     or    a,#$40
1006: c6        mov   (x),a
1007: 1d        dec   x
1008: 10 f3     bpl   $0ffd
100a: 6f        ret

; cpucmd ee
100b: 8f 40 b7  mov   $b7,#$40
100e: 5f 00 05  jmp   $0500

; cpucmd ef
1011: c4 b2     mov   $b2,a
1013: 3f b0 0a  call  $0ab0
1016: 2f 31     bra   $1049
;
1018: e5 f4 00  mov   a,$00f4
101b: 65 f4 00  cmp   a,$00f4           ; read cpucmd from APUI00
101e: d0 f8     bne   $1018             ; repeat if unchanged
1020: 64 dc     cmp   a,$dc
1022: f0 25     beq   $1049
1024: 68 7f     cmp   a,#$7f
1026: f0 48     beq   $1070
1028: c4 dc     mov   $dc,a
102a: c5 f4 00  mov   $00f4,a           ; write to APUI00 (ACK response)
102d: 68 ff     cmp   a,#$ff
102f: f0 23     beq   $1054             ; when $ff: receive data from SNES
1031: 68 e0     cmp   a,#$e0
1033: 30 14     bmi   $1049             ; when $00-df
1035: 68 f1     cmp   a,#$f1
1037: 10 10     bpl   $1049             ; when $f1-ff
; dispatch cpucmd (e0-f0)
1039: 80        setc
103a: a8 e0     sbc   a,#$e0
103c: 1c        asl   a
103d: 5d        mov   x,a
103e: e5 f5 00  mov   a,$00f5
1041: 65 f5 00  cmp   a,$00f5
1044: d0 f8     bne   $103e
1046: 1f c5 11  jmp   ($11c5+x)

1049: e8 00     mov   a,#$00
104b: 33 9f 02  bbc1  $9f,$1050
104e: e8 fe     mov   a,#$fe
1050: c5 f7 00  mov   $00f7,a
1053: 6f        ret

; cpucmd ff - receive data from SNES
1054: 8f 7f f4  mov   $f4,#$7f          ; write $7f to APUI00
1057: 78 7f f4  cmp   $f4,#$7f
105a: d0 fb     bne   $1057             ; poll for APUI00 == $7f
105c: fa f6 dd  mov   ($dd),($f6)
105f: fa f7 de  mov   ($de),($f7)       ; read destination spc address from APUI02/APUI03
1062: 8f 80 f4  mov   $f4,#$80          ; write $80 to APUI00
1065: 78 80 f4  cmp   $f4,#$80
1068: d0 fb     bne   $1065             ; poll for APUI00 == $80
106a: fa f6 df  mov   ($df),($f6)
106d: fa f7 e0  mov   ($e0),($f7)       ; read data size from APUI02/APUI03
1070: 8f 7f f4  mov   $f4,#$7f          ; write $7f to APUI00
1073: cd 00     mov   x,#$00
1075: e4 f4     mov   a,$f4
1077: 30 fc     bmi   $1075             ; poll for APUI00 < $80
1079: e4 f5     mov   a,$f5             ; read data byte #0 from APUI01
107b: c7 dd     mov   ($dd+x),a         ; write byte #0
107d: ba f6     movw  ya,$f6            ; read data byte #1/#2 from APUI02/APUI03
107f: 8f 80 f4  mov   $f4,#$80
1082: 1a df     decw  $df
1084: f0 41     beq   $10c7             ; break if received all data
1086: 3a dd     incw  $dd
1088: c7 dd     mov   ($dd+x),a         ; write byte #1
108a: 1a df     decw  $df
108c: f0 39     beq   $10c7             ; break if received all data
108e: 3a dd     incw  $dd
1090: dd        mov   a,y
1091: c7 dd     mov   ($dd+x),a         ; write byte #2
1093: 1a df     decw  $df
1095: f0 30     beq   $10c7             ; break if received all data
1097: 3a dd     incw  $dd
1099: e4 f4     mov   a,$f4
109b: 10 fc     bpl   $1099             ; poll for APUI00 > $80
109d: e4 f5     mov   a,$f5             ; read data byte #0 from APUI01
109f: c7 dd     mov   ($dd+x),a         ; write byte #0
10a1: ba f6     movw  ya,$f6            ; read data byte #1/#2 from APUI02/APUI03
10a3: 8f 7f f4  mov   $f4,#$7f
10a6: 1a df     decw  $df
10a8: f0 1d     beq   $10c7             ; break if received all data
10aa: 3a dd     incw  $dd
10ac: c7 dd     mov   ($dd+x),a         ; write byte #1
10ae: 1a df     decw  $df
10b0: f0 15     beq   $10c7             ; break if received all data
10b2: 3a dd     incw  $dd
10b4: dd        mov   a,y
10b5: c7 dd     mov   ($dd+x),a         ; write byte #2
10b7: 3a dd     incw  $dd
10b9: 1a df     decw  $df
10bb: f0 0a     beq   $10c7             ; break if received all data
10bd: 13 9f b5  bbc0  $9f,$1075         ; repeat receiving next byte
10c0: 8f 80 db  mov   $db,#$80
10c3: 8f 80 dc  mov   $dc,#$80
10c6: 6f        ret

10c7: e4 f4     mov   a,$f4
10c9: d0 fc     bne   $10c7             ; poll for $f4 == 0
10cb: 8f 00 f4  mov   $f4,#$00
10ce: c4 db     mov   $db,a
10d0: c4 dc     mov   $dc,a
10d2: 5f 49 10  jmp   $1049

10d5: 40        setp
10d6: 78 03 74  cmp   $74,#$03
10d9: f0 2e     beq   $1109
10db: cd 01     mov   x,#$01
10dd: ab 74     inc   $74
10df: 78 01 74  cmp   $74,#$01
10e2: f0 19     beq   $10fd
10e4: 20        clrp
10e5: f5 d0 04  mov   a,$04d0+x
10e8: 3d        inc   x
10e9: 24 a1     and   a,$a1
10eb: d0 f8     bne   $10e5
10ed: 40        setp
10ee: 1d        dec   x
10ef: eb 76     mov   y,$76
10f1: d8 76     mov   $76,x
10f3: d9 70     mov   $70+y,x
10f5: db 6c     mov   $6c+x,y
10f7: e8 ff     mov   a,#$ff
10f9: d4 70     mov   $70+x,a
10fb: 2f 21     bra   $111e
10fd: d8 75     mov   $75,x
10ff: d8 76     mov   $76,x
1101: e8 ff     mov   a,#$ff
1103: d4 6c     mov   $6c+x,a
1105: d4 70     mov   $70+x,a
1107: 2f 15     bra   $111e
1109: f8 75     mov   x,$75
110b: fb 70     mov   y,$70+x
110d: cb 75     mov   $75,y
110f: e8 ff     mov   a,#$ff
1111: d6 6c 01  mov   $016c+y,a
1114: d4 70     mov   $70+x,a
1116: eb 76     mov   y,$76
1118: db 6c     mov   $6c+x,y
111a: d8 76     mov   $76,x
111c: d9 70     mov   $70+y,x
111e: 20        clrp
111f: 6f        ret

1120: 40        setp
1121: e8 ff     mov   a,#$ff
1123: 8b 74     dec   $74
1125: f0 25     beq   $114c
1127: 3e 75     cmp   x,$75
1129: f0 0f     beq   $113a
112b: 3e 76     cmp   x,$76
112d: f0 14     beq   $1143
112f: fb 6c     mov   y,$6c+x
1131: f4 70     mov   a,$70+x
1133: 5d        mov   x,a
1134: d9 70     mov   $70+y,x
1136: db 6c     mov   $6c+x,y
1138: 20        clrp
1139: 6f        ret

113a: fb 70     mov   y,$70+x
113c: cb 75     mov   $75,y
113e: d6 6c 01  mov   $016c+y,a
1141: 20        clrp
1142: 6f        ret

1143: fb 6c     mov   y,$6c+x
1145: cb 76     mov   $76,y
1147: d6 70 01  mov   $0170+y,a
114a: 20        clrp
114b: 6f        ret

114c: c4 75     mov   $75,a
114e: c4 76     mov   $76,a
1150: 20        clrp
1151: 6f        ret

; clear echo buffer
1152: 8f d7 b9  mov   $b9,#$d7
1155: cd fe     mov   x,#$fe            ; clear up to $fe00
1157: e8 00     mov   a,#$00
1159: fd        mov   y,a
115a: c4 b8     mov   $b8,a             ; $b8/9 = $d700 (echo address)
;
115c: d7 b8     mov   ($b8)+y,a
115e: fe fc     dbnz  y,$115c
1160: ab b9     inc   $b9
1162: d7 b8     mov   ($b8)+y,a
1164: fe fc     dbnz  y,$1162
1166: ab b9     inc   $b9
1168: 3e b9     cmp   x,$b9
116a: 10 f0     bpl   $115c
116c: 6f        ret

; vcmd dispatch table
116d: dw $0ac7  ; 80
116f: dw $0b3e  ; 81 - start loop (infinite)
1171: dw $0b4a  ; 82 - end loop (infinite)
1173: dw $0b54  ; 83 - (related to contidional jump?)
1175: dw $0ba6  ; 84 - (contidional jump?)
1177: dw $0b6b  ; 85 - (contidional jump?)
1179: dw $0e46  ; 86 - call subroutine
117b: dw $0e63  ; 87 - end subroutine
117d: dw $0b32  ; 88
117f: dw $0941  ; 89 - instrument
1181: dw $0860  ; 8a
1183: dw $0aa8  ; 8b - tempo
1185: dw $098b  ; 8c - transpose (absolute)
1187: dw $0992  ; 8d - transpose (relative)
1189: dw $099f  ; 8e
118b: dw $0d1d  ; 8f
118d: dw $09a8  ; 90 - quantize (duration rate)
118f: dw $019c  ; 91 - nop?
1191: dw $09ec  ; 92 - volume & pan
1193: dw $09fc  ; 93
1195: dw $0a03  ; 94
1197: dw $0a1f  ; 95
1199: dw $0a13  ; 96
119b: dw $0000  ; 97 - (undefined)
119d: dw $0a2a  ; 98
119f: dw $0a63  ; 99
11a1: dw $0d95  ; 9a - master volume
11a3: dw $0da1  ; 9b - echo delay/feedback
11a5: dw $0dee  ; 9c - echo on/off
11a7: dw $0e1a  ; 9d
11a9: dw $0e40  ; 9e
11ab: dw $08da  ; 9f
11ad: dw $087c  ; a0
11af: dw $0867  ; a1
11b1: dw $0dd4  ; a2
11b3: dw $09dc  ; a3
11b5: dw $0917  ; a4
11b7: dw $09bb  ; a5
11b9: dw $09e6  ; a6
11bb: dw $0000  ; a7 - (undefined)
11bd: dw $0000  ; a8 - (undefined)
11bf: dw $0000  ; a9 - (undefined)
11c1: dw $0000  ; aa - (undefined)
11c3: dw $0ad9  ; ab

; cpucmd table
11c5: dw $0f7c  ; e0 - play song
11c7: dw $0fc2  ; e1
11c9: dw $019c  ; e2 - nop?
11cb: dw $0fee  ; e3
11cd: dw $0f19  ; e4
11cf: dw $0e82  ; e5
11d1: dw $0e88  ; e6 - ???? select
11d3: dw $0f43  ; e7
11d5: dw $0f5a  ; e8
11d7: dw $0f54  ; e9
11d9: dw $0f60  ; ea
11db: dw $019c  ; eb - nop?
11dd: dw $019c  ; ec - nop?
11df: dw $019c  ; ed - nop?
11e1: dw $100b  ; ee
11e3: dw $1011  ; ef
11e5: dw $0e78  ; f0
