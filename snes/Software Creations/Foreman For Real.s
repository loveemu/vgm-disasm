0400: 20        clrp
0401: 00        nop
0402: cd ff     mov   x,#$ff
0404: bd        mov   sp,x
0405: 8f 30 f1  mov   $f1,#$30
0408: 8f 6c f2  mov   $f2,#$6c
040b: 8f f3 f3  mov   $f3,#$f3
040e: 8f 0c f2  mov   $f2,#$0c
0411: 8f 00 f3  mov   $f3,#$00
0414: 8f 1c f2  mov   $f2,#$1c
0417: 8f 00 f3  mov   $f3,#$00
041a: 3f 99 12  call  $1299
041d: 3f d3 08  call  $08d3
0420: 8f 1b ec  mov   $ec,#$1b
0423: 8f 09 ed  mov   $ed,#$09
0426: 8f 13 ee  mov   $ee,#$13
0429: 8f 3a ef  mov   $ef,#$3a
042c: 8f 50 e8  mov   $e8,#$50
042f: 8f c0 e9  mov   $e9,#$c0
0432: 8f 80 d1  mov   $d1,#$80
0435: e8 80     mov   a,#$80
0437: c4 f6     mov   $f6,a
0439: 64 f6     cmp   a,$f6
043b: d0 fc     bne   $0439
043d: e8 00     mov   a,#$00
043f: c4 f4     mov   $f4,a
0441: c4 f5     mov   $f5,a
0443: 3f bf 04  call  $04bf
0446: 3f ae 05  call  $05ae
0449: 8f 6c f2  mov   $f2,#$6c
044c: 8f 33 f3  mov   $f3,#$33
044f: cd 00     mov   x,#$00
0451: 3f 5a 07  call  $075a
0454: 3f 8b 06  call  $068b
0457: 9d        mov   x,sp
0458: c8 22     cmp   x,#$22
045a: 90 29     bcc   $0485
045c: 3d        inc   x
045d: d0 26     bne   $0485
045f: e9 13 01  mov   x,$0113
0462: d8 f7     mov   $f7,x
0464: 3f 7c 05  call  $057c
0467: e5 44 03  mov   a,$0344
046a: 60        clrc
046b: 84 ff     adc   a,$ff
046d: c5 44 03  mov   $0344,a
0470: 68 04     cmp   a,#$04
0472: 90 e3     bcc   $0457
0474: 80        setc
0475: a8 04     sbc   a,#$04
0477: c5 44 03  mov   $0344,a
047a: e5 11 01  mov   a,$0111
047d: f0 00     beq   $047f
047f: 3f 8b 06  call  $068b
0482: 5f 57 04  jmp   $0457

0485: 7d        mov   a,x
0486: 9c        dec   a
0487: cd 89     mov   x,#$89
0489: 5f c9 13  jmp   $13c9

048c: e4 ff     mov   a,$ff
048e: e4 e1     mov   a,$e1
0490: eb ff     mov   y,$ff
0492: f0 fc     beq   $0490
0494: 80        setc
0495: a8 08     sbc   a,#$08
0497: 10 02     bpl   $049b
0499: e8 00     mov   a,#$00
049b: 8f 0c f2  mov   $f2,#$0c
049e: c4 f3     mov   $f3,a
04a0: 8f 1c f2  mov   $f2,#$1c
04a3: c4 f3     mov   $f3,a
04a5: 08 00     or    a,#$00
04a7: d0 e7     bne   $0490
04a9: c4 f6     mov   $f6,a
04ab: e8 ff     mov   a,#$ff
04ad: 8f 5c f2  mov   $f2,#$5c
04b0: c4 f3     mov   $f3,a
04b2: e8 80     mov   a,#$80
04b4: c4 f1     mov   $f1,a
04b6: 8f 6c f2  mov   $f2,#$6c
04b9: 8f e0 f3  mov   $f3,#$e0
04bc: 5f c0 ff  jmp   $ffc0

04bf: 8f 00 f1  mov   $f1,#$00
04c2: 00        nop
04c3: 00        nop
04c4: 00        nop
04c5: 00        nop
04c6: 8f 85 fc  mov   $fc,#$85
04c9: 8f 04 f1  mov   $f1,#$04
04cc: 6f        ret

04cd: cd 02     mov   x,#$02
04cf: 5f c9 13  jmp   $13c9

04d2: fd        mov   y,a
04d3: 68 22     cmp   a,#$22
04d5: b0 f6     bcs   $04cd
04d7: cd 0e     mov   x,#$0e
04d9: f6 6a 15  mov   a,$156a+y
04dc: 30 0e     bmi   $04ec
04de: dd        mov   a,y
04df: 75 01 01  cmp   a,$0101+x
04e2: f0 06     beq   $04ea
04e4: 1d        dec   x
04e5: 1d        dec   x
04e6: 10 f7     bpl   $04df
04e8: 2f 02     bra   $04ec
04ea: 2f 2c     bra   $0518
04ec: cd 0e     mov   x,#$0e
04ee: f5 f1 02  mov   a,$02f1+x
04f1: f0 25     beq   $0518
04f3: 1d        dec   x
04f4: 1d        dec   x
04f5: 10 f7     bpl   $04ee
04f7: cd 0e     mov   x,#$0e
04f9: e8 ff     mov   a,#$ff
04fb: 75 c1 02  cmp   a,$02c1+x
04fe: 90 05     bcc   $0505
0500: f5 c1 02  mov   a,$02c1+x
0503: d8 e5     mov   $e5,x
0505: 1d        dec   x
0506: 1d        dec   x
0507: 10 f2     bpl   $04fb
0509: f8 e5     mov   x,$e5
050b: c4 e5     mov   $e5,a
050d: f6 6a 15  mov   a,$156a+y
0510: 28 7f     and   a,#$7f
0512: 64 e5     cmp   a,$e5
0514: b0 02     bcs   $0518
0516: 60        clrc
0517: 6f        ret

0518: dd        mov   a,y
0519: d5 01 01  mov   $0101+x,a
051c: f6 6a 15  mov   a,$156a+y
051f: 28 7f     and   a,#$7f
0521: d5 c1 02  mov   $02c1+x,a
0524: 3f 16 08  call  $0816
0527: f6 26 15  mov   a,$1526+y
052a: d4 30     mov   $30+x,a
052c: f6 48 15  mov   a,$1548+y
052f: d4 31     mov   $31+x,a
0531: e4 e9     mov   a,$e9
0533: d5 66 03  mov   $0366+x,a
0536: 80        setc
0537: 6f        ret

0538: cd 0e     mov   x,#$0e
053a: e8 ff     mov   a,#$ff
053c: 2d        push  a
053d: f5 f1 02  mov   a,$02f1+x
0540: fd        mov   y,a
0541: ae        pop   a
0542: fc        inc   y
0543: dc        dec   y
0544: f0 06     beq   $054c
0546: 74 80     cmp   a,$80+x
0548: 90 02     bcc   $054c
054a: f4 80     mov   a,$80+x
054c: 1d        dec   x
054d: 1d        dec   x
054e: 10 ec     bpl   $053c
0550: 68 04     cmp   a,#$04
0552: 90 22     bcc   $0576
0554: 80        setc
0555: a8 02     sbc   a,#$02
0557: 68 14     cmp   a,#$14
0559: 90 02     bcc   $055d
055b: e8 14     mov   a,#$14
055d: cd 0e     mov   x,#$0e
055f: c4 e5     mov   $e5,a
0561: f4 80     mov   a,$80+x
0563: 80        setc
0564: a4 e5     sbc   a,$e5
0566: d4 80     mov   $80+x,a
0568: 7d        mov   a,x
0569: c4 d9     mov   $d9,a
056b: 1c        asl   a
056c: 1c        asl   a
056d: 1c        asl   a
056e: 80        setc
056f: a4 d9     sbc   a,$d9
0571: fd        mov   y,a
0572: 1d        dec   x
0573: 1d        dec   x
0574: 10 eb     bpl   $0561
0576: 6f        ret

0577: cd 80     mov   x,#$80
0579: 5f c9 13  jmp   $13c9

057c: 3f be 05  call  $05be
057f: e4 f6     mov   a,$f6
0581: 28 c0     and   a,#$c0
0583: 64 d1     cmp   a,$d1
0585: f0 14     beq   $059b
0587: fd        mov   y,a
0588: c4 d1     mov   $d1,a
058a: e4 f6     mov   a,$f6
058c: 28 3f     and   a,#$3f
058e: 5d        mov   x,a
058f: f5 19 06  mov   a,$0619+x
0592: 2d        push  a
0593: f5 0d 06  mov   a,$060d+x
0596: 2d        push  a
0597: e4 f7     mov   a,$f7
0599: cb f6     mov   $f6,y
059b: 60        clrc
059c: 6f        ret

059d: d8 f4     mov   $f4,x
059f: 3d        inc   x
05a0: d0 03     bne   $05a5
05a2: 5f 8c 04  jmp   $048c

05a5: e4 f4     mov   a,$f4
05a7: d0 fc     bne   $05a5
05a9: c4 f4     mov   $f4,a
05ab: 3d        inc   x
05ac: d0 0c     bne   $05ba
05ae: 8f 80 db  mov   $db,#$80
05b1: 8f 39 dc  mov   $dc,#$39
05b4: e8 00     mov   a,#$00
05b6: c5 10 01  mov   $0110,a
05b9: 6f        ret

05ba: ac 11 01  inc   $0111
05bd: 6f        ret

05be: f8 f4     mov   x,$f4
05c0: f0 4a     beq   $060c
05c2: f8 f4     mov   x,$f4
05c4: 30 d7     bmi   $059d
05c6: 8d 00     mov   y,#$00
05c8: e4 f5     mov   a,$f5
05ca: d8 f4     mov   $f4,x
05cc: d7 db     mov   ($db)+y,a
05ce: 3a db     incw  $db
05d0: 3e f4     cmp   x,$f4
05d2: f0 fc     beq   $05d0
05d4: f8 f4     mov   x,$f4
05d6: d0 f0     bne   $05c8
05d8: d8 f4     mov   $f4,x
05da: 78 b0 db  cmp   $db,#$b0
05dd: d0 0b     bne   $05ea
05df: 78 3f dc  cmp   $dc,#$3f
05e2: d0 06     bne   $05ea
05e4: 8f 80 db  mov   $db,#$80
05e7: 8f 39 dc  mov   $dc,#$39
05ea: e5 a7 3f  mov   a,$3fa7
05ed: 28 01     and   a,#$01
05ef: 68 01     cmp   a,#$01
05f1: f0 08     beq   $05fb
05f3: e5 a7 3f  mov   a,$3fa7
05f6: 08 03     or    a,#$03
05f8: c5 a7 3f  mov   $3fa7,a
05fb: e5 10 01  mov   a,$0110
05fe: d0 0c     bne   $060c
0600: ac 10 01  inc   $0110
0603: e8 00     mov   a,#$00
0605: c5 11 01  mov   $0111,a
0608: 60        clrc
0609: 5f 38 06  jmp   $0638

060c: 60        clrc
060d: 6f        ret

; $0626
; $0638
; $0643
; $0659
; $065e
; $0663
; $067b
; $067e
; $0681
; $0684
; $0670
; $0687
060e: db $26,$38,$43,$59,$5e,$63,$7b,$7e,$81,$84,$70,$87
061a: db $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06

0626: 5d        mov   x,a
0627: 1d        dec   x
0628: d8 e4     mov   $e4,x
062a: 3f 5a 07  call  $075a
062d: 8f 00 e0  mov   $e0,#$00
0630: 8f 7f e1  mov   $e1,#$7f
0633: 3f bf 04  call  $04bf
0636: 80        setc
0637: 6f        ret

0638: 3f d2 04  call  $04d2
063b: 8f 00 e0  mov   $e0,#$00
063e: 8f 7f e1  mov   $e1,#$7f
0641: 60        clrc
0642: 6f        ret

0643: 8d 00     mov   y,#$00
0645: bc        inc   a
0646: 9c        dec   a
0647: 10 01     bpl   $064a
0649: dc        dec   y
064a: cb e3     mov   $e3,y
064c: 1c        asl   a
064d: 2b e3     rol   $e3
064f: 1c        asl   a
0650: 2b e3     rol   $e3
0652: 1c        asl   a
0653: 2b e3     rol   $e3
0655: c4 e2     mov   $e2,a
0657: 60        clrc
0658: 6f        ret

0659: 8f 55 f5  mov   $f5,#$55
065c: 60        clrc
065d: 6f        ret

065e: 3f 26 06  call  $0626
0661: 60        clrc
0662: 6f        ret

0663: 3f c4 10  call  $10c4
0666: 48 ff     eor   a,#$ff
0668: 36 3c 03  and   a,$033c+y
066b: d6 3c 03  mov   $033c+y,a
066e: 60        clrc
066f: 6f        ret

0670: 3f c4 10  call  $10c4
0673: 16 3c 03  or    a,$033c+y
0676: d6 3c 03  mov   $033c+y,a
0679: 60        clrc
067a: 6f        ret

067b: c4 e8     mov   $e8,a
067d: 6f        ret

067e: c4 e9     mov   $e9,a
0680: 6f        ret

0681: c4 ea     mov   $ea,a
0683: 6f        ret

0684: c4 d0     mov   $d0,a
0686: 6f        ret

0687: c5 e5 11  mov   $11e5,a
068a: 6f        ret

068b: e4 eb     mov   a,$eb
068d: f0 03     beq   $0692
068f: 3f 38 05  call  $0538
0692: ab e6     inc   $e6
0694: ba e2     movw  ya,$e2
0696: f0 24     beq   $06bc
0698: 30 12     bmi   $06ac
069a: ba e0     movw  ya,$e0
069c: 7a e2     addw  ya,$e2
069e: 10 08     bpl   $06a8
06a0: 8f 00 e2  mov   $e2,#$00
06a3: 8f 00 e3  mov   $e3,#$00
06a6: 8d 7f     mov   y,#$7f
06a8: da e0     movw  $e0,ya
06aa: 2f 10     bra   $06bc
06ac: ba e0     movw  ya,$e0
06ae: 7a e2     addw  ya,$e2
06b0: 10 08     bpl   $06ba
06b2: 8f 00 e2  mov   $e2,#$00
06b5: 8f 00 e3  mov   $e3,#$00
06b8: 8d 00     mov   y,#$00
06ba: da e0     movw  $e0,ya
06bc: 8f 4c f2  mov   $f2,#$4c
06bf: fa d4 f3  mov   ($f3),($d4)
06c2: 8f 00 d4  mov   $d4,#$00
06c5: 8f 3d f2  mov   $f2,#$3d
06c8: fa d6 f3  mov   ($f3),($d6)
06cb: cd 00     mov   x,#$00
06cd: 3f 1f 09  call  $091f
06d0: b0 2f     bcs   $0701
06d2: cd 02     mov   x,#$02
06d4: 3f 1f 09  call  $091f
06d7: b0 28     bcs   $0701
06d9: cd 04     mov   x,#$04
06db: 3f 1f 09  call  $091f
06de: b0 21     bcs   $0701
06e0: cd 06     mov   x,#$06
06e2: 3f 1f 09  call  $091f
06e5: b0 1a     bcs   $0701
06e7: cd 08     mov   x,#$08
06e9: 3f 1f 09  call  $091f
06ec: b0 13     bcs   $0701
06ee: cd 0a     mov   x,#$0a
06f0: 3f 1f 09  call  $091f
06f3: b0 0c     bcs   $0701
06f5: cd 0c     mov   x,#$0c
06f7: 3f 1f 09  call  $091f
06fa: b0 05     bcs   $0701
06fc: cd 0e     mov   x,#$0e
06fe: 3f 1f 09  call  $091f
0701: 8f 5c f2  mov   $f2,#$5c
0704: fa d5 f3  mov   ($f3),($d5)
0707: 8f 00 d5  mov   $d5,#$00
070a: e4 e1     mov   a,$e1
070c: 8f 0c f2  mov   $f2,#$0c
070f: c4 f3     mov   $f3,a
0711: 8f 1c f2  mov   $f2,#$1c
0714: c4 f3     mov   $f3,a
0716: 8d 00     mov   y,#$00
0718: cd 00     mov   x,#$00
071a: 3f 2e 12  call  $122e
071d: 8d 02     mov   y,#$02
071f: cd 10     mov   x,#$10
0721: 3f 2e 12  call  $122e
0724: 8d 04     mov   y,#$04
0726: cd 20     mov   x,#$20
0728: 3f 2e 12  call  $122e
072b: 8d 06     mov   y,#$06
072d: cd 30     mov   x,#$30
072f: 3f 2e 12  call  $122e
0732: 8d 08     mov   y,#$08
0734: cd 40     mov   x,#$40
0736: 3f 2e 12  call  $122e
0739: 8d 0a     mov   y,#$0a
073b: cd 50     mov   x,#$50
073d: 3f 2e 12  call  $122e
0740: 8d 0c     mov   y,#$0c
0742: cd 60     mov   x,#$60
0744: 3f 2e 12  call  $122e
0747: 8d 0e     mov   y,#$0e
0749: cd 70     mov   x,#$70
074b: 3f 2e 12  call  $122e
074e: 8f 5c f2  mov   $f2,#$5c
0751: 8f 00 f3  mov   $f3,#$00
0754: 6f        ret

0755: cd 01     mov   x,#$01
0757: 5f c9 13  jmp   $13c9

075a: 7d        mov   a,x
075b: 68 02     cmp   a,#$02
075d: b0 f6     bcs   $0755
075f: fd        mov   y,a
0760: cd 00     mov   x,#$00
0762: f6 02 14  mov   a,$1402+y
0765: f0 0a     beq   $0771
0767: c4 31     mov   $31,a
0769: f6 00 14  mov   a,$1400+y
076c: c4 30     mov   $30,a
076e: 3f 09 08  call  $0809
0771: 3d        inc   x
0772: 3d        inc   x
0773: f6 06 14  mov   a,$1406+y
0776: f0 0a     beq   $0782
0778: d4 31     mov   $31+x,a
077a: f6 04 14  mov   a,$1404+y
077d: d4 30     mov   $30+x,a
077f: 3f 09 08  call  $0809
0782: 3d        inc   x
0783: 3d        inc   x
0784: f6 0a 14  mov   a,$140a+y
0787: f0 0a     beq   $0793
0789: d4 31     mov   $31+x,a
078b: f6 08 14  mov   a,$1408+y
078e: d4 30     mov   $30+x,a
0790: 3f 09 08  call  $0809
0793: 3d        inc   x
0794: 3d        inc   x
0795: f6 0e 14  mov   a,$140e+y
0798: f0 0a     beq   $07a4
079a: d4 31     mov   $31+x,a
079c: f6 0c 14  mov   a,$140c+y
079f: d4 30     mov   $30+x,a
07a1: 3f 09 08  call  $0809
07a4: 3d        inc   x
07a5: 3d        inc   x
07a6: f6 12 14  mov   a,$1412+y
07a9: f0 0a     beq   $07b5
07ab: d4 31     mov   $31+x,a
07ad: f6 10 14  mov   a,$1410+y
07b0: d4 30     mov   $30+x,a
07b2: 3f 09 08  call  $0809
07b5: 3d        inc   x
07b6: 3d        inc   x
07b7: f6 16 14  mov   a,$1416+y
07ba: f0 0a     beq   $07c6
07bc: d4 31     mov   $31+x,a
07be: f6 14 14  mov   a,$1414+y
07c1: d4 30     mov   $30+x,a
07c3: 3f 09 08  call  $0809
07c6: 3d        inc   x
07c7: 3d        inc   x
07c8: f6 1a 14  mov   a,$141a+y
07cb: f0 0a     beq   $07d7
07cd: d4 31     mov   $31+x,a
07cf: f6 18 14  mov   a,$1418+y
07d2: d4 30     mov   $30+x,a
07d4: 3f 09 08  call  $0809
07d7: 3d        inc   x
07d8: 3d        inc   x
07d9: f6 1e 14  mov   a,$141e+y
07dc: f0 0a     beq   $07e8
07de: d4 31     mov   $31+x,a
07e0: f6 1c 14  mov   a,$141c+y
07e3: d4 30     mov   $30+x,a
07e5: 3f 09 08  call  $0809
07e8: 3d        inc   x
07e9: 3d        inc   x
07ea: dd        mov   a,y
07eb: 5d        mov   x,a
07ec: 1d        dec   x
07ed: f5 20 14  mov   a,$1420+x
07f0: c4 d9     mov   $d9,a
07f2: f5 21 14  mov   a,$1421+x
07f5: c4 da     mov   $da,a
07f7: f0 0f     beq   $0808
07f9: 8d fb     mov   y,#$fb
07fb: f7 d9     mov   a,($d9)+y
07fd: d6 29 14  mov   $1429+y,a
0800: dc        dec   y
0801: d0 f8     bne   $07fb
0803: f7 d9     mov   a,($d9)+y
0805: d6 29 14  mov   $1429+y,a
0808: 6f        ret

0809: e8 ff     mov   a,#$ff
080b: d5 c1 02  mov   $02c1+x,a
080e: d5 01 01  mov   $0101+x,a
0811: e4 e8     mov   a,$e8
0813: d5 66 03  mov   $0366+x,a
0816: e8 00     mov   a,#$00
0818: d5 00 01  mov   $0100+x,a
081b: d4 00     mov   $00+x,a
081d: d4 01     mov   $01+x,a
081f: d4 10     mov   $10+x,a
0821: d4 11     mov   $11+x,a
0823: d4 20     mov   $20+x,a
0825: d4 21     mov   $21+x,a
0827: d4 51     mov   $51+x,a
0829: d4 60     mov   $60+x,a
082b: d4 70     mov   $70+x,a
082d: d4 71     mov   $71+x,a
082f: d4 81     mov   $81+x,a
0831: d4 90     mov   $90+x,a
0833: d4 91     mov   $91+x,a
0835: d4 a0     mov   $a0+x,a
0837: d4 a1     mov   $a1+x,a
0839: d4 b0     mov   $b0+x,a
083b: d4 b1     mov   $b1+x,a
083d: d4 c0     mov   $c0+x,a
083f: d4 c1     mov   $c1+x,a
0841: d5 00 02  mov   $0200+x,a
0844: d5 01 02  mov   $0201+x,a
0847: d5 10 02  mov   $0210+x,a
084a: d5 11 02  mov   $0211+x,a
084d: d5 20 02  mov   $0220+x,a
0850: d5 21 02  mov   $0221+x,a
0853: d5 30 02  mov   $0230+x,a
0856: d5 31 02  mov   $0231+x,a
0859: d5 40 02  mov   $0240+x,a
085c: d5 41 02  mov   $0241+x,a
085f: d5 50 02  mov   $0250+x,a
0862: d5 51 02  mov   $0251+x,a
0865: d5 60 02  mov   $0260+x,a
0868: d5 61 02  mov   $0261+x,a
086b: d5 70 02  mov   $0270+x,a
086e: d5 71 02  mov   $0271+x,a
0871: d5 80 02  mov   $0280+x,a
0874: d5 81 02  mov   $0281+x,a
0877: d5 90 02  mov   $0290+x,a
087a: d5 91 02  mov   $0291+x,a
087d: d5 a0 02  mov   $02a0+x,a
0880: d5 a1 02  mov   $02a1+x,a
0883: d5 b0 02  mov   $02b0+x,a
0886: d5 b1 02  mov   $02b1+x,a
0889: d5 c0 02  mov   $02c0+x,a
088c: d5 d0 02  mov   $02d0+x,a
088f: d5 d1 02  mov   $02d1+x,a
0892: d5 e0 02  mov   $02e0+x,a
0895: d5 e1 02  mov   $02e1+x,a
0898: d5 f0 02  mov   $02f0+x,a
089b: d5 45 03  mov   $0345+x,a
089e: d5 65 03  mov   $0365+x,a
08a1: d5 12 01  mov   $0112+x,a
08a4: d5 13 01  mov   $0113+x,a
08a7: e8 ff     mov   a,#$ff
08a9: d5 f1 02  mov   $02f1+x,a
08ac: 7d        mov   a,x
08ad: 1c        asl   a
08ae: 1c        asl   a
08af: 1c        asl   a
08b0: d4 50     mov   $50+x,a
08b2: e8 01     mov   a,#$01
08b4: d4 80     mov   $80+x,a
08b6: f5 e1 12  mov   a,$12e1+x
08b9: 24 d7     and   a,$d7
08bb: c4 d7     mov   $d7,a
08bd: f5 e1 12  mov   a,$12e1+x
08c0: 24 d6     and   a,$d6
08c2: c4 d6     mov   $d6,a
08c4: f5 e1 12  mov   a,$12e1+x
08c7: 24 d8     and   a,$d8
08c9: c4 d8     mov   $d8,a
08cb: f5 e0 12  mov   a,$12e0+x
08ce: 04 d5     or    a,$d5
08d0: c4 d5     mov   $d5,a
08d2: 6f        ret

08d3: e8 00     mov   a,#$00
08d5: 8d 00     mov   y,#$00
08d7: d6 00 00  mov   $0000+y,a
08da: d6 00 01  mov   $0100+y,a
08dd: fc        inc   y
08de: ad f0     cmp   y,#$f0
08e0: d0 f5     bne   $08d7
08e2: bc        inc   a
08e3: 8d 14     mov   y,#$14
08e5: d6 80 00  mov   $0080+y,a
08e8: dc        dec   y
08e9: dc        dec   y
08ea: 10 f9     bpl   $08e5
08ec: 9c        dec   a
08ed: 8d 00     mov   y,#$00
08ef: d6 00 02  mov   $0200+y,a
08f2: d6 00 03  mov   $0300+y,a
08f5: dc        dec   y
08f6: d0 f7     bne   $08ef
08f8: 8f 00 db  mov   $db,#$00
08fb: 8f 03 dc  mov   $dc,#$03
08fe: 8f 04 d9  mov   $d9,#$04
0901: 8f 00 da  mov   $da,#$00
0904: 8d 00     mov   y,#$00
0906: e8 00     mov   a,#$00
0908: d7 db     mov   ($db)+y,a
090a: fc        inc   y
090b: d0 02     bne   $090f
090d: ab dc     inc   $dc
090f: 8b d9     dec   $d9
0911: f8 d9     mov   x,$d9
0913: 3d        inc   x
0914: d0 f0     bne   $0906
0916: 8b da     dec   $da
0918: f8 da     mov   x,$da
091a: 3d        inc   x
091b: d0 e9     bne   $0906
091d: 6f        ret

091e: 6f        ret

091f: f5 f1 02  mov   a,$02f1+x
0922: 30 03     bmi   $0927
0924: 5f 7c 05  jmp   $057c

0927: e8 01     mov   a,#$01
0929: d5 65 03  mov   $0365+x,a
092c: f5 e0 12  mov   a,$12e0+x
092f: c4 d2     mov   $d2,a
0931: f5 e1 12  mov   a,$12e1+x
0934: c4 d3     mov   $d3,a
0936: 9b 80     dec   $80+x
0938: d0 1c     bne   $0956
093a: 3f 2d 0d  call  $0d2d
093d: 10 14     bpl   $0953
093f: 68 c3     cmp   a,#$c3
0941: b0 0b     bcs   $094e
0943: 1c        asl   a
0944: fd        mov   y,a
0945: f6 39 0d  mov   a,$0d39+y
0948: 2d        push  a
0949: f6 38 0d  mov   a,$0d38+y
094c: 2d        push  a
094d: 6f        ret

094e: cd 81     mov   x,#$81
0950: 5f c9 13  jmp   $13c9

0953: 3f 11 0c  call  $0c11
0956: 3f a3 09  call  $09a3
0959: 3f 2e 0a  call  $0a2e
095c: 3f 54 0a  call  $0a54
095f: 3f a2 0a  call  $0aa2
0962: 3f ed 0a  call  $0aed
0965: 3f 35 0b  call  $0b35
0968: f5 60 02  mov   a,$0260+x
096b: 60        clrc
096c: 95 20 02  adc   a,$0220+x
096f: 0d        push  psw
0970: 60        clrc
0971: 95 c0 02  adc   a,$02c0+x
0974: d4 10     mov   $10+x,a
0976: f5 61 02  mov   a,$0261+x
0979: 95 21 02  adc   a,$0221+x
097c: 8e        pop   psw
097d: 88 00     adc   a,#$00
097f: d4 11     mov   $11+x,a
0981: 5f 7c 05  jmp   $057c

0984: f5 60 02  mov   a,$0260+x
0987: 80        setc
0988: b5 d1 02  sbc   a,$02d1+x
098b: c4 d9     mov   $d9,a
098d: f5 61 02  mov   a,$0261+x
0990: b5 e0 02  sbc   a,$02e0+x
0993: 04 d9     or    a,$d9
0995: 6f        ret

0996: f5 d1 02  mov   a,$02d1+x
0999: d5 60 02  mov   $0260+x,a
099c: f5 e0 02  mov   a,$02e0+x
099f: d5 61 02  mov   $0261+x,a
09a2: 6f        ret

09a3: f5 00 01  mov   a,$0100+x
09a6: f0 0a     beq   $09b2
09a8: e4 ea     mov   a,$ea
09aa: d5 45 03  mov   $0345+x,a
09ad: e4 d0     mov   a,$d0
09af: d5 46 03  mov   $0346+x,a
09b2: f5 45 03  mov   a,$0345+x
09b5: f0 6b     beq   $0a22
09b7: fd        mov   y,a
09b8: f5 46 03  mov   a,$0346+x
09bb: cf        mul   ya
09bc: dd        mov   a,y
09bd: c4 e5     mov   $e5,a
09bf: f5 45 03  mov   a,$0345+x
09c2: 80        setc
09c3: a4 e5     sbc   a,$e5
09c5: 1c        asl   a
09c6: 9c        dec   a
09c7: d4 01     mov   $01+x,a
09c9: e4 e5     mov   a,$e5
09cb: 1c        asl   a
09cc: d4 00     mov   $00+x,a
09ce: f5 46 03  mov   a,$0346+x
09d1: 10 07     bpl   $09da
09d3: f5 45 03  mov   a,$0345+x
09d6: d4 00     mov   $00+x,a
09d8: 2f 05     bra   $09df
09da: f5 45 03  mov   a,$0345+x
09dd: d4 01     mov   $01+x,a
09df: e4 e6     mov   a,$e6
09e1: 28 0f     and   a,#$0f
09e3: d0 17     bne   $09fc
09e5: f5 56 03  mov   a,$0356+x
09e8: f0 12     beq   $09fc
09ea: fd        mov   y,a
09eb: f5 45 03  mov   a,$0345+x
09ee: cf        mul   ya
09ef: dd        mov   a,y
09f0: d5 45 03  mov   $0345+x,a
09f3: d0 07     bne   $09fc
09f5: d4 00     mov   $00+x,a
09f7: d4 01     mov   $01+x,a
09f9: d5 56 03  mov   $0356+x,a
09fc: f5 55 03  mov   a,$0355+x
09ff: 30 0a     bmi   $0a0b
0a01: 60        clrc
0a02: 95 46 03  adc   a,$0346+x
0a05: 90 18     bcc   $0a1f
0a07: 8d ff     mov   y,#$ff
0a09: 2f 08     bra   $0a13
0a0b: 60        clrc
0a0c: 95 46 03  adc   a,$0346+x
0a0f: b0 0e     bcs   $0a1f
0a11: 8d 00     mov   y,#$00
0a13: f5 55 03  mov   a,$0355+x
0a16: 48 ff     eor   a,#$ff
0a18: 60        clrc
0a19: 88 01     adc   a,#$01
0a1b: d5 55 03  mov   $0355+x,a
0a1e: dd        mov   a,y
0a1f: d5 46 03  mov   $0346+x,a
0a22: 6f        ret

0a23: 80        setc
0a24: a8 40     sbc   a,#$40
0a26: 30 02     bmi   $0a2a
0a28: 1c        asl   a
0a29: 6f        ret

0a2a: 1c        asl   a
0a2b: 08 80     or    a,#$80
0a2d: 6f        ret

0a2e: f5 91 02  mov   a,$0291+x
0a31: f0 20     beq   $0a53
0a33: 9b 91     dec   $91+x
0a35: d0 1c     bne   $0a53
0a37: f5 b0 02  mov   a,$02b0+x
0a3a: 75 90 02  cmp   a,$0290+x
0a3d: f0 08     beq   $0a47
0a3f: d5 90 02  mov   $0290+x,a
0a42: f5 a1 02  mov   a,$02a1+x
0a45: 2f 0a     bra   $0a51
0a47: 60        clrc
0a48: 95 91 02  adc   a,$0291+x
0a4b: d5 90 02  mov   $0290+x,a
0a4e: f5 a0 02  mov   a,$02a0+x
0a51: d4 91     mov   $91+x,a
0a53: 6f        ret

0a54: f4 70     mov   a,$70+x
0a56: f0 04     beq   $0a5c
0a58: 9b 70     dec   $70+x
0a5a: 2f 45     bra   $0aa1
0a5c: f5 10 02  mov   a,$0210+x
0a5f: f0 40     beq   $0aa1
0a61: 30 15     bmi   $0a78
0a63: f5 00 02  mov   a,$0200+x
0a66: 60        clrc
0a67: 95 20 02  adc   a,$0220+x
0a6a: d5 20 02  mov   $0220+x,a
0a6d: e8 00     mov   a,#$00
0a6f: 95 21 02  adc   a,$0221+x
0a72: d5 21 02  mov   $0221+x,a
0a75: 5f 8d 0a  jmp   $0a8d

0a78: f5 00 02  mov   a,$0200+x
0a7b: 48 ff     eor   a,#$ff
0a7d: bc        inc   a
0a7e: 60        clrc
0a7f: 95 20 02  adc   a,$0220+x
0a82: d5 20 02  mov   $0220+x,a
0a85: e8 ff     mov   a,#$ff
0a87: 95 21 02  adc   a,$0221+x
0a8a: d5 21 02  mov   $0221+x,a
0a8d: 9b 71     dec   $71+x
0a8f: d0 10     bne   $0aa1
0a91: f5 01 02  mov   a,$0201+x
0a94: d4 71     mov   $71+x,a
0a96: f0 09     beq   $0aa1
0a98: f5 10 02  mov   a,$0210+x
0a9b: 48 ff     eor   a,#$ff
0a9d: bc        inc   a
0a9e: d5 10 02  mov   $0210+x,a
0aa1: 6f        ret

0aa2: f5 51 02  mov   a,$0251+x
0aa5: d0 05     bne   $0aac
0aa7: 3f 96 09  call  $0996
0aaa: 2f 40     bra   $0aec
0aac: 3f 84 09  call  $0984
0aaf: f0 3b     beq   $0aec
0ab1: 90 1f     bcc   $0ad2
0ab3: f5 51 02  mov   a,$0251+x
0ab6: 48 ff     eor   a,#$ff
0ab8: bc        inc   a
0ab9: 60        clrc
0aba: 95 60 02  adc   a,$0260+x
0abd: d5 60 02  mov   $0260+x,a
0ac0: f5 61 02  mov   a,$0261+x
0ac3: 88 ff     adc   a,#$ff
0ac5: d5 61 02  mov   $0261+x,a
0ac8: 3f 84 09  call  $0984
0acb: b0 1f     bcs   $0aec
0acd: 3f 96 09  call  $0996
0ad0: 2f 1a     bra   $0aec
0ad2: f5 60 02  mov   a,$0260+x
0ad5: 60        clrc
0ad6: 95 51 02  adc   a,$0251+x
0ad9: d5 60 02  mov   $0260+x,a
0adc: f5 61 02  mov   a,$0261+x
0adf: 88 00     adc   a,#$00
0ae1: d5 61 02  mov   $0261+x,a
0ae4: 3f 84 09  call  $0984
0ae7: 90 03     bcc   $0aec
0ae9: 3f 96 09  call  $0996
0aec: 6f        ret

0aed: f5 d0 02  mov   a,$02d0+x
0af0: f0 42     beq   $0b34
0af2: f4 51     mov   a,$51+x
0af4: f0 1e     beq   $0b14
0af6: 9b 51     dec   $51+x
0af8: d0 1a     bne   $0b14
0afa: 3f f5 11  call  $11f5
0afd: 10 0e     bpl   $0b0d
0aff: 68 80     cmp   a,#$80
0b01: d0 06     bne   $0b09
0b03: f4 61     mov   a,$61+x
0b05: d4 60     mov   $60+x,a
0b07: 2f f1     bra   $0afa
0b09: 9b 60     dec   $60+x
0b0b: 2f 02     bra   $0b0f
0b0d: d4 21     mov   $21+x,a
0b0f: f5 41 02  mov   a,$0241+x
0b12: d4 51     mov   $51+x,a
0b14: f4 c1     mov   a,$c1+x
0b16: f0 1c     beq   $0b34
0b18: 74 80     cmp   a,$80+x
0b1a: d0 18     bne   $0b34
0b1c: f4 61     mov   a,$61+x
0b1e: d0 14     bne   $0b34
0b20: f4 40     mov   a,$40+x
0b22: c4 d9     mov   $d9,a
0b24: f4 41     mov   a,$41+x
0b26: c4 da     mov   $da,a
0b28: 8d ff     mov   y,#$ff
0b2a: fc        inc   y
0b2b: f7 d9     mov   a,($d9)+y
0b2d: 10 fb     bpl   $0b2a
0b2f: fc        inc   y
0b30: db 60     mov   $60+x,y
0b32: db 61     mov   $61+x,y
0b34: 6f        ret

0b35: f5 d0 02  mov   a,$02d0+x
0b38: d0 32     bne   $0b6c
0b3a: f4 80     mov   a,$80+x
0b3c: f0 10     beq   $0b4e
0b3e: 74 c1     cmp   a,$c1+x
0b40: d0 0c     bne   $0b4e
0b42: e8 03     mov   a,#$03
0b44: d4 a1     mov   $a1+x,a
0b46: f4 21     mov   a,$21+x
0b48: d4 b1     mov   $b1+x,a
0b4a: e8 00     mov   a,#$00
0b4c: d4 b0     mov   $b0+x,a
0b4e: 9b a0     dec   $a0+x
0b50: d0 1a     bne   $0b6c
0b52: fb a1     mov   y,$a1+x
0b54: f6 72 0b  mov   a,$0b72+y
0b57: 2d        push  a
0b58: f6 6d 0b  mov   a,$0b6d+y
0b5b: 2d        push  a
0b5c: 7d        mov   a,x
0b5d: c4 e5     mov   $e5,a
0b5f: 1c        asl   a
0b60: 1c        asl   a
0b61: 1c        asl   a
0b62: 80        setc
0b63: a4 e5     sbc   a,$e5
0b65: 5c        lsr   a
0b66: fd        mov   y,a
0b67: f6 04 03  mov   a,$0304+y
0b6a: d4 a0     mov   $a0+x,a
0b6c: 6f        ret

0b6d: db $77,$a9,$e4,$e5,$10
0b72: db $0b,$0b,$0b,$0b,$0c

0b77: f6 07 03  mov   a,$0307+y
0b7a: 80        setc
0b7b: b6 05 03  sbc   a,$0305+y
0b7e: 6d        push  y
0b7f: 4d        push  x
0b80: 2d        push  a
0b81: f6 06 03  mov   a,$0306+y
0b84: f0 1f     beq   $0ba5
0b86: fb b0     mov   y,$b0+x
0b88: 5d        mov   x,a
0b89: 1d        dec   x
0b8a: ae        pop   a
0b8b: cf        mul   ya
0b8c: 9e        div   ya,x
0b8d: ce        pop   x
0b8e: ee        pop   y
0b8f: 60        clrc
0b90: 96 05 03  adc   a,$0305+y
0b93: d4 21     mov   $21+x,a
0b95: bb b0     inc   $b0+x
0b97: f6 06 03  mov   a,$0306+y
0b9a: 74 b0     cmp   a,$b0+x
0b9c: d0 06     bne   $0ba4
0b9e: bb a1     inc   $a1+x
0ba0: e8 00     mov   a,#$00
0ba2: d4 b0     mov   $b0+x,a
0ba4: 6f        ret

0ba5: ae        pop   a
0ba6: ce        pop   x
0ba7: ee        pop   y
0ba8: 6f        ret

0ba9: f6 07 03  mov   a,$0307+y
0bac: 80        setc
0bad: b6 09 03  sbc   a,$0309+y
0bb0: 6d        push  y
0bb1: 4d        push  x
0bb2: 2d        push  a
0bb3: f6 08 03  mov   a,$0308+y
0bb6: 2d        push  a
0bb7: 60        clrc
0bb8: b4 b0     sbc   a,$b0+x
0bba: f0 13     beq   $0bcf
0bbc: fd        mov   y,a
0bbd: ae        pop   a
0bbe: f0 20     beq   $0be0
0bc0: 5d        mov   x,a
0bc1: ae        pop   a
0bc2: cf        mul   ya
0bc3: 9e        div   ya,x
0bc4: ce        pop   x
0bc5: ee        pop   y
0bc6: 60        clrc
0bc7: 96 09 03  adc   a,$0309+y
0bca: d4 21     mov   $21+x,a
0bcc: bb b0     inc   $b0+x
0bce: 6f        ret

0bcf: ae        pop   a
0bd0: ae        pop   a
0bd1: ce        pop   x
0bd2: ee        pop   y
0bd3: f6 09 03  mov   a,$0309+y
0bd6: d4 21     mov   $21+x,a
0bd8: bb a1     inc   $a1+x
0bda: e8 00     mov   a,#$00
0bdc: d4 b0     mov   $b0+x,a
0bde: 6f        ret

0bdf: 6f        ret

0be0: ae        pop   a
0be1: ce        pop   x
0be2: ee        pop   y
0be3: 6f        ret

0be4: 6f        ret

0be5: f4 b1     mov   a,$b1+x
0be7: 6d        push  y
0be8: 4d        push  x
0be9: 2d        push  a
0bea: f6 0a 03  mov   a,$030a+y
0bed: 2d        push  a
0bee: 60        clrc
0bef: b4 b0     sbc   a,$b0+x
0bf1: f0 0f     beq   $0c02
0bf3: fd        mov   y,a
0bf4: ae        pop   a
0bf5: f0 16     beq   $0c0d
0bf7: 5d        mov   x,a
0bf8: ae        pop   a
0bf9: cf        mul   ya
0bfa: 9e        div   ya,x
0bfb: ce        pop   x
0bfc: ee        pop   y
0bfd: d4 21     mov   $21+x,a
0bff: bb b0     inc   $b0+x
0c01: 6f        ret

0c02: ae        pop   a
0c03: ae        pop   a
0c04: ce        pop   x
0c05: ee        pop   y
0c06: e8 00     mov   a,#$00
0c08: d4 21     mov   $21+x,a
0c0a: bb a1     inc   $a1+x
0c0c: 6f        ret

0c0d: ae        pop   a
0c0e: ce        pop   x
0c0f: ee        pop   y
0c10: 6f        ret

0c11: f0 53     beq   $0c66
0c13: 3f 75 0c  call  $0c75
0c16: fb 20     mov   y,$20+x
0c18: 60        clrc
0c19: 96 40 39  adc   a,$3940+y
0c1c: 5b c0     lsr   $c0+x
0c1e: b0 04     bcs   $0c24
0c20: 60        clrc
0c21: 95 40 02  adc   a,$0240+x
0c24: d5 b0 02  mov   $02b0+x,a
0c27: d5 90 02  mov   $0290+x,a
0c2a: fd        mov   y,a
0c2b: f5 80 02  mov   a,$0280+x
0c2e: d4 81     mov   $81+x,a
0c30: d0 05     bne   $0c37
0c32: db 90     mov   $90+x,y
0c34: 3f a5 0c  call  $0ca5
0c37: 3f ce 0c  call  $0cce
0c3a: f5 d0 02  mov   a,$02d0+x
0c3d: f0 0e     beq   $0c4d
0c3f: f5 e1 02  mov   a,$02e1+x
0c42: d0 09     bne   $0c4d
0c44: d4 60     mov   $60+x,a
0c46: d4 61     mov   $61+x,a
0c48: f5 41 02  mov   a,$0241+x
0c4b: d4 51     mov   $51+x,a
0c4d: f5 a1 02  mov   a,$02a1+x
0c50: d4 91     mov   $91+x,a
0c52: 3f fd 0c  call  $0cfd
0c55: f5 f0 02  mov   a,$02f0+x
0c58: d0 0c     bne   $0c66
0c5a: e4 d2     mov   a,$d2
0c5c: 04 d4     or    a,$d4
0c5e: c4 d4     mov   $d4,a
0c60: e4 d2     mov   a,$d2
0c62: 04 d5     or    a,$d5
0c64: c4 d5     mov   $d5,a
0c66: f5 12 01  mov   a,$0112+x
0c69: f0 03     beq   $0c6e
0c6b: 3f 26 0d  call  $0d26
0c6e: 3f 11 0d  call  $0d11
0c71: 3f e8 0c  call  $0ce8
0c74: 6f        ret

0c75: fd        mov   y,a
0c76: f5 13 01  mov   a,$0113+x
0c79: f0 28     beq   $0ca3
0c7b: dd        mov   a,y
0c7c: 80        setc
0c7d: a8 12     sbc   a,#$12
0c7f: 1c        asl   a
0c80: 1c        asl   a
0c81: fd        mov   y,a
0c82: f4 40     mov   a,$40+x
0c84: c4 d9     mov   $d9,a
0c86: f4 41     mov   a,$41+x
0c88: c4 da     mov   $da,a
0c8a: f7 d9     mov   a,($d9)+y
0c8c: d4 20     mov   $20+x,a
0c8e: fc        inc   y
0c8f: f7 d9     mov   a,($d9)+y
0c91: 2d        push  a
0c92: fc        inc   y
0c93: f7 d9     mov   a,($d9)+y
0c95: d5 46 03  mov   $0346+x,a
0c98: fc        inc   y
0c99: f7 d9     mov   a,($d9)+y
0c9b: fd        mov   y,a
0c9c: ae        pop   a
0c9d: 6d        push  y
0c9e: 3f 8a 0f  call  $0f8a
0ca1: ae        pop   a
0ca2: 6f        ret

0ca3: dd        mov   a,y
0ca4: 6f        ret

0ca5: f6 1d 13  mov   a,$131d+y
0ca8: c4 d9     mov   $d9,a
0caa: f6 72 13  mov   a,$1372+y
0cad: c4 da     mov   $da,a
0caf: fb 20     mov   y,$20+x
0cb1: f6 00 39  mov   a,$3900+y
0cb4: fd        mov   y,a
0cb5: 6d        push  y
0cb6: e4 d9     mov   a,$d9
0cb8: cf        mul   ya
0cb9: cb dd     mov   $dd,y
0cbb: ee        pop   y
0cbc: e4 da     mov   a,$da
0cbe: cf        mul   ya
0cbf: 8f 00 de  mov   $de,#$00
0cc2: 7a dd     addw  ya,$dd
0cc4: 7a d9     addw  ya,$d9
0cc6: d5 d1 02  mov   $02d1+x,a
0cc9: dd        mov   a,y
0cca: d5 e0 02  mov   $02e0+x,a
0ccd: 6f        ret

0cce: f5 11 02  mov   a,$0211+x
0cd1: d4 70     mov   $70+x,a
0cd3: f5 01 02  mov   a,$0201+x
0cd6: 5c        lsr   a
0cd7: d4 71     mov   $71+x,a
0cd9: f5 50 02  mov   a,$0250+x
0cdc: d5 10 02  mov   $0210+x,a
0cdf: e8 00     mov   a,#$00
0ce1: d5 21 02  mov   $0221+x,a
0ce4: d5 20 02  mov   $0220+x,a
0ce7: 6f        ret

0ce8: f5 70 02  mov   a,$0270+x
0ceb: f0 0a     beq   $0cf7
0ced: f4 80     mov   a,$80+x
0cef: 80        setc
0cf0: b5 70 02  sbc   a,$0270+x
0cf3: d4 c1     mov   $c1+x,a
0cf5: 2f 05     bra   $0cfc
0cf7: f5 71 02  mov   a,$0271+x
0cfa: d4 c1     mov   $c1+x,a
0cfc: 6f        ret

0cfd: f5 b1 02  mov   a,$02b1+x
0d00: f0 0e     beq   $0d10
0d02: f5 e1 02  mov   a,$02e1+x
0d05: d0 09     bne   $0d10
0d07: e8 00     mov   a,#$00
0d09: d4 a1     mov   $a1+x,a
0d0b: d4 b0     mov   $b0+x,a
0d0d: bc        inc   a
0d0e: d4 a0     mov   $a0+x,a
0d10: 6f        ret

0d11: f5 31 02  mov   a,$0231+x
0d14: d0 05     bne   $0d1b
0d16: f5 30 02  mov   a,$0230+x
0d19: d0 08     bne   $0d23
0d1b: e8 00     mov   a,#$00
0d1d: d5 31 02  mov   $0231+x,a
0d20: 3f 2d 0d  call  $0d2d
0d23: d4 80     mov   $80+x,a
0d25: 6f        ret

0d26: 3f 2d 0d  call  $0d2d
0d29: d5 45 03  mov   $0345+x,a
0d2c: 6f        ret

0d2d: e7 30     mov   a,($30+x)
0d2f: bb 30     inc   $30+x
0d31: d0 02     bne   $0d35
0d33: bb 31     inc   $31+x
0d35: 08 00     or    a,#$00
0d37: 6f        ret

; vcmd dispatch table
0d38: dw $1186  ; 80
0d3a: dw $0e44  ; 81
0d3c: dw $0e53  ; 82
0d3e: dw $0e67  ; 83
0d40: dw $0e6d  ; 84
0d42: dw $0e7b  ; 85
0d44: dw $0e9c  ; 86
0d46: dw $0ea5  ; 87
0d48: dw $0ead  ; 88
0d4a: dw $0eb6  ; 89
0d4c: dw $0ebe  ; 8a
0d4e: dw $0ecb  ; 8b
0d50: dw $0ed3  ; 8c
0d52: dw $0efd  ; 8d
0d54: dw $0f06  ; 8e
0d56: dw $0f0a  ; 8f
0d58: dw $0f2e  ; 90
0d5a: dw $0f26  ; 91
0d5c: dw $0f37  ; 92
0d5e: dw $0f45  ; 93
0d60: dw $0f53  ; 94
0d62: dw $0f62  ; 95
0d64: dw $0f6a  ; 96
0d66: dw $0f81  ; 97
0d68: dw $0fc3  ; 98
0d6a: dw $0fcc  ; 99
0d6c: dw $0fd5  ; 9a
0d6e: dw $0fef  ; 9b
0d70: dw $0fe7  ; 9c
0d72: dw $0ffe  ; 9d
0d74: dw $100d  ; 9e
0d76: dw $1015  ; 9f
0d78: dw $101d  ; a0
0d7a: dw $1024  ; a1
0d7c: dw $1040  ; a2
0d7e: dw $105d  ; a3
0d80: dw $1076  ; a4
0d82: dw $10b5  ; a5
0d84: dw $10db  ; a6
0d86: dw $10ec  ; a7
0d88: dw $110a  ; a8
0d8a: dw $1118  ; a9
0d8c: dw $1148  ; aa
0d8e: dw $1148  ; ab
0d90: dw $1148  ; ac
0d92: dw $1148  ; ad
0d94: dw $1148  ; ae
0d96: dw $1148  ; af
0d98: dw $1148  ; b0
0d9a: dw $1151  ; b1
0d9c: dw $115a  ; b2
0d9e: dw $1163  ; b3
0da0: dw $1172  ; b4
0da2: dw $117b  ; b5
0da4: dw $119c  ; b6
0da6: dw $11a4  ; b7
0da8: dw $11b4  ; b8
0daa: dw $11db  ; b9
0dac: dw $1126  ; ba
0dae: dw $0dfa  ; bb
0db0: dw $0e01  ; bc
0db2: dw $0e08  ; bd
0db4: dw $0e11  ; be
0db6: dw $0e1a  ; bf
0db8: dw $0e22  ; c0
0dba: dw $0e2a  ; c1
0dbc: dw $0e3c  ; c2
0dbe: dw $0de8  ; c3
0dc0: dw $0df1  ; c4
0dc2: dw $0de2  ; c5
0dc4: dw $0dc6  ; c6

; vcmd c6
0dc6: 4d        push  x
0dc7: cd 0e     mov   x,#$0e
0dc9: 8d 00     mov   y,#$00
0dcb: f5 01 01  mov   a,$0101+x
0dce: 68 1d     cmp   a,#$1d
0dd0: d0 01     bne   $0dd3
0dd2: fc        inc   y
0dd3: 1d        dec   x
0dd4: 1d        dec   x
0dd5: 10 f4     bpl   $0dcb
0dd7: ce        pop   x
0dd8: ad 02     cmp   y,#$02
0dda: 90 03     bcc   $0ddf
0ddc: 5f 86 11  jmp   $1186

0ddf: 5f 3a 09  jmp   $093a

; vcmd c5
0de2: 3f 16 08  call  $0816
0de5: 5f 3a 09  jmp   $093a

; vcmd c3
0de8: 3f 2d 0d  call  $0d2d
0deb: d5 01 01  mov   $0101+x,a
0dee: 5f 3a 09  jmp   $093a

; vcmd c4
0df1: 3f 2d 0d  call  $0d2d
0df4: d5 c1 02  mov   $02c1+x,a
0df7: 5f 3a 09  jmp   $093a

; vcmd bb
0dfa: e8 01     mov   a,#$01
0dfc: c4 eb     mov   $eb,a
0dfe: 5f 3a 09  jmp   $093a

; vcmd bc
0e01: e8 00     mov   a,#$00
0e03: c4 eb     mov   $eb,a
0e05: 5f 3a 09  jmp   $093a

; vcmd bd
0e08: 3f 2d 0d  call  $0d2d
0e0b: d5 46 03  mov   $0346+x,a
0e0e: 5f 3a 09  jmp   $093a

; vcmd be
0e11: 3f 2d 0d  call  $0d2d
0e14: d5 45 03  mov   $0345+x,a
0e17: 5f 3a 09  jmp   $093a

; vcmd bf
0e1a: e8 01     mov   a,#$01
0e1c: d5 12 01  mov   $0112+x,a
0e1f: 5f 3a 09  jmp   $093a

; vcmd c0
0e22: e8 00     mov   a,#$00
0e24: d5 12 01  mov   $0112+x,a
0e27: 5f 3a 09  jmp   $093a

; vcmd c1
0e2a: 3f 2d 0d  call  $0d2d
0e2d: d4 40     mov   $40+x,a
0e2f: 3f 2d 0d  call  $0d2d
0e32: d4 41     mov   $41+x,a
0e34: e8 01     mov   a,#$01
0e36: d5 13 01  mov   $0113+x,a
0e39: 5f 3a 09  jmp   $093a

; vcmd c2
0e3c: e8 00     mov   a,#$00
0e3e: d5 13 01  mov   $0113+x,a
0e41: 5f 3a 09  jmp   $093a

; vcmd 81
0e44: 3f 2d 0d  call  $0d2d
0e47: 2d        push  a
0e48: 3f 2d 0d  call  $0d2d
0e4b: d4 31     mov   $31+x,a
0e4d: ae        pop   a
0e4e: d4 30     mov   $30+x,a
0e50: 5f 3a 09  jmp   $093a

; vcmd 82
0e53: 3f 2d 0d  call  $0d2d
0e56: 2d        push  a
0e57: 3f 2d 0d  call  $0d2d
0e5a: 2d        push  a
0e5b: 3f 1d 12  call  $121d
0e5e: ae        pop   a
0e5f: d4 31     mov   $31+x,a
0e61: ae        pop   a
0e62: d4 30     mov   $30+x,a
0e64: 5f 3a 09  jmp   $093a

; vcmd 83
0e67: 3f 04 12  call  $1204
0e6a: 5f 3a 09  jmp   $093a

; vcmd 84
0e6d: 3f 2d 0d  call  $0d2d
0e70: 2d        push  a
0e71: 3f 1d 12  call  $121d
0e74: ae        pop   a
0e75: 3f 15 12  call  $1215
0e78: 5f 3a 09  jmp   $093a

; vcmd 85
0e7b: fb 50     mov   y,$50+x
0e7d: f6 7f 03  mov   a,$037f+y
0e80: 9c        dec   a
0e81: f0 10     beq   $0e93
0e83: d6 7f 03  mov   $037f+y,a
0e86: f6 7e 03  mov   a,$037e+y
0e89: d4 31     mov   $31+x,a
0e8b: f6 7d 03  mov   a,$037d+y
0e8e: d4 30     mov   $30+x,a
0e90: 5f 3a 09  jmp   $093a

0e93: dd        mov   a,y
0e94: 80        setc
0e95: a8 03     sbc   a,#$03
0e97: d4 50     mov   $50+x,a
0e99: 5f 3a 09  jmp   $093a

; vcmd 86
0e9c: 3f 2d 0d  call  $0d2d
0e9f: d5 30 02  mov   $0230+x,a
0ea2: 5f 3a 09  jmp   $093a

; vcmd 87
0ea5: e8 ff     mov   a,#$ff
0ea7: d5 31 02  mov   $0231+x,a
0eaa: 5f 3a 09  jmp   $093a

; vcmd 88
0ead: 3f 2d 0d  call  $0d2d
0eb0: d5 40 02  mov   $0240+x,a
0eb3: 5f 3a 09  jmp   $093a

; vcmd 89
0eb6: 3f 2d 0d  call  $0d2d
0eb9: d4 20     mov   $20+x,a
0ebb: 5f 3a 09  jmp   $093a

; vcmd 8a
0ebe: 3f 2d 0d  call  $0d2d
0ec1: d4 00     mov   $00+x,a
0ec3: e8 00     mov   a,#$00
0ec5: d5 45 03  mov   $0345+x,a
0ec8: 5f 3a 09  jmp   $093a

; vcmd 8b
0ecb: 3f 2d 0d  call  $0d2d
0ece: d4 01     mov   $01+x,a
0ed0: 5f c3 0e  jmp   $0ec3

; vcmd 8c
0ed3: 3f 2d 0d  call  $0d2d
0ed6: d5 41 02  mov   $0241+x,a
0ed9: 3f 2d 0d  call  $0d2d
0edc: d4 40     mov   $40+x,a
0ede: 3f 2d 0d  call  $0d2d
0ee1: d4 41     mov   $41+x,a
0ee3: e8 00     mov   a,#$00
0ee5: d4 60     mov   $60+x,a
0ee7: d5 b1 02  mov   $02b1+x,a
0eea: d5 e1 02  mov   $02e1+x,a
0eed: 9c        dec   a
0eee: d5 d0 02  mov   $02d0+x,a
0ef1: e8 01     mov   a,#$01
0ef3: d4 51     mov   $51+x,a
0ef5: 3f f5 11  call  $11f5
0ef8: d4 21     mov   $21+x,a
0efa: 5f 3a 09  jmp   $093a

; vcmd 8d
0efd: 3f 2d 0d  call  $0d2d
0f00: d5 c0 02  mov   $02c0+x,a
0f03: 5f 3a 09  jmp   $093a

; vcmd 8e
0f06: e8 01     mov   a,#$01
0f08: 2f 02     bra   $0f0c
; vcmd 8f
0f0a: e8 ff     mov   a,#$ff
0f0c: d5 50 02  mov   $0250+x,a
0f0f: 3f 2d 0d  call  $0d2d
0f12: d5 11 02  mov   $0211+x,a
0f15: 3f 2d 0d  call  $0d2d
0f18: d5 00 02  mov   $0200+x,a
0f1b: 3f 2d 0d  call  $0d2d
0f1e: d5 01 02  mov   $0201+x,a
0f21: d4 71     mov   $71+x,a
0f23: 5f 3a 09  jmp   $093a

; vcmd 91
0f26: e8 00     mov   a,#$00
0f28: d5 50 02  mov   $0250+x,a
0f2b: 5f 3a 09  jmp   $093a

; vcmd 90
0f2e: 3f 2d 0d  call  $0d2d
0f31: d5 51 02  mov   $0251+x,a
0f34: 5f 3a 09  jmp   $093a

; vcmd 92
0f37: 3f 2d 0d  call  $0d2d
0f3a: d5 70 02  mov   $0270+x,a
0f3d: e8 00     mov   a,#$00
0f3f: d5 71 02  mov   $0271+x,a
0f42: 5f 3a 09  jmp   $093a

; vcmd 93
0f45: 3f 2d 0d  call  $0d2d
0f48: d5 71 02  mov   $0271+x,a
0f4b: e8 00     mov   a,#$00
0f4d: d5 70 02  mov   $0270+x,a
0f50: 5f 3a 09  jmp   $093a

; vcmd 94
0f53: 3f 2d 0d  call  $0d2d
0f56: d5 81 02  mov   $0281+x,a
0f59: 3f 2d 0d  call  $0d2d
0f5c: d5 80 02  mov   $0280+x,a
0f5f: 5f 3a 09  jmp   $093a

; vcmd 95
0f62: e8 00     mov   a,#$00
0f64: d5 80 02  mov   $0280+x,a
0f67: 5f 3a 09  jmp   $093a

; vcmd 96
0f6a: 3f 2d 0d  call  $0d2d
0f6d: d5 91 02  mov   $0291+x,a
0f70: 3f 2d 0d  call  $0d2d
0f73: d5 a0 02  mov   $02a0+x,a
0f76: 3f 2d 0d  call  $0d2d
0f79: d5 a1 02  mov   $02a1+x,a
0f7c: d4 91     mov   $91+x,a
0f7e: 5f 3a 09  jmp   $093a

; vcmd 97
0f81: 3f 2d 0d  call  $0d2d
0f84: 3f 8a 0f  call  $0f8a
0f87: 5f 3a 09  jmp   $093a

0f8a: 2d        push  a
0f8b: e8 22     mov   a,#$22
0f8d: c4 d9     mov   $d9,a
0f8f: e8 14     mov   a,#$14
0f91: c4 da     mov   $da,a
0f93: ae        pop   a
0f94: 8d 07     mov   y,#$07
0f96: cf        mul   ya
0f97: 4d        push  x
0f98: 60        clrc
0f99: 7a d9     addw  ya,$d9
0f9b: da d9     movw  $d9,ya
0f9d: 8d 00     mov   y,#$00
0f9f: 7d        mov   a,x
0fa0: c4 e5     mov   $e5,a
0fa2: 1c        asl   a
0fa3: 1c        asl   a
0fa4: 1c        asl   a
0fa5: 80        setc
0fa6: a4 e5     sbc   a,$e5
0fa8: 5c        lsr   a
0fa9: 5d        mov   x,a
0faa: f7 d9     mov   a,($d9)+y
0fac: d5 04 03  mov   $0304+x,a
0faf: 3d        inc   x
0fb0: fc        inc   y
0fb1: ad 07     cmp   y,#$07
0fb3: d0 f5     bne   $0faa
0fb5: ce        pop   x
0fb6: e8 00     mov   a,#$00
0fb8: d5 d0 02  mov   $02d0+x,a
0fbb: d5 e1 02  mov   $02e1+x,a
0fbe: 9c        dec   a
0fbf: d5 b1 02  mov   $02b1+x,a
0fc2: 6f        ret

; vcmd 98
0fc3: e4 d2     mov   a,$d2
0fc5: 04 d6     or    a,$d6
0fc7: c4 d6     mov   $d6,a
0fc9: 5f 3a 09  jmp   $093a

; vcmd 99
0fcc: e4 d3     mov   a,$d3
0fce: 24 d6     and   a,$d6
0fd0: c4 d6     mov   $d6,a
0fd2: 5f 3a 09  jmp   $093a

; vcmd 9a
0fd5: 3f 2d 0d  call  $0d2d
0fd8: 28 1f     and   a,#$1f
0fda: 08 20     or    a,#$20
0fdc: 8f 6c f2  mov   $f2,#$6c
0fdf: 00        nop
0fe0: 00        nop
0fe1: 00        nop
0fe2: c4 f3     mov   $f3,a
0fe4: 5f 3a 09  jmp   $093a

; vcmd 9c
0fe7: e8 ff     mov   a,#$ff
0fe9: d5 e1 02  mov   $02e1+x,a
0fec: 5f 3a 09  jmp   $093a

; vcmd 9b
0fef: e8 00     mov   a,#$00
0ff1: d5 e1 02  mov   $02e1+x,a
0ff4: d5 d0 02  mov   $02d0+x,a
0ff7: 9c        dec   a
0ff8: d5 b1 02  mov   $02b1+x,a
0ffb: 5f 3a 09  jmp   $093a

; vcmd 9d
0ffe: e8 00     mov   a,#$00
1000: d5 e1 02  mov   $02e1+x,a
1003: d5 b1 02  mov   $02b1+x,a
1006: 9c        dec   a
1007: d5 d0 02  mov   $02d0+x,a
100a: 5f 3a 09  jmp   $093a

; vcmd 9e
100d: e8 00     mov   a,#$00
100f: d5 f0 02  mov   $02f0+x,a
1012: 5f 3a 09  jmp   $093a

; vcmd 9f
1015: e8 ff     mov   a,#$ff
1017: d5 f0 02  mov   $02f0+x,a
101a: 5f 3a 09  jmp   $093a

; vcmd a0
101d: e8 01     mov   a,#$01
101f: d4 c0     mov   $c0+x,a
1021: 5f 3a 09  jmp   $093a

; vcmd a1
1024: 4d        push  x
1025: f8 e4     mov   x,$e4
1027: cd 01     mov   x,#$01
1029: 3f 5a 07  call  $075a
102c: ce        pop   x
102d: f5 e0 12  mov   a,$12e0+x
1030: c4 d2     mov   $d2,a
1032: f5 e1 12  mov   a,$12e1+x
1035: c4 d3     mov   $d3,a
1037: 8f 00 e0  mov   $e0,#$00
103a: 8f 7f e1  mov   $e1,#$7f
103d: 5f 3a 09  jmp   $093a

; vcmd a2
1040: 7d        mov   a,x
1041: c4 e5     mov   $e5,a
1043: 1c        asl   a
1044: 1c        asl   a
1045: 1c        asl   a
1046: 80        setc
1047: a4 e5     sbc   a,$e5
1049: 5c        lsr   a
104a: fd        mov   y,a
104b: e8 07     mov   a,#$07
104d: c4 e5     mov   $e5,a
104f: 3f 2d 0d  call  $0d2d
1052: d6 04 03  mov   $0304+y,a
1055: fc        inc   y
1056: 8b e5     dec   $e5
1058: d0 f5     bne   $104f
105a: 5f ef 0f  jmp   $0fef

; vcmd a3
105d: 3f 2d 0d  call  $0d2d
1060: 3f f0 12  call  $12f0
1063: 1c        asl   a
1064: c4 e5     mov   $e5,a
1066: 60        clrc
1067: f4 30     mov   a,$30+x
1069: 84 e5     adc   a,$e5
106b: d4 30     mov   $30+x,a
106d: f4 31     mov   a,$31+x
106f: 88 00     adc   a,#$00
1071: d4 31     mov   $31+x,a
1073: 5f 44 0e  jmp   $0e44

; vcmd a4
1076: 3f 2d 0d  call  $0d2d
1079: c4 e5     mov   $e5,a
107b: 3f f0 12  call  $12f0
107e: c4 d9     mov   $d9,a
1080: 1c        asl   a
1081: 60        clrc
1082: 94 30     adc   a,$30+x
1084: d4 30     mov   $30+x,a
1086: f4 31     mov   a,$31+x
1088: 88 00     adc   a,#$00
108a: d4 31     mov   $31+x,a
108c: 3f 2d 0d  call  $0d2d
108f: 2d        push  a
1090: 3f 2d 0d  call  $0d2d
1093: 2d        push  a
1094: e4 e5     mov   a,$e5
1096: 9c        dec   a
1097: 80        setc
1098: a4 d9     sbc   a,$d9
109a: 1c        asl   a
109b: c4 d9     mov   $d9,a
109d: f4 30     mov   a,$30+x
109f: 84 d9     adc   a,$d9
10a1: d4 30     mov   $30+x,a
10a3: f4 31     mov   a,$31+x
10a5: 88 00     adc   a,#$00
10a7: d4 31     mov   $31+x,a
10a9: 3f 1d 12  call  $121d
10ac: ae        pop   a
10ad: d4 31     mov   $31+x,a
10af: ae        pop   a
10b0: d4 30     mov   $30+x,a
10b2: 5f 3a 09  jmp   $093a

; vcmd a5
10b5: 3f 2d 0d  call  $0d2d
10b8: 3f c4 10  call  $10c4
10bb: 16 3c 03  or    a,$033c+y
10be: d6 3c 03  mov   $033c+y,a
10c1: 5f 3a 09  jmp   $093a

10c4: 4d        push  x
10c5: fd        mov   y,a
10c6: 28 07     and   a,#$07
10c8: 5d        mov   x,a
10c9: dd        mov   a,y
10ca: 5c        lsr   a
10cb: 5c        lsr   a
10cc: 5c        lsr   a
10cd: fd        mov   y,a
10ce: f5 d3 10  mov   a,$10d3+x
10d1: ce        pop   x
10d2: 6f        ret

10d3: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
10db: 3f 2d 0d  call  $0d2d
10de: 3f c4 10  call  $10c4
10e1: 48 ff     eor   a,#$ff
10e3: 36 3c 03  and   a,$033c+y
10e6: d6 3c 03  mov   $033c+y,a
10e9: 5f 3a 09  jmp   $093a

; vcmd a7
10ec: 3f 2d 0d  call  $0d2d
10ef: 3f c4 10  call  $10c4
10f2: 36 3c 03  and   a,$033c+y
10f5: f0 03     beq   $10fa
10f7: 5f 44 0e  jmp   $0e44

10fa: f4 30     mov   a,$30+x
10fc: 60        clrc
10fd: 88 02     adc   a,#$02
10ff: d4 30     mov   $30+x,a
1101: f4 31     mov   a,$31+x
1103: 88 00     adc   a,#$00
1105: d4 31     mov   $31+x,a
1107: 5f 3a 09  jmp   $093a

; vcmd a8
110a: 3f 2d 0d  call  $0d2d
110d: 3f c4 10  call  $10c4
1110: 36 3c 03  and   a,$033c+y
1113: d0 e5     bne   $10fa
1115: 5f 44 0e  jmp   $0e44

; vcmd a9
1118: 3f 2d 0d  call  $0d2d
111b: 3f c4 10  call  $10c4
111e: 36 3c 03  and   a,$033c+y
1121: f0 11     beq   $1134
1123: 5f 3a 09  jmp   $093a

; vcmd ba
1126: 3f 2d 0d  call  $0d2d
1129: 3f c4 10  call  $10c4
112c: 36 3c 03  and   a,$033c+y
112f: d0 03     bne   $1134
1131: 5f 3a 09  jmp   $093a

1134: e8 01     mov   a,#$01
1136: d4 80     mov   $80+x,a
1138: f4 30     mov   a,$30+x
113a: 80        setc
113b: a8 02     sbc   a,#$02
113d: d4 30     mov   $30+x,a
113f: f4 31     mov   a,$31+x
1141: a8 00     sbc   a,#$00
1143: d4 31     mov   $31+x,a
1145: 5f 56 09  jmp   $0956

; vcmd aa-b0
1148: 3f 2d 0d  call  $0d2d
114b: d5 56 03  mov   $0356+x,a
114e: 5f 3a 09  jmp   $093a

; vcmd b1
1151: e4 d2     mov   a,$d2
1153: 04 d8     or    a,$d8
1155: c4 d8     mov   $d8,a
1157: 5f 3a 09  jmp   $093a

; vcmd b2
115a: e4 d3     mov   a,$d3
115c: 24 d8     and   a,$d8
115e: c4 d8     mov   $d8,a
1160: 5f 3a 09  jmp   $093a

; vcmd b3
1163: 3f 2d 0d  call  $0d2d
1166: d5 45 03  mov   $0345+x,a
1169: 3f 2d 0d  call  $0d2d
116c: d5 46 03  mov   $0346+x,a
116f: 5f 3a 09  jmp   $093a

; vcmd b4
1172: 3f 2d 0d  call  $0d2d
1175: d5 55 03  mov   $0355+x,a
1178: 5f 3a 09  jmp   $093a

; vcmd b5
117b: 3f 2d 0d  call  $0d2d
117e: 4d        push  x
117f: 3f d2 04  call  $04d2
1182: ce        pop   x
1183: 5f 3a 09  jmp   $093a

; vcmd 80
1186: e8 00     mov   a,#$00
1188: d5 65 03  mov   $0365+x,a
118b: d5 f1 02  mov   $02f1+x,a
118e: d5 c1 02  mov   $02c1+x,a
1191: 9c        dec   a
1192: d5 01 01  mov   $0101+x,a
1195: e4 d2     mov   a,$d2
1197: 04 d5     or    a,$d5
1199: c4 d5     mov   $d5,a
119b: 6f        ret

; vcmd b6
119c: 3f 2d 0d  call  $0d2d
119f: c4 fc     mov   $fc,a
11a1: 5f 3a 09  jmp   $093a

; vcmd b7
11a4: e8 ff     mov   a,#$ff
11a6: d5 00 01  mov   $0100+x,a
11a9: e8 01     mov   a,#$01
11ab: d5 46 03  mov   $0346+x,a
11ae: d5 45 03  mov   $0345+x,a
11b1: 5f 3a 09  jmp   $093a

; vcmd b8
11b4: e5 11 01  mov   a,$0111
11b7: f0 0e     beq   $11c7
11b9: e4 d2     mov   a,$d2
11bb: 04 d5     or    a,$d5
11bd: c4 d5     mov   $d5,a
11bf: 8f 5c f2  mov   $f2,#$5c
11c2: c4 f3     mov   $f3,a
11c4: 5f 86 11  jmp   $1186

11c7: e8 01     mov   a,#$01
11c9: d4 80     mov   $80+x,a
11cb: f4 30     mov   a,$30+x
11cd: 80        setc
11ce: a8 01     sbc   a,#$01
11d0: d4 30     mov   $30+x,a
11d2: f4 31     mov   a,$31+x
11d4: a8 00     sbc   a,#$00
11d6: d4 31     mov   $31+x,a
11d8: 5f 56 09  jmp   $0956

; vcmd b9
11db: 3f 2d 0d  call  $0d2d
11de: fd        mov   y,a
11df: f6 e5 11  mov   a,$11e5+y
11e2: 5f 3d 09  jmp   $093d

11e5: 05 05 05  or    a,$0505
11e8: 05 05 05  or    a,$0505
11eb: 05 05 05  or    a,$0505
11ee: 05 05 05  or    a,$0505
11f1: 05 05 05  or    a,$0505
11f4: 05 f4 40  or    a,$40f4
11f7: c4 d9     mov   $d9,a
11f9: f4 41     mov   a,$41+x
11fb: c4 da     mov   $da,a
11fd: fb 60     mov   y,$60+x
11ff: bb 60     inc   $60+x
1201: f7 d9     mov   a,($d9)+y
1203: 6f        ret

1204: fb 50     mov   y,$50+x
1206: dc        dec   y
1207: f6 80 03  mov   a,$0380+y
120a: d4 31     mov   $31+x,a
120c: dc        dec   y
120d: f6 80 03  mov   a,$0380+y
1210: d4 30     mov   $30+x,a
1212: db 50     mov   $50+x,y
1214: 6f        ret

1215: fb 50     mov   y,$50+x
1217: d6 80 03  mov   $0380+y,a
121a: bb 50     inc   $50+x
121c: 6f        ret

121d: fb 50     mov   y,$50+x
121f: f4 30     mov   a,$30+x
1221: d6 80 03  mov   $0380+y,a
1224: f4 31     mov   a,$31+x
1226: d6 81 03  mov   $0381+y,a
1229: fc        inc   y
122a: fc        inc   y
122b: db 50     mov   $50+x,y
122d: 6f        ret

122e: f6 65 03  mov   a,$0365+y
1231: f0 37     beq   $126a
1233: d8 f2     mov   $f2,x
1235: f6 00 00  mov   a,$0000+y
1238: 3f 6d 12  call  $126d
123b: c4 f3     mov   $f3,a
123d: 3d        inc   x
123e: d8 f2     mov   $f2,x
1240: f6 01 00  mov   a,$0001+y
1243: 3f 6d 12  call  $126d
1246: c4 f3     mov   $f3,a
1248: 3d        inc   x
1249: d8 f2     mov   $f2,x
124b: f6 10 00  mov   a,$0010+y
124e: c4 f3     mov   $f3,a
1250: 3d        inc   x
1251: d8 f2     mov   $f2,x
1253: f6 11 00  mov   a,$0011+y
1256: c4 f3     mov   $f3,a
1258: 3d        inc   x
1259: d8 f2     mov   $f2,x
125b: f6 20 00  mov   a,$0020+y
125e: c4 f3     mov   $f3,a
1260: 3d        inc   x
1261: 3d        inc   x
1262: 3d        inc   x
1263: d8 f2     mov   $f2,x
1265: f6 21 00  mov   a,$0021+y
1268: c4 f3     mov   $f3,a
126a: 5f 7c 05  jmp   $057c

126d: 30 17     bmi   $1286
126f: 6d        push  y
1270: 4d        push  x
1271: 6d        push  y
1272: ce        pop   x
1273: fd        mov   y,a
1274: f5 c1 02  mov   a,$02c1+x
1277: bc        inc   a
1278: d0 04     bne   $127e
127a: e4 e8     mov   a,$e8
127c: 2f 03     bra   $1281
127e: f5 66 03  mov   a,$0366+x
1281: cf        mul   ya
1282: dd        mov   a,y
1283: ce        pop   x
1284: ee        pop   y
1285: 6f        ret

1286: 48 ff     eor   a,#$ff
1288: bc        inc   a
1289: 6d        push  y
128a: 4d        push  x
128b: 6d        push  y
128c: ce        pop   x
128d: fd        mov   y,a
128e: f5 66 03  mov   a,$0366+x
1291: cf        mul   ya
1292: dd        mov   a,y
1293: ce        pop   x
1294: ee        pop   y
1295: 48 ff     eor   a,#$ff
1297: bc        inc   a
1298: 6f        ret

1299: cd 00     mov   x,#$00
129b: f5 ab 12  mov   a,$12ab+x
129e: 30 0a     bmi   $12aa
12a0: c4 f2     mov   $f2,a
12a2: f5 c6 12  mov   a,$12c6+x
12a5: c4 f3     mov   $f3,a
12a7: 3d        inc   x
12a8: d0 f1     bne   $129b
12aa: 6f        ret

12ab: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
12c6: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$38,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

12e0: db $01,$fe
12e2: db $02,$fd
12e4: db $04,$fb
12e6: db $08,$f7
12e8: db $10,$ef
12ea: db $20,$df
12ec: db $40,$bf
12ee: db $80,$7f

12f0: fd        mov   y,a
12f1: 3f 0e 13  call  $130e
12f4: 3f 0e 13  call  $130e
12f7: 3f 0e 13  call  $130e
12fa: 3f 0e 13  call  $130e
12fd: 3f 0e 13  call  $130e
1300: 3f 0e 13  call  $130e
1303: 3f 0e 13  call  $130e
1306: 3f 0e 13  call  $130e
1309: e4 ec     mov   a,$ec
130b: cf        mul   ya
130c: dd        mov   a,y
130d: 6f        ret

130e: e4 ec     mov   a,$ec
1310: 28 48     and   a,#$48
1312: 88 38     adc   a,#$38
1314: 1c        asl   a
1315: 1c        asl   a
1316: 2b ef     rol   $ef
1318: 2b ee     rol   $ee
131a: 2b ed     rol   $ed
131c: 2b ec     rol   $ec
131e: 6f        ret
