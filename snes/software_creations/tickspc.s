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
041a: 3f 37 13  call  $1337
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
0489: 5f 67 14  jmp   $1467

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
04cf: 5f 67 14  jmp   $1467

04d2: fd        mov   y,a
04d3: 68 2e     cmp   a,#$2e
04d5: b0 f6     bcs   $04cd
04d7: cd 0e     mov   x,#$0e
04d9: f6 26 16  mov   a,$1626+y
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
050d: f6 26 16  mov   a,$1626+y
0510: 28 7f     and   a,#$7f
0512: 64 e5     cmp   a,$e5
0514: b0 02     bcs   $0518
0516: 60        clrc
0517: 6f        ret

0518: dd        mov   a,y
0519: d5 01 01  mov   $0101+x,a
051c: f6 26 16  mov   a,$1626+y
051f: 28 7f     and   a,#$7f
0521: d5 c1 02  mov   $02c1+x,a
0524: 3f 16 08  call  $0816
0527: f6 ca 15  mov   a,$15ca+y
052a: d4 30     mov   $30+x,a
052c: f6 f8 15  mov   a,$15f8+y
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
0579: 5f 67 14  jmp   $1467

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
05b1: 8f 2f dc  mov   $dc,#$2f
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
05df: 78 35 dc  cmp   $dc,#$35
05e2: d0 06     bne   $05ea
05e4: 8f 80 db  mov   $db,#$80
05e7: 8f 2f dc  mov   $dc,#$2f
05ea: e5 a7 35  mov   a,$35a7
05ed: 28 01     and   a,#$01
05ef: 68 01     cmp   a,#$01
05f1: f0 08     beq   $05fb
05f3: e5 a7 35  mov   a,$35a7
05f6: 08 03     or    a,#$03
05f8: c5 a7 35  mov   $35a7,a
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

0663: 3f 0b 11  call  $110b
0666: 48 ff     eor   a,#$ff
0668: 36 3c 03  and   a,$033c+y
066b: d6 3c 03  mov   $033c+y,a
066e: 60        clrc
066f: 6f        ret

0670: 3f 0b 11  call  $110b
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

0687: c5 83 12  mov   $1283,a
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
071a: 3f cc 12  call  $12cc
071d: 8d 02     mov   y,#$02
071f: cd 10     mov   x,#$10
0721: 3f cc 12  call  $12cc
0724: 8d 04     mov   y,#$04
0726: cd 20     mov   x,#$20
0728: 3f cc 12  call  $12cc
072b: 8d 06     mov   y,#$06
072d: cd 30     mov   x,#$30
072f: 3f cc 12  call  $12cc
0732: 8d 08     mov   y,#$08
0734: cd 40     mov   x,#$40
0736: 3f cc 12  call  $12cc
0739: 8d 0a     mov   y,#$0a
073b: cd 50     mov   x,#$50
073d: 3f cc 12  call  $12cc
0740: 8d 0c     mov   y,#$0c
0742: cd 60     mov   x,#$60
0744: 3f cc 12  call  $12cc
0747: 8d 0e     mov   y,#$0e
0749: cd 70     mov   x,#$70
074b: 3f cc 12  call  $12cc
074e: 8f 5c f2  mov   $f2,#$5c
0751: 8f 00 f3  mov   $f3,#$00
0754: 6f        ret

0755: cd 01     mov   x,#$01
0757: 5f 67 14  jmp   $1467

075a: 7d        mov   a,x
075b: 68 04     cmp   a,#$04
075d: b0 f6     bcs   $0755
075f: fd        mov   y,a
0760: cd 00     mov   x,#$00
0762: f6 84 14  mov   a,$1484+y
0765: f0 0a     beq   $0771
0767: c4 31     mov   $31,a
0769: f6 80 14  mov   a,$1480+y
076c: c4 30     mov   $30,a
076e: 3f 09 08  call  $0809
0771: 3d        inc   x
0772: 3d        inc   x
0773: f6 8c 14  mov   a,$148c+y
0776: f0 0a     beq   $0782
0778: d4 31     mov   $31+x,a
077a: f6 88 14  mov   a,$1488+y
077d: d4 30     mov   $30+x,a
077f: 3f 09 08  call  $0809
0782: 3d        inc   x
0783: 3d        inc   x
0784: f6 94 14  mov   a,$1494+y
0787: f0 0a     beq   $0793
0789: d4 31     mov   $31+x,a
078b: f6 90 14  mov   a,$1490+y
078e: d4 30     mov   $30+x,a
0790: 3f 09 08  call  $0809
0793: 3d        inc   x
0794: 3d        inc   x
0795: f6 9c 14  mov   a,$149c+y
0798: f0 0a     beq   $07a4
079a: d4 31     mov   $31+x,a
079c: f6 98 14  mov   a,$1498+y
079f: d4 30     mov   $30+x,a
07a1: 3f 09 08  call  $0809
07a4: 3d        inc   x
07a5: 3d        inc   x
07a6: f6 a4 14  mov   a,$14a4+y
07a9: f0 0a     beq   $07b5
07ab: d4 31     mov   $31+x,a
07ad: f6 a0 14  mov   a,$14a0+y
07b0: d4 30     mov   $30+x,a
07b2: 3f 09 08  call  $0809
07b5: 3d        inc   x
07b6: 3d        inc   x
07b7: f6 ac 14  mov   a,$14ac+y
07ba: f0 0a     beq   $07c6
07bc: d4 31     mov   $31+x,a
07be: f6 a8 14  mov   a,$14a8+y
07c1: d4 30     mov   $30+x,a
07c3: 3f 09 08  call  $0809
07c6: 3d        inc   x
07c7: 3d        inc   x
07c8: f6 b4 14  mov   a,$14b4+y
07cb: f0 0a     beq   $07d7
07cd: d4 31     mov   $31+x,a
07cf: f6 b0 14  mov   a,$14b0+y
07d2: d4 30     mov   $30+x,a
07d4: 3f 09 08  call  $0809
07d7: 3d        inc   x
07d8: 3d        inc   x
07d9: f6 bc 14  mov   a,$14bc+y
07dc: f0 0a     beq   $07e8
07de: d4 31     mov   $31+x,a
07e0: f6 b8 14  mov   a,$14b8+y
07e3: d4 30     mov   $30+x,a
07e5: 3f 09 08  call  $0809
07e8: 3d        inc   x
07e9: 3d        inc   x
07ea: dd        mov   a,y
07eb: 5d        mov   x,a
07ec: 1d        dec   x
07ed: f5 c0 14  mov   a,$14c0+x
07f0: c4 d9     mov   $d9,a
07f2: f5 c3 14  mov   a,$14c3+x
07f5: c4 da     mov   $da,a
07f7: f0 0f     beq   $0808
07f9: 8d fb     mov   y,#$fb
07fb: f7 d9     mov   a,($d9)+y
07fd: d6 cd 14  mov   $14cd+y,a
0800: dc        dec   y
0801: d0 f8     bne   $07fb
0803: f7 d9     mov   a,($d9)+y
0805: d6 cd 14  mov   $14cd+y,a
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
08b6: f5 7f 13  mov   a,$137f+x
08b9: 24 d7     and   a,$d7
08bb: c4 d7     mov   $d7,a
08bd: f5 7f 13  mov   a,$137f+x
08c0: 24 d6     and   a,$d6
08c2: c4 d6     mov   $d6,a
08c4: f5 7f 13  mov   a,$137f+x
08c7: 24 d8     and   a,$d8
08c9: c4 d8     mov   $d8,a
08cb: f5 7e 13  mov   a,$137e+x
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
092c: f5 7e 13  mov   a,$137e+x
092f: c4 d2     mov   $d2,a
0931: f5 7f 13  mov   a,$137f+x
0934: c4 d3     mov   $d3,a
0936: 9b 80     dec   $80+x
0938: d0 1c     bne   $0956
093a: 3f 74 0d  call  $0d74
093d: 10 14     bpl   $0953
093f: 68 c7     cmp   a,#$c7
0941: b0 0b     bcs   $094e
0943: 1c        asl   a
0944: fd        mov   y,a
0945: f6 80 0d  mov   a,$0d80+y
0948: 2d        push  a
0949: f6 7f 0d  mov   a,$0d7f+y
094c: 2d        push  a
094d: 6f        ret

094e: cd 81     mov   x,#$81
0950: 5f 67 14  jmp   $1467

0953: 3f 58 0c  call  $0c58
0956: 3f a6 09  call  $09a6
0959: 3f 31 0a  call  $0a31
095c: 3f 57 0a  call  $0a57
095f: 3f 9b 0a  call  $0a9b
0962: 3f e9 0a  call  $0ae9
0965: 3f 34 0b  call  $0b34
0968: 3f 7c 0b  call  $0b7c
096b: f5 60 02  mov   a,$0260+x
096e: 60        clrc
096f: 95 20 02  adc   a,$0220+x
0972: 0d        push  psw
0973: 60        clrc
0974: 95 c0 02  adc   a,$02c0+x
0977: d4 10     mov   $10+x,a
0979: f5 61 02  mov   a,$0261+x
097c: 95 21 02  adc   a,$0221+x
097f: 8e        pop   psw
0980: 88 00     adc   a,#$00
0982: d4 11     mov   $11+x,a
0984: 5f 7c 05  jmp   $057c

0987: f5 60 02  mov   a,$0260+x
098a: 80        setc
098b: b5 d1 02  sbc   a,$02d1+x
098e: c4 d9     mov   $d9,a
0990: f5 61 02  mov   a,$0261+x
0993: b5 e0 02  sbc   a,$02e0+x
0996: 04 d9     or    a,$d9
0998: 6f        ret

0999: f5 d1 02  mov   a,$02d1+x
099c: d5 60 02  mov   $0260+x,a
099f: f5 e0 02  mov   a,$02e0+x
09a2: d5 61 02  mov   $0261+x,a
09a5: 6f        ret

09a6: f5 00 01  mov   a,$0100+x
09a9: f0 0a     beq   $09b5
09ab: e4 ea     mov   a,$ea
09ad: d5 45 03  mov   $0345+x,a
09b0: e4 d0     mov   a,$d0
09b2: d5 46 03  mov   $0346+x,a
09b5: f5 45 03  mov   a,$0345+x
09b8: f0 6b     beq   $0a25
09ba: fd        mov   y,a
09bb: f5 46 03  mov   a,$0346+x
09be: cf        mul   ya
09bf: dd        mov   a,y
09c0: c4 e5     mov   $e5,a
09c2: f5 45 03  mov   a,$0345+x
09c5: 80        setc
09c6: a4 e5     sbc   a,$e5
09c8: 1c        asl   a
09c9: 9c        dec   a
09ca: d4 01     mov   $01+x,a
09cc: e4 e5     mov   a,$e5
09ce: 1c        asl   a
09cf: d4 00     mov   $00+x,a
09d1: f5 46 03  mov   a,$0346+x
09d4: 10 07     bpl   $09dd
09d6: f5 45 03  mov   a,$0345+x
09d9: d4 00     mov   $00+x,a
09db: 2f 05     bra   $09e2
09dd: f5 45 03  mov   a,$0345+x
09e0: d4 01     mov   $01+x,a
09e2: e4 e6     mov   a,$e6
09e4: 28 0f     and   a,#$0f
09e6: d0 17     bne   $09ff
09e8: f5 56 03  mov   a,$0356+x
09eb: f0 12     beq   $09ff
09ed: fd        mov   y,a
09ee: f5 45 03  mov   a,$0345+x
09f1: cf        mul   ya
09f2: dd        mov   a,y
09f3: d5 45 03  mov   $0345+x,a
09f6: d0 07     bne   $09ff
09f8: d4 00     mov   $00+x,a
09fa: d4 01     mov   $01+x,a
09fc: d5 56 03  mov   $0356+x,a
09ff: f5 55 03  mov   a,$0355+x
0a02: 30 0a     bmi   $0a0e
0a04: 60        clrc
0a05: 95 46 03  adc   a,$0346+x
0a08: 90 18     bcc   $0a22
0a0a: 8d ff     mov   y,#$ff
0a0c: 2f 08     bra   $0a16
0a0e: 60        clrc
0a0f: 95 46 03  adc   a,$0346+x
0a12: b0 0e     bcs   $0a22
0a14: 8d 00     mov   y,#$00
0a16: f5 55 03  mov   a,$0355+x
0a19: 48 ff     eor   a,#$ff
0a1b: 60        clrc
0a1c: 88 01     adc   a,#$01
0a1e: d5 55 03  mov   $0355+x,a
0a21: dd        mov   a,y
0a22: d5 46 03  mov   $0346+x,a
0a25: 6f        ret

0a26: 80        setc
0a27: a8 40     sbc   a,#$40
0a29: 30 02     bmi   $0a2d
0a2b: 1c        asl   a
0a2c: 6f        ret

0a2d: 1c        asl   a
0a2e: 08 80     or    a,#$80
0a30: 6f        ret

0a31: f5 91 02  mov   a,$0291+x
0a34: f0 20     beq   $0a56
0a36: 9b 91     dec   $91+x
0a38: d0 1c     bne   $0a56
0a3a: f5 b0 02  mov   a,$02b0+x
0a3d: 75 90 02  cmp   a,$0290+x
0a40: f0 08     beq   $0a4a
0a42: d5 90 02  mov   $0290+x,a
0a45: f5 a1 02  mov   a,$02a1+x
0a48: 2f 0a     bra   $0a54
0a4a: 60        clrc
0a4b: 95 91 02  adc   a,$0291+x
0a4e: d5 90 02  mov   $0290+x,a
0a51: f5 a0 02  mov   a,$02a0+x
0a54: d4 91     mov   $91+x,a
0a56: 6f        ret

0a57: f4 81     mov   a,$81+x
0a59: d0 07     bne   $0a62
0a5b: f5 90 02  mov   a,$0290+x
0a5e: d4 90     mov   $90+x,a
0a60: 2f 33     bra   $0a95
0a62: 9b 81     dec   $81+x
0a64: d0 34     bne   $0a9a
0a66: f5 80 02  mov   a,$0280+x
0a69: d4 81     mov   $81+x,a
0a6b: f4 90     mov   a,$90+x
0a6d: 75 90 02  cmp   a,$0290+x
0a70: f0 28     beq   $0a9a
0a72: 90 0f     bcc   $0a83
0a74: f4 90     mov   a,$90+x
0a76: 80        setc
0a77: b5 81 02  sbc   a,$0281+x
0a7a: d4 90     mov   $90+x,a
0a7c: 75 90 02  cmp   a,$0290+x
0a7f: b0 14     bcs   $0a95
0a81: 2f 0d     bra   $0a90
0a83: f5 81 02  mov   a,$0281+x
0a86: 60        clrc
0a87: 94 90     adc   a,$90+x
0a89: d4 90     mov   $90+x,a
0a8b: 75 90 02  cmp   a,$0290+x
0a8e: 90 05     bcc   $0a95
0a90: f5 90 02  mov   a,$0290+x
0a93: d4 90     mov   $90+x,a
0a95: fb 90     mov   y,$90+x
0a97: 3f ec 0c  call  $0cec
0a9a: 6f        ret

0a9b: f4 70     mov   a,$70+x
0a9d: f0 04     beq   $0aa3
0a9f: 9b 70     dec   $70+x
0aa1: 2f 45     bra   $0ae8
0aa3: f5 10 02  mov   a,$0210+x
0aa6: f0 40     beq   $0ae8
0aa8: 30 15     bmi   $0abf
0aaa: f5 00 02  mov   a,$0200+x
0aad: 60        clrc
0aae: 95 20 02  adc   a,$0220+x
0ab1: d5 20 02  mov   $0220+x,a
0ab4: e8 00     mov   a,#$00
0ab6: 95 21 02  adc   a,$0221+x
0ab9: d5 21 02  mov   $0221+x,a
0abc: 5f d4 0a  jmp   $0ad4

0abf: f5 00 02  mov   a,$0200+x
0ac2: 48 ff     eor   a,#$ff
0ac4: bc        inc   a
0ac5: 60        clrc
0ac6: 95 20 02  adc   a,$0220+x
0ac9: d5 20 02  mov   $0220+x,a
0acc: e8 ff     mov   a,#$ff
0ace: 95 21 02  adc   a,$0221+x
0ad1: d5 21 02  mov   $0221+x,a
0ad4: 9b 71     dec   $71+x
0ad6: d0 10     bne   $0ae8
0ad8: f5 01 02  mov   a,$0201+x
0adb: d4 71     mov   $71+x,a
0add: f0 09     beq   $0ae8
0adf: f5 10 02  mov   a,$0210+x
0ae2: 48 ff     eor   a,#$ff
0ae4: bc        inc   a
0ae5: d5 10 02  mov   $0210+x,a
0ae8: 6f        ret

0ae9: f5 51 02  mov   a,$0251+x
0aec: d0 05     bne   $0af3
0aee: 3f 99 09  call  $0999
0af1: 2f 40     bra   $0b33
0af3: 3f 87 09  call  $0987
0af6: f0 3b     beq   $0b33
0af8: 90 1f     bcc   $0b19
0afa: f5 51 02  mov   a,$0251+x
0afd: 48 ff     eor   a,#$ff
0aff: bc        inc   a
0b00: 60        clrc
0b01: 95 60 02  adc   a,$0260+x
0b04: d5 60 02  mov   $0260+x,a
0b07: f5 61 02  mov   a,$0261+x
0b0a: 88 ff     adc   a,#$ff
0b0c: d5 61 02  mov   $0261+x,a
0b0f: 3f 87 09  call  $0987
0b12: b0 1f     bcs   $0b33
0b14: 3f 99 09  call  $0999
0b17: 2f 1a     bra   $0b33
0b19: f5 60 02  mov   a,$0260+x
0b1c: 60        clrc
0b1d: 95 51 02  adc   a,$0251+x
0b20: d5 60 02  mov   $0260+x,a
0b23: f5 61 02  mov   a,$0261+x
0b26: 88 00     adc   a,#$00
0b28: d5 61 02  mov   $0261+x,a
0b2b: 3f 87 09  call  $0987
0b2e: 90 03     bcc   $0b33
0b30: 3f 99 09  call  $0999
0b33: 6f        ret

0b34: f5 d0 02  mov   a,$02d0+x
0b37: f0 42     beq   $0b7b
0b39: f4 51     mov   a,$51+x
0b3b: f0 1e     beq   $0b5b
0b3d: 9b 51     dec   $51+x
0b3f: d0 1a     bne   $0b5b
0b41: 3f 93 12  call  $1293
0b44: 10 0e     bpl   $0b54
0b46: 68 80     cmp   a,#$80
0b48: d0 06     bne   $0b50
0b4a: f4 61     mov   a,$61+x
0b4c: d4 60     mov   $60+x,a
0b4e: 2f f1     bra   $0b41
0b50: 9b 60     dec   $60+x
0b52: 2f 02     bra   $0b56
0b54: d4 21     mov   $21+x,a
0b56: f5 41 02  mov   a,$0241+x
0b59: d4 51     mov   $51+x,a
0b5b: f4 c1     mov   a,$c1+x
0b5d: f0 1c     beq   $0b7b
0b5f: 74 80     cmp   a,$80+x
0b61: d0 18     bne   $0b7b
0b63: f4 61     mov   a,$61+x
0b65: d0 14     bne   $0b7b
0b67: f4 40     mov   a,$40+x
0b69: c4 d9     mov   $d9,a
0b6b: f4 41     mov   a,$41+x
0b6d: c4 da     mov   $da,a
0b6f: 8d ff     mov   y,#$ff
0b71: fc        inc   y
0b72: f7 d9     mov   a,($d9)+y
0b74: 10 fb     bpl   $0b71
0b76: fc        inc   y
0b77: db 60     mov   $60+x,y
0b79: db 61     mov   $61+x,y
0b7b: 6f        ret

0b7c: f5 d0 02  mov   a,$02d0+x
0b7f: d0 32     bne   $0bb3
0b81: f4 80     mov   a,$80+x
0b83: f0 10     beq   $0b95
0b85: 74 c1     cmp   a,$c1+x
0b87: d0 0c     bne   $0b95
0b89: e8 03     mov   a,#$03
0b8b: d4 a1     mov   $a1+x,a
0b8d: f4 21     mov   a,$21+x
0b8f: d4 b1     mov   $b1+x,a
0b91: e8 00     mov   a,#$00
0b93: d4 b0     mov   $b0+x,a
0b95: 9b a0     dec   $a0+x
0b97: d0 1a     bne   $0bb3
0b99: fb a1     mov   y,$a1+x
0b9b: f6 b9 0b  mov   a,$0bb9+y
0b9e: 2d        push  a
0b9f: f6 b4 0b  mov   a,$0bb4+y
0ba2: 2d        push  a
0ba3: 7d        mov   a,x
0ba4: c4 e5     mov   $e5,a
0ba6: 1c        asl   a
0ba7: 1c        asl   a
0ba8: 1c        asl   a
0ba9: 80        setc
0baa: a4 e5     sbc   a,$e5
0bac: 5c        lsr   a
0bad: fd        mov   y,a
0bae: f6 04 03  mov   a,$0304+y
0bb1: d4 a0     mov   $a0+x,a
0bb3: 6f        ret

0bb4: db $be,$f0,$2b,$2c,$57
0bb9: db $0b,$0b,$0c,$0c,$0c

0bbe: f6 07 03  mov   a,$0307+y
0bc1: 80        setc
0bc2: b6 05 03  sbc   a,$0305+y
0bc5: 6d        push  y
0bc6: 4d        push  x
0bc7: 2d        push  a
0bc8: f6 06 03  mov   a,$0306+y
0bcb: f0 1f     beq   $0bec
0bcd: fb b0     mov   y,$b0+x
0bcf: 5d        mov   x,a
0bd0: 1d        dec   x
0bd1: ae        pop   a
0bd2: cf        mul   ya
0bd3: 9e        div   ya,x
0bd4: ce        pop   x
0bd5: ee        pop   y
0bd6: 60        clrc
0bd7: 96 05 03  adc   a,$0305+y
0bda: d4 21     mov   $21+x,a
0bdc: bb b0     inc   $b0+x
0bde: f6 06 03  mov   a,$0306+y
0be1: 74 b0     cmp   a,$b0+x
0be3: d0 06     bne   $0beb
0be5: bb a1     inc   $a1+x
0be7: e8 00     mov   a,#$00
0be9: d4 b0     mov   $b0+x,a
0beb: 6f        ret

0bec: ae        pop   a
0bed: ce        pop   x
0bee: ee        pop   y
0bef: 6f        ret

0bf0: f6 07 03  mov   a,$0307+y
0bf3: 80        setc
0bf4: b6 09 03  sbc   a,$0309+y
0bf7: 6d        push  y
0bf8: 4d        push  x
0bf9: 2d        push  a
0bfa: f6 08 03  mov   a,$0308+y
0bfd: 2d        push  a
0bfe: 60        clrc
0bff: b4 b0     sbc   a,$b0+x
0c01: f0 13     beq   $0c16
0c03: fd        mov   y,a
0c04: ae        pop   a
0c05: f0 20     beq   $0c27
0c07: 5d        mov   x,a
0c08: ae        pop   a
0c09: cf        mul   ya
0c0a: 9e        div   ya,x
0c0b: ce        pop   x
0c0c: ee        pop   y
0c0d: 60        clrc
0c0e: 96 09 03  adc   a,$0309+y
0c11: d4 21     mov   $21+x,a
0c13: bb b0     inc   $b0+x
0c15: 6f        ret

0c16: ae        pop   a
0c17: ae        pop   a
0c18: ce        pop   x
0c19: ee        pop   y
0c1a: f6 09 03  mov   a,$0309+y
0c1d: d4 21     mov   $21+x,a
0c1f: bb a1     inc   $a1+x
0c21: e8 00     mov   a,#$00
0c23: d4 b0     mov   $b0+x,a
0c25: 6f        ret

0c26: 6f        ret

0c27: ae        pop   a
0c28: ce        pop   x
0c29: ee        pop   y
0c2a: 6f        ret

0c2b: 6f        ret

0c2c: f4 b1     mov   a,$b1+x
0c2e: 6d        push  y
0c2f: 4d        push  x
0c30: 2d        push  a
0c31: f6 0a 03  mov   a,$030a+y
0c34: 2d        push  a
0c35: 60        clrc
0c36: b4 b0     sbc   a,$b0+x
0c38: f0 0f     beq   $0c49
0c3a: fd        mov   y,a
0c3b: ae        pop   a
0c3c: f0 16     beq   $0c54
0c3e: 5d        mov   x,a
0c3f: ae        pop   a
0c40: cf        mul   ya
0c41: 9e        div   ya,x
0c42: ce        pop   x
0c43: ee        pop   y
0c44: d4 21     mov   $21+x,a
0c46: bb b0     inc   $b0+x
0c48: 6f        ret

0c49: ae        pop   a
0c4a: ae        pop   a
0c4b: ce        pop   x
0c4c: ee        pop   y
0c4d: e8 00     mov   a,#$00
0c4f: d4 21     mov   $21+x,a
0c51: bb a1     inc   $a1+x
0c53: 6f        ret

0c54: ae        pop   a
0c55: ce        pop   x
0c56: ee        pop   y
0c57: 6f        ret

0c58: f0 53     beq   $0cad
0c5a: 3f bc 0c  call  $0cbc
0c5d: fb 20     mov   y,$20+x
0c5f: 60        clrc
0c60: 96 40 2f  adc   a,$2f40+y
0c63: 5b c0     lsr   $c0+x
0c65: b0 04     bcs   $0c6b
0c67: 60        clrc
0c68: 95 40 02  adc   a,$0240+x
0c6b: d5 b0 02  mov   $02b0+x,a
0c6e: d5 90 02  mov   $0290+x,a
0c71: fd        mov   y,a
0c72: f5 80 02  mov   a,$0280+x
0c75: d4 81     mov   $81+x,a
0c77: d0 05     bne   $0c7e
0c79: db 90     mov   $90+x,y
0c7b: 3f ec 0c  call  $0cec
0c7e: 3f 15 0d  call  $0d15
0c81: f5 d0 02  mov   a,$02d0+x
0c84: f0 0e     beq   $0c94
0c86: f5 e1 02  mov   a,$02e1+x
0c89: d0 09     bne   $0c94
0c8b: d4 60     mov   $60+x,a
0c8d: d4 61     mov   $61+x,a
0c8f: f5 41 02  mov   a,$0241+x
0c92: d4 51     mov   $51+x,a
0c94: f5 a1 02  mov   a,$02a1+x
0c97: d4 91     mov   $91+x,a
0c99: 3f 44 0d  call  $0d44
0c9c: f5 f0 02  mov   a,$02f0+x
0c9f: d0 0c     bne   $0cad
0ca1: e4 d2     mov   a,$d2
0ca3: 04 d4     or    a,$d4
0ca5: c4 d4     mov   $d4,a
0ca7: e4 d2     mov   a,$d2
0ca9: 04 d5     or    a,$d5
0cab: c4 d5     mov   $d5,a
0cad: f5 12 01  mov   a,$0112+x
0cb0: f0 03     beq   $0cb5
0cb2: 3f 6d 0d  call  $0d6d
0cb5: 3f 58 0d  call  $0d58
0cb8: 3f 2f 0d  call  $0d2f
0cbb: 6f        ret

0cbc: fd        mov   y,a
0cbd: f5 13 01  mov   a,$0113+x
0cc0: f0 28     beq   $0cea
0cc2: dd        mov   a,y
0cc3: 80        setc
0cc4: a8 12     sbc   a,#$12
0cc6: 1c        asl   a
0cc7: 1c        asl   a
0cc8: fd        mov   y,a
0cc9: f4 40     mov   a,$40+x
0ccb: c4 d9     mov   $d9,a
0ccd: f4 41     mov   a,$41+x
0ccf: c4 da     mov   $da,a
0cd1: f7 d9     mov   a,($d9)+y
0cd3: d4 20     mov   $20+x,a
0cd5: fc        inc   y
0cd6: f7 d9     mov   a,($d9)+y
0cd8: 2d        push  a
0cd9: fc        inc   y
0cda: f7 d9     mov   a,($d9)+y
0cdc: d5 46 03  mov   $0346+x,a
0cdf: fc        inc   y
0ce0: f7 d9     mov   a,($d9)+y
0ce2: fd        mov   y,a
0ce3: ae        pop   a
0ce4: 6d        push  y
0ce5: 3f d1 0f  call  $0fd1
0ce8: ae        pop   a
0ce9: 6f        ret

0cea: dd        mov   a,y
0ceb: 6f        ret

0cec: f6 bb 13  mov   a,$13bb+y
0cef: c4 d9     mov   $d9,a
0cf1: f6 10 14  mov   a,$1410+y
0cf4: c4 da     mov   $da,a
0cf6: fb 20     mov   y,$20+x
0cf8: f6 00 2f  mov   a,$2f00+y
0cfb: fd        mov   y,a
0cfc: 6d        push  y
0cfd: e4 d9     mov   a,$d9
0cff: cf        mul   ya
0d00: cb dd     mov   $dd,y
0d02: ee        pop   y
0d03: e4 da     mov   a,$da
0d05: cf        mul   ya
0d06: 8f 00 de  mov   $de,#$00
0d09: 7a dd     addw  ya,$dd
0d0b: 7a d9     addw  ya,$d9
0d0d: d5 d1 02  mov   $02d1+x,a
0d10: dd        mov   a,y
0d11: d5 e0 02  mov   $02e0+x,a
0d14: 6f        ret

0d15: f5 11 02  mov   a,$0211+x
0d18: d4 70     mov   $70+x,a
0d1a: f5 01 02  mov   a,$0201+x
0d1d: 5c        lsr   a
0d1e: d4 71     mov   $71+x,a
0d20: f5 50 02  mov   a,$0250+x
0d23: d5 10 02  mov   $0210+x,a
0d26: e8 00     mov   a,#$00
0d28: d5 21 02  mov   $0221+x,a
0d2b: d5 20 02  mov   $0220+x,a
0d2e: 6f        ret

0d2f: f5 70 02  mov   a,$0270+x
0d32: f0 0a     beq   $0d3e
0d34: f4 80     mov   a,$80+x
0d36: 80        setc
0d37: b5 70 02  sbc   a,$0270+x
0d3a: d4 c1     mov   $c1+x,a
0d3c: 2f 05     bra   $0d43
0d3e: f5 71 02  mov   a,$0271+x
0d41: d4 c1     mov   $c1+x,a
0d43: 6f        ret

0d44: f5 b1 02  mov   a,$02b1+x
0d47: f0 0e     beq   $0d57
0d49: f5 e1 02  mov   a,$02e1+x
0d4c: d0 09     bne   $0d57
0d4e: e8 00     mov   a,#$00
0d50: d4 a1     mov   $a1+x,a
0d52: d4 b0     mov   $b0+x,a
0d54: bc        inc   a
0d55: d4 a0     mov   $a0+x,a
0d57: 6f        ret

0d58: f5 31 02  mov   a,$0231+x
0d5b: d0 05     bne   $0d62
0d5d: f5 30 02  mov   a,$0230+x
0d60: d0 08     bne   $0d6a
0d62: e8 00     mov   a,#$00
0d64: d5 31 02  mov   $0231+x,a
0d67: 3f 74 0d  call  $0d74
0d6a: d4 80     mov   $80+x,a
0d6c: 6f        ret

0d6d: 3f 74 0d  call  $0d74
0d70: d5 45 03  mov   $0345+x,a
0d73: 6f        ret

0d74: e7 30     mov   a,($30+x)
0d76: bb 30     inc   $30+x
0d78: d0 02     bne   $0d7c
0d7a: bb 31     inc   $31+x
0d7c: 08 00     or    a,#$00
0d7e: 6f        ret

; vcmd dispatch table
0d7f: dw $1224  ; 80
0d81: dw $0e8b  ; 81
0d83: dw $0e9a  ; 82
0d85: dw $0eae  ; 83
0d87: dw $0eb4  ; 84
0d89: dw $0ec2  ; 85
0d8b: dw $0ee3  ; 86
0d8d: dw $0eec  ; 87
0d8f: dw $0ef4  ; 88
0d91: dw $0efd  ; 89
0d93: dw $0f05  ; 8a
0d95: dw $0f12  ; 8b
0d97: dw $0f1a  ; 8c
0d99: dw $0f44  ; 8d
0d9b: dw $0f4d  ; 8e
0d9d: dw $0f51  ; 8f
0d9f: dw $0f75  ; 90
0da1: dw $0f6d  ; 91
0da3: dw $0f7e  ; 92
0da5: dw $0f8c  ; 93
0da7: dw $0f9a  ; 94
0da9: dw $0fa9  ; 95
0dab: dw $0fb1  ; 96
0dad: dw $0fc8  ; 97
0daf: dw $100a  ; 98
0db1: dw $1013  ; 99
0db3: dw $101c  ; 9a
0db5: dw $1036  ; 9b
0db7: dw $102e  ; 9c
0db9: dw $1045  ; 9d
0dbb: dw $1054  ; 9e
0dbd: dw $105c  ; 9f
0dbf: dw $1064  ; a0
0dc1: dw $106b  ; a1
0dc3: dw $1087  ; a2
0dc5: dw $10a4  ; a3
0dc7: dw $10bd  ; a4
0dc9: dw $10fc  ; a5
0dcb: dw $1122  ; a6
0dcd: dw $1133  ; a7
0dcf: dw $1151  ; a8
0dd1: dw $115f  ; a9
0dd3: dw $118f  ; aa
0dd5: dw $119e  ; ab
0dd7: dw $11ad  ; ac
0dd9: dw $11b8  ; ad
0ddb: dw $11c3  ; ae
0ddd: dw $11ce  ; af
0ddf: dw $11e6  ; b0
0de1: dw $11ef  ; b1
0de3: dw $11f8  ; b2
0de5: dw $1201  ; b3
0de7: dw $1210  ; b4
0de9: dw $1219  ; b5
0deb: dw $123a  ; b6
0ded: dw $1242  ; b7
0def: dw $1252  ; b8
0df1: dw $1279  ; b9
0df3: dw $116d  ; ba
0df5: dw $0e41  ; bb
0df7: dw $0e48  ; bc
0df9: dw $0e4f  ; bd
0dfb: dw $0e58  ; be
0dfd: dw $0e61  ; bf
0dff: dw $0e69  ; c0
0e01: dw $0e71  ; c1
0e03: dw $0e83  ; c2
0e05: dw $0e2f  ; c3
0e07: dw $0e38  ; c4
0e09: dw $0e29  ; c5
0e0b: dw $0e0d  ; c6

; vcmd c6
0e0d: 4d        push  x
0e0e: cd 0e     mov   x,#$0e
0e10: 8d 00     mov   y,#$00
0e12: f5 01 01  mov   a,$0101+x
0e15: 68 1d     cmp   a,#$1d
0e17: d0 01     bne   $0e1a
0e19: fc        inc   y
0e1a: 1d        dec   x
0e1b: 1d        dec   x
0e1c: 10 f4     bpl   $0e12
0e1e: ce        pop   x
0e1f: ad 02     cmp   y,#$02
0e21: 90 03     bcc   $0e26
0e23: 5f 24 12  jmp   $1224

0e26: 5f 3a 09  jmp   $093a

; vcmd c5
0e29: 3f 16 08  call  $0816
0e2c: 5f 3a 09  jmp   $093a

; vcmd c3
0e2f: 3f 74 0d  call  $0d74
0e32: d5 01 01  mov   $0101+x,a
0e35: 5f 3a 09  jmp   $093a

; vcmd c4
0e38: 3f 74 0d  call  $0d74
0e3b: d5 c1 02  mov   $02c1+x,a
0e3e: 5f 3a 09  jmp   $093a

; vcmd bb
0e41: e8 01     mov   a,#$01
0e43: c4 eb     mov   $eb,a
0e45: 5f 3a 09  jmp   $093a

; vcmd bc
0e48: e8 00     mov   a,#$00
0e4a: c4 eb     mov   $eb,a
0e4c: 5f 3a 09  jmp   $093a

; vcmd bd
0e4f: 3f 74 0d  call  $0d74
0e52: d5 46 03  mov   $0346+x,a
0e55: 5f 3a 09  jmp   $093a

; vcmd be
0e58: 3f 74 0d  call  $0d74
0e5b: d5 45 03  mov   $0345+x,a
0e5e: 5f 3a 09  jmp   $093a

; vcmd bf
0e61: e8 01     mov   a,#$01
0e63: d5 12 01  mov   $0112+x,a
0e66: 5f 3a 09  jmp   $093a

; vcmd c0
0e69: e8 00     mov   a,#$00
0e6b: d5 12 01  mov   $0112+x,a
0e6e: 5f 3a 09  jmp   $093a

; vcmd c1
0e71: 3f 74 0d  call  $0d74
0e74: d4 40     mov   $40+x,a
0e76: 3f 74 0d  call  $0d74
0e79: d4 41     mov   $41+x,a
0e7b: e8 01     mov   a,#$01
0e7d: d5 13 01  mov   $0113+x,a
0e80: 5f 3a 09  jmp   $093a

; vcmd c2
0e83: e8 00     mov   a,#$00
0e85: d5 13 01  mov   $0113+x,a
0e88: 5f 3a 09  jmp   $093a

; vcmd 81
0e8b: 3f 74 0d  call  $0d74
0e8e: 2d        push  a
0e8f: 3f 74 0d  call  $0d74
0e92: d4 31     mov   $31+x,a
0e94: ae        pop   a
0e95: d4 30     mov   $30+x,a
0e97: 5f 3a 09  jmp   $093a

; vcmd 82
0e9a: 3f 74 0d  call  $0d74
0e9d: 2d        push  a
0e9e: 3f 74 0d  call  $0d74
0ea1: 2d        push  a
0ea2: 3f bb 12  call  $12bb
0ea5: ae        pop   a
0ea6: d4 31     mov   $31+x,a
0ea8: ae        pop   a
0ea9: d4 30     mov   $30+x,a
0eab: 5f 3a 09  jmp   $093a

; vcmd 83
0eae: 3f a2 12  call  $12a2
0eb1: 5f 3a 09  jmp   $093a

; vcmd 84
0eb4: 3f 74 0d  call  $0d74
0eb7: 2d        push  a
0eb8: 3f bb 12  call  $12bb
0ebb: ae        pop   a
0ebc: 3f b3 12  call  $12b3
0ebf: 5f 3a 09  jmp   $093a

; vcmd 85
0ec2: fb 50     mov   y,$50+x
0ec4: f6 7f 03  mov   a,$037f+y
0ec7: 9c        dec   a
0ec8: f0 10     beq   $0eda
0eca: d6 7f 03  mov   $037f+y,a
0ecd: f6 7e 03  mov   a,$037e+y
0ed0: d4 31     mov   $31+x,a
0ed2: f6 7d 03  mov   a,$037d+y
0ed5: d4 30     mov   $30+x,a
0ed7: 5f 3a 09  jmp   $093a

0eda: dd        mov   a,y
0edb: 80        setc
0edc: a8 03     sbc   a,#$03
0ede: d4 50     mov   $50+x,a
0ee0: 5f 3a 09  jmp   $093a

; vcmd 86
0ee3: 3f 74 0d  call  $0d74
0ee6: d5 30 02  mov   $0230+x,a
0ee9: 5f 3a 09  jmp   $093a

; vcmd 87
0eec: e8 ff     mov   a,#$ff
0eee: d5 31 02  mov   $0231+x,a
0ef1: 5f 3a 09  jmp   $093a

; vcmd 88
0ef4: 3f 74 0d  call  $0d74
0ef7: d5 40 02  mov   $0240+x,a
0efa: 5f 3a 09  jmp   $093a

; vcmd 89
0efd: 3f 74 0d  call  $0d74
0f00: d4 20     mov   $20+x,a
0f02: 5f 3a 09  jmp   $093a

; vcmd 8a
0f05: 3f 74 0d  call  $0d74
0f08: d4 00     mov   $00+x,a
0f0a: e8 00     mov   a,#$00
0f0c: d5 45 03  mov   $0345+x,a
0f0f: 5f 3a 09  jmp   $093a

; vcmd 8b
0f12: 3f 74 0d  call  $0d74
0f15: d4 01     mov   $01+x,a
0f17: 5f 0a 0f  jmp   $0f0a

; vcmd 8c
0f1a: 3f 74 0d  call  $0d74
0f1d: d5 41 02  mov   $0241+x,a
0f20: 3f 74 0d  call  $0d74
0f23: d4 40     mov   $40+x,a
0f25: 3f 74 0d  call  $0d74
0f28: d4 41     mov   $41+x,a
0f2a: e8 00     mov   a,#$00
0f2c: d4 60     mov   $60+x,a
0f2e: d5 b1 02  mov   $02b1+x,a
0f31: d5 e1 02  mov   $02e1+x,a
0f34: 9c        dec   a
0f35: d5 d0 02  mov   $02d0+x,a
0f38: e8 01     mov   a,#$01
0f3a: d4 51     mov   $51+x,a
0f3c: 3f 93 12  call  $1293
0f3f: d4 21     mov   $21+x,a
0f41: 5f 3a 09  jmp   $093a

; vcmd 8d
0f44: 3f 74 0d  call  $0d74
0f47: d5 c0 02  mov   $02c0+x,a
0f4a: 5f 3a 09  jmp   $093a

; vcmd 8e
0f4d: e8 01     mov   a,#$01
0f4f: 2f 02     bra   $0f53
; vcmd 8f
0f51: e8 ff     mov   a,#$ff
0f53: d5 50 02  mov   $0250+x,a
0f56: 3f 74 0d  call  $0d74
0f59: d5 11 02  mov   $0211+x,a
0f5c: 3f 74 0d  call  $0d74
0f5f: d5 00 02  mov   $0200+x,a
0f62: 3f 74 0d  call  $0d74
0f65: d5 01 02  mov   $0201+x,a
0f68: d4 71     mov   $71+x,a
0f6a: 5f 3a 09  jmp   $093a

; vcmd 91
0f6d: e8 00     mov   a,#$00
0f6f: d5 50 02  mov   $0250+x,a
0f72: 5f 3a 09  jmp   $093a

; vcmd 90
0f75: 3f 74 0d  call  $0d74
0f78: d5 51 02  mov   $0251+x,a
0f7b: 5f 3a 09  jmp   $093a

; vcmd 92
0f7e: 3f 74 0d  call  $0d74
0f81: d5 70 02  mov   $0270+x,a
0f84: e8 00     mov   a,#$00
0f86: d5 71 02  mov   $0271+x,a
0f89: 5f 3a 09  jmp   $093a

; vcmd 93
0f8c: 3f 74 0d  call  $0d74
0f8f: d5 71 02  mov   $0271+x,a
0f92: e8 00     mov   a,#$00
0f94: d5 70 02  mov   $0270+x,a
0f97: 5f 3a 09  jmp   $093a

; vcmd 94
0f9a: 3f 74 0d  call  $0d74
0f9d: d5 81 02  mov   $0281+x,a
0fa0: 3f 74 0d  call  $0d74
0fa3: d5 80 02  mov   $0280+x,a
0fa6: 5f 3a 09  jmp   $093a

; vcmd 95
0fa9: e8 00     mov   a,#$00
0fab: d5 80 02  mov   $0280+x,a
0fae: 5f 3a 09  jmp   $093a

; vcmd 96
0fb1: 3f 74 0d  call  $0d74
0fb4: d5 91 02  mov   $0291+x,a
0fb7: 3f 74 0d  call  $0d74
0fba: d5 a0 02  mov   $02a0+x,a
0fbd: 3f 74 0d  call  $0d74
0fc0: d5 a1 02  mov   $02a1+x,a
0fc3: d4 91     mov   $91+x,a
0fc5: 5f 3a 09  jmp   $093a

; vcmd 97
0fc8: 3f 74 0d  call  $0d74
0fcb: 3f d1 0f  call  $0fd1
0fce: 5f 3a 09  jmp   $093a

0fd1: 2d        push  a
0fd2: e8 c6     mov   a,#$c6
0fd4: c4 d9     mov   $d9,a
0fd6: e8 14     mov   a,#$14
0fd8: c4 da     mov   $da,a
0fda: ae        pop   a
0fdb: 8d 07     mov   y,#$07
0fdd: cf        mul   ya
0fde: 4d        push  x
0fdf: 60        clrc
0fe0: 7a d9     addw  ya,$d9
0fe2: da d9     movw  $d9,ya
0fe4: 8d 00     mov   y,#$00
0fe6: 7d        mov   a,x
0fe7: c4 e5     mov   $e5,a
0fe9: 1c        asl   a
0fea: 1c        asl   a
0feb: 1c        asl   a
0fec: 80        setc
0fed: a4 e5     sbc   a,$e5
0fef: 5c        lsr   a
0ff0: 5d        mov   x,a
0ff1: f7 d9     mov   a,($d9)+y
0ff3: d5 04 03  mov   $0304+x,a
0ff6: 3d        inc   x
0ff7: fc        inc   y
0ff8: ad 07     cmp   y,#$07
0ffa: d0 f5     bne   $0ff1
0ffc: ce        pop   x
0ffd: e8 00     mov   a,#$00
0fff: d5 d0 02  mov   $02d0+x,a
1002: d5 e1 02  mov   $02e1+x,a
1005: 9c        dec   a
1006: d5 b1 02  mov   $02b1+x,a
1009: 6f        ret

; vcmd 98
100a: e4 d2     mov   a,$d2
100c: 04 d6     or    a,$d6
100e: c4 d6     mov   $d6,a
1010: 5f 3a 09  jmp   $093a

; vcmd 99
1013: e4 d3     mov   a,$d3
1015: 24 d6     and   a,$d6
1017: c4 d6     mov   $d6,a
1019: 5f 3a 09  jmp   $093a

; vcmd 9a
101c: 3f 74 0d  call  $0d74
101f: 28 1f     and   a,#$1f
1021: 08 20     or    a,#$20
1023: 8f 6c f2  mov   $f2,#$6c
1026: 00        nop
1027: 00        nop
1028: 00        nop
1029: c4 f3     mov   $f3,a
102b: 5f 3a 09  jmp   $093a

; vcmd 9c
102e: e8 ff     mov   a,#$ff
1030: d5 e1 02  mov   $02e1+x,a
1033: 5f 3a 09  jmp   $093a

; vcmd 9b
1036: e8 00     mov   a,#$00
1038: d5 e1 02  mov   $02e1+x,a
103b: d5 d0 02  mov   $02d0+x,a
103e: 9c        dec   a
103f: d5 b1 02  mov   $02b1+x,a
1042: 5f 3a 09  jmp   $093a

; vcmd 9d
1045: e8 00     mov   a,#$00
1047: d5 e1 02  mov   $02e1+x,a
104a: d5 b1 02  mov   $02b1+x,a
104d: 9c        dec   a
104e: d5 d0 02  mov   $02d0+x,a
1051: 5f 3a 09  jmp   $093a

; vcmd 9e
1054: e8 00     mov   a,#$00
1056: d5 f0 02  mov   $02f0+x,a
1059: 5f 3a 09  jmp   $093a

; vcmd 9f
105c: e8 ff     mov   a,#$ff
105e: d5 f0 02  mov   $02f0+x,a
1061: 5f 3a 09  jmp   $093a

; vcmd a0
1064: e8 01     mov   a,#$01
1066: d4 c0     mov   $c0+x,a
1068: 5f 3a 09  jmp   $093a

; vcmd a1
106b: 4d        push  x
106c: f8 e4     mov   x,$e4
106e: cd 01     mov   x,#$01
1070: 3f 5a 07  call  $075a
1073: ce        pop   x
1074: f5 7e 13  mov   a,$137e+x
1077: c4 d2     mov   $d2,a
1079: f5 7f 13  mov   a,$137f+x
107c: c4 d3     mov   $d3,a
107e: 8f 00 e0  mov   $e0,#$00
1081: 8f 7f e1  mov   $e1,#$7f
1084: 5f 3a 09  jmp   $093a

; vcmd a2
1087: 7d        mov   a,x
1088: c4 e5     mov   $e5,a
108a: 1c        asl   a
108b: 1c        asl   a
108c: 1c        asl   a
108d: 80        setc
108e: a4 e5     sbc   a,$e5
1090: 5c        lsr   a
1091: fd        mov   y,a
1092: e8 07     mov   a,#$07
1094: c4 e5     mov   $e5,a
1096: 3f 74 0d  call  $0d74
1099: d6 04 03  mov   $0304+y,a
109c: fc        inc   y
109d: 8b e5     dec   $e5
109f: d0 f5     bne   $1096
10a1: 5f 36 10  jmp   $1036

; vcmd a3
10a4: 3f 74 0d  call  $0d74
10a7: 3f 8e 13  call  $138e
10aa: 1c        asl   a
10ab: c4 e5     mov   $e5,a
10ad: 60        clrc
10ae: f4 30     mov   a,$30+x
10b0: 84 e5     adc   a,$e5
10b2: d4 30     mov   $30+x,a
10b4: f4 31     mov   a,$31+x
10b6: 88 00     adc   a,#$00
10b8: d4 31     mov   $31+x,a
10ba: 5f 8b 0e  jmp   $0e8b

; vcmd a4
10bd: 3f 74 0d  call  $0d74
10c0: c4 e5     mov   $e5,a
10c2: 3f 8e 13  call  $138e
10c5: c4 d9     mov   $d9,a
10c7: 1c        asl   a
10c8: 60        clrc
10c9: 94 30     adc   a,$30+x
10cb: d4 30     mov   $30+x,a
10cd: f4 31     mov   a,$31+x
10cf: 88 00     adc   a,#$00
10d1: d4 31     mov   $31+x,a
10d3: 3f 74 0d  call  $0d74
10d6: 2d        push  a
10d7: 3f 74 0d  call  $0d74
10da: 2d        push  a
10db: e4 e5     mov   a,$e5
10dd: 9c        dec   a
10de: 80        setc
10df: a4 d9     sbc   a,$d9
10e1: 1c        asl   a
10e2: c4 d9     mov   $d9,a
10e4: f4 30     mov   a,$30+x
10e6: 84 d9     adc   a,$d9
10e8: d4 30     mov   $30+x,a
10ea: f4 31     mov   a,$31+x
10ec: 88 00     adc   a,#$00
10ee: d4 31     mov   $31+x,a
10f0: 3f bb 12  call  $12bb
10f3: ae        pop   a
10f4: d4 31     mov   $31+x,a
10f6: ae        pop   a
10f7: d4 30     mov   $30+x,a
10f9: 5f 3a 09  jmp   $093a

; vcmd a5
10fc: 3f 74 0d  call  $0d74
10ff: 3f 0b 11  call  $110b
1102: 16 3c 03  or    a,$033c+y
1105: d6 3c 03  mov   $033c+y,a
1108: 5f 3a 09  jmp   $093a

110b: 4d        push  x
110c: fd        mov   y,a
110d: 28 07     and   a,#$07
110f: 5d        mov   x,a
1110: dd        mov   a,y
1111: 5c        lsr   a
1112: 5c        lsr   a
1113: 5c        lsr   a
1114: fd        mov   y,a
1115: f5 1a 11  mov   a,$111a+x
1118: ce        pop   x
1119: 6f        ret

111a: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
1122: 3f 74 0d  call  $0d74
1125: 3f 0b 11  call  $110b
1128: 48 ff     eor   a,#$ff
112a: 36 3c 03  and   a,$033c+y
112d: d6 3c 03  mov   $033c+y,a
1130: 5f 3a 09  jmp   $093a

; vcmd a7
1133: 3f 74 0d  call  $0d74
1136: 3f 0b 11  call  $110b
1139: 36 3c 03  and   a,$033c+y
113c: f0 03     beq   $1141
113e: 5f 8b 0e  jmp   $0e8b

1141: f4 30     mov   a,$30+x
1143: 60        clrc
1144: 88 02     adc   a,#$02
1146: d4 30     mov   $30+x,a
1148: f4 31     mov   a,$31+x
114a: 88 00     adc   a,#$00
114c: d4 31     mov   $31+x,a
114e: 5f 3a 09  jmp   $093a

; vcmd a8
1151: 3f 74 0d  call  $0d74
1154: 3f 0b 11  call  $110b
1157: 36 3c 03  and   a,$033c+y
115a: d0 e5     bne   $1141
115c: 5f 8b 0e  jmp   $0e8b

; vcmd a9
115f: 3f 74 0d  call  $0d74
1162: 3f 0b 11  call  $110b
1165: 36 3c 03  and   a,$033c+y
1168: f0 11     beq   $117b
116a: 5f 3a 09  jmp   $093a

; vcmd ba
116d: 3f 74 0d  call  $0d74
1170: 3f 0b 11  call  $110b
1173: 36 3c 03  and   a,$033c+y
1176: d0 03     bne   $117b
1178: 5f 3a 09  jmp   $093a

117b: e8 01     mov   a,#$01
117d: d4 80     mov   $80+x,a
117f: f4 30     mov   a,$30+x
1181: 80        setc
1182: a8 02     sbc   a,#$02
1184: d4 30     mov   $30+x,a
1186: f4 31     mov   a,$31+x
1188: a8 00     sbc   a,#$00
118a: d4 31     mov   $31+x,a
118c: 5f 56 09  jmp   $0956

; vcmd aa
118f: e4 d2     mov   a,$d2
1191: 04 d7     or    a,$d7
1193: c4 d7     mov   $d7,a
1195: 8f 4d f2  mov   $f2,#$4d
1198: fa d7 f3  mov   ($f3),($d7)
119b: 5f 3a 09  jmp   $093a

; vcmd ab
119e: e4 d3     mov   a,$d3
11a0: 24 d7     and   a,$d7
11a2: c4 d7     mov   $d7,a
11a4: 8f 4d f2  mov   $f2,#$4d
11a7: fa d7 f3  mov   ($f3),($d7)
11aa: 5f 3a 09  jmp   $093a

; vcmd ac
11ad: 3f 74 0d  call  $0d74
11b0: 8f 2c f2  mov   $f2,#$2c
11b3: c4 f3     mov   $f3,a
11b5: 5f 3a 09  jmp   $093a

; vcmd ad
11b8: 3f 74 0d  call  $0d74
11bb: 8f 3c f2  mov   $f2,#$3c
11be: c4 f3     mov   $f3,a
11c0: 5f 3a 09  jmp   $093a

; vcmd ae
11c3: 3f 74 0d  call  $0d74
11c6: 8f 0d f2  mov   $f2,#$0d
11c9: c4 f3     mov   $f3,a
11cb: 5f 3a 09  jmp   $093a

; vcmd af
11ce: 8d 00     mov   y,#$00
11d0: dd        mov   a,y
11d1: 1c        asl   a
11d2: 1c        asl   a
11d3: 1c        asl   a
11d4: 1c        asl   a
11d5: 08 0f     or    a,#$0f
11d7: c4 f2     mov   $f2,a
11d9: 3f 74 0d  call  $0d74
11dc: c4 f3     mov   $f3,a
11de: fc        inc   y
11df: ad 08     cmp   y,#$08
11e1: d0 ed     bne   $11d0
11e3: 5f 3a 09  jmp   $093a

; vcmd b0
11e6: 3f 74 0d  call  $0d74
11e9: d5 56 03  mov   $0356+x,a
11ec: 5f 3a 09  jmp   $093a

; vcmd b1
11ef: e4 d2     mov   a,$d2
11f1: 04 d8     or    a,$d8
11f3: c4 d8     mov   $d8,a
11f5: 5f 3a 09  jmp   $093a

; vcmd b2
11f8: e4 d3     mov   a,$d3
11fa: 24 d8     and   a,$d8
11fc: c4 d8     mov   $d8,a
11fe: 5f 3a 09  jmp   $093a

; vcmd b3
1201: 3f 74 0d  call  $0d74
1204: d5 45 03  mov   $0345+x,a
1207: 3f 74 0d  call  $0d74
120a: d5 46 03  mov   $0346+x,a
120d: 5f 3a 09  jmp   $093a

; vcmd b4
1210: 3f 74 0d  call  $0d74
1213: d5 55 03  mov   $0355+x,a
1216: 5f 3a 09  jmp   $093a

; vcmd b5
1219: 3f 74 0d  call  $0d74
121c: 4d        push  x
121d: 3f d2 04  call  $04d2
1220: ce        pop   x
1221: 5f 3a 09  jmp   $093a

; vcmd 80
1224: e8 00     mov   a,#$00
1226: d5 65 03  mov   $0365+x,a
1229: d5 f1 02  mov   $02f1+x,a
122c: d5 c1 02  mov   $02c1+x,a
122f: 9c        dec   a
1230: d5 01 01  mov   $0101+x,a
1233: e4 d2     mov   a,$d2
1235: 04 d5     or    a,$d5
1237: c4 d5     mov   $d5,a
1239: 6f        ret

; vcmd b6
123a: 3f 74 0d  call  $0d74
123d: c4 fc     mov   $fc,a
123f: 5f 3a 09  jmp   $093a

; vcmd b7
1242: e8 ff     mov   a,#$ff
1244: d5 00 01  mov   $0100+x,a
1247: e8 01     mov   a,#$01
1249: d5 46 03  mov   $0346+x,a
124c: d5 45 03  mov   $0345+x,a
124f: 5f 3a 09  jmp   $093a

; vcmd b8
1252: e5 11 01  mov   a,$0111
1255: f0 0e     beq   $1265
1257: e4 d2     mov   a,$d2
1259: 04 d5     or    a,$d5
125b: c4 d5     mov   $d5,a
125d: 8f 5c f2  mov   $f2,#$5c
1260: c4 f3     mov   $f3,a
1262: 5f 24 12  jmp   $1224

1265: e8 01     mov   a,#$01
1267: d4 80     mov   $80+x,a
1269: f4 30     mov   a,$30+x
126b: 80        setc
126c: a8 01     sbc   a,#$01
126e: d4 30     mov   $30+x,a
1270: f4 31     mov   a,$31+x
1272: a8 00     sbc   a,#$00
1274: d4 31     mov   $31+x,a
1276: 5f 56 09  jmp   $0956

; vcmd b9
1279: 3f 74 0d  call  $0d74
127c: fd        mov   y,a
127d: f6 83 12  mov   a,$1283+y
1280: 5f 3d 09  jmp   $093d

1283: 05 05 05  or    a,$0505
1286: 05 05 05  or    a,$0505
1289: 05 05 05  or    a,$0505
128c: 05 05 05  or    a,$0505
128f: 05 05 05  or    a,$0505
1292: 05 f4 40  or    a,$40f4
1295: c4 d9     mov   $d9,a
1297: f4 41     mov   a,$41+x
1299: c4 da     mov   $da,a
129b: fb 60     mov   y,$60+x
129d: bb 60     inc   $60+x
129f: f7 d9     mov   a,($d9)+y
12a1: 6f        ret

12a2: fb 50     mov   y,$50+x
12a4: dc        dec   y
12a5: f6 80 03  mov   a,$0380+y
12a8: d4 31     mov   $31+x,a
12aa: dc        dec   y
12ab: f6 80 03  mov   a,$0380+y
12ae: d4 30     mov   $30+x,a
12b0: db 50     mov   $50+x,y
12b2: 6f        ret

12b3: fb 50     mov   y,$50+x
12b5: d6 80 03  mov   $0380+y,a
12b8: bb 50     inc   $50+x
12ba: 6f        ret

12bb: fb 50     mov   y,$50+x
12bd: f4 30     mov   a,$30+x
12bf: d6 80 03  mov   $0380+y,a
12c2: f4 31     mov   a,$31+x
12c4: d6 81 03  mov   $0381+y,a
12c7: fc        inc   y
12c8: fc        inc   y
12c9: db 50     mov   $50+x,y
12cb: 6f        ret

12cc: f6 65 03  mov   a,$0365+y
12cf: f0 37     beq   $1308
12d1: d8 f2     mov   $f2,x
12d3: f6 00 00  mov   a,$0000+y
12d6: 3f 0b 13  call  $130b
12d9: c4 f3     mov   $f3,a
12db: 3d        inc   x
12dc: d8 f2     mov   $f2,x
12de: f6 01 00  mov   a,$0001+y
12e1: 3f 0b 13  call  $130b
12e4: c4 f3     mov   $f3,a
12e6: 3d        inc   x
12e7: d8 f2     mov   $f2,x
12e9: f6 10 00  mov   a,$0010+y
12ec: c4 f3     mov   $f3,a
12ee: 3d        inc   x
12ef: d8 f2     mov   $f2,x
12f1: f6 11 00  mov   a,$0011+y
12f4: c4 f3     mov   $f3,a
12f6: 3d        inc   x
12f7: d8 f2     mov   $f2,x
12f9: f6 20 00  mov   a,$0020+y
12fc: c4 f3     mov   $f3,a
12fe: 3d        inc   x
12ff: 3d        inc   x
1300: 3d        inc   x
1301: d8 f2     mov   $f2,x
1303: f6 21 00  mov   a,$0021+y
1306: c4 f3     mov   $f3,a
1308: 5f 7c 05  jmp   $057c

130b: 30 17     bmi   $1324
130d: 6d        push  y
130e: 4d        push  x
130f: 6d        push  y
1310: ce        pop   x
1311: fd        mov   y,a
1312: f5 c1 02  mov   a,$02c1+x
1315: bc        inc   a
1316: d0 04     bne   $131c
1318: e4 e8     mov   a,$e8
131a: 2f 03     bra   $131f
131c: f5 66 03  mov   a,$0366+x
131f: cf        mul   ya
1320: dd        mov   a,y
1321: ce        pop   x
1322: ee        pop   y
1323: 6f        ret

1324: 48 ff     eor   a,#$ff
1326: bc        inc   a
1327: 6d        push  y
1328: 4d        push  x
1329: 6d        push  y
132a: ce        pop   x
132b: fd        mov   y,a
132c: f5 66 03  mov   a,$0366+x
132f: cf        mul   ya
1330: dd        mov   a,y
1331: ce        pop   x
1332: ee        pop   y
1333: 48 ff     eor   a,#$ff
1335: bc        inc   a
1336: 6f        ret

1337: cd 00     mov   x,#$00
1339: f5 49 13  mov   a,$1349+x
133c: 30 0a     bmi   $1348
133e: c4 f2     mov   $f2,a
1340: f5 64 13  mov   a,$1364+x
1343: c4 f3     mov   $f3,a
1345: 3d        inc   x
1346: d0 f1     bne   $1339
1348: 6f        ret

1349: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
1364: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$2e,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

137e: db $01,$fe
1380: db $02,$fd
1382: db $04,$fb
1384: db $08,$f7
1386: db $10,$ef
1388: db $20,$df
138a: db $40,$bf
138c: db $80,$7f

138e: fd        mov   y,a
138f: 3f ac 13  call  $13ac
1392: 3f ac 13  call  $13ac
1395: 3f ac 13  call  $13ac
1398: 3f ac 13  call  $13ac
139b: 3f ac 13  call  $13ac
139e: 3f ac 13  call  $13ac
13a1: 3f ac 13  call  $13ac
13a4: 3f ac 13  call  $13ac
13a7: e4 ec     mov   a,$ec
13a9: cf        mul   ya
13aa: dd        mov   a,y
13ab: 6f        ret

13ac: e4 ec     mov   a,$ec
13ae: 28 48     and   a,#$48
13b0: 88 38     adc   a,#$38
13b2: 1c        asl   a
13b3: 1c        asl   a
13b4: 2b ef     rol   $ef
13b6: 2b ee     rol   $ee
13b8: 2b ed     rol   $ed
13ba: 2b ec     rol   $ec
13bc: 6f        ret
