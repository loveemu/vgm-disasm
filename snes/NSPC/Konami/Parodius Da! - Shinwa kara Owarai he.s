0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 e0     cmp   x,#$e0
040a: d0 fb     bne   $0407
040c: 8d 02     mov   y,#$02
040e: da 14     movw  $14,ya
0410: fd        mov   y,a
0411: d7 14     mov   ($14)+y,a
0413: fc        inc   y
0414: d0 fb     bne   $0411
0416: ab 15     inc   $15
0418: f8 15     mov   x,$15
041a: c8 04     cmp   x,#$04
041c: d0 f3     bne   $0411
041e: a2 48     set5  $48
0420: e4 48     mov   a,$48
0422: 8d 6c     mov   y,#$6c
0424: 3f 7e 07  call  $077e
0427: e8 00     mov   a,#$00
0429: 8d 6d     mov   y,#$6d
042b: 3f 7e 07  call  $077e
042e: 8d 7d     mov   y,#$7d
0430: 3f 7e 07  call  $077e
0433: 8d 4d     mov   y,#$4d
0435: 3f 7e 07  call  $077e
0438: 8d 0d     mov   y,#$0d
043a: 3f 7e 07  call  $077e
043d: 8d 2c     mov   y,#$2c
043f: 3f 7e 07  call  $077e
0442: 8d 3c     mov   y,#$3c
0444: 3f 7e 07  call  $077e
0447: 8d 71     mov   y,#$71
0449: e8 00     mov   a,#$00
044b: 3f 7e 07  call  $077e
044e: dc        dec   y
044f: 3f 7e 07  call  $077e
0452: dd        mov   a,y
0453: 80        setc
0454: a8 0f     sbc   a,#$0f
0456: fd        mov   y,a
0457: 10 f0     bpl   $0449
0459: e8 ff     mov   a,#$ff
045b: c4 46     mov   $46,a
045d: 8d 5c     mov   y,#$5c
045f: 3f 7e 07  call  $077e
0462: e8 7f     mov   a,#$7f
0464: 8d 0c     mov   y,#$0c
0466: 3f 7e 07  call  $077e
0469: 8d 1c     mov   y,#$1c
046b: 3f 7e 07  call  $077e
046e: e8 fe     mov   a,#$fe
0470: 8d 5d     mov   y,#$5d
0472: 3f 7e 07  call  $077e
0475: e8 21     mov   a,#$21
0477: c4 f1     mov   $f1,a
0479: e8 00     mov   a,#$00
047b: c4 06     mov   $06,a
047d: 8f 01 4e  mov   $4e,#$01
0480: 8f 00 4f  mov   $4f,#$00
0483: e8 f0     mov   a,#$f0
0485: c4 f1     mov   $f1,a
0487: e8 40     mov   a,#$40
0489: c4 fa     mov   $fa,a
048b: e8 01     mov   a,#$01
048d: c4 f1     mov   $f1,a
048f: 3f 36 05  call  $0536
0492: cb 45     mov   $45,y
0494: cb 46     mov   $46,y
0496: cb 1b     mov   $1b,y
0498: e8 01     mov   a,#$01
049a: c4 f1     mov   $f1,a
049c: e8 28     mov   a,#$28
049e: c4 fb     mov   $fb,a
04a0: e8 03     mov   a,#$03
04a2: c4 f1     mov   $f1,a
04a4: e4 fe     mov   a,$fe
04a6: d0 05     bne   $04ad
04a8: 3f 6e 05  call  $056e
04ab: 2f f7     bra   $04a4
04ad: eb fd     mov   y,$fd
04af: d0 05     bne   $04b6
04b1: 3f 6e 05  call  $056e
04b4: 2f f7     bra   $04ad
04b6: cb 43     mov   $43,y
04b8: cb f5     mov   $f5,y
04ba: 3f bd 07  call  $07bd
04bd: f0 0c     beq   $04cb
04bf: 0e 46 00  tset1 $0046
04c2: 4e 1d 00  tclr1 $001d
04c5: 0e 1b 00  tset1 $001b
04c8: 4e 1f 00  tclr1 $001f
04cb: e4 1a     mov   a,$1a
04cd: f0 0a     beq   $04d9
04cf: 8f 00 4b  mov   $4b,#$00
04d2: cd 0c     mov   x,#$0c
04d4: 8f 40 47  mov   $47,#$40
04d7: 2f 2d     bra   $0506
04d9: e4 4e     mov   a,$4e
04db: c4 47     mov   $47,a
04dd: e4 0b     mov   a,$0b
04df: f0 1f     beq   $0500
04e1: cd 3f     mov   x,#$3f
04e3: ab 0c     inc   $0c
04e5: e4 0c     mov   a,$0c
04e7: 68 03     cmp   a,#$03
04e9: d0 17     bne   $0502
04eb: 8f 00 0c  mov   $0c,#$00
04ee: ab 0d     inc   $0d
04f0: e4 0d     mov   a,$0d
04f2: d0 0e     bne   $0502
04f4: 3f 1b 08  call  $081b
04f7: 3f b3 07  call  $07b3
04fa: e8 00     mov   a,#$00
04fc: c4 0b     mov   $0b,a
04fe: c4 0d     mov   $0d,a
0500: cd 00     mov   x,#$00
0502: d8 4b     mov   $4b,x
0504: f8 4f     mov   x,$4f
0506: f5 e1 02  mov   a,$02e1+x
0509: f0 22     beq   $052d
050b: e4 47     mov   a,$47
050d: 24 1b     and   a,$1b
050f: d0 1c     bne   $052d
0511: d8 44     mov   $44,x
0513: eb 43     mov   y,$43
0515: f4 d1     mov   a,$d1+x
0517: cf        mul   ya
0518: 60        clrc
0519: 94 d0     adc   a,$d0+x
051b: d4 d0     mov   $d0+x,a
051d: dd        mov   a,y
051e: d0 02     bne   $0522
0520: 90 08     bcc   $052a
0522: 3f e3 09  call  $09e3
0525: 3f 8f 0d  call  $0d8f
0528: 2f 03     bra   $052d
052a: 3f 13 10  call  $1013
052d: 3d        inc   x
052e: 3d        inc   x
052f: 0b 47     asl   $47
0531: d0 d3     bne   $0506
0533: 5f 8f 04  jmp   $048f

0536: 8d 06     mov   y,#$06
0538: f6 cb 10  mov   a,$10cb+y
053b: c4 f2     mov   $f2,a
053d: f6 d1 10  mov   a,$10d1+y
0540: 5d        mov   x,a
0541: e6        mov   a,(x)
0542: c4 f3     mov   $f3,a
0544: fe f2     dbnz  y,$0538
0546: 6f        ret

0547: 3e 06     cmp   x,$06
0549: f0 20     beq   $056b
054b: 8f 01 4e  mov   $4e,#$01
054e: 8f 00 4f  mov   $4f,#$00
0551: c8 a5     cmp   x,#$a5
0553: d0 11     bne   $0566
0555: 4d        push  x
0556: 3f 1b 08  call  $081b
0559: 3f b3 07  call  $07b3
055c: 3f 36 05  call  $0536
055f: ce        pop   x
0560: 8f 40 4e  mov   $4e,#$40
0563: 8f 0c 4f  mov   $4f,#$0c
0566: d8 06     mov   $06,x
0568: 8f 80 07  mov   $07,#$80
056b: d8 f7     mov   $f7,x
056d: 6f        ret

056e: e5 ed 02  mov   a,$02ed
0571: 68 67     cmp   a,#$67
0573: 90 05     bcc   $057a
0575: 68 7d     cmp   a,#$7d
0577: b0 01     bcs   $057a
0579: 6f        ret

057a: f8 f7     mov   x,$f7
057c: 3e f7     cmp   x,$f7
057e: d0 ee     bne   $056e
0580: 3e 07     cmp   x,$07
0582: d0 c3     bne   $0547
0584: e4 f6     mov   a,$f6
0586: d8 f7     mov   $f7,x
0588: d8 06     mov   $06,x
058a: c8 80     cmp   x,#$80
058c: b0 0d     bcs   $059b
058e: 8d 00     mov   y,#$00
0590: d7 04     mov   ($04)+y,a
0592: 7d        mov   a,x
0593: bc        inc   a
0594: 28 7f     and   a,#$7f
0596: c4 07     mov   $07,a
0598: 3a 04     incw  $04
059a: 6f        ret

059b: d0 05     bne   $05a2
059d: c4 04     mov   $04,a
059f: 3d        inc   x
05a0: 2f 04     bra   $05a6
05a2: c4 05     mov   $05,a
05a4: cd 00     mov   x,#$00
05a6: d8 07     mov   $07,x
05a8: 6f        ret

05a9: 4d        push  x
05aa: 3f 21 08  call  $0821
05ad: 3f b3 07  call  $07b3
05b0: 3f 36 05  call  $0536
05b3: ce        pop   x
05b4: d8 f7     mov   $f7,x
05b6: 8d bb     mov   y,#$bb
05b8: cd 80     mov   x,#$80
05ba: 7e f7     cmp   y,$f7
05bc: f0 35     beq   $05f3
05be: 3e f7     cmp   x,$f7
05c0: d0 f8     bne   $05ba
05c2: e4 f6     mov   a,$f6
05c4: d8 f7     mov   $f7,x
05c6: cd 81     mov   x,#$81
05c8: 7e f7     cmp   y,$f7
05ca: f0 27     beq   $05f3
05cc: 3e f7     cmp   x,$f7
05ce: d0 f8     bne   $05c8
05d0: eb f6     mov   y,$f6
05d2: d8 f7     mov   $f7,x
05d4: da 04     movw  $04,ya
05d6: 8d 00     mov   y,#$00
05d8: dd        mov   a,y
05d9: 28 7f     and   a,#$7f
05db: cd bb     mov   x,#$bb
05dd: 3e f7     cmp   x,$f7
05df: f0 15     beq   $05f6
05e1: 64 f7     cmp   a,$f7
05e3: d0 f6     bne   $05db
05e5: 5d        mov   x,a
05e6: e4 f6     mov   a,$f6
05e8: d8 f7     mov   $f7,x
05ea: d7 04     mov   ($04)+y,a
05ec: fc        inc   y
05ed: d0 e9     bne   $05d8
05ef: ab 05     inc   $05
05f1: 2f e5     bra   $05d8
05f3: cb f7     mov   $f7,y
05f5: 6f        ret

05f6: d8 f7     mov   $f7,x
05f8: 6f        ret

05f9: db $0a,$00,$a4
05fb: db $08,$1a,$a6
05fd: db $0c,$06,$a8
05ff: db $0a,$0e,$ac
0601: db $08,$11,$af
0603: db $09,$10,$b0
0605: db $0a,$00,$a4
0607: db $08,$08,$97
0609: db $09,$08,$9f
060b: db $0b,$00,$8d
060d: db $0b,$0e,$a1
060f: db $09,$10,$a4
0611: db $0b,$00,$a4
0613: db $0b,$00,$a3
0615: db $0a,$00,$a4
0617: db $0a,$00,$a4
0619: db $0a,$00,$a4
061b: db $0a,$00,$a4

062f: ad ca     cmp   y,#$ca
0631: 90 2f     bcc   $0662
0633: 3f bc 0a  call  $0abc
0636: f5 11 02  mov   a,$0211+x
0639: 80        setc
063a: a8 ca     sbc   a,#$ca
063c: c4 1e     mov   $1e,a
063e: 1c        asl   a
063f: 84 1e     adc   a,$1e
0641: fd        mov   y,a
0642: e4 4c     mov   a,$4c
0644: 24 47     and   a,$47
0646: f0 0e     beq   $0656
0648: f6 f9 05  mov   a,$05f9+y
064b: d5 31 03  mov   $0331+x,a
064e: d5 51 03  mov   $0351+x,a
0651: e8 00     mov   a,#$00
0653: d5 30 03  mov   $0330+x,a
0656: f6 fa 05  mov   a,$05fa+y
0659: d5 f1 02  mov   $02f1+x,a
065c: f6 fb 05  mov   a,$05fb+y
065f: fd        mov   y,a
0660: 2f 30     bra   $0692
0662: e8 00     mov   a,#$00
0664: d5 f1 02  mov   $02f1+x,a
0667: ad c8     cmp   y,#$c8
0669: 90 01     bcc   $066c
066b: 6f        ret

066c: e4 49     mov   a,$49
066e: 24 47     and   a,$47
0670: f0 20     beq   $0692
0672: 38 e0 48  and   $48,#$e0
0675: dd        mov   a,y
0676: 28 1f     and   a,#$1f
0678: 04 48     or    a,$48
067a: c4 48     mov   $48,a
067c: 09 47 4b  or    ($4b),($47)
067f: e4 47     mov   a,$47
0681: 24 1f     and   a,$1f
0683: d0 e6     bne   $066b
0685: e8 00     mov   a,#$00
0687: d5 d0 02  mov   $02d0+x,a
068a: 09 47 45  or    ($45),($47)
068d: 09 47 1d  or    ($1d),($47)
0690: 2f d9     bra   $066b
0692: dd        mov   a,y
0693: 28 7f     and   a,#$7f
0695: 60        clrc
0696: 95 f0 02  adc   a,$02f0+x
0699: 60        clrc
069a: 95 90 03  adc   a,$0390+x
069d: d5 61 03  mov   $0361+x,a
06a0: f5 81 03  mov   a,$0381+x
06a3: 60        clrc
06a4: 95 91 03  adc   a,$0391+x
06a7: d5 60 03  mov   $0360+x,a
06aa: 90 07     bcc   $06b3
06ac: f5 61 03  mov   a,$0361+x
06af: bc        inc   a
06b0: d5 61 03  mov   $0361+x,a
06b3: f5 60 03  mov   a,$0360+x
06b6: 60        clrc
06b7: 95 50 02  adc   a,$0250+x
06ba: d5 60 03  mov   $0360+x,a
06bd: f5 61 03  mov   a,$0361+x
06c0: 95 51 02  adc   a,$0251+x
06c3: d5 61 03  mov   $0361+x,a
06c6: 09 47 4b  or    ($4b),($47)
06c9: e4 47     mov   a,$47
06cb: 24 1f     and   a,$1f
06cd: d0 1c     bne   $06eb
06cf: f5 b1 02  mov   a,$02b1+x
06d2: 5c        lsr   a
06d3: e8 00     mov   a,#$00
06d5: 7c        ror   a
06d6: d5 a0 02  mov   $02a0+x,a
06d9: e8 00     mov   a,#$00
06db: d4 b0     mov   $b0+x,a
06dd: d5 00 01  mov   $0100+x,a
06e0: d5 d0 02  mov   $02d0+x,a
06e3: d4 c0     mov   $c0+x,a
06e5: 09 47 45  or    ($45),($47)
06e8: 09 47 1d  or    ($1d),($47)
06eb: f5 80 02  mov   a,$0280+x
06ee: d4 a0     mov   $a0+x,a
06f0: f0 1e     beq   $0710
06f2: f5 81 02  mov   a,$0281+x
06f5: d4 a1     mov   $a1+x,a
06f7: f5 90 02  mov   a,$0290+x
06fa: d0 0a     bne   $0706
06fc: f5 61 03  mov   a,$0361+x
06ff: 80        setc
0700: b5 91 02  sbc   a,$0291+x
0703: d5 61 03  mov   $0361+x,a
0706: f5 91 02  mov   a,$0291+x
0709: 60        clrc
070a: 95 61 03  adc   a,$0361+x
070d: 3f f3 0c  call  $0cf3
0710: 3f 0b 0d  call  $0d0b
0713: 8d 00     mov   y,#$00
0715: e4 11     mov   a,$11
0717: 80        setc
0718: a8 34     sbc   a,#$34
071a: b0 09     bcs   $0725
071c: e4 11     mov   a,$11
071e: 80        setc
071f: a8 13     sbc   a,#$13
0721: b0 06     bcs   $0729
0723: dc        dec   y
0724: 1c        asl   a
0725: 7a 10     addw  ya,$10
0727: da 10     movw  $10,ya
0729: 4d        push  x
072a: e4 11     mov   a,$11
072c: 1c        asl   a
072d: 8d 00     mov   y,#$00
072f: cd 18     mov   x,#$18
0731: 9e        div   ya,x
0732: 5d        mov   x,a
0733: f6 d9 10  mov   a,$10d9+y
0736: c4 15     mov   $15,a
0738: f6 d8 10  mov   a,$10d8+y
073b: c4 14     mov   $14,a
073d: f6 db 10  mov   a,$10db+y
0740: 2d        push  a
0741: f6 da 10  mov   a,$10da+y
0744: ee        pop   y
0745: 9a 14     subw  ya,$14
0747: eb 10     mov   y,$10
0749: cf        mul   ya
074a: dd        mov   a,y
074b: 8d 00     mov   y,#$00
074d: 7a 14     addw  ya,$14
074f: cb 15     mov   $15,y
0751: 1c        asl   a
0752: 2b 15     rol   $15
0754: c4 14     mov   $14,a
0756: 2f 04     bra   $075c
0758: 4b 15     lsr   $15
075a: 7c        ror   a
075b: 3d        inc   x
075c: c8 06     cmp   x,#$06
075e: d0 f8     bne   $0758
0760: ce        pop   x
0761: c4 14     mov   $14,a
0763: 0b 14     asl   $14
0765: 2b 15     rol   $15
0767: 0b 14     asl   $14
0769: 2b 15     rol   $15
076b: ba 14     movw  ya,$14
076d: da 16     movw  $16,ya
076f: 7d        mov   a,x
0770: 9f        xcn   a
0771: 5c        lsr   a
0772: 08 02     or    a,#$02
0774: fd        mov   y,a
0775: e4 16     mov   a,$16
0777: cb f2     mov   $f2,y
0779: c4 f3     mov   $f3,a
077b: fc        inc   y
077c: e4 17     mov   a,$17
077e: cb f2     mov   $f2,y
0780: c4 f3     mov   $f3,a
0782: 6f        ret

0783: 8d 00     mov   y,#$00
0785: f7 40     mov   a,($40)+y
0787: 3a 40     incw  $40
0789: 2d        push  a
078a: f7 40     mov   a,($40)+y
078c: 3a 40     incw  $40
078e: fd        mov   y,a
078f: ae        pop   a
0790: 6f        ret

0791: e8 20     mov   a,#$20
0793: d4 d1     mov   $d1+x,a
0795: f5 e1 02  mov   a,$02e1+x
0798: 68 80     cmp   a,#$80
079a: b0 09     bcs   $07a5
079c: e8 00     mov   a,#$00
079e: d5 e1 02  mov   $02e1+x,a
07a1: e4 47     mov   a,$47
07a3: 2f 0e     bra   $07b3
07a5: 4d        push  x
07a6: 68 a0     cmp   a,#$a0
07a8: b0 05     bcs   $07af
07aa: 3f 1b 08  call  $081b
07ad: 2f 03     bra   $07b2
07af: 3f 21 08  call  $0821
07b2: ce        pop   x
07b3: 0e 46 00  tset1 $0046
07b6: 4e 1d 00  tclr1 $001d
07b9: 4e 1f 00  tclr1 $001f
07bc: 6f        ret

07bd: e4 f4     mov   a,$f4
07bf: 64 f4     cmp   a,$f4
07c1: d0 fa     bne   $07bd
07c3: 68 00     cmp   a,#$00
07c5: f0 f5     beq   $07bc
07c7: c4 f4     mov   $f4,a
07c9: 8d 11     mov   y,#$11
07cb: cb f1     mov   $f1,y
07cd: 8d 00     mov   y,#$00
07cf: 68 7f     cmp   a,#$7f
07d1: f0 38     beq   $080b
07d3: 68 f0     cmp   a,#$f0
07d5: 90 5b     bcc   $0832
07d7: f0 19     beq   $07f2
07d9: 68 f1     cmp   a,#$f1
07db: f0 1f     beq   $07fc
07dd: 68 fa     cmp   a,#$fa
07df: f0 2d     beq   $080e
07e1: 68 fb     cmp   a,#$fb
07e3: f0 28     beq   $080d
07e5: 68 fc     cmp   a,#$fc
07e7: f0 2a     beq   $0813
07e9: 68 fd     cmp   a,#$fd
07eb: f0 2e     beq   $081b
07ed: 68 fe     cmp   a,#$fe
07ef: f0 30     beq   $0821
07f1: 6f        ret

07f2: e8 3f     mov   a,#$3f
07f4: c4 46     mov   $46,a
07f6: c4 1a     mov   $1a,a
07f8: e8 7f     mov   a,#$7f
07fa: 2f 36     bra   $0832
07fc: cb 1a     mov   $1a,y
07fe: e4 1d     mov   a,$1d
0800: e9 e1 02  mov   x,$02e1
0803: c8 a0     cmp   x,#$a0
0805: b0 02     bcs   $0809
0807: 28 3f     and   a,#$3f
0809: c4 45     mov   $45,a
080b: dd        mov   a,y
080c: 6f        ret

080d: dd        mov   a,y
080e: c4 19     mov   $19,a
0810: e8 00     mov   a,#$00
0812: 6f        ret

0813: cb 0c     mov   $0c,y
0815: fc        inc   y
0816: cb 0b     mov   $0b,y
0818: dc        dec   y
0819: 2f f0     bra   $080b
081b: cd 0a     mov   x,#$0a
081d: 8d 3f     mov   y,#$3f
081f: 2f 04     bra   $0825
0821: cd 0e     mov   x,#$0e
0823: 8d ff     mov   y,#$ff
0825: e8 00     mov   a,#$00
0827: c4 1a     mov   $1a,a
0829: d5 e1 02  mov   $02e1+x,a
082c: 1d        dec   x
082d: 1d        dec   x
082e: 10 f9     bpl   $0829
0830: dd        mov   a,y
0831: 6f        ret

0832: 68 40     cmp   a,#$40
0834: b0 55     bcs   $088b
0836: cd 01     mov   x,#$01
0838: 68 15     cmp   a,#$15
083a: f0 04     beq   $0840
083c: 68 0a     cmp   a,#$0a
083e: d0 0a     bne   $084a
0840: 65 ed 02  cmp   a,$02ed
0843: f0 43     beq   $0888
0845: 65 ef 02  cmp   a,$02ef
0848: f0 3e     beq   $0888
084a: 65 ed 02  cmp   a,$02ed
084d: f0 1a     beq   $0869
084f: 65 ef 02  cmp   a,$02ef
0852: f0 27     beq   $087b
0854: 68 31     cmp   a,#$31
0856: f0 1e     beq   $0876
0858: 68 33     cmp   a,#$33
085a: f0 08     beq   $0864
085c: ec ed 02  mov   y,$02ed
085f: 5e ef 02  cmp   y,$02ef
0862: b0 12     bcs   $0876
0864: 65 ed 02  cmp   a,$02ed
0867: 90 6f     bcc   $08d8
0869: 8d 0c     mov   y,#$0c
086b: 8f 40 47  mov   $47,#$40
086e: 3f db 08  call  $08db
0871: f0 02     beq   $0875
0873: e4 47     mov   a,$47
0875: 6f        ret

0876: 65 ef 02  cmp   a,$02ef
0879: 90 5d     bcc   $08d8
087b: 8d 0e     mov   y,#$0e
087d: 8f 80 47  mov   $47,#$80
0880: 3f db 08  call  $08db
0883: f0 02     beq   $0887
0885: e4 47     mov   a,$47
0887: 6f        ret

0888: e8 00     mov   a,#$00
088a: 6f        ret

088b: 68 80     cmp   a,#$80
088d: b0 22     bcs   $08b1
088f: cd 02     mov   x,#$02
0891: 8d 0c     mov   y,#$0c
0893: 76 e1 02  cmp   a,$02e1+y
0896: b0 11     bcs   $08a9
0898: 68 65     cmp   a,#$65
089a: 90 3c     bcc   $08d8
089c: 68 77     cmp   a,#$77
089e: b0 38     bcs   $08d8
08a0: 2d        push  a
08a1: f6 e1 02  mov   a,$02e1+y
08a4: 68 77     cmp   a,#$77
08a6: ae        pop   a
08a7: b0 2f     bcs   $08d8
08a9: 3f db 08  call  $08db
08ac: f0 02     beq   $08b0
08ae: e8 c0     mov   a,#$c0
08b0: 6f        ret

08b1: 68 a0     cmp   a,#$a0
08b3: b0 10     bcs   $08c5
08b5: 68 88     cmp   a,#$88
08b7: b0 1f     bcs   $08d8
08b9: cd 06     mov   x,#$06
08bb: 8d 00     mov   y,#$00
08bd: 3f db 08  call  $08db
08c0: f0 02     beq   $08c4
08c2: e8 3f     mov   a,#$3f
08c4: 6f        ret

08c5: 68 a6     cmp   a,#$a6
08c7: b0 0f     bcs   $08d8
08c9: cd 08     mov   x,#$08
08cb: 8d 00     mov   y,#$00
08cd: 3f db 08  call  $08db
08d0: f0 02     beq   $08d4
08d2: e8 ff     mov   a,#$ff
08d4: 6f        ret

08d5: ce        pop   x
08d6: ee        pop   y
08d7: ae        pop   a
08d8: e8 00     mov   a,#$00
08da: 6f        ret

08db: 2d        push  a
08dc: 6d        push  y
08dd: 4d        push  x
08de: 1c        asl   a
08df: 90 35     bcc   $0916
08e1: 5d        mov   x,a
08e2: f5 09 12  mov   a,$1209+x
08e5: f0 ee     beq   $08d5
08e7: fd        mov   y,a
08e8: f5 08 12  mov   a,$1208+x
08eb: da 40     movw  $40,ya
08ed: 3f 83 07  call  $0783
08f0: da 16     movw  $16,ya
08f2: ce        pop   x
08f3: ee        pop   y
08f4: ae        pop   a
08f5: d6 e1 02  mov   $02e1+y,a
08f8: 2d        push  a
08f9: 3f 3e 09  call  $093e
08fc: 3f 8a 09  call  $098a
08ff: ae        pop   a
0900: 1d        dec   x
0901: d0 f2     bne   $08f5
0903: e4 19     mov   a,$19
0905: f0 02     beq   $0909
0907: e8 00     mov   a,#$00
0909: c4 4c     mov   $4c,a
090b: e8 00     mov   a,#$00
090d: c4 42     mov   $42,a
090f: c4 0b     mov   $0b,a
0911: c4 0d     mov   $0d,a
0913: 5f 87 09  jmp   $0987

0916: cb 15     mov   $15,y
0918: 5d        mov   x,a
0919: f5 09 11  mov   a,$1109+x
091c: f0 b7     beq   $08d5
091e: fd        mov   y,a
091f: f5 08 11  mov   a,$1108+x
0922: 80        setc
0923: a4 15     sbc   a,$15
0925: b0 01     bcs   $0928
0927: dc        dec   y
0928: da 16     movw  $16,ya
092a: ce        pop   x
092b: ee        pop   y
092c: ae        pop   a
092d: d6 e1 02  mov   $02e1+y,a
0930: 2d        push  a
0931: 3f 3e 09  call  $093e
0934: 3f 8a 09  call  $098a
0937: ae        pop   a
0938: 1d        dec   x
0939: d0 f2     bne   $092d
093b: 5f 87 09  jmp   $0987

093e: e8 ff     mov   a,#$ff
0940: d6 01 03  mov   $0301+y,a
0943: d6 d0 00  mov   $00d0+y,a
0946: e8 0a     mov   a,#$0a
0948: d6 51 03  mov   $0351+y,a
094b: d6 31 03  mov   $0331+y,a
094e: e8 00     mov   a,#$00
0950: d6 30 03  mov   $0330+y,a
0953: d6 81 03  mov   $0381+y,a
0956: d6 f0 02  mov   $02f0+y,a
0959: d6 80 02  mov   $0280+y,a
095c: d6 b1 00  mov   $00b1+y,a
095f: d6 c1 00  mov   $00c1+y,a
0962: d6 81 00  mov   $0081+y,a
0965: d6 01 01  mov   $0101+y,a
0968: d6 50 02  mov   $0250+y,a
096b: d6 51 02  mov   $0251+y,a
096e: d6 71 02  mov   $0271+y,a
0971: d6 80 00  mov   $0080+y,a
0974: d6 90 00  mov   $0090+y,a
0977: d6 91 00  mov   $0091+y,a
097a: bc        inc   a
097b: d6 70 00  mov   $0070+y,a
097e: d6 01 02  mov   $0201+y,a
0981: e8 20     mov   a,#$20
0983: d6 d1 00  mov   $00d1+y,a
0986: 6f        ret

0987: e8 01     mov   a,#$01
0989: 6f        ret

098a: f7 16     mov   a,($16)+y
098c: d6 30 00  mov   $0030+y,a
098f: fc        inc   y
0990: f7 16     mov   a,($16)+y
0992: d6 30 00  mov   $0030+y,a
0995: fc        inc   y
0996: 6f        ret

0997: 3f 83 07  call  $0783
099a: d0 19     bne   $09b5
099c: fd        mov   y,a
099d: d0 03     bne   $09a2
099f: 5f 91 07  jmp   $0791

09a2: 8b 42     dec   $42
09a4: 10 02     bpl   $09a8
09a6: c4 42     mov   $42,a
09a8: 3f 83 07  call  $0783
09ab: 2d        push  a
09ac: e4 42     mov   a,$42
09ae: ae        pop   a
09af: f0 e6     beq   $0997
09b1: da 40     movw  $40,ya
09b3: 2f e2     bra   $0997
09b5: da 16     movw  $16,ya
09b7: f5 e1 02  mov   a,$02e1+x
09ba: 68 a0     cmp   a,#$a0
09bc: e8 10     mov   a,#$10
09be: b0 02     bcs   $09c2
09c0: e8 0c     mov   a,#$0c
09c2: c4 1e     mov   $1e,a
09c4: 8d 00     mov   y,#$00
09c6: e8 00     mov   a,#$00
09c8: d6 80 00  mov   $0080+y,a
09cb: d6 90 00  mov   $0090+y,a
09ce: d6 91 00  mov   $0091+y,a
09d1: bc        inc   a
09d2: d6 70 00  mov   $0070+y,a
09d5: 3f 8a 09  call  $098a
09d8: 7e 1e     cmp   y,$1e
09da: d0 ea     bne   $09c6
09dc: cd 00     mov   x,#$00
09de: d8 4b     mov   $4b,x
09e0: 8f 01 47  mov   $47,#$01
09e3: 9b 70     dec   $70+x
09e5: f0 03     beq   $09ea
09e7: 5f 6d 0a  jmp   $0a6d

09ea: 3f 8b 0a  call  $0a8b
09ed: fd        mov   y,a
09ee: d0 1f     bne   $0a0f
09f0: f4 80     mov   a,$80+x
09f2: d0 0a     bne   $09fe
09f4: f5 e1 02  mov   a,$02e1+x
09f7: 68 80     cmp   a,#$80
09f9: b0 9c     bcs   $0997
09fb: 5f 91 07  jmp   $0791

09fe: 3f 7d 0c  call  $0c7d
0a01: 9b 80     dec   $80+x
0a03: d0 e5     bne   $09ea
0a05: f4 50     mov   a,$50+x
0a07: d4 30     mov   $30+x,a
0a09: f4 51     mov   a,$51+x
0a0b: d4 31     mov   $31+x,a
0a0d: 2f db     bra   $09ea
0a0f: 30 25     bmi   $0a36
0a11: d5 00 02  mov   $0200+x,a
0a14: 3f 8b 0a  call  $0a8b
0a17: fd        mov   y,a
0a18: 30 1c     bmi   $0a36
0a1a: 2d        push  a
0a1b: 9f        xcn   a
0a1c: 28 07     and   a,#$07
0a1e: fd        mov   y,a
0a1f: f6 f2 10  mov   a,$10f2+y
0a22: d5 01 02  mov   $0201+x,a
0a25: ae        pop   a
0a26: 28 0f     and   a,#$0f
0a28: fd        mov   y,a
0a29: f6 fa 10  mov   a,$10fa+y
0a2c: 60        clrc
0a2d: 95 01 01  adc   a,$0101+x
0a30: d5 10 02  mov   $0210+x,a
0a33: 3f 8b 0a  call  $0a8b
0a36: 68 e0     cmp   a,#$e0
0a38: 90 05     bcc   $0a3f
0a3a: 3f 74 0a  call  $0a74
0a3d: 2f ab     bra   $09ea
0a3f: fd        mov   y,a
0a40: 3f 2f 06  call  $062f
0a43: f5 01 02  mov   a,$0201+x
0a46: d0 0b     bne   $0a53
0a48: e4 1f     mov   a,$1f
0a4a: 24 47     and   a,$47
0a4c: d0 0d     bne   $0a5b
0a4e: 09 47 1f  or    ($1f),($47)
0a51: 2f 08     bra   $0a5b
0a53: e4 47     mov   a,$47
0a55: 48 ff     eor   a,#$ff
0a57: 24 1f     and   a,$1f
0a59: c4 1f     mov   $1f,a
0a5b: f5 00 02  mov   a,$0200+x
0a5e: d4 70     mov   $70+x,a
0a60: fd        mov   y,a
0a61: f5 01 02  mov   a,$0201+x
0a64: f0 01     beq   $0a67
0a66: bc        inc   a
0a67: cf        mul   ya
0a68: dd        mov   a,y
0a69: d4 71     mov   $71+x,a
0a6b: 2f 03     bra   $0a70
0a6d: 3f 63 0e  call  $0e63
0a70: 3f d2 0c  call  $0cd2
0a73: 6f        ret

0a74: 1c        asl   a
0a75: fd        mov   y,a
0a76: f6 73 0c  mov   a,$0c73+y
0a79: 2d        push  a
0a7a: f6 72 0c  mov   a,$0c72+y
0a7d: 2d        push  a
0a7e: dd        mov   a,y
0a7f: 5c        lsr   a
0a80: fd        mov   y,a
0a81: f6 10 0d  mov   a,$0d10+y
0a84: f0 0d     beq   $0a93
0a86: 3f 8b 0a  call  $0a8b
0a89: fd        mov   y,a
0a8a: 6f        ret

0a8b: e7 30     mov   a,($30+x)
0a8d: bb 30     inc   $30+x
0a8f: d0 02     bne   $0a93
0a91: bb 31     inc   $31+x
0a93: 6f        ret

0a94: db $09,$fd,$fe,$fd,$fd,$fd,$f6,$fd,$f7,$07,$fd,$fb,$fd,$fd,$fe,$fb,$00,$fb,$00,$ff
0aa8: db $b2,$be,$c3,$af,$b2,$b3,$38,$b2,$e1,$06,$b4,$0a,$b4,$b4,$dc,$0a,$05,$08,$0a,$05

; vcmd e0
0abc: d5 11 02  mov   $0211+x,a
0abf: fd        mov   y,a
0ac0: 30 15     bmi   $0ad7
0ac2: 2d        push  a
0ac3: 4d        push  x
0ac4: 5d        mov   x,a
0ac5: f5 94 0a  mov   a,$0a94+x
0ac8: fd        mov   y,a
0ac9: f5 a8 0a  mov   a,$0aa8+x
0acc: ce        pop   x
0acd: d5 91 03  mov   $0391+x,a
0ad0: dd        mov   a,y
0ad1: d5 90 03  mov   $0390+x,a
0ad4: ae        pop   a
0ad5: 2f 10     bra   $0ae7
0ad7: 2d        push  a
0ad8: e8 00     mov   a,#$00
0ada: d5 91 03  mov   $0391+x,a
0add: d5 90 03  mov   $0390+x,a
0ae0: ae        pop   a
0ae1: 80        setc
0ae2: a8 ca     sbc   a,#$ca
0ae4: 60        clrc
0ae5: 88 14     adc   a,#$14
0ae7: 8d 06     mov   y,#$06
0ae9: cf        mul   ya
0aea: da 14     movw  $14,ya
0aec: 60        clrc
0aed: 98 68 14  adc   $14,#$68
0af0: 98 12 15  adc   $15,#$12
0af3: 4d        push  x
0af4: 7d        mov   a,x
0af5: 9f        xcn   a
0af6: 5c        lsr   a
0af7: 08 04     or    a,#$04
0af9: 5d        mov   x,a
0afa: 8d 00     mov   y,#$00
0afc: f7 14     mov   a,($14)+y
0afe: 10 0e     bpl   $0b0e
0b00: 28 1f     and   a,#$1f
0b02: 38 20 48  and   $48,#$20
0b05: 0e 48 00  tset1 $0048
0b08: 09 47 49  or    ($49),($47)
0b0b: dd        mov   a,y
0b0c: 2f 07     bra   $0b15
0b0e: e4 47     mov   a,$47
0b10: 4e 49 00  tclr1 $0049
0b13: f7 14     mov   a,($14)+y
0b15: d8 f2     mov   $f2,x
0b17: c4 f3     mov   $f3,a
0b19: 3d        inc   x
0b1a: fc        inc   y
0b1b: ad 04     cmp   y,#$04
0b1d: d0 f4     bne   $0b13
0b1f: ce        pop   x
0b20: f7 14     mov   a,($14)+y
0b22: d5 21 02  mov   $0221+x,a
0b25: fc        inc   y
0b26: f7 14     mov   a,($14)+y
0b28: d5 20 02  mov   $0220+x,a
0b2b: 6f        ret

; vcmd e1
0b2c: eb 19     mov   y,$19
0b2e: d0 23     bne   $0b53
0b30: 68 ff     cmp   a,#$ff
0b32: f0 04     beq   $0b38
0b34: 30 09     bmi   $0b3f
0b36: 2f 0e     bra   $0b46
0b38: e4 47     mov   a,$47
0b3a: 0e 4c 00  tset1 $004c
0b3d: 2f 05     bra   $0b44
0b3f: e4 47     mov   a,$47
0b41: 4e 4c 00  tclr1 $004c
0b44: e8 0a     mov   a,#$0a
0b46: d5 51 03  mov   $0351+x,a
0b49: 28 1f     and   a,#$1f
0b4b: d5 31 03  mov   $0331+x,a
0b4e: e8 00     mov   a,#$00
0b50: d5 30 03  mov   $0330+x,a
0b53: 6f        ret

; vcmd e2
0b54: eb 19     mov   y,$19
0b56: f0 03     beq   $0b5b
0b58: 5f 8b 0a  jmp   $0a8b

0b5b: d4 91     mov   $91+x,a
0b5d: 2d        push  a
0b5e: 3f 8b 0a  call  $0a8b
0b61: d5 50 03  mov   $0350+x,a
0b64: 80        setc
0b65: b5 31 03  sbc   a,$0331+x
0b68: ce        pop   x
0b69: 3f 16 0d  call  $0d16
0b6c: d5 40 03  mov   $0340+x,a
0b6f: dd        mov   a,y
0b70: d5 41 03  mov   $0341+x,a
0b73: 6f        ret

; vcmd e3
0b74: d5 b0 02  mov   $02b0+x,a
0b77: 3f 8b 0a  call  $0a8b
0b7a: d5 a1 02  mov   $02a1+x,a
0b7d: 3f 8b 0a  call  $0a8b
0b80: d4 b1     mov   $b1+x,a
0b82: d5 c1 02  mov   $02c1+x,a
0b85: e8 00     mov   a,#$00
0b87: d5 b1 02  mov   $02b1+x,a
0b8a: 6f        ret

; vcmd f0
0b8b: d5 b1 02  mov   $02b1+x,a
0b8e: 2d        push  a
0b8f: 8d 00     mov   y,#$00
0b91: f4 b1     mov   a,$b1+x
0b93: ce        pop   x
0b94: 9e        div   ya,x
0b95: f8 44     mov   x,$44
0b97: d5 c0 02  mov   $02c0+x,a
0b9a: 6f        ret

; vcmd e4
0b9b: d5 70 02  mov   $0270+x,a
0b9e: 3f 8b 0a  call  $0a8b
0ba1: d5 71 02  mov   $0271+x,a
0ba4: e8 00     mov   a,#$00
0ba6: d4 20     mov   $20+x,a
0ba8: d4 21     mov   $21+x,a
0baa: 6f        ret

; vcmd e5
0bab: f4 30     mov   a,$30+x
0bad: d5 60 02  mov   $0260+x,a
0bb0: f4 31     mov   a,$31+x
0bb2: d5 61 02  mov   $0261+x,a
0bb5: e8 00     mov   a,#$00
0bb7: d4 81     mov   $81+x,a
0bb9: 6f        ret

; vcmd e6
0bba: bb 81     inc   $81+x
0bbc: 74 81     cmp   a,$81+x
0bbe: f0 39     beq   $0bf9
0bc0: 3f 8b 0a  call  $0a8b
0bc3: 60        clrc
0bc4: 95 01 01  adc   a,$0101+x
0bc7: d5 01 01  mov   $0101+x,a
0bca: 3f 8b 0a  call  $0a8b
0bcd: 8d 00     mov   y,#$00
0bcf: 1c        asl   a
0bd0: 90 01     bcc   $0bd3
0bd2: dc        dec   y
0bd3: cb 1e     mov   $1e,y
0bd5: 1c        asl   a
0bd6: 2b 1e     rol   $1e
0bd8: 1c        asl   a
0bd9: 2b 1e     rol   $1e
0bdb: 1c        asl   a
0bdc: 2b 1e     rol   $1e
0bde: eb 1e     mov   y,$1e
0be0: 60        clrc
0be1: 95 50 02  adc   a,$0250+x
0be4: d5 50 02  mov   $0250+x,a
0be7: dd        mov   a,y
0be8: 95 51 02  adc   a,$0251+x
0beb: d5 51 02  mov   $0251+x,a
0bee: f5 60 02  mov   a,$0260+x
0bf1: d4 30     mov   $30+x,a
0bf3: f5 61 02  mov   a,$0261+x
0bf6: d4 31     mov   $31+x,a
0bf8: 6f        ret

0bf9: e8 00     mov   a,#$00
0bfb: d4 81     mov   $81+x,a
0bfd: d5 01 01  mov   $0101+x,a
0c00: d5 50 02  mov   $0250+x,a
0c03: d5 51 02  mov   $0251+x,a
0c06: 3f 8d 0a  call  $0a8d
0c09: 5f 8d 0a  jmp   $0a8d

; vcmd e7
0c0c: 1c        asl   a
0c0d: d5 d1 00  mov   $00d1+x,a
; vcmd e8
0c10: 6f        ret

; vcmd e9
0c11: 6f        ret

; vcmd ea
0c12: d5 f0 02  mov   $02f0+x,a
0c15: 6f        ret

; vcmd eb
0c16: d5 e0 02  mov   $02e0+x,a
0c19: 3f 8b 0a  call  $0a8b
0c1c: d5 d1 02  mov   $02d1+x,a
0c1f: 3f 8b 0a  call  $0a8b
; vcmd ec
0c22: d4 c1     mov   $c1+x,a
0c24: 6f        ret

; vcmd f1
0c25: e8 01     mov   a,#$01
0c27: 2f 02     bra   $0c2b
; vcmd f2
0c29: e8 00     mov   a,#$00
0c2b: d5 90 02  mov   $0290+x,a
0c2e: dd        mov   a,y
0c2f: d5 81 02  mov   $0281+x,a
0c32: 3f 8b 0a  call  $0a8b
0c35: d5 80 02  mov   $0280+x,a
0c38: 3f 8b 0a  call  $0a8b
0c3b: d5 91 02  mov   $0291+x,a
0c3e: 6f        ret

; vcmd f3
0c3f: d5 80 02  mov   $0280+x,a
0c42: 6f        ret

; vcmd ed
0c43: d5 01 03  mov   $0301+x,a
0c46: e8 00     mov   a,#$00
0c48: d5 00 03  mov   $0300+x,a
0c4b: 6f        ret

; vcmd ee
0c4c: d4 90     mov   $90+x,a
0c4e: 2d        push  a
0c4f: 3f 8b 0a  call  $0a8b
0c52: d5 20 03  mov   $0320+x,a
0c55: 80        setc
0c56: b5 01 03  sbc   a,$0301+x
0c59: ce        pop   x
0c5a: 3f 16 0d  call  $0d16
0c5d: d5 10 03  mov   $0310+x,a
0c60: dd        mov   a,y
0c61: d5 11 03  mov   $0311+x,a
0c64: 6f        ret

; vcmd f4
0c65: d5 81 03  mov   $0381+x,a
0c68: 6f        ret

; vcmd ef
0c69: d4 60     mov   $60+x,a
0c6b: 3f 8b 0a  call  $0a8b
0c6e: d4 61     mov   $61+x,a
0c70: 3f 8b 0a  call  $0a8b
0c73: d4 80     mov   $80+x,a
0c75: f4 30     mov   a,$30+x
0c77: d4 50     mov   $50+x,a
0c79: f4 31     mov   a,$31+x
0c7b: d4 51     mov   $51+x,a
0c7d: f4 60     mov   a,$60+x
0c7f: d4 30     mov   $30+x,a
0c81: f4 61     mov   a,$61+x
0c83: d4 31     mov   $31+x,a
0c85: 6f        ret

; vcmd f5-f8
0c86: a2 48     set5  $48
0c88: 6f        ret

; vcmd fa
0c89: 6f        ret

; vcmd fb
0c8a: 8d 00     mov   y,#$00
0c8c: 68 a0     cmp   a,#$a0
0c8e: b0 10     bcs   $0ca0
0c90: 4d        push  x
0c91: cd 0a     mov   x,#$0a
0c93: 9e        div   ya,x
0c94: c4 1e     mov   $1e,a
0c96: dd        mov   a,y
0c97: 28 07     and   a,#$07
0c99: 9f        xcn   a
0c9a: 04 1e     or    a,$1e
0c9c: 08 80     or    a,#$80
0c9e: fd        mov   y,a
0c9f: ce        pop   x
0ca0: 4d        push  x
0ca1: 7d        mov   a,x
0ca2: 9f        xcn   a
0ca3: 5c        lsr   a
0ca4: 08 05     or    a,#$05
0ca6: 5d        mov   x,a
0ca7: dd        mov   a,y
0ca8: d8 f2     mov   $f2,x
0caa: c4 f3     mov   $f3,a
0cac: 4d        push  x
0cad: ee        pop   y
0cae: ce        pop   x
0caf: fc        inc   y
0cb0: 3f 8b 0a  call  $0a8b
0cb3: cb f2     mov   $f2,y
0cb5: 4d        push  x
0cb6: 6d        push  y
0cb7: 8d 00     mov   y,#$00
0cb9: cd 1e     mov   x,#$1e
0cbb: 9e        div   ya,x
0cbc: fc        inc   y
0cbd: fc        inc   y
0cbe: cb 1e     mov   $1e,y
0cc0: 9f        xcn   a
0cc1: 1c        asl   a
0cc2: 04 1e     or    a,$1e
0cc4: ee        pop   y
0cc5: ce        pop   x
0cc6: c4 f3     mov   $f3,a
0cc8: fc        inc   y
0cc9: 3f 8b 0a  call  $0a8b
0ccc: cb f2     mov   $f2,y
0cce: c4 f3     mov   $f3,a
0cd0: 6f        ret

; vcmd fc-fe
0cd1: 6f        ret

0cd2: f4 a0     mov   a,$a0+x
0cd4: d0 34     bne   $0d0a
0cd6: e7 30     mov   a,($30+x)
0cd8: 68 f9     cmp   a,#$f9
0cda: d0 2e     bne   $0d0a
0cdc: 3f 8d 0a  call  $0a8d
0cdf: 3f 8b 0a  call  $0a8b
; vcmd f9
0ce2: d4 a1     mov   $a1+x,a
0ce4: 3f 8b 0a  call  $0a8b
0ce7: d4 a0     mov   $a0+x,a
0ce9: 3f 8b 0a  call  $0a8b
0cec: 60        clrc
0ced: 95 f0 02  adc   a,$02f0+x
0cf0: 95 90 03  adc   a,$0390+x
0cf3: 28 7f     and   a,#$7f
0cf5: d5 80 03  mov   $0380+x,a
0cf8: 80        setc
0cf9: b5 61 03  sbc   a,$0361+x
0cfc: fb a0     mov   y,$a0+x
0cfe: 6d        push  y
0cff: ce        pop   x
0d00: 3f 16 0d  call  $0d16
0d03: d5 70 03  mov   $0370+x,a
0d06: dd        mov   a,y
0d07: d5 71 03  mov   $0371+x,a
0d0a: 6f        ret

0d0b: f5 61 03  mov   a,$0361+x
0d0e: c4 11     mov   $11,a
0d10: f5 60 03  mov   a,$0360+x
0d13: c4 10     mov   $10,a
0d15: 6f        ret

0d16: ed        notc
0d17: 6b 12     ror   $12
0d19: 10 03     bpl   $0d1e
0d1b: 48 ff     eor   a,#$ff
0d1d: bc        inc   a
0d1e: 8d 00     mov   y,#$00
0d20: 9e        div   ya,x
0d21: 2d        push  a
0d22: e8 00     mov   a,#$00
0d24: 9e        div   ya,x
0d25: ee        pop   y
0d26: f8 44     mov   x,$44
0d28: f3 12 06  bbc7  $12,$0d31
0d2b: da 14     movw  $14,ya
0d2d: ba 0e     movw  ya,$0e
0d2f: 9a 14     subw  ya,$14
0d31: 6f        ret

; vcmd dispatch table ($0c72+y)
0d32: dw $0abc  ; e0
0d34: dw $0b2c  ; e1
0d36: dw $0b54  ; e2
0d38: dw $0b74  ; e3
0d3a: dw $0b9b  ; e4
0d3c: dw $0bab  ; e5
0d3e: dw $0bba  ; e6
0d40: dw $0c0c  ; e7
0d42: dw $0c10  ; e8
0d44: dw $0c11  ; e9
0d46: dw $0c12  ; ea
0d48: dw $0c16  ; eb
0d4a: dw $0c22  ; ec
0d4c: dw $0c43  ; ed
0d4e: dw $0c4c  ; ee
0d50: dw $0c69  ; ef
0d52: dw $0b8b  ; f0
0d54: dw $0c25  ; f1
0d56: dw $0c29  ; f2
0d58: dw $0c3f  ; f3
0d5a: dw $0c65  ; f4
0d5c: dw $0c86  ; f5
0d5e: dw $0c86  ; f6
0d60: dw $0c86  ; f7
0d62: dw $0c86  ; f8
0d64: dw $0ce2  ; f9
0d66: dw $0c89  ; fa
0d68: dw $0c8a  ; fb
0d6a: dw $0cd1  ; fc
0d6c: dw $0cd1  ; fd
0d6e: dw $0cd1  ; fe

; vcmd length table ($0d10+y)
0d70: db $01,$01,$02,$03,$02,$00,$03,$01
0d78: db $02,$01,$01,$03,$00,$01,$02,$03
0d80: db $01,$03,$03,$00,$01,$03,$00,$03
0d88: db $03,$03,$01,$03,$00,$00,$00

0d8f: f4 90     mov   a,$90+x
0d91: f0 09     beq   $0d9c
0d93: e8 00     mov   a,#$00
0d95: 8d 03     mov   y,#$03
0d97: 9b 90     dec   $90+x
0d99: 3f 3f 0e  call  $0e3f
0d9c: fb c1     mov   y,$c1+x
0d9e: f0 23     beq   $0dc3
0da0: f5 e0 02  mov   a,$02e0+x
0da3: de c0 1b  cbne  $c0+x,$0dc1
0da6: 09 47 4b  or    ($4b),($47)
0da9: f5 d0 02  mov   a,$02d0+x
0dac: 10 07     bpl   $0db5
0dae: fc        inc   y
0daf: d0 04     bne   $0db5
0db1: e8 80     mov   a,#$80
0db3: 2f 04     bra   $0db9
0db5: 60        clrc
0db6: 95 d1 02  adc   a,$02d1+x
0db9: d5 d0 02  mov   $02d0+x,a
0dbc: 3f 9c 10  call  $109c
0dbf: 2f 07     bra   $0dc8
0dc1: bb c0     inc   $c0+x
0dc3: e8 ff     mov   a,#$ff
0dc5: 3f a7 10  call  $10a7
0dc8: f4 91     mov   a,$91+x
0dca: f0 09     beq   $0dd5
0dcc: e8 30     mov   a,#$30
0dce: 8d 03     mov   y,#$03
0dd0: 9b 91     dec   $91+x
0dd2: 3f 3f 0e  call  $0e3f
0dd5: e4 47     mov   a,$47
0dd7: 24 4b     and   a,$4b
0dd9: f0 63     beq   $0e3e
0ddb: f5 31 03  mov   a,$0331+x
0dde: fd        mov   y,a
0ddf: f5 30 03  mov   a,$0330+x
0de2: da 10     movw  $10,ya
0de4: 7d        mov   a,x
0de5: 9f        xcn   a
0de6: 5c        lsr   a
0de7: c4 12     mov   $12,a
0de9: eb 11     mov   y,$11
0deb: f6 b8 10  mov   a,$10b8+y
0dee: 80        setc
0def: b6 b7 10  sbc   a,$10b7+y
0df2: eb 10     mov   y,$10
0df4: cf        mul   ya
0df5: dd        mov   a,y
0df6: eb 11     mov   y,$11
0df8: 60        clrc
0df9: 96 b7 10  adc   a,$10b7+y
0dfc: fd        mov   y,a
0dfd: f5 21 03  mov   a,$0321+x
0e00: cf        mul   ya
0e01: f5 51 03  mov   a,$0351+x
0e04: 1c        asl   a
0e05: 13 12 01  bbc0  $12,$0e09
0e08: 1c        asl   a
0e09: dd        mov   a,y
0e0a: 90 03     bcc   $0e0f
0e0c: 48 ff     eor   a,#$ff
0e0e: bc        inc   a
0e0f: fd        mov   y,a
0e10: f5 e1 02  mov   a,$02e1+x
0e13: 10 15     bpl   $0e2a
0e15: dd        mov   a,y
0e16: 80        setc
0e17: b5 f1 02  sbc   a,$02f1+x
0e1a: 90 0c     bcc   $0e28
0e1c: 2d        push  a
0e1d: eb 0d     mov   y,$0d
0e1f: cf        mul   ya
0e20: cb 1e     mov   $1e,y
0e22: ae        pop   a
0e23: 80        setc
0e24: a4 1e     sbc   a,$1e
0e26: b0 03     bcs   $0e2b
0e28: 8d 00     mov   y,#$00
0e2a: dd        mov   a,y
0e2b: eb 12     mov   y,$12
0e2d: cb f2     mov   $f2,y
0e2f: c4 f3     mov   $f3,a
0e31: 8d 14     mov   y,#$14
0e33: e8 00     mov   a,#$00
0e35: 9a 10     subw  ya,$10
0e37: da 10     movw  $10,ya
0e39: ab 12     inc   $12
0e3b: 33 12 ab  bbc1  $12,$0de9
0e3e: 6f        ret

0e3f: 09 47 4b  or    ($4b),($47)
0e42: da 14     movw  $14,ya
0e44: da 16     movw  $16,ya
0e46: 4d        push  x
0e47: ee        pop   y
0e48: 60        clrc
0e49: d0 0a     bne   $0e55
0e4b: 98 1f 16  adc   $16,#$1f
0e4e: e8 00     mov   a,#$00
0e50: d7 14     mov   ($14)+y,a
0e52: fc        inc   y
0e53: 2f 09     bra   $0e5e
0e55: 98 10 16  adc   $16,#$10
0e58: 3f 5c 0e  call  $0e5c
0e5b: fc        inc   y
0e5c: f7 14     mov   a,($14)+y
0e5e: 97 16     adc   a,($16)+y
0e60: d7 14     mov   ($14)+y,a
0e62: 6f        ret

0e63: f4 71     mov   a,$71+x
0e65: f0 65     beq   $0ecc
0e67: 9b 71     dec   $71+x
0e69: f0 05     beq   $0e70
0e6b: e8 02     mov   a,#$02
0e6d: de 70 5c  cbne  $70+x,$0ecc
0e70: f4 80     mov   a,$80+x
0e72: c4 17     mov   $17,a
0e74: f4 30     mov   a,$30+x
0e76: fb 31     mov   y,$31+x
0e78: da 14     movw  $14,ya
0e7a: 8d 00     mov   y,#$00
0e7c: f7 14     mov   a,($14)+y
0e7e: f0 1e     beq   $0e9e
0e80: 30 07     bmi   $0e89
0e82: fc        inc   y
0e83: 30 3c     bmi   $0ec1
0e85: f7 14     mov   a,($14)+y
0e87: 10 f9     bpl   $0e82
0e89: 68 c8     cmp   a,#$c8
0e8b: f0 3f     beq   $0ecc
0e8d: 68 ef     cmp   a,#$ef
0e8f: f0 25     beq   $0eb6
0e91: 68 e0     cmp   a,#$e0
0e93: 90 2c     bcc   $0ec1
0e95: 6d        push  y
0e96: fd        mov   y,a
0e97: ae        pop   a
0e98: 96 90 0c  adc   a,$0c90+y
0e9b: fd        mov   y,a
0e9c: 2f de     bra   $0e7c
0e9e: e4 17     mov   a,$17
0ea0: f0 1f     beq   $0ec1
0ea2: 8b 17     dec   $17
0ea4: d0 0a     bne   $0eb0
0ea6: c8 0c     cmp   x,#$0c
0ea8: b0 17     bcs   $0ec1
0eaa: fb 51     mov   y,$51+x
0eac: f4 50     mov   a,$50+x
0eae: 2f c8     bra   $0e78
0eb0: fb 61     mov   y,$61+x
0eb2: f4 60     mov   a,$60+x
0eb4: 2f c2     bra   $0e78
0eb6: fc        inc   y
0eb7: f7 14     mov   a,($14)+y
0eb9: 2d        push  a
0eba: fc        inc   y
0ebb: f7 14     mov   a,($14)+y
0ebd: fd        mov   y,a
0ebe: ae        pop   a
0ebf: 2f b7     bra   $0e78
0ec1: e4 47     mov   a,$47
0ec3: 4e 1d 00  tclr1 $001d
0ec6: 8d 5c     mov   y,#$5c
0ec8: cb f2     mov   $f2,y
0eca: c4 f3     mov   $f3,a
0ecc: f2 13     clr7  $13
0ece: f4 a0     mov   a,$a0+x
0ed0: f0 30     beq   $0f02
0ed2: f4 a1     mov   a,$a1+x
0ed4: f0 04     beq   $0eda
0ed6: 9b a1     dec   $a1+x
0ed8: 2f 28     bra   $0f02
0eda: e2 13     set7  $13
0edc: 9b a0     dec   $a0+x
0ede: d0 0f     bne   $0eef
0ee0: f5 81 03  mov   a,$0381+x
0ee3: 60        clrc
0ee4: 95 91 03  adc   a,$0391+x
0ee7: d5 60 03  mov   $0360+x,a
0eea: f5 80 03  mov   a,$0380+x
0eed: 2f 10     bra   $0eff
0eef: 60        clrc
0ef0: f5 60 03  mov   a,$0360+x
0ef3: 95 70 03  adc   a,$0370+x
0ef6: d5 60 03  mov   $0360+x,a
0ef9: f5 61 03  mov   a,$0361+x
0efc: 95 71 03  adc   a,$0371+x
0eff: d5 61 03  mov   $0361+x,a
0f02: 3f 0b 0d  call  $0d0b
0f05: f4 b1     mov   a,$b1+x
0f07: f0 78     beq   $0f81
0f09: f5 b0 02  mov   a,$02b0+x
0f0c: de b0 70  cbne  $b0+x,$0f7f
0f0f: f5 00 01  mov   a,$0100+x
0f12: 75 b1 02  cmp   a,$02b1+x
0f15: d0 05     bne   $0f1c
0f17: f5 c1 02  mov   a,$02c1+x
0f1a: 2f 0d     bra   $0f29
0f1c: 40        setp
0f1d: bb 00     inc   $00+x
0f1f: 20        clrp
0f20: fd        mov   y,a
0f21: f0 02     beq   $0f25
0f23: f4 b1     mov   a,$b1+x
0f25: 60        clrc
0f26: 95 c0 02  adc   a,$02c0+x
0f29: d4 b1     mov   $b1+x,a
0f2b: f5 a0 02  mov   a,$02a0+x
0f2e: 60        clrc
0f2f: 95 a1 02  adc   a,$02a1+x
0f32: d5 a0 02  mov   $02a0+x,a
0f35: c4 12     mov   $12,a
0f37: 1c        asl   a
0f38: 1c        asl   a
0f39: 90 02     bcc   $0f3d
0f3b: 48 ff     eor   a,#$ff
0f3d: fd        mov   y,a
0f3e: f4 b1     mov   a,$b1+x
0f40: 68 f1     cmp   a,#$f1
0f42: 90 05     bcc   $0f49
0f44: 28 0f     and   a,#$0f
0f46: cf        mul   ya
0f47: 2f 04     bra   $0f4d
0f49: cf        mul   ya
0f4a: dd        mov   a,y
0f4b: 8d 00     mov   y,#$00
0f4d: 3f 87 10  call  $1087
0f50: f5 71 02  mov   a,$0271+x
0f53: f0 27     beq   $0f7c
0f55: bb 20     inc   $20+x
0f57: f4 20     mov   a,$20+x
0f59: 75 70 02  cmp   a,$0270+x
0f5c: d0 1e     bne   $0f7c
0f5e: e8 00     mov   a,#$00
0f60: d4 20     mov   $20+x,a
0f62: f4 21     mov   a,$21+x
0f64: 28 7f     and   a,#$7f
0f66: 4d        push  x
0f67: 5d        mov   x,a
0f68: f5 93 0f  mov   a,$0f93+x
0f6b: c4 12     mov   $12,a
0f6d: fd        mov   y,a
0f6e: ce        pop   x
0f6f: bb 21     inc   $21+x
0f71: f5 71 02  mov   a,$0271+x
0f74: 10 02     bpl   $0f78
0f76: 48 ff     eor   a,#$ff
0f78: cf        mul   ya
0f79: 3f 87 10  call  $1087
0f7c: 5f 13 07  jmp   $0713

0f7f: bb b0     inc   $b0+x
0f81: e3 13 cc  bbs7  $13,$0f50
0f84: f5 71 02  mov   a,$0271+x
0f87: f0 09     beq   $0f92
0f89: bb 20     inc   $20+x
0f8b: f4 20     mov   a,$20+x
0f8d: 75 70 02  cmp   a,$0270+x
0f90: f0 cc     beq   $0f5e
0f92: 6f        ret

0f93: db $fe,$04,$fd,$fc,$fe,$01,$fb,$ff
0f9b: db $fa,$02,$01,$01,$fd,$01,$07,$02
0fa3: db $07,$02,$04,$02,$08,$07,$02,$fd
0fab: db $00,$04,$01,$05,$06,$07,$03,$00
0fb3: db $fb,$03,$02,$02,$fe,$02,$08,$03
0fbb: db $01,$07,$00,$ff,$01,$04,$fe,$02
0fc3: db $07,$03,$04,$02,$08,$07,$03,$fe
0fcb: db $01,$05,$02,$06,$07,$08,$03,$00
0fd3: db $fb,$03,$02,$03,$fe,$02,$08,$03
0fdb: db $08,$04,$05,$03,$09,$05,$01,$fc
0fe3: db $fa,$00,$f9,$f8,$fa,$fd,$f7,$fb
0feb: db $fe,$02,$ff,$03,$04,$05,$fe,$00
0ff3: db $fb,$03,$02,$02,$fe,$01,$03,$ff
0ffb: db $04,$ff,$01,$ff,$05,$04,$00,$fb
1003: db $fe,$02,$ff,$03,$04,$05,$00,$fd
100b: db $fb,$01,$fa,$f9,$fb,$fe,$fa,$00

1013: f2 13     clr7  $13
1015: f4 c1     mov   a,$c1+x
1017: f0 09     beq   $1022
1019: f5 e0 02  mov   a,$02e0+x
101c: de c0 03  cbne  $c0+x,$1022
101f: 3f 8f 10  call  $108f
1022: f5 31 03  mov   a,$0331+x
1025: fd        mov   y,a
1026: f5 30 03  mov   a,$0330+x
1029: da 10     movw  $10,ya
102b: f4 91     mov   a,$91+x
102d: f0 0a     beq   $1039
102f: f5 41 03  mov   a,$0341+x
1032: fd        mov   y,a
1033: f5 40 03  mov   a,$0340+x
1036: 3f 71 10  call  $1071
1039: f3 13 03  bbc7  $13,$103f
103c: 3f e4 0d  call  $0de4
103f: f2 13     clr7  $13
1041: 3f 0b 0d  call  $0d0b
1044: f4 a0     mov   a,$a0+x
1046: f0 0e     beq   $1056
1048: f4 a1     mov   a,$a1+x
104a: d0 0a     bne   $1056
104c: f5 71 03  mov   a,$0371+x
104f: fd        mov   y,a
1050: f5 70 03  mov   a,$0370+x
1053: 3f 71 10  call  $1071
1056: f4 b1     mov   a,$b1+x
1058: d0 03     bne   $105d
105a: 5f 81 0f  jmp   $0f81

105d: f5 b0 02  mov   a,$02b0+x
1060: de b0 f7  cbne  $b0+x,$105a
1063: fb d0     mov   y,$d0+x
1065: f5 a1 02  mov   a,$02a1+x
1068: cf        mul   ya
1069: dd        mov   a,y
106a: 60        clrc
106b: 95 a0 02  adc   a,$02a0+x
106e: 5f 35 0f  jmp   $0f35

1071: e2 13     set7  $13
1073: cb 12     mov   $12,y
1075: 3f 28 0d  call  $0d28
1078: 6d        push  y
1079: fb d0     mov   y,$d0+x
107b: cf        mul   ya
107c: cb 14     mov   $14,y
107e: 8f 00 15  mov   $15,#$00
1081: fb d0     mov   y,$d0+x
1083: ae        pop   a
1084: cf        mul   ya
1085: 7a 14     addw  ya,$14
1087: 3f 28 0d  call  $0d28
108a: 7a 10     addw  ya,$10
108c: da 10     movw  $10,ya
108e: 6f        ret

108f: e2 13     set7  $13
1091: fb d0     mov   y,$d0+x
1093: f5 d1 02  mov   a,$02d1+x
1096: cf        mul   ya
1097: dd        mov   a,y
1098: 60        clrc
1099: 95 d0 02  adc   a,$02d0+x
109c: 1c        asl   a
109d: 90 02     bcc   $10a1
109f: 48 ff     eor   a,#$ff
10a1: fb c1     mov   y,$c1+x
10a3: cf        mul   ya
10a4: dd        mov   a,y
10a5: 48 ff     eor   a,#$ff
10a7: fd        mov   y,a
10a8: f5 10 02  mov   a,$0210+x
10ab: cf        mul   ya
10ac: f5 01 03  mov   a,$0301+x
10af: cf        mul   ya
10b0: dd        mov   a,y
10b1: cf        mul   ya
10b2: dd        mov   a,y
10b3: d5 21 03  mov   $0321+x,a
10b6: 6f        ret

10b7: db $00,$01,$03,$07,$0d,$15,$1e,$29
10bf: db $34,$42,$51,$5e,$67,$6e,$73,$77
10c7: db $7a,$7c,$7d,$7e,$7f

10cc: db $6c,$4c,$5c,$3d,$2d,$5c
10d2: db $48,$45,$0e,$49,$4a,$46

10d8: dw $085f
10da: dw $08de
10dc: dw $0965
10de: dw $09f4
10e0: dw $0a8c
10e2: dw $0b2c
10e4: dw $0bd6
10e6: dw $0c8b
10e8: dw $0d4a
10ea: dw $0e14
10ec: dw $0eea
10ee: dw $0fcd
10f0: dw $10be

10f2: db $00,$65,$7f,$98,$f0,$fd,$fe,$ff
10f4: db $19,$32,$4c,$65,$72,$7f,$8c,$98
10f6: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

110a: dw $133a
110c: dw $136c
110e: dw $1394
1110: dw $13bd
1112: dw $13db
1114: dw $13fc
1116: dw $1421
1118: dw $143f
111a: dw $145b
111c: dw $1489
111e: dw $14a3
1120: dw $14be
1122: dw $1502
1124: dw $152e
1126: dw $1ade
1128: dw $156c
112a: dw $15aa
112c: dw $15cb
112e: dw $0000
1130: dw $15ef
1132: dw $163a
1134: dw $165d
1136: dw $16a8
1138: dw $16d0
113a: dw $170a
113c: dw $1734
113e: dw $176a
1140: dw $178f
1142: dw $17be
1144: dw $17e0
1146: dw $1819
1148: dw $184d
114a: dw $187f
114c: dw $18ad
114e: dw $18e2
1150: dw $190a
1152: dw $1929
1154: dw $1965
1156: dw $19bb
1158: dw $19ff
115a: dw $1a22
115c: dw $1a5a
115e: dw $1a79
1160: dw $1aa6
1162: dw $1b17
1164: dw $1b39
1166: dw $1bc9
1168: dw $1bf7
116a: dw $1d6c
116c: dw $1d88
116e: dw $1da0
1170: dw $1db2
1172: dw $1dd0
1174: dw $1e38
