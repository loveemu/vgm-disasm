0420: 8f dc f5  mov   $f5,#$dc
0423: 8f fe f4  mov   $f4,#$fe
0426: 5f 49 04  jmp   $0449

0429: dd        mov   a,y
042a: 8d 00     mov   y,#$00
042c: 7a ee     addw  ya,$ee
042e: da ee     movw  $ee,ya
0430: 8d 00     mov   y,#$00
0432: 5f 49 04  jmp   $0449

0435: 68 02     cmp   a,#$02
0437: 90 09     bcc   $0442
0439: 7d        mov   a,x
043a: d7 ee     mov   ($ee)+y,a
043c: fc        inc   y
043d: e4 e3     mov   a,$e3
043f: d7 ee     mov   ($ee)+y,a
0441: fc        inc   y
0442: e4 e2     mov   a,$e2
0444: d7 ee     mov   ($ee)+y,a
0446: fc        inc   y
0447: 30 e0     bmi   $0429
0449: e4 f4     mov   a,$f4
044b: 64 f4     cmp   a,$f4
044d: d0 fa     bne   $0449
044f: 64 1e     cmp   a,$1e
0451: f0 f6     beq   $0449
0453: fa f5 e2  mov   ($e2),($f5)
0456: fa f6 e3  mov   ($e3),($f6)
0459: f8 f7     mov   x,$f7
045b: c4 f4     mov   $f4,a
045d: c4 1e     mov   $1e,a
045f: 63 1e 0e  bbs3  $1e,$0470
0462: 28 03     and   a,#$03
0464: d0 cf     bne   $0435
0466: d8 ef     mov   $ef,x
0468: fa e3 ee  mov   ($ee),($e3)
046b: 8d 00     mov   y,#$00
046d: 5f 49 04  jmp   $0449

0470: 8f 00 f5  mov   $f5,#$00
0473: 8f 00 f4  mov   $f4,#$00
0476: 6f        ret

0477: db $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

0480: d3 1a 1a  bbc6  $1a,$049d
0483: fa 23 06  mov   ($06),($23)
0486: 58 ff 06  eor   $06,#$ff
0489: 29 24 06  and   ($06),($24)
048c: e4 21     mov   a,$21
048e: 04 22     or    a,$22
0490: 24 23     and   a,$23
0492: 0e 06 00  tset1 $0006
0495: fa 46 09  mov   ($09),($46)
0498: fa 48 08  mov   ($08),($48)
049b: d2 1a     clr6  $1a
049d: cd 00     mov   x,#$00
049f: 8f 00 04  mov   $04,#$00
04a2: e8 01     mov   a,#$01
04a4: fb d1     mov   y,$d1+x
04a6: f0 07     beq   $04af
04a8: 9b d1     dec   $d1+x
04aa: d0 03     bne   $04af
04ac: 0e 04 00  tset1 $0004
04af: 03 1a 07  bbs0  $1a,$04b9
04b2: 4d        push  x
04b3: 2d        push  a
04b4: 3f a3 0e  call  $0ea3
04b7: ae        pop   a
04b8: ce        pop   x
04b9: 3d        inc   x
04ba: 3d        inc   x
04bb: 1c        asl   a
04bc: d0 e6     bne   $04a4
04be: 8f 00 03  mov   $03,#$00
04c1: cd 00     mov   x,#$00
04c3: f5 11 13  mov   a,$1311+x
04c6: c4 f2     mov   $f2,a
04c8: bf        mov   a,(x)+
04c9: c4 f3     mov   $f3,a
04cb: 3e 19     cmp   x,$19
04cd: d0 f4     bne   $04c3
04cf: 8f 00 04  mov   $04,#$00
04d2: 8f 00 00  mov   $00,#$00
04d5: 8f 00 2c  mov   $2c,#$00
04d8: 3f 09 15  call  $1509
04db: 3f a3 0e  call  $0ea3
04de: fa 1a f5  mov   ($f5),($1a)
04e1: fa 23 f6  mov   ($f6),($23)
04e4: b3 1a 17  bbc5  $1a,$04fe
04e7: e4 3b     mov   a,$3b
04e9: 60        clrc
04ea: 84 2a     adc   a,$2a
04ec: e3 2a 07  bbs7  $2a,$04f6
04ef: 90 09     bcc   $04fa
04f1: e8 ff     mov   a,#$ff
04f3: 5f f6 04  jmp   $04f6

04f6: b0 02     bcs   $04fa
04f8: e8 00     mov   a,#$00
04fa: c4 13     mov   $13,a
04fc: b2 1a     clr5  $1a
04fe: eb fd     mov   y,$fd
0500: f0 fc     beq   $04fe
0502: cb 18     mov   $18,y
0504: e4 fe     mov   a,$fe
0506: f0 17     beq   $051f
0508: 69 37 38  cmp   ($38),($37)
050b: f0 0f     beq   $051c
050d: ab 38     inc   $38
050f: 30 0b     bmi   $051c
0511: 8f 06 19  mov   $19,#$06
0514: 69 37 38  cmp   ($38),($37)
0517: d0 03     bne   $051c
0519: 8f 0a 19  mov   $19,#$0a
051c: 3f 64 0e  call  $0e64
051f: e4 23     mov   a,$23
0521: f0 46     beq   $0569
0523: c4 1f     mov   $1f,a
0525: eb 18     mov   y,$18
0527: e8 3e     mov   a,#$3e
0529: cf        mul   ya
052a: 60        clrc
052b: 84 2b     adc   a,$2b
052d: c4 2b     mov   $2b,a
052f: 90 35     bcc   $0566
0531: cd 00     mov   x,#$00
0533: 8f 01 36  mov   $36,#$01
0536: 13 1f 22  bbc0  $1f,$055b
0539: 3f 37 06  call  $0637
053c: 90 06     bcc   $0544
053e: 3f ec 0f  call  $0fec
0541: 5f 5b 05  jmp   $055b

0544: 3f dc 07  call  $07dc
0547: f4 61     mov   a,$61+x
0549: f0 10     beq   $055b
054b: 68 7f     cmp   a,#$7f
054d: f0 0c     beq   $055b
054f: 9b 61     dec   $61+x
0551: d0 08     bne   $055b
0553: f5 a1 03  mov   a,$03a1+x
0556: f0 03     beq   $055b
0558: 3f ec 0f  call  $0fec
055b: 3d        inc   x
055c: 3d        inc   x
055d: 4b 1f     lsr   $1f
055f: 0b 36     asl   $36
0561: 90 d3     bcc   $0536
0563: 5f 69 05  jmp   $0569

0566: fa 23 20  mov   ($20),($23)
0569: 03 1a 03  bbs0  $1a,$056f
056c: 5f 11 06  jmp   $0611

056f: eb 18     mov   y,$18
0571: e4 13     mov   a,$13
0573: cf        mul   ya
0574: 60        clrc
0575: 84 39     adc   a,$39
0577: c4 39     mov   $39,a
0579: b0 03     bcs   $057e
057b: 5f 0a 06  jmp   $060a

057e: cd 00     mov   x,#$00
0580: fa 23 1f  mov   ($1f),($23)
0583: 8f 01 36  mov   $36,#$01
0586: 03 1f 16  bbs0  $1f,$059f
0589: f4 51     mov   a,$51+x
058b: f0 12     beq   $059f
058d: 3f 37 06  call  $0637
0590: 90 0d     bcc   $059f
0592: 12 e0     clr0  $e0
0594: 3f 0f 0e  call  $0e0f
0597: 90 e5     bcc   $057e
0599: 3f 66 11  call  $1166
059c: 5f 11 06  jmp   $0611

059f: 3d        inc   x
05a0: 3d        inc   x
05a1: 4b 1f     lsr   $1f
05a3: 0b 36     asl   $36
05a5: d0 df     bne   $0586
05a7: e4 3c     mov   a,$3c
05a9: f0 0d     beq   $05b8
05ab: ba 3e     movw  ya,$3e
05ad: 7a 3a     addw  ya,$3a
05af: 6e 3c 02  dbnz  $3c,$05b4
05b2: ba 3c     movw  ya,$3c
05b4: da 3a     movw  $3a,ya
05b6: a2 1a     set5  $1a
05b8: e4 4d     mov   a,$4d
05ba: f0 1b     beq   $05d7
05bc: ba 49     movw  ya,$49
05be: 7a 45     addw  ya,$45
05c0: da 45     movw  $45,ya
05c2: ba 4b     movw  ya,$4b
05c4: 7a 47     addw  ya,$47
05c6: 6e 4d 06  dbnz  $4d,$05cf
05c9: ba 4d     movw  ya,$4d
05cb: da 45     movw  $45,ya
05cd: eb 4f     mov   y,$4f
05cf: da 47     movw  $47,ya
05d1: fa 46 09  mov   ($09),($46)
05d4: fa 48 08  mov   ($08),($48)
05d7: e4 41     mov   a,$41
05d9: f0 12     beq   $05ed
05db: ba 43     movw  ya,$43
05dd: 7a 15     addw  ya,$15
05df: 6e 41 02  dbnz  $41,$05e4
05e2: ba 41     movw  ya,$41
05e4: da 15     movw  $15,ya
05e6: e4 23     mov   a,$23
05e8: 48 ff     eor   a,#$ff
05ea: 0e 03 00  tset1 $0003
05ed: fa 23 1f  mov   ($1f),($23)
05f0: 8f 01 36  mov   $36,#$01
05f3: cd 00     mov   x,#$00
05f5: f4 51     mov   a,$51+x
05f7: f0 06     beq   $05ff
05f9: 03 1f 03  bbs0  $1f,$05ff
05fc: 3f dc 07  call  $07dc
05ff: 3d        inc   x
0600: 3d        inc   x
0601: 4b 1f     lsr   $1f
0603: 0b 36     asl   $36
0605: d0 ee     bne   $05f5
0607: 5f 11 06  jmp   $0611

060a: e4 23     mov   a,$23
060c: 48 ff     eor   a,#$ff
060e: 0e 20 00  tset1 $0020
0611: fa 23 1f  mov   ($1f),($23)
0614: 8f 01 36  mov   $36,#$01
0617: cd 00     mov   x,#$00
0619: 03 1a 05  bbs0  $1a,$0621
061c: 4d        push  x
061d: 3f a3 0e  call  $0ea3
0620: ce        pop   x
0621: 4b 20     lsr   $20
0623: 90 07     bcc   $062c
0625: f4 51     mov   a,$51+x
0627: f0 03     beq   $062c
0629: 3f 5f 09  call  $095f
062c: 3d        inc   x
062d: 3d        inc   x
062e: 4b 1f     lsr   $1f
0630: 0b 36     asl   $36
0632: d0 e5     bne   $0619
0634: 5f 80 04  jmp   $0480

0637: d8 35     mov   $35,x
0639: 9b 70     dec   $70+x
063b: f0 06     beq   $0643
063d: 3f ba 08  call  $08ba
0640: 5f a5 06  jmp   $06a5

0643: 4f 00     pcall $00
0645: d0 1a     bne   $0661
0647: f4 d0     mov   a,$d0+x
0649: f0 14     beq   $065f
064b: 3f 22 0d  call  $0d22
064e: 9b d0     dec   $d0+x
0650: d0 f1     bne   $0643
0652: f5 30 02  mov   a,$0230+x
0655: d4 50     mov   $50+x,a
0657: f5 31 02  mov   a,$0231+x
065a: d4 51     mov   $51+x,a
065c: 5f 43 06  jmp   $0643

065f: 80        setc
0660: 6f        ret

0661: 30 0f     bmi   $0672
0663: d5 00 02  mov   $0200+x,a
0666: 4f 00     pcall $00
0668: 30 08     bmi   $0672
066a: d5 a0 03  mov   $03a0+x,a
066d: 3f fb 12  call  $12fb
0670: 4f 00     pcall $00
0672: 68 ca     cmp   a,#$ca
0674: 90 06     bcc   $067c
0676: 3f 0c 0a  call  $0a0c
0679: 5f 43 06  jmp   $0643

067c: 3f bc 06  call  $06bc
067f: f5 00 02  mov   a,$0200+x
0682: d4 70     mov   $70+x,a
0684: fd        mov   y,a
0685: e7 50     mov   a,($50+x)
0687: 68 ea     cmp   a,#$ea
0689: d0 0b     bne   $0696
068b: 4f 02     pcall $02
068d: e4 36     mov   a,$36
068f: 0e 17 00  tset1 $0017
0692: e8 00     mov   a,#$00
0694: 2f 0d     bra   $06a3
0696: e4 36     mov   a,$36
0698: 4e 17 00  tclr1 $0017
069b: f5 01 02  mov   a,$0201+x
069e: cf        mul   ya
069f: dd        mov   a,y
06a0: d0 01     bne   $06a3
06a2: bc        inc   a
06a3: d4 71     mov   $71+x,a
06a5: f4 a0     mov   a,$a0+x
06a7: d0 11     bne   $06ba
06a9: e7 50     mov   a,($50+x)
06ab: 68 e1     cmp   a,#$e1
06ad: d0 0b     bne   $06ba
06af: bb 50     inc   $50+x
06b1: d0 02     bne   $06b5
06b3: bb 51     inc   $51+x
06b5: 4f 00     pcall $00
06b7: 3f c1 0c  call  $0cc1
06ba: 60        clrc
06bb: 6f        ret

06bc: 09 36 03  or    ($03),($36)
06bf: 68 c8     cmp   a,#$c8
06c1: b0 f8     bcs   $06bb
06c3: 28 7f     and   a,#$7f
06c5: 60        clrc
06c6: 95 11 02  adc   a,$0211+x
06c9: 03 1f 22  bbs0  $1f,$06ee
06cc: 60        clrc
06cd: 84 40     adc   a,$40
06cf: eb 26     mov   y,$26
06d1: f0 1b     beq   $06ee
06d3: 2d        push  a
06d4: e4 36     mov   a,$36
06d6: 24 12     and   a,$12
06d8: ae        pop   a
06d9: d0 13     bne   $06ee
06db: 60        clrc
06dc: 84 26     adc   a,$26
06de: e3 26 09  bbs7  $26,$06ea
06e1: 68 47     cmp   a,#$47
06e3: 90 09     bcc   $06ee
06e5: e8 47     mov   a,#$47
06e7: 5f ee 06  jmp   $06ee

06ea: b0 02     bcs   $06ee
06ec: e8 00     mov   a,#$00
06ee: d5 01 01  mov   $0101+x,a
06f1: f5 21 01  mov   a,$0121+x
06f4: d5 00 01  mov   $0100+x,a
06f7: e4 36     mov   a,$36
06f9: 24 17     and   a,$17
06fb: d0 05     bne   $0702
06fd: f5 41 01  mov   a,$0141+x
0700: d4 d1     mov   $d1+x,a
0702: f5 81 02  mov   a,$0281+x
0705: 5c        lsr   a
0706: e8 00     mov   a,#$00
0708: d4 b0     mov   $b0+x,a
070a: d5 81 00  mov   $0081+x,a
070d: d4 c0     mov   $c0+x,a
070f: d5 30 01  mov   $0130+x,a
0712: 7c        ror   a
0713: d5 70 02  mov   $0270+x,a
0716: f5 50 02  mov   a,$0250+x
0719: d4 a0     mov   $a0+x,a
071b: f0 1e     beq   $073b
071d: f5 51 02  mov   a,$0251+x
0720: d4 a1     mov   $a1+x,a
0722: f5 60 02  mov   a,$0260+x
0725: d0 0a     bne   $0731
0727: f5 01 01  mov   a,$0101+x
072a: 80        setc
072b: b5 61 02  sbc   a,$0261+x
072e: d5 01 01  mov   $0101+x,a
0731: f5 61 02  mov   a,$0261+x
0734: 60        clrc
0735: 95 01 01  adc   a,$0101+x
0738: 3f d4 0c  call  $0cd4
073b: 4f 26     pcall $26
073d: 8d 00     mov   y,#$00
073f: e4 2f     mov   a,$2f
0741: 80        setc
0742: a8 34     sbc   a,#$34
0744: b0 09     bcs   $074f
0746: e4 2f     mov   a,$2f
0748: 80        setc
0749: a8 13     sbc   a,#$13
074b: b0 06     bcs   $0753
074d: dc        dec   y
074e: 1c        asl   a
074f: 7a 2e     addw  ya,$2e
0751: da 2e     movw  $2e,ya
0753: e4 2f     mov   a,$2f
0755: 1c        asl   a
0756: 8d 00     mov   y,#$00
0758: cd 18     mov   x,#$18
075a: 9e        div   ya,x
075b: 5d        mov   x,a
075c: f6 c3 07  mov   a,$07c3+y
075f: c4 e1     mov   $e1,a
0761: f6 c2 07  mov   a,$07c2+y
0764: c4 e0     mov   $e0,a
0766: f6 c5 07  mov   a,$07c5+y
0769: 2d        push  a
076a: f6 c4 07  mov   a,$07c4+y
076d: ee        pop   y
076e: 9a e0     subw  ya,$e0
0770: eb 2e     mov   y,$2e
0772: cf        mul   ya
0773: dd        mov   a,y
0774: 8d 00     mov   y,#$00
0776: 7a e0     addw  ya,$e0
0778: cb e1     mov   $e1,y
077a: 1c        asl   a
077b: 2b e1     rol   $e1
077d: 5f 84 07  jmp   $0784

0780: 4b e1     lsr   $e1
0782: 7c        ror   a
0783: 3d        inc   x
0784: c8 06     cmp   x,#$06
0786: d0 f8     bne   $0780
0788: c4 e0     mov   $e0,a
078a: f8 35     mov   x,$35
078c: f5 20 02  mov   a,$0220+x
078f: eb e1     mov   y,$e1
0791: cf        mul   ya
0792: da e2     movw  $e2,ya
0794: f5 20 02  mov   a,$0220+x
0797: eb e0     mov   y,$e0
0799: cf        mul   ya
079a: 6d        push  y
079b: f5 21 02  mov   a,$0221+x
079e: eb e0     mov   y,$e0
07a0: cf        mul   ya
07a1: 7a e2     addw  ya,$e2
07a3: da e2     movw  $e2,ya
07a5: f5 21 02  mov   a,$0221+x
07a8: eb e1     mov   y,$e1
07aa: cf        mul   ya
07ab: fd        mov   y,a
07ac: ae        pop   a
07ad: 7a e2     addw  ya,$e2
07af: da e2     movw  $e2,ya
07b1: 7d        mov   a,x
07b2: 9f        xcn   a
07b3: 5c        lsr   a
07b4: 08 02     or    a,#$02
07b6: c4 f2     mov   $f2,a
07b8: fa e2 f3  mov   ($f3),($e2)
07bb: bc        inc   a
07bc: c4 f2     mov   $f2,a
07be: fa e3 f3  mov   ($f3),($e3)
07c1: 6f        ret

; pitch table
07c2: dw $085f
07c4: dw $08de
07c6: dw $0965
07c8: dw $09f4
07ca: dw $0a8c
07cc: dw $0b2c
07ce: dw $0bd6
07d0: dw $0c8b
07d2: dw $0d4a
07d4: dw $0e14
07d6: dw $0eea
07d8: dw $0fcd
07da: dw $10be

07dc: f4 90     mov   a,$90+x
07de: f0 25     beq   $0805
07e0: 09 36 03  or    ($03),($36)
07e3: 9b 90     dec   $90+x
07e5: f0 13     beq   $07fa
07e7: f5 a0 02  mov   a,$02a0+x
07ea: 60        clrc
07eb: 95 b0 02  adc   a,$02b0+x
07ee: d5 a0 02  mov   $02a0+x,a
07f1: f5 a1 02  mov   a,$02a1+x
07f4: 95 b1 02  adc   a,$02b1+x
07f7: 5f 02 08  jmp   $0802

07fa: e8 00     mov   a,#$00
07fc: d5 a0 02  mov   $02a0+x,a
07ff: f5 c0 02  mov   a,$02c0+x
0802: d5 a1 02  mov   $02a1+x,a
0805: fb c1     mov   y,$c1+x
0807: f0 25     beq   $082e
0809: f5 40 01  mov   a,$0140+x
080c: de c0 1d  cbne  $c0+x,$082c
080f: 09 36 03  or    ($03),($36)
0812: f5 30 01  mov   a,$0130+x
0815: 10 08     bpl   $081f
0817: fc        inc   y
0818: d0 05     bne   $081f
081a: e8 80     mov   a,#$80
081c: 5f 23 08  jmp   $0823

081f: 60        clrc
0820: 95 31 01  adc   a,$0131+x
0823: d5 30 01  mov   $0130+x,a
0826: 3f df 09  call  $09df
0829: 5f 33 08  jmp   $0833

082c: bb c0     inc   $c0+x
082e: e8 ff     mov   a,#$ff
0830: 3f ea 09  call  $09ea
0833: f4 91     mov   a,$91+x
0835: f0 25     beq   $085c
0837: 09 36 03  or    ($03),($36)
083a: 9b 91     dec   $91+x
083c: f0 13     beq   $0851
083e: 60        clrc
083f: f5 d0 02  mov   a,$02d0+x
0842: 95 e0 02  adc   a,$02e0+x
0845: d5 d0 02  mov   $02d0+x,a
0848: f5 d1 02  mov   a,$02d1+x
084b: 95 e1 02  adc   a,$02e1+x
084e: 5f 59 08  jmp   $0859

0851: e8 00     mov   a,#$00
0853: d5 d0 02  mov   $02d0+x,a
0856: f5 f0 02  mov   a,$02f0+x
0859: d5 d1 02  mov   $02d1+x,a
085c: e4 36     mov   a,$36
085e: 24 03     and   a,$03
0860: f0 42     beq   $08a4
0862: f5 d1 02  mov   a,$02d1+x
0865: fd        mov   y,a
0866: f5 d0 02  mov   a,$02d0+x
0869: da 2e     movw  $2e,ya
086b: f3 1a 06  bbc7  $1a,$0874
086e: 8f 0a 2f  mov   $2f,#$0a
0871: 8f 00 2e  mov   $2e,#$00
0874: 7d        mov   a,x
0875: 9f        xcn   a
0876: 5c        lsr   a
0877: c4 30     mov   $30,a
0879: eb 2f     mov   y,$2f
087b: f6 a6 08  mov   a,$08a6+y
087e: 80        setc
087f: b6 a5 08  sbc   a,$08a5+y
0882: eb 2e     mov   y,$2e
0884: cf        mul   ya
0885: dd        mov   a,y
0886: eb 2f     mov   y,$2f
0888: 60        clrc
0889: 96 a5 08  adc   a,$08a5+y
088c: fd        mov   y,a
088d: f5 c1 02  mov   a,$02c1+x
0890: cf        mul   ya
0891: e4 30     mov   a,$30
0893: c4 f2     mov   $f2,a
0895: cb f3     mov   $f3,y
0897: 8d 14     mov   y,#$14
0899: e8 00     mov   a,#$00
089b: 9a 2e     subw  ya,$2e
089d: da 2e     movw  $2e,ya
089f: ab 30     inc   $30
08a1: 33 30 d5  bbc1  $30,$0879
08a4: 6f        ret

; pan table
08a5: db $00,$01,$03,$07,$0d,$15,$1e,$29
08ad: db $34,$42,$51,$5e,$67,$6e,$73,$77
08b5: db $7a,$7c,$7d,$7e,$7f

08ba: f4 71     mov   a,$71+x
08bc: f0 0e     beq   $08cc
08be: 9b 71     dec   $71+x
08c0: d0 0a     bne   $08cc
08c2: 8f 5c f2  mov   $f2,#$5c
08c5: fa 36 f3  mov   ($f3),($36)
08c8: e8 00     mov   a,#$00
08ca: d4 d1     mov   $d1+x,a
08cc: f2 31     clr7  $31
08ce: f4 a0     mov   a,$a0+x
08d0: f0 2e     beq   $0900
08d2: f4 a1     mov   a,$a1+x
08d4: f0 05     beq   $08db
08d6: 9b a1     dec   $a1+x
08d8: 5f 00 09  jmp   $0900

08db: e2 31     set7  $31
08dd: 9b a0     dec   $a0+x
08df: f0 13     beq   $08f4
08e1: f5 00 01  mov   a,$0100+x
08e4: 60        clrc
08e5: 95 10 01  adc   a,$0110+x
08e8: d5 00 01  mov   $0100+x,a
08eb: f5 01 01  mov   a,$0101+x
08ee: 95 11 01  adc   a,$0111+x
08f1: 5f fd 08  jmp   $08fd

08f4: f5 21 01  mov   a,$0121+x
08f7: d5 00 01  mov   $0100+x,a
08fa: f5 20 01  mov   a,$0120+x
08fd: d5 01 01  mov   $0101+x,a
0900: 4f 26     pcall $26
0902: f5 70 03  mov   a,$0370+x
0905: f0 4e     beq   $0955
0907: f5 80 02  mov   a,$0280+x
090a: de b0 46  cbne  $b0+x,$0953
090d: f5 81 00  mov   a,$0081+x
0910: 75 81 02  cmp   a,$0281+x
0913: f0 0f     beq   $0924
0915: bb 81     inc   $81+x
0917: fd        mov   y,a
0918: f0 03     beq   $091d
091a: f5 70 03  mov   a,$0370+x
091d: 60        clrc
091e: 95 90 02  adc   a,$0290+x
0921: 5f 27 09  jmp   $0927

0924: f5 91 02  mov   a,$0291+x
0927: d5 70 03  mov   $0370+x,a
092a: f5 70 02  mov   a,$0270+x
092d: 60        clrc
092e: 95 71 02  adc   a,$0271+x
0931: d5 70 02  mov   $0270+x,a
0934: c4 30     mov   $30,a
0936: 1c        asl   a
0937: 1c        asl   a
0938: 90 02     bcc   $093c
093a: 48 ff     eor   a,#$ff
093c: fd        mov   y,a
093d: f5 70 03  mov   a,$0370+x
0940: 68 f1     cmp   a,#$f1
0942: 90 06     bcc   $094a
0944: 28 0f     and   a,#$0f
0946: cf        mul   ya
0947: 5f 4e 09  jmp   $094e

094a: cf        mul   ya
094b: dd        mov   a,y
094c: 8d 00     mov   y,#$00
094e: 4f 50     pcall $50
0950: 5f 3d 07  jmp   $073d

0953: bb b0     inc   $b0+x
0955: e3 31 f8  bbs7  $31,$0950
0958: e4 36     mov   a,$36
095a: 24 2c     and   a,$2c
095c: d0 f2     bne   $0950
095e: 6f        ret

095f: d8 35     mov   $35,x
0961: f2 31     clr7  $31
0963: f4 c1     mov   a,$c1+x
0965: f0 09     beq   $0970
0967: f5 40 01  mov   a,$0140+x
096a: de c0 03  cbne  $c0+x,$0970
096d: 3f cd 09  call  $09cd
0970: f5 d1 02  mov   a,$02d1+x
0973: fd        mov   y,a
0974: f5 d0 02  mov   a,$02d0+x
0977: da 2e     movw  $2e,ya
0979: f4 91     mov   a,$91+x
097b: f0 0c     beq   $0989
097d: f5 e1 02  mov   a,$02e1+x
0980: fd        mov   y,a
0981: f5 e0 02  mov   a,$02e0+x
0984: 4f 31     pcall $31
0986: 5f 97 09  jmp   $0997

0989: e3 31 0b  bbs7  $31,$0997
098c: e4 36     mov   a,$36
098e: 24 03     and   a,$03
0990: f0 08     beq   $099a
0992: e8 ff     mov   a,#$ff
0994: 3f ea 09  call  $09ea
0997: 3f 6b 08  call  $086b
099a: f2 31     clr7  $31
099c: 4f 26     pcall $26
099e: f4 a0     mov   a,$a0+x
09a0: f0 0d     beq   $09af
09a2: f4 a1     mov   a,$a1+x
09a4: d0 09     bne   $09af
09a6: f5 11 01  mov   a,$0111+x
09a9: fd        mov   y,a
09aa: f5 10 01  mov   a,$0110+x
09ad: 4f 31     pcall $31
09af: f5 70 03  mov   a,$0370+x
09b2: f0 a1     beq   $0955
09b4: f5 80 02  mov   a,$0280+x
09b7: de b0 9b  cbne  $b0+x,$0955
09ba: eb 39     mov   y,$39
09bc: 13 1f 02  bbc0  $1f,$09c1
09bf: eb 2b     mov   y,$2b
09c1: f5 71 02  mov   a,$0271+x
09c4: cf        mul   ya
09c5: dd        mov   a,y
09c6: 60        clrc
09c7: 95 70 02  adc   a,$0270+x
09ca: 5f 34 09  jmp   $0934

09cd: e2 31     set7  $31
09cf: f5 31 01  mov   a,$0131+x
09d2: eb 39     mov   y,$39
09d4: 13 1f 02  bbc0  $1f,$09d9
09d7: eb 2b     mov   y,$2b
09d9: cf        mul   ya
09da: dd        mov   a,y
09db: 60        clrc
09dc: 95 30 01  adc   a,$0130+x
09df: 1c        asl   a
09e0: 90 02     bcc   $09e4
09e2: 48 ff     eor   a,#$ff
09e4: fb c1     mov   y,$c1+x
09e6: cf        mul   ya
09e7: dd        mov   a,y
09e8: 48 ff     eor   a,#$ff
09ea: 03 1f 09  bbs0  $1f,$09f6
09ed: eb 1b     mov   y,$1b
09ef: cf        mul   ya
09f0: e4 16     mov   a,$16
09f2: cf        mul   ya
09f3: 5f fd 09  jmp   $09fd

09f6: eb 1c     mov   y,$1c
09f8: cf        mul   ya
09f9: f5 71 03  mov   a,$0371+x
09fc: cf        mul   ya
09fd: f5 10 02  mov   a,$0210+x
0a00: cf        mul   ya
0a01: f5 a1 02  mov   a,$02a1+x
0a04: cf        mul   ya
0a05: dd        mov   a,y
0a06: cf        mul   ya
0a07: dd        mov   a,y
0a08: d5 c1 02  mov   $02c1+x,a
0a0b: 6f        ret

0a0c: 13 1f 12  bbc0  $1f,$0a21
0a0f: 68 d6     cmp   a,#$d6
0a11: b0 0e     bcs   $0a21
0a13: fd        mov   y,a
0a14: f6 ba 09  mov   a,$09ba+y
0a17: 60        clrc
0a18: 94 50     adc   a,$50+x
0a1a: d4 50     mov   $50+x,a
0a1c: 90 02     bcc   $0a20
0a1e: bb 51     inc   $51+x
0a20: 6f        ret

; dispatch vcmd in A (??-ff)
0a21: 1c        asl   a
0a22: fd        mov   y,a
0a23: f6 a3 09  mov   a,$09a3+y
0a26: 2d        push  a
0a27: f6 a2 09  mov   a,$09a2+y
0a2a: 2d        push  a
0a2b: dd        mov   a,y
0a2c: 5c        lsr   a
0a2d: fd        mov   y,a
0a2e: f6 3a 0a  mov   a,$0a3a+y
0a31: f0 ed     beq   $0a20
0a33: 5f 00 ff  jmp   $ff00

; vcmd dispatch list
0a36: dw $0aab ; ca - global transpose
0a38: dw $0aae ; cb - tempo
0a3a: dw $0ab5 ; cc - tempo fade
0a3c: dw $0ac7 ; cd - master volume
0a3e: dw $0acc ; ce - master volume fade
0a40: dw $0adc ; cf - echo vbits/volume
0a42: dw $0afe ; d0 - set echo params
0a44: dw $0b1f ; d1 - echo volume fade
0a46: dw $0b49 ; d2 - disable echo
0a48: dw $0b58 ; d3
0a4a: dw $0b5b ; d4
0a4c: dw $0b5e ; d5
0a4e: dw $0bdd ; d6 - per-voice transpose
0a50: dw $0be1 ; d7 - pan
0a52: dw $0bec ; d8 - pan fade
0a54: dw $0c03 ; d9 - set instrument
0a56: dw $0c52 ; da - vibrato on
0a58: dw $0c5c ; db - vibrato off
0a5a: dw $0c68 ; dc - vibrato fade
0a5c: dw $0c79 ; dd - tremolo on
0a5e: dw $0c83 ; de - tremolo off
0a60: dw $0c86 ; df - volume
0a62: dw $0caa ; e0 - volume fade
0a64: dw $0cc1 ; e1 - pitch slide
0a66: dw $0ceb ; e2 - pitch envelope (release)
0a68: dw $0cf0 ; e3 - pitch envelope (attack)
0a6a: dw $0d04 ; e4 - pitch envelope off
0a6c: dw $0d08 ; e5 - tuning
0a6e: dw $0d0c ; e6 - call subroutine
0a70: dw $0d2d ; e7 - nop
0a72: dw $0d2e ; e8
0a74: dw $0d32 ; e9 - add to volume
0a76: dw $0d4f ; ea - nop
0a78: dw $0d50 ; eb
0a7a: dw $0d55 ; ec
0a7c: dw $0d72 ; ed
0a7e: dw $0d9c ; ee
0a80: dw $0dc4 ; ef
0a82: dw $0dca ; f0

; vcmd lengths
0a83: db $01,$01,$02,$01,$02,$03,$03,$03 ; ca-d1
0a8c: db $00,$01,$01,$00,$01,$01,$02,$01 ; d2-d9
0a93: db $03,$00,$01,$03,$00,$01,$02,$03 ; da-e1
0a9c: db $03,$03,$00,$01,$03,$01,$01,$01 ; e2-e9
0aa3: db $00,$01,$01,$00,$00,$00,$00	 ; ea-f0

; vcmd ca - global transpose
0aab: c4 40     mov   $40,a
0aad: 6f        ret

; vcmd cb - tempo
0aae: e8 00     mov   a,#$00
0ab0: da 3a     movw  $3a,ya
0ab2: a2 1a     set5  $1a
0ab4: 6f        ret

; vcmd cc - tempo fade
0ab5: c4 3c     mov   $3c,a
0ab7: 4f 00     pcall $00
0ab9: c4 3d     mov   $3d,a
0abb: 80        setc
0abc: a4 3b     sbc   a,$3b
0abe: f8 3c     mov   x,$3c
0ac0: 4f 0a     pcall $0a
0ac2: da 3e     movw  $3e,ya
0ac4: a2 1a     set5  $1a
0ac6: 6f        ret

; vcmd cd - master volume
0ac7: e8 00     mov   a,#$00
0ac9: da 15     movw  $15,ya
0acb: 6f        ret

; vcmd ce - master volume fade
0acc: c4 41     mov   $41,a
0ace: 4f 00     pcall $00
0ad0: c4 42     mov   $42,a
0ad2: 80        setc
0ad3: a4 16     sbc   a,$16
0ad5: f8 41     mov   x,$41
0ad7: 4f 0a     pcall $0a
0ad9: da 43     movw  $43,ya
0adb: 6f        ret

; vcmd cf - echo vbits/volume
0adc: c4 24     mov   $24,a
0ade: c2 1a     set6  $1a
0ae0: 4f 00     pcall $00
0ae2: e8 00     mov   a,#$00
0ae4: da 45     movw  $45,ya
0ae6: 4f 00     pcall $00
0ae8: e8 00     mov   a,#$00
0aea: da 47     movw  $47,ya
0aec: b2 05     clr5  $05
0aee: f3 1a 06  bbc7  $1a,$0af7
0af1: e4 46     mov   a,$46
0af3: c4 46     mov   $46,a
0af5: c4 48     mov   $48,a
0af7: fa 46 09  mov   ($09),($46)
0afa: fa 48 08  mov   ($08),($48)
0afd: 6f        ret

; vcmd d0 - set echo params
0afe: 3f d2 0d  call  $0dd2
0b01: 4f 00     pcall $00
0b03: c4 07     mov   $07,a
0b05: 4f 00     pcall $00
0b07: 8d 08     mov   y,#$08
0b09: cf        mul   ya
0b0a: 5d        mov   x,a
0b0b: 8d 0f     mov   y,#$0f
0b0d: 60        clrc
0b0e: f5 c5 ff  mov   a,$ffc5+x
0b11: cb f2     mov   $f2,y
0b13: c4 f3     mov   $f3,a
0b15: 3d        inc   x
0b16: dd        mov   a,y
0b17: 88 10     adc   a,#$10
0b19: fd        mov   y,a
0b1a: 10 f2     bpl   $0b0e
0b1c: f8 35     mov   x,$35
0b1e: 6f        ret

; vcmd d1 - echo volume fade
0b1f: c4 4d     mov   $4d,a
0b21: 4f 00     pcall $00
0b23: c4 4e     mov   $4e,a
0b25: 4f 00     pcall $00
0b27: f3 1a 02  bbc7  $1a,$0b2c
0b2a: c4 4e     mov   $4e,a
0b2c: c4 4f     mov   $4f,a
0b2e: 80        setc
0b2f: a4 48     sbc   a,$48
0b31: f8 4d     mov   x,$4d
0b33: 4f 0a     pcall $0a
0b35: da 4b     movw  $4b,ya
0b37: e4 4e     mov   a,$4e
0b39: 80        setc
0b3a: a4 46     sbc   a,$46
0b3c: f8 4d     mov   x,$4d
0b3e: 4f 0a     pcall $0a
0b40: da 49     movw  $49,ya
0b42: fa 46 09  mov   ($09),($46)
0b45: fa 48 08  mov   ($08),($48)
0b48: 6f        ret

; vcmd d2 - disable echo
0b49: c4 4d     mov   $4d,a
0b4b: da 45     movw  $45,ya
0b4d: da 47     movw  $47,ya
0b4f: fa 46 09  mov   ($09),($46)
0b52: fa 48 08  mov   ($08),($48)
0b55: a2 05     set5  $05
0b57: 6f        ret

; vcmd d3
0b58: c4 12     mov   $12,a
0b5a: 6f        ret

; vcmd d4
0b5b: c4 11     mov   $11,a
0b5d: 6f        ret

; vcmd d5
0b5e: 7d        mov   a,x
0b5f: d0 fc     bne   $0b5d
0b61: e4 10     mov   a,$10
0b63: f0 f8     beq   $0b5d
0b65: c4 e0     mov   $e0,a
0b67: fa 23 e1  mov   ($e1),($23)
0b6a: cd 0e     mov   x,#$0e
0b6c: 0b e0     asl   $e0
0b6e: 90 66     bcc   $0bd6
0b70: f5 91 03  mov   a,$0391+x
0b73: f0 5b     beq   $0bd0
0b75: c4 e3     mov   $e3,a
0b77: f5 90 03  mov   a,$0390+x
0b7a: c4 e2     mov   $e2,a
0b7c: 8d 00     mov   y,#$00
0b7e: f7 e2     mov   a,($e2)+y
0b80: 30 0e     bmi   $0b90
0b82: d5 81 03  mov   $0381+x,a
0b85: fc        inc   y
0b86: f7 e2     mov   a,($e2)+y
0b88: 30 06     bmi   $0b90
0b8a: d5 a0 03  mov   $03a0+x,a
0b8d: fc        inc   y
0b8e: f7 e2     mov   a,($e2)+y
0b90: fc        inc   y
0b91: 68 ca     cmp   a,#$ca
0b93: 90 e9     bcc   $0b7e
0b95: 68 d5     cmp   a,#$d5
0b97: f0 0d     beq   $0ba6
0b99: d8 e4     mov   $e4,x
0b9b: 5d        mov   x,a
0b9c: dd        mov   a,y
0b9d: 60        clrc
0b9e: 95 ba 09  adc   a,$09ba+x
0ba1: fd        mov   y,a
0ba2: f8 e4     mov   x,$e4
0ba4: 2f d8     bra   $0b7e
0ba6: dd        mov   a,y
0ba7: 8d 00     mov   y,#$00
0ba9: 7a e2     addw  ya,$e2
0bab: f3 e1 09  bbc7  $e1,$0bb7
0bae: d5 90 03  mov   $0390+x,a
0bb1: dd        mov   a,y
0bb2: d5 91 03  mov   $0391+x,a
0bb5: 2f 1f     bra   $0bd6
0bb7: d4 50     mov   $50+x,a
0bb9: db 51     mov   $51+x,y
0bbb: e8 00     mov   a,#$00
0bbd: d5 91 03  mov   $0391+x,a
0bc0: bc        inc   a
0bc1: d5 70 00  mov   $0070+x,a
0bc4: f5 81 03  mov   a,$0381+x
0bc7: d5 00 02  mov   $0200+x,a
0bca: f5 a0 03  mov   a,$03a0+x
0bcd: 3f fb 12  call  $12fb
0bd0: f5 06 10  mov   a,$1006+x
0bd3: 4e 10 00  tclr1 $0010
0bd6: 0b e1     asl   $e1
0bd8: 1d        dec   x
0bd9: 1d        dec   x
0bda: d0 90     bne   $0b6c
0bdc: 6f        ret

; vcmd d6 - per-voice transpose
0bdd: d5 11 02  mov   $0211+x,a
0be0: 6f        ret

; vcmd d7 - pan
0be1: 28 1f     and   a,#$1f
0be3: d5 d1 02  mov   $02d1+x,a
0be6: e8 00     mov   a,#$00
0be8: d5 d0 02  mov   $02d0+x,a
0beb: 6f        ret

; vcmd d8 - pan fade
0bec: d4 91     mov   $91+x,a
0bee: 2d        push  a
0bef: 4f 00     pcall $00
0bf1: d5 f0 02  mov   $02f0+x,a
0bf4: 80        setc
0bf5: b5 d1 02  sbc   a,$02d1+x
0bf8: ce        pop   x
0bf9: 4f 0a     pcall $0a
0bfb: d5 e0 02  mov   $02e0+x,a
0bfe: dd        mov   a,y
0bff: d5 e1 02  mov   $02e1+x,a
0c02: 6f        ret

; vcmd d9 - set instrument
0c03: 8d 06     mov   y,#$06
0c05: cf        mul   ya
0c06: da e0     movw  $e0,ya
0c08: 60        clrc
0c09: 03 1f 09  bbs0  $1f,$0c15
0c0c: 98 00 e0  adc   $e0,#$00
0c0f: 98 19 e1  adc   $e1,#$19
0c12: 5f 1b 0c  jmp   $0c1b

0c15: 98 80 e0  adc   $e0,#$80
0c18: 98 19 e1  adc   $e1,#$19
0c1b: 7d        mov   a,x
0c1c: 9f        xcn   a
0c1d: 5c        lsr   a
0c1e: 08 04     or    a,#$04
0c20: 5d        mov   x,a
0c21: e4 36     mov   a,$36
0c23: 4e 02 00  tclr1 $0002
0c26: 8d 00     mov   y,#$00
0c28: f7 e0     mov   a,($e0)+y
0c2a: 10 0c     bpl   $0c38
0c2c: 28 1f     and   a,#$1f
0c2e: 38 20 05  and   $05,#$20
0c31: 0e 05 00  tset1 $0005
0c34: 09 36 02  or    ($02),($36)
0c37: dd        mov   a,y
0c38: d8 f2     mov   $f2,x
0c3a: c4 f3     mov   $f3,a
0c3c: 3d        inc   x
0c3d: fc        inc   y
0c3e: f7 e0     mov   a,($e0)+y
0c40: ad 04     cmp   y,#$04
0c42: d0 f4     bne   $0c38
0c44: f8 35     mov   x,$35
0c46: f7 e0     mov   a,($e0)+y
0c48: d5 21 02  mov   $0221+x,a
0c4b: fc        inc   y
0c4c: f7 e0     mov   a,($e0)+y
0c4e: d5 20 02  mov   $0220+x,a
0c51: 6f        ret

; vcmd da - vibrato on
0c52: d5 80 02  mov   $0280+x,a
0c55: 4f 00     pcall $00
0c57: d5 71 02  mov   $0271+x,a
0c5a: 4f 00     pcall $00
; vcmd db - vibrato off
0c5c: d5 70 03  mov   $0370+x,a
0c5f: d5 91 02  mov   $0291+x,a
0c62: e8 00     mov   a,#$00
0c64: d5 81 02  mov   $0281+x,a
0c67: 6f        ret

; vcmd dc - vibrato fade
0c68: d5 81 02  mov   $0281+x,a
0c6b: 2d        push  a
0c6c: 8d 00     mov   y,#$00
0c6e: f5 70 03  mov   a,$0370+x
0c71: ce        pop   x
0c72: 9e        div   ya,x
0c73: d5 90 02  mov   $0290+x,a
0c76: f8 35     mov   x,$35
0c78: 6f        ret

; vcmd dd - tremolo on
0c79: d5 40 01  mov   $0140+x,a
0c7c: 4f 00     pcall $00
0c7e: d5 31 01  mov   $0131+x,a
0c81: 4f 00     pcall $00
; vcmd de - tremolo off
0c83: d4 c1     mov   $c1+x,a
0c85: 6f        ret

; vcmd df - volume
0c86: f5 80 03  mov   a,$0380+x
0c89: c4 e0     mov   $e0,a
0c8b: dd        mov   a,y
0c8c: 60        clrc
0c8d: 95 80 03  adc   a,$0380+x
0c90: e3 e0 07  bbs7  $e0,$0c9a
0c93: 90 0c     bcc   $0ca1
0c95: e8 ff     mov   a,#$ff
0c97: 5f a1 0c  jmp   $0ca1

0c9a: 95 80 03  adc   a,$0380+x
0c9d: b0 02     bcs   $0ca1
0c9f: e8 00     mov   a,#$00
0ca1: d5 a1 02  mov   $02a1+x,a
0ca4: e8 00     mov   a,#$00
0ca6: d5 a0 02  mov   $02a0+x,a
0ca9: 6f        ret

; vcmd e0 - volume fade
0caa: d4 90     mov   $90+x,a
0cac: 2d        push  a
0cad: 4f 00     pcall $00
0caf: d5 c0 02  mov   $02c0+x,a
0cb2: 80        setc
0cb3: b5 a1 02  sbc   a,$02a1+x
0cb6: ce        pop   x
0cb7: 4f 0a     pcall $0a
0cb9: d5 b0 02  mov   $02b0+x,a
0cbc: dd        mov   a,y
0cbd: d5 b1 02  mov   $02b1+x,a
0cc0: 6f        ret

; vcmd e1 - pitch slide
0cc1: d4 a1     mov   $a1+x,a
0cc3: 4f 00     pcall $00
0cc5: d4 a0     mov   $a0+x,a
0cc7: 4f 00     pcall $00
0cc9: aa 1f 00  mov1  c,$001f,0
0ccc: b0 02     bcs   $0cd0
0cce: 84 40     adc   a,$40
0cd0: 60        clrc
0cd1: 95 11 02  adc   a,$0211+x
0cd4: 28 7f     and   a,#$7f
0cd6: d5 20 01  mov   $0120+x,a
0cd9: 80        setc
0cda: b5 01 01  sbc   a,$0101+x
0cdd: fb a0     mov   y,$a0+x
0cdf: 6d        push  y
0ce0: ce        pop   x
0ce1: 4f 0a     pcall $0a
0ce3: d5 10 01  mov   $0110+x,a
0ce6: dd        mov   a,y
0ce7: d5 11 01  mov   $0111+x,a
0cea: 6f        ret

; vcmd e2 - pitch envelope (release)
0ceb: e8 01     mov   a,#$01
0ced: 5f f2 0c  jmp   $0cf2

; vcmd e3 - pitch envelope (attack)
0cf0: e8 00     mov   a,#$00
0cf2: d5 60 02  mov   $0260+x,a
0cf5: dd        mov   a,y
0cf6: d5 51 02  mov   $0251+x,a
0cf9: 4f 00     pcall $00
0cfb: d5 50 02  mov   $0250+x,a
0cfe: 4f 00     pcall $00
0d00: d5 61 02  mov   $0261+x,a
0d03: 6f        ret

; vcmd e4 - pitch envelope off
0d04: d5 50 02  mov   $0250+x,a
0d07: 6f        ret

; vcmd e5 - tuning
0d08: d5 21 01  mov   $0121+x,a
0d0b: 6f        ret

; vcmd e6 - call subroutine
0d0c: d5 60 03  mov   $0360+x,a
0d0f: 4f 00     pcall $00
0d11: d5 61 03  mov   $0361+x,a
0d14: 4f 00     pcall $00
0d16: d4 d0     mov   $d0+x,a
0d18: f4 50     mov   a,$50+x
0d1a: d5 30 02  mov   $0230+x,a
0d1d: f4 51     mov   a,$51+x
0d1f: d5 31 02  mov   $0231+x,a
0d22: f5 60 03  mov   a,$0360+x
0d25: d4 50     mov   $50+x,a
0d27: f5 61 03  mov   a,$0361+x
0d2a: d4 51     mov   $51+x,a
0d2c: 6f        ret

; vcmd e7 - nop
0d2d: 6f        ret

; vcmd e8
0d2e: d5 80 03  mov   $0380+x,a
0d31: 6f        ret

; vcmd e9 - add to volume
0d32: 60        clrc
0d33: 30 0a     bmi   $0d3f
0d35: 95 a1 02  adc   a,$02a1+x
0d38: 90 0c     bcc   $0d46
0d3a: e8 ff     mov   a,#$ff
0d3c: 5f 46 0d  jmp   $0d46

0d3f: 95 a1 02  adc   a,$02a1+x
0d42: b0 02     bcs   $0d46
0d44: e8 00     mov   a,#$00
0d46: d5 a1 02  mov   $02a1+x,a
0d49: e8 00     mov   a,#$00
0d4b: d5 a0 02  mov   $02a0+x,a
0d4e: 6f        ret

; vcmd ea - nop
0d4f: 6f        ret

; vcmd eb
0d50: bc        inc   a
0d51: d5 41 01  mov   $0141+x,a
0d54: 6f        ret

; vcmd ec
0d55: 2d        push  a
0d56: f4 80     mov   a,$80+x
0d58: fd        mov   y,a
0d59: 60        clrc
0d5a: 88 10     adc   a,#$10
0d5c: d4 80     mov   $80+x,a
0d5e: dd        mov   a,y
0d5f: 5c        lsr   a
0d60: 5d        mov   x,a
0d61: ae        pop   a
0d62: d5 00 03  mov   $0300+x,a
0d65: f8 35     mov   x,$35
0d67: f4 50     mov   a,$50+x
0d69: d6 20 03  mov   $0320+y,a
0d6c: f4 51     mov   a,$51+x
0d6e: d6 21 03  mov   $0321+y,a
0d71: 6f        ret

; vcmd ed
0d72: f4 80     mov   a,$80+x
0d74: 80        setc
0d75: a8 10     sbc   a,#$10
0d77: 2d        push  a
0d78: 5c        lsr   a
0d79: fd        mov   y,a
0d7a: f5 a1 03  mov   a,$03a1+x
0d7d: d0 11     bne   $0d90
0d7f: f6 00 03  mov   a,$0300+y
0d82: 68 ff     cmp   a,#$ff
0d84: f0 0a     beq   $0d90
0d86: 9c        dec   a
0d87: d6 00 03  mov   $0300+y,a
0d8a: d0 04     bne   $0d90
0d8c: ae        pop   a
0d8d: d4 80     mov   $80+x,a
0d8f: 6f        ret

0d90: ee        pop   y
0d91: f6 20 03  mov   a,$0320+y
0d94: d4 50     mov   $50+x,a
0d96: f6 21 03  mov   a,$0321+y
0d99: d4 51     mov   $51+x,a
0d9b: 6f        ret

; vcmd ee
0d9c: f4 80     mov   a,$80+x
0d9e: 80        setc
0d9f: a8 10     sbc   a,#$10
0da1: 2d        push  a
0da2: 5c        lsr   a
0da3: fd        mov   y,a
0da4: f6 00 03  mov   a,$0300+y
0da7: 9c        dec   a
0da8: ae        pop   a
0da9: f0 0c     beq   $0db7
0dab: f4 50     mov   a,$50+x
0dad: 60        clrc
0dae: 88 02     adc   a,#$02
0db0: d4 50     mov   $50+x,a
0db2: 90 02     bcc   $0db6
0db4: bb 51     inc   $51+x
0db6: 6f        ret

0db7: d4 80     mov   $80+x,a
0db9: 4f 00     pcall $00
0dbb: 2d        push  a
0dbc: 4f 00     pcall $00
0dbe: d4 51     mov   $51+x,a
0dc0: ae        pop   a
0dc1: d4 50     mov   $50+x,a
0dc3: 6f        ret

; vcmd ef
0dc4: 09 36 21  or    ($21),($36)
0dc7: c2 1a     set6  $1a
0dc9: 6f        ret

; vcmd f0
0dca: e4 36     mov   a,$36
0dcc: 4e 21 00  tclr1 $0021
0dcf: c2 1a     set6  $1a
0dd1: 6f        ret

0dd2: c4 37     mov   $37,a
0dd4: 8f 7d f2  mov   $f2,#$7d
0dd7: e4 f3     mov   a,$f3
0dd9: 64 37     cmp   a,$37
0ddb: f0 2b     beq   $0e08
0ddd: 28 0f     and   a,#$0f
0ddf: 48 ff     eor   a,#$ff
0de1: f3 38 03  bbc7  $38,$0de7
0de4: 60        clrc
0de5: 84 38     adc   a,$38
0de7: c4 38     mov   $38,a
0de9: 8f 05 19  mov   $19,#$05
0dec: 8d 04     mov   y,#$04
0dee: f6 10 13  mov   a,$1310+y
0df1: c4 f2     mov   $f2,a
0df3: e8 00     mov   a,#$00
0df5: c4 f3     mov   $f3,a
0df7: fe f5     dbnz  y,$0dee
0df9: e4 05     mov   a,$05
0dfb: 08 20     or    a,#$20
0dfd: 8f 6c f2  mov   $f2,#$6c
0e00: c4 f3     mov   $f3,a
0e02: 8f 7d f2  mov   $f2,#$7d
0e05: fa 37 f3  mov   ($f3),($37)
0e08: 8f 6d f2  mov   $f2,#$6d
0e0b: fa 1d f3  mov   ($f3),($1d)
0e0e: 6f        ret

0e0f: 4f 58     pcall $58
0e11: d0 1e     bne   $0e31
0e13: fd        mov   y,a
0e14: d0 05     bne   $0e1b
0e16: 29 23 10  and   ($10),($23)
0e19: 80        setc
0e1a: 6f        ret

0e1b: 8b 14     dec   $14
0e1d: 10 02     bpl   $0e21
0e1f: c4 14     mov   $14,a
0e21: f0 07     beq   $0e2a
0e23: 4f 58     pcall $58
0e25: da 32     movw  $32,ya
0e27: 5f 0f 0e  jmp   $0e0f

0e2a: 3a 32     incw  $32
0e2c: 3a 32     incw  $32
0e2e: 5f 0f 0e  jmp   $0e0f

0e31: da e2     movw  $e2,ya
0e33: fa 23 1f  mov   ($1f),($23)
0e36: 8d 0f     mov   y,#$0f
0e38: f7 e2     mov   a,($e2)+y
0e3a: dc        dec   y
0e3b: 0b 1f     asl   $1f
0e3d: b0 15     bcs   $0e54
0e3f: d6 51 00  mov   $0051+y,a
0e42: f7 e2     mov   a,($e2)+y
0e44: d6 50 00  mov   $0050+y,a
0e47: dd        mov   a,y
0e48: 5d        mov   x,a
0e49: aa e0 00  mov1  c,$00e0,0
0e4c: 4f 66     pcall $66
0e4e: bc        inc   a
0e4f: d6 70 00  mov   $0070+y,a
0e52: 2f 08     bra   $0e5c
0e54: d6 91 03  mov   $0391+y,a
0e57: f7 e2     mov   a,($e2)+y
0e59: d6 90 03  mov   $0390+y,a
0e5c: dc        dec   y
0e5d: 10 d9     bpl   $0e38
0e5f: 29 23 10  and   ($10),($23)
0e62: 60        clrc
0e63: 6f        ret

0e64: 13 1a 3b  bbc0  $1a,$0ea2
0e67: e4 28     mov   a,$28
0e69: f0 37     beq   $0ea2
0e6b: 6e 29 34  dbnz  $29,$0ea2
0e6e: fa 28 29  mov   ($29),($28)
0e71: f2 29     clr7  $29
0e73: e4 23     mov   a,$23
0e75: 48 ff     eor   a,#$ff
0e77: 0e 03 00  tset1 $0003
0e7a: aa 28 e0  mov1  c,$0028,7
0e7d: b0 0e     bcs   $0e8d
0e7f: e8 20     mov   a,#$20
0e81: 84 1b     adc   a,$1b
0e83: c4 1b     mov   $1b,a
0e85: b0 13     bcs   $0e9a
0e87: 69 27 1b  cmp   ($1b),($27)
0e8a: b0 0e     bcs   $0e9a
0e8c: 6f        ret

0e8d: e8 20     mov   a,#$20
0e8f: c4 e2     mov   $e2,a
0e91: a9 e2 1b  sbc   ($1b),($e2)
0e94: 90 01     bcc   $0e97
0e96: 6f        ret

0e97: 3f 66 11  call  $1166
0e9a: 32 1a     clr1  $1a
0e9c: fa 27 1b  mov   ($1b),($27)
0e9f: 8f 00 28  mov   $28,#$00
0ea2: 6f        ret

0ea3: e4 f4     mov   a,$f4
0ea5: 64 f4     cmp   a,$f4
0ea7: d0 fa     bne   $0ea3
0ea9: 64 1e     cmp   a,$1e
0eab: f0 1b     beq   $0ec8
0ead: c4 1e     mov   $1e,a
0eaf: e4 f5     mov   a,$f5
0eb1: 64 f5     cmp   a,$f5
0eb3: d0 fa     bne   $0eaf
0eb5: fd        mov   y,a
0eb6: fa 1e f4  mov   ($f4),($1e)
0eb9: e4 1e     mov   a,$1e
0ebb: 1c        asl   a
0ebc: 68 e0     cmp   a,#$e0
0ebe: b0 59     bcs   $0f19
0ec0: 68 50     cmp   a,#$50
0ec2: b0 04     bcs   $0ec8
0ec4: 5d        mov   x,a
0ec5: 1f c9 0e  jmp   ($0ec9+x)

0ec8: 6f        ret

0ec9: dw $0ec8
0ecb: dw $1204
0ecd: dw $11fa
0ecf: dw $11f2
0ed1: dw $0ec8
0ed3: dw $0ec8
0ed5: dw $0ec8
0ed7: dw $1641
0ed9: dw $1490
0edb: dw $14a5
0edd: dw $14e4
0edf: dw $14f6
0ee1: dw $1600
0ee3: dw $162c
0ee5: dw $11ec
0ee7: dw $11ef
0ee9: dw $1166
0eeb: dw $11a5
0eed: dw $0ec8
0eef: dw $11b6
0ef1: dw $11cd
0ef3: dw $11e4
0ef5: dw $11e9
0ef7: dw $1128
0ef9: dw $1016
0efb: dw $0ec8
0efd: dw $0ec8
0eff: dw $0ec8
0f01: dw $0ec8
0f03: dw $0ec8
0f05: dw $0ec8
0f07: dw $0ec8
0f09: dw $0fd4
0f0b: dw $0fce
0f0d: dw $0fc9
0f0f: dw $0ec8
0f11: dw $0ec8
0f13: dw $0ec8
0f15: dw $0ec8
0f17: dw $0ec8

0f19: cb e0     mov   $e0,y
0f1b: dd        mov   a,y
0f1c: 28 3f     and   a,#$3f
0f1e: 8d 05     mov   y,#$05
0f20: cf        mul   ya
0f21: bc        inc   a
0f22: fd        mov   y,a
0f23: cd 0e     mov   x,#$0e
0f25: 74 b1     cmp   a,$b1+x
0f27: d0 0c     bne   $0f35
0f29: f4 61     mov   a,$61+x
0f2b: f0 55     beq   $0f82
0f2d: f5 a1 03  mov   a,$03a1+x
0f30: f0 02     beq   $0f34
0f32: d4 61     mov   $61+x,a
0f34: 6f        ret

0f35: 1d        dec   x
0f36: 1d        dec   x
0f37: 10 ec     bpl   $0f25
0f39: f6 00 34  mov   a,$3400+y
0f3c: 24 11     and   a,$11
0f3e: c4 e1     mov   $e1,a
0f40: 8f 00 e4  mov   $e4,#$00
0f43: 8f 0e e5  mov   $e5,#$0e
0f46: cd 0e     mov   x,#$0e
0f48: 0b e1     asl   $e1
0f4a: 90 0c     bcc   $0f58
0f4c: f4 60     mov   a,$60+x
0f4e: f0 18     beq   $0f68
0f50: 64 e4     cmp   a,$e4
0f52: 90 04     bcc   $0f58
0f54: c4 e4     mov   $e4,a
0f56: d8 e5     mov   $e5,x
0f58: 1d        dec   x
0f59: 1d        dec   x
0f5a: 10 ec     bpl   $0f48
0f5c: f8 e5     mov   x,$e5
0f5e: f6 01 34  mov   a,$3401+y
0f61: 64 e4     cmp   a,$e4
0f63: 90 03     bcc   $0f68
0f65: f0 01     beq   $0f68
0f67: 6f        ret

0f68: f5 06 10  mov   a,$1006+x
0f6b: 24 23     and   a,$23
0f6d: d0 13     bne   $0f82
0f6f: 0e 10 00  tset1 $0010
0f72: f5 00 02  mov   a,$0200+x
0f75: d5 81 03  mov   $0381+x,a
0f78: f4 50     mov   a,$50+x
0f7a: d5 90 03  mov   $0390+x,a
0f7d: f4 51     mov   a,$51+x
0f7f: d5 91 03  mov   $0391+x,a
0f82: 3f ec 0f  call  $0fec
0f85: e8 02     mov   a,#$02
0f87: d5 70 00  mov   $0070+x,a
0f8a: d5 41 01  mov   $0141+x,a
0f8d: f6 03 34  mov   a,$3403+y
0f90: d4 50     mov   $50+x,a
0f92: f6 04 34  mov   a,$3404+y
0f95: d4 51     mov   $51+x,a
0f97: e8 e6     mov   a,#$e6
0f99: d5 71 03  mov   $0371+x,a
0f9c: f5 06 10  mov   a,$1006+x
0f9f: 0e 23 00  tset1 $0023
0fa2: f6 01 34  mov   a,$3401+y
0fa5: d4 60     mov   $60+x,a
0fa7: f6 02 34  mov   a,$3402+y
0faa: 10 05     bpl   $0fb1
0fac: 28 7f     and   a,#$7f
0fae: d5 a1 03  mov   $03a1+x,a
0fb1: d4 61     mov   $61+x,a
0fb3: dd        mov   a,y
0fb4: d4 b1     mov   $b1+x,a
0fb6: e4 e0     mov   a,$e0
0fb8: 28 c0     and   a,#$c0
0fba: 9f        xcn   a
0fbb: 5c        lsr   a
0fbc: 5c        lsr   a
0fbd: fd        mov   y,a
0fbe: f6 c5 0f  mov   a,$0fc5+y
0fc1: d5 d1 02  mov   $02d1+x,a
0fc4: 6f        ret

0fc5: 0a 00 14  or1   c,$1400,0
0fc8: 0a cb 22  or1   c,$02cb,1
0fcb: c2 1a     set6  $1a
0fcd: 6f        ret

0fce: cb 1c     mov   $1c,y
0fd0: 09 23 03  or    ($03),($23)
0fd3: 6f        ret

0fd4: cb e0     mov   $e0,y
0fd6: fa 23 e1  mov   ($e1),($23)
0fd9: cd 0e     mov   x,#$0e
0fdb: 0b e0     asl   $e0
0fdd: 90 06     bcc   $0fe5
0fdf: f3 e1 03  bbc7  $e1,$0fe5
0fe2: 3f ec 0f  call  $0fec
0fe5: 0b e1     asl   $e1
0fe7: 1d        dec   x
0fe8: 1d        dec   x
0fe9: 10 f0     bpl   $0fdb
0feb: 6f        ret

0fec: f5 06 10  mov   a,$1006+x
0fef: 4e 17 00  tclr1 $0017
0ff2: 4e 23 00  tclr1 $0023
0ff5: 0e 00 00  tset1 $0000
0ff8: 80        setc
0ff9: 4f 66     pcall $66
0ffb: d4 b1     mov   $b1+x,a
0ffd: d4 60     mov   $60+x,a
0fff: d4 61     mov   $61+x,a
1001: d4 51     mov   $51+x,a
1003: c2 1a     set6  $1a
1005: 6f        ret

1006: 01        tcall 0
1007: fe 02     dbnz  y,$100b
1009: fd        mov   y,a
100a: 04 fb     or    a,$fb
100c: 08 f7     or    a,#$f7
100e: 10 ef     bpl   $0fff
1010: 20        clrp
1011: df        daa   a
1012: 40        setp
1013: bf        mov   a,(x)+
1014: 80        setc
1015: 7f        ret
i
1016: e5 b0 03  mov   a,$03b0
1019: c5 00 20  mov   $2000,a
101c: c4 e0     mov   $e0,a
101e: 8f 00 e1  mov   $e1,#$00
1021: 8f 00 e2  mov   $e2,#$00
1024: 8f 00 e3  mov   $e3,#$00
1027: f8 e3     mov   x,$e3
1029: 8d 06     mov   y,#$06
102b: f5 00 19  mov   a,$1900+x
102e: d5 21 21  mov   $2121+x,a
1031: 3d        inc   x
1032: fe f7     dbnz  y,$102b
1034: d8 e3     mov   $e3,x
1036: f5 fa 18  mov   a,$18fa+x
1039: 1c        asl   a
103a: 1c        asl   a
103b: 5d        mov   x,a
103c: f5 00 17  mov   a,$1700+x
103f: c4 e4     mov   $e4,a
1041: f5 01 17  mov   a,$1701+x
1044: c4 e5     mov   $e5,a
1046: f5 02 17  mov   a,$1702+x
1049: c4 e6     mov   $e6,a
104b: f5 03 17  mov   a,$1703+x
104e: c4 e7     mov   $e7,a
1050: f5 05 17  mov   a,$1705+x
1053: fd        mov   y,a
1054: f5 04 17  mov   a,$1704+x
1057: f8 e2     mov   x,$e2
1059: 9a e4     subw  ya,$e4
105b: d5 03 20  mov   $2003+x,a
105e: dd        mov   a,y
105f: d5 04 20  mov   $2004+x,a
1062: e4 e4     mov   a,$e4
1064: d5 01 20  mov   $2001+x,a
1067: e4 e5     mov   a,$e5
1069: d5 02 20  mov   $2002+x,a
106c: ba e6     movw  ya,$e6
106e: 9a e4     subw  ya,$e4
1070: d5 93 20  mov   $2093+x,a
1073: dd        mov   a,y
1074: d5 94 20  mov   $2094+x,a
1077: eb e1     mov   y,$e1
1079: f6 b1 03  mov   a,$03b1+y
107c: 28 7f     and   a,#$7f
107e: d5 91 20  mov   $2091+x,a
1081: ab e1     inc   $e1
1083: 60        clrc
1084: 98 04 e2  adc   $e2,#$04
1087: 6e e0 9d  dbnz  $e0,$1027
108a: 8f b0 e8  mov   $e8,#$b0
108d: 8f 03 e9  mov   $e9,#$03
1090: 8f 00 f6  mov   $f6,#$00
1093: 8f dc f5  mov   $f5,#$dc
1096: 8f fe f4  mov   $f4,#$fe
1099: 4f 9b     pcall $9b
109b: 4f 9b     pcall $9b
109d: e5 b0 03  mov   a,$03b0
10a0: c4 2d     mov   $2d,a
10a2: 8f 00 e1  mov   $e1,#$00
10a5: 8f 00 e2  mov   $e2,#$00
10a8: 8f 41 e3  mov   $e3,#$41
10ab: e5 00 20  mov   a,$2000
10ae: 1c        asl   a
10af: 1c        asl   a
10b0: 5d        mov   x,a
10b1: eb e1     mov   y,$e1
10b3: f6 b1 03  mov   a,$03b1+y
10b6: f0 20     beq   $10d8
10b8: 1d        dec   x
10b9: 1d        dec   x
10ba: 1d        dec   x
10bb: 1d        dec   x
10bc: 30 1f     bmi   $10dd
10be: 75 91 20  cmp   a,$2091+x
10c1: d0 f5     bne   $10b8
10c3: f5 02 20  mov   a,$2002+x
10c6: fd        mov   y,a
10c7: f5 01 20  mov   a,$2001+x
10ca: 5a e2     cmpw  ya,$e2
10cc: 90 0f     bcc   $10dd
10ce: 3f 38 12  call  $1238
10d1: ab e0     inc   $e0
10d3: eb e1     mov   y,$e1
10d5: f6 b1 03  mov   a,$03b1+y
10d8: 08 80     or    a,#$80
10da: d6 b1 03  mov   $03b1+y,a
10dd: ab e1     inc   $e1
10df: 6e 2d c9  dbnz  $2d,$10ab
10e2: e5 b0 03  mov   a,$03b0
10e5: c4 2d     mov   $2d,a
10e7: 8d 00     mov   y,#$00
10e9: f6 b1 03  mov   a,$03b1+y
10ec: 30 07     bmi   $10f5
10ee: 6d        push  y
10ef: 3f ac 12  call  $12ac
10f2: ab e0     inc   $e0
10f4: ee        pop   y
10f5: fc        inc   y
10f6: 6e 2d f0  dbnz  $2d,$10e9
10f9: e4 e0     mov   a,$e0
10fb: 1c        asl   a
10fc: 1c        asl   a
10fd: 5d        mov   x,a
10fe: e4 e2     mov   a,$e2
1100: d5 00 17  mov   $1700+x,a
1103: e4 e3     mov   a,$e3
1105: d5 01 17  mov   $1701+x,a
1108: 8f 00 e8  mov   $e8,#$00
110b: 8f 20 e9  mov   $e9,#$20
110e: 8f 00 f6  mov   $f6,#$00
1111: 8f dc f5  mov   $f5,#$dc
1114: 8f fe f4  mov   $f4,#$fe
1117: 4f 9b     pcall $9b
1119: 4f 9b     pcall $9b
111b: 8f 33 f1  mov   $f1,#$33
111e: 8f 00 1e  mov   $1e,#$00
1121: 8f 00 f5  mov   $f5,#$00
1124: 8f 00 f4  mov   $f4,#$00
1127: 6f        ret

1128: dd        mov   a,y
1129: 64 25     cmp   a,$25
112b: 65 00 20  cmp   a,$2000
112e: b0 35     bcs   $1165
1130: c4 25     mov   $25,a
1132: 13 1a 05  bbc0  $1a,$113a
1135: 3f 80 11  call  $1180
1138: e4 25     mov   a,$25
113a: 1c        asl   a
113b: 5d        mov   x,a
113c: f5 02 20  mov   a,$2002+x
113f: fd        mov   y,a
1140: f5 01 20  mov   a,$2001+x
1143: da 32     movw  $32,ya
1145: 02 e0     set0  $e0
1147: 3f 0f 0e  call  $0e0f
114a: e8 00     mov   a,#$00
114c: c4 14     mov   $14,a
114e: c4 41     mov   $41,a
1150: c4 4d     mov   $4d,a
1152: c4 3c     mov   $3c,a
1154: c4 40     mov   $40,a
1156: c4 12     mov   $12,a
1158: 8f fe 11  mov   $11,#$fe
115b: 8f c0 16  mov   $16,#$c0
115e: 8f 20 3b  mov   $3b,#$20
1161: 02 1a     set0  $1a
1163: a2 1a     set5  $1a
1165: 6f        ret

1166: 8f ff 25  mov   $25,#$ff
1169: fa 23 1f  mov   ($1f),($23)
116c: cd 0e     mov   x,#$0e
116e: e8 00     mov   a,#$00
1170: 0b 1f     asl   $1f
1172: b0 08     bcs   $117c
1174: d5 51 00  mov   $0051+x,a
1177: d5 91 03  mov   $0391+x,a
117a: d4 d1     mov   $d1+x,a
117c: 1d        dec   x
117d: 1d        dec   x
117e: 10 f0     bpl   $1170
1180: 12 1a     clr0  $1a
1182: 32 1a     clr1  $1a
1184: c2 1a     set6  $1a
1186: e8 00     mov   a,#$00
1188: c4 24     mov   $24,a
118a: c4 2a     mov   $2a,a
118c: c4 26     mov   $26,a
118e: e4 23     mov   a,$23
1190: 48 ff     eor   a,#$ff
1192: 4e 17 00  tclr1 $0017
1195: 0e 00 00  tset1 $0000
1198: 8f ff 27  mov   $27,#$ff
119b: fa 27 1b  mov   ($1b),($27)
119e: 8f 00 28  mov   $28,#$00
11a1: 8f fc 11  mov   $11,#$fc
11a4: 6f        ret

11a5: cb 1b     mov   $1b,y
11a7: cb 27     mov   $27,y
11a9: 32 1a     clr1  $1a
11ab: 8f 00 28  mov   $28,#$00
11ae: e4 23     mov   a,$23
11b0: 48 ff     eor   a,#$ff
11b2: 0e 03 00  tset1 $0003
11b5: 6f        ret

11b6: 03 1a 13  bbs0  $1a,$11cc
11b9: cb 28     mov   $28,y
11bb: e8 80     mov   a,#$80
11bd: 80        setc
11be: a4 28     sbc   a,$28
11c0: c4 28     mov   $28,a
11c2: c4 29     mov   $29,a
11c4: fa 1b 27  mov   ($27),($1b)
11c7: 8f 20 1b  mov   $1b,#$20
11ca: 22 1a     set1  $1a
11cc: 6f        ret

11cd: e4 28     mov   a,$28
11cf: d0 12     bne   $11e3
11d1: cb 28     mov   $28,y
11d3: e8 80     mov   a,#$80
11d5: 80        setc
11d6: a4 28     sbc   a,$28
11d8: c4 28     mov   $28,a
11da: c4 29     mov   $29,a
11dc: e2 28     set7  $28
11de: fa 1b 27  mov   ($27),($1b)
11e1: 22 1a     set1  $1a
11e3: 6f        ret

11e4: cb 2a     mov   $2a,y
11e6: a2 1a     set5  $1a
11e8: 6f        ret

11e9: cb 26     mov   $26,y
11eb: 6f        ret

11ec: f2 1a     clr7  $1a
11ee: 6f        ret

11ef: e2 1a     set7  $1a
11f1: 6f        ret

11f2: 8d ff     mov   y,#$ff
11f4: 3f d4 0f  call  $0fd4
11f7: 5f 66 11  jmp   $1166

11fa: 3f 20 04  call  $0420
11fd: 8f 33 f1  mov   $f1,#$33
1200: 8f 00 1e  mov   $1e,#$00
1203: 6f        ret

1204: 8f 5c f2  mov   $f2,#$5c
1207: 8f ff f3  mov   $f3,#$ff
120a: cd ff     mov   x,#$ff
120c: bd        mov   sp,x
120d: 40        setp
120e: e8 00     mov   a,#$00
1210: 5d        mov   x,a
1211: af        mov   (x)+,a
1212: c8 00     cmp   x,#$00
1214: d0 fb     bne   $1211
1216: 20        clrp
1217: 5d        mov   x,a
1218: af        mov   (x)+,a
1219: c8 f0     cmp   x,#$f0
121b: d0 fb     bne   $1218
121d: 8f e6 1d  mov   $1d,#$e6
1220: 3f d2 0d  call  $0dd2
1223: 8f ff 25  mov   $25,#$ff
1226: 8f ff 1b  mov   $1b,#$ff
1229: 8f ff 27  mov   $27,#$ff
122c: 8f ff 1c  mov   $1c,#$ff
122f: 8f 05 19  mov   $19,#$05
1232: 8f 01 1e  mov   $1e,#$01
1235: 5f 80 04  jmp   $0480

; load song? 
1238: f5 02 20  mov   a,$2002+x
123b: fd        mov   y,a
123c: f5 01 20  mov   a,$2001+x
123f: da e4     movw  $e4,ya
1241: f5 04 20  mov   a,$2004+x
1244: fd        mov   y,a
1245: f5 03 20  mov   a,$2003+x
1248: da e8     movw  $e8,ya
124a: ba e2     movw  ya,$e2
124c: 5a e4     cmpw  ya,$e4
124e: f0 13     beq   $1263
1250: da e6     movw  $e6,ya
1252: 8d 00     mov   y,#$00
1254: f7 e4     mov   a,($e4)+y
1256: d7 e6     mov   ($e6)+y,a
1258: fc        inc   y
1259: d0 04     bne   $125f
125b: ab e5     inc   $e5
125d: ab e7     inc   $e7
125f: 1a e8     decw  $e8
1261: d0 f1     bne   $1254
1263: e4 e0     mov   a,$e0
1265: 1c        asl   a
1266: 1c        asl   a
1267: fd        mov   y,a
1268: e4 e3     mov   a,$e3
126a: d6 01 17  mov   $1701+y,a
126d: e4 e2     mov   a,$e2
126f: d6 00 17  mov   $1700+y,a
1272: 95 93 20  adc   a,$2093+x
1275: d6 02 17  mov   $1702+y,a
1278: f5 94 20  mov   a,$2094+x
127b: 84 e3     adc   a,$e3
127d: d6 03 17  mov   $1703+y,a
1280: f5 04 20  mov   a,$2004+x
1283: fd        mov   y,a
1284: f5 03 20  mov   a,$2003+x
1287: 7a e2     addw  ya,$e2
1289: da e2     movw  $e2,ya
128b: d8 e4     mov   $e4,x
128d: 7d        mov   a,x
128e: 5c        lsr   a
128f: 84 e4     adc   a,$e4
1291: 5d        mov   x,a
1292: e4 e1     mov   a,$e1
1294: 8d 06     mov   y,#$06
1296: cf        mul   ya
1297: fd        mov   y,a
1298: e4 e0     mov   a,$e0
129a: d6 00 19  mov   $1900+y,a
129d: 8f 05 e4  mov   $e4,#$05
12a0: f5 22 21  mov   a,$2122+x
12a3: d6 01 19  mov   $1901+y,a
12a6: 3d        inc   x
12a7: fc        inc   y
12a8: 6e e4 f5  dbnz  $e4,$12a0
12ab: 6f        ret

12ac: 2d        push  a
12ad: e8 06     mov   a,#$06
12af: cf        mul   ya
12b0: 5d        mov   x,a
12b1: 8f 01 e8  mov   $e8,#$01
12b4: 8f 19 e9  mov   $e9,#$19
12b7: 7a e8     addw  ya,$e8
12b9: da e8     movw  $e8,ya
12bb: e4 e0     mov   a,$e0
12bd: d5 00 19  mov   $1900+x,a
12c0: ae        pop   a
12c1: c4 f6     mov   $f6,a
12c3: 8f dc f5  mov   $f5,#$dc
12c6: 8f fe f4  mov   $f4,#$fe
12c9: 4f 9b     pcall $9b
12cb: 4f 9b     pcall $9b
12cd: 8f e4 e8  mov   $e8,#$e4
12d0: 8f 00 e9  mov   $e9,#$00
12d3: 4f 9b     pcall $9b
12d5: ba e2     movw  ya,$e2
12d7: da e8     movw  $e8,ya
12d9: 4f 9b     pcall $9b
12db: e4 e0     mov   a,$e0
12dd: 1c        asl   a
12de: 1c        asl   a
12df: 5d        mov   x,a
12e0: e4 e3     mov   a,$e3
12e2: d5 01 17  mov   $1701+x,a
12e5: fd        mov   y,a
12e6: e4 e2     mov   a,$e2
12e8: d5 00 17  mov   $1700+x,a
12eb: 7a e6     addw  ya,$e6
12ed: d5 02 17  mov   $1702+x,a
12f0: dd        mov   a,y
12f1: d5 03 17  mov   $1703+x,a
12f4: ba e2     movw  ya,$e2
12f6: 7a e4     addw  ya,$e4
12f8: da e2     movw  $e2,ya
12fa: 6f        ret

12fb: 2d        push  a
12fc: 9f        xcn   a
12fd: 28 07     and   a,#$07
12ff: fd        mov   y,a
1300: f6 e5 ff  mov   a,$ffe5+y
1303: d5 01 02  mov   $0201+x,a
1306: ae        pop   a
1307: 28 0f     and   a,#$0f
1309: fd        mov   y,a
130a: f6 ed ff  mov   a,$ffed+y
130d: d5 10 02  mov   $0210+x,a
1310: 6f        ret

1311: db $5c,$2d,$3d,$5c,$4c,$6c,$4d,$0d,$3c,$2c

ff00: e7 50     mov   a,($50+x)
ff02: bb 50     inc   $50+x
ff04: d0 02     bne   $ff08
ff06: bb 51     inc   $51+x
ff08: fd        mov   y,a
ff09: 6f        ret

ff0a: ed        notc
ff0b: 6b 30     ror   $30
ff0d: 10 03     bpl   $ff12
ff0f: 48 ff     eor   a,#$ff
ff11: bc        inc   a
ff12: 8d 00     mov   y,#$00
ff14: 9e        div   ya,x
ff15: 2d        push  a
ff16: e8 00     mov   a,#$00
ff18: 9e        div   ya,x
ff19: ee        pop   y
ff1a: f8 35     mov   x,$35
ff1c: f3 30 06  bbc7  $30,$ff25
ff1f: da e0     movw  $e0,ya
ff21: 9a e0     subw  ya,$e0
ff23: 9a e0     subw  ya,$e0
ff25: 6f        ret

ff26: f5 01 01  mov   a,$0101+x
ff29: c4 2f     mov   $2f,a
ff2b: f5 00 01  mov   a,$0100+x
ff2e: c4 2e     mov   $2e,a
ff30: 6f        ret

ff31: e2 31     set7  $31
ff33: cb 30     mov   $30,y
ff35: 4f 1c     pcall $1c
ff37: 6d        push  y
ff38: eb 39     mov   y,$39
ff3a: 13 1f 02  bbc0  $1f,$ff3f
ff3d: eb 2b     mov   y,$2b
ff3f: cf        mul   ya
ff40: cb e0     mov   $e0,y
ff42: 8f 00 e1  mov   $e1,#$00
ff45: eb 39     mov   y,$39
ff47: 13 1f 02  bbc0  $1f,$ff4c
ff4a: eb 2b     mov   y,$2b
ff4c: ae        pop   a
ff4d: cf        mul   ya
ff4e: 7a e0     addw  ya,$e0
ff50: 3f 1c ff  call  $ff1c
ff53: 7a 2e     addw  ya,$2e
ff55: da 2e     movw  $2e,ya
ff57: 6f        ret

ff58: 8d 00     mov   y,#$00
ff5a: f7 32     mov   a,($32)+y
ff5c: 3a 32     incw  $32
ff5e: 2d        push  a
ff5f: f7 32     mov   a,($32)+y
ff61: 3a 32     incw  $32
ff63: fd        mov   y,a
ff64: ae        pop   a
ff65: 6f        ret

ff66: 7d        mov   a,x
ff67: d4 80     mov   $80+x,a
ff69: e8 0a     mov   a,#$0a
ff6b: d5 d1 02  mov   $02d1+x,a
ff6e: e8 01     mov   a,#$01
ff70: d5 41 01  mov   $0141+x,a
ff73: 9c        dec   a
ff74: d5 90 00  mov   $0090+x,a
ff77: d5 91 00  mov   $0091+x,a
ff7a: d5 a1 03  mov   $03a1+x,a
ff7d: 90 1b     bcc   $ff9a
ff7f: d4 d0     mov   $d0+x,a
ff81: d4 c1     mov   $c1+x,a
ff83: d4 d1     mov   $d1+x,a
ff85: d5 70 03  mov   $0370+x,a
ff88: d5 21 01  mov   $0121+x,a
ff8b: d5 11 02  mov   $0211+x,a
ff8e: d5 50 02  mov   $0250+x,a
ff91: d5 80 03  mov   $0380+x,a
ff94: d5 d0 02  mov   $02d0+x,a
ff97: d5 81 02  mov   $0281+x,a
ff9a: 6f        ret

ff9b: cd 00     mov   x,#$00
ff9d: 2f 0a     bra   $ffa9
ff9f: fd        mov   y,a
ffa0: f6 e9 00  mov   a,$00e9+y
ffa3: c7 e8     mov   ($e8+x),a
ffa5: 3a e8     incw  $e8
ffa7: fe f7     dbnz  y,$ffa0
ffa9: e4 f4     mov   a,$f4
ffab: 64 f4     cmp   a,$f4
ffad: d0 fa     bne   $ffa9
ffaf: 64 1e     cmp   a,$1e
ffb1: f0 f6     beq   $ffa9
ffb3: c4 1e     mov   $1e,a
ffb5: fa f5 ea  mov   ($ea),($f5)
ffb8: fa f6 eb  mov   ($eb),($f6)
ffbb: fa f7 ec  mov   ($ec),($f7)
ffbe: c4 f4     mov   $f4,a
ffc0: 28 03     and   a,#$03
ffc2: d0 db     bne   $ff9f
ffc4: 6f        ret

; echo FIR presets
ffc5: db $7f,$00,$00,$00,$00,$00,$00,$00
ffcd: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
ffd5: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
ffdd: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; note dur%'s
ffe5: db $00,$7f,$98,$b2,$cb,$e5,$fc,$ff
; per-note velocity values
ffed: db $19,$32,$4c,$65,$72,$7f,$8c,$98
fff5: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
