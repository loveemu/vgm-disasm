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
041a: 3f 57 12  call  $1257
041d: 3f 91 08  call  $0891
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
0446: 3f 6f 05  call  $056f
0449: 8f 6c f2  mov   $f2,#$6c
044c: 8f 33 f3  mov   $f3,#$33
044f: cd 00     mov   x,#$00
0451: 3f 18 07  call  $0718
0454: 3f 4c 06  call  $064c
0457: 9d        mov   x,sp
0458: c8 22     cmp   x,#$22
045a: 90 29     bcc   $0485
045c: 3d        inc   x
045d: d0 26     bne   $0485
045f: e9 13 01  mov   x,$0113
0462: d8 f7     mov   $f7,x
0464: 3f 3d 05  call  $053d
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
047f: 3f 4c 06  call  $064c
0482: 5f 57 04  jmp   $0457

0485: 7d        mov   a,x
0486: 9c        dec   a
0487: cd 89     mov   x,#$89
0489: 5f 87 13  jmp   $1387

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
04cf: 5f 87 13  jmp   $1387

04d2: fd        mov   y,a
04d3: 68 3c     cmp   a,#$3c
04d5: b0 f6     bcs   $04cd
04d7: cd 0e     mov   x,#$0e
04d9: f6 30 15  mov   a,$1530+y
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
050d: f6 30 15  mov   a,$1530+y
0510: 28 7f     and   a,#$7f
0512: 64 e5     cmp   a,$e5
0514: b0 02     bcs   $0518
0516: 60        clrc
0517: 6f        ret

0518: dd        mov   a,y
0519: d5 01 01  mov   $0101+x,a
051c: f6 30 15  mov   a,$1530+y
051f: 28 7f     and   a,#$7f
0521: d5 c1 02  mov   $02c1+x,a
0524: 3f d4 07  call  $07d4
0527: f6 b8 14  mov   a,$14b8+y
052a: d4 30     mov   $30+x,a
052c: f6 f4 14  mov   a,$14f4+y
052f: d4 31     mov   $31+x,a
0531: e4 e9     mov   a,$e9
0533: d5 66 03  mov   $0366+x,a
0536: 80        setc
0537: 6f        ret

0538: cd 80     mov   x,#$80
053a: 5f 87 13  jmp   $1387

053d: 3f 7f 05  call  $057f
0540: e4 f6     mov   a,$f6
0542: 28 c0     and   a,#$c0
0544: 64 d1     cmp   a,$d1
0546: f0 14     beq   $055c
0548: fd        mov   y,a
0549: c4 d1     mov   $d1,a
054b: e4 f6     mov   a,$f6
054d: 28 3f     and   a,#$3f
054f: 5d        mov   x,a
0550: f5 da 05  mov   a,$05da+x
0553: 2d        push  a
0554: f5 ce 05  mov   a,$05ce+x
0557: 2d        push  a
0558: e4 f7     mov   a,$f7
055a: cb f6     mov   $f6,y
055c: 60        clrc
055d: 6f        ret

055e: d8 f4     mov   $f4,x
0560: 3d        inc   x
0561: d0 03     bne   $0566
0563: 5f 8c 04  jmp   $048c

0566: e4 f4     mov   a,$f4
0568: d0 fc     bne   $0566
056a: c4 f4     mov   $f4,a
056c: 3d        inc   x
056d: d0 0c     bne   $057b
056f: 8f 80 db  mov   $db,#$80
0572: 8f 39 dc  mov   $dc,#$39
0575: e8 00     mov   a,#$00
0577: c5 10 01  mov   $0110,a
057a: 6f        ret

057b: ac 11 01  inc   $0111
057e: 6f        ret

057f: f8 f4     mov   x,$f4
0581: f0 4a     beq   $05cd
0583: f8 f4     mov   x,$f4
0585: 30 d7     bmi   $055e
0587: 8d 00     mov   y,#$00
0589: e4 f5     mov   a,$f5
058b: d8 f4     mov   $f4,x
058d: d7 db     mov   ($db)+y,a
058f: 3a db     incw  $db
0591: 3e f4     cmp   x,$f4
0593: f0 fc     beq   $0591
0595: f8 f4     mov   x,$f4
0597: d0 f0     bne   $0589
0599: d8 f4     mov   $f4,x
059b: 78 b0 db  cmp   $db,#$b0
059e: d0 0b     bne   $05ab
05a0: 78 3f dc  cmp   $dc,#$3f
05a3: d0 06     bne   $05ab
05a5: 8f 80 db  mov   $db,#$80
05a8: 8f 39 dc  mov   $dc,#$39
05ab: e5 a7 3f  mov   a,$3fa7
05ae: 28 01     and   a,#$01
05b0: 68 01     cmp   a,#$01
05b2: f0 08     beq   $05bc
05b4: e5 a7 3f  mov   a,$3fa7
05b7: 08 03     or    a,#$03
05b9: c5 a7 3f  mov   $3fa7,a
05bc: e5 10 01  mov   a,$0110
05bf: d0 0c     bne   $05cd
05c1: ac 10 01  inc   $0110
05c4: e8 00     mov   a,#$00
05c6: c5 11 01  mov   $0111,a
05c9: 60        clrc
05ca: 5f f9 05  jmp   $05f9

05cd: 60        clrc
05ce: 6f        ret

; $05e7
; $05f9
; $0604
; $061a
; $061f
; $0624
; $063c
; $063f
; $0642
; $0645
; $0631
; $0648
05cf: db $e7,$f9,$04,$1a,$1f,$24,$3c,$3f,$42,$45,$31,$48 ; $05ce+x
05db: db $05,$05,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06 ; $05da+x

05e7: 5d        mov   x,a
05e8: 1d        dec   x
05e9: d8 e4     mov   $e4,x
05eb: 3f 18 07  call  $0718
05ee: 8f 00 e0  mov   $e0,#$00
05f1: 8f 7f e1  mov   $e1,#$7f
05f4: 3f bf 04  call  $04bf
05f7: 80        setc
05f8: 6f        ret

05f9: 3f d2 04  call  $04d2
05fc: 8f 00 e0  mov   $e0,#$00
05ff: 8f 7f e1  mov   $e1,#$7f
0602: 60        clrc
0603: 6f        ret

0604: 8d 00     mov   y,#$00
0606: bc        inc   a
0607: 9c        dec   a
0608: 10 01     bpl   $060b
060a: dc        dec   y
060b: cb e3     mov   $e3,y
060d: 1c        asl   a
060e: 2b e3     rol   $e3
0610: 1c        asl   a
0611: 2b e3     rol   $e3
0613: 1c        asl   a
0614: 2b e3     rol   $e3
0616: c4 e2     mov   $e2,a
0618: 60        clrc
0619: 6f        ret

061a: 8f 55 f5  mov   $f5,#$55
061d: 60        clrc
061e: 6f        ret

061f: 3f e7 05  call  $05e7
0622: 60        clrc
0623: 6f        ret

0624: 3f 82 10  call  $1082
0627: 48 ff     eor   a,#$ff
0629: 36 3c 03  and   a,$033c+y
062c: d6 3c 03  mov   $033c+y,a
062f: 60        clrc
0630: 6f        ret

0631: 3f 82 10  call  $1082
0634: 16 3c 03  or    a,$033c+y
0637: d6 3c 03  mov   $033c+y,a
063a: 60        clrc
063b: 6f        ret

063c: c4 e8     mov   $e8,a
063e: 6f        ret

063f: c4 e9     mov   $e9,a
0641: 6f        ret

0642: c4 ea     mov   $ea,a
0644: 6f        ret

0645: c4 d0     mov   $d0,a
0647: 6f        ret

0648: c5 a3 11  mov   $11a3,a
064b: 6f        ret

064c: e4 eb     mov   a,$eb
064e: f0 00     beq   $0650
0650: ab e6     inc   $e6
0652: ba e2     movw  ya,$e2
0654: f0 24     beq   $067a
0656: 30 12     bmi   $066a
0658: ba e0     movw  ya,$e0
065a: 7a e2     addw  ya,$e2
065c: 10 08     bpl   $0666
065e: 8f 00 e2  mov   $e2,#$00
0661: 8f 00 e3  mov   $e3,#$00
0664: 8d 7f     mov   y,#$7f
0666: da e0     movw  $e0,ya
0668: 2f 10     bra   $067a
066a: ba e0     movw  ya,$e0
066c: 7a e2     addw  ya,$e2
066e: 10 08     bpl   $0678
0670: 8f 00 e2  mov   $e2,#$00
0673: 8f 00 e3  mov   $e3,#$00
0676: 8d 00     mov   y,#$00
0678: da e0     movw  $e0,ya
067a: 8f 4c f2  mov   $f2,#$4c
067d: fa d4 f3  mov   ($f3),($d4)
0680: 8f 00 d4  mov   $d4,#$00
0683: 8f 3d f2  mov   $f2,#$3d
0686: fa d6 f3  mov   ($f3),($d6)
0689: cd 00     mov   x,#$00
068b: 3f dd 08  call  $08dd
068e: b0 2f     bcs   $06bf
0690: cd 02     mov   x,#$02
0692: 3f dd 08  call  $08dd
0695: b0 28     bcs   $06bf
0697: cd 04     mov   x,#$04
0699: 3f dd 08  call  $08dd
069c: b0 21     bcs   $06bf
069e: cd 06     mov   x,#$06
06a0: 3f dd 08  call  $08dd
06a3: b0 1a     bcs   $06bf
06a5: cd 08     mov   x,#$08
06a7: 3f dd 08  call  $08dd
06aa: b0 13     bcs   $06bf
06ac: cd 0a     mov   x,#$0a
06ae: 3f dd 08  call  $08dd
06b1: b0 0c     bcs   $06bf
06b3: cd 0c     mov   x,#$0c
06b5: 3f dd 08  call  $08dd
06b8: b0 05     bcs   $06bf
06ba: cd 0e     mov   x,#$0e
06bc: 3f dd 08  call  $08dd
06bf: 8f 5c f2  mov   $f2,#$5c
06c2: fa d5 f3  mov   ($f3),($d5)
06c5: 8f 00 d5  mov   $d5,#$00
06c8: e4 e1     mov   a,$e1
06ca: 8f 0c f2  mov   $f2,#$0c
06cd: c4 f3     mov   $f3,a
06cf: 8f 1c f2  mov   $f2,#$1c
06d2: c4 f3     mov   $f3,a
06d4: 8d 00     mov   y,#$00
06d6: cd 00     mov   x,#$00
06d8: 3f ec 11  call  $11ec
06db: 8d 02     mov   y,#$02
06dd: cd 10     mov   x,#$10
06df: 3f ec 11  call  $11ec
06e2: 8d 04     mov   y,#$04
06e4: cd 20     mov   x,#$20
06e6: 3f ec 11  call  $11ec
06e9: 8d 06     mov   y,#$06
06eb: cd 30     mov   x,#$30
06ed: 3f ec 11  call  $11ec
06f0: 8d 08     mov   y,#$08
06f2: cd 40     mov   x,#$40
06f4: 3f ec 11  call  $11ec
06f7: 8d 0a     mov   y,#$0a
06f9: cd 50     mov   x,#$50
06fb: 3f ec 11  call  $11ec
06fe: 8d 0c     mov   y,#$0c
0700: cd 60     mov   x,#$60
0702: 3f ec 11  call  $11ec
0705: 8d 0e     mov   y,#$0e
0707: cd 70     mov   x,#$70
0709: 3f ec 11  call  $11ec
070c: 8f 5c f2  mov   $f2,#$5c
070f: 8f 00 f3  mov   $f3,#$00
0712: 6f        ret

0713: cd 01     mov   x,#$01
0715: 5f 87 13  jmp   $1387

0718: 7d        mov   a,x
0719: 68 02     cmp   a,#$02
071b: b0 f6     bcs   $0713
071d: fd        mov   y,a
071e: cd 00     mov   x,#$00
0720: f6 94 13  mov   a,$1394+y
0723: f0 0a     beq   $072f
0725: c4 31     mov   $31,a
0727: f6 92 13  mov   a,$1392+y
072a: c4 30     mov   $30,a
072c: 3f c7 07  call  $07c7
072f: 3d        inc   x
0730: 3d        inc   x
0731: f6 98 13  mov   a,$1398+y
0734: f0 0a     beq   $0740
0736: d4 31     mov   $31+x,a
0738: f6 96 13  mov   a,$1396+y
073b: d4 30     mov   $30+x,a
073d: 3f c7 07  call  $07c7
0740: 3d        inc   x
0741: 3d        inc   x
0742: f6 9c 13  mov   a,$139c+y
0745: f0 0a     beq   $0751
0747: d4 31     mov   $31+x,a
0749: f6 9a 13  mov   a,$139a+y
074c: d4 30     mov   $30+x,a
074e: 3f c7 07  call  $07c7
0751: 3d        inc   x
0752: 3d        inc   x
0753: f6 a0 13  mov   a,$13a0+y
0756: f0 0a     beq   $0762
0758: d4 31     mov   $31+x,a
075a: f6 9e 13  mov   a,$139e+y
075d: d4 30     mov   $30+x,a
075f: 3f c7 07  call  $07c7
0762: 3d        inc   x
0763: 3d        inc   x
0764: f6 a4 13  mov   a,$13a4+y
0767: f0 0a     beq   $0773
0769: d4 31     mov   $31+x,a
076b: f6 a2 13  mov   a,$13a2+y
076e: d4 30     mov   $30+x,a
0770: 3f c7 07  call  $07c7
0773: 3d        inc   x
0774: 3d        inc   x
0775: f6 a8 13  mov   a,$13a8+y
0778: f0 0a     beq   $0784
077a: d4 31     mov   $31+x,a
077c: f6 a6 13  mov   a,$13a6+y
077f: d4 30     mov   $30+x,a
0781: 3f c7 07  call  $07c7
0784: 3d        inc   x
0785: 3d        inc   x
0786: f6 ac 13  mov   a,$13ac+y
0789: f0 0a     beq   $0795
078b: d4 31     mov   $31+x,a
078d: f6 aa 13  mov   a,$13aa+y
0790: d4 30     mov   $30+x,a
0792: 3f c7 07  call  $07c7
0795: 3d        inc   x
0796: 3d        inc   x
0797: f6 b0 13  mov   a,$13b0+y
079a: f0 0a     beq   $07a6
079c: d4 31     mov   $31+x,a
079e: f6 ae 13  mov   a,$13ae+y
07a1: d4 30     mov   $30+x,a
07a3: 3f c7 07  call  $07c7
07a6: 3d        inc   x
07a7: 3d        inc   x
07a8: dd        mov   a,y
07a9: 5d        mov   x,a
07aa: 1d        dec   x
07ab: f5 b2 13  mov   a,$13b2+x
07ae: c4 d9     mov   $d9,a
07b0: f5 b3 13  mov   a,$13b3+x
07b3: c4 da     mov   $da,a
07b5: f0 0f     beq   $07c6
07b7: 8d fb     mov   y,#$fb
07b9: f7 d9     mov   a,($d9)+y
07bb: d6 bb 13  mov   $13bb+y,a
07be: dc        dec   y
07bf: d0 f8     bne   $07b9
07c1: f7 d9     mov   a,($d9)+y
07c3: d6 bb 13  mov   $13bb+y,a
07c6: 6f        ret

07c7: e8 ff     mov   a,#$ff
07c9: d5 c1 02  mov   $02c1+x,a
07cc: d5 01 01  mov   $0101+x,a
07cf: e4 e8     mov   a,$e8
07d1: d5 66 03  mov   $0366+x,a
07d4: e8 00     mov   a,#$00
07d6: d5 00 01  mov   $0100+x,a
07d9: d4 00     mov   $00+x,a
07db: d4 01     mov   $01+x,a
07dd: d4 10     mov   $10+x,a
07df: d4 11     mov   $11+x,a
07e1: d4 20     mov   $20+x,a
07e3: d4 21     mov   $21+x,a
07e5: d4 51     mov   $51+x,a
07e7: d4 60     mov   $60+x,a
07e9: d4 70     mov   $70+x,a
07eb: d4 71     mov   $71+x,a
07ed: d4 81     mov   $81+x,a
07ef: d4 90     mov   $90+x,a
07f1: d4 91     mov   $91+x,a
07f3: d4 a0     mov   $a0+x,a
07f5: d4 a1     mov   $a1+x,a
07f7: d4 b0     mov   $b0+x,a
07f9: d4 b1     mov   $b1+x,a
07fb: d4 c0     mov   $c0+x,a
07fd: d4 c1     mov   $c1+x,a
07ff: d5 00 02  mov   $0200+x,a
0802: d5 01 02  mov   $0201+x,a
0805: d5 10 02  mov   $0210+x,a
0808: d5 11 02  mov   $0211+x,a
080b: d5 20 02  mov   $0220+x,a
080e: d5 21 02  mov   $0221+x,a
0811: d5 30 02  mov   $0230+x,a
0814: d5 31 02  mov   $0231+x,a
0817: d5 40 02  mov   $0240+x,a
081a: d5 41 02  mov   $0241+x,a
081d: d5 50 02  mov   $0250+x,a
0820: d5 51 02  mov   $0251+x,a
0823: d5 60 02  mov   $0260+x,a
0826: d5 61 02  mov   $0261+x,a
0829: d5 70 02  mov   $0270+x,a
082c: d5 71 02  mov   $0271+x,a
082f: d5 80 02  mov   $0280+x,a
0832: d5 81 02  mov   $0281+x,a
0835: d5 90 02  mov   $0290+x,a
0838: d5 91 02  mov   $0291+x,a
083b: d5 a0 02  mov   $02a0+x,a
083e: d5 a1 02  mov   $02a1+x,a
0841: d5 b0 02  mov   $02b0+x,a
0844: d5 b1 02  mov   $02b1+x,a
0847: d5 c0 02  mov   $02c0+x,a
084a: d5 d0 02  mov   $02d0+x,a
084d: d5 d1 02  mov   $02d1+x,a
0850: d5 e0 02  mov   $02e0+x,a
0853: d5 e1 02  mov   $02e1+x,a
0856: d5 f0 02  mov   $02f0+x,a
0859: d5 45 03  mov   $0345+x,a
085c: d5 65 03  mov   $0365+x,a
085f: d5 12 01  mov   $0112+x,a
0862: d5 13 01  mov   $0113+x,a
0865: e8 ff     mov   a,#$ff
0867: d5 f1 02  mov   $02f1+x,a
086a: 7d        mov   a,x
086b: 1c        asl   a
086c: 1c        asl   a
086d: 1c        asl   a
086e: d4 50     mov   $50+x,a
0870: e8 01     mov   a,#$01
0872: d4 80     mov   $80+x,a
0874: f5 9f 12  mov   a,$129f+x
0877: 24 d7     and   a,$d7
0879: c4 d7     mov   $d7,a
087b: f5 9f 12  mov   a,$129f+x
087e: 24 d6     and   a,$d6
0880: c4 d6     mov   $d6,a
0882: f5 9f 12  mov   a,$129f+x
0885: 24 d8     and   a,$d8
0887: c4 d8     mov   $d8,a
0889: f5 9e 12  mov   a,$129e+x
088c: 04 d5     or    a,$d5
088e: c4 d5     mov   $d5,a
0890: 6f        ret

0891: e8 00     mov   a,#$00
0893: 8d 00     mov   y,#$00
0895: d6 00 00  mov   $0000+y,a
0898: d6 00 01  mov   $0100+y,a
089b: fc        inc   y
089c: ad f0     cmp   y,#$f0
089e: d0 f5     bne   $0895
08a0: bc        inc   a
08a1: 8d 14     mov   y,#$14
08a3: d6 80 00  mov   $0080+y,a
08a6: dc        dec   y
08a7: dc        dec   y
08a8: 10 f9     bpl   $08a3
08aa: 9c        dec   a
08ab: 8d 00     mov   y,#$00
08ad: d6 00 02  mov   $0200+y,a
08b0: d6 00 03  mov   $0300+y,a
08b3: dc        dec   y
08b4: d0 f7     bne   $08ad
08b6: 8f 00 db  mov   $db,#$00
08b9: 8f 03 dc  mov   $dc,#$03
08bc: 8f 04 d9  mov   $d9,#$04
08bf: 8f 00 da  mov   $da,#$00
08c2: 8d 00     mov   y,#$00
08c4: e8 00     mov   a,#$00
08c6: d7 db     mov   ($db)+y,a
08c8: fc        inc   y
08c9: d0 02     bne   $08cd
08cb: ab dc     inc   $dc
08cd: 8b d9     dec   $d9
08cf: f8 d9     mov   x,$d9
08d1: 3d        inc   x
08d2: d0 f0     bne   $08c4
08d4: 8b da     dec   $da
08d6: f8 da     mov   x,$da
08d8: 3d        inc   x
08d9: d0 e9     bne   $08c4
08db: 6f        ret

08dc: 6f        ret

08dd: f5 f1 02  mov   a,$02f1+x
08e0: 30 03     bmi   $08e5
08e2: 5f 3d 05  jmp   $053d

08e5: e8 01     mov   a,#$01
08e7: d5 65 03  mov   $0365+x,a
08ea: f5 9e 12  mov   a,$129e+x
08ed: c4 d2     mov   $d2,a
08ef: f5 9f 12  mov   a,$129f+x
08f2: c4 d3     mov   $d3,a
08f4: 9b 80     dec   $80+x
08f6: d0 1c     bne   $0914
08f8: 3f eb 0c  call  $0ceb
08fb: 10 14     bpl   $0911
08fd: 68 c3     cmp   a,#$c3
08ff: b0 0b     bcs   $090c
0901: 1c        asl   a
0902: fd        mov   y,a
0903: f6 f7 0c  mov   a,$0cf7+y
0906: 2d        push  a
0907: f6 f6 0c  mov   a,$0cf6+y
090a: 2d        push  a
090b: 6f        ret

090c: cd 81     mov   x,#$81
090e: 5f 87 13  jmp   $1387

0911: 3f cf 0b  call  $0bcf
0914: 3f 61 09  call  $0961
0917: 3f ec 09  call  $09ec
091a: 3f 12 0a  call  $0a12
091d: 3f 60 0a  call  $0a60
0920: 3f ab 0a  call  $0aab
0923: 3f f3 0a  call  $0af3
0926: f5 60 02  mov   a,$0260+x
0929: 60        clrc
092a: 95 20 02  adc   a,$0220+x
092d: 0d        push  psw
092e: 60        clrc
092f: 95 c0 02  adc   a,$02c0+x
0932: d4 10     mov   $10+x,a
0934: f5 61 02  mov   a,$0261+x
0937: 95 21 02  adc   a,$0221+x
093a: 8e        pop   psw
093b: 88 00     adc   a,#$00
093d: d4 11     mov   $11+x,a
093f: 5f 3d 05  jmp   $053d

0942: f5 60 02  mov   a,$0260+x
0945: 80        setc
0946: b5 d1 02  sbc   a,$02d1+x
0949: c4 d9     mov   $d9,a
094b: f5 61 02  mov   a,$0261+x
094e: b5 e0 02  sbc   a,$02e0+x
0951: 04 d9     or    a,$d9
0953: 6f        ret

0954: f5 d1 02  mov   a,$02d1+x
0957: d5 60 02  mov   $0260+x,a
095a: f5 e0 02  mov   a,$02e0+x
095d: d5 61 02  mov   $0261+x,a
0960: 6f        ret

0961: f5 00 01  mov   a,$0100+x
0964: f0 0a     beq   $0970
0966: e4 ea     mov   a,$ea
0968: d5 45 03  mov   $0345+x,a
096b: e4 d0     mov   a,$d0
096d: d5 46 03  mov   $0346+x,a
0970: f5 45 03  mov   a,$0345+x
0973: f0 6b     beq   $09e0
0975: fd        mov   y,a
0976: f5 46 03  mov   a,$0346+x
0979: cf        mul   ya
097a: dd        mov   a,y
097b: c4 e5     mov   $e5,a
097d: f5 45 03  mov   a,$0345+x
0980: 80        setc
0981: a4 e5     sbc   a,$e5
0983: 1c        asl   a
0984: 9c        dec   a
0985: d4 01     mov   $01+x,a
0987: e4 e5     mov   a,$e5
0989: 1c        asl   a
098a: d4 00     mov   $00+x,a
098c: f5 46 03  mov   a,$0346+x
098f: 10 07     bpl   $0998
0991: f5 45 03  mov   a,$0345+x
0994: d4 00     mov   $00+x,a
0996: 2f 05     bra   $099d
0998: f5 45 03  mov   a,$0345+x
099b: d4 01     mov   $01+x,a
099d: e4 e6     mov   a,$e6
099f: 28 0f     and   a,#$0f
09a1: d0 17     bne   $09ba
09a3: f5 56 03  mov   a,$0356+x
09a6: f0 12     beq   $09ba
09a8: fd        mov   y,a
09a9: f5 45 03  mov   a,$0345+x
09ac: cf        mul   ya
09ad: dd        mov   a,y
09ae: d5 45 03  mov   $0345+x,a
09b1: d0 07     bne   $09ba
09b3: d4 00     mov   $00+x,a
09b5: d4 01     mov   $01+x,a
09b7: d5 56 03  mov   $0356+x,a
09ba: f5 55 03  mov   a,$0355+x
09bd: 30 0a     bmi   $09c9
09bf: 60        clrc
09c0: 95 46 03  adc   a,$0346+x
09c3: 90 18     bcc   $09dd
09c5: 8d ff     mov   y,#$ff
09c7: 2f 08     bra   $09d1
09c9: 60        clrc
09ca: 95 46 03  adc   a,$0346+x
09cd: b0 0e     bcs   $09dd
09cf: 8d 00     mov   y,#$00
09d1: f5 55 03  mov   a,$0355+x
09d4: 48 ff     eor   a,#$ff
09d6: 60        clrc
09d7: 88 01     adc   a,#$01
09d9: d5 55 03  mov   $0355+x,a
09dc: dd        mov   a,y
09dd: d5 46 03  mov   $0346+x,a
09e0: 6f        ret

09e1: 80        setc
09e2: a8 40     sbc   a,#$40
09e4: 30 02     bmi   $09e8
09e6: 1c        asl   a
09e7: 6f        ret

09e8: 1c        asl   a
09e9: 08 80     or    a,#$80
09eb: 6f        ret

09ec: f5 91 02  mov   a,$0291+x
09ef: f0 20     beq   $0a11
09f1: 9b 91     dec   $91+x
09f3: d0 1c     bne   $0a11
09f5: f5 b0 02  mov   a,$02b0+x
09f8: 75 90 02  cmp   a,$0290+x
09fb: f0 08     beq   $0a05
09fd: d5 90 02  mov   $0290+x,a
0a00: f5 a1 02  mov   a,$02a1+x
0a03: 2f 0a     bra   $0a0f
0a05: 60        clrc
0a06: 95 91 02  adc   a,$0291+x
0a09: d5 90 02  mov   $0290+x,a
0a0c: f5 a0 02  mov   a,$02a0+x
0a0f: d4 91     mov   $91+x,a
0a11: 6f        ret

0a12: f4 70     mov   a,$70+x
0a14: f0 04     beq   $0a1a
0a16: 9b 70     dec   $70+x
0a18: 2f 45     bra   $0a5f
0a1a: f5 10 02  mov   a,$0210+x
0a1d: f0 40     beq   $0a5f
0a1f: 30 15     bmi   $0a36
0a21: f5 00 02  mov   a,$0200+x
0a24: 60        clrc
0a25: 95 20 02  adc   a,$0220+x
0a28: d5 20 02  mov   $0220+x,a
0a2b: e8 00     mov   a,#$00
0a2d: 95 21 02  adc   a,$0221+x
0a30: d5 21 02  mov   $0221+x,a
0a33: 5f 4b 0a  jmp   $0a4b

0a36: f5 00 02  mov   a,$0200+x
0a39: 48 ff     eor   a,#$ff
0a3b: bc        inc   a
0a3c: 60        clrc
0a3d: 95 20 02  adc   a,$0220+x
0a40: d5 20 02  mov   $0220+x,a
0a43: e8 ff     mov   a,#$ff
0a45: 95 21 02  adc   a,$0221+x
0a48: d5 21 02  mov   $0221+x,a
0a4b: 9b 71     dec   $71+x
0a4d: d0 10     bne   $0a5f
0a4f: f5 01 02  mov   a,$0201+x
0a52: d4 71     mov   $71+x,a
0a54: f0 09     beq   $0a5f
0a56: f5 10 02  mov   a,$0210+x
0a59: 48 ff     eor   a,#$ff
0a5b: bc        inc   a
0a5c: d5 10 02  mov   $0210+x,a
0a5f: 6f        ret

0a60: f5 51 02  mov   a,$0251+x
0a63: d0 05     bne   $0a6a
0a65: 3f 54 09  call  $0954
0a68: 2f 40     bra   $0aaa
0a6a: 3f 42 09  call  $0942
0a6d: f0 3b     beq   $0aaa
0a6f: 90 1f     bcc   $0a90
0a71: f5 51 02  mov   a,$0251+x
0a74: 48 ff     eor   a,#$ff
0a76: bc        inc   a
0a77: 60        clrc
0a78: 95 60 02  adc   a,$0260+x
0a7b: d5 60 02  mov   $0260+x,a
0a7e: f5 61 02  mov   a,$0261+x
0a81: 88 ff     adc   a,#$ff
0a83: d5 61 02  mov   $0261+x,a
0a86: 3f 42 09  call  $0942
0a89: b0 1f     bcs   $0aaa
0a8b: 3f 54 09  call  $0954
0a8e: 2f 1a     bra   $0aaa
0a90: f5 60 02  mov   a,$0260+x
0a93: 60        clrc
0a94: 95 51 02  adc   a,$0251+x
0a97: d5 60 02  mov   $0260+x,a
0a9a: f5 61 02  mov   a,$0261+x
0a9d: 88 00     adc   a,#$00
0a9f: d5 61 02  mov   $0261+x,a
0aa2: 3f 42 09  call  $0942
0aa5: 90 03     bcc   $0aaa
0aa7: 3f 54 09  call  $0954
0aaa: 6f        ret

0aab: f5 d0 02  mov   a,$02d0+x
0aae: f0 42     beq   $0af2
0ab0: f4 51     mov   a,$51+x
0ab2: f0 1e     beq   $0ad2
0ab4: 9b 51     dec   $51+x
0ab6: d0 1a     bne   $0ad2
0ab8: 3f b3 11  call  $11b3
0abb: 10 0e     bpl   $0acb
0abd: 68 80     cmp   a,#$80
0abf: d0 06     bne   $0ac7
0ac1: f4 61     mov   a,$61+x
0ac3: d4 60     mov   $60+x,a
0ac5: 2f f1     bra   $0ab8
0ac7: 9b 60     dec   $60+x
0ac9: 2f 02     bra   $0acd
0acb: d4 21     mov   $21+x,a
0acd: f5 41 02  mov   a,$0241+x
0ad0: d4 51     mov   $51+x,a
0ad2: f4 c1     mov   a,$c1+x
0ad4: f0 1c     beq   $0af2
0ad6: 74 80     cmp   a,$80+x
0ad8: d0 18     bne   $0af2
0ada: f4 61     mov   a,$61+x
0adc: d0 14     bne   $0af2
0ade: f4 40     mov   a,$40+x
0ae0: c4 d9     mov   $d9,a
0ae2: f4 41     mov   a,$41+x
0ae4: c4 da     mov   $da,a
0ae6: 8d ff     mov   y,#$ff
0ae8: fc        inc   y
0ae9: f7 d9     mov   a,($d9)+y
0aeb: 10 fb     bpl   $0ae8
0aed: fc        inc   y
0aee: db 60     mov   $60+x,y
0af0: db 61     mov   $61+x,y
0af2: 6f        ret

0af3: f5 d0 02  mov   a,$02d0+x
0af6: d0 32     bne   $0b2a
0af8: f4 80     mov   a,$80+x
0afa: f0 10     beq   $0b0c
0afc: 74 c1     cmp   a,$c1+x
0afe: d0 0c     bne   $0b0c
0b00: e8 03     mov   a,#$03
0b02: d4 a1     mov   $a1+x,a
0b04: f4 21     mov   a,$21+x
0b06: d4 b1     mov   $b1+x,a
0b08: e8 00     mov   a,#$00
0b0a: d4 b0     mov   $b0+x,a
0b0c: 9b a0     dec   $a0+x
0b0e: d0 1a     bne   $0b2a
0b10: fb a1     mov   y,$a1+x
0b12: f6 30 0b  mov   a,$0b30+y
0b15: 2d        push  a
0b16: f6 2b 0b  mov   a,$0b2b+y
0b19: 2d        push  a
0b1a: 7d        mov   a,x
0b1b: c4 e5     mov   $e5,a
0b1d: 1c        asl   a
0b1e: 1c        asl   a
0b1f: 1c        asl   a
0b20: 80        setc
0b21: a4 e5     sbc   a,$e5
0b23: 5c        lsr   a
0b24: fd        mov   y,a
0b25: f6 04 03  mov   a,$0304+y
0b28: d4 a0     mov   $a0+x,a
0b2a: 6f        ret

0b2b: db $35,$67,$a2,$a3,$ce
0b30: db $0b,$0b,$0b,$0b,$0b

0b35: f6 07 03  mov   a,$0307+y
0b38: 80        setc
0b39: b6 05 03  sbc   a,$0305+y
0b3c: 6d        push  y
0b3d: 4d        push  x
0b3e: 2d        push  a
0b3f: f6 06 03  mov   a,$0306+y
0b42: f0 1f     beq   $0b63
0b44: fb b0     mov   y,$b0+x
0b46: 5d        mov   x,a
0b47: 1d        dec   x
0b48: ae        pop   a
0b49: cf        mul   ya
0b4a: 9e        div   ya,x
0b4b: ce        pop   x
0b4c: ee        pop   y
0b4d: 60        clrc
0b4e: 96 05 03  adc   a,$0305+y
0b51: d4 21     mov   $21+x,a
0b53: bb b0     inc   $b0+x
0b55: f6 06 03  mov   a,$0306+y
0b58: 74 b0     cmp   a,$b0+x
0b5a: d0 06     bne   $0b62
0b5c: bb a1     inc   $a1+x
0b5e: e8 00     mov   a,#$00
0b60: d4 b0     mov   $b0+x,a
0b62: 6f        ret

0b63: ae        pop   a
0b64: ce        pop   x
0b65: ee        pop   y
0b66: 6f        ret

0b67: f6 07 03  mov   a,$0307+y
0b6a: 80        setc
0b6b: b6 09 03  sbc   a,$0309+y
0b6e: 6d        push  y
0b6f: 4d        push  x
0b70: 2d        push  a
0b71: f6 08 03  mov   a,$0308+y
0b74: 2d        push  a
0b75: 60        clrc
0b76: b4 b0     sbc   a,$b0+x
0b78: f0 13     beq   $0b8d
0b7a: fd        mov   y,a
0b7b: ae        pop   a
0b7c: f0 20     beq   $0b9e
0b7e: 5d        mov   x,a
0b7f: ae        pop   a
0b80: cf        mul   ya
0b81: 9e        div   ya,x
0b82: ce        pop   x
0b83: ee        pop   y
0b84: 60        clrc
0b85: 96 09 03  adc   a,$0309+y
0b88: d4 21     mov   $21+x,a
0b8a: bb b0     inc   $b0+x
0b8c: 6f        ret

0b8d: ae        pop   a
0b8e: ae        pop   a
0b8f: ce        pop   x
0b90: ee        pop   y
0b91: f6 09 03  mov   a,$0309+y
0b94: d4 21     mov   $21+x,a
0b96: bb a1     inc   $a1+x
0b98: e8 00     mov   a,#$00
0b9a: d4 b0     mov   $b0+x,a
0b9c: 6f        ret

0b9d: 6f        ret

0b9e: ae        pop   a
0b9f: ce        pop   x
0ba0: ee        pop   y
0ba1: 6f        ret

0ba2: 6f        ret

0ba3: f4 b1     mov   a,$b1+x
0ba5: 6d        push  y
0ba6: 4d        push  x
0ba7: 2d        push  a
0ba8: f6 0a 03  mov   a,$030a+y
0bab: 2d        push  a
0bac: 60        clrc
0bad: b4 b0     sbc   a,$b0+x
0baf: f0 0f     beq   $0bc0
0bb1: fd        mov   y,a
0bb2: ae        pop   a
0bb3: f0 16     beq   $0bcb
0bb5: 5d        mov   x,a
0bb6: ae        pop   a
0bb7: cf        mul   ya
0bb8: 9e        div   ya,x
0bb9: ce        pop   x
0bba: ee        pop   y
0bbb: d4 21     mov   $21+x,a
0bbd: bb b0     inc   $b0+x
0bbf: 6f        ret

0bc0: ae        pop   a
0bc1: ae        pop   a
0bc2: ce        pop   x
0bc3: ee        pop   y
0bc4: e8 00     mov   a,#$00
0bc6: d4 21     mov   $21+x,a
0bc8: bb a1     inc   $a1+x
0bca: 6f        ret

0bcb: ae        pop   a
0bcc: ce        pop   x
0bcd: ee        pop   y
0bce: 6f        ret

0bcf: f0 53     beq   $0c24
0bd1: 3f 33 0c  call  $0c33
0bd4: fb 20     mov   y,$20+x
0bd6: 60        clrc
0bd7: 96 40 39  adc   a,$3940+y
0bda: 5b c0     lsr   $c0+x
0bdc: b0 04     bcs   $0be2
0bde: 60        clrc
0bdf: 95 40 02  adc   a,$0240+x
0be2: d5 b0 02  mov   $02b0+x,a
0be5: d5 90 02  mov   $0290+x,a
0be8: fd        mov   y,a
0be9: f5 80 02  mov   a,$0280+x
0bec: d4 81     mov   $81+x,a
0bee: d0 05     bne   $0bf5
0bf0: db 90     mov   $90+x,y
0bf2: 3f 63 0c  call  $0c63
0bf5: 3f 8c 0c  call  $0c8c
0bf8: f5 d0 02  mov   a,$02d0+x
0bfb: f0 0e     beq   $0c0b
0bfd: f5 e1 02  mov   a,$02e1+x
0c00: d0 09     bne   $0c0b
0c02: d4 60     mov   $60+x,a
0c04: d4 61     mov   $61+x,a
0c06: f5 41 02  mov   a,$0241+x
0c09: d4 51     mov   $51+x,a
0c0b: f5 a1 02  mov   a,$02a1+x
0c0e: d4 91     mov   $91+x,a
0c10: 3f bb 0c  call  $0cbb
0c13: f5 f0 02  mov   a,$02f0+x
0c16: d0 0c     bne   $0c24
0c18: e4 d2     mov   a,$d2
0c1a: 04 d4     or    a,$d4
0c1c: c4 d4     mov   $d4,a
0c1e: e4 d2     mov   a,$d2
0c20: 04 d5     or    a,$d5
0c22: c4 d5     mov   $d5,a
0c24: f5 12 01  mov   a,$0112+x
0c27: f0 03     beq   $0c2c
0c29: 3f e4 0c  call  $0ce4
0c2c: 3f cf 0c  call  $0ccf
0c2f: 3f a6 0c  call  $0ca6
0c32: 6f        ret

0c33: fd        mov   y,a
0c34: f5 13 01  mov   a,$0113+x
0c37: f0 28     beq   $0c61
0c39: dd        mov   a,y
0c3a: 80        setc
0c3b: a8 12     sbc   a,#$12
0c3d: 1c        asl   a
0c3e: 1c        asl   a
0c3f: fd        mov   y,a
0c40: f4 40     mov   a,$40+x
0c42: c4 d9     mov   $d9,a
0c44: f4 41     mov   a,$41+x
0c46: c4 da     mov   $da,a
0c48: f7 d9     mov   a,($d9)+y
0c4a: d4 20     mov   $20+x,a
0c4c: fc        inc   y
0c4d: f7 d9     mov   a,($d9)+y
0c4f: 2d        push  a
0c50: fc        inc   y
0c51: f7 d9     mov   a,($d9)+y
0c53: d5 46 03  mov   $0346+x,a
0c56: fc        inc   y
0c57: f7 d9     mov   a,($d9)+y
0c59: fd        mov   y,a
0c5a: ae        pop   a
0c5b: 6d        push  y
0c5c: 3f 48 0f  call  $0f48
0c5f: ae        pop   a
0c60: 6f        ret

0c61: dd        mov   a,y
0c62: 6f        ret

0c63: f6 db 12  mov   a,$12db+y
0c66: c4 d9     mov   $d9,a
0c68: f6 30 13  mov   a,$1330+y
0c6b: c4 da     mov   $da,a
0c6d: fb 20     mov   y,$20+x
0c6f: f6 00 39  mov   a,$3900+y
0c72: fd        mov   y,a
0c73: 6d        push  y
0c74: e4 d9     mov   a,$d9
0c76: cf        mul   ya
0c77: cb dd     mov   $dd,y
0c79: ee        pop   y
0c7a: e4 da     mov   a,$da
0c7c: cf        mul   ya
0c7d: 8f 00 de  mov   $de,#$00
0c80: 7a dd     addw  ya,$dd
0c82: 7a d9     addw  ya,$d9
0c84: d5 d1 02  mov   $02d1+x,a
0c87: dd        mov   a,y
0c88: d5 e0 02  mov   $02e0+x,a
0c8b: 6f        ret

0c8c: f5 11 02  mov   a,$0211+x
0c8f: d4 70     mov   $70+x,a
0c91: f5 01 02  mov   a,$0201+x
0c94: 5c        lsr   a
0c95: d4 71     mov   $71+x,a
0c97: f5 50 02  mov   a,$0250+x
0c9a: d5 10 02  mov   $0210+x,a
0c9d: e8 00     mov   a,#$00
0c9f: d5 21 02  mov   $0221+x,a
0ca2: d5 20 02  mov   $0220+x,a
0ca5: 6f        ret

0ca6: f5 70 02  mov   a,$0270+x
0ca9: f0 0a     beq   $0cb5
0cab: f4 80     mov   a,$80+x
0cad: 80        setc
0cae: b5 70 02  sbc   a,$0270+x
0cb1: d4 c1     mov   $c1+x,a
0cb3: 2f 05     bra   $0cba
0cb5: f5 71 02  mov   a,$0271+x
0cb8: d4 c1     mov   $c1+x,a
0cba: 6f        ret

0cbb: f5 b1 02  mov   a,$02b1+x
0cbe: f0 0e     beq   $0cce
0cc0: f5 e1 02  mov   a,$02e1+x
0cc3: d0 09     bne   $0cce
0cc5: e8 00     mov   a,#$00
0cc7: d4 a1     mov   $a1+x,a
0cc9: d4 b0     mov   $b0+x,a
0ccb: bc        inc   a
0ccc: d4 a0     mov   $a0+x,a
0cce: 6f        ret

0ccf: f5 31 02  mov   a,$0231+x
0cd2: d0 05     bne   $0cd9
0cd4: f5 30 02  mov   a,$0230+x
0cd7: d0 08     bne   $0ce1
0cd9: e8 00     mov   a,#$00
0cdb: d5 31 02  mov   $0231+x,a
0cde: 3f eb 0c  call  $0ceb
0ce1: d4 80     mov   $80+x,a
0ce3: 6f        ret

0ce4: 3f eb 0c  call  $0ceb
0ce7: d5 45 03  mov   $0345+x,a
0cea: 6f        ret

0ceb: e7 30     mov   a,($30+x)
0ced: bb 30     inc   $30+x
0cef: d0 02     bne   $0cf3
0cf1: bb 31     inc   $31+x
0cf3: 08 00     or    a,#$00
0cf5: 6f        ret

; vcmd dispatch table
0cf6: dw $1144  ; 80
0cf8: dw $0e02  ; 81
0cfa: dw $0e11  ; 82
0cfc: dw $0e25  ; 83
0cfe: dw $0e2b  ; 84
0d00: dw $0e39  ; 85
0d02: dw $0e5a  ; 86
0d04: dw $0e63  ; 87
0d06: dw $0e6b  ; 88
0d08: dw $0e74  ; 89
0d0a: dw $0e7c  ; 8a
0d0c: dw $0e89  ; 8b
0d0e: dw $0e91  ; 8c
0d10: dw $0ebb  ; 8d
0d12: dw $0ec4  ; 8e
0d14: dw $0ec8  ; 8f
0d16: dw $0eec  ; 90
0d18: dw $0ee4  ; 91
0d1a: dw $0ef5  ; 92
0d1c: dw $0f03  ; 93
0d1e: dw $0f11  ; 94
0d20: dw $0f20  ; 95
0d22: dw $0f28  ; 96
0d24: dw $0f3f  ; 97
0d26: dw $0f81  ; 98
0d28: dw $0f8a  ; 99
0d2a: dw $0f93  ; 9a
0d2c: dw $0fad  ; 9b
0d2e: dw $0fa5  ; 9c
0d30: dw $0fbc  ; 9d
0d32: dw $0fcb  ; 9e
0d34: dw $0fd3  ; 9f
0d36: dw $0fdb  ; a0
0d38: dw $0fe2  ; a1
0d3a: dw $0ffe  ; a2
0d3c: dw $101b  ; a3
0d3e: dw $1034  ; a4
0d40: dw $1073  ; a5
0d42: dw $1099  ; a6
0d44: dw $10aa  ; a7
0d46: dw $10c8  ; a8
0d48: dw $10d6  ; a9
0d4a: dw $1106  ; aa
0d4c: dw $1106  ; ab
0d4e: dw $1106  ; ac
0d50: dw $1106  ; ad
0d52: dw $1106  ; ae
0d54: dw $1106  ; af
0d56: dw $1106  ; b0
0d58: dw $110f  ; b1
0d5a: dw $1118  ; b2
0d5c: dw $1121  ; b3
0d5e: dw $1130  ; b4
0d60: dw $1139  ; b5
0d62: dw $115a  ; b6
0d64: dw $1162  ; b7
0d66: dw $1172  ; b8
0d68: dw $1199  ; b9
0d6a: dw $10e4  ; ba
0d6c: dw $0db8  ; bb
0d6e: dw $0dbf  ; bc
0d70: dw $0dc6  ; bd
0d72: dw $0dcf  ; be
0d74: dw $0dd8  ; bf
0d76: dw $0de0  ; c0
0d78: dw $0de8  ; c1
0d7a: dw $0dfa  ; c2
0d7c: dw $0da6  ; c3
0d7e: dw $0daf  ; c4
0d80: dw $0da0  ; c5
0d82: dw $0d84  ; c6

; vcmd c6
0d84: 4d        push  x
0d85: cd 0e     mov   x,#$0e
0d87: 8d 00     mov   y,#$00
0d89: f5 01 01  mov   a,$0101+x
0d8c: 68 1d     cmp   a,#$1d
0d8e: d0 01     bne   $0d91
0d90: fc        inc   y
0d91: 1d        dec   x
0d92: 1d        dec   x
0d93: 10 f4     bpl   $0d89
0d95: ce        pop   x
0d96: ad 02     cmp   y,#$02
0d98: 90 03     bcc   $0d9d
0d9a: 5f 44 11  jmp   $1144

0d9d: 5f f8 08  jmp   $08f8

; vcmd c5
0da0: 3f d4 07  call  $07d4
0da3: 5f f8 08  jmp   $08f8

; vcmd c3
0da6: 3f eb 0c  call  $0ceb
0da9: d5 01 01  mov   $0101+x,a
0dac: 5f f8 08  jmp   $08f8

; vcmd c4
0daf: 3f eb 0c  call  $0ceb
0db2: d5 c1 02  mov   $02c1+x,a
0db5: 5f f8 08  jmp   $08f8

; vcmd bb
0db8: e8 01     mov   a,#$01
0dba: c4 eb     mov   $eb,a
0dbc: 5f f8 08  jmp   $08f8

; vcmd bc
0dbf: e8 00     mov   a,#$00
0dc1: c4 eb     mov   $eb,a
0dc3: 5f f8 08  jmp   $08f8

; vcmd bd
0dc6: 3f eb 0c  call  $0ceb
0dc9: d5 46 03  mov   $0346+x,a
0dcc: 5f f8 08  jmp   $08f8

; vcmd be
0dcf: 3f eb 0c  call  $0ceb
0dd2: d5 45 03  mov   $0345+x,a
0dd5: 5f f8 08  jmp   $08f8

; vcmd bf
0dd8: e8 01     mov   a,#$01
0dda: d5 12 01  mov   $0112+x,a
0ddd: 5f f8 08  jmp   $08f8

; vcmd c0
0de0: e8 00     mov   a,#$00
0de2: d5 12 01  mov   $0112+x,a
0de5: 5f f8 08  jmp   $08f8

; vcmd c1
0de8: 3f eb 0c  call  $0ceb
0deb: d4 40     mov   $40+x,a
0ded: 3f eb 0c  call  $0ceb
0df0: d4 41     mov   $41+x,a
0df2: e8 01     mov   a,#$01
0df4: d5 13 01  mov   $0113+x,a
0df7: 5f f8 08  jmp   $08f8

; vcmd c2
0dfa: e8 00     mov   a,#$00
0dfc: d5 13 01  mov   $0113+x,a
0dff: 5f f8 08  jmp   $08f8

; vcmd 81
0e02: 3f eb 0c  call  $0ceb
0e05: 2d        push  a
0e06: 3f eb 0c  call  $0ceb
0e09: d4 31     mov   $31+x,a
0e0b: ae        pop   a
0e0c: d4 30     mov   $30+x,a
0e0e: 5f f8 08  jmp   $08f8

; vcmd 82
0e11: 3f eb 0c  call  $0ceb
0e14: 2d        push  a
0e15: 3f eb 0c  call  $0ceb
0e18: 2d        push  a
0e19: 3f db 11  call  $11db
0e1c: ae        pop   a
0e1d: d4 31     mov   $31+x,a
0e1f: ae        pop   a
0e20: d4 30     mov   $30+x,a
0e22: 5f f8 08  jmp   $08f8

; vcmd 83
0e25: 3f c2 11  call  $11c2
0e28: 5f f8 08  jmp   $08f8

; vcmd 84
0e2b: 3f eb 0c  call  $0ceb
0e2e: 2d        push  a
0e2f: 3f db 11  call  $11db
0e32: ae        pop   a
0e33: 3f d3 11  call  $11d3
0e36: 5f f8 08  jmp   $08f8

; vcmd 85
0e39: fb 50     mov   y,$50+x
0e3b: f6 7f 03  mov   a,$037f+y
0e3e: 9c        dec   a
0e3f: f0 10     beq   $0e51
0e41: d6 7f 03  mov   $037f+y,a
0e44: f6 7e 03  mov   a,$037e+y
0e47: d4 31     mov   $31+x,a
0e49: f6 7d 03  mov   a,$037d+y
0e4c: d4 30     mov   $30+x,a
0e4e: 5f f8 08  jmp   $08f8

0e51: dd        mov   a,y
0e52: 80        setc
0e53: a8 03     sbc   a,#$03
0e55: d4 50     mov   $50+x,a
0e57: 5f f8 08  jmp   $08f8

; vcmd 86
0e5a: 3f eb 0c  call  $0ceb
0e5d: d5 30 02  mov   $0230+x,a
0e60: 5f f8 08  jmp   $08f8

; vcmd 87
0e63: e8 ff     mov   a,#$ff
0e65: d5 31 02  mov   $0231+x,a
0e68: 5f f8 08  jmp   $08f8

; vcmd 88
0e6b: 3f eb 0c  call  $0ceb
0e6e: d5 40 02  mov   $0240+x,a
0e71: 5f f8 08  jmp   $08f8

; vcmd 89
0e74: 3f eb 0c  call  $0ceb
0e77: d4 20     mov   $20+x,a
0e79: 5f f8 08  jmp   $08f8

; vcmd 8a
0e7c: 3f eb 0c  call  $0ceb
0e7f: d4 00     mov   $00+x,a
0e81: e8 00     mov   a,#$00
0e83: d5 45 03  mov   $0345+x,a
0e86: 5f f8 08  jmp   $08f8

; vcmd 8b
0e89: 3f eb 0c  call  $0ceb
0e8c: d4 01     mov   $01+x,a
0e8e: 5f 81 0e  jmp   $0e81

; vcmd 8c
0e91: 3f eb 0c  call  $0ceb
0e94: d5 41 02  mov   $0241+x,a
0e97: 3f eb 0c  call  $0ceb
0e9a: d4 40     mov   $40+x,a
0e9c: 3f eb 0c  call  $0ceb
0e9f: d4 41     mov   $41+x,a
0ea1: e8 00     mov   a,#$00
0ea3: d4 60     mov   $60+x,a
0ea5: d5 b1 02  mov   $02b1+x,a
0ea8: d5 e1 02  mov   $02e1+x,a
0eab: 9c        dec   a
0eac: d5 d0 02  mov   $02d0+x,a
0eaf: e8 01     mov   a,#$01
0eb1: d4 51     mov   $51+x,a
0eb3: 3f b3 11  call  $11b3
0eb6: d4 21     mov   $21+x,a
0eb8: 5f f8 08  jmp   $08f8

; vcmd 8d
0ebb: 3f eb 0c  call  $0ceb
0ebe: d5 c0 02  mov   $02c0+x,a
0ec1: 5f f8 08  jmp   $08f8

; vcmd 8e
0ec4: e8 01     mov   a,#$01
0ec6: 2f 02     bra   $0eca
; vcmd 8f
0ec8: e8 ff     mov   a,#$ff
0eca: d5 50 02  mov   $0250+x,a
0ecd: 3f eb 0c  call  $0ceb
0ed0: d5 11 02  mov   $0211+x,a
0ed3: 3f eb 0c  call  $0ceb
0ed6: d5 00 02  mov   $0200+x,a
0ed9: 3f eb 0c  call  $0ceb
0edc: d5 01 02  mov   $0201+x,a
0edf: d4 71     mov   $71+x,a
0ee1: 5f f8 08  jmp   $08f8

; vcmd 91
0ee4: e8 00     mov   a,#$00
0ee6: d5 50 02  mov   $0250+x,a
0ee9: 5f f8 08  jmp   $08f8

; vcmd 90
0eec: 3f eb 0c  call  $0ceb
0eef: d5 51 02  mov   $0251+x,a
0ef2: 5f f8 08  jmp   $08f8

; vcmd 92
0ef5: 3f eb 0c  call  $0ceb
0ef8: d5 70 02  mov   $0270+x,a
0efb: e8 00     mov   a,#$00
0efd: d5 71 02  mov   $0271+x,a
0f00: 5f f8 08  jmp   $08f8

; vcmd 93
0f03: 3f eb 0c  call  $0ceb
0f06: d5 71 02  mov   $0271+x,a
0f09: e8 00     mov   a,#$00
0f0b: d5 70 02  mov   $0270+x,a
0f0e: 5f f8 08  jmp   $08f8

; vcmd 94
0f11: 3f eb 0c  call  $0ceb
0f14: d5 81 02  mov   $0281+x,a
0f17: 3f eb 0c  call  $0ceb
0f1a: d5 80 02  mov   $0280+x,a
0f1d: 5f f8 08  jmp   $08f8

; vcmd 95
0f20: e8 00     mov   a,#$00
0f22: d5 80 02  mov   $0280+x,a
0f25: 5f f8 08  jmp   $08f8

; vcmd 96
0f28: 3f eb 0c  call  $0ceb
0f2b: d5 91 02  mov   $0291+x,a
0f2e: 3f eb 0c  call  $0ceb
0f31: d5 a0 02  mov   $02a0+x,a
0f34: 3f eb 0c  call  $0ceb
0f37: d5 a1 02  mov   $02a1+x,a
0f3a: d4 91     mov   $91+x,a
0f3c: 5f f8 08  jmp   $08f8

; vcmd 97
0f3f: 3f eb 0c  call  $0ceb
0f42: 3f 48 0f  call  $0f48
0f45: 5f f8 08  jmp   $08f8

0f48: 2d        push  a
0f49: e8 b4     mov   a,#$b4
0f4b: c4 d9     mov   $d9,a
0f4d: e8 13     mov   a,#$13
0f4f: c4 da     mov   $da,a
0f51: ae        pop   a
0f52: 8d 07     mov   y,#$07
0f54: cf        mul   ya
0f55: 4d        push  x
0f56: 60        clrc
0f57: 7a d9     addw  ya,$d9
0f59: da d9     movw  $d9,ya
0f5b: 8d 00     mov   y,#$00
0f5d: 7d        mov   a,x
0f5e: c4 e5     mov   $e5,a
0f60: 1c        asl   a
0f61: 1c        asl   a
0f62: 1c        asl   a
0f63: 80        setc
0f64: a4 e5     sbc   a,$e5
0f66: 5c        lsr   a
0f67: 5d        mov   x,a
0f68: f7 d9     mov   a,($d9)+y
0f6a: d5 04 03  mov   $0304+x,a
0f6d: 3d        inc   x
0f6e: fc        inc   y
0f6f: ad 07     cmp   y,#$07
0f71: d0 f5     bne   $0f68
0f73: ce        pop   x
0f74: e8 00     mov   a,#$00
0f76: d5 d0 02  mov   $02d0+x,a
0f79: d5 e1 02  mov   $02e1+x,a
0f7c: 9c        dec   a
0f7d: d5 b1 02  mov   $02b1+x,a
0f80: 6f        ret

; vcmd 98
0f81: e4 d2     mov   a,$d2
0f83: 04 d6     or    a,$d6
0f85: c4 d6     mov   $d6,a
0f87: 5f f8 08  jmp   $08f8

; vcmd 99
0f8a: e4 d3     mov   a,$d3
0f8c: 24 d6     and   a,$d6
0f8e: c4 d6     mov   $d6,a
0f90: 5f f8 08  jmp   $08f8

; vcmd 9a
0f93: 3f eb 0c  call  $0ceb
0f96: 28 1f     and   a,#$1f
0f98: 08 20     or    a,#$20
0f9a: 8f 6c f2  mov   $f2,#$6c
0f9d: 00        nop
0f9e: 00        nop
0f9f: 00        nop
0fa0: c4 f3     mov   $f3,a
0fa2: 5f f8 08  jmp   $08f8

; vcmd 9c
0fa5: e8 ff     mov   a,#$ff
0fa7: d5 e1 02  mov   $02e1+x,a
0faa: 5f f8 08  jmp   $08f8

; vcmd 9b
0fad: e8 00     mov   a,#$00
0faf: d5 e1 02  mov   $02e1+x,a
0fb2: d5 d0 02  mov   $02d0+x,a
0fb5: 9c        dec   a
0fb6: d5 b1 02  mov   $02b1+x,a
0fb9: 5f f8 08  jmp   $08f8

; vcmd 9d
0fbc: e8 00     mov   a,#$00
0fbe: d5 e1 02  mov   $02e1+x,a
0fc1: d5 b1 02  mov   $02b1+x,a
0fc4: 9c        dec   a
0fc5: d5 d0 02  mov   $02d0+x,a
0fc8: 5f f8 08  jmp   $08f8

; vcmd 9e
0fcb: e8 00     mov   a,#$00
0fcd: d5 f0 02  mov   $02f0+x,a
0fd0: 5f f8 08  jmp   $08f8

; vcmd 9f
0fd3: e8 ff     mov   a,#$ff
0fd5: d5 f0 02  mov   $02f0+x,a
0fd8: 5f f8 08  jmp   $08f8

; vcmd a0
0fdb: e8 01     mov   a,#$01
0fdd: d4 c0     mov   $c0+x,a
0fdf: 5f f8 08  jmp   $08f8

; vcmd a1
0fe2: 4d        push  x
0fe3: f8 e4     mov   x,$e4
0fe5: cd 01     mov   x,#$01
0fe7: 3f 18 07  call  $0718
0fea: ce        pop   x
0feb: f5 9e 12  mov   a,$129e+x
0fee: c4 d2     mov   $d2,a
0ff0: f5 9f 12  mov   a,$129f+x
0ff3: c4 d3     mov   $d3,a
0ff5: 8f 00 e0  mov   $e0,#$00
0ff8: 8f 7f e1  mov   $e1,#$7f
0ffb: 5f f8 08  jmp   $08f8

; vcmd a2
0ffe: 7d        mov   a,x
0fff: c4 e5     mov   $e5,a
1001: 1c        asl   a
1002: 1c        asl   a
1003: 1c        asl   a
1004: 80        setc
1005: a4 e5     sbc   a,$e5
1007: 5c        lsr   a
1008: fd        mov   y,a
1009: e8 07     mov   a,#$07
100b: c4 e5     mov   $e5,a
100d: 3f eb 0c  call  $0ceb
1010: d6 04 03  mov   $0304+y,a
1013: fc        inc   y
1014: 8b e5     dec   $e5
1016: d0 f5     bne   $100d
1018: 5f ad 0f  jmp   $0fad

; vcmd a3
101b: 3f eb 0c  call  $0ceb
101e: 3f ae 12  call  $12ae
1021: 1c        asl   a
1022: c4 e5     mov   $e5,a
1024: 60        clrc
1025: f4 30     mov   a,$30+x
1027: 84 e5     adc   a,$e5
1029: d4 30     mov   $30+x,a
102b: f4 31     mov   a,$31+x
102d: 88 00     adc   a,#$00
102f: d4 31     mov   $31+x,a
1031: 5f 02 0e  jmp   $0e02

; vcmd a4
1034: 3f eb 0c  call  $0ceb
1037: c4 e5     mov   $e5,a
1039: 3f ae 12  call  $12ae
103c: c4 d9     mov   $d9,a
103e: 1c        asl   a
103f: 60        clrc
1040: 94 30     adc   a,$30+x
1042: d4 30     mov   $30+x,a
1044: f4 31     mov   a,$31+x
1046: 88 00     adc   a,#$00
1048: d4 31     mov   $31+x,a
104a: 3f eb 0c  call  $0ceb
104d: 2d        push  a
104e: 3f eb 0c  call  $0ceb
1051: 2d        push  a
1052: e4 e5     mov   a,$e5
1054: 9c        dec   a
1055: 80        setc
1056: a4 d9     sbc   a,$d9
1058: 1c        asl   a
1059: c4 d9     mov   $d9,a
105b: f4 30     mov   a,$30+x
105d: 84 d9     adc   a,$d9
105f: d4 30     mov   $30+x,a
1061: f4 31     mov   a,$31+x
1063: 88 00     adc   a,#$00
1065: d4 31     mov   $31+x,a
1067: 3f db 11  call  $11db
106a: ae        pop   a
106b: d4 31     mov   $31+x,a
106d: ae        pop   a
106e: d4 30     mov   $30+x,a
1070: 5f f8 08  jmp   $08f8

; vcmd a5
1073: 3f eb 0c  call  $0ceb
1076: 3f 82 10  call  $1082
1079: 16 3c 03  or    a,$033c+y
107c: d6 3c 03  mov   $033c+y,a
107f: 5f f8 08  jmp   $08f8

1082: 4d        push  x
1083: fd        mov   y,a
1084: 28 07     and   a,#$07
1086: 5d        mov   x,a
1087: dd        mov   a,y
1088: 5c        lsr   a
1089: 5c        lsr   a
108a: 5c        lsr   a
108b: fd        mov   y,a
108c: f5 91 10  mov   a,$1091+x
108f: ce        pop   x
1090: 6f        ret

1091: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
1099: 3f eb 0c  call  $0ceb
109c: 3f 82 10  call  $1082
109f: 48 ff     eor   a,#$ff
10a1: 36 3c 03  and   a,$033c+y
10a4: d6 3c 03  mov   $033c+y,a
10a7: 5f f8 08  jmp   $08f8

; vcmd a7
10aa: 3f eb 0c  call  $0ceb
10ad: 3f 82 10  call  $1082
10b0: 36 3c 03  and   a,$033c+y
10b3: f0 03     beq   $10b8
10b5: 5f 02 0e  jmp   $0e02

10b8: f4 30     mov   a,$30+x
10ba: 60        clrc
10bb: 88 02     adc   a,#$02
10bd: d4 30     mov   $30+x,a
10bf: f4 31     mov   a,$31+x
10c1: 88 00     adc   a,#$00
10c3: d4 31     mov   $31+x,a
10c5: 5f f8 08  jmp   $08f8

; vcmd a8
10c8: 3f eb 0c  call  $0ceb
10cb: 3f 82 10  call  $1082
10ce: 36 3c 03  and   a,$033c+y
10d1: d0 e5     bne   $10b8
10d3: 5f 02 0e  jmp   $0e02

; vcmd a9
10d6: 3f eb 0c  call  $0ceb
10d9: 3f 82 10  call  $1082
10dc: 36 3c 03  and   a,$033c+y
10df: f0 11     beq   $10f2
10e1: 5f f8 08  jmp   $08f8

; vcmd ba
10e4: 3f eb 0c  call  $0ceb
10e7: 3f 82 10  call  $1082
10ea: 36 3c 03  and   a,$033c+y
10ed: d0 03     bne   $10f2
10ef: 5f f8 08  jmp   $08f8

10f2: e8 01     mov   a,#$01
10f4: d4 80     mov   $80+x,a
10f6: f4 30     mov   a,$30+x
10f8: 80        setc
10f9: a8 02     sbc   a,#$02
10fb: d4 30     mov   $30+x,a
10fd: f4 31     mov   a,$31+x
10ff: a8 00     sbc   a,#$00
1101: d4 31     mov   $31+x,a
1103: 5f 14 09  jmp   $0914

; vcmd aa-b0
1106: 3f eb 0c  call  $0ceb
1109: d5 56 03  mov   $0356+x,a
110c: 5f f8 08  jmp   $08f8

; vcmd b1
110f: e4 d2     mov   a,$d2
1111: 04 d8     or    a,$d8
1113: c4 d8     mov   $d8,a
1115: 5f f8 08  jmp   $08f8

; vcmd b2
1118: e4 d3     mov   a,$d3
111a: 24 d8     and   a,$d8
111c: c4 d8     mov   $d8,a
111e: 5f f8 08  jmp   $08f8

; vcmd b3
1121: 3f eb 0c  call  $0ceb
1124: d5 45 03  mov   $0345+x,a
1127: 3f eb 0c  call  $0ceb
112a: d5 46 03  mov   $0346+x,a
112d: 5f f8 08  jmp   $08f8

; vcmd b4
1130: 3f eb 0c  call  $0ceb
1133: d5 55 03  mov   $0355+x,a
1136: 5f f8 08  jmp   $08f8

; vcmd b5
1139: 3f eb 0c  call  $0ceb
113c: 4d        push  x
113d: 3f d2 04  call  $04d2
1140: ce        pop   x
1141: 5f f8 08  jmp   $08f8

; vcmd 80
1144: e8 00     mov   a,#$00
1146: d5 65 03  mov   $0365+x,a
1149: d5 f1 02  mov   $02f1+x,a
114c: d5 c1 02  mov   $02c1+x,a
114f: 9c        dec   a
1150: d5 01 01  mov   $0101+x,a
1153: e4 d2     mov   a,$d2
1155: 04 d5     or    a,$d5
1157: c4 d5     mov   $d5,a
1159: 6f        ret

; vcmd b6
115a: 3f eb 0c  call  $0ceb
115d: c4 fc     mov   $fc,a
115f: 5f f8 08  jmp   $08f8

; vcmd b7
1162: e8 ff     mov   a,#$ff
1164: d5 00 01  mov   $0100+x,a
1167: e8 01     mov   a,#$01
1169: d5 46 03  mov   $0346+x,a
116c: d5 45 03  mov   $0345+x,a
116f: 5f f8 08  jmp   $08f8

; vcmd b8
1172: e5 11 01  mov   a,$0111
1175: f0 0e     beq   $1185
1177: e4 d2     mov   a,$d2
1179: 04 d5     or    a,$d5
117b: c4 d5     mov   $d5,a
117d: 8f 5c f2  mov   $f2,#$5c
1180: c4 f3     mov   $f3,a
1182: 5f 44 11  jmp   $1144

1185: e8 01     mov   a,#$01
1187: d4 80     mov   $80+x,a
1189: f4 30     mov   a,$30+x
118b: 80        setc
118c: a8 01     sbc   a,#$01
118e: d4 30     mov   $30+x,a
1190: f4 31     mov   a,$31+x
1192: a8 00     sbc   a,#$00
1194: d4 31     mov   $31+x,a
1196: 5f 14 09  jmp   $0914

; vcmd b9
1199: 3f eb 0c  call  $0ceb
119c: fd        mov   y,a
119d: f6 a3 11  mov   a,$11a3+y
11a0: 5f fb 08  jmp   $08fb

11a3: 05 05 05  or    a,$0505
11a6: 05 05 05  or    a,$0505
11a9: 05 05 05  or    a,$0505
11ac: 05 05 05  or    a,$0505
11af: 05 05 05  or    a,$0505
11b2: 05 f4 40  or    a,$40f4
11b5: c4 d9     mov   $d9,a
11b7: f4 41     mov   a,$41+x
11b9: c4 da     mov   $da,a
11bb: fb 60     mov   y,$60+x
11bd: bb 60     inc   $60+x
11bf: f7 d9     mov   a,($d9)+y
11c1: 6f        ret

11c2: fb 50     mov   y,$50+x
11c4: dc        dec   y
11c5: f6 80 03  mov   a,$0380+y
11c8: d4 31     mov   $31+x,a
11ca: dc        dec   y
11cb: f6 80 03  mov   a,$0380+y
11ce: d4 30     mov   $30+x,a
11d0: db 50     mov   $50+x,y
11d2: 6f        ret

11d3: fb 50     mov   y,$50+x
11d5: d6 80 03  mov   $0380+y,a
11d8: bb 50     inc   $50+x
11da: 6f        ret

11db: fb 50     mov   y,$50+x
11dd: f4 30     mov   a,$30+x
11df: d6 80 03  mov   $0380+y,a
11e2: f4 31     mov   a,$31+x
11e4: d6 81 03  mov   $0381+y,a
11e7: fc        inc   y
11e8: fc        inc   y
11e9: db 50     mov   $50+x,y
11eb: 6f        ret

11ec: f6 65 03  mov   a,$0365+y
11ef: f0 37     beq   $1228
11f1: d8 f2     mov   $f2,x
11f3: f6 00 00  mov   a,$0000+y
11f6: 3f 2b 12  call  $122b
11f9: c4 f3     mov   $f3,a
11fb: 3d        inc   x
11fc: d8 f2     mov   $f2,x
11fe: f6 01 00  mov   a,$0001+y
1201: 3f 2b 12  call  $122b
1204: c4 f3     mov   $f3,a
1206: 3d        inc   x
1207: d8 f2     mov   $f2,x
1209: f6 10 00  mov   a,$0010+y
120c: c4 f3     mov   $f3,a
120e: 3d        inc   x
120f: d8 f2     mov   $f2,x
1211: f6 11 00  mov   a,$0011+y
1214: c4 f3     mov   $f3,a
1216: 3d        inc   x
1217: d8 f2     mov   $f2,x
1219: f6 20 00  mov   a,$0020+y
121c: c4 f3     mov   $f3,a
121e: 3d        inc   x
121f: 3d        inc   x
1220: 3d        inc   x
1221: d8 f2     mov   $f2,x
1223: f6 21 00  mov   a,$0021+y
1226: c4 f3     mov   $f3,a
1228: 5f 3d 05  jmp   $053d

122b: 30 17     bmi   $1244
122d: 6d        push  y
122e: 4d        push  x
122f: 6d        push  y
1230: ce        pop   x
1231: fd        mov   y,a
1232: f5 c1 02  mov   a,$02c1+x
1235: bc        inc   a
1236: d0 04     bne   $123c
1238: e4 e8     mov   a,$e8
123a: 2f 03     bra   $123f
123c: f5 66 03  mov   a,$0366+x
123f: cf        mul   ya
1240: dd        mov   a,y
1241: ce        pop   x
1242: ee        pop   y
1243: 6f        ret

1244: 48 ff     eor   a,#$ff
1246: bc        inc   a
1247: 6d        push  y
1248: 4d        push  x
1249: 6d        push  y
124a: ce        pop   x
124b: fd        mov   y,a
124c: f5 66 03  mov   a,$0366+x
124f: cf        mul   ya
1250: dd        mov   a,y
1251: ce        pop   x
1252: ee        pop   y
1253: 48 ff     eor   a,#$ff
1255: bc        inc   a
1256: 6f        ret

1257: cd 00     mov   x,#$00
1259: f5 69 12  mov   a,$1269+x
125c: 30 0a     bmi   $1268
125e: c4 f2     mov   $f2,a
1260: f5 84 12  mov   a,$1284+x
1263: c4 f3     mov   $f3,a
1265: 3d        inc   x
1266: d0 f1     bne   $1259
1268: 6f        ret

1269: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
1284: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$38,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

129e: db $01,$fe
12a0: db $02,$fd
12a2: db $04,$fb
12a4: db $08,$f7
12a6: db $10,$ef
12a8: db $20,$df
12aa: db $40,$bf
12ac: db $80,$7f

12ae: fd        mov   y,a
12af: 3f cc 12  call  $12cc
12b2: 3f cc 12  call  $12cc
12b5: 3f cc 12  call  $12cc
12b8: 3f cc 12  call  $12cc
12bb: 3f cc 12  call  $12cc
12be: 3f cc 12  call  $12cc
12c1: 3f cc 12  call  $12cc
12c4: 3f cc 12  call  $12cc
12c7: e4 ec     mov   a,$ec
12c9: cf        mul   ya
12ca: dd        mov   a,y
12cb: 6f        ret

12cc: e4 ec     mov   a,$ec
12ce: 28 48     and   a,#$48
12d0: 88 38     adc   a,#$38
12d2: 1c        asl   a
12d3: 1c        asl   a
12d4: 2b ef     rol   $ef
12d6: 2b ee     rol   $ee
12d8: 2b ed     rol   $ed
12da: 2b ec     rol   $ec
12dc: 6f        ret
