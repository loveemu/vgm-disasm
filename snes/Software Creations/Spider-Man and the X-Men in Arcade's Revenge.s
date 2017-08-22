0400: 20        clrp
0401: 8f 30 f1  mov   $f1,#$30
0404: 8f 55 f5  mov   $f5,#$55
0407: e8 fa     mov   a,#$fa
0409: c4 d1     mov   $d1,a
040b: c4 f4     mov   $f4,a
040d: 64 f4     cmp   a,$f4
040f: d0 fc     bne   $040d
0411: cd ff     mov   x,#$ff
0413: bd        mov   sp,x
0414: 8f 6c f2  mov   $f2,#$6c
0417: 8f f3 f3  mov   $f3,#$f3
041a: 8f 0c f2  mov   $f2,#$0c
041d: 8f 00 f3  mov   $f3,#$00
0420: 8f 1c f2  mov   $f2,#$1c
0423: 8f 00 f3  mov   $f3,#$00
0426: 3f d0 11  call  $11d0
0429: 3f 9d 08  call  $089d
042c: 8f 1b eb  mov   $eb,#$1b
042f: 8f 09 ec  mov   $ec,#$09
0432: 8f 13 ed  mov   $ed,#$13
0435: 8f 3a ee  mov   $ee,#$3a
0438: 8f 80 e8  mov   $e8,#$80
043b: 8f 80 e9  mov   $e9,#$80
043e: 8f fa d1  mov   $d1,#$fa
0441: 3f c0 04  call  $04c0
0444: 8f 6c f2  mov   $f2,#$6c
0447: 8f 33 f3  mov   $f3,#$33
044a: cd 00     mov   x,#$00
044c: 3f 2a 07  call  $072a
044f: 3f 07 06  call  $0607
0452: cd ff     mov   x,#$ff
0454: bd        mov   sp,x
0455: e4 f5     mov   a,$f5
0457: 28 08     and   a,#$08
0459: f0 09     beq   $0464
045b: 3f 37 05  call  $0537
045e: 3f 07 06  call  $0607
0461: 5f 52 04  jmp   $0452

0464: e4 f5     mov   a,$f5
0466: 68 55     cmp   a,#$55
0468: f0 25     beq   $048f
046a: 3f 7b 05  call  $057b
046d: e5 44 03  mov   a,$0344
0470: 60        clrc
0471: 84 ff     adc   a,$ff
0473: c5 44 03  mov   $0344,a
0476: 68 04     cmp   a,#$04
0478: 90 d8     bcc   $0452
047a: 80        setc
047b: a8 04     sbc   a,#$04
047d: c5 44 03  mov   $0344,a
0480: 8f 0c f7  mov   $f7,#$0c
0483: 3f 07 06  call  $0607
0486: 8f 08 f7  mov   $f7,#$08
0489: 8f 0f f7  mov   $f7,#$0f
048c: 5f 52 04  jmp   $0452

048f: e4 ff     mov   a,$ff
0491: e4 e1     mov   a,$e1
0493: eb ff     mov   y,$ff
0495: f0 fc     beq   $0493
0497: 80        setc
0498: a8 08     sbc   a,#$08
049a: 10 02     bpl   $049e
049c: e8 00     mov   a,#$00
049e: 8f 0c f2  mov   $f2,#$0c
04a1: c4 f3     mov   $f3,a
04a3: 8f 1c f2  mov   $f2,#$1c
04a6: c4 f3     mov   $f3,a
04a8: 08 00     or    a,#$00
04aa: d0 e7     bne   $0493
04ac: e8 ff     mov   a,#$ff
04ae: 8f 5c f2  mov   $f2,#$5c
04b1: c4 f3     mov   $f3,a
04b3: e8 b0     mov   a,#$b0
04b5: c4 f1     mov   $f1,a
04b7: 8f 6c f2  mov   $f2,#$6c
04ba: 8f e0 f3  mov   $f3,#$e0
04bd: 5f c0 ff  jmp   $ffc0

04c0: 8f 00 f1  mov   $f1,#$00
04c3: 00        nop
04c4: 00        nop
04c5: 00        nop
04c6: 00        nop
04c7: 8f 84 fc  mov   $fc,#$84
04ca: 8f 04 f1  mov   $f1,#$04
04cd: 6f        ret

04ce: cd 02     mov   x,#$02
04d0: 5f 00 13  jmp   $1300

04d3: fd        mov   y,a
04d4: 68 40     cmp   a,#$40
04d6: b0 f6     bcs   $04ce
04d8: cd 0e     mov   x,#$0e
04da: f6 00 14  mov   a,$1400+y
04dd: 30 0c     bmi   $04eb
04df: dd        mov   a,y
04e0: 75 01 01  cmp   a,$0101+x
04e3: f0 06     beq   $04eb
04e5: 1d        dec   x
04e6: 1d        dec   x
04e7: 10 f7     bpl   $04e0
04e9: 2f 00     bra   $04eb
04eb: cd 0e     mov   x,#$0e
04ed: f5 f1 02  mov   a,$02f1+x
04f0: f0 25     beq   $0517
04f2: 1d        dec   x
04f3: 1d        dec   x
04f4: 10 f7     bpl   $04ed
04f6: cd 0e     mov   x,#$0e
04f8: e8 ff     mov   a,#$ff
04fa: 75 c1 02  cmp   a,$02c1+x
04fd: 90 05     bcc   $0504
04ff: f5 c1 02  mov   a,$02c1+x
0502: d8 e5     mov   $e5,x
0504: 1d        dec   x
0505: 1d        dec   x
0506: 10 f2     bpl   $04fa
0508: f8 e5     mov   x,$e5
050a: c4 e5     mov   $e5,a
050c: f6 00 14  mov   a,$1400+y
050f: 28 7f     and   a,#$7f
0511: 64 e5     cmp   a,$e5
0513: b0 02     bcs   $0517
0515: 60        clrc
0516: 6f        ret

0517: dd        mov   a,y
0518: d5 01 01  mov   $0101+x,a
051b: f6 00 14  mov   a,$1400+y
051e: 28 7f     and   a,#$7f
0520: d5 c1 02  mov   $02c1+x,a
0523: 3f e6 07  call  $07e6
0526: f6 80 13  mov   a,$1380+y
0529: d4 30     mov   $30+x,a
052b: f6 c0 13  mov   a,$13c0+y
052e: d4 31     mov   $31+x,a
0530: e4 e9     mov   a,$e9
0532: d5 66 03  mov   $0366+x,a
0535: 80        setc
0536: 6f        ret

0537: cd 0e     mov   x,#$0e
0539: e8 ff     mov   a,#$ff
053b: 2d        push  a
053c: f5 f1 02  mov   a,$02f1+x
053f: fd        mov   y,a
0540: ae        pop   a
0541: fc        inc   y
0542: dc        dec   y
0543: f0 06     beq   $054b
0545: 74 80     cmp   a,$80+x
0547: 90 02     bcc   $054b
0549: f4 80     mov   a,$80+x
054b: 1d        dec   x
054c: 1d        dec   x
054d: 10 ec     bpl   $053b
054f: 68 04     cmp   a,#$04
0551: 90 22     bcc   $0575
0553: 80        setc
0554: a8 02     sbc   a,#$02
0556: 68 14     cmp   a,#$14
0558: 90 02     bcc   $055c
055a: e8 14     mov   a,#$14
055c: cd 0e     mov   x,#$0e
055e: c4 e5     mov   $e5,a
0560: f4 80     mov   a,$80+x
0562: 80        setc
0563: a4 e5     sbc   a,$e5
0565: d4 80     mov   $80+x,a
0567: 7d        mov   a,x
0568: c4 d9     mov   $d9,a
056a: 1c        asl   a
056b: 1c        asl   a
056c: 1c        asl   a
056d: 80        setc
056e: a4 d9     sbc   a,$d9
0570: fd        mov   y,a
0571: 1d        dec   x
0572: 1d        dec   x
0573: 10 eb     bpl   $0560
0575: 6f        ret

0576: cd 80     mov   x,#$80
0578: 5f 00 13  jmp   $1300

057b: e4 f4     mov   a,$f4
057d: f0 19     beq   $0598
057f: 64 d1     cmp   a,$d1
0581: f0 15     beq   $0598
0583: e4 f6     mov   a,$f6
0585: 5d        mov   x,a
0586: f5 a3 05  mov   a,$05a3+x
0589: 2d        push  a
058a: f5 99 05  mov   a,$0599+x
058d: 2d        push  a
058e: e4 f7     mov   a,$f7
0590: 2d        push  a
0591: e4 f4     mov   a,$f4
0593: c4 d1     mov   $d1,a
0595: c4 f4     mov   $f4,a
0597: ae        pop   a
0598: 60        clrc
0599: 6f        ret

; $05ae
; $05c0
; $05cb
; $05e1
; $05e9
; $05ee
; $05fb
; $05fe
; $0601
; $0604
059a: db $ae,$c0,$cb,$e1,$e9,$ee,$fb,$fe,$01,$04
05a4: db $05,$05,$05,$05,$05,$05,$05,$05,$06,$06

05ae: 5d        mov   x,a
05af: 1d        dec   x
05b0: d8 e4     mov   $e4,x
05b2: 3f 2a 07  call  $072a
05b5: 8f 00 e0  mov   $e0,#$00
05b8: 8f 7f e1  mov   $e1,#$7f
05bb: 3f c0 04  call  $04c0
05be: 80        setc
05bf: 6f        ret

05c0: 3f d3 04  call  $04d3
05c3: 8f 00 e0  mov   $e0,#$00
05c6: 8f 7f e1  mov   $e1,#$7f
05c9: 60        clrc
05ca: 6f        ret

05cb: 8d 00     mov   y,#$00
05cd: bc        inc   a
05ce: 9c        dec   a
05cf: 10 01     bpl   $05d2
05d1: dc        dec   y
05d2: cb e3     mov   $e3,y
05d4: 1c        asl   a
05d5: 2b e3     rol   $e3
05d7: 1c        asl   a
05d8: 2b e3     rol   $e3
05da: 1c        asl   a
05db: 2b e3     rol   $e3
05dd: c4 e2     mov   $e2,a
05df: 60        clrc
05e0: 6f        ret

05e1: 3f d8 06  call  $06d8
05e4: 8f 55 f5  mov   $f5,#$55
05e7: 60        clrc
05e8: 6f        ret

05e9: 3f ae 05  call  $05ae
05ec: 60        clrc
05ed: 6f        ret

05ee: 3f f3 0f  call  $0ff3
05f1: 48 ff     eor   a,#$ff
05f3: 36 3c 03  and   a,$033c+y
05f6: d6 3c 03  mov   $033c+y,a
05f9: 60        clrc
05fa: 6f        ret

05fb: c4 e8     mov   $e8,a
05fd: 6f        ret

05fe: c4 e9     mov   $e9,a
0600: 6f        ret

0601: c4 ea     mov   $ea,a
0603: 6f        ret

0604: c4 d0     mov   $d0,a
0606: 6f        ret

0607: ab e6     inc   $e6
0609: ba e2     movw  ya,$e2
060b: f0 24     beq   $0631
060d: 30 12     bmi   $0621
060f: ba e0     movw  ya,$e0
0611: 7a e2     addw  ya,$e2
0613: 10 08     bpl   $061d
0615: 8f 00 e2  mov   $e2,#$00
0618: 8f 00 e3  mov   $e3,#$00
061b: 8d 7f     mov   y,#$7f
061d: da e0     movw  $e0,ya
061f: 2f 10     bra   $0631
0621: ba e0     movw  ya,$e0
0623: 7a e2     addw  ya,$e2
0625: 10 08     bpl   $062f
0627: 8f 00 e2  mov   $e2,#$00
062a: 8f 00 e3  mov   $e3,#$00
062d: 8d 00     mov   y,#$00
062f: da e0     movw  $e0,ya
0631: e4 f5     mov   a,$f5
0633: 28 04     and   a,#$04
0635: f0 08     beq   $063f
0637: 8b df     dec   $df
0639: f0 01     beq   $063c
063b: 6f        ret

063c: 8f 20 df  mov   $df,#$20
063f: 8f 4c f2  mov   $f2,#$4c
0642: fa d4 f3  mov   ($f3),($d4)
0645: 8f 00 d4  mov   $d4,#$00
0648: 8f 3d f2  mov   $f2,#$3d
064b: fa d6 f3  mov   ($f3),($d6)
064e: cd 00     mov   x,#$00
0650: 3f e9 08  call  $08e9
0653: b0 2f     bcs   $0684
0655: cd 02     mov   x,#$02
0657: 3f e9 08  call  $08e9
065a: b0 28     bcs   $0684
065c: cd 04     mov   x,#$04
065e: 3f e9 08  call  $08e9
0661: b0 21     bcs   $0684
0663: cd 06     mov   x,#$06
0665: 3f e9 08  call  $08e9
0668: b0 1a     bcs   $0684
066a: cd 08     mov   x,#$08
066c: 3f e9 08  call  $08e9
066f: b0 13     bcs   $0684
0671: cd 0a     mov   x,#$0a
0673: 3f e9 08  call  $08e9
0676: b0 0c     bcs   $0684
0678: cd 0c     mov   x,#$0c
067a: 3f e9 08  call  $08e9
067d: b0 05     bcs   $0684
067f: cd 0e     mov   x,#$0e
0681: 3f e9 08  call  $08e9
0684: 8f 5c f2  mov   $f2,#$5c
0687: fa d5 f3  mov   ($f3),($d5)
068a: 8f 00 d5  mov   $d5,#$00
068d: e4 e1     mov   a,$e1
068f: 8f 0c f2  mov   $f2,#$0c
0692: c4 f3     mov   $f3,a
0694: 8f 1c f2  mov   $f2,#$1c
0697: c4 f3     mov   $f3,a
0699: 8d 00     mov   y,#$00
069b: cd 00     mov   x,#$00
069d: 3f 65 11  call  $1165
06a0: 8d 02     mov   y,#$02
06a2: cd 10     mov   x,#$10
06a4: 3f 65 11  call  $1165
06a7: 8d 04     mov   y,#$04
06a9: cd 20     mov   x,#$20
06ab: 3f 65 11  call  $1165
06ae: 8d 06     mov   y,#$06
06b0: cd 30     mov   x,#$30
06b2: 3f 65 11  call  $1165
06b5: 8d 08     mov   y,#$08
06b7: cd 40     mov   x,#$40
06b9: 3f 65 11  call  $1165
06bc: 8d 0a     mov   y,#$0a
06be: cd 50     mov   x,#$50
06c0: 3f 65 11  call  $1165
06c3: 8d 0c     mov   y,#$0c
06c5: cd 60     mov   x,#$60
06c7: 3f 65 11  call  $1165
06ca: 8d 0e     mov   y,#$0e
06cc: cd 70     mov   x,#$70
06ce: 3f 65 11  call  $1165
06d1: 8f 5c f2  mov   $f2,#$5c
06d4: 8f 00 f3  mov   $f3,#$00
06d7: 6f        ret

06d8: 4d        push  x
06d9: 9c        dec   a
06da: 10 10     bpl   $06ec
06dc: cd 00     mov   x,#$00
06de: f4 00     mov   a,$00+x
06e0: c4 f6     mov   $f6,a
06e2: d8 f5     mov   $f5,x
06e4: 00        nop
06e5: 00        nop
06e6: 00        nop
06e7: 3d        inc   x
06e8: d0 f4     bne   $06de
06ea: ce        pop   x
06eb: 6f        ret

06ec: 9c        dec   a
06ed: 10 11     bpl   $0700
06ef: cd 00     mov   x,#$00
06f1: f5 00 01  mov   a,$0100+x
06f4: c4 f6     mov   $f6,a
06f6: d8 f5     mov   $f5,x
06f8: 00        nop
06f9: 00        nop
06fa: 00        nop
06fb: 3d        inc   x
06fc: d0 f3     bne   $06f1
06fe: ce        pop   x
06ff: 6f        ret

0700: 9c        dec   a
0701: 10 11     bpl   $0714
0703: cd 00     mov   x,#$00
0705: f5 00 02  mov   a,$0200+x
0708: c4 f6     mov   $f6,a
070a: d8 f5     mov   $f5,x
070c: 00        nop
070d: 00        nop
070e: 00        nop
070f: 3d        inc   x
0710: d0 f3     bne   $0705
0712: ce        pop   x
0713: 6f        ret

0714: cd 00     mov   x,#$00
0716: f5 00 03  mov   a,$0300+x
0719: c4 f6     mov   $f6,a
071b: d8 f5     mov   $f5,x
071d: 00        nop
071e: 00        nop
071f: 00        nop
0720: 3d        inc   x
0721: d0 f3     bne   $0716
0723: ce        pop   x
0724: 6f        ret

0725: cd 01     mov   x,#$01
0727: 5f 00 13  jmp   $1300

072a: 7d        mov   a,x
072b: 68 02     cmp   a,#$02
072d: b0 f6     bcs   $0725
072f: fd        mov   y,a
0730: cd 00     mov   x,#$00
0732: f6 02 20  mov   a,$2002+y
0735: f0 0a     beq   $0741
0737: c4 31     mov   $31,a
0739: f6 00 20  mov   a,$2000+y
073c: c4 30     mov   $30,a
073e: 3f d9 07  call  $07d9
0741: 3d        inc   x
0742: 3d        inc   x
0743: f6 06 20  mov   a,$2006+y
0746: f0 0a     beq   $0752
0748: d4 31     mov   $31+x,a
074a: f6 04 20  mov   a,$2004+y
074d: d4 30     mov   $30+x,a
074f: 3f d9 07  call  $07d9
0752: 3d        inc   x
0753: 3d        inc   x
0754: f6 0a 20  mov   a,$200a+y
0757: f0 0a     beq   $0763
0759: d4 31     mov   $31+x,a
075b: f6 08 20  mov   a,$2008+y
075e: d4 30     mov   $30+x,a
0760: 3f d9 07  call  $07d9
0763: 3d        inc   x
0764: 3d        inc   x
0765: f6 0e 20  mov   a,$200e+y
0768: f0 0a     beq   $0774
076a: d4 31     mov   $31+x,a
076c: f6 0c 20  mov   a,$200c+y
076f: d4 30     mov   $30+x,a
0771: 3f d9 07  call  $07d9
0774: 3d        inc   x
0775: 3d        inc   x
0776: f6 12 20  mov   a,$2012+y
0779: f0 0a     beq   $0785
077b: d4 31     mov   $31+x,a
077d: f6 10 20  mov   a,$2010+y
0780: d4 30     mov   $30+x,a
0782: 3f d9 07  call  $07d9
0785: 3d        inc   x
0786: 3d        inc   x
0787: f6 16 20  mov   a,$2016+y
078a: f0 0a     beq   $0796
078c: d4 31     mov   $31+x,a
078e: f6 14 20  mov   a,$2014+y
0791: d4 30     mov   $30+x,a
0793: 3f d9 07  call  $07d9
0796: 3d        inc   x
0797: 3d        inc   x
0798: f6 1a 20  mov   a,$201a+y
079b: f0 0a     beq   $07a7
079d: d4 31     mov   $31+x,a
079f: f6 18 20  mov   a,$2018+y
07a2: d4 30     mov   $30+x,a
07a4: 3f d9 07  call  $07d9
07a7: 3d        inc   x
07a8: 3d        inc   x
07a9: f6 1e 20  mov   a,$201e+y
07ac: f0 0a     beq   $07b8
07ae: d4 31     mov   $31+x,a
07b0: f6 1c 20  mov   a,$201c+y
07b3: d4 30     mov   $30+x,a
07b5: 3f d9 07  call  $07d9
07b8: 3d        inc   x
07b9: 3d        inc   x
07ba: dd        mov   a,y
07bb: 5d        mov   x,a
07bc: 1d        dec   x
07bd: f5 20 20  mov   a,$2020+x
07c0: c4 d9     mov   $d9,a
07c2: f5 21 20  mov   a,$2021+x
07c5: c4 da     mov   $da,a
07c7: f0 0f     beq   $07d8
07c9: 8d fb     mov   y,#$fb
07cb: f7 d9     mov   a,($d9)+y
07cd: d6 29 20  mov   $2029+y,a
07d0: dc        dec   y
07d1: d0 f8     bne   $07cb
07d3: f7 d9     mov   a,($d9)+y
07d5: d6 29 20  mov   $2029+y,a
07d8: 6f        ret

07d9: e8 ff     mov   a,#$ff
07db: d5 c1 02  mov   $02c1+x,a
07de: d5 01 01  mov   $0101+x,a
07e1: e4 e8     mov   a,$e8
07e3: d5 66 03  mov   $0366+x,a
07e6: e8 00     mov   a,#$00
07e8: d5 00 01  mov   $0100+x,a
07eb: d4 00     mov   $00+x,a
07ed: d4 01     mov   $01+x,a
07ef: d4 10     mov   $10+x,a
07f1: d4 11     mov   $11+x,a
07f3: d4 20     mov   $20+x,a
07f5: d4 21     mov   $21+x,a
07f7: d4 51     mov   $51+x,a
07f9: d4 60     mov   $60+x,a
07fb: d4 70     mov   $70+x,a
07fd: d4 71     mov   $71+x,a
07ff: d4 81     mov   $81+x,a
0801: d4 90     mov   $90+x,a
0803: d4 91     mov   $91+x,a
0805: d4 a0     mov   $a0+x,a
0807: d4 a1     mov   $a1+x,a
0809: d4 b0     mov   $b0+x,a
080b: d4 b1     mov   $b1+x,a
080d: d4 c0     mov   $c0+x,a
080f: d4 c1     mov   $c1+x,a
0811: d5 00 02  mov   $0200+x,a
0814: d5 01 02  mov   $0201+x,a
0817: d5 10 02  mov   $0210+x,a
081a: d5 11 02  mov   $0211+x,a
081d: d5 20 02  mov   $0220+x,a
0820: d5 21 02  mov   $0221+x,a
0823: d5 30 02  mov   $0230+x,a
0826: d5 31 02  mov   $0231+x,a
0829: d5 40 02  mov   $0240+x,a
082c: d5 41 02  mov   $0241+x,a
082f: d5 50 02  mov   $0250+x,a
0832: d5 51 02  mov   $0251+x,a
0835: d5 60 02  mov   $0260+x,a
0838: d5 61 02  mov   $0261+x,a
083b: d5 70 02  mov   $0270+x,a
083e: d5 71 02  mov   $0271+x,a
0841: d5 80 02  mov   $0280+x,a
0844: d5 81 02  mov   $0281+x,a
0847: d5 90 02  mov   $0290+x,a
084a: d5 91 02  mov   $0291+x,a
084d: d5 a0 02  mov   $02a0+x,a
0850: d5 a1 02  mov   $02a1+x,a
0853: d5 b0 02  mov   $02b0+x,a
0856: d5 b1 02  mov   $02b1+x,a
0859: d5 c0 02  mov   $02c0+x,a
085c: d5 d0 02  mov   $02d0+x,a
085f: d5 d1 02  mov   $02d1+x,a
0862: d5 e0 02  mov   $02e0+x,a
0865: d5 e1 02  mov   $02e1+x,a
0868: d5 f0 02  mov   $02f0+x,a
086b: d5 45 03  mov   $0345+x,a
086e: d5 65 03  mov   $0365+x,a
0871: e8 ff     mov   a,#$ff
0873: d5 f1 02  mov   $02f1+x,a
0876: 7d        mov   a,x
0877: 1c        asl   a
0878: 1c        asl   a
0879: 1c        asl   a
087a: d4 50     mov   $50+x,a
087c: e8 01     mov   a,#$01
087e: d4 80     mov   $80+x,a
0880: f5 18 12  mov   a,$1218+x
0883: 24 d7     and   a,$d7
0885: c4 d7     mov   $d7,a
0887: f5 18 12  mov   a,$1218+x
088a: 24 d6     and   a,$d6
088c: c4 d6     mov   $d6,a
088e: f5 18 12  mov   a,$1218+x
0891: 24 d8     and   a,$d8
0893: c4 d8     mov   $d8,a
0895: f5 17 12  mov   a,$1217+x
0898: 04 d5     or    a,$d5
089a: c4 d5     mov   $d5,a
089c: 6f        ret

089d: e8 00     mov   a,#$00
089f: 8d 00     mov   y,#$00
08a1: d6 00 00  mov   $0000+y,a
08a4: d6 00 01  mov   $0100+y,a
08a7: fc        inc   y
08a8: ad f0     cmp   y,#$f0
08aa: d0 f5     bne   $08a1
08ac: bc        inc   a
08ad: 8d 14     mov   y,#$14
08af: d6 80 00  mov   $0080+y,a
08b2: dc        dec   y
08b3: dc        dec   y
08b4: 10 f9     bpl   $08af
08b6: 9c        dec   a
08b7: 8d 00     mov   y,#$00
08b9: d6 00 02  mov   $0200+y,a
08bc: d6 00 03  mov   $0300+y,a
08bf: dc        dec   y
08c0: d0 f7     bne   $08b9
08c2: 8f 00 db  mov   $db,#$00
08c5: 8f 03 dc  mov   $dc,#$03
08c8: 8f 04 d9  mov   $d9,#$04
08cb: 8f 00 da  mov   $da,#$00
08ce: 8d 00     mov   y,#$00
08d0: e8 00     mov   a,#$00
08d2: d7 db     mov   ($db)+y,a
08d4: fc        inc   y
08d5: d0 02     bne   $08d9
08d7: ab dc     inc   $dc
08d9: 8b d9     dec   $d9
08db: f8 d9     mov   x,$d9
08dd: 3d        inc   x
08de: d0 f0     bne   $08d0
08e0: 8b da     dec   $da
08e2: f8 da     mov   x,$da
08e4: 3d        inc   x
08e5: d0 e9     bne   $08d0
08e7: 6f        ret

08e8: 6f        ret

08e9: f5 f1 02  mov   a,$02f1+x
08ec: 30 03     bmi   $08f1
08ee: 5f 7b 05  jmp   $057b

08f1: e8 01     mov   a,#$01
08f3: d5 65 03  mov   $0365+x,a
08f6: f5 17 12  mov   a,$1217+x
08f9: c4 d2     mov   $d2,a
08fb: f5 18 12  mov   a,$1218+x
08fe: c4 d3     mov   $d3,a
0900: 9b 80     dec   $80+x
0902: d0 1c     bne   $0920
0904: 3f fc 0c  call  $0cfc
0907: 10 14     bpl   $091d
0909: 68 b8     cmp   a,#$b8
090b: b0 0b     bcs   $0918
090d: 1c        asl   a
090e: fd        mov   y,a
090f: f6 08 0d  mov   a,$0d08+y
0912: 2d        push  a
0913: f6 07 0d  mov   a,$0d07+y
0916: 2d        push  a
0917: 6f        ret

0918: cd 81     mov   x,#$81
091a: 5f 00 13  jmp   $1300

091d: 3f 22 0c  call  $0c22
0920: 3f 70 09  call  $0970
0923: 3f fb 09  call  $09fb
0926: 3f 21 0a  call  $0a21
0929: 3f 65 0a  call  $0a65
092c: 3f b3 0a  call  $0ab3
092f: 3f fe 0a  call  $0afe
0932: 3f 46 0b  call  $0b46
0935: f5 60 02  mov   a,$0260+x
0938: 60        clrc
0939: 95 20 02  adc   a,$0220+x
093c: 0d        push  psw
093d: 60        clrc
093e: 95 c0 02  adc   a,$02c0+x
0941: d4 10     mov   $10+x,a
0943: f5 61 02  mov   a,$0261+x
0946: 95 21 02  adc   a,$0221+x
0949: 8e        pop   psw
094a: 88 00     adc   a,#$00
094c: d4 11     mov   $11+x,a
094e: 5f 7b 05  jmp   $057b

0951: f5 60 02  mov   a,$0260+x
0954: 80        setc
0955: b5 d1 02  sbc   a,$02d1+x
0958: c4 d9     mov   $d9,a
095a: f5 61 02  mov   a,$0261+x
095d: b5 e0 02  sbc   a,$02e0+x
0960: 04 d9     or    a,$d9
0962: 6f        ret

0963: f5 d1 02  mov   a,$02d1+x
0966: d5 60 02  mov   $0260+x,a
0969: f5 e0 02  mov   a,$02e0+x
096c: d5 61 02  mov   $0261+x,a
096f: 6f        ret

0970: f5 00 01  mov   a,$0100+x
0973: f0 0a     beq   $097f
0975: e4 ea     mov   a,$ea
0977: d5 45 03  mov   $0345+x,a
097a: e4 d0     mov   a,$d0
097c: d5 46 03  mov   $0346+x,a
097f: f5 45 03  mov   a,$0345+x
0982: f0 6b     beq   $09ef
0984: fd        mov   y,a
0985: f5 46 03  mov   a,$0346+x
0988: cf        mul   ya
0989: dd        mov   a,y
098a: c4 e5     mov   $e5,a
098c: f5 45 03  mov   a,$0345+x
098f: 80        setc
0990: a4 e5     sbc   a,$e5
0992: 1c        asl   a
0993: 9c        dec   a
0994: d4 01     mov   $01+x,a
0996: e4 e5     mov   a,$e5
0998: 1c        asl   a
0999: d4 00     mov   $00+x,a
099b: f5 46 03  mov   a,$0346+x
099e: 10 07     bpl   $09a7
09a0: f5 45 03  mov   a,$0345+x
09a3: d4 00     mov   $00+x,a
09a5: 2f 05     bra   $09ac
09a7: f5 45 03  mov   a,$0345+x
09aa: d4 01     mov   $01+x,a
09ac: e4 e6     mov   a,$e6
09ae: 28 0f     and   a,#$0f
09b0: d0 17     bne   $09c9
09b2: f5 56 03  mov   a,$0356+x
09b5: f0 12     beq   $09c9
09b7: fd        mov   y,a
09b8: f5 45 03  mov   a,$0345+x
09bb: cf        mul   ya
09bc: dd        mov   a,y
09bd: d5 45 03  mov   $0345+x,a
09c0: d0 07     bne   $09c9
09c2: d4 00     mov   $00+x,a
09c4: d4 01     mov   $01+x,a
09c6: d5 56 03  mov   $0356+x,a
09c9: f5 55 03  mov   a,$0355+x
09cc: 30 0a     bmi   $09d8
09ce: 60        clrc
09cf: 95 46 03  adc   a,$0346+x
09d2: 90 18     bcc   $09ec
09d4: 8d ff     mov   y,#$ff
09d6: 2f 08     bra   $09e0
09d8: 60        clrc
09d9: 95 46 03  adc   a,$0346+x
09dc: b0 0e     bcs   $09ec
09de: 8d 00     mov   y,#$00
09e0: f5 55 03  mov   a,$0355+x
09e3: 48 ff     eor   a,#$ff
09e5: 60        clrc
09e6: 88 01     adc   a,#$01
09e8: d5 55 03  mov   $0355+x,a
09eb: dd        mov   a,y
09ec: d5 46 03  mov   $0346+x,a
09ef: 6f        ret

09f0: 80        setc
09f1: a8 40     sbc   a,#$40
09f3: 30 02     bmi   $09f7
09f5: 1c        asl   a
09f6: 6f        ret

09f7: 1c        asl   a
09f8: 08 80     or    a,#$80
09fa: 6f        ret

09fb: f5 91 02  mov   a,$0291+x
09fe: f0 20     beq   $0a20
0a00: 9b 91     dec   $91+x
0a02: d0 1c     bne   $0a20
0a04: f5 b0 02  mov   a,$02b0+x
0a07: 75 90 02  cmp   a,$0290+x
0a0a: f0 08     beq   $0a14
0a0c: d5 90 02  mov   $0290+x,a
0a0f: f5 a1 02  mov   a,$02a1+x
0a12: 2f 0a     bra   $0a1e
0a14: 60        clrc
0a15: 95 91 02  adc   a,$0291+x
0a18: d5 90 02  mov   $0290+x,a
0a1b: f5 a0 02  mov   a,$02a0+x
0a1e: d4 91     mov   $91+x,a
0a20: 6f        ret

0a21: f4 81     mov   a,$81+x
0a23: d0 07     bne   $0a2c
0a25: f5 90 02  mov   a,$0290+x
0a28: d4 90     mov   $90+x,a
0a2a: 2f 33     bra   $0a5f
0a2c: 9b 81     dec   $81+x
0a2e: d0 34     bne   $0a64
0a30: f5 80 02  mov   a,$0280+x
0a33: d4 81     mov   $81+x,a
0a35: f4 90     mov   a,$90+x
0a37: 75 90 02  cmp   a,$0290+x
0a3a: f0 28     beq   $0a64
0a3c: 90 0f     bcc   $0a4d
0a3e: f4 90     mov   a,$90+x
0a40: 80        setc
0a41: b5 81 02  sbc   a,$0281+x
0a44: d4 90     mov   $90+x,a
0a46: 75 90 02  cmp   a,$0290+x
0a49: b0 14     bcs   $0a5f
0a4b: 2f 0d     bra   $0a5a
0a4d: f5 81 02  mov   a,$0281+x
0a50: 60        clrc
0a51: 94 90     adc   a,$90+x
0a53: d4 90     mov   $90+x,a
0a55: 75 90 02  cmp   a,$0290+x
0a58: 90 05     bcc   $0a5f
0a5a: f5 90 02  mov   a,$0290+x
0a5d: d4 90     mov   $90+x,a
0a5f: fb 90     mov   y,$90+x
0a61: 3f 7b 0c  call  $0c7b
0a64: 6f        ret

0a65: f4 70     mov   a,$70+x
0a67: f0 04     beq   $0a6d
0a69: 9b 70     dec   $70+x
0a6b: 2f 45     bra   $0ab2
0a6d: f5 10 02  mov   a,$0210+x
0a70: f0 40     beq   $0ab2
0a72: 30 15     bmi   $0a89
0a74: f5 00 02  mov   a,$0200+x
0a77: 60        clrc
0a78: 95 20 02  adc   a,$0220+x
0a7b: d5 20 02  mov   $0220+x,a
0a7e: e8 00     mov   a,#$00
0a80: 95 21 02  adc   a,$0221+x
0a83: d5 21 02  mov   $0221+x,a
0a86: 5f 9e 0a  jmp   $0a9e

0a89: f5 00 02  mov   a,$0200+x
0a8c: 48 ff     eor   a,#$ff
0a8e: bc        inc   a
0a8f: 60        clrc
0a90: 95 20 02  adc   a,$0220+x
0a93: d5 20 02  mov   $0220+x,a
0a96: e8 ff     mov   a,#$ff
0a98: 95 21 02  adc   a,$0221+x
0a9b: d5 21 02  mov   $0221+x,a
0a9e: 9b 71     dec   $71+x
0aa0: d0 10     bne   $0ab2
0aa2: f5 01 02  mov   a,$0201+x
0aa5: d4 71     mov   $71+x,a
0aa7: f0 09     beq   $0ab2
0aa9: f5 10 02  mov   a,$0210+x
0aac: 48 ff     eor   a,#$ff
0aae: bc        inc   a
0aaf: d5 10 02  mov   $0210+x,a
0ab2: 6f        ret

0ab3: f5 51 02  mov   a,$0251+x
0ab6: d0 05     bne   $0abd
0ab8: 3f 63 09  call  $0963
0abb: 2f 40     bra   $0afd
0abd: 3f 51 09  call  $0951
0ac0: f0 3b     beq   $0afd
0ac2: 90 1f     bcc   $0ae3
0ac4: f5 51 02  mov   a,$0251+x
0ac7: 48 ff     eor   a,#$ff
0ac9: bc        inc   a
0aca: 60        clrc
0acb: 95 60 02  adc   a,$0260+x
0ace: d5 60 02  mov   $0260+x,a
0ad1: f5 61 02  mov   a,$0261+x
0ad4: 88 ff     adc   a,#$ff
0ad6: d5 61 02  mov   $0261+x,a
0ad9: 3f 51 09  call  $0951
0adc: b0 1f     bcs   $0afd
0ade: 3f 63 09  call  $0963
0ae1: 2f 1a     bra   $0afd
0ae3: f5 60 02  mov   a,$0260+x
0ae6: 60        clrc
0ae7: 95 51 02  adc   a,$0251+x
0aea: d5 60 02  mov   $0260+x,a
0aed: f5 61 02  mov   a,$0261+x
0af0: 88 00     adc   a,#$00
0af2: d5 61 02  mov   $0261+x,a
0af5: 3f 51 09  call  $0951
0af8: 90 03     bcc   $0afd
0afa: 3f 63 09  call  $0963
0afd: 6f        ret

0afe: f5 d0 02  mov   a,$02d0+x
0b01: f0 42     beq   $0b45
0b03: f4 51     mov   a,$51+x
0b05: f0 1e     beq   $0b25
0b07: 9b 51     dec   $51+x
0b09: d0 1a     bne   $0b25
0b0b: 3f 2c 11  call  $112c
0b0e: 10 0e     bpl   $0b1e
0b10: 68 80     cmp   a,#$80
0b12: d0 06     bne   $0b1a
0b14: f4 61     mov   a,$61+x
0b16: d4 60     mov   $60+x,a
0b18: 2f f1     bra   $0b0b
0b1a: 9b 60     dec   $60+x
0b1c: 2f 02     bra   $0b20
0b1e: d4 21     mov   $21+x,a
0b20: f5 41 02  mov   a,$0241+x
0b23: d4 51     mov   $51+x,a
0b25: f4 c1     mov   a,$c1+x
0b27: f0 1c     beq   $0b45
0b29: 74 80     cmp   a,$80+x
0b2b: d0 18     bne   $0b45
0b2d: f4 61     mov   a,$61+x
0b2f: d0 14     bne   $0b45
0b31: f4 40     mov   a,$40+x
0b33: c4 d9     mov   $d9,a
0b35: f4 41     mov   a,$41+x
0b37: c4 da     mov   $da,a
0b39: 8d ff     mov   y,#$ff
0b3b: fc        inc   y
0b3c: f7 d9     mov   a,($d9)+y
0b3e: 10 fb     bpl   $0b3b
0b40: fc        inc   y
0b41: db 60     mov   $60+x,y
0b43: db 61     mov   $61+x,y
0b45: 6f        ret

0b46: f5 d0 02  mov   a,$02d0+x
0b49: d0 32     bne   $0b7d
0b4b: f4 80     mov   a,$80+x
0b4d: f0 10     beq   $0b5f
0b4f: 74 c1     cmp   a,$c1+x
0b51: d0 0c     bne   $0b5f
0b53: e8 03     mov   a,#$03
0b55: d4 a1     mov   $a1+x,a
0b57: f4 21     mov   a,$21+x
0b59: d4 b1     mov   $b1+x,a
0b5b: e8 00     mov   a,#$00
0b5d: d4 b0     mov   $b0+x,a
0b5f: 9b a0     dec   $a0+x
0b61: d0 1a     bne   $0b7d
0b63: fb a1     mov   y,$a1+x
0b65: f6 83 0b  mov   a,$0b83+y
0b68: 2d        push  a
0b69: f6 7e 0b  mov   a,$0b7e+y
0b6c: 2d        push  a
0b6d: 7d        mov   a,x
0b6e: c4 e5     mov   $e5,a
0b70: 1c        asl   a
0b71: 1c        asl   a
0b72: 1c        asl   a
0b73: 80        setc
0b74: a4 e5     sbc   a,$e5
0b76: 5c        lsr   a
0b77: fd        mov   y,a
0b78: f6 04 03  mov   a,$0304+y
0b7b: d4 a0     mov   $a0+x,a
0b7d: 6f        ret

0b7e: db $88,$ba,$f5,$f6,$21
0b83: db $0b,$0b,$0b,$0b,$0c

0b88: f6 07 03  mov   a,$0307+y
0b8b: 80        setc
0b8c: b6 05 03  sbc   a,$0305+y
0b8f: 6d        push  y
0b90: 4d        push  x
0b91: 2d        push  a
0b92: f6 06 03  mov   a,$0306+y
0b95: f0 1f     beq   $0bb6
0b97: fb b0     mov   y,$b0+x
0b99: 5d        mov   x,a
0b9a: 1d        dec   x
0b9b: ae        pop   a
0b9c: cf        mul   ya
0b9d: 9e        div   ya,x
0b9e: ce        pop   x
0b9f: ee        pop   y
0ba0: 60        clrc
0ba1: 96 05 03  adc   a,$0305+y
0ba4: d4 21     mov   $21+x,a
0ba6: bb b0     inc   $b0+x
0ba8: f6 06 03  mov   a,$0306+y
0bab: 74 b0     cmp   a,$b0+x
0bad: d0 06     bne   $0bb5
0baf: bb a1     inc   $a1+x
0bb1: e8 00     mov   a,#$00
0bb3: d4 b0     mov   $b0+x,a
0bb5: 6f        ret

0bb6: ae        pop   a
0bb7: ce        pop   x
0bb8: ee        pop   y
0bb9: 6f        ret

0bba: f6 07 03  mov   a,$0307+y
0bbd: 80        setc
0bbe: b6 09 03  sbc   a,$0309+y
0bc1: 6d        push  y
0bc2: 4d        push  x
0bc3: 2d        push  a
0bc4: f6 08 03  mov   a,$0308+y
0bc7: 2d        push  a
0bc8: 60        clrc
0bc9: b4 b0     sbc   a,$b0+x
0bcb: f0 13     beq   $0be0
0bcd: fd        mov   y,a
0bce: ae        pop   a
0bcf: f0 20     beq   $0bf1
0bd1: 5d        mov   x,a
0bd2: ae        pop   a
0bd3: cf        mul   ya
0bd4: 9e        div   ya,x
0bd5: ce        pop   x
0bd6: ee        pop   y
0bd7: 60        clrc
0bd8: 96 09 03  adc   a,$0309+y
0bdb: d4 21     mov   $21+x,a
0bdd: bb b0     inc   $b0+x
0bdf: 6f        ret

0be0: ae        pop   a
0be1: ae        pop   a
0be2: ce        pop   x
0be3: ee        pop   y
0be4: f6 09 03  mov   a,$0309+y
0be7: d4 21     mov   $21+x,a
0be9: bb a1     inc   $a1+x
0beb: e8 00     mov   a,#$00
0bed: d4 b0     mov   $b0+x,a
0bef: 6f        ret

0bf0: 6f        ret

0bf1: ae        pop   a
0bf2: ce        pop   x
0bf3: ee        pop   y
0bf4: 6f        ret

0bf5: 6f        ret

0bf6: f4 b1     mov   a,$b1+x
0bf8: 6d        push  y
0bf9: 4d        push  x
0bfa: 2d        push  a
0bfb: f6 0a 03  mov   a,$030a+y
0bfe: 2d        push  a
0bff: 60        clrc
0c00: b4 b0     sbc   a,$b0+x
0c02: f0 0f     beq   $0c13
0c04: fd        mov   y,a
0c05: ae        pop   a
0c06: f0 16     beq   $0c1e
0c08: 5d        mov   x,a
0c09: ae        pop   a
0c0a: cf        mul   ya
0c0b: 9e        div   ya,x
0c0c: ce        pop   x
0c0d: ee        pop   y
0c0e: d4 21     mov   $21+x,a
0c10: bb b0     inc   $b0+x
0c12: 6f        ret

0c13: ae        pop   a
0c14: ae        pop   a
0c15: ce        pop   x
0c16: ee        pop   y
0c17: e8 00     mov   a,#$00
0c19: d4 21     mov   $21+x,a
0c1b: bb a1     inc   $a1+x
0c1d: 6f        ret

0c1e: ae        pop   a
0c1f: ce        pop   x
0c20: ee        pop   y
0c21: 6f        ret

0c22: f0 50     beq   $0c74
0c24: fb 20     mov   y,$20+x
0c26: 60        clrc
0c27: 96 78 38  adc   a,$3878+y
0c2a: 5b c0     lsr   $c0+x
0c2c: b0 04     bcs   $0c32
0c2e: 60        clrc
0c2f: 95 40 02  adc   a,$0240+x
0c32: d5 b0 02  mov   $02b0+x,a
0c35: d5 90 02  mov   $0290+x,a
0c38: fd        mov   y,a
0c39: f5 80 02  mov   a,$0280+x
0c3c: d4 81     mov   $81+x,a
0c3e: d0 05     bne   $0c45
0c40: db 90     mov   $90+x,y
0c42: 3f 7b 0c  call  $0c7b
0c45: 3f a4 0c  call  $0ca4
0c48: f5 d0 02  mov   a,$02d0+x
0c4b: f0 0e     beq   $0c5b
0c4d: f5 e1 02  mov   a,$02e1+x
0c50: d0 09     bne   $0c5b
0c52: d4 60     mov   $60+x,a
0c54: d4 61     mov   $61+x,a
0c56: f5 41 02  mov   a,$0241+x
0c59: d4 51     mov   $51+x,a
0c5b: f5 a1 02  mov   a,$02a1+x
0c5e: d4 91     mov   $91+x,a
0c60: 3f d3 0c  call  $0cd3
0c63: f5 f0 02  mov   a,$02f0+x
0c66: d0 0c     bne   $0c74
0c68: e4 d2     mov   a,$d2
0c6a: 04 d4     or    a,$d4
0c6c: c4 d4     mov   $d4,a
0c6e: e4 d2     mov   a,$d2
0c70: 04 d5     or    a,$d5
0c72: c4 d5     mov   $d5,a
0c74: 3f e7 0c  call  $0ce7
0c77: 3f be 0c  call  $0cbe
0c7a: 6f        ret

0c7b: f6 54 12  mov   a,$1254+y
0c7e: c4 d9     mov   $d9,a
0c80: f6 a9 12  mov   a,$12a9+y
0c83: c4 da     mov   $da,a
0c85: fb 20     mov   y,$20+x
0c87: f6 99 38  mov   a,$3899+y
0c8a: fd        mov   y,a
0c8b: 6d        push  y
0c8c: e4 d9     mov   a,$d9
0c8e: cf        mul   ya
0c8f: cb dd     mov   $dd,y
0c91: ee        pop   y
0c92: e4 da     mov   a,$da
0c94: cf        mul   ya
0c95: 8f 00 de  mov   $de,#$00
0c98: 7a dd     addw  ya,$dd
0c9a: 7a d9     addw  ya,$d9
0c9c: d5 d1 02  mov   $02d1+x,a
0c9f: dd        mov   a,y
0ca0: d5 e0 02  mov   $02e0+x,a
0ca3: 6f        ret

0ca4: f5 11 02  mov   a,$0211+x
0ca7: d4 70     mov   $70+x,a
0ca9: f5 01 02  mov   a,$0201+x
0cac: 5c        lsr   a
0cad: d4 71     mov   $71+x,a
0caf: f5 50 02  mov   a,$0250+x
0cb2: d5 10 02  mov   $0210+x,a
0cb5: e8 00     mov   a,#$00
0cb7: d5 21 02  mov   $0221+x,a
0cba: d5 20 02  mov   $0220+x,a
0cbd: 6f        ret

0cbe: f5 70 02  mov   a,$0270+x
0cc1: f0 0a     beq   $0ccd
0cc3: f4 80     mov   a,$80+x
0cc5: 80        setc
0cc6: b5 70 02  sbc   a,$0270+x
0cc9: d4 c1     mov   $c1+x,a
0ccb: 2f 05     bra   $0cd2
0ccd: f5 71 02  mov   a,$0271+x
0cd0: d4 c1     mov   $c1+x,a
0cd2: 6f        ret

0cd3: f5 b1 02  mov   a,$02b1+x
0cd6: f0 0e     beq   $0ce6
0cd8: f5 e1 02  mov   a,$02e1+x
0cdb: d0 09     bne   $0ce6
0cdd: e8 00     mov   a,#$00
0cdf: d4 a1     mov   $a1+x,a
0ce1: d4 b0     mov   $b0+x,a
0ce3: bc        inc   a
0ce4: d4 a0     mov   $a0+x,a
0ce6: 6f        ret

0ce7: f5 31 02  mov   a,$0231+x
0cea: d0 05     bne   $0cf1
0cec: f5 30 02  mov   a,$0230+x
0cef: d0 08     bne   $0cf9
0cf1: e8 00     mov   a,#$00
0cf3: d5 31 02  mov   $0231+x,a
0cf6: 3f fc 0c  call  $0cfc
0cf9: d4 80     mov   $80+x,a
0cfb: 6f        ret

0cfc: e7 30     mov   a,($30+x)
0cfe: bb 30     inc   $30+x
0d00: d0 02     bne   $0d04
0d02: bb 31     inc   $31+x
0d04: 08 00     or    a,#$00
0d06: 6f        ret

; vcmd dispatch table
0d07: dw $10fe  ; 80
0d09: dw $0d77  ; 81
0d0b: dw $0d86  ; 82
0d0d: dw $0d9a  ; 83
0d0f: dw $0da0  ; 84
0d11: dw $0dae  ; 85
0d13: dw $0dcf  ; 86
0d15: dw $0dd8  ; 87
0d17: dw $0de0  ; 88
0d19: dw $0de9  ; 89
0d1b: dw $0df1  ; 8a
0d1d: dw $0dfe  ; 8b
0d1f: dw $0e06  ; 8c
0d21: dw $0e30  ; 8d
0d23: dw $0e39  ; 8e
0d25: dw $0e3d  ; 8f
0d27: dw $0e61  ; 90
0d29: dw $0e59  ; 91
0d2b: dw $0e6a  ; 92
0d2d: dw $0e78  ; 93
0d2f: dw $0e86  ; 94
0d31: dw $0e95  ; 95
0d33: dw $0e9d  ; 96
0d35: dw $0eb4  ; 97
0d37: dw $0ef0  ; 98
0d39: dw $0ef9  ; 99
0d3b: dw $0f02  ; 9a
0d3d: dw $0f1c  ; 9b
0d3f: dw $0f14  ; 9c
0d41: dw $0f2b  ; 9d
0d43: dw $0f3a  ; 9e
0d45: dw $0f42  ; 9f
0d47: dw $0f4a  ; a0
0d49: dw $0f51  ; a1
0d4b: dw $0f6d  ; a2
0d4d: dw $0f8a  ; a3
0d4f: dw $0fa3  ; a4
0d51: dw $0fe4  ; a5
0d53: dw $100a  ; a6
0d55: dw $101b  ; a7
0d57: dw $1039  ; a8
0d59: dw $1047  ; a9
0d5b: dw $1069  ; aa
0d5d: dw $1078  ; ab
0d5f: dw $1087  ; ac
0d61: dw $1092  ; ad
0d63: dw $109d  ; ae
0d65: dw $10a8  ; af
0d67: dw $10c0  ; b0
0d69: dw $10c9  ; b1
0d6b: dw $10d2  ; b2
0d6d: dw $10db  ; b3
0d6f: dw $10ea  ; b4
0d71: dw $10f3  ; b5
0d73: dw $1114  ; b6
0d75: dw $111c  ; b7

; vcmd 81
0d77: 3f fc 0c  call  $0cfc
0d7a: 2d        push  a
0d7b: 3f fc 0c  call  $0cfc
0d7e: d4 31     mov   $31+x,a
0d80: ae        pop   a
0d81: d4 30     mov   $30+x,a
0d83: 5f 04 09  jmp   $0904

; vcmd 82
0d86: 3f fc 0c  call  $0cfc
0d89: 2d        push  a
0d8a: 3f fc 0c  call  $0cfc
0d8d: 2d        push  a
0d8e: 3f 54 11  call  $1154
0d91: ae        pop   a
0d92: d4 31     mov   $31+x,a
0d94: ae        pop   a
0d95: d4 30     mov   $30+x,a
0d97: 5f 04 09  jmp   $0904

; vcmd 83
0d9a: 3f 3b 11  call  $113b
0d9d: 5f 04 09  jmp   $0904

; vcmd 84
0da0: 3f fc 0c  call  $0cfc
0da3: 2d        push  a
0da4: 3f 54 11  call  $1154
0da7: ae        pop   a
0da8: 3f 4c 11  call  $114c
0dab: 5f 04 09  jmp   $0904

; vcmd 85
0dae: fb 50     mov   y,$50+x
0db0: f6 7f 03  mov   a,$037f+y
0db3: 9c        dec   a
0db4: f0 10     beq   $0dc6
0db6: d6 7f 03  mov   $037f+y,a
0db9: f6 7e 03  mov   a,$037e+y
0dbc: d4 31     mov   $31+x,a
0dbe: f6 7d 03  mov   a,$037d+y
0dc1: d4 30     mov   $30+x,a
0dc3: 5f 04 09  jmp   $0904

0dc6: dd        mov   a,y
0dc7: 80        setc
0dc8: a8 03     sbc   a,#$03
0dca: d4 50     mov   $50+x,a
0dcc: 5f 04 09  jmp   $0904

; vcmd 86
0dcf: 3f fc 0c  call  $0cfc
0dd2: d5 30 02  mov   $0230+x,a
0dd5: 5f 04 09  jmp   $0904

; vcmd 87
0dd8: e8 ff     mov   a,#$ff
0dda: d5 31 02  mov   $0231+x,a
0ddd: 5f 04 09  jmp   $0904

; vcmd 88
0de0: 3f fc 0c  call  $0cfc
0de3: d5 40 02  mov   $0240+x,a
0de6: 5f 04 09  jmp   $0904

; vcmd 89
0de9: 3f fc 0c  call  $0cfc
0dec: d4 20     mov   $20+x,a
0dee: 5f 04 09  jmp   $0904

; vcmd 8a
0df1: 3f fc 0c  call  $0cfc
0df4: d4 00     mov   $00+x,a
0df6: e8 00     mov   a,#$00
0df8: d5 45 03  mov   $0345+x,a
0dfb: 5f 04 09  jmp   $0904

; vcmd 8b
0dfe: 3f fc 0c  call  $0cfc
0e01: d4 01     mov   $01+x,a
0e03: 5f f6 0d  jmp   $0df6

; vcmd 8c
0e06: 3f fc 0c  call  $0cfc
0e09: d5 41 02  mov   $0241+x,a
0e0c: 3f fc 0c  call  $0cfc
0e0f: d4 40     mov   $40+x,a
0e11: 3f fc 0c  call  $0cfc
0e14: d4 41     mov   $41+x,a
0e16: e8 00     mov   a,#$00
0e18: d4 60     mov   $60+x,a
0e1a: d5 b1 02  mov   $02b1+x,a
0e1d: d5 e1 02  mov   $02e1+x,a
0e20: 9c        dec   a
0e21: d5 d0 02  mov   $02d0+x,a
0e24: e8 01     mov   a,#$01
0e26: d4 51     mov   $51+x,a
0e28: 3f 2c 11  call  $112c
0e2b: d4 21     mov   $21+x,a
0e2d: 5f 04 09  jmp   $0904

; vcmd 8d
0e30: 3f fc 0c  call  $0cfc
0e33: d5 c0 02  mov   $02c0+x,a
0e36: 5f 04 09  jmp   $0904

; vcmd 8e
0e39: e8 01     mov   a,#$01
0e3b: 2f 02     bra   $0e3f
; vcmd 8f
0e3d: e8 ff     mov   a,#$ff
0e3f: d5 50 02  mov   $0250+x,a
0e42: 3f fc 0c  call  $0cfc
0e45: d5 11 02  mov   $0211+x,a
0e48: 3f fc 0c  call  $0cfc
0e4b: d5 00 02  mov   $0200+x,a
0e4e: 3f fc 0c  call  $0cfc
0e51: d5 01 02  mov   $0201+x,a
0e54: d4 71     mov   $71+x,a
0e56: 5f 04 09  jmp   $0904

; vcmd 91
0e59: e8 00     mov   a,#$00
0e5b: d5 50 02  mov   $0250+x,a
0e5e: 5f 04 09  jmp   $0904

; vcmd 90
0e61: 3f fc 0c  call  $0cfc
0e64: d5 51 02  mov   $0251+x,a
0e67: 5f 04 09  jmp   $0904

; vcmd 92
0e6a: 3f fc 0c  call  $0cfc
0e6d: d5 70 02  mov   $0270+x,a
0e70: e8 00     mov   a,#$00
0e72: d5 71 02  mov   $0271+x,a
0e75: 5f 04 09  jmp   $0904

; vcmd 93
0e78: 3f fc 0c  call  $0cfc
0e7b: d5 71 02  mov   $0271+x,a
0e7e: e8 00     mov   a,#$00
0e80: d5 70 02  mov   $0270+x,a
0e83: 5f 04 09  jmp   $0904

; vcmd 94
0e86: 3f fc 0c  call  $0cfc
0e89: d5 81 02  mov   $0281+x,a
0e8c: 3f fc 0c  call  $0cfc
0e8f: d5 80 02  mov   $0280+x,a
0e92: 5f 04 09  jmp   $0904

; vcmd 95
0e95: e8 00     mov   a,#$00
0e97: d5 80 02  mov   $0280+x,a
0e9a: 5f 04 09  jmp   $0904

; vcmd 96
0e9d: 3f fc 0c  call  $0cfc
0ea0: d5 91 02  mov   $0291+x,a
0ea3: 3f fc 0c  call  $0cfc
0ea6: d5 a0 02  mov   $02a0+x,a
0ea9: 3f fc 0c  call  $0cfc
0eac: d5 a1 02  mov   $02a1+x,a
0eaf: d4 91     mov   $91+x,a
0eb1: 5f 04 09  jmp   $0904

; vcmd 97
0eb4: e8 22     mov   a,#$22
0eb6: c4 d9     mov   $d9,a
0eb8: e8 20     mov   a,#$20
0eba: c4 da     mov   $da,a
0ebc: 3f fc 0c  call  $0cfc
0ebf: 8d 07     mov   y,#$07
0ec1: cf        mul   ya
0ec2: 4d        push  x
0ec3: 60        clrc
0ec4: 7a d9     addw  ya,$d9
0ec6: da d9     movw  $d9,ya
0ec8: 8d 00     mov   y,#$00
0eca: 7d        mov   a,x
0ecb: c4 e5     mov   $e5,a
0ecd: 1c        asl   a
0ece: 1c        asl   a
0ecf: 1c        asl   a
0ed0: 80        setc
0ed1: a4 e5     sbc   a,$e5
0ed3: 5c        lsr   a
0ed4: 5d        mov   x,a
0ed5: f7 d9     mov   a,($d9)+y
0ed7: d5 04 03  mov   $0304+x,a
0eda: 3d        inc   x
0edb: fc        inc   y
0edc: ad 07     cmp   y,#$07
0ede: d0 f5     bne   $0ed5
0ee0: ce        pop   x
0ee1: e8 00     mov   a,#$00
0ee3: d5 d0 02  mov   $02d0+x,a
0ee6: d5 e1 02  mov   $02e1+x,a
0ee9: 9c        dec   a
0eea: d5 b1 02  mov   $02b1+x,a
0eed: 5f 04 09  jmp   $0904

; vcmd 98
0ef0: e4 d2     mov   a,$d2
0ef2: 04 d6     or    a,$d6
0ef4: c4 d6     mov   $d6,a
0ef6: 5f 04 09  jmp   $0904

; vcmd 99
0ef9: e4 d3     mov   a,$d3
0efb: 24 d6     and   a,$d6
0efd: c4 d6     mov   $d6,a
0eff: 5f 04 09  jmp   $0904

; vcmd 9a
0f02: 3f fc 0c  call  $0cfc
0f05: 28 1f     and   a,#$1f
0f07: 08 20     or    a,#$20
0f09: 8f 6c f2  mov   $f2,#$6c
0f0c: 00        nop
0f0d: 00        nop
0f0e: 00        nop
0f0f: c4 f3     mov   $f3,a
0f11: 5f 04 09  jmp   $0904

; vcmd 9c
0f14: e8 ff     mov   a,#$ff
0f16: d5 e1 02  mov   $02e1+x,a
0f19: 5f 04 09  jmp   $0904

; vcmd 9b
0f1c: e8 00     mov   a,#$00
0f1e: d5 e1 02  mov   $02e1+x,a
0f21: d5 d0 02  mov   $02d0+x,a
0f24: 9c        dec   a
0f25: d5 b1 02  mov   $02b1+x,a
0f28: 5f 04 09  jmp   $0904

; vcmd 9d
0f2b: e8 00     mov   a,#$00
0f2d: d5 e1 02  mov   $02e1+x,a
0f30: d5 b1 02  mov   $02b1+x,a
0f33: 9c        dec   a
0f34: d5 d0 02  mov   $02d0+x,a
0f37: 5f 04 09  jmp   $0904

; vcmd 9e
0f3a: e8 00     mov   a,#$00
0f3c: d5 f0 02  mov   $02f0+x,a
0f3f: 5f 04 09  jmp   $0904

; vcmd 9f
0f42: e8 ff     mov   a,#$ff
0f44: d5 f0 02  mov   $02f0+x,a
0f47: 5f 04 09  jmp   $0904

; vcmd a0
0f4a: e8 01     mov   a,#$01
0f4c: d4 c0     mov   $c0+x,a
0f4e: 5f 04 09  jmp   $0904

; vcmd a1
0f51: 4d        push  x
0f52: f8 e4     mov   x,$e4
0f54: cd 01     mov   x,#$01
0f56: 3f 2a 07  call  $072a
0f59: ce        pop   x
0f5a: f5 17 12  mov   a,$1217+x
0f5d: c4 d2     mov   $d2,a
0f5f: f5 18 12  mov   a,$1218+x
0f62: c4 d3     mov   $d3,a
0f64: 8f 00 e0  mov   $e0,#$00
0f67: 8f 7f e1  mov   $e1,#$7f
0f6a: 5f 04 09  jmp   $0904

; vcmd a2
0f6d: 7d        mov   a,x
0f6e: c4 e5     mov   $e5,a
0f70: 1c        asl   a
0f71: 1c        asl   a
0f72: 1c        asl   a
0f73: 80        setc
0f74: a4 e5     sbc   a,$e5
0f76: 5c        lsr   a
0f77: fd        mov   y,a
0f78: e8 07     mov   a,#$07
0f7a: c4 e5     mov   $e5,a
0f7c: 3f fc 0c  call  $0cfc
0f7f: d6 04 03  mov   $0304+y,a
0f82: fc        inc   y
0f83: 8b e5     dec   $e5
0f85: d0 f5     bne   $0f7c
0f87: 5f 1c 0f  jmp   $0f1c

; vcmd a3
0f8a: 3f fc 0c  call  $0cfc
0f8d: 3f 27 12  call  $1227
0f90: 1c        asl   a
0f91: c4 e5     mov   $e5,a
0f93: 60        clrc
0f94: f4 30     mov   a,$30+x
0f96: 84 e5     adc   a,$e5
0f98: d4 30     mov   $30+x,a
0f9a: f4 31     mov   a,$31+x
0f9c: 88 00     adc   a,#$00
0f9e: d4 31     mov   $31+x,a
0fa0: 5f 77 0d  jmp   $0d77

; vcmd a4
0fa3: 3f fc 0c  call  $0cfc
0fa6: c4 e5     mov   $e5,a
0fa8: 3f 27 12  call  $1227
0fab: c4 d9     mov   $d9,a
0fad: 1c        asl   a
0fae: 60        clrc
0faf: f4 30     mov   a,$30+x
0fb1: 84 d9     adc   a,$d9
0fb3: d4 30     mov   $30+x,a
0fb5: f4 31     mov   a,$31+x
0fb7: 88 00     adc   a,#$00
0fb9: d4 31     mov   $31+x,a
0fbb: 3f fc 0c  call  $0cfc
0fbe: 2d        push  a
0fbf: 3f fc 0c  call  $0cfc
0fc2: 2d        push  a
0fc3: e4 e5     mov   a,$e5
0fc5: 9c        dec   a
0fc6: 80        setc
0fc7: a4 d9     sbc   a,$d9
0fc9: 1c        asl   a
0fca: c4 d9     mov   $d9,a
0fcc: f4 30     mov   a,$30+x
0fce: 84 d9     adc   a,$d9
0fd0: d4 30     mov   $30+x,a
0fd2: f4 31     mov   a,$31+x
0fd4: 88 00     adc   a,#$00
0fd6: d4 31     mov   $31+x,a
0fd8: 3f 54 11  call  $1154
0fdb: ae        pop   a
0fdc: d4 31     mov   $31+x,a
0fde: ae        pop   a
0fdf: d4 30     mov   $30+x,a
0fe1: 5f 04 09  jmp   $0904

; vcmd a5
0fe4: 3f fc 0c  call  $0cfc
0fe7: 3f f3 0f  call  $0ff3
0fea: 16 3c 03  or    a,$033c+y
0fed: d6 3c 03  mov   $033c+y,a
0ff0: 5f 04 09  jmp   $0904

0ff3: 4d        push  x
0ff4: fd        mov   y,a
0ff5: 28 07     and   a,#$07
0ff7: 5d        mov   x,a
0ff8: dd        mov   a,y
0ff9: 5c        lsr   a
0ffa: 5c        lsr   a
0ffb: 5c        lsr   a
0ffc: fd        mov   y,a
0ffd: f5 02 10  mov   a,$1002+x
1000: ce        pop   x
1001: 6f        ret

1002: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
100a: 3f fc 0c  call  $0cfc
100d: 3f f3 0f  call  $0ff3
1010: 48 ff     eor   a,#$ff
1012: 36 3c 03  and   a,$033c+y
1015: d6 3c 03  mov   $033c+y,a
1018: 5f 04 09  jmp   $0904

; vcmd a7
101b: 3f fc 0c  call  $0cfc
101e: 3f f3 0f  call  $0ff3
1021: 36 3c 03  and   a,$033c+y
1024: f0 03     beq   $1029
1026: 5f 77 0d  jmp   $0d77

1029: f4 30     mov   a,$30+x
102b: 60        clrc
102c: 88 02     adc   a,#$02
102e: d4 30     mov   $30+x,a
1030: f4 31     mov   a,$31+x
1032: 88 00     adc   a,#$00
1034: d4 31     mov   $31+x,a
1036: 5f 04 09  jmp   $0904

; vcmd a8
1039: 3f fc 0c  call  $0cfc
103c: 3f f3 0f  call  $0ff3
103f: 36 3c 03  and   a,$033c+y
1042: d0 e5     bne   $1029
1044: 5f 77 0d  jmp   $0d77

; vcmd a9
1047: 3f fc 0c  call  $0cfc
104a: 3f f3 0f  call  $0ff3
104d: 36 3c 03  and   a,$033c+y
1050: f0 03     beq   $1055
1052: 5f 04 09  jmp   $0904

1055: e8 01     mov   a,#$01
1057: d4 80     mov   $80+x,a
1059: f4 30     mov   a,$30+x
105b: 80        setc
105c: a8 02     sbc   a,#$02
105e: d4 30     mov   $30+x,a
1060: f4 31     mov   a,$31+x
1062: a8 00     sbc   a,#$00
1064: d4 31     mov   $31+x,a
1066: 5f 20 09  jmp   $0920

; vcmd aa
1069: e4 d2     mov   a,$d2
106b: 04 d7     or    a,$d7
106d: c4 d7     mov   $d7,a
106f: 8f 4d f2  mov   $f2,#$4d
1072: fa d7 f3  mov   ($f3),($d7)
1075: 5f 04 09  jmp   $0904

; vcmd ab
1078: e4 d3     mov   a,$d3
107a: 24 d7     and   a,$d7
107c: c4 d7     mov   $d7,a
107e: 8f 4d f2  mov   $f2,#$4d
1081: fa d7 f3  mov   ($f3),($d7)
1084: 5f 04 09  jmp   $0904

; vcmd ac
1087: 3f fc 0c  call  $0cfc
108a: 8f 2c f2  mov   $f2,#$2c
108d: c4 f3     mov   $f3,a
108f: 5f 04 09  jmp   $0904

; vcmd ad
1092: 3f fc 0c  call  $0cfc
1095: 8f 3c f2  mov   $f2,#$3c
1098: c4 f3     mov   $f3,a
109a: 5f 04 09  jmp   $0904

; vcmd ae
109d: 3f fc 0c  call  $0cfc
10a0: 8f 0d f2  mov   $f2,#$0d
10a3: c4 f3     mov   $f3,a
10a5: 5f 04 09  jmp   $0904

; vcmd af
10a8: 8d 00     mov   y,#$00
10aa: dd        mov   a,y
10ab: 1c        asl   a
10ac: 1c        asl   a
10ad: 1c        asl   a
10ae: 1c        asl   a
10af: 08 0f     or    a,#$0f
10b1: c4 f2     mov   $f2,a
10b3: 3f fc 0c  call  $0cfc
10b6: c4 f3     mov   $f3,a
10b8: fc        inc   y
10b9: ad 08     cmp   y,#$08
10bb: d0 ed     bne   $10aa
10bd: 5f 04 09  jmp   $0904

; vcmd b0
10c0: 3f fc 0c  call  $0cfc
10c3: d5 56 03  mov   $0356+x,a
10c6: 5f 04 09  jmp   $0904

; vcmd b1
10c9: e4 d2     mov   a,$d2
10cb: 04 d8     or    a,$d8
10cd: c4 d8     mov   $d8,a
10cf: 5f 04 09  jmp   $0904

; vcmd b2
10d2: e4 d3     mov   a,$d3
10d4: 24 d8     and   a,$d8
10d6: c4 d8     mov   $d8,a
10d8: 5f 04 09  jmp   $0904

; vcmd b3
10db: 3f fc 0c  call  $0cfc
10de: d5 45 03  mov   $0345+x,a
10e1: 3f fc 0c  call  $0cfc
10e4: d5 46 03  mov   $0346+x,a
10e7: 5f 04 09  jmp   $0904

; vcmd b4
10ea: 3f fc 0c  call  $0cfc
10ed: d5 55 03  mov   $0355+x,a
10f0: 5f 04 09  jmp   $0904

; vcmd b5
10f3: 3f fc 0c  call  $0cfc
10f6: 4d        push  x
10f7: 3f d3 04  call  $04d3
10fa: ce        pop   x
10fb: 5f 04 09  jmp   $0904

; vcmd 80
10fe: e8 00     mov   a,#$00
1100: d5 65 03  mov   $0365+x,a
1103: d5 f1 02  mov   $02f1+x,a
1106: d5 c1 02  mov   $02c1+x,a
1109: 9c        dec   a
110a: d5 01 01  mov   $0101+x,a
110d: e4 d2     mov   a,$d2
110f: 04 d5     or    a,$d5
1111: c4 d5     mov   $d5,a
1113: 6f        ret

; vcmd b6
1114: 3f fc 0c  call  $0cfc
1117: c4 fc     mov   $fc,a
1119: 5f 04 09  jmp   $0904

; vcmd b7
111c: e8 ff     mov   a,#$ff
111e: d5 00 01  mov   $0100+x,a
1121: e8 01     mov   a,#$01
1123: d5 46 03  mov   $0346+x,a
1126: d5 45 03  mov   $0345+x,a
1129: 5f 04 09  jmp   $0904

112c: f4 40     mov   a,$40+x
112e: c4 d9     mov   $d9,a
1130: f4 41     mov   a,$41+x
1132: c4 da     mov   $da,a
1134: fb 60     mov   y,$60+x
1136: bb 60     inc   $60+x
1138: f7 d9     mov   a,($d9)+y
113a: 6f        ret

113b: fb 50     mov   y,$50+x
113d: dc        dec   y
113e: f6 80 03  mov   a,$0380+y
1141: d4 31     mov   $31+x,a
1143: dc        dec   y
1144: f6 80 03  mov   a,$0380+y
1147: d4 30     mov   $30+x,a
1149: db 50     mov   $50+x,y
114b: 6f        ret

114c: fb 50     mov   y,$50+x
114e: d6 80 03  mov   $0380+y,a
1151: bb 50     inc   $50+x
1153: 6f        ret

1154: fb 50     mov   y,$50+x
1156: f4 30     mov   a,$30+x
1158: d6 80 03  mov   $0380+y,a
115b: f4 31     mov   a,$31+x
115d: d6 81 03  mov   $0381+y,a
1160: fc        inc   y
1161: fc        inc   y
1162: db 50     mov   $50+x,y
1164: 6f        ret

1165: f6 65 03  mov   a,$0365+y
1168: f0 37     beq   $11a1
116a: d8 f2     mov   $f2,x
116c: f6 00 00  mov   a,$0000+y
116f: 3f a4 11  call  $11a4
1172: c4 f3     mov   $f3,a
1174: 3d        inc   x
1175: d8 f2     mov   $f2,x
1177: f6 01 00  mov   a,$0001+y
117a: 3f a4 11  call  $11a4
117d: c4 f3     mov   $f3,a
117f: 3d        inc   x
1180: d8 f2     mov   $f2,x
1182: f6 10 00  mov   a,$0010+y
1185: c4 f3     mov   $f3,a
1187: 3d        inc   x
1188: d8 f2     mov   $f2,x
118a: f6 11 00  mov   a,$0011+y
118d: c4 f3     mov   $f3,a
118f: 3d        inc   x
1190: d8 f2     mov   $f2,x
1192: f6 20 00  mov   a,$0020+y
1195: c4 f3     mov   $f3,a
1197: 3d        inc   x
1198: 3d        inc   x
1199: 3d        inc   x
119a: d8 f2     mov   $f2,x
119c: f6 21 00  mov   a,$0021+y
119f: c4 f3     mov   $f3,a
11a1: 5f 7b 05  jmp   $057b

11a4: 30 17     bmi   $11bd
11a6: 6d        push  y
11a7: 4d        push  x
11a8: 6d        push  y
11a9: ce        pop   x
11aa: fd        mov   y,a
11ab: f5 c1 02  mov   a,$02c1+x
11ae: bc        inc   a
11af: d0 04     bne   $11b5
11b1: e4 e8     mov   a,$e8
11b3: 2f 03     bra   $11b8
11b5: f5 66 03  mov   a,$0366+x
11b8: cf        mul   ya
11b9: dd        mov   a,y
11ba: ce        pop   x
11bb: ee        pop   y
11bc: 6f        ret

11bd: 48 ff     eor   a,#$ff
11bf: bc        inc   a
11c0: 6d        push  y
11c1: 4d        push  x
11c2: 6d        push  y
11c3: ce        pop   x
11c4: fd        mov   y,a
11c5: f5 66 03  mov   a,$0366+x
11c8: cf        mul   ya
11c9: dd        mov   a,y
11ca: ce        pop   x
11cb: ee        pop   y
11cc: 48 ff     eor   a,#$ff
11ce: bc        inc   a
11cf: 6f        ret

11d0: cd 00     mov   x,#$00
11d2: f5 e2 11  mov   a,$11e2+x
11d5: 30 0a     bmi   $11e1
11d7: c4 f2     mov   $f2,a
11d9: f5 fd 11  mov   a,$11fd+x
11dc: c4 f3     mov   $f3,a
11de: 3d        inc   x
11df: d0 f1     bne   $11d2
11e1: 6f        ret

11e2: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
11fd: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$38,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

1217: db $01,$fe
1219: db $02,$fd
121b: db $04,$fb
121d: db $08,$f7
121f: db $10,$ef
1221: db $20,$df
1223: db $40,$bf
1225: db $80,$7f

1227: fd        mov   y,a
1228: 3f 45 12  call  $1245
122b: 3f 45 12  call  $1245
122e: 3f 45 12  call  $1245
1231: 3f 45 12  call  $1245
1234: 3f 45 12  call  $1245
1237: 3f 45 12  call  $1245
123a: 3f 45 12  call  $1245
123d: 3f 45 12  call  $1245
1240: e4 eb     mov   a,$eb
1242: cf        mul   ya
1243: dd        mov   a,y
1244: 6f        ret

1245: e4 eb     mov   a,$eb
1247: 28 48     and   a,#$48
1249: 88 38     adc   a,#$38
124b: 1c        asl   a
124c: 1c        asl   a
124d: 2b ee     rol   $ee
124f: 2b ed     rol   $ed
1251: 2b ec     rol   $ec
1253: 2b eb     rol   $eb
1255: 6f        ret
