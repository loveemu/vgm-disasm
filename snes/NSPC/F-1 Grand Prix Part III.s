0400: 8f 00 64  mov   $64,#$00
0403: d3 00 14  bbc6  $00,$041a
0406: fa 03 53  mov   ($53),($03)
0409: 58 ff 53  eor   $53,#$ff
040c: 29 06 53  and   ($53),($06)
040f: e4 07     mov   a,$07
0411: 04 12     or    a,$12
0413: 24 03     and   a,$03
0415: 0e 53 00  tset1 $0053
0418: d2 00     clr6  $00
041a: 8d 0a     mov   y,#$0a
041c: ad 05     cmp   y,#$05
041e: f0 07     beq   $0427
0420: b0 08     bcs   $042a
0422: 69 50 51  cmp   ($51),($50)
0425: d0 13     bne   $043a
0427: e3 51 0e  bbs7  $51,$0438
042a: f6 c4 04  mov   a,$04c4+y
042d: c5 f2 00  mov   $00f2,a
0430: f6 ce 04  mov   a,$04ce+y
0433: 5d        mov   x,a
0434: e6        mov   a,(x)
0435: c5 f3 00  mov   $00f3,a
0438: fe e2     dbnz  y,$041c
043a: 8f 00 4b  mov   $4b,#$00
043d: 8f 00 4c  mov   $4c,#$00
0440: 8f 00 64  mov   $64,#$00
0443: 8f 00 11  mov   $11,#$00
0446: e4 08     mov   a,$08
0448: c5 f4 00  mov   $00f4,a
044b: e4 00     mov   a,$00
044d: c5 f5 00  mov   $00f5,a
0450: e4 03     mov   a,$03
0452: c5 f6 00  mov   $00f6,a
0455: 3f d9 04  call  $04d9
0458: 3f 87 10  call  $1087
045b: ec fd 00  mov   y,$00fd
045e: f0 fb     beq   $045b
0460: 6d        push  y
0461: 6d        push  y
0462: e8 20     mov   a,#$20
0464: cf        mul   ya
0465: 60        clrc
0466: 84 49     adc   a,$49
0468: c4 49     mov   $49,a
046a: 90 0a     bcc   $0476
046c: 69 50 51  cmp   ($51),($50)
046f: f0 02     beq   $0473
0471: ab 51     inc   $51
0473: 3f 69 07  call  $0769
0476: ee        pop   y
0477: e4 03     mov   a,$03
0479: f0 12     beq   $048d
047b: e8 29     mov   a,#$29
047d: cf        mul   ya
047e: 60        clrc
047f: 84 10     adc   a,$10
0481: c4 10     mov   $10,a
0483: 90 05     bcc   $048a
0485: 3f 25 08  call  $0825
0488: 2f 03     bra   $048d
048a: fa 03 04  mov   ($04),($03)
048d: ee        pop   y
048e: 13 00 16  bbc0  $00,$04a7
0491: e4 59     mov   a,$59
0493: cf        mul   ya
0494: 60        clrc
0495: 84 57     adc   a,$57
0497: c4 57     mov   $57,a
0499: 90 05     bcc   $04a0
049b: 3f ab 07  call  $07ab
049e: 2f 07     bra   $04a7
04a0: e4 03     mov   a,$03
04a2: 48 ff     eor   a,#$ff
04a4: 0e 04 00  tset1 $0004
04a7: fa 03 05  mov   ($05),($03)
04aa: 8f 01 4d  mov   $4d,#$01
04ad: cd 00     mov   x,#$00
04af: 4b 04     lsr   $04
04b1: 90 07     bcc   $04ba
04b3: f4 31     mov   a,$31+x
04b5: f0 03     beq   $04ba
04b7: 3f 53 0f  call  $0f53
04ba: 3d        inc   x
04bb: 3d        inc   x
04bc: 4b 05     lsr   $05
04be: 0b 4d     asl   $4d
04c0: d0 ed     bne   $04af
04c2: 5f 00 04  jmp   $0400

; dsp shadow addrs for dsp regs
04c5: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d
04cd: db $2d,$5c,$66,$68,$55,$53,$4e,$4b
04d5: db $64,$54,$52,$4c

04d9: e5 f4 00  mov   a,$00f4
04dc: 65 f4 00  cmp   a,$00f4
04df: d0 f8     bne   $04d9
04e1: 64 08     cmp   a,$08
04e3: f0 12     beq   $04f7
04e5: c4 08     mov   $08,a
04e7: ec f5 00  mov   y,$00f5
04ea: 1c        asl   a
04eb: 68 e0     cmp   a,#$e0
04ed: b0 49     bcs   $0538
04ef: 68 40     cmp   a,#$40
04f1: b0 04     bcs   $04f7
04f3: 5d        mov   x,a
04f4: 1f f8 04  jmp   ($04f8+x)

04f7: 6f        ret

04f8: dw $04f7
04fa: dw $05dd
04fc: dw $069b
04fe: dw $0612
0500: dw $04f7
0502: dw $04f7
0504: dw $04f7
0506: dw $04f7
0508: dw $04f7
050a: dw $04f7
050c: dw $04f7
050e: dw $04f7
0510: dw $04f7
0512: dw $04f7
0514: dw $0662
0516: dw $0665
0518: dw $073e
051a: dw $064b
051c: dw $04f7
051e: dw $066d
0520: dw $0684
0522: dw $04f7
0524: dw $04f7
0526: dw $06f3
0528: dw $061d
052a: dw $065c
052c: dw $0668
052e: dw $04f7
0530: dw $04f7
0532: dw $04f7
0534: dw $105d
0536: dw $1077

0538: dd        mov   a,y
0539: 1c        asl   a
053a: 1c        asl   a
053b: bc        inc   a
053c: 5e 00 36  cmp   y,$3600
053f: 90 03     bcc   $0544
0541: 5f cc 05  jmp   $05cc

0544: fd        mov   y,a
0545: e4 08     mov   a,$08
0547: 28 0f     and   a,#$0f
0549: 1c        asl   a
054a: 5d        mov   x,a
054b: 68 10     cmp   a,#$10
054d: b0 0b     bcs   $055a
054f: dd        mov   a,y
0550: 74 d0     cmp   a,$d0+x
0552: d0 4c     bne   $05a0
0554: f4 21     mov   a,$21+x
0556: 10 48     bpl   $05a0
0558: 2f 72     bra   $05cc
055a: f6 00 36  mov   a,$3600+y
055d: c4 1a     mov   $1a,a
055f: cd 0e     mov   x,#$0e
0561: dd        mov   a,y
0562: 0b 1a     asl   $1a
0564: 90 0a     bcc   $0570
0566: 74 d0     cmp   a,$d0+x
0568: d0 06     bne   $0570
056a: f4 21     mov   a,$21+x
056c: 10 32     bpl   $05a0
056e: 2f 5c     bra   $05cc
0570: 1d        dec   x
0571: 1d        dec   x
0572: 10 ee     bpl   $0562
0574: f6 00 36  mov   a,$3600+y
0577: c4 1a     mov   $1a,a
0579: cd 0e     mov   x,#$0e
057b: 8f 01 1c  mov   $1c,#$01
057e: 8f 0e 1d  mov   $1d,#$0e
0581: 0b 1a     asl   $1a
0583: 90 0c     bcc   $0591
0585: f4 20     mov   a,$20+x
0587: f0 17     beq   $05a0
0589: 64 1c     cmp   a,$1c
058b: 90 04     bcc   $0591
058d: c4 1c     mov   $1c,a
058f: d8 1d     mov   $1d,x
0591: 1d        dec   x
0592: 1d        dec   x
0593: 10 ec     bpl   $0581
0595: f6 01 36  mov   a,$3601+y
0598: f8 1d     mov   x,$1d
059a: 64 1c     cmp   a,$1c
059c: f0 02     beq   $05a0
059e: b0 2c     bcs   $05cc
05a0: 3f 46 08  call  $0846
05a3: bc        inc   a
05a4: d5 70 00  mov   $0070+x,a
05a7: dd        mov   a,y
05a8: d4 d0     mov   $d0+x,a
05aa: f6 01 36  mov   a,$3601+y
05ad: d4 20     mov   $20+x,a
05af: f6 02 36  mov   a,$3602+y
05b2: d4 30     mov   $30+x,a
05b4: f6 03 36  mov   a,$3603+y
05b7: d4 31     mov   $31+x,a
05b9: e8 ff     mov   a,#$ff
05bb: d4 d1     mov   $d1+x,a
05bd: f5 cd 05  mov   a,$05cd+x
05c0: 8d 5c     mov   y,#$5c
05c2: cc f2 00  mov   $00f2,y
05c5: c5 f3 00  mov   $00f3,a
05c8: 04 03     or    a,$03
05ca: c4 03     mov   $03,a
05cc: 6f        ret

05cd: 01        tcall 0
05ce: fe 02     dbnz  y,$05d2
05d0: fd        mov   y,a
05d1: 04 fb     or    a,$fb
05d3: 08 f7     or    a,#$f7
05d5: 10 ef     bpl   $05c6
05d7: 20        clrp
05d8: df        daa   a
05d9: 40        setp
05da: bf        mov   a,(x)+
05db: 80        setc
05dc: 7f        reti

05dd: e8 ff     mov   a,#$ff
05df: 8d 5c     mov   y,#$5c
05e1: cc f2 00  mov   $00f2,y
05e4: c5 f3 00  mov   $00f3,a
05e7: cd cf     mov   x,#$cf
05e9: bd        mov   sp,x
05ea: 40        setp
05eb: e8 00     mov   a,#$00
05ed: 5d        mov   x,a
05ee: af        mov   (x)+,a
05ef: c8 d0     cmp   x,#$d0
05f1: d0 fb     bne   $05ee
05f3: 20        clrp
05f4: 5d        mov   x,a
05f5: af        mov   (x)+,a
05f6: c8 e8     cmp   x,#$e8
05f8: d0 fb     bne   $05f5
05fa: 8f e7 0a  mov   $0a,#$e7
05fd: 3f 0b 0d  call  $0d0b
0600: 8f 20 4e  mov   $4e,#$20
0603: 8f ff 09  mov   $09,#$ff
0606: 8f ff 01  mov   $01,#$ff
0609: 8f ff 0e  mov   $0e,#$ff
060c: 8f ff 02  mov   $02,#$ff
060f: 5f 00 04  jmp   $0400

0612: 3f 77 10  call  $1077
0615: 8d ff     mov   y,#$ff
0617: 3f 1d 06  call  $061d
061a: 5f 3e 07  jmp   $073e

061d: cb 1a     mov   $1a,y
061f: cd 0e     mov   x,#$0e
0621: 0b 1a     asl   $1a
0623: 90 0a     bcc   $062f
0625: f5 cd 05  mov   a,$05cd+x
0628: 24 03     and   a,$03
062a: f0 03     beq   $062f
062c: 3f 34 06  call  $0634
062f: 1d        dec   x
0630: 1d        dec   x
0631: 10 ee     bpl   $0621
0633: 6f        ret

0634: e8 00     mov   a,#$00
0636: d4 d0     mov   $d0+x,a
0638: d4 20     mov   $20+x,a
063a: d4 31     mov   $31+x,a
063c: f5 cd 05  mov   a,$05cd+x
063f: 04 4c     or    a,$4c
0641: c4 4c     mov   $4c,a
0643: f5 ce 05  mov   a,$05ce+x
0646: 24 03     and   a,$03
0648: c4 03     mov   $03,a
064a: 6f        ret

064b: cb 01     mov   $01,y
064d: cb 0e     mov   $0e,y
064f: 32 00     clr1  $00
0651: 8f 00 0d  mov   $0d,#$00
0654: e4 03     mov   a,$03
0656: 48 ff     eor   a,#$ff
0658: 0e 64 00  tset1 $0064
065b: 6f        ret

065c: cb 02     mov   $02,y
065e: 09 03 64  or    ($64),($03)
0661: 6f        ret

0662: f2 00     clr7  $00
0664: 6f        ret

0665: e2 00     set7  $00
0667: 6f        ret

0668: cb 12     mov   $12,y
066a: c2 00     set6  $00
066c: 6f        ret

066d: 03 00 13  bbs0  $00,$0683
0670: cb 0d     mov   $0d,y
0672: e8 80     mov   a,#$80
0674: 80        setc
0675: a4 0d     sbc   a,$0d
0677: c4 0d     mov   $0d,a
0679: c4 0f     mov   $0f,a
067b: fa 01 0e  mov   ($0e),($01)
067e: 8f 20 01  mov   $01,#$20
0681: 22 00     set1  $00
0683: 6f        ret

0684: e4 0d     mov   a,$0d
0686: d0 12     bne   $069a
0688: cb 0d     mov   $0d,y
068a: e8 80     mov   a,#$80
068c: 80        setc
068d: a4 0d     sbc   a,$0d
068f: c4 0d     mov   $0d,a
0691: e2 0d     set7  $0d
0693: c4 0f     mov   $0f,a
0695: fa 01 0e  mov   ($0e),($01)
0698: 22 00     set1  $00
069a: 6f        ret

069b: dd        mov   a,y
069c: f0 02     beq   $06a0
069e: cb 0a     mov   $0a,y
06a0: e8 ad     mov   a,#$ad
06a2: c4 f4     mov   $f4,a
06a4: 2f 06     bra   $06ac
06a6: ba 1d     movw  ya,$1d
06a8: da 1a     movw  $1a,ya
06aa: 8d 00     mov   y,#$00
06ac: e4 f4     mov   a,$f4
06ae: 64 f4     cmp   a,$f4
06b0: d0 fa     bne   $06ac
06b2: 64 08     cmp   a,$08
06b4: f0 f6     beq   $06ac
06b6: f8 f5     mov   x,$f5
06b8: d8 1c     mov   $1c,x
06ba: f8 f6     mov   x,$f6
06bc: d8 1d     mov   $1d,x
06be: f8 f7     mov   x,$f7
06c0: d8 1e     mov   $1e,x
06c2: c4 f4     mov   $f4,a
06c4: c4 08     mov   $08,a
06c6: 28 07     and   a,#$07
06c8: f0 dc     beq   $06a6
06ca: 68 04     cmp   a,#$04
06cc: b0 10     bcs   $06de
06ce: 5d        mov   x,a
06cf: f4 1b     mov   a,$1b+x
06d1: d7 1a     mov   ($1a)+y,a
06d3: fc        inc   y
06d4: d0 02     bne   $06d8
06d6: ab 1b     inc   $1b
06d8: 1d        dec   x
06d9: d0 f4     bne   $06cf
06db: 5f ac 06  jmp   $06ac

06de: e4 08     mov   a,$08
06e0: c5 f4 00  mov   $00f4,a
06e3: e4 00     mov   a,$00
06e5: c5 f5 00  mov   $00f5,a
06e8: e4 03     mov   a,$03
06ea: c5 f6 00  mov   $00f6,a
06ed: e8 00     mov   a,#$00
06ef: c5 f7 00  mov   $00f7,a
06f2: 6f        ret

; load song from A
06f3: dd        mov   a,y
06f4: 64 09     cmp   a,$09
06f6: f0 45     beq   $073d
06f8: 65 00 1a  cmp   a,$1a00
06fb: b0 40     bcs   $073d
06fd: 13 00 07  bbc0  $00,$0707
0700: 2d        push  a
0701: 3f 3e 07  call  $073e
0704: ae        pop   a
0705: c4 09     mov   $09,a
0707: 1c        asl   a
0708: 5d        mov   x,a
0709: f5 02 1a  mov   a,$1a02+x
070c: fd        mov   y,a
070d: f5 01 1a  mov   a,$1a01+x
0710: da 46     movw  $46,ya
0712: 3f 6b 08  call  $086b
0715: fa 03 05  mov   ($05),($03)
0718: cd 0e     mov   x,#$0e
071a: 0b 05     asl   $05
071c: b0 07     bcs   $0725
071e: 3f 46 08  call  $0846
0721: bc        inc   a
0722: d5 70 00  mov   $0070+x,a
0725: 1d        dec   x
0726: 1d        dec   x
0727: 10 f1     bpl   $071a
0729: e8 00     mov   a,#$00
072b: c4 60     mov   $60,a
072d: c4 6d     mov   $6d,a
072f: c4 5a     mov   $5a,a
0731: c4 56     mov   $56,a
0733: c4 48     mov   $48,a
0735: 8f c0 5f  mov   $5f,#$c0
0738: 8f 20 59  mov   $59,#$20
073b: 02 00     set0  $00
073d: 6f        ret

073e: 12 00     clr0  $00
0740: 8f 00 06  mov   $06,#$00
0743: c2 00     set6  $00
0745: fa 03 4c  mov   ($4c),($03)
0748: 58 ff 4c  eor   $4c,#$ff
074b: fa 03 05  mov   ($05),($03)
074e: cd 0e     mov   x,#$0e
0750: e8 00     mov   a,#$00
0752: 0b 05     asl   $05
0754: b0 03     bcs   $0759
0756: d5 31 00  mov   $0031+x,a
0759: 1d        dec   x
075a: 1d        dec   x
075b: 10 f5     bpl   $0752
075d: 8f ff 09  mov   $09,#$ff
0760: 32 00     clr1  $00
0762: 8f 00 0d  mov   $0d,#$00
0765: fa 0e 01  mov   ($01),($0e)
0768: 6f        ret

0769: 13 00 3e  bbc0  $00,$07aa
076c: e4 0d     mov   a,$0d
076e: f0 3a     beq   $07aa
0770: 6e 0f 37  dbnz  $0f,$07aa
0773: fa 0d 0f  mov   ($0f),($0d)
0776: f2 0f     clr7  $0f
0778: e4 03     mov   a,$03
077a: 48 ff     eor   a,#$ff
077c: 0e 64 00  tset1 $0064
077f: aa 0d e0  mov1  c,$000d,7
0782: b0 12     bcs   $0796
0784: e8 20     mov   a,#$20
0786: 84 01     adc   a,$01
0788: c4 01     mov   $01,a
078a: b0 05     bcs   $0791
078c: 69 0e 01  cmp   ($01),($0e)
078f: 90 19     bcc   $07aa
0791: fa 0e 01  mov   ($01),($0e)
0794: 2f 0f     bra   $07a5
0796: e8 20     mov   a,#$20
0798: c4 1c     mov   $1c,a
079a: a9 1c 01  sbc   ($01),($1c)
079d: b0 0b     bcs   $07aa
079f: fa 0e 01  mov   ($01),($0e)
07a2: 3f 3e 07  call  $073e
07a5: 32 00     clr1  $00
07a7: 8f 00 0d  mov   $0d,#$00
07aa: 6f        ret

07ab: fa 03 05  mov   ($05),($03)
07ae: 8f 01 4d  mov   $4d,#$01
07b1: cd 00     mov   x,#$00
07b3: 03 05 0e  bbs0  $05,$07c4
07b6: 3f b7 08  call  $08b7
07b9: 90 09     bcc   $07c4
07bb: 3f 6b 08  call  $086b
07be: 90 eb     bcc   $07ab
07c0: 3f 3e 07  call  $073e
07c3: 6f        ret

07c4: 3d        inc   x
07c5: 3d        inc   x
07c6: 4b 05     lsr   $05
07c8: 0b 4d     asl   $4d
07ca: d0 e7     bne   $07b3
07cc: e4 5a     mov   a,$5a
07ce: f0 0b     beq   $07db
07d0: ba 5c     movw  ya,$5c
07d2: 7a 58     addw  ya,$58
07d4: 6e 5a 02  dbnz  $5a,$07d9
07d7: ba 5a     movw  ya,$5a
07d9: da 58     movw  $58,ya
07db: e4 6d     mov   a,$6d
07dd: f0 15     beq   $07f4
07df: ba 69     movw  ya,$69
07e1: 7a 65     addw  ya,$65
07e3: da 65     movw  $65,ya
07e5: ba 6b     movw  ya,$6b
07e7: 7a 67     addw  ya,$67
07e9: 6e 6d 06  dbnz  $6d,$07f2
07ec: ba 6d     movw  ya,$6d
07ee: da 65     movw  $65,ya
07f0: eb 6f     mov   y,$6f
07f2: da 67     movw  $67,ya
07f4: e4 60     mov   a,$60
07f6: f0 12     beq   $080a
07f8: ba 62     movw  ya,$62
07fa: 7a 5e     addw  ya,$5e
07fc: 6e 60 02  dbnz  $60,$0801
07ff: ba 60     movw  ya,$60
0801: da 5e     movw  $5e,ya
0803: e4 03     mov   a,$03
0805: 48 ff     eor   a,#$ff
0807: 0e 64 00  tset1 $0064
080a: fa 03 05  mov   ($05),($03)
080d: 8f 01 4d  mov   $4d,#$01
0810: cd 00     mov   x,#$00
0812: f4 31     mov   a,$31+x
0814: f0 06     beq   $081c
0816: 03 05 03  bbs0  $05,$081c
0819: 3f 7e 0d  call  $0d7e
081c: 3d        inc   x
081d: 3d        inc   x
081e: 4b 05     lsr   $05
0820: 0b 4d     asl   $4d
0822: d0 ee     bne   $0812
0824: 6f        ret

0825: fa 03 05  mov   ($05),($03)
0828: 8f 01 4d  mov   $4d,#$01
082b: cd 00     mov   x,#$00
082d: 13 05 0d  bbc0  $05,$083d
0830: 3f b7 08  call  $08b7
0833: b0 05     bcs   $083a
0835: 3f 7e 0d  call  $0d7e
0838: 2f 03     bra   $083d
083a: 3f 34 06  call  $0634
083d: 3d        inc   x
083e: 3d        inc   x
083f: 4b 05     lsr   $05
0841: 0b 4d     asl   $4d
0843: d0 e8     bne   $082d
0845: 6f        ret

0846: e8 ff     mov   a,#$ff
0848: d5 a1 02  mov   $02a1+x,a
084b: e8 0a     mov   a,#$0a
084d: 3f 32 0b  call  $0b32
0850: d4 21     mov   $21+x,a
0852: d4 80     mov   $80+x,a
0854: d4 90     mov   $90+x,a
0856: d4 91     mov   $91+x,a
0858: d4 b1     mov   $b1+x,a
085a: d4 c1     mov   $c1+x,a
085c: d4 71     mov   $71+x,a
085e: d5 21 01  mov   $0121+x,a
0861: d5 11 02  mov   $0211+x,a
0864: d5 50 02  mov   $0250+x,a
0867: d5 81 02  mov   $0281+x,a
086a: 6f        ret

086b: 3f 3c 09  call  $093c
086e: d0 1a     bne   $088a
0870: fd        mov   y,a
0871: d0 02     bne   $0875
0873: 80        setc
0874: 6f        ret

0875: 8b 48     dec   $48
0877: 10 02     bpl   $087b
0879: c4 48     mov   $48,a
087b: f0 07     beq   $0884
087d: 3f 3c 09  call  $093c
0880: da 46     movw  $46,ya
0882: 2f e7     bra   $086b
0884: 3a 46     incw  $46
0886: 3a 46     incw  $46
0888: 2f e1     bra   $086b
088a: da 1c     movw  $1c,ya
088c: fa 03 05  mov   ($05),($03)
088f: 8d 0f     mov   y,#$0f
0891: 0b 05     asl   $05
0893: b0 1c     bcs   $08b1
0895: f7 1c     mov   a,($1c)+y
0897: d6 30 00  mov   $0030+y,a
089a: dc        dec   y
089b: f7 1c     mov   a,($1c)+y
089d: d6 30 00  mov   $0030+y,a
08a0: e8 00     mov   a,#$00
08a2: d6 80 00  mov   $0080+y,a
08a5: d6 90 00  mov   $0090+y,a
08a8: d6 91 00  mov   $0091+y,a
08ab: bc        inc   a
08ac: d6 70 00  mov   $0070+y,a
08af: 2f 01     bra   $08b2
08b1: dc        dec   y
08b2: dc        dec   y
08b3: 10 dc     bpl   $0891
08b5: 60        clrc
08b6: 6f        ret

08b7: d8 4a     mov   $4a,x
08b9: f4 31     mov   a,$31+x
08bb: f0 7d     beq   $093a
08bd: 9b 70     dec   $70+x
08bf: f0 05     beq   $08c6
08c1: 3f 5a 0e  call  $0e5a
08c4: 2f 61     bra   $0927
08c6: 3f 78 0a  call  $0a78
08c9: d0 18     bne   $08e3
08cb: 80        setc
08cc: f4 80     mov   a,$80+x
08ce: f0 6b     beq   $093b
08d0: 3f 21 0c  call  $0c21
08d3: 9b 80     dec   $80+x
08d5: d0 ef     bne   $08c6
08d7: f5 30 02  mov   a,$0230+x
08da: d4 30     mov   $30+x,a
08dc: f5 31 02  mov   a,$0231+x
08df: d4 31     mov   $31+x,a
08e1: 2f e3     bra   $08c6
08e3: 30 20     bmi   $0905
08e5: d5 00 02  mov   $0200+x,a
08e8: 3f 78 0a  call  $0a78
08eb: 30 18     bmi   $0905
08ed: 2d        push  a
08ee: 9f        xcn   a
08ef: 28 07     and   a,#$07
08f1: fd        mov   y,a
08f2: f6 45 10  mov   a,$1045+y
08f5: d5 01 02  mov   $0201+x,a
08f8: ae        pop   a
08f9: 28 0f     and   a,#$0f
08fb: fd        mov   y,a
08fc: f6 4d 10  mov   a,$104d+y
08ff: d5 10 02  mov   $0210+x,a
0902: 3f 78 0a  call  $0a78
0905: 68 ca     cmp   a,#$ca
0907: 90 05     bcc   $090e
0909: 3f 51 0a  call  $0a51
090c: 2f b8     bra   $08c6
090e: 3f 4a 09  call  $094a
0911: f5 00 02  mov   a,$0200+x
0914: d4 70     mov   $70+x,a
0916: fd        mov   y,a
0917: f5 01 02  mov   a,$0201+x
091a: d0 04     bne   $0920
091c: e8 ff     mov   a,#$ff
091e: 2f 05     bra   $0925
0920: cf        mul   ya
0921: dd        mov   a,y
0922: d0 01     bne   $0925
0924: bc        inc   a
0925: d4 71     mov   $71+x,a
0927: f4 a0     mov   a,$a0+x
0929: d0 0f     bne   $093a
092b: e7 30     mov   a,($30+x)
092d: 68 de     cmp   a,#$de
092f: d0 09     bne   $093a
0931: 3f 7a 0a  call  $0a7a
0934: 3f 78 0a  call  $0a78
0937: 3f a8 0c  call  $0ca8
093a: 60        clrc
093b: 6f        ret

093c: 8d 00     mov   y,#$00
093e: f7 46     mov   a,($46)+y
0940: 3a 46     incw  $46
0942: 2d        push  a
0943: f7 46     mov   a,($46)+y
0945: 3a 46     incw  $46
0947: fd        mov   y,a
0948: ae        pop   a
0949: 6f        ret

094a: 68 c8     cmp   a,#$c8
094c: b0 fb     bcs   $0949
094e: fb 71     mov   y,$71+x
0950: 30 03     bmi   $0955
0952: 09 4d 4b  or    ($4b),($4d)
0955: 09 4d 64  or    ($64),($4d)
0958: 28 7f     and   a,#$7f
095a: 03 05 03  bbs0  $05,$0960
095d: 60        clrc
095e: 84 56     adc   a,$56
0960: 60        clrc
0961: 95 11 02  adc   a,$0211+x
0964: d5 01 01  mov   $0101+x,a
0967: f5 21 01  mov   a,$0121+x
096a: d5 00 01  mov   $0100+x,a
096d: f5 81 02  mov   a,$0281+x
0970: 5c        lsr   a
0971: e8 00     mov   a,#$00
0973: 7c        ror   a
0974: d5 70 02  mov   $0270+x,a
0977: e8 00     mov   a,#$00
0979: d4 b0     mov   $b0+x,a
097b: d5 81 00  mov   $0081+x,a
097e: d4 c0     mov   $c0+x,a
0980: d5 30 01  mov   $0130+x,a
0983: f5 50 02  mov   a,$0250+x
0986: d4 a0     mov   $a0+x,a
0988: f0 1e     beq   $09a8
098a: f5 51 02  mov   a,$0251+x
098d: d4 a1     mov   $a1+x,a
098f: f5 60 02  mov   a,$0260+x
0992: d0 0a     bne   $099e
0994: f5 01 01  mov   a,$0101+x
0997: 80        setc
0998: b5 61 02  sbc   a,$0261+x
099b: d5 01 01  mov   $0101+x,a
099e: f5 61 02  mov   a,$0261+x
09a1: 60        clrc
09a2: 95 01 01  adc   a,$0101+x
09a5: 3f bd 0c  call  $0cbd
09a8: 3f 57 0d  call  $0d57
09ab: 8d 00     mov   y,#$00
09ad: e4 43     mov   a,$43
09af: 80        setc
09b0: a8 34     sbc   a,#$34
09b2: b0 09     bcs   $09bd
09b4: e4 43     mov   a,$43
09b6: 80        setc
09b7: a8 13     sbc   a,#$13
09b9: b0 06     bcs   $09c1
09bb: dc        dec   y
09bc: 1c        asl   a
09bd: 7a 42     addw  ya,$42
09bf: da 42     movw  $42,ya
09c1: 4d        push  x
09c2: e4 43     mov   a,$43
09c4: 1c        asl   a
09c5: 8d 00     mov   y,#$00
09c7: cd 18     mov   x,#$18
09c9: 9e        div   ya,x
09ca: 5d        mov   x,a
09cb: f6 38 0a  mov   a,$0a38+y
09ce: c4 1b     mov   $1b,a
09d0: f6 37 0a  mov   a,$0a37+y
09d3: c4 1a     mov   $1a,a
09d5: f6 3a 0a  mov   a,$0a3a+y
09d8: 2d        push  a
09d9: f6 39 0a  mov   a,$0a39+y
09dc: ee        pop   y
09dd: 9a 1a     subw  ya,$1a
09df: eb 42     mov   y,$42
09e1: cf        mul   ya
09e2: dd        mov   a,y
09e3: 8d 00     mov   y,#$00
09e5: 7a 1a     addw  ya,$1a
09e7: cb 1b     mov   $1b,y
09e9: 1c        asl   a
09ea: 2b 1b     rol   $1b
09ec: c4 1a     mov   $1a,a
09ee: 2f 04     bra   $09f4
09f0: 4b 1b     lsr   $1b
09f2: 7c        ror   a
09f3: 3d        inc   x
09f4: c8 06     cmp   x,#$06
09f6: d0 f8     bne   $09f0
09f8: c4 1a     mov   $1a,a
09fa: ce        pop   x
09fb: f5 20 02  mov   a,$0220+x
09fe: eb 1b     mov   y,$1b
0a00: cf        mul   ya
0a01: da 1c     movw  $1c,ya
0a03: f5 21 02  mov   a,$0221+x
0a06: eb 1a     mov   y,$1a
0a08: cf        mul   ya
0a09: 7a 1c     addw  ya,$1c
0a0b: da 1c     movw  $1c,ya
0a0d: f5 21 02  mov   a,$0221+x
0a10: eb 1b     mov   y,$1b
0a12: cf        mul   ya
0a13: 2d        push  a
0a14: f5 20 02  mov   a,$0220+x
0a17: eb 1a     mov   y,$1a
0a19: cf        mul   ya
0a1a: dd        mov   a,y
0a1b: ee        pop   y
0a1c: 7a 1c     addw  ya,$1c
0a1e: da 1c     movw  $1c,ya
0a20: 7d        mov   a,x
0a21: 9f        xcn   a
0a22: 5c        lsr   a
0a23: 08 02     or    a,#$02
0a25: eb 1c     mov   y,$1c
0a27: c5 f2 00  mov   $00f2,a
0a2a: cc f3 00  mov   $00f3,y
0a2d: bc        inc   a
0a2e: eb 1d     mov   y,$1d
0a30: c5 f2 00  mov   $00f2,a
0a33: cc f3 00  mov   $00f3,y
0a36: 6f        ret

; pitch table
0a37: dw $085f
0a39: dw $08de
0a3b: dw $0965
0a3d: dw $09f4
0a3f: dw $0a8c
0a41: dw $0b2c
0a43: dw $0bd6
0a45: dw $0c8b
0a47: dw $0d4a
0a49: dw $0e14
0a4b: dw $0eea
0a4d: dw $0fcd
0a4f: dw $10be

0a51: 68 d3     cmp   a,#$d3
0a53: b0 11     bcs   $0a66
0a55: 13 05 0e  bbc0  $05,$0a66
0a58: fd        mov   y,a
0a59: f6 f4 09  mov   a,$09f4+y
0a5c: 60        clrc
0a5d: 94 30     adc   a,$30+x
0a5f: d4 30     mov   $30+x,a
0a61: 90 02     bcc   $0a65
0a63: bb 31     inc   $31+x
0a65: 6f        ret

; dispatch vcmd in A (ca-ff)
0a66: 1c        asl   a
0a67: fd        mov   y,a
0a68: f6 ef 09  mov   a,$09ef+y
0a6b: 2d        push  a
0a6c: f6 ee 09  mov   a,$09ee+y
0a6f: 2d        push  a
0a70: dd        mov   a,y
0a71: 5c        lsr   a
0a72: fd        mov   y,a
0a73: f6 74 0a  mov   a,$0a74+y
0a76: f0 08     beq   $0a80
0a78: e7 30     mov   a,($30+x)
0a7a: bb 30     inc   $30+x
0a7c: d0 02     bne   $0a80
0a7e: bb 31     inc   $31+x
0a80: fd        mov   y,a
0a81: 6f        ret

; vcmd dispatch table
0a82: dw $0bae ; ca - global transpose
0a84: dw $0b97 ; cb - tempo
0a86: dw $0b9c ; cc - tempo fade
0a88: dw $0b80 ; cd - master volume
0a8a: dw $0b85 ; ce - master volume fade
0a8c: dw $0c2c ; cf - echo vbits/volume
0a8e: dw $0c83 ; d0 - set echo params
0a90: dw $0c4e ; d1 - echo volume fade
0a92: dw $0c7a ; d2 - disable echo
0a94: dw $0bb1 ; d3 - per-voice transpose
0a96: dw $0b32 ; d4 - pan
0a98: dw $0b40 ; d5 - pan fade
0a9a: dw $0adc ; d6 - set instrument
0a9c: dw $0b59 ; d7 - vibrato on
0a9e: dw $0b70 ; d8 - vibrato fade
0aa0: dw $0b65 ; d9 - vibrato off
0aa2: dw $0bb5 ; da - tremolo on
0aa4: dw $0bc1 ; db - tremolo off
0aa6: dw $0be2 ; dc - volume
0aa8: dw $0beb ; dd - volume fade
0aaa: dw $0ca8 ; de - pitch slide
0aac: dw $0bc4 ; df - pitch envelope (release)
0aae: dw $0bc8 ; e0 - pitch envelope (attack)
0ab0: dw $0bde ; e1 - pitch envelope off
0ab2: dw $0c04 ; e2 - tuning
0ab4: dw $0c08 ; e3 - nop
0ab6: dw $0c09 ; e4 - call subroutine
0ab8: dw $0cd5 ; e5
0aba: dw $0cdb ; e6
0abc: dw $0ce3 ; e7 - goto

; vcmd lengths
0abe: db $01,$01,$02,$01,$02,$03,$03,$03 ; ca-d1
0ac5: db $00,$01,$01,$02,$01,$03,$01,$00 ; d2-d9
0ace: db $03,$00,$01,$02,$03,$03,$03,$00 ; da-e1
0ad5: db $01,$01,$03,$00,$00,$03	 ; e2-e7

; vcmd d6 - set instrument
0adc: 8d 06     mov   y,#$06
0ade: cf        mul   ya
0adf: da 1a     movw  $1a,ya
0ae1: 60        clrc
0ae2: 03 05 08  bbs0  $05,$0aed
0ae5: 98 00 1a  adc   $1a,#$00
0ae8: 98 18 1b  adc   $1b,#$18
0aeb: 2f 06     bra   $0af3
0aed: 98 00 1a  adc   $1a,#$00
0af0: 98 19 1b  adc   $1b,#$19
0af3: 7d        mov   a,x
0af4: 9f        xcn   a
0af5: 5c        lsr   a
0af6: 08 04     or    a,#$04
0af8: 5d        mov   x,a
0af9: e4 4d     mov   a,$4d
0afb: 4e 54 00  tclr1 $0054
0afe: 8d 00     mov   y,#$00
0b00: f7 1a     mov   a,($1a)+y
0b02: 10 0c     bpl   $0b10
0b04: 28 1f     and   a,#$1f
0b06: 38 20 4e  and   $4e,#$20
0b09: 0e 4e 00  tset1 $004e
0b0c: 09 4d 54  or    ($54),($4d)
0b0f: dd        mov   a,y
0b10: 13 05 03  bbc0  $05,$0b16
0b13: 60        clrc
0b14: 88 40     adc   a,#$40
0b16: c9 f2 00  mov   $00f2,x
0b19: c5 f3 00  mov   $00f3,a
0b1c: 3d        inc   x
0b1d: fc        inc   y
0b1e: f7 1a     mov   a,($1a)+y
0b20: ad 04     cmp   y,#$04
0b22: d0 f2     bne   $0b16
0b24: f8 4a     mov   x,$4a
0b26: f7 1a     mov   a,($1a)+y
0b28: d5 21 02  mov   $0221+x,a
0b2b: fc        inc   y
0b2c: f7 1a     mov   a,($1a)+y
0b2e: d5 20 02  mov   $0220+x,a
0b31: 6f        ret

; vcmd d4 - pan
0b32: d5 f1 02  mov   $02f1+x,a
0b35: 28 1f     and   a,#$1f
0b37: d5 d1 02  mov   $02d1+x,a
0b3a: e8 00     mov   a,#$00
0b3c: d5 d0 02  mov   $02d0+x,a
0b3f: 6f        ret

; vcmd d5 - pan fade
0b40: d4 91     mov   $91+x,a
0b42: 2d        push  a
0b43: 3f 78 0a  call  $0a78
0b46: d5 f0 02  mov   $02f0+x,a
0b49: 80        setc
0b4a: b5 d1 02  sbc   a,$02d1+x
0b4d: ce        pop   x
0b4e: 3f 62 0d  call  $0d62
0b51: d5 e0 02  mov   $02e0+x,a
0b54: dd        mov   a,y
0b55: d5 e1 02  mov   $02e1+x,a
0b58: 6f        ret

; vcmd d7 - vibrato on
0b59: d5 80 02  mov   $0280+x,a
0b5c: 3f 78 0a  call  $0a78
0b5f: d5 71 02  mov   $0271+x,a
0b62: 3f 78 0a  call  $0a78
; vcmd d9 - vibrato off
0b65: d4 b1     mov   $b1+x,a
0b67: d5 91 02  mov   $0291+x,a
0b6a: e8 00     mov   a,#$00
0b6c: d5 81 02  mov   $0281+x,a
0b6f: 6f        ret

; vcmd d8 - vibrato fade
0b70: d5 81 02  mov   $0281+x,a
0b73: 2d        push  a
0b74: f4 b1     mov   a,$b1+x
0b76: ce        pop   x
0b77: 8d 00     mov   y,#$00
0b79: 9e        div   ya,x
0b7a: f8 4a     mov   x,$4a
0b7c: d5 90 02  mov   $0290+x,a
0b7f: 6f        ret

; vcmd cd - master volume
0b80: e8 00     mov   a,#$00
0b82: da 5e     movw  $5e,ya
0b84: 6f        ret

; vcmd ce - master volume fade
0b85: c4 60     mov   $60,a
0b87: 3f 78 0a  call  $0a78
0b8a: c4 61     mov   $61,a
0b8c: 80        setc
0b8d: a4 5f     sbc   a,$5f
0b8f: f8 60     mov   x,$60
0b91: 3f 62 0d  call  $0d62
0b94: da 62     movw  $62,ya
0b96: 6f        ret

; vcmd cb - tempo
0b97: e8 00     mov   a,#$00
0b99: da 58     movw  $58,ya
0b9b: 6f        ret

; vcmd cc - tempo fade (1)
0b9c: c4 5a     mov   $5a,a
0b9e: 3f 78 0a  call  $0a78
0ba1: c4 5b     mov   $5b,a
0ba3: 80        setc
0ba4: a4 59     sbc   a,$59
0ba6: f8 5a     mov   x,$5a
0ba8: 3f 62 0d  call  $0d62
0bab: da 5c     movw  $5c,ya
0bad: 6f        ret

; vcmd ca - global transpose
0bae: c4 56     mov   $56,a
0bb0: 6f        ret

; vcmd d3 - per-voice transpose
0bb1: d5 11 02  mov   $0211+x,a
0bb4: 6f        ret

; vcmd da - tremolo on
0bb5: d5 40 01  mov   $0140+x,a
0bb8: 3f 78 0a  call  $0a78
0bbb: d5 31 01  mov   $0131+x,a
0bbe: 3f 78 0a  call  $0a78
; vcmd db - tremolo off
0bc1: d4 c1     mov   $c1+x,a
0bc3: 6f        ret

; vcmd df - pitch envelope (release)
0bc4: e8 01     mov   a,#$01
0bc6: 2f 02     bra   $0bca
; vcmd e0 - pitch envelope (attack)
0bc8: e8 00     mov   a,#$00
0bca: d5 60 02  mov   $0260+x,a
0bcd: dd        mov   a,y
0bce: d5 51 02  mov   $0251+x,a
0bd1: 3f 78 0a  call  $0a78
0bd4: d5 50 02  mov   $0250+x,a
0bd7: 3f 78 0a  call  $0a78
0bda: d5 61 02  mov   $0261+x,a
0bdd: 6f        ret

; vcmd e1 - pitch envelope off
0bde: d5 50 02  mov   $0250+x,a
0be1: 6f        ret

; vcmd dc - volume
0be2: d5 a1 02  mov   $02a1+x,a
0be5: e8 00     mov   a,#$00
0be7: d5 a0 02  mov   $02a0+x,a
0bea: 6f        ret

; vcmd dd - volume fade
0beb: d4 90     mov   $90+x,a
0bed: 2d        push  a
0bee: 3f 78 0a  call  $0a78
0bf1: d5 c0 02  mov   $02c0+x,a
0bf4: 80        setc
0bf5: b5 a1 02  sbc   a,$02a1+x
0bf8: ce        pop   x
0bf9: 3f 62 0d  call  $0d62
0bfc: d5 b0 02  mov   $02b0+x,a
0bff: dd        mov   a,y
0c00: d5 b1 02  mov   $02b1+x,a
0c03: 6f        ret

; vcmd e2 - tuning
0c04: d5 21 01  mov   $0121+x,a
0c07: 6f        ret

; vcmd e3 - nop
0c08: 6f        ret

; vcmd e4 - call subroutine
0c09: d5 40 02  mov   $0240+x,a
0c0c: 3f 78 0a  call  $0a78
0c0f: d5 41 02  mov   $0241+x,a
0c12: 3f 78 0a  call  $0a78
0c15: d4 80     mov   $80+x,a
0c17: f4 30     mov   a,$30+x
0c19: d5 30 02  mov   $0230+x,a
0c1c: f4 31     mov   a,$31+x
0c1e: d5 31 02  mov   $0231+x,a
0c21: f5 40 02  mov   a,$0240+x
0c24: d4 30     mov   $30+x,a
0c26: f5 41 02  mov   a,$0241+x
0c29: d4 31     mov   $31+x,a
0c2b: 6f        ret

; vcmd cf - echo vbits/volume
0c2c: c4 06     mov   $06,a
0c2e: c2 00     set6  $00
0c30: 3f 78 0a  call  $0a78
0c33: e8 00     mov   a,#$00
0c35: da 65     movw  $65,ya
0c37: 3f 78 0a  call  $0a78
0c3a: e8 00     mov   a,#$00
0c3c: da 67     movw  $67,ya
0c3e: b2 4e     clr5  $4e
0c40: f3 00 0a  bbc7  $00,$0c4d
0c43: e4 66     mov   a,$66
0c45: 60        clrc
0c46: 84 68     adc   a,$68
0c48: 7c        ror   a
0c49: c4 66     mov   $66,a
0c4b: c4 68     mov   $68,a
0c4d: 6f        ret

; vcmd d1 - echo volume fade
0c4e: c4 6d     mov   $6d,a
0c50: 3f 78 0a  call  $0a78
0c53: c4 6e     mov   $6e,a
0c55: 3f 78 0a  call  $0a78
0c58: f3 00 06  bbc7  $00,$0c61
0c5b: 60        clrc
0c5c: 84 1a     adc   a,$1a
0c5e: 7c        ror   a
0c5f: c4 6e     mov   $6e,a
0c61: c4 6f     mov   $6f,a
0c63: 80        setc
0c64: a4 68     sbc   a,$68
0c66: f8 6d     mov   x,$6d
0c68: 3f 62 0d  call  $0d62
0c6b: da 6b     movw  $6b,ya
0c6d: c4 6e     mov   $6e,a
0c6f: 80        setc
0c70: a4 66     sbc   a,$66
0c72: f8 6d     mov   x,$6d
0c74: 3f 62 0d  call  $0d62
0c77: da 69     movw  $69,ya
0c79: 6f        ret

; vcmd d2 - disable echo
0c7a: c4 6d     mov   $6d,a
0c7c: da 65     movw  $65,ya
0c7e: da 67     movw  $67,ya
0c80: a2 4e     set5  $4e
0c82: 6f        ret

; vcmd d0 - set echo params
0c83: 3f 0b 0d  call  $0d0b
0c86: 3f 78 0a  call  $0a78
0c89: c4 55     mov   $55,a
0c8b: 3f 78 0a  call  $0a78
0c8e: 8d 08     mov   y,#$08
0c90: cf        mul   ya
0c91: 5d        mov   x,a
0c92: 8d 0f     mov   y,#$0f
0c94: f5 25 10  mov   a,$1025+x
0c97: cc f2 00  mov   $00f2,y
0c9a: c5 f3 00  mov   $00f3,a
0c9d: 3d        inc   x
0c9e: dd        mov   a,y
0c9f: 60        clrc
0ca0: 88 10     adc   a,#$10
0ca2: fd        mov   y,a
0ca3: 10 ef     bpl   $0c94
0ca5: f8 4a     mov   x,$4a
0ca7: 6f        ret

; vcmd de - pitch slide
0ca8: d4 a1     mov   $a1+x,a
0caa: 3f 78 0a  call  $0a78
0cad: d4 a0     mov   $a0+x,a
0caf: 3f 78 0a  call  $0a78
0cb2: aa 05 00  mov1  c,$0005,0
0cb5: b0 02     bcs   $0cb9
0cb7: 84 56     adc   a,$56
0cb9: 60        clrc
0cba: 95 11 02  adc   a,$0211+x
0cbd: 28 7f     and   a,#$7f
0cbf: d5 20 01  mov   $0120+x,a
0cc2: 80        setc
0cc3: b5 01 01  sbc   a,$0101+x
0cc6: fb a0     mov   y,$a0+x
0cc8: 6d        push  y
0cc9: ce        pop   x
0cca: 3f 62 0d  call  $0d62
0ccd: d5 10 01  mov   $0110+x,a
0cd0: dd        mov   a,y
0cd1: d5 11 01  mov   $0111+x,a
0cd4: 6f        ret

; vcmd e5
0cd5: 09 4d 07  or    ($07),($4d)
0cd8: c2 00     set6  $00
0cda: 6f        ret

; vcmd e6
0cdb: e4 4d     mov   a,$4d
0cdd: 4e 07 00  tclr1 $0007
0ce0: c2 00     set6  $00
0ce2: 6f        ret

; vcmd e7 - goto
0ce3: f4 21     mov   a,$21+x
0ce5: 30 06     bmi   $0ced
0ce7: f0 02     beq   $0ceb
0ce9: 10 0f     bpl   $0cfa
0ceb: db 21     mov   $21+x,y
0ced: 3f 78 0a  call  $0a78
0cf0: 2d        push  a
0cf1: 3f 78 0a  call  $0a78
0cf4: d4 31     mov   $31+x,a
0cf6: ae        pop   a
0cf7: d4 30     mov   $30+x,a
0cf9: 6f        ret

0cfa: 9c        dec   a
0cfb: d4 21     mov   $21+x,a
0cfd: d0 ee     bne   $0ced
0cff: f4 30     mov   a,$30+x
0d01: 60        clrc
0d02: 88 02     adc   a,#$02
0d04: d4 30     mov   $30+x,a
0d06: 90 02     bcc   $0d0a
0d08: bb 31     inc   $31+x
0d0a: 6f        ret

0d0b: c4 50     mov   $50,a
0d0d: 8d 7d     mov   y,#$7d
0d0f: cc f2 00  mov   $00f2,y
0d12: e5 f3 00  mov   a,$00f3
0d15: 64 50     cmp   a,$50
0d17: f0 31     beq   $0d4a
0d19: 28 0f     and   a,#$0f
0d1b: 48 ff     eor   a,#$ff
0d1d: f3 51 03  bbc7  $51,$0d23
0d20: 60        clrc
0d21: 84 51     adc   a,$51
0d23: c4 51     mov   $51,a
0d25: 8d 04     mov   y,#$04
0d27: f6 c4 04  mov   a,$04c4+y
0d2a: c5 f2 00  mov   $00f2,a
0d2d: e8 00     mov   a,#$00
0d2f: c5 f3 00  mov   $00f3,a
0d32: fe f3     dbnz  y,$0d27
0d34: e4 4e     mov   a,$4e
0d36: 08 20     or    a,#$20
0d38: 8d 6c     mov   y,#$6c
0d3a: cc f2 00  mov   $00f2,y
0d3d: c5 f3 00  mov   $00f3,a
0d40: e4 50     mov   a,$50
0d42: 8d 7d     mov   y,#$7d
0d44: cc f2 00  mov   $00f2,y
0d47: c5 f3 00  mov   $00f3,a
0d4a: e4 0a     mov   a,$0a
0d4c: 8d 6d     mov   y,#$6d
0d4e: cc f2 00  mov   $00f2,y
0d51: c5 f3 00  mov   $00f3,a
0d54: ab 50     inc   $50
0d56: 6f        ret

0d57: f5 01 01  mov   a,$0101+x
0d5a: c4 43     mov   $43,a
0d5c: f5 00 01  mov   a,$0100+x
0d5f: c4 42     mov   $42,a
0d61: 6f        ret

0d62: ed        notc
0d63: 6b 44     ror   $44
0d65: 10 03     bpl   $0d6a
0d67: 48 ff     eor   a,#$ff
0d69: bc        inc   a
0d6a: 8d 00     mov   y,#$00
0d6c: 9e        div   ya,x
0d6d: 2d        push  a
0d6e: e8 00     mov   a,#$00
0d70: 9e        div   ya,x
0d71: ee        pop   y
0d72: f8 4a     mov   x,$4a
0d74: f3 44 06  bbc7  $44,$0d7d
0d77: da 1a     movw  $1a,ya
0d79: 9a 1a     subw  ya,$1a
0d7b: 9a 1a     subw  ya,$1a
0d7d: 6f        ret

0d7e: f4 90     mov   a,$90+x
0d80: f0 24     beq   $0da6
0d82: 09 4d 64  or    ($64),($4d)
0d85: 9b 90     dec   $90+x
0d87: d0 0a     bne   $0d93
0d89: e8 00     mov   a,#$00
0d8b: d5 a0 02  mov   $02a0+x,a
0d8e: f5 c0 02  mov   a,$02c0+x
0d91: 2f 10     bra   $0da3
0d93: 60        clrc
0d94: f5 a0 02  mov   a,$02a0+x
0d97: 95 b0 02  adc   a,$02b0+x
0d9a: d5 a0 02  mov   $02a0+x,a
0d9d: f5 a1 02  mov   a,$02a1+x
0da0: 95 b1 02  adc   a,$02b1+x
0da3: d5 a1 02  mov   $02a1+x,a
0da6: fb c1     mov   y,$c1+x
0da8: f0 23     beq   $0dcd
0daa: f5 40 01  mov   a,$0140+x
0dad: de c0 1b  cbne  $c0+x,$0dcb
0db0: 09 4d 64  or    ($64),($4d)
0db3: f5 30 01  mov   a,$0130+x
0db6: 10 07     bpl   $0dbf
0db8: fc        inc   y
0db9: d0 04     bne   $0dbf
0dbb: e8 80     mov   a,#$80
0dbd: 2f 04     bra   $0dc3
0dbf: 60        clrc
0dc0: 95 31 01  adc   a,$0131+x
0dc3: d5 30 01  mov   $0130+x,a
0dc6: 3f fa 0f  call  $0ffa
0dc9: 2f 07     bra   $0dd2
0dcb: bb c0     inc   $c0+x
0dcd: e8 ff     mov   a,#$ff
0dcf: 3f 05 10  call  $1005
0dd2: f4 91     mov   a,$91+x
0dd4: f0 24     beq   $0dfa
0dd6: 09 4d 64  or    ($64),($4d)
0dd9: 9b 91     dec   $91+x
0ddb: d0 0a     bne   $0de7
0ddd: e8 00     mov   a,#$00
0ddf: d5 d0 02  mov   $02d0+x,a
0de2: f5 f0 02  mov   a,$02f0+x
0de5: 2f 10     bra   $0df7
0de7: 60        clrc
0de8: f5 d0 02  mov   a,$02d0+x
0deb: 95 e0 02  adc   a,$02e0+x
0dee: d5 d0 02  mov   $02d0+x,a
0df1: f5 d1 02  mov   a,$02d1+x
0df4: 95 e1 02  adc   a,$02e1+x
0df7: d5 d1 02  mov   $02d1+x,a
0dfa: e4 4d     mov   a,$4d
0dfc: 24 64     and   a,$64
0dfe: f0 44     beq   $0e44
0e00: f5 d1 02  mov   a,$02d1+x
0e03: fd        mov   y,a
0e04: f5 d0 02  mov   a,$02d0+x
0e07: da 42     movw  $42,ya
0e09: f3 00 06  bbc7  $00,$0e12
0e0c: 8f 0a 43  mov   $43,#$0a
0e0f: 8f 00 42  mov   $42,#$00
0e12: 7d        mov   a,x
0e13: 9f        xcn   a
0e14: 5c        lsr   a
0e15: c4 44     mov   $44,a
0e17: eb 43     mov   y,$43
0e19: f6 46 0e  mov   a,$0e46+y
0e1c: 80        setc
0e1d: b6 45 0e  sbc   a,$0e45+y
0e20: eb 42     mov   y,$42
0e22: cf        mul   ya
0e23: dd        mov   a,y
0e24: eb 43     mov   y,$43
0e26: 60        clrc
0e27: 96 45 0e  adc   a,$0e45+y
0e2a: fd        mov   y,a
0e2b: f5 c1 02  mov   a,$02c1+x
0e2e: cf        mul   ya
0e2f: e4 44     mov   a,$44
0e31: c5 f2 00  mov   $00f2,a
0e34: cc f3 00  mov   $00f3,y
0e37: 8d 14     mov   y,#$14
0e39: e8 00     mov   a,#$00
0e3b: 9a 42     subw  ya,$42
0e3d: da 42     movw  $42,ya
0e3f: ab 44     inc   $44
0e41: 33 44 d3  bbc1  $44,$0e17
0e44: 6f        ret

0e45: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e4d: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e55: db $7a,$7c,$7d,$7e,$7f

0e5a: f4 71     mov   a,$71+x
0e5c: 30 68     bmi   $0ec6
0e5e: f0 66     beq   $0ec6
0e60: 9b 71     dec   $71+x
0e62: f0 05     beq   $0e69
0e64: e8 02     mov   a,#$02
0e66: de 70 5d  cbne  $70+x,$0ec6
0e69: f4 80     mov   a,$80+x
0e6b: c4 1d     mov   $1d,a
0e6d: f4 30     mov   a,$30+x
0e6f: fb 31     mov   y,$31+x
0e71: da 1a     movw  $1a,ya
0e73: 8d 00     mov   y,#$00
0e75: 2f 03     bra   $0e7a
0e77: fc        inc   y
0e78: 30 42     bmi   $0ebc
0e7a: f7 1a     mov   a,($1a)+y
0e7c: f0 17     beq   $0e95
0e7e: 10 f7     bpl   $0e77
0e80: 68 c8     cmp   a,#$c8
0e82: f0 42     beq   $0ec6
0e84: 68 e4     cmp   a,#$e4
0e86: f0 29     beq   $0eb1
0e88: 68 ca     cmp   a,#$ca
0e8a: 90 30     bcc   $0ebc
0e8c: 6d        push  y
0e8d: fd        mov   y,a
0e8e: ae        pop   a
0e8f: 96 f4 09  adc   a,$09f4+y
0e92: fd        mov   y,a
0e93: 2f e5     bra   $0e7a
0e95: e4 1d     mov   a,$1d
0e97: f0 23     beq   $0ebc
0e99: 8b 1d     dec   $1d
0e9b: d0 0a     bne   $0ea7
0e9d: f5 31 02  mov   a,$0231+x
0ea0: 2d        push  a
0ea1: f5 30 02  mov   a,$0230+x
0ea4: ee        pop   y
0ea5: 2f ca     bra   $0e71
0ea7: f5 41 02  mov   a,$0241+x
0eaa: 2d        push  a
0eab: f5 40 02  mov   a,$0240+x
0eae: ee        pop   y
0eaf: 2f c0     bra   $0e71
0eb1: fc        inc   y
0eb2: f7 1a     mov   a,($1a)+y
0eb4: 2d        push  a
0eb5: fc        inc   y
0eb6: f7 1a     mov   a,($1a)+y
0eb8: fd        mov   y,a
0eb9: ae        pop   a
0eba: 2f b5     bra   $0e71
0ebc: e4 4d     mov   a,$4d
0ebe: 8d 5c     mov   y,#$5c
0ec0: cc f2 00  mov   $00f2,y
0ec3: c5 f3 00  mov   $00f3,a
0ec6: f2 45     clr7  $45
0ec8: f4 a0     mov   a,$a0+x
0eca: f0 2c     beq   $0ef8
0ecc: f4 a1     mov   a,$a1+x
0ece: f0 04     beq   $0ed4
0ed0: 9b a1     dec   $a1+x
0ed2: 2f 24     bra   $0ef8
0ed4: e2 45     set7  $45
0ed6: 9b a0     dec   $a0+x
0ed8: d0 0b     bne   $0ee5
0eda: f5 21 01  mov   a,$0121+x
0edd: d5 00 01  mov   $0100+x,a
0ee0: f5 20 01  mov   a,$0120+x
0ee3: 2f 10     bra   $0ef5
0ee5: f5 00 01  mov   a,$0100+x
0ee8: 60        clrc
0ee9: 95 10 01  adc   a,$0110+x
0eec: d5 00 01  mov   $0100+x,a
0eef: f5 01 01  mov   a,$0101+x
0ef2: 95 11 01  adc   a,$0111+x
0ef5: d5 01 01  mov   $0101+x,a
0ef8: 3f 57 0d  call  $0d57
0efb: f4 b1     mov   a,$b1+x
0efd: f0 4a     beq   $0f49
0eff: f5 80 02  mov   a,$0280+x
0f02: de b0 42  cbne  $b0+x,$0f47
0f05: f5 81 00  mov   a,$0081+x
0f08: 75 81 02  cmp   a,$0281+x
0f0b: d0 05     bne   $0f12
0f0d: f5 91 02  mov   a,$0291+x
0f10: 2f 0b     bra   $0f1d
0f12: bb 81     inc   $81+x
0f14: fd        mov   y,a
0f15: f0 02     beq   $0f19
0f17: f4 b1     mov   a,$b1+x
0f19: 60        clrc
0f1a: 95 90 02  adc   a,$0290+x
0f1d: d4 b1     mov   $b1+x,a
0f1f: f5 70 02  mov   a,$0270+x
0f22: 60        clrc
0f23: 95 71 02  adc   a,$0271+x
0f26: d5 70 02  mov   $0270+x,a
0f29: c4 44     mov   $44,a
0f2b: 1c        asl   a
0f2c: 1c        asl   a
0f2d: 90 02     bcc   $0f31
0f2f: 48 ff     eor   a,#$ff
0f31: fd        mov   y,a
0f32: f4 b1     mov   a,$b1+x
0f34: 68 f1     cmp   a,#$f1
0f36: 90 05     bcc   $0f3d
0f38: 28 0f     and   a,#$0f
0f3a: cf        mul   ya
0f3b: 2f 04     bra   $0f41
0f3d: cf        mul   ya
0f3e: dd        mov   a,y
0f3f: 8d 00     mov   y,#$00
0f41: 3f e0 0f  call  $0fe0
0f44: 5f ab 09  jmp   $09ab

0f47: bb b0     inc   $b0+x
0f49: e3 45 f8  bbs7  $45,$0f44
0f4c: e4 4d     mov   a,$4d
0f4e: 24 11     and   a,$11
0f50: d0 f2     bne   $0f44
0f52: 6f        ret

0f53: f2 45     clr7  $45
0f55: f4 c1     mov   a,$c1+x
0f57: f0 09     beq   $0f62
0f59: f5 40 01  mov   a,$0140+x
0f5c: de c0 03  cbne  $c0+x,$0f62
0f5f: 3f e8 0f  call  $0fe8
0f62: f5 d1 02  mov   a,$02d1+x
0f65: fd        mov   y,a
0f66: f5 d0 02  mov   a,$02d0+x
0f69: da 42     movw  $42,ya
0f6b: f4 91     mov   a,$91+x
0f6d: f0 0c     beq   $0f7b
0f6f: f5 e1 02  mov   a,$02e1+x
0f72: fd        mov   y,a
0f73: f5 e0 02  mov   a,$02e0+x
0f76: 3f c0 0f  call  $0fc0
0f79: 2f 0e     bra   $0f89
0f7b: e3 45 0b  bbs7  $45,$0f89
0f7e: e4 4d     mov   a,$4d
0f80: 24 64     and   a,$64
0f82: f0 08     beq   $0f8c
0f84: e8 ff     mov   a,#$ff
0f86: 3f 05 10  call  $1005
0f89: 3f 09 0e  call  $0e09
0f8c: f2 45     clr7  $45
0f8e: 3f 57 0d  call  $0d57
0f91: f4 a0     mov   a,$a0+x
0f93: f0 0e     beq   $0fa3
0f95: f4 a1     mov   a,$a1+x
0f97: d0 0a     bne   $0fa3
0f99: f5 11 01  mov   a,$0111+x
0f9c: fd        mov   y,a
0f9d: f5 10 01  mov   a,$0110+x
0fa0: 3f c0 0f  call  $0fc0
0fa3: f4 b1     mov   a,$b1+x
0fa5: f0 a2     beq   $0f49
0fa7: f5 80 02  mov   a,$0280+x
0faa: de b0 9c  cbne  $b0+x,$0f49
0fad: eb 57     mov   y,$57
0faf: 13 05 02  bbc0  $05,$0fb4
0fb2: eb 10     mov   y,$10
0fb4: f5 71 02  mov   a,$0271+x
0fb7: cf        mul   ya
0fb8: dd        mov   a,y
0fb9: 60        clrc
0fba: 95 70 02  adc   a,$0270+x
0fbd: 5f 29 0f  jmp   $0f29

0fc0: e2 45     set7  $45
0fc2: cb 44     mov   $44,y
0fc4: 3f 74 0d  call  $0d74
0fc7: 6d        push  y
0fc8: eb 57     mov   y,$57
0fca: 13 05 02  bbc0  $05,$0fcf
0fcd: eb 10     mov   y,$10
0fcf: cf        mul   ya
0fd0: cb 1a     mov   $1a,y
0fd2: 8f 00 1b  mov   $1b,#$00
0fd5: eb 57     mov   y,$57
0fd7: 13 05 02  bbc0  $05,$0fdc
0fda: eb 10     mov   y,$10
0fdc: ae        pop   a
0fdd: cf        mul   ya
0fde: 7a 1a     addw  ya,$1a
0fe0: 3f 74 0d  call  $0d74
0fe3: 7a 42     addw  ya,$42
0fe5: da 42     movw  $42,ya
0fe7: 6f        ret

0fe8: e2 45     set7  $45
0fea: f5 31 01  mov   a,$0131+x
0fed: eb 57     mov   y,$57
0fef: 13 05 02  bbc0  $05,$0ff4
0ff2: eb 10     mov   y,$10
0ff4: cf        mul   ya
0ff5: dd        mov   a,y
0ff6: 60        clrc
0ff7: 95 30 01  adc   a,$0130+x
0ffa: 1c        asl   a
0ffb: 90 02     bcc   $0fff
0ffd: 48 ff     eor   a,#$ff
0fff: fb c1     mov   y,$c1+x
1001: cf        mul   ya
1002: dd        mov   a,y
1003: 48 ff     eor   a,#$ff
1005: 03 05 08  bbs0  $05,$1010
1008: eb 01     mov   y,$01
100a: cf        mul   ya
100b: e4 5f     mov   a,$5f
100d: cf        mul   ya
100e: 2f 06     bra   $1016
1010: eb 02     mov   y,$02
1012: cf        mul   ya
1013: f4 d1     mov   a,$d1+x
1015: cf        mul   ya
1016: f5 10 02  mov   a,$0210+x
1019: cf        mul   ya
101a: f5 a1 02  mov   a,$02a1+x
101d: cf        mul   ya
101e: dd        mov   a,y
101f: cf        mul   ya
1020: dd        mov   a,y
1021: d5 c1 02  mov   $02c1+x,a
1024: 6f        ret

; echo FIR presets
1025: db $7f,$00,$00,$00,$00,$00,$00,$00
102d: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1035: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
103d: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1045: db $00,$7f,$98,$b2,$cb,$e5,$fc,$ff
104d: db $19,$32,$4c,$65,$72,$7f,$8c,$98
1055: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

105d: e3 e0 16  bbs7  $e0,$1076
1060: c2 03     set6  $03
1062: 3f 82 11  call  $1182
1065: cd 0c     mov   x,#$0c
1067: 3f 46 08  call  $0846
106a: fa e1 1a  mov   ($1a),($e1)
106d: 58 10 1a  eor   $1a,#$10
1070: 18 87 e0  or    $e0,#$87
1073: 5f cc 10  jmp   $10cc

1076: 6f        ret

1077: f3 e0 fc  bbc7  $e0,$1076
107a: d2 03     clr6  $03
107c: 3f 82 11  call  $1182
107f: 8f 00 3d  mov   $3d,#$00
1082: f2 e0     clr7  $e0
1084: 5f f1 10  jmp   $10f1

1087: 38 c0 e0  and   $e0,#$c0
108a: e5 f6 00  mov   a,$00f6
108d: 65 f6 00  cmp   a,$00f6
1090: d0 f8     bne   $108a
1092: fd        mov   y,a
1093: 10 0b     bpl   $10a0
1095: 64 e1     cmp   a,$e1
1097: f0 07     beq   $10a0
1099: fa e1 1a  mov   ($1a),($e1)
109c: c4 e1     mov   $e1,a
109e: 02 e0     set0  $e0
10a0: e5 f7 00  mov   a,$00f7
10a3: 65 f7 00  cmp   a,$00f7
10a6: d0 f8     bne   $10a0
10a8: fd        mov   y,a
10a9: 10 21     bpl   $10cc
10ab: 64 e2     cmp   a,$e2
10ad: f0 1d     beq   $10cc
10af: fa e2 1c  mov   ($1c),($e2)
10b2: c4 e2     mov   $e2,a
10b4: d3 e0 13  bbc6  $e0,$10ca
10b7: 28 3f     and   a,#$3f
10b9: 38 3f 1c  and   $1c,#$3f
10bc: 64 1c     cmp   a,$1c
10be: 90 0a     bcc   $10ca
10c0: f0 08     beq   $10ca
10c2: 02 e0     set0  $e0
10c4: fa e1 1a  mov   ($1a),($e1)
10c7: 58 40 e1  eor   $e1,#$40
10ca: 22 e0     set1  $e0
10cc: f3 e0 22  bbc7  $e0,$10f1
10cf: 13 e0 03  bbc0  $e0,$10d5
10d2: 3f 00 11  call  $1100
10d5: 33 e0 03  bbc1  $e0,$10db
10d8: 3f 45 11  call  $1145
10db: e4 e3     mov   a,$e3
10dd: f0 12     beq   $10f1
10df: 6e e3 0f  dbnz  $e3,$10f1
10e2: c2 00     set6  $00
10e4: d2 07     clr6  $07
10e6: 13 e1 02  bbc0  $e1,$10eb
10e9: c2 07     set6  $07
10eb: e4 7d     mov   a,$7d
10ed: f0 02     beq   $10f1
10ef: c2 4b     set6  $4b
10f1: 38 c0 e0  and   $e0,#$c0
10f4: e4 e1     mov   a,$e1
10f6: 28 3f     and   a,#$3f
10f8: 04 e0     or    a,$e0
10fa: c4 e0     mov   $e0,a
10fc: c5 f7 00  mov   $00f7,a
10ff: 6f        ret

1100: 38 7e 1a  and   $1a,#$7e
1103: e4 e1     mov   a,$e1
1105: 28 7e     and   a,#$7e
1107: 64 1a     cmp   a,$1a
1109: f0 2f     beq   $113a
110b: b3 e1 06  bbc5  $e1,$1114
110e: 8d 02     mov   y,#$02
1110: d2 e0     clr6  $e0
1112: 2f 14     bra   $1128
1114: 38 0e 1a  and   $1a,#$0e
1117: 28 0e     and   a,#$0e
1119: 64 1a     cmp   a,$1a
111b: d2 e0     clr6  $e0
111d: e4 e1     mov   a,$e1
111f: 28 1e     and   a,#$1e
1121: b0 04     bcs   $1127
1123: c2 e0     set6  $e0
1125: 08 20     or    a,#$20
1127: fd        mov   y,a
1128: f6 00 12  mov   a,$1200+y
112b: c4 3c     mov   $3c,a
112d: f6 01 12  mov   a,$1201+y
1130: c4 3d     mov   $3d,a
1132: 8f 03 7c  mov   $7c,#$03
1135: 8f 00 7d  mov   $7d,#$00
1138: 22 e0     set1  $e0
113a: e4 e3     mov   a,$e3
113c: d0 06     bne   $1144
113e: 8f 04 e3  mov   $e3,#$04
1141: 3f 82 11  call  $1182
1144: 6f        ret

1145: e4 e2     mov   a,$e2
1147: 28 3f     and   a,#$3f
1149: d3 e0 02  bbc6  $e0,$114e
114c: 08 40     or    a,#$40
114e: 8d 03     mov   y,#$03
1150: cf        mul   ya
1151: 8f 40 1a  mov   $1a,#$40
1154: 8f 12 1b  mov   $1b,#$12
1157: 7a 1a     addw  ya,$1a
1159: da 1a     movw  $1a,ya
115b: 8d 00     mov   y,#$00
115d: e5 0d 01  mov   a,$010d
1160: 80        setc
1161: a5 1d 02  sbc   a,$021d
1164: 60        clrc
1165: 97 1a     adc   a,($1a)+y
1167: c5 0d 01  mov   $010d,a
116a: f7 1a     mov   a,($1a)+y
116c: c5 1d 02  mov   $021d,a
116f: fc        inc   y
1170: f7 1a     mov   a,($1a)+y
1172: c5 2d 01  mov   $012d,a
1175: c5 0c 01  mov   $010c,a
1178: fc        inc   y
1179: f7 1a     mov   a,($1a)+y
117b: c4 dd     mov   $dd,a
117d: c2 11     set6  $11
117f: c2 64     set6  $64
1181: 6f        ret

1182: e8 40     mov   a,#$40
1184: 8d 5c     mov   y,#$5c
1186: cc f2 00  mov   $00f2,y
1189: c5 f3 00  mov   $00f3,a
118c: 6f        ret