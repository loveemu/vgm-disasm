0097: db $00,$00,$00,$00,$00,$00,$00,$00,$00

00ac: db $50

00b1: dw $3300

00b3: dw $3400

00b5: db $02,$12,$22,$32,$42,$52,$62,$72

00bd: db $05,$15,$25,$35,$45,$55,$65,$75

00c7: db $00

00c8: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

0171: db $00,$10,$20,$30,$40,$50,$60,$70

0179: db $00,$10,$20,$30,$40

017e: db $00,$03,$06,$09,$0c,$0f,$12,$15,$18,$1b,$1e,$21,$24,$27

03b9: db $00,$00,$00,$00,$00,$00,$00,$00
03c1: db $00,$00

03c3: db $00,$00,$00,$00,$00,$00,$00,$00
03cb: db $00,$01,$01,$01,$01,$01,$01,$01
03d3: db $01,$01,$01,$01,$01,$02,$02,$02
03db: db $02,$02,$02,$02,$02,$03,$03,$03
03e3: db $03,$04,$04,$04,$04,$05,$05,$05
03eb: db $05,$06,$06,$07,$07,$08,$08,$08
03f3: db $09,$0a,$0a,$0b,$0b,$0c,$0d,$0e
03fb: db $0f,$10,$10,$11,$13,$14,$15,$16
0403: db $17,$19,$1a,$1c,$1e,$20,$21,$23
040b: db $26,$28,$2a,$2d,$2f,$32,$35,$39
0413: db $3c,$40

0415: db $98,$a1,$ab,$b5,$c0,$cb,$d7,$e4
041d: db $f2,$00,$0f,$1f,$30,$43,$56,$6a
0425: db $80,$96,$af,$c8,$e3,$00,$1e,$3f
042d: db $61,$85,$ab,$d4,$ff,$2d,$5d,$90
0435: db $c7,$00,$3d,$7d,$c2,$0a,$57,$a8
043d: db $fe,$59,$ba,$21,$8d,$00,$7a,$fb
0445: db $83,$14,$ae,$50,$fd,$b3,$74,$41
044d: db $1a,$00,$f4,$f6,$07,$29,$5c,$a1
0455: db $f9,$66,$e9,$82,$34,$00,$e7,$eb
045d: db $0e,$51,$b7,$41,$f2,$cc,$d1,$04
0465: db $68,$00

0467: dw $0487

0488: db $80,$80,$7f,$7f,$7d,$7c,$7a,$78
0490: db $76,$73,$70,$6d,$69,$65,$61,$5d
0498: db $58,$54,$4f,$49,$44,$3e,$39,$33
04a0: db $2d,$27,$21,$1a,$13,$0a,$00

04a7: db $07,$17,$27,$37,$47,$57,$67,$77

04af: db $01,$02,$04,$08,$10,$20,$40,$80

04b7: db $1e,$1c,$1a,$18,$16,$14,$12,$10
04bf: db $0e,$0c,$0a,$08,$06,$04,$02,$00
04c7: db $02,$04,$06,$08,$0a,$0c,$0e,$10
04cf: db $12,$14,$16,$18,$1a,$1c,$1e

04d6: db $0c,$21,$2b,$2b,$f3,$fe,$f3,$f9

04de: db $9f,$03,$ab

04e8: 20        clrp
04e9: cd ff     mov   x,#$ff
04eb: bd        mov   sp,x
04ec: 8f fd f4  mov   $f4,#$fd
04ef: 8f ff f7  mov   $f7,#$ff
04f2: 8f 00 96  mov   $96,#$00
04f5: 3f 33 08  call  $0833
04f8: 8d 6d     mov   y,#$6d
04fa: e8 d7     mov   a,#$d7
04fc: 3f 0f 08  call  $080f
04ff: 8d 7d     mov   y,#$7d
0501: e8 00     mov   a,#$00
0503: 3f 0f 08  call  $080f
0506: 8f 30 ae  mov   $ae,#$30
0509: cd d7     mov   x,#$d7
050b: 3f c7 10  call  $10c7
050e: cd 0a     mov   x,#$0a
0510: e8 80     mov   a,#$80
0512: c6        mov   (x),a
0513: e8 01     mov   a,#$01
0515: 3f 72 0a  call  $0a72
0518: 1d        dec   x
0519: 10 f5     bpl   $0510
051b: 6e ac f0  dbnz  $ac,$050e
051e: 8f ff 9c  mov   $9c,#$ff
0521: 3f 64 0d  call  $0d64
0524: e4 c7     mov   a,$c7
0526: d0 03     bne   $052b
0528: 3f c2 10  call  $10c2
052b: 8f 00 c7  mov   $c7,#$00
052e: 8d 6c     mov   y,#$6c
0530: e8 3f     mov   a,#$3f
0532: 3f 0f 08  call  $080f
0535: 40        setp
0536: e8 ff     mov   a,#$ff
0538: c4 6a     mov   $6a,a
053a: c4 6b     mov   $6b,a
053c: e8 00     mov   a,#$00
053e: c4 69     mov   $69,a
0540: 20        clrp
0541: e8 74     mov   a,#$74
0543: c4 c5     mov   $c5,a
0545: c4 c6     mov   $c6,a
0547: 3f bc 09  call  $09bc
054a: e8 00     mov   a,#$00
054c: 8d 2d     mov   y,#$2d
054e: 3f 0f 08  call  $080f
0551: 8d 3d     mov   y,#$3d
0553: 3f 0f 08  call  $080f
0556: c4 94     mov   $94,a
0558: c4 95     mov   $95,a
055a: c4 8f     mov   $8f,a
055c: 8d 5d     mov   y,#$5d
055e: e8 30     mov   a,#$30
0560: 3f 0f 08  call  $080f
0563: e8 14     mov   a,#$14
0565: fd        mov   y,a
0566: da 8b     movw  $8b,ya
0568: da 8d     movw  $8d,ya
056a: 8d 10     mov   y,#$10
056c: da a6     movw  $a6,ya
056e: 8f 00 f1  mov   $f1,#$00
0571: 8f 04 fa  mov   $fa,#$04
0574: 8f 01 f1  mov   $f1,#$01
0577: 8f 31 f1  mov   $f1,#$31
057a: 8f ee f7  mov   $f7,#$ee
057d: 8f fe f4  mov   $f4,#$fe
0580: 8f 00 d0  mov   $d0,#$00
0583: 8f 00 d1  mov   $d1,#$00
0586: 3f 8f 0f  call  $0f8f
0589: e4 fd     mov   a,$fd
058b: f0 f9     beq   $0586
058d: 2d        push  a
058e: 64 8d     cmp   a,$8d
0590: 10 08     bpl   $059a
0592: 80        setc
0593: c4 ad     mov   $ad,a
0595: a9 ad 8d  sbc   ($8d),($ad)
0598: 2f 08     bra   $05a2
059a: fa 8e 8d  mov   ($8d),($8e)
059d: cd 0a     mov   x,#$0a
059f: 3f 14 06  call  $0614
05a2: ae        pop   a
05a3: 64 8b     cmp   a,$8b
05a5: 10 09     bpl   $05b0
05a7: 80        setc
05a8: c4 ad     mov   $ad,a
05aa: a9 ad 8b  sbc   ($8b),($ad)
05ad: 5f d7 05  jmp   $05d7

05b0: fa 8c 8b  mov   ($8b),($8c)
05b3: 73 94 1c  bbc3  $94,$05d2
05b6: 6e a3 19  dbnz  $a3,$05d2
05b9: fa a4 a3  mov   ($a3),($a4)
05bc: 53 94 0d  bbc2  $94,$05cc
05bf: ab a2     inc   $a2
05c1: 78 1b a2  cmp   $a2,#$1b
05c4: d0 0c     bne   $05d2
05c6: 8f 02 94  mov   $94,#$02
05c9: 3f 67 0f  call  $0f67
05cc: 6e a2 03  dbnz  $a2,$05d2
05cf: 38 f7 94  and   $94,#$f7
05d2: cd 07     mov   x,#$07
05d4: 3f 14 06  call  $0614
05d7: f3 95 37  bbc7  $95,$0611
05da: 6e 91 34  dbnz  $91,$0611
05dd: d3 95 1f  bbc6  $95,$05ff
05e0: 38 7f 95  and   $95,#$7f
05e3: 8d 4d     mov   y,#$4d
05e5: e4 98     mov   a,$98
05e7: 3f 0f 08  call  $080f
05ea: 3f 7e 0d  call  $0d7e
05ed: 8d 2c     mov   y,#$2c
05ef: e5 b9 03  mov   a,$03b9
05f2: 3f 0f 08  call  $080f
05f5: 8d 3c     mov   y,#$3c
05f7: e5 ba 03  mov   a,$03ba
05fa: 3f 0f 08  call  $080f
05fd: 2f 12     bra   $0611
05ff: 8f 2a 91  mov   $91,#$2a
0602: 38 df 95  and   $95,#$df
0605: 18 c0 95  or    $95,#$c0
0608: 8d 6c     mov   y,#$6c
060a: e4 9d     mov   a,$9d
060c: 28 1f     and   a,#$1f
060e: 3f 0f 08  call  $080f
0611: 5f 86 05  jmp   $0586

0614: d8 a0     mov   $a0,x
0616: f5 00 02  mov   a,$0200+x
0619: fb 0b     mov   y,$0b+x
061b: da 81     movw  $81,ya
061d: f5 2c 02  mov   a,$022c+x
0620: fb 21     mov   y,$21+x
0622: da 85     movw  $85,ya
0624: e6        mov   a,(x)
0625: c4 92     mov   $92,a
0627: 10 03     bpl   $062c
0629: 5f be 07  jmp   $07be

062c: 5c        lsr   a
062d: ca 95 00  mov1  $0095,0,c
0630: 7d        mov   a,x
0631: 28 07     and   a,#$07
0633: c4 a1     mov   $a1,a
0635: 5d        mov   x,a
0636: fb c8     mov   y,$c8+x
0638: f5 af 04  mov   a,$04af+x
063b: da 83     movw  $83,ya
063d: 03 95 32  bbs0  $95,$0672
0640: f5 9a 02  mov   a,$029a+x
0643: fb 79     mov   y,$79+x
0645: da 89     movw  $89,ya
0647: f8 a0     mov   x,$a0
0649: 93 92 26  bbc4  $92,$0672
064c: 9b 42     dec   $42+x
064e: d0 22     bne   $0672
0650: f4 4d     mov   a,$4d+x
0652: d4 42     mov   $42+x,a
0654: 8d 00     mov   y,#$00
0656: f5 63 02  mov   a,$0263+x
0659: 10 01     bpl   $065c
065b: dc        dec   y
065c: 7a 89     addw  ya,$89
065e: da 89     movw  $89,ya
0660: 9b 58     dec   $58+x
0662: d0 0e     bne   $0672
0664: f5 6e 02  mov   a,$026e+x
0667: d4 58     mov   $58+x,a
0669: f5 63 02  mov   a,$0263+x
066c: 48 ff     eor   a,#$ff
066e: bc        inc   a
066f: d5 63 02  mov   $0263+x,a
0672: 73 92 17  bbc3  $92,$068c
0675: 9b 37     dec   $37+x
0677: d0 13     bne   $068c
0679: f5 8f 02  mov   a,$028f+x
067c: d4 37     mov   $37+x,a
067e: 40        setp
067f: f4 16     mov   a,$16+x
0681: 60        clrc
0682: 86        adc   a,(x)
0683: c6        mov   (x),a
0684: 9b 21     dec   $21+x
0686: 20        clrp
0687: d0 03     bne   $068c
0689: 38 f7 92  and   $92,#$f7
068c: b3 92 2a  bbc5  $92,$06b9
068f: 9b 2c     dec   $2c+x
0691: d0 26     bne   $06b9
0693: f5 79 02  mov   a,$0279+x
0696: d4 2c     mov   $2c+x,a
0698: 40        setp
0699: 5b 2c     lsr   $2c+x
069b: b0 05     bcs   $06a2
069d: bb 0b     inc   $0b+x
069f: 5f a4 06  jmp   $06a4

06a2: 9b 0b     dec   $0b+x
06a4: 9b 2c     dec   $2c+x
06a6: d0 0e     bne   $06b6
06a8: f5 84 02  mov   a,$0284+x
06ab: d0 06     bne   $06b3
06ad: 20        clrp
06ae: 38 df 92  and   $92,#$df
06b1: 2f 05     bra   $06b8
06b3: d4 2c     mov   $2c+x,a
06b5: ed        notc
06b6: 3b 2c     rol   $2c+x
06b8: 20        clrp
06b9: 03 95 79  bbs0  $95,$0735
06bc: f8 a0     mov   x,$a0
06be: f5 4d 02  mov   a,$024d+x
06c1: fb 6e     mov   y,$6e+x
06c3: da 87     movw  $87,ya
06c5: f8 a1     mov   x,$a1
06c7: e4 9a     mov   a,$9a
06c9: 24 83     and   a,$83
06cb: f0 3c     beq   $0709
06cd: f5 a2 02  mov   a,$02a2+x
06d0: f0 07     beq   $06d9
06d2: 9c        dec   a
06d3: d5 a2 02  mov   $02a2+x,a
06d6: 5f 09 07  jmp   $0709

06d9: f5 aa 02  mov   a,$02aa+x
06dc: c4 a8     mov   $a8,a
06de: f5 b2 02  mov   a,$02b2+x
06e1: f0 06     beq   $06e9
06e3: 9c        dec   a
06e4: d5 b2 02  mov   $02b2+x,a
06e7: ab a8     inc   $a8
06e9: 8d 00     mov   y,#$00
06eb: e4 93     mov   a,$93
06ed: 24 83     and   a,$83
06ef: f0 06     beq   $06f7
06f1: dc        dec   y
06f2: 58 ff a8  eor   $a8,#$ff
06f5: ab a8     inc   $a8
06f7: e4 a8     mov   a,$a8
06f9: 7a 89     addw  ya,$89
06fb: da 89     movw  $89,ya
06fd: f5 ba 02  mov   a,$02ba+x
0700: 9c        dec   a
0701: d0 03     bne   $0706
0703: 29 84 9a  and   ($9a),($84)
0706: d5 ba 02  mov   $02ba+x,a
0709: f8 a1     mov   x,$a1
070b: 78 04 86  cmp   $86,#$04
070e: 10 0d     bpl   $071d
0710: 43 92 0a  bbs2  $92,$071d
0713: 8d 9f     mov   y,#$9f
0715: 3f f5 08  call  $08f5
0718: 6e 86 2f  dbnz  $86,$074a
071b: 2f 03     bra   $0720
071d: 6e 86 1e  dbnz  $86,$073e
0720: fb bd     mov   y,$bd+x
0722: f5 ca 02  mov   a,$02ca+x
0725: 3f 0f 08  call  $080f
0728: f8 a0     mov   x,$a0
072a: e8 00     mov   a,#$00
072c: d5 37 01  mov   $0137+x,a
072f: 3f 03 0c  call  $0c03
0732: 5f 4a 07  jmp   $074a

0735: 6e 86 03  dbnz  $86,$073b
0738: 3f 03 0c  call  $0c03
073b: 5f be 07  jmp   $07be

073e: 6e 88 09  dbnz  $88,$074a
0741: f8 a0     mov   x,$a0
0743: fb 63     mov   y,$63+x
0745: f8 a1     mov   x,$a1
0747: 3f f5 08  call  $08f5
074a: f8 a1     mov   x,$a1
074c: e4 99     mov   a,$99
074e: 24 83     and   a,$83
0750: f0 14     beq   $0766
0752: f5 bb 03  mov   a,$03bb+x
0755: 28 1f     and   a,#$1f
0757: c4 9d     mov   $9d,a
0759: b3 95 02  bbc5  $95,$075e
075c: 08 20     or    a,#$20
075e: 8d 6c     mov   y,#$6c
0760: 3f 0f 08  call  $080f
0763: 5f 77 07  jmp   $0777

0766: fb b5     mov   y,$b5+x
0768: e4 89     mov   a,$89
076a: d5 9a 02  mov   $029a+x,a
076d: 3f 0f 08  call  $080f
0770: e4 8a     mov   a,$8a
0772: d4 79     mov   $79+x,a
0774: 3f 0e 08  call  $080e
0777: f8 a0     mov   x,$a0
0779: 40        setp
077a: e6        mov   a,(x)
077b: 60        clrc
077c: 94 37     adc   a,$37+x
077e: c4 6f     mov   $6f,a
0780: 20        clrp
0781: d3 92 06  bbc6  $92,$078a
0784: eb a5     mov   y,$a5
0786: cf        mul   ya
0787: cc 6f 01  mov   $016f,y
078a: 73 94 10  bbc3  $94,$079d
078d: 63 a0 0d  bbs3  $a0,$079d
0790: 40        setp
0791: ec a2 00  mov   y,$00a2
0794: f6 8c 04  mov   a,$048c+y
0797: 1c        asl   a
0798: eb 6f     mov   y,$6f
079a: cf        mul   ya
079b: cb 6f     mov   $6f,y
079d: 40        setp
079e: fb 0b     mov   y,$0b+x
07a0: f6 69 04  mov   a,$0469+y
07a3: eb 6f     mov   y,$6f
07a5: cf        mul   ya
07a6: f4 71     mov   a,$71+x
07a8: 3f 1a 08  call  $081a
07ab: e8 1e     mov   a,#$1e
07ad: 80        setc
07ae: b4 0b     sbc   a,$0b+x
07b0: fd        mov   y,a
07b1: f6 69 04  mov   a,$0469+y
07b4: eb 6f     mov   y,$6f
07b6: cf        mul   ya
07b7: f4 71     mov   a,$71+x
07b9: bc        inc   a
07ba: 20        clrp
07bb: 3f 1a 08  call  $081a
07be: f8 a0     mov   x,$a0
07c0: ba 87     movw  ya,$87
07c2: d5 4d 02  mov   $024d+x,a
07c5: db 6e     mov   $6e+x,y
07c7: ba 85     movw  ya,$85
07c9: d5 2c 02  mov   $022c+x,a
07cc: db 21     mov   $21+x,y
07ce: e4 92     mov   a,$92
07d0: c6        mov   (x),a
07d1: 38 07 a0  and   $a0,#$07
07d4: f0 04     beq   $07da
07d6: 1d        dec   x
07d7: 5f 14 06  jmp   $0614

07da: e4 9b     mov   a,$9b
07dc: f0 08     beq   $07e6
07de: 8d 4c     mov   y,#$4c
07e0: 3f 0f 08  call  $080f
07e3: 8f 00 9b  mov   $9b,#$00
07e6: e4 9c     mov   a,$9c
07e8: f0 14     beq   $07fe
07ea: 8d 5c     mov   y,#$5c
07ec: 3f 0f 08  call  $080f
07ef: 4e 97 00  tclr1 $0097
07f2: 8d 06     mov   y,#$06
07f4: fe fe     dbnz  y,$07f4
07f6: e8 5c     mov   a,#$5c
07f8: 3f 1a 08  call  $081a
07fb: 8f 00 9c  mov   $9c,#$00
07fe: 6f        ret

07ff: cd 07     mov   x,#$07
0801: 2b a8     rol   $a8
0803: 3b 00     rol   $00+x
0805: e4 a8     mov   a,$a8
0807: 7c        ror   a
0808: 7b 00     ror   $00+x
080a: 1d        dec   x
080b: 10 f6     bpl   $0803
080d: 6f        ret

080e: fc        inc   y
080f: cc f2 00  mov   $00f2,y
0812: 00        nop
0813: 00        nop
0814: 00        nop
0815: 00        nop
0816: c5 f3 00  mov   $00f3,a
0819: 6f        ret

081a: c5 f2 00  mov   $00f2,a
081d: 00        nop
081e: 00        nop
081f: 00        nop
0820: 00        nop
0821: cc f3 00  mov   $00f3,y
0824: 6f        ret

0825: 43 92 07  bbs2  $92,$082f
0828: 09 83 9b  or    ($9b),($83)
082b: 09 83 97  or    ($97),($83)
082e: 6f        ret

082f: 38 fb 92  and   $92,#$fb
0832: 6f        ret

0833: fa 96 a8  mov   ($a8),($96)
0836: cd 07     mov   x,#$07
0838: 0b a8     asl   $a8
083a: b0 0f     bcs   $084b
083c: f5 a7 04  mov   a,$04a7+x
083f: 8d 9f     mov   y,#$9f
0841: 3f 1a 08  call  $081a
0844: f4 bd     mov   a,$bd+x
0846: 8d 00     mov   y,#$00
0848: 3f 1a 08  call  $081a
084b: 1d        dec   x
084c: 10 ea     bpl   $0838
084e: 6f        ret

084f: f8 a0     mov   x,$a0
0851: db 63     mov   $63+x,y
0853: 5f 01 0c  jmp   $0c01

0856: 90 06     bcc   $085e
0858: 29 84 9f  and   ($9f),($84)
085b: 5f 03 0c  jmp   $0c03

085e: e8 ff     mov   a,#$ff
0860: f8 a0     mov   x,$a0
0862: d5 bb 03  mov   $03bb+x,a
0865: 29 84 99  and   ($99),($84)
0868: 5f 7d 08  jmp   $087d

086b: 90 06     bcc   $0873
086d: 09 83 9f  or    ($9f),($83)
0870: 5f 03 0c  jmp   $0c03

0873: e8 ff     mov   a,#$ff
0875: f8 a0     mov   x,$a0
0877: d5 bb 03  mov   $03bb+x,a
087a: 09 83 99  or    ($99),($83)
087d: 8d 3d     mov   y,#$3d
087f: e4 99     mov   a,$99
0881: 3f 0f 08  call  $080f
0884: 5f 03 0c  jmp   $0c03

0887: fd        mov   y,a
0888: f6 15 04  mov   a,$0415+y
088b: c4 af     mov   $af,a
088d: f6 c3 03  mov   a,$03c3+y
0890: c4 b0     mov   $b0,a
0892: eb a0     mov   y,$a0
0894: 60        clrc
0895: f6 37 02  mov   a,$0237+y
0898: 8f 00 ab  mov   $ab,#$00
089b: 95 c2 02  adc   a,$02c2+x
089e: 10 05     bpl   $08a5
08a0: 48 ff     eor   a,#$ff
08a2: bc        inc   a
08a3: ab ab     inc   $ab
08a5: eb b0     mov   y,$b0
08a7: cf        mul   ya
08a8: 60        clrc
08a9: 88 08     adc   a,#$08
08ab: 90 01     bcc   $08ae
08ad: fc        inc   y
08ae: cb ae     mov   $ae,y
08b0: 4b ae     lsr   $ae
08b2: 7c        ror   a
08b3: 4b ae     lsr   $ae
08b5: 7c        ror   a
08b6: 4b ae     lsr   $ae
08b8: 7c        ror   a
08b9: 4b ae     lsr   $ae
08bb: 7c        ror   a
08bc: c4 ad     mov   $ad,a
08be: ba af     movw  ya,$af
08c0: 13 ab 03  bbc0  $ab,$08c6
08c3: 9a ad     subw  ya,$ad
08c5: 6f        ret

08c6: 7a ad     addw  ya,$ad
08c8: 6f        ret

08c9: f8 a1     mov   x,$a1
08cb: 38 fb 92  and   $92,#$fb
08ce: dd        mov   a,y
08cf: 10 0b     bpl   $08dc
08d1: b0 03     bcs   $08d6
08d3: 3f ec 08  call  $08ec
08d6: fa 85 86  mov   ($86),($85)
08d9: 5f 5a 0d  jmp   $0d5a

08dc: da 85     movw  $85,ya
08de: b0 09     bcs   $08e9
08e0: 23 92 03  bbs1  $92,$08e6
08e3: 3f b2 09  call  $09b2
08e6: 3f ec 08  call  $08ec
08e9: 5f 58 0d  jmp   $0d58

08ec: 8f 00 88  mov   $88,#$00
08ef: f8 a0     mov   x,$a0
08f1: fb 63     mov   y,$63+x
08f3: f8 a1     mov   x,$a1
08f5: f5 a7 04  mov   a,$04a7+x
08f8: 3f 1a 08  call  $081a
08fb: fb bd     mov   y,$bd+x
08fd: f5 ca 02  mov   a,$02ca+x
0900: 28 7f     and   a,#$7f
0902: 3f 0f 08  call  $080f
0905: 6f        ret

0906: f8 a0     mov   x,$a0
0908: dd        mov   a,y
0909: d5 16 02  mov   $0216+x,a
090c: b0 03     bcs   $0911
090e: 3f 3e 09  call  $093e
0911: f8 a0     mov   x,$a0
0913: 38 d7 92  and   $92,#$d7
0916: 8d 00     mov   y,#$00
0918: 3a 81     incw  $81
091a: f7 81     mov   a,($81)+y
091c: d5 00 01  mov   $0100+x,a
091f: 3a 81     incw  $81
0921: f7 81     mov   a,($81)+y
0923: d5 0b 01  mov   $010b+x,a
0926: 3a 81     incw  $81
0928: f7 81     mov   a,($81)+y
092a: d5 21 02  mov   $0221+x,a
092d: 5f 01 0c  jmp   $0c01

0930: f8 a0     mov   x,$a0
0932: dd        mov   a,y
0933: d5 16 02  mov   $0216+x,a
0936: b0 03     bcs   $093b
0938: 3f 3e 09  call  $093e
093b: 5f 01 0c  jmp   $0c01

093e: f8 a1     mov   x,$a1
0940: 1c        asl   a
0941: 1c        asl   a
0942: c4 a8     mov   $a8,a
0944: fd        mov   y,a
0945: f4 bd     mov   a,$bd+x
0947: c4 ac     mov   $ac,a
0949: f7 b1     mov   a,($b1)+y
094b: eb ac     mov   y,$ac
094d: dc        dec   y
094e: 3f 0f 08  call  $080f
0951: fd        mov   y,a
0952: f7 b3     mov   a,($b3)+y
0954: d5 c2 02  mov   $02c2+x,a
0957: ab a8     inc   $a8
0959: eb a8     mov   y,$a8
095b: f7 b1     mov   a,($b1)+y
095d: d5 ca 02  mov   $02ca+x,a
0960: eb ac     mov   y,$ac
0962: 3f 0f 08  call  $080f
0965: ab a8     inc   $a8
0967: eb a8     mov   y,$a8
0969: f7 b1     mov   a,($b1)+y
096b: eb ac     mov   y,$ac
096d: 3f 0e 08  call  $Z
0970: eb a8     mov   y,$a8
0972: fc        inc   y
0973: f7 b1     mov   a,($b1)+y
0975: f8 a0     mov   x,$a0
0977: d4 63     mov   $63+x,a
0979: 6f        ret

097a: f8 a0     mov   x,$a0
097c: e8 00     mov   a,#$00
097e: d5 21 02  mov   $0221+x,a
0981: f8 a0     mov   x,$a0
0983: dd        mov   a,y
0984: 60        clrc
0985: 95 21 02  adc   a,$0221+x
0988: d5 21 02  mov   $0221+x,a
098b: 5f 01 0c  jmp   $0c01

098e: f8 a0     mov   x,$a0
0990: dd        mov   a,y
0991: d5 37 02  mov   $0237+x,a
0994: 5f 01 0c  jmp   $0c01

0997: 38 fd 92  and   $92,#$fd
099a: f8 a0     mov   x,$a0
099c: dd        mov   a,y
099d: d5 42 02  mov   $0242+x,a
09a0: b0 05     bcs   $09a7
09a2: e4 85     mov   a,$85
09a4: 3f b2 09  call  $09b2
09a7: 5f 01 0c  jmp   $0c01

09aa: 18 02 92  or    $92,#$02
09ad: cb 87     mov   $87,y
09af: 5f 01 0c  jmp   $0c01

09b2: fd        mov   y,a
09b3: f5 42 02  mov   a,$0242+x
09b6: f0 01     beq   $09b9
09b8: cf        mul   ya
09b9: cb 87     mov   $87,y
09bb: 6f        ret

09bc: e8 0c     mov   a,#$0c
09be: eb c5     mov   y,$c5
09c0: 3f 1a 08  call  $081a
09c3: e8 1c     mov   a,#$1c
09c5: eb c6     mov   y,$c6
09c7: 3f 1a 08  call  $081a
09ca: 6f        ret

09cb: dd        mov   a,y
09cc: 3f 77 0f  call  $0f77
09cf: fa ff a5  mov   ($a5),($ff)
09d2: 5f 01 0c  jmp   $0c01

09d5: cb f6     mov   $f6,y
09d7: 5f 01 0c  jmp   $0c01

09da: f8 a0     mov   x,$a0
09dc: 38 d7 92  and   $92,#$d7
09df: 3f a7 0a  call  $0aa7
09e2: 40        setp
09e3: c6        mov   (x),a
09e4: db 0b     mov   $0b+x,y
09e6: 20        clrp
09e7: 5f 01 0c  jmp   $0c01

09ea: f8 a0     mov   x,$a0
09ec: e8 00     mov   a,#$00
09ee: d5 00 01  mov   $0100+x,a
09f1: f8 a0     mov   x,$a0
09f3: 38 f7 92  and   $92,#$f7
09f6: dd        mov   a,y
09f7: 40        setp
09f8: 60        clrc
09f9: 94 00     adc   a,$00+x
09fb: d4 00     mov   $00+x,a
09fd: 20        clrp
09fe: 5f 01 0c  jmp   $0c01

0a01: f8 a0     mov   x,$a0
0a03: 38 df 92  and   $92,#$df
0a06: 40        setp
0a07: db 0b     mov   $0b+x,y
0a09: 20        clrp
0a0a: 5f 01 0c  jmp   $0c01

0a0d: f8 a0     mov   x,$a0
0a0f: b0 04     bcs   $0a15
0a11: dd        mov   a,y
0a12: d5 37 01  mov   $0137+x,a
0a15: 5f 01 0c  jmp   $0c01

0a18: f8 a0     mov   x,$a0
0a1a: 18 20 92  or    $92,#$20
0a1d: 3a 81     incw  $81
0a1f: dd        mov   a,y
0a20: bc        inc   a
0a21: d5 79 02  mov   $0279+x,a
0a24: c4 ad     mov   $ad,a
0a26: 3f a7 0a  call  $0aa7
0a29: 60        clrc
0a2a: 84 ad     adc   a,$ad
0a2c: d4 2c     mov   $2c+x,a
0a2e: dd        mov   a,y
0a2f: 5c        lsr   a
0a30: 80        setc
0a31: b5 0b 01  sbc   a,$010b+x
0a34: 60        clrc
0a35: 10 04     bpl   $0a3b
0a37: 48 ff     eor   a,#$ff
0a39: bc        inc   a
0a3a: 80        setc
0a3b: 3c        rol   a
0a3c: d5 2c 01  mov   $012c+x,a
0a3f: dd        mov   a,y
0a40: 5c        lsr   a
0a41: b0 0a     bcs   $0a4d
0a43: fd        mov   y,a
0a44: f6 b7 04  mov   a,$04b7+y
0a47: d5 84 02  mov   $0284+x,a
0a4a: 5f 01 0c  jmp   $0c01

0a4d: e8 00     mov   a,#$00
0a4f: 2f f6     bra   $0a47
0a51: f8 a0     mov   x,$a0
0a53: 18 08 92  or    $92,#$08
0a56: 3f a7 0a  call  $0aa7
0a59: c4 ad     mov   $ad,a
0a5b: dd        mov   a,y
0a5c: d5 8f 02  mov   $028f+x,a
0a5f: 60        clrc
0a60: 84 ad     adc   a,$ad
0a62: d4 37     mov   $37+x,a
0a64: 3a 81     incw  $81
0a66: 3f a7 0a  call  $0aa7
0a69: 40        setp
0a6a: d4 16     mov   $16+x,a
0a6c: db 21     mov   $21+x,y
0a6e: 20        clrp
0a6f: 5f 01 0c  jmp   $0c01

0a72: 40        setp
0a73: fd        mov   y,a
0a74: f0 15     beq   $0a8b
0a76: f6 66 04  mov   a,$0466+y
0a79: c4 6f     mov   $6f,a
0a7b: f6 67 04  mov   a,$0467+y
0a7e: c4 70     mov   $70,a
0a80: 8d 1f     mov   y,#$1f
0a82: f7 6f     mov   a,($6f)+y
0a84: d6 68 04  mov   $0468+y,a
0a87: fe f9     dbnz  y,$0a82
0a89: 20        clrp
0a8a: 6f        ret

0a8b: 8d 1f     mov   y,#$1f
0a8d: e8 60     mov   a,#$60
0a8f: d6 68 04  mov   $0468+y,a
0a92: fe fb     dbnz  y,$0a8f
0a94: 20        clrp
0a95: 6f        ret

0a96: cb a6     mov   $a6,y
0a98: 3f 9e 0a  call  $0a9e
0a9b: 5f 01 0c  jmp   $0c01

0a9e: ba a6     movw  ya,$a6
0aa0: cf        mul   ya
0aa1: cd 10     mov   x,#$10
0aa3: 9e        div   ya,x
0aa4: c4 8c     mov   $8c,a
0aa6: 6f        ret

0aa7: 8d 00     mov   y,#$00
0aa9: f7 81     mov   a,($81)+y
0aab: c4 a8     mov   $a8,a
0aad: 3a 81     incw  $81
0aaf: f7 81     mov   a,($81)+y
0ab1: fd        mov   y,a
0ab2: e4 a8     mov   a,$a8
0ab4: 6f        ret

0ab5: 63 a0 08  bbs3  $a0,$0ac0
0ab8: 18 80 92  or    $92,#$80
0abb: 1a 81     decw  $81
0abd: 5f 5a 0d  jmp   $0d5a

0ac0: e8 de     mov   a,#$de
0ac2: 8d 04     mov   y,#$04
0ac4: 5f fc 0b  jmp   $0bfc

0ac7: 18 80 92  or    $92,#$80
0aca: f8 a1     mov   x,$a1
0acc: e8 fe     mov   a,#$fe
0ace: 26        and   a,(x)
0acf: c6        mov   (x),a
0ad0: 28 02     and   a,#$02
0ad2: d0 0a     bne   $0ade
0ad4: f5 2c 02  mov   a,$022c+x
0ad7: 3f b2 09  call  $09b2
0ada: dd        mov   a,y
0adb: d5 4d 02  mov   $024d+x,a
0ade: f5 16 02  mov   a,$0216+x
0ae1: 3f 3e 09  call  $093e
0ae4: f8 a1     mov   x,$a1
0ae6: d4 63     mov   $63+x,a
0ae8: e8 ff     mov   a,#$ff
0aea: d5 bb 03  mov   $03bb+x,a
0aed: 29 84 9a  and   ($9a),($84)
0af0: e4 9e     mov   a,$9e
0af2: 24 83     and   a,$83
0af4: 29 84 98  and   ($98),($84)
0af7: 04 98     or    a,$98
0af9: c4 98     mov   $98,a
0afb: 8d 4d     mov   y,#$4d
0afd: 3f 0f 08  call  $080f
0b00: e4 9f     mov   a,$9f
0b02: 24 83     and   a,$83
0b04: 29 84 99  and   ($99),($84)
0b07: 04 99     or    a,$99
0b09: c4 99     mov   $99,a
0b0b: 8d 3d     mov   y,#$3d
0b0d: 3f 0f 08  call  $080f
0b10: 29 84 97  and   ($97),($84)
0b13: c8 00     cmp   x,#$00
0b15: f0 03     beq   $0b1a
0b17: 3f 90 10  call  $1090
0b1a: 29 84 96  and   ($96),($84)
0b1d: 5f 5a 0d  jmp   $0d5a

0b20: 18 02 94  or    $94,#$02
0b23: 38 fe 94  and   $94,#$fe
0b26: 3f 67 0f  call  $0f67
0b29: 5f 5a 0d  jmp   $0d5a

0b2c: f8 a0     mov   x,$a0
0b2e: ba 81     movw  ya,$81
0b30: d5 0b 02  mov   $020b+x,a
0b33: db 16     mov   $16+x,y
0b35: 5f 03 0c  jmp   $0c03

0b38: f8 a0     mov   x,$a0
0b3a: fb 16     mov   y,$16+x
0b3c: f5 0b 02  mov   a,$020b+x
0b3f: 5f fc 0b  jmp   $0bfc

0b42: f8 a0     mov   x,$a0
0b44: ba 81     movw  ya,$81
0b46: 40        setp
0b47: cb 6e     mov   $6e,y
0b49: fb 42     mov   y,$42+x
0b4b: d6 d2 02  mov   $02d2+y,a
0b4e: e4 6e     mov   a,$6e
0b50: d6 f3 02  mov   $02f3+y,a
0b53: bb 42     inc   $42+x
0b55: 20        clrp
0b56: 5f 03 0c  jmp   $0c03

0b59: cd 8f     mov   x,#$8f
0b5b: 73 a0 01  bbc3  $a0,$0b5f
0b5e: 3d        inc   x
0b5f: d8 ab     mov   $ab,x
0b61: e6        mov   a,(x)
0b62: 04 83     or    a,$83
0b64: 66        cmp   a,(x)
0b65: f0 04     beq   $0b6b
0b67: c6        mov   (x),a
0b68: 5f 03 0c  jmp   $0c03

0b6b: f8 a0     mov   x,$a0
0b6d: 40        setp
0b6e: fb 4d     mov   y,$4d+x
0b70: f6 55 03  mov   a,$0355+y
0b73: 9c        dec   a
0b74: f0 04     beq   $0b7a
0b76: 20        clrp
0b77: 5f 03 0c  jmp   $0c03

0b7a: 9b 4d     dec   $4d+x
0b7c: 9b 42     dec   $42+x
0b7e: fb 4d     mov   y,$4d+x
0b80: 20        clrp
0b81: f6 14 03  mov   a,$0314+y
0b84: c4 81     mov   $81,a
0b86: f6 35 03  mov   a,$0335+y
0b89: c4 82     mov   $82,a
0b8b: f8 ab     mov   x,$ab
0b8d: e4 84     mov   a,$84
0b8f: 26        and   a,(x)
0b90: c6        mov   (x),a
0b91: 5f 03 0c  jmp   $0c03

0b94: f8 a0     mov   x,$a0
0b96: 3a 81     incw  $81
0b98: 40        setp
0b99: cb 6e     mov   $6e,y
0b9b: f4 4d     mov   a,$4d+x
0b9d: 74 7e     cmp   a,$7e+x
0b9f: f0 15     beq   $0bb6
0ba1: fb 4d     mov   y,$4d+x
0ba3: dc        dec   y
0ba4: f6 14 03  mov   a,$0314+y
0ba7: c4 6f     mov   $6f,a
0ba9: f6 35 03  mov   a,$0335+y
0bac: c4 70     mov   $70,a
0bae: 20        clrp
0baf: ba 81     movw  ya,$81
0bb1: 40        setp
0bb2: 5a 6f     cmpw  ya,$6f
0bb4: f0 21     beq   $0bd7
0bb6: e4 6e     mov   a,$6e
0bb8: 9c        dec   a
0bb9: d0 06     bne   $0bc1
0bbb: 9b 42     dec   $42+x
0bbd: 20        clrp
0bbe: 5f 03 0c  jmp   $0c03

0bc1: fb 4d     mov   y,$4d+x
0bc3: d6 56 03  mov   $0356+y,a
0bc6: e5 81 00  mov   a,$0081
0bc9: d6 14 03  mov   $0314+y,a
0bcc: e5 82 00  mov   a,$0082
0bcf: d6 35 03  mov   $0335+y,a
0bd2: bb 4d     inc   $4d+x
0bd4: 5f ec 0b  jmp   $0bec

0bd7: fb 4d     mov   y,$4d+x
0bd9: f6 55 03  mov   a,$0355+y
0bdc: 9c        dec   a
0bdd: d0 08     bne   $0be7
0bdf: 9b 42     dec   $42+x
0be1: 9b 4d     dec   $4d+x
0be3: 20        clrp
0be4: 5f 03 0c  jmp   $0c03

0be7: fb 4d     mov   y,$4d+x
0be9: d6 55 03  mov   $0355+y,a
0bec: fb 42     mov   y,$42+x
0bee: 20        clrp
0bef: f6 d1 02  mov   a,$02d1+y
0bf2: c4 81     mov   $81,a
0bf4: f6 f2 02  mov   a,$02f2+y
0bf7: c4 82     mov   $82,a
0bf9: 5f 03 0c  jmp   $0c03

0bfc: da 81     movw  $81,ya
0bfe: 5f 03 0c  jmp   $0c03

0c01: 3a 81     incw  $81
0c03: 8d 00     mov   y,#$00
0c05: f7 81     mov   a,($81)+y
0c07: c4 a8     mov   $a8,a
0c09: 3a 81     incw  $81
0c0b: f7 81     mov   a,($81)+y
0c0d: fd        mov   y,a
0c0e: e4 a8     mov   a,$a8
0c10: 80        setc
0c11: a8 ac     sbc   a,#$ac
0c13: 10 0b     bpl   $0c20
0c15: 60        clrc
0c16: 88 2c     adc   a,#$2c
0c18: 1c        asl   a
0c19: 5d        mov   x,a
0c1a: aa 95 00  mov1  c,$0095,0
0c1d: 1f dd 10  jmp   ($10dd+x)

0c20: 60        clrc
0c21: 88 0c     adc   a,#$0c
0c23: 13 95 33  bbc0  $95,$0c59
0c26: 38 fb 92  and   $92,#$fb
0c29: dd        mov   a,y
0c2a: 30 16     bmi   $0c42
0c2c: da 85     movw  $85,ya
0c2e: 3f a7 0a  call  $0aa7
0c31: ad ff     cmp   y,#$ff
0c33: d0 06     bne   $0c3b
0c35: 18 04 92  or    $92,#$04
0c38: 3f a7 0a  call  $0aa7
0c3b: ad 8f     cmp   y,#$8f
0c3d: f0 10     beq   $0c4f
0c3f: 5f 5a 0d  jmp   $0d5a

0c42: fa 85 86  mov   ($86),($85)
0c45: 68 ff     cmp   a,#$ff
0c47: d0 f2     bne   $0c3b
0c49: 18 04 92  or    $92,#$04
0c4c: 5f 35 0c  jmp   $0c35

0c4f: 60        clrc
0c50: 98 03 81  adc   $81,#$03
0c53: 98 00 82  adc   $82,#$00
0c56: 5f 58 0d  jmp   $0d58

0c59: 6d        push  y
0c5a: f8 a0     mov   x,$a0
0c5c: 60        clrc
0c5d: 95 21 02  adc   a,$0221+x
0c60: c4 a8     mov   $a8,a
0c62: 93 92 2d  bbc4  $92,$0c92
0c65: 43 95 19  bbs2  $95,$0c81
0c68: 53 92 09  bbc2  $92,$0c74
0c6b: f8 a1     mov   x,$a1
0c6d: f5 bb 03  mov   a,$03bb+x
0c70: 64 a8     cmp   a,$a8
0c72: f0 2a     beq   $0c9e
0c74: f8 a0     mov   x,$a0
0c76: f5 63 02  mov   a,$0263+x
0c79: 10 06     bpl   $0c81
0c7b: 48 ff     eor   a,#$ff
0c7d: bc        inc   a
0c7e: d5 63 02  mov   $0263+x,a
0c81: 38 fb 95  and   $95,#$fb
0c84: f4 4d     mov   a,$4d+x
0c86: 60        clrc
0c87: 95 58 02  adc   a,$0258+x
0c8a: d4 42     mov   $42+x,a
0c8c: f5 6e 02  mov   a,$026e+x
0c8f: 5c        lsr   a
0c90: d4 58     mov   $58+x,a
0c92: f8 a1     mov   x,$a1
0c94: e4 a8     mov   a,$a8
0c96: d5 bb 03  mov   $03bb+x,a
0c99: 3f 87 08  call  $0887
0c9c: da 89     movw  $89,ya
0c9e: ee        pop   y
0c9f: dd        mov   a,y
0ca0: 30 39     bmi   $0cdb
0ca2: da 85     movw  $85,ya
0ca4: f8 a0     mov   x,$a0
0ca6: 23 92 0b  bbs1  $92,$0cb4
0ca9: f5 42 02  mov   a,$0242+x
0cac: cf        mul   ya
0cad: dd        mov   a,y
0cae: d0 02     bne   $0cb2
0cb0: e4 85     mov   a,$85
0cb2: c4 87     mov   $87,a
0cb4: 8d 00     mov   y,#$00
0cb6: 3a 81     incw  $81
0cb8: f7 81     mov   a,($81)+y
0cba: fd        mov   y,a
0cbb: ad ff     cmp   y,#$ff
0cbd: d0 13     bne   $0cd2
0cbf: 8f 00 88  mov   $88,#$00
0cc2: 3f 25 08  call  $0825
0cc5: 18 04 92  or    $92,#$04
0cc8: 8d 00     mov   y,#$00
0cca: 3a 81     incw  $81
0ccc: f7 81     mov   a,($81)+y
0cce: fd        mov   y,a
0ccf: 5f fb 0c  jmp   $0cfb

0cd2: fa 87 88  mov   ($88),($87)
0cd5: 3f 25 08  call  $0825
0cd8: 5f fb 0c  jmp   $0cfb

0cdb: fa 85 86  mov   ($86),($85)
0cde: 68 ff     cmp   a,#$ff
0ce0: d0 13     bne   $0cf5
0ce2: 8f 00 88  mov   $88,#$00
0ce5: 3f 25 08  call  $0825
0ce8: 18 04 92  or    $92,#$04
0ceb: 8d 00     mov   y,#$00
0ced: 3a 81     incw  $81
0cef: f7 81     mov   a,($81)+y
0cf1: fd        mov   y,a
0cf2: 5f fb 0c  jmp   $0cfb

0cf5: fa 87 88  mov   ($88),($87)
0cf8: 3f 25 08  call  $0825
0cfb: ad 8f     cmp   y,#$8f
0cfd: f0 0a     beq   $0d09
0cff: ad 9f     cmp   y,#$9f
0d01: d0 57     bne   $0d5a
0d03: 18 04 92  or    $92,#$04
0d06: 5f 5a 0d  jmp   $0d5a

0d09: 3a 81     incw  $81
0d0b: f8 a1     mov   x,$a1
0d0d: 09 83 9a  or    ($9a),($83)
0d10: 3f a7 0a  call  $0aa7
0d13: d5 a2 02  mov   $02a2+x,a
0d16: 3f a7 0a  call  $0aa7
0d19: d5 ba 02  mov   $02ba+x,a
0d1c: dd        mov   a,y
0d1d: 80        setc
0d1e: a8 ac     sbc   a,#$ac
0d20: 60        clrc
0d21: eb a0     mov   y,$a0
0d23: 96 21 02  adc   a,$0221+y
0d26: 88 0c     adc   a,#$0c
0d28: 75 bb 03  cmp   a,$03bb+x
0d2b: 30 0b     bmi   $0d38
0d2d: 29 84 93  and   ($93),($84)
0d30: 3f 87 08  call  $0887
0d33: 9a 89     subw  ya,$89
0d35: 5f 44 0d  jmp   $0d44

0d38: 09 83 93  or    ($93),($83)
0d3b: 3f 87 08  call  $0887
0d3e: da ad     movw  $ad,ya
0d40: ba 89     movw  ya,$89
0d42: 9a ad     subw  ya,$ad
0d44: c4 a8     mov   $a8,a
0d46: d8 ab     mov   $ab,x
0d48: f5 ba 02  mov   a,$02ba+x
0d4b: 5d        mov   x,a
0d4c: e4 a8     mov   a,$a8
0d4e: 9e        div   ya,x
0d4f: f8 ab     mov   x,$ab
0d51: d5 aa 02  mov   $02aa+x,a
0d54: dd        mov   a,y
0d55: d5 b2 02  mov   $02b2+x,a
0d58: 3a 81     incw  $81
0d5a: ba 81     movw  ya,$81
0d5c: f8 a0     mov   x,$a0
0d5e: d5 00 02  mov   $0200+x,a
0d61: db 0b     mov   $0b+x,y
0d63: 6f        ret

0d64: 8d 2c     mov   y,#$2c
0d66: e8 00     mov   a,#$00
0d68: 3f 0f 08  call  $080f
0d6b: 8d 3c     mov   y,#$3c
0d6d: 3f 0f 08  call  $080f
0d70: 8d 7d     mov   y,#$7d
0d72: 3f 0f 08  call  $080f
0d75: 3f 7e 0d  call  $0d7e
0d78: 8d 4d     mov   y,#$4d
0d7a: 3f 0f 08  call  $080f
0d7d: 6f        ret

0d7e: 8d 60     mov   y,#$60
0d80: fe fe     dbnz  y,$0d80
0d82: 6f        ret

0d83: cc b9 03  mov   $03b9,y
0d86: 3f a7 0a  call  $0aa7
0d89: cc ba 03  mov   $03ba,y
0d8c: 5f 01 0c  jmp   $0c01

0d8f: 8f 00 98  mov   $98,#$00
0d92: 6d        push  y
0d93: 3f 64 0d  call  $0d64
0d96: 8f a2 91  mov   $91,#$a2
0d99: 18 80 95  or    $95,#$80
0d9c: 3a 81     incw  $81
0d9e: ae        pop   a
0d9f: 8d 7d     mov   y,#$7d
0da1: 3f 0f 08  call  $080f
0da4: 3f a7 0a  call  $0aa7
0da7: 8d 0d     mov   y,#$0d
0da9: 3f 0f 08  call  $080f
0dac: 3f c2 10  call  $10c2
0daf: cd 07     mov   x,#$07
0db1: f5 d6 04  mov   a,$04d6+x
0db4: fd        mov   y,a
0db5: 7d        mov   a,x
0db6: 9f        xcn   a
0db7: 08 0f     or    a,#$0f
0db9: 3f 1a 08  call  $081a
0dbc: 1d        dec   x
0dbd: 10 f2     bpl   $0db1
0dbf: 5f 01 0c  jmp   $0c01

0dc2: 73 a0 0c  bbc3  $a0,$0dd1
0dc5: 29 84 98  and   ($98),($84)
0dc8: ad 00     cmp   y,#$00
0dca: f0 03     beq   $0dcf
0dcc: 09 83 98  or    ($98),($83)
0dcf: 2f 0e     bra   $0ddf
0dd1: 29 96 98  and   ($98),($96)
0dd4: cb 9e     mov   $9e,y
0dd6: e4 96     mov   a,$96
0dd8: 48 ff     eor   a,#$ff
0dda: 24 9e     and   a,$9e
0ddc: 0e 98 00  tset1 $0098
0ddf: e3 95 09  bbs7  $95,$0deb
0de2: d3 95 06  bbc6  $95,$0deb
0de5: 18 80 95  or    $95,#$80
0de8: 8f 04 91  mov   $91,#$04
0deb: 5f 01 0c  jmp   $0c01

0dee: f8 a0     mov   x,$a0
0df0: 18 10 92  or    $92,#$10
0df3: 18 04 95  or    $95,#$04
0df6: 8d 00     mov   y,#$00
0df8: f7 81     mov   a,($81)+y
0dfa: d5 58 02  mov   $0258+x,a
0dfd: 3a 81     incw  $81
0dff: f7 81     mov   a,($81)+y
0e01: d4 4d     mov   $4d+x,a
0e03: 3a 81     incw  $81
0e05: f7 81     mov   a,($81)+y
0e07: d5 63 02  mov   $0263+x,a
0e0a: 3a 81     incw  $81
0e0c: f7 81     mov   a,($81)+y
0e0e: d5 6e 02  mov   $026e+x,a
0e11: 5f 01 0c  jmp   $0c01

0e14: 38 ef 92  and   $92,#$ef
0e17: 5f 03 0c  jmp   $0c03

0e1a: f8 a0     mov   x,$a0
0e1c: 40        setp
0e1d: fb 58     mov   y,$58+x
0e1f: bb 58     inc   $58+x
0e21: 20        clrp
0e22: e4 81     mov   a,$81
0e24: 60        clrc
0e25: 88 02     adc   a,#$02
0e27: d6 77 03  mov   $0377+y,a
0e2a: e4 82     mov   a,$82
0e2c: 88 00     adc   a,#$00
0e2e: d6 98 03  mov   $0398+y,a
0e31: 3f a7 0a  call  $0aa7
0e34: 5f fc 0b  jmp   $0bfc

0e37: f8 a0     mov   x,$a0
0e39: 40        setp
0e3a: 9b 58     dec   $58+x
0e3c: fb 58     mov   y,$58+x
0e3e: 20        clrp
0e3f: f6 77 03  mov   a,$0377+y
0e42: c4 81     mov   $81,a
0e44: f6 98 03  mov   a,$0398+y
0e47: c4 82     mov   $82,a
0e49: 5f 03 0c  jmp   $0c03

0e4c: fd        mov   y,a
0e4d: f6 00 2e  mov   a,$2e00+y
0e50: c4 ad     mov   $ad,a
0e52: f6 80 2e  mov   a,$2e80+y
0e55: c4 ae     mov   $ae,a
0e57: cd 00     mov   x,#$00
0e59: e7 ad     mov   a,($ad+x)
0e5b: c4 af     mov   $af,a
0e5d: 1c        asl   a
0e5e: c4 b0     mov   $b0,a
0e60: fa 96 ac  mov   ($ac),($96)
0e63: e4 f6     mov   a,$f6
0e65: 3f 45 10  call  $1045
0e68: fb c8     mov   y,$c8+x
0e6a: f5 af 04  mov   a,$04af+x
0e6d: da 83     movw  $83,ya
0e6f: 09 83 96  or    ($96),($83)
0e72: e6        mov   a,(x)
0e73: 08 01     or    a,#$01
0e75: c6        mov   (x),a
0e76: 69 ac 96  cmp   ($96),($ac)
0e79: f0 09     beq   $0e84
0e7b: 40        setp
0e7c: e6        mov   a,(x)
0e7d: d4 08     mov   $08+x,a
0e7f: f4 0b     mov   a,$0b+x
0e81: d4 13     mov   $13+x,a
0e83: 20        clrp
0e84: 7d        mov   a,x
0e85: 08 08     or    a,#$08
0e87: 5d        mov   x,a
0e88: eb af     mov   y,$af
0e8a: f7 ad     mov   a,($ad)+y
0e8c: d5 00 02  mov   $0200+x,a
0e8f: eb b0     mov   y,$b0
0e91: f7 ad     mov   a,($ad)+y
0e93: d4 0b     mov   $0b+x,a
0e95: 8b b0     dec   $b0
0e97: e8 03     mov   a,#$03
0e99: 3f da 0e  call  $0eda
0e9c: 69 ac 96  cmp   ($96),($ac)
0e9f: f0 17     beq   $0eb8
0ea1: e4 98     mov   a,$98
0ea3: 24 83     and   a,$83
0ea5: 29 84 9e  and   ($9e),($84)
0ea8: 0e 9e 00  tset1 $009e
0eab: e4 99     mov   a,$99
0ead: 24 83     and   a,$83
0eaf: 29 84 9f  and   ($9f),($84)
0eb2: 0e 9f 00  tset1 $009f
0eb5: 29 84 90  and   ($90),($84)
0eb8: 8d 84     mov   y,#$84
0eba: 3f 48 0f  call  $0f48
0ebd: 33 95 03  bbc1  $95,$0ec3
0ec0: 09 83 98  or    ($98),($83)
0ec3: fa 96 ac  mov   ($ac),($96)
0ec6: 6e af 9c  dbnz  $af,$0e65
0ec9: 8d 3d     mov   y,#$3d
0ecb: e4 99     mov   a,$99
0ecd: 3f 0f 08  call  $080f
0ed0: 8d 4d     mov   y,#$4d
0ed2: e4 98     mov   a,$98
0ed4: 3f 0f 08  call  $080f
0ed7: 5f b5 0f  jmp   $0fb5

0eda: d4 21     mov   $21+x,a
0edc: e8 01     mov   a,#$01
0ede: 26        and   a,(x)
0edf: c6        mov   (x),a
0ee0: e8 00     mov   a,#$00
0ee2: d5 21 02  mov   $0221+x,a
0ee5: d5 37 02  mov   $0237+x,a
0ee8: d5 42 02  mov   $0242+x,a
0eeb: e8 ba     mov   a,#$ba
0eed: d4 63     mov   $63+x,a
0eef: 40        setp
0ef0: f4 7e     mov   a,$7e+x
0ef2: d4 42     mov   $42+x,a
0ef4: d4 4d     mov   $4d+x,a
0ef6: d4 58     mov   $58+x,a
0ef8: 20        clrp
0ef9: 6f        ret

0efa: 13 96 0b  bbc0  $96,$0f08
0efd: e8 de     mov   a,#$de
0eff: c5 08 02  mov   $0208,a
0f02: 8f 04 13  mov   $13,#$04
0f05: 8f 01 29  mov   $29,#$01
0f08: 5f b5 0f  jmp   $0fb5

0f0b: 8f 01 94  mov   $94,#$01
0f0e: 68 00     cmp   a,#$00
0f10: f0 0a     beq   $0f1c
0f12: 18 08 94  or    $94,#$08
0f15: c4 a4     mov   $a4,a
0f17: c4 a3     mov   $a3,a
0f19: 8f 1a a2  mov   $a2,#$1a
0f1c: 3f 33 08  call  $0833
0f1f: 3f 64 0d  call  $0d64
0f22: cd 07     mov   x,#$07
0f24: e8 05     mov   a,#$05
0f26: 3f da 0e  call  $0eda
0f29: f5 00 12  mov   a,$1200+x
0f2c: d5 00 02  mov   $0200+x,a
0f2f: f5 08 12  mov   a,$1208+x
0f32: d4 0b     mov   $0b+x,a
0f34: 1d        dec   x
0f35: 10 ed     bpl   $0f24
0f37: 38 02 95  and   $95,#$02
0f3a: 8f 00 8f  mov   $8f,#$00
0f3d: 8d 96     mov   y,#$96
0f3f: 3f 48 0f  call  $0f48
0f42: 8f 14 8c  mov   $8c,#$14
0f45: 5f b5 0f  jmp   $0fb5

0f48: cd 97     mov   x,#$97
0f4a: 39        and   (x),(y)
0f4b: 3d        inc   x
0f4c: c8 9d     cmp   x,#$9d
0f4e: d0 fa     bne   $0f4a
0f50: 6f        ret

0f51: 68 00     cmp   a,#$00
0f53: f0 0c     beq   $0f61
0f55: 18 0c 94  or    $94,#$0c
0f58: c4 a4     mov   $a4,a
0f5a: c4 a3     mov   $a3,a
0f5c: 8f 00 a2  mov   $a2,#$00
0f5f: 2f 03     bra   $0f64
0f61: 3f 67 0f  call  $0f67
0f64: 5f b5 0f  jmp   $0fb5

0f67: 3f 33 08  call  $0833
0f6a: 80        setc
0f6b: 3f ff 07  call  $07ff
0f6e: 6f        ret

0f6f: 3f 33 08  call  $0833
0f72: 80        setc
0f73: 3f ff 07  call  $07ff
0f76: 6f        ret

0f77: c4 a8     mov   $a8,a
0f79: cd 07     mov   x,#$07
0f7b: e6        mov   a,(x)
0f7c: 28 bf     and   a,#$bf
0f7e: 4b a8     lsr   $a8
0f80: 90 02     bcc   $0f84
0f82: 08 40     or    a,#$40
0f84: c6        mov   (x),a
0f85: 1d        dec   x
0f86: 10 f3     bpl   $0f7b
0f88: 6f        ret

0f89: 8f 40 ac  mov   $ac,#$40
0f8c: 5f e8 04  jmp   $04e8

0f8f: e4 f4     mov   a,$f4
0f91: 64 f4     cmp   a,$f4
0f93: d0 fa     bne   $0f8f
0f95: 64 d1     cmp   a,$d1
0f97: f0 22     beq   $0fbb
0f99: c4 d0     mov   $d0,a
0f9b: 68 7f     cmp   a,#$7f
0f9d: f0 43     beq   $0fe2
0f9f: 68 ff     cmp   a,#$ff
0fa1: f0 23     beq   $0fc6
0fa3: 68 e0     cmp   a,#$e0
0fa5: 30 0e     bmi   $0fb5
0fa7: 68 f2     cmp   a,#$f2
0fa9: 10 0a     bpl   $0fb5
0fab: 80        setc
0fac: a8 e0     sbc   a,#$e0
0fae: 1c        asl   a
0faf: 5d        mov   x,a
0fb0: e4 f5     mov   a,$f5
0fb2: 1f 35 11  jmp   ($1135+x)

0fb5: e4 d0     mov   a,$d0
0fb7: c4 d1     mov   $d1,a
0fb9: c4 f4     mov   $f4,a
0fbb: e8 ee     mov   a,#$ee
0fbd: 33 94 05  bbc1  $94,$0fc5
0fc0: e8 fe     mov   a,#$fe
0fc2: 8f 01 c7  mov   $c7,#$01
0fc5: 6f        ret

0fc6: 8f 7f f4  mov   $f4,#$7f
0fc9: 78 7f f4  cmp   $f4,#$7f
0fcc: d0 fb     bne   $0fc9
0fce: fa f6 d2  mov   ($d2),($f6)
0fd1: fa f7 d3  mov   ($d3),($f7)
0fd4: 8f 80 f4  mov   $f4,#$80
0fd7: 78 80 f4  cmp   $f4,#$80
0fda: d0 fb     bne   $0fd7
0fdc: fa f6 d4  mov   ($d4),($f6)
0fdf: fa f7 d5  mov   ($d5),($f7)
0fe2: 8f 7f f4  mov   $f4,#$7f
0fe5: cd 00     mov   x,#$00
0fe7: e4 f4     mov   a,$f4
0fe9: 30 fc     bmi   $0fe7
0feb: e4 f5     mov   a,$f5
0fed: c7 d2     mov   ($d2+x),a
0fef: ba f6     movw  ya,$f6
0ff1: 8f 80 f4  mov   $f4,#$80
0ff4: 1a d4     decw  $d4
0ff6: f0 41     beq   $1039
0ff8: 3a d2     incw  $d2
0ffa: c7 d2     mov   ($d2+x),a
0ffc: 1a d4     decw  $d4
0ffe: f0 39     beq   $1039
1000: 3a d2     incw  $d2
1002: dd        mov   a,y
1003: c7 d2     mov   ($d2+x),a
1005: 1a d4     decw  $d4
1007: f0 30     beq   $1039
1009: 3a d2     incw  $d2
100b: e4 f4     mov   a,$f4
100d: 10 fc     bpl   $100b
100f: e4 f5     mov   a,$f5
1011: c7 d2     mov   ($d2+x),a
1013: ba f6     movw  ya,$f6
1015: 8f 7f f4  mov   $f4,#$7f
1018: 1a d4     decw  $d4
101a: f0 1d     beq   $1039
101c: 3a d2     incw  $d2
101e: c7 d2     mov   ($d2+x),a
1020: 1a d4     decw  $d4
1022: f0 15     beq   $1039
1024: 3a d2     incw  $d2
1026: dd        mov   a,y
1027: c7 d2     mov   ($d2+x),a
1029: 3a d2     incw  $d2
102b: 1a d4     decw  $d4
102d: f0 0a     beq   $1039
102f: 13 94 b5  bbc0  $94,$0fe7
1032: 8f 80 d0  mov   $d0,#$80
1035: 8f 80 d1  mov   $d1,#$80
1038: 6f        ret

1039: e4 f4     mov   a,$f4
103b: d0 fc     bne   $1039
103d: 8f 00 f4  mov   $f4,#$00
1040: c4 d0     mov   $d0,a
1042: 5f b5 0f  jmp   $0fb5

1045: 40        setp
1046: 78 02 69  cmp   $69,#$02
1049: f0 2e     beq   $1079
104b: cd 01     mov   x,#$01
104d: ab 69     inc   $69
104f: 78 01 69  cmp   $69,#$01
1052: f0 19     beq   $106d
1054: 20        clrp
1055: f5 af 04  mov   a,$04af+x
1058: 3d        inc   x
1059: 24 96     and   a,$96
105b: d0 f8     bne   $1055
105d: 40        setp
105e: 1d        dec   x
105f: eb 6b     mov   y,$6b
1061: d8 6b     mov   $6b,x
1063: d9 66     mov   $66+y,x
1065: db 63     mov   $63+x,y
1067: e8 ff     mov   a,#$ff
1069: d4 66     mov   $66+x,a
106b: 2f 21     bra   $108e
106d: d8 6a     mov   $6a,x
106f: d8 6b     mov   $6b,x
1071: e8 ff     mov   a,#$ff
1073: d4 63     mov   $63+x,a
1075: d4 66     mov   $66+x,a
1077: 2f 15     bra   $108e
1079: f8 6a     mov   x,$6a
107b: fb 66     mov   y,$66+x
107d: cb 6a     mov   $6a,y
107f: e8 ff     mov   a,#$ff
1081: d6 63 01  mov   $0163+y,a
1084: d4 66     mov   $66+x,a
1086: eb 6b     mov   y,$6b
1088: db 63     mov   $63+x,y
108a: d8 6b     mov   $6b,x
108c: d9 66     mov   $66+y,x
108e: 20        clrp
108f: 6f        ret

1090: 40        setp
1091: e8 ff     mov   a,#$ff
1093: 8b 69     dec   $69
1095: f0 25     beq   $10bc
1097: 3e 6a     cmp   x,$6a
1099: f0 0f     beq   $10aa
109b: 3e 6b     cmp   x,$6b
109d: f0 14     beq   $10b3
109f: fb 63     mov   y,$63+x
10a1: f4 66     mov   a,$66+x
10a3: 5d        mov   x,a
10a4: d9 66     mov   $66+y,x
10a6: db 63     mov   $63+x,y
10a8: 20        clrp
10a9: 6f        ret

10aa: fb 66     mov   y,$66+x
10ac: cb 6a     mov   $6a,y
10ae: d6 63 01  mov   $0163+y,a
10b1: 20        clrp
10b2: 6f        ret

10b3: fb 63     mov   y,$63+x
10b5: cb 6b     mov   $6b,y
10b7: d6 66 01  mov   $0166+y,a
10ba: 20        clrp
10bb: 6f        ret

10bc: c4 6a     mov   $6a,a
10be: c4 6b     mov   $6b,a
10c0: 20        clrp
10c1: 6f        ret

10c2: 8f d7 ae  mov   $ae,#$d7
10c5: cd fe     mov   x,#$fe
10c7: e8 00     mov   a,#$00
10c9: fd        mov   y,a
10ca: c4 ad     mov   $ad,a
10cc: d7 ad     mov   ($ad)+y,a
10ce: fe fc     dbnz  y,$10cc
10d0: ab ae     inc   $ae
10d2: d7 ad     mov   ($ad)+y,a
10d4: fe fc     dbnz  y,$10d2
10d6: ab ae     inc   $ae
10d8: 3e ae     cmp   x,$ae
10da: 10 f0     bpl   $10cc
10dc: 6f        ret

10dd: dw $0ab5
10df: dw $0b2c
10e1: dw $0b38
10e3: dw $0b42
10e5: dw $0b94
10e7: dw $0b59
10e9: dw $0e1a
10eb: dw $0e37
10ed: dw $0b20
10ef: dw $0930
10f1: dw $084f
10f3: dw $0a96
10f5: dw $097a
10f7: dw $0981
10f9: dw $098e
10fb: dw $0d0b
10fd: dw $0997
10ff: dw $0000
1101: dw $09da
1103: dw $09ea
1105: dw $09f1
1107: dw $0a0d
1109: dw $0a01
110b: dw $0000
110d: dw $0a18
110f: dw $0a51
1111: dw $0d83
1113: dw $0d8f
1115: dw $0dc2
1117: dw $0dee
1119: dw $0e14
111b: dw $08c9
111d: dw $086b
111f: dw $0856
1121: dw $0000
1123: dw $09cb
1125: dw $0906
1127: dw $09aa
1129: dw $09d5
112b: dw $0000
112d: dw $0000
112f: dw $0000
1131: dw $0000
1133: dw $0ac7

1135: dw $0f0b
1137: dw $0f51
1139: dw $0000
113b: dw $0000
113d: dw $0fb5
113f: dw $0fb5
1141: dw $0e4c
1143: dw $0efa
1145: dw $0000
1147: dw $0000
1149: dw $0000
114b: dw $0000
114d: dw $0000
114f: dw $0000
1151: dw $0f89
1153: dw $0000
1155: dw $0fb5
